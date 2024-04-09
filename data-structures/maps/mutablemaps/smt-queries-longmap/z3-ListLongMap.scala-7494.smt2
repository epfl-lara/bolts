; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94974 () Bool)

(assert start!94974)

(declare-fun b_free!22143 () Bool)

(declare-fun b_next!22143 () Bool)

(assert (=> start!94974 (= b_free!22143 (not b_next!22143))))

(declare-fun tp!77894 () Bool)

(declare-fun b_and!35015 () Bool)

(assert (=> start!94974 (= tp!77894 b_and!35015)))

(declare-fun b!1073397 () Bool)

(declare-fun e!613278 () Bool)

(declare-fun e!613281 () Bool)

(declare-fun mapRes!40642 () Bool)

(assert (=> b!1073397 (= e!613278 (and e!613281 mapRes!40642))))

(declare-fun condMapEmpty!40642 () Bool)

(declare-datatypes ((V!39739 0))(
  ( (V!39740 (val!13027 Int)) )
))
(declare-datatypes ((ValueCell!12273 0))(
  ( (ValueCellFull!12273 (v!15646 V!39739)) (EmptyCell!12273) )
))
(declare-datatypes ((array!68832 0))(
  ( (array!68833 (arr!33106 (Array (_ BitVec 32) ValueCell!12273)) (size!33643 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68832)

(declare-fun mapDefault!40642 () ValueCell!12273)

(assert (=> b!1073397 (= condMapEmpty!40642 (= (arr!33106 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12273)) mapDefault!40642)))))

(declare-fun b!1073398 () Bool)

(declare-fun tp_is_empty!25953 () Bool)

(assert (=> b!1073398 (= e!613281 tp_is_empty!25953)))

(declare-fun b!1073399 () Bool)

(declare-fun e!613280 () Bool)

(assert (=> b!1073399 (= e!613280 tp_is_empty!25953)))

(declare-fun mapIsEmpty!40642 () Bool)

(assert (=> mapIsEmpty!40642 mapRes!40642))

(declare-fun b!1073400 () Bool)

(declare-fun e!613282 () Bool)

(assert (=> b!1073400 (= e!613282 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((tuple2!16658 0))(
  ( (tuple2!16659 (_1!8339 (_ BitVec 64)) (_2!8339 V!39739)) )
))
(declare-datatypes ((List!23235 0))(
  ( (Nil!23232) (Cons!23231 (h!24440 tuple2!16658) (t!32579 List!23235)) )
))
(declare-datatypes ((ListLongMap!14639 0))(
  ( (ListLongMap!14640 (toList!7335 List!23235)) )
))
(declare-fun lt!476027 () ListLongMap!14639)

(declare-fun minValue!907 () V!39739)

(declare-datatypes ((array!68834 0))(
  ( (array!68835 (arr!33107 (Array (_ BitVec 32) (_ BitVec 64))) (size!33644 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68834)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39739)

(declare-fun getCurrentListMapNoExtraKeys!3865 (array!68834 array!68832 (_ BitVec 32) (_ BitVec 32) V!39739 V!39739 (_ BitVec 32) Int) ListLongMap!14639)

(assert (=> b!1073400 (= lt!476027 (getCurrentListMapNoExtraKeys!3865 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39739)

(declare-fun lt!476026 () ListLongMap!14639)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073400 (= lt!476026 (getCurrentListMapNoExtraKeys!3865 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!716006 () Bool)

(assert (=> start!94974 (=> (not res!716006) (not e!613282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94974 (= res!716006 (validMask!0 mask!1515))))

(assert (=> start!94974 e!613282))

(assert (=> start!94974 true))

(assert (=> start!94974 tp_is_empty!25953))

(declare-fun array_inv!25444 (array!68832) Bool)

(assert (=> start!94974 (and (array_inv!25444 _values!955) e!613278)))

(assert (=> start!94974 tp!77894))

(declare-fun array_inv!25445 (array!68834) Bool)

(assert (=> start!94974 (array_inv!25445 _keys!1163)))

(declare-fun b!1073401 () Bool)

(declare-fun res!716004 () Bool)

(assert (=> b!1073401 (=> (not res!716004) (not e!613282))))

(assert (=> b!1073401 (= res!716004 (and (= (size!33643 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33644 _keys!1163) (size!33643 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073402 () Bool)

(declare-fun res!716007 () Bool)

(assert (=> b!1073402 (=> (not res!716007) (not e!613282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68834 (_ BitVec 32)) Bool)

(assert (=> b!1073402 (= res!716007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073403 () Bool)

(declare-fun res!716005 () Bool)

(assert (=> b!1073403 (=> (not res!716005) (not e!613282))))

(declare-datatypes ((List!23236 0))(
  ( (Nil!23233) (Cons!23232 (h!24441 (_ BitVec 64)) (t!32580 List!23236)) )
))
(declare-fun arrayNoDuplicates!0 (array!68834 (_ BitVec 32) List!23236) Bool)

(assert (=> b!1073403 (= res!716005 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23233))))

(declare-fun mapNonEmpty!40642 () Bool)

(declare-fun tp!77895 () Bool)

(assert (=> mapNonEmpty!40642 (= mapRes!40642 (and tp!77895 e!613280))))

(declare-fun mapValue!40642 () ValueCell!12273)

(declare-fun mapRest!40642 () (Array (_ BitVec 32) ValueCell!12273))

(declare-fun mapKey!40642 () (_ BitVec 32))

(assert (=> mapNonEmpty!40642 (= (arr!33106 _values!955) (store mapRest!40642 mapKey!40642 mapValue!40642))))

(assert (= (and start!94974 res!716006) b!1073401))

(assert (= (and b!1073401 res!716004) b!1073402))

(assert (= (and b!1073402 res!716007) b!1073403))

(assert (= (and b!1073403 res!716005) b!1073400))

(assert (= (and b!1073397 condMapEmpty!40642) mapIsEmpty!40642))

(assert (= (and b!1073397 (not condMapEmpty!40642)) mapNonEmpty!40642))

(get-info :version)

(assert (= (and mapNonEmpty!40642 ((_ is ValueCellFull!12273) mapValue!40642)) b!1073399))

(assert (= (and b!1073397 ((_ is ValueCellFull!12273) mapDefault!40642)) b!1073398))

(assert (= start!94974 b!1073397))

(declare-fun m!992517 () Bool)

(assert (=> mapNonEmpty!40642 m!992517))

(declare-fun m!992519 () Bool)

(assert (=> b!1073400 m!992519))

(declare-fun m!992521 () Bool)

(assert (=> b!1073400 m!992521))

(declare-fun m!992523 () Bool)

(assert (=> b!1073402 m!992523))

(declare-fun m!992525 () Bool)

(assert (=> start!94974 m!992525))

(declare-fun m!992527 () Bool)

(assert (=> start!94974 m!992527))

(declare-fun m!992529 () Bool)

(assert (=> start!94974 m!992529))

(declare-fun m!992531 () Bool)

(assert (=> b!1073403 m!992531))

(check-sat (not b!1073402) tp_is_empty!25953 (not b_next!22143) (not mapNonEmpty!40642) (not b!1073403) (not start!94974) (not b!1073400) b_and!35015)
(check-sat b_and!35015 (not b_next!22143))
