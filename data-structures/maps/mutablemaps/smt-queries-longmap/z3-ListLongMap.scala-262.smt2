; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4294 () Bool)

(assert start!4294)

(declare-fun b_free!1161 () Bool)

(declare-fun b_next!1161 () Bool)

(assert (=> start!4294 (= b_free!1161 (not b_next!1161))))

(declare-fun tp!4909 () Bool)

(declare-fun b_and!1977 () Bool)

(assert (=> start!4294 (= tp!4909 b_and!1977)))

(declare-fun b!33072 () Bool)

(declare-fun e!21008 () Bool)

(declare-fun e!21009 () Bool)

(assert (=> b!33072 (= e!21008 e!21009)))

(declare-fun res!20101 () Bool)

(assert (=> b!33072 (=> (not res!20101) (not e!21009))))

(declare-datatypes ((V!1845 0))(
  ( (V!1846 (val!784 Int)) )
))
(declare-datatypes ((tuple2!1268 0))(
  ( (tuple2!1269 (_1!644 (_ BitVec 64)) (_2!644 V!1845)) )
))
(declare-datatypes ((List!871 0))(
  ( (Nil!868) (Cons!867 (h!1434 tuple2!1268) (t!3570 List!871)) )
))
(declare-datatypes ((ListLongMap!849 0))(
  ( (ListLongMap!850 (toList!440 List!871)) )
))
(declare-fun lt!11974 () ListLongMap!849)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!379 (ListLongMap!849 (_ BitVec 64)) Bool)

(assert (=> b!33072 (= res!20101 (not (contains!379 lt!11974 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!558 0))(
  ( (ValueCellFull!558 (v!1875 V!1845)) (EmptyCell!558) )
))
(declare-datatypes ((array!2239 0))(
  ( (array!2240 (arr!1071 (Array (_ BitVec 32) ValueCell!558)) (size!1172 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2239)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2241 0))(
  ( (array!2242 (arr!1072 (Array (_ BitVec 32) (_ BitVec 64))) (size!1173 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2241)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1845)

(declare-fun minValue!1443 () V!1845)

(declare-fun getCurrentListMap!265 (array!2241 array!2239 (_ BitVec 32) (_ BitVec 32) V!1845 V!1845 (_ BitVec 32) Int) ListLongMap!849)

(assert (=> b!33072 (= lt!11974 (getCurrentListMap!265 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33073 () Bool)

(declare-fun e!21010 () Bool)

(declare-fun e!21004 () Bool)

(declare-fun mapRes!1807 () Bool)

(assert (=> b!33073 (= e!21010 (and e!21004 mapRes!1807))))

(declare-fun condMapEmpty!1807 () Bool)

(declare-fun mapDefault!1807 () ValueCell!558)

(assert (=> b!33073 (= condMapEmpty!1807 (= (arr!1071 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!558)) mapDefault!1807)))))

(declare-fun b!33074 () Bool)

(declare-fun e!21007 () Bool)

(declare-fun tp_is_empty!1515 () Bool)

(assert (=> b!33074 (= e!21007 tp_is_empty!1515)))

(declare-fun b!33075 () Bool)

(declare-fun res!20104 () Bool)

(assert (=> b!33075 (=> (not res!20104) (not e!21009))))

(declare-fun arrayContainsKey!0 (array!2241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33075 (= res!20104 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33076 () Bool)

(declare-fun res!20102 () Bool)

(assert (=> b!33076 (=> (not res!20102) (not e!21008))))

(assert (=> b!33076 (= res!20102 (and (= (size!1172 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1173 _keys!1833) (size!1172 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33077 () Bool)

(declare-fun lt!11976 () (_ BitVec 32))

(declare-fun e!21006 () Bool)

(declare-datatypes ((SeekEntryResult!132 0))(
  ( (MissingZero!132 (index!2650 (_ BitVec 32))) (Found!132 (index!2651 (_ BitVec 32))) (Intermediate!132 (undefined!944 Bool) (index!2652 (_ BitVec 32)) (x!6790 (_ BitVec 32))) (Undefined!132) (MissingVacant!132 (index!2653 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2241 (_ BitVec 32)) SeekEntryResult!132)

(assert (=> b!33077 (= e!21006 (= (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294) (Found!132 lt!11976)))))

(declare-fun b!33078 () Bool)

(assert (=> b!33078 (= e!21009 (not e!21006))))

(declare-fun res!20099 () Bool)

(assert (=> b!33078 (=> res!20099 e!21006)))

(assert (=> b!33078 (= res!20099 (not (= (size!1173 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(assert (=> b!33078 (contains!379 lt!11974 (select (arr!1072 _keys!1833) lt!11976))))

(declare-datatypes ((Unit!733 0))(
  ( (Unit!734) )
))
(declare-fun lt!11975 () Unit!733)

(declare-fun lemmaValidKeyInArrayIsInListMap!54 (array!2241 array!2239 (_ BitVec 32) (_ BitVec 32) V!1845 V!1845 (_ BitVec 32) Int) Unit!733)

(assert (=> b!33078 (= lt!11975 (lemmaValidKeyInArrayIsInListMap!54 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11976 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2241 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33078 (= lt!11976 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1807 () Bool)

(assert (=> mapIsEmpty!1807 mapRes!1807))

(declare-fun b!33079 () Bool)

(declare-fun res!20100 () Bool)

(assert (=> b!33079 (=> (not res!20100) (not e!21008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2241 (_ BitVec 32)) Bool)

(assert (=> b!33079 (= res!20100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33080 () Bool)

(declare-fun res!20098 () Bool)

(assert (=> b!33080 (=> (not res!20098) (not e!21008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33080 (= res!20098 (validKeyInArray!0 k0!1304))))

(declare-fun b!33081 () Bool)

(declare-fun res!20103 () Bool)

(assert (=> b!33081 (=> (not res!20103) (not e!21008))))

(declare-datatypes ((List!872 0))(
  ( (Nil!869) (Cons!868 (h!1435 (_ BitVec 64)) (t!3571 List!872)) )
))
(declare-fun arrayNoDuplicates!0 (array!2241 (_ BitVec 32) List!872) Bool)

(assert (=> b!33081 (= res!20103 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!869))))

(declare-fun b!33082 () Bool)

(assert (=> b!33082 (= e!21004 tp_is_empty!1515)))

(declare-fun res!20097 () Bool)

(assert (=> start!4294 (=> (not res!20097) (not e!21008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4294 (= res!20097 (validMask!0 mask!2294))))

(assert (=> start!4294 e!21008))

(assert (=> start!4294 true))

(assert (=> start!4294 tp!4909))

(declare-fun array_inv!713 (array!2239) Bool)

(assert (=> start!4294 (and (array_inv!713 _values!1501) e!21010)))

(declare-fun array_inv!714 (array!2241) Bool)

(assert (=> start!4294 (array_inv!714 _keys!1833)))

(assert (=> start!4294 tp_is_empty!1515))

(declare-fun mapNonEmpty!1807 () Bool)

(declare-fun tp!4908 () Bool)

(assert (=> mapNonEmpty!1807 (= mapRes!1807 (and tp!4908 e!21007))))

(declare-fun mapValue!1807 () ValueCell!558)

(declare-fun mapKey!1807 () (_ BitVec 32))

(declare-fun mapRest!1807 () (Array (_ BitVec 32) ValueCell!558))

(assert (=> mapNonEmpty!1807 (= (arr!1071 _values!1501) (store mapRest!1807 mapKey!1807 mapValue!1807))))

(assert (= (and start!4294 res!20097) b!33076))

(assert (= (and b!33076 res!20102) b!33079))

(assert (= (and b!33079 res!20100) b!33081))

(assert (= (and b!33081 res!20103) b!33080))

(assert (= (and b!33080 res!20098) b!33072))

(assert (= (and b!33072 res!20101) b!33075))

(assert (= (and b!33075 res!20104) b!33078))

(assert (= (and b!33078 (not res!20099)) b!33077))

(assert (= (and b!33073 condMapEmpty!1807) mapIsEmpty!1807))

(assert (= (and b!33073 (not condMapEmpty!1807)) mapNonEmpty!1807))

(get-info :version)

(assert (= (and mapNonEmpty!1807 ((_ is ValueCellFull!558) mapValue!1807)) b!33074))

(assert (= (and b!33073 ((_ is ValueCellFull!558) mapDefault!1807)) b!33082))

(assert (= start!4294 b!33073))

(declare-fun m!26503 () Bool)

(assert (=> start!4294 m!26503))

(declare-fun m!26505 () Bool)

(assert (=> start!4294 m!26505))

(declare-fun m!26507 () Bool)

(assert (=> start!4294 m!26507))

(declare-fun m!26509 () Bool)

(assert (=> b!33081 m!26509))

(declare-fun m!26511 () Bool)

(assert (=> b!33075 m!26511))

(declare-fun m!26513 () Bool)

(assert (=> b!33077 m!26513))

(declare-fun m!26515 () Bool)

(assert (=> b!33072 m!26515))

(declare-fun m!26517 () Bool)

(assert (=> b!33072 m!26517))

(declare-fun m!26519 () Bool)

(assert (=> b!33079 m!26519))

(declare-fun m!26521 () Bool)

(assert (=> mapNonEmpty!1807 m!26521))

(declare-fun m!26523 () Bool)

(assert (=> b!33078 m!26523))

(assert (=> b!33078 m!26523))

(declare-fun m!26525 () Bool)

(assert (=> b!33078 m!26525))

(declare-fun m!26527 () Bool)

(assert (=> b!33078 m!26527))

(declare-fun m!26529 () Bool)

(assert (=> b!33078 m!26529))

(declare-fun m!26531 () Bool)

(assert (=> b!33080 m!26531))

(check-sat (not b!33072) (not mapNonEmpty!1807) (not b!33080) (not b_next!1161) (not b!33079) (not b!33075) (not b!33081) (not b!33077) (not start!4294) tp_is_empty!1515 b_and!1977 (not b!33078))
(check-sat b_and!1977 (not b_next!1161))
(get-model)

(declare-fun d!5135 () Bool)

(assert (=> d!5135 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4294 d!5135))

(declare-fun d!5137 () Bool)

(assert (=> d!5137 (= (array_inv!713 _values!1501) (bvsge (size!1172 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4294 d!5137))

(declare-fun d!5139 () Bool)

(assert (=> d!5139 (= (array_inv!714 _keys!1833) (bvsge (size!1173 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4294 d!5139))

(declare-fun d!5141 () Bool)

(assert (=> d!5141 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33080 d!5141))

(declare-fun b!33126 () Bool)

(declare-fun e!21040 () Bool)

(declare-fun e!21043 () Bool)

(assert (=> b!33126 (= e!21040 e!21043)))

(declare-fun res!20135 () Bool)

(assert (=> b!33126 (=> (not res!20135) (not e!21043))))

(declare-fun e!21042 () Bool)

(assert (=> b!33126 (= res!20135 (not e!21042))))

(declare-fun res!20137 () Bool)

(assert (=> b!33126 (=> (not res!20137) (not e!21042))))

(assert (=> b!33126 (= res!20137 (validKeyInArray!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33127 () Bool)

(declare-fun e!21041 () Bool)

(declare-fun call!2645 () Bool)

(assert (=> b!33127 (= e!21041 call!2645)))

(declare-fun b!33128 () Bool)

(assert (=> b!33128 (= e!21041 call!2645)))

(declare-fun d!5143 () Bool)

(declare-fun res!20136 () Bool)

(assert (=> d!5143 (=> res!20136 e!21040)))

(assert (=> d!5143 (= res!20136 (bvsge #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(assert (=> d!5143 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!869) e!21040)))

(declare-fun bm!2642 () Bool)

(declare-fun c!3814 () Bool)

(assert (=> bm!2642 (= call!2645 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3814 (Cons!868 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000) Nil!869) Nil!869)))))

(declare-fun b!33129 () Bool)

(declare-fun contains!380 (List!872 (_ BitVec 64)) Bool)

(assert (=> b!33129 (= e!21042 (contains!380 Nil!869 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33130 () Bool)

(assert (=> b!33130 (= e!21043 e!21041)))

(assert (=> b!33130 (= c!3814 (validKeyInArray!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5143 (not res!20136)) b!33126))

(assert (= (and b!33126 res!20137) b!33129))

(assert (= (and b!33126 res!20135) b!33130))

(assert (= (and b!33130 c!3814) b!33128))

(assert (= (and b!33130 (not c!3814)) b!33127))

(assert (= (or b!33128 b!33127) bm!2642))

(declare-fun m!26563 () Bool)

(assert (=> b!33126 m!26563))

(assert (=> b!33126 m!26563))

(declare-fun m!26565 () Bool)

(assert (=> b!33126 m!26565))

(assert (=> bm!2642 m!26563))

(declare-fun m!26567 () Bool)

(assert (=> bm!2642 m!26567))

(assert (=> b!33129 m!26563))

(assert (=> b!33129 m!26563))

(declare-fun m!26569 () Bool)

(assert (=> b!33129 m!26569))

(assert (=> b!33130 m!26563))

(assert (=> b!33130 m!26563))

(assert (=> b!33130 m!26565))

(assert (=> b!33081 d!5143))

(declare-fun d!5145 () Bool)

(declare-fun e!21049 () Bool)

(assert (=> d!5145 e!21049))

(declare-fun res!20140 () Bool)

(assert (=> d!5145 (=> res!20140 e!21049)))

(declare-fun lt!11994 () Bool)

(assert (=> d!5145 (= res!20140 (not lt!11994))))

(declare-fun lt!11997 () Bool)

(assert (=> d!5145 (= lt!11994 lt!11997)))

(declare-fun lt!11996 () Unit!733)

(declare-fun e!21048 () Unit!733)

(assert (=> d!5145 (= lt!11996 e!21048)))

(declare-fun c!3817 () Bool)

(assert (=> d!5145 (= c!3817 lt!11997)))

(declare-fun containsKey!31 (List!871 (_ BitVec 64)) Bool)

(assert (=> d!5145 (= lt!11997 (containsKey!31 (toList!440 lt!11974) k0!1304))))

(assert (=> d!5145 (= (contains!379 lt!11974 k0!1304) lt!11994)))

(declare-fun b!33137 () Bool)

(declare-fun lt!11995 () Unit!733)

(assert (=> b!33137 (= e!21048 lt!11995)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!28 (List!871 (_ BitVec 64)) Unit!733)

(assert (=> b!33137 (= lt!11995 (lemmaContainsKeyImpliesGetValueByKeyDefined!28 (toList!440 lt!11974) k0!1304))))

(declare-datatypes ((Option!73 0))(
  ( (Some!72 (v!1877 V!1845)) (None!71) )
))
(declare-fun isDefined!29 (Option!73) Bool)

(declare-fun getValueByKey!67 (List!871 (_ BitVec 64)) Option!73)

(assert (=> b!33137 (isDefined!29 (getValueByKey!67 (toList!440 lt!11974) k0!1304))))

(declare-fun b!33138 () Bool)

(declare-fun Unit!735 () Unit!733)

(assert (=> b!33138 (= e!21048 Unit!735)))

(declare-fun b!33139 () Bool)

(assert (=> b!33139 (= e!21049 (isDefined!29 (getValueByKey!67 (toList!440 lt!11974) k0!1304)))))

(assert (= (and d!5145 c!3817) b!33137))

(assert (= (and d!5145 (not c!3817)) b!33138))

(assert (= (and d!5145 (not res!20140)) b!33139))

(declare-fun m!26571 () Bool)

(assert (=> d!5145 m!26571))

(declare-fun m!26573 () Bool)

(assert (=> b!33137 m!26573))

(declare-fun m!26575 () Bool)

(assert (=> b!33137 m!26575))

(assert (=> b!33137 m!26575))

(declare-fun m!26577 () Bool)

(assert (=> b!33137 m!26577))

(assert (=> b!33139 m!26575))

(assert (=> b!33139 m!26575))

(assert (=> b!33139 m!26577))

(assert (=> b!33072 d!5145))

(declare-fun b!33182 () Bool)

(declare-fun e!21087 () Bool)

(declare-fun call!2665 () Bool)

(assert (=> b!33182 (= e!21087 (not call!2665))))

(declare-fun c!3830 () Bool)

(declare-fun call!2662 () ListLongMap!849)

(declare-fun c!3831 () Bool)

(declare-fun bm!2657 () Bool)

(declare-fun call!2664 () ListLongMap!849)

(declare-fun call!2666 () ListLongMap!849)

(declare-fun call!2663 () ListLongMap!849)

(declare-fun +!53 (ListLongMap!849 tuple2!1268) ListLongMap!849)

(assert (=> bm!2657 (= call!2664 (+!53 (ite c!3831 call!2662 (ite c!3830 call!2663 call!2666)) (ite (or c!3831 c!3830) (tuple2!1269 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1269 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!33184 () Bool)

(declare-fun e!21076 () Unit!733)

(declare-fun lt!12047 () Unit!733)

(assert (=> b!33184 (= e!21076 lt!12047)))

(declare-fun lt!12045 () ListLongMap!849)

(declare-fun getCurrentListMapNoExtraKeys!22 (array!2241 array!2239 (_ BitVec 32) (_ BitVec 32) V!1845 V!1845 (_ BitVec 32) Int) ListLongMap!849)

(assert (=> b!33184 (= lt!12045 (getCurrentListMapNoExtraKeys!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12053 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12053 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12056 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12056 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12058 () Unit!733)

(declare-fun addStillContains!20 (ListLongMap!849 (_ BitVec 64) V!1845 (_ BitVec 64)) Unit!733)

(assert (=> b!33184 (= lt!12058 (addStillContains!20 lt!12045 lt!12053 zeroValue!1443 lt!12056))))

(assert (=> b!33184 (contains!379 (+!53 lt!12045 (tuple2!1269 lt!12053 zeroValue!1443)) lt!12056)))

(declare-fun lt!12059 () Unit!733)

(assert (=> b!33184 (= lt!12059 lt!12058)))

(declare-fun lt!12060 () ListLongMap!849)

(assert (=> b!33184 (= lt!12060 (getCurrentListMapNoExtraKeys!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12042 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12042 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12061 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12061 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12063 () Unit!733)

(declare-fun addApplyDifferent!20 (ListLongMap!849 (_ BitVec 64) V!1845 (_ BitVec 64)) Unit!733)

(assert (=> b!33184 (= lt!12063 (addApplyDifferent!20 lt!12060 lt!12042 minValue!1443 lt!12061))))

(declare-fun apply!35 (ListLongMap!849 (_ BitVec 64)) V!1845)

(assert (=> b!33184 (= (apply!35 (+!53 lt!12060 (tuple2!1269 lt!12042 minValue!1443)) lt!12061) (apply!35 lt!12060 lt!12061))))

(declare-fun lt!12044 () Unit!733)

(assert (=> b!33184 (= lt!12044 lt!12063)))

(declare-fun lt!12046 () ListLongMap!849)

(assert (=> b!33184 (= lt!12046 (getCurrentListMapNoExtraKeys!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12051 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12051 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12049 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12049 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12048 () Unit!733)

(assert (=> b!33184 (= lt!12048 (addApplyDifferent!20 lt!12046 lt!12051 zeroValue!1443 lt!12049))))

(assert (=> b!33184 (= (apply!35 (+!53 lt!12046 (tuple2!1269 lt!12051 zeroValue!1443)) lt!12049) (apply!35 lt!12046 lt!12049))))

(declare-fun lt!12043 () Unit!733)

(assert (=> b!33184 (= lt!12043 lt!12048)))

(declare-fun lt!12054 () ListLongMap!849)

(assert (=> b!33184 (= lt!12054 (getCurrentListMapNoExtraKeys!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12050 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12050 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12052 () (_ BitVec 64))

(assert (=> b!33184 (= lt!12052 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!33184 (= lt!12047 (addApplyDifferent!20 lt!12054 lt!12050 minValue!1443 lt!12052))))

(assert (=> b!33184 (= (apply!35 (+!53 lt!12054 (tuple2!1269 lt!12050 minValue!1443)) lt!12052) (apply!35 lt!12054 lt!12052))))

(declare-fun bm!2658 () Bool)

(declare-fun lt!12055 () ListLongMap!849)

(assert (=> bm!2658 (= call!2665 (contains!379 lt!12055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!33185 () Bool)

(declare-fun e!21084 () Bool)

(declare-fun e!21088 () Bool)

(assert (=> b!33185 (= e!21084 e!21088)))

(declare-fun res!20166 () Bool)

(declare-fun call!2660 () Bool)

(assert (=> b!33185 (= res!20166 call!2660)))

(assert (=> b!33185 (=> (not res!20166) (not e!21088))))

(declare-fun bm!2659 () Bool)

(assert (=> bm!2659 (= call!2660 (contains!379 lt!12055 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2660 () Bool)

(declare-fun call!2661 () ListLongMap!849)

(assert (=> bm!2660 (= call!2661 call!2664)))

(declare-fun b!33186 () Bool)

(declare-fun e!21078 () ListLongMap!849)

(assert (=> b!33186 (= e!21078 (+!53 call!2664 (tuple2!1269 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!33187 () Bool)

(declare-fun e!21085 () Bool)

(assert (=> b!33187 (= e!21087 e!21085)))

(declare-fun res!20159 () Bool)

(assert (=> b!33187 (= res!20159 call!2665)))

(assert (=> b!33187 (=> (not res!20159) (not e!21085))))

(declare-fun b!33188 () Bool)

(declare-fun e!21081 () Bool)

(assert (=> b!33188 (= e!21081 (validKeyInArray!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33189 () Bool)

(assert (=> b!33189 (= e!21088 (= (apply!35 lt!12055 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!33190 () Bool)

(assert (=> b!33190 (= e!21084 (not call!2660))))

(declare-fun b!33191 () Bool)

(declare-fun e!21079 () Bool)

(assert (=> b!33191 (= e!21079 (validKeyInArray!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33192 () Bool)

(declare-fun res!20160 () Bool)

(declare-fun e!21083 () Bool)

(assert (=> b!33192 (=> (not res!20160) (not e!21083))))

(assert (=> b!33192 (= res!20160 e!21087)))

(declare-fun c!3833 () Bool)

(assert (=> b!33192 (= c!3833 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!33193 () Bool)

(declare-fun e!21082 () ListLongMap!849)

(assert (=> b!33193 (= e!21082 call!2661)))

(declare-fun bm!2661 () Bool)

(assert (=> bm!2661 (= call!2662 (getCurrentListMapNoExtraKeys!22 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33194 () Bool)

(declare-fun c!3835 () Bool)

(assert (=> b!33194 (= c!3835 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!21077 () ListLongMap!849)

(assert (=> b!33194 (= e!21077 e!21082)))

(declare-fun b!33195 () Bool)

(assert (=> b!33195 (= e!21082 call!2666)))

(declare-fun b!33196 () Bool)

(declare-fun Unit!736 () Unit!733)

(assert (=> b!33196 (= e!21076 Unit!736)))

(declare-fun b!33197 () Bool)

(assert (=> b!33197 (= e!21083 e!21084)))

(declare-fun c!3834 () Bool)

(assert (=> b!33197 (= c!3834 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!33198 () Bool)

(assert (=> b!33198 (= e!21085 (= (apply!35 lt!12055 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!33199 () Bool)

(assert (=> b!33199 (= e!21078 e!21077)))

(assert (=> b!33199 (= c!3830 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2662 () Bool)

(assert (=> bm!2662 (= call!2666 call!2663)))

(declare-fun bm!2663 () Bool)

(assert (=> bm!2663 (= call!2663 call!2662)))

(declare-fun d!5147 () Bool)

(assert (=> d!5147 e!21083))

(declare-fun res!20161 () Bool)

(assert (=> d!5147 (=> (not res!20161) (not e!21083))))

(assert (=> d!5147 (= res!20161 (or (bvsge #b00000000000000000000000000000000 (size!1173 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)))))))

(declare-fun lt!12062 () ListLongMap!849)

(assert (=> d!5147 (= lt!12055 lt!12062)))

(declare-fun lt!12057 () Unit!733)

(assert (=> d!5147 (= lt!12057 e!21076)))

(declare-fun c!3832 () Bool)

(assert (=> d!5147 (= c!3832 e!21079)))

(declare-fun res!20162 () Bool)

(assert (=> d!5147 (=> (not res!20162) (not e!21079))))

(assert (=> d!5147 (= res!20162 (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(assert (=> d!5147 (= lt!12062 e!21078)))

(assert (=> d!5147 (= c!3831 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5147 (validMask!0 mask!2294)))

(assert (=> d!5147 (= (getCurrentListMap!265 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!12055)))

(declare-fun b!33183 () Bool)

(assert (=> b!33183 (= e!21077 call!2661)))

(declare-fun b!33200 () Bool)

(declare-fun e!21080 () Bool)

(declare-fun get!564 (ValueCell!558 V!1845) V!1845)

(declare-fun dynLambda!152 (Int (_ BitVec 64)) V!1845)

(assert (=> b!33200 (= e!21080 (= (apply!35 lt!12055 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)) (get!564 (select (arr!1071 _values!1501) #b00000000000000000000000000000000) (dynLambda!152 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1172 _values!1501)))))

(assert (=> b!33200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(declare-fun b!33201 () Bool)

(declare-fun e!21086 () Bool)

(assert (=> b!33201 (= e!21086 e!21080)))

(declare-fun res!20165 () Bool)

(assert (=> b!33201 (=> (not res!20165) (not e!21080))))

(assert (=> b!33201 (= res!20165 (contains!379 lt!12055 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!33201 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(declare-fun b!33202 () Bool)

(declare-fun res!20164 () Bool)

(assert (=> b!33202 (=> (not res!20164) (not e!21083))))

(assert (=> b!33202 (= res!20164 e!21086)))

(declare-fun res!20163 () Bool)

(assert (=> b!33202 (=> res!20163 e!21086)))

(assert (=> b!33202 (= res!20163 (not e!21081))))

(declare-fun res!20167 () Bool)

(assert (=> b!33202 (=> (not res!20167) (not e!21081))))

(assert (=> b!33202 (= res!20167 (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(assert (= (and d!5147 c!3831) b!33186))

(assert (= (and d!5147 (not c!3831)) b!33199))

(assert (= (and b!33199 c!3830) b!33183))

(assert (= (and b!33199 (not c!3830)) b!33194))

(assert (= (and b!33194 c!3835) b!33193))

(assert (= (and b!33194 (not c!3835)) b!33195))

(assert (= (or b!33193 b!33195) bm!2662))

(assert (= (or b!33183 bm!2662) bm!2663))

(assert (= (or b!33183 b!33193) bm!2660))

(assert (= (or b!33186 bm!2663) bm!2661))

(assert (= (or b!33186 bm!2660) bm!2657))

(assert (= (and d!5147 res!20162) b!33191))

(assert (= (and d!5147 c!3832) b!33184))

(assert (= (and d!5147 (not c!3832)) b!33196))

(assert (= (and d!5147 res!20161) b!33202))

(assert (= (and b!33202 res!20167) b!33188))

(assert (= (and b!33202 (not res!20163)) b!33201))

(assert (= (and b!33201 res!20165) b!33200))

(assert (= (and b!33202 res!20164) b!33192))

(assert (= (and b!33192 c!3833) b!33187))

(assert (= (and b!33192 (not c!3833)) b!33182))

(assert (= (and b!33187 res!20159) b!33198))

(assert (= (or b!33187 b!33182) bm!2658))

(assert (= (and b!33192 res!20160) b!33197))

(assert (= (and b!33197 c!3834) b!33185))

(assert (= (and b!33197 (not c!3834)) b!33190))

(assert (= (and b!33185 res!20166) b!33189))

(assert (= (or b!33185 b!33190) bm!2659))

(declare-fun b_lambda!1707 () Bool)

(assert (=> (not b_lambda!1707) (not b!33200)))

(declare-fun t!3573 () Bool)

(declare-fun tb!687 () Bool)

(assert (=> (and start!4294 (= defaultEntry!1504 defaultEntry!1504) t!3573) tb!687))

(declare-fun result!1167 () Bool)

(assert (=> tb!687 (= result!1167 tp_is_empty!1515)))

(assert (=> b!33200 t!3573))

(declare-fun b_and!1981 () Bool)

(assert (= b_and!1977 (and (=> t!3573 result!1167) b_and!1981)))

(declare-fun m!26579 () Bool)

(assert (=> b!33200 m!26579))

(assert (=> b!33200 m!26563))

(declare-fun m!26581 () Bool)

(assert (=> b!33200 m!26581))

(assert (=> b!33200 m!26563))

(declare-fun m!26583 () Bool)

(assert (=> b!33200 m!26583))

(assert (=> b!33200 m!26583))

(assert (=> b!33200 m!26579))

(declare-fun m!26585 () Bool)

(assert (=> b!33200 m!26585))

(assert (=> b!33201 m!26563))

(assert (=> b!33201 m!26563))

(declare-fun m!26587 () Bool)

(assert (=> b!33201 m!26587))

(declare-fun m!26589 () Bool)

(assert (=> bm!2657 m!26589))

(assert (=> d!5147 m!26503))

(declare-fun m!26591 () Bool)

(assert (=> bm!2659 m!26591))

(declare-fun m!26593 () Bool)

(assert (=> b!33198 m!26593))

(declare-fun m!26595 () Bool)

(assert (=> bm!2661 m!26595))

(declare-fun m!26597 () Bool)

(assert (=> bm!2658 m!26597))

(assert (=> b!33188 m!26563))

(assert (=> b!33188 m!26563))

(assert (=> b!33188 m!26565))

(declare-fun m!26599 () Bool)

(assert (=> b!33186 m!26599))

(assert (=> b!33191 m!26563))

(assert (=> b!33191 m!26563))

(assert (=> b!33191 m!26565))

(declare-fun m!26601 () Bool)

(assert (=> b!33189 m!26601))

(declare-fun m!26603 () Bool)

(assert (=> b!33184 m!26603))

(declare-fun m!26605 () Bool)

(assert (=> b!33184 m!26605))

(declare-fun m!26607 () Bool)

(assert (=> b!33184 m!26607))

(declare-fun m!26609 () Bool)

(assert (=> b!33184 m!26609))

(declare-fun m!26611 () Bool)

(assert (=> b!33184 m!26611))

(declare-fun m!26613 () Bool)

(assert (=> b!33184 m!26613))

(declare-fun m!26615 () Bool)

(assert (=> b!33184 m!26615))

(declare-fun m!26617 () Bool)

(assert (=> b!33184 m!26617))

(declare-fun m!26619 () Bool)

(assert (=> b!33184 m!26619))

(declare-fun m!26621 () Bool)

(assert (=> b!33184 m!26621))

(assert (=> b!33184 m!26613))

(assert (=> b!33184 m!26563))

(assert (=> b!33184 m!26603))

(declare-fun m!26623 () Bool)

(assert (=> b!33184 m!26623))

(assert (=> b!33184 m!26595))

(declare-fun m!26625 () Bool)

(assert (=> b!33184 m!26625))

(assert (=> b!33184 m!26625))

(declare-fun m!26627 () Bool)

(assert (=> b!33184 m!26627))

(assert (=> b!33184 m!26617))

(declare-fun m!26629 () Bool)

(assert (=> b!33184 m!26629))

(declare-fun m!26631 () Bool)

(assert (=> b!33184 m!26631))

(assert (=> b!33072 d!5147))

(declare-fun b!33217 () Bool)

(declare-fun c!3842 () Bool)

(declare-fun lt!12072 () (_ BitVec 64))

(assert (=> b!33217 (= c!3842 (= lt!12072 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!21095 () SeekEntryResult!132)

(declare-fun e!21096 () SeekEntryResult!132)

(assert (=> b!33217 (= e!21095 e!21096)))

(declare-fun b!33218 () Bool)

(declare-fun lt!12070 () SeekEntryResult!132)

(assert (=> b!33218 (= e!21095 (Found!132 (index!2652 lt!12070)))))

(declare-fun b!33219 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2241 (_ BitVec 32)) SeekEntryResult!132)

(assert (=> b!33219 (= e!21096 (seekKeyOrZeroReturnVacant!0 (x!6790 lt!12070) (index!2652 lt!12070) (index!2652 lt!12070) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!33220 () Bool)

(assert (=> b!33220 (= e!21096 (MissingZero!132 (index!2652 lt!12070)))))

(declare-fun b!33221 () Bool)

(declare-fun e!21097 () SeekEntryResult!132)

(assert (=> b!33221 (= e!21097 e!21095)))

(assert (=> b!33221 (= lt!12072 (select (arr!1072 _keys!1833) (index!2652 lt!12070)))))

(declare-fun c!3843 () Bool)

(assert (=> b!33221 (= c!3843 (= lt!12072 k0!1304))))

(declare-fun b!33222 () Bool)

(assert (=> b!33222 (= e!21097 Undefined!132)))

(declare-fun d!5149 () Bool)

(declare-fun lt!12071 () SeekEntryResult!132)

(assert (=> d!5149 (and (or ((_ is Undefined!132) lt!12071) (not ((_ is Found!132) lt!12071)) (and (bvsge (index!2651 lt!12071) #b00000000000000000000000000000000) (bvslt (index!2651 lt!12071) (size!1173 _keys!1833)))) (or ((_ is Undefined!132) lt!12071) ((_ is Found!132) lt!12071) (not ((_ is MissingZero!132) lt!12071)) (and (bvsge (index!2650 lt!12071) #b00000000000000000000000000000000) (bvslt (index!2650 lt!12071) (size!1173 _keys!1833)))) (or ((_ is Undefined!132) lt!12071) ((_ is Found!132) lt!12071) ((_ is MissingZero!132) lt!12071) (not ((_ is MissingVacant!132) lt!12071)) (and (bvsge (index!2653 lt!12071) #b00000000000000000000000000000000) (bvslt (index!2653 lt!12071) (size!1173 _keys!1833)))) (or ((_ is Undefined!132) lt!12071) (ite ((_ is Found!132) lt!12071) (= (select (arr!1072 _keys!1833) (index!2651 lt!12071)) k0!1304) (ite ((_ is MissingZero!132) lt!12071) (= (select (arr!1072 _keys!1833) (index!2650 lt!12071)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!132) lt!12071) (= (select (arr!1072 _keys!1833) (index!2653 lt!12071)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!5149 (= lt!12071 e!21097)))

(declare-fun c!3844 () Bool)

(assert (=> d!5149 (= c!3844 (and ((_ is Intermediate!132) lt!12070) (undefined!944 lt!12070)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2241 (_ BitVec 32)) SeekEntryResult!132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5149 (= lt!12070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5149 (validMask!0 mask!2294)))

(assert (=> d!5149 (= (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294) lt!12071)))

(assert (= (and d!5149 c!3844) b!33222))

(assert (= (and d!5149 (not c!3844)) b!33221))

(assert (= (and b!33221 c!3843) b!33218))

(assert (= (and b!33221 (not c!3843)) b!33217))

(assert (= (and b!33217 c!3842) b!33220))

(assert (= (and b!33217 (not c!3842)) b!33219))

(declare-fun m!26633 () Bool)

(assert (=> b!33219 m!26633))

(declare-fun m!26635 () Bool)

(assert (=> b!33221 m!26635))

(declare-fun m!26637 () Bool)

(assert (=> d!5149 m!26637))

(declare-fun m!26639 () Bool)

(assert (=> d!5149 m!26639))

(declare-fun m!26641 () Bool)

(assert (=> d!5149 m!26641))

(assert (=> d!5149 m!26637))

(declare-fun m!26643 () Bool)

(assert (=> d!5149 m!26643))

(assert (=> d!5149 m!26503))

(declare-fun m!26645 () Bool)

(assert (=> d!5149 m!26645))

(assert (=> b!33077 d!5149))

(declare-fun d!5151 () Bool)

(declare-fun e!21099 () Bool)

(assert (=> d!5151 e!21099))

(declare-fun res!20168 () Bool)

(assert (=> d!5151 (=> res!20168 e!21099)))

(declare-fun lt!12073 () Bool)

(assert (=> d!5151 (= res!20168 (not lt!12073))))

(declare-fun lt!12076 () Bool)

(assert (=> d!5151 (= lt!12073 lt!12076)))

(declare-fun lt!12075 () Unit!733)

(declare-fun e!21098 () Unit!733)

(assert (=> d!5151 (= lt!12075 e!21098)))

(declare-fun c!3845 () Bool)

(assert (=> d!5151 (= c!3845 lt!12076)))

(assert (=> d!5151 (= lt!12076 (containsKey!31 (toList!440 lt!11974) (select (arr!1072 _keys!1833) lt!11976)))))

(assert (=> d!5151 (= (contains!379 lt!11974 (select (arr!1072 _keys!1833) lt!11976)) lt!12073)))

(declare-fun b!33223 () Bool)

(declare-fun lt!12074 () Unit!733)

(assert (=> b!33223 (= e!21098 lt!12074)))

(assert (=> b!33223 (= lt!12074 (lemmaContainsKeyImpliesGetValueByKeyDefined!28 (toList!440 lt!11974) (select (arr!1072 _keys!1833) lt!11976)))))

(assert (=> b!33223 (isDefined!29 (getValueByKey!67 (toList!440 lt!11974) (select (arr!1072 _keys!1833) lt!11976)))))

(declare-fun b!33224 () Bool)

(declare-fun Unit!737 () Unit!733)

(assert (=> b!33224 (= e!21098 Unit!737)))

(declare-fun b!33225 () Bool)

(assert (=> b!33225 (= e!21099 (isDefined!29 (getValueByKey!67 (toList!440 lt!11974) (select (arr!1072 _keys!1833) lt!11976))))))

(assert (= (and d!5151 c!3845) b!33223))

(assert (= (and d!5151 (not c!3845)) b!33224))

(assert (= (and d!5151 (not res!20168)) b!33225))

(assert (=> d!5151 m!26523))

(declare-fun m!26647 () Bool)

(assert (=> d!5151 m!26647))

(assert (=> b!33223 m!26523))

(declare-fun m!26649 () Bool)

(assert (=> b!33223 m!26649))

(assert (=> b!33223 m!26523))

(declare-fun m!26651 () Bool)

(assert (=> b!33223 m!26651))

(assert (=> b!33223 m!26651))

(declare-fun m!26653 () Bool)

(assert (=> b!33223 m!26653))

(assert (=> b!33225 m!26523))

(assert (=> b!33225 m!26651))

(assert (=> b!33225 m!26651))

(assert (=> b!33225 m!26653))

(assert (=> b!33078 d!5151))

(declare-fun d!5153 () Bool)

(declare-fun e!21102 () Bool)

(assert (=> d!5153 e!21102))

(declare-fun res!20171 () Bool)

(assert (=> d!5153 (=> (not res!20171) (not e!21102))))

(assert (=> d!5153 (= res!20171 (and (bvsge lt!11976 #b00000000000000000000000000000000) (bvslt lt!11976 (size!1173 _keys!1833))))))

(declare-fun lt!12079 () Unit!733)

(declare-fun choose!219 (array!2241 array!2239 (_ BitVec 32) (_ BitVec 32) V!1845 V!1845 (_ BitVec 32) Int) Unit!733)

(assert (=> d!5153 (= lt!12079 (choose!219 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11976 defaultEntry!1504))))

(assert (=> d!5153 (validMask!0 mask!2294)))

(assert (=> d!5153 (= (lemmaValidKeyInArrayIsInListMap!54 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11976 defaultEntry!1504) lt!12079)))

(declare-fun b!33228 () Bool)

(assert (=> b!33228 (= e!21102 (contains!379 (getCurrentListMap!265 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) (select (arr!1072 _keys!1833) lt!11976)))))

(assert (= (and d!5153 res!20171) b!33228))

(declare-fun m!26655 () Bool)

(assert (=> d!5153 m!26655))

(assert (=> d!5153 m!26503))

(assert (=> b!33228 m!26517))

(assert (=> b!33228 m!26523))

(assert (=> b!33228 m!26517))

(assert (=> b!33228 m!26523))

(declare-fun m!26657 () Bool)

(assert (=> b!33228 m!26657))

(assert (=> b!33078 d!5153))

(declare-fun d!5155 () Bool)

(declare-fun lt!12082 () (_ BitVec 32))

(assert (=> d!5155 (and (or (bvslt lt!12082 #b00000000000000000000000000000000) (bvsge lt!12082 (size!1173 _keys!1833)) (and (bvsge lt!12082 #b00000000000000000000000000000000) (bvslt lt!12082 (size!1173 _keys!1833)))) (bvsge lt!12082 #b00000000000000000000000000000000) (bvslt lt!12082 (size!1173 _keys!1833)) (= (select (arr!1072 _keys!1833) lt!12082) k0!1304))))

(declare-fun e!21105 () (_ BitVec 32))

(assert (=> d!5155 (= lt!12082 e!21105)))

(declare-fun c!3848 () Bool)

(assert (=> d!5155 (= c!3848 (= (select (arr!1072 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5155 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1173 _keys!1833)) (bvslt (size!1173 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5155 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!12082)))

(declare-fun b!33233 () Bool)

(assert (=> b!33233 (= e!21105 #b00000000000000000000000000000000)))

(declare-fun b!33234 () Bool)

(assert (=> b!33234 (= e!21105 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5155 c!3848) b!33233))

(assert (= (and d!5155 (not c!3848)) b!33234))

(declare-fun m!26659 () Bool)

(assert (=> d!5155 m!26659))

(assert (=> d!5155 m!26563))

(declare-fun m!26661 () Bool)

(assert (=> b!33234 m!26661))

(assert (=> b!33078 d!5155))

(declare-fun b!33243 () Bool)

(declare-fun e!21112 () Bool)

(declare-fun call!2669 () Bool)

(assert (=> b!33243 (= e!21112 call!2669)))

(declare-fun b!33244 () Bool)

(declare-fun e!21113 () Bool)

(assert (=> b!33244 (= e!21113 e!21112)))

(declare-fun lt!12090 () (_ BitVec 64))

(assert (=> b!33244 (= lt!12090 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12091 () Unit!733)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2241 (_ BitVec 64) (_ BitVec 32)) Unit!733)

(assert (=> b!33244 (= lt!12091 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12090 #b00000000000000000000000000000000))))

(assert (=> b!33244 (arrayContainsKey!0 _keys!1833 lt!12090 #b00000000000000000000000000000000)))

(declare-fun lt!12089 () Unit!733)

(assert (=> b!33244 (= lt!12089 lt!12091)))

(declare-fun res!20176 () Bool)

(assert (=> b!33244 (= res!20176 (= (seekEntryOrOpen!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!132 #b00000000000000000000000000000000)))))

(assert (=> b!33244 (=> (not res!20176) (not e!21112))))

(declare-fun bm!2666 () Bool)

(assert (=> bm!2666 (= call!2669 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun d!5157 () Bool)

(declare-fun res!20177 () Bool)

(declare-fun e!21114 () Bool)

(assert (=> d!5157 (=> res!20177 e!21114)))

(assert (=> d!5157 (= res!20177 (bvsge #b00000000000000000000000000000000 (size!1173 _keys!1833)))))

(assert (=> d!5157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!21114)))

(declare-fun b!33245 () Bool)

(assert (=> b!33245 (= e!21113 call!2669)))

(declare-fun b!33246 () Bool)

(assert (=> b!33246 (= e!21114 e!21113)))

(declare-fun c!3851 () Bool)

(assert (=> b!33246 (= c!3851 (validKeyInArray!0 (select (arr!1072 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5157 (not res!20177)) b!33246))

(assert (= (and b!33246 c!3851) b!33244))

(assert (= (and b!33246 (not c!3851)) b!33245))

(assert (= (and b!33244 res!20176) b!33243))

(assert (= (or b!33243 b!33245) bm!2666))

(assert (=> b!33244 m!26563))

(declare-fun m!26663 () Bool)

(assert (=> b!33244 m!26663))

(declare-fun m!26665 () Bool)

(assert (=> b!33244 m!26665))

(assert (=> b!33244 m!26563))

(declare-fun m!26667 () Bool)

(assert (=> b!33244 m!26667))

(declare-fun m!26669 () Bool)

(assert (=> bm!2666 m!26669))

(assert (=> b!33246 m!26563))

(assert (=> b!33246 m!26563))

(assert (=> b!33246 m!26565))

(assert (=> b!33079 d!5157))

(declare-fun d!5159 () Bool)

(declare-fun res!20182 () Bool)

(declare-fun e!21119 () Bool)

(assert (=> d!5159 (=> res!20182 e!21119)))

(assert (=> d!5159 (= res!20182 (= (select (arr!1072 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5159 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!21119)))

(declare-fun b!33251 () Bool)

(declare-fun e!21120 () Bool)

(assert (=> b!33251 (= e!21119 e!21120)))

(declare-fun res!20183 () Bool)

(assert (=> b!33251 (=> (not res!20183) (not e!21120))))

(assert (=> b!33251 (= res!20183 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1173 _keys!1833)))))

(declare-fun b!33252 () Bool)

(assert (=> b!33252 (= e!21120 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5159 (not res!20182)) b!33251))

(assert (= (and b!33251 res!20183) b!33252))

(assert (=> d!5159 m!26563))

(declare-fun m!26671 () Bool)

(assert (=> b!33252 m!26671))

(assert (=> b!33075 d!5159))

(declare-fun condMapEmpty!1813 () Bool)

(declare-fun mapDefault!1813 () ValueCell!558)

(assert (=> mapNonEmpty!1807 (= condMapEmpty!1813 (= mapRest!1807 ((as const (Array (_ BitVec 32) ValueCell!558)) mapDefault!1813)))))

(declare-fun e!21126 () Bool)

(declare-fun mapRes!1813 () Bool)

(assert (=> mapNonEmpty!1807 (= tp!4908 (and e!21126 mapRes!1813))))

(declare-fun b!33259 () Bool)

(declare-fun e!21125 () Bool)

(assert (=> b!33259 (= e!21125 tp_is_empty!1515)))

(declare-fun b!33260 () Bool)

(assert (=> b!33260 (= e!21126 tp_is_empty!1515)))

(declare-fun mapIsEmpty!1813 () Bool)

(assert (=> mapIsEmpty!1813 mapRes!1813))

(declare-fun mapNonEmpty!1813 () Bool)

(declare-fun tp!4918 () Bool)

(assert (=> mapNonEmpty!1813 (= mapRes!1813 (and tp!4918 e!21125))))

(declare-fun mapValue!1813 () ValueCell!558)

(declare-fun mapKey!1813 () (_ BitVec 32))

(declare-fun mapRest!1813 () (Array (_ BitVec 32) ValueCell!558))

(assert (=> mapNonEmpty!1813 (= mapRest!1807 (store mapRest!1813 mapKey!1813 mapValue!1813))))

(assert (= (and mapNonEmpty!1807 condMapEmpty!1813) mapIsEmpty!1813))

(assert (= (and mapNonEmpty!1807 (not condMapEmpty!1813)) mapNonEmpty!1813))

(assert (= (and mapNonEmpty!1813 ((_ is ValueCellFull!558) mapValue!1813)) b!33259))

(assert (= (and mapNonEmpty!1807 ((_ is ValueCellFull!558) mapDefault!1813)) b!33260))

(declare-fun m!26673 () Bool)

(assert (=> mapNonEmpty!1813 m!26673))

(declare-fun b_lambda!1709 () Bool)

(assert (= b_lambda!1707 (or (and start!4294 b_free!1161) b_lambda!1709)))

(check-sat (not b!33184) (not d!5151) (not b!33188) (not b!33244) (not bm!2666) (not b!33126) (not bm!2657) (not mapNonEmpty!1813) (not bm!2659) (not b!33219) (not bm!2658) (not d!5147) (not b!33200) (not b!33191) (not b!33201) tp_is_empty!1515 (not d!5153) (not b!33228) (not b!33223) (not bm!2642) (not b!33186) b_and!1981 (not b_next!1161) (not d!5149) (not b!33234) (not b!33139) (not bm!2661) (not d!5145) (not b!33189) (not b!33252) (not b!33137) (not b_lambda!1709) (not b!33130) (not b!33246) (not b!33198) (not b!33129) (not b!33225))
(check-sat b_and!1981 (not b_next!1161))
