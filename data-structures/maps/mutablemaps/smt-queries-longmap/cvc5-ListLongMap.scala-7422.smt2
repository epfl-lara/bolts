; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94404 () Bool)

(assert start!94404)

(declare-fun b_free!21709 () Bool)

(declare-fun b_next!21709 () Bool)

(assert (=> start!94404 (= b_free!21709 (not b_next!21709))))

(declare-fun tp!76572 () Bool)

(declare-fun b_and!34511 () Bool)

(assert (=> start!94404 (= tp!76572 b_and!34511)))

(declare-fun b!1067050 () Bool)

(declare-fun res!712207 () Bool)

(declare-fun e!608600 () Bool)

(assert (=> b!1067050 (=> (not res!712207) (not e!608600))))

(declare-datatypes ((array!67996 0))(
  ( (array!67997 (arr!32695 (Array (_ BitVec 32) (_ BitVec 64))) (size!33232 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67996)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67996 (_ BitVec 32)) Bool)

(assert (=> b!1067050 (= res!712207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067051 () Bool)

(declare-fun e!608603 () Bool)

(declare-fun tp_is_empty!25519 () Bool)

(assert (=> b!1067051 (= e!608603 tp_is_empty!25519)))

(declare-fun b!1067052 () Bool)

(declare-fun res!712205 () Bool)

(assert (=> b!1067052 (=> (not res!712205) (not e!608600))))

(declare-datatypes ((V!39161 0))(
  ( (V!39162 (val!12810 Int)) )
))
(declare-datatypes ((ValueCell!12056 0))(
  ( (ValueCellFull!12056 (v!15425 V!39161)) (EmptyCell!12056) )
))
(declare-datatypes ((array!67998 0))(
  ( (array!67999 (arr!32696 (Array (_ BitVec 32) ValueCell!12056)) (size!33233 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67998)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067052 (= res!712205 (and (= (size!33233 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33232 _keys!1163) (size!33233 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067053 () Bool)

(declare-fun e!608602 () Bool)

(declare-fun mapRes!39970 () Bool)

(assert (=> b!1067053 (= e!608602 (and e!608603 mapRes!39970))))

(declare-fun condMapEmpty!39970 () Bool)

(declare-fun mapDefault!39970 () ValueCell!12056)

