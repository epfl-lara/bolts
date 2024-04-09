; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93894 () Bool)

(assert start!93894)

(declare-fun b_free!21331 () Bool)

(declare-fun b_next!21331 () Bool)

(assert (=> start!93894 (= b_free!21331 (not b_next!21331))))

(declare-fun tp!75416 () Bool)

(declare-fun b_and!34063 () Bool)

(assert (=> start!93894 (= tp!75416 b_and!34063)))

(declare-fun b!1061487 () Bool)

(declare-fun e!604530 () Bool)

(assert (=> b!1061487 (= e!604530 (not true))))

(declare-datatypes ((V!38657 0))(
  ( (V!38658 (val!12621 Int)) )
))
(declare-datatypes ((tuple2!16046 0))(
  ( (tuple2!16047 (_1!8033 (_ BitVec 64)) (_2!8033 V!38657)) )
))
(declare-datatypes ((List!22659 0))(
  ( (Nil!22656) (Cons!22655 (h!23864 tuple2!16046) (t!31975 List!22659)) )
))
(declare-datatypes ((ListLongMap!14027 0))(
  ( (ListLongMap!14028 (toList!7029 List!22659)) )
))
(declare-fun lt!467618 () ListLongMap!14027)

(declare-fun lt!467616 () ListLongMap!14027)

(assert (=> b!1061487 (= lt!467618 lt!467616)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38657)

(declare-datatypes ((Unit!34733 0))(
  ( (Unit!34734) )
))
(declare-fun lt!467617 () Unit!34733)

(declare-datatypes ((ValueCell!11867 0))(
  ( (ValueCellFull!11867 (v!15232 V!38657)) (EmptyCell!11867) )
))
(declare-datatypes ((array!67264 0))(
  ( (array!67265 (arr!32336 (Array (_ BitVec 32) ValueCell!11867)) (size!32873 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67264)

(declare-fun minValue!907 () V!38657)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38657)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67266 0))(
  ( (array!67267 (arr!32337 (Array (_ BitVec 32) (_ BitVec 64))) (size!32874 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67266)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!632 (array!67266 array!67264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38657 V!38657 V!38657 V!38657 (_ BitVec 32) Int) Unit!34733)

(assert (=> b!1061487 (= lt!467617 (lemmaNoChangeToArrayThenSameMapNoExtras!632 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3593 (array!67266 array!67264 (_ BitVec 32) (_ BitVec 32) V!38657 V!38657 (_ BitVec 32) Int) ListLongMap!14027)

(assert (=> b!1061487 (= lt!467616 (getCurrentListMapNoExtraKeys!3593 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061487 (= lt!467618 (getCurrentListMapNoExtraKeys!3593 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061488 () Bool)

(declare-fun e!604531 () Bool)

(declare-fun tp_is_empty!25141 () Bool)

(assert (=> b!1061488 (= e!604531 tp_is_empty!25141)))

(declare-fun b!1061489 () Bool)

(declare-fun res!708938 () Bool)

(assert (=> b!1061489 (=> (not res!708938) (not e!604530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67266 (_ BitVec 32)) Bool)

(assert (=> b!1061489 (= res!708938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39382 () Bool)

(declare-fun mapRes!39382 () Bool)

(assert (=> mapIsEmpty!39382 mapRes!39382))

(declare-fun mapNonEmpty!39382 () Bool)

(declare-fun tp!75417 () Bool)

(declare-fun e!604528 () Bool)

(assert (=> mapNonEmpty!39382 (= mapRes!39382 (and tp!75417 e!604528))))

(declare-fun mapKey!39382 () (_ BitVec 32))

(declare-fun mapValue!39382 () ValueCell!11867)

(declare-fun mapRest!39382 () (Array (_ BitVec 32) ValueCell!11867))

(assert (=> mapNonEmpty!39382 (= (arr!32336 _values!955) (store mapRest!39382 mapKey!39382 mapValue!39382))))

(declare-fun b!1061491 () Bool)

(declare-fun res!708936 () Bool)

(assert (=> b!1061491 (=> (not res!708936) (not e!604530))))

(declare-datatypes ((List!22660 0))(
  ( (Nil!22657) (Cons!22656 (h!23865 (_ BitVec 64)) (t!31976 List!22660)) )
))
(declare-fun arrayNoDuplicates!0 (array!67266 (_ BitVec 32) List!22660) Bool)

(assert (=> b!1061491 (= res!708936 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22657))))

(declare-fun b!1061492 () Bool)

(declare-fun res!708937 () Bool)

(assert (=> b!1061492 (=> (not res!708937) (not e!604530))))

(assert (=> b!1061492 (= res!708937 (and (= (size!32873 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32874 _keys!1163) (size!32873 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061493 () Bool)

(declare-fun e!604529 () Bool)

(assert (=> b!1061493 (= e!604529 (and e!604531 mapRes!39382))))

(declare-fun condMapEmpty!39382 () Bool)

(declare-fun mapDefault!39382 () ValueCell!11867)

