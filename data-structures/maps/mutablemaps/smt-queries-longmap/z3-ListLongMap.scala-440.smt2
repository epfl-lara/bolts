; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8266 () Bool)

(assert start!8266)

(declare-fun b!52703 () Bool)

(declare-fun b_free!1673 () Bool)

(declare-fun b_next!1673 () Bool)

(assert (=> b!52703 (= b_free!1673 (not b_next!1673))))

(declare-fun tp!7122 () Bool)

(declare-fun b_and!2897 () Bool)

(assert (=> b!52703 (= tp!7122 b_and!2897)))

(declare-fun b!52687 () Bool)

(declare-fun b_free!1675 () Bool)

(declare-fun b_next!1675 () Bool)

(assert (=> b!52687 (= b_free!1675 (not b_next!1675))))

(declare-fun tp!7119 () Bool)

(declare-fun b_and!2899 () Bool)

(assert (=> b!52687 (= tp!7119 b_and!2899)))

(declare-fun mapIsEmpty!2429 () Bool)

(declare-fun mapRes!2430 () Bool)

(assert (=> mapIsEmpty!2429 mapRes!2430))

(declare-fun b!52683 () Bool)

(declare-fun res!29915 () Bool)

(declare-fun e!34347 () Bool)

(assert (=> b!52683 (=> (not res!29915) (not e!34347))))

(declare-datatypes ((V!2651 0))(
  ( (V!2652 (val!1171 Int)) )
))
(declare-datatypes ((array!3428 0))(
  ( (array!3429 (arr!1636 (Array (_ BitVec 32) (_ BitVec 64))) (size!1865 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!783 0))(
  ( (ValueCellFull!783 (v!2227 V!2651)) (EmptyCell!783) )
))
(declare-datatypes ((array!3430 0))(
  ( (array!3431 (arr!1637 (Array (_ BitVec 32) ValueCell!783)) (size!1866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!474 0))(
  ( (LongMapFixedSize!475 (defaultEntry!1951 Int) (mask!5778 (_ BitVec 32)) (extraKeys!1842 (_ BitVec 32)) (zeroValue!1869 V!2651) (minValue!1869 V!2651) (_size!286 (_ BitVec 32)) (_keys!3571 array!3428) (_values!1934 array!3430) (_vacant!286 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!290 0))(
  ( (Cell!291 (v!2228 LongMapFixedSize!474)) )
))
(declare-datatypes ((LongMap!290 0))(
  ( (LongMap!291 (underlying!156 Cell!290)) )
))
(declare-fun thiss!992 () LongMap!290)

(declare-datatypes ((List!1362 0))(
  ( (Nil!1359) (Cons!1358 (h!1938 (_ BitVec 64)) (t!4412 List!1362)) )
))
(declare-fun arrayNoDuplicates!0 (array!3428 (_ BitVec 32) List!1362) Bool)

(assert (=> b!52683 (= res!29915 (arrayNoDuplicates!0 (_keys!3571 (v!2228 (underlying!156 thiss!992))) #b00000000000000000000000000000000 Nil!1359))))

(declare-fun b!52684 () Bool)

(declare-fun res!29908 () Bool)

(assert (=> b!52684 (=> (not res!29908) (not e!34347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!52684 (= res!29908 (validMask!0 (mask!5778 (v!2228 (underlying!156 thiss!992)))))))

(declare-fun b!52685 () Bool)

(declare-fun e!34335 () Bool)

(declare-fun e!34340 () Bool)

(assert (=> b!52685 (= e!34335 e!34340)))

(declare-fun b!52686 () Bool)

(declare-fun res!29909 () Bool)

(assert (=> b!52686 (=> (not res!29909) (not e!34347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3428 (_ BitVec 32)) Bool)

(assert (=> b!52686 (= res!29909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3571 (v!2228 (underlying!156 thiss!992))) (mask!5778 (v!2228 (underlying!156 thiss!992)))))))

(declare-fun tp_is_empty!2253 () Bool)

(declare-fun e!34348 () Bool)

(declare-fun e!34346 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!474)

(declare-fun array_inv!955 (array!3428) Bool)

(declare-fun array_inv!956 (array!3430) Bool)

(assert (=> b!52687 (= e!34348 (and tp!7119 tp_is_empty!2253 (array_inv!955 (_keys!3571 newMap!16)) (array_inv!956 (_values!1934 newMap!16)) e!34346))))

(declare-fun mapNonEmpty!2429 () Bool)

(declare-fun tp!7120 () Bool)

(declare-fun e!34336 () Bool)

(assert (=> mapNonEmpty!2429 (= mapRes!2430 (and tp!7120 e!34336))))

(declare-fun mapValue!2430 () ValueCell!783)

(declare-fun mapKey!2429 () (_ BitVec 32))

(declare-fun mapRest!2429 () (Array (_ BitVec 32) ValueCell!783))

(assert (=> mapNonEmpty!2429 (= (arr!1637 (_values!1934 newMap!16)) (store mapRest!2429 mapKey!2429 mapValue!2430))))

(declare-fun mapIsEmpty!2430 () Bool)

(declare-fun mapRes!2429 () Bool)

(assert (=> mapIsEmpty!2430 mapRes!2429))

(declare-fun b!52688 () Bool)

(declare-fun e!34349 () Bool)

(assert (=> b!52688 (= e!34349 e!34347)))

(declare-fun res!29914 () Bool)

(assert (=> b!52688 (=> (not res!29914) (not e!34347))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1858 0))(
  ( (tuple2!1859 (_1!939 (_ BitVec 64)) (_2!939 V!2651)) )
))
(declare-datatypes ((List!1363 0))(
  ( (Nil!1360) (Cons!1359 (h!1939 tuple2!1858) (t!4413 List!1363)) )
))
(declare-datatypes ((ListLongMap!1277 0))(
  ( (ListLongMap!1278 (toList!654 List!1363)) )
))
(declare-fun lt!21329 () ListLongMap!1277)

(declare-fun contains!626 (ListLongMap!1277 (_ BitVec 64)) Bool)

(assert (=> b!52688 (= res!29914 (contains!626 lt!21329 (select (arr!1636 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1860 0))(
  ( (tuple2!1861 (_1!940 Bool) (_2!940 LongMapFixedSize!474)) )
))
(declare-fun lt!21330 () tuple2!1860)

(declare-fun update!40 (LongMapFixedSize!474 (_ BitVec 64) V!2651) tuple2!1860)

(declare-fun get!983 (ValueCell!783 V!2651) V!2651)

(declare-fun dynLambda!268 (Int (_ BitVec 64)) V!2651)

(assert (=> b!52688 (= lt!21330 (update!40 newMap!16 (select (arr!1636 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) from!355) (get!983 (select (arr!1637 (_values!1934 (v!2228 (underlying!156 thiss!992)))) from!355) (dynLambda!268 (defaultEntry!1951 (v!2228 (underlying!156 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!52689 () Bool)

(declare-fun res!29916 () Bool)

(assert (=> b!52689 (=> (not res!29916) (not e!34347))))

(assert (=> b!52689 (= res!29916 (and (= (size!1866 (_values!1934 (v!2228 (underlying!156 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5778 (v!2228 (underlying!156 thiss!992))))) (= (size!1865 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) (size!1866 (_values!1934 (v!2228 (underlying!156 thiss!992))))) (bvsge (mask!5778 (v!2228 (underlying!156 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1842 (v!2228 (underlying!156 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1842 (v!2228 (underlying!156 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!52690 () Bool)

(declare-fun res!29910 () Bool)

(declare-fun e!34338 () Bool)

(assert (=> b!52690 (=> (not res!29910) (not e!34338))))

(assert (=> b!52690 (= res!29910 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5778 newMap!16)) (_size!286 (v!2228 (underlying!156 thiss!992)))))))

(declare-fun res!29913 () Bool)

(assert (=> start!8266 (=> (not res!29913) (not e!34338))))

(declare-fun valid!170 (LongMap!290) Bool)

(assert (=> start!8266 (= res!29913 (valid!170 thiss!992))))

(assert (=> start!8266 e!34338))

(assert (=> start!8266 e!34335))

(assert (=> start!8266 true))

(assert (=> start!8266 e!34348))

(declare-fun b!52691 () Bool)

(declare-fun e!34343 () Bool)

(assert (=> b!52691 (= e!34346 (and e!34343 mapRes!2430))))

(declare-fun condMapEmpty!2430 () Bool)

(declare-fun mapDefault!2430 () ValueCell!783)

(assert (=> b!52691 (= condMapEmpty!2430 (= (arr!1637 (_values!1934 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!783)) mapDefault!2430)))))

(declare-fun b!52692 () Bool)

(declare-fun e!34342 () Bool)

(declare-fun e!34344 () Bool)

(assert (=> b!52692 (= e!34342 (and e!34344 mapRes!2429))))

(declare-fun condMapEmpty!2429 () Bool)

(declare-fun mapDefault!2429 () ValueCell!783)

(assert (=> b!52692 (= condMapEmpty!2429 (= (arr!1637 (_values!1934 (v!2228 (underlying!156 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!783)) mapDefault!2429)))))

(declare-fun b!52693 () Bool)

(declare-fun e!34345 () Bool)

(assert (=> b!52693 (= e!34345 tp_is_empty!2253)))

(declare-fun b!52694 () Bool)

(declare-fun res!29912 () Bool)

(assert (=> b!52694 (=> (not res!29912) (not e!34338))))

(declare-fun valid!171 (LongMapFixedSize!474) Bool)

(assert (=> b!52694 (= res!29912 (valid!171 newMap!16))))

(declare-fun b!52695 () Bool)

(assert (=> b!52695 (= e!34347 false)))

(declare-fun lt!21328 () ListLongMap!1277)

(declare-fun lt!21331 () Bool)

(assert (=> b!52695 (= lt!21331 (contains!626 lt!21328 (select (arr!1636 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) from!355)))))

(declare-fun b!52696 () Bool)

(declare-fun res!29906 () Bool)

(assert (=> b!52696 (=> (not res!29906) (not e!34347))))

(assert (=> b!52696 (= res!29906 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1865 (_keys!3571 (v!2228 (underlying!156 thiss!992)))))))))

(declare-fun b!52697 () Bool)

(assert (=> b!52697 (= e!34336 tp_is_empty!2253)))

(declare-fun mapNonEmpty!2430 () Bool)

(declare-fun tp!7121 () Bool)

(assert (=> mapNonEmpty!2430 (= mapRes!2429 (and tp!7121 e!34345))))

(declare-fun mapValue!2429 () ValueCell!783)

(declare-fun mapKey!2430 () (_ BitVec 32))

(declare-fun mapRest!2430 () (Array (_ BitVec 32) ValueCell!783))

(assert (=> mapNonEmpty!2430 (= (arr!1637 (_values!1934 (v!2228 (underlying!156 thiss!992)))) (store mapRest!2430 mapKey!2430 mapValue!2429))))

(declare-fun b!52698 () Bool)

(declare-fun res!29911 () Bool)

(assert (=> b!52698 (=> (not res!29911) (not e!34338))))

(assert (=> b!52698 (= res!29911 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1865 (_keys!3571 (v!2228 (underlying!156 thiss!992)))))))))

(declare-fun b!52699 () Bool)

(declare-fun e!34337 () Bool)

(assert (=> b!52699 (= e!34340 e!34337)))

(declare-fun b!52700 () Bool)

(assert (=> b!52700 (= e!34343 tp_is_empty!2253)))

(declare-fun b!52701 () Bool)

(assert (=> b!52701 (= e!34344 tp_is_empty!2253)))

(declare-fun b!52702 () Bool)

(assert (=> b!52702 (= e!34338 e!34349)))

(declare-fun res!29907 () Bool)

(assert (=> b!52702 (=> (not res!29907) (not e!34349))))

(assert (=> b!52702 (= res!29907 (and (= lt!21328 lt!21329) (not (= (select (arr!1636 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1636 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1021 (LongMapFixedSize!474) ListLongMap!1277)

(assert (=> b!52702 (= lt!21329 (map!1021 newMap!16))))

(declare-fun getCurrentListMap!363 (array!3428 array!3430 (_ BitVec 32) (_ BitVec 32) V!2651 V!2651 (_ BitVec 32) Int) ListLongMap!1277)

(assert (=> b!52702 (= lt!21328 (getCurrentListMap!363 (_keys!3571 (v!2228 (underlying!156 thiss!992))) (_values!1934 (v!2228 (underlying!156 thiss!992))) (mask!5778 (v!2228 (underlying!156 thiss!992))) (extraKeys!1842 (v!2228 (underlying!156 thiss!992))) (zeroValue!1869 (v!2228 (underlying!156 thiss!992))) (minValue!1869 (v!2228 (underlying!156 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1951 (v!2228 (underlying!156 thiss!992)))))))

(assert (=> b!52703 (= e!34337 (and tp!7122 tp_is_empty!2253 (array_inv!955 (_keys!3571 (v!2228 (underlying!156 thiss!992)))) (array_inv!956 (_values!1934 (v!2228 (underlying!156 thiss!992)))) e!34342))))

(assert (= (and start!8266 res!29913) b!52698))

(assert (= (and b!52698 res!29911) b!52694))

(assert (= (and b!52694 res!29912) b!52690))

(assert (= (and b!52690 res!29910) b!52702))

(assert (= (and b!52702 res!29907) b!52688))

(assert (= (and b!52688 res!29914) b!52684))

(assert (= (and b!52684 res!29908) b!52689))

(assert (= (and b!52689 res!29916) b!52686))

(assert (= (and b!52686 res!29909) b!52683))

(assert (= (and b!52683 res!29915) b!52696))

(assert (= (and b!52696 res!29906) b!52695))

(assert (= (and b!52692 condMapEmpty!2429) mapIsEmpty!2430))

(assert (= (and b!52692 (not condMapEmpty!2429)) mapNonEmpty!2430))

(get-info :version)

(assert (= (and mapNonEmpty!2430 ((_ is ValueCellFull!783) mapValue!2429)) b!52693))

(assert (= (and b!52692 ((_ is ValueCellFull!783) mapDefault!2429)) b!52701))

(assert (= b!52703 b!52692))

(assert (= b!52699 b!52703))

(assert (= b!52685 b!52699))

(assert (= start!8266 b!52685))

(assert (= (and b!52691 condMapEmpty!2430) mapIsEmpty!2429))

(assert (= (and b!52691 (not condMapEmpty!2430)) mapNonEmpty!2429))

(assert (= (and mapNonEmpty!2429 ((_ is ValueCellFull!783) mapValue!2430)) b!52697))

(assert (= (and b!52691 ((_ is ValueCellFull!783) mapDefault!2430)) b!52700))

(assert (= b!52687 b!52691))

(assert (= start!8266 b!52687))

(declare-fun b_lambda!2367 () Bool)

(assert (=> (not b_lambda!2367) (not b!52688)))

(declare-fun t!4409 () Bool)

(declare-fun tb!1025 () Bool)

(assert (=> (and b!52703 (= (defaultEntry!1951 (v!2228 (underlying!156 thiss!992))) (defaultEntry!1951 (v!2228 (underlying!156 thiss!992)))) t!4409) tb!1025))

(declare-fun result!1931 () Bool)

(assert (=> tb!1025 (= result!1931 tp_is_empty!2253)))

(assert (=> b!52688 t!4409))

(declare-fun b_and!2901 () Bool)

(assert (= b_and!2897 (and (=> t!4409 result!1931) b_and!2901)))

(declare-fun t!4411 () Bool)

(declare-fun tb!1027 () Bool)

(assert (=> (and b!52687 (= (defaultEntry!1951 newMap!16) (defaultEntry!1951 (v!2228 (underlying!156 thiss!992)))) t!4411) tb!1027))

(declare-fun result!1935 () Bool)

(assert (= result!1935 result!1931))

(assert (=> b!52688 t!4411))

(declare-fun b_and!2903 () Bool)

(assert (= b_and!2899 (and (=> t!4411 result!1935) b_and!2903)))

(declare-fun m!44991 () Bool)

(assert (=> b!52688 m!44991))

(declare-fun m!44993 () Bool)

(assert (=> b!52688 m!44993))

(declare-fun m!44995 () Bool)

(assert (=> b!52688 m!44995))

(declare-fun m!44997 () Bool)

(assert (=> b!52688 m!44997))

(assert (=> b!52688 m!44993))

(assert (=> b!52688 m!44997))

(declare-fun m!44999 () Bool)

(assert (=> b!52688 m!44999))

(assert (=> b!52688 m!44997))

(assert (=> b!52688 m!44995))

(declare-fun m!45001 () Bool)

(assert (=> b!52688 m!45001))

(assert (=> b!52688 m!44991))

(declare-fun m!45003 () Bool)

(assert (=> b!52687 m!45003))

(declare-fun m!45005 () Bool)

(assert (=> b!52687 m!45005))

(declare-fun m!45007 () Bool)

(assert (=> mapNonEmpty!2430 m!45007))

(declare-fun m!45009 () Bool)

(assert (=> mapNonEmpty!2429 m!45009))

(declare-fun m!45011 () Bool)

(assert (=> b!52686 m!45011))

(declare-fun m!45013 () Bool)

(assert (=> b!52683 m!45013))

(declare-fun m!45015 () Bool)

(assert (=> b!52694 m!45015))

(declare-fun m!45017 () Bool)

(assert (=> b!52703 m!45017))

(declare-fun m!45019 () Bool)

(assert (=> b!52703 m!45019))

(assert (=> b!52702 m!44997))

(declare-fun m!45021 () Bool)

(assert (=> b!52702 m!45021))

(declare-fun m!45023 () Bool)

(assert (=> b!52702 m!45023))

(declare-fun m!45025 () Bool)

(assert (=> b!52684 m!45025))

(assert (=> b!52695 m!44997))

(assert (=> b!52695 m!44997))

(declare-fun m!45027 () Bool)

(assert (=> b!52695 m!45027))

(declare-fun m!45029 () Bool)

(assert (=> start!8266 m!45029))

(check-sat (not b!52683) (not b_next!1673) (not start!8266) (not b!52694) (not mapNonEmpty!2429) (not b!52686) (not mapNonEmpty!2430) (not b!52688) (not b!52703) tp_is_empty!2253 b_and!2901 (not b_lambda!2367) (not b!52695) (not b!52687) (not b!52702) (not b_next!1675) b_and!2903 (not b!52684))
(check-sat b_and!2901 b_and!2903 (not b_next!1673) (not b_next!1675))
