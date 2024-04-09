; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93858 () Bool)

(assert start!93858)

(declare-fun b_free!21295 () Bool)

(declare-fun b_next!21295 () Bool)

(assert (=> start!93858 (= b_free!21295 (not b_next!21295))))

(declare-fun tp!75308 () Bool)

(declare-fun b_and!34027 () Bool)

(assert (=> start!93858 (= tp!75308 b_and!34027)))

(declare-fun mapNonEmpty!39328 () Bool)

(declare-fun mapRes!39328 () Bool)

(declare-fun tp!75309 () Bool)

(declare-fun e!604262 () Bool)

(assert (=> mapNonEmpty!39328 (= mapRes!39328 (and tp!75309 e!604262))))

(declare-datatypes ((V!38609 0))(
  ( (V!38610 (val!12603 Int)) )
))
(declare-datatypes ((ValueCell!11849 0))(
  ( (ValueCellFull!11849 (v!15214 V!38609)) (EmptyCell!11849) )
))
(declare-fun mapRest!39328 () (Array (_ BitVec 32) ValueCell!11849))

(declare-fun mapKey!39328 () (_ BitVec 32))

(declare-datatypes ((array!67198 0))(
  ( (array!67199 (arr!32303 (Array (_ BitVec 32) ValueCell!11849)) (size!32840 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67198)

(declare-fun mapValue!39328 () ValueCell!11849)

(assert (=> mapNonEmpty!39328 (= (arr!32303 _values!955) (store mapRest!39328 mapKey!39328 mapValue!39328))))

(declare-fun b!1061109 () Bool)

(declare-fun res!708721 () Bool)

(declare-fun e!604258 () Bool)

(assert (=> b!1061109 (=> (not res!708721) (not e!604258))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67200 0))(
  ( (array!67201 (arr!32304 (Array (_ BitVec 32) (_ BitVec 64))) (size!32841 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67200)

(assert (=> b!1061109 (= res!708721 (and (= (size!32840 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32841 _keys!1163) (size!32840 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061110 () Bool)

(declare-fun e!604260 () Bool)

(declare-fun tp_is_empty!25105 () Bool)

(assert (=> b!1061110 (= e!604260 tp_is_empty!25105)))

(declare-fun res!708720 () Bool)

(assert (=> start!93858 (=> (not res!708720) (not e!604258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93858 (= res!708720 (validMask!0 mask!1515))))

(assert (=> start!93858 e!604258))

(assert (=> start!93858 true))

(assert (=> start!93858 tp_is_empty!25105))

(declare-fun e!604259 () Bool)

(declare-fun array_inv!24872 (array!67198) Bool)

(assert (=> start!93858 (and (array_inv!24872 _values!955) e!604259)))

(assert (=> start!93858 tp!75308))

(declare-fun array_inv!24873 (array!67200) Bool)

(assert (=> start!93858 (array_inv!24873 _keys!1163)))

(declare-fun b!1061111 () Bool)

(declare-fun res!708722 () Bool)

(assert (=> b!1061111 (=> (not res!708722) (not e!604258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67200 (_ BitVec 32)) Bool)

(assert (=> b!1061111 (= res!708722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061112 () Bool)

(declare-fun res!708723 () Bool)

(assert (=> b!1061112 (=> (not res!708723) (not e!604258))))

(declare-datatypes ((List!22637 0))(
  ( (Nil!22634) (Cons!22633 (h!23842 (_ BitVec 64)) (t!31953 List!22637)) )
))
(declare-fun arrayNoDuplicates!0 (array!67200 (_ BitVec 32) List!22637) Bool)

(assert (=> b!1061112 (= res!708723 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22634))))

(declare-fun b!1061113 () Bool)

(assert (=> b!1061113 (= e!604258 false)))

(declare-datatypes ((tuple2!16024 0))(
  ( (tuple2!16025 (_1!8022 (_ BitVec 64)) (_2!8022 V!38609)) )
))
(declare-datatypes ((List!22638 0))(
  ( (Nil!22635) (Cons!22634 (h!23843 tuple2!16024) (t!31954 List!22638)) )
))
(declare-datatypes ((ListLongMap!14005 0))(
  ( (ListLongMap!14006 (toList!7018 List!22638)) )
))
(declare-fun lt!467462 () ListLongMap!14005)

(declare-fun minValue!907 () V!38609)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38609)

(declare-fun getCurrentListMapNoExtraKeys!3582 (array!67200 array!67198 (_ BitVec 32) (_ BitVec 32) V!38609 V!38609 (_ BitVec 32) Int) ListLongMap!14005)

(assert (=> b!1061113 (= lt!467462 (getCurrentListMapNoExtraKeys!3582 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38609)

(declare-fun lt!467461 () ListLongMap!14005)

(assert (=> b!1061113 (= lt!467461 (getCurrentListMapNoExtraKeys!3582 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061114 () Bool)

(assert (=> b!1061114 (= e!604262 tp_is_empty!25105)))

(declare-fun mapIsEmpty!39328 () Bool)

(assert (=> mapIsEmpty!39328 mapRes!39328))

(declare-fun b!1061115 () Bool)

(assert (=> b!1061115 (= e!604259 (and e!604260 mapRes!39328))))

(declare-fun condMapEmpty!39328 () Bool)

(declare-fun mapDefault!39328 () ValueCell!11849)

