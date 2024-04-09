; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40160 () Bool)

(assert start!40160)

(declare-fun b_free!10419 () Bool)

(declare-fun b_next!10419 () Bool)

(assert (=> start!40160 (= b_free!10419 (not b_next!10419))))

(declare-fun tp!36786 () Bool)

(declare-fun b_and!18405 () Bool)

(assert (=> start!40160 (= tp!36786 b_and!18405)))

(declare-fun b!439217 () Bool)

(declare-fun res!259619 () Bool)

(declare-fun e!258936 () Bool)

(assert (=> b!439217 (=> (not res!259619) (not e!258936))))

(declare-datatypes ((array!26933 0))(
  ( (array!26934 (arr!12913 (Array (_ BitVec 32) (_ BitVec 64))) (size!13265 (_ BitVec 32))) )
))
(declare-fun lt!202225 () array!26933)

(declare-datatypes ((List!7705 0))(
  ( (Nil!7702) (Cons!7701 (h!8557 (_ BitVec 64)) (t!13469 List!7705)) )
))
(declare-fun arrayNoDuplicates!0 (array!26933 (_ BitVec 32) List!7705) Bool)

(assert (=> b!439217 (= res!259619 (arrayNoDuplicates!0 lt!202225 #b00000000000000000000000000000000 Nil!7702))))

(declare-fun b!439218 () Bool)

(declare-fun res!259624 () Bool)

(declare-fun e!258937 () Bool)

(assert (=> b!439218 (=> (not res!259624) (not e!258937))))

(declare-fun _keys!709 () array!26933)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439218 (= res!259624 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!439219 () Bool)

(declare-fun e!258939 () Bool)

(assert (=> b!439219 (= e!258936 e!258939)))

(declare-fun res!259618 () Bool)

(assert (=> b!439219 (=> (not res!259618) (not e!258939))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439219 (= res!259618 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16533 0))(
  ( (V!16534 (val!5830 Int)) )
))
(declare-fun minValue!515 () V!16533)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16533)

(declare-datatypes ((tuple2!7662 0))(
  ( (tuple2!7663 (_1!3841 (_ BitVec 64)) (_2!3841 V!16533)) )
))
(declare-datatypes ((List!7706 0))(
  ( (Nil!7703) (Cons!7702 (h!8558 tuple2!7662) (t!13470 List!7706)) )
))
(declare-datatypes ((ListLongMap!6589 0))(
  ( (ListLongMap!6590 (toList!3310 List!7706)) )
))
(declare-fun lt!202224 () ListLongMap!6589)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5442 0))(
  ( (ValueCellFull!5442 (v!8073 V!16533)) (EmptyCell!5442) )
))
(declare-datatypes ((array!26935 0))(
  ( (array!26936 (arr!12914 (Array (_ BitVec 32) ValueCell!5442)) (size!13266 (_ BitVec 32))) )
))
(declare-fun lt!202223 () array!26935)

(declare-fun getCurrentListMapNoExtraKeys!1492 (array!26933 array!26935 (_ BitVec 32) (_ BitVec 32) V!16533 V!16533 (_ BitVec 32) Int) ListLongMap!6589)

(assert (=> b!439219 (= lt!202224 (getCurrentListMapNoExtraKeys!1492 lt!202225 lt!202223 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26935)

(declare-fun v!412 () V!16533)

(assert (=> b!439219 (= lt!202223 (array!26936 (store (arr!12914 _values!549) i!563 (ValueCellFull!5442 v!412)) (size!13266 _values!549)))))

(declare-fun lt!202226 () ListLongMap!6589)

(assert (=> b!439219 (= lt!202226 (getCurrentListMapNoExtraKeys!1492 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439220 () Bool)

(declare-fun res!259627 () Bool)

(assert (=> b!439220 (=> (not res!259627) (not e!258936))))

(assert (=> b!439220 (= res!259627 (bvsle from!863 i!563))))

(declare-fun b!439221 () Bool)

(assert (=> b!439221 (= e!258937 e!258936)))

(declare-fun res!259621 () Bool)

(assert (=> b!439221 (=> (not res!259621) (not e!258936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26933 (_ BitVec 32)) Bool)

(assert (=> b!439221 (= res!259621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202225 mask!1025))))

(assert (=> b!439221 (= lt!202225 (array!26934 (store (arr!12913 _keys!709) i!563 k0!794) (size!13265 _keys!709)))))

(declare-fun mapIsEmpty!18978 () Bool)

(declare-fun mapRes!18978 () Bool)

(assert (=> mapIsEmpty!18978 mapRes!18978))

(declare-fun b!439222 () Bool)

(declare-fun res!259629 () Bool)

(assert (=> b!439222 (=> (not res!259629) (not e!258937))))

(assert (=> b!439222 (= res!259629 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13265 _keys!709))))))

(declare-fun res!259623 () Bool)

(assert (=> start!40160 (=> (not res!259623) (not e!258937))))

(assert (=> start!40160 (= res!259623 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13265 _keys!709))))))

(assert (=> start!40160 e!258937))

(declare-fun tp_is_empty!11571 () Bool)

(assert (=> start!40160 tp_is_empty!11571))

(assert (=> start!40160 tp!36786))

(assert (=> start!40160 true))

(declare-fun e!258940 () Bool)

(declare-fun array_inv!9366 (array!26935) Bool)

(assert (=> start!40160 (and (array_inv!9366 _values!549) e!258940)))

(declare-fun array_inv!9367 (array!26933) Bool)

(assert (=> start!40160 (array_inv!9367 _keys!709)))

(declare-fun b!439223 () Bool)

(declare-fun res!259617 () Bool)

(assert (=> b!439223 (=> (not res!259617) (not e!258937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439223 (= res!259617 (validKeyInArray!0 k0!794))))

(declare-fun b!439224 () Bool)

(declare-fun res!259620 () Bool)

(assert (=> b!439224 (=> (not res!259620) (not e!258937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439224 (= res!259620 (validMask!0 mask!1025))))

(declare-fun b!439225 () Bool)

(declare-fun e!258934 () Bool)

(assert (=> b!439225 (= e!258934 tp_is_empty!11571)))

(declare-fun b!439226 () Bool)

(declare-fun res!259626 () Bool)

(assert (=> b!439226 (=> (not res!259626) (not e!258937))))

(assert (=> b!439226 (= res!259626 (and (= (size!13266 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13265 _keys!709) (size!13266 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439227 () Bool)

(declare-fun res!259628 () Bool)

(assert (=> b!439227 (=> (not res!259628) (not e!258937))))

(assert (=> b!439227 (= res!259628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439228 () Bool)

(assert (=> b!439228 (= e!258939 (not true))))

(declare-fun +!1449 (ListLongMap!6589 tuple2!7662) ListLongMap!6589)

(assert (=> b!439228 (= (getCurrentListMapNoExtraKeys!1492 lt!202225 lt!202223 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1449 (getCurrentListMapNoExtraKeys!1492 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7663 k0!794 v!412)))))

(declare-datatypes ((Unit!13013 0))(
  ( (Unit!13014) )
))
(declare-fun lt!202227 () Unit!13013)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!627 (array!26933 array!26935 (_ BitVec 32) (_ BitVec 32) V!16533 V!16533 (_ BitVec 32) (_ BitVec 64) V!16533 (_ BitVec 32) Int) Unit!13013)

(assert (=> b!439228 (= lt!202227 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!627 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18978 () Bool)

(declare-fun tp!36785 () Bool)

(assert (=> mapNonEmpty!18978 (= mapRes!18978 (and tp!36785 e!258934))))

(declare-fun mapValue!18978 () ValueCell!5442)

(declare-fun mapRest!18978 () (Array (_ BitVec 32) ValueCell!5442))

(declare-fun mapKey!18978 () (_ BitVec 32))

(assert (=> mapNonEmpty!18978 (= (arr!12914 _values!549) (store mapRest!18978 mapKey!18978 mapValue!18978))))

(declare-fun b!439229 () Bool)

(declare-fun res!259625 () Bool)

(assert (=> b!439229 (=> (not res!259625) (not e!258937))))

(assert (=> b!439229 (= res!259625 (or (= (select (arr!12913 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12913 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439230 () Bool)

(declare-fun res!259622 () Bool)

(assert (=> b!439230 (=> (not res!259622) (not e!258937))))

(assert (=> b!439230 (= res!259622 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7702))))

(declare-fun b!439231 () Bool)

(declare-fun e!258935 () Bool)

(assert (=> b!439231 (= e!258940 (and e!258935 mapRes!18978))))

(declare-fun condMapEmpty!18978 () Bool)

(declare-fun mapDefault!18978 () ValueCell!5442)

(assert (=> b!439231 (= condMapEmpty!18978 (= (arr!12914 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5442)) mapDefault!18978)))))

(declare-fun b!439232 () Bool)

(assert (=> b!439232 (= e!258935 tp_is_empty!11571)))

(assert (= (and start!40160 res!259623) b!439224))

(assert (= (and b!439224 res!259620) b!439226))

(assert (= (and b!439226 res!259626) b!439227))

(assert (= (and b!439227 res!259628) b!439230))

(assert (= (and b!439230 res!259622) b!439222))

(assert (= (and b!439222 res!259629) b!439223))

(assert (= (and b!439223 res!259617) b!439229))

(assert (= (and b!439229 res!259625) b!439218))

(assert (= (and b!439218 res!259624) b!439221))

(assert (= (and b!439221 res!259621) b!439217))

(assert (= (and b!439217 res!259619) b!439220))

(assert (= (and b!439220 res!259627) b!439219))

(assert (= (and b!439219 res!259618) b!439228))

(assert (= (and b!439231 condMapEmpty!18978) mapIsEmpty!18978))

(assert (= (and b!439231 (not condMapEmpty!18978)) mapNonEmpty!18978))

(get-info :version)

(assert (= (and mapNonEmpty!18978 ((_ is ValueCellFull!5442) mapValue!18978)) b!439225))

(assert (= (and b!439231 ((_ is ValueCellFull!5442) mapDefault!18978)) b!439232))

(assert (= start!40160 b!439231))

(declare-fun m!426513 () Bool)

(assert (=> b!439219 m!426513))

(declare-fun m!426515 () Bool)

(assert (=> b!439219 m!426515))

(declare-fun m!426517 () Bool)

(assert (=> b!439219 m!426517))

(declare-fun m!426519 () Bool)

(assert (=> b!439230 m!426519))

(declare-fun m!426521 () Bool)

(assert (=> start!40160 m!426521))

(declare-fun m!426523 () Bool)

(assert (=> start!40160 m!426523))

(declare-fun m!426525 () Bool)

(assert (=> b!439227 m!426525))

(declare-fun m!426527 () Bool)

(assert (=> b!439228 m!426527))

(declare-fun m!426529 () Bool)

(assert (=> b!439228 m!426529))

(assert (=> b!439228 m!426529))

(declare-fun m!426531 () Bool)

(assert (=> b!439228 m!426531))

(declare-fun m!426533 () Bool)

(assert (=> b!439228 m!426533))

(declare-fun m!426535 () Bool)

(assert (=> mapNonEmpty!18978 m!426535))

(declare-fun m!426537 () Bool)

(assert (=> b!439221 m!426537))

(declare-fun m!426539 () Bool)

(assert (=> b!439221 m!426539))

(declare-fun m!426541 () Bool)

(assert (=> b!439217 m!426541))

(declare-fun m!426543 () Bool)

(assert (=> b!439218 m!426543))

(declare-fun m!426545 () Bool)

(assert (=> b!439223 m!426545))

(declare-fun m!426547 () Bool)

(assert (=> b!439229 m!426547))

(declare-fun m!426549 () Bool)

(assert (=> b!439224 m!426549))

(check-sat b_and!18405 (not b!439217) (not b!439230) (not b!439219) (not mapNonEmpty!18978) (not b!439224) (not b!439223) (not b!439221) (not b_next!10419) tp_is_empty!11571 (not start!40160) (not b!439227) (not b!439228) (not b!439218))
(check-sat b_and!18405 (not b_next!10419))
