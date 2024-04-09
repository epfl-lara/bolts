; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39920 () Bool)

(assert start!39920)

(declare-fun b_free!10179 () Bool)

(declare-fun b_next!10179 () Bool)

(assert (=> start!39920 (= b_free!10179 (not b_next!10179))))

(declare-fun tp!36065 () Bool)

(declare-fun b_and!18035 () Bool)

(assert (=> start!39920 (= tp!36065 b_and!18035)))

(declare-fun b!432555 () Bool)

(declare-fun e!255836 () Bool)

(declare-fun e!255835 () Bool)

(assert (=> b!432555 (= e!255836 e!255835)))

(declare-fun res!254565 () Bool)

(assert (=> b!432555 (=> (not res!254565) (not e!255835))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432555 (= res!254565 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16213 0))(
  ( (V!16214 (val!5710 Int)) )
))
(declare-datatypes ((ValueCell!5322 0))(
  ( (ValueCellFull!5322 (v!7953 V!16213)) (EmptyCell!5322) )
))
(declare-datatypes ((array!26473 0))(
  ( (array!26474 (arr!12683 (Array (_ BitVec 32) ValueCell!5322)) (size!13035 (_ BitVec 32))) )
))
(declare-fun lt!198506 () array!26473)

(declare-datatypes ((array!26475 0))(
  ( (array!26476 (arr!12684 (Array (_ BitVec 32) (_ BitVec 64))) (size!13036 (_ BitVec 32))) )
))
(declare-fun lt!198499 () array!26475)

(declare-fun minValue!515 () V!16213)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7474 0))(
  ( (tuple2!7475 (_1!3747 (_ BitVec 64)) (_2!3747 V!16213)) )
))
(declare-datatypes ((List!7524 0))(
  ( (Nil!7521) (Cons!7520 (h!8376 tuple2!7474) (t!13160 List!7524)) )
))
(declare-datatypes ((ListLongMap!6401 0))(
  ( (ListLongMap!6402 (toList!3216 List!7524)) )
))
(declare-fun lt!198498 () ListLongMap!6401)

(declare-fun zeroValue!515 () V!16213)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1406 (array!26475 array!26473 (_ BitVec 32) (_ BitVec 32) V!16213 V!16213 (_ BitVec 32) Int) ListLongMap!6401)

(assert (=> b!432555 (= lt!198498 (getCurrentListMapNoExtraKeys!1406 lt!198499 lt!198506 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26473)

(declare-fun v!412 () V!16213)

(assert (=> b!432555 (= lt!198506 (array!26474 (store (arr!12683 _values!549) i!563 (ValueCellFull!5322 v!412)) (size!13035 _values!549)))))

(declare-fun lt!198496 () ListLongMap!6401)

(declare-fun _keys!709 () array!26475)

(assert (=> b!432555 (= lt!198496 (getCurrentListMapNoExtraKeys!1406 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432556 () Bool)

(declare-fun e!255841 () Bool)

(declare-fun e!255838 () Bool)

(assert (=> b!432556 (= e!255841 e!255838)))

(declare-fun res!254556 () Bool)

(assert (=> b!432556 (=> res!254556 e!255838)))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!432556 (= res!254556 (= k0!794 (select (arr!12684 _keys!709) from!863)))))

(assert (=> b!432556 (not (= (select (arr!12684 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12746 0))(
  ( (Unit!12747) )
))
(declare-fun lt!198504 () Unit!12746)

(declare-fun e!255842 () Unit!12746)

(assert (=> b!432556 (= lt!198504 e!255842)))

(declare-fun c!55529 () Bool)

(assert (=> b!432556 (= c!55529 (= (select (arr!12684 _keys!709) from!863) k0!794))))

(declare-fun lt!198497 () ListLongMap!6401)

(assert (=> b!432556 (= lt!198498 lt!198497)))

(declare-fun lt!198493 () ListLongMap!6401)

(declare-fun lt!198507 () tuple2!7474)

(declare-fun +!1362 (ListLongMap!6401 tuple2!7474) ListLongMap!6401)

(assert (=> b!432556 (= lt!198497 (+!1362 lt!198493 lt!198507))))

(declare-fun lt!198495 () V!16213)

(assert (=> b!432556 (= lt!198507 (tuple2!7475 (select (arr!12684 _keys!709) from!863) lt!198495))))

(declare-fun get!6312 (ValueCell!5322 V!16213) V!16213)

(declare-fun dynLambda!799 (Int (_ BitVec 64)) V!16213)

(assert (=> b!432556 (= lt!198495 (get!6312 (select (arr!12683 _values!549) from!863) (dynLambda!799 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432557 () Bool)

(declare-fun res!254554 () Bool)

(declare-fun e!255840 () Bool)

(assert (=> b!432557 (=> (not res!254554) (not e!255840))))

(assert (=> b!432557 (= res!254554 (and (= (size!13035 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13036 _keys!709) (size!13035 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432558 () Bool)

(assert (=> b!432558 (= e!255840 e!255836)))

(declare-fun res!254561 () Bool)

(assert (=> b!432558 (=> (not res!254561) (not e!255836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26475 (_ BitVec 32)) Bool)

(assert (=> b!432558 (= res!254561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198499 mask!1025))))

(assert (=> b!432558 (= lt!198499 (array!26476 (store (arr!12684 _keys!709) i!563 k0!794) (size!13036 _keys!709)))))

(declare-fun mapIsEmpty!18618 () Bool)

(declare-fun mapRes!18618 () Bool)

(assert (=> mapIsEmpty!18618 mapRes!18618))

(declare-fun b!432559 () Bool)

(assert (=> b!432559 (= e!255835 (not e!255841))))

(declare-fun res!254562 () Bool)

(assert (=> b!432559 (=> res!254562 e!255841)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432559 (= res!254562 (not (validKeyInArray!0 (select (arr!12684 _keys!709) from!863))))))

(declare-fun lt!198494 () ListLongMap!6401)

(assert (=> b!432559 (= lt!198494 lt!198493)))

(declare-fun lt!198500 () ListLongMap!6401)

(declare-fun lt!198503 () tuple2!7474)

(assert (=> b!432559 (= lt!198493 (+!1362 lt!198500 lt!198503))))

(assert (=> b!432559 (= lt!198494 (getCurrentListMapNoExtraKeys!1406 lt!198499 lt!198506 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!432559 (= lt!198503 (tuple2!7475 k0!794 v!412))))

(assert (=> b!432559 (= lt!198500 (getCurrentListMapNoExtraKeys!1406 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198502 () Unit!12746)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!550 (array!26475 array!26473 (_ BitVec 32) (_ BitVec 32) V!16213 V!16213 (_ BitVec 32) (_ BitVec 64) V!16213 (_ BitVec 32) Int) Unit!12746)

(assert (=> b!432559 (= lt!198502 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!550 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432560 () Bool)

(declare-fun res!254555 () Bool)

(assert (=> b!432560 (=> (not res!254555) (not e!255836))))

(declare-datatypes ((List!7525 0))(
  ( (Nil!7522) (Cons!7521 (h!8377 (_ BitVec 64)) (t!13161 List!7525)) )
))
(declare-fun arrayNoDuplicates!0 (array!26475 (_ BitVec 32) List!7525) Bool)

(assert (=> b!432560 (= res!254555 (arrayNoDuplicates!0 lt!198499 #b00000000000000000000000000000000 Nil!7522))))

(declare-fun mapNonEmpty!18618 () Bool)

(declare-fun tp!36066 () Bool)

(declare-fun e!255839 () Bool)

(assert (=> mapNonEmpty!18618 (= mapRes!18618 (and tp!36066 e!255839))))

(declare-fun mapKey!18618 () (_ BitVec 32))

(declare-fun mapValue!18618 () ValueCell!5322)

(declare-fun mapRest!18618 () (Array (_ BitVec 32) ValueCell!5322))

(assert (=> mapNonEmpty!18618 (= (arr!12683 _values!549) (store mapRest!18618 mapKey!18618 mapValue!18618))))

(declare-fun b!432561 () Bool)

(declare-fun Unit!12748 () Unit!12746)

(assert (=> b!432561 (= e!255842 Unit!12748)))

(declare-fun b!432562 () Bool)

(declare-fun res!254552 () Bool)

(assert (=> b!432562 (=> (not res!254552) (not e!255840))))

(assert (=> b!432562 (= res!254552 (or (= (select (arr!12684 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12684 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432564 () Bool)

(declare-fun e!255837 () Bool)

(declare-fun tp_is_empty!11331 () Bool)

(assert (=> b!432564 (= e!255837 tp_is_empty!11331)))

(declare-fun b!432565 () Bool)

(declare-fun res!254563 () Bool)

(assert (=> b!432565 (=> (not res!254563) (not e!255840))))

(assert (=> b!432565 (= res!254563 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13036 _keys!709))))))

(declare-fun b!432566 () Bool)

(declare-fun res!254559 () Bool)

(assert (=> b!432566 (=> (not res!254559) (not e!255840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432566 (= res!254559 (validMask!0 mask!1025))))

(declare-fun b!432567 () Bool)

(assert (=> b!432567 (= e!255838 true)))

(assert (=> b!432567 (= lt!198497 (+!1362 (+!1362 lt!198500 lt!198507) lt!198503))))

(declare-fun lt!198505 () Unit!12746)

(declare-fun addCommutativeForDiffKeys!373 (ListLongMap!6401 (_ BitVec 64) V!16213 (_ BitVec 64) V!16213) Unit!12746)

(assert (=> b!432567 (= lt!198505 (addCommutativeForDiffKeys!373 lt!198500 k0!794 v!412 (select (arr!12684 _keys!709) from!863) lt!198495))))

(declare-fun b!432568 () Bool)

(declare-fun e!255844 () Bool)

(assert (=> b!432568 (= e!255844 (and e!255837 mapRes!18618))))

(declare-fun condMapEmpty!18618 () Bool)

(declare-fun mapDefault!18618 () ValueCell!5322)

(assert (=> b!432568 (= condMapEmpty!18618 (= (arr!12683 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5322)) mapDefault!18618)))))

(declare-fun b!432569 () Bool)

(declare-fun res!254560 () Bool)

(assert (=> b!432569 (=> (not res!254560) (not e!255836))))

(assert (=> b!432569 (= res!254560 (bvsle from!863 i!563))))

(declare-fun b!432570 () Bool)

(declare-fun res!254553 () Bool)

(assert (=> b!432570 (=> (not res!254553) (not e!255840))))

(declare-fun arrayContainsKey!0 (array!26475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432570 (= res!254553 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!432571 () Bool)

(declare-fun Unit!12749 () Unit!12746)

(assert (=> b!432571 (= e!255842 Unit!12749)))

(declare-fun lt!198501 () Unit!12746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12746)

(assert (=> b!432571 (= lt!198501 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432571 false))

(declare-fun b!432572 () Bool)

(assert (=> b!432572 (= e!255839 tp_is_empty!11331)))

(declare-fun b!432573 () Bool)

(declare-fun res!254551 () Bool)

(assert (=> b!432573 (=> (not res!254551) (not e!255840))))

(assert (=> b!432573 (= res!254551 (validKeyInArray!0 k0!794))))

(declare-fun b!432574 () Bool)

(declare-fun res!254558 () Bool)

(assert (=> b!432574 (=> (not res!254558) (not e!255840))))

(assert (=> b!432574 (= res!254558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432563 () Bool)

(declare-fun res!254564 () Bool)

(assert (=> b!432563 (=> (not res!254564) (not e!255840))))

(assert (=> b!432563 (= res!254564 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7522))))

(declare-fun res!254557 () Bool)

(assert (=> start!39920 (=> (not res!254557) (not e!255840))))

(assert (=> start!39920 (= res!254557 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13036 _keys!709))))))

(assert (=> start!39920 e!255840))

(assert (=> start!39920 tp_is_empty!11331))

(assert (=> start!39920 tp!36065))

(assert (=> start!39920 true))

(declare-fun array_inv!9222 (array!26473) Bool)

(assert (=> start!39920 (and (array_inv!9222 _values!549) e!255844)))

(declare-fun array_inv!9223 (array!26475) Bool)

(assert (=> start!39920 (array_inv!9223 _keys!709)))

(assert (= (and start!39920 res!254557) b!432566))

(assert (= (and b!432566 res!254559) b!432557))

(assert (= (and b!432557 res!254554) b!432574))

(assert (= (and b!432574 res!254558) b!432563))

(assert (= (and b!432563 res!254564) b!432565))

(assert (= (and b!432565 res!254563) b!432573))

(assert (= (and b!432573 res!254551) b!432562))

(assert (= (and b!432562 res!254552) b!432570))

(assert (= (and b!432570 res!254553) b!432558))

(assert (= (and b!432558 res!254561) b!432560))

(assert (= (and b!432560 res!254555) b!432569))

(assert (= (and b!432569 res!254560) b!432555))

(assert (= (and b!432555 res!254565) b!432559))

(assert (= (and b!432559 (not res!254562)) b!432556))

(assert (= (and b!432556 c!55529) b!432571))

(assert (= (and b!432556 (not c!55529)) b!432561))

(assert (= (and b!432556 (not res!254556)) b!432567))

(assert (= (and b!432568 condMapEmpty!18618) mapIsEmpty!18618))

(assert (= (and b!432568 (not condMapEmpty!18618)) mapNonEmpty!18618))

(get-info :version)

(assert (= (and mapNonEmpty!18618 ((_ is ValueCellFull!5322) mapValue!18618)) b!432572))

(assert (= (and b!432568 ((_ is ValueCellFull!5322) mapDefault!18618)) b!432564))

(assert (= start!39920 b!432568))

(declare-fun b_lambda!9297 () Bool)

(assert (=> (not b_lambda!9297) (not b!432556)))

(declare-fun t!13159 () Bool)

(declare-fun tb!3593 () Bool)

(assert (=> (and start!39920 (= defaultEntry!557 defaultEntry!557) t!13159) tb!3593))

(declare-fun result!6705 () Bool)

(assert (=> tb!3593 (= result!6705 tp_is_empty!11331)))

(assert (=> b!432556 t!13159))

(declare-fun b_and!18037 () Bool)

(assert (= b_and!18035 (and (=> t!13159 result!6705) b_and!18037)))

(declare-fun m!420653 () Bool)

(assert (=> b!432555 m!420653))

(declare-fun m!420655 () Bool)

(assert (=> b!432555 m!420655))

(declare-fun m!420657 () Bool)

(assert (=> b!432555 m!420657))

(declare-fun m!420659 () Bool)

(assert (=> b!432570 m!420659))

(declare-fun m!420661 () Bool)

(assert (=> b!432574 m!420661))

(declare-fun m!420663 () Bool)

(assert (=> b!432558 m!420663))

(declare-fun m!420665 () Bool)

(assert (=> b!432558 m!420665))

(declare-fun m!420667 () Bool)

(assert (=> start!39920 m!420667))

(declare-fun m!420669 () Bool)

(assert (=> start!39920 m!420669))

(declare-fun m!420671 () Bool)

(assert (=> b!432571 m!420671))

(declare-fun m!420673 () Bool)

(assert (=> b!432566 m!420673))

(declare-fun m!420675 () Bool)

(assert (=> b!432559 m!420675))

(declare-fun m!420677 () Bool)

(assert (=> b!432559 m!420677))

(declare-fun m!420679 () Bool)

(assert (=> b!432559 m!420679))

(declare-fun m!420681 () Bool)

(assert (=> b!432559 m!420681))

(assert (=> b!432559 m!420675))

(declare-fun m!420683 () Bool)

(assert (=> b!432559 m!420683))

(declare-fun m!420685 () Bool)

(assert (=> b!432559 m!420685))

(declare-fun m!420687 () Bool)

(assert (=> mapNonEmpty!18618 m!420687))

(assert (=> b!432556 m!420675))

(declare-fun m!420689 () Bool)

(assert (=> b!432556 m!420689))

(declare-fun m!420691 () Bool)

(assert (=> b!432556 m!420691))

(declare-fun m!420693 () Bool)

(assert (=> b!432556 m!420693))

(assert (=> b!432556 m!420691))

(assert (=> b!432556 m!420689))

(declare-fun m!420695 () Bool)

(assert (=> b!432556 m!420695))

(declare-fun m!420697 () Bool)

(assert (=> b!432573 m!420697))

(declare-fun m!420699 () Bool)

(assert (=> b!432560 m!420699))

(declare-fun m!420701 () Bool)

(assert (=> b!432567 m!420701))

(assert (=> b!432567 m!420701))

(declare-fun m!420703 () Bool)

(assert (=> b!432567 m!420703))

(assert (=> b!432567 m!420675))

(assert (=> b!432567 m!420675))

(declare-fun m!420705 () Bool)

(assert (=> b!432567 m!420705))

(declare-fun m!420707 () Bool)

(assert (=> b!432562 m!420707))

(declare-fun m!420709 () Bool)

(assert (=> b!432563 m!420709))

(check-sat (not b!432556) b_and!18037 (not b!432560) tp_is_empty!11331 (not b!432558) (not b!432559) (not b!432570) (not b!432563) (not b!432573) (not mapNonEmpty!18618) (not b_next!10179) (not b!432571) (not b_lambda!9297) (not b!432567) (not b!432566) (not b!432555) (not start!39920) (not b!432574))
(check-sat b_and!18037 (not b_next!10179))
