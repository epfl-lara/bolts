; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111036 () Bool)

(assert start!111036)

(declare-fun b_free!29835 () Bool)

(declare-fun b_next!29835 () Bool)

(assert (=> start!111036 (= b_free!29835 (not b_next!29835))))

(declare-fun tp!104828 () Bool)

(declare-fun b_and!48053 () Bool)

(assert (=> start!111036 (= tp!104828 b_and!48053)))

(declare-fun b!1314057 () Bool)

(declare-fun e!749600 () Bool)

(assert (=> b!1314057 (= e!749600 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88067 0))(
  ( (array!88068 (arr!42509 (Array (_ BitVec 32) (_ BitVec 64))) (size!43060 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88067)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52523 0))(
  ( (V!52524 (val!17857 Int)) )
))
(declare-fun minValue!1296 () V!52523)

(declare-fun lt!585694 () Bool)

(declare-datatypes ((ValueCell!16884 0))(
  ( (ValueCellFull!16884 (v!20482 V!52523)) (EmptyCell!16884) )
))
(declare-datatypes ((array!88069 0))(
  ( (array!88070 (arr!42510 (Array (_ BitVec 32) ValueCell!16884)) (size!43061 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88069)

(declare-fun zeroValue!1296 () V!52523)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23196 0))(
  ( (tuple2!23197 (_1!11608 (_ BitVec 64)) (_2!11608 V!52523)) )
))
(declare-datatypes ((List!30359 0))(
  ( (Nil!30356) (Cons!30355 (h!31564 tuple2!23196) (t!43972 List!30359)) )
))
(declare-datatypes ((ListLongMap!20865 0))(
  ( (ListLongMap!20866 (toList!10448 List!30359)) )
))
(declare-fun contains!8534 (ListLongMap!20865 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5404 (array!88067 array!88069 (_ BitVec 32) (_ BitVec 32) V!52523 V!52523 (_ BitVec 32) Int) ListLongMap!20865)

(assert (=> b!1314057 (= lt!585694 (contains!8534 (getCurrentListMap!5404 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314058 () Bool)

(declare-fun res!872467 () Bool)

(assert (=> b!1314058 (=> (not res!872467) (not e!749600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88067 (_ BitVec 32)) Bool)

(assert (=> b!1314058 (= res!872467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314059 () Bool)

(declare-fun e!749596 () Bool)

(declare-fun e!749599 () Bool)

(declare-fun mapRes!54976 () Bool)

(assert (=> b!1314059 (= e!749596 (and e!749599 mapRes!54976))))

(declare-fun condMapEmpty!54976 () Bool)

(declare-fun mapDefault!54976 () ValueCell!16884)

(assert (=> b!1314059 (= condMapEmpty!54976 (= (arr!42510 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16884)) mapDefault!54976)))))

(declare-fun b!1314060 () Bool)

(declare-fun res!872464 () Bool)

(assert (=> b!1314060 (=> (not res!872464) (not e!749600))))

(assert (=> b!1314060 (= res!872464 (and (= (size!43061 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43060 _keys!1628) (size!43061 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314061 () Bool)

(declare-fun tp_is_empty!35565 () Bool)

(assert (=> b!1314061 (= e!749599 tp_is_empty!35565)))

(declare-fun res!872466 () Bool)

(assert (=> start!111036 (=> (not res!872466) (not e!749600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111036 (= res!872466 (validMask!0 mask!2040))))

(assert (=> start!111036 e!749600))

(assert (=> start!111036 tp!104828))

(declare-fun array_inv!32087 (array!88067) Bool)

(assert (=> start!111036 (array_inv!32087 _keys!1628)))

(assert (=> start!111036 true))

(assert (=> start!111036 tp_is_empty!35565))

(declare-fun array_inv!32088 (array!88069) Bool)

(assert (=> start!111036 (and (array_inv!32088 _values!1354) e!749596)))

(declare-fun mapNonEmpty!54976 () Bool)

(declare-fun tp!104827 () Bool)

(declare-fun e!749598 () Bool)

(assert (=> mapNonEmpty!54976 (= mapRes!54976 (and tp!104827 e!749598))))

(declare-fun mapValue!54976 () ValueCell!16884)

(declare-fun mapRest!54976 () (Array (_ BitVec 32) ValueCell!16884))

(declare-fun mapKey!54976 () (_ BitVec 32))

(assert (=> mapNonEmpty!54976 (= (arr!42510 _values!1354) (store mapRest!54976 mapKey!54976 mapValue!54976))))

(declare-fun mapIsEmpty!54976 () Bool)

(assert (=> mapIsEmpty!54976 mapRes!54976))

(declare-fun b!1314062 () Bool)

(declare-fun res!872465 () Bool)

(assert (=> b!1314062 (=> (not res!872465) (not e!749600))))

(declare-datatypes ((List!30360 0))(
  ( (Nil!30357) (Cons!30356 (h!31565 (_ BitVec 64)) (t!43973 List!30360)) )
))
(declare-fun arrayNoDuplicates!0 (array!88067 (_ BitVec 32) List!30360) Bool)

(assert (=> b!1314062 (= res!872465 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30357))))

(declare-fun b!1314063 () Bool)

(assert (=> b!1314063 (= e!749598 tp_is_empty!35565)))

(declare-fun b!1314064 () Bool)

(declare-fun res!872468 () Bool)

(assert (=> b!1314064 (=> (not res!872468) (not e!749600))))

(assert (=> b!1314064 (= res!872468 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43060 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111036 res!872466) b!1314060))

(assert (= (and b!1314060 res!872464) b!1314058))

(assert (= (and b!1314058 res!872467) b!1314062))

(assert (= (and b!1314062 res!872465) b!1314064))

(assert (= (and b!1314064 res!872468) b!1314057))

(assert (= (and b!1314059 condMapEmpty!54976) mapIsEmpty!54976))

(assert (= (and b!1314059 (not condMapEmpty!54976)) mapNonEmpty!54976))

(get-info :version)

(assert (= (and mapNonEmpty!54976 ((_ is ValueCellFull!16884) mapValue!54976)) b!1314063))

(assert (= (and b!1314059 ((_ is ValueCellFull!16884) mapDefault!54976)) b!1314061))

(assert (= start!111036 b!1314059))

(declare-fun m!1202707 () Bool)

(assert (=> b!1314057 m!1202707))

(assert (=> b!1314057 m!1202707))

(declare-fun m!1202709 () Bool)

(assert (=> b!1314057 m!1202709))

(declare-fun m!1202711 () Bool)

(assert (=> b!1314062 m!1202711))

(declare-fun m!1202713 () Bool)

(assert (=> b!1314058 m!1202713))

(declare-fun m!1202715 () Bool)

(assert (=> start!111036 m!1202715))

(declare-fun m!1202717 () Bool)

(assert (=> start!111036 m!1202717))

(declare-fun m!1202719 () Bool)

(assert (=> start!111036 m!1202719))

(declare-fun m!1202721 () Bool)

(assert (=> mapNonEmpty!54976 m!1202721))

(check-sat (not b!1314062) (not start!111036) b_and!48053 (not b!1314057) (not b!1314058) (not b_next!29835) (not mapNonEmpty!54976) tp_is_empty!35565)
(check-sat b_and!48053 (not b_next!29835))
