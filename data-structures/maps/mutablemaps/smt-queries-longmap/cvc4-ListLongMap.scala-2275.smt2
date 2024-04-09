; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37124 () Bool)

(assert start!37124)

(declare-fun b_free!8243 () Bool)

(declare-fun b_next!8243 () Bool)

(assert (=> start!37124 (= b_free!8243 (not b_next!8243))))

(declare-fun tp!29445 () Bool)

(declare-fun b_and!15503 () Bool)

(assert (=> start!37124 (= tp!29445 b_and!15503)))

(declare-fun b!373707 () Bool)

(declare-fun res!210676 () Bool)

(declare-fun e!227805 () Bool)

(assert (=> b!373707 (=> (not res!210676) (not e!227805))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373707 (= res!210676 (validKeyInArray!0 k!778))))

(declare-fun b!373708 () Bool)

(declare-fun res!210680 () Bool)

(assert (=> b!373708 (=> (not res!210680) (not e!227805))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12959 0))(
  ( (V!12960 (val!4490 Int)) )
))
(declare-datatypes ((ValueCell!4102 0))(
  ( (ValueCellFull!4102 (v!6683 V!12959)) (EmptyCell!4102) )
))
(declare-datatypes ((array!21687 0))(
  ( (array!21688 (arr!10309 (Array (_ BitVec 32) ValueCell!4102)) (size!10661 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21687)

(declare-datatypes ((array!21689 0))(
  ( (array!21690 (arr!10310 (Array (_ BitVec 32) (_ BitVec 64))) (size!10662 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21689)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!373708 (= res!210680 (and (= (size!10661 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10662 _keys!658) (size!10661 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373709 () Bool)

(declare-fun e!227811 () Bool)

(declare-fun tp_is_empty!8891 () Bool)

(assert (=> b!373709 (= e!227811 tp_is_empty!8891)))

(declare-fun b!373710 () Bool)

(declare-fun e!227808 () Bool)

(assert (=> b!373710 (= e!227808 true)))

(declare-datatypes ((tuple2!5942 0))(
  ( (tuple2!5943 (_1!2981 (_ BitVec 64)) (_2!2981 V!12959)) )
))
(declare-fun lt!171972 () tuple2!5942)

(declare-fun lt!171969 () tuple2!5942)

(declare-datatypes ((List!5815 0))(
  ( (Nil!5812) (Cons!5811 (h!6667 tuple2!5942) (t!10973 List!5815)) )
))
(declare-datatypes ((ListLongMap!4869 0))(
  ( (ListLongMap!4870 (toList!2450 List!5815)) )
))
(declare-fun lt!171965 () ListLongMap!4869)

(declare-fun lt!171976 () ListLongMap!4869)

(declare-fun +!791 (ListLongMap!4869 tuple2!5942) ListLongMap!4869)

(assert (=> b!373710 (= (+!791 lt!171976 lt!171972) (+!791 lt!171965 lt!171969))))

(declare-datatypes ((Unit!11485 0))(
  ( (Unit!11486) )
))
(declare-fun lt!171968 () Unit!11485)

(declare-fun v!373 () V!12959)

(declare-fun lt!171973 () ListLongMap!4869)

(declare-fun minValue!472 () V!12959)

(declare-fun addCommutativeForDiffKeys!220 (ListLongMap!4869 (_ BitVec 64) V!12959 (_ BitVec 64) V!12959) Unit!11485)

(assert (=> b!373710 (= lt!171968 (addCommutativeForDiffKeys!220 lt!171973 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373711 () Bool)

(declare-fun res!210673 () Bool)

(assert (=> b!373711 (=> (not res!210673) (not e!227805))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373711 (= res!210673 (or (= (select (arr!10310 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10310 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373712 () Bool)

(declare-fun res!210677 () Bool)

(assert (=> b!373712 (=> (not res!210677) (not e!227805))))

(assert (=> b!373712 (= res!210677 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10662 _keys!658))))))

(declare-fun b!373713 () Bool)

(declare-fun e!227810 () Bool)

(declare-fun e!227806 () Bool)

(declare-fun mapRes!14901 () Bool)

(assert (=> b!373713 (= e!227810 (and e!227806 mapRes!14901))))

(declare-fun condMapEmpty!14901 () Bool)

(declare-fun mapDefault!14901 () ValueCell!4102)

