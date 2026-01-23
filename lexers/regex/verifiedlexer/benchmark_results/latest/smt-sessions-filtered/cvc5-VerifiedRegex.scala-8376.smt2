; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436238 () Bool)

(assert start!436238)

(declare-fun b!4453620 () Bool)

(declare-fun res!1845789 () Bool)

(declare-fun e!2773328 () Bool)

(assert (=> b!4453620 (=> (not res!1845789) (not e!2773328))))

(declare-datatypes ((V!11529 0))(
  ( (V!11530 (val!17297 Int)) )
))
(declare-datatypes ((K!11283 0))(
  ( (K!11284 (val!17298 Int)) )
))
(declare-datatypes ((tuple2!49914 0))(
  ( (tuple2!49915 (_1!28251 K!11283) (_2!28251 V!11529)) )
))
(declare-datatypes ((List!50035 0))(
  ( (Nil!49911) (Cons!49911 (h!55656 tuple2!49914) (t!356985 List!50035)) )
))
(declare-datatypes ((tuple2!49916 0))(
  ( (tuple2!49917 (_1!28252 (_ BitVec 64)) (_2!28252 List!50035)) )
))
(declare-datatypes ((List!50036 0))(
  ( (Nil!49912) (Cons!49912 (h!55657 tuple2!49916) (t!356986 List!50036)) )
))
(declare-datatypes ((ListLongMap!2405 0))(
  ( (ListLongMap!2406 (toList!3751 List!50036)) )
))
(declare-fun lm!1837 () ListLongMap!2405)

(declare-fun isEmpty!28428 (List!50036) Bool)

(assert (=> b!4453620 (= res!1845789 (not (isEmpty!28428 (toList!3751 lm!1837))))))

(declare-fun res!1845787 () Bool)

(assert (=> start!436238 (=> (not res!1845787) (not e!2773328))))

(declare-fun lambda!159514 () Int)

(declare-fun forall!9780 (List!50036 Int) Bool)

(assert (=> start!436238 (= res!1845787 (forall!9780 (toList!3751 lm!1837) lambda!159514))))

(assert (=> start!436238 e!2773328))

(declare-fun e!2773329 () Bool)

(declare-fun inv!65470 (ListLongMap!2405) Bool)

(assert (=> start!436238 (and (inv!65470 lm!1837) e!2773329)))

(assert (=> start!436238 true))

(declare-fun tp_is_empty!26749 () Bool)

(assert (=> start!436238 tp_is_empty!26749))

(declare-fun b!4453621 () Bool)

(declare-fun e!2773327 () Bool)

(declare-fun lt!1645451 () ListLongMap!2405)

(assert (=> b!4453621 (= e!2773327 (forall!9780 (toList!3751 lt!1645451) lambda!159514))))

(declare-fun b!4453622 () Bool)

(declare-fun res!1845784 () Bool)

(assert (=> b!4453622 (=> res!1845784 e!2773327)))

(declare-datatypes ((Hashable!5278 0))(
  ( (HashableExt!5277 (__x!30981 Int)) )
))
(declare-fun hashF!1304 () Hashable!5278)

(declare-fun allKeysSameHashInMap!990 (ListLongMap!2405 Hashable!5278) Bool)

(assert (=> b!4453622 (= res!1845784 (not (allKeysSameHashInMap!990 lt!1645451 hashF!1304)))))

(declare-fun b!4453623 () Bool)

(declare-fun res!1845791 () Bool)

(assert (=> b!4453623 (=> (not res!1845791) (not e!2773328))))

(assert (=> b!4453623 (= res!1845791 (allKeysSameHashInMap!990 lm!1837 hashF!1304))))

(declare-fun b!4453624 () Bool)

(declare-fun e!2773330 () Bool)

(assert (=> b!4453624 (= e!2773330 (not e!2773327))))

(declare-fun res!1845785 () Bool)

(assert (=> b!4453624 (=> res!1845785 e!2773327)))

(assert (=> b!4453624 (= res!1845785 (not (forall!9780 (toList!3751 lt!1645451) lambda!159514)))))

(declare-datatypes ((ListMap!2991 0))(
  ( (ListMap!2992 (toList!3752 List!50035)) )
))
(declare-fun lt!1645450 () ListMap!2991)

(declare-fun extractMap!941 (List!50036) ListMap!2991)

(declare-fun addToMapMapFromBucket!477 (List!50035 ListMap!2991) ListMap!2991)

(assert (=> b!4453624 (= (extractMap!941 (toList!3751 lm!1837)) (addToMapMapFromBucket!477 (_2!28252 (h!55657 (toList!3751 lm!1837))) lt!1645450))))

(declare-fun b!4453625 () Bool)

(declare-fun res!1845790 () Bool)

(assert (=> b!4453625 (=> res!1845790 e!2773327)))

(declare-fun noDuplicateKeys!878 (List!50035) Bool)

(assert (=> b!4453625 (= res!1845790 (not (noDuplicateKeys!878 (_2!28252 (h!55657 (toList!3751 lm!1837))))))))

(declare-fun b!4453626 () Bool)

(declare-fun tp!1334720 () Bool)

(assert (=> b!4453626 (= e!2773329 tp!1334720)))

(declare-fun b!4453627 () Bool)

(assert (=> b!4453627 (= e!2773328 e!2773330)))

(declare-fun res!1845786 () Bool)

(assert (=> b!4453627 (=> (not res!1845786) (not e!2773330))))

(declare-fun key!4369 () K!11283)

(declare-fun contains!12491 (ListMap!2991 K!11283) Bool)

(assert (=> b!4453627 (= res!1845786 (contains!12491 lt!1645450 key!4369))))

(assert (=> b!4453627 (= lt!1645450 (extractMap!941 (toList!3751 lt!1645451)))))

(declare-fun tail!7446 (ListLongMap!2405) ListLongMap!2405)

(assert (=> b!4453627 (= lt!1645451 (tail!7446 lm!1837))))

(declare-fun b!4453628 () Bool)

(declare-fun res!1845788 () Bool)

(assert (=> b!4453628 (=> (not res!1845788) (not e!2773330))))

(assert (=> b!4453628 (= res!1845788 (is-Cons!49912 (toList!3751 lm!1837)))))

(assert (= (and start!436238 res!1845787) b!4453623))

(assert (= (and b!4453623 res!1845791) b!4453620))

(assert (= (and b!4453620 res!1845789) b!4453627))

(assert (= (and b!4453627 res!1845786) b!4453628))

(assert (= (and b!4453628 res!1845788) b!4453624))

(assert (= (and b!4453624 (not res!1845785)) b!4453622))

(assert (= (and b!4453622 (not res!1845784)) b!4453625))

(assert (= (and b!4453625 (not res!1845790)) b!4453621))

(assert (= start!436238 b!4453626))

(declare-fun m!5154375 () Bool)

(assert (=> b!4453621 m!5154375))

(declare-fun m!5154377 () Bool)

(assert (=> b!4453622 m!5154377))

(declare-fun m!5154379 () Bool)

(assert (=> start!436238 m!5154379))

(declare-fun m!5154381 () Bool)

(assert (=> start!436238 m!5154381))

(declare-fun m!5154383 () Bool)

(assert (=> b!4453620 m!5154383))

(declare-fun m!5154385 () Bool)

(assert (=> b!4453625 m!5154385))

(assert (=> b!4453624 m!5154375))

(declare-fun m!5154387 () Bool)

(assert (=> b!4453624 m!5154387))

(declare-fun m!5154389 () Bool)

(assert (=> b!4453624 m!5154389))

(declare-fun m!5154391 () Bool)

(assert (=> b!4453627 m!5154391))

(declare-fun m!5154393 () Bool)

(assert (=> b!4453627 m!5154393))

(declare-fun m!5154395 () Bool)

(assert (=> b!4453627 m!5154395))

(declare-fun m!5154397 () Bool)

(assert (=> b!4453623 m!5154397))

(push 1)

(assert (not b!4453624))

(assert (not b!4453622))

(assert (not start!436238))

(assert (not b!4453627))

(assert (not b!4453625))

(assert (not b!4453626))

(assert tp_is_empty!26749)

(assert (not b!4453623))

(assert (not b!4453620))

(assert (not b!4453621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

