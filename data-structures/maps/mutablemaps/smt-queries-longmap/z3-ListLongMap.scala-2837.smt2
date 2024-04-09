; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40996 () Bool)

(assert start!40996)

(declare-fun b_free!10923 () Bool)

(declare-fun b_next!10923 () Bool)

(assert (=> start!40996 (= b_free!10923 (not b_next!10923))))

(declare-fun tp!38596 () Bool)

(declare-fun b_and!19083 () Bool)

(assert (=> start!40996 (= tp!38596 b_and!19083)))

(declare-fun b!456202 () Bool)

(declare-fun res!272298 () Bool)

(declare-fun e!266560 () Bool)

(assert (=> b!456202 (=> (not res!272298) (not e!266560))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456202 (= res!272298 (bvsle from!863 i!563))))

(declare-fun b!456203 () Bool)

(declare-fun e!266562 () Bool)

(declare-datatypes ((array!28289 0))(
  ( (array!28290 (arr!13585 (Array (_ BitVec 32) (_ BitVec 64))) (size!13937 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28289)

(assert (=> b!456203 (= e!266562 (not (bvslt from!863 (size!13937 _keys!709))))))

(declare-datatypes ((V!17453 0))(
  ( (V!17454 (val!6175 Int)) )
))
(declare-fun minValue!515 () V!17453)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!206499 () array!28289)

(declare-datatypes ((ValueCell!5787 0))(
  ( (ValueCellFull!5787 (v!8437 V!17453)) (EmptyCell!5787) )
))
(declare-datatypes ((array!28291 0))(
  ( (array!28292 (arr!13586 (Array (_ BitVec 32) ValueCell!5787)) (size!13938 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28291)

(declare-fun zeroValue!515 () V!17453)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!17453)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!206502 () array!28291)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8090 0))(
  ( (tuple2!8091 (_1!4055 (_ BitVec 64)) (_2!4055 V!17453)) )
))
(declare-datatypes ((List!8197 0))(
  ( (Nil!8194) (Cons!8193 (h!9049 tuple2!8090) (t!14033 List!8197)) )
))
(declare-datatypes ((ListLongMap!7017 0))(
  ( (ListLongMap!7018 (toList!3524 List!8197)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1700 (array!28289 array!28291 (_ BitVec 32) (_ BitVec 32) V!17453 V!17453 (_ BitVec 32) Int) ListLongMap!7017)

(declare-fun +!1548 (ListLongMap!7017 tuple2!8090) ListLongMap!7017)

(assert (=> b!456203 (= (getCurrentListMapNoExtraKeys!1700 lt!206499 lt!206502 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1548 (getCurrentListMapNoExtraKeys!1700 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8091 k0!794 v!412)))))

(declare-datatypes ((Unit!13221 0))(
  ( (Unit!13222) )
))
(declare-fun lt!206500 () Unit!13221)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!713 (array!28289 array!28291 (_ BitVec 32) (_ BitVec 32) V!17453 V!17453 (_ BitVec 32) (_ BitVec 64) V!17453 (_ BitVec 32) Int) Unit!13221)

(assert (=> b!456203 (= lt!206500 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!713 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456204 () Bool)

(declare-fun res!272292 () Bool)

(assert (=> b!456204 (=> (not res!272292) (not e!266560))))

(declare-datatypes ((List!8198 0))(
  ( (Nil!8195) (Cons!8194 (h!9050 (_ BitVec 64)) (t!14034 List!8198)) )
))
(declare-fun arrayNoDuplicates!0 (array!28289 (_ BitVec 32) List!8198) Bool)

(assert (=> b!456204 (= res!272292 (arrayNoDuplicates!0 lt!206499 #b00000000000000000000000000000000 Nil!8195))))

(declare-fun res!272295 () Bool)

(declare-fun e!266564 () Bool)

(assert (=> start!40996 (=> (not res!272295) (not e!266564))))

(assert (=> start!40996 (= res!272295 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13937 _keys!709))))))

(assert (=> start!40996 e!266564))

(declare-fun tp_is_empty!12261 () Bool)

(assert (=> start!40996 tp_is_empty!12261))

(assert (=> start!40996 tp!38596))

(assert (=> start!40996 true))

(declare-fun e!266561 () Bool)

(declare-fun array_inv!9830 (array!28291) Bool)

(assert (=> start!40996 (and (array_inv!9830 _values!549) e!266561)))

(declare-fun array_inv!9831 (array!28289) Bool)

(assert (=> start!40996 (array_inv!9831 _keys!709)))

(declare-fun b!456205 () Bool)

(assert (=> b!456205 (= e!266564 e!266560)))

(declare-fun res!272297 () Bool)

(assert (=> b!456205 (=> (not res!272297) (not e!266560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28289 (_ BitVec 32)) Bool)

(assert (=> b!456205 (= res!272297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206499 mask!1025))))

(assert (=> b!456205 (= lt!206499 (array!28290 (store (arr!13585 _keys!709) i!563 k0!794) (size!13937 _keys!709)))))

(declare-fun b!456206 () Bool)

(declare-fun res!272289 () Bool)

(assert (=> b!456206 (=> (not res!272289) (not e!266564))))

(assert (=> b!456206 (= res!272289 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8195))))

(declare-fun b!456207 () Bool)

(assert (=> b!456207 (= e!266560 e!266562)))

(declare-fun res!272300 () Bool)

(assert (=> b!456207 (=> (not res!272300) (not e!266562))))

(assert (=> b!456207 (= res!272300 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206498 () ListLongMap!7017)

(assert (=> b!456207 (= lt!206498 (getCurrentListMapNoExtraKeys!1700 lt!206499 lt!206502 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!456207 (= lt!206502 (array!28292 (store (arr!13586 _values!549) i!563 (ValueCellFull!5787 v!412)) (size!13938 _values!549)))))

(declare-fun lt!206501 () ListLongMap!7017)

(assert (=> b!456207 (= lt!206501 (getCurrentListMapNoExtraKeys!1700 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456208 () Bool)

(declare-fun e!266559 () Bool)

(declare-fun mapRes!20032 () Bool)

(assert (=> b!456208 (= e!266561 (and e!266559 mapRes!20032))))

(declare-fun condMapEmpty!20032 () Bool)

(declare-fun mapDefault!20032 () ValueCell!5787)

(assert (=> b!456208 (= condMapEmpty!20032 (= (arr!13586 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5787)) mapDefault!20032)))))

(declare-fun b!456209 () Bool)

(declare-fun res!272299 () Bool)

(assert (=> b!456209 (=> (not res!272299) (not e!266564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456209 (= res!272299 (validKeyInArray!0 k0!794))))

(declare-fun b!456210 () Bool)

(declare-fun res!272291 () Bool)

(assert (=> b!456210 (=> (not res!272291) (not e!266564))))

(assert (=> b!456210 (= res!272291 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13937 _keys!709))))))

(declare-fun mapIsEmpty!20032 () Bool)

(assert (=> mapIsEmpty!20032 mapRes!20032))

(declare-fun mapNonEmpty!20032 () Bool)

(declare-fun tp!38595 () Bool)

(declare-fun e!266558 () Bool)

(assert (=> mapNonEmpty!20032 (= mapRes!20032 (and tp!38595 e!266558))))

(declare-fun mapValue!20032 () ValueCell!5787)

(declare-fun mapKey!20032 () (_ BitVec 32))

(declare-fun mapRest!20032 () (Array (_ BitVec 32) ValueCell!5787))

(assert (=> mapNonEmpty!20032 (= (arr!13586 _values!549) (store mapRest!20032 mapKey!20032 mapValue!20032))))

(declare-fun b!456211 () Bool)

(declare-fun res!272288 () Bool)

(assert (=> b!456211 (=> (not res!272288) (not e!266564))))

(assert (=> b!456211 (= res!272288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456212 () Bool)

(declare-fun res!272290 () Bool)

(assert (=> b!456212 (=> (not res!272290) (not e!266564))))

(assert (=> b!456212 (= res!272290 (or (= (select (arr!13585 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13585 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456213 () Bool)

(declare-fun res!272296 () Bool)

(assert (=> b!456213 (=> (not res!272296) (not e!266564))))

(assert (=> b!456213 (= res!272296 (and (= (size!13938 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13937 _keys!709) (size!13938 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456214 () Bool)

(assert (=> b!456214 (= e!266559 tp_is_empty!12261)))

(declare-fun b!456215 () Bool)

(declare-fun res!272293 () Bool)

(assert (=> b!456215 (=> (not res!272293) (not e!266564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456215 (= res!272293 (validMask!0 mask!1025))))

(declare-fun b!456216 () Bool)

(assert (=> b!456216 (= e!266558 tp_is_empty!12261)))

(declare-fun b!456217 () Bool)

(declare-fun res!272294 () Bool)

(assert (=> b!456217 (=> (not res!272294) (not e!266564))))

(declare-fun arrayContainsKey!0 (array!28289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456217 (= res!272294 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40996 res!272295) b!456215))

(assert (= (and b!456215 res!272293) b!456213))

(assert (= (and b!456213 res!272296) b!456211))

(assert (= (and b!456211 res!272288) b!456206))

(assert (= (and b!456206 res!272289) b!456210))

(assert (= (and b!456210 res!272291) b!456209))

(assert (= (and b!456209 res!272299) b!456212))

(assert (= (and b!456212 res!272290) b!456217))

(assert (= (and b!456217 res!272294) b!456205))

(assert (= (and b!456205 res!272297) b!456204))

(assert (= (and b!456204 res!272292) b!456202))

(assert (= (and b!456202 res!272298) b!456207))

(assert (= (and b!456207 res!272300) b!456203))

(assert (= (and b!456208 condMapEmpty!20032) mapIsEmpty!20032))

(assert (= (and b!456208 (not condMapEmpty!20032)) mapNonEmpty!20032))

(get-info :version)

(assert (= (and mapNonEmpty!20032 ((_ is ValueCellFull!5787) mapValue!20032)) b!456216))

(assert (= (and b!456208 ((_ is ValueCellFull!5787) mapDefault!20032)) b!456214))

(assert (= start!40996 b!456208))

(declare-fun m!439709 () Bool)

(assert (=> b!456212 m!439709))

(declare-fun m!439711 () Bool)

(assert (=> b!456217 m!439711))

(declare-fun m!439713 () Bool)

(assert (=> b!456205 m!439713))

(declare-fun m!439715 () Bool)

(assert (=> b!456205 m!439715))

(declare-fun m!439717 () Bool)

(assert (=> start!40996 m!439717))

(declare-fun m!439719 () Bool)

(assert (=> start!40996 m!439719))

(declare-fun m!439721 () Bool)

(assert (=> mapNonEmpty!20032 m!439721))

(declare-fun m!439723 () Bool)

(assert (=> b!456204 m!439723))

(declare-fun m!439725 () Bool)

(assert (=> b!456207 m!439725))

(declare-fun m!439727 () Bool)

(assert (=> b!456207 m!439727))

(declare-fun m!439729 () Bool)

(assert (=> b!456207 m!439729))

(declare-fun m!439731 () Bool)

(assert (=> b!456206 m!439731))

(declare-fun m!439733 () Bool)

(assert (=> b!456211 m!439733))

(declare-fun m!439735 () Bool)

(assert (=> b!456215 m!439735))

(declare-fun m!439737 () Bool)

(assert (=> b!456209 m!439737))

(declare-fun m!439739 () Bool)

(assert (=> b!456203 m!439739))

(declare-fun m!439741 () Bool)

(assert (=> b!456203 m!439741))

(assert (=> b!456203 m!439741))

(declare-fun m!439743 () Bool)

(assert (=> b!456203 m!439743))

(declare-fun m!439745 () Bool)

(assert (=> b!456203 m!439745))

(check-sat tp_is_empty!12261 (not b!456205) (not b!456206) (not b!456209) (not b!456217) (not b!456215) (not b_next!10923) (not b!456204) (not mapNonEmpty!20032) b_and!19083 (not b!456207) (not b!456211) (not b!456203) (not start!40996))
(check-sat b_and!19083 (not b_next!10923))
