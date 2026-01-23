; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472452 () Bool)

(assert start!472452)

(declare-fun b!4679590 () Bool)

(declare-fun res!1971853 () Bool)

(declare-fun e!2919658 () Bool)

(assert (=> b!4679590 (=> (not res!1971853) (not e!2919658))))

(declare-datatypes ((K!13625 0))(
  ( (K!13626 (val!19171 Int)) )
))
(declare-datatypes ((V!13871 0))(
  ( (V!13872 (val!19172 Int)) )
))
(declare-datatypes ((tuple2!53554 0))(
  ( (tuple2!53555 (_1!30071 K!13625) (_2!30071 V!13871)) )
))
(declare-datatypes ((List!52369 0))(
  ( (Nil!52245) (Cons!52245 (h!58454 tuple2!53554) (t!359521 List!52369)) )
))
(declare-fun oldBucket!34 () List!52369)

(declare-fun noDuplicateKeys!1790 (List!52369) Bool)

(assert (=> b!4679590 (= res!1971853 (noDuplicateKeys!1790 oldBucket!34))))

(declare-fun b!4679591 () Bool)

(declare-fun res!1971856 () Bool)

(declare-fun e!2919662 () Bool)

(assert (=> b!4679591 (=> (not res!1971856) (not e!2919662))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6159 0))(
  ( (HashableExt!6158 (__x!31862 Int)) )
))
(declare-fun hashF!1323 () Hashable!6159)

(declare-fun newBucket!218 () List!52369)

(declare-fun allKeysSameHash!1616 (List!52369 (_ BitVec 64) Hashable!6159) Bool)

(assert (=> b!4679591 (= res!1971856 (allKeysSameHash!1616 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4679592 () Bool)

(declare-fun res!1971838 () Bool)

(declare-fun e!2919664 () Bool)

(assert (=> b!4679592 (=> res!1971838 e!2919664)))

(declare-fun lt!1839217 () List!52369)

(declare-fun key!4653 () K!13625)

(declare-fun containsKey!2933 (List!52369 K!13625) Bool)

(assert (=> b!4679592 (= res!1971838 (containsKey!2933 lt!1839217 key!4653))))

(declare-fun b!4679593 () Bool)

(declare-fun e!2919666 () Bool)

(assert (=> b!4679593 (= e!2919666 e!2919664)))

(declare-fun res!1971851 () Bool)

(assert (=> b!4679593 (=> res!1971851 e!2919664)))

(declare-datatypes ((ListMap!4833 0))(
  ( (ListMap!4834 (toList!5469 List!52369)) )
))
(declare-fun lt!1839207 () ListMap!4833)

(declare-fun lt!1839213 () ListMap!4833)

(declare-fun eq!979 (ListMap!4833 ListMap!4833) Bool)

(declare-fun addToMapMapFromBucket!1222 (List!52369 ListMap!4833) ListMap!4833)

(assert (=> b!4679593 (= res!1971851 (not (eq!979 lt!1839207 (addToMapMapFromBucket!1222 oldBucket!34 lt!1839213))))))

(declare-fun lt!1839212 () ListMap!4833)

(declare-fun +!2092 (ListMap!4833 tuple2!53554) ListMap!4833)

(assert (=> b!4679593 (= lt!1839207 (+!2092 lt!1839212 (h!58454 oldBucket!34)))))

(declare-fun lt!1839209 () tuple2!53554)

(assert (=> b!4679593 (eq!979 (addToMapMapFromBucket!1222 (Cons!52245 lt!1839209 lt!1839217) lt!1839213) (+!2092 lt!1839212 lt!1839209))))

(declare-datatypes ((Unit!122367 0))(
  ( (Unit!122368) )
))
(declare-fun lt!1839218 () Unit!122367)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!228 (tuple2!53554 List!52369 ListMap!4833) Unit!122367)

(assert (=> b!4679593 (= lt!1839218 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!228 lt!1839209 lt!1839217 lt!1839213))))

(declare-fun head!9871 (List!52369) tuple2!53554)

(assert (=> b!4679593 (= lt!1839209 (head!9871 oldBucket!34))))

(declare-fun b!4679594 () Bool)

(declare-fun e!2919660 () Bool)

(declare-datatypes ((tuple2!53556 0))(
  ( (tuple2!53557 (_1!30072 (_ BitVec 64)) (_2!30072 List!52369)) )
))
(declare-datatypes ((List!52370 0))(
  ( (Nil!52246) (Cons!52246 (h!58455 tuple2!53556) (t!359522 List!52370)) )
))
(declare-fun lt!1839216 () List!52370)

(declare-fun lambda!204443 () Int)

(declare-fun forall!11221 (List!52370 Int) Bool)

(assert (=> b!4679594 (= e!2919660 (forall!11221 lt!1839216 lambda!204443))))

(declare-fun lt!1839220 () ListMap!4833)

(declare-fun lt!1839214 () ListMap!4833)

(declare-fun -!654 (ListMap!4833 K!13625) ListMap!4833)

(assert (=> b!4679594 (eq!979 lt!1839220 (-!654 lt!1839214 key!4653))))

(declare-fun lt!1839208 () Unit!122367)

(declare-fun lemmaRemovePreservesEq!74 (ListMap!4833 ListMap!4833 K!13625) Unit!122367)

(assert (=> b!4679594 (= lt!1839208 (lemmaRemovePreservesEq!74 lt!1839207 lt!1839214 key!4653))))

(declare-fun b!4679595 () Bool)

(declare-fun res!1971855 () Bool)

(assert (=> b!4679595 (=> res!1971855 e!2919664)))

(declare-fun lt!1839219 () ListMap!4833)

(assert (=> b!4679595 (= res!1971855 (not (= lt!1839212 lt!1839219)))))

(declare-fun b!4679596 () Bool)

(declare-fun res!1971843 () Bool)

(declare-fun e!2919667 () Bool)

(assert (=> b!4679596 (=> (not res!1971843) (not e!2919667))))

(declare-datatypes ((ListLongMap!3999 0))(
  ( (ListLongMap!4000 (toList!5470 List!52370)) )
))
(declare-fun lm!2023 () ListLongMap!3999)

(get-info :version)

(assert (=> b!4679596 (= res!1971843 ((_ is Cons!52246) (toList!5470 lm!2023)))))

(declare-fun b!4679597 () Bool)

(declare-fun e!2919663 () Bool)

(declare-fun e!2919668 () Bool)

(assert (=> b!4679597 (= e!2919663 e!2919668)))

(declare-fun res!1971837 () Bool)

(assert (=> b!4679597 (=> res!1971837 e!2919668)))

(assert (=> b!4679597 (= res!1971837 (not (= lt!1839217 newBucket!218)))))

(declare-fun tail!8436 (List!52369) List!52369)

(assert (=> b!4679597 (= lt!1839217 (tail!8436 oldBucket!34))))

(declare-fun b!4679598 () Bool)

(declare-fun res!1971852 () Bool)

(assert (=> b!4679598 (=> (not res!1971852) (not e!2919662))))

(declare-fun allKeysSameHashInMap!1704 (ListLongMap!3999 Hashable!6159) Bool)

(assert (=> b!4679598 (= res!1971852 (allKeysSameHashInMap!1704 lm!2023 hashF!1323))))

(declare-fun b!4679599 () Bool)

(declare-fun res!1971847 () Bool)

(assert (=> b!4679599 (=> (not res!1971847) (not e!2919658))))

(declare-fun removePairForKey!1385 (List!52369 K!13625) List!52369)

(assert (=> b!4679599 (= res!1971847 (= (removePairForKey!1385 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp_is_empty!30453 () Bool)

(declare-fun tp!1344980 () Bool)

(declare-fun tp_is_empty!30455 () Bool)

(declare-fun b!4679600 () Bool)

(declare-fun e!2919670 () Bool)

(assert (=> b!4679600 (= e!2919670 (and tp_is_empty!30453 tp_is_empty!30455 tp!1344980))))

(declare-fun b!4679601 () Bool)

(declare-fun e!2919665 () Bool)

(declare-fun e!2919659 () Bool)

(assert (=> b!4679601 (= e!2919665 e!2919659)))

(declare-fun res!1971845 () Bool)

(assert (=> b!4679601 (=> res!1971845 e!2919659)))

(assert (=> b!4679601 (= res!1971845 (not (= lt!1839220 lt!1839212)))))

(assert (=> b!4679601 (= lt!1839220 (-!654 lt!1839207 key!4653))))

(assert (=> b!4679601 (= (-!654 (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) key!4653) lt!1839212)))

(declare-fun lt!1839211 () Unit!122367)

(declare-fun addThenRemoveForNewKeyIsSame!45 (ListMap!4833 K!13625 V!13871) Unit!122367)

(assert (=> b!4679601 (= lt!1839211 (addThenRemoveForNewKeyIsSame!45 lt!1839212 key!4653 (_2!30071 (h!58454 oldBucket!34))))))

(declare-fun b!4679602 () Bool)

(declare-fun res!1971857 () Bool)

(assert (=> b!4679602 (=> (not res!1971857) (not e!2919658))))

(assert (=> b!4679602 (= res!1971857 (noDuplicateKeys!1790 newBucket!218))))

(declare-fun b!4679603 () Bool)

(assert (=> b!4679603 (= e!2919664 e!2919665)))

(declare-fun res!1971844 () Bool)

(assert (=> b!4679603 (=> res!1971844 e!2919665)))

(declare-fun contains!15378 (ListMap!4833 K!13625) Bool)

(assert (=> b!4679603 (= res!1971844 (contains!15378 lt!1839212 key!4653))))

(assert (=> b!4679603 (not (contains!15378 lt!1839219 key!4653))))

(declare-fun lt!1839210 () Unit!122367)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!390 (ListLongMap!3999 K!13625 Hashable!6159) Unit!122367)

(assert (=> b!4679603 (= lt!1839210 (lemmaNotInItsHashBucketThenNotInMap!390 (ListLongMap!4000 lt!1839216) key!4653 hashF!1323))))

(declare-fun b!4679604 () Bool)

(assert (=> b!4679604 (= e!2919659 e!2919660)))

(declare-fun res!1971850 () Bool)

(assert (=> b!4679604 (=> res!1971850 e!2919660)))

(assert (=> b!4679604 (= res!1971850 (not (eq!979 lt!1839207 lt!1839214)))))

(declare-fun lt!1839206 () tuple2!53556)

(declare-fun extractMap!1816 (List!52370) ListMap!4833)

(assert (=> b!4679604 (= lt!1839214 (extractMap!1816 (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023)))))))

(declare-fun b!4679605 () Bool)

(assert (=> b!4679605 (= e!2919658 e!2919662)))

(declare-fun res!1971841 () Bool)

(assert (=> b!4679605 (=> (not res!1971841) (not e!2919662))))

(declare-fun lt!1839215 () ListMap!4833)

(assert (=> b!4679605 (= res!1971841 (contains!15378 lt!1839215 key!4653))))

(assert (=> b!4679605 (= lt!1839215 (extractMap!1816 (toList!5470 lm!2023)))))

(declare-fun b!4679606 () Bool)

(assert (=> b!4679606 (= e!2919667 (not e!2919663))))

(declare-fun res!1971840 () Bool)

(assert (=> b!4679606 (=> res!1971840 e!2919663)))

(assert (=> b!4679606 (= res!1971840 (or (not ((_ is Cons!52245) oldBucket!34)) (not (= (_1!30071 (h!58454 oldBucket!34)) key!4653))))))

(assert (=> b!4679606 (= lt!1839215 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (toList!5470 lm!2023))) lt!1839213))))

(assert (=> b!4679606 (= lt!1839213 (extractMap!1816 (t!359522 (toList!5470 lm!2023))))))

(declare-fun tail!8437 (ListLongMap!3999) ListLongMap!3999)

(assert (=> b!4679606 (= (t!359522 (toList!5470 lm!2023)) (toList!5470 (tail!8437 lm!2023)))))

(declare-fun b!4679607 () Bool)

(declare-fun res!1971848 () Bool)

(assert (=> b!4679607 (=> (not res!1971848) (not e!2919662))))

(declare-fun hash!3966 (Hashable!6159 K!13625) (_ BitVec 64))

(assert (=> b!4679607 (= res!1971848 (= (hash!3966 hashF!1323 key!4653) hash!405))))

(declare-fun b!4679608 () Bool)

(declare-fun e!2919661 () Bool)

(declare-fun tp!1344979 () Bool)

(assert (=> b!4679608 (= e!2919661 (and tp_is_empty!30453 tp_is_empty!30455 tp!1344979))))

(declare-fun b!4679609 () Bool)

(assert (=> b!4679609 (= e!2919662 e!2919667)))

(declare-fun res!1971849 () Bool)

(assert (=> b!4679609 (=> (not res!1971849) (not e!2919667))))

(declare-fun head!9872 (List!52370) tuple2!53556)

(assert (=> b!4679609 (= res!1971849 (= (head!9872 (toList!5470 lm!2023)) lt!1839206))))

(assert (=> b!4679609 (= lt!1839206 (tuple2!53557 hash!405 oldBucket!34))))

(declare-fun b!4679610 () Bool)

(declare-fun e!2919669 () Bool)

(declare-fun tp!1344981 () Bool)

(assert (=> b!4679610 (= e!2919669 tp!1344981)))

(declare-fun b!4679611 () Bool)

(declare-fun e!2919657 () Bool)

(assert (=> b!4679611 (= e!2919668 e!2919657)))

(declare-fun res!1971839 () Bool)

(assert (=> b!4679611 (=> res!1971839 e!2919657)))

(assert (=> b!4679611 (= res!1971839 (not (= lt!1839219 (extractMap!1816 (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023)))))))))

(assert (=> b!4679611 (= lt!1839219 (extractMap!1816 lt!1839216))))

(assert (=> b!4679611 (= lt!1839216 (Cons!52246 (tuple2!53557 hash!405 lt!1839217) (t!359522 (toList!5470 lm!2023))))))

(declare-fun res!1971842 () Bool)

(assert (=> start!472452 (=> (not res!1971842) (not e!2919658))))

(assert (=> start!472452 (= res!1971842 (forall!11221 (toList!5470 lm!2023) lambda!204443))))

(assert (=> start!472452 e!2919658))

(declare-fun inv!67499 (ListLongMap!3999) Bool)

(assert (=> start!472452 (and (inv!67499 lm!2023) e!2919669)))

(assert (=> start!472452 tp_is_empty!30453))

(assert (=> start!472452 e!2919661))

(assert (=> start!472452 true))

(assert (=> start!472452 e!2919670))

(declare-fun b!4679612 () Bool)

(assert (=> b!4679612 (= e!2919657 e!2919666)))

(declare-fun res!1971854 () Bool)

(assert (=> b!4679612 (=> res!1971854 e!2919666)))

(assert (=> b!4679612 (= res!1971854 (not (= lt!1839212 (addToMapMapFromBucket!1222 newBucket!218 lt!1839213))))))

(assert (=> b!4679612 (= lt!1839212 (addToMapMapFromBucket!1222 lt!1839217 lt!1839213))))

(declare-fun b!4679613 () Bool)

(declare-fun res!1971846 () Bool)

(assert (=> b!4679613 (=> (not res!1971846) (not e!2919658))))

(assert (=> b!4679613 (= res!1971846 (allKeysSameHash!1616 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!472452 res!1971842) b!4679590))

(assert (= (and b!4679590 res!1971853) b!4679602))

(assert (= (and b!4679602 res!1971857) b!4679599))

(assert (= (and b!4679599 res!1971847) b!4679613))

(assert (= (and b!4679613 res!1971846) b!4679605))

(assert (= (and b!4679605 res!1971841) b!4679607))

(assert (= (and b!4679607 res!1971848) b!4679591))

(assert (= (and b!4679591 res!1971856) b!4679598))

(assert (= (and b!4679598 res!1971852) b!4679609))

(assert (= (and b!4679609 res!1971849) b!4679596))

(assert (= (and b!4679596 res!1971843) b!4679606))

(assert (= (and b!4679606 (not res!1971840)) b!4679597))

(assert (= (and b!4679597 (not res!1971837)) b!4679611))

(assert (= (and b!4679611 (not res!1971839)) b!4679612))

(assert (= (and b!4679612 (not res!1971854)) b!4679593))

(assert (= (and b!4679593 (not res!1971851)) b!4679592))

(assert (= (and b!4679592 (not res!1971838)) b!4679595))

(assert (= (and b!4679595 (not res!1971855)) b!4679603))

(assert (= (and b!4679603 (not res!1971844)) b!4679601))

(assert (= (and b!4679601 (not res!1971845)) b!4679604))

(assert (= (and b!4679604 (not res!1971850)) b!4679594))

(assert (= start!472452 b!4679610))

(assert (= (and start!472452 ((_ is Cons!52245) oldBucket!34)) b!4679608))

(assert (= (and start!472452 ((_ is Cons!52245) newBucket!218)) b!4679600))

(declare-fun m!5575479 () Bool)

(assert (=> b!4679609 m!5575479))

(declare-fun m!5575481 () Bool)

(assert (=> b!4679613 m!5575481))

(declare-fun m!5575483 () Bool)

(assert (=> b!4679590 m!5575483))

(declare-fun m!5575485 () Bool)

(assert (=> b!4679598 m!5575485))

(declare-fun m!5575487 () Bool)

(assert (=> b!4679601 m!5575487))

(declare-fun m!5575489 () Bool)

(assert (=> b!4679601 m!5575489))

(assert (=> b!4679601 m!5575489))

(declare-fun m!5575491 () Bool)

(assert (=> b!4679601 m!5575491))

(declare-fun m!5575493 () Bool)

(assert (=> b!4679601 m!5575493))

(declare-fun m!5575495 () Bool)

(assert (=> b!4679593 m!5575495))

(declare-fun m!5575497 () Bool)

(assert (=> b!4679593 m!5575497))

(declare-fun m!5575499 () Bool)

(assert (=> b!4679593 m!5575499))

(declare-fun m!5575501 () Bool)

(assert (=> b!4679593 m!5575501))

(assert (=> b!4679593 m!5575497))

(declare-fun m!5575503 () Bool)

(assert (=> b!4679593 m!5575503))

(assert (=> b!4679593 m!5575495))

(assert (=> b!4679593 m!5575501))

(declare-fun m!5575505 () Bool)

(assert (=> b!4679593 m!5575505))

(declare-fun m!5575507 () Bool)

(assert (=> b!4679593 m!5575507))

(declare-fun m!5575509 () Bool)

(assert (=> b!4679593 m!5575509))

(declare-fun m!5575511 () Bool)

(assert (=> b!4679612 m!5575511))

(declare-fun m!5575513 () Bool)

(assert (=> b!4679612 m!5575513))

(declare-fun m!5575515 () Bool)

(assert (=> start!472452 m!5575515))

(declare-fun m!5575517 () Bool)

(assert (=> start!472452 m!5575517))

(declare-fun m!5575519 () Bool)

(assert (=> b!4679597 m!5575519))

(declare-fun m!5575521 () Bool)

(assert (=> b!4679607 m!5575521))

(declare-fun m!5575523 () Bool)

(assert (=> b!4679603 m!5575523))

(declare-fun m!5575525 () Bool)

(assert (=> b!4679603 m!5575525))

(declare-fun m!5575527 () Bool)

(assert (=> b!4679603 m!5575527))

(declare-fun m!5575529 () Bool)

(assert (=> b!4679605 m!5575529))

(declare-fun m!5575531 () Bool)

(assert (=> b!4679605 m!5575531))

(declare-fun m!5575533 () Bool)

(assert (=> b!4679606 m!5575533))

(declare-fun m!5575535 () Bool)

(assert (=> b!4679606 m!5575535))

(declare-fun m!5575537 () Bool)

(assert (=> b!4679606 m!5575537))

(declare-fun m!5575539 () Bool)

(assert (=> b!4679611 m!5575539))

(declare-fun m!5575541 () Bool)

(assert (=> b!4679611 m!5575541))

(declare-fun m!5575543 () Bool)

(assert (=> b!4679592 m!5575543))

(declare-fun m!5575545 () Bool)

(assert (=> b!4679599 m!5575545))

(declare-fun m!5575547 () Bool)

(assert (=> b!4679591 m!5575547))

(declare-fun m!5575549 () Bool)

(assert (=> b!4679594 m!5575549))

(declare-fun m!5575551 () Bool)

(assert (=> b!4679594 m!5575551))

(assert (=> b!4679594 m!5575551))

(declare-fun m!5575553 () Bool)

(assert (=> b!4679594 m!5575553))

(declare-fun m!5575555 () Bool)

(assert (=> b!4679594 m!5575555))

(declare-fun m!5575557 () Bool)

(assert (=> b!4679604 m!5575557))

(declare-fun m!5575559 () Bool)

(assert (=> b!4679604 m!5575559))

(declare-fun m!5575561 () Bool)

(assert (=> b!4679602 m!5575561))

(check-sat (not b!4679592) (not b!4679606) (not b!4679610) (not b!4679602) (not b!4679607) (not b!4679611) (not b!4679598) (not b!4679599) (not start!472452) (not b!4679597) (not b!4679603) (not b!4679604) (not b!4679601) (not b!4679594) (not b!4679600) tp_is_empty!30453 (not b!4679605) (not b!4679591) (not b!4679593) (not b!4679612) (not b!4679608) (not b!4679613) (not b!4679609) tp_is_empty!30455 (not b!4679590))
(check-sat)
(get-model)

(declare-fun b!4679731 () Bool)

(assert (=> b!4679731 true))

(declare-fun bs!1081839 () Bool)

(declare-fun b!4679730 () Bool)

(assert (= bs!1081839 (and b!4679730 b!4679731)))

(declare-fun lambda!204528 () Int)

(declare-fun lambda!204527 () Int)

(assert (=> bs!1081839 (= lambda!204528 lambda!204527)))

(assert (=> b!4679730 true))

(declare-fun lt!1839421 () ListMap!4833)

(declare-fun lambda!204529 () Int)

(assert (=> bs!1081839 (= (= lt!1839421 lt!1839213) (= lambda!204529 lambda!204527))))

(assert (=> b!4679730 (= (= lt!1839421 lt!1839213) (= lambda!204529 lambda!204528))))

(assert (=> b!4679730 true))

(declare-fun bs!1081847 () Bool)

(declare-fun d!1487319 () Bool)

(assert (= bs!1081847 (and d!1487319 b!4679731)))

(declare-fun lt!1839428 () ListMap!4833)

(declare-fun lambda!204531 () Int)

(assert (=> bs!1081847 (= (= lt!1839428 lt!1839213) (= lambda!204531 lambda!204527))))

(declare-fun bs!1081849 () Bool)

(assert (= bs!1081849 (and d!1487319 b!4679730)))

(assert (=> bs!1081849 (= (= lt!1839428 lt!1839213) (= lambda!204531 lambda!204528))))

(assert (=> bs!1081849 (= (= lt!1839428 lt!1839421) (= lambda!204531 lambda!204529))))

(assert (=> d!1487319 true))

(declare-fun e!2919736 () Bool)

(assert (=> d!1487319 e!2919736))

(declare-fun res!1971896 () Bool)

(assert (=> d!1487319 (=> (not res!1971896) (not e!2919736))))

(declare-fun forall!11223 (List!52369 Int) Bool)

(assert (=> d!1487319 (= res!1971896 (forall!11223 newBucket!218 lambda!204531))))

(declare-fun e!2919735 () ListMap!4833)

(assert (=> d!1487319 (= lt!1839428 e!2919735)))

(declare-fun c!800535 () Bool)

(assert (=> d!1487319 (= c!800535 ((_ is Nil!52245) newBucket!218))))

(assert (=> d!1487319 (noDuplicateKeys!1790 newBucket!218)))

(assert (=> d!1487319 (= (addToMapMapFromBucket!1222 newBucket!218 lt!1839213) lt!1839428)))

(declare-fun b!4679728 () Bool)

(declare-fun res!1971894 () Bool)

(assert (=> b!4679728 (=> (not res!1971894) (not e!2919736))))

(assert (=> b!4679728 (= res!1971894 (forall!11223 (toList!5469 lt!1839213) lambda!204531))))

(declare-fun b!4679729 () Bool)

(declare-fun e!2919737 () Bool)

(assert (=> b!4679729 (= e!2919737 (forall!11223 (toList!5469 lt!1839213) lambda!204529))))

(declare-fun bm!327045 () Bool)

(declare-fun lt!1839441 () ListMap!4833)

(declare-fun call!327052 () Bool)

(assert (=> bm!327045 (= call!327052 (forall!11223 (ite c!800535 (toList!5469 lt!1839213) (toList!5469 lt!1839441)) (ite c!800535 lambda!204527 lambda!204529)))))

(declare-fun bm!327046 () Bool)

(declare-fun call!327051 () Unit!122367)

(declare-fun lemmaContainsAllItsOwnKeys!662 (ListMap!4833) Unit!122367)

(assert (=> bm!327046 (= call!327051 (lemmaContainsAllItsOwnKeys!662 lt!1839213))))

(declare-fun call!327050 () Bool)

(declare-fun bm!327047 () Bool)

(assert (=> bm!327047 (= call!327050 (forall!11223 (toList!5469 lt!1839213) (ite c!800535 lambda!204527 lambda!204529)))))

(assert (=> b!4679730 (= e!2919735 lt!1839421)))

(assert (=> b!4679730 (= lt!1839441 (+!2092 lt!1839213 (h!58454 newBucket!218)))))

(assert (=> b!4679730 (= lt!1839421 (addToMapMapFromBucket!1222 (t!359521 newBucket!218) (+!2092 lt!1839213 (h!58454 newBucket!218))))))

(declare-fun lt!1839434 () Unit!122367)

(assert (=> b!4679730 (= lt!1839434 call!327051)))

(assert (=> b!4679730 (forall!11223 (toList!5469 lt!1839213) lambda!204528)))

(declare-fun lt!1839430 () Unit!122367)

(assert (=> b!4679730 (= lt!1839430 lt!1839434)))

(assert (=> b!4679730 (forall!11223 (toList!5469 lt!1839441) lambda!204529)))

(declare-fun lt!1839427 () Unit!122367)

(declare-fun Unit!122382 () Unit!122367)

(assert (=> b!4679730 (= lt!1839427 Unit!122382)))

(assert (=> b!4679730 (forall!11223 (t!359521 newBucket!218) lambda!204529)))

(declare-fun lt!1839426 () Unit!122367)

(declare-fun Unit!122383 () Unit!122367)

(assert (=> b!4679730 (= lt!1839426 Unit!122383)))

(declare-fun lt!1839438 () Unit!122367)

(declare-fun Unit!122384 () Unit!122367)

(assert (=> b!4679730 (= lt!1839438 Unit!122384)))

(declare-fun lt!1839435 () Unit!122367)

(declare-fun forallContained!3346 (List!52369 Int tuple2!53554) Unit!122367)

(assert (=> b!4679730 (= lt!1839435 (forallContained!3346 (toList!5469 lt!1839441) lambda!204529 (h!58454 newBucket!218)))))

(assert (=> b!4679730 (contains!15378 lt!1839441 (_1!30071 (h!58454 newBucket!218)))))

(declare-fun lt!1839423 () Unit!122367)

(declare-fun Unit!122386 () Unit!122367)

(assert (=> b!4679730 (= lt!1839423 Unit!122386)))

(assert (=> b!4679730 (contains!15378 lt!1839421 (_1!30071 (h!58454 newBucket!218)))))

(declare-fun lt!1839437 () Unit!122367)

(declare-fun Unit!122387 () Unit!122367)

(assert (=> b!4679730 (= lt!1839437 Unit!122387)))

(assert (=> b!4679730 (forall!11223 newBucket!218 lambda!204529)))

(declare-fun lt!1839440 () Unit!122367)

(declare-fun Unit!122388 () Unit!122367)

(assert (=> b!4679730 (= lt!1839440 Unit!122388)))

(assert (=> b!4679730 call!327052))

(declare-fun lt!1839431 () Unit!122367)

(declare-fun Unit!122389 () Unit!122367)

(assert (=> b!4679730 (= lt!1839431 Unit!122389)))

(declare-fun lt!1839422 () Unit!122367)

(declare-fun Unit!122390 () Unit!122367)

(assert (=> b!4679730 (= lt!1839422 Unit!122390)))

(declare-fun lt!1839424 () Unit!122367)

(declare-fun addForallContainsKeyThenBeforeAdding!661 (ListMap!4833 ListMap!4833 K!13625 V!13871) Unit!122367)

(assert (=> b!4679730 (= lt!1839424 (addForallContainsKeyThenBeforeAdding!661 lt!1839213 lt!1839421 (_1!30071 (h!58454 newBucket!218)) (_2!30071 (h!58454 newBucket!218))))))

(assert (=> b!4679730 call!327050))

(declare-fun lt!1839432 () Unit!122367)

(assert (=> b!4679730 (= lt!1839432 lt!1839424)))

(assert (=> b!4679730 (forall!11223 (toList!5469 lt!1839213) lambda!204529)))

(declare-fun lt!1839436 () Unit!122367)

(declare-fun Unit!122391 () Unit!122367)

(assert (=> b!4679730 (= lt!1839436 Unit!122391)))

(declare-fun res!1971895 () Bool)

(assert (=> b!4679730 (= res!1971895 (forall!11223 newBucket!218 lambda!204529))))

(assert (=> b!4679730 (=> (not res!1971895) (not e!2919737))))

(assert (=> b!4679730 e!2919737))

(declare-fun lt!1839439 () Unit!122367)

(declare-fun Unit!122393 () Unit!122367)

(assert (=> b!4679730 (= lt!1839439 Unit!122393)))

(assert (=> b!4679731 (= e!2919735 lt!1839213)))

(declare-fun lt!1839425 () Unit!122367)

(assert (=> b!4679731 (= lt!1839425 call!327051)))

(assert (=> b!4679731 call!327050))

(declare-fun lt!1839433 () Unit!122367)

(assert (=> b!4679731 (= lt!1839433 lt!1839425)))

(assert (=> b!4679731 call!327052))

(declare-fun lt!1839429 () Unit!122367)

(declare-fun Unit!122394 () Unit!122367)

(assert (=> b!4679731 (= lt!1839429 Unit!122394)))

(declare-fun b!4679732 () Bool)

(declare-fun invariantList!1374 (List!52369) Bool)

(assert (=> b!4679732 (= e!2919736 (invariantList!1374 (toList!5469 lt!1839428)))))

(assert (= (and d!1487319 c!800535) b!4679731))

(assert (= (and d!1487319 (not c!800535)) b!4679730))

(assert (= (and b!4679730 res!1971895) b!4679729))

(assert (= (or b!4679731 b!4679730) bm!327046))

(assert (= (or b!4679731 b!4679730) bm!327047))

(assert (= (or b!4679731 b!4679730) bm!327045))

(assert (= (and d!1487319 res!1971896) b!4679728))

(assert (= (and b!4679728 res!1971894) b!4679732))

(declare-fun m!5575749 () Bool)

(assert (=> bm!327047 m!5575749))

(declare-fun m!5575753 () Bool)

(assert (=> b!4679728 m!5575753))

(declare-fun m!5575759 () Bool)

(assert (=> b!4679729 m!5575759))

(declare-fun m!5575761 () Bool)

(assert (=> b!4679732 m!5575761))

(declare-fun m!5575765 () Bool)

(assert (=> b!4679730 m!5575765))

(declare-fun m!5575767 () Bool)

(assert (=> b!4679730 m!5575767))

(declare-fun m!5575773 () Bool)

(assert (=> b!4679730 m!5575773))

(declare-fun m!5575777 () Bool)

(assert (=> b!4679730 m!5575777))

(declare-fun m!5575781 () Bool)

(assert (=> b!4679730 m!5575781))

(declare-fun m!5575785 () Bool)

(assert (=> b!4679730 m!5575785))

(assert (=> b!4679730 m!5575759))

(assert (=> b!4679730 m!5575781))

(declare-fun m!5575791 () Bool)

(assert (=> b!4679730 m!5575791))

(declare-fun m!5575793 () Bool)

(assert (=> b!4679730 m!5575793))

(declare-fun m!5575797 () Bool)

(assert (=> b!4679730 m!5575797))

(declare-fun m!5575801 () Bool)

(assert (=> b!4679730 m!5575801))

(assert (=> b!4679730 m!5575773))

(declare-fun m!5575805 () Bool)

(assert (=> bm!327046 m!5575805))

(declare-fun m!5575809 () Bool)

(assert (=> d!1487319 m!5575809))

(assert (=> d!1487319 m!5575561))

(declare-fun m!5575811 () Bool)

(assert (=> bm!327045 m!5575811))

(assert (=> b!4679612 d!1487319))

(declare-fun bs!1081851 () Bool)

(declare-fun b!4679738 () Bool)

(assert (= bs!1081851 (and b!4679738 b!4679731)))

(declare-fun lambda!204532 () Int)

(assert (=> bs!1081851 (= lambda!204532 lambda!204527)))

(declare-fun bs!1081852 () Bool)

(assert (= bs!1081852 (and b!4679738 b!4679730)))

(assert (=> bs!1081852 (= lambda!204532 lambda!204528)))

(assert (=> bs!1081852 (= (= lt!1839213 lt!1839421) (= lambda!204532 lambda!204529))))

(declare-fun bs!1081853 () Bool)

(assert (= bs!1081853 (and b!4679738 d!1487319)))

(assert (=> bs!1081853 (= (= lt!1839213 lt!1839428) (= lambda!204532 lambda!204531))))

(assert (=> b!4679738 true))

(declare-fun bs!1081854 () Bool)

(declare-fun b!4679737 () Bool)

(assert (= bs!1081854 (and b!4679737 d!1487319)))

(declare-fun lambda!204533 () Int)

(assert (=> bs!1081854 (= (= lt!1839213 lt!1839428) (= lambda!204533 lambda!204531))))

(declare-fun bs!1081855 () Bool)

(assert (= bs!1081855 (and b!4679737 b!4679738)))

(assert (=> bs!1081855 (= lambda!204533 lambda!204532)))

(declare-fun bs!1081856 () Bool)

(assert (= bs!1081856 (and b!4679737 b!4679730)))

(assert (=> bs!1081856 (= lambda!204533 lambda!204528)))

(declare-fun bs!1081857 () Bool)

(assert (= bs!1081857 (and b!4679737 b!4679731)))

(assert (=> bs!1081857 (= lambda!204533 lambda!204527)))

(assert (=> bs!1081856 (= (= lt!1839213 lt!1839421) (= lambda!204533 lambda!204529))))

(assert (=> b!4679737 true))

(declare-fun lambda!204534 () Int)

(declare-fun lt!1839442 () ListMap!4833)

(assert (=> bs!1081854 (= (= lt!1839442 lt!1839428) (= lambda!204534 lambda!204531))))

(assert (=> bs!1081855 (= (= lt!1839442 lt!1839213) (= lambda!204534 lambda!204532))))

(assert (=> bs!1081856 (= (= lt!1839442 lt!1839213) (= lambda!204534 lambda!204528))))

(assert (=> bs!1081857 (= (= lt!1839442 lt!1839213) (= lambda!204534 lambda!204527))))

(assert (=> b!4679737 (= (= lt!1839442 lt!1839213) (= lambda!204534 lambda!204533))))

(assert (=> bs!1081856 (= (= lt!1839442 lt!1839421) (= lambda!204534 lambda!204529))))

(assert (=> b!4679737 true))

(declare-fun bs!1081865 () Bool)

(declare-fun d!1487359 () Bool)

(assert (= bs!1081865 (and d!1487359 d!1487319)))

(declare-fun lt!1839449 () ListMap!4833)

(declare-fun lambda!204536 () Int)

(assert (=> bs!1081865 (= (= lt!1839449 lt!1839428) (= lambda!204536 lambda!204531))))

(declare-fun bs!1081867 () Bool)

(assert (= bs!1081867 (and d!1487359 b!4679738)))

(assert (=> bs!1081867 (= (= lt!1839449 lt!1839213) (= lambda!204536 lambda!204532))))

(declare-fun bs!1081869 () Bool)

(assert (= bs!1081869 (and d!1487359 b!4679730)))

(assert (=> bs!1081869 (= (= lt!1839449 lt!1839213) (= lambda!204536 lambda!204528))))

(declare-fun bs!1081870 () Bool)

(assert (= bs!1081870 (and d!1487359 b!4679731)))

(assert (=> bs!1081870 (= (= lt!1839449 lt!1839213) (= lambda!204536 lambda!204527))))

(assert (=> bs!1081869 (= (= lt!1839449 lt!1839421) (= lambda!204536 lambda!204529))))

(declare-fun bs!1081871 () Bool)

(assert (= bs!1081871 (and d!1487359 b!4679737)))

(assert (=> bs!1081871 (= (= lt!1839449 lt!1839213) (= lambda!204536 lambda!204533))))

(assert (=> bs!1081871 (= (= lt!1839449 lt!1839442) (= lambda!204536 lambda!204534))))

(assert (=> d!1487359 true))

(declare-fun e!2919739 () Bool)

(assert (=> d!1487359 e!2919739))

(declare-fun res!1971899 () Bool)

(assert (=> d!1487359 (=> (not res!1971899) (not e!2919739))))

(assert (=> d!1487359 (= res!1971899 (forall!11223 lt!1839217 lambda!204536))))

(declare-fun e!2919738 () ListMap!4833)

(assert (=> d!1487359 (= lt!1839449 e!2919738)))

(declare-fun c!800536 () Bool)

(assert (=> d!1487359 (= c!800536 ((_ is Nil!52245) lt!1839217))))

(assert (=> d!1487359 (noDuplicateKeys!1790 lt!1839217)))

(assert (=> d!1487359 (= (addToMapMapFromBucket!1222 lt!1839217 lt!1839213) lt!1839449)))

(declare-fun b!4679735 () Bool)

(declare-fun res!1971897 () Bool)

(assert (=> b!4679735 (=> (not res!1971897) (not e!2919739))))

(assert (=> b!4679735 (= res!1971897 (forall!11223 (toList!5469 lt!1839213) lambda!204536))))

(declare-fun b!4679736 () Bool)

(declare-fun e!2919740 () Bool)

(assert (=> b!4679736 (= e!2919740 (forall!11223 (toList!5469 lt!1839213) lambda!204534))))

(declare-fun bm!327048 () Bool)

(declare-fun call!327055 () Bool)

(declare-fun lt!1839462 () ListMap!4833)

(assert (=> bm!327048 (= call!327055 (forall!11223 (ite c!800536 (toList!5469 lt!1839213) (toList!5469 lt!1839462)) (ite c!800536 lambda!204532 lambda!204534)))))

(declare-fun bm!327049 () Bool)

(declare-fun call!327054 () Unit!122367)

(assert (=> bm!327049 (= call!327054 (lemmaContainsAllItsOwnKeys!662 lt!1839213))))

(declare-fun call!327053 () Bool)

(declare-fun bm!327050 () Bool)

(assert (=> bm!327050 (= call!327053 (forall!11223 (toList!5469 lt!1839213) (ite c!800536 lambda!204532 lambda!204534)))))

(assert (=> b!4679737 (= e!2919738 lt!1839442)))

(assert (=> b!4679737 (= lt!1839462 (+!2092 lt!1839213 (h!58454 lt!1839217)))))

(assert (=> b!4679737 (= lt!1839442 (addToMapMapFromBucket!1222 (t!359521 lt!1839217) (+!2092 lt!1839213 (h!58454 lt!1839217))))))

(declare-fun lt!1839455 () Unit!122367)

(assert (=> b!4679737 (= lt!1839455 call!327054)))

(assert (=> b!4679737 (forall!11223 (toList!5469 lt!1839213) lambda!204533)))

(declare-fun lt!1839451 () Unit!122367)

(assert (=> b!4679737 (= lt!1839451 lt!1839455)))

(assert (=> b!4679737 (forall!11223 (toList!5469 lt!1839462) lambda!204534)))

(declare-fun lt!1839448 () Unit!122367)

(declare-fun Unit!122397 () Unit!122367)

(assert (=> b!4679737 (= lt!1839448 Unit!122397)))

(assert (=> b!4679737 (forall!11223 (t!359521 lt!1839217) lambda!204534)))

(declare-fun lt!1839447 () Unit!122367)

(declare-fun Unit!122398 () Unit!122367)

(assert (=> b!4679737 (= lt!1839447 Unit!122398)))

(declare-fun lt!1839459 () Unit!122367)

(declare-fun Unit!122399 () Unit!122367)

(assert (=> b!4679737 (= lt!1839459 Unit!122399)))

(declare-fun lt!1839456 () Unit!122367)

(assert (=> b!4679737 (= lt!1839456 (forallContained!3346 (toList!5469 lt!1839462) lambda!204534 (h!58454 lt!1839217)))))

(assert (=> b!4679737 (contains!15378 lt!1839462 (_1!30071 (h!58454 lt!1839217)))))

(declare-fun lt!1839444 () Unit!122367)

(declare-fun Unit!122400 () Unit!122367)

(assert (=> b!4679737 (= lt!1839444 Unit!122400)))

(assert (=> b!4679737 (contains!15378 lt!1839442 (_1!30071 (h!58454 lt!1839217)))))

(declare-fun lt!1839458 () Unit!122367)

(declare-fun Unit!122401 () Unit!122367)

(assert (=> b!4679737 (= lt!1839458 Unit!122401)))

(assert (=> b!4679737 (forall!11223 lt!1839217 lambda!204534)))

(declare-fun lt!1839461 () Unit!122367)

(declare-fun Unit!122402 () Unit!122367)

(assert (=> b!4679737 (= lt!1839461 Unit!122402)))

(assert (=> b!4679737 call!327055))

(declare-fun lt!1839452 () Unit!122367)

(declare-fun Unit!122403 () Unit!122367)

(assert (=> b!4679737 (= lt!1839452 Unit!122403)))

(declare-fun lt!1839443 () Unit!122367)

(declare-fun Unit!122404 () Unit!122367)

(assert (=> b!4679737 (= lt!1839443 Unit!122404)))

(declare-fun lt!1839445 () Unit!122367)

(assert (=> b!4679737 (= lt!1839445 (addForallContainsKeyThenBeforeAdding!661 lt!1839213 lt!1839442 (_1!30071 (h!58454 lt!1839217)) (_2!30071 (h!58454 lt!1839217))))))

(assert (=> b!4679737 call!327053))

(declare-fun lt!1839453 () Unit!122367)

(assert (=> b!4679737 (= lt!1839453 lt!1839445)))

(assert (=> b!4679737 (forall!11223 (toList!5469 lt!1839213) lambda!204534)))

(declare-fun lt!1839457 () Unit!122367)

(declare-fun Unit!122405 () Unit!122367)

(assert (=> b!4679737 (= lt!1839457 Unit!122405)))

(declare-fun res!1971898 () Bool)

(assert (=> b!4679737 (= res!1971898 (forall!11223 lt!1839217 lambda!204534))))

(assert (=> b!4679737 (=> (not res!1971898) (not e!2919740))))

(assert (=> b!4679737 e!2919740))

(declare-fun lt!1839460 () Unit!122367)

(declare-fun Unit!122406 () Unit!122367)

(assert (=> b!4679737 (= lt!1839460 Unit!122406)))

(assert (=> b!4679738 (= e!2919738 lt!1839213)))

(declare-fun lt!1839446 () Unit!122367)

(assert (=> b!4679738 (= lt!1839446 call!327054)))

(assert (=> b!4679738 call!327053))

(declare-fun lt!1839454 () Unit!122367)

(assert (=> b!4679738 (= lt!1839454 lt!1839446)))

(assert (=> b!4679738 call!327055))

(declare-fun lt!1839450 () Unit!122367)

(declare-fun Unit!122407 () Unit!122367)

(assert (=> b!4679738 (= lt!1839450 Unit!122407)))

(declare-fun b!4679739 () Bool)

(assert (=> b!4679739 (= e!2919739 (invariantList!1374 (toList!5469 lt!1839449)))))

(assert (= (and d!1487359 c!800536) b!4679738))

(assert (= (and d!1487359 (not c!800536)) b!4679737))

(assert (= (and b!4679737 res!1971898) b!4679736))

(assert (= (or b!4679738 b!4679737) bm!327049))

(assert (= (or b!4679738 b!4679737) bm!327050))

(assert (= (or b!4679738 b!4679737) bm!327048))

(assert (= (and d!1487359 res!1971899) b!4679735))

(assert (= (and b!4679735 res!1971897) b!4679739))

(declare-fun m!5575819 () Bool)

(assert (=> bm!327050 m!5575819))

(declare-fun m!5575821 () Bool)

(assert (=> b!4679735 m!5575821))

(declare-fun m!5575823 () Bool)

(assert (=> b!4679736 m!5575823))

(declare-fun m!5575825 () Bool)

(assert (=> b!4679739 m!5575825))

(declare-fun m!5575827 () Bool)

(assert (=> b!4679737 m!5575827))

(declare-fun m!5575829 () Bool)

(assert (=> b!4679737 m!5575829))

(declare-fun m!5575831 () Bool)

(assert (=> b!4679737 m!5575831))

(declare-fun m!5575833 () Bool)

(assert (=> b!4679737 m!5575833))

(declare-fun m!5575835 () Bool)

(assert (=> b!4679737 m!5575835))

(declare-fun m!5575837 () Bool)

(assert (=> b!4679737 m!5575837))

(assert (=> b!4679737 m!5575823))

(assert (=> b!4679737 m!5575835))

(declare-fun m!5575839 () Bool)

(assert (=> b!4679737 m!5575839))

(declare-fun m!5575841 () Bool)

(assert (=> b!4679737 m!5575841))

(declare-fun m!5575843 () Bool)

(assert (=> b!4679737 m!5575843))

(declare-fun m!5575845 () Bool)

(assert (=> b!4679737 m!5575845))

(assert (=> b!4679737 m!5575831))

(assert (=> bm!327049 m!5575805))

(declare-fun m!5575847 () Bool)

(assert (=> d!1487359 m!5575847))

(declare-fun m!5575849 () Bool)

(assert (=> d!1487359 m!5575849))

(declare-fun m!5575851 () Bool)

(assert (=> bm!327048 m!5575851))

(assert (=> b!4679612 d!1487359))

(declare-fun d!1487365 () Bool)

(declare-fun e!2919758 () Bool)

(assert (=> d!1487365 e!2919758))

(declare-fun res!1971917 () Bool)

(assert (=> d!1487365 (=> (not res!1971917) (not e!2919758))))

(declare-fun lt!1839486 () ListMap!4833)

(assert (=> d!1487365 (= res!1971917 (not (contains!15378 lt!1839486 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!326 (List!52369 K!13625) List!52369)

(assert (=> d!1487365 (= lt!1839486 (ListMap!4834 (removePresrvNoDuplicatedKeys!326 (toList!5469 lt!1839207) key!4653)))))

(assert (=> d!1487365 (= (-!654 lt!1839207 key!4653) lt!1839486)))

(declare-fun b!4679759 () Bool)

(declare-datatypes ((List!52372 0))(
  ( (Nil!52248) (Cons!52248 (h!58459 K!13625) (t!359526 List!52372)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9104 (List!52372) (InoxSet K!13625))

(declare-fun keys!18613 (ListMap!4833) List!52372)

(assert (=> b!4679759 (= e!2919758 (= ((_ map and) (content!9104 (keys!18613 lt!1839207)) ((_ map not) (store ((as const (Array K!13625 Bool)) false) key!4653 true))) (content!9104 (keys!18613 lt!1839486))))))

(assert (= (and d!1487365 res!1971917) b!4679759))

(declare-fun m!5575859 () Bool)

(assert (=> d!1487365 m!5575859))

(declare-fun m!5575861 () Bool)

(assert (=> d!1487365 m!5575861))

(declare-fun m!5575863 () Bool)

(assert (=> b!4679759 m!5575863))

(declare-fun m!5575865 () Bool)

(assert (=> b!4679759 m!5575865))

(declare-fun m!5575867 () Bool)

(assert (=> b!4679759 m!5575867))

(declare-fun m!5575869 () Bool)

(assert (=> b!4679759 m!5575869))

(declare-fun m!5575871 () Bool)

(assert (=> b!4679759 m!5575871))

(assert (=> b!4679759 m!5575863))

(assert (=> b!4679759 m!5575867))

(assert (=> b!4679601 d!1487365))

(declare-fun d!1487371 () Bool)

(declare-fun e!2919759 () Bool)

(assert (=> d!1487371 e!2919759))

(declare-fun res!1971918 () Bool)

(assert (=> d!1487371 (=> (not res!1971918) (not e!2919759))))

(declare-fun lt!1839487 () ListMap!4833)

(assert (=> d!1487371 (= res!1971918 (not (contains!15378 lt!1839487 key!4653)))))

(assert (=> d!1487371 (= lt!1839487 (ListMap!4834 (removePresrvNoDuplicatedKeys!326 (toList!5469 (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))) key!4653)))))

(assert (=> d!1487371 (= (-!654 (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) key!4653) lt!1839487)))

(declare-fun b!4679760 () Bool)

(assert (=> b!4679760 (= e!2919759 (= ((_ map and) (content!9104 (keys!18613 (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13625 Bool)) false) key!4653 true))) (content!9104 (keys!18613 lt!1839487))))))

(assert (= (and d!1487371 res!1971918) b!4679760))

(declare-fun m!5575873 () Bool)

(assert (=> d!1487371 m!5575873))

(declare-fun m!5575875 () Bool)

(assert (=> d!1487371 m!5575875))

(declare-fun m!5575877 () Bool)

(assert (=> b!4679760 m!5575877))

(declare-fun m!5575879 () Bool)

(assert (=> b!4679760 m!5575879))

(declare-fun m!5575881 () Bool)

(assert (=> b!4679760 m!5575881))

(declare-fun m!5575883 () Bool)

(assert (=> b!4679760 m!5575883))

(assert (=> b!4679760 m!5575871))

(assert (=> b!4679760 m!5575489))

(assert (=> b!4679760 m!5575877))

(assert (=> b!4679760 m!5575881))

(assert (=> b!4679601 d!1487371))

(declare-fun d!1487373 () Bool)

(declare-fun e!2919762 () Bool)

(assert (=> d!1487373 e!2919762))

(declare-fun res!1971923 () Bool)

(assert (=> d!1487373 (=> (not res!1971923) (not e!2919762))))

(declare-fun lt!1839498 () ListMap!4833)

(assert (=> d!1487373 (= res!1971923 (contains!15378 lt!1839498 (_1!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))))))

(declare-fun lt!1839496 () List!52369)

(assert (=> d!1487373 (= lt!1839498 (ListMap!4834 lt!1839496))))

(declare-fun lt!1839497 () Unit!122367)

(declare-fun lt!1839499 () Unit!122367)

(assert (=> d!1487373 (= lt!1839497 lt!1839499)))

(declare-datatypes ((Option!11969 0))(
  ( (None!11968) (Some!11968 (v!46331 V!13871)) )
))
(declare-fun getValueByKey!1717 (List!52369 K!13625) Option!11969)

(assert (=> d!1487373 (= (getValueByKey!1717 lt!1839496 (_1!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))) (Some!11968 (_2!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!975 (List!52369 K!13625 V!13871) Unit!122367)

(assert (=> d!1487373 (= lt!1839499 (lemmaContainsTupThenGetReturnValue!975 lt!1839496 (_1!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) (_2!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!483 (List!52369 K!13625 V!13871) List!52369)

(assert (=> d!1487373 (= lt!1839496 (insertNoDuplicatedKeys!483 (toList!5469 lt!1839212) (_1!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) (_2!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))))))

(assert (=> d!1487373 (= (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) lt!1839498)))

(declare-fun b!4679765 () Bool)

(declare-fun res!1971924 () Bool)

(assert (=> b!4679765 (=> (not res!1971924) (not e!2919762))))

(assert (=> b!4679765 (= res!1971924 (= (getValueByKey!1717 (toList!5469 lt!1839498) (_1!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34))))) (Some!11968 (_2!30071 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))))))))

(declare-fun b!4679766 () Bool)

(declare-fun contains!15380 (List!52369 tuple2!53554) Bool)

(assert (=> b!4679766 (= e!2919762 (contains!15380 (toList!5469 lt!1839498) (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))))))

(assert (= (and d!1487373 res!1971923) b!4679765))

(assert (= (and b!4679765 res!1971924) b!4679766))

(declare-fun m!5575915 () Bool)

(assert (=> d!1487373 m!5575915))

(declare-fun m!5575917 () Bool)

(assert (=> d!1487373 m!5575917))

(declare-fun m!5575919 () Bool)

(assert (=> d!1487373 m!5575919))

(declare-fun m!5575921 () Bool)

(assert (=> d!1487373 m!5575921))

(declare-fun m!5575923 () Bool)

(assert (=> b!4679765 m!5575923))

(declare-fun m!5575925 () Bool)

(assert (=> b!4679766 m!5575925))

(assert (=> b!4679601 d!1487373))

(declare-fun d!1487377 () Bool)

(assert (=> d!1487377 (= (-!654 (+!2092 lt!1839212 (tuple2!53555 key!4653 (_2!30071 (h!58454 oldBucket!34)))) key!4653) lt!1839212)))

(declare-fun lt!1839505 () Unit!122367)

(declare-fun choose!32377 (ListMap!4833 K!13625 V!13871) Unit!122367)

(assert (=> d!1487377 (= lt!1839505 (choose!32377 lt!1839212 key!4653 (_2!30071 (h!58454 oldBucket!34))))))

(assert (=> d!1487377 (not (contains!15378 lt!1839212 key!4653))))

(assert (=> d!1487377 (= (addThenRemoveForNewKeyIsSame!45 lt!1839212 key!4653 (_2!30071 (h!58454 oldBucket!34))) lt!1839505)))

(declare-fun bs!1081913 () Bool)

(assert (= bs!1081913 d!1487377))

(assert (=> bs!1081913 m!5575489))

(assert (=> bs!1081913 m!5575489))

(assert (=> bs!1081913 m!5575491))

(declare-fun m!5575935 () Bool)

(assert (=> bs!1081913 m!5575935))

(assert (=> bs!1081913 m!5575523))

(assert (=> b!4679601 d!1487377))

(declare-fun d!1487385 () Bool)

(declare-fun res!1971929 () Bool)

(declare-fun e!2919767 () Bool)

(assert (=> d!1487385 (=> res!1971929 e!2919767)))

(assert (=> d!1487385 (= res!1971929 (not ((_ is Cons!52245) newBucket!218)))))

(assert (=> d!1487385 (= (noDuplicateKeys!1790 newBucket!218) e!2919767)))

(declare-fun b!4679771 () Bool)

(declare-fun e!2919768 () Bool)

(assert (=> b!4679771 (= e!2919767 e!2919768)))

(declare-fun res!1971930 () Bool)

(assert (=> b!4679771 (=> (not res!1971930) (not e!2919768))))

(assert (=> b!4679771 (= res!1971930 (not (containsKey!2933 (t!359521 newBucket!218) (_1!30071 (h!58454 newBucket!218)))))))

(declare-fun b!4679772 () Bool)

(assert (=> b!4679772 (= e!2919768 (noDuplicateKeys!1790 (t!359521 newBucket!218)))))

(assert (= (and d!1487385 (not res!1971929)) b!4679771))

(assert (= (and b!4679771 res!1971930) b!4679772))

(declare-fun m!5575937 () Bool)

(assert (=> b!4679771 m!5575937))

(declare-fun m!5575939 () Bool)

(assert (=> b!4679772 m!5575939))

(assert (=> b!4679602 d!1487385))

(declare-fun bs!1081914 () Bool)

(declare-fun d!1487387 () Bool)

(assert (= bs!1081914 (and d!1487387 d!1487319)))

(declare-fun lambda!204543 () Int)

(assert (=> bs!1081914 (not (= lambda!204543 lambda!204531))))

(declare-fun bs!1081915 () Bool)

(assert (= bs!1081915 (and d!1487387 d!1487359)))

(assert (=> bs!1081915 (not (= lambda!204543 lambda!204536))))

(declare-fun bs!1081916 () Bool)

(assert (= bs!1081916 (and d!1487387 b!4679738)))

(assert (=> bs!1081916 (not (= lambda!204543 lambda!204532))))

(declare-fun bs!1081917 () Bool)

(assert (= bs!1081917 (and d!1487387 b!4679730)))

(assert (=> bs!1081917 (not (= lambda!204543 lambda!204528))))

(declare-fun bs!1081918 () Bool)

(assert (= bs!1081918 (and d!1487387 b!4679731)))

(assert (=> bs!1081918 (not (= lambda!204543 lambda!204527))))

(assert (=> bs!1081917 (not (= lambda!204543 lambda!204529))))

(declare-fun bs!1081919 () Bool)

(assert (= bs!1081919 (and d!1487387 b!4679737)))

(assert (=> bs!1081919 (not (= lambda!204543 lambda!204533))))

(assert (=> bs!1081919 (not (= lambda!204543 lambda!204534))))

(assert (=> d!1487387 true))

(assert (=> d!1487387 true))

(assert (=> d!1487387 (= (allKeysSameHash!1616 newBucket!218 hash!405 hashF!1323) (forall!11223 newBucket!218 lambda!204543))))

(declare-fun bs!1081920 () Bool)

(assert (= bs!1081920 d!1487387))

(declare-fun m!5575953 () Bool)

(assert (=> bs!1081920 m!5575953))

(assert (=> b!4679591 d!1487387))

(declare-fun d!1487391 () Bool)

(declare-fun res!1971939 () Bool)

(declare-fun e!2919773 () Bool)

(assert (=> d!1487391 (=> res!1971939 e!2919773)))

(assert (=> d!1487391 (= res!1971939 (not ((_ is Cons!52245) oldBucket!34)))))

(assert (=> d!1487391 (= (noDuplicateKeys!1790 oldBucket!34) e!2919773)))

(declare-fun b!4679785 () Bool)

(declare-fun e!2919774 () Bool)

(assert (=> b!4679785 (= e!2919773 e!2919774)))

(declare-fun res!1971940 () Bool)

(assert (=> b!4679785 (=> (not res!1971940) (not e!2919774))))

(assert (=> b!4679785 (= res!1971940 (not (containsKey!2933 (t!359521 oldBucket!34) (_1!30071 (h!58454 oldBucket!34)))))))

(declare-fun b!4679786 () Bool)

(assert (=> b!4679786 (= e!2919774 (noDuplicateKeys!1790 (t!359521 oldBucket!34)))))

(assert (= (and d!1487391 (not res!1971939)) b!4679785))

(assert (= (and b!4679785 res!1971940) b!4679786))

(declare-fun m!5575967 () Bool)

(assert (=> b!4679785 m!5575967))

(declare-fun m!5575969 () Bool)

(assert (=> b!4679786 m!5575969))

(assert (=> b!4679590 d!1487391))

(declare-fun d!1487395 () Bool)

(declare-fun res!1971948 () Bool)

(declare-fun e!2919782 () Bool)

(assert (=> d!1487395 (=> res!1971948 e!2919782)))

(assert (=> d!1487395 (= res!1971948 ((_ is Nil!52246) (toList!5470 lm!2023)))))

(assert (=> d!1487395 (= (forall!11221 (toList!5470 lm!2023) lambda!204443) e!2919782)))

(declare-fun b!4679796 () Bool)

(declare-fun e!2919783 () Bool)

(assert (=> b!4679796 (= e!2919782 e!2919783)))

(declare-fun res!1971949 () Bool)

(assert (=> b!4679796 (=> (not res!1971949) (not e!2919783))))

(declare-fun dynLambda!21676 (Int tuple2!53556) Bool)

(assert (=> b!4679796 (= res!1971949 (dynLambda!21676 lambda!204443 (h!58455 (toList!5470 lm!2023))))))

(declare-fun b!4679797 () Bool)

(assert (=> b!4679797 (= e!2919783 (forall!11221 (t!359522 (toList!5470 lm!2023)) lambda!204443))))

(assert (= (and d!1487395 (not res!1971948)) b!4679796))

(assert (= (and b!4679796 res!1971949) b!4679797))

(declare-fun b_lambda!176647 () Bool)

(assert (=> (not b_lambda!176647) (not b!4679796)))

(declare-fun m!5575975 () Bool)

(assert (=> b!4679796 m!5575975))

(declare-fun m!5575977 () Bool)

(assert (=> b!4679797 m!5575977))

(assert (=> start!472452 d!1487395))

(declare-fun d!1487399 () Bool)

(declare-fun isStrictlySorted!613 (List!52370) Bool)

(assert (=> d!1487399 (= (inv!67499 lm!2023) (isStrictlySorted!613 (toList!5470 lm!2023)))))

(declare-fun bs!1081951 () Bool)

(assert (= bs!1081951 d!1487399))

(declare-fun m!5575979 () Bool)

(assert (=> bs!1081951 m!5575979))

(assert (=> start!472452 d!1487399))

(declare-fun bs!1081969 () Bool)

(declare-fun d!1487401 () Bool)

(assert (= bs!1081969 (and d!1487401 start!472452)))

(declare-fun lambda!204550 () Int)

(assert (=> bs!1081969 (= lambda!204550 lambda!204443)))

(declare-fun lt!1839545 () ListMap!4833)

(assert (=> d!1487401 (invariantList!1374 (toList!5469 lt!1839545))))

(declare-fun e!2919788 () ListMap!4833)

(assert (=> d!1487401 (= lt!1839545 e!2919788)))

(declare-fun c!800541 () Bool)

(assert (=> d!1487401 (= c!800541 ((_ is Cons!52246) (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023)))))))

(assert (=> d!1487401 (forall!11221 (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023))) lambda!204550)))

(assert (=> d!1487401 (= (extractMap!1816 (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023)))) lt!1839545)))

(declare-fun b!4679804 () Bool)

(assert (=> b!4679804 (= e!2919788 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023))))) (extractMap!1816 (t!359522 (Cons!52246 (tuple2!53557 hash!405 newBucket!218) (t!359522 (toList!5470 lm!2023)))))))))

(declare-fun b!4679805 () Bool)

(assert (=> b!4679805 (= e!2919788 (ListMap!4834 Nil!52245))))

(assert (= (and d!1487401 c!800541) b!4679804))

(assert (= (and d!1487401 (not c!800541)) b!4679805))

(declare-fun m!5576021 () Bool)

(assert (=> d!1487401 m!5576021))

(declare-fun m!5576023 () Bool)

(assert (=> d!1487401 m!5576023))

(declare-fun m!5576025 () Bool)

(assert (=> b!4679804 m!5576025))

(assert (=> b!4679804 m!5576025))

(declare-fun m!5576027 () Bool)

(assert (=> b!4679804 m!5576027))

(assert (=> b!4679611 d!1487401))

(declare-fun bs!1081970 () Bool)

(declare-fun d!1487409 () Bool)

(assert (= bs!1081970 (and d!1487409 start!472452)))

(declare-fun lambda!204551 () Int)

(assert (=> bs!1081970 (= lambda!204551 lambda!204443)))

(declare-fun bs!1081971 () Bool)

(assert (= bs!1081971 (and d!1487409 d!1487401)))

(assert (=> bs!1081971 (= lambda!204551 lambda!204550)))

(declare-fun lt!1839546 () ListMap!4833)

(assert (=> d!1487409 (invariantList!1374 (toList!5469 lt!1839546))))

(declare-fun e!2919789 () ListMap!4833)

(assert (=> d!1487409 (= lt!1839546 e!2919789)))

(declare-fun c!800542 () Bool)

(assert (=> d!1487409 (= c!800542 ((_ is Cons!52246) lt!1839216))))

(assert (=> d!1487409 (forall!11221 lt!1839216 lambda!204551)))

(assert (=> d!1487409 (= (extractMap!1816 lt!1839216) lt!1839546)))

(declare-fun b!4679806 () Bool)

(assert (=> b!4679806 (= e!2919789 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 lt!1839216)) (extractMap!1816 (t!359522 lt!1839216))))))

(declare-fun b!4679807 () Bool)

(assert (=> b!4679807 (= e!2919789 (ListMap!4834 Nil!52245))))

(assert (= (and d!1487409 c!800542) b!4679806))

(assert (= (and d!1487409 (not c!800542)) b!4679807))

(declare-fun m!5576029 () Bool)

(assert (=> d!1487409 m!5576029))

(declare-fun m!5576031 () Bool)

(assert (=> d!1487409 m!5576031))

(declare-fun m!5576033 () Bool)

(assert (=> b!4679806 m!5576033))

(assert (=> b!4679806 m!5576033))

(declare-fun m!5576035 () Bool)

(assert (=> b!4679806 m!5576035))

(assert (=> b!4679611 d!1487409))

(declare-fun d!1487411 () Bool)

(assert (=> d!1487411 (= (head!9872 (toList!5470 lm!2023)) (h!58455 (toList!5470 lm!2023)))))

(assert (=> b!4679609 d!1487411))

(declare-fun b!4679820 () Bool)

(declare-fun e!2919798 () List!52369)

(declare-fun e!2919797 () List!52369)

(assert (=> b!4679820 (= e!2919798 e!2919797)))

(declare-fun c!800548 () Bool)

(assert (=> b!4679820 (= c!800548 ((_ is Cons!52245) oldBucket!34))))

(declare-fun b!4679819 () Bool)

(assert (=> b!4679819 (= e!2919798 (t!359521 oldBucket!34))))

(declare-fun b!4679821 () Bool)

(assert (=> b!4679821 (= e!2919797 (Cons!52245 (h!58454 oldBucket!34) (removePairForKey!1385 (t!359521 oldBucket!34) key!4653)))))

(declare-fun d!1487413 () Bool)

(declare-fun lt!1839552 () List!52369)

(assert (=> d!1487413 (not (containsKey!2933 lt!1839552 key!4653))))

(assert (=> d!1487413 (= lt!1839552 e!2919798)))

(declare-fun c!800547 () Bool)

(assert (=> d!1487413 (= c!800547 (and ((_ is Cons!52245) oldBucket!34) (= (_1!30071 (h!58454 oldBucket!34)) key!4653)))))

(assert (=> d!1487413 (noDuplicateKeys!1790 oldBucket!34)))

(assert (=> d!1487413 (= (removePairForKey!1385 oldBucket!34 key!4653) lt!1839552)))

(declare-fun b!4679822 () Bool)

(assert (=> b!4679822 (= e!2919797 Nil!52245)))

(assert (= (and d!1487413 c!800547) b!4679819))

(assert (= (and d!1487413 (not c!800547)) b!4679820))

(assert (= (and b!4679820 c!800548) b!4679821))

(assert (= (and b!4679820 (not c!800548)) b!4679822))

(declare-fun m!5576051 () Bool)

(assert (=> b!4679821 m!5576051))

(declare-fun m!5576053 () Bool)

(assert (=> d!1487413 m!5576053))

(assert (=> d!1487413 m!5575483))

(assert (=> b!4679599 d!1487413))

(declare-fun d!1487417 () Bool)

(assert (=> d!1487417 (= (tail!8436 oldBucket!34) (t!359521 oldBucket!34))))

(assert (=> b!4679597 d!1487417))

(declare-fun bs!1081972 () Bool)

(declare-fun d!1487419 () Bool)

(assert (= bs!1081972 (and d!1487419 start!472452)))

(declare-fun lambda!204554 () Int)

(assert (=> bs!1081972 (not (= lambda!204554 lambda!204443))))

(declare-fun bs!1081973 () Bool)

(assert (= bs!1081973 (and d!1487419 d!1487401)))

(assert (=> bs!1081973 (not (= lambda!204554 lambda!204550))))

(declare-fun bs!1081974 () Bool)

(assert (= bs!1081974 (and d!1487419 d!1487409)))

(assert (=> bs!1081974 (not (= lambda!204554 lambda!204551))))

(assert (=> d!1487419 true))

(assert (=> d!1487419 (= (allKeysSameHashInMap!1704 lm!2023 hashF!1323) (forall!11221 (toList!5470 lm!2023) lambda!204554))))

(declare-fun bs!1081975 () Bool)

(assert (= bs!1081975 d!1487419))

(declare-fun m!5576055 () Bool)

(assert (=> bs!1081975 m!5576055))

(assert (=> b!4679598 d!1487419))

(declare-fun d!1487421 () Bool)

(declare-fun hash!3967 (Hashable!6159 K!13625) (_ BitVec 64))

(assert (=> d!1487421 (= (hash!3966 hashF!1323 key!4653) (hash!3967 hashF!1323 key!4653))))

(declare-fun bs!1081977 () Bool)

(assert (= bs!1081977 d!1487421))

(declare-fun m!5576061 () Bool)

(assert (=> bs!1081977 m!5576061))

(assert (=> b!4679607 d!1487421))

(declare-fun b!4679866 () Bool)

(declare-fun e!2919834 () Bool)

(declare-fun contains!15381 (List!52372 K!13625) Bool)

(assert (=> b!4679866 (= e!2919834 (contains!15381 (keys!18613 lt!1839215) key!4653))))

(declare-fun b!4679867 () Bool)

(declare-fun e!2919830 () Unit!122367)

(declare-fun Unit!122424 () Unit!122367)

(assert (=> b!4679867 (= e!2919830 Unit!122424)))

(declare-fun b!4679868 () Bool)

(assert (=> b!4679868 false))

(declare-fun lt!1839585 () Unit!122367)

(declare-fun lt!1839582 () Unit!122367)

(assert (=> b!4679868 (= lt!1839585 lt!1839582)))

(declare-fun containsKey!2935 (List!52369 K!13625) Bool)

(assert (=> b!4679868 (containsKey!2935 (toList!5469 lt!1839215) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!813 (List!52369 K!13625) Unit!122367)

(assert (=> b!4679868 (= lt!1839582 (lemmaInGetKeysListThenContainsKey!813 (toList!5469 lt!1839215) key!4653))))

(declare-fun Unit!122428 () Unit!122367)

(assert (=> b!4679868 (= e!2919830 Unit!122428)))

(declare-fun b!4679869 () Bool)

(declare-fun e!2919833 () Bool)

(assert (=> b!4679869 (= e!2919833 (not (contains!15381 (keys!18613 lt!1839215) key!4653)))))

(declare-fun b!4679870 () Bool)

(declare-fun e!2919829 () Unit!122367)

(declare-fun lt!1839581 () Unit!122367)

(assert (=> b!4679870 (= e!2919829 lt!1839581)))

(declare-fun lt!1839587 () Unit!122367)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1609 (List!52369 K!13625) Unit!122367)

(assert (=> b!4679870 (= lt!1839587 (lemmaContainsKeyImpliesGetValueByKeyDefined!1609 (toList!5469 lt!1839215) key!4653))))

(declare-fun isDefined!9224 (Option!11969) Bool)

(assert (=> b!4679870 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839215) key!4653))))

(declare-fun lt!1839584 () Unit!122367)

(assert (=> b!4679870 (= lt!1839584 lt!1839587)))

(declare-fun lemmaInListThenGetKeysListContains!809 (List!52369 K!13625) Unit!122367)

(assert (=> b!4679870 (= lt!1839581 (lemmaInListThenGetKeysListContains!809 (toList!5469 lt!1839215) key!4653))))

(declare-fun call!327064 () Bool)

(assert (=> b!4679870 call!327064))

(declare-fun b!4679871 () Bool)

(declare-fun e!2919831 () List!52372)

(assert (=> b!4679871 (= e!2919831 (keys!18613 lt!1839215))))

(declare-fun d!1487425 () Bool)

(declare-fun e!2919832 () Bool)

(assert (=> d!1487425 e!2919832))

(declare-fun res!1971974 () Bool)

(assert (=> d!1487425 (=> res!1971974 e!2919832)))

(assert (=> d!1487425 (= res!1971974 e!2919833)))

(declare-fun res!1971973 () Bool)

(assert (=> d!1487425 (=> (not res!1971973) (not e!2919833))))

(declare-fun lt!1839586 () Bool)

(assert (=> d!1487425 (= res!1971973 (not lt!1839586))))

(declare-fun lt!1839583 () Bool)

(assert (=> d!1487425 (= lt!1839586 lt!1839583)))

(declare-fun lt!1839588 () Unit!122367)

(assert (=> d!1487425 (= lt!1839588 e!2919829)))

(declare-fun c!800557 () Bool)

(assert (=> d!1487425 (= c!800557 lt!1839583)))

(assert (=> d!1487425 (= lt!1839583 (containsKey!2935 (toList!5469 lt!1839215) key!4653))))

(assert (=> d!1487425 (= (contains!15378 lt!1839215 key!4653) lt!1839586)))

(declare-fun b!4679872 () Bool)

(assert (=> b!4679872 (= e!2919829 e!2919830)))

(declare-fun c!800555 () Bool)

(assert (=> b!4679872 (= c!800555 call!327064)))

(declare-fun bm!327059 () Bool)

(assert (=> bm!327059 (= call!327064 (contains!15381 e!2919831 key!4653))))

(declare-fun c!800556 () Bool)

(assert (=> bm!327059 (= c!800556 c!800557)))

(declare-fun b!4679873 () Bool)

(declare-fun getKeysList!814 (List!52369) List!52372)

(assert (=> b!4679873 (= e!2919831 (getKeysList!814 (toList!5469 lt!1839215)))))

(declare-fun b!4679874 () Bool)

(assert (=> b!4679874 (= e!2919832 e!2919834)))

(declare-fun res!1971975 () Bool)

(assert (=> b!4679874 (=> (not res!1971975) (not e!2919834))))

(assert (=> b!4679874 (= res!1971975 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839215) key!4653)))))

(assert (= (and d!1487425 c!800557) b!4679870))

(assert (= (and d!1487425 (not c!800557)) b!4679872))

(assert (= (and b!4679872 c!800555) b!4679868))

(assert (= (and b!4679872 (not c!800555)) b!4679867))

(assert (= (or b!4679870 b!4679872) bm!327059))

(assert (= (and bm!327059 c!800556) b!4679873))

(assert (= (and bm!327059 (not c!800556)) b!4679871))

(assert (= (and d!1487425 res!1971973) b!4679869))

(assert (= (and d!1487425 (not res!1971974)) b!4679874))

(assert (= (and b!4679874 res!1971975) b!4679866))

(declare-fun m!5576111 () Bool)

(assert (=> b!4679871 m!5576111))

(assert (=> b!4679869 m!5576111))

(assert (=> b!4679869 m!5576111))

(declare-fun m!5576113 () Bool)

(assert (=> b!4679869 m!5576113))

(declare-fun m!5576115 () Bool)

(assert (=> b!4679870 m!5576115))

(declare-fun m!5576117 () Bool)

(assert (=> b!4679870 m!5576117))

(assert (=> b!4679870 m!5576117))

(declare-fun m!5576119 () Bool)

(assert (=> b!4679870 m!5576119))

(declare-fun m!5576121 () Bool)

(assert (=> b!4679870 m!5576121))

(assert (=> b!4679874 m!5576117))

(assert (=> b!4679874 m!5576117))

(assert (=> b!4679874 m!5576119))

(declare-fun m!5576123 () Bool)

(assert (=> bm!327059 m!5576123))

(declare-fun m!5576125 () Bool)

(assert (=> d!1487425 m!5576125))

(assert (=> b!4679866 m!5576111))

(assert (=> b!4679866 m!5576111))

(assert (=> b!4679866 m!5576113))

(assert (=> b!4679868 m!5576125))

(declare-fun m!5576127 () Bool)

(assert (=> b!4679868 m!5576127))

(declare-fun m!5576129 () Bool)

(assert (=> b!4679873 m!5576129))

(assert (=> b!4679605 d!1487425))

(declare-fun bs!1081982 () Bool)

(declare-fun d!1487443 () Bool)

(assert (= bs!1081982 (and d!1487443 start!472452)))

(declare-fun lambda!204555 () Int)

(assert (=> bs!1081982 (= lambda!204555 lambda!204443)))

(declare-fun bs!1081983 () Bool)

(assert (= bs!1081983 (and d!1487443 d!1487401)))

(assert (=> bs!1081983 (= lambda!204555 lambda!204550)))

(declare-fun bs!1081984 () Bool)

(assert (= bs!1081984 (and d!1487443 d!1487409)))

(assert (=> bs!1081984 (= lambda!204555 lambda!204551)))

(declare-fun bs!1081985 () Bool)

(assert (= bs!1081985 (and d!1487443 d!1487419)))

(assert (=> bs!1081985 (not (= lambda!204555 lambda!204554))))

(declare-fun lt!1839589 () ListMap!4833)

(assert (=> d!1487443 (invariantList!1374 (toList!5469 lt!1839589))))

(declare-fun e!2919835 () ListMap!4833)

(assert (=> d!1487443 (= lt!1839589 e!2919835)))

(declare-fun c!800558 () Bool)

(assert (=> d!1487443 (= c!800558 ((_ is Cons!52246) (toList!5470 lm!2023)))))

(assert (=> d!1487443 (forall!11221 (toList!5470 lm!2023) lambda!204555)))

(assert (=> d!1487443 (= (extractMap!1816 (toList!5470 lm!2023)) lt!1839589)))

(declare-fun b!4679875 () Bool)

(assert (=> b!4679875 (= e!2919835 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (toList!5470 lm!2023))) (extractMap!1816 (t!359522 (toList!5470 lm!2023)))))))

(declare-fun b!4679876 () Bool)

(assert (=> b!4679876 (= e!2919835 (ListMap!4834 Nil!52245))))

(assert (= (and d!1487443 c!800558) b!4679875))

(assert (= (and d!1487443 (not c!800558)) b!4679876))

(declare-fun m!5576131 () Bool)

(assert (=> d!1487443 m!5576131))

(declare-fun m!5576133 () Bool)

(assert (=> d!1487443 m!5576133))

(assert (=> b!4679875 m!5575535))

(assert (=> b!4679875 m!5575535))

(declare-fun m!5576135 () Bool)

(assert (=> b!4679875 m!5576135))

(assert (=> b!4679605 d!1487443))

(declare-fun bs!1081986 () Bool)

(declare-fun b!4679880 () Bool)

(assert (= bs!1081986 (and b!4679880 d!1487319)))

(declare-fun lambda!204556 () Int)

(assert (=> bs!1081986 (= (= lt!1839213 lt!1839428) (= lambda!204556 lambda!204531))))

(declare-fun bs!1081987 () Bool)

(assert (= bs!1081987 (and b!4679880 d!1487359)))

(assert (=> bs!1081987 (= (= lt!1839213 lt!1839449) (= lambda!204556 lambda!204536))))

(declare-fun bs!1081988 () Bool)

(assert (= bs!1081988 (and b!4679880 b!4679738)))

(assert (=> bs!1081988 (= lambda!204556 lambda!204532)))

(declare-fun bs!1081989 () Bool)

(assert (= bs!1081989 (and b!4679880 b!4679730)))

(assert (=> bs!1081989 (= lambda!204556 lambda!204528)))

(declare-fun bs!1081990 () Bool)

(assert (= bs!1081990 (and b!4679880 b!4679731)))

(assert (=> bs!1081990 (= lambda!204556 lambda!204527)))

(declare-fun bs!1081991 () Bool)

(assert (= bs!1081991 (and b!4679880 d!1487387)))

(assert (=> bs!1081991 (not (= lambda!204556 lambda!204543))))

(assert (=> bs!1081989 (= (= lt!1839213 lt!1839421) (= lambda!204556 lambda!204529))))

(declare-fun bs!1081992 () Bool)

(assert (= bs!1081992 (and b!4679880 b!4679737)))

(assert (=> bs!1081992 (= lambda!204556 lambda!204533)))

(assert (=> bs!1081992 (= (= lt!1839213 lt!1839442) (= lambda!204556 lambda!204534))))

(assert (=> b!4679880 true))

(declare-fun bs!1081993 () Bool)

(declare-fun b!4679879 () Bool)

(assert (= bs!1081993 (and b!4679879 b!4679880)))

(declare-fun lambda!204557 () Int)

(assert (=> bs!1081993 (= lambda!204557 lambda!204556)))

(declare-fun bs!1081994 () Bool)

(assert (= bs!1081994 (and b!4679879 d!1487319)))

(assert (=> bs!1081994 (= (= lt!1839213 lt!1839428) (= lambda!204557 lambda!204531))))

(declare-fun bs!1081995 () Bool)

(assert (= bs!1081995 (and b!4679879 d!1487359)))

(assert (=> bs!1081995 (= (= lt!1839213 lt!1839449) (= lambda!204557 lambda!204536))))

(declare-fun bs!1081996 () Bool)

(assert (= bs!1081996 (and b!4679879 b!4679738)))

(assert (=> bs!1081996 (= lambda!204557 lambda!204532)))

(declare-fun bs!1081997 () Bool)

(assert (= bs!1081997 (and b!4679879 b!4679730)))

(assert (=> bs!1081997 (= lambda!204557 lambda!204528)))

(declare-fun bs!1081998 () Bool)

(assert (= bs!1081998 (and b!4679879 b!4679731)))

(assert (=> bs!1081998 (= lambda!204557 lambda!204527)))

(declare-fun bs!1081999 () Bool)

(assert (= bs!1081999 (and b!4679879 d!1487387)))

(assert (=> bs!1081999 (not (= lambda!204557 lambda!204543))))

(assert (=> bs!1081997 (= (= lt!1839213 lt!1839421) (= lambda!204557 lambda!204529))))

(declare-fun bs!1082000 () Bool)

(assert (= bs!1082000 (and b!4679879 b!4679737)))

(assert (=> bs!1082000 (= lambda!204557 lambda!204533)))

(assert (=> bs!1082000 (= (= lt!1839213 lt!1839442) (= lambda!204557 lambda!204534))))

(assert (=> b!4679879 true))

(declare-fun lt!1839590 () ListMap!4833)

(declare-fun lambda!204558 () Int)

(assert (=> b!4679879 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204557))))

(assert (=> bs!1081993 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204556))))

(assert (=> bs!1081994 (= (= lt!1839590 lt!1839428) (= lambda!204558 lambda!204531))))

(assert (=> bs!1081995 (= (= lt!1839590 lt!1839449) (= lambda!204558 lambda!204536))))

(assert (=> bs!1081996 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204532))))

(assert (=> bs!1081997 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204528))))

(assert (=> bs!1081998 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204527))))

(assert (=> bs!1081999 (not (= lambda!204558 lambda!204543))))

(assert (=> bs!1081997 (= (= lt!1839590 lt!1839421) (= lambda!204558 lambda!204529))))

(assert (=> bs!1082000 (= (= lt!1839590 lt!1839213) (= lambda!204558 lambda!204533))))

(assert (=> bs!1082000 (= (= lt!1839590 lt!1839442) (= lambda!204558 lambda!204534))))

(assert (=> b!4679879 true))

(declare-fun bs!1082001 () Bool)

(declare-fun d!1487445 () Bool)

(assert (= bs!1082001 (and d!1487445 b!4679879)))

(declare-fun lambda!204559 () Int)

(declare-fun lt!1839597 () ListMap!4833)

(assert (=> bs!1082001 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204557))))

(declare-fun bs!1082002 () Bool)

(assert (= bs!1082002 (and d!1487445 b!4679880)))

(assert (=> bs!1082002 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204556))))

(declare-fun bs!1082003 () Bool)

(assert (= bs!1082003 (and d!1487445 d!1487319)))

(assert (=> bs!1082003 (= (= lt!1839597 lt!1839428) (= lambda!204559 lambda!204531))))

(declare-fun bs!1082004 () Bool)

(assert (= bs!1082004 (and d!1487445 d!1487359)))

(assert (=> bs!1082004 (= (= lt!1839597 lt!1839449) (= lambda!204559 lambda!204536))))

(declare-fun bs!1082005 () Bool)

(assert (= bs!1082005 (and d!1487445 b!4679738)))

(assert (=> bs!1082005 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204532))))

(declare-fun bs!1082006 () Bool)

(assert (= bs!1082006 (and d!1487445 b!4679730)))

(assert (=> bs!1082006 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204528))))

(declare-fun bs!1082007 () Bool)

(assert (= bs!1082007 (and d!1487445 b!4679731)))

(assert (=> bs!1082007 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204527))))

(declare-fun bs!1082008 () Bool)

(assert (= bs!1082008 (and d!1487445 d!1487387)))

(assert (=> bs!1082008 (not (= lambda!204559 lambda!204543))))

(declare-fun bs!1082009 () Bool)

(assert (= bs!1082009 (and d!1487445 b!4679737)))

(assert (=> bs!1082009 (= (= lt!1839597 lt!1839213) (= lambda!204559 lambda!204533))))

(assert (=> bs!1082009 (= (= lt!1839597 lt!1839442) (= lambda!204559 lambda!204534))))

(assert (=> bs!1082001 (= (= lt!1839597 lt!1839590) (= lambda!204559 lambda!204558))))

(assert (=> bs!1082006 (= (= lt!1839597 lt!1839421) (= lambda!204559 lambda!204529))))

(assert (=> d!1487445 true))

(declare-fun e!2919837 () Bool)

(assert (=> d!1487445 e!2919837))

(declare-fun res!1971978 () Bool)

(assert (=> d!1487445 (=> (not res!1971978) (not e!2919837))))

(assert (=> d!1487445 (= res!1971978 (forall!11223 (_2!30072 (h!58455 (toList!5470 lm!2023))) lambda!204559))))

(declare-fun e!2919836 () ListMap!4833)

(assert (=> d!1487445 (= lt!1839597 e!2919836)))

(declare-fun c!800559 () Bool)

(assert (=> d!1487445 (= c!800559 ((_ is Nil!52245) (_2!30072 (h!58455 (toList!5470 lm!2023)))))))

(assert (=> d!1487445 (noDuplicateKeys!1790 (_2!30072 (h!58455 (toList!5470 lm!2023))))))

(assert (=> d!1487445 (= (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (toList!5470 lm!2023))) lt!1839213) lt!1839597)))

(declare-fun b!4679877 () Bool)

(declare-fun res!1971976 () Bool)

(assert (=> b!4679877 (=> (not res!1971976) (not e!2919837))))

(assert (=> b!4679877 (= res!1971976 (forall!11223 (toList!5469 lt!1839213) lambda!204559))))

(declare-fun b!4679878 () Bool)

(declare-fun e!2919838 () Bool)

(assert (=> b!4679878 (= e!2919838 (forall!11223 (toList!5469 lt!1839213) lambda!204558))))

(declare-fun bm!327060 () Bool)

(declare-fun call!327067 () Bool)

(declare-fun lt!1839610 () ListMap!4833)

(assert (=> bm!327060 (= call!327067 (forall!11223 (ite c!800559 (toList!5469 lt!1839213) (toList!5469 lt!1839610)) (ite c!800559 lambda!204556 lambda!204558)))))

(declare-fun bm!327061 () Bool)

(declare-fun call!327066 () Unit!122367)

(assert (=> bm!327061 (= call!327066 (lemmaContainsAllItsOwnKeys!662 lt!1839213))))

(declare-fun call!327065 () Bool)

(declare-fun bm!327062 () Bool)

(assert (=> bm!327062 (= call!327065 (forall!11223 (toList!5469 lt!1839213) (ite c!800559 lambda!204556 lambda!204558)))))

(assert (=> b!4679879 (= e!2919836 lt!1839590)))

(assert (=> b!4679879 (= lt!1839610 (+!2092 lt!1839213 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023))))))))

(assert (=> b!4679879 (= lt!1839590 (addToMapMapFromBucket!1222 (t!359521 (_2!30072 (h!58455 (toList!5470 lm!2023)))) (+!2092 lt!1839213 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023)))))))))

(declare-fun lt!1839603 () Unit!122367)

(assert (=> b!4679879 (= lt!1839603 call!327066)))

(assert (=> b!4679879 (forall!11223 (toList!5469 lt!1839213) lambda!204557)))

(declare-fun lt!1839599 () Unit!122367)

(assert (=> b!4679879 (= lt!1839599 lt!1839603)))

(assert (=> b!4679879 (forall!11223 (toList!5469 lt!1839610) lambda!204558)))

(declare-fun lt!1839596 () Unit!122367)

(declare-fun Unit!122432 () Unit!122367)

(assert (=> b!4679879 (= lt!1839596 Unit!122432)))

(assert (=> b!4679879 (forall!11223 (t!359521 (_2!30072 (h!58455 (toList!5470 lm!2023)))) lambda!204558)))

(declare-fun lt!1839595 () Unit!122367)

(declare-fun Unit!122433 () Unit!122367)

(assert (=> b!4679879 (= lt!1839595 Unit!122433)))

(declare-fun lt!1839607 () Unit!122367)

(declare-fun Unit!122434 () Unit!122367)

(assert (=> b!4679879 (= lt!1839607 Unit!122434)))

(declare-fun lt!1839604 () Unit!122367)

(assert (=> b!4679879 (= lt!1839604 (forallContained!3346 (toList!5469 lt!1839610) lambda!204558 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023))))))))

(assert (=> b!4679879 (contains!15378 lt!1839610 (_1!30071 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023))))))))

(declare-fun lt!1839592 () Unit!122367)

(declare-fun Unit!122435 () Unit!122367)

(assert (=> b!4679879 (= lt!1839592 Unit!122435)))

(assert (=> b!4679879 (contains!15378 lt!1839590 (_1!30071 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023))))))))

(declare-fun lt!1839606 () Unit!122367)

(declare-fun Unit!122436 () Unit!122367)

(assert (=> b!4679879 (= lt!1839606 Unit!122436)))

(assert (=> b!4679879 (forall!11223 (_2!30072 (h!58455 (toList!5470 lm!2023))) lambda!204558)))

(declare-fun lt!1839609 () Unit!122367)

(declare-fun Unit!122437 () Unit!122367)

(assert (=> b!4679879 (= lt!1839609 Unit!122437)))

(assert (=> b!4679879 call!327067))

(declare-fun lt!1839600 () Unit!122367)

(declare-fun Unit!122438 () Unit!122367)

(assert (=> b!4679879 (= lt!1839600 Unit!122438)))

(declare-fun lt!1839591 () Unit!122367)

(declare-fun Unit!122439 () Unit!122367)

(assert (=> b!4679879 (= lt!1839591 Unit!122439)))

(declare-fun lt!1839593 () Unit!122367)

(assert (=> b!4679879 (= lt!1839593 (addForallContainsKeyThenBeforeAdding!661 lt!1839213 lt!1839590 (_1!30071 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023))))) (_2!30071 (h!58454 (_2!30072 (h!58455 (toList!5470 lm!2023)))))))))

(assert (=> b!4679879 call!327065))

(declare-fun lt!1839601 () Unit!122367)

(assert (=> b!4679879 (= lt!1839601 lt!1839593)))

(assert (=> b!4679879 (forall!11223 (toList!5469 lt!1839213) lambda!204558)))

(declare-fun lt!1839605 () Unit!122367)

(declare-fun Unit!122440 () Unit!122367)

(assert (=> b!4679879 (= lt!1839605 Unit!122440)))

(declare-fun res!1971977 () Bool)

(assert (=> b!4679879 (= res!1971977 (forall!11223 (_2!30072 (h!58455 (toList!5470 lm!2023))) lambda!204558))))

(assert (=> b!4679879 (=> (not res!1971977) (not e!2919838))))

(assert (=> b!4679879 e!2919838))

(declare-fun lt!1839608 () Unit!122367)

(declare-fun Unit!122441 () Unit!122367)

(assert (=> b!4679879 (= lt!1839608 Unit!122441)))

(assert (=> b!4679880 (= e!2919836 lt!1839213)))

(declare-fun lt!1839594 () Unit!122367)

(assert (=> b!4679880 (= lt!1839594 call!327066)))

(assert (=> b!4679880 call!327065))

(declare-fun lt!1839602 () Unit!122367)

(assert (=> b!4679880 (= lt!1839602 lt!1839594)))

(assert (=> b!4679880 call!327067))

(declare-fun lt!1839598 () Unit!122367)

(declare-fun Unit!122442 () Unit!122367)

(assert (=> b!4679880 (= lt!1839598 Unit!122442)))

(declare-fun b!4679881 () Bool)

(assert (=> b!4679881 (= e!2919837 (invariantList!1374 (toList!5469 lt!1839597)))))

(assert (= (and d!1487445 c!800559) b!4679880))

(assert (= (and d!1487445 (not c!800559)) b!4679879))

(assert (= (and b!4679879 res!1971977) b!4679878))

(assert (= (or b!4679880 b!4679879) bm!327061))

(assert (= (or b!4679880 b!4679879) bm!327062))

(assert (= (or b!4679880 b!4679879) bm!327060))

(assert (= (and d!1487445 res!1971978) b!4679877))

(assert (= (and b!4679877 res!1971976) b!4679881))

(declare-fun m!5576137 () Bool)

(assert (=> bm!327062 m!5576137))

(declare-fun m!5576139 () Bool)

(assert (=> b!4679877 m!5576139))

(declare-fun m!5576141 () Bool)

(assert (=> b!4679878 m!5576141))

(declare-fun m!5576143 () Bool)

(assert (=> b!4679881 m!5576143))

(declare-fun m!5576145 () Bool)

(assert (=> b!4679879 m!5576145))

(declare-fun m!5576147 () Bool)

(assert (=> b!4679879 m!5576147))

(declare-fun m!5576149 () Bool)

(assert (=> b!4679879 m!5576149))

(declare-fun m!5576151 () Bool)

(assert (=> b!4679879 m!5576151))

(declare-fun m!5576153 () Bool)

(assert (=> b!4679879 m!5576153))

(declare-fun m!5576155 () Bool)

(assert (=> b!4679879 m!5576155))

(assert (=> b!4679879 m!5576141))

(assert (=> b!4679879 m!5576153))

(declare-fun m!5576157 () Bool)

(assert (=> b!4679879 m!5576157))

(declare-fun m!5576159 () Bool)

(assert (=> b!4679879 m!5576159))

(declare-fun m!5576161 () Bool)

(assert (=> b!4679879 m!5576161))

(declare-fun m!5576163 () Bool)

(assert (=> b!4679879 m!5576163))

(assert (=> b!4679879 m!5576149))

(assert (=> bm!327061 m!5575805))

(declare-fun m!5576165 () Bool)

(assert (=> d!1487445 m!5576165))

(declare-fun m!5576167 () Bool)

(assert (=> d!1487445 m!5576167))

(declare-fun m!5576169 () Bool)

(assert (=> bm!327060 m!5576169))

(assert (=> b!4679606 d!1487445))

(declare-fun bs!1082010 () Bool)

(declare-fun d!1487447 () Bool)

(assert (= bs!1082010 (and d!1487447 d!1487409)))

(declare-fun lambda!204560 () Int)

(assert (=> bs!1082010 (= lambda!204560 lambda!204551)))

(declare-fun bs!1082011 () Bool)

(assert (= bs!1082011 (and d!1487447 d!1487401)))

(assert (=> bs!1082011 (= lambda!204560 lambda!204550)))

(declare-fun bs!1082012 () Bool)

(assert (= bs!1082012 (and d!1487447 start!472452)))

(assert (=> bs!1082012 (= lambda!204560 lambda!204443)))

(declare-fun bs!1082013 () Bool)

(assert (= bs!1082013 (and d!1487447 d!1487443)))

(assert (=> bs!1082013 (= lambda!204560 lambda!204555)))

(declare-fun bs!1082014 () Bool)

(assert (= bs!1082014 (and d!1487447 d!1487419)))

(assert (=> bs!1082014 (not (= lambda!204560 lambda!204554))))

(declare-fun lt!1839611 () ListMap!4833)

(assert (=> d!1487447 (invariantList!1374 (toList!5469 lt!1839611))))

(declare-fun e!2919839 () ListMap!4833)

(assert (=> d!1487447 (= lt!1839611 e!2919839)))

(declare-fun c!800560 () Bool)

(assert (=> d!1487447 (= c!800560 ((_ is Cons!52246) (t!359522 (toList!5470 lm!2023))))))

(assert (=> d!1487447 (forall!11221 (t!359522 (toList!5470 lm!2023)) lambda!204560)))

(assert (=> d!1487447 (= (extractMap!1816 (t!359522 (toList!5470 lm!2023))) lt!1839611)))

(declare-fun b!4679882 () Bool)

(assert (=> b!4679882 (= e!2919839 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (t!359522 (toList!5470 lm!2023)))) (extractMap!1816 (t!359522 (t!359522 (toList!5470 lm!2023))))))))

(declare-fun b!4679883 () Bool)

(assert (=> b!4679883 (= e!2919839 (ListMap!4834 Nil!52245))))

(assert (= (and d!1487447 c!800560) b!4679882))

(assert (= (and d!1487447 (not c!800560)) b!4679883))

(declare-fun m!5576171 () Bool)

(assert (=> d!1487447 m!5576171))

(declare-fun m!5576173 () Bool)

(assert (=> d!1487447 m!5576173))

(declare-fun m!5576175 () Bool)

(assert (=> b!4679882 m!5576175))

(assert (=> b!4679882 m!5576175))

(declare-fun m!5576177 () Bool)

(assert (=> b!4679882 m!5576177))

(assert (=> b!4679606 d!1487447))

(declare-fun d!1487449 () Bool)

(declare-fun tail!8439 (List!52370) List!52370)

(assert (=> d!1487449 (= (tail!8437 lm!2023) (ListLongMap!4000 (tail!8439 (toList!5470 lm!2023))))))

(declare-fun bs!1082015 () Bool)

(assert (= bs!1082015 d!1487449))

(declare-fun m!5576179 () Bool)

(assert (=> bs!1082015 m!5576179))

(assert (=> b!4679606 d!1487449))

(declare-fun d!1487451 () Bool)

(declare-fun content!9105 (List!52369) (InoxSet tuple2!53554))

(assert (=> d!1487451 (= (eq!979 lt!1839207 lt!1839214) (= (content!9105 (toList!5469 lt!1839207)) (content!9105 (toList!5469 lt!1839214))))))

(declare-fun bs!1082016 () Bool)

(assert (= bs!1082016 d!1487451))

(declare-fun m!5576181 () Bool)

(assert (=> bs!1082016 m!5576181))

(declare-fun m!5576183 () Bool)

(assert (=> bs!1082016 m!5576183))

(assert (=> b!4679604 d!1487451))

(declare-fun bs!1082017 () Bool)

(declare-fun d!1487453 () Bool)

(assert (= bs!1082017 (and d!1487453 d!1487447)))

(declare-fun lambda!204561 () Int)

(assert (=> bs!1082017 (= lambda!204561 lambda!204560)))

(declare-fun bs!1082018 () Bool)

(assert (= bs!1082018 (and d!1487453 d!1487409)))

(assert (=> bs!1082018 (= lambda!204561 lambda!204551)))

(declare-fun bs!1082019 () Bool)

(assert (= bs!1082019 (and d!1487453 d!1487401)))

(assert (=> bs!1082019 (= lambda!204561 lambda!204550)))

(declare-fun bs!1082020 () Bool)

(assert (= bs!1082020 (and d!1487453 start!472452)))

(assert (=> bs!1082020 (= lambda!204561 lambda!204443)))

(declare-fun bs!1082021 () Bool)

(assert (= bs!1082021 (and d!1487453 d!1487443)))

(assert (=> bs!1082021 (= lambda!204561 lambda!204555)))

(declare-fun bs!1082022 () Bool)

(assert (= bs!1082022 (and d!1487453 d!1487419)))

(assert (=> bs!1082022 (not (= lambda!204561 lambda!204554))))

(declare-fun lt!1839612 () ListMap!4833)

(assert (=> d!1487453 (invariantList!1374 (toList!5469 lt!1839612))))

(declare-fun e!2919840 () ListMap!4833)

(assert (=> d!1487453 (= lt!1839612 e!2919840)))

(declare-fun c!800561 () Bool)

(assert (=> d!1487453 (= c!800561 ((_ is Cons!52246) (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023)))))))

(assert (=> d!1487453 (forall!11221 (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023))) lambda!204561)))

(assert (=> d!1487453 (= (extractMap!1816 (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023)))) lt!1839612)))

(declare-fun b!4679884 () Bool)

(assert (=> b!4679884 (= e!2919840 (addToMapMapFromBucket!1222 (_2!30072 (h!58455 (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023))))) (extractMap!1816 (t!359522 (Cons!52246 lt!1839206 (t!359522 (toList!5470 lm!2023)))))))))

(declare-fun b!4679885 () Bool)

(assert (=> b!4679885 (= e!2919840 (ListMap!4834 Nil!52245))))

(assert (= (and d!1487453 c!800561) b!4679884))

(assert (= (and d!1487453 (not c!800561)) b!4679885))

(declare-fun m!5576185 () Bool)

(assert (=> d!1487453 m!5576185))

(declare-fun m!5576187 () Bool)

(assert (=> d!1487453 m!5576187))

(declare-fun m!5576189 () Bool)

(assert (=> b!4679884 m!5576189))

(assert (=> b!4679884 m!5576189))

(declare-fun m!5576191 () Bool)

(assert (=> b!4679884 m!5576191))

(assert (=> b!4679604 d!1487453))

(declare-fun d!1487455 () Bool)

(assert (=> d!1487455 (= (head!9871 oldBucket!34) (h!58454 oldBucket!34))))

(assert (=> b!4679593 d!1487455))

(declare-fun d!1487457 () Bool)

(declare-fun e!2919841 () Bool)

(assert (=> d!1487457 e!2919841))

(declare-fun res!1971979 () Bool)

(assert (=> d!1487457 (=> (not res!1971979) (not e!2919841))))

(declare-fun lt!1839615 () ListMap!4833)

(assert (=> d!1487457 (= res!1971979 (contains!15378 lt!1839615 (_1!30071 lt!1839209)))))

(declare-fun lt!1839613 () List!52369)

(assert (=> d!1487457 (= lt!1839615 (ListMap!4834 lt!1839613))))

(declare-fun lt!1839614 () Unit!122367)

(declare-fun lt!1839616 () Unit!122367)

(assert (=> d!1487457 (= lt!1839614 lt!1839616)))

(assert (=> d!1487457 (= (getValueByKey!1717 lt!1839613 (_1!30071 lt!1839209)) (Some!11968 (_2!30071 lt!1839209)))))

(assert (=> d!1487457 (= lt!1839616 (lemmaContainsTupThenGetReturnValue!975 lt!1839613 (_1!30071 lt!1839209) (_2!30071 lt!1839209)))))

(assert (=> d!1487457 (= lt!1839613 (insertNoDuplicatedKeys!483 (toList!5469 lt!1839212) (_1!30071 lt!1839209) (_2!30071 lt!1839209)))))

(assert (=> d!1487457 (= (+!2092 lt!1839212 lt!1839209) lt!1839615)))

(declare-fun b!4679886 () Bool)

(declare-fun res!1971980 () Bool)

(assert (=> b!4679886 (=> (not res!1971980) (not e!2919841))))

(assert (=> b!4679886 (= res!1971980 (= (getValueByKey!1717 (toList!5469 lt!1839615) (_1!30071 lt!1839209)) (Some!11968 (_2!30071 lt!1839209))))))

(declare-fun b!4679887 () Bool)

(assert (=> b!4679887 (= e!2919841 (contains!15380 (toList!5469 lt!1839615) lt!1839209))))

(assert (= (and d!1487457 res!1971979) b!4679886))

(assert (= (and b!4679886 res!1971980) b!4679887))

(declare-fun m!5576193 () Bool)

(assert (=> d!1487457 m!5576193))

(declare-fun m!5576195 () Bool)

(assert (=> d!1487457 m!5576195))

(declare-fun m!5576197 () Bool)

(assert (=> d!1487457 m!5576197))

(declare-fun m!5576199 () Bool)

(assert (=> d!1487457 m!5576199))

(declare-fun m!5576201 () Bool)

(assert (=> b!4679886 m!5576201))

(declare-fun m!5576203 () Bool)

(assert (=> b!4679887 m!5576203))

(assert (=> b!4679593 d!1487457))

(declare-fun bs!1082023 () Bool)

(declare-fun b!4679891 () Bool)

(assert (= bs!1082023 (and b!4679891 b!4679879)))

(declare-fun lambda!204562 () Int)

(assert (=> bs!1082023 (= lambda!204562 lambda!204557)))

(declare-fun bs!1082024 () Bool)

(assert (= bs!1082024 (and b!4679891 b!4679880)))

(assert (=> bs!1082024 (= lambda!204562 lambda!204556)))

(declare-fun bs!1082025 () Bool)

(assert (= bs!1082025 (and b!4679891 d!1487319)))

(assert (=> bs!1082025 (= (= lt!1839213 lt!1839428) (= lambda!204562 lambda!204531))))

(declare-fun bs!1082026 () Bool)

(assert (= bs!1082026 (and b!4679891 d!1487359)))

(assert (=> bs!1082026 (= (= lt!1839213 lt!1839449) (= lambda!204562 lambda!204536))))

(declare-fun bs!1082027 () Bool)

(assert (= bs!1082027 (and b!4679891 b!4679738)))

(assert (=> bs!1082027 (= lambda!204562 lambda!204532)))

(declare-fun bs!1082028 () Bool)

(assert (= bs!1082028 (and b!4679891 b!4679730)))

(assert (=> bs!1082028 (= lambda!204562 lambda!204528)))

(declare-fun bs!1082029 () Bool)

(assert (= bs!1082029 (and b!4679891 b!4679731)))

(assert (=> bs!1082029 (= lambda!204562 lambda!204527)))

(declare-fun bs!1082030 () Bool)

(assert (= bs!1082030 (and b!4679891 d!1487387)))

(assert (=> bs!1082030 (not (= lambda!204562 lambda!204543))))

(declare-fun bs!1082031 () Bool)

(assert (= bs!1082031 (and b!4679891 d!1487445)))

(assert (=> bs!1082031 (= (= lt!1839213 lt!1839597) (= lambda!204562 lambda!204559))))

(declare-fun bs!1082032 () Bool)

(assert (= bs!1082032 (and b!4679891 b!4679737)))

(assert (=> bs!1082032 (= lambda!204562 lambda!204533)))

(assert (=> bs!1082032 (= (= lt!1839213 lt!1839442) (= lambda!204562 lambda!204534))))

(assert (=> bs!1082023 (= (= lt!1839213 lt!1839590) (= lambda!204562 lambda!204558))))

(assert (=> bs!1082028 (= (= lt!1839213 lt!1839421) (= lambda!204562 lambda!204529))))

(assert (=> b!4679891 true))

(declare-fun bs!1082033 () Bool)

(declare-fun b!4679890 () Bool)

(assert (= bs!1082033 (and b!4679890 b!4679880)))

(declare-fun lambda!204563 () Int)

(assert (=> bs!1082033 (= lambda!204563 lambda!204556)))

(declare-fun bs!1082034 () Bool)

(assert (= bs!1082034 (and b!4679890 d!1487319)))

(assert (=> bs!1082034 (= (= lt!1839213 lt!1839428) (= lambda!204563 lambda!204531))))

(declare-fun bs!1082035 () Bool)

(assert (= bs!1082035 (and b!4679890 d!1487359)))

(assert (=> bs!1082035 (= (= lt!1839213 lt!1839449) (= lambda!204563 lambda!204536))))

(declare-fun bs!1082036 () Bool)

(assert (= bs!1082036 (and b!4679890 b!4679738)))

(assert (=> bs!1082036 (= lambda!204563 lambda!204532)))

(declare-fun bs!1082037 () Bool)

(assert (= bs!1082037 (and b!4679890 b!4679730)))

(assert (=> bs!1082037 (= lambda!204563 lambda!204528)))

(declare-fun bs!1082038 () Bool)

(assert (= bs!1082038 (and b!4679890 b!4679731)))

(assert (=> bs!1082038 (= lambda!204563 lambda!204527)))

(declare-fun bs!1082039 () Bool)

(assert (= bs!1082039 (and b!4679890 d!1487387)))

(assert (=> bs!1082039 (not (= lambda!204563 lambda!204543))))

(declare-fun bs!1082040 () Bool)

(assert (= bs!1082040 (and b!4679890 d!1487445)))

(assert (=> bs!1082040 (= (= lt!1839213 lt!1839597) (= lambda!204563 lambda!204559))))

(declare-fun bs!1082041 () Bool)

(assert (= bs!1082041 (and b!4679890 b!4679891)))

(assert (=> bs!1082041 (= lambda!204563 lambda!204562)))

(declare-fun bs!1082042 () Bool)

(assert (= bs!1082042 (and b!4679890 b!4679879)))

(assert (=> bs!1082042 (= lambda!204563 lambda!204557)))

(declare-fun bs!1082043 () Bool)

(assert (= bs!1082043 (and b!4679890 b!4679737)))

(assert (=> bs!1082043 (= lambda!204563 lambda!204533)))

(assert (=> bs!1082043 (= (= lt!1839213 lt!1839442) (= lambda!204563 lambda!204534))))

(assert (=> bs!1082042 (= (= lt!1839213 lt!1839590) (= lambda!204563 lambda!204558))))

(assert (=> bs!1082037 (= (= lt!1839213 lt!1839421) (= lambda!204563 lambda!204529))))

(assert (=> b!4679890 true))

(declare-fun lambda!204564 () Int)

(declare-fun lt!1839617 () ListMap!4833)

(assert (=> bs!1082033 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204556))))

(assert (=> bs!1082034 (= (= lt!1839617 lt!1839428) (= lambda!204564 lambda!204531))))

(assert (=> b!4679890 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204563))))

(assert (=> bs!1082035 (= (= lt!1839617 lt!1839449) (= lambda!204564 lambda!204536))))

(assert (=> bs!1082036 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204532))))

(assert (=> bs!1082037 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204528))))

(assert (=> bs!1082038 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204527))))

(assert (=> bs!1082039 (not (= lambda!204564 lambda!204543))))

(assert (=> bs!1082040 (= (= lt!1839617 lt!1839597) (= lambda!204564 lambda!204559))))

(assert (=> bs!1082041 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204562))))

(assert (=> bs!1082042 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204557))))

(assert (=> bs!1082043 (= (= lt!1839617 lt!1839213) (= lambda!204564 lambda!204533))))

(assert (=> bs!1082043 (= (= lt!1839617 lt!1839442) (= lambda!204564 lambda!204534))))

(assert (=> bs!1082042 (= (= lt!1839617 lt!1839590) (= lambda!204564 lambda!204558))))

(assert (=> bs!1082037 (= (= lt!1839617 lt!1839421) (= lambda!204564 lambda!204529))))

(assert (=> b!4679890 true))

(declare-fun bs!1082044 () Bool)

(declare-fun d!1487459 () Bool)

(assert (= bs!1082044 (and d!1487459 b!4679880)))

(declare-fun lt!1839624 () ListMap!4833)

(declare-fun lambda!204565 () Int)

(assert (=> bs!1082044 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204556))))

(declare-fun bs!1082045 () Bool)

(assert (= bs!1082045 (and d!1487459 d!1487319)))

(assert (=> bs!1082045 (= (= lt!1839624 lt!1839428) (= lambda!204565 lambda!204531))))

(declare-fun bs!1082046 () Bool)

(assert (= bs!1082046 (and d!1487459 b!4679890)))

(assert (=> bs!1082046 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204563))))

(declare-fun bs!1082047 () Bool)

(assert (= bs!1082047 (and d!1487459 d!1487359)))

(assert (=> bs!1082047 (= (= lt!1839624 lt!1839449) (= lambda!204565 lambda!204536))))

(declare-fun bs!1082048 () Bool)

(assert (= bs!1082048 (and d!1487459 b!4679738)))

(assert (=> bs!1082048 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204532))))

(declare-fun bs!1082049 () Bool)

(assert (= bs!1082049 (and d!1487459 b!4679730)))

(assert (=> bs!1082049 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204528))))

(declare-fun bs!1082050 () Bool)

(assert (= bs!1082050 (and d!1487459 b!4679731)))

(assert (=> bs!1082050 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204527))))

(declare-fun bs!1082051 () Bool)

(assert (= bs!1082051 (and d!1487459 d!1487387)))

(assert (=> bs!1082051 (not (= lambda!204565 lambda!204543))))

(assert (=> bs!1082046 (= (= lt!1839624 lt!1839617) (= lambda!204565 lambda!204564))))

(declare-fun bs!1082052 () Bool)

(assert (= bs!1082052 (and d!1487459 d!1487445)))

(assert (=> bs!1082052 (= (= lt!1839624 lt!1839597) (= lambda!204565 lambda!204559))))

(declare-fun bs!1082053 () Bool)

(assert (= bs!1082053 (and d!1487459 b!4679891)))

(assert (=> bs!1082053 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204562))))

(declare-fun bs!1082054 () Bool)

(assert (= bs!1082054 (and d!1487459 b!4679879)))

(assert (=> bs!1082054 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204557))))

(declare-fun bs!1082055 () Bool)

(assert (= bs!1082055 (and d!1487459 b!4679737)))

(assert (=> bs!1082055 (= (= lt!1839624 lt!1839213) (= lambda!204565 lambda!204533))))

(assert (=> bs!1082055 (= (= lt!1839624 lt!1839442) (= lambda!204565 lambda!204534))))

(assert (=> bs!1082054 (= (= lt!1839624 lt!1839590) (= lambda!204565 lambda!204558))))

(assert (=> bs!1082049 (= (= lt!1839624 lt!1839421) (= lambda!204565 lambda!204529))))

(assert (=> d!1487459 true))

(declare-fun e!2919843 () Bool)

(assert (=> d!1487459 e!2919843))

(declare-fun res!1971983 () Bool)

(assert (=> d!1487459 (=> (not res!1971983) (not e!2919843))))

(assert (=> d!1487459 (= res!1971983 (forall!11223 oldBucket!34 lambda!204565))))

(declare-fun e!2919842 () ListMap!4833)

(assert (=> d!1487459 (= lt!1839624 e!2919842)))

(declare-fun c!800562 () Bool)

(assert (=> d!1487459 (= c!800562 ((_ is Nil!52245) oldBucket!34))))

(assert (=> d!1487459 (noDuplicateKeys!1790 oldBucket!34)))

(assert (=> d!1487459 (= (addToMapMapFromBucket!1222 oldBucket!34 lt!1839213) lt!1839624)))

(declare-fun b!4679888 () Bool)

(declare-fun res!1971981 () Bool)

(assert (=> b!4679888 (=> (not res!1971981) (not e!2919843))))

(assert (=> b!4679888 (= res!1971981 (forall!11223 (toList!5469 lt!1839213) lambda!204565))))

(declare-fun b!4679889 () Bool)

(declare-fun e!2919844 () Bool)

(assert (=> b!4679889 (= e!2919844 (forall!11223 (toList!5469 lt!1839213) lambda!204564))))

(declare-fun bm!327063 () Bool)

(declare-fun call!327070 () Bool)

(declare-fun lt!1839637 () ListMap!4833)

(assert (=> bm!327063 (= call!327070 (forall!11223 (ite c!800562 (toList!5469 lt!1839213) (toList!5469 lt!1839637)) (ite c!800562 lambda!204562 lambda!204564)))))

(declare-fun bm!327064 () Bool)

(declare-fun call!327069 () Unit!122367)

(assert (=> bm!327064 (= call!327069 (lemmaContainsAllItsOwnKeys!662 lt!1839213))))

(declare-fun call!327068 () Bool)

(declare-fun bm!327065 () Bool)

(assert (=> bm!327065 (= call!327068 (forall!11223 (toList!5469 lt!1839213) (ite c!800562 lambda!204562 lambda!204564)))))

(assert (=> b!4679890 (= e!2919842 lt!1839617)))

(assert (=> b!4679890 (= lt!1839637 (+!2092 lt!1839213 (h!58454 oldBucket!34)))))

(assert (=> b!4679890 (= lt!1839617 (addToMapMapFromBucket!1222 (t!359521 oldBucket!34) (+!2092 lt!1839213 (h!58454 oldBucket!34))))))

(declare-fun lt!1839630 () Unit!122367)

(assert (=> b!4679890 (= lt!1839630 call!327069)))

(assert (=> b!4679890 (forall!11223 (toList!5469 lt!1839213) lambda!204563)))

(declare-fun lt!1839626 () Unit!122367)

(assert (=> b!4679890 (= lt!1839626 lt!1839630)))

(assert (=> b!4679890 (forall!11223 (toList!5469 lt!1839637) lambda!204564)))

(declare-fun lt!1839623 () Unit!122367)

(declare-fun Unit!122454 () Unit!122367)

(assert (=> b!4679890 (= lt!1839623 Unit!122454)))

(assert (=> b!4679890 (forall!11223 (t!359521 oldBucket!34) lambda!204564)))

(declare-fun lt!1839622 () Unit!122367)

(declare-fun Unit!122455 () Unit!122367)

(assert (=> b!4679890 (= lt!1839622 Unit!122455)))

(declare-fun lt!1839634 () Unit!122367)

(declare-fun Unit!122456 () Unit!122367)

(assert (=> b!4679890 (= lt!1839634 Unit!122456)))

(declare-fun lt!1839631 () Unit!122367)

(assert (=> b!4679890 (= lt!1839631 (forallContained!3346 (toList!5469 lt!1839637) lambda!204564 (h!58454 oldBucket!34)))))

(assert (=> b!4679890 (contains!15378 lt!1839637 (_1!30071 (h!58454 oldBucket!34)))))

(declare-fun lt!1839619 () Unit!122367)

(declare-fun Unit!122457 () Unit!122367)

(assert (=> b!4679890 (= lt!1839619 Unit!122457)))

(assert (=> b!4679890 (contains!15378 lt!1839617 (_1!30071 (h!58454 oldBucket!34)))))

(declare-fun lt!1839633 () Unit!122367)

(declare-fun Unit!122458 () Unit!122367)

(assert (=> b!4679890 (= lt!1839633 Unit!122458)))

(assert (=> b!4679890 (forall!11223 oldBucket!34 lambda!204564)))

(declare-fun lt!1839636 () Unit!122367)

(declare-fun Unit!122459 () Unit!122367)

(assert (=> b!4679890 (= lt!1839636 Unit!122459)))

(assert (=> b!4679890 call!327070))

(declare-fun lt!1839627 () Unit!122367)

(declare-fun Unit!122460 () Unit!122367)

(assert (=> b!4679890 (= lt!1839627 Unit!122460)))

(declare-fun lt!1839618 () Unit!122367)

(declare-fun Unit!122461 () Unit!122367)

(assert (=> b!4679890 (= lt!1839618 Unit!122461)))

(declare-fun lt!1839620 () Unit!122367)

(assert (=> b!4679890 (= lt!1839620 (addForallContainsKeyThenBeforeAdding!661 lt!1839213 lt!1839617 (_1!30071 (h!58454 oldBucket!34)) (_2!30071 (h!58454 oldBucket!34))))))

(assert (=> b!4679890 call!327068))

(declare-fun lt!1839628 () Unit!122367)

(assert (=> b!4679890 (= lt!1839628 lt!1839620)))

(assert (=> b!4679890 (forall!11223 (toList!5469 lt!1839213) lambda!204564)))

(declare-fun lt!1839632 () Unit!122367)

(declare-fun Unit!122462 () Unit!122367)

(assert (=> b!4679890 (= lt!1839632 Unit!122462)))

(declare-fun res!1971982 () Bool)

(assert (=> b!4679890 (= res!1971982 (forall!11223 oldBucket!34 lambda!204564))))

(assert (=> b!4679890 (=> (not res!1971982) (not e!2919844))))

(assert (=> b!4679890 e!2919844))

(declare-fun lt!1839635 () Unit!122367)

(declare-fun Unit!122463 () Unit!122367)

(assert (=> b!4679890 (= lt!1839635 Unit!122463)))

(assert (=> b!4679891 (= e!2919842 lt!1839213)))

(declare-fun lt!1839621 () Unit!122367)

(assert (=> b!4679891 (= lt!1839621 call!327069)))

(assert (=> b!4679891 call!327068))

(declare-fun lt!1839629 () Unit!122367)

(assert (=> b!4679891 (= lt!1839629 lt!1839621)))

(assert (=> b!4679891 call!327070))

(declare-fun lt!1839625 () Unit!122367)

(declare-fun Unit!122464 () Unit!122367)

(assert (=> b!4679891 (= lt!1839625 Unit!122464)))

(declare-fun b!4679892 () Bool)

(assert (=> b!4679892 (= e!2919843 (invariantList!1374 (toList!5469 lt!1839624)))))

(assert (= (and d!1487459 c!800562) b!4679891))

(assert (= (and d!1487459 (not c!800562)) b!4679890))

(assert (= (and b!4679890 res!1971982) b!4679889))

(assert (= (or b!4679891 b!4679890) bm!327064))

(assert (= (or b!4679891 b!4679890) bm!327065))

(assert (= (or b!4679891 b!4679890) bm!327063))

(assert (= (and d!1487459 res!1971983) b!4679888))

(assert (= (and b!4679888 res!1971981) b!4679892))

(declare-fun m!5576205 () Bool)

(assert (=> bm!327065 m!5576205))

(declare-fun m!5576207 () Bool)

(assert (=> b!4679888 m!5576207))

(declare-fun m!5576209 () Bool)

(assert (=> b!4679889 m!5576209))

(declare-fun m!5576211 () Bool)

(assert (=> b!4679892 m!5576211))

(declare-fun m!5576213 () Bool)

(assert (=> b!4679890 m!5576213))

(declare-fun m!5576215 () Bool)

(assert (=> b!4679890 m!5576215))

(declare-fun m!5576217 () Bool)

(assert (=> b!4679890 m!5576217))

(declare-fun m!5576219 () Bool)

(assert (=> b!4679890 m!5576219))

(declare-fun m!5576221 () Bool)

(assert (=> b!4679890 m!5576221))

(declare-fun m!5576223 () Bool)

(assert (=> b!4679890 m!5576223))

(assert (=> b!4679890 m!5576209))

(assert (=> b!4679890 m!5576221))

(declare-fun m!5576225 () Bool)

(assert (=> b!4679890 m!5576225))

(declare-fun m!5576227 () Bool)

(assert (=> b!4679890 m!5576227))

(declare-fun m!5576229 () Bool)

(assert (=> b!4679890 m!5576229))

(declare-fun m!5576231 () Bool)

(assert (=> b!4679890 m!5576231))

(assert (=> b!4679890 m!5576217))

(assert (=> bm!327064 m!5575805))

(declare-fun m!5576233 () Bool)

(assert (=> d!1487459 m!5576233))

(assert (=> d!1487459 m!5575483))

(declare-fun m!5576235 () Bool)

(assert (=> bm!327063 m!5576235))

(assert (=> b!4679593 d!1487459))

(declare-fun d!1487461 () Bool)

(assert (=> d!1487461 (= (eq!979 lt!1839207 (addToMapMapFromBucket!1222 oldBucket!34 lt!1839213)) (= (content!9105 (toList!5469 lt!1839207)) (content!9105 (toList!5469 (addToMapMapFromBucket!1222 oldBucket!34 lt!1839213)))))))

(declare-fun bs!1082056 () Bool)

(assert (= bs!1082056 d!1487461))

(assert (=> bs!1082056 m!5576181))

(declare-fun m!5576237 () Bool)

(assert (=> bs!1082056 m!5576237))

(assert (=> b!4679593 d!1487461))

(declare-fun d!1487463 () Bool)

(declare-fun e!2919845 () Bool)

(assert (=> d!1487463 e!2919845))

(declare-fun res!1971984 () Bool)

(assert (=> d!1487463 (=> (not res!1971984) (not e!2919845))))

(declare-fun lt!1839640 () ListMap!4833)

(assert (=> d!1487463 (= res!1971984 (contains!15378 lt!1839640 (_1!30071 (h!58454 oldBucket!34))))))

(declare-fun lt!1839638 () List!52369)

(assert (=> d!1487463 (= lt!1839640 (ListMap!4834 lt!1839638))))

(declare-fun lt!1839639 () Unit!122367)

(declare-fun lt!1839641 () Unit!122367)

(assert (=> d!1487463 (= lt!1839639 lt!1839641)))

(assert (=> d!1487463 (= (getValueByKey!1717 lt!1839638 (_1!30071 (h!58454 oldBucket!34))) (Some!11968 (_2!30071 (h!58454 oldBucket!34))))))

(assert (=> d!1487463 (= lt!1839641 (lemmaContainsTupThenGetReturnValue!975 lt!1839638 (_1!30071 (h!58454 oldBucket!34)) (_2!30071 (h!58454 oldBucket!34))))))

(assert (=> d!1487463 (= lt!1839638 (insertNoDuplicatedKeys!483 (toList!5469 lt!1839212) (_1!30071 (h!58454 oldBucket!34)) (_2!30071 (h!58454 oldBucket!34))))))

(assert (=> d!1487463 (= (+!2092 lt!1839212 (h!58454 oldBucket!34)) lt!1839640)))

(declare-fun b!4679893 () Bool)

(declare-fun res!1971985 () Bool)

(assert (=> b!4679893 (=> (not res!1971985) (not e!2919845))))

(assert (=> b!4679893 (= res!1971985 (= (getValueByKey!1717 (toList!5469 lt!1839640) (_1!30071 (h!58454 oldBucket!34))) (Some!11968 (_2!30071 (h!58454 oldBucket!34)))))))

(declare-fun b!4679894 () Bool)

(assert (=> b!4679894 (= e!2919845 (contains!15380 (toList!5469 lt!1839640) (h!58454 oldBucket!34)))))

(assert (= (and d!1487463 res!1971984) b!4679893))

(assert (= (and b!4679893 res!1971985) b!4679894))

(declare-fun m!5576239 () Bool)

(assert (=> d!1487463 m!5576239))

(declare-fun m!5576241 () Bool)

(assert (=> d!1487463 m!5576241))

(declare-fun m!5576243 () Bool)

(assert (=> d!1487463 m!5576243))

(declare-fun m!5576245 () Bool)

(assert (=> d!1487463 m!5576245))

(declare-fun m!5576247 () Bool)

(assert (=> b!4679893 m!5576247))

(declare-fun m!5576249 () Bool)

(assert (=> b!4679894 m!5576249))

(assert (=> b!4679593 d!1487463))

(declare-fun d!1487465 () Bool)

(assert (=> d!1487465 (= (eq!979 (addToMapMapFromBucket!1222 (Cons!52245 lt!1839209 lt!1839217) lt!1839213) (+!2092 lt!1839212 lt!1839209)) (= (content!9105 (toList!5469 (addToMapMapFromBucket!1222 (Cons!52245 lt!1839209 lt!1839217) lt!1839213))) (content!9105 (toList!5469 (+!2092 lt!1839212 lt!1839209)))))))

(declare-fun bs!1082057 () Bool)

(assert (= bs!1082057 d!1487465))

(declare-fun m!5576251 () Bool)

(assert (=> bs!1082057 m!5576251))

(declare-fun m!5576253 () Bool)

(assert (=> bs!1082057 m!5576253))

(assert (=> b!4679593 d!1487465))

(declare-fun bs!1082058 () Bool)

(declare-fun b!4679898 () Bool)

(assert (= bs!1082058 (and b!4679898 b!4679880)))

(declare-fun lambda!204566 () Int)

(assert (=> bs!1082058 (= lambda!204566 lambda!204556)))

(declare-fun bs!1082059 () Bool)

(assert (= bs!1082059 (and b!4679898 b!4679890)))

(assert (=> bs!1082059 (= lambda!204566 lambda!204563)))

(declare-fun bs!1082060 () Bool)

(assert (= bs!1082060 (and b!4679898 d!1487359)))

(assert (=> bs!1082060 (= (= lt!1839213 lt!1839449) (= lambda!204566 lambda!204536))))

(declare-fun bs!1082061 () Bool)

(assert (= bs!1082061 (and b!4679898 b!4679738)))

(assert (=> bs!1082061 (= lambda!204566 lambda!204532)))

(declare-fun bs!1082062 () Bool)

(assert (= bs!1082062 (and b!4679898 b!4679730)))

(assert (=> bs!1082062 (= lambda!204566 lambda!204528)))

(declare-fun bs!1082063 () Bool)

(assert (= bs!1082063 (and b!4679898 b!4679731)))

(assert (=> bs!1082063 (= lambda!204566 lambda!204527)))

(declare-fun bs!1082064 () Bool)

(assert (= bs!1082064 (and b!4679898 d!1487387)))

(assert (=> bs!1082064 (not (= lambda!204566 lambda!204543))))

(assert (=> bs!1082059 (= (= lt!1839213 lt!1839617) (= lambda!204566 lambda!204564))))

(declare-fun bs!1082065 () Bool)

(assert (= bs!1082065 (and b!4679898 d!1487445)))

(assert (=> bs!1082065 (= (= lt!1839213 lt!1839597) (= lambda!204566 lambda!204559))))

(declare-fun bs!1082066 () Bool)

(assert (= bs!1082066 (and b!4679898 b!4679891)))

(assert (=> bs!1082066 (= lambda!204566 lambda!204562)))

(declare-fun bs!1082067 () Bool)

(assert (= bs!1082067 (and b!4679898 b!4679879)))

(assert (=> bs!1082067 (= lambda!204566 lambda!204557)))

(declare-fun bs!1082068 () Bool)

(assert (= bs!1082068 (and b!4679898 d!1487319)))

(assert (=> bs!1082068 (= (= lt!1839213 lt!1839428) (= lambda!204566 lambda!204531))))

(declare-fun bs!1082069 () Bool)

(assert (= bs!1082069 (and b!4679898 d!1487459)))

(assert (=> bs!1082069 (= (= lt!1839213 lt!1839624) (= lambda!204566 lambda!204565))))

(declare-fun bs!1082070 () Bool)

(assert (= bs!1082070 (and b!4679898 b!4679737)))

(assert (=> bs!1082070 (= lambda!204566 lambda!204533)))

(assert (=> bs!1082070 (= (= lt!1839213 lt!1839442) (= lambda!204566 lambda!204534))))

(assert (=> bs!1082067 (= (= lt!1839213 lt!1839590) (= lambda!204566 lambda!204558))))

(assert (=> bs!1082062 (= (= lt!1839213 lt!1839421) (= lambda!204566 lambda!204529))))

(assert (=> b!4679898 true))

(declare-fun bs!1082071 () Bool)

(declare-fun b!4679897 () Bool)

(assert (= bs!1082071 (and b!4679897 b!4679890)))

(declare-fun lambda!204567 () Int)

(assert (=> bs!1082071 (= lambda!204567 lambda!204563)))

(declare-fun bs!1082072 () Bool)

(assert (= bs!1082072 (and b!4679897 d!1487359)))

(assert (=> bs!1082072 (= (= lt!1839213 lt!1839449) (= lambda!204567 lambda!204536))))

(declare-fun bs!1082073 () Bool)

(assert (= bs!1082073 (and b!4679897 b!4679738)))

(assert (=> bs!1082073 (= lambda!204567 lambda!204532)))

(declare-fun bs!1082074 () Bool)

(assert (= bs!1082074 (and b!4679897 b!4679730)))

(assert (=> bs!1082074 (= lambda!204567 lambda!204528)))

(declare-fun bs!1082075 () Bool)

(assert (= bs!1082075 (and b!4679897 b!4679731)))

(assert (=> bs!1082075 (= lambda!204567 lambda!204527)))

(declare-fun bs!1082076 () Bool)

(assert (= bs!1082076 (and b!4679897 d!1487387)))

(assert (=> bs!1082076 (not (= lambda!204567 lambda!204543))))

(assert (=> bs!1082071 (= (= lt!1839213 lt!1839617) (= lambda!204567 lambda!204564))))

(declare-fun bs!1082077 () Bool)

(assert (= bs!1082077 (and b!4679897 d!1487445)))

(assert (=> bs!1082077 (= (= lt!1839213 lt!1839597) (= lambda!204567 lambda!204559))))

(declare-fun bs!1082078 () Bool)

(assert (= bs!1082078 (and b!4679897 b!4679891)))

(assert (=> bs!1082078 (= lambda!204567 lambda!204562)))

(declare-fun bs!1082079 () Bool)

(assert (= bs!1082079 (and b!4679897 b!4679879)))

(assert (=> bs!1082079 (= lambda!204567 lambda!204557)))

(declare-fun bs!1082080 () Bool)

(assert (= bs!1082080 (and b!4679897 b!4679880)))

(assert (=> bs!1082080 (= lambda!204567 lambda!204556)))

(declare-fun bs!1082081 () Bool)

(assert (= bs!1082081 (and b!4679897 b!4679898)))

(assert (=> bs!1082081 (= lambda!204567 lambda!204566)))

(declare-fun bs!1082082 () Bool)

(assert (= bs!1082082 (and b!4679897 d!1487319)))

(assert (=> bs!1082082 (= (= lt!1839213 lt!1839428) (= lambda!204567 lambda!204531))))

(declare-fun bs!1082083 () Bool)

(assert (= bs!1082083 (and b!4679897 d!1487459)))

(assert (=> bs!1082083 (= (= lt!1839213 lt!1839624) (= lambda!204567 lambda!204565))))

(declare-fun bs!1082084 () Bool)

(assert (= bs!1082084 (and b!4679897 b!4679737)))

(assert (=> bs!1082084 (= lambda!204567 lambda!204533)))

(assert (=> bs!1082084 (= (= lt!1839213 lt!1839442) (= lambda!204567 lambda!204534))))

(assert (=> bs!1082079 (= (= lt!1839213 lt!1839590) (= lambda!204567 lambda!204558))))

(assert (=> bs!1082074 (= (= lt!1839213 lt!1839421) (= lambda!204567 lambda!204529))))

(assert (=> b!4679897 true))

(declare-fun lambda!204568 () Int)

(declare-fun lt!1839642 () ListMap!4833)

(assert (=> bs!1082071 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204563))))

(assert (=> bs!1082072 (= (= lt!1839642 lt!1839449) (= lambda!204568 lambda!204536))))

(assert (=> bs!1082073 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204532))))

(assert (=> bs!1082074 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204528))))

(assert (=> bs!1082075 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204527))))

(assert (=> bs!1082076 (not (= lambda!204568 lambda!204543))))

(assert (=> bs!1082071 (= (= lt!1839642 lt!1839617) (= lambda!204568 lambda!204564))))

(assert (=> bs!1082077 (= (= lt!1839642 lt!1839597) (= lambda!204568 lambda!204559))))

(assert (=> bs!1082078 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204562))))

(assert (=> bs!1082079 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204557))))

(assert (=> bs!1082080 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204556))))

(assert (=> bs!1082081 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204566))))

(assert (=> bs!1082082 (= (= lt!1839642 lt!1839428) (= lambda!204568 lambda!204531))))

(assert (=> bs!1082083 (= (= lt!1839642 lt!1839624) (= lambda!204568 lambda!204565))))

(assert (=> bs!1082084 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204533))))

(assert (=> bs!1082084 (= (= lt!1839642 lt!1839442) (= lambda!204568 lambda!204534))))

(assert (=> b!4679897 (= (= lt!1839642 lt!1839213) (= lambda!204568 lambda!204567))))

(assert (=> bs!1082079 (= (= lt!1839642 lt!1839590) (= lambda!204568 lambda!204558))))

(assert (=> bs!1082074 (= (= lt!1839642 lt!1839421) (= lambda!204568 lambda!204529))))

(assert (=> b!4679897 true))

(declare-fun bs!1082085 () Bool)

(declare-fun d!1487467 () Bool)

(assert (= bs!1082085 (and d!1487467 b!4679897)))

(declare-fun lt!1839649 () ListMap!4833)

(declare-fun lambda!204569 () Int)

(assert (=> bs!1082085 (= (= lt!1839649 lt!1839642) (= lambda!204569 lambda!204568))))

(declare-fun bs!1082086 () Bool)

(assert (= bs!1082086 (and d!1487467 b!4679890)))

(assert (=> bs!1082086 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204563))))

(declare-fun bs!1082087 () Bool)

(assert (= bs!1082087 (and d!1487467 d!1487359)))

(assert (=> bs!1082087 (= (= lt!1839649 lt!1839449) (= lambda!204569 lambda!204536))))

(declare-fun bs!1082088 () Bool)

(assert (= bs!1082088 (and d!1487467 b!4679738)))

(assert (=> bs!1082088 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204532))))

(declare-fun bs!1082089 () Bool)

(assert (= bs!1082089 (and d!1487467 b!4679730)))

(assert (=> bs!1082089 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204528))))

(declare-fun bs!1082090 () Bool)

(assert (= bs!1082090 (and d!1487467 b!4679731)))

(assert (=> bs!1082090 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204527))))

(declare-fun bs!1082091 () Bool)

(assert (= bs!1082091 (and d!1487467 d!1487387)))

(assert (=> bs!1082091 (not (= lambda!204569 lambda!204543))))

(assert (=> bs!1082086 (= (= lt!1839649 lt!1839617) (= lambda!204569 lambda!204564))))

(declare-fun bs!1082092 () Bool)

(assert (= bs!1082092 (and d!1487467 d!1487445)))

(assert (=> bs!1082092 (= (= lt!1839649 lt!1839597) (= lambda!204569 lambda!204559))))

(declare-fun bs!1082093 () Bool)

(assert (= bs!1082093 (and d!1487467 b!4679891)))

(assert (=> bs!1082093 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204562))))

(declare-fun bs!1082094 () Bool)

(assert (= bs!1082094 (and d!1487467 b!4679879)))

(assert (=> bs!1082094 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204557))))

(declare-fun bs!1082095 () Bool)

(assert (= bs!1082095 (and d!1487467 b!4679880)))

(assert (=> bs!1082095 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204556))))

(declare-fun bs!1082096 () Bool)

(assert (= bs!1082096 (and d!1487467 b!4679898)))

(assert (=> bs!1082096 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204566))))

(declare-fun bs!1082097 () Bool)

(assert (= bs!1082097 (and d!1487467 d!1487319)))

(assert (=> bs!1082097 (= (= lt!1839649 lt!1839428) (= lambda!204569 lambda!204531))))

(declare-fun bs!1082098 () Bool)

(assert (= bs!1082098 (and d!1487467 d!1487459)))

(assert (=> bs!1082098 (= (= lt!1839649 lt!1839624) (= lambda!204569 lambda!204565))))

(declare-fun bs!1082099 () Bool)

(assert (= bs!1082099 (and d!1487467 b!4679737)))

(assert (=> bs!1082099 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204533))))

(assert (=> bs!1082099 (= (= lt!1839649 lt!1839442) (= lambda!204569 lambda!204534))))

(assert (=> bs!1082085 (= (= lt!1839649 lt!1839213) (= lambda!204569 lambda!204567))))

(assert (=> bs!1082094 (= (= lt!1839649 lt!1839590) (= lambda!204569 lambda!204558))))

(assert (=> bs!1082089 (= (= lt!1839649 lt!1839421) (= lambda!204569 lambda!204529))))

(assert (=> d!1487467 true))

(declare-fun e!2919847 () Bool)

(assert (=> d!1487467 e!2919847))

(declare-fun res!1971988 () Bool)

(assert (=> d!1487467 (=> (not res!1971988) (not e!2919847))))

(assert (=> d!1487467 (= res!1971988 (forall!11223 (Cons!52245 lt!1839209 lt!1839217) lambda!204569))))

(declare-fun e!2919846 () ListMap!4833)

(assert (=> d!1487467 (= lt!1839649 e!2919846)))

(declare-fun c!800563 () Bool)

(assert (=> d!1487467 (= c!800563 ((_ is Nil!52245) (Cons!52245 lt!1839209 lt!1839217)))))

(assert (=> d!1487467 (noDuplicateKeys!1790 (Cons!52245 lt!1839209 lt!1839217))))

(assert (=> d!1487467 (= (addToMapMapFromBucket!1222 (Cons!52245 lt!1839209 lt!1839217) lt!1839213) lt!1839649)))

(declare-fun b!4679895 () Bool)

(declare-fun res!1971986 () Bool)

(assert (=> b!4679895 (=> (not res!1971986) (not e!2919847))))

(assert (=> b!4679895 (= res!1971986 (forall!11223 (toList!5469 lt!1839213) lambda!204569))))

(declare-fun b!4679896 () Bool)

(declare-fun e!2919848 () Bool)

(assert (=> b!4679896 (= e!2919848 (forall!11223 (toList!5469 lt!1839213) lambda!204568))))

(declare-fun lt!1839662 () ListMap!4833)

(declare-fun call!327073 () Bool)

(declare-fun bm!327066 () Bool)

(assert (=> bm!327066 (= call!327073 (forall!11223 (ite c!800563 (toList!5469 lt!1839213) (toList!5469 lt!1839662)) (ite c!800563 lambda!204566 lambda!204568)))))

(declare-fun bm!327067 () Bool)

(declare-fun call!327072 () Unit!122367)

(assert (=> bm!327067 (= call!327072 (lemmaContainsAllItsOwnKeys!662 lt!1839213))))

(declare-fun bm!327068 () Bool)

(declare-fun call!327071 () Bool)

(assert (=> bm!327068 (= call!327071 (forall!11223 (toList!5469 lt!1839213) (ite c!800563 lambda!204566 lambda!204568)))))

(assert (=> b!4679897 (= e!2919846 lt!1839642)))

(assert (=> b!4679897 (= lt!1839662 (+!2092 lt!1839213 (h!58454 (Cons!52245 lt!1839209 lt!1839217))))))

(assert (=> b!4679897 (= lt!1839642 (addToMapMapFromBucket!1222 (t!359521 (Cons!52245 lt!1839209 lt!1839217)) (+!2092 lt!1839213 (h!58454 (Cons!52245 lt!1839209 lt!1839217)))))))

(declare-fun lt!1839655 () Unit!122367)

(assert (=> b!4679897 (= lt!1839655 call!327072)))

(assert (=> b!4679897 (forall!11223 (toList!5469 lt!1839213) lambda!204567)))

(declare-fun lt!1839651 () Unit!122367)

(assert (=> b!4679897 (= lt!1839651 lt!1839655)))

(assert (=> b!4679897 (forall!11223 (toList!5469 lt!1839662) lambda!204568)))

(declare-fun lt!1839648 () Unit!122367)

(declare-fun Unit!122476 () Unit!122367)

(assert (=> b!4679897 (= lt!1839648 Unit!122476)))

(assert (=> b!4679897 (forall!11223 (t!359521 (Cons!52245 lt!1839209 lt!1839217)) lambda!204568)))

(declare-fun lt!1839647 () Unit!122367)

(declare-fun Unit!122477 () Unit!122367)

(assert (=> b!4679897 (= lt!1839647 Unit!122477)))

(declare-fun lt!1839659 () Unit!122367)

(declare-fun Unit!122478 () Unit!122367)

(assert (=> b!4679897 (= lt!1839659 Unit!122478)))

(declare-fun lt!1839656 () Unit!122367)

(assert (=> b!4679897 (= lt!1839656 (forallContained!3346 (toList!5469 lt!1839662) lambda!204568 (h!58454 (Cons!52245 lt!1839209 lt!1839217))))))

(assert (=> b!4679897 (contains!15378 lt!1839662 (_1!30071 (h!58454 (Cons!52245 lt!1839209 lt!1839217))))))

(declare-fun lt!1839644 () Unit!122367)

(declare-fun Unit!122479 () Unit!122367)

(assert (=> b!4679897 (= lt!1839644 Unit!122479)))

(assert (=> b!4679897 (contains!15378 lt!1839642 (_1!30071 (h!58454 (Cons!52245 lt!1839209 lt!1839217))))))

(declare-fun lt!1839658 () Unit!122367)

(declare-fun Unit!122480 () Unit!122367)

(assert (=> b!4679897 (= lt!1839658 Unit!122480)))

(assert (=> b!4679897 (forall!11223 (Cons!52245 lt!1839209 lt!1839217) lambda!204568)))

(declare-fun lt!1839661 () Unit!122367)

(declare-fun Unit!122481 () Unit!122367)

(assert (=> b!4679897 (= lt!1839661 Unit!122481)))

(assert (=> b!4679897 call!327073))

(declare-fun lt!1839652 () Unit!122367)

(declare-fun Unit!122482 () Unit!122367)

(assert (=> b!4679897 (= lt!1839652 Unit!122482)))

(declare-fun lt!1839643 () Unit!122367)

(declare-fun Unit!122483 () Unit!122367)

(assert (=> b!4679897 (= lt!1839643 Unit!122483)))

(declare-fun lt!1839645 () Unit!122367)

(assert (=> b!4679897 (= lt!1839645 (addForallContainsKeyThenBeforeAdding!661 lt!1839213 lt!1839642 (_1!30071 (h!58454 (Cons!52245 lt!1839209 lt!1839217))) (_2!30071 (h!58454 (Cons!52245 lt!1839209 lt!1839217)))))))

(assert (=> b!4679897 call!327071))

(declare-fun lt!1839653 () Unit!122367)

(assert (=> b!4679897 (= lt!1839653 lt!1839645)))

(assert (=> b!4679897 (forall!11223 (toList!5469 lt!1839213) lambda!204568)))

(declare-fun lt!1839657 () Unit!122367)

(declare-fun Unit!122484 () Unit!122367)

(assert (=> b!4679897 (= lt!1839657 Unit!122484)))

(declare-fun res!1971987 () Bool)

(assert (=> b!4679897 (= res!1971987 (forall!11223 (Cons!52245 lt!1839209 lt!1839217) lambda!204568))))

(assert (=> b!4679897 (=> (not res!1971987) (not e!2919848))))

(assert (=> b!4679897 e!2919848))

(declare-fun lt!1839660 () Unit!122367)

(declare-fun Unit!122485 () Unit!122367)

(assert (=> b!4679897 (= lt!1839660 Unit!122485)))

(assert (=> b!4679898 (= e!2919846 lt!1839213)))

(declare-fun lt!1839646 () Unit!122367)

(assert (=> b!4679898 (= lt!1839646 call!327072)))

(assert (=> b!4679898 call!327071))

(declare-fun lt!1839654 () Unit!122367)

(assert (=> b!4679898 (= lt!1839654 lt!1839646)))

(assert (=> b!4679898 call!327073))

(declare-fun lt!1839650 () Unit!122367)

(declare-fun Unit!122486 () Unit!122367)

(assert (=> b!4679898 (= lt!1839650 Unit!122486)))

(declare-fun b!4679899 () Bool)

(assert (=> b!4679899 (= e!2919847 (invariantList!1374 (toList!5469 lt!1839649)))))

(assert (= (and d!1487467 c!800563) b!4679898))

(assert (= (and d!1487467 (not c!800563)) b!4679897))

(assert (= (and b!4679897 res!1971987) b!4679896))

(assert (= (or b!4679898 b!4679897) bm!327067))

(assert (= (or b!4679898 b!4679897) bm!327068))

(assert (= (or b!4679898 b!4679897) bm!327066))

(assert (= (and d!1487467 res!1971988) b!4679895))

(assert (= (and b!4679895 res!1971986) b!4679899))

(declare-fun m!5576255 () Bool)

(assert (=> bm!327068 m!5576255))

(declare-fun m!5576257 () Bool)

(assert (=> b!4679895 m!5576257))

(declare-fun m!5576259 () Bool)

(assert (=> b!4679896 m!5576259))

(declare-fun m!5576261 () Bool)

(assert (=> b!4679899 m!5576261))

(declare-fun m!5576263 () Bool)

(assert (=> b!4679897 m!5576263))

(declare-fun m!5576265 () Bool)

(assert (=> b!4679897 m!5576265))

(declare-fun m!5576267 () Bool)

(assert (=> b!4679897 m!5576267))

(declare-fun m!5576269 () Bool)

(assert (=> b!4679897 m!5576269))

(declare-fun m!5576271 () Bool)

(assert (=> b!4679897 m!5576271))

(declare-fun m!5576273 () Bool)

(assert (=> b!4679897 m!5576273))

(assert (=> b!4679897 m!5576259))

(assert (=> b!4679897 m!5576271))

(declare-fun m!5576275 () Bool)

(assert (=> b!4679897 m!5576275))

(declare-fun m!5576277 () Bool)

(assert (=> b!4679897 m!5576277))

(declare-fun m!5576279 () Bool)

(assert (=> b!4679897 m!5576279))

(declare-fun m!5576281 () Bool)

(assert (=> b!4679897 m!5576281))

(assert (=> b!4679897 m!5576267))

(assert (=> bm!327067 m!5575805))

(declare-fun m!5576283 () Bool)

(assert (=> d!1487467 m!5576283))

(declare-fun m!5576285 () Bool)

(assert (=> d!1487467 m!5576285))

(declare-fun m!5576287 () Bool)

(assert (=> bm!327066 m!5576287))

(assert (=> b!4679593 d!1487467))

(declare-fun d!1487469 () Bool)

(assert (=> d!1487469 (eq!979 (addToMapMapFromBucket!1222 (Cons!52245 lt!1839209 lt!1839217) lt!1839213) (+!2092 (addToMapMapFromBucket!1222 lt!1839217 lt!1839213) lt!1839209))))

(declare-fun lt!1839665 () Unit!122367)

(declare-fun choose!32380 (tuple2!53554 List!52369 ListMap!4833) Unit!122367)

(assert (=> d!1487469 (= lt!1839665 (choose!32380 lt!1839209 lt!1839217 lt!1839213))))

(assert (=> d!1487469 (noDuplicateKeys!1790 lt!1839217)))

(assert (=> d!1487469 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!228 lt!1839209 lt!1839217 lt!1839213) lt!1839665)))

(declare-fun bs!1082100 () Bool)

(assert (= bs!1082100 d!1487469))

(assert (=> bs!1082100 m!5575495))

(assert (=> bs!1082100 m!5575513))

(assert (=> bs!1082100 m!5575849))

(assert (=> bs!1082100 m!5575513))

(declare-fun m!5576289 () Bool)

(assert (=> bs!1082100 m!5576289))

(declare-fun m!5576291 () Bool)

(assert (=> bs!1082100 m!5576291))

(assert (=> bs!1082100 m!5575495))

(assert (=> bs!1082100 m!5576289))

(declare-fun m!5576293 () Bool)

(assert (=> bs!1082100 m!5576293))

(assert (=> b!4679593 d!1487469))

(declare-fun d!1487471 () Bool)

(declare-fun res!1971989 () Bool)

(declare-fun e!2919849 () Bool)

(assert (=> d!1487471 (=> res!1971989 e!2919849)))

(assert (=> d!1487471 (= res!1971989 ((_ is Nil!52246) lt!1839216))))

(assert (=> d!1487471 (= (forall!11221 lt!1839216 lambda!204443) e!2919849)))

(declare-fun b!4679900 () Bool)

(declare-fun e!2919850 () Bool)

(assert (=> b!4679900 (= e!2919849 e!2919850)))

(declare-fun res!1971990 () Bool)

(assert (=> b!4679900 (=> (not res!1971990) (not e!2919850))))

(assert (=> b!4679900 (= res!1971990 (dynLambda!21676 lambda!204443 (h!58455 lt!1839216)))))

(declare-fun b!4679901 () Bool)

(assert (=> b!4679901 (= e!2919850 (forall!11221 (t!359522 lt!1839216) lambda!204443))))

(assert (= (and d!1487471 (not res!1971989)) b!4679900))

(assert (= (and b!4679900 res!1971990) b!4679901))

(declare-fun b_lambda!176655 () Bool)

(assert (=> (not b_lambda!176655) (not b!4679900)))

(declare-fun m!5576295 () Bool)

(assert (=> b!4679900 m!5576295))

(declare-fun m!5576297 () Bool)

(assert (=> b!4679901 m!5576297))

(assert (=> b!4679594 d!1487471))

(declare-fun d!1487473 () Bool)

(assert (=> d!1487473 (= (eq!979 lt!1839220 (-!654 lt!1839214 key!4653)) (= (content!9105 (toList!5469 lt!1839220)) (content!9105 (toList!5469 (-!654 lt!1839214 key!4653)))))))

(declare-fun bs!1082101 () Bool)

(assert (= bs!1082101 d!1487473))

(declare-fun m!5576299 () Bool)

(assert (=> bs!1082101 m!5576299))

(declare-fun m!5576301 () Bool)

(assert (=> bs!1082101 m!5576301))

(assert (=> b!4679594 d!1487473))

(declare-fun d!1487475 () Bool)

(declare-fun e!2919851 () Bool)

(assert (=> d!1487475 e!2919851))

(declare-fun res!1971991 () Bool)

(assert (=> d!1487475 (=> (not res!1971991) (not e!2919851))))

(declare-fun lt!1839666 () ListMap!4833)

(assert (=> d!1487475 (= res!1971991 (not (contains!15378 lt!1839666 key!4653)))))

(assert (=> d!1487475 (= lt!1839666 (ListMap!4834 (removePresrvNoDuplicatedKeys!326 (toList!5469 lt!1839214) key!4653)))))

(assert (=> d!1487475 (= (-!654 lt!1839214 key!4653) lt!1839666)))

(declare-fun b!4679902 () Bool)

(assert (=> b!4679902 (= e!2919851 (= ((_ map and) (content!9104 (keys!18613 lt!1839214)) ((_ map not) (store ((as const (Array K!13625 Bool)) false) key!4653 true))) (content!9104 (keys!18613 lt!1839666))))))

(assert (= (and d!1487475 res!1971991) b!4679902))

(declare-fun m!5576303 () Bool)

(assert (=> d!1487475 m!5576303))

(declare-fun m!5576305 () Bool)

(assert (=> d!1487475 m!5576305))

(declare-fun m!5576307 () Bool)

(assert (=> b!4679902 m!5576307))

(declare-fun m!5576309 () Bool)

(assert (=> b!4679902 m!5576309))

(declare-fun m!5576311 () Bool)

(assert (=> b!4679902 m!5576311))

(declare-fun m!5576313 () Bool)

(assert (=> b!4679902 m!5576313))

(assert (=> b!4679902 m!5575871))

(assert (=> b!4679902 m!5576307))

(assert (=> b!4679902 m!5576311))

(assert (=> b!4679594 d!1487475))

(declare-fun d!1487477 () Bool)

(assert (=> d!1487477 (eq!979 (-!654 lt!1839207 key!4653) (-!654 lt!1839214 key!4653))))

(declare-fun lt!1839669 () Unit!122367)

(declare-fun choose!32382 (ListMap!4833 ListMap!4833 K!13625) Unit!122367)

(assert (=> d!1487477 (= lt!1839669 (choose!32382 lt!1839207 lt!1839214 key!4653))))

(assert (=> d!1487477 (eq!979 lt!1839207 lt!1839214)))

(assert (=> d!1487477 (= (lemmaRemovePreservesEq!74 lt!1839207 lt!1839214 key!4653) lt!1839669)))

(declare-fun bs!1082102 () Bool)

(assert (= bs!1082102 d!1487477))

(assert (=> bs!1082102 m!5575557))

(assert (=> bs!1082102 m!5575487))

(assert (=> bs!1082102 m!5575487))

(assert (=> bs!1082102 m!5575551))

(declare-fun m!5576315 () Bool)

(assert (=> bs!1082102 m!5576315))

(declare-fun m!5576317 () Bool)

(assert (=> bs!1082102 m!5576317))

(assert (=> bs!1082102 m!5575551))

(assert (=> b!4679594 d!1487477))

(declare-fun d!1487479 () Bool)

(declare-fun res!1971996 () Bool)

(declare-fun e!2919856 () Bool)

(assert (=> d!1487479 (=> res!1971996 e!2919856)))

(assert (=> d!1487479 (= res!1971996 (and ((_ is Cons!52245) lt!1839217) (= (_1!30071 (h!58454 lt!1839217)) key!4653)))))

(assert (=> d!1487479 (= (containsKey!2933 lt!1839217 key!4653) e!2919856)))

(declare-fun b!4679907 () Bool)

(declare-fun e!2919857 () Bool)

(assert (=> b!4679907 (= e!2919856 e!2919857)))

(declare-fun res!1971997 () Bool)

(assert (=> b!4679907 (=> (not res!1971997) (not e!2919857))))

(assert (=> b!4679907 (= res!1971997 ((_ is Cons!52245) lt!1839217))))

(declare-fun b!4679908 () Bool)

(assert (=> b!4679908 (= e!2919857 (containsKey!2933 (t!359521 lt!1839217) key!4653))))

(assert (= (and d!1487479 (not res!1971996)) b!4679907))

(assert (= (and b!4679907 res!1971997) b!4679908))

(declare-fun m!5576319 () Bool)

(assert (=> b!4679908 m!5576319))

(assert (=> b!4679592 d!1487479))

(declare-fun bs!1082103 () Bool)

(declare-fun d!1487481 () Bool)

(assert (= bs!1082103 (and d!1487481 b!4679897)))

(declare-fun lambda!204570 () Int)

(assert (=> bs!1082103 (not (= lambda!204570 lambda!204568))))

(declare-fun bs!1082104 () Bool)

(assert (= bs!1082104 (and d!1487481 b!4679890)))

(assert (=> bs!1082104 (not (= lambda!204570 lambda!204563))))

(declare-fun bs!1082105 () Bool)

(assert (= bs!1082105 (and d!1487481 d!1487359)))

(assert (=> bs!1082105 (not (= lambda!204570 lambda!204536))))

(declare-fun bs!1082106 () Bool)

(assert (= bs!1082106 (and d!1487481 b!4679738)))

(assert (=> bs!1082106 (not (= lambda!204570 lambda!204532))))

(declare-fun bs!1082107 () Bool)

(assert (= bs!1082107 (and d!1487481 b!4679730)))

(assert (=> bs!1082107 (not (= lambda!204570 lambda!204528))))

(declare-fun bs!1082108 () Bool)

(assert (= bs!1082108 (and d!1487481 b!4679731)))

(assert (=> bs!1082108 (not (= lambda!204570 lambda!204527))))

(declare-fun bs!1082109 () Bool)

(assert (= bs!1082109 (and d!1487481 d!1487387)))

(assert (=> bs!1082109 (= lambda!204570 lambda!204543)))

(assert (=> bs!1082104 (not (= lambda!204570 lambda!204564))))

(declare-fun bs!1082110 () Bool)

(assert (= bs!1082110 (and d!1487481 d!1487445)))

(assert (=> bs!1082110 (not (= lambda!204570 lambda!204559))))

(declare-fun bs!1082111 () Bool)

(assert (= bs!1082111 (and d!1487481 d!1487467)))

(assert (=> bs!1082111 (not (= lambda!204570 lambda!204569))))

(declare-fun bs!1082112 () Bool)

(assert (= bs!1082112 (and d!1487481 b!4679891)))

(assert (=> bs!1082112 (not (= lambda!204570 lambda!204562))))

(declare-fun bs!1082113 () Bool)

(assert (= bs!1082113 (and d!1487481 b!4679879)))

(assert (=> bs!1082113 (not (= lambda!204570 lambda!204557))))

(declare-fun bs!1082114 () Bool)

(assert (= bs!1082114 (and d!1487481 b!4679880)))

(assert (=> bs!1082114 (not (= lambda!204570 lambda!204556))))

(declare-fun bs!1082115 () Bool)

(assert (= bs!1082115 (and d!1487481 b!4679898)))

(assert (=> bs!1082115 (not (= lambda!204570 lambda!204566))))

(declare-fun bs!1082116 () Bool)

(assert (= bs!1082116 (and d!1487481 d!1487319)))

(assert (=> bs!1082116 (not (= lambda!204570 lambda!204531))))

(declare-fun bs!1082117 () Bool)

(assert (= bs!1082117 (and d!1487481 d!1487459)))

(assert (=> bs!1082117 (not (= lambda!204570 lambda!204565))))

(declare-fun bs!1082118 () Bool)

(assert (= bs!1082118 (and d!1487481 b!4679737)))

(assert (=> bs!1082118 (not (= lambda!204570 lambda!204533))))

(assert (=> bs!1082118 (not (= lambda!204570 lambda!204534))))

(assert (=> bs!1082103 (not (= lambda!204570 lambda!204567))))

(assert (=> bs!1082113 (not (= lambda!204570 lambda!204558))))

(assert (=> bs!1082107 (not (= lambda!204570 lambda!204529))))

(assert (=> d!1487481 true))

(assert (=> d!1487481 true))

(assert (=> d!1487481 (= (allKeysSameHash!1616 oldBucket!34 hash!405 hashF!1323) (forall!11223 oldBucket!34 lambda!204570))))

(declare-fun bs!1082119 () Bool)

(assert (= bs!1082119 d!1487481))

(declare-fun m!5576321 () Bool)

(assert (=> bs!1082119 m!5576321))

(assert (=> b!4679613 d!1487481))

(declare-fun b!4679909 () Bool)

(declare-fun e!2919863 () Bool)

(assert (=> b!4679909 (= e!2919863 (contains!15381 (keys!18613 lt!1839212) key!4653))))

(declare-fun b!4679910 () Bool)

(declare-fun e!2919859 () Unit!122367)

(declare-fun Unit!122487 () Unit!122367)

(assert (=> b!4679910 (= e!2919859 Unit!122487)))

(declare-fun b!4679911 () Bool)

(assert (=> b!4679911 false))

(declare-fun lt!1839674 () Unit!122367)

(declare-fun lt!1839671 () Unit!122367)

(assert (=> b!4679911 (= lt!1839674 lt!1839671)))

(assert (=> b!4679911 (containsKey!2935 (toList!5469 lt!1839212) key!4653)))

(assert (=> b!4679911 (= lt!1839671 (lemmaInGetKeysListThenContainsKey!813 (toList!5469 lt!1839212) key!4653))))

(declare-fun Unit!122488 () Unit!122367)

(assert (=> b!4679911 (= e!2919859 Unit!122488)))

(declare-fun b!4679912 () Bool)

(declare-fun e!2919862 () Bool)

(assert (=> b!4679912 (= e!2919862 (not (contains!15381 (keys!18613 lt!1839212) key!4653)))))

(declare-fun b!4679913 () Bool)

(declare-fun e!2919858 () Unit!122367)

(declare-fun lt!1839670 () Unit!122367)

(assert (=> b!4679913 (= e!2919858 lt!1839670)))

(declare-fun lt!1839676 () Unit!122367)

(assert (=> b!4679913 (= lt!1839676 (lemmaContainsKeyImpliesGetValueByKeyDefined!1609 (toList!5469 lt!1839212) key!4653))))

(assert (=> b!4679913 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839212) key!4653))))

(declare-fun lt!1839673 () Unit!122367)

(assert (=> b!4679913 (= lt!1839673 lt!1839676)))

(assert (=> b!4679913 (= lt!1839670 (lemmaInListThenGetKeysListContains!809 (toList!5469 lt!1839212) key!4653))))

(declare-fun call!327074 () Bool)

(assert (=> b!4679913 call!327074))

(declare-fun b!4679914 () Bool)

(declare-fun e!2919860 () List!52372)

(assert (=> b!4679914 (= e!2919860 (keys!18613 lt!1839212))))

(declare-fun d!1487483 () Bool)

(declare-fun e!2919861 () Bool)

(assert (=> d!1487483 e!2919861))

(declare-fun res!1971999 () Bool)

(assert (=> d!1487483 (=> res!1971999 e!2919861)))

(assert (=> d!1487483 (= res!1971999 e!2919862)))

(declare-fun res!1971998 () Bool)

(assert (=> d!1487483 (=> (not res!1971998) (not e!2919862))))

(declare-fun lt!1839675 () Bool)

(assert (=> d!1487483 (= res!1971998 (not lt!1839675))))

(declare-fun lt!1839672 () Bool)

(assert (=> d!1487483 (= lt!1839675 lt!1839672)))

(declare-fun lt!1839677 () Unit!122367)

(assert (=> d!1487483 (= lt!1839677 e!2919858)))

(declare-fun c!800566 () Bool)

(assert (=> d!1487483 (= c!800566 lt!1839672)))

(assert (=> d!1487483 (= lt!1839672 (containsKey!2935 (toList!5469 lt!1839212) key!4653))))

(assert (=> d!1487483 (= (contains!15378 lt!1839212 key!4653) lt!1839675)))

(declare-fun b!4679915 () Bool)

(assert (=> b!4679915 (= e!2919858 e!2919859)))

(declare-fun c!800564 () Bool)

(assert (=> b!4679915 (= c!800564 call!327074)))

(declare-fun bm!327069 () Bool)

(assert (=> bm!327069 (= call!327074 (contains!15381 e!2919860 key!4653))))

(declare-fun c!800565 () Bool)

(assert (=> bm!327069 (= c!800565 c!800566)))

(declare-fun b!4679916 () Bool)

(assert (=> b!4679916 (= e!2919860 (getKeysList!814 (toList!5469 lt!1839212)))))

(declare-fun b!4679917 () Bool)

(assert (=> b!4679917 (= e!2919861 e!2919863)))

(declare-fun res!1972000 () Bool)

(assert (=> b!4679917 (=> (not res!1972000) (not e!2919863))))

(assert (=> b!4679917 (= res!1972000 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839212) key!4653)))))

(assert (= (and d!1487483 c!800566) b!4679913))

(assert (= (and d!1487483 (not c!800566)) b!4679915))

(assert (= (and b!4679915 c!800564) b!4679911))

(assert (= (and b!4679915 (not c!800564)) b!4679910))

(assert (= (or b!4679913 b!4679915) bm!327069))

(assert (= (and bm!327069 c!800565) b!4679916))

(assert (= (and bm!327069 (not c!800565)) b!4679914))

(assert (= (and d!1487483 res!1971998) b!4679912))

(assert (= (and d!1487483 (not res!1971999)) b!4679917))

(assert (= (and b!4679917 res!1972000) b!4679909))

(declare-fun m!5576323 () Bool)

(assert (=> b!4679914 m!5576323))

(assert (=> b!4679912 m!5576323))

(assert (=> b!4679912 m!5576323))

(declare-fun m!5576325 () Bool)

(assert (=> b!4679912 m!5576325))

(declare-fun m!5576327 () Bool)

(assert (=> b!4679913 m!5576327))

(declare-fun m!5576329 () Bool)

(assert (=> b!4679913 m!5576329))

(assert (=> b!4679913 m!5576329))

(declare-fun m!5576331 () Bool)

(assert (=> b!4679913 m!5576331))

(declare-fun m!5576333 () Bool)

(assert (=> b!4679913 m!5576333))

(assert (=> b!4679917 m!5576329))

(assert (=> b!4679917 m!5576329))

(assert (=> b!4679917 m!5576331))

(declare-fun m!5576335 () Bool)

(assert (=> bm!327069 m!5576335))

(declare-fun m!5576337 () Bool)

(assert (=> d!1487483 m!5576337))

(assert (=> b!4679909 m!5576323))

(assert (=> b!4679909 m!5576323))

(assert (=> b!4679909 m!5576325))

(assert (=> b!4679911 m!5576337))

(declare-fun m!5576339 () Bool)

(assert (=> b!4679911 m!5576339))

(declare-fun m!5576341 () Bool)

(assert (=> b!4679916 m!5576341))

(assert (=> b!4679603 d!1487483))

(declare-fun b!4679918 () Bool)

(declare-fun e!2919869 () Bool)

(assert (=> b!4679918 (= e!2919869 (contains!15381 (keys!18613 lt!1839219) key!4653))))

(declare-fun b!4679919 () Bool)

(declare-fun e!2919865 () Unit!122367)

(declare-fun Unit!122489 () Unit!122367)

(assert (=> b!4679919 (= e!2919865 Unit!122489)))

(declare-fun b!4679920 () Bool)

(assert (=> b!4679920 false))

(declare-fun lt!1839682 () Unit!122367)

(declare-fun lt!1839679 () Unit!122367)

(assert (=> b!4679920 (= lt!1839682 lt!1839679)))

(assert (=> b!4679920 (containsKey!2935 (toList!5469 lt!1839219) key!4653)))

(assert (=> b!4679920 (= lt!1839679 (lemmaInGetKeysListThenContainsKey!813 (toList!5469 lt!1839219) key!4653))))

(declare-fun Unit!122490 () Unit!122367)

(assert (=> b!4679920 (= e!2919865 Unit!122490)))

(declare-fun b!4679921 () Bool)

(declare-fun e!2919868 () Bool)

(assert (=> b!4679921 (= e!2919868 (not (contains!15381 (keys!18613 lt!1839219) key!4653)))))

(declare-fun b!4679922 () Bool)

(declare-fun e!2919864 () Unit!122367)

(declare-fun lt!1839678 () Unit!122367)

(assert (=> b!4679922 (= e!2919864 lt!1839678)))

(declare-fun lt!1839684 () Unit!122367)

(assert (=> b!4679922 (= lt!1839684 (lemmaContainsKeyImpliesGetValueByKeyDefined!1609 (toList!5469 lt!1839219) key!4653))))

(assert (=> b!4679922 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839219) key!4653))))

(declare-fun lt!1839681 () Unit!122367)

(assert (=> b!4679922 (= lt!1839681 lt!1839684)))

(assert (=> b!4679922 (= lt!1839678 (lemmaInListThenGetKeysListContains!809 (toList!5469 lt!1839219) key!4653))))

(declare-fun call!327075 () Bool)

(assert (=> b!4679922 call!327075))

(declare-fun b!4679923 () Bool)

(declare-fun e!2919866 () List!52372)

(assert (=> b!4679923 (= e!2919866 (keys!18613 lt!1839219))))

(declare-fun d!1487485 () Bool)

(declare-fun e!2919867 () Bool)

(assert (=> d!1487485 e!2919867))

(declare-fun res!1972002 () Bool)

(assert (=> d!1487485 (=> res!1972002 e!2919867)))

(assert (=> d!1487485 (= res!1972002 e!2919868)))

(declare-fun res!1972001 () Bool)

(assert (=> d!1487485 (=> (not res!1972001) (not e!2919868))))

(declare-fun lt!1839683 () Bool)

(assert (=> d!1487485 (= res!1972001 (not lt!1839683))))

(declare-fun lt!1839680 () Bool)

(assert (=> d!1487485 (= lt!1839683 lt!1839680)))

(declare-fun lt!1839685 () Unit!122367)

(assert (=> d!1487485 (= lt!1839685 e!2919864)))

(declare-fun c!800569 () Bool)

(assert (=> d!1487485 (= c!800569 lt!1839680)))

(assert (=> d!1487485 (= lt!1839680 (containsKey!2935 (toList!5469 lt!1839219) key!4653))))

(assert (=> d!1487485 (= (contains!15378 lt!1839219 key!4653) lt!1839683)))

(declare-fun b!4679924 () Bool)

(assert (=> b!4679924 (= e!2919864 e!2919865)))

(declare-fun c!800567 () Bool)

(assert (=> b!4679924 (= c!800567 call!327075)))

(declare-fun bm!327070 () Bool)

(assert (=> bm!327070 (= call!327075 (contains!15381 e!2919866 key!4653))))

(declare-fun c!800568 () Bool)

(assert (=> bm!327070 (= c!800568 c!800569)))

(declare-fun b!4679925 () Bool)

(assert (=> b!4679925 (= e!2919866 (getKeysList!814 (toList!5469 lt!1839219)))))

(declare-fun b!4679926 () Bool)

(assert (=> b!4679926 (= e!2919867 e!2919869)))

(declare-fun res!1972003 () Bool)

(assert (=> b!4679926 (=> (not res!1972003) (not e!2919869))))

(assert (=> b!4679926 (= res!1972003 (isDefined!9224 (getValueByKey!1717 (toList!5469 lt!1839219) key!4653)))))

(assert (= (and d!1487485 c!800569) b!4679922))

(assert (= (and d!1487485 (not c!800569)) b!4679924))

(assert (= (and b!4679924 c!800567) b!4679920))

(assert (= (and b!4679924 (not c!800567)) b!4679919))

(assert (= (or b!4679922 b!4679924) bm!327070))

(assert (= (and bm!327070 c!800568) b!4679925))

(assert (= (and bm!327070 (not c!800568)) b!4679923))

(assert (= (and d!1487485 res!1972001) b!4679921))

(assert (= (and d!1487485 (not res!1972002)) b!4679926))

(assert (= (and b!4679926 res!1972003) b!4679918))

(declare-fun m!5576343 () Bool)

(assert (=> b!4679923 m!5576343))

(assert (=> b!4679921 m!5576343))

(assert (=> b!4679921 m!5576343))

(declare-fun m!5576345 () Bool)

(assert (=> b!4679921 m!5576345))

(declare-fun m!5576347 () Bool)

(assert (=> b!4679922 m!5576347))

(declare-fun m!5576349 () Bool)

(assert (=> b!4679922 m!5576349))

(assert (=> b!4679922 m!5576349))

(declare-fun m!5576351 () Bool)

(assert (=> b!4679922 m!5576351))

(declare-fun m!5576353 () Bool)

(assert (=> b!4679922 m!5576353))

(assert (=> b!4679926 m!5576349))

(assert (=> b!4679926 m!5576349))

(assert (=> b!4679926 m!5576351))

(declare-fun m!5576355 () Bool)

(assert (=> bm!327070 m!5576355))

(declare-fun m!5576357 () Bool)

(assert (=> d!1487485 m!5576357))

(assert (=> b!4679918 m!5576343))

(assert (=> b!4679918 m!5576343))

(assert (=> b!4679918 m!5576345))

(assert (=> b!4679920 m!5576357))

(declare-fun m!5576359 () Bool)

(assert (=> b!4679920 m!5576359))

(declare-fun m!5576361 () Bool)

(assert (=> b!4679925 m!5576361))

(assert (=> b!4679603 d!1487485))

(declare-fun bs!1082120 () Bool)

(declare-fun d!1487487 () Bool)

(assert (= bs!1082120 (and d!1487487 d!1487447)))

(declare-fun lambda!204573 () Int)

(assert (=> bs!1082120 (= lambda!204573 lambda!204560)))

(declare-fun bs!1082121 () Bool)

(assert (= bs!1082121 (and d!1487487 d!1487401)))

(assert (=> bs!1082121 (= lambda!204573 lambda!204550)))

(declare-fun bs!1082122 () Bool)

(assert (= bs!1082122 (and d!1487487 start!472452)))

(assert (=> bs!1082122 (= lambda!204573 lambda!204443)))

(declare-fun bs!1082123 () Bool)

(assert (= bs!1082123 (and d!1487487 d!1487409)))

(assert (=> bs!1082123 (= lambda!204573 lambda!204551)))

(declare-fun bs!1082124 () Bool)

(assert (= bs!1082124 (and d!1487487 d!1487453)))

(assert (=> bs!1082124 (= lambda!204573 lambda!204561)))

(declare-fun bs!1082125 () Bool)

(assert (= bs!1082125 (and d!1487487 d!1487443)))

(assert (=> bs!1082125 (= lambda!204573 lambda!204555)))

(declare-fun bs!1082126 () Bool)

(assert (= bs!1082126 (and d!1487487 d!1487419)))

(assert (=> bs!1082126 (not (= lambda!204573 lambda!204554))))

(assert (=> d!1487487 (not (contains!15378 (extractMap!1816 (toList!5470 (ListLongMap!4000 lt!1839216))) key!4653))))

(declare-fun lt!1839688 () Unit!122367)

(declare-fun choose!32383 (ListLongMap!3999 K!13625 Hashable!6159) Unit!122367)

(assert (=> d!1487487 (= lt!1839688 (choose!32383 (ListLongMap!4000 lt!1839216) key!4653 hashF!1323))))

(assert (=> d!1487487 (forall!11221 (toList!5470 (ListLongMap!4000 lt!1839216)) lambda!204573)))

(assert (=> d!1487487 (= (lemmaNotInItsHashBucketThenNotInMap!390 (ListLongMap!4000 lt!1839216) key!4653 hashF!1323) lt!1839688)))

(declare-fun bs!1082127 () Bool)

(assert (= bs!1082127 d!1487487))

(declare-fun m!5576363 () Bool)

(assert (=> bs!1082127 m!5576363))

(assert (=> bs!1082127 m!5576363))

(declare-fun m!5576365 () Bool)

(assert (=> bs!1082127 m!5576365))

(declare-fun m!5576367 () Bool)

(assert (=> bs!1082127 m!5576367))

(declare-fun m!5576369 () Bool)

(assert (=> bs!1082127 m!5576369))

(assert (=> b!4679603 d!1487487))

(declare-fun e!2919872 () Bool)

(declare-fun b!4679931 () Bool)

(declare-fun tp!1344994 () Bool)

(assert (=> b!4679931 (= e!2919872 (and tp_is_empty!30453 tp_is_empty!30455 tp!1344994))))

(assert (=> b!4679600 (= tp!1344980 e!2919872)))

(assert (= (and b!4679600 ((_ is Cons!52245) (t!359521 newBucket!218))) b!4679931))

(declare-fun b!4679936 () Bool)

(declare-fun e!2919875 () Bool)

(declare-fun tp!1344999 () Bool)

(declare-fun tp!1345000 () Bool)

(assert (=> b!4679936 (= e!2919875 (and tp!1344999 tp!1345000))))

(assert (=> b!4679610 (= tp!1344981 e!2919875)))

(assert (= (and b!4679610 ((_ is Cons!52246) (toList!5470 lm!2023))) b!4679936))

(declare-fun b!4679937 () Bool)

(declare-fun e!2919876 () Bool)

(declare-fun tp!1345001 () Bool)

(assert (=> b!4679937 (= e!2919876 (and tp_is_empty!30453 tp_is_empty!30455 tp!1345001))))

(assert (=> b!4679608 (= tp!1344979 e!2919876)))

(assert (= (and b!4679608 ((_ is Cons!52245) (t!359521 oldBucket!34))) b!4679937))

(declare-fun b_lambda!176657 () Bool)

(assert (= b_lambda!176655 (or start!472452 b_lambda!176657)))

(declare-fun bs!1082128 () Bool)

(declare-fun d!1487489 () Bool)

(assert (= bs!1082128 (and d!1487489 start!472452)))

(assert (=> bs!1082128 (= (dynLambda!21676 lambda!204443 (h!58455 lt!1839216)) (noDuplicateKeys!1790 (_2!30072 (h!58455 lt!1839216))))))

(declare-fun m!5576371 () Bool)

(assert (=> bs!1082128 m!5576371))

(assert (=> b!4679900 d!1487489))

(declare-fun b_lambda!176659 () Bool)

(assert (= b_lambda!176647 (or start!472452 b_lambda!176659)))

(declare-fun bs!1082129 () Bool)

(declare-fun d!1487491 () Bool)

(assert (= bs!1082129 (and d!1487491 start!472452)))

(assert (=> bs!1082129 (= (dynLambda!21676 lambda!204443 (h!58455 (toList!5470 lm!2023))) (noDuplicateKeys!1790 (_2!30072 (h!58455 (toList!5470 lm!2023)))))))

(assert (=> bs!1082129 m!5576167))

(assert (=> b!4679796 d!1487491))

(check-sat (not bm!327048) (not d!1487469) (not d!1487481) (not d!1487457) (not b!4679931) (not b!4679921) (not b!4679897) (not b!4679870) (not b!4679889) (not d!1487461) (not b!4679821) (not b!4679797) (not d!1487475) (not b!4679926) (not b!4679920) (not d!1487399) (not b!4679895) (not b!4679922) (not b!4679923) (not bm!327065) (not bm!327070) (not bm!327046) (not bm!327066) (not d!1487413) (not b!4679875) (not b!4679882) (not b!4679765) (not bs!1082129) (not b!4679866) (not b!4679890) tp_is_empty!30453 (not b!4679772) (not b!4679878) (not bm!327068) (not b!4679879) (not b!4679937) (not bm!327061) (not b!4679884) (not b!4679737) (not d!1487449) (not b!4679806) (not bm!327060) (not bm!327067) (not d!1487443) (not d!1487371) (not b!4679877) (not b!4679729) (not b!4679894) (not b!4679917) (not b!4679925) (not d!1487485) (not bm!327045) (not b!4679730) (not b!4679901) (not b!4679881) (not b!4679902) (not b!4679868) (not b_lambda!176659) (not d!1487459) (not b!4679728) (not d!1487359) (not b!4679871) (not d!1487463) (not b!4679804) (not b!4679896) (not b!4679874) (not d!1487445) (not bm!327069) (not b!4679912) (not d!1487377) (not d!1487387) (not b!4679759) (not bm!327059) (not b!4679739) (not b!4679936) (not b!4679911) (not b!4679892) (not b!4679887) (not bm!327062) (not bm!327063) (not d!1487373) (not b!4679736) (not d!1487473) (not b!4679918) (not bs!1082128) (not b!4679771) (not d!1487467) (not d!1487319) (not b!4679914) (not b!4679786) (not b!4679888) (not d!1487419) (not d!1487483) (not bm!327050) (not d!1487477) (not d!1487453) tp_is_empty!30455 (not b!4679873) (not b!4679735) (not b!4679886) (not bm!327064) (not b!4679909) (not d!1487465) (not d!1487425) (not bm!327049) (not b!4679766) (not d!1487409) (not d!1487401) (not d!1487421) (not d!1487447) (not b!4679893) (not d!1487365) (not b!4679908) (not b!4679732) (not d!1487487) (not b!4679916) (not b!4679899) (not b!4679869) (not b_lambda!176657) (not d!1487451) (not bm!327047) (not b!4679913) (not b!4679785) (not b!4679760))
(check-sat)
