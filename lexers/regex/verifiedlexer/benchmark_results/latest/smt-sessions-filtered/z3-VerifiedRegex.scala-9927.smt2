; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520508 () Bool)

(assert start!520508)

(declare-datatypes ((C!27192 0))(
  ( (C!27193 (val!22930 Int)) )
))
(declare-datatypes ((List!57074 0))(
  ( (Nil!56950) (Cons!56950 (h!63398 C!27192) (t!367610 List!57074)) )
))
(declare-fun testedP!110 () List!57074)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13471 0))(
  ( (ElementMatch!13471 (c!843760 C!27192)) (Concat!22044 (regOne!27454 Regex!13471) (regTwo!27454 Regex!13471)) (EmptyExpr!13471) (Star!13471 (reg!13800 Regex!13471)) (EmptyLang!13471) (Union!13471 (regOne!27455 Regex!13471) (regTwo!27455 Regex!13471)) )
))
(declare-datatypes ((List!57075 0))(
  ( (Nil!56951) (Cons!56951 (h!63399 Regex!13471) (t!367611 List!57075)) )
))
(declare-datatypes ((Context!6226 0))(
  ( (Context!6227 (exprs!3613 List!57075)) )
))
(declare-fun z!3568 () (InoxSet Context!6226))

(declare-fun e!3089624 () Bool)

(declare-fun testedSuffix!70 () List!57074)

(declare-fun lt!2038764 () List!57074)

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(declare-fun b!4945048 () Bool)

(declare-fun size!37777 (List!57074) Int)

(declare-datatypes ((tuple2!61484 0))(
  ( (tuple2!61485 (_1!34045 List!57074) (_2!34045 List!57074)) )
))
(declare-fun findLongestMatchInnerZipper!76 ((InoxSet Context!6226) List!57074 Int List!57074 List!57074 Int) tuple2!61484)

(assert (=> b!4945048 (= e!3089624 (= (size!37777 (_1!34045 (findLongestMatchInnerZipper!76 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038764 totalInputSize!132))) 0))))

(declare-fun b!4945049 () Bool)

(declare-fun res!2110076 () Bool)

(assert (=> b!4945049 (=> res!2110076 e!3089624)))

(declare-fun nullableZipper!856 ((InoxSet Context!6226)) Bool)

(assert (=> b!4945049 (= res!2110076 (nullableZipper!856 z!3568))))

(declare-fun res!2110073 () Bool)

(declare-fun e!3089630 () Bool)

(assert (=> start!520508 (=> (not res!2110073) (not e!3089630))))

(declare-fun lt!2038760 () List!57074)

(assert (=> start!520508 (= res!2110073 (= lt!2038760 lt!2038764))))

(declare-datatypes ((IArray!30041 0))(
  ( (IArray!30042 (innerList!15078 List!57074)) )
))
(declare-datatypes ((Conc!14990 0))(
  ( (Node!14990 (left!41551 Conc!14990) (right!41881 Conc!14990) (csize!30210 Int) (cheight!15201 Int)) (Leaf!24918 (xs!18316 IArray!30041) (csize!30211 Int)) (Empty!14990) )
))
(declare-datatypes ((BalanceConc!29410 0))(
  ( (BalanceConc!29411 (c!843761 Conc!14990)) )
))
(declare-fun totalInput!685 () BalanceConc!29410)

(declare-fun list!18143 (BalanceConc!29410) List!57074)

(assert (=> start!520508 (= lt!2038764 (list!18143 totalInput!685))))

(declare-fun ++!12456 (List!57074 List!57074) List!57074)

(assert (=> start!520508 (= lt!2038760 (++!12456 testedP!110 testedSuffix!70))))

(assert (=> start!520508 e!3089630))

(declare-fun e!3089629 () Bool)

(assert (=> start!520508 e!3089629))

(declare-fun condSetEmpty!27998 () Bool)

(assert (=> start!520508 (= condSetEmpty!27998 (= z!3568 ((as const (Array Context!6226 Bool)) false)))))

(declare-fun setRes!27998 () Bool)

(assert (=> start!520508 setRes!27998))

(assert (=> start!520508 true))

(declare-fun e!3089627 () Bool)

(declare-fun inv!74151 (BalanceConc!29410) Bool)

(assert (=> start!520508 (and (inv!74151 totalInput!685) e!3089627)))

(declare-fun e!3089631 () Bool)

(assert (=> start!520508 e!3089631))

(declare-fun b!4945050 () Bool)

(declare-fun res!2110074 () Bool)

(declare-fun e!3089625 () Bool)

(assert (=> b!4945050 (=> res!2110074 e!3089625)))

(assert (=> b!4945050 (= res!2110074 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun setIsEmpty!27998 () Bool)

(assert (=> setIsEmpty!27998 setRes!27998))

(declare-fun b!4945051 () Bool)

(declare-fun tp_is_empty!36139 () Bool)

(declare-fun tp!1387131 () Bool)

(assert (=> b!4945051 (= e!3089631 (and tp_is_empty!36139 tp!1387131))))

(declare-fun b!4945052 () Bool)

(declare-fun tp!1387133 () Bool)

(declare-fun inv!74152 (Conc!14990) Bool)

(assert (=> b!4945052 (= e!3089627 (and (inv!74152 (c!843761 totalInput!685)) tp!1387133))))

(declare-fun b!4945053 () Bool)

(declare-fun res!2110075 () Bool)

(assert (=> b!4945053 (=> (not res!2110075) (not e!3089630))))

(declare-fun size!37778 (BalanceConc!29410) Int)

(assert (=> b!4945053 (= res!2110075 (= totalInputSize!132 (size!37778 totalInput!685)))))

(declare-fun setElem!27998 () Context!6226)

(declare-fun e!3089626 () Bool)

(declare-fun tp!1387135 () Bool)

(declare-fun setNonEmpty!27998 () Bool)

(declare-fun inv!74153 (Context!6226) Bool)

(assert (=> setNonEmpty!27998 (= setRes!27998 (and tp!1387135 (inv!74153 setElem!27998) e!3089626))))

(declare-fun setRest!27998 () (InoxSet Context!6226))

(assert (=> setNonEmpty!27998 (= z!3568 ((_ map or) (store ((as const (Array Context!6226 Bool)) false) setElem!27998 true) setRest!27998))))

(declare-fun b!4945054 () Bool)

(declare-fun e!3089628 () Bool)

(assert (=> b!4945054 (= e!3089628 e!3089625)))

(declare-fun res!2110077 () Bool)

(assert (=> b!4945054 (=> res!2110077 e!3089625)))

(declare-fun lostCauseZipper!789 ((InoxSet Context!6226)) Bool)

(assert (=> b!4945054 (= res!2110077 (lostCauseZipper!789 z!3568))))

(declare-fun lt!2038765 () List!57074)

(assert (=> b!4945054 (and (= testedSuffix!70 lt!2038765) (= lt!2038765 testedSuffix!70))))

(declare-datatypes ((Unit!147731 0))(
  ( (Unit!147732) )
))
(declare-fun lt!2038762 () Unit!147731)

(declare-fun lemmaSamePrefixThenSameSuffix!2469 (List!57074 List!57074 List!57074 List!57074 List!57074) Unit!147731)

(assert (=> b!4945054 (= lt!2038762 (lemmaSamePrefixThenSameSuffix!2469 testedP!110 testedSuffix!70 testedP!110 lt!2038765 lt!2038764))))

(declare-fun getSuffix!3059 (List!57074 List!57074) List!57074)

(assert (=> b!4945054 (= lt!2038765 (getSuffix!3059 lt!2038764 testedP!110))))

(declare-fun b!4945055 () Bool)

(declare-fun tp!1387134 () Bool)

(assert (=> b!4945055 (= e!3089626 tp!1387134)))

(declare-fun b!4945056 () Bool)

(declare-fun res!2110071 () Bool)

(assert (=> b!4945056 (=> (not res!2110071) (not e!3089630))))

(assert (=> b!4945056 (= res!2110071 (= testedPSize!70 (size!37777 testedP!110)))))

(declare-fun b!4945057 () Bool)

(assert (=> b!4945057 (= e!3089630 (not e!3089628))))

(declare-fun res!2110078 () Bool)

(assert (=> b!4945057 (=> res!2110078 e!3089628)))

(declare-fun isPrefix!5077 (List!57074 List!57074) Bool)

(assert (=> b!4945057 (= res!2110078 (not (isPrefix!5077 testedP!110 lt!2038764)))))

(assert (=> b!4945057 (isPrefix!5077 testedP!110 lt!2038760)))

(declare-fun lt!2038759 () Unit!147731)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3301 (List!57074 List!57074) Unit!147731)

(assert (=> b!4945057 (= lt!2038759 (lemmaConcatTwoListThenFirstIsPrefix!3301 testedP!110 testedSuffix!70))))

(declare-fun b!4945058 () Bool)

(declare-fun tp!1387132 () Bool)

(assert (=> b!4945058 (= e!3089629 (and tp_is_empty!36139 tp!1387132))))

(declare-fun b!4945059 () Bool)

(assert (=> b!4945059 (= e!3089625 e!3089624)))

(declare-fun res!2110072 () Bool)

(assert (=> b!4945059 (=> res!2110072 e!3089624)))

(assert (=> b!4945059 (= res!2110072 (not (= testedP!110 lt!2038764)))))

(assert (=> b!4945059 (= lt!2038764 testedP!110)))

(declare-fun lt!2038761 () Unit!147731)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1177 (List!57074 List!57074 List!57074) Unit!147731)

(assert (=> b!4945059 (= lt!2038761 (lemmaIsPrefixSameLengthThenSameList!1177 lt!2038764 testedP!110 lt!2038764))))

(assert (=> b!4945059 (isPrefix!5077 lt!2038764 lt!2038764)))

(declare-fun lt!2038763 () Unit!147731)

(declare-fun lemmaIsPrefixRefl!3423 (List!57074 List!57074) Unit!147731)

(assert (=> b!4945059 (= lt!2038763 (lemmaIsPrefixRefl!3423 lt!2038764 lt!2038764))))

(assert (= (and start!520508 res!2110073) b!4945056))

(assert (= (and b!4945056 res!2110071) b!4945053))

(assert (= (and b!4945053 res!2110075) b!4945057))

(assert (= (and b!4945057 (not res!2110078)) b!4945054))

(assert (= (and b!4945054 (not res!2110077)) b!4945050))

(assert (= (and b!4945050 (not res!2110074)) b!4945059))

(assert (= (and b!4945059 (not res!2110072)) b!4945049))

(assert (= (and b!4945049 (not res!2110076)) b!4945048))

(get-info :version)

(assert (= (and start!520508 ((_ is Cons!56950) testedP!110)) b!4945058))

(assert (= (and start!520508 condSetEmpty!27998) setIsEmpty!27998))

(assert (= (and start!520508 (not condSetEmpty!27998)) setNonEmpty!27998))

(assert (= setNonEmpty!27998 b!4945055))

(assert (= start!520508 b!4945052))

(assert (= (and start!520508 ((_ is Cons!56950) testedSuffix!70)) b!4945051))

(declare-fun m!5968066 () Bool)

(assert (=> start!520508 m!5968066))

(declare-fun m!5968068 () Bool)

(assert (=> start!520508 m!5968068))

(declare-fun m!5968070 () Bool)

(assert (=> start!520508 m!5968070))

(declare-fun m!5968072 () Bool)

(assert (=> b!4945053 m!5968072))

(declare-fun m!5968074 () Bool)

(assert (=> b!4945059 m!5968074))

(declare-fun m!5968076 () Bool)

(assert (=> b!4945059 m!5968076))

(declare-fun m!5968078 () Bool)

(assert (=> b!4945059 m!5968078))

(declare-fun m!5968080 () Bool)

(assert (=> b!4945054 m!5968080))

(declare-fun m!5968082 () Bool)

(assert (=> b!4945054 m!5968082))

(declare-fun m!5968084 () Bool)

(assert (=> b!4945054 m!5968084))

(declare-fun m!5968086 () Bool)

(assert (=> b!4945052 m!5968086))

(declare-fun m!5968088 () Bool)

(assert (=> setNonEmpty!27998 m!5968088))

(declare-fun m!5968090 () Bool)

(assert (=> b!4945048 m!5968090))

(declare-fun m!5968092 () Bool)

(assert (=> b!4945048 m!5968092))

(declare-fun m!5968094 () Bool)

(assert (=> b!4945049 m!5968094))

(declare-fun m!5968096 () Bool)

(assert (=> b!4945056 m!5968096))

(declare-fun m!5968098 () Bool)

(assert (=> b!4945057 m!5968098))

(declare-fun m!5968100 () Bool)

(assert (=> b!4945057 m!5968100))

(declare-fun m!5968102 () Bool)

(assert (=> b!4945057 m!5968102))

(check-sat (not setNonEmpty!27998) (not b!4945056) (not b!4945053) (not b!4945055) tp_is_empty!36139 (not b!4945059) (not b!4945048) (not b!4945058) (not b!4945051) (not b!4945052) (not b!4945057) (not b!4945054) (not b!4945049) (not start!520508))
(check-sat)
(get-model)

(declare-fun d!1592188 () Bool)

(declare-fun lambda!246495 () Int)

(declare-fun forall!13246 (List!57075 Int) Bool)

(assert (=> d!1592188 (= (inv!74153 setElem!27998) (forall!13246 (exprs!3613 setElem!27998) lambda!246495))))

(declare-fun bs!1181605 () Bool)

(assert (= bs!1181605 d!1592188))

(declare-fun m!5968116 () Bool)

(assert (=> bs!1181605 m!5968116))

(assert (=> setNonEmpty!27998 d!1592188))

(declare-fun d!1592198 () Bool)

(declare-fun lambda!246498 () Int)

(declare-fun exists!1324 ((InoxSet Context!6226) Int) Bool)

(assert (=> d!1592198 (= (nullableZipper!856 z!3568) (exists!1324 z!3568 lambda!246498))))

(declare-fun bs!1181606 () Bool)

(assert (= bs!1181606 d!1592198))

(declare-fun m!5968118 () Bool)

(assert (=> bs!1181606 m!5968118))

(assert (=> b!4945049 d!1592198))

(declare-fun d!1592200 () Bool)

(declare-fun list!18144 (Conc!14990) List!57074)

(assert (=> d!1592200 (= (list!18143 totalInput!685) (list!18144 (c!843761 totalInput!685)))))

(declare-fun bs!1181607 () Bool)

(assert (= bs!1181607 d!1592200))

(declare-fun m!5968120 () Bool)

(assert (=> bs!1181607 m!5968120))

(assert (=> start!520508 d!1592200))

(declare-fun b!4945081 () Bool)

(declare-fun e!3089645 () List!57074)

(assert (=> b!4945081 (= e!3089645 (Cons!56950 (h!63398 testedP!110) (++!12456 (t!367610 testedP!110) testedSuffix!70)))))

(declare-fun b!4945082 () Bool)

(declare-fun res!2110096 () Bool)

(declare-fun e!3089646 () Bool)

(assert (=> b!4945082 (=> (not res!2110096) (not e!3089646))))

(declare-fun lt!2038777 () List!57074)

(assert (=> b!4945082 (= res!2110096 (= (size!37777 lt!2038777) (+ (size!37777 testedP!110) (size!37777 testedSuffix!70))))))

(declare-fun b!4945083 () Bool)

(assert (=> b!4945083 (= e!3089646 (or (not (= testedSuffix!70 Nil!56950)) (= lt!2038777 testedP!110)))))

(declare-fun d!1592202 () Bool)

(assert (=> d!1592202 e!3089646))

(declare-fun res!2110095 () Bool)

(assert (=> d!1592202 (=> (not res!2110095) (not e!3089646))))

(declare-fun content!10140 (List!57074) (InoxSet C!27192))

(assert (=> d!1592202 (= res!2110095 (= (content!10140 lt!2038777) ((_ map or) (content!10140 testedP!110) (content!10140 testedSuffix!70))))))

(assert (=> d!1592202 (= lt!2038777 e!3089645)))

(declare-fun c!843768 () Bool)

(assert (=> d!1592202 (= c!843768 ((_ is Nil!56950) testedP!110))))

(assert (=> d!1592202 (= (++!12456 testedP!110 testedSuffix!70) lt!2038777)))

(declare-fun b!4945080 () Bool)

(assert (=> b!4945080 (= e!3089645 testedSuffix!70)))

(assert (= (and d!1592202 c!843768) b!4945080))

(assert (= (and d!1592202 (not c!843768)) b!4945081))

(assert (= (and d!1592202 res!2110095) b!4945082))

(assert (= (and b!4945082 res!2110096) b!4945083))

(declare-fun m!5968122 () Bool)

(assert (=> b!4945081 m!5968122))

(declare-fun m!5968124 () Bool)

(assert (=> b!4945082 m!5968124))

(assert (=> b!4945082 m!5968096))

(declare-fun m!5968126 () Bool)

(assert (=> b!4945082 m!5968126))

(declare-fun m!5968128 () Bool)

(assert (=> d!1592202 m!5968128))

(declare-fun m!5968130 () Bool)

(assert (=> d!1592202 m!5968130))

(declare-fun m!5968132 () Bool)

(assert (=> d!1592202 m!5968132))

(assert (=> start!520508 d!1592202))

(declare-fun d!1592204 () Bool)

(declare-fun isBalanced!4145 (Conc!14990) Bool)

(assert (=> d!1592204 (= (inv!74151 totalInput!685) (isBalanced!4145 (c!843761 totalInput!685)))))

(declare-fun bs!1181608 () Bool)

(assert (= bs!1181608 d!1592204))

(declare-fun m!5968134 () Bool)

(assert (=> bs!1181608 m!5968134))

(assert (=> start!520508 d!1592204))

(declare-fun b!4945094 () Bool)

(declare-fun e!3089655 () Bool)

(declare-fun tail!9738 (List!57074) List!57074)

(assert (=> b!4945094 (= e!3089655 (isPrefix!5077 (tail!9738 testedP!110) (tail!9738 lt!2038764)))))

(declare-fun b!4945093 () Bool)

(declare-fun res!2110107 () Bool)

(assert (=> b!4945093 (=> (not res!2110107) (not e!3089655))))

(declare-fun head!10599 (List!57074) C!27192)

(assert (=> b!4945093 (= res!2110107 (= (head!10599 testedP!110) (head!10599 lt!2038764)))))

(declare-fun d!1592206 () Bool)

(declare-fun e!3089654 () Bool)

(assert (=> d!1592206 e!3089654))

(declare-fun res!2110105 () Bool)

(assert (=> d!1592206 (=> res!2110105 e!3089654)))

(declare-fun lt!2038780 () Bool)

(assert (=> d!1592206 (= res!2110105 (not lt!2038780))))

(declare-fun e!3089653 () Bool)

(assert (=> d!1592206 (= lt!2038780 e!3089653)))

(declare-fun res!2110106 () Bool)

(assert (=> d!1592206 (=> res!2110106 e!3089653)))

(assert (=> d!1592206 (= res!2110106 ((_ is Nil!56950) testedP!110))))

(assert (=> d!1592206 (= (isPrefix!5077 testedP!110 lt!2038764) lt!2038780)))

(declare-fun b!4945092 () Bool)

(assert (=> b!4945092 (= e!3089653 e!3089655)))

(declare-fun res!2110108 () Bool)

(assert (=> b!4945092 (=> (not res!2110108) (not e!3089655))))

(assert (=> b!4945092 (= res!2110108 (not ((_ is Nil!56950) lt!2038764)))))

(declare-fun b!4945095 () Bool)

(assert (=> b!4945095 (= e!3089654 (>= (size!37777 lt!2038764) (size!37777 testedP!110)))))

(assert (= (and d!1592206 (not res!2110106)) b!4945092))

(assert (= (and b!4945092 res!2110108) b!4945093))

(assert (= (and b!4945093 res!2110107) b!4945094))

(assert (= (and d!1592206 (not res!2110105)) b!4945095))

(declare-fun m!5968136 () Bool)

(assert (=> b!4945094 m!5968136))

(declare-fun m!5968138 () Bool)

(assert (=> b!4945094 m!5968138))

(assert (=> b!4945094 m!5968136))

(assert (=> b!4945094 m!5968138))

(declare-fun m!5968140 () Bool)

(assert (=> b!4945094 m!5968140))

(declare-fun m!5968142 () Bool)

(assert (=> b!4945093 m!5968142))

(declare-fun m!5968144 () Bool)

(assert (=> b!4945093 m!5968144))

(declare-fun m!5968146 () Bool)

(assert (=> b!4945095 m!5968146))

(assert (=> b!4945095 m!5968096))

(assert (=> b!4945057 d!1592206))

(declare-fun b!4945098 () Bool)

(declare-fun e!3089658 () Bool)

(assert (=> b!4945098 (= e!3089658 (isPrefix!5077 (tail!9738 testedP!110) (tail!9738 lt!2038760)))))

(declare-fun b!4945097 () Bool)

(declare-fun res!2110111 () Bool)

(assert (=> b!4945097 (=> (not res!2110111) (not e!3089658))))

(assert (=> b!4945097 (= res!2110111 (= (head!10599 testedP!110) (head!10599 lt!2038760)))))

(declare-fun d!1592208 () Bool)

(declare-fun e!3089657 () Bool)

(assert (=> d!1592208 e!3089657))

(declare-fun res!2110109 () Bool)

(assert (=> d!1592208 (=> res!2110109 e!3089657)))

(declare-fun lt!2038781 () Bool)

(assert (=> d!1592208 (= res!2110109 (not lt!2038781))))

(declare-fun e!3089656 () Bool)

(assert (=> d!1592208 (= lt!2038781 e!3089656)))

(declare-fun res!2110110 () Bool)

(assert (=> d!1592208 (=> res!2110110 e!3089656)))

(assert (=> d!1592208 (= res!2110110 ((_ is Nil!56950) testedP!110))))

(assert (=> d!1592208 (= (isPrefix!5077 testedP!110 lt!2038760) lt!2038781)))

(declare-fun b!4945096 () Bool)

(assert (=> b!4945096 (= e!3089656 e!3089658)))

(declare-fun res!2110112 () Bool)

(assert (=> b!4945096 (=> (not res!2110112) (not e!3089658))))

(assert (=> b!4945096 (= res!2110112 (not ((_ is Nil!56950) lt!2038760)))))

(declare-fun b!4945099 () Bool)

(assert (=> b!4945099 (= e!3089657 (>= (size!37777 lt!2038760) (size!37777 testedP!110)))))

(assert (= (and d!1592208 (not res!2110110)) b!4945096))

(assert (= (and b!4945096 res!2110112) b!4945097))

(assert (= (and b!4945097 res!2110111) b!4945098))

(assert (= (and d!1592208 (not res!2110109)) b!4945099))

(assert (=> b!4945098 m!5968136))

(declare-fun m!5968148 () Bool)

(assert (=> b!4945098 m!5968148))

(assert (=> b!4945098 m!5968136))

(assert (=> b!4945098 m!5968148))

(declare-fun m!5968150 () Bool)

(assert (=> b!4945098 m!5968150))

(assert (=> b!4945097 m!5968142))

(declare-fun m!5968152 () Bool)

(assert (=> b!4945097 m!5968152))

(declare-fun m!5968154 () Bool)

(assert (=> b!4945099 m!5968154))

(assert (=> b!4945099 m!5968096))

(assert (=> b!4945057 d!1592208))

(declare-fun d!1592210 () Bool)

(assert (=> d!1592210 (isPrefix!5077 testedP!110 (++!12456 testedP!110 testedSuffix!70))))

(declare-fun lt!2038784 () Unit!147731)

(declare-fun choose!36441 (List!57074 List!57074) Unit!147731)

(assert (=> d!1592210 (= lt!2038784 (choose!36441 testedP!110 testedSuffix!70))))

(assert (=> d!1592210 (= (lemmaConcatTwoListThenFirstIsPrefix!3301 testedP!110 testedSuffix!70) lt!2038784)))

(declare-fun bs!1181609 () Bool)

(assert (= bs!1181609 d!1592210))

(assert (=> bs!1181609 m!5968068))

(assert (=> bs!1181609 m!5968068))

(declare-fun m!5968156 () Bool)

(assert (=> bs!1181609 m!5968156))

(declare-fun m!5968158 () Bool)

(assert (=> bs!1181609 m!5968158))

(assert (=> b!4945057 d!1592210))

(declare-fun d!1592212 () Bool)

(declare-fun lt!2038787 () Int)

(assert (=> d!1592212 (= lt!2038787 (size!37777 (list!18143 totalInput!685)))))

(declare-fun size!37779 (Conc!14990) Int)

(assert (=> d!1592212 (= lt!2038787 (size!37779 (c!843761 totalInput!685)))))

(assert (=> d!1592212 (= (size!37778 totalInput!685) lt!2038787)))

(declare-fun bs!1181610 () Bool)

(assert (= bs!1181610 d!1592212))

(assert (=> bs!1181610 m!5968066))

(assert (=> bs!1181610 m!5968066))

(declare-fun m!5968160 () Bool)

(assert (=> bs!1181610 m!5968160))

(declare-fun m!5968162 () Bool)

(assert (=> bs!1181610 m!5968162))

(assert (=> b!4945053 d!1592212))

(declare-fun d!1592214 () Bool)

(declare-fun c!843771 () Bool)

(assert (=> d!1592214 (= c!843771 ((_ is Node!14990) (c!843761 totalInput!685)))))

(declare-fun e!3089663 () Bool)

(assert (=> d!1592214 (= (inv!74152 (c!843761 totalInput!685)) e!3089663)))

(declare-fun b!4945106 () Bool)

(declare-fun inv!74154 (Conc!14990) Bool)

(assert (=> b!4945106 (= e!3089663 (inv!74154 (c!843761 totalInput!685)))))

(declare-fun b!4945107 () Bool)

(declare-fun e!3089664 () Bool)

(assert (=> b!4945107 (= e!3089663 e!3089664)))

(declare-fun res!2110115 () Bool)

(assert (=> b!4945107 (= res!2110115 (not ((_ is Leaf!24918) (c!843761 totalInput!685))))))

(assert (=> b!4945107 (=> res!2110115 e!3089664)))

(declare-fun b!4945108 () Bool)

(declare-fun inv!74155 (Conc!14990) Bool)

(assert (=> b!4945108 (= e!3089664 (inv!74155 (c!843761 totalInput!685)))))

(assert (= (and d!1592214 c!843771) b!4945106))

(assert (= (and d!1592214 (not c!843771)) b!4945107))

(assert (= (and b!4945107 (not res!2110115)) b!4945108))

(declare-fun m!5968164 () Bool)

(assert (=> b!4945106 m!5968164))

(declare-fun m!5968166 () Bool)

(assert (=> b!4945108 m!5968166))

(assert (=> b!4945052 d!1592214))

(declare-fun d!1592216 () Bool)

(declare-fun lt!2038790 () Int)

(assert (=> d!1592216 (>= lt!2038790 0)))

(declare-fun e!3089667 () Int)

(assert (=> d!1592216 (= lt!2038790 e!3089667)))

(declare-fun c!843774 () Bool)

(assert (=> d!1592216 (= c!843774 ((_ is Nil!56950) (_1!34045 (findLongestMatchInnerZipper!76 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038764 totalInputSize!132))))))

(assert (=> d!1592216 (= (size!37777 (_1!34045 (findLongestMatchInnerZipper!76 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038764 totalInputSize!132))) lt!2038790)))

(declare-fun b!4945113 () Bool)

(assert (=> b!4945113 (= e!3089667 0)))

(declare-fun b!4945114 () Bool)

(assert (=> b!4945114 (= e!3089667 (+ 1 (size!37777 (t!367610 (_1!34045 (findLongestMatchInnerZipper!76 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038764 totalInputSize!132))))))))

(assert (= (and d!1592216 c!843774) b!4945113))

(assert (= (and d!1592216 (not c!843774)) b!4945114))

(declare-fun m!5968168 () Bool)

(assert (=> b!4945114 m!5968168))

(assert (=> b!4945048 d!1592216))

(declare-fun bm!345122 () Bool)

(declare-fun call!345133 () List!57074)

(assert (=> bm!345122 (= call!345133 (tail!9738 testedSuffix!70))))

(declare-fun b!4945178 () Bool)

(declare-fun e!3089710 () Unit!147731)

(declare-fun Unit!147733 () Unit!147731)

(assert (=> b!4945178 (= e!3089710 Unit!147733)))

(declare-fun lt!2038888 () Unit!147731)

(declare-fun call!345129 () Unit!147731)

(assert (=> b!4945178 (= lt!2038888 call!345129)))

(declare-fun call!345131 () Bool)

(assert (=> b!4945178 call!345131))

(declare-fun lt!2038878 () Unit!147731)

(assert (=> b!4945178 (= lt!2038878 lt!2038888)))

(declare-fun lt!2038883 () Unit!147731)

(declare-fun call!345130 () Unit!147731)

(assert (=> b!4945178 (= lt!2038883 call!345130)))

(assert (=> b!4945178 (= lt!2038764 testedP!110)))

(declare-fun lt!2038892 () Unit!147731)

(assert (=> b!4945178 (= lt!2038892 lt!2038883)))

(assert (=> b!4945178 false))

(declare-fun b!4945179 () Bool)

(declare-fun e!3089709 () tuple2!61484)

(assert (=> b!4945179 (= e!3089709 (tuple2!61485 Nil!56950 lt!2038764))))

(declare-fun b!4945180 () Bool)

(declare-fun e!3089712 () tuple2!61484)

(declare-fun lt!2038900 () tuple2!61484)

(assert (=> b!4945180 (= e!3089712 lt!2038900)))

(declare-fun b!4945181 () Bool)

(declare-fun e!3089714 () tuple2!61484)

(declare-fun call!345127 () tuple2!61484)

(assert (=> b!4945181 (= e!3089714 call!345127)))

(declare-fun bm!345123 () Bool)

(declare-fun call!345132 () (InoxSet Context!6226))

(declare-fun call!345128 () C!27192)

(declare-fun derivationStepZipper!609 ((InoxSet Context!6226) C!27192) (InoxSet Context!6226))

(assert (=> bm!345123 (= call!345132 (derivationStepZipper!609 z!3568 call!345128))))

(declare-fun d!1592218 () Bool)

(declare-fun e!3089713 () Bool)

(assert (=> d!1592218 e!3089713))

(declare-fun res!2110138 () Bool)

(assert (=> d!1592218 (=> (not res!2110138) (not e!3089713))))

(declare-fun lt!2038894 () tuple2!61484)

(assert (=> d!1592218 (= res!2110138 (= (++!12456 (_1!34045 lt!2038894) (_2!34045 lt!2038894)) lt!2038764))))

(declare-fun e!3089711 () tuple2!61484)

(assert (=> d!1592218 (= lt!2038894 e!3089711)))

(declare-fun c!843808 () Bool)

(assert (=> d!1592218 (= c!843808 (lostCauseZipper!789 z!3568))))

(declare-fun lt!2038887 () Unit!147731)

(declare-fun Unit!147734 () Unit!147731)

(assert (=> d!1592218 (= lt!2038887 Unit!147734)))

(assert (=> d!1592218 (= (getSuffix!3059 lt!2038764 testedP!110) testedSuffix!70)))

(declare-fun lt!2038890 () Unit!147731)

(declare-fun lt!2038897 () Unit!147731)

(assert (=> d!1592218 (= lt!2038890 lt!2038897)))

(declare-fun lt!2038886 () List!57074)

(assert (=> d!1592218 (= testedSuffix!70 lt!2038886)))

(assert (=> d!1592218 (= lt!2038897 (lemmaSamePrefixThenSameSuffix!2469 testedP!110 testedSuffix!70 testedP!110 lt!2038886 lt!2038764))))

(assert (=> d!1592218 (= lt!2038886 (getSuffix!3059 lt!2038764 testedP!110))))

(declare-fun lt!2038884 () Unit!147731)

(declare-fun lt!2038903 () Unit!147731)

(assert (=> d!1592218 (= lt!2038884 lt!2038903)))

(assert (=> d!1592218 (isPrefix!5077 testedP!110 (++!12456 testedP!110 testedSuffix!70))))

(assert (=> d!1592218 (= lt!2038903 (lemmaConcatTwoListThenFirstIsPrefix!3301 testedP!110 testedSuffix!70))))

(assert (=> d!1592218 (= (++!12456 testedP!110 testedSuffix!70) lt!2038764)))

(assert (=> d!1592218 (= (findLongestMatchInnerZipper!76 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2038764 totalInputSize!132) lt!2038894)))

(declare-fun b!4945182 () Bool)

(declare-fun c!843809 () Bool)

(declare-fun call!345134 () Bool)

(assert (=> b!4945182 (= c!843809 call!345134)))

(declare-fun lt!2038902 () Unit!147731)

(declare-fun lt!2038896 () Unit!147731)

(assert (=> b!4945182 (= lt!2038902 lt!2038896)))

(declare-fun lt!2038901 () List!57074)

(declare-fun lt!2038891 () C!27192)

(assert (=> b!4945182 (= (++!12456 (++!12456 testedP!110 (Cons!56950 lt!2038891 Nil!56950)) lt!2038901) lt!2038764)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1430 (List!57074 C!27192 List!57074 List!57074) Unit!147731)

(assert (=> b!4945182 (= lt!2038896 (lemmaMoveElementToOtherListKeepsConcatEq!1430 testedP!110 lt!2038891 lt!2038901 lt!2038764))))

(assert (=> b!4945182 (= lt!2038901 (tail!9738 testedSuffix!70))))

(assert (=> b!4945182 (= lt!2038891 (head!10599 testedSuffix!70))))

(declare-fun lt!2038889 () Unit!147731)

(declare-fun lt!2038882 () Unit!147731)

(assert (=> b!4945182 (= lt!2038889 lt!2038882)))

(assert (=> b!4945182 (isPrefix!5077 (++!12456 testedP!110 (Cons!56950 (head!10599 (getSuffix!3059 lt!2038764 testedP!110)) Nil!56950)) lt!2038764)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!818 (List!57074 List!57074) Unit!147731)

(assert (=> b!4945182 (= lt!2038882 (lemmaAddHeadSuffixToPrefixStillPrefix!818 testedP!110 lt!2038764))))

(declare-fun lt!2038885 () List!57074)

(assert (=> b!4945182 (= lt!2038885 (++!12456 testedP!110 (Cons!56950 (head!10599 testedSuffix!70) Nil!56950)))))

(declare-fun lt!2038895 () Unit!147731)

(assert (=> b!4945182 (= lt!2038895 e!3089710)))

(declare-fun c!843806 () Bool)

(assert (=> b!4945182 (= c!843806 (= (size!37777 testedP!110) (size!37777 lt!2038764)))))

(declare-fun lt!2038899 () Unit!147731)

(declare-fun lt!2038881 () Unit!147731)

(assert (=> b!4945182 (= lt!2038899 lt!2038881)))

(assert (=> b!4945182 (<= (size!37777 testedP!110) (size!37777 lt!2038764))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!738 (List!57074 List!57074) Unit!147731)

(assert (=> b!4945182 (= lt!2038881 (lemmaIsPrefixThenSmallerEqSize!738 testedP!110 lt!2038764))))

(declare-fun e!3089715 () tuple2!61484)

(assert (=> b!4945182 (= e!3089715 e!3089714)))

(declare-fun bm!345124 () Bool)

(assert (=> bm!345124 (= call!345134 (nullableZipper!856 z!3568))))

(declare-fun b!4945183 () Bool)

(declare-fun e!3089716 () Bool)

(assert (=> b!4945183 (= e!3089713 e!3089716)))

(declare-fun res!2110137 () Bool)

(assert (=> b!4945183 (=> res!2110137 e!3089716)))

(declare-fun isEmpty!30651 (List!57074) Bool)

(assert (=> b!4945183 (= res!2110137 (isEmpty!30651 (_1!34045 lt!2038894)))))

(declare-fun b!4945184 () Bool)

(assert (=> b!4945184 (= e!3089712 (tuple2!61485 testedP!110 testedSuffix!70))))

(declare-fun b!4945185 () Bool)

(declare-fun Unit!147735 () Unit!147731)

(assert (=> b!4945185 (= e!3089710 Unit!147735)))

(declare-fun b!4945186 () Bool)

(assert (=> b!4945186 (= e!3089709 (tuple2!61485 testedP!110 Nil!56950))))

(declare-fun b!4945187 () Bool)

(declare-fun c!843805 () Bool)

(assert (=> b!4945187 (= c!843805 call!345134)))

(declare-fun lt!2038893 () Unit!147731)

(declare-fun lt!2038880 () Unit!147731)

(assert (=> b!4945187 (= lt!2038893 lt!2038880)))

(assert (=> b!4945187 (= lt!2038764 testedP!110)))

(assert (=> b!4945187 (= lt!2038880 call!345130)))

(declare-fun lt!2038879 () Unit!147731)

(declare-fun lt!2038898 () Unit!147731)

(assert (=> b!4945187 (= lt!2038879 lt!2038898)))

(assert (=> b!4945187 call!345131))

(assert (=> b!4945187 (= lt!2038898 call!345129)))

(assert (=> b!4945187 (= e!3089715 e!3089709)))

(declare-fun bm!345125 () Bool)

(assert (=> bm!345125 (= call!345128 (head!10599 testedSuffix!70))))

(declare-fun bm!345126 () Bool)

(assert (=> bm!345126 (= call!345129 (lemmaIsPrefixRefl!3423 lt!2038764 lt!2038764))))

(declare-fun b!4945188 () Bool)

(assert (=> b!4945188 (= e!3089716 (>= (size!37777 (_1!34045 lt!2038894)) (size!37777 testedP!110)))))

(declare-fun b!4945189 () Bool)

(assert (=> b!4945189 (= e!3089711 e!3089715)))

(declare-fun c!843804 () Bool)

(assert (=> b!4945189 (= c!843804 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4945190 () Bool)

(assert (=> b!4945190 (= e!3089711 (tuple2!61485 Nil!56950 lt!2038764))))

(declare-fun bm!345127 () Bool)

(assert (=> bm!345127 (= call!345131 (isPrefix!5077 lt!2038764 lt!2038764))))

(declare-fun b!4945191 () Bool)

(assert (=> b!4945191 (= e!3089714 e!3089712)))

(assert (=> b!4945191 (= lt!2038900 call!345127)))

(declare-fun c!843807 () Bool)

(assert (=> b!4945191 (= c!843807 (isEmpty!30651 (_1!34045 lt!2038900)))))

(declare-fun bm!345128 () Bool)

(assert (=> bm!345128 (= call!345130 (lemmaIsPrefixSameLengthThenSameList!1177 lt!2038764 testedP!110 lt!2038764))))

(declare-fun bm!345129 () Bool)

(assert (=> bm!345129 (= call!345127 (findLongestMatchInnerZipper!76 call!345132 lt!2038885 (+ testedPSize!70 1) call!345133 lt!2038764 totalInputSize!132))))

(assert (= (and d!1592218 c!843808) b!4945190))

(assert (= (and d!1592218 (not c!843808)) b!4945189))

(assert (= (and b!4945189 c!843804) b!4945187))

(assert (= (and b!4945189 (not c!843804)) b!4945182))

(assert (= (and b!4945187 c!843805) b!4945186))

(assert (= (and b!4945187 (not c!843805)) b!4945179))

(assert (= (and b!4945182 c!843806) b!4945178))

(assert (= (and b!4945182 (not c!843806)) b!4945185))

(assert (= (and b!4945182 c!843809) b!4945191))

(assert (= (and b!4945182 (not c!843809)) b!4945181))

(assert (= (and b!4945191 c!843807) b!4945184))

(assert (= (and b!4945191 (not c!843807)) b!4945180))

(assert (= (or b!4945191 b!4945181) bm!345122))

(assert (= (or b!4945191 b!4945181) bm!345125))

(assert (= (or b!4945191 b!4945181) bm!345123))

(assert (= (or b!4945191 b!4945181) bm!345129))

(assert (= (or b!4945187 b!4945178) bm!345126))

(assert (= (or b!4945187 b!4945178) bm!345127))

(assert (= (or b!4945187 b!4945178) bm!345128))

(assert (= (or b!4945187 b!4945182) bm!345124))

(assert (= (and d!1592218 res!2110138) b!4945183))

(assert (= (and b!4945183 (not res!2110137)) b!4945188))

(declare-fun m!5968230 () Bool)

(assert (=> b!4945188 m!5968230))

(assert (=> b!4945188 m!5968096))

(assert (=> d!1592218 m!5968080))

(declare-fun m!5968232 () Bool)

(assert (=> d!1592218 m!5968232))

(assert (=> d!1592218 m!5968084))

(assert (=> d!1592218 m!5968102))

(assert (=> d!1592218 m!5968068))

(assert (=> d!1592218 m!5968156))

(declare-fun m!5968234 () Bool)

(assert (=> d!1592218 m!5968234))

(assert (=> d!1592218 m!5968068))

(declare-fun m!5968236 () Bool)

(assert (=> bm!345125 m!5968236))

(assert (=> bm!345124 m!5968094))

(declare-fun m!5968238 () Bool)

(assert (=> b!4945183 m!5968238))

(assert (=> bm!345127 m!5968076))

(assert (=> bm!345128 m!5968074))

(declare-fun m!5968240 () Bool)

(assert (=> b!4945191 m!5968240))

(assert (=> b!4945182 m!5968236))

(assert (=> b!4945182 m!5968084))

(declare-fun m!5968242 () Bool)

(assert (=> b!4945182 m!5968242))

(declare-fun m!5968244 () Bool)

(assert (=> b!4945182 m!5968244))

(declare-fun m!5968248 () Bool)

(assert (=> b!4945182 m!5968248))

(declare-fun m!5968250 () Bool)

(assert (=> b!4945182 m!5968250))

(assert (=> b!4945182 m!5968084))

(declare-fun m!5968252 () Bool)

(assert (=> b!4945182 m!5968252))

(assert (=> b!4945182 m!5968248))

(declare-fun m!5968254 () Bool)

(assert (=> b!4945182 m!5968254))

(declare-fun m!5968256 () Bool)

(assert (=> b!4945182 m!5968256))

(assert (=> b!4945182 m!5968146))

(assert (=> b!4945182 m!5968096))

(assert (=> b!4945182 m!5968244))

(declare-fun m!5968258 () Bool)

(assert (=> b!4945182 m!5968258))

(declare-fun m!5968260 () Bool)

(assert (=> b!4945182 m!5968260))

(declare-fun m!5968262 () Bool)

(assert (=> b!4945182 m!5968262))

(assert (=> bm!345126 m!5968078))

(declare-fun m!5968264 () Bool)

(assert (=> bm!345123 m!5968264))

(assert (=> bm!345122 m!5968256))

(declare-fun m!5968266 () Bool)

(assert (=> bm!345129 m!5968266))

(assert (=> b!4945048 d!1592218))

(declare-fun d!1592244 () Bool)

(declare-fun lt!2038907 () Int)

(assert (=> d!1592244 (>= lt!2038907 0)))

(declare-fun e!3089717 () Int)

(assert (=> d!1592244 (= lt!2038907 e!3089717)))

(declare-fun c!843810 () Bool)

(assert (=> d!1592244 (= c!843810 ((_ is Nil!56950) testedP!110))))

(assert (=> d!1592244 (= (size!37777 testedP!110) lt!2038907)))

(declare-fun b!4945192 () Bool)

(assert (=> b!4945192 (= e!3089717 0)))

(declare-fun b!4945193 () Bool)

(assert (=> b!4945193 (= e!3089717 (+ 1 (size!37777 (t!367610 testedP!110))))))

(assert (= (and d!1592244 c!843810) b!4945192))

(assert (= (and d!1592244 (not c!843810)) b!4945193))

(declare-fun m!5968268 () Bool)

(assert (=> b!4945193 m!5968268))

(assert (=> b!4945056 d!1592244))

(declare-fun d!1592246 () Bool)

(assert (=> d!1592246 (= lt!2038764 testedP!110)))

(declare-fun lt!2038912 () Unit!147731)

(declare-fun choose!36442 (List!57074 List!57074 List!57074) Unit!147731)

(assert (=> d!1592246 (= lt!2038912 (choose!36442 lt!2038764 testedP!110 lt!2038764))))

(assert (=> d!1592246 (isPrefix!5077 lt!2038764 lt!2038764)))

(assert (=> d!1592246 (= (lemmaIsPrefixSameLengthThenSameList!1177 lt!2038764 testedP!110 lt!2038764) lt!2038912)))

(declare-fun bs!1181624 () Bool)

(assert (= bs!1181624 d!1592246))

(declare-fun m!5968270 () Bool)

(assert (=> bs!1181624 m!5968270))

(assert (=> bs!1181624 m!5968076))

(assert (=> b!4945059 d!1592246))

(declare-fun b!4945200 () Bool)

(declare-fun e!3089722 () Bool)

(assert (=> b!4945200 (= e!3089722 (isPrefix!5077 (tail!9738 lt!2038764) (tail!9738 lt!2038764)))))

(declare-fun b!4945199 () Bool)

(declare-fun res!2110141 () Bool)

(assert (=> b!4945199 (=> (not res!2110141) (not e!3089722))))

(assert (=> b!4945199 (= res!2110141 (= (head!10599 lt!2038764) (head!10599 lt!2038764)))))

(declare-fun d!1592248 () Bool)

(declare-fun e!3089721 () Bool)

(assert (=> d!1592248 e!3089721))

(declare-fun res!2110139 () Bool)

(assert (=> d!1592248 (=> res!2110139 e!3089721)))

(declare-fun lt!2038913 () Bool)

(assert (=> d!1592248 (= res!2110139 (not lt!2038913))))

(declare-fun e!3089720 () Bool)

(assert (=> d!1592248 (= lt!2038913 e!3089720)))

(declare-fun res!2110140 () Bool)

(assert (=> d!1592248 (=> res!2110140 e!3089720)))

(assert (=> d!1592248 (= res!2110140 ((_ is Nil!56950) lt!2038764))))

(assert (=> d!1592248 (= (isPrefix!5077 lt!2038764 lt!2038764) lt!2038913)))

(declare-fun b!4945198 () Bool)

(assert (=> b!4945198 (= e!3089720 e!3089722)))

(declare-fun res!2110142 () Bool)

(assert (=> b!4945198 (=> (not res!2110142) (not e!3089722))))

(assert (=> b!4945198 (= res!2110142 (not ((_ is Nil!56950) lt!2038764)))))

(declare-fun b!4945201 () Bool)

(assert (=> b!4945201 (= e!3089721 (>= (size!37777 lt!2038764) (size!37777 lt!2038764)))))

(assert (= (and d!1592248 (not res!2110140)) b!4945198))

(assert (= (and b!4945198 res!2110142) b!4945199))

(assert (= (and b!4945199 res!2110141) b!4945200))

(assert (= (and d!1592248 (not res!2110139)) b!4945201))

(assert (=> b!4945200 m!5968138))

(assert (=> b!4945200 m!5968138))

(assert (=> b!4945200 m!5968138))

(assert (=> b!4945200 m!5968138))

(declare-fun m!5968272 () Bool)

(assert (=> b!4945200 m!5968272))

(assert (=> b!4945199 m!5968144))

(assert (=> b!4945199 m!5968144))

(assert (=> b!4945201 m!5968146))

(assert (=> b!4945201 m!5968146))

(assert (=> b!4945059 d!1592248))

(declare-fun d!1592250 () Bool)

(assert (=> d!1592250 (isPrefix!5077 lt!2038764 lt!2038764)))

(declare-fun lt!2038919 () Unit!147731)

(declare-fun choose!36444 (List!57074 List!57074) Unit!147731)

(assert (=> d!1592250 (= lt!2038919 (choose!36444 lt!2038764 lt!2038764))))

(assert (=> d!1592250 (= (lemmaIsPrefixRefl!3423 lt!2038764 lt!2038764) lt!2038919)))

(declare-fun bs!1181625 () Bool)

(assert (= bs!1181625 d!1592250))

(assert (=> bs!1181625 m!5968076))

(declare-fun m!5968278 () Bool)

(assert (=> bs!1181625 m!5968278))

(assert (=> b!4945059 d!1592250))

(declare-fun bs!1181626 () Bool)

(declare-fun d!1592254 () Bool)

(assert (= bs!1181626 (and d!1592254 d!1592198)))

(declare-fun lambda!246532 () Int)

(assert (=> bs!1181626 (not (= lambda!246532 lambda!246498))))

(declare-fun bs!1181627 () Bool)

(declare-fun b!4945216 () Bool)

(assert (= bs!1181627 (and b!4945216 d!1592198)))

(declare-fun lambda!246533 () Int)

(assert (=> bs!1181627 (not (= lambda!246533 lambda!246498))))

(declare-fun bs!1181628 () Bool)

(assert (= bs!1181628 (and b!4945216 d!1592254)))

(assert (=> bs!1181628 (not (= lambda!246533 lambda!246532))))

(declare-fun bs!1181629 () Bool)

(declare-fun b!4945217 () Bool)

(assert (= bs!1181629 (and b!4945217 d!1592198)))

(declare-fun lambda!246534 () Int)

(assert (=> bs!1181629 (not (= lambda!246534 lambda!246498))))

(declare-fun bs!1181630 () Bool)

(assert (= bs!1181630 (and b!4945217 d!1592254)))

(assert (=> bs!1181630 (not (= lambda!246534 lambda!246532))))

(declare-fun bs!1181631 () Bool)

(assert (= bs!1181631 (and b!4945217 b!4945216)))

(assert (=> bs!1181631 (= lambda!246534 lambda!246533)))

(declare-fun e!3089734 () Unit!147731)

(declare-fun Unit!147736 () Unit!147731)

(assert (=> b!4945217 (= e!3089734 Unit!147736)))

(declare-datatypes ((List!57076 0))(
  ( (Nil!56952) (Cons!56952 (h!63400 Context!6226) (t!367612 List!57076)) )
))
(declare-fun lt!2038944 () List!57076)

(declare-fun call!345140 () List!57076)

(assert (=> b!4945217 (= lt!2038944 call!345140)))

(declare-fun lt!2038940 () Unit!147731)

(declare-fun lemmaForallThenNotExists!211 (List!57076 Int) Unit!147731)

(assert (=> b!4945217 (= lt!2038940 (lemmaForallThenNotExists!211 lt!2038944 lambda!246532))))

(declare-fun call!345139 () Bool)

(assert (=> b!4945217 (not call!345139)))

(declare-fun lt!2038938 () Unit!147731)

(assert (=> b!4945217 (= lt!2038938 lt!2038940)))

(declare-fun Unit!147737 () Unit!147731)

(assert (=> b!4945216 (= e!3089734 Unit!147737)))

(declare-fun lt!2038945 () List!57076)

(assert (=> b!4945216 (= lt!2038945 call!345140)))

(declare-fun lt!2038941 () Unit!147731)

(declare-fun lemmaNotForallThenExists!228 (List!57076 Int) Unit!147731)

(assert (=> b!4945216 (= lt!2038941 (lemmaNotForallThenExists!228 lt!2038945 lambda!246532))))

(assert (=> b!4945216 call!345139))

(declare-fun lt!2038942 () Unit!147731)

(assert (=> b!4945216 (= lt!2038942 lt!2038941)))

(declare-fun bm!345134 () Bool)

(declare-fun c!843828 () Bool)

(declare-fun exists!1325 (List!57076 Int) Bool)

(assert (=> bm!345134 (= call!345139 (exists!1325 (ite c!843828 lt!2038945 lt!2038944) (ite c!843828 lambda!246533 lambda!246534)))))

(declare-fun bm!345135 () Bool)

(declare-fun toList!7990 ((InoxSet Context!6226)) List!57076)

(assert (=> bm!345135 (= call!345140 (toList!7990 z!3568))))

(declare-fun lt!2038939 () Bool)

(declare-datatypes ((Option!14208 0))(
  ( (None!14207) (Some!14207 (v!50183 List!57074)) )
))
(declare-fun isEmpty!30652 (Option!14208) Bool)

(declare-fun getLanguageWitness!677 ((InoxSet Context!6226)) Option!14208)

(assert (=> d!1592254 (= lt!2038939 (isEmpty!30652 (getLanguageWitness!677 z!3568)))))

(declare-fun forall!13248 ((InoxSet Context!6226) Int) Bool)

(assert (=> d!1592254 (= lt!2038939 (forall!13248 z!3568 lambda!246532))))

(declare-fun lt!2038943 () Unit!147731)

(assert (=> d!1592254 (= lt!2038943 e!3089734)))

(assert (=> d!1592254 (= c!843828 (not (forall!13248 z!3568 lambda!246532)))))

(assert (=> d!1592254 (= (lostCauseZipper!789 z!3568) lt!2038939)))

(assert (= (and d!1592254 c!843828) b!4945216))

(assert (= (and d!1592254 (not c!843828)) b!4945217))

(assert (= (or b!4945216 b!4945217) bm!345134))

(assert (= (or b!4945216 b!4945217) bm!345135))

(declare-fun m!5968284 () Bool)

(assert (=> bm!345135 m!5968284))

(declare-fun m!5968286 () Bool)

(assert (=> b!4945216 m!5968286))

(declare-fun m!5968288 () Bool)

(assert (=> bm!345134 m!5968288))

(declare-fun m!5968290 () Bool)

(assert (=> d!1592254 m!5968290))

(assert (=> d!1592254 m!5968290))

(declare-fun m!5968292 () Bool)

(assert (=> d!1592254 m!5968292))

(declare-fun m!5968294 () Bool)

(assert (=> d!1592254 m!5968294))

(assert (=> d!1592254 m!5968294))

(declare-fun m!5968296 () Bool)

(assert (=> b!4945217 m!5968296))

(assert (=> b!4945054 d!1592254))

(declare-fun d!1592260 () Bool)

(assert (=> d!1592260 (= testedSuffix!70 lt!2038765)))

(declare-fun lt!2038948 () Unit!147731)

(declare-fun choose!36446 (List!57074 List!57074 List!57074 List!57074 List!57074) Unit!147731)

(assert (=> d!1592260 (= lt!2038948 (choose!36446 testedP!110 testedSuffix!70 testedP!110 lt!2038765 lt!2038764))))

(assert (=> d!1592260 (isPrefix!5077 testedP!110 lt!2038764)))

(assert (=> d!1592260 (= (lemmaSamePrefixThenSameSuffix!2469 testedP!110 testedSuffix!70 testedP!110 lt!2038765 lt!2038764) lt!2038948)))

(declare-fun bs!1181632 () Bool)

(assert (= bs!1181632 d!1592260))

(declare-fun m!5968298 () Bool)

(assert (=> bs!1181632 m!5968298))

(assert (=> bs!1181632 m!5968098))

(assert (=> b!4945054 d!1592260))

(declare-fun d!1592262 () Bool)

(declare-fun lt!2038951 () List!57074)

(assert (=> d!1592262 (= (++!12456 testedP!110 lt!2038951) lt!2038764)))

(declare-fun e!3089737 () List!57074)

(assert (=> d!1592262 (= lt!2038951 e!3089737)))

(declare-fun c!843831 () Bool)

(assert (=> d!1592262 (= c!843831 ((_ is Cons!56950) testedP!110))))

(assert (=> d!1592262 (>= (size!37777 lt!2038764) (size!37777 testedP!110))))

(assert (=> d!1592262 (= (getSuffix!3059 lt!2038764 testedP!110) lt!2038951)))

(declare-fun b!4945222 () Bool)

(assert (=> b!4945222 (= e!3089737 (getSuffix!3059 (tail!9738 lt!2038764) (t!367610 testedP!110)))))

(declare-fun b!4945223 () Bool)

(assert (=> b!4945223 (= e!3089737 lt!2038764)))

(assert (= (and d!1592262 c!843831) b!4945222))

(assert (= (and d!1592262 (not c!843831)) b!4945223))

(declare-fun m!5968300 () Bool)

(assert (=> d!1592262 m!5968300))

(assert (=> d!1592262 m!5968146))

(assert (=> d!1592262 m!5968096))

(assert (=> b!4945222 m!5968138))

(assert (=> b!4945222 m!5968138))

(declare-fun m!5968302 () Bool)

(assert (=> b!4945222 m!5968302))

(assert (=> b!4945054 d!1592262))

(declare-fun condSetEmpty!28001 () Bool)

(assert (=> setNonEmpty!27998 (= condSetEmpty!28001 (= setRest!27998 ((as const (Array Context!6226 Bool)) false)))))

(declare-fun setRes!28001 () Bool)

(assert (=> setNonEmpty!27998 (= tp!1387135 setRes!28001)))

(declare-fun setIsEmpty!28001 () Bool)

(assert (=> setIsEmpty!28001 setRes!28001))

(declare-fun tp!1387140 () Bool)

(declare-fun setNonEmpty!28001 () Bool)

(declare-fun setElem!28001 () Context!6226)

(declare-fun e!3089740 () Bool)

(assert (=> setNonEmpty!28001 (= setRes!28001 (and tp!1387140 (inv!74153 setElem!28001) e!3089740))))

(declare-fun setRest!28001 () (InoxSet Context!6226))

(assert (=> setNonEmpty!28001 (= setRest!27998 ((_ map or) (store ((as const (Array Context!6226 Bool)) false) setElem!28001 true) setRest!28001))))

(declare-fun b!4945228 () Bool)

(declare-fun tp!1387141 () Bool)

(assert (=> b!4945228 (= e!3089740 tp!1387141)))

(assert (= (and setNonEmpty!27998 condSetEmpty!28001) setIsEmpty!28001))

(assert (= (and setNonEmpty!27998 (not condSetEmpty!28001)) setNonEmpty!28001))

(assert (= setNonEmpty!28001 b!4945228))

(declare-fun m!5968304 () Bool)

(assert (=> setNonEmpty!28001 m!5968304))

(declare-fun b!4945233 () Bool)

(declare-fun e!3089743 () Bool)

(declare-fun tp!1387144 () Bool)

(assert (=> b!4945233 (= e!3089743 (and tp_is_empty!36139 tp!1387144))))

(assert (=> b!4945058 (= tp!1387132 e!3089743)))

(assert (= (and b!4945058 ((_ is Cons!56950) (t!367610 testedP!110))) b!4945233))

(declare-fun tp!1387152 () Bool)

(declare-fun tp!1387153 () Bool)

(declare-fun b!4945242 () Bool)

(declare-fun e!3089748 () Bool)

(assert (=> b!4945242 (= e!3089748 (and (inv!74152 (left!41551 (c!843761 totalInput!685))) tp!1387153 (inv!74152 (right!41881 (c!843761 totalInput!685))) tp!1387152))))

(declare-fun b!4945244 () Bool)

(declare-fun e!3089749 () Bool)

(declare-fun tp!1387151 () Bool)

(assert (=> b!4945244 (= e!3089749 tp!1387151)))

(declare-fun b!4945243 () Bool)

(declare-fun inv!74156 (IArray!30041) Bool)

(assert (=> b!4945243 (= e!3089748 (and (inv!74156 (xs!18316 (c!843761 totalInput!685))) e!3089749))))

(assert (=> b!4945052 (= tp!1387133 (and (inv!74152 (c!843761 totalInput!685)) e!3089748))))

(assert (= (and b!4945052 ((_ is Node!14990) (c!843761 totalInput!685))) b!4945242))

(assert (= b!4945243 b!4945244))

(assert (= (and b!4945052 ((_ is Leaf!24918) (c!843761 totalInput!685))) b!4945243))

(declare-fun m!5968306 () Bool)

(assert (=> b!4945242 m!5968306))

(declare-fun m!5968308 () Bool)

(assert (=> b!4945242 m!5968308))

(declare-fun m!5968310 () Bool)

(assert (=> b!4945243 m!5968310))

(assert (=> b!4945052 m!5968086))

(declare-fun b!4945249 () Bool)

(declare-fun e!3089752 () Bool)

(declare-fun tp!1387158 () Bool)

(declare-fun tp!1387159 () Bool)

(assert (=> b!4945249 (= e!3089752 (and tp!1387158 tp!1387159))))

(assert (=> b!4945055 (= tp!1387134 e!3089752)))

(assert (= (and b!4945055 ((_ is Cons!56951) (exprs!3613 setElem!27998))) b!4945249))

(declare-fun b!4945250 () Bool)

(declare-fun e!3089753 () Bool)

(declare-fun tp!1387160 () Bool)

(assert (=> b!4945250 (= e!3089753 (and tp_is_empty!36139 tp!1387160))))

(assert (=> b!4945051 (= tp!1387131 e!3089753)))

(assert (= (and b!4945051 ((_ is Cons!56950) (t!367610 testedSuffix!70))) b!4945250))

(check-sat (not bm!345135) (not b!4945191) (not bm!345134) (not bm!345124) (not d!1592198) (not b!4945098) (not b!4945249) (not d!1592254) (not b!4945093) (not d!1592210) (not b!4945082) (not b!4945108) (not b!4945217) (not b!4945188) (not d!1592246) (not d!1592218) (not b!4945228) (not d!1592262) (not b!4945182) (not d!1592202) (not d!1592212) (not bm!345122) (not b!4945052) (not bm!345129) (not b!4945201) (not d!1592200) (not b!4945200) (not b!4945106) (not b!4945199) (not d!1592260) (not b!4945222) (not b!4945114) (not d!1592204) (not bm!345128) (not b!4945243) (not b!4945097) (not b!4945242) (not setNonEmpty!28001) (not b!4945094) (not b!4945099) (not d!1592188) (not b!4945095) (not d!1592250) (not b!4945233) (not b!4945244) (not b!4945250) (not b!4945216) (not b!4945183) (not bm!345125) (not bm!345127) (not b!4945193) (not bm!345123) (not b!4945081) (not bm!345126) tp_is_empty!36139)
(check-sat)
