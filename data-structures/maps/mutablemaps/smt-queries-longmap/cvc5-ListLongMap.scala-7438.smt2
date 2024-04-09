; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94536 () Bool)

(assert start!94536)

(declare-fun b_free!21805 () Bool)

(declare-fun b_next!21805 () Bool)

(assert (=> start!94536 (= b_free!21805 (not b_next!21805))))

(declare-fun tp!76865 () Bool)

(declare-fun b_and!34625 () Bool)

(assert (=> start!94536 (= tp!76865 b_and!34625)))

(declare-fun mapIsEmpty!40120 () Bool)

(declare-fun mapRes!40120 () Bool)

(assert (=> mapIsEmpty!40120 mapRes!40120))

(declare-fun res!713051 () Bool)

(declare-fun e!609654 () Bool)

(assert (=> start!94536 (=> (not res!713051) (not e!609654))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94536 (= res!713051 (validMask!0 mask!1515))))

(assert (=> start!94536 e!609654))

(assert (=> start!94536 true))

(declare-fun tp_is_empty!25615 () Bool)

(assert (=> start!94536 tp_is_empty!25615))

(declare-datatypes ((V!39289 0))(
  ( (V!39290 (val!12858 Int)) )
))
(declare-datatypes ((ValueCell!12104 0))(
  ( (ValueCellFull!12104 (v!15474 V!39289)) (EmptyCell!12104) )
))
(declare-datatypes ((array!68184 0))(
  ( (array!68185 (arr!32787 (Array (_ BitVec 32) ValueCell!12104)) (size!33324 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68184)

(declare-fun e!609652 () Bool)

(declare-fun array_inv!25220 (array!68184) Bool)

(assert (=> start!94536 (and (array_inv!25220 _values!955) e!609652)))

(assert (=> start!94536 tp!76865))

(declare-datatypes ((array!68186 0))(
  ( (array!68187 (arr!32788 (Array (_ BitVec 32) (_ BitVec 64))) (size!33325 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68186)

(declare-fun array_inv!25221 (array!68186) Bool)

(assert (=> start!94536 (array_inv!25221 _keys!1163)))

(declare-fun b!1068475 () Bool)

(declare-fun e!609653 () Bool)

(assert (=> b!1068475 (= e!609652 (and e!609653 mapRes!40120))))

(declare-fun condMapEmpty!40120 () Bool)

(declare-fun mapDefault!40120 () ValueCell!12104)

