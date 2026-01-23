; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539036 () Bool)

(assert start!539036)

(declare-fun b!5111114 () Bool)

(declare-fun e!3187768 () Bool)

(declare-fun tp!1426089 () Bool)

(assert (=> b!5111114 (= e!3187768 tp!1426089)))

(declare-fun b!5111116 () Bool)

(declare-fun e!3187765 () Bool)

(declare-fun tp_is_empty!37567 () Bool)

(declare-fun tp!1426091 () Bool)

(assert (=> b!5111116 (= e!3187765 (and tp_is_empty!37567 tp!1426091))))

(declare-fun b!5111117 () Bool)

(declare-fun e!3187766 () Bool)

(declare-fun lt!2104875 () Int)

(declare-datatypes ((C!28560 0))(
  ( (C!28561 (val!23932 Int)) )
))
(declare-datatypes ((List!59176 0))(
  ( (Nil!59052) (Cons!59052 (h!65500 C!28560) (t!372177 List!59176)) )
))
(declare-fun lt!2104872 () List!59176)

(declare-fun size!39453 (List!59176) Int)

(assert (=> b!5111117 (= e!3187766 (>= lt!2104875 (size!39453 lt!2104872)))))

(declare-fun knownP!20 () List!59176)

(declare-fun isPrefix!5552 (List!59176 List!59176) Bool)

(assert (=> b!5111117 (isPrefix!5552 lt!2104872 knownP!20)))

(declare-datatypes ((Unit!150155 0))(
  ( (Unit!150156) )
))
(declare-fun lt!2104871 () Unit!150155)

(declare-fun input!5745 () List!59176)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!689 (List!59176 List!59176 List!59176) Unit!150155)

(assert (=> b!5111117 (= lt!2104871 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!689 knownP!20 lt!2104872 input!5745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14147 0))(
  ( (ElementMatch!14147 (c!878065 C!28560)) (Concat!22992 (regOne!28806 Regex!14147) (regTwo!28806 Regex!14147)) (EmptyExpr!14147) (Star!14147 (reg!14476 Regex!14147)) (EmptyLang!14147) (Union!14147 (regOne!28807 Regex!14147) (regTwo!28807 Regex!14147)) )
))
(declare-datatypes ((List!59177 0))(
  ( (Nil!59053) (Cons!59053 (h!65501 Regex!14147) (t!372178 List!59177)) )
))
(declare-datatypes ((Context!7062 0))(
  ( (Context!7063 (exprs!4031 List!59177)) )
))
(declare-fun z!4463 () (InoxSet Context!7062))

(declare-fun lt!2104873 () C!28560)

(declare-fun baseZ!46 () (InoxSet Context!7062))

(declare-fun derivationZipper!46 ((InoxSet Context!7062) List!59176) (InoxSet Context!7062))

(declare-fun derivationStepZipper!782 ((InoxSet Context!7062) C!28560) (InoxSet Context!7062))

(assert (=> b!5111117 (= (derivationZipper!46 baseZ!46 lt!2104872) (derivationStepZipper!782 z!4463 lt!2104873))))

(declare-fun lt!2104876 () Unit!150155)

(declare-fun testedP!265 () List!59176)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!7 ((InoxSet Context!7062) (InoxSet Context!7062) List!59176 C!28560) Unit!150155)

(assert (=> b!5111117 (= lt!2104876 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!7 baseZ!46 z!4463 testedP!265 lt!2104873))))

(assert (=> b!5111117 (isPrefix!5552 lt!2104872 input!5745)))

(declare-fun lt!2104874 () Unit!150155)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!942 (List!59176 List!59176) Unit!150155)

(assert (=> b!5111117 (= lt!2104874 (lemmaAddHeadSuffixToPrefixStillPrefix!942 testedP!265 input!5745))))

(declare-fun ++!12972 (List!59176 List!59176) List!59176)

(assert (=> b!5111117 (= lt!2104872 (++!12972 testedP!265 (Cons!59052 lt!2104873 Nil!59052)))))

(declare-fun head!10875 (List!59176) C!28560)

(declare-fun getSuffix!3226 (List!59176 List!59176) List!59176)

(assert (=> b!5111117 (= lt!2104873 (head!10875 (getSuffix!3226 input!5745 testedP!265)))))

(declare-fun b!5111118 () Bool)

(declare-fun e!3187763 () Bool)

(declare-fun tp!1426090 () Bool)

(assert (=> b!5111118 (= e!3187763 (and tp_is_empty!37567 tp!1426090))))

(declare-fun b!5111119 () Bool)

(declare-fun res!2175563 () Bool)

(assert (=> b!5111119 (=> res!2175563 e!3187766)))

(declare-fun lt!2104870 () Int)

(assert (=> b!5111119 (= res!2175563 (>= lt!2104870 (size!39453 input!5745)))))

(declare-fun setRes!29765 () Bool)

(declare-fun setNonEmpty!29765 () Bool)

(declare-fun e!3187762 () Bool)

(declare-fun tp!1426095 () Bool)

(declare-fun setElem!29765 () Context!7062)

(declare-fun inv!78548 (Context!7062) Bool)

(assert (=> setNonEmpty!29765 (= setRes!29765 (and tp!1426095 (inv!78548 setElem!29765) e!3187762))))

(declare-fun setRest!29766 () (InoxSet Context!7062))

(assert (=> setNonEmpty!29765 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7062 Bool)) false) setElem!29765 true) setRest!29766))))

(declare-fun b!5111120 () Bool)

(declare-fun e!3187767 () Bool)

(declare-fun tp!1426093 () Bool)

(assert (=> b!5111120 (= e!3187767 (and tp_is_empty!37567 tp!1426093))))

(declare-fun b!5111121 () Bool)

(declare-fun res!2175562 () Bool)

(assert (=> b!5111121 (=> res!2175562 e!3187766)))

(assert (=> b!5111121 (= res!2175562 (not (= (derivationZipper!46 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5111122 () Bool)

(declare-fun res!2175561 () Bool)

(declare-fun e!3187769 () Bool)

(assert (=> b!5111122 (=> (not res!2175561) (not e!3187769))))

(assert (=> b!5111122 (= res!2175561 (isPrefix!5552 knownP!20 input!5745))))

(declare-fun b!5111123 () Bool)

(declare-fun res!2175558 () Bool)

(assert (=> b!5111123 (=> res!2175558 e!3187766)))

(assert (=> b!5111123 (= res!2175558 (= lt!2104870 lt!2104875))))

(declare-fun b!5111124 () Bool)

(declare-fun res!2175559 () Bool)

(declare-fun e!3187764 () Bool)

(assert (=> b!5111124 (=> (not res!2175559) (not e!3187764))))

(declare-fun matchZipper!815 ((InoxSet Context!7062) List!59176) Bool)

(assert (=> b!5111124 (= res!2175559 (matchZipper!815 baseZ!46 knownP!20))))

(declare-fun res!2175560 () Bool)

(assert (=> start!539036 (=> (not res!2175560) (not e!3187769))))

(assert (=> start!539036 (= res!2175560 (isPrefix!5552 testedP!265 input!5745))))

(assert (=> start!539036 e!3187769))

(assert (=> start!539036 e!3187767))

(declare-fun condSetEmpty!29766 () Bool)

(assert (=> start!539036 (= condSetEmpty!29766 (= z!4463 ((as const (Array Context!7062 Bool)) false)))))

(declare-fun setRes!29766 () Bool)

(assert (=> start!539036 setRes!29766))

(assert (=> start!539036 e!3187763))

(declare-fun condSetEmpty!29765 () Bool)

(assert (=> start!539036 (= condSetEmpty!29765 (= baseZ!46 ((as const (Array Context!7062 Bool)) false)))))

(assert (=> start!539036 setRes!29765))

(assert (=> start!539036 e!3187765))

(declare-fun b!5111115 () Bool)

(declare-fun res!2175556 () Bool)

(assert (=> b!5111115 (=> res!2175556 e!3187766)))

(declare-fun lostCauseZipper!1033 ((InoxSet Context!7062)) Bool)

(assert (=> b!5111115 (= res!2175556 (lostCauseZipper!1033 z!4463))))

(declare-fun b!5111125 () Bool)

(declare-fun tp!1426094 () Bool)

(assert (=> b!5111125 (= e!3187762 tp!1426094)))

(declare-fun b!5111126 () Bool)

(assert (=> b!5111126 (= e!3187764 (not e!3187766))))

(declare-fun res!2175557 () Bool)

(assert (=> b!5111126 (=> res!2175557 e!3187766)))

(assert (=> b!5111126 (= res!2175557 (not (matchZipper!815 z!4463 (getSuffix!3226 knownP!20 testedP!265))))))

(assert (=> b!5111126 (isPrefix!5552 testedP!265 knownP!20)))

(declare-fun lt!2104869 () Unit!150155)

(assert (=> b!5111126 (= lt!2104869 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!689 knownP!20 testedP!265 input!5745))))

(declare-fun setElem!29766 () Context!7062)

(declare-fun setNonEmpty!29766 () Bool)

(declare-fun tp!1426092 () Bool)

(assert (=> setNonEmpty!29766 (= setRes!29766 (and tp!1426092 (inv!78548 setElem!29766) e!3187768))))

(declare-fun setRest!29765 () (InoxSet Context!7062))

(assert (=> setNonEmpty!29766 (= z!4463 ((_ map or) (store ((as const (Array Context!7062 Bool)) false) setElem!29766 true) setRest!29765))))

(declare-fun setIsEmpty!29765 () Bool)

(assert (=> setIsEmpty!29765 setRes!29765))

(declare-fun setIsEmpty!29766 () Bool)

(assert (=> setIsEmpty!29766 setRes!29766))

(declare-fun b!5111127 () Bool)

(assert (=> b!5111127 (= e!3187769 e!3187764)))

(declare-fun res!2175564 () Bool)

(assert (=> b!5111127 (=> (not res!2175564) (not e!3187764))))

(assert (=> b!5111127 (= res!2175564 (>= lt!2104875 lt!2104870))))

(assert (=> b!5111127 (= lt!2104870 (size!39453 testedP!265))))

(assert (=> b!5111127 (= lt!2104875 (size!39453 knownP!20))))

(assert (= (and start!539036 res!2175560) b!5111122))

(assert (= (and b!5111122 res!2175561) b!5111127))

(assert (= (and b!5111127 res!2175564) b!5111124))

(assert (= (and b!5111124 res!2175559) b!5111126))

(assert (= (and b!5111126 (not res!2175557)) b!5111121))

(assert (= (and b!5111121 (not res!2175562)) b!5111115))

(assert (= (and b!5111115 (not res!2175556)) b!5111123))

(assert (= (and b!5111123 (not res!2175558)) b!5111119))

(assert (= (and b!5111119 (not res!2175563)) b!5111117))

(get-info :version)

(assert (= (and start!539036 ((_ is Cons!59052) input!5745)) b!5111120))

(assert (= (and start!539036 condSetEmpty!29766) setIsEmpty!29766))

(assert (= (and start!539036 (not condSetEmpty!29766)) setNonEmpty!29766))

(assert (= setNonEmpty!29766 b!5111114))

(assert (= (and start!539036 ((_ is Cons!59052) testedP!265)) b!5111118))

(assert (= (and start!539036 condSetEmpty!29765) setIsEmpty!29765))

(assert (= (and start!539036 (not condSetEmpty!29765)) setNonEmpty!29765))

(assert (= setNonEmpty!29765 b!5111125))

(assert (= (and start!539036 ((_ is Cons!59052) knownP!20)) b!5111116))

(declare-fun m!6168544 () Bool)

(assert (=> b!5111121 m!6168544))

(declare-fun m!6168546 () Bool)

(assert (=> b!5111124 m!6168546))

(declare-fun m!6168548 () Bool)

(assert (=> b!5111122 m!6168548))

(declare-fun m!6168550 () Bool)

(assert (=> setNonEmpty!29766 m!6168550))

(declare-fun m!6168552 () Bool)

(assert (=> b!5111115 m!6168552))

(declare-fun m!6168554 () Bool)

(assert (=> setNonEmpty!29765 m!6168554))

(declare-fun m!6168556 () Bool)

(assert (=> b!5111117 m!6168556))

(assert (=> b!5111117 m!6168556))

(declare-fun m!6168558 () Bool)

(assert (=> b!5111117 m!6168558))

(declare-fun m!6168560 () Bool)

(assert (=> b!5111117 m!6168560))

(declare-fun m!6168562 () Bool)

(assert (=> b!5111117 m!6168562))

(declare-fun m!6168564 () Bool)

(assert (=> b!5111117 m!6168564))

(declare-fun m!6168566 () Bool)

(assert (=> b!5111117 m!6168566))

(declare-fun m!6168568 () Bool)

(assert (=> b!5111117 m!6168568))

(declare-fun m!6168570 () Bool)

(assert (=> b!5111117 m!6168570))

(declare-fun m!6168572 () Bool)

(assert (=> b!5111117 m!6168572))

(declare-fun m!6168574 () Bool)

(assert (=> b!5111117 m!6168574))

(declare-fun m!6168576 () Bool)

(assert (=> b!5111117 m!6168576))

(declare-fun m!6168578 () Bool)

(assert (=> b!5111127 m!6168578))

(declare-fun m!6168580 () Bool)

(assert (=> b!5111127 m!6168580))

(declare-fun m!6168582 () Bool)

(assert (=> b!5111119 m!6168582))

(declare-fun m!6168584 () Bool)

(assert (=> start!539036 m!6168584))

(declare-fun m!6168586 () Bool)

(assert (=> b!5111126 m!6168586))

(assert (=> b!5111126 m!6168586))

(declare-fun m!6168588 () Bool)

(assert (=> b!5111126 m!6168588))

(declare-fun m!6168590 () Bool)

(assert (=> b!5111126 m!6168590))

(declare-fun m!6168592 () Bool)

(assert (=> b!5111126 m!6168592))

(check-sat (not b!5111115) (not b!5111119) (not b!5111116) (not b!5111118) (not b!5111126) (not b!5111121) (not b!5111117) tp_is_empty!37567 (not start!539036) (not b!5111122) (not b!5111114) (not b!5111120) (not b!5111125) (not setNonEmpty!29766) (not b!5111124) (not setNonEmpty!29765) (not b!5111127))
(check-sat)
(get-model)

(declare-fun b!5111138 () Bool)

(declare-fun e!3187776 () Bool)

(declare-fun tail!10021 (List!59176) List!59176)

(assert (=> b!5111138 (= e!3187776 (isPrefix!5552 (tail!10021 knownP!20) (tail!10021 input!5745)))))

(declare-fun b!5111139 () Bool)

(declare-fun e!3187778 () Bool)

(assert (=> b!5111139 (= e!3187778 (>= (size!39453 input!5745) (size!39453 knownP!20)))))

(declare-fun b!5111136 () Bool)

(declare-fun e!3187777 () Bool)

(assert (=> b!5111136 (= e!3187777 e!3187776)))

(declare-fun res!2175576 () Bool)

(assert (=> b!5111136 (=> (not res!2175576) (not e!3187776))))

(assert (=> b!5111136 (= res!2175576 (not ((_ is Nil!59052) input!5745)))))

(declare-fun d!1651805 () Bool)

(assert (=> d!1651805 e!3187778))

(declare-fun res!2175575 () Bool)

(assert (=> d!1651805 (=> res!2175575 e!3187778)))

(declare-fun lt!2104879 () Bool)

(assert (=> d!1651805 (= res!2175575 (not lt!2104879))))

(assert (=> d!1651805 (= lt!2104879 e!3187777)))

(declare-fun res!2175574 () Bool)

(assert (=> d!1651805 (=> res!2175574 e!3187777)))

(assert (=> d!1651805 (= res!2175574 ((_ is Nil!59052) knownP!20))))

(assert (=> d!1651805 (= (isPrefix!5552 knownP!20 input!5745) lt!2104879)))

(declare-fun b!5111137 () Bool)

(declare-fun res!2175573 () Bool)

(assert (=> b!5111137 (=> (not res!2175573) (not e!3187776))))

(assert (=> b!5111137 (= res!2175573 (= (head!10875 knownP!20) (head!10875 input!5745)))))

(assert (= (and d!1651805 (not res!2175574)) b!5111136))

(assert (= (and b!5111136 res!2175576) b!5111137))

(assert (= (and b!5111137 res!2175573) b!5111138))

(assert (= (and d!1651805 (not res!2175575)) b!5111139))

(declare-fun m!6168594 () Bool)

(assert (=> b!5111138 m!6168594))

(declare-fun m!6168596 () Bool)

(assert (=> b!5111138 m!6168596))

(assert (=> b!5111138 m!6168594))

(assert (=> b!5111138 m!6168596))

(declare-fun m!6168598 () Bool)

(assert (=> b!5111138 m!6168598))

(assert (=> b!5111139 m!6168582))

(assert (=> b!5111139 m!6168580))

(declare-fun m!6168600 () Bool)

(assert (=> b!5111137 m!6168600))

(declare-fun m!6168602 () Bool)

(assert (=> b!5111137 m!6168602))

(assert (=> b!5111122 d!1651805))

(declare-fun d!1651809 () Bool)

(declare-fun c!878068 () Bool)

(declare-fun isEmpty!31859 (List!59176) Bool)

(assert (=> d!1651809 (= c!878068 (isEmpty!31859 knownP!20))))

(declare-fun e!3187781 () Bool)

(assert (=> d!1651809 (= (matchZipper!815 baseZ!46 knownP!20) e!3187781)))

(declare-fun b!5111144 () Bool)

(declare-fun nullableZipper!989 ((InoxSet Context!7062)) Bool)

(assert (=> b!5111144 (= e!3187781 (nullableZipper!989 baseZ!46))))

(declare-fun b!5111145 () Bool)

(assert (=> b!5111145 (= e!3187781 (matchZipper!815 (derivationStepZipper!782 baseZ!46 (head!10875 knownP!20)) (tail!10021 knownP!20)))))

(assert (= (and d!1651809 c!878068) b!5111144))

(assert (= (and d!1651809 (not c!878068)) b!5111145))

(declare-fun m!6168604 () Bool)

(assert (=> d!1651809 m!6168604))

(declare-fun m!6168606 () Bool)

(assert (=> b!5111144 m!6168606))

(assert (=> b!5111145 m!6168600))

(assert (=> b!5111145 m!6168600))

(declare-fun m!6168608 () Bool)

(assert (=> b!5111145 m!6168608))

(assert (=> b!5111145 m!6168594))

(assert (=> b!5111145 m!6168608))

(assert (=> b!5111145 m!6168594))

(declare-fun m!6168610 () Bool)

(assert (=> b!5111145 m!6168610))

(assert (=> b!5111124 d!1651809))

(declare-fun d!1651811 () Bool)

(declare-fun lambda!250356 () Int)

(declare-fun forall!13534 (List!59177 Int) Bool)

(assert (=> d!1651811 (= (inv!78548 setElem!29765) (forall!13534 (exprs!4031 setElem!29765) lambda!250356))))

(declare-fun bs!1192045 () Bool)

(assert (= bs!1192045 d!1651811))

(declare-fun m!6168614 () Bool)

(assert (=> bs!1192045 m!6168614))

(assert (=> setNonEmpty!29765 d!1651811))

(declare-fun d!1651815 () Bool)

(declare-fun lt!2104882 () Int)

(assert (=> d!1651815 (>= lt!2104882 0)))

(declare-fun e!3187784 () Int)

(assert (=> d!1651815 (= lt!2104882 e!3187784)))

(declare-fun c!878071 () Bool)

(assert (=> d!1651815 (= c!878071 ((_ is Nil!59052) input!5745))))

(assert (=> d!1651815 (= (size!39453 input!5745) lt!2104882)))

(declare-fun b!5111150 () Bool)

(assert (=> b!5111150 (= e!3187784 0)))

(declare-fun b!5111151 () Bool)

(assert (=> b!5111151 (= e!3187784 (+ 1 (size!39453 (t!372177 input!5745))))))

(assert (= (and d!1651815 c!878071) b!5111150))

(assert (= (and d!1651815 (not c!878071)) b!5111151))

(declare-fun m!6168616 () Bool)

(assert (=> b!5111151 m!6168616))

(assert (=> b!5111119 d!1651815))

(declare-fun bs!1192049 () Bool)

(declare-fun b!5111162 () Bool)

(declare-fun d!1651817 () Bool)

(assert (= bs!1192049 (and b!5111162 d!1651817)))

(declare-fun lambda!250385 () Int)

(declare-fun lambda!250384 () Int)

(assert (=> bs!1192049 (not (= lambda!250385 lambda!250384))))

(declare-fun bs!1192050 () Bool)

(declare-fun b!5111163 () Bool)

(assert (= bs!1192050 (and b!5111163 d!1651817)))

(declare-fun lambda!250386 () Int)

(assert (=> bs!1192050 (not (= lambda!250386 lambda!250384))))

(declare-fun bs!1192051 () Bool)

(assert (= bs!1192051 (and b!5111163 b!5111162)))

(assert (=> bs!1192051 (= lambda!250386 lambda!250385)))

(declare-fun call!356389 () Bool)

(declare-fun bm!356384 () Bool)

(declare-fun c!878093 () Bool)

(declare-datatypes ((List!59178 0))(
  ( (Nil!59054) (Cons!59054 (h!65502 Context!7062) (t!372179 List!59178)) )
))
(declare-fun lt!2104929 () List!59178)

(declare-fun lt!2104928 () List!59178)

(declare-fun exists!1437 (List!59178 Int) Bool)

(assert (=> bm!356384 (= call!356389 (exists!1437 (ite c!878093 lt!2104929 lt!2104928) (ite c!878093 lambda!250385 lambda!250386)))))

(declare-fun bm!356383 () Bool)

(declare-fun call!356388 () List!59178)

(declare-fun toList!8226 ((InoxSet Context!7062)) List!59178)

(assert (=> bm!356383 (= call!356388 (toList!8226 z!4463))))

(declare-fun e!3187798 () Unit!150155)

(declare-fun Unit!150158 () Unit!150155)

(assert (=> b!5111162 (= e!3187798 Unit!150158)))

(assert (=> b!5111162 (= lt!2104929 call!356388)))

(declare-fun lt!2104926 () Unit!150155)

(declare-fun lemmaNotForallThenExists!300 (List!59178 Int) Unit!150155)

(assert (=> b!5111162 (= lt!2104926 (lemmaNotForallThenExists!300 lt!2104929 lambda!250384))))

(assert (=> b!5111162 call!356389))

(declare-fun lt!2104923 () Unit!150155)

(assert (=> b!5111162 (= lt!2104923 lt!2104926)))

(declare-fun lt!2104927 () Bool)

(declare-datatypes ((Option!14660 0))(
  ( (None!14659) (Some!14659 (v!50672 List!59176)) )
))
(declare-fun isEmpty!31860 (Option!14660) Bool)

(declare-fun getLanguageWitness!777 ((InoxSet Context!7062)) Option!14660)

(assert (=> d!1651817 (= lt!2104927 (isEmpty!31860 (getLanguageWitness!777 z!4463)))))

(declare-fun forall!13536 ((InoxSet Context!7062) Int) Bool)

(assert (=> d!1651817 (= lt!2104927 (forall!13536 z!4463 lambda!250384))))

(declare-fun lt!2104924 () Unit!150155)

(assert (=> d!1651817 (= lt!2104924 e!3187798)))

(assert (=> d!1651817 (= c!878093 (not (forall!13536 z!4463 lambda!250384)))))

(assert (=> d!1651817 (= (lostCauseZipper!1033 z!4463) lt!2104927)))

(declare-fun Unit!150160 () Unit!150155)

(assert (=> b!5111163 (= e!3187798 Unit!150160)))

(assert (=> b!5111163 (= lt!2104928 call!356388)))

(declare-fun lt!2104925 () Unit!150155)

(declare-fun lemmaForallThenNotExists!284 (List!59178 Int) Unit!150155)

(assert (=> b!5111163 (= lt!2104925 (lemmaForallThenNotExists!284 lt!2104928 lambda!250384))))

(assert (=> b!5111163 (not call!356389)))

(declare-fun lt!2104930 () Unit!150155)

(assert (=> b!5111163 (= lt!2104930 lt!2104925)))

(assert (= (and d!1651817 c!878093) b!5111162))

(assert (= (and d!1651817 (not c!878093)) b!5111163))

(assert (= (or b!5111162 b!5111163) bm!356383))

(assert (= (or b!5111162 b!5111163) bm!356384))

(declare-fun m!6168632 () Bool)

(assert (=> bm!356383 m!6168632))

(declare-fun m!6168634 () Bool)

(assert (=> b!5111162 m!6168634))

(declare-fun m!6168636 () Bool)

(assert (=> bm!356384 m!6168636))

(declare-fun m!6168638 () Bool)

(assert (=> d!1651817 m!6168638))

(assert (=> d!1651817 m!6168638))

(declare-fun m!6168640 () Bool)

(assert (=> d!1651817 m!6168640))

(declare-fun m!6168642 () Bool)

(assert (=> d!1651817 m!6168642))

(assert (=> d!1651817 m!6168642))

(declare-fun m!6168644 () Bool)

(assert (=> b!5111163 m!6168644))

(assert (=> b!5111115 d!1651817))

(declare-fun d!1651821 () Bool)

(declare-fun lt!2104931 () Int)

(assert (=> d!1651821 (>= lt!2104931 0)))

(declare-fun e!3187799 () Int)

(assert (=> d!1651821 (= lt!2104931 e!3187799)))

(declare-fun c!878094 () Bool)

(assert (=> d!1651821 (= c!878094 ((_ is Nil!59052) testedP!265))))

(assert (=> d!1651821 (= (size!39453 testedP!265) lt!2104931)))

(declare-fun b!5111164 () Bool)

(assert (=> b!5111164 (= e!3187799 0)))

(declare-fun b!5111165 () Bool)

(assert (=> b!5111165 (= e!3187799 (+ 1 (size!39453 (t!372177 testedP!265))))))

(assert (= (and d!1651821 c!878094) b!5111164))

(assert (= (and d!1651821 (not c!878094)) b!5111165))

(declare-fun m!6168646 () Bool)

(assert (=> b!5111165 m!6168646))

(assert (=> b!5111127 d!1651821))

(declare-fun d!1651823 () Bool)

(declare-fun lt!2104932 () Int)

(assert (=> d!1651823 (>= lt!2104932 0)))

(declare-fun e!3187800 () Int)

(assert (=> d!1651823 (= lt!2104932 e!3187800)))

(declare-fun c!878095 () Bool)

(assert (=> d!1651823 (= c!878095 ((_ is Nil!59052) knownP!20))))

(assert (=> d!1651823 (= (size!39453 knownP!20) lt!2104932)))

(declare-fun b!5111166 () Bool)

(assert (=> b!5111166 (= e!3187800 0)))

(declare-fun b!5111167 () Bool)

(assert (=> b!5111167 (= e!3187800 (+ 1 (size!39453 (t!372177 knownP!20))))))

(assert (= (and d!1651823 c!878095) b!5111166))

(assert (= (and d!1651823 (not c!878095)) b!5111167))

(declare-fun m!6168648 () Bool)

(assert (=> b!5111167 m!6168648))

(assert (=> b!5111127 d!1651823))

(declare-fun b!5111174 () Bool)

(declare-fun e!3187803 () Bool)

(assert (=> b!5111174 (= e!3187803 (isPrefix!5552 (tail!10021 testedP!265) (tail!10021 input!5745)))))

(declare-fun b!5111175 () Bool)

(declare-fun e!3187805 () Bool)

(assert (=> b!5111175 (= e!3187805 (>= (size!39453 input!5745) (size!39453 testedP!265)))))

(declare-fun b!5111172 () Bool)

(declare-fun e!3187804 () Bool)

(assert (=> b!5111172 (= e!3187804 e!3187803)))

(declare-fun res!2175580 () Bool)

(assert (=> b!5111172 (=> (not res!2175580) (not e!3187803))))

(assert (=> b!5111172 (= res!2175580 (not ((_ is Nil!59052) input!5745)))))

(declare-fun d!1651825 () Bool)

(assert (=> d!1651825 e!3187805))

(declare-fun res!2175579 () Bool)

(assert (=> d!1651825 (=> res!2175579 e!3187805)))

(declare-fun lt!2104935 () Bool)

(assert (=> d!1651825 (= res!2175579 (not lt!2104935))))

(assert (=> d!1651825 (= lt!2104935 e!3187804)))

(declare-fun res!2175578 () Bool)

(assert (=> d!1651825 (=> res!2175578 e!3187804)))

(assert (=> d!1651825 (= res!2175578 ((_ is Nil!59052) testedP!265))))

(assert (=> d!1651825 (= (isPrefix!5552 testedP!265 input!5745) lt!2104935)))

(declare-fun b!5111173 () Bool)

(declare-fun res!2175577 () Bool)

(assert (=> b!5111173 (=> (not res!2175577) (not e!3187803))))

(assert (=> b!5111173 (= res!2175577 (= (head!10875 testedP!265) (head!10875 input!5745)))))

(assert (= (and d!1651825 (not res!2175578)) b!5111172))

(assert (= (and b!5111172 res!2175580) b!5111173))

(assert (= (and b!5111173 res!2175577) b!5111174))

(assert (= (and d!1651825 (not res!2175579)) b!5111175))

(declare-fun m!6168650 () Bool)

(assert (=> b!5111174 m!6168650))

(assert (=> b!5111174 m!6168596))

(assert (=> b!5111174 m!6168650))

(assert (=> b!5111174 m!6168596))

(declare-fun m!6168652 () Bool)

(assert (=> b!5111174 m!6168652))

(assert (=> b!5111175 m!6168582))

(assert (=> b!5111175 m!6168578))

(declare-fun m!6168654 () Bool)

(assert (=> b!5111173 m!6168654))

(assert (=> b!5111173 m!6168602))

(assert (=> start!539036 d!1651825))

(declare-fun d!1651827 () Bool)

(assert (=> d!1651827 true))

(declare-fun lambda!250389 () Int)

(declare-fun flatMap!323 ((InoxSet Context!7062) Int) (InoxSet Context!7062))

(assert (=> d!1651827 (= (derivationStepZipper!782 z!4463 lt!2104873) (flatMap!323 z!4463 lambda!250389))))

(declare-fun bs!1192052 () Bool)

(assert (= bs!1192052 d!1651827))

(declare-fun m!6168662 () Bool)

(assert (=> bs!1192052 m!6168662))

(assert (=> b!5111117 d!1651827))

(declare-fun d!1651831 () Bool)

(declare-fun c!878104 () Bool)

(assert (=> d!1651831 (= c!878104 ((_ is Cons!59052) lt!2104872))))

(declare-fun e!3187809 () (InoxSet Context!7062))

(assert (=> d!1651831 (= (derivationZipper!46 baseZ!46 lt!2104872) e!3187809)))

(declare-fun b!5111184 () Bool)

(assert (=> b!5111184 (= e!3187809 (derivationZipper!46 (derivationStepZipper!782 baseZ!46 (h!65500 lt!2104872)) (t!372177 lt!2104872)))))

(declare-fun b!5111185 () Bool)

(assert (=> b!5111185 (= e!3187809 baseZ!46)))

(assert (= (and d!1651831 c!878104) b!5111184))

(assert (= (and d!1651831 (not c!878104)) b!5111185))

(declare-fun m!6168664 () Bool)

(assert (=> b!5111184 m!6168664))

(assert (=> b!5111184 m!6168664))

(declare-fun m!6168666 () Bool)

(assert (=> b!5111184 m!6168666))

(assert (=> b!5111117 d!1651831))

(declare-fun d!1651833 () Bool)

(assert (=> d!1651833 (= (derivationZipper!46 baseZ!46 (++!12972 testedP!265 (Cons!59052 lt!2104873 Nil!59052))) (derivationStepZipper!782 z!4463 lt!2104873))))

(declare-fun lt!2104945 () Unit!150155)

(declare-fun choose!37467 ((InoxSet Context!7062) (InoxSet Context!7062) List!59176 C!28560) Unit!150155)

(assert (=> d!1651833 (= lt!2104945 (choose!37467 baseZ!46 z!4463 testedP!265 lt!2104873))))

(assert (=> d!1651833 (= (derivationZipper!46 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1651833 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!7 baseZ!46 z!4463 testedP!265 lt!2104873) lt!2104945)))

(declare-fun bs!1192055 () Bool)

(assert (= bs!1192055 d!1651833))

(assert (=> bs!1192055 m!6168564))

(declare-fun m!6168674 () Bool)

(assert (=> bs!1192055 m!6168674))

(assert (=> bs!1192055 m!6168576))

(assert (=> bs!1192055 m!6168564))

(declare-fun m!6168676 () Bool)

(assert (=> bs!1192055 m!6168676))

(assert (=> bs!1192055 m!6168544))

(assert (=> b!5111117 d!1651833))

(declare-fun d!1651839 () Bool)

(declare-fun e!3187827 () Bool)

(assert (=> d!1651839 e!3187827))

(declare-fun res!2175602 () Bool)

(assert (=> d!1651839 (=> (not res!2175602) (not e!3187827))))

(declare-fun lt!2104952 () List!59176)

(declare-fun content!10492 (List!59176) (InoxSet C!28560))

(assert (=> d!1651839 (= res!2175602 (= (content!10492 lt!2104952) ((_ map or) (content!10492 testedP!265) (content!10492 (Cons!59052 lt!2104873 Nil!59052)))))))

(declare-fun e!3187826 () List!59176)

(assert (=> d!1651839 (= lt!2104952 e!3187826)))

(declare-fun c!878108 () Bool)

(assert (=> d!1651839 (= c!878108 ((_ is Nil!59052) testedP!265))))

(assert (=> d!1651839 (= (++!12972 testedP!265 (Cons!59052 lt!2104873 Nil!59052)) lt!2104952)))

(declare-fun b!5111212 () Bool)

(declare-fun res!2175601 () Bool)

(assert (=> b!5111212 (=> (not res!2175601) (not e!3187827))))

(assert (=> b!5111212 (= res!2175601 (= (size!39453 lt!2104952) (+ (size!39453 testedP!265) (size!39453 (Cons!59052 lt!2104873 Nil!59052)))))))

(declare-fun b!5111210 () Bool)

(assert (=> b!5111210 (= e!3187826 (Cons!59052 lt!2104873 Nil!59052))))

(declare-fun b!5111211 () Bool)

(assert (=> b!5111211 (= e!3187826 (Cons!59052 (h!65500 testedP!265) (++!12972 (t!372177 testedP!265) (Cons!59052 lt!2104873 Nil!59052))))))

(declare-fun b!5111213 () Bool)

(assert (=> b!5111213 (= e!3187827 (or (not (= (Cons!59052 lt!2104873 Nil!59052) Nil!59052)) (= lt!2104952 testedP!265)))))

(assert (= (and d!1651839 c!878108) b!5111210))

(assert (= (and d!1651839 (not c!878108)) b!5111211))

(assert (= (and d!1651839 res!2175602) b!5111212))

(assert (= (and b!5111212 res!2175601) b!5111213))

(declare-fun m!6168692 () Bool)

(assert (=> d!1651839 m!6168692))

(declare-fun m!6168694 () Bool)

(assert (=> d!1651839 m!6168694))

(declare-fun m!6168696 () Bool)

(assert (=> d!1651839 m!6168696))

(declare-fun m!6168698 () Bool)

(assert (=> b!5111212 m!6168698))

(assert (=> b!5111212 m!6168578))

(declare-fun m!6168700 () Bool)

(assert (=> b!5111212 m!6168700))

(declare-fun m!6168702 () Bool)

(assert (=> b!5111211 m!6168702))

(assert (=> b!5111117 d!1651839))

(declare-fun d!1651845 () Bool)

(declare-fun lt!2104953 () Int)

(assert (=> d!1651845 (>= lt!2104953 0)))

(declare-fun e!3187830 () Int)

(assert (=> d!1651845 (= lt!2104953 e!3187830)))

(declare-fun c!878111 () Bool)

(assert (=> d!1651845 (= c!878111 ((_ is Nil!59052) lt!2104872))))

(assert (=> d!1651845 (= (size!39453 lt!2104872) lt!2104953)))

(declare-fun b!5111218 () Bool)

(assert (=> b!5111218 (= e!3187830 0)))

(declare-fun b!5111219 () Bool)

(assert (=> b!5111219 (= e!3187830 (+ 1 (size!39453 (t!372177 lt!2104872))))))

(assert (= (and d!1651845 c!878111) b!5111218))

(assert (= (and d!1651845 (not c!878111)) b!5111219))

(declare-fun m!6168704 () Bool)

(assert (=> b!5111219 m!6168704))

(assert (=> b!5111117 d!1651845))

(declare-fun d!1651847 () Bool)

(assert (=> d!1651847 (isPrefix!5552 (++!12972 testedP!265 (Cons!59052 (head!10875 (getSuffix!3226 input!5745 testedP!265)) Nil!59052)) input!5745)))

(declare-fun lt!2104956 () Unit!150155)

(declare-fun choose!37468 (List!59176 List!59176) Unit!150155)

(assert (=> d!1651847 (= lt!2104956 (choose!37468 testedP!265 input!5745))))

(assert (=> d!1651847 (isPrefix!5552 testedP!265 input!5745)))

(assert (=> d!1651847 (= (lemmaAddHeadSuffixToPrefixStillPrefix!942 testedP!265 input!5745) lt!2104956)))

(declare-fun bs!1192056 () Bool)

(assert (= bs!1192056 d!1651847))

(declare-fun m!6168710 () Bool)

(assert (=> bs!1192056 m!6168710))

(assert (=> bs!1192056 m!6168556))

(assert (=> bs!1192056 m!6168556))

(assert (=> bs!1192056 m!6168558))

(assert (=> bs!1192056 m!6168584))

(declare-fun m!6168712 () Bool)

(assert (=> bs!1192056 m!6168712))

(assert (=> bs!1192056 m!6168710))

(declare-fun m!6168714 () Bool)

(assert (=> bs!1192056 m!6168714))

(assert (=> b!5111117 d!1651847))

(declare-fun d!1651851 () Bool)

(assert (=> d!1651851 (= (head!10875 (getSuffix!3226 input!5745 testedP!265)) (h!65500 (getSuffix!3226 input!5745 testedP!265)))))

(assert (=> b!5111117 d!1651851))

(declare-fun b!5111232 () Bool)

(declare-fun e!3187836 () Bool)

(assert (=> b!5111232 (= e!3187836 (isPrefix!5552 (tail!10021 lt!2104872) (tail!10021 knownP!20)))))

(declare-fun b!5111233 () Bool)

(declare-fun e!3187838 () Bool)

(assert (=> b!5111233 (= e!3187838 (>= (size!39453 knownP!20) (size!39453 lt!2104872)))))

(declare-fun b!5111230 () Bool)

(declare-fun e!3187837 () Bool)

(assert (=> b!5111230 (= e!3187837 e!3187836)))

(declare-fun res!2175610 () Bool)

(assert (=> b!5111230 (=> (not res!2175610) (not e!3187836))))

(assert (=> b!5111230 (= res!2175610 (not ((_ is Nil!59052) knownP!20)))))

(declare-fun d!1651853 () Bool)

(assert (=> d!1651853 e!3187838))

(declare-fun res!2175609 () Bool)

(assert (=> d!1651853 (=> res!2175609 e!3187838)))

(declare-fun lt!2104959 () Bool)

(assert (=> d!1651853 (= res!2175609 (not lt!2104959))))

(assert (=> d!1651853 (= lt!2104959 e!3187837)))

(declare-fun res!2175608 () Bool)

(assert (=> d!1651853 (=> res!2175608 e!3187837)))

(assert (=> d!1651853 (= res!2175608 ((_ is Nil!59052) lt!2104872))))

(assert (=> d!1651853 (= (isPrefix!5552 lt!2104872 knownP!20) lt!2104959)))

(declare-fun b!5111231 () Bool)

(declare-fun res!2175607 () Bool)

(assert (=> b!5111231 (=> (not res!2175607) (not e!3187836))))

(assert (=> b!5111231 (= res!2175607 (= (head!10875 lt!2104872) (head!10875 knownP!20)))))

(assert (= (and d!1651853 (not res!2175608)) b!5111230))

(assert (= (and b!5111230 res!2175610) b!5111231))

(assert (= (and b!5111231 res!2175607) b!5111232))

(assert (= (and d!1651853 (not res!2175609)) b!5111233))

(declare-fun m!6168716 () Bool)

(assert (=> b!5111232 m!6168716))

(assert (=> b!5111232 m!6168594))

(assert (=> b!5111232 m!6168716))

(assert (=> b!5111232 m!6168594))

(declare-fun m!6168718 () Bool)

(assert (=> b!5111232 m!6168718))

(assert (=> b!5111233 m!6168580))

(assert (=> b!5111233 m!6168574))

(declare-fun m!6168720 () Bool)

(assert (=> b!5111231 m!6168720))

(assert (=> b!5111231 m!6168600))

(assert (=> b!5111117 d!1651853))

(declare-fun b!5111236 () Bool)

(declare-fun e!3187839 () Bool)

(assert (=> b!5111236 (= e!3187839 (isPrefix!5552 (tail!10021 lt!2104872) (tail!10021 input!5745)))))

(declare-fun b!5111237 () Bool)

(declare-fun e!3187841 () Bool)

(assert (=> b!5111237 (= e!3187841 (>= (size!39453 input!5745) (size!39453 lt!2104872)))))

(declare-fun b!5111234 () Bool)

(declare-fun e!3187840 () Bool)

(assert (=> b!5111234 (= e!3187840 e!3187839)))

(declare-fun res!2175614 () Bool)

(assert (=> b!5111234 (=> (not res!2175614) (not e!3187839))))

(assert (=> b!5111234 (= res!2175614 (not ((_ is Nil!59052) input!5745)))))

(declare-fun d!1651855 () Bool)

(assert (=> d!1651855 e!3187841))

(declare-fun res!2175613 () Bool)

(assert (=> d!1651855 (=> res!2175613 e!3187841)))

(declare-fun lt!2104960 () Bool)

(assert (=> d!1651855 (= res!2175613 (not lt!2104960))))

(assert (=> d!1651855 (= lt!2104960 e!3187840)))

(declare-fun res!2175612 () Bool)

(assert (=> d!1651855 (=> res!2175612 e!3187840)))

(assert (=> d!1651855 (= res!2175612 ((_ is Nil!59052) lt!2104872))))

(assert (=> d!1651855 (= (isPrefix!5552 lt!2104872 input!5745) lt!2104960)))

(declare-fun b!5111235 () Bool)

(declare-fun res!2175611 () Bool)

(assert (=> b!5111235 (=> (not res!2175611) (not e!3187839))))

(assert (=> b!5111235 (= res!2175611 (= (head!10875 lt!2104872) (head!10875 input!5745)))))

(assert (= (and d!1651855 (not res!2175612)) b!5111234))

(assert (= (and b!5111234 res!2175614) b!5111235))

(assert (= (and b!5111235 res!2175611) b!5111236))

(assert (= (and d!1651855 (not res!2175613)) b!5111237))

(assert (=> b!5111236 m!6168716))

(assert (=> b!5111236 m!6168596))

(assert (=> b!5111236 m!6168716))

(assert (=> b!5111236 m!6168596))

(declare-fun m!6168722 () Bool)

(assert (=> b!5111236 m!6168722))

(assert (=> b!5111237 m!6168582))

(assert (=> b!5111237 m!6168574))

(assert (=> b!5111235 m!6168720))

(assert (=> b!5111235 m!6168602))

(assert (=> b!5111117 d!1651855))

(declare-fun d!1651857 () Bool)

(declare-fun lt!2104967 () List!59176)

(assert (=> d!1651857 (= (++!12972 testedP!265 lt!2104967) input!5745)))

(declare-fun e!3187849 () List!59176)

(assert (=> d!1651857 (= lt!2104967 e!3187849)))

(declare-fun c!878121 () Bool)

(assert (=> d!1651857 (= c!878121 ((_ is Cons!59052) testedP!265))))

(assert (=> d!1651857 (>= (size!39453 input!5745) (size!39453 testedP!265))))

(assert (=> d!1651857 (= (getSuffix!3226 input!5745 testedP!265) lt!2104967)))

(declare-fun b!5111252 () Bool)

(assert (=> b!5111252 (= e!3187849 (getSuffix!3226 (tail!10021 input!5745) (t!372177 testedP!265)))))

(declare-fun b!5111253 () Bool)

(assert (=> b!5111253 (= e!3187849 input!5745)))

(assert (= (and d!1651857 c!878121) b!5111252))

(assert (= (and d!1651857 (not c!878121)) b!5111253))

(declare-fun m!6168738 () Bool)

(assert (=> d!1651857 m!6168738))

(assert (=> d!1651857 m!6168582))

(assert (=> d!1651857 m!6168578))

(assert (=> b!5111252 m!6168596))

(assert (=> b!5111252 m!6168596))

(declare-fun m!6168740 () Bool)

(assert (=> b!5111252 m!6168740))

(assert (=> b!5111117 d!1651857))

(declare-fun d!1651863 () Bool)

(assert (=> d!1651863 (isPrefix!5552 lt!2104872 knownP!20)))

(declare-fun lt!2104972 () Unit!150155)

(declare-fun choose!37470 (List!59176 List!59176 List!59176) Unit!150155)

(assert (=> d!1651863 (= lt!2104972 (choose!37470 knownP!20 lt!2104872 input!5745))))

(assert (=> d!1651863 (isPrefix!5552 knownP!20 input!5745)))

(assert (=> d!1651863 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!689 knownP!20 lt!2104872 input!5745) lt!2104972)))

(declare-fun bs!1192057 () Bool)

(assert (= bs!1192057 d!1651863))

(assert (=> bs!1192057 m!6168562))

(declare-fun m!6168742 () Bool)

(assert (=> bs!1192057 m!6168742))

(assert (=> bs!1192057 m!6168548))

(assert (=> b!5111117 d!1651863))

(declare-fun bs!1192058 () Bool)

(declare-fun d!1651865 () Bool)

(assert (= bs!1192058 (and d!1651865 d!1651811)))

(declare-fun lambda!250390 () Int)

(assert (=> bs!1192058 (= lambda!250390 lambda!250356)))

(assert (=> d!1651865 (= (inv!78548 setElem!29766) (forall!13534 (exprs!4031 setElem!29766) lambda!250390))))

(declare-fun bs!1192059 () Bool)

(assert (= bs!1192059 d!1651865))

(declare-fun m!6168744 () Bool)

(assert (=> bs!1192059 m!6168744))

(assert (=> setNonEmpty!29766 d!1651865))

(declare-fun d!1651867 () Bool)

(declare-fun c!878122 () Bool)

(assert (=> d!1651867 (= c!878122 (isEmpty!31859 (getSuffix!3226 knownP!20 testedP!265)))))

(declare-fun e!3187850 () Bool)

(assert (=> d!1651867 (= (matchZipper!815 z!4463 (getSuffix!3226 knownP!20 testedP!265)) e!3187850)))

(declare-fun b!5111254 () Bool)

(assert (=> b!5111254 (= e!3187850 (nullableZipper!989 z!4463))))

(declare-fun b!5111255 () Bool)

(assert (=> b!5111255 (= e!3187850 (matchZipper!815 (derivationStepZipper!782 z!4463 (head!10875 (getSuffix!3226 knownP!20 testedP!265))) (tail!10021 (getSuffix!3226 knownP!20 testedP!265))))))

(assert (= (and d!1651867 c!878122) b!5111254))

(assert (= (and d!1651867 (not c!878122)) b!5111255))

(assert (=> d!1651867 m!6168586))

(declare-fun m!6168752 () Bool)

(assert (=> d!1651867 m!6168752))

(declare-fun m!6168754 () Bool)

(assert (=> b!5111254 m!6168754))

(assert (=> b!5111255 m!6168586))

(declare-fun m!6168756 () Bool)

(assert (=> b!5111255 m!6168756))

(assert (=> b!5111255 m!6168756))

(declare-fun m!6168758 () Bool)

(assert (=> b!5111255 m!6168758))

(assert (=> b!5111255 m!6168586))

(declare-fun m!6168760 () Bool)

(assert (=> b!5111255 m!6168760))

(assert (=> b!5111255 m!6168758))

(assert (=> b!5111255 m!6168760))

(declare-fun m!6168762 () Bool)

(assert (=> b!5111255 m!6168762))

(assert (=> b!5111126 d!1651867))

(declare-fun d!1651871 () Bool)

(declare-fun lt!2104974 () List!59176)

(assert (=> d!1651871 (= (++!12972 testedP!265 lt!2104974) knownP!20)))

(declare-fun e!3187851 () List!59176)

(assert (=> d!1651871 (= lt!2104974 e!3187851)))

(declare-fun c!878123 () Bool)

(assert (=> d!1651871 (= c!878123 ((_ is Cons!59052) testedP!265))))

(assert (=> d!1651871 (>= (size!39453 knownP!20) (size!39453 testedP!265))))

(assert (=> d!1651871 (= (getSuffix!3226 knownP!20 testedP!265) lt!2104974)))

(declare-fun b!5111256 () Bool)

(assert (=> b!5111256 (= e!3187851 (getSuffix!3226 (tail!10021 knownP!20) (t!372177 testedP!265)))))

(declare-fun b!5111257 () Bool)

(assert (=> b!5111257 (= e!3187851 knownP!20)))

(assert (= (and d!1651871 c!878123) b!5111256))

(assert (= (and d!1651871 (not c!878123)) b!5111257))

(declare-fun m!6168764 () Bool)

(assert (=> d!1651871 m!6168764))

(assert (=> d!1651871 m!6168580))

(assert (=> d!1651871 m!6168578))

(assert (=> b!5111256 m!6168594))

(assert (=> b!5111256 m!6168594))

(declare-fun m!6168766 () Bool)

(assert (=> b!5111256 m!6168766))

(assert (=> b!5111126 d!1651871))

(declare-fun b!5111260 () Bool)

(declare-fun e!3187852 () Bool)

(assert (=> b!5111260 (= e!3187852 (isPrefix!5552 (tail!10021 testedP!265) (tail!10021 knownP!20)))))

(declare-fun b!5111261 () Bool)

(declare-fun e!3187854 () Bool)

(assert (=> b!5111261 (= e!3187854 (>= (size!39453 knownP!20) (size!39453 testedP!265)))))

(declare-fun b!5111258 () Bool)

(declare-fun e!3187853 () Bool)

(assert (=> b!5111258 (= e!3187853 e!3187852)))

(declare-fun res!2175620 () Bool)

(assert (=> b!5111258 (=> (not res!2175620) (not e!3187852))))

(assert (=> b!5111258 (= res!2175620 (not ((_ is Nil!59052) knownP!20)))))

(declare-fun d!1651875 () Bool)

(assert (=> d!1651875 e!3187854))

(declare-fun res!2175619 () Bool)

(assert (=> d!1651875 (=> res!2175619 e!3187854)))

(declare-fun lt!2104975 () Bool)

(assert (=> d!1651875 (= res!2175619 (not lt!2104975))))

(assert (=> d!1651875 (= lt!2104975 e!3187853)))

(declare-fun res!2175618 () Bool)

(assert (=> d!1651875 (=> res!2175618 e!3187853)))

(assert (=> d!1651875 (= res!2175618 ((_ is Nil!59052) testedP!265))))

(assert (=> d!1651875 (= (isPrefix!5552 testedP!265 knownP!20) lt!2104975)))

(declare-fun b!5111259 () Bool)

(declare-fun res!2175617 () Bool)

(assert (=> b!5111259 (=> (not res!2175617) (not e!3187852))))

(assert (=> b!5111259 (= res!2175617 (= (head!10875 testedP!265) (head!10875 knownP!20)))))

(assert (= (and d!1651875 (not res!2175618)) b!5111258))

(assert (= (and b!5111258 res!2175620) b!5111259))

(assert (= (and b!5111259 res!2175617) b!5111260))

(assert (= (and d!1651875 (not res!2175619)) b!5111261))

(assert (=> b!5111260 m!6168650))

(assert (=> b!5111260 m!6168594))

(assert (=> b!5111260 m!6168650))

(assert (=> b!5111260 m!6168594))

(declare-fun m!6168768 () Bool)

(assert (=> b!5111260 m!6168768))

(assert (=> b!5111261 m!6168580))

(assert (=> b!5111261 m!6168578))

(assert (=> b!5111259 m!6168654))

(assert (=> b!5111259 m!6168600))

(assert (=> b!5111126 d!1651875))

(declare-fun d!1651877 () Bool)

(assert (=> d!1651877 (isPrefix!5552 testedP!265 knownP!20)))

(declare-fun lt!2104976 () Unit!150155)

(assert (=> d!1651877 (= lt!2104976 (choose!37470 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651877 (isPrefix!5552 knownP!20 input!5745)))

(assert (=> d!1651877 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!689 knownP!20 testedP!265 input!5745) lt!2104976)))

(declare-fun bs!1192061 () Bool)

(assert (= bs!1192061 d!1651877))

(assert (=> bs!1192061 m!6168590))

(declare-fun m!6168770 () Bool)

(assert (=> bs!1192061 m!6168770))

(assert (=> bs!1192061 m!6168548))

(assert (=> b!5111126 d!1651877))

(declare-fun d!1651879 () Bool)

(declare-fun c!878126 () Bool)

(assert (=> d!1651879 (= c!878126 ((_ is Cons!59052) testedP!265))))

(declare-fun e!3187855 () (InoxSet Context!7062))

(assert (=> d!1651879 (= (derivationZipper!46 baseZ!46 testedP!265) e!3187855)))

(declare-fun b!5111262 () Bool)

(assert (=> b!5111262 (= e!3187855 (derivationZipper!46 (derivationStepZipper!782 baseZ!46 (h!65500 testedP!265)) (t!372177 testedP!265)))))

(declare-fun b!5111263 () Bool)

(assert (=> b!5111263 (= e!3187855 baseZ!46)))

(assert (= (and d!1651879 c!878126) b!5111262))

(assert (= (and d!1651879 (not c!878126)) b!5111263))

(declare-fun m!6168772 () Bool)

(assert (=> b!5111262 m!6168772))

(assert (=> b!5111262 m!6168772))

(declare-fun m!6168774 () Bool)

(assert (=> b!5111262 m!6168774))

(assert (=> b!5111121 d!1651879))

(declare-fun b!5111268 () Bool)

(declare-fun e!3187858 () Bool)

(declare-fun tp!1426098 () Bool)

(assert (=> b!5111268 (= e!3187858 (and tp_is_empty!37567 tp!1426098))))

(assert (=> b!5111118 (= tp!1426090 e!3187858)))

(assert (= (and b!5111118 ((_ is Cons!59052) (t!372177 testedP!265))) b!5111268))

(declare-fun condSetEmpty!29769 () Bool)

(assert (=> setNonEmpty!29765 (= condSetEmpty!29769 (= setRest!29766 ((as const (Array Context!7062 Bool)) false)))))

(declare-fun setRes!29769 () Bool)

(assert (=> setNonEmpty!29765 (= tp!1426095 setRes!29769)))

(declare-fun setIsEmpty!29769 () Bool)

(assert (=> setIsEmpty!29769 setRes!29769))

(declare-fun e!3187862 () Bool)

(declare-fun setElem!29769 () Context!7062)

(declare-fun setNonEmpty!29769 () Bool)

(declare-fun tp!1426103 () Bool)

(assert (=> setNonEmpty!29769 (= setRes!29769 (and tp!1426103 (inv!78548 setElem!29769) e!3187862))))

(declare-fun setRest!29769 () (InoxSet Context!7062))

(assert (=> setNonEmpty!29769 (= setRest!29766 ((_ map or) (store ((as const (Array Context!7062 Bool)) false) setElem!29769 true) setRest!29769))))

(declare-fun b!5111277 () Bool)

(declare-fun tp!1426104 () Bool)

(assert (=> b!5111277 (= e!3187862 tp!1426104)))

(assert (= (and setNonEmpty!29765 condSetEmpty!29769) setIsEmpty!29769))

(assert (= (and setNonEmpty!29765 (not condSetEmpty!29769)) setNonEmpty!29769))

(assert (= setNonEmpty!29769 b!5111277))

(declare-fun m!6168782 () Bool)

(assert (=> setNonEmpty!29769 m!6168782))

(declare-fun b!5111282 () Bool)

(declare-fun e!3187865 () Bool)

(declare-fun tp!1426109 () Bool)

(declare-fun tp!1426110 () Bool)

(assert (=> b!5111282 (= e!3187865 (and tp!1426109 tp!1426110))))

(assert (=> b!5111114 (= tp!1426089 e!3187865)))

(assert (= (and b!5111114 ((_ is Cons!59053) (exprs!4031 setElem!29766))) b!5111282))

(declare-fun b!5111283 () Bool)

(declare-fun e!3187866 () Bool)

(declare-fun tp!1426111 () Bool)

(assert (=> b!5111283 (= e!3187866 (and tp_is_empty!37567 tp!1426111))))

(assert (=> b!5111120 (= tp!1426093 e!3187866)))

(assert (= (and b!5111120 ((_ is Cons!59052) (t!372177 input!5745))) b!5111283))

(declare-fun b!5111284 () Bool)

(declare-fun e!3187867 () Bool)

(declare-fun tp!1426112 () Bool)

(assert (=> b!5111284 (= e!3187867 (and tp_is_empty!37567 tp!1426112))))

(assert (=> b!5111116 (= tp!1426091 e!3187867)))

(assert (= (and b!5111116 ((_ is Cons!59052) (t!372177 knownP!20))) b!5111284))

(declare-fun b!5111285 () Bool)

(declare-fun e!3187868 () Bool)

(declare-fun tp!1426113 () Bool)

(declare-fun tp!1426114 () Bool)

(assert (=> b!5111285 (= e!3187868 (and tp!1426113 tp!1426114))))

(assert (=> b!5111125 (= tp!1426094 e!3187868)))

(assert (= (and b!5111125 ((_ is Cons!59053) (exprs!4031 setElem!29765))) b!5111285))

(declare-fun condSetEmpty!29770 () Bool)

(assert (=> setNonEmpty!29766 (= condSetEmpty!29770 (= setRest!29765 ((as const (Array Context!7062 Bool)) false)))))

(declare-fun setRes!29770 () Bool)

(assert (=> setNonEmpty!29766 (= tp!1426092 setRes!29770)))

(declare-fun setIsEmpty!29770 () Bool)

(assert (=> setIsEmpty!29770 setRes!29770))

(declare-fun e!3187869 () Bool)

(declare-fun setNonEmpty!29770 () Bool)

(declare-fun tp!1426115 () Bool)

(declare-fun setElem!29770 () Context!7062)

(assert (=> setNonEmpty!29770 (= setRes!29770 (and tp!1426115 (inv!78548 setElem!29770) e!3187869))))

(declare-fun setRest!29770 () (InoxSet Context!7062))

(assert (=> setNonEmpty!29770 (= setRest!29765 ((_ map or) (store ((as const (Array Context!7062 Bool)) false) setElem!29770 true) setRest!29770))))

(declare-fun b!5111286 () Bool)

(declare-fun tp!1426116 () Bool)

(assert (=> b!5111286 (= e!3187869 tp!1426116)))

(assert (= (and setNonEmpty!29766 condSetEmpty!29770) setIsEmpty!29770))

(assert (= (and setNonEmpty!29766 (not condSetEmpty!29770)) setNonEmpty!29770))

(assert (= setNonEmpty!29770 b!5111286))

(declare-fun m!6168784 () Bool)

(assert (=> setNonEmpty!29770 m!6168784))

(check-sat (not setNonEmpty!29770) (not b!5111211) (not b!5111233) (not bm!356383) (not b!5111255) (not setNonEmpty!29769) (not b!5111283) (not b!5111286) (not b!5111260) (not b!5111145) (not b!5111165) (not b!5111173) (not d!1651817) (not b!5111139) (not b!5111163) (not b!5111237) (not d!1651847) (not b!5111162) (not b!5111184) (not b!5111236) (not bm!356384) (not b!5111259) (not b!5111175) (not d!1651833) (not b!5111212) (not d!1651871) (not b!5111137) (not b!5111138) (not d!1651877) (not d!1651827) (not b!5111284) (not b!5111261) (not b!5111232) (not d!1651809) (not b!5111219) (not b!5111151) (not b!5111174) (not d!1651839) (not b!5111282) (not b!5111167) (not d!1651863) (not b!5111144) (not d!1651867) (not d!1651865) (not b!5111252) (not b!5111256) (not b!5111285) (not b!5111262) (not b!5111277) (not b!5111254) tp_is_empty!37567 (not b!5111268) (not d!1651811) (not b!5111231) (not b!5111235) (not d!1651857))
(check-sat)
