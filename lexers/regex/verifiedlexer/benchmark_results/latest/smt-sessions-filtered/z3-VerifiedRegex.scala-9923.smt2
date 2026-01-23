; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520324 () Bool)

(assert start!520324)

(declare-fun b!4944099 () Bool)

(declare-fun e!3089011 () Bool)

(declare-datatypes ((C!27176 0))(
  ( (C!27177 (val!22922 Int)) )
))
(declare-datatypes ((List!57053 0))(
  ( (Nil!56929) (Cons!56929 (h!63377 C!27176) (t!367589 List!57053)) )
))
(declare-datatypes ((IArray!30025 0))(
  ( (IArray!30026 (innerList!15070 List!57053)) )
))
(declare-datatypes ((Conc!14982 0))(
  ( (Node!14982 (left!41539 Conc!14982) (right!41869 Conc!14982) (csize!30194 Int) (cheight!15193 Int)) (Leaf!24906 (xs!18308 IArray!30025) (csize!30195 Int)) (Empty!14982) )
))
(declare-datatypes ((BalanceConc!29394 0))(
  ( (BalanceConc!29395 (c!843524 Conc!14982)) )
))
(declare-fun totalInput!685 () BalanceConc!29394)

(declare-fun tp!1386862 () Bool)

(declare-fun inv!74098 (Conc!14982) Bool)

(assert (=> b!4944099 (= e!3089011 (and (inv!74098 (c!843524 totalInput!685)) tp!1386862))))

(declare-fun b!4944100 () Bool)

(declare-fun e!3089013 () Bool)

(declare-fun tp_is_empty!36123 () Bool)

(declare-fun tp!1386864 () Bool)

(assert (=> b!4944100 (= e!3089013 (and tp_is_empty!36123 tp!1386864))))

(declare-fun res!2109717 () Bool)

(declare-fun e!3089010 () Bool)

(assert (=> start!520324 (=> (not res!2109717) (not e!3089010))))

(declare-fun lt!2037984 () List!57053)

(declare-fun lt!2037987 () List!57053)

(assert (=> start!520324 (= res!2109717 (= lt!2037984 lt!2037987))))

(declare-fun list!18129 (BalanceConc!29394) List!57053)

(assert (=> start!520324 (= lt!2037987 (list!18129 totalInput!685))))

(declare-fun testedP!110 () List!57053)

(declare-fun testedSuffix!70 () List!57053)

(declare-fun ++!12448 (List!57053 List!57053) List!57053)

(assert (=> start!520324 (= lt!2037984 (++!12448 testedP!110 testedSuffix!70))))

(assert (=> start!520324 e!3089010))

(assert (=> start!520324 e!3089013))

(declare-fun condSetEmpty!27956 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13463 0))(
  ( (ElementMatch!13463 (c!843525 C!27176)) (Concat!22036 (regOne!27438 Regex!13463) (regTwo!27438 Regex!13463)) (EmptyExpr!13463) (Star!13463 (reg!13792 Regex!13463)) (EmptyLang!13463) (Union!13463 (regOne!27439 Regex!13463) (regTwo!27439 Regex!13463)) )
))
(declare-datatypes ((List!57054 0))(
  ( (Nil!56930) (Cons!56930 (h!63378 Regex!13463) (t!367590 List!57054)) )
))
(declare-datatypes ((Context!6210 0))(
  ( (Context!6211 (exprs!3605 List!57054)) )
))
(declare-fun z!3568 () (InoxSet Context!6210))

(assert (=> start!520324 (= condSetEmpty!27956 (= z!3568 ((as const (Array Context!6210 Bool)) false)))))

(declare-fun setRes!27956 () Bool)

(assert (=> start!520324 setRes!27956))

(assert (=> start!520324 true))

(declare-fun inv!74099 (BalanceConc!29394) Bool)

(assert (=> start!520324 (and (inv!74099 totalInput!685) e!3089011)))

(declare-fun e!3089012 () Bool)

(assert (=> start!520324 e!3089012))

(declare-fun setElem!27956 () Context!6210)

(declare-fun setNonEmpty!27956 () Bool)

(declare-fun tp!1386863 () Bool)

(declare-fun e!3089009 () Bool)

(declare-fun inv!74100 (Context!6210) Bool)

(assert (=> setNonEmpty!27956 (= setRes!27956 (and tp!1386863 (inv!74100 setElem!27956) e!3089009))))

(declare-fun setRest!27956 () (InoxSet Context!6210))

(assert (=> setNonEmpty!27956 (= z!3568 ((_ map or) (store ((as const (Array Context!6210 Bool)) false) setElem!27956 true) setRest!27956))))

(declare-fun b!4944101 () Bool)

(declare-fun e!3089008 () Bool)

(declare-fun e!3089007 () Bool)

(assert (=> b!4944101 (= e!3089008 e!3089007)))

(declare-fun res!2109718 () Bool)

(assert (=> b!4944101 (=> res!2109718 e!3089007)))

(declare-fun lostCauseZipper!781 ((InoxSet Context!6210)) Bool)

(assert (=> b!4944101 (= res!2109718 (not (lostCauseZipper!781 z!3568)))))

(declare-fun lt!2037985 () List!57053)

(assert (=> b!4944101 (and (= testedSuffix!70 lt!2037985) (= lt!2037985 testedSuffix!70))))

(declare-datatypes ((Unit!147693 0))(
  ( (Unit!147694) )
))
(declare-fun lt!2037983 () Unit!147693)

(declare-fun lemmaSamePrefixThenSameSuffix!2461 (List!57053 List!57053 List!57053 List!57053 List!57053) Unit!147693)

(assert (=> b!4944101 (= lt!2037983 (lemmaSamePrefixThenSameSuffix!2461 testedP!110 testedSuffix!70 testedP!110 lt!2037985 lt!2037987))))

(declare-fun getSuffix!3051 (List!57053 List!57053) List!57053)

(assert (=> b!4944101 (= lt!2037985 (getSuffix!3051 lt!2037987 testedP!110))))

(declare-fun b!4944102 () Bool)

(declare-fun tp!1386861 () Bool)

(assert (=> b!4944102 (= e!3089009 tp!1386861)))

(declare-fun totalInputSize!132 () Int)

(declare-fun testedPSize!70 () Int)

(declare-fun b!4944103 () Bool)

(declare-fun size!37755 (List!57053) Int)

(declare-datatypes ((tuple2!61476 0))(
  ( (tuple2!61477 (_1!34041 List!57053) (_2!34041 List!57053)) )
))
(declare-fun findLongestMatchInnerZipper!72 ((InoxSet Context!6210) List!57053 Int List!57053 List!57053 Int) tuple2!61476)

(assert (=> b!4944103 (= e!3089007 (= (size!37755 (_1!34041 (findLongestMatchInnerZipper!72 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2037987 totalInputSize!132))) 0))))

(declare-fun b!4944104 () Bool)

(declare-fun res!2109720 () Bool)

(assert (=> b!4944104 (=> (not res!2109720) (not e!3089010))))

(declare-fun size!37756 (BalanceConc!29394) Int)

(assert (=> b!4944104 (= res!2109720 (= totalInputSize!132 (size!37756 totalInput!685)))))

(declare-fun b!4944105 () Bool)

(declare-fun res!2109719 () Bool)

(assert (=> b!4944105 (=> (not res!2109719) (not e!3089010))))

(assert (=> b!4944105 (= res!2109719 (= testedPSize!70 (size!37755 testedP!110)))))

(declare-fun b!4944106 () Bool)

(assert (=> b!4944106 (= e!3089010 (not e!3089008))))

(declare-fun res!2109716 () Bool)

(assert (=> b!4944106 (=> res!2109716 e!3089008)))

(declare-fun isPrefix!5069 (List!57053 List!57053) Bool)

(assert (=> b!4944106 (= res!2109716 (not (isPrefix!5069 testedP!110 lt!2037987)))))

(assert (=> b!4944106 (isPrefix!5069 testedP!110 lt!2037984)))

(declare-fun lt!2037986 () Unit!147693)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3293 (List!57053 List!57053) Unit!147693)

(assert (=> b!4944106 (= lt!2037986 (lemmaConcatTwoListThenFirstIsPrefix!3293 testedP!110 testedSuffix!70))))

(declare-fun setIsEmpty!27956 () Bool)

(assert (=> setIsEmpty!27956 setRes!27956))

(declare-fun b!4944107 () Bool)

(declare-fun tp!1386865 () Bool)

(assert (=> b!4944107 (= e!3089012 (and tp_is_empty!36123 tp!1386865))))

(assert (= (and start!520324 res!2109717) b!4944105))

(assert (= (and b!4944105 res!2109719) b!4944104))

(assert (= (and b!4944104 res!2109720) b!4944106))

(assert (= (and b!4944106 (not res!2109716)) b!4944101))

(assert (= (and b!4944101 (not res!2109718)) b!4944103))

(get-info :version)

(assert (= (and start!520324 ((_ is Cons!56929) testedP!110)) b!4944100))

(assert (= (and start!520324 condSetEmpty!27956) setIsEmpty!27956))

(assert (= (and start!520324 (not condSetEmpty!27956)) setNonEmpty!27956))

(assert (= setNonEmpty!27956 b!4944102))

(assert (= start!520324 b!4944099))

(assert (= (and start!520324 ((_ is Cons!56929) testedSuffix!70)) b!4944107))

(declare-fun m!5967126 () Bool)

(assert (=> b!4944099 m!5967126))

(declare-fun m!5967128 () Bool)

(assert (=> b!4944105 m!5967128))

(declare-fun m!5967130 () Bool)

(assert (=> b!4944104 m!5967130))

(declare-fun m!5967132 () Bool)

(assert (=> b!4944101 m!5967132))

(declare-fun m!5967134 () Bool)

(assert (=> b!4944101 m!5967134))

(declare-fun m!5967136 () Bool)

(assert (=> b!4944101 m!5967136))

(declare-fun m!5967138 () Bool)

(assert (=> b!4944106 m!5967138))

(declare-fun m!5967140 () Bool)

(assert (=> b!4944106 m!5967140))

(declare-fun m!5967142 () Bool)

(assert (=> b!4944106 m!5967142))

(declare-fun m!5967144 () Bool)

(assert (=> b!4944103 m!5967144))

(declare-fun m!5967146 () Bool)

(assert (=> b!4944103 m!5967146))

(declare-fun m!5967148 () Bool)

(assert (=> start!520324 m!5967148))

(declare-fun m!5967150 () Bool)

(assert (=> start!520324 m!5967150))

(declare-fun m!5967152 () Bool)

(assert (=> start!520324 m!5967152))

(declare-fun m!5967154 () Bool)

(assert (=> setNonEmpty!27956 m!5967154))

(check-sat (not b!4944103) (not b!4944104) (not setNonEmpty!27956) (not b!4944105) tp_is_empty!36123 (not b!4944107) (not b!4944102) (not b!4944101) (not b!4944099) (not b!4944100) (not start!520324) (not b!4944106))
(check-sat)
(get-model)

(declare-fun d!1591986 () Bool)

(declare-fun lambda!246396 () Int)

(declare-fun forall!13236 (List!57054 Int) Bool)

(assert (=> d!1591986 (= (inv!74100 setElem!27956) (forall!13236 (exprs!3605 setElem!27956) lambda!246396))))

(declare-fun bs!1181534 () Bool)

(assert (= bs!1181534 d!1591986))

(declare-fun m!5967224 () Bool)

(assert (=> bs!1181534 m!5967224))

(assert (=> setNonEmpty!27956 d!1591986))

(declare-fun bs!1181535 () Bool)

(declare-fun b!4944169 () Bool)

(declare-fun d!1592012 () Bool)

(assert (= bs!1181535 (and b!4944169 d!1592012)))

(declare-fun lambda!246410 () Int)

(declare-fun lambda!246409 () Int)

(assert (=> bs!1181535 (not (= lambda!246410 lambda!246409))))

(declare-fun bs!1181536 () Bool)

(declare-fun b!4944170 () Bool)

(assert (= bs!1181536 (and b!4944170 d!1592012)))

(declare-fun lambda!246411 () Int)

(assert (=> bs!1181536 (not (= lambda!246411 lambda!246409))))

(declare-fun bs!1181537 () Bool)

(assert (= bs!1181537 (and b!4944170 b!4944169)))

(assert (=> bs!1181537 (= lambda!246411 lambda!246410)))

(declare-fun e!3089058 () Unit!147693)

(declare-fun Unit!147699 () Unit!147693)

(assert (=> b!4944169 (= e!3089058 Unit!147699)))

(declare-datatypes ((List!57056 0))(
  ( (Nil!56932) (Cons!56932 (h!63380 Context!6210) (t!367592 List!57056)) )
))
(declare-fun lt!2038052 () List!57056)

(declare-fun call!344984 () List!57056)

(assert (=> b!4944169 (= lt!2038052 call!344984)))

(declare-fun lt!2038048 () Unit!147693)

(declare-fun lemmaNotForallThenExists!224 (List!57056 Int) Unit!147693)

(assert (=> b!4944169 (= lt!2038048 (lemmaNotForallThenExists!224 lt!2038052 lambda!246409))))

(declare-fun call!344983 () Bool)

(assert (=> b!4944169 call!344983))

(declare-fun lt!2038051 () Unit!147693)

(assert (=> b!4944169 (= lt!2038051 lt!2038048)))

(declare-fun lt!2038054 () Bool)

(declare-datatypes ((Option!14204 0))(
  ( (None!14203) (Some!14203 (v!50179 List!57053)) )
))
(declare-fun isEmpty!30643 (Option!14204) Bool)

(declare-fun getLanguageWitness!673 ((InoxSet Context!6210)) Option!14204)

(assert (=> d!1592012 (= lt!2038054 (isEmpty!30643 (getLanguageWitness!673 z!3568)))))

(declare-fun forall!13237 ((InoxSet Context!6210) Int) Bool)

(assert (=> d!1592012 (= lt!2038054 (forall!13237 z!3568 lambda!246409))))

(declare-fun lt!2038050 () Unit!147693)

(assert (=> d!1592012 (= lt!2038050 e!3089058)))

(declare-fun c!843560 () Bool)

(assert (=> d!1592012 (= c!843560 (not (forall!13237 z!3568 lambda!246409)))))

(assert (=> d!1592012 (= (lostCauseZipper!781 z!3568) lt!2038054)))

(declare-fun bm!344979 () Bool)

(declare-fun toList!7986 ((InoxSet Context!6210)) List!57056)

(assert (=> bm!344979 (= call!344984 (toList!7986 z!3568))))

(declare-fun Unit!147701 () Unit!147693)

(assert (=> b!4944170 (= e!3089058 Unit!147701)))

(declare-fun lt!2038049 () List!57056)

(assert (=> b!4944170 (= lt!2038049 call!344984)))

(declare-fun lt!2038055 () Unit!147693)

(declare-fun lemmaForallThenNotExists!207 (List!57056 Int) Unit!147693)

(assert (=> b!4944170 (= lt!2038055 (lemmaForallThenNotExists!207 lt!2038049 lambda!246409))))

(assert (=> b!4944170 (not call!344983)))

(declare-fun lt!2038053 () Unit!147693)

(assert (=> b!4944170 (= lt!2038053 lt!2038055)))

(declare-fun bm!344978 () Bool)

(declare-fun exists!1318 (List!57056 Int) Bool)

(assert (=> bm!344978 (= call!344983 (exists!1318 (ite c!843560 lt!2038052 lt!2038049) (ite c!843560 lambda!246410 lambda!246411)))))

(assert (= (and d!1592012 c!843560) b!4944169))

(assert (= (and d!1592012 (not c!843560)) b!4944170))

(assert (= (or b!4944169 b!4944170) bm!344978))

(assert (= (or b!4944169 b!4944170) bm!344979))

(declare-fun m!5967226 () Bool)

(assert (=> bm!344979 m!5967226))

(declare-fun m!5967228 () Bool)

(assert (=> d!1592012 m!5967228))

(assert (=> d!1592012 m!5967228))

(declare-fun m!5967230 () Bool)

(assert (=> d!1592012 m!5967230))

(declare-fun m!5967232 () Bool)

(assert (=> d!1592012 m!5967232))

(assert (=> d!1592012 m!5967232))

(declare-fun m!5967234 () Bool)

(assert (=> b!4944170 m!5967234))

(declare-fun m!5967236 () Bool)

(assert (=> bm!344978 m!5967236))

(declare-fun m!5967238 () Bool)

(assert (=> b!4944169 m!5967238))

(assert (=> b!4944101 d!1592012))

(declare-fun d!1592014 () Bool)

(assert (=> d!1592014 (= testedSuffix!70 lt!2037985)))

(declare-fun lt!2038058 () Unit!147693)

(declare-fun choose!36426 (List!57053 List!57053 List!57053 List!57053 List!57053) Unit!147693)

(assert (=> d!1592014 (= lt!2038058 (choose!36426 testedP!110 testedSuffix!70 testedP!110 lt!2037985 lt!2037987))))

(assert (=> d!1592014 (isPrefix!5069 testedP!110 lt!2037987)))

(assert (=> d!1592014 (= (lemmaSamePrefixThenSameSuffix!2461 testedP!110 testedSuffix!70 testedP!110 lt!2037985 lt!2037987) lt!2038058)))

(declare-fun bs!1181538 () Bool)

(assert (= bs!1181538 d!1592014))

(declare-fun m!5967240 () Bool)

(assert (=> bs!1181538 m!5967240))

(assert (=> bs!1181538 m!5967138))

(assert (=> b!4944101 d!1592014))

(declare-fun d!1592016 () Bool)

(declare-fun lt!2038061 () List!57053)

(assert (=> d!1592016 (= (++!12448 testedP!110 lt!2038061) lt!2037987)))

(declare-fun e!3089061 () List!57053)

(assert (=> d!1592016 (= lt!2038061 e!3089061)))

(declare-fun c!843563 () Bool)

(assert (=> d!1592016 (= c!843563 ((_ is Cons!56929) testedP!110))))

(assert (=> d!1592016 (>= (size!37755 lt!2037987) (size!37755 testedP!110))))

(assert (=> d!1592016 (= (getSuffix!3051 lt!2037987 testedP!110) lt!2038061)))

(declare-fun b!4944175 () Bool)

(declare-fun tail!9733 (List!57053) List!57053)

(assert (=> b!4944175 (= e!3089061 (getSuffix!3051 (tail!9733 lt!2037987) (t!367589 testedP!110)))))

(declare-fun b!4944176 () Bool)

(assert (=> b!4944176 (= e!3089061 lt!2037987)))

(assert (= (and d!1592016 c!843563) b!4944175))

(assert (= (and d!1592016 (not c!843563)) b!4944176))

(declare-fun m!5967242 () Bool)

(assert (=> d!1592016 m!5967242))

(declare-fun m!5967244 () Bool)

(assert (=> d!1592016 m!5967244))

(assert (=> d!1592016 m!5967128))

(declare-fun m!5967246 () Bool)

(assert (=> b!4944175 m!5967246))

(assert (=> b!4944175 m!5967246))

(declare-fun m!5967248 () Bool)

(assert (=> b!4944175 m!5967248))

(assert (=> b!4944101 d!1592016))

(declare-fun b!4944188 () Bool)

(declare-fun e!3089068 () Bool)

(assert (=> b!4944188 (= e!3089068 (>= (size!37755 lt!2037987) (size!37755 testedP!110)))))

(declare-fun b!4944185 () Bool)

(declare-fun e!3089070 () Bool)

(declare-fun e!3089069 () Bool)

(assert (=> b!4944185 (= e!3089070 e!3089069)))

(declare-fun res!2109755 () Bool)

(assert (=> b!4944185 (=> (not res!2109755) (not e!3089069))))

(assert (=> b!4944185 (= res!2109755 (not ((_ is Nil!56929) lt!2037987)))))

(declare-fun b!4944186 () Bool)

(declare-fun res!2109754 () Bool)

(assert (=> b!4944186 (=> (not res!2109754) (not e!3089069))))

(declare-fun head!10594 (List!57053) C!27176)

(assert (=> b!4944186 (= res!2109754 (= (head!10594 testedP!110) (head!10594 lt!2037987)))))

(declare-fun b!4944187 () Bool)

(assert (=> b!4944187 (= e!3089069 (isPrefix!5069 (tail!9733 testedP!110) (tail!9733 lt!2037987)))))

(declare-fun d!1592018 () Bool)

(assert (=> d!1592018 e!3089068))

(declare-fun res!2109757 () Bool)

(assert (=> d!1592018 (=> res!2109757 e!3089068)))

(declare-fun lt!2038064 () Bool)

(assert (=> d!1592018 (= res!2109757 (not lt!2038064))))

(assert (=> d!1592018 (= lt!2038064 e!3089070)))

(declare-fun res!2109756 () Bool)

(assert (=> d!1592018 (=> res!2109756 e!3089070)))

(assert (=> d!1592018 (= res!2109756 ((_ is Nil!56929) testedP!110))))

(assert (=> d!1592018 (= (isPrefix!5069 testedP!110 lt!2037987) lt!2038064)))

(assert (= (and d!1592018 (not res!2109756)) b!4944185))

(assert (= (and b!4944185 res!2109755) b!4944186))

(assert (= (and b!4944186 res!2109754) b!4944187))

(assert (= (and d!1592018 (not res!2109757)) b!4944188))

(assert (=> b!4944188 m!5967244))

(assert (=> b!4944188 m!5967128))

(declare-fun m!5967250 () Bool)

(assert (=> b!4944186 m!5967250))

(declare-fun m!5967252 () Bool)

(assert (=> b!4944186 m!5967252))

(declare-fun m!5967254 () Bool)

(assert (=> b!4944187 m!5967254))

(assert (=> b!4944187 m!5967246))

(assert (=> b!4944187 m!5967254))

(assert (=> b!4944187 m!5967246))

(declare-fun m!5967256 () Bool)

(assert (=> b!4944187 m!5967256))

(assert (=> b!4944106 d!1592018))

(declare-fun b!4944192 () Bool)

(declare-fun e!3089071 () Bool)

(assert (=> b!4944192 (= e!3089071 (>= (size!37755 lt!2037984) (size!37755 testedP!110)))))

(declare-fun b!4944189 () Bool)

(declare-fun e!3089073 () Bool)

(declare-fun e!3089072 () Bool)

(assert (=> b!4944189 (= e!3089073 e!3089072)))

(declare-fun res!2109759 () Bool)

(assert (=> b!4944189 (=> (not res!2109759) (not e!3089072))))

(assert (=> b!4944189 (= res!2109759 (not ((_ is Nil!56929) lt!2037984)))))

(declare-fun b!4944190 () Bool)

(declare-fun res!2109758 () Bool)

(assert (=> b!4944190 (=> (not res!2109758) (not e!3089072))))

(assert (=> b!4944190 (= res!2109758 (= (head!10594 testedP!110) (head!10594 lt!2037984)))))

(declare-fun b!4944191 () Bool)

(assert (=> b!4944191 (= e!3089072 (isPrefix!5069 (tail!9733 testedP!110) (tail!9733 lt!2037984)))))

(declare-fun d!1592020 () Bool)

(assert (=> d!1592020 e!3089071))

(declare-fun res!2109761 () Bool)

(assert (=> d!1592020 (=> res!2109761 e!3089071)))

(declare-fun lt!2038065 () Bool)

(assert (=> d!1592020 (= res!2109761 (not lt!2038065))))

(assert (=> d!1592020 (= lt!2038065 e!3089073)))

(declare-fun res!2109760 () Bool)

(assert (=> d!1592020 (=> res!2109760 e!3089073)))

(assert (=> d!1592020 (= res!2109760 ((_ is Nil!56929) testedP!110))))

(assert (=> d!1592020 (= (isPrefix!5069 testedP!110 lt!2037984) lt!2038065)))

(assert (= (and d!1592020 (not res!2109760)) b!4944189))

(assert (= (and b!4944189 res!2109759) b!4944190))

(assert (= (and b!4944190 res!2109758) b!4944191))

(assert (= (and d!1592020 (not res!2109761)) b!4944192))

(declare-fun m!5967258 () Bool)

(assert (=> b!4944192 m!5967258))

(assert (=> b!4944192 m!5967128))

(assert (=> b!4944190 m!5967250))

(declare-fun m!5967260 () Bool)

(assert (=> b!4944190 m!5967260))

(assert (=> b!4944191 m!5967254))

(declare-fun m!5967262 () Bool)

(assert (=> b!4944191 m!5967262))

(assert (=> b!4944191 m!5967254))

(assert (=> b!4944191 m!5967262))

(declare-fun m!5967264 () Bool)

(assert (=> b!4944191 m!5967264))

(assert (=> b!4944106 d!1592020))

(declare-fun d!1592022 () Bool)

(assert (=> d!1592022 (isPrefix!5069 testedP!110 (++!12448 testedP!110 testedSuffix!70))))

(declare-fun lt!2038068 () Unit!147693)

(declare-fun choose!36427 (List!57053 List!57053) Unit!147693)

(assert (=> d!1592022 (= lt!2038068 (choose!36427 testedP!110 testedSuffix!70))))

(assert (=> d!1592022 (= (lemmaConcatTwoListThenFirstIsPrefix!3293 testedP!110 testedSuffix!70) lt!2038068)))

(declare-fun bs!1181539 () Bool)

(assert (= bs!1181539 d!1592022))

(assert (=> bs!1181539 m!5967150))

(assert (=> bs!1181539 m!5967150))

(declare-fun m!5967266 () Bool)

(assert (=> bs!1181539 m!5967266))

(declare-fun m!5967268 () Bool)

(assert (=> bs!1181539 m!5967268))

(assert (=> b!4944106 d!1592022))

(declare-fun d!1592024 () Bool)

(declare-fun lt!2038093 () Int)

(assert (=> d!1592024 (= lt!2038093 (size!37755 (list!18129 totalInput!685)))))

(declare-fun size!37758 (Conc!14982) Int)

(assert (=> d!1592024 (= lt!2038093 (size!37758 (c!843524 totalInput!685)))))

(assert (=> d!1592024 (= (size!37756 totalInput!685) lt!2038093)))

(declare-fun bs!1181540 () Bool)

(assert (= bs!1181540 d!1592024))

(assert (=> bs!1181540 m!5967148))

(assert (=> bs!1181540 m!5967148))

(declare-fun m!5967270 () Bool)

(assert (=> bs!1181540 m!5967270))

(declare-fun m!5967272 () Bool)

(assert (=> bs!1181540 m!5967272))

(assert (=> b!4944104 d!1592024))

(declare-fun d!1592026 () Bool)

(declare-fun lt!2038126 () Int)

(assert (=> d!1592026 (>= lt!2038126 0)))

(declare-fun e!3089088 () Int)

(assert (=> d!1592026 (= lt!2038126 e!3089088)))

(declare-fun c!843578 () Bool)

(assert (=> d!1592026 (= c!843578 ((_ is Nil!56929) testedP!110))))

(assert (=> d!1592026 (= (size!37755 testedP!110) lt!2038126)))

(declare-fun b!4944221 () Bool)

(assert (=> b!4944221 (= e!3089088 0)))

(declare-fun b!4944222 () Bool)

(assert (=> b!4944222 (= e!3089088 (+ 1 (size!37755 (t!367589 testedP!110))))))

(assert (= (and d!1592026 c!843578) b!4944221))

(assert (= (and d!1592026 (not c!843578)) b!4944222))

(declare-fun m!5967274 () Bool)

(assert (=> b!4944222 m!5967274))

(assert (=> b!4944105 d!1592026))

(declare-fun d!1592028 () Bool)

(declare-fun lt!2038127 () Int)

(assert (=> d!1592028 (>= lt!2038127 0)))

(declare-fun e!3089089 () Int)

(assert (=> d!1592028 (= lt!2038127 e!3089089)))

(declare-fun c!843579 () Bool)

(assert (=> d!1592028 (= c!843579 ((_ is Nil!56929) (_1!34041 (findLongestMatchInnerZipper!72 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2037987 totalInputSize!132))))))

(assert (=> d!1592028 (= (size!37755 (_1!34041 (findLongestMatchInnerZipper!72 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2037987 totalInputSize!132))) lt!2038127)))

(declare-fun b!4944223 () Bool)

(assert (=> b!4944223 (= e!3089089 0)))

(declare-fun b!4944224 () Bool)

(assert (=> b!4944224 (= e!3089089 (+ 1 (size!37755 (t!367589 (_1!34041 (findLongestMatchInnerZipper!72 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2037987 totalInputSize!132))))))))

(assert (= (and d!1592028 c!843579) b!4944223))

(assert (= (and d!1592028 (not c!843579)) b!4944224))

(declare-fun m!5967276 () Bool)

(assert (=> b!4944224 m!5967276))

(assert (=> b!4944103 d!1592028))

(declare-fun bm!345020 () Bool)

(declare-fun call!345029 () Bool)

(assert (=> bm!345020 (= call!345029 (isPrefix!5069 lt!2037987 lt!2037987))))

(declare-fun b!4944298 () Bool)

(declare-fun e!3089134 () tuple2!61476)

(assert (=> b!4944298 (= e!3089134 (tuple2!61477 testedP!110 Nil!56929))))

(declare-fun d!1592030 () Bool)

(declare-fun e!3089139 () Bool)

(assert (=> d!1592030 e!3089139))

(declare-fun res!2109772 () Bool)

(assert (=> d!1592030 (=> (not res!2109772) (not e!3089139))))

(declare-fun lt!2038234 () tuple2!61476)

(assert (=> d!1592030 (= res!2109772 (= (++!12448 (_1!34041 lt!2038234) (_2!34041 lt!2038234)) lt!2037987))))

(declare-fun e!3089135 () tuple2!61476)

(assert (=> d!1592030 (= lt!2038234 e!3089135)))

(declare-fun c!843598 () Bool)

(assert (=> d!1592030 (= c!843598 (lostCauseZipper!781 z!3568))))

(declare-fun lt!2038216 () Unit!147693)

(declare-fun Unit!147702 () Unit!147693)

(assert (=> d!1592030 (= lt!2038216 Unit!147702)))

(assert (=> d!1592030 (= (getSuffix!3051 lt!2037987 testedP!110) testedSuffix!70)))

(declare-fun lt!2038233 () Unit!147693)

(declare-fun lt!2038224 () Unit!147693)

(assert (=> d!1592030 (= lt!2038233 lt!2038224)))

(declare-fun lt!2038221 () List!57053)

(assert (=> d!1592030 (= testedSuffix!70 lt!2038221)))

(assert (=> d!1592030 (= lt!2038224 (lemmaSamePrefixThenSameSuffix!2461 testedP!110 testedSuffix!70 testedP!110 lt!2038221 lt!2037987))))

(assert (=> d!1592030 (= lt!2038221 (getSuffix!3051 lt!2037987 testedP!110))))

(declare-fun lt!2038220 () Unit!147693)

(declare-fun lt!2038217 () Unit!147693)

(assert (=> d!1592030 (= lt!2038220 lt!2038217)))

(assert (=> d!1592030 (isPrefix!5069 testedP!110 (++!12448 testedP!110 testedSuffix!70))))

(assert (=> d!1592030 (= lt!2038217 (lemmaConcatTwoListThenFirstIsPrefix!3293 testedP!110 testedSuffix!70))))

(assert (=> d!1592030 (= (++!12448 testedP!110 testedSuffix!70) lt!2037987)))

(assert (=> d!1592030 (= (findLongestMatchInnerZipper!72 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2037987 totalInputSize!132) lt!2038234)))

(declare-fun bm!345021 () Bool)

(declare-fun call!345030 () Unit!147693)

(declare-fun lemmaIsPrefixRefl!3415 (List!57053 List!57053) Unit!147693)

(assert (=> bm!345021 (= call!345030 (lemmaIsPrefixRefl!3415 lt!2037987 lt!2037987))))

(declare-fun b!4944299 () Bool)

(declare-fun e!3089137 () Bool)

(assert (=> b!4944299 (= e!3089139 e!3089137)))

(declare-fun res!2109773 () Bool)

(assert (=> b!4944299 (=> res!2109773 e!3089137)))

(declare-fun isEmpty!30645 (List!57053) Bool)

(assert (=> b!4944299 (= res!2109773 (isEmpty!30645 (_1!34041 lt!2038234)))))

(declare-fun bm!345022 () Bool)

(declare-fun call!345027 () Bool)

(declare-fun nullableZipper!852 ((InoxSet Context!6210)) Bool)

(assert (=> bm!345022 (= call!345027 (nullableZipper!852 z!3568))))

(declare-fun b!4944300 () Bool)

(declare-fun e!3089141 () tuple2!61476)

(declare-fun lt!2038229 () tuple2!61476)

(assert (=> b!4944300 (= e!3089141 lt!2038229)))

(declare-fun b!4944301 () Bool)

(declare-fun e!3089140 () tuple2!61476)

(assert (=> b!4944301 (= e!3089135 e!3089140)))

(declare-fun c!843599 () Bool)

(assert (=> b!4944301 (= c!843599 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4944302 () Bool)

(declare-fun e!3089138 () tuple2!61476)

(assert (=> b!4944302 (= e!3089138 e!3089141)))

(declare-fun call!345032 () tuple2!61476)

(assert (=> b!4944302 (= lt!2038229 call!345032)))

(declare-fun c!843603 () Bool)

(assert (=> b!4944302 (= c!843603 (isEmpty!30645 (_1!34041 lt!2038229)))))

(declare-fun b!4944303 () Bool)

(declare-fun e!3089136 () Unit!147693)

(declare-fun Unit!147703 () Unit!147693)

(assert (=> b!4944303 (= e!3089136 Unit!147703)))

(declare-fun call!345031 () List!57053)

(declare-fun lt!2038225 () List!57053)

(declare-fun bm!345023 () Bool)

(declare-fun call!345028 () (InoxSet Context!6210))

(assert (=> bm!345023 (= call!345032 (findLongestMatchInnerZipper!72 call!345028 lt!2038225 (+ testedPSize!70 1) call!345031 lt!2037987 totalInputSize!132))))

(declare-fun b!4944304 () Bool)

(assert (=> b!4944304 (= e!3089141 (tuple2!61477 testedP!110 testedSuffix!70))))

(declare-fun bm!345024 () Bool)

(declare-fun call!345025 () C!27176)

(declare-fun derivationStepZipper!606 ((InoxSet Context!6210) C!27176) (InoxSet Context!6210))

(assert (=> bm!345024 (= call!345028 (derivationStepZipper!606 z!3568 call!345025))))

(declare-fun b!4944305 () Bool)

(assert (=> b!4944305 (= e!3089134 (tuple2!61477 Nil!56929 lt!2037987))))

(declare-fun b!4944306 () Bool)

(declare-fun Unit!147704 () Unit!147693)

(assert (=> b!4944306 (= e!3089136 Unit!147704)))

(declare-fun lt!2038213 () Unit!147693)

(assert (=> b!4944306 (= lt!2038213 call!345030)))

(assert (=> b!4944306 call!345029))

(declare-fun lt!2038214 () Unit!147693)

(assert (=> b!4944306 (= lt!2038214 lt!2038213)))

(declare-fun lt!2038232 () Unit!147693)

(declare-fun call!345026 () Unit!147693)

(assert (=> b!4944306 (= lt!2038232 call!345026)))

(assert (=> b!4944306 (= lt!2037987 testedP!110)))

(declare-fun lt!2038211 () Unit!147693)

(assert (=> b!4944306 (= lt!2038211 lt!2038232)))

(assert (=> b!4944306 false))

(declare-fun b!4944307 () Bool)

(assert (=> b!4944307 (= e!3089135 (tuple2!61477 Nil!56929 lt!2037987))))

(declare-fun bm!345025 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1173 (List!57053 List!57053 List!57053) Unit!147693)

(assert (=> bm!345025 (= call!345026 (lemmaIsPrefixSameLengthThenSameList!1173 lt!2037987 testedP!110 lt!2037987))))

(declare-fun bm!345026 () Bool)

(assert (=> bm!345026 (= call!345031 (tail!9733 testedSuffix!70))))

(declare-fun bm!345027 () Bool)

(assert (=> bm!345027 (= call!345025 (head!10594 testedSuffix!70))))

(declare-fun b!4944308 () Bool)

(declare-fun c!843601 () Bool)

(assert (=> b!4944308 (= c!843601 call!345027)))

(declare-fun lt!2038218 () Unit!147693)

(declare-fun lt!2038210 () Unit!147693)

(assert (=> b!4944308 (= lt!2038218 lt!2038210)))

(assert (=> b!4944308 (= lt!2037987 testedP!110)))

(assert (=> b!4944308 (= lt!2038210 call!345026)))

(declare-fun lt!2038219 () Unit!147693)

(declare-fun lt!2038215 () Unit!147693)

(assert (=> b!4944308 (= lt!2038219 lt!2038215)))

(assert (=> b!4944308 call!345029))

(assert (=> b!4944308 (= lt!2038215 call!345030)))

(assert (=> b!4944308 (= e!3089140 e!3089134)))

(declare-fun b!4944309 () Bool)

(assert (=> b!4944309 (= e!3089137 (>= (size!37755 (_1!34041 lt!2038234)) (size!37755 testedP!110)))))

(declare-fun b!4944310 () Bool)

(assert (=> b!4944310 (= e!3089138 call!345032)))

(declare-fun b!4944311 () Bool)

(declare-fun c!843602 () Bool)

(assert (=> b!4944311 (= c!843602 call!345027)))

(declare-fun lt!2038230 () Unit!147693)

(declare-fun lt!2038227 () Unit!147693)

(assert (=> b!4944311 (= lt!2038230 lt!2038227)))

(declare-fun lt!2038212 () List!57053)

(declare-fun lt!2038222 () C!27176)

(assert (=> b!4944311 (= (++!12448 (++!12448 testedP!110 (Cons!56929 lt!2038222 Nil!56929)) lt!2038212) lt!2037987)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1427 (List!57053 C!27176 List!57053 List!57053) Unit!147693)

(assert (=> b!4944311 (= lt!2038227 (lemmaMoveElementToOtherListKeepsConcatEq!1427 testedP!110 lt!2038222 lt!2038212 lt!2037987))))

(assert (=> b!4944311 (= lt!2038212 (tail!9733 testedSuffix!70))))

(assert (=> b!4944311 (= lt!2038222 (head!10594 testedSuffix!70))))

(declare-fun lt!2038231 () Unit!147693)

(declare-fun lt!2038228 () Unit!147693)

(assert (=> b!4944311 (= lt!2038231 lt!2038228)))

(assert (=> b!4944311 (isPrefix!5069 (++!12448 testedP!110 (Cons!56929 (head!10594 (getSuffix!3051 lt!2037987 testedP!110)) Nil!56929)) lt!2037987)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!815 (List!57053 List!57053) Unit!147693)

(assert (=> b!4944311 (= lt!2038228 (lemmaAddHeadSuffixToPrefixStillPrefix!815 testedP!110 lt!2037987))))

(assert (=> b!4944311 (= lt!2038225 (++!12448 testedP!110 (Cons!56929 (head!10594 testedSuffix!70) Nil!56929)))))

(declare-fun lt!2038223 () Unit!147693)

(assert (=> b!4944311 (= lt!2038223 e!3089136)))

(declare-fun c!843600 () Bool)

(assert (=> b!4944311 (= c!843600 (= (size!37755 testedP!110) (size!37755 lt!2037987)))))

(declare-fun lt!2038226 () Unit!147693)

(declare-fun lt!2038209 () Unit!147693)

(assert (=> b!4944311 (= lt!2038226 lt!2038209)))

(assert (=> b!4944311 (<= (size!37755 testedP!110) (size!37755 lt!2037987))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!735 (List!57053 List!57053) Unit!147693)

(assert (=> b!4944311 (= lt!2038209 (lemmaIsPrefixThenSmallerEqSize!735 testedP!110 lt!2037987))))

(assert (=> b!4944311 (= e!3089140 e!3089138)))

(assert (= (and d!1592030 c!843598) b!4944307))

(assert (= (and d!1592030 (not c!843598)) b!4944301))

(assert (= (and b!4944301 c!843599) b!4944308))

(assert (= (and b!4944301 (not c!843599)) b!4944311))

(assert (= (and b!4944308 c!843601) b!4944298))

(assert (= (and b!4944308 (not c!843601)) b!4944305))

(assert (= (and b!4944311 c!843600) b!4944306))

(assert (= (and b!4944311 (not c!843600)) b!4944303))

(assert (= (and b!4944311 c!843602) b!4944302))

(assert (= (and b!4944311 (not c!843602)) b!4944310))

(assert (= (and b!4944302 c!843603) b!4944304))

(assert (= (and b!4944302 (not c!843603)) b!4944300))

(assert (= (or b!4944302 b!4944310) bm!345026))

(assert (= (or b!4944302 b!4944310) bm!345027))

(assert (= (or b!4944302 b!4944310) bm!345024))

(assert (= (or b!4944302 b!4944310) bm!345023))

(assert (= (or b!4944308 b!4944306) bm!345021))

(assert (= (or b!4944308 b!4944306) bm!345020))

(assert (= (or b!4944308 b!4944306) bm!345025))

(assert (= (or b!4944308 b!4944311) bm!345022))

(assert (= (and d!1592030 res!2109772) b!4944299))

(assert (= (and b!4944299 (not res!2109773)) b!4944309))

(declare-fun m!5967336 () Bool)

(assert (=> bm!345023 m!5967336))

(declare-fun m!5967338 () Bool)

(assert (=> b!4944302 m!5967338))

(declare-fun m!5967340 () Bool)

(assert (=> bm!345025 m!5967340))

(declare-fun m!5967342 () Bool)

(assert (=> bm!345026 m!5967342))

(declare-fun m!5967344 () Bool)

(assert (=> bm!345020 m!5967344))

(declare-fun m!5967346 () Bool)

(assert (=> b!4944299 m!5967346))

(declare-fun m!5967348 () Bool)

(assert (=> bm!345027 m!5967348))

(declare-fun m!5967350 () Bool)

(assert (=> b!4944309 m!5967350))

(assert (=> b!4944309 m!5967128))

(declare-fun m!5967352 () Bool)

(assert (=> bm!345021 m!5967352))

(declare-fun m!5967354 () Bool)

(assert (=> b!4944311 m!5967354))

(declare-fun m!5967356 () Bool)

(assert (=> b!4944311 m!5967356))

(declare-fun m!5967358 () Bool)

(assert (=> b!4944311 m!5967358))

(declare-fun m!5967360 () Bool)

(assert (=> b!4944311 m!5967360))

(assert (=> b!4944311 m!5967358))

(declare-fun m!5967362 () Bool)

(assert (=> b!4944311 m!5967362))

(declare-fun m!5967364 () Bool)

(assert (=> b!4944311 m!5967364))

(assert (=> b!4944311 m!5967136))

(declare-fun m!5967366 () Bool)

(assert (=> b!4944311 m!5967366))

(declare-fun m!5967368 () Bool)

(assert (=> b!4944311 m!5967368))

(assert (=> b!4944311 m!5967128))

(assert (=> b!4944311 m!5967354))

(assert (=> b!4944311 m!5967348))

(assert (=> b!4944311 m!5967136))

(declare-fun m!5967370 () Bool)

(assert (=> b!4944311 m!5967370))

(assert (=> b!4944311 m!5967342))

(assert (=> b!4944311 m!5967244))

(assert (=> d!1592030 m!5967142))

(assert (=> d!1592030 m!5967150))

(assert (=> d!1592030 m!5967136))

(declare-fun m!5967372 () Bool)

(assert (=> d!1592030 m!5967372))

(assert (=> d!1592030 m!5967150))

(assert (=> d!1592030 m!5967266))

(declare-fun m!5967374 () Bool)

(assert (=> d!1592030 m!5967374))

(assert (=> d!1592030 m!5967132))

(declare-fun m!5967376 () Bool)

(assert (=> bm!345022 m!5967376))

(declare-fun m!5967378 () Bool)

(assert (=> bm!345024 m!5967378))

(assert (=> b!4944103 d!1592030))

(declare-fun d!1592036 () Bool)

(declare-fun c!843606 () Bool)

(assert (=> d!1592036 (= c!843606 ((_ is Node!14982) (c!843524 totalInput!685)))))

(declare-fun e!3089146 () Bool)

(assert (=> d!1592036 (= (inv!74098 (c!843524 totalInput!685)) e!3089146)))

(declare-fun b!4944318 () Bool)

(declare-fun inv!74104 (Conc!14982) Bool)

(assert (=> b!4944318 (= e!3089146 (inv!74104 (c!843524 totalInput!685)))))

(declare-fun b!4944319 () Bool)

(declare-fun e!3089147 () Bool)

(assert (=> b!4944319 (= e!3089146 e!3089147)))

(declare-fun res!2109776 () Bool)

(assert (=> b!4944319 (= res!2109776 (not ((_ is Leaf!24906) (c!843524 totalInput!685))))))

(assert (=> b!4944319 (=> res!2109776 e!3089147)))

(declare-fun b!4944320 () Bool)

(declare-fun inv!74105 (Conc!14982) Bool)

(assert (=> b!4944320 (= e!3089147 (inv!74105 (c!843524 totalInput!685)))))

(assert (= (and d!1592036 c!843606) b!4944318))

(assert (= (and d!1592036 (not c!843606)) b!4944319))

(assert (= (and b!4944319 (not res!2109776)) b!4944320))

(declare-fun m!5967380 () Bool)

(assert (=> b!4944318 m!5967380))

(declare-fun m!5967382 () Bool)

(assert (=> b!4944320 m!5967382))

(assert (=> b!4944099 d!1592036))

(declare-fun d!1592038 () Bool)

(declare-fun list!18131 (Conc!14982) List!57053)

(assert (=> d!1592038 (= (list!18129 totalInput!685) (list!18131 (c!843524 totalInput!685)))))

(declare-fun bs!1181543 () Bool)

(assert (= bs!1181543 d!1592038))

(declare-fun m!5967384 () Bool)

(assert (=> bs!1181543 m!5967384))

(assert (=> start!520324 d!1592038))

(declare-fun d!1592040 () Bool)

(declare-fun e!3089152 () Bool)

(assert (=> d!1592040 e!3089152))

(declare-fun res!2109782 () Bool)

(assert (=> d!1592040 (=> (not res!2109782) (not e!3089152))))

(declare-fun lt!2038237 () List!57053)

(declare-fun content!10135 (List!57053) (InoxSet C!27176))

(assert (=> d!1592040 (= res!2109782 (= (content!10135 lt!2038237) ((_ map or) (content!10135 testedP!110) (content!10135 testedSuffix!70))))))

(declare-fun e!3089153 () List!57053)

(assert (=> d!1592040 (= lt!2038237 e!3089153)))

(declare-fun c!843609 () Bool)

(assert (=> d!1592040 (= c!843609 ((_ is Nil!56929) testedP!110))))

(assert (=> d!1592040 (= (++!12448 testedP!110 testedSuffix!70) lt!2038237)))

(declare-fun b!4944330 () Bool)

(assert (=> b!4944330 (= e!3089153 (Cons!56929 (h!63377 testedP!110) (++!12448 (t!367589 testedP!110) testedSuffix!70)))))

(declare-fun b!4944329 () Bool)

(assert (=> b!4944329 (= e!3089153 testedSuffix!70)))

(declare-fun b!4944332 () Bool)

(assert (=> b!4944332 (= e!3089152 (or (not (= testedSuffix!70 Nil!56929)) (= lt!2038237 testedP!110)))))

(declare-fun b!4944331 () Bool)

(declare-fun res!2109781 () Bool)

(assert (=> b!4944331 (=> (not res!2109781) (not e!3089152))))

(assert (=> b!4944331 (= res!2109781 (= (size!37755 lt!2038237) (+ (size!37755 testedP!110) (size!37755 testedSuffix!70))))))

(assert (= (and d!1592040 c!843609) b!4944329))

(assert (= (and d!1592040 (not c!843609)) b!4944330))

(assert (= (and d!1592040 res!2109782) b!4944331))

(assert (= (and b!4944331 res!2109781) b!4944332))

(declare-fun m!5967386 () Bool)

(assert (=> d!1592040 m!5967386))

(declare-fun m!5967388 () Bool)

(assert (=> d!1592040 m!5967388))

(declare-fun m!5967390 () Bool)

(assert (=> d!1592040 m!5967390))

(declare-fun m!5967392 () Bool)

(assert (=> b!4944330 m!5967392))

(declare-fun m!5967394 () Bool)

(assert (=> b!4944331 m!5967394))

(assert (=> b!4944331 m!5967128))

(declare-fun m!5967396 () Bool)

(assert (=> b!4944331 m!5967396))

(assert (=> start!520324 d!1592040))

(declare-fun d!1592042 () Bool)

(declare-fun isBalanced!4140 (Conc!14982) Bool)

(assert (=> d!1592042 (= (inv!74099 totalInput!685) (isBalanced!4140 (c!843524 totalInput!685)))))

(declare-fun bs!1181544 () Bool)

(assert (= bs!1181544 d!1592042))

(declare-fun m!5967398 () Bool)

(assert (=> bs!1181544 m!5967398))

(assert (=> start!520324 d!1592042))

(declare-fun condSetEmpty!27962 () Bool)

(assert (=> setNonEmpty!27956 (= condSetEmpty!27962 (= setRest!27956 ((as const (Array Context!6210 Bool)) false)))))

(declare-fun setRes!27962 () Bool)

(assert (=> setNonEmpty!27956 (= tp!1386863 setRes!27962)))

(declare-fun setIsEmpty!27962 () Bool)

(assert (=> setIsEmpty!27962 setRes!27962))

(declare-fun setNonEmpty!27962 () Bool)

(declare-fun setElem!27962 () Context!6210)

(declare-fun e!3089156 () Bool)

(declare-fun tp!1386896 () Bool)

(assert (=> setNonEmpty!27962 (= setRes!27962 (and tp!1386896 (inv!74100 setElem!27962) e!3089156))))

(declare-fun setRest!27962 () (InoxSet Context!6210))

(assert (=> setNonEmpty!27962 (= setRest!27956 ((_ map or) (store ((as const (Array Context!6210 Bool)) false) setElem!27962 true) setRest!27962))))

(declare-fun b!4944337 () Bool)

(declare-fun tp!1386895 () Bool)

(assert (=> b!4944337 (= e!3089156 tp!1386895)))

(assert (= (and setNonEmpty!27956 condSetEmpty!27962) setIsEmpty!27962))

(assert (= (and setNonEmpty!27956 (not condSetEmpty!27962)) setNonEmpty!27962))

(assert (= setNonEmpty!27962 b!4944337))

(declare-fun m!5967400 () Bool)

(assert (=> setNonEmpty!27962 m!5967400))

(declare-fun b!4944342 () Bool)

(declare-fun e!3089159 () Bool)

(declare-fun tp!1386899 () Bool)

(assert (=> b!4944342 (= e!3089159 (and tp_is_empty!36123 tp!1386899))))

(assert (=> b!4944100 (= tp!1386864 e!3089159)))

(assert (= (and b!4944100 ((_ is Cons!56929) (t!367589 testedP!110))) b!4944342))

(declare-fun b!4944343 () Bool)

(declare-fun e!3089160 () Bool)

(declare-fun tp!1386900 () Bool)

(assert (=> b!4944343 (= e!3089160 (and tp_is_empty!36123 tp!1386900))))

(assert (=> b!4944107 (= tp!1386865 e!3089160)))

(assert (= (and b!4944107 ((_ is Cons!56929) (t!367589 testedSuffix!70))) b!4944343))

(declare-fun e!3089166 () Bool)

(declare-fun b!4944352 () Bool)

(declare-fun tp!1386907 () Bool)

(declare-fun tp!1386909 () Bool)

(assert (=> b!4944352 (= e!3089166 (and (inv!74098 (left!41539 (c!843524 totalInput!685))) tp!1386907 (inv!74098 (right!41869 (c!843524 totalInput!685))) tp!1386909))))

(declare-fun b!4944354 () Bool)

(declare-fun e!3089165 () Bool)

(declare-fun tp!1386908 () Bool)

(assert (=> b!4944354 (= e!3089165 tp!1386908)))

(declare-fun b!4944353 () Bool)

(declare-fun inv!74106 (IArray!30025) Bool)

(assert (=> b!4944353 (= e!3089166 (and (inv!74106 (xs!18308 (c!843524 totalInput!685))) e!3089165))))

(assert (=> b!4944099 (= tp!1386862 (and (inv!74098 (c!843524 totalInput!685)) e!3089166))))

(assert (= (and b!4944099 ((_ is Node!14982) (c!843524 totalInput!685))) b!4944352))

(assert (= b!4944353 b!4944354))

(assert (= (and b!4944099 ((_ is Leaf!24906) (c!843524 totalInput!685))) b!4944353))

(declare-fun m!5967402 () Bool)

(assert (=> b!4944352 m!5967402))

(declare-fun m!5967404 () Bool)

(assert (=> b!4944352 m!5967404))

(declare-fun m!5967406 () Bool)

(assert (=> b!4944353 m!5967406))

(assert (=> b!4944099 m!5967126))

(declare-fun b!4944359 () Bool)

(declare-fun e!3089169 () Bool)

(declare-fun tp!1386914 () Bool)

(declare-fun tp!1386915 () Bool)

(assert (=> b!4944359 (= e!3089169 (and tp!1386914 tp!1386915))))

(assert (=> b!4944102 (= tp!1386861 e!3089169)))

(assert (= (and b!4944102 ((_ is Cons!56930) (exprs!3605 setElem!27956))) b!4944359))

(check-sat (not b!4944186) (not d!1592012) (not b!4944309) (not b!4944359) (not b!4944352) (not bm!345021) (not b!4944299) (not b!4944190) (not bm!345027) (not bm!345025) (not b!4944191) (not d!1592016) (not d!1591986) (not d!1592024) (not b!4944353) (not bm!345026) (not d!1592038) (not bm!345023) (not bm!345020) (not b!4944170) (not b!4944311) (not b!4944099) (not bm!344978) (not b!4944302) (not setNonEmpty!27962) (not b!4944342) (not b!4944175) (not d!1592040) (not bm!344979) (not bm!345024) (not b!4944222) (not b!4944192) (not d!1592014) (not b!4944187) (not b!4944169) (not b!4944337) (not b!4944224) (not b!4944330) (not b!4944354) (not b!4944318) (not b!4944320) (not bm!345022) tp_is_empty!36123 (not b!4944343) (not d!1592042) (not d!1592022) (not d!1592030) (not b!4944188) (not b!4944331))
(check-sat)
