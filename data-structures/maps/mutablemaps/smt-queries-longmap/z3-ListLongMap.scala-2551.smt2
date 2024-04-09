; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39134 () Bool)

(assert start!39134)

(declare-fun b_free!9393 () Bool)

(declare-fun b_next!9393 () Bool)

(assert (=> start!39134 (= b_free!9393 (not b_next!9393))))

(declare-fun tp!33707 () Bool)

(declare-fun b_and!16797 () Bool)

(assert (=> start!39134 (= tp!33707 b_and!16797)))

(declare-fun b!411252 () Bool)

(declare-fun e!246302 () Bool)

(declare-fun e!246305 () Bool)

(assert (=> b!411252 (= e!246302 e!246305)))

(declare-fun res!238657 () Bool)

(assert (=> b!411252 (=> (not res!238657) (not e!246305))))

(declare-datatypes ((array!24937 0))(
  ( (array!24938 (arr!11915 (Array (_ BitVec 32) (_ BitVec 64))) (size!12267 (_ BitVec 32))) )
))
(declare-fun lt!189246 () array!24937)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24937 (_ BitVec 32)) Bool)

(assert (=> b!411252 (= res!238657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189246 mask!1025))))

(declare-fun _keys!709 () array!24937)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411252 (= lt!189246 (array!24938 (store (arr!11915 _keys!709) i!563 k0!794) (size!12267 _keys!709)))))

(declare-fun b!411253 () Bool)

(declare-fun res!238653 () Bool)

(assert (=> b!411253 (=> (not res!238653) (not e!246302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411253 (= res!238653 (validMask!0 mask!1025))))

(declare-fun b!411254 () Bool)

(declare-fun e!246307 () Bool)

(declare-fun tp_is_empty!10545 () Bool)

(assert (=> b!411254 (= e!246307 tp_is_empty!10545)))

(declare-fun b!411255 () Bool)

(declare-fun res!238662 () Bool)

(assert (=> b!411255 (=> (not res!238662) (not e!246302))))

(assert (=> b!411255 (= res!238662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411256 () Bool)

(declare-fun res!238656 () Bool)

(assert (=> b!411256 (=> (not res!238656) (not e!246305))))

(declare-datatypes ((List!6887 0))(
  ( (Nil!6884) (Cons!6883 (h!7739 (_ BitVec 64)) (t!12069 List!6887)) )
))
(declare-fun arrayNoDuplicates!0 (array!24937 (_ BitVec 32) List!6887) Bool)

(assert (=> b!411256 (= res!238656 (arrayNoDuplicates!0 lt!189246 #b00000000000000000000000000000000 Nil!6884))))

(declare-fun b!411258 () Bool)

(declare-fun res!238659 () Bool)

(assert (=> b!411258 (=> (not res!238659) (not e!246305))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!411258 (= res!238659 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17439 () Bool)

(declare-fun mapRes!17439 () Bool)

(declare-fun tp!33708 () Bool)

(assert (=> mapNonEmpty!17439 (= mapRes!17439 (and tp!33708 e!246307))))

(declare-fun mapKey!17439 () (_ BitVec 32))

(declare-datatypes ((V!15165 0))(
  ( (V!15166 (val!5317 Int)) )
))
(declare-datatypes ((ValueCell!4929 0))(
  ( (ValueCellFull!4929 (v!7560 V!15165)) (EmptyCell!4929) )
))
(declare-fun mapRest!17439 () (Array (_ BitVec 32) ValueCell!4929))

(declare-datatypes ((array!24939 0))(
  ( (array!24940 (arr!11916 (Array (_ BitVec 32) ValueCell!4929)) (size!12268 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24939)

(declare-fun mapValue!17439 () ValueCell!4929)

(assert (=> mapNonEmpty!17439 (= (arr!11916 _values!549) (store mapRest!17439 mapKey!17439 mapValue!17439))))

(declare-fun b!411259 () Bool)

(declare-fun res!238652 () Bool)

(assert (=> b!411259 (=> (not res!238652) (not e!246302))))

(assert (=> b!411259 (= res!238652 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12267 _keys!709))))))

(declare-fun b!411260 () Bool)

(declare-fun res!238660 () Bool)

(assert (=> b!411260 (=> (not res!238660) (not e!246302))))

(declare-fun arrayContainsKey!0 (array!24937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411260 (= res!238660 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411261 () Bool)

(declare-fun res!238654 () Bool)

(assert (=> b!411261 (=> (not res!238654) (not e!246302))))

(assert (=> b!411261 (= res!238654 (or (= (select (arr!11915 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11915 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!238661 () Bool)

(assert (=> start!39134 (=> (not res!238661) (not e!246302))))

(assert (=> start!39134 (= res!238661 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12267 _keys!709))))))

(assert (=> start!39134 e!246302))

(assert (=> start!39134 tp_is_empty!10545))

(assert (=> start!39134 tp!33707))

(assert (=> start!39134 true))

(declare-fun e!246303 () Bool)

(declare-fun array_inv!8694 (array!24939) Bool)

(assert (=> start!39134 (and (array_inv!8694 _values!549) e!246303)))

(declare-fun array_inv!8695 (array!24937) Bool)

(assert (=> start!39134 (array_inv!8695 _keys!709)))

(declare-fun b!411257 () Bool)

(declare-fun res!238651 () Bool)

(assert (=> b!411257 (=> (not res!238651) (not e!246302))))

(assert (=> b!411257 (= res!238651 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6884))))

(declare-fun b!411262 () Bool)

(declare-fun e!246304 () Bool)

(assert (=> b!411262 (= e!246304 tp_is_empty!10545)))

(declare-fun b!411263 () Bool)

(assert (=> b!411263 (= e!246303 (and e!246304 mapRes!17439))))

(declare-fun condMapEmpty!17439 () Bool)

(declare-fun mapDefault!17439 () ValueCell!4929)

(assert (=> b!411263 (= condMapEmpty!17439 (= (arr!11916 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4929)) mapDefault!17439)))))

(declare-fun b!411264 () Bool)

(declare-fun res!238655 () Bool)

(assert (=> b!411264 (=> (not res!238655) (not e!246302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411264 (= res!238655 (validKeyInArray!0 k0!794))))

(declare-fun b!411265 () Bool)

(assert (=> b!411265 (= e!246305 false)))

(declare-fun minValue!515 () V!15165)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun v!412 () V!15165)

(declare-datatypes ((tuple2!6830 0))(
  ( (tuple2!6831 (_1!3425 (_ BitVec 64)) (_2!3425 V!15165)) )
))
(declare-datatypes ((List!6888 0))(
  ( (Nil!6885) (Cons!6884 (h!7740 tuple2!6830) (t!12070 List!6888)) )
))
(declare-datatypes ((ListLongMap!5757 0))(
  ( (ListLongMap!5758 (toList!2894 List!6888)) )
))
(declare-fun lt!189245 () ListLongMap!5757)

(declare-fun zeroValue!515 () V!15165)

(declare-fun getCurrentListMapNoExtraKeys!1104 (array!24937 array!24939 (_ BitVec 32) (_ BitVec 32) V!15165 V!15165 (_ BitVec 32) Int) ListLongMap!5757)

(assert (=> b!411265 (= lt!189245 (getCurrentListMapNoExtraKeys!1104 lt!189246 (array!24940 (store (arr!11916 _values!549) i!563 (ValueCellFull!4929 v!412)) (size!12268 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189244 () ListLongMap!5757)

(assert (=> b!411265 (= lt!189244 (getCurrentListMapNoExtraKeys!1104 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411266 () Bool)

(declare-fun res!238658 () Bool)

(assert (=> b!411266 (=> (not res!238658) (not e!246302))))

(assert (=> b!411266 (= res!238658 (and (= (size!12268 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12267 _keys!709) (size!12268 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17439 () Bool)

(assert (=> mapIsEmpty!17439 mapRes!17439))

(assert (= (and start!39134 res!238661) b!411253))

(assert (= (and b!411253 res!238653) b!411266))

(assert (= (and b!411266 res!238658) b!411255))

(assert (= (and b!411255 res!238662) b!411257))

(assert (= (and b!411257 res!238651) b!411259))

(assert (= (and b!411259 res!238652) b!411264))

(assert (= (and b!411264 res!238655) b!411261))

(assert (= (and b!411261 res!238654) b!411260))

(assert (= (and b!411260 res!238660) b!411252))

(assert (= (and b!411252 res!238657) b!411256))

(assert (= (and b!411256 res!238656) b!411258))

(assert (= (and b!411258 res!238659) b!411265))

(assert (= (and b!411263 condMapEmpty!17439) mapIsEmpty!17439))

(assert (= (and b!411263 (not condMapEmpty!17439)) mapNonEmpty!17439))

(get-info :version)

(assert (= (and mapNonEmpty!17439 ((_ is ValueCellFull!4929) mapValue!17439)) b!411254))

(assert (= (and b!411263 ((_ is ValueCellFull!4929) mapDefault!17439)) b!411262))

(assert (= start!39134 b!411263))

(declare-fun m!401439 () Bool)

(assert (=> b!411256 m!401439))

(declare-fun m!401441 () Bool)

(assert (=> b!411265 m!401441))

(declare-fun m!401443 () Bool)

(assert (=> b!411265 m!401443))

(declare-fun m!401445 () Bool)

(assert (=> b!411265 m!401445))

(declare-fun m!401447 () Bool)

(assert (=> b!411257 m!401447))

(declare-fun m!401449 () Bool)

(assert (=> start!39134 m!401449))

(declare-fun m!401451 () Bool)

(assert (=> start!39134 m!401451))

(declare-fun m!401453 () Bool)

(assert (=> b!411261 m!401453))

(declare-fun m!401455 () Bool)

(assert (=> b!411264 m!401455))

(declare-fun m!401457 () Bool)

(assert (=> mapNonEmpty!17439 m!401457))

(declare-fun m!401459 () Bool)

(assert (=> b!411252 m!401459))

(declare-fun m!401461 () Bool)

(assert (=> b!411252 m!401461))

(declare-fun m!401463 () Bool)

(assert (=> b!411260 m!401463))

(declare-fun m!401465 () Bool)

(assert (=> b!411253 m!401465))

(declare-fun m!401467 () Bool)

(assert (=> b!411255 m!401467))

(check-sat (not b!411253) (not b!411255) (not b!411257) (not b!411264) (not mapNonEmpty!17439) tp_is_empty!10545 (not b_next!9393) (not b!411252) b_and!16797 (not b!411265) (not start!39134) (not b!411260) (not b!411256))
(check-sat b_and!16797 (not b_next!9393))
