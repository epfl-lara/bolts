; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40166 () Bool)

(assert start!40166)

(declare-fun b_free!10425 () Bool)

(declare-fun b_next!10425 () Bool)

(assert (=> start!40166 (= b_free!10425 (not b_next!10425))))

(declare-fun tp!36803 () Bool)

(declare-fun b_and!18411 () Bool)

(assert (=> start!40166 (= tp!36803 b_and!18411)))

(declare-fun mapNonEmpty!18987 () Bool)

(declare-fun mapRes!18987 () Bool)

(declare-fun tp!36804 () Bool)

(declare-fun e!258997 () Bool)

(assert (=> mapNonEmpty!18987 (= mapRes!18987 (and tp!36804 e!258997))))

(declare-datatypes ((V!16541 0))(
  ( (V!16542 (val!5833 Int)) )
))
(declare-datatypes ((ValueCell!5445 0))(
  ( (ValueCellFull!5445 (v!8076 V!16541)) (EmptyCell!5445) )
))
(declare-datatypes ((array!26945 0))(
  ( (array!26946 (arr!12919 (Array (_ BitVec 32) ValueCell!5445)) (size!13271 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26945)

(declare-fun mapValue!18987 () ValueCell!5445)

(declare-fun mapRest!18987 () (Array (_ BitVec 32) ValueCell!5445))

(declare-fun mapKey!18987 () (_ BitVec 32))

(assert (=> mapNonEmpty!18987 (= (arr!12919 _values!549) (store mapRest!18987 mapKey!18987 mapValue!18987))))

(declare-fun b!439361 () Bool)

(declare-fun e!258999 () Bool)

(declare-fun tp_is_empty!11577 () Bool)

(assert (=> b!439361 (= e!258999 tp_is_empty!11577)))

(declare-fun b!439362 () Bool)

(declare-fun e!259002 () Bool)

(assert (=> b!439362 (= e!259002 (and e!258999 mapRes!18987))))

(declare-fun condMapEmpty!18987 () Bool)

(declare-fun mapDefault!18987 () ValueCell!5445)

(assert (=> b!439362 (= condMapEmpty!18987 (= (arr!12919 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5445)) mapDefault!18987)))))

(declare-fun b!439363 () Bool)

(declare-fun res!259737 () Bool)

(declare-fun e!259000 () Bool)

(assert (=> b!439363 (=> (not res!259737) (not e!259000))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439363 (= res!259737 (validMask!0 mask!1025))))

(declare-fun res!259746 () Bool)

(assert (=> start!40166 (=> (not res!259746) (not e!259000))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26947 0))(
  ( (array!26948 (arr!12920 (Array (_ BitVec 32) (_ BitVec 64))) (size!13272 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26947)

(assert (=> start!40166 (= res!259746 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13272 _keys!709))))))

(assert (=> start!40166 e!259000))

(assert (=> start!40166 tp_is_empty!11577))

(assert (=> start!40166 tp!36803))

(assert (=> start!40166 true))

(declare-fun array_inv!9370 (array!26945) Bool)

(assert (=> start!40166 (and (array_inv!9370 _values!549) e!259002)))

(declare-fun array_inv!9371 (array!26947) Bool)

(assert (=> start!40166 (array_inv!9371 _keys!709)))

(declare-fun b!439364 () Bool)

(declare-fun res!259742 () Bool)

(declare-fun e!259001 () Bool)

(assert (=> b!439364 (=> (not res!259742) (not e!259001))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439364 (= res!259742 (bvsle from!863 i!563))))

(declare-fun b!439365 () Bool)

(declare-fun res!259734 () Bool)

(assert (=> b!439365 (=> (not res!259734) (not e!259000))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!439365 (= res!259734 (and (= (size!13271 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13272 _keys!709) (size!13271 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439366 () Bool)

(declare-fun res!259745 () Bool)

(assert (=> b!439366 (=> (not res!259745) (not e!259000))))

(assert (=> b!439366 (= res!259745 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13272 _keys!709))))))

(declare-fun b!439367 () Bool)

(assert (=> b!439367 (= e!259000 e!259001)))

(declare-fun res!259735 () Bool)

(assert (=> b!439367 (=> (not res!259735) (not e!259001))))

(declare-fun lt!202271 () array!26947)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26947 (_ BitVec 32)) Bool)

(assert (=> b!439367 (= res!259735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202271 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!439367 (= lt!202271 (array!26948 (store (arr!12920 _keys!709) i!563 k0!794) (size!13272 _keys!709)))))

(declare-fun b!439368 () Bool)

(declare-fun e!258998 () Bool)

(assert (=> b!439368 (= e!258998 (not true))))

(declare-fun lt!202268 () array!26945)

(declare-fun minValue!515 () V!16541)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16541)

(declare-fun v!412 () V!16541)

(declare-datatypes ((tuple2!7666 0))(
  ( (tuple2!7667 (_1!3843 (_ BitVec 64)) (_2!3843 V!16541)) )
))
(declare-datatypes ((List!7710 0))(
  ( (Nil!7707) (Cons!7706 (h!8562 tuple2!7666) (t!13474 List!7710)) )
))
(declare-datatypes ((ListLongMap!6593 0))(
  ( (ListLongMap!6594 (toList!3312 List!7710)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1494 (array!26947 array!26945 (_ BitVec 32) (_ BitVec 32) V!16541 V!16541 (_ BitVec 32) Int) ListLongMap!6593)

(declare-fun +!1451 (ListLongMap!6593 tuple2!7666) ListLongMap!6593)

(assert (=> b!439368 (= (getCurrentListMapNoExtraKeys!1494 lt!202271 lt!202268 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1451 (getCurrentListMapNoExtraKeys!1494 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7667 k0!794 v!412)))))

(declare-datatypes ((Unit!13017 0))(
  ( (Unit!13018) )
))
(declare-fun lt!202272 () Unit!13017)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!629 (array!26947 array!26945 (_ BitVec 32) (_ BitVec 32) V!16541 V!16541 (_ BitVec 32) (_ BitVec 64) V!16541 (_ BitVec 32) Int) Unit!13017)

(assert (=> b!439368 (= lt!202272 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!629 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439369 () Bool)

(declare-fun res!259741 () Bool)

(assert (=> b!439369 (=> (not res!259741) (not e!259000))))

(declare-datatypes ((List!7711 0))(
  ( (Nil!7708) (Cons!7707 (h!8563 (_ BitVec 64)) (t!13475 List!7711)) )
))
(declare-fun arrayNoDuplicates!0 (array!26947 (_ BitVec 32) List!7711) Bool)

(assert (=> b!439369 (= res!259741 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7708))))

(declare-fun b!439370 () Bool)

(assert (=> b!439370 (= e!259001 e!258998)))

(declare-fun res!259739 () Bool)

(assert (=> b!439370 (=> (not res!259739) (not e!258998))))

(assert (=> b!439370 (= res!259739 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202269 () ListLongMap!6593)

(assert (=> b!439370 (= lt!202269 (getCurrentListMapNoExtraKeys!1494 lt!202271 lt!202268 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!439370 (= lt!202268 (array!26946 (store (arr!12919 _values!549) i!563 (ValueCellFull!5445 v!412)) (size!13271 _values!549)))))

(declare-fun lt!202270 () ListLongMap!6593)

(assert (=> b!439370 (= lt!202270 (getCurrentListMapNoExtraKeys!1494 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18987 () Bool)

(assert (=> mapIsEmpty!18987 mapRes!18987))

(declare-fun b!439371 () Bool)

(declare-fun res!259744 () Bool)

(assert (=> b!439371 (=> (not res!259744) (not e!259000))))

(declare-fun arrayContainsKey!0 (array!26947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439371 (= res!259744 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!439372 () Bool)

(declare-fun res!259740 () Bool)

(assert (=> b!439372 (=> (not res!259740) (not e!259000))))

(assert (=> b!439372 (= res!259740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439373 () Bool)

(declare-fun res!259738 () Bool)

(assert (=> b!439373 (=> (not res!259738) (not e!259000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439373 (= res!259738 (validKeyInArray!0 k0!794))))

(declare-fun b!439374 () Bool)

(declare-fun res!259736 () Bool)

(assert (=> b!439374 (=> (not res!259736) (not e!259001))))

(assert (=> b!439374 (= res!259736 (arrayNoDuplicates!0 lt!202271 #b00000000000000000000000000000000 Nil!7708))))

(declare-fun b!439375 () Bool)

(declare-fun res!259743 () Bool)

(assert (=> b!439375 (=> (not res!259743) (not e!259000))))

(assert (=> b!439375 (= res!259743 (or (= (select (arr!12920 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12920 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439376 () Bool)

(assert (=> b!439376 (= e!258997 tp_is_empty!11577)))

(assert (= (and start!40166 res!259746) b!439363))

(assert (= (and b!439363 res!259737) b!439365))

(assert (= (and b!439365 res!259734) b!439372))

(assert (= (and b!439372 res!259740) b!439369))

(assert (= (and b!439369 res!259741) b!439366))

(assert (= (and b!439366 res!259745) b!439373))

(assert (= (and b!439373 res!259738) b!439375))

(assert (= (and b!439375 res!259743) b!439371))

(assert (= (and b!439371 res!259744) b!439367))

(assert (= (and b!439367 res!259735) b!439374))

(assert (= (and b!439374 res!259736) b!439364))

(assert (= (and b!439364 res!259742) b!439370))

(assert (= (and b!439370 res!259739) b!439368))

(assert (= (and b!439362 condMapEmpty!18987) mapIsEmpty!18987))

(assert (= (and b!439362 (not condMapEmpty!18987)) mapNonEmpty!18987))

(get-info :version)

(assert (= (and mapNonEmpty!18987 ((_ is ValueCellFull!5445) mapValue!18987)) b!439376))

(assert (= (and b!439362 ((_ is ValueCellFull!5445) mapDefault!18987)) b!439361))

(assert (= start!40166 b!439362))

(declare-fun m!426627 () Bool)

(assert (=> b!439373 m!426627))

(declare-fun m!426629 () Bool)

(assert (=> mapNonEmpty!18987 m!426629))

(declare-fun m!426631 () Bool)

(assert (=> b!439369 m!426631))

(declare-fun m!426633 () Bool)

(assert (=> b!439368 m!426633))

(declare-fun m!426635 () Bool)

(assert (=> b!439368 m!426635))

(assert (=> b!439368 m!426635))

(declare-fun m!426637 () Bool)

(assert (=> b!439368 m!426637))

(declare-fun m!426639 () Bool)

(assert (=> b!439368 m!426639))

(declare-fun m!426641 () Bool)

(assert (=> b!439370 m!426641))

(declare-fun m!426643 () Bool)

(assert (=> b!439370 m!426643))

(declare-fun m!426645 () Bool)

(assert (=> b!439370 m!426645))

(declare-fun m!426647 () Bool)

(assert (=> b!439375 m!426647))

(declare-fun m!426649 () Bool)

(assert (=> b!439367 m!426649))

(declare-fun m!426651 () Bool)

(assert (=> b!439367 m!426651))

(declare-fun m!426653 () Bool)

(assert (=> b!439363 m!426653))

(declare-fun m!426655 () Bool)

(assert (=> b!439374 m!426655))

(declare-fun m!426657 () Bool)

(assert (=> b!439372 m!426657))

(declare-fun m!426659 () Bool)

(assert (=> start!40166 m!426659))

(declare-fun m!426661 () Bool)

(assert (=> start!40166 m!426661))

(declare-fun m!426663 () Bool)

(assert (=> b!439371 m!426663))

(check-sat (not b!439372) (not b!439371) (not b!439369) b_and!18411 (not b_next!10425) (not start!40166) (not b!439373) (not b!439374) tp_is_empty!11577 (not b!439368) (not mapNonEmpty!18987) (not b!439363) (not b!439367) (not b!439370))
(check-sat b_and!18411 (not b_next!10425))
