; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93802 () Bool)

(assert start!93802)

(declare-fun b_free!21239 () Bool)

(declare-fun b_next!21239 () Bool)

(assert (=> start!93802 (= b_free!21239 (not b_next!21239))))

(declare-fun tp!75140 () Bool)

(declare-fun b_and!33971 () Bool)

(assert (=> start!93802 (= tp!75140 b_and!33971)))

(declare-fun mapNonEmpty!39244 () Bool)

(declare-fun mapRes!39244 () Bool)

(declare-fun tp!75141 () Bool)

(declare-fun e!603842 () Bool)

(assert (=> mapNonEmpty!39244 (= mapRes!39244 (and tp!75141 e!603842))))

(declare-datatypes ((V!38533 0))(
  ( (V!38534 (val!12575 Int)) )
))
(declare-datatypes ((ValueCell!11821 0))(
  ( (ValueCellFull!11821 (v!15186 V!38533)) (EmptyCell!11821) )
))
(declare-fun mapRest!39244 () (Array (_ BitVec 32) ValueCell!11821))

(declare-fun mapValue!39244 () ValueCell!11821)

(declare-datatypes ((array!67094 0))(
  ( (array!67095 (arr!32251 (Array (_ BitVec 32) ValueCell!11821)) (size!32788 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67094)

(declare-fun mapKey!39244 () (_ BitVec 32))

(assert (=> mapNonEmpty!39244 (= (arr!32251 _values!955) (store mapRest!39244 mapKey!39244 mapValue!39244))))

(declare-fun b!1060521 () Bool)

(declare-fun tp_is_empty!25049 () Bool)

(assert (=> b!1060521 (= e!603842 tp_is_empty!25049)))

(declare-fun b!1060522 () Bool)

(declare-fun e!603839 () Bool)

(assert (=> b!1060522 (= e!603839 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((tuple2!15988 0))(
  ( (tuple2!15989 (_1!8004 (_ BitVec 64)) (_2!8004 V!38533)) )
))
(declare-datatypes ((List!22600 0))(
  ( (Nil!22597) (Cons!22596 (h!23805 tuple2!15988) (t!31916 List!22600)) )
))
(declare-datatypes ((ListLongMap!13969 0))(
  ( (ListLongMap!13970 (toList!7000 List!22600)) )
))
(declare-fun lt!467293 () ListLongMap!13969)

(declare-fun minValue!907 () V!38533)

(declare-datatypes ((array!67096 0))(
  ( (array!67097 (arr!32252 (Array (_ BitVec 32) (_ BitVec 64))) (size!32789 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67096)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38533)

(declare-fun getCurrentListMapNoExtraKeys!3564 (array!67096 array!67094 (_ BitVec 32) (_ BitVec 32) V!38533 V!38533 (_ BitVec 32) Int) ListLongMap!13969)

(assert (=> b!1060522 (= lt!467293 (getCurrentListMapNoExtraKeys!3564 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38533)

(declare-fun lt!467294 () ListLongMap!13969)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060522 (= lt!467294 (getCurrentListMapNoExtraKeys!3564 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060523 () Bool)

(declare-fun res!708384 () Bool)

(assert (=> b!1060523 (=> (not res!708384) (not e!603839))))

(assert (=> b!1060523 (= res!708384 (and (= (size!32788 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32789 _keys!1163) (size!32788 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060524 () Bool)

(declare-fun e!603841 () Bool)

(assert (=> b!1060524 (= e!603841 tp_is_empty!25049)))

(declare-fun res!708387 () Bool)

(assert (=> start!93802 (=> (not res!708387) (not e!603839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93802 (= res!708387 (validMask!0 mask!1515))))

(assert (=> start!93802 e!603839))

(assert (=> start!93802 true))

(assert (=> start!93802 tp_is_empty!25049))

(declare-fun e!603840 () Bool)

(declare-fun array_inv!24840 (array!67094) Bool)

(assert (=> start!93802 (and (array_inv!24840 _values!955) e!603840)))

(assert (=> start!93802 tp!75140))

(declare-fun array_inv!24841 (array!67096) Bool)

(assert (=> start!93802 (array_inv!24841 _keys!1163)))

(declare-fun b!1060525 () Bool)

(declare-fun res!708386 () Bool)

(assert (=> b!1060525 (=> (not res!708386) (not e!603839))))

(declare-datatypes ((List!22601 0))(
  ( (Nil!22598) (Cons!22597 (h!23806 (_ BitVec 64)) (t!31917 List!22601)) )
))
(declare-fun arrayNoDuplicates!0 (array!67096 (_ BitVec 32) List!22601) Bool)

(assert (=> b!1060525 (= res!708386 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22598))))

(declare-fun mapIsEmpty!39244 () Bool)

(assert (=> mapIsEmpty!39244 mapRes!39244))

(declare-fun b!1060526 () Bool)

(declare-fun res!708385 () Bool)

(assert (=> b!1060526 (=> (not res!708385) (not e!603839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67096 (_ BitVec 32)) Bool)

(assert (=> b!1060526 (= res!708385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060527 () Bool)

(assert (=> b!1060527 (= e!603840 (and e!603841 mapRes!39244))))

(declare-fun condMapEmpty!39244 () Bool)

(declare-fun mapDefault!39244 () ValueCell!11821)

