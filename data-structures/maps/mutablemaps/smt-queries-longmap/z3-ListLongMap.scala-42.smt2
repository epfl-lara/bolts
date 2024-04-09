; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726 () Bool)

(assert start!726)

(declare-fun b_free!159 () Bool)

(declare-fun b_next!159 () Bool)

(assert (=> start!726 (= b_free!159 (not b_next!159))))

(declare-fun tp!700 () Bool)

(declare-fun b_and!301 () Bool)

(assert (=> start!726 (= tp!700 b_and!301)))

(declare-fun mapNonEmpty!320 () Bool)

(declare-fun mapRes!320 () Bool)

(declare-fun tp!701 () Bool)

(declare-fun e!2729 () Bool)

(assert (=> mapNonEmpty!320 (= mapRes!320 (and tp!701 e!2729))))

(declare-datatypes ((V!493 0))(
  ( (V!494 (val!124 Int)) )
))
(declare-datatypes ((ValueCell!102 0))(
  ( (ValueCellFull!102 (v!1213 V!493)) (EmptyCell!102) )
))
(declare-fun mapRest!320 () (Array (_ BitVec 32) ValueCell!102))

(declare-fun mapValue!320 () ValueCell!102)

(declare-datatypes ((array!407 0))(
  ( (array!408 (arr!194 (Array (_ BitVec 32) ValueCell!102)) (size!256 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!407)

(declare-fun mapKey!320 () (_ BitVec 32))

(assert (=> mapNonEmpty!320 (= (arr!194 _values!1492) (store mapRest!320 mapKey!320 mapValue!320))))

(declare-fun b!5095 () Bool)

(declare-fun e!2728 () Bool)

(declare-datatypes ((array!409 0))(
  ( (array!410 (arr!195 (Array (_ BitVec 32) (_ BitVec 64))) (size!257 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!409)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5095 (= e!2728 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!320 () Bool)

(assert (=> mapIsEmpty!320 mapRes!320))

(declare-fun b!5096 () Bool)

(declare-fun tp_is_empty!237 () Bool)

(assert (=> b!5096 (= e!2729 tp_is_empty!237)))

(declare-fun b!5097 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5097 (= e!2728 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5098 () Bool)

(declare-fun res!6073 () Bool)

(declare-fun e!2726 () Bool)

(assert (=> b!5098 (=> (not res!6073) (not e!2726))))

(declare-datatypes ((List!123 0))(
  ( (Nil!120) (Cons!119 (h!685 (_ BitVec 64)) (t!2254 List!123)) )
))
(declare-fun arrayNoDuplicates!0 (array!409 (_ BitVec 32) List!123) Bool)

(assert (=> b!5098 (= res!6073 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!120))))

(declare-fun res!6072 () Bool)

(assert (=> start!726 (=> (not res!6072) (not e!2726))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!726 (= res!6072 (validMask!0 mask!2250))))

(assert (=> start!726 e!2726))

(assert (=> start!726 tp!700))

(assert (=> start!726 true))

(declare-fun e!2732 () Bool)

(declare-fun array_inv!137 (array!407) Bool)

(assert (=> start!726 (and (array_inv!137 _values!1492) e!2732)))

(assert (=> start!726 tp_is_empty!237))

(declare-fun array_inv!138 (array!409) Bool)

(assert (=> start!726 (array_inv!138 _keys!1806)))

(declare-fun b!5099 () Bool)

(declare-fun e!2727 () Bool)

(assert (=> b!5099 (= e!2727 tp_is_empty!237)))

(declare-fun b!5100 () Bool)

(declare-fun res!6071 () Bool)

(assert (=> b!5100 (=> (not res!6071) (not e!2726))))

(assert (=> b!5100 (= res!6071 (and (= (size!256 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!257 _keys!1806) (size!256 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5101 () Bool)

(declare-fun e!2730 () Bool)

(assert (=> b!5101 (= e!2730 (or (not (= (size!257 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsle #b00000000000000000000000000000000 (size!257 _keys!1806))))))

(declare-fun b!5102 () Bool)

(assert (=> b!5102 (= e!2732 (and e!2727 mapRes!320))))

(declare-fun condMapEmpty!320 () Bool)

(declare-fun mapDefault!320 () ValueCell!102)

(assert (=> b!5102 (= condMapEmpty!320 (= (arr!194 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!102)) mapDefault!320)))))

(declare-fun b!5103 () Bool)

(declare-fun res!6070 () Bool)

(assert (=> b!5103 (=> (not res!6070) (not e!2726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5103 (= res!6070 (validKeyInArray!0 k0!1278))))

(declare-fun b!5104 () Bool)

(assert (=> b!5104 (= e!2726 (not e!2730))))

(declare-fun res!6067 () Bool)

(assert (=> b!5104 (=> res!6067 e!2730)))

(assert (=> b!5104 (= res!6067 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!5104 e!2728))

(declare-fun c!311 () Bool)

(assert (=> b!5104 (= c!311 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!493)

(declare-fun zeroValue!1434 () V!493)

(declare-datatypes ((Unit!59 0))(
  ( (Unit!60) )
))
(declare-fun lt!819 () Unit!59)

(declare-fun lemmaKeyInListMapIsInArray!17 (array!409 array!407 (_ BitVec 32) (_ BitVec 32) V!493 V!493 (_ BitVec 64) Int) Unit!59)

(assert (=> b!5104 (= lt!819 (lemmaKeyInListMapIsInArray!17 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!5105 () Bool)

(declare-fun res!6069 () Bool)

(assert (=> b!5105 (=> (not res!6069) (not e!2726))))

(declare-datatypes ((tuple2!114 0))(
  ( (tuple2!115 (_1!57 (_ BitVec 64)) (_2!57 V!493)) )
))
(declare-datatypes ((List!124 0))(
  ( (Nil!121) (Cons!120 (h!686 tuple2!114) (t!2255 List!124)) )
))
(declare-datatypes ((ListLongMap!119 0))(
  ( (ListLongMap!120 (toList!75 List!124)) )
))
(declare-fun contains!47 (ListLongMap!119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!34 (array!409 array!407 (_ BitVec 32) (_ BitVec 32) V!493 V!493 (_ BitVec 32) Int) ListLongMap!119)

(assert (=> b!5105 (= res!6069 (contains!47 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!5106 () Bool)

(declare-fun res!6068 () Bool)

(assert (=> b!5106 (=> (not res!6068) (not e!2726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!409 (_ BitVec 32)) Bool)

(assert (=> b!5106 (= res!6068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(assert (= (and start!726 res!6072) b!5100))

(assert (= (and b!5100 res!6071) b!5106))

(assert (= (and b!5106 res!6068) b!5098))

(assert (= (and b!5098 res!6073) b!5105))

(assert (= (and b!5105 res!6069) b!5103))

(assert (= (and b!5103 res!6070) b!5104))

(assert (= (and b!5104 c!311) b!5095))

(assert (= (and b!5104 (not c!311)) b!5097))

(assert (= (and b!5104 (not res!6067)) b!5101))

(assert (= (and b!5102 condMapEmpty!320) mapIsEmpty!320))

(assert (= (and b!5102 (not condMapEmpty!320)) mapNonEmpty!320))

(get-info :version)

(assert (= (and mapNonEmpty!320 ((_ is ValueCellFull!102) mapValue!320)) b!5096))

(assert (= (and b!5102 ((_ is ValueCellFull!102) mapDefault!320)) b!5099))

(assert (= start!726 b!5102))

(declare-fun m!2793 () Bool)

(assert (=> mapNonEmpty!320 m!2793))

(declare-fun m!2795 () Bool)

(assert (=> b!5105 m!2795))

(assert (=> b!5105 m!2795))

(declare-fun m!2797 () Bool)

(assert (=> b!5105 m!2797))

(declare-fun m!2799 () Bool)

(assert (=> b!5106 m!2799))

(declare-fun m!2801 () Bool)

(assert (=> b!5095 m!2801))

(declare-fun m!2803 () Bool)

(assert (=> b!5103 m!2803))

(assert (=> b!5104 m!2801))

(declare-fun m!2805 () Bool)

(assert (=> b!5104 m!2805))

(declare-fun m!2807 () Bool)

(assert (=> start!726 m!2807))

(declare-fun m!2809 () Bool)

(assert (=> start!726 m!2809))

(declare-fun m!2811 () Bool)

(assert (=> start!726 m!2811))

(declare-fun m!2813 () Bool)

(assert (=> b!5098 m!2813))

(check-sat (not mapNonEmpty!320) b_and!301 tp_is_empty!237 (not b!5095) (not b!5106) (not start!726) (not b_next!159) (not b!5103) (not b!5098) (not b!5104) (not b!5105))
(check-sat b_and!301 (not b_next!159))
(get-model)

(declare-fun d!719 () Bool)

(declare-fun e!2759 () Bool)

(assert (=> d!719 e!2759))

(declare-fun res!6097 () Bool)

(assert (=> d!719 (=> res!6097 e!2759)))

(declare-fun lt!831 () Bool)

(assert (=> d!719 (= res!6097 (not lt!831))))

(declare-fun lt!834 () Bool)

(assert (=> d!719 (= lt!831 lt!834)))

(declare-fun lt!832 () Unit!59)

(declare-fun e!2758 () Unit!59)

(assert (=> d!719 (= lt!832 e!2758)))

(declare-fun c!317 () Bool)

(assert (=> d!719 (= c!317 lt!834)))

(declare-fun containsKey!3 (List!124 (_ BitVec 64)) Bool)

(assert (=> d!719 (= lt!834 (containsKey!3 (toList!75 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!719 (= (contains!47 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!831)))

(declare-fun b!5149 () Bool)

(declare-fun lt!833 () Unit!59)

(assert (=> b!5149 (= e!2758 lt!833)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!3 (List!124 (_ BitVec 64)) Unit!59)

(assert (=> b!5149 (= lt!833 (lemmaContainsKeyImpliesGetValueByKeyDefined!3 (toList!75 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!15 0))(
  ( (Some!14 (v!1215 V!493)) (None!13) )
))
(declare-fun isDefined!4 (Option!15) Bool)

(declare-fun getValueByKey!9 (List!124 (_ BitVec 64)) Option!15)

(assert (=> b!5149 (isDefined!4 (getValueByKey!9 (toList!75 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!5150 () Bool)

(declare-fun Unit!61 () Unit!59)

(assert (=> b!5150 (= e!2758 Unit!61)))

(declare-fun b!5151 () Bool)

(assert (=> b!5151 (= e!2759 (isDefined!4 (getValueByKey!9 (toList!75 (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!719 c!317) b!5149))

(assert (= (and d!719 (not c!317)) b!5150))

(assert (= (and d!719 (not res!6097)) b!5151))

(declare-fun m!2837 () Bool)

(assert (=> d!719 m!2837))

(declare-fun m!2839 () Bool)

(assert (=> b!5149 m!2839))

(declare-fun m!2841 () Bool)

(assert (=> b!5149 m!2841))

(assert (=> b!5149 m!2841))

(declare-fun m!2843 () Bool)

(assert (=> b!5149 m!2843))

(assert (=> b!5151 m!2841))

(assert (=> b!5151 m!2841))

(assert (=> b!5151 m!2843))

(assert (=> b!5105 d!719))

(declare-fun b!5194 () Bool)

(declare-fun res!6122 () Bool)

(declare-fun e!2789 () Bool)

(assert (=> b!5194 (=> (not res!6122) (not e!2789))))

(declare-fun e!2796 () Bool)

(assert (=> b!5194 (= res!6122 e!2796)))

(declare-fun c!332 () Bool)

(assert (=> b!5194 (= c!332 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2790 () Bool)

(declare-fun lt!899 () ListLongMap!119)

(declare-fun b!5195 () Bool)

(declare-fun apply!19 (ListLongMap!119 (_ BitVec 64)) V!493)

(declare-fun get!99 (ValueCell!102 V!493) V!493)

(declare-fun dynLambda!41 (Int (_ BitVec 64)) V!493)

(assert (=> b!5195 (= e!2790 (= (apply!19 lt!899 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)) (get!99 (select (arr!194 _values!1492) #b00000000000000000000000000000000) (dynLambda!41 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!5195 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!256 _values!1492)))))

(assert (=> b!5195 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(declare-fun b!5196 () Bool)

(declare-fun e!2795 () Bool)

(assert (=> b!5196 (= e!2796 e!2795)))

(declare-fun res!6124 () Bool)

(declare-fun call!117 () Bool)

(assert (=> b!5196 (= res!6124 call!117)))

(assert (=> b!5196 (=> (not res!6124) (not e!2795))))

(declare-fun b!5197 () Bool)

(assert (=> b!5197 (= e!2796 (not call!117))))

(declare-fun b!5198 () Bool)

(declare-fun e!2786 () ListLongMap!119)

(declare-fun call!118 () ListLongMap!119)

(declare-fun +!6 (ListLongMap!119 tuple2!114) ListLongMap!119)

(assert (=> b!5198 (= e!2786 (+!6 call!118 (tuple2!115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun bm!114 () Bool)

(assert (=> bm!114 (= call!117 (contains!47 lt!899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!5199 () Bool)

(declare-fun c!331 () Bool)

(assert (=> b!5199 (= c!331 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2797 () ListLongMap!119)

(declare-fun e!2794 () ListLongMap!119)

(assert (=> b!5199 (= e!2797 e!2794)))

(declare-fun b!5200 () Bool)

(declare-fun e!2792 () Bool)

(assert (=> b!5200 (= e!2792 (validKeyInArray!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5201 () Bool)

(declare-fun e!2798 () Unit!59)

(declare-fun Unit!62 () Unit!59)

(assert (=> b!5201 (= e!2798 Unit!62)))

(declare-fun d!721 () Bool)

(assert (=> d!721 e!2789))

(declare-fun res!6123 () Bool)

(assert (=> d!721 (=> (not res!6123) (not e!2789))))

(assert (=> d!721 (= res!6123 (or (bvsge #b00000000000000000000000000000000 (size!257 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!257 _keys!1806)))))))

(declare-fun lt!881 () ListLongMap!119)

(assert (=> d!721 (= lt!899 lt!881)))

(declare-fun lt!894 () Unit!59)

(assert (=> d!721 (= lt!894 e!2798)))

(declare-fun c!335 () Bool)

(declare-fun e!2793 () Bool)

(assert (=> d!721 (= c!335 e!2793)))

(declare-fun res!6116 () Bool)

(assert (=> d!721 (=> (not res!6116) (not e!2793))))

(assert (=> d!721 (= res!6116 (bvslt #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(assert (=> d!721 (= lt!881 e!2786)))

(declare-fun c!330 () Bool)

(assert (=> d!721 (= c!330 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!721 (validMask!0 mask!2250)))

(assert (=> d!721 (= (getCurrentListMap!34 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!899)))

(declare-fun bm!113 () Bool)

(declare-fun call!116 () ListLongMap!119)

(declare-fun call!119 () ListLongMap!119)

(assert (=> bm!113 (= call!116 call!119)))

(declare-fun b!5202 () Bool)

(declare-fun lt!884 () Unit!59)

(assert (=> b!5202 (= e!2798 lt!884)))

(declare-fun lt!891 () ListLongMap!119)

(declare-fun getCurrentListMapNoExtraKeys!3 (array!409 array!407 (_ BitVec 32) (_ BitVec 32) V!493 V!493 (_ BitVec 32) Int) ListLongMap!119)

(assert (=> b!5202 (= lt!891 (getCurrentListMapNoExtraKeys!3 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!883 () (_ BitVec 64))

(assert (=> b!5202 (= lt!883 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!889 () (_ BitVec 64))

(assert (=> b!5202 (= lt!889 (select (arr!195 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!888 () Unit!59)

(declare-fun addStillContains!4 (ListLongMap!119 (_ BitVec 64) V!493 (_ BitVec 64)) Unit!59)

(assert (=> b!5202 (= lt!888 (addStillContains!4 lt!891 lt!883 zeroValue!1434 lt!889))))

(assert (=> b!5202 (contains!47 (+!6 lt!891 (tuple2!115 lt!883 zeroValue!1434)) lt!889)))

(declare-fun lt!895 () Unit!59)

(assert (=> b!5202 (= lt!895 lt!888)))

(declare-fun lt!879 () ListLongMap!119)

(assert (=> b!5202 (= lt!879 (getCurrentListMapNoExtraKeys!3 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!898 () (_ BitVec 64))

(assert (=> b!5202 (= lt!898 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!887 () (_ BitVec 64))

(assert (=> b!5202 (= lt!887 (select (arr!195 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!896 () Unit!59)

(declare-fun addApplyDifferent!4 (ListLongMap!119 (_ BitVec 64) V!493 (_ BitVec 64)) Unit!59)

(assert (=> b!5202 (= lt!896 (addApplyDifferent!4 lt!879 lt!898 minValue!1434 lt!887))))

(assert (=> b!5202 (= (apply!19 (+!6 lt!879 (tuple2!115 lt!898 minValue!1434)) lt!887) (apply!19 lt!879 lt!887))))

(declare-fun lt!892 () Unit!59)

(assert (=> b!5202 (= lt!892 lt!896)))

(declare-fun lt!890 () ListLongMap!119)

(assert (=> b!5202 (= lt!890 (getCurrentListMapNoExtraKeys!3 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!885 () (_ BitVec 64))

(assert (=> b!5202 (= lt!885 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!897 () (_ BitVec 64))

(assert (=> b!5202 (= lt!897 (select (arr!195 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!893 () Unit!59)

(assert (=> b!5202 (= lt!893 (addApplyDifferent!4 lt!890 lt!885 zeroValue!1434 lt!897))))

(assert (=> b!5202 (= (apply!19 (+!6 lt!890 (tuple2!115 lt!885 zeroValue!1434)) lt!897) (apply!19 lt!890 lt!897))))

(declare-fun lt!886 () Unit!59)

(assert (=> b!5202 (= lt!886 lt!893)))

(declare-fun lt!880 () ListLongMap!119)

(assert (=> b!5202 (= lt!880 (getCurrentListMapNoExtraKeys!3 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!882 () (_ BitVec 64))

(assert (=> b!5202 (= lt!882 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!900 () (_ BitVec 64))

(assert (=> b!5202 (= lt!900 (select (arr!195 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!5202 (= lt!884 (addApplyDifferent!4 lt!880 lt!882 minValue!1434 lt!900))))

(assert (=> b!5202 (= (apply!19 (+!6 lt!880 (tuple2!115 lt!882 minValue!1434)) lt!900) (apply!19 lt!880 lt!900))))

(declare-fun b!5203 () Bool)

(declare-fun res!6117 () Bool)

(assert (=> b!5203 (=> (not res!6117) (not e!2789))))

(declare-fun e!2787 () Bool)

(assert (=> b!5203 (= res!6117 e!2787)))

(declare-fun res!6119 () Bool)

(assert (=> b!5203 (=> res!6119 e!2787)))

(assert (=> b!5203 (= res!6119 (not e!2792))))

(declare-fun res!6121 () Bool)

(assert (=> b!5203 (=> (not res!6121) (not e!2792))))

(assert (=> b!5203 (= res!6121 (bvslt #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(declare-fun bm!115 () Bool)

(declare-fun call!121 () ListLongMap!119)

(assert (=> bm!115 (= call!121 call!118)))

(declare-fun b!5204 () Bool)

(assert (=> b!5204 (= e!2797 call!121)))

(declare-fun call!122 () ListLongMap!119)

(declare-fun bm!116 () Bool)

(declare-fun c!333 () Bool)

(assert (=> bm!116 (= call!118 (+!6 (ite c!330 call!119 (ite c!333 call!116 call!122)) (ite (or c!330 c!333) (tuple2!115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!5205 () Bool)

(declare-fun e!2788 () Bool)

(declare-fun e!2791 () Bool)

(assert (=> b!5205 (= e!2788 e!2791)))

(declare-fun res!6120 () Bool)

(declare-fun call!120 () Bool)

(assert (=> b!5205 (= res!6120 call!120)))

(assert (=> b!5205 (=> (not res!6120) (not e!2791))))

(declare-fun b!5206 () Bool)

(assert (=> b!5206 (= e!2794 call!121)))

(declare-fun b!5207 () Bool)

(assert (=> b!5207 (= e!2789 e!2788)))

(declare-fun c!334 () Bool)

(assert (=> b!5207 (= c!334 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!5208 () Bool)

(assert (=> b!5208 (= e!2787 e!2790)))

(declare-fun res!6118 () Bool)

(assert (=> b!5208 (=> (not res!6118) (not e!2790))))

(assert (=> b!5208 (= res!6118 (contains!47 lt!899 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!5208 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(declare-fun b!5209 () Bool)

(assert (=> b!5209 (= e!2791 (= (apply!19 lt!899 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun bm!117 () Bool)

(assert (=> bm!117 (= call!122 call!116)))

(declare-fun bm!118 () Bool)

(assert (=> bm!118 (= call!120 (contains!47 lt!899 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!5210 () Bool)

(assert (=> b!5210 (= e!2786 e!2797)))

(assert (=> b!5210 (= c!333 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!5211 () Bool)

(assert (=> b!5211 (= e!2795 (= (apply!19 lt!899 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!5212 () Bool)

(assert (=> b!5212 (= e!2794 call!122)))

(declare-fun b!5213 () Bool)

(assert (=> b!5213 (= e!2788 (not call!120))))

(declare-fun bm!119 () Bool)

(assert (=> bm!119 (= call!119 (getCurrentListMapNoExtraKeys!3 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!5214 () Bool)

(assert (=> b!5214 (= e!2793 (validKeyInArray!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!721 c!330) b!5198))

(assert (= (and d!721 (not c!330)) b!5210))

(assert (= (and b!5210 c!333) b!5204))

(assert (= (and b!5210 (not c!333)) b!5199))

(assert (= (and b!5199 c!331) b!5206))

(assert (= (and b!5199 (not c!331)) b!5212))

(assert (= (or b!5206 b!5212) bm!117))

(assert (= (or b!5204 bm!117) bm!113))

(assert (= (or b!5204 b!5206) bm!115))

(assert (= (or b!5198 bm!113) bm!119))

(assert (= (or b!5198 bm!115) bm!116))

(assert (= (and d!721 res!6116) b!5214))

(assert (= (and d!721 c!335) b!5202))

(assert (= (and d!721 (not c!335)) b!5201))

(assert (= (and d!721 res!6123) b!5203))

(assert (= (and b!5203 res!6121) b!5200))

(assert (= (and b!5203 (not res!6119)) b!5208))

(assert (= (and b!5208 res!6118) b!5195))

(assert (= (and b!5203 res!6117) b!5194))

(assert (= (and b!5194 c!332) b!5196))

(assert (= (and b!5194 (not c!332)) b!5197))

(assert (= (and b!5196 res!6124) b!5211))

(assert (= (or b!5196 b!5197) bm!114))

(assert (= (and b!5194 res!6122) b!5207))

(assert (= (and b!5207 c!334) b!5205))

(assert (= (and b!5207 (not c!334)) b!5213))

(assert (= (and b!5205 res!6120) b!5209))

(assert (= (or b!5205 b!5213) bm!118))

(declare-fun b_lambda!327 () Bool)

(assert (=> (not b_lambda!327) (not b!5195)))

(declare-fun t!2258 () Bool)

(declare-fun tb!131 () Bool)

(assert (=> (and start!726 (= defaultEntry!1495 defaultEntry!1495) t!2258) tb!131))

(declare-fun result!195 () Bool)

(assert (=> tb!131 (= result!195 tp_is_empty!237)))

(assert (=> b!5195 t!2258))

(declare-fun b_and!305 () Bool)

(assert (= b_and!301 (and (=> t!2258 result!195) b_and!305)))

(declare-fun m!2845 () Bool)

(assert (=> b!5209 m!2845))

(declare-fun m!2847 () Bool)

(assert (=> bm!114 m!2847))

(declare-fun m!2849 () Bool)

(assert (=> b!5208 m!2849))

(assert (=> b!5208 m!2849))

(declare-fun m!2851 () Bool)

(assert (=> b!5208 m!2851))

(declare-fun m!2853 () Bool)

(assert (=> b!5202 m!2853))

(declare-fun m!2855 () Bool)

(assert (=> b!5202 m!2855))

(declare-fun m!2857 () Bool)

(assert (=> b!5202 m!2857))

(declare-fun m!2859 () Bool)

(assert (=> b!5202 m!2859))

(declare-fun m!2861 () Bool)

(assert (=> b!5202 m!2861))

(declare-fun m!2863 () Bool)

(assert (=> b!5202 m!2863))

(declare-fun m!2865 () Bool)

(assert (=> b!5202 m!2865))

(declare-fun m!2867 () Bool)

(assert (=> b!5202 m!2867))

(declare-fun m!2869 () Bool)

(assert (=> b!5202 m!2869))

(declare-fun m!2871 () Bool)

(assert (=> b!5202 m!2871))

(declare-fun m!2873 () Bool)

(assert (=> b!5202 m!2873))

(declare-fun m!2875 () Bool)

(assert (=> b!5202 m!2875))

(assert (=> b!5202 m!2861))

(declare-fun m!2877 () Bool)

(assert (=> b!5202 m!2877))

(assert (=> b!5202 m!2855))

(declare-fun m!2879 () Bool)

(assert (=> b!5202 m!2879))

(assert (=> b!5202 m!2853))

(declare-fun m!2881 () Bool)

(assert (=> b!5202 m!2881))

(assert (=> b!5202 m!2871))

(declare-fun m!2883 () Bool)

(assert (=> b!5202 m!2883))

(assert (=> b!5202 m!2849))

(declare-fun m!2885 () Bool)

(assert (=> b!5211 m!2885))

(declare-fun m!2887 () Bool)

(assert (=> bm!118 m!2887))

(assert (=> b!5195 m!2849))

(declare-fun m!2889 () Bool)

(assert (=> b!5195 m!2889))

(declare-fun m!2891 () Bool)

(assert (=> b!5195 m!2891))

(declare-fun m!2893 () Bool)

(assert (=> b!5195 m!2893))

(declare-fun m!2895 () Bool)

(assert (=> b!5195 m!2895))

(assert (=> b!5195 m!2893))

(assert (=> b!5195 m!2891))

(assert (=> b!5195 m!2849))

(declare-fun m!2897 () Bool)

(assert (=> bm!116 m!2897))

(assert (=> d!721 m!2807))

(assert (=> b!5200 m!2849))

(assert (=> b!5200 m!2849))

(declare-fun m!2899 () Bool)

(assert (=> b!5200 m!2899))

(assert (=> bm!119 m!2879))

(declare-fun m!2901 () Bool)

(assert (=> b!5198 m!2901))

(assert (=> b!5214 m!2849))

(assert (=> b!5214 m!2849))

(assert (=> b!5214 m!2899))

(assert (=> b!5105 d!721))

(declare-fun d!723 () Bool)

(declare-fun res!6129 () Bool)

(declare-fun e!2803 () Bool)

(assert (=> d!723 (=> res!6129 e!2803)))

(assert (=> d!723 (= res!6129 (= (select (arr!195 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!723 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!2803)))

(declare-fun b!5221 () Bool)

(declare-fun e!2804 () Bool)

(assert (=> b!5221 (= e!2803 e!2804)))

(declare-fun res!6130 () Bool)

(assert (=> b!5221 (=> (not res!6130) (not e!2804))))

(assert (=> b!5221 (= res!6130 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!257 _keys!1806)))))

(declare-fun b!5222 () Bool)

(assert (=> b!5222 (= e!2804 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!723 (not res!6129)) b!5221))

(assert (= (and b!5221 res!6130) b!5222))

(assert (=> d!723 m!2849))

(declare-fun m!2903 () Bool)

(assert (=> b!5222 m!2903))

(assert (=> b!5095 d!723))

(assert (=> b!5104 d!723))

(declare-fun d!725 () Bool)

(declare-fun e!2807 () Bool)

(assert (=> d!725 e!2807))

(declare-fun c!338 () Bool)

(assert (=> d!725 (= c!338 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!903 () Unit!59)

(declare-fun choose!137 (array!409 array!407 (_ BitVec 32) (_ BitVec 32) V!493 V!493 (_ BitVec 64) Int) Unit!59)

(assert (=> d!725 (= lt!903 (choose!137 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!725 (validMask!0 mask!2250)))

(assert (=> d!725 (= (lemmaKeyInListMapIsInArray!17 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!903)))

(declare-fun b!5227 () Bool)

(assert (=> b!5227 (= e!2807 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5228 () Bool)

(assert (=> b!5228 (= e!2807 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!725 c!338) b!5227))

(assert (= (and d!725 (not c!338)) b!5228))

(declare-fun m!2905 () Bool)

(assert (=> d!725 m!2905))

(assert (=> d!725 m!2807))

(assert (=> b!5227 m!2801))

(assert (=> b!5104 d!725))

(declare-fun b!5239 () Bool)

(declare-fun e!2817 () Bool)

(declare-fun call!125 () Bool)

(assert (=> b!5239 (= e!2817 call!125)))

(declare-fun b!5240 () Bool)

(assert (=> b!5240 (= e!2817 call!125)))

(declare-fun b!5241 () Bool)

(declare-fun e!2816 () Bool)

(declare-fun contains!48 (List!123 (_ BitVec 64)) Bool)

(assert (=> b!5241 (= e!2816 (contains!48 Nil!120 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!122 () Bool)

(declare-fun c!341 () Bool)

(assert (=> bm!122 (= call!125 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!341 (Cons!119 (select (arr!195 _keys!1806) #b00000000000000000000000000000000) Nil!120) Nil!120)))))

(declare-fun b!5242 () Bool)

(declare-fun e!2819 () Bool)

(declare-fun e!2818 () Bool)

(assert (=> b!5242 (= e!2819 e!2818)))

(declare-fun res!6137 () Bool)

(assert (=> b!5242 (=> (not res!6137) (not e!2818))))

(assert (=> b!5242 (= res!6137 (not e!2816))))

(declare-fun res!6139 () Bool)

(assert (=> b!5242 (=> (not res!6139) (not e!2816))))

(assert (=> b!5242 (= res!6139 (validKeyInArray!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!727 () Bool)

(declare-fun res!6138 () Bool)

(assert (=> d!727 (=> res!6138 e!2819)))

(assert (=> d!727 (= res!6138 (bvsge #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(assert (=> d!727 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!120) e!2819)))

(declare-fun b!5243 () Bool)

(assert (=> b!5243 (= e!2818 e!2817)))

(assert (=> b!5243 (= c!341 (validKeyInArray!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!727 (not res!6138)) b!5242))

(assert (= (and b!5242 res!6139) b!5241))

(assert (= (and b!5242 res!6137) b!5243))

(assert (= (and b!5243 c!341) b!5239))

(assert (= (and b!5243 (not c!341)) b!5240))

(assert (= (or b!5239 b!5240) bm!122))

(assert (=> b!5241 m!2849))

(assert (=> b!5241 m!2849))

(declare-fun m!2907 () Bool)

(assert (=> b!5241 m!2907))

(assert (=> bm!122 m!2849))

(declare-fun m!2909 () Bool)

(assert (=> bm!122 m!2909))

(assert (=> b!5242 m!2849))

(assert (=> b!5242 m!2849))

(assert (=> b!5242 m!2899))

(assert (=> b!5243 m!2849))

(assert (=> b!5243 m!2849))

(assert (=> b!5243 m!2899))

(assert (=> b!5098 d!727))

(declare-fun d!729 () Bool)

(assert (=> d!729 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!5103 d!729))

(declare-fun d!731 () Bool)

(assert (=> d!731 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!726 d!731))

(declare-fun d!733 () Bool)

(assert (=> d!733 (= (array_inv!137 _values!1492) (bvsge (size!256 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!726 d!733))

(declare-fun d!735 () Bool)

(assert (=> d!735 (= (array_inv!138 _keys!1806) (bvsge (size!257 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!726 d!735))

(declare-fun d!737 () Bool)

(declare-fun res!6145 () Bool)

(declare-fun e!2826 () Bool)

(assert (=> d!737 (=> res!6145 e!2826)))

(assert (=> d!737 (= res!6145 (bvsge #b00000000000000000000000000000000 (size!257 _keys!1806)))))

(assert (=> d!737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!2826)))

(declare-fun b!5252 () Bool)

(declare-fun e!2827 () Bool)

(assert (=> b!5252 (= e!2826 e!2827)))

(declare-fun c!344 () Bool)

(assert (=> b!5252 (= c!344 (validKeyInArray!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!5253 () Bool)

(declare-fun e!2828 () Bool)

(assert (=> b!5253 (= e!2827 e!2828)))

(declare-fun lt!911 () (_ BitVec 64))

(assert (=> b!5253 (= lt!911 (select (arr!195 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!912 () Unit!59)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!409 (_ BitVec 64) (_ BitVec 32)) Unit!59)

(assert (=> b!5253 (= lt!912 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!911 #b00000000000000000000000000000000))))

(assert (=> b!5253 (arrayContainsKey!0 _keys!1806 lt!911 #b00000000000000000000000000000000)))

(declare-fun lt!910 () Unit!59)

(assert (=> b!5253 (= lt!910 lt!912)))

(declare-fun res!6144 () Bool)

(declare-datatypes ((SeekEntryResult!12 0))(
  ( (MissingZero!12 (index!2167 (_ BitVec 32))) (Found!12 (index!2168 (_ BitVec 32))) (Intermediate!12 (undefined!824 Bool) (index!2169 (_ BitVec 32)) (x!2428 (_ BitVec 32))) (Undefined!12) (MissingVacant!12 (index!2170 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!409 (_ BitVec 32)) SeekEntryResult!12)

(assert (=> b!5253 (= res!6144 (= (seekEntryOrOpen!0 (select (arr!195 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!12 #b00000000000000000000000000000000)))))

(assert (=> b!5253 (=> (not res!6144) (not e!2828))))

(declare-fun b!5254 () Bool)

(declare-fun call!128 () Bool)

(assert (=> b!5254 (= e!2827 call!128)))

(declare-fun bm!125 () Bool)

(assert (=> bm!125 (= call!128 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!5255 () Bool)

(assert (=> b!5255 (= e!2828 call!128)))

(assert (= (and d!737 (not res!6145)) b!5252))

(assert (= (and b!5252 c!344) b!5253))

(assert (= (and b!5252 (not c!344)) b!5254))

(assert (= (and b!5253 res!6144) b!5255))

(assert (= (or b!5255 b!5254) bm!125))

(assert (=> b!5252 m!2849))

(assert (=> b!5252 m!2849))

(assert (=> b!5252 m!2899))

(assert (=> b!5253 m!2849))

(declare-fun m!2911 () Bool)

(assert (=> b!5253 m!2911))

(declare-fun m!2913 () Bool)

(assert (=> b!5253 m!2913))

(assert (=> b!5253 m!2849))

(declare-fun m!2915 () Bool)

(assert (=> b!5253 m!2915))

(declare-fun m!2917 () Bool)

(assert (=> bm!125 m!2917))

(assert (=> b!5106 d!737))

(declare-fun mapNonEmpty!326 () Bool)

(declare-fun mapRes!326 () Bool)

(declare-fun tp!710 () Bool)

(declare-fun e!2833 () Bool)

(assert (=> mapNonEmpty!326 (= mapRes!326 (and tp!710 e!2833))))

(declare-fun mapKey!326 () (_ BitVec 32))

(declare-fun mapRest!326 () (Array (_ BitVec 32) ValueCell!102))

(declare-fun mapValue!326 () ValueCell!102)

(assert (=> mapNonEmpty!326 (= mapRest!320 (store mapRest!326 mapKey!326 mapValue!326))))

(declare-fun b!5262 () Bool)

(assert (=> b!5262 (= e!2833 tp_is_empty!237)))

(declare-fun mapIsEmpty!326 () Bool)

(assert (=> mapIsEmpty!326 mapRes!326))

(declare-fun b!5263 () Bool)

(declare-fun e!2834 () Bool)

(assert (=> b!5263 (= e!2834 tp_is_empty!237)))

(declare-fun condMapEmpty!326 () Bool)

(declare-fun mapDefault!326 () ValueCell!102)

(assert (=> mapNonEmpty!320 (= condMapEmpty!326 (= mapRest!320 ((as const (Array (_ BitVec 32) ValueCell!102)) mapDefault!326)))))

(assert (=> mapNonEmpty!320 (= tp!701 (and e!2834 mapRes!326))))

(assert (= (and mapNonEmpty!320 condMapEmpty!326) mapIsEmpty!326))

(assert (= (and mapNonEmpty!320 (not condMapEmpty!326)) mapNonEmpty!326))

(assert (= (and mapNonEmpty!326 ((_ is ValueCellFull!102) mapValue!326)) b!5262))

(assert (= (and mapNonEmpty!320 ((_ is ValueCellFull!102) mapDefault!326)) b!5263))

(declare-fun m!2919 () Bool)

(assert (=> mapNonEmpty!326 m!2919))

(declare-fun b_lambda!329 () Bool)

(assert (= b_lambda!327 (or (and start!726 b_free!159) b_lambda!329)))

(check-sat (not b_next!159) (not bm!114) tp_is_empty!237 (not b!5241) (not b!5198) (not b!5209) (not b!5149) (not b!5202) (not b!5211) (not mapNonEmpty!326) (not bm!118) (not b!5227) b_and!305 (not b_lambda!329) (not bm!119) (not b!5208) (not b!5222) (not d!721) (not d!725) (not b!5243) (not bm!125) (not b!5253) (not b!5200) (not bm!122) (not b!5151) (not d!719) (not b!5252) (not b!5195) (not bm!116) (not b!5242) (not b!5214))
(check-sat b_and!305 (not b_next!159))
