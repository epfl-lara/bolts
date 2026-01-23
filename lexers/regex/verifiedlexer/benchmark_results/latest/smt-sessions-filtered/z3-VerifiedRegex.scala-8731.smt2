; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466116 () Bool)

(assert start!466116)

(declare-fun tp_is_empty!29551 () Bool)

(declare-fun b!4637526 () Bool)

(declare-fun tp_is_empty!29549 () Bool)

(declare-fun tp!1342630 () Bool)

(declare-fun e!2892971 () Bool)

(assert (=> b!4637526 (= e!2892971 (and tp_is_empty!29549 tp_is_empty!29551 tp!1342630))))

(declare-fun b!4637527 () Bool)

(declare-fun res!1946976 () Bool)

(declare-fun e!2892973 () Bool)

(assert (=> b!4637527 (=> (not res!1946976) (not e!2892973))))

(declare-datatypes ((Hashable!5961 0))(
  ( (HashableExt!5960 (__x!31664 Int)) )
))
(declare-fun hashF!1389 () Hashable!5961)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13060 0))(
  ( (K!13061 (val!18719 Int)) )
))
(declare-datatypes ((V!13306 0))(
  ( (V!13307 (val!18720 Int)) )
))
(declare-datatypes ((tuple2!52702 0))(
  ( (tuple2!52703 (_1!29645 K!13060) (_2!29645 V!13306)) )
))
(declare-datatypes ((List!51818 0))(
  ( (Nil!51694) (Cons!51694 (h!57788 tuple2!52702) (t!358892 List!51818)) )
))
(declare-fun newBucket!224 () List!51818)

(declare-fun allKeysSameHash!1418 (List!51818 (_ BitVec 64) Hashable!5961) Bool)

(assert (=> b!4637527 (= res!1946976 (allKeysSameHash!1418 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637528 () Bool)

(declare-fun e!2892972 () Bool)

(assert (=> b!4637528 (= e!2892973 (not e!2892972))))

(declare-fun res!1946983 () Bool)

(assert (=> b!4637528 (=> res!1946983 e!2892972)))

(declare-fun oldBucket!40 () List!51818)

(declare-fun key!4968 () K!13060)

(get-info :version)

(assert (=> b!4637528 (= res!1946983 (or (not ((_ is Cons!51694) oldBucket!40)) (not (= (_1!29645 (h!57788 oldBucket!40)) key!4968))))))

(declare-fun e!2892975 () Bool)

(assert (=> b!4637528 e!2892975))

(declare-fun res!1946981 () Bool)

(assert (=> b!4637528 (=> (not res!1946981) (not e!2892975))))

(declare-datatypes ((ListMap!4397 0))(
  ( (ListMap!4398 (toList!5080 List!51818)) )
))
(declare-fun lt!1800064 () ListMap!4397)

(declare-fun lt!1800065 () ListMap!4397)

(declare-fun addToMapMapFromBucket!1023 (List!51818 ListMap!4397) ListMap!4397)

(assert (=> b!4637528 (= res!1946981 (= lt!1800064 (addToMapMapFromBucket!1023 oldBucket!40 lt!1800065)))))

(declare-datatypes ((tuple2!52704 0))(
  ( (tuple2!52705 (_1!29646 (_ BitVec 64)) (_2!29646 List!51818)) )
))
(declare-datatypes ((List!51819 0))(
  ( (Nil!51695) (Cons!51695 (h!57789 tuple2!52704) (t!358893 List!51819)) )
))
(declare-fun extractMap!1620 (List!51819) ListMap!4397)

(assert (=> b!4637528 (= lt!1800065 (extractMap!1620 Nil!51695))))

(assert (=> b!4637528 true))

(declare-fun b!4637529 () Bool)

(declare-fun e!2892970 () Bool)

(assert (=> b!4637529 (= e!2892972 e!2892970)))

(declare-fun res!1946980 () Bool)

(assert (=> b!4637529 (=> res!1946980 e!2892970)))

(declare-fun lt!1800063 () List!51818)

(assert (=> b!4637529 (= res!1946980 (not (= lt!1800063 newBucket!224)))))

(declare-fun tail!8191 (List!51818) List!51818)

(assert (=> b!4637529 (= lt!1800063 (tail!8191 oldBucket!40))))

(declare-fun res!1946975 () Bool)

(declare-fun e!2892976 () Bool)

(assert (=> start!466116 (=> (not res!1946975) (not e!2892976))))

(declare-fun noDuplicateKeys!1564 (List!51818) Bool)

(assert (=> start!466116 (= res!1946975 (noDuplicateKeys!1564 oldBucket!40))))

(assert (=> start!466116 e!2892976))

(assert (=> start!466116 true))

(assert (=> start!466116 e!2892971))

(assert (=> start!466116 tp_is_empty!29549))

(declare-fun e!2892974 () Bool)

(assert (=> start!466116 e!2892974))

(declare-fun b!4637530 () Bool)

(declare-fun res!1946982 () Bool)

(assert (=> b!4637530 (=> (not res!1946982) (not e!2892976))))

(declare-fun removePairForKey!1187 (List!51818 K!13060) List!51818)

(assert (=> b!4637530 (= res!1946982 (= (removePairForKey!1187 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4637531 () Bool)

(assert (=> b!4637531 (= e!2892975 (= lt!1800065 (ListMap!4398 Nil!51694)))))

(declare-fun b!4637532 () Bool)

(declare-fun tp!1342631 () Bool)

(assert (=> b!4637532 (= e!2892974 (and tp_is_empty!29549 tp_is_empty!29551 tp!1342631))))

(declare-fun b!4637533 () Bool)

(declare-fun res!1946984 () Bool)

(assert (=> b!4637533 (=> res!1946984 e!2892970)))

(assert (=> b!4637533 (= res!1946984 (not (= (extractMap!1620 (Cons!51695 (tuple2!52705 hash!414 lt!1800063) Nil!51695)) (extractMap!1620 (Cons!51695 (tuple2!52705 hash!414 newBucket!224) Nil!51695)))))))

(declare-fun b!4637534 () Bool)

(declare-fun res!1946979 () Bool)

(assert (=> b!4637534 (=> (not res!1946979) (not e!2892973))))

(declare-fun hash!3642 (Hashable!5961 K!13060) (_ BitVec 64))

(assert (=> b!4637534 (= res!1946979 (= (hash!3642 hashF!1389 key!4968) hash!414))))

(declare-fun b!4637535 () Bool)

(assert (=> b!4637535 (= e!2892970 (= (addToMapMapFromBucket!1023 lt!1800063 (ListMap!4398 Nil!51694)) (addToMapMapFromBucket!1023 newBucket!224 (ListMap!4398 Nil!51694))))))

(declare-fun b!4637536 () Bool)

(declare-fun res!1946977 () Bool)

(assert (=> b!4637536 (=> (not res!1946977) (not e!2892976))))

(assert (=> b!4637536 (= res!1946977 (allKeysSameHash!1418 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637537 () Bool)

(declare-fun res!1946974 () Bool)

(assert (=> b!4637537 (=> (not res!1946974) (not e!2892976))))

(assert (=> b!4637537 (= res!1946974 (noDuplicateKeys!1564 newBucket!224))))

(declare-fun b!4637538 () Bool)

(assert (=> b!4637538 (= e!2892976 e!2892973)))

(declare-fun res!1946978 () Bool)

(assert (=> b!4637538 (=> (not res!1946978) (not e!2892973))))

(declare-fun contains!14811 (ListMap!4397 K!13060) Bool)

(assert (=> b!4637538 (= res!1946978 (contains!14811 lt!1800064 key!4968))))

(assert (=> b!4637538 (= lt!1800064 (extractMap!1620 (Cons!51695 (tuple2!52705 hash!414 oldBucket!40) Nil!51695)))))

(assert (= (and start!466116 res!1946975) b!4637537))

(assert (= (and b!4637537 res!1946974) b!4637530))

(assert (= (and b!4637530 res!1946982) b!4637536))

(assert (= (and b!4637536 res!1946977) b!4637538))

(assert (= (and b!4637538 res!1946978) b!4637534))

(assert (= (and b!4637534 res!1946979) b!4637527))

(assert (= (and b!4637527 res!1946976) b!4637528))

(assert (= (and b!4637528 res!1946981) b!4637531))

(assert (= (and b!4637528 (not res!1946983)) b!4637529))

(assert (= (and b!4637529 (not res!1946980)) b!4637533))

(assert (= (and b!4637533 (not res!1946984)) b!4637535))

(assert (= (and start!466116 ((_ is Cons!51694) oldBucket!40)) b!4637526))

(assert (= (and start!466116 ((_ is Cons!51694) newBucket!224)) b!4637532))

(declare-fun m!5495439 () Bool)

(assert (=> b!4637536 m!5495439))

(declare-fun m!5495441 () Bool)

(assert (=> b!4637530 m!5495441))

(declare-fun m!5495443 () Bool)

(assert (=> b!4637529 m!5495443))

(declare-fun m!5495445 () Bool)

(assert (=> b!4637533 m!5495445))

(declare-fun m!5495447 () Bool)

(assert (=> b!4637533 m!5495447))

(declare-fun m!5495449 () Bool)

(assert (=> b!4637537 m!5495449))

(declare-fun m!5495451 () Bool)

(assert (=> start!466116 m!5495451))

(declare-fun m!5495453 () Bool)

(assert (=> b!4637528 m!5495453))

(declare-fun m!5495455 () Bool)

(assert (=> b!4637528 m!5495455))

(declare-fun m!5495457 () Bool)

(assert (=> b!4637538 m!5495457))

(declare-fun m!5495459 () Bool)

(assert (=> b!4637538 m!5495459))

(declare-fun m!5495461 () Bool)

(assert (=> b!4637535 m!5495461))

(declare-fun m!5495463 () Bool)

(assert (=> b!4637535 m!5495463))

(declare-fun m!5495465 () Bool)

(assert (=> b!4637527 m!5495465))

(declare-fun m!5495467 () Bool)

(assert (=> b!4637534 m!5495467))

(check-sat (not start!466116) (not b!4637538) (not b!4637527) (not b!4637530) (not b!4637536) tp_is_empty!29549 (not b!4637532) (not b!4637529) tp_is_empty!29551 (not b!4637534) (not b!4637537) (not b!4637528) (not b!4637526) (not b!4637533) (not b!4637535))
(check-sat)
