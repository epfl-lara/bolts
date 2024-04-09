; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104730 () Bool)

(assert start!104730)

(declare-fun b_free!26511 () Bool)

(declare-fun b_next!26511 () Bool)

(assert (=> start!104730 (= b_free!26511 (not b_next!26511))))

(declare-fun tp!93020 () Bool)

(declare-fun b_and!44285 () Bool)

(assert (=> start!104730 (= tp!93020 b_and!44285)))

(declare-fun b!1248084 () Bool)

(declare-fun e!708217 () Bool)

(declare-fun tp_is_empty!31413 () Bool)

(assert (=> b!1248084 (= e!708217 tp_is_empty!31413)))

(declare-fun b!1248085 () Bool)

(declare-fun e!708216 () Bool)

(assert (=> b!1248085 (= e!708216 tp_is_empty!31413)))

(declare-fun b!1248086 () Bool)

(declare-fun res!832785 () Bool)

(declare-fun e!708218 () Bool)

(assert (=> b!1248086 (=> (not res!832785) (not e!708218))))

(declare-datatypes ((array!80493 0))(
  ( (array!80494 (arr!38810 (Array (_ BitVec 32) (_ BitVec 64))) (size!39347 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80493)

(declare-datatypes ((List!27723 0))(
  ( (Nil!27720) (Cons!27719 (h!28928 (_ BitVec 64)) (t!41199 List!27723)) )
))
(declare-fun arrayNoDuplicates!0 (array!80493 (_ BitVec 32) List!27723) Bool)

(assert (=> b!1248086 (= res!832785 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27720))))

(declare-fun b!1248087 () Bool)

(declare-fun res!832782 () Bool)

(assert (=> b!1248087 (=> (not res!832782) (not e!708218))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47249 0))(
  ( (V!47250 (val!15769 Int)) )
))
(declare-datatypes ((ValueCell!14943 0))(
  ( (ValueCellFull!14943 (v!18465 V!47249)) (EmptyCell!14943) )
))
(declare-datatypes ((array!80495 0))(
  ( (array!80496 (arr!38811 (Array (_ BitVec 32) ValueCell!14943)) (size!39348 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80495)

(assert (=> b!1248087 (= res!832782 (and (= (size!39348 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39347 _keys!1118) (size!39348 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248088 () Bool)

(declare-fun e!708215 () Bool)

(declare-fun mapRes!48877 () Bool)

(assert (=> b!1248088 (= e!708215 (and e!708217 mapRes!48877))))

(declare-fun condMapEmpty!48877 () Bool)

(declare-fun mapDefault!48877 () ValueCell!14943)

(assert (=> b!1248088 (= condMapEmpty!48877 (= (arr!38811 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14943)) mapDefault!48877)))))

(declare-fun b!1248089 () Bool)

(declare-fun res!832783 () Bool)

(assert (=> b!1248089 (=> (not res!832783) (not e!708218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80493 (_ BitVec 32)) Bool)

(assert (=> b!1248089 (= res!832783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48877 () Bool)

(assert (=> mapIsEmpty!48877 mapRes!48877))

(declare-fun mapNonEmpty!48877 () Bool)

(declare-fun tp!93021 () Bool)

(assert (=> mapNonEmpty!48877 (= mapRes!48877 (and tp!93021 e!708216))))

(declare-fun mapRest!48877 () (Array (_ BitVec 32) ValueCell!14943))

(declare-fun mapKey!48877 () (_ BitVec 32))

(declare-fun mapValue!48877 () ValueCell!14943)

(assert (=> mapNonEmpty!48877 (= (arr!38811 _values!914) (store mapRest!48877 mapKey!48877 mapValue!48877))))

(declare-fun res!832784 () Bool)

(assert (=> start!104730 (=> (not res!832784) (not e!708218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104730 (= res!832784 (validMask!0 mask!1466))))

(assert (=> start!104730 e!708218))

(assert (=> start!104730 true))

(assert (=> start!104730 tp!93020))

(assert (=> start!104730 tp_is_empty!31413))

(declare-fun array_inv!29551 (array!80493) Bool)

(assert (=> start!104730 (array_inv!29551 _keys!1118)))

(declare-fun array_inv!29552 (array!80495) Bool)

(assert (=> start!104730 (and (array_inv!29552 _values!914) e!708215)))

(declare-fun b!1248090 () Bool)

(assert (=> b!1248090 (= e!708218 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47249)

(declare-fun minValueBefore!43 () V!47249)

(declare-datatypes ((tuple2!20466 0))(
  ( (tuple2!20467 (_1!10243 (_ BitVec 64)) (_2!10243 V!47249)) )
))
(declare-datatypes ((List!27724 0))(
  ( (Nil!27721) (Cons!27720 (h!28929 tuple2!20466) (t!41200 List!27724)) )
))
(declare-datatypes ((ListLongMap!18351 0))(
  ( (ListLongMap!18352 (toList!9191 List!27724)) )
))
(declare-fun lt!563307 () ListLongMap!18351)

(declare-fun getCurrentListMapNoExtraKeys!5574 (array!80493 array!80495 (_ BitVec 32) (_ BitVec 32) V!47249 V!47249 (_ BitVec 32) Int) ListLongMap!18351)

(assert (=> b!1248090 (= lt!563307 (getCurrentListMapNoExtraKeys!5574 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104730 res!832784) b!1248087))

(assert (= (and b!1248087 res!832782) b!1248089))

(assert (= (and b!1248089 res!832783) b!1248086))

(assert (= (and b!1248086 res!832785) b!1248090))

(assert (= (and b!1248088 condMapEmpty!48877) mapIsEmpty!48877))

(assert (= (and b!1248088 (not condMapEmpty!48877)) mapNonEmpty!48877))

(get-info :version)

(assert (= (and mapNonEmpty!48877 ((_ is ValueCellFull!14943) mapValue!48877)) b!1248085))

(assert (= (and b!1248088 ((_ is ValueCellFull!14943) mapDefault!48877)) b!1248084))

(assert (= start!104730 b!1248088))

(declare-fun m!1149377 () Bool)

(assert (=> b!1248086 m!1149377))

(declare-fun m!1149379 () Bool)

(assert (=> b!1248089 m!1149379))

(declare-fun m!1149381 () Bool)

(assert (=> start!104730 m!1149381))

(declare-fun m!1149383 () Bool)

(assert (=> start!104730 m!1149383))

(declare-fun m!1149385 () Bool)

(assert (=> start!104730 m!1149385))

(declare-fun m!1149387 () Bool)

(assert (=> mapNonEmpty!48877 m!1149387))

(declare-fun m!1149389 () Bool)

(assert (=> b!1248090 m!1149389))

(check-sat (not start!104730) tp_is_empty!31413 (not b_next!26511) (not b!1248090) b_and!44285 (not b!1248089) (not mapNonEmpty!48877) (not b!1248086))
(check-sat b_and!44285 (not b_next!26511))
