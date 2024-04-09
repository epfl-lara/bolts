; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93846 () Bool)

(assert start!93846)

(declare-fun b_free!21283 () Bool)

(declare-fun b_next!21283 () Bool)

(assert (=> start!93846 (= b_free!21283 (not b_next!21283))))

(declare-fun tp!75272 () Bool)

(declare-fun b_and!34015 () Bool)

(assert (=> start!93846 (= tp!75272 b_and!34015)))

(declare-fun res!708648 () Bool)

(declare-fun e!604172 () Bool)

(assert (=> start!93846 (=> (not res!708648) (not e!604172))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93846 (= res!708648 (validMask!0 mask!1515))))

(assert (=> start!93846 e!604172))

(assert (=> start!93846 true))

(declare-fun tp_is_empty!25093 () Bool)

(assert (=> start!93846 tp_is_empty!25093))

(declare-datatypes ((V!38593 0))(
  ( (V!38594 (val!12597 Int)) )
))
(declare-datatypes ((ValueCell!11843 0))(
  ( (ValueCellFull!11843 (v!15208 V!38593)) (EmptyCell!11843) )
))
(declare-datatypes ((array!67176 0))(
  ( (array!67177 (arr!32292 (Array (_ BitVec 32) ValueCell!11843)) (size!32829 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67176)

(declare-fun e!604171 () Bool)

(declare-fun array_inv!24862 (array!67176) Bool)

(assert (=> start!93846 (and (array_inv!24862 _values!955) e!604171)))

(assert (=> start!93846 tp!75272))

(declare-datatypes ((array!67178 0))(
  ( (array!67179 (arr!32293 (Array (_ BitVec 32) (_ BitVec 64))) (size!32830 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67178)

(declare-fun array_inv!24863 (array!67178) Bool)

(assert (=> start!93846 (array_inv!24863 _keys!1163)))

(declare-fun b!1060983 () Bool)

(declare-fun e!604170 () Bool)

(declare-fun mapRes!39310 () Bool)

(assert (=> b!1060983 (= e!604171 (and e!604170 mapRes!39310))))

(declare-fun condMapEmpty!39310 () Bool)

(declare-fun mapDefault!39310 () ValueCell!11843)

