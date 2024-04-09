; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94360 () Bool)

(assert start!94360)

(declare-fun b_free!21687 () Bool)

(declare-fun b_next!21687 () Bool)

(assert (=> start!94360 (= b_free!21687 (not b_next!21687))))

(declare-fun tp!76502 () Bool)

(declare-fun b_and!34477 () Bool)

(assert (=> start!94360 (= tp!76502 b_and!34477)))

(declare-fun b!1066636 () Bool)

(declare-fun res!711994 () Bool)

(declare-fun e!608316 () Bool)

(assert (=> b!1066636 (=> (not res!711994) (not e!608316))))

(declare-datatypes ((array!67952 0))(
  ( (array!67953 (arr!32674 (Array (_ BitVec 32) (_ BitVec 64))) (size!33211 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67952)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67952 (_ BitVec 32)) Bool)

(assert (=> b!1066636 (= res!711994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066637 () Bool)

(declare-fun e!608318 () Bool)

(declare-fun e!608317 () Bool)

(assert (=> b!1066637 (= e!608318 e!608317)))

(declare-fun res!711993 () Bool)

(assert (=> b!1066637 (=> res!711993 e!608317)))

(declare-datatypes ((V!39131 0))(
  ( (V!39132 (val!12799 Int)) )
))
(declare-datatypes ((tuple2!16326 0))(
  ( (tuple2!16327 (_1!8173 (_ BitVec 64)) (_2!8173 V!39131)) )
))
(declare-datatypes ((List!22917 0))(
  ( (Nil!22914) (Cons!22913 (h!24122 tuple2!16326) (t!32245 List!22917)) )
))
(declare-datatypes ((ListLongMap!14307 0))(
  ( (ListLongMap!14308 (toList!7169 List!22917)) )
))
(declare-fun lt!471021 () ListLongMap!14307)

(declare-fun lt!471016 () ListLongMap!14307)

(declare-fun -!627 (ListLongMap!14307 (_ BitVec 64)) ListLongMap!14307)

(assert (=> b!1066637 (= res!711993 (not (= (-!627 lt!471021 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471016)))))

(declare-fun lt!471017 () ListLongMap!14307)

(declare-fun lt!471019 () ListLongMap!14307)

(assert (=> b!1066637 (= (-!627 lt!471017 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471019)))

(declare-datatypes ((Unit!35002 0))(
  ( (Unit!35003) )
))
(declare-fun lt!471022 () Unit!35002)

(declare-fun zeroValueBefore!47 () V!39131)

(declare-fun addThenRemoveForNewKeyIsSame!36 (ListLongMap!14307 (_ BitVec 64) V!39131) Unit!35002)

(assert (=> b!1066637 (= lt!471022 (addThenRemoveForNewKeyIsSame!36 lt!471019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!471018 () ListLongMap!14307)

(assert (=> b!1066637 (and (= lt!471021 lt!471017) (= lt!471016 lt!471018))))

(declare-fun +!3118 (ListLongMap!14307 tuple2!16326) ListLongMap!14307)

(assert (=> b!1066637 (= lt!471017 (+!3118 lt!471019 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-datatypes ((ValueCell!12045 0))(
  ( (ValueCellFull!12045 (v!15413 V!39131)) (EmptyCell!12045) )
))
(declare-datatypes ((array!67954 0))(
  ( (array!67955 (arr!32675 (Array (_ BitVec 32) ValueCell!12045)) (size!33212 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67954)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39131)

(declare-fun minValue!907 () V!39131)

(declare-fun getCurrentListMap!4081 (array!67952 array!67954 (_ BitVec 32) (_ BitVec 32) V!39131 V!39131 (_ BitVec 32) Int) ListLongMap!14307)

(assert (=> b!1066637 (= lt!471016 (getCurrentListMap!4081 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066637 (= lt!471021 (getCurrentListMap!4081 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066638 () Bool)

(declare-fun res!711996 () Bool)

(assert (=> b!1066638 (=> (not res!711996) (not e!608316))))

(assert (=> b!1066638 (= res!711996 (and (= (size!33212 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33211 _keys!1163) (size!33212 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066639 () Bool)

(declare-fun res!711992 () Bool)

(assert (=> b!1066639 (=> (not res!711992) (not e!608316))))

(declare-datatypes ((List!22918 0))(
  ( (Nil!22915) (Cons!22914 (h!24123 (_ BitVec 64)) (t!32246 List!22918)) )
))
(declare-fun arrayNoDuplicates!0 (array!67952 (_ BitVec 32) List!22918) Bool)

(assert (=> b!1066639 (= res!711992 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22915))))

(declare-fun mapIsEmpty!39934 () Bool)

(declare-fun mapRes!39934 () Bool)

(assert (=> mapIsEmpty!39934 mapRes!39934))

(declare-fun b!1066640 () Bool)

(declare-fun e!608319 () Bool)

(declare-fun tp_is_empty!25497 () Bool)

(assert (=> b!1066640 (= e!608319 tp_is_empty!25497)))

(declare-fun b!1066641 () Bool)

(declare-fun e!608321 () Bool)

(assert (=> b!1066641 (= e!608321 tp_is_empty!25497)))

(declare-fun b!1066642 () Bool)

(assert (=> b!1066642 (= e!608317 (bvsle #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066643 () Bool)

(assert (=> b!1066643 (= e!608316 (not e!608318))))

(declare-fun res!711995 () Bool)

(assert (=> b!1066643 (=> res!711995 e!608318)))

(assert (=> b!1066643 (= res!711995 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066643 (= lt!471019 lt!471018)))

(declare-fun lt!471020 () Unit!35002)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!754 (array!67952 array!67954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39131 V!39131 V!39131 V!39131 (_ BitVec 32) Int) Unit!35002)

(assert (=> b!1066643 (= lt!471020 (lemmaNoChangeToArrayThenSameMapNoExtras!754 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3715 (array!67952 array!67954 (_ BitVec 32) (_ BitVec 32) V!39131 V!39131 (_ BitVec 32) Int) ListLongMap!14307)

(assert (=> b!1066643 (= lt!471018 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066643 (= lt!471019 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711991 () Bool)

(assert (=> start!94360 (=> (not res!711991) (not e!608316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94360 (= res!711991 (validMask!0 mask!1515))))

(assert (=> start!94360 e!608316))

(assert (=> start!94360 true))

(assert (=> start!94360 tp_is_empty!25497))

(declare-fun e!608322 () Bool)

(declare-fun array_inv!25136 (array!67954) Bool)

(assert (=> start!94360 (and (array_inv!25136 _values!955) e!608322)))

(assert (=> start!94360 tp!76502))

(declare-fun array_inv!25137 (array!67952) Bool)

(assert (=> start!94360 (array_inv!25137 _keys!1163)))

(declare-fun mapNonEmpty!39934 () Bool)

(declare-fun tp!76503 () Bool)

(assert (=> mapNonEmpty!39934 (= mapRes!39934 (and tp!76503 e!608319))))

(declare-fun mapKey!39934 () (_ BitVec 32))

(declare-fun mapValue!39934 () ValueCell!12045)

(declare-fun mapRest!39934 () (Array (_ BitVec 32) ValueCell!12045))

(assert (=> mapNonEmpty!39934 (= (arr!32675 _values!955) (store mapRest!39934 mapKey!39934 mapValue!39934))))

(declare-fun b!1066644 () Bool)

(assert (=> b!1066644 (= e!608322 (and e!608321 mapRes!39934))))

(declare-fun condMapEmpty!39934 () Bool)

(declare-fun mapDefault!39934 () ValueCell!12045)

(assert (=> b!1066644 (= condMapEmpty!39934 (= (arr!32675 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12045)) mapDefault!39934)))))

(assert (= (and start!94360 res!711991) b!1066638))

(assert (= (and b!1066638 res!711996) b!1066636))

(assert (= (and b!1066636 res!711994) b!1066639))

(assert (= (and b!1066639 res!711992) b!1066643))

(assert (= (and b!1066643 (not res!711995)) b!1066637))

(assert (= (and b!1066637 (not res!711993)) b!1066642))

(assert (= (and b!1066644 condMapEmpty!39934) mapIsEmpty!39934))

(assert (= (and b!1066644 (not condMapEmpty!39934)) mapNonEmpty!39934))

(get-info :version)

(assert (= (and mapNonEmpty!39934 ((_ is ValueCellFull!12045) mapValue!39934)) b!1066640))

(assert (= (and b!1066644 ((_ is ValueCellFull!12045) mapDefault!39934)) b!1066641))

(assert (= start!94360 b!1066644))

(declare-fun m!985489 () Bool)

(assert (=> mapNonEmpty!39934 m!985489))

(declare-fun m!985491 () Bool)

(assert (=> b!1066637 m!985491))

(declare-fun m!985493 () Bool)

(assert (=> b!1066637 m!985493))

(declare-fun m!985495 () Bool)

(assert (=> b!1066637 m!985495))

(declare-fun m!985497 () Bool)

(assert (=> b!1066637 m!985497))

(declare-fun m!985499 () Bool)

(assert (=> b!1066637 m!985499))

(declare-fun m!985501 () Bool)

(assert (=> b!1066637 m!985501))

(declare-fun m!985503 () Bool)

(assert (=> start!94360 m!985503))

(declare-fun m!985505 () Bool)

(assert (=> start!94360 m!985505))

(declare-fun m!985507 () Bool)

(assert (=> start!94360 m!985507))

(declare-fun m!985509 () Bool)

(assert (=> b!1066643 m!985509))

(declare-fun m!985511 () Bool)

(assert (=> b!1066643 m!985511))

(declare-fun m!985513 () Bool)

(assert (=> b!1066643 m!985513))

(declare-fun m!985515 () Bool)

(assert (=> b!1066639 m!985515))

(declare-fun m!985517 () Bool)

(assert (=> b!1066636 m!985517))

(check-sat (not b_next!21687) (not b!1066636) (not b!1066637) (not b!1066639) tp_is_empty!25497 (not start!94360) b_and!34477 (not mapNonEmpty!39934) (not b!1066643))
(check-sat b_and!34477 (not b_next!21687))
(get-model)

(declare-fun d!129017 () Bool)

(assert (=> d!129017 (= (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471046 () Unit!35002)

(declare-fun choose!1738 (array!67952 array!67954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39131 V!39131 V!39131 V!39131 (_ BitVec 32) Int) Unit!35002)

(assert (=> d!129017 (= lt!471046 (choose!1738 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129017 (validMask!0 mask!1515)))

(assert (=> d!129017 (= (lemmaNoChangeToArrayThenSameMapNoExtras!754 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471046)))

(declare-fun bs!31387 () Bool)

(assert (= bs!31387 d!129017))

(assert (=> bs!31387 m!985513))

(assert (=> bs!31387 m!985511))

(declare-fun m!985549 () Bool)

(assert (=> bs!31387 m!985549))

(assert (=> bs!31387 m!985503))

(assert (=> b!1066643 d!129017))

(declare-fun b!1066696 () Bool)

(declare-fun e!608358 () Bool)

(declare-fun e!608363 () Bool)

(assert (=> b!1066696 (= e!608358 e!608363)))

(declare-fun c!107390 () Bool)

(assert (=> b!1066696 (= c!107390 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066697 () Bool)

(assert (=> b!1066697 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> b!1066697 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33212 _values!955)))))

(declare-fun lt!471067 () ListLongMap!14307)

(declare-fun e!608361 () Bool)

(declare-fun apply!959 (ListLongMap!14307 (_ BitVec 64)) V!39131)

(declare-fun get!17059 (ValueCell!12045 V!39131) V!39131)

(declare-fun dynLambda!2035 (Int (_ BitVec 64)) V!39131)

(assert (=> b!1066697 (= e!608361 (= (apply!959 lt!471067 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1066698 () Bool)

(declare-fun e!608360 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1066698 (= e!608360 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066698 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1066699 () Bool)

(declare-fun e!608359 () ListLongMap!14307)

(declare-fun call!45054 () ListLongMap!14307)

(assert (=> b!1066699 (= e!608359 call!45054)))

(declare-fun d!129019 () Bool)

(declare-fun e!608362 () Bool)

(assert (=> d!129019 e!608362))

(declare-fun res!712026 () Bool)

(assert (=> d!129019 (=> (not res!712026) (not e!608362))))

(declare-fun contains!6288 (ListLongMap!14307 (_ BitVec 64)) Bool)

(assert (=> d!129019 (= res!712026 (not (contains!6288 lt!471067 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!608364 () ListLongMap!14307)

(assert (=> d!129019 (= lt!471067 e!608364)))

(declare-fun c!107392 () Bool)

(assert (=> d!129019 (= c!107392 (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129019 (validMask!0 mask!1515)))

(assert (=> d!129019 (= (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471067)))

(declare-fun b!1066700 () Bool)

(assert (=> b!1066700 (= e!608358 e!608361)))

(assert (=> b!1066700 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun res!712025 () Bool)

(assert (=> b!1066700 (= res!712025 (contains!6288 lt!471067 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066700 (=> (not res!712025) (not e!608361))))

(declare-fun b!1066701 () Bool)

(assert (=> b!1066701 (= e!608364 (ListLongMap!14308 Nil!22914))))

(declare-fun b!1066702 () Bool)

(declare-fun isEmpty!945 (ListLongMap!14307) Bool)

(assert (=> b!1066702 (= e!608363 (isEmpty!945 lt!471067))))

(declare-fun b!1066703 () Bool)

(assert (=> b!1066703 (= e!608364 e!608359)))

(declare-fun c!107393 () Bool)

(assert (=> b!1066703 (= c!107393 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45051 () Bool)

(assert (=> bm!45051 (= call!45054 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1066704 () Bool)

(declare-fun res!712023 () Bool)

(assert (=> b!1066704 (=> (not res!712023) (not e!608362))))

(assert (=> b!1066704 (= res!712023 (not (contains!6288 lt!471067 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1066705 () Bool)

(assert (=> b!1066705 (= e!608363 (= lt!471067 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1066706 () Bool)

(declare-fun lt!471064 () Unit!35002)

(declare-fun lt!471061 () Unit!35002)

(assert (=> b!1066706 (= lt!471064 lt!471061)))

(declare-fun lt!471062 () ListLongMap!14307)

(declare-fun lt!471065 () (_ BitVec 64))

(declare-fun lt!471063 () (_ BitVec 64))

(declare-fun lt!471066 () V!39131)

(assert (=> b!1066706 (not (contains!6288 (+!3118 lt!471062 (tuple2!16327 lt!471065 lt!471066)) lt!471063))))

(declare-fun addStillNotContains!254 (ListLongMap!14307 (_ BitVec 64) V!39131 (_ BitVec 64)) Unit!35002)

(assert (=> b!1066706 (= lt!471061 (addStillNotContains!254 lt!471062 lt!471065 lt!471066 lt!471063))))

(assert (=> b!1066706 (= lt!471063 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1066706 (= lt!471066 (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1066706 (= lt!471065 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1066706 (= lt!471062 call!45054)))

(assert (=> b!1066706 (= e!608359 (+!3118 call!45054 (tuple2!16327 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1066707 () Bool)

(assert (=> b!1066707 (= e!608362 e!608358)))

(declare-fun c!107391 () Bool)

(assert (=> b!1066707 (= c!107391 e!608360)))

(declare-fun res!712024 () Bool)

(assert (=> b!1066707 (=> (not res!712024) (not e!608360))))

(assert (=> b!1066707 (= res!712024 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (= (and d!129019 c!107392) b!1066701))

(assert (= (and d!129019 (not c!107392)) b!1066703))

(assert (= (and b!1066703 c!107393) b!1066706))

(assert (= (and b!1066703 (not c!107393)) b!1066699))

(assert (= (or b!1066706 b!1066699) bm!45051))

(assert (= (and d!129019 res!712026) b!1066704))

(assert (= (and b!1066704 res!712023) b!1066707))

(assert (= (and b!1066707 res!712024) b!1066698))

(assert (= (and b!1066707 c!107391) b!1066700))

(assert (= (and b!1066707 (not c!107391)) b!1066696))

(assert (= (and b!1066700 res!712025) b!1066697))

(assert (= (and b!1066696 c!107390) b!1066705))

(assert (= (and b!1066696 (not c!107390)) b!1066702))

(declare-fun b_lambda!16591 () Bool)

(assert (=> (not b_lambda!16591) (not b!1066697)))

(declare-fun t!32249 () Bool)

(declare-fun tb!7151 () Bool)

(assert (=> (and start!94360 (= defaultEntry!963 defaultEntry!963) t!32249) tb!7151))

(declare-fun result!14745 () Bool)

(assert (=> tb!7151 (= result!14745 tp_is_empty!25497)))

(assert (=> b!1066697 t!32249))

(declare-fun b_and!34481 () Bool)

(assert (= b_and!34477 (and (=> t!32249 result!14745) b_and!34481)))

(declare-fun b_lambda!16593 () Bool)

(assert (=> (not b_lambda!16593) (not b!1066706)))

(assert (=> b!1066706 t!32249))

(declare-fun b_and!34483 () Bool)

(assert (= b_and!34481 (and (=> t!32249 result!14745) b_and!34483)))

(declare-fun m!985551 () Bool)

(assert (=> b!1066706 m!985551))

(declare-fun m!985553 () Bool)

(assert (=> b!1066706 m!985553))

(declare-fun m!985555 () Bool)

(assert (=> b!1066706 m!985555))

(declare-fun m!985557 () Bool)

(assert (=> b!1066706 m!985557))

(declare-fun m!985559 () Bool)

(assert (=> b!1066706 m!985559))

(assert (=> b!1066706 m!985551))

(declare-fun m!985561 () Bool)

(assert (=> b!1066706 m!985561))

(declare-fun m!985563 () Bool)

(assert (=> b!1066706 m!985563))

(declare-fun m!985565 () Bool)

(assert (=> b!1066706 m!985565))

(assert (=> b!1066706 m!985557))

(assert (=> b!1066706 m!985555))

(assert (=> b!1066700 m!985565))

(assert (=> b!1066700 m!985565))

(declare-fun m!985567 () Bool)

(assert (=> b!1066700 m!985567))

(declare-fun m!985569 () Bool)

(assert (=> b!1066705 m!985569))

(declare-fun m!985571 () Bool)

(assert (=> d!129019 m!985571))

(assert (=> d!129019 m!985503))

(assert (=> b!1066698 m!985565))

(assert (=> b!1066698 m!985565))

(declare-fun m!985573 () Bool)

(assert (=> b!1066698 m!985573))

(assert (=> bm!45051 m!985569))

(declare-fun m!985575 () Bool)

(assert (=> b!1066702 m!985575))

(declare-fun m!985577 () Bool)

(assert (=> b!1066704 m!985577))

(assert (=> b!1066697 m!985555))

(assert (=> b!1066697 m!985557))

(assert (=> b!1066697 m!985559))

(assert (=> b!1066697 m!985565))

(declare-fun m!985579 () Bool)

(assert (=> b!1066697 m!985579))

(assert (=> b!1066697 m!985565))

(assert (=> b!1066697 m!985557))

(assert (=> b!1066697 m!985555))

(assert (=> b!1066703 m!985565))

(assert (=> b!1066703 m!985565))

(assert (=> b!1066703 m!985573))

(assert (=> b!1066643 d!129019))

(declare-fun b!1066710 () Bool)

(declare-fun e!608365 () Bool)

(declare-fun e!608370 () Bool)

(assert (=> b!1066710 (= e!608365 e!608370)))

(declare-fun c!107394 () Bool)

(assert (=> b!1066710 (= c!107394 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066711 () Bool)

(assert (=> b!1066711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> b!1066711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33212 _values!955)))))

(declare-fun e!608368 () Bool)

(declare-fun lt!471074 () ListLongMap!14307)

(assert (=> b!1066711 (= e!608368 (= (apply!959 lt!471074 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1066712 () Bool)

(declare-fun e!608367 () Bool)

(assert (=> b!1066712 (= e!608367 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066712 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1066713 () Bool)

(declare-fun e!608366 () ListLongMap!14307)

(declare-fun call!45055 () ListLongMap!14307)

(assert (=> b!1066713 (= e!608366 call!45055)))

(declare-fun d!129021 () Bool)

(declare-fun e!608369 () Bool)

(assert (=> d!129021 e!608369))

(declare-fun res!712030 () Bool)

(assert (=> d!129021 (=> (not res!712030) (not e!608369))))

(assert (=> d!129021 (= res!712030 (not (contains!6288 lt!471074 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!608371 () ListLongMap!14307)

(assert (=> d!129021 (= lt!471074 e!608371)))

(declare-fun c!107396 () Bool)

(assert (=> d!129021 (= c!107396 (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129021 (validMask!0 mask!1515)))

(assert (=> d!129021 (= (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471074)))

(declare-fun b!1066714 () Bool)

(assert (=> b!1066714 (= e!608365 e!608368)))

(assert (=> b!1066714 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun res!712029 () Bool)

(assert (=> b!1066714 (= res!712029 (contains!6288 lt!471074 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066714 (=> (not res!712029) (not e!608368))))

(declare-fun b!1066715 () Bool)

(assert (=> b!1066715 (= e!608371 (ListLongMap!14308 Nil!22914))))

(declare-fun b!1066716 () Bool)

(assert (=> b!1066716 (= e!608370 (isEmpty!945 lt!471074))))

(declare-fun b!1066717 () Bool)

(assert (=> b!1066717 (= e!608371 e!608366)))

(declare-fun c!107397 () Bool)

(assert (=> b!1066717 (= c!107397 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45052 () Bool)

(assert (=> bm!45052 (= call!45055 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1066718 () Bool)

(declare-fun res!712027 () Bool)

(assert (=> b!1066718 (=> (not res!712027) (not e!608369))))

(assert (=> b!1066718 (= res!712027 (not (contains!6288 lt!471074 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1066719 () Bool)

(assert (=> b!1066719 (= e!608370 (= lt!471074 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1066720 () Bool)

(declare-fun lt!471071 () Unit!35002)

(declare-fun lt!471068 () Unit!35002)

(assert (=> b!1066720 (= lt!471071 lt!471068)))

(declare-fun lt!471073 () V!39131)

(declare-fun lt!471070 () (_ BitVec 64))

(declare-fun lt!471072 () (_ BitVec 64))

(declare-fun lt!471069 () ListLongMap!14307)

(assert (=> b!1066720 (not (contains!6288 (+!3118 lt!471069 (tuple2!16327 lt!471072 lt!471073)) lt!471070))))

(assert (=> b!1066720 (= lt!471068 (addStillNotContains!254 lt!471069 lt!471072 lt!471073 lt!471070))))

(assert (=> b!1066720 (= lt!471070 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1066720 (= lt!471073 (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1066720 (= lt!471072 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1066720 (= lt!471069 call!45055)))

(assert (=> b!1066720 (= e!608366 (+!3118 call!45055 (tuple2!16327 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1066721 () Bool)

(assert (=> b!1066721 (= e!608369 e!608365)))

(declare-fun c!107395 () Bool)

(assert (=> b!1066721 (= c!107395 e!608367)))

(declare-fun res!712028 () Bool)

(assert (=> b!1066721 (=> (not res!712028) (not e!608367))))

(assert (=> b!1066721 (= res!712028 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (= (and d!129021 c!107396) b!1066715))

(assert (= (and d!129021 (not c!107396)) b!1066717))

(assert (= (and b!1066717 c!107397) b!1066720))

(assert (= (and b!1066717 (not c!107397)) b!1066713))

(assert (= (or b!1066720 b!1066713) bm!45052))

(assert (= (and d!129021 res!712030) b!1066718))

(assert (= (and b!1066718 res!712027) b!1066721))

(assert (= (and b!1066721 res!712028) b!1066712))

(assert (= (and b!1066721 c!107395) b!1066714))

(assert (= (and b!1066721 (not c!107395)) b!1066710))

(assert (= (and b!1066714 res!712029) b!1066711))

(assert (= (and b!1066710 c!107394) b!1066719))

(assert (= (and b!1066710 (not c!107394)) b!1066716))

(declare-fun b_lambda!16595 () Bool)

(assert (=> (not b_lambda!16595) (not b!1066711)))

(assert (=> b!1066711 t!32249))

(declare-fun b_and!34485 () Bool)

(assert (= b_and!34483 (and (=> t!32249 result!14745) b_and!34485)))

(declare-fun b_lambda!16597 () Bool)

(assert (=> (not b_lambda!16597) (not b!1066720)))

(assert (=> b!1066720 t!32249))

(declare-fun b_and!34487 () Bool)

(assert (= b_and!34485 (and (=> t!32249 result!14745) b_and!34487)))

(declare-fun m!985581 () Bool)

(assert (=> b!1066720 m!985581))

(declare-fun m!985583 () Bool)

(assert (=> b!1066720 m!985583))

(assert (=> b!1066720 m!985555))

(assert (=> b!1066720 m!985557))

(assert (=> b!1066720 m!985559))

(assert (=> b!1066720 m!985581))

(declare-fun m!985585 () Bool)

(assert (=> b!1066720 m!985585))

(declare-fun m!985587 () Bool)

(assert (=> b!1066720 m!985587))

(assert (=> b!1066720 m!985565))

(assert (=> b!1066720 m!985557))

(assert (=> b!1066720 m!985555))

(assert (=> b!1066714 m!985565))

(assert (=> b!1066714 m!985565))

(declare-fun m!985589 () Bool)

(assert (=> b!1066714 m!985589))

(declare-fun m!985591 () Bool)

(assert (=> b!1066719 m!985591))

(declare-fun m!985593 () Bool)

(assert (=> d!129021 m!985593))

(assert (=> d!129021 m!985503))

(assert (=> b!1066712 m!985565))

(assert (=> b!1066712 m!985565))

(assert (=> b!1066712 m!985573))

(assert (=> bm!45052 m!985591))

(declare-fun m!985595 () Bool)

(assert (=> b!1066716 m!985595))

(declare-fun m!985597 () Bool)

(assert (=> b!1066718 m!985597))

(assert (=> b!1066711 m!985555))

(assert (=> b!1066711 m!985557))

(assert (=> b!1066711 m!985559))

(assert (=> b!1066711 m!985565))

(declare-fun m!985599 () Bool)

(assert (=> b!1066711 m!985599))

(assert (=> b!1066711 m!985565))

(assert (=> b!1066711 m!985557))

(assert (=> b!1066711 m!985555))

(assert (=> b!1066717 m!985565))

(assert (=> b!1066717 m!985565))

(assert (=> b!1066717 m!985573))

(assert (=> b!1066643 d!129021))

(declare-fun d!129023 () Bool)

(assert (=> d!129023 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94360 d!129023))

(declare-fun d!129025 () Bool)

(assert (=> d!129025 (= (array_inv!25136 _values!955) (bvsge (size!33212 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94360 d!129025))

(declare-fun d!129027 () Bool)

(assert (=> d!129027 (= (array_inv!25137 _keys!1163) (bvsge (size!33211 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94360 d!129027))

(declare-fun b!1066732 () Bool)

(declare-fun e!608382 () Bool)

(declare-fun e!608383 () Bool)

(assert (=> b!1066732 (= e!608382 e!608383)))

(declare-fun c!107400 () Bool)

(assert (=> b!1066732 (= c!107400 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45055 () Bool)

(declare-fun call!45058 () Bool)

(assert (=> bm!45055 (= call!45058 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107400 (Cons!22914 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000) Nil!22915) Nil!22915)))))

(declare-fun b!1066733 () Bool)

(assert (=> b!1066733 (= e!608383 call!45058)))

(declare-fun b!1066734 () Bool)

(declare-fun e!608380 () Bool)

(assert (=> b!1066734 (= e!608380 e!608382)))

(declare-fun res!712037 () Bool)

(assert (=> b!1066734 (=> (not res!712037) (not e!608382))))

(declare-fun e!608381 () Bool)

(assert (=> b!1066734 (= res!712037 (not e!608381))))

(declare-fun res!712039 () Bool)

(assert (=> b!1066734 (=> (not res!712039) (not e!608381))))

(assert (=> b!1066734 (= res!712039 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129029 () Bool)

(declare-fun res!712038 () Bool)

(assert (=> d!129029 (=> res!712038 e!608380)))

(assert (=> d!129029 (= res!712038 (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129029 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22915) e!608380)))

(declare-fun b!1066735 () Bool)

(assert (=> b!1066735 (= e!608383 call!45058)))

(declare-fun b!1066736 () Bool)

(declare-fun contains!6289 (List!22918 (_ BitVec 64)) Bool)

(assert (=> b!1066736 (= e!608381 (contains!6289 Nil!22915 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129029 (not res!712038)) b!1066734))

(assert (= (and b!1066734 res!712039) b!1066736))

(assert (= (and b!1066734 res!712037) b!1066732))

(assert (= (and b!1066732 c!107400) b!1066733))

(assert (= (and b!1066732 (not c!107400)) b!1066735))

(assert (= (or b!1066733 b!1066735) bm!45055))

(assert (=> b!1066732 m!985565))

(assert (=> b!1066732 m!985565))

(assert (=> b!1066732 m!985573))

(assert (=> bm!45055 m!985565))

(declare-fun m!985601 () Bool)

(assert (=> bm!45055 m!985601))

(assert (=> b!1066734 m!985565))

(assert (=> b!1066734 m!985565))

(assert (=> b!1066734 m!985573))

(assert (=> b!1066736 m!985565))

(assert (=> b!1066736 m!985565))

(declare-fun m!985603 () Bool)

(assert (=> b!1066736 m!985603))

(assert (=> b!1066639 d!129029))

(declare-fun d!129031 () Bool)

(declare-fun lt!471077 () ListLongMap!14307)

(assert (=> d!129031 (not (contains!6288 lt!471077 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!71 (List!22917 (_ BitVec 64)) List!22917)

(assert (=> d!129031 (= lt!471077 (ListLongMap!14308 (removeStrictlySorted!71 (toList!7169 lt!471021) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129031 (= (-!627 lt!471021 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471077)))

(declare-fun bs!31388 () Bool)

(assert (= bs!31388 d!129031))

(declare-fun m!985605 () Bool)

(assert (=> bs!31388 m!985605))

(declare-fun m!985607 () Bool)

(assert (=> bs!31388 m!985607))

(assert (=> b!1066637 d!129031))

(declare-fun d!129033 () Bool)

(declare-fun e!608386 () Bool)

(assert (=> d!129033 e!608386))

(declare-fun res!712044 () Bool)

(assert (=> d!129033 (=> (not res!712044) (not e!608386))))

(declare-fun lt!471086 () ListLongMap!14307)

(assert (=> d!129033 (= res!712044 (contains!6288 lt!471086 (_1!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!471088 () List!22917)

(assert (=> d!129033 (= lt!471086 (ListLongMap!14308 lt!471088))))

(declare-fun lt!471087 () Unit!35002)

(declare-fun lt!471089 () Unit!35002)

(assert (=> d!129033 (= lt!471087 lt!471089)))

(declare-datatypes ((Option!654 0))(
  ( (Some!653 (v!15415 V!39131)) (None!652) )
))
(declare-fun getValueByKey!603 (List!22917 (_ BitVec 64)) Option!654)

(assert (=> d!129033 (= (getValueByKey!603 lt!471088 (_1!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!653 (_2!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lemmaContainsTupThenGetReturnValue!284 (List!22917 (_ BitVec 64) V!39131) Unit!35002)

(assert (=> d!129033 (= lt!471089 (lemmaContainsTupThenGetReturnValue!284 lt!471088 (_1!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun insertStrictlySorted!376 (List!22917 (_ BitVec 64) V!39131) List!22917)

(assert (=> d!129033 (= lt!471088 (insertStrictlySorted!376 (toList!7169 lt!471019) (_1!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129033 (= (+!3118 lt!471019 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!471086)))

(declare-fun b!1066741 () Bool)

(declare-fun res!712045 () Bool)

(assert (=> b!1066741 (=> (not res!712045) (not e!608386))))

(assert (=> b!1066741 (= res!712045 (= (getValueByKey!603 (toList!7169 lt!471086) (_1!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!653 (_2!8173 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1066742 () Bool)

(declare-fun contains!6290 (List!22917 tuple2!16326) Bool)

(assert (=> b!1066742 (= e!608386 (contains!6290 (toList!7169 lt!471086) (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129033 res!712044) b!1066741))

(assert (= (and b!1066741 res!712045) b!1066742))

(declare-fun m!985609 () Bool)

(assert (=> d!129033 m!985609))

(declare-fun m!985611 () Bool)

(assert (=> d!129033 m!985611))

(declare-fun m!985613 () Bool)

(assert (=> d!129033 m!985613))

(declare-fun m!985615 () Bool)

(assert (=> d!129033 m!985615))

(declare-fun m!985617 () Bool)

(assert (=> b!1066741 m!985617))

(declare-fun m!985619 () Bool)

(assert (=> b!1066742 m!985619))

(assert (=> b!1066637 d!129033))

(declare-fun b!1066785 () Bool)

(declare-fun e!608420 () Bool)

(declare-fun lt!471150 () ListLongMap!14307)

(assert (=> b!1066785 (= e!608420 (= (apply!959 lt!471150 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1066786 () Bool)

(declare-fun e!608419 () Unit!35002)

(declare-fun lt!471141 () Unit!35002)

(assert (=> b!1066786 (= e!608419 lt!471141)))

(declare-fun lt!471151 () ListLongMap!14307)

(assert (=> b!1066786 (= lt!471151 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471152 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471152 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471149 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471149 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471137 () Unit!35002)

(declare-fun addStillContains!644 (ListLongMap!14307 (_ BitVec 64) V!39131 (_ BitVec 64)) Unit!35002)

(assert (=> b!1066786 (= lt!471137 (addStillContains!644 lt!471151 lt!471152 zeroValueAfter!47 lt!471149))))

(assert (=> b!1066786 (contains!6288 (+!3118 lt!471151 (tuple2!16327 lt!471152 zeroValueAfter!47)) lt!471149)))

(declare-fun lt!471154 () Unit!35002)

(assert (=> b!1066786 (= lt!471154 lt!471137)))

(declare-fun lt!471146 () ListLongMap!14307)

(assert (=> b!1066786 (= lt!471146 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471138 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471138 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471134 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471134 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471143 () Unit!35002)

(declare-fun addApplyDifferent!496 (ListLongMap!14307 (_ BitVec 64) V!39131 (_ BitVec 64)) Unit!35002)

(assert (=> b!1066786 (= lt!471143 (addApplyDifferent!496 lt!471146 lt!471138 minValue!907 lt!471134))))

(assert (=> b!1066786 (= (apply!959 (+!3118 lt!471146 (tuple2!16327 lt!471138 minValue!907)) lt!471134) (apply!959 lt!471146 lt!471134))))

(declare-fun lt!471140 () Unit!35002)

(assert (=> b!1066786 (= lt!471140 lt!471143)))

(declare-fun lt!471136 () ListLongMap!14307)

(assert (=> b!1066786 (= lt!471136 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471135 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471135 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471139 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471139 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471155 () Unit!35002)

(assert (=> b!1066786 (= lt!471155 (addApplyDifferent!496 lt!471136 lt!471135 zeroValueAfter!47 lt!471139))))

(assert (=> b!1066786 (= (apply!959 (+!3118 lt!471136 (tuple2!16327 lt!471135 zeroValueAfter!47)) lt!471139) (apply!959 lt!471136 lt!471139))))

(declare-fun lt!471145 () Unit!35002)

(assert (=> b!1066786 (= lt!471145 lt!471155)))

(declare-fun lt!471144 () ListLongMap!14307)

(assert (=> b!1066786 (= lt!471144 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471147 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471147 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471153 () (_ BitVec 64))

(assert (=> b!1066786 (= lt!471153 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1066786 (= lt!471141 (addApplyDifferent!496 lt!471144 lt!471147 minValue!907 lt!471153))))

(assert (=> b!1066786 (= (apply!959 (+!3118 lt!471144 (tuple2!16327 lt!471147 minValue!907)) lt!471153) (apply!959 lt!471144 lt!471153))))

(declare-fun b!1066787 () Bool)

(declare-fun e!608423 () ListLongMap!14307)

(declare-fun e!608414 () ListLongMap!14307)

(assert (=> b!1066787 (= e!608423 e!608414)))

(declare-fun c!107414 () Bool)

(assert (=> b!1066787 (= c!107414 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1066788 () Bool)

(declare-fun res!712068 () Bool)

(declare-fun e!608422 () Bool)

(assert (=> b!1066788 (=> (not res!712068) (not e!608422))))

(declare-fun e!608425 () Bool)

(assert (=> b!1066788 (= res!712068 e!608425)))

(declare-fun res!712071 () Bool)

(assert (=> b!1066788 (=> res!712071 e!608425)))

(declare-fun e!608417 () Bool)

(assert (=> b!1066788 (= res!712071 (not e!608417))))

(declare-fun res!712067 () Bool)

(assert (=> b!1066788 (=> (not res!712067) (not e!608417))))

(assert (=> b!1066788 (= res!712067 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun bm!45070 () Bool)

(declare-fun call!45074 () Bool)

(assert (=> bm!45070 (= call!45074 (contains!6288 lt!471150 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1066790 () Bool)

(declare-fun e!608413 () Bool)

(assert (=> b!1066790 (= e!608413 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun call!45078 () ListLongMap!14307)

(declare-fun bm!45071 () Bool)

(assert (=> bm!45071 (= call!45078 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066791 () Bool)

(declare-fun res!712070 () Bool)

(assert (=> b!1066791 (=> (not res!712070) (not e!608422))))

(declare-fun e!608421 () Bool)

(assert (=> b!1066791 (= res!712070 e!608421)))

(declare-fun c!107413 () Bool)

(assert (=> b!1066791 (= c!107413 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!45079 () ListLongMap!14307)

(declare-fun call!45075 () ListLongMap!14307)

(declare-fun call!45077 () ListLongMap!14307)

(declare-fun bm!45072 () Bool)

(declare-fun c!107416 () Bool)

(assert (=> bm!45072 (= call!45079 (+!3118 (ite c!107416 call!45078 (ite c!107414 call!45075 call!45077)) (ite (or c!107416 c!107414) (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun bm!45073 () Bool)

(declare-fun call!45073 () ListLongMap!14307)

(assert (=> bm!45073 (= call!45073 call!45079)))

(declare-fun b!1066792 () Bool)

(declare-fun e!608424 () Bool)

(assert (=> b!1066792 (= e!608425 e!608424)))

(declare-fun res!712066 () Bool)

(assert (=> b!1066792 (=> (not res!712066) (not e!608424))))

(assert (=> b!1066792 (= res!712066 (contains!6288 lt!471150 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066792 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066793 () Bool)

(declare-fun e!608418 () ListLongMap!14307)

(assert (=> b!1066793 (= e!608418 call!45077)))

(declare-fun b!1066789 () Bool)

(declare-fun e!608416 () Bool)

(declare-fun call!45076 () Bool)

(assert (=> b!1066789 (= e!608416 (not call!45076))))

(declare-fun d!129035 () Bool)

(assert (=> d!129035 e!608422))

(declare-fun res!712069 () Bool)

(assert (=> d!129035 (=> (not res!712069) (not e!608422))))

(assert (=> d!129035 (= res!712069 (or (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))))

(declare-fun lt!471142 () ListLongMap!14307)

(assert (=> d!129035 (= lt!471150 lt!471142)))

(declare-fun lt!471148 () Unit!35002)

(assert (=> d!129035 (= lt!471148 e!608419)))

(declare-fun c!107417 () Bool)

(assert (=> d!129035 (= c!107417 e!608413)))

(declare-fun res!712064 () Bool)

(assert (=> d!129035 (=> (not res!712064) (not e!608413))))

(assert (=> d!129035 (= res!712064 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129035 (= lt!471142 e!608423)))

(assert (=> d!129035 (= c!107416 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129035 (validMask!0 mask!1515)))

(assert (=> d!129035 (= (getCurrentListMap!4081 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471150)))

(declare-fun bm!45074 () Bool)

(assert (=> bm!45074 (= call!45077 call!45075)))

(declare-fun b!1066794 () Bool)

(assert (=> b!1066794 (= e!608424 (= (apply!959 lt!471150 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1066794 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33212 _values!955)))))

(assert (=> b!1066794 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066795 () Bool)

(declare-fun e!608415 () Bool)

(assert (=> b!1066795 (= e!608415 (= (apply!959 lt!471150 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1066796 () Bool)

(assert (=> b!1066796 (= e!608417 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1066797 () Bool)

(declare-fun Unit!35006 () Unit!35002)

(assert (=> b!1066797 (= e!608419 Unit!35006)))

(declare-fun b!1066798 () Bool)

(assert (=> b!1066798 (= e!608422 e!608416)))

(declare-fun c!107418 () Bool)

(assert (=> b!1066798 (= c!107418 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1066799 () Bool)

(assert (=> b!1066799 (= e!608423 (+!3118 call!45079 (tuple2!16327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1066800 () Bool)

(assert (=> b!1066800 (= e!608421 (not call!45074))))

(declare-fun b!1066801 () Bool)

(assert (=> b!1066801 (= e!608414 call!45073)))

(declare-fun b!1066802 () Bool)

(assert (=> b!1066802 (= e!608416 e!608420)))

(declare-fun res!712065 () Bool)

(assert (=> b!1066802 (= res!712065 call!45076)))

(assert (=> b!1066802 (=> (not res!712065) (not e!608420))))

(declare-fun bm!45075 () Bool)

(assert (=> bm!45075 (= call!45075 call!45078)))

(declare-fun b!1066803 () Bool)

(assert (=> b!1066803 (= e!608418 call!45073)))

(declare-fun bm!45076 () Bool)

(assert (=> bm!45076 (= call!45076 (contains!6288 lt!471150 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1066804 () Bool)

(assert (=> b!1066804 (= e!608421 e!608415)))

(declare-fun res!712072 () Bool)

(assert (=> b!1066804 (= res!712072 call!45074)))

(assert (=> b!1066804 (=> (not res!712072) (not e!608415))))

(declare-fun b!1066805 () Bool)

(declare-fun c!107415 () Bool)

(assert (=> b!1066805 (= c!107415 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066805 (= e!608414 e!608418)))

(assert (= (and d!129035 c!107416) b!1066799))

(assert (= (and d!129035 (not c!107416)) b!1066787))

(assert (= (and b!1066787 c!107414) b!1066801))

(assert (= (and b!1066787 (not c!107414)) b!1066805))

(assert (= (and b!1066805 c!107415) b!1066803))

(assert (= (and b!1066805 (not c!107415)) b!1066793))

(assert (= (or b!1066803 b!1066793) bm!45074))

(assert (= (or b!1066801 bm!45074) bm!45075))

(assert (= (or b!1066801 b!1066803) bm!45073))

(assert (= (or b!1066799 bm!45075) bm!45071))

(assert (= (or b!1066799 bm!45073) bm!45072))

(assert (= (and d!129035 res!712064) b!1066790))

(assert (= (and d!129035 c!107417) b!1066786))

(assert (= (and d!129035 (not c!107417)) b!1066797))

(assert (= (and d!129035 res!712069) b!1066788))

(assert (= (and b!1066788 res!712067) b!1066796))

(assert (= (and b!1066788 (not res!712071)) b!1066792))

(assert (= (and b!1066792 res!712066) b!1066794))

(assert (= (and b!1066788 res!712068) b!1066791))

(assert (= (and b!1066791 c!107413) b!1066804))

(assert (= (and b!1066791 (not c!107413)) b!1066800))

(assert (= (and b!1066804 res!712072) b!1066795))

(assert (= (or b!1066804 b!1066800) bm!45070))

(assert (= (and b!1066791 res!712070) b!1066798))

(assert (= (and b!1066798 c!107418) b!1066802))

(assert (= (and b!1066798 (not c!107418)) b!1066789))

(assert (= (and b!1066802 res!712065) b!1066785))

(assert (= (or b!1066802 b!1066789) bm!45076))

(declare-fun b_lambda!16599 () Bool)

(assert (=> (not b_lambda!16599) (not b!1066794)))

(assert (=> b!1066794 t!32249))

(declare-fun b_and!34489 () Bool)

(assert (= b_and!34487 (and (=> t!32249 result!14745) b_and!34489)))

(assert (=> bm!45071 m!985511))

(assert (=> b!1066796 m!985565))

(assert (=> b!1066796 m!985565))

(assert (=> b!1066796 m!985573))

(assert (=> b!1066790 m!985565))

(assert (=> b!1066790 m!985565))

(assert (=> b!1066790 m!985573))

(declare-fun m!985621 () Bool)

(assert (=> bm!45070 m!985621))

(declare-fun m!985623 () Bool)

(assert (=> bm!45076 m!985623))

(declare-fun m!985625 () Bool)

(assert (=> b!1066786 m!985625))

(declare-fun m!985627 () Bool)

(assert (=> b!1066786 m!985627))

(declare-fun m!985629 () Bool)

(assert (=> b!1066786 m!985629))

(declare-fun m!985631 () Bool)

(assert (=> b!1066786 m!985631))

(declare-fun m!985633 () Bool)

(assert (=> b!1066786 m!985633))

(declare-fun m!985635 () Bool)

(assert (=> b!1066786 m!985635))

(declare-fun m!985637 () Bool)

(assert (=> b!1066786 m!985637))

(declare-fun m!985639 () Bool)

(assert (=> b!1066786 m!985639))

(assert (=> b!1066786 m!985633))

(assert (=> b!1066786 m!985625))

(declare-fun m!985641 () Bool)

(assert (=> b!1066786 m!985641))

(declare-fun m!985643 () Bool)

(assert (=> b!1066786 m!985643))

(declare-fun m!985645 () Bool)

(assert (=> b!1066786 m!985645))

(declare-fun m!985647 () Bool)

(assert (=> b!1066786 m!985647))

(declare-fun m!985649 () Bool)

(assert (=> b!1066786 m!985649))

(assert (=> b!1066786 m!985631))

(declare-fun m!985651 () Bool)

(assert (=> b!1066786 m!985651))

(assert (=> b!1066786 m!985645))

(declare-fun m!985653 () Bool)

(assert (=> b!1066786 m!985653))

(assert (=> b!1066786 m!985565))

(assert (=> b!1066786 m!985511))

(declare-fun m!985655 () Bool)

(assert (=> b!1066785 m!985655))

(declare-fun m!985657 () Bool)

(assert (=> bm!45072 m!985657))

(declare-fun m!985659 () Bool)

(assert (=> b!1066795 m!985659))

(assert (=> b!1066794 m!985557))

(assert (=> b!1066794 m!985555))

(assert (=> b!1066794 m!985557))

(assert (=> b!1066794 m!985559))

(assert (=> b!1066794 m!985555))

(assert (=> b!1066794 m!985565))

(declare-fun m!985661 () Bool)

(assert (=> b!1066794 m!985661))

(assert (=> b!1066794 m!985565))

(declare-fun m!985663 () Bool)

(assert (=> b!1066799 m!985663))

(assert (=> d!129035 m!985503))

(assert (=> b!1066792 m!985565))

(assert (=> b!1066792 m!985565))

(declare-fun m!985665 () Bool)

(assert (=> b!1066792 m!985665))

(assert (=> b!1066637 d!129035))

(declare-fun b!1066806 () Bool)

(declare-fun e!608433 () Bool)

(declare-fun lt!471172 () ListLongMap!14307)

(assert (=> b!1066806 (= e!608433 (= (apply!959 lt!471172 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1066807 () Bool)

(declare-fun e!608432 () Unit!35002)

(declare-fun lt!471163 () Unit!35002)

(assert (=> b!1066807 (= e!608432 lt!471163)))

(declare-fun lt!471173 () ListLongMap!14307)

(assert (=> b!1066807 (= lt!471173 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471174 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471174 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471171 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471171 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471159 () Unit!35002)

(assert (=> b!1066807 (= lt!471159 (addStillContains!644 lt!471173 lt!471174 zeroValueBefore!47 lt!471171))))

(assert (=> b!1066807 (contains!6288 (+!3118 lt!471173 (tuple2!16327 lt!471174 zeroValueBefore!47)) lt!471171)))

(declare-fun lt!471176 () Unit!35002)

(assert (=> b!1066807 (= lt!471176 lt!471159)))

(declare-fun lt!471168 () ListLongMap!14307)

(assert (=> b!1066807 (= lt!471168 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471160 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471160 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471156 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471156 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471165 () Unit!35002)

(assert (=> b!1066807 (= lt!471165 (addApplyDifferent!496 lt!471168 lt!471160 minValue!907 lt!471156))))

(assert (=> b!1066807 (= (apply!959 (+!3118 lt!471168 (tuple2!16327 lt!471160 minValue!907)) lt!471156) (apply!959 lt!471168 lt!471156))))

(declare-fun lt!471162 () Unit!35002)

(assert (=> b!1066807 (= lt!471162 lt!471165)))

(declare-fun lt!471158 () ListLongMap!14307)

(assert (=> b!1066807 (= lt!471158 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471157 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471157 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471161 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471161 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471177 () Unit!35002)

(assert (=> b!1066807 (= lt!471177 (addApplyDifferent!496 lt!471158 lt!471157 zeroValueBefore!47 lt!471161))))

(assert (=> b!1066807 (= (apply!959 (+!3118 lt!471158 (tuple2!16327 lt!471157 zeroValueBefore!47)) lt!471161) (apply!959 lt!471158 lt!471161))))

(declare-fun lt!471167 () Unit!35002)

(assert (=> b!1066807 (= lt!471167 lt!471177)))

(declare-fun lt!471166 () ListLongMap!14307)

(assert (=> b!1066807 (= lt!471166 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471169 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471169 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471175 () (_ BitVec 64))

(assert (=> b!1066807 (= lt!471175 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1066807 (= lt!471163 (addApplyDifferent!496 lt!471166 lt!471169 minValue!907 lt!471175))))

(assert (=> b!1066807 (= (apply!959 (+!3118 lt!471166 (tuple2!16327 lt!471169 minValue!907)) lt!471175) (apply!959 lt!471166 lt!471175))))

(declare-fun b!1066808 () Bool)

(declare-fun e!608436 () ListLongMap!14307)

(declare-fun e!608427 () ListLongMap!14307)

(assert (=> b!1066808 (= e!608436 e!608427)))

(declare-fun c!107420 () Bool)

(assert (=> b!1066808 (= c!107420 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1066809 () Bool)

(declare-fun res!712077 () Bool)

(declare-fun e!608435 () Bool)

(assert (=> b!1066809 (=> (not res!712077) (not e!608435))))

(declare-fun e!608438 () Bool)

(assert (=> b!1066809 (= res!712077 e!608438)))

(declare-fun res!712080 () Bool)

(assert (=> b!1066809 (=> res!712080 e!608438)))

(declare-fun e!608430 () Bool)

(assert (=> b!1066809 (= res!712080 (not e!608430))))

(declare-fun res!712076 () Bool)

(assert (=> b!1066809 (=> (not res!712076) (not e!608430))))

(assert (=> b!1066809 (= res!712076 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun bm!45077 () Bool)

(declare-fun call!45081 () Bool)

(assert (=> bm!45077 (= call!45081 (contains!6288 lt!471172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1066811 () Bool)

(declare-fun e!608426 () Bool)

(assert (=> b!1066811 (= e!608426 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun call!45085 () ListLongMap!14307)

(declare-fun bm!45078 () Bool)

(assert (=> bm!45078 (= call!45085 (getCurrentListMapNoExtraKeys!3715 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066812 () Bool)

(declare-fun res!712079 () Bool)

(assert (=> b!1066812 (=> (not res!712079) (not e!608435))))

(declare-fun e!608434 () Bool)

(assert (=> b!1066812 (= res!712079 e!608434)))

(declare-fun c!107419 () Bool)

(assert (=> b!1066812 (= c!107419 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45079 () Bool)

(declare-fun call!45082 () ListLongMap!14307)

(declare-fun call!45086 () ListLongMap!14307)

(declare-fun call!45084 () ListLongMap!14307)

(declare-fun c!107422 () Bool)

(assert (=> bm!45079 (= call!45086 (+!3118 (ite c!107422 call!45085 (ite c!107420 call!45082 call!45084)) (ite (or c!107422 c!107420) (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun bm!45080 () Bool)

(declare-fun call!45080 () ListLongMap!14307)

(assert (=> bm!45080 (= call!45080 call!45086)))

(declare-fun b!1066813 () Bool)

(declare-fun e!608437 () Bool)

(assert (=> b!1066813 (= e!608438 e!608437)))

(declare-fun res!712075 () Bool)

(assert (=> b!1066813 (=> (not res!712075) (not e!608437))))

(assert (=> b!1066813 (= res!712075 (contains!6288 lt!471172 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1066813 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066814 () Bool)

(declare-fun e!608431 () ListLongMap!14307)

(assert (=> b!1066814 (= e!608431 call!45084)))

(declare-fun b!1066810 () Bool)

(declare-fun e!608429 () Bool)

(declare-fun call!45083 () Bool)

(assert (=> b!1066810 (= e!608429 (not call!45083))))

(declare-fun d!129037 () Bool)

(assert (=> d!129037 e!608435))

(declare-fun res!712078 () Bool)

(assert (=> d!129037 (=> (not res!712078) (not e!608435))))

(assert (=> d!129037 (= res!712078 (or (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))))

(declare-fun lt!471164 () ListLongMap!14307)

(assert (=> d!129037 (= lt!471172 lt!471164)))

(declare-fun lt!471170 () Unit!35002)

(assert (=> d!129037 (= lt!471170 e!608432)))

(declare-fun c!107423 () Bool)

(assert (=> d!129037 (= c!107423 e!608426)))

(declare-fun res!712073 () Bool)

(assert (=> d!129037 (=> (not res!712073) (not e!608426))))

(assert (=> d!129037 (= res!712073 (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129037 (= lt!471164 e!608436)))

(assert (=> d!129037 (= c!107422 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129037 (validMask!0 mask!1515)))

(assert (=> d!129037 (= (getCurrentListMap!4081 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471172)))

(declare-fun bm!45081 () Bool)

(assert (=> bm!45081 (= call!45084 call!45082)))

(declare-fun b!1066815 () Bool)

(assert (=> b!1066815 (= e!608437 (= (apply!959 lt!471172 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)) (get!17059 (select (arr!32675 _values!955) #b00000000000000000000000000000000) (dynLambda!2035 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1066815 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33212 _values!955)))))

(assert (=> b!1066815 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(declare-fun b!1066816 () Bool)

(declare-fun e!608428 () Bool)

(assert (=> b!1066816 (= e!608428 (= (apply!959 lt!471172 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1066817 () Bool)

(assert (=> b!1066817 (= e!608430 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1066818 () Bool)

(declare-fun Unit!35007 () Unit!35002)

(assert (=> b!1066818 (= e!608432 Unit!35007)))

(declare-fun b!1066819 () Bool)

(assert (=> b!1066819 (= e!608435 e!608429)))

(declare-fun c!107424 () Bool)

(assert (=> b!1066819 (= c!107424 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1066820 () Bool)

(assert (=> b!1066820 (= e!608436 (+!3118 call!45086 (tuple2!16327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1066821 () Bool)

(assert (=> b!1066821 (= e!608434 (not call!45081))))

(declare-fun b!1066822 () Bool)

(assert (=> b!1066822 (= e!608427 call!45080)))

(declare-fun b!1066823 () Bool)

(assert (=> b!1066823 (= e!608429 e!608433)))

(declare-fun res!712074 () Bool)

(assert (=> b!1066823 (= res!712074 call!45083)))

(assert (=> b!1066823 (=> (not res!712074) (not e!608433))))

(declare-fun bm!45082 () Bool)

(assert (=> bm!45082 (= call!45082 call!45085)))

(declare-fun b!1066824 () Bool)

(assert (=> b!1066824 (= e!608431 call!45080)))

(declare-fun bm!45083 () Bool)

(assert (=> bm!45083 (= call!45083 (contains!6288 lt!471172 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1066825 () Bool)

(assert (=> b!1066825 (= e!608434 e!608428)))

(declare-fun res!712081 () Bool)

(assert (=> b!1066825 (= res!712081 call!45081)))

(assert (=> b!1066825 (=> (not res!712081) (not e!608428))))

(declare-fun b!1066826 () Bool)

(declare-fun c!107421 () Bool)

(assert (=> b!1066826 (= c!107421 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066826 (= e!608427 e!608431)))

(assert (= (and d!129037 c!107422) b!1066820))

(assert (= (and d!129037 (not c!107422)) b!1066808))

(assert (= (and b!1066808 c!107420) b!1066822))

(assert (= (and b!1066808 (not c!107420)) b!1066826))

(assert (= (and b!1066826 c!107421) b!1066824))

(assert (= (and b!1066826 (not c!107421)) b!1066814))

(assert (= (or b!1066824 b!1066814) bm!45081))

(assert (= (or b!1066822 bm!45081) bm!45082))

(assert (= (or b!1066822 b!1066824) bm!45080))

(assert (= (or b!1066820 bm!45082) bm!45078))

(assert (= (or b!1066820 bm!45080) bm!45079))

(assert (= (and d!129037 res!712073) b!1066811))

(assert (= (and d!129037 c!107423) b!1066807))

(assert (= (and d!129037 (not c!107423)) b!1066818))

(assert (= (and d!129037 res!712078) b!1066809))

(assert (= (and b!1066809 res!712076) b!1066817))

(assert (= (and b!1066809 (not res!712080)) b!1066813))

(assert (= (and b!1066813 res!712075) b!1066815))

(assert (= (and b!1066809 res!712077) b!1066812))

(assert (= (and b!1066812 c!107419) b!1066825))

(assert (= (and b!1066812 (not c!107419)) b!1066821))

(assert (= (and b!1066825 res!712081) b!1066816))

(assert (= (or b!1066825 b!1066821) bm!45077))

(assert (= (and b!1066812 res!712079) b!1066819))

(assert (= (and b!1066819 c!107424) b!1066823))

(assert (= (and b!1066819 (not c!107424)) b!1066810))

(assert (= (and b!1066823 res!712074) b!1066806))

(assert (= (or b!1066823 b!1066810) bm!45083))

(declare-fun b_lambda!16601 () Bool)

(assert (=> (not b_lambda!16601) (not b!1066815)))

(assert (=> b!1066815 t!32249))

(declare-fun b_and!34491 () Bool)

(assert (= b_and!34489 (and (=> t!32249 result!14745) b_and!34491)))

(assert (=> bm!45078 m!985513))

(assert (=> b!1066817 m!985565))

(assert (=> b!1066817 m!985565))

(assert (=> b!1066817 m!985573))

(assert (=> b!1066811 m!985565))

(assert (=> b!1066811 m!985565))

(assert (=> b!1066811 m!985573))

(declare-fun m!985667 () Bool)

(assert (=> bm!45077 m!985667))

(declare-fun m!985669 () Bool)

(assert (=> bm!45083 m!985669))

(declare-fun m!985671 () Bool)

(assert (=> b!1066807 m!985671))

(declare-fun m!985673 () Bool)

(assert (=> b!1066807 m!985673))

(declare-fun m!985675 () Bool)

(assert (=> b!1066807 m!985675))

(declare-fun m!985677 () Bool)

(assert (=> b!1066807 m!985677))

(declare-fun m!985679 () Bool)

(assert (=> b!1066807 m!985679))

(declare-fun m!985681 () Bool)

(assert (=> b!1066807 m!985681))

(declare-fun m!985683 () Bool)

(assert (=> b!1066807 m!985683))

(declare-fun m!985685 () Bool)

(assert (=> b!1066807 m!985685))

(assert (=> b!1066807 m!985679))

(assert (=> b!1066807 m!985671))

(declare-fun m!985687 () Bool)

(assert (=> b!1066807 m!985687))

(declare-fun m!985689 () Bool)

(assert (=> b!1066807 m!985689))

(declare-fun m!985691 () Bool)

(assert (=> b!1066807 m!985691))

(declare-fun m!985693 () Bool)

(assert (=> b!1066807 m!985693))

(declare-fun m!985695 () Bool)

(assert (=> b!1066807 m!985695))

(assert (=> b!1066807 m!985677))

(declare-fun m!985697 () Bool)

(assert (=> b!1066807 m!985697))

(assert (=> b!1066807 m!985691))

(declare-fun m!985699 () Bool)

(assert (=> b!1066807 m!985699))

(assert (=> b!1066807 m!985565))

(assert (=> b!1066807 m!985513))

(declare-fun m!985701 () Bool)

(assert (=> b!1066806 m!985701))

(declare-fun m!985703 () Bool)

(assert (=> bm!45079 m!985703))

(declare-fun m!985705 () Bool)

(assert (=> b!1066816 m!985705))

(assert (=> b!1066815 m!985557))

(assert (=> b!1066815 m!985555))

(assert (=> b!1066815 m!985557))

(assert (=> b!1066815 m!985559))

(assert (=> b!1066815 m!985555))

(assert (=> b!1066815 m!985565))

(declare-fun m!985707 () Bool)

(assert (=> b!1066815 m!985707))

(assert (=> b!1066815 m!985565))

(declare-fun m!985709 () Bool)

(assert (=> b!1066820 m!985709))

(assert (=> d!129037 m!985503))

(assert (=> b!1066813 m!985565))

(assert (=> b!1066813 m!985565))

(declare-fun m!985711 () Bool)

(assert (=> b!1066813 m!985711))

(assert (=> b!1066637 d!129037))

(declare-fun d!129039 () Bool)

(assert (=> d!129039 (= (-!627 (+!3118 lt!471019 (tuple2!16327 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!471019)))

(declare-fun lt!471180 () Unit!35002)

(declare-fun choose!1739 (ListLongMap!14307 (_ BitVec 64) V!39131) Unit!35002)

(assert (=> d!129039 (= lt!471180 (choose!1739 lt!471019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> d!129039 (not (contains!6288 lt!471019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129039 (= (addThenRemoveForNewKeyIsSame!36 lt!471019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) lt!471180)))

(declare-fun bs!31389 () Bool)

(assert (= bs!31389 d!129039))

(assert (=> bs!31389 m!985493))

(assert (=> bs!31389 m!985493))

(declare-fun m!985713 () Bool)

(assert (=> bs!31389 m!985713))

(declare-fun m!985715 () Bool)

(assert (=> bs!31389 m!985715))

(declare-fun m!985717 () Bool)

(assert (=> bs!31389 m!985717))

(assert (=> b!1066637 d!129039))

(declare-fun d!129041 () Bool)

(declare-fun lt!471181 () ListLongMap!14307)

(assert (=> d!129041 (not (contains!6288 lt!471181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129041 (= lt!471181 (ListLongMap!14308 (removeStrictlySorted!71 (toList!7169 lt!471017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129041 (= (-!627 lt!471017 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471181)))

(declare-fun bs!31390 () Bool)

(assert (= bs!31390 d!129041))

(declare-fun m!985719 () Bool)

(assert (=> bs!31390 m!985719))

(declare-fun m!985721 () Bool)

(assert (=> bs!31390 m!985721))

(assert (=> b!1066637 d!129041))

(declare-fun b!1066835 () Bool)

(declare-fun e!608447 () Bool)

(declare-fun e!608446 () Bool)

(assert (=> b!1066835 (= e!608447 e!608446)))

(declare-fun lt!471189 () (_ BitVec 64))

(assert (=> b!1066835 (= lt!471189 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471190 () Unit!35002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67952 (_ BitVec 64) (_ BitVec 32)) Unit!35002)

(assert (=> b!1066835 (= lt!471190 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!471189 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1066835 (arrayContainsKey!0 _keys!1163 lt!471189 #b00000000000000000000000000000000)))

(declare-fun lt!471188 () Unit!35002)

(assert (=> b!1066835 (= lt!471188 lt!471190)))

(declare-fun res!712087 () Bool)

(declare-datatypes ((SeekEntryResult!9874 0))(
  ( (MissingZero!9874 (index!41866 (_ BitVec 32))) (Found!9874 (index!41867 (_ BitVec 32))) (Intermediate!9874 (undefined!10686 Bool) (index!41868 (_ BitVec 32)) (x!95498 (_ BitVec 32))) (Undefined!9874) (MissingVacant!9874 (index!41869 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67952 (_ BitVec 32)) SeekEntryResult!9874)

(assert (=> b!1066835 (= res!712087 (= (seekEntryOrOpen!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9874 #b00000000000000000000000000000000)))))

(assert (=> b!1066835 (=> (not res!712087) (not e!608446))))

(declare-fun b!1066836 () Bool)

(declare-fun call!45089 () Bool)

(assert (=> b!1066836 (= e!608446 call!45089)))

(declare-fun b!1066837 () Bool)

(declare-fun e!608445 () Bool)

(assert (=> b!1066837 (= e!608445 e!608447)))

(declare-fun c!107427 () Bool)

(assert (=> b!1066837 (= c!107427 (validKeyInArray!0 (select (arr!32674 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1066838 () Bool)

(assert (=> b!1066838 (= e!608447 call!45089)))

(declare-fun bm!45086 () Bool)

(assert (=> bm!45086 (= call!45089 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun d!129043 () Bool)

(declare-fun res!712086 () Bool)

(assert (=> d!129043 (=> res!712086 e!608445)))

(assert (=> d!129043 (= res!712086 (bvsge #b00000000000000000000000000000000 (size!33211 _keys!1163)))))

(assert (=> d!129043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!608445)))

(assert (= (and d!129043 (not res!712086)) b!1066837))

(assert (= (and b!1066837 c!107427) b!1066835))

(assert (= (and b!1066837 (not c!107427)) b!1066838))

(assert (= (and b!1066835 res!712087) b!1066836))

(assert (= (or b!1066836 b!1066838) bm!45086))

(assert (=> b!1066835 m!985565))

(declare-fun m!985723 () Bool)

(assert (=> b!1066835 m!985723))

(declare-fun m!985725 () Bool)

(assert (=> b!1066835 m!985725))

(assert (=> b!1066835 m!985565))

(declare-fun m!985727 () Bool)

(assert (=> b!1066835 m!985727))

(assert (=> b!1066837 m!985565))

(assert (=> b!1066837 m!985565))

(assert (=> b!1066837 m!985573))

(declare-fun m!985729 () Bool)

(assert (=> bm!45086 m!985729))

(assert (=> b!1066636 d!129043))

(declare-fun b!1066845 () Bool)

(declare-fun e!608452 () Bool)

(assert (=> b!1066845 (= e!608452 tp_is_empty!25497)))

(declare-fun mapIsEmpty!39940 () Bool)

(declare-fun mapRes!39940 () Bool)

(assert (=> mapIsEmpty!39940 mapRes!39940))

(declare-fun mapNonEmpty!39940 () Bool)

(declare-fun tp!76512 () Bool)

(assert (=> mapNonEmpty!39940 (= mapRes!39940 (and tp!76512 e!608452))))

(declare-fun mapValue!39940 () ValueCell!12045)

(declare-fun mapRest!39940 () (Array (_ BitVec 32) ValueCell!12045))

(declare-fun mapKey!39940 () (_ BitVec 32))

(assert (=> mapNonEmpty!39940 (= mapRest!39934 (store mapRest!39940 mapKey!39940 mapValue!39940))))

(declare-fun condMapEmpty!39940 () Bool)

(declare-fun mapDefault!39940 () ValueCell!12045)

(assert (=> mapNonEmpty!39934 (= condMapEmpty!39940 (= mapRest!39934 ((as const (Array (_ BitVec 32) ValueCell!12045)) mapDefault!39940)))))

(declare-fun e!608453 () Bool)

(assert (=> mapNonEmpty!39934 (= tp!76503 (and e!608453 mapRes!39940))))

(declare-fun b!1066846 () Bool)

(assert (=> b!1066846 (= e!608453 tp_is_empty!25497)))

(assert (= (and mapNonEmpty!39934 condMapEmpty!39940) mapIsEmpty!39940))

(assert (= (and mapNonEmpty!39934 (not condMapEmpty!39940)) mapNonEmpty!39940))

(assert (= (and mapNonEmpty!39940 ((_ is ValueCellFull!12045) mapValue!39940)) b!1066845))

(assert (= (and mapNonEmpty!39934 ((_ is ValueCellFull!12045) mapDefault!39940)) b!1066846))

(declare-fun m!985731 () Bool)

(assert (=> mapNonEmpty!39940 m!985731))

(declare-fun b_lambda!16603 () Bool)

(assert (= b_lambda!16591 (or (and start!94360 b_free!21687) b_lambda!16603)))

(declare-fun b_lambda!16605 () Bool)

(assert (= b_lambda!16595 (or (and start!94360 b_free!21687) b_lambda!16605)))

(declare-fun b_lambda!16607 () Bool)

(assert (= b_lambda!16597 (or (and start!94360 b_free!21687) b_lambda!16607)))

(declare-fun b_lambda!16609 () Bool)

(assert (= b_lambda!16593 (or (and start!94360 b_free!21687) b_lambda!16609)))

(declare-fun b_lambda!16611 () Bool)

(assert (= b_lambda!16601 (or (and start!94360 b_free!21687) b_lambda!16611)))

(declare-fun b_lambda!16613 () Bool)

(assert (= b_lambda!16599 (or (and start!94360 b_free!21687) b_lambda!16613)))

(check-sat (not bm!45078) (not bm!45052) (not b!1066790) (not d!129035) (not b!1066714) (not b_lambda!16605) (not bm!45076) (not bm!45051) (not b_lambda!16613) (not b!1066795) (not b!1066702) (not b!1066703) (not bm!45055) (not b!1066712) (not b_lambda!16609) (not b_next!21687) (not d!129021) (not bm!45079) (not d!129037) b_and!34491 (not bm!45070) (not b!1066835) (not b!1066732) (not b!1066785) (not d!129041) (not bm!45072) (not mapNonEmpty!39940) (not b!1066706) (not b_lambda!16607) (not b!1066807) (not b!1066704) (not b!1066719) (not b!1066716) (not b_lambda!16611) (not bm!45086) (not b!1066792) (not b!1066741) (not b!1066786) (not b!1066837) (not b!1066742) (not b!1066711) (not b!1066820) (not b_lambda!16603) (not b!1066698) (not d!129017) (not b!1066720) (not d!129039) (not bm!45083) tp_is_empty!25497 (not b!1066794) (not b!1066816) (not b!1066817) (not d!129031) (not b!1066799) (not d!129033) (not d!129019) (not b!1066717) (not b!1066811) (not b!1066815) (not bm!45077) (not b!1066813) (not b!1066718) (not b!1066697) (not b!1066705) (not b!1066796) (not b!1066736) (not b!1066734) (not b!1066806) (not b!1066700) (not bm!45071))
(check-sat b_and!34491 (not b_next!21687))
