; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37228 () Bool)

(assert start!37228)

(declare-fun b_free!8347 () Bool)

(declare-fun b_next!8347 () Bool)

(assert (=> start!37228 (= b_free!8347 (not b_next!8347))))

(declare-fun tp!29756 () Bool)

(declare-fun b_and!15607 () Bool)

(assert (=> start!37228 (= tp!29756 b_and!15607)))

(declare-fun b!376056 () Bool)

(declare-fun res!212559 () Bool)

(declare-fun e!229056 () Bool)

(assert (=> b!376056 (=> (not res!212559) (not e!229056))))

(declare-datatypes ((array!21889 0))(
  ( (array!21890 (arr!10410 (Array (_ BitVec 32) (_ BitVec 64))) (size!10762 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21889)

(declare-datatypes ((List!5892 0))(
  ( (Nil!5889) (Cons!5888 (h!6744 (_ BitVec 64)) (t!11050 List!5892)) )
))
(declare-fun arrayNoDuplicates!0 (array!21889 (_ BitVec 32) List!5892) Bool)

(assert (=> b!376056 (= res!212559 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5889))))

(declare-fun b!376057 () Bool)

(declare-fun res!212561 () Bool)

(assert (=> b!376057 (=> (not res!212561) (not e!229056))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376057 (= res!212561 (or (= (select (arr!10410 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10410 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376058 () Bool)

(declare-fun res!212554 () Bool)

(assert (=> b!376058 (=> (not res!212554) (not e!229056))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13099 0))(
  ( (V!13100 (val!4542 Int)) )
))
(declare-datatypes ((ValueCell!4154 0))(
  ( (ValueCellFull!4154 (v!6735 V!13099)) (EmptyCell!4154) )
))
(declare-datatypes ((array!21891 0))(
  ( (array!21892 (arr!10411 (Array (_ BitVec 32) ValueCell!4154)) (size!10763 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21891)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!376058 (= res!212554 (and (= (size!10763 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10762 _keys!658) (size!10763 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376059 () Bool)

(declare-fun e!229054 () Bool)

(declare-fun e!229052 () Bool)

(declare-fun mapRes!15057 () Bool)

(assert (=> b!376059 (= e!229054 (and e!229052 mapRes!15057))))

(declare-fun condMapEmpty!15057 () Bool)

(declare-fun mapDefault!15057 () ValueCell!4154)

