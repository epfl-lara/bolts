; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489512 () Bool)

(assert start!489512)

(declare-fun b!4775721 () Bool)

(declare-fun e!2981400 () Bool)

(declare-fun e!2981399 () Bool)

(assert (=> b!4775721 (= e!2981400 (not e!2981399))))

(declare-fun res!2026600 () Bool)

(assert (=> b!4775721 (=> res!2026600 e!2981399)))

(declare-datatypes ((K!15407 0))(
  ( (K!15408 (val!20631 Int)) )
))
(declare-datatypes ((V!15653 0))(
  ( (V!15654 (val!20632 Int)) )
))
(declare-datatypes ((tuple2!56236 0))(
  ( (tuple2!56237 (_1!31412 K!15407) (_2!31412 V!15653)) )
))
(declare-datatypes ((Option!12856 0))(
  ( (None!12855) (Some!12855 (v!48016 tuple2!56236)) )
))
(declare-fun lt!1938816 () Option!12856)

(declare-fun v!11584 () V!15653)

(declare-fun get!18268 (Option!12856) tuple2!56236)

(assert (=> b!4775721 (= res!2026600 (not (= (_2!31412 (get!18268 lt!1938816)) v!11584)))))

(declare-fun isDefined!10000 (Option!12856) Bool)

(assert (=> b!4775721 (isDefined!10000 lt!1938816)))

(declare-datatypes ((List!53981 0))(
  ( (Nil!53857) (Cons!53857 (h!60271 tuple2!56236) (t!361431 List!53981)) )
))
(declare-fun lt!1938820 () List!53981)

(declare-fun key!6641 () K!15407)

(declare-fun getPair!755 (List!53981 K!15407) Option!12856)

(assert (=> b!4775721 (= lt!1938816 (getPair!755 lt!1938820 key!6641))))

(declare-datatypes ((tuple2!56238 0))(
  ( (tuple2!56239 (_1!31413 (_ BitVec 64)) (_2!31413 List!53981)) )
))
(declare-fun lt!1938818 () tuple2!56238)

(declare-fun lambda!226660 () Int)

(declare-datatypes ((Unit!138852 0))(
  ( (Unit!138853) )
))
(declare-fun lt!1938813 () Unit!138852)

(declare-datatypes ((List!53982 0))(
  ( (Nil!53858) (Cons!53858 (h!60272 tuple2!56238) (t!361432 List!53982)) )
))
(declare-datatypes ((ListLongMap!5035 0))(
  ( (ListLongMap!5036 (toList!6617 List!53982)) )
))
(declare-fun lm!2709 () ListLongMap!5035)

(declare-fun forallContained!3992 (List!53982 Int tuple2!56238) Unit!138852)

(assert (=> b!4775721 (= lt!1938813 (forallContained!3992 (toList!6617 lm!2709) lambda!226660 lt!1938818))))

(declare-fun lt!1938817 () Unit!138852)

(declare-datatypes ((Hashable!6767 0))(
  ( (HashableExt!6766 (__x!32790 Int)) )
))
(declare-fun hashF!1687 () Hashable!6767)

(declare-fun lemmaInGenMapThenGetPairDefined!529 (ListLongMap!5035 K!15407 Hashable!6767) Unit!138852)

(assert (=> b!4775721 (= lt!1938817 (lemmaInGenMapThenGetPairDefined!529 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938814 () Unit!138852)

(assert (=> b!4775721 (= lt!1938814 (forallContained!3992 (toList!6617 lm!2709) lambda!226660 lt!1938818))))

(declare-fun contains!17337 (List!53982 tuple2!56238) Bool)

(assert (=> b!4775721 (contains!17337 (toList!6617 lm!2709) lt!1938818)))

(declare-fun lt!1938815 () (_ BitVec 64))

(assert (=> b!4775721 (= lt!1938818 (tuple2!56239 lt!1938815 lt!1938820))))

(declare-fun lt!1938812 () Unit!138852)

(declare-fun lemmaGetValueImpliesTupleContained!558 (ListLongMap!5035 (_ BitVec 64) List!53981) Unit!138852)

(assert (=> b!4775721 (= lt!1938812 (lemmaGetValueImpliesTupleContained!558 lm!2709 lt!1938815 lt!1938820))))

(declare-fun apply!12830 (ListLongMap!5035 (_ BitVec 64)) List!53981)

(assert (=> b!4775721 (= lt!1938820 (apply!12830 lm!2709 lt!1938815))))

(declare-fun contains!17338 (ListLongMap!5035 (_ BitVec 64)) Bool)

(assert (=> b!4775721 (contains!17338 lm!2709 lt!1938815)))

(declare-fun hash!4739 (Hashable!6767 K!15407) (_ BitVec 64))

(assert (=> b!4775721 (= lt!1938815 (hash!4739 hashF!1687 key!6641))))

(declare-fun lt!1938821 () Unit!138852)

(declare-fun lemmaInGenMapThenLongMapContainsHash!971 (ListLongMap!5035 K!15407 Hashable!6767) Unit!138852)

(assert (=> b!4775721 (= lt!1938821 (lemmaInGenMapThenLongMapContainsHash!971 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6093 0))(
  ( (ListMap!6094 (toList!6618 List!53981)) )
))
(declare-fun contains!17339 (ListMap!6093 K!15407) Bool)

(declare-fun extractMap!2298 (List!53982) ListMap!6093)

(assert (=> b!4775721 (contains!17339 (extractMap!2298 (toList!6617 lm!2709)) key!6641)))

(declare-fun lt!1938819 () Unit!138852)

(declare-fun lemmaListContainsThenExtractedMapContains!619 (ListLongMap!5035 K!15407 Hashable!6767) Unit!138852)

(assert (=> b!4775721 (= lt!1938819 (lemmaListContainsThenExtractedMapContains!619 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775722 () Bool)

(declare-fun res!2026597 () Bool)

(assert (=> b!4775722 (=> res!2026597 e!2981399)))

(assert (=> b!4775722 (= res!2026597 (= (_1!31413 (h!60272 (toList!6617 lm!2709))) lt!1938815))))

(declare-fun b!4775723 () Bool)

(declare-fun res!2026599 () Bool)

(assert (=> b!4775723 (=> (not res!2026599) (not e!2981400))))

(declare-fun allKeysSameHashInMap!2172 (ListLongMap!5035 Hashable!6767) Bool)

(assert (=> b!4775723 (= res!2026599 (allKeysSameHashInMap!2172 lm!2709 hashF!1687))))

(declare-fun b!4775724 () Bool)

(declare-fun e!2981401 () Bool)

(declare-fun tp!1357095 () Bool)

(assert (=> b!4775724 (= e!2981401 tp!1357095)))

(declare-fun b!4775725 () Bool)

(declare-fun res!2026593 () Bool)

(assert (=> b!4775725 (=> res!2026593 e!2981399)))

(assert (=> b!4775725 (= res!2026593 (or (and (is-Cons!53858 (toList!6617 lm!2709)) (= (_1!31413 (h!60272 (toList!6617 lm!2709))) lt!1938815)) (not (is-Cons!53858 (toList!6617 lm!2709)))))))

(declare-fun b!4775726 () Bool)

(declare-fun res!2026598 () Bool)

(assert (=> b!4775726 (=> (not res!2026598) (not e!2981400))))

(declare-fun containsKeyBiggerList!423 (List!53982 K!15407) Bool)

(assert (=> b!4775726 (= res!2026598 (containsKeyBiggerList!423 (toList!6617 lm!2709) key!6641))))

(declare-fun b!4775727 () Bool)

(declare-fun res!2026596 () Bool)

(assert (=> b!4775727 (=> res!2026596 e!2981399)))

(declare-fun forall!12035 (List!53982 Int) Bool)

(assert (=> b!4775727 (= res!2026596 (not (forall!12035 (toList!6617 lm!2709) lambda!226660)))))

(declare-fun res!2026594 () Bool)

(assert (=> start!489512 (=> (not res!2026594) (not e!2981400))))

(assert (=> start!489512 (= res!2026594 (forall!12035 (toList!6617 lm!2709) lambda!226660))))

(assert (=> start!489512 e!2981400))

(declare-fun inv!69434 (ListLongMap!5035) Bool)

(assert (=> start!489512 (and (inv!69434 lm!2709) e!2981401)))

(assert (=> start!489512 true))

(declare-fun tp_is_empty!32997 () Bool)

(assert (=> start!489512 tp_is_empty!32997))

(declare-fun tp_is_empty!32999 () Bool)

(assert (=> start!489512 tp_is_empty!32999))

(declare-fun b!4775728 () Bool)

(assert (=> b!4775728 (= e!2981399 (forall!12035 (toList!6617 lm!2709) lambda!226660))))

(declare-fun b!4775729 () Bool)

(declare-fun res!2026595 () Bool)

(assert (=> b!4775729 (=> res!2026595 e!2981399)))

(assert (=> b!4775729 (= res!2026595 (not (contains!17338 lm!2709 (_1!31413 (h!60272 (toList!6617 lm!2709))))))))

(assert (= (and start!489512 res!2026594) b!4775723))

(assert (= (and b!4775723 res!2026599) b!4775726))

(assert (= (and b!4775726 res!2026598) b!4775721))

(assert (= (and b!4775721 (not res!2026600)) b!4775725))

(assert (= (and b!4775725 (not res!2026593)) b!4775727))

(assert (= (and b!4775727 (not res!2026596)) b!4775729))

(assert (= (and b!4775729 (not res!2026595)) b!4775722))

(assert (= (and b!4775722 (not res!2026597)) b!4775728))

(assert (= start!489512 b!4775724))

(declare-fun m!5750320 () Bool)

(assert (=> b!4775726 m!5750320))

(declare-fun m!5750322 () Bool)

(assert (=> b!4775721 m!5750322))

(declare-fun m!5750324 () Bool)

(assert (=> b!4775721 m!5750324))

(declare-fun m!5750326 () Bool)

(assert (=> b!4775721 m!5750326))

(declare-fun m!5750328 () Bool)

(assert (=> b!4775721 m!5750328))

(declare-fun m!5750330 () Bool)

(assert (=> b!4775721 m!5750330))

(declare-fun m!5750332 () Bool)

(assert (=> b!4775721 m!5750332))

(declare-fun m!5750334 () Bool)

(assert (=> b!4775721 m!5750334))

(declare-fun m!5750336 () Bool)

(assert (=> b!4775721 m!5750336))

(declare-fun m!5750338 () Bool)

(assert (=> b!4775721 m!5750338))

(declare-fun m!5750340 () Bool)

(assert (=> b!4775721 m!5750340))

(declare-fun m!5750342 () Bool)

(assert (=> b!4775721 m!5750342))

(assert (=> b!4775721 m!5750334))

(declare-fun m!5750344 () Bool)

(assert (=> b!4775721 m!5750344))

(assert (=> b!4775721 m!5750332))

(declare-fun m!5750346 () Bool)

(assert (=> b!4775721 m!5750346))

(declare-fun m!5750348 () Bool)

(assert (=> b!4775721 m!5750348))

(declare-fun m!5750350 () Bool)

(assert (=> b!4775727 m!5750350))

(declare-fun m!5750352 () Bool)

(assert (=> b!4775729 m!5750352))

(declare-fun m!5750354 () Bool)

(assert (=> b!4775723 m!5750354))

(assert (=> start!489512 m!5750350))

(declare-fun m!5750356 () Bool)

(assert (=> start!489512 m!5750356))

(assert (=> b!4775728 m!5750350))

(push 1)

(assert (not start!489512))

(assert (not b!4775728))

(assert (not b!4775727))

(assert tp_is_empty!32997)

(assert (not b!4775721))

(assert (not b!4775729))

(assert (not b!4775723))

(assert tp_is_empty!32999)

(assert (not b!4775726))

(assert (not b!4775724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

