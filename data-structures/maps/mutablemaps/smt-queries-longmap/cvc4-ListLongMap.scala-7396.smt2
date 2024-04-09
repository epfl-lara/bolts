; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94192 () Bool)

(assert start!94192)

(declare-fun b_free!21557 () Bool)

(declare-fun b_next!21557 () Bool)

(assert (=> start!94192 (= b_free!21557 (not b_next!21557))))

(declare-fun tp!76107 () Bool)

(declare-fun b_and!34325 () Bool)

(assert (=> start!94192 (= tp!76107 b_and!34325)))

(declare-fun res!710866 () Bool)

(declare-fun e!606919 () Bool)

(assert (=> start!94192 (=> (not res!710866) (not e!606919))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94192 (= res!710866 (validMask!0 mask!1515))))

(assert (=> start!94192 e!606919))

(assert (=> start!94192 true))

(declare-fun tp_is_empty!25367 () Bool)

(assert (=> start!94192 tp_is_empty!25367))

(declare-datatypes ((V!38957 0))(
  ( (V!38958 (val!12734 Int)) )
))
(declare-datatypes ((ValueCell!11980 0))(
  ( (ValueCellFull!11980 (v!15347 V!38957)) (EmptyCell!11980) )
))
(declare-datatypes ((array!67696 0))(
  ( (array!67697 (arr!32548 (Array (_ BitVec 32) ValueCell!11980)) (size!33085 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67696)

(declare-fun e!606920 () Bool)

(declare-fun array_inv!25040 (array!67696) Bool)

(assert (=> start!94192 (and (array_inv!25040 _values!955) e!606920)))

(assert (=> start!94192 tp!76107))

(declare-datatypes ((array!67698 0))(
  ( (array!67699 (arr!32549 (Array (_ BitVec 32) (_ BitVec 64))) (size!33086 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67698)

(declare-fun array_inv!25041 (array!67698) Bool)

(assert (=> start!94192 (array_inv!25041 _keys!1163)))

(declare-fun mapIsEmpty!39733 () Bool)

(declare-fun mapRes!39733 () Bool)

(assert (=> mapIsEmpty!39733 mapRes!39733))

(declare-fun b!1064730 () Bool)

(declare-fun res!710864 () Bool)

(assert (=> b!1064730 (=> (not res!710864) (not e!606919))))

(declare-datatypes ((List!22815 0))(
  ( (Nil!22812) (Cons!22811 (h!24020 (_ BitVec 64)) (t!32139 List!22815)) )
))
(declare-fun arrayNoDuplicates!0 (array!67698 (_ BitVec 32) List!22815) Bool)

(assert (=> b!1064730 (= res!710864 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22812))))

(declare-fun b!1064731 () Bool)

(declare-fun e!606924 () Bool)

(assert (=> b!1064731 (= e!606924 tp_is_empty!25367)))

(declare-fun b!1064732 () Bool)

(declare-fun e!606923 () Bool)

(assert (=> b!1064732 (= e!606923 tp_is_empty!25367)))

(declare-fun b!1064733 () Bool)

(declare-fun e!606921 () Bool)

(assert (=> b!1064733 (= e!606921 true)))

(declare-fun zeroValueBefore!47 () V!38957)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38957)

(declare-datatypes ((tuple2!16214 0))(
  ( (tuple2!16215 (_1!8117 (_ BitVec 64)) (_2!8117 V!38957)) )
))
(declare-datatypes ((List!22816 0))(
  ( (Nil!22813) (Cons!22812 (h!24021 tuple2!16214) (t!32140 List!22816)) )
))
(declare-datatypes ((ListLongMap!14195 0))(
  ( (ListLongMap!14196 (toList!7113 List!22816)) )
))
(declare-fun lt!469350 () ListLongMap!14195)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4037 (array!67698 array!67696 (_ BitVec 32) (_ BitVec 32) V!38957 V!38957 (_ BitVec 32) Int) ListLongMap!14195)

(assert (=> b!1064733 (= lt!469350 (getCurrentListMap!4037 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39733 () Bool)

(declare-fun tp!76106 () Bool)

(assert (=> mapNonEmpty!39733 (= mapRes!39733 (and tp!76106 e!606923))))

(declare-fun mapRest!39733 () (Array (_ BitVec 32) ValueCell!11980))

(declare-fun mapKey!39733 () (_ BitVec 32))

(declare-fun mapValue!39733 () ValueCell!11980)

(assert (=> mapNonEmpty!39733 (= (arr!32548 _values!955) (store mapRest!39733 mapKey!39733 mapValue!39733))))

(declare-fun b!1064734 () Bool)

(declare-fun res!710863 () Bool)

(assert (=> b!1064734 (=> (not res!710863) (not e!606919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67698 (_ BitVec 32)) Bool)

(assert (=> b!1064734 (= res!710863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064735 () Bool)

(assert (=> b!1064735 (= e!606920 (and e!606924 mapRes!39733))))

(declare-fun condMapEmpty!39733 () Bool)

(declare-fun mapDefault!39733 () ValueCell!11980)

