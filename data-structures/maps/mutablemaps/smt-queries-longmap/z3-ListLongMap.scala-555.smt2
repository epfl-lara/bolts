; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14984 () Bool)

(assert start!14984)

(declare-fun b!144046 () Bool)

(declare-fun b_free!3053 () Bool)

(declare-fun b_next!3053 () Bool)

(assert (=> b!144046 (= b_free!3053 (not b_next!3053))))

(declare-fun tp!11646 () Bool)

(declare-fun b_and!8997 () Bool)

(assert (=> b!144046 (= tp!11646 b_and!8997)))

(declare-fun b!144033 () Bool)

(declare-fun b_free!3055 () Bool)

(declare-fun b_next!3055 () Bool)

(assert (=> b!144033 (= b_free!3055 (not b_next!3055))))

(declare-fun tp!11648 () Bool)

(declare-fun b_and!8999 () Bool)

(assert (=> b!144033 (= tp!11648 b_and!8999)))

(declare-fun b!144032 () Bool)

(declare-fun e!93867 () Bool)

(declare-fun e!93877 () Bool)

(assert (=> b!144032 (= e!93867 e!93877)))

(declare-datatypes ((V!3571 0))(
  ( (V!3572 (val!1516 Int)) )
))
(declare-datatypes ((array!4924 0))(
  ( (array!4925 (arr!2326 (Array (_ BitVec 32) (_ BitVec 64))) (size!2600 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1128 0))(
  ( (ValueCellFull!1128 (v!3307 V!3571)) (EmptyCell!1128) )
))
(declare-datatypes ((array!4926 0))(
  ( (array!4927 (arr!2327 (Array (_ BitVec 32) ValueCell!1128)) (size!2601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1164 0))(
  ( (LongMapFixedSize!1165 (defaultEntry!2976 Int) (mask!7334 (_ BitVec 32)) (extraKeys!2725 (_ BitVec 32)) (zeroValue!2823 V!3571) (minValue!2823 V!3571) (_size!631 (_ BitVec 32)) (_keys!4741 array!4924) (_values!2959 array!4926) (_vacant!631 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1164)

(declare-fun tp_is_empty!2943 () Bool)

(declare-fun e!93875 () Bool)

(declare-fun e!93881 () Bool)

(declare-fun array_inv!1441 (array!4924) Bool)

(declare-fun array_inv!1442 (array!4926) Bool)

(assert (=> b!144033 (= e!93875 (and tp!11648 tp_is_empty!2943 (array_inv!1441 (_keys!4741 newMap!16)) (array_inv!1442 (_values!2959 newMap!16)) e!93881))))

(declare-fun b!144034 () Bool)

(declare-fun e!93876 () Bool)

(assert (=> b!144034 (= e!93876 tp_is_empty!2943)))

(declare-fun mapIsEmpty!4885 () Bool)

(declare-fun mapRes!4885 () Bool)

(assert (=> mapIsEmpty!4885 mapRes!4885))

(declare-fun b!144035 () Bool)

(declare-fun e!93872 () Bool)

(assert (=> b!144035 (= e!93881 (and e!93872 mapRes!4885))))

(declare-fun condMapEmpty!4886 () Bool)

(declare-fun mapDefault!4885 () ValueCell!1128)

(assert (=> b!144035 (= condMapEmpty!4886 (= (arr!2327 (_values!2959 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4885)))))

(declare-fun b!144036 () Bool)

(declare-fun e!93882 () Bool)

(assert (=> b!144036 (= e!93882 tp_is_empty!2943)))

(declare-fun b!144037 () Bool)

(declare-fun e!93873 () Bool)

(declare-fun e!93871 () Bool)

(assert (=> b!144037 (= e!93873 e!93871)))

(declare-fun res!68597 () Bool)

(assert (=> b!144037 (=> (not res!68597) (not e!93871))))

(declare-datatypes ((Cell!950 0))(
  ( (Cell!951 (v!3308 LongMapFixedSize!1164)) )
))
(declare-datatypes ((LongMap!950 0))(
  ( (LongMap!951 (underlying!486 Cell!950)) )
))
(declare-fun thiss!992 () LongMap!950)

(declare-datatypes ((tuple2!2694 0))(
  ( (tuple2!2695 (_1!1357 (_ BitVec 64)) (_2!1357 V!3571)) )
))
(declare-datatypes ((List!1771 0))(
  ( (Nil!1768) (Cons!1767 (h!2375 tuple2!2694) (t!6408 List!1771)) )
))
(declare-datatypes ((ListLongMap!1753 0))(
  ( (ListLongMap!1754 (toList!892 List!1771)) )
))
(declare-fun lt!75571 () ListLongMap!1753)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!75572 () ListLongMap!1753)

(assert (=> b!144037 (= res!68597 (and (= lt!75571 lt!75572) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1445 (LongMapFixedSize!1164) ListLongMap!1753)

(assert (=> b!144037 (= lt!75572 (map!1445 newMap!16))))

(declare-fun getCurrentListMap!558 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) Int) ListLongMap!1753)

(assert (=> b!144037 (= lt!75571 (getCurrentListMap!558 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun res!68604 () Bool)

(assert (=> start!14984 (=> (not res!68604) (not e!93873))))

(declare-fun valid!562 (LongMap!950) Bool)

(assert (=> start!14984 (= res!68604 (valid!562 thiss!992))))

(assert (=> start!14984 e!93873))

(assert (=> start!14984 e!93867))

(assert (=> start!14984 true))

(assert (=> start!14984 e!93875))

(declare-fun b!144038 () Bool)

(declare-fun e!93880 () Bool)

(assert (=> b!144038 (= e!93877 e!93880)))

(declare-fun b!144039 () Bool)

(declare-fun res!68600 () Bool)

(assert (=> b!144039 (=> (not res!68600) (not e!93873))))

(declare-fun valid!563 (LongMapFixedSize!1164) Bool)

(assert (=> b!144039 (= res!68600 (valid!563 newMap!16))))

(declare-fun b!144040 () Bool)

(declare-fun res!68602 () Bool)

(assert (=> b!144040 (=> (not res!68602) (not e!93873))))

(assert (=> b!144040 (= res!68602 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7334 newMap!16)) (_size!631 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144041 () Bool)

(declare-fun e!93883 () Bool)

(declare-fun e!93879 () Bool)

(assert (=> b!144041 (= e!93883 e!93879)))

(declare-fun res!68599 () Bool)

(assert (=> b!144041 (=> (not res!68599) (not e!93879))))

(declare-datatypes ((List!1772 0))(
  ( (Nil!1769) (Cons!1768 (h!2376 (_ BitVec 64)) (t!6409 List!1772)) )
))
(declare-fun lt!75569 () List!1772)

(declare-fun contains!928 (List!1772 (_ BitVec 64)) Bool)

(assert (=> b!144041 (= res!68599 (not (contains!928 lt!75569 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144042 () Bool)

(declare-fun e!93869 () Bool)

(declare-fun e!93868 () Bool)

(declare-fun mapRes!4886 () Bool)

(assert (=> b!144042 (= e!93869 (and e!93868 mapRes!4886))))

(declare-fun condMapEmpty!4885 () Bool)

(declare-fun mapDefault!4886 () ValueCell!1128)

(assert (=> b!144042 (= condMapEmpty!4885 (= (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4886)))))

(declare-fun b!144043 () Bool)

(declare-fun e!93874 () Bool)

(assert (=> b!144043 (= e!93871 e!93874)))

(declare-fun res!68596 () Bool)

(assert (=> b!144043 (=> (not res!68596) (not e!93874))))

(declare-fun contains!929 (ListLongMap!1753 (_ BitVec 64)) Bool)

(assert (=> b!144043 (= res!68596 (contains!929 lt!75572 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2696 0))(
  ( (tuple2!2697 (_1!1358 Bool) (_2!1358 LongMapFixedSize!1164)) )
))
(declare-fun lt!75570 () tuple2!2696)

(declare-fun update!212 (LongMapFixedSize!1164 (_ BitVec 64) V!3571) tuple2!2696)

(declare-fun get!1547 (ValueCell!1128 V!3571) V!3571)

(declare-fun dynLambda!445 (Int (_ BitVec 64)) V!3571)

(assert (=> b!144043 (= lt!75570 (update!212 newMap!16 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!4886 () Bool)

(assert (=> mapIsEmpty!4886 mapRes!4886))

(declare-fun b!144044 () Bool)

(assert (=> b!144044 (= e!93874 (not e!93883))))

(declare-fun res!68598 () Bool)

(assert (=> b!144044 (=> res!68598 e!93883)))

(assert (=> b!144044 (= res!68598 (or (bvsge (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> b!144044 (= lt!75569 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769))))

(declare-fun arrayNoDuplicates!0 (array!4924 (_ BitVec 32) List!1772) Bool)

(assert (=> b!144044 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) from!355 Nil!1769)))

(declare-datatypes ((Unit!4571 0))(
  ( (Unit!4572) )
))
(declare-fun lt!75568 () Unit!4571)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4924 (_ BitVec 32) (_ BitVec 32)) Unit!4571)

(assert (=> b!144044 (= lt!75568 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!144044 (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!75573 () Unit!4571)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!147 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) (_ BitVec 32) Int) Unit!4571)

(assert (=> b!144044 (= lt!75573 (lemmaListMapContainsThenArrayContainsFrom!147 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun mapNonEmpty!4885 () Bool)

(declare-fun tp!11645 () Bool)

(assert (=> mapNonEmpty!4885 (= mapRes!4885 (and tp!11645 e!93876))))

(declare-fun mapKey!4885 () (_ BitVec 32))

(declare-fun mapRest!4886 () (Array (_ BitVec 32) ValueCell!1128))

(declare-fun mapValue!4886 () ValueCell!1128)

(assert (=> mapNonEmpty!4885 (= (arr!2327 (_values!2959 newMap!16)) (store mapRest!4886 mapKey!4885 mapValue!4886))))

(declare-fun b!144045 () Bool)

(assert (=> b!144045 (= e!93868 tp_is_empty!2943)))

(assert (=> b!144046 (= e!93880 (and tp!11646 tp_is_empty!2943 (array_inv!1441 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (array_inv!1442 (_values!2959 (v!3308 (underlying!486 thiss!992)))) e!93869))))

(declare-fun mapNonEmpty!4886 () Bool)

(declare-fun tp!11647 () Bool)

(assert (=> mapNonEmpty!4886 (= mapRes!4886 (and tp!11647 e!93882))))

(declare-fun mapKey!4886 () (_ BitVec 32))

(declare-fun mapValue!4885 () ValueCell!1128)

(declare-fun mapRest!4885 () (Array (_ BitVec 32) ValueCell!1128))

(assert (=> mapNonEmpty!4886 (= (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (store mapRest!4885 mapKey!4886 mapValue!4885))))

(declare-fun b!144047 () Bool)

(declare-fun res!68603 () Bool)

(assert (=> b!144047 (=> (not res!68603) (not e!93873))))

(assert (=> b!144047 (= res!68603 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun b!144048 () Bool)

(assert (=> b!144048 (= e!93879 (not (contains!928 lt!75569 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144049 () Bool)

(assert (=> b!144049 (= e!93872 tp_is_empty!2943)))

(declare-fun b!144050 () Bool)

(declare-fun res!68601 () Bool)

(assert (=> b!144050 (=> res!68601 e!93883)))

(declare-fun noDuplicate!53 (List!1772) Bool)

(assert (=> b!144050 (= res!68601 (not (noDuplicate!53 lt!75569)))))

(assert (= (and start!14984 res!68604) b!144047))

(assert (= (and b!144047 res!68603) b!144039))

(assert (= (and b!144039 res!68600) b!144040))

(assert (= (and b!144040 res!68602) b!144037))

(assert (= (and b!144037 res!68597) b!144043))

(assert (= (and b!144043 res!68596) b!144044))

(assert (= (and b!144044 (not res!68598)) b!144050))

(assert (= (and b!144050 (not res!68601)) b!144041))

(assert (= (and b!144041 res!68599) b!144048))

(assert (= (and b!144042 condMapEmpty!4885) mapIsEmpty!4886))

(assert (= (and b!144042 (not condMapEmpty!4885)) mapNonEmpty!4886))

(get-info :version)

(assert (= (and mapNonEmpty!4886 ((_ is ValueCellFull!1128) mapValue!4885)) b!144036))

(assert (= (and b!144042 ((_ is ValueCellFull!1128) mapDefault!4886)) b!144045))

(assert (= b!144046 b!144042))

(assert (= b!144038 b!144046))

(assert (= b!144032 b!144038))

(assert (= start!14984 b!144032))

(assert (= (and b!144035 condMapEmpty!4886) mapIsEmpty!4885))

(assert (= (and b!144035 (not condMapEmpty!4886)) mapNonEmpty!4885))

(assert (= (and mapNonEmpty!4885 ((_ is ValueCellFull!1128) mapValue!4886)) b!144034))

(assert (= (and b!144035 ((_ is ValueCellFull!1128) mapDefault!4885)) b!144049))

(assert (= b!144033 b!144035))

(assert (= start!14984 b!144033))

(declare-fun b_lambda!6499 () Bool)

(assert (=> (not b_lambda!6499) (not b!144043)))

(declare-fun t!6405 () Bool)

(declare-fun tb!2597 () Bool)

(assert (=> (and b!144046 (= (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) t!6405) tb!2597))

(declare-fun result!4245 () Bool)

(assert (=> tb!2597 (= result!4245 tp_is_empty!2943)))

(assert (=> b!144043 t!6405))

(declare-fun b_and!9001 () Bool)

(assert (= b_and!8997 (and (=> t!6405 result!4245) b_and!9001)))

(declare-fun tb!2599 () Bool)

(declare-fun t!6407 () Bool)

(assert (=> (and b!144033 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) t!6407) tb!2599))

(declare-fun result!4249 () Bool)

(assert (= result!4249 result!4245))

(assert (=> b!144043 t!6407))

(declare-fun b_and!9003 () Bool)

(assert (= b_and!8999 (and (=> t!6407 result!4249) b_and!9003)))

(declare-fun m!173997 () Bool)

(assert (=> start!14984 m!173997))

(declare-fun m!173999 () Bool)

(assert (=> b!144041 m!173999))

(declare-fun m!174001 () Bool)

(assert (=> b!144039 m!174001))

(declare-fun m!174003 () Bool)

(assert (=> b!144046 m!174003))

(declare-fun m!174005 () Bool)

(assert (=> b!144046 m!174005))

(declare-fun m!174007 () Bool)

(assert (=> mapNonEmpty!4886 m!174007))

(declare-fun m!174009 () Bool)

(assert (=> b!144033 m!174009))

(declare-fun m!174011 () Bool)

(assert (=> b!144033 m!174011))

(declare-fun m!174013 () Bool)

(assert (=> b!144048 m!174013))

(declare-fun m!174015 () Bool)

(assert (=> b!144050 m!174015))

(declare-fun m!174017 () Bool)

(assert (=> b!144037 m!174017))

(declare-fun m!174019 () Bool)

(assert (=> b!144037 m!174019))

(declare-fun m!174021 () Bool)

(assert (=> b!144037 m!174021))

(declare-fun m!174023 () Bool)

(assert (=> mapNonEmpty!4885 m!174023))

(declare-fun m!174025 () Bool)

(assert (=> b!144044 m!174025))

(declare-fun m!174027 () Bool)

(assert (=> b!144044 m!174027))

(assert (=> b!144044 m!174017))

(declare-fun m!174029 () Bool)

(assert (=> b!144044 m!174029))

(assert (=> b!144044 m!174017))

(assert (=> b!144044 m!174017))

(declare-fun m!174031 () Bool)

(assert (=> b!144044 m!174031))

(declare-fun m!174033 () Bool)

(assert (=> b!144043 m!174033))

(declare-fun m!174035 () Bool)

(assert (=> b!144043 m!174035))

(declare-fun m!174037 () Bool)

(assert (=> b!144043 m!174037))

(assert (=> b!144043 m!174017))

(assert (=> b!144043 m!174035))

(assert (=> b!144043 m!174017))

(declare-fun m!174039 () Bool)

(assert (=> b!144043 m!174039))

(assert (=> b!144043 m!174017))

(assert (=> b!144043 m!174037))

(declare-fun m!174041 () Bool)

(assert (=> b!144043 m!174041))

(assert (=> b!144043 m!174033))

(check-sat b_and!9001 (not b!144050) tp_is_empty!2943 (not b!144041) (not b_lambda!6499) (not start!14984) (not b!144033) (not b_next!3053) (not mapNonEmpty!4886) (not b_next!3055) b_and!9003 (not b!144048) (not b!144044) (not b!144037) (not b!144043) (not mapNonEmpty!4885) (not b!144046) (not b!144039))
(check-sat b_and!9001 b_and!9003 (not b_next!3053) (not b_next!3055))
(get-model)

(declare-fun b_lambda!6503 () Bool)

(assert (= b_lambda!6499 (or (and b!144046 b_free!3053) (and b!144033 b_free!3055 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))))) b_lambda!6503)))

(check-sat b_and!9001 (not b!144050) tp_is_empty!2943 (not b!144041) (not b_lambda!6503) (not start!14984) (not b!144033) (not b_next!3053) (not mapNonEmpty!4886) (not b_next!3055) b_and!9003 (not b!144048) (not b!144044) (not b!144037) (not b!144043) (not mapNonEmpty!4885) (not b!144046) (not b!144039))
(check-sat b_and!9001 b_and!9003 (not b_next!3053) (not b_next!3055))
(get-model)

(declare-fun d!46013 () Bool)

(declare-fun e!93939 () Bool)

(assert (=> d!46013 e!93939))

(declare-fun res!68634 () Bool)

(assert (=> d!46013 (=> res!68634 e!93939)))

(declare-fun lt!75601 () Bool)

(assert (=> d!46013 (= res!68634 (not lt!75601))))

(declare-fun lt!75602 () Bool)

(assert (=> d!46013 (= lt!75601 lt!75602)))

(declare-fun lt!75603 () Unit!4571)

(declare-fun e!93940 () Unit!4571)

(assert (=> d!46013 (= lt!75603 e!93940)))

(declare-fun c!27285 () Bool)

(assert (=> d!46013 (= c!27285 lt!75602)))

(declare-fun containsKey!181 (List!1771 (_ BitVec 64)) Bool)

(assert (=> d!46013 (= lt!75602 (containsKey!181 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46013 (= (contains!929 lt!75572 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) lt!75601)))

(declare-fun b!144118 () Bool)

(declare-fun lt!75600 () Unit!4571)

(assert (=> b!144118 (= e!93940 lt!75600)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!130 (List!1771 (_ BitVec 64)) Unit!4571)

(assert (=> b!144118 (= lt!75600 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-datatypes ((Option!183 0))(
  ( (Some!182 (v!3313 V!3571)) (None!181) )
))
(declare-fun isDefined!131 (Option!183) Bool)

(declare-fun getValueByKey!177 (List!1771 (_ BitVec 64)) Option!183)

(assert (=> b!144118 (isDefined!131 (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144119 () Bool)

(declare-fun Unit!4575 () Unit!4571)

(assert (=> b!144119 (= e!93940 Unit!4575)))

(declare-fun b!144120 () Bool)

(assert (=> b!144120 (= e!93939 (isDefined!131 (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (= (and d!46013 c!27285) b!144118))

(assert (= (and d!46013 (not c!27285)) b!144119))

(assert (= (and d!46013 (not res!68634)) b!144120))

(assert (=> d!46013 m!174017))

(declare-fun m!174089 () Bool)

(assert (=> d!46013 m!174089))

(assert (=> b!144118 m!174017))

(declare-fun m!174091 () Bool)

(assert (=> b!144118 m!174091))

(assert (=> b!144118 m!174017))

(declare-fun m!174093 () Bool)

(assert (=> b!144118 m!174093))

(assert (=> b!144118 m!174093))

(declare-fun m!174095 () Bool)

(assert (=> b!144118 m!174095))

(assert (=> b!144120 m!174017))

(assert (=> b!144120 m!174093))

(assert (=> b!144120 m!174093))

(assert (=> b!144120 m!174095))

(assert (=> b!144043 d!46013))

(declare-fun bm!16016 () Bool)

(declare-fun call!16039 () Bool)

(declare-fun call!16020 () Bool)

(assert (=> bm!16016 (= call!16039 call!16020)))

(declare-fun bm!16017 () Bool)

(declare-fun call!16023 () Unit!4571)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!67 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) Int) Unit!4571)

(assert (=> bm!16017 (= call!16023 (lemmaInListMapThenSeekEntryOrOpenFindsIt!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(declare-fun bm!16018 () Bool)

(declare-fun call!16027 () ListLongMap!1753)

(declare-fun lt!75662 () tuple2!2696)

(assert (=> bm!16018 (= call!16027 (map!1445 (_2!1358 lt!75662)))))

(declare-datatypes ((SeekEntryResult!291 0))(
  ( (MissingZero!291 (index!3329 (_ BitVec 32))) (Found!291 (index!3330 (_ BitVec 32))) (Intermediate!291 (undefined!1103 Bool) (index!3331 (_ BitVec 32)) (x!16434 (_ BitVec 32))) (Undefined!291) (MissingVacant!291 (index!3332 (_ BitVec 32))) )
))
(declare-fun call!16022 () SeekEntryResult!291)

(declare-fun bm!16019 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4924 (_ BitVec 32)) SeekEntryResult!291)

(assert (=> bm!16019 (= call!16022 (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun bm!16020 () Bool)

(declare-fun call!16034 () ListLongMap!1753)

(declare-fun call!16032 () ListLongMap!1753)

(assert (=> bm!16020 (= call!16034 call!16032)))

(declare-fun bm!16021 () Bool)

(declare-fun call!16037 () Bool)

(assert (=> bm!16021 (= call!16037 call!16039)))

(declare-fun b!144205 () Bool)

(declare-fun e!93995 () Bool)

(declare-fun call!16028 () Bool)

(assert (=> b!144205 (= e!93995 (not call!16028))))

(declare-fun b!144206 () Bool)

(declare-fun e!93996 () Bool)

(declare-fun e!93993 () Bool)

(assert (=> b!144206 (= e!93996 e!93993)))

(declare-fun c!27317 () Bool)

(assert (=> b!144206 (= c!27317 (_1!1358 lt!75662))))

(declare-fun b!144207 () Bool)

(declare-fun lt!75660 () Unit!4571)

(declare-fun e!93997 () Unit!4571)

(assert (=> b!144207 (= lt!75660 e!93997)))

(declare-fun c!27323 () Bool)

(declare-fun call!16019 () Bool)

(assert (=> b!144207 (= c!27323 call!16019)))

(declare-fun e!93989 () tuple2!2696)

(assert (=> b!144207 (= e!93989 (tuple2!2697 false newMap!16))))

(declare-fun b!144208 () Bool)

(declare-fun e!93998 () ListLongMap!1753)

(declare-fun call!16036 () ListLongMap!1753)

(assert (=> b!144208 (= e!93998 call!16036)))

(declare-fun b!144209 () Bool)

(declare-fun e!94003 () tuple2!2696)

(declare-fun e!94004 () tuple2!2696)

(assert (=> b!144209 (= e!94003 e!94004)))

(declare-fun c!27316 () Bool)

(assert (=> b!144209 (= c!27316 (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144210 () Bool)

(declare-fun lt!75676 () Unit!4571)

(declare-fun lt!75672 () Unit!4571)

(assert (=> b!144210 (= lt!75676 lt!75672)))

(assert (=> b!144210 call!16019))

(declare-fun lt!75678 () array!4926)

(declare-fun lt!75663 () SeekEntryResult!291)

(declare-fun lemmaValidKeyInArrayIsInListMap!125 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) Int) Unit!4571)

(assert (=> b!144210 (= lt!75672 (lemmaValidKeyInArrayIsInListMap!125 (_keys!4741 newMap!16) lt!75678 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (defaultEntry!2976 newMap!16)))))

(assert (=> b!144210 (= lt!75678 (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))))))

(declare-fun lt!75673 () Unit!4571)

(declare-fun lt!75666 () Unit!4571)

(assert (=> b!144210 (= lt!75673 lt!75666)))

(declare-fun call!16025 () ListLongMap!1753)

(assert (=> b!144210 (= call!16032 call!16025)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!67 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) (_ BitVec 64) V!3571 Int) Unit!4571)

(assert (=> b!144210 (= lt!75666 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75669 () Unit!4571)

(declare-fun e!93991 () Unit!4571)

(assert (=> b!144210 (= lt!75669 e!93991)))

(declare-fun c!27327 () Bool)

(assert (=> b!144210 (= c!27327 (contains!929 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun e!94001 () tuple2!2696)

(assert (=> b!144210 (= e!94001 (tuple2!2697 true (LongMapFixedSize!1165 (defaultEntry!2976 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (_size!631 newMap!16) (_keys!4741 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))) (_vacant!631 newMap!16))))))

(declare-fun d!46015 () Bool)

(assert (=> d!46015 e!93996))

(declare-fun res!68666 () Bool)

(assert (=> d!46015 (=> (not res!68666) (not e!93996))))

(assert (=> d!46015 (= res!68666 (valid!563 (_2!1358 lt!75662)))))

(assert (=> d!46015 (= lt!75662 e!94003)))

(declare-fun c!27325 () Bool)

(assert (=> d!46015 (= c!27325 (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvneg (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (=> d!46015 (valid!563 newMap!16)))

(assert (=> d!46015 (= (update!212 newMap!16 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!75662)))

(declare-fun bm!16022 () Bool)

(declare-fun call!16042 () Bool)

(assert (=> bm!16022 (= call!16042 call!16020)))

(declare-fun b!144211 () Bool)

(declare-fun e!93994 () Bool)

(assert (=> b!144211 (= e!93994 (not call!16028))))

(declare-fun b!144212 () Bool)

(declare-fun call!16030 () ListLongMap!1753)

(assert (=> b!144212 (= e!93993 (= call!16027 call!16030))))

(declare-fun bm!16023 () Bool)

(declare-fun call!16041 () Bool)

(assert (=> bm!16023 (= call!16041 call!16042)))

(declare-fun b!144213 () Bool)

(declare-fun e!93987 () Bool)

(declare-fun call!16021 () Bool)

(assert (=> b!144213 (= e!93987 (not call!16021))))

(declare-fun b!144214 () Bool)

(declare-fun Unit!4576 () Unit!4571)

(assert (=> b!144214 (= e!93991 Unit!4576)))

(declare-fun lt!75682 () Unit!4571)

(declare-fun call!16024 () Unit!4571)

(assert (=> b!144214 (= lt!75682 call!16024)))

(declare-fun lt!75684 () SeekEntryResult!291)

(declare-fun call!16033 () SeekEntryResult!291)

(assert (=> b!144214 (= lt!75684 call!16033)))

(declare-fun c!27320 () Bool)

(assert (=> b!144214 (= c!27320 ((_ is MissingZero!291) lt!75684))))

(declare-fun e!94005 () Bool)

(assert (=> b!144214 e!94005))

(declare-fun lt!75668 () Unit!4571)

(assert (=> b!144214 (= lt!75668 lt!75682)))

(assert (=> b!144214 false))

(declare-fun b!144215 () Bool)

(assert (=> b!144215 (= e!93998 call!16025)))

(declare-fun call!16038 () ListLongMap!1753)

(declare-fun lt!75670 () (_ BitVec 32))

(declare-fun bm!16024 () Bool)

(declare-fun c!27318 () Bool)

(assert (=> bm!16024 (= call!16038 (getCurrentListMap!558 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun b!144216 () Bool)

(declare-fun res!68663 () Bool)

(assert (=> b!144216 (= res!68663 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3332 lt!75684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144216 (=> (not res!68663) (not e!93994))))

(declare-fun e!94000 () ListLongMap!1753)

(declare-fun bm!16025 () Bool)

(declare-fun +!176 (ListLongMap!1753 tuple2!2694) ListLongMap!1753)

(assert (=> bm!16025 (= call!16032 (+!176 e!94000 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!27314 () Bool)

(assert (=> bm!16025 (= c!27314 c!27325)))

(declare-fun b!144217 () Bool)

(declare-fun lt!75675 () tuple2!2696)

(declare-fun call!16029 () tuple2!2696)

(assert (=> b!144217 (= lt!75675 call!16029)))

(assert (=> b!144217 (= e!94001 (tuple2!2697 (_1!1358 lt!75675) (_2!1358 lt!75675)))))

(declare-fun b!144218 () Bool)

(declare-fun res!68670 () Bool)

(declare-fun lt!75674 () SeekEntryResult!291)

(assert (=> b!144218 (= res!68670 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3332 lt!75674)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144218 (=> (not res!68670) (not e!93987))))

(declare-fun b!144219 () Bool)

(declare-fun Unit!4577 () Unit!4571)

(assert (=> b!144219 (= e!93997 Unit!4577)))

(declare-fun lt!75677 () Unit!4571)

(assert (=> b!144219 (= lt!75677 call!16023)))

(declare-fun lt!75661 () SeekEntryResult!291)

(declare-fun call!16026 () SeekEntryResult!291)

(assert (=> b!144219 (= lt!75661 call!16026)))

(declare-fun res!68667 () Bool)

(assert (=> b!144219 (= res!68667 ((_ is Found!291) lt!75661))))

(declare-fun e!94006 () Bool)

(assert (=> b!144219 (=> (not res!68667) (not e!94006))))

(assert (=> b!144219 e!94006))

(declare-fun lt!75679 () Unit!4571)

(assert (=> b!144219 (= lt!75679 lt!75677)))

(assert (=> b!144219 false))

(declare-fun b!144220 () Bool)

(declare-fun e!93990 () Bool)

(assert (=> b!144220 (= e!93990 (not call!16021))))

(declare-fun b!144221 () Bool)

(declare-fun lt!75671 () Unit!4571)

(assert (=> b!144221 (= e!93991 lt!75671)))

(assert (=> b!144221 (= lt!75671 call!16023)))

(declare-fun lt!75665 () SeekEntryResult!291)

(assert (=> b!144221 (= lt!75665 call!16033)))

(declare-fun res!68675 () Bool)

(assert (=> b!144221 (= res!68675 ((_ is Found!291) lt!75665))))

(declare-fun e!94002 () Bool)

(assert (=> b!144221 (=> (not res!68675) (not e!94002))))

(assert (=> b!144221 e!94002))

(declare-fun b!144222 () Bool)

(declare-fun e!93988 () Bool)

(assert (=> b!144222 (= e!93988 e!93994)))

(declare-fun res!68671 () Bool)

(assert (=> b!144222 (= res!68671 call!16037)))

(assert (=> b!144222 (=> (not res!68671) (not e!93994))))

(declare-fun b!144223 () Bool)

(declare-fun c!27319 () Bool)

(assert (=> b!144223 (= c!27319 ((_ is MissingVacant!291) lt!75674))))

(declare-fun e!93992 () Bool)

(declare-fun e!93999 () Bool)

(assert (=> b!144223 (= e!93992 e!93999)))

(declare-fun c!27315 () Bool)

(declare-fun bm!16026 () Bool)

(declare-fun updateHelperNewKey!67 (LongMapFixedSize!1164 (_ BitVec 64) V!3571 (_ BitVec 32)) tuple2!2696)

(assert (=> bm!16026 (= call!16029 (updateHelperNewKey!67 newMap!16 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663))))))

(declare-fun bm!16027 () Bool)

(declare-fun c!27321 () Bool)

(assert (=> bm!16027 (= c!27321 c!27318)))

(assert (=> bm!16027 (= call!16019 (contains!929 e!93998 (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663)))))))

(declare-fun b!144224 () Bool)

(assert (=> b!144224 (= e!93988 ((_ is Undefined!291) lt!75684))))

(declare-fun bm!16028 () Bool)

(assert (=> bm!16028 (= call!16026 call!16022)))

(declare-fun bm!16029 () Bool)

(declare-fun c!27324 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!16029 (= call!16020 (inRange!0 (ite c!27318 (ite c!27323 (index!3330 lt!75661) (ite c!27324 (index!3329 lt!75674) (index!3332 lt!75674))) (ite c!27327 (index!3330 lt!75665) (ite c!27320 (index!3329 lt!75684) (index!3332 lt!75684)))) (mask!7334 newMap!16)))))

(declare-fun bm!16030 () Bool)

(assert (=> bm!16030 (= call!16033 call!16022)))

(declare-fun b!144225 () Bool)

(assert (=> b!144225 (= e!94006 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75661)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun bm!16031 () Bool)

(declare-fun call!16031 () Bool)

(assert (=> bm!16031 (= call!16021 call!16031)))

(declare-fun b!144226 () Bool)

(assert (=> b!144226 (= e!93999 e!93987)))

(declare-fun res!68676 () Bool)

(assert (=> b!144226 (= res!68676 call!16041)))

(assert (=> b!144226 (=> (not res!68676) (not e!93987))))

(declare-fun b!144227 () Bool)

(declare-fun c!27326 () Bool)

(assert (=> b!144227 (= c!27326 ((_ is MissingVacant!291) lt!75684))))

(assert (=> b!144227 (= e!94005 e!93988)))

(declare-fun b!144228 () Bool)

(assert (=> b!144228 (= e!94003 e!93989)))

(assert (=> b!144228 (= lt!75663 (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(assert (=> b!144228 (= c!27318 ((_ is Undefined!291) lt!75663))))

(declare-fun b!144229 () Bool)

(assert (=> b!144229 (= c!27315 ((_ is MissingVacant!291) lt!75663))))

(declare-fun e!93985 () tuple2!2696)

(assert (=> b!144229 (= e!93989 e!93985)))

(declare-fun b!144230 () Bool)

(declare-fun lt!75683 () Unit!4571)

(declare-fun lt!75681 () Unit!4571)

(assert (=> b!144230 (= lt!75683 lt!75681)))

(declare-fun call!16040 () ListLongMap!1753)

(assert (=> b!144230 (= call!16034 call!16040)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!67 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 V!3571 Int) Unit!4571)

(assert (=> b!144230 (= lt!75681 (lemmaChangeZeroKeyThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75670 (zeroValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2823 newMap!16) (defaultEntry!2976 newMap!16)))))

(assert (=> b!144230 (= lt!75670 (bvor (extraKeys!2725 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!144230 (= e!94004 (tuple2!2697 true (LongMapFixedSize!1165 (defaultEntry!2976 newMap!16) (mask!7334 newMap!16) (bvor (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2823 newMap!16) (_size!631 newMap!16) (_keys!4741 newMap!16) (_values!2959 newMap!16) (_vacant!631 newMap!16))))))

(declare-fun b!144231 () Bool)

(declare-fun e!93986 () Bool)

(assert (=> b!144231 (= e!93993 e!93986)))

(declare-fun res!68672 () Bool)

(assert (=> b!144231 (= res!68672 (contains!929 call!16027 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> b!144231 (=> (not res!68672) (not e!93986))))

(declare-fun bm!16032 () Bool)

(assert (=> bm!16032 (= call!16028 call!16031)))

(declare-fun bm!16033 () Bool)

(assert (=> bm!16033 (= call!16031 (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!16034 () Bool)

(assert (=> bm!16034 (= call!16025 call!16038)))

(declare-fun b!144232 () Bool)

(assert (=> b!144232 (= e!94000 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun bm!16035 () Bool)

(assert (=> bm!16035 (= call!16030 (map!1445 newMap!16))))

(declare-fun b!144233 () Bool)

(declare-fun res!68664 () Bool)

(assert (=> b!144233 (=> (not res!68664) (not e!93995))))

(assert (=> b!144233 (= res!68664 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3329 lt!75684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144234 () Bool)

(assert (=> b!144234 (= e!93986 (= call!16027 (+!176 call!16030 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!144235 () Bool)

(declare-fun call!16035 () ListLongMap!1753)

(assert (=> b!144235 (= e!94000 (ite c!27316 call!16035 call!16040))))

(declare-fun bm!16036 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!67 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) Int) Unit!4571)

(assert (=> bm!16036 (= call!16024 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(declare-fun b!144236 () Bool)

(declare-fun res!68668 () Bool)

(assert (=> b!144236 (=> (not res!68668) (not e!93990))))

(assert (=> b!144236 (= res!68668 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3329 lt!75674)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144237 () Bool)

(declare-fun res!68674 () Bool)

(assert (=> b!144237 (=> (not res!68674) (not e!93990))))

(assert (=> b!144237 (= res!68674 call!16041)))

(assert (=> b!144237 (= e!93992 e!93990)))

(declare-fun b!144238 () Bool)

(assert (=> b!144238 (= e!93985 e!94001)))

(declare-fun c!27322 () Bool)

(assert (=> b!144238 (= c!27322 ((_ is MissingZero!291) lt!75663))))

(declare-fun b!144239 () Bool)

(assert (=> b!144239 (= e!94002 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75665)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144240 () Bool)

(declare-fun res!68669 () Bool)

(assert (=> b!144240 (= res!68669 call!16042)))

(assert (=> b!144240 (=> (not res!68669) (not e!94006))))

(declare-fun bm!16037 () Bool)

(assert (=> bm!16037 (= call!16035 call!16036)))

(declare-fun b!144241 () Bool)

(declare-fun lt!75680 () Unit!4571)

(assert (=> b!144241 (= e!93997 lt!75680)))

(assert (=> b!144241 (= lt!75680 call!16024)))

(assert (=> b!144241 (= lt!75674 call!16026)))

(assert (=> b!144241 (= c!27324 ((_ is MissingZero!291) lt!75674))))

(assert (=> b!144241 e!93992))

(declare-fun lt!75659 () (_ BitVec 32))

(declare-fun bm!16038 () Bool)

(assert (=> bm!16038 (= call!16036 (getCurrentListMap!558 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun b!144242 () Bool)

(declare-fun lt!75658 () Unit!4571)

(declare-fun lt!75664 () Unit!4571)

(assert (=> b!144242 (= lt!75658 lt!75664)))

(assert (=> b!144242 (= call!16034 call!16035)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!67 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 V!3571 Int) Unit!4571)

(assert (=> b!144242 (= lt!75664 (lemmaChangeLongMinValueKeyThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75659 (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)))))

(assert (=> b!144242 (= lt!75659 (bvor (extraKeys!2725 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!144242 (= e!94004 (tuple2!2697 true (LongMapFixedSize!1165 (defaultEntry!2976 newMap!16) (mask!7334 newMap!16) (bvor (extraKeys!2725 newMap!16) #b00000000000000000000000000000010) (zeroValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!631 newMap!16) (_keys!4741 newMap!16) (_values!2959 newMap!16) (_vacant!631 newMap!16))))))

(declare-fun b!144243 () Bool)

(declare-fun res!68673 () Bool)

(assert (=> b!144243 (=> (not res!68673) (not e!93995))))

(assert (=> b!144243 (= res!68673 call!16037)))

(assert (=> b!144243 (= e!94005 e!93995)))

(declare-fun b!144244 () Bool)

(declare-fun lt!75667 () tuple2!2696)

(assert (=> b!144244 (= e!93985 (tuple2!2697 (_1!1358 lt!75667) (_2!1358 lt!75667)))))

(assert (=> b!144244 (= lt!75667 call!16029)))

(declare-fun b!144245 () Bool)

(declare-fun res!68665 () Bool)

(assert (=> b!144245 (= res!68665 call!16039)))

(assert (=> b!144245 (=> (not res!68665) (not e!94002))))

(declare-fun b!144246 () Bool)

(assert (=> b!144246 (= e!93999 ((_ is Undefined!291) lt!75674))))

(declare-fun bm!16039 () Bool)

(assert (=> bm!16039 (= call!16040 call!16038)))

(assert (= (and d!46015 c!27325) b!144209))

(assert (= (and d!46015 (not c!27325)) b!144228))

(assert (= (and b!144209 c!27316) b!144230))

(assert (= (and b!144209 (not c!27316)) b!144242))

(assert (= (or b!144230 b!144242) bm!16037))

(assert (= (or b!144230 b!144242) bm!16039))

(assert (= (or b!144230 b!144242) bm!16020))

(assert (= (and b!144228 c!27318) b!144207))

(assert (= (and b!144228 (not c!27318)) b!144229))

(assert (= (and b!144207 c!27323) b!144219))

(assert (= (and b!144207 (not c!27323)) b!144241))

(assert (= (and b!144219 res!68667) b!144240))

(assert (= (and b!144240 res!68669) b!144225))

(assert (= (and b!144241 c!27324) b!144237))

(assert (= (and b!144241 (not c!27324)) b!144223))

(assert (= (and b!144237 res!68674) b!144236))

(assert (= (and b!144236 res!68668) b!144220))

(assert (= (and b!144223 c!27319) b!144226))

(assert (= (and b!144223 (not c!27319)) b!144246))

(assert (= (and b!144226 res!68676) b!144218))

(assert (= (and b!144218 res!68670) b!144213))

(assert (= (or b!144237 b!144226) bm!16023))

(assert (= (or b!144220 b!144213) bm!16031))

(assert (= (or b!144240 bm!16023) bm!16022))

(assert (= (or b!144219 b!144241) bm!16028))

(assert (= (and b!144229 c!27315) b!144244))

(assert (= (and b!144229 (not c!27315)) b!144238))

(assert (= (and b!144238 c!27322) b!144217))

(assert (= (and b!144238 (not c!27322)) b!144210))

(assert (= (and b!144210 c!27327) b!144221))

(assert (= (and b!144210 (not c!27327)) b!144214))

(assert (= (and b!144221 res!68675) b!144245))

(assert (= (and b!144245 res!68665) b!144239))

(assert (= (and b!144214 c!27320) b!144243))

(assert (= (and b!144214 (not c!27320)) b!144227))

(assert (= (and b!144243 res!68673) b!144233))

(assert (= (and b!144233 res!68664) b!144205))

(assert (= (and b!144227 c!27326) b!144222))

(assert (= (and b!144227 (not c!27326)) b!144224))

(assert (= (and b!144222 res!68671) b!144216))

(assert (= (and b!144216 res!68663) b!144211))

(assert (= (or b!144243 b!144222) bm!16021))

(assert (= (or b!144205 b!144211) bm!16032))

(assert (= (or b!144245 bm!16021) bm!16016))

(assert (= (or b!144221 b!144214) bm!16030))

(assert (= (or b!144244 b!144217) bm!16026))

(assert (= (or bm!16028 bm!16030) bm!16019))

(assert (= (or b!144219 b!144221) bm!16017))

(assert (= (or bm!16031 bm!16032) bm!16033))

(assert (= (or b!144207 b!144210) bm!16034))

(assert (= (or bm!16022 bm!16016) bm!16029))

(assert (= (or b!144241 b!144214) bm!16036))

(assert (= (or b!144207 b!144210) bm!16027))

(assert (= (and bm!16027 c!27321) b!144215))

(assert (= (and bm!16027 (not c!27321)) b!144208))

(assert (= (or bm!16037 b!144208) bm!16038))

(assert (= (or bm!16039 bm!16034) bm!16024))

(assert (= (or bm!16020 b!144210) bm!16025))

(assert (= (and bm!16025 c!27314) b!144235))

(assert (= (and bm!16025 (not c!27314)) b!144232))

(assert (= (and d!46015 res!68666) b!144206))

(assert (= (and b!144206 c!27317) b!144231))

(assert (= (and b!144206 (not c!27317)) b!144212))

(assert (= (and b!144231 res!68672) b!144234))

(assert (= (or b!144234 b!144212) bm!16035))

(assert (= (or b!144231 b!144234 b!144212) bm!16018))

(declare-fun m!174097 () Bool)

(assert (=> b!144239 m!174097))

(assert (=> b!144230 m!174037))

(declare-fun m!174099 () Bool)

(assert (=> b!144230 m!174099))

(declare-fun m!174101 () Bool)

(assert (=> b!144232 m!174101))

(declare-fun m!174103 () Bool)

(assert (=> b!144218 m!174103))

(assert (=> bm!16017 m!174017))

(declare-fun m!174105 () Bool)

(assert (=> bm!16017 m!174105))

(assert (=> bm!16036 m!174017))

(declare-fun m!174107 () Bool)

(assert (=> bm!16036 m!174107))

(assert (=> bm!16019 m!174017))

(declare-fun m!174109 () Bool)

(assert (=> bm!16019 m!174109))

(declare-fun m!174111 () Bool)

(assert (=> d!46015 m!174111))

(assert (=> d!46015 m!174001))

(declare-fun m!174113 () Bool)

(assert (=> bm!16018 m!174113))

(assert (=> b!144210 m!174101))

(assert (=> b!144210 m!174017))

(declare-fun m!174115 () Bool)

(assert (=> b!144210 m!174115))

(assert (=> b!144210 m!174101))

(declare-fun m!174117 () Bool)

(assert (=> b!144210 m!174117))

(declare-fun m!174119 () Bool)

(assert (=> b!144210 m!174119))

(assert (=> b!144210 m!174017))

(assert (=> b!144210 m!174037))

(declare-fun m!174121 () Bool)

(assert (=> b!144210 m!174121))

(assert (=> b!144228 m!174017))

(assert (=> b!144228 m!174109))

(declare-fun m!174123 () Bool)

(assert (=> b!144225 m!174123))

(declare-fun m!174125 () Bool)

(assert (=> b!144233 m!174125))

(declare-fun m!174127 () Bool)

(assert (=> bm!16038 m!174127))

(declare-fun m!174129 () Bool)

(assert (=> b!144236 m!174129))

(assert (=> bm!16024 m!174119))

(declare-fun m!174131 () Bool)

(assert (=> bm!16024 m!174131))

(assert (=> bm!16035 m!174019))

(declare-fun m!174133 () Bool)

(assert (=> bm!16025 m!174133))

(assert (=> b!144242 m!174037))

(declare-fun m!174135 () Bool)

(assert (=> b!144242 m!174135))

(assert (=> bm!16033 m!174017))

(declare-fun m!174137 () Bool)

(assert (=> bm!16033 m!174137))

(declare-fun m!174139 () Bool)

(assert (=> bm!16027 m!174139))

(declare-fun m!174141 () Bool)

(assert (=> bm!16027 m!174141))

(assert (=> bm!16026 m!174017))

(assert (=> bm!16026 m!174037))

(declare-fun m!174143 () Bool)

(assert (=> bm!16026 m!174143))

(assert (=> b!144231 m!174017))

(declare-fun m!174145 () Bool)

(assert (=> b!144231 m!174145))

(declare-fun m!174147 () Bool)

(assert (=> bm!16029 m!174147))

(declare-fun m!174149 () Bool)

(assert (=> b!144216 m!174149))

(declare-fun m!174151 () Bool)

(assert (=> b!144234 m!174151))

(assert (=> b!144043 d!46015))

(declare-fun d!46017 () Bool)

(declare-fun c!27330 () Bool)

(assert (=> d!46017 (= c!27330 ((_ is ValueCellFull!1128) (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun e!94009 () V!3571)

(assert (=> d!46017 (= (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!94009)))

(declare-fun b!144251 () Bool)

(declare-fun get!1548 (ValueCell!1128 V!3571) V!3571)

(assert (=> b!144251 (= e!94009 (get!1548 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144252 () Bool)

(declare-fun get!1549 (ValueCell!1128 V!3571) V!3571)

(assert (=> b!144252 (= e!94009 (get!1549 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46017 c!27330) b!144251))

(assert (= (and d!46017 (not c!27330)) b!144252))

(assert (=> b!144251 m!174033))

(assert (=> b!144251 m!174035))

(declare-fun m!174153 () Bool)

(assert (=> b!144251 m!174153))

(assert (=> b!144252 m!174033))

(assert (=> b!144252 m!174035))

(declare-fun m!174155 () Bool)

(assert (=> b!144252 m!174155))

(assert (=> b!144043 d!46017))

(declare-fun d!46019 () Bool)

(assert (=> d!46019 (= (map!1445 newMap!16) (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun bs!6095 () Bool)

(assert (= bs!6095 d!46019))

(assert (=> bs!6095 m!174101))

(assert (=> b!144037 d!46019))

(declare-fun b!144295 () Bool)

(declare-fun res!68695 () Bool)

(declare-fun e!94040 () Bool)

(assert (=> b!144295 (=> (not res!68695) (not e!94040))))

(declare-fun e!94037 () Bool)

(assert (=> b!144295 (= res!68695 e!94037)))

(declare-fun res!68696 () Bool)

(assert (=> b!144295 (=> res!68696 e!94037)))

(declare-fun e!94036 () Bool)

(assert (=> b!144295 (= res!68696 (not e!94036))))

(declare-fun res!68699 () Bool)

(assert (=> b!144295 (=> (not res!68699) (not e!94036))))

(assert (=> b!144295 (= res!68699 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun bm!16054 () Bool)

(declare-fun call!16063 () Bool)

(declare-fun lt!75733 () ListLongMap!1753)

(assert (=> bm!16054 (= call!16063 (contains!929 lt!75733 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16055 () Bool)

(declare-fun call!16062 () Bool)

(assert (=> bm!16055 (= call!16062 (contains!929 lt!75733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144296 () Bool)

(declare-fun e!94046 () Bool)

(declare-fun apply!122 (ListLongMap!1753 (_ BitVec 64)) V!3571)

(assert (=> b!144296 (= e!94046 (= (apply!122 lt!75733 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun bm!16056 () Bool)

(declare-fun call!16059 () ListLongMap!1753)

(declare-fun getCurrentListMapNoExtraKeys!143 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) Int) ListLongMap!1753)

(assert (=> bm!16056 (= call!16059 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144297 () Bool)

(declare-fun e!94047 () Bool)

(assert (=> b!144297 (= e!94047 (not call!16063))))

(declare-fun b!144298 () Bool)

(declare-fun e!94048 () Bool)

(assert (=> b!144298 (= e!94048 e!94046)))

(declare-fun res!68697 () Bool)

(assert (=> b!144298 (= res!68697 call!16062)))

(assert (=> b!144298 (=> (not res!68697) (not e!94046))))

(declare-fun b!144299 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!144299 (= e!94036 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!16057 () Bool)

(declare-fun call!16058 () ListLongMap!1753)

(assert (=> bm!16057 (= call!16058 call!16059)))

(declare-fun b!144300 () Bool)

(declare-fun e!94043 () ListLongMap!1753)

(declare-fun call!16057 () ListLongMap!1753)

(assert (=> b!144300 (= e!94043 call!16057)))

(declare-fun d!46021 () Bool)

(assert (=> d!46021 e!94040))

(declare-fun res!68698 () Bool)

(assert (=> d!46021 (=> (not res!68698) (not e!94040))))

(assert (=> d!46021 (= res!68698 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun lt!75732 () ListLongMap!1753)

(assert (=> d!46021 (= lt!75733 lt!75732)))

(declare-fun lt!75745 () Unit!4571)

(declare-fun e!94041 () Unit!4571)

(assert (=> d!46021 (= lt!75745 e!94041)))

(declare-fun c!27344 () Bool)

(declare-fun e!94044 () Bool)

(assert (=> d!46021 (= c!27344 e!94044)))

(declare-fun res!68703 () Bool)

(assert (=> d!46021 (=> (not res!68703) (not e!94044))))

(assert (=> d!46021 (= res!68703 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun e!94042 () ListLongMap!1753)

(assert (=> d!46021 (= lt!75732 e!94042)))

(declare-fun c!27346 () Bool)

(assert (=> d!46021 (= c!27346 (and (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!46021 (validMask!0 (mask!7334 (v!3308 (underlying!486 thiss!992))))))

(assert (=> d!46021 (= (getCurrentListMap!558 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) lt!75733)))

(declare-fun b!144301 () Bool)

(declare-fun e!94038 () ListLongMap!1753)

(declare-fun call!16060 () ListLongMap!1753)

(assert (=> b!144301 (= e!94038 call!16060)))

(declare-fun c!27348 () Bool)

(declare-fun call!16061 () ListLongMap!1753)

(declare-fun bm!16058 () Bool)

(assert (=> bm!16058 (= call!16061 (+!176 (ite c!27346 call!16059 (ite c!27348 call!16058 call!16060)) (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun b!144302 () Bool)

(declare-fun lt!75747 () Unit!4571)

(assert (=> b!144302 (= e!94041 lt!75747)))

(declare-fun lt!75748 () ListLongMap!1753)

(assert (=> b!144302 (= lt!75748 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun lt!75731 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75731 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75737 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75737 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75730 () Unit!4571)

(declare-fun addStillContains!98 (ListLongMap!1753 (_ BitVec 64) V!3571 (_ BitVec 64)) Unit!4571)

(assert (=> b!144302 (= lt!75730 (addStillContains!98 lt!75748 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75737))))

(assert (=> b!144302 (contains!929 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75737)))

(declare-fun lt!75743 () Unit!4571)

(assert (=> b!144302 (= lt!75743 lt!75730)))

(declare-fun lt!75729 () ListLongMap!1753)

(assert (=> b!144302 (= lt!75729 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun lt!75739 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75739 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75746 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75746 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75749 () Unit!4571)

(declare-fun addApplyDifferent!98 (ListLongMap!1753 (_ BitVec 64) V!3571 (_ BitVec 64)) Unit!4571)

(assert (=> b!144302 (= lt!75749 (addApplyDifferent!98 lt!75729 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75746))))

(assert (=> b!144302 (= (apply!122 (+!176 lt!75729 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75746) (apply!122 lt!75729 lt!75746))))

(declare-fun lt!75750 () Unit!4571)

(assert (=> b!144302 (= lt!75750 lt!75749)))

(declare-fun lt!75741 () ListLongMap!1753)

(assert (=> b!144302 (= lt!75741 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun lt!75742 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75742 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75734 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75734 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!75735 () Unit!4571)

(assert (=> b!144302 (= lt!75735 (addApplyDifferent!98 lt!75741 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75734))))

(assert (=> b!144302 (= (apply!122 (+!176 lt!75741 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75734) (apply!122 lt!75741 lt!75734))))

(declare-fun lt!75740 () Unit!4571)

(assert (=> b!144302 (= lt!75740 lt!75735)))

(declare-fun lt!75736 () ListLongMap!1753)

(assert (=> b!144302 (= lt!75736 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun lt!75744 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75744 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75738 () (_ BitVec 64))

(assert (=> b!144302 (= lt!75738 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!144302 (= lt!75747 (addApplyDifferent!98 lt!75736 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75738))))

(assert (=> b!144302 (= (apply!122 (+!176 lt!75736 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75738) (apply!122 lt!75736 lt!75738))))

(declare-fun b!144303 () Bool)

(declare-fun res!68700 () Bool)

(assert (=> b!144303 (=> (not res!68700) (not e!94040))))

(assert (=> b!144303 (= res!68700 e!94048)))

(declare-fun c!27347 () Bool)

(assert (=> b!144303 (= c!27347 (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!144304 () Bool)

(assert (=> b!144304 (= e!94044 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!16059 () Bool)

(assert (=> bm!16059 (= call!16060 call!16058)))

(declare-fun b!144305 () Bool)

(assert (=> b!144305 (= e!94040 e!94047)))

(declare-fun c!27343 () Bool)

(assert (=> b!144305 (= c!27343 (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144306 () Bool)

(declare-fun e!94039 () Bool)

(assert (=> b!144306 (= e!94037 e!94039)))

(declare-fun res!68702 () Bool)

(assert (=> b!144306 (=> (not res!68702) (not e!94039))))

(assert (=> b!144306 (= res!68702 (contains!929 lt!75733 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!144306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144307 () Bool)

(declare-fun e!94045 () Bool)

(assert (=> b!144307 (= e!94047 e!94045)))

(declare-fun res!68701 () Bool)

(assert (=> b!144307 (= res!68701 call!16063)))

(assert (=> b!144307 (=> (not res!68701) (not e!94045))))

(declare-fun b!144308 () Bool)

(declare-fun Unit!4578 () Unit!4571)

(assert (=> b!144308 (= e!94041 Unit!4578)))

(declare-fun b!144309 () Bool)

(assert (=> b!144309 (= e!94039 (= (apply!122 lt!75733 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144309 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2601 (_values!2959 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> b!144309 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun bm!16060 () Bool)

(assert (=> bm!16060 (= call!16057 call!16061)))

(declare-fun b!144310 () Bool)

(assert (=> b!144310 (= e!94042 (+!176 call!16061 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144311 () Bool)

(assert (=> b!144311 (= e!94045 (= (apply!122 lt!75733 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144312 () Bool)

(assert (=> b!144312 (= e!94042 e!94043)))

(assert (=> b!144312 (= c!27348 (and (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144313 () Bool)

(assert (=> b!144313 (= e!94038 call!16057)))

(declare-fun b!144314 () Bool)

(declare-fun c!27345 () Bool)

(assert (=> b!144314 (= c!27345 (and (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!144314 (= e!94043 e!94038)))

(declare-fun b!144315 () Bool)

(assert (=> b!144315 (= e!94048 (not call!16062))))

(assert (= (and d!46021 c!27346) b!144310))

(assert (= (and d!46021 (not c!27346)) b!144312))

(assert (= (and b!144312 c!27348) b!144300))

(assert (= (and b!144312 (not c!27348)) b!144314))

(assert (= (and b!144314 c!27345) b!144313))

(assert (= (and b!144314 (not c!27345)) b!144301))

(assert (= (or b!144313 b!144301) bm!16059))

(assert (= (or b!144300 bm!16059) bm!16057))

(assert (= (or b!144300 b!144313) bm!16060))

(assert (= (or b!144310 bm!16057) bm!16056))

(assert (= (or b!144310 bm!16060) bm!16058))

(assert (= (and d!46021 res!68703) b!144304))

(assert (= (and d!46021 c!27344) b!144302))

(assert (= (and d!46021 (not c!27344)) b!144308))

(assert (= (and d!46021 res!68698) b!144295))

(assert (= (and b!144295 res!68699) b!144299))

(assert (= (and b!144295 (not res!68696)) b!144306))

(assert (= (and b!144306 res!68702) b!144309))

(assert (= (and b!144295 res!68695) b!144303))

(assert (= (and b!144303 c!27347) b!144298))

(assert (= (and b!144303 (not c!27347)) b!144315))

(assert (= (and b!144298 res!68697) b!144296))

(assert (= (or b!144298 b!144315) bm!16055))

(assert (= (and b!144303 res!68700) b!144305))

(assert (= (and b!144305 c!27343) b!144307))

(assert (= (and b!144305 (not c!27343)) b!144297))

(assert (= (and b!144307 res!68701) b!144311))

(assert (= (or b!144307 b!144297) bm!16054))

(declare-fun b_lambda!6505 () Bool)

(assert (=> (not b_lambda!6505) (not b!144309)))

(assert (=> b!144309 t!6405))

(declare-fun b_and!9013 () Bool)

(assert (= b_and!9001 (and (=> t!6405 result!4245) b_and!9013)))

(assert (=> b!144309 t!6407))

(declare-fun b_and!9015 () Bool)

(assert (= b_and!9003 (and (=> t!6407 result!4249) b_and!9015)))

(declare-fun m!174157 () Bool)

(assert (=> b!144311 m!174157))

(declare-fun m!174159 () Bool)

(assert (=> bm!16058 m!174159))

(declare-fun m!174161 () Bool)

(assert (=> bm!16055 m!174161))

(declare-fun m!174163 () Bool)

(assert (=> b!144296 m!174163))

(declare-fun m!174165 () Bool)

(assert (=> b!144309 m!174165))

(declare-fun m!174167 () Bool)

(assert (=> b!144309 m!174167))

(assert (=> b!144309 m!174165))

(assert (=> b!144309 m!174035))

(declare-fun m!174169 () Bool)

(assert (=> b!144309 m!174169))

(assert (=> b!144309 m!174169))

(assert (=> b!144309 m!174035))

(declare-fun m!174171 () Bool)

(assert (=> b!144309 m!174171))

(declare-fun m!174173 () Bool)

(assert (=> b!144310 m!174173))

(assert (=> b!144304 m!174165))

(assert (=> b!144304 m!174165))

(declare-fun m!174175 () Bool)

(assert (=> b!144304 m!174175))

(declare-fun m!174177 () Bool)

(assert (=> bm!16056 m!174177))

(declare-fun m!174179 () Bool)

(assert (=> bm!16054 m!174179))

(declare-fun m!174181 () Bool)

(assert (=> b!144302 m!174181))

(declare-fun m!174183 () Bool)

(assert (=> b!144302 m!174183))

(declare-fun m!174185 () Bool)

(assert (=> b!144302 m!174185))

(declare-fun m!174187 () Bool)

(assert (=> b!144302 m!174187))

(declare-fun m!174189 () Bool)

(assert (=> b!144302 m!174189))

(declare-fun m!174191 () Bool)

(assert (=> b!144302 m!174191))

(declare-fun m!174193 () Bool)

(assert (=> b!144302 m!174193))

(declare-fun m!174195 () Bool)

(assert (=> b!144302 m!174195))

(declare-fun m!174197 () Bool)

(assert (=> b!144302 m!174197))

(declare-fun m!174199 () Bool)

(assert (=> b!144302 m!174199))

(assert (=> b!144302 m!174165))

(declare-fun m!174201 () Bool)

(assert (=> b!144302 m!174201))

(declare-fun m!174203 () Bool)

(assert (=> b!144302 m!174203))

(declare-fun m!174205 () Bool)

(assert (=> b!144302 m!174205))

(declare-fun m!174207 () Bool)

(assert (=> b!144302 m!174207))

(assert (=> b!144302 m!174189))

(assert (=> b!144302 m!174205))

(assert (=> b!144302 m!174187))

(declare-fun m!174209 () Bool)

(assert (=> b!144302 m!174209))

(assert (=> b!144302 m!174201))

(assert (=> b!144302 m!174177))

(assert (=> b!144306 m!174165))

(assert (=> b!144306 m!174165))

(declare-fun m!174211 () Bool)

(assert (=> b!144306 m!174211))

(declare-fun m!174213 () Bool)

(assert (=> d!46021 m!174213))

(assert (=> b!144299 m!174165))

(assert (=> b!144299 m!174165))

(assert (=> b!144299 m!174175))

(assert (=> b!144037 d!46021))

(declare-fun d!46023 () Bool)

(declare-fun res!68708 () Bool)

(declare-fun e!94053 () Bool)

(assert (=> d!46023 (=> res!68708 e!94053)))

(assert (=> d!46023 (= res!68708 ((_ is Nil!1769) lt!75569))))

(assert (=> d!46023 (= (noDuplicate!53 lt!75569) e!94053)))

(declare-fun b!144320 () Bool)

(declare-fun e!94054 () Bool)

(assert (=> b!144320 (= e!94053 e!94054)))

(declare-fun res!68709 () Bool)

(assert (=> b!144320 (=> (not res!68709) (not e!94054))))

(assert (=> b!144320 (= res!68709 (not (contains!928 (t!6409 lt!75569) (h!2376 lt!75569))))))

(declare-fun b!144321 () Bool)

(assert (=> b!144321 (= e!94054 (noDuplicate!53 (t!6409 lt!75569)))))

(assert (= (and d!46023 (not res!68708)) b!144320))

(assert (= (and b!144320 res!68709) b!144321))

(declare-fun m!174215 () Bool)

(assert (=> b!144320 m!174215))

(declare-fun m!174217 () Bool)

(assert (=> b!144321 m!174217))

(assert (=> b!144050 d!46023))

(declare-fun d!46025 () Bool)

(assert (=> d!46025 (= (array_inv!1441 (_keys!4741 newMap!16)) (bvsge (size!2600 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144033 d!46025))

(declare-fun d!46027 () Bool)

(assert (=> d!46027 (= (array_inv!1442 (_values!2959 newMap!16)) (bvsge (size!2601 (_values!2959 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144033 d!46027))

(declare-fun d!46029 () Bool)

(assert (=> d!46029 (= (array_inv!1441 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvsge (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!144046 d!46029))

(declare-fun d!46031 () Bool)

(assert (=> d!46031 (= (array_inv!1442 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvsge (size!2601 (_values!2959 (v!3308 (underlying!486 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!144046 d!46031))

(declare-fun d!46033 () Bool)

(declare-fun res!68716 () Bool)

(declare-fun e!94057 () Bool)

(assert (=> d!46033 (=> (not res!68716) (not e!94057))))

(declare-fun simpleValid!97 (LongMapFixedSize!1164) Bool)

(assert (=> d!46033 (= res!68716 (simpleValid!97 newMap!16))))

(assert (=> d!46033 (= (valid!563 newMap!16) e!94057)))

(declare-fun b!144328 () Bool)

(declare-fun res!68717 () Bool)

(assert (=> b!144328 (=> (not res!68717) (not e!94057))))

(declare-fun arrayCountValidKeys!0 (array!4924 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!144328 (= res!68717 (= (arrayCountValidKeys!0 (_keys!4741 newMap!16) #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (_size!631 newMap!16)))))

(declare-fun b!144329 () Bool)

(declare-fun res!68718 () Bool)

(assert (=> b!144329 (=> (not res!68718) (not e!94057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4924 (_ BitVec 32)) Bool)

(assert (=> b!144329 (= res!68718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun b!144330 () Bool)

(assert (=> b!144330 (= e!94057 (arrayNoDuplicates!0 (_keys!4741 newMap!16) #b00000000000000000000000000000000 Nil!1769))))

(assert (= (and d!46033 res!68716) b!144328))

(assert (= (and b!144328 res!68717) b!144329))

(assert (= (and b!144329 res!68718) b!144330))

(declare-fun m!174219 () Bool)

(assert (=> d!46033 m!174219))

(declare-fun m!174221 () Bool)

(assert (=> b!144328 m!174221))

(declare-fun m!174223 () Bool)

(assert (=> b!144329 m!174223))

(declare-fun m!174225 () Bool)

(assert (=> b!144330 m!174225))

(assert (=> b!144039 d!46033))

(declare-fun d!46035 () Bool)

(declare-fun lt!75753 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!139 (List!1772) (InoxSet (_ BitVec 64)))

(assert (=> d!46035 (= lt!75753 (select (content!139 lt!75569) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94063 () Bool)

(assert (=> d!46035 (= lt!75753 e!94063)))

(declare-fun res!68724 () Bool)

(assert (=> d!46035 (=> (not res!68724) (not e!94063))))

(assert (=> d!46035 (= res!68724 ((_ is Cons!1768) lt!75569))))

(assert (=> d!46035 (= (contains!928 lt!75569 #b1000000000000000000000000000000000000000000000000000000000000000) lt!75753)))

(declare-fun b!144335 () Bool)

(declare-fun e!94062 () Bool)

(assert (=> b!144335 (= e!94063 e!94062)))

(declare-fun res!68723 () Bool)

(assert (=> b!144335 (=> res!68723 e!94062)))

(assert (=> b!144335 (= res!68723 (= (h!2376 lt!75569) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144336 () Bool)

(assert (=> b!144336 (= e!94062 (contains!928 (t!6409 lt!75569) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46035 res!68724) b!144335))

(assert (= (and b!144335 (not res!68723)) b!144336))

(declare-fun m!174227 () Bool)

(assert (=> d!46035 m!174227))

(declare-fun m!174229 () Bool)

(assert (=> d!46035 m!174229))

(declare-fun m!174231 () Bool)

(assert (=> b!144336 m!174231))

(assert (=> b!144048 d!46035))

(declare-fun d!46037 () Bool)

(assert (=> d!46037 (= (valid!562 thiss!992) (valid!563 (v!3308 (underlying!486 thiss!992))))))

(declare-fun bs!6096 () Bool)

(assert (= bs!6096 d!46037))

(declare-fun m!174233 () Bool)

(assert (=> bs!6096 m!174233))

(assert (=> start!14984 d!46037))

(declare-fun b!144347 () Bool)

(declare-fun e!94072 () Bool)

(declare-fun e!94075 () Bool)

(assert (=> b!144347 (= e!94072 e!94075)))

(declare-fun c!27351 () Bool)

(assert (=> b!144347 (= c!27351 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun bm!16063 () Bool)

(declare-fun call!16066 () Bool)

(assert (=> bm!16063 (= call!16066 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27351 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769) Nil!1769)))))

(declare-fun b!144348 () Bool)

(assert (=> b!144348 (= e!94075 call!16066)))

(declare-fun b!144349 () Bool)

(declare-fun e!94074 () Bool)

(assert (=> b!144349 (= e!94074 (contains!928 Nil!1769 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun d!46039 () Bool)

(declare-fun res!68732 () Bool)

(declare-fun e!94073 () Bool)

(assert (=> d!46039 (=> res!68732 e!94073)))

(assert (=> d!46039 (= res!68732 (bvsge from!355 (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> d!46039 (= (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) from!355 Nil!1769) e!94073)))

(declare-fun b!144350 () Bool)

(assert (=> b!144350 (= e!94073 e!94072)))

(declare-fun res!68733 () Bool)

(assert (=> b!144350 (=> (not res!68733) (not e!94072))))

(assert (=> b!144350 (= res!68733 (not e!94074))))

(declare-fun res!68731 () Bool)

(assert (=> b!144350 (=> (not res!68731) (not e!94074))))

(assert (=> b!144350 (= res!68731 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144351 () Bool)

(assert (=> b!144351 (= e!94075 call!16066)))

(assert (= (and d!46039 (not res!68732)) b!144350))

(assert (= (and b!144350 res!68731) b!144349))

(assert (= (and b!144350 res!68733) b!144347))

(assert (= (and b!144347 c!27351) b!144348))

(assert (= (and b!144347 (not c!27351)) b!144351))

(assert (= (or b!144348 b!144351) bm!16063))

(assert (=> b!144347 m!174017))

(assert (=> b!144347 m!174017))

(declare-fun m!174235 () Bool)

(assert (=> b!144347 m!174235))

(assert (=> bm!16063 m!174017))

(declare-fun m!174237 () Bool)

(assert (=> bm!16063 m!174237))

(assert (=> b!144349 m!174017))

(assert (=> b!144349 m!174017))

(declare-fun m!174239 () Bool)

(assert (=> b!144349 m!174239))

(assert (=> b!144350 m!174017))

(assert (=> b!144350 m!174017))

(assert (=> b!144350 m!174235))

(assert (=> b!144044 d!46039))

(declare-fun d!46041 () Bool)

(assert (=> d!46041 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) from!355 Nil!1769)))

(declare-fun lt!75756 () Unit!4571)

(declare-fun choose!39 (array!4924 (_ BitVec 32) (_ BitVec 32)) Unit!4571)

(assert (=> d!46041 (= lt!75756 (choose!39 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!46041 (bvslt (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!46041 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 from!355) lt!75756)))

(declare-fun bs!6097 () Bool)

(assert (= bs!6097 d!46041))

(assert (=> bs!6097 m!174027))

(declare-fun m!174241 () Bool)

(assert (=> bs!6097 m!174241))

(assert (=> b!144044 d!46041))

(declare-fun d!46043 () Bool)

(declare-fun res!68738 () Bool)

(declare-fun e!94080 () Bool)

(assert (=> d!46043 (=> res!68738 e!94080)))

(assert (=> d!46043 (= res!68738 (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46043 (= (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!94080)))

(declare-fun b!144356 () Bool)

(declare-fun e!94081 () Bool)

(assert (=> b!144356 (= e!94080 e!94081)))

(declare-fun res!68739 () Bool)

(assert (=> b!144356 (=> (not res!68739) (not e!94081))))

(assert (=> b!144356 (= res!68739 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144357 () Bool)

(assert (=> b!144357 (= e!94081 (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!46043 (not res!68738)) b!144356))

(assert (= (and b!144356 res!68739) b!144357))

(assert (=> d!46043 m!174165))

(assert (=> b!144357 m!174017))

(declare-fun m!174243 () Bool)

(assert (=> b!144357 m!174243))

(assert (=> b!144044 d!46043))

(declare-fun d!46045 () Bool)

(declare-fun e!94084 () Bool)

(assert (=> d!46045 e!94084))

(declare-fun c!27354 () Bool)

(assert (=> d!46045 (= c!27354 (and (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!75759 () Unit!4571)

(declare-fun choose!887 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) (_ BitVec 32) Int) Unit!4571)

(assert (=> d!46045 (= lt!75759 (choose!887 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(assert (=> d!46045 (validMask!0 (mask!7334 (v!3308 (underlying!486 thiss!992))))))

(assert (=> d!46045 (= (lemmaListMapContainsThenArrayContainsFrom!147 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) lt!75759)))

(declare-fun b!144362 () Bool)

(assert (=> b!144362 (= e!94084 (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!144363 () Bool)

(assert (=> b!144363 (= e!94084 (ite (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46045 c!27354) b!144362))

(assert (= (and d!46045 (not c!27354)) b!144363))

(assert (=> d!46045 m!174017))

(declare-fun m!174245 () Bool)

(assert (=> d!46045 m!174245))

(assert (=> d!46045 m!174213))

(assert (=> b!144362 m!174017))

(assert (=> b!144362 m!174031))

(assert (=> b!144044 d!46045))

(declare-fun d!46047 () Bool)

(declare-fun lt!75760 () Bool)

(assert (=> d!46047 (= lt!75760 (select (content!139 lt!75569) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94086 () Bool)

(assert (=> d!46047 (= lt!75760 e!94086)))

(declare-fun res!68741 () Bool)

(assert (=> d!46047 (=> (not res!68741) (not e!94086))))

(assert (=> d!46047 (= res!68741 ((_ is Cons!1768) lt!75569))))

(assert (=> d!46047 (= (contains!928 lt!75569 #b0000000000000000000000000000000000000000000000000000000000000000) lt!75760)))

(declare-fun b!144364 () Bool)

(declare-fun e!94085 () Bool)

(assert (=> b!144364 (= e!94086 e!94085)))

(declare-fun res!68740 () Bool)

(assert (=> b!144364 (=> res!68740 e!94085)))

(assert (=> b!144364 (= res!68740 (= (h!2376 lt!75569) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144365 () Bool)

(assert (=> b!144365 (= e!94085 (contains!928 (t!6409 lt!75569) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46047 res!68741) b!144364))

(assert (= (and b!144364 (not res!68740)) b!144365))

(assert (=> d!46047 m!174227))

(declare-fun m!174247 () Bool)

(assert (=> d!46047 m!174247))

(declare-fun m!174249 () Bool)

(assert (=> b!144365 m!174249))

(assert (=> b!144041 d!46047))

(declare-fun mapIsEmpty!4895 () Bool)

(declare-fun mapRes!4895 () Bool)

(assert (=> mapIsEmpty!4895 mapRes!4895))

(declare-fun condMapEmpty!4895 () Bool)

(declare-fun mapDefault!4895 () ValueCell!1128)

(assert (=> mapNonEmpty!4886 (= condMapEmpty!4895 (= mapRest!4885 ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4895)))))

(declare-fun e!94092 () Bool)

(assert (=> mapNonEmpty!4886 (= tp!11647 (and e!94092 mapRes!4895))))

(declare-fun b!144372 () Bool)

(declare-fun e!94091 () Bool)

(assert (=> b!144372 (= e!94091 tp_is_empty!2943)))

(declare-fun b!144373 () Bool)

(assert (=> b!144373 (= e!94092 tp_is_empty!2943)))

(declare-fun mapNonEmpty!4895 () Bool)

(declare-fun tp!11663 () Bool)

(assert (=> mapNonEmpty!4895 (= mapRes!4895 (and tp!11663 e!94091))))

(declare-fun mapValue!4895 () ValueCell!1128)

(declare-fun mapKey!4895 () (_ BitVec 32))

(declare-fun mapRest!4895 () (Array (_ BitVec 32) ValueCell!1128))

(assert (=> mapNonEmpty!4895 (= mapRest!4885 (store mapRest!4895 mapKey!4895 mapValue!4895))))

(assert (= (and mapNonEmpty!4886 condMapEmpty!4895) mapIsEmpty!4895))

(assert (= (and mapNonEmpty!4886 (not condMapEmpty!4895)) mapNonEmpty!4895))

(assert (= (and mapNonEmpty!4895 ((_ is ValueCellFull!1128) mapValue!4895)) b!144372))

(assert (= (and mapNonEmpty!4886 ((_ is ValueCellFull!1128) mapDefault!4895)) b!144373))

(declare-fun m!174251 () Bool)

(assert (=> mapNonEmpty!4895 m!174251))

(declare-fun mapIsEmpty!4896 () Bool)

(declare-fun mapRes!4896 () Bool)

(assert (=> mapIsEmpty!4896 mapRes!4896))

(declare-fun condMapEmpty!4896 () Bool)

(declare-fun mapDefault!4896 () ValueCell!1128)

(assert (=> mapNonEmpty!4885 (= condMapEmpty!4896 (= mapRest!4886 ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4896)))))

(declare-fun e!94094 () Bool)

(assert (=> mapNonEmpty!4885 (= tp!11645 (and e!94094 mapRes!4896))))

(declare-fun b!144374 () Bool)

(declare-fun e!94093 () Bool)

(assert (=> b!144374 (= e!94093 tp_is_empty!2943)))

(declare-fun b!144375 () Bool)

(assert (=> b!144375 (= e!94094 tp_is_empty!2943)))

(declare-fun mapNonEmpty!4896 () Bool)

(declare-fun tp!11664 () Bool)

(assert (=> mapNonEmpty!4896 (= mapRes!4896 (and tp!11664 e!94093))))

(declare-fun mapRest!4896 () (Array (_ BitVec 32) ValueCell!1128))

(declare-fun mapKey!4896 () (_ BitVec 32))

(declare-fun mapValue!4896 () ValueCell!1128)

(assert (=> mapNonEmpty!4896 (= mapRest!4886 (store mapRest!4896 mapKey!4896 mapValue!4896))))

(assert (= (and mapNonEmpty!4885 condMapEmpty!4896) mapIsEmpty!4896))

(assert (= (and mapNonEmpty!4885 (not condMapEmpty!4896)) mapNonEmpty!4896))

(assert (= (and mapNonEmpty!4896 ((_ is ValueCellFull!1128) mapValue!4896)) b!144374))

(assert (= (and mapNonEmpty!4885 ((_ is ValueCellFull!1128) mapDefault!4896)) b!144375))

(declare-fun m!174253 () Bool)

(assert (=> mapNonEmpty!4896 m!174253))

(declare-fun b_lambda!6507 () Bool)

(assert (= b_lambda!6505 (or (and b!144046 b_free!3053) (and b!144033 b_free!3055 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))))) b_lambda!6507)))

(check-sat (not b!144310) (not b!144321) (not b!144299) (not bm!16036) (not b!144296) (not bm!16056) (not mapNonEmpty!4895) (not b!144349) (not b!144302) (not d!46033) (not d!46021) (not b_next!3053) (not b!144357) (not bm!16024) (not b_lambda!6507) (not bm!16058) (not bm!16029) (not b!144311) (not b_next!3055) (not d!46035) (not bm!16038) (not bm!16063) (not bm!16054) (not bm!16035) (not b!144242) (not d!46047) (not b!144210) (not b!144232) (not b!144347) (not b!144252) (not bm!16019) (not bm!16025) (not mapNonEmpty!4896) (not d!46013) (not b!144350) (not b!144365) (not bm!16033) (not bm!16017) (not bm!16026) (not b!144231) (not b!144306) (not b!144234) (not b!144309) (not d!46041) (not d!46045) (not bm!16027) b_and!9013 (not d!46019) tp_is_empty!2943 (not b!144336) (not b!144251) (not b!144329) (not b!144118) (not b!144330) (not b!144120) (not d!46015) (not b!144328) (not b!144320) (not b!144228) (not b_lambda!6503) (not b!144230) (not b!144362) (not bm!16018) (not bm!16055) (not d!46037) (not b!144304) b_and!9015)
(check-sat b_and!9013 b_and!9015 (not b_next!3053) (not b_next!3055))
(get-model)

(declare-fun d!46049 () Bool)

(declare-fun e!94097 () Bool)

(assert (=> d!46049 e!94097))

(declare-fun res!68746 () Bool)

(assert (=> d!46049 (=> (not res!68746) (not e!94097))))

(declare-fun lt!75766 () SeekEntryResult!291)

(assert (=> d!46049 (= res!68746 ((_ is Found!291) lt!75766))))

(assert (=> d!46049 (= lt!75766 (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun lt!75765 () Unit!4571)

(declare-fun choose!888 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) Int) Unit!4571)

(assert (=> d!46049 (= lt!75765 (choose!888 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46049 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46049 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)) lt!75765)))

(declare-fun b!144380 () Bool)

(declare-fun res!68747 () Bool)

(assert (=> b!144380 (=> (not res!68747) (not e!94097))))

(assert (=> b!144380 (= res!68747 (inRange!0 (index!3330 lt!75766) (mask!7334 newMap!16)))))

(declare-fun b!144381 () Bool)

(assert (=> b!144381 (= e!94097 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75766)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> b!144381 (and (bvsge (index!3330 lt!75766) #b00000000000000000000000000000000) (bvslt (index!3330 lt!75766) (size!2600 (_keys!4741 newMap!16))))))

(assert (= (and d!46049 res!68746) b!144380))

(assert (= (and b!144380 res!68747) b!144381))

(assert (=> d!46049 m!174017))

(assert (=> d!46049 m!174109))

(assert (=> d!46049 m!174017))

(declare-fun m!174255 () Bool)

(assert (=> d!46049 m!174255))

(declare-fun m!174257 () Bool)

(assert (=> d!46049 m!174257))

(declare-fun m!174259 () Bool)

(assert (=> b!144380 m!174259))

(declare-fun m!174261 () Bool)

(assert (=> b!144381 m!174261))

(assert (=> bm!16017 d!46049))

(declare-fun d!46051 () Bool)

(declare-fun e!94098 () Bool)

(assert (=> d!46051 e!94098))

(declare-fun res!68748 () Bool)

(assert (=> d!46051 (=> res!68748 e!94098)))

(declare-fun lt!75768 () Bool)

(assert (=> d!46051 (= res!68748 (not lt!75768))))

(declare-fun lt!75769 () Bool)

(assert (=> d!46051 (= lt!75768 lt!75769)))

(declare-fun lt!75770 () Unit!4571)

(declare-fun e!94099 () Unit!4571)

(assert (=> d!46051 (= lt!75770 e!94099)))

(declare-fun c!27355 () Bool)

(assert (=> d!46051 (= c!27355 lt!75769)))

(assert (=> d!46051 (= lt!75769 (containsKey!181 (toList!892 lt!75733) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!46051 (= (contains!929 lt!75733 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!75768)))

(declare-fun b!144382 () Bool)

(declare-fun lt!75767 () Unit!4571)

(assert (=> b!144382 (= e!94099 lt!75767)))

(assert (=> b!144382 (= lt!75767 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 lt!75733) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!144382 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!144383 () Bool)

(declare-fun Unit!4579 () Unit!4571)

(assert (=> b!144383 (= e!94099 Unit!4579)))

(declare-fun b!144384 () Bool)

(assert (=> b!144384 (= e!94098 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!46051 c!27355) b!144382))

(assert (= (and d!46051 (not c!27355)) b!144383))

(assert (= (and d!46051 (not res!68748)) b!144384))

(assert (=> d!46051 m!174165))

(declare-fun m!174263 () Bool)

(assert (=> d!46051 m!174263))

(assert (=> b!144382 m!174165))

(declare-fun m!174265 () Bool)

(assert (=> b!144382 m!174265))

(assert (=> b!144382 m!174165))

(declare-fun m!174267 () Bool)

(assert (=> b!144382 m!174267))

(assert (=> b!144382 m!174267))

(declare-fun m!174269 () Bool)

(assert (=> b!144382 m!174269))

(assert (=> b!144384 m!174165))

(assert (=> b!144384 m!174267))

(assert (=> b!144384 m!174267))

(assert (=> b!144384 m!174269))

(assert (=> b!144306 d!46051))

(declare-fun d!46053 () Bool)

(declare-fun c!27358 () Bool)

(assert (=> d!46053 (= c!27358 ((_ is Nil!1769) lt!75569))))

(declare-fun e!94102 () (InoxSet (_ BitVec 64)))

(assert (=> d!46053 (= (content!139 lt!75569) e!94102)))

(declare-fun b!144389 () Bool)

(assert (=> b!144389 (= e!94102 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!144390 () Bool)

(assert (=> b!144390 (= e!94102 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!2376 lt!75569) true) (content!139 (t!6409 lt!75569))))))

(assert (= (and d!46053 c!27358) b!144389))

(assert (= (and d!46053 (not c!27358)) b!144390))

(declare-fun m!174271 () Bool)

(assert (=> b!144390 m!174271))

(declare-fun m!174273 () Bool)

(assert (=> b!144390 m!174273))

(assert (=> d!46035 d!46053))

(declare-fun d!46055 () Bool)

(assert (=> d!46055 (= (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (and (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144347 d!46055))

(declare-fun b!144403 () Bool)

(declare-fun e!94110 () SeekEntryResult!291)

(declare-fun lt!75777 () SeekEntryResult!291)

(assert (=> b!144403 (= e!94110 (Found!291 (index!3331 lt!75777)))))

(declare-fun b!144404 () Bool)

(declare-fun e!94111 () SeekEntryResult!291)

(assert (=> b!144404 (= e!94111 e!94110)))

(declare-fun lt!75779 () (_ BitVec 64))

(assert (=> b!144404 (= lt!75779 (select (arr!2326 (_keys!4741 newMap!16)) (index!3331 lt!75777)))))

(declare-fun c!27366 () Bool)

(assert (=> b!144404 (= c!27366 (= lt!75779 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144405 () Bool)

(assert (=> b!144405 (= e!94111 Undefined!291)))

(declare-fun e!94109 () SeekEntryResult!291)

(declare-fun b!144406 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4924 (_ BitVec 32)) SeekEntryResult!291)

(assert (=> b!144406 (= e!94109 (seekKeyOrZeroReturnVacant!0 (x!16434 lt!75777) (index!3331 lt!75777) (index!3331 lt!75777) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun b!144408 () Bool)

(assert (=> b!144408 (= e!94109 (MissingZero!291 (index!3331 lt!75777)))))

(declare-fun b!144407 () Bool)

(declare-fun c!27367 () Bool)

(assert (=> b!144407 (= c!27367 (= lt!75779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144407 (= e!94110 e!94109)))

(declare-fun lt!75778 () SeekEntryResult!291)

(declare-fun d!46057 () Bool)

(assert (=> d!46057 (and (or ((_ is Undefined!291) lt!75778) (not ((_ is Found!291) lt!75778)) (and (bvsge (index!3330 lt!75778) #b00000000000000000000000000000000) (bvslt (index!3330 lt!75778) (size!2600 (_keys!4741 newMap!16))))) (or ((_ is Undefined!291) lt!75778) ((_ is Found!291) lt!75778) (not ((_ is MissingZero!291) lt!75778)) (and (bvsge (index!3329 lt!75778) #b00000000000000000000000000000000) (bvslt (index!3329 lt!75778) (size!2600 (_keys!4741 newMap!16))))) (or ((_ is Undefined!291) lt!75778) ((_ is Found!291) lt!75778) ((_ is MissingZero!291) lt!75778) (not ((_ is MissingVacant!291) lt!75778)) (and (bvsge (index!3332 lt!75778) #b00000000000000000000000000000000) (bvslt (index!3332 lt!75778) (size!2600 (_keys!4741 newMap!16))))) (or ((_ is Undefined!291) lt!75778) (ite ((_ is Found!291) lt!75778) (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75778)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (ite ((_ is MissingZero!291) lt!75778) (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3329 lt!75778)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!291) lt!75778) (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3332 lt!75778)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46057 (= lt!75778 e!94111)))

(declare-fun c!27365 () Bool)

(assert (=> d!46057 (= c!27365 (and ((_ is Intermediate!291) lt!75777) (undefined!1103 lt!75777)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4924 (_ BitVec 32)) SeekEntryResult!291)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!46057 (= lt!75777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (mask!7334 newMap!16)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(assert (=> d!46057 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46057 (= (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)) lt!75778)))

(assert (= (and d!46057 c!27365) b!144405))

(assert (= (and d!46057 (not c!27365)) b!144404))

(assert (= (and b!144404 c!27366) b!144403))

(assert (= (and b!144404 (not c!27366)) b!144407))

(assert (= (and b!144407 c!27367) b!144408))

(assert (= (and b!144407 (not c!27367)) b!144406))

(declare-fun m!174275 () Bool)

(assert (=> b!144404 m!174275))

(assert (=> b!144406 m!174017))

(declare-fun m!174277 () Bool)

(assert (=> b!144406 m!174277))

(declare-fun m!174279 () Bool)

(assert (=> d!46057 m!174279))

(assert (=> d!46057 m!174257))

(declare-fun m!174281 () Bool)

(assert (=> d!46057 m!174281))

(assert (=> d!46057 m!174017))

(declare-fun m!174283 () Bool)

(assert (=> d!46057 m!174283))

(assert (=> d!46057 m!174283))

(assert (=> d!46057 m!174017))

(declare-fun m!174285 () Bool)

(assert (=> d!46057 m!174285))

(declare-fun m!174287 () Bool)

(assert (=> d!46057 m!174287))

(assert (=> bm!16019 d!46057))

(declare-fun d!46059 () Bool)

(declare-fun res!68753 () Bool)

(declare-fun e!94116 () Bool)

(assert (=> d!46059 (=> res!68753 e!94116)))

(assert (=> d!46059 (= res!68753 (and ((_ is Cons!1767) (toList!892 lt!75572)) (= (_1!1357 (h!2375 (toList!892 lt!75572))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (=> d!46059 (= (containsKey!181 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) e!94116)))

(declare-fun b!144413 () Bool)

(declare-fun e!94117 () Bool)

(assert (=> b!144413 (= e!94116 e!94117)))

(declare-fun res!68754 () Bool)

(assert (=> b!144413 (=> (not res!68754) (not e!94117))))

(assert (=> b!144413 (= res!68754 (and (or (not ((_ is Cons!1767) (toList!892 lt!75572))) (bvsle (_1!1357 (h!2375 (toList!892 lt!75572))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))) ((_ is Cons!1767) (toList!892 lt!75572)) (bvslt (_1!1357 (h!2375 (toList!892 lt!75572))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(declare-fun b!144414 () Bool)

(assert (=> b!144414 (= e!94117 (containsKey!181 (t!6408 (toList!892 lt!75572)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (= (and d!46059 (not res!68753)) b!144413))

(assert (= (and b!144413 res!68754) b!144414))

(assert (=> b!144414 m!174017))

(declare-fun m!174289 () Bool)

(assert (=> b!144414 m!174289))

(assert (=> d!46013 d!46059))

(assert (=> d!46041 d!46039))

(declare-fun d!46061 () Bool)

(assert (=> d!46061 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) from!355 Nil!1769)))

(assert (=> d!46061 true))

(declare-fun _$71!171 () Unit!4571)

(assert (=> d!46061 (= (choose!39 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!171)))

(declare-fun bs!6098 () Bool)

(assert (= bs!6098 d!46061))

(assert (=> bs!6098 m!174027))

(assert (=> d!46041 d!46061))

(declare-fun d!46063 () Bool)

(declare-fun e!94120 () Bool)

(assert (=> d!46063 e!94120))

(declare-fun res!68760 () Bool)

(assert (=> d!46063 (=> (not res!68760) (not e!94120))))

(declare-fun lt!75788 () ListLongMap!1753)

(assert (=> d!46063 (= res!68760 (contains!929 lt!75788 (_1!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun lt!75791 () List!1771)

(assert (=> d!46063 (= lt!75788 (ListLongMap!1754 lt!75791))))

(declare-fun lt!75790 () Unit!4571)

(declare-fun lt!75789 () Unit!4571)

(assert (=> d!46063 (= lt!75790 lt!75789)))

(assert (=> d!46063 (= (getValueByKey!177 lt!75791 (_1!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))) (Some!182 (_2!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!93 (List!1771 (_ BitVec 64) V!3571) Unit!4571)

(assert (=> d!46063 (= lt!75789 (lemmaContainsTupThenGetReturnValue!93 lt!75791 (_1!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (_2!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun insertStrictlySorted!95 (List!1771 (_ BitVec 64) V!3571) List!1771)

(assert (=> d!46063 (= lt!75791 (insertStrictlySorted!95 (toList!892 (ite c!27346 call!16059 (ite c!27348 call!16058 call!16060))) (_1!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (_2!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(assert (=> d!46063 (= (+!176 (ite c!27346 call!16059 (ite c!27348 call!16058 call!16060)) (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75788)))

(declare-fun b!144419 () Bool)

(declare-fun res!68759 () Bool)

(assert (=> b!144419 (=> (not res!68759) (not e!94120))))

(assert (=> b!144419 (= res!68759 (= (getValueByKey!177 (toList!892 lt!75788) (_1!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))) (Some!182 (_2!1357 (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))))

(declare-fun b!144420 () Bool)

(declare-fun contains!931 (List!1771 tuple2!2694) Bool)

(assert (=> b!144420 (= e!94120 (contains!931 (toList!892 lt!75788) (ite (or c!27346 c!27348) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (= (and d!46063 res!68760) b!144419))

(assert (= (and b!144419 res!68759) b!144420))

(declare-fun m!174291 () Bool)

(assert (=> d!46063 m!174291))

(declare-fun m!174293 () Bool)

(assert (=> d!46063 m!174293))

(declare-fun m!174295 () Bool)

(assert (=> d!46063 m!174295))

(declare-fun m!174297 () Bool)

(assert (=> d!46063 m!174297))

(declare-fun m!174299 () Bool)

(assert (=> b!144419 m!174299))

(declare-fun m!174301 () Bool)

(assert (=> b!144420 m!174301))

(assert (=> bm!16058 d!46063))

(assert (=> b!144362 d!46043))

(assert (=> b!144228 d!46057))

(declare-fun d!46065 () Bool)

(assert (=> d!46065 (= (+!176 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) lt!75659 (zeroValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75794 () Unit!4571)

(declare-fun choose!889 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 V!3571 Int) Unit!4571)

(assert (=> d!46065 (= lt!75794 (choose!889 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75659 (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46065 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46065 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75659 (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)) lt!75794)))

(declare-fun bs!6099 () Bool)

(assert (= bs!6099 d!46065))

(assert (=> bs!6099 m!174037))

(declare-fun m!174303 () Bool)

(assert (=> bs!6099 m!174303))

(assert (=> bs!6099 m!174257))

(assert (=> bs!6099 m!174101))

(declare-fun m!174305 () Bool)

(assert (=> bs!6099 m!174305))

(assert (=> bs!6099 m!174101))

(assert (=> bs!6099 m!174037))

(declare-fun m!174307 () Bool)

(assert (=> bs!6099 m!174307))

(assert (=> b!144242 d!46065))

(declare-fun d!46067 () Bool)

(assert (=> d!46067 (= (+!176 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) lt!75670 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75797 () Unit!4571)

(declare-fun choose!890 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 V!3571 Int) Unit!4571)

(assert (=> d!46067 (= lt!75797 (choose!890 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75670 (zeroValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2823 newMap!16) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46067 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46067 (= (lemmaChangeZeroKeyThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) lt!75670 (zeroValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2823 newMap!16) (defaultEntry!2976 newMap!16)) lt!75797)))

(declare-fun bs!6100 () Bool)

(assert (= bs!6100 d!46067))

(assert (=> bs!6100 m!174257))

(assert (=> bs!6100 m!174037))

(declare-fun m!174309 () Bool)

(assert (=> bs!6100 m!174309))

(assert (=> bs!6100 m!174101))

(assert (=> bs!6100 m!174101))

(declare-fun m!174311 () Bool)

(assert (=> bs!6100 m!174311))

(assert (=> bs!6100 m!174037))

(declare-fun m!174313 () Bool)

(assert (=> bs!6100 m!174313))

(assert (=> b!144230 d!46067))

(declare-fun b!144430 () Bool)

(declare-fun res!68770 () Bool)

(declare-fun e!94123 () Bool)

(assert (=> b!144430 (=> (not res!68770) (not e!94123))))

(declare-fun size!2604 (LongMapFixedSize!1164) (_ BitVec 32))

(assert (=> b!144430 (= res!68770 (bvsge (size!2604 newMap!16) (_size!631 newMap!16)))))

(declare-fun b!144432 () Bool)

(assert (=> b!144432 (= e!94123 (and (bvsge (extraKeys!2725 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2725 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!631 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!144429 () Bool)

(declare-fun res!68771 () Bool)

(assert (=> b!144429 (=> (not res!68771) (not e!94123))))

(assert (=> b!144429 (= res!68771 (and (= (size!2601 (_values!2959 newMap!16)) (bvadd (mask!7334 newMap!16) #b00000000000000000000000000000001)) (= (size!2600 (_keys!4741 newMap!16)) (size!2601 (_values!2959 newMap!16))) (bvsge (_size!631 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!631 newMap!16) (bvadd (mask!7334 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!144431 () Bool)

(declare-fun res!68769 () Bool)

(assert (=> b!144431 (=> (not res!68769) (not e!94123))))

(assert (=> b!144431 (= res!68769 (= (size!2604 newMap!16) (bvadd (_size!631 newMap!16) (bvsdiv (bvadd (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!46069 () Bool)

(declare-fun res!68772 () Bool)

(assert (=> d!46069 (=> (not res!68772) (not e!94123))))

(assert (=> d!46069 (= res!68772 (validMask!0 (mask!7334 newMap!16)))))

(assert (=> d!46069 (= (simpleValid!97 newMap!16) e!94123)))

(assert (= (and d!46069 res!68772) b!144429))

(assert (= (and b!144429 res!68771) b!144430))

(assert (= (and b!144430 res!68770) b!144431))

(assert (= (and b!144431 res!68769) b!144432))

(declare-fun m!174315 () Bool)

(assert (=> b!144430 m!174315))

(assert (=> b!144431 m!174315))

(assert (=> d!46069 m!174257))

(assert (=> d!46033 d!46069))

(declare-fun d!46071 () Bool)

(assert (=> d!46071 (= (get!1549 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144252 d!46071))

(declare-fun d!46073 () Bool)

(declare-fun e!94126 () Bool)

(assert (=> d!46073 e!94126))

(declare-fun res!68775 () Bool)

(assert (=> d!46073 (=> (not res!68775) (not e!94126))))

(assert (=> d!46073 (= res!68775 (and (bvsge (index!3330 lt!75663) #b00000000000000000000000000000000) (bvslt (index!3330 lt!75663) (size!2600 (_keys!4741 newMap!16)))))))

(declare-fun lt!75800 () Unit!4571)

(declare-fun choose!891 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) Int) Unit!4571)

(assert (=> d!46073 (= lt!75800 (choose!891 (_keys!4741 newMap!16) lt!75678 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46073 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46073 (= (lemmaValidKeyInArrayIsInListMap!125 (_keys!4741 newMap!16) lt!75678 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (defaultEntry!2976 newMap!16)) lt!75800)))

(declare-fun b!144435 () Bool)

(assert (=> b!144435 (= e!94126 (contains!929 (getCurrentListMap!558 (_keys!4741 newMap!16) lt!75678 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663))))))

(assert (= (and d!46073 res!68775) b!144435))

(declare-fun m!174317 () Bool)

(assert (=> d!46073 m!174317))

(assert (=> d!46073 m!174257))

(declare-fun m!174319 () Bool)

(assert (=> b!144435 m!174319))

(assert (=> b!144435 m!174139))

(assert (=> b!144435 m!174319))

(assert (=> b!144435 m!174139))

(declare-fun m!174321 () Bool)

(assert (=> b!144435 m!174321))

(assert (=> b!144210 d!46073))

(declare-fun d!46075 () Bool)

(declare-fun e!94129 () Bool)

(assert (=> d!46075 e!94129))

(declare-fun res!68778 () Bool)

(assert (=> d!46075 (=> (not res!68778) (not e!94129))))

(assert (=> d!46075 (= res!68778 (and (bvsge (index!3330 lt!75663) #b00000000000000000000000000000000) (bvslt (index!3330 lt!75663) (size!2601 (_values!2959 newMap!16)))))))

(declare-fun lt!75803 () Unit!4571)

(declare-fun choose!892 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) (_ BitVec 64) V!3571 Int) Unit!4571)

(assert (=> d!46075 (= lt!75803 (choose!892 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46075 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46075 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (index!3330 lt!75663) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)) lt!75803)))

(declare-fun b!144438 () Bool)

(assert (=> b!144438 (= e!94129 (= (+!176 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!558 (_keys!4741 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16))))))

(assert (= (and d!46075 res!68778) b!144438))

(assert (=> d!46075 m!174017))

(assert (=> d!46075 m!174037))

(declare-fun m!174323 () Bool)

(assert (=> d!46075 m!174323))

(assert (=> d!46075 m!174257))

(assert (=> b!144438 m!174101))

(assert (=> b!144438 m!174101))

(declare-fun m!174325 () Bool)

(assert (=> b!144438 m!174325))

(assert (=> b!144438 m!174119))

(declare-fun m!174327 () Bool)

(assert (=> b!144438 m!174327))

(assert (=> b!144210 d!46075))

(declare-fun d!46077 () Bool)

(declare-fun e!94130 () Bool)

(assert (=> d!46077 e!94130))

(declare-fun res!68779 () Bool)

(assert (=> d!46077 (=> res!68779 e!94130)))

(declare-fun lt!75805 () Bool)

(assert (=> d!46077 (= res!68779 (not lt!75805))))

(declare-fun lt!75806 () Bool)

(assert (=> d!46077 (= lt!75805 lt!75806)))

(declare-fun lt!75807 () Unit!4571)

(declare-fun e!94131 () Unit!4571)

(assert (=> d!46077 (= lt!75807 e!94131)))

(declare-fun c!27368 () Bool)

(assert (=> d!46077 (= c!27368 lt!75806)))

(assert (=> d!46077 (= lt!75806 (containsKey!181 (toList!892 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46077 (= (contains!929 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) lt!75805)))

(declare-fun b!144439 () Bool)

(declare-fun lt!75804 () Unit!4571)

(assert (=> b!144439 (= e!94131 lt!75804)))

(assert (=> b!144439 (= lt!75804 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> b!144439 (isDefined!131 (getValueByKey!177 (toList!892 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144440 () Bool)

(declare-fun Unit!4580 () Unit!4571)

(assert (=> b!144440 (= e!94131 Unit!4580)))

(declare-fun b!144441 () Bool)

(assert (=> b!144441 (= e!94130 (isDefined!131 (getValueByKey!177 (toList!892 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (= (and d!46077 c!27368) b!144439))

(assert (= (and d!46077 (not c!27368)) b!144440))

(assert (= (and d!46077 (not res!68779)) b!144441))

(assert (=> d!46077 m!174017))

(declare-fun m!174329 () Bool)

(assert (=> d!46077 m!174329))

(assert (=> b!144439 m!174017))

(declare-fun m!174331 () Bool)

(assert (=> b!144439 m!174331))

(assert (=> b!144439 m!174017))

(declare-fun m!174333 () Bool)

(assert (=> b!144439 m!174333))

(assert (=> b!144439 m!174333))

(declare-fun m!174335 () Bool)

(assert (=> b!144439 m!174335))

(assert (=> b!144441 m!174017))

(assert (=> b!144441 m!174333))

(assert (=> b!144441 m!174333))

(assert (=> b!144441 m!174335))

(assert (=> b!144210 d!46077))

(declare-fun b!144442 () Bool)

(declare-fun res!68780 () Bool)

(declare-fun e!94136 () Bool)

(assert (=> b!144442 (=> (not res!68780) (not e!94136))))

(declare-fun e!94133 () Bool)

(assert (=> b!144442 (= res!68780 e!94133)))

(declare-fun res!68781 () Bool)

(assert (=> b!144442 (=> res!68781 e!94133)))

(declare-fun e!94132 () Bool)

(assert (=> b!144442 (= res!68781 (not e!94132))))

(declare-fun res!68784 () Bool)

(assert (=> b!144442 (=> (not res!68784) (not e!94132))))

(assert (=> b!144442 (= res!68784 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16064 () Bool)

(declare-fun call!16073 () Bool)

(declare-fun lt!75812 () ListLongMap!1753)

(assert (=> bm!16064 (= call!16073 (contains!929 lt!75812 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16065 () Bool)

(declare-fun call!16072 () Bool)

(assert (=> bm!16065 (= call!16072 (contains!929 lt!75812 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144443 () Bool)

(declare-fun e!94142 () Bool)

(assert (=> b!144443 (= e!94142 (= (apply!122 lt!75812 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2823 newMap!16)))))

(declare-fun bm!16066 () Bool)

(declare-fun call!16069 () ListLongMap!1753)

(assert (=> bm!16066 (= call!16069 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun b!144444 () Bool)

(declare-fun e!94143 () Bool)

(assert (=> b!144444 (= e!94143 (not call!16073))))

(declare-fun b!144445 () Bool)

(declare-fun e!94144 () Bool)

(assert (=> b!144445 (= e!94144 e!94142)))

(declare-fun res!68782 () Bool)

(assert (=> b!144445 (= res!68782 call!16072)))

(assert (=> b!144445 (=> (not res!68782) (not e!94142))))

(declare-fun b!144446 () Bool)

(assert (=> b!144446 (= e!94132 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16067 () Bool)

(declare-fun call!16068 () ListLongMap!1753)

(assert (=> bm!16067 (= call!16068 call!16069)))

(declare-fun b!144447 () Bool)

(declare-fun e!94139 () ListLongMap!1753)

(declare-fun call!16067 () ListLongMap!1753)

(assert (=> b!144447 (= e!94139 call!16067)))

(declare-fun d!46079 () Bool)

(assert (=> d!46079 e!94136))

(declare-fun res!68783 () Bool)

(assert (=> d!46079 (=> (not res!68783) (not e!94136))))

(assert (=> d!46079 (= res!68783 (or (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))))

(declare-fun lt!75811 () ListLongMap!1753)

(assert (=> d!46079 (= lt!75812 lt!75811)))

(declare-fun lt!75824 () Unit!4571)

(declare-fun e!94137 () Unit!4571)

(assert (=> d!46079 (= lt!75824 e!94137)))

(declare-fun c!27370 () Bool)

(declare-fun e!94140 () Bool)

(assert (=> d!46079 (= c!27370 e!94140)))

(declare-fun res!68788 () Bool)

(assert (=> d!46079 (=> (not res!68788) (not e!94140))))

(assert (=> d!46079 (= res!68788 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun e!94138 () ListLongMap!1753)

(assert (=> d!46079 (= lt!75811 e!94138)))

(declare-fun c!27372 () Bool)

(assert (=> d!46079 (= c!27372 (and (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46079 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46079 (= (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) lt!75812)))

(declare-fun b!144448 () Bool)

(declare-fun e!94134 () ListLongMap!1753)

(declare-fun call!16070 () ListLongMap!1753)

(assert (=> b!144448 (= e!94134 call!16070)))

(declare-fun call!16071 () ListLongMap!1753)

(declare-fun c!27374 () Bool)

(declare-fun bm!16068 () Bool)

(assert (=> bm!16068 (= call!16071 (+!176 (ite c!27372 call!16069 (ite c!27374 call!16068 call!16070)) (ite (or c!27372 c!27374) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 newMap!16)) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 newMap!16)))))))

(declare-fun b!144449 () Bool)

(declare-fun lt!75826 () Unit!4571)

(assert (=> b!144449 (= e!94137 lt!75826)))

(declare-fun lt!75827 () ListLongMap!1753)

(assert (=> b!144449 (= lt!75827 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75810 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75810 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75816 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75816 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75809 () Unit!4571)

(assert (=> b!144449 (= lt!75809 (addStillContains!98 lt!75827 lt!75810 (zeroValue!2823 newMap!16) lt!75816))))

(assert (=> b!144449 (contains!929 (+!176 lt!75827 (tuple2!2695 lt!75810 (zeroValue!2823 newMap!16))) lt!75816)))

(declare-fun lt!75822 () Unit!4571)

(assert (=> b!144449 (= lt!75822 lt!75809)))

(declare-fun lt!75808 () ListLongMap!1753)

(assert (=> b!144449 (= lt!75808 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75818 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75818 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75825 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75825 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75828 () Unit!4571)

(assert (=> b!144449 (= lt!75828 (addApplyDifferent!98 lt!75808 lt!75818 (minValue!2823 newMap!16) lt!75825))))

(assert (=> b!144449 (= (apply!122 (+!176 lt!75808 (tuple2!2695 lt!75818 (minValue!2823 newMap!16))) lt!75825) (apply!122 lt!75808 lt!75825))))

(declare-fun lt!75829 () Unit!4571)

(assert (=> b!144449 (= lt!75829 lt!75828)))

(declare-fun lt!75820 () ListLongMap!1753)

(assert (=> b!144449 (= lt!75820 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75821 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75821 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75813 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75813 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75814 () Unit!4571)

(assert (=> b!144449 (= lt!75814 (addApplyDifferent!98 lt!75820 lt!75821 (zeroValue!2823 newMap!16) lt!75813))))

(assert (=> b!144449 (= (apply!122 (+!176 lt!75820 (tuple2!2695 lt!75821 (zeroValue!2823 newMap!16))) lt!75813) (apply!122 lt!75820 lt!75813))))

(declare-fun lt!75819 () Unit!4571)

(assert (=> b!144449 (= lt!75819 lt!75814)))

(declare-fun lt!75815 () ListLongMap!1753)

(assert (=> b!144449 (= lt!75815 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75823 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75823 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75817 () (_ BitVec 64))

(assert (=> b!144449 (= lt!75817 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144449 (= lt!75826 (addApplyDifferent!98 lt!75815 lt!75823 (minValue!2823 newMap!16) lt!75817))))

(assert (=> b!144449 (= (apply!122 (+!176 lt!75815 (tuple2!2695 lt!75823 (minValue!2823 newMap!16))) lt!75817) (apply!122 lt!75815 lt!75817))))

(declare-fun b!144450 () Bool)

(declare-fun res!68785 () Bool)

(assert (=> b!144450 (=> (not res!68785) (not e!94136))))

(assert (=> b!144450 (= res!68785 e!94144)))

(declare-fun c!27373 () Bool)

(assert (=> b!144450 (= c!27373 (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!144451 () Bool)

(assert (=> b!144451 (= e!94140 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16069 () Bool)

(assert (=> bm!16069 (= call!16070 call!16068)))

(declare-fun b!144452 () Bool)

(assert (=> b!144452 (= e!94136 e!94143)))

(declare-fun c!27369 () Bool)

(assert (=> b!144452 (= c!27369 (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144453 () Bool)

(declare-fun e!94135 () Bool)

(assert (=> b!144453 (= e!94133 e!94135)))

(declare-fun res!68787 () Bool)

(assert (=> b!144453 (=> (not res!68787) (not e!94135))))

(assert (=> b!144453 (= res!68787 (contains!929 lt!75812 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!144453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun b!144454 () Bool)

(declare-fun e!94141 () Bool)

(assert (=> b!144454 (= e!94143 e!94141)))

(declare-fun res!68786 () Bool)

(assert (=> b!144454 (= res!68786 call!16073)))

(assert (=> b!144454 (=> (not res!68786) (not e!94141))))

(declare-fun b!144455 () Bool)

(declare-fun Unit!4581 () Unit!4571)

(assert (=> b!144455 (= e!94137 Unit!4581)))

(declare-fun b!144456 () Bool)

(assert (=> b!144456 (= e!94135 (= (apply!122 lt!75812 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)) (get!1547 (select (arr!2327 (_values!2959 newMap!16)) #b00000000000000000000000000000000) (dynLambda!445 (defaultEntry!2976 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2601 (_values!2959 newMap!16))))))

(assert (=> b!144456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16070 () Bool)

(assert (=> bm!16070 (= call!16067 call!16071)))

(declare-fun b!144457 () Bool)

(assert (=> b!144457 (= e!94138 (+!176 call!16071 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 newMap!16))))))

(declare-fun b!144458 () Bool)

(assert (=> b!144458 (= e!94141 (= (apply!122 lt!75812 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2823 newMap!16)))))

(declare-fun b!144459 () Bool)

(assert (=> b!144459 (= e!94138 e!94139)))

(assert (=> b!144459 (= c!27374 (and (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144460 () Bool)

(assert (=> b!144460 (= e!94134 call!16067)))

(declare-fun b!144461 () Bool)

(declare-fun c!27371 () Bool)

(assert (=> b!144461 (= c!27371 (and (not (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2725 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!144461 (= e!94139 e!94134)))

(declare-fun b!144462 () Bool)

(assert (=> b!144462 (= e!94144 (not call!16072))))

(assert (= (and d!46079 c!27372) b!144457))

(assert (= (and d!46079 (not c!27372)) b!144459))

(assert (= (and b!144459 c!27374) b!144447))

(assert (= (and b!144459 (not c!27374)) b!144461))

(assert (= (and b!144461 c!27371) b!144460))

(assert (= (and b!144461 (not c!27371)) b!144448))

(assert (= (or b!144460 b!144448) bm!16069))

(assert (= (or b!144447 bm!16069) bm!16067))

(assert (= (or b!144447 b!144460) bm!16070))

(assert (= (or b!144457 bm!16067) bm!16066))

(assert (= (or b!144457 bm!16070) bm!16068))

(assert (= (and d!46079 res!68788) b!144451))

(assert (= (and d!46079 c!27370) b!144449))

(assert (= (and d!46079 (not c!27370)) b!144455))

(assert (= (and d!46079 res!68783) b!144442))

(assert (= (and b!144442 res!68784) b!144446))

(assert (= (and b!144442 (not res!68781)) b!144453))

(assert (= (and b!144453 res!68787) b!144456))

(assert (= (and b!144442 res!68780) b!144450))

(assert (= (and b!144450 c!27373) b!144445))

(assert (= (and b!144450 (not c!27373)) b!144462))

(assert (= (and b!144445 res!68782) b!144443))

(assert (= (or b!144445 b!144462) bm!16065))

(assert (= (and b!144450 res!68785) b!144452))

(assert (= (and b!144452 c!27369) b!144454))

(assert (= (and b!144452 (not c!27369)) b!144444))

(assert (= (and b!144454 res!68786) b!144458))

(assert (= (or b!144454 b!144444) bm!16064))

(declare-fun b_lambda!6509 () Bool)

(assert (=> (not b_lambda!6509) (not b!144456)))

(declare-fun t!6417 () Bool)

(declare-fun tb!2605 () Bool)

(assert (=> (and b!144046 (= (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) (defaultEntry!2976 newMap!16)) t!6417) tb!2605))

(declare-fun result!4259 () Bool)

(assert (=> tb!2605 (= result!4259 tp_is_empty!2943)))

(assert (=> b!144456 t!6417))

(declare-fun b_and!9017 () Bool)

(assert (= b_and!9013 (and (=> t!6417 result!4259) b_and!9017)))

(declare-fun t!6419 () Bool)

(declare-fun tb!2607 () Bool)

(assert (=> (and b!144033 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 newMap!16)) t!6419) tb!2607))

(declare-fun result!4261 () Bool)

(assert (= result!4261 result!4259))

(assert (=> b!144456 t!6419))

(declare-fun b_and!9019 () Bool)

(assert (= b_and!9015 (and (=> t!6419 result!4261) b_and!9019)))

(declare-fun m!174337 () Bool)

(assert (=> b!144458 m!174337))

(declare-fun m!174339 () Bool)

(assert (=> bm!16068 m!174339))

(declare-fun m!174341 () Bool)

(assert (=> bm!16065 m!174341))

(declare-fun m!174343 () Bool)

(assert (=> b!144443 m!174343))

(declare-fun m!174345 () Bool)

(assert (=> b!144456 m!174345))

(declare-fun m!174347 () Bool)

(assert (=> b!144456 m!174347))

(assert (=> b!144456 m!174345))

(declare-fun m!174349 () Bool)

(assert (=> b!144456 m!174349))

(declare-fun m!174351 () Bool)

(assert (=> b!144456 m!174351))

(assert (=> b!144456 m!174351))

(assert (=> b!144456 m!174349))

(declare-fun m!174353 () Bool)

(assert (=> b!144456 m!174353))

(declare-fun m!174355 () Bool)

(assert (=> b!144457 m!174355))

(assert (=> b!144451 m!174345))

(assert (=> b!144451 m!174345))

(declare-fun m!174357 () Bool)

(assert (=> b!144451 m!174357))

(declare-fun m!174359 () Bool)

(assert (=> bm!16066 m!174359))

(declare-fun m!174361 () Bool)

(assert (=> bm!16064 m!174361))

(declare-fun m!174363 () Bool)

(assert (=> b!144449 m!174363))

(declare-fun m!174365 () Bool)

(assert (=> b!144449 m!174365))

(declare-fun m!174367 () Bool)

(assert (=> b!144449 m!174367))

(declare-fun m!174369 () Bool)

(assert (=> b!144449 m!174369))

(declare-fun m!174371 () Bool)

(assert (=> b!144449 m!174371))

(declare-fun m!174373 () Bool)

(assert (=> b!144449 m!174373))

(declare-fun m!174375 () Bool)

(assert (=> b!144449 m!174375))

(declare-fun m!174377 () Bool)

(assert (=> b!144449 m!174377))

(declare-fun m!174379 () Bool)

(assert (=> b!144449 m!174379))

(declare-fun m!174381 () Bool)

(assert (=> b!144449 m!174381))

(assert (=> b!144449 m!174345))

(declare-fun m!174383 () Bool)

(assert (=> b!144449 m!174383))

(declare-fun m!174385 () Bool)

(assert (=> b!144449 m!174385))

(declare-fun m!174387 () Bool)

(assert (=> b!144449 m!174387))

(declare-fun m!174389 () Bool)

(assert (=> b!144449 m!174389))

(assert (=> b!144449 m!174371))

(assert (=> b!144449 m!174387))

(assert (=> b!144449 m!174369))

(declare-fun m!174391 () Bool)

(assert (=> b!144449 m!174391))

(assert (=> b!144449 m!174383))

(assert (=> b!144449 m!174359))

(assert (=> b!144453 m!174345))

(assert (=> b!144453 m!174345))

(declare-fun m!174393 () Bool)

(assert (=> b!144453 m!174393))

(assert (=> d!46079 m!174257))

(assert (=> b!144446 m!174345))

(assert (=> b!144446 m!174345))

(assert (=> b!144446 m!174357))

(assert (=> b!144210 d!46079))

(declare-fun d!46081 () Bool)

(declare-fun lt!75830 () Bool)

(assert (=> d!46081 (= lt!75830 (select (content!139 (t!6409 lt!75569)) (h!2376 lt!75569)))))

(declare-fun e!94146 () Bool)

(assert (=> d!46081 (= lt!75830 e!94146)))

(declare-fun res!68790 () Bool)

(assert (=> d!46081 (=> (not res!68790) (not e!94146))))

(assert (=> d!46081 (= res!68790 ((_ is Cons!1768) (t!6409 lt!75569)))))

(assert (=> d!46081 (= (contains!928 (t!6409 lt!75569) (h!2376 lt!75569)) lt!75830)))

(declare-fun b!144463 () Bool)

(declare-fun e!94145 () Bool)

(assert (=> b!144463 (= e!94146 e!94145)))

(declare-fun res!68789 () Bool)

(assert (=> b!144463 (=> res!68789 e!94145)))

(assert (=> b!144463 (= res!68789 (= (h!2376 (t!6409 lt!75569)) (h!2376 lt!75569)))))

(declare-fun b!144464 () Bool)

(assert (=> b!144464 (= e!94145 (contains!928 (t!6409 (t!6409 lt!75569)) (h!2376 lt!75569)))))

(assert (= (and d!46081 res!68790) b!144463))

(assert (= (and b!144463 (not res!68789)) b!144464))

(assert (=> d!46081 m!174273))

(declare-fun m!174395 () Bool)

(assert (=> d!46081 m!174395))

(declare-fun m!174397 () Bool)

(assert (=> b!144464 m!174397))

(assert (=> b!144320 d!46081))

(declare-fun bm!16073 () Bool)

(declare-fun call!16076 () Bool)

(assert (=> bm!16073 (= call!16076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun b!144473 () Bool)

(declare-fun e!94154 () Bool)

(declare-fun e!94153 () Bool)

(assert (=> b!144473 (= e!94154 e!94153)))

(declare-fun c!27377 () Bool)

(assert (=> b!144473 (= c!27377 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46083 () Bool)

(declare-fun res!68796 () Bool)

(assert (=> d!46083 (=> res!68796 e!94154)))

(assert (=> d!46083 (= res!68796 (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(assert (=> d!46083 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4741 newMap!16) (mask!7334 newMap!16)) e!94154)))

(declare-fun b!144474 () Bool)

(declare-fun e!94155 () Bool)

(assert (=> b!144474 (= e!94153 e!94155)))

(declare-fun lt!75838 () (_ BitVec 64))

(assert (=> b!144474 (= lt!75838 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75839 () Unit!4571)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4924 (_ BitVec 64) (_ BitVec 32)) Unit!4571)

(assert (=> b!144474 (= lt!75839 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4741 newMap!16) lt!75838 #b00000000000000000000000000000000))))

(assert (=> b!144474 (arrayContainsKey!0 (_keys!4741 newMap!16) lt!75838 #b00000000000000000000000000000000)))

(declare-fun lt!75837 () Unit!4571)

(assert (=> b!144474 (= lt!75837 lt!75839)))

(declare-fun res!68795 () Bool)

(assert (=> b!144474 (= res!68795 (= (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000) (_keys!4741 newMap!16) (mask!7334 newMap!16)) (Found!291 #b00000000000000000000000000000000)))))

(assert (=> b!144474 (=> (not res!68795) (not e!94155))))

(declare-fun b!144475 () Bool)

(assert (=> b!144475 (= e!94155 call!16076)))

(declare-fun b!144476 () Bool)

(assert (=> b!144476 (= e!94153 call!16076)))

(assert (= (and d!46083 (not res!68796)) b!144473))

(assert (= (and b!144473 c!27377) b!144474))

(assert (= (and b!144473 (not c!27377)) b!144476))

(assert (= (and b!144474 res!68795) b!144475))

(assert (= (or b!144475 b!144476) bm!16073))

(declare-fun m!174399 () Bool)

(assert (=> bm!16073 m!174399))

(assert (=> b!144473 m!174345))

(assert (=> b!144473 m!174345))

(assert (=> b!144473 m!174357))

(assert (=> b!144474 m!174345))

(declare-fun m!174401 () Bool)

(assert (=> b!144474 m!174401))

(declare-fun m!174403 () Bool)

(assert (=> b!144474 m!174403))

(assert (=> b!144474 m!174345))

(declare-fun m!174405 () Bool)

(assert (=> b!144474 m!174405))

(assert (=> b!144329 d!46083))

(declare-fun d!46085 () Bool)

(declare-fun res!68797 () Bool)

(declare-fun e!94156 () Bool)

(assert (=> d!46085 (=> (not res!68797) (not e!94156))))

(assert (=> d!46085 (= res!68797 (simpleValid!97 (v!3308 (underlying!486 thiss!992))))))

(assert (=> d!46085 (= (valid!563 (v!3308 (underlying!486 thiss!992))) e!94156)))

(declare-fun b!144477 () Bool)

(declare-fun res!68798 () Bool)

(assert (=> b!144477 (=> (not res!68798) (not e!94156))))

(assert (=> b!144477 (= res!68798 (= (arrayCountValidKeys!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))) (_size!631 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144478 () Bool)

(declare-fun res!68799 () Bool)

(assert (=> b!144478 (=> (not res!68799) (not e!94156))))

(assert (=> b!144478 (= res!68799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144479 () Bool)

(assert (=> b!144479 (= e!94156 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000000 Nil!1769))))

(assert (= (and d!46085 res!68797) b!144477))

(assert (= (and b!144477 res!68798) b!144478))

(assert (= (and b!144478 res!68799) b!144479))

(declare-fun m!174407 () Bool)

(assert (=> d!46085 m!174407))

(declare-fun m!174409 () Bool)

(assert (=> b!144477 m!174409))

(declare-fun m!174411 () Bool)

(assert (=> b!144478 m!174411))

(declare-fun m!174413 () Bool)

(assert (=> b!144479 m!174413))

(assert (=> d!46037 d!46085))

(assert (=> bm!16035 d!46019))

(declare-fun d!46087 () Bool)

(declare-fun e!94157 () Bool)

(assert (=> d!46087 e!94157))

(declare-fun res!68801 () Bool)

(assert (=> d!46087 (=> (not res!68801) (not e!94157))))

(declare-fun lt!75840 () ListLongMap!1753)

(assert (=> d!46087 (= res!68801 (contains!929 lt!75840 (_1!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!75843 () List!1771)

(assert (=> d!46087 (= lt!75840 (ListLongMap!1754 lt!75843))))

(declare-fun lt!75842 () Unit!4571)

(declare-fun lt!75841 () Unit!4571)

(assert (=> d!46087 (= lt!75842 lt!75841)))

(assert (=> d!46087 (= (getValueByKey!177 lt!75843 (_1!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!182 (_2!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46087 (= lt!75841 (lemmaContainsTupThenGetReturnValue!93 lt!75843 (_1!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46087 (= lt!75843 (insertStrictlySorted!95 (toList!892 call!16030) (_1!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46087 (= (+!176 call!16030 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!75840)))

(declare-fun b!144480 () Bool)

(declare-fun res!68800 () Bool)

(assert (=> b!144480 (=> (not res!68800) (not e!94157))))

(assert (=> b!144480 (= res!68800 (= (getValueByKey!177 (toList!892 lt!75840) (_1!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!182 (_2!1357 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!144481 () Bool)

(assert (=> b!144481 (= e!94157 (contains!931 (toList!892 lt!75840) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!46087 res!68801) b!144480))

(assert (= (and b!144480 res!68800) b!144481))

(declare-fun m!174415 () Bool)

(assert (=> d!46087 m!174415))

(declare-fun m!174417 () Bool)

(assert (=> d!46087 m!174417))

(declare-fun m!174419 () Bool)

(assert (=> d!46087 m!174419))

(declare-fun m!174421 () Bool)

(assert (=> d!46087 m!174421))

(declare-fun m!174423 () Bool)

(assert (=> b!144480 m!174423))

(declare-fun m!174425 () Bool)

(assert (=> b!144481 m!174425))

(assert (=> b!144234 d!46087))

(declare-fun d!46089 () Bool)

(declare-fun lt!75844 () Bool)

(assert (=> d!46089 (= lt!75844 (select (content!139 (t!6409 lt!75569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94159 () Bool)

(assert (=> d!46089 (= lt!75844 e!94159)))

(declare-fun res!68803 () Bool)

(assert (=> d!46089 (=> (not res!68803) (not e!94159))))

(assert (=> d!46089 (= res!68803 ((_ is Cons!1768) (t!6409 lt!75569)))))

(assert (=> d!46089 (= (contains!928 (t!6409 lt!75569) #b1000000000000000000000000000000000000000000000000000000000000000) lt!75844)))

(declare-fun b!144482 () Bool)

(declare-fun e!94158 () Bool)

(assert (=> b!144482 (= e!94159 e!94158)))

(declare-fun res!68802 () Bool)

(assert (=> b!144482 (=> res!68802 e!94158)))

(assert (=> b!144482 (= res!68802 (= (h!2376 (t!6409 lt!75569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144483 () Bool)

(assert (=> b!144483 (= e!94158 (contains!928 (t!6409 (t!6409 lt!75569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46089 res!68803) b!144482))

(assert (= (and b!144482 (not res!68802)) b!144483))

(assert (=> d!46089 m!174273))

(declare-fun m!174427 () Bool)

(assert (=> d!46089 m!174427))

(declare-fun m!174429 () Bool)

(assert (=> b!144483 m!174429))

(assert (=> b!144336 d!46089))

(assert (=> b!144350 d!46055))

(declare-fun d!46091 () Bool)

(declare-fun e!94160 () Bool)

(assert (=> d!46091 e!94160))

(declare-fun res!68804 () Bool)

(assert (=> d!46091 (=> res!68804 e!94160)))

(declare-fun lt!75846 () Bool)

(assert (=> d!46091 (= res!68804 (not lt!75846))))

(declare-fun lt!75847 () Bool)

(assert (=> d!46091 (= lt!75846 lt!75847)))

(declare-fun lt!75848 () Unit!4571)

(declare-fun e!94161 () Unit!4571)

(assert (=> d!46091 (= lt!75848 e!94161)))

(declare-fun c!27378 () Bool)

(assert (=> d!46091 (= c!27378 lt!75847)))

(assert (=> d!46091 (= lt!75847 (containsKey!181 (toList!892 lt!75733) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46091 (= (contains!929 lt!75733 #b0000000000000000000000000000000000000000000000000000000000000000) lt!75846)))

(declare-fun b!144484 () Bool)

(declare-fun lt!75845 () Unit!4571)

(assert (=> b!144484 (= e!94161 lt!75845)))

(assert (=> b!144484 (= lt!75845 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 lt!75733) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144484 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144485 () Bool)

(declare-fun Unit!4582 () Unit!4571)

(assert (=> b!144485 (= e!94161 Unit!4582)))

(declare-fun b!144486 () Bool)

(assert (=> b!144486 (= e!94160 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46091 c!27378) b!144484))

(assert (= (and d!46091 (not c!27378)) b!144485))

(assert (= (and d!46091 (not res!68804)) b!144486))

(declare-fun m!174431 () Bool)

(assert (=> d!46091 m!174431))

(declare-fun m!174433 () Bool)

(assert (=> b!144484 m!174433))

(declare-fun m!174435 () Bool)

(assert (=> b!144484 m!174435))

(assert (=> b!144484 m!174435))

(declare-fun m!174437 () Bool)

(assert (=> b!144484 m!174437))

(assert (=> b!144486 m!174435))

(assert (=> b!144486 m!174435))

(assert (=> b!144486 m!174437))

(assert (=> bm!16055 d!46091))

(declare-fun d!46093 () Bool)

(declare-fun get!1550 (Option!183) V!3571)

(assert (=> d!46093 (= (apply!122 lt!75733 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1550 (getValueByKey!177 (toList!892 lt!75733) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6101 () Bool)

(assert (= bs!6101 d!46093))

(declare-fun m!174439 () Bool)

(assert (=> bs!6101 m!174439))

(assert (=> bs!6101 m!174439))

(declare-fun m!174441 () Bool)

(assert (=> bs!6101 m!174441))

(assert (=> b!144311 d!46093))

(declare-fun d!46095 () Bool)

(declare-fun lt!75849 () Bool)

(assert (=> d!46095 (= lt!75849 (select (content!139 (t!6409 lt!75569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94163 () Bool)

(assert (=> d!46095 (= lt!75849 e!94163)))

(declare-fun res!68806 () Bool)

(assert (=> d!46095 (=> (not res!68806) (not e!94163))))

(assert (=> d!46095 (= res!68806 ((_ is Cons!1768) (t!6409 lt!75569)))))

(assert (=> d!46095 (= (contains!928 (t!6409 lt!75569) #b0000000000000000000000000000000000000000000000000000000000000000) lt!75849)))

(declare-fun b!144487 () Bool)

(declare-fun e!94162 () Bool)

(assert (=> b!144487 (= e!94163 e!94162)))

(declare-fun res!68805 () Bool)

(assert (=> b!144487 (=> res!68805 e!94162)))

(assert (=> b!144487 (= res!68805 (= (h!2376 (t!6409 lt!75569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144488 () Bool)

(assert (=> b!144488 (= e!94162 (contains!928 (t!6409 (t!6409 lt!75569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46095 res!68806) b!144487))

(assert (= (and b!144487 (not res!68805)) b!144488))

(assert (=> d!46095 m!174273))

(declare-fun m!174443 () Bool)

(assert (=> d!46095 m!174443))

(declare-fun m!174445 () Bool)

(assert (=> b!144488 m!174445))

(assert (=> b!144365 d!46095))

(declare-fun b!144505 () Bool)

(declare-fun lt!75854 () SeekEntryResult!291)

(assert (=> b!144505 (and (bvsge (index!3329 lt!75854) #b00000000000000000000000000000000) (bvslt (index!3329 lt!75854) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun res!68816 () Bool)

(assert (=> b!144505 (= res!68816 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3329 lt!75854)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94175 () Bool)

(assert (=> b!144505 (=> (not res!68816) (not e!94175))))

(declare-fun b!144506 () Bool)

(declare-fun res!68815 () Bool)

(declare-fun e!94172 () Bool)

(assert (=> b!144506 (=> (not res!68815) (not e!94172))))

(declare-fun call!16081 () Bool)

(assert (=> b!144506 (= res!68815 call!16081)))

(declare-fun e!94173 () Bool)

(assert (=> b!144506 (= e!94173 e!94172)))

(declare-fun b!144507 () Bool)

(declare-fun e!94174 () Bool)

(assert (=> b!144507 (= e!94174 e!94173)))

(declare-fun c!27383 () Bool)

(assert (=> b!144507 (= c!27383 ((_ is MissingVacant!291) lt!75854))))

(declare-fun d!46097 () Bool)

(assert (=> d!46097 e!94174))

(declare-fun c!27384 () Bool)

(assert (=> d!46097 (= c!27384 ((_ is MissingZero!291) lt!75854))))

(assert (=> d!46097 (= lt!75854 (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun lt!75855 () Unit!4571)

(declare-fun choose!893 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) Int) Unit!4571)

(assert (=> d!46097 (= lt!75855 (choose!893 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46097 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46097 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)) lt!75855)))

(declare-fun b!144508 () Bool)

(assert (=> b!144508 (= e!94173 ((_ is Undefined!291) lt!75854))))

(declare-fun b!144509 () Bool)

(assert (=> b!144509 (= e!94174 e!94175)))

(declare-fun res!68817 () Bool)

(assert (=> b!144509 (= res!68817 call!16081)))

(assert (=> b!144509 (=> (not res!68817) (not e!94175))))

(declare-fun call!16082 () Bool)

(declare-fun bm!16078 () Bool)

(assert (=> bm!16078 (= call!16082 (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!144510 () Bool)

(assert (=> b!144510 (= e!94172 (not call!16082))))

(declare-fun b!144511 () Bool)

(declare-fun res!68818 () Bool)

(assert (=> b!144511 (=> (not res!68818) (not e!94172))))

(assert (=> b!144511 (= res!68818 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3332 lt!75854)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144511 (and (bvsge (index!3332 lt!75854) #b00000000000000000000000000000000) (bvslt (index!3332 lt!75854) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun b!144512 () Bool)

(assert (=> b!144512 (= e!94175 (not call!16082))))

(declare-fun bm!16079 () Bool)

(assert (=> bm!16079 (= call!16081 (inRange!0 (ite c!27384 (index!3329 lt!75854) (index!3332 lt!75854)) (mask!7334 newMap!16)))))

(assert (= (and d!46097 c!27384) b!144509))

(assert (= (and d!46097 (not c!27384)) b!144507))

(assert (= (and b!144509 res!68817) b!144505))

(assert (= (and b!144505 res!68816) b!144512))

(assert (= (and b!144507 c!27383) b!144506))

(assert (= (and b!144507 (not c!27383)) b!144508))

(assert (= (and b!144506 res!68815) b!144511))

(assert (= (and b!144511 res!68818) b!144510))

(assert (= (or b!144509 b!144506) bm!16079))

(assert (= (or b!144512 b!144510) bm!16078))

(assert (=> d!46097 m!174017))

(assert (=> d!46097 m!174109))

(assert (=> d!46097 m!174017))

(declare-fun m!174447 () Bool)

(assert (=> d!46097 m!174447))

(assert (=> d!46097 m!174257))

(declare-fun m!174449 () Bool)

(assert (=> b!144505 m!174449))

(declare-fun m!174451 () Bool)

(assert (=> bm!16079 m!174451))

(declare-fun m!174453 () Bool)

(assert (=> b!144511 m!174453))

(assert (=> bm!16078 m!174017))

(assert (=> bm!16078 m!174137))

(assert (=> bm!16036 d!46097))

(declare-fun b!144537 () Bool)

(declare-fun e!94194 () ListLongMap!1753)

(declare-fun call!16085 () ListLongMap!1753)

(assert (=> b!144537 (= e!94194 call!16085)))

(declare-fun d!46099 () Bool)

(declare-fun e!94193 () Bool)

(assert (=> d!46099 e!94193))

(declare-fun res!68828 () Bool)

(assert (=> d!46099 (=> (not res!68828) (not e!94193))))

(declare-fun lt!75874 () ListLongMap!1753)

(assert (=> d!46099 (= res!68828 (not (contains!929 lt!75874 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!94196 () ListLongMap!1753)

(assert (=> d!46099 (= lt!75874 e!94196)))

(declare-fun c!27395 () Bool)

(assert (=> d!46099 (= c!27395 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> d!46099 (validMask!0 (mask!7334 (v!3308 (underlying!486 thiss!992))))))

(assert (=> d!46099 (= (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) lt!75874)))

(declare-fun b!144538 () Bool)

(declare-fun e!94192 () Bool)

(assert (=> b!144538 (= e!94193 e!94192)))

(declare-fun c!27393 () Bool)

(declare-fun e!94195 () Bool)

(assert (=> b!144538 (= c!27393 e!94195)))

(declare-fun res!68830 () Bool)

(assert (=> b!144538 (=> (not res!68830) (not e!94195))))

(assert (=> b!144538 (= res!68830 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144539 () Bool)

(declare-fun lt!75870 () Unit!4571)

(declare-fun lt!75875 () Unit!4571)

(assert (=> b!144539 (= lt!75870 lt!75875)))

(declare-fun lt!75873 () ListLongMap!1753)

(declare-fun lt!75876 () (_ BitVec 64))

(declare-fun lt!75872 () V!3571)

(declare-fun lt!75871 () (_ BitVec 64))

(assert (=> b!144539 (not (contains!929 (+!176 lt!75873 (tuple2!2695 lt!75876 lt!75872)) lt!75871))))

(declare-fun addStillNotContains!68 (ListLongMap!1753 (_ BitVec 64) V!3571 (_ BitVec 64)) Unit!4571)

(assert (=> b!144539 (= lt!75875 (addStillNotContains!68 lt!75873 lt!75876 lt!75872 lt!75871))))

(assert (=> b!144539 (= lt!75871 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!144539 (= lt!75872 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!144539 (= lt!75876 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!144539 (= lt!75873 call!16085)))

(assert (=> b!144539 (= e!94194 (+!176 call!16085 (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!16082 () Bool)

(assert (=> bm!16082 (= call!16085 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))))))

(declare-fun b!144540 () Bool)

(declare-fun e!94190 () Bool)

(assert (=> b!144540 (= e!94192 e!94190)))

(assert (=> b!144540 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun res!68829 () Bool)

(assert (=> b!144540 (= res!68829 (contains!929 lt!75874 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!144540 (=> (not res!68829) (not e!94190))))

(declare-fun b!144541 () Bool)

(declare-fun e!94191 () Bool)

(assert (=> b!144541 (= e!94192 e!94191)))

(declare-fun c!27396 () Bool)

(assert (=> b!144541 (= c!27396 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144542 () Bool)

(assert (=> b!144542 (= e!94195 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!144542 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!144543 () Bool)

(assert (=> b!144543 (= e!94196 (ListLongMap!1754 Nil!1768))))

(declare-fun b!144544 () Bool)

(assert (=> b!144544 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> b!144544 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2601 (_values!2959 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> b!144544 (= e!94190 (= (apply!122 lt!75874 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!144545 () Bool)

(assert (=> b!144545 (= e!94191 (= lt!75874 (getCurrentListMapNoExtraKeys!143 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144546 () Bool)

(declare-fun isEmpty!427 (ListLongMap!1753) Bool)

(assert (=> b!144546 (= e!94191 (isEmpty!427 lt!75874))))

(declare-fun b!144547 () Bool)

(assert (=> b!144547 (= e!94196 e!94194)))

(declare-fun c!27394 () Bool)

(assert (=> b!144547 (= c!27394 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!144548 () Bool)

(declare-fun res!68827 () Bool)

(assert (=> b!144548 (=> (not res!68827) (not e!94193))))

(assert (=> b!144548 (= res!68827 (not (contains!929 lt!75874 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46099 c!27395) b!144543))

(assert (= (and d!46099 (not c!27395)) b!144547))

(assert (= (and b!144547 c!27394) b!144539))

(assert (= (and b!144547 (not c!27394)) b!144537))

(assert (= (or b!144539 b!144537) bm!16082))

(assert (= (and d!46099 res!68828) b!144548))

(assert (= (and b!144548 res!68827) b!144538))

(assert (= (and b!144538 res!68830) b!144542))

(assert (= (and b!144538 c!27393) b!144540))

(assert (= (and b!144538 (not c!27393)) b!144541))

(assert (= (and b!144540 res!68829) b!144544))

(assert (= (and b!144541 c!27396) b!144545))

(assert (= (and b!144541 (not c!27396)) b!144546))

(declare-fun b_lambda!6511 () Bool)

(assert (=> (not b_lambda!6511) (not b!144539)))

(assert (=> b!144539 t!6405))

(declare-fun b_and!9021 () Bool)

(assert (= b_and!9017 (and (=> t!6405 result!4245) b_and!9021)))

(assert (=> b!144539 t!6407))

(declare-fun b_and!9023 () Bool)

(assert (= b_and!9019 (and (=> t!6407 result!4249) b_and!9023)))

(declare-fun b_lambda!6513 () Bool)

(assert (=> (not b_lambda!6513) (not b!144544)))

(assert (=> b!144544 t!6405))

(declare-fun b_and!9025 () Bool)

(assert (= b_and!9021 (and (=> t!6405 result!4245) b_and!9025)))

(assert (=> b!144544 t!6407))

(declare-fun b_and!9027 () Bool)

(assert (= b_and!9023 (and (=> t!6407 result!4249) b_and!9027)))

(declare-fun m!174455 () Bool)

(assert (=> b!144548 m!174455))

(declare-fun m!174457 () Bool)

(assert (=> b!144545 m!174457))

(assert (=> b!144539 m!174169))

(assert (=> b!144539 m!174035))

(declare-fun m!174459 () Bool)

(assert (=> b!144539 m!174459))

(declare-fun m!174461 () Bool)

(assert (=> b!144539 m!174461))

(assert (=> b!144539 m!174165))

(assert (=> b!144539 m!174169))

(assert (=> b!144539 m!174035))

(assert (=> b!144539 m!174171))

(assert (=> b!144539 m!174461))

(declare-fun m!174463 () Bool)

(assert (=> b!144539 m!174463))

(declare-fun m!174465 () Bool)

(assert (=> b!144539 m!174465))

(declare-fun m!174467 () Bool)

(assert (=> d!46099 m!174467))

(assert (=> d!46099 m!174213))

(assert (=> bm!16082 m!174457))

(assert (=> b!144540 m!174165))

(assert (=> b!144540 m!174165))

(declare-fun m!174469 () Bool)

(assert (=> b!144540 m!174469))

(assert (=> b!144542 m!174165))

(assert (=> b!144542 m!174165))

(assert (=> b!144542 m!174175))

(assert (=> b!144544 m!174165))

(declare-fun m!174471 () Bool)

(assert (=> b!144544 m!174471))

(assert (=> b!144544 m!174169))

(assert (=> b!144544 m!174035))

(assert (=> b!144544 m!174165))

(assert (=> b!144544 m!174169))

(assert (=> b!144544 m!174035))

(assert (=> b!144544 m!174171))

(assert (=> b!144547 m!174165))

(assert (=> b!144547 m!174165))

(assert (=> b!144547 m!174175))

(declare-fun m!174473 () Bool)

(assert (=> b!144546 m!174473))

(assert (=> bm!16056 d!46099))

(declare-fun d!46101 () Bool)

(declare-fun e!94197 () Bool)

(assert (=> d!46101 e!94197))

(declare-fun res!68831 () Bool)

(assert (=> d!46101 (=> res!68831 e!94197)))

(declare-fun lt!75878 () Bool)

(assert (=> d!46101 (= res!68831 (not lt!75878))))

(declare-fun lt!75879 () Bool)

(assert (=> d!46101 (= lt!75878 lt!75879)))

(declare-fun lt!75880 () Unit!4571)

(declare-fun e!94198 () Unit!4571)

(assert (=> d!46101 (= lt!75880 e!94198)))

(declare-fun c!27397 () Bool)

(assert (=> d!46101 (= c!27397 lt!75879)))

(assert (=> d!46101 (= lt!75879 (containsKey!181 (toList!892 e!93998) (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663)))))))

(assert (=> d!46101 (= (contains!929 e!93998 (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663)))) lt!75878)))

(declare-fun b!144549 () Bool)

(declare-fun lt!75877 () Unit!4571)

(assert (=> b!144549 (= e!94198 lt!75877)))

(assert (=> b!144549 (= lt!75877 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 e!93998) (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663)))))))

(assert (=> b!144549 (isDefined!131 (getValueByKey!177 (toList!892 e!93998) (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663)))))))

(declare-fun b!144550 () Bool)

(declare-fun Unit!4583 () Unit!4571)

(assert (=> b!144550 (= e!94198 Unit!4583)))

(declare-fun b!144551 () Bool)

(assert (=> b!144551 (= e!94197 (isDefined!131 (getValueByKey!177 (toList!892 e!93998) (ite c!27318 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!75663))))))))

(assert (= (and d!46101 c!27397) b!144549))

(assert (= (and d!46101 (not c!27397)) b!144550))

(assert (= (and d!46101 (not res!68831)) b!144551))

(declare-fun m!174475 () Bool)

(assert (=> d!46101 m!174475))

(declare-fun m!174477 () Bool)

(assert (=> b!144549 m!174477))

(declare-fun m!174479 () Bool)

(assert (=> b!144549 m!174479))

(assert (=> b!144549 m!174479))

(declare-fun m!174481 () Bool)

(assert (=> b!144549 m!174481))

(assert (=> b!144551 m!174479))

(assert (=> b!144551 m!174479))

(assert (=> b!144551 m!174481))

(assert (=> bm!16027 d!46101))

(declare-fun d!46103 () Bool)

(declare-fun e!94199 () Bool)

(assert (=> d!46103 e!94199))

(declare-fun res!68833 () Bool)

(assert (=> d!46103 (=> (not res!68833) (not e!94199))))

(declare-fun lt!75881 () ListLongMap!1753)

(assert (=> d!46103 (= res!68833 (contains!929 lt!75881 (_1!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!75884 () List!1771)

(assert (=> d!46103 (= lt!75881 (ListLongMap!1754 lt!75884))))

(declare-fun lt!75883 () Unit!4571)

(declare-fun lt!75882 () Unit!4571)

(assert (=> d!46103 (= lt!75883 lt!75882)))

(assert (=> d!46103 (= (getValueByKey!177 lt!75884 (_1!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!182 (_2!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46103 (= lt!75882 (lemmaContainsTupThenGetReturnValue!93 lt!75884 (_1!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46103 (= lt!75884 (insertStrictlySorted!95 (toList!892 e!94000) (_1!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46103 (= (+!176 e!94000 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!75881)))

(declare-fun b!144552 () Bool)

(declare-fun res!68832 () Bool)

(assert (=> b!144552 (=> (not res!68832) (not e!94199))))

(assert (=> b!144552 (= res!68832 (= (getValueByKey!177 (toList!892 lt!75881) (_1!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!182 (_2!1357 (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!144553 () Bool)

(assert (=> b!144553 (= e!94199 (contains!931 (toList!892 lt!75881) (ite c!27325 (ite c!27316 (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!46103 res!68833) b!144552))

(assert (= (and b!144552 res!68832) b!144553))

(declare-fun m!174483 () Bool)

(assert (=> d!46103 m!174483))

(declare-fun m!174485 () Bool)

(assert (=> d!46103 m!174485))

(declare-fun m!174487 () Bool)

(assert (=> d!46103 m!174487))

(declare-fun m!174489 () Bool)

(assert (=> d!46103 m!174489))

(declare-fun m!174491 () Bool)

(assert (=> b!144552 m!174491))

(declare-fun m!174493 () Bool)

(assert (=> b!144553 m!174493))

(assert (=> bm!16025 d!46103))

(declare-fun d!46105 () Bool)

(declare-fun e!94200 () Bool)

(assert (=> d!46105 e!94200))

(declare-fun res!68834 () Bool)

(assert (=> d!46105 (=> res!68834 e!94200)))

(declare-fun lt!75886 () Bool)

(assert (=> d!46105 (= res!68834 (not lt!75886))))

(declare-fun lt!75887 () Bool)

(assert (=> d!46105 (= lt!75886 lt!75887)))

(declare-fun lt!75888 () Unit!4571)

(declare-fun e!94201 () Unit!4571)

(assert (=> d!46105 (= lt!75888 e!94201)))

(declare-fun c!27398 () Bool)

(assert (=> d!46105 (= c!27398 lt!75887)))

(assert (=> d!46105 (= lt!75887 (containsKey!181 (toList!892 call!16027) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46105 (= (contains!929 call!16027 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) lt!75886)))

(declare-fun b!144554 () Bool)

(declare-fun lt!75885 () Unit!4571)

(assert (=> b!144554 (= e!94201 lt!75885)))

(assert (=> b!144554 (= lt!75885 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 call!16027) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> b!144554 (isDefined!131 (getValueByKey!177 (toList!892 call!16027) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144555 () Bool)

(declare-fun Unit!4584 () Unit!4571)

(assert (=> b!144555 (= e!94201 Unit!4584)))

(declare-fun b!144556 () Bool)

(assert (=> b!144556 (= e!94200 (isDefined!131 (getValueByKey!177 (toList!892 call!16027) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (= (and d!46105 c!27398) b!144554))

(assert (= (and d!46105 (not c!27398)) b!144555))

(assert (= (and d!46105 (not res!68834)) b!144556))

(assert (=> d!46105 m!174017))

(declare-fun m!174495 () Bool)

(assert (=> d!46105 m!174495))

(assert (=> b!144554 m!174017))

(declare-fun m!174497 () Bool)

(assert (=> b!144554 m!174497))

(assert (=> b!144554 m!174017))

(declare-fun m!174499 () Bool)

(assert (=> b!144554 m!174499))

(assert (=> b!144554 m!174499))

(declare-fun m!174501 () Bool)

(assert (=> b!144554 m!174501))

(assert (=> b!144556 m!174017))

(assert (=> b!144556 m!174499))

(assert (=> b!144556 m!174499))

(assert (=> b!144556 m!174501))

(assert (=> b!144231 d!46105))

(assert (=> d!46047 d!46053))

(declare-fun d!46107 () Bool)

(assert (=> d!46107 (= (validMask!0 (mask!7334 (v!3308 (underlying!486 thiss!992)))) (and (or (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000001111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000011111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000001111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000011111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000001111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000011111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000001111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000011111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000000111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000001111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000011111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000000111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000001111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000011111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000000111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000001111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000011111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000000111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000001111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000011111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00000111111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00001111111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00011111111111111111111111111111) (= (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7334 (v!3308 (underlying!486 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!46021 d!46107))

(declare-fun d!46109 () Bool)

(declare-fun res!68835 () Bool)

(declare-fun e!94202 () Bool)

(assert (=> d!46109 (=> res!68835 e!94202)))

(assert (=> d!46109 (= res!68835 (= (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46109 (= (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000) e!94202)))

(declare-fun b!144557 () Bool)

(declare-fun e!94203 () Bool)

(assert (=> b!144557 (= e!94202 e!94203)))

(declare-fun res!68836 () Bool)

(assert (=> b!144557 (=> (not res!68836) (not e!94203))))

(assert (=> b!144557 (= res!68836 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun b!144558 () Bool)

(assert (=> b!144558 (= e!94203 (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!46109 (not res!68835)) b!144557))

(assert (= (and b!144557 res!68836) b!144558))

(assert (=> d!46109 m!174345))

(assert (=> b!144558 m!174017))

(declare-fun m!174503 () Bool)

(assert (=> b!144558 m!174503))

(assert (=> bm!16033 d!46109))

(declare-fun d!46111 () Bool)

(assert (=> d!46111 (= (map!1445 (_2!1358 lt!75662)) (getCurrentListMap!558 (_keys!4741 (_2!1358 lt!75662)) (_values!2959 (_2!1358 lt!75662)) (mask!7334 (_2!1358 lt!75662)) (extraKeys!2725 (_2!1358 lt!75662)) (zeroValue!2823 (_2!1358 lt!75662)) (minValue!2823 (_2!1358 lt!75662)) #b00000000000000000000000000000000 (defaultEntry!2976 (_2!1358 lt!75662))))))

(declare-fun bs!6102 () Bool)

(assert (= bs!6102 d!46111))

(declare-fun m!174505 () Bool)

(assert (=> bs!6102 m!174505))

(assert (=> bm!16018 d!46111))

(declare-fun d!46113 () Bool)

(assert (=> d!46113 (= (apply!122 lt!75733 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1550 (getValueByKey!177 (toList!892 lt!75733) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!6103 () Bool)

(assert (= bs!6103 d!46113))

(assert (=> bs!6103 m!174165))

(assert (=> bs!6103 m!174267))

(assert (=> bs!6103 m!174267))

(declare-fun m!174507 () Bool)

(assert (=> bs!6103 m!174507))

(assert (=> b!144309 d!46113))

(declare-fun d!46115 () Bool)

(declare-fun c!27399 () Bool)

(assert (=> d!46115 (= c!27399 ((_ is ValueCellFull!1128) (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!94204 () V!3571)

(assert (=> d!46115 (= (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!94204)))

(declare-fun b!144559 () Bool)

(assert (=> b!144559 (= e!94204 (get!1548 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!144560 () Bool)

(assert (=> b!144560 (= e!94204 (get!1549 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46115 c!27399) b!144559))

(assert (= (and d!46115 (not c!27399)) b!144560))

(assert (=> b!144559 m!174169))

(assert (=> b!144559 m!174035))

(declare-fun m!174509 () Bool)

(assert (=> b!144559 m!174509))

(assert (=> b!144560 m!174169))

(assert (=> b!144560 m!174035))

(declare-fun m!174511 () Bool)

(assert (=> b!144560 m!174511))

(assert (=> b!144309 d!46115))

(assert (=> b!144232 d!46079))

(declare-fun b!144561 () Bool)

(declare-fun res!68837 () Bool)

(declare-fun e!94209 () Bool)

(assert (=> b!144561 (=> (not res!68837) (not e!94209))))

(declare-fun e!94206 () Bool)

(assert (=> b!144561 (= res!68837 e!94206)))

(declare-fun res!68838 () Bool)

(assert (=> b!144561 (=> res!68838 e!94206)))

(declare-fun e!94205 () Bool)

(assert (=> b!144561 (= res!68838 (not e!94205))))

(declare-fun res!68841 () Bool)

(assert (=> b!144561 (=> (not res!68841) (not e!94205))))

(assert (=> b!144561 (= res!68841 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16083 () Bool)

(declare-fun call!16092 () Bool)

(declare-fun lt!75893 () ListLongMap!1753)

(assert (=> bm!16083 (= call!16092 (contains!929 lt!75893 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16084 () Bool)

(declare-fun call!16091 () Bool)

(assert (=> bm!16084 (= call!16091 (contains!929 lt!75893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144562 () Bool)

(declare-fun e!94215 () Bool)

(assert (=> b!144562 (= e!94215 (= (apply!122 lt!75893 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2823 newMap!16)))))

(declare-fun bm!16085 () Bool)

(declare-fun call!16088 () ListLongMap!1753)

(assert (=> bm!16085 (= call!16088 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun b!144563 () Bool)

(declare-fun e!94216 () Bool)

(assert (=> b!144563 (= e!94216 (not call!16092))))

(declare-fun b!144564 () Bool)

(declare-fun e!94217 () Bool)

(assert (=> b!144564 (= e!94217 e!94215)))

(declare-fun res!68839 () Bool)

(assert (=> b!144564 (= res!68839 call!16091)))

(assert (=> b!144564 (=> (not res!68839) (not e!94215))))

(declare-fun b!144565 () Bool)

(assert (=> b!144565 (= e!94205 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16086 () Bool)

(declare-fun call!16087 () ListLongMap!1753)

(assert (=> bm!16086 (= call!16087 call!16088)))

(declare-fun b!144566 () Bool)

(declare-fun e!94212 () ListLongMap!1753)

(declare-fun call!16086 () ListLongMap!1753)

(assert (=> b!144566 (= e!94212 call!16086)))

(declare-fun d!46117 () Bool)

(assert (=> d!46117 e!94209))

(declare-fun res!68840 () Bool)

(assert (=> d!46117 (=> (not res!68840) (not e!94209))))

(assert (=> d!46117 (= res!68840 (or (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))))

(declare-fun lt!75892 () ListLongMap!1753)

(assert (=> d!46117 (= lt!75893 lt!75892)))

(declare-fun lt!75905 () Unit!4571)

(declare-fun e!94210 () Unit!4571)

(assert (=> d!46117 (= lt!75905 e!94210)))

(declare-fun c!27401 () Bool)

(declare-fun e!94213 () Bool)

(assert (=> d!46117 (= c!27401 e!94213)))

(declare-fun res!68845 () Bool)

(assert (=> d!46117 (=> (not res!68845) (not e!94213))))

(assert (=> d!46117 (= res!68845 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun e!94211 () ListLongMap!1753)

(assert (=> d!46117 (= lt!75892 e!94211)))

(declare-fun c!27403 () Bool)

(assert (=> d!46117 (= c!27403 (and (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46117 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46117 (= (getCurrentListMap!558 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) lt!75893)))

(declare-fun b!144567 () Bool)

(declare-fun e!94207 () ListLongMap!1753)

(declare-fun call!16089 () ListLongMap!1753)

(assert (=> b!144567 (= e!94207 call!16089)))

(declare-fun c!27405 () Bool)

(declare-fun bm!16087 () Bool)

(declare-fun call!16090 () ListLongMap!1753)

(assert (=> bm!16087 (= call!16090 (+!176 (ite c!27403 call!16088 (ite c!27405 call!16087 call!16089)) (ite (or c!27403 c!27405) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2823 newMap!16)) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16))))))))

(declare-fun b!144568 () Bool)

(declare-fun lt!75907 () Unit!4571)

(assert (=> b!144568 (= e!94210 lt!75907)))

(declare-fun lt!75908 () ListLongMap!1753)

(assert (=> b!144568 (= lt!75908 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75891 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75891 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75897 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75897 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75890 () Unit!4571)

(assert (=> b!144568 (= lt!75890 (addStillContains!98 lt!75908 lt!75891 (zeroValue!2823 newMap!16) lt!75897))))

(assert (=> b!144568 (contains!929 (+!176 lt!75908 (tuple2!2695 lt!75891 (zeroValue!2823 newMap!16))) lt!75897)))

(declare-fun lt!75903 () Unit!4571)

(assert (=> b!144568 (= lt!75903 lt!75890)))

(declare-fun lt!75889 () ListLongMap!1753)

(assert (=> b!144568 (= lt!75889 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75899 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75899 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75906 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75906 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75909 () Unit!4571)

(assert (=> b!144568 (= lt!75909 (addApplyDifferent!98 lt!75889 lt!75899 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) lt!75906))))

(assert (=> b!144568 (= (apply!122 (+!176 lt!75889 (tuple2!2695 lt!75899 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)))) lt!75906) (apply!122 lt!75889 lt!75906))))

(declare-fun lt!75910 () Unit!4571)

(assert (=> b!144568 (= lt!75910 lt!75909)))

(declare-fun lt!75901 () ListLongMap!1753)

(assert (=> b!144568 (= lt!75901 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75902 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75902 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75894 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75894 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75895 () Unit!4571)

(assert (=> b!144568 (= lt!75895 (addApplyDifferent!98 lt!75901 lt!75902 (zeroValue!2823 newMap!16) lt!75894))))

(assert (=> b!144568 (= (apply!122 (+!176 lt!75901 (tuple2!2695 lt!75902 (zeroValue!2823 newMap!16))) lt!75894) (apply!122 lt!75901 lt!75894))))

(declare-fun lt!75900 () Unit!4571)

(assert (=> b!144568 (= lt!75900 lt!75895)))

(declare-fun lt!75896 () ListLongMap!1753)

(assert (=> b!144568 (= lt!75896 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite c!27325 (_values!2959 newMap!16) lt!75678) (mask!7334 newMap!16) (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) (zeroValue!2823 newMap!16) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75904 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75904 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75898 () (_ BitVec 64))

(assert (=> b!144568 (= lt!75898 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144568 (= lt!75907 (addApplyDifferent!98 lt!75896 lt!75904 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)) lt!75898))))

(assert (=> b!144568 (= (apply!122 (+!176 lt!75896 (tuple2!2695 lt!75904 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)))) lt!75898) (apply!122 lt!75896 lt!75898))))

(declare-fun b!144569 () Bool)

(declare-fun res!68842 () Bool)

(assert (=> b!144569 (=> (not res!68842) (not e!94209))))

(assert (=> b!144569 (= res!68842 e!94217)))

(declare-fun c!27404 () Bool)

(assert (=> b!144569 (= c!27404 (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!144570 () Bool)

(assert (=> b!144570 (= e!94213 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16088 () Bool)

(assert (=> bm!16088 (= call!16089 call!16087)))

(declare-fun b!144571 () Bool)

(assert (=> b!144571 (= e!94209 e!94216)))

(declare-fun c!27400 () Bool)

(assert (=> b!144571 (= c!27400 (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144572 () Bool)

(declare-fun e!94208 () Bool)

(assert (=> b!144572 (= e!94206 e!94208)))

(declare-fun res!68844 () Bool)

(assert (=> b!144572 (=> (not res!68844) (not e!94208))))

(assert (=> b!144572 (= res!68844 (contains!929 lt!75893 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!144572 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun b!144573 () Bool)

(declare-fun e!94214 () Bool)

(assert (=> b!144573 (= e!94216 e!94214)))

(declare-fun res!68843 () Bool)

(assert (=> b!144573 (= res!68843 call!16092)))

(assert (=> b!144573 (=> (not res!68843) (not e!94214))))

(declare-fun b!144574 () Bool)

(declare-fun Unit!4585 () Unit!4571)

(assert (=> b!144574 (= e!94210 Unit!4585)))

(declare-fun b!144575 () Bool)

(assert (=> b!144575 (= e!94208 (= (apply!122 lt!75893 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)) (get!1547 (select (arr!2327 (ite c!27325 (_values!2959 newMap!16) lt!75678)) #b00000000000000000000000000000000) (dynLambda!445 (defaultEntry!2976 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2601 (ite c!27325 (_values!2959 newMap!16) lt!75678))))))

(assert (=> b!144575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16089 () Bool)

(assert (=> bm!16089 (= call!16086 call!16090)))

(declare-fun b!144576 () Bool)

(assert (=> b!144576 (= e!94211 (+!176 call!16090 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16)))))))

(declare-fun b!144577 () Bool)

(assert (=> b!144577 (= e!94214 (= (apply!122 lt!75893 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!27325 (ite c!27316 (minValue!2823 newMap!16) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2823 newMap!16))))))

(declare-fun b!144578 () Bool)

(assert (=> b!144578 (= e!94211 e!94212)))

(assert (=> b!144578 (= c!27405 (and (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144579 () Bool)

(assert (=> b!144579 (= e!94207 call!16086)))

(declare-fun c!27402 () Bool)

(declare-fun b!144580 () Bool)

(assert (=> b!144580 (= c!27402 (and (not (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!27325 (ite c!27316 (extraKeys!2725 newMap!16) lt!75659) (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!144580 (= e!94212 e!94207)))

(declare-fun b!144581 () Bool)

(assert (=> b!144581 (= e!94217 (not call!16091))))

(assert (= (and d!46117 c!27403) b!144576))

(assert (= (and d!46117 (not c!27403)) b!144578))

(assert (= (and b!144578 c!27405) b!144566))

(assert (= (and b!144578 (not c!27405)) b!144580))

(assert (= (and b!144580 c!27402) b!144579))

(assert (= (and b!144580 (not c!27402)) b!144567))

(assert (= (or b!144579 b!144567) bm!16088))

(assert (= (or b!144566 bm!16088) bm!16086))

(assert (= (or b!144566 b!144579) bm!16089))

(assert (= (or b!144576 bm!16086) bm!16085))

(assert (= (or b!144576 bm!16089) bm!16087))

(assert (= (and d!46117 res!68845) b!144570))

(assert (= (and d!46117 c!27401) b!144568))

(assert (= (and d!46117 (not c!27401)) b!144574))

(assert (= (and d!46117 res!68840) b!144561))

(assert (= (and b!144561 res!68841) b!144565))

(assert (= (and b!144561 (not res!68838)) b!144572))

(assert (= (and b!144572 res!68844) b!144575))

(assert (= (and b!144561 res!68837) b!144569))

(assert (= (and b!144569 c!27404) b!144564))

(assert (= (and b!144569 (not c!27404)) b!144581))

(assert (= (and b!144564 res!68839) b!144562))

(assert (= (or b!144564 b!144581) bm!16084))

(assert (= (and b!144569 res!68842) b!144571))

(assert (= (and b!144571 c!27400) b!144573))

(assert (= (and b!144571 (not c!27400)) b!144563))

(assert (= (and b!144573 res!68843) b!144577))

(assert (= (or b!144573 b!144563) bm!16083))

(declare-fun b_lambda!6515 () Bool)

(assert (=> (not b_lambda!6515) (not b!144575)))

(assert (=> b!144575 t!6417))

(declare-fun b_and!9029 () Bool)

(assert (= b_and!9025 (and (=> t!6417 result!4259) b_and!9029)))

(assert (=> b!144575 t!6419))

(declare-fun b_and!9031 () Bool)

(assert (= b_and!9027 (and (=> t!6419 result!4261) b_and!9031)))

(declare-fun m!174513 () Bool)

(assert (=> b!144577 m!174513))

(declare-fun m!174515 () Bool)

(assert (=> bm!16087 m!174515))

(declare-fun m!174517 () Bool)

(assert (=> bm!16084 m!174517))

(declare-fun m!174519 () Bool)

(assert (=> b!144562 m!174519))

(assert (=> b!144575 m!174345))

(declare-fun m!174521 () Bool)

(assert (=> b!144575 m!174521))

(assert (=> b!144575 m!174345))

(assert (=> b!144575 m!174349))

(declare-fun m!174523 () Bool)

(assert (=> b!144575 m!174523))

(assert (=> b!144575 m!174523))

(assert (=> b!144575 m!174349))

(declare-fun m!174525 () Bool)

(assert (=> b!144575 m!174525))

(declare-fun m!174527 () Bool)

(assert (=> b!144576 m!174527))

(assert (=> b!144570 m!174345))

(assert (=> b!144570 m!174345))

(assert (=> b!144570 m!174357))

(declare-fun m!174529 () Bool)

(assert (=> bm!16085 m!174529))

(declare-fun m!174531 () Bool)

(assert (=> bm!16083 m!174531))

(declare-fun m!174533 () Bool)

(assert (=> b!144568 m!174533))

(declare-fun m!174535 () Bool)

(assert (=> b!144568 m!174535))

(declare-fun m!174537 () Bool)

(assert (=> b!144568 m!174537))

(declare-fun m!174539 () Bool)

(assert (=> b!144568 m!174539))

(declare-fun m!174541 () Bool)

(assert (=> b!144568 m!174541))

(declare-fun m!174543 () Bool)

(assert (=> b!144568 m!174543))

(declare-fun m!174545 () Bool)

(assert (=> b!144568 m!174545))

(declare-fun m!174547 () Bool)

(assert (=> b!144568 m!174547))

(declare-fun m!174549 () Bool)

(assert (=> b!144568 m!174549))

(declare-fun m!174551 () Bool)

(assert (=> b!144568 m!174551))

(assert (=> b!144568 m!174345))

(declare-fun m!174553 () Bool)

(assert (=> b!144568 m!174553))

(declare-fun m!174555 () Bool)

(assert (=> b!144568 m!174555))

(declare-fun m!174557 () Bool)

(assert (=> b!144568 m!174557))

(declare-fun m!174559 () Bool)

(assert (=> b!144568 m!174559))

(assert (=> b!144568 m!174541))

(assert (=> b!144568 m!174557))

(assert (=> b!144568 m!174539))

(declare-fun m!174561 () Bool)

(assert (=> b!144568 m!174561))

(assert (=> b!144568 m!174553))

(assert (=> b!144568 m!174529))

(assert (=> b!144572 m!174345))

(assert (=> b!144572 m!174345))

(declare-fun m!174563 () Bool)

(assert (=> b!144572 m!174563))

(assert (=> d!46117 m!174257))

(assert (=> b!144565 m!174345))

(assert (=> b!144565 m!174345))

(assert (=> b!144565 m!174357))

(assert (=> bm!16038 d!46117))

(declare-fun d!46119 () Bool)

(assert (=> d!46119 (= (apply!122 (+!176 lt!75741 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75734) (get!1550 (getValueByKey!177 (toList!892 (+!176 lt!75741 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75734)))))

(declare-fun bs!6104 () Bool)

(assert (= bs!6104 d!46119))

(declare-fun m!174565 () Bool)

(assert (=> bs!6104 m!174565))

(assert (=> bs!6104 m!174565))

(declare-fun m!174567 () Bool)

(assert (=> bs!6104 m!174567))

(assert (=> b!144302 d!46119))

(declare-fun d!46121 () Bool)

(assert (=> d!46121 (= (apply!122 lt!75741 lt!75734) (get!1550 (getValueByKey!177 (toList!892 lt!75741) lt!75734)))))

(declare-fun bs!6105 () Bool)

(assert (= bs!6105 d!46121))

(declare-fun m!174569 () Bool)

(assert (=> bs!6105 m!174569))

(assert (=> bs!6105 m!174569))

(declare-fun m!174571 () Bool)

(assert (=> bs!6105 m!174571))

(assert (=> b!144302 d!46121))

(declare-fun d!46123 () Bool)

(assert (=> d!46123 (= (apply!122 (+!176 lt!75741 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75734) (apply!122 lt!75741 lt!75734))))

(declare-fun lt!75913 () Unit!4571)

(declare-fun choose!894 (ListLongMap!1753 (_ BitVec 64) V!3571 (_ BitVec 64)) Unit!4571)

(assert (=> d!46123 (= lt!75913 (choose!894 lt!75741 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75734))))

(declare-fun e!94220 () Bool)

(assert (=> d!46123 e!94220))

(declare-fun res!68848 () Bool)

(assert (=> d!46123 (=> (not res!68848) (not e!94220))))

(assert (=> d!46123 (= res!68848 (contains!929 lt!75741 lt!75734))))

(assert (=> d!46123 (= (addApplyDifferent!98 lt!75741 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75734) lt!75913)))

(declare-fun b!144585 () Bool)

(assert (=> b!144585 (= e!94220 (not (= lt!75734 lt!75742)))))

(assert (= (and d!46123 res!68848) b!144585))

(assert (=> d!46123 m!174205))

(declare-fun m!174573 () Bool)

(assert (=> d!46123 m!174573))

(assert (=> d!46123 m!174197))

(assert (=> d!46123 m!174205))

(assert (=> d!46123 m!174207))

(declare-fun m!174575 () Bool)

(assert (=> d!46123 m!174575))

(assert (=> b!144302 d!46123))

(declare-fun d!46125 () Bool)

(assert (=> d!46125 (= (apply!122 lt!75736 lt!75738) (get!1550 (getValueByKey!177 (toList!892 lt!75736) lt!75738)))))

(declare-fun bs!6106 () Bool)

(assert (= bs!6106 d!46125))

(declare-fun m!174577 () Bool)

(assert (=> bs!6106 m!174577))

(assert (=> bs!6106 m!174577))

(declare-fun m!174579 () Bool)

(assert (=> bs!6106 m!174579))

(assert (=> b!144302 d!46125))

(declare-fun d!46127 () Bool)

(assert (=> d!46127 (contains!929 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75737)))

(declare-fun lt!75916 () Unit!4571)

(declare-fun choose!895 (ListLongMap!1753 (_ BitVec 64) V!3571 (_ BitVec 64)) Unit!4571)

(assert (=> d!46127 (= lt!75916 (choose!895 lt!75748 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75737))))

(assert (=> d!46127 (contains!929 lt!75748 lt!75737)))

(assert (=> d!46127 (= (addStillContains!98 lt!75748 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75737) lt!75916)))

(declare-fun bs!6107 () Bool)

(assert (= bs!6107 d!46127))

(assert (=> bs!6107 m!174201))

(assert (=> bs!6107 m!174201))

(assert (=> bs!6107 m!174203))

(declare-fun m!174581 () Bool)

(assert (=> bs!6107 m!174581))

(declare-fun m!174583 () Bool)

(assert (=> bs!6107 m!174583))

(assert (=> b!144302 d!46127))

(declare-fun d!46129 () Bool)

(declare-fun e!94221 () Bool)

(assert (=> d!46129 e!94221))

(declare-fun res!68850 () Bool)

(assert (=> d!46129 (=> (not res!68850) (not e!94221))))

(declare-fun lt!75917 () ListLongMap!1753)

(assert (=> d!46129 (= res!68850 (contains!929 lt!75917 (_1!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun lt!75920 () List!1771)

(assert (=> d!46129 (= lt!75917 (ListLongMap!1754 lt!75920))))

(declare-fun lt!75919 () Unit!4571)

(declare-fun lt!75918 () Unit!4571)

(assert (=> d!46129 (= lt!75919 lt!75918)))

(assert (=> d!46129 (= (getValueByKey!177 lt!75920 (_1!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46129 (= lt!75918 (lemmaContainsTupThenGetReturnValue!93 lt!75920 (_1!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46129 (= lt!75920 (insertStrictlySorted!95 (toList!892 lt!75741) (_1!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46129 (= (+!176 lt!75741 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75917)))

(declare-fun b!144587 () Bool)

(declare-fun res!68849 () Bool)

(assert (=> b!144587 (=> (not res!68849) (not e!94221))))

(assert (=> b!144587 (= res!68849 (= (getValueByKey!177 (toList!892 lt!75917) (_1!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun b!144588 () Bool)

(assert (=> b!144588 (= e!94221 (contains!931 (toList!892 lt!75917) (tuple2!2695 lt!75742 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(assert (= (and d!46129 res!68850) b!144587))

(assert (= (and b!144587 res!68849) b!144588))

(declare-fun m!174585 () Bool)

(assert (=> d!46129 m!174585))

(declare-fun m!174587 () Bool)

(assert (=> d!46129 m!174587))

(declare-fun m!174589 () Bool)

(assert (=> d!46129 m!174589))

(declare-fun m!174591 () Bool)

(assert (=> d!46129 m!174591))

(declare-fun m!174593 () Bool)

(assert (=> b!144587 m!174593))

(declare-fun m!174595 () Bool)

(assert (=> b!144588 m!174595))

(assert (=> b!144302 d!46129))

(declare-fun d!46131 () Bool)

(assert (=> d!46131 (= (apply!122 (+!176 lt!75736 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75738) (apply!122 lt!75736 lt!75738))))

(declare-fun lt!75921 () Unit!4571)

(assert (=> d!46131 (= lt!75921 (choose!894 lt!75736 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75738))))

(declare-fun e!94222 () Bool)

(assert (=> d!46131 e!94222))

(declare-fun res!68851 () Bool)

(assert (=> d!46131 (=> (not res!68851) (not e!94222))))

(assert (=> d!46131 (= res!68851 (contains!929 lt!75736 lt!75738))))

(assert (=> d!46131 (= (addApplyDifferent!98 lt!75736 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75738) lt!75921)))

(declare-fun b!144589 () Bool)

(assert (=> b!144589 (= e!94222 (not (= lt!75738 lt!75744)))))

(assert (= (and d!46131 res!68851) b!144589))

(assert (=> d!46131 m!174189))

(declare-fun m!174597 () Bool)

(assert (=> d!46131 m!174597))

(assert (=> d!46131 m!174185))

(assert (=> d!46131 m!174189))

(assert (=> d!46131 m!174191))

(declare-fun m!174599 () Bool)

(assert (=> d!46131 m!174599))

(assert (=> b!144302 d!46131))

(declare-fun d!46133 () Bool)

(assert (=> d!46133 (= (apply!122 (+!176 lt!75729 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75746) (get!1550 (getValueByKey!177 (toList!892 (+!176 lt!75729 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75746)))))

(declare-fun bs!6108 () Bool)

(assert (= bs!6108 d!46133))

(declare-fun m!174601 () Bool)

(assert (=> bs!6108 m!174601))

(assert (=> bs!6108 m!174601))

(declare-fun m!174603 () Bool)

(assert (=> bs!6108 m!174603))

(assert (=> b!144302 d!46133))

(assert (=> b!144302 d!46099))

(declare-fun d!46135 () Bool)

(declare-fun e!94223 () Bool)

(assert (=> d!46135 e!94223))

(declare-fun res!68853 () Bool)

(assert (=> d!46135 (=> (not res!68853) (not e!94223))))

(declare-fun lt!75922 () ListLongMap!1753)

(assert (=> d!46135 (= res!68853 (contains!929 lt!75922 (_1!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun lt!75925 () List!1771)

(assert (=> d!46135 (= lt!75922 (ListLongMap!1754 lt!75925))))

(declare-fun lt!75924 () Unit!4571)

(declare-fun lt!75923 () Unit!4571)

(assert (=> d!46135 (= lt!75924 lt!75923)))

(assert (=> d!46135 (= (getValueByKey!177 lt!75925 (_1!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46135 (= lt!75923 (lemmaContainsTupThenGetReturnValue!93 lt!75925 (_1!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46135 (= lt!75925 (insertStrictlySorted!95 (toList!892 lt!75736) (_1!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46135 (= (+!176 lt!75736 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75922)))

(declare-fun b!144590 () Bool)

(declare-fun res!68852 () Bool)

(assert (=> b!144590 (=> (not res!68852) (not e!94223))))

(assert (=> b!144590 (= res!68852 (= (getValueByKey!177 (toList!892 lt!75922) (_1!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun b!144591 () Bool)

(assert (=> b!144591 (= e!94223 (contains!931 (toList!892 lt!75922) (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(assert (= (and d!46135 res!68853) b!144590))

(assert (= (and b!144590 res!68852) b!144591))

(declare-fun m!174605 () Bool)

(assert (=> d!46135 m!174605))

(declare-fun m!174607 () Bool)

(assert (=> d!46135 m!174607))

(declare-fun m!174609 () Bool)

(assert (=> d!46135 m!174609))

(declare-fun m!174611 () Bool)

(assert (=> d!46135 m!174611))

(declare-fun m!174613 () Bool)

(assert (=> b!144590 m!174613))

(declare-fun m!174615 () Bool)

(assert (=> b!144591 m!174615))

(assert (=> b!144302 d!46135))

(declare-fun d!46137 () Bool)

(assert (=> d!46137 (= (apply!122 (+!176 lt!75729 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75746) (apply!122 lt!75729 lt!75746))))

(declare-fun lt!75926 () Unit!4571)

(assert (=> d!46137 (= lt!75926 (choose!894 lt!75729 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75746))))

(declare-fun e!94224 () Bool)

(assert (=> d!46137 e!94224))

(declare-fun res!68854 () Bool)

(assert (=> d!46137 (=> (not res!68854) (not e!94224))))

(assert (=> d!46137 (= res!68854 (contains!929 lt!75729 lt!75746))))

(assert (=> d!46137 (= (addApplyDifferent!98 lt!75729 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))) lt!75746) lt!75926)))

(declare-fun b!144592 () Bool)

(assert (=> b!144592 (= e!94224 (not (= lt!75746 lt!75739)))))

(assert (= (and d!46137 res!68854) b!144592))

(assert (=> d!46137 m!174187))

(declare-fun m!174617 () Bool)

(assert (=> d!46137 m!174617))

(assert (=> d!46137 m!174181))

(assert (=> d!46137 m!174187))

(assert (=> d!46137 m!174209))

(declare-fun m!174619 () Bool)

(assert (=> d!46137 m!174619))

(assert (=> b!144302 d!46137))

(declare-fun d!46139 () Bool)

(assert (=> d!46139 (= (apply!122 lt!75729 lt!75746) (get!1550 (getValueByKey!177 (toList!892 lt!75729) lt!75746)))))

(declare-fun bs!6109 () Bool)

(assert (= bs!6109 d!46139))

(declare-fun m!174621 () Bool)

(assert (=> bs!6109 m!174621))

(assert (=> bs!6109 m!174621))

(declare-fun m!174623 () Bool)

(assert (=> bs!6109 m!174623))

(assert (=> b!144302 d!46139))

(declare-fun d!46141 () Bool)

(declare-fun e!94225 () Bool)

(assert (=> d!46141 e!94225))

(declare-fun res!68856 () Bool)

(assert (=> d!46141 (=> (not res!68856) (not e!94225))))

(declare-fun lt!75927 () ListLongMap!1753)

(assert (=> d!46141 (= res!68856 (contains!929 lt!75927 (_1!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun lt!75930 () List!1771)

(assert (=> d!46141 (= lt!75927 (ListLongMap!1754 lt!75930))))

(declare-fun lt!75929 () Unit!4571)

(declare-fun lt!75928 () Unit!4571)

(assert (=> d!46141 (= lt!75929 lt!75928)))

(assert (=> d!46141 (= (getValueByKey!177 lt!75930 (_1!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46141 (= lt!75928 (lemmaContainsTupThenGetReturnValue!93 lt!75930 (_1!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46141 (= lt!75930 (insertStrictlySorted!95 (toList!892 lt!75729) (_1!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46141 (= (+!176 lt!75729 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75927)))

(declare-fun b!144593 () Bool)

(declare-fun res!68855 () Bool)

(assert (=> b!144593 (=> (not res!68855) (not e!94225))))

(assert (=> b!144593 (= res!68855 (= (getValueByKey!177 (toList!892 lt!75927) (_1!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun b!144594 () Bool)

(assert (=> b!144594 (= e!94225 (contains!931 (toList!892 lt!75927) (tuple2!2695 lt!75739 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(assert (= (and d!46141 res!68856) b!144593))

(assert (= (and b!144593 res!68855) b!144594))

(declare-fun m!174625 () Bool)

(assert (=> d!46141 m!174625))

(declare-fun m!174627 () Bool)

(assert (=> d!46141 m!174627))

(declare-fun m!174629 () Bool)

(assert (=> d!46141 m!174629))

(declare-fun m!174631 () Bool)

(assert (=> d!46141 m!174631))

(declare-fun m!174633 () Bool)

(assert (=> b!144593 m!174633))

(declare-fun m!174635 () Bool)

(assert (=> b!144594 m!174635))

(assert (=> b!144302 d!46141))

(declare-fun d!46143 () Bool)

(assert (=> d!46143 (= (apply!122 (+!176 lt!75736 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75738) (get!1550 (getValueByKey!177 (toList!892 (+!176 lt!75736 (tuple2!2695 lt!75744 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75738)))))

(declare-fun bs!6110 () Bool)

(assert (= bs!6110 d!46143))

(declare-fun m!174637 () Bool)

(assert (=> bs!6110 m!174637))

(assert (=> bs!6110 m!174637))

(declare-fun m!174639 () Bool)

(assert (=> bs!6110 m!174639))

(assert (=> b!144302 d!46143))

(declare-fun d!46145 () Bool)

(declare-fun e!94226 () Bool)

(assert (=> d!46145 e!94226))

(declare-fun res!68858 () Bool)

(assert (=> d!46145 (=> (not res!68858) (not e!94226))))

(declare-fun lt!75931 () ListLongMap!1753)

(assert (=> d!46145 (= res!68858 (contains!929 lt!75931 (_1!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun lt!75934 () List!1771)

(assert (=> d!46145 (= lt!75931 (ListLongMap!1754 lt!75934))))

(declare-fun lt!75933 () Unit!4571)

(declare-fun lt!75932 () Unit!4571)

(assert (=> d!46145 (= lt!75933 lt!75932)))

(assert (=> d!46145 (= (getValueByKey!177 lt!75934 (_1!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46145 (= lt!75932 (lemmaContainsTupThenGetReturnValue!93 lt!75934 (_1!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46145 (= lt!75934 (insertStrictlySorted!95 (toList!892 lt!75748) (_1!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46145 (= (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75931)))

(declare-fun b!144595 () Bool)

(declare-fun res!68857 () Bool)

(assert (=> b!144595 (=> (not res!68857) (not e!94226))))

(assert (=> b!144595 (= res!68857 (= (getValueByKey!177 (toList!892 lt!75931) (_1!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun b!144596 () Bool)

(assert (=> b!144596 (= e!94226 (contains!931 (toList!892 lt!75931) (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(assert (= (and d!46145 res!68858) b!144595))

(assert (= (and b!144595 res!68857) b!144596))

(declare-fun m!174641 () Bool)

(assert (=> d!46145 m!174641))

(declare-fun m!174643 () Bool)

(assert (=> d!46145 m!174643))

(declare-fun m!174645 () Bool)

(assert (=> d!46145 m!174645))

(declare-fun m!174647 () Bool)

(assert (=> d!46145 m!174647))

(declare-fun m!174649 () Bool)

(assert (=> b!144595 m!174649))

(declare-fun m!174651 () Bool)

(assert (=> b!144596 m!174651))

(assert (=> b!144302 d!46145))

(declare-fun d!46147 () Bool)

(declare-fun e!94227 () Bool)

(assert (=> d!46147 e!94227))

(declare-fun res!68859 () Bool)

(assert (=> d!46147 (=> res!68859 e!94227)))

(declare-fun lt!75936 () Bool)

(assert (=> d!46147 (= res!68859 (not lt!75936))))

(declare-fun lt!75937 () Bool)

(assert (=> d!46147 (= lt!75936 lt!75937)))

(declare-fun lt!75938 () Unit!4571)

(declare-fun e!94228 () Unit!4571)

(assert (=> d!46147 (= lt!75938 e!94228)))

(declare-fun c!27406 () Bool)

(assert (=> d!46147 (= c!27406 lt!75937)))

(assert (=> d!46147 (= lt!75937 (containsKey!181 (toList!892 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75737))))

(assert (=> d!46147 (= (contains!929 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75737) lt!75936)))

(declare-fun b!144597 () Bool)

(declare-fun lt!75935 () Unit!4571)

(assert (=> b!144597 (= e!94228 lt!75935)))

(assert (=> b!144597 (= lt!75935 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75737))))

(assert (=> b!144597 (isDefined!131 (getValueByKey!177 (toList!892 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75737))))

(declare-fun b!144598 () Bool)

(declare-fun Unit!4586 () Unit!4571)

(assert (=> b!144598 (= e!94228 Unit!4586)))

(declare-fun b!144599 () Bool)

(assert (=> b!144599 (= e!94227 (isDefined!131 (getValueByKey!177 (toList!892 (+!176 lt!75748 (tuple2!2695 lt!75731 (zeroValue!2823 (v!3308 (underlying!486 thiss!992)))))) lt!75737)))))

(assert (= (and d!46147 c!27406) b!144597))

(assert (= (and d!46147 (not c!27406)) b!144598))

(assert (= (and d!46147 (not res!68859)) b!144599))

(declare-fun m!174653 () Bool)

(assert (=> d!46147 m!174653))

(declare-fun m!174655 () Bool)

(assert (=> b!144597 m!174655))

(declare-fun m!174657 () Bool)

(assert (=> b!144597 m!174657))

(assert (=> b!144597 m!174657))

(declare-fun m!174659 () Bool)

(assert (=> b!144597 m!174659))

(assert (=> b!144599 m!174657))

(assert (=> b!144599 m!174657))

(assert (=> b!144599 m!174659))

(assert (=> b!144302 d!46147))

(assert (=> d!46019 d!46079))

(declare-fun d!46149 () Bool)

(assert (=> d!46149 (isDefined!131 (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun lt!75941 () Unit!4571)

(declare-fun choose!896 (List!1771 (_ BitVec 64)) Unit!4571)

(assert (=> d!46149 (= lt!75941 (choose!896 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun e!94231 () Bool)

(assert (=> d!46149 e!94231))

(declare-fun res!68862 () Bool)

(assert (=> d!46149 (=> (not res!68862) (not e!94231))))

(declare-fun isStrictlySorted!322 (List!1771) Bool)

(assert (=> d!46149 (= res!68862 (isStrictlySorted!322 (toList!892 lt!75572)))))

(assert (=> d!46149 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) lt!75941)))

(declare-fun b!144602 () Bool)

(assert (=> b!144602 (= e!94231 (containsKey!181 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (= (and d!46149 res!68862) b!144602))

(assert (=> d!46149 m!174017))

(assert (=> d!46149 m!174093))

(assert (=> d!46149 m!174093))

(assert (=> d!46149 m!174095))

(assert (=> d!46149 m!174017))

(declare-fun m!174661 () Bool)

(assert (=> d!46149 m!174661))

(declare-fun m!174663 () Bool)

(assert (=> d!46149 m!174663))

(assert (=> b!144602 m!174017))

(assert (=> b!144602 m!174089))

(assert (=> b!144118 d!46149))

(declare-fun d!46151 () Bool)

(declare-fun isEmpty!428 (Option!183) Bool)

(assert (=> d!46151 (= (isDefined!131 (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))) (not (isEmpty!428 (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))))

(declare-fun bs!6111 () Bool)

(assert (= bs!6111 d!46151))

(assert (=> bs!6111 m!174093))

(declare-fun m!174665 () Bool)

(assert (=> bs!6111 m!174665))

(assert (=> b!144118 d!46151))

(declare-fun b!144611 () Bool)

(declare-fun e!94236 () Option!183)

(assert (=> b!144611 (= e!94236 (Some!182 (_2!1357 (h!2375 (toList!892 lt!75572)))))))

(declare-fun c!27411 () Bool)

(declare-fun d!46153 () Bool)

(assert (=> d!46153 (= c!27411 (and ((_ is Cons!1767) (toList!892 lt!75572)) (= (_1!1357 (h!2375 (toList!892 lt!75572))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))))

(assert (=> d!46153 (= (getValueByKey!177 (toList!892 lt!75572) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) e!94236)))

(declare-fun b!144613 () Bool)

(declare-fun e!94237 () Option!183)

(assert (=> b!144613 (= e!94237 (getValueByKey!177 (t!6408 (toList!892 lt!75572)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144614 () Bool)

(assert (=> b!144614 (= e!94237 None!181)))

(declare-fun b!144612 () Bool)

(assert (=> b!144612 (= e!94236 e!94237)))

(declare-fun c!27412 () Bool)

(assert (=> b!144612 (= c!27412 (and ((_ is Cons!1767) (toList!892 lt!75572)) (not (= (_1!1357 (h!2375 (toList!892 lt!75572))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))))

(assert (= (and d!46153 c!27411) b!144611))

(assert (= (and d!46153 (not c!27411)) b!144612))

(assert (= (and b!144612 c!27412) b!144613))

(assert (= (and b!144612 (not c!27412)) b!144614))

(assert (=> b!144613 m!174017))

(declare-fun m!174667 () Bool)

(assert (=> b!144613 m!174667))

(assert (=> b!144118 d!46153))

(assert (=> b!144120 d!46151))

(assert (=> b!144120 d!46153))

(declare-fun d!46155 () Bool)

(assert (=> d!46155 (= (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144304 d!46155))

(declare-fun b!144615 () Bool)

(declare-fun res!68863 () Bool)

(declare-fun e!94242 () Bool)

(assert (=> b!144615 (=> (not res!68863) (not e!94242))))

(declare-fun e!94239 () Bool)

(assert (=> b!144615 (= res!68863 e!94239)))

(declare-fun res!68864 () Bool)

(assert (=> b!144615 (=> res!68864 e!94239)))

(declare-fun e!94238 () Bool)

(assert (=> b!144615 (= res!68864 (not e!94238))))

(declare-fun res!68867 () Bool)

(assert (=> b!144615 (=> (not res!68867) (not e!94238))))

(assert (=> b!144615 (= res!68867 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16090 () Bool)

(declare-fun call!16099 () Bool)

(declare-fun lt!75946 () ListLongMap!1753)

(assert (=> bm!16090 (= call!16099 (contains!929 lt!75946 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16091 () Bool)

(declare-fun call!16098 () Bool)

(assert (=> bm!16091 (= call!16098 (contains!929 lt!75946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144616 () Bool)

(declare-fun e!94248 () Bool)

(assert (=> b!144616 (= e!94248 (= (apply!122 lt!75946 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16))))))

(declare-fun bm!16092 () Bool)

(declare-fun call!16095 () ListLongMap!1753)

(assert (=> bm!16092 (= call!16095 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun b!144617 () Bool)

(declare-fun e!94249 () Bool)

(assert (=> b!144617 (= e!94249 (not call!16099))))

(declare-fun b!144618 () Bool)

(declare-fun e!94250 () Bool)

(assert (=> b!144618 (= e!94250 e!94248)))

(declare-fun res!68865 () Bool)

(assert (=> b!144618 (= res!68865 call!16098)))

(assert (=> b!144618 (=> (not res!68865) (not e!94248))))

(declare-fun b!144619 () Bool)

(assert (=> b!144619 (= e!94238 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16093 () Bool)

(declare-fun call!16094 () ListLongMap!1753)

(assert (=> bm!16093 (= call!16094 call!16095)))

(declare-fun b!144620 () Bool)

(declare-fun e!94245 () ListLongMap!1753)

(declare-fun call!16093 () ListLongMap!1753)

(assert (=> b!144620 (= e!94245 call!16093)))

(declare-fun d!46157 () Bool)

(assert (=> d!46157 e!94242))

(declare-fun res!68866 () Bool)

(assert (=> d!46157 (=> (not res!68866) (not e!94242))))

(assert (=> d!46157 (= res!68866 (or (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))))

(declare-fun lt!75945 () ListLongMap!1753)

(assert (=> d!46157 (= lt!75946 lt!75945)))

(declare-fun lt!75958 () Unit!4571)

(declare-fun e!94243 () Unit!4571)

(assert (=> d!46157 (= lt!75958 e!94243)))

(declare-fun c!27414 () Bool)

(declare-fun e!94246 () Bool)

(assert (=> d!46157 (= c!27414 e!94246)))

(declare-fun res!68871 () Bool)

(assert (=> d!46157 (=> (not res!68871) (not e!94246))))

(assert (=> d!46157 (= res!68871 (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun e!94244 () ListLongMap!1753)

(assert (=> d!46157 (= lt!75945 e!94244)))

(declare-fun c!27416 () Bool)

(assert (=> d!46157 (= c!27416 (and (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46157 (validMask!0 (mask!7334 newMap!16))))

(assert (=> d!46157 (= (getCurrentListMap!558 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) lt!75946)))

(declare-fun b!144621 () Bool)

(declare-fun e!94240 () ListLongMap!1753)

(declare-fun call!16096 () ListLongMap!1753)

(assert (=> b!144621 (= e!94240 call!16096)))

(declare-fun c!27418 () Bool)

(declare-fun call!16097 () ListLongMap!1753)

(declare-fun bm!16094 () Bool)

(assert (=> bm!16094 (= call!16097 (+!176 (ite c!27416 call!16095 (ite c!27418 call!16094 call!16096)) (ite (or c!27416 c!27418) (tuple2!2695 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16))) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 newMap!16)))))))

(declare-fun b!144622 () Bool)

(declare-fun lt!75960 () Unit!4571)

(assert (=> b!144622 (= e!94243 lt!75960)))

(declare-fun lt!75961 () ListLongMap!1753)

(assert (=> b!144622 (= lt!75961 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75944 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75944 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75950 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75950 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75943 () Unit!4571)

(assert (=> b!144622 (= lt!75943 (addStillContains!98 lt!75961 lt!75944 (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) lt!75950))))

(assert (=> b!144622 (contains!929 (+!176 lt!75961 (tuple2!2695 lt!75944 (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)))) lt!75950)))

(declare-fun lt!75956 () Unit!4571)

(assert (=> b!144622 (= lt!75956 lt!75943)))

(declare-fun lt!75942 () ListLongMap!1753)

(assert (=> b!144622 (= lt!75942 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75952 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75952 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75959 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75959 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75962 () Unit!4571)

(assert (=> b!144622 (= lt!75962 (addApplyDifferent!98 lt!75942 lt!75952 (minValue!2823 newMap!16) lt!75959))))

(assert (=> b!144622 (= (apply!122 (+!176 lt!75942 (tuple2!2695 lt!75952 (minValue!2823 newMap!16))) lt!75959) (apply!122 lt!75942 lt!75959))))

(declare-fun lt!75963 () Unit!4571)

(assert (=> b!144622 (= lt!75963 lt!75962)))

(declare-fun lt!75954 () ListLongMap!1753)

(assert (=> b!144622 (= lt!75954 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75955 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75955 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75947 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75947 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!75948 () Unit!4571)

(assert (=> b!144622 (= lt!75948 (addApplyDifferent!98 lt!75954 lt!75955 (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) lt!75947))))

(assert (=> b!144622 (= (apply!122 (+!176 lt!75954 (tuple2!2695 lt!75955 (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)))) lt!75947) (apply!122 lt!75954 lt!75947))))

(declare-fun lt!75953 () Unit!4571)

(assert (=> b!144622 (= lt!75953 lt!75948)))

(declare-fun lt!75949 () ListLongMap!1753)

(assert (=> b!144622 (= lt!75949 (getCurrentListMapNoExtraKeys!143 (_keys!4741 newMap!16) (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))) (mask!7334 newMap!16) (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) (ite (and c!27325 c!27316) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2823 newMap!16)) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lt!75957 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75957 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!75951 () (_ BitVec 64))

(assert (=> b!144622 (= lt!75951 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144622 (= lt!75960 (addApplyDifferent!98 lt!75949 lt!75957 (minValue!2823 newMap!16) lt!75951))))

(assert (=> b!144622 (= (apply!122 (+!176 lt!75949 (tuple2!2695 lt!75957 (minValue!2823 newMap!16))) lt!75951) (apply!122 lt!75949 lt!75951))))

(declare-fun b!144623 () Bool)

(declare-fun res!68868 () Bool)

(assert (=> b!144623 (=> (not res!68868) (not e!94242))))

(assert (=> b!144623 (= res!68868 e!94250)))

(declare-fun c!27417 () Bool)

(assert (=> b!144623 (= c!27417 (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!144624 () Bool)

(assert (=> b!144624 (= e!94246 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16095 () Bool)

(assert (=> bm!16095 (= call!16096 call!16094)))

(declare-fun b!144625 () Bool)

(assert (=> b!144625 (= e!94242 e!94249)))

(declare-fun c!27413 () Bool)

(assert (=> b!144625 (= c!27413 (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144626 () Bool)

(declare-fun e!94241 () Bool)

(assert (=> b!144626 (= e!94239 e!94241)))

(declare-fun res!68870 () Bool)

(assert (=> b!144626 (=> (not res!68870) (not e!94241))))

(assert (=> b!144626 (= res!68870 (contains!929 lt!75946 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!144626 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun b!144627 () Bool)

(declare-fun e!94247 () Bool)

(assert (=> b!144627 (= e!94249 e!94247)))

(declare-fun res!68869 () Bool)

(assert (=> b!144627 (= res!68869 call!16099)))

(assert (=> b!144627 (=> (not res!68869) (not e!94247))))

(declare-fun b!144628 () Bool)

(declare-fun Unit!4587 () Unit!4571)

(assert (=> b!144628 (= e!94243 Unit!4587)))

(declare-fun b!144629 () Bool)

(assert (=> b!144629 (= e!94241 (= (apply!122 lt!75946 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)) (get!1547 (select (arr!2327 (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!445 (defaultEntry!2976 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2601 (ite (or c!27325 c!27318) (_values!2959 newMap!16) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (index!3330 lt!75663) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16)))))))))

(assert (=> b!144629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(declare-fun bm!16096 () Bool)

(assert (=> bm!16096 (= call!16093 call!16097)))

(declare-fun b!144630 () Bool)

(assert (=> b!144630 (= e!94244 (+!176 call!16097 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 newMap!16))))))

(declare-fun b!144631 () Bool)

(assert (=> b!144631 (= e!94247 (= (apply!122 lt!75946 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2823 newMap!16)))))

(declare-fun b!144632 () Bool)

(assert (=> b!144632 (= e!94244 e!94245)))

(assert (=> b!144632 (= c!27418 (and (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!144633 () Bool)

(assert (=> b!144633 (= e!94240 call!16093)))

(declare-fun c!27415 () Bool)

(declare-fun b!144634 () Bool)

(assert (=> b!144634 (= c!27415 (and (not (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!27325 c!27316) lt!75670 (extraKeys!2725 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!144634 (= e!94245 e!94240)))

(declare-fun b!144635 () Bool)

(assert (=> b!144635 (= e!94250 (not call!16098))))

(assert (= (and d!46157 c!27416) b!144630))

(assert (= (and d!46157 (not c!27416)) b!144632))

(assert (= (and b!144632 c!27418) b!144620))

(assert (= (and b!144632 (not c!27418)) b!144634))

(assert (= (and b!144634 c!27415) b!144633))

(assert (= (and b!144634 (not c!27415)) b!144621))

(assert (= (or b!144633 b!144621) bm!16095))

(assert (= (or b!144620 bm!16095) bm!16093))

(assert (= (or b!144620 b!144633) bm!16096))

(assert (= (or b!144630 bm!16093) bm!16092))

(assert (= (or b!144630 bm!16096) bm!16094))

(assert (= (and d!46157 res!68871) b!144624))

(assert (= (and d!46157 c!27414) b!144622))

(assert (= (and d!46157 (not c!27414)) b!144628))

(assert (= (and d!46157 res!68866) b!144615))

(assert (= (and b!144615 res!68867) b!144619))

(assert (= (and b!144615 (not res!68864)) b!144626))

(assert (= (and b!144626 res!68870) b!144629))

(assert (= (and b!144615 res!68863) b!144623))

(assert (= (and b!144623 c!27417) b!144618))

(assert (= (and b!144623 (not c!27417)) b!144635))

(assert (= (and b!144618 res!68865) b!144616))

(assert (= (or b!144618 b!144635) bm!16091))

(assert (= (and b!144623 res!68868) b!144625))

(assert (= (and b!144625 c!27413) b!144627))

(assert (= (and b!144625 (not c!27413)) b!144617))

(assert (= (and b!144627 res!68869) b!144631))

(assert (= (or b!144627 b!144617) bm!16090))

(declare-fun b_lambda!6517 () Bool)

(assert (=> (not b_lambda!6517) (not b!144629)))

(assert (=> b!144629 t!6417))

(declare-fun b_and!9033 () Bool)

(assert (= b_and!9029 (and (=> t!6417 result!4259) b_and!9033)))

(assert (=> b!144629 t!6419))

(declare-fun b_and!9035 () Bool)

(assert (= b_and!9031 (and (=> t!6419 result!4261) b_and!9035)))

(declare-fun m!174669 () Bool)

(assert (=> b!144631 m!174669))

(declare-fun m!174671 () Bool)

(assert (=> bm!16094 m!174671))

(declare-fun m!174673 () Bool)

(assert (=> bm!16091 m!174673))

(declare-fun m!174675 () Bool)

(assert (=> b!144616 m!174675))

(assert (=> b!144629 m!174345))

(declare-fun m!174677 () Bool)

(assert (=> b!144629 m!174677))

(assert (=> b!144629 m!174345))

(assert (=> b!144629 m!174349))

(declare-fun m!174679 () Bool)

(assert (=> b!144629 m!174679))

(assert (=> b!144629 m!174679))

(assert (=> b!144629 m!174349))

(declare-fun m!174681 () Bool)

(assert (=> b!144629 m!174681))

(declare-fun m!174683 () Bool)

(assert (=> b!144630 m!174683))

(assert (=> b!144624 m!174345))

(assert (=> b!144624 m!174345))

(assert (=> b!144624 m!174357))

(declare-fun m!174685 () Bool)

(assert (=> bm!16092 m!174685))

(declare-fun m!174687 () Bool)

(assert (=> bm!16090 m!174687))

(declare-fun m!174689 () Bool)

(assert (=> b!144622 m!174689))

(declare-fun m!174691 () Bool)

(assert (=> b!144622 m!174691))

(declare-fun m!174693 () Bool)

(assert (=> b!144622 m!174693))

(declare-fun m!174695 () Bool)

(assert (=> b!144622 m!174695))

(declare-fun m!174697 () Bool)

(assert (=> b!144622 m!174697))

(declare-fun m!174699 () Bool)

(assert (=> b!144622 m!174699))

(declare-fun m!174701 () Bool)

(assert (=> b!144622 m!174701))

(declare-fun m!174703 () Bool)

(assert (=> b!144622 m!174703))

(declare-fun m!174705 () Bool)

(assert (=> b!144622 m!174705))

(declare-fun m!174707 () Bool)

(assert (=> b!144622 m!174707))

(assert (=> b!144622 m!174345))

(declare-fun m!174709 () Bool)

(assert (=> b!144622 m!174709))

(declare-fun m!174711 () Bool)

(assert (=> b!144622 m!174711))

(declare-fun m!174713 () Bool)

(assert (=> b!144622 m!174713))

(declare-fun m!174715 () Bool)

(assert (=> b!144622 m!174715))

(assert (=> b!144622 m!174697))

(assert (=> b!144622 m!174713))

(assert (=> b!144622 m!174695))

(declare-fun m!174717 () Bool)

(assert (=> b!144622 m!174717))

(assert (=> b!144622 m!174709))

(assert (=> b!144622 m!174685))

(assert (=> b!144626 m!174345))

(assert (=> b!144626 m!174345))

(declare-fun m!174719 () Bool)

(assert (=> b!144626 m!174719))

(assert (=> d!46157 m!174257))

(assert (=> b!144619 m!174345))

(assert (=> b!144619 m!174345))

(assert (=> b!144619 m!174357))

(assert (=> bm!16024 d!46157))

(declare-fun d!46159 () Bool)

(declare-fun res!68872 () Bool)

(declare-fun e!94251 () Bool)

(assert (=> d!46159 (=> res!68872 e!94251)))

(assert (=> d!46159 (= res!68872 (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46159 (= (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!94251)))

(declare-fun b!144636 () Bool)

(declare-fun e!94252 () Bool)

(assert (=> b!144636 (= e!94251 e!94252)))

(declare-fun res!68873 () Bool)

(assert (=> b!144636 (=> (not res!68873) (not e!94252))))

(assert (=> b!144636 (= res!68873 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(declare-fun b!144637 () Bool)

(assert (=> b!144637 (= e!94252 (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!46159 (not res!68872)) b!144636))

(assert (= (and b!144636 res!68873) b!144637))

(declare-fun m!174721 () Bool)

(assert (=> d!46159 m!174721))

(assert (=> b!144637 m!174017))

(declare-fun m!174723 () Bool)

(assert (=> b!144637 m!174723))

(assert (=> b!144357 d!46159))

(declare-fun d!46161 () Bool)

(assert (=> d!46161 (= (get!1548 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3307 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> b!144251 d!46161))

(declare-fun d!46163 () Bool)

(declare-fun lt!75966 () (_ BitVec 32))

(assert (=> d!46163 (and (bvsge lt!75966 #b00000000000000000000000000000000) (bvsle lt!75966 (bvsub (size!2600 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!94257 () (_ BitVec 32))

(assert (=> d!46163 (= lt!75966 e!94257)))

(declare-fun c!27423 () Bool)

(assert (=> d!46163 (= c!27423 (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(assert (=> d!46163 (and (bvsle #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2600 (_keys!4741 newMap!16)) (size!2600 (_keys!4741 newMap!16))))))

(assert (=> d!46163 (= (arrayCountValidKeys!0 (_keys!4741 newMap!16) #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) lt!75966)))

(declare-fun b!144646 () Bool)

(assert (=> b!144646 (= e!94257 #b00000000000000000000000000000000)))

(declare-fun b!144647 () Bool)

(declare-fun e!94258 () (_ BitVec 32))

(declare-fun call!16102 () (_ BitVec 32))

(assert (=> b!144647 (= e!94258 call!16102)))

(declare-fun b!144648 () Bool)

(assert (=> b!144648 (= e!94257 e!94258)))

(declare-fun c!27424 () Bool)

(assert (=> b!144648 (= c!27424 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!144649 () Bool)

(assert (=> b!144649 (= e!94258 (bvadd #b00000000000000000000000000000001 call!16102))))

(declare-fun bm!16099 () Bool)

(assert (=> bm!16099 (= call!16102 (arrayCountValidKeys!0 (_keys!4741 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2600 (_keys!4741 newMap!16))))))

(assert (= (and d!46163 c!27423) b!144646))

(assert (= (and d!46163 (not c!27423)) b!144648))

(assert (= (and b!144648 c!27424) b!144649))

(assert (= (and b!144648 (not c!27424)) b!144647))

(assert (= (or b!144649 b!144647) bm!16099))

(assert (=> b!144648 m!174345))

(assert (=> b!144648 m!174345))

(assert (=> b!144648 m!174357))

(declare-fun m!174725 () Bool)

(assert (=> bm!16099 m!174725))

(assert (=> b!144328 d!46163))

(declare-fun d!46165 () Bool)

(assert (=> d!46165 (= (inRange!0 (ite c!27318 (ite c!27323 (index!3330 lt!75661) (ite c!27324 (index!3329 lt!75674) (index!3332 lt!75674))) (ite c!27327 (index!3330 lt!75665) (ite c!27320 (index!3329 lt!75684) (index!3332 lt!75684)))) (mask!7334 newMap!16)) (and (bvsge (ite c!27318 (ite c!27323 (index!3330 lt!75661) (ite c!27324 (index!3329 lt!75674) (index!3332 lt!75674))) (ite c!27327 (index!3330 lt!75665) (ite c!27320 (index!3329 lt!75684) (index!3332 lt!75684)))) #b00000000000000000000000000000000) (bvslt (ite c!27318 (ite c!27323 (index!3330 lt!75661) (ite c!27324 (index!3329 lt!75674) (index!3332 lt!75674))) (ite c!27327 (index!3330 lt!75665) (ite c!27320 (index!3329 lt!75684) (index!3332 lt!75684)))) (bvadd (mask!7334 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!16029 d!46165))

(declare-fun d!46167 () Bool)

(declare-fun res!68874 () Bool)

(declare-fun e!94259 () Bool)

(assert (=> d!46167 (=> res!68874 e!94259)))

(assert (=> d!46167 (= res!68874 ((_ is Nil!1769) (t!6409 lt!75569)))))

(assert (=> d!46167 (= (noDuplicate!53 (t!6409 lt!75569)) e!94259)))

(declare-fun b!144650 () Bool)

(declare-fun e!94260 () Bool)

(assert (=> b!144650 (= e!94259 e!94260)))

(declare-fun res!68875 () Bool)

(assert (=> b!144650 (=> (not res!68875) (not e!94260))))

(assert (=> b!144650 (= res!68875 (not (contains!928 (t!6409 (t!6409 lt!75569)) (h!2376 (t!6409 lt!75569)))))))

(declare-fun b!144651 () Bool)

(assert (=> b!144651 (= e!94260 (noDuplicate!53 (t!6409 (t!6409 lt!75569))))))

(assert (= (and d!46167 (not res!68874)) b!144650))

(assert (= (and b!144650 res!68875) b!144651))

(declare-fun m!174727 () Bool)

(assert (=> b!144650 m!174727))

(declare-fun m!174729 () Bool)

(assert (=> b!144651 m!174729))

(assert (=> b!144321 d!46167))

(assert (=> b!144299 d!46155))

(declare-fun b!144652 () Bool)

(declare-fun e!94261 () Bool)

(declare-fun e!94264 () Bool)

(assert (=> b!144652 (= e!94261 e!94264)))

(declare-fun c!27425 () Bool)

(assert (=> b!144652 (= c!27425 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!16100 () Bool)

(declare-fun call!16103 () Bool)

(assert (=> bm!16100 (= call!16103 (arrayNoDuplicates!0 (_keys!4741 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!27425 (Cons!1768 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000) Nil!1769) Nil!1769)))))

(declare-fun b!144653 () Bool)

(assert (=> b!144653 (= e!94264 call!16103)))

(declare-fun b!144654 () Bool)

(declare-fun e!94263 () Bool)

(assert (=> b!144654 (= e!94263 (contains!928 Nil!1769 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46169 () Bool)

(declare-fun res!68877 () Bool)

(declare-fun e!94262 () Bool)

(assert (=> d!46169 (=> res!68877 e!94262)))

(assert (=> d!46169 (= res!68877 (bvsge #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))))))

(assert (=> d!46169 (= (arrayNoDuplicates!0 (_keys!4741 newMap!16) #b00000000000000000000000000000000 Nil!1769) e!94262)))

(declare-fun b!144655 () Bool)

(assert (=> b!144655 (= e!94262 e!94261)))

(declare-fun res!68878 () Bool)

(assert (=> b!144655 (=> (not res!68878) (not e!94261))))

(assert (=> b!144655 (= res!68878 (not e!94263))))

(declare-fun res!68876 () Bool)

(assert (=> b!144655 (=> (not res!68876) (not e!94263))))

(assert (=> b!144655 (= res!68876 (validKeyInArray!0 (select (arr!2326 (_keys!4741 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!144656 () Bool)

(assert (=> b!144656 (= e!94264 call!16103)))

(assert (= (and d!46169 (not res!68877)) b!144655))

(assert (= (and b!144655 res!68876) b!144654))

(assert (= (and b!144655 res!68878) b!144652))

(assert (= (and b!144652 c!27425) b!144653))

(assert (= (and b!144652 (not c!27425)) b!144656))

(assert (= (or b!144653 b!144656) bm!16100))

(assert (=> b!144652 m!174345))

(assert (=> b!144652 m!174345))

(assert (=> b!144652 m!174357))

(assert (=> bm!16100 m!174345))

(declare-fun m!174731 () Bool)

(assert (=> bm!16100 m!174731))

(assert (=> b!144654 m!174345))

(assert (=> b!144654 m!174345))

(declare-fun m!174733 () Bool)

(assert (=> b!144654 m!174733))

(assert (=> b!144655 m!174345))

(assert (=> b!144655 m!174345))

(assert (=> b!144655 m!174357))

(assert (=> b!144330 d!46169))

(declare-fun d!46171 () Bool)

(declare-fun e!94267 () Bool)

(assert (=> d!46171 e!94267))

(declare-fun c!27428 () Bool)

(assert (=> d!46171 (= c!27428 (and (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!46171 true))

(declare-fun _$29!171 () Unit!4571)

(assert (=> d!46171 (= (choose!887 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (_values!2959 (v!3308 (underlying!486 thiss!992))) (mask!7334 (v!3308 (underlying!486 thiss!992))) (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) (zeroValue!2823 (v!3308 (underlying!486 thiss!992))) (minValue!2823 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992)))) _$29!171)))

(declare-fun b!144661 () Bool)

(assert (=> b!144661 (= e!94267 (arrayContainsKey!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!144662 () Bool)

(assert (=> b!144662 (= e!94267 (ite (= (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2725 (v!3308 (underlying!486 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46171 c!27428) b!144661))

(assert (= (and d!46171 (not c!27428)) b!144662))

(assert (=> b!144661 m!174017))

(assert (=> b!144661 m!174031))

(assert (=> d!46045 d!46171))

(assert (=> d!46045 d!46107))

(declare-fun b!144663 () Bool)

(declare-fun e!94268 () Bool)

(declare-fun e!94271 () Bool)

(assert (=> b!144663 (= e!94268 e!94271)))

(declare-fun c!27429 () Bool)

(assert (=> b!144663 (= c!27429 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun call!16104 () Bool)

(declare-fun bm!16101 () Bool)

(assert (=> bm!16101 (= call!16104 (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!27429 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!27351 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769) Nil!1769)) (ite c!27351 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769) Nil!1769))))))

(declare-fun b!144664 () Bool)

(assert (=> b!144664 (= e!94271 call!16104)))

(declare-fun e!94270 () Bool)

(declare-fun b!144665 () Bool)

(assert (=> b!144665 (= e!94270 (contains!928 (ite c!27351 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769) Nil!1769) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!46173 () Bool)

(declare-fun res!68880 () Bool)

(declare-fun e!94269 () Bool)

(assert (=> d!46173 (=> res!68880 e!94269)))

(assert (=> d!46173 (= res!68880 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2600 (_keys!4741 (v!3308 (underlying!486 thiss!992))))))))

(assert (=> d!46173 (= (arrayNoDuplicates!0 (_keys!4741 (v!3308 (underlying!486 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27351 (Cons!1768 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) Nil!1769) Nil!1769)) e!94269)))

(declare-fun b!144666 () Bool)

(assert (=> b!144666 (= e!94269 e!94268)))

(declare-fun res!68881 () Bool)

(assert (=> b!144666 (=> (not res!68881) (not e!94268))))

(assert (=> b!144666 (= res!68881 (not e!94270))))

(declare-fun res!68879 () Bool)

(assert (=> b!144666 (=> (not res!68879) (not e!94270))))

(assert (=> b!144666 (= res!68879 (validKeyInArray!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!144667 () Bool)

(assert (=> b!144667 (= e!94271 call!16104)))

(assert (= (and d!46173 (not res!68880)) b!144666))

(assert (= (and b!144666 res!68879) b!144665))

(assert (= (and b!144666 res!68881) b!144663))

(assert (= (and b!144663 c!27429) b!144664))

(assert (= (and b!144663 (not c!27429)) b!144667))

(assert (= (or b!144664 b!144667) bm!16101))

(declare-fun m!174735 () Bool)

(assert (=> b!144663 m!174735))

(assert (=> b!144663 m!174735))

(declare-fun m!174737 () Bool)

(assert (=> b!144663 m!174737))

(assert (=> bm!16101 m!174735))

(declare-fun m!174739 () Bool)

(assert (=> bm!16101 m!174739))

(assert (=> b!144665 m!174735))

(assert (=> b!144665 m!174735))

(declare-fun m!174741 () Bool)

(assert (=> b!144665 m!174741))

(assert (=> b!144666 m!174735))

(assert (=> b!144666 m!174735))

(assert (=> b!144666 m!174737))

(assert (=> bm!16063 d!46173))

(declare-fun d!46175 () Bool)

(declare-fun e!94272 () Bool)

(assert (=> d!46175 e!94272))

(declare-fun res!68883 () Bool)

(assert (=> d!46175 (=> (not res!68883) (not e!94272))))

(declare-fun lt!75967 () ListLongMap!1753)

(assert (=> d!46175 (= res!68883 (contains!929 lt!75967 (_1!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(declare-fun lt!75970 () List!1771)

(assert (=> d!46175 (= lt!75967 (ListLongMap!1754 lt!75970))))

(declare-fun lt!75969 () Unit!4571)

(declare-fun lt!75968 () Unit!4571)

(assert (=> d!46175 (= lt!75969 lt!75968)))

(assert (=> d!46175 (= (getValueByKey!177 lt!75970 (_1!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46175 (= lt!75968 (lemmaContainsTupThenGetReturnValue!93 lt!75970 (_1!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46175 (= lt!75970 (insertStrictlySorted!95 (toList!892 call!16061) (_1!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) (_2!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))))))

(assert (=> d!46175 (= (+!176 call!16061 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))) lt!75967)))

(declare-fun b!144668 () Bool)

(declare-fun res!68882 () Bool)

(assert (=> b!144668 (=> (not res!68882) (not e!94272))))

(assert (=> b!144668 (= res!68882 (= (getValueByKey!177 (toList!892 lt!75967) (_1!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992)))))) (Some!182 (_2!1357 (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))))

(declare-fun b!144669 () Bool)

(assert (=> b!144669 (= e!94272 (contains!931 (toList!892 lt!75967) (tuple2!2695 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2823 (v!3308 (underlying!486 thiss!992))))))))

(assert (= (and d!46175 res!68883) b!144668))

(assert (= (and b!144668 res!68882) b!144669))

(declare-fun m!174743 () Bool)

(assert (=> d!46175 m!174743))

(declare-fun m!174745 () Bool)

(assert (=> d!46175 m!174745))

(declare-fun m!174747 () Bool)

(assert (=> d!46175 m!174747))

(declare-fun m!174749 () Bool)

(assert (=> d!46175 m!174749))

(declare-fun m!174751 () Bool)

(assert (=> b!144668 m!174751))

(declare-fun m!174753 () Bool)

(assert (=> b!144669 m!174753))

(assert (=> b!144310 d!46175))

(declare-fun d!46177 () Bool)

(declare-fun lt!75971 () Bool)

(assert (=> d!46177 (= lt!75971 (select (content!139 Nil!1769) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun e!94274 () Bool)

(assert (=> d!46177 (= lt!75971 e!94274)))

(declare-fun res!68885 () Bool)

(assert (=> d!46177 (=> (not res!68885) (not e!94274))))

(assert (=> d!46177 (= res!68885 ((_ is Cons!1768) Nil!1769))))

(assert (=> d!46177 (= (contains!928 Nil!1769 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) lt!75971)))

(declare-fun b!144670 () Bool)

(declare-fun e!94273 () Bool)

(assert (=> b!144670 (= e!94274 e!94273)))

(declare-fun res!68884 () Bool)

(assert (=> b!144670 (=> res!68884 e!94273)))

(assert (=> b!144670 (= res!68884 (= (h!2376 Nil!1769) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun b!144671 () Bool)

(assert (=> b!144671 (= e!94273 (contains!928 (t!6409 Nil!1769) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (= (and d!46177 res!68885) b!144670))

(assert (= (and b!144670 (not res!68884)) b!144671))

(declare-fun m!174755 () Bool)

(assert (=> d!46177 m!174755))

(assert (=> d!46177 m!174017))

(declare-fun m!174757 () Bool)

(assert (=> d!46177 m!174757))

(assert (=> b!144671 m!174017))

(declare-fun m!174759 () Bool)

(assert (=> b!144671 m!174759))

(assert (=> b!144349 d!46177))

(declare-fun d!46179 () Bool)

(declare-fun e!94275 () Bool)

(assert (=> d!46179 e!94275))

(declare-fun res!68886 () Bool)

(assert (=> d!46179 (=> res!68886 e!94275)))

(declare-fun lt!75973 () Bool)

(assert (=> d!46179 (= res!68886 (not lt!75973))))

(declare-fun lt!75974 () Bool)

(assert (=> d!46179 (= lt!75973 lt!75974)))

(declare-fun lt!75975 () Unit!4571)

(declare-fun e!94276 () Unit!4571)

(assert (=> d!46179 (= lt!75975 e!94276)))

(declare-fun c!27430 () Bool)

(assert (=> d!46179 (= c!27430 lt!75974)))

(assert (=> d!46179 (= lt!75974 (containsKey!181 (toList!892 lt!75733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46179 (= (contains!929 lt!75733 #b1000000000000000000000000000000000000000000000000000000000000000) lt!75973)))

(declare-fun b!144672 () Bool)

(declare-fun lt!75972 () Unit!4571)

(assert (=> b!144672 (= e!94276 lt!75972)))

(assert (=> b!144672 (= lt!75972 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 (toList!892 lt!75733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144672 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144673 () Bool)

(declare-fun Unit!4588 () Unit!4571)

(assert (=> b!144673 (= e!94276 Unit!4588)))

(declare-fun b!144674 () Bool)

(assert (=> b!144674 (= e!94275 (isDefined!131 (getValueByKey!177 (toList!892 lt!75733) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46179 c!27430) b!144672))

(assert (= (and d!46179 (not c!27430)) b!144673))

(assert (= (and d!46179 (not res!68886)) b!144674))

(declare-fun m!174761 () Bool)

(assert (=> d!46179 m!174761))

(declare-fun m!174763 () Bool)

(assert (=> b!144672 m!174763))

(assert (=> b!144672 m!174439))

(assert (=> b!144672 m!174439))

(declare-fun m!174765 () Bool)

(assert (=> b!144672 m!174765))

(assert (=> b!144674 m!174439))

(assert (=> b!144674 m!174439))

(assert (=> b!144674 m!174765))

(assert (=> bm!16054 d!46179))

(declare-fun b!144709 () Bool)

(declare-fun e!94294 () Bool)

(declare-fun call!16115 () Bool)

(assert (=> b!144709 (= e!94294 (not call!16115))))

(declare-fun b!144710 () Bool)

(declare-fun e!94298 () Unit!4571)

(declare-fun Unit!4589 () Unit!4571)

(assert (=> b!144710 (= e!94298 Unit!4589)))

(declare-fun d!46181 () Bool)

(declare-fun e!94299 () Bool)

(assert (=> d!46181 e!94299))

(declare-fun res!68910 () Bool)

(assert (=> d!46181 (=> (not res!68910) (not e!94299))))

(declare-fun lt!76060 () tuple2!2696)

(assert (=> d!46181 (= res!68910 (_1!1358 lt!76060))))

(assert (=> d!46181 (= lt!76060 (tuple2!2697 true (LongMapFixedSize!1165 (defaultEntry!2976 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (bvadd (_size!631 newMap!16) #b00000000000000000000000000000001) (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))) (_vacant!631 newMap!16))))))

(declare-fun lt!76046 () Unit!4571)

(declare-fun lt!76042 () Unit!4571)

(assert (=> d!46181 (= lt!76046 lt!76042)))

(declare-fun lt!76036 () array!4926)

(declare-fun lt!76055 () array!4924)

(assert (=> d!46181 (contains!929 (getCurrentListMap!558 lt!76055 lt!76036 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663))))))

(assert (=> d!46181 (= lt!76042 (lemmaValidKeyInArrayIsInListMap!125 lt!76055 lt!76036 (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (defaultEntry!2976 newMap!16)))))

(assert (=> d!46181 (= lt!76036 (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))))))

(assert (=> d!46181 (= lt!76055 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun lt!76053 () Unit!4571)

(declare-fun lt!76061 () Unit!4571)

(assert (=> d!46181 (= lt!76053 lt!76061)))

(declare-fun lt!76054 () array!4924)

(assert (=> d!46181 (= (arrayCountValidKeys!0 lt!76054 (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (bvadd (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4924 (_ BitVec 32)) Unit!4571)

(assert (=> d!46181 (= lt!76061 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!76054 (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663))))))

(assert (=> d!46181 (= lt!76054 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun lt!76050 () Unit!4571)

(declare-fun lt!76045 () Unit!4571)

(assert (=> d!46181 (= lt!76050 lt!76045)))

(declare-fun lt!76051 () array!4924)

(assert (=> d!46181 (arrayContainsKey!0 lt!76051 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!46181 (= lt!76045 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!76051 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663))))))

(assert (=> d!46181 (= lt!76051 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))))))

(declare-fun lt!76052 () Unit!4571)

(declare-fun lt!76063 () Unit!4571)

(assert (=> d!46181 (= lt!76052 lt!76063)))

(assert (=> d!46181 (= (+!176 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!558 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))) (array!4927 (store (arr!2327 (_values!2959 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (ValueCellFull!1128 (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2601 (_values!2959 newMap!16))) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!47 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 32) (_ BitVec 64) V!3571 Int) Unit!4571)

(assert (=> d!46181 (= lt!76063 (lemmaAddValidKeyToArrayThenAddPairToListMap!47 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2976 newMap!16)))))

(declare-fun lt!76044 () Unit!4571)

(declare-fun lt!76059 () Unit!4571)

(assert (=> d!46181 (= lt!76044 lt!76059)))

(assert (=> d!46181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))) (mask!7334 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4924 (_ BitVec 32) (_ BitVec 32)) Unit!4571)

(assert (=> d!46181 (= lt!76059 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (mask!7334 newMap!16)))))

(declare-fun lt!76049 () Unit!4571)

(declare-fun lt!76041 () Unit!4571)

(assert (=> d!46181 (= lt!76049 lt!76041)))

(assert (=> d!46181 (= (arrayCountValidKeys!0 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))) #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4741 newMap!16) #b00000000000000000000000000000000 (size!2600 (_keys!4741 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4924 (_ BitVec 32) (_ BitVec 64)) Unit!4571)

(assert (=> d!46181 (= lt!76041 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4741 newMap!16) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun lt!76056 () Unit!4571)

(declare-fun lt!76040 () Unit!4571)

(assert (=> d!46181 (= lt!76056 lt!76040)))

(declare-fun lt!76047 () (_ BitVec 32))

(declare-fun lt!76065 () List!1772)

(assert (=> d!46181 (arrayNoDuplicates!0 (array!4925 (store (arr!2326 (_keys!4741 newMap!16)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)) (size!2600 (_keys!4741 newMap!16))) lt!76047 lt!76065)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4924 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1772) Unit!4571)

(assert (=> d!46181 (= lt!76040 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663)) lt!76047 lt!76065))))

(assert (=> d!46181 (= lt!76065 Nil!1769)))

(assert (=> d!46181 (= lt!76047 #b00000000000000000000000000000000)))

(declare-fun lt!76064 () Unit!4571)

(assert (=> d!46181 (= lt!76064 e!94298)))

(declare-fun c!27439 () Bool)

(assert (=> d!46181 (= c!27439 (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!76058 () Unit!4571)

(declare-fun e!94300 () Unit!4571)

(assert (=> d!46181 (= lt!76058 e!94300)))

(declare-fun c!27441 () Bool)

(assert (=> d!46181 (= c!27441 (contains!929 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(assert (=> d!46181 (valid!563 newMap!16)))

(assert (=> d!46181 (= (updateHelperNewKey!67 newMap!16 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27315 (index!3332 lt!75663) (index!3329 lt!75663))) lt!76060)))

(declare-fun b!144711 () Bool)

(assert (=> b!144711 (= e!94299 (= (map!1445 (_2!1358 lt!76060)) (+!176 (map!1445 newMap!16) (tuple2!2695 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (get!1547 (select (arr!2327 (_values!2959 (v!3308 (underlying!486 thiss!992)))) from!355) (dynLambda!445 (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!144712 () Bool)

(declare-fun e!94296 () Bool)

(declare-fun lt!76062 () SeekEntryResult!291)

(assert (=> b!144712 (= e!94296 ((_ is Undefined!291) lt!76062))))

(declare-fun b!144713 () Bool)

(declare-fun res!68912 () Bool)

(assert (=> b!144713 (=> (not res!68912) (not e!94294))))

(declare-fun call!16116 () Bool)

(assert (=> b!144713 (= res!68912 call!16116)))

(declare-fun e!94295 () Bool)

(assert (=> b!144713 (= e!94295 e!94294)))

(declare-fun b!144714 () Bool)

(declare-fun Unit!4590 () Unit!4571)

(assert (=> b!144714 (= e!94300 Unit!4590)))

(declare-fun lt!76043 () Unit!4571)

(assert (=> b!144714 (= lt!76043 (lemmaInListMapThenSeekEntryOrOpenFindsIt!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(declare-fun lt!76039 () SeekEntryResult!291)

(declare-fun call!16114 () SeekEntryResult!291)

(assert (=> b!144714 (= lt!76039 call!16114)))

(declare-fun res!68911 () Bool)

(assert (=> b!144714 (= res!68911 ((_ is Found!291) lt!76039))))

(declare-fun e!94297 () Bool)

(assert (=> b!144714 (=> (not res!68911) (not e!94297))))

(assert (=> b!144714 e!94297))

(declare-fun lt!76038 () Unit!4571)

(assert (=> b!144714 (= lt!76038 lt!76043)))

(assert (=> b!144714 false))

(declare-fun bm!16110 () Bool)

(assert (=> bm!16110 (= call!16115 (arrayContainsKey!0 (_keys!4741 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!144715 () Bool)

(declare-fun res!68908 () Bool)

(declare-fun call!16113 () Bool)

(assert (=> b!144715 (= res!68908 call!16113)))

(assert (=> b!144715 (=> (not res!68908) (not e!94297))))

(declare-fun bm!16111 () Bool)

(assert (=> bm!16111 (= call!16114 (seekEntryOrOpen!0 (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (_keys!4741 newMap!16) (mask!7334 newMap!16)))))

(declare-fun b!144716 () Bool)

(declare-fun e!94293 () Bool)

(assert (=> b!144716 (= e!94293 (not call!16115))))

(declare-fun b!144717 () Bool)

(declare-fun res!68909 () Bool)

(assert (=> b!144717 (=> (not res!68909) (not e!94299))))

(assert (=> b!144717 (= res!68909 (contains!929 (map!1445 (_2!1358 lt!76060)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun bm!16112 () Bool)

(assert (=> bm!16112 (= call!16116 call!16113)))

(declare-fun b!144718 () Bool)

(declare-fun res!68913 () Bool)

(assert (=> b!144718 (=> (not res!68913) (not e!94294))))

(assert (=> b!144718 (= res!68913 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3329 lt!76062)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144719 () Bool)

(declare-fun res!68906 () Bool)

(assert (=> b!144719 (= res!68906 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3332 lt!76062)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!144719 (=> (not res!68906) (not e!94293))))

(declare-fun b!144720 () Bool)

(declare-fun res!68905 () Bool)

(assert (=> b!144720 (=> (not res!68905) (not e!94299))))

(assert (=> b!144720 (= res!68905 (valid!563 (_2!1358 lt!76060)))))

(declare-fun b!144721 () Bool)

(declare-fun c!27442 () Bool)

(assert (=> b!144721 (= c!27442 ((_ is MissingVacant!291) lt!76062))))

(assert (=> b!144721 (= e!94295 e!94296)))

(declare-fun b!144722 () Bool)

(declare-fun lt!76037 () Unit!4571)

(assert (=> b!144722 (= e!94300 lt!76037)))

(assert (=> b!144722 (= lt!76037 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!67 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) (defaultEntry!2976 newMap!16)))))

(assert (=> b!144722 (= lt!76062 call!16114)))

(declare-fun c!27440 () Bool)

(assert (=> b!144722 (= c!27440 ((_ is MissingZero!291) lt!76062))))

(assert (=> b!144722 e!94295))

(declare-fun b!144723 () Bool)

(assert (=> b!144723 (= e!94297 (= (select (arr!2326 (_keys!4741 newMap!16)) (index!3330 lt!76039)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355)))))

(declare-fun bm!16113 () Bool)

(assert (=> bm!16113 (= call!16113 (inRange!0 (ite c!27441 (index!3330 lt!76039) (ite c!27440 (index!3329 lt!76062) (index!3332 lt!76062))) (mask!7334 newMap!16)))))

(declare-fun b!144724 () Bool)

(assert (=> b!144724 (= e!94296 e!94293)))

(declare-fun res!68907 () Bool)

(assert (=> b!144724 (= res!68907 call!16116)))

(assert (=> b!144724 (=> (not res!68907) (not e!94293))))

(declare-fun b!144725 () Bool)

(declare-fun Unit!4591 () Unit!4571)

(assert (=> b!144725 (= e!94298 Unit!4591)))

(declare-fun lt!76048 () Unit!4571)

(declare-fun lemmaArrayContainsKeyThenInListMap!47 (array!4924 array!4926 (_ BitVec 32) (_ BitVec 32) V!3571 V!3571 (_ BitVec 64) (_ BitVec 32) Int) Unit!4571)

(assert (=> b!144725 (= lt!76048 (lemmaArrayContainsKeyThenInListMap!47 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)))))

(assert (=> b!144725 (contains!929 (getCurrentListMap!558 (_keys!4741 newMap!16) (_values!2959 newMap!16) (mask!7334 newMap!16) (extraKeys!2725 newMap!16) (zeroValue!2823 newMap!16) (minValue!2823 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2976 newMap!16)) (select (arr!2326 (_keys!4741 (v!3308 (underlying!486 thiss!992)))) from!355))))

(declare-fun lt!76057 () Unit!4571)

(assert (=> b!144725 (= lt!76057 lt!76048)))

(assert (=> b!144725 false))

(assert (= (and d!46181 c!27441) b!144714))

(assert (= (and d!46181 (not c!27441)) b!144722))

(assert (= (and b!144714 res!68911) b!144715))

(assert (= (and b!144715 res!68908) b!144723))

(assert (= (and b!144722 c!27440) b!144713))

(assert (= (and b!144722 (not c!27440)) b!144721))

(assert (= (and b!144713 res!68912) b!144718))

(assert (= (and b!144718 res!68913) b!144709))

(assert (= (and b!144721 c!27442) b!144724))

(assert (= (and b!144721 (not c!27442)) b!144712))

(assert (= (and b!144724 res!68907) b!144719))

(assert (= (and b!144719 res!68906) b!144716))

(assert (= (or b!144713 b!144724) bm!16112))

(assert (= (or b!144709 b!144716) bm!16110))

(assert (= (or b!144715 bm!16112) bm!16113))

(assert (= (or b!144714 b!144722) bm!16111))

(assert (= (and d!46181 c!27439) b!144725))

(assert (= (and d!46181 (not c!27439)) b!144710))

(assert (= (and d!46181 res!68910) b!144720))

(assert (= (and b!144720 res!68905) b!144717))

(assert (= (and b!144717 res!68909) b!144711))

(declare-fun m!174767 () Bool)

(assert (=> b!144720 m!174767))

(assert (=> b!144722 m!174017))

(assert (=> b!144722 m!174107))

(declare-fun m!174769 () Bool)

(assert (=> b!144723 m!174769))

(declare-fun m!174771 () Bool)

(assert (=> b!144719 m!174771))

(assert (=> bm!16110 m!174017))

(assert (=> bm!16110 m!174137))

(declare-fun m!174773 () Bool)

(assert (=> b!144711 m!174773))

(assert (=> b!144711 m!174019))

(assert (=> b!144711 m!174019))

(declare-fun m!174775 () Bool)

(assert (=> b!144711 m!174775))

(assert (=> bm!16111 m!174017))

(assert (=> bm!16111 m!174109))

(assert (=> b!144725 m!174017))

(declare-fun m!174777 () Bool)

(assert (=> b!144725 m!174777))

(assert (=> b!144725 m!174101))

(assert (=> b!144725 m!174101))

(assert (=> b!144725 m!174017))

(assert (=> b!144725 m!174115))

(assert (=> b!144714 m!174017))

(assert (=> b!144714 m!174105))

(declare-fun m!174779 () Bool)

(assert (=> d!46181 m!174779))

(declare-fun m!174781 () Bool)

(assert (=> d!46181 m!174781))

(assert (=> d!46181 m!174221))

(assert (=> d!46181 m!174001))

(declare-fun m!174783 () Bool)

(assert (=> d!46181 m!174783))

(declare-fun m!174785 () Bool)

(assert (=> d!46181 m!174785))

(assert (=> d!46181 m!174017))

(assert (=> d!46181 m!174037))

(declare-fun m!174787 () Bool)

(assert (=> d!46181 m!174787))

(declare-fun m!174789 () Bool)

(assert (=> d!46181 m!174789))

(assert (=> d!46181 m!174017))

(declare-fun m!174791 () Bool)

(assert (=> d!46181 m!174791))

(declare-fun m!174793 () Bool)

(assert (=> d!46181 m!174793))

(assert (=> d!46181 m!174017))

(declare-fun m!174795 () Bool)

(assert (=> d!46181 m!174795))

(declare-fun m!174797 () Bool)

(assert (=> d!46181 m!174797))

(assert (=> d!46181 m!174017))

(declare-fun m!174799 () Bool)

(assert (=> d!46181 m!174799))

(assert (=> d!46181 m!174783))

(assert (=> d!46181 m!174793))

(declare-fun m!174801 () Bool)

(assert (=> d!46181 m!174801))

(assert (=> d!46181 m!174017))

(declare-fun m!174803 () Bool)

(assert (=> d!46181 m!174803))

(assert (=> d!46181 m!174101))

(assert (=> d!46181 m!174017))

(declare-fun m!174805 () Bool)

(assert (=> d!46181 m!174805))

(assert (=> d!46181 m!174101))

(assert (=> d!46181 m!174325))

(assert (=> d!46181 m!174017))

(assert (=> d!46181 m!174137))

(declare-fun m!174807 () Bool)

(assert (=> d!46181 m!174807))

(declare-fun m!174809 () Bool)

(assert (=> d!46181 m!174809))

(declare-fun m!174811 () Bool)

(assert (=> d!46181 m!174811))

(assert (=> d!46181 m!174101))

(assert (=> d!46181 m!174017))

(assert (=> d!46181 m!174115))

(declare-fun m!174813 () Bool)

(assert (=> d!46181 m!174813))

(declare-fun m!174815 () Bool)

(assert (=> b!144718 m!174815))

(declare-fun m!174817 () Bool)

(assert (=> bm!16113 m!174817))

(assert (=> b!144717 m!174773))

(assert (=> b!144717 m!174773))

(assert (=> b!144717 m!174017))

(declare-fun m!174819 () Bool)

(assert (=> b!144717 m!174819))

(assert (=> bm!16026 d!46181))

(declare-fun d!46183 () Bool)

(declare-fun res!68914 () Bool)

(declare-fun e!94301 () Bool)

(assert (=> d!46183 (=> (not res!68914) (not e!94301))))

(assert (=> d!46183 (= res!68914 (simpleValid!97 (_2!1358 lt!75662)))))

(assert (=> d!46183 (= (valid!563 (_2!1358 lt!75662)) e!94301)))

(declare-fun b!144726 () Bool)

(declare-fun res!68915 () Bool)

(assert (=> b!144726 (=> (not res!68915) (not e!94301))))

(assert (=> b!144726 (= res!68915 (= (arrayCountValidKeys!0 (_keys!4741 (_2!1358 lt!75662)) #b00000000000000000000000000000000 (size!2600 (_keys!4741 (_2!1358 lt!75662)))) (_size!631 (_2!1358 lt!75662))))))

(declare-fun b!144727 () Bool)

(declare-fun res!68916 () Bool)

(assert (=> b!144727 (=> (not res!68916) (not e!94301))))

(assert (=> b!144727 (= res!68916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4741 (_2!1358 lt!75662)) (mask!7334 (_2!1358 lt!75662))))))

(declare-fun b!144728 () Bool)

(assert (=> b!144728 (= e!94301 (arrayNoDuplicates!0 (_keys!4741 (_2!1358 lt!75662)) #b00000000000000000000000000000000 Nil!1769))))

(assert (= (and d!46183 res!68914) b!144726))

(assert (= (and b!144726 res!68915) b!144727))

(assert (= (and b!144727 res!68916) b!144728))

(declare-fun m!174821 () Bool)

(assert (=> d!46183 m!174821))

(declare-fun m!174823 () Bool)

(assert (=> b!144726 m!174823))

(declare-fun m!174825 () Bool)

(assert (=> b!144727 m!174825))

(declare-fun m!174827 () Bool)

(assert (=> b!144728 m!174827))

(assert (=> d!46015 d!46183))

(assert (=> d!46015 d!46033))

(declare-fun d!46185 () Bool)

(assert (=> d!46185 (= (apply!122 lt!75733 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1550 (getValueByKey!177 (toList!892 lt!75733) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6112 () Bool)

(assert (= bs!6112 d!46185))

(assert (=> bs!6112 m!174435))

(assert (=> bs!6112 m!174435))

(declare-fun m!174829 () Bool)

(assert (=> bs!6112 m!174829))

(assert (=> b!144296 d!46185))

(declare-fun mapIsEmpty!4897 () Bool)

(declare-fun mapRes!4897 () Bool)

(assert (=> mapIsEmpty!4897 mapRes!4897))

(declare-fun condMapEmpty!4897 () Bool)

(declare-fun mapDefault!4897 () ValueCell!1128)

(assert (=> mapNonEmpty!4896 (= condMapEmpty!4897 (= mapRest!4896 ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4897)))))

(declare-fun e!94303 () Bool)

(assert (=> mapNonEmpty!4896 (= tp!11664 (and e!94303 mapRes!4897))))

(declare-fun b!144729 () Bool)

(declare-fun e!94302 () Bool)

(assert (=> b!144729 (= e!94302 tp_is_empty!2943)))

(declare-fun b!144730 () Bool)

(assert (=> b!144730 (= e!94303 tp_is_empty!2943)))

(declare-fun mapNonEmpty!4897 () Bool)

(declare-fun tp!11665 () Bool)

(assert (=> mapNonEmpty!4897 (= mapRes!4897 (and tp!11665 e!94302))))

(declare-fun mapValue!4897 () ValueCell!1128)

(declare-fun mapKey!4897 () (_ BitVec 32))

(declare-fun mapRest!4897 () (Array (_ BitVec 32) ValueCell!1128))

(assert (=> mapNonEmpty!4897 (= mapRest!4896 (store mapRest!4897 mapKey!4897 mapValue!4897))))

(assert (= (and mapNonEmpty!4896 condMapEmpty!4897) mapIsEmpty!4897))

(assert (= (and mapNonEmpty!4896 (not condMapEmpty!4897)) mapNonEmpty!4897))

(assert (= (and mapNonEmpty!4897 ((_ is ValueCellFull!1128) mapValue!4897)) b!144729))

(assert (= (and mapNonEmpty!4896 ((_ is ValueCellFull!1128) mapDefault!4897)) b!144730))

(declare-fun m!174831 () Bool)

(assert (=> mapNonEmpty!4897 m!174831))

(declare-fun mapIsEmpty!4898 () Bool)

(declare-fun mapRes!4898 () Bool)

(assert (=> mapIsEmpty!4898 mapRes!4898))

(declare-fun condMapEmpty!4898 () Bool)

(declare-fun mapDefault!4898 () ValueCell!1128)

(assert (=> mapNonEmpty!4895 (= condMapEmpty!4898 (= mapRest!4895 ((as const (Array (_ BitVec 32) ValueCell!1128)) mapDefault!4898)))))

(declare-fun e!94305 () Bool)

(assert (=> mapNonEmpty!4895 (= tp!11663 (and e!94305 mapRes!4898))))

(declare-fun b!144731 () Bool)

(declare-fun e!94304 () Bool)

(assert (=> b!144731 (= e!94304 tp_is_empty!2943)))

(declare-fun b!144732 () Bool)

(assert (=> b!144732 (= e!94305 tp_is_empty!2943)))

(declare-fun mapNonEmpty!4898 () Bool)

(declare-fun tp!11666 () Bool)

(assert (=> mapNonEmpty!4898 (= mapRes!4898 (and tp!11666 e!94304))))

(declare-fun mapRest!4898 () (Array (_ BitVec 32) ValueCell!1128))

(declare-fun mapValue!4898 () ValueCell!1128)

(declare-fun mapKey!4898 () (_ BitVec 32))

(assert (=> mapNonEmpty!4898 (= mapRest!4895 (store mapRest!4898 mapKey!4898 mapValue!4898))))

(assert (= (and mapNonEmpty!4895 condMapEmpty!4898) mapIsEmpty!4898))

(assert (= (and mapNonEmpty!4895 (not condMapEmpty!4898)) mapNonEmpty!4898))

(assert (= (and mapNonEmpty!4898 ((_ is ValueCellFull!1128) mapValue!4898)) b!144731))

(assert (= (and mapNonEmpty!4895 ((_ is ValueCellFull!1128) mapDefault!4898)) b!144732))

(declare-fun m!174833 () Bool)

(assert (=> mapNonEmpty!4898 m!174833))

(declare-fun b_lambda!6519 () Bool)

(assert (= b_lambda!6517 (or (and b!144046 b_free!3053 (= (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) (defaultEntry!2976 newMap!16))) (and b!144033 b_free!3055) b_lambda!6519)))

(declare-fun b_lambda!6521 () Bool)

(assert (= b_lambda!6515 (or (and b!144046 b_free!3053 (= (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) (defaultEntry!2976 newMap!16))) (and b!144033 b_free!3055) b_lambda!6521)))

(declare-fun b_lambda!6523 () Bool)

(assert (= b_lambda!6511 (or (and b!144046 b_free!3053) (and b!144033 b_free!3055 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))))) b_lambda!6523)))

(declare-fun b_lambda!6525 () Bool)

(assert (= b_lambda!6513 (or (and b!144046 b_free!3053) (and b!144033 b_free!3055 (= (defaultEntry!2976 newMap!16) (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))))) b_lambda!6525)))

(declare-fun b_lambda!6527 () Bool)

(assert (= b_lambda!6509 (or (and b!144046 b_free!3053 (= (defaultEntry!2976 (v!3308 (underlying!486 thiss!992))) (defaultEntry!2976 newMap!16))) (and b!144033 b_free!3055) b_lambda!6527)))

(check-sat (not b!144595) (not b!144669) (not b!144441) (not bm!16079) (not d!46101) (not d!46097) (not b!144558) (not b!144575) (not d!46181) (not bm!16064) (not b!144554) (not b!144576) (not b!144577) (not b!144488) (not d!46051) (not b!144671) (not b!144439) (not b!144414) (not d!46095) (not b!144540) (not b!144570) (not b!144651) (not b!144545) (not b!144431) (not b!144419) (not b!144597) (not b!144674) (not b!144479) (not b!144483) (not b!144672) (not b!144453) (not bm!16065) (not b!144726) (not b_next!3053) (not b!144486) b_and!9033 (not b!144619) (not bm!16090) (not b_lambda!6507) (not b!144568) (not d!46049) (not bm!16113) (not d!46185) (not b!144562) (not d!46183) (not b!144663) (not b!144473) (not bm!16068) (not b!144548) (not b!144560) (not b!144631) (not b_next!3055) (not d!46137) (not d!46067) (not b!144594) (not b!144446) (not bm!16078) (not b!144572) (not d!46111) (not b!144596) (not d!46127) (not b!144420) (not b!144549) (not bm!16083) (not d!46091) (not d!46089) (not b!144480) (not b!144551) (not b!144544) (not b!144591) (not b!144602) (not b!144587) (not b!144384) (not b!144665) (not d!46087) (not b_lambda!6527) (not d!46113) (not b!144720) (not b!144714) (not b!144652) (not b!144590) (not b!144588) (not b!144717) (not b!144546) (not bm!16087) (not bm!16100) (not b!144728) (not d!46117) (not mapNonEmpty!4898) (not b!144390) (not bm!16085) (not d!46079) (not d!46135) (not b!144430) (not b!144458) (not bm!16092) (not b!144474) (not mapNonEmpty!4897) (not b!144727) (not bm!16082) (not d!46129) (not d!46145) (not b!144464) (not b!144622) (not bm!16073) (not bm!16111) (not b_lambda!6525) (not b!144630) (not d!46065) (not b!144449) (not d!46103) (not b!144725) (not b_lambda!6519) (not b!144553) (not b!144648) (not d!46119) (not d!46157) (not d!46061) (not b!144668) (not d!46077) (not b!144435) (not b!144637) (not b!144593) (not b!144650) (not b!144380) (not d!46085) (not bm!16110) (not bm!16101) (not d!46069) (not b!144599) (not d!46123) (not b!144382) (not b!144406) (not b!144451) (not b!144457) (not d!46151) (not d!46139) (not b!144711) (not b!144559) (not b!144478) (not d!46179) (not bm!16099) (not d!46133) (not b!144484) (not b!144629) tp_is_empty!2943 (not b!144477) (not b!144654) (not b!144539) (not d!46131) (not d!46177) (not b!144626) (not d!46149) (not d!46081) (not d!46175) (not b!144456) (not b!144661) (not d!46147) (not d!46125) (not d!46073) (not b!144666) (not bm!16091) (not d!46121) (not bm!16094) (not d!46063) (not b_lambda!6523) (not b!144616) (not d!46141) (not bm!16084) (not b!144481) (not bm!16066) (not b!144556) (not d!46143) (not d!46105) (not d!46093) (not d!46075) (not b!144443) (not b!144565) (not b!144613) (not b_lambda!6521) (not b!144624) (not b!144438) (not b_lambda!6503) (not b!144722) (not d!46057) (not b!144552) (not b!144655) (not d!46099) (not b!144542) b_and!9035 (not b!144547))
(check-sat b_and!9033 b_and!9035 (not b_next!3053) (not b_next!3055))
