; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94496 () Bool)

(assert start!94496)

(declare-fun b_free!21787 () Bool)

(declare-fun b_next!21787 () Bool)

(assert (=> start!94496 (= b_free!21787 (not b_next!21787))))

(declare-fun tp!76808 () Bool)

(declare-fun b_and!34597 () Bool)

(assert (=> start!94496 (= tp!76808 b_and!34597)))

(declare-fun b!1068075 () Bool)

(declare-fun e!609361 () Bool)

(declare-fun e!609360 () Bool)

(assert (=> b!1068075 (= e!609361 (not e!609360))))

(declare-fun res!712829 () Bool)

(assert (=> b!1068075 (=> res!712829 e!609360)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068075 (= res!712829 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39265 0))(
  ( (V!39266 (val!12849 Int)) )
))
(declare-datatypes ((tuple2!16394 0))(
  ( (tuple2!16395 (_1!8207 (_ BitVec 64)) (_2!8207 V!39265)) )
))
(declare-datatypes ((List!22985 0))(
  ( (Nil!22982) (Cons!22981 (h!24190 tuple2!16394) (t!32317 List!22985)) )
))
(declare-datatypes ((ListLongMap!14375 0))(
  ( (ListLongMap!14376 (toList!7203 List!22985)) )
))
(declare-fun lt!471792 () ListLongMap!14375)

(declare-fun lt!471793 () ListLongMap!14375)

(assert (=> b!1068075 (= lt!471792 lt!471793)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39265)

(declare-datatypes ((ValueCell!12095 0))(
  ( (ValueCellFull!12095 (v!15464 V!39265)) (EmptyCell!12095) )
))
(declare-datatypes ((array!68148 0))(
  ( (array!68149 (arr!32770 (Array (_ BitVec 32) ValueCell!12095)) (size!33307 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68148)

(declare-fun minValue!907 () V!39265)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39265)

(declare-datatypes ((array!68150 0))(
  ( (array!68151 (arr!32771 (Array (_ BitVec 32) (_ BitVec 64))) (size!33308 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68150)

(declare-datatypes ((Unit!35072 0))(
  ( (Unit!35073) )
))
(declare-fun lt!471791 () Unit!35072)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!786 (array!68150 array!68148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39265 V!39265 V!39265 V!39265 (_ BitVec 32) Int) Unit!35072)

(assert (=> b!1068075 (= lt!471791 (lemmaNoChangeToArrayThenSameMapNoExtras!786 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3747 (array!68150 array!68148 (_ BitVec 32) (_ BitVec 32) V!39265 V!39265 (_ BitVec 32) Int) ListLongMap!14375)

(assert (=> b!1068075 (= lt!471793 (getCurrentListMapNoExtraKeys!3747 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068075 (= lt!471792 (getCurrentListMapNoExtraKeys!3747 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068076 () Bool)

(declare-fun res!712824 () Bool)

(assert (=> b!1068076 (=> (not res!712824) (not e!609361))))

(declare-datatypes ((List!22986 0))(
  ( (Nil!22983) (Cons!22982 (h!24191 (_ BitVec 64)) (t!32318 List!22986)) )
))
(declare-fun arrayNoDuplicates!0 (array!68150 (_ BitVec 32) List!22986) Bool)

(assert (=> b!1068076 (= res!712824 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22983))))

(declare-fun b!1068077 () Bool)

(declare-fun e!609365 () Bool)

(assert (=> b!1068077 (= e!609360 e!609365)))

(declare-fun res!712826 () Bool)

(assert (=> b!1068077 (=> res!712826 e!609365)))

(declare-fun lt!471794 () ListLongMap!14375)

(declare-fun contains!6305 (ListLongMap!14375 (_ BitVec 64)) Bool)

(assert (=> b!1068077 (= res!712826 (contains!6305 lt!471794 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4095 (array!68150 array!68148 (_ BitVec 32) (_ BitVec 32) V!39265 V!39265 (_ BitVec 32) Int) ListLongMap!14375)

(assert (=> b!1068077 (= lt!471794 (getCurrentListMap!4095 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068078 () Bool)

(declare-fun res!712827 () Bool)

(assert (=> b!1068078 (=> (not res!712827) (not e!609361))))

(assert (=> b!1068078 (= res!712827 (and (= (size!33307 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33308 _keys!1163) (size!33307 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!712828 () Bool)

(assert (=> start!94496 (=> (not res!712828) (not e!609361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94496 (= res!712828 (validMask!0 mask!1515))))

(assert (=> start!94496 e!609361))

(assert (=> start!94496 true))

(declare-fun tp_is_empty!25597 () Bool)

(assert (=> start!94496 tp_is_empty!25597))

(declare-fun e!609363 () Bool)

(declare-fun array_inv!25204 (array!68148) Bool)

(assert (=> start!94496 (and (array_inv!25204 _values!955) e!609363)))

(assert (=> start!94496 tp!76808))

(declare-fun array_inv!25205 (array!68150) Bool)

(assert (=> start!94496 (array_inv!25205 _keys!1163)))

(declare-fun mapNonEmpty!40090 () Bool)

(declare-fun mapRes!40090 () Bool)

(declare-fun tp!76809 () Bool)

(declare-fun e!609366 () Bool)

(assert (=> mapNonEmpty!40090 (= mapRes!40090 (and tp!76809 e!609366))))

(declare-fun mapRest!40090 () (Array (_ BitVec 32) ValueCell!12095))

(declare-fun mapKey!40090 () (_ BitVec 32))

(declare-fun mapValue!40090 () ValueCell!12095)

(assert (=> mapNonEmpty!40090 (= (arr!32770 _values!955) (store mapRest!40090 mapKey!40090 mapValue!40090))))

(declare-fun b!1068079 () Bool)

(declare-fun e!609364 () Bool)

(assert (=> b!1068079 (= e!609364 tp_is_empty!25597)))

(declare-fun b!1068080 () Bool)

(assert (=> b!1068080 (= e!609363 (and e!609364 mapRes!40090))))

(declare-fun condMapEmpty!40090 () Bool)

(declare-fun mapDefault!40090 () ValueCell!12095)

