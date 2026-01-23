; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241842 () Bool)

(assert start!241842)

(declare-fun b!2479002 () Bool)

(declare-fun b_free!72121 () Bool)

(declare-fun b_next!72825 () Bool)

(assert (=> b!2479002 (= b_free!72121 (not b_next!72825))))

(declare-fun tp!793370 () Bool)

(declare-fun b_and!188359 () Bool)

(assert (=> b!2479002 (= tp!793370 b_and!188359)))

(declare-fun b!2478996 () Bool)

(declare-fun b_free!72123 () Bool)

(declare-fun b_next!72827 () Bool)

(assert (=> b!2478996 (= b_free!72123 (not b_next!72827))))

(declare-fun tp!793375 () Bool)

(declare-fun b_and!188361 () Bool)

(assert (=> b!2478996 (= tp!793375 b_and!188361)))

(declare-fun b!2478994 () Bool)

(declare-fun e!1573246 () Bool)

(declare-fun e!1573252 () Bool)

(assert (=> b!2478994 (= e!1573246 e!1573252)))

(declare-fun mapIsEmpty!15394 () Bool)

(declare-fun mapRes!15394 () Bool)

(assert (=> mapIsEmpty!15394 mapRes!15394))

(declare-fun b!2478995 () Bool)

(declare-fun e!1573253 () Bool)

(assert (=> b!2478995 (= e!1573253 true)))

(declare-fun e!1573247 () Bool)

(declare-fun e!1573251 () Bool)

(assert (=> b!2478996 (= e!1573247 (and e!1573251 tp!793375))))

(declare-fun b!2478997 () Bool)

(declare-fun e!1573249 () Bool)

(assert (=> b!2478997 (= e!1573249 e!1573253)))

(declare-fun res!1049300 () Bool)

(assert (=> b!2478997 (=> res!1049300 e!1573253)))

(declare-datatypes ((V!5577 0))(
  ( (V!5578 (val!8775 Int)) )
))
(declare-datatypes ((K!5375 0))(
  ( (K!5376 (val!8776 Int)) )
))
(declare-datatypes ((tuple2!28546 0))(
  ( (tuple2!28547 (_1!16814 K!5375) (_2!16814 V!5577)) )
))
(declare-datatypes ((List!29122 0))(
  ( (Nil!29022) (Cons!29022 (h!34424 tuple2!28546) (t!210771 List!29122)) )
))
(declare-datatypes ((tuple2!28548 0))(
  ( (tuple2!28549 (_1!16815 (_ BitVec 64)) (_2!16815 List!29122)) )
))
(declare-datatypes ((List!29123 0))(
  ( (Nil!29023) (Cons!29023 (h!34425 tuple2!28548) (t!210772 List!29123)) )
))
(declare-datatypes ((ListLongMap!455 0))(
  ( (ListLongMap!456 (toList!1510 List!29123)) )
))
(declare-fun lt!885989 () ListLongMap!455)

(declare-fun lambda!93614 () Int)

(declare-fun forall!5943 (List!29123 Int) Bool)

(assert (=> b!2478997 (= res!1049300 (not (forall!5943 (toList!1510 lt!885989) lambda!93614)))))

(declare-fun lt!885986 () List!29122)

(declare-fun lt!885982 () (_ BitVec 64))

(declare-datatypes ((Unit!42437 0))(
  ( (Unit!42438) )
))
(declare-datatypes ((Hashable!3226 0))(
  ( (HashableExt!3225 (__x!18854 Int)) )
))
(declare-datatypes ((array!11713 0))(
  ( (array!11714 (arr!5222 (Array (_ BitVec 32) List!29122)) (size!22641 (_ BitVec 32))) )
))
(declare-datatypes ((array!11715 0))(
  ( (array!11716 (arr!5223 (Array (_ BitVec 32) (_ BitVec 64))) (size!22642 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6632 0))(
  ( (LongMapFixedSize!6633 (defaultEntry!3690 Int) (mask!8463 (_ BitVec 32)) (extraKeys!3564 (_ BitVec 32)) (zeroValue!3574 List!29122) (minValue!3574 List!29122) (_size!6679 (_ BitVec 32)) (_keys!3613 array!11715) (_values!3596 array!11713) (_vacant!3377 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13081 0))(
  ( (Cell!13082 (v!31320 LongMapFixedSize!6632)) )
))
(declare-datatypes ((MutLongMap!3316 0))(
  ( (LongMap!3316 (underlying!6839 Cell!13081)) (MutLongMapExt!3315 (__x!18855 Int)) )
))
(declare-datatypes ((Cell!13083 0))(
  ( (Cell!13084 (v!31321 MutLongMap!3316)) )
))
(declare-datatypes ((MutableMap!3226 0))(
  ( (MutableMapExt!3225 (__x!18856 Int)) (HashMap!3226 (underlying!6840 Cell!13083) (hashF!5164 Hashable!3226) (_size!6680 (_ BitVec 32)) (defaultValue!3388 Int)) )
))
(declare-datatypes ((tuple2!28550 0))(
  ( (tuple2!28551 (_1!16816 Unit!42437) (_2!16816 MutableMap!3226)) )
))
(declare-fun lt!885979 () tuple2!28550)

(declare-fun allKeysSameHash!45 (List!29122 (_ BitVec 64) Hashable!3226) Bool)

(assert (=> b!2478997 (allKeysSameHash!45 lt!885986 lt!885982 (hashF!5164 (_2!16816 lt!885979)))))

(declare-fun key!2246 () K!5375)

(declare-fun lt!885984 () List!29122)

(declare-fun lt!885978 () Unit!42437)

(declare-fun lemmaRemovePairForKeyPreservesHash!39 (List!29122 K!5375 (_ BitVec 64) Hashable!3226) Unit!42437)

(assert (=> b!2478997 (= lt!885978 (lemmaRemovePairForKeyPreservesHash!39 lt!885984 key!2246 lt!885982 (hashF!5164 (_2!16816 lt!885979))))))

(assert (=> b!2478997 (allKeysSameHash!45 lt!885984 lt!885982 (hashF!5164 (_2!16816 lt!885979)))))

(declare-fun lt!885990 () Unit!42437)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!41 (List!29123 (_ BitVec 64) List!29122 Hashable!3226) Unit!42437)

(assert (=> b!2478997 (= lt!885990 (lemmaInLongMapAllKeySameHashThenForTuple!41 (toList!1510 lt!885989) lt!885982 lt!885984 (hashF!5164 (_2!16816 lt!885979))))))

(declare-fun b!2478998 () Bool)

(declare-fun e!1573244 () Bool)

(declare-fun tp!793374 () Bool)

(assert (=> b!2478998 (= e!1573244 (and tp!793374 mapRes!15394))))

(declare-fun condMapEmpty!15394 () Bool)

(declare-fun thiss!42540 () MutableMap!3226)

(declare-fun mapDefault!15394 () List!29122)

(assert (=> b!2478998 (= condMapEmpty!15394 (= (arr!5222 (_values!3596 (v!31320 (underlying!6839 (v!31321 (underlying!6840 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29122)) mapDefault!15394)))))

(declare-fun b!2478999 () Bool)

(declare-fun lt!885981 () MutLongMap!3316)

(get-info :version)

(assert (=> b!2478999 (= e!1573251 (and e!1573246 ((_ is LongMap!3316) lt!885981)))))

(assert (=> b!2478999 (= lt!885981 (v!31321 (underlying!6840 thiss!42540)))))

(declare-fun res!1049302 () Bool)

(declare-fun e!1573245 () Bool)

(assert (=> start!241842 (=> (not res!1049302) (not e!1573245))))

(assert (=> start!241842 (= res!1049302 ((_ is HashMap!3226) thiss!42540))))

(assert (=> start!241842 e!1573245))

(assert (=> start!241842 e!1573247))

(declare-fun tp_is_empty!12147 () Bool)

(assert (=> start!241842 tp_is_empty!12147))

(declare-fun mapNonEmpty!15394 () Bool)

(declare-fun tp!793371 () Bool)

(declare-fun tp!793376 () Bool)

(assert (=> mapNonEmpty!15394 (= mapRes!15394 (and tp!793371 tp!793376))))

(declare-fun mapKey!15394 () (_ BitVec 32))

(declare-fun mapValue!15394 () List!29122)

(declare-fun mapRest!15394 () (Array (_ BitVec 32) List!29122))

(assert (=> mapNonEmpty!15394 (= (arr!5222 (_values!3596 (v!31320 (underlying!6839 (v!31321 (underlying!6840 thiss!42540)))))) (store mapRest!15394 mapKey!15394 mapValue!15394))))

(declare-fun b!2479000 () Bool)

(declare-fun res!1049299 () Bool)

(assert (=> b!2479000 (=> res!1049299 e!1573253)))

(declare-fun allKeysSameHashInMap!139 (ListLongMap!455 Hashable!3226) Bool)

(assert (=> b!2479000 (= res!1049299 (not (allKeysSameHashInMap!139 lt!885989 (hashF!5164 (_2!16816 lt!885979)))))))

(declare-fun b!2479001 () Bool)

(declare-fun res!1049298 () Bool)

(assert (=> b!2479001 (=> (not res!1049298) (not e!1573245))))

(declare-fun valid!2526 (MutableMap!3226) Bool)

(assert (=> b!2479001 (= res!1049298 (valid!2526 thiss!42540))))

(declare-fun e!1573250 () Bool)

(declare-fun tp!793373 () Bool)

(declare-fun tp!793372 () Bool)

(declare-fun array_inv!3747 (array!11715) Bool)

(declare-fun array_inv!3748 (array!11713) Bool)

(assert (=> b!2479002 (= e!1573250 (and tp!793370 tp!793372 tp!793373 (array_inv!3747 (_keys!3613 (v!31320 (underlying!6839 (v!31321 (underlying!6840 thiss!42540)))))) (array_inv!3748 (_values!3596 (v!31320 (underlying!6839 (v!31321 (underlying!6840 thiss!42540)))))) e!1573244))))

(declare-fun b!2479003 () Bool)

(assert (=> b!2479003 (= e!1573245 (not e!1573249))))

(declare-fun res!1049301 () Bool)

(assert (=> b!2479003 (=> res!1049301 e!1573249)))

(declare-datatypes ((tuple2!28552 0))(
  ( (tuple2!28553 (_1!16817 Bool) (_2!16817 MutLongMap!3316)) )
))
(declare-fun lt!885983 () tuple2!28552)

(assert (=> b!2479003 (= res!1049301 (not (_1!16817 lt!885983)))))

(declare-fun noDuplicateKeys!57 (List!29122) Bool)

(assert (=> b!2479003 (noDuplicateKeys!57 lt!885986)))

(declare-fun lt!885980 () Unit!42437)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!43 (List!29122 K!5375) Unit!42437)

(assert (=> b!2479003 (= lt!885980 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!43 lt!885984 key!2246))))

(declare-fun lt!885987 () Cell!13083)

(declare-fun Unit!42439 () Unit!42437)

(declare-fun Unit!42440 () Unit!42437)

(assert (=> b!2479003 (= lt!885979 (ite (_1!16817 lt!885983) (tuple2!28551 Unit!42439 (HashMap!3226 lt!885987 (hashF!5164 thiss!42540) (bvsub (_size!6680 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3388 thiss!42540))) (tuple2!28551 Unit!42440 (HashMap!3226 lt!885987 (hashF!5164 thiss!42540) (_size!6680 thiss!42540) (defaultValue!3388 thiss!42540)))))))

(assert (=> b!2479003 (= lt!885987 (Cell!13084 (_2!16817 lt!885983)))))

(declare-fun update!160 (MutLongMap!3316 (_ BitVec 64) List!29122) tuple2!28552)

(assert (=> b!2479003 (= lt!885983 (update!160 (v!31321 (underlying!6840 thiss!42540)) lt!885982 lt!885986))))

(declare-fun removePairForKey!47 (List!29122 K!5375) List!29122)

(assert (=> b!2479003 (= lt!885986 (removePairForKey!47 lt!885984 key!2246))))

(declare-datatypes ((ListMap!995 0))(
  ( (ListMap!996 (toList!1511 List!29122)) )
))
(declare-fun lt!885988 () ListMap!995)

(declare-fun map!6105 (MutableMap!3226) ListMap!995)

(assert (=> b!2479003 (= lt!885988 (map!6105 thiss!42540))))

(declare-fun lt!885985 () Unit!42437)

(declare-fun forallContained!828 (List!29123 Int tuple2!28548) Unit!42437)

(assert (=> b!2479003 (= lt!885985 (forallContained!828 (toList!1510 lt!885989) lambda!93614 (tuple2!28549 lt!885982 lt!885984)))))

(declare-fun map!6106 (MutLongMap!3316) ListLongMap!455)

(assert (=> b!2479003 (= lt!885989 (map!6106 (v!31321 (underlying!6840 thiss!42540))))))

(declare-fun apply!6873 (MutLongMap!3316 (_ BitVec 64)) List!29122)

(assert (=> b!2479003 (= lt!885984 (apply!6873 (v!31321 (underlying!6840 thiss!42540)) lt!885982))))

(declare-fun hash!644 (Hashable!3226 K!5375) (_ BitVec 64))

(assert (=> b!2479003 (= lt!885982 (hash!644 (hashF!5164 thiss!42540) key!2246))))

(declare-fun b!2479004 () Bool)

(declare-fun res!1049297 () Bool)

(assert (=> b!2479004 (=> (not res!1049297) (not e!1573245))))

(declare-fun contains!5018 (MutableMap!3226 K!5375) Bool)

(assert (=> b!2479004 (= res!1049297 (contains!5018 thiss!42540 key!2246))))

(declare-fun b!2479005 () Bool)

(assert (=> b!2479005 (= e!1573252 e!1573250)))

(assert (= (and start!241842 res!1049302) b!2479001))

(assert (= (and b!2479001 res!1049298) b!2479004))

(assert (= (and b!2479004 res!1049297) b!2479003))

(assert (= (and b!2479003 (not res!1049301)) b!2478997))

(assert (= (and b!2478997 (not res!1049300)) b!2479000))

(assert (= (and b!2479000 (not res!1049299)) b!2478995))

(assert (= (and b!2478998 condMapEmpty!15394) mapIsEmpty!15394))

(assert (= (and b!2478998 (not condMapEmpty!15394)) mapNonEmpty!15394))

(assert (= b!2479002 b!2478998))

(assert (= b!2479005 b!2479002))

(assert (= b!2478994 b!2479005))

(assert (= (and b!2478999 ((_ is LongMap!3316) (v!31321 (underlying!6840 thiss!42540)))) b!2478994))

(assert (= b!2478996 b!2478999))

(assert (= (and start!241842 ((_ is HashMap!3226) thiss!42540)) b!2478996))

(declare-fun m!2846617 () Bool)

(assert (=> b!2479004 m!2846617))

(declare-fun m!2846619 () Bool)

(assert (=> b!2479001 m!2846619))

(declare-fun m!2846621 () Bool)

(assert (=> b!2478997 m!2846621))

(declare-fun m!2846623 () Bool)

(assert (=> b!2478997 m!2846623))

(declare-fun m!2846625 () Bool)

(assert (=> b!2478997 m!2846625))

(declare-fun m!2846627 () Bool)

(assert (=> b!2478997 m!2846627))

(declare-fun m!2846629 () Bool)

(assert (=> b!2478997 m!2846629))

(declare-fun m!2846631 () Bool)

(assert (=> b!2479000 m!2846631))

(declare-fun m!2846633 () Bool)

(assert (=> b!2479002 m!2846633))

(declare-fun m!2846635 () Bool)

(assert (=> b!2479002 m!2846635))

(declare-fun m!2846637 () Bool)

(assert (=> b!2479003 m!2846637))

(declare-fun m!2846639 () Bool)

(assert (=> b!2479003 m!2846639))

(declare-fun m!2846641 () Bool)

(assert (=> b!2479003 m!2846641))

(declare-fun m!2846643 () Bool)

(assert (=> b!2479003 m!2846643))

(declare-fun m!2846645 () Bool)

(assert (=> b!2479003 m!2846645))

(declare-fun m!2846647 () Bool)

(assert (=> b!2479003 m!2846647))

(declare-fun m!2846649 () Bool)

(assert (=> b!2479003 m!2846649))

(declare-fun m!2846651 () Bool)

(assert (=> b!2479003 m!2846651))

(declare-fun m!2846653 () Bool)

(assert (=> b!2479003 m!2846653))

(declare-fun m!2846655 () Bool)

(assert (=> mapNonEmpty!15394 m!2846655))

(check-sat (not b_next!72827) (not b!2478998) (not b!2479000) (not b!2478997) (not b!2479004) tp_is_empty!12147 (not b!2479001) (not b_next!72825) (not b!2479002) (not mapNonEmpty!15394) b_and!188359 (not b!2479003) b_and!188361)
(check-sat b_and!188361 b_and!188359 (not b_next!72825) (not b_next!72827))
