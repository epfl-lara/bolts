; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542614 () Bool)

(assert start!542614)

(declare-fun b!5131555 () Bool)

(assert (=> b!5131555 true))

(declare-fun bs!1197654 () Bool)

(declare-fun b!5131552 () Bool)

(declare-fun b!5131556 () Bool)

(assert (= bs!1197654 (and b!5131552 b!5131556)))

(declare-fun lambda!254281 () Int)

(declare-fun lambda!254280 () Int)

(assert (=> bs!1197654 (not (= lambda!254281 lambda!254280))))

(declare-fun e!3200538 () Bool)

(declare-datatypes ((C!28962 0))(
  ( (C!28963 (val!24133 Int)) )
))
(declare-datatypes ((Regex!14348 0))(
  ( (ElementMatch!14348 (c!882849 C!28962)) (Concat!23193 (regOne!29208 Regex!14348) (regTwo!29208 Regex!14348)) (EmptyExpr!14348) (Star!14348 (reg!14677 Regex!14348)) (EmptyLang!14348) (Union!14348 (regOne!29209 Regex!14348) (regTwo!29209 Regex!14348)) )
))
(declare-datatypes ((List!59627 0))(
  ( (Nil!59503) (Cons!59503 (h!65951 Regex!14348) (t!372654 List!59627)) )
))
(declare-datatypes ((Context!7464 0))(
  ( (Context!7465 (exprs!4232 List!59627)) )
))
(declare-fun lt!2117123 () (Set Context!7464))

(declare-fun exists!1651 ((Set Context!7464) Int) Bool)

(assert (=> b!5131552 (= e!3200538 (not (exists!1651 lt!2117123 lambda!254281)))))

(declare-datatypes ((List!59628 0))(
  ( (Nil!59504) (Cons!59504 (h!65952 Context!7464) (t!372655 List!59628)) )
))
(declare-fun lt!2117124 () List!59628)

(declare-fun exists!1652 (List!59628 Int) Bool)

(assert (=> b!5131552 (exists!1652 lt!2117124 lambda!254281)))

(declare-datatypes ((Unit!150773 0))(
  ( (Unit!150774) )
))
(declare-fun lt!2117122 () Unit!150773)

(declare-fun lemmaNotForallThenExists!381 (List!59628 Int) Unit!150773)

(assert (=> b!5131552 (= lt!2117122 (lemmaNotForallThenExists!381 lt!2117124 lambda!254280))))

(declare-fun toList!8333 ((Set Context!7464)) List!59628)

(assert (=> b!5131552 (= lt!2117124 (toList!8333 lt!2117123))))

(declare-fun b!5131553 () Bool)

(declare-fun res!2185486 () Bool)

(assert (=> b!5131553 (=> (not res!2185486) (not e!3200538))))

(declare-fun lt!2117125 () Bool)

(assert (=> b!5131553 (= res!2185486 (not lt!2117125))))

(declare-fun b!5131554 () Bool)

(declare-fun res!2185489 () Bool)

(assert (=> b!5131554 (=> (not res!2185489) (not e!3200538))))

(declare-fun forall!13775 ((Set Context!7464) Int) Bool)

(assert (=> b!5131554 (= res!2185489 (not (forall!13775 lt!2117123 lambda!254280)))))

(declare-fun e!3200537 () Bool)

(declare-fun e!3200540 () Bool)

(assert (=> b!5131555 (= e!3200537 e!3200540)))

(declare-fun res!2185490 () Bool)

(assert (=> b!5131555 (=> (not res!2185490) (not e!3200540))))

(declare-fun z!1054 () (Set Context!7464))

(declare-fun lambda!254279 () Int)

(declare-fun flatMap!399 ((Set Context!7464) Int) (Set Context!7464))

(assert (=> b!5131555 (= res!2185490 (= lt!2117123 (flatMap!399 z!1054 lambda!254279)))))

(declare-fun a!1233 () C!28962)

(declare-fun derivationStepZipper!903 ((Set Context!7464) C!28962) (Set Context!7464))

(assert (=> b!5131555 (= lt!2117123 (derivationStepZipper!903 z!1054 a!1233))))

(assert (=> b!5131556 (= e!3200540 e!3200538)))

(declare-fun res!2185488 () Bool)

(assert (=> b!5131556 (=> (not res!2185488) (not e!3200538))))

(assert (=> b!5131556 (= res!2185488 (= lt!2117125 (forall!13775 lt!2117123 lambda!254280)))))

(declare-fun lostCauseZipper!1192 ((Set Context!7464)) Bool)

(assert (=> b!5131556 (= lt!2117125 (lostCauseZipper!1192 lt!2117123))))

(declare-fun res!2185485 () Bool)

(assert (=> start!542614 (=> (not res!2185485) (not e!3200537))))

(assert (=> start!542614 (= res!2185485 (lostCauseZipper!1192 z!1054))))

(assert (=> start!542614 e!3200537))

(declare-fun condSetEmpty!31117 () Bool)

(assert (=> start!542614 (= condSetEmpty!31117 (= z!1054 (as set.empty (Set Context!7464))))))

(declare-fun setRes!31117 () Bool)

(assert (=> start!542614 setRes!31117))

(declare-fun tp_is_empty!37869 () Bool)

(assert (=> start!542614 tp_is_empty!37869))

(declare-fun setNonEmpty!31117 () Bool)

(declare-fun tp!1431549 () Bool)

(declare-fun e!3200539 () Bool)

(declare-fun setElem!31117 () Context!7464)

(declare-fun inv!79052 (Context!7464) Bool)

(assert (=> setNonEmpty!31117 (= setRes!31117 (and tp!1431549 (inv!79052 setElem!31117) e!3200539))))

(declare-fun setRest!31117 () (Set Context!7464))

(assert (=> setNonEmpty!31117 (= z!1054 (set.union (set.insert setElem!31117 (as set.empty (Set Context!7464))) setRest!31117))))

(declare-fun b!5131557 () Bool)

(declare-fun tp!1431548 () Bool)

(assert (=> b!5131557 (= e!3200539 tp!1431548)))

(declare-fun b!5131558 () Bool)

(declare-fun res!2185487 () Bool)

(assert (=> b!5131558 (=> (not res!2185487) (not e!3200538))))

(assert (=> b!5131558 (= res!2185487 (forall!13775 z!1054 lambda!254280))))

(declare-fun setIsEmpty!31117 () Bool)

(assert (=> setIsEmpty!31117 setRes!31117))

(assert (= (and start!542614 res!2185485) b!5131555))

(assert (= (and b!5131555 res!2185490) b!5131556))

(assert (= (and b!5131556 res!2185488) b!5131558))

(assert (= (and b!5131558 res!2185487) b!5131553))

(assert (= (and b!5131553 res!2185486) b!5131554))

(assert (= (and b!5131554 res!2185489) b!5131552))

(assert (= (and start!542614 condSetEmpty!31117) setIsEmpty!31117))

(assert (= (and start!542614 (not condSetEmpty!31117)) setNonEmpty!31117))

(assert (= setNonEmpty!31117 b!5131557))

(declare-fun m!6196898 () Bool)

(assert (=> b!5131558 m!6196898))

(declare-fun m!6196900 () Bool)

(assert (=> b!5131552 m!6196900))

(declare-fun m!6196902 () Bool)

(assert (=> b!5131552 m!6196902))

(declare-fun m!6196904 () Bool)

(assert (=> b!5131552 m!6196904))

(declare-fun m!6196906 () Bool)

(assert (=> b!5131552 m!6196906))

(declare-fun m!6196908 () Bool)

(assert (=> b!5131555 m!6196908))

(declare-fun m!6196910 () Bool)

(assert (=> b!5131555 m!6196910))

(declare-fun m!6196912 () Bool)

(assert (=> b!5131556 m!6196912))

(declare-fun m!6196914 () Bool)

(assert (=> b!5131556 m!6196914))

(declare-fun m!6196916 () Bool)

(assert (=> setNonEmpty!31117 m!6196916))

(assert (=> b!5131554 m!6196912))

(declare-fun m!6196918 () Bool)

(assert (=> start!542614 m!6196918))

(push 1)

(assert (not b!5131557))

(assert (not b!5131552))

(assert (not start!542614))

(assert tp_is_empty!37869)

(assert (not b!5131556))

(assert (not b!5131554))

(assert (not b!5131555))

(assert (not setNonEmpty!31117))

(assert (not b!5131558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660356 () Bool)

(declare-fun lambda!254301 () Int)

(declare-fun forall!13777 (List!59627 Int) Bool)

(assert (=> d!1660356 (= (inv!79052 setElem!31117) (forall!13777 (exprs!4232 setElem!31117) lambda!254301))))

(declare-fun bs!1197656 () Bool)

(assert (= bs!1197656 d!1660356))

(declare-fun m!6196942 () Bool)

(assert (=> bs!1197656 m!6196942))

(assert (=> setNonEmpty!31117 d!1660356))

(declare-fun d!1660358 () Bool)

(declare-fun lt!2117140 () Bool)

(assert (=> d!1660358 (= lt!2117140 (exists!1652 (toList!8333 lt!2117123) lambda!254281))))

(declare-fun choose!37878 ((Set Context!7464) Int) Bool)

(assert (=> d!1660358 (= lt!2117140 (choose!37878 lt!2117123 lambda!254281))))

(assert (=> d!1660358 (= (exists!1651 lt!2117123 lambda!254281) lt!2117140)))

(declare-fun bs!1197657 () Bool)

(assert (= bs!1197657 d!1660358))

(assert (=> bs!1197657 m!6196906))

(assert (=> bs!1197657 m!6196906))

(declare-fun m!6196944 () Bool)

(assert (=> bs!1197657 m!6196944))

(declare-fun m!6196946 () Bool)

(assert (=> bs!1197657 m!6196946))

(assert (=> b!5131552 d!1660358))

(declare-fun bs!1197658 () Bool)

(declare-fun d!1660360 () Bool)

(assert (= bs!1197658 (and d!1660360 b!5131556)))

(declare-fun lambda!254304 () Int)

(assert (=> bs!1197658 (not (= lambda!254304 lambda!254280))))

(declare-fun bs!1197659 () Bool)

(assert (= bs!1197659 (and d!1660360 b!5131552)))

(assert (=> bs!1197659 (not (= lambda!254304 lambda!254281))))

(assert (=> d!1660360 true))

(declare-fun order!26855 () Int)

(declare-fun dynLambda!23688 (Int Int) Int)

(assert (=> d!1660360 (< (dynLambda!23688 order!26855 lambda!254281) (dynLambda!23688 order!26855 lambda!254304))))

(declare-fun forall!13778 (List!59628 Int) Bool)

(assert (=> d!1660360 (= (exists!1652 lt!2117124 lambda!254281) (not (forall!13778 lt!2117124 lambda!254304)))))

(declare-fun bs!1197660 () Bool)

(assert (= bs!1197660 d!1660360))

(declare-fun m!6196948 () Bool)

(assert (=> bs!1197660 m!6196948))

(assert (=> b!5131552 d!1660360))

(declare-fun bs!1197661 () Bool)

(declare-fun d!1660362 () Bool)

(assert (= bs!1197661 (and d!1660362 b!5131556)))

(declare-fun lambda!254307 () Int)

(assert (=> bs!1197661 (not (= lambda!254307 lambda!254280))))

(declare-fun bs!1197662 () Bool)

(assert (= bs!1197662 (and d!1660362 b!5131552)))

(assert (=> bs!1197662 (not (= lambda!254307 lambda!254281))))

(declare-fun bs!1197663 () Bool)

(assert (= bs!1197663 (and d!1660362 d!1660360)))

(assert (=> bs!1197663 (= (= lambda!254280 lambda!254281) (= lambda!254307 lambda!254304))))

(assert (=> d!1660362 true))

(assert (=> d!1660362 (< (dynLambda!23688 order!26855 lambda!254280) (dynLambda!23688 order!26855 lambda!254307))))

(assert (=> d!1660362 (exists!1652 lt!2117124 lambda!254307)))

(declare-fun lt!2117143 () Unit!150773)

(declare-fun choose!37879 (List!59628 Int) Unit!150773)

(assert (=> d!1660362 (= lt!2117143 (choose!37879 lt!2117124 lambda!254280))))

(assert (=> d!1660362 (not (forall!13778 lt!2117124 lambda!254280))))

(assert (=> d!1660362 (= (lemmaNotForallThenExists!381 lt!2117124 lambda!254280) lt!2117143)))

(declare-fun bs!1197664 () Bool)

(assert (= bs!1197664 d!1660362))

(declare-fun m!6196950 () Bool)

(assert (=> bs!1197664 m!6196950))

(declare-fun m!6196952 () Bool)

(assert (=> bs!1197664 m!6196952))

(declare-fun m!6196954 () Bool)

(assert (=> bs!1197664 m!6196954))

(assert (=> b!5131552 d!1660362))

(declare-fun d!1660364 () Bool)

(declare-fun e!3200559 () Bool)

(assert (=> d!1660364 e!3200559))

(declare-fun res!2185511 () Bool)

(assert (=> d!1660364 (=> (not res!2185511) (not e!3200559))))

(declare-fun lt!2117146 () List!59628)

(declare-fun noDuplicate!1093 (List!59628) Bool)

(assert (=> d!1660364 (= res!2185511 (noDuplicate!1093 lt!2117146))))

(declare-fun choose!37880 ((Set Context!7464)) List!59628)

(assert (=> d!1660364 (= lt!2117146 (choose!37880 lt!2117123))))

(assert (=> d!1660364 (= (toList!8333 lt!2117123) lt!2117146)))

(declare-fun b!5131588 () Bool)

(declare-fun content!10570 (List!59628) (Set Context!7464))

(assert (=> b!5131588 (= e!3200559 (= (content!10570 lt!2117146) lt!2117123))))

(assert (= (and d!1660364 res!2185511) b!5131588))

(declare-fun m!6196956 () Bool)

(assert (=> d!1660364 m!6196956))

(declare-fun m!6196958 () Bool)

(assert (=> d!1660364 m!6196958))

(declare-fun m!6196960 () Bool)

(assert (=> b!5131588 m!6196960))

(assert (=> b!5131552 d!1660364))

(declare-fun d!1660366 () Bool)

(declare-fun lt!2117149 () Bool)

(assert (=> d!1660366 (= lt!2117149 (forall!13778 (toList!8333 z!1054) lambda!254280))))

(declare-fun choose!37881 ((Set Context!7464) Int) Bool)

(assert (=> d!1660366 (= lt!2117149 (choose!37881 z!1054 lambda!254280))))

(assert (=> d!1660366 (= (forall!13775 z!1054 lambda!254280) lt!2117149)))

(declare-fun bs!1197665 () Bool)

(assert (= bs!1197665 d!1660366))

(declare-fun m!6196962 () Bool)

(assert (=> bs!1197665 m!6196962))

(assert (=> bs!1197665 m!6196962))

(declare-fun m!6196964 () Bool)

(assert (=> bs!1197665 m!6196964))

(declare-fun m!6196966 () Bool)

(assert (=> bs!1197665 m!6196966))

(assert (=> b!5131558 d!1660366))

(declare-fun d!1660368 () Bool)

(declare-fun lt!2117150 () Bool)

(assert (=> d!1660368 (= lt!2117150 (forall!13778 (toList!8333 lt!2117123) lambda!254280))))

(assert (=> d!1660368 (= lt!2117150 (choose!37881 lt!2117123 lambda!254280))))

(assert (=> d!1660368 (= (forall!13775 lt!2117123 lambda!254280) lt!2117150)))

(declare-fun bs!1197666 () Bool)

(assert (= bs!1197666 d!1660368))

(assert (=> bs!1197666 m!6196906))

(assert (=> bs!1197666 m!6196906))

(declare-fun m!6196968 () Bool)

(assert (=> bs!1197666 m!6196968))

(declare-fun m!6196970 () Bool)

(assert (=> bs!1197666 m!6196970))

(assert (=> b!5131554 d!1660368))

(declare-fun d!1660370 () Bool)

(declare-fun choose!37882 ((Set Context!7464) Int) (Set Context!7464))

(assert (=> d!1660370 (= (flatMap!399 z!1054 lambda!254279) (choose!37882 z!1054 lambda!254279))))

(declare-fun bs!1197667 () Bool)

(assert (= bs!1197667 d!1660370))

(declare-fun m!6196972 () Bool)

(assert (=> bs!1197667 m!6196972))

(assert (=> b!5131555 d!1660370))

(declare-fun bs!1197668 () Bool)

(declare-fun d!1660372 () Bool)

(assert (= bs!1197668 (and d!1660372 b!5131555)))

(declare-fun lambda!254310 () Int)

(assert (=> bs!1197668 (= lambda!254310 lambda!254279)))

(assert (=> d!1660372 true))

(assert (=> d!1660372 (= (derivationStepZipper!903 z!1054 a!1233) (flatMap!399 z!1054 lambda!254310))))

(declare-fun bs!1197669 () Bool)

(assert (= bs!1197669 d!1660372))

(declare-fun m!6196974 () Bool)

(assert (=> bs!1197669 m!6196974))

(assert (=> b!5131555 d!1660372))

(declare-fun bs!1197670 () Bool)

(declare-fun d!1660374 () Bool)

(assert (= bs!1197670 (and d!1660374 b!5131556)))

(declare-fun lambda!254323 () Int)

(assert (=> bs!1197670 (= lambda!254323 lambda!254280)))

(declare-fun bs!1197671 () Bool)

(assert (= bs!1197671 (and d!1660374 b!5131552)))

(assert (=> bs!1197671 (not (= lambda!254323 lambda!254281))))

(declare-fun bs!1197672 () Bool)

(assert (= bs!1197672 (and d!1660374 d!1660360)))

(assert (=> bs!1197672 (not (= lambda!254323 lambda!254304))))

(declare-fun bs!1197673 () Bool)

(assert (= bs!1197673 (and d!1660374 d!1660362)))

(assert (=> bs!1197673 (not (= lambda!254323 lambda!254307))))

(declare-fun bs!1197674 () Bool)

(declare-fun b!5131593 () Bool)

(assert (= bs!1197674 (and b!5131593 b!5131552)))

(declare-fun lambda!254324 () Int)

(assert (=> bs!1197674 (= lambda!254324 lambda!254281)))

(declare-fun bs!1197675 () Bool)

(assert (= bs!1197675 (and b!5131593 d!1660360)))

(assert (=> bs!1197675 (not (= lambda!254324 lambda!254304))))

(declare-fun bs!1197676 () Bool)

(assert (= bs!1197676 (and b!5131593 d!1660374)))

(assert (=> bs!1197676 (not (= lambda!254324 lambda!254323))))

(declare-fun bs!1197677 () Bool)

(assert (= bs!1197677 (and b!5131593 b!5131556)))

(assert (=> bs!1197677 (not (= lambda!254324 lambda!254280))))

(declare-fun bs!1197678 () Bool)

(assert (= bs!1197678 (and b!5131593 d!1660362)))

(assert (=> bs!1197678 (not (= lambda!254324 lambda!254307))))

(declare-fun bs!1197679 () Bool)

(declare-fun b!5131594 () Bool)

(assert (= bs!1197679 (and b!5131594 b!5131552)))

(declare-fun lambda!254325 () Int)

(assert (=> bs!1197679 (= lambda!254325 lambda!254281)))

(declare-fun bs!1197680 () Bool)

(assert (= bs!1197680 (and b!5131594 d!1660360)))

(assert (=> bs!1197680 (not (= lambda!254325 lambda!254304))))

(declare-fun bs!1197681 () Bool)

(assert (= bs!1197681 (and b!5131594 b!5131593)))

(assert (=> bs!1197681 (= lambda!254325 lambda!254324)))

(declare-fun bs!1197682 () Bool)

(assert (= bs!1197682 (and b!5131594 d!1660374)))

(assert (=> bs!1197682 (not (= lambda!254325 lambda!254323))))

(declare-fun bs!1197683 () Bool)

(assert (= bs!1197683 (and b!5131594 b!5131556)))

(assert (=> bs!1197683 (not (= lambda!254325 lambda!254280))))

(declare-fun bs!1197684 () Bool)

(assert (= bs!1197684 (and b!5131594 d!1660362)))

(assert (=> bs!1197684 (not (= lambda!254325 lambda!254307))))

(declare-fun bm!357172 () Bool)

(declare-fun c!882871 () Bool)

(declare-fun lt!2117173 () List!59628)

(declare-fun lt!2117170 () List!59628)

(declare-fun call!357177 () Bool)

(assert (=> bm!357172 (= call!357177 (exists!1652 (ite c!882871 lt!2117173 lt!2117170) (ite c!882871 lambda!254324 lambda!254325)))))

(declare-fun e!3200566 () Unit!150773)

(declare-fun Unit!150777 () Unit!150773)

(assert (=> b!5131593 (= e!3200566 Unit!150777)))

(declare-fun call!357176 () List!59628)

(assert (=> b!5131593 (= lt!2117173 call!357176)))

(declare-fun lt!2117168 () Unit!150773)

(assert (=> b!5131593 (= lt!2117168 (lemmaNotForallThenExists!381 lt!2117173 lambda!254323))))

(assert (=> b!5131593 call!357177))

(declare-fun lt!2117167 () Unit!150773)

(assert (=> b!5131593 (= lt!2117167 lt!2117168)))

(declare-fun bm!357171 () Bool)

(assert (=> bm!357171 (= call!357176 (toList!8333 z!1054))))

(declare-fun Unit!150778 () Unit!150773)

(assert (=> b!5131594 (= e!3200566 Unit!150778)))

(assert (=> b!5131594 (= lt!2117170 call!357176)))

(declare-fun lt!2117174 () Unit!150773)

(declare-fun lemmaForallThenNotExists!356 (List!59628 Int) Unit!150773)

(assert (=> b!5131594 (= lt!2117174 (lemmaForallThenNotExists!356 lt!2117170 lambda!254323))))

(assert (=> b!5131594 (not call!357177)))

(declare-fun lt!2117172 () Unit!150773)

(assert (=> b!5131594 (= lt!2117172 lt!2117174)))

(declare-fun lt!2117169 () Bool)

(declare-datatypes ((List!59631 0))(
  ( (Nil!59507) (Cons!59507 (h!65955 C!28962) (t!372658 List!59631)) )
))
(declare-datatypes ((Option!14734 0))(
  ( (None!14733) (Some!14733 (v!50760 List!59631)) )
))
(declare-fun isEmpty!31995 (Option!14734) Bool)

(declare-fun getLanguageWitness!869 ((Set Context!7464)) Option!14734)

(assert (=> d!1660374 (= lt!2117169 (isEmpty!31995 (getLanguageWitness!869 z!1054)))))

(assert (=> d!1660374 (= lt!2117169 (forall!13775 z!1054 lambda!254323))))

(declare-fun lt!2117171 () Unit!150773)

(assert (=> d!1660374 (= lt!2117171 e!3200566)))

(assert (=> d!1660374 (= c!882871 (not (forall!13775 z!1054 lambda!254323)))))

(assert (=> d!1660374 (= (lostCauseZipper!1192 z!1054) lt!2117169)))

(assert (= (and d!1660374 c!882871) b!5131593))

(assert (= (and d!1660374 (not c!882871)) b!5131594))

(assert (= (or b!5131593 b!5131594) bm!357171))

(assert (= (or b!5131593 b!5131594) bm!357172))

(declare-fun m!6196976 () Bool)

(assert (=> d!1660374 m!6196976))

(assert (=> d!1660374 m!6196976))

(declare-fun m!6196978 () Bool)

(assert (=> d!1660374 m!6196978))

(declare-fun m!6196980 () Bool)

(assert (=> d!1660374 m!6196980))

(assert (=> d!1660374 m!6196980))

(declare-fun m!6196982 () Bool)

(assert (=> b!5131593 m!6196982))

(declare-fun m!6196984 () Bool)

(assert (=> bm!357172 m!6196984))

(assert (=> bm!357171 m!6196962))

(declare-fun m!6196986 () Bool)

(assert (=> b!5131594 m!6196986))

(assert (=> start!542614 d!1660374))

(assert (=> b!5131556 d!1660368))

(declare-fun bs!1197685 () Bool)

(declare-fun d!1660378 () Bool)

(assert (= bs!1197685 (and d!1660378 b!5131552)))

(declare-fun lambda!254326 () Int)

(assert (=> bs!1197685 (not (= lambda!254326 lambda!254281))))

(declare-fun bs!1197686 () Bool)

(assert (= bs!1197686 (and d!1660378 d!1660360)))

(assert (=> bs!1197686 (not (= lambda!254326 lambda!254304))))

(declare-fun bs!1197687 () Bool)

(assert (= bs!1197687 (and d!1660378 b!5131593)))

(assert (=> bs!1197687 (not (= lambda!254326 lambda!254324))))

(declare-fun bs!1197688 () Bool)

(assert (= bs!1197688 (and d!1660378 b!5131594)))

(assert (=> bs!1197688 (not (= lambda!254326 lambda!254325))))

(declare-fun bs!1197689 () Bool)

(assert (= bs!1197689 (and d!1660378 d!1660374)))

(assert (=> bs!1197689 (= lambda!254326 lambda!254323)))

(declare-fun bs!1197690 () Bool)

(assert (= bs!1197690 (and d!1660378 b!5131556)))

(assert (=> bs!1197690 (= lambda!254326 lambda!254280)))

(declare-fun bs!1197691 () Bool)

(assert (= bs!1197691 (and d!1660378 d!1660362)))

(assert (=> bs!1197691 (not (= lambda!254326 lambda!254307))))

(declare-fun bs!1197692 () Bool)

(declare-fun b!5131595 () Bool)

(assert (= bs!1197692 (and b!5131595 b!5131552)))

(declare-fun lambda!254327 () Int)

(assert (=> bs!1197692 (= lambda!254327 lambda!254281)))

(declare-fun bs!1197693 () Bool)

(assert (= bs!1197693 (and b!5131595 d!1660360)))

(assert (=> bs!1197693 (not (= lambda!254327 lambda!254304))))

(declare-fun bs!1197694 () Bool)

(assert (= bs!1197694 (and b!5131595 b!5131593)))

(assert (=> bs!1197694 (= lambda!254327 lambda!254324)))

(declare-fun bs!1197695 () Bool)

(assert (= bs!1197695 (and b!5131595 b!5131594)))

(assert (=> bs!1197695 (= lambda!254327 lambda!254325)))

(declare-fun bs!1197696 () Bool)

(assert (= bs!1197696 (and b!5131595 d!1660374)))

(assert (=> bs!1197696 (not (= lambda!254327 lambda!254323))))

(declare-fun bs!1197697 () Bool)

(assert (= bs!1197697 (and b!5131595 d!1660378)))

(assert (=> bs!1197697 (not (= lambda!254327 lambda!254326))))

(declare-fun bs!1197698 () Bool)

(assert (= bs!1197698 (and b!5131595 b!5131556)))

(assert (=> bs!1197698 (not (= lambda!254327 lambda!254280))))

(declare-fun bs!1197699 () Bool)

(assert (= bs!1197699 (and b!5131595 d!1660362)))

(assert (=> bs!1197699 (not (= lambda!254327 lambda!254307))))

(declare-fun bs!1197700 () Bool)

(declare-fun b!5131596 () Bool)

(assert (= bs!1197700 (and b!5131596 b!5131552)))

(declare-fun lambda!254328 () Int)

(assert (=> bs!1197700 (= lambda!254328 lambda!254281)))

(declare-fun bs!1197701 () Bool)

(assert (= bs!1197701 (and b!5131596 d!1660360)))

(assert (=> bs!1197701 (not (= lambda!254328 lambda!254304))))

(declare-fun bs!1197702 () Bool)

(assert (= bs!1197702 (and b!5131596 b!5131593)))

(assert (=> bs!1197702 (= lambda!254328 lambda!254324)))

(declare-fun bs!1197703 () Bool)

(assert (= bs!1197703 (and b!5131596 b!5131594)))

(assert (=> bs!1197703 (= lambda!254328 lambda!254325)))

(declare-fun bs!1197704 () Bool)

(assert (= bs!1197704 (and b!5131596 b!5131595)))

(assert (=> bs!1197704 (= lambda!254328 lambda!254327)))

(declare-fun bs!1197705 () Bool)

(assert (= bs!1197705 (and b!5131596 d!1660374)))

(assert (=> bs!1197705 (not (= lambda!254328 lambda!254323))))

(declare-fun bs!1197706 () Bool)

(assert (= bs!1197706 (and b!5131596 d!1660378)))

(assert (=> bs!1197706 (not (= lambda!254328 lambda!254326))))

(declare-fun bs!1197707 () Bool)

(assert (= bs!1197707 (and b!5131596 b!5131556)))

(assert (=> bs!1197707 (not (= lambda!254328 lambda!254280))))

(declare-fun bs!1197708 () Bool)

(assert (= bs!1197708 (and b!5131596 d!1660362)))

(assert (=> bs!1197708 (not (= lambda!254328 lambda!254307))))

(declare-fun lt!2117181 () List!59628)

(declare-fun bm!357174 () Bool)

(declare-fun call!357179 () Bool)

(declare-fun lt!2117178 () List!59628)

(declare-fun c!882872 () Bool)

(assert (=> bm!357174 (= call!357179 (exists!1652 (ite c!882872 lt!2117181 lt!2117178) (ite c!882872 lambda!254327 lambda!254328)))))

(declare-fun e!3200567 () Unit!150773)

(declare-fun Unit!150779 () Unit!150773)

(assert (=> b!5131595 (= e!3200567 Unit!150779)))

(declare-fun call!357178 () List!59628)

(assert (=> b!5131595 (= lt!2117181 call!357178)))

(declare-fun lt!2117176 () Unit!150773)

(assert (=> b!5131595 (= lt!2117176 (lemmaNotForallThenExists!381 lt!2117181 lambda!254326))))

(assert (=> b!5131595 call!357179))

(declare-fun lt!2117175 () Unit!150773)

(assert (=> b!5131595 (= lt!2117175 lt!2117176)))

(declare-fun bm!357173 () Bool)

(assert (=> bm!357173 (= call!357178 (toList!8333 lt!2117123))))

(declare-fun Unit!150780 () Unit!150773)

(assert (=> b!5131596 (= e!3200567 Unit!150780)))

(assert (=> b!5131596 (= lt!2117178 call!357178)))

(declare-fun lt!2117182 () Unit!150773)

(assert (=> b!5131596 (= lt!2117182 (lemmaForallThenNotExists!356 lt!2117178 lambda!254326))))

(assert (=> b!5131596 (not call!357179)))

(declare-fun lt!2117180 () Unit!150773)

(assert (=> b!5131596 (= lt!2117180 lt!2117182)))

(declare-fun lt!2117177 () Bool)

(assert (=> d!1660378 (= lt!2117177 (isEmpty!31995 (getLanguageWitness!869 lt!2117123)))))

(assert (=> d!1660378 (= lt!2117177 (forall!13775 lt!2117123 lambda!254326))))

(declare-fun lt!2117179 () Unit!150773)

(assert (=> d!1660378 (= lt!2117179 e!3200567)))

(assert (=> d!1660378 (= c!882872 (not (forall!13775 lt!2117123 lambda!254326)))))

(assert (=> d!1660378 (= (lostCauseZipper!1192 lt!2117123) lt!2117177)))

(assert (= (and d!1660378 c!882872) b!5131595))

(assert (= (and d!1660378 (not c!882872)) b!5131596))

(assert (= (or b!5131595 b!5131596) bm!357173))

(assert (= (or b!5131595 b!5131596) bm!357174))

(declare-fun m!6196988 () Bool)

(assert (=> d!1660378 m!6196988))

(assert (=> d!1660378 m!6196988))

(declare-fun m!6196990 () Bool)

(assert (=> d!1660378 m!6196990))

(declare-fun m!6196992 () Bool)

(assert (=> d!1660378 m!6196992))

(assert (=> d!1660378 m!6196992))

(declare-fun m!6196994 () Bool)

(assert (=> b!5131595 m!6196994))

(declare-fun m!6196996 () Bool)

(assert (=> bm!357174 m!6196996))

(assert (=> bm!357173 m!6196906))

(declare-fun m!6196998 () Bool)

(assert (=> b!5131596 m!6196998))

(assert (=> b!5131556 d!1660378))

(declare-fun b!5131601 () Bool)

(declare-fun e!3200570 () Bool)

(declare-fun tp!1431560 () Bool)

(declare-fun tp!1431561 () Bool)

(assert (=> b!5131601 (= e!3200570 (and tp!1431560 tp!1431561))))

(assert (=> b!5131557 (= tp!1431548 e!3200570)))

(assert (= (and b!5131557 (is-Cons!59503 (exprs!4232 setElem!31117))) b!5131601))

(declare-fun condSetEmpty!31123 () Bool)

(assert (=> setNonEmpty!31117 (= condSetEmpty!31123 (= setRest!31117 (as set.empty (Set Context!7464))))))

(declare-fun setRes!31123 () Bool)

(assert (=> setNonEmpty!31117 (= tp!1431549 setRes!31123)))

(declare-fun setIsEmpty!31123 () Bool)

(assert (=> setIsEmpty!31123 setRes!31123))

(declare-fun e!3200573 () Bool)

(declare-fun setElem!31123 () Context!7464)

(declare-fun setNonEmpty!31123 () Bool)

(declare-fun tp!1431567 () Bool)

(assert (=> setNonEmpty!31123 (= setRes!31123 (and tp!1431567 (inv!79052 setElem!31123) e!3200573))))

(declare-fun setRest!31123 () (Set Context!7464))

(assert (=> setNonEmpty!31123 (= setRest!31117 (set.union (set.insert setElem!31123 (as set.empty (Set Context!7464))) setRest!31123))))

(declare-fun b!5131606 () Bool)

(declare-fun tp!1431566 () Bool)

(assert (=> b!5131606 (= e!3200573 tp!1431566)))

(assert (= (and setNonEmpty!31117 condSetEmpty!31123) setIsEmpty!31123))

(assert (= (and setNonEmpty!31117 (not condSetEmpty!31123)) setNonEmpty!31123))

(assert (= setNonEmpty!31123 b!5131606))

(declare-fun m!6197000 () Bool)

(assert (=> setNonEmpty!31123 m!6197000))

(push 1)

(assert (not b!5131588))

(assert (not d!1660370))

(assert (not b!5131601))

(assert (not b!5131593))

(assert (not d!1660356))

(assert (not d!1660378))

(assert (not d!1660372))

(assert (not setNonEmpty!31123))

(assert (not d!1660374))

(assert (not b!5131596))

(assert (not b!5131594))

(assert (not bm!357174))

(assert (not b!5131595))

(assert tp_is_empty!37869)

(assert (not d!1660366))

(assert (not bm!357171))

(assert (not bm!357173))

(assert (not d!1660368))

(assert (not d!1660360))

(assert (not d!1660362))

(assert (not d!1660358))

(assert (not bm!357172))

(assert (not b!5131606))

(assert (not d!1660364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

