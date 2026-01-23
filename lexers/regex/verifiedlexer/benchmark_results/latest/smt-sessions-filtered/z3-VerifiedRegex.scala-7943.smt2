; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413200 () Bool)

(assert start!413200)

(declare-fun b!4302838 () Bool)

(declare-fun b_free!128227 () Bool)

(declare-fun b_next!128931 () Bool)

(assert (=> b!4302838 (= b_free!128227 (not b_next!128931))))

(declare-fun tp!1322225 () Bool)

(declare-fun b_and!339613 () Bool)

(assert (=> b!4302838 (= tp!1322225 b_and!339613)))

(declare-fun b!4302837 () Bool)

(declare-fun b_free!128229 () Bool)

(declare-fun b_next!128933 () Bool)

(assert (=> b!4302837 (= b_free!128229 (not b_next!128933))))

(declare-fun tp!1322227 () Bool)

(declare-fun b_and!339615 () Bool)

(assert (=> b!4302837 (= tp!1322227 b_and!339615)))

(declare-fun b!4302833 () Bool)

(declare-fun e!2675015 () Bool)

(declare-fun e!2675014 () Bool)

(assert (=> b!4302833 (= e!2675015 e!2675014)))

(declare-fun b!4302834 () Bool)

(declare-fun e!2675007 () Bool)

(assert (=> b!4302834 (= e!2675007 (not true))))

(declare-datatypes ((V!9366 0))(
  ( (V!9367 (val!15589 Int)) )
))
(declare-datatypes ((K!9164 0))(
  ( (K!9165 (val!15590 Int)) )
))
(declare-datatypes ((tuple2!46114 0))(
  ( (tuple2!46115 (_1!26336 K!9164) (_2!26336 V!9366)) )
))
(declare-datatypes ((List!48142 0))(
  ( (Nil!48018) (Cons!48018 (h!53439 tuple2!46114) (t!354913 List!48142)) )
))
(declare-datatypes ((tuple2!46116 0))(
  ( (tuple2!46117 (_1!26337 (_ BitVec 64)) (_2!26337 List!48142)) )
))
(declare-datatypes ((List!48143 0))(
  ( (Nil!48019) (Cons!48019 (h!53440 tuple2!46116) (t!354914 List!48143)) )
))
(declare-datatypes ((ListLongMap!863 0))(
  ( (ListLongMap!864 (toList!2255 List!48143)) )
))
(declare-fun lt!1524383 () ListLongMap!863)

(declare-fun lt!1524385 () ListLongMap!863)

(declare-fun lt!1524388 () tuple2!46114)

(declare-datatypes ((ListMap!1541 0))(
  ( (ListMap!1542 (toList!2256 List!48142)) )
))
(declare-fun eq!108 (ListMap!1541 ListMap!1541) Bool)

(declare-fun extractMap!284 (List!48143) ListMap!1541)

(declare-fun +!193 (ListMap!1541 tuple2!46114) ListMap!1541)

(assert (=> b!4302834 (eq!108 (extractMap!284 (toList!2255 lt!1524383)) (+!193 (extractMap!284 (toList!2255 lt!1524385)) lt!1524388))))

(declare-fun lt!1524390 () List!48142)

(declare-fun lt!1524381 () (_ BitVec 64))

(declare-datatypes ((Unit!66999 0))(
  ( (Unit!67000) )
))
(declare-fun lt!1524391 () Unit!66999)

(declare-fun v!9179 () V!9366)

(declare-fun key!2048 () K!9164)

(declare-datatypes ((array!16392 0))(
  ( (array!16393 (arr!7319 (Array (_ BitVec 32) (_ BitVec 64))) (size!35358 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4483 0))(
  ( (HashableExt!4482 (__x!29726 Int)) )
))
(declare-datatypes ((array!16394 0))(
  ( (array!16395 (arr!7320 (Array (_ BitVec 32) List!48142)) (size!35359 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9134 0))(
  ( (LongMapFixedSize!9135 (defaultEntry!4952 Int) (mask!13079 (_ BitVec 32)) (extraKeys!4816 (_ BitVec 32)) (zeroValue!4826 List!48142) (minValue!4826 List!48142) (_size!9177 (_ BitVec 32)) (_keys!4867 array!16392) (_values!4848 array!16394) (_vacant!4628 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18077 0))(
  ( (Cell!18078 (v!42022 LongMapFixedSize!9134)) )
))
(declare-datatypes ((MutLongMap!4567 0))(
  ( (LongMap!4567 (underlying!9363 Cell!18077)) (MutLongMapExt!4566 (__x!29727 Int)) )
))
(declare-datatypes ((Cell!18079 0))(
  ( (Cell!18080 (v!42023 MutLongMap!4567)) )
))
(declare-datatypes ((MutableMap!4473 0))(
  ( (MutableMapExt!4472 (__x!29728 Int)) (HashMap!4473 (underlying!9364 Cell!18079) (hashF!6521 Hashable!4483) (_size!9178 (_ BitVec 32)) (defaultValue!4644 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4473)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!40 (ListLongMap!863 (_ BitVec 64) List!48142 K!9164 V!9366 Hashable!4483) Unit!66999)

(assert (=> b!4302834 (= lt!1524391 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!40 lt!1524385 lt!1524381 lt!1524390 key!2048 v!9179 (hashF!6521 thiss!42308)))))

(declare-fun e!2675013 () Bool)

(assert (=> b!4302834 e!2675013))

(declare-fun res!1763573 () Bool)

(assert (=> b!4302834 (=> (not res!1763573) (not e!2675013))))

(declare-fun lambda!132167 () Int)

(declare-fun forall!8662 (List!48143 Int) Bool)

(assert (=> b!4302834 (= res!1763573 (forall!8662 (toList!2255 lt!1524383) lambda!132167))))

(declare-fun +!194 (ListLongMap!863 tuple2!46116) ListLongMap!863)

(assert (=> b!4302834 (= lt!1524383 (+!194 lt!1524385 (tuple2!46117 lt!1524381 lt!1524390)))))

(declare-fun lt!1524392 () Unit!66999)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!111 (ListLongMap!863 (_ BitVec 64) List!48142 Hashable!4483) Unit!66999)

(assert (=> b!4302834 (= lt!1524392 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!111 lt!1524385 lt!1524381 lt!1524390 (hashF!6521 thiss!42308)))))

(declare-fun e!2675009 () Bool)

(assert (=> b!4302834 e!2675009))

(declare-fun res!1763569 () Bool)

(assert (=> b!4302834 (=> (not res!1763569) (not e!2675009))))

(declare-fun lt!1524386 () List!48142)

(declare-fun noDuplicateKeys!170 (List!48142) Bool)

(assert (=> b!4302834 (= res!1763569 (noDuplicateKeys!170 lt!1524386))))

(declare-fun lt!1524382 () Unit!66999)

(declare-fun lt!1524393 () List!48142)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!143 (List!48142 K!9164) Unit!66999)

(assert (=> b!4302834 (= lt!1524382 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!143 lt!1524393 key!2048))))

(declare-fun allKeysSameHash!140 (List!48142 (_ BitVec 64) Hashable!4483) Bool)

(assert (=> b!4302834 (allKeysSameHash!140 lt!1524386 lt!1524381 (hashF!6521 thiss!42308))))

(declare-fun lt!1524380 () Unit!66999)

(declare-fun lemmaRemovePairForKeyPreservesHash!126 (List!48142 K!9164 (_ BitVec 64) Hashable!4483) Unit!66999)

(assert (=> b!4302834 (= lt!1524380 (lemmaRemovePairForKeyPreservesHash!126 lt!1524393 key!2048 lt!1524381 (hashF!6521 thiss!42308)))))

(assert (=> b!4302834 (allKeysSameHash!140 lt!1524393 lt!1524381 (hashF!6521 thiss!42308))))

(declare-fun lt!1524384 () Unit!66999)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!131 (List!48143 (_ BitVec 64) List!48142 Hashable!4483) Unit!66999)

(assert (=> b!4302834 (= lt!1524384 (lemmaInLongMapAllKeySameHashThenForTuple!131 (toList!2255 lt!1524385) lt!1524381 lt!1524393 (hashF!6521 thiss!42308)))))

(declare-fun mapIsEmpty!20476 () Bool)

(declare-fun mapRes!20476 () Bool)

(assert (=> mapIsEmpty!20476 mapRes!20476))

(declare-fun b!4302835 () Bool)

(declare-fun e!2675010 () Bool)

(declare-fun e!2675011 () Bool)

(assert (=> b!4302835 (= e!2675010 e!2675011)))

(declare-fun res!1763572 () Bool)

(assert (=> b!4302835 (=> (not res!1763572) (not e!2675011))))

(declare-fun contains!9941 (MutableMap!4473 K!9164) Bool)

(assert (=> b!4302835 (= res!1763572 (contains!9941 thiss!42308 key!2048))))

(declare-fun map!9982 (MutLongMap!4567) ListLongMap!863)

(assert (=> b!4302835 (= lt!1524385 (map!9982 (v!42023 (underlying!9364 thiss!42308))))))

(declare-fun lt!1524389 () ListMap!1541)

(declare-fun map!9983 (MutableMap!4473) ListMap!1541)

(assert (=> b!4302835 (= lt!1524389 (map!9983 thiss!42308))))

(declare-fun e!2675008 () Bool)

(declare-fun e!2675017 () Bool)

(assert (=> b!4302837 (= e!2675008 (and e!2675017 tp!1322227))))

(declare-fun tp!1322229 () Bool)

(declare-fun tp!1322226 () Bool)

(declare-fun e!2675012 () Bool)

(declare-fun array_inv!5249 (array!16392) Bool)

(declare-fun array_inv!5250 (array!16394) Bool)

(assert (=> b!4302838 (= e!2675014 (and tp!1322225 tp!1322226 tp!1322229 (array_inv!5249 (_keys!4867 (v!42022 (underlying!9363 (v!42023 (underlying!9364 thiss!42308)))))) (array_inv!5250 (_values!4848 (v!42022 (underlying!9363 (v!42023 (underlying!9364 thiss!42308)))))) e!2675012))))

(declare-fun b!4302839 () Bool)

(declare-fun e!2675016 () Bool)

(assert (=> b!4302839 (= e!2675016 e!2675015)))

(declare-fun mapNonEmpty!20476 () Bool)

(declare-fun tp!1322228 () Bool)

(declare-fun tp!1322231 () Bool)

(assert (=> mapNonEmpty!20476 (= mapRes!20476 (and tp!1322228 tp!1322231))))

(declare-fun mapKey!20476 () (_ BitVec 32))

(declare-fun mapRest!20476 () (Array (_ BitVec 32) List!48142))

(declare-fun mapValue!20476 () List!48142)

(assert (=> mapNonEmpty!20476 (= (arr!7320 (_values!4848 (v!42022 (underlying!9363 (v!42023 (underlying!9364 thiss!42308)))))) (store mapRest!20476 mapKey!20476 mapValue!20476))))

(declare-fun b!4302840 () Bool)

(assert (=> b!4302840 (= e!2675009 (noDuplicateKeys!170 lt!1524390))))

(declare-fun b!4302841 () Bool)

(declare-fun tp!1322230 () Bool)

(assert (=> b!4302841 (= e!2675012 (and tp!1322230 mapRes!20476))))

(declare-fun condMapEmpty!20476 () Bool)

(declare-fun mapDefault!20476 () List!48142)

(assert (=> b!4302841 (= condMapEmpty!20476 (= (arr!7320 (_values!4848 (v!42022 (underlying!9363 (v!42023 (underlying!9364 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48142)) mapDefault!20476)))))

(declare-fun b!4302842 () Bool)

(assert (=> b!4302842 (= e!2675011 e!2675007)))

(declare-fun res!1763570 () Bool)

(assert (=> b!4302842 (=> (not res!1763570) (not e!2675007))))

(declare-datatypes ((tuple2!46118 0))(
  ( (tuple2!46119 (_1!26338 Bool) (_2!26338 MutLongMap!4567)) )
))
(declare-fun update!362 (MutLongMap!4567 (_ BitVec 64) List!48142) tuple2!46118)

(assert (=> b!4302842 (= res!1763570 (_1!26338 (update!362 (v!42023 (underlying!9364 thiss!42308)) lt!1524381 lt!1524390)))))

(assert (=> b!4302842 (= lt!1524390 (Cons!48018 lt!1524388 lt!1524386))))

(declare-fun removePairForKey!164 (List!48142 K!9164) List!48142)

(assert (=> b!4302842 (= lt!1524386 (removePairForKey!164 lt!1524393 key!2048))))

(assert (=> b!4302842 (= lt!1524388 (tuple2!46115 key!2048 v!9179))))

(declare-fun apply!10914 (MutLongMap!4567 (_ BitVec 64)) List!48142)

(assert (=> b!4302842 (= lt!1524393 (apply!10914 (v!42023 (underlying!9364 thiss!42308)) lt!1524381))))

(declare-fun hash!870 (Hashable!4483 K!9164) (_ BitVec 64))

(assert (=> b!4302842 (= lt!1524381 (hash!870 (hashF!6521 thiss!42308) key!2048))))

(declare-fun b!4302843 () Bool)

(declare-fun res!1763571 () Bool)

(assert (=> b!4302843 (=> (not res!1763571) (not e!2675009))))

(declare-fun containsKey!257 (List!48142 K!9164) Bool)

(assert (=> b!4302843 (= res!1763571 (not (containsKey!257 lt!1524386 key!2048)))))

(declare-fun b!4302836 () Bool)

(declare-fun res!1763568 () Bool)

(assert (=> b!4302836 (=> (not res!1763568) (not e!2675010))))

(declare-fun valid!3549 (MutableMap!4473) Bool)

(assert (=> b!4302836 (= res!1763568 (valid!3549 thiss!42308))))

(declare-fun res!1763567 () Bool)

(assert (=> start!413200 (=> (not res!1763567) (not e!2675010))))

(get-info :version)

(assert (=> start!413200 (= res!1763567 ((_ is HashMap!4473) thiss!42308))))

(assert (=> start!413200 e!2675010))

(assert (=> start!413200 e!2675008))

(declare-fun tp_is_empty!23407 () Bool)

(assert (=> start!413200 tp_is_empty!23407))

(declare-fun tp_is_empty!23409 () Bool)

(assert (=> start!413200 tp_is_empty!23409))

(declare-fun b!4302844 () Bool)

(declare-fun lt!1524387 () MutLongMap!4567)

(assert (=> b!4302844 (= e!2675017 (and e!2675016 ((_ is LongMap!4567) lt!1524387)))))

(assert (=> b!4302844 (= lt!1524387 (v!42023 (underlying!9364 thiss!42308)))))

(declare-fun b!4302845 () Bool)

(declare-fun allKeysSameHashInMap!289 (ListLongMap!863 Hashable!4483) Bool)

(assert (=> b!4302845 (= e!2675013 (allKeysSameHashInMap!289 lt!1524383 (hashF!6521 thiss!42308)))))

(assert (= (and start!413200 res!1763567) b!4302836))

(assert (= (and b!4302836 res!1763568) b!4302835))

(assert (= (and b!4302835 res!1763572) b!4302842))

(assert (= (and b!4302842 res!1763570) b!4302834))

(assert (= (and b!4302834 res!1763569) b!4302843))

(assert (= (and b!4302843 res!1763571) b!4302840))

(assert (= (and b!4302834 res!1763573) b!4302845))

(assert (= (and b!4302841 condMapEmpty!20476) mapIsEmpty!20476))

(assert (= (and b!4302841 (not condMapEmpty!20476)) mapNonEmpty!20476))

(assert (= b!4302838 b!4302841))

(assert (= b!4302833 b!4302838))

(assert (= b!4302839 b!4302833))

(assert (= (and b!4302844 ((_ is LongMap!4567) (v!42023 (underlying!9364 thiss!42308)))) b!4302839))

(assert (= b!4302837 b!4302844))

(assert (= (and start!413200 ((_ is HashMap!4473) thiss!42308)) b!4302837))

(declare-fun m!4894999 () Bool)

(assert (=> b!4302836 m!4894999))

(declare-fun m!4895001 () Bool)

(assert (=> b!4302840 m!4895001))

(declare-fun m!4895003 () Bool)

(assert (=> b!4302838 m!4895003))

(declare-fun m!4895005 () Bool)

(assert (=> b!4302838 m!4895005))

(declare-fun m!4895007 () Bool)

(assert (=> mapNonEmpty!20476 m!4895007))

(declare-fun m!4895009 () Bool)

(assert (=> b!4302845 m!4895009))

(declare-fun m!4895011 () Bool)

(assert (=> b!4302842 m!4895011))

(declare-fun m!4895013 () Bool)

(assert (=> b!4302842 m!4895013))

(declare-fun m!4895015 () Bool)

(assert (=> b!4302842 m!4895015))

(declare-fun m!4895017 () Bool)

(assert (=> b!4302842 m!4895017))

(declare-fun m!4895019 () Bool)

(assert (=> b!4302834 m!4895019))

(declare-fun m!4895021 () Bool)

(assert (=> b!4302834 m!4895021))

(declare-fun m!4895023 () Bool)

(assert (=> b!4302834 m!4895023))

(declare-fun m!4895025 () Bool)

(assert (=> b!4302834 m!4895025))

(declare-fun m!4895027 () Bool)

(assert (=> b!4302834 m!4895027))

(declare-fun m!4895029 () Bool)

(assert (=> b!4302834 m!4895029))

(declare-fun m!4895031 () Bool)

(assert (=> b!4302834 m!4895031))

(declare-fun m!4895033 () Bool)

(assert (=> b!4302834 m!4895033))

(declare-fun m!4895035 () Bool)

(assert (=> b!4302834 m!4895035))

(declare-fun m!4895037 () Bool)

(assert (=> b!4302834 m!4895037))

(declare-fun m!4895039 () Bool)

(assert (=> b!4302834 m!4895039))

(assert (=> b!4302834 m!4895021))

(assert (=> b!4302834 m!4895025))

(declare-fun m!4895041 () Bool)

(assert (=> b!4302834 m!4895041))

(assert (=> b!4302834 m!4895023))

(declare-fun m!4895043 () Bool)

(assert (=> b!4302834 m!4895043))

(declare-fun m!4895045 () Bool)

(assert (=> b!4302834 m!4895045))

(declare-fun m!4895047 () Bool)

(assert (=> b!4302843 m!4895047))

(declare-fun m!4895049 () Bool)

(assert (=> b!4302835 m!4895049))

(declare-fun m!4895051 () Bool)

(assert (=> b!4302835 m!4895051))

(declare-fun m!4895053 () Bool)

(assert (=> b!4302835 m!4895053))

(check-sat (not b!4302836) (not b!4302840) (not b_next!128931) (not b!4302843) (not b!4302838) tp_is_empty!23409 b_and!339615 (not b!4302841) b_and!339613 (not b!4302845) (not b!4302834) (not mapNonEmpty!20476) (not b!4302842) (not b!4302835) tp_is_empty!23407 (not b_next!128933))
(check-sat b_and!339613 b_and!339615 (not b_next!128933) (not b_next!128931))
