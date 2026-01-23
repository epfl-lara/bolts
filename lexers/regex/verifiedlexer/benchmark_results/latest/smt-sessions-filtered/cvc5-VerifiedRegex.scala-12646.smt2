; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700632 () Bool)

(assert start!700632)

(declare-fun b!7226128 () Bool)

(assert (=> b!7226128 true))

(declare-fun b!7226124 () Bool)

(declare-fun e!4331650 () Bool)

(declare-fun tp!2032170 () Bool)

(assert (=> b!7226124 (= e!4331650 tp!2032170)))

(declare-fun b!7226125 () Bool)

(declare-datatypes ((Unit!163419 0))(
  ( (Unit!163420) )
))
(declare-fun e!4331648 () Unit!163419)

(declare-fun Unit!163421 () Unit!163419)

(assert (=> b!7226125 (= e!4331648 Unit!163421)))

(declare-fun setIsEmpty!53551 () Bool)

(declare-fun setRes!53551 () Bool)

(assert (=> setIsEmpty!53551 setRes!53551))

(declare-fun b!7226126 () Bool)

(declare-fun e!4331645 () Bool)

(declare-fun e!4331646 () Bool)

(assert (=> b!7226126 (= e!4331645 e!4331646)))

(declare-fun res!2932166 () Bool)

(assert (=> b!7226126 (=> (not res!2932166) (not e!4331646))))

(declare-fun lt!2571806 () Bool)

(assert (=> b!7226126 (= res!2932166 (not lt!2571806))))

(declare-fun lt!2571805 () Unit!163419)

(assert (=> b!7226126 (= lt!2571805 e!4331648)))

(declare-fun c!1340482 () Bool)

(assert (=> b!7226126 (= c!1340482 lt!2571806)))

(declare-datatypes ((C!37074 0))(
  ( (C!37075 (val!28485 Int)) )
))
(declare-datatypes ((Regex!18400 0))(
  ( (ElementMatch!18400 (c!1340483 C!37074)) (Concat!27245 (regOne!37312 Regex!18400) (regTwo!37312 Regex!18400)) (EmptyExpr!18400) (Star!18400 (reg!18729 Regex!18400)) (EmptyLang!18400) (Union!18400 (regOne!37313 Regex!18400) (regTwo!37313 Regex!18400)) )
))
(declare-datatypes ((List!69918 0))(
  ( (Nil!69794) (Cons!69794 (h!76242 Regex!18400) (t!383949 List!69918)) )
))
(declare-datatypes ((Context!14704 0))(
  ( (Context!14705 (exprs!7852 List!69918)) )
))
(declare-fun lt!2571808 () (Set Context!14704))

(assert (=> b!7226126 (= lt!2571806 (not (= lt!2571808 (as set.empty (Set Context!14704)))))))

(declare-fun b!7226127 () Bool)

(declare-fun z!3517 () (Set Context!14704))

(declare-datatypes ((List!69919 0))(
  ( (Nil!69795) (Cons!69795 (h!76243 C!37074) (t!383950 List!69919)) )
))
(declare-fun s!7961 () List!69919)

(declare-fun matchZipper!3370 ((Set Context!14704) List!69919) Bool)

(assert (=> b!7226127 (= e!4331646 (not (not (matchZipper!3370 z!3517 s!7961))))))

(declare-fun lt!2571803 () List!69919)

(assert (=> b!7226127 (not (matchZipper!3370 lt!2571808 lt!2571803))))

(declare-fun lt!2571804 () Unit!163419)

(declare-fun lemmaEmptyZipperMatchesNothing!127 ((Set Context!14704) List!69919) Unit!163419)

(assert (=> b!7226127 (= lt!2571804 (lemmaEmptyZipperMatchesNothing!127 lt!2571808 lt!2571803))))

(declare-fun tail!14089 (List!69919) List!69919)

(assert (=> b!7226127 (= lt!2571803 (tail!14089 s!7961))))

(declare-fun Unit!163422 () Unit!163419)

(assert (=> b!7226128 (= e!4331648 Unit!163422)))

(declare-fun empty!3075 () Context!14704)

(declare-fun inv!89023 (Context!14704) Bool)

(assert (=> b!7226128 (and (inv!89023 empty!3075) e!4331650)))

(assert (=> b!7226128 true))

(declare-fun lambda!438379 () Int)

(declare-fun res!2932168 () Bool)

(declare-fun flatMapPost!89 ((Set Context!14704) Int Context!14704) Context!14704)

(declare-datatypes ((List!69920 0))(
  ( (Nil!69796) (Cons!69796 (h!76244 Context!14704) (t!383951 List!69920)) )
))
(declare-fun head!14770 (List!69920) Context!14704)

(declare-fun toList!11335 ((Set Context!14704)) List!69920)

(assert (=> b!7226128 (= res!2932168 (= (flatMapPost!89 z!3517 lambda!438379 (head!14770 (toList!11335 lt!2571808))) empty!3075))))

(declare-fun e!4331651 () Bool)

(assert (=> b!7226128 (=> (not res!2932168) (not e!4331651))))

(assert (=> b!7226128 e!4331651))

(declare-fun b!7226129 () Bool)

(declare-fun e!4331649 () Bool)

(declare-fun tp_is_empty!46357 () Bool)

(declare-fun tp!2032169 () Bool)

(assert (=> b!7226129 (= e!4331649 (and tp_is_empty!46357 tp!2032169))))

(declare-fun b!7226130 () Bool)

(declare-fun res!2932164 () Bool)

(declare-fun e!4331652 () Bool)

(assert (=> b!7226130 (=> (not res!2932164) (not e!4331652))))

(declare-fun c!10544 () Context!14704)

(declare-fun head!14771 (List!69918) Regex!18400)

(assert (=> b!7226130 (= res!2932164 (= (head!14771 (exprs!7852 c!10544)) EmptyLang!18400))))

(declare-fun b!7226131 () Bool)

(declare-fun res!2932165 () Bool)

(assert (=> b!7226131 (=> (not res!2932165) (not e!4331652))))

(declare-fun isEmpty!40295 (List!69919) Bool)

(assert (=> b!7226131 (= res!2932165 (not (isEmpty!40295 s!7961)))))

(declare-fun b!7226132 () Bool)

(declare-fun e!4331644 () Bool)

(declare-fun tp!2032173 () Bool)

(assert (=> b!7226132 (= e!4331644 tp!2032173)))

(declare-fun b!7226133 () Bool)

(declare-fun res!2932169 () Bool)

(assert (=> b!7226133 (=> (not res!2932169) (not e!4331652))))

(declare-fun isEmpty!40296 (List!69918) Bool)

(assert (=> b!7226133 (= res!2932169 (not (isEmpty!40296 (exprs!7852 c!10544))))))

(declare-fun b!7226134 () Bool)

(assert (=> b!7226134 (= e!4331651 false)))

(declare-fun b!7226135 () Bool)

(assert (=> b!7226135 (= e!4331652 e!4331645)))

(declare-fun res!2932167 () Bool)

(assert (=> b!7226135 (=> (not res!2932167) (not e!4331645))))

(declare-fun lt!2571807 () C!37074)

(declare-fun derivationStepZipperUp!2362 (Context!14704 C!37074) (Set Context!14704))

(assert (=> b!7226135 (= res!2932167 (= (derivationStepZipperUp!2362 c!10544 lt!2571807) (as set.empty (Set Context!14704))))))

(declare-fun derivationStepZipper!3257 ((Set Context!14704) C!37074) (Set Context!14704))

(assert (=> b!7226135 (= lt!2571808 (derivationStepZipper!3257 z!3517 lt!2571807))))

(declare-fun head!14772 (List!69919) C!37074)

(assert (=> b!7226135 (= lt!2571807 (head!14772 s!7961))))

(declare-fun b!7226136 () Bool)

(declare-fun e!4331647 () Bool)

(declare-fun tp!2032172 () Bool)

(assert (=> b!7226136 (= e!4331647 tp!2032172)))

(declare-fun res!2932163 () Bool)

(assert (=> start!700632 (=> (not res!2932163) (not e!4331652))))

(assert (=> start!700632 (= res!2932163 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14704)))))))

(assert (=> start!700632 e!4331652))

(declare-fun condSetEmpty!53551 () Bool)

(assert (=> start!700632 (= condSetEmpty!53551 (= z!3517 (as set.empty (Set Context!14704))))))

(assert (=> start!700632 setRes!53551))

(assert (=> start!700632 (and (inv!89023 c!10544) e!4331647)))

(assert (=> start!700632 e!4331649))

(declare-fun setNonEmpty!53551 () Bool)

(declare-fun tp!2032171 () Bool)

(declare-fun setElem!53551 () Context!14704)

(assert (=> setNonEmpty!53551 (= setRes!53551 (and tp!2032171 (inv!89023 setElem!53551) e!4331644))))

(declare-fun setRest!53551 () (Set Context!14704))

(assert (=> setNonEmpty!53551 (= z!3517 (set.union (set.insert setElem!53551 (as set.empty (Set Context!14704))) setRest!53551))))

(assert (= (and start!700632 res!2932163) b!7226133))

(assert (= (and b!7226133 res!2932169) b!7226130))

(assert (= (and b!7226130 res!2932164) b!7226131))

(assert (= (and b!7226131 res!2932165) b!7226135))

(assert (= (and b!7226135 res!2932167) b!7226126))

(assert (= (and b!7226126 c!1340482) b!7226128))

(assert (= (and b!7226126 (not c!1340482)) b!7226125))

(assert (= b!7226128 b!7226124))

(assert (= (and b!7226128 res!2932168) b!7226134))

(assert (= (and b!7226126 res!2932166) b!7226127))

(assert (= (and start!700632 condSetEmpty!53551) setIsEmpty!53551))

(assert (= (and start!700632 (not condSetEmpty!53551)) setNonEmpty!53551))

(assert (= setNonEmpty!53551 b!7226132))

(assert (= start!700632 b!7226136))

(assert (= (and start!700632 (is-Cons!69795 s!7961)) b!7226129))

(declare-fun m!7895576 () Bool)

(assert (=> setNonEmpty!53551 m!7895576))

(declare-fun m!7895578 () Bool)

(assert (=> b!7226128 m!7895578))

(declare-fun m!7895580 () Bool)

(assert (=> b!7226128 m!7895580))

(assert (=> b!7226128 m!7895580))

(declare-fun m!7895582 () Bool)

(assert (=> b!7226128 m!7895582))

(assert (=> b!7226128 m!7895582))

(declare-fun m!7895584 () Bool)

(assert (=> b!7226128 m!7895584))

(declare-fun m!7895586 () Bool)

(assert (=> b!7226133 m!7895586))

(declare-fun m!7895588 () Bool)

(assert (=> start!700632 m!7895588))

(declare-fun m!7895590 () Bool)

(assert (=> start!700632 m!7895590))

(declare-fun m!7895592 () Bool)

(assert (=> b!7226130 m!7895592))

(declare-fun m!7895594 () Bool)

(assert (=> b!7226127 m!7895594))

(declare-fun m!7895596 () Bool)

(assert (=> b!7226127 m!7895596))

(declare-fun m!7895598 () Bool)

(assert (=> b!7226127 m!7895598))

(declare-fun m!7895600 () Bool)

(assert (=> b!7226127 m!7895600))

(declare-fun m!7895602 () Bool)

(assert (=> b!7226135 m!7895602))

(declare-fun m!7895604 () Bool)

(assert (=> b!7226135 m!7895604))

(declare-fun m!7895606 () Bool)

(assert (=> b!7226135 m!7895606))

(declare-fun m!7895608 () Bool)

(assert (=> b!7226131 m!7895608))

(push 1)

(assert (not setNonEmpty!53551))

(assert (not start!700632))

(assert (not b!7226136))

(assert (not b!7226135))

(assert (not b!7226131))

(assert (not b!7226128))

(assert tp_is_empty!46357)

(assert (not b!7226133))

(assert (not b!7226130))

(assert (not b!7226132))

(assert (not b!7226129))

(assert (not b!7226127))

(assert (not b!7226124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244451 () Bool)

(assert (=> d!2244451 (= (isEmpty!40295 s!7961) (is-Nil!69795 s!7961))))

(assert (=> b!7226131 d!2244451))

(declare-fun b!7226193 () Bool)

(declare-fun e!4331686 () (Set Context!14704))

(declare-fun call!657716 () (Set Context!14704))

(assert (=> b!7226193 (= e!4331686 call!657716)))

(declare-fun b!7226194 () Bool)

(assert (=> b!7226194 (= e!4331686 (as set.empty (Set Context!14704)))))

(declare-fun bm!657711 () Bool)

(declare-fun derivationStepZipperDown!2534 (Regex!18400 Context!14704 C!37074) (Set Context!14704))

(assert (=> bm!657711 (= call!657716 (derivationStepZipperDown!2534 (h!76242 (exprs!7852 c!10544)) (Context!14705 (t!383949 (exprs!7852 c!10544))) lt!2571807))))

(declare-fun b!7226195 () Bool)

(declare-fun e!4331688 () (Set Context!14704))

(assert (=> b!7226195 (= e!4331688 (set.union call!657716 (derivationStepZipperUp!2362 (Context!14705 (t!383949 (exprs!7852 c!10544))) lt!2571807)))))

(declare-fun d!2244453 () Bool)

(declare-fun c!1340493 () Bool)

(declare-fun e!4331687 () Bool)

(assert (=> d!2244453 (= c!1340493 e!4331687)))

(declare-fun res!2932193 () Bool)

(assert (=> d!2244453 (=> (not res!2932193) (not e!4331687))))

(assert (=> d!2244453 (= res!2932193 (is-Cons!69794 (exprs!7852 c!10544)))))

(assert (=> d!2244453 (= (derivationStepZipperUp!2362 c!10544 lt!2571807) e!4331688)))

(declare-fun b!7226196 () Bool)

(assert (=> b!7226196 (= e!4331688 e!4331686)))

(declare-fun c!1340492 () Bool)

(assert (=> b!7226196 (= c!1340492 (is-Cons!69794 (exprs!7852 c!10544)))))

(declare-fun b!7226197 () Bool)

(declare-fun nullable!7807 (Regex!18400) Bool)

(assert (=> b!7226197 (= e!4331687 (nullable!7807 (h!76242 (exprs!7852 c!10544))))))

(assert (= (and d!2244453 res!2932193) b!7226197))

(assert (= (and d!2244453 c!1340493) b!7226195))

(assert (= (and d!2244453 (not c!1340493)) b!7226196))

(assert (= (and b!7226196 c!1340492) b!7226193))

(assert (= (and b!7226196 (not c!1340492)) b!7226194))

(assert (= (or b!7226195 b!7226193) bm!657711))

(declare-fun m!7895646 () Bool)

(assert (=> bm!657711 m!7895646))

(declare-fun m!7895648 () Bool)

(assert (=> b!7226195 m!7895648))

(declare-fun m!7895650 () Bool)

(assert (=> b!7226197 m!7895650))

(assert (=> b!7226135 d!2244453))

(declare-fun bs!1901921 () Bool)

(declare-fun d!2244455 () Bool)

(assert (= bs!1901921 (and d!2244455 b!7226128)))

(declare-fun lambda!438391 () Int)

(assert (=> bs!1901921 (= lambda!438391 lambda!438379)))

(assert (=> d!2244455 true))

(declare-fun flatMap!2695 ((Set Context!14704) Int) (Set Context!14704))

(assert (=> d!2244455 (= (derivationStepZipper!3257 z!3517 lt!2571807) (flatMap!2695 z!3517 lambda!438391))))

(declare-fun bs!1901922 () Bool)

(assert (= bs!1901922 d!2244455))

(declare-fun m!7895660 () Bool)

(assert (=> bs!1901922 m!7895660))

(assert (=> b!7226135 d!2244455))

(declare-fun d!2244461 () Bool)

(assert (=> d!2244461 (= (head!14772 s!7961) (h!76243 s!7961))))

(assert (=> b!7226135 d!2244461))

(declare-fun d!2244463 () Bool)

(assert (=> d!2244463 (= (head!14771 (exprs!7852 c!10544)) (h!76242 (exprs!7852 c!10544)))))

(assert (=> b!7226130 d!2244463))

(declare-fun d!2244465 () Bool)

(declare-fun lambda!438394 () Int)

(declare-fun forall!17224 (List!69918 Int) Bool)

(assert (=> d!2244465 (= (inv!89023 c!10544) (forall!17224 (exprs!7852 c!10544) lambda!438394))))

(declare-fun bs!1901923 () Bool)

(assert (= bs!1901923 d!2244465))

(declare-fun m!7895662 () Bool)

(assert (=> bs!1901923 m!7895662))

(assert (=> start!700632 d!2244465))

(declare-fun bs!1901924 () Bool)

(declare-fun d!2244467 () Bool)

(assert (= bs!1901924 (and d!2244467 d!2244465)))

(declare-fun lambda!438395 () Int)

(assert (=> bs!1901924 (= lambda!438395 lambda!438394)))

(assert (=> d!2244467 (= (inv!89023 setElem!53551) (forall!17224 (exprs!7852 setElem!53551) lambda!438395))))

(declare-fun bs!1901925 () Bool)

(assert (= bs!1901925 d!2244467))

(declare-fun m!7895664 () Bool)

(assert (=> bs!1901925 m!7895664))

(assert (=> setNonEmpty!53551 d!2244467))

(declare-fun d!2244469 () Bool)

(declare-fun c!1340498 () Bool)

(assert (=> d!2244469 (= c!1340498 (isEmpty!40295 s!7961))))

(declare-fun e!4331694 () Bool)

(assert (=> d!2244469 (= (matchZipper!3370 z!3517 s!7961) e!4331694)))

(declare-fun b!7226207 () Bool)

(declare-fun nullableZipper!2788 ((Set Context!14704)) Bool)

(assert (=> b!7226207 (= e!4331694 (nullableZipper!2788 z!3517))))

(declare-fun b!7226208 () Bool)

(assert (=> b!7226208 (= e!4331694 (matchZipper!3370 (derivationStepZipper!3257 z!3517 (head!14772 s!7961)) (tail!14089 s!7961)))))

(assert (= (and d!2244469 c!1340498) b!7226207))

(assert (= (and d!2244469 (not c!1340498)) b!7226208))

(assert (=> d!2244469 m!7895608))

(declare-fun m!7895672 () Bool)

(assert (=> b!7226207 m!7895672))

(assert (=> b!7226208 m!7895606))

(assert (=> b!7226208 m!7895606))

(declare-fun m!7895674 () Bool)

(assert (=> b!7226208 m!7895674))

(assert (=> b!7226208 m!7895600))

(assert (=> b!7226208 m!7895674))

(assert (=> b!7226208 m!7895600))

(declare-fun m!7895676 () Bool)

(assert (=> b!7226208 m!7895676))

(assert (=> b!7226127 d!2244469))

(declare-fun d!2244475 () Bool)

(declare-fun c!1340499 () Bool)

(assert (=> d!2244475 (= c!1340499 (isEmpty!40295 lt!2571803))))

(declare-fun e!4331695 () Bool)

(assert (=> d!2244475 (= (matchZipper!3370 lt!2571808 lt!2571803) e!4331695)))

(declare-fun b!7226209 () Bool)

(assert (=> b!7226209 (= e!4331695 (nullableZipper!2788 lt!2571808))))

(declare-fun b!7226210 () Bool)

(assert (=> b!7226210 (= e!4331695 (matchZipper!3370 (derivationStepZipper!3257 lt!2571808 (head!14772 lt!2571803)) (tail!14089 lt!2571803)))))

(assert (= (and d!2244475 c!1340499) b!7226209))

(assert (= (and d!2244475 (not c!1340499)) b!7226210))

(declare-fun m!7895678 () Bool)

(assert (=> d!2244475 m!7895678))

(declare-fun m!7895680 () Bool)

(assert (=> b!7226209 m!7895680))

(declare-fun m!7895682 () Bool)

(assert (=> b!7226210 m!7895682))

(assert (=> b!7226210 m!7895682))

(declare-fun m!7895684 () Bool)

(assert (=> b!7226210 m!7895684))

(declare-fun m!7895686 () Bool)

(assert (=> b!7226210 m!7895686))

(assert (=> b!7226210 m!7895684))

(assert (=> b!7226210 m!7895686))

(declare-fun m!7895688 () Bool)

(assert (=> b!7226210 m!7895688))

(assert (=> b!7226127 d!2244475))

(declare-fun d!2244477 () Bool)

(assert (=> d!2244477 (not (matchZipper!3370 lt!2571808 lt!2571803))))

(declare-fun lt!2571835 () Unit!163419)

(declare-fun choose!55456 ((Set Context!14704) List!69919) Unit!163419)

(assert (=> d!2244477 (= lt!2571835 (choose!55456 lt!2571808 lt!2571803))))

(assert (=> d!2244477 (= lt!2571808 (as set.empty (Set Context!14704)))))

(assert (=> d!2244477 (= (lemmaEmptyZipperMatchesNothing!127 lt!2571808 lt!2571803) lt!2571835)))

(declare-fun bs!1901926 () Bool)

(assert (= bs!1901926 d!2244477))

(assert (=> bs!1901926 m!7895596))

(declare-fun m!7895690 () Bool)

(assert (=> bs!1901926 m!7895690))

(assert (=> b!7226127 d!2244477))

(declare-fun d!2244479 () Bool)

(assert (=> d!2244479 (= (tail!14089 s!7961) (t!383950 s!7961))))

(assert (=> b!7226127 d!2244479))

(declare-fun d!2244481 () Bool)

(assert (=> d!2244481 (= (isEmpty!40296 (exprs!7852 c!10544)) (is-Nil!69794 (exprs!7852 c!10544)))))

(assert (=> b!7226133 d!2244481))

(declare-fun bs!1901927 () Bool)

(declare-fun d!2244483 () Bool)

(assert (= bs!1901927 (and d!2244483 d!2244465)))

(declare-fun lambda!438396 () Int)

(assert (=> bs!1901927 (= lambda!438396 lambda!438394)))

(declare-fun bs!1901928 () Bool)

(assert (= bs!1901928 (and d!2244483 d!2244467)))

(assert (=> bs!1901928 (= lambda!438396 lambda!438395)))

(assert (=> d!2244483 (= (inv!89023 empty!3075) (forall!17224 (exprs!7852 empty!3075) lambda!438396))))

(declare-fun bs!1901929 () Bool)

(assert (= bs!1901929 d!2244483))

(declare-fun m!7895692 () Bool)

(assert (=> bs!1901929 m!7895692))

(assert (=> b!7226128 d!2244483))

(declare-fun d!2244485 () Bool)

(assert (=> d!2244485 true))

(assert (=> d!2244485 true))

(declare-fun lambda!438399 () Int)

(declare-fun order!28753 () Int)

(declare-fun order!28751 () Int)

(declare-fun dynLambda!28428 (Int Int) Int)

(declare-fun dynLambda!28429 (Int Int) Int)

(assert (=> d!2244485 (< (dynLambda!28428 order!28751 lambda!438379) (dynLambda!28429 order!28753 lambda!438399))))

(declare-fun exists!4105 ((Set Context!14704) Int) Bool)

(assert (=> d!2244485 (= (set.member (head!14770 (toList!11335 lt!2571808)) (flatMap!2695 z!3517 lambda!438379)) (exists!4105 z!3517 lambda!438399))))

(declare-fun lt!2571838 () Context!14704)

(declare-fun choose!55457 ((Set Context!14704) Int Context!14704) Context!14704)

(assert (=> d!2244485 (= lt!2571838 (choose!55457 z!3517 lambda!438379 (head!14770 (toList!11335 lt!2571808))))))

(assert (=> d!2244485 (= (flatMapPost!89 z!3517 lambda!438379 (head!14770 (toList!11335 lt!2571808))) lt!2571838)))

(declare-fun bs!1901930 () Bool)

(assert (= bs!1901930 d!2244485))

(declare-fun m!7895694 () Bool)

(assert (=> bs!1901930 m!7895694))

(assert (=> bs!1901930 m!7895582))

(declare-fun m!7895696 () Bool)

(assert (=> bs!1901930 m!7895696))

(declare-fun m!7895698 () Bool)

(assert (=> bs!1901930 m!7895698))

(assert (=> bs!1901930 m!7895582))

(declare-fun m!7895700 () Bool)

(assert (=> bs!1901930 m!7895700))

(assert (=> b!7226128 d!2244485))

(declare-fun d!2244487 () Bool)

(assert (=> d!2244487 (= (head!14770 (toList!11335 lt!2571808)) (h!76244 (toList!11335 lt!2571808)))))

(assert (=> b!7226128 d!2244487))

(declare-fun d!2244489 () Bool)

(declare-fun e!4331707 () Bool)

(assert (=> d!2244489 e!4331707))

(declare-fun res!2932202 () Bool)

(assert (=> d!2244489 (=> (not res!2932202) (not e!4331707))))

(declare-fun lt!2571841 () List!69920)

(declare-fun noDuplicate!2913 (List!69920) Bool)

(assert (=> d!2244489 (= res!2932202 (noDuplicate!2913 lt!2571841))))

(declare-fun choose!55458 ((Set Context!14704)) List!69920)

(assert (=> d!2244489 (= lt!2571841 (choose!55458 lt!2571808))))

(assert (=> d!2244489 (= (toList!11335 lt!2571808) lt!2571841)))

(declare-fun b!7226233 () Bool)

(declare-fun content!14342 (List!69920) (Set Context!14704))

(assert (=> b!7226233 (= e!4331707 (= (content!14342 lt!2571841) lt!2571808))))

(assert (= (and d!2244489 res!2932202) b!7226233))

(declare-fun m!7895708 () Bool)

(assert (=> d!2244489 m!7895708))

(declare-fun m!7895710 () Bool)

(assert (=> d!2244489 m!7895710))

(declare-fun m!7895712 () Bool)

(assert (=> b!7226233 m!7895712))

(assert (=> b!7226128 d!2244489))

(declare-fun b!7226238 () Bool)

(declare-fun e!4331710 () Bool)

(declare-fun tp!2032193 () Bool)

(declare-fun tp!2032194 () Bool)

(assert (=> b!7226238 (= e!4331710 (and tp!2032193 tp!2032194))))

(assert (=> b!7226132 (= tp!2032173 e!4331710)))

(assert (= (and b!7226132 (is-Cons!69794 (exprs!7852 setElem!53551))) b!7226238))

(declare-fun condSetEmpty!53557 () Bool)

(assert (=> setNonEmpty!53551 (= condSetEmpty!53557 (= setRest!53551 (as set.empty (Set Context!14704))))))

(declare-fun setRes!53557 () Bool)

(assert (=> setNonEmpty!53551 (= tp!2032171 setRes!53557)))

(declare-fun setIsEmpty!53557 () Bool)

(assert (=> setIsEmpty!53557 setRes!53557))

(declare-fun e!4331713 () Bool)

(declare-fun setNonEmpty!53557 () Bool)

(declare-fun tp!2032200 () Bool)

(declare-fun setElem!53557 () Context!14704)

(assert (=> setNonEmpty!53557 (= setRes!53557 (and tp!2032200 (inv!89023 setElem!53557) e!4331713))))

(declare-fun setRest!53557 () (Set Context!14704))

(assert (=> setNonEmpty!53557 (= setRest!53551 (set.union (set.insert setElem!53557 (as set.empty (Set Context!14704))) setRest!53557))))

(declare-fun b!7226243 () Bool)

(declare-fun tp!2032199 () Bool)

(assert (=> b!7226243 (= e!4331713 tp!2032199)))

(assert (= (and setNonEmpty!53551 condSetEmpty!53557) setIsEmpty!53557))

(assert (= (and setNonEmpty!53551 (not condSetEmpty!53557)) setNonEmpty!53557))

(assert (= setNonEmpty!53557 b!7226243))

(declare-fun m!7895714 () Bool)

(assert (=> setNonEmpty!53557 m!7895714))

(declare-fun b!7226244 () Bool)

(declare-fun e!4331714 () Bool)

(declare-fun tp!2032201 () Bool)

(declare-fun tp!2032202 () Bool)

(assert (=> b!7226244 (= e!4331714 (and tp!2032201 tp!2032202))))

(assert (=> b!7226136 (= tp!2032172 e!4331714)))

(assert (= (and b!7226136 (is-Cons!69794 (exprs!7852 c!10544))) b!7226244))

(declare-fun b!7226249 () Bool)

(declare-fun e!4331717 () Bool)

(declare-fun tp!2032205 () Bool)

(assert (=> b!7226249 (= e!4331717 (and tp_is_empty!46357 tp!2032205))))

(assert (=> b!7226129 (= tp!2032169 e!4331717)))

(assert (= (and b!7226129 (is-Cons!69795 (t!383950 s!7961))) b!7226249))

(declare-fun b!7226250 () Bool)

(declare-fun e!4331718 () Bool)

(declare-fun tp!2032206 () Bool)

(declare-fun tp!2032207 () Bool)

(assert (=> b!7226250 (= e!4331718 (and tp!2032206 tp!2032207))))

(assert (=> b!7226124 (= tp!2032170 e!4331718)))

(assert (= (and b!7226124 (is-Cons!69794 (exprs!7852 empty!3075))) b!7226250))

(push 1)

(assert (not b!7226243))

(assert (not d!2244467))

(assert (not b!7226250))

(assert (not d!2244477))

(assert (not bm!657711))

(assert (not b!7226244))

(assert (not b!7226207))

(assert (not d!2244469))

(assert (not b!7226197))

(assert (not b!7226233))

(assert (not d!2244485))

(assert (not b!7226210))

(assert (not b!7226195))

(assert (not d!2244455))

(assert (not b!7226208))

(assert (not b!7226209))

(assert tp_is_empty!46357)

(assert (not b!7226249))

(assert (not d!2244475))

(assert (not b!7226238))

(assert (not d!2244489))

(assert (not setNonEmpty!53557))

(assert (not d!2244483))

(assert (not d!2244465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

