; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37226 () Bool)

(assert start!37226)

(declare-fun b_free!8345 () Bool)

(declare-fun b_next!8345 () Bool)

(assert (=> start!37226 (= b_free!8345 (not b_next!8345))))

(declare-fun tp!29751 () Bool)

(declare-fun b_and!15605 () Bool)

(assert (=> start!37226 (= tp!29751 b_and!15605)))

(declare-fun b!376011 () Bool)

(declare-fun e!229034 () Bool)

(declare-fun e!229033 () Bool)

(assert (=> b!376011 (= e!229034 e!229033)))

(declare-fun res!212518 () Bool)

(assert (=> b!376011 (=> (not res!212518) (not e!229033))))

(declare-datatypes ((array!21885 0))(
  ( (array!21886 (arr!10408 (Array (_ BitVec 32) (_ BitVec 64))) (size!10760 (_ BitVec 32))) )
))
(declare-fun lt!174394 () array!21885)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21885 (_ BitVec 32)) Bool)

(assert (=> b!376011 (= res!212518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174394 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21885)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376011 (= lt!174394 (array!21886 (store (arr!10408 _keys!658) i!548 k!778) (size!10760 _keys!658)))))

(declare-fun b!376012 () Bool)

(declare-fun e!229035 () Bool)

(declare-fun tp_is_empty!8993 () Bool)

(assert (=> b!376012 (= e!229035 tp_is_empty!8993)))

(declare-fun b!376013 () Bool)

(declare-fun e!229032 () Bool)

(declare-fun e!229029 () Bool)

(declare-fun mapRes!15054 () Bool)

(assert (=> b!376013 (= e!229032 (and e!229029 mapRes!15054))))

(declare-fun condMapEmpty!15054 () Bool)

(declare-datatypes ((V!13095 0))(
  ( (V!13096 (val!4541 Int)) )
))
(declare-datatypes ((ValueCell!4153 0))(
  ( (ValueCellFull!4153 (v!6734 V!13095)) (EmptyCell!4153) )
))
(declare-datatypes ((array!21887 0))(
  ( (array!21888 (arr!10409 (Array (_ BitVec 32) ValueCell!4153)) (size!10761 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21887)

(declare-fun mapDefault!15054 () ValueCell!4153)

