; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94942 () Bool)

(assert start!94942)

(declare-fun b_free!22111 () Bool)

(declare-fun b_next!22111 () Bool)

(assert (=> start!94942 (= b_free!22111 (not b_next!22111))))

(declare-fun tp!77798 () Bool)

(declare-fun b_and!34983 () Bool)

(assert (=> start!94942 (= tp!77798 b_and!34983)))

(declare-fun mapIsEmpty!40594 () Bool)

(declare-fun mapRes!40594 () Bool)

(assert (=> mapIsEmpty!40594 mapRes!40594))

(declare-fun b!1073061 () Bool)

(declare-fun e!613040 () Bool)

(declare-fun tp_is_empty!25921 () Bool)

(assert (=> b!1073061 (= e!613040 tp_is_empty!25921)))

(declare-fun b!1073062 () Bool)

(declare-fun res!715815 () Bool)

(declare-fun e!613039 () Bool)

(assert (=> b!1073062 (=> (not res!715815) (not e!613039))))

(declare-datatypes ((array!68770 0))(
  ( (array!68771 (arr!33075 (Array (_ BitVec 32) (_ BitVec 64))) (size!33612 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68770)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68770 (_ BitVec 32)) Bool)

(assert (=> b!1073062 (= res!715815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073063 () Bool)

(assert (=> b!1073063 (= e!613039 false)))

(declare-datatypes ((V!39697 0))(
  ( (V!39698 (val!13011 Int)) )
))
(declare-datatypes ((tuple2!16634 0))(
  ( (tuple2!16635 (_1!8327 (_ BitVec 64)) (_2!8327 V!39697)) )
))
(declare-datatypes ((List!23214 0))(
  ( (Nil!23211) (Cons!23210 (h!24419 tuple2!16634) (t!32558 List!23214)) )
))
(declare-datatypes ((ListLongMap!14615 0))(
  ( (ListLongMap!14616 (toList!7323 List!23214)) )
))
(declare-fun lt!475931 () ListLongMap!14615)

(declare-datatypes ((ValueCell!12257 0))(
  ( (ValueCellFull!12257 (v!15630 V!39697)) (EmptyCell!12257) )
))
(declare-datatypes ((array!68772 0))(
  ( (array!68773 (arr!33076 (Array (_ BitVec 32) ValueCell!12257)) (size!33613 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68772)

(declare-fun minValue!907 () V!39697)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39697)

(declare-fun getCurrentListMapNoExtraKeys!3853 (array!68770 array!68772 (_ BitVec 32) (_ BitVec 32) V!39697 V!39697 (_ BitVec 32) Int) ListLongMap!14615)

(assert (=> b!1073063 (= lt!475931 (getCurrentListMapNoExtraKeys!3853 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39697)

(declare-fun lt!475930 () ListLongMap!14615)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073063 (= lt!475930 (getCurrentListMapNoExtraKeys!3853 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40594 () Bool)

(declare-fun tp!77799 () Bool)

(declare-fun e!613042 () Bool)

(assert (=> mapNonEmpty!40594 (= mapRes!40594 (and tp!77799 e!613042))))

(declare-fun mapValue!40594 () ValueCell!12257)

(declare-fun mapKey!40594 () (_ BitVec 32))

(declare-fun mapRest!40594 () (Array (_ BitVec 32) ValueCell!12257))

(assert (=> mapNonEmpty!40594 (= (arr!33076 _values!955) (store mapRest!40594 mapKey!40594 mapValue!40594))))

(declare-fun b!1073064 () Bool)

(declare-fun e!613041 () Bool)

(assert (=> b!1073064 (= e!613041 (and e!613040 mapRes!40594))))

(declare-fun condMapEmpty!40594 () Bool)

(declare-fun mapDefault!40594 () ValueCell!12257)

