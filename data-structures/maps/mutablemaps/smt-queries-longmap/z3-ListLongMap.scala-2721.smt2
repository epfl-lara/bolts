; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40154 () Bool)

(assert start!40154)

(declare-fun b_free!10413 () Bool)

(declare-fun b_next!10413 () Bool)

(assert (=> start!40154 (= b_free!10413 (not b_next!10413))))

(declare-fun tp!36768 () Bool)

(declare-fun b_and!18399 () Bool)

(assert (=> start!40154 (= tp!36768 b_and!18399)))

(declare-fun b!439073 () Bool)

(declare-fun res!259510 () Bool)

(declare-fun e!258877 () Bool)

(assert (=> b!439073 (=> (not res!259510) (not e!258877))))

(declare-datatypes ((array!26921 0))(
  ( (array!26922 (arr!12907 (Array (_ BitVec 32) (_ BitVec 64))) (size!13259 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26921)

(declare-datatypes ((List!7701 0))(
  ( (Nil!7698) (Cons!7697 (h!8553 (_ BitVec 64)) (t!13465 List!7701)) )
))
(declare-fun arrayNoDuplicates!0 (array!26921 (_ BitVec 32) List!7701) Bool)

(assert (=> b!439073 (= res!259510 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7698))))

(declare-fun b!439074 () Bool)

(declare-fun e!258873 () Bool)

(declare-fun e!258871 () Bool)

(assert (=> b!439074 (= e!258873 e!258871)))

(declare-fun res!259504 () Bool)

(assert (=> b!439074 (=> (not res!259504) (not e!258871))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439074 (= res!259504 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16525 0))(
  ( (V!16526 (val!5827 Int)) )
))
(declare-fun minValue!515 () V!16525)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7658 0))(
  ( (tuple2!7659 (_1!3839 (_ BitVec 64)) (_2!3839 V!16525)) )
))
(declare-datatypes ((List!7702 0))(
  ( (Nil!7699) (Cons!7698 (h!8554 tuple2!7658) (t!13466 List!7702)) )
))
(declare-datatypes ((ListLongMap!6585 0))(
  ( (ListLongMap!6586 (toList!3308 List!7702)) )
))
(declare-fun lt!202180 () ListLongMap!6585)

(declare-fun zeroValue!515 () V!16525)

(declare-datatypes ((ValueCell!5439 0))(
  ( (ValueCellFull!5439 (v!8070 V!16525)) (EmptyCell!5439) )
))
(declare-datatypes ((array!26923 0))(
  ( (array!26924 (arr!12908 (Array (_ BitVec 32) ValueCell!5439)) (size!13260 (_ BitVec 32))) )
))
(declare-fun lt!202181 () array!26923)

(declare-fun lt!202178 () array!26921)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1490 (array!26921 array!26923 (_ BitVec 32) (_ BitVec 32) V!16525 V!16525 (_ BitVec 32) Int) ListLongMap!6585)

(assert (=> b!439074 (= lt!202180 (getCurrentListMapNoExtraKeys!1490 lt!202178 lt!202181 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26923)

(declare-fun v!412 () V!16525)

(assert (=> b!439074 (= lt!202181 (array!26924 (store (arr!12908 _values!549) i!563 (ValueCellFull!5439 v!412)) (size!13260 _values!549)))))

(declare-fun lt!202182 () ListLongMap!6585)

(assert (=> b!439074 (= lt!202182 (getCurrentListMapNoExtraKeys!1490 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439075 () Bool)

(declare-fun res!259506 () Bool)

(assert (=> b!439075 (=> (not res!259506) (not e!258873))))

(assert (=> b!439075 (= res!259506 (arrayNoDuplicates!0 lt!202178 #b00000000000000000000000000000000 Nil!7698))))

(declare-fun b!439076 () Bool)

(declare-fun res!259501 () Bool)

(assert (=> b!439076 (=> (not res!259501) (not e!258877))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439076 (= res!259501 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!439077 () Bool)

(declare-fun res!259502 () Bool)

(assert (=> b!439077 (=> (not res!259502) (not e!258877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439077 (= res!259502 (validKeyInArray!0 k0!794))))

(declare-fun b!439078 () Bool)

(declare-fun res!259509 () Bool)

(assert (=> b!439078 (=> (not res!259509) (not e!258873))))

(assert (=> b!439078 (= res!259509 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18969 () Bool)

(declare-fun mapRes!18969 () Bool)

(assert (=> mapIsEmpty!18969 mapRes!18969))

(declare-fun b!439079 () Bool)

(declare-fun e!258874 () Bool)

(declare-fun tp_is_empty!11565 () Bool)

(assert (=> b!439079 (= e!258874 tp_is_empty!11565)))

(declare-fun res!259503 () Bool)

(assert (=> start!40154 (=> (not res!259503) (not e!258877))))

(assert (=> start!40154 (= res!259503 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13259 _keys!709))))))

(assert (=> start!40154 e!258877))

(assert (=> start!40154 tp_is_empty!11565))

(assert (=> start!40154 tp!36768))

(assert (=> start!40154 true))

(declare-fun e!258875 () Bool)

(declare-fun array_inv!9364 (array!26923) Bool)

(assert (=> start!40154 (and (array_inv!9364 _values!549) e!258875)))

(declare-fun array_inv!9365 (array!26921) Bool)

(assert (=> start!40154 (array_inv!9365 _keys!709)))

(declare-fun b!439080 () Bool)

(declare-fun e!258876 () Bool)

(assert (=> b!439080 (= e!258875 (and e!258876 mapRes!18969))))

(declare-fun condMapEmpty!18969 () Bool)

(declare-fun mapDefault!18969 () ValueCell!5439)

(assert (=> b!439080 (= condMapEmpty!18969 (= (arr!12908 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5439)) mapDefault!18969)))))

(declare-fun b!439081 () Bool)

(assert (=> b!439081 (= e!258876 tp_is_empty!11565)))

(declare-fun b!439082 () Bool)

(assert (=> b!439082 (= e!258871 (not true))))

(declare-fun +!1447 (ListLongMap!6585 tuple2!7658) ListLongMap!6585)

(assert (=> b!439082 (= (getCurrentListMapNoExtraKeys!1490 lt!202178 lt!202181 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1447 (getCurrentListMapNoExtraKeys!1490 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7659 k0!794 v!412)))))

(declare-datatypes ((Unit!13009 0))(
  ( (Unit!13010) )
))
(declare-fun lt!202179 () Unit!13009)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!625 (array!26921 array!26923 (_ BitVec 32) (_ BitVec 32) V!16525 V!16525 (_ BitVec 32) (_ BitVec 64) V!16525 (_ BitVec 32) Int) Unit!13009)

(assert (=> b!439082 (= lt!202179 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!625 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18969 () Bool)

(declare-fun tp!36767 () Bool)

(assert (=> mapNonEmpty!18969 (= mapRes!18969 (and tp!36767 e!258874))))

(declare-fun mapValue!18969 () ValueCell!5439)

(declare-fun mapKey!18969 () (_ BitVec 32))

(declare-fun mapRest!18969 () (Array (_ BitVec 32) ValueCell!5439))

(assert (=> mapNonEmpty!18969 (= (arr!12908 _values!549) (store mapRest!18969 mapKey!18969 mapValue!18969))))

(declare-fun b!439083 () Bool)

(declare-fun res!259508 () Bool)

(assert (=> b!439083 (=> (not res!259508) (not e!258877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439083 (= res!259508 (validMask!0 mask!1025))))

(declare-fun b!439084 () Bool)

(declare-fun res!259507 () Bool)

(assert (=> b!439084 (=> (not res!259507) (not e!258877))))

(assert (=> b!439084 (= res!259507 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13259 _keys!709))))))

(declare-fun b!439085 () Bool)

(declare-fun res!259500 () Bool)

(assert (=> b!439085 (=> (not res!259500) (not e!258877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26921 (_ BitVec 32)) Bool)

(assert (=> b!439085 (= res!259500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439086 () Bool)

(declare-fun res!259511 () Bool)

(assert (=> b!439086 (=> (not res!259511) (not e!258877))))

(assert (=> b!439086 (= res!259511 (and (= (size!13260 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13259 _keys!709) (size!13260 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439087 () Bool)

(assert (=> b!439087 (= e!258877 e!258873)))

(declare-fun res!259512 () Bool)

(assert (=> b!439087 (=> (not res!259512) (not e!258873))))

(assert (=> b!439087 (= res!259512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202178 mask!1025))))

(assert (=> b!439087 (= lt!202178 (array!26922 (store (arr!12907 _keys!709) i!563 k0!794) (size!13259 _keys!709)))))

(declare-fun b!439088 () Bool)

(declare-fun res!259505 () Bool)

(assert (=> b!439088 (=> (not res!259505) (not e!258877))))

(assert (=> b!439088 (= res!259505 (or (= (select (arr!12907 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12907 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40154 res!259503) b!439083))

(assert (= (and b!439083 res!259508) b!439086))

(assert (= (and b!439086 res!259511) b!439085))

(assert (= (and b!439085 res!259500) b!439073))

(assert (= (and b!439073 res!259510) b!439084))

(assert (= (and b!439084 res!259507) b!439077))

(assert (= (and b!439077 res!259502) b!439088))

(assert (= (and b!439088 res!259505) b!439076))

(assert (= (and b!439076 res!259501) b!439087))

(assert (= (and b!439087 res!259512) b!439075))

(assert (= (and b!439075 res!259506) b!439078))

(assert (= (and b!439078 res!259509) b!439074))

(assert (= (and b!439074 res!259504) b!439082))

(assert (= (and b!439080 condMapEmpty!18969) mapIsEmpty!18969))

(assert (= (and b!439080 (not condMapEmpty!18969)) mapNonEmpty!18969))

(get-info :version)

(assert (= (and mapNonEmpty!18969 ((_ is ValueCellFull!5439) mapValue!18969)) b!439079))

(assert (= (and b!439080 ((_ is ValueCellFull!5439) mapDefault!18969)) b!439081))

(assert (= start!40154 b!439080))

(declare-fun m!426399 () Bool)

(assert (=> b!439083 m!426399))

(declare-fun m!426401 () Bool)

(assert (=> b!439087 m!426401))

(declare-fun m!426403 () Bool)

(assert (=> b!439087 m!426403))

(declare-fun m!426405 () Bool)

(assert (=> b!439077 m!426405))

(declare-fun m!426407 () Bool)

(assert (=> b!439073 m!426407))

(declare-fun m!426409 () Bool)

(assert (=> start!40154 m!426409))

(declare-fun m!426411 () Bool)

(assert (=> start!40154 m!426411))

(declare-fun m!426413 () Bool)

(assert (=> b!439074 m!426413))

(declare-fun m!426415 () Bool)

(assert (=> b!439074 m!426415))

(declare-fun m!426417 () Bool)

(assert (=> b!439074 m!426417))

(declare-fun m!426419 () Bool)

(assert (=> b!439088 m!426419))

(declare-fun m!426421 () Bool)

(assert (=> b!439075 m!426421))

(declare-fun m!426423 () Bool)

(assert (=> b!439085 m!426423))

(declare-fun m!426425 () Bool)

(assert (=> mapNonEmpty!18969 m!426425))

(declare-fun m!426427 () Bool)

(assert (=> b!439076 m!426427))

(declare-fun m!426429 () Bool)

(assert (=> b!439082 m!426429))

(declare-fun m!426431 () Bool)

(assert (=> b!439082 m!426431))

(assert (=> b!439082 m!426431))

(declare-fun m!426433 () Bool)

(assert (=> b!439082 m!426433))

(declare-fun m!426435 () Bool)

(assert (=> b!439082 m!426435))

(check-sat tp_is_empty!11565 (not b!439087) (not b!439083) (not b!439085) (not b!439076) (not mapNonEmpty!18969) (not b!439075) (not b!439082) (not b!439073) (not b!439077) (not start!40154) (not b_next!10413) b_and!18399 (not b!439074))
(check-sat b_and!18399 (not b_next!10413))
