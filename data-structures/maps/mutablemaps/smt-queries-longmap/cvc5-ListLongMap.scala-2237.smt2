; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36892 () Bool)

(assert start!36892)

(declare-fun b_free!8011 () Bool)

(declare-fun b_next!8011 () Bool)

(assert (=> start!36892 (= b_free!8011 (not b_next!8011))))

(declare-fun tp!28749 () Bool)

(declare-fun b_and!15271 () Bool)

(assert (=> start!36892 (= tp!28749 b_and!15271)))

(declare-fun res!207066 () Bool)

(declare-fun e!225606 () Bool)

(assert (=> start!36892 (=> (not res!207066) (not e!225606))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36892 (= res!207066 (validMask!0 mask!970))))

(assert (=> start!36892 e!225606))

(declare-datatypes ((V!12651 0))(
  ( (V!12652 (val!4374 Int)) )
))
(declare-datatypes ((ValueCell!3986 0))(
  ( (ValueCellFull!3986 (v!6567 V!12651)) (EmptyCell!3986) )
))
(declare-datatypes ((array!21241 0))(
  ( (array!21242 (arr!10086 (Array (_ BitVec 32) ValueCell!3986)) (size!10438 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21241)

(declare-fun e!225601 () Bool)

(declare-fun array_inv!7452 (array!21241) Bool)

(assert (=> start!36892 (and (array_inv!7452 _values!506) e!225601)))

(assert (=> start!36892 tp!28749))

(assert (=> start!36892 true))

(declare-fun tp_is_empty!8659 () Bool)

(assert (=> start!36892 tp_is_empty!8659))

(declare-datatypes ((array!21243 0))(
  ( (array!21244 (arr!10087 (Array (_ BitVec 32) (_ BitVec 64))) (size!10439 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21243)

(declare-fun array_inv!7453 (array!21243) Bool)

(assert (=> start!36892 (array_inv!7453 _keys!658)))

(declare-fun b!369059 () Bool)

(declare-fun e!225605 () Bool)

(assert (=> b!369059 (= e!225606 e!225605)))

(declare-fun res!207073 () Bool)

(assert (=> b!369059 (=> (not res!207073) (not e!225605))))

(declare-fun lt!169656 () array!21243)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21243 (_ BitVec 32)) Bool)

(assert (=> b!369059 (= res!207073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169656 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369059 (= lt!169656 (array!21244 (store (arr!10087 _keys!658) i!548 k!778) (size!10439 _keys!658)))))

(declare-fun b!369060 () Bool)

(assert (=> b!369060 (= e!225605 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5794 0))(
  ( (tuple2!5795 (_1!2907 (_ BitVec 64)) (_2!2907 V!12651)) )
))
(declare-datatypes ((List!5653 0))(
  ( (Nil!5650) (Cons!5649 (h!6505 tuple2!5794) (t!10811 List!5653)) )
))
(declare-datatypes ((ListLongMap!4721 0))(
  ( (ListLongMap!4722 (toList!2376 List!5653)) )
))
(declare-fun lt!169655 () ListLongMap!4721)

(declare-fun zeroValue!472 () V!12651)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12651)

(declare-fun minValue!472 () V!12651)

(declare-fun getCurrentListMapNoExtraKeys!644 (array!21243 array!21241 (_ BitVec 32) (_ BitVec 32) V!12651 V!12651 (_ BitVec 32) Int) ListLongMap!4721)

(assert (=> b!369060 (= lt!169655 (getCurrentListMapNoExtraKeys!644 lt!169656 (array!21242 (store (arr!10086 _values!506) i!548 (ValueCellFull!3986 v!373)) (size!10438 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169657 () ListLongMap!4721)

(assert (=> b!369060 (= lt!169657 (getCurrentListMapNoExtraKeys!644 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369061 () Bool)

(declare-fun res!207067 () Bool)

(assert (=> b!369061 (=> (not res!207067) (not e!225606))))

(declare-datatypes ((List!5654 0))(
  ( (Nil!5651) (Cons!5650 (h!6506 (_ BitVec 64)) (t!10812 List!5654)) )
))
(declare-fun arrayNoDuplicates!0 (array!21243 (_ BitVec 32) List!5654) Bool)

(assert (=> b!369061 (= res!207067 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5651))))

(declare-fun b!369062 () Bool)

(declare-fun e!225602 () Bool)

(declare-fun mapRes!14553 () Bool)

(assert (=> b!369062 (= e!225601 (and e!225602 mapRes!14553))))

(declare-fun condMapEmpty!14553 () Bool)

(declare-fun mapDefault!14553 () ValueCell!3986)

