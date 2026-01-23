; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694480 () Bool)

(assert start!694480)

(declare-fun b!7128774 () Bool)

(declare-fun res!2908597 () Bool)

(declare-fun e!4283971 () Bool)

(assert (=> b!7128774 (=> (not res!2908597) (not e!4283971))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36344 0))(
  ( (C!36345 (val!28098 Int)) )
))
(declare-datatypes ((Regex!18037 0))(
  ( (ElementMatch!18037 (c!1329849 C!36344)) (Concat!26882 (regOne!36586 Regex!18037) (regTwo!36586 Regex!18037)) (EmptyExpr!18037) (Star!18037 (reg!18366 Regex!18037)) (EmptyLang!18037) (Union!18037 (regOne!36587 Regex!18037) (regTwo!36587 Regex!18037)) )
))
(declare-datatypes ((List!69128 0))(
  ( (Nil!69004) (Cons!69004 (h!75452 Regex!18037) (t!383105 List!69128)) )
))
(declare-datatypes ((Context!14062 0))(
  ( (Context!14063 (exprs!7531 List!69128)) )
))
(declare-fun z1!552 () (InoxSet Context!14062))

(declare-datatypes ((List!69129 0))(
  ( (Nil!69005) (Cons!69005 (h!75453 C!36344) (t!383106 List!69129)) )
))
(declare-fun s1Rec!140 () List!69129)

(declare-fun matchZipper!3293 ((InoxSet Context!14062) List!69129) Bool)

(assert (=> b!7128774 (= res!2908597 (matchZipper!3293 z1!552 s1Rec!140))))

(declare-fun b!7128775 () Bool)

(declare-fun res!2908598 () Bool)

(assert (=> b!7128775 (=> (not res!2908598) (not e!4283971))))

(declare-fun z2!471 () (InoxSet Context!14062))

(declare-fun s2Rec!140 () List!69129)

(assert (=> b!7128775 (= res!2908598 (matchZipper!3293 z2!471 s2Rec!140))))

(declare-fun b!7128776 () Bool)

(declare-fun e!4283968 () Bool)

(declare-fun tp_is_empty!45675 () Bool)

(declare-fun tp!1964246 () Bool)

(assert (=> b!7128776 (= e!4283968 (and tp_is_empty!45675 tp!1964246))))

(declare-fun b!7128777 () Bool)

(declare-fun e!4283967 () Bool)

(declare-fun tp!1964248 () Bool)

(assert (=> b!7128777 (= e!4283967 (and tp_is_empty!45675 tp!1964248))))

(declare-fun setIsEmpty!51846 () Bool)

(declare-fun setRes!51847 () Bool)

(assert (=> setIsEmpty!51846 setRes!51847))

(declare-fun b!7128778 () Bool)

(declare-fun e!4283972 () Bool)

(declare-fun tp!1964244 () Bool)

(assert (=> b!7128778 (= e!4283972 tp!1964244)))

(declare-fun setElem!51847 () Context!14062)

(declare-fun setNonEmpty!51846 () Bool)

(declare-fun tp!1964247 () Bool)

(declare-fun inv!88120 (Context!14062) Bool)

(assert (=> setNonEmpty!51846 (= setRes!51847 (and tp!1964247 (inv!88120 setElem!51847) e!4283972))))

(declare-fun setRest!51846 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51846 (= z1!552 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51847 true) setRest!51846))))

(declare-fun b!7128779 () Bool)

(declare-fun e!4283973 () Bool)

(declare-fun tp!1964241 () Bool)

(assert (=> b!7128779 (= e!4283973 tp!1964241)))

(declare-fun b!7128780 () Bool)

(declare-fun e!4283969 () Bool)

(declare-fun tp!1964249 () Bool)

(assert (=> b!7128780 (= e!4283969 (and tp_is_empty!45675 tp!1964249))))

(declare-fun b!7128781 () Bool)

(declare-fun res!2908601 () Bool)

(assert (=> b!7128781 (=> (not res!2908601) (not e!4283971))))

(declare-fun s2!1620 () List!69129)

(assert (=> b!7128781 (= res!2908601 (matchZipper!3293 z2!471 s2!1620))))

(declare-fun b!7128782 () Bool)

(declare-fun s!7390 () List!69129)

(declare-datatypes ((tuple2!68364 0))(
  ( (tuple2!68365 (_1!37485 List!69129) (_2!37485 List!69129)) )
))
(declare-datatypes ((Option!17014 0))(
  ( (None!17013) (Some!17013 (v!53507 tuple2!68364)) )
))
(declare-fun isDefined!13711 (Option!17014) Bool)

(declare-fun findConcatSeparationZippers!530 ((InoxSet Context!14062) (InoxSet Context!14062) List!69129 List!69129 List!69129) Option!17014)

(assert (=> b!7128782 (= e!4283971 (not (isDefined!13711 (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))))

(declare-fun b!7128783 () Bool)

(declare-fun res!2908599 () Bool)

(assert (=> b!7128783 (=> (not res!2908599) (not e!4283971))))

(declare-fun ++!16175 (List!69129 List!69129) List!69129)

(assert (=> b!7128783 (= res!2908599 (= (++!16175 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7128784 () Bool)

(declare-fun e!4283970 () Bool)

(declare-fun tp!1964245 () Bool)

(assert (=> b!7128784 (= e!4283970 (and tp_is_empty!45675 tp!1964245))))

(declare-fun res!2908602 () Bool)

(assert (=> start!694480 (=> (not res!2908602) (not e!4283971))))

(declare-fun s1!1688 () List!69129)

(assert (=> start!694480 (= res!2908602 (matchZipper!3293 z1!552 s1!1688))))

(assert (=> start!694480 e!4283971))

(declare-fun e!4283966 () Bool)

(assert (=> start!694480 e!4283966))

(declare-fun condSetEmpty!51846 () Bool)

(assert (=> start!694480 (= condSetEmpty!51846 (= z1!552 ((as const (Array Context!14062 Bool)) false)))))

(assert (=> start!694480 setRes!51847))

(assert (=> start!694480 e!4283969))

(declare-fun condSetEmpty!51847 () Bool)

(assert (=> start!694480 (= condSetEmpty!51847 (= z2!471 ((as const (Array Context!14062 Bool)) false)))))

(declare-fun setRes!51846 () Bool)

(assert (=> start!694480 setRes!51846))

(assert (=> start!694480 e!4283967))

(assert (=> start!694480 e!4283970))

(assert (=> start!694480 e!4283968))

(declare-fun setIsEmpty!51847 () Bool)

(assert (=> setIsEmpty!51847 setRes!51846))

(declare-fun b!7128785 () Bool)

(declare-fun res!2908600 () Bool)

(assert (=> b!7128785 (=> (not res!2908600) (not e!4283971))))

(assert (=> b!7128785 (= res!2908600 (= (++!16175 s1!1688 s2!1620) s!7390))))

(declare-fun tp!1964243 () Bool)

(declare-fun setNonEmpty!51847 () Bool)

(declare-fun setElem!51846 () Context!14062)

(assert (=> setNonEmpty!51847 (= setRes!51846 (and tp!1964243 (inv!88120 setElem!51846) e!4283973))))

(declare-fun setRest!51847 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51847 (= z2!471 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51846 true) setRest!51847))))

(declare-fun b!7128786 () Bool)

(declare-fun tp!1964242 () Bool)

(assert (=> b!7128786 (= e!4283966 (and tp_is_empty!45675 tp!1964242))))

(declare-fun b!7128787 () Bool)

(declare-fun res!2908603 () Bool)

(assert (=> b!7128787 (=> (not res!2908603) (not e!4283971))))

(declare-fun isPrefix!5906 (List!69129 List!69129) Bool)

(assert (=> b!7128787 (= res!2908603 (isPrefix!5906 s1Rec!140 s1!1688))))

(assert (= (and start!694480 res!2908602) b!7128781))

(assert (= (and b!7128781 res!2908601) b!7128785))

(assert (= (and b!7128785 res!2908600) b!7128787))

(assert (= (and b!7128787 res!2908603) b!7128783))

(assert (= (and b!7128783 res!2908599) b!7128774))

(assert (= (and b!7128774 res!2908597) b!7128775))

(assert (= (and b!7128775 res!2908598) b!7128782))

(get-info :version)

(assert (= (and start!694480 ((_ is Cons!69005) s1Rec!140)) b!7128786))

(assert (= (and start!694480 condSetEmpty!51846) setIsEmpty!51846))

(assert (= (and start!694480 (not condSetEmpty!51846)) setNonEmpty!51846))

(assert (= setNonEmpty!51846 b!7128778))

(assert (= (and start!694480 ((_ is Cons!69005) s2Rec!140)) b!7128780))

(assert (= (and start!694480 condSetEmpty!51847) setIsEmpty!51847))

(assert (= (and start!694480 (not condSetEmpty!51847)) setNonEmpty!51847))

(assert (= setNonEmpty!51847 b!7128779))

(assert (= (and start!694480 ((_ is Cons!69005) s2!1620)) b!7128777))

(assert (= (and start!694480 ((_ is Cons!69005) s1!1688)) b!7128784))

(assert (= (and start!694480 ((_ is Cons!69005) s!7390)) b!7128776))

(declare-fun m!7845842 () Bool)

(assert (=> b!7128785 m!7845842))

(declare-fun m!7845844 () Bool)

(assert (=> b!7128783 m!7845844))

(declare-fun m!7845846 () Bool)

(assert (=> b!7128775 m!7845846))

(declare-fun m!7845848 () Bool)

(assert (=> b!7128774 m!7845848))

(declare-fun m!7845850 () Bool)

(assert (=> start!694480 m!7845850))

(declare-fun m!7845852 () Bool)

(assert (=> b!7128782 m!7845852))

(assert (=> b!7128782 m!7845852))

(declare-fun m!7845854 () Bool)

(assert (=> b!7128782 m!7845854))

(declare-fun m!7845856 () Bool)

(assert (=> b!7128781 m!7845856))

(declare-fun m!7845858 () Bool)

(assert (=> b!7128787 m!7845858))

(declare-fun m!7845860 () Bool)

(assert (=> setNonEmpty!51847 m!7845860))

(declare-fun m!7845862 () Bool)

(assert (=> setNonEmpty!51846 m!7845862))

(check-sat (not b!7128774) (not b!7128778) (not b!7128783) (not b!7128777) tp_is_empty!45675 (not b!7128781) (not b!7128779) (not b!7128784) (not b!7128775) (not b!7128785) (not b!7128780) (not b!7128787) (not b!7128786) (not start!694480) (not b!7128782) (not setNonEmpty!51846) (not b!7128776) (not setNonEmpty!51847))
(check-sat)
(get-model)

(declare-fun b!7128817 () Bool)

(declare-fun e!4283988 () List!69129)

(assert (=> b!7128817 (= e!4283988 (Cons!69005 (h!75453 s1Rec!140) (++!16175 (t!383106 s1Rec!140) s2Rec!140)))))

(declare-fun d!2224831 () Bool)

(declare-fun e!4283989 () Bool)

(assert (=> d!2224831 e!4283989))

(declare-fun res!2908614 () Bool)

(assert (=> d!2224831 (=> (not res!2908614) (not e!4283989))))

(declare-fun lt!2563740 () List!69129)

(declare-fun content!14121 (List!69129) (InoxSet C!36344))

(assert (=> d!2224831 (= res!2908614 (= (content!14121 lt!2563740) ((_ map or) (content!14121 s1Rec!140) (content!14121 s2Rec!140))))))

(assert (=> d!2224831 (= lt!2563740 e!4283988)))

(declare-fun c!1329859 () Bool)

(assert (=> d!2224831 (= c!1329859 ((_ is Nil!69005) s1Rec!140))))

(assert (=> d!2224831 (= (++!16175 s1Rec!140 s2Rec!140) lt!2563740)))

(declare-fun b!7128819 () Bool)

(assert (=> b!7128819 (= e!4283989 (or (not (= s2Rec!140 Nil!69005)) (= lt!2563740 s1Rec!140)))))

(declare-fun b!7128818 () Bool)

(declare-fun res!2908615 () Bool)

(assert (=> b!7128818 (=> (not res!2908615) (not e!4283989))))

(declare-fun size!41472 (List!69129) Int)

(assert (=> b!7128818 (= res!2908615 (= (size!41472 lt!2563740) (+ (size!41472 s1Rec!140) (size!41472 s2Rec!140))))))

(declare-fun b!7128816 () Bool)

(assert (=> b!7128816 (= e!4283988 s2Rec!140)))

(assert (= (and d!2224831 c!1329859) b!7128816))

(assert (= (and d!2224831 (not c!1329859)) b!7128817))

(assert (= (and d!2224831 res!2908614) b!7128818))

(assert (= (and b!7128818 res!2908615) b!7128819))

(declare-fun m!7845904 () Bool)

(assert (=> b!7128817 m!7845904))

(declare-fun m!7845906 () Bool)

(assert (=> d!2224831 m!7845906))

(declare-fun m!7845908 () Bool)

(assert (=> d!2224831 m!7845908))

(declare-fun m!7845910 () Bool)

(assert (=> d!2224831 m!7845910))

(declare-fun m!7845912 () Bool)

(assert (=> b!7128818 m!7845912))

(declare-fun m!7845914 () Bool)

(assert (=> b!7128818 m!7845914))

(declare-fun m!7845916 () Bool)

(assert (=> b!7128818 m!7845916))

(assert (=> b!7128783 d!2224831))

(declare-fun d!2224837 () Bool)

(declare-fun lambda!433158 () Int)

(declare-fun forall!16921 (List!69128 Int) Bool)

(assert (=> d!2224837 (= (inv!88120 setElem!51847) (forall!16921 (exprs!7531 setElem!51847) lambda!433158))))

(declare-fun bs!1886782 () Bool)

(assert (= bs!1886782 d!2224837))

(declare-fun m!7845980 () Bool)

(assert (=> bs!1886782 m!7845980))

(assert (=> setNonEmpty!51846 d!2224837))

(declare-fun d!2224851 () Bool)

(declare-fun c!1329871 () Bool)

(declare-fun isEmpty!40026 (List!69129) Bool)

(assert (=> d!2224851 (= c!1329871 (isEmpty!40026 s1Rec!140))))

(declare-fun e!4284035 () Bool)

(assert (=> d!2224851 (= (matchZipper!3293 z1!552 s1Rec!140) e!4284035)))

(declare-fun b!7128892 () Bool)

(declare-fun nullableZipper!2761 ((InoxSet Context!14062)) Bool)

(assert (=> b!7128892 (= e!4284035 (nullableZipper!2761 z1!552))))

(declare-fun b!7128893 () Bool)

(declare-fun derivationStepZipper!3173 ((InoxSet Context!14062) C!36344) (InoxSet Context!14062))

(declare-fun head!14470 (List!69129) C!36344)

(declare-fun tail!13942 (List!69129) List!69129)

(assert (=> b!7128893 (= e!4284035 (matchZipper!3293 (derivationStepZipper!3173 z1!552 (head!14470 s1Rec!140)) (tail!13942 s1Rec!140)))))

(assert (= (and d!2224851 c!1329871) b!7128892))

(assert (= (and d!2224851 (not c!1329871)) b!7128893))

(declare-fun m!7845982 () Bool)

(assert (=> d!2224851 m!7845982))

(declare-fun m!7845984 () Bool)

(assert (=> b!7128892 m!7845984))

(declare-fun m!7845986 () Bool)

(assert (=> b!7128893 m!7845986))

(assert (=> b!7128893 m!7845986))

(declare-fun m!7845988 () Bool)

(assert (=> b!7128893 m!7845988))

(declare-fun m!7845990 () Bool)

(assert (=> b!7128893 m!7845990))

(assert (=> b!7128893 m!7845988))

(assert (=> b!7128893 m!7845990))

(declare-fun m!7845992 () Bool)

(assert (=> b!7128893 m!7845992))

(assert (=> b!7128774 d!2224851))

(declare-fun d!2224853 () Bool)

(declare-fun isEmpty!40027 (Option!17014) Bool)

(assert (=> d!2224853 (= (isDefined!13711 (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390)) (not (isEmpty!40027 (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))))

(declare-fun bs!1886783 () Bool)

(assert (= bs!1886783 d!2224853))

(assert (=> bs!1886783 m!7845852))

(declare-fun m!7845994 () Bool)

(assert (=> bs!1886783 m!7845994))

(assert (=> b!7128782 d!2224853))

(declare-fun b!7128912 () Bool)

(declare-fun e!4284046 () Bool)

(declare-fun lt!2563761 () Option!17014)

(assert (=> b!7128912 (= e!4284046 (not (isDefined!13711 lt!2563761)))))

(declare-fun b!7128913 () Bool)

(declare-fun e!4284047 () Option!17014)

(declare-fun e!4284050 () Option!17014)

(assert (=> b!7128913 (= e!4284047 e!4284050)))

(declare-fun c!1329876 () Bool)

(assert (=> b!7128913 (= c!1329876 ((_ is Nil!69005) s2Rec!140))))

(declare-fun b!7128914 () Bool)

(declare-datatypes ((Unit!162907 0))(
  ( (Unit!162908) )
))
(declare-fun lt!2563762 () Unit!162907)

(declare-fun lt!2563760 () Unit!162907)

(assert (=> b!7128914 (= lt!2563762 lt!2563760)))

(assert (=> b!7128914 (= (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140)) s!7390)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3009 (List!69129 C!36344 List!69129 List!69129) Unit!162907)

(assert (=> b!7128914 (= lt!2563760 (lemmaMoveElementToOtherListKeepsConcatEq!3009 s1Rec!140 (h!75453 s2Rec!140) (t!383106 s2Rec!140) s!7390))))

(assert (=> b!7128914 (= e!4284050 (findConcatSeparationZippers!530 z1!552 z2!471 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140) s!7390))))

(declare-fun b!7128915 () Bool)

(declare-fun res!2908656 () Bool)

(declare-fun e!4284049 () Bool)

(assert (=> b!7128915 (=> (not res!2908656) (not e!4284049))))

(declare-fun get!24230 (Option!17014) tuple2!68364)

(assert (=> b!7128915 (= res!2908656 (matchZipper!3293 z1!552 (_1!37485 (get!24230 lt!2563761))))))

(declare-fun b!7128916 () Bool)

(assert (=> b!7128916 (= e!4284047 (Some!17013 (tuple2!68365 s1Rec!140 s2Rec!140)))))

(declare-fun b!7128917 () Bool)

(declare-fun e!4284048 () Bool)

(assert (=> b!7128917 (= e!4284048 (matchZipper!3293 z2!471 s2Rec!140))))

(declare-fun b!7128918 () Bool)

(declare-fun res!2908657 () Bool)

(assert (=> b!7128918 (=> (not res!2908657) (not e!4284049))))

(assert (=> b!7128918 (= res!2908657 (matchZipper!3293 z2!471 (_2!37485 (get!24230 lt!2563761))))))

(declare-fun d!2224855 () Bool)

(assert (=> d!2224855 e!4284046))

(declare-fun res!2908659 () Bool)

(assert (=> d!2224855 (=> res!2908659 e!4284046)))

(assert (=> d!2224855 (= res!2908659 e!4284049)))

(declare-fun res!2908658 () Bool)

(assert (=> d!2224855 (=> (not res!2908658) (not e!4284049))))

(assert (=> d!2224855 (= res!2908658 (isDefined!13711 lt!2563761))))

(assert (=> d!2224855 (= lt!2563761 e!4284047)))

(declare-fun c!1329877 () Bool)

(assert (=> d!2224855 (= c!1329877 e!4284048)))

(declare-fun res!2908655 () Bool)

(assert (=> d!2224855 (=> (not res!2908655) (not e!4284048))))

(assert (=> d!2224855 (= res!2908655 (matchZipper!3293 z1!552 s1Rec!140))))

(assert (=> d!2224855 (= (++!16175 s1Rec!140 s2Rec!140) s!7390)))

(assert (=> d!2224855 (= (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390) lt!2563761)))

(declare-fun b!7128919 () Bool)

(assert (=> b!7128919 (= e!4284049 (= (++!16175 (_1!37485 (get!24230 lt!2563761)) (_2!37485 (get!24230 lt!2563761))) s!7390))))

(declare-fun b!7128920 () Bool)

(assert (=> b!7128920 (= e!4284050 None!17013)))

(assert (= (and d!2224855 res!2908655) b!7128917))

(assert (= (and d!2224855 c!1329877) b!7128916))

(assert (= (and d!2224855 (not c!1329877)) b!7128913))

(assert (= (and b!7128913 c!1329876) b!7128920))

(assert (= (and b!7128913 (not c!1329876)) b!7128914))

(assert (= (and d!2224855 res!2908658) b!7128915))

(assert (= (and b!7128915 res!2908656) b!7128918))

(assert (= (and b!7128918 res!2908657) b!7128919))

(assert (= (and d!2224855 (not res!2908659)) b!7128912))

(assert (=> b!7128917 m!7845846))

(declare-fun m!7845996 () Bool)

(assert (=> b!7128914 m!7845996))

(assert (=> b!7128914 m!7845996))

(declare-fun m!7845998 () Bool)

(assert (=> b!7128914 m!7845998))

(declare-fun m!7846000 () Bool)

(assert (=> b!7128914 m!7846000))

(assert (=> b!7128914 m!7845996))

(declare-fun m!7846002 () Bool)

(assert (=> b!7128914 m!7846002))

(declare-fun m!7846004 () Bool)

(assert (=> b!7128919 m!7846004))

(declare-fun m!7846006 () Bool)

(assert (=> b!7128919 m!7846006))

(declare-fun m!7846008 () Bool)

(assert (=> d!2224855 m!7846008))

(assert (=> d!2224855 m!7845848))

(assert (=> d!2224855 m!7845844))

(assert (=> b!7128918 m!7846004))

(declare-fun m!7846010 () Bool)

(assert (=> b!7128918 m!7846010))

(assert (=> b!7128912 m!7846008))

(assert (=> b!7128915 m!7846004))

(declare-fun m!7846012 () Bool)

(assert (=> b!7128915 m!7846012))

(assert (=> b!7128782 d!2224855))

(declare-fun d!2224857 () Bool)

(declare-fun c!1329878 () Bool)

(assert (=> d!2224857 (= c!1329878 (isEmpty!40026 s2Rec!140))))

(declare-fun e!4284051 () Bool)

(assert (=> d!2224857 (= (matchZipper!3293 z2!471 s2Rec!140) e!4284051)))

(declare-fun b!7128921 () Bool)

(assert (=> b!7128921 (= e!4284051 (nullableZipper!2761 z2!471))))

(declare-fun b!7128922 () Bool)

(assert (=> b!7128922 (= e!4284051 (matchZipper!3293 (derivationStepZipper!3173 z2!471 (head!14470 s2Rec!140)) (tail!13942 s2Rec!140)))))

(assert (= (and d!2224857 c!1329878) b!7128921))

(assert (= (and d!2224857 (not c!1329878)) b!7128922))

(declare-fun m!7846014 () Bool)

(assert (=> d!2224857 m!7846014))

(declare-fun m!7846016 () Bool)

(assert (=> b!7128921 m!7846016))

(declare-fun m!7846018 () Bool)

(assert (=> b!7128922 m!7846018))

(assert (=> b!7128922 m!7846018))

(declare-fun m!7846020 () Bool)

(assert (=> b!7128922 m!7846020))

(declare-fun m!7846022 () Bool)

(assert (=> b!7128922 m!7846022))

(assert (=> b!7128922 m!7846020))

(assert (=> b!7128922 m!7846022))

(declare-fun m!7846024 () Bool)

(assert (=> b!7128922 m!7846024))

(assert (=> b!7128775 d!2224857))

(declare-fun b!7128932 () Bool)

(declare-fun res!2908668 () Bool)

(declare-fun e!4284059 () Bool)

(assert (=> b!7128932 (=> (not res!2908668) (not e!4284059))))

(assert (=> b!7128932 (= res!2908668 (= (head!14470 s1Rec!140) (head!14470 s1!1688)))))

(declare-fun b!7128931 () Bool)

(declare-fun e!4284058 () Bool)

(assert (=> b!7128931 (= e!4284058 e!4284059)))

(declare-fun res!2908669 () Bool)

(assert (=> b!7128931 (=> (not res!2908669) (not e!4284059))))

(assert (=> b!7128931 (= res!2908669 (not ((_ is Nil!69005) s1!1688)))))

(declare-fun d!2224859 () Bool)

(declare-fun e!4284060 () Bool)

(assert (=> d!2224859 e!4284060))

(declare-fun res!2908671 () Bool)

(assert (=> d!2224859 (=> res!2908671 e!4284060)))

(declare-fun lt!2563765 () Bool)

(assert (=> d!2224859 (= res!2908671 (not lt!2563765))))

(assert (=> d!2224859 (= lt!2563765 e!4284058)))

(declare-fun res!2908670 () Bool)

(assert (=> d!2224859 (=> res!2908670 e!4284058)))

(assert (=> d!2224859 (= res!2908670 ((_ is Nil!69005) s1Rec!140))))

(assert (=> d!2224859 (= (isPrefix!5906 s1Rec!140 s1!1688) lt!2563765)))

(declare-fun b!7128934 () Bool)

(assert (=> b!7128934 (= e!4284060 (>= (size!41472 s1!1688) (size!41472 s1Rec!140)))))

(declare-fun b!7128933 () Bool)

(assert (=> b!7128933 (= e!4284059 (isPrefix!5906 (tail!13942 s1Rec!140) (tail!13942 s1!1688)))))

(assert (= (and d!2224859 (not res!2908670)) b!7128931))

(assert (= (and b!7128931 res!2908669) b!7128932))

(assert (= (and b!7128932 res!2908668) b!7128933))

(assert (= (and d!2224859 (not res!2908671)) b!7128934))

(assert (=> b!7128932 m!7845986))

(declare-fun m!7846026 () Bool)

(assert (=> b!7128932 m!7846026))

(declare-fun m!7846028 () Bool)

(assert (=> b!7128934 m!7846028))

(assert (=> b!7128934 m!7845914))

(assert (=> b!7128933 m!7845990))

(declare-fun m!7846030 () Bool)

(assert (=> b!7128933 m!7846030))

(assert (=> b!7128933 m!7845990))

(assert (=> b!7128933 m!7846030))

(declare-fun m!7846032 () Bool)

(assert (=> b!7128933 m!7846032))

(assert (=> b!7128787 d!2224859))

(declare-fun bs!1886784 () Bool)

(declare-fun d!2224861 () Bool)

(assert (= bs!1886784 (and d!2224861 d!2224837)))

(declare-fun lambda!433159 () Int)

(assert (=> bs!1886784 (= lambda!433159 lambda!433158)))

(assert (=> d!2224861 (= (inv!88120 setElem!51846) (forall!16921 (exprs!7531 setElem!51846) lambda!433159))))

(declare-fun bs!1886785 () Bool)

(assert (= bs!1886785 d!2224861))

(declare-fun m!7846034 () Bool)

(assert (=> bs!1886785 m!7846034))

(assert (=> setNonEmpty!51847 d!2224861))

(declare-fun d!2224863 () Bool)

(declare-fun c!1329879 () Bool)

(assert (=> d!2224863 (= c!1329879 (isEmpty!40026 s2!1620))))

(declare-fun e!4284061 () Bool)

(assert (=> d!2224863 (= (matchZipper!3293 z2!471 s2!1620) e!4284061)))

(declare-fun b!7128935 () Bool)

(assert (=> b!7128935 (= e!4284061 (nullableZipper!2761 z2!471))))

(declare-fun b!7128936 () Bool)

(assert (=> b!7128936 (= e!4284061 (matchZipper!3293 (derivationStepZipper!3173 z2!471 (head!14470 s2!1620)) (tail!13942 s2!1620)))))

(assert (= (and d!2224863 c!1329879) b!7128935))

(assert (= (and d!2224863 (not c!1329879)) b!7128936))

(declare-fun m!7846036 () Bool)

(assert (=> d!2224863 m!7846036))

(assert (=> b!7128935 m!7846016))

(declare-fun m!7846038 () Bool)

(assert (=> b!7128936 m!7846038))

(assert (=> b!7128936 m!7846038))

(declare-fun m!7846040 () Bool)

(assert (=> b!7128936 m!7846040))

(declare-fun m!7846042 () Bool)

(assert (=> b!7128936 m!7846042))

(assert (=> b!7128936 m!7846040))

(assert (=> b!7128936 m!7846042))

(declare-fun m!7846044 () Bool)

(assert (=> b!7128936 m!7846044))

(assert (=> b!7128781 d!2224863))

(declare-fun b!7128938 () Bool)

(declare-fun e!4284062 () List!69129)

(assert (=> b!7128938 (= e!4284062 (Cons!69005 (h!75453 s1!1688) (++!16175 (t!383106 s1!1688) s2!1620)))))

(declare-fun d!2224865 () Bool)

(declare-fun e!4284063 () Bool)

(assert (=> d!2224865 e!4284063))

(declare-fun res!2908672 () Bool)

(assert (=> d!2224865 (=> (not res!2908672) (not e!4284063))))

(declare-fun lt!2563766 () List!69129)

(assert (=> d!2224865 (= res!2908672 (= (content!14121 lt!2563766) ((_ map or) (content!14121 s1!1688) (content!14121 s2!1620))))))

(assert (=> d!2224865 (= lt!2563766 e!4284062)))

(declare-fun c!1329880 () Bool)

(assert (=> d!2224865 (= c!1329880 ((_ is Nil!69005) s1!1688))))

(assert (=> d!2224865 (= (++!16175 s1!1688 s2!1620) lt!2563766)))

(declare-fun b!7128940 () Bool)

(assert (=> b!7128940 (= e!4284063 (or (not (= s2!1620 Nil!69005)) (= lt!2563766 s1!1688)))))

(declare-fun b!7128939 () Bool)

(declare-fun res!2908673 () Bool)

(assert (=> b!7128939 (=> (not res!2908673) (not e!4284063))))

(assert (=> b!7128939 (= res!2908673 (= (size!41472 lt!2563766) (+ (size!41472 s1!1688) (size!41472 s2!1620))))))

(declare-fun b!7128937 () Bool)

(assert (=> b!7128937 (= e!4284062 s2!1620)))

(assert (= (and d!2224865 c!1329880) b!7128937))

(assert (= (and d!2224865 (not c!1329880)) b!7128938))

(assert (= (and d!2224865 res!2908672) b!7128939))

(assert (= (and b!7128939 res!2908673) b!7128940))

(declare-fun m!7846046 () Bool)

(assert (=> b!7128938 m!7846046))

(declare-fun m!7846048 () Bool)

(assert (=> d!2224865 m!7846048))

(declare-fun m!7846050 () Bool)

(assert (=> d!2224865 m!7846050))

(declare-fun m!7846052 () Bool)

(assert (=> d!2224865 m!7846052))

(declare-fun m!7846054 () Bool)

(assert (=> b!7128939 m!7846054))

(assert (=> b!7128939 m!7846028))

(declare-fun m!7846056 () Bool)

(assert (=> b!7128939 m!7846056))

(assert (=> b!7128785 d!2224865))

(declare-fun d!2224867 () Bool)

(declare-fun c!1329881 () Bool)

(assert (=> d!2224867 (= c!1329881 (isEmpty!40026 s1!1688))))

(declare-fun e!4284064 () Bool)

(assert (=> d!2224867 (= (matchZipper!3293 z1!552 s1!1688) e!4284064)))

(declare-fun b!7128941 () Bool)

(assert (=> b!7128941 (= e!4284064 (nullableZipper!2761 z1!552))))

(declare-fun b!7128942 () Bool)

(assert (=> b!7128942 (= e!4284064 (matchZipper!3293 (derivationStepZipper!3173 z1!552 (head!14470 s1!1688)) (tail!13942 s1!1688)))))

(assert (= (and d!2224867 c!1329881) b!7128941))

(assert (= (and d!2224867 (not c!1329881)) b!7128942))

(declare-fun m!7846058 () Bool)

(assert (=> d!2224867 m!7846058))

(assert (=> b!7128941 m!7845984))

(assert (=> b!7128942 m!7846026))

(assert (=> b!7128942 m!7846026))

(declare-fun m!7846060 () Bool)

(assert (=> b!7128942 m!7846060))

(assert (=> b!7128942 m!7846030))

(assert (=> b!7128942 m!7846060))

(assert (=> b!7128942 m!7846030))

(declare-fun m!7846062 () Bool)

(assert (=> b!7128942 m!7846062))

(assert (=> start!694480 d!2224867))

(declare-fun condSetEmpty!51854 () Bool)

(assert (=> setNonEmpty!51846 (= condSetEmpty!51854 (= setRest!51846 ((as const (Array Context!14062 Bool)) false)))))

(declare-fun setRes!51854 () Bool)

(assert (=> setNonEmpty!51846 (= tp!1964247 setRes!51854)))

(declare-fun setIsEmpty!51854 () Bool)

(assert (=> setIsEmpty!51854 setRes!51854))

(declare-fun setElem!51854 () Context!14062)

(declare-fun e!4284067 () Bool)

(declare-fun tp!1964278 () Bool)

(declare-fun setNonEmpty!51854 () Bool)

(assert (=> setNonEmpty!51854 (= setRes!51854 (and tp!1964278 (inv!88120 setElem!51854) e!4284067))))

(declare-fun setRest!51854 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51854 (= setRest!51846 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51854 true) setRest!51854))))

(declare-fun b!7128947 () Bool)

(declare-fun tp!1964277 () Bool)

(assert (=> b!7128947 (= e!4284067 tp!1964277)))

(assert (= (and setNonEmpty!51846 condSetEmpty!51854) setIsEmpty!51854))

(assert (= (and setNonEmpty!51846 (not condSetEmpty!51854)) setNonEmpty!51854))

(assert (= setNonEmpty!51854 b!7128947))

(declare-fun m!7846064 () Bool)

(assert (=> setNonEmpty!51854 m!7846064))

(declare-fun b!7128952 () Bool)

(declare-fun e!4284070 () Bool)

(declare-fun tp!1964281 () Bool)

(assert (=> b!7128952 (= e!4284070 (and tp_is_empty!45675 tp!1964281))))

(assert (=> b!7128776 (= tp!1964246 e!4284070)))

(assert (= (and b!7128776 ((_ is Cons!69005) (t!383106 s!7390))) b!7128952))

(declare-fun b!7128953 () Bool)

(declare-fun e!4284071 () Bool)

(declare-fun tp!1964282 () Bool)

(assert (=> b!7128953 (= e!4284071 (and tp_is_empty!45675 tp!1964282))))

(assert (=> b!7128784 (= tp!1964245 e!4284071)))

(assert (= (and b!7128784 ((_ is Cons!69005) (t!383106 s1!1688))) b!7128953))

(declare-fun b!7128954 () Bool)

(declare-fun e!4284072 () Bool)

(declare-fun tp!1964283 () Bool)

(assert (=> b!7128954 (= e!4284072 (and tp_is_empty!45675 tp!1964283))))

(assert (=> b!7128786 (= tp!1964242 e!4284072)))

(assert (= (and b!7128786 ((_ is Cons!69005) (t!383106 s1Rec!140))) b!7128954))

(declare-fun b!7128959 () Bool)

(declare-fun e!4284075 () Bool)

(declare-fun tp!1964288 () Bool)

(declare-fun tp!1964289 () Bool)

(assert (=> b!7128959 (= e!4284075 (and tp!1964288 tp!1964289))))

(assert (=> b!7128778 (= tp!1964244 e!4284075)))

(assert (= (and b!7128778 ((_ is Cons!69004) (exprs!7531 setElem!51847))) b!7128959))

(declare-fun condSetEmpty!51855 () Bool)

(assert (=> setNonEmpty!51847 (= condSetEmpty!51855 (= setRest!51847 ((as const (Array Context!14062 Bool)) false)))))

(declare-fun setRes!51855 () Bool)

(assert (=> setNonEmpty!51847 (= tp!1964243 setRes!51855)))

(declare-fun setIsEmpty!51855 () Bool)

(assert (=> setIsEmpty!51855 setRes!51855))

(declare-fun e!4284076 () Bool)

(declare-fun tp!1964291 () Bool)

(declare-fun setNonEmpty!51855 () Bool)

(declare-fun setElem!51855 () Context!14062)

(assert (=> setNonEmpty!51855 (= setRes!51855 (and tp!1964291 (inv!88120 setElem!51855) e!4284076))))

(declare-fun setRest!51855 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51855 (= setRest!51847 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51855 true) setRest!51855))))

(declare-fun b!7128960 () Bool)

(declare-fun tp!1964290 () Bool)

(assert (=> b!7128960 (= e!4284076 tp!1964290)))

(assert (= (and setNonEmpty!51847 condSetEmpty!51855) setIsEmpty!51855))

(assert (= (and setNonEmpty!51847 (not condSetEmpty!51855)) setNonEmpty!51855))

(assert (= setNonEmpty!51855 b!7128960))

(declare-fun m!7846066 () Bool)

(assert (=> setNonEmpty!51855 m!7846066))

(declare-fun b!7128961 () Bool)

(declare-fun e!4284077 () Bool)

(declare-fun tp!1964292 () Bool)

(declare-fun tp!1964293 () Bool)

(assert (=> b!7128961 (= e!4284077 (and tp!1964292 tp!1964293))))

(assert (=> b!7128779 (= tp!1964241 e!4284077)))

(assert (= (and b!7128779 ((_ is Cons!69004) (exprs!7531 setElem!51846))) b!7128961))

(declare-fun b!7128962 () Bool)

(declare-fun e!4284078 () Bool)

(declare-fun tp!1964294 () Bool)

(assert (=> b!7128962 (= e!4284078 (and tp_is_empty!45675 tp!1964294))))

(assert (=> b!7128777 (= tp!1964248 e!4284078)))

(assert (= (and b!7128777 ((_ is Cons!69005) (t!383106 s2!1620))) b!7128962))

(declare-fun b!7128963 () Bool)

(declare-fun e!4284079 () Bool)

(declare-fun tp!1964295 () Bool)

(assert (=> b!7128963 (= e!4284079 (and tp_is_empty!45675 tp!1964295))))

(assert (=> b!7128780 (= tp!1964249 e!4284079)))

(assert (= (and b!7128780 ((_ is Cons!69005) (t!383106 s2Rec!140))) b!7128963))

(check-sat (not b!7128953) (not b!7128921) (not b!7128912) (not d!2224867) (not b!7128914) (not b!7128939) (not b!7128935) (not d!2224861) (not b!7128961) (not d!2224851) (not b!7128919) (not d!2224853) (not b!7128941) (not b!7128934) (not b!7128936) (not d!2224831) (not b!7128922) (not b!7128942) (not b!7128952) (not b!7128954) (not b!7128818) (not b!7128938) (not d!2224865) (not b!7128963) (not b!7128959) (not d!2224857) (not b!7128962) (not b!7128893) (not setNonEmpty!51854) (not d!2224837) tp_is_empty!45675 (not b!7128932) (not b!7128917) (not d!2224863) (not d!2224855) (not b!7128892) (not b!7128947) (not b!7128960) (not b!7128933) (not b!7128918) (not setNonEmpty!51855) (not b!7128915) (not b!7128817))
(check-sat)
(get-model)

(declare-fun d!2224929 () Bool)

(declare-fun c!1329911 () Bool)

(assert (=> d!2224929 (= c!1329911 ((_ is Nil!69005) lt!2563766))))

(declare-fun e!4284121 () (InoxSet C!36344))

(assert (=> d!2224929 (= (content!14121 lt!2563766) e!4284121)))

(declare-fun b!7129038 () Bool)

(assert (=> b!7129038 (= e!4284121 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129040 () Bool)

(assert (=> b!7129040 (= e!4284121 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 lt!2563766) true) (content!14121 (t!383106 lt!2563766))))))

(assert (= (and d!2224929 c!1329911) b!7129038))

(assert (= (and d!2224929 (not c!1329911)) b!7129040))

(declare-fun m!7846226 () Bool)

(assert (=> b!7129040 m!7846226))

(declare-fun m!7846228 () Bool)

(assert (=> b!7129040 m!7846228))

(assert (=> d!2224865 d!2224929))

(declare-fun d!2224947 () Bool)

(declare-fun c!1329912 () Bool)

(assert (=> d!2224947 (= c!1329912 ((_ is Nil!69005) s1!1688))))

(declare-fun e!4284123 () (InoxSet C!36344))

(assert (=> d!2224947 (= (content!14121 s1!1688) e!4284123)))

(declare-fun b!7129041 () Bool)

(assert (=> b!7129041 (= e!4284123 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129042 () Bool)

(assert (=> b!7129042 (= e!4284123 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 s1!1688) true) (content!14121 (t!383106 s1!1688))))))

(assert (= (and d!2224947 c!1329912) b!7129041))

(assert (= (and d!2224947 (not c!1329912)) b!7129042))

(declare-fun m!7846232 () Bool)

(assert (=> b!7129042 m!7846232))

(declare-fun m!7846234 () Bool)

(assert (=> b!7129042 m!7846234))

(assert (=> d!2224865 d!2224947))

(declare-fun d!2224951 () Bool)

(declare-fun c!1329913 () Bool)

(assert (=> d!2224951 (= c!1329913 ((_ is Nil!69005) s2!1620))))

(declare-fun e!4284124 () (InoxSet C!36344))

(assert (=> d!2224951 (= (content!14121 s2!1620) e!4284124)))

(declare-fun b!7129043 () Bool)

(assert (=> b!7129043 (= e!4284124 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129044 () Bool)

(assert (=> b!7129044 (= e!4284124 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 s2!1620) true) (content!14121 (t!383106 s2!1620))))))

(assert (= (and d!2224951 c!1329913) b!7129043))

(assert (= (and d!2224951 (not c!1329913)) b!7129044))

(declare-fun m!7846236 () Bool)

(assert (=> b!7129044 m!7846236))

(declare-fun m!7846238 () Bool)

(assert (=> b!7129044 m!7846238))

(assert (=> d!2224865 d!2224951))

(declare-fun b!7129046 () Bool)

(declare-fun e!4284125 () List!69129)

(assert (=> b!7129046 (= e!4284125 (Cons!69005 (h!75453 (t!383106 s1Rec!140)) (++!16175 (t!383106 (t!383106 s1Rec!140)) s2Rec!140)))))

(declare-fun d!2224953 () Bool)

(declare-fun e!4284126 () Bool)

(assert (=> d!2224953 e!4284126))

(declare-fun res!2908697 () Bool)

(assert (=> d!2224953 (=> (not res!2908697) (not e!4284126))))

(declare-fun lt!2563783 () List!69129)

(assert (=> d!2224953 (= res!2908697 (= (content!14121 lt!2563783) ((_ map or) (content!14121 (t!383106 s1Rec!140)) (content!14121 s2Rec!140))))))

(assert (=> d!2224953 (= lt!2563783 e!4284125)))

(declare-fun c!1329914 () Bool)

(assert (=> d!2224953 (= c!1329914 ((_ is Nil!69005) (t!383106 s1Rec!140)))))

(assert (=> d!2224953 (= (++!16175 (t!383106 s1Rec!140) s2Rec!140) lt!2563783)))

(declare-fun b!7129048 () Bool)

(assert (=> b!7129048 (= e!4284126 (or (not (= s2Rec!140 Nil!69005)) (= lt!2563783 (t!383106 s1Rec!140))))))

(declare-fun b!7129047 () Bool)

(declare-fun res!2908698 () Bool)

(assert (=> b!7129047 (=> (not res!2908698) (not e!4284126))))

(assert (=> b!7129047 (= res!2908698 (= (size!41472 lt!2563783) (+ (size!41472 (t!383106 s1Rec!140)) (size!41472 s2Rec!140))))))

(declare-fun b!7129045 () Bool)

(assert (=> b!7129045 (= e!4284125 s2Rec!140)))

(assert (= (and d!2224953 c!1329914) b!7129045))

(assert (= (and d!2224953 (not c!1329914)) b!7129046))

(assert (= (and d!2224953 res!2908697) b!7129047))

(assert (= (and b!7129047 res!2908698) b!7129048))

(declare-fun m!7846244 () Bool)

(assert (=> b!7129046 m!7846244))

(declare-fun m!7846248 () Bool)

(assert (=> d!2224953 m!7846248))

(declare-fun m!7846252 () Bool)

(assert (=> d!2224953 m!7846252))

(assert (=> d!2224953 m!7845910))

(declare-fun m!7846254 () Bool)

(assert (=> b!7129047 m!7846254))

(declare-fun m!7846256 () Bool)

(assert (=> b!7129047 m!7846256))

(assert (=> b!7129047 m!7845916))

(assert (=> b!7128817 d!2224953))

(declare-fun d!2224957 () Bool)

(declare-fun lt!2563789 () Int)

(assert (=> d!2224957 (>= lt!2563789 0)))

(declare-fun e!4284134 () Int)

(assert (=> d!2224957 (= lt!2563789 e!4284134)))

(declare-fun c!1329921 () Bool)

(assert (=> d!2224957 (= c!1329921 ((_ is Nil!69005) lt!2563740))))

(assert (=> d!2224957 (= (size!41472 lt!2563740) lt!2563789)))

(declare-fun b!7129063 () Bool)

(assert (=> b!7129063 (= e!4284134 0)))

(declare-fun b!7129064 () Bool)

(assert (=> b!7129064 (= e!4284134 (+ 1 (size!41472 (t!383106 lt!2563740))))))

(assert (= (and d!2224957 c!1329921) b!7129063))

(assert (= (and d!2224957 (not c!1329921)) b!7129064))

(declare-fun m!7846270 () Bool)

(assert (=> b!7129064 m!7846270))

(assert (=> b!7128818 d!2224957))

(declare-fun d!2224971 () Bool)

(declare-fun lt!2563790 () Int)

(assert (=> d!2224971 (>= lt!2563790 0)))

(declare-fun e!4284136 () Int)

(assert (=> d!2224971 (= lt!2563790 e!4284136)))

(declare-fun c!1329923 () Bool)

(assert (=> d!2224971 (= c!1329923 ((_ is Nil!69005) s1Rec!140))))

(assert (=> d!2224971 (= (size!41472 s1Rec!140) lt!2563790)))

(declare-fun b!7129067 () Bool)

(assert (=> b!7129067 (= e!4284136 0)))

(declare-fun b!7129068 () Bool)

(assert (=> b!7129068 (= e!4284136 (+ 1 (size!41472 (t!383106 s1Rec!140))))))

(assert (= (and d!2224971 c!1329923) b!7129067))

(assert (= (and d!2224971 (not c!1329923)) b!7129068))

(assert (=> b!7129068 m!7846256))

(assert (=> b!7128818 d!2224971))

(declare-fun d!2224973 () Bool)

(declare-fun lt!2563791 () Int)

(assert (=> d!2224973 (>= lt!2563791 0)))

(declare-fun e!4284137 () Int)

(assert (=> d!2224973 (= lt!2563791 e!4284137)))

(declare-fun c!1329924 () Bool)

(assert (=> d!2224973 (= c!1329924 ((_ is Nil!69005) s2Rec!140))))

(assert (=> d!2224973 (= (size!41472 s2Rec!140) lt!2563791)))

(declare-fun b!7129069 () Bool)

(assert (=> b!7129069 (= e!4284137 0)))

(declare-fun b!7129070 () Bool)

(assert (=> b!7129070 (= e!4284137 (+ 1 (size!41472 (t!383106 s2Rec!140))))))

(assert (= (and d!2224973 c!1329924) b!7129069))

(assert (= (and d!2224973 (not c!1329924)) b!7129070))

(declare-fun m!7846280 () Bool)

(assert (=> b!7129070 m!7846280))

(assert (=> b!7128818 d!2224973))

(declare-fun d!2224975 () Bool)

(assert (=> d!2224975 (= (isEmpty!40026 s1Rec!140) ((_ is Nil!69005) s1Rec!140))))

(assert (=> d!2224851 d!2224975))

(declare-fun d!2224979 () Bool)

(assert (=> d!2224979 (= (isEmpty!40026 s1!1688) ((_ is Nil!69005) s1!1688))))

(assert (=> d!2224867 d!2224979))

(declare-fun d!2224981 () Bool)

(declare-fun res!2908707 () Bool)

(declare-fun e!4284150 () Bool)

(assert (=> d!2224981 (=> res!2908707 e!4284150)))

(assert (=> d!2224981 (= res!2908707 ((_ is Nil!69004) (exprs!7531 setElem!51847)))))

(assert (=> d!2224981 (= (forall!16921 (exprs!7531 setElem!51847) lambda!433158) e!4284150)))

(declare-fun b!7129089 () Bool)

(declare-fun e!4284151 () Bool)

(assert (=> b!7129089 (= e!4284150 e!4284151)))

(declare-fun res!2908708 () Bool)

(assert (=> b!7129089 (=> (not res!2908708) (not e!4284151))))

(declare-fun dynLambda!28114 (Int Regex!18037) Bool)

(assert (=> b!7129089 (= res!2908708 (dynLambda!28114 lambda!433158 (h!75452 (exprs!7531 setElem!51847))))))

(declare-fun b!7129090 () Bool)

(assert (=> b!7129090 (= e!4284151 (forall!16921 (t!383105 (exprs!7531 setElem!51847)) lambda!433158))))

(assert (= (and d!2224981 (not res!2908707)) b!7129089))

(assert (= (and b!7129089 res!2908708) b!7129090))

(declare-fun b_lambda!272065 () Bool)

(assert (=> (not b_lambda!272065) (not b!7129089)))

(declare-fun m!7846306 () Bool)

(assert (=> b!7129089 m!7846306))

(declare-fun m!7846308 () Bool)

(assert (=> b!7129090 m!7846308))

(assert (=> d!2224837 d!2224981))

(declare-fun d!2224991 () Bool)

(assert (=> d!2224991 (= (isEmpty!40026 s2Rec!140) ((_ is Nil!69005) s2Rec!140))))

(assert (=> d!2224857 d!2224991))

(declare-fun d!2224993 () Bool)

(declare-fun lambda!433174 () Int)

(declare-fun exists!3832 ((InoxSet Context!14062) Int) Bool)

(assert (=> d!2224993 (= (nullableZipper!2761 z1!552) (exists!3832 z1!552 lambda!433174))))

(declare-fun bs!1886810 () Bool)

(assert (= bs!1886810 d!2224993))

(declare-fun m!7846314 () Bool)

(assert (=> bs!1886810 m!7846314))

(assert (=> b!7128892 d!2224993))

(declare-fun d!2224999 () Bool)

(declare-fun c!1329928 () Bool)

(assert (=> d!2224999 (= c!1329928 ((_ is Nil!69005) lt!2563740))))

(declare-fun e!4284161 () (InoxSet C!36344))

(assert (=> d!2224999 (= (content!14121 lt!2563740) e!4284161)))

(declare-fun b!7129110 () Bool)

(assert (=> b!7129110 (= e!4284161 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129111 () Bool)

(assert (=> b!7129111 (= e!4284161 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 lt!2563740) true) (content!14121 (t!383106 lt!2563740))))))

(assert (= (and d!2224999 c!1329928) b!7129110))

(assert (= (and d!2224999 (not c!1329928)) b!7129111))

(declare-fun m!7846316 () Bool)

(assert (=> b!7129111 m!7846316))

(declare-fun m!7846318 () Bool)

(assert (=> b!7129111 m!7846318))

(assert (=> d!2224831 d!2224999))

(declare-fun d!2225001 () Bool)

(declare-fun c!1329929 () Bool)

(assert (=> d!2225001 (= c!1329929 ((_ is Nil!69005) s1Rec!140))))

(declare-fun e!4284162 () (InoxSet C!36344))

(assert (=> d!2225001 (= (content!14121 s1Rec!140) e!4284162)))

(declare-fun b!7129112 () Bool)

(assert (=> b!7129112 (= e!4284162 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129113 () Bool)

(assert (=> b!7129113 (= e!4284162 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 s1Rec!140) true) (content!14121 (t!383106 s1Rec!140))))))

(assert (= (and d!2225001 c!1329929) b!7129112))

(assert (= (and d!2225001 (not c!1329929)) b!7129113))

(declare-fun m!7846320 () Bool)

(assert (=> b!7129113 m!7846320))

(assert (=> b!7129113 m!7846252))

(assert (=> d!2224831 d!2225001))

(declare-fun d!2225003 () Bool)

(declare-fun c!1329930 () Bool)

(assert (=> d!2225003 (= c!1329930 ((_ is Nil!69005) s2Rec!140))))

(declare-fun e!4284163 () (InoxSet C!36344))

(assert (=> d!2225003 (= (content!14121 s2Rec!140) e!4284163)))

(declare-fun b!7129114 () Bool)

(assert (=> b!7129114 (= e!4284163 ((as const (Array C!36344 Bool)) false))))

(declare-fun b!7129115 () Bool)

(assert (=> b!7129115 (= e!4284163 ((_ map or) (store ((as const (Array C!36344 Bool)) false) (h!75453 s2Rec!140) true) (content!14121 (t!383106 s2Rec!140))))))

(assert (= (and d!2225003 c!1329930) b!7129114))

(assert (= (and d!2225003 (not c!1329930)) b!7129115))

(declare-fun m!7846322 () Bool)

(assert (=> b!7129115 m!7846322))

(declare-fun m!7846324 () Bool)

(assert (=> b!7129115 m!7846324))

(assert (=> d!2224831 d!2225003))

(declare-fun d!2225005 () Bool)

(declare-fun c!1329931 () Bool)

(assert (=> d!2225005 (= c!1329931 (isEmpty!40026 (tail!13942 s1Rec!140)))))

(declare-fun e!4284164 () Bool)

(assert (=> d!2225005 (= (matchZipper!3293 (derivationStepZipper!3173 z1!552 (head!14470 s1Rec!140)) (tail!13942 s1Rec!140)) e!4284164)))

(declare-fun b!7129116 () Bool)

(assert (=> b!7129116 (= e!4284164 (nullableZipper!2761 (derivationStepZipper!3173 z1!552 (head!14470 s1Rec!140))))))

(declare-fun b!7129117 () Bool)

(assert (=> b!7129117 (= e!4284164 (matchZipper!3293 (derivationStepZipper!3173 (derivationStepZipper!3173 z1!552 (head!14470 s1Rec!140)) (head!14470 (tail!13942 s1Rec!140))) (tail!13942 (tail!13942 s1Rec!140))))))

(assert (= (and d!2225005 c!1329931) b!7129116))

(assert (= (and d!2225005 (not c!1329931)) b!7129117))

(assert (=> d!2225005 m!7845990))

(declare-fun m!7846326 () Bool)

(assert (=> d!2225005 m!7846326))

(assert (=> b!7129116 m!7845988))

(declare-fun m!7846328 () Bool)

(assert (=> b!7129116 m!7846328))

(assert (=> b!7129117 m!7845990))

(declare-fun m!7846330 () Bool)

(assert (=> b!7129117 m!7846330))

(assert (=> b!7129117 m!7845988))

(assert (=> b!7129117 m!7846330))

(declare-fun m!7846332 () Bool)

(assert (=> b!7129117 m!7846332))

(assert (=> b!7129117 m!7845990))

(declare-fun m!7846334 () Bool)

(assert (=> b!7129117 m!7846334))

(assert (=> b!7129117 m!7846332))

(assert (=> b!7129117 m!7846334))

(declare-fun m!7846336 () Bool)

(assert (=> b!7129117 m!7846336))

(assert (=> b!7128893 d!2225005))

(declare-fun d!2225007 () Bool)

(assert (=> d!2225007 true))

(declare-fun lambda!433177 () Int)

(declare-fun flatMap!2637 ((InoxSet Context!14062) Int) (InoxSet Context!14062))

(assert (=> d!2225007 (= (derivationStepZipper!3173 z1!552 (head!14470 s1Rec!140)) (flatMap!2637 z1!552 lambda!433177))))

(declare-fun bs!1886811 () Bool)

(assert (= bs!1886811 d!2225007))

(declare-fun m!7846338 () Bool)

(assert (=> bs!1886811 m!7846338))

(assert (=> b!7128893 d!2225007))

(declare-fun d!2225009 () Bool)

(assert (=> d!2225009 (= (head!14470 s1Rec!140) (h!75453 s1Rec!140))))

(assert (=> b!7128893 d!2225009))

(declare-fun d!2225011 () Bool)

(assert (=> d!2225011 (= (tail!13942 s1Rec!140) (t!383106 s1Rec!140))))

(assert (=> b!7128893 d!2225011))

(declare-fun bs!1886812 () Bool)

(declare-fun d!2225013 () Bool)

(assert (= bs!1886812 (and d!2225013 d!2224993)))

(declare-fun lambda!433178 () Int)

(assert (=> bs!1886812 (= lambda!433178 lambda!433174)))

(assert (=> d!2225013 (= (nullableZipper!2761 z2!471) (exists!3832 z2!471 lambda!433178))))

(declare-fun bs!1886813 () Bool)

(assert (= bs!1886813 d!2225013))

(declare-fun m!7846340 () Bool)

(assert (=> bs!1886813 m!7846340))

(assert (=> b!7128921 d!2225013))

(declare-fun d!2225015 () Bool)

(declare-fun c!1329934 () Bool)

(assert (=> d!2225015 (= c!1329934 (isEmpty!40026 (tail!13942 s2Rec!140)))))

(declare-fun e!4284165 () Bool)

(assert (=> d!2225015 (= (matchZipper!3293 (derivationStepZipper!3173 z2!471 (head!14470 s2Rec!140)) (tail!13942 s2Rec!140)) e!4284165)))

(declare-fun b!7129120 () Bool)

(assert (=> b!7129120 (= e!4284165 (nullableZipper!2761 (derivationStepZipper!3173 z2!471 (head!14470 s2Rec!140))))))

(declare-fun b!7129121 () Bool)

(assert (=> b!7129121 (= e!4284165 (matchZipper!3293 (derivationStepZipper!3173 (derivationStepZipper!3173 z2!471 (head!14470 s2Rec!140)) (head!14470 (tail!13942 s2Rec!140))) (tail!13942 (tail!13942 s2Rec!140))))))

(assert (= (and d!2225015 c!1329934) b!7129120))

(assert (= (and d!2225015 (not c!1329934)) b!7129121))

(assert (=> d!2225015 m!7846022))

(declare-fun m!7846342 () Bool)

(assert (=> d!2225015 m!7846342))

(assert (=> b!7129120 m!7846020))

(declare-fun m!7846344 () Bool)

(assert (=> b!7129120 m!7846344))

(assert (=> b!7129121 m!7846022))

(declare-fun m!7846346 () Bool)

(assert (=> b!7129121 m!7846346))

(assert (=> b!7129121 m!7846020))

(assert (=> b!7129121 m!7846346))

(declare-fun m!7846348 () Bool)

(assert (=> b!7129121 m!7846348))

(assert (=> b!7129121 m!7846022))

(declare-fun m!7846350 () Bool)

(assert (=> b!7129121 m!7846350))

(assert (=> b!7129121 m!7846348))

(assert (=> b!7129121 m!7846350))

(declare-fun m!7846352 () Bool)

(assert (=> b!7129121 m!7846352))

(assert (=> b!7128922 d!2225015))

(declare-fun bs!1886814 () Bool)

(declare-fun d!2225017 () Bool)

(assert (= bs!1886814 (and d!2225017 d!2225007)))

(declare-fun lambda!433179 () Int)

(assert (=> bs!1886814 (= (= (head!14470 s2Rec!140) (head!14470 s1Rec!140)) (= lambda!433179 lambda!433177))))

(assert (=> d!2225017 true))

(assert (=> d!2225017 (= (derivationStepZipper!3173 z2!471 (head!14470 s2Rec!140)) (flatMap!2637 z2!471 lambda!433179))))

(declare-fun bs!1886815 () Bool)

(assert (= bs!1886815 d!2225017))

(declare-fun m!7846354 () Bool)

(assert (=> bs!1886815 m!7846354))

(assert (=> b!7128922 d!2225017))

(declare-fun d!2225019 () Bool)

(assert (=> d!2225019 (= (head!14470 s2Rec!140) (h!75453 s2Rec!140))))

(assert (=> b!7128922 d!2225019))

(declare-fun d!2225021 () Bool)

(assert (=> d!2225021 (= (tail!13942 s2Rec!140) (t!383106 s2Rec!140))))

(assert (=> b!7128922 d!2225021))

(declare-fun d!2225023 () Bool)

(declare-fun res!2908709 () Bool)

(declare-fun e!4284166 () Bool)

(assert (=> d!2225023 (=> res!2908709 e!4284166)))

(assert (=> d!2225023 (= res!2908709 ((_ is Nil!69004) (exprs!7531 setElem!51846)))))

(assert (=> d!2225023 (= (forall!16921 (exprs!7531 setElem!51846) lambda!433159) e!4284166)))

(declare-fun b!7129122 () Bool)

(declare-fun e!4284167 () Bool)

(assert (=> b!7129122 (= e!4284166 e!4284167)))

(declare-fun res!2908710 () Bool)

(assert (=> b!7129122 (=> (not res!2908710) (not e!4284167))))

(assert (=> b!7129122 (= res!2908710 (dynLambda!28114 lambda!433159 (h!75452 (exprs!7531 setElem!51846))))))

(declare-fun b!7129123 () Bool)

(assert (=> b!7129123 (= e!4284167 (forall!16921 (t!383105 (exprs!7531 setElem!51846)) lambda!433159))))

(assert (= (and d!2225023 (not res!2908709)) b!7129122))

(assert (= (and b!7129122 res!2908710) b!7129123))

(declare-fun b_lambda!272071 () Bool)

(assert (=> (not b_lambda!272071) (not b!7129122)))

(declare-fun m!7846356 () Bool)

(assert (=> b!7129122 m!7846356))

(declare-fun m!7846358 () Bool)

(assert (=> b!7129123 m!7846358))

(assert (=> d!2224861 d!2225023))

(declare-fun d!2225025 () Bool)

(assert (=> d!2225025 (= (isDefined!13711 lt!2563761) (not (isEmpty!40027 lt!2563761)))))

(declare-fun bs!1886816 () Bool)

(assert (= bs!1886816 d!2225025))

(declare-fun m!7846360 () Bool)

(assert (=> bs!1886816 m!7846360))

(assert (=> d!2224855 d!2225025))

(assert (=> d!2224855 d!2224851))

(assert (=> d!2224855 d!2224831))

(declare-fun d!2225027 () Bool)

(declare-fun c!1329935 () Bool)

(assert (=> d!2225027 (= c!1329935 (isEmpty!40026 (_1!37485 (get!24230 lt!2563761))))))

(declare-fun e!4284168 () Bool)

(assert (=> d!2225027 (= (matchZipper!3293 z1!552 (_1!37485 (get!24230 lt!2563761))) e!4284168)))

(declare-fun b!7129124 () Bool)

(assert (=> b!7129124 (= e!4284168 (nullableZipper!2761 z1!552))))

(declare-fun b!7129125 () Bool)

(assert (=> b!7129125 (= e!4284168 (matchZipper!3293 (derivationStepZipper!3173 z1!552 (head!14470 (_1!37485 (get!24230 lt!2563761)))) (tail!13942 (_1!37485 (get!24230 lt!2563761)))))))

(assert (= (and d!2225027 c!1329935) b!7129124))

(assert (= (and d!2225027 (not c!1329935)) b!7129125))

(declare-fun m!7846362 () Bool)

(assert (=> d!2225027 m!7846362))

(assert (=> b!7129124 m!7845984))

(declare-fun m!7846364 () Bool)

(assert (=> b!7129125 m!7846364))

(assert (=> b!7129125 m!7846364))

(declare-fun m!7846366 () Bool)

(assert (=> b!7129125 m!7846366))

(declare-fun m!7846368 () Bool)

(assert (=> b!7129125 m!7846368))

(assert (=> b!7129125 m!7846366))

(assert (=> b!7129125 m!7846368))

(declare-fun m!7846370 () Bool)

(assert (=> b!7129125 m!7846370))

(assert (=> b!7128915 d!2225027))

(declare-fun d!2225029 () Bool)

(assert (=> d!2225029 (= (get!24230 lt!2563761) (v!53507 lt!2563761))))

(assert (=> b!7128915 d!2225029))

(declare-fun b!7129127 () Bool)

(declare-fun e!4284169 () List!69129)

(assert (=> b!7129127 (= e!4284169 (Cons!69005 (h!75453 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))) (++!16175 (t!383106 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))) (t!383106 s2Rec!140))))))

(declare-fun d!2225031 () Bool)

(declare-fun e!4284170 () Bool)

(assert (=> d!2225031 e!4284170))

(declare-fun res!2908711 () Bool)

(assert (=> d!2225031 (=> (not res!2908711) (not e!4284170))))

(declare-fun lt!2563793 () List!69129)

(assert (=> d!2225031 (= res!2908711 (= (content!14121 lt!2563793) ((_ map or) (content!14121 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))) (content!14121 (t!383106 s2Rec!140)))))))

(assert (=> d!2225031 (= lt!2563793 e!4284169)))

(declare-fun c!1329936 () Bool)

(assert (=> d!2225031 (= c!1329936 ((_ is Nil!69005) (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))))))

(assert (=> d!2225031 (= (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140)) lt!2563793)))

(declare-fun b!7129129 () Bool)

(assert (=> b!7129129 (= e!4284170 (or (not (= (t!383106 s2Rec!140) Nil!69005)) (= lt!2563793 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)))))))

(declare-fun b!7129128 () Bool)

(declare-fun res!2908712 () Bool)

(assert (=> b!7129128 (=> (not res!2908712) (not e!4284170))))

(assert (=> b!7129128 (= res!2908712 (= (size!41472 lt!2563793) (+ (size!41472 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))) (size!41472 (t!383106 s2Rec!140)))))))

(declare-fun b!7129126 () Bool)

(assert (=> b!7129126 (= e!4284169 (t!383106 s2Rec!140))))

(assert (= (and d!2225031 c!1329936) b!7129126))

(assert (= (and d!2225031 (not c!1329936)) b!7129127))

(assert (= (and d!2225031 res!2908711) b!7129128))

(assert (= (and b!7129128 res!2908712) b!7129129))

(declare-fun m!7846372 () Bool)

(assert (=> b!7129127 m!7846372))

(declare-fun m!7846374 () Bool)

(assert (=> d!2225031 m!7846374))

(assert (=> d!2225031 m!7845996))

(declare-fun m!7846376 () Bool)

(assert (=> d!2225031 m!7846376))

(assert (=> d!2225031 m!7846324))

(declare-fun m!7846378 () Bool)

(assert (=> b!7129128 m!7846378))

(assert (=> b!7129128 m!7845996))

(declare-fun m!7846380 () Bool)

(assert (=> b!7129128 m!7846380))

(assert (=> b!7129128 m!7846280))

(assert (=> b!7128914 d!2225031))

(declare-fun b!7129131 () Bool)

(declare-fun e!4284171 () List!69129)

(assert (=> b!7129131 (= e!4284171 (Cons!69005 (h!75453 s1Rec!140) (++!16175 (t!383106 s1Rec!140) (Cons!69005 (h!75453 s2Rec!140) Nil!69005))))))

(declare-fun d!2225033 () Bool)

(declare-fun e!4284172 () Bool)

(assert (=> d!2225033 e!4284172))

(declare-fun res!2908713 () Bool)

(assert (=> d!2225033 (=> (not res!2908713) (not e!4284172))))

(declare-fun lt!2563794 () List!69129)

(assert (=> d!2225033 (= res!2908713 (= (content!14121 lt!2563794) ((_ map or) (content!14121 s1Rec!140) (content!14121 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)))))))

(assert (=> d!2225033 (= lt!2563794 e!4284171)))

(declare-fun c!1329937 () Bool)

(assert (=> d!2225033 (= c!1329937 ((_ is Nil!69005) s1Rec!140))))

(assert (=> d!2225033 (= (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) lt!2563794)))

(declare-fun b!7129133 () Bool)

(assert (=> b!7129133 (= e!4284172 (or (not (= (Cons!69005 (h!75453 s2Rec!140) Nil!69005) Nil!69005)) (= lt!2563794 s1Rec!140)))))

(declare-fun b!7129132 () Bool)

(declare-fun res!2908714 () Bool)

(assert (=> b!7129132 (=> (not res!2908714) (not e!4284172))))

(assert (=> b!7129132 (= res!2908714 (= (size!41472 lt!2563794) (+ (size!41472 s1Rec!140) (size!41472 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)))))))

(declare-fun b!7129130 () Bool)

(assert (=> b!7129130 (= e!4284171 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))))

(assert (= (and d!2225033 c!1329937) b!7129130))

(assert (= (and d!2225033 (not c!1329937)) b!7129131))

(assert (= (and d!2225033 res!2908713) b!7129132))

(assert (= (and b!7129132 res!2908714) b!7129133))

(declare-fun m!7846382 () Bool)

(assert (=> b!7129131 m!7846382))

(declare-fun m!7846384 () Bool)

(assert (=> d!2225033 m!7846384))

(assert (=> d!2225033 m!7845908))

(declare-fun m!7846386 () Bool)

(assert (=> d!2225033 m!7846386))

(declare-fun m!7846388 () Bool)

(assert (=> b!7129132 m!7846388))

(assert (=> b!7129132 m!7845914))

(declare-fun m!7846390 () Bool)

(assert (=> b!7129132 m!7846390))

(assert (=> b!7128914 d!2225033))

(declare-fun d!2225035 () Bool)

(assert (=> d!2225035 (= (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140)) s!7390)))

(declare-fun lt!2563797 () Unit!162907)

(declare-fun choose!55097 (List!69129 C!36344 List!69129 List!69129) Unit!162907)

(assert (=> d!2225035 (= lt!2563797 (choose!55097 s1Rec!140 (h!75453 s2Rec!140) (t!383106 s2Rec!140) s!7390))))

(assert (=> d!2225035 (= (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) (t!383106 s2Rec!140))) s!7390)))

(assert (=> d!2225035 (= (lemmaMoveElementToOtherListKeepsConcatEq!3009 s1Rec!140 (h!75453 s2Rec!140) (t!383106 s2Rec!140) s!7390) lt!2563797)))

(declare-fun bs!1886817 () Bool)

(assert (= bs!1886817 d!2225035))

(assert (=> bs!1886817 m!7845996))

(assert (=> bs!1886817 m!7845996))

(assert (=> bs!1886817 m!7845998))

(declare-fun m!7846392 () Bool)

(assert (=> bs!1886817 m!7846392))

(declare-fun m!7846394 () Bool)

(assert (=> bs!1886817 m!7846394))

(assert (=> b!7128914 d!2225035))

(declare-fun b!7129134 () Bool)

(declare-fun e!4284173 () Bool)

(declare-fun lt!2563799 () Option!17014)

(assert (=> b!7129134 (= e!4284173 (not (isDefined!13711 lt!2563799)))))

(declare-fun b!7129135 () Bool)

(declare-fun e!4284174 () Option!17014)

(declare-fun e!4284177 () Option!17014)

(assert (=> b!7129135 (= e!4284174 e!4284177)))

(declare-fun c!1329938 () Bool)

(assert (=> b!7129135 (= c!1329938 ((_ is Nil!69005) (t!383106 s2Rec!140)))))

(declare-fun b!7129136 () Bool)

(declare-fun lt!2563800 () Unit!162907)

(declare-fun lt!2563798 () Unit!162907)

(assert (=> b!7129136 (= lt!2563800 lt!2563798)))

(assert (=> b!7129136 (= (++!16175 (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (Cons!69005 (h!75453 (t!383106 s2Rec!140)) Nil!69005)) (t!383106 (t!383106 s2Rec!140))) s!7390)))

(assert (=> b!7129136 (= lt!2563798 (lemmaMoveElementToOtherListKeepsConcatEq!3009 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (h!75453 (t!383106 s2Rec!140)) (t!383106 (t!383106 s2Rec!140)) s!7390))))

(assert (=> b!7129136 (= e!4284177 (findConcatSeparationZippers!530 z1!552 z2!471 (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (Cons!69005 (h!75453 (t!383106 s2Rec!140)) Nil!69005)) (t!383106 (t!383106 s2Rec!140)) s!7390))))

(declare-fun b!7129137 () Bool)

(declare-fun res!2908716 () Bool)

(declare-fun e!4284176 () Bool)

(assert (=> b!7129137 (=> (not res!2908716) (not e!4284176))))

(assert (=> b!7129137 (= res!2908716 (matchZipper!3293 z1!552 (_1!37485 (get!24230 lt!2563799))))))

(declare-fun b!7129138 () Bool)

(assert (=> b!7129138 (= e!4284174 (Some!17013 (tuple2!68365 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140))))))

(declare-fun b!7129139 () Bool)

(declare-fun e!4284175 () Bool)

(assert (=> b!7129139 (= e!4284175 (matchZipper!3293 z2!471 (t!383106 s2Rec!140)))))

(declare-fun b!7129140 () Bool)

(declare-fun res!2908717 () Bool)

(assert (=> b!7129140 (=> (not res!2908717) (not e!4284176))))

(assert (=> b!7129140 (= res!2908717 (matchZipper!3293 z2!471 (_2!37485 (get!24230 lt!2563799))))))

(declare-fun d!2225037 () Bool)

(assert (=> d!2225037 e!4284173))

(declare-fun res!2908719 () Bool)

(assert (=> d!2225037 (=> res!2908719 e!4284173)))

(assert (=> d!2225037 (= res!2908719 e!4284176)))

(declare-fun res!2908718 () Bool)

(assert (=> d!2225037 (=> (not res!2908718) (not e!4284176))))

(assert (=> d!2225037 (= res!2908718 (isDefined!13711 lt!2563799))))

(assert (=> d!2225037 (= lt!2563799 e!4284174)))

(declare-fun c!1329939 () Bool)

(assert (=> d!2225037 (= c!1329939 e!4284175)))

(declare-fun res!2908715 () Bool)

(assert (=> d!2225037 (=> (not res!2908715) (not e!4284175))))

(assert (=> d!2225037 (= res!2908715 (matchZipper!3293 z1!552 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005))))))

(assert (=> d!2225037 (= (++!16175 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140)) s!7390)))

(assert (=> d!2225037 (= (findConcatSeparationZippers!530 z1!552 z2!471 (++!16175 s1Rec!140 (Cons!69005 (h!75453 s2Rec!140) Nil!69005)) (t!383106 s2Rec!140) s!7390) lt!2563799)))

(declare-fun b!7129141 () Bool)

(assert (=> b!7129141 (= e!4284176 (= (++!16175 (_1!37485 (get!24230 lt!2563799)) (_2!37485 (get!24230 lt!2563799))) s!7390))))

(declare-fun b!7129142 () Bool)

(assert (=> b!7129142 (= e!4284177 None!17013)))

(assert (= (and d!2225037 res!2908715) b!7129139))

(assert (= (and d!2225037 c!1329939) b!7129138))

(assert (= (and d!2225037 (not c!1329939)) b!7129135))

(assert (= (and b!7129135 c!1329938) b!7129142))

(assert (= (and b!7129135 (not c!1329938)) b!7129136))

(assert (= (and d!2225037 res!2908718) b!7129137))

(assert (= (and b!7129137 res!2908716) b!7129140))

(assert (= (and b!7129140 res!2908717) b!7129141))

(assert (= (and d!2225037 (not res!2908719)) b!7129134))

(declare-fun m!7846396 () Bool)

(assert (=> b!7129139 m!7846396))

(assert (=> b!7129136 m!7845996))

(declare-fun m!7846398 () Bool)

(assert (=> b!7129136 m!7846398))

(assert (=> b!7129136 m!7846398))

(declare-fun m!7846400 () Bool)

(assert (=> b!7129136 m!7846400))

(assert (=> b!7129136 m!7845996))

(declare-fun m!7846402 () Bool)

(assert (=> b!7129136 m!7846402))

(assert (=> b!7129136 m!7846398))

(declare-fun m!7846404 () Bool)

(assert (=> b!7129136 m!7846404))

(declare-fun m!7846406 () Bool)

(assert (=> b!7129141 m!7846406))

(declare-fun m!7846408 () Bool)

(assert (=> b!7129141 m!7846408))

(declare-fun m!7846410 () Bool)

(assert (=> d!2225037 m!7846410))

(assert (=> d!2225037 m!7845996))

(declare-fun m!7846412 () Bool)

(assert (=> d!2225037 m!7846412))

(assert (=> d!2225037 m!7845996))

(assert (=> d!2225037 m!7845998))

(assert (=> b!7129140 m!7846406))

(declare-fun m!7846414 () Bool)

(assert (=> b!7129140 m!7846414))

(assert (=> b!7129134 m!7846410))

(assert (=> b!7129137 m!7846406))

(declare-fun m!7846416 () Bool)

(assert (=> b!7129137 m!7846416))

(assert (=> b!7128914 d!2225037))

(declare-fun d!2225039 () Bool)

(assert (=> d!2225039 (= (isEmpty!40027 (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390)) (not ((_ is Some!17013) (findConcatSeparationZippers!530 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390))))))

(assert (=> d!2224853 d!2225039))

(declare-fun bs!1886818 () Bool)

(declare-fun d!2225041 () Bool)

(assert (= bs!1886818 (and d!2225041 d!2224837)))

(declare-fun lambda!433180 () Int)

(assert (=> bs!1886818 (= lambda!433180 lambda!433158)))

(declare-fun bs!1886819 () Bool)

(assert (= bs!1886819 (and d!2225041 d!2224861)))

(assert (=> bs!1886819 (= lambda!433180 lambda!433159)))

(assert (=> d!2225041 (= (inv!88120 setElem!51855) (forall!16921 (exprs!7531 setElem!51855) lambda!433180))))

(declare-fun bs!1886820 () Bool)

(assert (= bs!1886820 d!2225041))

(declare-fun m!7846418 () Bool)

(assert (=> bs!1886820 m!7846418))

(assert (=> setNonEmpty!51855 d!2225041))

(assert (=> b!7128917 d!2224857))

(declare-fun b!7129144 () Bool)

(declare-fun e!4284178 () List!69129)

(assert (=> b!7129144 (= e!4284178 (Cons!69005 (h!75453 (_1!37485 (get!24230 lt!2563761))) (++!16175 (t!383106 (_1!37485 (get!24230 lt!2563761))) (_2!37485 (get!24230 lt!2563761)))))))

(declare-fun d!2225043 () Bool)

(declare-fun e!4284179 () Bool)

(assert (=> d!2225043 e!4284179))

(declare-fun res!2908720 () Bool)

(assert (=> d!2225043 (=> (not res!2908720) (not e!4284179))))

(declare-fun lt!2563801 () List!69129)

(assert (=> d!2225043 (= res!2908720 (= (content!14121 lt!2563801) ((_ map or) (content!14121 (_1!37485 (get!24230 lt!2563761))) (content!14121 (_2!37485 (get!24230 lt!2563761))))))))

(assert (=> d!2225043 (= lt!2563801 e!4284178)))

(declare-fun c!1329940 () Bool)

(assert (=> d!2225043 (= c!1329940 ((_ is Nil!69005) (_1!37485 (get!24230 lt!2563761))))))

(assert (=> d!2225043 (= (++!16175 (_1!37485 (get!24230 lt!2563761)) (_2!37485 (get!24230 lt!2563761))) lt!2563801)))

(declare-fun b!7129146 () Bool)

(assert (=> b!7129146 (= e!4284179 (or (not (= (_2!37485 (get!24230 lt!2563761)) Nil!69005)) (= lt!2563801 (_1!37485 (get!24230 lt!2563761)))))))

(declare-fun b!7129145 () Bool)

(declare-fun res!2908721 () Bool)

(assert (=> b!7129145 (=> (not res!2908721) (not e!4284179))))

(assert (=> b!7129145 (= res!2908721 (= (size!41472 lt!2563801) (+ (size!41472 (_1!37485 (get!24230 lt!2563761))) (size!41472 (_2!37485 (get!24230 lt!2563761))))))))

(declare-fun b!7129143 () Bool)

(assert (=> b!7129143 (= e!4284178 (_2!37485 (get!24230 lt!2563761)))))

(assert (= (and d!2225043 c!1329940) b!7129143))

(assert (= (and d!2225043 (not c!1329940)) b!7129144))

(assert (= (and d!2225043 res!2908720) b!7129145))

(assert (= (and b!7129145 res!2908721) b!7129146))

(declare-fun m!7846420 () Bool)

(assert (=> b!7129144 m!7846420))

(declare-fun m!7846422 () Bool)

(assert (=> d!2225043 m!7846422))

(declare-fun m!7846424 () Bool)

(assert (=> d!2225043 m!7846424))

(declare-fun m!7846426 () Bool)

(assert (=> d!2225043 m!7846426))

(declare-fun m!7846428 () Bool)

(assert (=> b!7129145 m!7846428))

(declare-fun m!7846430 () Bool)

(assert (=> b!7129145 m!7846430))

(declare-fun m!7846432 () Bool)

(assert (=> b!7129145 m!7846432))

(assert (=> b!7128919 d!2225043))

(assert (=> b!7128919 d!2225029))

(declare-fun d!2225045 () Bool)

(declare-fun c!1329941 () Bool)

(assert (=> d!2225045 (= c!1329941 (isEmpty!40026 (_2!37485 (get!24230 lt!2563761))))))

(declare-fun e!4284180 () Bool)

(assert (=> d!2225045 (= (matchZipper!3293 z2!471 (_2!37485 (get!24230 lt!2563761))) e!4284180)))

(declare-fun b!7129147 () Bool)

(assert (=> b!7129147 (= e!4284180 (nullableZipper!2761 z2!471))))

(declare-fun b!7129148 () Bool)

(assert (=> b!7129148 (= e!4284180 (matchZipper!3293 (derivationStepZipper!3173 z2!471 (head!14470 (_2!37485 (get!24230 lt!2563761)))) (tail!13942 (_2!37485 (get!24230 lt!2563761)))))))

(assert (= (and d!2225045 c!1329941) b!7129147))

(assert (= (and d!2225045 (not c!1329941)) b!7129148))

(declare-fun m!7846434 () Bool)

(assert (=> d!2225045 m!7846434))

(assert (=> b!7129147 m!7846016))

(declare-fun m!7846436 () Bool)

(assert (=> b!7129148 m!7846436))

(assert (=> b!7129148 m!7846436))

(declare-fun m!7846438 () Bool)

(assert (=> b!7129148 m!7846438))

(declare-fun m!7846440 () Bool)

(assert (=> b!7129148 m!7846440))

(assert (=> b!7129148 m!7846438))

(assert (=> b!7129148 m!7846440))

(declare-fun m!7846442 () Bool)

(assert (=> b!7129148 m!7846442))

(assert (=> b!7128918 d!2225045))

(assert (=> b!7128918 d!2225029))

(assert (=> b!7128941 d!2224993))

(declare-fun d!2225047 () Bool)

(assert (=> d!2225047 (= (isEmpty!40026 s2!1620) ((_ is Nil!69005) s2!1620))))

(assert (=> d!2224863 d!2225047))

(declare-fun bs!1886821 () Bool)

(declare-fun d!2225049 () Bool)

(assert (= bs!1886821 (and d!2225049 d!2224837)))

(declare-fun lambda!433181 () Int)

(assert (=> bs!1886821 (= lambda!433181 lambda!433158)))

(declare-fun bs!1886822 () Bool)

(assert (= bs!1886822 (and d!2225049 d!2224861)))

(assert (=> bs!1886822 (= lambda!433181 lambda!433159)))

(declare-fun bs!1886823 () Bool)

(assert (= bs!1886823 (and d!2225049 d!2225041)))

(assert (=> bs!1886823 (= lambda!433181 lambda!433180)))

(assert (=> d!2225049 (= (inv!88120 setElem!51854) (forall!16921 (exprs!7531 setElem!51854) lambda!433181))))

(declare-fun bs!1886824 () Bool)

(assert (= bs!1886824 d!2225049))

(declare-fun m!7846444 () Bool)

(assert (=> bs!1886824 m!7846444))

(assert (=> setNonEmpty!51854 d!2225049))

(declare-fun d!2225051 () Bool)

(declare-fun c!1329942 () Bool)

(assert (=> d!2225051 (= c!1329942 (isEmpty!40026 (tail!13942 s1!1688)))))

(declare-fun e!4284181 () Bool)

(assert (=> d!2225051 (= (matchZipper!3293 (derivationStepZipper!3173 z1!552 (head!14470 s1!1688)) (tail!13942 s1!1688)) e!4284181)))

(declare-fun b!7129149 () Bool)

(assert (=> b!7129149 (= e!4284181 (nullableZipper!2761 (derivationStepZipper!3173 z1!552 (head!14470 s1!1688))))))

(declare-fun b!7129150 () Bool)

(assert (=> b!7129150 (= e!4284181 (matchZipper!3293 (derivationStepZipper!3173 (derivationStepZipper!3173 z1!552 (head!14470 s1!1688)) (head!14470 (tail!13942 s1!1688))) (tail!13942 (tail!13942 s1!1688))))))

(assert (= (and d!2225051 c!1329942) b!7129149))

(assert (= (and d!2225051 (not c!1329942)) b!7129150))

(assert (=> d!2225051 m!7846030))

(declare-fun m!7846446 () Bool)

(assert (=> d!2225051 m!7846446))

(assert (=> b!7129149 m!7846060))

(declare-fun m!7846448 () Bool)

(assert (=> b!7129149 m!7846448))

(assert (=> b!7129150 m!7846030))

(declare-fun m!7846450 () Bool)

(assert (=> b!7129150 m!7846450))

(assert (=> b!7129150 m!7846060))

(assert (=> b!7129150 m!7846450))

(declare-fun m!7846452 () Bool)

(assert (=> b!7129150 m!7846452))

(assert (=> b!7129150 m!7846030))

(declare-fun m!7846454 () Bool)

(assert (=> b!7129150 m!7846454))

(assert (=> b!7129150 m!7846452))

(assert (=> b!7129150 m!7846454))

(declare-fun m!7846456 () Bool)

(assert (=> b!7129150 m!7846456))

(assert (=> b!7128942 d!2225051))

(declare-fun bs!1886825 () Bool)

(declare-fun d!2225053 () Bool)

(assert (= bs!1886825 (and d!2225053 d!2225007)))

(declare-fun lambda!433182 () Int)

(assert (=> bs!1886825 (= (= (head!14470 s1!1688) (head!14470 s1Rec!140)) (= lambda!433182 lambda!433177))))

(declare-fun bs!1886826 () Bool)

(assert (= bs!1886826 (and d!2225053 d!2225017)))

(assert (=> bs!1886826 (= (= (head!14470 s1!1688) (head!14470 s2Rec!140)) (= lambda!433182 lambda!433179))))

(assert (=> d!2225053 true))

(assert (=> d!2225053 (= (derivationStepZipper!3173 z1!552 (head!14470 s1!1688)) (flatMap!2637 z1!552 lambda!433182))))

(declare-fun bs!1886827 () Bool)

(assert (= bs!1886827 d!2225053))

(declare-fun m!7846458 () Bool)

(assert (=> bs!1886827 m!7846458))

(assert (=> b!7128942 d!2225053))

(declare-fun d!2225055 () Bool)

(assert (=> d!2225055 (= (head!14470 s1!1688) (h!75453 s1!1688))))

(assert (=> b!7128942 d!2225055))

(declare-fun d!2225057 () Bool)

(assert (=> d!2225057 (= (tail!13942 s1!1688) (t!383106 s1!1688))))

(assert (=> b!7128942 d!2225057))

(assert (=> b!7128935 d!2225013))

(assert (=> b!7128912 d!2225025))

(declare-fun b!7129152 () Bool)

(declare-fun e!4284182 () List!69129)

(assert (=> b!7129152 (= e!4284182 (Cons!69005 (h!75453 (t!383106 s1!1688)) (++!16175 (t!383106 (t!383106 s1!1688)) s2!1620)))))

(declare-fun d!2225059 () Bool)

(declare-fun e!4284183 () Bool)

(assert (=> d!2225059 e!4284183))

(declare-fun res!2908722 () Bool)

(assert (=> d!2225059 (=> (not res!2908722) (not e!4284183))))

(declare-fun lt!2563802 () List!69129)

(assert (=> d!2225059 (= res!2908722 (= (content!14121 lt!2563802) ((_ map or) (content!14121 (t!383106 s1!1688)) (content!14121 s2!1620))))))

(assert (=> d!2225059 (= lt!2563802 e!4284182)))

(declare-fun c!1329943 () Bool)

(assert (=> d!2225059 (= c!1329943 ((_ is Nil!69005) (t!383106 s1!1688)))))

(assert (=> d!2225059 (= (++!16175 (t!383106 s1!1688) s2!1620) lt!2563802)))

(declare-fun b!7129154 () Bool)

(assert (=> b!7129154 (= e!4284183 (or (not (= s2!1620 Nil!69005)) (= lt!2563802 (t!383106 s1!1688))))))

(declare-fun b!7129153 () Bool)

(declare-fun res!2908723 () Bool)

(assert (=> b!7129153 (=> (not res!2908723) (not e!4284183))))

(assert (=> b!7129153 (= res!2908723 (= (size!41472 lt!2563802) (+ (size!41472 (t!383106 s1!1688)) (size!41472 s2!1620))))))

(declare-fun b!7129151 () Bool)

(assert (=> b!7129151 (= e!4284182 s2!1620)))

(assert (= (and d!2225059 c!1329943) b!7129151))

(assert (= (and d!2225059 (not c!1329943)) b!7129152))

(assert (= (and d!2225059 res!2908722) b!7129153))

(assert (= (and b!7129153 res!2908723) b!7129154))

(declare-fun m!7846460 () Bool)

(assert (=> b!7129152 m!7846460))

(declare-fun m!7846462 () Bool)

(assert (=> d!2225059 m!7846462))

(assert (=> d!2225059 m!7846234))

(assert (=> d!2225059 m!7846052))

(declare-fun m!7846464 () Bool)

(assert (=> b!7129153 m!7846464))

(declare-fun m!7846466 () Bool)

(assert (=> b!7129153 m!7846466))

(assert (=> b!7129153 m!7846056))

(assert (=> b!7128938 d!2225059))

(assert (=> b!7128932 d!2225009))

(assert (=> b!7128932 d!2225055))

(declare-fun d!2225061 () Bool)

(declare-fun lt!2563803 () Int)

(assert (=> d!2225061 (>= lt!2563803 0)))

(declare-fun e!4284184 () Int)

(assert (=> d!2225061 (= lt!2563803 e!4284184)))

(declare-fun c!1329944 () Bool)

(assert (=> d!2225061 (= c!1329944 ((_ is Nil!69005) s1!1688))))

(assert (=> d!2225061 (= (size!41472 s1!1688) lt!2563803)))

(declare-fun b!7129155 () Bool)

(assert (=> b!7129155 (= e!4284184 0)))

(declare-fun b!7129156 () Bool)

(assert (=> b!7129156 (= e!4284184 (+ 1 (size!41472 (t!383106 s1!1688))))))

(assert (= (and d!2225061 c!1329944) b!7129155))

(assert (= (and d!2225061 (not c!1329944)) b!7129156))

(assert (=> b!7129156 m!7846466))

(assert (=> b!7128934 d!2225061))

(assert (=> b!7128934 d!2224971))

(declare-fun d!2225063 () Bool)

(declare-fun c!1329945 () Bool)

(assert (=> d!2225063 (= c!1329945 (isEmpty!40026 (tail!13942 s2!1620)))))

(declare-fun e!4284185 () Bool)

(assert (=> d!2225063 (= (matchZipper!3293 (derivationStepZipper!3173 z2!471 (head!14470 s2!1620)) (tail!13942 s2!1620)) e!4284185)))

(declare-fun b!7129157 () Bool)

(assert (=> b!7129157 (= e!4284185 (nullableZipper!2761 (derivationStepZipper!3173 z2!471 (head!14470 s2!1620))))))

(declare-fun b!7129158 () Bool)

(assert (=> b!7129158 (= e!4284185 (matchZipper!3293 (derivationStepZipper!3173 (derivationStepZipper!3173 z2!471 (head!14470 s2!1620)) (head!14470 (tail!13942 s2!1620))) (tail!13942 (tail!13942 s2!1620))))))

(assert (= (and d!2225063 c!1329945) b!7129157))

(assert (= (and d!2225063 (not c!1329945)) b!7129158))

(assert (=> d!2225063 m!7846042))

(declare-fun m!7846468 () Bool)

(assert (=> d!2225063 m!7846468))

(assert (=> b!7129157 m!7846040))

(declare-fun m!7846470 () Bool)

(assert (=> b!7129157 m!7846470))

(assert (=> b!7129158 m!7846042))

(declare-fun m!7846472 () Bool)

(assert (=> b!7129158 m!7846472))

(assert (=> b!7129158 m!7846040))

(assert (=> b!7129158 m!7846472))

(declare-fun m!7846474 () Bool)

(assert (=> b!7129158 m!7846474))

(assert (=> b!7129158 m!7846042))

(declare-fun m!7846476 () Bool)

(assert (=> b!7129158 m!7846476))

(assert (=> b!7129158 m!7846474))

(assert (=> b!7129158 m!7846476))

(declare-fun m!7846478 () Bool)

(assert (=> b!7129158 m!7846478))

(assert (=> b!7128936 d!2225063))

(declare-fun bs!1886828 () Bool)

(declare-fun d!2225065 () Bool)

(assert (= bs!1886828 (and d!2225065 d!2225007)))

(declare-fun lambda!433183 () Int)

(assert (=> bs!1886828 (= (= (head!14470 s2!1620) (head!14470 s1Rec!140)) (= lambda!433183 lambda!433177))))

(declare-fun bs!1886829 () Bool)

(assert (= bs!1886829 (and d!2225065 d!2225017)))

(assert (=> bs!1886829 (= (= (head!14470 s2!1620) (head!14470 s2Rec!140)) (= lambda!433183 lambda!433179))))

(declare-fun bs!1886830 () Bool)

(assert (= bs!1886830 (and d!2225065 d!2225053)))

(assert (=> bs!1886830 (= (= (head!14470 s2!1620) (head!14470 s1!1688)) (= lambda!433183 lambda!433182))))

(assert (=> d!2225065 true))

(assert (=> d!2225065 (= (derivationStepZipper!3173 z2!471 (head!14470 s2!1620)) (flatMap!2637 z2!471 lambda!433183))))

(declare-fun bs!1886831 () Bool)

(assert (= bs!1886831 d!2225065))

(declare-fun m!7846480 () Bool)

(assert (=> bs!1886831 m!7846480))

(assert (=> b!7128936 d!2225065))

(declare-fun d!2225067 () Bool)

(assert (=> d!2225067 (= (head!14470 s2!1620) (h!75453 s2!1620))))

(assert (=> b!7128936 d!2225067))

(declare-fun d!2225069 () Bool)

(assert (=> d!2225069 (= (tail!13942 s2!1620) (t!383106 s2!1620))))

(assert (=> b!7128936 d!2225069))

(declare-fun d!2225071 () Bool)

(declare-fun lt!2563804 () Int)

(assert (=> d!2225071 (>= lt!2563804 0)))

(declare-fun e!4284186 () Int)

(assert (=> d!2225071 (= lt!2563804 e!4284186)))

(declare-fun c!1329946 () Bool)

(assert (=> d!2225071 (= c!1329946 ((_ is Nil!69005) lt!2563766))))

(assert (=> d!2225071 (= (size!41472 lt!2563766) lt!2563804)))

(declare-fun b!7129159 () Bool)

(assert (=> b!7129159 (= e!4284186 0)))

(declare-fun b!7129160 () Bool)

(assert (=> b!7129160 (= e!4284186 (+ 1 (size!41472 (t!383106 lt!2563766))))))

(assert (= (and d!2225071 c!1329946) b!7129159))

(assert (= (and d!2225071 (not c!1329946)) b!7129160))

(declare-fun m!7846482 () Bool)

(assert (=> b!7129160 m!7846482))

(assert (=> b!7128939 d!2225071))

(assert (=> b!7128939 d!2225061))

(declare-fun d!2225073 () Bool)

(declare-fun lt!2563805 () Int)

(assert (=> d!2225073 (>= lt!2563805 0)))

(declare-fun e!4284187 () Int)

(assert (=> d!2225073 (= lt!2563805 e!4284187)))

(declare-fun c!1329947 () Bool)

(assert (=> d!2225073 (= c!1329947 ((_ is Nil!69005) s2!1620))))

(assert (=> d!2225073 (= (size!41472 s2!1620) lt!2563805)))

(declare-fun b!7129161 () Bool)

(assert (=> b!7129161 (= e!4284187 0)))

(declare-fun b!7129162 () Bool)

(assert (=> b!7129162 (= e!4284187 (+ 1 (size!41472 (t!383106 s2!1620))))))

(assert (= (and d!2225073 c!1329947) b!7129161))

(assert (= (and d!2225073 (not c!1329947)) b!7129162))

(declare-fun m!7846484 () Bool)

(assert (=> b!7129162 m!7846484))

(assert (=> b!7128939 d!2225073))

(declare-fun b!7129164 () Bool)

(declare-fun res!2908724 () Bool)

(declare-fun e!4284189 () Bool)

(assert (=> b!7129164 (=> (not res!2908724) (not e!4284189))))

(assert (=> b!7129164 (= res!2908724 (= (head!14470 (tail!13942 s1Rec!140)) (head!14470 (tail!13942 s1!1688))))))

(declare-fun b!7129163 () Bool)

(declare-fun e!4284188 () Bool)

(assert (=> b!7129163 (= e!4284188 e!4284189)))

(declare-fun res!2908725 () Bool)

(assert (=> b!7129163 (=> (not res!2908725) (not e!4284189))))

(assert (=> b!7129163 (= res!2908725 (not ((_ is Nil!69005) (tail!13942 s1!1688))))))

(declare-fun d!2225075 () Bool)

(declare-fun e!4284190 () Bool)

(assert (=> d!2225075 e!4284190))

(declare-fun res!2908727 () Bool)

(assert (=> d!2225075 (=> res!2908727 e!4284190)))

(declare-fun lt!2563806 () Bool)

(assert (=> d!2225075 (= res!2908727 (not lt!2563806))))

(assert (=> d!2225075 (= lt!2563806 e!4284188)))

(declare-fun res!2908726 () Bool)

(assert (=> d!2225075 (=> res!2908726 e!4284188)))

(assert (=> d!2225075 (= res!2908726 ((_ is Nil!69005) (tail!13942 s1Rec!140)))))

(assert (=> d!2225075 (= (isPrefix!5906 (tail!13942 s1Rec!140) (tail!13942 s1!1688)) lt!2563806)))

(declare-fun b!7129166 () Bool)

(assert (=> b!7129166 (= e!4284190 (>= (size!41472 (tail!13942 s1!1688)) (size!41472 (tail!13942 s1Rec!140))))))

(declare-fun b!7129165 () Bool)

(assert (=> b!7129165 (= e!4284189 (isPrefix!5906 (tail!13942 (tail!13942 s1Rec!140)) (tail!13942 (tail!13942 s1!1688))))))

(assert (= (and d!2225075 (not res!2908726)) b!7129163))

(assert (= (and b!7129163 res!2908725) b!7129164))

(assert (= (and b!7129164 res!2908724) b!7129165))

(assert (= (and d!2225075 (not res!2908727)) b!7129166))

(assert (=> b!7129164 m!7845990))

(assert (=> b!7129164 m!7846330))

(assert (=> b!7129164 m!7846030))

(assert (=> b!7129164 m!7846450))

(assert (=> b!7129166 m!7846030))

(declare-fun m!7846486 () Bool)

(assert (=> b!7129166 m!7846486))

(assert (=> b!7129166 m!7845990))

(declare-fun m!7846488 () Bool)

(assert (=> b!7129166 m!7846488))

(assert (=> b!7129165 m!7845990))

(assert (=> b!7129165 m!7846334))

(assert (=> b!7129165 m!7846030))

(assert (=> b!7129165 m!7846454))

(assert (=> b!7129165 m!7846334))

(assert (=> b!7129165 m!7846454))

(declare-fun m!7846490 () Bool)

(assert (=> b!7129165 m!7846490))

(assert (=> b!7128933 d!2225075))

(assert (=> b!7128933 d!2225011))

(assert (=> b!7128933 d!2225057))

(declare-fun b!7129167 () Bool)

(declare-fun e!4284191 () Bool)

(declare-fun tp!1964333 () Bool)

(assert (=> b!7129167 (= e!4284191 (and tp_is_empty!45675 tp!1964333))))

(assert (=> b!7128963 (= tp!1964295 e!4284191)))

(assert (= (and b!7128963 ((_ is Cons!69005) (t!383106 (t!383106 s2Rec!140)))) b!7129167))

(declare-fun condSetEmpty!51858 () Bool)

(assert (=> setNonEmpty!51854 (= condSetEmpty!51858 (= setRest!51854 ((as const (Array Context!14062 Bool)) false)))))

(declare-fun setRes!51858 () Bool)

(assert (=> setNonEmpty!51854 (= tp!1964278 setRes!51858)))

(declare-fun setIsEmpty!51858 () Bool)

(assert (=> setIsEmpty!51858 setRes!51858))

(declare-fun setNonEmpty!51858 () Bool)

(declare-fun setElem!51858 () Context!14062)

(declare-fun tp!1964335 () Bool)

(declare-fun e!4284192 () Bool)

(assert (=> setNonEmpty!51858 (= setRes!51858 (and tp!1964335 (inv!88120 setElem!51858) e!4284192))))

(declare-fun setRest!51858 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51858 (= setRest!51854 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51858 true) setRest!51858))))

(declare-fun b!7129168 () Bool)

(declare-fun tp!1964334 () Bool)

(assert (=> b!7129168 (= e!4284192 tp!1964334)))

(assert (= (and setNonEmpty!51854 condSetEmpty!51858) setIsEmpty!51858))

(assert (= (and setNonEmpty!51854 (not condSetEmpty!51858)) setNonEmpty!51858))

(assert (= setNonEmpty!51858 b!7129168))

(declare-fun m!7846492 () Bool)

(assert (=> setNonEmpty!51858 m!7846492))

(declare-fun b!7129169 () Bool)

(declare-fun e!4284193 () Bool)

(declare-fun tp!1964336 () Bool)

(assert (=> b!7129169 (= e!4284193 (and tp_is_empty!45675 tp!1964336))))

(assert (=> b!7128953 (= tp!1964282 e!4284193)))

(assert (= (and b!7128953 ((_ is Cons!69005) (t!383106 (t!383106 s1!1688)))) b!7129169))

(declare-fun b!7129170 () Bool)

(declare-fun e!4284194 () Bool)

(declare-fun tp!1964337 () Bool)

(assert (=> b!7129170 (= e!4284194 (and tp_is_empty!45675 tp!1964337))))

(assert (=> b!7128952 (= tp!1964281 e!4284194)))

(assert (= (and b!7128952 ((_ is Cons!69005) (t!383106 (t!383106 s!7390)))) b!7129170))

(declare-fun b!7129171 () Bool)

(declare-fun e!4284195 () Bool)

(declare-fun tp!1964338 () Bool)

(declare-fun tp!1964339 () Bool)

(assert (=> b!7129171 (= e!4284195 (and tp!1964338 tp!1964339))))

(assert (=> b!7128947 (= tp!1964277 e!4284195)))

(assert (= (and b!7128947 ((_ is Cons!69004) (exprs!7531 setElem!51854))) b!7129171))

(declare-fun condSetEmpty!51859 () Bool)

(assert (=> setNonEmpty!51855 (= condSetEmpty!51859 (= setRest!51855 ((as const (Array Context!14062 Bool)) false)))))

(declare-fun setRes!51859 () Bool)

(assert (=> setNonEmpty!51855 (= tp!1964291 setRes!51859)))

(declare-fun setIsEmpty!51859 () Bool)

(assert (=> setIsEmpty!51859 setRes!51859))

(declare-fun tp!1964341 () Bool)

(declare-fun e!4284196 () Bool)

(declare-fun setElem!51859 () Context!14062)

(declare-fun setNonEmpty!51859 () Bool)

(assert (=> setNonEmpty!51859 (= setRes!51859 (and tp!1964341 (inv!88120 setElem!51859) e!4284196))))

(declare-fun setRest!51859 () (InoxSet Context!14062))

(assert (=> setNonEmpty!51859 (= setRest!51855 ((_ map or) (store ((as const (Array Context!14062 Bool)) false) setElem!51859 true) setRest!51859))))

(declare-fun b!7129172 () Bool)

(declare-fun tp!1964340 () Bool)

(assert (=> b!7129172 (= e!4284196 tp!1964340)))

(assert (= (and setNonEmpty!51855 condSetEmpty!51859) setIsEmpty!51859))

(assert (= (and setNonEmpty!51855 (not condSetEmpty!51859)) setNonEmpty!51859))

(assert (= setNonEmpty!51859 b!7129172))

(declare-fun m!7846494 () Bool)

(assert (=> setNonEmpty!51859 m!7846494))

(declare-fun b!7129173 () Bool)

(declare-fun e!4284197 () Bool)

(declare-fun tp!1964342 () Bool)

(assert (=> b!7129173 (= e!4284197 (and tp_is_empty!45675 tp!1964342))))

(assert (=> b!7128954 (= tp!1964283 e!4284197)))

(assert (= (and b!7128954 ((_ is Cons!69005) (t!383106 (t!383106 s1Rec!140)))) b!7129173))

(declare-fun b!7129174 () Bool)

(declare-fun e!4284198 () Bool)

(declare-fun tp!1964343 () Bool)

(assert (=> b!7129174 (= e!4284198 (and tp_is_empty!45675 tp!1964343))))

(assert (=> b!7128962 (= tp!1964294 e!4284198)))

(assert (= (and b!7128962 ((_ is Cons!69005) (t!383106 (t!383106 s2!1620)))) b!7129174))

(declare-fun b!7129185 () Bool)

(declare-fun e!4284201 () Bool)

(assert (=> b!7129185 (= e!4284201 tp_is_empty!45675)))

(declare-fun b!7129186 () Bool)

(declare-fun tp!1964358 () Bool)

(declare-fun tp!1964355 () Bool)

(assert (=> b!7129186 (= e!4284201 (and tp!1964358 tp!1964355))))

(assert (=> b!7128961 (= tp!1964292 e!4284201)))

(declare-fun b!7129188 () Bool)

(declare-fun tp!1964356 () Bool)

(declare-fun tp!1964357 () Bool)

(assert (=> b!7129188 (= e!4284201 (and tp!1964356 tp!1964357))))

(declare-fun b!7129187 () Bool)

(declare-fun tp!1964354 () Bool)

(assert (=> b!7129187 (= e!4284201 tp!1964354)))

(assert (= (and b!7128961 ((_ is ElementMatch!18037) (h!75452 (exprs!7531 setElem!51846)))) b!7129185))

(assert (= (and b!7128961 ((_ is Concat!26882) (h!75452 (exprs!7531 setElem!51846)))) b!7129186))

(assert (= (and b!7128961 ((_ is Star!18037) (h!75452 (exprs!7531 setElem!51846)))) b!7129187))

(assert (= (and b!7128961 ((_ is Union!18037) (h!75452 (exprs!7531 setElem!51846)))) b!7129188))

(declare-fun b!7129189 () Bool)

(declare-fun e!4284202 () Bool)

(declare-fun tp!1964359 () Bool)

(declare-fun tp!1964360 () Bool)

(assert (=> b!7129189 (= e!4284202 (and tp!1964359 tp!1964360))))

(assert (=> b!7128961 (= tp!1964293 e!4284202)))

(assert (= (and b!7128961 ((_ is Cons!69004) (t!383105 (exprs!7531 setElem!51846)))) b!7129189))

(declare-fun b!7129190 () Bool)

(declare-fun e!4284203 () Bool)

(assert (=> b!7129190 (= e!4284203 tp_is_empty!45675)))

(declare-fun b!7129191 () Bool)

(declare-fun tp!1964365 () Bool)

(declare-fun tp!1964362 () Bool)

(assert (=> b!7129191 (= e!4284203 (and tp!1964365 tp!1964362))))

(assert (=> b!7128959 (= tp!1964288 e!4284203)))

(declare-fun b!7129193 () Bool)

(declare-fun tp!1964363 () Bool)

(declare-fun tp!1964364 () Bool)

(assert (=> b!7129193 (= e!4284203 (and tp!1964363 tp!1964364))))

(declare-fun b!7129192 () Bool)

(declare-fun tp!1964361 () Bool)

(assert (=> b!7129192 (= e!4284203 tp!1964361)))

(assert (= (and b!7128959 ((_ is ElementMatch!18037) (h!75452 (exprs!7531 setElem!51847)))) b!7129190))

(assert (= (and b!7128959 ((_ is Concat!26882) (h!75452 (exprs!7531 setElem!51847)))) b!7129191))

(assert (= (and b!7128959 ((_ is Star!18037) (h!75452 (exprs!7531 setElem!51847)))) b!7129192))

(assert (= (and b!7128959 ((_ is Union!18037) (h!75452 (exprs!7531 setElem!51847)))) b!7129193))

(declare-fun b!7129194 () Bool)

(declare-fun e!4284204 () Bool)

(declare-fun tp!1964366 () Bool)

(declare-fun tp!1964367 () Bool)

(assert (=> b!7129194 (= e!4284204 (and tp!1964366 tp!1964367))))

(assert (=> b!7128959 (= tp!1964289 e!4284204)))

(assert (= (and b!7128959 ((_ is Cons!69004) (t!383105 (exprs!7531 setElem!51847)))) b!7129194))

(declare-fun b!7129195 () Bool)

(declare-fun e!4284205 () Bool)

(declare-fun tp!1964368 () Bool)

(declare-fun tp!1964369 () Bool)

(assert (=> b!7129195 (= e!4284205 (and tp!1964368 tp!1964369))))

(assert (=> b!7128960 (= tp!1964290 e!4284205)))

(assert (= (and b!7128960 ((_ is Cons!69004) (exprs!7531 setElem!51855))) b!7129195))

(declare-fun b_lambda!272073 () Bool)

(assert (= b_lambda!272065 (or d!2224837 b_lambda!272073)))

(declare-fun bs!1886832 () Bool)

(declare-fun d!2225077 () Bool)

(assert (= bs!1886832 (and d!2225077 d!2224837)))

(declare-fun validRegex!9271 (Regex!18037) Bool)

(assert (=> bs!1886832 (= (dynLambda!28114 lambda!433158 (h!75452 (exprs!7531 setElem!51847))) (validRegex!9271 (h!75452 (exprs!7531 setElem!51847))))))

(declare-fun m!7846496 () Bool)

(assert (=> bs!1886832 m!7846496))

(assert (=> b!7129089 d!2225077))

(declare-fun b_lambda!272075 () Bool)

(assert (= b_lambda!272071 (or d!2224861 b_lambda!272075)))

(declare-fun bs!1886833 () Bool)

(declare-fun d!2225079 () Bool)

(assert (= bs!1886833 (and d!2225079 d!2224861)))

(assert (=> bs!1886833 (= (dynLambda!28114 lambda!433159 (h!75452 (exprs!7531 setElem!51846))) (validRegex!9271 (h!75452 (exprs!7531 setElem!51846))))))

(declare-fun m!7846498 () Bool)

(assert (=> bs!1886833 m!7846498))

(assert (=> b!7129122 d!2225079))

(check-sat (not d!2225035) (not d!2225065) (not b!7129068) (not b_lambda!272073) (not b!7129193) (not b!7129166) (not b!7129134) (not d!2225063) (not b!7129121) (not b!7129171) (not b!7129124) (not bs!1886833) (not b!7129140) (not b!7129070) (not b!7129150) (not d!2225041) (not b!7129186) (not b!7129116) (not b!7129170) (not d!2225017) (not d!2225025) (not b!7129131) (not d!2225015) (not b!7129090) (not b!7129111) (not setNonEmpty!51859) (not b!7129123) (not d!2225045) (not b!7129144) (not b!7129189) (not d!2225037) (not b!7129132) (not b!7129040) (not b!7129044) (not bs!1886832) (not b!7129115) (not b!7129139) (not b!7129160) (not b!7129191) (not b!7129152) (not b!7129188) (not b!7129174) (not b!7129145) (not b!7129157) (not b!7129167) (not b!7129156) (not b!7129148) (not b!7129195) (not setNonEmpty!51858) tp_is_empty!45675 (not b!7129117) (not b!7129187) (not b!7129158) (not b!7129141) (not b!7129168) (not b!7129046) (not b!7129149) (not b!7129125) (not b!7129194) (not d!2224993) (not b!7129136) (not b!7129192) (not d!2225043) (not b!7129064) (not b!7129047) (not b!7129165) (not d!2224953) (not d!2225031) (not b!7129042) (not d!2225053) (not d!2225013) (not b!7129120) (not b!7129153) (not b!7129128) (not b!7129169) (not b!7129172) (not d!2225027) (not d!2225049) (not b!7129137) (not d!2225059) (not d!2225007) (not b_lambda!272075) (not b!7129127) (not b!7129173) (not b!7129162) (not b!7129164) (not d!2225051) (not d!2225005) (not b!7129147) (not d!2225033) (not b!7129113))
(check-sat)
