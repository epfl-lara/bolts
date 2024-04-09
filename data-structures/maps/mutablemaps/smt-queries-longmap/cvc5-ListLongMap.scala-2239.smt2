; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36904 () Bool)

(assert start!36904)

(declare-fun b_free!8023 () Bool)

(declare-fun b_next!8023 () Bool)

(assert (=> start!36904 (= b_free!8023 (not b_next!8023))))

(declare-fun tp!28784 () Bool)

(declare-fun b_and!15283 () Bool)

(assert (=> start!36904 (= tp!28784 b_and!15283)))

(declare-fun b!369294 () Bool)

(declare-fun res!207252 () Bool)

(declare-fun e!225710 () Bool)

(assert (=> b!369294 (=> (not res!207252) (not e!225710))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369294 (= res!207252 (validKeyInArray!0 k!778))))

(declare-fun b!369295 () Bool)

(declare-fun res!207248 () Bool)

(assert (=> b!369295 (=> (not res!207248) (not e!225710))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12667 0))(
  ( (V!12668 (val!4380 Int)) )
))
(declare-datatypes ((ValueCell!3992 0))(
  ( (ValueCellFull!3992 (v!6573 V!12667)) (EmptyCell!3992) )
))
(declare-datatypes ((array!21265 0))(
  ( (array!21266 (arr!10098 (Array (_ BitVec 32) ValueCell!3992)) (size!10450 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21265)

(declare-datatypes ((array!21267 0))(
  ( (array!21268 (arr!10099 (Array (_ BitVec 32) (_ BitVec 64))) (size!10451 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21267)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!369295 (= res!207248 (and (= (size!10450 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10451 _keys!658) (size!10450 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369296 () Bool)

(declare-fun e!225713 () Bool)

(declare-fun tp_is_empty!8671 () Bool)

(assert (=> b!369296 (= e!225713 tp_is_empty!8671)))

(declare-fun b!369297 () Bool)

(declare-fun e!225709 () Bool)

(assert (=> b!369297 (= e!225710 e!225709)))

(declare-fun res!207247 () Bool)

(assert (=> b!369297 (=> (not res!207247) (not e!225709))))

(declare-fun lt!169711 () array!21267)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21267 (_ BitVec 32)) Bool)

(assert (=> b!369297 (= res!207247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169711 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369297 (= lt!169711 (array!21268 (store (arr!10099 _keys!658) i!548 k!778) (size!10451 _keys!658)))))

(declare-fun b!369298 () Bool)

(declare-fun res!207251 () Bool)

(assert (=> b!369298 (=> (not res!207251) (not e!225710))))

(assert (=> b!369298 (= res!207251 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10451 _keys!658))))))

(declare-fun b!369299 () Bool)

(declare-fun res!207253 () Bool)

(assert (=> b!369299 (=> (not res!207253) (not e!225710))))

(assert (=> b!369299 (= res!207253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369300 () Bool)

(declare-fun res!207246 () Bool)

(assert (=> b!369300 (=> (not res!207246) (not e!225710))))

(assert (=> b!369300 (= res!207246 (or (= (select (arr!10099 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10099 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14571 () Bool)

(declare-fun mapRes!14571 () Bool)

(declare-fun tp!28785 () Bool)

(assert (=> mapNonEmpty!14571 (= mapRes!14571 (and tp!28785 e!225713))))

(declare-fun mapValue!14571 () ValueCell!3992)

(declare-fun mapRest!14571 () (Array (_ BitVec 32) ValueCell!3992))

(declare-fun mapKey!14571 () (_ BitVec 32))

(assert (=> mapNonEmpty!14571 (= (arr!10098 _values!506) (store mapRest!14571 mapKey!14571 mapValue!14571))))

(declare-fun mapIsEmpty!14571 () Bool)

(assert (=> mapIsEmpty!14571 mapRes!14571))

(declare-fun b!369301 () Bool)

(declare-fun res!207249 () Bool)

(assert (=> b!369301 (=> (not res!207249) (not e!225710))))

(declare-datatypes ((List!5662 0))(
  ( (Nil!5659) (Cons!5658 (h!6514 (_ BitVec 64)) (t!10820 List!5662)) )
))
(declare-fun arrayNoDuplicates!0 (array!21267 (_ BitVec 32) List!5662) Bool)

(assert (=> b!369301 (= res!207249 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5659))))

(declare-fun b!369293 () Bool)

(assert (=> b!369293 (= e!225709 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12667)

(declare-datatypes ((tuple2!5802 0))(
  ( (tuple2!5803 (_1!2911 (_ BitVec 64)) (_2!2911 V!12667)) )
))
(declare-datatypes ((List!5663 0))(
  ( (Nil!5660) (Cons!5659 (h!6515 tuple2!5802) (t!10821 List!5663)) )
))
(declare-datatypes ((ListLongMap!4729 0))(
  ( (ListLongMap!4730 (toList!2380 List!5663)) )
))
(declare-fun lt!169709 () ListLongMap!4729)

(declare-fun v!373 () V!12667)

(declare-fun minValue!472 () V!12667)

(declare-fun getCurrentListMapNoExtraKeys!648 (array!21267 array!21265 (_ BitVec 32) (_ BitVec 32) V!12667 V!12667 (_ BitVec 32) Int) ListLongMap!4729)

(assert (=> b!369293 (= lt!169709 (getCurrentListMapNoExtraKeys!648 lt!169711 (array!21266 (store (arr!10098 _values!506) i!548 (ValueCellFull!3992 v!373)) (size!10450 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169710 () ListLongMap!4729)

(assert (=> b!369293 (= lt!169710 (getCurrentListMapNoExtraKeys!648 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!207254 () Bool)

(assert (=> start!36904 (=> (not res!207254) (not e!225710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36904 (= res!207254 (validMask!0 mask!970))))

(assert (=> start!36904 e!225710))

(declare-fun e!225712 () Bool)

(declare-fun array_inv!7462 (array!21265) Bool)

(assert (=> start!36904 (and (array_inv!7462 _values!506) e!225712)))

(assert (=> start!36904 tp!28784))

(assert (=> start!36904 true))

(assert (=> start!36904 tp_is_empty!8671))

(declare-fun array_inv!7463 (array!21267) Bool)

(assert (=> start!36904 (array_inv!7463 _keys!658)))

(declare-fun b!369302 () Bool)

(declare-fun e!225711 () Bool)

(assert (=> b!369302 (= e!225712 (and e!225711 mapRes!14571))))

(declare-fun condMapEmpty!14571 () Bool)

(declare-fun mapDefault!14571 () ValueCell!3992)

