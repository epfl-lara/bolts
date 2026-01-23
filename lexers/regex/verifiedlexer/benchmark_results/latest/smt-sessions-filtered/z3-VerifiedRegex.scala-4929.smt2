; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251560 () Bool)

(assert start!251560)

(declare-fun b!2594388 () Bool)

(assert (=> b!2594388 true))

(declare-fun b!2594389 () Bool)

(declare-fun m!2930407 () Bool)

(assert (=> b!2594389 m!2930407))

(declare-fun bs!472606 () Bool)

(assert (= bs!472606 (and b!2594389 b!2594388)))

(declare-datatypes ((B!2137 0))(
  ( (B!2138 (val!9536 Int)) )
))
(declare-datatypes ((List!29969 0))(
  ( (Nil!29869) (Cons!29869 (h!35289 B!2137) (t!212982 List!29969)) )
))
(declare-fun l1!1546 () List!29969)

(declare-fun lambda!96503 () Int)

(declare-fun lambda!96502 () Int)

(declare-fun tail!4137 (List!29969) List!29969)

(assert (=> bs!472606 (= (= (tail!4137 l1!1546) l1!1546) (= lambda!96503 lambda!96502))))

(assert (=> b!2594389 true))

(declare-fun lambda!96504 () Int)

(assert (=> bs!472606 (= (= (t!212982 l1!1546) l1!1546) (= lambda!96504 lambda!96502))))

(assert (=> b!2594389 (= (= (t!212982 l1!1546) (tail!4137 l1!1546)) (= lambda!96504 lambda!96503))))

(assert (=> b!2594389 true))

(declare-fun res!1091525 () Bool)

(declare-fun e!1636864 () Bool)

(assert (=> b!2594388 (=> (not res!1091525) (not e!1636864))))

(declare-fun l2!1515 () List!29969)

(declare-fun forall!6106 (List!29969 Int) Bool)

(assert (=> b!2594388 (= res!1091525 (forall!6106 l2!1515 lambda!96502))))

(declare-fun e!1636867 () Bool)

(declare-fun e!1636866 () Bool)

(assert (=> b!2594389 (= e!1636867 e!1636866)))

(declare-fun res!1091527 () Bool)

(assert (=> b!2594389 (=> res!1091527 e!1636866)))

(declare-fun lt!913359 () List!29969)

(assert (=> b!2594389 (= res!1091527 (not (forall!6106 lt!913359 lambda!96504)))))

(assert (=> b!2594389 (forall!6106 lt!913359 lambda!96503)))

(declare-datatypes ((Unit!43892 0))(
  ( (Unit!43893) )
))
(declare-fun lt!913361 () Unit!43892)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!2 (List!29969 List!29969 B!2137) Unit!43892)

(assert (=> b!2594389 (= lt!913361 (lemmaForallContainsThenForTailIfContainsNotHead!2 lt!913359 l1!1546 (h!35289 l1!1546)))))

(declare-fun b!2594390 () Bool)

(declare-fun res!1091529 () Bool)

(declare-fun e!1636865 () Bool)

(assert (=> b!2594390 (=> (not res!1091529) (not e!1636865))))

(declare-fun noDuplicate!417 (List!29969) Bool)

(assert (=> b!2594390 (= res!1091529 (noDuplicate!417 l2!1515))))

(declare-fun b!2594391 () Bool)

(assert (=> b!2594391 (= e!1636864 (not e!1636867))))

(declare-fun res!1091526 () Bool)

(assert (=> b!2594391 (=> res!1091526 e!1636867)))

(assert (=> b!2594391 (= res!1091526 (not (forall!6106 lt!913359 lambda!96502)))))

(declare-fun lt!913355 () Int)

(declare-fun lt!913360 () Int)

(assert (=> b!2594391 (= lt!913355 (- lt!913360 1))))

(declare-fun size!23174 (List!29969) Int)

(assert (=> b!2594391 (= lt!913355 (size!23174 lt!913359))))

(declare-fun lt!913357 () Unit!43892)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!8 (List!29969 B!2137) Unit!43892)

(assert (=> b!2594391 (= lt!913357 (lemmaRemoveElmtNoDuplicateRemoveOne!8 l2!1515 (h!35289 l1!1546)))))

(assert (=> b!2594391 (forall!6106 lt!913359 lambda!96502)))

(declare-fun lt!913356 () Unit!43892)

(declare-fun lemmaRemoveElmtMaintainsForall!10 (List!29969 B!2137 Int) Unit!43892)

(assert (=> b!2594391 (= lt!913356 (lemmaRemoveElmtMaintainsForall!10 l2!1515 (h!35289 l1!1546) lambda!96502))))

(assert (=> b!2594391 (noDuplicate!417 lt!913359)))

(declare-fun -!146 (List!29969 B!2137) List!29969)

(assert (=> b!2594391 (= lt!913359 (-!146 l2!1515 (h!35289 l1!1546)))))

(declare-fun lt!913358 () Unit!43892)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!12 (List!29969 B!2137) Unit!43892)

(assert (=> b!2594391 (= lt!913358 (lemmaRemoveElmtMaintainsNoDuplicate!12 l2!1515 (h!35289 l1!1546)))))

(declare-fun b!2594392 () Bool)

(assert (=> b!2594392 (= e!1636865 e!1636864)))

(declare-fun res!1091524 () Bool)

(assert (=> b!2594392 (=> (not res!1091524) (not e!1636864))))

(declare-fun lt!913354 () Int)

(assert (=> b!2594392 (= res!1091524 (> lt!913354 lt!913360))))

(assert (=> b!2594392 (= lt!913360 (size!23174 l2!1515))))

(assert (=> b!2594392 (= lt!913354 (size!23174 l1!1546))))

(declare-fun b!2594393 () Bool)

(declare-fun res!1091531 () Bool)

(assert (=> b!2594393 (=> res!1091531 e!1636866)))

(assert (=> b!2594393 (= res!1091531 (<= (size!23174 (t!212982 l1!1546)) lt!913355))))

(declare-fun res!1091530 () Bool)

(assert (=> start!251560 (=> (not res!1091530) (not e!1636865))))

(assert (=> start!251560 (= res!1091530 (noDuplicate!417 l1!1546))))

(assert (=> start!251560 e!1636865))

(declare-fun e!1636863 () Bool)

(assert (=> start!251560 e!1636863))

(declare-fun e!1636862 () Bool)

(assert (=> start!251560 e!1636862))

(declare-fun b!2594394 () Bool)

(declare-fun res!1091523 () Bool)

(assert (=> b!2594394 (=> res!1091523 e!1636866)))

(assert (=> b!2594394 (= res!1091523 (not (noDuplicate!417 (t!212982 l1!1546))))))

(declare-fun b!2594395 () Bool)

(assert (=> b!2594395 (= e!1636866 true)))

(declare-fun b!2594396 () Bool)

(declare-fun tp_is_empty!13417 () Bool)

(declare-fun tp!822988 () Bool)

(assert (=> b!2594396 (= e!1636863 (and tp_is_empty!13417 tp!822988))))

(declare-fun b!2594397 () Bool)

(declare-fun tp!822987 () Bool)

(assert (=> b!2594397 (= e!1636862 (and tp_is_empty!13417 tp!822987))))

(declare-fun b!2594398 () Bool)

(declare-fun res!1091528 () Bool)

(assert (=> b!2594398 (=> (not res!1091528) (not e!1636864))))

(get-info :version)

(assert (=> b!2594398 (= res!1091528 ((_ is Cons!29869) l1!1546))))

(declare-fun b!2594399 () Bool)

(declare-fun res!1091522 () Bool)

(assert (=> b!2594399 (=> (not res!1091522) (not e!1636864))))

(declare-fun contains!5417 (List!29969 B!2137) Bool)

(assert (=> b!2594399 (= res!1091522 (contains!5417 l2!1515 (h!35289 l1!1546)))))

(assert (= (and start!251560 res!1091530) b!2594390))

(assert (= (and b!2594390 res!1091529) b!2594392))

(assert (= (and b!2594392 res!1091524) b!2594388))

(assert (= (and b!2594388 res!1091525) b!2594398))

(assert (= (and b!2594398 res!1091528) b!2594399))

(assert (= (and b!2594399 res!1091522) b!2594391))

(assert (= (and b!2594391 (not res!1091526)) b!2594389))

(assert (= (and b!2594389 (not res!1091527)) b!2594394))

(assert (= (and b!2594394 (not res!1091523)) b!2594393))

(assert (= (and b!2594393 (not res!1091531)) b!2594395))

(assert (= (and start!251560 ((_ is Cons!29869) l1!1546)) b!2594396))

(assert (= (and start!251560 ((_ is Cons!29869) l2!1515)) b!2594397))

(declare-fun m!2930409 () Bool)

(assert (=> b!2594390 m!2930409))

(declare-fun m!2930411 () Bool)

(assert (=> b!2594394 m!2930411))

(declare-fun m!2930413 () Bool)

(assert (=> b!2594389 m!2930413))

(declare-fun m!2930415 () Bool)

(assert (=> b!2594389 m!2930415))

(declare-fun m!2930417 () Bool)

(assert (=> b!2594389 m!2930417))

(declare-fun m!2930419 () Bool)

(assert (=> b!2594388 m!2930419))

(declare-fun m!2930421 () Bool)

(assert (=> b!2594391 m!2930421))

(declare-fun m!2930423 () Bool)

(assert (=> b!2594391 m!2930423))

(declare-fun m!2930425 () Bool)

(assert (=> b!2594391 m!2930425))

(declare-fun m!2930427 () Bool)

(assert (=> b!2594391 m!2930427))

(declare-fun m!2930429 () Bool)

(assert (=> b!2594391 m!2930429))

(declare-fun m!2930431 () Bool)

(assert (=> b!2594391 m!2930431))

(declare-fun m!2930433 () Bool)

(assert (=> b!2594391 m!2930433))

(assert (=> b!2594391 m!2930431))

(declare-fun m!2930435 () Bool)

(assert (=> b!2594392 m!2930435))

(declare-fun m!2930437 () Bool)

(assert (=> b!2594392 m!2930437))

(declare-fun m!2930439 () Bool)

(assert (=> b!2594393 m!2930439))

(declare-fun m!2930441 () Bool)

(assert (=> start!251560 m!2930441))

(declare-fun m!2930443 () Bool)

(assert (=> b!2594399 m!2930443))

(check-sat (not b!2594389) (not b!2594392) (not b!2594388) (not b!2594397) (not b!2594399) (not start!251560) (not b!2594390) (not b!2594391) tp_is_empty!13417 (not b!2594394) (not b!2594393) (not b!2594396))
(check-sat)
