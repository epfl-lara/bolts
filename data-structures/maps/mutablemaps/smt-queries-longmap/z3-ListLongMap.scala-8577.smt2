; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104718 () Bool)

(assert start!104718)

(declare-fun b_free!26499 () Bool)

(declare-fun b_next!26499 () Bool)

(assert (=> start!104718 (= b_free!26499 (not b_next!26499))))

(declare-fun tp!92984 () Bool)

(declare-fun b_and!44273 () Bool)

(assert (=> start!104718 (= tp!92984 b_and!44273)))

(declare-fun b!1247958 () Bool)

(declare-fun e!708128 () Bool)

(declare-fun tp_is_empty!31401 () Bool)

(assert (=> b!1247958 (= e!708128 tp_is_empty!31401)))

(declare-fun b!1247959 () Bool)

(declare-fun res!832711 () Bool)

(declare-fun e!708125 () Bool)

(assert (=> b!1247959 (=> (not res!832711) (not e!708125))))

(declare-datatypes ((array!80471 0))(
  ( (array!80472 (arr!38799 (Array (_ BitVec 32) (_ BitVec 64))) (size!39336 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80471)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80471 (_ BitVec 32)) Bool)

(assert (=> b!1247959 (= res!832711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48859 () Bool)

(declare-fun mapRes!48859 () Bool)

(assert (=> mapIsEmpty!48859 mapRes!48859))

(declare-fun b!1247961 () Bool)

(declare-fun res!832710 () Bool)

(assert (=> b!1247961 (=> (not res!832710) (not e!708125))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47233 0))(
  ( (V!47234 (val!15763 Int)) )
))
(declare-datatypes ((ValueCell!14937 0))(
  ( (ValueCellFull!14937 (v!18459 V!47233)) (EmptyCell!14937) )
))
(declare-datatypes ((array!80473 0))(
  ( (array!80474 (arr!38800 (Array (_ BitVec 32) ValueCell!14937)) (size!39337 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80473)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247961 (= res!832710 (and (= (size!39337 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39336 _keys!1118) (size!39337 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48859 () Bool)

(declare-fun tp!92985 () Bool)

(declare-fun e!708129 () Bool)

(assert (=> mapNonEmpty!48859 (= mapRes!48859 (and tp!92985 e!708129))))

(declare-fun mapKey!48859 () (_ BitVec 32))

(declare-fun mapValue!48859 () ValueCell!14937)

(declare-fun mapRest!48859 () (Array (_ BitVec 32) ValueCell!14937))

(assert (=> mapNonEmpty!48859 (= (arr!38800 _values!914) (store mapRest!48859 mapKey!48859 mapValue!48859))))

(declare-fun b!1247962 () Bool)

(assert (=> b!1247962 (= e!708125 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47233)

(declare-fun minValueBefore!43 () V!47233)

(declare-datatypes ((tuple2!20458 0))(
  ( (tuple2!20459 (_1!10239 (_ BitVec 64)) (_2!10239 V!47233)) )
))
(declare-datatypes ((List!27716 0))(
  ( (Nil!27713) (Cons!27712 (h!28921 tuple2!20458) (t!41192 List!27716)) )
))
(declare-datatypes ((ListLongMap!18343 0))(
  ( (ListLongMap!18344 (toList!9187 List!27716)) )
))
(declare-fun lt!563289 () ListLongMap!18343)

(declare-fun getCurrentListMapNoExtraKeys!5570 (array!80471 array!80473 (_ BitVec 32) (_ BitVec 32) V!47233 V!47233 (_ BitVec 32) Int) ListLongMap!18343)

(assert (=> b!1247962 (= lt!563289 (getCurrentListMapNoExtraKeys!5570 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247963 () Bool)

(declare-fun e!708127 () Bool)

(assert (=> b!1247963 (= e!708127 (and e!708128 mapRes!48859))))

(declare-fun condMapEmpty!48859 () Bool)

(declare-fun mapDefault!48859 () ValueCell!14937)

(assert (=> b!1247963 (= condMapEmpty!48859 (= (arr!38800 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14937)) mapDefault!48859)))))

(declare-fun b!1247964 () Bool)

(assert (=> b!1247964 (= e!708129 tp_is_empty!31401)))

(declare-fun b!1247960 () Bool)

(declare-fun res!832712 () Bool)

(assert (=> b!1247960 (=> (not res!832712) (not e!708125))))

(declare-datatypes ((List!27717 0))(
  ( (Nil!27714) (Cons!27713 (h!28922 (_ BitVec 64)) (t!41193 List!27717)) )
))
(declare-fun arrayNoDuplicates!0 (array!80471 (_ BitVec 32) List!27717) Bool)

(assert (=> b!1247960 (= res!832712 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27714))))

(declare-fun res!832713 () Bool)

(assert (=> start!104718 (=> (not res!832713) (not e!708125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104718 (= res!832713 (validMask!0 mask!1466))))

(assert (=> start!104718 e!708125))

(assert (=> start!104718 true))

(assert (=> start!104718 tp!92984))

(assert (=> start!104718 tp_is_empty!31401))

(declare-fun array_inv!29545 (array!80471) Bool)

(assert (=> start!104718 (array_inv!29545 _keys!1118)))

(declare-fun array_inv!29546 (array!80473) Bool)

(assert (=> start!104718 (and (array_inv!29546 _values!914) e!708127)))

(assert (= (and start!104718 res!832713) b!1247961))

(assert (= (and b!1247961 res!832710) b!1247959))

(assert (= (and b!1247959 res!832711) b!1247960))

(assert (= (and b!1247960 res!832712) b!1247962))

(assert (= (and b!1247963 condMapEmpty!48859) mapIsEmpty!48859))

(assert (= (and b!1247963 (not condMapEmpty!48859)) mapNonEmpty!48859))

(get-info :version)

(assert (= (and mapNonEmpty!48859 ((_ is ValueCellFull!14937) mapValue!48859)) b!1247964))

(assert (= (and b!1247963 ((_ is ValueCellFull!14937) mapDefault!48859)) b!1247958))

(assert (= start!104718 b!1247963))

(declare-fun m!1149293 () Bool)

(assert (=> start!104718 m!1149293))

(declare-fun m!1149295 () Bool)

(assert (=> start!104718 m!1149295))

(declare-fun m!1149297 () Bool)

(assert (=> start!104718 m!1149297))

(declare-fun m!1149299 () Bool)

(assert (=> b!1247960 m!1149299))

(declare-fun m!1149301 () Bool)

(assert (=> mapNonEmpty!48859 m!1149301))

(declare-fun m!1149303 () Bool)

(assert (=> b!1247962 m!1149303))

(declare-fun m!1149305 () Bool)

(assert (=> b!1247959 m!1149305))

(check-sat b_and!44273 (not start!104718) (not b!1247959) tp_is_empty!31401 (not b!1247962) (not b_next!26499) (not mapNonEmpty!48859) (not b!1247960))
(check-sat b_and!44273 (not b_next!26499))
