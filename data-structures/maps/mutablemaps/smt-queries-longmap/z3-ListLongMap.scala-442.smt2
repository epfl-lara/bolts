; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8278 () Bool)

(assert start!8278)

(declare-fun b!53092 () Bool)

(declare-fun b_free!1697 () Bool)

(declare-fun b_next!1697 () Bool)

(assert (=> b!53092 (= b_free!1697 (not b_next!1697))))

(declare-fun tp!7191 () Bool)

(declare-fun b_and!2945 () Bool)

(assert (=> b!53092 (= tp!7191 b_and!2945)))

(declare-fun b!53076 () Bool)

(declare-fun b_free!1699 () Bool)

(declare-fun b_next!1699 () Bool)

(assert (=> b!53076 (= b_free!1699 (not b_next!1699))))

(declare-fun tp!7194 () Bool)

(declare-fun b_and!2947 () Bool)

(assert (=> b!53076 (= tp!7194 b_and!2947)))

(declare-fun b!53073 () Bool)

(declare-fun e!34614 () Bool)

(declare-fun tp_is_empty!2265 () Bool)

(assert (=> b!53073 (= e!34614 tp_is_empty!2265)))

(declare-fun b!53074 () Bool)

(declare-fun e!34616 () Bool)

(assert (=> b!53074 (= e!34616 tp_is_empty!2265)))

(declare-fun res!30106 () Bool)

(declare-fun e!34609 () Bool)

(assert (=> start!8278 (=> (not res!30106) (not e!34609))))

(declare-datatypes ((V!2667 0))(
  ( (V!2668 (val!1177 Int)) )
))
(declare-datatypes ((array!3452 0))(
  ( (array!3453 (arr!1648 (Array (_ BitVec 32) (_ BitVec 64))) (size!1877 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!789 0))(
  ( (ValueCellFull!789 (v!2238 V!2667)) (EmptyCell!789) )
))
(declare-datatypes ((array!3454 0))(
  ( (array!3455 (arr!1649 (Array (_ BitVec 32) ValueCell!789)) (size!1878 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!486 0))(
  ( (LongMapFixedSize!487 (defaultEntry!1957 Int) (mask!5788 (_ BitVec 32)) (extraKeys!1848 (_ BitVec 32)) (zeroValue!1875 V!2667) (minValue!1875 V!2667) (_size!292 (_ BitVec 32)) (_keys!3577 array!3452) (_values!1940 array!3454) (_vacant!292 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!300 0))(
  ( (Cell!301 (v!2239 LongMapFixedSize!486)) )
))
(declare-datatypes ((LongMap!300 0))(
  ( (LongMap!301 (underlying!161 Cell!300)) )
))
(declare-fun thiss!992 () LongMap!300)

(declare-fun valid!178 (LongMap!300) Bool)

(assert (=> start!8278 (= res!30106 (valid!178 thiss!992))))

(assert (=> start!8278 e!34609))

(declare-fun e!34607 () Bool)

(assert (=> start!8278 e!34607))

(assert (=> start!8278 true))

(declare-fun e!34613 () Bool)

(assert (=> start!8278 e!34613))

(declare-fun b!53075 () Bool)

(declare-fun res!30104 () Bool)

(declare-fun e!34611 () Bool)

(assert (=> b!53075 (=> (not res!30104) (not e!34611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3452 (_ BitVec 32)) Bool)

(assert (=> b!53075 (= res!30104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3577 (v!2239 (underlying!161 thiss!992))) (mask!5788 (v!2239 (underlying!161 thiss!992)))))))

(declare-fun newMap!16 () LongMapFixedSize!486)

(declare-fun e!34617 () Bool)

(declare-fun array_inv!965 (array!3452) Bool)

(declare-fun array_inv!966 (array!3454) Bool)

(assert (=> b!53076 (= e!34613 (and tp!7194 tp_is_empty!2265 (array_inv!965 (_keys!3577 newMap!16)) (array_inv!966 (_values!1940 newMap!16)) e!34617))))

(declare-fun mapNonEmpty!2465 () Bool)

(declare-fun mapRes!2465 () Bool)

(declare-fun tp!7193 () Bool)

(assert (=> mapNonEmpty!2465 (= mapRes!2465 (and tp!7193 e!34616))))

(declare-fun mapValue!2466 () ValueCell!789)

(declare-fun mapKey!2466 () (_ BitVec 32))

(declare-fun mapRest!2466 () (Array (_ BitVec 32) ValueCell!789))

(assert (=> mapNonEmpty!2465 (= (arr!1649 (_values!1940 (v!2239 (underlying!161 thiss!992)))) (store mapRest!2466 mapKey!2466 mapValue!2466))))

(declare-fun mapNonEmpty!2466 () Bool)

(declare-fun mapRes!2466 () Bool)

(declare-fun tp!7192 () Bool)

(assert (=> mapNonEmpty!2466 (= mapRes!2466 (and tp!7192 e!34614))))

(declare-fun mapKey!2465 () (_ BitVec 32))

(declare-fun mapValue!2465 () ValueCell!789)

(declare-fun mapRest!2465 () (Array (_ BitVec 32) ValueCell!789))

(assert (=> mapNonEmpty!2466 (= (arr!1649 (_values!1940 newMap!16)) (store mapRest!2465 mapKey!2465 mapValue!2465))))

(declare-fun b!53077 () Bool)

(declare-fun e!34605 () Bool)

(assert (=> b!53077 (= e!34605 tp_is_empty!2265)))

(declare-fun b!53078 () Bool)

(declare-fun res!30107 () Bool)

(assert (=> b!53078 (=> (not res!30107) (not e!34611))))

(declare-datatypes ((List!1369 0))(
  ( (Nil!1366) (Cons!1365 (h!1945 (_ BitVec 64)) (t!4443 List!1369)) )
))
(declare-fun arrayNoDuplicates!0 (array!3452 (_ BitVec 32) List!1369) Bool)

(assert (=> b!53078 (= res!30107 (arrayNoDuplicates!0 (_keys!3577 (v!2239 (underlying!161 thiss!992))) #b00000000000000000000000000000000 Nil!1366))))

(declare-fun b!53079 () Bool)

(declare-fun res!30111 () Bool)

(assert (=> b!53079 (=> (not res!30111) (not e!34609))))

(declare-fun valid!179 (LongMapFixedSize!486) Bool)

(assert (=> b!53079 (= res!30111 (valid!179 newMap!16))))

(declare-fun b!53080 () Bool)

(declare-fun e!34608 () Bool)

(assert (=> b!53080 (= e!34607 e!34608)))

(declare-fun b!53081 () Bool)

(declare-fun e!34610 () Bool)

(assert (=> b!53081 (= e!34609 e!34610)))

(declare-fun res!30110 () Bool)

(assert (=> b!53081 (=> (not res!30110) (not e!34610))))

(declare-datatypes ((tuple2!1874 0))(
  ( (tuple2!1875 (_1!947 (_ BitVec 64)) (_2!947 V!2667)) )
))
(declare-datatypes ((List!1370 0))(
  ( (Nil!1367) (Cons!1366 (h!1946 tuple2!1874) (t!4444 List!1370)) )
))
(declare-datatypes ((ListLongMap!1285 0))(
  ( (ListLongMap!1286 (toList!658 List!1370)) )
))
(declare-fun lt!21403 () ListLongMap!1285)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21401 () ListLongMap!1285)

(assert (=> b!53081 (= res!30110 (and (= lt!21403 lt!21401) (not (= (select (arr!1648 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1648 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1028 (LongMapFixedSize!486) ListLongMap!1285)

(assert (=> b!53081 (= lt!21401 (map!1028 newMap!16))))

(declare-fun getCurrentListMap!366 (array!3452 array!3454 (_ BitVec 32) (_ BitVec 32) V!2667 V!2667 (_ BitVec 32) Int) ListLongMap!1285)

(assert (=> b!53081 (= lt!21403 (getCurrentListMap!366 (_keys!3577 (v!2239 (underlying!161 thiss!992))) (_values!1940 (v!2239 (underlying!161 thiss!992))) (mask!5788 (v!2239 (underlying!161 thiss!992))) (extraKeys!1848 (v!2239 (underlying!161 thiss!992))) (zeroValue!1875 (v!2239 (underlying!161 thiss!992))) (minValue!1875 (v!2239 (underlying!161 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1957 (v!2239 (underlying!161 thiss!992)))))))

(declare-fun b!53082 () Bool)

(declare-fun e!34612 () Bool)

(assert (=> b!53082 (= e!34608 e!34612)))

(declare-fun b!53083 () Bool)

(assert (=> b!53083 (= e!34611 false)))

(declare-fun lt!21400 () Bool)

(declare-fun contains!630 (ListLongMap!1285 (_ BitVec 64)) Bool)

(assert (=> b!53083 (= lt!21400 (contains!630 lt!21403 (select (arr!1648 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) from!355)))))

(declare-fun mapIsEmpty!2465 () Bool)

(assert (=> mapIsEmpty!2465 mapRes!2466))

(declare-fun b!53084 () Bool)

(declare-fun res!30105 () Bool)

(assert (=> b!53084 (=> (not res!30105) (not e!34611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53084 (= res!30105 (validMask!0 (mask!5788 (v!2239 (underlying!161 thiss!992)))))))

(declare-fun b!53085 () Bool)

(declare-fun e!34606 () Bool)

(assert (=> b!53085 (= e!34606 tp_is_empty!2265)))

(declare-fun b!53086 () Bool)

(declare-fun res!30112 () Bool)

(assert (=> b!53086 (=> (not res!30112) (not e!34609))))

(assert (=> b!53086 (= res!30112 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5788 newMap!16)) (_size!292 (v!2239 (underlying!161 thiss!992)))))))

(declare-fun b!53087 () Bool)

(declare-fun res!30109 () Bool)

(assert (=> b!53087 (=> (not res!30109) (not e!34611))))

(assert (=> b!53087 (= res!30109 (and (= (size!1878 (_values!1940 (v!2239 (underlying!161 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5788 (v!2239 (underlying!161 thiss!992))))) (= (size!1877 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) (size!1878 (_values!1940 (v!2239 (underlying!161 thiss!992))))) (bvsge (mask!5788 (v!2239 (underlying!161 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1848 (v!2239 (underlying!161 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1848 (v!2239 (underlying!161 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53088 () Bool)

(assert (=> b!53088 (= e!34610 e!34611)))

(declare-fun res!30114 () Bool)

(assert (=> b!53088 (=> (not res!30114) (not e!34611))))

(assert (=> b!53088 (= res!30114 (contains!630 lt!21401 (select (arr!1648 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1876 0))(
  ( (tuple2!1877 (_1!948 Bool) (_2!948 LongMapFixedSize!486)) )
))
(declare-fun lt!21402 () tuple2!1876)

(declare-fun update!44 (LongMapFixedSize!486 (_ BitVec 64) V!2667) tuple2!1876)

(declare-fun get!991 (ValueCell!789 V!2667) V!2667)

(declare-fun dynLambda!272 (Int (_ BitVec 64)) V!2667)

(assert (=> b!53088 (= lt!21402 (update!44 newMap!16 (select (arr!1648 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) from!355) (get!991 (select (arr!1649 (_values!1940 (v!2239 (underlying!161 thiss!992)))) from!355) (dynLambda!272 (defaultEntry!1957 (v!2239 (underlying!161 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53089 () Bool)

(assert (=> b!53089 (= e!34617 (and e!34605 mapRes!2466))))

(declare-fun condMapEmpty!2465 () Bool)

(declare-fun mapDefault!2465 () ValueCell!789)

(assert (=> b!53089 (= condMapEmpty!2465 (= (arr!1649 (_values!1940 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!789)) mapDefault!2465)))))

(declare-fun b!53090 () Bool)

(declare-fun res!30113 () Bool)

(assert (=> b!53090 (=> (not res!30113) (not e!34611))))

(assert (=> b!53090 (= res!30113 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1877 (_keys!3577 (v!2239 (underlying!161 thiss!992)))))))))

(declare-fun b!53091 () Bool)

(declare-fun e!34619 () Bool)

(assert (=> b!53091 (= e!34619 (and e!34606 mapRes!2465))))

(declare-fun condMapEmpty!2466 () Bool)

(declare-fun mapDefault!2466 () ValueCell!789)

(assert (=> b!53091 (= condMapEmpty!2466 (= (arr!1649 (_values!1940 (v!2239 (underlying!161 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!789)) mapDefault!2466)))))

(assert (=> b!53092 (= e!34612 (and tp!7191 tp_is_empty!2265 (array_inv!965 (_keys!3577 (v!2239 (underlying!161 thiss!992)))) (array_inv!966 (_values!1940 (v!2239 (underlying!161 thiss!992)))) e!34619))))

(declare-fun b!53093 () Bool)

(declare-fun res!30108 () Bool)

(assert (=> b!53093 (=> (not res!30108) (not e!34609))))

(assert (=> b!53093 (= res!30108 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1877 (_keys!3577 (v!2239 (underlying!161 thiss!992)))))))))

(declare-fun mapIsEmpty!2466 () Bool)

(assert (=> mapIsEmpty!2466 mapRes!2465))

(assert (= (and start!8278 res!30106) b!53093))

(assert (= (and b!53093 res!30108) b!53079))

(assert (= (and b!53079 res!30111) b!53086))

(assert (= (and b!53086 res!30112) b!53081))

(assert (= (and b!53081 res!30110) b!53088))

(assert (= (and b!53088 res!30114) b!53084))

(assert (= (and b!53084 res!30105) b!53087))

(assert (= (and b!53087 res!30109) b!53075))

(assert (= (and b!53075 res!30104) b!53078))

(assert (= (and b!53078 res!30107) b!53090))

(assert (= (and b!53090 res!30113) b!53083))

(assert (= (and b!53091 condMapEmpty!2466) mapIsEmpty!2466))

(assert (= (and b!53091 (not condMapEmpty!2466)) mapNonEmpty!2465))

(get-info :version)

(assert (= (and mapNonEmpty!2465 ((_ is ValueCellFull!789) mapValue!2466)) b!53074))

(assert (= (and b!53091 ((_ is ValueCellFull!789) mapDefault!2466)) b!53085))

(assert (= b!53092 b!53091))

(assert (= b!53082 b!53092))

(assert (= b!53080 b!53082))

(assert (= start!8278 b!53080))

(assert (= (and b!53089 condMapEmpty!2465) mapIsEmpty!2465))

(assert (= (and b!53089 (not condMapEmpty!2465)) mapNonEmpty!2466))

(assert (= (and mapNonEmpty!2466 ((_ is ValueCellFull!789) mapValue!2465)) b!53073))

(assert (= (and b!53089 ((_ is ValueCellFull!789) mapDefault!2465)) b!53077))

(assert (= b!53076 b!53089))

(assert (= start!8278 b!53076))

(declare-fun b_lambda!2379 () Bool)

(assert (=> (not b_lambda!2379) (not b!53088)))

(declare-fun t!4440 () Bool)

(declare-fun tb!1049 () Bool)

(assert (=> (and b!53092 (= (defaultEntry!1957 (v!2239 (underlying!161 thiss!992))) (defaultEntry!1957 (v!2239 (underlying!161 thiss!992)))) t!4440) tb!1049))

(declare-fun result!1967 () Bool)

(assert (=> tb!1049 (= result!1967 tp_is_empty!2265)))

(assert (=> b!53088 t!4440))

(declare-fun b_and!2949 () Bool)

(assert (= b_and!2945 (and (=> t!4440 result!1967) b_and!2949)))

(declare-fun tb!1051 () Bool)

(declare-fun t!4442 () Bool)

(assert (=> (and b!53076 (= (defaultEntry!1957 newMap!16) (defaultEntry!1957 (v!2239 (underlying!161 thiss!992)))) t!4442) tb!1051))

(declare-fun result!1971 () Bool)

(assert (= result!1971 result!1967))

(assert (=> b!53088 t!4442))

(declare-fun b_and!2951 () Bool)

(assert (= b_and!2947 (and (=> t!4442 result!1971) b_and!2951)))

(declare-fun m!45231 () Bool)

(assert (=> b!53083 m!45231))

(assert (=> b!53083 m!45231))

(declare-fun m!45233 () Bool)

(assert (=> b!53083 m!45233))

(declare-fun m!45235 () Bool)

(assert (=> b!53076 m!45235))

(declare-fun m!45237 () Bool)

(assert (=> b!53076 m!45237))

(declare-fun m!45239 () Bool)

(assert (=> b!53084 m!45239))

(declare-fun m!45241 () Bool)

(assert (=> b!53092 m!45241))

(declare-fun m!45243 () Bool)

(assert (=> b!53092 m!45243))

(declare-fun m!45245 () Bool)

(assert (=> start!8278 m!45245))

(assert (=> b!53081 m!45231))

(declare-fun m!45247 () Bool)

(assert (=> b!53081 m!45247))

(declare-fun m!45249 () Bool)

(assert (=> b!53081 m!45249))

(declare-fun m!45251 () Bool)

(assert (=> b!53078 m!45251))

(declare-fun m!45253 () Bool)

(assert (=> mapNonEmpty!2466 m!45253))

(declare-fun m!45255 () Bool)

(assert (=> b!53079 m!45255))

(declare-fun m!45257 () Bool)

(assert (=> b!53088 m!45257))

(declare-fun m!45259 () Bool)

(assert (=> b!53088 m!45259))

(declare-fun m!45261 () Bool)

(assert (=> b!53088 m!45261))

(assert (=> b!53088 m!45231))

(declare-fun m!45263 () Bool)

(assert (=> b!53088 m!45263))

(assert (=> b!53088 m!45231))

(assert (=> b!53088 m!45259))

(assert (=> b!53088 m!45231))

(assert (=> b!53088 m!45261))

(declare-fun m!45265 () Bool)

(assert (=> b!53088 m!45265))

(assert (=> b!53088 m!45257))

(declare-fun m!45267 () Bool)

(assert (=> b!53075 m!45267))

(declare-fun m!45269 () Bool)

(assert (=> mapNonEmpty!2465 m!45269))

(check-sat (not b!53076) b_and!2951 (not b!53092) (not mapNonEmpty!2466) (not start!8278) (not b_lambda!2379) (not b!53075) tp_is_empty!2265 (not b!53083) (not b_next!1699) (not b_next!1697) (not b!53084) (not b!53081) (not b!53079) b_and!2949 (not b!53088) (not b!53078) (not mapNonEmpty!2465))
(check-sat b_and!2949 b_and!2951 (not b_next!1697) (not b_next!1699))
