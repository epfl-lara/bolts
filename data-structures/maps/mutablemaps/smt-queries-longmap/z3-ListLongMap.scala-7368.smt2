; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93964 () Bool)

(assert start!93964)

(declare-fun b_free!21387 () Bool)

(declare-fun b_next!21387 () Bool)

(assert (=> start!93964 (= b_free!21387 (not b_next!21387))))

(declare-fun tp!75588 () Bool)

(declare-fun b_and!34127 () Bool)

(assert (=> start!93964 (= tp!75588 b_and!34127)))

(declare-fun mapNonEmpty!39469 () Bool)

(declare-fun mapRes!39469 () Bool)

(declare-fun tp!75587 () Bool)

(declare-fun e!605099 () Bool)

(assert (=> mapNonEmpty!39469 (= mapRes!39469 (and tp!75587 e!605099))))

(declare-fun mapKey!39469 () (_ BitVec 32))

(declare-datatypes ((V!38731 0))(
  ( (V!38732 (val!12649 Int)) )
))
(declare-datatypes ((ValueCell!11895 0))(
  ( (ValueCellFull!11895 (v!15260 V!38731)) (EmptyCell!11895) )
))
(declare-fun mapRest!39469 () (Array (_ BitVec 32) ValueCell!11895))

(declare-datatypes ((array!67370 0))(
  ( (array!67371 (arr!32388 (Array (_ BitVec 32) ValueCell!11895)) (size!32925 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67370)

(declare-fun mapValue!39469 () ValueCell!11895)

(assert (=> mapNonEmpty!39469 (= (arr!32388 _values!955) (store mapRest!39469 mapKey!39469 mapValue!39469))))

(declare-fun b!1062251 () Bool)

(declare-fun res!709398 () Bool)

(declare-fun e!605097 () Bool)

(assert (=> b!1062251 (=> (not res!709398) (not e!605097))))

(declare-datatypes ((array!67372 0))(
  ( (array!67373 (arr!32389 (Array (_ BitVec 32) (_ BitVec 64))) (size!32926 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67372)

(declare-datatypes ((List!22699 0))(
  ( (Nil!22696) (Cons!22695 (h!23904 (_ BitVec 64)) (t!32017 List!22699)) )
))
(declare-fun arrayNoDuplicates!0 (array!67372 (_ BitVec 32) List!22699) Bool)

(assert (=> b!1062251 (= res!709398 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22696))))

(declare-fun b!1062252 () Bool)

(declare-fun e!605098 () Bool)

(declare-fun e!605096 () Bool)

(assert (=> b!1062252 (= e!605098 (and e!605096 mapRes!39469))))

(declare-fun condMapEmpty!39469 () Bool)

(declare-fun mapDefault!39469 () ValueCell!11895)

(assert (=> b!1062252 (= condMapEmpty!39469 (= (arr!32388 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11895)) mapDefault!39469)))))

(declare-fun b!1062253 () Bool)

(declare-fun e!605100 () Bool)

(assert (=> b!1062253 (= e!605097 (not e!605100))))

(declare-fun res!709395 () Bool)

(assert (=> b!1062253 (=> res!709395 e!605100)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062253 (= res!709395 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16086 0))(
  ( (tuple2!16087 (_1!8053 (_ BitVec 64)) (_2!8053 V!38731)) )
))
(declare-datatypes ((List!22700 0))(
  ( (Nil!22697) (Cons!22696 (h!23905 tuple2!16086) (t!32018 List!22700)) )
))
(declare-datatypes ((ListLongMap!14067 0))(
  ( (ListLongMap!14068 (toList!7049 List!22700)) )
))
(declare-fun lt!468000 () ListLongMap!14067)

(declare-fun lt!468001 () ListLongMap!14067)

(assert (=> b!1062253 (= lt!468000 lt!468001)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38731)

(declare-datatypes ((Unit!34771 0))(
  ( (Unit!34772) )
))
(declare-fun lt!467999 () Unit!34771)

(declare-fun minValue!907 () V!38731)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38731)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!651 (array!67372 array!67370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38731 V!38731 V!38731 V!38731 (_ BitVec 32) Int) Unit!34771)

(assert (=> b!1062253 (= lt!467999 (lemmaNoChangeToArrayThenSameMapNoExtras!651 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3612 (array!67372 array!67370 (_ BitVec 32) (_ BitVec 32) V!38731 V!38731 (_ BitVec 32) Int) ListLongMap!14067)

(assert (=> b!1062253 (= lt!468001 (getCurrentListMapNoExtraKeys!3612 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062253 (= lt!468000 (getCurrentListMapNoExtraKeys!3612 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062254 () Bool)

(declare-fun tp_is_empty!25197 () Bool)

(assert (=> b!1062254 (= e!605096 tp_is_empty!25197)))

(declare-fun res!709396 () Bool)

(assert (=> start!93964 (=> (not res!709396) (not e!605097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93964 (= res!709396 (validMask!0 mask!1515))))

(assert (=> start!93964 e!605097))

(assert (=> start!93964 true))

(assert (=> start!93964 tp_is_empty!25197))

(declare-fun array_inv!24928 (array!67370) Bool)

(assert (=> start!93964 (and (array_inv!24928 _values!955) e!605098)))

(assert (=> start!93964 tp!75588))

(declare-fun array_inv!24929 (array!67372) Bool)

(assert (=> start!93964 (array_inv!24929 _keys!1163)))

(declare-fun b!1062255 () Bool)

(declare-fun e!605094 () Bool)

(assert (=> b!1062255 (= e!605094 true)))

(declare-fun lt!468003 () ListLongMap!14067)

(declare-fun -!564 (ListLongMap!14067 (_ BitVec 64)) ListLongMap!14067)

(assert (=> b!1062255 (= (-!564 lt!468003 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468003)))

(declare-fun lt!468002 () Unit!34771)

(declare-fun removeNotPresentStillSame!10 (ListLongMap!14067 (_ BitVec 64)) Unit!34771)

(assert (=> b!1062255 (= lt!468002 (removeNotPresentStillSame!10 lt!468003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062256 () Bool)

(declare-fun res!709397 () Bool)

(assert (=> b!1062256 (=> (not res!709397) (not e!605097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67372 (_ BitVec 32)) Bool)

(assert (=> b!1062256 (= res!709397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062257 () Bool)

(assert (=> b!1062257 (= e!605099 tp_is_empty!25197)))

(declare-fun b!1062258 () Bool)

(assert (=> b!1062258 (= e!605100 e!605094)))

(declare-fun res!709394 () Bool)

(assert (=> b!1062258 (=> res!709394 e!605094)))

(declare-fun contains!6245 (ListLongMap!14067 (_ BitVec 64)) Bool)

(assert (=> b!1062258 (= res!709394 (contains!6245 lt!468003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!3995 (array!67372 array!67370 (_ BitVec 32) (_ BitVec 32) V!38731 V!38731 (_ BitVec 32) Int) ListLongMap!14067)

(assert (=> b!1062258 (= lt!468003 (getCurrentListMap!3995 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062259 () Bool)

(declare-fun res!709399 () Bool)

(assert (=> b!1062259 (=> (not res!709399) (not e!605097))))

(assert (=> b!1062259 (= res!709399 (and (= (size!32925 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32926 _keys!1163) (size!32925 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39469 () Bool)

(assert (=> mapIsEmpty!39469 mapRes!39469))

(assert (= (and start!93964 res!709396) b!1062259))

(assert (= (and b!1062259 res!709399) b!1062256))

(assert (= (and b!1062256 res!709397) b!1062251))

(assert (= (and b!1062251 res!709398) b!1062253))

(assert (= (and b!1062253 (not res!709395)) b!1062258))

(assert (= (and b!1062258 (not res!709394)) b!1062255))

(assert (= (and b!1062252 condMapEmpty!39469) mapIsEmpty!39469))

(assert (= (and b!1062252 (not condMapEmpty!39469)) mapNonEmpty!39469))

(get-info :version)

(assert (= (and mapNonEmpty!39469 ((_ is ValueCellFull!11895) mapValue!39469)) b!1062257))

(assert (= (and b!1062252 ((_ is ValueCellFull!11895) mapDefault!39469)) b!1062254))

(assert (= start!93964 b!1062252))

(declare-fun m!981145 () Bool)

(assert (=> b!1062255 m!981145))

(declare-fun m!981147 () Bool)

(assert (=> b!1062255 m!981147))

(declare-fun m!981149 () Bool)

(assert (=> b!1062253 m!981149))

(declare-fun m!981151 () Bool)

(assert (=> b!1062253 m!981151))

(declare-fun m!981153 () Bool)

(assert (=> b!1062253 m!981153))

(declare-fun m!981155 () Bool)

(assert (=> b!1062258 m!981155))

(declare-fun m!981157 () Bool)

(assert (=> b!1062258 m!981157))

(declare-fun m!981159 () Bool)

(assert (=> start!93964 m!981159))

(declare-fun m!981161 () Bool)

(assert (=> start!93964 m!981161))

(declare-fun m!981163 () Bool)

(assert (=> start!93964 m!981163))

(declare-fun m!981165 () Bool)

(assert (=> b!1062256 m!981165))

(declare-fun m!981167 () Bool)

(assert (=> mapNonEmpty!39469 m!981167))

(declare-fun m!981169 () Bool)

(assert (=> b!1062251 m!981169))

(check-sat (not b!1062251) (not b_next!21387) (not mapNonEmpty!39469) (not b!1062258) (not b!1062256) (not start!93964) (not b!1062253) b_and!34127 (not b!1062255) tp_is_empty!25197)
(check-sat b_and!34127 (not b_next!21387))
