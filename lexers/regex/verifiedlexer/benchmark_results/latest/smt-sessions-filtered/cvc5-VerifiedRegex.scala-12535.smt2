; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696350 () Bool)

(assert start!696350)

(declare-fun b!7142788 () Bool)

(declare-fun e!4292549 () Bool)

(declare-fun e!4292546 () Bool)

(assert (=> b!7142788 (= e!4292549 e!4292546)))

(declare-fun res!2914363 () Bool)

(assert (=> b!7142788 (=> (not res!2914363) (not e!4292546))))

(declare-datatypes ((C!36630 0))(
  ( (C!36631 (val!28263 Int)) )
))
(declare-datatypes ((Regex!18178 0))(
  ( (ElementMatch!18178 (c!1332027 C!36630)) (Concat!27023 (regOne!36868 Regex!18178) (regTwo!36868 Regex!18178)) (EmptyExpr!18178) (Star!18178 (reg!18507 Regex!18178)) (EmptyLang!18178) (Union!18178 (regOne!36869 Regex!18178) (regTwo!36869 Regex!18178)) )
))
(declare-fun r!11483 () Regex!18178)

(declare-datatypes ((List!69434 0))(
  ( (Nil!69310) (Cons!69310 (h!75758 Regex!18178) (t!383451 List!69434)) )
))
(declare-datatypes ((Context!14344 0))(
  ( (Context!14345 (exprs!7672 List!69434)) )
))
(declare-datatypes ((List!69435 0))(
  ( (Nil!69311) (Cons!69311 (h!75759 Context!14344) (t!383452 List!69435)) )
))
(declare-fun lt!2567865 () List!69435)

(declare-fun unfocusZipper!2526 (List!69435) Regex!18178)

(assert (=> b!7142788 (= res!2914363 (= r!11483 (unfocusZipper!2526 lt!2567865)))))

(declare-fun z!3189 () (Set Context!14344))

(declare-fun toList!11209 ((Set Context!14344)) List!69435)

(assert (=> b!7142788 (= lt!2567865 (toList!11209 z!3189))))

(declare-fun b!7142789 () Bool)

(declare-fun e!4292551 () Bool)

(declare-fun tp!1970112 () Bool)

(assert (=> b!7142789 (= e!4292551 tp!1970112)))

(declare-fun b!7142790 () Bool)

(declare-fun e!4292547 () Bool)

(declare-fun e!4292550 () Bool)

(assert (=> b!7142790 (= e!4292547 (not e!4292550))))

(declare-fun res!2914367 () Bool)

(assert (=> b!7142790 (=> res!2914367 e!4292550)))

(declare-fun lambda!435083 () Int)

(declare-fun lt!2567866 () Bool)

(declare-fun lt!2567868 () List!69434)

(declare-fun exists!3983 (List!69434 Int) Bool)

(assert (=> b!7142790 (= res!2914367 (not (= lt!2567866 (exists!3983 lt!2567868 lambda!435083))))))

(assert (=> b!7142790 (= lt!2567866 (exists!3983 lt!2567868 lambda!435083))))

(declare-fun lt!2567869 () Regex!18178)

(declare-fun nullable!7697 (Regex!18178) Bool)

(assert (=> b!7142790 (= lt!2567866 (nullable!7697 lt!2567869))))

(declare-datatypes ((Unit!163225 0))(
  ( (Unit!163226) )
))
(declare-fun lt!2567863 () Unit!163225)

(declare-fun nullableGenUnionSpec!65 (Regex!18178 List!69434) Unit!163225)

(assert (=> b!7142790 (= lt!2567863 (nullableGenUnionSpec!65 lt!2567869 lt!2567868))))

(declare-fun b!7142791 () Bool)

(declare-fun e!4292545 () Bool)

(declare-fun tp_is_empty!45993 () Bool)

(assert (=> b!7142791 (= e!4292545 tp_is_empty!45993)))

(declare-fun setIsEmpty!52612 () Bool)

(declare-fun setRes!52612 () Bool)

(assert (=> setIsEmpty!52612 setRes!52612))

(declare-fun b!7142792 () Bool)

(declare-fun res!2914361 () Bool)

(assert (=> b!7142792 (=> res!2914361 e!4292550)))

(declare-fun lambda!435084 () Int)

(declare-fun exists!3984 ((Set Context!14344) Int) Bool)

(assert (=> b!7142792 (= res!2914361 (not (exists!3984 z!3189 lambda!435084)))))

(declare-fun b!7142793 () Bool)

(declare-fun res!2914368 () Bool)

(assert (=> b!7142793 (=> res!2914368 e!4292550)))

(assert (=> b!7142793 (= res!2914368 (exists!3983 lt!2567868 lambda!435083))))

(declare-fun res!2914366 () Bool)

(assert (=> start!696350 (=> (not res!2914366) (not e!4292549))))

(declare-fun validRegex!9345 (Regex!18178) Bool)

(assert (=> start!696350 (= res!2914366 (validRegex!9345 r!11483))))

(assert (=> start!696350 e!4292549))

(assert (=> start!696350 e!4292545))

(declare-fun condSetEmpty!52612 () Bool)

(assert (=> start!696350 (= condSetEmpty!52612 (= z!3189 (as set.empty (Set Context!14344))))))

(assert (=> start!696350 setRes!52612))

(declare-fun b!7142794 () Bool)

(declare-fun tp!1970110 () Bool)

(declare-fun tp!1970111 () Bool)

(assert (=> b!7142794 (= e!4292545 (and tp!1970110 tp!1970111))))

(declare-fun b!7142795 () Bool)

(declare-fun res!2914362 () Bool)

(declare-fun e!4292548 () Bool)

(assert (=> b!7142795 (=> res!2914362 e!4292548)))

(declare-fun lt!2567871 () Context!14344)

(declare-fun nullableContext!156 (Context!14344) Bool)

(assert (=> b!7142795 (= res!2914362 (not (nullableContext!156 lt!2567871)))))

(declare-fun b!7142796 () Bool)

(declare-fun res!2914360 () Bool)

(assert (=> b!7142796 (=> res!2914360 e!4292550)))

(assert (=> b!7142796 (= res!2914360 lt!2567866)))

(declare-fun b!7142797 () Bool)

(declare-fun lt!2567864 () Bool)

(assert (=> b!7142797 (= e!4292548 lt!2567864)))

(declare-fun forall!17016 (List!69434 Int) Bool)

(assert (=> b!7142797 (= lt!2567864 (forall!17016 (exprs!7672 lt!2567871) lambda!435083))))

(declare-fun lt!2567872 () Regex!18178)

(assert (=> b!7142797 (= lt!2567864 (nullable!7697 lt!2567872))))

(declare-fun lt!2567870 () Unit!163225)

(declare-fun nullableGenConcatSpec!13 (Regex!18178 List!69434) Unit!163225)

(assert (=> b!7142797 (= lt!2567870 (nullableGenConcatSpec!13 lt!2567872 (exprs!7672 lt!2567871)))))

(declare-fun contains!20612 (List!69434 Regex!18178) Bool)

(assert (=> b!7142797 (contains!20612 lt!2567868 lt!2567872)))

(declare-fun generalisedConcat!2359 (List!69434) Regex!18178)

(assert (=> b!7142797 (= lt!2567872 (generalisedConcat!2359 (exprs!7672 lt!2567871)))))

(declare-fun lt!2567867 () Unit!163225)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!15 (List!69435 Context!14344) Unit!163225)

(assert (=> b!7142797 (= lt!2567867 (lemmaZipperContainsContextThenUnfocusZipperListContains!15 lt!2567865 lt!2567871))))

(declare-fun b!7142798 () Bool)

(declare-fun tp!1970108 () Bool)

(assert (=> b!7142798 (= e!4292545 tp!1970108)))

(declare-fun b!7142799 () Bool)

(assert (=> b!7142799 (= e!4292546 e!4292547)))

(declare-fun res!2914365 () Bool)

(assert (=> b!7142799 (=> (not res!2914365) (not e!4292547))))

(assert (=> b!7142799 (= res!2914365 (= r!11483 lt!2567869))))

(declare-fun generalisedUnion!2683 (List!69434) Regex!18178)

(assert (=> b!7142799 (= lt!2567869 (generalisedUnion!2683 lt!2567868))))

(declare-fun unfocusZipperList!2219 (List!69435) List!69434)

(assert (=> b!7142799 (= lt!2567868 (unfocusZipperList!2219 lt!2567865))))

(declare-fun b!7142800 () Bool)

(assert (=> b!7142800 (= e!4292550 e!4292548)))

(declare-fun res!2914364 () Bool)

(assert (=> b!7142800 (=> res!2914364 e!4292548)))

(assert (=> b!7142800 (= res!2914364 (not (set.member lt!2567871 z!3189)))))

(declare-fun getWitness!1957 ((Set Context!14344) Int) Context!14344)

(assert (=> b!7142800 (= lt!2567871 (getWitness!1957 z!3189 lambda!435084))))

(declare-fun b!7142801 () Bool)

(declare-fun tp!1970106 () Bool)

(declare-fun tp!1970107 () Bool)

(assert (=> b!7142801 (= e!4292545 (and tp!1970106 tp!1970107))))

(declare-fun setNonEmpty!52612 () Bool)

(declare-fun setElem!52612 () Context!14344)

(declare-fun tp!1970109 () Bool)

(declare-fun inv!88510 (Context!14344) Bool)

(assert (=> setNonEmpty!52612 (= setRes!52612 (and tp!1970109 (inv!88510 setElem!52612) e!4292551))))

(declare-fun setRest!52612 () (Set Context!14344))

(assert (=> setNonEmpty!52612 (= z!3189 (set.union (set.insert setElem!52612 (as set.empty (Set Context!14344))) setRest!52612))))

(assert (= (and start!696350 res!2914366) b!7142788))

(assert (= (and b!7142788 res!2914363) b!7142799))

(assert (= (and b!7142799 res!2914365) b!7142790))

(assert (= (and b!7142790 (not res!2914367)) b!7142796))

(assert (= (and b!7142796 (not res!2914360)) b!7142793))

(assert (= (and b!7142793 (not res!2914368)) b!7142792))

(assert (= (and b!7142792 (not res!2914361)) b!7142800))

(assert (= (and b!7142800 (not res!2914364)) b!7142795))

(assert (= (and b!7142795 (not res!2914362)) b!7142797))

(assert (= (and start!696350 (is-ElementMatch!18178 r!11483)) b!7142791))

(assert (= (and start!696350 (is-Concat!27023 r!11483)) b!7142794))

(assert (= (and start!696350 (is-Star!18178 r!11483)) b!7142798))

(assert (= (and start!696350 (is-Union!18178 r!11483)) b!7142801))

(assert (= (and start!696350 condSetEmpty!52612) setIsEmpty!52612))

(assert (= (and start!696350 (not condSetEmpty!52612)) setNonEmpty!52612))

(assert (= setNonEmpty!52612 b!7142789))

(declare-fun m!7857014 () Bool)

(assert (=> b!7142795 m!7857014))

(declare-fun m!7857016 () Bool)

(assert (=> b!7142799 m!7857016))

(declare-fun m!7857018 () Bool)

(assert (=> b!7142799 m!7857018))

(declare-fun m!7857020 () Bool)

(assert (=> start!696350 m!7857020))

(declare-fun m!7857022 () Bool)

(assert (=> b!7142800 m!7857022))

(declare-fun m!7857024 () Bool)

(assert (=> b!7142800 m!7857024))

(declare-fun m!7857026 () Bool)

(assert (=> b!7142793 m!7857026))

(declare-fun m!7857028 () Bool)

(assert (=> b!7142797 m!7857028))

(declare-fun m!7857030 () Bool)

(assert (=> b!7142797 m!7857030))

(declare-fun m!7857032 () Bool)

(assert (=> b!7142797 m!7857032))

(declare-fun m!7857034 () Bool)

(assert (=> b!7142797 m!7857034))

(declare-fun m!7857036 () Bool)

(assert (=> b!7142797 m!7857036))

(declare-fun m!7857038 () Bool)

(assert (=> b!7142797 m!7857038))

(declare-fun m!7857040 () Bool)

(assert (=> b!7142792 m!7857040))

(assert (=> b!7142790 m!7857026))

(assert (=> b!7142790 m!7857026))

(declare-fun m!7857042 () Bool)

(assert (=> b!7142790 m!7857042))

(declare-fun m!7857044 () Bool)

(assert (=> b!7142790 m!7857044))

(declare-fun m!7857046 () Bool)

(assert (=> b!7142788 m!7857046))

(declare-fun m!7857048 () Bool)

(assert (=> b!7142788 m!7857048))

(declare-fun m!7857050 () Bool)

(assert (=> setNonEmpty!52612 m!7857050))

(push 1)

(assert tp_is_empty!45993)

(assert (not b!7142797))

(assert (not b!7142788))

(assert (not b!7142792))

(assert (not b!7142800))

(assert (not b!7142790))

(assert (not b!7142795))

(assert (not b!7142799))

(assert (not b!7142793))

(assert (not b!7142794))

(assert (not b!7142801))

(assert (not b!7142798))

(assert (not b!7142789))

(assert (not setNonEmpty!52612))

(assert (not start!696350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1888699 () Bool)

(declare-fun d!2227660 () Bool)

(assert (= bs!1888699 (and d!2227660 b!7142790)))

(declare-fun lambda!435101 () Int)

(assert (=> bs!1888699 (not (= lambda!435101 lambda!435083))))

(assert (=> d!2227660 true))

(declare-fun order!28587 () Int)

(declare-fun dynLambda!28226 (Int Int) Int)

(assert (=> d!2227660 (< (dynLambda!28226 order!28587 lambda!435083) (dynLambda!28226 order!28587 lambda!435101))))

(assert (=> d!2227660 (= (exists!3983 lt!2567868 lambda!435083) (not (forall!17016 lt!2567868 lambda!435101)))))

(declare-fun bs!1888700 () Bool)

(assert (= bs!1888700 d!2227660))

(declare-fun m!7857090 () Bool)

(assert (=> bs!1888700 m!7857090))

(assert (=> b!7142793 d!2227660))

(declare-fun bs!1888703 () Bool)

(declare-fun d!2227664 () Bool)

(assert (= bs!1888703 (and d!2227664 b!7142790)))

(declare-fun lambda!435107 () Int)

(assert (=> bs!1888703 (not (= lambda!435107 lambda!435083))))

(declare-fun bs!1888704 () Bool)

(assert (= bs!1888704 (and d!2227664 d!2227660)))

(assert (=> bs!1888704 (not (= lambda!435107 lambda!435101))))

(declare-fun b!7142868 () Bool)

(declare-fun e!4292590 () Bool)

(declare-fun isEmpty!40075 (List!69434) Bool)

(assert (=> b!7142868 (= e!4292590 (isEmpty!40075 (t!383451 lt!2567868)))))

(declare-fun b!7142869 () Bool)

(declare-fun e!4292586 () Bool)

(declare-fun lt!2567905 () Regex!18178)

(declare-fun isEmptyLang!2107 (Regex!18178) Bool)

(assert (=> b!7142869 (= e!4292586 (isEmptyLang!2107 lt!2567905))))

(declare-fun b!7142870 () Bool)

(declare-fun e!4292588 () Regex!18178)

(assert (=> b!7142870 (= e!4292588 (h!75758 lt!2567868))))

(declare-fun b!7142871 () Bool)

(declare-fun e!4292587 () Regex!18178)

(assert (=> b!7142871 (= e!4292587 (Union!18178 (h!75758 lt!2567868) (generalisedUnion!2683 (t!383451 lt!2567868))))))

(declare-fun b!7142872 () Bool)

(declare-fun e!4292585 () Bool)

(assert (=> b!7142872 (= e!4292586 e!4292585)))

(declare-fun c!1332041 () Bool)

(declare-fun tail!13986 (List!69434) List!69434)

(assert (=> b!7142872 (= c!1332041 (isEmpty!40075 (tail!13986 lt!2567868)))))

(declare-fun e!4292589 () Bool)

(assert (=> d!2227664 e!4292589))

(declare-fun res!2914400 () Bool)

(assert (=> d!2227664 (=> (not res!2914400) (not e!4292589))))

(assert (=> d!2227664 (= res!2914400 (validRegex!9345 lt!2567905))))

(assert (=> d!2227664 (= lt!2567905 e!4292588)))

(declare-fun c!1332044 () Bool)

(assert (=> d!2227664 (= c!1332044 e!4292590)))

(declare-fun res!2914401 () Bool)

(assert (=> d!2227664 (=> (not res!2914401) (not e!4292590))))

(assert (=> d!2227664 (= res!2914401 (is-Cons!69310 lt!2567868))))

(assert (=> d!2227664 (forall!17016 lt!2567868 lambda!435107)))

(assert (=> d!2227664 (= (generalisedUnion!2683 lt!2567868) lt!2567905)))

(declare-fun b!7142873 () Bool)

(declare-fun head!14516 (List!69434) Regex!18178)

(assert (=> b!7142873 (= e!4292585 (= lt!2567905 (head!14516 lt!2567868)))))

(declare-fun b!7142874 () Bool)

(declare-fun isUnion!1534 (Regex!18178) Bool)

(assert (=> b!7142874 (= e!4292585 (isUnion!1534 lt!2567905))))

(declare-fun b!7142875 () Bool)

(assert (=> b!7142875 (= e!4292588 e!4292587)))

(declare-fun c!1332042 () Bool)

(assert (=> b!7142875 (= c!1332042 (is-Cons!69310 lt!2567868))))

(declare-fun b!7142876 () Bool)

(assert (=> b!7142876 (= e!4292587 EmptyLang!18178)))

(declare-fun b!7142877 () Bool)

(assert (=> b!7142877 (= e!4292589 e!4292586)))

(declare-fun c!1332043 () Bool)

(assert (=> b!7142877 (= c!1332043 (isEmpty!40075 lt!2567868))))

(assert (= (and d!2227664 res!2914401) b!7142868))

(assert (= (and d!2227664 c!1332044) b!7142870))

(assert (= (and d!2227664 (not c!1332044)) b!7142875))

(assert (= (and b!7142875 c!1332042) b!7142871))

(assert (= (and b!7142875 (not c!1332042)) b!7142876))

(assert (= (and d!2227664 res!2914400) b!7142877))

(assert (= (and b!7142877 c!1332043) b!7142869))

(assert (= (and b!7142877 (not c!1332043)) b!7142872))

(assert (= (and b!7142872 c!1332041) b!7142873))

(assert (= (and b!7142872 (not c!1332041)) b!7142874))

(declare-fun m!7857094 () Bool)

(assert (=> b!7142871 m!7857094))

(declare-fun m!7857096 () Bool)

(assert (=> b!7142872 m!7857096))

(assert (=> b!7142872 m!7857096))

(declare-fun m!7857098 () Bool)

(assert (=> b!7142872 m!7857098))

(declare-fun m!7857100 () Bool)

(assert (=> b!7142869 m!7857100))

(declare-fun m!7857102 () Bool)

(assert (=> b!7142877 m!7857102))

(declare-fun m!7857104 () Bool)

(assert (=> b!7142868 m!7857104))

(declare-fun m!7857106 () Bool)

(assert (=> b!7142873 m!7857106))

(declare-fun m!7857108 () Bool)

(assert (=> d!2227664 m!7857108))

(declare-fun m!7857110 () Bool)

(assert (=> d!2227664 m!7857110))

(declare-fun m!7857112 () Bool)

(assert (=> b!7142874 m!7857112))

(assert (=> b!7142799 d!2227664))

(declare-fun bs!1888706 () Bool)

(declare-fun d!2227668 () Bool)

(assert (= bs!1888706 (and d!2227668 b!7142790)))

(declare-fun lambda!435110 () Int)

(assert (=> bs!1888706 (not (= lambda!435110 lambda!435083))))

(declare-fun bs!1888707 () Bool)

(assert (= bs!1888707 (and d!2227668 d!2227660)))

(assert (=> bs!1888707 (not (= lambda!435110 lambda!435101))))

(declare-fun bs!1888708 () Bool)

(assert (= bs!1888708 (and d!2227668 d!2227664)))

(assert (=> bs!1888708 (= lambda!435110 lambda!435107)))

(declare-fun lt!2567911 () List!69434)

(assert (=> d!2227668 (forall!17016 lt!2567911 lambda!435110)))

(declare-fun e!4292593 () List!69434)

(assert (=> d!2227668 (= lt!2567911 e!4292593)))

(declare-fun c!1332047 () Bool)

(assert (=> d!2227668 (= c!1332047 (is-Cons!69311 lt!2567865))))

(assert (=> d!2227668 (= (unfocusZipperList!2219 lt!2567865) lt!2567911)))

(declare-fun b!7142882 () Bool)

(assert (=> b!7142882 (= e!4292593 (Cons!69310 (generalisedConcat!2359 (exprs!7672 (h!75759 lt!2567865))) (unfocusZipperList!2219 (t!383452 lt!2567865))))))

(declare-fun b!7142883 () Bool)

(assert (=> b!7142883 (= e!4292593 Nil!69310)))

(assert (= (and d!2227668 c!1332047) b!7142882))

(assert (= (and d!2227668 (not c!1332047)) b!7142883))

(declare-fun m!7857118 () Bool)

(assert (=> d!2227668 m!7857118))

(declare-fun m!7857120 () Bool)

(assert (=> b!7142882 m!7857120))

(declare-fun m!7857122 () Bool)

(assert (=> b!7142882 m!7857122))

(assert (=> b!7142799 d!2227668))

(declare-fun d!2227672 () Bool)

(assert (=> d!2227672 (contains!20612 (unfocusZipperList!2219 lt!2567865) (generalisedConcat!2359 (exprs!7672 lt!2567871)))))

(declare-fun lt!2567916 () Unit!163225)

(declare-fun choose!55261 (List!69435 Context!14344) Unit!163225)

(assert (=> d!2227672 (= lt!2567916 (choose!55261 lt!2567865 lt!2567871))))

(declare-fun contains!20614 (List!69435 Context!14344) Bool)

(assert (=> d!2227672 (contains!20614 lt!2567865 lt!2567871)))

(assert (=> d!2227672 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!15 lt!2567865 lt!2567871) lt!2567916)))

(declare-fun bs!1888709 () Bool)

(assert (= bs!1888709 d!2227672))

(declare-fun m!7857124 () Bool)

(assert (=> bs!1888709 m!7857124))

(assert (=> bs!1888709 m!7857036))

(assert (=> bs!1888709 m!7857018))

(assert (=> bs!1888709 m!7857018))

(assert (=> bs!1888709 m!7857036))

(declare-fun m!7857126 () Bool)

(assert (=> bs!1888709 m!7857126))

(declare-fun m!7857128 () Bool)

(assert (=> bs!1888709 m!7857128))

(assert (=> b!7142797 d!2227672))

(declare-fun bs!1888711 () Bool)

(declare-fun d!2227674 () Bool)

(assert (= bs!1888711 (and d!2227674 b!7142790)))

(declare-fun lambda!435115 () Int)

(assert (=> bs!1888711 (not (= lambda!435115 lambda!435083))))

(declare-fun bs!1888712 () Bool)

(assert (= bs!1888712 (and d!2227674 d!2227660)))

(assert (=> bs!1888712 (not (= lambda!435115 lambda!435101))))

(declare-fun bs!1888713 () Bool)

(assert (= bs!1888713 (and d!2227674 d!2227664)))

(assert (=> bs!1888713 (= lambda!435115 lambda!435107)))

(declare-fun bs!1888714 () Bool)

(assert (= bs!1888714 (and d!2227674 d!2227668)))

(assert (=> bs!1888714 (= lambda!435115 lambda!435110)))

(declare-fun b!7142907 () Bool)

(declare-fun e!4292613 () Bool)

(declare-fun lt!2567920 () Regex!18178)

(declare-fun isConcat!1563 (Regex!18178) Bool)

(assert (=> b!7142907 (= e!4292613 (isConcat!1563 lt!2567920))))

(declare-fun e!4292614 () Bool)

(assert (=> d!2227674 e!4292614))

(declare-fun res!2914409 () Bool)

(assert (=> d!2227674 (=> (not res!2914409) (not e!4292614))))

(assert (=> d!2227674 (= res!2914409 (validRegex!9345 lt!2567920))))

(declare-fun e!4292609 () Regex!18178)

(assert (=> d!2227674 (= lt!2567920 e!4292609)))

(declare-fun c!1332057 () Bool)

(declare-fun e!4292611 () Bool)

(assert (=> d!2227674 (= c!1332057 e!4292611)))

(declare-fun res!2914410 () Bool)

(assert (=> d!2227674 (=> (not res!2914410) (not e!4292611))))

(assert (=> d!2227674 (= res!2914410 (is-Cons!69310 (exprs!7672 lt!2567871)))))

(assert (=> d!2227674 (forall!17016 (exprs!7672 lt!2567871) lambda!435115)))

(assert (=> d!2227674 (= (generalisedConcat!2359 (exprs!7672 lt!2567871)) lt!2567920)))

(declare-fun b!7142908 () Bool)

(declare-fun e!4292610 () Bool)

(declare-fun isEmptyExpr!2040 (Regex!18178) Bool)

(assert (=> b!7142908 (= e!4292610 (isEmptyExpr!2040 lt!2567920))))

(declare-fun b!7142909 () Bool)

(assert (=> b!7142909 (= e!4292613 (= lt!2567920 (head!14516 (exprs!7672 lt!2567871))))))

(declare-fun b!7142910 () Bool)

(declare-fun e!4292612 () Regex!18178)

(assert (=> b!7142910 (= e!4292612 EmptyExpr!18178)))

(declare-fun b!7142911 () Bool)

(assert (=> b!7142911 (= e!4292609 e!4292612)))

(declare-fun c!1332058 () Bool)

(assert (=> b!7142911 (= c!1332058 (is-Cons!69310 (exprs!7672 lt!2567871)))))

(declare-fun b!7142912 () Bool)

(assert (=> b!7142912 (= e!4292610 e!4292613)))

(declare-fun c!1332059 () Bool)

(assert (=> b!7142912 (= c!1332059 (isEmpty!40075 (tail!13986 (exprs!7672 lt!2567871))))))

(declare-fun b!7142913 () Bool)

(assert (=> b!7142913 (= e!4292612 (Concat!27023 (h!75758 (exprs!7672 lt!2567871)) (generalisedConcat!2359 (t!383451 (exprs!7672 lt!2567871)))))))

(declare-fun b!7142914 () Bool)

(assert (=> b!7142914 (= e!4292609 (h!75758 (exprs!7672 lt!2567871)))))

(declare-fun b!7142915 () Bool)

(assert (=> b!7142915 (= e!4292611 (isEmpty!40075 (t!383451 (exprs!7672 lt!2567871))))))

(declare-fun b!7142916 () Bool)

(assert (=> b!7142916 (= e!4292614 e!4292610)))

(declare-fun c!1332060 () Bool)

(assert (=> b!7142916 (= c!1332060 (isEmpty!40075 (exprs!7672 lt!2567871)))))

(assert (= (and d!2227674 res!2914410) b!7142915))

(assert (= (and d!2227674 c!1332057) b!7142914))

(assert (= (and d!2227674 (not c!1332057)) b!7142911))

(assert (= (and b!7142911 c!1332058) b!7142913))

(assert (= (and b!7142911 (not c!1332058)) b!7142910))

(assert (= (and d!2227674 res!2914409) b!7142916))

(assert (= (and b!7142916 c!1332060) b!7142908))

(assert (= (and b!7142916 (not c!1332060)) b!7142912))

(assert (= (and b!7142912 c!1332059) b!7142909))

(assert (= (and b!7142912 (not c!1332059)) b!7142907))

(declare-fun m!7857138 () Bool)

(assert (=> b!7142913 m!7857138))

(declare-fun m!7857140 () Bool)

(assert (=> b!7142912 m!7857140))

(assert (=> b!7142912 m!7857140))

(declare-fun m!7857142 () Bool)

(assert (=> b!7142912 m!7857142))

(declare-fun m!7857144 () Bool)

(assert (=> b!7142909 m!7857144))

(declare-fun m!7857146 () Bool)

(assert (=> b!7142915 m!7857146))

(declare-fun m!7857148 () Bool)

(assert (=> b!7142908 m!7857148))

(declare-fun m!7857150 () Bool)

(assert (=> d!2227674 m!7857150))

(declare-fun m!7857152 () Bool)

(assert (=> d!2227674 m!7857152))

(declare-fun m!7857154 () Bool)

(assert (=> b!7142916 m!7857154))

(declare-fun m!7857156 () Bool)

(assert (=> b!7142907 m!7857156))

(assert (=> b!7142797 d!2227674))

(declare-fun d!2227680 () Bool)

(declare-fun lt!2567926 () Bool)

(declare-fun content!14213 (List!69434) (Set Regex!18178))

(assert (=> d!2227680 (= lt!2567926 (set.member lt!2567872 (content!14213 lt!2567868)))))

(declare-fun e!4292619 () Bool)

(assert (=> d!2227680 (= lt!2567926 e!4292619)))

(declare-fun res!2914416 () Bool)

(assert (=> d!2227680 (=> (not res!2914416) (not e!4292619))))

(assert (=> d!2227680 (= res!2914416 (is-Cons!69310 lt!2567868))))

(assert (=> d!2227680 (= (contains!20612 lt!2567868 lt!2567872) lt!2567926)))

(declare-fun b!7142921 () Bool)

(declare-fun e!4292620 () Bool)

(assert (=> b!7142921 (= e!4292619 e!4292620)))

(declare-fun res!2914415 () Bool)

(assert (=> b!7142921 (=> res!2914415 e!4292620)))

(assert (=> b!7142921 (= res!2914415 (= (h!75758 lt!2567868) lt!2567872))))

(declare-fun b!7142922 () Bool)

(assert (=> b!7142922 (= e!4292620 (contains!20612 (t!383451 lt!2567868) lt!2567872))))

(assert (= (and d!2227680 res!2914416) b!7142921))

(assert (= (and b!7142921 (not res!2914415)) b!7142922))

(declare-fun m!7857158 () Bool)

(assert (=> d!2227680 m!7857158))

(declare-fun m!7857160 () Bool)

(assert (=> d!2227680 m!7857160))

(declare-fun m!7857162 () Bool)

(assert (=> b!7142922 m!7857162))

(assert (=> b!7142797 d!2227680))

(declare-fun bs!1888718 () Bool)

(declare-fun d!2227682 () Bool)

(assert (= bs!1888718 (and d!2227682 b!7142790)))

(declare-fun lambda!435124 () Int)

(assert (=> bs!1888718 (not (= lambda!435124 lambda!435083))))

(declare-fun bs!1888719 () Bool)

(assert (= bs!1888719 (and d!2227682 d!2227664)))

(assert (=> bs!1888719 (= lambda!435124 lambda!435107)))

(declare-fun bs!1888720 () Bool)

(assert (= bs!1888720 (and d!2227682 d!2227660)))

(assert (=> bs!1888720 (not (= lambda!435124 lambda!435101))))

(declare-fun bs!1888721 () Bool)

(assert (= bs!1888721 (and d!2227682 d!2227668)))

(assert (=> bs!1888721 (= lambda!435124 lambda!435110)))

(declare-fun bs!1888722 () Bool)

(assert (= bs!1888722 (and d!2227682 d!2227674)))

(assert (=> bs!1888722 (= lambda!435124 lambda!435115)))

(declare-fun lambda!435125 () Int)

(assert (=> bs!1888718 (= lambda!435125 lambda!435083)))

(assert (=> bs!1888719 (not (= lambda!435125 lambda!435107))))

(assert (=> bs!1888720 (not (= lambda!435125 lambda!435101))))

(assert (=> bs!1888721 (not (= lambda!435125 lambda!435110))))

(declare-fun bs!1888723 () Bool)

(assert (= bs!1888723 d!2227682))

(assert (=> bs!1888723 (not (= lambda!435125 lambda!435124))))

(assert (=> bs!1888722 (not (= lambda!435125 lambda!435115))))

(assert (=> d!2227682 (= (nullable!7697 lt!2567872) (forall!17016 (exprs!7672 lt!2567871) lambda!435125))))

(declare-fun lt!2567929 () Unit!163225)

(declare-fun choose!55262 (Regex!18178 List!69434) Unit!163225)

(assert (=> d!2227682 (= lt!2567929 (choose!55262 lt!2567872 (exprs!7672 lt!2567871)))))

(assert (=> d!2227682 (forall!17016 (exprs!7672 lt!2567871) lambda!435124)))

(assert (=> d!2227682 (= (nullableGenConcatSpec!13 lt!2567872 (exprs!7672 lt!2567871)) lt!2567929)))

(assert (=> bs!1888723 m!7857028))

(declare-fun m!7857170 () Bool)

(assert (=> bs!1888723 m!7857170))

(declare-fun m!7857172 () Bool)

(assert (=> bs!1888723 m!7857172))

(declare-fun m!7857174 () Bool)

(assert (=> bs!1888723 m!7857174))

(assert (=> b!7142797 d!2227682))

(declare-fun d!2227686 () Bool)

(declare-fun res!2914431 () Bool)

(declare-fun e!4292639 () Bool)

(assert (=> d!2227686 (=> res!2914431 e!4292639)))

(assert (=> d!2227686 (= res!2914431 (is-Nil!69310 (exprs!7672 lt!2567871)))))

(assert (=> d!2227686 (= (forall!17016 (exprs!7672 lt!2567871) lambda!435083) e!4292639)))

(declare-fun b!7142945 () Bool)

(declare-fun e!4292640 () Bool)

(assert (=> b!7142945 (= e!4292639 e!4292640)))

(declare-fun res!2914432 () Bool)

(assert (=> b!7142945 (=> (not res!2914432) (not e!4292640))))

(declare-fun dynLambda!28227 (Int Regex!18178) Bool)

(assert (=> b!7142945 (= res!2914432 (dynLambda!28227 lambda!435083 (h!75758 (exprs!7672 lt!2567871))))))

(declare-fun b!7142946 () Bool)

(assert (=> b!7142946 (= e!4292640 (forall!17016 (t!383451 (exprs!7672 lt!2567871)) lambda!435083))))

(assert (= (and d!2227686 (not res!2914431)) b!7142945))

(assert (= (and b!7142945 res!2914432) b!7142946))

(declare-fun b_lambda!272655 () Bool)

(assert (=> (not b_lambda!272655) (not b!7142945)))

(declare-fun m!7857176 () Bool)

(assert (=> b!7142945 m!7857176))

(declare-fun m!7857178 () Bool)

(assert (=> b!7142946 m!7857178))

(assert (=> b!7142797 d!2227686))

(declare-fun d!2227688 () Bool)

(declare-fun nullableFct!2997 (Regex!18178) Bool)

(assert (=> d!2227688 (= (nullable!7697 lt!2567872) (nullableFct!2997 lt!2567872))))

(declare-fun bs!1888724 () Bool)

(assert (= bs!1888724 d!2227688))

(declare-fun m!7857180 () Bool)

(assert (=> bs!1888724 m!7857180))

(assert (=> b!7142797 d!2227688))

(declare-fun d!2227690 () Bool)

(declare-fun lt!2567932 () Bool)

(declare-fun exists!3987 (List!69435 Int) Bool)

(assert (=> d!2227690 (= lt!2567932 (exists!3987 (toList!11209 z!3189) lambda!435084))))

(declare-fun choose!55263 ((Set Context!14344) Int) Bool)

(assert (=> d!2227690 (= lt!2567932 (choose!55263 z!3189 lambda!435084))))

(assert (=> d!2227690 (= (exists!3984 z!3189 lambda!435084) lt!2567932)))

(declare-fun bs!1888725 () Bool)

(assert (= bs!1888725 d!2227690))

(assert (=> bs!1888725 m!7857048))

(assert (=> bs!1888725 m!7857048))

(declare-fun m!7857182 () Bool)

(assert (=> bs!1888725 m!7857182))

(declare-fun m!7857184 () Bool)

(assert (=> bs!1888725 m!7857184))

(assert (=> b!7142792 d!2227690))

(declare-fun d!2227692 () Bool)

(declare-fun lt!2567935 () Regex!18178)

(assert (=> d!2227692 (validRegex!9345 lt!2567935)))

(assert (=> d!2227692 (= lt!2567935 (generalisedUnion!2683 (unfocusZipperList!2219 lt!2567865)))))

(assert (=> d!2227692 (= (unfocusZipper!2526 lt!2567865) lt!2567935)))

(declare-fun bs!1888726 () Bool)

(assert (= bs!1888726 d!2227692))

(declare-fun m!7857186 () Bool)

(assert (=> bs!1888726 m!7857186))

(assert (=> bs!1888726 m!7857018))

(assert (=> bs!1888726 m!7857018))

(declare-fun m!7857188 () Bool)

(assert (=> bs!1888726 m!7857188))

(assert (=> b!7142788 d!2227692))

(declare-fun d!2227694 () Bool)

(declare-fun e!4292643 () Bool)

(assert (=> d!2227694 e!4292643))

(declare-fun res!2914435 () Bool)

(assert (=> d!2227694 (=> (not res!2914435) (not e!4292643))))

(declare-fun lt!2567938 () List!69435)

(declare-fun noDuplicate!2837 (List!69435) Bool)

(assert (=> d!2227694 (= res!2914435 (noDuplicate!2837 lt!2567938))))

(declare-fun choose!55264 ((Set Context!14344)) List!69435)

(assert (=> d!2227694 (= lt!2567938 (choose!55264 z!3189))))

(assert (=> d!2227694 (= (toList!11209 z!3189) lt!2567938)))

(declare-fun b!7142949 () Bool)

(declare-fun content!14214 (List!69435) (Set Context!14344))

(assert (=> b!7142949 (= e!4292643 (= (content!14214 lt!2567938) z!3189))))

(assert (= (and d!2227694 res!2914435) b!7142949))

(declare-fun m!7857190 () Bool)

(assert (=> d!2227694 m!7857190))

(declare-fun m!7857192 () Bool)

(assert (=> d!2227694 m!7857192))

(declare-fun m!7857194 () Bool)

(assert (=> b!7142949 m!7857194))

(assert (=> b!7142788 d!2227694))

(declare-fun b!7142977 () Bool)

(declare-fun e!4292671 () Bool)

(declare-fun e!4292670 () Bool)

(assert (=> b!7142977 (= e!4292671 e!4292670)))

(declare-fun c!1332072 () Bool)

(assert (=> b!7142977 (= c!1332072 (is-Star!18178 r!11483))))

(declare-fun d!2227696 () Bool)

(declare-fun res!2914454 () Bool)

(assert (=> d!2227696 (=> res!2914454 e!4292671)))

(assert (=> d!2227696 (= res!2914454 (is-ElementMatch!18178 r!11483))))

(assert (=> d!2227696 (= (validRegex!9345 r!11483) e!4292671)))

(declare-fun c!1332073 () Bool)

(declare-fun call!651280 () Bool)

(declare-fun bm!651273 () Bool)

(assert (=> bm!651273 (= call!651280 (validRegex!9345 (ite c!1332072 (reg!18507 r!11483) (ite c!1332073 (regOne!36869 r!11483) (regOne!36868 r!11483)))))))

(declare-fun b!7142978 () Bool)

(declare-fun e!4292666 () Bool)

(assert (=> b!7142978 (= e!4292666 call!651280)))

(declare-fun b!7142979 () Bool)

(declare-fun e!4292665 () Bool)

(declare-fun call!651278 () Bool)

(assert (=> b!7142979 (= e!4292665 call!651278)))

(declare-fun b!7142980 () Bool)

(assert (=> b!7142980 (= e!4292670 e!4292666)))

(declare-fun res!2914455 () Bool)

(assert (=> b!7142980 (= res!2914455 (not (nullable!7697 (reg!18507 r!11483))))))

(assert (=> b!7142980 (=> (not res!2914455) (not e!4292666))))

(declare-fun bm!651274 () Bool)

(declare-fun call!651279 () Bool)

(assert (=> bm!651274 (= call!651279 call!651280)))

(declare-fun b!7142981 () Bool)

(declare-fun e!4292667 () Bool)

(declare-fun e!4292668 () Bool)

(assert (=> b!7142981 (= e!4292667 e!4292668)))

(declare-fun res!2914452 () Bool)

(assert (=> b!7142981 (=> (not res!2914452) (not e!4292668))))

(assert (=> b!7142981 (= res!2914452 call!651279)))

(declare-fun b!7142982 () Bool)

(declare-fun e!4292669 () Bool)

(assert (=> b!7142982 (= e!4292670 e!4292669)))

(assert (=> b!7142982 (= c!1332073 (is-Union!18178 r!11483))))

(declare-fun b!7142983 () Bool)

(declare-fun res!2914451 () Bool)

(assert (=> b!7142983 (=> res!2914451 e!4292667)))

(assert (=> b!7142983 (= res!2914451 (not (is-Concat!27023 r!11483)))))

(assert (=> b!7142983 (= e!4292669 e!4292667)))

(declare-fun bm!651275 () Bool)

(assert (=> bm!651275 (= call!651278 (validRegex!9345 (ite c!1332073 (regTwo!36869 r!11483) (regTwo!36868 r!11483))))))

(declare-fun b!7142984 () Bool)

(declare-fun res!2914453 () Bool)

(assert (=> b!7142984 (=> (not res!2914453) (not e!4292665))))

(assert (=> b!7142984 (= res!2914453 call!651279)))

(assert (=> b!7142984 (= e!4292669 e!4292665)))

(declare-fun b!7142985 () Bool)

(assert (=> b!7142985 (= e!4292668 call!651278)))

(assert (= (and d!2227696 (not res!2914454)) b!7142977))

(assert (= (and b!7142977 c!1332072) b!7142980))

(assert (= (and b!7142977 (not c!1332072)) b!7142982))

(assert (= (and b!7142980 res!2914455) b!7142978))

(assert (= (and b!7142982 c!1332073) b!7142984))

(assert (= (and b!7142982 (not c!1332073)) b!7142983))

(assert (= (and b!7142984 res!2914453) b!7142979))

(assert (= (and b!7142983 (not res!2914451)) b!7142981))

(assert (= (and b!7142981 res!2914452) b!7142985))

(assert (= (or b!7142979 b!7142985) bm!651275))

(assert (= (or b!7142984 b!7142981) bm!651274))

(assert (= (or b!7142978 bm!651274) bm!651273))

(declare-fun m!7857202 () Bool)

(assert (=> bm!651273 m!7857202))

(declare-fun m!7857204 () Bool)

(assert (=> b!7142980 m!7857204))

(declare-fun m!7857206 () Bool)

(assert (=> bm!651275 m!7857206))

(assert (=> start!696350 d!2227696))

(declare-fun bs!1888731 () Bool)

(declare-fun d!2227700 () Bool)

(assert (= bs!1888731 (and d!2227700 d!2227682)))

(declare-fun lambda!435131 () Int)

(assert (=> bs!1888731 (not (= lambda!435131 lambda!435125))))

(declare-fun bs!1888732 () Bool)

(assert (= bs!1888732 (and d!2227700 b!7142790)))

(assert (=> bs!1888732 (not (= lambda!435131 lambda!435083))))

(declare-fun bs!1888733 () Bool)

(assert (= bs!1888733 (and d!2227700 d!2227664)))

(assert (=> bs!1888733 (= lambda!435131 lambda!435107)))

(declare-fun bs!1888734 () Bool)

(assert (= bs!1888734 (and d!2227700 d!2227660)))

(assert (=> bs!1888734 (not (= lambda!435131 lambda!435101))))

(declare-fun bs!1888735 () Bool)

(assert (= bs!1888735 (and d!2227700 d!2227668)))

(assert (=> bs!1888735 (= lambda!435131 lambda!435110)))

(assert (=> bs!1888731 (= lambda!435131 lambda!435124)))

(declare-fun bs!1888736 () Bool)

(assert (= bs!1888736 (and d!2227700 d!2227674)))

(assert (=> bs!1888736 (= lambda!435131 lambda!435115)))

(assert (=> d!2227700 (= (inv!88510 setElem!52612) (forall!17016 (exprs!7672 setElem!52612) lambda!435131))))

(declare-fun bs!1888737 () Bool)

(assert (= bs!1888737 d!2227700))

(declare-fun m!7857210 () Bool)

(assert (=> bs!1888737 m!7857210))

(assert (=> setNonEmpty!52612 d!2227700))

(assert (=> b!7142790 d!2227660))

(declare-fun d!2227704 () Bool)

(assert (=> d!2227704 (= (nullable!7697 lt!2567869) (nullableFct!2997 lt!2567869))))

(declare-fun bs!1888738 () Bool)

(assert (= bs!1888738 d!2227704))

(declare-fun m!7857212 () Bool)

(assert (=> bs!1888738 m!7857212))

(assert (=> b!7142790 d!2227704))

(declare-fun bs!1888739 () Bool)

(declare-fun d!2227706 () Bool)

(assert (= bs!1888739 (and d!2227706 d!2227682)))

(declare-fun lambda!435136 () Int)

(assert (=> bs!1888739 (not (= lambda!435136 lambda!435125))))

(declare-fun bs!1888740 () Bool)

(assert (= bs!1888740 (and d!2227706 b!7142790)))

(assert (=> bs!1888740 (not (= lambda!435136 lambda!435083))))

(declare-fun bs!1888741 () Bool)

(assert (= bs!1888741 (and d!2227706 d!2227664)))

(assert (=> bs!1888741 (= lambda!435136 lambda!435107)))

(declare-fun bs!1888742 () Bool)

(assert (= bs!1888742 (and d!2227706 d!2227700)))

(assert (=> bs!1888742 (= lambda!435136 lambda!435131)))

(declare-fun bs!1888743 () Bool)

(assert (= bs!1888743 (and d!2227706 d!2227660)))

(assert (=> bs!1888743 (not (= lambda!435136 lambda!435101))))

(declare-fun bs!1888744 () Bool)

(assert (= bs!1888744 (and d!2227706 d!2227668)))

(assert (=> bs!1888744 (= lambda!435136 lambda!435110)))

(assert (=> bs!1888739 (= lambda!435136 lambda!435124)))

(declare-fun bs!1888745 () Bool)

(assert (= bs!1888745 (and d!2227706 d!2227674)))

(assert (=> bs!1888745 (= lambda!435136 lambda!435115)))

(declare-fun lambda!435137 () Int)

(assert (=> bs!1888739 (= lambda!435137 lambda!435125)))

(assert (=> bs!1888740 (= lambda!435137 lambda!435083)))

(assert (=> bs!1888741 (not (= lambda!435137 lambda!435107))))

(assert (=> bs!1888742 (not (= lambda!435137 lambda!435131))))

(assert (=> bs!1888743 (not (= lambda!435137 lambda!435101))))

(assert (=> bs!1888744 (not (= lambda!435137 lambda!435110))))

(assert (=> bs!1888745 (not (= lambda!435137 lambda!435115))))

(declare-fun bs!1888746 () Bool)

(assert (= bs!1888746 d!2227706))

(assert (=> bs!1888746 (not (= lambda!435137 lambda!435136))))

(assert (=> bs!1888739 (not (= lambda!435137 lambda!435124))))

(assert (=> d!2227706 (= (nullable!7697 lt!2567869) (exists!3983 lt!2567868 lambda!435137))))

(declare-fun lt!2567941 () Unit!163225)

(declare-fun choose!55265 (Regex!18178 List!69434) Unit!163225)

(assert (=> d!2227706 (= lt!2567941 (choose!55265 lt!2567869 lt!2567868))))

(assert (=> d!2227706 (forall!17016 lt!2567868 lambda!435136)))

(assert (=> d!2227706 (= (nullableGenUnionSpec!65 lt!2567869 lt!2567868) lt!2567941)))

(assert (=> bs!1888746 m!7857042))

(declare-fun m!7857214 () Bool)

(assert (=> bs!1888746 m!7857214))

(declare-fun m!7857216 () Bool)

(assert (=> bs!1888746 m!7857216))

(declare-fun m!7857218 () Bool)

(assert (=> bs!1888746 m!7857218))

(assert (=> b!7142790 d!2227706))

(declare-fun d!2227708 () Bool)

(declare-fun e!4292674 () Bool)

(assert (=> d!2227708 e!4292674))

(declare-fun res!2914458 () Bool)

(assert (=> d!2227708 (=> (not res!2914458) (not e!4292674))))

(declare-fun lt!2567944 () Context!14344)

(declare-fun dynLambda!28228 (Int Context!14344) Bool)

(assert (=> d!2227708 (= res!2914458 (dynLambda!28228 lambda!435084 lt!2567944))))

(declare-fun getWitness!1959 (List!69435 Int) Context!14344)

(assert (=> d!2227708 (= lt!2567944 (getWitness!1959 (toList!11209 z!3189) lambda!435084))))

(assert (=> d!2227708 (exists!3984 z!3189 lambda!435084)))

(assert (=> d!2227708 (= (getWitness!1957 z!3189 lambda!435084) lt!2567944)))

(declare-fun b!7142988 () Bool)

(assert (=> b!7142988 (= e!4292674 (set.member lt!2567944 z!3189))))

(assert (= (and d!2227708 res!2914458) b!7142988))

(declare-fun b_lambda!272657 () Bool)

(assert (=> (not b_lambda!272657) (not d!2227708)))

(declare-fun m!7857220 () Bool)

(assert (=> d!2227708 m!7857220))

(assert (=> d!2227708 m!7857048))

(assert (=> d!2227708 m!7857048))

(declare-fun m!7857222 () Bool)

(assert (=> d!2227708 m!7857222))

(assert (=> d!2227708 m!7857040))

(declare-fun m!7857224 () Bool)

(assert (=> b!7142988 m!7857224))

(assert (=> b!7142800 d!2227708))

(declare-fun bs!1888747 () Bool)

(declare-fun d!2227710 () Bool)

(assert (= bs!1888747 (and d!2227710 d!2227682)))

(declare-fun lambda!435142 () Int)

(assert (=> bs!1888747 (= lambda!435142 lambda!435125)))

(declare-fun bs!1888748 () Bool)

(assert (= bs!1888748 (and d!2227710 b!7142790)))

(assert (=> bs!1888748 (= lambda!435142 lambda!435083)))

(declare-fun bs!1888749 () Bool)

(assert (= bs!1888749 (and d!2227710 d!2227664)))

(assert (=> bs!1888749 (not (= lambda!435142 lambda!435107))))

(declare-fun bs!1888750 () Bool)

(assert (= bs!1888750 (and d!2227710 d!2227700)))

(assert (=> bs!1888750 (not (= lambda!435142 lambda!435131))))

(declare-fun bs!1888751 () Bool)

(assert (= bs!1888751 (and d!2227710 d!2227660)))

(assert (=> bs!1888751 (not (= lambda!435142 lambda!435101))))

(declare-fun bs!1888752 () Bool)

(assert (= bs!1888752 (and d!2227710 d!2227674)))

(assert (=> bs!1888752 (not (= lambda!435142 lambda!435115))))

(declare-fun bs!1888753 () Bool)

(assert (= bs!1888753 (and d!2227710 d!2227668)))

(assert (=> bs!1888753 (not (= lambda!435142 lambda!435110))))

(declare-fun bs!1888754 () Bool)

(assert (= bs!1888754 (and d!2227710 d!2227706)))

(assert (=> bs!1888754 (= lambda!435142 lambda!435137)))

(assert (=> bs!1888754 (not (= lambda!435142 lambda!435136))))

(assert (=> bs!1888747 (not (= lambda!435142 lambda!435124))))

(assert (=> d!2227710 (= (nullableContext!156 lt!2567871) (forall!17016 (exprs!7672 lt!2567871) lambda!435142))))

(declare-fun bs!1888755 () Bool)

(assert (= bs!1888755 d!2227710))

(declare-fun m!7857226 () Bool)

(assert (=> bs!1888755 m!7857226))

(assert (=> b!7142795 d!2227710))

(declare-fun b!7143013 () Bool)

(declare-fun e!4292689 () Bool)

(declare-fun tp!1970138 () Bool)

(declare-fun tp!1970139 () Bool)

(assert (=> b!7143013 (= e!4292689 (and tp!1970138 tp!1970139))))

(assert (=> b!7142789 (= tp!1970112 e!4292689)))

(assert (= (and b!7142789 (is-Cons!69310 (exprs!7672 setElem!52612))) b!7143013))

(declare-fun b!7143025 () Bool)

(declare-fun e!4292692 () Bool)

(declare-fun tp!1970154 () Bool)

(declare-fun tp!1970152 () Bool)

(assert (=> b!7143025 (= e!4292692 (and tp!1970154 tp!1970152))))

(assert (=> b!7142794 (= tp!1970110 e!4292692)))

(declare-fun b!7143024 () Bool)

(assert (=> b!7143024 (= e!4292692 tp_is_empty!45993)))

(declare-fun b!7143026 () Bool)

(declare-fun tp!1970153 () Bool)

(assert (=> b!7143026 (= e!4292692 tp!1970153)))

(declare-fun b!7143027 () Bool)

(declare-fun tp!1970151 () Bool)

(declare-fun tp!1970150 () Bool)

(assert (=> b!7143027 (= e!4292692 (and tp!1970151 tp!1970150))))

(assert (= (and b!7142794 (is-ElementMatch!18178 (regOne!36868 r!11483))) b!7143024))

(assert (= (and b!7142794 (is-Concat!27023 (regOne!36868 r!11483))) b!7143025))

(assert (= (and b!7142794 (is-Star!18178 (regOne!36868 r!11483))) b!7143026))

(assert (= (and b!7142794 (is-Union!18178 (regOne!36868 r!11483))) b!7143027))

(declare-fun b!7143029 () Bool)

(declare-fun e!4292693 () Bool)

(declare-fun tp!1970159 () Bool)

(declare-fun tp!1970157 () Bool)

(assert (=> b!7143029 (= e!4292693 (and tp!1970159 tp!1970157))))

(assert (=> b!7142794 (= tp!1970111 e!4292693)))

(declare-fun b!7143028 () Bool)

(assert (=> b!7143028 (= e!4292693 tp_is_empty!45993)))

(declare-fun b!7143030 () Bool)

(declare-fun tp!1970158 () Bool)

(assert (=> b!7143030 (= e!4292693 tp!1970158)))

(declare-fun b!7143031 () Bool)

(declare-fun tp!1970156 () Bool)

(declare-fun tp!1970155 () Bool)

(assert (=> b!7143031 (= e!4292693 (and tp!1970156 tp!1970155))))

(assert (= (and b!7142794 (is-ElementMatch!18178 (regTwo!36868 r!11483))) b!7143028))

(assert (= (and b!7142794 (is-Concat!27023 (regTwo!36868 r!11483))) b!7143029))

(assert (= (and b!7142794 (is-Star!18178 (regTwo!36868 r!11483))) b!7143030))

(assert (= (and b!7142794 (is-Union!18178 (regTwo!36868 r!11483))) b!7143031))

(declare-fun b!7143033 () Bool)

(declare-fun e!4292694 () Bool)

(declare-fun tp!1970164 () Bool)

(declare-fun tp!1970162 () Bool)

(assert (=> b!7143033 (= e!4292694 (and tp!1970164 tp!1970162))))

(assert (=> b!7142798 (= tp!1970108 e!4292694)))

(declare-fun b!7143032 () Bool)

(assert (=> b!7143032 (= e!4292694 tp_is_empty!45993)))

(declare-fun b!7143034 () Bool)

(declare-fun tp!1970163 () Bool)

(assert (=> b!7143034 (= e!4292694 tp!1970163)))

(declare-fun b!7143035 () Bool)

(declare-fun tp!1970161 () Bool)

(declare-fun tp!1970160 () Bool)

(assert (=> b!7143035 (= e!4292694 (and tp!1970161 tp!1970160))))

(assert (= (and b!7142798 (is-ElementMatch!18178 (reg!18507 r!11483))) b!7143032))

(assert (= (and b!7142798 (is-Concat!27023 (reg!18507 r!11483))) b!7143033))

(assert (= (and b!7142798 (is-Star!18178 (reg!18507 r!11483))) b!7143034))

(assert (= (and b!7142798 (is-Union!18178 (reg!18507 r!11483))) b!7143035))

(declare-fun b!7143037 () Bool)

(declare-fun e!4292695 () Bool)

(declare-fun tp!1970169 () Bool)

(declare-fun tp!1970167 () Bool)

(assert (=> b!7143037 (= e!4292695 (and tp!1970169 tp!1970167))))

(assert (=> b!7142801 (= tp!1970106 e!4292695)))

(declare-fun b!7143036 () Bool)

(assert (=> b!7143036 (= e!4292695 tp_is_empty!45993)))

(declare-fun b!7143038 () Bool)

(declare-fun tp!1970168 () Bool)

(assert (=> b!7143038 (= e!4292695 tp!1970168)))

(declare-fun b!7143039 () Bool)

(declare-fun tp!1970166 () Bool)

(declare-fun tp!1970165 () Bool)

(assert (=> b!7143039 (= e!4292695 (and tp!1970166 tp!1970165))))

(assert (= (and b!7142801 (is-ElementMatch!18178 (regOne!36869 r!11483))) b!7143036))

(assert (= (and b!7142801 (is-Concat!27023 (regOne!36869 r!11483))) b!7143037))

(assert (= (and b!7142801 (is-Star!18178 (regOne!36869 r!11483))) b!7143038))

(assert (= (and b!7142801 (is-Union!18178 (regOne!36869 r!11483))) b!7143039))

(declare-fun b!7143041 () Bool)

(declare-fun e!4292696 () Bool)

(declare-fun tp!1970174 () Bool)

(declare-fun tp!1970172 () Bool)

(assert (=> b!7143041 (= e!4292696 (and tp!1970174 tp!1970172))))

(assert (=> b!7142801 (= tp!1970107 e!4292696)))

(declare-fun b!7143040 () Bool)

(assert (=> b!7143040 (= e!4292696 tp_is_empty!45993)))

(declare-fun b!7143042 () Bool)

(declare-fun tp!1970173 () Bool)

(assert (=> b!7143042 (= e!4292696 tp!1970173)))

(declare-fun b!7143043 () Bool)

(declare-fun tp!1970171 () Bool)

(declare-fun tp!1970170 () Bool)

(assert (=> b!7143043 (= e!4292696 (and tp!1970171 tp!1970170))))

(assert (= (and b!7142801 (is-ElementMatch!18178 (regTwo!36869 r!11483))) b!7143040))

(assert (= (and b!7142801 (is-Concat!27023 (regTwo!36869 r!11483))) b!7143041))

(assert (= (and b!7142801 (is-Star!18178 (regTwo!36869 r!11483))) b!7143042))

(assert (= (and b!7142801 (is-Union!18178 (regTwo!36869 r!11483))) b!7143043))

(declare-fun condSetEmpty!52618 () Bool)

(assert (=> setNonEmpty!52612 (= condSetEmpty!52618 (= setRest!52612 (as set.empty (Set Context!14344))))))

(declare-fun setRes!52618 () Bool)

(assert (=> setNonEmpty!52612 (= tp!1970109 setRes!52618)))

(declare-fun setIsEmpty!52618 () Bool)

(assert (=> setIsEmpty!52618 setRes!52618))

(declare-fun tp!1970180 () Bool)

(declare-fun setNonEmpty!52618 () Bool)

(declare-fun e!4292699 () Bool)

(declare-fun setElem!52618 () Context!14344)

(assert (=> setNonEmpty!52618 (= setRes!52618 (and tp!1970180 (inv!88510 setElem!52618) e!4292699))))

(declare-fun setRest!52618 () (Set Context!14344))

(assert (=> setNonEmpty!52618 (= setRest!52612 (set.union (set.insert setElem!52618 (as set.empty (Set Context!14344))) setRest!52618))))

(declare-fun b!7143048 () Bool)

(declare-fun tp!1970179 () Bool)

(assert (=> b!7143048 (= e!4292699 tp!1970179)))

(assert (= (and setNonEmpty!52612 condSetEmpty!52618) setIsEmpty!52618))

(assert (= (and setNonEmpty!52612 (not condSetEmpty!52618)) setNonEmpty!52618))

(assert (= setNonEmpty!52618 b!7143048))

(declare-fun m!7857228 () Bool)

(assert (=> setNonEmpty!52618 m!7857228))

(declare-fun b_lambda!272659 () Bool)

(assert (= b_lambda!272657 (or b!7142792 b_lambda!272659)))

(declare-fun bs!1888756 () Bool)

(declare-fun d!2227712 () Bool)

(assert (= bs!1888756 (and d!2227712 b!7142792)))

(assert (=> bs!1888756 (= (dynLambda!28228 lambda!435084 lt!2567944) (nullableContext!156 lt!2567944))))

(declare-fun m!7857230 () Bool)

(assert (=> bs!1888756 m!7857230))

(assert (=> d!2227708 d!2227712))

(declare-fun b_lambda!272661 () Bool)

(assert (= b_lambda!272655 (or b!7142790 b_lambda!272661)))

(declare-fun bs!1888757 () Bool)

(declare-fun d!2227714 () Bool)

(assert (= bs!1888757 (and d!2227714 b!7142790)))

(assert (=> bs!1888757 (= (dynLambda!28227 lambda!435083 (h!75758 (exprs!7672 lt!2567871))) (nullable!7697 (h!75758 (exprs!7672 lt!2567871))))))

(declare-fun m!7857232 () Bool)

(assert (=> bs!1888757 m!7857232))

(assert (=> b!7142945 d!2227714))

(push 1)

(assert (not b!7143030))

(assert (not d!2227674))

(assert (not b!7142877))

(assert (not b!7143038))

(assert (not b!7143033))

(assert (not b!7142915))

(assert (not b!7142908))

(assert (not b!7143039))

(assert (not d!2227700))

(assert (not d!2227688))

(assert (not b!7143042))

(assert (not b!7143035))

(assert (not d!2227710))

(assert (not b_lambda!272659))

(assert (not b!7142882))

(assert (not d!2227668))

(assert (not b!7143013))

(assert (not b!7143048))

(assert (not b!7142871))

(assert (not b!7142909))

(assert (not b!7142922))

(assert (not d!2227664))

(assert (not d!2227680))

(assert (not b!7142916))

(assert (not b!7142912))

(assert tp_is_empty!45993)

(assert (not b!7142907))

(assert (not setNonEmpty!52618))

(assert (not b!7142949))

(assert (not b!7143027))

(assert (not d!2227706))

(assert (not b!7143034))

(assert (not b!7143031))

(assert (not d!2227704))

(assert (not d!2227690))

(assert (not b!7143043))

(assert (not b!7143029))

(assert (not b!7142869))

(assert (not b!7143026))

(assert (not d!2227708))

(assert (not d!2227672))

(assert (not d!2227682))

(assert (not b!7142868))

(assert (not d!2227694))

(assert (not bm!651275))

(assert (not b!7142913))

(assert (not d!2227660))

(assert (not b!7142946))

(assert (not b!7142874))

(assert (not b_lambda!272661))

(assert (not bm!651273))

(assert (not b!7142872))

(assert (not b!7143025))

(assert (not bs!1888756))

(assert (not b!7142980))

(assert (not b!7143041))

(assert (not bs!1888757))

(assert (not d!2227692))

(assert (not b!7142873))

(assert (not b!7143037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

