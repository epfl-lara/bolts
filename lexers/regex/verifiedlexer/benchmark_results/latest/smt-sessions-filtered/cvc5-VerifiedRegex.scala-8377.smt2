; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436242 () Bool)

(assert start!436242)

(declare-fun b!4453674 () Bool)

(declare-fun res!1845834 () Bool)

(declare-fun e!2773352 () Bool)

(assert (=> b!4453674 (=> (not res!1845834) (not e!2773352))))

(declare-datatypes ((V!11534 0))(
  ( (V!11535 (val!17301 Int)) )
))
(declare-datatypes ((K!11288 0))(
  ( (K!11289 (val!17302 Int)) )
))
(declare-datatypes ((tuple2!49922 0))(
  ( (tuple2!49923 (_1!28255 K!11288) (_2!28255 V!11534)) )
))
(declare-datatypes ((List!50039 0))(
  ( (Nil!49915) (Cons!49915 (h!55660 tuple2!49922) (t!356989 List!50039)) )
))
(declare-datatypes ((tuple2!49924 0))(
  ( (tuple2!49925 (_1!28256 (_ BitVec 64)) (_2!28256 List!50039)) )
))
(declare-datatypes ((List!50040 0))(
  ( (Nil!49916) (Cons!49916 (h!55661 tuple2!49924) (t!356990 List!50040)) )
))
(declare-datatypes ((ListLongMap!2409 0))(
  ( (ListLongMap!2410 (toList!3755 List!50040)) )
))
(declare-fun lm!1837 () ListLongMap!2409)

(declare-datatypes ((Hashable!5280 0))(
  ( (HashableExt!5279 (__x!30983 Int)) )
))
(declare-fun hashF!1304 () Hashable!5280)

(declare-fun allKeysSameHashInMap!992 (ListLongMap!2409 Hashable!5280) Bool)

(assert (=> b!4453674 (= res!1845834 (allKeysSameHashInMap!992 lm!1837 hashF!1304))))

(declare-fun b!4453675 () Bool)

(declare-fun e!2773354 () Bool)

(assert (=> b!4453675 (= e!2773354 true)))

(declare-fun b!4453676 () Bool)

(declare-fun res!1845838 () Bool)

(assert (=> b!4453676 (=> res!1845838 e!2773354)))

(declare-fun lt!1645462 () ListLongMap!2409)

(assert (=> b!4453676 (= res!1845838 (not (allKeysSameHashInMap!992 lt!1645462 hashF!1304)))))

(declare-fun b!4453677 () Bool)

(declare-fun e!2773353 () Bool)

(assert (=> b!4453677 (= e!2773353 (not e!2773354))))

(declare-fun res!1845835 () Bool)

(assert (=> b!4453677 (=> res!1845835 e!2773354)))

(declare-fun lambda!159526 () Int)

(declare-fun forall!9782 (List!50040 Int) Bool)

(assert (=> b!4453677 (= res!1845835 (not (forall!9782 (toList!3755 lt!1645462) lambda!159526)))))

(declare-datatypes ((ListMap!2995 0))(
  ( (ListMap!2996 (toList!3756 List!50039)) )
))
(declare-fun lt!1645463 () ListMap!2995)

(declare-fun extractMap!943 (List!50040) ListMap!2995)

(declare-fun addToMapMapFromBucket!479 (List!50039 ListMap!2995) ListMap!2995)

(assert (=> b!4453677 (= (extractMap!943 (toList!3755 lm!1837)) (addToMapMapFromBucket!479 (_2!28256 (h!55661 (toList!3755 lm!1837))) lt!1645463))))

(declare-fun b!4453678 () Bool)

(declare-fun res!1845832 () Bool)

(assert (=> b!4453678 (=> (not res!1845832) (not e!2773353))))

(assert (=> b!4453678 (= res!1845832 (is-Cons!49916 (toList!3755 lm!1837)))))

(declare-fun b!4453679 () Bool)

(declare-fun e!2773351 () Bool)

(declare-fun tp!1334726 () Bool)

(assert (=> b!4453679 (= e!2773351 tp!1334726)))

(declare-fun res!1845837 () Bool)

(assert (=> start!436242 (=> (not res!1845837) (not e!2773352))))

(assert (=> start!436242 (= res!1845837 (forall!9782 (toList!3755 lm!1837) lambda!159526))))

(assert (=> start!436242 e!2773352))

(declare-fun inv!65475 (ListLongMap!2409) Bool)

(assert (=> start!436242 (and (inv!65475 lm!1837) e!2773351)))

(assert (=> start!436242 true))

(declare-fun tp_is_empty!26753 () Bool)

(assert (=> start!436242 tp_is_empty!26753))

(declare-fun b!4453680 () Bool)

(assert (=> b!4453680 (= e!2773352 e!2773353)))

(declare-fun res!1845839 () Bool)

(assert (=> b!4453680 (=> (not res!1845839) (not e!2773353))))

(declare-fun key!4369 () K!11288)

(declare-fun contains!12493 (ListMap!2995 K!11288) Bool)

(assert (=> b!4453680 (= res!1845839 (contains!12493 lt!1645463 key!4369))))

(assert (=> b!4453680 (= lt!1645463 (extractMap!943 (toList!3755 lt!1645462)))))

(declare-fun tail!7448 (ListLongMap!2409) ListLongMap!2409)

(assert (=> b!4453680 (= lt!1645462 (tail!7448 lm!1837))))

(declare-fun b!4453681 () Bool)

(declare-fun res!1845836 () Bool)

(assert (=> b!4453681 (=> (not res!1845836) (not e!2773352))))

(declare-fun isEmpty!28430 (List!50040) Bool)

(assert (=> b!4453681 (= res!1845836 (not (isEmpty!28430 (toList!3755 lm!1837))))))

(declare-fun b!4453682 () Bool)

(declare-fun res!1845833 () Bool)

(assert (=> b!4453682 (=> res!1845833 e!2773354)))

(declare-fun noDuplicateKeys!880 (List!50039) Bool)

(assert (=> b!4453682 (= res!1845833 (not (noDuplicateKeys!880 (_2!28256 (h!55661 (toList!3755 lm!1837))))))))

(assert (= (and start!436242 res!1845837) b!4453674))

(assert (= (and b!4453674 res!1845834) b!4453681))

(assert (= (and b!4453681 res!1845836) b!4453680))

(assert (= (and b!4453680 res!1845839) b!4453678))

(assert (= (and b!4453678 res!1845832) b!4453677))

(assert (= (and b!4453677 (not res!1845835)) b!4453676))

(assert (= (and b!4453676 (not res!1845838)) b!4453682))

(assert (= (and b!4453682 (not res!1845833)) b!4453675))

(assert (= start!436242 b!4453679))

(declare-fun m!5154423 () Bool)

(assert (=> b!4453680 m!5154423))

(declare-fun m!5154425 () Bool)

(assert (=> b!4453680 m!5154425))

(declare-fun m!5154427 () Bool)

(assert (=> b!4453680 m!5154427))

(declare-fun m!5154429 () Bool)

(assert (=> b!4453676 m!5154429))

(declare-fun m!5154431 () Bool)

(assert (=> start!436242 m!5154431))

(declare-fun m!5154433 () Bool)

(assert (=> start!436242 m!5154433))

(declare-fun m!5154435 () Bool)

(assert (=> b!4453682 m!5154435))

(declare-fun m!5154437 () Bool)

(assert (=> b!4453677 m!5154437))

(declare-fun m!5154439 () Bool)

(assert (=> b!4453677 m!5154439))

(declare-fun m!5154441 () Bool)

(assert (=> b!4453677 m!5154441))

(declare-fun m!5154443 () Bool)

(assert (=> b!4453674 m!5154443))

(declare-fun m!5154445 () Bool)

(assert (=> b!4453681 m!5154445))

(push 1)

(assert (not b!4453677))

(assert (not b!4453682))

(assert (not b!4453676))

(assert tp_is_empty!26753)

(assert (not b!4453679))

(assert (not b!4453680))

(assert (not b!4453674))

(assert (not b!4453681))

(assert (not start!436242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

