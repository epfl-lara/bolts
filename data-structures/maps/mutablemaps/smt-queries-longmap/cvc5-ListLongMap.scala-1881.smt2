; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33728 () Bool)

(assert start!33728)

(declare-fun b_free!6955 () Bool)

(declare-fun b_next!6955 () Bool)

(assert (=> start!33728 (= b_free!6955 (not b_next!6955))))

(declare-fun tp!24368 () Bool)

(declare-fun b_and!14153 () Bool)

(assert (=> start!33728 (= tp!24368 b_and!14153)))

(declare-fun res!184930 () Bool)

(declare-fun e!205680 () Bool)

(assert (=> start!33728 (=> (not res!184930) (not e!205680))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33728 (= res!184930 (validMask!0 mask!2385))))

(assert (=> start!33728 e!205680))

(assert (=> start!33728 true))

(declare-fun tp_is_empty!6907 () Bool)

(assert (=> start!33728 tp_is_empty!6907))

(assert (=> start!33728 tp!24368))

(declare-datatypes ((V!10187 0))(
  ( (V!10188 (val!3498 Int)) )
))
(declare-datatypes ((ValueCell!3110 0))(
  ( (ValueCellFull!3110 (v!5656 V!10187)) (EmptyCell!3110) )
))
(declare-datatypes ((array!17395 0))(
  ( (array!17396 (arr!8225 (Array (_ BitVec 32) ValueCell!3110)) (size!8577 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17395)

(declare-fun e!205685 () Bool)

(declare-fun array_inv!6098 (array!17395) Bool)

(assert (=> start!33728 (and (array_inv!6098 _values!1525) e!205685)))

(declare-datatypes ((array!17397 0))(
  ( (array!17398 (arr!8226 (Array (_ BitVec 32) (_ BitVec 64))) (size!8578 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17397)

(declare-fun array_inv!6099 (array!17397) Bool)

(assert (=> start!33728 (array_inv!6099 _keys!1895)))

(declare-fun b!335059 () Bool)

(declare-fun e!205682 () Bool)

(declare-fun mapRes!11757 () Bool)

(assert (=> b!335059 (= e!205685 (and e!205682 mapRes!11757))))

(declare-fun condMapEmpty!11757 () Bool)

(declare-fun mapDefault!11757 () ValueCell!3110)

