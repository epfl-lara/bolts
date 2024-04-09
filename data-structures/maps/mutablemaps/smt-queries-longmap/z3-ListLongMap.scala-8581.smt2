; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104742 () Bool)

(assert start!104742)

(declare-fun b_free!26523 () Bool)

(declare-fun b_next!26523 () Bool)

(assert (=> start!104742 (= b_free!26523 (not b_next!26523))))

(declare-fun tp!93057 () Bool)

(declare-fun b_and!44297 () Bool)

(assert (=> start!104742 (= tp!93057 b_and!44297)))

(declare-fun b!1248211 () Bool)

(declare-fun res!832857 () Bool)

(declare-fun e!708306 () Bool)

(assert (=> b!1248211 (=> (not res!832857) (not e!708306))))

(declare-datatypes ((array!80517 0))(
  ( (array!80518 (arr!38822 (Array (_ BitVec 32) (_ BitVec 64))) (size!39359 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80517)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80517 (_ BitVec 32)) Bool)

(assert (=> b!1248211 (= res!832857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248212 () Bool)

(declare-fun e!708305 () Bool)

(declare-fun tp_is_empty!31425 () Bool)

(assert (=> b!1248212 (= e!708305 tp_is_empty!31425)))

(declare-fun b!1248213 () Bool)

(declare-fun res!832855 () Bool)

(assert (=> b!1248213 (=> (not res!832855) (not e!708306))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47265 0))(
  ( (V!47266 (val!15775 Int)) )
))
(declare-datatypes ((ValueCell!14949 0))(
  ( (ValueCellFull!14949 (v!18471 V!47265)) (EmptyCell!14949) )
))
(declare-datatypes ((array!80519 0))(
  ( (array!80520 (arr!38823 (Array (_ BitVec 32) ValueCell!14949)) (size!39360 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80519)

(assert (=> b!1248213 (= res!832855 (and (= (size!39360 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39359 _keys!1118) (size!39360 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248214 () Bool)

(declare-fun res!832854 () Bool)

(assert (=> b!1248214 (=> (not res!832854) (not e!708306))))

(declare-datatypes ((List!27733 0))(
  ( (Nil!27730) (Cons!27729 (h!28938 (_ BitVec 64)) (t!41209 List!27733)) )
))
(declare-fun arrayNoDuplicates!0 (array!80517 (_ BitVec 32) List!27733) Bool)

(assert (=> b!1248214 (= res!832854 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27730))))

(declare-fun b!1248215 () Bool)

(declare-fun e!708307 () Bool)

(assert (=> b!1248215 (= e!708307 tp_is_empty!31425)))

(declare-fun b!1248216 () Bool)

(declare-fun e!708309 () Bool)

(declare-fun mapRes!48895 () Bool)

(assert (=> b!1248216 (= e!708309 (and e!708307 mapRes!48895))))

(declare-fun condMapEmpty!48895 () Bool)

(declare-fun mapDefault!48895 () ValueCell!14949)

(assert (=> b!1248216 (= condMapEmpty!48895 (= (arr!38823 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14949)) mapDefault!48895)))))

(declare-fun mapNonEmpty!48895 () Bool)

(declare-fun tp!93056 () Bool)

(assert (=> mapNonEmpty!48895 (= mapRes!48895 (and tp!93056 e!708305))))

(declare-fun mapRest!48895 () (Array (_ BitVec 32) ValueCell!14949))

(declare-fun mapValue!48895 () ValueCell!14949)

(declare-fun mapKey!48895 () (_ BitVec 32))

(assert (=> mapNonEmpty!48895 (= (arr!38823 _values!914) (store mapRest!48895 mapKey!48895 mapValue!48895))))

(declare-fun mapIsEmpty!48895 () Bool)

(assert (=> mapIsEmpty!48895 mapRes!48895))

(declare-fun res!832856 () Bool)

(assert (=> start!104742 (=> (not res!832856) (not e!708306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104742 (= res!832856 (validMask!0 mask!1466))))

(assert (=> start!104742 e!708306))

(assert (=> start!104742 true))

(assert (=> start!104742 tp!93057))

(assert (=> start!104742 tp_is_empty!31425))

(declare-fun array_inv!29559 (array!80517) Bool)

(assert (=> start!104742 (array_inv!29559 _keys!1118)))

(declare-fun array_inv!29560 (array!80519) Bool)

(assert (=> start!104742 (and (array_inv!29560 _values!914) e!708309)))

(declare-fun b!1248210 () Bool)

(assert (=> b!1248210 (= e!708306 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20476 0))(
  ( (tuple2!20477 (_1!10248 (_ BitVec 64)) (_2!10248 V!47265)) )
))
(declare-datatypes ((List!27734 0))(
  ( (Nil!27731) (Cons!27730 (h!28939 tuple2!20476) (t!41210 List!27734)) )
))
(declare-datatypes ((ListLongMap!18361 0))(
  ( (ListLongMap!18362 (toList!9196 List!27734)) )
))
(declare-fun lt!563325 () ListLongMap!18361)

(declare-fun zeroValue!871 () V!47265)

(declare-fun minValueBefore!43 () V!47265)

(declare-fun getCurrentListMapNoExtraKeys!5579 (array!80517 array!80519 (_ BitVec 32) (_ BitVec 32) V!47265 V!47265 (_ BitVec 32) Int) ListLongMap!18361)

(assert (=> b!1248210 (= lt!563325 (getCurrentListMapNoExtraKeys!5579 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104742 res!832856) b!1248213))

(assert (= (and b!1248213 res!832855) b!1248211))

(assert (= (and b!1248211 res!832857) b!1248214))

(assert (= (and b!1248214 res!832854) b!1248210))

(assert (= (and b!1248216 condMapEmpty!48895) mapIsEmpty!48895))

(assert (= (and b!1248216 (not condMapEmpty!48895)) mapNonEmpty!48895))

(get-info :version)

(assert (= (and mapNonEmpty!48895 ((_ is ValueCellFull!14949) mapValue!48895)) b!1248212))

(assert (= (and b!1248216 ((_ is ValueCellFull!14949) mapDefault!48895)) b!1248215))

(assert (= start!104742 b!1248216))

(declare-fun m!1149461 () Bool)

(assert (=> b!1248211 m!1149461))

(declare-fun m!1149463 () Bool)

(assert (=> b!1248210 m!1149463))

(declare-fun m!1149465 () Bool)

(assert (=> mapNonEmpty!48895 m!1149465))

(declare-fun m!1149467 () Bool)

(assert (=> b!1248214 m!1149467))

(declare-fun m!1149469 () Bool)

(assert (=> start!104742 m!1149469))

(declare-fun m!1149471 () Bool)

(assert (=> start!104742 m!1149471))

(declare-fun m!1149473 () Bool)

(assert (=> start!104742 m!1149473))

(check-sat tp_is_empty!31425 (not b!1248210) (not b_next!26523) (not start!104742) b_and!44297 (not b!1248211) (not b!1248214) (not mapNonEmpty!48895))
(check-sat b_and!44297 (not b_next!26523))
