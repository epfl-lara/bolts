; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93808 () Bool)

(assert start!93808)

(declare-fun b_free!21245 () Bool)

(declare-fun b_next!21245 () Bool)

(assert (=> start!93808 (= b_free!21245 (not b_next!21245))))

(declare-fun tp!75159 () Bool)

(declare-fun b_and!33977 () Bool)

(assert (=> start!93808 (= tp!75159 b_and!33977)))

(declare-fun mapNonEmpty!39253 () Bool)

(declare-fun mapRes!39253 () Bool)

(declare-fun tp!75158 () Bool)

(declare-fun e!603884 () Bool)

(assert (=> mapNonEmpty!39253 (= mapRes!39253 (and tp!75158 e!603884))))

(declare-fun mapKey!39253 () (_ BitVec 32))

(declare-datatypes ((V!38541 0))(
  ( (V!38542 (val!12578 Int)) )
))
(declare-datatypes ((ValueCell!11824 0))(
  ( (ValueCellFull!11824 (v!15189 V!38541)) (EmptyCell!11824) )
))
(declare-fun mapValue!39253 () ValueCell!11824)

(declare-datatypes ((array!67106 0))(
  ( (array!67107 (arr!32257 (Array (_ BitVec 32) ValueCell!11824)) (size!32794 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67106)

(declare-fun mapRest!39253 () (Array (_ BitVec 32) ValueCell!11824))

(assert (=> mapNonEmpty!39253 (= (arr!32257 _values!955) (store mapRest!39253 mapKey!39253 mapValue!39253))))

(declare-fun b!1060584 () Bool)

(declare-fun res!708420 () Bool)

(declare-fun e!603883 () Bool)

(assert (=> b!1060584 (=> (not res!708420) (not e!603883))))

(declare-datatypes ((array!67108 0))(
  ( (array!67109 (arr!32258 (Array (_ BitVec 32) (_ BitVec 64))) (size!32795 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67108)

(declare-datatypes ((List!22604 0))(
  ( (Nil!22601) (Cons!22600 (h!23809 (_ BitVec 64)) (t!31920 List!22604)) )
))
(declare-fun arrayNoDuplicates!0 (array!67108 (_ BitVec 32) List!22604) Bool)

(assert (=> b!1060584 (= res!708420 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22601))))

(declare-fun b!1060585 () Bool)

(declare-fun res!708423 () Bool)

(assert (=> b!1060585 (=> (not res!708423) (not e!603883))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060585 (= res!708423 (and (= (size!32794 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32795 _keys!1163) (size!32794 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708421 () Bool)

(assert (=> start!93808 (=> (not res!708421) (not e!603883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93808 (= res!708421 (validMask!0 mask!1515))))

(assert (=> start!93808 e!603883))

(assert (=> start!93808 true))

(declare-fun tp_is_empty!25055 () Bool)

(assert (=> start!93808 tp_is_empty!25055))

(declare-fun e!603885 () Bool)

(declare-fun array_inv!24844 (array!67106) Bool)

(assert (=> start!93808 (and (array_inv!24844 _values!955) e!603885)))

(assert (=> start!93808 tp!75159))

(declare-fun array_inv!24845 (array!67108) Bool)

(assert (=> start!93808 (array_inv!24845 _keys!1163)))

(declare-fun b!1060586 () Bool)

(assert (=> b!1060586 (= e!603884 tp_is_empty!25055)))

(declare-fun b!1060587 () Bool)

(declare-fun e!603886 () Bool)

(assert (=> b!1060587 (= e!603886 tp_is_empty!25055)))

(declare-fun b!1060588 () Bool)

(assert (=> b!1060588 (= e!603885 (and e!603886 mapRes!39253))))

(declare-fun condMapEmpty!39253 () Bool)

(declare-fun mapDefault!39253 () ValueCell!11824)

