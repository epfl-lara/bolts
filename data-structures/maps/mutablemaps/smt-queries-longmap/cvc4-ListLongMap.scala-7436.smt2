; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94506 () Bool)

(assert start!94506)

(declare-fun b_free!21797 () Bool)

(declare-fun b_next!21797 () Bool)

(assert (=> start!94506 (= b_free!21797 (not b_next!21797))))

(declare-fun tp!76839 () Bool)

(declare-fun b_and!34607 () Bool)

(assert (=> start!94506 (= tp!76839 b_and!34607)))

(declare-fun mapNonEmpty!40105 () Bool)

(declare-fun mapRes!40105 () Bool)

(declare-fun tp!76838 () Bool)

(declare-fun e!609468 () Bool)

(assert (=> mapNonEmpty!40105 (= mapRes!40105 (and tp!76838 e!609468))))

(declare-datatypes ((V!39277 0))(
  ( (V!39278 (val!12854 Int)) )
))
(declare-datatypes ((ValueCell!12100 0))(
  ( (ValueCellFull!12100 (v!15469 V!39277)) (EmptyCell!12100) )
))
(declare-fun mapRest!40105 () (Array (_ BitVec 32) ValueCell!12100))

(declare-fun mapValue!40105 () ValueCell!12100)

(declare-datatypes ((array!68168 0))(
  ( (array!68169 (arr!32780 (Array (_ BitVec 32) ValueCell!12100)) (size!33317 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68168)

(declare-fun mapKey!40105 () (_ BitVec 32))

(assert (=> mapNonEmpty!40105 (= (arr!32780 _values!955) (store mapRest!40105 mapKey!40105 mapValue!40105))))

(declare-fun mapIsEmpty!40105 () Bool)

(assert (=> mapIsEmpty!40105 mapRes!40105))

(declare-fun b!1068210 () Bool)

(declare-fun res!712917 () Bool)

(declare-fun e!609470 () Bool)

(assert (=> b!1068210 (=> (not res!712917) (not e!609470))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68170 0))(
  ( (array!68171 (arr!32781 (Array (_ BitVec 32) (_ BitVec 64))) (size!33318 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68170)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1068210 (= res!712917 (and (= (size!33317 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33318 _keys!1163) (size!33317 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!712918 () Bool)

(assert (=> start!94506 (=> (not res!712918) (not e!609470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94506 (= res!712918 (validMask!0 mask!1515))))

(assert (=> start!94506 e!609470))

(assert (=> start!94506 true))

(declare-fun tp_is_empty!25607 () Bool)

(assert (=> start!94506 tp_is_empty!25607))

(declare-fun e!609471 () Bool)

(declare-fun array_inv!25214 (array!68168) Bool)

(assert (=> start!94506 (and (array_inv!25214 _values!955) e!609471)))

(assert (=> start!94506 tp!76839))

(declare-fun array_inv!25215 (array!68170) Bool)

(assert (=> start!94506 (array_inv!25215 _keys!1163)))

(declare-fun b!1068211 () Bool)

(declare-fun e!609465 () Bool)

(assert (=> b!1068211 (= e!609471 (and e!609465 mapRes!40105))))

(declare-fun condMapEmpty!40105 () Bool)

(declare-fun mapDefault!40105 () ValueCell!12100)

