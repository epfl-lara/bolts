; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95106 () Bool)

(assert start!95106)

(declare-fun b_free!22187 () Bool)

(declare-fun b_next!22187 () Bool)

(assert (=> start!95106 (= b_free!22187 (not b_next!22187))))

(declare-fun tp!78042 () Bool)

(declare-fun b_and!35113 () Bool)

(assert (=> start!95106 (= tp!78042 b_and!35113)))

(declare-fun mapIsEmpty!40723 () Bool)

(declare-fun mapRes!40723 () Bool)

(assert (=> mapIsEmpty!40723 mapRes!40723))

(declare-fun b!1074708 () Bool)

(declare-fun res!716656 () Bool)

(declare-fun e!614176 () Bool)

(assert (=> b!1074708 (=> (not res!716656) (not e!614176))))

(declare-datatypes ((array!68924 0))(
  ( (array!68925 (arr!33147 (Array (_ BitVec 32) (_ BitVec 64))) (size!33684 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68924)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68924 (_ BitVec 32)) Bool)

(assert (=> b!1074708 (= res!716656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074709 () Bool)

(declare-fun e!614177 () Bool)

(declare-fun tp_is_empty!25997 () Bool)

(assert (=> b!1074709 (= e!614177 tp_is_empty!25997)))

(declare-fun b!1074710 () Bool)

(declare-fun res!716658 () Bool)

(assert (=> b!1074710 (=> (not res!716658) (not e!614176))))

(declare-datatypes ((V!39797 0))(
  ( (V!39798 (val!13049 Int)) )
))
(declare-datatypes ((ValueCell!12295 0))(
  ( (ValueCellFull!12295 (v!15672 V!39797)) (EmptyCell!12295) )
))
(declare-datatypes ((array!68926 0))(
  ( (array!68927 (arr!33148 (Array (_ BitVec 32) ValueCell!12295)) (size!33685 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68926)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074710 (= res!716658 (and (= (size!33685 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33684 _keys!1163) (size!33685 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!716657 () Bool)

(assert (=> start!95106 (=> (not res!716657) (not e!614176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95106 (= res!716657 (validMask!0 mask!1515))))

(assert (=> start!95106 e!614176))

(assert (=> start!95106 true))

(assert (=> start!95106 tp_is_empty!25997))

(declare-fun e!614179 () Bool)

(declare-fun array_inv!25470 (array!68926) Bool)

(assert (=> start!95106 (and (array_inv!25470 _values!955) e!614179)))

(assert (=> start!95106 tp!78042))

(declare-fun array_inv!25471 (array!68924) Bool)

(assert (=> start!95106 (array_inv!25471 _keys!1163)))

(declare-fun b!1074711 () Bool)

(declare-fun e!614175 () Bool)

(assert (=> b!1074711 (= e!614179 (and e!614175 mapRes!40723))))

(declare-fun condMapEmpty!40723 () Bool)

(declare-fun mapDefault!40723 () ValueCell!12295)

