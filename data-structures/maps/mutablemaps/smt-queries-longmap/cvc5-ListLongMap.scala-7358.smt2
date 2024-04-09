; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93888 () Bool)

(assert start!93888)

(declare-fun b_free!21325 () Bool)

(declare-fun b_next!21325 () Bool)

(assert (=> start!93888 (= b_free!21325 (not b_next!21325))))

(declare-fun tp!75399 () Bool)

(declare-fun b_and!34057 () Bool)

(assert (=> start!93888 (= tp!75399 b_and!34057)))

(declare-fun mapNonEmpty!39373 () Bool)

(declare-fun mapRes!39373 () Bool)

(declare-fun tp!75398 () Bool)

(declare-fun e!604484 () Bool)

(assert (=> mapNonEmpty!39373 (= mapRes!39373 (and tp!75398 e!604484))))

(declare-datatypes ((V!38649 0))(
  ( (V!38650 (val!12618 Int)) )
))
(declare-datatypes ((ValueCell!11864 0))(
  ( (ValueCellFull!11864 (v!15229 V!38649)) (EmptyCell!11864) )
))
(declare-fun mapRest!39373 () (Array (_ BitVec 32) ValueCell!11864))

(declare-datatypes ((array!67254 0))(
  ( (array!67255 (arr!32331 (Array (_ BitVec 32) ValueCell!11864)) (size!32868 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67254)

(declare-fun mapKey!39373 () (_ BitVec 32))

(declare-fun mapValue!39373 () ValueCell!11864)

(assert (=> mapNonEmpty!39373 (= (arr!32331 _values!955) (store mapRest!39373 mapKey!39373 mapValue!39373))))

(declare-fun res!708902 () Bool)

(declare-fun e!604483 () Bool)

(assert (=> start!93888 (=> (not res!708902) (not e!604483))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93888 (= res!708902 (validMask!0 mask!1515))))

(assert (=> start!93888 e!604483))

(assert (=> start!93888 true))

(declare-fun tp_is_empty!25135 () Bool)

(assert (=> start!93888 tp_is_empty!25135))

(declare-fun e!604487 () Bool)

(declare-fun array_inv!24892 (array!67254) Bool)

(assert (=> start!93888 (and (array_inv!24892 _values!955) e!604487)))

(assert (=> start!93888 tp!75399))

(declare-datatypes ((array!67256 0))(
  ( (array!67257 (arr!32332 (Array (_ BitVec 32) (_ BitVec 64))) (size!32869 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67256)

(declare-fun array_inv!24893 (array!67256) Bool)

(assert (=> start!93888 (array_inv!24893 _keys!1163)))

(declare-fun b!1061424 () Bool)

(declare-fun res!708903 () Bool)

(assert (=> b!1061424 (=> (not res!708903) (not e!604483))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061424 (= res!708903 (and (= (size!32868 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32869 _keys!1163) (size!32868 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061425 () Bool)

(assert (=> b!1061425 (= e!604483 (not true))))

(declare-datatypes ((tuple2!16042 0))(
  ( (tuple2!16043 (_1!8031 (_ BitVec 64)) (_2!8031 V!38649)) )
))
(declare-datatypes ((List!22656 0))(
  ( (Nil!22653) (Cons!22652 (h!23861 tuple2!16042) (t!31972 List!22656)) )
))
(declare-datatypes ((ListLongMap!14023 0))(
  ( (ListLongMap!14024 (toList!7027 List!22656)) )
))
(declare-fun lt!467590 () ListLongMap!14023)

(declare-fun lt!467591 () ListLongMap!14023)

(assert (=> b!1061425 (= lt!467590 lt!467591)))

(declare-fun zeroValueBefore!47 () V!38649)

(declare-fun minValue!907 () V!38649)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38649)

(declare-datatypes ((Unit!34729 0))(
  ( (Unit!34730) )
))
(declare-fun lt!467589 () Unit!34729)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!630 (array!67256 array!67254 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38649 V!38649 V!38649 V!38649 (_ BitVec 32) Int) Unit!34729)

(assert (=> b!1061425 (= lt!467589 (lemmaNoChangeToArrayThenSameMapNoExtras!630 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3591 (array!67256 array!67254 (_ BitVec 32) (_ BitVec 32) V!38649 V!38649 (_ BitVec 32) Int) ListLongMap!14023)

(assert (=> b!1061425 (= lt!467591 (getCurrentListMapNoExtraKeys!3591 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061425 (= lt!467590 (getCurrentListMapNoExtraKeys!3591 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061426 () Bool)

(assert (=> b!1061426 (= e!604484 tp_is_empty!25135)))

(declare-fun b!1061427 () Bool)

(declare-fun res!708900 () Bool)

(assert (=> b!1061427 (=> (not res!708900) (not e!604483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67256 (_ BitVec 32)) Bool)

(assert (=> b!1061427 (= res!708900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061428 () Bool)

(declare-fun e!604486 () Bool)

(assert (=> b!1061428 (= e!604486 tp_is_empty!25135)))

(declare-fun b!1061429 () Bool)

(assert (=> b!1061429 (= e!604487 (and e!604486 mapRes!39373))))

(declare-fun condMapEmpty!39373 () Bool)

(declare-fun mapDefault!39373 () ValueCell!11864)

