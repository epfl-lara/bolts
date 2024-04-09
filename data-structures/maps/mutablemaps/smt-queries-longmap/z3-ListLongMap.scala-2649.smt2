; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39722 () Bool)

(assert start!39722)

(declare-fun b_free!9981 () Bool)

(declare-fun b_next!9981 () Bool)

(assert (=> start!39722 (= b_free!9981 (not b_next!9981))))

(declare-fun tp!35472 () Bool)

(declare-fun b_and!17655 () Bool)

(assert (=> start!39722 (= tp!35472 b_and!17655)))

(declare-fun b!426764 () Bool)

(declare-fun res!250276 () Bool)

(declare-fun e!253123 () Bool)

(assert (=> b!426764 (=> (not res!250276) (not e!253123))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426764 (= res!250276 (validKeyInArray!0 k0!794))))

(declare-fun b!426766 () Bool)

(declare-fun res!250287 () Bool)

(declare-fun e!253125 () Bool)

(assert (=> b!426766 (=> (not res!250287) (not e!253125))))

(declare-datatypes ((array!26087 0))(
  ( (array!26088 (arr!12490 (Array (_ BitVec 32) (_ BitVec 64))) (size!12842 (_ BitVec 32))) )
))
(declare-fun lt!195088 () array!26087)

(declare-datatypes ((List!7360 0))(
  ( (Nil!7357) (Cons!7356 (h!8212 (_ BitVec 64)) (t!12812 List!7360)) )
))
(declare-fun arrayNoDuplicates!0 (array!26087 (_ BitVec 32) List!7360) Bool)

(assert (=> b!426766 (= res!250287 (arrayNoDuplicates!0 lt!195088 #b00000000000000000000000000000000 Nil!7357))))

(declare-fun mapNonEmpty!18321 () Bool)

(declare-fun mapRes!18321 () Bool)

(declare-fun tp!35471 () Bool)

(declare-fun e!253120 () Bool)

(assert (=> mapNonEmpty!18321 (= mapRes!18321 (and tp!35471 e!253120))))

(declare-fun mapKey!18321 () (_ BitVec 32))

(declare-datatypes ((V!15949 0))(
  ( (V!15950 (val!5611 Int)) )
))
(declare-datatypes ((ValueCell!5223 0))(
  ( (ValueCellFull!5223 (v!7854 V!15949)) (EmptyCell!5223) )
))
(declare-datatypes ((array!26089 0))(
  ( (array!26090 (arr!12491 (Array (_ BitVec 32) ValueCell!5223)) (size!12843 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26089)

(declare-fun mapValue!18321 () ValueCell!5223)

(declare-fun mapRest!18321 () (Array (_ BitVec 32) ValueCell!5223))

(assert (=> mapNonEmpty!18321 (= (arr!12491 _values!549) (store mapRest!18321 mapKey!18321 mapValue!18321))))

(declare-fun b!426767 () Bool)

(declare-fun tp_is_empty!11133 () Bool)

(assert (=> b!426767 (= e!253120 tp_is_empty!11133)))

(declare-fun mapIsEmpty!18321 () Bool)

(assert (=> mapIsEmpty!18321 mapRes!18321))

(declare-fun b!426768 () Bool)

(declare-fun e!253122 () Bool)

(assert (=> b!426768 (= e!253122 (not true))))

(declare-fun minValue!515 () V!15949)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!195087 () array!26089)

(declare-fun zeroValue!515 () V!15949)

(declare-fun v!412 () V!15949)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!26087)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7312 0))(
  ( (tuple2!7313 (_1!3666 (_ BitVec 64)) (_2!3666 V!15949)) )
))
(declare-datatypes ((List!7361 0))(
  ( (Nil!7358) (Cons!7357 (h!8213 tuple2!7312) (t!12813 List!7361)) )
))
(declare-datatypes ((ListLongMap!6239 0))(
  ( (ListLongMap!6240 (toList!3135 List!7361)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1336 (array!26087 array!26089 (_ BitVec 32) (_ BitVec 32) V!15949 V!15949 (_ BitVec 32) Int) ListLongMap!6239)

(declare-fun +!1288 (ListLongMap!6239 tuple2!7312) ListLongMap!6239)

(assert (=> b!426768 (= (getCurrentListMapNoExtraKeys!1336 lt!195088 lt!195087 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1288 (getCurrentListMapNoExtraKeys!1336 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7313 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12479 0))(
  ( (Unit!12480) )
))
(declare-fun lt!195089 () Unit!12479)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!490 (array!26087 array!26089 (_ BitVec 32) (_ BitVec 32) V!15949 V!15949 (_ BitVec 32) (_ BitVec 64) V!15949 (_ BitVec 32) Int) Unit!12479)

(assert (=> b!426768 (= lt!195089 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!490 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426769 () Bool)

(declare-fun res!250278 () Bool)

(assert (=> b!426769 (=> (not res!250278) (not e!253123))))

(assert (=> b!426769 (= res!250278 (and (= (size!12843 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12842 _keys!709) (size!12843 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426770 () Bool)

(assert (=> b!426770 (= e!253123 e!253125)))

(declare-fun res!250283 () Bool)

(assert (=> b!426770 (=> (not res!250283) (not e!253125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26087 (_ BitVec 32)) Bool)

(assert (=> b!426770 (= res!250283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195088 mask!1025))))

(assert (=> b!426770 (= lt!195088 (array!26088 (store (arr!12490 _keys!709) i!563 k0!794) (size!12842 _keys!709)))))

(declare-fun b!426771 () Bool)

(declare-fun res!250284 () Bool)

(assert (=> b!426771 (=> (not res!250284) (not e!253123))))

(assert (=> b!426771 (= res!250284 (or (= (select (arr!12490 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12490 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426772 () Bool)

(declare-fun res!250286 () Bool)

(assert (=> b!426772 (=> (not res!250286) (not e!253125))))

(assert (=> b!426772 (= res!250286 (bvsle from!863 i!563))))

(declare-fun b!426773 () Bool)

(declare-fun res!250282 () Bool)

(assert (=> b!426773 (=> (not res!250282) (not e!253123))))

(declare-fun arrayContainsKey!0 (array!26087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426773 (= res!250282 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426765 () Bool)

(declare-fun res!250281 () Bool)

(assert (=> b!426765 (=> (not res!250281) (not e!253123))))

(assert (=> b!426765 (= res!250281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!250279 () Bool)

(assert (=> start!39722 (=> (not res!250279) (not e!253123))))

(assert (=> start!39722 (= res!250279 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12842 _keys!709))))))

(assert (=> start!39722 e!253123))

(assert (=> start!39722 tp_is_empty!11133))

(assert (=> start!39722 tp!35472))

(assert (=> start!39722 true))

(declare-fun e!253121 () Bool)

(declare-fun array_inv!9096 (array!26089) Bool)

(assert (=> start!39722 (and (array_inv!9096 _values!549) e!253121)))

(declare-fun array_inv!9097 (array!26087) Bool)

(assert (=> start!39722 (array_inv!9097 _keys!709)))

(declare-fun b!426774 () Bool)

(declare-fun e!253126 () Bool)

(assert (=> b!426774 (= e!253126 tp_is_empty!11133)))

(declare-fun b!426775 () Bool)

(assert (=> b!426775 (= e!253121 (and e!253126 mapRes!18321))))

(declare-fun condMapEmpty!18321 () Bool)

(declare-fun mapDefault!18321 () ValueCell!5223)

(assert (=> b!426775 (= condMapEmpty!18321 (= (arr!12491 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5223)) mapDefault!18321)))))

(declare-fun b!426776 () Bool)

(assert (=> b!426776 (= e!253125 e!253122)))

(declare-fun res!250280 () Bool)

(assert (=> b!426776 (=> (not res!250280) (not e!253122))))

(assert (=> b!426776 (= res!250280 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195090 () ListLongMap!6239)

(assert (=> b!426776 (= lt!195090 (getCurrentListMapNoExtraKeys!1336 lt!195088 lt!195087 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!426776 (= lt!195087 (array!26090 (store (arr!12491 _values!549) i!563 (ValueCellFull!5223 v!412)) (size!12843 _values!549)))))

(declare-fun lt!195086 () ListLongMap!6239)

(assert (=> b!426776 (= lt!195086 (getCurrentListMapNoExtraKeys!1336 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426777 () Bool)

(declare-fun res!250275 () Bool)

(assert (=> b!426777 (=> (not res!250275) (not e!253123))))

(assert (=> b!426777 (= res!250275 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7357))))

(declare-fun b!426778 () Bool)

(declare-fun res!250277 () Bool)

(assert (=> b!426778 (=> (not res!250277) (not e!253123))))

(assert (=> b!426778 (= res!250277 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12842 _keys!709))))))

(declare-fun b!426779 () Bool)

(declare-fun res!250285 () Bool)

(assert (=> b!426779 (=> (not res!250285) (not e!253123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426779 (= res!250285 (validMask!0 mask!1025))))

(assert (= (and start!39722 res!250279) b!426779))

(assert (= (and b!426779 res!250285) b!426769))

(assert (= (and b!426769 res!250278) b!426765))

(assert (= (and b!426765 res!250281) b!426777))

(assert (= (and b!426777 res!250275) b!426778))

(assert (= (and b!426778 res!250277) b!426764))

(assert (= (and b!426764 res!250276) b!426771))

(assert (= (and b!426771 res!250284) b!426773))

(assert (= (and b!426773 res!250282) b!426770))

(assert (= (and b!426770 res!250283) b!426766))

(assert (= (and b!426766 res!250287) b!426772))

(assert (= (and b!426772 res!250286) b!426776))

(assert (= (and b!426776 res!250280) b!426768))

(assert (= (and b!426775 condMapEmpty!18321) mapIsEmpty!18321))

(assert (= (and b!426775 (not condMapEmpty!18321)) mapNonEmpty!18321))

(get-info :version)

(assert (= (and mapNonEmpty!18321 ((_ is ValueCellFull!5223) mapValue!18321)) b!426767))

(assert (= (and b!426775 ((_ is ValueCellFull!5223) mapDefault!18321)) b!426774))

(assert (= start!39722 b!426775))

(declare-fun m!415383 () Bool)

(assert (=> b!426770 m!415383))

(declare-fun m!415385 () Bool)

(assert (=> b!426770 m!415385))

(declare-fun m!415387 () Bool)

(assert (=> start!39722 m!415387))

(declare-fun m!415389 () Bool)

(assert (=> start!39722 m!415389))

(declare-fun m!415391 () Bool)

(assert (=> b!426779 m!415391))

(declare-fun m!415393 () Bool)

(assert (=> b!426773 m!415393))

(declare-fun m!415395 () Bool)

(assert (=> b!426768 m!415395))

(declare-fun m!415397 () Bool)

(assert (=> b!426768 m!415397))

(assert (=> b!426768 m!415397))

(declare-fun m!415399 () Bool)

(assert (=> b!426768 m!415399))

(declare-fun m!415401 () Bool)

(assert (=> b!426768 m!415401))

(declare-fun m!415403 () Bool)

(assert (=> b!426771 m!415403))

(declare-fun m!415405 () Bool)

(assert (=> b!426777 m!415405))

(declare-fun m!415407 () Bool)

(assert (=> b!426766 m!415407))

(declare-fun m!415409 () Bool)

(assert (=> b!426776 m!415409))

(declare-fun m!415411 () Bool)

(assert (=> b!426776 m!415411))

(declare-fun m!415413 () Bool)

(assert (=> b!426776 m!415413))

(declare-fun m!415415 () Bool)

(assert (=> mapNonEmpty!18321 m!415415))

(declare-fun m!415417 () Bool)

(assert (=> b!426765 m!415417))

(declare-fun m!415419 () Bool)

(assert (=> b!426764 m!415419))

(check-sat (not b!426764) (not b_next!9981) (not b!426770) (not mapNonEmpty!18321) (not b!426773) (not b!426766) tp_is_empty!11133 (not b!426779) (not b!426765) b_and!17655 (not start!39722) (not b!426777) (not b!426776) (not b!426768))
(check-sat b_and!17655 (not b_next!9981))
