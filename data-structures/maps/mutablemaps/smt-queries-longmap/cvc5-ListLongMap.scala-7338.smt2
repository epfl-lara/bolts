; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93756 () Bool)

(assert start!93756)

(declare-fun b_free!21205 () Bool)

(declare-fun b_next!21205 () Bool)

(assert (=> start!93756 (= b_free!21205 (not b_next!21205))))

(declare-fun tp!75035 () Bool)

(declare-fun b_and!33933 () Bool)

(assert (=> start!93756 (= tp!75035 b_and!33933)))

(declare-fun b!1060091 () Bool)

(declare-fun res!708153 () Bool)

(declare-fun e!603536 () Bool)

(assert (=> b!1060091 (=> (not res!708153) (not e!603536))))

(declare-datatypes ((array!67032 0))(
  ( (array!67033 (arr!32221 (Array (_ BitVec 32) (_ BitVec 64))) (size!32758 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67032)

(declare-datatypes ((List!22578 0))(
  ( (Nil!22575) (Cons!22574 (h!23783 (_ BitVec 64)) (t!31892 List!22578)) )
))
(declare-fun arrayNoDuplicates!0 (array!67032 (_ BitVec 32) List!22578) Bool)

(assert (=> b!1060091 (= res!708153 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22575))))

(declare-fun b!1060092 () Bool)

(declare-fun res!708154 () Bool)

(assert (=> b!1060092 (=> (not res!708154) (not e!603536))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38489 0))(
  ( (V!38490 (val!12558 Int)) )
))
(declare-datatypes ((ValueCell!11804 0))(
  ( (ValueCellFull!11804 (v!15169 V!38489)) (EmptyCell!11804) )
))
(declare-datatypes ((array!67034 0))(
  ( (array!67035 (arr!32222 (Array (_ BitVec 32) ValueCell!11804)) (size!32759 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67034)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060092 (= res!708154 (and (= (size!32759 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32758 _keys!1163) (size!32759 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39190 () Bool)

(declare-fun mapRes!39190 () Bool)

(declare-fun tp!75036 () Bool)

(declare-fun e!603537 () Bool)

(assert (=> mapNonEmpty!39190 (= mapRes!39190 (and tp!75036 e!603537))))

(declare-fun mapRest!39190 () (Array (_ BitVec 32) ValueCell!11804))

(declare-fun mapValue!39190 () ValueCell!11804)

(declare-fun mapKey!39190 () (_ BitVec 32))

(assert (=> mapNonEmpty!39190 (= (arr!32222 _values!955) (store mapRest!39190 mapKey!39190 mapValue!39190))))

(declare-fun b!1060094 () Bool)

(assert (=> b!1060094 (= e!603536 false)))

(declare-fun zeroValueBefore!47 () V!38489)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38489)

(declare-datatypes ((tuple2!15964 0))(
  ( (tuple2!15965 (_1!7992 (_ BitVec 64)) (_2!7992 V!38489)) )
))
(declare-datatypes ((List!22579 0))(
  ( (Nil!22576) (Cons!22575 (h!23784 tuple2!15964) (t!31893 List!22579)) )
))
(declare-datatypes ((ListLongMap!13945 0))(
  ( (ListLongMap!13946 (toList!6988 List!22579)) )
))
(declare-fun lt!467204 () ListLongMap!13945)

(declare-fun getCurrentListMapNoExtraKeys!3552 (array!67032 array!67034 (_ BitVec 32) (_ BitVec 32) V!38489 V!38489 (_ BitVec 32) Int) ListLongMap!13945)

(assert (=> b!1060094 (= lt!467204 (getCurrentListMapNoExtraKeys!3552 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060095 () Bool)

(declare-fun e!603538 () Bool)

(declare-fun e!603539 () Bool)

(assert (=> b!1060095 (= e!603538 (and e!603539 mapRes!39190))))

(declare-fun condMapEmpty!39190 () Bool)

(declare-fun mapDefault!39190 () ValueCell!11804)

