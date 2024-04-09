; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104712 () Bool)

(assert start!104712)

(declare-fun b_free!26493 () Bool)

(declare-fun b_next!26493 () Bool)

(assert (=> start!104712 (= b_free!26493 (not b_next!26493))))

(declare-fun tp!92967 () Bool)

(declare-fun b_and!44267 () Bool)

(assert (=> start!104712 (= tp!92967 b_and!44267)))

(declare-fun b!1247895 () Bool)

(declare-fun e!708084 () Bool)

(declare-fun tp_is_empty!31395 () Bool)

(assert (=> b!1247895 (= e!708084 tp_is_empty!31395)))

(declare-fun b!1247896 () Bool)

(declare-fun e!708082 () Bool)

(declare-fun mapRes!48850 () Bool)

(assert (=> b!1247896 (= e!708082 (and e!708084 mapRes!48850))))

(declare-fun condMapEmpty!48850 () Bool)

(declare-datatypes ((V!47225 0))(
  ( (V!47226 (val!15760 Int)) )
))
(declare-datatypes ((ValueCell!14934 0))(
  ( (ValueCellFull!14934 (v!18456 V!47225)) (EmptyCell!14934) )
))
(declare-datatypes ((array!80459 0))(
  ( (array!80460 (arr!38793 (Array (_ BitVec 32) ValueCell!14934)) (size!39330 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80459)

(declare-fun mapDefault!48850 () ValueCell!14934)

(assert (=> b!1247896 (= condMapEmpty!48850 (= (arr!38793 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14934)) mapDefault!48850)))))

(declare-fun mapNonEmpty!48850 () Bool)

(declare-fun tp!92966 () Bool)

(declare-fun e!708083 () Bool)

(assert (=> mapNonEmpty!48850 (= mapRes!48850 (and tp!92966 e!708083))))

(declare-fun mapValue!48850 () ValueCell!14934)

(declare-fun mapKey!48850 () (_ BitVec 32))

(declare-fun mapRest!48850 () (Array (_ BitVec 32) ValueCell!14934))

(assert (=> mapNonEmpty!48850 (= (arr!38793 _values!914) (store mapRest!48850 mapKey!48850 mapValue!48850))))

(declare-fun mapIsEmpty!48850 () Bool)

(assert (=> mapIsEmpty!48850 mapRes!48850))

(declare-fun b!1247897 () Bool)

(declare-fun e!708081 () Bool)

(assert (=> b!1247897 (= e!708081 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20454 0))(
  ( (tuple2!20455 (_1!10237 (_ BitVec 64)) (_2!10237 V!47225)) )
))
(declare-datatypes ((List!27711 0))(
  ( (Nil!27708) (Cons!27707 (h!28916 tuple2!20454) (t!41187 List!27711)) )
))
(declare-datatypes ((ListLongMap!18339 0))(
  ( (ListLongMap!18340 (toList!9185 List!27711)) )
))
(declare-fun lt!563280 () ListLongMap!18339)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47225)

(declare-datatypes ((array!80461 0))(
  ( (array!80462 (arr!38794 (Array (_ BitVec 32) (_ BitVec 64))) (size!39331 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80461)

(declare-fun minValueBefore!43 () V!47225)

(declare-fun getCurrentListMapNoExtraKeys!5568 (array!80461 array!80459 (_ BitVec 32) (_ BitVec 32) V!47225 V!47225 (_ BitVec 32) Int) ListLongMap!18339)

(assert (=> b!1247897 (= lt!563280 (getCurrentListMapNoExtraKeys!5568 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247899 () Bool)

(declare-fun res!832677 () Bool)

(assert (=> b!1247899 (=> (not res!832677) (not e!708081))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247899 (= res!832677 (and (= (size!39330 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39331 _keys!1118) (size!39330 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247898 () Bool)

(declare-fun res!832675 () Bool)

(assert (=> b!1247898 (=> (not res!832675) (not e!708081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80461 (_ BitVec 32)) Bool)

(assert (=> b!1247898 (= res!832675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!832676 () Bool)

(assert (=> start!104712 (=> (not res!832676) (not e!708081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104712 (= res!832676 (validMask!0 mask!1466))))

(assert (=> start!104712 e!708081))

(assert (=> start!104712 true))

(assert (=> start!104712 tp!92967))

(assert (=> start!104712 tp_is_empty!31395))

(declare-fun array_inv!29539 (array!80461) Bool)

(assert (=> start!104712 (array_inv!29539 _keys!1118)))

(declare-fun array_inv!29540 (array!80459) Bool)

(assert (=> start!104712 (and (array_inv!29540 _values!914) e!708082)))

(declare-fun b!1247900 () Bool)

(assert (=> b!1247900 (= e!708083 tp_is_empty!31395)))

(declare-fun b!1247901 () Bool)

(declare-fun res!832674 () Bool)

(assert (=> b!1247901 (=> (not res!832674) (not e!708081))))

(declare-datatypes ((List!27712 0))(
  ( (Nil!27709) (Cons!27708 (h!28917 (_ BitVec 64)) (t!41188 List!27712)) )
))
(declare-fun arrayNoDuplicates!0 (array!80461 (_ BitVec 32) List!27712) Bool)

(assert (=> b!1247901 (= res!832674 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27709))))

(assert (= (and start!104712 res!832676) b!1247899))

(assert (= (and b!1247899 res!832677) b!1247898))

(assert (= (and b!1247898 res!832675) b!1247901))

(assert (= (and b!1247901 res!832674) b!1247897))

(assert (= (and b!1247896 condMapEmpty!48850) mapIsEmpty!48850))

(assert (= (and b!1247896 (not condMapEmpty!48850)) mapNonEmpty!48850))

(get-info :version)

(assert (= (and mapNonEmpty!48850 ((_ is ValueCellFull!14934) mapValue!48850)) b!1247900))

(assert (= (and b!1247896 ((_ is ValueCellFull!14934) mapDefault!48850)) b!1247895))

(assert (= start!104712 b!1247896))

(declare-fun m!1149251 () Bool)

(assert (=> mapNonEmpty!48850 m!1149251))

(declare-fun m!1149253 () Bool)

(assert (=> b!1247897 m!1149253))

(declare-fun m!1149255 () Bool)

(assert (=> b!1247901 m!1149255))

(declare-fun m!1149257 () Bool)

(assert (=> b!1247898 m!1149257))

(declare-fun m!1149259 () Bool)

(assert (=> start!104712 m!1149259))

(declare-fun m!1149261 () Bool)

(assert (=> start!104712 m!1149261))

(declare-fun m!1149263 () Bool)

(assert (=> start!104712 m!1149263))

(check-sat (not mapNonEmpty!48850) tp_is_empty!31395 (not b!1247897) (not b_next!26493) (not start!104712) b_and!44267 (not b!1247898) (not b!1247901))
(check-sat b_and!44267 (not b_next!26493))
