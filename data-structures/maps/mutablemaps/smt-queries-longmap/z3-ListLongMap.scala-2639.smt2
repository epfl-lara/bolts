; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39662 () Bool)

(assert start!39662)

(declare-fun b_free!9921 () Bool)

(declare-fun b_next!9921 () Bool)

(assert (=> start!39662 (= b_free!9921 (not b_next!9921))))

(declare-fun tp!35291 () Bool)

(declare-fun b_and!17595 () Bool)

(assert (=> start!39662 (= tp!35291 b_and!17595)))

(declare-fun mapNonEmpty!18231 () Bool)

(declare-fun mapRes!18231 () Bool)

(declare-fun tp!35292 () Bool)

(declare-fun e!252494 () Bool)

(assert (=> mapNonEmpty!18231 (= mapRes!18231 (and tp!35292 e!252494))))

(declare-fun mapKey!18231 () (_ BitVec 32))

(declare-datatypes ((V!15869 0))(
  ( (V!15870 (val!5581 Int)) )
))
(declare-datatypes ((ValueCell!5193 0))(
  ( (ValueCellFull!5193 (v!7824 V!15869)) (EmptyCell!5193) )
))
(declare-datatypes ((array!25973 0))(
  ( (array!25974 (arr!12433 (Array (_ BitVec 32) ValueCell!5193)) (size!12785 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25973)

(declare-fun mapRest!18231 () (Array (_ BitVec 32) ValueCell!5193))

(declare-fun mapValue!18231 () ValueCell!5193)

(assert (=> mapNonEmpty!18231 (= (arr!12433 _values!549) (store mapRest!18231 mapKey!18231 mapValue!18231))))

(declare-fun b!425324 () Bool)

(declare-fun e!252495 () Bool)

(declare-fun e!252490 () Bool)

(assert (=> b!425324 (= e!252495 e!252490)))

(declare-fun res!249106 () Bool)

(assert (=> b!425324 (=> (not res!249106) (not e!252490))))

(declare-datatypes ((array!25975 0))(
  ( (array!25976 (arr!12434 (Array (_ BitVec 32) (_ BitVec 64))) (size!12786 (_ BitVec 32))) )
))
(declare-fun lt!194639 () array!25975)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25975 (_ BitVec 32)) Bool)

(assert (=> b!425324 (= res!249106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194639 mask!1025))))

(declare-fun _keys!709 () array!25975)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425324 (= lt!194639 (array!25976 (store (arr!12434 _keys!709) i!563 k0!794) (size!12786 _keys!709)))))

(declare-fun b!425325 () Bool)

(declare-fun res!249111 () Bool)

(assert (=> b!425325 (=> (not res!249111) (not e!252495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425325 (= res!249111 (validKeyInArray!0 k0!794))))

(declare-fun b!425326 () Bool)

(declare-fun e!252496 () Bool)

(assert (=> b!425326 (= e!252496 (not true))))

(declare-fun minValue!515 () V!15869)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15869)

(declare-fun lt!194637 () array!25973)

(declare-fun v!412 () V!15869)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7270 0))(
  ( (tuple2!7271 (_1!3645 (_ BitVec 64)) (_2!3645 V!15869)) )
))
(declare-datatypes ((List!7314 0))(
  ( (Nil!7311) (Cons!7310 (h!8166 tuple2!7270) (t!12766 List!7314)) )
))
(declare-datatypes ((ListLongMap!6197 0))(
  ( (ListLongMap!6198 (toList!3114 List!7314)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1315 (array!25975 array!25973 (_ BitVec 32) (_ BitVec 32) V!15869 V!15869 (_ BitVec 32) Int) ListLongMap!6197)

(declare-fun +!1272 (ListLongMap!6197 tuple2!7270) ListLongMap!6197)

(assert (=> b!425326 (= (getCurrentListMapNoExtraKeys!1315 lt!194639 lt!194637 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1272 (getCurrentListMapNoExtraKeys!1315 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7271 k0!794 v!412)))))

(declare-datatypes ((Unit!12447 0))(
  ( (Unit!12448) )
))
(declare-fun lt!194640 () Unit!12447)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!474 (array!25975 array!25973 (_ BitVec 32) (_ BitVec 32) V!15869 V!15869 (_ BitVec 32) (_ BitVec 64) V!15869 (_ BitVec 32) Int) Unit!12447)

(assert (=> b!425326 (= lt!194640 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!474 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425327 () Bool)

(declare-fun tp_is_empty!11073 () Bool)

(assert (=> b!425327 (= e!252494 tp_is_empty!11073)))

(declare-fun b!425328 () Bool)

(declare-fun res!249117 () Bool)

(assert (=> b!425328 (=> (not res!249117) (not e!252495))))

(declare-datatypes ((List!7315 0))(
  ( (Nil!7312) (Cons!7311 (h!8167 (_ BitVec 64)) (t!12767 List!7315)) )
))
(declare-fun arrayNoDuplicates!0 (array!25975 (_ BitVec 32) List!7315) Bool)

(assert (=> b!425328 (= res!249117 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7312))))

(declare-fun mapIsEmpty!18231 () Bool)

(assert (=> mapIsEmpty!18231 mapRes!18231))

(declare-fun b!425329 () Bool)

(declare-fun res!249107 () Bool)

(assert (=> b!425329 (=> (not res!249107) (not e!252495))))

(assert (=> b!425329 (= res!249107 (and (= (size!12785 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12786 _keys!709) (size!12785 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425330 () Bool)

(declare-fun res!249112 () Bool)

(assert (=> b!425330 (=> (not res!249112) (not e!252495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425330 (= res!249112 (validMask!0 mask!1025))))

(declare-fun b!425331 () Bool)

(declare-fun res!249115 () Bool)

(assert (=> b!425331 (=> (not res!249115) (not e!252495))))

(declare-fun arrayContainsKey!0 (array!25975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425331 (= res!249115 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425332 () Bool)

(declare-fun res!249108 () Bool)

(assert (=> b!425332 (=> (not res!249108) (not e!252495))))

(assert (=> b!425332 (= res!249108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425333 () Bool)

(declare-fun res!249109 () Bool)

(assert (=> b!425333 (=> (not res!249109) (not e!252495))))

(assert (=> b!425333 (= res!249109 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12786 _keys!709))))))

(declare-fun b!425334 () Bool)

(declare-fun res!249116 () Bool)

(assert (=> b!425334 (=> (not res!249116) (not e!252490))))

(assert (=> b!425334 (= res!249116 (arrayNoDuplicates!0 lt!194639 #b00000000000000000000000000000000 Nil!7312))))

(declare-fun res!249105 () Bool)

(assert (=> start!39662 (=> (not res!249105) (not e!252495))))

(assert (=> start!39662 (= res!249105 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12786 _keys!709))))))

(assert (=> start!39662 e!252495))

(assert (=> start!39662 tp_is_empty!11073))

(assert (=> start!39662 tp!35291))

(assert (=> start!39662 true))

(declare-fun e!252491 () Bool)

(declare-fun array_inv!9062 (array!25973) Bool)

(assert (=> start!39662 (and (array_inv!9062 _values!549) e!252491)))

(declare-fun array_inv!9063 (array!25975) Bool)

(assert (=> start!39662 (array_inv!9063 _keys!709)))

(declare-fun b!425335 () Bool)

(declare-fun res!249114 () Bool)

(assert (=> b!425335 (=> (not res!249114) (not e!252495))))

(assert (=> b!425335 (= res!249114 (or (= (select (arr!12434 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12434 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425336 () Bool)

(declare-fun res!249113 () Bool)

(assert (=> b!425336 (=> (not res!249113) (not e!252490))))

(assert (=> b!425336 (= res!249113 (bvsle from!863 i!563))))

(declare-fun b!425337 () Bool)

(declare-fun e!252493 () Bool)

(assert (=> b!425337 (= e!252493 tp_is_empty!11073)))

(declare-fun b!425338 () Bool)

(assert (=> b!425338 (= e!252490 e!252496)))

(declare-fun res!249110 () Bool)

(assert (=> b!425338 (=> (not res!249110) (not e!252496))))

(assert (=> b!425338 (= res!249110 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194638 () ListLongMap!6197)

(assert (=> b!425338 (= lt!194638 (getCurrentListMapNoExtraKeys!1315 lt!194639 lt!194637 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425338 (= lt!194637 (array!25974 (store (arr!12433 _values!549) i!563 (ValueCellFull!5193 v!412)) (size!12785 _values!549)))))

(declare-fun lt!194636 () ListLongMap!6197)

(assert (=> b!425338 (= lt!194636 (getCurrentListMapNoExtraKeys!1315 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425339 () Bool)

(assert (=> b!425339 (= e!252491 (and e!252493 mapRes!18231))))

(declare-fun condMapEmpty!18231 () Bool)

(declare-fun mapDefault!18231 () ValueCell!5193)

(assert (=> b!425339 (= condMapEmpty!18231 (= (arr!12433 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5193)) mapDefault!18231)))))

(assert (= (and start!39662 res!249105) b!425330))

(assert (= (and b!425330 res!249112) b!425329))

(assert (= (and b!425329 res!249107) b!425332))

(assert (= (and b!425332 res!249108) b!425328))

(assert (= (and b!425328 res!249117) b!425333))

(assert (= (and b!425333 res!249109) b!425325))

(assert (= (and b!425325 res!249111) b!425335))

(assert (= (and b!425335 res!249114) b!425331))

(assert (= (and b!425331 res!249115) b!425324))

(assert (= (and b!425324 res!249106) b!425334))

(assert (= (and b!425334 res!249116) b!425336))

(assert (= (and b!425336 res!249113) b!425338))

(assert (= (and b!425338 res!249110) b!425326))

(assert (= (and b!425339 condMapEmpty!18231) mapIsEmpty!18231))

(assert (= (and b!425339 (not condMapEmpty!18231)) mapNonEmpty!18231))

(get-info :version)

(assert (= (and mapNonEmpty!18231 ((_ is ValueCellFull!5193) mapValue!18231)) b!425327))

(assert (= (and b!425339 ((_ is ValueCellFull!5193) mapDefault!18231)) b!425337))

(assert (= start!39662 b!425339))

(declare-fun m!414243 () Bool)

(assert (=> b!425326 m!414243))

(declare-fun m!414245 () Bool)

(assert (=> b!425326 m!414245))

(assert (=> b!425326 m!414245))

(declare-fun m!414247 () Bool)

(assert (=> b!425326 m!414247))

(declare-fun m!414249 () Bool)

(assert (=> b!425326 m!414249))

(declare-fun m!414251 () Bool)

(assert (=> b!425332 m!414251))

(declare-fun m!414253 () Bool)

(assert (=> b!425338 m!414253))

(declare-fun m!414255 () Bool)

(assert (=> b!425338 m!414255))

(declare-fun m!414257 () Bool)

(assert (=> b!425338 m!414257))

(declare-fun m!414259 () Bool)

(assert (=> b!425334 m!414259))

(declare-fun m!414261 () Bool)

(assert (=> start!39662 m!414261))

(declare-fun m!414263 () Bool)

(assert (=> start!39662 m!414263))

(declare-fun m!414265 () Bool)

(assert (=> b!425330 m!414265))

(declare-fun m!414267 () Bool)

(assert (=> b!425325 m!414267))

(declare-fun m!414269 () Bool)

(assert (=> b!425328 m!414269))

(declare-fun m!414271 () Bool)

(assert (=> b!425335 m!414271))

(declare-fun m!414273 () Bool)

(assert (=> mapNonEmpty!18231 m!414273))

(declare-fun m!414275 () Bool)

(assert (=> b!425324 m!414275))

(declare-fun m!414277 () Bool)

(assert (=> b!425324 m!414277))

(declare-fun m!414279 () Bool)

(assert (=> b!425331 m!414279))

(check-sat (not b!425330) tp_is_empty!11073 (not start!39662) (not mapNonEmpty!18231) (not b!425326) (not b!425332) (not b!425331) (not b!425324) b_and!17595 (not b!425328) (not b!425325) (not b!425334) (not b!425338) (not b_next!9921))
(check-sat b_and!17595 (not b_next!9921))
