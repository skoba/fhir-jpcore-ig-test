## 概略
<br>

| 項目           | 内容                                                       |
| -------------- | ---------------------------------------------------------- |
| 定義URL        | http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest |
| バージョン     | 1.0.0                                                      |
| 名前           | JPCoreMedicationRequestProfile                                   |
| タイトル       | JP Core MedicationRequest Profile                               |
| ステータス     | アクティブ（2021-08-26）                                   |
| 定義           | このプロファイルはMedicationRequestリソースに対して、内服・外用薬剤処方のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| 公開者         | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)  |
| Copyright      | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)  |
| ソースリソース | https://simplifier.net/jp-core-draftv1/jpmedicationrequest |

<br>

このプロファイルは内服、外用の薬剤処方をMedicationRequestリソースを使用して表現する。薬剤処方は指示する項目、使用する用語集、プロセスなどにおいて諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での処方関連規格として利用されているJAHIS 処方データ交換規約 Ver 3.0C、JAHIS院外処方箋２次元シンボル記録条件規約 Ver.1.6およびSS-MIX2 Ver.1.2gを参考にし、療養担当則23条様式2号の処方箋形式を電子的に構成することを目的とした。ただし、院外処方に特化することはせず、院内処方も含めた様々なコンテキストで利用できることを目指している。
以下、このプロファイルのMedicationRequestリソースを「JP Core MedicationRequest Injectionリソース」と呼ぶ。

薬剤処方のFHIR仕様に関しては、先行事例として令和２年度厚⽣労働科学特別研究事業「診療情報提供書, 電⼦処⽅箋等の電⼦化医療⽂書の相互運⽤性確保のための標準規格の開発研究」研究班で策定された「電子処方箋HL7 FHIR記述仕様書案」（https://std.jpfhir.jp/ ）があるが、その中で院外処方以外でも利用できる仕様については可能な限り取り入れるようにした。ただし、拡張のURLは新たにJP Coreの命名規則に基づいて命名している。

### 背景および想定シナリオ
本プロファイルは、以下のようなユースケースを想定している。

- 電子カルテから特定の患者の処方オーダ情報を検索する
- 電子処方箋において院外処方箋情報を記述する
- 退院時サマリや診療情報提供書において投薬情報を記述する
- 各種検査レポートや診断レポートにおいて投薬情報を記述する
- SS-MIX2やJAHIS処方データ交換規約に準拠した処方オーダメッセージをJSONに変換する

### スコープ
#### 対象
このプロファイルの対象は内服、外用の一般的な薬剤処方を電子的に連携するためのメッセージを記述することである。

#### 対象としないこと
このプロファイルは内服、外用の薬剤に関するものであり、注射薬剤については対象としない。注射薬剤は、指示の仕方や指示する項目が内服、外用とは大きく異なるため、別のプロファイルとして記述することとする。

また、このプロファイルのMedicationRequestリソースは薬剤の指示（オーダー）に関するものであり、調剤や払い出し、内服確認や実施記録は対象としない。それぞれ、MedicationDispense, MedicationAdministrationが対応するリソースである。

また、療養担当則23条様式2号の処方箋形式の中で、患者情報、保険情報、処方医情報、医療機関情報などについては対象としない。それぞれ、Patient, Coverage, Practitioner, Organizationが対応するリソースである。

## 関連するプロファイル
JP Core MedicationRequestリソースは、以下のリソースから直接参照される。

- JP Core MedicationDispenseリソース
- JP Core MedicationAdministrationリソース
- JP Core DiagnosticReportリソース
- JP Core Observationリソース

JP Core MedicationRequestリソースは、以下のリソースを直接参照する。

- JP Core Patientリソース
- JP Core Encounterリソース
- JP Core Practitionerリソース
- JP Core PractitionerRoleリソース
- JP Core Organizationリソース
- JP Core Coverageリソース
- JP Core Medicationリソース

