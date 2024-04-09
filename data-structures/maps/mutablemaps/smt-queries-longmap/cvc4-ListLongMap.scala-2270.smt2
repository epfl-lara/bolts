; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37094 () Bool)

(assert start!37094)

(declare-fun b_free!8213 () Bool)

(declare-fun b_next!8213 () Bool)

(assert (=> start!37094 (= b_free!8213 (not b_next!8213))))

(declare-fun tp!29354 () Bool)

(declare-fun b_and!15473 () Bool)

(assert (=> start!37094 (= tp!29354 b_and!15473)))

(declare-fun b!373033 () Bool)

(declare-fun res!210131 () Bool)

(declare-fun e!227446 () Bool)

(assert (=> b!373033 (=> (not res!210131) (not e!227446))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21629 0))(
  ( (array!21630 (arr!10280 (Array (_ BitVec 32) (_ BitVec 64))) (size!10632 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21629)

(assert (=> b!373033 (= res!210131 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10632 _keys!658))))))

(declare-fun b!373034 () Bool)

(declare-fun res!210139 () Bool)

(assert (=> b!373034 (=> (not res!210139) (not e!227446))))

(assert (=> b!373034 (= res!210139 (or (= (select (arr!10280 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10280 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373035 () Bool)

(declare-fun res!210135 () Bool)

(assert (=> b!373035 (=> (not res!210135) (not e!227446))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373035 (= res!210135 (validKeyInArray!0 k!778))))

(declare-fun b!373036 () Bool)

(declare-fun res!210132 () Bool)

(assert (=> b!373036 (=> (not res!210132) (not e!227446))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12919 0))(
  ( (V!12920 (val!4475 Int)) )
))
(declare-datatypes ((ValueCell!4087 0))(
  ( (ValueCellFull!4087 (v!6668 V!12919)) (EmptyCell!4087) )
))
(declare-datatypes ((array!21631 0))(
  ( (array!21632 (arr!10281 (Array (_ BitVec 32) ValueCell!4087)) (size!10633 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21631)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!373036 (= res!210132 (and (= (size!10633 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10632 _keys!658) (size!10633 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373037 () Bool)

(declare-fun e!227447 () Bool)

(declare-fun e!227451 () Bool)

(declare-fun mapRes!14856 () Bool)

(assert (=> b!373037 (= e!227447 (and e!227451 mapRes!14856))))

(declare-fun condMapEmpty!14856 () Bool)

(declare-fun mapDefault!14856 () ValueCell!4087)

