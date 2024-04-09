; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94778 () Bool)

(assert start!94778)

(declare-fun b_free!21995 () Bool)

(declare-fun b_next!21995 () Bool)

(assert (=> start!94778 (= b_free!21995 (not b_next!21995))))

(declare-fun tp!77444 () Bool)

(declare-fun b_and!34843 () Bool)

(assert (=> start!94778 (= tp!77444 b_and!34843)))

(declare-fun res!714664 () Bool)

(declare-fun e!611653 () Bool)

(assert (=> start!94778 (=> (not res!714664) (not e!611653))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94778 (= res!714664 (validMask!0 mask!1515))))

(assert (=> start!94778 e!611653))

(assert (=> start!94778 true))

(declare-fun tp_is_empty!25805 () Bool)

(assert (=> start!94778 tp_is_empty!25805))

(declare-datatypes ((V!39541 0))(
  ( (V!39542 (val!12953 Int)) )
))
(declare-datatypes ((ValueCell!12199 0))(
  ( (ValueCellFull!12199 (v!15570 V!39541)) (EmptyCell!12199) )
))
(declare-datatypes ((array!68544 0))(
  ( (array!68545 (arr!32964 (Array (_ BitVec 32) ValueCell!12199)) (size!33501 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68544)

(declare-fun e!611652 () Bool)

(declare-fun array_inv!25344 (array!68544) Bool)

(assert (=> start!94778 (and (array_inv!25344 _values!955) e!611652)))

(assert (=> start!94778 tp!77444))

(declare-datatypes ((array!68546 0))(
  ( (array!68547 (arr!32965 (Array (_ BitVec 32) (_ BitVec 64))) (size!33502 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68546)

(declare-fun array_inv!25345 (array!68546) Bool)

(assert (=> start!94778 (array_inv!25345 _keys!1163)))

(declare-fun b!1071187 () Bool)

(declare-fun e!611650 () Bool)

(assert (=> b!1071187 (= e!611650 tp_is_empty!25805)))

(declare-fun b!1071188 () Bool)

(declare-fun res!714668 () Bool)

(assert (=> b!1071188 (=> (not res!714668) (not e!611653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68546 (_ BitVec 32)) Bool)

(assert (=> b!1071188 (= res!714668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071189 () Bool)

(declare-fun e!611654 () Bool)

(declare-fun mapRes!40414 () Bool)

(assert (=> b!1071189 (= e!611652 (and e!611654 mapRes!40414))))

(declare-fun condMapEmpty!40414 () Bool)

(declare-fun mapDefault!40414 () ValueCell!12199)

