; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93762 () Bool)

(assert start!93762)

(declare-fun b_free!21211 () Bool)

(declare-fun b_next!21211 () Bool)

(assert (=> start!93762 (= b_free!21211 (not b_next!21211))))

(declare-fun tp!75054 () Bool)

(declare-fun b_and!33939 () Bool)

(assert (=> start!93762 (= tp!75054 b_and!33939)))

(declare-fun b!1060154 () Bool)

(declare-fun res!708189 () Bool)

(declare-fun e!603584 () Bool)

(assert (=> b!1060154 (=> (not res!708189) (not e!603584))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38497 0))(
  ( (V!38498 (val!12561 Int)) )
))
(declare-datatypes ((ValueCell!11807 0))(
  ( (ValueCellFull!11807 (v!15172 V!38497)) (EmptyCell!11807) )
))
(declare-datatypes ((array!67042 0))(
  ( (array!67043 (arr!32226 (Array (_ BitVec 32) ValueCell!11807)) (size!32763 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67042)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67044 0))(
  ( (array!67045 (arr!32227 (Array (_ BitVec 32) (_ BitVec 64))) (size!32764 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67044)

(assert (=> b!1060154 (= res!708189 (and (= (size!32763 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32764 _keys!1163) (size!32763 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39199 () Bool)

(declare-fun mapRes!39199 () Bool)

(declare-fun tp!75053 () Bool)

(declare-fun e!603582 () Bool)

(assert (=> mapNonEmpty!39199 (= mapRes!39199 (and tp!75053 e!603582))))

(declare-fun mapRest!39199 () (Array (_ BitVec 32) ValueCell!11807))

(declare-fun mapKey!39199 () (_ BitVec 32))

(declare-fun mapValue!39199 () ValueCell!11807)

(assert (=> mapNonEmpty!39199 (= (arr!32226 _values!955) (store mapRest!39199 mapKey!39199 mapValue!39199))))

(declare-fun mapIsEmpty!39199 () Bool)

(assert (=> mapIsEmpty!39199 mapRes!39199))

(declare-fun b!1060155 () Bool)

(declare-fun e!603580 () Bool)

(declare-fun tp_is_empty!25021 () Bool)

(assert (=> b!1060155 (= e!603580 tp_is_empty!25021)))

(declare-fun b!1060157 () Bool)

(assert (=> b!1060157 (= e!603582 tp_is_empty!25021)))

(declare-fun b!1060158 () Bool)

(assert (=> b!1060158 (= e!603584 false)))

(declare-fun zeroValueBefore!47 () V!38497)

(declare-datatypes ((tuple2!15968 0))(
  ( (tuple2!15969 (_1!7994 (_ BitVec 64)) (_2!7994 V!38497)) )
))
(declare-datatypes ((List!22582 0))(
  ( (Nil!22579) (Cons!22578 (h!23787 tuple2!15968) (t!31896 List!22582)) )
))
(declare-datatypes ((ListLongMap!13949 0))(
  ( (ListLongMap!13950 (toList!6990 List!22582)) )
))
(declare-fun lt!467213 () ListLongMap!13949)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38497)

(declare-fun getCurrentListMapNoExtraKeys!3554 (array!67044 array!67042 (_ BitVec 32) (_ BitVec 32) V!38497 V!38497 (_ BitVec 32) Int) ListLongMap!13949)

(assert (=> b!1060158 (= lt!467213 (getCurrentListMapNoExtraKeys!3554 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060159 () Bool)

(declare-fun e!603583 () Bool)

(assert (=> b!1060159 (= e!603583 (and e!603580 mapRes!39199))))

(declare-fun condMapEmpty!39199 () Bool)

(declare-fun mapDefault!39199 () ValueCell!11807)

