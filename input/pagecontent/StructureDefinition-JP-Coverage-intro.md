## 概略
<br>
<span style="color:;">医療機関や薬局、介護サービス等の支払いや償還に利用する保険や公費等のこと。保険適用だけでなく自己負担の場合もこのリソースを利用する。</span>



| 項目           | 内容                                                       |
| -------------- | ---------------------------------------------------------- |
| 定義URL        | http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage |
| バージョン     | 1.0.0                                                      |
| 名前           | JPCoreCoverageProfile                                   |
| タイトル       | JP Core Coverage Profile                               |
| ステータス     | アクティブ（2021-11-24）                                   |
| 定義           | このプロファイルはCoverageリソースに対して、保険・公費のデータを送受信するための基礎となる制約と拡張を定めたものである。                                                     |
| 公開者         | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)   |
| Copyright      | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)   |
| ソースリソース | https://simplifier.net/jp-core-draftv1/jpcoverage   |

<br>

### 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

- 病院の電子カルテシステムや医事システム、診療所や調剤薬局のシステム、介護サービスを提供する施設のシステム等において、サービス利用者（患者）の支払いに適用する保険や公費の種類、自己負担割合や自己負担上限額などを管理する
- サービス利用者や保険者が実際に支払う負担額を管理する
- サービス利用者や保険者を除く個人又は組織が支払いの全額又は一部に責任を持つ場合の負担額を管理する

## スコープ

<span style="color:;"><br>
Coverageリソースは、医療・介護保険における識別子・記述子を提供することを想定しており、典型的には保険証に記載される情報であり、医療や介護サービスの提供に対する対価として、一部または全ての支払いに使用される可能性があるものである。

このリソースは、保険者以外の個人または組織が医療費の一部の支払いに責任を持つ「自己負担」を登録するためにも使用することができる。ここで定義する「自己負担」は、患者の支払いの保証人になることとは別のものであることに留意する。

Coverage リソースは、FHIRワークフローの観点からは「イベント」に該当するリソースである。詳細はWorkflowの項目を参照のこと。<br><br>

<br>

## 関連するプロファイル

JP Coverage リソースは、以下のリソースから直接参照される。

- Account, Claim, ClaimResponse, CoverageEligibilityRequest, CoverageEligibilityResponse, DeviceRequest, EnrollmentRequest, ExplanationOfBenefit, MedicationRequest, ServiceRequest and Task

<br>
JP Coverage リソースには、直接参照するリソースは存在しない。
<br><br>
