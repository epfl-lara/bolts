; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473344 () Bool)

(assert start!473344)

(declare-fun b!4684466 () Bool)

(declare-fun res!1974870 () Bool)

(declare-fun e!2922577 () Bool)

(assert (=> b!4684466 (=> (not res!1974870) (not e!2922577))))

(declare-datatypes ((K!13705 0))(
  ( (K!13706 (val!19235 Int)) )
))
(declare-datatypes ((V!13951 0))(
  ( (V!13952 (val!19236 Int)) )
))
(declare-datatypes ((tuple2!53682 0))(
  ( (tuple2!53683 (_1!30135 K!13705) (_2!30135 V!13951)) )
))
(declare-datatypes ((List!52451 0))(
  ( (Nil!52327) (Cons!52327 (h!58554 tuple2!53682) (t!359613 List!52451)) )
))
(declare-fun oldBucket!34 () List!52451)

(declare-fun noDuplicateKeys!1822 (List!52451) Bool)

(assert (=> b!4684466 (= res!1974870 (noDuplicateKeys!1822 oldBucket!34))))

(declare-fun b!4684467 () Bool)

(declare-fun res!1974873 () Bool)

(declare-fun e!2922583 () Bool)

(assert (=> b!4684467 (=> res!1974873 e!2922583)))

(declare-datatypes ((tuple2!53684 0))(
  ( (tuple2!53685 (_1!30136 (_ BitVec 64)) (_2!30136 List!52451)) )
))
(declare-datatypes ((List!52452 0))(
  ( (Nil!52328) (Cons!52328 (h!58555 tuple2!53684) (t!359614 List!52452)) )
))
(declare-fun lt!1843851 () List!52452)

(declare-datatypes ((Hashable!6191 0))(
  ( (HashableExt!6190 (__x!31894 Int)) )
))
(declare-fun hashF!1323 () Hashable!6191)

(declare-datatypes ((ListLongMap!4063 0))(
  ( (ListLongMap!4064 (toList!5533 List!52452)) )
))
(declare-fun allKeysSameHashInMap!1736 (ListLongMap!4063 Hashable!6191) Bool)

(assert (=> b!4684467 (= res!1974873 (not (allKeysSameHashInMap!1736 (ListLongMap!4064 lt!1843851) hashF!1323)))))

(declare-fun tp!1345447 () Bool)

(declare-fun tp_is_empty!30581 () Bool)

(declare-fun tp_is_empty!30583 () Bool)

(declare-fun b!4684468 () Bool)

(declare-fun e!2922578 () Bool)

(assert (=> b!4684468 (= e!2922578 (and tp_is_empty!30581 tp_is_empty!30583 tp!1345447))))

(declare-fun b!4684469 () Bool)

(declare-fun e!2922581 () Bool)

(declare-fun e!2922579 () Bool)

(assert (=> b!4684469 (= e!2922581 e!2922579)))

(declare-fun res!1974859 () Bool)

(assert (=> b!4684469 (=> res!1974859 e!2922579)))

(declare-fun key!4653 () K!13705)

(declare-fun containsKey!2985 (List!52451 K!13705) Bool)

(assert (=> b!4684469 (= res!1974859 (not (containsKey!2985 (t!359613 oldBucket!34) key!4653)))))

(assert (=> b!4684469 (containsKey!2985 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123145 0))(
  ( (Unit!123146) )
))
(declare-fun lt!1843858 () Unit!123145)

(declare-fun lemmaGetPairDefinedThenContainsKey!174 (List!52451 K!13705 Hashable!6191) Unit!123145)

(assert (=> b!4684469 (= lt!1843858 (lemmaGetPairDefinedThenContainsKey!174 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1843850 () List!52451)

(declare-datatypes ((Option!12009 0))(
  ( (None!12008) (Some!12008 (v!46387 tuple2!53682)) )
))
(declare-fun isDefined!9264 (Option!12009) Bool)

(declare-fun getPair!426 (List!52451 K!13705) Option!12009)

(assert (=> b!4684469 (isDefined!9264 (getPair!426 lt!1843850 key!4653))))

(declare-fun lm!2023 () ListLongMap!4063)

(declare-fun lt!1843857 () Unit!123145)

(declare-fun lambda!205679 () Int)

(declare-fun lt!1843856 () tuple2!53684)

(declare-fun forallContained!3378 (List!52452 Int tuple2!53684) Unit!123145)

(assert (=> b!4684469 (= lt!1843857 (forallContained!3378 (toList!5533 lm!2023) lambda!205679 lt!1843856))))

(declare-fun contains!15476 (List!52452 tuple2!53684) Bool)

(assert (=> b!4684469 (contains!15476 (toList!5533 lm!2023) lt!1843856)))

(declare-fun lt!1843852 () (_ BitVec 64))

(assert (=> b!4684469 (= lt!1843856 (tuple2!53685 lt!1843852 lt!1843850))))

(declare-fun lt!1843854 () Unit!123145)

(declare-fun lemmaGetValueImpliesTupleContained!231 (ListLongMap!4063 (_ BitVec 64) List!52451) Unit!123145)

(assert (=> b!4684469 (= lt!1843854 (lemmaGetValueImpliesTupleContained!231 lm!2023 lt!1843852 lt!1843850))))

(declare-fun apply!12305 (ListLongMap!4063 (_ BitVec 64)) List!52451)

(assert (=> b!4684469 (= lt!1843850 (apply!12305 lm!2023 lt!1843852))))

(declare-fun contains!15477 (ListLongMap!4063 (_ BitVec 64)) Bool)

(assert (=> b!4684469 (contains!15477 lm!2023 lt!1843852)))

(declare-fun lt!1843860 () Unit!123145)

(declare-fun lemmaInGenMapThenLongMapContainsHash!632 (ListLongMap!4063 K!13705 Hashable!6191) Unit!123145)

(assert (=> b!4684469 (= lt!1843860 (lemmaInGenMapThenLongMapContainsHash!632 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1843853 () Unit!123145)

(declare-fun lemmaInGenMapThenGetPairDefined!222 (ListLongMap!4063 K!13705 Hashable!6191) Unit!123145)

(assert (=> b!4684469 (= lt!1843853 (lemmaInGenMapThenGetPairDefined!222 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4684470 () Bool)

(declare-fun res!1974864 () Bool)

(declare-fun e!2922574 () Bool)

(assert (=> b!4684470 (=> (not res!1974864) (not e!2922574))))

(get-info :version)

(assert (=> b!4684470 (= res!1974864 ((_ is Cons!52328) (toList!5533 lm!2023)))))

(declare-fun b!4684471 () Bool)

(declare-fun e!2922584 () Bool)

(declare-fun tp!1345448 () Bool)

(assert (=> b!4684471 (= e!2922584 tp!1345448)))

(declare-fun b!4684472 () Bool)

(declare-fun res!1974869 () Bool)

(assert (=> b!4684472 (=> (not res!1974869) (not e!2922577))))

(declare-fun newBucket!218 () List!52451)

(declare-fun removePairForKey!1417 (List!52451 K!13705) List!52451)

(assert (=> b!4684472 (= res!1974869 (= (removePairForKey!1417 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4684473 () Bool)

(declare-fun forall!11271 (List!52452 Int) Bool)

(assert (=> b!4684473 (= e!2922583 (forall!11271 lt!1843851 lambda!205679))))

(declare-fun b!4684474 () Bool)

(declare-fun res!1974876 () Bool)

(assert (=> b!4684474 (=> res!1974876 e!2922583)))

(declare-fun containsKeyBiggerList!324 (List!52452 K!13705) Bool)

(assert (=> b!4684474 (= res!1974876 (not (containsKeyBiggerList!324 lt!1843851 key!4653)))))

(declare-fun b!4684476 () Bool)

(declare-fun res!1974860 () Bool)

(assert (=> b!4684476 (=> (not res!1974860) (not e!2922574))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1648 (List!52451 (_ BitVec 64) Hashable!6191) Bool)

(assert (=> b!4684476 (= res!1974860 (allKeysSameHash!1648 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4684477 () Bool)

(declare-fun e!2922580 () Bool)

(assert (=> b!4684477 (= e!2922580 e!2922574)))

(declare-fun res!1974872 () Bool)

(assert (=> b!4684477 (=> (not res!1974872) (not e!2922574))))

(assert (=> b!4684477 (= res!1974872 (= lt!1843852 hash!405))))

(declare-fun hash!4015 (Hashable!6191 K!13705) (_ BitVec 64))

(assert (=> b!4684477 (= lt!1843852 (hash!4015 hashF!1323 key!4653))))

(declare-fun b!4684478 () Bool)

(declare-fun res!1974867 () Bool)

(assert (=> b!4684478 (=> (not res!1974867) (not e!2922574))))

(declare-fun head!9916 (List!52452) tuple2!53684)

(assert (=> b!4684478 (= res!1974867 (= (head!9916 (toList!5533 lm!2023)) (tuple2!53685 hash!405 oldBucket!34)))))

(declare-fun b!4684479 () Bool)

(assert (=> b!4684479 (= e!2922577 e!2922580)))

(declare-fun res!1974875 () Bool)

(assert (=> b!4684479 (=> (not res!1974875) (not e!2922580))))

(declare-datatypes ((ListMap!4897 0))(
  ( (ListMap!4898 (toList!5534 List!52451)) )
))
(declare-fun lt!1843859 () ListMap!4897)

(declare-fun contains!15478 (ListMap!4897 K!13705) Bool)

(assert (=> b!4684479 (= res!1974875 (contains!15478 lt!1843859 key!4653))))

(declare-fun extractMap!1848 (List!52452) ListMap!4897)

(assert (=> b!4684479 (= lt!1843859 (extractMap!1848 (toList!5533 lm!2023)))))

(declare-fun b!4684480 () Bool)

(declare-fun res!1974871 () Bool)

(declare-fun e!2922582 () Bool)

(assert (=> b!4684480 (=> res!1974871 e!2922582)))

(declare-fun lt!1843855 () List!52451)

(assert (=> b!4684480 (= res!1974871 (not (= (removePairForKey!1417 (t!359613 oldBucket!34) key!4653) lt!1843855)))))

(declare-fun tp!1345449 () Bool)

(declare-fun b!4684481 () Bool)

(declare-fun e!2922576 () Bool)

(assert (=> b!4684481 (= e!2922576 (and tp_is_empty!30581 tp_is_empty!30583 tp!1345449))))

(declare-fun b!4684482 () Bool)

(declare-fun res!1974862 () Bool)

(assert (=> b!4684482 (=> (not res!1974862) (not e!2922574))))

(assert (=> b!4684482 (= res!1974862 (allKeysSameHashInMap!1736 lm!2023 hashF!1323))))

(declare-fun b!4684483 () Bool)

(declare-fun res!1974861 () Bool)

(assert (=> b!4684483 (=> (not res!1974861) (not e!2922577))))

(assert (=> b!4684483 (= res!1974861 (noDuplicateKeys!1822 newBucket!218))))

(declare-fun b!4684484 () Bool)

(assert (=> b!4684484 (= e!2922574 (not e!2922581))))

(declare-fun res!1974877 () Bool)

(assert (=> b!4684484 (=> res!1974877 e!2922581)))

(assert (=> b!4684484 (= res!1974877 (or (and ((_ is Cons!52327) oldBucket!34) (= (_1!30135 (h!58554 oldBucket!34)) key!4653)) (not ((_ is Cons!52327) oldBucket!34)) (= (_1!30135 (h!58554 oldBucket!34)) key!4653)))))

(declare-fun e!2922575 () Bool)

(assert (=> b!4684484 e!2922575))

(declare-fun res!1974874 () Bool)

(assert (=> b!4684484 (=> (not res!1974874) (not e!2922575))))

(declare-fun tail!8508 (ListLongMap!4063) ListLongMap!4063)

(assert (=> b!4684484 (= res!1974874 (= (t!359614 (toList!5533 lm!2023)) (toList!5533 (tail!8508 lm!2023))))))

(declare-fun b!4684485 () Bool)

(assert (=> b!4684485 (= e!2922579 e!2922582)))

(declare-fun res!1974865 () Bool)

(assert (=> b!4684485 (=> res!1974865 e!2922582)))

(declare-fun tail!8509 (List!52451) List!52451)

(assert (=> b!4684485 (= res!1974865 (not (= (removePairForKey!1417 (tail!8509 oldBucket!34) key!4653) lt!1843855)))))

(assert (=> b!4684485 (= lt!1843855 (tail!8509 newBucket!218))))

(declare-fun b!4684475 () Bool)

(assert (=> b!4684475 (= e!2922582 e!2922583)))

(declare-fun res!1974866 () Bool)

(assert (=> b!4684475 (=> res!1974866 e!2922583)))

(assert (=> b!4684475 (= res!1974866 (not (forall!11271 lt!1843851 lambda!205679)))))

(assert (=> b!4684475 (= lt!1843851 (Cons!52328 (tuple2!53685 hash!405 (t!359613 oldBucket!34)) (t!359614 (toList!5533 lm!2023))))))

(declare-fun res!1974863 () Bool)

(assert (=> start!473344 (=> (not res!1974863) (not e!2922577))))

(assert (=> start!473344 (= res!1974863 (forall!11271 (toList!5533 lm!2023) lambda!205679))))

(assert (=> start!473344 e!2922577))

(declare-fun inv!67579 (ListLongMap!4063) Bool)

(assert (=> start!473344 (and (inv!67579 lm!2023) e!2922584)))

(assert (=> start!473344 tp_is_empty!30581))

(assert (=> start!473344 e!2922578))

(assert (=> start!473344 true))

(assert (=> start!473344 e!2922576))

(declare-fun b!4684486 () Bool)

(declare-fun res!1974868 () Bool)

(assert (=> b!4684486 (=> (not res!1974868) (not e!2922577))))

(assert (=> b!4684486 (= res!1974868 (allKeysSameHash!1648 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4684487 () Bool)

(declare-fun addToMapMapFromBucket!1254 (List!52451 ListMap!4897) ListMap!4897)

(assert (=> b!4684487 (= e!2922575 (= lt!1843859 (addToMapMapFromBucket!1254 (_2!30136 (h!58555 (toList!5533 lm!2023))) (extractMap!1848 (t!359614 (toList!5533 lm!2023))))))))

(assert (= (and start!473344 res!1974863) b!4684466))

(assert (= (and b!4684466 res!1974870) b!4684483))

(assert (= (and b!4684483 res!1974861) b!4684472))

(assert (= (and b!4684472 res!1974869) b!4684486))

(assert (= (and b!4684486 res!1974868) b!4684479))

(assert (= (and b!4684479 res!1974875) b!4684477))

(assert (= (and b!4684477 res!1974872) b!4684476))

(assert (= (and b!4684476 res!1974860) b!4684482))

(assert (= (and b!4684482 res!1974862) b!4684478))

(assert (= (and b!4684478 res!1974867) b!4684470))

(assert (= (and b!4684470 res!1974864) b!4684484))

(assert (= (and b!4684484 res!1974874) b!4684487))

(assert (= (and b!4684484 (not res!1974877)) b!4684469))

(assert (= (and b!4684469 (not res!1974859)) b!4684485))

(assert (= (and b!4684485 (not res!1974865)) b!4684480))

(assert (= (and b!4684480 (not res!1974871)) b!4684475))

(assert (= (and b!4684475 (not res!1974866)) b!4684467))

(assert (= (and b!4684467 (not res!1974873)) b!4684474))

(assert (= (and b!4684474 (not res!1974876)) b!4684473))

(assert (= start!473344 b!4684471))

(assert (= (and start!473344 ((_ is Cons!52327) oldBucket!34)) b!4684468))

(assert (= (and start!473344 ((_ is Cons!52327) newBucket!218)) b!4684481))

(declare-fun m!5583061 () Bool)

(assert (=> b!4684469 m!5583061))

(declare-fun m!5583063 () Bool)

(assert (=> b!4684469 m!5583063))

(declare-fun m!5583065 () Bool)

(assert (=> b!4684469 m!5583065))

(declare-fun m!5583067 () Bool)

(assert (=> b!4684469 m!5583067))

(declare-fun m!5583069 () Bool)

(assert (=> b!4684469 m!5583069))

(declare-fun m!5583071 () Bool)

(assert (=> b!4684469 m!5583071))

(declare-fun m!5583073 () Bool)

(assert (=> b!4684469 m!5583073))

(declare-fun m!5583075 () Bool)

(assert (=> b!4684469 m!5583075))

(declare-fun m!5583077 () Bool)

(assert (=> b!4684469 m!5583077))

(declare-fun m!5583079 () Bool)

(assert (=> b!4684469 m!5583079))

(declare-fun m!5583081 () Bool)

(assert (=> b!4684469 m!5583081))

(declare-fun m!5583083 () Bool)

(assert (=> b!4684469 m!5583083))

(assert (=> b!4684469 m!5583063))

(declare-fun m!5583085 () Bool)

(assert (=> b!4684483 m!5583085))

(declare-fun m!5583087 () Bool)

(assert (=> start!473344 m!5583087))

(declare-fun m!5583089 () Bool)

(assert (=> start!473344 m!5583089))

(declare-fun m!5583091 () Bool)

(assert (=> b!4684476 m!5583091))

(declare-fun m!5583093 () Bool)

(assert (=> b!4684478 m!5583093))

(declare-fun m!5583095 () Bool)

(assert (=> b!4684477 m!5583095))

(declare-fun m!5583097 () Bool)

(assert (=> b!4684482 m!5583097))

(declare-fun m!5583099 () Bool)

(assert (=> b!4684486 m!5583099))

(declare-fun m!5583101 () Bool)

(assert (=> b!4684467 m!5583101))

(declare-fun m!5583103 () Bool)

(assert (=> b!4684475 m!5583103))

(declare-fun m!5583105 () Bool)

(assert (=> b!4684484 m!5583105))

(declare-fun m!5583107 () Bool)

(assert (=> b!4684466 m!5583107))

(assert (=> b!4684473 m!5583103))

(declare-fun m!5583109 () Bool)

(assert (=> b!4684472 m!5583109))

(declare-fun m!5583111 () Bool)

(assert (=> b!4684487 m!5583111))

(assert (=> b!4684487 m!5583111))

(declare-fun m!5583113 () Bool)

(assert (=> b!4684487 m!5583113))

(declare-fun m!5583115 () Bool)

(assert (=> b!4684485 m!5583115))

(assert (=> b!4684485 m!5583115))

(declare-fun m!5583117 () Bool)

(assert (=> b!4684485 m!5583117))

(declare-fun m!5583119 () Bool)

(assert (=> b!4684485 m!5583119))

(declare-fun m!5583121 () Bool)

(assert (=> b!4684480 m!5583121))

(declare-fun m!5583123 () Bool)

(assert (=> b!4684479 m!5583123))

(declare-fun m!5583125 () Bool)

(assert (=> b!4684479 m!5583125))

(declare-fun m!5583127 () Bool)

(assert (=> b!4684474 m!5583127))

(check-sat (not b!4684471) (not b!4684478) (not b!4684472) (not b!4684479) tp_is_empty!30581 (not b!4684467) (not b!4684466) (not b!4684484) (not b!4684485) (not b!4684474) (not b!4684475) (not b!4684477) tp_is_empty!30583 (not b!4684476) (not b!4684486) (not b!4684487) (not start!473344) (not b!4684483) (not b!4684481) (not b!4684473) (not b!4684482) (not b!4684480) (not b!4684468) (not b!4684469))
(check-sat)
