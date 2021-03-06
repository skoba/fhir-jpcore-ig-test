## 概略
<br>
<span style="color:;">何らかの形で集団行動をとることを目的に結成された、公式または非公式に認められた人や組織の集まり。企業、機関、法人、部署、コミュニティグループ、医療行為グループ、支払者／保険者などを含む。</span>

| 項目           | 内容                                                       |
| -------------- | ---------------------------------------------------------- |
| 定義URL        | http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization |
| バージョン     | 1.0.0                                                      |
| 名前           | JPCoreOrganizationProfile                            |
| タイトル       | JP Core Organization Profile                               |
| ステータス     | アクティブ（2021-11-30）                                   |
| 定義           | このプロファイルはOrganizationリソースに対して、組織情報のデータを送受信するための基礎となる制約と拡張を定めたものである。                                                     |
| 公開者         | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)
  |
| Copyright      | FHIR® Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)
  |
| ソースリソース | https://simplifier.net/jp-core-draftv1/jporganization   |

<br>

### 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

- 組織名またはNPIによる検索

## スコープ

<span style="color:;"><br>
本リソースは、様々な組織の連絡先やその他の情報を共有するレジストリとして使用することができる。
また参照される組織に必要とするサポート、ドキュメント、メッセージ、またはcontained resourceとして使用することもできる。レジストリを使用する場合、複数のレジストリが存在し、それぞれが異なるタイプやレベルの組織に対応することは十分可能である。<br><br>

<br>

## 関連するプロファイル

JP Organization リソースは、以下のリソースから直接参照される。

 - Annotation
 - Identifier
 - Signature
 - UsageContext
 - Account
 - AuditEvent
 - Basic
 - BiologicallyDerivedProduct
 - CapabilityStatement
 - CarePlan
 - CareTeam
 - CatalogEntry
 - ChargeItem
 - Claim
 - ClaimResponse
 - Communication
 - CommunicationRequest
 - Composition
 - Consent
 - Contract
 - Coverage
 - CoverageEligibilityRequest
 - CoverageEligibilityResponse
 - Device
 - DeviceDefinition
 - DeviceRequest
 - DiagnosticReport
 - DocumentManifest
 - DocumentReference
 - Encounter
 - Endpoint
 - EnrollmentRequest
 - EnrollmentResponse
 - EpisodeOfCare
 - ExplanationOfBenefit
 - Flag
 - Goal
 - Group
 - HealthcareService
 - ImagingStudy
 - Immunization
 - ImmunizationEvaluation
 - ImmunizationRecommendation
 - InsurancePlan
 - Invoice
 - Linkage
 - Location
 - MeasureReport
 - Media
 - Medication
 - MedicationDispense
 - MedicationKnowledge
 - MedicationRequest
 - MedicationStatement
 - MedicinalProduct
 - MedicinalProductAuthorization
 - MedicinalProductIngredient
 - MedicinalProductManufactured
 - MedicinalProductPackaged
 - MessageHeader
 - MolecularSequence
 - Observation
 - itself
 - OrganizationAffiliation
 - Patient
 - PaymentNotice
 - PaymentReconciliation
 - Person
 - Practitioner
 - PractitionerRole
 - Procedure
 - Provenance
 - QuestionnaireResponse
 - ResearchStudy
 - ServiceRequest
 - SupplyDelivery
 - SupplyRequest
 - Task
 - VerificationResult


JP Organization リソースは、以下のリソースを直接参照する。

- Endpoint
