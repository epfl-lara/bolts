; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42710 () Bool)

(assert start!42710)

(declare-fun b_free!12069 () Bool)

(declare-fun b_next!12069 () Bool)

(assert (=> start!42710 (= b_free!12069 (not b_next!12069))))

(declare-fun tp!42259 () Bool)

(declare-fun b_and!20611 () Bool)

(assert (=> start!42710 (= tp!42259 b_and!20611)))

(declare-fun defaultEntry!841 () Int)

(declare-fun b!476075 () Bool)

(declare-datatypes ((V!19101 0))(
  ( (V!19102 (val!6793 Int)) )
))
(declare-datatypes ((tuple2!8958 0))(
  ( (tuple2!8959 (_1!4489 (_ BitVec 64)) (_2!4489 V!19101)) )
))
(declare-fun lt!217066 () tuple2!8958)

(declare-datatypes ((array!30707 0))(
  ( (array!30708 (arr!14764 (Array (_ BitVec 32) (_ BitVec 64))) (size!15116 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30707)

(declare-datatypes ((ValueCell!6405 0))(
  ( (ValueCellFull!6405 (v!9085 V!19101)) (EmptyCell!6405) )
))
(declare-datatypes ((array!30709 0))(
  ( (array!30710 (arr!14765 (Array (_ BitVec 32) ValueCell!6405)) (size!15117 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30709)

(declare-fun zeroValue!794 () V!19101)

(declare-datatypes ((List!9066 0))(
  ( (Nil!9063) (Cons!9062 (h!9918 tuple2!8958) (t!15056 List!9066)) )
))
(declare-datatypes ((ListLongMap!7885 0))(
  ( (ListLongMap!7886 (toList!3958 List!9066)) )
))
(declare-fun lt!217068 () ListLongMap!7885)

(declare-fun minValueAfter!38 () V!19101)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun e!279621 () Bool)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun +!1735 (ListLongMap!7885 tuple2!8958) ListLongMap!7885)

(declare-fun getCurrentListMap!2271 (array!30707 array!30709 (_ BitVec 32) (_ BitVec 32) V!19101 V!19101 (_ BitVec 32) Int) ListLongMap!7885)

(assert (=> b!476075 (= e!279621 (= (+!1735 lt!217068 lt!217066) (getCurrentListMap!2271 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(declare-fun lt!217071 () ListLongMap!7885)

(declare-fun minValueBefore!38 () V!19101)

(assert (=> b!476075 (= (+!1735 lt!217071 lt!217066) (+!1735 (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!217066))))

(assert (=> b!476075 (= lt!217066 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13999 0))(
  ( (Unit!14000) )
))
(declare-fun lt!217069 () Unit!13999)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!165 (ListLongMap!7885 (_ BitVec 64) V!19101 V!19101) Unit!13999)

(assert (=> b!476075 (= lt!217069 (addSameAsAddTwiceSameKeyDiffValues!165 lt!217071 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!217070 () ListLongMap!7885)

(assert (=> b!476075 (= lt!217071 (+!1735 lt!217070 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!476075 (= lt!217068 (getCurrentListMap!2271 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!476076 () Bool)

(declare-fun e!279626 () Bool)

(declare-fun tp_is_empty!13497 () Bool)

(assert (=> b!476076 (= e!279626 tp_is_empty!13497)))

(declare-fun b!476077 () Bool)

(declare-fun res!284284 () Bool)

(declare-fun e!279622 () Bool)

(assert (=> b!476077 (=> (not res!284284) (not e!279622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30707 (_ BitVec 32)) Bool)

(assert (=> b!476077 (= res!284284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21976 () Bool)

(declare-fun mapRes!21976 () Bool)

(declare-fun tp!42258 () Bool)

(assert (=> mapNonEmpty!21976 (= mapRes!21976 (and tp!42258 e!279626))))

(declare-fun mapKey!21976 () (_ BitVec 32))

(declare-fun mapValue!21976 () ValueCell!6405)

(declare-fun mapRest!21976 () (Array (_ BitVec 32) ValueCell!6405))

(assert (=> mapNonEmpty!21976 (= (arr!14765 _values!833) (store mapRest!21976 mapKey!21976 mapValue!21976))))

(declare-fun res!284287 () Bool)

(assert (=> start!42710 (=> (not res!284287) (not e!279622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42710 (= res!284287 (validMask!0 mask!1365))))

(assert (=> start!42710 e!279622))

(assert (=> start!42710 tp_is_empty!13497))

(assert (=> start!42710 tp!42259))

(assert (=> start!42710 true))

(declare-fun array_inv!10642 (array!30707) Bool)

(assert (=> start!42710 (array_inv!10642 _keys!1025)))

(declare-fun e!279623 () Bool)

(declare-fun array_inv!10643 (array!30709) Bool)

(assert (=> start!42710 (and (array_inv!10643 _values!833) e!279623)))

(declare-fun b!476078 () Bool)

(declare-fun res!284285 () Bool)

(assert (=> b!476078 (=> (not res!284285) (not e!279622))))

(assert (=> b!476078 (= res!284285 (and (= (size!15117 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15116 _keys!1025) (size!15117 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!476079 () Bool)

(declare-fun e!279625 () Bool)

(assert (=> b!476079 (= e!279625 tp_is_empty!13497)))

(declare-fun b!476080 () Bool)

(declare-fun res!284283 () Bool)

(assert (=> b!476080 (=> (not res!284283) (not e!279622))))

(declare-datatypes ((List!9067 0))(
  ( (Nil!9064) (Cons!9063 (h!9919 (_ BitVec 64)) (t!15057 List!9067)) )
))
(declare-fun arrayNoDuplicates!0 (array!30707 (_ BitVec 32) List!9067) Bool)

(assert (=> b!476080 (= res!284283 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9064))))

(declare-fun mapIsEmpty!21976 () Bool)

(assert (=> mapIsEmpty!21976 mapRes!21976))

(declare-fun b!476081 () Bool)

(assert (=> b!476081 (= e!279622 (not e!279621))))

(declare-fun res!284286 () Bool)

(assert (=> b!476081 (=> res!284286 e!279621)))

(assert (=> b!476081 (= res!284286 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!217067 () ListLongMap!7885)

(assert (=> b!476081 (= lt!217070 lt!217067)))

(declare-fun lt!217072 () Unit!13999)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!282 (array!30707 array!30709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19101 V!19101 V!19101 V!19101 (_ BitVec 32) Int) Unit!13999)

(assert (=> b!476081 (= lt!217072 (lemmaNoChangeToArrayThenSameMapNoExtras!282 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2111 (array!30707 array!30709 (_ BitVec 32) (_ BitVec 32) V!19101 V!19101 (_ BitVec 32) Int) ListLongMap!7885)

(assert (=> b!476081 (= lt!217067 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!476081 (= lt!217070 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!476082 () Bool)

(assert (=> b!476082 (= e!279623 (and e!279625 mapRes!21976))))

(declare-fun condMapEmpty!21976 () Bool)

(declare-fun mapDefault!21976 () ValueCell!6405)

(assert (=> b!476082 (= condMapEmpty!21976 (= (arr!14765 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6405)) mapDefault!21976)))))

(assert (= (and start!42710 res!284287) b!476078))

(assert (= (and b!476078 res!284285) b!476077))

(assert (= (and b!476077 res!284284) b!476080))

(assert (= (and b!476080 res!284283) b!476081))

(assert (= (and b!476081 (not res!284286)) b!476075))

(assert (= (and b!476082 condMapEmpty!21976) mapIsEmpty!21976))

(assert (= (and b!476082 (not condMapEmpty!21976)) mapNonEmpty!21976))

(get-info :version)

(assert (= (and mapNonEmpty!21976 ((_ is ValueCellFull!6405) mapValue!21976)) b!476076))

(assert (= (and b!476082 ((_ is ValueCellFull!6405) mapDefault!21976)) b!476079))

(assert (= start!42710 b!476082))

(declare-fun m!458345 () Bool)

(assert (=> mapNonEmpty!21976 m!458345))

(declare-fun m!458347 () Bool)

(assert (=> b!476075 m!458347))

(declare-fun m!458349 () Bool)

(assert (=> b!476075 m!458349))

(declare-fun m!458351 () Bool)

(assert (=> b!476075 m!458351))

(assert (=> b!476075 m!458349))

(declare-fun m!458353 () Bool)

(assert (=> b!476075 m!458353))

(declare-fun m!458355 () Bool)

(assert (=> b!476075 m!458355))

(declare-fun m!458357 () Bool)

(assert (=> b!476075 m!458357))

(declare-fun m!458359 () Bool)

(assert (=> b!476075 m!458359))

(declare-fun m!458361 () Bool)

(assert (=> b!476075 m!458361))

(declare-fun m!458363 () Bool)

(assert (=> b!476081 m!458363))

(declare-fun m!458365 () Bool)

(assert (=> b!476081 m!458365))

(declare-fun m!458367 () Bool)

(assert (=> b!476081 m!458367))

(declare-fun m!458369 () Bool)

(assert (=> start!42710 m!458369))

(declare-fun m!458371 () Bool)

(assert (=> start!42710 m!458371))

(declare-fun m!458373 () Bool)

(assert (=> start!42710 m!458373))

(declare-fun m!458375 () Bool)

(assert (=> b!476080 m!458375))

(declare-fun m!458377 () Bool)

(assert (=> b!476077 m!458377))

(check-sat (not b!476075) (not b!476080) (not mapNonEmpty!21976) (not b_next!12069) (not b!476081) b_and!20611 (not b!476077) (not start!42710) tp_is_empty!13497)
(check-sat b_and!20611 (not b_next!12069))
(get-model)

(declare-fun b!476149 () Bool)

(declare-fun e!279676 () Bool)

(declare-fun lt!217140 () ListLongMap!7885)

(declare-fun apply!338 (ListLongMap!7885 (_ BitVec 64)) V!19101)

(assert (=> b!476149 (= e!279676 (= (apply!338 lt!217140 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun bm!30701 () Bool)

(declare-fun call!30707 () Bool)

(declare-fun contains!2568 (ListLongMap!7885 (_ BitVec 64)) Bool)

(assert (=> bm!30701 (= call!30707 (contains!2568 lt!217140 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!476150 () Bool)

(declare-fun e!279683 () Bool)

(assert (=> b!476150 (= e!279683 (= (apply!338 lt!217140 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!476151 () Bool)

(declare-fun e!279674 () Bool)

(declare-fun e!279680 () Bool)

(assert (=> b!476151 (= e!279674 e!279680)))

(declare-fun res!284321 () Bool)

(assert (=> b!476151 (=> (not res!284321) (not e!279680))))

(assert (=> b!476151 (= res!284321 (contains!2568 lt!217140 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476151 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun d!75575 () Bool)

(declare-fun e!279672 () Bool)

(assert (=> d!75575 e!279672))

(declare-fun res!284327 () Bool)

(assert (=> d!75575 (=> (not res!284327) (not e!279672))))

(assert (=> d!75575 (= res!284327 (or (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))))

(declare-fun lt!217153 () ListLongMap!7885)

(assert (=> d!75575 (= lt!217140 lt!217153)))

(declare-fun lt!217138 () Unit!13999)

(declare-fun e!279673 () Unit!13999)

(assert (=> d!75575 (= lt!217138 e!279673)))

(declare-fun c!57240 () Bool)

(declare-fun e!279678 () Bool)

(assert (=> d!75575 (= c!57240 e!279678)))

(declare-fun res!284324 () Bool)

(assert (=> d!75575 (=> (not res!284324) (not e!279678))))

(assert (=> d!75575 (= res!284324 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun e!279682 () ListLongMap!7885)

(assert (=> d!75575 (= lt!217153 e!279682)))

(declare-fun c!57239 () Bool)

(assert (=> d!75575 (= c!57239 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75575 (validMask!0 mask!1365)))

(assert (=> d!75575 (= (getCurrentListMap!2271 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217140)))

(declare-fun call!30706 () ListLongMap!7885)

(declare-fun call!30708 () ListLongMap!7885)

(declare-fun call!30709 () ListLongMap!7885)

(declare-fun c!57242 () Bool)

(declare-fun call!30704 () ListLongMap!7885)

(declare-fun bm!30702 () Bool)

(assert (=> bm!30702 (= call!30709 (+!1735 (ite c!57239 call!30706 (ite c!57242 call!30708 call!30704)) (ite (or c!57239 c!57242) (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!476152 () Bool)

(declare-fun res!284322 () Bool)

(assert (=> b!476152 (=> (not res!284322) (not e!279672))))

(declare-fun e!279671 () Bool)

(assert (=> b!476152 (= res!284322 e!279671)))

(declare-fun c!57243 () Bool)

(assert (=> b!476152 (= c!57243 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!476153 () Bool)

(declare-fun get!7178 (ValueCell!6405 V!19101) V!19101)

(declare-fun dynLambda!930 (Int (_ BitVec 64)) V!19101)

(assert (=> b!476153 (= e!279680 (= (apply!338 lt!217140 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!476153 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15117 _values!833)))))

(assert (=> b!476153 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476154 () Bool)

(declare-fun e!279675 () ListLongMap!7885)

(declare-fun call!30705 () ListLongMap!7885)

(assert (=> b!476154 (= e!279675 call!30705)))

(declare-fun b!476155 () Bool)

(declare-fun e!279681 () Bool)

(assert (=> b!476155 (= e!279681 e!279676)))

(declare-fun res!284323 () Bool)

(assert (=> b!476155 (= res!284323 call!30707)))

(assert (=> b!476155 (=> (not res!284323) (not e!279676))))

(declare-fun b!476156 () Bool)

(declare-fun call!30710 () Bool)

(assert (=> b!476156 (= e!279671 (not call!30710))))

(declare-fun b!476157 () Bool)

(declare-fun e!279677 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!476157 (= e!279677 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476158 () Bool)

(assert (=> b!476158 (= e!279678 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476159 () Bool)

(declare-fun e!279679 () ListLongMap!7885)

(assert (=> b!476159 (= e!279679 call!30704)))

(declare-fun b!476160 () Bool)

(assert (=> b!476160 (= e!279682 e!279675)))

(assert (=> b!476160 (= c!57242 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!476161 () Bool)

(assert (=> b!476161 (= e!279682 (+!1735 call!30709 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!476162 () Bool)

(declare-fun res!284329 () Bool)

(assert (=> b!476162 (=> (not res!284329) (not e!279672))))

(assert (=> b!476162 (= res!284329 e!279674)))

(declare-fun res!284326 () Bool)

(assert (=> b!476162 (=> res!284326 e!279674)))

(assert (=> b!476162 (= res!284326 (not e!279677))))

(declare-fun res!284328 () Bool)

(assert (=> b!476162 (=> (not res!284328) (not e!279677))))

(assert (=> b!476162 (= res!284328 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun bm!30703 () Bool)

(assert (=> bm!30703 (= call!30708 call!30706)))

(declare-fun b!476163 () Bool)

(declare-fun Unit!14001 () Unit!13999)

(assert (=> b!476163 (= e!279673 Unit!14001)))

(declare-fun bm!30704 () Bool)

(assert (=> bm!30704 (= call!30705 call!30709)))

(declare-fun bm!30705 () Bool)

(assert (=> bm!30705 (= call!30706 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun bm!30706 () Bool)

(assert (=> bm!30706 (= call!30710 (contains!2568 lt!217140 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!476164 () Bool)

(declare-fun c!57238 () Bool)

(assert (=> b!476164 (= c!57238 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!476164 (= e!279675 e!279679)))

(declare-fun bm!30707 () Bool)

(assert (=> bm!30707 (= call!30704 call!30708)))

(declare-fun b!476165 () Bool)

(assert (=> b!476165 (= e!279671 e!279683)))

(declare-fun res!284325 () Bool)

(assert (=> b!476165 (= res!284325 call!30710)))

(assert (=> b!476165 (=> (not res!284325) (not e!279683))))

(declare-fun b!476166 () Bool)

(assert (=> b!476166 (= e!279672 e!279681)))

(declare-fun c!57241 () Bool)

(assert (=> b!476166 (= c!57241 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!476167 () Bool)

(declare-fun lt!217141 () Unit!13999)

(assert (=> b!476167 (= e!279673 lt!217141)))

(declare-fun lt!217156 () ListLongMap!7885)

(assert (=> b!476167 (= lt!217156 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217154 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217154 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217142 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217142 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217151 () Unit!13999)

(declare-fun addStillContains!296 (ListLongMap!7885 (_ BitVec 64) V!19101 (_ BitVec 64)) Unit!13999)

(assert (=> b!476167 (= lt!217151 (addStillContains!296 lt!217156 lt!217154 zeroValue!794 lt!217142))))

(assert (=> b!476167 (contains!2568 (+!1735 lt!217156 (tuple2!8959 lt!217154 zeroValue!794)) lt!217142)))

(declare-fun lt!217147 () Unit!13999)

(assert (=> b!476167 (= lt!217147 lt!217151)))

(declare-fun lt!217157 () ListLongMap!7885)

(assert (=> b!476167 (= lt!217157 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217152 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217152 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217149 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217149 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217145 () Unit!13999)

(declare-fun addApplyDifferent!296 (ListLongMap!7885 (_ BitVec 64) V!19101 (_ BitVec 64)) Unit!13999)

(assert (=> b!476167 (= lt!217145 (addApplyDifferent!296 lt!217157 lt!217152 minValueAfter!38 lt!217149))))

(assert (=> b!476167 (= (apply!338 (+!1735 lt!217157 (tuple2!8959 lt!217152 minValueAfter!38)) lt!217149) (apply!338 lt!217157 lt!217149))))

(declare-fun lt!217143 () Unit!13999)

(assert (=> b!476167 (= lt!217143 lt!217145)))

(declare-fun lt!217150 () ListLongMap!7885)

(assert (=> b!476167 (= lt!217150 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217139 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217139 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217144 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217144 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217146 () Unit!13999)

(assert (=> b!476167 (= lt!217146 (addApplyDifferent!296 lt!217150 lt!217139 zeroValue!794 lt!217144))))

(assert (=> b!476167 (= (apply!338 (+!1735 lt!217150 (tuple2!8959 lt!217139 zeroValue!794)) lt!217144) (apply!338 lt!217150 lt!217144))))

(declare-fun lt!217159 () Unit!13999)

(assert (=> b!476167 (= lt!217159 lt!217146)))

(declare-fun lt!217155 () ListLongMap!7885)

(assert (=> b!476167 (= lt!217155 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217158 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217158 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217148 () (_ BitVec 64))

(assert (=> b!476167 (= lt!217148 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!476167 (= lt!217141 (addApplyDifferent!296 lt!217155 lt!217158 minValueAfter!38 lt!217148))))

(assert (=> b!476167 (= (apply!338 (+!1735 lt!217155 (tuple2!8959 lt!217158 minValueAfter!38)) lt!217148) (apply!338 lt!217155 lt!217148))))

(declare-fun b!476168 () Bool)

(assert (=> b!476168 (= e!279681 (not call!30707))))

(declare-fun b!476169 () Bool)

(assert (=> b!476169 (= e!279679 call!30705)))

(assert (= (and d!75575 c!57239) b!476161))

(assert (= (and d!75575 (not c!57239)) b!476160))

(assert (= (and b!476160 c!57242) b!476154))

(assert (= (and b!476160 (not c!57242)) b!476164))

(assert (= (and b!476164 c!57238) b!476169))

(assert (= (and b!476164 (not c!57238)) b!476159))

(assert (= (or b!476169 b!476159) bm!30707))

(assert (= (or b!476154 bm!30707) bm!30703))

(assert (= (or b!476154 b!476169) bm!30704))

(assert (= (or b!476161 bm!30703) bm!30705))

(assert (= (or b!476161 bm!30704) bm!30702))

(assert (= (and d!75575 res!284324) b!476158))

(assert (= (and d!75575 c!57240) b!476167))

(assert (= (and d!75575 (not c!57240)) b!476163))

(assert (= (and d!75575 res!284327) b!476162))

(assert (= (and b!476162 res!284328) b!476157))

(assert (= (and b!476162 (not res!284326)) b!476151))

(assert (= (and b!476151 res!284321) b!476153))

(assert (= (and b!476162 res!284329) b!476152))

(assert (= (and b!476152 c!57243) b!476165))

(assert (= (and b!476152 (not c!57243)) b!476156))

(assert (= (and b!476165 res!284325) b!476150))

(assert (= (or b!476165 b!476156) bm!30706))

(assert (= (and b!476152 res!284322) b!476166))

(assert (= (and b!476166 c!57241) b!476155))

(assert (= (and b!476166 (not c!57241)) b!476168))

(assert (= (and b!476155 res!284323) b!476149))

(assert (= (or b!476155 b!476168) bm!30701))

(declare-fun b_lambda!10371 () Bool)

(assert (=> (not b_lambda!10371) (not b!476153)))

(declare-fun t!15060 () Bool)

(declare-fun tb!3949 () Bool)

(assert (=> (and start!42710 (= defaultEntry!841 defaultEntry!841) t!15060) tb!3949))

(declare-fun result!7489 () Bool)

(assert (=> tb!3949 (= result!7489 tp_is_empty!13497)))

(assert (=> b!476153 t!15060))

(declare-fun b_and!20615 () Bool)

(assert (= b_and!20611 (and (=> t!15060 result!7489) b_and!20615)))

(declare-fun m!458413 () Bool)

(assert (=> b!476149 m!458413))

(declare-fun m!458415 () Bool)

(assert (=> b!476161 m!458415))

(declare-fun m!458417 () Bool)

(assert (=> bm!30701 m!458417))

(assert (=> d!75575 m!458369))

(declare-fun m!458419 () Bool)

(assert (=> b!476153 m!458419))

(declare-fun m!458421 () Bool)

(assert (=> b!476153 m!458421))

(assert (=> b!476153 m!458419))

(declare-fun m!458423 () Bool)

(assert (=> b!476153 m!458423))

(assert (=> b!476153 m!458421))

(declare-fun m!458425 () Bool)

(assert (=> b!476153 m!458425))

(assert (=> b!476153 m!458425))

(declare-fun m!458427 () Bool)

(assert (=> b!476153 m!458427))

(declare-fun m!458429 () Bool)

(assert (=> bm!30706 m!458429))

(assert (=> bm!30705 m!458365))

(assert (=> b!476158 m!458425))

(assert (=> b!476158 m!458425))

(declare-fun m!458431 () Bool)

(assert (=> b!476158 m!458431))

(declare-fun m!458433 () Bool)

(assert (=> b!476150 m!458433))

(declare-fun m!458435 () Bool)

(assert (=> bm!30702 m!458435))

(assert (=> b!476151 m!458425))

(assert (=> b!476151 m!458425))

(declare-fun m!458437 () Bool)

(assert (=> b!476151 m!458437))

(declare-fun m!458439 () Bool)

(assert (=> b!476167 m!458439))

(declare-fun m!458441 () Bool)

(assert (=> b!476167 m!458441))

(declare-fun m!458443 () Bool)

(assert (=> b!476167 m!458443))

(declare-fun m!458445 () Bool)

(assert (=> b!476167 m!458445))

(declare-fun m!458447 () Bool)

(assert (=> b!476167 m!458447))

(declare-fun m!458449 () Bool)

(assert (=> b!476167 m!458449))

(declare-fun m!458451 () Bool)

(assert (=> b!476167 m!458451))

(assert (=> b!476167 m!458451))

(declare-fun m!458453 () Bool)

(assert (=> b!476167 m!458453))

(declare-fun m!458455 () Bool)

(assert (=> b!476167 m!458455))

(assert (=> b!476167 m!458443))

(declare-fun m!458457 () Bool)

(assert (=> b!476167 m!458457))

(declare-fun m!458459 () Bool)

(assert (=> b!476167 m!458459))

(assert (=> b!476167 m!458455))

(declare-fun m!458461 () Bool)

(assert (=> b!476167 m!458461))

(declare-fun m!458463 () Bool)

(assert (=> b!476167 m!458463))

(assert (=> b!476167 m!458445))

(assert (=> b!476167 m!458425))

(declare-fun m!458465 () Bool)

(assert (=> b!476167 m!458465))

(assert (=> b!476167 m!458365))

(declare-fun m!458467 () Bool)

(assert (=> b!476167 m!458467))

(assert (=> b!476157 m!458425))

(assert (=> b!476157 m!458425))

(assert (=> b!476157 m!458431))

(assert (=> b!476075 d!75575))

(declare-fun d!75577 () Bool)

(declare-fun e!279686 () Bool)

(assert (=> d!75577 e!279686))

(declare-fun res!284335 () Bool)

(assert (=> d!75577 (=> (not res!284335) (not e!279686))))

(declare-fun lt!217168 () ListLongMap!7885)

(assert (=> d!75577 (= res!284335 (contains!2568 lt!217168 (_1!4489 lt!217066)))))

(declare-fun lt!217171 () List!9066)

(assert (=> d!75577 (= lt!217168 (ListLongMap!7886 lt!217171))))

(declare-fun lt!217170 () Unit!13999)

(declare-fun lt!217169 () Unit!13999)

(assert (=> d!75577 (= lt!217170 lt!217169)))

(declare-datatypes ((Option!390 0))(
  ( (Some!389 (v!9087 V!19101)) (None!388) )
))
(declare-fun getValueByKey!384 (List!9066 (_ BitVec 64)) Option!390)

(assert (=> d!75577 (= (getValueByKey!384 lt!217171 (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066)))))

(declare-fun lemmaContainsTupThenGetReturnValue!208 (List!9066 (_ BitVec 64) V!19101) Unit!13999)

(assert (=> d!75577 (= lt!217169 (lemmaContainsTupThenGetReturnValue!208 lt!217171 (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(declare-fun insertStrictlySorted!210 (List!9066 (_ BitVec 64) V!19101) List!9066)

(assert (=> d!75577 (= lt!217171 (insertStrictlySorted!210 (toList!3958 (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(assert (=> d!75577 (= (+!1735 (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!217066) lt!217168)))

(declare-fun b!476176 () Bool)

(declare-fun res!284334 () Bool)

(assert (=> b!476176 (=> (not res!284334) (not e!279686))))

(assert (=> b!476176 (= res!284334 (= (getValueByKey!384 (toList!3958 lt!217168) (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066))))))

(declare-fun b!476177 () Bool)

(declare-fun contains!2569 (List!9066 tuple2!8958) Bool)

(assert (=> b!476177 (= e!279686 (contains!2569 (toList!3958 lt!217168) lt!217066))))

(assert (= (and d!75577 res!284335) b!476176))

(assert (= (and b!476176 res!284334) b!476177))

(declare-fun m!458469 () Bool)

(assert (=> d!75577 m!458469))

(declare-fun m!458471 () Bool)

(assert (=> d!75577 m!458471))

(declare-fun m!458473 () Bool)

(assert (=> d!75577 m!458473))

(declare-fun m!458475 () Bool)

(assert (=> d!75577 m!458475))

(declare-fun m!458477 () Bool)

(assert (=> b!476176 m!458477))

(declare-fun m!458479 () Bool)

(assert (=> b!476177 m!458479))

(assert (=> b!476075 d!75577))

(declare-fun d!75579 () Bool)

(assert (=> d!75579 (= (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1735 (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!217174 () Unit!13999)

(declare-fun choose!1367 (ListLongMap!7885 (_ BitVec 64) V!19101 V!19101) Unit!13999)

(assert (=> d!75579 (= lt!217174 (choose!1367 lt!217071 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75579 (= (addSameAsAddTwiceSameKeyDiffValues!165 lt!217071 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!217174)))

(declare-fun bs!15114 () Bool)

(assert (= bs!15114 d!75579))

(declare-fun m!458481 () Bool)

(assert (=> bs!15114 m!458481))

(assert (=> bs!15114 m!458349))

(assert (=> bs!15114 m!458349))

(declare-fun m!458483 () Bool)

(assert (=> bs!15114 m!458483))

(declare-fun m!458485 () Bool)

(assert (=> bs!15114 m!458485))

(assert (=> b!476075 d!75579))

(declare-fun d!75581 () Bool)

(declare-fun e!279687 () Bool)

(assert (=> d!75581 e!279687))

(declare-fun res!284337 () Bool)

(assert (=> d!75581 (=> (not res!284337) (not e!279687))))

(declare-fun lt!217175 () ListLongMap!7885)

(assert (=> d!75581 (= res!284337 (contains!2568 lt!217175 (_1!4489 lt!217066)))))

(declare-fun lt!217178 () List!9066)

(assert (=> d!75581 (= lt!217175 (ListLongMap!7886 lt!217178))))

(declare-fun lt!217177 () Unit!13999)

(declare-fun lt!217176 () Unit!13999)

(assert (=> d!75581 (= lt!217177 lt!217176)))

(assert (=> d!75581 (= (getValueByKey!384 lt!217178 (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066)))))

(assert (=> d!75581 (= lt!217176 (lemmaContainsTupThenGetReturnValue!208 lt!217178 (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(assert (=> d!75581 (= lt!217178 (insertStrictlySorted!210 (toList!3958 lt!217068) (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(assert (=> d!75581 (= (+!1735 lt!217068 lt!217066) lt!217175)))

(declare-fun b!476178 () Bool)

(declare-fun res!284336 () Bool)

(assert (=> b!476178 (=> (not res!284336) (not e!279687))))

(assert (=> b!476178 (= res!284336 (= (getValueByKey!384 (toList!3958 lt!217175) (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066))))))

(declare-fun b!476179 () Bool)

(assert (=> b!476179 (= e!279687 (contains!2569 (toList!3958 lt!217175) lt!217066))))

(assert (= (and d!75581 res!284337) b!476178))

(assert (= (and b!476178 res!284336) b!476179))

(declare-fun m!458487 () Bool)

(assert (=> d!75581 m!458487))

(declare-fun m!458489 () Bool)

(assert (=> d!75581 m!458489))

(declare-fun m!458491 () Bool)

(assert (=> d!75581 m!458491))

(declare-fun m!458493 () Bool)

(assert (=> d!75581 m!458493))

(declare-fun m!458495 () Bool)

(assert (=> b!476178 m!458495))

(declare-fun m!458497 () Bool)

(assert (=> b!476179 m!458497))

(assert (=> b!476075 d!75581))

(declare-fun d!75583 () Bool)

(declare-fun e!279688 () Bool)

(assert (=> d!75583 e!279688))

(declare-fun res!284339 () Bool)

(assert (=> d!75583 (=> (not res!284339) (not e!279688))))

(declare-fun lt!217179 () ListLongMap!7885)

(assert (=> d!75583 (= res!284339 (contains!2568 lt!217179 (_1!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!217182 () List!9066)

(assert (=> d!75583 (= lt!217179 (ListLongMap!7886 lt!217182))))

(declare-fun lt!217181 () Unit!13999)

(declare-fun lt!217180 () Unit!13999)

(assert (=> d!75583 (= lt!217181 lt!217180)))

(assert (=> d!75583 (= (getValueByKey!384 lt!217182 (_1!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!389 (_2!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75583 (= lt!217180 (lemmaContainsTupThenGetReturnValue!208 lt!217182 (_1!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75583 (= lt!217182 (insertStrictlySorted!210 (toList!3958 lt!217071) (_1!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75583 (= (+!1735 lt!217071 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!217179)))

(declare-fun b!476180 () Bool)

(declare-fun res!284338 () Bool)

(assert (=> b!476180 (=> (not res!284338) (not e!279688))))

(assert (=> b!476180 (= res!284338 (= (getValueByKey!384 (toList!3958 lt!217179) (_1!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!389 (_2!4489 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!476181 () Bool)

(assert (=> b!476181 (= e!279688 (contains!2569 (toList!3958 lt!217179) (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75583 res!284339) b!476180))

(assert (= (and b!476180 res!284338) b!476181))

(declare-fun m!458499 () Bool)

(assert (=> d!75583 m!458499))

(declare-fun m!458501 () Bool)

(assert (=> d!75583 m!458501))

(declare-fun m!458503 () Bool)

(assert (=> d!75583 m!458503))

(declare-fun m!458505 () Bool)

(assert (=> d!75583 m!458505))

(declare-fun m!458507 () Bool)

(assert (=> b!476180 m!458507))

(declare-fun m!458509 () Bool)

(assert (=> b!476181 m!458509))

(assert (=> b!476075 d!75583))

(declare-fun d!75585 () Bool)

(declare-fun e!279689 () Bool)

(assert (=> d!75585 e!279689))

(declare-fun res!284341 () Bool)

(assert (=> d!75585 (=> (not res!284341) (not e!279689))))

(declare-fun lt!217183 () ListLongMap!7885)

(assert (=> d!75585 (= res!284341 (contains!2568 lt!217183 (_1!4489 lt!217066)))))

(declare-fun lt!217186 () List!9066)

(assert (=> d!75585 (= lt!217183 (ListLongMap!7886 lt!217186))))

(declare-fun lt!217185 () Unit!13999)

(declare-fun lt!217184 () Unit!13999)

(assert (=> d!75585 (= lt!217185 lt!217184)))

(assert (=> d!75585 (= (getValueByKey!384 lt!217186 (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066)))))

(assert (=> d!75585 (= lt!217184 (lemmaContainsTupThenGetReturnValue!208 lt!217186 (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(assert (=> d!75585 (= lt!217186 (insertStrictlySorted!210 (toList!3958 lt!217071) (_1!4489 lt!217066) (_2!4489 lt!217066)))))

(assert (=> d!75585 (= (+!1735 lt!217071 lt!217066) lt!217183)))

(declare-fun b!476182 () Bool)

(declare-fun res!284340 () Bool)

(assert (=> b!476182 (=> (not res!284340) (not e!279689))))

(assert (=> b!476182 (= res!284340 (= (getValueByKey!384 (toList!3958 lt!217183) (_1!4489 lt!217066)) (Some!389 (_2!4489 lt!217066))))))

(declare-fun b!476183 () Bool)

(assert (=> b!476183 (= e!279689 (contains!2569 (toList!3958 lt!217183) lt!217066))))

(assert (= (and d!75585 res!284341) b!476182))

(assert (= (and b!476182 res!284340) b!476183))

(declare-fun m!458511 () Bool)

(assert (=> d!75585 m!458511))

(declare-fun m!458513 () Bool)

(assert (=> d!75585 m!458513))

(declare-fun m!458515 () Bool)

(assert (=> d!75585 m!458515))

(declare-fun m!458517 () Bool)

(assert (=> d!75585 m!458517))

(declare-fun m!458519 () Bool)

(assert (=> b!476182 m!458519))

(declare-fun m!458521 () Bool)

(assert (=> b!476183 m!458521))

(assert (=> b!476075 d!75585))

(declare-fun b!476184 () Bool)

(declare-fun e!279695 () Bool)

(declare-fun lt!217189 () ListLongMap!7885)

(assert (=> b!476184 (= e!279695 (= (apply!338 lt!217189 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun bm!30708 () Bool)

(declare-fun call!30714 () Bool)

(assert (=> bm!30708 (= call!30714 (contains!2568 lt!217189 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!476185 () Bool)

(declare-fun e!279702 () Bool)

(assert (=> b!476185 (= e!279702 (= (apply!338 lt!217189 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!476186 () Bool)

(declare-fun e!279693 () Bool)

(declare-fun e!279699 () Bool)

(assert (=> b!476186 (= e!279693 e!279699)))

(declare-fun res!284342 () Bool)

(assert (=> b!476186 (=> (not res!284342) (not e!279699))))

(assert (=> b!476186 (= res!284342 (contains!2568 lt!217189 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476186 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun d!75587 () Bool)

(declare-fun e!279691 () Bool)

(assert (=> d!75587 e!279691))

(declare-fun res!284348 () Bool)

(assert (=> d!75587 (=> (not res!284348) (not e!279691))))

(assert (=> d!75587 (= res!284348 (or (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))))

(declare-fun lt!217202 () ListLongMap!7885)

(assert (=> d!75587 (= lt!217189 lt!217202)))

(declare-fun lt!217187 () Unit!13999)

(declare-fun e!279692 () Unit!13999)

(assert (=> d!75587 (= lt!217187 e!279692)))

(declare-fun c!57246 () Bool)

(declare-fun e!279697 () Bool)

(assert (=> d!75587 (= c!57246 e!279697)))

(declare-fun res!284345 () Bool)

(assert (=> d!75587 (=> (not res!284345) (not e!279697))))

(assert (=> d!75587 (= res!284345 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun e!279701 () ListLongMap!7885)

(assert (=> d!75587 (= lt!217202 e!279701)))

(declare-fun c!57245 () Bool)

(assert (=> d!75587 (= c!57245 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75587 (validMask!0 mask!1365)))

(assert (=> d!75587 (= (getCurrentListMap!2271 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217189)))

(declare-fun call!30716 () ListLongMap!7885)

(declare-fun bm!30709 () Bool)

(declare-fun c!57248 () Bool)

(declare-fun call!30711 () ListLongMap!7885)

(declare-fun call!30715 () ListLongMap!7885)

(declare-fun call!30713 () ListLongMap!7885)

(assert (=> bm!30709 (= call!30716 (+!1735 (ite c!57245 call!30713 (ite c!57248 call!30715 call!30711)) (ite (or c!57245 c!57248) (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!476187 () Bool)

(declare-fun res!284343 () Bool)

(assert (=> b!476187 (=> (not res!284343) (not e!279691))))

(declare-fun e!279690 () Bool)

(assert (=> b!476187 (= res!284343 e!279690)))

(declare-fun c!57249 () Bool)

(assert (=> b!476187 (= c!57249 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!476188 () Bool)

(assert (=> b!476188 (= e!279699 (= (apply!338 lt!217189 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!476188 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15117 _values!833)))))

(assert (=> b!476188 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476189 () Bool)

(declare-fun e!279694 () ListLongMap!7885)

(declare-fun call!30712 () ListLongMap!7885)

(assert (=> b!476189 (= e!279694 call!30712)))

(declare-fun b!476190 () Bool)

(declare-fun e!279700 () Bool)

(assert (=> b!476190 (= e!279700 e!279695)))

(declare-fun res!284344 () Bool)

(assert (=> b!476190 (= res!284344 call!30714)))

(assert (=> b!476190 (=> (not res!284344) (not e!279695))))

(declare-fun b!476191 () Bool)

(declare-fun call!30717 () Bool)

(assert (=> b!476191 (= e!279690 (not call!30717))))

(declare-fun b!476192 () Bool)

(declare-fun e!279696 () Bool)

(assert (=> b!476192 (= e!279696 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476193 () Bool)

(assert (=> b!476193 (= e!279697 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476194 () Bool)

(declare-fun e!279698 () ListLongMap!7885)

(assert (=> b!476194 (= e!279698 call!30711)))

(declare-fun b!476195 () Bool)

(assert (=> b!476195 (= e!279701 e!279694)))

(assert (=> b!476195 (= c!57248 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!476196 () Bool)

(assert (=> b!476196 (= e!279701 (+!1735 call!30716 (tuple2!8959 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!476197 () Bool)

(declare-fun res!284350 () Bool)

(assert (=> b!476197 (=> (not res!284350) (not e!279691))))

(assert (=> b!476197 (= res!284350 e!279693)))

(declare-fun res!284347 () Bool)

(assert (=> b!476197 (=> res!284347 e!279693)))

(assert (=> b!476197 (= res!284347 (not e!279696))))

(declare-fun res!284349 () Bool)

(assert (=> b!476197 (=> (not res!284349) (not e!279696))))

(assert (=> b!476197 (= res!284349 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun bm!30710 () Bool)

(assert (=> bm!30710 (= call!30715 call!30713)))

(declare-fun b!476198 () Bool)

(declare-fun Unit!14002 () Unit!13999)

(assert (=> b!476198 (= e!279692 Unit!14002)))

(declare-fun bm!30711 () Bool)

(assert (=> bm!30711 (= call!30712 call!30716)))

(declare-fun bm!30712 () Bool)

(assert (=> bm!30712 (= call!30713 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun bm!30713 () Bool)

(assert (=> bm!30713 (= call!30717 (contains!2568 lt!217189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!476199 () Bool)

(declare-fun c!57244 () Bool)

(assert (=> b!476199 (= c!57244 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!476199 (= e!279694 e!279698)))

(declare-fun bm!30714 () Bool)

(assert (=> bm!30714 (= call!30711 call!30715)))

(declare-fun b!476200 () Bool)

(assert (=> b!476200 (= e!279690 e!279702)))

(declare-fun res!284346 () Bool)

(assert (=> b!476200 (= res!284346 call!30717)))

(assert (=> b!476200 (=> (not res!284346) (not e!279702))))

(declare-fun b!476201 () Bool)

(assert (=> b!476201 (= e!279691 e!279700)))

(declare-fun c!57247 () Bool)

(assert (=> b!476201 (= c!57247 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!476202 () Bool)

(declare-fun lt!217190 () Unit!13999)

(assert (=> b!476202 (= e!279692 lt!217190)))

(declare-fun lt!217205 () ListLongMap!7885)

(assert (=> b!476202 (= lt!217205 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217203 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217203 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217191 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217191 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217200 () Unit!13999)

(assert (=> b!476202 (= lt!217200 (addStillContains!296 lt!217205 lt!217203 zeroValue!794 lt!217191))))

(assert (=> b!476202 (contains!2568 (+!1735 lt!217205 (tuple2!8959 lt!217203 zeroValue!794)) lt!217191)))

(declare-fun lt!217196 () Unit!13999)

(assert (=> b!476202 (= lt!217196 lt!217200)))

(declare-fun lt!217206 () ListLongMap!7885)

(assert (=> b!476202 (= lt!217206 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217201 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217201 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217198 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217198 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217194 () Unit!13999)

(assert (=> b!476202 (= lt!217194 (addApplyDifferent!296 lt!217206 lt!217201 minValueBefore!38 lt!217198))))

(assert (=> b!476202 (= (apply!338 (+!1735 lt!217206 (tuple2!8959 lt!217201 minValueBefore!38)) lt!217198) (apply!338 lt!217206 lt!217198))))

(declare-fun lt!217192 () Unit!13999)

(assert (=> b!476202 (= lt!217192 lt!217194)))

(declare-fun lt!217199 () ListLongMap!7885)

(assert (=> b!476202 (= lt!217199 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217188 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217188 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217193 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217193 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217195 () Unit!13999)

(assert (=> b!476202 (= lt!217195 (addApplyDifferent!296 lt!217199 lt!217188 zeroValue!794 lt!217193))))

(assert (=> b!476202 (= (apply!338 (+!1735 lt!217199 (tuple2!8959 lt!217188 zeroValue!794)) lt!217193) (apply!338 lt!217199 lt!217193))))

(declare-fun lt!217208 () Unit!13999)

(assert (=> b!476202 (= lt!217208 lt!217195)))

(declare-fun lt!217204 () ListLongMap!7885)

(assert (=> b!476202 (= lt!217204 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217207 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217207 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!217197 () (_ BitVec 64))

(assert (=> b!476202 (= lt!217197 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!476202 (= lt!217190 (addApplyDifferent!296 lt!217204 lt!217207 minValueBefore!38 lt!217197))))

(assert (=> b!476202 (= (apply!338 (+!1735 lt!217204 (tuple2!8959 lt!217207 minValueBefore!38)) lt!217197) (apply!338 lt!217204 lt!217197))))

(declare-fun b!476203 () Bool)

(assert (=> b!476203 (= e!279700 (not call!30714))))

(declare-fun b!476204 () Bool)

(assert (=> b!476204 (= e!279698 call!30712)))

(assert (= (and d!75587 c!57245) b!476196))

(assert (= (and d!75587 (not c!57245)) b!476195))

(assert (= (and b!476195 c!57248) b!476189))

(assert (= (and b!476195 (not c!57248)) b!476199))

(assert (= (and b!476199 c!57244) b!476204))

(assert (= (and b!476199 (not c!57244)) b!476194))

(assert (= (or b!476204 b!476194) bm!30714))

(assert (= (or b!476189 bm!30714) bm!30710))

(assert (= (or b!476189 b!476204) bm!30711))

(assert (= (or b!476196 bm!30710) bm!30712))

(assert (= (or b!476196 bm!30711) bm!30709))

(assert (= (and d!75587 res!284345) b!476193))

(assert (= (and d!75587 c!57246) b!476202))

(assert (= (and d!75587 (not c!57246)) b!476198))

(assert (= (and d!75587 res!284348) b!476197))

(assert (= (and b!476197 res!284349) b!476192))

(assert (= (and b!476197 (not res!284347)) b!476186))

(assert (= (and b!476186 res!284342) b!476188))

(assert (= (and b!476197 res!284350) b!476187))

(assert (= (and b!476187 c!57249) b!476200))

(assert (= (and b!476187 (not c!57249)) b!476191))

(assert (= (and b!476200 res!284346) b!476185))

(assert (= (or b!476200 b!476191) bm!30713))

(assert (= (and b!476187 res!284343) b!476201))

(assert (= (and b!476201 c!57247) b!476190))

(assert (= (and b!476201 (not c!57247)) b!476203))

(assert (= (and b!476190 res!284344) b!476184))

(assert (= (or b!476190 b!476203) bm!30708))

(declare-fun b_lambda!10373 () Bool)

(assert (=> (not b_lambda!10373) (not b!476188)))

(assert (=> b!476188 t!15060))

(declare-fun b_and!20617 () Bool)

(assert (= b_and!20615 (and (=> t!15060 result!7489) b_and!20617)))

(declare-fun m!458523 () Bool)

(assert (=> b!476184 m!458523))

(declare-fun m!458525 () Bool)

(assert (=> b!476196 m!458525))

(declare-fun m!458527 () Bool)

(assert (=> bm!30708 m!458527))

(assert (=> d!75587 m!458369))

(assert (=> b!476188 m!458419))

(assert (=> b!476188 m!458421))

(assert (=> b!476188 m!458419))

(assert (=> b!476188 m!458423))

(assert (=> b!476188 m!458421))

(assert (=> b!476188 m!458425))

(assert (=> b!476188 m!458425))

(declare-fun m!458529 () Bool)

(assert (=> b!476188 m!458529))

(declare-fun m!458531 () Bool)

(assert (=> bm!30713 m!458531))

(assert (=> bm!30712 m!458367))

(assert (=> b!476193 m!458425))

(assert (=> b!476193 m!458425))

(assert (=> b!476193 m!458431))

(declare-fun m!458533 () Bool)

(assert (=> b!476185 m!458533))

(declare-fun m!458535 () Bool)

(assert (=> bm!30709 m!458535))

(assert (=> b!476186 m!458425))

(assert (=> b!476186 m!458425))

(declare-fun m!458537 () Bool)

(assert (=> b!476186 m!458537))

(declare-fun m!458539 () Bool)

(assert (=> b!476202 m!458539))

(declare-fun m!458541 () Bool)

(assert (=> b!476202 m!458541))

(declare-fun m!458543 () Bool)

(assert (=> b!476202 m!458543))

(declare-fun m!458545 () Bool)

(assert (=> b!476202 m!458545))

(declare-fun m!458547 () Bool)

(assert (=> b!476202 m!458547))

(declare-fun m!458549 () Bool)

(assert (=> b!476202 m!458549))

(declare-fun m!458551 () Bool)

(assert (=> b!476202 m!458551))

(assert (=> b!476202 m!458551))

(declare-fun m!458553 () Bool)

(assert (=> b!476202 m!458553))

(declare-fun m!458555 () Bool)

(assert (=> b!476202 m!458555))

(assert (=> b!476202 m!458543))

(declare-fun m!458557 () Bool)

(assert (=> b!476202 m!458557))

(declare-fun m!458559 () Bool)

(assert (=> b!476202 m!458559))

(assert (=> b!476202 m!458555))

(declare-fun m!458561 () Bool)

(assert (=> b!476202 m!458561))

(declare-fun m!458563 () Bool)

(assert (=> b!476202 m!458563))

(assert (=> b!476202 m!458545))

(assert (=> b!476202 m!458425))

(declare-fun m!458565 () Bool)

(assert (=> b!476202 m!458565))

(assert (=> b!476202 m!458367))

(declare-fun m!458567 () Bool)

(assert (=> b!476202 m!458567))

(assert (=> b!476192 m!458425))

(assert (=> b!476192 m!458425))

(assert (=> b!476192 m!458431))

(assert (=> b!476075 d!75587))

(declare-fun d!75589 () Bool)

(declare-fun e!279703 () Bool)

(assert (=> d!75589 e!279703))

(declare-fun res!284352 () Bool)

(assert (=> d!75589 (=> (not res!284352) (not e!279703))))

(declare-fun lt!217209 () ListLongMap!7885)

(assert (=> d!75589 (= res!284352 (contains!2568 lt!217209 (_1!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(declare-fun lt!217212 () List!9066)

(assert (=> d!75589 (= lt!217209 (ListLongMap!7886 lt!217212))))

(declare-fun lt!217211 () Unit!13999)

(declare-fun lt!217210 () Unit!13999)

(assert (=> d!75589 (= lt!217211 lt!217210)))

(assert (=> d!75589 (= (getValueByKey!384 lt!217212 (_1!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!389 (_2!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75589 (= lt!217210 (lemmaContainsTupThenGetReturnValue!208 lt!217212 (_1!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75589 (= lt!217212 (insertStrictlySorted!210 (toList!3958 lt!217070) (_1!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75589 (= (+!1735 lt!217070 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) lt!217209)))

(declare-fun b!476205 () Bool)

(declare-fun res!284351 () Bool)

(assert (=> b!476205 (=> (not res!284351) (not e!279703))))

(assert (=> b!476205 (= res!284351 (= (getValueByKey!384 (toList!3958 lt!217209) (_1!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!389 (_2!4489 (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))))

(declare-fun b!476206 () Bool)

(assert (=> b!476206 (= e!279703 (contains!2569 (toList!3958 lt!217209) (tuple2!8959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(assert (= (and d!75589 res!284352) b!476205))

(assert (= (and b!476205 res!284351) b!476206))

(declare-fun m!458569 () Bool)

(assert (=> d!75589 m!458569))

(declare-fun m!458571 () Bool)

(assert (=> d!75589 m!458571))

(declare-fun m!458573 () Bool)

(assert (=> d!75589 m!458573))

(declare-fun m!458575 () Bool)

(assert (=> d!75589 m!458575))

(declare-fun m!458577 () Bool)

(assert (=> b!476205 m!458577))

(declare-fun m!458579 () Bool)

(assert (=> b!476206 m!458579))

(assert (=> b!476075 d!75589))

(declare-fun d!75591 () Bool)

(assert (=> d!75591 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42710 d!75591))

(declare-fun d!75593 () Bool)

(assert (=> d!75593 (= (array_inv!10642 _keys!1025) (bvsge (size!15116 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42710 d!75593))

(declare-fun d!75595 () Bool)

(assert (=> d!75595 (= (array_inv!10643 _values!833) (bvsge (size!15117 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42710 d!75595))

(declare-fun d!75597 () Bool)

(declare-fun res!284361 () Bool)

(declare-fun e!279715 () Bool)

(assert (=> d!75597 (=> res!284361 e!279715)))

(assert (=> d!75597 (= res!284361 (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> d!75597 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9064) e!279715)))

(declare-fun b!476217 () Bool)

(declare-fun e!279713 () Bool)

(declare-fun call!30720 () Bool)

(assert (=> b!476217 (= e!279713 call!30720)))

(declare-fun b!476218 () Bool)

(declare-fun e!279712 () Bool)

(declare-fun contains!2570 (List!9067 (_ BitVec 64)) Bool)

(assert (=> b!476218 (= e!279712 (contains!2570 Nil!9064 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476219 () Bool)

(declare-fun e!279714 () Bool)

(assert (=> b!476219 (= e!279714 e!279713)))

(declare-fun c!57252 () Bool)

(assert (=> b!476219 (= c!57252 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30717 () Bool)

(assert (=> bm!30717 (= call!30720 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57252 (Cons!9063 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000) Nil!9064) Nil!9064)))))

(declare-fun b!476220 () Bool)

(assert (=> b!476220 (= e!279713 call!30720)))

(declare-fun b!476221 () Bool)

(assert (=> b!476221 (= e!279715 e!279714)))

(declare-fun res!284360 () Bool)

(assert (=> b!476221 (=> (not res!284360) (not e!279714))))

(assert (=> b!476221 (= res!284360 (not e!279712))))

(declare-fun res!284359 () Bool)

(assert (=> b!476221 (=> (not res!284359) (not e!279712))))

(assert (=> b!476221 (= res!284359 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75597 (not res!284361)) b!476221))

(assert (= (and b!476221 res!284359) b!476218))

(assert (= (and b!476221 res!284360) b!476219))

(assert (= (and b!476219 c!57252) b!476217))

(assert (= (and b!476219 (not c!57252)) b!476220))

(assert (= (or b!476217 b!476220) bm!30717))

(assert (=> b!476218 m!458425))

(assert (=> b!476218 m!458425))

(declare-fun m!458581 () Bool)

(assert (=> b!476218 m!458581))

(assert (=> b!476219 m!458425))

(assert (=> b!476219 m!458425))

(assert (=> b!476219 m!458431))

(assert (=> bm!30717 m!458425))

(declare-fun m!458583 () Bool)

(assert (=> bm!30717 m!458583))

(assert (=> b!476221 m!458425))

(assert (=> b!476221 m!458425))

(assert (=> b!476221 m!458431))

(assert (=> b!476080 d!75597))

(declare-fun d!75599 () Bool)

(assert (=> d!75599 (= (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217215 () Unit!13999)

(declare-fun choose!1368 (array!30707 array!30709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19101 V!19101 V!19101 V!19101 (_ BitVec 32) Int) Unit!13999)

(assert (=> d!75599 (= lt!217215 (choose!1368 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75599 (validMask!0 mask!1365)))

(assert (=> d!75599 (= (lemmaNoChangeToArrayThenSameMapNoExtras!282 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217215)))

(declare-fun bs!15115 () Bool)

(assert (= bs!15115 d!75599))

(assert (=> bs!15115 m!458367))

(assert (=> bs!15115 m!458365))

(declare-fun m!458585 () Bool)

(assert (=> bs!15115 m!458585))

(assert (=> bs!15115 m!458369))

(assert (=> b!476081 d!75599))

(declare-fun b!476246 () Bool)

(declare-fun e!279733 () ListLongMap!7885)

(declare-fun e!279731 () ListLongMap!7885)

(assert (=> b!476246 (= e!279733 e!279731)))

(declare-fun c!57262 () Bool)

(assert (=> b!476246 (= c!57262 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476247 () Bool)

(declare-fun lt!217231 () Unit!13999)

(declare-fun lt!217235 () Unit!13999)

(assert (=> b!476247 (= lt!217231 lt!217235)))

(declare-fun lt!217232 () V!19101)

(declare-fun lt!217230 () (_ BitVec 64))

(declare-fun lt!217236 () ListLongMap!7885)

(declare-fun lt!217234 () (_ BitVec 64))

(assert (=> b!476247 (not (contains!2568 (+!1735 lt!217236 (tuple2!8959 lt!217234 lt!217232)) lt!217230))))

(declare-fun addStillNotContains!173 (ListLongMap!7885 (_ BitVec 64) V!19101 (_ BitVec 64)) Unit!13999)

(assert (=> b!476247 (= lt!217235 (addStillNotContains!173 lt!217236 lt!217234 lt!217232 lt!217230))))

(assert (=> b!476247 (= lt!217230 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!476247 (= lt!217232 (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!476247 (= lt!217234 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30723 () ListLongMap!7885)

(assert (=> b!476247 (= lt!217236 call!30723)))

(assert (=> b!476247 (= e!279731 (+!1735 call!30723 (tuple2!8959 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!476248 () Bool)

(declare-fun e!279734 () Bool)

(declare-fun e!279732 () Bool)

(assert (=> b!476248 (= e!279734 e!279732)))

(declare-fun c!57263 () Bool)

(assert (=> b!476248 (= c!57263 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476249 () Bool)

(declare-fun lt!217233 () ListLongMap!7885)

(declare-fun isEmpty!590 (ListLongMap!7885) Bool)

(assert (=> b!476249 (= e!279732 (isEmpty!590 lt!217233))))

(declare-fun b!476250 () Bool)

(declare-fun e!279736 () Bool)

(assert (=> b!476250 (= e!279736 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476250 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!476251 () Bool)

(assert (=> b!476251 (= e!279731 call!30723)))

(declare-fun b!476252 () Bool)

(declare-fun e!279730 () Bool)

(assert (=> b!476252 (= e!279730 e!279734)))

(declare-fun c!57264 () Bool)

(assert (=> b!476252 (= c!57264 e!279736)))

(declare-fun res!284370 () Bool)

(assert (=> b!476252 (=> (not res!284370) (not e!279736))))

(assert (=> b!476252 (= res!284370 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476253 () Bool)

(assert (=> b!476253 (= e!279733 (ListLongMap!7886 Nil!9063))))

(declare-fun b!476254 () Bool)

(assert (=> b!476254 (= e!279732 (= lt!217233 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!476255 () Bool)

(declare-fun res!284372 () Bool)

(assert (=> b!476255 (=> (not res!284372) (not e!279730))))

(assert (=> b!476255 (= res!284372 (not (contains!2568 lt!217233 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!476257 () Bool)

(assert (=> b!476257 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> b!476257 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15117 _values!833)))))

(declare-fun e!279735 () Bool)

(assert (=> b!476257 (= e!279735 (= (apply!338 lt!217233 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30720 () Bool)

(assert (=> bm!30720 (= call!30723 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun d!75601 () Bool)

(assert (=> d!75601 e!279730))

(declare-fun res!284371 () Bool)

(assert (=> d!75601 (=> (not res!284371) (not e!279730))))

(assert (=> d!75601 (= res!284371 (not (contains!2568 lt!217233 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75601 (= lt!217233 e!279733)))

(declare-fun c!57261 () Bool)

(assert (=> d!75601 (= c!57261 (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> d!75601 (validMask!0 mask!1365)))

(assert (=> d!75601 (= (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217233)))

(declare-fun b!476256 () Bool)

(assert (=> b!476256 (= e!279734 e!279735)))

(assert (=> b!476256 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun res!284373 () Bool)

(assert (=> b!476256 (= res!284373 (contains!2568 lt!217233 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476256 (=> (not res!284373) (not e!279735))))

(assert (= (and d!75601 c!57261) b!476253))

(assert (= (and d!75601 (not c!57261)) b!476246))

(assert (= (and b!476246 c!57262) b!476247))

(assert (= (and b!476246 (not c!57262)) b!476251))

(assert (= (or b!476247 b!476251) bm!30720))

(assert (= (and d!75601 res!284371) b!476255))

(assert (= (and b!476255 res!284372) b!476252))

(assert (= (and b!476252 res!284370) b!476250))

(assert (= (and b!476252 c!57264) b!476256))

(assert (= (and b!476252 (not c!57264)) b!476248))

(assert (= (and b!476256 res!284373) b!476257))

(assert (= (and b!476248 c!57263) b!476254))

(assert (= (and b!476248 (not c!57263)) b!476249))

(declare-fun b_lambda!10375 () Bool)

(assert (=> (not b_lambda!10375) (not b!476247)))

(assert (=> b!476247 t!15060))

(declare-fun b_and!20619 () Bool)

(assert (= b_and!20617 (and (=> t!15060 result!7489) b_and!20619)))

(declare-fun b_lambda!10377 () Bool)

(assert (=> (not b_lambda!10377) (not b!476257)))

(assert (=> b!476257 t!15060))

(declare-fun b_and!20621 () Bool)

(assert (= b_and!20619 (and (=> t!15060 result!7489) b_and!20621)))

(assert (=> b!476250 m!458425))

(assert (=> b!476250 m!458425))

(assert (=> b!476250 m!458431))

(assert (=> b!476246 m!458425))

(assert (=> b!476246 m!458425))

(assert (=> b!476246 m!458431))

(declare-fun m!458587 () Bool)

(assert (=> b!476254 m!458587))

(assert (=> bm!30720 m!458587))

(declare-fun m!458589 () Bool)

(assert (=> d!75601 m!458589))

(assert (=> d!75601 m!458369))

(declare-fun m!458591 () Bool)

(assert (=> b!476255 m!458591))

(assert (=> b!476257 m!458421))

(assert (=> b!476257 m!458419))

(assert (=> b!476257 m!458425))

(assert (=> b!476257 m!458421))

(assert (=> b!476257 m!458419))

(assert (=> b!476257 m!458423))

(assert (=> b!476257 m!458425))

(declare-fun m!458593 () Bool)

(assert (=> b!476257 m!458593))

(declare-fun m!458595 () Bool)

(assert (=> b!476247 m!458595))

(assert (=> b!476247 m!458421))

(assert (=> b!476247 m!458419))

(assert (=> b!476247 m!458425))

(assert (=> b!476247 m!458421))

(assert (=> b!476247 m!458419))

(assert (=> b!476247 m!458423))

(declare-fun m!458597 () Bool)

(assert (=> b!476247 m!458597))

(declare-fun m!458599 () Bool)

(assert (=> b!476247 m!458599))

(assert (=> b!476247 m!458597))

(declare-fun m!458601 () Bool)

(assert (=> b!476247 m!458601))

(assert (=> b!476256 m!458425))

(assert (=> b!476256 m!458425))

(declare-fun m!458603 () Bool)

(assert (=> b!476256 m!458603))

(declare-fun m!458605 () Bool)

(assert (=> b!476249 m!458605))

(assert (=> b!476081 d!75601))

(declare-fun b!476258 () Bool)

(declare-fun e!279740 () ListLongMap!7885)

(declare-fun e!279738 () ListLongMap!7885)

(assert (=> b!476258 (= e!279740 e!279738)))

(declare-fun c!57266 () Bool)

(assert (=> b!476258 (= c!57266 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476259 () Bool)

(declare-fun lt!217238 () Unit!13999)

(declare-fun lt!217242 () Unit!13999)

(assert (=> b!476259 (= lt!217238 lt!217242)))

(declare-fun lt!217237 () (_ BitVec 64))

(declare-fun lt!217239 () V!19101)

(declare-fun lt!217241 () (_ BitVec 64))

(declare-fun lt!217243 () ListLongMap!7885)

(assert (=> b!476259 (not (contains!2568 (+!1735 lt!217243 (tuple2!8959 lt!217241 lt!217239)) lt!217237))))

(assert (=> b!476259 (= lt!217242 (addStillNotContains!173 lt!217243 lt!217241 lt!217239 lt!217237))))

(assert (=> b!476259 (= lt!217237 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!476259 (= lt!217239 (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!476259 (= lt!217241 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30724 () ListLongMap!7885)

(assert (=> b!476259 (= lt!217243 call!30724)))

(assert (=> b!476259 (= e!279738 (+!1735 call!30724 (tuple2!8959 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!476260 () Bool)

(declare-fun e!279741 () Bool)

(declare-fun e!279739 () Bool)

(assert (=> b!476260 (= e!279741 e!279739)))

(declare-fun c!57267 () Bool)

(assert (=> b!476260 (= c!57267 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476261 () Bool)

(declare-fun lt!217240 () ListLongMap!7885)

(assert (=> b!476261 (= e!279739 (isEmpty!590 lt!217240))))

(declare-fun b!476262 () Bool)

(declare-fun e!279743 () Bool)

(assert (=> b!476262 (= e!279743 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476262 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!476263 () Bool)

(assert (=> b!476263 (= e!279738 call!30724)))

(declare-fun b!476264 () Bool)

(declare-fun e!279737 () Bool)

(assert (=> b!476264 (= e!279737 e!279741)))

(declare-fun c!57268 () Bool)

(assert (=> b!476264 (= c!57268 e!279743)))

(declare-fun res!284374 () Bool)

(assert (=> b!476264 (=> (not res!284374) (not e!279743))))

(assert (=> b!476264 (= res!284374 (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun b!476265 () Bool)

(assert (=> b!476265 (= e!279740 (ListLongMap!7886 Nil!9063))))

(declare-fun b!476266 () Bool)

(assert (=> b!476266 (= e!279739 (= lt!217240 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!476267 () Bool)

(declare-fun res!284376 () Bool)

(assert (=> b!476267 (=> (not res!284376) (not e!279737))))

(assert (=> b!476267 (= res!284376 (not (contains!2568 lt!217240 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!476269 () Bool)

(assert (=> b!476269 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> b!476269 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15117 _values!833)))))

(declare-fun e!279742 () Bool)

(assert (=> b!476269 (= e!279742 (= (apply!338 lt!217240 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)) (get!7178 (select (arr!14765 _values!833) #b00000000000000000000000000000000) (dynLambda!930 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30721 () Bool)

(assert (=> bm!30721 (= call!30724 (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun d!75603 () Bool)

(assert (=> d!75603 e!279737))

(declare-fun res!284375 () Bool)

(assert (=> d!75603 (=> (not res!284375) (not e!279737))))

(assert (=> d!75603 (= res!284375 (not (contains!2568 lt!217240 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75603 (= lt!217240 e!279740)))

(declare-fun c!57265 () Bool)

(assert (=> d!75603 (= c!57265 (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> d!75603 (validMask!0 mask!1365)))

(assert (=> d!75603 (= (getCurrentListMapNoExtraKeys!2111 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217240)))

(declare-fun b!476268 () Bool)

(assert (=> b!476268 (= e!279741 e!279742)))

(assert (=> b!476268 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(declare-fun res!284377 () Bool)

(assert (=> b!476268 (= res!284377 (contains!2568 lt!217240 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476268 (=> (not res!284377) (not e!279742))))

(assert (= (and d!75603 c!57265) b!476265))

(assert (= (and d!75603 (not c!57265)) b!476258))

(assert (= (and b!476258 c!57266) b!476259))

(assert (= (and b!476258 (not c!57266)) b!476263))

(assert (= (or b!476259 b!476263) bm!30721))

(assert (= (and d!75603 res!284375) b!476267))

(assert (= (and b!476267 res!284376) b!476264))

(assert (= (and b!476264 res!284374) b!476262))

(assert (= (and b!476264 c!57268) b!476268))

(assert (= (and b!476264 (not c!57268)) b!476260))

(assert (= (and b!476268 res!284377) b!476269))

(assert (= (and b!476260 c!57267) b!476266))

(assert (= (and b!476260 (not c!57267)) b!476261))

(declare-fun b_lambda!10379 () Bool)

(assert (=> (not b_lambda!10379) (not b!476259)))

(assert (=> b!476259 t!15060))

(declare-fun b_and!20623 () Bool)

(assert (= b_and!20621 (and (=> t!15060 result!7489) b_and!20623)))

(declare-fun b_lambda!10381 () Bool)

(assert (=> (not b_lambda!10381) (not b!476269)))

(assert (=> b!476269 t!15060))

(declare-fun b_and!20625 () Bool)

(assert (= b_and!20623 (and (=> t!15060 result!7489) b_and!20625)))

(assert (=> b!476262 m!458425))

(assert (=> b!476262 m!458425))

(assert (=> b!476262 m!458431))

(assert (=> b!476258 m!458425))

(assert (=> b!476258 m!458425))

(assert (=> b!476258 m!458431))

(declare-fun m!458607 () Bool)

(assert (=> b!476266 m!458607))

(assert (=> bm!30721 m!458607))

(declare-fun m!458609 () Bool)

(assert (=> d!75603 m!458609))

(assert (=> d!75603 m!458369))

(declare-fun m!458611 () Bool)

(assert (=> b!476267 m!458611))

(assert (=> b!476269 m!458421))

(assert (=> b!476269 m!458419))

(assert (=> b!476269 m!458425))

(assert (=> b!476269 m!458421))

(assert (=> b!476269 m!458419))

(assert (=> b!476269 m!458423))

(assert (=> b!476269 m!458425))

(declare-fun m!458613 () Bool)

(assert (=> b!476269 m!458613))

(declare-fun m!458615 () Bool)

(assert (=> b!476259 m!458615))

(assert (=> b!476259 m!458421))

(assert (=> b!476259 m!458419))

(assert (=> b!476259 m!458425))

(assert (=> b!476259 m!458421))

(assert (=> b!476259 m!458419))

(assert (=> b!476259 m!458423))

(declare-fun m!458617 () Bool)

(assert (=> b!476259 m!458617))

(declare-fun m!458619 () Bool)

(assert (=> b!476259 m!458619))

(assert (=> b!476259 m!458617))

(declare-fun m!458621 () Bool)

(assert (=> b!476259 m!458621))

(assert (=> b!476268 m!458425))

(assert (=> b!476268 m!458425))

(declare-fun m!458623 () Bool)

(assert (=> b!476268 m!458623))

(declare-fun m!458625 () Bool)

(assert (=> b!476261 m!458625))

(assert (=> b!476081 d!75603))

(declare-fun b!476278 () Bool)

(declare-fun e!279750 () Bool)

(declare-fun call!30727 () Bool)

(assert (=> b!476278 (= e!279750 call!30727)))

(declare-fun bm!30724 () Bool)

(assert (=> bm!30724 (= call!30727 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!476279 () Bool)

(declare-fun e!279751 () Bool)

(assert (=> b!476279 (= e!279751 call!30727)))

(declare-fun d!75605 () Bool)

(declare-fun res!284382 () Bool)

(declare-fun e!279752 () Bool)

(assert (=> d!75605 (=> res!284382 e!279752)))

(assert (=> d!75605 (= res!284382 (bvsge #b00000000000000000000000000000000 (size!15116 _keys!1025)))))

(assert (=> d!75605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!279752)))

(declare-fun b!476280 () Bool)

(assert (=> b!476280 (= e!279752 e!279751)))

(declare-fun c!57271 () Bool)

(assert (=> b!476280 (= c!57271 (validKeyInArray!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476281 () Bool)

(assert (=> b!476281 (= e!279751 e!279750)))

(declare-fun lt!217250 () (_ BitVec 64))

(assert (=> b!476281 (= lt!217250 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!217251 () Unit!13999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30707 (_ BitVec 64) (_ BitVec 32)) Unit!13999)

(assert (=> b!476281 (= lt!217251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!217250 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!476281 (arrayContainsKey!0 _keys!1025 lt!217250 #b00000000000000000000000000000000)))

(declare-fun lt!217252 () Unit!13999)

(assert (=> b!476281 (= lt!217252 lt!217251)))

(declare-fun res!284383 () Bool)

(declare-datatypes ((SeekEntryResult!3550 0))(
  ( (MissingZero!3550 (index!16379 (_ BitVec 32))) (Found!3550 (index!16380 (_ BitVec 32))) (Intermediate!3550 (undefined!4362 Bool) (index!16381 (_ BitVec 32)) (x!44687 (_ BitVec 32))) (Undefined!3550) (MissingVacant!3550 (index!16382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30707 (_ BitVec 32)) SeekEntryResult!3550)

(assert (=> b!476281 (= res!284383 (= (seekEntryOrOpen!0 (select (arr!14764 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3550 #b00000000000000000000000000000000)))))

(assert (=> b!476281 (=> (not res!284383) (not e!279750))))

(assert (= (and d!75605 (not res!284382)) b!476280))

(assert (= (and b!476280 c!57271) b!476281))

(assert (= (and b!476280 (not c!57271)) b!476279))

(assert (= (and b!476281 res!284383) b!476278))

(assert (= (or b!476278 b!476279) bm!30724))

(declare-fun m!458627 () Bool)

(assert (=> bm!30724 m!458627))

(assert (=> b!476280 m!458425))

(assert (=> b!476280 m!458425))

(assert (=> b!476280 m!458431))

(assert (=> b!476281 m!458425))

(declare-fun m!458629 () Bool)

(assert (=> b!476281 m!458629))

(declare-fun m!458631 () Bool)

(assert (=> b!476281 m!458631))

(assert (=> b!476281 m!458425))

(declare-fun m!458633 () Bool)

(assert (=> b!476281 m!458633))

(assert (=> b!476077 d!75605))

(declare-fun condMapEmpty!21982 () Bool)

(declare-fun mapDefault!21982 () ValueCell!6405)

(assert (=> mapNonEmpty!21976 (= condMapEmpty!21982 (= mapRest!21976 ((as const (Array (_ BitVec 32) ValueCell!6405)) mapDefault!21982)))))

(declare-fun e!279757 () Bool)

(declare-fun mapRes!21982 () Bool)

(assert (=> mapNonEmpty!21976 (= tp!42258 (and e!279757 mapRes!21982))))

(declare-fun mapIsEmpty!21982 () Bool)

(assert (=> mapIsEmpty!21982 mapRes!21982))

(declare-fun b!476289 () Bool)

(assert (=> b!476289 (= e!279757 tp_is_empty!13497)))

(declare-fun mapNonEmpty!21982 () Bool)

(declare-fun tp!42268 () Bool)

(declare-fun e!279758 () Bool)

(assert (=> mapNonEmpty!21982 (= mapRes!21982 (and tp!42268 e!279758))))

(declare-fun mapValue!21982 () ValueCell!6405)

(declare-fun mapKey!21982 () (_ BitVec 32))

(declare-fun mapRest!21982 () (Array (_ BitVec 32) ValueCell!6405))

(assert (=> mapNonEmpty!21982 (= mapRest!21976 (store mapRest!21982 mapKey!21982 mapValue!21982))))

(declare-fun b!476288 () Bool)

(assert (=> b!476288 (= e!279758 tp_is_empty!13497)))

(assert (= (and mapNonEmpty!21976 condMapEmpty!21982) mapIsEmpty!21982))

(assert (= (and mapNonEmpty!21976 (not condMapEmpty!21982)) mapNonEmpty!21982))

(assert (= (and mapNonEmpty!21982 ((_ is ValueCellFull!6405) mapValue!21982)) b!476288))

(assert (= (and mapNonEmpty!21976 ((_ is ValueCellFull!6405) mapDefault!21982)) b!476289))

(declare-fun m!458635 () Bool)

(assert (=> mapNonEmpty!21982 m!458635))

(declare-fun b_lambda!10383 () Bool)

(assert (= b_lambda!10377 (or (and start!42710 b_free!12069) b_lambda!10383)))

(declare-fun b_lambda!10385 () Bool)

(assert (= b_lambda!10381 (or (and start!42710 b_free!12069) b_lambda!10385)))

(declare-fun b_lambda!10387 () Bool)

(assert (= b_lambda!10379 (or (and start!42710 b_free!12069) b_lambda!10387)))

(declare-fun b_lambda!10389 () Bool)

(assert (= b_lambda!10373 (or (and start!42710 b_free!12069) b_lambda!10389)))

(declare-fun b_lambda!10391 () Bool)

(assert (= b_lambda!10371 (or (and start!42710 b_free!12069) b_lambda!10391)))

(declare-fun b_lambda!10393 () Bool)

(assert (= b_lambda!10375 (or (and start!42710 b_free!12069) b_lambda!10393)))

(check-sat (not b!476181) (not d!75599) (not b!476157) (not b!476280) (not b!476196) (not b_lambda!10383) (not b_next!12069) (not bm!30713) (not b!476262) (not b!476158) (not b_lambda!10393) (not b!476193) (not b!476249) (not mapNonEmpty!21982) (not b!476255) (not b!476183) (not d!75583) (not d!75601) (not b!476266) (not d!75581) (not b!476281) (not b!476180) (not b!476257) (not d!75575) (not d!75579) (not b!476221) (not b!476151) (not bm!30701) (not b!476205) (not b!476184) (not b!476177) (not b!476256) (not b!476182) (not b!476254) (not b!476176) (not d!75585) (not b!476250) (not bm!30702) (not b!476161) (not b!476178) (not bm!30705) (not b_lambda!10389) (not bm!30712) (not b!476269) (not b!476185) (not b_lambda!10387) (not d!75589) (not bm!30706) (not b!476259) (not b!476218) (not b_lambda!10391) tp_is_empty!13497 (not b!476258) (not bm!30720) (not bm!30724) (not d!75587) (not b!476206) (not d!75603) (not d!75577) (not b!476261) (not b!476268) (not b!476192) (not bm!30709) (not b!476219) (not bm!30717) (not b!476149) (not b!476246) (not b_lambda!10385) (not b!476186) (not b!476247) (not b!476188) (not b!476202) (not b!476179) (not bm!30708) (not b!476167) (not b!476153) (not b!476150) (not b!476267) (not bm!30721) b_and!20625)
(check-sat b_and!20625 (not b_next!12069))
