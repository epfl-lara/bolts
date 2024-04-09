; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94460 () Bool)

(assert start!94460)

(declare-fun b_free!21751 () Bool)

(declare-fun b_next!21751 () Bool)

(assert (=> start!94460 (= b_free!21751 (not b_next!21751))))

(declare-fun tp!76701 () Bool)

(declare-fun b_and!34561 () Bool)

(assert (=> start!94460 (= tp!76701 b_and!34561)))

(declare-fun b!1067589 () Bool)

(declare-fun res!712501 () Bool)

(declare-fun e!608987 () Bool)

(assert (=> b!1067589 (=> (not res!712501) (not e!608987))))

(declare-datatypes ((array!68076 0))(
  ( (array!68077 (arr!32734 (Array (_ BitVec 32) (_ BitVec 64))) (size!33271 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68076)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68076 (_ BitVec 32)) Bool)

(assert (=> b!1067589 (= res!712501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067590 () Bool)

(declare-fun res!712504 () Bool)

(assert (=> b!1067590 (=> (not res!712504) (not e!608987))))

(declare-datatypes ((V!39217 0))(
  ( (V!39218 (val!12831 Int)) )
))
(declare-datatypes ((ValueCell!12077 0))(
  ( (ValueCellFull!12077 (v!15446 V!39217)) (EmptyCell!12077) )
))
(declare-datatypes ((array!68078 0))(
  ( (array!68079 (arr!32735 (Array (_ BitVec 32) ValueCell!12077)) (size!33272 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68078)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067590 (= res!712504 (and (= (size!33272 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33271 _keys!1163) (size!33272 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067591 () Bool)

(declare-fun e!608986 () Bool)

(assert (=> b!1067591 (= e!608986 true)))

(declare-datatypes ((tuple2!16364 0))(
  ( (tuple2!16365 (_1!8192 (_ BitVec 64)) (_2!8192 V!39217)) )
))
(declare-datatypes ((List!22954 0))(
  ( (Nil!22951) (Cons!22950 (h!24159 tuple2!16364) (t!32286 List!22954)) )
))
(declare-datatypes ((ListLongMap!14345 0))(
  ( (ListLongMap!14346 (toList!7188 List!22954)) )
))
(declare-fun lt!471521 () ListLongMap!14345)

(declare-fun -!629 (ListLongMap!14345 (_ BitVec 64)) ListLongMap!14345)

(assert (=> b!1067591 (= (-!629 lt!471521 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471521)))

(declare-datatypes ((Unit!35042 0))(
  ( (Unit!35043) )
))
(declare-fun lt!471523 () Unit!35042)

(declare-fun removeNotPresentStillSame!38 (ListLongMap!14345 (_ BitVec 64)) Unit!35042)

(assert (=> b!1067591 (= lt!471523 (removeNotPresentStillSame!38 lt!471521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!712503 () Bool)

(assert (=> start!94460 (=> (not res!712503) (not e!608987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94460 (= res!712503 (validMask!0 mask!1515))))

(assert (=> start!94460 e!608987))

(assert (=> start!94460 true))

(declare-fun tp_is_empty!25561 () Bool)

(assert (=> start!94460 tp_is_empty!25561))

(declare-fun e!608985 () Bool)

(declare-fun array_inv!25174 (array!68078) Bool)

(assert (=> start!94460 (and (array_inv!25174 _values!955) e!608985)))

(assert (=> start!94460 tp!76701))

(declare-fun array_inv!25175 (array!68076) Bool)

(assert (=> start!94460 (array_inv!25175 _keys!1163)))

(declare-fun mapIsEmpty!40036 () Bool)

(declare-fun mapRes!40036 () Bool)

(assert (=> mapIsEmpty!40036 mapRes!40036))

(declare-fun b!1067592 () Bool)

(declare-fun res!712502 () Bool)

(assert (=> b!1067592 (=> (not res!712502) (not e!608987))))

(declare-datatypes ((List!22955 0))(
  ( (Nil!22952) (Cons!22951 (h!24160 (_ BitVec 64)) (t!32287 List!22955)) )
))
(declare-fun arrayNoDuplicates!0 (array!68076 (_ BitVec 32) List!22955) Bool)

(assert (=> b!1067592 (= res!712502 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22952))))

(declare-fun mapNonEmpty!40036 () Bool)

(declare-fun tp!76700 () Bool)

(declare-fun e!608984 () Bool)

(assert (=> mapNonEmpty!40036 (= mapRes!40036 (and tp!76700 e!608984))))

(declare-fun mapKey!40036 () (_ BitVec 32))

(declare-fun mapRest!40036 () (Array (_ BitVec 32) ValueCell!12077))

(declare-fun mapValue!40036 () ValueCell!12077)

(assert (=> mapNonEmpty!40036 (= (arr!32735 _values!955) (store mapRest!40036 mapKey!40036 mapValue!40036))))

(declare-fun b!1067593 () Bool)

(assert (=> b!1067593 (= e!608984 tp_is_empty!25561)))

(declare-fun b!1067594 () Bool)

(declare-fun e!608983 () Bool)

(assert (=> b!1067594 (= e!608983 e!608986)))

(declare-fun res!712505 () Bool)

(assert (=> b!1067594 (=> res!712505 e!608986)))

(declare-fun contains!6294 (ListLongMap!14345 (_ BitVec 64)) Bool)

(assert (=> b!1067594 (= res!712505 (contains!6294 lt!471521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39217)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39217)

(declare-fun getCurrentListMap!4084 (array!68076 array!68078 (_ BitVec 32) (_ BitVec 32) V!39217 V!39217 (_ BitVec 32) Int) ListLongMap!14345)

(assert (=> b!1067594 (= lt!471521 (getCurrentListMap!4084 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067595 () Bool)

(declare-fun e!608982 () Bool)

(assert (=> b!1067595 (= e!608982 tp_is_empty!25561)))

(declare-fun b!1067596 () Bool)

(assert (=> b!1067596 (= e!608987 (not e!608983))))

(declare-fun res!712500 () Bool)

(assert (=> b!1067596 (=> res!712500 e!608983)))

(assert (=> b!1067596 (= res!712500 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471522 () ListLongMap!14345)

(declare-fun lt!471520 () ListLongMap!14345)

(assert (=> b!1067596 (= lt!471522 lt!471520)))

(declare-fun lt!471524 () Unit!35042)

(declare-fun zeroValueAfter!47 () V!39217)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!772 (array!68076 array!68078 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39217 V!39217 V!39217 V!39217 (_ BitVec 32) Int) Unit!35042)

(assert (=> b!1067596 (= lt!471524 (lemmaNoChangeToArrayThenSameMapNoExtras!772 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3733 (array!68076 array!68078 (_ BitVec 32) (_ BitVec 32) V!39217 V!39217 (_ BitVec 32) Int) ListLongMap!14345)

(assert (=> b!1067596 (= lt!471520 (getCurrentListMapNoExtraKeys!3733 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067596 (= lt!471522 (getCurrentListMapNoExtraKeys!3733 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067597 () Bool)

(assert (=> b!1067597 (= e!608985 (and e!608982 mapRes!40036))))

(declare-fun condMapEmpty!40036 () Bool)

(declare-fun mapDefault!40036 () ValueCell!12077)

