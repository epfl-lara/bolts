; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45216 () Bool)

(assert start!45216)

(declare-fun b_free!13193 () Bool)

(declare-fun b_next!13193 () Bool)

(assert (=> start!45216 (= b_free!13193 (not b_next!13193))))

(declare-fun tp!130839 () Bool)

(declare-fun b_and!50521 () Bool)

(assert (=> start!45216 (= tp!130839 b_and!50521)))

(declare-fun b_free!13195 () Bool)

(declare-fun b_next!13195 () Bool)

(assert (=> start!45216 (= b_free!13195 (not b_next!13195))))

(declare-fun tp!130837 () Bool)

(declare-fun b_and!50523 () Bool)

(assert (=> start!45216 (= tp!130837 b_and!50523)))

(declare-fun b!472236 () Bool)

(assert (=> b!472236 true))

(declare-fun order!4245 () Int)

(declare-fun lambda!14056 () Int)

(declare-fun order!4247 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2892 (Int Int) Int)

(declare-fun dynLambda!2893 (Int Int) Int)

(assert (=> b!472236 (< (dynLambda!2892 order!4245 f!1019) (dynLambda!2893 order!4247 lambda!14056))))

(assert (=> b!472236 true))

(declare-fun order!4249 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2894 (Int Int) Int)

(assert (=> b!472236 (< (dynLambda!2894 order!4249 p!1765) (dynLambda!2893 order!4247 lambda!14056))))

(declare-fun bs!58472 () Bool)

(declare-fun b!472231 () Bool)

(assert (= bs!58472 (and b!472231 b!472236)))

(declare-fun lambda!14057 () Int)

(assert (=> bs!58472 (not (= lambda!14057 lambda!14056))))

(assert (=> b!472231 true))

(assert (=> b!472231 true))

(assert (=> b!472231 (< (dynLambda!2892 order!4245 f!1019) (dynLambda!2893 order!4247 lambda!14057))))

(declare-fun inst!197 () Bool)

(declare-datatypes ((A!391 0))(
  ( (A!392 (val!1529 Int)) )
))
(declare-fun x!112334 () A!391)

(declare-fun b!472233 () Bool)

(declare-fun tp_is_empty!2161 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!953 0))(
  ( (B!954 (val!1530 Int)) )
))
(declare-fun forall!1332 ((InoxSet B!953) Int) Bool)

(declare-fun dynLambda!2895 (Int A!391) (InoxSet B!953))

(assert (=> b!472233 (= inst!197 (=> tp_is_empty!2161 (forall!1332 (dynLambda!2895 f!1019 x!112334) p!1765)))))

(declare-fun b_lambda!19745 () Bool)

(assert (=> (not b_lambda!19745) (not b!472233)))

(declare-fun t!73012 () Bool)

(declare-fun tb!47045 () Bool)

(assert (=> (and start!45216 (= f!1019 f!1019) t!73012) tb!47045))

(assert (=> b!472233 t!73012))

(declare-fun result!51832 () Bool)

(declare-fun b_and!50525 () Bool)

(assert (= b_and!50521 (and (=> t!73012 result!51832) b_and!50525)))

(declare-fun m!745581 () Bool)

(assert (=> b!472233 m!745581))

(assert (=> b!472233 m!745581))

(declare-fun m!745583 () Bool)

(assert (=> b!472233 m!745583))

(declare-fun bs!58473 () Bool)

(declare-fun neg-inst!197 () Bool)

(declare-fun s!18163 () Bool)

(assert (= bs!58473 (and neg-inst!197 s!18163)))

(assert (=> bs!58473 (=> true (forall!1332 (dynLambda!2895 f!1019 x!112334) p!1765))))

(declare-fun b_lambda!19747 () Bool)

(assert (=> (not b_lambda!19747) (not bs!58473)))

(assert (=> bs!58473 t!73012))

(declare-fun b_and!50527 () Bool)

(assert (= b_and!50525 (and (=> t!73012 result!51832) b_and!50527)))

(assert (=> m!745581 m!745583))

(assert (=> m!745581 s!18163))

(declare-fun bs!58474 () Bool)

(assert (= bs!58474 (and neg-inst!197 b!472233)))

(assert (=> bs!58474 (= true inst!197)))

(declare-fun e!288841 () Bool)

(declare-fun e!288838 () Bool)

(assert (=> b!472231 (= e!288841 (not e!288838))))

(declare-fun res!209522 () Bool)

(assert (=> b!472231 (=> res!209522 e!288838)))

(declare-fun s!1493 () (InoxSet A!391))

(declare-fun exists!59 ((InoxSet A!391) Int) Bool)

(assert (=> b!472231 (= res!209522 (not (exists!59 s!1493 lambda!14057)))))

(declare-fun empty!2627 () A!391)

(declare-fun elm!3 () B!953)

(declare-fun flatMapPost!24 ((InoxSet A!391) Int B!953) A!391)

(assert (=> b!472231 (= (flatMapPost!24 s!1493 f!1019 elm!3) empty!2627)))

(assert (=> b!472231 true))

(assert (=> b!472231 tp_is_empty!2161))

(declare-fun setIsEmpty!1988 () Bool)

(declare-fun setRes!1988 () Bool)

(assert (=> setIsEmpty!1988 setRes!1988))

(declare-fun setNonEmpty!1988 () Bool)

(declare-fun tp!130838 () Bool)

(assert (=> setNonEmpty!1988 (= setRes!1988 (and tp!130838 tp_is_empty!2161))))

(declare-fun setElem!1988 () A!391)

(declare-fun setRest!1988 () (InoxSet A!391))

(assert (=> setNonEmpty!1988 (= s!1493 ((_ map or) (store ((as const (Array A!391 Bool)) false) setElem!1988 true) setRest!1988))))

(declare-fun b!472232 () Bool)

(declare-fun e!288840 () Bool)

(declare-fun e!288839 () Bool)

(assert (=> b!472232 (= e!288840 e!288839)))

(declare-fun res!209521 () Bool)

(assert (=> b!472232 (=> res!209521 e!288839)))

(declare-fun lt!210280 () (InoxSet B!953))

(assert (=> b!472232 (= res!209521 (not (select lt!210280 elm!3)))))

(declare-datatypes ((List!4565 0))(
  ( (Nil!4555) (Cons!4555 (h!9952 A!391) (t!73015 List!4565)) )
))
(declare-fun lt!210281 () List!4565)

(declare-fun getWitness!32 (List!4565 Int) A!391)

(assert (=> b!472232 (= lt!210280 (dynLambda!2895 f!1019 (getWitness!32 lt!210281 lambda!14057)))))

(declare-fun e!288842 () Bool)

(assert (=> b!472233 (= e!288839 e!288842)))

(declare-fun res!209523 () Bool)

(assert (=> b!472233 (=> res!209523 e!288842)))

(assert (=> b!472233 (= res!209523 (not (forall!1332 lt!210280 p!1765)))))

(declare-fun Forall!250 (Int) Bool)

(assert (=> b!472233 (= (Forall!250 lambda!14056) inst!197)))

(declare-fun b!472234 () Bool)

(declare-fun res!209520 () Bool)

(assert (=> b!472234 (=> res!209520 e!288839)))

(declare-datatypes ((List!4566 0))(
  ( (Nil!4556) (Cons!4556 (h!9953 B!953) (t!73016 List!4566)) )
))
(declare-fun contains!1028 (List!4566 B!953) Bool)

(declare-fun toList!336 ((InoxSet B!953)) List!4566)

(assert (=> b!472234 (= res!209520 (not (contains!1028 (toList!336 lt!210280) elm!3)))))

(declare-fun b!472235 () Bool)

(assert (=> b!472235 (= e!288842 true)))

(declare-fun b!472237 () Bool)

(assert (=> b!472237 (= e!288838 e!288840)))

(declare-fun res!209525 () Bool)

(assert (=> b!472237 (=> res!209525 e!288840)))

(declare-fun exists!60 (List!4565 Int) Bool)

(assert (=> b!472237 (= res!209525 (not (exists!60 lt!210281 lambda!14057)))))

(declare-fun toList!337 ((InoxSet A!391)) List!4565)

(assert (=> b!472237 (= lt!210281 (toList!337 s!1493))))

(declare-fun res!209526 () Bool)

(assert (=> start!45216 (=> (not res!209526) (not e!288841))))

(declare-fun flatMap!100 ((InoxSet A!391) Int) (InoxSet B!953))

(assert (=> start!45216 (= res!209526 (select (flatMap!100 s!1493 f!1019) elm!3))))

(assert (=> start!45216 e!288841))

(declare-fun tp_is_empty!2163 () Bool)

(assert (=> start!45216 tp_is_empty!2163))

(declare-fun condSetEmpty!1988 () Bool)

(assert (=> start!45216 (= condSetEmpty!1988 (= s!1493 ((as const (Array A!391 Bool)) false)))))

(assert (=> start!45216 setRes!1988))

(assert (=> start!45216 tp!130839))

(assert (=> start!45216 tp!130837))

(declare-fun res!209524 () Bool)

(assert (=> b!472236 (=> (not res!209524) (not e!288841))))

(assert (=> b!472236 (= res!209524 (Forall!250 lambda!14056))))

(assert (= (and start!45216 res!209526) b!472236))

(assert (= (and b!472236 res!209524) b!472231))

(assert (= (and b!472231 (not res!209522)) b!472237))

(assert (= (and b!472237 (not res!209525)) b!472232))

(assert (= (and b!472232 (not res!209521)) b!472234))

(assert (= (and b!472234 (not res!209520)) b!472233))

(assert (= neg-inst!197 inst!197))

(assert (= (and b!472233 (not res!209523)) b!472235))

(assert (= (and start!45216 condSetEmpty!1988) setIsEmpty!1988))

(assert (= (and start!45216 (not condSetEmpty!1988)) setNonEmpty!1988))

(declare-fun b_lambda!19749 () Bool)

(assert (=> (not b_lambda!19749) (not b!472232)))

(declare-fun t!73014 () Bool)

(declare-fun tb!47047 () Bool)

(assert (=> (and start!45216 (= f!1019 f!1019) t!73014) tb!47047))

(assert (=> b!472232 t!73014))

(declare-fun result!51834 () Bool)

(declare-fun b_and!50529 () Bool)

(assert (= b_and!50527 (and (=> t!73014 result!51834) b_and!50529)))

(declare-fun m!745585 () Bool)

(assert (=> start!45216 m!745585))

(declare-fun m!745587 () Bool)

(assert (=> start!45216 m!745587))

(declare-fun m!745589 () Bool)

(assert (=> b!472232 m!745589))

(declare-fun m!745591 () Bool)

(assert (=> b!472232 m!745591))

(assert (=> b!472232 m!745591))

(declare-fun m!745593 () Bool)

(assert (=> b!472232 m!745593))

(declare-fun m!745595 () Bool)

(assert (=> b!472234 m!745595))

(assert (=> b!472234 m!745595))

(declare-fun m!745597 () Bool)

(assert (=> b!472234 m!745597))

(declare-fun m!745599 () Bool)

(assert (=> b!472236 m!745599))

(declare-fun m!745601 () Bool)

(assert (=> b!472233 m!745601))

(assert (=> b!472233 m!745599))

(declare-fun m!745603 () Bool)

(assert (=> b!472231 m!745603))

(declare-fun m!745605 () Bool)

(assert (=> b!472231 m!745605))

(declare-fun m!745607 () Bool)

(assert (=> b!472237 m!745607))

(declare-fun m!745609 () Bool)

(assert (=> b!472237 m!745609))

(check-sat (not b_next!13195) (not tb!47047) (not b!472232) (not b!472236) (not tb!47045) (not b_next!13193) (not b!472231) b_and!50529 (not start!45216) b_and!50523 (not b!472237) (not setNonEmpty!1988) (not b_lambda!19749) (not b!472233) tp_is_empty!2161 tp_is_empty!2163 (not b!472234) (not bs!58473) (not b_lambda!19745) (not b_lambda!19747))
(check-sat b_and!50529 b_and!50523 (not b_next!13193) (not b_next!13195))
