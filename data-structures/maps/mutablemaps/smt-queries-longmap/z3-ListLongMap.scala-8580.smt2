; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104736 () Bool)

(assert start!104736)

(declare-fun b_free!26517 () Bool)

(declare-fun b_next!26517 () Bool)

(assert (=> start!104736 (= b_free!26517 (not b_next!26517))))

(declare-fun tp!93038 () Bool)

(declare-fun b_and!44291 () Bool)

(assert (=> start!104736 (= tp!93038 b_and!44291)))

(declare-fun b!1248147 () Bool)

(declare-fun res!832819 () Bool)

(declare-fun e!708261 () Bool)

(assert (=> b!1248147 (=> (not res!832819) (not e!708261))))

(declare-datatypes ((array!80505 0))(
  ( (array!80506 (arr!38816 (Array (_ BitVec 32) (_ BitVec 64))) (size!39353 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80505)

(declare-datatypes ((List!27728 0))(
  ( (Nil!27725) (Cons!27724 (h!28933 (_ BitVec 64)) (t!41204 List!27728)) )
))
(declare-fun arrayNoDuplicates!0 (array!80505 (_ BitVec 32) List!27728) Bool)

(assert (=> b!1248147 (= res!832819 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27725))))

(declare-fun b!1248148 () Bool)

(declare-fun e!708260 () Bool)

(declare-fun e!708263 () Bool)

(declare-fun mapRes!48886 () Bool)

(assert (=> b!1248148 (= e!708260 (and e!708263 mapRes!48886))))

(declare-fun condMapEmpty!48886 () Bool)

(declare-datatypes ((V!47257 0))(
  ( (V!47258 (val!15772 Int)) )
))
(declare-datatypes ((ValueCell!14946 0))(
  ( (ValueCellFull!14946 (v!18468 V!47257)) (EmptyCell!14946) )
))
(declare-datatypes ((array!80507 0))(
  ( (array!80508 (arr!38817 (Array (_ BitVec 32) ValueCell!14946)) (size!39354 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80507)

(declare-fun mapDefault!48886 () ValueCell!14946)

(assert (=> b!1248148 (= condMapEmpty!48886 (= (arr!38817 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14946)) mapDefault!48886)))))

(declare-fun b!1248149 () Bool)

(assert (=> b!1248149 (= e!708261 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47257)

(declare-fun minValueBefore!43 () V!47257)

(declare-datatypes ((tuple2!20472 0))(
  ( (tuple2!20473 (_1!10246 (_ BitVec 64)) (_2!10246 V!47257)) )
))
(declare-datatypes ((List!27729 0))(
  ( (Nil!27726) (Cons!27725 (h!28934 tuple2!20472) (t!41205 List!27729)) )
))
(declare-datatypes ((ListLongMap!18357 0))(
  ( (ListLongMap!18358 (toList!9194 List!27729)) )
))
(declare-fun lt!563316 () ListLongMap!18357)

(declare-fun getCurrentListMapNoExtraKeys!5577 (array!80505 array!80507 (_ BitVec 32) (_ BitVec 32) V!47257 V!47257 (_ BitVec 32) Int) ListLongMap!18357)

(assert (=> b!1248149 (= lt!563316 (getCurrentListMapNoExtraKeys!5577 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248150 () Bool)

(declare-fun res!832820 () Bool)

(assert (=> b!1248150 (=> (not res!832820) (not e!708261))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248150 (= res!832820 (and (= (size!39354 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39353 _keys!1118) (size!39354 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48886 () Bool)

(declare-fun tp!93039 () Bool)

(declare-fun e!708262 () Bool)

(assert (=> mapNonEmpty!48886 (= mapRes!48886 (and tp!93039 e!708262))))

(declare-fun mapKey!48886 () (_ BitVec 32))

(declare-fun mapValue!48886 () ValueCell!14946)

(declare-fun mapRest!48886 () (Array (_ BitVec 32) ValueCell!14946))

(assert (=> mapNonEmpty!48886 (= (arr!38817 _values!914) (store mapRest!48886 mapKey!48886 mapValue!48886))))

(declare-fun b!1248151 () Bool)

(declare-fun tp_is_empty!31419 () Bool)

(assert (=> b!1248151 (= e!708263 tp_is_empty!31419)))

(declare-fun b!1248152 () Bool)

(declare-fun res!832821 () Bool)

(assert (=> b!1248152 (=> (not res!832821) (not e!708261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80505 (_ BitVec 32)) Bool)

(assert (=> b!1248152 (= res!832821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48886 () Bool)

(assert (=> mapIsEmpty!48886 mapRes!48886))

(declare-fun b!1248153 () Bool)

(assert (=> b!1248153 (= e!708262 tp_is_empty!31419)))

(declare-fun res!832818 () Bool)

(assert (=> start!104736 (=> (not res!832818) (not e!708261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104736 (= res!832818 (validMask!0 mask!1466))))

(assert (=> start!104736 e!708261))

(assert (=> start!104736 true))

(assert (=> start!104736 tp!93038))

(assert (=> start!104736 tp_is_empty!31419))

(declare-fun array_inv!29555 (array!80505) Bool)

(assert (=> start!104736 (array_inv!29555 _keys!1118)))

(declare-fun array_inv!29556 (array!80507) Bool)

(assert (=> start!104736 (and (array_inv!29556 _values!914) e!708260)))

(assert (= (and start!104736 res!832818) b!1248150))

(assert (= (and b!1248150 res!832820) b!1248152))

(assert (= (and b!1248152 res!832821) b!1248147))

(assert (= (and b!1248147 res!832819) b!1248149))

(assert (= (and b!1248148 condMapEmpty!48886) mapIsEmpty!48886))

(assert (= (and b!1248148 (not condMapEmpty!48886)) mapNonEmpty!48886))

(get-info :version)

(assert (= (and mapNonEmpty!48886 ((_ is ValueCellFull!14946) mapValue!48886)) b!1248153))

(assert (= (and b!1248148 ((_ is ValueCellFull!14946) mapDefault!48886)) b!1248151))

(assert (= start!104736 b!1248148))

(declare-fun m!1149419 () Bool)

(assert (=> b!1248149 m!1149419))

(declare-fun m!1149421 () Bool)

(assert (=> b!1248152 m!1149421))

(declare-fun m!1149423 () Bool)

(assert (=> mapNonEmpty!48886 m!1149423))

(declare-fun m!1149425 () Bool)

(assert (=> start!104736 m!1149425))

(declare-fun m!1149427 () Bool)

(assert (=> start!104736 m!1149427))

(declare-fun m!1149429 () Bool)

(assert (=> start!104736 m!1149429))

(declare-fun m!1149431 () Bool)

(assert (=> b!1248147 m!1149431))

(check-sat (not b!1248147) tp_is_empty!31419 (not start!104736) (not b_next!26517) (not mapNonEmpty!48886) b_and!44291 (not b!1248152) (not b!1248149))
(check-sat b_and!44291 (not b_next!26517))
