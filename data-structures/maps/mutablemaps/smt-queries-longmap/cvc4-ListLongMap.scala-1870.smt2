; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33666 () Bool)

(assert start!33666)

(declare-fun b_free!6893 () Bool)

(declare-fun b_next!6893 () Bool)

(assert (=> start!33666 (= b_free!6893 (not b_next!6893))))

(declare-fun tp!24183 () Bool)

(declare-fun b_and!14091 () Bool)

(assert (=> start!33666 (= tp!24183 b_and!14091)))

(declare-fun b!334036 () Bool)

(declare-fun res!184183 () Bool)

(declare-fun e!205079 () Bool)

(assert (=> b!334036 (=> (not res!184183) (not e!205079))))

(declare-datatypes ((array!17281 0))(
  ( (array!17282 (arr!8168 (Array (_ BitVec 32) (_ BitVec 64))) (size!8520 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17281)

(declare-datatypes ((List!4681 0))(
  ( (Nil!4678) (Cons!4677 (h!5533 (_ BitVec 64)) (t!9777 List!4681)) )
))
(declare-fun arrayNoDuplicates!0 (array!17281 (_ BitVec 32) List!4681) Bool)

(assert (=> b!334036 (= res!184183 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4678))))

(declare-fun res!184186 () Bool)

(assert (=> start!33666 (=> (not res!184186) (not e!205079))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33666 (= res!184186 (validMask!0 mask!2385))))

(assert (=> start!33666 e!205079))

(assert (=> start!33666 true))

(declare-fun tp_is_empty!6845 () Bool)

(assert (=> start!33666 tp_is_empty!6845))

(assert (=> start!33666 tp!24183))

(declare-datatypes ((V!10103 0))(
  ( (V!10104 (val!3467 Int)) )
))
(declare-datatypes ((ValueCell!3079 0))(
  ( (ValueCellFull!3079 (v!5625 V!10103)) (EmptyCell!3079) )
))
(declare-datatypes ((array!17283 0))(
  ( (array!17284 (arr!8169 (Array (_ BitVec 32) ValueCell!3079)) (size!8521 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17283)

(declare-fun e!205080 () Bool)

(declare-fun array_inv!6066 (array!17283) Bool)

(assert (=> start!33666 (and (array_inv!6066 _values!1525) e!205080)))

(declare-fun array_inv!6067 (array!17281) Bool)

(assert (=> start!33666 (array_inv!6067 _keys!1895)))

(declare-fun b!334037 () Bool)

(declare-fun e!205075 () Bool)

(declare-fun mapRes!11664 () Bool)

(assert (=> b!334037 (= e!205080 (and e!205075 mapRes!11664))))

(declare-fun condMapEmpty!11664 () Bool)

(declare-fun mapDefault!11664 () ValueCell!3079)

