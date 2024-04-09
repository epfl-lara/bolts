; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78344 () Bool)

(assert start!78344)

(declare-fun b_free!16737 () Bool)

(declare-fun b_next!16737 () Bool)

(assert (=> start!78344 (= b_free!16737 (not b_next!16737))))

(declare-fun tp!58495 () Bool)

(declare-fun b_and!27347 () Bool)

(assert (=> start!78344 (= tp!58495 b_and!27347)))

(declare-fun b!913641 () Bool)

(declare-fun e!512534 () Bool)

(declare-fun e!512529 () Bool)

(declare-fun mapRes!30467 () Bool)

(assert (=> b!913641 (= e!512534 (and e!512529 mapRes!30467))))

(declare-fun condMapEmpty!30467 () Bool)

(declare-datatypes ((V!30505 0))(
  ( (V!30506 (val!9628 Int)) )
))
(declare-datatypes ((ValueCell!9096 0))(
  ( (ValueCellFull!9096 (v!12142 V!30505)) (EmptyCell!9096) )
))
(declare-datatypes ((array!54316 0))(
  ( (array!54317 (arr!26106 (Array (_ BitVec 32) ValueCell!9096)) (size!26566 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54316)

(declare-fun mapDefault!30467 () ValueCell!9096)

(assert (=> b!913641 (= condMapEmpty!30467 (= (arr!26106 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9096)) mapDefault!30467)))))

(declare-fun b!913642 () Bool)

(declare-fun res!616343 () Bool)

(declare-fun e!512530 () Bool)

(assert (=> b!913642 (=> (not res!616343) (not e!512530))))

(declare-datatypes ((array!54318 0))(
  ( (array!54319 (arr!26107 (Array (_ BitVec 32) (_ BitVec 64))) (size!26567 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54318)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54318 (_ BitVec 32)) Bool)

(assert (=> b!913642 (= res!616343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!913643 () Bool)

(declare-fun res!616349 () Bool)

(assert (=> b!913643 (=> (not res!616349) (not e!512530))))

(declare-datatypes ((List!18447 0))(
  ( (Nil!18444) (Cons!18443 (h!19589 (_ BitVec 64)) (t!26052 List!18447)) )
))
(declare-fun arrayNoDuplicates!0 (array!54318 (_ BitVec 32) List!18447) Bool)

(assert (=> b!913643 (= res!616349 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18444))))

(declare-fun mapIsEmpty!30467 () Bool)

(assert (=> mapIsEmpty!30467 mapRes!30467))

(declare-fun b!913644 () Bool)

(declare-fun e!512531 () Bool)

(assert (=> b!913644 (= e!512530 (not e!512531))))

(declare-fun res!616347 () Bool)

(assert (=> b!913644 (=> res!616347 e!512531)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!913644 (= res!616347 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26567 _keys!1386))))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!913644 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30505)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30505)

(declare-datatypes ((Unit!30903 0))(
  ( (Unit!30904) )
))
(declare-fun lt!411063 () Unit!30903)

(declare-fun lemmaKeyInListMapIsInArray!290 (array!54318 array!54316 (_ BitVec 32) (_ BitVec 32) V!30505 V!30505 (_ BitVec 64) Int) Unit!30903)

(assert (=> b!913644 (= lt!411063 (lemmaKeyInListMapIsInArray!290 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!30467 () Bool)

(declare-fun tp!58496 () Bool)

(declare-fun e!512535 () Bool)

(assert (=> mapNonEmpty!30467 (= mapRes!30467 (and tp!58496 e!512535))))

(declare-fun mapRest!30467 () (Array (_ BitVec 32) ValueCell!9096))

(declare-fun mapKey!30467 () (_ BitVec 32))

(declare-fun mapValue!30467 () ValueCell!9096)

(assert (=> mapNonEmpty!30467 (= (arr!26106 _values!1152) (store mapRest!30467 mapKey!30467 mapValue!30467))))

(declare-fun b!913645 () Bool)

(declare-fun e!512533 () Bool)

(assert (=> b!913645 (= e!512531 e!512533)))

(declare-fun res!616346 () Bool)

(assert (=> b!913645 (=> res!616346 e!512533)))

(declare-datatypes ((tuple2!12608 0))(
  ( (tuple2!12609 (_1!6314 (_ BitVec 64)) (_2!6314 V!30505)) )
))
(declare-datatypes ((List!18448 0))(
  ( (Nil!18445) (Cons!18444 (h!19590 tuple2!12608) (t!26053 List!18448)) )
))
(declare-datatypes ((ListLongMap!11319 0))(
  ( (ListLongMap!11320 (toList!5675 List!18448)) )
))
(declare-fun lt!411062 () ListLongMap!11319)

(declare-fun contains!4689 (ListLongMap!11319 (_ BitVec 64)) Bool)

(assert (=> b!913645 (= res!616346 (not (contains!4689 lt!411062 k0!1033)))))

(declare-fun getCurrentListMap!2905 (array!54318 array!54316 (_ BitVec 32) (_ BitVec 32) V!30505 V!30505 (_ BitVec 32) Int) ListLongMap!11319)

(assert (=> b!913645 (= lt!411062 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!913646 () Bool)

(declare-fun res!616344 () Bool)

(assert (=> b!913646 (=> (not res!616344) (not e!512530))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!913646 (= res!616344 (inRange!0 i!717 mask!1756))))

(declare-fun b!913647 () Bool)

(declare-fun res!616341 () Bool)

(assert (=> b!913647 (=> (not res!616341) (not e!512530))))

(assert (=> b!913647 (= res!616341 (and (= (size!26566 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26567 _keys!1386) (size!26566 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913648 () Bool)

(declare-fun apply!531 (ListLongMap!11319 (_ BitVec 64)) V!30505)

(declare-fun get!13716 (ValueCell!9096 V!30505) V!30505)

(declare-fun dynLambda!1398 (Int (_ BitVec 64)) V!30505)

(assert (=> b!913648 (= e!512533 (= (apply!531 lt!411062 k0!1033) (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!616342 () Bool)

(assert (=> start!78344 (=> (not res!616342) (not e!512530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78344 (= res!616342 (validMask!0 mask!1756))))

(assert (=> start!78344 e!512530))

(declare-fun array_inv!20378 (array!54316) Bool)

(assert (=> start!78344 (and (array_inv!20378 _values!1152) e!512534)))

(assert (=> start!78344 tp!58495))

(assert (=> start!78344 true))

(declare-fun tp_is_empty!19155 () Bool)

(assert (=> start!78344 tp_is_empty!19155))

(declare-fun array_inv!20379 (array!54318) Bool)

(assert (=> start!78344 (array_inv!20379 _keys!1386)))

(declare-fun b!913649 () Bool)

(assert (=> b!913649 (= e!512529 tp_is_empty!19155)))

(declare-fun b!913650 () Bool)

(assert (=> b!913650 (= e!512535 tp_is_empty!19155)))

(declare-fun b!913651 () Bool)

(declare-fun res!616345 () Bool)

(assert (=> b!913651 (=> (not res!616345) (not e!512530))))

(assert (=> b!913651 (= res!616345 (and (= (select (arr!26107 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913652 () Bool)

(declare-fun res!616348 () Bool)

(assert (=> b!913652 (=> (not res!616348) (not e!512530))))

(assert (=> b!913652 (= res!616348 (contains!4689 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!78344 res!616342) b!913647))

(assert (= (and b!913647 res!616341) b!913642))

(assert (= (and b!913642 res!616343) b!913643))

(assert (= (and b!913643 res!616349) b!913652))

(assert (= (and b!913652 res!616348) b!913646))

(assert (= (and b!913646 res!616344) b!913651))

(assert (= (and b!913651 res!616345) b!913644))

(assert (= (and b!913644 (not res!616347)) b!913645))

(assert (= (and b!913645 (not res!616346)) b!913648))

(assert (= (and b!913641 condMapEmpty!30467) mapIsEmpty!30467))

(assert (= (and b!913641 (not condMapEmpty!30467)) mapNonEmpty!30467))

(get-info :version)

(assert (= (and mapNonEmpty!30467 ((_ is ValueCellFull!9096) mapValue!30467)) b!913650))

(assert (= (and b!913641 ((_ is ValueCellFull!9096) mapDefault!30467)) b!913649))

(assert (= start!78344 b!913641))

(declare-fun b_lambda!13371 () Bool)

(assert (=> (not b_lambda!13371) (not b!913648)))

(declare-fun t!26051 () Bool)

(declare-fun tb!5455 () Bool)

(assert (=> (and start!78344 (= defaultEntry!1160 defaultEntry!1160) t!26051) tb!5455))

(declare-fun result!10711 () Bool)

(assert (=> tb!5455 (= result!10711 tp_is_empty!19155)))

(assert (=> b!913648 t!26051))

(declare-fun b_and!27349 () Bool)

(assert (= b_and!27347 (and (=> t!26051 result!10711) b_and!27349)))

(declare-fun m!848265 () Bool)

(assert (=> mapNonEmpty!30467 m!848265))

(declare-fun m!848267 () Bool)

(assert (=> b!913643 m!848267))

(declare-fun m!848269 () Bool)

(assert (=> b!913644 m!848269))

(declare-fun m!848271 () Bool)

(assert (=> b!913644 m!848271))

(declare-fun m!848273 () Bool)

(assert (=> b!913646 m!848273))

(declare-fun m!848275 () Bool)

(assert (=> b!913645 m!848275))

(declare-fun m!848277 () Bool)

(assert (=> b!913645 m!848277))

(declare-fun m!848279 () Bool)

(assert (=> b!913652 m!848279))

(assert (=> b!913652 m!848279))

(declare-fun m!848281 () Bool)

(assert (=> b!913652 m!848281))

(declare-fun m!848283 () Bool)

(assert (=> b!913651 m!848283))

(declare-fun m!848285 () Bool)

(assert (=> b!913642 m!848285))

(declare-fun m!848287 () Bool)

(assert (=> b!913648 m!848287))

(declare-fun m!848289 () Bool)

(assert (=> b!913648 m!848289))

(declare-fun m!848291 () Bool)

(assert (=> b!913648 m!848291))

(assert (=> b!913648 m!848289))

(assert (=> b!913648 m!848291))

(declare-fun m!848293 () Bool)

(assert (=> b!913648 m!848293))

(declare-fun m!848295 () Bool)

(assert (=> start!78344 m!848295))

(declare-fun m!848297 () Bool)

(assert (=> start!78344 m!848297))

(declare-fun m!848299 () Bool)

(assert (=> start!78344 m!848299))

(check-sat (not mapNonEmpty!30467) (not start!78344) (not b_next!16737) (not b!913645) (not b!913652) (not b!913644) (not b!913643) (not b!913642) tp_is_empty!19155 (not b!913646) b_and!27349 (not b_lambda!13371) (not b!913648))
(check-sat b_and!27349 (not b_next!16737))
(get-model)

(declare-fun b_lambda!13375 () Bool)

(assert (= b_lambda!13371 (or (and start!78344 b_free!16737) b_lambda!13375)))

(check-sat (not mapNonEmpty!30467) (not start!78344) (not b_next!16737) (not b!913645) (not b!913648) (not b!913652) (not b_lambda!13375) (not b!913644) (not b!913643) (not b!913642) tp_is_empty!19155 (not b!913646) b_and!27349)
(check-sat b_and!27349 (not b_next!16737))
(get-model)

(declare-fun d!112421 () Bool)

(declare-fun res!616381 () Bool)

(declare-fun e!512561 () Bool)

(assert (=> d!112421 (=> res!616381 e!512561)))

(assert (=> d!112421 (= res!616381 (= (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) k0!1033))))

(assert (=> d!112421 (= (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000) e!512561)))

(declare-fun b!913697 () Bool)

(declare-fun e!512562 () Bool)

(assert (=> b!913697 (= e!512561 e!512562)))

(declare-fun res!616382 () Bool)

(assert (=> b!913697 (=> (not res!616382) (not e!512562))))

(assert (=> b!913697 (= res!616382 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26567 _keys!1386)))))

(declare-fun b!913698 () Bool)

(assert (=> b!913698 (= e!512562 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112421 (not res!616381)) b!913697))

(assert (= (and b!913697 res!616382) b!913698))

(declare-fun m!848337 () Bool)

(assert (=> d!112421 m!848337))

(declare-fun m!848339 () Bool)

(assert (=> b!913698 m!848339))

(assert (=> b!913644 d!112421))

(declare-fun d!112423 () Bool)

(declare-fun e!512565 () Bool)

(assert (=> d!112423 e!512565))

(declare-fun c!95837 () Bool)

(assert (=> d!112423 (= c!95837 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!411072 () Unit!30903)

(declare-fun choose!1543 (array!54318 array!54316 (_ BitVec 32) (_ BitVec 32) V!30505 V!30505 (_ BitVec 64) Int) Unit!30903)

(assert (=> d!112423 (= lt!411072 (choose!1543 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (=> d!112423 (validMask!0 mask!1756)))

(assert (=> d!112423 (= (lemmaKeyInListMapIsInArray!290 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) lt!411072)))

(declare-fun b!913703 () Bool)

(assert (=> b!913703 (= e!512565 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!913704 () Bool)

(assert (=> b!913704 (= e!512565 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112423 c!95837) b!913703))

(assert (= (and d!112423 (not c!95837)) b!913704))

(declare-fun m!848341 () Bool)

(assert (=> d!112423 m!848341))

(assert (=> d!112423 m!848295))

(assert (=> b!913703 m!848269))

(assert (=> b!913644 d!112423))

(declare-fun d!112425 () Bool)

(declare-datatypes ((Option!485 0))(
  ( (Some!484 (v!12144 V!30505)) (None!483) )
))
(declare-fun get!13718 (Option!485) V!30505)

(declare-fun getValueByKey!479 (List!18448 (_ BitVec 64)) Option!485)

(assert (=> d!112425 (= (apply!531 lt!411062 k0!1033) (get!13718 (getValueByKey!479 (toList!5675 lt!411062) k0!1033)))))

(declare-fun bs!25703 () Bool)

(assert (= bs!25703 d!112425))

(declare-fun m!848343 () Bool)

(assert (=> bs!25703 m!848343))

(assert (=> bs!25703 m!848343))

(declare-fun m!848345 () Bool)

(assert (=> bs!25703 m!848345))

(assert (=> b!913648 d!112425))

(declare-fun d!112427 () Bool)

(declare-fun c!95840 () Bool)

(assert (=> d!112427 (= c!95840 ((_ is ValueCellFull!9096) (select (arr!26106 _values!1152) i!717)))))

(declare-fun e!512568 () V!30505)

(assert (=> d!112427 (= (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) e!512568)))

(declare-fun b!913709 () Bool)

(declare-fun get!13719 (ValueCell!9096 V!30505) V!30505)

(assert (=> b!913709 (= e!512568 (get!13719 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913710 () Bool)

(declare-fun get!13720 (ValueCell!9096 V!30505) V!30505)

(assert (=> b!913710 (= e!512568 (get!13720 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112427 c!95840) b!913709))

(assert (= (and d!112427 (not c!95840)) b!913710))

(assert (=> b!913709 m!848289))

(assert (=> b!913709 m!848291))

(declare-fun m!848347 () Bool)

(assert (=> b!913709 m!848347))

(assert (=> b!913710 m!848289))

(assert (=> b!913710 m!848291))

(declare-fun m!848349 () Bool)

(assert (=> b!913710 m!848349))

(assert (=> b!913648 d!112427))

(declare-fun d!112429 () Bool)

(assert (=> d!112429 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!913646 d!112429))

(declare-fun b!913719 () Bool)

(declare-fun e!512577 () Bool)

(declare-fun e!512576 () Bool)

(assert (=> b!913719 (= e!512577 e!512576)))

(declare-fun c!95843 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!913719 (= c!95843 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913721 () Bool)

(declare-fun e!512575 () Bool)

(declare-fun call!40464 () Bool)

(assert (=> b!913721 (= e!512575 call!40464)))

(declare-fun bm!40461 () Bool)

(assert (=> bm!40461 (= call!40464 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!913722 () Bool)

(assert (=> b!913722 (= e!512576 e!512575)))

(declare-fun lt!411081 () (_ BitVec 64))

(assert (=> b!913722 (= lt!411081 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411079 () Unit!30903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54318 (_ BitVec 64) (_ BitVec 32)) Unit!30903)

(assert (=> b!913722 (= lt!411079 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!411081 #b00000000000000000000000000000000))))

(assert (=> b!913722 (arrayContainsKey!0 _keys!1386 lt!411081 #b00000000000000000000000000000000)))

(declare-fun lt!411080 () Unit!30903)

(assert (=> b!913722 (= lt!411080 lt!411079)))

(declare-fun res!616387 () Bool)

(declare-datatypes ((SeekEntryResult!8957 0))(
  ( (MissingZero!8957 (index!38198 (_ BitVec 32))) (Found!8957 (index!38199 (_ BitVec 32))) (Intermediate!8957 (undefined!9769 Bool) (index!38200 (_ BitVec 32)) (x!78148 (_ BitVec 32))) (Undefined!8957) (MissingVacant!8957 (index!38201 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54318 (_ BitVec 32)) SeekEntryResult!8957)

(assert (=> b!913722 (= res!616387 (= (seekEntryOrOpen!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8957 #b00000000000000000000000000000000)))))

(assert (=> b!913722 (=> (not res!616387) (not e!512575))))

(declare-fun d!112431 () Bool)

(declare-fun res!616388 () Bool)

(assert (=> d!112431 (=> res!616388 e!512577)))

(assert (=> d!112431 (= res!616388 (bvsge #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (=> d!112431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!512577)))

(declare-fun b!913720 () Bool)

(assert (=> b!913720 (= e!512576 call!40464)))

(assert (= (and d!112431 (not res!616388)) b!913719))

(assert (= (and b!913719 c!95843) b!913722))

(assert (= (and b!913719 (not c!95843)) b!913720))

(assert (= (and b!913722 res!616387) b!913721))

(assert (= (or b!913721 b!913720) bm!40461))

(assert (=> b!913719 m!848337))

(assert (=> b!913719 m!848337))

(declare-fun m!848351 () Bool)

(assert (=> b!913719 m!848351))

(declare-fun m!848353 () Bool)

(assert (=> bm!40461 m!848353))

(assert (=> b!913722 m!848337))

(declare-fun m!848355 () Bool)

(assert (=> b!913722 m!848355))

(declare-fun m!848357 () Bool)

(assert (=> b!913722 m!848357))

(assert (=> b!913722 m!848337))

(declare-fun m!848359 () Bool)

(assert (=> b!913722 m!848359))

(assert (=> b!913642 d!112431))

(declare-fun d!112433 () Bool)

(declare-fun e!512583 () Bool)

(assert (=> d!112433 e!512583))

(declare-fun res!616391 () Bool)

(assert (=> d!112433 (=> res!616391 e!512583)))

(declare-fun lt!411090 () Bool)

(assert (=> d!112433 (= res!616391 (not lt!411090))))

(declare-fun lt!411092 () Bool)

(assert (=> d!112433 (= lt!411090 lt!411092)))

(declare-fun lt!411091 () Unit!30903)

(declare-fun e!512582 () Unit!30903)

(assert (=> d!112433 (= lt!411091 e!512582)))

(declare-fun c!95846 () Bool)

(assert (=> d!112433 (= c!95846 lt!411092)))

(declare-fun containsKey!444 (List!18448 (_ BitVec 64)) Bool)

(assert (=> d!112433 (= lt!411092 (containsKey!444 (toList!5675 lt!411062) k0!1033))))

(assert (=> d!112433 (= (contains!4689 lt!411062 k0!1033) lt!411090)))

(declare-fun b!913729 () Bool)

(declare-fun lt!411093 () Unit!30903)

(assert (=> b!913729 (= e!512582 lt!411093)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!339 (List!18448 (_ BitVec 64)) Unit!30903)

(assert (=> b!913729 (= lt!411093 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411062) k0!1033))))

(declare-fun isDefined!349 (Option!485) Bool)

(assert (=> b!913729 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411062) k0!1033))))

(declare-fun b!913730 () Bool)

(declare-fun Unit!30907 () Unit!30903)

(assert (=> b!913730 (= e!512582 Unit!30907)))

(declare-fun b!913731 () Bool)

(assert (=> b!913731 (= e!512583 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411062) k0!1033)))))

(assert (= (and d!112433 c!95846) b!913729))

(assert (= (and d!112433 (not c!95846)) b!913730))

(assert (= (and d!112433 (not res!616391)) b!913731))

(declare-fun m!848361 () Bool)

(assert (=> d!112433 m!848361))

(declare-fun m!848363 () Bool)

(assert (=> b!913729 m!848363))

(assert (=> b!913729 m!848343))

(assert (=> b!913729 m!848343))

(declare-fun m!848365 () Bool)

(assert (=> b!913729 m!848365))

(assert (=> b!913731 m!848343))

(assert (=> b!913731 m!848343))

(assert (=> b!913731 m!848365))

(assert (=> b!913645 d!112433))

(declare-fun b!913774 () Bool)

(declare-fun e!512616 () Bool)

(declare-fun lt!411140 () ListLongMap!11319)

(assert (=> b!913774 (= e!512616 (= (apply!531 lt!411140 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!913775 () Bool)

(declare-fun e!512619 () Bool)

(assert (=> b!913775 (= e!512619 (validKeyInArray!0 (select (arr!26107 _keys!1386) i!717)))))

(declare-fun bm!40476 () Bool)

(declare-fun call!40485 () ListLongMap!11319)

(declare-fun getCurrentListMapNoExtraKeys!3312 (array!54318 array!54316 (_ BitVec 32) (_ BitVec 32) V!30505 V!30505 (_ BitVec 32) Int) ListLongMap!11319)

(assert (=> bm!40476 (= call!40485 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!913776 () Bool)

(declare-fun res!616417 () Bool)

(declare-fun e!512613 () Bool)

(assert (=> b!913776 (=> (not res!616417) (not e!512613))))

(declare-fun e!512621 () Bool)

(assert (=> b!913776 (= res!616417 e!512621)))

(declare-fun res!616418 () Bool)

(assert (=> b!913776 (=> res!616418 e!512621)))

(declare-fun e!512617 () Bool)

(assert (=> b!913776 (= res!616418 (not e!512617))))

(declare-fun res!616412 () Bool)

(assert (=> b!913776 (=> (not res!616412) (not e!512617))))

(assert (=> b!913776 (= res!616412 (bvslt i!717 (size!26567 _keys!1386)))))

(declare-fun b!913777 () Bool)

(declare-fun e!512622 () Bool)

(assert (=> b!913777 (= e!512622 e!512616)))

(declare-fun res!616415 () Bool)

(declare-fun call!40480 () Bool)

(assert (=> b!913777 (= res!616415 call!40480)))

(assert (=> b!913777 (=> (not res!616415) (not e!512616))))

(declare-fun bm!40477 () Bool)

(declare-fun call!40484 () ListLongMap!11319)

(declare-fun call!40479 () ListLongMap!11319)

(assert (=> bm!40477 (= call!40484 call!40479)))

(declare-fun b!913778 () Bool)

(assert (=> b!913778 (= e!512622 (not call!40480))))

(declare-fun b!913779 () Bool)

(declare-fun e!512620 () Bool)

(assert (=> b!913779 (= e!512621 e!512620)))

(declare-fun res!616411 () Bool)

(assert (=> b!913779 (=> (not res!616411) (not e!512620))))

(assert (=> b!913779 (= res!616411 (contains!4689 lt!411140 (select (arr!26107 _keys!1386) i!717)))))

(assert (=> b!913779 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26567 _keys!1386)))))

(declare-fun b!913780 () Bool)

(declare-fun e!512614 () ListLongMap!11319)

(assert (=> b!913780 (= e!512614 call!40484)))

(declare-fun b!913781 () Bool)

(declare-fun e!512618 () ListLongMap!11319)

(assert (=> b!913781 (= e!512618 call!40484)))

(declare-fun b!913782 () Bool)

(declare-fun e!512611 () Bool)

(declare-fun call!40481 () Bool)

(assert (=> b!913782 (= e!512611 (not call!40481))))

(declare-fun bm!40479 () Bool)

(declare-fun call!40483 () ListLongMap!11319)

(assert (=> bm!40479 (= call!40483 call!40485)))

(declare-fun bm!40480 () Bool)

(declare-fun call!40482 () ListLongMap!11319)

(assert (=> bm!40480 (= call!40482 call!40483)))

(declare-fun b!913783 () Bool)

(assert (=> b!913783 (= e!512620 (= (apply!531 lt!411140 (select (arr!26107 _keys!1386) i!717)) (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913783 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26566 _values!1152)))))

(assert (=> b!913783 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26567 _keys!1386)))))

(declare-fun b!913784 () Bool)

(assert (=> b!913784 (= e!512617 (validKeyInArray!0 (select (arr!26107 _keys!1386) i!717)))))

(declare-fun c!95863 () Bool)

(declare-fun c!95860 () Bool)

(declare-fun bm!40481 () Bool)

(declare-fun +!2564 (ListLongMap!11319 tuple2!12608) ListLongMap!11319)

(assert (=> bm!40481 (= call!40479 (+!2564 (ite c!95863 call!40485 (ite c!95860 call!40483 call!40482)) (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun bm!40482 () Bool)

(assert (=> bm!40482 (= call!40481 (contains!4689 lt!411140 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913785 () Bool)

(declare-fun e!512612 () Unit!30903)

(declare-fun Unit!30908 () Unit!30903)

(assert (=> b!913785 (= e!512612 Unit!30908)))

(declare-fun b!913786 () Bool)

(assert (=> b!913786 (= e!512613 e!512622)))

(declare-fun c!95859 () Bool)

(assert (=> b!913786 (= c!95859 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913787 () Bool)

(declare-fun c!95861 () Bool)

(assert (=> b!913787 (= c!95861 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!913787 (= e!512614 e!512618)))

(declare-fun b!913788 () Bool)

(declare-fun e!512610 () Bool)

(assert (=> b!913788 (= e!512610 (= (apply!531 lt!411140 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!913789 () Bool)

(declare-fun e!512615 () ListLongMap!11319)

(assert (=> b!913789 (= e!512615 e!512614)))

(assert (=> b!913789 (= c!95860 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913790 () Bool)

(assert (=> b!913790 (= e!512611 e!512610)))

(declare-fun res!616416 () Bool)

(assert (=> b!913790 (= res!616416 call!40481)))

(assert (=> b!913790 (=> (not res!616416) (not e!512610))))

(declare-fun d!112435 () Bool)

(assert (=> d!112435 e!512613))

(declare-fun res!616414 () Bool)

(assert (=> d!112435 (=> (not res!616414) (not e!512613))))

(assert (=> d!112435 (= res!616414 (or (bvsge i!717 (size!26567 _keys!1386)) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26567 _keys!1386)))))))

(declare-fun lt!411149 () ListLongMap!11319)

(assert (=> d!112435 (= lt!411140 lt!411149)))

(declare-fun lt!411157 () Unit!30903)

(assert (=> d!112435 (= lt!411157 e!512612)))

(declare-fun c!95864 () Bool)

(assert (=> d!112435 (= c!95864 e!512619)))

(declare-fun res!616410 () Bool)

(assert (=> d!112435 (=> (not res!616410) (not e!512619))))

(assert (=> d!112435 (= res!616410 (bvslt i!717 (size!26567 _keys!1386)))))

(assert (=> d!112435 (= lt!411149 e!512615)))

(assert (=> d!112435 (= c!95863 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112435 (validMask!0 mask!1756)))

(assert (=> d!112435 (= (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) lt!411140)))

(declare-fun bm!40478 () Bool)

(assert (=> bm!40478 (= call!40480 (contains!4689 lt!411140 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913791 () Bool)

(assert (=> b!913791 (= e!512615 (+!2564 call!40479 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!913792 () Bool)

(assert (=> b!913792 (= e!512618 call!40482)))

(declare-fun b!913793 () Bool)

(declare-fun res!616413 () Bool)

(assert (=> b!913793 (=> (not res!616413) (not e!512613))))

(assert (=> b!913793 (= res!616413 e!512611)))

(declare-fun c!95862 () Bool)

(assert (=> b!913793 (= c!95862 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!913794 () Bool)

(declare-fun lt!411152 () Unit!30903)

(assert (=> b!913794 (= e!512612 lt!411152)))

(declare-fun lt!411146 () ListLongMap!11319)

(assert (=> b!913794 (= lt!411146 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!411153 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411153 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411158 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411158 (select (arr!26107 _keys!1386) i!717))))

(declare-fun lt!411155 () Unit!30903)

(declare-fun addStillContains!350 (ListLongMap!11319 (_ BitVec 64) V!30505 (_ BitVec 64)) Unit!30903)

(assert (=> b!913794 (= lt!411155 (addStillContains!350 lt!411146 lt!411153 zeroValue!1094 lt!411158))))

(assert (=> b!913794 (contains!4689 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094)) lt!411158)))

(declare-fun lt!411145 () Unit!30903)

(assert (=> b!913794 (= lt!411145 lt!411155)))

(declare-fun lt!411150 () ListLongMap!11319)

(assert (=> b!913794 (= lt!411150 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!411147 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411147 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411142 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411142 (select (arr!26107 _keys!1386) i!717))))

(declare-fun lt!411148 () Unit!30903)

(declare-fun addApplyDifferent!350 (ListLongMap!11319 (_ BitVec 64) V!30505 (_ BitVec 64)) Unit!30903)

(assert (=> b!913794 (= lt!411148 (addApplyDifferent!350 lt!411150 lt!411147 minValue!1094 lt!411142))))

(assert (=> b!913794 (= (apply!531 (+!2564 lt!411150 (tuple2!12609 lt!411147 minValue!1094)) lt!411142) (apply!531 lt!411150 lt!411142))))

(declare-fun lt!411143 () Unit!30903)

(assert (=> b!913794 (= lt!411143 lt!411148)))

(declare-fun lt!411151 () ListLongMap!11319)

(assert (=> b!913794 (= lt!411151 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!411141 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411141 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411159 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411159 (select (arr!26107 _keys!1386) i!717))))

(declare-fun lt!411139 () Unit!30903)

(assert (=> b!913794 (= lt!411139 (addApplyDifferent!350 lt!411151 lt!411141 zeroValue!1094 lt!411159))))

(assert (=> b!913794 (= (apply!531 (+!2564 lt!411151 (tuple2!12609 lt!411141 zeroValue!1094)) lt!411159) (apply!531 lt!411151 lt!411159))))

(declare-fun lt!411138 () Unit!30903)

(assert (=> b!913794 (= lt!411138 lt!411139)))

(declare-fun lt!411144 () ListLongMap!11319)

(assert (=> b!913794 (= lt!411144 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!411156 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411156 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411154 () (_ BitVec 64))

(assert (=> b!913794 (= lt!411154 (select (arr!26107 _keys!1386) i!717))))

(assert (=> b!913794 (= lt!411152 (addApplyDifferent!350 lt!411144 lt!411156 minValue!1094 lt!411154))))

(assert (=> b!913794 (= (apply!531 (+!2564 lt!411144 (tuple2!12609 lt!411156 minValue!1094)) lt!411154) (apply!531 lt!411144 lt!411154))))

(assert (= (and d!112435 c!95863) b!913791))

(assert (= (and d!112435 (not c!95863)) b!913789))

(assert (= (and b!913789 c!95860) b!913780))

(assert (= (and b!913789 (not c!95860)) b!913787))

(assert (= (and b!913787 c!95861) b!913781))

(assert (= (and b!913787 (not c!95861)) b!913792))

(assert (= (or b!913781 b!913792) bm!40480))

(assert (= (or b!913780 bm!40480) bm!40479))

(assert (= (or b!913780 b!913781) bm!40477))

(assert (= (or b!913791 bm!40479) bm!40476))

(assert (= (or b!913791 bm!40477) bm!40481))

(assert (= (and d!112435 res!616410) b!913775))

(assert (= (and d!112435 c!95864) b!913794))

(assert (= (and d!112435 (not c!95864)) b!913785))

(assert (= (and d!112435 res!616414) b!913776))

(assert (= (and b!913776 res!616412) b!913784))

(assert (= (and b!913776 (not res!616418)) b!913779))

(assert (= (and b!913779 res!616411) b!913783))

(assert (= (and b!913776 res!616417) b!913793))

(assert (= (and b!913793 c!95862) b!913790))

(assert (= (and b!913793 (not c!95862)) b!913782))

(assert (= (and b!913790 res!616416) b!913788))

(assert (= (or b!913790 b!913782) bm!40482))

(assert (= (and b!913793 res!616413) b!913786))

(assert (= (and b!913786 c!95859) b!913777))

(assert (= (and b!913786 (not c!95859)) b!913778))

(assert (= (and b!913777 res!616415) b!913774))

(assert (= (or b!913777 b!913778) bm!40478))

(declare-fun b_lambda!13377 () Bool)

(assert (=> (not b_lambda!13377) (not b!913783)))

(assert (=> b!913783 t!26051))

(declare-fun b_and!27355 () Bool)

(assert (= b_and!27349 (and (=> t!26051 result!10711) b_and!27355)))

(assert (=> b!913775 m!848283))

(assert (=> b!913775 m!848283))

(declare-fun m!848367 () Bool)

(assert (=> b!913775 m!848367))

(assert (=> b!913783 m!848283))

(declare-fun m!848369 () Bool)

(assert (=> b!913783 m!848369))

(assert (=> b!913783 m!848289))

(assert (=> b!913783 m!848291))

(assert (=> b!913783 m!848283))

(assert (=> b!913783 m!848289))

(assert (=> b!913783 m!848291))

(assert (=> b!913783 m!848293))

(assert (=> b!913779 m!848283))

(assert (=> b!913779 m!848283))

(declare-fun m!848371 () Bool)

(assert (=> b!913779 m!848371))

(declare-fun m!848373 () Bool)

(assert (=> bm!40481 m!848373))

(declare-fun m!848375 () Bool)

(assert (=> b!913794 m!848375))

(declare-fun m!848377 () Bool)

(assert (=> b!913794 m!848377))

(declare-fun m!848379 () Bool)

(assert (=> b!913794 m!848379))

(declare-fun m!848381 () Bool)

(assert (=> b!913794 m!848381))

(assert (=> b!913794 m!848283))

(assert (=> b!913794 m!848377))

(declare-fun m!848383 () Bool)

(assert (=> b!913794 m!848383))

(declare-fun m!848385 () Bool)

(assert (=> b!913794 m!848385))

(declare-fun m!848387 () Bool)

(assert (=> b!913794 m!848387))

(declare-fun m!848389 () Bool)

(assert (=> b!913794 m!848389))

(declare-fun m!848391 () Bool)

(assert (=> b!913794 m!848391))

(assert (=> b!913794 m!848383))

(declare-fun m!848393 () Bool)

(assert (=> b!913794 m!848393))

(declare-fun m!848395 () Bool)

(assert (=> b!913794 m!848395))

(declare-fun m!848397 () Bool)

(assert (=> b!913794 m!848397))

(assert (=> b!913794 m!848381))

(declare-fun m!848399 () Bool)

(assert (=> b!913794 m!848399))

(declare-fun m!848401 () Bool)

(assert (=> b!913794 m!848401))

(declare-fun m!848403 () Bool)

(assert (=> b!913794 m!848403))

(declare-fun m!848405 () Bool)

(assert (=> b!913794 m!848405))

(assert (=> b!913794 m!848389))

(declare-fun m!848407 () Bool)

(assert (=> b!913774 m!848407))

(declare-fun m!848409 () Bool)

(assert (=> bm!40478 m!848409))

(declare-fun m!848411 () Bool)

(assert (=> bm!40482 m!848411))

(assert (=> d!112435 m!848295))

(declare-fun m!848413 () Bool)

(assert (=> b!913788 m!848413))

(declare-fun m!848415 () Bool)

(assert (=> b!913791 m!848415))

(assert (=> b!913784 m!848283))

(assert (=> b!913784 m!848283))

(assert (=> b!913784 m!848367))

(assert (=> bm!40476 m!848375))

(assert (=> b!913645 d!112435))

(declare-fun d!112437 () Bool)

(assert (=> d!112437 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78344 d!112437))

(declare-fun d!112439 () Bool)

(assert (=> d!112439 (= (array_inv!20378 _values!1152) (bvsge (size!26566 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78344 d!112439))

(declare-fun d!112441 () Bool)

(assert (=> d!112441 (= (array_inv!20379 _keys!1386) (bvsge (size!26567 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78344 d!112441))

(declare-fun d!112443 () Bool)

(declare-fun e!512624 () Bool)

(assert (=> d!112443 e!512624))

(declare-fun res!616419 () Bool)

(assert (=> d!112443 (=> res!616419 e!512624)))

(declare-fun lt!411160 () Bool)

(assert (=> d!112443 (= res!616419 (not lt!411160))))

(declare-fun lt!411162 () Bool)

(assert (=> d!112443 (= lt!411160 lt!411162)))

(declare-fun lt!411161 () Unit!30903)

(declare-fun e!512623 () Unit!30903)

(assert (=> d!112443 (= lt!411161 e!512623)))

(declare-fun c!95865 () Bool)

(assert (=> d!112443 (= c!95865 lt!411162)))

(assert (=> d!112443 (= lt!411162 (containsKey!444 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112443 (= (contains!4689 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!411160)))

(declare-fun b!913795 () Bool)

(declare-fun lt!411163 () Unit!30903)

(assert (=> b!913795 (= e!512623 lt!411163)))

(assert (=> b!913795 (= lt!411163 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> b!913795 (isDefined!349 (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!913796 () Bool)

(declare-fun Unit!30909 () Unit!30903)

(assert (=> b!913796 (= e!512623 Unit!30909)))

(declare-fun b!913797 () Bool)

(assert (=> b!913797 (= e!512624 (isDefined!349 (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112443 c!95865) b!913795))

(assert (= (and d!112443 (not c!95865)) b!913796))

(assert (= (and d!112443 (not res!616419)) b!913797))

(declare-fun m!848417 () Bool)

(assert (=> d!112443 m!848417))

(declare-fun m!848419 () Bool)

(assert (=> b!913795 m!848419))

(declare-fun m!848421 () Bool)

(assert (=> b!913795 m!848421))

(assert (=> b!913795 m!848421))

(declare-fun m!848423 () Bool)

(assert (=> b!913795 m!848423))

(assert (=> b!913797 m!848421))

(assert (=> b!913797 m!848421))

(assert (=> b!913797 m!848423))

(assert (=> b!913652 d!112443))

(declare-fun b!913798 () Bool)

(declare-fun e!512631 () Bool)

(declare-fun lt!411166 () ListLongMap!11319)

(assert (=> b!913798 (= e!512631 (= (apply!531 lt!411166 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!913799 () Bool)

(declare-fun e!512634 () Bool)

(assert (=> b!913799 (= e!512634 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun call!40492 () ListLongMap!11319)

(declare-fun bm!40483 () Bool)

(assert (=> bm!40483 (= call!40492 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!913800 () Bool)

(declare-fun res!616427 () Bool)

(declare-fun e!512628 () Bool)

(assert (=> b!913800 (=> (not res!616427) (not e!512628))))

(declare-fun e!512636 () Bool)

(assert (=> b!913800 (= res!616427 e!512636)))

(declare-fun res!616428 () Bool)

(assert (=> b!913800 (=> res!616428 e!512636)))

(declare-fun e!512632 () Bool)

(assert (=> b!913800 (= res!616428 (not e!512632))))

(declare-fun res!616422 () Bool)

(assert (=> b!913800 (=> (not res!616422) (not e!512632))))

(assert (=> b!913800 (= res!616422 (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(declare-fun b!913801 () Bool)

(declare-fun e!512637 () Bool)

(assert (=> b!913801 (= e!512637 e!512631)))

(declare-fun res!616425 () Bool)

(declare-fun call!40487 () Bool)

(assert (=> b!913801 (= res!616425 call!40487)))

(assert (=> b!913801 (=> (not res!616425) (not e!512631))))

(declare-fun bm!40484 () Bool)

(declare-fun call!40491 () ListLongMap!11319)

(declare-fun call!40486 () ListLongMap!11319)

(assert (=> bm!40484 (= call!40491 call!40486)))

(declare-fun b!913802 () Bool)

(assert (=> b!913802 (= e!512637 (not call!40487))))

(declare-fun b!913803 () Bool)

(declare-fun e!512635 () Bool)

(assert (=> b!913803 (= e!512636 e!512635)))

(declare-fun res!616421 () Bool)

(assert (=> b!913803 (=> (not res!616421) (not e!512635))))

(assert (=> b!913803 (= res!616421 (contains!4689 lt!411166 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913803 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(declare-fun b!913804 () Bool)

(declare-fun e!512629 () ListLongMap!11319)

(assert (=> b!913804 (= e!512629 call!40491)))

(declare-fun b!913805 () Bool)

(declare-fun e!512633 () ListLongMap!11319)

(assert (=> b!913805 (= e!512633 call!40491)))

(declare-fun b!913806 () Bool)

(declare-fun e!512626 () Bool)

(declare-fun call!40488 () Bool)

(assert (=> b!913806 (= e!512626 (not call!40488))))

(declare-fun bm!40486 () Bool)

(declare-fun call!40490 () ListLongMap!11319)

(assert (=> bm!40486 (= call!40490 call!40492)))

(declare-fun bm!40487 () Bool)

(declare-fun call!40489 () ListLongMap!11319)

(assert (=> bm!40487 (= call!40489 call!40490)))

(declare-fun b!913807 () Bool)

(assert (=> b!913807 (= e!512635 (= (apply!531 lt!411166 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) (get!13716 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913807 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26566 _values!1152)))))

(assert (=> b!913807 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(declare-fun b!913808 () Bool)

(assert (=> b!913808 (= e!512632 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun c!95870 () Bool)

(declare-fun c!95867 () Bool)

(declare-fun bm!40488 () Bool)

(assert (=> bm!40488 (= call!40486 (+!2564 (ite c!95870 call!40492 (ite c!95867 call!40490 call!40489)) (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun bm!40489 () Bool)

(assert (=> bm!40489 (= call!40488 (contains!4689 lt!411166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913809 () Bool)

(declare-fun e!512627 () Unit!30903)

(declare-fun Unit!30910 () Unit!30903)

(assert (=> b!913809 (= e!512627 Unit!30910)))

(declare-fun b!913810 () Bool)

(assert (=> b!913810 (= e!512628 e!512637)))

(declare-fun c!95866 () Bool)

(assert (=> b!913810 (= c!95866 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913811 () Bool)

(declare-fun c!95868 () Bool)

(assert (=> b!913811 (= c!95868 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!913811 (= e!512629 e!512633)))

(declare-fun b!913812 () Bool)

(declare-fun e!512625 () Bool)

(assert (=> b!913812 (= e!512625 (= (apply!531 lt!411166 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!913813 () Bool)

(declare-fun e!512630 () ListLongMap!11319)

(assert (=> b!913813 (= e!512630 e!512629)))

(assert (=> b!913813 (= c!95867 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913814 () Bool)

(assert (=> b!913814 (= e!512626 e!512625)))

(declare-fun res!616426 () Bool)

(assert (=> b!913814 (= res!616426 call!40488)))

(assert (=> b!913814 (=> (not res!616426) (not e!512625))))

(declare-fun d!112445 () Bool)

(assert (=> d!112445 e!512628))

(declare-fun res!616424 () Bool)

(assert (=> d!112445 (=> (not res!616424) (not e!512628))))

(assert (=> d!112445 (= res!616424 (or (bvsge #b00000000000000000000000000000000 (size!26567 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))))

(declare-fun lt!411175 () ListLongMap!11319)

(assert (=> d!112445 (= lt!411166 lt!411175)))

(declare-fun lt!411183 () Unit!30903)

(assert (=> d!112445 (= lt!411183 e!512627)))

(declare-fun c!95871 () Bool)

(assert (=> d!112445 (= c!95871 e!512634)))

(declare-fun res!616420 () Bool)

(assert (=> d!112445 (=> (not res!616420) (not e!512634))))

(assert (=> d!112445 (= res!616420 (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (=> d!112445 (= lt!411175 e!512630)))

(assert (=> d!112445 (= c!95870 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112445 (validMask!0 mask!1756)))

(assert (=> d!112445 (= (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!411166)))

(declare-fun bm!40485 () Bool)

(assert (=> bm!40485 (= call!40487 (contains!4689 lt!411166 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913815 () Bool)

(assert (=> b!913815 (= e!512630 (+!2564 call!40486 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!913816 () Bool)

(assert (=> b!913816 (= e!512633 call!40489)))

(declare-fun b!913817 () Bool)

(declare-fun res!616423 () Bool)

(assert (=> b!913817 (=> (not res!616423) (not e!512628))))

(assert (=> b!913817 (= res!616423 e!512626)))

(declare-fun c!95869 () Bool)

(assert (=> b!913817 (= c!95869 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!913818 () Bool)

(declare-fun lt!411178 () Unit!30903)

(assert (=> b!913818 (= e!512627 lt!411178)))

(declare-fun lt!411172 () ListLongMap!11319)

(assert (=> b!913818 (= lt!411172 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411179 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411179 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411184 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411184 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411181 () Unit!30903)

(assert (=> b!913818 (= lt!411181 (addStillContains!350 lt!411172 lt!411179 zeroValue!1094 lt!411184))))

(assert (=> b!913818 (contains!4689 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094)) lt!411184)))

(declare-fun lt!411171 () Unit!30903)

(assert (=> b!913818 (= lt!411171 lt!411181)))

(declare-fun lt!411176 () ListLongMap!11319)

(assert (=> b!913818 (= lt!411176 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411173 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411173 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411168 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411168 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411174 () Unit!30903)

(assert (=> b!913818 (= lt!411174 (addApplyDifferent!350 lt!411176 lt!411173 minValue!1094 lt!411168))))

(assert (=> b!913818 (= (apply!531 (+!2564 lt!411176 (tuple2!12609 lt!411173 minValue!1094)) lt!411168) (apply!531 lt!411176 lt!411168))))

(declare-fun lt!411169 () Unit!30903)

(assert (=> b!913818 (= lt!411169 lt!411174)))

(declare-fun lt!411177 () ListLongMap!11319)

(assert (=> b!913818 (= lt!411177 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411167 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411167 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411185 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411185 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!411165 () Unit!30903)

(assert (=> b!913818 (= lt!411165 (addApplyDifferent!350 lt!411177 lt!411167 zeroValue!1094 lt!411185))))

(assert (=> b!913818 (= (apply!531 (+!2564 lt!411177 (tuple2!12609 lt!411167 zeroValue!1094)) lt!411185) (apply!531 lt!411177 lt!411185))))

(declare-fun lt!411164 () Unit!30903)

(assert (=> b!913818 (= lt!411164 lt!411165)))

(declare-fun lt!411170 () ListLongMap!11319)

(assert (=> b!913818 (= lt!411170 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!411182 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411182 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!411180 () (_ BitVec 64))

(assert (=> b!913818 (= lt!411180 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!913818 (= lt!411178 (addApplyDifferent!350 lt!411170 lt!411182 minValue!1094 lt!411180))))

(assert (=> b!913818 (= (apply!531 (+!2564 lt!411170 (tuple2!12609 lt!411182 minValue!1094)) lt!411180) (apply!531 lt!411170 lt!411180))))

(assert (= (and d!112445 c!95870) b!913815))

(assert (= (and d!112445 (not c!95870)) b!913813))

(assert (= (and b!913813 c!95867) b!913804))

(assert (= (and b!913813 (not c!95867)) b!913811))

(assert (= (and b!913811 c!95868) b!913805))

(assert (= (and b!913811 (not c!95868)) b!913816))

(assert (= (or b!913805 b!913816) bm!40487))

(assert (= (or b!913804 bm!40487) bm!40486))

(assert (= (or b!913804 b!913805) bm!40484))

(assert (= (or b!913815 bm!40486) bm!40483))

(assert (= (or b!913815 bm!40484) bm!40488))

(assert (= (and d!112445 res!616420) b!913799))

(assert (= (and d!112445 c!95871) b!913818))

(assert (= (and d!112445 (not c!95871)) b!913809))

(assert (= (and d!112445 res!616424) b!913800))

(assert (= (and b!913800 res!616422) b!913808))

(assert (= (and b!913800 (not res!616428)) b!913803))

(assert (= (and b!913803 res!616421) b!913807))

(assert (= (and b!913800 res!616427) b!913817))

(assert (= (and b!913817 c!95869) b!913814))

(assert (= (and b!913817 (not c!95869)) b!913806))

(assert (= (and b!913814 res!616426) b!913812))

(assert (= (or b!913814 b!913806) bm!40489))

(assert (= (and b!913817 res!616423) b!913810))

(assert (= (and b!913810 c!95866) b!913801))

(assert (= (and b!913810 (not c!95866)) b!913802))

(assert (= (and b!913801 res!616425) b!913798))

(assert (= (or b!913801 b!913802) bm!40485))

(declare-fun b_lambda!13379 () Bool)

(assert (=> (not b_lambda!13379) (not b!913807)))

(assert (=> b!913807 t!26051))

(declare-fun b_and!27357 () Bool)

(assert (= b_and!27355 (and (=> t!26051 result!10711) b_and!27357)))

(assert (=> b!913799 m!848337))

(assert (=> b!913799 m!848337))

(assert (=> b!913799 m!848351))

(assert (=> b!913807 m!848337))

(declare-fun m!848425 () Bool)

(assert (=> b!913807 m!848425))

(declare-fun m!848427 () Bool)

(assert (=> b!913807 m!848427))

(assert (=> b!913807 m!848291))

(assert (=> b!913807 m!848337))

(assert (=> b!913807 m!848427))

(assert (=> b!913807 m!848291))

(declare-fun m!848429 () Bool)

(assert (=> b!913807 m!848429))

(assert (=> b!913803 m!848337))

(assert (=> b!913803 m!848337))

(declare-fun m!848431 () Bool)

(assert (=> b!913803 m!848431))

(declare-fun m!848433 () Bool)

(assert (=> bm!40488 m!848433))

(declare-fun m!848435 () Bool)

(assert (=> b!913818 m!848435))

(declare-fun m!848437 () Bool)

(assert (=> b!913818 m!848437))

(declare-fun m!848439 () Bool)

(assert (=> b!913818 m!848439))

(declare-fun m!848441 () Bool)

(assert (=> b!913818 m!848441))

(assert (=> b!913818 m!848337))

(assert (=> b!913818 m!848437))

(declare-fun m!848443 () Bool)

(assert (=> b!913818 m!848443))

(declare-fun m!848445 () Bool)

(assert (=> b!913818 m!848445))

(declare-fun m!848447 () Bool)

(assert (=> b!913818 m!848447))

(declare-fun m!848449 () Bool)

(assert (=> b!913818 m!848449))

(declare-fun m!848451 () Bool)

(assert (=> b!913818 m!848451))

(assert (=> b!913818 m!848443))

(declare-fun m!848453 () Bool)

(assert (=> b!913818 m!848453))

(declare-fun m!848455 () Bool)

(assert (=> b!913818 m!848455))

(declare-fun m!848457 () Bool)

(assert (=> b!913818 m!848457))

(assert (=> b!913818 m!848441))

(declare-fun m!848459 () Bool)

(assert (=> b!913818 m!848459))

(declare-fun m!848461 () Bool)

(assert (=> b!913818 m!848461))

(declare-fun m!848463 () Bool)

(assert (=> b!913818 m!848463))

(declare-fun m!848465 () Bool)

(assert (=> b!913818 m!848465))

(assert (=> b!913818 m!848449))

(declare-fun m!848467 () Bool)

(assert (=> b!913798 m!848467))

(declare-fun m!848469 () Bool)

(assert (=> bm!40485 m!848469))

(declare-fun m!848471 () Bool)

(assert (=> bm!40489 m!848471))

(assert (=> d!112445 m!848295))

(declare-fun m!848473 () Bool)

(assert (=> b!913812 m!848473))

(declare-fun m!848475 () Bool)

(assert (=> b!913815 m!848475))

(assert (=> b!913808 m!848337))

(assert (=> b!913808 m!848337))

(assert (=> b!913808 m!848351))

(assert (=> bm!40483 m!848435))

(assert (=> b!913652 d!112445))

(declare-fun b!913829 () Bool)

(declare-fun e!512649 () Bool)

(declare-fun e!512648 () Bool)

(assert (=> b!913829 (= e!512649 e!512648)))

(declare-fun c!95874 () Bool)

(assert (=> b!913829 (= c!95874 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913830 () Bool)

(declare-fun e!512646 () Bool)

(declare-fun contains!4691 (List!18447 (_ BitVec 64)) Bool)

(assert (=> b!913830 (= e!512646 (contains!4691 Nil!18444 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913831 () Bool)

(declare-fun call!40495 () Bool)

(assert (=> b!913831 (= e!512648 call!40495)))

(declare-fun d!112447 () Bool)

(declare-fun res!616437 () Bool)

(declare-fun e!512647 () Bool)

(assert (=> d!112447 (=> res!616437 e!512647)))

(assert (=> d!112447 (= res!616437 (bvsge #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (=> d!112447 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18444) e!512647)))

(declare-fun b!913832 () Bool)

(assert (=> b!913832 (= e!512647 e!512649)))

(declare-fun res!616435 () Bool)

(assert (=> b!913832 (=> (not res!616435) (not e!512649))))

(assert (=> b!913832 (= res!616435 (not e!512646))))

(declare-fun res!616436 () Bool)

(assert (=> b!913832 (=> (not res!616436) (not e!512646))))

(assert (=> b!913832 (= res!616436 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913833 () Bool)

(assert (=> b!913833 (= e!512648 call!40495)))

(declare-fun bm!40492 () Bool)

(assert (=> bm!40492 (= call!40495 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95874 (Cons!18443 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) Nil!18444) Nil!18444)))))

(assert (= (and d!112447 (not res!616437)) b!913832))

(assert (= (and b!913832 res!616436) b!913830))

(assert (= (and b!913832 res!616435) b!913829))

(assert (= (and b!913829 c!95874) b!913833))

(assert (= (and b!913829 (not c!95874)) b!913831))

(assert (= (or b!913833 b!913831) bm!40492))

(assert (=> b!913829 m!848337))

(assert (=> b!913829 m!848337))

(assert (=> b!913829 m!848351))

(assert (=> b!913830 m!848337))

(assert (=> b!913830 m!848337))

(declare-fun m!848477 () Bool)

(assert (=> b!913830 m!848477))

(assert (=> b!913832 m!848337))

(assert (=> b!913832 m!848337))

(assert (=> b!913832 m!848351))

(assert (=> bm!40492 m!848337))

(declare-fun m!848479 () Bool)

(assert (=> bm!40492 m!848479))

(assert (=> b!913643 d!112447))

(declare-fun b!913841 () Bool)

(declare-fun e!512654 () Bool)

(assert (=> b!913841 (= e!512654 tp_is_empty!19155)))

(declare-fun mapIsEmpty!30473 () Bool)

(declare-fun mapRes!30473 () Bool)

(assert (=> mapIsEmpty!30473 mapRes!30473))

(declare-fun b!913840 () Bool)

(declare-fun e!512655 () Bool)

(assert (=> b!913840 (= e!512655 tp_is_empty!19155)))

(declare-fun condMapEmpty!30473 () Bool)

(declare-fun mapDefault!30473 () ValueCell!9096)

(assert (=> mapNonEmpty!30467 (= condMapEmpty!30473 (= mapRest!30467 ((as const (Array (_ BitVec 32) ValueCell!9096)) mapDefault!30473)))))

(assert (=> mapNonEmpty!30467 (= tp!58496 (and e!512654 mapRes!30473))))

(declare-fun mapNonEmpty!30473 () Bool)

(declare-fun tp!58505 () Bool)

(assert (=> mapNonEmpty!30473 (= mapRes!30473 (and tp!58505 e!512655))))

(declare-fun mapKey!30473 () (_ BitVec 32))

(declare-fun mapValue!30473 () ValueCell!9096)

(declare-fun mapRest!30473 () (Array (_ BitVec 32) ValueCell!9096))

(assert (=> mapNonEmpty!30473 (= mapRest!30467 (store mapRest!30473 mapKey!30473 mapValue!30473))))

(assert (= (and mapNonEmpty!30467 condMapEmpty!30473) mapIsEmpty!30473))

(assert (= (and mapNonEmpty!30467 (not condMapEmpty!30473)) mapNonEmpty!30473))

(assert (= (and mapNonEmpty!30473 ((_ is ValueCellFull!9096) mapValue!30473)) b!913840))

(assert (= (and mapNonEmpty!30467 ((_ is ValueCellFull!9096) mapDefault!30473)) b!913841))

(declare-fun m!848481 () Bool)

(assert (=> mapNonEmpty!30473 m!848481))

(declare-fun b_lambda!13381 () Bool)

(assert (= b_lambda!13379 (or (and start!78344 b_free!16737) b_lambda!13381)))

(declare-fun b_lambda!13383 () Bool)

(assert (= b_lambda!13377 (or (and start!78344 b_free!16737) b_lambda!13383)))

(check-sat (not bm!40478) (not b!913709) (not d!112433) (not b!913832) (not b!913729) (not b!913710) (not b!913808) (not b!913784) (not b!913783) (not b!913779) (not b!913703) (not bm!40489) (not b!913722) (not d!112423) tp_is_empty!19155 (not bm!40476) (not bm!40485) (not bm!40461) (not b!913818) (not b!913794) (not b!913829) (not b!913830) (not b!913774) (not b!913797) (not bm!40488) (not b!913795) (not b!913791) (not mapNonEmpty!30473) (not bm!40492) (not b!913803) (not bm!40481) b_and!27357 (not b_next!16737) (not d!112445) (not b!913812) (not b!913788) (not b!913799) (not b!913731) (not d!112435) (not d!112425) (not d!112443) (not b!913798) (not b!913775) (not b!913815) (not b!913807) (not b_lambda!13381) (not b_lambda!13375) (not b!913719) (not bm!40482) (not b!913698) (not b_lambda!13383) (not bm!40483))
(check-sat b_and!27357 (not b_next!16737))
(get-model)

(declare-fun d!112449 () Bool)

(declare-fun e!512658 () Bool)

(assert (=> d!112449 e!512658))

(declare-fun c!95877 () Bool)

(assert (=> d!112449 (= c!95877 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!112449 true))

(declare-fun _$15!98 () Unit!30903)

(assert (=> d!112449 (= (choose!1543 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) _$15!98)))

(declare-fun b!913846 () Bool)

(assert (=> b!913846 (= e!512658 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!913847 () Bool)

(assert (=> b!913847 (= e!512658 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112449 c!95877) b!913846))

(assert (= (and d!112449 (not c!95877)) b!913847))

(assert (=> b!913846 m!848269))

(assert (=> d!112423 d!112449))

(assert (=> d!112423 d!112437))

(declare-fun d!112451 () Bool)

(assert (=> d!112451 (= (apply!531 lt!411140 (select (arr!26107 _keys!1386) i!717)) (get!13718 (getValueByKey!479 (toList!5675 lt!411140) (select (arr!26107 _keys!1386) i!717))))))

(declare-fun bs!25704 () Bool)

(assert (= bs!25704 d!112451))

(assert (=> bs!25704 m!848283))

(declare-fun m!848483 () Bool)

(assert (=> bs!25704 m!848483))

(assert (=> bs!25704 m!848483))

(declare-fun m!848485 () Bool)

(assert (=> bs!25704 m!848485))

(assert (=> b!913783 d!112451))

(assert (=> b!913783 d!112427))

(declare-fun b!913848 () Bool)

(declare-fun e!512662 () Bool)

(declare-fun e!512661 () Bool)

(assert (=> b!913848 (= e!512662 e!512661)))

(declare-fun c!95878 () Bool)

(assert (=> b!913848 (= c!95878 (validKeyInArray!0 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913849 () Bool)

(declare-fun e!512659 () Bool)

(assert (=> b!913849 (= e!512659 (contains!4691 (ite c!95874 (Cons!18443 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) Nil!18444) Nil!18444) (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913850 () Bool)

(declare-fun call!40496 () Bool)

(assert (=> b!913850 (= e!512661 call!40496)))

(declare-fun d!112453 () Bool)

(declare-fun res!616440 () Bool)

(declare-fun e!512660 () Bool)

(assert (=> d!112453 (=> res!616440 e!512660)))

(assert (=> d!112453 (= res!616440 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26567 _keys!1386)))))

(assert (=> d!112453 (= (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95874 (Cons!18443 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) Nil!18444) Nil!18444)) e!512660)))

(declare-fun b!913851 () Bool)

(assert (=> b!913851 (= e!512660 e!512662)))

(declare-fun res!616438 () Bool)

(assert (=> b!913851 (=> (not res!616438) (not e!512662))))

(assert (=> b!913851 (= res!616438 (not e!512659))))

(declare-fun res!616439 () Bool)

(assert (=> b!913851 (=> (not res!616439) (not e!512659))))

(assert (=> b!913851 (= res!616439 (validKeyInArray!0 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913852 () Bool)

(assert (=> b!913852 (= e!512661 call!40496)))

(declare-fun bm!40493 () Bool)

(assert (=> bm!40493 (= call!40496 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!95878 (Cons!18443 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!95874 (Cons!18443 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) Nil!18444) Nil!18444)) (ite c!95874 (Cons!18443 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) Nil!18444) Nil!18444))))))

(assert (= (and d!112453 (not res!616440)) b!913851))

(assert (= (and b!913851 res!616439) b!913849))

(assert (= (and b!913851 res!616438) b!913848))

(assert (= (and b!913848 c!95878) b!913852))

(assert (= (and b!913848 (not c!95878)) b!913850))

(assert (= (or b!913852 b!913850) bm!40493))

(declare-fun m!848487 () Bool)

(assert (=> b!913848 m!848487))

(assert (=> b!913848 m!848487))

(declare-fun m!848489 () Bool)

(assert (=> b!913848 m!848489))

(assert (=> b!913849 m!848487))

(assert (=> b!913849 m!848487))

(declare-fun m!848491 () Bool)

(assert (=> b!913849 m!848491))

(assert (=> b!913851 m!848487))

(assert (=> b!913851 m!848487))

(assert (=> b!913851 m!848489))

(assert (=> bm!40493 m!848487))

(declare-fun m!848493 () Bool)

(assert (=> bm!40493 m!848493))

(assert (=> bm!40492 d!112453))

(declare-fun d!112455 () Bool)

(declare-fun e!512664 () Bool)

(assert (=> d!112455 e!512664))

(declare-fun res!616441 () Bool)

(assert (=> d!112455 (=> res!616441 e!512664)))

(declare-fun lt!411186 () Bool)

(assert (=> d!112455 (= res!616441 (not lt!411186))))

(declare-fun lt!411188 () Bool)

(assert (=> d!112455 (= lt!411186 lt!411188)))

(declare-fun lt!411187 () Unit!30903)

(declare-fun e!512663 () Unit!30903)

(assert (=> d!112455 (= lt!411187 e!512663)))

(declare-fun c!95879 () Bool)

(assert (=> d!112455 (= c!95879 lt!411188)))

(assert (=> d!112455 (= lt!411188 (containsKey!444 (toList!5675 lt!411166) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> d!112455 (= (contains!4689 lt!411166 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) lt!411186)))

(declare-fun b!913853 () Bool)

(declare-fun lt!411189 () Unit!30903)

(assert (=> b!913853 (= e!512663 lt!411189)))

(assert (=> b!913853 (= lt!411189 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411166) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913853 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913854 () Bool)

(declare-fun Unit!30911 () Unit!30903)

(assert (=> b!913854 (= e!512663 Unit!30911)))

(declare-fun b!913855 () Bool)

(assert (=> b!913855 (= e!512664 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))))

(assert (= (and d!112455 c!95879) b!913853))

(assert (= (and d!112455 (not c!95879)) b!913854))

(assert (= (and d!112455 (not res!616441)) b!913855))

(assert (=> d!112455 m!848337))

(declare-fun m!848495 () Bool)

(assert (=> d!112455 m!848495))

(assert (=> b!913853 m!848337))

(declare-fun m!848497 () Bool)

(assert (=> b!913853 m!848497))

(assert (=> b!913853 m!848337))

(declare-fun m!848499 () Bool)

(assert (=> b!913853 m!848499))

(assert (=> b!913853 m!848499))

(declare-fun m!848501 () Bool)

(assert (=> b!913853 m!848501))

(assert (=> b!913855 m!848337))

(assert (=> b!913855 m!848499))

(assert (=> b!913855 m!848499))

(assert (=> b!913855 m!848501))

(assert (=> b!913803 d!112455))

(declare-fun d!112457 () Bool)

(assert (=> d!112457 (= (validKeyInArray!0 (select (arr!26107 _keys!1386) i!717)) (and (not (= (select (arr!26107 _keys!1386) i!717) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!26107 _keys!1386) i!717) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913784 d!112457))

(declare-fun d!112459 () Bool)

(declare-fun e!512666 () Bool)

(assert (=> d!112459 e!512666))

(declare-fun res!616442 () Bool)

(assert (=> d!112459 (=> res!616442 e!512666)))

(declare-fun lt!411190 () Bool)

(assert (=> d!112459 (= res!616442 (not lt!411190))))

(declare-fun lt!411192 () Bool)

(assert (=> d!112459 (= lt!411190 lt!411192)))

(declare-fun lt!411191 () Unit!30903)

(declare-fun e!512665 () Unit!30903)

(assert (=> d!112459 (= lt!411191 e!512665)))

(declare-fun c!95880 () Bool)

(assert (=> d!112459 (= c!95880 lt!411192)))

(assert (=> d!112459 (= lt!411192 (containsKey!444 (toList!5675 lt!411140) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112459 (= (contains!4689 lt!411140 #b1000000000000000000000000000000000000000000000000000000000000000) lt!411190)))

(declare-fun b!913856 () Bool)

(declare-fun lt!411193 () Unit!30903)

(assert (=> b!913856 (= e!512665 lt!411193)))

(assert (=> b!913856 (= lt!411193 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411140) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913856 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913857 () Bool)

(declare-fun Unit!30912 () Unit!30903)

(assert (=> b!913857 (= e!512665 Unit!30912)))

(declare-fun b!913858 () Bool)

(assert (=> b!913858 (= e!512666 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112459 c!95880) b!913856))

(assert (= (and d!112459 (not c!95880)) b!913857))

(assert (= (and d!112459 (not res!616442)) b!913858))

(declare-fun m!848503 () Bool)

(assert (=> d!112459 m!848503))

(declare-fun m!848505 () Bool)

(assert (=> b!913856 m!848505))

(declare-fun m!848507 () Bool)

(assert (=> b!913856 m!848507))

(assert (=> b!913856 m!848507))

(declare-fun m!848509 () Bool)

(assert (=> b!913856 m!848509))

(assert (=> b!913858 m!848507))

(assert (=> b!913858 m!848507))

(assert (=> b!913858 m!848509))

(assert (=> bm!40478 d!112459))

(declare-fun d!112461 () Bool)

(assert (=> d!112461 (= (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) (and (not (= (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913832 d!112461))

(assert (=> d!112445 d!112437))

(declare-fun d!112463 () Bool)

(declare-fun res!616447 () Bool)

(declare-fun e!512671 () Bool)

(assert (=> d!112463 (=> res!616447 e!512671)))

(assert (=> d!112463 (= res!616447 (and ((_ is Cons!18444) (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (= (_1!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(assert (=> d!112463 (= (containsKey!444 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) e!512671)))

(declare-fun b!913863 () Bool)

(declare-fun e!512672 () Bool)

(assert (=> b!913863 (= e!512671 e!512672)))

(declare-fun res!616448 () Bool)

(assert (=> b!913863 (=> (not res!616448) (not e!512672))))

(assert (=> b!913863 (= res!616448 (and (or (not ((_ is Cons!18444) (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) (bvsle (_1!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)) ((_ is Cons!18444) (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (bvslt (_1!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(declare-fun b!913864 () Bool)

(assert (=> b!913864 (= e!512672 (containsKey!444 (t!26053 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) k0!1033))))

(assert (= (and d!112463 (not res!616447)) b!913863))

(assert (= (and b!913863 res!616448) b!913864))

(declare-fun m!848511 () Bool)

(assert (=> b!913864 m!848511))

(assert (=> d!112443 d!112463))

(declare-fun d!112465 () Bool)

(assert (=> d!112465 (= (apply!531 lt!411170 lt!411180) (get!13718 (getValueByKey!479 (toList!5675 lt!411170) lt!411180)))))

(declare-fun bs!25705 () Bool)

(assert (= bs!25705 d!112465))

(declare-fun m!848513 () Bool)

(assert (=> bs!25705 m!848513))

(assert (=> bs!25705 m!848513))

(declare-fun m!848515 () Bool)

(assert (=> bs!25705 m!848515))

(assert (=> b!913818 d!112465))

(declare-fun d!112467 () Bool)

(assert (=> d!112467 (= (apply!531 lt!411177 lt!411185) (get!13718 (getValueByKey!479 (toList!5675 lt!411177) lt!411185)))))

(declare-fun bs!25706 () Bool)

(assert (= bs!25706 d!112467))

(declare-fun m!848517 () Bool)

(assert (=> bs!25706 m!848517))

(assert (=> bs!25706 m!848517))

(declare-fun m!848519 () Bool)

(assert (=> bs!25706 m!848519))

(assert (=> b!913818 d!112467))

(declare-fun d!112469 () Bool)

(declare-fun e!512674 () Bool)

(assert (=> d!112469 e!512674))

(declare-fun res!616449 () Bool)

(assert (=> d!112469 (=> res!616449 e!512674)))

(declare-fun lt!411194 () Bool)

(assert (=> d!112469 (= res!616449 (not lt!411194))))

(declare-fun lt!411196 () Bool)

(assert (=> d!112469 (= lt!411194 lt!411196)))

(declare-fun lt!411195 () Unit!30903)

(declare-fun e!512673 () Unit!30903)

(assert (=> d!112469 (= lt!411195 e!512673)))

(declare-fun c!95881 () Bool)

(assert (=> d!112469 (= c!95881 lt!411196)))

(assert (=> d!112469 (= lt!411196 (containsKey!444 (toList!5675 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094))) lt!411184))))

(assert (=> d!112469 (= (contains!4689 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094)) lt!411184) lt!411194)))

(declare-fun b!913865 () Bool)

(declare-fun lt!411197 () Unit!30903)

(assert (=> b!913865 (= e!512673 lt!411197)))

(assert (=> b!913865 (= lt!411197 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094))) lt!411184))))

(assert (=> b!913865 (isDefined!349 (getValueByKey!479 (toList!5675 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094))) lt!411184))))

(declare-fun b!913866 () Bool)

(declare-fun Unit!30913 () Unit!30903)

(assert (=> b!913866 (= e!512673 Unit!30913)))

(declare-fun b!913867 () Bool)

(assert (=> b!913867 (= e!512674 (isDefined!349 (getValueByKey!479 (toList!5675 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094))) lt!411184)))))

(assert (= (and d!112469 c!95881) b!913865))

(assert (= (and d!112469 (not c!95881)) b!913866))

(assert (= (and d!112469 (not res!616449)) b!913867))

(declare-fun m!848521 () Bool)

(assert (=> d!112469 m!848521))

(declare-fun m!848523 () Bool)

(assert (=> b!913865 m!848523))

(declare-fun m!848525 () Bool)

(assert (=> b!913865 m!848525))

(assert (=> b!913865 m!848525))

(declare-fun m!848527 () Bool)

(assert (=> b!913865 m!848527))

(assert (=> b!913867 m!848525))

(assert (=> b!913867 m!848525))

(assert (=> b!913867 m!848527))

(assert (=> b!913818 d!112469))

(declare-fun d!112471 () Bool)

(declare-fun e!512677 () Bool)

(assert (=> d!112471 e!512677))

(declare-fun res!616455 () Bool)

(assert (=> d!112471 (=> (not res!616455) (not e!512677))))

(declare-fun lt!411209 () ListLongMap!11319)

(assert (=> d!112471 (= res!616455 (contains!4689 lt!411209 (_1!6314 (tuple2!12609 lt!411182 minValue!1094))))))

(declare-fun lt!411208 () List!18448)

(assert (=> d!112471 (= lt!411209 (ListLongMap!11320 lt!411208))))

(declare-fun lt!411207 () Unit!30903)

(declare-fun lt!411206 () Unit!30903)

(assert (=> d!112471 (= lt!411207 lt!411206)))

(assert (=> d!112471 (= (getValueByKey!479 lt!411208 (_1!6314 (tuple2!12609 lt!411182 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411182 minValue!1094))))))

(declare-fun lemmaContainsTupThenGetReturnValue!254 (List!18448 (_ BitVec 64) V!30505) Unit!30903)

(assert (=> d!112471 (= lt!411206 (lemmaContainsTupThenGetReturnValue!254 lt!411208 (_1!6314 (tuple2!12609 lt!411182 minValue!1094)) (_2!6314 (tuple2!12609 lt!411182 minValue!1094))))))

(declare-fun insertStrictlySorted!310 (List!18448 (_ BitVec 64) V!30505) List!18448)

(assert (=> d!112471 (= lt!411208 (insertStrictlySorted!310 (toList!5675 lt!411170) (_1!6314 (tuple2!12609 lt!411182 minValue!1094)) (_2!6314 (tuple2!12609 lt!411182 minValue!1094))))))

(assert (=> d!112471 (= (+!2564 lt!411170 (tuple2!12609 lt!411182 minValue!1094)) lt!411209)))

(declare-fun b!913872 () Bool)

(declare-fun res!616454 () Bool)

(assert (=> b!913872 (=> (not res!616454) (not e!512677))))

(assert (=> b!913872 (= res!616454 (= (getValueByKey!479 (toList!5675 lt!411209) (_1!6314 (tuple2!12609 lt!411182 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411182 minValue!1094)))))))

(declare-fun b!913873 () Bool)

(declare-fun contains!4692 (List!18448 tuple2!12608) Bool)

(assert (=> b!913873 (= e!512677 (contains!4692 (toList!5675 lt!411209) (tuple2!12609 lt!411182 minValue!1094)))))

(assert (= (and d!112471 res!616455) b!913872))

(assert (= (and b!913872 res!616454) b!913873))

(declare-fun m!848529 () Bool)

(assert (=> d!112471 m!848529))

(declare-fun m!848531 () Bool)

(assert (=> d!112471 m!848531))

(declare-fun m!848533 () Bool)

(assert (=> d!112471 m!848533))

(declare-fun m!848535 () Bool)

(assert (=> d!112471 m!848535))

(declare-fun m!848537 () Bool)

(assert (=> b!913872 m!848537))

(declare-fun m!848539 () Bool)

(assert (=> b!913873 m!848539))

(assert (=> b!913818 d!112471))

(declare-fun d!112473 () Bool)

(assert (=> d!112473 (contains!4689 (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094)) lt!411184)))

(declare-fun lt!411212 () Unit!30903)

(declare-fun choose!1544 (ListLongMap!11319 (_ BitVec 64) V!30505 (_ BitVec 64)) Unit!30903)

(assert (=> d!112473 (= lt!411212 (choose!1544 lt!411172 lt!411179 zeroValue!1094 lt!411184))))

(assert (=> d!112473 (contains!4689 lt!411172 lt!411184)))

(assert (=> d!112473 (= (addStillContains!350 lt!411172 lt!411179 zeroValue!1094 lt!411184) lt!411212)))

(declare-fun bs!25707 () Bool)

(assert (= bs!25707 d!112473))

(assert (=> bs!25707 m!848437))

(assert (=> bs!25707 m!848437))

(assert (=> bs!25707 m!848439))

(declare-fun m!848541 () Bool)

(assert (=> bs!25707 m!848541))

(declare-fun m!848543 () Bool)

(assert (=> bs!25707 m!848543))

(assert (=> b!913818 d!112473))

(declare-fun d!112475 () Bool)

(declare-fun e!512678 () Bool)

(assert (=> d!112475 e!512678))

(declare-fun res!616457 () Bool)

(assert (=> d!112475 (=> (not res!616457) (not e!512678))))

(declare-fun lt!411216 () ListLongMap!11319)

(assert (=> d!112475 (= res!616457 (contains!4689 lt!411216 (_1!6314 (tuple2!12609 lt!411173 minValue!1094))))))

(declare-fun lt!411215 () List!18448)

(assert (=> d!112475 (= lt!411216 (ListLongMap!11320 lt!411215))))

(declare-fun lt!411214 () Unit!30903)

(declare-fun lt!411213 () Unit!30903)

(assert (=> d!112475 (= lt!411214 lt!411213)))

(assert (=> d!112475 (= (getValueByKey!479 lt!411215 (_1!6314 (tuple2!12609 lt!411173 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411173 minValue!1094))))))

(assert (=> d!112475 (= lt!411213 (lemmaContainsTupThenGetReturnValue!254 lt!411215 (_1!6314 (tuple2!12609 lt!411173 minValue!1094)) (_2!6314 (tuple2!12609 lt!411173 minValue!1094))))))

(assert (=> d!112475 (= lt!411215 (insertStrictlySorted!310 (toList!5675 lt!411176) (_1!6314 (tuple2!12609 lt!411173 minValue!1094)) (_2!6314 (tuple2!12609 lt!411173 minValue!1094))))))

(assert (=> d!112475 (= (+!2564 lt!411176 (tuple2!12609 lt!411173 minValue!1094)) lt!411216)))

(declare-fun b!913875 () Bool)

(declare-fun res!616456 () Bool)

(assert (=> b!913875 (=> (not res!616456) (not e!512678))))

(assert (=> b!913875 (= res!616456 (= (getValueByKey!479 (toList!5675 lt!411216) (_1!6314 (tuple2!12609 lt!411173 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411173 minValue!1094)))))))

(declare-fun b!913876 () Bool)

(assert (=> b!913876 (= e!512678 (contains!4692 (toList!5675 lt!411216) (tuple2!12609 lt!411173 minValue!1094)))))

(assert (= (and d!112475 res!616457) b!913875))

(assert (= (and b!913875 res!616456) b!913876))

(declare-fun m!848545 () Bool)

(assert (=> d!112475 m!848545))

(declare-fun m!848547 () Bool)

(assert (=> d!112475 m!848547))

(declare-fun m!848549 () Bool)

(assert (=> d!112475 m!848549))

(declare-fun m!848551 () Bool)

(assert (=> d!112475 m!848551))

(declare-fun m!848553 () Bool)

(assert (=> b!913875 m!848553))

(declare-fun m!848555 () Bool)

(assert (=> b!913876 m!848555))

(assert (=> b!913818 d!112475))

(declare-fun d!112477 () Bool)

(assert (=> d!112477 (= (apply!531 (+!2564 lt!411177 (tuple2!12609 lt!411167 zeroValue!1094)) lt!411185) (apply!531 lt!411177 lt!411185))))

(declare-fun lt!411219 () Unit!30903)

(declare-fun choose!1545 (ListLongMap!11319 (_ BitVec 64) V!30505 (_ BitVec 64)) Unit!30903)

(assert (=> d!112477 (= lt!411219 (choose!1545 lt!411177 lt!411167 zeroValue!1094 lt!411185))))

(declare-fun e!512681 () Bool)

(assert (=> d!112477 e!512681))

(declare-fun res!616460 () Bool)

(assert (=> d!112477 (=> (not res!616460) (not e!512681))))

(assert (=> d!112477 (= res!616460 (contains!4689 lt!411177 lt!411185))))

(assert (=> d!112477 (= (addApplyDifferent!350 lt!411177 lt!411167 zeroValue!1094 lt!411185) lt!411219)))

(declare-fun b!913880 () Bool)

(assert (=> b!913880 (= e!512681 (not (= lt!411185 lt!411167)))))

(assert (= (and d!112477 res!616460) b!913880))

(assert (=> d!112477 m!848441))

(assert (=> d!112477 m!848459))

(declare-fun m!848557 () Bool)

(assert (=> d!112477 m!848557))

(assert (=> d!112477 m!848441))

(assert (=> d!112477 m!848465))

(declare-fun m!848559 () Bool)

(assert (=> d!112477 m!848559))

(assert (=> b!913818 d!112477))

(declare-fun d!112479 () Bool)

(assert (=> d!112479 (= (apply!531 (+!2564 lt!411170 (tuple2!12609 lt!411182 minValue!1094)) lt!411180) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411170 (tuple2!12609 lt!411182 minValue!1094))) lt!411180)))))

(declare-fun bs!25708 () Bool)

(assert (= bs!25708 d!112479))

(declare-fun m!848561 () Bool)

(assert (=> bs!25708 m!848561))

(assert (=> bs!25708 m!848561))

(declare-fun m!848563 () Bool)

(assert (=> bs!25708 m!848563))

(assert (=> b!913818 d!112479))

(declare-fun d!112481 () Bool)

(declare-fun e!512682 () Bool)

(assert (=> d!112481 e!512682))

(declare-fun res!616462 () Bool)

(assert (=> d!112481 (=> (not res!616462) (not e!512682))))

(declare-fun lt!411223 () ListLongMap!11319)

(assert (=> d!112481 (= res!616462 (contains!4689 lt!411223 (_1!6314 (tuple2!12609 lt!411167 zeroValue!1094))))))

(declare-fun lt!411222 () List!18448)

(assert (=> d!112481 (= lt!411223 (ListLongMap!11320 lt!411222))))

(declare-fun lt!411221 () Unit!30903)

(declare-fun lt!411220 () Unit!30903)

(assert (=> d!112481 (= lt!411221 lt!411220)))

(assert (=> d!112481 (= (getValueByKey!479 lt!411222 (_1!6314 (tuple2!12609 lt!411167 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411167 zeroValue!1094))))))

(assert (=> d!112481 (= lt!411220 (lemmaContainsTupThenGetReturnValue!254 lt!411222 (_1!6314 (tuple2!12609 lt!411167 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411167 zeroValue!1094))))))

(assert (=> d!112481 (= lt!411222 (insertStrictlySorted!310 (toList!5675 lt!411177) (_1!6314 (tuple2!12609 lt!411167 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411167 zeroValue!1094))))))

(assert (=> d!112481 (= (+!2564 lt!411177 (tuple2!12609 lt!411167 zeroValue!1094)) lt!411223)))

(declare-fun b!913881 () Bool)

(declare-fun res!616461 () Bool)

(assert (=> b!913881 (=> (not res!616461) (not e!512682))))

(assert (=> b!913881 (= res!616461 (= (getValueByKey!479 (toList!5675 lt!411223) (_1!6314 (tuple2!12609 lt!411167 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411167 zeroValue!1094)))))))

(declare-fun b!913882 () Bool)

(assert (=> b!913882 (= e!512682 (contains!4692 (toList!5675 lt!411223) (tuple2!12609 lt!411167 zeroValue!1094)))))

(assert (= (and d!112481 res!616462) b!913881))

(assert (= (and b!913881 res!616461) b!913882))

(declare-fun m!848565 () Bool)

(assert (=> d!112481 m!848565))

(declare-fun m!848567 () Bool)

(assert (=> d!112481 m!848567))

(declare-fun m!848569 () Bool)

(assert (=> d!112481 m!848569))

(declare-fun m!848571 () Bool)

(assert (=> d!112481 m!848571))

(declare-fun m!848573 () Bool)

(assert (=> b!913881 m!848573))

(declare-fun m!848575 () Bool)

(assert (=> b!913882 m!848575))

(assert (=> b!913818 d!112481))

(declare-fun d!112483 () Bool)

(assert (=> d!112483 (= (apply!531 lt!411176 lt!411168) (get!13718 (getValueByKey!479 (toList!5675 lt!411176) lt!411168)))))

(declare-fun bs!25709 () Bool)

(assert (= bs!25709 d!112483))

(declare-fun m!848577 () Bool)

(assert (=> bs!25709 m!848577))

(assert (=> bs!25709 m!848577))

(declare-fun m!848579 () Bool)

(assert (=> bs!25709 m!848579))

(assert (=> b!913818 d!112483))

(declare-fun d!112485 () Bool)

(assert (=> d!112485 (= (apply!531 (+!2564 lt!411170 (tuple2!12609 lt!411182 minValue!1094)) lt!411180) (apply!531 lt!411170 lt!411180))))

(declare-fun lt!411224 () Unit!30903)

(assert (=> d!112485 (= lt!411224 (choose!1545 lt!411170 lt!411182 minValue!1094 lt!411180))))

(declare-fun e!512683 () Bool)

(assert (=> d!112485 e!512683))

(declare-fun res!616463 () Bool)

(assert (=> d!112485 (=> (not res!616463) (not e!512683))))

(assert (=> d!112485 (= res!616463 (contains!4689 lt!411170 lt!411180))))

(assert (=> d!112485 (= (addApplyDifferent!350 lt!411170 lt!411182 minValue!1094 lt!411180) lt!411224)))

(declare-fun b!913883 () Bool)

(assert (=> b!913883 (= e!512683 (not (= lt!411180 lt!411182)))))

(assert (= (and d!112485 res!616463) b!913883))

(assert (=> d!112485 m!848449))

(assert (=> d!112485 m!848451))

(declare-fun m!848581 () Bool)

(assert (=> d!112485 m!848581))

(assert (=> d!112485 m!848449))

(assert (=> d!112485 m!848461))

(declare-fun m!848583 () Bool)

(assert (=> d!112485 m!848583))

(assert (=> b!913818 d!112485))

(declare-fun d!112487 () Bool)

(assert (=> d!112487 (= (apply!531 (+!2564 lt!411176 (tuple2!12609 lt!411173 minValue!1094)) lt!411168) (apply!531 lt!411176 lt!411168))))

(declare-fun lt!411225 () Unit!30903)

(assert (=> d!112487 (= lt!411225 (choose!1545 lt!411176 lt!411173 minValue!1094 lt!411168))))

(declare-fun e!512684 () Bool)

(assert (=> d!112487 e!512684))

(declare-fun res!616464 () Bool)

(assert (=> d!112487 (=> (not res!616464) (not e!512684))))

(assert (=> d!112487 (= res!616464 (contains!4689 lt!411176 lt!411168))))

(assert (=> d!112487 (= (addApplyDifferent!350 lt!411176 lt!411173 minValue!1094 lt!411168) lt!411225)))

(declare-fun b!913884 () Bool)

(assert (=> b!913884 (= e!512684 (not (= lt!411168 lt!411173)))))

(assert (= (and d!112487 res!616464) b!913884))

(assert (=> d!112487 m!848443))

(assert (=> d!112487 m!848453))

(declare-fun m!848585 () Bool)

(assert (=> d!112487 m!848585))

(assert (=> d!112487 m!848443))

(assert (=> d!112487 m!848445))

(declare-fun m!848587 () Bool)

(assert (=> d!112487 m!848587))

(assert (=> b!913818 d!112487))

(declare-fun d!112489 () Bool)

(assert (=> d!112489 (= (apply!531 (+!2564 lt!411177 (tuple2!12609 lt!411167 zeroValue!1094)) lt!411185) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411177 (tuple2!12609 lt!411167 zeroValue!1094))) lt!411185)))))

(declare-fun bs!25710 () Bool)

(assert (= bs!25710 d!112489))

(declare-fun m!848589 () Bool)

(assert (=> bs!25710 m!848589))

(assert (=> bs!25710 m!848589))

(declare-fun m!848591 () Bool)

(assert (=> bs!25710 m!848591))

(assert (=> b!913818 d!112489))

(declare-fun b!913909 () Bool)

(declare-fun e!512701 () ListLongMap!11319)

(declare-fun e!512702 () ListLongMap!11319)

(assert (=> b!913909 (= e!512701 e!512702)))

(declare-fun c!95893 () Bool)

(assert (=> b!913909 (= c!95893 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913910 () Bool)

(declare-fun e!512699 () Bool)

(declare-fun e!512703 () Bool)

(assert (=> b!913910 (= e!512699 e!512703)))

(assert (=> b!913910 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(declare-fun res!616474 () Bool)

(declare-fun lt!411240 () ListLongMap!11319)

(assert (=> b!913910 (= res!616474 (contains!4689 lt!411240 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913910 (=> (not res!616474) (not e!512703))))

(declare-fun b!913911 () Bool)

(assert (=> b!913911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (=> b!913911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26566 _values!1152)))))

(assert (=> b!913911 (= e!512703 (= (apply!531 lt!411240 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) (get!13716 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!112491 () Bool)

(declare-fun e!512700 () Bool)

(assert (=> d!112491 e!512700))

(declare-fun res!616473 () Bool)

(assert (=> d!112491 (=> (not res!616473) (not e!512700))))

(assert (=> d!112491 (= res!616473 (not (contains!4689 lt!411240 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!112491 (= lt!411240 e!512701)))

(declare-fun c!95892 () Bool)

(assert (=> d!112491 (= c!95892 (bvsge #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (=> d!112491 (validMask!0 mask!1756)))

(assert (=> d!112491 (= (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!411240)))

(declare-fun b!913912 () Bool)

(declare-fun call!40499 () ListLongMap!11319)

(assert (=> b!913912 (= e!512702 call!40499)))

(declare-fun e!512705 () Bool)

(declare-fun b!913913 () Bool)

(assert (=> b!913913 (= e!512705 (= lt!411240 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1160)))))

(declare-fun b!913914 () Bool)

(assert (=> b!913914 (= e!512701 (ListLongMap!11320 Nil!18445))))

(declare-fun b!913915 () Bool)

(assert (=> b!913915 (= e!512699 e!512705)))

(declare-fun c!95891 () Bool)

(assert (=> b!913915 (= c!95891 (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(declare-fun bm!40496 () Bool)

(assert (=> bm!40496 (= call!40499 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1160))))

(declare-fun b!913916 () Bool)

(declare-fun res!616476 () Bool)

(assert (=> b!913916 (=> (not res!616476) (not e!512700))))

(assert (=> b!913916 (= res!616476 (not (contains!4689 lt!411240 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913917 () Bool)

(declare-fun e!512704 () Bool)

(assert (=> b!913917 (= e!512704 (validKeyInArray!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913917 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!913918 () Bool)

(declare-fun lt!411246 () Unit!30903)

(declare-fun lt!411242 () Unit!30903)

(assert (=> b!913918 (= lt!411246 lt!411242)))

(declare-fun lt!411241 () (_ BitVec 64))

(declare-fun lt!411243 () V!30505)

(declare-fun lt!411245 () ListLongMap!11319)

(declare-fun lt!411244 () (_ BitVec 64))

(assert (=> b!913918 (not (contains!4689 (+!2564 lt!411245 (tuple2!12609 lt!411244 lt!411243)) lt!411241))))

(declare-fun addStillNotContains!221 (ListLongMap!11319 (_ BitVec 64) V!30505 (_ BitVec 64)) Unit!30903)

(assert (=> b!913918 (= lt!411242 (addStillNotContains!221 lt!411245 lt!411244 lt!411243 lt!411241))))

(assert (=> b!913918 (= lt!411241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!913918 (= lt!411243 (get!13716 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!913918 (= lt!411244 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!913918 (= lt!411245 call!40499)))

(assert (=> b!913918 (= e!512702 (+!2564 call!40499 (tuple2!12609 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) (get!13716 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!913919 () Bool)

(declare-fun isEmpty!699 (ListLongMap!11319) Bool)

(assert (=> b!913919 (= e!512705 (isEmpty!699 lt!411240))))

(declare-fun b!913920 () Bool)

(assert (=> b!913920 (= e!512700 e!512699)))

(declare-fun c!95890 () Bool)

(assert (=> b!913920 (= c!95890 e!512704)))

(declare-fun res!616475 () Bool)

(assert (=> b!913920 (=> (not res!616475) (not e!512704))))

(assert (=> b!913920 (= res!616475 (bvslt #b00000000000000000000000000000000 (size!26567 _keys!1386)))))

(assert (= (and d!112491 c!95892) b!913914))

(assert (= (and d!112491 (not c!95892)) b!913909))

(assert (= (and b!913909 c!95893) b!913918))

(assert (= (and b!913909 (not c!95893)) b!913912))

(assert (= (or b!913918 b!913912) bm!40496))

(assert (= (and d!112491 res!616473) b!913916))

(assert (= (and b!913916 res!616476) b!913920))

(assert (= (and b!913920 res!616475) b!913917))

(assert (= (and b!913920 c!95890) b!913910))

(assert (= (and b!913920 (not c!95890)) b!913915))

(assert (= (and b!913910 res!616474) b!913911))

(assert (= (and b!913915 c!95891) b!913913))

(assert (= (and b!913915 (not c!95891)) b!913919))

(declare-fun b_lambda!13385 () Bool)

(assert (=> (not b_lambda!13385) (not b!913911)))

(assert (=> b!913911 t!26051))

(declare-fun b_and!27359 () Bool)

(assert (= b_and!27357 (and (=> t!26051 result!10711) b_and!27359)))

(declare-fun b_lambda!13387 () Bool)

(assert (=> (not b_lambda!13387) (not b!913918)))

(assert (=> b!913918 t!26051))

(declare-fun b_and!27361 () Bool)

(assert (= b_and!27359 (and (=> t!26051 result!10711) b_and!27361)))

(assert (=> b!913909 m!848337))

(assert (=> b!913909 m!848337))

(assert (=> b!913909 m!848351))

(assert (=> b!913911 m!848427))

(assert (=> b!913911 m!848337))

(assert (=> b!913911 m!848337))

(declare-fun m!848593 () Bool)

(assert (=> b!913911 m!848593))

(assert (=> b!913911 m!848427))

(assert (=> b!913911 m!848291))

(assert (=> b!913911 m!848429))

(assert (=> b!913911 m!848291))

(declare-fun m!848595 () Bool)

(assert (=> b!913913 m!848595))

(declare-fun m!848597 () Bool)

(assert (=> b!913916 m!848597))

(declare-fun m!848599 () Bool)

(assert (=> d!112491 m!848599))

(assert (=> d!112491 m!848295))

(assert (=> b!913917 m!848337))

(assert (=> b!913917 m!848337))

(assert (=> b!913917 m!848351))

(declare-fun m!848601 () Bool)

(assert (=> b!913919 m!848601))

(assert (=> b!913910 m!848337))

(assert (=> b!913910 m!848337))

(declare-fun m!848603 () Bool)

(assert (=> b!913910 m!848603))

(assert (=> b!913918 m!848427))

(declare-fun m!848605 () Bool)

(assert (=> b!913918 m!848605))

(assert (=> b!913918 m!848337))

(declare-fun m!848607 () Bool)

(assert (=> b!913918 m!848607))

(assert (=> b!913918 m!848427))

(assert (=> b!913918 m!848291))

(assert (=> b!913918 m!848429))

(assert (=> b!913918 m!848291))

(declare-fun m!848609 () Bool)

(assert (=> b!913918 m!848609))

(declare-fun m!848611 () Bool)

(assert (=> b!913918 m!848611))

(assert (=> b!913918 m!848609))

(assert (=> bm!40496 m!848595))

(assert (=> b!913818 d!112491))

(declare-fun d!112493 () Bool)

(assert (=> d!112493 (= (apply!531 (+!2564 lt!411176 (tuple2!12609 lt!411173 minValue!1094)) lt!411168) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411176 (tuple2!12609 lt!411173 minValue!1094))) lt!411168)))))

(declare-fun bs!25711 () Bool)

(assert (= bs!25711 d!112493))

(declare-fun m!848613 () Bool)

(assert (=> bs!25711 m!848613))

(assert (=> bs!25711 m!848613))

(declare-fun m!848615 () Bool)

(assert (=> bs!25711 m!848615))

(assert (=> b!913818 d!112493))

(declare-fun d!112495 () Bool)

(declare-fun e!512706 () Bool)

(assert (=> d!112495 e!512706))

(declare-fun res!616478 () Bool)

(assert (=> d!112495 (=> (not res!616478) (not e!512706))))

(declare-fun lt!411250 () ListLongMap!11319)

(assert (=> d!112495 (= res!616478 (contains!4689 lt!411250 (_1!6314 (tuple2!12609 lt!411179 zeroValue!1094))))))

(declare-fun lt!411249 () List!18448)

(assert (=> d!112495 (= lt!411250 (ListLongMap!11320 lt!411249))))

(declare-fun lt!411248 () Unit!30903)

(declare-fun lt!411247 () Unit!30903)

(assert (=> d!112495 (= lt!411248 lt!411247)))

(assert (=> d!112495 (= (getValueByKey!479 lt!411249 (_1!6314 (tuple2!12609 lt!411179 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411179 zeroValue!1094))))))

(assert (=> d!112495 (= lt!411247 (lemmaContainsTupThenGetReturnValue!254 lt!411249 (_1!6314 (tuple2!12609 lt!411179 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411179 zeroValue!1094))))))

(assert (=> d!112495 (= lt!411249 (insertStrictlySorted!310 (toList!5675 lt!411172) (_1!6314 (tuple2!12609 lt!411179 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411179 zeroValue!1094))))))

(assert (=> d!112495 (= (+!2564 lt!411172 (tuple2!12609 lt!411179 zeroValue!1094)) lt!411250)))

(declare-fun b!913921 () Bool)

(declare-fun res!616477 () Bool)

(assert (=> b!913921 (=> (not res!616477) (not e!512706))))

(assert (=> b!913921 (= res!616477 (= (getValueByKey!479 (toList!5675 lt!411250) (_1!6314 (tuple2!12609 lt!411179 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411179 zeroValue!1094)))))))

(declare-fun b!913922 () Bool)

(assert (=> b!913922 (= e!512706 (contains!4692 (toList!5675 lt!411250) (tuple2!12609 lt!411179 zeroValue!1094)))))

(assert (= (and d!112495 res!616478) b!913921))

(assert (= (and b!913921 res!616477) b!913922))

(declare-fun m!848617 () Bool)

(assert (=> d!112495 m!848617))

(declare-fun m!848619 () Bool)

(assert (=> d!112495 m!848619))

(declare-fun m!848621 () Bool)

(assert (=> d!112495 m!848621))

(declare-fun m!848623 () Bool)

(assert (=> d!112495 m!848623))

(declare-fun m!848625 () Bool)

(assert (=> b!913921 m!848625))

(declare-fun m!848627 () Bool)

(assert (=> b!913922 m!848627))

(assert (=> b!913818 d!112495))

(assert (=> b!913829 d!112461))

(assert (=> bm!40483 d!112491))

(declare-fun d!112497 () Bool)

(assert (=> d!112497 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411062) k0!1033))))

(declare-fun lt!411253 () Unit!30903)

(declare-fun choose!1546 (List!18448 (_ BitVec 64)) Unit!30903)

(assert (=> d!112497 (= lt!411253 (choose!1546 (toList!5675 lt!411062) k0!1033))))

(declare-fun e!512709 () Bool)

(assert (=> d!112497 e!512709))

(declare-fun res!616481 () Bool)

(assert (=> d!112497 (=> (not res!616481) (not e!512709))))

(declare-fun isStrictlySorted!498 (List!18448) Bool)

(assert (=> d!112497 (= res!616481 (isStrictlySorted!498 (toList!5675 lt!411062)))))

(assert (=> d!112497 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411062) k0!1033) lt!411253)))

(declare-fun b!913925 () Bool)

(assert (=> b!913925 (= e!512709 (containsKey!444 (toList!5675 lt!411062) k0!1033))))

(assert (= (and d!112497 res!616481) b!913925))

(assert (=> d!112497 m!848343))

(assert (=> d!112497 m!848343))

(assert (=> d!112497 m!848365))

(declare-fun m!848629 () Bool)

(assert (=> d!112497 m!848629))

(declare-fun m!848631 () Bool)

(assert (=> d!112497 m!848631))

(assert (=> b!913925 m!848361))

(assert (=> b!913729 d!112497))

(declare-fun d!112499 () Bool)

(declare-fun isEmpty!700 (Option!485) Bool)

(assert (=> d!112499 (= (isDefined!349 (getValueByKey!479 (toList!5675 lt!411062) k0!1033)) (not (isEmpty!700 (getValueByKey!479 (toList!5675 lt!411062) k0!1033))))))

(declare-fun bs!25712 () Bool)

(assert (= bs!25712 d!112499))

(assert (=> bs!25712 m!848343))

(declare-fun m!848633 () Bool)

(assert (=> bs!25712 m!848633))

(assert (=> b!913729 d!112499))

(declare-fun b!913937 () Bool)

(declare-fun e!512715 () Option!485)

(assert (=> b!913937 (= e!512715 None!483)))

(declare-fun b!913936 () Bool)

(assert (=> b!913936 (= e!512715 (getValueByKey!479 (t!26053 (toList!5675 lt!411062)) k0!1033))))

(declare-fun d!112501 () Bool)

(declare-fun c!95898 () Bool)

(assert (=> d!112501 (= c!95898 (and ((_ is Cons!18444) (toList!5675 lt!411062)) (= (_1!6314 (h!19590 (toList!5675 lt!411062))) k0!1033)))))

(declare-fun e!512714 () Option!485)

(assert (=> d!112501 (= (getValueByKey!479 (toList!5675 lt!411062) k0!1033) e!512714)))

(declare-fun b!913935 () Bool)

(assert (=> b!913935 (= e!512714 e!512715)))

(declare-fun c!95899 () Bool)

(assert (=> b!913935 (= c!95899 (and ((_ is Cons!18444) (toList!5675 lt!411062)) (not (= (_1!6314 (h!19590 (toList!5675 lt!411062))) k0!1033))))))

(declare-fun b!913934 () Bool)

(assert (=> b!913934 (= e!512714 (Some!484 (_2!6314 (h!19590 (toList!5675 lt!411062)))))))

(assert (= (and d!112501 c!95898) b!913934))

(assert (= (and d!112501 (not c!95898)) b!913935))

(assert (= (and b!913935 c!95899) b!913936))

(assert (= (and b!913935 (not c!95899)) b!913937))

(declare-fun m!848635 () Bool)

(assert (=> b!913936 m!848635))

(assert (=> b!913729 d!112501))

(declare-fun d!112503 () Bool)

(declare-fun res!616482 () Bool)

(declare-fun e!512716 () Bool)

(assert (=> d!112503 (=> res!616482 e!512716)))

(assert (=> d!112503 (= res!616482 (= (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!1033))))

(assert (=> d!112503 (= (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!512716)))

(declare-fun b!913938 () Bool)

(declare-fun e!512717 () Bool)

(assert (=> b!913938 (= e!512716 e!512717)))

(declare-fun res!616483 () Bool)

(assert (=> b!913938 (=> (not res!616483) (not e!512717))))

(assert (=> b!913938 (= res!616483 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!26567 _keys!1386)))))

(declare-fun b!913939 () Bool)

(assert (=> b!913939 (= e!512717 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!112503 (not res!616482)) b!913938))

(assert (= (and b!913938 res!616483) b!913939))

(assert (=> d!112503 m!848487))

(declare-fun m!848637 () Bool)

(assert (=> b!913939 m!848637))

(assert (=> b!913698 d!112503))

(assert (=> b!913731 d!112499))

(assert (=> b!913731 d!112501))

(declare-fun d!112505 () Bool)

(declare-fun e!512718 () Bool)

(assert (=> d!112505 e!512718))

(declare-fun res!616485 () Bool)

(assert (=> d!112505 (=> (not res!616485) (not e!512718))))

(declare-fun lt!411257 () ListLongMap!11319)

(assert (=> d!112505 (= res!616485 (contains!4689 lt!411257 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun lt!411256 () List!18448)

(assert (=> d!112505 (= lt!411257 (ListLongMap!11320 lt!411256))))

(declare-fun lt!411255 () Unit!30903)

(declare-fun lt!411254 () Unit!30903)

(assert (=> d!112505 (= lt!411255 lt!411254)))

(assert (=> d!112505 (= (getValueByKey!479 lt!411256 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112505 (= lt!411254 (lemmaContainsTupThenGetReturnValue!254 lt!411256 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112505 (= lt!411256 (insertStrictlySorted!310 (toList!5675 call!40486) (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112505 (= (+!2564 call!40486 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) lt!411257)))

(declare-fun b!913940 () Bool)

(declare-fun res!616484 () Bool)

(assert (=> b!913940 (=> (not res!616484) (not e!512718))))

(assert (=> b!913940 (= res!616484 (= (getValueByKey!479 (toList!5675 lt!411257) (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun b!913941 () Bool)

(assert (=> b!913941 (= e!512718 (contains!4692 (toList!5675 lt!411257) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(assert (= (and d!112505 res!616485) b!913940))

(assert (= (and b!913940 res!616484) b!913941))

(declare-fun m!848639 () Bool)

(assert (=> d!112505 m!848639))

(declare-fun m!848641 () Bool)

(assert (=> d!112505 m!848641))

(declare-fun m!848643 () Bool)

(assert (=> d!112505 m!848643))

(declare-fun m!848645 () Bool)

(assert (=> d!112505 m!848645))

(declare-fun m!848647 () Bool)

(assert (=> b!913940 m!848647))

(declare-fun m!848649 () Bool)

(assert (=> b!913941 m!848649))

(assert (=> b!913815 d!112505))

(declare-fun d!112507 () Bool)

(declare-fun lt!411260 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!406 (List!18447) (InoxSet (_ BitVec 64)))

(assert (=> d!112507 (= lt!411260 (select (content!406 Nil!18444) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun e!512724 () Bool)

(assert (=> d!112507 (= lt!411260 e!512724)))

(declare-fun res!616491 () Bool)

(assert (=> d!112507 (=> (not res!616491) (not e!512724))))

(assert (=> d!112507 (= res!616491 ((_ is Cons!18443) Nil!18444))))

(assert (=> d!112507 (= (contains!4691 Nil!18444 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) lt!411260)))

(declare-fun b!913946 () Bool)

(declare-fun e!512723 () Bool)

(assert (=> b!913946 (= e!512724 e!512723)))

(declare-fun res!616490 () Bool)

(assert (=> b!913946 (=> res!616490 e!512723)))

(assert (=> b!913946 (= res!616490 (= (h!19589 Nil!18444) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913947 () Bool)

(assert (=> b!913947 (= e!512723 (contains!4691 (t!26052 Nil!18444) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112507 res!616491) b!913946))

(assert (= (and b!913946 (not res!616490)) b!913947))

(declare-fun m!848651 () Bool)

(assert (=> d!112507 m!848651))

(assert (=> d!112507 m!848337))

(declare-fun m!848653 () Bool)

(assert (=> d!112507 m!848653))

(assert (=> b!913947 m!848337))

(declare-fun m!848655 () Bool)

(assert (=> b!913947 m!848655))

(assert (=> b!913830 d!112507))

(declare-fun d!112509 () Bool)

(declare-fun e!512725 () Bool)

(assert (=> d!112509 e!512725))

(declare-fun res!616493 () Bool)

(assert (=> d!112509 (=> (not res!616493) (not e!512725))))

(declare-fun lt!411264 () ListLongMap!11319)

(assert (=> d!112509 (= res!616493 (contains!4689 lt!411264 (_1!6314 (tuple2!12609 lt!411153 zeroValue!1094))))))

(declare-fun lt!411263 () List!18448)

(assert (=> d!112509 (= lt!411264 (ListLongMap!11320 lt!411263))))

(declare-fun lt!411262 () Unit!30903)

(declare-fun lt!411261 () Unit!30903)

(assert (=> d!112509 (= lt!411262 lt!411261)))

(assert (=> d!112509 (= (getValueByKey!479 lt!411263 (_1!6314 (tuple2!12609 lt!411153 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411153 zeroValue!1094))))))

(assert (=> d!112509 (= lt!411261 (lemmaContainsTupThenGetReturnValue!254 lt!411263 (_1!6314 (tuple2!12609 lt!411153 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411153 zeroValue!1094))))))

(assert (=> d!112509 (= lt!411263 (insertStrictlySorted!310 (toList!5675 lt!411146) (_1!6314 (tuple2!12609 lt!411153 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411153 zeroValue!1094))))))

(assert (=> d!112509 (= (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094)) lt!411264)))

(declare-fun b!913948 () Bool)

(declare-fun res!616492 () Bool)

(assert (=> b!913948 (=> (not res!616492) (not e!512725))))

(assert (=> b!913948 (= res!616492 (= (getValueByKey!479 (toList!5675 lt!411264) (_1!6314 (tuple2!12609 lt!411153 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411153 zeroValue!1094)))))))

(declare-fun b!913949 () Bool)

(assert (=> b!913949 (= e!512725 (contains!4692 (toList!5675 lt!411264) (tuple2!12609 lt!411153 zeroValue!1094)))))

(assert (= (and d!112509 res!616493) b!913948))

(assert (= (and b!913948 res!616492) b!913949))

(declare-fun m!848657 () Bool)

(assert (=> d!112509 m!848657))

(declare-fun m!848659 () Bool)

(assert (=> d!112509 m!848659))

(declare-fun m!848661 () Bool)

(assert (=> d!112509 m!848661))

(declare-fun m!848663 () Bool)

(assert (=> d!112509 m!848663))

(declare-fun m!848665 () Bool)

(assert (=> b!913948 m!848665))

(declare-fun m!848667 () Bool)

(assert (=> b!913949 m!848667))

(assert (=> b!913794 d!112509))

(declare-fun d!112511 () Bool)

(assert (=> d!112511 (= (apply!531 lt!411144 lt!411154) (get!13718 (getValueByKey!479 (toList!5675 lt!411144) lt!411154)))))

(declare-fun bs!25713 () Bool)

(assert (= bs!25713 d!112511))

(declare-fun m!848669 () Bool)

(assert (=> bs!25713 m!848669))

(assert (=> bs!25713 m!848669))

(declare-fun m!848671 () Bool)

(assert (=> bs!25713 m!848671))

(assert (=> b!913794 d!112511))

(declare-fun b!913950 () Bool)

(declare-fun e!512728 () ListLongMap!11319)

(declare-fun e!512729 () ListLongMap!11319)

(assert (=> b!913950 (= e!512728 e!512729)))

(declare-fun c!95903 () Bool)

(assert (=> b!913950 (= c!95903 (validKeyInArray!0 (select (arr!26107 _keys!1386) i!717)))))

(declare-fun b!913951 () Bool)

(declare-fun e!512726 () Bool)

(declare-fun e!512730 () Bool)

(assert (=> b!913951 (= e!512726 e!512730)))

(assert (=> b!913951 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26567 _keys!1386)))))

(declare-fun lt!411265 () ListLongMap!11319)

(declare-fun res!616495 () Bool)

(assert (=> b!913951 (= res!616495 (contains!4689 lt!411265 (select (arr!26107 _keys!1386) i!717)))))

(assert (=> b!913951 (=> (not res!616495) (not e!512730))))

(declare-fun b!913952 () Bool)

(assert (=> b!913952 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26567 _keys!1386)))))

(assert (=> b!913952 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26566 _values!1152)))))

(assert (=> b!913952 (= e!512730 (= (apply!531 lt!411265 (select (arr!26107 _keys!1386) i!717)) (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!112513 () Bool)

(declare-fun e!512727 () Bool)

(assert (=> d!112513 e!512727))

(declare-fun res!616494 () Bool)

(assert (=> d!112513 (=> (not res!616494) (not e!512727))))

(assert (=> d!112513 (= res!616494 (not (contains!4689 lt!411265 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!112513 (= lt!411265 e!512728)))

(declare-fun c!95902 () Bool)

(assert (=> d!112513 (= c!95902 (bvsge i!717 (size!26567 _keys!1386)))))

(assert (=> d!112513 (validMask!0 mask!1756)))

(assert (=> d!112513 (= (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) lt!411265)))

(declare-fun b!913953 () Bool)

(declare-fun call!40500 () ListLongMap!11319)

(assert (=> b!913953 (= e!512729 call!40500)))

(declare-fun b!913954 () Bool)

(declare-fun e!512732 () Bool)

(assert (=> b!913954 (= e!512732 (= lt!411265 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd i!717 #b00000000000000000000000000000001) defaultEntry!1160)))))

(declare-fun b!913955 () Bool)

(assert (=> b!913955 (= e!512728 (ListLongMap!11320 Nil!18445))))

(declare-fun b!913956 () Bool)

(assert (=> b!913956 (= e!512726 e!512732)))

(declare-fun c!95901 () Bool)

(assert (=> b!913956 (= c!95901 (bvslt i!717 (size!26567 _keys!1386)))))

(declare-fun bm!40497 () Bool)

(assert (=> bm!40497 (= call!40500 (getCurrentListMapNoExtraKeys!3312 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 (bvadd i!717 #b00000000000000000000000000000001) defaultEntry!1160))))

(declare-fun b!913957 () Bool)

(declare-fun res!616497 () Bool)

(assert (=> b!913957 (=> (not res!616497) (not e!512727))))

(assert (=> b!913957 (= res!616497 (not (contains!4689 lt!411265 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!913958 () Bool)

(declare-fun e!512731 () Bool)

(assert (=> b!913958 (= e!512731 (validKeyInArray!0 (select (arr!26107 _keys!1386) i!717)))))

(assert (=> b!913958 (bvsge i!717 #b00000000000000000000000000000000)))

(declare-fun b!913959 () Bool)

(declare-fun lt!411271 () Unit!30903)

(declare-fun lt!411267 () Unit!30903)

(assert (=> b!913959 (= lt!411271 lt!411267)))

(declare-fun lt!411268 () V!30505)

(declare-fun lt!411269 () (_ BitVec 64))

(declare-fun lt!411270 () ListLongMap!11319)

(declare-fun lt!411266 () (_ BitVec 64))

(assert (=> b!913959 (not (contains!4689 (+!2564 lt!411270 (tuple2!12609 lt!411269 lt!411268)) lt!411266))))

(assert (=> b!913959 (= lt!411267 (addStillNotContains!221 lt!411270 lt!411269 lt!411268 lt!411266))))

(assert (=> b!913959 (= lt!411266 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!913959 (= lt!411268 (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!913959 (= lt!411269 (select (arr!26107 _keys!1386) i!717))))

(assert (=> b!913959 (= lt!411270 call!40500)))

(assert (=> b!913959 (= e!512729 (+!2564 call!40500 (tuple2!12609 (select (arr!26107 _keys!1386) i!717) (get!13716 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!913960 () Bool)

(assert (=> b!913960 (= e!512732 (isEmpty!699 lt!411265))))

(declare-fun b!913961 () Bool)

(assert (=> b!913961 (= e!512727 e!512726)))

(declare-fun c!95900 () Bool)

(assert (=> b!913961 (= c!95900 e!512731)))

(declare-fun res!616496 () Bool)

(assert (=> b!913961 (=> (not res!616496) (not e!512731))))

(assert (=> b!913961 (= res!616496 (bvslt i!717 (size!26567 _keys!1386)))))

(assert (= (and d!112513 c!95902) b!913955))

(assert (= (and d!112513 (not c!95902)) b!913950))

(assert (= (and b!913950 c!95903) b!913959))

(assert (= (and b!913950 (not c!95903)) b!913953))

(assert (= (or b!913959 b!913953) bm!40497))

(assert (= (and d!112513 res!616494) b!913957))

(assert (= (and b!913957 res!616497) b!913961))

(assert (= (and b!913961 res!616496) b!913958))

(assert (= (and b!913961 c!95900) b!913951))

(assert (= (and b!913961 (not c!95900)) b!913956))

(assert (= (and b!913951 res!616495) b!913952))

(assert (= (and b!913956 c!95901) b!913954))

(assert (= (and b!913956 (not c!95901)) b!913960))

(declare-fun b_lambda!13389 () Bool)

(assert (=> (not b_lambda!13389) (not b!913952)))

(assert (=> b!913952 t!26051))

(declare-fun b_and!27363 () Bool)

(assert (= b_and!27361 (and (=> t!26051 result!10711) b_and!27363)))

(declare-fun b_lambda!13391 () Bool)

(assert (=> (not b_lambda!13391) (not b!913959)))

(assert (=> b!913959 t!26051))

(declare-fun b_and!27365 () Bool)

(assert (= b_and!27363 (and (=> t!26051 result!10711) b_and!27365)))

(assert (=> b!913950 m!848283))

(assert (=> b!913950 m!848283))

(assert (=> b!913950 m!848367))

(assert (=> b!913952 m!848289))

(assert (=> b!913952 m!848283))

(assert (=> b!913952 m!848283))

(declare-fun m!848673 () Bool)

(assert (=> b!913952 m!848673))

(assert (=> b!913952 m!848289))

(assert (=> b!913952 m!848291))

(assert (=> b!913952 m!848293))

(assert (=> b!913952 m!848291))

(declare-fun m!848675 () Bool)

(assert (=> b!913954 m!848675))

(declare-fun m!848677 () Bool)

(assert (=> b!913957 m!848677))

(declare-fun m!848679 () Bool)

(assert (=> d!112513 m!848679))

(assert (=> d!112513 m!848295))

(assert (=> b!913958 m!848283))

(assert (=> b!913958 m!848283))

(assert (=> b!913958 m!848367))

(declare-fun m!848681 () Bool)

(assert (=> b!913960 m!848681))

(assert (=> b!913951 m!848283))

(assert (=> b!913951 m!848283))

(declare-fun m!848683 () Bool)

(assert (=> b!913951 m!848683))

(assert (=> b!913959 m!848289))

(declare-fun m!848685 () Bool)

(assert (=> b!913959 m!848685))

(assert (=> b!913959 m!848283))

(declare-fun m!848687 () Bool)

(assert (=> b!913959 m!848687))

(assert (=> b!913959 m!848289))

(assert (=> b!913959 m!848291))

(assert (=> b!913959 m!848293))

(assert (=> b!913959 m!848291))

(declare-fun m!848689 () Bool)

(assert (=> b!913959 m!848689))

(declare-fun m!848691 () Bool)

(assert (=> b!913959 m!848691))

(assert (=> b!913959 m!848689))

(assert (=> bm!40497 m!848675))

(assert (=> b!913794 d!112513))

(declare-fun d!112515 () Bool)

(assert (=> d!112515 (= (apply!531 (+!2564 lt!411150 (tuple2!12609 lt!411147 minValue!1094)) lt!411142) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411150 (tuple2!12609 lt!411147 minValue!1094))) lt!411142)))))

(declare-fun bs!25714 () Bool)

(assert (= bs!25714 d!112515))

(declare-fun m!848693 () Bool)

(assert (=> bs!25714 m!848693))

(assert (=> bs!25714 m!848693))

(declare-fun m!848695 () Bool)

(assert (=> bs!25714 m!848695))

(assert (=> b!913794 d!112515))

(declare-fun d!112517 () Bool)

(assert (=> d!112517 (= (apply!531 (+!2564 lt!411150 (tuple2!12609 lt!411147 minValue!1094)) lt!411142) (apply!531 lt!411150 lt!411142))))

(declare-fun lt!411272 () Unit!30903)

(assert (=> d!112517 (= lt!411272 (choose!1545 lt!411150 lt!411147 minValue!1094 lt!411142))))

(declare-fun e!512733 () Bool)

(assert (=> d!112517 e!512733))

(declare-fun res!616498 () Bool)

(assert (=> d!112517 (=> (not res!616498) (not e!512733))))

(assert (=> d!112517 (= res!616498 (contains!4689 lt!411150 lt!411142))))

(assert (=> d!112517 (= (addApplyDifferent!350 lt!411150 lt!411147 minValue!1094 lt!411142) lt!411272)))

(declare-fun b!913962 () Bool)

(assert (=> b!913962 (= e!512733 (not (= lt!411142 lt!411147)))))

(assert (= (and d!112517 res!616498) b!913962))

(assert (=> d!112517 m!848383))

(assert (=> d!112517 m!848393))

(declare-fun m!848697 () Bool)

(assert (=> d!112517 m!848697))

(assert (=> d!112517 m!848383))

(assert (=> d!112517 m!848385))

(declare-fun m!848699 () Bool)

(assert (=> d!112517 m!848699))

(assert (=> b!913794 d!112517))

(declare-fun d!112519 () Bool)

(declare-fun e!512734 () Bool)

(assert (=> d!112519 e!512734))

(declare-fun res!616500 () Bool)

(assert (=> d!112519 (=> (not res!616500) (not e!512734))))

(declare-fun lt!411276 () ListLongMap!11319)

(assert (=> d!112519 (= res!616500 (contains!4689 lt!411276 (_1!6314 (tuple2!12609 lt!411156 minValue!1094))))))

(declare-fun lt!411275 () List!18448)

(assert (=> d!112519 (= lt!411276 (ListLongMap!11320 lt!411275))))

(declare-fun lt!411274 () Unit!30903)

(declare-fun lt!411273 () Unit!30903)

(assert (=> d!112519 (= lt!411274 lt!411273)))

(assert (=> d!112519 (= (getValueByKey!479 lt!411275 (_1!6314 (tuple2!12609 lt!411156 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411156 minValue!1094))))))

(assert (=> d!112519 (= lt!411273 (lemmaContainsTupThenGetReturnValue!254 lt!411275 (_1!6314 (tuple2!12609 lt!411156 minValue!1094)) (_2!6314 (tuple2!12609 lt!411156 minValue!1094))))))

(assert (=> d!112519 (= lt!411275 (insertStrictlySorted!310 (toList!5675 lt!411144) (_1!6314 (tuple2!12609 lt!411156 minValue!1094)) (_2!6314 (tuple2!12609 lt!411156 minValue!1094))))))

(assert (=> d!112519 (= (+!2564 lt!411144 (tuple2!12609 lt!411156 minValue!1094)) lt!411276)))

(declare-fun b!913963 () Bool)

(declare-fun res!616499 () Bool)

(assert (=> b!913963 (=> (not res!616499) (not e!512734))))

(assert (=> b!913963 (= res!616499 (= (getValueByKey!479 (toList!5675 lt!411276) (_1!6314 (tuple2!12609 lt!411156 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411156 minValue!1094)))))))

(declare-fun b!913964 () Bool)

(assert (=> b!913964 (= e!512734 (contains!4692 (toList!5675 lt!411276) (tuple2!12609 lt!411156 minValue!1094)))))

(assert (= (and d!112519 res!616500) b!913963))

(assert (= (and b!913963 res!616499) b!913964))

(declare-fun m!848701 () Bool)

(assert (=> d!112519 m!848701))

(declare-fun m!848703 () Bool)

(assert (=> d!112519 m!848703))

(declare-fun m!848705 () Bool)

(assert (=> d!112519 m!848705))

(declare-fun m!848707 () Bool)

(assert (=> d!112519 m!848707))

(declare-fun m!848709 () Bool)

(assert (=> b!913963 m!848709))

(declare-fun m!848711 () Bool)

(assert (=> b!913964 m!848711))

(assert (=> b!913794 d!112519))

(declare-fun d!112521 () Bool)

(assert (=> d!112521 (= (apply!531 (+!2564 lt!411151 (tuple2!12609 lt!411141 zeroValue!1094)) lt!411159) (apply!531 lt!411151 lt!411159))))

(declare-fun lt!411277 () Unit!30903)

(assert (=> d!112521 (= lt!411277 (choose!1545 lt!411151 lt!411141 zeroValue!1094 lt!411159))))

(declare-fun e!512735 () Bool)

(assert (=> d!112521 e!512735))

(declare-fun res!616501 () Bool)

(assert (=> d!112521 (=> (not res!616501) (not e!512735))))

(assert (=> d!112521 (= res!616501 (contains!4689 lt!411151 lt!411159))))

(assert (=> d!112521 (= (addApplyDifferent!350 lt!411151 lt!411141 zeroValue!1094 lt!411159) lt!411277)))

(declare-fun b!913965 () Bool)

(assert (=> b!913965 (= e!512735 (not (= lt!411159 lt!411141)))))

(assert (= (and d!112521 res!616501) b!913965))

(assert (=> d!112521 m!848381))

(assert (=> d!112521 m!848399))

(declare-fun m!848713 () Bool)

(assert (=> d!112521 m!848713))

(assert (=> d!112521 m!848381))

(assert (=> d!112521 m!848405))

(declare-fun m!848715 () Bool)

(assert (=> d!112521 m!848715))

(assert (=> b!913794 d!112521))

(declare-fun d!112523 () Bool)

(assert (=> d!112523 (= (apply!531 (+!2564 lt!411144 (tuple2!12609 lt!411156 minValue!1094)) lt!411154) (apply!531 lt!411144 lt!411154))))

(declare-fun lt!411278 () Unit!30903)

(assert (=> d!112523 (= lt!411278 (choose!1545 lt!411144 lt!411156 minValue!1094 lt!411154))))

(declare-fun e!512736 () Bool)

(assert (=> d!112523 e!512736))

(declare-fun res!616502 () Bool)

(assert (=> d!112523 (=> (not res!616502) (not e!512736))))

(assert (=> d!112523 (= res!616502 (contains!4689 lt!411144 lt!411154))))

(assert (=> d!112523 (= (addApplyDifferent!350 lt!411144 lt!411156 minValue!1094 lt!411154) lt!411278)))

(declare-fun b!913966 () Bool)

(assert (=> b!913966 (= e!512736 (not (= lt!411154 lt!411156)))))

(assert (= (and d!112523 res!616502) b!913966))

(assert (=> d!112523 m!848389))

(assert (=> d!112523 m!848391))

(declare-fun m!848717 () Bool)

(assert (=> d!112523 m!848717))

(assert (=> d!112523 m!848389))

(assert (=> d!112523 m!848401))

(declare-fun m!848719 () Bool)

(assert (=> d!112523 m!848719))

(assert (=> b!913794 d!112523))

(declare-fun d!112525 () Bool)

(assert (=> d!112525 (= (apply!531 lt!411150 lt!411142) (get!13718 (getValueByKey!479 (toList!5675 lt!411150) lt!411142)))))

(declare-fun bs!25715 () Bool)

(assert (= bs!25715 d!112525))

(declare-fun m!848721 () Bool)

(assert (=> bs!25715 m!848721))

(assert (=> bs!25715 m!848721))

(declare-fun m!848723 () Bool)

(assert (=> bs!25715 m!848723))

(assert (=> b!913794 d!112525))

(declare-fun d!112527 () Bool)

(declare-fun e!512738 () Bool)

(assert (=> d!112527 e!512738))

(declare-fun res!616503 () Bool)

(assert (=> d!112527 (=> res!616503 e!512738)))

(declare-fun lt!411279 () Bool)

(assert (=> d!112527 (= res!616503 (not lt!411279))))

(declare-fun lt!411281 () Bool)

(assert (=> d!112527 (= lt!411279 lt!411281)))

(declare-fun lt!411280 () Unit!30903)

(declare-fun e!512737 () Unit!30903)

(assert (=> d!112527 (= lt!411280 e!512737)))

(declare-fun c!95904 () Bool)

(assert (=> d!112527 (= c!95904 lt!411281)))

(assert (=> d!112527 (= lt!411281 (containsKey!444 (toList!5675 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094))) lt!411158))))

(assert (=> d!112527 (= (contains!4689 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094)) lt!411158) lt!411279)))

(declare-fun b!913967 () Bool)

(declare-fun lt!411282 () Unit!30903)

(assert (=> b!913967 (= e!512737 lt!411282)))

(assert (=> b!913967 (= lt!411282 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094))) lt!411158))))

(assert (=> b!913967 (isDefined!349 (getValueByKey!479 (toList!5675 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094))) lt!411158))))

(declare-fun b!913968 () Bool)

(declare-fun Unit!30914 () Unit!30903)

(assert (=> b!913968 (= e!512737 Unit!30914)))

(declare-fun b!913969 () Bool)

(assert (=> b!913969 (= e!512738 (isDefined!349 (getValueByKey!479 (toList!5675 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094))) lt!411158)))))

(assert (= (and d!112527 c!95904) b!913967))

(assert (= (and d!112527 (not c!95904)) b!913968))

(assert (= (and d!112527 (not res!616503)) b!913969))

(declare-fun m!848725 () Bool)

(assert (=> d!112527 m!848725))

(declare-fun m!848727 () Bool)

(assert (=> b!913967 m!848727))

(declare-fun m!848729 () Bool)

(assert (=> b!913967 m!848729))

(assert (=> b!913967 m!848729))

(declare-fun m!848731 () Bool)

(assert (=> b!913967 m!848731))

(assert (=> b!913969 m!848729))

(assert (=> b!913969 m!848729))

(assert (=> b!913969 m!848731))

(assert (=> b!913794 d!112527))

(declare-fun d!112529 () Bool)

(declare-fun e!512739 () Bool)

(assert (=> d!112529 e!512739))

(declare-fun res!616505 () Bool)

(assert (=> d!112529 (=> (not res!616505) (not e!512739))))

(declare-fun lt!411286 () ListLongMap!11319)

(assert (=> d!112529 (= res!616505 (contains!4689 lt!411286 (_1!6314 (tuple2!12609 lt!411141 zeroValue!1094))))))

(declare-fun lt!411285 () List!18448)

(assert (=> d!112529 (= lt!411286 (ListLongMap!11320 lt!411285))))

(declare-fun lt!411284 () Unit!30903)

(declare-fun lt!411283 () Unit!30903)

(assert (=> d!112529 (= lt!411284 lt!411283)))

(assert (=> d!112529 (= (getValueByKey!479 lt!411285 (_1!6314 (tuple2!12609 lt!411141 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411141 zeroValue!1094))))))

(assert (=> d!112529 (= lt!411283 (lemmaContainsTupThenGetReturnValue!254 lt!411285 (_1!6314 (tuple2!12609 lt!411141 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411141 zeroValue!1094))))))

(assert (=> d!112529 (= lt!411285 (insertStrictlySorted!310 (toList!5675 lt!411151) (_1!6314 (tuple2!12609 lt!411141 zeroValue!1094)) (_2!6314 (tuple2!12609 lt!411141 zeroValue!1094))))))

(assert (=> d!112529 (= (+!2564 lt!411151 (tuple2!12609 lt!411141 zeroValue!1094)) lt!411286)))

(declare-fun b!913970 () Bool)

(declare-fun res!616504 () Bool)

(assert (=> b!913970 (=> (not res!616504) (not e!512739))))

(assert (=> b!913970 (= res!616504 (= (getValueByKey!479 (toList!5675 lt!411286) (_1!6314 (tuple2!12609 lt!411141 zeroValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411141 zeroValue!1094)))))))

(declare-fun b!913971 () Bool)

(assert (=> b!913971 (= e!512739 (contains!4692 (toList!5675 lt!411286) (tuple2!12609 lt!411141 zeroValue!1094)))))

(assert (= (and d!112529 res!616505) b!913970))

(assert (= (and b!913970 res!616504) b!913971))

(declare-fun m!848733 () Bool)

(assert (=> d!112529 m!848733))

(declare-fun m!848735 () Bool)

(assert (=> d!112529 m!848735))

(declare-fun m!848737 () Bool)

(assert (=> d!112529 m!848737))

(declare-fun m!848739 () Bool)

(assert (=> d!112529 m!848739))

(declare-fun m!848741 () Bool)

(assert (=> b!913970 m!848741))

(declare-fun m!848743 () Bool)

(assert (=> b!913971 m!848743))

(assert (=> b!913794 d!112529))

(declare-fun d!112531 () Bool)

(assert (=> d!112531 (= (apply!531 (+!2564 lt!411151 (tuple2!12609 lt!411141 zeroValue!1094)) lt!411159) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411151 (tuple2!12609 lt!411141 zeroValue!1094))) lt!411159)))))

(declare-fun bs!25716 () Bool)

(assert (= bs!25716 d!112531))

(declare-fun m!848745 () Bool)

(assert (=> bs!25716 m!848745))

(assert (=> bs!25716 m!848745))

(declare-fun m!848747 () Bool)

(assert (=> bs!25716 m!848747))

(assert (=> b!913794 d!112531))

(declare-fun d!112533 () Bool)

(assert (=> d!112533 (= (apply!531 (+!2564 lt!411144 (tuple2!12609 lt!411156 minValue!1094)) lt!411154) (get!13718 (getValueByKey!479 (toList!5675 (+!2564 lt!411144 (tuple2!12609 lt!411156 minValue!1094))) lt!411154)))))

(declare-fun bs!25717 () Bool)

(assert (= bs!25717 d!112533))

(declare-fun m!848749 () Bool)

(assert (=> bs!25717 m!848749))

(assert (=> bs!25717 m!848749))

(declare-fun m!848751 () Bool)

(assert (=> bs!25717 m!848751))

(assert (=> b!913794 d!112533))

(declare-fun d!112535 () Bool)

(declare-fun e!512740 () Bool)

(assert (=> d!112535 e!512740))

(declare-fun res!616507 () Bool)

(assert (=> d!112535 (=> (not res!616507) (not e!512740))))

(declare-fun lt!411290 () ListLongMap!11319)

(assert (=> d!112535 (= res!616507 (contains!4689 lt!411290 (_1!6314 (tuple2!12609 lt!411147 minValue!1094))))))

(declare-fun lt!411289 () List!18448)

(assert (=> d!112535 (= lt!411290 (ListLongMap!11320 lt!411289))))

(declare-fun lt!411288 () Unit!30903)

(declare-fun lt!411287 () Unit!30903)

(assert (=> d!112535 (= lt!411288 lt!411287)))

(assert (=> d!112535 (= (getValueByKey!479 lt!411289 (_1!6314 (tuple2!12609 lt!411147 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411147 minValue!1094))))))

(assert (=> d!112535 (= lt!411287 (lemmaContainsTupThenGetReturnValue!254 lt!411289 (_1!6314 (tuple2!12609 lt!411147 minValue!1094)) (_2!6314 (tuple2!12609 lt!411147 minValue!1094))))))

(assert (=> d!112535 (= lt!411289 (insertStrictlySorted!310 (toList!5675 lt!411150) (_1!6314 (tuple2!12609 lt!411147 minValue!1094)) (_2!6314 (tuple2!12609 lt!411147 minValue!1094))))))

(assert (=> d!112535 (= (+!2564 lt!411150 (tuple2!12609 lt!411147 minValue!1094)) lt!411290)))

(declare-fun b!913972 () Bool)

(declare-fun res!616506 () Bool)

(assert (=> b!913972 (=> (not res!616506) (not e!512740))))

(assert (=> b!913972 (= res!616506 (= (getValueByKey!479 (toList!5675 lt!411290) (_1!6314 (tuple2!12609 lt!411147 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 lt!411147 minValue!1094)))))))

(declare-fun b!913973 () Bool)

(assert (=> b!913973 (= e!512740 (contains!4692 (toList!5675 lt!411290) (tuple2!12609 lt!411147 minValue!1094)))))

(assert (= (and d!112535 res!616507) b!913972))

(assert (= (and b!913972 res!616506) b!913973))

(declare-fun m!848753 () Bool)

(assert (=> d!112535 m!848753))

(declare-fun m!848755 () Bool)

(assert (=> d!112535 m!848755))

(declare-fun m!848757 () Bool)

(assert (=> d!112535 m!848757))

(declare-fun m!848759 () Bool)

(assert (=> d!112535 m!848759))

(declare-fun m!848761 () Bool)

(assert (=> b!913972 m!848761))

(declare-fun m!848763 () Bool)

(assert (=> b!913973 m!848763))

(assert (=> b!913794 d!112535))

(declare-fun d!112537 () Bool)

(assert (=> d!112537 (contains!4689 (+!2564 lt!411146 (tuple2!12609 lt!411153 zeroValue!1094)) lt!411158)))

(declare-fun lt!411291 () Unit!30903)

(assert (=> d!112537 (= lt!411291 (choose!1544 lt!411146 lt!411153 zeroValue!1094 lt!411158))))

(assert (=> d!112537 (contains!4689 lt!411146 lt!411158)))

(assert (=> d!112537 (= (addStillContains!350 lt!411146 lt!411153 zeroValue!1094 lt!411158) lt!411291)))

(declare-fun bs!25718 () Bool)

(assert (= bs!25718 d!112537))

(assert (=> bs!25718 m!848377))

(assert (=> bs!25718 m!848377))

(assert (=> bs!25718 m!848379))

(declare-fun m!848765 () Bool)

(assert (=> bs!25718 m!848765))

(declare-fun m!848767 () Bool)

(assert (=> bs!25718 m!848767))

(assert (=> b!913794 d!112537))

(declare-fun d!112539 () Bool)

(assert (=> d!112539 (= (apply!531 lt!411151 lt!411159) (get!13718 (getValueByKey!479 (toList!5675 lt!411151) lt!411159)))))

(declare-fun bs!25719 () Bool)

(assert (= bs!25719 d!112539))

(declare-fun m!848769 () Bool)

(assert (=> bs!25719 m!848769))

(assert (=> bs!25719 m!848769))

(declare-fun m!848771 () Bool)

(assert (=> bs!25719 m!848771))

(assert (=> b!913794 d!112539))

(declare-fun d!112541 () Bool)

(assert (=> d!112541 (= (get!13720 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!913710 d!112541))

(declare-fun d!112543 () Bool)

(assert (=> d!112543 (= (apply!531 lt!411166 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13718 (getValueByKey!479 (toList!5675 lt!411166) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25720 () Bool)

(assert (= bs!25720 d!112543))

(declare-fun m!848773 () Bool)

(assert (=> bs!25720 m!848773))

(assert (=> bs!25720 m!848773))

(declare-fun m!848775 () Bool)

(assert (=> bs!25720 m!848775))

(assert (=> b!913812 d!112543))

(declare-fun d!112545 () Bool)

(declare-fun e!512742 () Bool)

(assert (=> d!112545 e!512742))

(declare-fun res!616508 () Bool)

(assert (=> d!112545 (=> res!616508 e!512742)))

(declare-fun lt!411292 () Bool)

(assert (=> d!112545 (= res!616508 (not lt!411292))))

(declare-fun lt!411294 () Bool)

(assert (=> d!112545 (= lt!411292 lt!411294)))

(declare-fun lt!411293 () Unit!30903)

(declare-fun e!512741 () Unit!30903)

(assert (=> d!112545 (= lt!411293 e!512741)))

(declare-fun c!95905 () Bool)

(assert (=> d!112545 (= c!95905 lt!411294)))

(assert (=> d!112545 (= lt!411294 (containsKey!444 (toList!5675 lt!411140) (select (arr!26107 _keys!1386) i!717)))))

(assert (=> d!112545 (= (contains!4689 lt!411140 (select (arr!26107 _keys!1386) i!717)) lt!411292)))

(declare-fun b!913974 () Bool)

(declare-fun lt!411295 () Unit!30903)

(assert (=> b!913974 (= e!512741 lt!411295)))

(assert (=> b!913974 (= lt!411295 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411140) (select (arr!26107 _keys!1386) i!717)))))

(assert (=> b!913974 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) (select (arr!26107 _keys!1386) i!717)))))

(declare-fun b!913975 () Bool)

(declare-fun Unit!30915 () Unit!30903)

(assert (=> b!913975 (= e!512741 Unit!30915)))

(declare-fun b!913976 () Bool)

(assert (=> b!913976 (= e!512742 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) (select (arr!26107 _keys!1386) i!717))))))

(assert (= (and d!112545 c!95905) b!913974))

(assert (= (and d!112545 (not c!95905)) b!913975))

(assert (= (and d!112545 (not res!616508)) b!913976))

(assert (=> d!112545 m!848283))

(declare-fun m!848777 () Bool)

(assert (=> d!112545 m!848777))

(assert (=> b!913974 m!848283))

(declare-fun m!848779 () Bool)

(assert (=> b!913974 m!848779))

(assert (=> b!913974 m!848283))

(assert (=> b!913974 m!848483))

(assert (=> b!913974 m!848483))

(declare-fun m!848781 () Bool)

(assert (=> b!913974 m!848781))

(assert (=> b!913976 m!848283))

(assert (=> b!913976 m!848483))

(assert (=> b!913976 m!848483))

(assert (=> b!913976 m!848781))

(assert (=> b!913779 d!112545))

(assert (=> b!913799 d!112461))

(declare-fun d!112547 () Bool)

(assert (=> d!112547 (= (apply!531 lt!411166 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13718 (getValueByKey!479 (toList!5675 lt!411166) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25721 () Bool)

(assert (= bs!25721 d!112547))

(declare-fun m!848783 () Bool)

(assert (=> bs!25721 m!848783))

(assert (=> bs!25721 m!848783))

(declare-fun m!848785 () Bool)

(assert (=> bs!25721 m!848785))

(assert (=> b!913798 d!112547))

(declare-fun b!913977 () Bool)

(declare-fun e!512745 () Bool)

(declare-fun e!512744 () Bool)

(assert (=> b!913977 (= e!512745 e!512744)))

(declare-fun c!95906 () Bool)

(assert (=> b!913977 (= c!95906 (validKeyInArray!0 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!913979 () Bool)

(declare-fun e!512743 () Bool)

(declare-fun call!40501 () Bool)

(assert (=> b!913979 (= e!512743 call!40501)))

(declare-fun bm!40498 () Bool)

(assert (=> bm!40498 (= call!40501 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!913980 () Bool)

(assert (=> b!913980 (= e!512744 e!512743)))

(declare-fun lt!411298 () (_ BitVec 64))

(assert (=> b!913980 (= lt!411298 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!411296 () Unit!30903)

(assert (=> b!913980 (= lt!411296 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!411298 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!913980 (arrayContainsKey!0 _keys!1386 lt!411298 #b00000000000000000000000000000000)))

(declare-fun lt!411297 () Unit!30903)

(assert (=> b!913980 (= lt!411297 lt!411296)))

(declare-fun res!616509 () Bool)

(assert (=> b!913980 (= res!616509 (= (seekEntryOrOpen!0 (select (arr!26107 _keys!1386) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1386 mask!1756) (Found!8957 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!913980 (=> (not res!616509) (not e!512743))))

(declare-fun d!112549 () Bool)

(declare-fun res!616510 () Bool)

(assert (=> d!112549 (=> res!616510 e!512745)))

(assert (=> d!112549 (= res!616510 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26567 _keys!1386)))))

(assert (=> d!112549 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756) e!512745)))

(declare-fun b!913978 () Bool)

(assert (=> b!913978 (= e!512744 call!40501)))

(assert (= (and d!112549 (not res!616510)) b!913977))

(assert (= (and b!913977 c!95906) b!913980))

(assert (= (and b!913977 (not c!95906)) b!913978))

(assert (= (and b!913980 res!616509) b!913979))

(assert (= (or b!913979 b!913978) bm!40498))

(assert (=> b!913977 m!848487))

(assert (=> b!913977 m!848487))

(assert (=> b!913977 m!848489))

(declare-fun m!848787 () Bool)

(assert (=> bm!40498 m!848787))

(assert (=> b!913980 m!848487))

(declare-fun m!848789 () Bool)

(assert (=> b!913980 m!848789))

(declare-fun m!848791 () Bool)

(assert (=> b!913980 m!848791))

(assert (=> b!913980 m!848487))

(declare-fun m!848793 () Bool)

(assert (=> b!913980 m!848793))

(assert (=> bm!40461 d!112549))

(declare-fun d!112551 () Bool)

(assert (=> d!112551 (= (isDefined!349 (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)) (not (isEmpty!700 (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))))

(declare-fun bs!25722 () Bool)

(assert (= bs!25722 d!112551))

(assert (=> bs!25722 m!848421))

(declare-fun m!848795 () Bool)

(assert (=> bs!25722 m!848795))

(assert (=> b!913797 d!112551))

(declare-fun b!913984 () Bool)

(declare-fun e!512747 () Option!485)

(assert (=> b!913984 (= e!512747 None!483)))

(declare-fun b!913983 () Bool)

(assert (=> b!913983 (= e!512747 (getValueByKey!479 (t!26053 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) k0!1033))))

(declare-fun d!112553 () Bool)

(declare-fun c!95907 () Bool)

(assert (=> d!112553 (= c!95907 (and ((_ is Cons!18444) (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (= (_1!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033)))))

(declare-fun e!512746 () Option!485)

(assert (=> d!112553 (= (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) e!512746)))

(declare-fun b!913982 () Bool)

(assert (=> b!913982 (= e!512746 e!512747)))

(declare-fun c!95908 () Bool)

(assert (=> b!913982 (= c!95908 (and ((_ is Cons!18444) (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))) (not (= (_1!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)))) k0!1033))))))

(declare-fun b!913981 () Bool)

(assert (=> b!913981 (= e!512746 (Some!484 (_2!6314 (h!19590 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))))))

(assert (= (and d!112553 c!95907) b!913981))

(assert (= (and d!112553 (not c!95907)) b!913982))

(assert (= (and b!913982 c!95908) b!913983))

(assert (= (and b!913982 (not c!95908)) b!913984))

(declare-fun m!848797 () Bool)

(assert (=> b!913983 m!848797))

(assert (=> b!913797 d!112553))

(declare-fun d!112555 () Bool)

(declare-fun e!512748 () Bool)

(assert (=> d!112555 e!512748))

(declare-fun res!616512 () Bool)

(assert (=> d!112555 (=> (not res!616512) (not e!512748))))

(declare-fun lt!411302 () ListLongMap!11319)

(assert (=> d!112555 (= res!616512 (contains!4689 lt!411302 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun lt!411301 () List!18448)

(assert (=> d!112555 (= lt!411302 (ListLongMap!11320 lt!411301))))

(declare-fun lt!411300 () Unit!30903)

(declare-fun lt!411299 () Unit!30903)

(assert (=> d!112555 (= lt!411300 lt!411299)))

(assert (=> d!112555 (= (getValueByKey!479 lt!411301 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112555 (= lt!411299 (lemmaContainsTupThenGetReturnValue!254 lt!411301 (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112555 (= lt!411301 (insertStrictlySorted!310 (toList!5675 call!40479) (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (=> d!112555 (= (+!2564 call!40479 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)) lt!411302)))

(declare-fun b!913985 () Bool)

(declare-fun res!616511 () Bool)

(assert (=> b!913985 (=> (not res!616511) (not e!512748))))

(assert (=> b!913985 (= res!616511 (= (getValueByKey!479 (toList!5675 lt!411302) (_1!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (Some!484 (_2!6314 (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun b!913986 () Bool)

(assert (=> b!913986 (= e!512748 (contains!4692 (toList!5675 lt!411302) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(assert (= (and d!112555 res!616512) b!913985))

(assert (= (and b!913985 res!616511) b!913986))

(declare-fun m!848799 () Bool)

(assert (=> d!112555 m!848799))

(declare-fun m!848801 () Bool)

(assert (=> d!112555 m!848801))

(declare-fun m!848803 () Bool)

(assert (=> d!112555 m!848803))

(declare-fun m!848805 () Bool)

(assert (=> d!112555 m!848805))

(declare-fun m!848807 () Bool)

(assert (=> b!913985 m!848807))

(declare-fun m!848809 () Bool)

(assert (=> b!913986 m!848809))

(assert (=> b!913791 d!112555))

(declare-fun d!112557 () Bool)

(assert (=> d!112557 (= (get!13719 (select (arr!26106 _values!1152) i!717) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!12142 (select (arr!26106 _values!1152) i!717)))))

(assert (=> b!913709 d!112557))

(declare-fun d!112559 () Bool)

(assert (=> d!112559 (arrayContainsKey!0 _keys!1386 lt!411081 #b00000000000000000000000000000000)))

(declare-fun lt!411305 () Unit!30903)

(declare-fun choose!13 (array!54318 (_ BitVec 64) (_ BitVec 32)) Unit!30903)

(assert (=> d!112559 (= lt!411305 (choose!13 _keys!1386 lt!411081 #b00000000000000000000000000000000))))

(assert (=> d!112559 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!112559 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!411081 #b00000000000000000000000000000000) lt!411305)))

(declare-fun bs!25723 () Bool)

(assert (= bs!25723 d!112559))

(assert (=> bs!25723 m!848357))

(declare-fun m!848811 () Bool)

(assert (=> bs!25723 m!848811))

(assert (=> b!913722 d!112559))

(declare-fun d!112561 () Bool)

(declare-fun res!616513 () Bool)

(declare-fun e!512749 () Bool)

(assert (=> d!112561 (=> res!616513 e!512749)))

(assert (=> d!112561 (= res!616513 (= (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) lt!411081))))

(assert (=> d!112561 (= (arrayContainsKey!0 _keys!1386 lt!411081 #b00000000000000000000000000000000) e!512749)))

(declare-fun b!913987 () Bool)

(declare-fun e!512750 () Bool)

(assert (=> b!913987 (= e!512749 e!512750)))

(declare-fun res!616514 () Bool)

(assert (=> b!913987 (=> (not res!616514) (not e!512750))))

(assert (=> b!913987 (= res!616514 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26567 _keys!1386)))))

(declare-fun b!913988 () Bool)

(assert (=> b!913988 (= e!512750 (arrayContainsKey!0 _keys!1386 lt!411081 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112561 (not res!616513)) b!913987))

(assert (= (and b!913987 res!616514) b!913988))

(assert (=> d!112561 m!848337))

(declare-fun m!848813 () Bool)

(assert (=> b!913988 m!848813))

(assert (=> b!913722 d!112561))

(declare-fun b!914001 () Bool)

(declare-fun e!512757 () SeekEntryResult!8957)

(assert (=> b!914001 (= e!512757 Undefined!8957)))

(declare-fun b!914003 () Bool)

(declare-fun lt!411314 () SeekEntryResult!8957)

(declare-fun e!512758 () SeekEntryResult!8957)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!54318 (_ BitVec 32)) SeekEntryResult!8957)

(assert (=> b!914003 (= e!512758 (seekKeyOrZeroReturnVacant!0 (x!78148 lt!411314) (index!38200 lt!411314) (index!38200 lt!411314) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756))))

(declare-fun b!914004 () Bool)

(declare-fun c!95916 () Bool)

(declare-fun lt!411312 () (_ BitVec 64))

(assert (=> b!914004 (= c!95916 (= lt!411312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!512759 () SeekEntryResult!8957)

(assert (=> b!914004 (= e!512759 e!512758)))

(declare-fun b!914005 () Bool)

(assert (=> b!914005 (= e!512759 (Found!8957 (index!38200 lt!411314)))))

(declare-fun b!914006 () Bool)

(assert (=> b!914006 (= e!512757 e!512759)))

(assert (=> b!914006 (= lt!411312 (select (arr!26107 _keys!1386) (index!38200 lt!411314)))))

(declare-fun c!95915 () Bool)

(assert (=> b!914006 (= c!95915 (= lt!411312 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!914002 () Bool)

(assert (=> b!914002 (= e!512758 (MissingZero!8957 (index!38200 lt!411314)))))

(declare-fun d!112563 () Bool)

(declare-fun lt!411313 () SeekEntryResult!8957)

(assert (=> d!112563 (and (or ((_ is Undefined!8957) lt!411313) (not ((_ is Found!8957) lt!411313)) (and (bvsge (index!38199 lt!411313) #b00000000000000000000000000000000) (bvslt (index!38199 lt!411313) (size!26567 _keys!1386)))) (or ((_ is Undefined!8957) lt!411313) ((_ is Found!8957) lt!411313) (not ((_ is MissingZero!8957) lt!411313)) (and (bvsge (index!38198 lt!411313) #b00000000000000000000000000000000) (bvslt (index!38198 lt!411313) (size!26567 _keys!1386)))) (or ((_ is Undefined!8957) lt!411313) ((_ is Found!8957) lt!411313) ((_ is MissingZero!8957) lt!411313) (not ((_ is MissingVacant!8957) lt!411313)) (and (bvsge (index!38201 lt!411313) #b00000000000000000000000000000000) (bvslt (index!38201 lt!411313) (size!26567 _keys!1386)))) (or ((_ is Undefined!8957) lt!411313) (ite ((_ is Found!8957) lt!411313) (= (select (arr!26107 _keys!1386) (index!38199 lt!411313)) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8957) lt!411313) (= (select (arr!26107 _keys!1386) (index!38198 lt!411313)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8957) lt!411313) (= (select (arr!26107 _keys!1386) (index!38201 lt!411313)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!112563 (= lt!411313 e!512757)))

(declare-fun c!95917 () Bool)

(assert (=> d!112563 (= c!95917 (and ((_ is Intermediate!8957) lt!411314) (undefined!9769 lt!411314)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!54318 (_ BitVec 32)) SeekEntryResult!8957)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!112563 (= lt!411314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) mask!1756) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756))))

(assert (=> d!112563 (validMask!0 mask!1756)))

(assert (=> d!112563 (= (seekEntryOrOpen!0 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) lt!411313)))

(assert (= (and d!112563 c!95917) b!914001))

(assert (= (and d!112563 (not c!95917)) b!914006))

(assert (= (and b!914006 c!95915) b!914005))

(assert (= (and b!914006 (not c!95915)) b!914004))

(assert (= (and b!914004 c!95916) b!914002))

(assert (= (and b!914004 (not c!95916)) b!914003))

(assert (=> b!914003 m!848337))

(declare-fun m!848815 () Bool)

(assert (=> b!914003 m!848815))

(declare-fun m!848817 () Bool)

(assert (=> b!914006 m!848817))

(declare-fun m!848819 () Bool)

(assert (=> d!112563 m!848819))

(declare-fun m!848821 () Bool)

(assert (=> d!112563 m!848821))

(assert (=> d!112563 m!848337))

(declare-fun m!848823 () Bool)

(assert (=> d!112563 m!848823))

(declare-fun m!848825 () Bool)

(assert (=> d!112563 m!848825))

(assert (=> d!112563 m!848295))

(assert (=> d!112563 m!848823))

(assert (=> d!112563 m!848337))

(declare-fun m!848827 () Bool)

(assert (=> d!112563 m!848827))

(assert (=> b!913722 d!112563))

(declare-fun d!112565 () Bool)

(assert (=> d!112565 (isDefined!349 (getValueByKey!479 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun lt!411315 () Unit!30903)

(assert (=> d!112565 (= lt!411315 (choose!1546 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun e!512760 () Bool)

(assert (=> d!112565 e!512760))

(declare-fun res!616515 () Bool)

(assert (=> d!112565 (=> (not res!616515) (not e!512760))))

(assert (=> d!112565 (= res!616515 (isStrictlySorted!498 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))))

(assert (=> d!112565 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033) lt!411315)))

(declare-fun b!914007 () Bool)

(assert (=> b!914007 (= e!512760 (containsKey!444 (toList!5675 (getCurrentListMap!2905 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (= (and d!112565 res!616515) b!914007))

(assert (=> d!112565 m!848421))

(assert (=> d!112565 m!848421))

(assert (=> d!112565 m!848423))

(declare-fun m!848829 () Bool)

(assert (=> d!112565 m!848829))

(declare-fun m!848831 () Bool)

(assert (=> d!112565 m!848831))

(assert (=> b!914007 m!848417))

(assert (=> b!913795 d!112565))

(assert (=> b!913795 d!112551))

(assert (=> b!913795 d!112553))

(declare-fun d!112567 () Bool)

(assert (=> d!112567 (= (get!13718 (getValueByKey!479 (toList!5675 lt!411062) k0!1033)) (v!12144 (getValueByKey!479 (toList!5675 lt!411062) k0!1033)))))

(assert (=> d!112425 d!112567))

(assert (=> d!112425 d!112501))

(declare-fun d!112569 () Bool)

(assert (=> d!112569 (= (apply!531 lt!411140 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13718 (getValueByKey!479 (toList!5675 lt!411140) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25724 () Bool)

(assert (= bs!25724 d!112569))

(declare-fun m!848833 () Bool)

(assert (=> bs!25724 m!848833))

(assert (=> bs!25724 m!848833))

(declare-fun m!848835 () Bool)

(assert (=> bs!25724 m!848835))

(assert (=> b!913788 d!112569))

(assert (=> b!913719 d!112461))

(assert (=> b!913808 d!112461))

(declare-fun d!112571 () Bool)

(assert (=> d!112571 (= (apply!531 lt!411140 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13718 (getValueByKey!479 (toList!5675 lt!411140) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25725 () Bool)

(assert (= bs!25725 d!112571))

(assert (=> bs!25725 m!848507))

(assert (=> bs!25725 m!848507))

(declare-fun m!848837 () Bool)

(assert (=> bs!25725 m!848837))

(assert (=> b!913774 d!112571))

(declare-fun d!112573 () Bool)

(declare-fun e!512762 () Bool)

(assert (=> d!112573 e!512762))

(declare-fun res!616516 () Bool)

(assert (=> d!112573 (=> res!616516 e!512762)))

(declare-fun lt!411316 () Bool)

(assert (=> d!112573 (= res!616516 (not lt!411316))))

(declare-fun lt!411318 () Bool)

(assert (=> d!112573 (= lt!411316 lt!411318)))

(declare-fun lt!411317 () Unit!30903)

(declare-fun e!512761 () Unit!30903)

(assert (=> d!112573 (= lt!411317 e!512761)))

(declare-fun c!95918 () Bool)

(assert (=> d!112573 (= c!95918 lt!411318)))

(assert (=> d!112573 (= lt!411318 (containsKey!444 (toList!5675 lt!411166) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112573 (= (contains!4689 lt!411166 #b0000000000000000000000000000000000000000000000000000000000000000) lt!411316)))

(declare-fun b!914008 () Bool)

(declare-fun lt!411319 () Unit!30903)

(assert (=> b!914008 (= e!512761 lt!411319)))

(assert (=> b!914008 (= lt!411319 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411166) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914008 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914009 () Bool)

(declare-fun Unit!30916 () Unit!30903)

(assert (=> b!914009 (= e!512761 Unit!30916)))

(declare-fun b!914010 () Bool)

(assert (=> b!914010 (= e!512762 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112573 c!95918) b!914008))

(assert (= (and d!112573 (not c!95918)) b!914009))

(assert (= (and d!112573 (not res!616516)) b!914010))

(declare-fun m!848839 () Bool)

(assert (=> d!112573 m!848839))

(declare-fun m!848841 () Bool)

(assert (=> b!914008 m!848841))

(assert (=> b!914008 m!848773))

(assert (=> b!914008 m!848773))

(declare-fun m!848843 () Bool)

(assert (=> b!914008 m!848843))

(assert (=> b!914010 m!848773))

(assert (=> b!914010 m!848773))

(assert (=> b!914010 m!848843))

(assert (=> bm!40489 d!112573))

(assert (=> bm!40476 d!112513))

(declare-fun d!112575 () Bool)

(declare-fun e!512763 () Bool)

(assert (=> d!112575 e!512763))

(declare-fun res!616518 () Bool)

(assert (=> d!112575 (=> (not res!616518) (not e!512763))))

(declare-fun lt!411323 () ListLongMap!11319)

(assert (=> d!112575 (= res!616518 (contains!4689 lt!411323 (_1!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun lt!411322 () List!18448)

(assert (=> d!112575 (= lt!411323 (ListLongMap!11320 lt!411322))))

(declare-fun lt!411321 () Unit!30903)

(declare-fun lt!411320 () Unit!30903)

(assert (=> d!112575 (= lt!411321 lt!411320)))

(assert (=> d!112575 (= (getValueByKey!479 lt!411322 (_1!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!484 (_2!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112575 (= lt!411320 (lemmaContainsTupThenGetReturnValue!254 lt!411322 (_1!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112575 (= lt!411322 (insertStrictlySorted!310 (toList!5675 (ite c!95870 call!40492 (ite c!95867 call!40490 call!40489))) (_1!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112575 (= (+!2564 (ite c!95870 call!40492 (ite c!95867 call!40490 call!40489)) (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) lt!411323)))

(declare-fun b!914011 () Bool)

(declare-fun res!616517 () Bool)

(assert (=> b!914011 (=> (not res!616517) (not e!512763))))

(assert (=> b!914011 (= res!616517 (= (getValueByKey!479 (toList!5675 lt!411323) (_1!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!484 (_2!6314 (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))))

(declare-fun b!914012 () Bool)

(assert (=> b!914012 (= e!512763 (contains!4692 (toList!5675 lt!411323) (ite (or c!95870 c!95867) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (= (and d!112575 res!616518) b!914011))

(assert (= (and b!914011 res!616517) b!914012))

(declare-fun m!848845 () Bool)

(assert (=> d!112575 m!848845))

(declare-fun m!848847 () Bool)

(assert (=> d!112575 m!848847))

(declare-fun m!848849 () Bool)

(assert (=> d!112575 m!848849))

(declare-fun m!848851 () Bool)

(assert (=> d!112575 m!848851))

(declare-fun m!848853 () Bool)

(assert (=> b!914011 m!848853))

(declare-fun m!848855 () Bool)

(assert (=> b!914012 m!848855))

(assert (=> bm!40488 d!112575))

(assert (=> b!913775 d!112457))

(declare-fun d!112577 () Bool)

(assert (=> d!112577 (= (apply!531 lt!411166 (select (arr!26107 _keys!1386) #b00000000000000000000000000000000)) (get!13718 (getValueByKey!479 (toList!5675 lt!411166) (select (arr!26107 _keys!1386) #b00000000000000000000000000000000))))))

(declare-fun bs!25726 () Bool)

(assert (= bs!25726 d!112577))

(assert (=> bs!25726 m!848337))

(assert (=> bs!25726 m!848499))

(assert (=> bs!25726 m!848499))

(declare-fun m!848857 () Bool)

(assert (=> bs!25726 m!848857))

(assert (=> b!913807 d!112577))

(declare-fun d!112579 () Bool)

(declare-fun c!95919 () Bool)

(assert (=> d!112579 (= c!95919 ((_ is ValueCellFull!9096) (select (arr!26106 _values!1152) #b00000000000000000000000000000000)))))

(declare-fun e!512764 () V!30505)

(assert (=> d!112579 (= (get!13716 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) e!512764)))

(declare-fun b!914013 () Bool)

(assert (=> b!914013 (= e!512764 (get!13719 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!914014 () Bool)

(assert (=> b!914014 (= e!512764 (get!13720 (select (arr!26106 _values!1152) #b00000000000000000000000000000000) (dynLambda!1398 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112579 c!95919) b!914013))

(assert (= (and d!112579 (not c!95919)) b!914014))

(assert (=> b!914013 m!848427))

(assert (=> b!914013 m!848291))

(declare-fun m!848859 () Bool)

(assert (=> b!914013 m!848859))

(assert (=> b!914014 m!848427))

(assert (=> b!914014 m!848291))

(declare-fun m!848861 () Bool)

(assert (=> b!914014 m!848861))

(assert (=> b!913807 d!112579))

(assert (=> b!913703 d!112421))

(declare-fun d!112581 () Bool)

(declare-fun res!616519 () Bool)

(declare-fun e!512765 () Bool)

(assert (=> d!112581 (=> res!616519 e!512765)))

(assert (=> d!112581 (= res!616519 (and ((_ is Cons!18444) (toList!5675 lt!411062)) (= (_1!6314 (h!19590 (toList!5675 lt!411062))) k0!1033)))))

(assert (=> d!112581 (= (containsKey!444 (toList!5675 lt!411062) k0!1033) e!512765)))

(declare-fun b!914015 () Bool)

(declare-fun e!512766 () Bool)

(assert (=> b!914015 (= e!512765 e!512766)))

(declare-fun res!616520 () Bool)

(assert (=> b!914015 (=> (not res!616520) (not e!512766))))

(assert (=> b!914015 (= res!616520 (and (or (not ((_ is Cons!18444) (toList!5675 lt!411062))) (bvsle (_1!6314 (h!19590 (toList!5675 lt!411062))) k0!1033)) ((_ is Cons!18444) (toList!5675 lt!411062)) (bvslt (_1!6314 (h!19590 (toList!5675 lt!411062))) k0!1033)))))

(declare-fun b!914016 () Bool)

(assert (=> b!914016 (= e!512766 (containsKey!444 (t!26053 (toList!5675 lt!411062)) k0!1033))))

(assert (= (and d!112581 (not res!616519)) b!914015))

(assert (= (and b!914015 res!616520) b!914016))

(declare-fun m!848863 () Bool)

(assert (=> b!914016 m!848863))

(assert (=> d!112433 d!112581))

(declare-fun d!112583 () Bool)

(declare-fun e!512767 () Bool)

(assert (=> d!112583 e!512767))

(declare-fun res!616522 () Bool)

(assert (=> d!112583 (=> (not res!616522) (not e!512767))))

(declare-fun lt!411327 () ListLongMap!11319)

(assert (=> d!112583 (= res!616522 (contains!4689 lt!411327 (_1!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(declare-fun lt!411326 () List!18448)

(assert (=> d!112583 (= lt!411327 (ListLongMap!11320 lt!411326))))

(declare-fun lt!411325 () Unit!30903)

(declare-fun lt!411324 () Unit!30903)

(assert (=> d!112583 (= lt!411325 lt!411324)))

(assert (=> d!112583 (= (getValueByKey!479 lt!411326 (_1!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!484 (_2!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112583 (= lt!411324 (lemmaContainsTupThenGetReturnValue!254 lt!411326 (_1!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112583 (= lt!411326 (insertStrictlySorted!310 (toList!5675 (ite c!95863 call!40485 (ite c!95860 call!40483 call!40482))) (_1!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) (_2!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))))

(assert (=> d!112583 (= (+!2564 (ite c!95863 call!40485 (ite c!95860 call!40483 call!40482)) (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))) lt!411327)))

(declare-fun b!914017 () Bool)

(declare-fun res!616521 () Bool)

(assert (=> b!914017 (=> (not res!616521) (not e!512767))))

(assert (=> b!914017 (= res!616521 (= (getValueByKey!479 (toList!5675 lt!411327) (_1!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))) (Some!484 (_2!6314 (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))))

(declare-fun b!914018 () Bool)

(assert (=> b!914018 (= e!512767 (contains!4692 (toList!5675 lt!411327) (ite (or c!95863 c!95860) (tuple2!12609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(assert (= (and d!112583 res!616522) b!914017))

(assert (= (and b!914017 res!616521) b!914018))

(declare-fun m!848865 () Bool)

(assert (=> d!112583 m!848865))

(declare-fun m!848867 () Bool)

(assert (=> d!112583 m!848867))

(declare-fun m!848869 () Bool)

(assert (=> d!112583 m!848869))

(declare-fun m!848871 () Bool)

(assert (=> d!112583 m!848871))

(declare-fun m!848873 () Bool)

(assert (=> b!914017 m!848873))

(declare-fun m!848875 () Bool)

(assert (=> b!914018 m!848875))

(assert (=> bm!40481 d!112583))

(assert (=> d!112435 d!112437))

(declare-fun d!112585 () Bool)

(declare-fun e!512769 () Bool)

(assert (=> d!112585 e!512769))

(declare-fun res!616523 () Bool)

(assert (=> d!112585 (=> res!616523 e!512769)))

(declare-fun lt!411328 () Bool)

(assert (=> d!112585 (= res!616523 (not lt!411328))))

(declare-fun lt!411330 () Bool)

(assert (=> d!112585 (= lt!411328 lt!411330)))

(declare-fun lt!411329 () Unit!30903)

(declare-fun e!512768 () Unit!30903)

(assert (=> d!112585 (= lt!411329 e!512768)))

(declare-fun c!95920 () Bool)

(assert (=> d!112585 (= c!95920 lt!411330)))

(assert (=> d!112585 (= lt!411330 (containsKey!444 (toList!5675 lt!411140) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112585 (= (contains!4689 lt!411140 #b0000000000000000000000000000000000000000000000000000000000000000) lt!411328)))

(declare-fun b!914019 () Bool)

(declare-fun lt!411331 () Unit!30903)

(assert (=> b!914019 (= e!512768 lt!411331)))

(assert (=> b!914019 (= lt!411331 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411140) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914019 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914020 () Bool)

(declare-fun Unit!30917 () Unit!30903)

(assert (=> b!914020 (= e!512768 Unit!30917)))

(declare-fun b!914021 () Bool)

(assert (=> b!914021 (= e!512769 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411140) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112585 c!95920) b!914019))

(assert (= (and d!112585 (not c!95920)) b!914020))

(assert (= (and d!112585 (not res!616523)) b!914021))

(declare-fun m!848877 () Bool)

(assert (=> d!112585 m!848877))

(declare-fun m!848879 () Bool)

(assert (=> b!914019 m!848879))

(assert (=> b!914019 m!848833))

(assert (=> b!914019 m!848833))

(declare-fun m!848881 () Bool)

(assert (=> b!914019 m!848881))

(assert (=> b!914021 m!848833))

(assert (=> b!914021 m!848833))

(assert (=> b!914021 m!848881))

(assert (=> bm!40482 d!112585))

(declare-fun d!112587 () Bool)

(declare-fun e!512771 () Bool)

(assert (=> d!112587 e!512771))

(declare-fun res!616524 () Bool)

(assert (=> d!112587 (=> res!616524 e!512771)))

(declare-fun lt!411332 () Bool)

(assert (=> d!112587 (= res!616524 (not lt!411332))))

(declare-fun lt!411334 () Bool)

(assert (=> d!112587 (= lt!411332 lt!411334)))

(declare-fun lt!411333 () Unit!30903)

(declare-fun e!512770 () Unit!30903)

(assert (=> d!112587 (= lt!411333 e!512770)))

(declare-fun c!95921 () Bool)

(assert (=> d!112587 (= c!95921 lt!411334)))

(assert (=> d!112587 (= lt!411334 (containsKey!444 (toList!5675 lt!411166) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!112587 (= (contains!4689 lt!411166 #b1000000000000000000000000000000000000000000000000000000000000000) lt!411332)))

(declare-fun b!914022 () Bool)

(declare-fun lt!411335 () Unit!30903)

(assert (=> b!914022 (= e!512770 lt!411335)))

(assert (=> b!914022 (= lt!411335 (lemmaContainsKeyImpliesGetValueByKeyDefined!339 (toList!5675 lt!411166) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!914022 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914023 () Bool)

(declare-fun Unit!30918 () Unit!30903)

(assert (=> b!914023 (= e!512770 Unit!30918)))

(declare-fun b!914024 () Bool)

(assert (=> b!914024 (= e!512771 (isDefined!349 (getValueByKey!479 (toList!5675 lt!411166) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112587 c!95921) b!914022))

(assert (= (and d!112587 (not c!95921)) b!914023))

(assert (= (and d!112587 (not res!616524)) b!914024))

(declare-fun m!848883 () Bool)

(assert (=> d!112587 m!848883))

(declare-fun m!848885 () Bool)

(assert (=> b!914022 m!848885))

(assert (=> b!914022 m!848783))

(assert (=> b!914022 m!848783))

(declare-fun m!848887 () Bool)

(assert (=> b!914022 m!848887))

(assert (=> b!914024 m!848783))

(assert (=> b!914024 m!848783))

(assert (=> b!914024 m!848887))

(assert (=> bm!40485 d!112587))

(declare-fun b!914026 () Bool)

(declare-fun e!512772 () Bool)

(assert (=> b!914026 (= e!512772 tp_is_empty!19155)))

(declare-fun mapIsEmpty!30474 () Bool)

(declare-fun mapRes!30474 () Bool)

(assert (=> mapIsEmpty!30474 mapRes!30474))

(declare-fun b!914025 () Bool)

(declare-fun e!512773 () Bool)

(assert (=> b!914025 (= e!512773 tp_is_empty!19155)))

(declare-fun condMapEmpty!30474 () Bool)

(declare-fun mapDefault!30474 () ValueCell!9096)

(assert (=> mapNonEmpty!30473 (= condMapEmpty!30474 (= mapRest!30473 ((as const (Array (_ BitVec 32) ValueCell!9096)) mapDefault!30474)))))

(assert (=> mapNonEmpty!30473 (= tp!58505 (and e!512772 mapRes!30474))))

(declare-fun mapNonEmpty!30474 () Bool)

(declare-fun tp!58506 () Bool)

(assert (=> mapNonEmpty!30474 (= mapRes!30474 (and tp!58506 e!512773))))

(declare-fun mapKey!30474 () (_ BitVec 32))

(declare-fun mapRest!30474 () (Array (_ BitVec 32) ValueCell!9096))

(declare-fun mapValue!30474 () ValueCell!9096)

(assert (=> mapNonEmpty!30474 (= mapRest!30473 (store mapRest!30474 mapKey!30474 mapValue!30474))))

(assert (= (and mapNonEmpty!30473 condMapEmpty!30474) mapIsEmpty!30474))

(assert (= (and mapNonEmpty!30473 (not condMapEmpty!30474)) mapNonEmpty!30474))

(assert (= (and mapNonEmpty!30474 ((_ is ValueCellFull!9096) mapValue!30474)) b!914025))

(assert (= (and mapNonEmpty!30473 ((_ is ValueCellFull!9096) mapDefault!30474)) b!914026))

(declare-fun m!848889 () Bool)

(assert (=> mapNonEmpty!30474 m!848889))

(declare-fun b_lambda!13393 () Bool)

(assert (= b_lambda!13391 (or (and start!78344 b_free!16737) b_lambda!13393)))

(declare-fun b_lambda!13395 () Bool)

(assert (= b_lambda!13389 (or (and start!78344 b_free!16737) b_lambda!13395)))

(declare-fun b_lambda!13397 () Bool)

(assert (= b_lambda!13385 (or (and start!78344 b_free!16737) b_lambda!13397)))

(declare-fun b_lambda!13399 () Bool)

(assert (= b_lambda!13387 (or (and start!78344 b_free!16737) b_lambda!13399)))

(check-sat (not b!914010) (not d!112523) (not b_lambda!13397) (not d!112513) (not b!913969) (not b!913881) (not b!913963) (not b!913851) (not d!112545) (not d!112507) tp_is_empty!19155 b_and!27365 (not d!112531) (not b!913864) (not b!913976) (not d!112537) (not d!112469) (not d!112477) (not b!913858) (not b!913950) (not b!913921) (not b!914022) (not d!112455) (not d!112483) (not d!112479) (not b!913936) (not b!913855) (not d!112573) (not b!913882) (not b!913980) (not d!112485) (not d!112509) (not d!112583) (not d!112473) (not d!112527) (not b!914014) (not b_lambda!13393) (not b!913873) (not b!913910) (not d!112467) (not bm!40496) (not b!913959) (not b!913922) (not b!913983) (not d!112491) (not b!913909) (not d!112511) (not d!112559) (not b!913856) (not b!913876) (not b!913940) (not b_lambda!13399) (not d!112577) (not b!913917) (not b!913911) (not b!913947) (not b!913952) (not b!913849) (not b!913918) (not b!913988) (not d!112563) (not d!112543) (not b_lambda!13395) (not b!913985) (not b!913919) (not d!112551) (not d!112459) (not b_next!16737) (not b!913949) (not d!112535) (not b!913964) (not b!913958) (not b!914021) (not b!913916) (not b!913971) (not d!112495) (not d!112489) (not b!913948) (not b!913913) (not d!112519) (not b!913865) (not b!914024) (not d!112499) (not d!112481) (not b!914016) (not bm!40493) (not d!112575) (not b!913941) (not d!112497) (not d!112517) (not b!913939) (not d!112555) (not b!913867) (not b!913972) (not b!914017) (not b!914018) (not b!913925) (not bm!40497) (not b!914003) (not b!913970) (not b!913951) (not d!112515) (not d!112465) (not d!112521) (not b!914007) (not b!913846) (not b!914008) (not b!913974) (not b!914019) (not d!112569) (not b!913872) (not d!112475) (not b!913973) (not b_lambda!13381) (not b!913848) (not b!914013) (not b_lambda!13375) (not d!112451) (not b!913986) (not b!913967) (not b!914011) (not d!112505) (not d!112493) (not b!913954) (not d!112471) (not d!112585) (not d!112487) (not b!914012) (not d!112525) (not b!913977) (not b!913960) (not d!112533) (not d!112547) (not d!112571) (not b!913875) (not bm!40498) (not d!112529) (not mapNonEmpty!30474) (not d!112587) (not b_lambda!13383) (not d!112539) (not b!913957) (not d!112565) (not b!913853))
(check-sat b_and!27365 (not b_next!16737))
