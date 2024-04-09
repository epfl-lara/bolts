; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37028 () Bool)

(assert start!37028)

(declare-fun b_free!8147 () Bool)

(declare-fun b_next!8147 () Bool)

(assert (=> start!37028 (= b_free!8147 (not b_next!8147))))

(declare-fun tp!29156 () Bool)

(declare-fun b_and!15407 () Bool)

(assert (=> start!37028 (= tp!29156 b_and!15407)))

(declare-fun b!371711 () Bool)

(declare-fun e!226830 () Bool)

(declare-fun e!226827 () Bool)

(assert (=> b!371711 (= e!226830 e!226827)))

(declare-fun res!209110 () Bool)

(assert (=> b!371711 (=> (not res!209110) (not e!226827))))

(declare-datatypes ((array!21501 0))(
  ( (array!21502 (arr!10216 (Array (_ BitVec 32) (_ BitVec 64))) (size!10568 (_ BitVec 32))) )
))
(declare-fun lt!170430 () array!21501)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21501 (_ BitVec 32)) Bool)

(assert (=> b!371711 (= res!209110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170430 mask!970))))

(declare-fun _keys!658 () array!21501)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!371711 (= lt!170430 (array!21502 (store (arr!10216 _keys!658) i!548 k!778) (size!10568 _keys!658)))))

(declare-fun b!371712 () Bool)

(declare-fun res!209111 () Bool)

(assert (=> b!371712 (=> (not res!209111) (not e!226830))))

(declare-fun arrayContainsKey!0 (array!21501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371712 (= res!209111 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371713 () Bool)

(declare-fun res!209107 () Bool)

(assert (=> b!371713 (=> (not res!209107) (not e!226830))))

(assert (=> b!371713 (= res!209107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371714 () Bool)

(assert (=> b!371714 (= e!226827 (not (bvsle #b00000000000000000000000000000000 (size!10568 _keys!658))))))

(declare-datatypes ((V!12831 0))(
  ( (V!12832 (val!4442 Int)) )
))
(declare-datatypes ((tuple2!5870 0))(
  ( (tuple2!5871 (_1!2945 (_ BitVec 64)) (_2!2945 V!12831)) )
))
(declare-datatypes ((List!5742 0))(
  ( (Nil!5739) (Cons!5738 (h!6594 tuple2!5870) (t!10900 List!5742)) )
))
(declare-datatypes ((ListLongMap!4797 0))(
  ( (ListLongMap!4798 (toList!2414 List!5742)) )
))
(declare-fun lt!170428 () ListLongMap!4797)

(declare-fun lt!170427 () ListLongMap!4797)

(assert (=> b!371714 (and (= lt!170428 lt!170427) (= lt!170427 lt!170428))))

(declare-fun lt!170429 () ListLongMap!4797)

(declare-fun v!373 () V!12831)

(declare-fun +!755 (ListLongMap!4797 tuple2!5870) ListLongMap!4797)

(assert (=> b!371714 (= lt!170427 (+!755 lt!170429 (tuple2!5871 k!778 v!373)))))

(declare-datatypes ((ValueCell!4054 0))(
  ( (ValueCellFull!4054 (v!6635 V!12831)) (EmptyCell!4054) )
))
(declare-datatypes ((array!21503 0))(
  ( (array!21504 (arr!10217 (Array (_ BitVec 32) ValueCell!4054)) (size!10569 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21503)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12831)

(declare-datatypes ((Unit!11415 0))(
  ( (Unit!11416) )
))
(declare-fun lt!170431 () Unit!11415)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun minValue!472 () V!12831)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!15 (array!21501 array!21503 (_ BitVec 32) (_ BitVec 32) V!12831 V!12831 (_ BitVec 32) (_ BitVec 64) V!12831 (_ BitVec 32) Int) Unit!11415)

(assert (=> b!371714 (= lt!170431 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!15 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!682 (array!21501 array!21503 (_ BitVec 32) (_ BitVec 32) V!12831 V!12831 (_ BitVec 32) Int) ListLongMap!4797)

(assert (=> b!371714 (= lt!170428 (getCurrentListMapNoExtraKeys!682 lt!170430 (array!21504 (store (arr!10217 _values!506) i!548 (ValueCellFull!4054 v!373)) (size!10569 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371714 (= lt!170429 (getCurrentListMapNoExtraKeys!682 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371715 () Bool)

(declare-fun e!226829 () Bool)

(declare-fun e!226826 () Bool)

(declare-fun mapRes!14757 () Bool)

(assert (=> b!371715 (= e!226829 (and e!226826 mapRes!14757))))

(declare-fun condMapEmpty!14757 () Bool)

(declare-fun mapDefault!14757 () ValueCell!4054)

