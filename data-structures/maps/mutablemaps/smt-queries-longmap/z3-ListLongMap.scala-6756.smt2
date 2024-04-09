; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84770 () Bool)

(assert start!84770)

(declare-fun b_free!20097 () Bool)

(declare-fun b_next!20097 () Bool)

(assert (=> start!84770 (= b_free!20097 (not b_next!20097))))

(declare-fun tp!70090 () Bool)

(declare-fun b_and!32287 () Bool)

(assert (=> start!84770 (= tp!70090 b_and!32287)))

(declare-fun b!990860 () Bool)

(declare-fun res!662580 () Bool)

(declare-fun e!558773 () Bool)

(assert (=> b!990860 (=> (not res!662580) (not e!558773))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36067 0))(
  ( (V!36068 (val!11707 Int)) )
))
(declare-datatypes ((ValueCell!11175 0))(
  ( (ValueCellFull!11175 (v!14280 V!36067)) (EmptyCell!11175) )
))
(declare-datatypes ((array!62575 0))(
  ( (array!62576 (arr!30134 (Array (_ BitVec 32) ValueCell!11175)) (size!30614 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62575)

(declare-datatypes ((array!62577 0))(
  ( (array!62578 (arr!30135 (Array (_ BitVec 32) (_ BitVec 64))) (size!30615 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62577)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990860 (= res!662580 (and (= (size!30614 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30615 _keys!1544) (size!30614 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!662579 () Bool)

(assert (=> start!84770 (=> (not res!662579) (not e!558773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84770 (= res!662579 (validMask!0 mask!1948))))

(assert (=> start!84770 e!558773))

(assert (=> start!84770 true))

(declare-fun tp_is_empty!23313 () Bool)

(assert (=> start!84770 tp_is_empty!23313))

(declare-fun e!558772 () Bool)

(declare-fun array_inv!23137 (array!62575) Bool)

(assert (=> start!84770 (and (array_inv!23137 _values!1278) e!558772)))

(assert (=> start!84770 tp!70090))

(declare-fun array_inv!23138 (array!62577) Bool)

(assert (=> start!84770 (array_inv!23138 _keys!1544)))

(declare-fun b!990861 () Bool)

(declare-fun e!558770 () Bool)

(assert (=> b!990861 (= e!558770 tp_is_empty!23313)))

(declare-fun minValue!1220 () V!36067)

(declare-fun zeroValue!1220 () V!36067)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun e!558774 () Bool)

(declare-fun b!990862 () Bool)

(declare-datatypes ((tuple2!15022 0))(
  ( (tuple2!15023 (_1!7521 (_ BitVec 64)) (_2!7521 V!36067)) )
))
(declare-datatypes ((List!20972 0))(
  ( (Nil!20969) (Cons!20968 (h!22130 tuple2!15022) (t!29961 List!20972)) )
))
(declare-datatypes ((ListLongMap!13733 0))(
  ( (ListLongMap!13734 (toList!6882 List!20972)) )
))
(declare-fun getCurrentListMap!3891 (array!62577 array!62575 (_ BitVec 32) (_ BitVec 32) V!36067 V!36067 (_ BitVec 32) Int) ListLongMap!13733)

(declare-fun +!3056 (ListLongMap!13733 tuple2!15022) ListLongMap!13733)

(declare-fun get!15664 (ValueCell!11175 V!36067) V!36067)

(declare-fun dynLambda!1882 (Int (_ BitVec 64)) V!36067)

(assert (=> b!990862 (= e!558774 (not (= (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3056 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!990863 () Bool)

(assert (=> b!990863 (= e!558773 e!558774)))

(declare-fun res!662578 () Bool)

(assert (=> b!990863 (=> (not res!662578) (not e!558774))))

(declare-fun lt!439657 () Bool)

(assert (=> b!990863 (= res!662578 (and (or lt!439657 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439657 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439657))))))

(assert (=> b!990863 (= lt!439657 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!990864 () Bool)

(declare-fun e!558775 () Bool)

(assert (=> b!990864 (= e!558775 tp_is_empty!23313)))

(declare-fun b!990865 () Bool)

(declare-fun mapRes!37022 () Bool)

(assert (=> b!990865 (= e!558772 (and e!558775 mapRes!37022))))

(declare-fun condMapEmpty!37022 () Bool)

(declare-fun mapDefault!37022 () ValueCell!11175)

(assert (=> b!990865 (= condMapEmpty!37022 (= (arr!30134 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11175)) mapDefault!37022)))))

(declare-fun mapNonEmpty!37022 () Bool)

(declare-fun tp!70091 () Bool)

(assert (=> mapNonEmpty!37022 (= mapRes!37022 (and tp!70091 e!558770))))

(declare-fun mapValue!37022 () ValueCell!11175)

(declare-fun mapRest!37022 () (Array (_ BitVec 32) ValueCell!11175))

(declare-fun mapKey!37022 () (_ BitVec 32))

(assert (=> mapNonEmpty!37022 (= (arr!30134 _values!1278) (store mapRest!37022 mapKey!37022 mapValue!37022))))

(declare-fun b!990866 () Bool)

(declare-fun res!662583 () Bool)

(assert (=> b!990866 (=> (not res!662583) (not e!558773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990866 (= res!662583 (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!37022 () Bool)

(assert (=> mapIsEmpty!37022 mapRes!37022))

(declare-fun b!990867 () Bool)

(declare-fun res!662582 () Bool)

(assert (=> b!990867 (=> (not res!662582) (not e!558773))))

(declare-datatypes ((List!20973 0))(
  ( (Nil!20970) (Cons!20969 (h!22131 (_ BitVec 64)) (t!29962 List!20973)) )
))
(declare-fun arrayNoDuplicates!0 (array!62577 (_ BitVec 32) List!20973) Bool)

(assert (=> b!990867 (= res!662582 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20970))))

(declare-fun b!990868 () Bool)

(declare-fun res!662581 () Bool)

(assert (=> b!990868 (=> (not res!662581) (not e!558773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62577 (_ BitVec 32)) Bool)

(assert (=> b!990868 (= res!662581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990869 () Bool)

(declare-fun res!662584 () Bool)

(assert (=> b!990869 (=> (not res!662584) (not e!558773))))

(assert (=> b!990869 (= res!662584 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544))))))

(assert (= (and start!84770 res!662579) b!990860))

(assert (= (and b!990860 res!662580) b!990868))

(assert (= (and b!990868 res!662581) b!990867))

(assert (= (and b!990867 res!662582) b!990869))

(assert (= (and b!990869 res!662584) b!990866))

(assert (= (and b!990866 res!662583) b!990863))

(assert (= (and b!990863 res!662578) b!990862))

(assert (= (and b!990865 condMapEmpty!37022) mapIsEmpty!37022))

(assert (= (and b!990865 (not condMapEmpty!37022)) mapNonEmpty!37022))

(get-info :version)

(assert (= (and mapNonEmpty!37022 ((_ is ValueCellFull!11175) mapValue!37022)) b!990861))

(assert (= (and b!990865 ((_ is ValueCellFull!11175) mapDefault!37022)) b!990864))

(assert (= start!84770 b!990865))

(declare-fun b_lambda!15229 () Bool)

(assert (=> (not b_lambda!15229) (not b!990862)))

(declare-fun t!29960 () Bool)

(declare-fun tb!6839 () Bool)

(assert (=> (and start!84770 (= defaultEntry!1281 defaultEntry!1281) t!29960) tb!6839))

(declare-fun result!13673 () Bool)

(assert (=> tb!6839 (= result!13673 tp_is_empty!23313)))

(assert (=> b!990862 t!29960))

(declare-fun b_and!32289 () Bool)

(assert (= b_and!32287 (and (=> t!29960 result!13673) b_and!32289)))

(declare-fun m!918713 () Bool)

(assert (=> b!990866 m!918713))

(assert (=> b!990866 m!918713))

(declare-fun m!918715 () Bool)

(assert (=> b!990866 m!918715))

(declare-fun m!918717 () Bool)

(assert (=> b!990868 m!918717))

(declare-fun m!918719 () Bool)

(assert (=> b!990867 m!918719))

(declare-fun m!918721 () Bool)

(assert (=> mapNonEmpty!37022 m!918721))

(declare-fun m!918723 () Bool)

(assert (=> start!84770 m!918723))

(declare-fun m!918725 () Bool)

(assert (=> start!84770 m!918725))

(declare-fun m!918727 () Bool)

(assert (=> start!84770 m!918727))

(assert (=> b!990862 m!918713))

(declare-fun m!918729 () Bool)

(assert (=> b!990862 m!918729))

(declare-fun m!918731 () Bool)

(assert (=> b!990862 m!918731))

(assert (=> b!990862 m!918731))

(declare-fun m!918733 () Bool)

(assert (=> b!990862 m!918733))

(declare-fun m!918735 () Bool)

(assert (=> b!990862 m!918735))

(declare-fun m!918737 () Bool)

(assert (=> b!990862 m!918737))

(assert (=> b!990862 m!918729))

(assert (=> b!990862 m!918737))

(declare-fun m!918739 () Bool)

(assert (=> b!990862 m!918739))

(check-sat b_and!32289 (not b!990867) tp_is_empty!23313 (not b!990868) (not start!84770) (not b_next!20097) (not mapNonEmpty!37022) (not b_lambda!15229) (not b!990866) (not b!990862))
(check-sat b_and!32289 (not b_next!20097))
(get-model)

(declare-fun b_lambda!15233 () Bool)

(assert (= b_lambda!15229 (or (and start!84770 b_free!20097) b_lambda!15233)))

(check-sat b_and!32289 (not b!990867) tp_is_empty!23313 (not b_lambda!15233) (not b!990868) (not start!84770) (not b_next!20097) (not mapNonEmpty!37022) (not b!990866) (not b!990862))
(check-sat b_and!32289 (not b_next!20097))
(get-model)

(declare-fun b!990946 () Bool)

(declare-fun e!558820 () Bool)

(declare-fun e!558829 () Bool)

(assert (=> b!990946 (= e!558820 e!558829)))

(declare-fun res!662631 () Bool)

(declare-fun call!42039 () Bool)

(assert (=> b!990946 (= res!662631 call!42039)))

(assert (=> b!990946 (=> (not res!662631) (not e!558829))))

(declare-fun lt!439706 () ListLongMap!13733)

(declare-fun b!990947 () Bool)

(declare-fun e!558823 () Bool)

(declare-fun apply!933 (ListLongMap!13733 (_ BitVec 64)) V!36067)

(assert (=> b!990947 (= e!558823 (= (apply!933 lt!439706 (select (arr!30135 _keys!1544) from!1932)) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990947 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30614 _values!1278)))))

(assert (=> b!990947 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun bm!42036 () Bool)

(declare-fun contains!5735 (ListLongMap!13733 (_ BitVec 64)) Bool)

(assert (=> bm!42036 (= call!42039 (contains!5735 lt!439706 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!42037 () Bool)

(declare-fun call!42040 () Bool)

(assert (=> bm!42037 (= call!42040 (contains!5735 lt!439706 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990948 () Bool)

(declare-fun e!558827 () ListLongMap!13733)

(declare-fun call!42045 () ListLongMap!13733)

(assert (=> b!990948 (= e!558827 call!42045)))

(declare-fun bm!42038 () Bool)

(declare-fun call!42043 () ListLongMap!13733)

(declare-fun call!42042 () ListLongMap!13733)

(assert (=> bm!42038 (= call!42043 call!42042)))

(declare-fun b!990949 () Bool)

(declare-fun e!558825 () Bool)

(assert (=> b!990949 (= e!558825 (= (apply!933 lt!439706 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!990951 () Bool)

(assert (=> b!990951 (= e!558827 call!42043)))

(declare-fun b!990952 () Bool)

(declare-fun e!558832 () ListLongMap!13733)

(assert (=> b!990952 (= e!558832 (+!3056 call!42042 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun call!42041 () ListLongMap!13733)

(declare-fun c!100467 () Bool)

(declare-fun bm!42039 () Bool)

(declare-fun call!42044 () ListLongMap!13733)

(declare-fun c!100466 () Bool)

(assert (=> bm!42039 (= call!42042 (+!3056 (ite c!100467 call!42041 (ite c!100466 call!42044 call!42045)) (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun bm!42040 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3526 (array!62577 array!62575 (_ BitVec 32) (_ BitVec 32) V!36067 V!36067 (_ BitVec 32) Int) ListLongMap!13733)

(assert (=> bm!42040 (= call!42041 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun b!990953 () Bool)

(declare-fun e!558821 () Bool)

(assert (=> b!990953 (= e!558821 e!558825)))

(declare-fun res!662632 () Bool)

(assert (=> b!990953 (= res!662632 call!42040)))

(assert (=> b!990953 (=> (not res!662632) (not e!558825))))

(declare-fun bm!42041 () Bool)

(assert (=> bm!42041 (= call!42045 call!42044)))

(declare-fun b!990954 () Bool)

(declare-fun res!662629 () Bool)

(declare-fun e!558822 () Bool)

(assert (=> b!990954 (=> (not res!662629) (not e!558822))))

(declare-fun e!558826 () Bool)

(assert (=> b!990954 (= res!662629 e!558826)))

(declare-fun res!662628 () Bool)

(assert (=> b!990954 (=> res!662628 e!558826)))

(declare-fun e!558831 () Bool)

(assert (=> b!990954 (= res!662628 (not e!558831))))

(declare-fun res!662627 () Bool)

(assert (=> b!990954 (=> (not res!662627) (not e!558831))))

(assert (=> b!990954 (= res!662627 (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun b!990955 () Bool)

(declare-fun e!558830 () Bool)

(assert (=> b!990955 (= e!558830 (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)))))

(declare-fun b!990956 () Bool)

(declare-datatypes ((Unit!32837 0))(
  ( (Unit!32838) )
))
(declare-fun e!558828 () Unit!32837)

(declare-fun lt!439714 () Unit!32837)

(assert (=> b!990956 (= e!558828 lt!439714)))

(declare-fun lt!439713 () ListLongMap!13733)

(assert (=> b!990956 (= lt!439713 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439712 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439712 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439725 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439725 (select (arr!30135 _keys!1544) from!1932))))

(declare-fun lt!439715 () Unit!32837)

(declare-fun addStillContains!621 (ListLongMap!13733 (_ BitVec 64) V!36067 (_ BitVec 64)) Unit!32837)

(assert (=> b!990956 (= lt!439715 (addStillContains!621 lt!439713 lt!439712 zeroValue!1220 lt!439725))))

(assert (=> b!990956 (contains!5735 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220)) lt!439725)))

(declare-fun lt!439721 () Unit!32837)

(assert (=> b!990956 (= lt!439721 lt!439715)))

(declare-fun lt!439720 () ListLongMap!13733)

(assert (=> b!990956 (= lt!439720 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439710 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439710 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439711 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439711 (select (arr!30135 _keys!1544) from!1932))))

(declare-fun lt!439718 () Unit!32837)

(declare-fun addApplyDifferent!473 (ListLongMap!13733 (_ BitVec 64) V!36067 (_ BitVec 64)) Unit!32837)

(assert (=> b!990956 (= lt!439718 (addApplyDifferent!473 lt!439720 lt!439710 minValue!1220 lt!439711))))

(assert (=> b!990956 (= (apply!933 (+!3056 lt!439720 (tuple2!15023 lt!439710 minValue!1220)) lt!439711) (apply!933 lt!439720 lt!439711))))

(declare-fun lt!439705 () Unit!32837)

(assert (=> b!990956 (= lt!439705 lt!439718)))

(declare-fun lt!439726 () ListLongMap!13733)

(assert (=> b!990956 (= lt!439726 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439707 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439707 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439723 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439723 (select (arr!30135 _keys!1544) from!1932))))

(declare-fun lt!439716 () Unit!32837)

(assert (=> b!990956 (= lt!439716 (addApplyDifferent!473 lt!439726 lt!439707 zeroValue!1220 lt!439723))))

(assert (=> b!990956 (= (apply!933 (+!3056 lt!439726 (tuple2!15023 lt!439707 zeroValue!1220)) lt!439723) (apply!933 lt!439726 lt!439723))))

(declare-fun lt!439722 () Unit!32837)

(assert (=> b!990956 (= lt!439722 lt!439716)))

(declare-fun lt!439708 () ListLongMap!13733)

(assert (=> b!990956 (= lt!439708 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281))))

(declare-fun lt!439709 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439709 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439717 () (_ BitVec 64))

(assert (=> b!990956 (= lt!439717 (select (arr!30135 _keys!1544) from!1932))))

(assert (=> b!990956 (= lt!439714 (addApplyDifferent!473 lt!439708 lt!439709 minValue!1220 lt!439717))))

(assert (=> b!990956 (= (apply!933 (+!3056 lt!439708 (tuple2!15023 lt!439709 minValue!1220)) lt!439717) (apply!933 lt!439708 lt!439717))))

(declare-fun b!990957 () Bool)

(assert (=> b!990957 (= e!558831 (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)))))

(declare-fun b!990958 () Bool)

(assert (=> b!990958 (= e!558829 (= (apply!933 lt!439706 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun b!990959 () Bool)

(declare-fun Unit!32839 () Unit!32837)

(assert (=> b!990959 (= e!558828 Unit!32839)))

(declare-fun b!990960 () Bool)

(declare-fun e!558824 () ListLongMap!13733)

(assert (=> b!990960 (= e!558824 call!42043)))

(declare-fun b!990961 () Bool)

(declare-fun res!662626 () Bool)

(assert (=> b!990961 (=> (not res!662626) (not e!558822))))

(assert (=> b!990961 (= res!662626 e!558821)))

(declare-fun c!100464 () Bool)

(assert (=> b!990961 (= c!100464 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!990950 () Bool)

(declare-fun c!100468 () Bool)

(assert (=> b!990950 (= c!100468 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!990950 (= e!558824 e!558827)))

(declare-fun d!117707 () Bool)

(assert (=> d!117707 e!558822))

(declare-fun res!662630 () Bool)

(assert (=> d!117707 (=> (not res!662630) (not e!558822))))

(assert (=> d!117707 (= res!662630 (or (bvsge from!1932 (size!30615 _keys!1544)) (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544)))))))

(declare-fun lt!439719 () ListLongMap!13733)

(assert (=> d!117707 (= lt!439706 lt!439719)))

(declare-fun lt!439724 () Unit!32837)

(assert (=> d!117707 (= lt!439724 e!558828)))

(declare-fun c!100463 () Bool)

(assert (=> d!117707 (= c!100463 e!558830)))

(declare-fun res!662624 () Bool)

(assert (=> d!117707 (=> (not res!662624) (not e!558830))))

(assert (=> d!117707 (= res!662624 (bvslt from!1932 (size!30615 _keys!1544)))))

(assert (=> d!117707 (= lt!439719 e!558832)))

(assert (=> d!117707 (= c!100467 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117707 (validMask!0 mask!1948)))

(assert (=> d!117707 (= (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!439706)))

(declare-fun b!990962 () Bool)

(assert (=> b!990962 (= e!558826 e!558823)))

(declare-fun res!662625 () Bool)

(assert (=> b!990962 (=> (not res!662625) (not e!558823))))

(assert (=> b!990962 (= res!662625 (contains!5735 lt!439706 (select (arr!30135 _keys!1544) from!1932)))))

(assert (=> b!990962 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun b!990963 () Bool)

(assert (=> b!990963 (= e!558821 (not call!42040))))

(declare-fun b!990964 () Bool)

(assert (=> b!990964 (= e!558820 (not call!42039))))

(declare-fun b!990965 () Bool)

(assert (=> b!990965 (= e!558832 e!558824)))

(assert (=> b!990965 (= c!100466 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!42042 () Bool)

(assert (=> bm!42042 (= call!42044 call!42041)))

(declare-fun b!990966 () Bool)

(assert (=> b!990966 (= e!558822 e!558820)))

(declare-fun c!100465 () Bool)

(assert (=> b!990966 (= c!100465 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!117707 c!100467) b!990952))

(assert (= (and d!117707 (not c!100467)) b!990965))

(assert (= (and b!990965 c!100466) b!990960))

(assert (= (and b!990965 (not c!100466)) b!990950))

(assert (= (and b!990950 c!100468) b!990951))

(assert (= (and b!990950 (not c!100468)) b!990948))

(assert (= (or b!990951 b!990948) bm!42041))

(assert (= (or b!990960 bm!42041) bm!42042))

(assert (= (or b!990960 b!990951) bm!42038))

(assert (= (or b!990952 bm!42042) bm!42040))

(assert (= (or b!990952 bm!42038) bm!42039))

(assert (= (and d!117707 res!662624) b!990955))

(assert (= (and d!117707 c!100463) b!990956))

(assert (= (and d!117707 (not c!100463)) b!990959))

(assert (= (and d!117707 res!662630) b!990954))

(assert (= (and b!990954 res!662627) b!990957))

(assert (= (and b!990954 (not res!662628)) b!990962))

(assert (= (and b!990962 res!662625) b!990947))

(assert (= (and b!990954 res!662629) b!990961))

(assert (= (and b!990961 c!100464) b!990953))

(assert (= (and b!990961 (not c!100464)) b!990963))

(assert (= (and b!990953 res!662632) b!990949))

(assert (= (or b!990953 b!990963) bm!42037))

(assert (= (and b!990961 res!662626) b!990966))

(assert (= (and b!990966 c!100465) b!990946))

(assert (= (and b!990966 (not c!100465)) b!990964))

(assert (= (and b!990946 res!662631) b!990958))

(assert (= (or b!990946 b!990964) bm!42036))

(declare-fun b_lambda!15235 () Bool)

(assert (=> (not b_lambda!15235) (not b!990947)))

(assert (=> b!990947 t!29960))

(declare-fun b_and!32295 () Bool)

(assert (= b_and!32289 (and (=> t!29960 result!13673) b_and!32295)))

(assert (=> b!990947 m!918729))

(assert (=> b!990947 m!918737))

(assert (=> b!990947 m!918739))

(assert (=> b!990947 m!918729))

(assert (=> b!990947 m!918713))

(assert (=> b!990947 m!918737))

(assert (=> b!990947 m!918713))

(declare-fun m!918769 () Bool)

(assert (=> b!990947 m!918769))

(declare-fun m!918771 () Bool)

(assert (=> b!990949 m!918771))

(declare-fun m!918773 () Bool)

(assert (=> bm!42036 m!918773))

(declare-fun m!918775 () Bool)

(assert (=> bm!42039 m!918775))

(declare-fun m!918777 () Bool)

(assert (=> bm!42037 m!918777))

(assert (=> b!990957 m!918713))

(assert (=> b!990957 m!918713))

(assert (=> b!990957 m!918715))

(assert (=> b!990962 m!918713))

(assert (=> b!990962 m!918713))

(declare-fun m!918779 () Bool)

(assert (=> b!990962 m!918779))

(declare-fun m!918781 () Bool)

(assert (=> b!990952 m!918781))

(declare-fun m!918783 () Bool)

(assert (=> b!990958 m!918783))

(assert (=> d!117707 m!918723))

(declare-fun m!918785 () Bool)

(assert (=> b!990956 m!918785))

(declare-fun m!918787 () Bool)

(assert (=> b!990956 m!918787))

(declare-fun m!918789 () Bool)

(assert (=> b!990956 m!918789))

(declare-fun m!918791 () Bool)

(assert (=> b!990956 m!918791))

(declare-fun m!918793 () Bool)

(assert (=> b!990956 m!918793))

(declare-fun m!918795 () Bool)

(assert (=> b!990956 m!918795))

(declare-fun m!918797 () Bool)

(assert (=> b!990956 m!918797))

(declare-fun m!918799 () Bool)

(assert (=> b!990956 m!918799))

(declare-fun m!918801 () Bool)

(assert (=> b!990956 m!918801))

(assert (=> b!990956 m!918797))

(declare-fun m!918803 () Bool)

(assert (=> b!990956 m!918803))

(declare-fun m!918805 () Bool)

(assert (=> b!990956 m!918805))

(assert (=> b!990956 m!918793))

(assert (=> b!990956 m!918791))

(declare-fun m!918807 () Bool)

(assert (=> b!990956 m!918807))

(assert (=> b!990956 m!918785))

(assert (=> b!990956 m!918713))

(declare-fun m!918809 () Bool)

(assert (=> b!990956 m!918809))

(declare-fun m!918811 () Bool)

(assert (=> b!990956 m!918811))

(declare-fun m!918813 () Bool)

(assert (=> b!990956 m!918813))

(declare-fun m!918815 () Bool)

(assert (=> b!990956 m!918815))

(assert (=> bm!42040 m!918813))

(assert (=> b!990955 m!918713))

(assert (=> b!990955 m!918713))

(assert (=> b!990955 m!918715))

(assert (=> b!990862 d!117707))

(declare-fun d!117709 () Bool)

(declare-fun e!558835 () Bool)

(assert (=> d!117709 e!558835))

(declare-fun res!662637 () Bool)

(assert (=> d!117709 (=> (not res!662637) (not e!558835))))

(declare-fun lt!439735 () ListLongMap!13733)

(assert (=> d!117709 (= res!662637 (contains!5735 lt!439735 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!439736 () List!20972)

(assert (=> d!117709 (= lt!439735 (ListLongMap!13734 lt!439736))))

(declare-fun lt!439737 () Unit!32837)

(declare-fun lt!439738 () Unit!32837)

(assert (=> d!117709 (= lt!439737 lt!439738)))

(declare-datatypes ((Option!524 0))(
  ( (Some!523 (v!14282 V!36067)) (None!522) )
))
(declare-fun getValueByKey!518 (List!20972 (_ BitVec 64)) Option!524)

(assert (=> d!117709 (= (getValueByKey!518 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!523 (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!275 (List!20972 (_ BitVec 64) V!36067) Unit!32837)

(assert (=> d!117709 (= lt!439738 (lemmaContainsTupThenGetReturnValue!275 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!331 (List!20972 (_ BitVec 64) V!36067) List!20972)

(assert (=> d!117709 (= lt!439736 (insertStrictlySorted!331 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117709 (= (+!3056 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!439735)))

(declare-fun b!990971 () Bool)

(declare-fun res!662638 () Bool)

(assert (=> b!990971 (=> (not res!662638) (not e!558835))))

(assert (=> b!990971 (= res!662638 (= (getValueByKey!518 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!523 (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!990972 () Bool)

(declare-fun contains!5736 (List!20972 tuple2!15022) Bool)

(assert (=> b!990972 (= e!558835 (contains!5736 (toList!6882 lt!439735) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!117709 res!662637) b!990971))

(assert (= (and b!990971 res!662638) b!990972))

(declare-fun m!918817 () Bool)

(assert (=> d!117709 m!918817))

(declare-fun m!918819 () Bool)

(assert (=> d!117709 m!918819))

(declare-fun m!918821 () Bool)

(assert (=> d!117709 m!918821))

(declare-fun m!918823 () Bool)

(assert (=> d!117709 m!918823))

(declare-fun m!918825 () Bool)

(assert (=> b!990971 m!918825))

(declare-fun m!918827 () Bool)

(assert (=> b!990972 m!918827))

(assert (=> b!990862 d!117709))

(declare-fun b!990973 () Bool)

(declare-fun e!558836 () Bool)

(declare-fun e!558845 () Bool)

(assert (=> b!990973 (= e!558836 e!558845)))

(declare-fun res!662646 () Bool)

(declare-fun call!42046 () Bool)

(assert (=> b!990973 (= res!662646 call!42046)))

(assert (=> b!990973 (=> (not res!662646) (not e!558845))))

(declare-fun lt!439740 () ListLongMap!13733)

(declare-fun b!990974 () Bool)

(declare-fun e!558839 () Bool)

(assert (=> b!990974 (= e!558839 (= (apply!933 lt!439740 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15664 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990974 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30614 _values!1278)))))

(assert (=> b!990974 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun bm!42043 () Bool)

(assert (=> bm!42043 (= call!42046 (contains!5735 lt!439740 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!42044 () Bool)

(declare-fun call!42047 () Bool)

(assert (=> bm!42044 (= call!42047 (contains!5735 lt!439740 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!990975 () Bool)

(declare-fun e!558843 () ListLongMap!13733)

(declare-fun call!42052 () ListLongMap!13733)

(assert (=> b!990975 (= e!558843 call!42052)))

(declare-fun bm!42045 () Bool)

(declare-fun call!42050 () ListLongMap!13733)

(declare-fun call!42049 () ListLongMap!13733)

(assert (=> bm!42045 (= call!42050 call!42049)))

(declare-fun b!990976 () Bool)

(declare-fun e!558841 () Bool)

(assert (=> b!990976 (= e!558841 (= (apply!933 lt!439740 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1220))))

(declare-fun b!990978 () Bool)

(assert (=> b!990978 (= e!558843 call!42050)))

(declare-fun b!990979 () Bool)

(declare-fun e!558848 () ListLongMap!13733)

(assert (=> b!990979 (= e!558848 (+!3056 call!42049 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun c!100472 () Bool)

(declare-fun call!42048 () ListLongMap!13733)

(declare-fun call!42051 () ListLongMap!13733)

(declare-fun bm!42046 () Bool)

(declare-fun c!100473 () Bool)

(assert (=> bm!42046 (= call!42049 (+!3056 (ite c!100473 call!42048 (ite c!100472 call!42051 call!42052)) (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun bm!42047 () Bool)

(assert (=> bm!42047 (= call!42048 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990980 () Bool)

(declare-fun e!558837 () Bool)

(assert (=> b!990980 (= e!558837 e!558841)))

(declare-fun res!662647 () Bool)

(assert (=> b!990980 (= res!662647 call!42047)))

(assert (=> b!990980 (=> (not res!662647) (not e!558841))))

(declare-fun bm!42048 () Bool)

(assert (=> bm!42048 (= call!42052 call!42051)))

(declare-fun b!990981 () Bool)

(declare-fun res!662644 () Bool)

(declare-fun e!558838 () Bool)

(assert (=> b!990981 (=> (not res!662644) (not e!558838))))

(declare-fun e!558842 () Bool)

(assert (=> b!990981 (= res!662644 e!558842)))

(declare-fun res!662643 () Bool)

(assert (=> b!990981 (=> res!662643 e!558842)))

(declare-fun e!558847 () Bool)

(assert (=> b!990981 (= res!662643 (not e!558847))))

(declare-fun res!662642 () Bool)

(assert (=> b!990981 (=> (not res!662642) (not e!558847))))

(assert (=> b!990981 (= res!662642 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun b!990982 () Bool)

(declare-fun e!558846 () Bool)

(assert (=> b!990982 (= e!558846 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990983 () Bool)

(declare-fun e!558844 () Unit!32837)

(declare-fun lt!439748 () Unit!32837)

(assert (=> b!990983 (= e!558844 lt!439748)))

(declare-fun lt!439747 () ListLongMap!13733)

(assert (=> b!990983 (= lt!439747 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439746 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439759 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439759 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439749 () Unit!32837)

(assert (=> b!990983 (= lt!439749 (addStillContains!621 lt!439747 lt!439746 zeroValue!1220 lt!439759))))

(assert (=> b!990983 (contains!5735 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220)) lt!439759)))

(declare-fun lt!439755 () Unit!32837)

(assert (=> b!990983 (= lt!439755 lt!439749)))

(declare-fun lt!439754 () ListLongMap!13733)

(assert (=> b!990983 (= lt!439754 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439744 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439744 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439745 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439745 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439752 () Unit!32837)

(assert (=> b!990983 (= lt!439752 (addApplyDifferent!473 lt!439754 lt!439744 minValue!1220 lt!439745))))

(assert (=> b!990983 (= (apply!933 (+!3056 lt!439754 (tuple2!15023 lt!439744 minValue!1220)) lt!439745) (apply!933 lt!439754 lt!439745))))

(declare-fun lt!439739 () Unit!32837)

(assert (=> b!990983 (= lt!439739 lt!439752)))

(declare-fun lt!439760 () ListLongMap!13733)

(assert (=> b!990983 (= lt!439760 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439741 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439741 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439757 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439757 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun lt!439750 () Unit!32837)

(assert (=> b!990983 (= lt!439750 (addApplyDifferent!473 lt!439760 lt!439741 zeroValue!1220 lt!439757))))

(assert (=> b!990983 (= (apply!933 (+!3056 lt!439760 (tuple2!15023 lt!439741 zeroValue!1220)) lt!439757) (apply!933 lt!439760 lt!439757))))

(declare-fun lt!439756 () Unit!32837)

(assert (=> b!990983 (= lt!439756 lt!439750)))

(declare-fun lt!439742 () ListLongMap!13733)

(assert (=> b!990983 (= lt!439742 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439743 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439743 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!439751 () (_ BitVec 64))

(assert (=> b!990983 (= lt!439751 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!990983 (= lt!439748 (addApplyDifferent!473 lt!439742 lt!439743 minValue!1220 lt!439751))))

(assert (=> b!990983 (= (apply!933 (+!3056 lt!439742 (tuple2!15023 lt!439743 minValue!1220)) lt!439751) (apply!933 lt!439742 lt!439751))))

(declare-fun b!990984 () Bool)

(assert (=> b!990984 (= e!558847 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!990985 () Bool)

(assert (=> b!990985 (= e!558845 (= (apply!933 lt!439740 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1220))))

(declare-fun b!990986 () Bool)

(declare-fun Unit!32840 () Unit!32837)

(assert (=> b!990986 (= e!558844 Unit!32840)))

(declare-fun b!990987 () Bool)

(declare-fun e!558840 () ListLongMap!13733)

(assert (=> b!990987 (= e!558840 call!42050)))

(declare-fun b!990988 () Bool)

(declare-fun res!662641 () Bool)

(assert (=> b!990988 (=> (not res!662641) (not e!558838))))

(assert (=> b!990988 (= res!662641 e!558837)))

(declare-fun c!100470 () Bool)

(assert (=> b!990988 (= c!100470 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!990977 () Bool)

(declare-fun c!100474 () Bool)

(assert (=> b!990977 (= c!100474 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!990977 (= e!558840 e!558843)))

(declare-fun d!117711 () Bool)

(assert (=> d!117711 e!558838))

(declare-fun res!662645 () Bool)

(assert (=> d!117711 (=> (not res!662645) (not e!558838))))

(assert (=> d!117711 (= res!662645 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))))

(declare-fun lt!439753 () ListLongMap!13733)

(assert (=> d!117711 (= lt!439740 lt!439753)))

(declare-fun lt!439758 () Unit!32837)

(assert (=> d!117711 (= lt!439758 e!558844)))

(declare-fun c!100469 () Bool)

(assert (=> d!117711 (= c!100469 e!558846)))

(declare-fun res!662639 () Bool)

(assert (=> d!117711 (=> (not res!662639) (not e!558846))))

(assert (=> d!117711 (= res!662639 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(assert (=> d!117711 (= lt!439753 e!558848)))

(assert (=> d!117711 (= c!100473 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!117711 (validMask!0 mask!1948)))

(assert (=> d!117711 (= (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439740)))

(declare-fun b!990989 () Bool)

(assert (=> b!990989 (= e!558842 e!558839)))

(declare-fun res!662640 () Bool)

(assert (=> b!990989 (=> (not res!662640) (not e!558839))))

(assert (=> b!990989 (= res!662640 (contains!5735 lt!439740 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!990989 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun b!990990 () Bool)

(assert (=> b!990990 (= e!558837 (not call!42047))))

(declare-fun b!990991 () Bool)

(assert (=> b!990991 (= e!558836 (not call!42046))))

(declare-fun b!990992 () Bool)

(assert (=> b!990992 (= e!558848 e!558840)))

(assert (=> b!990992 (= c!100472 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!42049 () Bool)

(assert (=> bm!42049 (= call!42051 call!42048)))

(declare-fun b!990993 () Bool)

(assert (=> b!990993 (= e!558838 e!558836)))

(declare-fun c!100471 () Bool)

(assert (=> b!990993 (= c!100471 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!117711 c!100473) b!990979))

(assert (= (and d!117711 (not c!100473)) b!990992))

(assert (= (and b!990992 c!100472) b!990987))

(assert (= (and b!990992 (not c!100472)) b!990977))

(assert (= (and b!990977 c!100474) b!990978))

(assert (= (and b!990977 (not c!100474)) b!990975))

(assert (= (or b!990978 b!990975) bm!42048))

(assert (= (or b!990987 bm!42048) bm!42049))

(assert (= (or b!990987 b!990978) bm!42045))

(assert (= (or b!990979 bm!42049) bm!42047))

(assert (= (or b!990979 bm!42045) bm!42046))

(assert (= (and d!117711 res!662639) b!990982))

(assert (= (and d!117711 c!100469) b!990983))

(assert (= (and d!117711 (not c!100469)) b!990986))

(assert (= (and d!117711 res!662645) b!990981))

(assert (= (and b!990981 res!662642) b!990984))

(assert (= (and b!990981 (not res!662643)) b!990989))

(assert (= (and b!990989 res!662640) b!990974))

(assert (= (and b!990981 res!662644) b!990988))

(assert (= (and b!990988 c!100470) b!990980))

(assert (= (and b!990988 (not c!100470)) b!990990))

(assert (= (and b!990980 res!662647) b!990976))

(assert (= (or b!990980 b!990990) bm!42044))

(assert (= (and b!990988 res!662641) b!990993))

(assert (= (and b!990993 c!100471) b!990973))

(assert (= (and b!990993 (not c!100471)) b!990991))

(assert (= (and b!990973 res!662646) b!990985))

(assert (= (or b!990973 b!990991) bm!42043))

(declare-fun b_lambda!15237 () Bool)

(assert (=> (not b_lambda!15237) (not b!990974)))

(assert (=> b!990974 t!29960))

(declare-fun b_and!32297 () Bool)

(assert (= b_and!32295 (and (=> t!29960 result!13673) b_and!32297)))

(declare-fun m!918829 () Bool)

(assert (=> b!990974 m!918829))

(assert (=> b!990974 m!918737))

(declare-fun m!918831 () Bool)

(assert (=> b!990974 m!918831))

(assert (=> b!990974 m!918829))

(declare-fun m!918833 () Bool)

(assert (=> b!990974 m!918833))

(assert (=> b!990974 m!918737))

(assert (=> b!990974 m!918833))

(declare-fun m!918835 () Bool)

(assert (=> b!990974 m!918835))

(declare-fun m!918837 () Bool)

(assert (=> b!990976 m!918837))

(declare-fun m!918839 () Bool)

(assert (=> bm!42043 m!918839))

(declare-fun m!918841 () Bool)

(assert (=> bm!42046 m!918841))

(declare-fun m!918843 () Bool)

(assert (=> bm!42044 m!918843))

(assert (=> b!990984 m!918833))

(assert (=> b!990984 m!918833))

(declare-fun m!918845 () Bool)

(assert (=> b!990984 m!918845))

(assert (=> b!990989 m!918833))

(assert (=> b!990989 m!918833))

(declare-fun m!918847 () Bool)

(assert (=> b!990989 m!918847))

(declare-fun m!918849 () Bool)

(assert (=> b!990979 m!918849))

(declare-fun m!918851 () Bool)

(assert (=> b!990985 m!918851))

(assert (=> d!117711 m!918723))

(declare-fun m!918853 () Bool)

(assert (=> b!990983 m!918853))

(declare-fun m!918855 () Bool)

(assert (=> b!990983 m!918855))

(declare-fun m!918857 () Bool)

(assert (=> b!990983 m!918857))

(declare-fun m!918859 () Bool)

(assert (=> b!990983 m!918859))

(declare-fun m!918861 () Bool)

(assert (=> b!990983 m!918861))

(declare-fun m!918863 () Bool)

(assert (=> b!990983 m!918863))

(declare-fun m!918865 () Bool)

(assert (=> b!990983 m!918865))

(declare-fun m!918867 () Bool)

(assert (=> b!990983 m!918867))

(declare-fun m!918869 () Bool)

(assert (=> b!990983 m!918869))

(assert (=> b!990983 m!918865))

(declare-fun m!918871 () Bool)

(assert (=> b!990983 m!918871))

(declare-fun m!918873 () Bool)

(assert (=> b!990983 m!918873))

(assert (=> b!990983 m!918861))

(assert (=> b!990983 m!918859))

(declare-fun m!918875 () Bool)

(assert (=> b!990983 m!918875))

(assert (=> b!990983 m!918853))

(assert (=> b!990983 m!918833))

(declare-fun m!918877 () Bool)

(assert (=> b!990983 m!918877))

(declare-fun m!918879 () Bool)

(assert (=> b!990983 m!918879))

(declare-fun m!918881 () Bool)

(assert (=> b!990983 m!918881))

(declare-fun m!918883 () Bool)

(assert (=> b!990983 m!918883))

(assert (=> bm!42047 m!918881))

(assert (=> b!990982 m!918833))

(assert (=> b!990982 m!918833))

(assert (=> b!990982 m!918845))

(assert (=> b!990862 d!117711))

(declare-fun d!117713 () Bool)

(declare-fun c!100477 () Bool)

(assert (=> d!117713 (= c!100477 ((_ is ValueCellFull!11175) (select (arr!30134 _values!1278) from!1932)))))

(declare-fun e!558851 () V!36067)

(assert (=> d!117713 (= (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!558851)))

(declare-fun b!990998 () Bool)

(declare-fun get!15665 (ValueCell!11175 V!36067) V!36067)

(assert (=> b!990998 (= e!558851 (get!15665 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!990999 () Bool)

(declare-fun get!15666 (ValueCell!11175 V!36067) V!36067)

(assert (=> b!990999 (= e!558851 (get!15666 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117713 c!100477) b!990998))

(assert (= (and d!117713 (not c!100477)) b!990999))

(assert (=> b!990998 m!918729))

(assert (=> b!990998 m!918737))

(declare-fun m!918885 () Bool)

(assert (=> b!990998 m!918885))

(assert (=> b!990999 m!918729))

(assert (=> b!990999 m!918737))

(declare-fun m!918887 () Bool)

(assert (=> b!990999 m!918887))

(assert (=> b!990862 d!117713))

(declare-fun d!117715 () Bool)

(assert (=> d!117715 (= (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)) (and (not (= (select (arr!30135 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30135 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990866 d!117715))

(declare-fun bm!42052 () Bool)

(declare-fun call!42055 () Bool)

(declare-fun c!100480 () Bool)

(assert (=> bm!42052 (= call!42055 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100480 (Cons!20969 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) Nil!20970) Nil!20970)))))

(declare-fun b!991010 () Bool)

(declare-fun e!558861 () Bool)

(declare-fun e!558862 () Bool)

(assert (=> b!991010 (= e!558861 e!558862)))

(assert (=> b!991010 (= c!100480 (validKeyInArray!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!991011 () Bool)

(assert (=> b!991011 (= e!558862 call!42055)))

(declare-fun b!991012 () Bool)

(declare-fun e!558860 () Bool)

(assert (=> b!991012 (= e!558860 e!558861)))

(declare-fun res!662656 () Bool)

(assert (=> b!991012 (=> (not res!662656) (not e!558861))))

(declare-fun e!558863 () Bool)

(assert (=> b!991012 (= res!662656 (not e!558863))))

(declare-fun res!662655 () Bool)

(assert (=> b!991012 (=> (not res!662655) (not e!558863))))

(assert (=> b!991012 (= res!662655 (validKeyInArray!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!991013 () Bool)

(assert (=> b!991013 (= e!558862 call!42055)))

(declare-fun b!991014 () Bool)

(declare-fun contains!5737 (List!20973 (_ BitVec 64)) Bool)

(assert (=> b!991014 (= e!558863 (contains!5737 Nil!20970 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117717 () Bool)

(declare-fun res!662654 () Bool)

(assert (=> d!117717 (=> res!662654 e!558860)))

(assert (=> d!117717 (= res!662654 (bvsge #b00000000000000000000000000000000 (size!30615 _keys!1544)))))

(assert (=> d!117717 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20970) e!558860)))

(assert (= (and d!117717 (not res!662654)) b!991012))

(assert (= (and b!991012 res!662655) b!991014))

(assert (= (and b!991012 res!662656) b!991010))

(assert (= (and b!991010 c!100480) b!991013))

(assert (= (and b!991010 (not c!100480)) b!991011))

(assert (= (or b!991013 b!991011) bm!42052))

(declare-fun m!918889 () Bool)

(assert (=> bm!42052 m!918889))

(declare-fun m!918891 () Bool)

(assert (=> bm!42052 m!918891))

(assert (=> b!991010 m!918889))

(assert (=> b!991010 m!918889))

(declare-fun m!918893 () Bool)

(assert (=> b!991010 m!918893))

(assert (=> b!991012 m!918889))

(assert (=> b!991012 m!918889))

(assert (=> b!991012 m!918893))

(assert (=> b!991014 m!918889))

(assert (=> b!991014 m!918889))

(declare-fun m!918895 () Bool)

(assert (=> b!991014 m!918895))

(assert (=> b!990867 d!117717))

(declare-fun bm!42055 () Bool)

(declare-fun call!42058 () Bool)

(assert (=> bm!42055 (= call!42058 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!991023 () Bool)

(declare-fun e!558871 () Bool)

(assert (=> b!991023 (= e!558871 call!42058)))

(declare-fun b!991024 () Bool)

(declare-fun e!558870 () Bool)

(assert (=> b!991024 (= e!558870 call!42058)))

(declare-fun d!117719 () Bool)

(declare-fun res!662661 () Bool)

(declare-fun e!558872 () Bool)

(assert (=> d!117719 (=> res!662661 e!558872)))

(assert (=> d!117719 (= res!662661 (bvsge #b00000000000000000000000000000000 (size!30615 _keys!1544)))))

(assert (=> d!117719 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!558872)))

(declare-fun b!991025 () Bool)

(assert (=> b!991025 (= e!558870 e!558871)))

(declare-fun lt!439768 () (_ BitVec 64))

(assert (=> b!991025 (= lt!439768 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!439767 () Unit!32837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62577 (_ BitVec 64) (_ BitVec 32)) Unit!32837)

(assert (=> b!991025 (= lt!439767 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439768 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991025 (arrayContainsKey!0 _keys!1544 lt!439768 #b00000000000000000000000000000000)))

(declare-fun lt!439769 () Unit!32837)

(assert (=> b!991025 (= lt!439769 lt!439767)))

(declare-fun res!662662 () Bool)

(declare-datatypes ((SeekEntryResult!9201 0))(
  ( (MissingZero!9201 (index!39174 (_ BitVec 32))) (Found!9201 (index!39175 (_ BitVec 32))) (Intermediate!9201 (undefined!10013 Bool) (index!39176 (_ BitVec 32)) (x!86212 (_ BitVec 32))) (Undefined!9201) (MissingVacant!9201 (index!39177 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62577 (_ BitVec 32)) SeekEntryResult!9201)

(assert (=> b!991025 (= res!662662 (= (seekEntryOrOpen!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9201 #b00000000000000000000000000000000)))))

(assert (=> b!991025 (=> (not res!662662) (not e!558871))))

(declare-fun b!991026 () Bool)

(assert (=> b!991026 (= e!558872 e!558870)))

(declare-fun c!100483 () Bool)

(assert (=> b!991026 (= c!100483 (validKeyInArray!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117719 (not res!662661)) b!991026))

(assert (= (and b!991026 c!100483) b!991025))

(assert (= (and b!991026 (not c!100483)) b!991024))

(assert (= (and b!991025 res!662662) b!991023))

(assert (= (or b!991023 b!991024) bm!42055))

(declare-fun m!918897 () Bool)

(assert (=> bm!42055 m!918897))

(assert (=> b!991025 m!918889))

(declare-fun m!918899 () Bool)

(assert (=> b!991025 m!918899))

(declare-fun m!918901 () Bool)

(assert (=> b!991025 m!918901))

(assert (=> b!991025 m!918889))

(declare-fun m!918903 () Bool)

(assert (=> b!991025 m!918903))

(assert (=> b!991026 m!918889))

(assert (=> b!991026 m!918889))

(assert (=> b!991026 m!918893))

(assert (=> b!990868 d!117719))

(declare-fun d!117721 () Bool)

(assert (=> d!117721 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84770 d!117721))

(declare-fun d!117723 () Bool)

(assert (=> d!117723 (= (array_inv!23137 _values!1278) (bvsge (size!30614 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84770 d!117723))

(declare-fun d!117725 () Bool)

(assert (=> d!117725 (= (array_inv!23138 _keys!1544) (bvsge (size!30615 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84770 d!117725))

(declare-fun mapNonEmpty!37028 () Bool)

(declare-fun mapRes!37028 () Bool)

(declare-fun tp!70100 () Bool)

(declare-fun e!558878 () Bool)

(assert (=> mapNonEmpty!37028 (= mapRes!37028 (and tp!70100 e!558878))))

(declare-fun mapKey!37028 () (_ BitVec 32))

(declare-fun mapValue!37028 () ValueCell!11175)

(declare-fun mapRest!37028 () (Array (_ BitVec 32) ValueCell!11175))

(assert (=> mapNonEmpty!37028 (= mapRest!37022 (store mapRest!37028 mapKey!37028 mapValue!37028))))

(declare-fun condMapEmpty!37028 () Bool)

(declare-fun mapDefault!37028 () ValueCell!11175)

(assert (=> mapNonEmpty!37022 (= condMapEmpty!37028 (= mapRest!37022 ((as const (Array (_ BitVec 32) ValueCell!11175)) mapDefault!37028)))))

(declare-fun e!558877 () Bool)

(assert (=> mapNonEmpty!37022 (= tp!70091 (and e!558877 mapRes!37028))))

(declare-fun b!991034 () Bool)

(assert (=> b!991034 (= e!558877 tp_is_empty!23313)))

(declare-fun mapIsEmpty!37028 () Bool)

(assert (=> mapIsEmpty!37028 mapRes!37028))

(declare-fun b!991033 () Bool)

(assert (=> b!991033 (= e!558878 tp_is_empty!23313)))

(assert (= (and mapNonEmpty!37022 condMapEmpty!37028) mapIsEmpty!37028))

(assert (= (and mapNonEmpty!37022 (not condMapEmpty!37028)) mapNonEmpty!37028))

(assert (= (and mapNonEmpty!37028 ((_ is ValueCellFull!11175) mapValue!37028)) b!991033))

(assert (= (and mapNonEmpty!37022 ((_ is ValueCellFull!11175) mapDefault!37028)) b!991034))

(declare-fun m!918905 () Bool)

(assert (=> mapNonEmpty!37028 m!918905))

(declare-fun b_lambda!15239 () Bool)

(assert (= b_lambda!15235 (or (and start!84770 b_free!20097) b_lambda!15239)))

(declare-fun b_lambda!15241 () Bool)

(assert (= b_lambda!15237 (or (and start!84770 b_free!20097) b_lambda!15241)))

(check-sat (not bm!42043) (not b_next!20097) (not bm!42039) (not b!990955) (not b!991026) (not b!990974) (not b!990985) b_and!32297 (not b_lambda!15233) (not b!990982) (not b!990956) (not d!117709) (not bm!42044) (not b!990957) (not b!990962) (not bm!42047) (not bm!42046) (not b!990983) tp_is_empty!23313 (not bm!42052) (not b!990989) (not bm!42037) (not b_lambda!15241) (not b_lambda!15239) (not b!990947) (not b!990972) (not b!990979) (not mapNonEmpty!37028) (not b!990999) (not bm!42040) (not b!991010) (not b!990971) (not bm!42055) (not b!990949) (not b!990958) (not bm!42036) (not b!990976) (not b!990952) (not b!990984) (not b!991025) (not b!990998) (not d!117711) (not b!991012) (not d!117707) (not b!991014))
(check-sat b_and!32297 (not b_next!20097))
(get-model)

(declare-fun d!117727 () Bool)

(declare-fun get!15667 (Option!524) V!36067)

(assert (=> d!117727 (= (apply!933 (+!3056 lt!439754 (tuple2!15023 lt!439744 minValue!1220)) lt!439745) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439754 (tuple2!15023 lt!439744 minValue!1220))) lt!439745)))))

(declare-fun bs!28145 () Bool)

(assert (= bs!28145 d!117727))

(declare-fun m!918907 () Bool)

(assert (=> bs!28145 m!918907))

(assert (=> bs!28145 m!918907))

(declare-fun m!918909 () Bool)

(assert (=> bs!28145 m!918909))

(assert (=> b!990983 d!117727))

(declare-fun d!117729 () Bool)

(assert (=> d!117729 (= (apply!933 lt!439742 lt!439751) (get!15667 (getValueByKey!518 (toList!6882 lt!439742) lt!439751)))))

(declare-fun bs!28146 () Bool)

(assert (= bs!28146 d!117729))

(declare-fun m!918911 () Bool)

(assert (=> bs!28146 m!918911))

(assert (=> bs!28146 m!918911))

(declare-fun m!918913 () Bool)

(assert (=> bs!28146 m!918913))

(assert (=> b!990983 d!117729))

(declare-fun d!117731 () Bool)

(declare-fun e!558879 () Bool)

(assert (=> d!117731 e!558879))

(declare-fun res!662663 () Bool)

(assert (=> d!117731 (=> (not res!662663) (not e!558879))))

(declare-fun lt!439770 () ListLongMap!13733)

(assert (=> d!117731 (= res!662663 (contains!5735 lt!439770 (_1!7521 (tuple2!15023 lt!439743 minValue!1220))))))

(declare-fun lt!439771 () List!20972)

(assert (=> d!117731 (= lt!439770 (ListLongMap!13734 lt!439771))))

(declare-fun lt!439772 () Unit!32837)

(declare-fun lt!439773 () Unit!32837)

(assert (=> d!117731 (= lt!439772 lt!439773)))

(assert (=> d!117731 (= (getValueByKey!518 lt!439771 (_1!7521 (tuple2!15023 lt!439743 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439743 minValue!1220))))))

(assert (=> d!117731 (= lt!439773 (lemmaContainsTupThenGetReturnValue!275 lt!439771 (_1!7521 (tuple2!15023 lt!439743 minValue!1220)) (_2!7521 (tuple2!15023 lt!439743 minValue!1220))))))

(assert (=> d!117731 (= lt!439771 (insertStrictlySorted!331 (toList!6882 lt!439742) (_1!7521 (tuple2!15023 lt!439743 minValue!1220)) (_2!7521 (tuple2!15023 lt!439743 minValue!1220))))))

(assert (=> d!117731 (= (+!3056 lt!439742 (tuple2!15023 lt!439743 minValue!1220)) lt!439770)))

(declare-fun b!991035 () Bool)

(declare-fun res!662664 () Bool)

(assert (=> b!991035 (=> (not res!662664) (not e!558879))))

(assert (=> b!991035 (= res!662664 (= (getValueByKey!518 (toList!6882 lt!439770) (_1!7521 (tuple2!15023 lt!439743 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439743 minValue!1220)))))))

(declare-fun b!991036 () Bool)

(assert (=> b!991036 (= e!558879 (contains!5736 (toList!6882 lt!439770) (tuple2!15023 lt!439743 minValue!1220)))))

(assert (= (and d!117731 res!662663) b!991035))

(assert (= (and b!991035 res!662664) b!991036))

(declare-fun m!918915 () Bool)

(assert (=> d!117731 m!918915))

(declare-fun m!918917 () Bool)

(assert (=> d!117731 m!918917))

(declare-fun m!918919 () Bool)

(assert (=> d!117731 m!918919))

(declare-fun m!918921 () Bool)

(assert (=> d!117731 m!918921))

(declare-fun m!918923 () Bool)

(assert (=> b!991035 m!918923))

(declare-fun m!918925 () Bool)

(assert (=> b!991036 m!918925))

(assert (=> b!990983 d!117731))

(declare-fun d!117733 () Bool)

(declare-fun e!558880 () Bool)

(assert (=> d!117733 e!558880))

(declare-fun res!662665 () Bool)

(assert (=> d!117733 (=> (not res!662665) (not e!558880))))

(declare-fun lt!439774 () ListLongMap!13733)

(assert (=> d!117733 (= res!662665 (contains!5735 lt!439774 (_1!7521 (tuple2!15023 lt!439746 zeroValue!1220))))))

(declare-fun lt!439775 () List!20972)

(assert (=> d!117733 (= lt!439774 (ListLongMap!13734 lt!439775))))

(declare-fun lt!439776 () Unit!32837)

(declare-fun lt!439777 () Unit!32837)

(assert (=> d!117733 (= lt!439776 lt!439777)))

(assert (=> d!117733 (= (getValueByKey!518 lt!439775 (_1!7521 (tuple2!15023 lt!439746 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439746 zeroValue!1220))))))

(assert (=> d!117733 (= lt!439777 (lemmaContainsTupThenGetReturnValue!275 lt!439775 (_1!7521 (tuple2!15023 lt!439746 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439746 zeroValue!1220))))))

(assert (=> d!117733 (= lt!439775 (insertStrictlySorted!331 (toList!6882 lt!439747) (_1!7521 (tuple2!15023 lt!439746 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439746 zeroValue!1220))))))

(assert (=> d!117733 (= (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220)) lt!439774)))

(declare-fun b!991037 () Bool)

(declare-fun res!662666 () Bool)

(assert (=> b!991037 (=> (not res!662666) (not e!558880))))

(assert (=> b!991037 (= res!662666 (= (getValueByKey!518 (toList!6882 lt!439774) (_1!7521 (tuple2!15023 lt!439746 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439746 zeroValue!1220)))))))

(declare-fun b!991038 () Bool)

(assert (=> b!991038 (= e!558880 (contains!5736 (toList!6882 lt!439774) (tuple2!15023 lt!439746 zeroValue!1220)))))

(assert (= (and d!117733 res!662665) b!991037))

(assert (= (and b!991037 res!662666) b!991038))

(declare-fun m!918927 () Bool)

(assert (=> d!117733 m!918927))

(declare-fun m!918929 () Bool)

(assert (=> d!117733 m!918929))

(declare-fun m!918931 () Bool)

(assert (=> d!117733 m!918931))

(declare-fun m!918933 () Bool)

(assert (=> d!117733 m!918933))

(declare-fun m!918935 () Bool)

(assert (=> b!991037 m!918935))

(declare-fun m!918937 () Bool)

(assert (=> b!991038 m!918937))

(assert (=> b!990983 d!117733))

(declare-fun b!991063 () Bool)

(assert (=> b!991063 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(assert (=> b!991063 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30614 _values!1278)))))

(declare-fun e!558900 () Bool)

(declare-fun lt!439794 () ListLongMap!13733)

(assert (=> b!991063 (= e!558900 (= (apply!933 lt!439794 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15664 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!991064 () Bool)

(declare-fun e!558898 () Bool)

(declare-fun isEmpty!733 (ListLongMap!13733) Bool)

(assert (=> b!991064 (= e!558898 (isEmpty!733 lt!439794))))

(declare-fun b!991065 () Bool)

(declare-fun e!558895 () Bool)

(declare-fun e!558901 () Bool)

(assert (=> b!991065 (= e!558895 e!558901)))

(declare-fun c!100493 () Bool)

(declare-fun e!558897 () Bool)

(assert (=> b!991065 (= c!100493 e!558897)))

(declare-fun res!662676 () Bool)

(assert (=> b!991065 (=> (not res!662676) (not e!558897))))

(assert (=> b!991065 (= res!662676 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun d!117735 () Bool)

(assert (=> d!117735 e!558895))

(declare-fun res!662678 () Bool)

(assert (=> d!117735 (=> (not res!662678) (not e!558895))))

(assert (=> d!117735 (= res!662678 (not (contains!5735 lt!439794 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!558899 () ListLongMap!13733)

(assert (=> d!117735 (= lt!439794 e!558899)))

(declare-fun c!100495 () Bool)

(assert (=> d!117735 (= c!100495 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(assert (=> d!117735 (validMask!0 mask!1948)))

(assert (=> d!117735 (= (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439794)))

(declare-fun b!991066 () Bool)

(assert (=> b!991066 (= e!558901 e!558900)))

(assert (=> b!991066 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun res!662677 () Bool)

(assert (=> b!991066 (= res!662677 (contains!5735 lt!439794 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!991066 (=> (not res!662677) (not e!558900))))

(declare-fun b!991067 () Bool)

(declare-fun lt!439795 () Unit!32837)

(declare-fun lt!439796 () Unit!32837)

(assert (=> b!991067 (= lt!439795 lt!439796)))

(declare-fun lt!439793 () (_ BitVec 64))

(declare-fun lt!439798 () V!36067)

(declare-fun lt!439792 () ListLongMap!13733)

(declare-fun lt!439797 () (_ BitVec 64))

(assert (=> b!991067 (not (contains!5735 (+!3056 lt!439792 (tuple2!15023 lt!439793 lt!439798)) lt!439797))))

(declare-fun addStillNotContains!239 (ListLongMap!13733 (_ BitVec 64) V!36067 (_ BitVec 64)) Unit!32837)

(assert (=> b!991067 (= lt!439796 (addStillNotContains!239 lt!439792 lt!439793 lt!439798 lt!439797))))

(assert (=> b!991067 (= lt!439797 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!991067 (= lt!439798 (get!15664 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!991067 (= lt!439793 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(declare-fun call!42061 () ListLongMap!13733)

(assert (=> b!991067 (= lt!439792 call!42061)))

(declare-fun e!558896 () ListLongMap!13733)

(assert (=> b!991067 (= e!558896 (+!3056 call!42061 (tuple2!15023 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15664 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!991068 () Bool)

(assert (=> b!991068 (= e!558901 e!558898)))

(declare-fun c!100492 () Bool)

(assert (=> b!991068 (= c!100492 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30615 _keys!1544)))))

(declare-fun b!991069 () Bool)

(assert (=> b!991069 (= e!558898 (= lt!439794 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!991070 () Bool)

(declare-fun res!662675 () Bool)

(assert (=> b!991070 (=> (not res!662675) (not e!558895))))

(assert (=> b!991070 (= res!662675 (not (contains!5735 lt!439794 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!991071 () Bool)

(assert (=> b!991071 (= e!558897 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!991071 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun bm!42058 () Bool)

(assert (=> bm!42058 (= call!42061 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!991072 () Bool)

(assert (=> b!991072 (= e!558899 e!558896)))

(declare-fun c!100494 () Bool)

(assert (=> b!991072 (= c!100494 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!991073 () Bool)

(assert (=> b!991073 (= e!558899 (ListLongMap!13734 Nil!20969))))

(declare-fun b!991074 () Bool)

(assert (=> b!991074 (= e!558896 call!42061)))

(assert (= (and d!117735 c!100495) b!991073))

(assert (= (and d!117735 (not c!100495)) b!991072))

(assert (= (and b!991072 c!100494) b!991067))

(assert (= (and b!991072 (not c!100494)) b!991074))

(assert (= (or b!991067 b!991074) bm!42058))

(assert (= (and d!117735 res!662678) b!991070))

(assert (= (and b!991070 res!662675) b!991065))

(assert (= (and b!991065 res!662676) b!991071))

(assert (= (and b!991065 c!100493) b!991066))

(assert (= (and b!991065 (not c!100493)) b!991068))

(assert (= (and b!991066 res!662677) b!991063))

(assert (= (and b!991068 c!100492) b!991069))

(assert (= (and b!991068 (not c!100492)) b!991064))

(declare-fun b_lambda!15243 () Bool)

(assert (=> (not b_lambda!15243) (not b!991063)))

(assert (=> b!991063 t!29960))

(declare-fun b_and!32299 () Bool)

(assert (= b_and!32297 (and (=> t!29960 result!13673) b_and!32299)))

(declare-fun b_lambda!15245 () Bool)

(assert (=> (not b_lambda!15245) (not b!991067)))

(assert (=> b!991067 t!29960))

(declare-fun b_and!32301 () Bool)

(assert (= b_and!32299 (and (=> t!29960 result!13673) b_and!32301)))

(assert (=> b!991063 m!918737))

(assert (=> b!991063 m!918833))

(declare-fun m!918939 () Bool)

(assert (=> b!991063 m!918939))

(assert (=> b!991063 m!918833))

(assert (=> b!991063 m!918829))

(assert (=> b!991063 m!918737))

(assert (=> b!991063 m!918831))

(assert (=> b!991063 m!918829))

(declare-fun m!918941 () Bool)

(assert (=> b!991069 m!918941))

(assert (=> b!991072 m!918833))

(assert (=> b!991072 m!918833))

(assert (=> b!991072 m!918845))

(declare-fun m!918943 () Bool)

(assert (=> b!991064 m!918943))

(assert (=> b!991067 m!918737))

(declare-fun m!918945 () Bool)

(assert (=> b!991067 m!918945))

(assert (=> b!991067 m!918829))

(assert (=> b!991067 m!918737))

(assert (=> b!991067 m!918831))

(assert (=> b!991067 m!918829))

(declare-fun m!918947 () Bool)

(assert (=> b!991067 m!918947))

(assert (=> b!991067 m!918947))

(declare-fun m!918949 () Bool)

(assert (=> b!991067 m!918949))

(declare-fun m!918951 () Bool)

(assert (=> b!991067 m!918951))

(assert (=> b!991067 m!918833))

(assert (=> b!991071 m!918833))

(assert (=> b!991071 m!918833))

(assert (=> b!991071 m!918845))

(assert (=> b!991066 m!918833))

(assert (=> b!991066 m!918833))

(declare-fun m!918953 () Bool)

(assert (=> b!991066 m!918953))

(assert (=> bm!42058 m!918941))

(declare-fun m!918955 () Bool)

(assert (=> d!117735 m!918955))

(assert (=> d!117735 m!918723))

(declare-fun m!918957 () Bool)

(assert (=> b!991070 m!918957))

(assert (=> b!990983 d!117735))

(declare-fun d!117737 () Bool)

(assert (=> d!117737 (= (apply!933 (+!3056 lt!439760 (tuple2!15023 lt!439741 zeroValue!1220)) lt!439757) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439760 (tuple2!15023 lt!439741 zeroValue!1220))) lt!439757)))))

(declare-fun bs!28147 () Bool)

(assert (= bs!28147 d!117737))

(declare-fun m!918959 () Bool)

(assert (=> bs!28147 m!918959))

(assert (=> bs!28147 m!918959))

(declare-fun m!918961 () Bool)

(assert (=> bs!28147 m!918961))

(assert (=> b!990983 d!117737))

(declare-fun d!117739 () Bool)

(declare-fun e!558907 () Bool)

(assert (=> d!117739 e!558907))

(declare-fun res!662681 () Bool)

(assert (=> d!117739 (=> res!662681 e!558907)))

(declare-fun lt!439807 () Bool)

(assert (=> d!117739 (= res!662681 (not lt!439807))))

(declare-fun lt!439810 () Bool)

(assert (=> d!117739 (= lt!439807 lt!439810)))

(declare-fun lt!439808 () Unit!32837)

(declare-fun e!558906 () Unit!32837)

(assert (=> d!117739 (= lt!439808 e!558906)))

(declare-fun c!100498 () Bool)

(assert (=> d!117739 (= c!100498 lt!439810)))

(declare-fun containsKey!481 (List!20972 (_ BitVec 64)) Bool)

(assert (=> d!117739 (= lt!439810 (containsKey!481 (toList!6882 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220))) lt!439759))))

(assert (=> d!117739 (= (contains!5735 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220)) lt!439759) lt!439807)))

(declare-fun b!991081 () Bool)

(declare-fun lt!439809 () Unit!32837)

(assert (=> b!991081 (= e!558906 lt!439809)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!376 (List!20972 (_ BitVec 64)) Unit!32837)

(assert (=> b!991081 (= lt!439809 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220))) lt!439759))))

(declare-fun isDefined!386 (Option!524) Bool)

(assert (=> b!991081 (isDefined!386 (getValueByKey!518 (toList!6882 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220))) lt!439759))))

(declare-fun b!991082 () Bool)

(declare-fun Unit!32841 () Unit!32837)

(assert (=> b!991082 (= e!558906 Unit!32841)))

(declare-fun b!991083 () Bool)

(assert (=> b!991083 (= e!558907 (isDefined!386 (getValueByKey!518 (toList!6882 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220))) lt!439759)))))

(assert (= (and d!117739 c!100498) b!991081))

(assert (= (and d!117739 (not c!100498)) b!991082))

(assert (= (and d!117739 (not res!662681)) b!991083))

(declare-fun m!918963 () Bool)

(assert (=> d!117739 m!918963))

(declare-fun m!918965 () Bool)

(assert (=> b!991081 m!918965))

(declare-fun m!918967 () Bool)

(assert (=> b!991081 m!918967))

(assert (=> b!991081 m!918967))

(declare-fun m!918969 () Bool)

(assert (=> b!991081 m!918969))

(assert (=> b!991083 m!918967))

(assert (=> b!991083 m!918967))

(assert (=> b!991083 m!918969))

(assert (=> b!990983 d!117739))

(declare-fun d!117741 () Bool)

(assert (=> d!117741 (= (apply!933 (+!3056 lt!439760 (tuple2!15023 lt!439741 zeroValue!1220)) lt!439757) (apply!933 lt!439760 lt!439757))))

(declare-fun lt!439813 () Unit!32837)

(declare-fun choose!1628 (ListLongMap!13733 (_ BitVec 64) V!36067 (_ BitVec 64)) Unit!32837)

(assert (=> d!117741 (= lt!439813 (choose!1628 lt!439760 lt!439741 zeroValue!1220 lt!439757))))

(declare-fun e!558910 () Bool)

(assert (=> d!117741 e!558910))

(declare-fun res!662684 () Bool)

(assert (=> d!117741 (=> (not res!662684) (not e!558910))))

(assert (=> d!117741 (= res!662684 (contains!5735 lt!439760 lt!439757))))

(assert (=> d!117741 (= (addApplyDifferent!473 lt!439760 lt!439741 zeroValue!1220 lt!439757) lt!439813)))

(declare-fun b!991087 () Bool)

(assert (=> b!991087 (= e!558910 (not (= lt!439757 lt!439741)))))

(assert (= (and d!117741 res!662684) b!991087))

(assert (=> d!117741 m!918853))

(assert (=> d!117741 m!918853))

(assert (=> d!117741 m!918855))

(assert (=> d!117741 m!918871))

(declare-fun m!918971 () Bool)

(assert (=> d!117741 m!918971))

(declare-fun m!918973 () Bool)

(assert (=> d!117741 m!918973))

(assert (=> b!990983 d!117741))

(declare-fun d!117743 () Bool)

(declare-fun e!558911 () Bool)

(assert (=> d!117743 e!558911))

(declare-fun res!662685 () Bool)

(assert (=> d!117743 (=> (not res!662685) (not e!558911))))

(declare-fun lt!439814 () ListLongMap!13733)

(assert (=> d!117743 (= res!662685 (contains!5735 lt!439814 (_1!7521 (tuple2!15023 lt!439744 minValue!1220))))))

(declare-fun lt!439815 () List!20972)

(assert (=> d!117743 (= lt!439814 (ListLongMap!13734 lt!439815))))

(declare-fun lt!439816 () Unit!32837)

(declare-fun lt!439817 () Unit!32837)

(assert (=> d!117743 (= lt!439816 lt!439817)))

(assert (=> d!117743 (= (getValueByKey!518 lt!439815 (_1!7521 (tuple2!15023 lt!439744 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439744 minValue!1220))))))

(assert (=> d!117743 (= lt!439817 (lemmaContainsTupThenGetReturnValue!275 lt!439815 (_1!7521 (tuple2!15023 lt!439744 minValue!1220)) (_2!7521 (tuple2!15023 lt!439744 minValue!1220))))))

(assert (=> d!117743 (= lt!439815 (insertStrictlySorted!331 (toList!6882 lt!439754) (_1!7521 (tuple2!15023 lt!439744 minValue!1220)) (_2!7521 (tuple2!15023 lt!439744 minValue!1220))))))

(assert (=> d!117743 (= (+!3056 lt!439754 (tuple2!15023 lt!439744 minValue!1220)) lt!439814)))

(declare-fun b!991088 () Bool)

(declare-fun res!662686 () Bool)

(assert (=> b!991088 (=> (not res!662686) (not e!558911))))

(assert (=> b!991088 (= res!662686 (= (getValueByKey!518 (toList!6882 lt!439814) (_1!7521 (tuple2!15023 lt!439744 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439744 minValue!1220)))))))

(declare-fun b!991089 () Bool)

(assert (=> b!991089 (= e!558911 (contains!5736 (toList!6882 lt!439814) (tuple2!15023 lt!439744 minValue!1220)))))

(assert (= (and d!117743 res!662685) b!991088))

(assert (= (and b!991088 res!662686) b!991089))

(declare-fun m!918975 () Bool)

(assert (=> d!117743 m!918975))

(declare-fun m!918977 () Bool)

(assert (=> d!117743 m!918977))

(declare-fun m!918979 () Bool)

(assert (=> d!117743 m!918979))

(declare-fun m!918981 () Bool)

(assert (=> d!117743 m!918981))

(declare-fun m!918983 () Bool)

(assert (=> b!991088 m!918983))

(declare-fun m!918985 () Bool)

(assert (=> b!991089 m!918985))

(assert (=> b!990983 d!117743))

(declare-fun d!117745 () Bool)

(declare-fun e!558912 () Bool)

(assert (=> d!117745 e!558912))

(declare-fun res!662687 () Bool)

(assert (=> d!117745 (=> (not res!662687) (not e!558912))))

(declare-fun lt!439818 () ListLongMap!13733)

(assert (=> d!117745 (= res!662687 (contains!5735 lt!439818 (_1!7521 (tuple2!15023 lt!439741 zeroValue!1220))))))

(declare-fun lt!439819 () List!20972)

(assert (=> d!117745 (= lt!439818 (ListLongMap!13734 lt!439819))))

(declare-fun lt!439820 () Unit!32837)

(declare-fun lt!439821 () Unit!32837)

(assert (=> d!117745 (= lt!439820 lt!439821)))

(assert (=> d!117745 (= (getValueByKey!518 lt!439819 (_1!7521 (tuple2!15023 lt!439741 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439741 zeroValue!1220))))))

(assert (=> d!117745 (= lt!439821 (lemmaContainsTupThenGetReturnValue!275 lt!439819 (_1!7521 (tuple2!15023 lt!439741 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439741 zeroValue!1220))))))

(assert (=> d!117745 (= lt!439819 (insertStrictlySorted!331 (toList!6882 lt!439760) (_1!7521 (tuple2!15023 lt!439741 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439741 zeroValue!1220))))))

(assert (=> d!117745 (= (+!3056 lt!439760 (tuple2!15023 lt!439741 zeroValue!1220)) lt!439818)))

(declare-fun b!991090 () Bool)

(declare-fun res!662688 () Bool)

(assert (=> b!991090 (=> (not res!662688) (not e!558912))))

(assert (=> b!991090 (= res!662688 (= (getValueByKey!518 (toList!6882 lt!439818) (_1!7521 (tuple2!15023 lt!439741 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439741 zeroValue!1220)))))))

(declare-fun b!991091 () Bool)

(assert (=> b!991091 (= e!558912 (contains!5736 (toList!6882 lt!439818) (tuple2!15023 lt!439741 zeroValue!1220)))))

(assert (= (and d!117745 res!662687) b!991090))

(assert (= (and b!991090 res!662688) b!991091))

(declare-fun m!918987 () Bool)

(assert (=> d!117745 m!918987))

(declare-fun m!918989 () Bool)

(assert (=> d!117745 m!918989))

(declare-fun m!918991 () Bool)

(assert (=> d!117745 m!918991))

(declare-fun m!918993 () Bool)

(assert (=> d!117745 m!918993))

(declare-fun m!918995 () Bool)

(assert (=> b!991090 m!918995))

(declare-fun m!918997 () Bool)

(assert (=> b!991091 m!918997))

(assert (=> b!990983 d!117745))

(declare-fun d!117747 () Bool)

(assert (=> d!117747 (= (apply!933 lt!439760 lt!439757) (get!15667 (getValueByKey!518 (toList!6882 lt!439760) lt!439757)))))

(declare-fun bs!28148 () Bool)

(assert (= bs!28148 d!117747))

(declare-fun m!918999 () Bool)

(assert (=> bs!28148 m!918999))

(assert (=> bs!28148 m!918999))

(declare-fun m!919001 () Bool)

(assert (=> bs!28148 m!919001))

(assert (=> b!990983 d!117747))

(declare-fun d!117749 () Bool)

(assert (=> d!117749 (= (apply!933 (+!3056 lt!439754 (tuple2!15023 lt!439744 minValue!1220)) lt!439745) (apply!933 lt!439754 lt!439745))))

(declare-fun lt!439822 () Unit!32837)

(assert (=> d!117749 (= lt!439822 (choose!1628 lt!439754 lt!439744 minValue!1220 lt!439745))))

(declare-fun e!558913 () Bool)

(assert (=> d!117749 e!558913))

(declare-fun res!662689 () Bool)

(assert (=> d!117749 (=> (not res!662689) (not e!558913))))

(assert (=> d!117749 (= res!662689 (contains!5735 lt!439754 lt!439745))))

(assert (=> d!117749 (= (addApplyDifferent!473 lt!439754 lt!439744 minValue!1220 lt!439745) lt!439822)))

(declare-fun b!991092 () Bool)

(assert (=> b!991092 (= e!558913 (not (= lt!439745 lt!439744)))))

(assert (= (and d!117749 res!662689) b!991092))

(assert (=> d!117749 m!918859))

(assert (=> d!117749 m!918859))

(assert (=> d!117749 m!918875))

(assert (=> d!117749 m!918879))

(declare-fun m!919003 () Bool)

(assert (=> d!117749 m!919003))

(declare-fun m!919005 () Bool)

(assert (=> d!117749 m!919005))

(assert (=> b!990983 d!117749))

(declare-fun d!117751 () Bool)

(assert (=> d!117751 (contains!5735 (+!3056 lt!439747 (tuple2!15023 lt!439746 zeroValue!1220)) lt!439759)))

(declare-fun lt!439825 () Unit!32837)

(declare-fun choose!1629 (ListLongMap!13733 (_ BitVec 64) V!36067 (_ BitVec 64)) Unit!32837)

(assert (=> d!117751 (= lt!439825 (choose!1629 lt!439747 lt!439746 zeroValue!1220 lt!439759))))

(assert (=> d!117751 (contains!5735 lt!439747 lt!439759)))

(assert (=> d!117751 (= (addStillContains!621 lt!439747 lt!439746 zeroValue!1220 lt!439759) lt!439825)))

(declare-fun bs!28149 () Bool)

(assert (= bs!28149 d!117751))

(assert (=> bs!28149 m!918865))

(assert (=> bs!28149 m!918865))

(assert (=> bs!28149 m!918867))

(declare-fun m!919007 () Bool)

(assert (=> bs!28149 m!919007))

(declare-fun m!919009 () Bool)

(assert (=> bs!28149 m!919009))

(assert (=> b!990983 d!117751))

(declare-fun d!117753 () Bool)

(assert (=> d!117753 (= (apply!933 (+!3056 lt!439742 (tuple2!15023 lt!439743 minValue!1220)) lt!439751) (apply!933 lt!439742 lt!439751))))

(declare-fun lt!439826 () Unit!32837)

(assert (=> d!117753 (= lt!439826 (choose!1628 lt!439742 lt!439743 minValue!1220 lt!439751))))

(declare-fun e!558914 () Bool)

(assert (=> d!117753 e!558914))

(declare-fun res!662690 () Bool)

(assert (=> d!117753 (=> (not res!662690) (not e!558914))))

(assert (=> d!117753 (= res!662690 (contains!5735 lt!439742 lt!439751))))

(assert (=> d!117753 (= (addApplyDifferent!473 lt!439742 lt!439743 minValue!1220 lt!439751) lt!439826)))

(declare-fun b!991094 () Bool)

(assert (=> b!991094 (= e!558914 (not (= lt!439751 lt!439743)))))

(assert (= (and d!117753 res!662690) b!991094))

(assert (=> d!117753 m!918861))

(assert (=> d!117753 m!918861))

(assert (=> d!117753 m!918863))

(assert (=> d!117753 m!918857))

(declare-fun m!919011 () Bool)

(assert (=> d!117753 m!919011))

(declare-fun m!919013 () Bool)

(assert (=> d!117753 m!919013))

(assert (=> b!990983 d!117753))

(declare-fun d!117755 () Bool)

(assert (=> d!117755 (= (apply!933 (+!3056 lt!439742 (tuple2!15023 lt!439743 minValue!1220)) lt!439751) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439742 (tuple2!15023 lt!439743 minValue!1220))) lt!439751)))))

(declare-fun bs!28150 () Bool)

(assert (= bs!28150 d!117755))

(declare-fun m!919015 () Bool)

(assert (=> bs!28150 m!919015))

(assert (=> bs!28150 m!919015))

(declare-fun m!919017 () Bool)

(assert (=> bs!28150 m!919017))

(assert (=> b!990983 d!117755))

(declare-fun d!117757 () Bool)

(assert (=> d!117757 (= (apply!933 lt!439754 lt!439745) (get!15667 (getValueByKey!518 (toList!6882 lt!439754) lt!439745)))))

(declare-fun bs!28151 () Bool)

(assert (= bs!28151 d!117757))

(declare-fun m!919019 () Bool)

(assert (=> bs!28151 m!919019))

(assert (=> bs!28151 m!919019))

(declare-fun m!919021 () Bool)

(assert (=> bs!28151 m!919021))

(assert (=> b!990983 d!117757))

(declare-fun d!117759 () Bool)

(declare-fun lt!439829 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!426 (List!20973) (InoxSet (_ BitVec 64)))

(assert (=> d!117759 (= lt!439829 (select (content!426 Nil!20970) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun e!558920 () Bool)

(assert (=> d!117759 (= lt!439829 e!558920)))

(declare-fun res!662695 () Bool)

(assert (=> d!117759 (=> (not res!662695) (not e!558920))))

(assert (=> d!117759 (= res!662695 ((_ is Cons!20969) Nil!20970))))

(assert (=> d!117759 (= (contains!5737 Nil!20970 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)) lt!439829)))

(declare-fun b!991099 () Bool)

(declare-fun e!558919 () Bool)

(assert (=> b!991099 (= e!558920 e!558919)))

(declare-fun res!662696 () Bool)

(assert (=> b!991099 (=> res!662696 e!558919)))

(assert (=> b!991099 (= res!662696 (= (h!22131 Nil!20970) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!991100 () Bool)

(assert (=> b!991100 (= e!558919 (contains!5737 (t!29962 Nil!20970) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117759 res!662695) b!991099))

(assert (= (and b!991099 (not res!662696)) b!991100))

(declare-fun m!919023 () Bool)

(assert (=> d!117759 m!919023))

(assert (=> d!117759 m!918889))

(declare-fun m!919025 () Bool)

(assert (=> d!117759 m!919025))

(assert (=> b!991100 m!918889))

(declare-fun m!919027 () Bool)

(assert (=> b!991100 m!919027))

(assert (=> b!991014 d!117759))

(declare-fun d!117761 () Bool)

(assert (=> d!117761 (= (validKeyInArray!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)) (and (not (= (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!991012 d!117761))

(declare-fun d!117763 () Bool)

(assert (=> d!117763 (= (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (and (not (= (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!990982 d!117763))

(declare-fun d!117765 () Bool)

(declare-fun lt!439832 () Bool)

(declare-fun content!427 (List!20972) (InoxSet tuple2!15022))

(assert (=> d!117765 (= lt!439832 (select (content!427 (toList!6882 lt!439735)) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!558926 () Bool)

(assert (=> d!117765 (= lt!439832 e!558926)))

(declare-fun res!662702 () Bool)

(assert (=> d!117765 (=> (not res!662702) (not e!558926))))

(assert (=> d!117765 (= res!662702 ((_ is Cons!20968) (toList!6882 lt!439735)))))

(assert (=> d!117765 (= (contains!5736 (toList!6882 lt!439735) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!439832)))

(declare-fun b!991105 () Bool)

(declare-fun e!558925 () Bool)

(assert (=> b!991105 (= e!558926 e!558925)))

(declare-fun res!662701 () Bool)

(assert (=> b!991105 (=> res!662701 e!558925)))

(assert (=> b!991105 (= res!662701 (= (h!22130 (toList!6882 lt!439735)) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!991106 () Bool)

(assert (=> b!991106 (= e!558925 (contains!5736 (t!29961 (toList!6882 lt!439735)) (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!117765 res!662702) b!991105))

(assert (= (and b!991105 (not res!662701)) b!991106))

(declare-fun m!919029 () Bool)

(assert (=> d!117765 m!919029))

(declare-fun m!919031 () Bool)

(assert (=> d!117765 m!919031))

(declare-fun m!919033 () Bool)

(assert (=> b!991106 m!919033))

(assert (=> b!990972 d!117765))

(declare-fun d!117767 () Bool)

(assert (=> d!117767 (= (apply!933 lt!439706 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15667 (getValueByKey!518 (toList!6882 lt!439706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28152 () Bool)

(assert (= bs!28152 d!117767))

(declare-fun m!919035 () Bool)

(assert (=> bs!28152 m!919035))

(assert (=> bs!28152 m!919035))

(declare-fun m!919037 () Bool)

(assert (=> bs!28152 m!919037))

(assert (=> b!990949 d!117767))

(declare-fun d!117769 () Bool)

(assert (=> d!117769 (arrayContainsKey!0 _keys!1544 lt!439768 #b00000000000000000000000000000000)))

(declare-fun lt!439835 () Unit!32837)

(declare-fun choose!13 (array!62577 (_ BitVec 64) (_ BitVec 32)) Unit!32837)

(assert (=> d!117769 (= lt!439835 (choose!13 _keys!1544 lt!439768 #b00000000000000000000000000000000))))

(assert (=> d!117769 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!117769 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439768 #b00000000000000000000000000000000) lt!439835)))

(declare-fun bs!28153 () Bool)

(assert (= bs!28153 d!117769))

(assert (=> bs!28153 m!918901))

(declare-fun m!919039 () Bool)

(assert (=> bs!28153 m!919039))

(assert (=> b!991025 d!117769))

(declare-fun d!117771 () Bool)

(declare-fun res!662707 () Bool)

(declare-fun e!558931 () Bool)

(assert (=> d!117771 (=> res!662707 e!558931)))

(assert (=> d!117771 (= res!662707 (= (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) lt!439768))))

(assert (=> d!117771 (= (arrayContainsKey!0 _keys!1544 lt!439768 #b00000000000000000000000000000000) e!558931)))

(declare-fun b!991111 () Bool)

(declare-fun e!558932 () Bool)

(assert (=> b!991111 (= e!558931 e!558932)))

(declare-fun res!662708 () Bool)

(assert (=> b!991111 (=> (not res!662708) (not e!558932))))

(assert (=> b!991111 (= res!662708 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30615 _keys!1544)))))

(declare-fun b!991112 () Bool)

(assert (=> b!991112 (= e!558932 (arrayContainsKey!0 _keys!1544 lt!439768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!117771 (not res!662707)) b!991111))

(assert (= (and b!991111 res!662708) b!991112))

(assert (=> d!117771 m!918889))

(declare-fun m!919041 () Bool)

(assert (=> b!991112 m!919041))

(assert (=> b!991025 d!117771))

(declare-fun b!991125 () Bool)

(declare-fun e!558941 () SeekEntryResult!9201)

(declare-fun lt!439843 () SeekEntryResult!9201)

(assert (=> b!991125 (= e!558941 (Found!9201 (index!39176 lt!439843)))))

(declare-fun e!558940 () SeekEntryResult!9201)

(declare-fun b!991126 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62577 (_ BitVec 32)) SeekEntryResult!9201)

(assert (=> b!991126 (= e!558940 (seekKeyOrZeroReturnVacant!0 (x!86212 lt!439843) (index!39176 lt!439843) (index!39176 lt!439843) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(declare-fun b!991127 () Bool)

(assert (=> b!991127 (= e!558940 (MissingZero!9201 (index!39176 lt!439843)))))

(declare-fun b!991128 () Bool)

(declare-fun c!100507 () Bool)

(declare-fun lt!439844 () (_ BitVec 64))

(assert (=> b!991128 (= c!100507 (= lt!439844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!991128 (= e!558941 e!558940)))

(declare-fun b!991129 () Bool)

(declare-fun e!558939 () SeekEntryResult!9201)

(assert (=> b!991129 (= e!558939 e!558941)))

(assert (=> b!991129 (= lt!439844 (select (arr!30135 _keys!1544) (index!39176 lt!439843)))))

(declare-fun c!100506 () Bool)

(assert (=> b!991129 (= c!100506 (= lt!439844 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117773 () Bool)

(declare-fun lt!439842 () SeekEntryResult!9201)

(assert (=> d!117773 (and (or ((_ is Undefined!9201) lt!439842) (not ((_ is Found!9201) lt!439842)) (and (bvsge (index!39175 lt!439842) #b00000000000000000000000000000000) (bvslt (index!39175 lt!439842) (size!30615 _keys!1544)))) (or ((_ is Undefined!9201) lt!439842) ((_ is Found!9201) lt!439842) (not ((_ is MissingZero!9201) lt!439842)) (and (bvsge (index!39174 lt!439842) #b00000000000000000000000000000000) (bvslt (index!39174 lt!439842) (size!30615 _keys!1544)))) (or ((_ is Undefined!9201) lt!439842) ((_ is Found!9201) lt!439842) ((_ is MissingZero!9201) lt!439842) (not ((_ is MissingVacant!9201) lt!439842)) (and (bvsge (index!39177 lt!439842) #b00000000000000000000000000000000) (bvslt (index!39177 lt!439842) (size!30615 _keys!1544)))) (or ((_ is Undefined!9201) lt!439842) (ite ((_ is Found!9201) lt!439842) (= (select (arr!30135 _keys!1544) (index!39175 lt!439842)) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9201) lt!439842) (= (select (arr!30135 _keys!1544) (index!39174 lt!439842)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9201) lt!439842) (= (select (arr!30135 _keys!1544) (index!39177 lt!439842)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117773 (= lt!439842 e!558939)))

(declare-fun c!100505 () Bool)

(assert (=> d!117773 (= c!100505 (and ((_ is Intermediate!9201) lt!439843) (undefined!10013 lt!439843)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62577 (_ BitVec 32)) SeekEntryResult!9201)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!117773 (= lt!439843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) mask!1948) (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948))))

(assert (=> d!117773 (validMask!0 mask!1948)))

(assert (=> d!117773 (= (seekEntryOrOpen!0 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) lt!439842)))

(declare-fun b!991130 () Bool)

(assert (=> b!991130 (= e!558939 Undefined!9201)))

(assert (= (and d!117773 c!100505) b!991130))

(assert (= (and d!117773 (not c!100505)) b!991129))

(assert (= (and b!991129 c!100506) b!991125))

(assert (= (and b!991129 (not c!100506)) b!991128))

(assert (= (and b!991128 c!100507) b!991127))

(assert (= (and b!991128 (not c!100507)) b!991126))

(assert (=> b!991126 m!918889))

(declare-fun m!919043 () Bool)

(assert (=> b!991126 m!919043))

(declare-fun m!919045 () Bool)

(assert (=> b!991129 m!919045))

(assert (=> d!117773 m!918889))

(declare-fun m!919047 () Bool)

(assert (=> d!117773 m!919047))

(assert (=> d!117773 m!919047))

(assert (=> d!117773 m!918889))

(declare-fun m!919049 () Bool)

(assert (=> d!117773 m!919049))

(declare-fun m!919051 () Bool)

(assert (=> d!117773 m!919051))

(declare-fun m!919053 () Bool)

(assert (=> d!117773 m!919053))

(declare-fun m!919055 () Bool)

(assert (=> d!117773 m!919055))

(assert (=> d!117773 m!918723))

(assert (=> b!991025 d!117773))

(declare-fun c!100508 () Bool)

(declare-fun bm!42059 () Bool)

(declare-fun call!42062 () Bool)

(assert (=> bm!42059 (= call!42062 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!100508 (Cons!20969 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!100480 (Cons!20969 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) Nil!20970) Nil!20970)) (ite c!100480 (Cons!20969 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) Nil!20970) Nil!20970))))))

(declare-fun b!991131 () Bool)

(declare-fun e!558943 () Bool)

(declare-fun e!558944 () Bool)

(assert (=> b!991131 (= e!558943 e!558944)))

(assert (=> b!991131 (= c!100508 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!991132 () Bool)

(assert (=> b!991132 (= e!558944 call!42062)))

(declare-fun b!991133 () Bool)

(declare-fun e!558942 () Bool)

(assert (=> b!991133 (= e!558942 e!558943)))

(declare-fun res!662711 () Bool)

(assert (=> b!991133 (=> (not res!662711) (not e!558943))))

(declare-fun e!558945 () Bool)

(assert (=> b!991133 (= res!662711 (not e!558945))))

(declare-fun res!662710 () Bool)

(assert (=> b!991133 (=> (not res!662710) (not e!558945))))

(assert (=> b!991133 (= res!662710 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!991134 () Bool)

(assert (=> b!991134 (= e!558944 call!42062)))

(declare-fun b!991135 () Bool)

(assert (=> b!991135 (= e!558945 (contains!5737 (ite c!100480 (Cons!20969 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) Nil!20970) Nil!20970) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!117775 () Bool)

(declare-fun res!662709 () Bool)

(assert (=> d!117775 (=> res!662709 e!558942)))

(assert (=> d!117775 (= res!662709 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30615 _keys!1544)))))

(assert (=> d!117775 (= (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100480 (Cons!20969 (select (arr!30135 _keys!1544) #b00000000000000000000000000000000) Nil!20970) Nil!20970)) e!558942)))

(assert (= (and d!117775 (not res!662709)) b!991133))

(assert (= (and b!991133 res!662710) b!991135))

(assert (= (and b!991133 res!662711) b!991131))

(assert (= (and b!991131 c!100508) b!991134))

(assert (= (and b!991131 (not c!100508)) b!991132))

(assert (= (or b!991134 b!991132) bm!42059))

(declare-fun m!919057 () Bool)

(assert (=> bm!42059 m!919057))

(declare-fun m!919059 () Bool)

(assert (=> bm!42059 m!919059))

(assert (=> b!991131 m!919057))

(assert (=> b!991131 m!919057))

(declare-fun m!919061 () Bool)

(assert (=> b!991131 m!919061))

(assert (=> b!991133 m!919057))

(assert (=> b!991133 m!919057))

(assert (=> b!991133 m!919061))

(assert (=> b!991135 m!919057))

(assert (=> b!991135 m!919057))

(declare-fun m!919063 () Bool)

(assert (=> b!991135 m!919063))

(assert (=> bm!42052 d!117775))

(declare-fun e!558951 () Option!524)

(declare-fun b!991146 () Bool)

(assert (=> b!991146 (= e!558951 (getValueByKey!518 (t!29961 (toList!6882 lt!439735)) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!991145 () Bool)

(declare-fun e!558950 () Option!524)

(assert (=> b!991145 (= e!558950 e!558951)))

(declare-fun c!100514 () Bool)

(assert (=> b!991145 (= c!100514 (and ((_ is Cons!20968) (toList!6882 lt!439735)) (not (= (_1!7521 (h!22130 (toList!6882 lt!439735))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!100513 () Bool)

(declare-fun d!117777 () Bool)

(assert (=> d!117777 (= c!100513 (and ((_ is Cons!20968) (toList!6882 lt!439735)) (= (_1!7521 (h!22130 (toList!6882 lt!439735))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!117777 (= (getValueByKey!518 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!558950)))

(declare-fun b!991147 () Bool)

(assert (=> b!991147 (= e!558951 None!522)))

(declare-fun b!991144 () Bool)

(assert (=> b!991144 (= e!558950 (Some!523 (_2!7521 (h!22130 (toList!6882 lt!439735)))))))

(assert (= (and d!117777 c!100513) b!991144))

(assert (= (and d!117777 (not c!100513)) b!991145))

(assert (= (and b!991145 c!100514) b!991146))

(assert (= (and b!991145 (not c!100514)) b!991147))

(declare-fun m!919065 () Bool)

(assert (=> b!991146 m!919065))

(assert (=> b!990971 d!117777))

(assert (=> b!991026 d!117761))

(assert (=> b!991010 d!117761))

(assert (=> bm!42047 d!117735))

(declare-fun d!117779 () Bool)

(declare-fun e!558953 () Bool)

(assert (=> d!117779 e!558953))

(declare-fun res!662712 () Bool)

(assert (=> d!117779 (=> res!662712 e!558953)))

(declare-fun lt!439845 () Bool)

(assert (=> d!117779 (= res!662712 (not lt!439845))))

(declare-fun lt!439848 () Bool)

(assert (=> d!117779 (= lt!439845 lt!439848)))

(declare-fun lt!439846 () Unit!32837)

(declare-fun e!558952 () Unit!32837)

(assert (=> d!117779 (= lt!439846 e!558952)))

(declare-fun c!100515 () Bool)

(assert (=> d!117779 (= c!100515 lt!439848)))

(assert (=> d!117779 (= lt!439848 (containsKey!481 (toList!6882 lt!439706) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117779 (= (contains!5735 lt!439706 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439845)))

(declare-fun b!991148 () Bool)

(declare-fun lt!439847 () Unit!32837)

(assert (=> b!991148 (= e!558952 lt!439847)))

(assert (=> b!991148 (= lt!439847 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439706) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!991148 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991149 () Bool)

(declare-fun Unit!32842 () Unit!32837)

(assert (=> b!991149 (= e!558952 Unit!32842)))

(declare-fun b!991150 () Bool)

(assert (=> b!991150 (= e!558953 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117779 c!100515) b!991148))

(assert (= (and d!117779 (not c!100515)) b!991149))

(assert (= (and d!117779 (not res!662712)) b!991150))

(declare-fun m!919067 () Bool)

(assert (=> d!117779 m!919067))

(declare-fun m!919069 () Bool)

(assert (=> b!991148 m!919069))

(assert (=> b!991148 m!919035))

(assert (=> b!991148 m!919035))

(declare-fun m!919071 () Bool)

(assert (=> b!991148 m!919071))

(assert (=> b!991150 m!919035))

(assert (=> b!991150 m!919035))

(assert (=> b!991150 m!919071))

(assert (=> bm!42037 d!117779))

(declare-fun d!117781 () Bool)

(declare-fun e!558954 () Bool)

(assert (=> d!117781 e!558954))

(declare-fun res!662713 () Bool)

(assert (=> d!117781 (=> (not res!662713) (not e!558954))))

(declare-fun lt!439849 () ListLongMap!13733)

(assert (=> d!117781 (= res!662713 (contains!5735 lt!439849 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439850 () List!20972)

(assert (=> d!117781 (= lt!439849 (ListLongMap!13734 lt!439850))))

(declare-fun lt!439851 () Unit!32837)

(declare-fun lt!439852 () Unit!32837)

(assert (=> d!117781 (= lt!439851 lt!439852)))

(assert (=> d!117781 (= (getValueByKey!518 lt!439850 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117781 (= lt!439852 (lemmaContainsTupThenGetReturnValue!275 lt!439850 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117781 (= lt!439850 (insertStrictlySorted!331 (toList!6882 call!42049) (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117781 (= (+!3056 call!42049 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439849)))

(declare-fun b!991151 () Bool)

(declare-fun res!662714 () Bool)

(assert (=> b!991151 (=> (not res!662714) (not e!558954))))

(assert (=> b!991151 (= res!662714 (= (getValueByKey!518 (toList!6882 lt!439849) (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!991152 () Bool)

(assert (=> b!991152 (= e!558954 (contains!5736 (toList!6882 lt!439849) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117781 res!662713) b!991151))

(assert (= (and b!991151 res!662714) b!991152))

(declare-fun m!919073 () Bool)

(assert (=> d!117781 m!919073))

(declare-fun m!919075 () Bool)

(assert (=> d!117781 m!919075))

(declare-fun m!919077 () Bool)

(assert (=> d!117781 m!919077))

(declare-fun m!919079 () Bool)

(assert (=> d!117781 m!919079))

(declare-fun m!919081 () Bool)

(assert (=> b!991151 m!919081))

(declare-fun m!919083 () Bool)

(assert (=> b!991152 m!919083))

(assert (=> b!990979 d!117781))

(declare-fun d!117783 () Bool)

(assert (=> d!117783 (= (apply!933 lt!439706 (select (arr!30135 _keys!1544) from!1932)) (get!15667 (getValueByKey!518 (toList!6882 lt!439706) (select (arr!30135 _keys!1544) from!1932))))))

(declare-fun bs!28154 () Bool)

(assert (= bs!28154 d!117783))

(assert (=> bs!28154 m!918713))

(declare-fun m!919085 () Bool)

(assert (=> bs!28154 m!919085))

(assert (=> bs!28154 m!919085))

(declare-fun m!919087 () Bool)

(assert (=> bs!28154 m!919087))

(assert (=> b!990947 d!117783))

(assert (=> b!990947 d!117713))

(declare-fun d!117785 () Bool)

(declare-fun e!558955 () Bool)

(assert (=> d!117785 e!558955))

(declare-fun res!662715 () Bool)

(assert (=> d!117785 (=> (not res!662715) (not e!558955))))

(declare-fun lt!439853 () ListLongMap!13733)

(assert (=> d!117785 (= res!662715 (contains!5735 lt!439853 (_1!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!439854 () List!20972)

(assert (=> d!117785 (= lt!439853 (ListLongMap!13734 lt!439854))))

(declare-fun lt!439855 () Unit!32837)

(declare-fun lt!439856 () Unit!32837)

(assert (=> d!117785 (= lt!439855 lt!439856)))

(assert (=> d!117785 (= (getValueByKey!518 lt!439854 (_1!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!523 (_2!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117785 (= lt!439856 (lemmaContainsTupThenGetReturnValue!275 lt!439854 (_1!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117785 (= lt!439854 (insertStrictlySorted!331 (toList!6882 (ite c!100473 call!42048 (ite c!100472 call!42051 call!42052))) (_1!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117785 (= (+!3056 (ite c!100473 call!42048 (ite c!100472 call!42051 call!42052)) (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!439853)))

(declare-fun b!991153 () Bool)

(declare-fun res!662716 () Bool)

(assert (=> b!991153 (=> (not res!662716) (not e!558955))))

(assert (=> b!991153 (= res!662716 (= (getValueByKey!518 (toList!6882 lt!439853) (_1!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!523 (_2!7521 (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!991154 () Bool)

(assert (=> b!991154 (= e!558955 (contains!5736 (toList!6882 lt!439853) (ite (or c!100473 c!100472) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117785 res!662715) b!991153))

(assert (= (and b!991153 res!662716) b!991154))

(declare-fun m!919089 () Bool)

(assert (=> d!117785 m!919089))

(declare-fun m!919091 () Bool)

(assert (=> d!117785 m!919091))

(declare-fun m!919093 () Bool)

(assert (=> d!117785 m!919093))

(declare-fun m!919095 () Bool)

(assert (=> d!117785 m!919095))

(declare-fun m!919097 () Bool)

(assert (=> b!991153 m!919097))

(declare-fun m!919099 () Bool)

(assert (=> b!991154 m!919099))

(assert (=> bm!42046 d!117785))

(declare-fun d!117787 () Bool)

(declare-fun e!558957 () Bool)

(assert (=> d!117787 e!558957))

(declare-fun res!662717 () Bool)

(assert (=> d!117787 (=> res!662717 e!558957)))

(declare-fun lt!439857 () Bool)

(assert (=> d!117787 (= res!662717 (not lt!439857))))

(declare-fun lt!439860 () Bool)

(assert (=> d!117787 (= lt!439857 lt!439860)))

(declare-fun lt!439858 () Unit!32837)

(declare-fun e!558956 () Unit!32837)

(assert (=> d!117787 (= lt!439858 e!558956)))

(declare-fun c!100516 () Bool)

(assert (=> d!117787 (= c!100516 lt!439860)))

(assert (=> d!117787 (= lt!439860 (containsKey!481 (toList!6882 lt!439706) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117787 (= (contains!5735 lt!439706 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439857)))

(declare-fun b!991155 () Bool)

(declare-fun lt!439859 () Unit!32837)

(assert (=> b!991155 (= e!558956 lt!439859)))

(assert (=> b!991155 (= lt!439859 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439706) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!991155 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991156 () Bool)

(declare-fun Unit!32843 () Unit!32837)

(assert (=> b!991156 (= e!558956 Unit!32843)))

(declare-fun b!991157 () Bool)

(assert (=> b!991157 (= e!558957 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117787 c!100516) b!991155))

(assert (= (and d!117787 (not c!100516)) b!991156))

(assert (= (and d!117787 (not res!662717)) b!991157))

(declare-fun m!919101 () Bool)

(assert (=> d!117787 m!919101))

(declare-fun m!919103 () Bool)

(assert (=> b!991155 m!919103))

(declare-fun m!919105 () Bool)

(assert (=> b!991155 m!919105))

(assert (=> b!991155 m!919105))

(declare-fun m!919107 () Bool)

(assert (=> b!991155 m!919107))

(assert (=> b!991157 m!919105))

(assert (=> b!991157 m!919105))

(assert (=> b!991157 m!919107))

(assert (=> bm!42036 d!117787))

(declare-fun d!117789 () Bool)

(declare-fun e!558959 () Bool)

(assert (=> d!117789 e!558959))

(declare-fun res!662718 () Bool)

(assert (=> d!117789 (=> res!662718 e!558959)))

(declare-fun lt!439861 () Bool)

(assert (=> d!117789 (= res!662718 (not lt!439861))))

(declare-fun lt!439864 () Bool)

(assert (=> d!117789 (= lt!439861 lt!439864)))

(declare-fun lt!439862 () Unit!32837)

(declare-fun e!558958 () Unit!32837)

(assert (=> d!117789 (= lt!439862 e!558958)))

(declare-fun c!100517 () Bool)

(assert (=> d!117789 (= c!100517 lt!439864)))

(assert (=> d!117789 (= lt!439864 (containsKey!481 (toList!6882 lt!439706) (select (arr!30135 _keys!1544) from!1932)))))

(assert (=> d!117789 (= (contains!5735 lt!439706 (select (arr!30135 _keys!1544) from!1932)) lt!439861)))

(declare-fun b!991158 () Bool)

(declare-fun lt!439863 () Unit!32837)

(assert (=> b!991158 (= e!558958 lt!439863)))

(assert (=> b!991158 (= lt!439863 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439706) (select (arr!30135 _keys!1544) from!1932)))))

(assert (=> b!991158 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) (select (arr!30135 _keys!1544) from!1932)))))

(declare-fun b!991159 () Bool)

(declare-fun Unit!32844 () Unit!32837)

(assert (=> b!991159 (= e!558958 Unit!32844)))

(declare-fun b!991160 () Bool)

(assert (=> b!991160 (= e!558959 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439706) (select (arr!30135 _keys!1544) from!1932))))))

(assert (= (and d!117789 c!100517) b!991158))

(assert (= (and d!117789 (not c!100517)) b!991159))

(assert (= (and d!117789 (not res!662718)) b!991160))

(assert (=> d!117789 m!918713))

(declare-fun m!919109 () Bool)

(assert (=> d!117789 m!919109))

(assert (=> b!991158 m!918713))

(declare-fun m!919111 () Bool)

(assert (=> b!991158 m!919111))

(assert (=> b!991158 m!918713))

(assert (=> b!991158 m!919085))

(assert (=> b!991158 m!919085))

(declare-fun m!919113 () Bool)

(assert (=> b!991158 m!919113))

(assert (=> b!991160 m!918713))

(assert (=> b!991160 m!919085))

(assert (=> b!991160 m!919085))

(assert (=> b!991160 m!919113))

(assert (=> b!990962 d!117789))

(declare-fun bm!42060 () Bool)

(declare-fun call!42063 () Bool)

(assert (=> bm!42060 (= call!42063 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!991161 () Bool)

(declare-fun e!558961 () Bool)

(assert (=> b!991161 (= e!558961 call!42063)))

(declare-fun b!991162 () Bool)

(declare-fun e!558960 () Bool)

(assert (=> b!991162 (= e!558960 call!42063)))

(declare-fun d!117791 () Bool)

(declare-fun res!662719 () Bool)

(declare-fun e!558962 () Bool)

(assert (=> d!117791 (=> res!662719 e!558962)))

(assert (=> d!117791 (= res!662719 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30615 _keys!1544)))))

(assert (=> d!117791 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948) e!558962)))

(declare-fun b!991163 () Bool)

(assert (=> b!991163 (= e!558960 e!558961)))

(declare-fun lt!439866 () (_ BitVec 64))

(assert (=> b!991163 (= lt!439866 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!439865 () Unit!32837)

(assert (=> b!991163 (= lt!439865 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!439866 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!991163 (arrayContainsKey!0 _keys!1544 lt!439866 #b00000000000000000000000000000000)))

(declare-fun lt!439867 () Unit!32837)

(assert (=> b!991163 (= lt!439867 lt!439865)))

(declare-fun res!662720 () Bool)

(assert (=> b!991163 (= res!662720 (= (seekEntryOrOpen!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1544 mask!1948) (Found!9201 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!991163 (=> (not res!662720) (not e!558961))))

(declare-fun b!991164 () Bool)

(assert (=> b!991164 (= e!558962 e!558960)))

(declare-fun c!100518 () Bool)

(assert (=> b!991164 (= c!100518 (validKeyInArray!0 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!117791 (not res!662719)) b!991164))

(assert (= (and b!991164 c!100518) b!991163))

(assert (= (and b!991164 (not c!100518)) b!991162))

(assert (= (and b!991163 res!662720) b!991161))

(assert (= (or b!991161 b!991162) bm!42060))

(declare-fun m!919115 () Bool)

(assert (=> bm!42060 m!919115))

(assert (=> b!991163 m!919057))

(declare-fun m!919117 () Bool)

(assert (=> b!991163 m!919117))

(declare-fun m!919119 () Bool)

(assert (=> b!991163 m!919119))

(assert (=> b!991163 m!919057))

(declare-fun m!919121 () Bool)

(assert (=> b!991163 m!919121))

(assert (=> b!991164 m!919057))

(assert (=> b!991164 m!919057))

(assert (=> b!991164 m!919061))

(assert (=> bm!42055 d!117791))

(declare-fun d!117793 () Bool)

(assert (=> d!117793 (= (apply!933 lt!439740 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15667 (getValueByKey!518 (toList!6882 lt!439740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28155 () Bool)

(assert (= bs!28155 d!117793))

(declare-fun m!919123 () Bool)

(assert (=> bs!28155 m!919123))

(assert (=> bs!28155 m!919123))

(declare-fun m!919125 () Bool)

(assert (=> bs!28155 m!919125))

(assert (=> b!990976 d!117793))

(assert (=> d!117711 d!117721))

(declare-fun d!117795 () Bool)

(declare-fun e!558964 () Bool)

(assert (=> d!117795 e!558964))

(declare-fun res!662721 () Bool)

(assert (=> d!117795 (=> res!662721 e!558964)))

(declare-fun lt!439868 () Bool)

(assert (=> d!117795 (= res!662721 (not lt!439868))))

(declare-fun lt!439871 () Bool)

(assert (=> d!117795 (= lt!439868 lt!439871)))

(declare-fun lt!439869 () Unit!32837)

(declare-fun e!558963 () Unit!32837)

(assert (=> d!117795 (= lt!439869 e!558963)))

(declare-fun c!100519 () Bool)

(assert (=> d!117795 (= c!100519 lt!439871)))

(assert (=> d!117795 (= lt!439871 (containsKey!481 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!117795 (= (contains!5735 lt!439735 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!439868)))

(declare-fun b!991165 () Bool)

(declare-fun lt!439870 () Unit!32837)

(assert (=> b!991165 (= e!558963 lt!439870)))

(assert (=> b!991165 (= lt!439870 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!991165 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!991166 () Bool)

(declare-fun Unit!32845 () Unit!32837)

(assert (=> b!991166 (= e!558963 Unit!32845)))

(declare-fun b!991167 () Bool)

(assert (=> b!991167 (= e!558964 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439735) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!117795 c!100519) b!991165))

(assert (= (and d!117795 (not c!100519)) b!991166))

(assert (= (and d!117795 (not res!662721)) b!991167))

(declare-fun m!919127 () Bool)

(assert (=> d!117795 m!919127))

(declare-fun m!919129 () Bool)

(assert (=> b!991165 m!919129))

(assert (=> b!991165 m!918825))

(assert (=> b!991165 m!918825))

(declare-fun m!919131 () Bool)

(assert (=> b!991165 m!919131))

(assert (=> b!991167 m!918825))

(assert (=> b!991167 m!918825))

(assert (=> b!991167 m!919131))

(assert (=> d!117709 d!117795))

(declare-fun b!991170 () Bool)

(declare-fun e!558966 () Option!524)

(assert (=> b!991170 (= e!558966 (getValueByKey!518 (t!29961 lt!439736) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!991169 () Bool)

(declare-fun e!558965 () Option!524)

(assert (=> b!991169 (= e!558965 e!558966)))

(declare-fun c!100521 () Bool)

(assert (=> b!991169 (= c!100521 (and ((_ is Cons!20968) lt!439736) (not (= (_1!7521 (h!22130 lt!439736)) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun d!117797 () Bool)

(declare-fun c!100520 () Bool)

(assert (=> d!117797 (= c!100520 (and ((_ is Cons!20968) lt!439736) (= (_1!7521 (h!22130 lt!439736)) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!117797 (= (getValueByKey!518 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!558965)))

(declare-fun b!991171 () Bool)

(assert (=> b!991171 (= e!558966 None!522)))

(declare-fun b!991168 () Bool)

(assert (=> b!991168 (= e!558965 (Some!523 (_2!7521 (h!22130 lt!439736))))))

(assert (= (and d!117797 c!100520) b!991168))

(assert (= (and d!117797 (not c!100520)) b!991169))

(assert (= (and b!991169 c!100521) b!991170))

(assert (= (and b!991169 (not c!100521)) b!991171))

(declare-fun m!919133 () Bool)

(assert (=> b!991170 m!919133))

(assert (=> d!117709 d!117797))

(declare-fun d!117799 () Bool)

(assert (=> d!117799 (= (getValueByKey!518 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!523 (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!439874 () Unit!32837)

(declare-fun choose!1630 (List!20972 (_ BitVec 64) V!36067) Unit!32837)

(assert (=> d!117799 (= lt!439874 (choose!1630 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!558969 () Bool)

(assert (=> d!117799 e!558969))

(declare-fun res!662726 () Bool)

(assert (=> d!117799 (=> (not res!662726) (not e!558969))))

(declare-fun isStrictlySorted!514 (List!20972) Bool)

(assert (=> d!117799 (= res!662726 (isStrictlySorted!514 lt!439736))))

(assert (=> d!117799 (= (lemmaContainsTupThenGetReturnValue!275 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!439874)))

(declare-fun b!991176 () Bool)

(declare-fun res!662727 () Bool)

(assert (=> b!991176 (=> (not res!662727) (not e!558969))))

(assert (=> b!991176 (= res!662727 (containsKey!481 lt!439736 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!991177 () Bool)

(assert (=> b!991177 (= e!558969 (contains!5736 lt!439736 (tuple2!15023 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!117799 res!662726) b!991176))

(assert (= (and b!991176 res!662727) b!991177))

(assert (=> d!117799 m!918819))

(declare-fun m!919135 () Bool)

(assert (=> d!117799 m!919135))

(declare-fun m!919137 () Bool)

(assert (=> d!117799 m!919137))

(declare-fun m!919139 () Bool)

(assert (=> b!991176 m!919139))

(declare-fun m!919141 () Bool)

(assert (=> b!991177 m!919141))

(assert (=> d!117709 d!117799))

(declare-fun b!991198 () Bool)

(declare-fun res!662733 () Bool)

(declare-fun e!558980 () Bool)

(assert (=> b!991198 (=> (not res!662733) (not e!558980))))

(declare-fun lt!439877 () List!20972)

(assert (=> b!991198 (= res!662733 (containsKey!481 lt!439877 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!100533 () Bool)

(declare-fun b!991199 () Bool)

(declare-fun c!100531 () Bool)

(declare-fun e!558981 () List!20972)

(assert (=> b!991199 (= e!558981 (ite c!100531 (t!29961 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (ite c!100533 (Cons!20968 (h!22130 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (t!29961 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) Nil!20969)))))

(declare-fun b!991200 () Bool)

(assert (=> b!991200 (= c!100533 (and ((_ is Cons!20968) (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvsgt (_1!7521 (h!22130 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!558982 () List!20972)

(declare-fun e!558984 () List!20972)

(assert (=> b!991200 (= e!558982 e!558984)))

(declare-fun bm!42067 () Bool)

(declare-fun call!42071 () List!20972)

(declare-fun call!42070 () List!20972)

(assert (=> bm!42067 (= call!42071 call!42070)))

(declare-fun b!991201 () Bool)

(declare-fun e!558983 () List!20972)

(declare-fun call!42072 () List!20972)

(assert (=> b!991201 (= e!558983 call!42072)))

(declare-fun d!117801 () Bool)

(assert (=> d!117801 e!558980))

(declare-fun res!662732 () Bool)

(assert (=> d!117801 (=> (not res!662732) (not e!558980))))

(assert (=> d!117801 (= res!662732 (isStrictlySorted!514 lt!439877))))

(assert (=> d!117801 (= lt!439877 e!558983)))

(declare-fun c!100530 () Bool)

(assert (=> d!117801 (= c!100530 (and ((_ is Cons!20968) (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (bvslt (_1!7521 (h!22130 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!117801 (isStrictlySorted!514 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))))

(assert (=> d!117801 (= (insertStrictlySorted!331 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!439877)))

(declare-fun b!991202 () Bool)

(assert (=> b!991202 (= e!558981 (insertStrictlySorted!331 (t!29961 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!991203 () Bool)

(assert (=> b!991203 (= e!558984 call!42071)))

(declare-fun bm!42068 () Bool)

(declare-fun $colon$colon!558 (List!20972 tuple2!15022) List!20972)

(assert (=> bm!42068 (= call!42072 ($colon$colon!558 e!558981 (ite c!100530 (h!22130 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (tuple2!15023 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!100532 () Bool)

(assert (=> bm!42068 (= c!100532 c!100530)))

(declare-fun b!991204 () Bool)

(assert (=> b!991204 (= e!558982 call!42070)))

(declare-fun bm!42069 () Bool)

(assert (=> bm!42069 (= call!42070 call!42072)))

(declare-fun b!991205 () Bool)

(assert (=> b!991205 (= e!558984 call!42071)))

(declare-fun b!991206 () Bool)

(assert (=> b!991206 (= e!558983 e!558982)))

(assert (=> b!991206 (= c!100531 (and ((_ is Cons!20968) (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))) (= (_1!7521 (h!22130 (toList!6882 (getCurrentListMap!3891 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)))) (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!991207 () Bool)

(assert (=> b!991207 (= e!558980 (contains!5736 lt!439877 (tuple2!15023 (_1!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7521 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!117801 c!100530) b!991201))

(assert (= (and d!117801 (not c!100530)) b!991206))

(assert (= (and b!991206 c!100531) b!991204))

(assert (= (and b!991206 (not c!100531)) b!991200))

(assert (= (and b!991200 c!100533) b!991203))

(assert (= (and b!991200 (not c!100533)) b!991205))

(assert (= (or b!991203 b!991205) bm!42067))

(assert (= (or b!991204 bm!42067) bm!42069))

(assert (= (or b!991201 bm!42069) bm!42068))

(assert (= (and bm!42068 c!100532) b!991202))

(assert (= (and bm!42068 (not c!100532)) b!991199))

(assert (= (and d!117801 res!662732) b!991198))

(assert (= (and b!991198 res!662733) b!991207))

(declare-fun m!919143 () Bool)

(assert (=> b!991207 m!919143))

(declare-fun m!919145 () Bool)

(assert (=> b!991202 m!919145))

(declare-fun m!919147 () Bool)

(assert (=> d!117801 m!919147))

(declare-fun m!919149 () Bool)

(assert (=> d!117801 m!919149))

(declare-fun m!919151 () Bool)

(assert (=> bm!42068 m!919151))

(declare-fun m!919153 () Bool)

(assert (=> b!991198 m!919153))

(assert (=> d!117709 d!117801))

(assert (=> b!990957 d!117715))

(declare-fun d!117803 () Bool)

(assert (=> d!117803 (= (apply!933 lt!439706 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15667 (getValueByKey!518 (toList!6882 lt!439706) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28156 () Bool)

(assert (= bs!28156 d!117803))

(assert (=> bs!28156 m!919105))

(assert (=> bs!28156 m!919105))

(declare-fun m!919155 () Bool)

(assert (=> bs!28156 m!919155))

(assert (=> b!990958 d!117803))

(assert (=> d!117707 d!117721))

(declare-fun d!117805 () Bool)

(assert (=> d!117805 (= (apply!933 (+!3056 lt!439726 (tuple2!15023 lt!439707 zeroValue!1220)) lt!439723) (apply!933 lt!439726 lt!439723))))

(declare-fun lt!439878 () Unit!32837)

(assert (=> d!117805 (= lt!439878 (choose!1628 lt!439726 lt!439707 zeroValue!1220 lt!439723))))

(declare-fun e!558985 () Bool)

(assert (=> d!117805 e!558985))

(declare-fun res!662734 () Bool)

(assert (=> d!117805 (=> (not res!662734) (not e!558985))))

(assert (=> d!117805 (= res!662734 (contains!5735 lt!439726 lt!439723))))

(assert (=> d!117805 (= (addApplyDifferent!473 lt!439726 lt!439707 zeroValue!1220 lt!439723) lt!439878)))

(declare-fun b!991208 () Bool)

(assert (=> b!991208 (= e!558985 (not (= lt!439723 lt!439707)))))

(assert (= (and d!117805 res!662734) b!991208))

(assert (=> d!117805 m!918785))

(assert (=> d!117805 m!918785))

(assert (=> d!117805 m!918787))

(assert (=> d!117805 m!918803))

(declare-fun m!919157 () Bool)

(assert (=> d!117805 m!919157))

(declare-fun m!919159 () Bool)

(assert (=> d!117805 m!919159))

(assert (=> b!990956 d!117805))

(declare-fun d!117807 () Bool)

(assert (=> d!117807 (= (apply!933 (+!3056 lt!439720 (tuple2!15023 lt!439710 minValue!1220)) lt!439711) (apply!933 lt!439720 lt!439711))))

(declare-fun lt!439879 () Unit!32837)

(assert (=> d!117807 (= lt!439879 (choose!1628 lt!439720 lt!439710 minValue!1220 lt!439711))))

(declare-fun e!558986 () Bool)

(assert (=> d!117807 e!558986))

(declare-fun res!662735 () Bool)

(assert (=> d!117807 (=> (not res!662735) (not e!558986))))

(assert (=> d!117807 (= res!662735 (contains!5735 lt!439720 lt!439711))))

(assert (=> d!117807 (= (addApplyDifferent!473 lt!439720 lt!439710 minValue!1220 lt!439711) lt!439879)))

(declare-fun b!991209 () Bool)

(assert (=> b!991209 (= e!558986 (not (= lt!439711 lt!439710)))))

(assert (= (and d!117807 res!662735) b!991209))

(assert (=> d!117807 m!918791))

(assert (=> d!117807 m!918791))

(assert (=> d!117807 m!918807))

(assert (=> d!117807 m!918811))

(declare-fun m!919161 () Bool)

(assert (=> d!117807 m!919161))

(declare-fun m!919163 () Bool)

(assert (=> d!117807 m!919163))

(assert (=> b!990956 d!117807))

(declare-fun d!117809 () Bool)

(assert (=> d!117809 (= (apply!933 (+!3056 lt!439720 (tuple2!15023 lt!439710 minValue!1220)) lt!439711) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439720 (tuple2!15023 lt!439710 minValue!1220))) lt!439711)))))

(declare-fun bs!28157 () Bool)

(assert (= bs!28157 d!117809))

(declare-fun m!919165 () Bool)

(assert (=> bs!28157 m!919165))

(assert (=> bs!28157 m!919165))

(declare-fun m!919167 () Bool)

(assert (=> bs!28157 m!919167))

(assert (=> b!990956 d!117809))

(declare-fun d!117811 () Bool)

(assert (=> d!117811 (= (apply!933 (+!3056 lt!439726 (tuple2!15023 lt!439707 zeroValue!1220)) lt!439723) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439726 (tuple2!15023 lt!439707 zeroValue!1220))) lt!439723)))))

(declare-fun bs!28158 () Bool)

(assert (= bs!28158 d!117811))

(declare-fun m!919169 () Bool)

(assert (=> bs!28158 m!919169))

(assert (=> bs!28158 m!919169))

(declare-fun m!919171 () Bool)

(assert (=> bs!28158 m!919171))

(assert (=> b!990956 d!117811))

(declare-fun d!117813 () Bool)

(assert (=> d!117813 (= (apply!933 lt!439720 lt!439711) (get!15667 (getValueByKey!518 (toList!6882 lt!439720) lt!439711)))))

(declare-fun bs!28159 () Bool)

(assert (= bs!28159 d!117813))

(declare-fun m!919173 () Bool)

(assert (=> bs!28159 m!919173))

(assert (=> bs!28159 m!919173))

(declare-fun m!919175 () Bool)

(assert (=> bs!28159 m!919175))

(assert (=> b!990956 d!117813))

(declare-fun d!117815 () Bool)

(declare-fun e!558988 () Bool)

(assert (=> d!117815 e!558988))

(declare-fun res!662736 () Bool)

(assert (=> d!117815 (=> res!662736 e!558988)))

(declare-fun lt!439880 () Bool)

(assert (=> d!117815 (= res!662736 (not lt!439880))))

(declare-fun lt!439883 () Bool)

(assert (=> d!117815 (= lt!439880 lt!439883)))

(declare-fun lt!439881 () Unit!32837)

(declare-fun e!558987 () Unit!32837)

(assert (=> d!117815 (= lt!439881 e!558987)))

(declare-fun c!100534 () Bool)

(assert (=> d!117815 (= c!100534 lt!439883)))

(assert (=> d!117815 (= lt!439883 (containsKey!481 (toList!6882 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220))) lt!439725))))

(assert (=> d!117815 (= (contains!5735 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220)) lt!439725) lt!439880)))

(declare-fun b!991210 () Bool)

(declare-fun lt!439882 () Unit!32837)

(assert (=> b!991210 (= e!558987 lt!439882)))

(assert (=> b!991210 (= lt!439882 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220))) lt!439725))))

(assert (=> b!991210 (isDefined!386 (getValueByKey!518 (toList!6882 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220))) lt!439725))))

(declare-fun b!991211 () Bool)

(declare-fun Unit!32846 () Unit!32837)

(assert (=> b!991211 (= e!558987 Unit!32846)))

(declare-fun b!991212 () Bool)

(assert (=> b!991212 (= e!558988 (isDefined!386 (getValueByKey!518 (toList!6882 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220))) lt!439725)))))

(assert (= (and d!117815 c!100534) b!991210))

(assert (= (and d!117815 (not c!100534)) b!991211))

(assert (= (and d!117815 (not res!662736)) b!991212))

(declare-fun m!919177 () Bool)

(assert (=> d!117815 m!919177))

(declare-fun m!919179 () Bool)

(assert (=> b!991210 m!919179))

(declare-fun m!919181 () Bool)

(assert (=> b!991210 m!919181))

(assert (=> b!991210 m!919181))

(declare-fun m!919183 () Bool)

(assert (=> b!991210 m!919183))

(assert (=> b!991212 m!919181))

(assert (=> b!991212 m!919181))

(assert (=> b!991212 m!919183))

(assert (=> b!990956 d!117815))

(declare-fun d!117817 () Bool)

(assert (=> d!117817 (= (apply!933 (+!3056 lt!439708 (tuple2!15023 lt!439709 minValue!1220)) lt!439717) (get!15667 (getValueByKey!518 (toList!6882 (+!3056 lt!439708 (tuple2!15023 lt!439709 minValue!1220))) lt!439717)))))

(declare-fun bs!28160 () Bool)

(assert (= bs!28160 d!117817))

(declare-fun m!919185 () Bool)

(assert (=> bs!28160 m!919185))

(assert (=> bs!28160 m!919185))

(declare-fun m!919187 () Bool)

(assert (=> bs!28160 m!919187))

(assert (=> b!990956 d!117817))

(declare-fun d!117819 () Bool)

(declare-fun e!558989 () Bool)

(assert (=> d!117819 e!558989))

(declare-fun res!662737 () Bool)

(assert (=> d!117819 (=> (not res!662737) (not e!558989))))

(declare-fun lt!439884 () ListLongMap!13733)

(assert (=> d!117819 (= res!662737 (contains!5735 lt!439884 (_1!7521 (tuple2!15023 lt!439710 minValue!1220))))))

(declare-fun lt!439885 () List!20972)

(assert (=> d!117819 (= lt!439884 (ListLongMap!13734 lt!439885))))

(declare-fun lt!439886 () Unit!32837)

(declare-fun lt!439887 () Unit!32837)

(assert (=> d!117819 (= lt!439886 lt!439887)))

(assert (=> d!117819 (= (getValueByKey!518 lt!439885 (_1!7521 (tuple2!15023 lt!439710 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439710 minValue!1220))))))

(assert (=> d!117819 (= lt!439887 (lemmaContainsTupThenGetReturnValue!275 lt!439885 (_1!7521 (tuple2!15023 lt!439710 minValue!1220)) (_2!7521 (tuple2!15023 lt!439710 minValue!1220))))))

(assert (=> d!117819 (= lt!439885 (insertStrictlySorted!331 (toList!6882 lt!439720) (_1!7521 (tuple2!15023 lt!439710 minValue!1220)) (_2!7521 (tuple2!15023 lt!439710 minValue!1220))))))

(assert (=> d!117819 (= (+!3056 lt!439720 (tuple2!15023 lt!439710 minValue!1220)) lt!439884)))

(declare-fun b!991213 () Bool)

(declare-fun res!662738 () Bool)

(assert (=> b!991213 (=> (not res!662738) (not e!558989))))

(assert (=> b!991213 (= res!662738 (= (getValueByKey!518 (toList!6882 lt!439884) (_1!7521 (tuple2!15023 lt!439710 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439710 minValue!1220)))))))

(declare-fun b!991214 () Bool)

(assert (=> b!991214 (= e!558989 (contains!5736 (toList!6882 lt!439884) (tuple2!15023 lt!439710 minValue!1220)))))

(assert (= (and d!117819 res!662737) b!991213))

(assert (= (and b!991213 res!662738) b!991214))

(declare-fun m!919189 () Bool)

(assert (=> d!117819 m!919189))

(declare-fun m!919191 () Bool)

(assert (=> d!117819 m!919191))

(declare-fun m!919193 () Bool)

(assert (=> d!117819 m!919193))

(declare-fun m!919195 () Bool)

(assert (=> d!117819 m!919195))

(declare-fun m!919197 () Bool)

(assert (=> b!991213 m!919197))

(declare-fun m!919199 () Bool)

(assert (=> b!991214 m!919199))

(assert (=> b!990956 d!117819))

(declare-fun d!117821 () Bool)

(declare-fun e!558990 () Bool)

(assert (=> d!117821 e!558990))

(declare-fun res!662739 () Bool)

(assert (=> d!117821 (=> (not res!662739) (not e!558990))))

(declare-fun lt!439888 () ListLongMap!13733)

(assert (=> d!117821 (= res!662739 (contains!5735 lt!439888 (_1!7521 (tuple2!15023 lt!439707 zeroValue!1220))))))

(declare-fun lt!439889 () List!20972)

(assert (=> d!117821 (= lt!439888 (ListLongMap!13734 lt!439889))))

(declare-fun lt!439890 () Unit!32837)

(declare-fun lt!439891 () Unit!32837)

(assert (=> d!117821 (= lt!439890 lt!439891)))

(assert (=> d!117821 (= (getValueByKey!518 lt!439889 (_1!7521 (tuple2!15023 lt!439707 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439707 zeroValue!1220))))))

(assert (=> d!117821 (= lt!439891 (lemmaContainsTupThenGetReturnValue!275 lt!439889 (_1!7521 (tuple2!15023 lt!439707 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439707 zeroValue!1220))))))

(assert (=> d!117821 (= lt!439889 (insertStrictlySorted!331 (toList!6882 lt!439726) (_1!7521 (tuple2!15023 lt!439707 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439707 zeroValue!1220))))))

(assert (=> d!117821 (= (+!3056 lt!439726 (tuple2!15023 lt!439707 zeroValue!1220)) lt!439888)))

(declare-fun b!991215 () Bool)

(declare-fun res!662740 () Bool)

(assert (=> b!991215 (=> (not res!662740) (not e!558990))))

(assert (=> b!991215 (= res!662740 (= (getValueByKey!518 (toList!6882 lt!439888) (_1!7521 (tuple2!15023 lt!439707 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439707 zeroValue!1220)))))))

(declare-fun b!991216 () Bool)

(assert (=> b!991216 (= e!558990 (contains!5736 (toList!6882 lt!439888) (tuple2!15023 lt!439707 zeroValue!1220)))))

(assert (= (and d!117821 res!662739) b!991215))

(assert (= (and b!991215 res!662740) b!991216))

(declare-fun m!919201 () Bool)

(assert (=> d!117821 m!919201))

(declare-fun m!919203 () Bool)

(assert (=> d!117821 m!919203))

(declare-fun m!919205 () Bool)

(assert (=> d!117821 m!919205))

(declare-fun m!919207 () Bool)

(assert (=> d!117821 m!919207))

(declare-fun m!919209 () Bool)

(assert (=> b!991215 m!919209))

(declare-fun m!919211 () Bool)

(assert (=> b!991216 m!919211))

(assert (=> b!990956 d!117821))

(declare-fun d!117823 () Bool)

(declare-fun e!558991 () Bool)

(assert (=> d!117823 e!558991))

(declare-fun res!662741 () Bool)

(assert (=> d!117823 (=> (not res!662741) (not e!558991))))

(declare-fun lt!439892 () ListLongMap!13733)

(assert (=> d!117823 (= res!662741 (contains!5735 lt!439892 (_1!7521 (tuple2!15023 lt!439712 zeroValue!1220))))))

(declare-fun lt!439893 () List!20972)

(assert (=> d!117823 (= lt!439892 (ListLongMap!13734 lt!439893))))

(declare-fun lt!439894 () Unit!32837)

(declare-fun lt!439895 () Unit!32837)

(assert (=> d!117823 (= lt!439894 lt!439895)))

(assert (=> d!117823 (= (getValueByKey!518 lt!439893 (_1!7521 (tuple2!15023 lt!439712 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439712 zeroValue!1220))))))

(assert (=> d!117823 (= lt!439895 (lemmaContainsTupThenGetReturnValue!275 lt!439893 (_1!7521 (tuple2!15023 lt!439712 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439712 zeroValue!1220))))))

(assert (=> d!117823 (= lt!439893 (insertStrictlySorted!331 (toList!6882 lt!439713) (_1!7521 (tuple2!15023 lt!439712 zeroValue!1220)) (_2!7521 (tuple2!15023 lt!439712 zeroValue!1220))))))

(assert (=> d!117823 (= (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220)) lt!439892)))

(declare-fun b!991217 () Bool)

(declare-fun res!662742 () Bool)

(assert (=> b!991217 (=> (not res!662742) (not e!558991))))

(assert (=> b!991217 (= res!662742 (= (getValueByKey!518 (toList!6882 lt!439892) (_1!7521 (tuple2!15023 lt!439712 zeroValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439712 zeroValue!1220)))))))

(declare-fun b!991218 () Bool)

(assert (=> b!991218 (= e!558991 (contains!5736 (toList!6882 lt!439892) (tuple2!15023 lt!439712 zeroValue!1220)))))

(assert (= (and d!117823 res!662741) b!991217))

(assert (= (and b!991217 res!662742) b!991218))

(declare-fun m!919213 () Bool)

(assert (=> d!117823 m!919213))

(declare-fun m!919215 () Bool)

(assert (=> d!117823 m!919215))

(declare-fun m!919217 () Bool)

(assert (=> d!117823 m!919217))

(declare-fun m!919219 () Bool)

(assert (=> d!117823 m!919219))

(declare-fun m!919221 () Bool)

(assert (=> b!991217 m!919221))

(declare-fun m!919223 () Bool)

(assert (=> b!991218 m!919223))

(assert (=> b!990956 d!117823))

(declare-fun b!991219 () Bool)

(assert (=> b!991219 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544)))))

(assert (=> b!991219 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30614 _values!1278)))))

(declare-fun e!558997 () Bool)

(declare-fun lt!439898 () ListLongMap!13733)

(assert (=> b!991219 (= e!558997 (= (apply!933 lt!439898 (select (arr!30135 _keys!1544) from!1932)) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!991220 () Bool)

(declare-fun e!558995 () Bool)

(assert (=> b!991220 (= e!558995 (isEmpty!733 lt!439898))))

(declare-fun b!991221 () Bool)

(declare-fun e!558992 () Bool)

(declare-fun e!558998 () Bool)

(assert (=> b!991221 (= e!558992 e!558998)))

(declare-fun c!100536 () Bool)

(declare-fun e!558994 () Bool)

(assert (=> b!991221 (= c!100536 e!558994)))

(declare-fun res!662744 () Bool)

(assert (=> b!991221 (=> (not res!662744) (not e!558994))))

(assert (=> b!991221 (= res!662744 (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun d!117825 () Bool)

(assert (=> d!117825 e!558992))

(declare-fun res!662746 () Bool)

(assert (=> d!117825 (=> (not res!662746) (not e!558992))))

(assert (=> d!117825 (= res!662746 (not (contains!5735 lt!439898 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!558996 () ListLongMap!13733)

(assert (=> d!117825 (= lt!439898 e!558996)))

(declare-fun c!100538 () Bool)

(assert (=> d!117825 (= c!100538 (bvsge from!1932 (size!30615 _keys!1544)))))

(assert (=> d!117825 (validMask!0 mask!1948)))

(assert (=> d!117825 (= (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) lt!439898)))

(declare-fun b!991222 () Bool)

(assert (=> b!991222 (= e!558998 e!558997)))

(assert (=> b!991222 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun res!662745 () Bool)

(assert (=> b!991222 (= res!662745 (contains!5735 lt!439898 (select (arr!30135 _keys!1544) from!1932)))))

(assert (=> b!991222 (=> (not res!662745) (not e!558997))))

(declare-fun b!991223 () Bool)

(declare-fun lt!439899 () Unit!32837)

(declare-fun lt!439900 () Unit!32837)

(assert (=> b!991223 (= lt!439899 lt!439900)))

(declare-fun lt!439901 () (_ BitVec 64))

(declare-fun lt!439896 () ListLongMap!13733)

(declare-fun lt!439897 () (_ BitVec 64))

(declare-fun lt!439902 () V!36067)

(assert (=> b!991223 (not (contains!5735 (+!3056 lt!439896 (tuple2!15023 lt!439897 lt!439902)) lt!439901))))

(assert (=> b!991223 (= lt!439900 (addStillNotContains!239 lt!439896 lt!439897 lt!439902 lt!439901))))

(assert (=> b!991223 (= lt!439901 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!991223 (= lt!439902 (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!991223 (= lt!439897 (select (arr!30135 _keys!1544) from!1932))))

(declare-fun call!42073 () ListLongMap!13733)

(assert (=> b!991223 (= lt!439896 call!42073)))

(declare-fun e!558993 () ListLongMap!13733)

(assert (=> b!991223 (= e!558993 (+!3056 call!42073 (tuple2!15023 (select (arr!30135 _keys!1544) from!1932) (get!15664 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!991224 () Bool)

(assert (=> b!991224 (= e!558998 e!558995)))

(declare-fun c!100535 () Bool)

(assert (=> b!991224 (= c!100535 (bvslt from!1932 (size!30615 _keys!1544)))))

(declare-fun b!991225 () Bool)

(assert (=> b!991225 (= e!558995 (= lt!439898 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!991226 () Bool)

(declare-fun res!662743 () Bool)

(assert (=> b!991226 (=> (not res!662743) (not e!558992))))

(assert (=> b!991226 (= res!662743 (not (contains!5735 lt!439898 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!991227 () Bool)

(assert (=> b!991227 (= e!558994 (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)))))

(assert (=> b!991227 (bvsge from!1932 #b00000000000000000000000000000000)))

(declare-fun bm!42070 () Bool)

(assert (=> bm!42070 (= call!42073 (getCurrentListMapNoExtraKeys!3526 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!991228 () Bool)

(assert (=> b!991228 (= e!558996 e!558993)))

(declare-fun c!100537 () Bool)

(assert (=> b!991228 (= c!100537 (validKeyInArray!0 (select (arr!30135 _keys!1544) from!1932)))))

(declare-fun b!991229 () Bool)

(assert (=> b!991229 (= e!558996 (ListLongMap!13734 Nil!20969))))

(declare-fun b!991230 () Bool)

(assert (=> b!991230 (= e!558993 call!42073)))

(assert (= (and d!117825 c!100538) b!991229))

(assert (= (and d!117825 (not c!100538)) b!991228))

(assert (= (and b!991228 c!100537) b!991223))

(assert (= (and b!991228 (not c!100537)) b!991230))

(assert (= (or b!991223 b!991230) bm!42070))

(assert (= (and d!117825 res!662746) b!991226))

(assert (= (and b!991226 res!662743) b!991221))

(assert (= (and b!991221 res!662744) b!991227))

(assert (= (and b!991221 c!100536) b!991222))

(assert (= (and b!991221 (not c!100536)) b!991224))

(assert (= (and b!991222 res!662745) b!991219))

(assert (= (and b!991224 c!100535) b!991225))

(assert (= (and b!991224 (not c!100535)) b!991220))

(declare-fun b_lambda!15247 () Bool)

(assert (=> (not b_lambda!15247) (not b!991219)))

(assert (=> b!991219 t!29960))

(declare-fun b_and!32303 () Bool)

(assert (= b_and!32301 (and (=> t!29960 result!13673) b_and!32303)))

(declare-fun b_lambda!15249 () Bool)

(assert (=> (not b_lambda!15249) (not b!991223)))

(assert (=> b!991223 t!29960))

(declare-fun b_and!32305 () Bool)

(assert (= b_and!32303 (and (=> t!29960 result!13673) b_and!32305)))

(assert (=> b!991219 m!918737))

(assert (=> b!991219 m!918713))

(declare-fun m!919225 () Bool)

(assert (=> b!991219 m!919225))

(assert (=> b!991219 m!918713))

(assert (=> b!991219 m!918729))

(assert (=> b!991219 m!918737))

(assert (=> b!991219 m!918739))

(assert (=> b!991219 m!918729))

(declare-fun m!919227 () Bool)

(assert (=> b!991225 m!919227))

(assert (=> b!991228 m!918713))

(assert (=> b!991228 m!918713))

(assert (=> b!991228 m!918715))

(declare-fun m!919229 () Bool)

(assert (=> b!991220 m!919229))

(assert (=> b!991223 m!918737))

(declare-fun m!919231 () Bool)

(assert (=> b!991223 m!919231))

(assert (=> b!991223 m!918729))

(assert (=> b!991223 m!918737))

(assert (=> b!991223 m!918739))

(assert (=> b!991223 m!918729))

(declare-fun m!919233 () Bool)

(assert (=> b!991223 m!919233))

(assert (=> b!991223 m!919233))

(declare-fun m!919235 () Bool)

(assert (=> b!991223 m!919235))

(declare-fun m!919237 () Bool)

(assert (=> b!991223 m!919237))

(assert (=> b!991223 m!918713))

(assert (=> b!991227 m!918713))

(assert (=> b!991227 m!918713))

(assert (=> b!991227 m!918715))

(assert (=> b!991222 m!918713))

(assert (=> b!991222 m!918713))

(declare-fun m!919239 () Bool)

(assert (=> b!991222 m!919239))

(assert (=> bm!42070 m!919227))

(declare-fun m!919241 () Bool)

(assert (=> d!117825 m!919241))

(assert (=> d!117825 m!918723))

(declare-fun m!919243 () Bool)

(assert (=> b!991226 m!919243))

(assert (=> b!990956 d!117825))

(declare-fun d!117827 () Bool)

(assert (=> d!117827 (= (apply!933 (+!3056 lt!439708 (tuple2!15023 lt!439709 minValue!1220)) lt!439717) (apply!933 lt!439708 lt!439717))))

(declare-fun lt!439903 () Unit!32837)

(assert (=> d!117827 (= lt!439903 (choose!1628 lt!439708 lt!439709 minValue!1220 lt!439717))))

(declare-fun e!558999 () Bool)

(assert (=> d!117827 e!558999))

(declare-fun res!662747 () Bool)

(assert (=> d!117827 (=> (not res!662747) (not e!558999))))

(assert (=> d!117827 (= res!662747 (contains!5735 lt!439708 lt!439717))))

(assert (=> d!117827 (= (addApplyDifferent!473 lt!439708 lt!439709 minValue!1220 lt!439717) lt!439903)))

(declare-fun b!991231 () Bool)

(assert (=> b!991231 (= e!558999 (not (= lt!439717 lt!439709)))))

(assert (= (and d!117827 res!662747) b!991231))

(assert (=> d!117827 m!918793))

(assert (=> d!117827 m!918793))

(assert (=> d!117827 m!918795))

(assert (=> d!117827 m!918789))

(declare-fun m!919245 () Bool)

(assert (=> d!117827 m!919245))

(declare-fun m!919247 () Bool)

(assert (=> d!117827 m!919247))

(assert (=> b!990956 d!117827))

(declare-fun d!117829 () Bool)

(assert (=> d!117829 (contains!5735 (+!3056 lt!439713 (tuple2!15023 lt!439712 zeroValue!1220)) lt!439725)))

(declare-fun lt!439904 () Unit!32837)

(assert (=> d!117829 (= lt!439904 (choose!1629 lt!439713 lt!439712 zeroValue!1220 lt!439725))))

(assert (=> d!117829 (contains!5735 lt!439713 lt!439725)))

(assert (=> d!117829 (= (addStillContains!621 lt!439713 lt!439712 zeroValue!1220 lt!439725) lt!439904)))

(declare-fun bs!28161 () Bool)

(assert (= bs!28161 d!117829))

(assert (=> bs!28161 m!918797))

(assert (=> bs!28161 m!918797))

(assert (=> bs!28161 m!918799))

(declare-fun m!919249 () Bool)

(assert (=> bs!28161 m!919249))

(declare-fun m!919251 () Bool)

(assert (=> bs!28161 m!919251))

(assert (=> b!990956 d!117829))

(declare-fun d!117831 () Bool)

(assert (=> d!117831 (= (apply!933 lt!439726 lt!439723) (get!15667 (getValueByKey!518 (toList!6882 lt!439726) lt!439723)))))

(declare-fun bs!28162 () Bool)

(assert (= bs!28162 d!117831))

(declare-fun m!919253 () Bool)

(assert (=> bs!28162 m!919253))

(assert (=> bs!28162 m!919253))

(declare-fun m!919255 () Bool)

(assert (=> bs!28162 m!919255))

(assert (=> b!990956 d!117831))

(declare-fun d!117833 () Bool)

(assert (=> d!117833 (= (apply!933 lt!439708 lt!439717) (get!15667 (getValueByKey!518 (toList!6882 lt!439708) lt!439717)))))

(declare-fun bs!28163 () Bool)

(assert (= bs!28163 d!117833))

(declare-fun m!919257 () Bool)

(assert (=> bs!28163 m!919257))

(assert (=> bs!28163 m!919257))

(declare-fun m!919259 () Bool)

(assert (=> bs!28163 m!919259))

(assert (=> b!990956 d!117833))

(declare-fun d!117835 () Bool)

(declare-fun e!559000 () Bool)

(assert (=> d!117835 e!559000))

(declare-fun res!662748 () Bool)

(assert (=> d!117835 (=> (not res!662748) (not e!559000))))

(declare-fun lt!439905 () ListLongMap!13733)

(assert (=> d!117835 (= res!662748 (contains!5735 lt!439905 (_1!7521 (tuple2!15023 lt!439709 minValue!1220))))))

(declare-fun lt!439906 () List!20972)

(assert (=> d!117835 (= lt!439905 (ListLongMap!13734 lt!439906))))

(declare-fun lt!439907 () Unit!32837)

(declare-fun lt!439908 () Unit!32837)

(assert (=> d!117835 (= lt!439907 lt!439908)))

(assert (=> d!117835 (= (getValueByKey!518 lt!439906 (_1!7521 (tuple2!15023 lt!439709 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439709 minValue!1220))))))

(assert (=> d!117835 (= lt!439908 (lemmaContainsTupThenGetReturnValue!275 lt!439906 (_1!7521 (tuple2!15023 lt!439709 minValue!1220)) (_2!7521 (tuple2!15023 lt!439709 minValue!1220))))))

(assert (=> d!117835 (= lt!439906 (insertStrictlySorted!331 (toList!6882 lt!439708) (_1!7521 (tuple2!15023 lt!439709 minValue!1220)) (_2!7521 (tuple2!15023 lt!439709 minValue!1220))))))

(assert (=> d!117835 (= (+!3056 lt!439708 (tuple2!15023 lt!439709 minValue!1220)) lt!439905)))

(declare-fun b!991232 () Bool)

(declare-fun res!662749 () Bool)

(assert (=> b!991232 (=> (not res!662749) (not e!559000))))

(assert (=> b!991232 (= res!662749 (= (getValueByKey!518 (toList!6882 lt!439905) (_1!7521 (tuple2!15023 lt!439709 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 lt!439709 minValue!1220)))))))

(declare-fun b!991233 () Bool)

(assert (=> b!991233 (= e!559000 (contains!5736 (toList!6882 lt!439905) (tuple2!15023 lt!439709 minValue!1220)))))

(assert (= (and d!117835 res!662748) b!991232))

(assert (= (and b!991232 res!662749) b!991233))

(declare-fun m!919261 () Bool)

(assert (=> d!117835 m!919261))

(declare-fun m!919263 () Bool)

(assert (=> d!117835 m!919263))

(declare-fun m!919265 () Bool)

(assert (=> d!117835 m!919265))

(declare-fun m!919267 () Bool)

(assert (=> d!117835 m!919267))

(declare-fun m!919269 () Bool)

(assert (=> b!991232 m!919269))

(declare-fun m!919271 () Bool)

(assert (=> b!991233 m!919271))

(assert (=> b!990956 d!117835))

(declare-fun d!117837 () Bool)

(declare-fun e!559002 () Bool)

(assert (=> d!117837 e!559002))

(declare-fun res!662750 () Bool)

(assert (=> d!117837 (=> res!662750 e!559002)))

(declare-fun lt!439909 () Bool)

(assert (=> d!117837 (= res!662750 (not lt!439909))))

(declare-fun lt!439912 () Bool)

(assert (=> d!117837 (= lt!439909 lt!439912)))

(declare-fun lt!439910 () Unit!32837)

(declare-fun e!559001 () Unit!32837)

(assert (=> d!117837 (= lt!439910 e!559001)))

(declare-fun c!100539 () Bool)

(assert (=> d!117837 (= c!100539 lt!439912)))

(assert (=> d!117837 (= lt!439912 (containsKey!481 (toList!6882 lt!439740) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117837 (= (contains!5735 lt!439740 #b0000000000000000000000000000000000000000000000000000000000000000) lt!439909)))

(declare-fun b!991234 () Bool)

(declare-fun lt!439911 () Unit!32837)

(assert (=> b!991234 (= e!559001 lt!439911)))

(assert (=> b!991234 (= lt!439911 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439740) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!991234 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991235 () Bool)

(declare-fun Unit!32847 () Unit!32837)

(assert (=> b!991235 (= e!559001 Unit!32847)))

(declare-fun b!991236 () Bool)

(assert (=> b!991236 (= e!559002 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117837 c!100539) b!991234))

(assert (= (and d!117837 (not c!100539)) b!991235))

(assert (= (and d!117837 (not res!662750)) b!991236))

(declare-fun m!919273 () Bool)

(assert (=> d!117837 m!919273))

(declare-fun m!919275 () Bool)

(assert (=> b!991234 m!919275))

(assert (=> b!991234 m!919123))

(assert (=> b!991234 m!919123))

(declare-fun m!919277 () Bool)

(assert (=> b!991234 m!919277))

(assert (=> b!991236 m!919123))

(assert (=> b!991236 m!919123))

(assert (=> b!991236 m!919277))

(assert (=> bm!42044 d!117837))

(declare-fun d!117839 () Bool)

(assert (=> d!117839 (= (apply!933 lt!439740 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15667 (getValueByKey!518 (toList!6882 lt!439740) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(declare-fun bs!28164 () Bool)

(assert (= bs!28164 d!117839))

(assert (=> bs!28164 m!918833))

(declare-fun m!919279 () Bool)

(assert (=> bs!28164 m!919279))

(assert (=> bs!28164 m!919279))

(declare-fun m!919281 () Bool)

(assert (=> bs!28164 m!919281))

(assert (=> b!990974 d!117839))

(declare-fun d!117841 () Bool)

(declare-fun c!100540 () Bool)

(assert (=> d!117841 (= c!100540 ((_ is ValueCellFull!11175) (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun e!559003 () V!36067)

(assert (=> d!117841 (= (get!15664 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!559003)))

(declare-fun b!991237 () Bool)

(assert (=> b!991237 (= e!559003 (get!15665 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!991238 () Bool)

(assert (=> b!991238 (= e!559003 (get!15666 (select (arr!30134 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117841 c!100540) b!991237))

(assert (= (and d!117841 (not c!100540)) b!991238))

(assert (=> b!991237 m!918829))

(assert (=> b!991237 m!918737))

(declare-fun m!919283 () Bool)

(assert (=> b!991237 m!919283))

(assert (=> b!991238 m!918829))

(assert (=> b!991238 m!918737))

(declare-fun m!919285 () Bool)

(assert (=> b!991238 m!919285))

(assert (=> b!990974 d!117841))

(declare-fun d!117843 () Bool)

(declare-fun e!559005 () Bool)

(assert (=> d!117843 e!559005))

(declare-fun res!662751 () Bool)

(assert (=> d!117843 (=> res!662751 e!559005)))

(declare-fun lt!439913 () Bool)

(assert (=> d!117843 (= res!662751 (not lt!439913))))

(declare-fun lt!439916 () Bool)

(assert (=> d!117843 (= lt!439913 lt!439916)))

(declare-fun lt!439914 () Unit!32837)

(declare-fun e!559004 () Unit!32837)

(assert (=> d!117843 (= lt!439914 e!559004)))

(declare-fun c!100541 () Bool)

(assert (=> d!117843 (= c!100541 lt!439916)))

(assert (=> d!117843 (= lt!439916 (containsKey!481 (toList!6882 lt!439740) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!117843 (= (contains!5735 lt!439740 #b1000000000000000000000000000000000000000000000000000000000000000) lt!439913)))

(declare-fun b!991239 () Bool)

(declare-fun lt!439915 () Unit!32837)

(assert (=> b!991239 (= e!559004 lt!439915)))

(assert (=> b!991239 (= lt!439915 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439740) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!991239 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991240 () Bool)

(declare-fun Unit!32848 () Unit!32837)

(assert (=> b!991240 (= e!559004 Unit!32848)))

(declare-fun b!991241 () Bool)

(assert (=> b!991241 (= e!559005 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!117843 c!100541) b!991239))

(assert (= (and d!117843 (not c!100541)) b!991240))

(assert (= (and d!117843 (not res!662751)) b!991241))

(declare-fun m!919287 () Bool)

(assert (=> d!117843 m!919287))

(declare-fun m!919289 () Bool)

(assert (=> b!991239 m!919289))

(declare-fun m!919291 () Bool)

(assert (=> b!991239 m!919291))

(assert (=> b!991239 m!919291))

(declare-fun m!919293 () Bool)

(assert (=> b!991239 m!919293))

(assert (=> b!991241 m!919291))

(assert (=> b!991241 m!919291))

(assert (=> b!991241 m!919293))

(assert (=> bm!42043 d!117843))

(assert (=> b!990955 d!117715))

(declare-fun d!117845 () Bool)

(declare-fun e!559007 () Bool)

(assert (=> d!117845 e!559007))

(declare-fun res!662752 () Bool)

(assert (=> d!117845 (=> res!662752 e!559007)))

(declare-fun lt!439917 () Bool)

(assert (=> d!117845 (= res!662752 (not lt!439917))))

(declare-fun lt!439920 () Bool)

(assert (=> d!117845 (= lt!439917 lt!439920)))

(declare-fun lt!439918 () Unit!32837)

(declare-fun e!559006 () Unit!32837)

(assert (=> d!117845 (= lt!439918 e!559006)))

(declare-fun c!100542 () Bool)

(assert (=> d!117845 (= c!100542 lt!439920)))

(assert (=> d!117845 (= lt!439920 (containsKey!481 (toList!6882 lt!439740) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> d!117845 (= (contains!5735 lt!439740 (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) lt!439917)))

(declare-fun b!991242 () Bool)

(declare-fun lt!439919 () Unit!32837)

(assert (=> b!991242 (= e!559006 lt!439919)))

(assert (=> b!991242 (= lt!439919 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!6882 lt!439740) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!991242 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!991243 () Bool)

(declare-fun Unit!32849 () Unit!32837)

(assert (=> b!991243 (= e!559006 Unit!32849)))

(declare-fun b!991244 () Bool)

(assert (=> b!991244 (= e!559007 (isDefined!386 (getValueByKey!518 (toList!6882 lt!439740) (select (arr!30135 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))))

(assert (= (and d!117845 c!100542) b!991242))

(assert (= (and d!117845 (not c!100542)) b!991243))

(assert (= (and d!117845 (not res!662752)) b!991244))

(assert (=> d!117845 m!918833))

(declare-fun m!919295 () Bool)

(assert (=> d!117845 m!919295))

(assert (=> b!991242 m!918833))

(declare-fun m!919297 () Bool)

(assert (=> b!991242 m!919297))

(assert (=> b!991242 m!918833))

(assert (=> b!991242 m!919279))

(assert (=> b!991242 m!919279))

(declare-fun m!919299 () Bool)

(assert (=> b!991242 m!919299))

(assert (=> b!991244 m!918833))

(assert (=> b!991244 m!919279))

(assert (=> b!991244 m!919279))

(assert (=> b!991244 m!919299))

(assert (=> b!990989 d!117845))

(declare-fun d!117847 () Bool)

(assert (=> d!117847 (= (get!15666 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!990999 d!117847))

(declare-fun d!117849 () Bool)

(assert (=> d!117849 (= (get!15665 (select (arr!30134 _values!1278) from!1932) (dynLambda!1882 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14280 (select (arr!30134 _values!1278) from!1932)))))

(assert (=> b!990998 d!117849))

(assert (=> bm!42040 d!117825))

(assert (=> b!990984 d!117763))

(declare-fun d!117851 () Bool)

(declare-fun e!559008 () Bool)

(assert (=> d!117851 e!559008))

(declare-fun res!662753 () Bool)

(assert (=> d!117851 (=> (not res!662753) (not e!559008))))

(declare-fun lt!439921 () ListLongMap!13733)

(assert (=> d!117851 (= res!662753 (contains!5735 lt!439921 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(declare-fun lt!439922 () List!20972)

(assert (=> d!117851 (= lt!439921 (ListLongMap!13734 lt!439922))))

(declare-fun lt!439923 () Unit!32837)

(declare-fun lt!439924 () Unit!32837)

(assert (=> d!117851 (= lt!439923 lt!439924)))

(assert (=> d!117851 (= (getValueByKey!518 lt!439922 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117851 (= lt!439924 (lemmaContainsTupThenGetReturnValue!275 lt!439922 (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117851 (= lt!439922 (insertStrictlySorted!331 (toList!6882 call!42042) (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (=> d!117851 (= (+!3056 call!42042 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) lt!439921)))

(declare-fun b!991245 () Bool)

(declare-fun res!662754 () Bool)

(assert (=> b!991245 (=> (not res!662754) (not e!559008))))

(assert (=> b!991245 (= res!662754 (= (getValueByKey!518 (toList!6882 lt!439921) (_1!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (Some!523 (_2!7521 (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun b!991246 () Bool)

(assert (=> b!991246 (= e!559008 (contains!5736 (toList!6882 lt!439921) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(assert (= (and d!117851 res!662753) b!991245))

(assert (= (and b!991245 res!662754) b!991246))

(declare-fun m!919301 () Bool)

(assert (=> d!117851 m!919301))

(declare-fun m!919303 () Bool)

(assert (=> d!117851 m!919303))

(declare-fun m!919305 () Bool)

(assert (=> d!117851 m!919305))

(declare-fun m!919307 () Bool)

(assert (=> d!117851 m!919307))

(declare-fun m!919309 () Bool)

(assert (=> b!991245 m!919309))

(declare-fun m!919311 () Bool)

(assert (=> b!991246 m!919311))

(assert (=> b!990952 d!117851))

(declare-fun d!117853 () Bool)

(assert (=> d!117853 (= (apply!933 lt!439740 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15667 (getValueByKey!518 (toList!6882 lt!439740) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!28165 () Bool)

(assert (= bs!28165 d!117853))

(assert (=> bs!28165 m!919291))

(assert (=> bs!28165 m!919291))

(declare-fun m!919313 () Bool)

(assert (=> bs!28165 m!919313))

(assert (=> b!990985 d!117853))

(declare-fun d!117855 () Bool)

(declare-fun e!559009 () Bool)

(assert (=> d!117855 e!559009))

(declare-fun res!662755 () Bool)

(assert (=> d!117855 (=> (not res!662755) (not e!559009))))

(declare-fun lt!439925 () ListLongMap!13733)

(assert (=> d!117855 (= res!662755 (contains!5735 lt!439925 (_1!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(declare-fun lt!439926 () List!20972)

(assert (=> d!117855 (= lt!439925 (ListLongMap!13734 lt!439926))))

(declare-fun lt!439927 () Unit!32837)

(declare-fun lt!439928 () Unit!32837)

(assert (=> d!117855 (= lt!439927 lt!439928)))

(assert (=> d!117855 (= (getValueByKey!518 lt!439926 (_1!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!523 (_2!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117855 (= lt!439928 (lemmaContainsTupThenGetReturnValue!275 lt!439926 (_1!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117855 (= lt!439926 (insertStrictlySorted!331 (toList!6882 (ite c!100467 call!42041 (ite c!100466 call!42044 call!42045))) (_1!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) (_2!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))))

(assert (=> d!117855 (= (+!3056 (ite c!100467 call!42041 (ite c!100466 call!42044 call!42045)) (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))) lt!439925)))

(declare-fun b!991247 () Bool)

(declare-fun res!662756 () Bool)

(assert (=> b!991247 (=> (not res!662756) (not e!559009))))

(assert (=> b!991247 (= res!662756 (= (getValueByKey!518 (toList!6882 lt!439925) (_1!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))) (Some!523 (_2!7521 (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))))

(declare-fun b!991248 () Bool)

(assert (=> b!991248 (= e!559009 (contains!5736 (toList!6882 lt!439925) (ite (or c!100467 c!100466) (tuple2!15023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220) (tuple2!15023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))))

(assert (= (and d!117855 res!662755) b!991247))

(assert (= (and b!991247 res!662756) b!991248))

(declare-fun m!919315 () Bool)

(assert (=> d!117855 m!919315))

(declare-fun m!919317 () Bool)

(assert (=> d!117855 m!919317))

(declare-fun m!919319 () Bool)

(assert (=> d!117855 m!919319))

(declare-fun m!919321 () Bool)

(assert (=> d!117855 m!919321))

(declare-fun m!919323 () Bool)

(assert (=> b!991247 m!919323))

(declare-fun m!919325 () Bool)

(assert (=> b!991248 m!919325))

(assert (=> bm!42039 d!117855))

(declare-fun mapNonEmpty!37029 () Bool)

(declare-fun mapRes!37029 () Bool)

(declare-fun tp!70101 () Bool)

(declare-fun e!559011 () Bool)

(assert (=> mapNonEmpty!37029 (= mapRes!37029 (and tp!70101 e!559011))))

(declare-fun mapValue!37029 () ValueCell!11175)

(declare-fun mapKey!37029 () (_ BitVec 32))

(declare-fun mapRest!37029 () (Array (_ BitVec 32) ValueCell!11175))

(assert (=> mapNonEmpty!37029 (= mapRest!37028 (store mapRest!37029 mapKey!37029 mapValue!37029))))

(declare-fun condMapEmpty!37029 () Bool)

(declare-fun mapDefault!37029 () ValueCell!11175)

(assert (=> mapNonEmpty!37028 (= condMapEmpty!37029 (= mapRest!37028 ((as const (Array (_ BitVec 32) ValueCell!11175)) mapDefault!37029)))))

(declare-fun e!559010 () Bool)

(assert (=> mapNonEmpty!37028 (= tp!70100 (and e!559010 mapRes!37029))))

(declare-fun b!991250 () Bool)

(assert (=> b!991250 (= e!559010 tp_is_empty!23313)))

(declare-fun mapIsEmpty!37029 () Bool)

(assert (=> mapIsEmpty!37029 mapRes!37029))

(declare-fun b!991249 () Bool)

(assert (=> b!991249 (= e!559011 tp_is_empty!23313)))

(assert (= (and mapNonEmpty!37028 condMapEmpty!37029) mapIsEmpty!37029))

(assert (= (and mapNonEmpty!37028 (not condMapEmpty!37029)) mapNonEmpty!37029))

(assert (= (and mapNonEmpty!37029 ((_ is ValueCellFull!11175) mapValue!37029)) b!991249))

(assert (= (and mapNonEmpty!37028 ((_ is ValueCellFull!11175) mapDefault!37029)) b!991250))

(declare-fun m!919327 () Bool)

(assert (=> mapNonEmpty!37029 m!919327))

(declare-fun b_lambda!15251 () Bool)

(assert (= b_lambda!15245 (or (and start!84770 b_free!20097) b_lambda!15251)))

(declare-fun b_lambda!15253 () Bool)

(assert (= b_lambda!15249 (or (and start!84770 b_free!20097) b_lambda!15253)))

(declare-fun b_lambda!15255 () Bool)

(assert (= b_lambda!15243 (or (and start!84770 b_free!20097) b_lambda!15255)))

(declare-fun b_lambda!15257 () Bool)

(assert (= b_lambda!15247 (or (and start!84770 b_free!20097) b_lambda!15257)))

(check-sat (not d!117813) (not b!991089) (not b!991198) (not b!991177) (not b!991069) (not d!117787) (not bm!42060) (not b!991163) (not b_lambda!15257) (not d!117845) (not d!117805) (not b!991226) (not b!991135) (not d!117745) (not b!991088) (not d!117829) (not d!117835) (not b!991239) (not d!117731) (not b!991100) (not b!991202) (not d!117729) (not b!991090) (not b_next!20097) (not d!117801) (not d!117833) (not b!991228) (not b!991152) (not b!991155) (not b!991157) (not d!117837) tp_is_empty!23313 (not b!991036) (not d!117779) (not b!991112) (not b_lambda!15253) (not d!117803) (not d!117793) (not b!991227) (not b!991244) (not d!117823) (not b!991146) (not d!117783) (not b!991242) (not d!117827) (not b!991063) (not b!991150) (not b!991072) (not b!991219) (not b!991066) (not b!991247) (not d!117811) (not d!117819) (not b!991148) (not b_lambda!15241) (not b!991217) (not b_lambda!15255) (not b!991160) (not b!991236) (not b!991165) (not d!117781) (not bm!42070) (not d!117727) (not b!991210) (not b!991237) (not b!991213) (not b!991220) (not d!117739) (not b!991225) (not b!991238) (not d!117751) (not b!991232) (not b_lambda!15239) (not d!117755) (not d!117759) (not d!117839) b_and!32305 (not d!117821) (not b!991233) (not b!991064) (not b!991154) (not d!117843) (not b!991170) (not b!991216) (not b!991167) (not bm!42068) (not b!991164) (not d!117767) (not b!991083) (not b!991071) (not d!117743) (not d!117799) (not d!117749) (not mapNonEmpty!37029) (not b!991151) (not d!117773) (not d!117807) (not d!117735) (not b!991158) (not d!117853) (not b!991245) (not b!991131) (not d!117855) (not d!117817) (not b!991246) (not bm!42058) (not d!117747) (not d!117851) (not b!991106) (not d!117825) (not b!991153) (not b!991214) (not d!117809) (not b!991207) (not d!117815) (not b!991070) (not d!117753) (not b!991241) (not bm!42059) (not b!991176) (not b_lambda!15233) (not b!991126) (not b!991212) (not b!991091) (not b!991234) (not b!991222) (not d!117785) (not b!991223) (not d!117795) (not b!991037) (not d!117831) (not b!991067) (not b!991215) (not d!117765) (not b!991038) (not b_lambda!15251) (not d!117741) (not d!117737) (not d!117757) (not d!117769) (not b!991081) (not b!991248) (not b!991133) (not b!991218) (not b!991035) (not d!117789) (not d!117733))
(check-sat b_and!32305 (not b_next!20097))
