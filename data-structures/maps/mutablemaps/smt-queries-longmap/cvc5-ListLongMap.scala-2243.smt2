; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36928 () Bool)

(assert start!36928)

(declare-fun b_free!8047 () Bool)

(declare-fun b_next!8047 () Bool)

(assert (=> start!36928 (= b_free!8047 (not b_next!8047))))

(declare-fun tp!28856 () Bool)

(declare-fun b_and!15307 () Bool)

(assert (=> start!36928 (= tp!28856 b_and!15307)))

(declare-fun b!369761 () Bool)

(declare-fun e!225925 () Bool)

(declare-fun tp_is_empty!8695 () Bool)

(assert (=> b!369761 (= e!225925 tp_is_empty!8695)))

(declare-fun b!369762 () Bool)

(declare-fun res!207614 () Bool)

(declare-fun e!225930 () Bool)

(assert (=> b!369762 (=> (not res!207614) (not e!225930))))

(declare-datatypes ((array!21311 0))(
  ( (array!21312 (arr!10121 (Array (_ BitVec 32) (_ BitVec 64))) (size!10473 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21311)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369762 (= res!207614 (or (= (select (arr!10121 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10121 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369763 () Bool)

(declare-fun e!225926 () Bool)

(assert (=> b!369763 (= e!225926 false)))

(declare-datatypes ((V!12699 0))(
  ( (V!12700 (val!4392 Int)) )
))
(declare-datatypes ((ValueCell!4004 0))(
  ( (ValueCellFull!4004 (v!6585 V!12699)) (EmptyCell!4004) )
))
(declare-datatypes ((array!21313 0))(
  ( (array!21314 (arr!10122 (Array (_ BitVec 32) ValueCell!4004)) (size!10474 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21313)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5816 0))(
  ( (tuple2!5817 (_1!2918 (_ BitVec 64)) (_2!2918 V!12699)) )
))
(declare-datatypes ((List!5679 0))(
  ( (Nil!5676) (Cons!5675 (h!6531 tuple2!5816) (t!10837 List!5679)) )
))
(declare-datatypes ((ListLongMap!4743 0))(
  ( (ListLongMap!4744 (toList!2387 List!5679)) )
))
(declare-fun lt!169818 () ListLongMap!4743)

(declare-fun lt!169817 () array!21311)

(declare-fun zeroValue!472 () V!12699)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12699)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12699)

(declare-fun getCurrentListMapNoExtraKeys!655 (array!21311 array!21313 (_ BitVec 32) (_ BitVec 32) V!12699 V!12699 (_ BitVec 32) Int) ListLongMap!4743)

(assert (=> b!369763 (= lt!169818 (getCurrentListMapNoExtraKeys!655 lt!169817 (array!21314 (store (arr!10122 _values!506) i!548 (ValueCellFull!4004 v!373)) (size!10474 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169819 () ListLongMap!4743)

(assert (=> b!369763 (= lt!169819 (getCurrentListMapNoExtraKeys!655 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369764 () Bool)

(declare-fun res!207605 () Bool)

(assert (=> b!369764 (=> (not res!207605) (not e!225930))))

(assert (=> b!369764 (= res!207605 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10473 _keys!658))))))

(declare-fun b!369765 () Bool)

(declare-fun res!207609 () Bool)

(assert (=> b!369765 (=> (not res!207609) (not e!225930))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369765 (= res!207609 (validKeyInArray!0 k!778))))

(declare-fun b!369766 () Bool)

(assert (=> b!369766 (= e!225930 e!225926)))

(declare-fun res!207606 () Bool)

(assert (=> b!369766 (=> (not res!207606) (not e!225926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21311 (_ BitVec 32)) Bool)

(assert (=> b!369766 (= res!207606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169817 mask!970))))

(assert (=> b!369766 (= lt!169817 (array!21312 (store (arr!10121 _keys!658) i!548 k!778) (size!10473 _keys!658)))))

(declare-fun b!369767 () Bool)

(declare-fun e!225927 () Bool)

(declare-fun e!225928 () Bool)

(declare-fun mapRes!14607 () Bool)

(assert (=> b!369767 (= e!225927 (and e!225928 mapRes!14607))))

(declare-fun condMapEmpty!14607 () Bool)

(declare-fun mapDefault!14607 () ValueCell!4004)

