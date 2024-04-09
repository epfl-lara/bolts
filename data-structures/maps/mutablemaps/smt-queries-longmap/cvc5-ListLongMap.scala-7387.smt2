; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94120 () Bool)

(assert start!94120)

(declare-fun b_free!21499 () Bool)

(declare-fun b_next!21499 () Bool)

(assert (=> start!94120 (= b_free!21499 (not b_next!21499))))

(declare-fun tp!75929 () Bool)

(declare-fun b_and!34259 () Bool)

(assert (=> start!94120 (= tp!75929 b_and!34259)))

(declare-fun res!710431 () Bool)

(declare-fun e!606380 () Bool)

(assert (=> start!94120 (=> (not res!710431) (not e!606380))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94120 (= res!710431 (validMask!0 mask!1515))))

(assert (=> start!94120 e!606380))

(assert (=> start!94120 true))

(declare-fun tp_is_empty!25309 () Bool)

(assert (=> start!94120 tp_is_empty!25309))

(declare-datatypes ((V!38881 0))(
  ( (V!38882 (val!12705 Int)) )
))
(declare-datatypes ((ValueCell!11951 0))(
  ( (ValueCellFull!11951 (v!15318 V!38881)) (EmptyCell!11951) )
))
(declare-datatypes ((array!67586 0))(
  ( (array!67587 (arr!32494 (Array (_ BitVec 32) ValueCell!11951)) (size!33031 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67586)

(declare-fun e!606376 () Bool)

(declare-fun array_inv!24998 (array!67586) Bool)

(assert (=> start!94120 (and (array_inv!24998 _values!955) e!606376)))

(assert (=> start!94120 tp!75929))

(declare-datatypes ((array!67588 0))(
  ( (array!67589 (arr!32495 (Array (_ BitVec 32) (_ BitVec 64))) (size!33032 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67588)

(declare-fun array_inv!24999 (array!67588) Bool)

(assert (=> start!94120 (array_inv!24999 _keys!1163)))

(declare-fun b!1063983 () Bool)

(declare-fun e!606377 () Bool)

(declare-fun mapRes!39643 () Bool)

(assert (=> b!1063983 (= e!606376 (and e!606377 mapRes!39643))))

(declare-fun condMapEmpty!39643 () Bool)

(declare-fun mapDefault!39643 () ValueCell!11951)

