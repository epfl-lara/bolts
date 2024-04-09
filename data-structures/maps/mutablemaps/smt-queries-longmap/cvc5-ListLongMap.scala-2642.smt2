; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39678 () Bool)

(assert start!39678)

(declare-fun b_free!9937 () Bool)

(declare-fun b_next!9937 () Bool)

(assert (=> start!39678 (= b_free!9937 (not b_next!9937))))

(declare-fun tp!35339 () Bool)

(declare-fun b_and!17611 () Bool)

(assert (=> start!39678 (= tp!35339 b_and!17611)))

(declare-fun b!425708 () Bool)

(declare-fun res!249422 () Bool)

(declare-fun e!252663 () Bool)

(assert (=> b!425708 (=> (not res!249422) (not e!252663))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26003 0))(
  ( (array!26004 (arr!12448 (Array (_ BitVec 32) (_ BitVec 64))) (size!12800 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26003)

(assert (=> b!425708 (= res!249422 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12800 _keys!709))))))

(declare-fun b!425709 () Bool)

(declare-fun res!249419 () Bool)

(declare-fun e!252662 () Bool)

(assert (=> b!425709 (=> (not res!249419) (not e!252662))))

(declare-fun lt!194756 () array!26003)

(declare-datatypes ((List!7327 0))(
  ( (Nil!7324) (Cons!7323 (h!8179 (_ BitVec 64)) (t!12779 List!7327)) )
))
(declare-fun arrayNoDuplicates!0 (array!26003 (_ BitVec 32) List!7327) Bool)

(assert (=> b!425709 (= res!249419 (arrayNoDuplicates!0 lt!194756 #b00000000000000000000000000000000 Nil!7324))))

(declare-fun b!425710 () Bool)

(declare-fun res!249425 () Bool)

(assert (=> b!425710 (=> (not res!249425) (not e!252663))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15891 0))(
  ( (V!15892 (val!5589 Int)) )
))
(declare-datatypes ((ValueCell!5201 0))(
  ( (ValueCellFull!5201 (v!7832 V!15891)) (EmptyCell!5201) )
))
(declare-datatypes ((array!26005 0))(
  ( (array!26006 (arr!12449 (Array (_ BitVec 32) ValueCell!5201)) (size!12801 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26005)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!425710 (= res!249425 (and (= (size!12801 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12800 _keys!709) (size!12801 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425711 () Bool)

(assert (=> b!425711 (= e!252663 e!252662)))

(declare-fun res!249420 () Bool)

(assert (=> b!425711 (=> (not res!249420) (not e!252662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26003 (_ BitVec 32)) Bool)

(assert (=> b!425711 (= res!249420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194756 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!425711 (= lt!194756 (array!26004 (store (arr!12448 _keys!709) i!563 k!794) (size!12800 _keys!709)))))

(declare-fun b!425712 () Bool)

(declare-fun e!252664 () Bool)

(assert (=> b!425712 (= e!252664 (not true))))

(declare-fun minValue!515 () V!15891)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15891)

(declare-fun lt!194758 () array!26005)

(declare-fun v!412 () V!15891)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7282 0))(
  ( (tuple2!7283 (_1!3651 (_ BitVec 64)) (_2!3651 V!15891)) )
))
(declare-datatypes ((List!7328 0))(
  ( (Nil!7325) (Cons!7324 (h!8180 tuple2!7282) (t!12780 List!7328)) )
))
(declare-datatypes ((ListLongMap!6209 0))(
  ( (ListLongMap!6210 (toList!3120 List!7328)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1321 (array!26003 array!26005 (_ BitVec 32) (_ BitVec 32) V!15891 V!15891 (_ BitVec 32) Int) ListLongMap!6209)

(declare-fun +!1278 (ListLongMap!6209 tuple2!7282) ListLongMap!6209)

(assert (=> b!425712 (= (getCurrentListMapNoExtraKeys!1321 lt!194756 lt!194758 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1278 (getCurrentListMapNoExtraKeys!1321 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7283 k!794 v!412)))))

(declare-datatypes ((Unit!12459 0))(
  ( (Unit!12460) )
))
(declare-fun lt!194759 () Unit!12459)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!480 (array!26003 array!26005 (_ BitVec 32) (_ BitVec 32) V!15891 V!15891 (_ BitVec 32) (_ BitVec 64) V!15891 (_ BitVec 32) Int) Unit!12459)

(assert (=> b!425712 (= lt!194759 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!480 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18255 () Bool)

(declare-fun mapRes!18255 () Bool)

(assert (=> mapIsEmpty!18255 mapRes!18255))

(declare-fun res!249418 () Bool)

(assert (=> start!39678 (=> (not res!249418) (not e!252663))))

(assert (=> start!39678 (= res!249418 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12800 _keys!709))))))

(assert (=> start!39678 e!252663))

(declare-fun tp_is_empty!11089 () Bool)

(assert (=> start!39678 tp_is_empty!11089))

(assert (=> start!39678 tp!35339))

(assert (=> start!39678 true))

(declare-fun e!252660 () Bool)

(declare-fun array_inv!9072 (array!26005) Bool)

(assert (=> start!39678 (and (array_inv!9072 _values!549) e!252660)))

(declare-fun array_inv!9073 (array!26003) Bool)

(assert (=> start!39678 (array_inv!9073 _keys!709)))

(declare-fun b!425713 () Bool)

(declare-fun res!249429 () Bool)

(assert (=> b!425713 (=> (not res!249429) (not e!252663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425713 (= res!249429 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!18255 () Bool)

(declare-fun tp!35340 () Bool)

(declare-fun e!252659 () Bool)

(assert (=> mapNonEmpty!18255 (= mapRes!18255 (and tp!35340 e!252659))))

(declare-fun mapKey!18255 () (_ BitVec 32))

(declare-fun mapRest!18255 () (Array (_ BitVec 32) ValueCell!5201))

(declare-fun mapValue!18255 () ValueCell!5201)

(assert (=> mapNonEmpty!18255 (= (arr!12449 _values!549) (store mapRest!18255 mapKey!18255 mapValue!18255))))

(declare-fun b!425714 () Bool)

(declare-fun res!249421 () Bool)

(assert (=> b!425714 (=> (not res!249421) (not e!252663))))

(assert (=> b!425714 (= res!249421 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7324))))

(declare-fun b!425715 () Bool)

(declare-fun res!249427 () Bool)

(assert (=> b!425715 (=> (not res!249427) (not e!252663))))

(declare-fun arrayContainsKey!0 (array!26003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425715 (= res!249427 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425716 () Bool)

(declare-fun e!252661 () Bool)

(assert (=> b!425716 (= e!252661 tp_is_empty!11089)))

(declare-fun b!425717 () Bool)

(declare-fun res!249426 () Bool)

(assert (=> b!425717 (=> (not res!249426) (not e!252662))))

(assert (=> b!425717 (= res!249426 (bvsle from!863 i!563))))

(declare-fun b!425718 () Bool)

(assert (=> b!425718 (= e!252662 e!252664)))

(declare-fun res!249423 () Bool)

(assert (=> b!425718 (=> (not res!249423) (not e!252664))))

(assert (=> b!425718 (= res!249423 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194760 () ListLongMap!6209)

(assert (=> b!425718 (= lt!194760 (getCurrentListMapNoExtraKeys!1321 lt!194756 lt!194758 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425718 (= lt!194758 (array!26006 (store (arr!12449 _values!549) i!563 (ValueCellFull!5201 v!412)) (size!12801 _values!549)))))

(declare-fun lt!194757 () ListLongMap!6209)

(assert (=> b!425718 (= lt!194757 (getCurrentListMapNoExtraKeys!1321 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425719 () Bool)

(assert (=> b!425719 (= e!252659 tp_is_empty!11089)))

(declare-fun b!425720 () Bool)

(declare-fun res!249424 () Bool)

(assert (=> b!425720 (=> (not res!249424) (not e!252663))))

(assert (=> b!425720 (= res!249424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425721 () Bool)

(declare-fun res!249417 () Bool)

(assert (=> b!425721 (=> (not res!249417) (not e!252663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425721 (= res!249417 (validMask!0 mask!1025))))

(declare-fun b!425722 () Bool)

(declare-fun res!249428 () Bool)

(assert (=> b!425722 (=> (not res!249428) (not e!252663))))

(assert (=> b!425722 (= res!249428 (or (= (select (arr!12448 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12448 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425723 () Bool)

(assert (=> b!425723 (= e!252660 (and e!252661 mapRes!18255))))

(declare-fun condMapEmpty!18255 () Bool)

(declare-fun mapDefault!18255 () ValueCell!5201)

