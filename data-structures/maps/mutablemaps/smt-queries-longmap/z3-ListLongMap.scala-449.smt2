; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8320 () Bool)

(assert start!8320)

(declare-fun b!54449 () Bool)

(declare-fun b_free!1781 () Bool)

(declare-fun b_next!1781 () Bool)

(assert (=> b!54449 (= b_free!1781 (not b_next!1781))))

(declare-fun tp!7444 () Bool)

(declare-fun b_and!3113 () Bool)

(assert (=> b!54449 (= tp!7444 b_and!3113)))

(declare-fun b!54443 () Bool)

(declare-fun b_free!1783 () Bool)

(declare-fun b_next!1783 () Bool)

(assert (=> b!54443 (= b_free!1783 (not b_next!1783))))

(declare-fun tp!7445 () Bool)

(declare-fun b_and!3115 () Bool)

(assert (=> b!54443 (= tp!7445 b_and!3115)))

(declare-fun b!54438 () Bool)

(declare-fun e!35557 () Bool)

(declare-fun e!35563 () Bool)

(assert (=> b!54438 (= e!35557 e!35563)))

(declare-fun res!30807 () Bool)

(assert (=> b!54438 (=> (not res!30807) (not e!35563))))

(declare-datatypes ((V!2723 0))(
  ( (V!2724 (val!1198 Int)) )
))
(declare-datatypes ((array!3536 0))(
  ( (array!3537 (arr!1690 (Array (_ BitVec 32) (_ BitVec 64))) (size!1919 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!810 0))(
  ( (ValueCellFull!810 (v!2278 V!2723)) (EmptyCell!810) )
))
(declare-datatypes ((array!3538 0))(
  ( (array!3539 (arr!1691 (Array (_ BitVec 32) ValueCell!810)) (size!1920 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!528 0))(
  ( (LongMapFixedSize!529 (defaultEntry!1978 Int) (mask!5823 (_ BitVec 32)) (extraKeys!1869 (_ BitVec 32)) (zeroValue!1896 V!2723) (minValue!1896 V!2723) (_size!313 (_ BitVec 32)) (_keys!3598 array!3536) (_values!1961 array!3538) (_vacant!313 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!338 0))(
  ( (Cell!339 (v!2279 LongMapFixedSize!528)) )
))
(declare-datatypes ((LongMap!338 0))(
  ( (LongMap!339 (underlying!180 Cell!338)) )
))
(declare-fun thiss!992 () LongMap!338)

(declare-datatypes ((tuple2!1932 0))(
  ( (tuple2!1933 (_1!976 (_ BitVec 64)) (_2!976 V!2723)) )
))
(declare-datatypes ((List!1394 0))(
  ( (Nil!1391) (Cons!1390 (h!1970 tuple2!1932) (t!4552 List!1394)) )
))
(declare-datatypes ((ListLongMap!1317 0))(
  ( (ListLongMap!1318 (toList!674 List!1394)) )
))
(declare-fun lt!21654 () ListLongMap!1317)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!645 (ListLongMap!1317 (_ BitVec 64)) Bool)

(assert (=> b!54438 (= res!30807 (contains!645 lt!21654 (select (arr!1690 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!528)

(declare-datatypes ((tuple2!1934 0))(
  ( (tuple2!1935 (_1!977 Bool) (_2!977 LongMapFixedSize!528)) )
))
(declare-fun lt!21653 () tuple2!1934)

(declare-fun update!57 (LongMapFixedSize!528 (_ BitVec 64) V!2723) tuple2!1934)

(declare-fun get!1018 (ValueCell!810 V!2723) V!2723)

(declare-fun dynLambda!285 (Int (_ BitVec 64)) V!2723)

(assert (=> b!54438 (= lt!21653 (update!57 newMap!16 (select (arr!1690 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) from!355) (get!1018 (select (arr!1691 (_values!1961 (v!2279 (underlying!180 thiss!992)))) from!355) (dynLambda!285 (defaultEntry!1978 (v!2279 (underlying!180 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!2591 () Bool)

(declare-fun mapRes!2592 () Bool)

(declare-fun tp!7446 () Bool)

(declare-fun e!35556 () Bool)

(assert (=> mapNonEmpty!2591 (= mapRes!2592 (and tp!7446 e!35556))))

(declare-fun mapValue!2591 () ValueCell!810)

(declare-fun mapRest!2592 () (Array (_ BitVec 32) ValueCell!810))

(declare-fun mapKey!2592 () (_ BitVec 32))

(assert (=> mapNonEmpty!2591 (= (arr!1691 (_values!1961 newMap!16)) (store mapRest!2592 mapKey!2592 mapValue!2591))))

(declare-fun b!54439 () Bool)

(declare-fun res!30806 () Bool)

(declare-fun e!35551 () Bool)

(assert (=> b!54439 (=> (not res!30806) (not e!35551))))

(declare-fun valid!203 (LongMapFixedSize!528) Bool)

(assert (=> b!54439 (= res!30806 (valid!203 newMap!16))))

(declare-fun b!54440 () Bool)

(declare-fun res!30799 () Bool)

(assert (=> b!54440 (=> (not res!30799) (not e!35551))))

(assert (=> b!54440 (= res!30799 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1919 (_keys!3598 (v!2279 (underlying!180 thiss!992)))))))))

(declare-fun b!54441 () Bool)

(assert (=> b!54441 (= e!35551 e!35557)))

(declare-fun res!30801 () Bool)

(assert (=> b!54441 (=> (not res!30801) (not e!35557))))

(declare-fun lt!21652 () ListLongMap!1317)

(assert (=> b!54441 (= res!30801 (and (= lt!21652 lt!21654) (not (= (select (arr!1690 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1690 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1054 (LongMapFixedSize!528) ListLongMap!1317)

(assert (=> b!54441 (= lt!21654 (map!1054 newMap!16))))

(declare-fun getCurrentListMap!378 (array!3536 array!3538 (_ BitVec 32) (_ BitVec 32) V!2723 V!2723 (_ BitVec 32) Int) ListLongMap!1317)

(assert (=> b!54441 (= lt!21652 (getCurrentListMap!378 (_keys!3598 (v!2279 (underlying!180 thiss!992))) (_values!1961 (v!2279 (underlying!180 thiss!992))) (mask!5823 (v!2279 (underlying!180 thiss!992))) (extraKeys!1869 (v!2279 (underlying!180 thiss!992))) (zeroValue!1896 (v!2279 (underlying!180 thiss!992))) (minValue!1896 (v!2279 (underlying!180 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1978 (v!2279 (underlying!180 thiss!992)))))))

(declare-fun res!30802 () Bool)

(assert (=> start!8320 (=> (not res!30802) (not e!35551))))

(declare-fun valid!204 (LongMap!338) Bool)

(assert (=> start!8320 (= res!30802 (valid!204 thiss!992))))

(assert (=> start!8320 e!35551))

(declare-fun e!35558 () Bool)

(assert (=> start!8320 e!35558))

(assert (=> start!8320 true))

(declare-fun e!35550 () Bool)

(assert (=> start!8320 e!35550))

(declare-fun b!54442 () Bool)

(declare-fun e!35553 () Bool)

(declare-fun tp_is_empty!2307 () Bool)

(assert (=> b!54442 (= e!35553 tp_is_empty!2307)))

(declare-fun e!35554 () Bool)

(declare-fun array_inv!993 (array!3536) Bool)

(declare-fun array_inv!994 (array!3538) Bool)

(assert (=> b!54443 (= e!35550 (and tp!7445 tp_is_empty!2307 (array_inv!993 (_keys!3598 newMap!16)) (array_inv!994 (_values!1961 newMap!16)) e!35554))))

(declare-fun b!54444 () Bool)

(declare-fun e!35561 () Bool)

(assert (=> b!54444 (= e!35558 e!35561)))

(declare-fun b!54445 () Bool)

(declare-fun res!30803 () Bool)

(assert (=> b!54445 (=> (not res!30803) (not e!35563))))

(assert (=> b!54445 (= res!30803 (and (= (size!1920 (_values!1961 (v!2279 (underlying!180 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5823 (v!2279 (underlying!180 thiss!992))))) (= (size!1919 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) (size!1920 (_values!1961 (v!2279 (underlying!180 thiss!992))))) (bvsge (mask!5823 (v!2279 (underlying!180 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1869 (v!2279 (underlying!180 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1869 (v!2279 (underlying!180 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!54446 () Bool)

(declare-fun res!30798 () Bool)

(assert (=> b!54446 (=> (not res!30798) (not e!35563))))

(assert (=> b!54446 (= res!30798 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1919 (_keys!3598 (v!2279 (underlying!180 thiss!992)))))))))

(declare-fun b!54447 () Bool)

(declare-fun e!35555 () Bool)

(assert (=> b!54447 (= e!35561 e!35555)))

(declare-fun b!54448 () Bool)

(declare-fun e!35562 () Bool)

(assert (=> b!54448 (= e!35562 tp_is_empty!2307)))

(declare-fun e!35560 () Bool)

(assert (=> b!54449 (= e!35555 (and tp!7444 tp_is_empty!2307 (array_inv!993 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) (array_inv!994 (_values!1961 (v!2279 (underlying!180 thiss!992)))) e!35560))))

(declare-fun mapIsEmpty!2591 () Bool)

(declare-fun mapRes!2591 () Bool)

(assert (=> mapIsEmpty!2591 mapRes!2591))

(declare-fun mapIsEmpty!2592 () Bool)

(assert (=> mapIsEmpty!2592 mapRes!2592))

(declare-fun b!54450 () Bool)

(declare-fun e!35559 () Bool)

(assert (=> b!54450 (= e!35560 (and e!35559 mapRes!2591))))

(declare-fun condMapEmpty!2592 () Bool)

(declare-fun mapDefault!2591 () ValueCell!810)

(assert (=> b!54450 (= condMapEmpty!2592 (= (arr!1691 (_values!1961 (v!2279 (underlying!180 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!810)) mapDefault!2591)))))

(declare-fun b!54451 () Bool)

(assert (=> b!54451 (= e!35554 (and e!35553 mapRes!2592))))

(declare-fun condMapEmpty!2591 () Bool)

(declare-fun mapDefault!2592 () ValueCell!810)

(assert (=> b!54451 (= condMapEmpty!2591 (= (arr!1691 (_values!1961 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!810)) mapDefault!2592)))))

(declare-fun b!54452 () Bool)

(assert (=> b!54452 (= e!35559 tp_is_empty!2307)))

(declare-fun mapNonEmpty!2592 () Bool)

(declare-fun tp!7443 () Bool)

(assert (=> mapNonEmpty!2592 (= mapRes!2591 (and tp!7443 e!35562))))

(declare-fun mapKey!2591 () (_ BitVec 32))

(declare-fun mapValue!2592 () ValueCell!810)

(declare-fun mapRest!2591 () (Array (_ BitVec 32) ValueCell!810))

(assert (=> mapNonEmpty!2592 (= (arr!1691 (_values!1961 (v!2279 (underlying!180 thiss!992)))) (store mapRest!2591 mapKey!2591 mapValue!2592))))

(declare-fun b!54453 () Bool)

(declare-fun res!30804 () Bool)

(assert (=> b!54453 (=> (not res!30804) (not e!35551))))

(assert (=> b!54453 (= res!30804 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5823 newMap!16)) (_size!313 (v!2279 (underlying!180 thiss!992)))))))

(declare-fun b!54454 () Bool)

(declare-fun res!30800 () Bool)

(assert (=> b!54454 (=> (not res!30800) (not e!35563))))

(declare-datatypes ((List!1395 0))(
  ( (Nil!1392) (Cons!1391 (h!1971 (_ BitVec 64)) (t!4553 List!1395)) )
))
(declare-fun arrayNoDuplicates!0 (array!3536 (_ BitVec 32) List!1395) Bool)

(assert (=> b!54454 (= res!30800 (arrayNoDuplicates!0 (_keys!3598 (v!2279 (underlying!180 thiss!992))) #b00000000000000000000000000000000 Nil!1392))))

(declare-fun b!54455 () Bool)

(declare-fun res!30797 () Bool)

(assert (=> b!54455 (=> (not res!30797) (not e!35563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3536 (_ BitVec 32)) Bool)

(assert (=> b!54455 (= res!30797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3598 (v!2279 (underlying!180 thiss!992))) (mask!5823 (v!2279 (underlying!180 thiss!992)))))))

(declare-fun b!54456 () Bool)

(declare-fun res!30805 () Bool)

(assert (=> b!54456 (=> (not res!30805) (not e!35563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!54456 (= res!30805 (validMask!0 (mask!5823 (v!2279 (underlying!180 thiss!992)))))))

(declare-fun b!54457 () Bool)

(assert (=> b!54457 (= e!35556 tp_is_empty!2307)))

(declare-fun b!54458 () Bool)

(assert (=> b!54458 (= e!35563 false)))

(declare-fun lt!21655 () Bool)

(assert (=> b!54458 (= lt!21655 (contains!645 lt!21652 (select (arr!1690 (_keys!3598 (v!2279 (underlying!180 thiss!992)))) from!355)))))

(assert (= (and start!8320 res!30802) b!54440))

(assert (= (and b!54440 res!30799) b!54439))

(assert (= (and b!54439 res!30806) b!54453))

(assert (= (and b!54453 res!30804) b!54441))

(assert (= (and b!54441 res!30801) b!54438))

(assert (= (and b!54438 res!30807) b!54456))

(assert (= (and b!54456 res!30805) b!54445))

(assert (= (and b!54445 res!30803) b!54455))

(assert (= (and b!54455 res!30797) b!54454))

(assert (= (and b!54454 res!30800) b!54446))

(assert (= (and b!54446 res!30798) b!54458))

(assert (= (and b!54450 condMapEmpty!2592) mapIsEmpty!2591))

(assert (= (and b!54450 (not condMapEmpty!2592)) mapNonEmpty!2592))

(get-info :version)

(assert (= (and mapNonEmpty!2592 ((_ is ValueCellFull!810) mapValue!2592)) b!54448))

(assert (= (and b!54450 ((_ is ValueCellFull!810) mapDefault!2591)) b!54452))

(assert (= b!54449 b!54450))

(assert (= b!54447 b!54449))

(assert (= b!54444 b!54447))

(assert (= start!8320 b!54444))

(assert (= (and b!54451 condMapEmpty!2591) mapIsEmpty!2592))

(assert (= (and b!54451 (not condMapEmpty!2591)) mapNonEmpty!2591))

(assert (= (and mapNonEmpty!2591 ((_ is ValueCellFull!810) mapValue!2591)) b!54457))

(assert (= (and b!54451 ((_ is ValueCellFull!810) mapDefault!2592)) b!54442))

(assert (= b!54443 b!54451))

(assert (= start!8320 b!54443))

(declare-fun b_lambda!2421 () Bool)

(assert (=> (not b_lambda!2421) (not b!54438)))

(declare-fun t!4549 () Bool)

(declare-fun tb!1133 () Bool)

(assert (=> (and b!54449 (= (defaultEntry!1978 (v!2279 (underlying!180 thiss!992))) (defaultEntry!1978 (v!2279 (underlying!180 thiss!992)))) t!4549) tb!1133))

(declare-fun result!2093 () Bool)

(assert (=> tb!1133 (= result!2093 tp_is_empty!2307)))

(assert (=> b!54438 t!4549))

(declare-fun b_and!3117 () Bool)

(assert (= b_and!3113 (and (=> t!4549 result!2093) b_and!3117)))

(declare-fun tb!1135 () Bool)

(declare-fun t!4551 () Bool)

(assert (=> (and b!54443 (= (defaultEntry!1978 newMap!16) (defaultEntry!1978 (v!2279 (underlying!180 thiss!992)))) t!4551) tb!1135))

(declare-fun result!2097 () Bool)

(assert (= result!2097 result!2093))

(assert (=> b!54438 t!4551))

(declare-fun b_and!3119 () Bool)

(assert (= b_and!3115 (and (=> t!4551 result!2097) b_and!3119)))

(declare-fun m!46071 () Bool)

(assert (=> b!54441 m!46071))

(declare-fun m!46073 () Bool)

(assert (=> b!54441 m!46073))

(declare-fun m!46075 () Bool)

(assert (=> b!54441 m!46075))

(declare-fun m!46077 () Bool)

(assert (=> b!54449 m!46077))

(declare-fun m!46079 () Bool)

(assert (=> b!54449 m!46079))

(declare-fun m!46081 () Bool)

(assert (=> b!54439 m!46081))

(declare-fun m!46083 () Bool)

(assert (=> mapNonEmpty!2591 m!46083))

(assert (=> b!54438 m!46071))

(declare-fun m!46085 () Bool)

(assert (=> b!54438 m!46085))

(declare-fun m!46087 () Bool)

(assert (=> b!54438 m!46087))

(declare-fun m!46089 () Bool)

(assert (=> b!54438 m!46089))

(declare-fun m!46091 () Bool)

(assert (=> b!54438 m!46091))

(assert (=> b!54438 m!46071))

(assert (=> b!54438 m!46089))

(assert (=> b!54438 m!46071))

(assert (=> b!54438 m!46091))

(declare-fun m!46093 () Bool)

(assert (=> b!54438 m!46093))

(assert (=> b!54438 m!46087))

(declare-fun m!46095 () Bool)

(assert (=> b!54454 m!46095))

(declare-fun m!46097 () Bool)

(assert (=> b!54455 m!46097))

(declare-fun m!46099 () Bool)

(assert (=> b!54456 m!46099))

(declare-fun m!46101 () Bool)

(assert (=> mapNonEmpty!2592 m!46101))

(declare-fun m!46103 () Bool)

(assert (=> start!8320 m!46103))

(assert (=> b!54458 m!46071))

(assert (=> b!54458 m!46071))

(declare-fun m!46105 () Bool)

(assert (=> b!54458 m!46105))

(declare-fun m!46107 () Bool)

(assert (=> b!54443 m!46107))

(declare-fun m!46109 () Bool)

(assert (=> b!54443 m!46109))

(check-sat (not b!54441) (not b!54443) (not b_next!1783) (not mapNonEmpty!2591) (not b!54438) (not b!54455) (not b_next!1781) (not start!8320) (not b!54458) b_and!3119 tp_is_empty!2307 (not b!54456) (not b!54439) (not b!54449) (not b!54454) (not b_lambda!2421) (not mapNonEmpty!2592) b_and!3117)
(check-sat b_and!3117 b_and!3119 (not b_next!1781) (not b_next!1783))
