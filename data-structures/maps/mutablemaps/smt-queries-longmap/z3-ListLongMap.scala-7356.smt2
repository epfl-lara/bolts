; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93878 () Bool)

(assert start!93878)

(declare-fun b_free!21315 () Bool)

(declare-fun b_next!21315 () Bool)

(assert (=> start!93878 (= b_free!21315 (not b_next!21315))))

(declare-fun tp!75369 () Bool)

(declare-fun b_and!34047 () Bool)

(assert (=> start!93878 (= tp!75369 b_and!34047)))

(declare-fun mapNonEmpty!39358 () Bool)

(declare-fun mapRes!39358 () Bool)

(declare-fun tp!75368 () Bool)

(declare-fun e!604411 () Bool)

(assert (=> mapNonEmpty!39358 (= mapRes!39358 (and tp!75368 e!604411))))

(declare-datatypes ((V!38635 0))(
  ( (V!38636 (val!12613 Int)) )
))
(declare-datatypes ((ValueCell!11859 0))(
  ( (ValueCellFull!11859 (v!15224 V!38635)) (EmptyCell!11859) )
))
(declare-fun mapValue!39358 () ValueCell!11859)

(declare-fun mapKey!39358 () (_ BitVec 32))

(declare-datatypes ((array!67234 0))(
  ( (array!67235 (arr!32321 (Array (_ BitVec 32) ValueCell!11859)) (size!32858 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67234)

(declare-fun mapRest!39358 () (Array (_ BitVec 32) ValueCell!11859))

(assert (=> mapNonEmpty!39358 (= (arr!32321 _values!955) (store mapRest!39358 mapKey!39358 mapValue!39358))))

(declare-fun b!1061319 () Bool)

(declare-fun e!604409 () Bool)

(declare-fun tp_is_empty!25125 () Bool)

(assert (=> b!1061319 (= e!604409 tp_is_empty!25125)))

(declare-fun b!1061320 () Bool)

(declare-fun res!708841 () Bool)

(declare-fun e!604412 () Bool)

(assert (=> b!1061320 (=> (not res!708841) (not e!604412))))

(declare-datatypes ((array!67236 0))(
  ( (array!67237 (arr!32322 (Array (_ BitVec 32) (_ BitVec 64))) (size!32859 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67236)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67236 (_ BitVec 32)) Bool)

(assert (=> b!1061320 (= res!708841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061321 () Bool)

(declare-fun res!708842 () Bool)

(assert (=> b!1061321 (=> (not res!708842) (not e!604412))))

(declare-datatypes ((List!22648 0))(
  ( (Nil!22645) (Cons!22644 (h!23853 (_ BitVec 64)) (t!31964 List!22648)) )
))
(declare-fun arrayNoDuplicates!0 (array!67236 (_ BitVec 32) List!22648) Bool)

(assert (=> b!1061321 (= res!708842 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22645))))

(declare-fun b!1061322 () Bool)

(assert (=> b!1061322 (= e!604411 tp_is_empty!25125)))

(declare-fun b!1061323 () Bool)

(assert (=> b!1061323 (= e!604412 (not true))))

(declare-datatypes ((tuple2!16036 0))(
  ( (tuple2!16037 (_1!8028 (_ BitVec 64)) (_2!8028 V!38635)) )
))
(declare-datatypes ((List!22649 0))(
  ( (Nil!22646) (Cons!22645 (h!23854 tuple2!16036) (t!31965 List!22649)) )
))
(declare-datatypes ((ListLongMap!14017 0))(
  ( (ListLongMap!14018 (toList!7024 List!22649)) )
))
(declare-fun lt!467545 () ListLongMap!14017)

(declare-fun lt!467544 () ListLongMap!14017)

(assert (=> b!1061323 (= lt!467545 lt!467544)))

(declare-fun zeroValueBefore!47 () V!38635)

(declare-datatypes ((Unit!34723 0))(
  ( (Unit!34724) )
))
(declare-fun lt!467546 () Unit!34723)

(declare-fun minValue!907 () V!38635)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38635)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!627 (array!67236 array!67234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38635 V!38635 V!38635 V!38635 (_ BitVec 32) Int) Unit!34723)

(assert (=> b!1061323 (= lt!467546 (lemmaNoChangeToArrayThenSameMapNoExtras!627 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3588 (array!67236 array!67234 (_ BitVec 32) (_ BitVec 32) V!38635 V!38635 (_ BitVec 32) Int) ListLongMap!14017)

(assert (=> b!1061323 (= lt!467544 (getCurrentListMapNoExtraKeys!3588 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061323 (= lt!467545 (getCurrentListMapNoExtraKeys!3588 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39358 () Bool)

(assert (=> mapIsEmpty!39358 mapRes!39358))

(declare-fun b!1061325 () Bool)

(declare-fun res!708840 () Bool)

(assert (=> b!1061325 (=> (not res!708840) (not e!604412))))

(assert (=> b!1061325 (= res!708840 (and (= (size!32858 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32859 _keys!1163) (size!32858 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708843 () Bool)

(assert (=> start!93878 (=> (not res!708843) (not e!604412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93878 (= res!708843 (validMask!0 mask!1515))))

(assert (=> start!93878 e!604412))

(assert (=> start!93878 true))

(assert (=> start!93878 tp_is_empty!25125))

(declare-fun e!604408 () Bool)

(declare-fun array_inv!24884 (array!67234) Bool)

(assert (=> start!93878 (and (array_inv!24884 _values!955) e!604408)))

(assert (=> start!93878 tp!75369))

(declare-fun array_inv!24885 (array!67236) Bool)

(assert (=> start!93878 (array_inv!24885 _keys!1163)))

(declare-fun b!1061324 () Bool)

(assert (=> b!1061324 (= e!604408 (and e!604409 mapRes!39358))))

(declare-fun condMapEmpty!39358 () Bool)

(declare-fun mapDefault!39358 () ValueCell!11859)

(assert (=> b!1061324 (= condMapEmpty!39358 (= (arr!32321 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11859)) mapDefault!39358)))))

(assert (= (and start!93878 res!708843) b!1061325))

(assert (= (and b!1061325 res!708840) b!1061320))

(assert (= (and b!1061320 res!708841) b!1061321))

(assert (= (and b!1061321 res!708842) b!1061323))

(assert (= (and b!1061324 condMapEmpty!39358) mapIsEmpty!39358))

(assert (= (and b!1061324 (not condMapEmpty!39358)) mapNonEmpty!39358))

(get-info :version)

(assert (= (and mapNonEmpty!39358 ((_ is ValueCellFull!11859) mapValue!39358)) b!1061322))

(assert (= (and b!1061324 ((_ is ValueCellFull!11859) mapDefault!39358)) b!1061319))

(assert (= start!93878 b!1061324))

(declare-fun m!980315 () Bool)

(assert (=> b!1061323 m!980315))

(declare-fun m!980317 () Bool)

(assert (=> b!1061323 m!980317))

(declare-fun m!980319 () Bool)

(assert (=> b!1061323 m!980319))

(declare-fun m!980321 () Bool)

(assert (=> b!1061321 m!980321))

(declare-fun m!980323 () Bool)

(assert (=> b!1061320 m!980323))

(declare-fun m!980325 () Bool)

(assert (=> mapNonEmpty!39358 m!980325))

(declare-fun m!980327 () Bool)

(assert (=> start!93878 m!980327))

(declare-fun m!980329 () Bool)

(assert (=> start!93878 m!980329))

(declare-fun m!980331 () Bool)

(assert (=> start!93878 m!980331))

(check-sat (not b!1061323) (not b!1061321) b_and!34047 (not start!93878) (not mapNonEmpty!39358) (not b!1061320) (not b_next!21315) tp_is_empty!25125)
(check-sat b_and!34047 (not b_next!21315))
