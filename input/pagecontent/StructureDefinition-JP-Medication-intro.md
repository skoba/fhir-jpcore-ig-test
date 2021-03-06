## 概略
<br>

| 項目           | 内容                                                       |
| -------------- | ---------------------------------------------------------- |
| 定義URL        | http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication |
| バージョン     | 1.0.0 |
| 名前           | JPCoreMedication|
| タイトル       | JP Core Medication Profile  |
| ステータス     | アクティブ（2021-10-21）                                   |
| 定義           | Medication リソース       |
| 公開者         | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)                                |
| Copyright      | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)
| ソースリソース | https://simplifier.net/jp-core-draftv1/jpmedication |

<br>

このプロファイルは薬剤のリストを表現する。注射ではしばしば複数の薬剤が混注して用いられ、不可分であることからMedicationリソースを利用して処方を表現することとした。
主に注射薬剤処方の一部としてMedicationResource, MedicationDispense, MedicationAdministrationリソースと組み合わせて利用する。薬剤リストに使用する用語集は諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での注射関連規格として利用されているJAHIS 注射データ交換規約 Ver 2.1CおよびSS-MIX2 Ver.1.2gを参考にした。

### 背景および想定シナリオ
本プロファイルは、以下のようなユースケースを想定している。

- 電子カルテから特定の患者で使用された注射オーダに含まれる薬剤情報を構成する
- 退院時サマリや診療情報提供書において注射の投薬情報の一部として記述する
- 各種検査レポートや診断レポートにおいて注射の投薬情報の一部として記述する
- SS-MIX2のOMP-02(注射オーダ)メッセージやJAHIS注射データ交換規約に準拠した注射オーダメッセージの一部としてJSONに変換する

### スコープ
#### 対象
このプロファイルの対象は注射、注入で使われる薬剤リストを電子的に連携するためのメッセージを記述することである。

#### 対象としないこと
このプロファイルは注射、注入の薬剤で使用される薬剤リストに関するものであり、内服、外用の薬剤については対象としない。

また、このリソースは単独で用いられることはない。

## 関連するプロファイル
JP Medicationリソースは、以下のリソースから直接参照される。

- JP Core MedicationRequestリソース
- JP Core MedicationDispenseリソース
- JP Core MedicationAdministrationリソース

JP Medicationリソースが参照するリソースはない。

