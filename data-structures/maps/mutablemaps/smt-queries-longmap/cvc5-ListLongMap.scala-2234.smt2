; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36874 () Bool)

(assert start!36874)

(declare-fun b_free!7993 () Bool)

(declare-fun b_next!7993 () Bool)

(assert (=> start!36874 (= b_free!7993 (not b_next!7993))))

(declare-fun tp!28695 () Bool)

(declare-fun b_and!15253 () Bool)

(assert (=> start!36874 (= tp!28695 b_and!15253)))

(declare-fun b!368708 () Bool)

(declare-fun e!225441 () Bool)

(assert (=> b!368708 (= e!225441 false)))

(declare-datatypes ((array!21205 0))(
  ( (array!21206 (arr!10068 (Array (_ BitVec 32) (_ BitVec 64))) (size!10420 (_ BitVec 32))) )
))
(declare-fun lt!169575 () array!21205)

(declare-datatypes ((V!12627 0))(
  ( (V!12628 (val!4365 Int)) )
))
(declare-datatypes ((ValueCell!3977 0))(
  ( (ValueCellFull!3977 (v!6558 V!12627)) (EmptyCell!3977) )
))
(declare-datatypes ((array!21207 0))(
  ( (array!21208 (arr!10069 (Array (_ BitVec 32) ValueCell!3977)) (size!10421 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21207)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5778 0))(
  ( (tuple2!5779 (_1!2899 (_ BitVec 64)) (_2!2899 V!12627)) )
))
(declare-datatypes ((List!5639 0))(
  ( (Nil!5636) (Cons!5635 (h!6491 tuple2!5778) (t!10797 List!5639)) )
))
(declare-datatypes ((ListLongMap!4705 0))(
  ( (ListLongMap!4706 (toList!2368 List!5639)) )
))
(declare-fun lt!169574 () ListLongMap!4705)

(declare-fun zeroValue!472 () V!12627)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12627)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12627)

(declare-fun getCurrentListMapNoExtraKeys!636 (array!21205 array!21207 (_ BitVec 32) (_ BitVec 32) V!12627 V!12627 (_ BitVec 32) Int) ListLongMap!4705)

(assert (=> b!368708 (= lt!169574 (getCurrentListMapNoExtraKeys!636 lt!169575 (array!21208 (store (arr!10069 _values!506) i!548 (ValueCellFull!3977 v!373)) (size!10421 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169576 () ListLongMap!4705)

(declare-fun _keys!658 () array!21205)

(assert (=> b!368708 (= lt!169576 (getCurrentListMapNoExtraKeys!636 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368709 () Bool)

(declare-fun res!206804 () Bool)

(declare-fun e!225442 () Bool)

(assert (=> b!368709 (=> (not res!206804) (not e!225442))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368709 (= res!206804 (validKeyInArray!0 k!778))))

(declare-fun b!368710 () Bool)

(declare-fun e!225439 () Bool)

(declare-fun e!225444 () Bool)

(declare-fun mapRes!14526 () Bool)

(assert (=> b!368710 (= e!225439 (and e!225444 mapRes!14526))))

(declare-fun condMapEmpty!14526 () Bool)

(declare-fun mapDefault!14526 () ValueCell!3977)

