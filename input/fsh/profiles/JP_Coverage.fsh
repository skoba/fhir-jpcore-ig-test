// ==============================
//   Profile 定義
// ==============================
Profile: JP_Coverage
Parent: Coverage
Id: JP-Coverage
Description: "このプロファイルはCoverageリソースに対して、保険・公費のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage"
* ^status = #active
* ^date = "2021-12-01T04:18:32.244892+00:00"
* . ^short = "Insurance or medical plan or a payment agreement　保険または医療費支払いプラン、または合意された支払い方法"
* . ^definition = "Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.\r\n\r\nヘルスケア製品およびサービスの償還または支払いに使用される可能性のある金融商品。 保険と自己負担の両方が含まれる。"
* . ^comment = "The Coverage resource contains the insurance card level information, which is customary to provide on claims and other communications between providers and insurers.\r\n\r\nCoverageには、保険証レベルの情報が含まれている。これは、保険金請求やプロバイダーと保険会社間のその他の通信で提供するのが通例である。"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    JP_Coverage_InsuredPersonSymbol named InsuredPersonSymbol 0..* and
    JP_Coverage_InsuredPersonNumber named InsuredPersonNumber 0..* and
    JP_Coverage_InsuredPersonSubNumber named InsuredPersonSubNumber 0..*
* extension[InsuredPersonSymbol] ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.\r\n\r\n【JP-CORE】\r\n健康保険における被保険者証記号を示す拡張"
* extension[InsuredPersonSymbol] ^min = 0
* extension[InsuredPersonSymbol].value[x] ^comment = "A stream of bytes, base64 encoded\r\n\r\n【JP-CORE】\r\n被保険者記号の文字列。"
* extension[InsuredPersonNumber] ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.\r\n\r\n【JP-CORE】\r\n健康保険における被保険者証番号を示す拡張"
* extension[InsuredPersonNumber] ^min = 0
* extension[InsuredPersonNumber].value[x] ^comment = "A stream of bytes, base64 encoded\r\n\r\n【JP-CORE】\r\n被保険者番号"
* extension[InsuredPersonSubNumber] ^comment = "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.\r\n\r\n【JP-CORE】\r\n健康保険における被保険者証番号の枝番を示す拡張\r\n枝番号は2桁。"
* extension[InsuredPersonSubNumber] ^min = 0
* extension[InsuredPersonSubNumber].value[x] ^comment = "A stream of bytes, base64 encoded\r\n\r\n【JP-CORE】\r\n2桁の半角数字文字列。一桁の場合には先頭に０をつけて2桁にする。"
* identifier ^short = "Business Identifier for the coverage　このカバレッジに割り当てられた一意の識別子。"
* identifier ^definition = "A unique identifier assigned to this coverage.\r\n\r\nこのカバレッジに割り当てられた一意の識別子。"
* identifier ^comment = "The main (and possibly only) identifier for the coverage - often referred to as a Member Id, Certificate number, Personal Health Number or Case ID. May be constructed as the concatenation of the Coverage.SubscriberID and the Coverage.dependant.\r\n\r\nカバレッジのメイン（および場合によっては唯一の）識別子-多くの場合、メンバーID、証明書番号、個人の健康番号、またはケースIDと呼ばれます。 Coverage.SubscriberIDとCoverage.dependantの連結として構築できます"
* identifier ^requirements = "Allows coverages to be distinguished and referenced.\r\n\r\n\r\nカバレッジを区別して参照できるようにします。"
* status ^definition = "The status of the resource instance.\r\n\r\nリソースインスタンスのステータス。"
* status ^comment = "This element is labeled as a modifier because the status contains the code entered-in-error that marks the coverage as not currently valid.\r\n\r\nステータスには、カバレッジが現在無効であることを示すエラー入力されたコードが含まれているため、この要素は修飾子としてラベル付けされます。"
* status ^requirements = "Need to track the status of the resource as 'draft' resources may undergo further edits while 'active' resources are immutable and may only have their status changed to 'cancelled'.\r\n\r\n\r\n「ドラフト」リソースはさらに編集される可能性があり、「アクティブ」リソースは不変であり、ステータスが「キャンセル」に変更されるだけである可能性があるため、リソースのステータスを追跡する必要があります。"
* status ^isModifierReason = "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid / この要素は、エラーで入力されたステータスを含むステータス要素であるため、修飾子としてラベル付けされています。これは、リソースが有効として扱われるべきではないことを意味します"
* type ^short = "Coverage category such as medical or accident　医療保険や事故補償のような分類"
* type ^definition = "The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization.\r\n\r\n補償の種類：社会プログラム、医療計画、事故補償（労働者災害補償、自動車）、グループの健康、または個人または組織による支払い。"
* type ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.\r\n\r\nすべてのターミノロジーの使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、コーディングを直接使用して、テキスト、コーディング、翻訳、および要素間の関係とpre-coordinationとpost-coordinationの用語関係を管理するための独自の構造を提供する必要がある。\r\n\r\n【JP-CORE】\r\n厚労省保険局の電子処方等で使用される保険種別コード（system=”urn:oid:1.2.392.100495.20.2.61”）として、https://www.mhlw.go.jp/content/10800000/000342368.pdf　の別表１１が使用できる。"
* type ^requirements = "The order of application of coverages is dependent on the types of coverage.\r\n\r\nカバレッジの適用順序は、カバレッジのタイプによって異なります。"
* policyHolder ^short = "Owner of the policy　ポリシーの所有者"
* policyHolder ^definition = "The party who 'owns' the insurance policy.\r\n\r\n保険証券を「所有する」当事者。"
* policyHolder ^comment = "For example: may be an individual, corporation or the subscriber's employer.\r\n\r\n例：個人、企業、または加入者の雇用主である可能性があります。"
* policyHolder ^requirements = "This provides employer information in the case of Worker's Compensation and other policies.\r\n\r\nこれは、労働者災害補償およびその他のポリシーの場合に雇用者情報を提供します。"
* subscriber ^short = "Subscriber to the policy　契約当事者"
* subscriber ^definition = "The party who has signed-up for or 'owns' the contractual relationship to the policy or to whom the benefit of the policy for services rendered to them or their family is due.\r\n\r\nポリシーにサインアップした、またはポリシーとの契約関係を「所有」している当事者、またはポリシーの利益が彼らまたはその家族に提供されることになっている当事者。"
* subscriber ^comment = "May be self or a parent in the case of dependants.\r\n\r\n扶養家族の場合、自己または親である可能性があります。"
* subscriber ^requirements = "This is the party who is entitled to the benfits under the policy.\r\n\r\nこれは、ポリシーに基づいて給付を受ける権利を有する当事者です。\r\n\r\n【JP-CORE】\r\n公費情報で本リソースを使用する場合には、この要素に公費受給者番号を設定する。"
* subscriberId ^short = "ID assigned to the subscriber　契約当事者に割り当てられたID"
* subscriberId ^definition = "The insurer assigned ID for the Subscriber.\r\n\r\n契約当事者に保険者が割り当てたID"
* subscriberId ^requirements = "The insurer requires this identifier on correspondance and claims (digital and otherwise).\r\n\r\n保険者は、連絡や請求（デジタルおよびその他）でこの識別子を要求する。\r\n保険会社は、通信および請求（デジタルおよびその他）でこの識別子を要求します。\r\n\r\n\r\n-----SWG3コメント--------\r\n被保険者番号を全角で格納する"
* beneficiary ^definition = "The party who benefits from the insurance coverage; the patient when products and/or services are provided.\r\n\r\n保険適用から利益を得る当事者、製品および／またはサービスが提供される際の患者。"
* beneficiary ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\n参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。\r\n\r\n【JP_CORE】\r\n患者Patientリソースへの参照。"
* beneficiary ^requirements = "This is the party who receives treatment for which the costs are reimbursed under the coverage.\r\n\r\nこれは、補償の下で費用が償還される治療を受ける側のことです。"
* dependent ^definition = "A unique identifier for a dependent under the coverage.\r\n\r\n補償対象の被扶養者の一意の識別子。"
* dependent ^comment = "Periodically the member number is constructed from the subscriberId and the dependant number.\r\n\r\n定期的に subscriberId と従属番号からメンバー番号を構築する。"
* dependent ^requirements = "For some coverages a single identifier is issued to the Subscriber and then a unique dependent number is issued to each beneficiary.\r\n\r\n一部の補償では、単一の識別子が加入者に発行され、次に一意の従属番号が各受益者に発行される。\r\n一部の保険では、単一の識別子が加入者に発行され、その後、各受益者に固有の扶養番号が発行される。\r\n\r\n【JP-CORE】\r\n医療保険で本リソースを使用する場合には、この要素に拡張 InsuredPersonSubNumberに設定した値と同じ、被保険者番号の枝番号2桁を設定する。"
* relationship ^short = "Beneficiary relationship to the subscriber　加入者との受益者関係"
* relationship ^definition = "The relationship of beneficiary (patient) to the subscriber.\r\n\r\n受益者（患者）と加入者の関係。"
* relationship ^comment = "Typically, an individual uses policies which are theirs (relationship='self') before policies owned by others.\r\n\r\n一般的に、個人は、他人が所有するポリシーよりも、自分のポリシー（relationship='self'）を使用します。"
* relationship ^requirements = "To determine relationship between the patient and the subscriber to determine coordination of benefits.\r\n\r\n患者と加入者の関係を決定し、給付の調整を決定する。\r\n\r\n【JP-CORE】\r\n厚労省保険局の電子処方等で使用される被保険者区分コード（system=”urn:oid:1.2.392.100495.20.2.62”）として、https://www.mhlw.go.jp/content/10800000/000342368.pdf　の別表１２が使用できる。\r\n1　被保険者\r\n2　被扶養者"
* period ^definition = "Time period during which the coverage is in force. A missing start date indicates the start date isn't known, a missing end date means the coverage is continuing to be in force.\r\n\r\n補償範囲が有効である期間。開始日が欠落している場合は、開始日が不明であることを示します。終了日が欠落している場合は、補償範囲が引き続き有効であることを意味します。"
* period ^comment = "A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. \"the patient was an inpatient of the hospital for this time range\") or one value from the range applies (e.g. \"give to the patient between these two times\").\nPeriod is not used for a duration (a measure of elapsed time). See [Duration](datatypes.html#Duration).\r\n\r\nPeriod（期間）は時間の範囲を指定します。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、範囲から1つの値が適用されるか（たとえば、「この2回の間に患者に投与する」）を指定する。\r\nPeriod（期間）は、Duration（時間区間＝経過時間の測定値）には使用されない。 [Duration]（datatypes.html＃Duration）を参照のこと。\r\n--------------\r\nThis is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. \"the patient was an inpatient of the hospital for this time range\") or one value from the range applies (e.g. \"give to the patient between these two times\"). If duration is required, specify the type as Interval|Duration.\r\n\r\nこれはDuration（時間区間）ではない-　Durationは時間の尺度（別のタイプ）だが、時間の固定値で発生する時間区間です。Period（期間）は時間の範囲を指定します。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、範囲から1つの値が適用されるか（たとえば、「この2回の間に患者に投与する」）を指定する。もし、Duration（時間区間）が必要な場合は、タイプをInterval | Durationとして指定する。\r\n\r\n--------------\r\nこれは期間ではありません-これは時間の尺度（別のタイプ）ですが、時間の固定値で発生する期間です。期間は時間の範囲を指定します。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、または範囲から1つの値が適用されるか（たとえば、「これら2回の間に患者に与える」）を指定します。期間が必要な場合は、タイプをInterval | Durationとして指定します。\r\n\r\n【JP-CORE】\r\n医療保険、公費で本リソースを使用する場合には、保険証または公費の有効期間の開始日、終了日をstart とendに yyyy-mm-dd形式で設定する。"
* period ^requirements = "Some insurers require the submission of the coverage term.\r\n\r\n保険会社によっては、補償期間の提出を義務付けているところもあります。"
* payor ^definition = "The program or plan underwriter or payor including both insurance and non-insurance agreements, such as patient-pay agreements.\r\n\r\n\r\n患者負担契約などの保険契約と保険外契約の両方を含むプログラムまたはプランの引受人または支払人。"
* payor ^comment = "May provide multiple identifiers such as insurance company identifier or business identifier (BIN number).\nFor selfpay it may provide multiple paying persons and/or organizations.\r\n\r\n保険会社の識別子や事業者の識別子（BIN番号）など、複数の識別子を提供してもよい。自己負担の場合は、複数の支払者および/または組織を提供してもよい。"
* payor ^requirements = "Need to identify the issuer to target for claim processing and for coordination of benefit processing.\r\n\r\n請求処理および給付処理の調整の対象となる発行者を特定する必要があります。\r\n\r\n【JP-CORE】\r\n医療保険で本リソースを使用する場合には、保険者組織Organizationリソースへの参照。自費の場合には、患者Patientリソースへの参照。公費の場合には、公費負担者組織Organizationリソースへの参照。"
* class ^definition = "A suite of underwriter specific classifiers.\r\n\r\n\r\n保険事業者の分類子"
* class ^comment = "For example may be used to identify a class of coverage or employer group, Policy, Plan.\r\n\r\n例えば、保険の種類または雇用者グループ、保険契約、Planを識別するために使用することができます。"
* class ^requirements = "The codes provided on the health card which identify or confirm the specific policy for the insurer.\r\n\r\n健康カードに記載されているコードで、保険者の特定の保険契約を識別または確認するもの。"
* class.type ^definition = "The type of classification for which an insurer-specific class label or number and optional name is provided, for example may be used to identify a class of coverage or employer group, Policy, Plan.\r\n\r\n\r\n保険者固有のクラスラベルまたは番号、任意の名前が提供されている分類のタイプを表す。例えば、保険のクラスまたは雇用者グループ、保険契約、Planを識別するために使用することができます。"
* class.type ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.\r\n\r\n\r\n\r\nすべての用語の使用がこの一般的なパターンに適合するわけではない。いくつかのケースでは、モデルはCodeableConceptを使用せず、Codingを直接使用し、テキスト、コーディング、翻訳、要素間の関係、および前後の調整を管理するための独自の構造を提供することが望ましい。"
* class.type ^requirements = "The insurer issued label for a specific health card value.\r\n\r\n\r\n保険者が発行した特定の健康カード番号のラベル。"
* class.value ^definition = "The alphanumeric string value associated with the insurer issued label.\r\n\r\n\r\n保険者が発行したラベルに関連付けられた英数字の文字列値。"
* class.value ^comment = "For example, the Group or Plan number.\r\n\r\n\r\n例えば、グループ番号やプラン番号など。"
* class.value ^requirements = "The insurer issued label and value are necessary to identify the specific policy.\r\n\r\n\r\n保険者が発行したラベルと値は、特定の保険契約を識別するために必要なものです。"
* class.name ^definition = "A short description for the class.\r\n\r\n\r\n保険種類の簡単な説明。"
* class.name ^requirements = "Used to provide a meaningful description in correspondence to the patient.\r\n\r\n\r\n患者に対応するのに意味のある説明をするために使用します。"
* order ^definition = "The order of applicability of this coverage relative to other coverages which are currently in force. Note, there may be gaps in the numbering and this does not imply primary, secondary etc. as the specific positioning of coverages depends upon the episode of care.\r\n\r\n現在適用されている他の保障と比較して、この保障の適用可能性が高い順に記載されています。なお、ナンバリングにギャップがある場合があり、カバーの具体的な位置づけはケアのエピソードに依存するため、一次、二次などを意味するものではありません。"
* order ^comment = "32 bit number; for values larger than this, use decimal\r\n\r\n32 ビットの数値、これより大きい値の場合は 10 進数を使用します。"
* order ^requirements = "Used in managing the coordination of benefits.\r\n\r\n保険給付の調整管理に使用します。\r\n\r\n【JP-CORE】\r\n公費情報で本リソースを使用する場合で、複数の公費負担情報がある場合に、その適用順序番号を示す１，２，３．．．を設定する。"
* network ^definition = "The insurer-specific identifier for the insurer-defined network of providers to which the beneficiary may seek treatment which will be covered at the 'in-network' rate, otherwise 'out of network' terms and conditions apply.\r\n\r\n保険者が定義したプロバイダーの保険者定義ネットワークの保険者固有の識別子で、被保険者が「ネットワーク内」の料金でカバーされる治療を受けることができるが、そうでなければ「ネットワーク外」の条件が適用される。"
* network ^requirements = "Used in referral for treatment and in claims processing.\r\n\r\n\r\n治療のための紹介や請求処理の際に使用します。"
* costToBeneficiary ^short = "Patient payments for services/products　サービスやプロダクトに対する患者支払い"
* costToBeneficiary ^definition = "A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been  included on the health card.\r\n\r\nポリシーに詳細が記載されており、ヘルスカードに含まれている可能性のあるコストカテゴリと関連する金額を示す一連のコード。"
* costToBeneficiary ^comment = "For example by knowing the patient visit co-pay, the provider can collect the amount prior to undertaking treatment.\r\n\r\n例えば、患者の訪問時の自己負担額を知ることで、医療提供者は治療を行う前にその金額を回収することができる。\r\n\r\n【JP-CORE】\r\n公費の場合には自己負担率。判明している場合のみ設定する。"
* costToBeneficiary ^requirements = "Required by providers to manage financial transaction with the patient.\r\n\r\n事業者が患者との金銭的な取引を管理するために必要となる。"
* costToBeneficiary.type ^definition = "The category of patient centric costs associated with treatment.\r\n\r\n\r\n治療に伴う患者中心の費用のカテゴリー。"
* costToBeneficiary.type ^comment = "For example visit, specialist visits, emergency, inpatient care, etc.\r\n\r\n\r\n例えば、訪問診療、専門医の訪問診療、救急診療、入院診療など。"
* costToBeneficiary.type ^requirements = "Needed to identify the category associated with the amount for the patient.\r\n\r\n\r\n患者さんの金額に関連するカテゴリーを特定する必要がありました。"
* costToBeneficiary.type.coding.system ^comment = "The URI may be an OID (urn:oid:...) or a UUID (urn:uuid:...).  OIDs and UUIDs SHALL be references to the HL7 OID registry. Otherwise, the URI should come from HL7's list of FHIR defined special URIs or it should reference to some definition that establishes the system clearly and unambiguously.\r\n\r\n【JP-CORE】\r\n保険や公費における自己負担率の種別を識別するコード体系のコード。\r\n\"http://terminology.hl7.org/CodeSystem/coverage-copay-type\""
* costToBeneficiary.type.coding.code ^comment = "Note that FHIR strings SHALL NOT exceed 1MB in size\r\n\r\n【JP-CORE】\r\n自己負担率を表すコード　\"copaypct\""
* costToBeneficiary.value[x] ^definition = "The amount due from the patient for the cost category.\r\n\r\n\r\n費用区分の患者さんからの支払額。"
* costToBeneficiary.value[x] ^comment = "Amount may be expressed as a percentage of the service/product cost or a fixed amount of currency.\r\n\r\n\r\n金額は、サービス/製品のコストに対する割合で表現される場合と、通貨の固定額で表現される場合があります。"
* costToBeneficiary.value[x] ^requirements = "Needed to identify the amount for the patient associated with the category.\r\n\r\n\r\nカテゴリーに関連する患者の支払い金額を特定する必要がありました。"
* costToBeneficiary.exception ^definition = "A suite of codes indicating exceptions or reductions to patient costs and their effective periods.\r\n\r\n\r\n患者費用の例外または削減を示すコードとその有効期間を示すコード群。"
* costToBeneficiary.exception ^requirements = "Required by providers to manage financial transaction with the patient.\r\n\r\n\r\n事業者が患者との金銭的な取引を管理するために必要となる。"
* costToBeneficiary.exception.type ^definition = "The code for the specific exception.\r\n\r\n\r\n特定の例外のコード。"
* costToBeneficiary.exception.type ^requirements = "Needed to identify the exception associated with the amount for the patient.\r\n\r\n\r\n患者の金額に関連する例外を特定する必要があった。"
* costToBeneficiary.exception.period ^definition = "The timeframe during when the exception is in force.\r\n\r\n\r\n例外が発生している間の時間枠。"
* costToBeneficiary.exception.period ^requirements = "Needed to identify the applicable timeframe for the exception for the correct calculation of patient costs.\r\n\r\n\r\n患者の費用を正しく計算するための例外の適用時期を特定する必要があった。"
* subrogation ^short = "Reimbursement to insurer　保険者への償還"
* subrogation ^definition = "When 'subrogation=true' this insurance instance has been included not for adjudication but to provide insurers with the details to recover costs.\r\n\r\nsubrogation=trueの場合、この保険インスタンスは裁定のためではなく、保険者に費用回収のための詳細を提供するために含まれている。 (subrogation=代位、subrogation payment=代位納付)"
* subrogation ^comment = "Typically, automotive and worker's compensation policies would be flagged with 'subrogation=true' to enable healthcare payors to collect against accident claims.\r\n\r\n一般的に、自動車保険や労災保険では、医療費支払い者が事故請求に対して回収できるように、subrogation＝true というフラグが立てられている。"
* subrogation ^requirements = "See definition for when to be used.\r\n\r\n\r\n使用時期については定義を参照してください。"
* contract ^short = "Contract details　契約の詳細"
* contract ^definition = "The policy(s) which constitute this insurance coverage.\r\n\r\nこの保険の適用範囲を構成するポリシー。"
* contract ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\n参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。"
* contract ^requirements = "To reference the legally binding contract between the policy holder and the insurer.\r\n\r\n契約者と保険者との間の法的拘束力のある契約を参照するため。"


// ==============================
//   Extension 定義
// ==============================
Extension: JP_Coverage_InsuredPersonNumber
Id: 3dcc02c6-c298-4fb0-bdd2-e19a6728ba24
Description: "健康保険における被保険者証番号を示す拡張"
* ^meta.lastUpdated = "2021-12-01T04:20:04.622+00:00"
* ^url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber"
* ^date = "2021-12-01T04:18:05.8058695Z"
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "健康保険における被保険者証番号"
* . ^comment = "健康保険における被保険者証番号を示す拡張"
* url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber" (exactly)
* value[x] only string

Extension: JP_Coverage_InsuredPersonSubNumber
Id: 972fb17c-7248-40c0-8508-94c00e1c10f2
Description: "健康保険における被保険者証番号の枝番を示す拡張"
* ^meta.lastUpdated = "2021-12-01T04:19:35.505+00:00"
* ^url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber"
* ^date = "2021-12-01T04:18:14.8920797+00:00"
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "健康保険における被保険者証番号の枝番"
* . ^comment = "健康保険における被保険者証番号の枝番を示す拡張"
* url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber" (exactly)
* value[x] only string

Extension: JP_Coverage_InsuredPersonSymbol
Id: 73958ac3-9a9d-4c07-8c35-3b277923492e
Description: "健康保険における被保険者証記号を示す拡張"
* ^meta.lastUpdated = "2021-12-01T04:19:21.721+00:00"
* ^url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol"
* ^date = "2021-12-01T04:18:22.6866878+00:00"
* ^context.type = #element
* ^context.expression = "Coverage"
* . ^short = "健康保険における被保険者証記号"
* . ^comment = "健康保険における被保険者証記号を示す拡張"
* url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol" (exactly)
* value[x] only string
