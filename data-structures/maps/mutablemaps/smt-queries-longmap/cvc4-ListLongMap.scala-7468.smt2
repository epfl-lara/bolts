; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94772 () Bool)

(assert start!94772)

(declare-fun b_free!21989 () Bool)

(declare-fun b_next!21989 () Bool)

(assert (=> start!94772 (= b_free!21989 (not b_next!21989))))

(declare-fun tp!77427 () Bool)

(declare-fun b_and!34837 () Bool)

(assert (=> start!94772 (= tp!77427 b_and!34837)))

(declare-fun b!1071106 () Bool)

(declare-fun res!714613 () Bool)

(declare-fun e!611591 () Bool)

(assert (=> b!1071106 (=> (not res!714613) (not e!611591))))

(declare-datatypes ((array!68532 0))(
  ( (array!68533 (arr!32958 (Array (_ BitVec 32) (_ BitVec 64))) (size!33495 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68532)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68532 (_ BitVec 32)) Bool)

(assert (=> b!1071106 (= res!714613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!714615 () Bool)

(assert (=> start!94772 (=> (not res!714615) (not e!611591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94772 (= res!714615 (validMask!0 mask!1515))))

(assert (=> start!94772 e!611591))

(assert (=> start!94772 true))

(declare-fun tp_is_empty!25799 () Bool)

(assert (=> start!94772 tp_is_empty!25799))

(declare-datatypes ((V!39533 0))(
  ( (V!39534 (val!12950 Int)) )
))
(declare-datatypes ((ValueCell!12196 0))(
  ( (ValueCellFull!12196 (v!15567 V!39533)) (EmptyCell!12196) )
))
(declare-datatypes ((array!68534 0))(
  ( (array!68535 (arr!32959 (Array (_ BitVec 32) ValueCell!12196)) (size!33496 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68534)

(declare-fun e!611589 () Bool)

(declare-fun array_inv!25338 (array!68534) Bool)

(assert (=> start!94772 (and (array_inv!25338 _values!955) e!611589)))

(assert (=> start!94772 tp!77427))

(declare-fun array_inv!25339 (array!68532) Bool)

(assert (=> start!94772 (array_inv!25339 _keys!1163)))

(declare-fun b!1071107 () Bool)

(declare-fun e!611588 () Bool)

(declare-fun mapRes!40405 () Bool)

(assert (=> b!1071107 (= e!611589 (and e!611588 mapRes!40405))))

(declare-fun condMapEmpty!40405 () Bool)

(declare-fun mapDefault!40405 () ValueCell!12196)

