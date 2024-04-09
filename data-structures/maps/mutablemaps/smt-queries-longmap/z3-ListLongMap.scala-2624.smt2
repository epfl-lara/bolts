; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39572 () Bool)

(assert start!39572)

(declare-fun b_free!9831 () Bool)

(declare-fun b_next!9831 () Bool)

(assert (=> start!39572 (= b_free!9831 (not b_next!9831))))

(declare-fun tp!35022 () Bool)

(declare-fun b_and!17505 () Bool)

(assert (=> start!39572 (= tp!35022 b_and!17505)))

(declare-fun b!423249 () Bool)

(declare-fun res!247438 () Bool)

(declare-fun e!251635 () Bool)

(assert (=> b!423249 (=> (not res!247438) (not e!251635))))

(declare-datatypes ((array!25793 0))(
  ( (array!25794 (arr!12343 (Array (_ BitVec 32) (_ BitVec 64))) (size!12695 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25793)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15749 0))(
  ( (V!15750 (val!5536 Int)) )
))
(declare-datatypes ((ValueCell!5148 0))(
  ( (ValueCellFull!5148 (v!7779 V!15749)) (EmptyCell!5148) )
))
(declare-datatypes ((array!25795 0))(
  ( (array!25796 (arr!12344 (Array (_ BitVec 32) ValueCell!5148)) (size!12696 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25795)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423249 (= res!247438 (and (= (size!12696 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12695 _keys!709) (size!12696 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423250 () Bool)

(declare-fun res!247445 () Bool)

(declare-fun e!251633 () Bool)

(assert (=> b!423250 (=> (not res!247445) (not e!251633))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423250 (= res!247445 (bvsle from!863 i!563))))

(declare-fun b!423251 () Bool)

(declare-fun res!247442 () Bool)

(assert (=> b!423251 (=> (not res!247442) (not e!251635))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423251 (= res!247442 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423252 () Bool)

(declare-fun e!251631 () Bool)

(declare-fun e!251634 () Bool)

(declare-fun mapRes!18096 () Bool)

(assert (=> b!423252 (= e!251631 (and e!251634 mapRes!18096))))

(declare-fun condMapEmpty!18096 () Bool)

(declare-fun mapDefault!18096 () ValueCell!5148)

(assert (=> b!423252 (= condMapEmpty!18096 (= (arr!12344 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5148)) mapDefault!18096)))))

(declare-fun mapIsEmpty!18096 () Bool)

(assert (=> mapIsEmpty!18096 mapRes!18096))

(declare-fun b!423254 () Bool)

(declare-fun e!251632 () Bool)

(declare-fun tp_is_empty!10983 () Bool)

(assert (=> b!423254 (= e!251632 tp_is_empty!10983)))

(declare-fun b!423255 () Bool)

(declare-fun res!247439 () Bool)

(assert (=> b!423255 (=> (not res!247439) (not e!251635))))

(declare-datatypes ((List!7244 0))(
  ( (Nil!7241) (Cons!7240 (h!8096 (_ BitVec 64)) (t!12696 List!7244)) )
))
(declare-fun arrayNoDuplicates!0 (array!25793 (_ BitVec 32) List!7244) Bool)

(assert (=> b!423255 (= res!247439 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7241))))

(declare-fun b!423256 () Bool)

(declare-fun res!247437 () Bool)

(assert (=> b!423256 (=> (not res!247437) (not e!251635))))

(assert (=> b!423256 (= res!247437 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12695 _keys!709))))))

(declare-fun b!423257 () Bool)

(assert (=> b!423257 (= e!251634 tp_is_empty!10983)))

(declare-fun b!423258 () Bool)

(assert (=> b!423258 (= e!251635 e!251633)))

(declare-fun res!247441 () Bool)

(assert (=> b!423258 (=> (not res!247441) (not e!251633))))

(declare-fun lt!194133 () array!25793)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25793 (_ BitVec 32)) Bool)

(assert (=> b!423258 (= res!247441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194133 mask!1025))))

(assert (=> b!423258 (= lt!194133 (array!25794 (store (arr!12343 _keys!709) i!563 k0!794) (size!12695 _keys!709)))))

(declare-fun b!423259 () Bool)

(declare-fun res!247443 () Bool)

(assert (=> b!423259 (=> (not res!247443) (not e!251635))))

(assert (=> b!423259 (= res!247443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18096 () Bool)

(declare-fun tp!35021 () Bool)

(assert (=> mapNonEmpty!18096 (= mapRes!18096 (and tp!35021 e!251632))))

(declare-fun mapKey!18096 () (_ BitVec 32))

(declare-fun mapRest!18096 () (Array (_ BitVec 32) ValueCell!5148))

(declare-fun mapValue!18096 () ValueCell!5148)

(assert (=> mapNonEmpty!18096 (= (arr!12344 _values!549) (store mapRest!18096 mapKey!18096 mapValue!18096))))

(declare-fun res!247435 () Bool)

(assert (=> start!39572 (=> (not res!247435) (not e!251635))))

(assert (=> start!39572 (= res!247435 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12695 _keys!709))))))

(assert (=> start!39572 e!251635))

(assert (=> start!39572 tp_is_empty!10983))

(assert (=> start!39572 tp!35022))

(assert (=> start!39572 true))

(declare-fun array_inv!8996 (array!25795) Bool)

(assert (=> start!39572 (and (array_inv!8996 _values!549) e!251631)))

(declare-fun array_inv!8997 (array!25793) Bool)

(assert (=> start!39572 (array_inv!8997 _keys!709)))

(declare-fun b!423253 () Bool)

(declare-fun res!247444 () Bool)

(assert (=> b!423253 (=> (not res!247444) (not e!251633))))

(assert (=> b!423253 (= res!247444 (arrayNoDuplicates!0 lt!194133 #b00000000000000000000000000000000 Nil!7241))))

(declare-fun b!423260 () Bool)

(declare-fun res!247436 () Bool)

(assert (=> b!423260 (=> (not res!247436) (not e!251635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423260 (= res!247436 (validMask!0 mask!1025))))

(declare-fun b!423261 () Bool)

(declare-fun res!247446 () Bool)

(assert (=> b!423261 (=> (not res!247446) (not e!251635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423261 (= res!247446 (validKeyInArray!0 k0!794))))

(declare-fun b!423262 () Bool)

(declare-fun res!247440 () Bool)

(assert (=> b!423262 (=> (not res!247440) (not e!251635))))

(assert (=> b!423262 (= res!247440 (or (= (select (arr!12343 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12343 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423263 () Bool)

(assert (=> b!423263 (= e!251633 false)))

(declare-datatypes ((tuple2!7198 0))(
  ( (tuple2!7199 (_1!3609 (_ BitVec 64)) (_2!3609 V!15749)) )
))
(declare-datatypes ((List!7245 0))(
  ( (Nil!7242) (Cons!7241 (h!8097 tuple2!7198) (t!12697 List!7245)) )
))
(declare-datatypes ((ListLongMap!6125 0))(
  ( (ListLongMap!6126 (toList!3078 List!7245)) )
))
(declare-fun lt!194131 () ListLongMap!6125)

(declare-fun minValue!515 () V!15749)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15749)

(declare-fun v!412 () V!15749)

(declare-fun getCurrentListMapNoExtraKeys!1279 (array!25793 array!25795 (_ BitVec 32) (_ BitVec 32) V!15749 V!15749 (_ BitVec 32) Int) ListLongMap!6125)

(assert (=> b!423263 (= lt!194131 (getCurrentListMapNoExtraKeys!1279 lt!194133 (array!25796 (store (arr!12344 _values!549) i!563 (ValueCellFull!5148 v!412)) (size!12696 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194132 () ListLongMap!6125)

(assert (=> b!423263 (= lt!194132 (getCurrentListMapNoExtraKeys!1279 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39572 res!247435) b!423260))

(assert (= (and b!423260 res!247436) b!423249))

(assert (= (and b!423249 res!247438) b!423259))

(assert (= (and b!423259 res!247443) b!423255))

(assert (= (and b!423255 res!247439) b!423256))

(assert (= (and b!423256 res!247437) b!423261))

(assert (= (and b!423261 res!247446) b!423262))

(assert (= (and b!423262 res!247440) b!423251))

(assert (= (and b!423251 res!247442) b!423258))

(assert (= (and b!423258 res!247441) b!423253))

(assert (= (and b!423253 res!247444) b!423250))

(assert (= (and b!423250 res!247445) b!423263))

(assert (= (and b!423252 condMapEmpty!18096) mapIsEmpty!18096))

(assert (= (and b!423252 (not condMapEmpty!18096)) mapNonEmpty!18096))

(get-info :version)

(assert (= (and mapNonEmpty!18096 ((_ is ValueCellFull!5148) mapValue!18096)) b!423254))

(assert (= (and b!423252 ((_ is ValueCellFull!5148) mapDefault!18096)) b!423257))

(assert (= start!39572 b!423252))

(declare-fun m!412765 () Bool)

(assert (=> b!423259 m!412765))

(declare-fun m!412767 () Bool)

(assert (=> b!423258 m!412767))

(declare-fun m!412769 () Bool)

(assert (=> b!423258 m!412769))

(declare-fun m!412771 () Bool)

(assert (=> b!423261 m!412771))

(declare-fun m!412773 () Bool)

(assert (=> mapNonEmpty!18096 m!412773))

(declare-fun m!412775 () Bool)

(assert (=> b!423262 m!412775))

(declare-fun m!412777 () Bool)

(assert (=> b!423251 m!412777))

(declare-fun m!412779 () Bool)

(assert (=> b!423253 m!412779))

(declare-fun m!412781 () Bool)

(assert (=> b!423260 m!412781))

(declare-fun m!412783 () Bool)

(assert (=> start!39572 m!412783))

(declare-fun m!412785 () Bool)

(assert (=> start!39572 m!412785))

(declare-fun m!412787 () Bool)

(assert (=> b!423263 m!412787))

(declare-fun m!412789 () Bool)

(assert (=> b!423263 m!412789))

(declare-fun m!412791 () Bool)

(assert (=> b!423263 m!412791))

(declare-fun m!412793 () Bool)

(assert (=> b!423255 m!412793))

(check-sat tp_is_empty!10983 (not start!39572) (not b!423263) (not b!423260) (not b!423259) (not b!423258) (not b!423251) b_and!17505 (not b!423253) (not b!423255) (not b_next!9831) (not mapNonEmpty!18096) (not b!423261))
(check-sat b_and!17505 (not b_next!9831))
