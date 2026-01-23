; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252124 () Bool)

(assert start!252124)

(declare-fun b!2597425 () Bool)

(assert (=> b!2597425 true))

(declare-fun b!2597421 () Bool)

(declare-fun m!2933785 () Bool)

(assert (=> b!2597421 m!2933785))

(declare-fun bs!473028 () Bool)

(assert (= bs!473028 (and b!2597421 b!2597425)))

(declare-datatypes ((B!2225 0))(
  ( (B!2226 (val!9580 Int)) )
))
(declare-datatypes ((List!30013 0))(
  ( (Nil!29913) (Cons!29913 (h!35333 B!2225) (t!213026 List!30013)) )
))
(declare-fun l1!1546 () List!30013)

(declare-fun lambda!97181 () Int)

(declare-fun lambda!97180 () Int)

(declare-fun tail!4165 (List!30013) List!30013)

(assert (=> bs!473028 (= (= (tail!4165 l1!1546) l1!1546) (= lambda!97181 lambda!97180))))

(assert (=> b!2597421 true))

(declare-fun lambda!97182 () Int)

(assert (=> bs!473028 (= (= (t!213026 l1!1546) l1!1546) (= lambda!97182 lambda!97180))))

(assert (=> b!2597421 (= (= (t!213026 l1!1546) (tail!4165 l1!1546)) (= lambda!97182 lambda!97181))))

(assert (=> b!2597421 true))

(declare-fun bs!473029 () Bool)

(declare-fun b!2597419 () Bool)

(assert (= bs!473029 (and b!2597419 b!2597425)))

(declare-fun lambda!97183 () Int)

(assert (=> bs!473029 (not (= lambda!97183 lambda!97180))))

(declare-fun bs!473030 () Bool)

(assert (= bs!473030 (and b!2597419 b!2597421)))

(assert (=> bs!473030 (not (= lambda!97183 lambda!97181))))

(assert (=> bs!473030 (not (= lambda!97183 lambda!97182))))

(assert (=> b!2597419 true))

(declare-fun bs!473031 () Bool)

(declare-fun b!2597418 () Bool)

(assert (= bs!473031 (and b!2597418 b!2597425)))

(declare-fun lambda!97184 () Int)

(assert (=> bs!473031 (not (= lambda!97184 lambda!97180))))

(declare-fun bs!473032 () Bool)

(assert (= bs!473032 (and b!2597418 b!2597421)))

(assert (=> bs!473032 (not (= lambda!97184 lambda!97181))))

(assert (=> bs!473032 (not (= lambda!97184 lambda!97182))))

(declare-fun bs!473033 () Bool)

(assert (= bs!473033 (and b!2597418 b!2597419)))

(declare-fun l2!1515 () List!30013)

(declare-fun lt!914820 () List!30013)

(assert (=> bs!473033 (= (= l2!1515 lt!914820) (= lambda!97184 lambda!97183))))

(assert (=> b!2597418 true))

(declare-fun b!2597412 () Bool)

(declare-fun e!1639419 () Bool)

(declare-fun e!1639417 () Bool)

(assert (=> b!2597412 (= e!1639419 e!1639417)))

(declare-fun res!1093463 () Bool)

(assert (=> b!2597412 (=> res!1093463 e!1639417)))

(declare-fun lt!914819 () B!2225)

(declare-fun contains!5461 (List!30013 B!2225) Bool)

(assert (=> b!2597412 (= res!1093463 (not (contains!5461 l1!1546 lt!914819)))))

(declare-fun getWitness!560 (List!30013 Int) B!2225)

(assert (=> b!2597412 (= lt!914819 (getWitness!560 (t!213026 l1!1546) lambda!97183))))

(declare-fun res!1093462 () Bool)

(declare-fun e!1639422 () Bool)

(assert (=> start!252124 (=> (not res!1093462) (not e!1639422))))

(declare-fun noDuplicate!461 (List!30013) Bool)

(assert (=> start!252124 (= res!1093462 (noDuplicate!461 l1!1546))))

(assert (=> start!252124 e!1639422))

(declare-fun e!1639416 () Bool)

(assert (=> start!252124 e!1639416))

(declare-fun e!1639421 () Bool)

(assert (=> start!252124 e!1639421))

(declare-fun b!2597413 () Bool)

(declare-fun e!1639423 () Bool)

(declare-fun e!1639418 () Bool)

(assert (=> b!2597413 (= e!1639423 (not e!1639418))))

(declare-fun res!1093456 () Bool)

(assert (=> b!2597413 (=> res!1093456 e!1639418)))

(declare-fun forall!6150 (List!30013 Int) Bool)

(assert (=> b!2597413 (= res!1093456 (not (forall!6150 lt!914820 lambda!97180)))))

(declare-fun lt!914812 () Int)

(declare-fun size!23218 (List!30013) Int)

(assert (=> b!2597413 (= (size!23218 lt!914820) (- lt!914812 1))))

(declare-datatypes ((Unit!43983 0))(
  ( (Unit!43984) )
))
(declare-fun lt!914816 () Unit!43983)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!46 (List!30013 B!2225) Unit!43983)

(assert (=> b!2597413 (= lt!914816 (lemmaRemoveElmtNoDuplicateRemoveOne!46 l2!1515 (h!35333 l1!1546)))))

(assert (=> b!2597413 (forall!6150 lt!914820 lambda!97180)))

(declare-fun lt!914815 () Unit!43983)

(declare-fun lemmaRemoveElmtMaintainsForall!48 (List!30013 B!2225 Int) Unit!43983)

(assert (=> b!2597413 (= lt!914815 (lemmaRemoveElmtMaintainsForall!48 l2!1515 (h!35333 l1!1546) lambda!97180))))

(assert (=> b!2597413 (noDuplicate!461 lt!914820)))

(declare-fun -!188 (List!30013 B!2225) List!30013)

(assert (=> b!2597413 (= lt!914820 (-!188 l2!1515 (h!35333 l1!1546)))))

(declare-fun lt!914818 () Unit!43983)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!54 (List!30013 B!2225) Unit!43983)

(assert (=> b!2597413 (= lt!914818 (lemmaRemoveElmtMaintainsNoDuplicate!54 l2!1515 (h!35333 l1!1546)))))

(declare-fun b!2597414 () Bool)

(declare-fun res!1093459 () Bool)

(assert (=> b!2597414 (=> res!1093459 e!1639417)))

(assert (=> b!2597414 (= res!1093459 (contains!5461 l2!1515 lt!914819))))

(declare-fun b!2597415 () Bool)

(declare-fun tp_is_empty!13505 () Bool)

(declare-fun tp!823344 () Bool)

(assert (=> b!2597415 (= e!1639416 (and tp_is_empty!13505 tp!823344))))

(declare-fun b!2597416 () Bool)

(declare-fun tp!823343 () Bool)

(assert (=> b!2597416 (= e!1639421 (and tp_is_empty!13505 tp!823343))))

(declare-fun b!2597417 () Bool)

(declare-fun res!1093458 () Bool)

(assert (=> b!2597417 (=> res!1093458 e!1639417)))

(assert (=> b!2597417 (= res!1093458 (= lt!914819 (h!35333 l1!1546)))))

(declare-fun exists!938 (List!30013 Int) Bool)

(assert (=> b!2597418 (= e!1639417 (exists!938 l1!1546 lambda!97184))))

(assert (=> b!2597418 (exists!938 l1!1546 lambda!97184)))

(declare-fun lt!914814 () Unit!43983)

(declare-fun lemmaContainsThenExists!53 (List!30013 B!2225 Int) Unit!43983)

(assert (=> b!2597418 (= lt!914814 (lemmaContainsThenExists!53 l1!1546 lt!914819 lambda!97184))))

(declare-fun e!1639420 () Bool)

(assert (=> b!2597419 (= e!1639420 e!1639419)))

(declare-fun res!1093464 () Bool)

(assert (=> b!2597419 (=> res!1093464 e!1639419)))

(assert (=> b!2597419 (= res!1093464 (not (exists!938 (t!213026 l1!1546) lambda!97183)))))

(assert (=> b!2597419 (exists!938 (t!213026 l1!1546) lambda!97183)))

(declare-fun lt!914813 () Unit!43983)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!54 (List!30013 List!30013) Unit!43983)

(assert (=> b!2597419 (= lt!914813 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!54 (t!213026 l1!1546) lt!914820))))

(declare-fun b!2597420 () Bool)

(declare-fun res!1093465 () Bool)

(assert (=> b!2597420 (=> (not res!1093465) (not e!1639422))))

(assert (=> b!2597420 (= res!1093465 (noDuplicate!461 l2!1515))))

(assert (=> b!2597421 (= e!1639418 e!1639420)))

(declare-fun res!1093455 () Bool)

(assert (=> b!2597421 (=> res!1093455 e!1639420)))

(assert (=> b!2597421 (= res!1093455 (not (forall!6150 lt!914820 lambda!97182)))))

(assert (=> b!2597421 (forall!6150 lt!914820 lambda!97181)))

(declare-fun lt!914821 () Unit!43983)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!30 (List!30013 List!30013 B!2225) Unit!43983)

(assert (=> b!2597421 (= lt!914821 (lemmaForallContainsThenForTailIfContainsNotHead!30 lt!914820 l1!1546 (h!35333 l1!1546)))))

(declare-fun b!2597422 () Bool)

(declare-fun res!1093457 () Bool)

(assert (=> b!2597422 (=> (not res!1093457) (not e!1639423))))

(get-info :version)

(assert (=> b!2597422 (= res!1093457 ((_ is Cons!29913) l1!1546))))

(declare-fun b!2597423 () Bool)

(declare-fun res!1093461 () Bool)

(assert (=> b!2597423 (=> (not res!1093461) (not e!1639423))))

(assert (=> b!2597423 (= res!1093461 (contains!5461 l2!1515 (h!35333 l1!1546)))))

(declare-fun b!2597424 () Bool)

(assert (=> b!2597424 (= e!1639422 e!1639423)))

(declare-fun res!1093454 () Bool)

(assert (=> b!2597424 (=> (not res!1093454) (not e!1639423))))

(declare-fun lt!914817 () Int)

(assert (=> b!2597424 (= res!1093454 (> lt!914817 lt!914812))))

(assert (=> b!2597424 (= lt!914812 (size!23218 l2!1515))))

(assert (=> b!2597424 (= lt!914817 (size!23218 l1!1546))))

(declare-fun res!1093460 () Bool)

(assert (=> b!2597425 (=> (not res!1093460) (not e!1639423))))

(assert (=> b!2597425 (= res!1093460 (forall!6150 l2!1515 lambda!97180))))

(assert (= (and start!252124 res!1093462) b!2597420))

(assert (= (and b!2597420 res!1093465) b!2597424))

(assert (= (and b!2597424 res!1093454) b!2597425))

(assert (= (and b!2597425 res!1093460) b!2597422))

(assert (= (and b!2597422 res!1093457) b!2597423))

(assert (= (and b!2597423 res!1093461) b!2597413))

(assert (= (and b!2597413 (not res!1093456)) b!2597421))

(assert (= (and b!2597421 (not res!1093455)) b!2597419))

(assert (= (and b!2597419 (not res!1093464)) b!2597412))

(assert (= (and b!2597412 (not res!1093463)) b!2597417))

(assert (= (and b!2597417 (not res!1093458)) b!2597414))

(assert (= (and b!2597414 (not res!1093459)) b!2597418))

(assert (= (and start!252124 ((_ is Cons!29913) l1!1546)) b!2597415))

(assert (= (and start!252124 ((_ is Cons!29913) l2!1515)) b!2597416))

(declare-fun m!2933787 () Bool)

(assert (=> b!2597421 m!2933787))

(declare-fun m!2933789 () Bool)

(assert (=> b!2597421 m!2933789))

(declare-fun m!2933791 () Bool)

(assert (=> b!2597421 m!2933791))

(declare-fun m!2933793 () Bool)

(assert (=> b!2597418 m!2933793))

(assert (=> b!2597418 m!2933793))

(declare-fun m!2933795 () Bool)

(assert (=> b!2597418 m!2933795))

(declare-fun m!2933797 () Bool)

(assert (=> b!2597423 m!2933797))

(declare-fun m!2933799 () Bool)

(assert (=> b!2597424 m!2933799))

(declare-fun m!2933801 () Bool)

(assert (=> b!2597424 m!2933801))

(declare-fun m!2933803 () Bool)

(assert (=> b!2597419 m!2933803))

(assert (=> b!2597419 m!2933803))

(declare-fun m!2933805 () Bool)

(assert (=> b!2597419 m!2933805))

(declare-fun m!2933807 () Bool)

(assert (=> b!2597414 m!2933807))

(declare-fun m!2933809 () Bool)

(assert (=> start!252124 m!2933809))

(declare-fun m!2933811 () Bool)

(assert (=> b!2597412 m!2933811))

(declare-fun m!2933813 () Bool)

(assert (=> b!2597412 m!2933813))

(declare-fun m!2933815 () Bool)

(assert (=> b!2597420 m!2933815))

(declare-fun m!2933817 () Bool)

(assert (=> b!2597425 m!2933817))

(declare-fun m!2933819 () Bool)

(assert (=> b!2597413 m!2933819))

(declare-fun m!2933821 () Bool)

(assert (=> b!2597413 m!2933821))

(declare-fun m!2933823 () Bool)

(assert (=> b!2597413 m!2933823))

(declare-fun m!2933825 () Bool)

(assert (=> b!2597413 m!2933825))

(declare-fun m!2933827 () Bool)

(assert (=> b!2597413 m!2933827))

(declare-fun m!2933829 () Bool)

(assert (=> b!2597413 m!2933829))

(declare-fun m!2933831 () Bool)

(assert (=> b!2597413 m!2933831))

(assert (=> b!2597413 m!2933819))

(check-sat (not b!2597421) (not b!2597425) (not b!2597415) (not b!2597413) tp_is_empty!13505 (not b!2597416) (not start!252124) (not b!2597420) (not b!2597424) (not b!2597418) (not b!2597412) (not b!2597414) (not b!2597419) (not b!2597423))
(check-sat)
