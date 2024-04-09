; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93850 () Bool)

(assert start!93850)

(declare-fun b_free!21287 () Bool)

(declare-fun b_next!21287 () Bool)

(assert (=> start!93850 (= b_free!21287 (not b_next!21287))))

(declare-fun tp!75285 () Bool)

(declare-fun b_and!34019 () Bool)

(assert (=> start!93850 (= tp!75285 b_and!34019)))

(declare-fun b!1061025 () Bool)

(declare-fun e!604199 () Bool)

(assert (=> b!1061025 (= e!604199 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38597 0))(
  ( (V!38598 (val!12599 Int)) )
))
(declare-datatypes ((tuple2!16018 0))(
  ( (tuple2!16019 (_1!8019 (_ BitVec 64)) (_2!8019 V!38597)) )
))
(declare-datatypes ((List!22631 0))(
  ( (Nil!22628) (Cons!22627 (h!23836 tuple2!16018) (t!31947 List!22631)) )
))
(declare-datatypes ((ListLongMap!13999 0))(
  ( (ListLongMap!14000 (toList!7015 List!22631)) )
))
(declare-fun lt!467438 () ListLongMap!13999)

(declare-datatypes ((ValueCell!11845 0))(
  ( (ValueCellFull!11845 (v!15210 V!38597)) (EmptyCell!11845) )
))
(declare-datatypes ((array!67184 0))(
  ( (array!67185 (arr!32296 (Array (_ BitVec 32) ValueCell!11845)) (size!32833 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67184)

(declare-fun minValue!907 () V!38597)

(declare-datatypes ((array!67186 0))(
  ( (array!67187 (arr!32297 (Array (_ BitVec 32) (_ BitVec 64))) (size!32834 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67186)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38597)

(declare-fun getCurrentListMapNoExtraKeys!3579 (array!67186 array!67184 (_ BitVec 32) (_ BitVec 32) V!38597 V!38597 (_ BitVec 32) Int) ListLongMap!13999)

(assert (=> b!1061025 (= lt!467438 (getCurrentListMapNoExtraKeys!3579 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38597)

(declare-fun lt!467437 () ListLongMap!13999)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061025 (= lt!467437 (getCurrentListMapNoExtraKeys!3579 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061026 () Bool)

(declare-fun e!604200 () Bool)

(declare-fun tp_is_empty!25097 () Bool)

(assert (=> b!1061026 (= e!604200 tp_is_empty!25097)))

(declare-fun b!1061027 () Bool)

(declare-fun res!708672 () Bool)

(assert (=> b!1061027 (=> (not res!708672) (not e!604199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67186 (_ BitVec 32)) Bool)

(assert (=> b!1061027 (= res!708672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061028 () Bool)

(declare-fun res!708673 () Bool)

(assert (=> b!1061028 (=> (not res!708673) (not e!604199))))

(declare-datatypes ((List!22632 0))(
  ( (Nil!22629) (Cons!22628 (h!23837 (_ BitVec 64)) (t!31948 List!22632)) )
))
(declare-fun arrayNoDuplicates!0 (array!67186 (_ BitVec 32) List!22632) Bool)

(assert (=> b!1061028 (= res!708673 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22629))))

(declare-fun res!708674 () Bool)

(assert (=> start!93850 (=> (not res!708674) (not e!604199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93850 (= res!708674 (validMask!0 mask!1515))))

(assert (=> start!93850 e!604199))

(assert (=> start!93850 true))

(assert (=> start!93850 tp_is_empty!25097))

(declare-fun e!604202 () Bool)

(declare-fun array_inv!24866 (array!67184) Bool)

(assert (=> start!93850 (and (array_inv!24866 _values!955) e!604202)))

(assert (=> start!93850 tp!75285))

(declare-fun array_inv!24867 (array!67186) Bool)

(assert (=> start!93850 (array_inv!24867 _keys!1163)))

(declare-fun mapNonEmpty!39316 () Bool)

(declare-fun mapRes!39316 () Bool)

(declare-fun tp!75284 () Bool)

(declare-fun e!604201 () Bool)

(assert (=> mapNonEmpty!39316 (= mapRes!39316 (and tp!75284 e!604201))))

(declare-fun mapValue!39316 () ValueCell!11845)

(declare-fun mapKey!39316 () (_ BitVec 32))

(declare-fun mapRest!39316 () (Array (_ BitVec 32) ValueCell!11845))

(assert (=> mapNonEmpty!39316 (= (arr!32296 _values!955) (store mapRest!39316 mapKey!39316 mapValue!39316))))

(declare-fun b!1061029 () Bool)

(declare-fun res!708675 () Bool)

(assert (=> b!1061029 (=> (not res!708675) (not e!604199))))

(assert (=> b!1061029 (= res!708675 (and (= (size!32833 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32834 _keys!1163) (size!32833 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39316 () Bool)

(assert (=> mapIsEmpty!39316 mapRes!39316))

(declare-fun b!1061030 () Bool)

(assert (=> b!1061030 (= e!604201 tp_is_empty!25097)))

(declare-fun b!1061031 () Bool)

(assert (=> b!1061031 (= e!604202 (and e!604200 mapRes!39316))))

(declare-fun condMapEmpty!39316 () Bool)

(declare-fun mapDefault!39316 () ValueCell!11845)

