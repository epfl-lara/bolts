; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39632 () Bool)

(assert start!39632)

(declare-fun b_free!9891 () Bool)

(declare-fun b_next!9891 () Bool)

(assert (=> start!39632 (= b_free!9891 (not b_next!9891))))

(declare-fun tp!35201 () Bool)

(declare-fun b_and!17565 () Bool)

(assert (=> start!39632 (= tp!35201 b_and!17565)))

(declare-fun b!424604 () Bool)

(declare-fun res!248529 () Bool)

(declare-fun e!252180 () Bool)

(assert (=> b!424604 (=> (not res!248529) (not e!252180))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424604 (= res!248529 (bvsle from!863 i!563))))

(declare-fun b!424605 () Bool)

(declare-fun e!252179 () Bool)

(assert (=> b!424605 (= e!252179 (not true))))

(declare-datatypes ((V!15829 0))(
  ( (V!15830 (val!5566 Int)) )
))
(declare-fun minValue!515 () V!15829)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25913 0))(
  ( (array!25914 (arr!12403 (Array (_ BitVec 32) (_ BitVec 64))) (size!12755 (_ BitVec 32))) )
))
(declare-fun lt!194414 () array!25913)

(declare-datatypes ((ValueCell!5178 0))(
  ( (ValueCellFull!5178 (v!7809 V!15829)) (EmptyCell!5178) )
))
(declare-datatypes ((array!25915 0))(
  ( (array!25916 (arr!12404 (Array (_ BitVec 32) ValueCell!5178)) (size!12756 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25915)

(declare-fun zeroValue!515 () V!15829)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25913)

(declare-fun lt!194413 () array!25915)

(declare-fun defaultEntry!557 () Int)

(declare-fun v!412 () V!15829)

(declare-datatypes ((tuple2!7244 0))(
  ( (tuple2!7245 (_1!3632 (_ BitVec 64)) (_2!3632 V!15829)) )
))
(declare-datatypes ((List!7289 0))(
  ( (Nil!7286) (Cons!7285 (h!8141 tuple2!7244) (t!12741 List!7289)) )
))
(declare-datatypes ((ListLongMap!6171 0))(
  ( (ListLongMap!6172 (toList!3101 List!7289)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1302 (array!25913 array!25915 (_ BitVec 32) (_ BitVec 32) V!15829 V!15829 (_ BitVec 32) Int) ListLongMap!6171)

(declare-fun +!1264 (ListLongMap!6171 tuple2!7244) ListLongMap!6171)

(assert (=> b!424605 (= (getCurrentListMapNoExtraKeys!1302 lt!194414 lt!194413 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1264 (getCurrentListMapNoExtraKeys!1302 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7245 k0!794 v!412)))))

(declare-datatypes ((Unit!12431 0))(
  ( (Unit!12432) )
))
(declare-fun lt!194411 () Unit!12431)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!466 (array!25913 array!25915 (_ BitVec 32) (_ BitVec 32) V!15829 V!15829 (_ BitVec 32) (_ BitVec 64) V!15829 (_ BitVec 32) Int) Unit!12431)

(assert (=> b!424605 (= lt!194411 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!466 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424606 () Bool)

(declare-fun res!248521 () Bool)

(assert (=> b!424606 (=> (not res!248521) (not e!252180))))

(declare-datatypes ((List!7290 0))(
  ( (Nil!7287) (Cons!7286 (h!8142 (_ BitVec 64)) (t!12742 List!7290)) )
))
(declare-fun arrayNoDuplicates!0 (array!25913 (_ BitVec 32) List!7290) Bool)

(assert (=> b!424606 (= res!248521 (arrayNoDuplicates!0 lt!194414 #b00000000000000000000000000000000 Nil!7287))))

(declare-fun mapNonEmpty!18186 () Bool)

(declare-fun mapRes!18186 () Bool)

(declare-fun tp!35202 () Bool)

(declare-fun e!252176 () Bool)

(assert (=> mapNonEmpty!18186 (= mapRes!18186 (and tp!35202 e!252176))))

(declare-fun mapKey!18186 () (_ BitVec 32))

(declare-fun mapValue!18186 () ValueCell!5178)

(declare-fun mapRest!18186 () (Array (_ BitVec 32) ValueCell!5178))

(assert (=> mapNonEmpty!18186 (= (arr!12404 _values!549) (store mapRest!18186 mapKey!18186 mapValue!18186))))

(declare-fun mapIsEmpty!18186 () Bool)

(assert (=> mapIsEmpty!18186 mapRes!18186))

(declare-fun b!424607 () Bool)

(declare-fun res!248522 () Bool)

(declare-fun e!252177 () Bool)

(assert (=> b!424607 (=> (not res!248522) (not e!252177))))

(assert (=> b!424607 (= res!248522 (and (= (size!12756 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12755 _keys!709) (size!12756 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424608 () Bool)

(declare-fun res!248532 () Bool)

(assert (=> b!424608 (=> (not res!248532) (not e!252177))))

(assert (=> b!424608 (= res!248532 (or (= (select (arr!12403 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12403 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424609 () Bool)

(declare-fun e!252181 () Bool)

(declare-fun tp_is_empty!11043 () Bool)

(assert (=> b!424609 (= e!252181 tp_is_empty!11043)))

(declare-fun b!424610 () Bool)

(declare-fun res!248531 () Bool)

(assert (=> b!424610 (=> (not res!248531) (not e!252177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424610 (= res!248531 (validKeyInArray!0 k0!794))))

(declare-fun b!424611 () Bool)

(assert (=> b!424611 (= e!252176 tp_is_empty!11043)))

(declare-fun b!424612 () Bool)

(declare-fun res!248523 () Bool)

(assert (=> b!424612 (=> (not res!248523) (not e!252177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424612 (= res!248523 (validMask!0 mask!1025))))

(declare-fun b!424613 () Bool)

(declare-fun e!252175 () Bool)

(assert (=> b!424613 (= e!252175 (and e!252181 mapRes!18186))))

(declare-fun condMapEmpty!18186 () Bool)

(declare-fun mapDefault!18186 () ValueCell!5178)

(assert (=> b!424613 (= condMapEmpty!18186 (= (arr!12404 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5178)) mapDefault!18186)))))

(declare-fun res!248526 () Bool)

(assert (=> start!39632 (=> (not res!248526) (not e!252177))))

(assert (=> start!39632 (= res!248526 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12755 _keys!709))))))

(assert (=> start!39632 e!252177))

(assert (=> start!39632 tp_is_empty!11043))

(assert (=> start!39632 tp!35201))

(assert (=> start!39632 true))

(declare-fun array_inv!9042 (array!25915) Bool)

(assert (=> start!39632 (and (array_inv!9042 _values!549) e!252175)))

(declare-fun array_inv!9043 (array!25913) Bool)

(assert (=> start!39632 (array_inv!9043 _keys!709)))

(declare-fun b!424614 () Bool)

(assert (=> b!424614 (= e!252180 e!252179)))

(declare-fun res!248527 () Bool)

(assert (=> b!424614 (=> (not res!248527) (not e!252179))))

(assert (=> b!424614 (= res!248527 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194415 () ListLongMap!6171)

(assert (=> b!424614 (= lt!194415 (getCurrentListMapNoExtraKeys!1302 lt!194414 lt!194413 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!424614 (= lt!194413 (array!25916 (store (arr!12404 _values!549) i!563 (ValueCellFull!5178 v!412)) (size!12756 _values!549)))))

(declare-fun lt!194412 () ListLongMap!6171)

(assert (=> b!424614 (= lt!194412 (getCurrentListMapNoExtraKeys!1302 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424615 () Bool)

(declare-fun res!248530 () Bool)

(assert (=> b!424615 (=> (not res!248530) (not e!252177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25913 (_ BitVec 32)) Bool)

(assert (=> b!424615 (= res!248530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424616 () Bool)

(declare-fun res!248525 () Bool)

(assert (=> b!424616 (=> (not res!248525) (not e!252177))))

(declare-fun arrayContainsKey!0 (array!25913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424616 (= res!248525 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424617 () Bool)

(declare-fun res!248524 () Bool)

(assert (=> b!424617 (=> (not res!248524) (not e!252177))))

(assert (=> b!424617 (= res!248524 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7287))))

(declare-fun b!424618 () Bool)

(assert (=> b!424618 (= e!252177 e!252180)))

(declare-fun res!248528 () Bool)

(assert (=> b!424618 (=> (not res!248528) (not e!252180))))

(assert (=> b!424618 (= res!248528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194414 mask!1025))))

(assert (=> b!424618 (= lt!194414 (array!25914 (store (arr!12403 _keys!709) i!563 k0!794) (size!12755 _keys!709)))))

(declare-fun b!424619 () Bool)

(declare-fun res!248520 () Bool)

(assert (=> b!424619 (=> (not res!248520) (not e!252177))))

(assert (=> b!424619 (= res!248520 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12755 _keys!709))))))

(assert (= (and start!39632 res!248526) b!424612))

(assert (= (and b!424612 res!248523) b!424607))

(assert (= (and b!424607 res!248522) b!424615))

(assert (= (and b!424615 res!248530) b!424617))

(assert (= (and b!424617 res!248524) b!424619))

(assert (= (and b!424619 res!248520) b!424610))

(assert (= (and b!424610 res!248531) b!424608))

(assert (= (and b!424608 res!248532) b!424616))

(assert (= (and b!424616 res!248525) b!424618))

(assert (= (and b!424618 res!248528) b!424606))

(assert (= (and b!424606 res!248521) b!424604))

(assert (= (and b!424604 res!248529) b!424614))

(assert (= (and b!424614 res!248527) b!424605))

(assert (= (and b!424613 condMapEmpty!18186) mapIsEmpty!18186))

(assert (= (and b!424613 (not condMapEmpty!18186)) mapNonEmpty!18186))

(get-info :version)

(assert (= (and mapNonEmpty!18186 ((_ is ValueCellFull!5178) mapValue!18186)) b!424611))

(assert (= (and b!424613 ((_ is ValueCellFull!5178) mapDefault!18186)) b!424609))

(assert (= start!39632 b!424613))

(declare-fun m!413673 () Bool)

(assert (=> b!424605 m!413673))

(declare-fun m!413675 () Bool)

(assert (=> b!424605 m!413675))

(assert (=> b!424605 m!413675))

(declare-fun m!413677 () Bool)

(assert (=> b!424605 m!413677))

(declare-fun m!413679 () Bool)

(assert (=> b!424605 m!413679))

(declare-fun m!413681 () Bool)

(assert (=> b!424615 m!413681))

(declare-fun m!413683 () Bool)

(assert (=> b!424614 m!413683))

(declare-fun m!413685 () Bool)

(assert (=> b!424614 m!413685))

(declare-fun m!413687 () Bool)

(assert (=> b!424614 m!413687))

(declare-fun m!413689 () Bool)

(assert (=> b!424606 m!413689))

(declare-fun m!413691 () Bool)

(assert (=> b!424612 m!413691))

(declare-fun m!413693 () Bool)

(assert (=> mapNonEmpty!18186 m!413693))

(declare-fun m!413695 () Bool)

(assert (=> start!39632 m!413695))

(declare-fun m!413697 () Bool)

(assert (=> start!39632 m!413697))

(declare-fun m!413699 () Bool)

(assert (=> b!424617 m!413699))

(declare-fun m!413701 () Bool)

(assert (=> b!424608 m!413701))

(declare-fun m!413703 () Bool)

(assert (=> b!424618 m!413703))

(declare-fun m!413705 () Bool)

(assert (=> b!424618 m!413705))

(declare-fun m!413707 () Bool)

(assert (=> b!424616 m!413707))

(declare-fun m!413709 () Bool)

(assert (=> b!424610 m!413709))

(check-sat (not b!424618) (not b!424612) (not b!424610) (not start!39632) (not mapNonEmpty!18186) (not b!424616) (not b_next!9891) (not b!424605) (not b!424606) b_and!17565 tp_is_empty!11043 (not b!424615) (not b!424614) (not b!424617))
(check-sat b_and!17565 (not b_next!9891))
