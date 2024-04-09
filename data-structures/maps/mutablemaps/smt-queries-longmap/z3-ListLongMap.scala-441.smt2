; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8272 () Bool)

(assert start!8272)

(declare-fun b!52897 () Bool)

(declare-fun b_free!1685 () Bool)

(declare-fun b_next!1685 () Bool)

(assert (=> b!52897 (= b_free!1685 (not b_next!1685))))

(declare-fun tp!7156 () Bool)

(declare-fun b_and!2921 () Bool)

(assert (=> b!52897 (= tp!7156 b_and!2921)))

(declare-fun b!52881 () Bool)

(declare-fun b_free!1687 () Bool)

(declare-fun b_next!1687 () Bool)

(assert (=> b!52881 (= b_free!1687 (not b_next!1687))))

(declare-fun tp!7158 () Bool)

(declare-fun b_and!2923 () Bool)

(assert (=> b!52881 (= tp!7158 b_and!2923)))

(declare-fun b!52878 () Bool)

(declare-fun res!30005 () Bool)

(declare-fun e!34484 () Bool)

(assert (=> b!52878 (=> (not res!30005) (not e!34484))))

(declare-datatypes ((V!2659 0))(
  ( (V!2660 (val!1174 Int)) )
))
(declare-datatypes ((array!3440 0))(
  ( (array!3441 (arr!1642 (Array (_ BitVec 32) (_ BitVec 64))) (size!1871 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!786 0))(
  ( (ValueCellFull!786 (v!2233 V!2659)) (EmptyCell!786) )
))
(declare-datatypes ((array!3442 0))(
  ( (array!3443 (arr!1643 (Array (_ BitVec 32) ValueCell!786)) (size!1872 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!480 0))(
  ( (LongMapFixedSize!481 (defaultEntry!1954 Int) (mask!5783 (_ BitVec 32)) (extraKeys!1845 (_ BitVec 32)) (zeroValue!1872 V!2659) (minValue!1872 V!2659) (_size!289 (_ BitVec 32)) (_keys!3574 array!3440) (_values!1937 array!3442) (_vacant!289 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!296 0))(
  ( (Cell!297 (v!2234 LongMapFixedSize!480)) )
))
(declare-datatypes ((LongMap!296 0))(
  ( (LongMap!297 (underlying!159 Cell!296)) )
))
(declare-fun thiss!992 () LongMap!296)

(declare-datatypes ((List!1366 0))(
  ( (Nil!1363) (Cons!1362 (h!1942 (_ BitVec 64)) (t!4428 List!1366)) )
))
(declare-fun arrayNoDuplicates!0 (array!3440 (_ BitVec 32) List!1366) Bool)

(assert (=> b!52878 (= res!30005 (arrayNoDuplicates!0 (_keys!3574 (v!2234 (underlying!159 thiss!992))) #b00000000000000000000000000000000 Nil!1363))))

(declare-fun mapIsEmpty!2447 () Bool)

(declare-fun mapRes!2448 () Bool)

(assert (=> mapIsEmpty!2447 mapRes!2448))

(declare-fun b!52879 () Bool)

(declare-fun e!34475 () Bool)

(declare-fun e!34470 () Bool)

(assert (=> b!52879 (= e!34475 (and e!34470 mapRes!2448))))

(declare-fun condMapEmpty!2448 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!480)

(declare-fun mapDefault!2448 () ValueCell!786)

(assert (=> b!52879 (= condMapEmpty!2448 (= (arr!1643 (_values!1937 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!786)) mapDefault!2448)))))

(declare-fun b!52880 () Bool)

(declare-fun e!34476 () Bool)

(declare-fun e!34483 () Bool)

(assert (=> b!52880 (= e!34476 e!34483)))

(declare-fun tp_is_empty!2259 () Bool)

(declare-fun e!34482 () Bool)

(declare-fun array_inv!961 (array!3440) Bool)

(declare-fun array_inv!962 (array!3442) Bool)

(assert (=> b!52881 (= e!34482 (and tp!7158 tp_is_empty!2259 (array_inv!961 (_keys!3574 newMap!16)) (array_inv!962 (_values!1937 newMap!16)) e!34475))))

(declare-fun mapNonEmpty!2447 () Bool)

(declare-fun tp!7157 () Bool)

(declare-fun e!34474 () Bool)

(assert (=> mapNonEmpty!2447 (= mapRes!2448 (and tp!7157 e!34474))))

(declare-fun mapKey!2448 () (_ BitVec 32))

(declare-fun mapValue!2448 () ValueCell!786)

(declare-fun mapRest!2448 () (Array (_ BitVec 32) ValueCell!786))

(assert (=> mapNonEmpty!2447 (= (arr!1643 (_values!1937 newMap!16)) (store mapRest!2448 mapKey!2448 mapValue!2448))))

(declare-fun b!52882 () Bool)

(assert (=> b!52882 (= e!34484 false)))

(declare-datatypes ((tuple2!1870 0))(
  ( (tuple2!1871 (_1!945 (_ BitVec 64)) (_2!945 V!2659)) )
))
(declare-datatypes ((List!1367 0))(
  ( (Nil!1364) (Cons!1363 (h!1943 tuple2!1870) (t!4429 List!1367)) )
))
(declare-datatypes ((ListLongMap!1283 0))(
  ( (ListLongMap!1284 (toList!657 List!1367)) )
))
(declare-fun lt!21367 () ListLongMap!1283)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21366 () Bool)

(declare-fun contains!629 (ListLongMap!1283 (_ BitVec 64)) Bool)

(assert (=> b!52882 (= lt!21366 (contains!629 lt!21367 (select (arr!1642 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) from!355)))))

(declare-fun b!52883 () Bool)

(declare-fun res!30015 () Bool)

(assert (=> b!52883 (=> (not res!30015) (not e!34484))))

(assert (=> b!52883 (= res!30015 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1871 (_keys!3574 (v!2234 (underlying!159 thiss!992)))))))))

(declare-fun b!52884 () Bool)

(declare-fun res!30007 () Bool)

(declare-fun e!34471 () Bool)

(assert (=> b!52884 (=> (not res!30007) (not e!34471))))

(assert (=> b!52884 (= res!30007 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5783 newMap!16)) (_size!289 (v!2234 (underlying!159 thiss!992)))))))

(declare-fun b!52885 () Bool)

(declare-fun e!34480 () Bool)

(assert (=> b!52885 (= e!34480 e!34484)))

(declare-fun res!30011 () Bool)

(assert (=> b!52885 (=> (not res!30011) (not e!34484))))

(declare-fun lt!21364 () ListLongMap!1283)

(assert (=> b!52885 (= res!30011 (contains!629 lt!21364 (select (arr!1642 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1872 0))(
  ( (tuple2!1873 (_1!946 Bool) (_2!946 LongMapFixedSize!480)) )
))
(declare-fun lt!21365 () tuple2!1872)

(declare-fun update!43 (LongMapFixedSize!480 (_ BitVec 64) V!2659) tuple2!1872)

(declare-fun get!988 (ValueCell!786 V!2659) V!2659)

(declare-fun dynLambda!271 (Int (_ BitVec 64)) V!2659)

(assert (=> b!52885 (= lt!21365 (update!43 newMap!16 (select (arr!1642 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) from!355) (get!988 (select (arr!1643 (_values!1937 (v!2234 (underlying!159 thiss!992)))) from!355) (dynLambda!271 (defaultEntry!1954 (v!2234 (underlying!159 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!52886 () Bool)

(declare-fun e!34478 () Bool)

(assert (=> b!52886 (= e!34478 tp_is_empty!2259)))

(declare-fun b!52887 () Bool)

(declare-fun res!30008 () Bool)

(assert (=> b!52887 (=> (not res!30008) (not e!34484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3440 (_ BitVec 32)) Bool)

(assert (=> b!52887 (= res!30008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3574 (v!2234 (underlying!159 thiss!992))) (mask!5783 (v!2234 (underlying!159 thiss!992)))))))

(declare-fun res!30010 () Bool)

(assert (=> start!8272 (=> (not res!30010) (not e!34471))))

(declare-fun valid!174 (LongMap!296) Bool)

(assert (=> start!8272 (= res!30010 (valid!174 thiss!992))))

(assert (=> start!8272 e!34471))

(assert (=> start!8272 e!34476))

(assert (=> start!8272 true))

(assert (=> start!8272 e!34482))

(declare-fun b!52888 () Bool)

(declare-fun res!30006 () Bool)

(assert (=> b!52888 (=> (not res!30006) (not e!34484))))

(assert (=> b!52888 (= res!30006 (and (= (size!1872 (_values!1937 (v!2234 (underlying!159 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5783 (v!2234 (underlying!159 thiss!992))))) (= (size!1871 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) (size!1872 (_values!1937 (v!2234 (underlying!159 thiss!992))))) (bvsge (mask!5783 (v!2234 (underlying!159 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1845 (v!2234 (underlying!159 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1845 (v!2234 (underlying!159 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!52889 () Bool)

(assert (=> b!52889 (= e!34474 tp_is_empty!2259)))

(declare-fun b!52890 () Bool)

(assert (=> b!52890 (= e!34471 e!34480)))

(declare-fun res!30012 () Bool)

(assert (=> b!52890 (=> (not res!30012) (not e!34480))))

(assert (=> b!52890 (= res!30012 (and (= lt!21367 lt!21364) (not (= (select (arr!1642 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1642 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1025 (LongMapFixedSize!480) ListLongMap!1283)

(assert (=> b!52890 (= lt!21364 (map!1025 newMap!16))))

(declare-fun getCurrentListMap!365 (array!3440 array!3442 (_ BitVec 32) (_ BitVec 32) V!2659 V!2659 (_ BitVec 32) Int) ListLongMap!1283)

(assert (=> b!52890 (= lt!21367 (getCurrentListMap!365 (_keys!3574 (v!2234 (underlying!159 thiss!992))) (_values!1937 (v!2234 (underlying!159 thiss!992))) (mask!5783 (v!2234 (underlying!159 thiss!992))) (extraKeys!1845 (v!2234 (underlying!159 thiss!992))) (zeroValue!1872 (v!2234 (underlying!159 thiss!992))) (minValue!1872 (v!2234 (underlying!159 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1954 (v!2234 (underlying!159 thiss!992)))))))

(declare-fun b!52891 () Bool)

(declare-fun res!30014 () Bool)

(assert (=> b!52891 (=> (not res!30014) (not e!34484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!52891 (= res!30014 (validMask!0 (mask!5783 (v!2234 (underlying!159 thiss!992)))))))

(declare-fun b!52892 () Bool)

(declare-fun e!34481 () Bool)

(assert (=> b!52892 (= e!34481 tp_is_empty!2259)))

(declare-fun b!52893 () Bool)

(declare-fun e!34477 () Bool)

(declare-fun mapRes!2447 () Bool)

(assert (=> b!52893 (= e!34477 (and e!34481 mapRes!2447))))

(declare-fun condMapEmpty!2447 () Bool)

(declare-fun mapDefault!2447 () ValueCell!786)

(assert (=> b!52893 (= condMapEmpty!2447 (= (arr!1643 (_values!1937 (v!2234 (underlying!159 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!786)) mapDefault!2447)))))

(declare-fun mapNonEmpty!2448 () Bool)

(declare-fun tp!7155 () Bool)

(assert (=> mapNonEmpty!2448 (= mapRes!2447 (and tp!7155 e!34478))))

(declare-fun mapValue!2447 () ValueCell!786)

(declare-fun mapKey!2447 () (_ BitVec 32))

(declare-fun mapRest!2447 () (Array (_ BitVec 32) ValueCell!786))

(assert (=> mapNonEmpty!2448 (= (arr!1643 (_values!1937 (v!2234 (underlying!159 thiss!992)))) (store mapRest!2447 mapKey!2447 mapValue!2447))))

(declare-fun b!52894 () Bool)

(declare-fun res!30009 () Bool)

(assert (=> b!52894 (=> (not res!30009) (not e!34471))))

(declare-fun valid!175 (LongMapFixedSize!480) Bool)

(assert (=> b!52894 (= res!30009 (valid!175 newMap!16))))

(declare-fun b!52895 () Bool)

(declare-fun e!34479 () Bool)

(assert (=> b!52895 (= e!34483 e!34479)))

(declare-fun b!52896 () Bool)

(declare-fun res!30013 () Bool)

(assert (=> b!52896 (=> (not res!30013) (not e!34471))))

(assert (=> b!52896 (= res!30013 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1871 (_keys!3574 (v!2234 (underlying!159 thiss!992)))))))))

(assert (=> b!52897 (= e!34479 (and tp!7156 tp_is_empty!2259 (array_inv!961 (_keys!3574 (v!2234 (underlying!159 thiss!992)))) (array_inv!962 (_values!1937 (v!2234 (underlying!159 thiss!992)))) e!34477))))

(declare-fun b!52898 () Bool)

(assert (=> b!52898 (= e!34470 tp_is_empty!2259)))

(declare-fun mapIsEmpty!2448 () Bool)

(assert (=> mapIsEmpty!2448 mapRes!2447))

(assert (= (and start!8272 res!30010) b!52896))

(assert (= (and b!52896 res!30013) b!52894))

(assert (= (and b!52894 res!30009) b!52884))

(assert (= (and b!52884 res!30007) b!52890))

(assert (= (and b!52890 res!30012) b!52885))

(assert (= (and b!52885 res!30011) b!52891))

(assert (= (and b!52891 res!30014) b!52888))

(assert (= (and b!52888 res!30006) b!52887))

(assert (= (and b!52887 res!30008) b!52878))

(assert (= (and b!52878 res!30005) b!52883))

(assert (= (and b!52883 res!30015) b!52882))

(assert (= (and b!52893 condMapEmpty!2447) mapIsEmpty!2448))

(assert (= (and b!52893 (not condMapEmpty!2447)) mapNonEmpty!2448))

(get-info :version)

(assert (= (and mapNonEmpty!2448 ((_ is ValueCellFull!786) mapValue!2447)) b!52886))

(assert (= (and b!52893 ((_ is ValueCellFull!786) mapDefault!2447)) b!52892))

(assert (= b!52897 b!52893))

(assert (= b!52895 b!52897))

(assert (= b!52880 b!52895))

(assert (= start!8272 b!52880))

(assert (= (and b!52879 condMapEmpty!2448) mapIsEmpty!2447))

(assert (= (and b!52879 (not condMapEmpty!2448)) mapNonEmpty!2447))

(assert (= (and mapNonEmpty!2447 ((_ is ValueCellFull!786) mapValue!2448)) b!52889))

(assert (= (and b!52879 ((_ is ValueCellFull!786) mapDefault!2448)) b!52898))

(assert (= b!52881 b!52879))

(assert (= start!8272 b!52881))

(declare-fun b_lambda!2373 () Bool)

(assert (=> (not b_lambda!2373) (not b!52885)))

(declare-fun t!4425 () Bool)

(declare-fun tb!1037 () Bool)

(assert (=> (and b!52897 (= (defaultEntry!1954 (v!2234 (underlying!159 thiss!992))) (defaultEntry!1954 (v!2234 (underlying!159 thiss!992)))) t!4425) tb!1037))

(declare-fun result!1949 () Bool)

(assert (=> tb!1037 (= result!1949 tp_is_empty!2259)))

(assert (=> b!52885 t!4425))

(declare-fun b_and!2925 () Bool)

(assert (= b_and!2921 (and (=> t!4425 result!1949) b_and!2925)))

(declare-fun t!4427 () Bool)

(declare-fun tb!1039 () Bool)

(assert (=> (and b!52881 (= (defaultEntry!1954 newMap!16) (defaultEntry!1954 (v!2234 (underlying!159 thiss!992)))) t!4427) tb!1039))

(declare-fun result!1953 () Bool)

(assert (= result!1953 result!1949))

(assert (=> b!52885 t!4427))

(declare-fun b_and!2927 () Bool)

(assert (= b_and!2923 (and (=> t!4427 result!1953) b_and!2927)))

(declare-fun m!45111 () Bool)

(assert (=> b!52891 m!45111))

(declare-fun m!45113 () Bool)

(assert (=> b!52897 m!45113))

(declare-fun m!45115 () Bool)

(assert (=> b!52897 m!45115))

(declare-fun m!45117 () Bool)

(assert (=> mapNonEmpty!2448 m!45117))

(declare-fun m!45119 () Bool)

(assert (=> b!52894 m!45119))

(declare-fun m!45121 () Bool)

(assert (=> b!52887 m!45121))

(declare-fun m!45123 () Bool)

(assert (=> b!52890 m!45123))

(declare-fun m!45125 () Bool)

(assert (=> b!52890 m!45125))

(declare-fun m!45127 () Bool)

(assert (=> b!52890 m!45127))

(declare-fun m!45129 () Bool)

(assert (=> mapNonEmpty!2447 m!45129))

(declare-fun m!45131 () Bool)

(assert (=> b!52881 m!45131))

(declare-fun m!45133 () Bool)

(assert (=> b!52881 m!45133))

(declare-fun m!45135 () Bool)

(assert (=> b!52878 m!45135))

(declare-fun m!45137 () Bool)

(assert (=> b!52885 m!45137))

(declare-fun m!45139 () Bool)

(assert (=> b!52885 m!45139))

(declare-fun m!45141 () Bool)

(assert (=> b!52885 m!45141))

(assert (=> b!52885 m!45123))

(assert (=> b!52885 m!45139))

(assert (=> b!52885 m!45123))

(declare-fun m!45143 () Bool)

(assert (=> b!52885 m!45143))

(assert (=> b!52885 m!45123))

(assert (=> b!52885 m!45141))

(declare-fun m!45145 () Bool)

(assert (=> b!52885 m!45145))

(assert (=> b!52885 m!45137))

(assert (=> b!52882 m!45123))

(assert (=> b!52882 m!45123))

(declare-fun m!45147 () Bool)

(assert (=> b!52882 m!45147))

(declare-fun m!45149 () Bool)

(assert (=> start!8272 m!45149))

(check-sat (not b_next!1687) (not b!52894) tp_is_empty!2259 (not b!52878) (not start!8272) (not b!52890) (not b!52887) (not b!52882) (not mapNonEmpty!2447) (not b!52885) (not b_lambda!2373) b_and!2927 (not b_next!1685) (not b!52897) (not b!52881) b_and!2925 (not b!52891) (not mapNonEmpty!2448))
(check-sat b_and!2925 b_and!2927 (not b_next!1685) (not b_next!1687))
