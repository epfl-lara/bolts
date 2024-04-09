; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!988 () Bool)

(assert start!988)

(declare-fun b_free!339 () Bool)

(declare-fun b_next!339 () Bool)

(assert (=> start!988 (= b_free!339 (not b_next!339))))

(declare-fun tp!1253 () Bool)

(declare-fun b_and!489 () Bool)

(assert (=> start!988 (= tp!1253 b_and!489)))

(declare-fun b!8492 () Bool)

(declare-fun e!4832 () Bool)

(declare-fun tp_is_empty!417 () Bool)

(assert (=> b!8492 (= e!4832 tp_is_empty!417)))

(declare-fun mapIsEmpty!602 () Bool)

(declare-fun mapRes!602 () Bool)

(assert (=> mapIsEmpty!602 mapRes!602))

(declare-fun b!8493 () Bool)

(declare-fun res!7991 () Bool)

(declare-fun e!4829 () Bool)

(assert (=> b!8493 (=> (not res!7991) (not e!4829))))

(declare-datatypes ((array!757 0))(
  ( (array!758 (arr!365 (Array (_ BitVec 32) (_ BitVec 64))) (size!427 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!757)

(declare-datatypes ((List!250 0))(
  ( (Nil!247) (Cons!246 (h!812 (_ BitVec 64)) (t!2389 List!250)) )
))
(declare-fun arrayNoDuplicates!0 (array!757 (_ BitVec 32) List!250) Bool)

(assert (=> b!8493 (= res!7991 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!247))))

(declare-fun b!8494 () Bool)

(declare-fun e!4828 () Bool)

(assert (=> b!8494 (= e!4828 tp_is_empty!417)))

(declare-fun b!8495 () Bool)

(declare-fun res!7994 () Bool)

(assert (=> b!8495 (=> (not res!7994) (not e!4829))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8495 (= res!7994 (validKeyInArray!0 k0!1278))))

(declare-fun res!7996 () Bool)

(assert (=> start!988 (=> (not res!7996) (not e!4829))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!988 (= res!7996 (validMask!0 mask!2250))))

(assert (=> start!988 e!4829))

(assert (=> start!988 tp!1253))

(assert (=> start!988 true))

(declare-datatypes ((V!733 0))(
  ( (V!734 (val!214 Int)) )
))
(declare-datatypes ((ValueCell!192 0))(
  ( (ValueCellFull!192 (v!1307 V!733)) (EmptyCell!192) )
))
(declare-datatypes ((array!759 0))(
  ( (array!760 (arr!366 (Array (_ BitVec 32) ValueCell!192)) (size!428 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!759)

(declare-fun e!4830 () Bool)

(declare-fun array_inv!267 (array!759) Bool)

(assert (=> start!988 (and (array_inv!267 _values!1492) e!4830)))

(assert (=> start!988 tp_is_empty!417))

(declare-fun array_inv!268 (array!757) Bool)

(assert (=> start!988 (array_inv!268 _keys!1806)))

(declare-fun b!8496 () Bool)

(declare-fun res!7990 () Bool)

(assert (=> b!8496 (=> (not res!7990) (not e!4829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!757 (_ BitVec 32)) Bool)

(assert (=> b!8496 (= res!7990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun e!4831 () Bool)

(declare-fun b!8497 () Bool)

(declare-fun lt!1772 () (_ BitVec 32))

(assert (=> b!8497 (= e!4831 (or (not (= (size!427 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsgt #b00000000000000000000000000000000 (size!427 _keys!1806)) (and (bvsge lt!1772 #b00000000000000000000000000000000) (bvsle lt!1772 (size!427 _keys!1806)))))))

(declare-fun arrayScanForKey!0 (array!757 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8497 (= lt!1772 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!602 () Bool)

(declare-fun tp!1252 () Bool)

(assert (=> mapNonEmpty!602 (= mapRes!602 (and tp!1252 e!4832))))

(declare-fun mapValue!602 () ValueCell!192)

(declare-fun mapRest!602 () (Array (_ BitVec 32) ValueCell!192))

(declare-fun mapKey!602 () (_ BitVec 32))

(assert (=> mapNonEmpty!602 (= (arr!366 _values!1492) (store mapRest!602 mapKey!602 mapValue!602))))

(declare-fun b!8498 () Bool)

(declare-fun res!7995 () Bool)

(assert (=> b!8498 (=> (not res!7995) (not e!4829))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!733)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!733)

(declare-datatypes ((tuple2!226 0))(
  ( (tuple2!227 (_1!113 (_ BitVec 64)) (_2!113 V!733)) )
))
(declare-datatypes ((List!251 0))(
  ( (Nil!248) (Cons!247 (h!813 tuple2!226) (t!2390 List!251)) )
))
(declare-datatypes ((ListLongMap!231 0))(
  ( (ListLongMap!232 (toList!131 List!251)) )
))
(declare-fun contains!107 (ListLongMap!231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!90 (array!757 array!759 (_ BitVec 32) (_ BitVec 32) V!733 V!733 (_ BitVec 32) Int) ListLongMap!231)

(assert (=> b!8498 (= res!7995 (contains!107 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8499 () Bool)

(assert (=> b!8499 (= e!4829 (not e!4831))))

(declare-fun res!7992 () Bool)

(assert (=> b!8499 (=> res!7992 e!4831)))

(declare-fun arrayContainsKey!0 (array!757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8499 (= res!7992 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!4826 () Bool)

(assert (=> b!8499 e!4826))

(declare-fun c!623 () Bool)

(assert (=> b!8499 (= c!623 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!159 0))(
  ( (Unit!160) )
))
(declare-fun lt!1773 () Unit!159)

(declare-fun lemmaKeyInListMapIsInArray!59 (array!757 array!759 (_ BitVec 32) (_ BitVec 32) V!733 V!733 (_ BitVec 64) Int) Unit!159)

(assert (=> b!8499 (= lt!1773 (lemmaKeyInListMapIsInArray!59 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!8500 () Bool)

(assert (=> b!8500 (= e!4826 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8501 () Bool)

(assert (=> b!8501 (= e!4826 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8502 () Bool)

(declare-fun res!7993 () Bool)

(assert (=> b!8502 (=> (not res!7993) (not e!4829))))

(assert (=> b!8502 (= res!7993 (and (= (size!428 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!427 _keys!1806) (size!428 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8503 () Bool)

(assert (=> b!8503 (= e!4830 (and e!4828 mapRes!602))))

(declare-fun condMapEmpty!602 () Bool)

(declare-fun mapDefault!602 () ValueCell!192)

(assert (=> b!8503 (= condMapEmpty!602 (= (arr!366 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!192)) mapDefault!602)))))

(assert (= (and start!988 res!7996) b!8502))

(assert (= (and b!8502 res!7993) b!8496))

(assert (= (and b!8496 res!7990) b!8493))

(assert (= (and b!8493 res!7991) b!8498))

(assert (= (and b!8498 res!7995) b!8495))

(assert (= (and b!8495 res!7994) b!8499))

(assert (= (and b!8499 c!623) b!8500))

(assert (= (and b!8499 (not c!623)) b!8501))

(assert (= (and b!8499 (not res!7992)) b!8497))

(assert (= (and b!8503 condMapEmpty!602) mapIsEmpty!602))

(assert (= (and b!8503 (not condMapEmpty!602)) mapNonEmpty!602))

(get-info :version)

(assert (= (and mapNonEmpty!602 ((_ is ValueCellFull!192) mapValue!602)) b!8492))

(assert (= (and b!8503 ((_ is ValueCellFull!192) mapDefault!602)) b!8494))

(assert (= start!988 b!8503))

(declare-fun m!5229 () Bool)

(assert (=> b!8495 m!5229))

(declare-fun m!5231 () Bool)

(assert (=> b!8497 m!5231))

(declare-fun m!5233 () Bool)

(assert (=> b!8493 m!5233))

(declare-fun m!5235 () Bool)

(assert (=> mapNonEmpty!602 m!5235))

(declare-fun m!5237 () Bool)

(assert (=> b!8496 m!5237))

(declare-fun m!5239 () Bool)

(assert (=> b!8498 m!5239))

(assert (=> b!8498 m!5239))

(declare-fun m!5241 () Bool)

(assert (=> b!8498 m!5241))

(declare-fun m!5243 () Bool)

(assert (=> b!8499 m!5243))

(declare-fun m!5245 () Bool)

(assert (=> b!8499 m!5245))

(assert (=> b!8500 m!5243))

(declare-fun m!5247 () Bool)

(assert (=> start!988 m!5247))

(declare-fun m!5249 () Bool)

(assert (=> start!988 m!5249))

(declare-fun m!5251 () Bool)

(assert (=> start!988 m!5251))

(check-sat (not b!8496) (not b!8495) (not start!988) (not b_next!339) b_and!489 (not b!8493) (not b!8498) (not b!8499) tp_is_empty!417 (not mapNonEmpty!602) (not b!8500) (not b!8497))
(check-sat b_and!489 (not b_next!339))
(get-model)

(declare-fun b!8550 () Bool)

(declare-fun e!4865 () Bool)

(declare-fun e!4862 () Bool)

(assert (=> b!8550 (= e!4865 e!4862)))

(declare-fun res!8026 () Bool)

(assert (=> b!8550 (=> (not res!8026) (not e!4862))))

(declare-fun e!4863 () Bool)

(assert (=> b!8550 (= res!8026 (not e!4863))))

(declare-fun res!8024 () Bool)

(assert (=> b!8550 (=> (not res!8024) (not e!4863))))

(assert (=> b!8550 (= res!8024 (validKeyInArray!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8551 () Bool)

(declare-fun e!4864 () Bool)

(assert (=> b!8551 (= e!4862 e!4864)))

(declare-fun c!629 () Bool)

(assert (=> b!8551 (= c!629 (validKeyInArray!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!209 () Bool)

(declare-fun call!212 () Bool)

(assert (=> bm!209 (= call!212 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!629 (Cons!246 (select (arr!365 _keys!1806) #b00000000000000000000000000000000) Nil!247) Nil!247)))))

(declare-fun b!8552 () Bool)

(assert (=> b!8552 (= e!4864 call!212)))

(declare-fun b!8554 () Bool)

(declare-fun contains!108 (List!250 (_ BitVec 64)) Bool)

(assert (=> b!8554 (= e!4863 (contains!108 Nil!247 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!861 () Bool)

(declare-fun res!8025 () Bool)

(assert (=> d!861 (=> res!8025 e!4865)))

(assert (=> d!861 (= res!8025 (bvsge #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(assert (=> d!861 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!247) e!4865)))

(declare-fun b!8553 () Bool)

(assert (=> b!8553 (= e!4864 call!212)))

(assert (= (and d!861 (not res!8025)) b!8550))

(assert (= (and b!8550 res!8024) b!8554))

(assert (= (and b!8550 res!8026) b!8551))

(assert (= (and b!8551 c!629) b!8553))

(assert (= (and b!8551 (not c!629)) b!8552))

(assert (= (or b!8553 b!8552) bm!209))

(declare-fun m!5277 () Bool)

(assert (=> b!8550 m!5277))

(assert (=> b!8550 m!5277))

(declare-fun m!5279 () Bool)

(assert (=> b!8550 m!5279))

(assert (=> b!8551 m!5277))

(assert (=> b!8551 m!5277))

(assert (=> b!8551 m!5279))

(assert (=> bm!209 m!5277))

(declare-fun m!5281 () Bool)

(assert (=> bm!209 m!5281))

(assert (=> b!8554 m!5277))

(assert (=> b!8554 m!5277))

(declare-fun m!5283 () Bool)

(assert (=> b!8554 m!5283))

(assert (=> b!8493 d!861))

(declare-fun d!863 () Bool)

(declare-fun e!4871 () Bool)

(assert (=> d!863 e!4871))

(declare-fun res!8029 () Bool)

(assert (=> d!863 (=> res!8029 e!4871)))

(declare-fun lt!1791 () Bool)

(assert (=> d!863 (= res!8029 (not lt!1791))))

(declare-fun lt!1790 () Bool)

(assert (=> d!863 (= lt!1791 lt!1790)))

(declare-fun lt!1788 () Unit!159)

(declare-fun e!4870 () Unit!159)

(assert (=> d!863 (= lt!1788 e!4870)))

(declare-fun c!632 () Bool)

(assert (=> d!863 (= c!632 lt!1790)))

(declare-fun containsKey!7 (List!251 (_ BitVec 64)) Bool)

(assert (=> d!863 (= lt!1790 (containsKey!7 (toList!131 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!863 (= (contains!107 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!1791)))

(declare-fun b!8561 () Bool)

(declare-fun lt!1789 () Unit!159)

(assert (=> b!8561 (= e!4870 lt!1789)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!7 (List!251 (_ BitVec 64)) Unit!159)

(assert (=> b!8561 (= lt!1789 (lemmaContainsKeyImpliesGetValueByKeyDefined!7 (toList!131 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!19 0))(
  ( (Some!18 (v!1309 V!733)) (None!17) )
))
(declare-fun isDefined!8 (Option!19) Bool)

(declare-fun getValueByKey!13 (List!251 (_ BitVec 64)) Option!19)

(assert (=> b!8561 (isDefined!8 (getValueByKey!13 (toList!131 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!8562 () Bool)

(declare-fun Unit!161 () Unit!159)

(assert (=> b!8562 (= e!4870 Unit!161)))

(declare-fun b!8563 () Bool)

(assert (=> b!8563 (= e!4871 (isDefined!8 (getValueByKey!13 (toList!131 (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!863 c!632) b!8561))

(assert (= (and d!863 (not c!632)) b!8562))

(assert (= (and d!863 (not res!8029)) b!8563))

(declare-fun m!5285 () Bool)

(assert (=> d!863 m!5285))

(declare-fun m!5287 () Bool)

(assert (=> b!8561 m!5287))

(declare-fun m!5289 () Bool)

(assert (=> b!8561 m!5289))

(assert (=> b!8561 m!5289))

(declare-fun m!5291 () Bool)

(assert (=> b!8561 m!5291))

(assert (=> b!8563 m!5289))

(assert (=> b!8563 m!5289))

(assert (=> b!8563 m!5291))

(assert (=> b!8498 d!863))

(declare-fun b!8606 () Bool)

(declare-fun res!8054 () Bool)

(declare-fun e!4910 () Bool)

(assert (=> b!8606 (=> (not res!8054) (not e!4910))))

(declare-fun e!4906 () Bool)

(assert (=> b!8606 (= res!8054 e!4906)))

(declare-fun c!647 () Bool)

(assert (=> b!8606 (= c!647 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!224 () Bool)

(declare-fun call!229 () ListLongMap!231)

(declare-fun call!232 () ListLongMap!231)

(assert (=> bm!224 (= call!229 call!232)))

(declare-fun bm!225 () Bool)

(declare-fun call!233 () Bool)

(declare-fun lt!1843 () ListLongMap!231)

(assert (=> bm!225 (= call!233 (contains!107 lt!1843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!8607 () Bool)

(declare-fun e!4900 () ListLongMap!231)

(declare-fun e!4902 () ListLongMap!231)

(assert (=> b!8607 (= e!4900 e!4902)))

(declare-fun c!646 () Bool)

(assert (=> b!8607 (= c!646 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!226 () Bool)

(declare-fun call!228 () ListLongMap!231)

(assert (=> bm!226 (= call!228 call!229)))

(declare-fun bm!227 () Bool)

(declare-fun call!230 () Bool)

(assert (=> bm!227 (= call!230 (contains!107 lt!1843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!8608 () Bool)

(declare-fun e!4905 () Unit!159)

(declare-fun Unit!162 () Unit!159)

(assert (=> b!8608 (= e!4905 Unit!162)))

(declare-fun b!8609 () Bool)

(declare-fun e!4904 () ListLongMap!231)

(assert (=> b!8609 (= e!4904 call!228)))

(declare-fun d!865 () Bool)

(assert (=> d!865 e!4910))

(declare-fun res!8051 () Bool)

(assert (=> d!865 (=> (not res!8051) (not e!4910))))

(assert (=> d!865 (= res!8051 (or (bvsge #b00000000000000000000000000000000 (size!427 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)))))))

(declare-fun lt!1844 () ListLongMap!231)

(assert (=> d!865 (= lt!1843 lt!1844)))

(declare-fun lt!1857 () Unit!159)

(assert (=> d!865 (= lt!1857 e!4905)))

(declare-fun c!650 () Bool)

(declare-fun e!4909 () Bool)

(assert (=> d!865 (= c!650 e!4909)))

(declare-fun res!8052 () Bool)

(assert (=> d!865 (=> (not res!8052) (not e!4909))))

(assert (=> d!865 (= res!8052 (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(assert (=> d!865 (= lt!1844 e!4900)))

(declare-fun c!649 () Bool)

(assert (=> d!865 (= c!649 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!865 (validMask!0 mask!2250)))

(assert (=> d!865 (= (getCurrentListMap!90 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!1843)))

(declare-fun b!8610 () Bool)

(declare-fun e!4907 () Bool)

(declare-fun apply!23 (ListLongMap!231 (_ BitVec 64)) V!733)

(assert (=> b!8610 (= e!4907 (= (apply!23 lt!1843 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun bm!228 () Bool)

(declare-fun call!231 () ListLongMap!231)

(declare-fun call!227 () ListLongMap!231)

(assert (=> bm!228 (= call!231 call!227)))

(declare-fun e!4903 () Bool)

(declare-fun b!8611 () Bool)

(declare-fun get!163 (ValueCell!192 V!733) V!733)

(declare-fun dynLambda!45 (Int (_ BitVec 64)) V!733)

(assert (=> b!8611 (= e!4903 (= (apply!23 lt!1843 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)) (get!163 (select (arr!366 _values!1492) #b00000000000000000000000000000000) (dynLambda!45 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!8611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!428 _values!1492)))))

(assert (=> b!8611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(declare-fun b!8612 () Bool)

(assert (=> b!8612 (= e!4909 (validKeyInArray!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8613 () Bool)

(declare-fun e!4899 () Bool)

(assert (=> b!8613 (= e!4899 e!4903)))

(declare-fun res!8050 () Bool)

(assert (=> b!8613 (=> (not res!8050) (not e!4903))))

(assert (=> b!8613 (= res!8050 (contains!107 lt!1843 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!8613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(declare-fun b!8614 () Bool)

(declare-fun e!4898 () Bool)

(assert (=> b!8614 (= e!4898 (not call!233))))

(declare-fun b!8615 () Bool)

(assert (=> b!8615 (= e!4906 (not call!230))))

(declare-fun b!8616 () Bool)

(declare-fun c!645 () Bool)

(assert (=> b!8616 (= c!645 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!8616 (= e!4902 e!4904)))

(declare-fun b!8617 () Bool)

(assert (=> b!8617 (= e!4902 call!231)))

(declare-fun bm!229 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!7 (array!757 array!759 (_ BitVec 32) (_ BitVec 32) V!733 V!733 (_ BitVec 32) Int) ListLongMap!231)

(assert (=> bm!229 (= call!232 (getCurrentListMapNoExtraKeys!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!8618 () Bool)

(assert (=> b!8618 (= e!4904 call!231)))

(declare-fun b!8619 () Bool)

(declare-fun res!8048 () Bool)

(assert (=> b!8619 (=> (not res!8048) (not e!4910))))

(assert (=> b!8619 (= res!8048 e!4899)))

(declare-fun res!8056 () Bool)

(assert (=> b!8619 (=> res!8056 e!4899)))

(declare-fun e!4901 () Bool)

(assert (=> b!8619 (= res!8056 (not e!4901))))

(declare-fun res!8053 () Bool)

(assert (=> b!8619 (=> (not res!8053) (not e!4901))))

(assert (=> b!8619 (= res!8053 (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(declare-fun b!8620 () Bool)

(declare-fun e!4908 () Bool)

(assert (=> b!8620 (= e!4906 e!4908)))

(declare-fun res!8049 () Bool)

(assert (=> b!8620 (= res!8049 call!230)))

(assert (=> b!8620 (=> (not res!8049) (not e!4908))))

(declare-fun b!8621 () Bool)

(assert (=> b!8621 (= e!4901 (validKeyInArray!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8622 () Bool)

(declare-fun +!10 (ListLongMap!231 tuple2!226) ListLongMap!231)

(assert (=> b!8622 (= e!4900 (+!10 call!227 (tuple2!227 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!8623 () Bool)

(assert (=> b!8623 (= e!4898 e!4907)))

(declare-fun res!8055 () Bool)

(assert (=> b!8623 (= res!8055 call!233)))

(assert (=> b!8623 (=> (not res!8055) (not e!4907))))

(declare-fun b!8624 () Bool)

(assert (=> b!8624 (= e!4910 e!4898)))

(declare-fun c!648 () Bool)

(assert (=> b!8624 (= c!648 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!8625 () Bool)

(assert (=> b!8625 (= e!4908 (= (apply!23 lt!1843 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun bm!230 () Bool)

(assert (=> bm!230 (= call!227 (+!10 (ite c!649 call!232 (ite c!646 call!229 call!228)) (ite (or c!649 c!646) (tuple2!227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!227 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!8626 () Bool)

(declare-fun lt!1854 () Unit!159)

(assert (=> b!8626 (= e!4905 lt!1854)))

(declare-fun lt!1853 () ListLongMap!231)

(assert (=> b!8626 (= lt!1853 (getCurrentListMapNoExtraKeys!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1836 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1836 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1845 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1845 (select (arr!365 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1838 () Unit!159)

(declare-fun addStillContains!8 (ListLongMap!231 (_ BitVec 64) V!733 (_ BitVec 64)) Unit!159)

(assert (=> b!8626 (= lt!1838 (addStillContains!8 lt!1853 lt!1836 zeroValue!1434 lt!1845))))

(assert (=> b!8626 (contains!107 (+!10 lt!1853 (tuple2!227 lt!1836 zeroValue!1434)) lt!1845)))

(declare-fun lt!1847 () Unit!159)

(assert (=> b!8626 (= lt!1847 lt!1838)))

(declare-fun lt!1856 () ListLongMap!231)

(assert (=> b!8626 (= lt!1856 (getCurrentListMapNoExtraKeys!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1840 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1840 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1850 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1850 (select (arr!365 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1839 () Unit!159)

(declare-fun addApplyDifferent!8 (ListLongMap!231 (_ BitVec 64) V!733 (_ BitVec 64)) Unit!159)

(assert (=> b!8626 (= lt!1839 (addApplyDifferent!8 lt!1856 lt!1840 minValue!1434 lt!1850))))

(assert (=> b!8626 (= (apply!23 (+!10 lt!1856 (tuple2!227 lt!1840 minValue!1434)) lt!1850) (apply!23 lt!1856 lt!1850))))

(declare-fun lt!1846 () Unit!159)

(assert (=> b!8626 (= lt!1846 lt!1839)))

(declare-fun lt!1855 () ListLongMap!231)

(assert (=> b!8626 (= lt!1855 (getCurrentListMapNoExtraKeys!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1852 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1842 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1842 (select (arr!365 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1848 () Unit!159)

(assert (=> b!8626 (= lt!1848 (addApplyDifferent!8 lt!1855 lt!1852 zeroValue!1434 lt!1842))))

(assert (=> b!8626 (= (apply!23 (+!10 lt!1855 (tuple2!227 lt!1852 zeroValue!1434)) lt!1842) (apply!23 lt!1855 lt!1842))))

(declare-fun lt!1841 () Unit!159)

(assert (=> b!8626 (= lt!1841 lt!1848)))

(declare-fun lt!1837 () ListLongMap!231)

(assert (=> b!8626 (= lt!1837 (getCurrentListMapNoExtraKeys!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1851 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1851 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1849 () (_ BitVec 64))

(assert (=> b!8626 (= lt!1849 (select (arr!365 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!8626 (= lt!1854 (addApplyDifferent!8 lt!1837 lt!1851 minValue!1434 lt!1849))))

(assert (=> b!8626 (= (apply!23 (+!10 lt!1837 (tuple2!227 lt!1851 minValue!1434)) lt!1849) (apply!23 lt!1837 lt!1849))))

(assert (= (and d!865 c!649) b!8622))

(assert (= (and d!865 (not c!649)) b!8607))

(assert (= (and b!8607 c!646) b!8617))

(assert (= (and b!8607 (not c!646)) b!8616))

(assert (= (and b!8616 c!645) b!8618))

(assert (= (and b!8616 (not c!645)) b!8609))

(assert (= (or b!8618 b!8609) bm!226))

(assert (= (or b!8617 bm!226) bm!224))

(assert (= (or b!8617 b!8618) bm!228))

(assert (= (or b!8622 bm!224) bm!229))

(assert (= (or b!8622 bm!228) bm!230))

(assert (= (and d!865 res!8052) b!8612))

(assert (= (and d!865 c!650) b!8626))

(assert (= (and d!865 (not c!650)) b!8608))

(assert (= (and d!865 res!8051) b!8619))

(assert (= (and b!8619 res!8053) b!8621))

(assert (= (and b!8619 (not res!8056)) b!8613))

(assert (= (and b!8613 res!8050) b!8611))

(assert (= (and b!8619 res!8048) b!8606))

(assert (= (and b!8606 c!647) b!8620))

(assert (= (and b!8606 (not c!647)) b!8615))

(assert (= (and b!8620 res!8049) b!8625))

(assert (= (or b!8620 b!8615) bm!227))

(assert (= (and b!8606 res!8054) b!8624))

(assert (= (and b!8624 c!648) b!8623))

(assert (= (and b!8624 (not c!648)) b!8614))

(assert (= (and b!8623 res!8055) b!8610))

(assert (= (or b!8623 b!8614) bm!225))

(declare-fun b_lambda!343 () Bool)

(assert (=> (not b_lambda!343) (not b!8611)))

(declare-fun t!2392 () Bool)

(declare-fun tb!139 () Bool)

(assert (=> (and start!988 (= defaultEntry!1495 defaultEntry!1495) t!2392) tb!139))

(declare-fun result!219 () Bool)

(assert (=> tb!139 (= result!219 tp_is_empty!417)))

(assert (=> b!8611 t!2392))

(declare-fun b_and!493 () Bool)

(assert (= b_and!489 (and (=> t!2392 result!219) b_and!493)))

(declare-fun m!5293 () Bool)

(assert (=> bm!225 m!5293))

(assert (=> b!8621 m!5277))

(assert (=> b!8621 m!5277))

(assert (=> b!8621 m!5279))

(declare-fun m!5295 () Bool)

(assert (=> b!8625 m!5295))

(assert (=> b!8626 m!5277))

(declare-fun m!5297 () Bool)

(assert (=> b!8626 m!5297))

(declare-fun m!5299 () Bool)

(assert (=> b!8626 m!5299))

(declare-fun m!5301 () Bool)

(assert (=> b!8626 m!5301))

(declare-fun m!5303 () Bool)

(assert (=> b!8626 m!5303))

(declare-fun m!5305 () Bool)

(assert (=> b!8626 m!5305))

(declare-fun m!5307 () Bool)

(assert (=> b!8626 m!5307))

(declare-fun m!5309 () Bool)

(assert (=> b!8626 m!5309))

(declare-fun m!5311 () Bool)

(assert (=> b!8626 m!5311))

(declare-fun m!5313 () Bool)

(assert (=> b!8626 m!5313))

(declare-fun m!5315 () Bool)

(assert (=> b!8626 m!5315))

(assert (=> b!8626 m!5301))

(declare-fun m!5317 () Bool)

(assert (=> b!8626 m!5317))

(declare-fun m!5319 () Bool)

(assert (=> b!8626 m!5319))

(declare-fun m!5321 () Bool)

(assert (=> b!8626 m!5321))

(declare-fun m!5323 () Bool)

(assert (=> b!8626 m!5323))

(assert (=> b!8626 m!5307))

(assert (=> b!8626 m!5313))

(declare-fun m!5325 () Bool)

(assert (=> b!8626 m!5325))

(declare-fun m!5327 () Bool)

(assert (=> b!8626 m!5327))

(assert (=> b!8626 m!5319))

(assert (=> b!8611 m!5277))

(assert (=> b!8611 m!5277))

(declare-fun m!5329 () Bool)

(assert (=> b!8611 m!5329))

(declare-fun m!5331 () Bool)

(assert (=> b!8611 m!5331))

(declare-fun m!5333 () Bool)

(assert (=> b!8611 m!5333))

(declare-fun m!5335 () Bool)

(assert (=> b!8611 m!5335))

(assert (=> b!8611 m!5331))

(assert (=> b!8611 m!5333))

(assert (=> b!8612 m!5277))

(assert (=> b!8612 m!5277))

(assert (=> b!8612 m!5279))

(declare-fun m!5337 () Bool)

(assert (=> bm!227 m!5337))

(assert (=> b!8613 m!5277))

(assert (=> b!8613 m!5277))

(declare-fun m!5339 () Bool)

(assert (=> b!8613 m!5339))

(declare-fun m!5341 () Bool)

(assert (=> bm!230 m!5341))

(declare-fun m!5343 () Bool)

(assert (=> b!8622 m!5343))

(assert (=> bm!229 m!5297))

(assert (=> d!865 m!5247))

(declare-fun m!5345 () Bool)

(assert (=> b!8610 m!5345))

(assert (=> b!8498 d!865))

(declare-fun d!867 () Bool)

(declare-fun res!8061 () Bool)

(declare-fun e!4915 () Bool)

(assert (=> d!867 (=> res!8061 e!4915)))

(assert (=> d!867 (= res!8061 (= (select (arr!365 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!867 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!4915)))

(declare-fun b!8633 () Bool)

(declare-fun e!4916 () Bool)

(assert (=> b!8633 (= e!4915 e!4916)))

(declare-fun res!8062 () Bool)

(assert (=> b!8633 (=> (not res!8062) (not e!4916))))

(assert (=> b!8633 (= res!8062 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!427 _keys!1806)))))

(declare-fun b!8634 () Bool)

(assert (=> b!8634 (= e!4916 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!867 (not res!8061)) b!8633))

(assert (= (and b!8633 res!8062) b!8634))

(assert (=> d!867 m!5277))

(declare-fun m!5347 () Bool)

(assert (=> b!8634 m!5347))

(assert (=> b!8499 d!867))

(declare-fun d!869 () Bool)

(declare-fun e!4919 () Bool)

(assert (=> d!869 e!4919))

(declare-fun c!653 () Bool)

(assert (=> d!869 (= c!653 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1860 () Unit!159)

(declare-fun choose!141 (array!757 array!759 (_ BitVec 32) (_ BitVec 32) V!733 V!733 (_ BitVec 64) Int) Unit!159)

(assert (=> d!869 (= lt!1860 (choose!141 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!869 (validMask!0 mask!2250)))

(assert (=> d!869 (= (lemmaKeyInListMapIsInArray!59 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!1860)))

(declare-fun b!8639 () Bool)

(assert (=> b!8639 (= e!4919 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8640 () Bool)

(assert (=> b!8640 (= e!4919 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!869 c!653) b!8639))

(assert (= (and d!869 (not c!653)) b!8640))

(declare-fun m!5349 () Bool)

(assert (=> d!869 m!5349))

(assert (=> d!869 m!5247))

(assert (=> b!8639 m!5243))

(assert (=> b!8499 d!869))

(declare-fun d!871 () Bool)

(assert (=> d!871 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!8495 d!871))

(declare-fun b!8649 () Bool)

(declare-fun e!4928 () Bool)

(declare-fun e!4927 () Bool)

(assert (=> b!8649 (= e!4928 e!4927)))

(declare-fun lt!1869 () (_ BitVec 64))

(assert (=> b!8649 (= lt!1869 (select (arr!365 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1867 () Unit!159)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!757 (_ BitVec 64) (_ BitVec 32)) Unit!159)

(assert (=> b!8649 (= lt!1867 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!1869 #b00000000000000000000000000000000))))

(assert (=> b!8649 (arrayContainsKey!0 _keys!1806 lt!1869 #b00000000000000000000000000000000)))

(declare-fun lt!1868 () Unit!159)

(assert (=> b!8649 (= lt!1868 lt!1867)))

(declare-fun res!8067 () Bool)

(declare-datatypes ((SeekEntryResult!36 0))(
  ( (MissingZero!36 (index!2263 (_ BitVec 32))) (Found!36 (index!2264 (_ BitVec 32))) (Intermediate!36 (undefined!848 Bool) (index!2265 (_ BitVec 32)) (x!2732 (_ BitVec 32))) (Undefined!36) (MissingVacant!36 (index!2266 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!757 (_ BitVec 32)) SeekEntryResult!36)

(assert (=> b!8649 (= res!8067 (= (seekEntryOrOpen!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!36 #b00000000000000000000000000000000)))))

(assert (=> b!8649 (=> (not res!8067) (not e!4927))))

(declare-fun b!8650 () Bool)

(declare-fun e!4926 () Bool)

(assert (=> b!8650 (= e!4926 e!4928)))

(declare-fun c!656 () Bool)

(assert (=> b!8650 (= c!656 (validKeyInArray!0 (select (arr!365 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8651 () Bool)

(declare-fun call!236 () Bool)

(assert (=> b!8651 (= e!4928 call!236)))

(declare-fun bm!233 () Bool)

(assert (=> bm!233 (= call!236 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun d!873 () Bool)

(declare-fun res!8068 () Bool)

(assert (=> d!873 (=> res!8068 e!4926)))

(assert (=> d!873 (= res!8068 (bvsge #b00000000000000000000000000000000 (size!427 _keys!1806)))))

(assert (=> d!873 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!4926)))

(declare-fun b!8652 () Bool)

(assert (=> b!8652 (= e!4927 call!236)))

(assert (= (and d!873 (not res!8068)) b!8650))

(assert (= (and b!8650 c!656) b!8649))

(assert (= (and b!8650 (not c!656)) b!8651))

(assert (= (and b!8649 res!8067) b!8652))

(assert (= (or b!8652 b!8651) bm!233))

(assert (=> b!8649 m!5277))

(declare-fun m!5351 () Bool)

(assert (=> b!8649 m!5351))

(declare-fun m!5353 () Bool)

(assert (=> b!8649 m!5353))

(assert (=> b!8649 m!5277))

(declare-fun m!5355 () Bool)

(assert (=> b!8649 m!5355))

(assert (=> b!8650 m!5277))

(assert (=> b!8650 m!5277))

(assert (=> b!8650 m!5279))

(declare-fun m!5357 () Bool)

(assert (=> bm!233 m!5357))

(assert (=> b!8496 d!873))

(assert (=> b!8500 d!867))

(declare-fun d!875 () Bool)

(declare-fun lt!1872 () (_ BitVec 32))

(assert (=> d!875 (and (or (bvslt lt!1872 #b00000000000000000000000000000000) (bvsge lt!1872 (size!427 _keys!1806)) (and (bvsge lt!1872 #b00000000000000000000000000000000) (bvslt lt!1872 (size!427 _keys!1806)))) (bvsge lt!1872 #b00000000000000000000000000000000) (bvslt lt!1872 (size!427 _keys!1806)) (= (select (arr!365 _keys!1806) lt!1872) k0!1278))))

(declare-fun e!4931 () (_ BitVec 32))

(assert (=> d!875 (= lt!1872 e!4931)))

(declare-fun c!659 () Bool)

(assert (=> d!875 (= c!659 (= (select (arr!365 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!875 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!427 _keys!1806)) (bvslt (size!427 _keys!1806) #b01111111111111111111111111111111))))

(assert (=> d!875 (= (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) lt!1872)))

(declare-fun b!8657 () Bool)

(assert (=> b!8657 (= e!4931 #b00000000000000000000000000000000)))

(declare-fun b!8658 () Bool)

(assert (=> b!8658 (= e!4931 (arrayScanForKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!875 c!659) b!8657))

(assert (= (and d!875 (not c!659)) b!8658))

(declare-fun m!5359 () Bool)

(assert (=> d!875 m!5359))

(assert (=> d!875 m!5277))

(declare-fun m!5361 () Bool)

(assert (=> b!8658 m!5361))

(assert (=> b!8497 d!875))

(declare-fun d!877 () Bool)

(assert (=> d!877 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!988 d!877))

(declare-fun d!879 () Bool)

(assert (=> d!879 (= (array_inv!267 _values!1492) (bvsge (size!428 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!988 d!879))

(declare-fun d!881 () Bool)

(assert (=> d!881 (= (array_inv!268 _keys!1806) (bvsge (size!427 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!988 d!881))

(declare-fun b!8666 () Bool)

(declare-fun e!4936 () Bool)

(assert (=> b!8666 (= e!4936 tp_is_empty!417)))

(declare-fun condMapEmpty!608 () Bool)

(declare-fun mapDefault!608 () ValueCell!192)

(assert (=> mapNonEmpty!602 (= condMapEmpty!608 (= mapRest!602 ((as const (Array (_ BitVec 32) ValueCell!192)) mapDefault!608)))))

(declare-fun mapRes!608 () Bool)

(assert (=> mapNonEmpty!602 (= tp!1252 (and e!4936 mapRes!608))))

(declare-fun b!8665 () Bool)

(declare-fun e!4937 () Bool)

(assert (=> b!8665 (= e!4937 tp_is_empty!417)))

(declare-fun mapIsEmpty!608 () Bool)

(assert (=> mapIsEmpty!608 mapRes!608))

(declare-fun mapNonEmpty!608 () Bool)

(declare-fun tp!1262 () Bool)

(assert (=> mapNonEmpty!608 (= mapRes!608 (and tp!1262 e!4937))))

(declare-fun mapRest!608 () (Array (_ BitVec 32) ValueCell!192))

(declare-fun mapKey!608 () (_ BitVec 32))

(declare-fun mapValue!608 () ValueCell!192)

(assert (=> mapNonEmpty!608 (= mapRest!602 (store mapRest!608 mapKey!608 mapValue!608))))

(assert (= (and mapNonEmpty!602 condMapEmpty!608) mapIsEmpty!608))

(assert (= (and mapNonEmpty!602 (not condMapEmpty!608)) mapNonEmpty!608))

(assert (= (and mapNonEmpty!608 ((_ is ValueCellFull!192) mapValue!608)) b!8665))

(assert (= (and mapNonEmpty!602 ((_ is ValueCellFull!192) mapDefault!608)) b!8666))

(declare-fun m!5363 () Bool)

(assert (=> mapNonEmpty!608 m!5363))

(declare-fun b_lambda!345 () Bool)

(assert (= b_lambda!343 (or (and start!988 b_free!339) b_lambda!345)))

(check-sat (not b_lambda!345) (not b!8650) (not bm!227) (not d!865) (not b!8639) (not b!8561) (not b!8621) (not b!8634) tp_is_empty!417 (not d!869) (not b!8626) (not b!8563) (not bm!230) (not b!8649) (not b!8613) (not b!8658) (not bm!233) (not bm!225) (not bm!209) (not b!8610) (not b!8551) (not b!8554) (not mapNonEmpty!608) (not bm!229) (not b!8622) (not b!8611) (not b_next!339) (not b!8550) b_and!493 (not b!8612) (not b!8625) (not d!863))
(check-sat b_and!493 (not b_next!339))
