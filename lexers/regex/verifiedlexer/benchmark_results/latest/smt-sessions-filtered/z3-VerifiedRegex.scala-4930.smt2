; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251564 () Bool)

(assert start!251564)

(declare-fun b!2594472 () Bool)

(assert (=> b!2594472 true))

(declare-fun b!2594481 () Bool)

(declare-fun m!2930483 () Bool)

(assert (=> b!2594481 m!2930483))

(declare-fun bs!472610 () Bool)

(assert (= bs!472610 (and b!2594481 b!2594472)))

(declare-datatypes ((B!2141 0))(
  ( (B!2142 (val!9538 Int)) )
))
(declare-datatypes ((List!29971 0))(
  ( (Nil!29871) (Cons!29871 (h!35291 B!2141) (t!212984 List!29971)) )
))
(declare-fun l1!1546 () List!29971)

(declare-fun lambda!96537 () Int)

(declare-fun lambda!96536 () Int)

(declare-fun tail!4139 (List!29971) List!29971)

(assert (=> bs!472610 (= (= (tail!4139 l1!1546) l1!1546) (= lambda!96537 lambda!96536))))

(assert (=> b!2594481 true))

(declare-fun lambda!96538 () Int)

(assert (=> bs!472610 (= (= (t!212984 l1!1546) l1!1546) (= lambda!96538 lambda!96536))))

(assert (=> b!2594481 (= (= (t!212984 l1!1546) (tail!4139 l1!1546)) (= lambda!96538 lambda!96537))))

(assert (=> b!2594481 true))

(declare-fun b!2594469 () Bool)

(declare-fun e!1636929 () Bool)

(declare-fun e!1636926 () Bool)

(assert (=> b!2594469 (= e!1636929 e!1636926)))

(declare-fun res!1091594 () Bool)

(assert (=> b!2594469 (=> (not res!1091594) (not e!1636926))))

(declare-fun lt!913407 () Int)

(declare-fun lt!913405 () Int)

(assert (=> b!2594469 (= res!1091594 (> lt!913407 lt!913405))))

(declare-fun l2!1515 () List!29971)

(declare-fun size!23176 (List!29971) Int)

(assert (=> b!2594469 (= lt!913405 (size!23176 l2!1515))))

(assert (=> b!2594469 (= lt!913407 (size!23176 l1!1546))))

(declare-fun b!2594470 () Bool)

(declare-fun e!1636931 () Bool)

(declare-fun tp_is_empty!13421 () Bool)

(declare-fun tp!822999 () Bool)

(assert (=> b!2594470 (= e!1636931 (and tp_is_empty!13421 tp!822999))))

(declare-fun b!2594471 () Bool)

(declare-fun e!1636930 () Bool)

(declare-fun lt!913402 () List!29971)

(declare-fun forall!6108 (List!29971 Int) Bool)

(assert (=> b!2594471 (= e!1636930 (forall!6108 lt!913402 lambda!96538))))

(declare-fun res!1091590 () Bool)

(assert (=> b!2594472 (=> (not res!1091590) (not e!1636926))))

(assert (=> b!2594472 (= res!1091590 (forall!6108 l2!1515 lambda!96536))))

(declare-fun res!1091593 () Bool)

(assert (=> start!251564 (=> (not res!1091593) (not e!1636929))))

(declare-fun noDuplicate!419 (List!29971) Bool)

(assert (=> start!251564 (= res!1091593 (noDuplicate!419 l1!1546))))

(assert (=> start!251564 e!1636929))

(declare-fun e!1636928 () Bool)

(assert (=> start!251564 e!1636928))

(assert (=> start!251564 e!1636931))

(declare-fun b!2594473 () Bool)

(declare-fun res!1091588 () Bool)

(assert (=> b!2594473 (=> (not res!1091588) (not e!1636926))))

(get-info :version)

(assert (=> b!2594473 (= res!1091588 ((_ is Cons!29871) l1!1546))))

(declare-fun b!2594474 () Bool)

(declare-fun res!1091591 () Bool)

(assert (=> b!2594474 (=> (not res!1091591) (not e!1636929))))

(assert (=> b!2594474 (= res!1091591 (noDuplicate!419 l2!1515))))

(declare-fun b!2594475 () Bool)

(declare-fun res!1091592 () Bool)

(assert (=> b!2594475 (=> res!1091592 e!1636930)))

(assert (=> b!2594475 (= res!1091592 (not (noDuplicate!419 (t!212984 l1!1546))))))

(declare-fun b!2594476 () Bool)

(declare-fun res!1091589 () Bool)

(assert (=> b!2594476 (=> res!1091589 e!1636930)))

(assert (=> b!2594476 (= res!1091589 (not (forall!6108 lt!913402 lambda!96538)))))

(declare-fun b!2594477 () Bool)

(declare-fun res!1091587 () Bool)

(assert (=> b!2594477 (=> (not res!1091587) (not e!1636926))))

(declare-fun contains!5419 (List!29971 B!2141) Bool)

(assert (=> b!2594477 (= res!1091587 (contains!5419 l2!1515 (h!35291 l1!1546)))))

(declare-fun b!2594478 () Bool)

(declare-fun tp!823000 () Bool)

(assert (=> b!2594478 (= e!1636928 (and tp_is_empty!13421 tp!823000))))

(declare-fun b!2594479 () Bool)

(declare-fun e!1636927 () Bool)

(assert (=> b!2594479 (= e!1636926 (not e!1636927))))

(declare-fun res!1091596 () Bool)

(assert (=> b!2594479 (=> res!1091596 e!1636927)))

(assert (=> b!2594479 (= res!1091596 (not (forall!6108 lt!913402 lambda!96536)))))

(declare-fun lt!913409 () Int)

(assert (=> b!2594479 (= lt!913409 (- lt!913405 1))))

(assert (=> b!2594479 (= lt!913409 (size!23176 lt!913402))))

(declare-datatypes ((Unit!43896 0))(
  ( (Unit!43897) )
))
(declare-fun lt!913406 () Unit!43896)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!10 (List!29971 B!2141) Unit!43896)

(assert (=> b!2594479 (= lt!913406 (lemmaRemoveElmtNoDuplicateRemoveOne!10 l2!1515 (h!35291 l1!1546)))))

(assert (=> b!2594479 (forall!6108 lt!913402 lambda!96536)))

(declare-fun lt!913408 () Unit!43896)

(declare-fun lemmaRemoveElmtMaintainsForall!12 (List!29971 B!2141 Int) Unit!43896)

(assert (=> b!2594479 (= lt!913408 (lemmaRemoveElmtMaintainsForall!12 l2!1515 (h!35291 l1!1546) lambda!96536))))

(assert (=> b!2594479 (noDuplicate!419 lt!913402)))

(declare-fun -!148 (List!29971 B!2141) List!29971)

(assert (=> b!2594479 (= lt!913402 (-!148 l2!1515 (h!35291 l1!1546)))))

(declare-fun lt!913404 () Unit!43896)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!14 (List!29971 B!2141) Unit!43896)

(assert (=> b!2594479 (= lt!913404 (lemmaRemoveElmtMaintainsNoDuplicate!14 l2!1515 (h!35291 l1!1546)))))

(declare-fun b!2594480 () Bool)

(declare-fun res!1091597 () Bool)

(assert (=> b!2594480 (=> res!1091597 e!1636930)))

(assert (=> b!2594480 (= res!1091597 (<= (size!23176 (t!212984 l1!1546)) lt!913409))))

(assert (=> b!2594481 (= e!1636927 e!1636930)))

(declare-fun res!1091595 () Bool)

(assert (=> b!2594481 (=> res!1091595 e!1636930)))

(assert (=> b!2594481 (= res!1091595 (not (forall!6108 lt!913402 lambda!96538)))))

(assert (=> b!2594481 (forall!6108 lt!913402 lambda!96537)))

(declare-fun lt!913403 () Unit!43896)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!4 (List!29971 List!29971 B!2141) Unit!43896)

(assert (=> b!2594481 (= lt!913403 (lemmaForallContainsThenForTailIfContainsNotHead!4 lt!913402 l1!1546 (h!35291 l1!1546)))))

(assert (= (and start!251564 res!1091593) b!2594474))

(assert (= (and b!2594474 res!1091591) b!2594469))

(assert (= (and b!2594469 res!1091594) b!2594472))

(assert (= (and b!2594472 res!1091590) b!2594473))

(assert (= (and b!2594473 res!1091588) b!2594477))

(assert (= (and b!2594477 res!1091587) b!2594479))

(assert (= (and b!2594479 (not res!1091596)) b!2594481))

(assert (= (and b!2594481 (not res!1091595)) b!2594475))

(assert (= (and b!2594475 (not res!1091592)) b!2594480))

(assert (= (and b!2594480 (not res!1091597)) b!2594476))

(assert (= (and b!2594476 (not res!1091589)) b!2594471))

(assert (= (and start!251564 ((_ is Cons!29871) l1!1546)) b!2594478))

(assert (= (and start!251564 ((_ is Cons!29871) l2!1515)) b!2594470))

(declare-fun m!2930485 () Bool)

(assert (=> b!2594472 m!2930485))

(declare-fun m!2930487 () Bool)

(assert (=> b!2594476 m!2930487))

(assert (=> b!2594471 m!2930487))

(declare-fun m!2930489 () Bool)

(assert (=> b!2594469 m!2930489))

(declare-fun m!2930491 () Bool)

(assert (=> b!2594469 m!2930491))

(declare-fun m!2930493 () Bool)

(assert (=> b!2594477 m!2930493))

(declare-fun m!2930495 () Bool)

(assert (=> b!2594479 m!2930495))

(declare-fun m!2930497 () Bool)

(assert (=> b!2594479 m!2930497))

(declare-fun m!2930499 () Bool)

(assert (=> b!2594479 m!2930499))

(declare-fun m!2930501 () Bool)

(assert (=> b!2594479 m!2930501))

(declare-fun m!2930503 () Bool)

(assert (=> b!2594479 m!2930503))

(assert (=> b!2594479 m!2930499))

(declare-fun m!2930505 () Bool)

(assert (=> b!2594479 m!2930505))

(declare-fun m!2930507 () Bool)

(assert (=> b!2594479 m!2930507))

(declare-fun m!2930509 () Bool)

(assert (=> b!2594474 m!2930509))

(assert (=> b!2594481 m!2930487))

(declare-fun m!2930511 () Bool)

(assert (=> b!2594481 m!2930511))

(declare-fun m!2930513 () Bool)

(assert (=> b!2594481 m!2930513))

(declare-fun m!2930515 () Bool)

(assert (=> start!251564 m!2930515))

(declare-fun m!2930517 () Bool)

(assert (=> b!2594475 m!2930517))

(declare-fun m!2930519 () Bool)

(assert (=> b!2594480 m!2930519))

(check-sat (not b!2594471) tp_is_empty!13421 (not b!2594480) (not b!2594478) (not b!2594477) (not b!2594469) (not b!2594481) (not b!2594479) (not b!2594474) (not b!2594470) (not b!2594472) (not b!2594475) (not b!2594476) (not start!251564))
(check-sat)
