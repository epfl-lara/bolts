; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541374 () Bool)

(assert start!541374)

(declare-fun b!5126992 () Bool)

(declare-fun e!3197433 () Bool)

(declare-fun e!3197435 () Bool)

(assert (=> b!5126992 (= e!3197433 (not e!3197435))))

(declare-fun res!2182981 () Bool)

(assert (=> b!5126992 (=> res!2182981 e!3197435)))

(declare-datatypes ((C!28782 0))(
  ( (C!28783 (val!24043 Int)) )
))
(declare-datatypes ((Regex!14258 0))(
  ( (ElementMatch!14258 (c!881464 C!28782)) (Concat!23103 (regOne!29028 Regex!14258) (regTwo!29028 Regex!14258)) (EmptyExpr!14258) (Star!14258 (reg!14587 Regex!14258)) (EmptyLang!14258) (Union!14258 (regOne!29029 Regex!14258) (regTwo!29029 Regex!14258)) )
))
(declare-datatypes ((List!59453 0))(
  ( (Nil!59329) (Cons!59329 (h!65777 Regex!14258) (t!372480 List!59453)) )
))
(declare-datatypes ((Context!7284 0))(
  ( (Context!7285 (exprs!4142 List!59453)) )
))
(declare-fun z!4546 () (Set Context!7284))

(declare-datatypes ((List!59454 0))(
  ( (Nil!59330) (Cons!59330 (h!65778 C!28782) (t!372481 List!59454)) )
))
(declare-fun matchZipper!926 ((Set Context!7284) List!59454) Bool)

(assert (=> b!5126992 (= res!2182981 (not (matchZipper!926 z!4546 Nil!59330)))))

(declare-fun lt!2114315 () (Set Context!7284))

(assert (=> b!5126992 (matchZipper!926 lt!2114315 Nil!59330)))

(declare-datatypes ((Unit!150513 0))(
  ( (Unit!150514) )
))
(declare-fun lt!2114316 () Unit!150513)

(declare-fun baseZ!61 () (Set Context!7284))

(declare-fun testedP!289 () List!59454)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!27 ((Set Context!7284) List!59454) Unit!150513)

(assert (=> b!5126992 (= lt!2114316 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!27 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30691 () Bool)

(declare-fun setRes!30691 () Bool)

(assert (=> setIsEmpty!30691 setRes!30691))

(declare-fun b!5126993 () Bool)

(declare-fun e!3197436 () Bool)

(declare-fun tp_is_empty!37789 () Bool)

(declare-fun tp!1430194 () Bool)

(assert (=> b!5126993 (= e!3197436 (and tp_is_empty!37789 tp!1430194))))

(declare-fun b!5126994 () Bool)

(declare-fun e!3197432 () Bool)

(assert (=> b!5126994 (= e!3197432 e!3197433)))

(declare-fun res!2182979 () Bool)

(assert (=> b!5126994 (=> (not res!2182979) (not e!3197433))))

(assert (=> b!5126994 (= res!2182979 (= lt!2114315 z!4546))))

(declare-fun derivationZipper!155 ((Set Context!7284) List!59454) (Set Context!7284))

(assert (=> b!5126994 (= lt!2114315 (derivationZipper!155 baseZ!61 testedP!289))))

(declare-fun b!5126995 () Bool)

(declare-fun e!3197434 () Bool)

(declare-fun tp!1430191 () Bool)

(assert (=> b!5126995 (= e!3197434 tp!1430191)))

(declare-fun b!5126996 () Bool)

(declare-fun e!3197438 () Bool)

(declare-fun tp!1430193 () Bool)

(assert (=> b!5126996 (= e!3197438 tp!1430193)))

(declare-fun setElem!30692 () Context!7284)

(declare-fun setRes!30692 () Bool)

(declare-fun tp!1430190 () Bool)

(declare-fun setNonEmpty!30691 () Bool)

(declare-fun inv!78827 (Context!7284) Bool)

(assert (=> setNonEmpty!30691 (= setRes!30692 (and tp!1430190 (inv!78827 setElem!30692) e!3197438))))

(declare-fun setRest!30692 () (Set Context!7284))

(assert (=> setNonEmpty!30691 (= baseZ!61 (set.union (set.insert setElem!30692 (as set.empty (Set Context!7284))) setRest!30692))))

(declare-fun res!2182977 () Bool)

(assert (=> start!541374 (=> (not res!2182977) (not e!3197432))))

(declare-fun input!5798 () List!59454)

(declare-fun isPrefix!5663 (List!59454 List!59454) Bool)

(assert (=> start!541374 (= res!2182977 (isPrefix!5663 testedP!289 input!5798))))

(assert (=> start!541374 e!3197432))

(assert (=> start!541374 e!3197436))

(declare-fun e!3197437 () Bool)

(assert (=> start!541374 e!3197437))

(declare-fun condSetEmpty!30691 () Bool)

(assert (=> start!541374 (= condSetEmpty!30691 (= baseZ!61 (as set.empty (Set Context!7284))))))

(assert (=> start!541374 setRes!30692))

(declare-fun condSetEmpty!30692 () Bool)

(assert (=> start!541374 (= condSetEmpty!30692 (= z!4546 (as set.empty (Set Context!7284))))))

(assert (=> start!541374 setRes!30691))

(declare-fun setElem!30691 () Context!7284)

(declare-fun tp!1430195 () Bool)

(declare-fun setNonEmpty!30692 () Bool)

(assert (=> setNonEmpty!30692 (= setRes!30691 (and tp!1430195 (inv!78827 setElem!30691) e!3197434))))

(declare-fun setRest!30691 () (Set Context!7284))

(assert (=> setNonEmpty!30692 (= z!4546 (set.union (set.insert setElem!30691 (as set.empty (Set Context!7284))) setRest!30691))))

(declare-fun b!5126997 () Bool)

(declare-fun res!2182980 () Bool)

(assert (=> b!5126997 (=> (not res!2182980) (not e!3197432))))

(assert (=> b!5126997 (= res!2182980 (matchZipper!926 baseZ!61 testedP!289))))

(declare-fun b!5126998 () Bool)

(declare-fun tp!1430192 () Bool)

(assert (=> b!5126998 (= e!3197437 (and tp_is_empty!37789 tp!1430192))))

(declare-fun lt!2114317 () Int)

(declare-fun b!5126999 () Bool)

(declare-fun size!39558 (List!59454) Int)

(declare-datatypes ((tuple2!63642 0))(
  ( (tuple2!63643 (_1!35124 List!59454) (_2!35124 List!59454)) )
))
(declare-fun findLongestMatchInnerZipper!202 ((Set Context!7284) List!59454 Int List!59454 List!59454 Int) tuple2!63642)

(declare-fun getSuffix!3323 (List!59454 List!59454) List!59454)

(assert (=> b!5126999 (= e!3197435 (>= (size!39558 (_1!35124 (findLongestMatchInnerZipper!202 z!4546 testedP!289 lt!2114317 (getSuffix!3323 input!5798 testedP!289) input!5798 (size!39558 input!5798)))) lt!2114317))))

(assert (=> b!5126999 (= lt!2114317 (size!39558 testedP!289))))

(declare-fun b!5127000 () Bool)

(declare-fun res!2182978 () Bool)

(assert (=> b!5127000 (=> res!2182978 e!3197435)))

(declare-fun nullableZipper!1053 ((Set Context!7284)) Bool)

(assert (=> b!5127000 (= res!2182978 (not (nullableZipper!1053 z!4546)))))

(declare-fun b!5127001 () Bool)

(declare-fun res!2182982 () Bool)

(assert (=> b!5127001 (=> res!2182982 e!3197435)))

(declare-fun lostCauseZipper!1136 ((Set Context!7284)) Bool)

(assert (=> b!5127001 (= res!2182982 (lostCauseZipper!1136 z!4546))))

(declare-fun setIsEmpty!30692 () Bool)

(assert (=> setIsEmpty!30692 setRes!30692))

(assert (= (and start!541374 res!2182977) b!5126997))

(assert (= (and b!5126997 res!2182980) b!5126994))

(assert (= (and b!5126994 res!2182979) b!5126992))

(assert (= (and b!5126992 (not res!2182981)) b!5127000))

(assert (= (and b!5127000 (not res!2182978)) b!5127001))

(assert (= (and b!5127001 (not res!2182982)) b!5126999))

(assert (= (and start!541374 (is-Cons!59330 testedP!289)) b!5126993))

(assert (= (and start!541374 (is-Cons!59330 input!5798)) b!5126998))

(assert (= (and start!541374 condSetEmpty!30691) setIsEmpty!30692))

(assert (= (and start!541374 (not condSetEmpty!30691)) setNonEmpty!30691))

(assert (= setNonEmpty!30691 b!5126996))

(assert (= (and start!541374 condSetEmpty!30692) setIsEmpty!30691))

(assert (= (and start!541374 (not condSetEmpty!30692)) setNonEmpty!30692))

(assert (= setNonEmpty!30692 b!5126995))

(declare-fun m!6190994 () Bool)

(assert (=> b!5127001 m!6190994))

(declare-fun m!6190996 () Bool)

(assert (=> setNonEmpty!30691 m!6190996))

(declare-fun m!6190998 () Bool)

(assert (=> b!5126992 m!6190998))

(declare-fun m!6191000 () Bool)

(assert (=> b!5126992 m!6191000))

(declare-fun m!6191002 () Bool)

(assert (=> b!5126992 m!6191002))

(declare-fun m!6191004 () Bool)

(assert (=> b!5126994 m!6191004))

(declare-fun m!6191006 () Bool)

(assert (=> setNonEmpty!30692 m!6191006))

(declare-fun m!6191008 () Bool)

(assert (=> b!5126999 m!6191008))

(declare-fun m!6191010 () Bool)

(assert (=> b!5126999 m!6191010))

(declare-fun m!6191012 () Bool)

(assert (=> b!5126999 m!6191012))

(declare-fun m!6191014 () Bool)

(assert (=> b!5126999 m!6191014))

(assert (=> b!5126999 m!6191008))

(assert (=> b!5126999 m!6191010))

(declare-fun m!6191016 () Bool)

(assert (=> b!5126999 m!6191016))

(declare-fun m!6191018 () Bool)

(assert (=> start!541374 m!6191018))

(declare-fun m!6191020 () Bool)

(assert (=> b!5126997 m!6191020))

(declare-fun m!6191022 () Bool)

(assert (=> b!5127000 m!6191022))

(push 1)

(assert tp_is_empty!37789)

(assert (not b!5126992))

(assert (not b!5126998))

(assert (not setNonEmpty!30691))

(assert (not b!5126999))

(assert (not b!5126997))

(assert (not b!5126996))

(assert (not b!5126994))

(assert (not b!5126995))

(assert (not b!5127000))

(assert (not setNonEmpty!30692))

(assert (not b!5126993))

(assert (not b!5127001))

(assert (not start!541374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1658487 () Bool)

(declare-fun lambda!251923 () Int)

(declare-fun forall!13653 (List!59453 Int) Bool)

(assert (=> d!1658487 (= (inv!78827 setElem!30691) (forall!13653 (exprs!4142 setElem!30691) lambda!251923))))

(declare-fun bs!1194094 () Bool)

(assert (= bs!1194094 d!1658487))

(declare-fun m!6191054 () Bool)

(assert (=> bs!1194094 m!6191054))

(assert (=> setNonEmpty!30692 d!1658487))

(declare-fun b!5127043 () Bool)

(declare-fun e!3197466 () Bool)

(assert (=> b!5127043 (= e!3197466 (>= (size!39558 input!5798) (size!39558 testedP!289)))))

(declare-fun d!1658489 () Bool)

(assert (=> d!1658489 e!3197466))

(declare-fun res!2183009 () Bool)

(assert (=> d!1658489 (=> res!2183009 e!3197466)))

(declare-fun lt!2114329 () Bool)

(assert (=> d!1658489 (= res!2183009 (not lt!2114329))))

(declare-fun e!3197468 () Bool)

(assert (=> d!1658489 (= lt!2114329 e!3197468)))

(declare-fun res!2183012 () Bool)

(assert (=> d!1658489 (=> res!2183012 e!3197468)))

(assert (=> d!1658489 (= res!2183012 (is-Nil!59330 testedP!289))))

(assert (=> d!1658489 (= (isPrefix!5663 testedP!289 input!5798) lt!2114329)))

(declare-fun b!5127041 () Bool)

(declare-fun res!2183010 () Bool)

(declare-fun e!3197467 () Bool)

(assert (=> b!5127041 (=> (not res!2183010) (not e!3197467))))

(declare-fun head!10964 (List!59454) C!28782)

(assert (=> b!5127041 (= res!2183010 (= (head!10964 testedP!289) (head!10964 input!5798)))))

(declare-fun b!5127040 () Bool)

(assert (=> b!5127040 (= e!3197468 e!3197467)))

(declare-fun res!2183011 () Bool)

(assert (=> b!5127040 (=> (not res!2183011) (not e!3197467))))

(assert (=> b!5127040 (= res!2183011 (not (is-Nil!59330 input!5798)))))

(declare-fun b!5127042 () Bool)

(declare-fun tail!10099 (List!59454) List!59454)

(assert (=> b!5127042 (= e!3197467 (isPrefix!5663 (tail!10099 testedP!289) (tail!10099 input!5798)))))

(assert (= (and d!1658489 (not res!2183012)) b!5127040))

(assert (= (and b!5127040 res!2183011) b!5127041))

(assert (= (and b!5127041 res!2183010) b!5127042))

(assert (= (and d!1658489 (not res!2183009)) b!5127043))

(assert (=> b!5127043 m!6191010))

(assert (=> b!5127043 m!6191014))

(declare-fun m!6191056 () Bool)

(assert (=> b!5127041 m!6191056))

(declare-fun m!6191058 () Bool)

(assert (=> b!5127041 m!6191058))

(declare-fun m!6191060 () Bool)

(assert (=> b!5127042 m!6191060))

(declare-fun m!6191062 () Bool)

(assert (=> b!5127042 m!6191062))

(assert (=> b!5127042 m!6191060))

(assert (=> b!5127042 m!6191062))

(declare-fun m!6191064 () Bool)

(assert (=> b!5127042 m!6191064))

(assert (=> start!541374 d!1658489))

(declare-fun bs!1194095 () Bool)

(declare-fun b!5127048 () Bool)

(declare-fun d!1658491 () Bool)

(assert (= bs!1194095 (and b!5127048 d!1658491)))

(declare-fun lambda!251937 () Int)

(declare-fun lambda!251936 () Int)

(assert (=> bs!1194095 (not (= lambda!251937 lambda!251936))))

(declare-fun bs!1194096 () Bool)

(declare-fun b!5127049 () Bool)

(assert (= bs!1194096 (and b!5127049 d!1658491)))

(declare-fun lambda!251938 () Int)

(assert (=> bs!1194096 (not (= lambda!251938 lambda!251936))))

(declare-fun bs!1194097 () Bool)

(assert (= bs!1194097 (and b!5127049 b!5127048)))

(assert (=> bs!1194097 (= lambda!251938 lambda!251937)))

(declare-fun bm!356854 () Bool)

(declare-datatypes ((List!59457 0))(
  ( (Nil!59333) (Cons!59333 (h!65781 Context!7284) (t!372484 List!59457)) )
))
(declare-fun call!356859 () List!59457)

(declare-fun toList!8281 ((Set Context!7284)) List!59457)

(assert (=> bm!356854 (= call!356859 (toList!8281 z!4546))))

(declare-fun e!3197475 () Unit!150513)

(declare-fun Unit!150517 () Unit!150513)

(assert (=> b!5127049 (= e!3197475 Unit!150517)))

(declare-fun lt!2114353 () List!59457)

(assert (=> b!5127049 (= lt!2114353 call!356859)))

(declare-fun lt!2114351 () Unit!150513)

(declare-fun lemmaForallThenNotExists!336 (List!59457 Int) Unit!150513)

(assert (=> b!5127049 (= lt!2114351 (lemmaForallThenNotExists!336 lt!2114353 lambda!251936))))

(declare-fun call!356858 () Bool)

(assert (=> b!5127049 (not call!356858)))

(declare-fun lt!2114350 () Unit!150513)

(assert (=> b!5127049 (= lt!2114350 lt!2114351)))

(declare-fun c!881476 () Bool)

(declare-fun lt!2114347 () List!59457)

(declare-fun bm!356853 () Bool)

(declare-fun exists!1510 (List!59457 Int) Bool)

(assert (=> bm!356853 (= call!356858 (exists!1510 (ite c!881476 lt!2114347 lt!2114353) (ite c!881476 lambda!251937 lambda!251938)))))

(declare-fun Unit!150518 () Unit!150513)

(assert (=> b!5127048 (= e!3197475 Unit!150518)))

(assert (=> b!5127048 (= lt!2114347 call!356859)))

(declare-fun lt!2114348 () Unit!150513)

(declare-fun lemmaNotForallThenExists!353 (List!59457 Int) Unit!150513)

(assert (=> b!5127048 (= lt!2114348 (lemmaNotForallThenExists!353 lt!2114347 lambda!251936))))

(assert (=> b!5127048 call!356858))

(declare-fun lt!2114346 () Unit!150513)

(assert (=> b!5127048 (= lt!2114346 lt!2114348)))

(declare-fun lt!2114349 () Bool)

(declare-datatypes ((Option!14713 0))(
  ( (None!14712) (Some!14712 (v!50725 List!59454)) )
))
(declare-fun isEmpty!31968 (Option!14713) Bool)

(declare-fun getLanguageWitness!842 ((Set Context!7284)) Option!14713)

(assert (=> d!1658491 (= lt!2114349 (isEmpty!31968 (getLanguageWitness!842 z!4546)))))

(declare-fun forall!13654 ((Set Context!7284) Int) Bool)

(assert (=> d!1658491 (= lt!2114349 (forall!13654 z!4546 lambda!251936))))

(declare-fun lt!2114352 () Unit!150513)

(assert (=> d!1658491 (= lt!2114352 e!3197475)))

(assert (=> d!1658491 (= c!881476 (not (forall!13654 z!4546 lambda!251936)))))

(assert (=> d!1658491 (= (lostCauseZipper!1136 z!4546) lt!2114349)))

(assert (= (and d!1658491 c!881476) b!5127048))

(assert (= (and d!1658491 (not c!881476)) b!5127049))

(assert (= (or b!5127048 b!5127049) bm!356853))

(assert (= (or b!5127048 b!5127049) bm!356854))

(declare-fun m!6191066 () Bool)

(assert (=> d!1658491 m!6191066))

(assert (=> d!1658491 m!6191066))

(declare-fun m!6191068 () Bool)

(assert (=> d!1658491 m!6191068))

(declare-fun m!6191070 () Bool)

(assert (=> d!1658491 m!6191070))

(assert (=> d!1658491 m!6191070))

(declare-fun m!6191072 () Bool)

(assert (=> bm!356854 m!6191072))

(declare-fun m!6191074 () Bool)

(assert (=> bm!356853 m!6191074))

(declare-fun m!6191076 () Bool)

(assert (=> b!5127049 m!6191076))

(declare-fun m!6191078 () Bool)

(assert (=> b!5127048 m!6191078))

(assert (=> b!5127001 d!1658491))

(declare-fun bs!1194098 () Bool)

(declare-fun d!1658493 () Bool)

(assert (= bs!1194098 (and d!1658493 d!1658491)))

(declare-fun lambda!251941 () Int)

(assert (=> bs!1194098 (not (= lambda!251941 lambda!251936))))

(declare-fun bs!1194099 () Bool)

(assert (= bs!1194099 (and d!1658493 b!5127048)))

(assert (=> bs!1194099 (not (= lambda!251941 lambda!251937))))

(declare-fun bs!1194100 () Bool)

(assert (= bs!1194100 (and d!1658493 b!5127049)))

(assert (=> bs!1194100 (not (= lambda!251941 lambda!251938))))

(declare-fun exists!1511 ((Set Context!7284) Int) Bool)

(assert (=> d!1658493 (= (nullableZipper!1053 z!4546) (exists!1511 z!4546 lambda!251941))))

(declare-fun bs!1194101 () Bool)

(assert (= bs!1194101 d!1658493))

(declare-fun m!6191080 () Bool)

(assert (=> bs!1194101 m!6191080))

(assert (=> b!5127000 d!1658493))

(declare-fun d!1658495 () Bool)

(declare-fun c!881481 () Bool)

(declare-fun isEmpty!31969 (List!59454) Bool)

(assert (=> d!1658495 (= c!881481 (isEmpty!31969 Nil!59330))))

(declare-fun e!3197478 () Bool)

(assert (=> d!1658495 (= (matchZipper!926 z!4546 Nil!59330) e!3197478)))

(declare-fun b!5127054 () Bool)

(assert (=> b!5127054 (= e!3197478 (nullableZipper!1053 z!4546))))

(declare-fun b!5127055 () Bool)

(declare-fun derivationStepZipper!871 ((Set Context!7284) C!28782) (Set Context!7284))

(assert (=> b!5127055 (= e!3197478 (matchZipper!926 (derivationStepZipper!871 z!4546 (head!10964 Nil!59330)) (tail!10099 Nil!59330)))))

(assert (= (and d!1658495 c!881481) b!5127054))

(assert (= (and d!1658495 (not c!881481)) b!5127055))

(declare-fun m!6191082 () Bool)

(assert (=> d!1658495 m!6191082))

(assert (=> b!5127054 m!6191022))

(declare-fun m!6191084 () Bool)

(assert (=> b!5127055 m!6191084))

(assert (=> b!5127055 m!6191084))

(declare-fun m!6191086 () Bool)

(assert (=> b!5127055 m!6191086))

(declare-fun m!6191088 () Bool)

(assert (=> b!5127055 m!6191088))

(assert (=> b!5127055 m!6191086))

(assert (=> b!5127055 m!6191088))

(declare-fun m!6191090 () Bool)

(assert (=> b!5127055 m!6191090))

(assert (=> b!5126992 d!1658495))

(declare-fun d!1658497 () Bool)

(declare-fun c!881482 () Bool)

(assert (=> d!1658497 (= c!881482 (isEmpty!31969 Nil!59330))))

(declare-fun e!3197479 () Bool)

(assert (=> d!1658497 (= (matchZipper!926 lt!2114315 Nil!59330) e!3197479)))

(declare-fun b!5127056 () Bool)

(assert (=> b!5127056 (= e!3197479 (nullableZipper!1053 lt!2114315))))

(declare-fun b!5127057 () Bool)

(assert (=> b!5127057 (= e!3197479 (matchZipper!926 (derivationStepZipper!871 lt!2114315 (head!10964 Nil!59330)) (tail!10099 Nil!59330)))))

(assert (= (and d!1658497 c!881482) b!5127056))

(assert (= (and d!1658497 (not c!881482)) b!5127057))

(assert (=> d!1658497 m!6191082))

(declare-fun m!6191092 () Bool)

(assert (=> b!5127056 m!6191092))

(assert (=> b!5127057 m!6191084))

(assert (=> b!5127057 m!6191084))

(declare-fun m!6191094 () Bool)

(assert (=> b!5127057 m!6191094))

(assert (=> b!5127057 m!6191088))

(assert (=> b!5127057 m!6191094))

(assert (=> b!5127057 m!6191088))

(declare-fun m!6191096 () Bool)

(assert (=> b!5127057 m!6191096))

(assert (=> b!5126992 d!1658497))

(declare-fun d!1658499 () Bool)

(assert (=> d!1658499 (= (matchZipper!926 baseZ!61 testedP!289) (matchZipper!926 (derivationZipper!155 baseZ!61 testedP!289) Nil!59330))))

(declare-fun lt!2114356 () Unit!150513)

(declare-fun choose!37755 ((Set Context!7284) List!59454) Unit!150513)

(assert (=> d!1658499 (= lt!2114356 (choose!37755 baseZ!61 testedP!289))))

(assert (=> d!1658499 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!27 baseZ!61 testedP!289) lt!2114356)))

(declare-fun bs!1194102 () Bool)

(assert (= bs!1194102 d!1658499))

(assert (=> bs!1194102 m!6191020))

(assert (=> bs!1194102 m!6191004))

(assert (=> bs!1194102 m!6191004))

(declare-fun m!6191098 () Bool)

(assert (=> bs!1194102 m!6191098))

(declare-fun m!6191100 () Bool)

(assert (=> bs!1194102 m!6191100))

(assert (=> b!5126992 d!1658499))

(declare-fun bs!1194103 () Bool)

(declare-fun d!1658501 () Bool)

(assert (= bs!1194103 (and d!1658501 d!1658487)))

(declare-fun lambda!251942 () Int)

(assert (=> bs!1194103 (= lambda!251942 lambda!251923)))

(assert (=> d!1658501 (= (inv!78827 setElem!30692) (forall!13653 (exprs!4142 setElem!30692) lambda!251942))))

(declare-fun bs!1194104 () Bool)

(assert (= bs!1194104 d!1658501))

(declare-fun m!6191102 () Bool)

(assert (=> bs!1194104 m!6191102))

(assert (=> setNonEmpty!30691 d!1658501))

(declare-fun d!1658503 () Bool)

(declare-fun lt!2114359 () Int)

(assert (=> d!1658503 (>= lt!2114359 0)))

(declare-fun e!3197482 () Int)

(assert (=> d!1658503 (= lt!2114359 e!3197482)))

(declare-fun c!881485 () Bool)

(assert (=> d!1658503 (= c!881485 (is-Nil!59330 testedP!289))))

(assert (=> d!1658503 (= (size!39558 testedP!289) lt!2114359)))

(declare-fun b!5127062 () Bool)

(assert (=> b!5127062 (= e!3197482 0)))

(declare-fun b!5127063 () Bool)

(assert (=> b!5127063 (= e!3197482 (+ 1 (size!39558 (t!372481 testedP!289))))))

(assert (= (and d!1658503 c!881485) b!5127062))

(assert (= (and d!1658503 (not c!881485)) b!5127063))

(declare-fun m!6191104 () Bool)

(assert (=> b!5127063 m!6191104))

(assert (=> b!5126999 d!1658503))

(declare-fun d!1658505 () Bool)

(declare-fun lt!2114360 () Int)

(assert (=> d!1658505 (>= lt!2114360 0)))

(declare-fun e!3197483 () Int)

(assert (=> d!1658505 (= lt!2114360 e!3197483)))

(declare-fun c!881486 () Bool)

(assert (=> d!1658505 (= c!881486 (is-Nil!59330 input!5798))))

(assert (=> d!1658505 (= (size!39558 input!5798) lt!2114360)))

(declare-fun b!5127064 () Bool)

(assert (=> b!5127064 (= e!3197483 0)))

(declare-fun b!5127065 () Bool)

(assert (=> b!5127065 (= e!3197483 (+ 1 (size!39558 (t!372481 input!5798))))))

(assert (= (and d!1658505 c!881486) b!5127064))

(assert (= (and d!1658505 (not c!881486)) b!5127065))

(declare-fun m!6191106 () Bool)

(assert (=> b!5127065 m!6191106))

(assert (=> b!5126999 d!1658505))

(declare-fun d!1658507 () Bool)

(declare-fun lt!2114361 () Int)

(assert (=> d!1658507 (>= lt!2114361 0)))

(declare-fun e!3197484 () Int)

(assert (=> d!1658507 (= lt!2114361 e!3197484)))

(declare-fun c!881487 () Bool)

(assert (=> d!1658507 (= c!881487 (is-Nil!59330 (_1!35124 (findLongestMatchInnerZipper!202 z!4546 testedP!289 lt!2114317 (getSuffix!3323 input!5798 testedP!289) input!5798 (size!39558 input!5798)))))))

(assert (=> d!1658507 (= (size!39558 (_1!35124 (findLongestMatchInnerZipper!202 z!4546 testedP!289 lt!2114317 (getSuffix!3323 input!5798 testedP!289) input!5798 (size!39558 input!5798)))) lt!2114361)))

(declare-fun b!5127066 () Bool)

(assert (=> b!5127066 (= e!3197484 0)))

(declare-fun b!5127067 () Bool)

(assert (=> b!5127067 (= e!3197484 (+ 1 (size!39558 (t!372481 (_1!35124 (findLongestMatchInnerZipper!202 z!4546 testedP!289 lt!2114317 (getSuffix!3323 input!5798 testedP!289) input!5798 (size!39558 input!5798)))))))))

(assert (= (and d!1658507 c!881487) b!5127066))

(assert (= (and d!1658507 (not c!881487)) b!5127067))

(declare-fun m!6191108 () Bool)

(assert (=> b!5127067 m!6191108))

(assert (=> b!5126999 d!1658507))

(declare-fun b!5127104 () Bool)

(declare-fun e!3197505 () tuple2!63642)

(assert (=> b!5127104 (= e!3197505 (tuple2!63643 Nil!59330 input!5798))))

(declare-fun bm!356871 () Bool)

(declare-fun call!356878 () List!59454)

(assert (=> bm!356871 (= call!356878 (tail!10099 (getSuffix!3323 input!5798 testedP!289)))))

(declare-fun bm!356872 () Bool)

(declare-fun call!356880 () C!28782)

(assert (=> bm!356872 (= call!356880 (head!10964 (getSuffix!3323 input!5798 testedP!289)))))

(declare-fun bm!356873 () Bool)

(declare-fun call!356882 () Unit!150513)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1351 (List!59454 List!59454 List!59454) Unit!150513)

(assert (=> bm!356873 (= call!356882 (lemmaIsPrefixSameLengthThenSameList!1351 input!5798 testedP!289 input!5798))))

(declare-fun bm!356874 () Bool)

(declare-fun call!356883 () (Set Context!7284))

(assert (=> bm!356874 (= call!356883 (derivationStepZipper!871 z!4546 call!356880))))

(declare-fun b!5127106 () Bool)

(declare-fun e!3197509 () Unit!150513)

(declare-fun Unit!150519 () Unit!150513)

(assert (=> b!5127106 (= e!3197509 Unit!150519)))

(declare-fun b!5127107 () Bool)

(declare-fun e!3197511 () tuple2!63642)

(declare-fun call!356876 () tuple2!63642)

(assert (=> b!5127107 (= e!3197511 call!356876)))

(declare-fun b!5127108 () Bool)

(declare-fun e!3197510 () tuple2!63642)

(assert (=> b!5127108 (= e!3197505 e!3197510)))

(declare-fun c!881508 () Bool)

(assert (=> b!5127108 (= c!881508 (= lt!2114317 (size!39558 input!5798)))))

(declare-fun bm!356875 () Bool)

(declare-fun call!356879 () Bool)

(assert (=> bm!356875 (= call!356879 (nullableZipper!1053 z!4546))))

(declare-fun b!5127109 () Bool)

(declare-fun e!3197508 () tuple2!63642)

(assert (=> b!5127109 (= e!3197511 e!3197508)))

(declare-fun lt!2114421 () tuple2!63642)

(assert (=> b!5127109 (= lt!2114421 call!356876)))

(declare-fun c!881511 () Bool)

(assert (=> b!5127109 (= c!881511 (isEmpty!31969 (_1!35124 lt!2114421)))))

(declare-fun b!5127110 () Bool)

(declare-fun c!881509 () Bool)

(assert (=> b!5127110 (= c!881509 call!356879)))

(declare-fun lt!2114437 () Unit!150513)

(declare-fun lt!2114431 () Unit!150513)

(assert (=> b!5127110 (= lt!2114437 lt!2114431)))

(declare-fun lt!2114424 () C!28782)

(declare-fun lt!2114439 () List!59454)

(declare-fun ++!13059 (List!59454 List!59454) List!59454)

(assert (=> b!5127110 (= (++!13059 (++!13059 testedP!289 (Cons!59330 lt!2114424 Nil!59330)) lt!2114439) input!5798)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1546 (List!59454 C!28782 List!59454 List!59454) Unit!150513)

(assert (=> b!5127110 (= lt!2114431 (lemmaMoveElementToOtherListKeepsConcatEq!1546 testedP!289 lt!2114424 lt!2114439 input!5798))))

(assert (=> b!5127110 (= lt!2114439 (tail!10099 (getSuffix!3323 input!5798 testedP!289)))))

(assert (=> b!5127110 (= lt!2114424 (head!10964 (getSuffix!3323 input!5798 testedP!289)))))

(declare-fun lt!2114417 () Unit!150513)

(declare-fun lt!2114420 () Unit!150513)

(assert (=> b!5127110 (= lt!2114417 lt!2114420)))

(assert (=> b!5127110 (isPrefix!5663 (++!13059 testedP!289 (Cons!59330 (head!10964 (getSuffix!3323 input!5798 testedP!289)) Nil!59330)) input!5798)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1021 (List!59454 List!59454) Unit!150513)

(assert (=> b!5127110 (= lt!2114420 (lemmaAddHeadSuffixToPrefixStillPrefix!1021 testedP!289 input!5798))))

(declare-fun lt!2114441 () List!59454)

(assert (=> b!5127110 (= lt!2114441 (++!13059 testedP!289 (Cons!59330 (head!10964 (getSuffix!3323 input!5798 testedP!289)) Nil!59330)))))

(declare-fun lt!2114429 () Unit!150513)

(assert (=> b!5127110 (= lt!2114429 e!3197509)))

(declare-fun c!881507 () Bool)

(assert (=> b!5127110 (= c!881507 (= (size!39558 testedP!289) (size!39558 input!5798)))))

(declare-fun lt!2114432 () Unit!150513)

(declare-fun lt!2114416 () Unit!150513)

(assert (=> b!5127110 (= lt!2114432 lt!2114416)))

(assert (=> b!5127110 (<= (size!39558 testedP!289) (size!39558 input!5798))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!861 (List!59454 List!59454) Unit!150513)

(assert (=> b!5127110 (= lt!2114416 (lemmaIsPrefixThenSmallerEqSize!861 testedP!289 input!5798))))

(assert (=> b!5127110 (= e!3197510 e!3197511)))

(declare-fun b!5127111 () Bool)

(declare-fun e!3197507 () tuple2!63642)

(assert (=> b!5127111 (= e!3197507 (tuple2!63643 Nil!59330 input!5798))))

(declare-fun bm!356876 () Bool)

(declare-fun call!356877 () Bool)

(assert (=> bm!356876 (= call!356877 (isPrefix!5663 input!5798 input!5798))))

(declare-fun b!5127112 () Bool)

(assert (=> b!5127112 (= e!3197508 lt!2114421)))

(declare-fun b!5127113 () Bool)

(declare-fun e!3197512 () Bool)

(declare-fun e!3197506 () Bool)

(assert (=> b!5127113 (= e!3197512 e!3197506)))

(declare-fun res!2183018 () Bool)

(assert (=> b!5127113 (=> res!2183018 e!3197506)))

(declare-fun lt!2114426 () tuple2!63642)

(assert (=> b!5127113 (= res!2183018 (isEmpty!31969 (_1!35124 lt!2114426)))))

(declare-fun d!1658509 () Bool)

(assert (=> d!1658509 e!3197512))

(declare-fun res!2183017 () Bool)

(assert (=> d!1658509 (=> (not res!2183017) (not e!3197512))))

(assert (=> d!1658509 (= res!2183017 (= (++!13059 (_1!35124 lt!2114426) (_2!35124 lt!2114426)) input!5798))))

(assert (=> d!1658509 (= lt!2114426 e!3197505)))

(declare-fun c!881510 () Bool)

(assert (=> d!1658509 (= c!881510 (lostCauseZipper!1136 z!4546))))

(declare-fun lt!2114433 () Unit!150513)

(declare-fun Unit!150520 () Unit!150513)

(assert (=> d!1658509 (= lt!2114433 Unit!150520)))

(assert (=> d!1658509 (= (getSuffix!3323 input!5798 testedP!289) (getSuffix!3323 input!5798 testedP!289))))

(declare-fun lt!2114434 () Unit!150513)

(declare-fun lt!2114435 () Unit!150513)

(assert (=> d!1658509 (= lt!2114434 lt!2114435)))

(declare-fun lt!2114423 () List!59454)

(assert (=> d!1658509 (= (getSuffix!3323 input!5798 testedP!289) lt!2114423)))

(declare-fun lemmaSamePrefixThenSameSuffix!2665 (List!59454 List!59454 List!59454 List!59454 List!59454) Unit!150513)

(assert (=> d!1658509 (= lt!2114435 (lemmaSamePrefixThenSameSuffix!2665 testedP!289 (getSuffix!3323 input!5798 testedP!289) testedP!289 lt!2114423 input!5798))))

(assert (=> d!1658509 (= lt!2114423 (getSuffix!3323 input!5798 testedP!289))))

(declare-fun lt!2114425 () Unit!150513)

(declare-fun lt!2114419 () Unit!150513)

(assert (=> d!1658509 (= lt!2114425 lt!2114419)))

(assert (=> d!1658509 (isPrefix!5663 testedP!289 (++!13059 testedP!289 (getSuffix!3323 input!5798 testedP!289)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3559 (List!59454 List!59454) Unit!150513)

(assert (=> d!1658509 (= lt!2114419 (lemmaConcatTwoListThenFirstIsPrefix!3559 testedP!289 (getSuffix!3323 input!5798 testedP!289)))))

(assert (=> d!1658509 (= (++!13059 testedP!289 (getSuffix!3323 input!5798 testedP!289)) input!5798)))

(assert (=> d!1658509 (= (findLongestMatchInnerZipper!202 z!4546 testedP!289 lt!2114317 (getSuffix!3323 input!5798 testedP!289) input!5798 (size!39558 input!5798)) lt!2114426)))

(declare-fun b!5127105 () Bool)

(assert (=> b!5127105 (= e!3197507 (tuple2!63643 testedP!289 Nil!59330))))

(declare-fun b!5127114 () Bool)

(declare-fun c!881506 () Bool)

(assert (=> b!5127114 (= c!881506 call!356879)))

(declare-fun lt!2114428 () Unit!150513)

(declare-fun lt!2114422 () Unit!150513)

(assert (=> b!5127114 (= lt!2114428 lt!2114422)))

(assert (=> b!5127114 (= input!5798 testedP!289)))

(assert (=> b!5127114 (= lt!2114422 call!356882)))

(declare-fun lt!2114430 () Unit!150513)

(declare-fun lt!2114438 () Unit!150513)

(assert (=> b!5127114 (= lt!2114430 lt!2114438)))

(assert (=> b!5127114 call!356877))

(declare-fun call!356881 () Unit!150513)

(assert (=> b!5127114 (= lt!2114438 call!356881)))

(assert (=> b!5127114 (= e!3197510 e!3197507)))

(declare-fun bm!356877 () Bool)

(assert (=> bm!356877 (= call!356876 (findLongestMatchInnerZipper!202 call!356883 lt!2114441 (+ lt!2114317 1) call!356878 input!5798 (size!39558 input!5798)))))

(declare-fun b!5127115 () Bool)

(assert (=> b!5127115 (= e!3197506 (>= (size!39558 (_1!35124 lt!2114426)) (size!39558 testedP!289)))))

(declare-fun bm!356878 () Bool)

(declare-fun lemmaIsPrefixRefl!3707 (List!59454 List!59454) Unit!150513)

(assert (=> bm!356878 (= call!356881 (lemmaIsPrefixRefl!3707 input!5798 input!5798))))

(declare-fun b!5127116 () Bool)

(assert (=> b!5127116 (= e!3197508 (tuple2!63643 testedP!289 (getSuffix!3323 input!5798 testedP!289)))))

(declare-fun b!5127117 () Bool)

(declare-fun Unit!150521 () Unit!150513)

(assert (=> b!5127117 (= e!3197509 Unit!150521)))

(declare-fun lt!2114427 () Unit!150513)

(assert (=> b!5127117 (= lt!2114427 call!356881)))

(assert (=> b!5127117 call!356877))

(declare-fun lt!2114440 () Unit!150513)

(assert (=> b!5127117 (= lt!2114440 lt!2114427)))

(declare-fun lt!2114436 () Unit!150513)

(assert (=> b!5127117 (= lt!2114436 call!356882)))

(assert (=> b!5127117 (= input!5798 testedP!289)))

(declare-fun lt!2114418 () Unit!150513)

(assert (=> b!5127117 (= lt!2114418 lt!2114436)))

(assert (=> b!5127117 false))

(assert (= (and d!1658509 c!881510) b!5127104))

(assert (= (and d!1658509 (not c!881510)) b!5127108))

(assert (= (and b!5127108 c!881508) b!5127114))

(assert (= (and b!5127108 (not c!881508)) b!5127110))

(assert (= (and b!5127114 c!881506) b!5127105))

(assert (= (and b!5127114 (not c!881506)) b!5127111))

(assert (= (and b!5127110 c!881507) b!5127117))

(assert (= (and b!5127110 (not c!881507)) b!5127106))

(assert (= (and b!5127110 c!881509) b!5127109))

(assert (= (and b!5127110 (not c!881509)) b!5127107))

(assert (= (and b!5127109 c!881511) b!5127116))

(assert (= (and b!5127109 (not c!881511)) b!5127112))

(assert (= (or b!5127109 b!5127107) bm!356871))

(assert (= (or b!5127109 b!5127107) bm!356872))

(assert (= (or b!5127109 b!5127107) bm!356874))

(assert (= (or b!5127109 b!5127107) bm!356877))

(assert (= (or b!5127114 b!5127117) bm!356878))

(assert (= (or b!5127114 b!5127117) bm!356873))

(assert (= (or b!5127114 b!5127117) bm!356876))

(assert (= (or b!5127114 b!5127110) bm!356875))

(assert (= (and d!1658509 res!2183017) b!5127113))

(assert (= (and b!5127113 (not res!2183018)) b!5127115))

(declare-fun m!6191134 () Bool)

(assert (=> b!5127109 m!6191134))

(assert (=> bm!356872 m!6191008))

(declare-fun m!6191136 () Bool)

(assert (=> bm!356872 m!6191136))

(declare-fun m!6191138 () Bool)

(assert (=> bm!356874 m!6191138))

(declare-fun m!6191140 () Bool)

(assert (=> b!5127113 m!6191140))

(assert (=> d!1658509 m!6191008))

(declare-fun m!6191142 () Bool)

(assert (=> d!1658509 m!6191142))

(assert (=> d!1658509 m!6190994))

(assert (=> d!1658509 m!6191008))

(declare-fun m!6191144 () Bool)

(assert (=> d!1658509 m!6191144))

(assert (=> d!1658509 m!6191008))

(declare-fun m!6191146 () Bool)

(assert (=> d!1658509 m!6191146))

(assert (=> d!1658509 m!6191144))

(declare-fun m!6191148 () Bool)

(assert (=> d!1658509 m!6191148))

(assert (=> d!1658509 m!6191008))

(declare-fun m!6191150 () Bool)

(assert (=> d!1658509 m!6191150))

(declare-fun m!6191152 () Bool)

(assert (=> bm!356873 m!6191152))

(declare-fun m!6191154 () Bool)

(assert (=> b!5127110 m!6191154))

(declare-fun m!6191156 () Bool)

(assert (=> b!5127110 m!6191156))

(declare-fun m!6191158 () Bool)

(assert (=> b!5127110 m!6191158))

(assert (=> b!5127110 m!6191008))

(assert (=> b!5127110 m!6191136))

(assert (=> b!5127110 m!6191154))

(assert (=> b!5127110 m!6191158))

(declare-fun m!6191160 () Bool)

(assert (=> b!5127110 m!6191160))

(declare-fun m!6191162 () Bool)

(assert (=> b!5127110 m!6191162))

(assert (=> b!5127110 m!6191008))

(assert (=> b!5127110 m!6191014))

(assert (=> b!5127110 m!6191010))

(assert (=> b!5127110 m!6191158))

(declare-fun m!6191164 () Bool)

(assert (=> b!5127110 m!6191164))

(assert (=> b!5127110 m!6191008))

(assert (=> b!5127110 m!6191136))

(assert (=> b!5127110 m!6191008))

(declare-fun m!6191166 () Bool)

(assert (=> b!5127110 m!6191166))

(declare-fun m!6191168 () Bool)

(assert (=> b!5127110 m!6191168))

(assert (=> bm!356877 m!6191010))

(declare-fun m!6191170 () Bool)

(assert (=> bm!356877 m!6191170))

(assert (=> bm!356871 m!6191008))

(assert (=> bm!356871 m!6191166))

(declare-fun m!6191172 () Bool)

(assert (=> b!5127115 m!6191172))

(assert (=> b!5127115 m!6191014))

(declare-fun m!6191174 () Bool)

(assert (=> bm!356876 m!6191174))

(assert (=> bm!356875 m!6191022))

(declare-fun m!6191176 () Bool)

(assert (=> bm!356878 m!6191176))

(assert (=> b!5126999 d!1658509))

(declare-fun d!1658521 () Bool)

(declare-fun lt!2114445 () List!59454)

(assert (=> d!1658521 (= (++!13059 testedP!289 lt!2114445) input!5798)))

(declare-fun e!3197518 () List!59454)

(assert (=> d!1658521 (= lt!2114445 e!3197518)))

(declare-fun c!881517 () Bool)

(assert (=> d!1658521 (= c!881517 (is-Cons!59330 testedP!289))))

(assert (=> d!1658521 (>= (size!39558 input!5798) (size!39558 testedP!289))))

(assert (=> d!1658521 (= (getSuffix!3323 input!5798 testedP!289) lt!2114445)))

(declare-fun b!5127128 () Bool)

(assert (=> b!5127128 (= e!3197518 (getSuffix!3323 (tail!10099 input!5798) (t!372481 testedP!289)))))

(declare-fun b!5127129 () Bool)

(assert (=> b!5127129 (= e!3197518 input!5798)))

(assert (= (and d!1658521 c!881517) b!5127128))

(assert (= (and d!1658521 (not c!881517)) b!5127129))

(declare-fun m!6191182 () Bool)

(assert (=> d!1658521 m!6191182))

(assert (=> d!1658521 m!6191010))

(assert (=> d!1658521 m!6191014))

(assert (=> b!5127128 m!6191062))

(assert (=> b!5127128 m!6191062))

(declare-fun m!6191184 () Bool)

(assert (=> b!5127128 m!6191184))

(assert (=> b!5126999 d!1658521))

(declare-fun d!1658525 () Bool)

(declare-fun c!881520 () Bool)

(assert (=> d!1658525 (= c!881520 (is-Cons!59330 testedP!289))))

(declare-fun e!3197521 () (Set Context!7284))

(assert (=> d!1658525 (= (derivationZipper!155 baseZ!61 testedP!289) e!3197521)))

(declare-fun b!5127134 () Bool)

(assert (=> b!5127134 (= e!3197521 (derivationZipper!155 (derivationStepZipper!871 baseZ!61 (h!65778 testedP!289)) (t!372481 testedP!289)))))

(declare-fun b!5127135 () Bool)

(assert (=> b!5127135 (= e!3197521 baseZ!61)))

(assert (= (and d!1658525 c!881520) b!5127134))

(assert (= (and d!1658525 (not c!881520)) b!5127135))

(declare-fun m!6191186 () Bool)

(assert (=> b!5127134 m!6191186))

(assert (=> b!5127134 m!6191186))

(declare-fun m!6191188 () Bool)

(assert (=> b!5127134 m!6191188))

(assert (=> b!5126994 d!1658525))

(declare-fun d!1658527 () Bool)

(declare-fun c!881521 () Bool)

(assert (=> d!1658527 (= c!881521 (isEmpty!31969 testedP!289))))

(declare-fun e!3197522 () Bool)

(assert (=> d!1658527 (= (matchZipper!926 baseZ!61 testedP!289) e!3197522)))

(declare-fun b!5127136 () Bool)

(assert (=> b!5127136 (= e!3197522 (nullableZipper!1053 baseZ!61))))

(declare-fun b!5127137 () Bool)

(assert (=> b!5127137 (= e!3197522 (matchZipper!926 (derivationStepZipper!871 baseZ!61 (head!10964 testedP!289)) (tail!10099 testedP!289)))))

(assert (= (and d!1658527 c!881521) b!5127136))

(assert (= (and d!1658527 (not c!881521)) b!5127137))

(declare-fun m!6191190 () Bool)

(assert (=> d!1658527 m!6191190))

(declare-fun m!6191192 () Bool)

(assert (=> b!5127136 m!6191192))

(assert (=> b!5127137 m!6191056))

(assert (=> b!5127137 m!6191056))

(declare-fun m!6191194 () Bool)

(assert (=> b!5127137 m!6191194))

(assert (=> b!5127137 m!6191060))

(assert (=> b!5127137 m!6191194))

(assert (=> b!5127137 m!6191060))

(declare-fun m!6191196 () Bool)

(assert (=> b!5127137 m!6191196))

(assert (=> b!5126997 d!1658527))

(declare-fun condSetEmpty!30701 () Bool)

(assert (=> setNonEmpty!30692 (= condSetEmpty!30701 (= setRest!30691 (as set.empty (Set Context!7284))))))

(declare-fun setRes!30701 () Bool)

(assert (=> setNonEmpty!30692 (= tp!1430195 setRes!30701)))

(declare-fun setIsEmpty!30701 () Bool)

(assert (=> setIsEmpty!30701 setRes!30701))

(declare-fun tp!1430218 () Bool)

(declare-fun e!3197525 () Bool)

(declare-fun setElem!30701 () Context!7284)

(declare-fun setNonEmpty!30701 () Bool)

(assert (=> setNonEmpty!30701 (= setRes!30701 (and tp!1430218 (inv!78827 setElem!30701) e!3197525))))

(declare-fun setRest!30701 () (Set Context!7284))

(assert (=> setNonEmpty!30701 (= setRest!30691 (set.union (set.insert setElem!30701 (as set.empty (Set Context!7284))) setRest!30701))))

(declare-fun b!5127144 () Bool)

(declare-fun tp!1430219 () Bool)

(assert (=> b!5127144 (= e!3197525 tp!1430219)))

(assert (= (and setNonEmpty!30692 condSetEmpty!30701) setIsEmpty!30701))

(assert (= (and setNonEmpty!30692 (not condSetEmpty!30701)) setNonEmpty!30701))

(assert (= setNonEmpty!30701 b!5127144))

(declare-fun m!6191198 () Bool)

(assert (=> setNonEmpty!30701 m!6191198))

(declare-fun b!5127151 () Bool)

(declare-fun e!3197530 () Bool)

(declare-fun tp!1430222 () Bool)

(assert (=> b!5127151 (= e!3197530 (and tp_is_empty!37789 tp!1430222))))

(assert (=> b!5126993 (= tp!1430194 e!3197530)))

(assert (= (and b!5126993 (is-Cons!59330 (t!372481 testedP!289))) b!5127151))

(declare-fun condSetEmpty!30702 () Bool)

(assert (=> setNonEmpty!30691 (= condSetEmpty!30702 (= setRest!30692 (as set.empty (Set Context!7284))))))

(declare-fun setRes!30702 () Bool)

(assert (=> setNonEmpty!30691 (= tp!1430190 setRes!30702)))

(declare-fun setIsEmpty!30702 () Bool)

(assert (=> setIsEmpty!30702 setRes!30702))

(declare-fun tp!1430223 () Bool)

(declare-fun setNonEmpty!30702 () Bool)

(declare-fun setElem!30702 () Context!7284)

(declare-fun e!3197531 () Bool)

(assert (=> setNonEmpty!30702 (= setRes!30702 (and tp!1430223 (inv!78827 setElem!30702) e!3197531))))

(declare-fun setRest!30702 () (Set Context!7284))

(assert (=> setNonEmpty!30702 (= setRest!30692 (set.union (set.insert setElem!30702 (as set.empty (Set Context!7284))) setRest!30702))))

(declare-fun b!5127152 () Bool)

(declare-fun tp!1430224 () Bool)

(assert (=> b!5127152 (= e!3197531 tp!1430224)))

(assert (= (and setNonEmpty!30691 condSetEmpty!30702) setIsEmpty!30702))

(assert (= (and setNonEmpty!30691 (not condSetEmpty!30702)) setNonEmpty!30702))

(assert (= setNonEmpty!30702 b!5127152))

(declare-fun m!6191200 () Bool)

(assert (=> setNonEmpty!30702 m!6191200))

(declare-fun b!5127157 () Bool)

(declare-fun e!3197534 () Bool)

(declare-fun tp!1430229 () Bool)

(declare-fun tp!1430230 () Bool)

(assert (=> b!5127157 (= e!3197534 (and tp!1430229 tp!1430230))))

(assert (=> b!5126995 (= tp!1430191 e!3197534)))

(assert (= (and b!5126995 (is-Cons!59329 (exprs!4142 setElem!30691))) b!5127157))

(declare-fun b!5127158 () Bool)

(declare-fun e!3197535 () Bool)

(declare-fun tp!1430231 () Bool)

(declare-fun tp!1430232 () Bool)

(assert (=> b!5127158 (= e!3197535 (and tp!1430231 tp!1430232))))

(assert (=> b!5126996 (= tp!1430193 e!3197535)))

(assert (= (and b!5126996 (is-Cons!59329 (exprs!4142 setElem!30692))) b!5127158))

(declare-fun b!5127159 () Bool)

(declare-fun e!3197538 () Bool)

(declare-fun tp!1430233 () Bool)

(assert (=> b!5127159 (= e!3197538 (and tp_is_empty!37789 tp!1430233))))

(assert (=> b!5126998 (= tp!1430192 e!3197538)))

(assert (= (and b!5126998 (is-Cons!59330 (t!372481 input!5798))) b!5127159))

(push 1)

(assert (not bm!356874))

(assert (not b!5127056))

(assert (not b!5127109))

(assert (not bm!356878))

(assert (not b!5127136))

(assert (not b!5127065))

(assert (not bm!356872))

(assert (not b!5127151))

(assert (not d!1658527))

(assert (not d!1658487))

(assert (not d!1658493))

(assert (not b!5127110))

(assert (not bm!356876))

(assert tp_is_empty!37789)

(assert (not d!1658495))

(assert (not b!5127043))

(assert (not bm!356873))

(assert (not b!5127048))

(assert (not b!5127158))

(assert (not bm!356853))

(assert (not b!5127042))

(assert (not setNonEmpty!30702))

(assert (not bm!356875))

(assert (not b!5127128))

(assert (not bm!356877))

(assert (not b!5127134))

(assert (not b!5127055))

(assert (not d!1658497))

(assert (not b!5127063))

(assert (not b!5127159))

(assert (not d!1658509))

(assert (not b!5127144))

(assert (not d!1658521))

(assert (not b!5127137))

(assert (not b!5127113))

(assert (not d!1658501))

(assert (not bm!356854))

(assert (not b!5127049))

(assert (not b!5127067))

(assert (not b!5127054))

(assert (not b!5127115))

(assert (not b!5127157))

(assert (not bm!356871))

(assert (not d!1658499))

(assert (not setNonEmpty!30701))

(assert (not b!5127152))

(assert (not d!1658491))

(assert (not b!5127041))

(assert (not b!5127057))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

