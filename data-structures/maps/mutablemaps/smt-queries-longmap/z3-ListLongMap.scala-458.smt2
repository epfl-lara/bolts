; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8374 () Bool)

(assert start!8374)

(declare-fun b!56020 () Bool)

(declare-fun b_free!1889 () Bool)

(declare-fun b_next!1889 () Bool)

(assert (=> b!56020 (= b_free!1889 (not b_next!1889))))

(declare-fun tp!7768 () Bool)

(declare-fun b_and!3329 () Bool)

(assert (=> b!56020 (= tp!7768 b_and!3329)))

(declare-fun b!56024 () Bool)

(declare-fun b_free!1891 () Bool)

(declare-fun b_next!1891 () Bool)

(assert (=> b!56024 (= b_free!1891 (not b_next!1891))))

(declare-fun tp!7767 () Bool)

(declare-fun b_and!3331 () Bool)

(assert (=> b!56024 (= tp!7767 b_and!3331)))

(declare-fun b!56013 () Bool)

(declare-fun res!31513 () Bool)

(declare-fun e!36854 () Bool)

(assert (=> b!56013 (=> (not res!31513) (not e!36854))))

(declare-datatypes ((V!2795 0))(
  ( (V!2796 (val!1225 Int)) )
))
(declare-datatypes ((array!3644 0))(
  ( (array!3645 (arr!1744 (Array (_ BitVec 32) (_ BitVec 64))) (size!1973 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!837 0))(
  ( (ValueCellFull!837 (v!2332 V!2795)) (EmptyCell!837) )
))
(declare-datatypes ((array!3646 0))(
  ( (array!3647 (arr!1745 (Array (_ BitVec 32) ValueCell!837)) (size!1974 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!582 0))(
  ( (LongMapFixedSize!583 (defaultEntry!2005 Int) (mask!5868 (_ BitVec 32)) (extraKeys!1896 (_ BitVec 32)) (zeroValue!1923 V!2795) (minValue!1923 V!2795) (_size!340 (_ BitVec 32)) (_keys!3625 array!3644) (_values!1988 array!3646) (_vacant!340 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!582)

(declare-fun valid!230 (LongMapFixedSize!582) Bool)

(assert (=> b!56013 (= res!31513 (valid!230 newMap!16))))

(declare-fun b!56014 () Bool)

(declare-fun res!31511 () Bool)

(declare-fun e!36857 () Bool)

(assert (=> b!56014 (=> res!31511 e!36857)))

(declare-datatypes ((List!1428 0))(
  ( (Nil!1425) (Cons!1424 (h!2004 (_ BitVec 64)) (t!4694 List!1428)) )
))
(declare-fun lt!22123 () List!1428)

(declare-fun contains!669 (List!1428 (_ BitVec 64)) Bool)

(assert (=> b!56014 (= res!31511 (contains!669 lt!22123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56015 () Bool)

(declare-fun e!36842 () Bool)

(declare-fun e!36845 () Bool)

(declare-fun mapRes!2753 () Bool)

(assert (=> b!56015 (= e!36842 (and e!36845 mapRes!2753))))

(declare-fun condMapEmpty!2754 () Bool)

(declare-datatypes ((Cell!392 0))(
  ( (Cell!393 (v!2333 LongMapFixedSize!582)) )
))
(declare-datatypes ((LongMap!392 0))(
  ( (LongMap!393 (underlying!207 Cell!392)) )
))
(declare-fun thiss!992 () LongMap!392)

(declare-fun mapDefault!2754 () ValueCell!837)

(assert (=> b!56015 (= condMapEmpty!2754 (= (arr!1745 (_values!1988 (v!2333 (underlying!207 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!837)) mapDefault!2754)))))

(declare-fun b!56016 () Bool)

(declare-fun tp_is_empty!2361 () Bool)

(assert (=> b!56016 (= e!36845 tp_is_empty!2361)))

(declare-fun b!56017 () Bool)

(declare-fun res!31508 () Bool)

(assert (=> b!56017 (=> res!31508 e!36857)))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!3644 (_ BitVec 32) List!1428) Bool)

(assert (=> b!56017 (= res!31508 (not (arrayNoDuplicates!0 (_keys!3625 (v!2333 (underlying!207 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22123)))))

(declare-fun b!56018 () Bool)

(declare-fun e!36843 () Bool)

(declare-fun e!36856 () Bool)

(assert (=> b!56018 (= e!36843 e!36856)))

(declare-fun b!56019 () Bool)

(declare-fun res!31517 () Bool)

(assert (=> b!56019 (=> res!31517 e!36857)))

(assert (=> b!56019 (= res!31517 (contains!669 lt!22123 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!2753 () Bool)

(declare-fun tp!7770 () Bool)

(declare-fun e!36851 () Bool)

(assert (=> mapNonEmpty!2753 (= mapRes!2753 (and tp!7770 e!36851))))

(declare-fun mapKey!2753 () (_ BitVec 32))

(declare-fun mapValue!2754 () ValueCell!837)

(declare-fun mapRest!2754 () (Array (_ BitVec 32) ValueCell!837))

(assert (=> mapNonEmpty!2753 (= (arr!1745 (_values!1988 (v!2333 (underlying!207 thiss!992)))) (store mapRest!2754 mapKey!2753 mapValue!2754))))

(declare-fun e!36855 () Bool)

(declare-fun array_inv!1025 (array!3644) Bool)

(declare-fun array_inv!1026 (array!3646) Bool)

(assert (=> b!56020 (= e!36855 (and tp!7768 tp_is_empty!2361 (array_inv!1025 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) (array_inv!1026 (_values!1988 (v!2333 (underlying!207 thiss!992)))) e!36842))))

(declare-fun b!56021 () Bool)

(assert (=> b!56021 (= e!36857 true)))

(declare-fun lt!22121 () Bool)

(assert (=> b!56021 (= lt!22121 (contains!669 lt!22123 (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355)))))

(declare-fun b!56022 () Bool)

(declare-fun res!31510 () Bool)

(assert (=> b!56022 (=> res!31510 e!36857)))

(declare-fun noDuplicate!43 (List!1428) Bool)

(assert (=> b!56022 (= res!31510 (not (noDuplicate!43 lt!22123)))))

(declare-fun b!56023 () Bool)

(declare-fun e!36844 () Bool)

(assert (=> b!56023 (= e!36844 (not e!36857))))

(declare-fun res!31512 () Bool)

(assert (=> b!56023 (=> res!31512 e!36857)))

(assert (=> b!56023 (= res!31512 (or (bvsge (size!1973 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1973 (_keys!3625 (v!2333 (underlying!207 thiss!992)))))))))

(assert (=> b!56023 (= lt!22123 (Cons!1424 (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) Nil!1425))))

(assert (=> b!56023 (arrayNoDuplicates!0 (_keys!3625 (v!2333 (underlying!207 thiss!992))) from!355 Nil!1425)))

(declare-datatypes ((Unit!1458 0))(
  ( (Unit!1459) )
))
(declare-fun lt!22122 () Unit!1458)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3644 (_ BitVec 32) (_ BitVec 32)) Unit!1458)

(assert (=> b!56023 (= lt!22122 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3625 (v!2333 (underlying!207 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56023 (arrayContainsKey!0 (_keys!3625 (v!2333 (underlying!207 thiss!992))) (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22117 () Unit!1458)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!18 (array!3644 array!3646 (_ BitVec 32) (_ BitVec 32) V!2795 V!2795 (_ BitVec 64) (_ BitVec 32) Int) Unit!1458)

(assert (=> b!56023 (= lt!22117 (lemmaListMapContainsThenArrayContainsFrom!18 (_keys!3625 (v!2333 (underlying!207 thiss!992))) (_values!1988 (v!2333 (underlying!207 thiss!992))) (mask!5868 (v!2333 (underlying!207 thiss!992))) (extraKeys!1896 (v!2333 (underlying!207 thiss!992))) (zeroValue!1923 (v!2333 (underlying!207 thiss!992))) (minValue!1923 (v!2333 (underlying!207 thiss!992))) (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2005 (v!2333 (underlying!207 thiss!992)))))))

(declare-fun e!36849 () Bool)

(declare-fun e!36847 () Bool)

(assert (=> b!56024 (= e!36847 (and tp!7767 tp_is_empty!2361 (array_inv!1025 (_keys!3625 newMap!16)) (array_inv!1026 (_values!1988 newMap!16)) e!36849))))

(declare-fun b!56025 () Bool)

(declare-fun res!31514 () Bool)

(assert (=> b!56025 (=> (not res!31514) (not e!36854))))

(assert (=> b!56025 (= res!31514 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1973 (_keys!3625 (v!2333 (underlying!207 thiss!992)))))))))

(declare-fun b!56026 () Bool)

(declare-fun e!36848 () Bool)

(declare-fun mapRes!2754 () Bool)

(assert (=> b!56026 (= e!36849 (and e!36848 mapRes!2754))))

(declare-fun condMapEmpty!2753 () Bool)

(declare-fun mapDefault!2753 () ValueCell!837)

(assert (=> b!56026 (= condMapEmpty!2753 (= (arr!1745 (_values!1988 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!837)) mapDefault!2753)))))

(declare-fun mapIsEmpty!2754 () Bool)

(assert (=> mapIsEmpty!2754 mapRes!2754))

(declare-fun b!56027 () Bool)

(declare-fun res!31515 () Bool)

(assert (=> b!56027 (=> (not res!31515) (not e!36854))))

(assert (=> b!56027 (= res!31515 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5868 newMap!16)) (_size!340 (v!2333 (underlying!207 thiss!992)))))))

(declare-fun b!56028 () Bool)

(declare-fun e!36850 () Bool)

(assert (=> b!56028 (= e!36850 tp_is_empty!2361)))

(declare-fun b!56029 () Bool)

(declare-fun e!36852 () Bool)

(assert (=> b!56029 (= e!36852 e!36844)))

(declare-fun res!31516 () Bool)

(assert (=> b!56029 (=> (not res!31516) (not e!36844))))

(declare-datatypes ((tuple2!1998 0))(
  ( (tuple2!1999 (_1!1009 (_ BitVec 64)) (_2!1009 V!2795)) )
))
(declare-datatypes ((List!1429 0))(
  ( (Nil!1426) (Cons!1425 (h!2005 tuple2!1998) (t!4695 List!1429)) )
))
(declare-datatypes ((ListLongMap!1351 0))(
  ( (ListLongMap!1352 (toList!691 List!1429)) )
))
(declare-fun lt!22120 () ListLongMap!1351)

(declare-fun contains!670 (ListLongMap!1351 (_ BitVec 64)) Bool)

(assert (=> b!56029 (= res!31516 (contains!670 lt!22120 (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2000 0))(
  ( (tuple2!2001 (_1!1010 Bool) (_2!1010 LongMapFixedSize!582)) )
))
(declare-fun lt!22118 () tuple2!2000)

(declare-fun update!73 (LongMapFixedSize!582 (_ BitVec 64) V!2795) tuple2!2000)

(declare-fun get!1052 (ValueCell!837 V!2795) V!2795)

(declare-fun dynLambda!301 (Int (_ BitVec 64)) V!2795)

(assert (=> b!56029 (= lt!22118 (update!73 newMap!16 (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) (get!1052 (select (arr!1745 (_values!1988 (v!2333 (underlying!207 thiss!992)))) from!355) (dynLambda!301 (defaultEntry!2005 (v!2333 (underlying!207 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56030 () Bool)

(assert (=> b!56030 (= e!36851 tp_is_empty!2361)))

(declare-fun b!56031 () Bool)

(assert (=> b!56031 (= e!36848 tp_is_empty!2361)))

(declare-fun b!56032 () Bool)

(assert (=> b!56032 (= e!36856 e!36855)))

(declare-fun mapIsEmpty!2753 () Bool)

(assert (=> mapIsEmpty!2753 mapRes!2753))

(declare-fun res!31518 () Bool)

(assert (=> start!8374 (=> (not res!31518) (not e!36854))))

(declare-fun valid!231 (LongMap!392) Bool)

(assert (=> start!8374 (= res!31518 (valid!231 thiss!992))))

(assert (=> start!8374 e!36854))

(assert (=> start!8374 e!36843))

(assert (=> start!8374 true))

(assert (=> start!8374 e!36847))

(declare-fun mapNonEmpty!2754 () Bool)

(declare-fun tp!7769 () Bool)

(assert (=> mapNonEmpty!2754 (= mapRes!2754 (and tp!7769 e!36850))))

(declare-fun mapRest!2753 () (Array (_ BitVec 32) ValueCell!837))

(declare-fun mapValue!2753 () ValueCell!837)

(declare-fun mapKey!2754 () (_ BitVec 32))

(assert (=> mapNonEmpty!2754 (= (arr!1745 (_values!1988 newMap!16)) (store mapRest!2753 mapKey!2754 mapValue!2753))))

(declare-fun b!56033 () Bool)

(assert (=> b!56033 (= e!36854 e!36852)))

(declare-fun res!31509 () Bool)

(assert (=> b!56033 (=> (not res!31509) (not e!36852))))

(declare-fun lt!22119 () ListLongMap!1351)

(assert (=> b!56033 (= res!31509 (and (= lt!22119 lt!22120) (not (= (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1744 (_keys!3625 (v!2333 (underlying!207 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1085 (LongMapFixedSize!582) ListLongMap!1351)

(assert (=> b!56033 (= lt!22120 (map!1085 newMap!16))))

(declare-fun getCurrentListMap!391 (array!3644 array!3646 (_ BitVec 32) (_ BitVec 32) V!2795 V!2795 (_ BitVec 32) Int) ListLongMap!1351)

(assert (=> b!56033 (= lt!22119 (getCurrentListMap!391 (_keys!3625 (v!2333 (underlying!207 thiss!992))) (_values!1988 (v!2333 (underlying!207 thiss!992))) (mask!5868 (v!2333 (underlying!207 thiss!992))) (extraKeys!1896 (v!2333 (underlying!207 thiss!992))) (zeroValue!1923 (v!2333 (underlying!207 thiss!992))) (minValue!1923 (v!2333 (underlying!207 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2005 (v!2333 (underlying!207 thiss!992)))))))

(assert (= (and start!8374 res!31518) b!56025))

(assert (= (and b!56025 res!31514) b!56013))

(assert (= (and b!56013 res!31513) b!56027))

(assert (= (and b!56027 res!31515) b!56033))

(assert (= (and b!56033 res!31509) b!56029))

(assert (= (and b!56029 res!31516) b!56023))

(assert (= (and b!56023 (not res!31512)) b!56022))

(assert (= (and b!56022 (not res!31510)) b!56014))

(assert (= (and b!56014 (not res!31511)) b!56019))

(assert (= (and b!56019 (not res!31517)) b!56017))

(assert (= (and b!56017 (not res!31508)) b!56021))

(assert (= (and b!56015 condMapEmpty!2754) mapIsEmpty!2753))

(assert (= (and b!56015 (not condMapEmpty!2754)) mapNonEmpty!2753))

(get-info :version)

(assert (= (and mapNonEmpty!2753 ((_ is ValueCellFull!837) mapValue!2754)) b!56030))

(assert (= (and b!56015 ((_ is ValueCellFull!837) mapDefault!2754)) b!56016))

(assert (= b!56020 b!56015))

(assert (= b!56032 b!56020))

(assert (= b!56018 b!56032))

(assert (= start!8374 b!56018))

(assert (= (and b!56026 condMapEmpty!2753) mapIsEmpty!2754))

(assert (= (and b!56026 (not condMapEmpty!2753)) mapNonEmpty!2754))

(assert (= (and mapNonEmpty!2754 ((_ is ValueCellFull!837) mapValue!2753)) b!56028))

(assert (= (and b!56026 ((_ is ValueCellFull!837) mapDefault!2753)) b!56031))

(assert (= b!56024 b!56026))

(assert (= start!8374 b!56024))

(declare-fun b_lambda!2475 () Bool)

(assert (=> (not b_lambda!2475) (not b!56029)))

(declare-fun t!4691 () Bool)

(declare-fun tb!1241 () Bool)

(assert (=> (and b!56020 (= (defaultEntry!2005 (v!2333 (underlying!207 thiss!992))) (defaultEntry!2005 (v!2333 (underlying!207 thiss!992)))) t!4691) tb!1241))

(declare-fun result!2255 () Bool)

(assert (=> tb!1241 (= result!2255 tp_is_empty!2361)))

(assert (=> b!56029 t!4691))

(declare-fun b_and!3333 () Bool)

(assert (= b_and!3329 (and (=> t!4691 result!2255) b_and!3333)))

(declare-fun t!4693 () Bool)

(declare-fun tb!1243 () Bool)

(assert (=> (and b!56024 (= (defaultEntry!2005 newMap!16) (defaultEntry!2005 (v!2333 (underlying!207 thiss!992)))) t!4693) tb!1243))

(declare-fun result!2259 () Bool)

(assert (= result!2259 result!2255))

(assert (=> b!56029 t!4693))

(declare-fun b_and!3335 () Bool)

(assert (= b_and!3331 (and (=> t!4693 result!2259) b_and!3335)))

(declare-fun m!47221 () Bool)

(assert (=> mapNonEmpty!2754 m!47221))

(declare-fun m!47223 () Bool)

(assert (=> b!56029 m!47223))

(declare-fun m!47225 () Bool)

(assert (=> b!56029 m!47225))

(declare-fun m!47227 () Bool)

(assert (=> b!56029 m!47227))

(declare-fun m!47229 () Bool)

(assert (=> b!56029 m!47229))

(assert (=> b!56029 m!47225))

(assert (=> b!56029 m!47229))

(declare-fun m!47231 () Bool)

(assert (=> b!56029 m!47231))

(assert (=> b!56029 m!47229))

(assert (=> b!56029 m!47227))

(declare-fun m!47233 () Bool)

(assert (=> b!56029 m!47233))

(assert (=> b!56029 m!47223))

(assert (=> b!56021 m!47229))

(assert (=> b!56021 m!47229))

(declare-fun m!47235 () Bool)

(assert (=> b!56021 m!47235))

(declare-fun m!47237 () Bool)

(assert (=> b!56014 m!47237))

(declare-fun m!47239 () Bool)

(assert (=> b!56019 m!47239))

(declare-fun m!47241 () Bool)

(assert (=> b!56013 m!47241))

(declare-fun m!47243 () Bool)

(assert (=> b!56024 m!47243))

(declare-fun m!47245 () Bool)

(assert (=> b!56024 m!47245))

(assert (=> b!56033 m!47229))

(declare-fun m!47247 () Bool)

(assert (=> b!56033 m!47247))

(declare-fun m!47249 () Bool)

(assert (=> b!56033 m!47249))

(declare-fun m!47251 () Bool)

(assert (=> b!56023 m!47251))

(declare-fun m!47253 () Bool)

(assert (=> b!56023 m!47253))

(assert (=> b!56023 m!47229))

(declare-fun m!47255 () Bool)

(assert (=> b!56023 m!47255))

(assert (=> b!56023 m!47229))

(assert (=> b!56023 m!47229))

(declare-fun m!47257 () Bool)

(assert (=> b!56023 m!47257))

(declare-fun m!47259 () Bool)

(assert (=> b!56020 m!47259))

(declare-fun m!47261 () Bool)

(assert (=> b!56020 m!47261))

(declare-fun m!47263 () Bool)

(assert (=> mapNonEmpty!2753 m!47263))

(declare-fun m!47265 () Bool)

(assert (=> start!8374 m!47265))

(declare-fun m!47267 () Bool)

(assert (=> b!56022 m!47267))

(declare-fun m!47269 () Bool)

(assert (=> b!56017 m!47269))

(check-sat (not b!56021) (not b_next!1891) (not b_next!1889) (not mapNonEmpty!2753) (not b!56023) (not b!56029) (not b!56014) (not b!56017) (not mapNonEmpty!2754) tp_is_empty!2361 (not start!8374) (not b!56022) b_and!3335 b_and!3333 (not b_lambda!2475) (not b!56013) (not b!56024) (not b!56019) (not b!56033) (not b!56020))
(check-sat b_and!3333 b_and!3335 (not b_next!1889) (not b_next!1891))
