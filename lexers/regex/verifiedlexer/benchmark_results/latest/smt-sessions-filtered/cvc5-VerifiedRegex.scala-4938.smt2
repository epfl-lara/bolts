; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251738 () Bool)

(assert start!251738)

(declare-fun b!2595436 () Bool)

(assert (=> b!2595436 true))

(declare-fun b!2595429 () Bool)

(declare-fun m!2931597 () Bool)

(assert (=> b!2595429 m!2931597))

(declare-fun bs!472775 () Bool)

(assert (= bs!472775 (and b!2595429 b!2595436)))

(declare-datatypes ((B!2171 0))(
  ( (B!2172 (val!9553 Int)) )
))
(declare-datatypes ((List!29986 0))(
  ( (Nil!29886) (Cons!29886 (h!35306 B!2171) (t!212999 List!29986)) )
))
(declare-fun l1!1546 () List!29986)

(declare-fun lambda!96834 () Int)

(declare-fun lambda!96833 () Int)

(declare-fun tail!4152 (List!29986) List!29986)

(assert (=> bs!472775 (= (= (tail!4152 l1!1546) l1!1546) (= lambda!96834 lambda!96833))))

(assert (=> b!2595429 true))

(declare-fun lambda!96835 () Int)

(assert (=> bs!472775 (= (= (t!212999 l1!1546) l1!1546) (= lambda!96835 lambda!96833))))

(assert (=> b!2595429 (= (= (t!212999 l1!1546) (tail!4152 l1!1546)) (= lambda!96835 lambda!96834))))

(assert (=> b!2595429 true))

(declare-fun bs!472776 () Bool)

(declare-fun b!2595428 () Bool)

(assert (= bs!472776 (and b!2595428 b!2595436)))

(declare-fun lambda!96836 () Int)

(assert (=> bs!472776 (not (= lambda!96836 lambda!96833))))

(declare-fun bs!472777 () Bool)

(assert (= bs!472777 (and b!2595428 b!2595429)))

(assert (=> bs!472777 (not (= lambda!96836 lambda!96834))))

(assert (=> bs!472777 (not (= lambda!96836 lambda!96835))))

(assert (=> b!2595428 true))

(declare-fun b!2595424 () Bool)

(declare-fun e!1637804 () Bool)

(declare-fun l2!1515 () List!29986)

(declare-fun lt!913946 () B!2171)

(declare-fun contains!5434 (List!29986 B!2171) Bool)

(assert (=> b!2595424 (= e!1637804 (not (contains!5434 l2!1515 lt!913946)))))

(declare-fun b!2595425 () Bool)

(declare-fun e!1637799 () Bool)

(declare-fun e!1637798 () Bool)

(assert (=> b!2595425 (= e!1637799 (not e!1637798))))

(declare-fun res!1092204 () Bool)

(assert (=> b!2595425 (=> res!1092204 e!1637798)))

(declare-fun lt!913950 () List!29986)

(declare-fun forall!6123 (List!29986 Int) Bool)

(assert (=> b!2595425 (= res!1092204 (not (forall!6123 lt!913950 lambda!96833)))))

(declare-fun lt!913943 () Int)

(declare-fun size!23191 (List!29986) Int)

(assert (=> b!2595425 (= (size!23191 lt!913950) (- lt!913943 1))))

(declare-datatypes ((Unit!43930 0))(
  ( (Unit!43931) )
))
(declare-fun lt!913944 () Unit!43930)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!25 (List!29986 B!2171) Unit!43930)

(assert (=> b!2595425 (= lt!913944 (lemmaRemoveElmtNoDuplicateRemoveOne!25 l2!1515 (h!35306 l1!1546)))))

(assert (=> b!2595425 (forall!6123 lt!913950 lambda!96833)))

(declare-fun lt!913949 () Unit!43930)

(declare-fun lemmaRemoveElmtMaintainsForall!27 (List!29986 B!2171 Int) Unit!43930)

(assert (=> b!2595425 (= lt!913949 (lemmaRemoveElmtMaintainsForall!27 l2!1515 (h!35306 l1!1546) lambda!96833))))

(declare-fun noDuplicate!434 (List!29986) Bool)

(assert (=> b!2595425 (noDuplicate!434 lt!913950)))

(declare-fun -!163 (List!29986 B!2171) List!29986)

(assert (=> b!2595425 (= lt!913950 (-!163 l2!1515 (h!35306 l1!1546)))))

(declare-fun lt!913945 () Unit!43930)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!29 (List!29986 B!2171) Unit!43930)

(assert (=> b!2595425 (= lt!913945 (lemmaRemoveElmtMaintainsNoDuplicate!29 l2!1515 (h!35306 l1!1546)))))

(declare-fun b!2595426 () Bool)

(declare-fun e!1637800 () Bool)

(declare-fun tp_is_empty!13451 () Bool)

(declare-fun tp!823113 () Bool)

(assert (=> b!2595426 (= e!1637800 (and tp_is_empty!13451 tp!823113))))

(declare-fun res!1092207 () Bool)

(declare-fun e!1637803 () Bool)

(assert (=> start!251738 (=> (not res!1092207) (not e!1637803))))

(assert (=> start!251738 (= res!1092207 (noDuplicate!434 l1!1546))))

(assert (=> start!251738 e!1637803))

(assert (=> start!251738 e!1637800))

(declare-fun e!1637801 () Bool)

(assert (=> start!251738 e!1637801))

(declare-fun b!2595427 () Bool)

(assert (=> b!2595427 (= e!1637803 e!1637799)))

(declare-fun res!1092200 () Bool)

(assert (=> b!2595427 (=> (not res!1092200) (not e!1637799))))

(declare-fun lt!913948 () Int)

(assert (=> b!2595427 (= res!1092200 (> lt!913948 lt!913943))))

(assert (=> b!2595427 (= lt!913943 (size!23191 l2!1515))))

(assert (=> b!2595427 (= lt!913948 (size!23191 l1!1546))))

(declare-fun e!1637805 () Bool)

(declare-fun e!1637802 () Bool)

(assert (=> b!2595428 (= e!1637805 e!1637802)))

(declare-fun res!1092206 () Bool)

(assert (=> b!2595428 (=> res!1092206 e!1637802)))

(declare-fun exists!935 (List!29986 Int) Bool)

(assert (=> b!2595428 (= res!1092206 (not (exists!935 (t!212999 l1!1546) lambda!96836)))))

(assert (=> b!2595428 (exists!935 (t!212999 l1!1546) lambda!96836)))

(declare-fun lt!913947 () Unit!43930)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!51 (List!29986 List!29986) Unit!43930)

(assert (=> b!2595428 (= lt!913947 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!51 (t!212999 l1!1546) lt!913950))))

(assert (=> b!2595429 (= e!1637798 e!1637805)))

(declare-fun res!1092203 () Bool)

(assert (=> b!2595429 (=> res!1092203 e!1637805)))

(assert (=> b!2595429 (= res!1092203 (not (forall!6123 lt!913950 lambda!96835)))))

(assert (=> b!2595429 (forall!6123 lt!913950 lambda!96834)))

(declare-fun lt!913942 () Unit!43930)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!17 (List!29986 List!29986 B!2171) Unit!43930)

(assert (=> b!2595429 (= lt!913942 (lemmaForallContainsThenForTailIfContainsNotHead!17 lt!913950 l1!1546 (h!35306 l1!1546)))))

(declare-fun b!2595430 () Bool)

(declare-fun res!1092205 () Bool)

(assert (=> b!2595430 (=> (not res!1092205) (not e!1637799))))

(assert (=> b!2595430 (= res!1092205 (contains!5434 l2!1515 (h!35306 l1!1546)))))

(declare-fun b!2595431 () Bool)

(declare-fun res!1092201 () Bool)

(assert (=> b!2595431 (=> (not res!1092201) (not e!1637799))))

(assert (=> b!2595431 (= res!1092201 (is-Cons!29886 l1!1546))))

(declare-fun b!2595432 () Bool)

(declare-fun res!1092198 () Bool)

(assert (=> b!2595432 (=> res!1092198 e!1637804)))

(assert (=> b!2595432 (= res!1092198 (= lt!913946 (h!35306 l1!1546)))))

(declare-fun b!2595433 () Bool)

(assert (=> b!2595433 (= e!1637802 e!1637804)))

(declare-fun res!1092208 () Bool)

(assert (=> b!2595433 (=> res!1092208 e!1637804)))

(assert (=> b!2595433 (= res!1092208 (not (contains!5434 l1!1546 lt!913946)))))

(declare-fun getWitness!557 (List!29986 Int) B!2171)

(assert (=> b!2595433 (= lt!913946 (getWitness!557 (t!212999 l1!1546) lambda!96836))))

(declare-fun b!2595434 () Bool)

(declare-fun tp!823114 () Bool)

(assert (=> b!2595434 (= e!1637801 (and tp_is_empty!13451 tp!823114))))

(declare-fun b!2595435 () Bool)

(declare-fun res!1092202 () Bool)

(assert (=> b!2595435 (=> (not res!1092202) (not e!1637803))))

(assert (=> b!2595435 (= res!1092202 (noDuplicate!434 l2!1515))))

(declare-fun res!1092199 () Bool)

(assert (=> b!2595436 (=> (not res!1092199) (not e!1637799))))

(assert (=> b!2595436 (= res!1092199 (forall!6123 l2!1515 lambda!96833))))

(assert (= (and start!251738 res!1092207) b!2595435))

(assert (= (and b!2595435 res!1092202) b!2595427))

(assert (= (and b!2595427 res!1092200) b!2595436))

(assert (= (and b!2595436 res!1092199) b!2595431))

(assert (= (and b!2595431 res!1092201) b!2595430))

(assert (= (and b!2595430 res!1092205) b!2595425))

(assert (= (and b!2595425 (not res!1092204)) b!2595429))

(assert (= (and b!2595429 (not res!1092203)) b!2595428))

(assert (= (and b!2595428 (not res!1092206)) b!2595433))

(assert (= (and b!2595433 (not res!1092208)) b!2595432))

(assert (= (and b!2595432 (not res!1092198)) b!2595424))

(assert (= (and start!251738 (is-Cons!29886 l1!1546)) b!2595426))

(assert (= (and start!251738 (is-Cons!29886 l2!1515)) b!2595434))

(declare-fun m!2931599 () Bool)

(assert (=> start!251738 m!2931599))

(declare-fun m!2931601 () Bool)

(assert (=> b!2595428 m!2931601))

(assert (=> b!2595428 m!2931601))

(declare-fun m!2931603 () Bool)

(assert (=> b!2595428 m!2931603))

(declare-fun m!2931605 () Bool)

(assert (=> b!2595424 m!2931605))

(declare-fun m!2931607 () Bool)

(assert (=> b!2595435 m!2931607))

(declare-fun m!2931609 () Bool)

(assert (=> b!2595430 m!2931609))

(declare-fun m!2931611 () Bool)

(assert (=> b!2595425 m!2931611))

(declare-fun m!2931613 () Bool)

(assert (=> b!2595425 m!2931613))

(declare-fun m!2931615 () Bool)

(assert (=> b!2595425 m!2931615))

(declare-fun m!2931617 () Bool)

(assert (=> b!2595425 m!2931617))

(declare-fun m!2931619 () Bool)

(assert (=> b!2595425 m!2931619))

(declare-fun m!2931621 () Bool)

(assert (=> b!2595425 m!2931621))

(declare-fun m!2931623 () Bool)

(assert (=> b!2595425 m!2931623))

(assert (=> b!2595425 m!2931619))

(declare-fun m!2931625 () Bool)

(assert (=> b!2595429 m!2931625))

(declare-fun m!2931627 () Bool)

(assert (=> b!2595429 m!2931627))

(declare-fun m!2931629 () Bool)

(assert (=> b!2595429 m!2931629))

(declare-fun m!2931631 () Bool)

(assert (=> b!2595427 m!2931631))

(declare-fun m!2931633 () Bool)

(assert (=> b!2595427 m!2931633))

(declare-fun m!2931635 () Bool)

(assert (=> b!2595436 m!2931635))

(declare-fun m!2931637 () Bool)

(assert (=> b!2595433 m!2931637))

(declare-fun m!2931639 () Bool)

(assert (=> b!2595433 m!2931639))

(push 1)

(assert (not b!2595427))

(assert tp_is_empty!13451)

(assert (not b!2595435))

(assert (not b!2595429))

(assert (not b!2595436))

(assert (not start!251738))

(assert (not b!2595426))

(assert (not b!2595428))

(assert (not b!2595430))

(assert (not b!2595433))

(assert (not b!2595424))

(assert (not b!2595425))

(assert (not b!2595434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735207 () Bool)

(assert (=> d!735207 (= (tail!4152 l1!1546) (t!212999 l1!1546))))

(assert (=> b!2595429 d!735207))

(declare-fun d!735209 () Bool)

(declare-fun res!1092246 () Bool)

(declare-fun e!1637850 () Bool)

(assert (=> d!735209 (=> res!1092246 e!1637850)))

(assert (=> d!735209 (= res!1092246 (is-Nil!29886 lt!913950))))

(assert (=> d!735209 (= (forall!6123 lt!913950 lambda!96835) e!1637850)))

(declare-fun b!2595484 () Bool)

(declare-fun e!1637851 () Bool)

(assert (=> b!2595484 (= e!1637850 e!1637851)))

(declare-fun res!1092247 () Bool)

(assert (=> b!2595484 (=> (not res!1092247) (not e!1637851))))

(declare-fun dynLambda!12643 (Int B!2171) Bool)

(assert (=> b!2595484 (= res!1092247 (dynLambda!12643 lambda!96835 (h!35306 lt!913950)))))

(declare-fun b!2595485 () Bool)

(assert (=> b!2595485 (= e!1637851 (forall!6123 (t!212999 lt!913950) lambda!96835))))

(assert (= (and d!735209 (not res!1092246)) b!2595484))

(assert (= (and b!2595484 res!1092247) b!2595485))

(declare-fun b_lambda!77419 () Bool)

(assert (=> (not b_lambda!77419) (not b!2595484)))

(declare-fun m!2931685 () Bool)

(assert (=> b!2595484 m!2931685))

(declare-fun m!2931687 () Bool)

(assert (=> b!2595485 m!2931687))

(assert (=> b!2595429 d!735209))

(declare-fun d!735211 () Bool)

(declare-fun res!1092248 () Bool)

(declare-fun e!1637852 () Bool)

(assert (=> d!735211 (=> res!1092248 e!1637852)))

(assert (=> d!735211 (= res!1092248 (is-Nil!29886 lt!913950))))

(assert (=> d!735211 (= (forall!6123 lt!913950 lambda!96834) e!1637852)))

(declare-fun b!2595486 () Bool)

(declare-fun e!1637853 () Bool)

(assert (=> b!2595486 (= e!1637852 e!1637853)))

(declare-fun res!1092249 () Bool)

(assert (=> b!2595486 (=> (not res!1092249) (not e!1637853))))

(assert (=> b!2595486 (= res!1092249 (dynLambda!12643 lambda!96834 (h!35306 lt!913950)))))

(declare-fun b!2595487 () Bool)

(assert (=> b!2595487 (= e!1637853 (forall!6123 (t!212999 lt!913950) lambda!96834))))

(assert (= (and d!735211 (not res!1092248)) b!2595486))

(assert (= (and b!2595486 res!1092249) b!2595487))

(declare-fun b_lambda!77421 () Bool)

(assert (=> (not b_lambda!77421) (not b!2595486)))

(declare-fun m!2931689 () Bool)

(assert (=> b!2595486 m!2931689))

(declare-fun m!2931691 () Bool)

(assert (=> b!2595487 m!2931691))

(assert (=> b!2595429 d!735211))

(declare-fun bs!472781 () Bool)

(declare-fun d!735213 () Bool)

(assert (= bs!472781 d!735213))

(assert (=> bs!472781 m!2931597))

(declare-fun bs!472782 () Bool)

(assert (= bs!472782 (and d!735213 b!2595436)))

(declare-fun lambda!96859 () Int)

(assert (=> bs!472782 (= (= (tail!4152 l1!1546) l1!1546) (= lambda!96859 lambda!96833))))

(declare-fun bs!472783 () Bool)

(assert (= bs!472783 (and d!735213 b!2595429)))

(assert (=> bs!472783 (= lambda!96859 lambda!96834)))

(assert (=> bs!472783 (= (= (tail!4152 l1!1546) (t!212999 l1!1546)) (= lambda!96859 lambda!96835))))

(declare-fun bs!472784 () Bool)

(assert (= bs!472784 (and d!735213 b!2595428)))

(assert (=> bs!472784 (not (= lambda!96859 lambda!96836))))

(assert (=> d!735213 true))

(assert (=> d!735213 (forall!6123 lt!913950 lambda!96859)))

(declare-fun lt!913980 () Unit!43930)

(declare-fun choose!15399 (List!29986 List!29986 B!2171) Unit!43930)

(assert (=> d!735213 (= lt!913980 (choose!15399 lt!913950 l1!1546 (h!35306 l1!1546)))))

(declare-fun isEmpty!17130 (List!29986) Bool)

(assert (=> d!735213 (not (isEmpty!17130 l1!1546))))

(assert (=> d!735213 (= (lemmaForallContainsThenForTailIfContainsNotHead!17 lt!913950 l1!1546 (h!35306 l1!1546)) lt!913980)))

(declare-fun m!2931693 () Bool)

(assert (=> bs!472781 m!2931693))

(declare-fun m!2931695 () Bool)

(assert (=> bs!472781 m!2931695))

(declare-fun m!2931697 () Bool)

(assert (=> bs!472781 m!2931697))

(assert (=> b!2595429 d!735213))

(declare-fun d!735215 () Bool)

(declare-fun res!1092254 () Bool)

(declare-fun e!1637860 () Bool)

(assert (=> d!735215 (=> res!1092254 e!1637860)))

(assert (=> d!735215 (= res!1092254 (is-Nil!29886 l2!1515))))

(assert (=> d!735215 (= (noDuplicate!434 l2!1515) e!1637860)))

(declare-fun b!2595492 () Bool)

(declare-fun e!1637861 () Bool)

(assert (=> b!2595492 (= e!1637860 e!1637861)))

(declare-fun res!1092255 () Bool)

(assert (=> b!2595492 (=> (not res!1092255) (not e!1637861))))

(assert (=> b!2595492 (= res!1092255 (not (contains!5434 (t!212999 l2!1515) (h!35306 l2!1515))))))

(declare-fun b!2595493 () Bool)

(assert (=> b!2595493 (= e!1637861 (noDuplicate!434 (t!212999 l2!1515)))))

(assert (= (and d!735215 (not res!1092254)) b!2595492))

(assert (= (and b!2595492 res!1092255) b!2595493))

(declare-fun m!2931699 () Bool)

(assert (=> b!2595492 m!2931699))

(declare-fun m!2931701 () Bool)

(assert (=> b!2595493 m!2931701))

(assert (=> b!2595435 d!735215))

(declare-fun d!735217 () Bool)

(declare-fun lt!913983 () Bool)

(declare-fun content!4195 (List!29986) (Set B!2171))

(assert (=> d!735217 (= lt!913983 (set.member lt!913946 (content!4195 l2!1515)))))

(declare-fun e!1637866 () Bool)

(assert (=> d!735217 (= lt!913983 e!1637866)))

(declare-fun res!1092260 () Bool)

(assert (=> d!735217 (=> (not res!1092260) (not e!1637866))))

(assert (=> d!735217 (= res!1092260 (is-Cons!29886 l2!1515))))

(assert (=> d!735217 (= (contains!5434 l2!1515 lt!913946) lt!913983)))

(declare-fun b!2595498 () Bool)

(declare-fun e!1637867 () Bool)

(assert (=> b!2595498 (= e!1637866 e!1637867)))

(declare-fun res!1092261 () Bool)

(assert (=> b!2595498 (=> res!1092261 e!1637867)))

(assert (=> b!2595498 (= res!1092261 (= (h!35306 l2!1515) lt!913946))))

(declare-fun b!2595499 () Bool)

(assert (=> b!2595499 (= e!1637867 (contains!5434 (t!212999 l2!1515) lt!913946))))

(assert (= (and d!735217 res!1092260) b!2595498))

(assert (= (and b!2595498 (not res!1092261)) b!2595499))

(declare-fun m!2931703 () Bool)

(assert (=> d!735217 m!2931703))

(declare-fun m!2931705 () Bool)

(assert (=> d!735217 m!2931705))

(declare-fun m!2931707 () Bool)

(assert (=> b!2595499 m!2931707))

(assert (=> b!2595424 d!735217))

(declare-fun d!735219 () Bool)

(declare-fun res!1092262 () Bool)

(declare-fun e!1637868 () Bool)

(assert (=> d!735219 (=> res!1092262 e!1637868)))

(assert (=> d!735219 (= res!1092262 (is-Nil!29886 lt!913950))))

(assert (=> d!735219 (= (forall!6123 lt!913950 lambda!96833) e!1637868)))

(declare-fun b!2595500 () Bool)

(declare-fun e!1637869 () Bool)

(assert (=> b!2595500 (= e!1637868 e!1637869)))

(declare-fun res!1092263 () Bool)

(assert (=> b!2595500 (=> (not res!1092263) (not e!1637869))))

(assert (=> b!2595500 (= res!1092263 (dynLambda!12643 lambda!96833 (h!35306 lt!913950)))))

(declare-fun b!2595501 () Bool)

(assert (=> b!2595501 (= e!1637869 (forall!6123 (t!212999 lt!913950) lambda!96833))))

(assert (= (and d!735219 (not res!1092262)) b!2595500))

(assert (= (and b!2595500 res!1092263) b!2595501))

(declare-fun b_lambda!77423 () Bool)

(assert (=> (not b_lambda!77423) (not b!2595500)))

(declare-fun m!2931709 () Bool)

(assert (=> b!2595500 m!2931709))

(declare-fun m!2931711 () Bool)

(assert (=> b!2595501 m!2931711))

(assert (=> b!2595425 d!735219))

(declare-fun b!2595512 () Bool)

(declare-fun e!1637877 () List!29986)

(declare-fun e!1637879 () List!29986)

(assert (=> b!2595512 (= e!1637877 e!1637879)))

(declare-fun c!418219 () Bool)

(assert (=> b!2595512 (= c!418219 (= (h!35306 l1!1546) (h!35306 l2!1515)))))

(declare-fun b!2595513 () Bool)

(declare-fun call!167317 () List!29986)

(assert (=> b!2595513 (= e!1637879 (Cons!29886 (h!35306 l2!1515) call!167317))))

(declare-fun bm!167312 () Bool)

(assert (=> bm!167312 (= call!167317 (-!163 (t!212999 l2!1515) (h!35306 l1!1546)))))

(declare-fun d!735221 () Bool)

(declare-fun e!1637878 () Bool)

(assert (=> d!735221 e!1637878))

(declare-fun res!1092266 () Bool)

(assert (=> d!735221 (=> (not res!1092266) (not e!1637878))))

(declare-fun lt!913986 () List!29986)

(assert (=> d!735221 (= res!1092266 (<= (size!23191 lt!913986) (size!23191 l2!1515)))))

(assert (=> d!735221 (= lt!913986 e!1637877)))

(declare-fun c!418220 () Bool)

(assert (=> d!735221 (= c!418220 (is-Cons!29886 l2!1515))))

(assert (=> d!735221 (= (-!163 l2!1515 (h!35306 l1!1546)) lt!913986)))

(declare-fun b!2595514 () Bool)

(assert (=> b!2595514 (= e!1637877 Nil!29886)))

(declare-fun b!2595515 () Bool)

(assert (=> b!2595515 (= e!1637879 call!167317)))

(declare-fun b!2595516 () Bool)

(assert (=> b!2595516 (= e!1637878 (= (content!4195 lt!913986) (set.minus (content!4195 l2!1515) (set.insert (h!35306 l1!1546) (as set.empty (Set B!2171))))))))

(assert (= (and d!735221 c!418220) b!2595512))

(assert (= (and d!735221 (not c!418220)) b!2595514))

(assert (= (and b!2595512 c!418219) b!2595515))

(assert (= (and b!2595512 (not c!418219)) b!2595513))

(assert (= (or b!2595515 b!2595513) bm!167312))

(assert (= (and d!735221 res!1092266) b!2595516))

(declare-fun m!2931713 () Bool)

(assert (=> bm!167312 m!2931713))

(declare-fun m!2931715 () Bool)

(assert (=> d!735221 m!2931715))

(assert (=> d!735221 m!2931631))

(declare-fun m!2931717 () Bool)

(assert (=> b!2595516 m!2931717))

(assert (=> b!2595516 m!2931703))

(declare-fun m!2931719 () Bool)

(assert (=> b!2595516 m!2931719))

(assert (=> b!2595425 d!735221))

(declare-fun d!735225 () Bool)

(declare-fun res!1092267 () Bool)

(declare-fun e!1637880 () Bool)

(assert (=> d!735225 (=> res!1092267 e!1637880)))

(assert (=> d!735225 (= res!1092267 (is-Nil!29886 lt!913950))))

(assert (=> d!735225 (= (noDuplicate!434 lt!913950) e!1637880)))

(declare-fun b!2595517 () Bool)

(declare-fun e!1637881 () Bool)

(assert (=> b!2595517 (= e!1637880 e!1637881)))

(declare-fun res!1092268 () Bool)

(assert (=> b!2595517 (=> (not res!1092268) (not e!1637881))))

(assert (=> b!2595517 (= res!1092268 (not (contains!5434 (t!212999 lt!913950) (h!35306 lt!913950))))))

(declare-fun b!2595518 () Bool)

(assert (=> b!2595518 (= e!1637881 (noDuplicate!434 (t!212999 lt!913950)))))

(assert (= (and d!735225 (not res!1092267)) b!2595517))

(assert (= (and b!2595517 res!1092268) b!2595518))

(declare-fun m!2931721 () Bool)

(assert (=> b!2595517 m!2931721))

(declare-fun m!2931723 () Bool)

(assert (=> b!2595518 m!2931723))

(assert (=> b!2595425 d!735225))

(declare-fun d!735227 () Bool)

(assert (=> d!735227 (= (size!23191 (-!163 l2!1515 (h!35306 l1!1546))) (- (size!23191 l2!1515) 1))))

(declare-fun lt!913989 () Unit!43930)

(declare-fun choose!15400 (List!29986 B!2171) Unit!43930)

(assert (=> d!735227 (= lt!913989 (choose!15400 l2!1515 (h!35306 l1!1546)))))

(assert (=> d!735227 (noDuplicate!434 l2!1515)))

(assert (=> d!735227 (= (lemmaRemoveElmtNoDuplicateRemoveOne!25 l2!1515 (h!35306 l1!1546)) lt!913989)))

(declare-fun bs!472785 () Bool)

(assert (= bs!472785 d!735227))

(declare-fun m!2931725 () Bool)

(assert (=> bs!472785 m!2931725))

(assert (=> bs!472785 m!2931617))

(assert (=> bs!472785 m!2931617))

(declare-fun m!2931727 () Bool)

(assert (=> bs!472785 m!2931727))

(assert (=> bs!472785 m!2931631))

(assert (=> bs!472785 m!2931607))

(assert (=> b!2595425 d!735227))

(declare-fun d!735229 () Bool)

(assert (=> d!735229 (forall!6123 (-!163 l2!1515 (h!35306 l1!1546)) lambda!96833)))

(declare-fun lt!913994 () Unit!43930)

(declare-fun choose!15401 (List!29986 B!2171 Int) Unit!43930)

(assert (=> d!735229 (= lt!913994 (choose!15401 l2!1515 (h!35306 l1!1546) lambda!96833))))

(assert (=> d!735229 (noDuplicate!434 l2!1515)))

(assert (=> d!735229 (= (lemmaRemoveElmtMaintainsForall!27 l2!1515 (h!35306 l1!1546) lambda!96833) lt!913994)))

(declare-fun bs!472786 () Bool)

(assert (= bs!472786 d!735229))

(assert (=> bs!472786 m!2931617))

(assert (=> bs!472786 m!2931617))

(declare-fun m!2931729 () Bool)

(assert (=> bs!472786 m!2931729))

(declare-fun m!2931731 () Bool)

(assert (=> bs!472786 m!2931731))

(assert (=> bs!472786 m!2931607))

(assert (=> b!2595425 d!735229))

(declare-fun d!735231 () Bool)

(assert (=> d!735231 (noDuplicate!434 (-!163 l2!1515 (h!35306 l1!1546)))))

(declare-fun lt!913998 () Unit!43930)

(declare-fun choose!15402 (List!29986 B!2171) Unit!43930)

(assert (=> d!735231 (= lt!913998 (choose!15402 l2!1515 (h!35306 l1!1546)))))

(assert (=> d!735231 (noDuplicate!434 l2!1515)))

(assert (=> d!735231 (= (lemmaRemoveElmtMaintainsNoDuplicate!29 l2!1515 (h!35306 l1!1546)) lt!913998)))

(declare-fun bs!472787 () Bool)

(assert (= bs!472787 d!735231))

(assert (=> bs!472787 m!2931617))

(assert (=> bs!472787 m!2931617))

(declare-fun m!2931739 () Bool)

(assert (=> bs!472787 m!2931739))

(declare-fun m!2931741 () Bool)

(assert (=> bs!472787 m!2931741))

(assert (=> bs!472787 m!2931607))

(assert (=> b!2595425 d!735231))

(declare-fun d!735235 () Bool)

(declare-fun lt!914001 () Int)

(assert (=> d!735235 (>= lt!914001 0)))

(declare-fun e!1637893 () Int)

(assert (=> d!735235 (= lt!914001 e!1637893)))

(declare-fun c!418223 () Bool)

(assert (=> d!735235 (= c!418223 (is-Nil!29886 lt!913950))))

(assert (=> d!735235 (= (size!23191 lt!913950) lt!914001)))

(declare-fun b!2595529 () Bool)

(assert (=> b!2595529 (= e!1637893 0)))

(declare-fun b!2595530 () Bool)

(assert (=> b!2595530 (= e!1637893 (+ 1 (size!23191 (t!212999 lt!913950))))))

(assert (= (and d!735235 c!418223) b!2595529))

(assert (= (and d!735235 (not c!418223)) b!2595530))

(declare-fun m!2931743 () Bool)

(assert (=> b!2595530 m!2931743))

(assert (=> b!2595425 d!735235))

(declare-fun d!735237 () Bool)

(declare-fun lt!914002 () Bool)

(assert (=> d!735237 (= lt!914002 (set.member (h!35306 l1!1546) (content!4195 l2!1515)))))

(declare-fun e!1637894 () Bool)

(assert (=> d!735237 (= lt!914002 e!1637894)))

(declare-fun res!1092275 () Bool)

(assert (=> d!735237 (=> (not res!1092275) (not e!1637894))))

(assert (=> d!735237 (= res!1092275 (is-Cons!29886 l2!1515))))

(assert (=> d!735237 (= (contains!5434 l2!1515 (h!35306 l1!1546)) lt!914002)))

(declare-fun b!2595531 () Bool)

(declare-fun e!1637895 () Bool)

(assert (=> b!2595531 (= e!1637894 e!1637895)))

(declare-fun res!1092276 () Bool)

(assert (=> b!2595531 (=> res!1092276 e!1637895)))

(assert (=> b!2595531 (= res!1092276 (= (h!35306 l2!1515) (h!35306 l1!1546)))))

(declare-fun b!2595532 () Bool)

(assert (=> b!2595532 (= e!1637895 (contains!5434 (t!212999 l2!1515) (h!35306 l1!1546)))))

(assert (= (and d!735237 res!1092275) b!2595531))

(assert (= (and b!2595531 (not res!1092276)) b!2595532))

(assert (=> d!735237 m!2931703))

(declare-fun m!2931745 () Bool)

(assert (=> d!735237 m!2931745))

(declare-fun m!2931747 () Bool)

(assert (=> b!2595532 m!2931747))

(assert (=> b!2595430 d!735237))

(declare-fun d!735239 () Bool)

(declare-fun res!1092277 () Bool)

(declare-fun e!1637896 () Bool)

(assert (=> d!735239 (=> res!1092277 e!1637896)))

(assert (=> d!735239 (= res!1092277 (is-Nil!29886 l2!1515))))

(assert (=> d!735239 (= (forall!6123 l2!1515 lambda!96833) e!1637896)))

(declare-fun b!2595533 () Bool)

(declare-fun e!1637897 () Bool)

(assert (=> b!2595533 (= e!1637896 e!1637897)))

(declare-fun res!1092278 () Bool)

(assert (=> b!2595533 (=> (not res!1092278) (not e!1637897))))

(assert (=> b!2595533 (= res!1092278 (dynLambda!12643 lambda!96833 (h!35306 l2!1515)))))

(declare-fun b!2595534 () Bool)

(assert (=> b!2595534 (= e!1637897 (forall!6123 (t!212999 l2!1515) lambda!96833))))

(assert (= (and d!735239 (not res!1092277)) b!2595533))

(assert (= (and b!2595533 res!1092278) b!2595534))

(declare-fun b_lambda!77425 () Bool)

(assert (=> (not b_lambda!77425) (not b!2595533)))

(declare-fun m!2931749 () Bool)

(assert (=> b!2595533 m!2931749))

(declare-fun m!2931751 () Bool)

(assert (=> b!2595534 m!2931751))

(assert (=> b!2595436 d!735239))

(declare-fun d!735241 () Bool)

(declare-fun res!1092279 () Bool)

(declare-fun e!1637898 () Bool)

(assert (=> d!735241 (=> res!1092279 e!1637898)))

(assert (=> d!735241 (= res!1092279 (is-Nil!29886 l1!1546))))

(assert (=> d!735241 (= (noDuplicate!434 l1!1546) e!1637898)))

(declare-fun b!2595535 () Bool)

(declare-fun e!1637899 () Bool)

(assert (=> b!2595535 (= e!1637898 e!1637899)))

(declare-fun res!1092280 () Bool)

(assert (=> b!2595535 (=> (not res!1092280) (not e!1637899))))

(assert (=> b!2595535 (= res!1092280 (not (contains!5434 (t!212999 l1!1546) (h!35306 l1!1546))))))

(declare-fun b!2595536 () Bool)

(assert (=> b!2595536 (= e!1637899 (noDuplicate!434 (t!212999 l1!1546)))))

(assert (= (and d!735241 (not res!1092279)) b!2595535))

(assert (= (and b!2595535 res!1092280) b!2595536))

(declare-fun m!2931753 () Bool)

(assert (=> b!2595535 m!2931753))

(declare-fun m!2931755 () Bool)

(assert (=> b!2595536 m!2931755))

(assert (=> start!251738 d!735241))

(declare-fun d!735243 () Bool)

(declare-fun lt!914003 () Int)

(assert (=> d!735243 (>= lt!914003 0)))

(declare-fun e!1637900 () Int)

(assert (=> d!735243 (= lt!914003 e!1637900)))

(declare-fun c!418224 () Bool)

(assert (=> d!735243 (= c!418224 (is-Nil!29886 l2!1515))))

(assert (=> d!735243 (= (size!23191 l2!1515) lt!914003)))

(declare-fun b!2595537 () Bool)

(assert (=> b!2595537 (= e!1637900 0)))

(declare-fun b!2595538 () Bool)

(assert (=> b!2595538 (= e!1637900 (+ 1 (size!23191 (t!212999 l2!1515))))))

(assert (= (and d!735243 c!418224) b!2595537))

(assert (= (and d!735243 (not c!418224)) b!2595538))

(declare-fun m!2931757 () Bool)

(assert (=> b!2595538 m!2931757))

(assert (=> b!2595427 d!735243))

(declare-fun d!735245 () Bool)

(declare-fun lt!914004 () Int)

(assert (=> d!735245 (>= lt!914004 0)))

(declare-fun e!1637901 () Int)

(assert (=> d!735245 (= lt!914004 e!1637901)))

(declare-fun c!418225 () Bool)

(assert (=> d!735245 (= c!418225 (is-Nil!29886 l1!1546))))

(assert (=> d!735245 (= (size!23191 l1!1546) lt!914004)))

(declare-fun b!2595539 () Bool)

(assert (=> b!2595539 (= e!1637901 0)))

(declare-fun b!2595540 () Bool)

(assert (=> b!2595540 (= e!1637901 (+ 1 (size!23191 (t!212999 l1!1546))))))

(assert (= (and d!735245 c!418225) b!2595539))

(assert (= (and d!735245 (not c!418225)) b!2595540))

(declare-fun m!2931759 () Bool)

(assert (=> b!2595540 m!2931759))

(assert (=> b!2595427 d!735245))

(declare-fun d!735247 () Bool)

(declare-fun lt!914005 () Bool)

(assert (=> d!735247 (= lt!914005 (set.member lt!913946 (content!4195 l1!1546)))))

(declare-fun e!1637902 () Bool)

(assert (=> d!735247 (= lt!914005 e!1637902)))

(declare-fun res!1092281 () Bool)

(assert (=> d!735247 (=> (not res!1092281) (not e!1637902))))

(assert (=> d!735247 (= res!1092281 (is-Cons!29886 l1!1546))))

(assert (=> d!735247 (= (contains!5434 l1!1546 lt!913946) lt!914005)))

(declare-fun b!2595541 () Bool)

(declare-fun e!1637903 () Bool)

(assert (=> b!2595541 (= e!1637902 e!1637903)))

(declare-fun res!1092282 () Bool)

(assert (=> b!2595541 (=> res!1092282 e!1637903)))

(assert (=> b!2595541 (= res!1092282 (= (h!35306 l1!1546) lt!913946))))

(declare-fun b!2595542 () Bool)

(assert (=> b!2595542 (= e!1637903 (contains!5434 (t!212999 l1!1546) lt!913946))))

(assert (= (and d!735247 res!1092281) b!2595541))

(assert (= (and b!2595541 (not res!1092282)) b!2595542))

(declare-fun m!2931761 () Bool)

(assert (=> d!735247 m!2931761))

(declare-fun m!2931763 () Bool)

(assert (=> d!735247 m!2931763))

(declare-fun m!2931765 () Bool)

(assert (=> b!2595542 m!2931765))

(assert (=> b!2595433 d!735247))

(declare-fun b!2595565 () Bool)

(declare-fun e!1637921 () Bool)

(assert (=> b!2595565 (= e!1637921 (dynLambda!12643 lambda!96836 (h!35306 (t!212999 l1!1546))))))

(declare-fun b!2595566 () Bool)

(declare-fun e!1637918 () B!2171)

(declare-fun e!1637919 () B!2171)

(assert (=> b!2595566 (= e!1637918 e!1637919)))

(declare-fun c!418234 () Bool)

(assert (=> b!2595566 (= c!418234 (is-Cons!29886 (t!212999 l1!1546)))))

(declare-fun b!2595567 () Bool)

(assert (=> b!2595567 (= e!1637919 (getWitness!557 (t!212999 (t!212999 l1!1546)) lambda!96836))))

(declare-fun b!2595569 () Bool)

(declare-fun e!1637920 () Bool)

(declare-fun lt!914014 () B!2171)

(assert (=> b!2595569 (= e!1637920 (contains!5434 (t!212999 l1!1546) lt!914014))))

(declare-fun b!2595570 () Bool)

(assert (=> b!2595570 (= e!1637918 (h!35306 (t!212999 l1!1546)))))

(declare-fun b!2595568 () Bool)

(declare-fun lt!914015 () Unit!43930)

(declare-fun Unit!43934 () Unit!43930)

(assert (=> b!2595568 (= lt!914015 Unit!43934)))

(assert (=> b!2595568 false))

(declare-fun head!5889 (List!29986) B!2171)

(assert (=> b!2595568 (= e!1637919 (head!5889 (t!212999 l1!1546)))))

(declare-fun d!735249 () Bool)

(assert (=> d!735249 e!1637920))

(declare-fun res!1092289 () Bool)

(assert (=> d!735249 (=> (not res!1092289) (not e!1637920))))

(assert (=> d!735249 (= res!1092289 (dynLambda!12643 lambda!96836 lt!914014))))

(assert (=> d!735249 (= lt!914014 e!1637918)))

(declare-fun c!418235 () Bool)

(assert (=> d!735249 (= c!418235 e!1637921)))

(declare-fun res!1092290 () Bool)

(assert (=> d!735249 (=> (not res!1092290) (not e!1637921))))

(assert (=> d!735249 (= res!1092290 (is-Cons!29886 (t!212999 l1!1546)))))

(assert (=> d!735249 (exists!935 (t!212999 l1!1546) lambda!96836)))

(assert (=> d!735249 (= (getWitness!557 (t!212999 l1!1546) lambda!96836) lt!914014)))

(assert (= (and d!735249 res!1092290) b!2595565))

(assert (= (and d!735249 c!418235) b!2595570))

(assert (= (and d!735249 (not c!418235)) b!2595566))

(assert (= (and b!2595566 c!418234) b!2595567))

(assert (= (and b!2595566 (not c!418234)) b!2595568))

(assert (= (and d!735249 res!1092289) b!2595569))

(declare-fun b_lambda!77427 () Bool)

(assert (=> (not b_lambda!77427) (not b!2595565)))

(declare-fun b_lambda!77429 () Bool)

(assert (=> (not b_lambda!77429) (not d!735249)))

(declare-fun m!2931767 () Bool)

(assert (=> d!735249 m!2931767))

(assert (=> d!735249 m!2931601))

(declare-fun m!2931769 () Bool)

(assert (=> b!2595567 m!2931769))

(declare-fun m!2931771 () Bool)

(assert (=> b!2595568 m!2931771))

(declare-fun m!2931773 () Bool)

(assert (=> b!2595569 m!2931773))

(declare-fun m!2931775 () Bool)

(assert (=> b!2595565 m!2931775))

(assert (=> b!2595433 d!735249))

(declare-fun bs!472788 () Bool)

(declare-fun d!735251 () Bool)

(assert (= bs!472788 (and d!735251 b!2595436)))

(declare-fun lambda!96862 () Int)

(assert (=> bs!472788 (not (= lambda!96862 lambda!96833))))

(declare-fun bs!472789 () Bool)

(assert (= bs!472789 (and d!735251 d!735213)))

(assert (=> bs!472789 (not (= lambda!96862 lambda!96859))))

(declare-fun bs!472790 () Bool)

(assert (= bs!472790 (and d!735251 b!2595429)))

(assert (=> bs!472790 (not (= lambda!96862 lambda!96834))))

(declare-fun bs!472791 () Bool)

(assert (= bs!472791 (and d!735251 b!2595428)))

(assert (=> bs!472791 (not (= lambda!96862 lambda!96836))))

(assert (=> bs!472790 (not (= lambda!96862 lambda!96835))))

(assert (=> d!735251 true))

(declare-fun order!15901 () Int)

(declare-fun dynLambda!12644 (Int Int) Int)

(assert (=> d!735251 (< (dynLambda!12644 order!15901 lambda!96836) (dynLambda!12644 order!15901 lambda!96862))))

(assert (=> d!735251 (= (exists!935 (t!212999 l1!1546) lambda!96836) (not (forall!6123 (t!212999 l1!1546) lambda!96862)))))

(declare-fun bs!472792 () Bool)

(assert (= bs!472792 d!735251))

(declare-fun m!2931777 () Bool)

(assert (=> bs!472792 m!2931777))

(assert (=> b!2595428 d!735251))

(declare-fun bs!472793 () Bool)

(declare-fun d!735253 () Bool)

(assert (= bs!472793 (and d!735253 d!735251)))

(declare-fun lambda!96865 () Int)

(assert (=> bs!472793 (not (= lambda!96865 lambda!96862))))

(declare-fun bs!472794 () Bool)

(assert (= bs!472794 (and d!735253 b!2595436)))

(assert (=> bs!472794 (not (= lambda!96865 lambda!96833))))

(declare-fun bs!472795 () Bool)

(assert (= bs!472795 (and d!735253 d!735213)))

(assert (=> bs!472795 (not (= lambda!96865 lambda!96859))))

(declare-fun bs!472796 () Bool)

(assert (= bs!472796 (and d!735253 b!2595429)))

(assert (=> bs!472796 (not (= lambda!96865 lambda!96834))))

(declare-fun bs!472797 () Bool)

(assert (= bs!472797 (and d!735253 b!2595428)))

(assert (=> bs!472797 (= lambda!96865 lambda!96836)))

(assert (=> bs!472796 (not (= lambda!96865 lambda!96835))))

(assert (=> d!735253 true))

(assert (=> d!735253 (exists!935 (t!212999 l1!1546) lambda!96865)))

(declare-fun lt!914018 () Unit!43930)

(declare-fun choose!15403 (List!29986 List!29986) Unit!43930)

(assert (=> d!735253 (= lt!914018 (choose!15403 (t!212999 l1!1546) lt!913950))))

(assert (=> d!735253 (noDuplicate!434 (t!212999 l1!1546))))

(assert (=> d!735253 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!51 (t!212999 l1!1546) lt!913950) lt!914018)))

(declare-fun bs!472798 () Bool)

(assert (= bs!472798 d!735253))

(declare-fun m!2931779 () Bool)

(assert (=> bs!472798 m!2931779))

(declare-fun m!2931781 () Bool)

(assert (=> bs!472798 m!2931781))

(assert (=> bs!472798 m!2931755))

(assert (=> b!2595428 d!735253))

(declare-fun b!2595585 () Bool)

(declare-fun e!1637932 () Bool)

(declare-fun tp!823123 () Bool)

(assert (=> b!2595585 (= e!1637932 (and tp_is_empty!13451 tp!823123))))

(assert (=> b!2595434 (= tp!823114 e!1637932)))

(assert (= (and b!2595434 (is-Cons!29886 (t!212999 l2!1515))) b!2595585))

(declare-fun b!2595586 () Bool)

(declare-fun e!1637933 () Bool)

(declare-fun tp!823124 () Bool)

(assert (=> b!2595586 (= e!1637933 (and tp_is_empty!13451 tp!823124))))

(assert (=> b!2595426 (= tp!823113 e!1637933)))

(assert (= (and b!2595426 (is-Cons!29886 (t!212999 l1!1546))) b!2595586))

(declare-fun b_lambda!77431 () Bool)

(assert (= b_lambda!77419 (or b!2595429 b_lambda!77431)))

(declare-fun bs!472799 () Bool)

(declare-fun d!735255 () Bool)

(assert (= bs!472799 (and d!735255 b!2595429)))

(assert (=> bs!472799 (= (dynLambda!12643 lambda!96835 (h!35306 lt!913950)) (contains!5434 (t!212999 l1!1546) (h!35306 lt!913950)))))

(declare-fun m!2931783 () Bool)

(assert (=> bs!472799 m!2931783))

(assert (=> b!2595484 d!735255))

(declare-fun b_lambda!77433 () Bool)

(assert (= b_lambda!77425 (or b!2595436 b_lambda!77433)))

(declare-fun bs!472800 () Bool)

(declare-fun d!735257 () Bool)

(assert (= bs!472800 (and d!735257 b!2595436)))

(assert (=> bs!472800 (= (dynLambda!12643 lambda!96833 (h!35306 l2!1515)) (contains!5434 l1!1546 (h!35306 l2!1515)))))

(declare-fun m!2931785 () Bool)

(assert (=> bs!472800 m!2931785))

(assert (=> b!2595533 d!735257))

(declare-fun b_lambda!77435 () Bool)

(assert (= b_lambda!77423 (or b!2595436 b_lambda!77435)))

(declare-fun bs!472801 () Bool)

(declare-fun d!735259 () Bool)

(assert (= bs!472801 (and d!735259 b!2595436)))

(assert (=> bs!472801 (= (dynLambda!12643 lambda!96833 (h!35306 lt!913950)) (contains!5434 l1!1546 (h!35306 lt!913950)))))

(declare-fun m!2931791 () Bool)

(assert (=> bs!472801 m!2931791))

(assert (=> b!2595500 d!735259))

(declare-fun b_lambda!77437 () Bool)

(assert (= b_lambda!77421 (or b!2595429 b_lambda!77437)))

(declare-fun bs!472802 () Bool)

(declare-fun d!735261 () Bool)

(assert (= bs!472802 (and d!735261 b!2595429)))

(assert (=> bs!472802 (= (dynLambda!12643 lambda!96834 (h!35306 lt!913950)) (contains!5434 (tail!4152 l1!1546) (h!35306 lt!913950)))))

(declare-fun m!2931797 () Bool)

(assert (=> bs!472802 m!2931797))

(assert (=> b!2595486 d!735261))

(declare-fun b_lambda!77439 () Bool)

(assert (= b_lambda!77429 (or b!2595428 b_lambda!77439)))

(declare-fun bs!472803 () Bool)

(declare-fun d!735263 () Bool)

(assert (= bs!472803 (and d!735263 b!2595428)))

(assert (=> bs!472803 (= (dynLambda!12643 lambda!96836 lt!914014) (not (contains!5434 lt!913950 lt!914014)))))

(declare-fun m!2931801 () Bool)

(assert (=> bs!472803 m!2931801))

(assert (=> d!735249 d!735263))

(declare-fun b_lambda!77441 () Bool)

(assert (= b_lambda!77427 (or b!2595428 b_lambda!77441)))

(declare-fun bs!472804 () Bool)

(declare-fun d!735265 () Bool)

(assert (= bs!472804 (and d!735265 b!2595428)))

(assert (=> bs!472804 (= (dynLambda!12643 lambda!96836 (h!35306 (t!212999 l1!1546))) (not (contains!5434 lt!913950 (h!35306 (t!212999 l1!1546)))))))

(declare-fun m!2931803 () Bool)

(assert (=> bs!472804 m!2931803))

(assert (=> b!2595565 d!735265))

(push 1)

(assert (not bs!472799))

(assert (not b!2595540))

(assert (not d!735247))

(assert (not b!2595532))

(assert (not d!735213))

(assert (not b!2595492))

(assert (not bs!472801))

(assert (not b!2595487))

(assert (not b!2595538))

(assert (not b!2595586))

(assert (not b!2595542))

(assert (not d!735237))

(assert (not b!2595567))

(assert (not bs!472803))

(assert (not b!2595516))

(assert (not d!735221))

(assert (not bm!167312))

(assert (not b_lambda!77435))

(assert (not b!2595585))

(assert tp_is_empty!13451)

(assert (not b!2595485))

(assert (not b_lambda!77431))

(assert (not d!735231))

(assert (not bs!472804))

(assert (not b_lambda!77439))

(assert (not b!2595569))

(assert (not bs!472800))

(assert (not b!2595534))

(assert (not b!2595530))

(assert (not b!2595493))

(assert (not b!2595518))

(assert (not b!2595568))

(assert (not d!735227))

(assert (not b!2595517))

(assert (not b!2595535))

(assert (not d!735253))

(assert (not d!735251))

(assert (not b!2595536))

(assert (not b!2595499))

(assert (not b!2595501))

(assert (not b_lambda!77441))

(assert (not b_lambda!77433))

(assert (not b_lambda!77437))

(assert (not bs!472802))

(assert (not d!735229))

(assert (not d!735249))

(assert (not d!735217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735319 () Bool)

(declare-fun res!1092324 () Bool)

(declare-fun e!1637986 () Bool)

(assert (=> d!735319 (=> res!1092324 e!1637986)))

(assert (=> d!735319 (= res!1092324 (is-Nil!29886 (t!212999 l1!1546)))))

(assert (=> d!735319 (= (forall!6123 (t!212999 l1!1546) lambda!96862) e!1637986)))

(declare-fun b!2595646 () Bool)

(declare-fun e!1637987 () Bool)

(assert (=> b!2595646 (= e!1637986 e!1637987)))

(declare-fun res!1092325 () Bool)

(assert (=> b!2595646 (=> (not res!1092325) (not e!1637987))))

(assert (=> b!2595646 (= res!1092325 (dynLambda!12643 lambda!96862 (h!35306 (t!212999 l1!1546))))))

(declare-fun b!2595647 () Bool)

(assert (=> b!2595647 (= e!1637987 (forall!6123 (t!212999 (t!212999 l1!1546)) lambda!96862))))

(assert (= (and d!735319 (not res!1092324)) b!2595646))

(assert (= (and b!2595646 res!1092325) b!2595647))

(declare-fun b_lambda!77467 () Bool)

(assert (=> (not b_lambda!77467) (not b!2595646)))

(declare-fun m!2931893 () Bool)

(assert (=> b!2595646 m!2931893))

(declare-fun m!2931895 () Bool)

(assert (=> b!2595647 m!2931895))

(assert (=> d!735251 d!735319))

(declare-fun d!735321 () Bool)

(declare-fun c!418251 () Bool)

(assert (=> d!735321 (= c!418251 (is-Nil!29886 l2!1515))))

(declare-fun e!1637990 () (Set B!2171))

(assert (=> d!735321 (= (content!4195 l2!1515) e!1637990)))

(declare-fun b!2595652 () Bool)

(assert (=> b!2595652 (= e!1637990 (as set.empty (Set B!2171)))))

(declare-fun b!2595653 () Bool)

(assert (=> b!2595653 (= e!1637990 (set.union (set.insert (h!35306 l2!1515) (as set.empty (Set B!2171))) (content!4195 (t!212999 l2!1515))))))

(assert (= (and d!735321 c!418251) b!2595652))

(assert (= (and d!735321 (not c!418251)) b!2595653))

(declare-fun m!2931897 () Bool)

(assert (=> b!2595653 m!2931897))

(declare-fun m!2931899 () Bool)

(assert (=> b!2595653 m!2931899))

(assert (=> d!735237 d!735321))

(declare-fun d!735323 () Bool)

(declare-fun lt!914046 () Bool)

(assert (=> d!735323 (= lt!914046 (set.member lt!913946 (content!4195 (t!212999 l1!1546))))))

(declare-fun e!1637991 () Bool)

(assert (=> d!735323 (= lt!914046 e!1637991)))

(declare-fun res!1092326 () Bool)

(assert (=> d!735323 (=> (not res!1092326) (not e!1637991))))

(assert (=> d!735323 (= res!1092326 (is-Cons!29886 (t!212999 l1!1546)))))

(assert (=> d!735323 (= (contains!5434 (t!212999 l1!1546) lt!913946) lt!914046)))

(declare-fun b!2595654 () Bool)

(declare-fun e!1637992 () Bool)

(assert (=> b!2595654 (= e!1637991 e!1637992)))

(declare-fun res!1092327 () Bool)

(assert (=> b!2595654 (=> res!1092327 e!1637992)))

(assert (=> b!2595654 (= res!1092327 (= (h!35306 (t!212999 l1!1546)) lt!913946))))

(declare-fun b!2595655 () Bool)

(assert (=> b!2595655 (= e!1637992 (contains!5434 (t!212999 (t!212999 l1!1546)) lt!913946))))

(assert (= (and d!735323 res!1092326) b!2595654))

(assert (= (and b!2595654 (not res!1092327)) b!2595655))

(declare-fun m!2931901 () Bool)

(assert (=> d!735323 m!2931901))

(declare-fun m!2931903 () Bool)

(assert (=> d!735323 m!2931903))

(declare-fun m!2931905 () Bool)

(assert (=> b!2595655 m!2931905))

(assert (=> b!2595542 d!735323))

(declare-fun d!735325 () Bool)

(declare-fun lt!914047 () Bool)

(assert (=> d!735325 (= lt!914047 (set.member (h!35306 lt!913950) (content!4195 (t!212999 lt!913950))))))

(declare-fun e!1637993 () Bool)

(assert (=> d!735325 (= lt!914047 e!1637993)))

(declare-fun res!1092328 () Bool)

(assert (=> d!735325 (=> (not res!1092328) (not e!1637993))))

(assert (=> d!735325 (= res!1092328 (is-Cons!29886 (t!212999 lt!913950)))))

(assert (=> d!735325 (= (contains!5434 (t!212999 lt!913950) (h!35306 lt!913950)) lt!914047)))

(declare-fun b!2595656 () Bool)

(declare-fun e!1637994 () Bool)

(assert (=> b!2595656 (= e!1637993 e!1637994)))

(declare-fun res!1092329 () Bool)

(assert (=> b!2595656 (=> res!1092329 e!1637994)))

(assert (=> b!2595656 (= res!1092329 (= (h!35306 (t!212999 lt!913950)) (h!35306 lt!913950)))))

(declare-fun b!2595657 () Bool)

(assert (=> b!2595657 (= e!1637994 (contains!5434 (t!212999 (t!212999 lt!913950)) (h!35306 lt!913950)))))

(assert (= (and d!735325 res!1092328) b!2595656))

(assert (= (and b!2595656 (not res!1092329)) b!2595657))

(declare-fun m!2931907 () Bool)

(assert (=> d!735325 m!2931907))

(declare-fun m!2931909 () Bool)

(assert (=> d!735325 m!2931909))

(declare-fun m!2931911 () Bool)

(assert (=> b!2595657 m!2931911))

(assert (=> b!2595517 d!735325))

(declare-fun d!735327 () Bool)

(declare-fun lt!914048 () Int)

(assert (=> d!735327 (>= lt!914048 0)))

(declare-fun e!1637995 () Int)

(assert (=> d!735327 (= lt!914048 e!1637995)))

(declare-fun c!418252 () Bool)

(assert (=> d!735327 (= c!418252 (is-Nil!29886 (t!212999 l2!1515)))))

(assert (=> d!735327 (= (size!23191 (t!212999 l2!1515)) lt!914048)))

(declare-fun b!2595658 () Bool)

(assert (=> b!2595658 (= e!1637995 0)))

(declare-fun b!2595659 () Bool)

(assert (=> b!2595659 (= e!1637995 (+ 1 (size!23191 (t!212999 (t!212999 l2!1515)))))))

(assert (= (and d!735327 c!418252) b!2595658))

(assert (= (and d!735327 (not c!418252)) b!2595659))

(declare-fun m!2931913 () Bool)

(assert (=> b!2595659 m!2931913))

(assert (=> b!2595538 d!735327))

(declare-fun d!735329 () Bool)

(declare-fun res!1092330 () Bool)

(declare-fun e!1637996 () Bool)

(assert (=> d!735329 (=> res!1092330 e!1637996)))

(assert (=> d!735329 (= res!1092330 (is-Nil!29886 (-!163 l2!1515 (h!35306 l1!1546))))))

(assert (=> d!735329 (= (forall!6123 (-!163 l2!1515 (h!35306 l1!1546)) lambda!96833) e!1637996)))

(declare-fun b!2595660 () Bool)

(declare-fun e!1637997 () Bool)

(assert (=> b!2595660 (= e!1637996 e!1637997)))

(declare-fun res!1092331 () Bool)

(assert (=> b!2595660 (=> (not res!1092331) (not e!1637997))))

(assert (=> b!2595660 (= res!1092331 (dynLambda!12643 lambda!96833 (h!35306 (-!163 l2!1515 (h!35306 l1!1546)))))))

(declare-fun b!2595661 () Bool)

(assert (=> b!2595661 (= e!1637997 (forall!6123 (t!212999 (-!163 l2!1515 (h!35306 l1!1546))) lambda!96833))))

(assert (= (and d!735329 (not res!1092330)) b!2595660))

(assert (= (and b!2595660 res!1092331) b!2595661))

(declare-fun b_lambda!77469 () Bool)

(assert (=> (not b_lambda!77469) (not b!2595660)))

(declare-fun m!2931915 () Bool)

(assert (=> b!2595660 m!2931915))

(declare-fun m!2931917 () Bool)

(assert (=> b!2595661 m!2931917))

(assert (=> d!735229 d!735329))

(assert (=> d!735229 d!735221))

(declare-fun d!735331 () Bool)

(assert (=> d!735331 (forall!6123 (-!163 l2!1515 (h!35306 l1!1546)) lambda!96833)))

(assert (=> d!735331 true))

(declare-fun _$93!58 () Unit!43930)

(assert (=> d!735331 (= (choose!15401 l2!1515 (h!35306 l1!1546) lambda!96833) _$93!58)))

(declare-fun bs!472829 () Bool)

(assert (= bs!472829 d!735331))

(assert (=> bs!472829 m!2931617))

(assert (=> bs!472829 m!2931617))

(assert (=> bs!472829 m!2931729))

(assert (=> d!735229 d!735331))

(assert (=> d!735229 d!735215))

(declare-fun b!2595662 () Bool)

(declare-fun e!1638002 () Bool)

(assert (=> b!2595662 (= e!1638002 (dynLambda!12643 lambda!96836 (h!35306 (t!212999 (t!212999 l1!1546)))))))

(declare-fun b!2595663 () Bool)

(declare-fun e!1637999 () B!2171)

(declare-fun e!1638000 () B!2171)

(assert (=> b!2595663 (= e!1637999 e!1638000)))

(declare-fun c!418253 () Bool)

(assert (=> b!2595663 (= c!418253 (is-Cons!29886 (t!212999 (t!212999 l1!1546))))))

(declare-fun b!2595664 () Bool)

(assert (=> b!2595664 (= e!1638000 (getWitness!557 (t!212999 (t!212999 (t!212999 l1!1546))) lambda!96836))))

(declare-fun b!2595666 () Bool)

(declare-fun e!1638001 () Bool)

(declare-fun lt!914049 () B!2171)

(assert (=> b!2595666 (= e!1638001 (contains!5434 (t!212999 (t!212999 l1!1546)) lt!914049))))

(declare-fun b!2595667 () Bool)

(assert (=> b!2595667 (= e!1637999 (h!35306 (t!212999 (t!212999 l1!1546))))))

(declare-fun b!2595665 () Bool)

(declare-fun lt!914050 () Unit!43930)

(declare-fun Unit!43936 () Unit!43930)

(assert (=> b!2595665 (= lt!914050 Unit!43936)))

(assert (=> b!2595665 false))

(assert (=> b!2595665 (= e!1638000 (head!5889 (t!212999 (t!212999 l1!1546))))))

(declare-fun d!735333 () Bool)

(assert (=> d!735333 e!1638001))

(declare-fun res!1092332 () Bool)

(assert (=> d!735333 (=> (not res!1092332) (not e!1638001))))

(assert (=> d!735333 (= res!1092332 (dynLambda!12643 lambda!96836 lt!914049))))

(assert (=> d!735333 (= lt!914049 e!1637999)))

(declare-fun c!418254 () Bool)

(assert (=> d!735333 (= c!418254 e!1638002)))

(declare-fun res!1092333 () Bool)

(assert (=> d!735333 (=> (not res!1092333) (not e!1638002))))

(assert (=> d!735333 (= res!1092333 (is-Cons!29886 (t!212999 (t!212999 l1!1546))))))

(assert (=> d!735333 (exists!935 (t!212999 (t!212999 l1!1546)) lambda!96836)))

(assert (=> d!735333 (= (getWitness!557 (t!212999 (t!212999 l1!1546)) lambda!96836) lt!914049)))

(assert (= (and d!735333 res!1092333) b!2595662))

(assert (= (and d!735333 c!418254) b!2595667))

(assert (= (and d!735333 (not c!418254)) b!2595663))

(assert (= (and b!2595663 c!418253) b!2595664))

(assert (= (and b!2595663 (not c!418253)) b!2595665))

(assert (= (and d!735333 res!1092332) b!2595666))

(declare-fun b_lambda!77471 () Bool)

(assert (=> (not b_lambda!77471) (not b!2595662)))

(declare-fun b_lambda!77473 () Bool)

(assert (=> (not b_lambda!77473) (not d!735333)))

(declare-fun m!2931919 () Bool)

(assert (=> d!735333 m!2931919))

(declare-fun m!2931921 () Bool)

(assert (=> d!735333 m!2931921))

(declare-fun m!2931923 () Bool)

(assert (=> b!2595664 m!2931923))

(declare-fun m!2931925 () Bool)

(assert (=> b!2595665 m!2931925))

(declare-fun m!2931927 () Bool)

(assert (=> b!2595666 m!2931927))

(declare-fun m!2931929 () Bool)

(assert (=> b!2595662 m!2931929))

(assert (=> b!2595567 d!735333))

(declare-fun d!735335 () Bool)

(declare-fun lt!914051 () Bool)

(assert (=> d!735335 (= lt!914051 (set.member (h!35306 lt!913950) (content!4195 (t!212999 l1!1546))))))

(declare-fun e!1638003 () Bool)

(assert (=> d!735335 (= lt!914051 e!1638003)))

(declare-fun res!1092334 () Bool)

(assert (=> d!735335 (=> (not res!1092334) (not e!1638003))))

(assert (=> d!735335 (= res!1092334 (is-Cons!29886 (t!212999 l1!1546)))))

(assert (=> d!735335 (= (contains!5434 (t!212999 l1!1546) (h!35306 lt!913950)) lt!914051)))

(declare-fun b!2595668 () Bool)

(declare-fun e!1638004 () Bool)

(assert (=> b!2595668 (= e!1638003 e!1638004)))

(declare-fun res!1092335 () Bool)

(assert (=> b!2595668 (=> res!1092335 e!1638004)))

(assert (=> b!2595668 (= res!1092335 (= (h!35306 (t!212999 l1!1546)) (h!35306 lt!913950)))))

(declare-fun b!2595669 () Bool)

(assert (=> b!2595669 (= e!1638004 (contains!5434 (t!212999 (t!212999 l1!1546)) (h!35306 lt!913950)))))

(assert (= (and d!735335 res!1092334) b!2595668))

(assert (= (and b!2595668 (not res!1092335)) b!2595669))

(assert (=> d!735335 m!2931901))

(declare-fun m!2931931 () Bool)

(assert (=> d!735335 m!2931931))

(declare-fun m!2931933 () Bool)

(assert (=> b!2595669 m!2931933))

(assert (=> bs!472799 d!735335))

(declare-fun d!735337 () Bool)

(declare-fun res!1092336 () Bool)

(declare-fun e!1638005 () Bool)

(assert (=> d!735337 (=> res!1092336 e!1638005)))

(assert (=> d!735337 (= res!1092336 (is-Nil!29886 (t!212999 l2!1515)))))

(assert (=> d!735337 (= (forall!6123 (t!212999 l2!1515) lambda!96833) e!1638005)))

(declare-fun b!2595670 () Bool)

(declare-fun e!1638006 () Bool)

(assert (=> b!2595670 (= e!1638005 e!1638006)))

(declare-fun res!1092337 () Bool)

(assert (=> b!2595670 (=> (not res!1092337) (not e!1638006))))

(assert (=> b!2595670 (= res!1092337 (dynLambda!12643 lambda!96833 (h!35306 (t!212999 l2!1515))))))

(declare-fun b!2595671 () Bool)

(assert (=> b!2595671 (= e!1638006 (forall!6123 (t!212999 (t!212999 l2!1515)) lambda!96833))))

(assert (= (and d!735337 (not res!1092336)) b!2595670))

(assert (= (and b!2595670 res!1092337) b!2595671))

(declare-fun b_lambda!77475 () Bool)

(assert (=> (not b_lambda!77475) (not b!2595670)))

(declare-fun m!2931935 () Bool)

(assert (=> b!2595670 m!2931935))

(declare-fun m!2931937 () Bool)

(assert (=> b!2595671 m!2931937))

(assert (=> b!2595534 d!735337))

(declare-fun d!735339 () Bool)

(declare-fun lt!914052 () Int)

(assert (=> d!735339 (>= lt!914052 0)))

(declare-fun e!1638007 () Int)

(assert (=> d!735339 (= lt!914052 e!1638007)))

(declare-fun c!418255 () Bool)

(assert (=> d!735339 (= c!418255 (is-Nil!29886 lt!913986))))

(assert (=> d!735339 (= (size!23191 lt!913986) lt!914052)))

(declare-fun b!2595672 () Bool)

(assert (=> b!2595672 (= e!1638007 0)))

(declare-fun b!2595673 () Bool)

(assert (=> b!2595673 (= e!1638007 (+ 1 (size!23191 (t!212999 lt!913986))))))

(assert (= (and d!735339 c!418255) b!2595672))

(assert (= (and d!735339 (not c!418255)) b!2595673))

(declare-fun m!2931939 () Bool)

(assert (=> b!2595673 m!2931939))

(assert (=> d!735221 d!735339))

(assert (=> d!735221 d!735243))

(declare-fun d!735341 () Bool)

(declare-fun lt!914053 () Bool)

(assert (=> d!735341 (= lt!914053 (set.member (h!35306 lt!913950) (content!4195 l1!1546)))))

(declare-fun e!1638008 () Bool)

(assert (=> d!735341 (= lt!914053 e!1638008)))

(declare-fun res!1092338 () Bool)

(assert (=> d!735341 (=> (not res!1092338) (not e!1638008))))

(assert (=> d!735341 (= res!1092338 (is-Cons!29886 l1!1546))))

(assert (=> d!735341 (= (contains!5434 l1!1546 (h!35306 lt!913950)) lt!914053)))

(declare-fun b!2595674 () Bool)

(declare-fun e!1638009 () Bool)

(assert (=> b!2595674 (= e!1638008 e!1638009)))

(declare-fun res!1092339 () Bool)

(assert (=> b!2595674 (=> res!1092339 e!1638009)))

(assert (=> b!2595674 (= res!1092339 (= (h!35306 l1!1546) (h!35306 lt!913950)))))

(declare-fun b!2595675 () Bool)

(assert (=> b!2595675 (= e!1638009 (contains!5434 (t!212999 l1!1546) (h!35306 lt!913950)))))

(assert (= (and d!735341 res!1092338) b!2595674))

(assert (= (and b!2595674 (not res!1092339)) b!2595675))

(assert (=> d!735341 m!2931761))

(declare-fun m!2931941 () Bool)

(assert (=> d!735341 m!2931941))

(assert (=> b!2595675 m!2931783))

(assert (=> bs!472801 d!735341))

(declare-fun d!735343 () Bool)

(declare-fun lt!914054 () Int)

(assert (=> d!735343 (>= lt!914054 0)))

(declare-fun e!1638010 () Int)

(assert (=> d!735343 (= lt!914054 e!1638010)))

(declare-fun c!418256 () Bool)

(assert (=> d!735343 (= c!418256 (is-Nil!29886 (t!212999 lt!913950)))))

(assert (=> d!735343 (= (size!23191 (t!212999 lt!913950)) lt!914054)))

(declare-fun b!2595676 () Bool)

(assert (=> b!2595676 (= e!1638010 0)))

(declare-fun b!2595677 () Bool)

(assert (=> b!2595677 (= e!1638010 (+ 1 (size!23191 (t!212999 (t!212999 lt!913950)))))))

(assert (= (and d!735343 c!418256) b!2595676))

(assert (= (and d!735343 (not c!418256)) b!2595677))

(declare-fun m!2931943 () Bool)

(assert (=> b!2595677 m!2931943))

(assert (=> b!2595530 d!735343))

(declare-fun d!735345 () Bool)

(declare-fun lt!914055 () Bool)

(assert (=> d!735345 (= lt!914055 (set.member (h!35306 (t!212999 l1!1546)) (content!4195 lt!913950)))))

(declare-fun e!1638011 () Bool)

(assert (=> d!735345 (= lt!914055 e!1638011)))

(declare-fun res!1092340 () Bool)

(assert (=> d!735345 (=> (not res!1092340) (not e!1638011))))

(assert (=> d!735345 (= res!1092340 (is-Cons!29886 lt!913950))))

(assert (=> d!735345 (= (contains!5434 lt!913950 (h!35306 (t!212999 l1!1546))) lt!914055)))

(declare-fun b!2595678 () Bool)

(declare-fun e!1638012 () Bool)

(assert (=> b!2595678 (= e!1638011 e!1638012)))

(declare-fun res!1092341 () Bool)

(assert (=> b!2595678 (=> res!1092341 e!1638012)))

(assert (=> b!2595678 (= res!1092341 (= (h!35306 lt!913950) (h!35306 (t!212999 l1!1546))))))

(declare-fun b!2595679 () Bool)

(assert (=> b!2595679 (= e!1638012 (contains!5434 (t!212999 lt!913950) (h!35306 (t!212999 l1!1546))))))

(assert (= (and d!735345 res!1092340) b!2595678))

(assert (= (and b!2595678 (not res!1092341)) b!2595679))

(declare-fun m!2931945 () Bool)

(assert (=> d!735345 m!2931945))

(declare-fun m!2931947 () Bool)

(assert (=> d!735345 m!2931947))

(declare-fun m!2931949 () Bool)

(assert (=> b!2595679 m!2931949))

(assert (=> bs!472804 d!735345))

(declare-fun d!735347 () Bool)

(declare-fun lt!914056 () Bool)

(assert (=> d!735347 (= lt!914056 (set.member lt!913946 (content!4195 (t!212999 l2!1515))))))

(declare-fun e!1638013 () Bool)

(assert (=> d!735347 (= lt!914056 e!1638013)))

(declare-fun res!1092342 () Bool)

(assert (=> d!735347 (=> (not res!1092342) (not e!1638013))))

(assert (=> d!735347 (= res!1092342 (is-Cons!29886 (t!212999 l2!1515)))))

(assert (=> d!735347 (= (contains!5434 (t!212999 l2!1515) lt!913946) lt!914056)))

(declare-fun b!2595680 () Bool)

(declare-fun e!1638014 () Bool)

(assert (=> b!2595680 (= e!1638013 e!1638014)))

(declare-fun res!1092343 () Bool)

(assert (=> b!2595680 (=> res!1092343 e!1638014)))

(assert (=> b!2595680 (= res!1092343 (= (h!35306 (t!212999 l2!1515)) lt!913946))))

(declare-fun b!2595681 () Bool)

(assert (=> b!2595681 (= e!1638014 (contains!5434 (t!212999 (t!212999 l2!1515)) lt!913946))))

(assert (= (and d!735347 res!1092342) b!2595680))

(assert (= (and b!2595680 (not res!1092343)) b!2595681))

(assert (=> d!735347 m!2931899))

(declare-fun m!2931951 () Bool)

(assert (=> d!735347 m!2931951))

(declare-fun m!2931953 () Bool)

(assert (=> b!2595681 m!2931953))

(assert (=> b!2595499 d!735347))

(declare-fun d!735349 () Bool)

(declare-fun res!1092344 () Bool)

(declare-fun e!1638015 () Bool)

(assert (=> d!735349 (=> res!1092344 e!1638015)))

(assert (=> d!735349 (= res!1092344 (is-Nil!29886 (-!163 l2!1515 (h!35306 l1!1546))))))

(assert (=> d!735349 (= (noDuplicate!434 (-!163 l2!1515 (h!35306 l1!1546))) e!1638015)))

(declare-fun b!2595682 () Bool)

(declare-fun e!1638016 () Bool)

(assert (=> b!2595682 (= e!1638015 e!1638016)))

(declare-fun res!1092345 () Bool)

(assert (=> b!2595682 (=> (not res!1092345) (not e!1638016))))

(assert (=> b!2595682 (= res!1092345 (not (contains!5434 (t!212999 (-!163 l2!1515 (h!35306 l1!1546))) (h!35306 (-!163 l2!1515 (h!35306 l1!1546))))))))

(declare-fun b!2595683 () Bool)

(assert (=> b!2595683 (= e!1638016 (noDuplicate!434 (t!212999 (-!163 l2!1515 (h!35306 l1!1546)))))))

(assert (= (and d!735349 (not res!1092344)) b!2595682))

(assert (= (and b!2595682 res!1092345) b!2595683))

(declare-fun m!2931955 () Bool)

(assert (=> b!2595682 m!2931955))

(declare-fun m!2931957 () Bool)

(assert (=> b!2595683 m!2931957))

(assert (=> d!735231 d!735349))

(assert (=> d!735231 d!735221))

(declare-fun d!735351 () Bool)

(assert (=> d!735351 (noDuplicate!434 (-!163 l2!1515 (h!35306 l1!1546)))))

(assert (=> d!735351 true))

(declare-fun _$92!348 () Unit!43930)

(assert (=> d!735351 (= (choose!15402 l2!1515 (h!35306 l1!1546)) _$92!348)))

(declare-fun bs!472830 () Bool)

(assert (= bs!472830 d!735351))

(assert (=> bs!472830 m!2931617))

(assert (=> bs!472830 m!2931617))

(assert (=> bs!472830 m!2931739))

(assert (=> d!735231 d!735351))

(assert (=> d!735231 d!735215))

(declare-fun bs!472831 () Bool)

(declare-fun d!735353 () Bool)

(assert (= bs!472831 (and d!735353 d!735251)))

(declare-fun lambda!96875 () Int)

(assert (=> bs!472831 (= (= lambda!96865 lambda!96836) (= lambda!96875 lambda!96862))))

(declare-fun bs!472832 () Bool)

(assert (= bs!472832 (and d!735353 b!2595436)))

(assert (=> bs!472832 (not (= lambda!96875 lambda!96833))))

(declare-fun bs!472833 () Bool)

(assert (= bs!472833 (and d!735353 d!735213)))

(assert (=> bs!472833 (not (= lambda!96875 lambda!96859))))

(declare-fun bs!472834 () Bool)

(assert (= bs!472834 (and d!735353 b!2595429)))

(assert (=> bs!472834 (not (= lambda!96875 lambda!96834))))

(declare-fun bs!472835 () Bool)

(assert (= bs!472835 (and d!735353 d!735253)))

(assert (=> bs!472835 (not (= lambda!96875 lambda!96865))))

(declare-fun bs!472836 () Bool)

(assert (= bs!472836 (and d!735353 b!2595428)))

(assert (=> bs!472836 (not (= lambda!96875 lambda!96836))))

(assert (=> bs!472834 (not (= lambda!96875 lambda!96835))))

(assert (=> d!735353 true))

(assert (=> d!735353 (< (dynLambda!12644 order!15901 lambda!96865) (dynLambda!12644 order!15901 lambda!96875))))

(assert (=> d!735353 (= (exists!935 (t!212999 l1!1546) lambda!96865) (not (forall!6123 (t!212999 l1!1546) lambda!96875)))))

(declare-fun bs!472837 () Bool)

(assert (= bs!472837 d!735353))

(declare-fun m!2931959 () Bool)

(assert (=> bs!472837 m!2931959))

(assert (=> d!735253 d!735353))

(declare-fun bs!472838 () Bool)

(declare-fun d!735355 () Bool)

(assert (= bs!472838 (and d!735355 d!735251)))

(declare-fun lambda!96878 () Int)

(assert (=> bs!472838 (not (= lambda!96878 lambda!96862))))

(declare-fun bs!472839 () Bool)

(assert (= bs!472839 (and d!735355 b!2595436)))

(assert (=> bs!472839 (not (= lambda!96878 lambda!96833))))

(declare-fun bs!472840 () Bool)

(assert (= bs!472840 (and d!735355 d!735213)))

(assert (=> bs!472840 (not (= lambda!96878 lambda!96859))))

(declare-fun bs!472841 () Bool)

(assert (= bs!472841 (and d!735355 b!2595429)))

(assert (=> bs!472841 (not (= lambda!96878 lambda!96834))))

(declare-fun bs!472842 () Bool)

(assert (= bs!472842 (and d!735355 d!735253)))

(assert (=> bs!472842 (= lambda!96878 lambda!96865)))

(declare-fun bs!472843 () Bool)

(assert (= bs!472843 (and d!735355 d!735353)))

(assert (=> bs!472843 (not (= lambda!96878 lambda!96875))))

(declare-fun bs!472844 () Bool)

(assert (= bs!472844 (and d!735355 b!2595428)))

(assert (=> bs!472844 (= lambda!96878 lambda!96836)))

(assert (=> bs!472841 (not (= lambda!96878 lambda!96835))))

(assert (=> d!735355 true))

(assert (=> d!735355 (exists!935 (t!212999 l1!1546) lambda!96878)))

(assert (=> d!735355 true))

(declare-fun _$90!931 () Unit!43930)

(assert (=> d!735355 (= (choose!15403 (t!212999 l1!1546) lt!913950) _$90!931)))

(declare-fun bs!472845 () Bool)

(assert (= bs!472845 d!735355))

(declare-fun m!2931961 () Bool)

(assert (=> bs!472845 m!2931961))

(assert (=> d!735253 d!735355))

(declare-fun d!735357 () Bool)

(declare-fun res!1092346 () Bool)

(declare-fun e!1638020 () Bool)

(assert (=> d!735357 (=> res!1092346 e!1638020)))

(assert (=> d!735357 (= res!1092346 (is-Nil!29886 (t!212999 l1!1546)))))

(assert (=> d!735357 (= (noDuplicate!434 (t!212999 l1!1546)) e!1638020)))

(declare-fun b!2595684 () Bool)

(declare-fun e!1638021 () Bool)

(assert (=> b!2595684 (= e!1638020 e!1638021)))

(declare-fun res!1092347 () Bool)

(assert (=> b!2595684 (=> (not res!1092347) (not e!1638021))))

(assert (=> b!2595684 (= res!1092347 (not (contains!5434 (t!212999 (t!212999 l1!1546)) (h!35306 (t!212999 l1!1546)))))))

(declare-fun b!2595685 () Bool)

(assert (=> b!2595685 (= e!1638021 (noDuplicate!434 (t!212999 (t!212999 l1!1546))))))

(assert (= (and d!735357 (not res!1092346)) b!2595684))

(assert (= (and b!2595684 res!1092347) b!2595685))

(declare-fun m!2931963 () Bool)

(assert (=> b!2595684 m!2931963))

(declare-fun m!2931965 () Bool)

(assert (=> b!2595685 m!2931965))

(assert (=> d!735253 d!735357))

(declare-fun d!735359 () Bool)

(declare-fun res!1092348 () Bool)

(declare-fun e!1638022 () Bool)

(assert (=> d!735359 (=> res!1092348 e!1638022)))

(assert (=> d!735359 (= res!1092348 (is-Nil!29886 (t!212999 lt!913950)))))

(assert (=> d!735359 (= (forall!6123 (t!212999 lt!913950) lambda!96835) e!1638022)))

(declare-fun b!2595686 () Bool)

(declare-fun e!1638023 () Bool)

(assert (=> b!2595686 (= e!1638022 e!1638023)))

(declare-fun res!1092349 () Bool)

(assert (=> b!2595686 (=> (not res!1092349) (not e!1638023))))

(assert (=> b!2595686 (= res!1092349 (dynLambda!12643 lambda!96835 (h!35306 (t!212999 lt!913950))))))

(declare-fun b!2595687 () Bool)

(assert (=> b!2595687 (= e!1638023 (forall!6123 (t!212999 (t!212999 lt!913950)) lambda!96835))))

(assert (= (and d!735359 (not res!1092348)) b!2595686))

(assert (= (and b!2595686 res!1092349) b!2595687))

(declare-fun b_lambda!77477 () Bool)

(assert (=> (not b_lambda!77477) (not b!2595686)))

(declare-fun m!2931967 () Bool)

(assert (=> b!2595686 m!2931967))

(declare-fun m!2931969 () Bool)

(assert (=> b!2595687 m!2931969))

(assert (=> b!2595485 d!735359))

(declare-fun d!735361 () Bool)

(declare-fun c!418257 () Bool)

(assert (=> d!735361 (= c!418257 (is-Nil!29886 l1!1546))))

(declare-fun e!1638024 () (Set B!2171))

(assert (=> d!735361 (= (content!4195 l1!1546) e!1638024)))

(declare-fun b!2595688 () Bool)

(assert (=> b!2595688 (= e!1638024 (as set.empty (Set B!2171)))))

(declare-fun b!2595689 () Bool)

(assert (=> b!2595689 (= e!1638024 (set.union (set.insert (h!35306 l1!1546) (as set.empty (Set B!2171))) (content!4195 (t!212999 l1!1546))))))

(assert (= (and d!735361 c!418257) b!2595688))

(assert (= (and d!735361 (not c!418257)) b!2595689))

(assert (=> b!2595689 m!2931719))

(assert (=> b!2595689 m!2931901))

(assert (=> d!735247 d!735361))

(assert (=> d!735213 d!735207))

(declare-fun d!735363 () Bool)

(declare-fun res!1092350 () Bool)

(declare-fun e!1638025 () Bool)

(assert (=> d!735363 (=> res!1092350 e!1638025)))

(assert (=> d!735363 (= res!1092350 (is-Nil!29886 lt!913950))))

(assert (=> d!735363 (= (forall!6123 lt!913950 lambda!96859) e!1638025)))

(declare-fun b!2595690 () Bool)

(declare-fun e!1638026 () Bool)

(assert (=> b!2595690 (= e!1638025 e!1638026)))

(declare-fun res!1092351 () Bool)

(assert (=> b!2595690 (=> (not res!1092351) (not e!1638026))))

(assert (=> b!2595690 (= res!1092351 (dynLambda!12643 lambda!96859 (h!35306 lt!913950)))))

(declare-fun b!2595691 () Bool)

(assert (=> b!2595691 (= e!1638026 (forall!6123 (t!212999 lt!913950) lambda!96859))))

(assert (= (and d!735363 (not res!1092350)) b!2595690))

(assert (= (and b!2595690 res!1092351) b!2595691))

(declare-fun b_lambda!77479 () Bool)

(assert (=> (not b_lambda!77479) (not b!2595690)))

(declare-fun m!2931971 () Bool)

(assert (=> b!2595690 m!2931971))

(declare-fun m!2931973 () Bool)

(assert (=> b!2595691 m!2931973))

(assert (=> d!735213 d!735363))

(declare-fun bs!472846 () Bool)

(declare-fun d!735365 () Bool)

(assert (= bs!472846 d!735365))

(assert (=> bs!472846 m!2931597))

(declare-fun bs!472847 () Bool)

(assert (= bs!472847 (and d!735365 d!735251)))

(declare-fun lambda!96881 () Int)

(assert (=> bs!472847 (not (= lambda!96881 lambda!96862))))

(declare-fun bs!472848 () Bool)

(assert (= bs!472848 (and d!735365 d!735355)))

(assert (=> bs!472848 (not (= lambda!96881 lambda!96878))))

(declare-fun bs!472849 () Bool)

(assert (= bs!472849 (and d!735365 b!2595436)))

(assert (=> bs!472849 (= (= (tail!4152 l1!1546) l1!1546) (= lambda!96881 lambda!96833))))

(declare-fun bs!472850 () Bool)

(assert (= bs!472850 (and d!735365 d!735213)))

(assert (=> bs!472850 (= lambda!96881 lambda!96859)))

(declare-fun bs!472851 () Bool)

(assert (= bs!472851 (and d!735365 b!2595429)))

(assert (=> bs!472851 (= lambda!96881 lambda!96834)))

(declare-fun bs!472852 () Bool)

(assert (= bs!472852 (and d!735365 d!735253)))

(assert (=> bs!472852 (not (= lambda!96881 lambda!96865))))

(declare-fun bs!472853 () Bool)

(assert (= bs!472853 (and d!735365 d!735353)))

(assert (=> bs!472853 (not (= lambda!96881 lambda!96875))))

(declare-fun bs!472854 () Bool)

(assert (= bs!472854 (and d!735365 b!2595428)))

(assert (=> bs!472854 (not (= lambda!96881 lambda!96836))))

(assert (=> bs!472851 (= (= (tail!4152 l1!1546) (t!212999 l1!1546)) (= lambda!96881 lambda!96835))))

(assert (=> d!735365 true))

(assert (=> d!735365 (forall!6123 lt!913950 lambda!96881)))

(assert (=> d!735365 true))

(declare-fun _$91!443 () Unit!43930)

(assert (=> d!735365 (= (choose!15399 lt!913950 l1!1546 (h!35306 l1!1546)) _$91!443)))

(declare-fun m!2931975 () Bool)

(assert (=> bs!472846 m!2931975))

(assert (=> d!735213 d!735365))

(declare-fun d!735367 () Bool)

(assert (=> d!735367 (= (isEmpty!17130 l1!1546) (is-Nil!29886 l1!1546))))

(assert (=> d!735213 d!735367))

(declare-fun d!735369 () Bool)

(declare-fun lt!914057 () Int)

(assert (=> d!735369 (>= lt!914057 0)))

(declare-fun e!1638029 () Int)

(assert (=> d!735369 (= lt!914057 e!1638029)))

(declare-fun c!418258 () Bool)

(assert (=> d!735369 (= c!418258 (is-Nil!29886 (t!212999 l1!1546)))))

(assert (=> d!735369 (= (size!23191 (t!212999 l1!1546)) lt!914057)))

(declare-fun b!2595692 () Bool)

(assert (=> b!2595692 (= e!1638029 0)))

(declare-fun b!2595693 () Bool)

(assert (=> b!2595693 (= e!1638029 (+ 1 (size!23191 (t!212999 (t!212999 l1!1546)))))))

(assert (= (and d!735369 c!418258) b!2595692))

(assert (= (and d!735369 (not c!418258)) b!2595693))

(declare-fun m!2931977 () Bool)

(assert (=> b!2595693 m!2931977))

(assert (=> b!2595540 d!735369))

(declare-fun d!735371 () Bool)

(declare-fun lt!914058 () Bool)

(assert (=> d!735371 (= lt!914058 (set.member lt!914014 (content!4195 lt!913950)))))

(declare-fun e!1638030 () Bool)

(assert (=> d!735371 (= lt!914058 e!1638030)))

(declare-fun res!1092352 () Bool)

(assert (=> d!735371 (=> (not res!1092352) (not e!1638030))))

(assert (=> d!735371 (= res!1092352 (is-Cons!29886 lt!913950))))

(assert (=> d!735371 (= (contains!5434 lt!913950 lt!914014) lt!914058)))

(declare-fun b!2595694 () Bool)

(declare-fun e!1638031 () Bool)

(assert (=> b!2595694 (= e!1638030 e!1638031)))

(declare-fun res!1092353 () Bool)

(assert (=> b!2595694 (=> res!1092353 e!1638031)))

(assert (=> b!2595694 (= res!1092353 (= (h!35306 lt!913950) lt!914014))))

(declare-fun b!2595695 () Bool)

(assert (=> b!2595695 (= e!1638031 (contains!5434 (t!212999 lt!913950) lt!914014))))

(assert (= (and d!735371 res!1092352) b!2595694))

(assert (= (and b!2595694 (not res!1092353)) b!2595695))

(assert (=> d!735371 m!2931945))

(declare-fun m!2931979 () Bool)

(assert (=> d!735371 m!2931979))

(declare-fun m!2931981 () Bool)

(assert (=> b!2595695 m!2931981))

(assert (=> bs!472803 d!735371))

(declare-fun d!735373 () Bool)

(declare-fun lt!914059 () Bool)

(assert (=> d!735373 (= lt!914059 (set.member (h!35306 l1!1546) (content!4195 (t!212999 l1!1546))))))

(declare-fun e!1638032 () Bool)

(assert (=> d!735373 (= lt!914059 e!1638032)))

(declare-fun res!1092354 () Bool)

(assert (=> d!735373 (=> (not res!1092354) (not e!1638032))))

(assert (=> d!735373 (= res!1092354 (is-Cons!29886 (t!212999 l1!1546)))))

(assert (=> d!735373 (= (contains!5434 (t!212999 l1!1546) (h!35306 l1!1546)) lt!914059)))

(declare-fun b!2595696 () Bool)

(declare-fun e!1638033 () Bool)

(assert (=> b!2595696 (= e!1638032 e!1638033)))

(declare-fun res!1092355 () Bool)

(assert (=> b!2595696 (=> res!1092355 e!1638033)))

(assert (=> b!2595696 (= res!1092355 (= (h!35306 (t!212999 l1!1546)) (h!35306 l1!1546)))))

(declare-fun b!2595697 () Bool)

(assert (=> b!2595697 (= e!1638033 (contains!5434 (t!212999 (t!212999 l1!1546)) (h!35306 l1!1546)))))

(assert (= (and d!735373 res!1092354) b!2595696))

(assert (= (and b!2595696 (not res!1092355)) b!2595697))

(assert (=> d!735373 m!2931901))

(declare-fun m!2931983 () Bool)

(assert (=> d!735373 m!2931983))

(declare-fun m!2931985 () Bool)

(assert (=> b!2595697 m!2931985))

(assert (=> b!2595535 d!735373))

(assert (=> b!2595536 d!735357))

(declare-fun d!735375 () Bool)

(declare-fun res!1092356 () Bool)

(declare-fun e!1638034 () Bool)

(assert (=> d!735375 (=> res!1092356 e!1638034)))

(assert (=> d!735375 (= res!1092356 (is-Nil!29886 (t!212999 lt!913950)))))

(assert (=> d!735375 (= (forall!6123 (t!212999 lt!913950) lambda!96833) e!1638034)))

(declare-fun b!2595698 () Bool)

(declare-fun e!1638035 () Bool)

(assert (=> b!2595698 (= e!1638034 e!1638035)))

(declare-fun res!1092357 () Bool)

(assert (=> b!2595698 (=> (not res!1092357) (not e!1638035))))

(assert (=> b!2595698 (= res!1092357 (dynLambda!12643 lambda!96833 (h!35306 (t!212999 lt!913950))))))

(declare-fun b!2595699 () Bool)

(assert (=> b!2595699 (= e!1638035 (forall!6123 (t!212999 (t!212999 lt!913950)) lambda!96833))))

(assert (= (and d!735375 (not res!1092356)) b!2595698))

(assert (= (and b!2595698 res!1092357) b!2595699))

(declare-fun b_lambda!77481 () Bool)

(assert (=> (not b_lambda!77481) (not b!2595698)))

(declare-fun m!2931987 () Bool)

(assert (=> b!2595698 m!2931987))

(declare-fun m!2931989 () Bool)

(assert (=> b!2595699 m!2931989))

(assert (=> b!2595501 d!735375))

(assert (=> d!735249 d!735251))

(declare-fun d!735377 () Bool)

(declare-fun c!418259 () Bool)

(assert (=> d!735377 (= c!418259 (is-Nil!29886 lt!913986))))

(declare-fun e!1638036 () (Set B!2171))

(assert (=> d!735377 (= (content!4195 lt!913986) e!1638036)))

(declare-fun b!2595700 () Bool)

(assert (=> b!2595700 (= e!1638036 (as set.empty (Set B!2171)))))

(declare-fun b!2595701 () Bool)

(assert (=> b!2595701 (= e!1638036 (set.union (set.insert (h!35306 lt!913986) (as set.empty (Set B!2171))) (content!4195 (t!212999 lt!913986))))))

(assert (= (and d!735377 c!418259) b!2595700))

(assert (= (and d!735377 (not c!418259)) b!2595701))

(declare-fun m!2931991 () Bool)

(assert (=> b!2595701 m!2931991))

(declare-fun m!2931993 () Bool)

(assert (=> b!2595701 m!2931993))

(assert (=> b!2595516 d!735377))

(assert (=> b!2595516 d!735321))

(declare-fun d!735379 () Bool)

(declare-fun lt!914060 () Bool)

(assert (=> d!735379 (= lt!914060 (set.member (h!35306 l2!1515) (content!4195 l1!1546)))))

(declare-fun e!1638037 () Bool)

(assert (=> d!735379 (= lt!914060 e!1638037)))

(declare-fun res!1092358 () Bool)

(assert (=> d!735379 (=> (not res!1092358) (not e!1638037))))

(assert (=> d!735379 (= res!1092358 (is-Cons!29886 l1!1546))))

(assert (=> d!735379 (= (contains!5434 l1!1546 (h!35306 l2!1515)) lt!914060)))

(declare-fun b!2595702 () Bool)

(declare-fun e!1638038 () Bool)

(assert (=> b!2595702 (= e!1638037 e!1638038)))

(declare-fun res!1092359 () Bool)

(assert (=> b!2595702 (=> res!1092359 e!1638038)))

(assert (=> b!2595702 (= res!1092359 (= (h!35306 l1!1546) (h!35306 l2!1515)))))

(declare-fun b!2595703 () Bool)

(assert (=> b!2595703 (= e!1638038 (contains!5434 (t!212999 l1!1546) (h!35306 l2!1515)))))

(assert (= (and d!735379 res!1092358) b!2595702))

(assert (= (and b!2595702 (not res!1092359)) b!2595703))

(assert (=> d!735379 m!2931761))

(declare-fun m!2931995 () Bool)

(assert (=> d!735379 m!2931995))

(declare-fun m!2931997 () Bool)

(assert (=> b!2595703 m!2931997))

(assert (=> bs!472800 d!735379))

(assert (=> d!735227 d!735243))

(assert (=> d!735227 d!735221))

(declare-fun d!735381 () Bool)

(assert (=> d!735381 (= (size!23191 (-!163 l2!1515 (h!35306 l1!1546))) (- (size!23191 l2!1515) 1))))

(assert (=> d!735381 true))

(declare-fun _$94!409 () Unit!43930)

(assert (=> d!735381 (= (choose!15400 l2!1515 (h!35306 l1!1546)) _$94!409)))

(declare-fun bs!472855 () Bool)

(assert (= bs!472855 d!735381))

(assert (=> bs!472855 m!2931617))

(assert (=> bs!472855 m!2931617))

(assert (=> bs!472855 m!2931727))

(assert (=> bs!472855 m!2931631))

(assert (=> d!735227 d!735381))

(assert (=> d!735227 d!735215))

(declare-fun d!735383 () Bool)

(declare-fun lt!914061 () Int)

(assert (=> d!735383 (>= lt!914061 0)))

(declare-fun e!1638040 () Int)

(assert (=> d!735383 (= lt!914061 e!1638040)))

(declare-fun c!418260 () Bool)

(assert (=> d!735383 (= c!418260 (is-Nil!29886 (-!163 l2!1515 (h!35306 l1!1546))))))

(assert (=> d!735383 (= (size!23191 (-!163 l2!1515 (h!35306 l1!1546))) lt!914061)))

(declare-fun b!2595704 () Bool)

(assert (=> b!2595704 (= e!1638040 0)))

(declare-fun b!2595705 () Bool)

(assert (=> b!2595705 (= e!1638040 (+ 1 (size!23191 (t!212999 (-!163 l2!1515 (h!35306 l1!1546))))))))

(assert (= (and d!735383 c!418260) b!2595704))

(assert (= (and d!735383 (not c!418260)) b!2595705))

(declare-fun m!2931999 () Bool)

(assert (=> b!2595705 m!2931999))

(assert (=> d!735227 d!735383))

(assert (=> d!735217 d!735321))

(declare-fun b!2595706 () Bool)

(declare-fun e!1638041 () List!29986)

(declare-fun e!1638043 () List!29986)

(assert (=> b!2595706 (= e!1638041 e!1638043)))

(declare-fun c!418261 () Bool)

(assert (=> b!2595706 (= c!418261 (= (h!35306 l1!1546) (h!35306 (t!212999 l2!1515))))))

(declare-fun b!2595707 () Bool)

(declare-fun call!167321 () List!29986)

(assert (=> b!2595707 (= e!1638043 (Cons!29886 (h!35306 (t!212999 l2!1515)) call!167321))))

(declare-fun bm!167316 () Bool)

(assert (=> bm!167316 (= call!167321 (-!163 (t!212999 (t!212999 l2!1515)) (h!35306 l1!1546)))))

(declare-fun d!735385 () Bool)

(declare-fun e!1638042 () Bool)

(assert (=> d!735385 e!1638042))

(declare-fun res!1092360 () Bool)

(assert (=> d!735385 (=> (not res!1092360) (not e!1638042))))

(declare-fun lt!914062 () List!29986)

(assert (=> d!735385 (= res!1092360 (<= (size!23191 lt!914062) (size!23191 (t!212999 l2!1515))))))

(assert (=> d!735385 (= lt!914062 e!1638041)))

(declare-fun c!418262 () Bool)

(assert (=> d!735385 (= c!418262 (is-Cons!29886 (t!212999 l2!1515)))))

(assert (=> d!735385 (= (-!163 (t!212999 l2!1515) (h!35306 l1!1546)) lt!914062)))

(declare-fun b!2595708 () Bool)

(assert (=> b!2595708 (= e!1638041 Nil!29886)))

(declare-fun b!2595709 () Bool)

(assert (=> b!2595709 (= e!1638043 call!167321)))

(declare-fun b!2595710 () Bool)

(assert (=> b!2595710 (= e!1638042 (= (content!4195 lt!914062) (set.minus (content!4195 (t!212999 l2!1515)) (set.insert (h!35306 l1!1546) (as set.empty (Set B!2171))))))))

(assert (= (and d!735385 c!418262) b!2595706))

(assert (= (and d!735385 (not c!418262)) b!2595708))

(assert (= (and b!2595706 c!418261) b!2595709))

(assert (= (and b!2595706 (not c!418261)) b!2595707))

(assert (= (or b!2595709 b!2595707) bm!167316))

(assert (= (and d!735385 res!1092360) b!2595710))

(declare-fun m!2932001 () Bool)

(assert (=> bm!167316 m!2932001))

(declare-fun m!2932003 () Bool)

(assert (=> d!735385 m!2932003))

(assert (=> d!735385 m!2931757))

(declare-fun m!2932005 () Bool)

(assert (=> b!2595710 m!2932005))

(assert (=> b!2595710 m!2931899))

(assert (=> b!2595710 m!2931719))

(assert (=> bm!167312 d!735385))

(declare-fun d!735387 () Bool)

(declare-fun res!1092361 () Bool)

(declare-fun e!1638044 () Bool)

(assert (=> d!735387 (=> res!1092361 e!1638044)))

(assert (=> d!735387 (= res!1092361 (is-Nil!29886 (t!212999 lt!913950)))))

(assert (=> d!735387 (= (forall!6123 (t!212999 lt!913950) lambda!96834) e!1638044)))

(declare-fun b!2595711 () Bool)

(declare-fun e!1638045 () Bool)

(assert (=> b!2595711 (= e!1638044 e!1638045)))

(declare-fun res!1092362 () Bool)

(assert (=> b!2595711 (=> (not res!1092362) (not e!1638045))))

(assert (=> b!2595711 (= res!1092362 (dynLambda!12643 lambda!96834 (h!35306 (t!212999 lt!913950))))))

(declare-fun b!2595712 () Bool)

(assert (=> b!2595712 (= e!1638045 (forall!6123 (t!212999 (t!212999 lt!913950)) lambda!96834))))

(assert (= (and d!735387 (not res!1092361)) b!2595711))

(assert (= (and b!2595711 res!1092362) b!2595712))

(declare-fun b_lambda!77483 () Bool)

(assert (=> (not b_lambda!77483) (not b!2595711)))

(declare-fun m!2932007 () Bool)

(assert (=> b!2595711 m!2932007))

(declare-fun m!2932009 () Bool)

(assert (=> b!2595712 m!2932009))

(assert (=> b!2595487 d!735387))

(declare-fun d!735389 () Bool)

(declare-fun lt!914063 () Bool)

(assert (=> d!735389 (= lt!914063 (set.member (h!35306 l1!1546) (content!4195 (t!212999 l2!1515))))))

(declare-fun e!1638046 () Bool)

(assert (=> d!735389 (= lt!914063 e!1638046)))

(declare-fun res!1092363 () Bool)

(assert (=> d!735389 (=> (not res!1092363) (not e!1638046))))

(assert (=> d!735389 (= res!1092363 (is-Cons!29886 (t!212999 l2!1515)))))

(assert (=> d!735389 (= (contains!5434 (t!212999 l2!1515) (h!35306 l1!1546)) lt!914063)))

(declare-fun b!2595713 () Bool)

(declare-fun e!1638047 () Bool)

(assert (=> b!2595713 (= e!1638046 e!1638047)))

(declare-fun res!1092364 () Bool)

(assert (=> b!2595713 (=> res!1092364 e!1638047)))

(assert (=> b!2595713 (= res!1092364 (= (h!35306 (t!212999 l2!1515)) (h!35306 l1!1546)))))

(declare-fun b!2595714 () Bool)

(assert (=> b!2595714 (= e!1638047 (contains!5434 (t!212999 (t!212999 l2!1515)) (h!35306 l1!1546)))))

(assert (= (and d!735389 res!1092363) b!2595713))

(assert (= (and b!2595713 (not res!1092364)) b!2595714))

(assert (=> d!735389 m!2931899))

(declare-fun m!2932011 () Bool)

(assert (=> d!735389 m!2932011))

(declare-fun m!2932013 () Bool)

(assert (=> b!2595714 m!2932013))

(assert (=> b!2595532 d!735389))

(declare-fun d!735391 () Bool)

(assert (=> d!735391 (= (head!5889 (t!212999 l1!1546)) (h!35306 (t!212999 l1!1546)))))

(assert (=> b!2595568 d!735391))

(declare-fun d!735393 () Bool)

(declare-fun res!1092365 () Bool)

(declare-fun e!1638048 () Bool)

(assert (=> d!735393 (=> res!1092365 e!1638048)))

(assert (=> d!735393 (= res!1092365 (is-Nil!29886 (t!212999 lt!913950)))))

(assert (=> d!735393 (= (noDuplicate!434 (t!212999 lt!913950)) e!1638048)))

(declare-fun b!2595715 () Bool)

(declare-fun e!1638049 () Bool)

(assert (=> b!2595715 (= e!1638048 e!1638049)))

(declare-fun res!1092366 () Bool)

(assert (=> b!2595715 (=> (not res!1092366) (not e!1638049))))

(assert (=> b!2595715 (= res!1092366 (not (contains!5434 (t!212999 (t!212999 lt!913950)) (h!35306 (t!212999 lt!913950)))))))

(declare-fun b!2595716 () Bool)

(assert (=> b!2595716 (= e!1638049 (noDuplicate!434 (t!212999 (t!212999 lt!913950))))))

(assert (= (and d!735393 (not res!1092365)) b!2595715))

(assert (= (and b!2595715 res!1092366) b!2595716))

(declare-fun m!2932015 () Bool)

(assert (=> b!2595715 m!2932015))

(declare-fun m!2932017 () Bool)

(assert (=> b!2595716 m!2932017))

(assert (=> b!2595518 d!735393))

(declare-fun d!735395 () Bool)

(declare-fun lt!914064 () Bool)

(assert (=> d!735395 (= lt!914064 (set.member (h!35306 l2!1515) (content!4195 (t!212999 l2!1515))))))

(declare-fun e!1638050 () Bool)

(assert (=> d!735395 (= lt!914064 e!1638050)))

(declare-fun res!1092367 () Bool)

(assert (=> d!735395 (=> (not res!1092367) (not e!1638050))))

(assert (=> d!735395 (= res!1092367 (is-Cons!29886 (t!212999 l2!1515)))))

(assert (=> d!735395 (= (contains!5434 (t!212999 l2!1515) (h!35306 l2!1515)) lt!914064)))

(declare-fun b!2595717 () Bool)

(declare-fun e!1638051 () Bool)

(assert (=> b!2595717 (= e!1638050 e!1638051)))

(declare-fun res!1092368 () Bool)

(assert (=> b!2595717 (=> res!1092368 e!1638051)))

(assert (=> b!2595717 (= res!1092368 (= (h!35306 (t!212999 l2!1515)) (h!35306 l2!1515)))))

(declare-fun b!2595718 () Bool)

(assert (=> b!2595718 (= e!1638051 (contains!5434 (t!212999 (t!212999 l2!1515)) (h!35306 l2!1515)))))

(assert (= (and d!735395 res!1092367) b!2595717))

(assert (= (and b!2595717 (not res!1092368)) b!2595718))

(assert (=> d!735395 m!2931899))

(declare-fun m!2932019 () Bool)

(assert (=> d!735395 m!2932019))

(declare-fun m!2932021 () Bool)

(assert (=> b!2595718 m!2932021))

(assert (=> b!2595492 d!735395))

(declare-fun d!735397 () Bool)

(declare-fun res!1092369 () Bool)

(declare-fun e!1638052 () Bool)

(assert (=> d!735397 (=> res!1092369 e!1638052)))

(assert (=> d!735397 (= res!1092369 (is-Nil!29886 (t!212999 l2!1515)))))

(assert (=> d!735397 (= (noDuplicate!434 (t!212999 l2!1515)) e!1638052)))

(declare-fun b!2595719 () Bool)

(declare-fun e!1638053 () Bool)

(assert (=> b!2595719 (= e!1638052 e!1638053)))

(declare-fun res!1092370 () Bool)

(assert (=> b!2595719 (=> (not res!1092370) (not e!1638053))))

(assert (=> b!2595719 (= res!1092370 (not (contains!5434 (t!212999 (t!212999 l2!1515)) (h!35306 (t!212999 l2!1515)))))))

(declare-fun b!2595720 () Bool)

(assert (=> b!2595720 (= e!1638053 (noDuplicate!434 (t!212999 (t!212999 l2!1515))))))

(assert (= (and d!735397 (not res!1092369)) b!2595719))

(assert (= (and b!2595719 res!1092370) b!2595720))

(declare-fun m!2932023 () Bool)

(assert (=> b!2595719 m!2932023))

(declare-fun m!2932025 () Bool)

(assert (=> b!2595720 m!2932025))

(assert (=> b!2595493 d!735397))

(declare-fun d!735399 () Bool)

(declare-fun lt!914065 () Bool)

(assert (=> d!735399 (= lt!914065 (set.member (h!35306 lt!913950) (content!4195 (tail!4152 l1!1546))))))

(declare-fun e!1638054 () Bool)

(assert (=> d!735399 (= lt!914065 e!1638054)))

(declare-fun res!1092371 () Bool)

(assert (=> d!735399 (=> (not res!1092371) (not e!1638054))))

(assert (=> d!735399 (= res!1092371 (is-Cons!29886 (tail!4152 l1!1546)))))

(assert (=> d!735399 (= (contains!5434 (tail!4152 l1!1546) (h!35306 lt!913950)) lt!914065)))

(declare-fun b!2595721 () Bool)

(declare-fun e!1638055 () Bool)

(assert (=> b!2595721 (= e!1638054 e!1638055)))

(declare-fun res!1092372 () Bool)

(assert (=> b!2595721 (=> res!1092372 e!1638055)))

(assert (=> b!2595721 (= res!1092372 (= (h!35306 (tail!4152 l1!1546)) (h!35306 lt!913950)))))

(declare-fun b!2595722 () Bool)

(assert (=> b!2595722 (= e!1638055 (contains!5434 (t!212999 (tail!4152 l1!1546)) (h!35306 lt!913950)))))

(assert (= (and d!735399 res!1092371) b!2595721))

(assert (= (and b!2595721 (not res!1092372)) b!2595722))

(declare-fun m!2932027 () Bool)

(assert (=> d!735399 m!2932027))

(declare-fun m!2932029 () Bool)

(assert (=> d!735399 m!2932029))

(declare-fun m!2932031 () Bool)

(assert (=> b!2595722 m!2932031))

(assert (=> bs!472802 d!735399))

(declare-fun d!735401 () Bool)

(declare-fun lt!914066 () Bool)

(assert (=> d!735401 (= lt!914066 (set.member lt!914014 (content!4195 (t!212999 l1!1546))))))

(declare-fun e!1638056 () Bool)

(assert (=> d!735401 (= lt!914066 e!1638056)))

(declare-fun res!1092373 () Bool)

(assert (=> d!735401 (=> (not res!1092373) (not e!1638056))))

(assert (=> d!735401 (= res!1092373 (is-Cons!29886 (t!212999 l1!1546)))))

(assert (=> d!735401 (= (contains!5434 (t!212999 l1!1546) lt!914014) lt!914066)))

(declare-fun b!2595723 () Bool)

(declare-fun e!1638057 () Bool)

(assert (=> b!2595723 (= e!1638056 e!1638057)))

(declare-fun res!1092374 () Bool)

(assert (=> b!2595723 (=> res!1092374 e!1638057)))

(assert (=> b!2595723 (= res!1092374 (= (h!35306 (t!212999 l1!1546)) lt!914014))))

(declare-fun b!2595724 () Bool)

(assert (=> b!2595724 (= e!1638057 (contains!5434 (t!212999 (t!212999 l1!1546)) lt!914014))))

(assert (= (and d!735401 res!1092373) b!2595723))

(assert (= (and b!2595723 (not res!1092374)) b!2595724))

(assert (=> d!735401 m!2931901))

(declare-fun m!2932033 () Bool)

(assert (=> d!735401 m!2932033))

(declare-fun m!2932035 () Bool)

(assert (=> b!2595724 m!2932035))

(assert (=> b!2595569 d!735401))

(declare-fun b!2595725 () Bool)

(declare-fun e!1638058 () Bool)

(declare-fun tp!823129 () Bool)

(assert (=> b!2595725 (= e!1638058 (and tp_is_empty!13451 tp!823129))))

(assert (=> b!2595586 (= tp!823124 e!1638058)))

(assert (= (and b!2595586 (is-Cons!29886 (t!212999 (t!212999 l1!1546)))) b!2595725))

(declare-fun b!2595726 () Bool)

(declare-fun e!1638059 () Bool)

(declare-fun tp!823130 () Bool)

(assert (=> b!2595726 (= e!1638059 (and tp_is_empty!13451 tp!823130))))

(assert (=> b!2595585 (= tp!823123 e!1638059)))

(assert (= (and b!2595585 (is-Cons!29886 (t!212999 (t!212999 l2!1515)))) b!2595726))

(declare-fun b_lambda!77485 () Bool)

(assert (= b_lambda!77481 (or b!2595436 b_lambda!77485)))

(declare-fun bs!472856 () Bool)

(declare-fun d!735403 () Bool)

(assert (= bs!472856 (and d!735403 b!2595436)))

(assert (=> bs!472856 (= (dynLambda!12643 lambda!96833 (h!35306 (t!212999 lt!913950))) (contains!5434 l1!1546 (h!35306 (t!212999 lt!913950))))))

(declare-fun m!2932037 () Bool)

(assert (=> bs!472856 m!2932037))

(assert (=> b!2595698 d!735403))

(declare-fun b_lambda!77487 () Bool)

(assert (= b_lambda!77483 (or b!2595429 b_lambda!77487)))

(declare-fun bs!472857 () Bool)

(declare-fun d!735405 () Bool)

(assert (= bs!472857 (and d!735405 b!2595429)))

(assert (=> bs!472857 (= (dynLambda!12643 lambda!96834 (h!35306 (t!212999 lt!913950))) (contains!5434 (tail!4152 l1!1546) (h!35306 (t!212999 lt!913950))))))

(declare-fun m!2932039 () Bool)

(assert (=> bs!472857 m!2932039))

(assert (=> b!2595711 d!735405))

(declare-fun b_lambda!77489 () Bool)

(assert (= b_lambda!77467 (or d!735251 b_lambda!77489)))

(declare-fun bs!472858 () Bool)

(declare-fun d!735407 () Bool)

(assert (= bs!472858 (and d!735407 d!735251)))

(assert (=> bs!472858 (= (dynLambda!12643 lambda!96862 (h!35306 (t!212999 l1!1546))) (not (dynLambda!12643 lambda!96836 (h!35306 (t!212999 l1!1546)))))))

(declare-fun b_lambda!77503 () Bool)

(assert (=> (not b_lambda!77503) (not bs!472858)))

(assert (=> bs!472858 m!2931775))

(assert (=> b!2595646 d!735407))

(declare-fun b_lambda!77491 () Bool)

(assert (= b_lambda!77473 (or b!2595428 b_lambda!77491)))

(declare-fun bs!472859 () Bool)

(declare-fun d!735409 () Bool)

(assert (= bs!472859 (and d!735409 b!2595428)))

(assert (=> bs!472859 (= (dynLambda!12643 lambda!96836 lt!914049) (not (contains!5434 lt!913950 lt!914049)))))

(declare-fun m!2932041 () Bool)

(assert (=> bs!472859 m!2932041))

(assert (=> d!735333 d!735409))

(declare-fun b_lambda!77493 () Bool)

(assert (= b_lambda!77479 (or d!735213 b_lambda!77493)))

(declare-fun bs!472860 () Bool)

(declare-fun d!735411 () Bool)

(assert (= bs!472860 (and d!735411 d!735213)))

(assert (=> bs!472860 (= (dynLambda!12643 lambda!96859 (h!35306 lt!913950)) (contains!5434 (tail!4152 l1!1546) (h!35306 lt!913950)))))

(assert (=> bs!472860 m!2931797))

(assert (=> b!2595690 d!735411))

(declare-fun b_lambda!77495 () Bool)

(assert (= b_lambda!77475 (or b!2595436 b_lambda!77495)))

(declare-fun bs!472861 () Bool)

(declare-fun d!735413 () Bool)

(assert (= bs!472861 (and d!735413 b!2595436)))

(assert (=> bs!472861 (= (dynLambda!12643 lambda!96833 (h!35306 (t!212999 l2!1515))) (contains!5434 l1!1546 (h!35306 (t!212999 l2!1515))))))

(declare-fun m!2932043 () Bool)

(assert (=> bs!472861 m!2932043))

(assert (=> b!2595670 d!735413))

(declare-fun b_lambda!77497 () Bool)

(assert (= b_lambda!77471 (or b!2595428 b_lambda!77497)))

(declare-fun bs!472862 () Bool)

(declare-fun d!735415 () Bool)

(assert (= bs!472862 (and d!735415 b!2595428)))

(assert (=> bs!472862 (= (dynLambda!12643 lambda!96836 (h!35306 (t!212999 (t!212999 l1!1546)))) (not (contains!5434 lt!913950 (h!35306 (t!212999 (t!212999 l1!1546))))))))

(declare-fun m!2932045 () Bool)

(assert (=> bs!472862 m!2932045))

(assert (=> b!2595662 d!735415))

(declare-fun b_lambda!77499 () Bool)

(assert (= b_lambda!77477 (or b!2595429 b_lambda!77499)))

(declare-fun bs!472863 () Bool)

(declare-fun d!735417 () Bool)

(assert (= bs!472863 (and d!735417 b!2595429)))

(assert (=> bs!472863 (= (dynLambda!12643 lambda!96835 (h!35306 (t!212999 lt!913950))) (contains!5434 (t!212999 l1!1546) (h!35306 (t!212999 lt!913950))))))

(declare-fun m!2932047 () Bool)

(assert (=> bs!472863 m!2932047))

(assert (=> b!2595686 d!735417))

(declare-fun b_lambda!77501 () Bool)

(assert (= b_lambda!77469 (or b!2595436 b_lambda!77501)))

(declare-fun bs!472864 () Bool)

(declare-fun d!735419 () Bool)

(assert (= bs!472864 (and d!735419 b!2595436)))

(assert (=> bs!472864 (= (dynLambda!12643 lambda!96833 (h!35306 (-!163 l2!1515 (h!35306 l1!1546)))) (contains!5434 l1!1546 (h!35306 (-!163 l2!1515 (h!35306 l1!1546)))))))

(declare-fun m!2932049 () Bool)

(assert (=> bs!472864 m!2932049))

(assert (=> b!2595660 d!735419))

(push 1)

(assert (not b!2595719))

(assert (not b!2595716))

(assert (not b!2595681))

(assert (not bm!167316))

(assert (not b!2595726))

(assert (not b!2595712))

(assert (not b_lambda!77441))

(assert (not b!2595647))

(assert (not b_lambda!77487))

(assert (not b!2595687))

(assert (not b!2595657))

(assert (not d!735355))

(assert (not b!2595664))

(assert (not d!735379))

(assert (not b!2595682))

(assert (not b!2595661))

(assert (not b_lambda!77435))

(assert (not b!2595705))

(assert tp_is_empty!13451)

(assert (not b!2595655))

(assert (not bs!472861))

(assert (not d!735365))

(assert (not b_lambda!77431))

(assert (not b!2595695))

(assert (not b_lambda!77501))

(assert (not b!2595720))

(assert (not d!735385))

(assert (not b!2595691))

(assert (not b_lambda!77485))

(assert (not d!735353))

(assert (not b!2595653))

(assert (not bs!472859))

(assert (not b!2595703))

(assert (not b_lambda!77439))

(assert (not b!2595675))

(assert (not b!2595701))

(assert (not bs!472862))

(assert (not b!2595722))

(assert (not d!735345))

(assert (not b_lambda!77495))

(assert (not b!2595683))

(assert (not b!2595685))

(assert (not b_lambda!77491))

(assert (not d!735351))

(assert (not b!2595714))

(assert (not d!735401))

(assert (not d!735389))

(assert (not bs!472864))

(assert (not b_lambda!77499))

(assert (not b_lambda!77493))

(assert (not b!2595725))

(assert (not b!2595689))

(assert (not d!735325))

(assert (not b!2595665))

(assert (not b!2595718))

(assert (not b!2595666))

(assert (not b!2595673))

(assert (not d!735399))

(assert (not b!2595671))

(assert (not b!2595699))

(assert (not d!735331))

(assert (not d!735395))

(assert (not b_lambda!77503))

(assert (not bs!472860))

(assert (not d!735381))

(assert (not b!2595659))

(assert (not b_lambda!77489))

(assert (not bs!472857))

(assert (not b_lambda!77433))

(assert (not b_lambda!77437))

(assert (not bs!472863))

(assert (not d!735333))

(assert (not b!2595697))

(assert (not b_lambda!77497))

(assert (not d!735335))

(assert (not d!735371))

(assert (not d!735341))

(assert (not b!2595724))

(assert (not b!2595715))

(assert (not bs!472856))

(assert (not b!2595679))

(assert (not b!2595684))

(assert (not d!735323))

(assert (not b!2595693))

(assert (not d!735347))

(assert (not b!2595669))

(assert (not b!2595677))

(assert (not b!2595710))

(assert (not d!735373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

