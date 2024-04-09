; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39842 () Bool)

(assert start!39842)

(declare-fun b_free!10101 () Bool)

(declare-fun b_next!10101 () Bool)

(assert (=> start!39842 (= b_free!10101 (not b_next!10101))))

(declare-fun tp!35832 () Bool)

(declare-fun b_and!17879 () Bool)

(assert (=> start!39842 (= tp!35832 b_and!17879)))

(declare-fun b!430137 () Bool)

(declare-fun res!252799 () Bool)

(declare-fun e!254665 () Bool)

(assert (=> b!430137 (=> (not res!252799) (not e!254665))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430137 (= res!252799 (validMask!0 mask!1025))))

(declare-fun b!430139 () Bool)

(declare-fun res!252804 () Bool)

(assert (=> b!430139 (=> (not res!252804) (not e!254665))))

(declare-datatypes ((array!26319 0))(
  ( (array!26320 (arr!12606 (Array (_ BitVec 32) (_ BitVec 64))) (size!12958 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26319)

(declare-datatypes ((List!7455 0))(
  ( (Nil!7452) (Cons!7451 (h!8307 (_ BitVec 64)) (t!13013 List!7455)) )
))
(declare-fun arrayNoDuplicates!0 (array!26319 (_ BitVec 32) List!7455) Bool)

(assert (=> b!430139 (= res!252804 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7452))))

(declare-fun b!430140 () Bool)

(declare-fun res!252802 () Bool)

(assert (=> b!430140 (=> (not res!252802) (not e!254665))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16109 0))(
  ( (V!16110 (val!5671 Int)) )
))
(declare-datatypes ((ValueCell!5283 0))(
  ( (ValueCellFull!5283 (v!7914 V!16109)) (EmptyCell!5283) )
))
(declare-datatypes ((array!26321 0))(
  ( (array!26322 (arr!12607 (Array (_ BitVec 32) ValueCell!5283)) (size!12959 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26321)

(assert (=> b!430140 (= res!252802 (and (= (size!12959 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12958 _keys!709) (size!12959 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430141 () Bool)

(declare-fun e!254671 () Bool)

(declare-fun e!254672 () Bool)

(assert (=> b!430141 (= e!254671 (not e!254672))))

(declare-fun res!252798 () Bool)

(assert (=> b!430141 (=> res!252798 e!254672)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430141 (= res!252798 (not (validKeyInArray!0 (select (arr!12606 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7402 0))(
  ( (tuple2!7403 (_1!3711 (_ BitVec 64)) (_2!3711 V!16109)) )
))
(declare-datatypes ((List!7456 0))(
  ( (Nil!7453) (Cons!7452 (h!8308 tuple2!7402) (t!13014 List!7456)) )
))
(declare-datatypes ((ListLongMap!6329 0))(
  ( (ListLongMap!6330 (toList!3180 List!7456)) )
))
(declare-fun lt!196740 () ListLongMap!6329)

(declare-fun lt!196749 () ListLongMap!6329)

(assert (=> b!430141 (= lt!196740 lt!196749)))

(declare-fun lt!196747 () ListLongMap!6329)

(declare-fun lt!196743 () tuple2!7402)

(declare-fun +!1329 (ListLongMap!6329 tuple2!7402) ListLongMap!6329)

(assert (=> b!430141 (= lt!196749 (+!1329 lt!196747 lt!196743))))

(declare-fun minValue!515 () V!16109)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16109)

(declare-fun lt!196744 () array!26321)

(declare-fun lt!196751 () array!26319)

(declare-fun getCurrentListMapNoExtraKeys!1377 (array!26319 array!26321 (_ BitVec 32) (_ BitVec 32) V!16109 V!16109 (_ BitVec 32) Int) ListLongMap!6329)

(assert (=> b!430141 (= lt!196740 (getCurrentListMapNoExtraKeys!1377 lt!196751 lt!196744 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16109)

(assert (=> b!430141 (= lt!196743 (tuple2!7403 k0!794 v!412))))

(assert (=> b!430141 (= lt!196747 (getCurrentListMapNoExtraKeys!1377 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12620 0))(
  ( (Unit!12621) )
))
(declare-fun lt!196738 () Unit!12620)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!525 (array!26319 array!26321 (_ BitVec 32) (_ BitVec 32) V!16109 V!16109 (_ BitVec 32) (_ BitVec 64) V!16109 (_ BitVec 32) Int) Unit!12620)

(assert (=> b!430141 (= lt!196738 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!525 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430142 () Bool)

(declare-fun res!252805 () Bool)

(declare-fun e!254666 () Bool)

(assert (=> b!430142 (=> (not res!252805) (not e!254666))))

(assert (=> b!430142 (= res!252805 (arrayNoDuplicates!0 lt!196751 #b00000000000000000000000000000000 Nil!7452))))

(declare-fun b!430143 () Bool)

(declare-fun e!254667 () Unit!12620)

(declare-fun Unit!12622 () Unit!12620)

(assert (=> b!430143 (= e!254667 Unit!12622)))

(declare-fun mapNonEmpty!18501 () Bool)

(declare-fun mapRes!18501 () Bool)

(declare-fun tp!35831 () Bool)

(declare-fun e!254673 () Bool)

(assert (=> mapNonEmpty!18501 (= mapRes!18501 (and tp!35831 e!254673))))

(declare-fun mapRest!18501 () (Array (_ BitVec 32) ValueCell!5283))

(declare-fun mapKey!18501 () (_ BitVec 32))

(declare-fun mapValue!18501 () ValueCell!5283)

(assert (=> mapNonEmpty!18501 (= (arr!12607 _values!549) (store mapRest!18501 mapKey!18501 mapValue!18501))))

(declare-fun mapIsEmpty!18501 () Bool)

(assert (=> mapIsEmpty!18501 mapRes!18501))

(declare-fun b!430144 () Bool)

(declare-fun res!252809 () Bool)

(assert (=> b!430144 (=> (not res!252809) (not e!254665))))

(declare-fun arrayContainsKey!0 (array!26319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430144 (= res!252809 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!430145 () Bool)

(declare-fun e!254674 () Bool)

(declare-fun tp_is_empty!11253 () Bool)

(assert (=> b!430145 (= e!254674 tp_is_empty!11253)))

(declare-fun b!430146 () Bool)

(declare-fun res!252796 () Bool)

(assert (=> b!430146 (=> (not res!252796) (not e!254665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26319 (_ BitVec 32)) Bool)

(assert (=> b!430146 (= res!252796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430147 () Bool)

(assert (=> b!430147 (= e!254665 e!254666)))

(declare-fun res!252810 () Bool)

(assert (=> b!430147 (=> (not res!252810) (not e!254666))))

(assert (=> b!430147 (= res!252810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196751 mask!1025))))

(assert (=> b!430147 (= lt!196751 (array!26320 (store (arr!12606 _keys!709) i!563 k0!794) (size!12958 _keys!709)))))

(declare-fun b!430148 () Bool)

(declare-fun e!254670 () Bool)

(assert (=> b!430148 (= e!254670 (and e!254674 mapRes!18501))))

(declare-fun condMapEmpty!18501 () Bool)

(declare-fun mapDefault!18501 () ValueCell!5283)

(assert (=> b!430148 (= condMapEmpty!18501 (= (arr!12607 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5283)) mapDefault!18501)))))

(declare-fun b!430149 () Bool)

(declare-fun res!252808 () Bool)

(assert (=> b!430149 (=> (not res!252808) (not e!254666))))

(assert (=> b!430149 (= res!252808 (bvsle from!863 i!563))))

(declare-fun b!430150 () Bool)

(declare-fun res!252801 () Bool)

(assert (=> b!430150 (=> (not res!252801) (not e!254665))))

(assert (=> b!430150 (= res!252801 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12958 _keys!709))))))

(declare-fun b!430138 () Bool)

(declare-fun res!252800 () Bool)

(assert (=> b!430138 (=> (not res!252800) (not e!254665))))

(assert (=> b!430138 (= res!252800 (validKeyInArray!0 k0!794))))

(declare-fun res!252803 () Bool)

(assert (=> start!39842 (=> (not res!252803) (not e!254665))))

(assert (=> start!39842 (= res!252803 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12958 _keys!709))))))

(assert (=> start!39842 e!254665))

(assert (=> start!39842 tp_is_empty!11253))

(assert (=> start!39842 tp!35832))

(assert (=> start!39842 true))

(declare-fun array_inv!9170 (array!26321) Bool)

(assert (=> start!39842 (and (array_inv!9170 _values!549) e!254670)))

(declare-fun array_inv!9171 (array!26319) Bool)

(assert (=> start!39842 (array_inv!9171 _keys!709)))

(declare-fun b!430151 () Bool)

(declare-fun res!252806 () Bool)

(assert (=> b!430151 (=> (not res!252806) (not e!254665))))

(assert (=> b!430151 (= res!252806 (or (= (select (arr!12606 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12606 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430152 () Bool)

(assert (=> b!430152 (= e!254673 tp_is_empty!11253)))

(declare-fun b!430153 () Bool)

(declare-fun e!254669 () Bool)

(assert (=> b!430153 (= e!254669 true)))

(declare-fun lt!196750 () tuple2!7402)

(declare-fun lt!196741 () ListLongMap!6329)

(assert (=> b!430153 (= lt!196741 (+!1329 (+!1329 lt!196747 lt!196750) lt!196743))))

(declare-fun lt!196752 () Unit!12620)

(declare-fun lt!196746 () V!16109)

(declare-fun addCommutativeForDiffKeys!348 (ListLongMap!6329 (_ BitVec 64) V!16109 (_ BitVec 64) V!16109) Unit!12620)

(assert (=> b!430153 (= lt!196752 (addCommutativeForDiffKeys!348 lt!196747 k0!794 v!412 (select (arr!12606 _keys!709) from!863) lt!196746))))

(declare-fun b!430154 () Bool)

(assert (=> b!430154 (= e!254672 e!254669)))

(declare-fun res!252797 () Bool)

(assert (=> b!430154 (=> res!252797 e!254669)))

(assert (=> b!430154 (= res!252797 (= k0!794 (select (arr!12606 _keys!709) from!863)))))

(assert (=> b!430154 (not (= (select (arr!12606 _keys!709) from!863) k0!794))))

(declare-fun lt!196745 () Unit!12620)

(assert (=> b!430154 (= lt!196745 e!254667)))

(declare-fun c!55412 () Bool)

(assert (=> b!430154 (= c!55412 (= (select (arr!12606 _keys!709) from!863) k0!794))))

(declare-fun lt!196748 () ListLongMap!6329)

(assert (=> b!430154 (= lt!196748 lt!196741)))

(assert (=> b!430154 (= lt!196741 (+!1329 lt!196749 lt!196750))))

(assert (=> b!430154 (= lt!196750 (tuple2!7403 (select (arr!12606 _keys!709) from!863) lt!196746))))

(declare-fun get!6262 (ValueCell!5283 V!16109) V!16109)

(declare-fun dynLambda!775 (Int (_ BitVec 64)) V!16109)

(assert (=> b!430154 (= lt!196746 (get!6262 (select (arr!12607 _values!549) from!863) (dynLambda!775 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430155 () Bool)

(assert (=> b!430155 (= e!254666 e!254671)))

(declare-fun res!252807 () Bool)

(assert (=> b!430155 (=> (not res!252807) (not e!254671))))

(assert (=> b!430155 (= res!252807 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!430155 (= lt!196748 (getCurrentListMapNoExtraKeys!1377 lt!196751 lt!196744 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!430155 (= lt!196744 (array!26322 (store (arr!12607 _values!549) i!563 (ValueCellFull!5283 v!412)) (size!12959 _values!549)))))

(declare-fun lt!196739 () ListLongMap!6329)

(assert (=> b!430155 (= lt!196739 (getCurrentListMapNoExtraKeys!1377 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430156 () Bool)

(declare-fun Unit!12623 () Unit!12620)

(assert (=> b!430156 (= e!254667 Unit!12623)))

(declare-fun lt!196742 () Unit!12620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26319 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12620)

(assert (=> b!430156 (= lt!196742 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430156 false))

(assert (= (and start!39842 res!252803) b!430137))

(assert (= (and b!430137 res!252799) b!430140))

(assert (= (and b!430140 res!252802) b!430146))

(assert (= (and b!430146 res!252796) b!430139))

(assert (= (and b!430139 res!252804) b!430150))

(assert (= (and b!430150 res!252801) b!430138))

(assert (= (and b!430138 res!252800) b!430151))

(assert (= (and b!430151 res!252806) b!430144))

(assert (= (and b!430144 res!252809) b!430147))

(assert (= (and b!430147 res!252810) b!430142))

(assert (= (and b!430142 res!252805) b!430149))

(assert (= (and b!430149 res!252808) b!430155))

(assert (= (and b!430155 res!252807) b!430141))

(assert (= (and b!430141 (not res!252798)) b!430154))

(assert (= (and b!430154 c!55412) b!430156))

(assert (= (and b!430154 (not c!55412)) b!430143))

(assert (= (and b!430154 (not res!252797)) b!430153))

(assert (= (and b!430148 condMapEmpty!18501) mapIsEmpty!18501))

(assert (= (and b!430148 (not condMapEmpty!18501)) mapNonEmpty!18501))

(get-info :version)

(assert (= (and mapNonEmpty!18501 ((_ is ValueCellFull!5283) mapValue!18501)) b!430152))

(assert (= (and b!430148 ((_ is ValueCellFull!5283) mapDefault!18501)) b!430145))

(assert (= start!39842 b!430148))

(declare-fun b_lambda!9219 () Bool)

(assert (=> (not b_lambda!9219) (not b!430154)))

(declare-fun t!13012 () Bool)

(declare-fun tb!3515 () Bool)

(assert (=> (and start!39842 (= defaultEntry!557 defaultEntry!557) t!13012) tb!3515))

(declare-fun result!6549 () Bool)

(assert (=> tb!3515 (= result!6549 tp_is_empty!11253)))

(assert (=> b!430154 t!13012))

(declare-fun b_and!17881 () Bool)

(assert (= b_and!17879 (and (=> t!13012 result!6549) b_and!17881)))

(declare-fun m!418391 () Bool)

(assert (=> b!430142 m!418391))

(declare-fun m!418393 () Bool)

(assert (=> b!430138 m!418393))

(declare-fun m!418395 () Bool)

(assert (=> b!430153 m!418395))

(assert (=> b!430153 m!418395))

(declare-fun m!418397 () Bool)

(assert (=> b!430153 m!418397))

(declare-fun m!418399 () Bool)

(assert (=> b!430153 m!418399))

(assert (=> b!430153 m!418399))

(declare-fun m!418401 () Bool)

(assert (=> b!430153 m!418401))

(declare-fun m!418403 () Bool)

(assert (=> b!430144 m!418403))

(declare-fun m!418405 () Bool)

(assert (=> b!430156 m!418405))

(declare-fun m!418407 () Bool)

(assert (=> b!430155 m!418407))

(declare-fun m!418409 () Bool)

(assert (=> b!430155 m!418409))

(declare-fun m!418411 () Bool)

(assert (=> b!430155 m!418411))

(declare-fun m!418413 () Bool)

(assert (=> b!430147 m!418413))

(declare-fun m!418415 () Bool)

(assert (=> b!430147 m!418415))

(assert (=> b!430141 m!418399))

(declare-fun m!418417 () Bool)

(assert (=> b!430141 m!418417))

(declare-fun m!418419 () Bool)

(assert (=> b!430141 m!418419))

(declare-fun m!418421 () Bool)

(assert (=> b!430141 m!418421))

(assert (=> b!430141 m!418399))

(declare-fun m!418423 () Bool)

(assert (=> b!430141 m!418423))

(declare-fun m!418425 () Bool)

(assert (=> b!430141 m!418425))

(assert (=> b!430154 m!418399))

(declare-fun m!418427 () Bool)

(assert (=> b!430154 m!418427))

(declare-fun m!418429 () Bool)

(assert (=> b!430154 m!418429))

(declare-fun m!418431 () Bool)

(assert (=> b!430154 m!418431))

(assert (=> b!430154 m!418429))

(assert (=> b!430154 m!418427))

(declare-fun m!418433 () Bool)

(assert (=> b!430154 m!418433))

(declare-fun m!418435 () Bool)

(assert (=> mapNonEmpty!18501 m!418435))

(declare-fun m!418437 () Bool)

(assert (=> b!430146 m!418437))

(declare-fun m!418439 () Bool)

(assert (=> start!39842 m!418439))

(declare-fun m!418441 () Bool)

(assert (=> start!39842 m!418441))

(declare-fun m!418443 () Bool)

(assert (=> b!430137 m!418443))

(declare-fun m!418445 () Bool)

(assert (=> b!430139 m!418445))

(declare-fun m!418447 () Bool)

(assert (=> b!430151 m!418447))

(check-sat (not b!430139) (not b!430144) (not b!430155) (not b!430142) (not b_next!10101) (not b!430141) (not b!430146) (not b!430156) (not b!430147) b_and!17881 (not b!430138) (not b_lambda!9219) (not start!39842) (not b!430153) (not mapNonEmpty!18501) (not b!430154) tp_is_empty!11253 (not b!430137))
(check-sat b_and!17881 (not b_next!10101))
