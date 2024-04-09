; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82622 () Bool)

(assert start!82622)

(declare-fun b_free!18727 () Bool)

(declare-fun b_next!18727 () Bool)

(assert (=> start!82622 (= b_free!18727 (not b_next!18727))))

(declare-fun tp!65302 () Bool)

(declare-fun b_and!30233 () Bool)

(assert (=> start!82622 (= tp!65302 b_and!30233)))

(declare-fun res!644206 () Bool)

(declare-fun e!542785 () Bool)

(assert (=> start!82622 (=> (not res!644206) (not e!542785))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82622 (= res!644206 (validMask!0 mask!2110))))

(assert (=> start!82622 e!542785))

(assert (=> start!82622 true))

(declare-datatypes ((V!33689 0))(
  ( (V!33690 (val!10815 Int)) )
))
(declare-datatypes ((ValueCell!10283 0))(
  ( (ValueCellFull!10283 (v!13373 V!33689)) (EmptyCell!10283) )
))
(declare-datatypes ((array!59137 0))(
  ( (array!59138 (arr!28433 (Array (_ BitVec 32) ValueCell!10283)) (size!28913 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59137)

(declare-fun e!542788 () Bool)

(declare-fun array_inv!21953 (array!59137) Bool)

(assert (=> start!82622 (and (array_inv!21953 _values!1400) e!542788)))

(declare-datatypes ((array!59139 0))(
  ( (array!59140 (arr!28434 (Array (_ BitVec 32) (_ BitVec 64))) (size!28914 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59139)

(declare-fun array_inv!21954 (array!59139) Bool)

(assert (=> start!82622 (array_inv!21954 _keys!1686)))

(assert (=> start!82622 tp!65302))

(declare-fun tp_is_empty!21529 () Bool)

(assert (=> start!82622 tp_is_empty!21529))

(declare-fun b!962450 () Bool)

(declare-fun e!542786 () Bool)

(declare-fun mapRes!34288 () Bool)

(assert (=> b!962450 (= e!542788 (and e!542786 mapRes!34288))))

(declare-fun condMapEmpty!34288 () Bool)

(declare-fun mapDefault!34288 () ValueCell!10283)

