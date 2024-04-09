; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94560 () Bool)

(assert start!94560)

(declare-fun b_free!21829 () Bool)

(declare-fun b_next!21829 () Bool)

(assert (=> start!94560 (= b_free!21829 (not b_next!21829))))

(declare-fun tp!76938 () Bool)

(declare-fun b_and!34649 () Bool)

(assert (=> start!94560 (= tp!76938 b_and!34649)))

(declare-fun res!713263 () Bool)

(declare-fun e!609907 () Bool)

(assert (=> start!94560 (=> (not res!713263) (not e!609907))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94560 (= res!713263 (validMask!0 mask!1515))))

(assert (=> start!94560 e!609907))

(assert (=> start!94560 true))

(declare-fun tp_is_empty!25639 () Bool)

(assert (=> start!94560 tp_is_empty!25639))

(declare-datatypes ((V!39321 0))(
  ( (V!39322 (val!12870 Int)) )
))
(declare-datatypes ((ValueCell!12116 0))(
  ( (ValueCellFull!12116 (v!15486 V!39321)) (EmptyCell!12116) )
))
(declare-datatypes ((array!68228 0))(
  ( (array!68229 (arr!32809 (Array (_ BitVec 32) ValueCell!12116)) (size!33346 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68228)

(declare-fun e!609901 () Bool)

(declare-fun array_inv!25236 (array!68228) Bool)

(assert (=> start!94560 (and (array_inv!25236 _values!955) e!609901)))

(assert (=> start!94560 tp!76938))

(declare-datatypes ((array!68230 0))(
  ( (array!68231 (arr!32810 (Array (_ BitVec 32) (_ BitVec 64))) (size!33347 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68230)

(declare-fun array_inv!25237 (array!68230) Bool)

(assert (=> start!94560 (array_inv!25237 _keys!1163)))

(declare-fun b!1068799 () Bool)

(declare-fun e!609906 () Bool)

(declare-fun mapRes!40156 () Bool)

(assert (=> b!1068799 (= e!609901 (and e!609906 mapRes!40156))))

(declare-fun condMapEmpty!40156 () Bool)

(declare-fun mapDefault!40156 () ValueCell!12116)

