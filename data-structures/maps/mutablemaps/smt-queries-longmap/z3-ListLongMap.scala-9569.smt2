; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113314 () Bool)

(assert start!113314)

(declare-fun b_free!31329 () Bool)

(declare-fun b_next!31329 () Bool)

(assert (=> start!113314 (= b_free!31329 (not b_next!31329))))

(declare-fun tp!109792 () Bool)

(declare-fun b_and!50561 () Bool)

(assert (=> start!113314 (= tp!109792 b_and!50561)))

(declare-fun b!1343938 () Bool)

(declare-fun e!764920 () Bool)

(declare-fun tp_is_empty!37329 () Bool)

(assert (=> b!1343938 (= e!764920 tp_is_empty!37329)))

(declare-fun mapNonEmpty!57700 () Bool)

(declare-fun mapRes!57700 () Bool)

(declare-fun tp!109793 () Bool)

(assert (=> mapNonEmpty!57700 (= mapRes!57700 (and tp!109793 e!764920))))

(declare-datatypes ((V!54875 0))(
  ( (V!54876 (val!18739 Int)) )
))
(declare-datatypes ((ValueCell!17766 0))(
  ( (ValueCellFull!17766 (v!21385 V!54875)) (EmptyCell!17766) )
))
(declare-fun mapValue!57700 () ValueCell!17766)

(declare-fun mapRest!57700 () (Array (_ BitVec 32) ValueCell!17766))

(declare-fun mapKey!57700 () (_ BitVec 32))

(declare-datatypes ((array!91457 0))(
  ( (array!91458 (arr!44180 (Array (_ BitVec 32) ValueCell!17766)) (size!44731 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91457)

(assert (=> mapNonEmpty!57700 (= (arr!44180 _values!1303) (store mapRest!57700 mapKey!57700 mapValue!57700))))

(declare-fun res!891769 () Bool)

(declare-fun e!764917 () Bool)

(assert (=> start!113314 (=> (not res!891769) (not e!764917))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113314 (= res!891769 (validMask!0 mask!1977))))

(assert (=> start!113314 e!764917))

(assert (=> start!113314 tp_is_empty!37329))

(assert (=> start!113314 true))

(declare-datatypes ((array!91459 0))(
  ( (array!91460 (arr!44181 (Array (_ BitVec 32) (_ BitVec 64))) (size!44732 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91459)

(declare-fun array_inv!33215 (array!91459) Bool)

(assert (=> start!113314 (array_inv!33215 _keys!1571)))

(declare-fun e!764918 () Bool)

(declare-fun array_inv!33216 (array!91457) Bool)

(assert (=> start!113314 (and (array_inv!33216 _values!1303) e!764918)))

(assert (=> start!113314 tp!109792))

(declare-fun b!1343939 () Bool)

(declare-fun e!764919 () Bool)

(assert (=> b!1343939 (= e!764918 (and e!764919 mapRes!57700))))

(declare-fun condMapEmpty!57700 () Bool)

(declare-fun mapDefault!57700 () ValueCell!17766)

(assert (=> b!1343939 (= condMapEmpty!57700 (= (arr!44180 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17766)) mapDefault!57700)))))

(declare-fun b!1343940 () Bool)

(declare-fun res!891770 () Bool)

(assert (=> b!1343940 (=> (not res!891770) (not e!764917))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343940 (= res!891770 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44732 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343941 () Bool)

(declare-fun res!891768 () Bool)

(assert (=> b!1343941 (=> (not res!891768) (not e!764917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91459 (_ BitVec 32)) Bool)

(assert (=> b!1343941 (= res!891768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343942 () Bool)

(declare-fun res!891766 () Bool)

(assert (=> b!1343942 (=> (not res!891766) (not e!764917))))

(assert (=> b!1343942 (= res!891766 (and (= (size!44731 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44732 _keys!1571) (size!44731 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57700 () Bool)

(assert (=> mapIsEmpty!57700 mapRes!57700))

(declare-fun b!1343943 () Bool)

(assert (=> b!1343943 (= e!764917 false)))

(declare-fun minValue!1245 () V!54875)

(declare-fun zeroValue!1245 () V!54875)

(declare-fun lt!595075 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24298 0))(
  ( (tuple2!24299 (_1!12159 (_ BitVec 64)) (_2!12159 V!54875)) )
))
(declare-datatypes ((List!31470 0))(
  ( (Nil!31467) (Cons!31466 (h!32675 tuple2!24298) (t!46001 List!31470)) )
))
(declare-datatypes ((ListLongMap!21967 0))(
  ( (ListLongMap!21968 (toList!10999 List!31470)) )
))
(declare-fun contains!9111 (ListLongMap!21967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5892 (array!91459 array!91457 (_ BitVec 32) (_ BitVec 32) V!54875 V!54875 (_ BitVec 32) Int) ListLongMap!21967)

(assert (=> b!1343943 (= lt!595075 (contains!9111 (getCurrentListMap!5892 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343944 () Bool)

(declare-fun res!891767 () Bool)

(assert (=> b!1343944 (=> (not res!891767) (not e!764917))))

(declare-datatypes ((List!31471 0))(
  ( (Nil!31468) (Cons!31467 (h!32676 (_ BitVec 64)) (t!46002 List!31471)) )
))
(declare-fun arrayNoDuplicates!0 (array!91459 (_ BitVec 32) List!31471) Bool)

(assert (=> b!1343944 (= res!891767 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31468))))

(declare-fun b!1343945 () Bool)

(assert (=> b!1343945 (= e!764919 tp_is_empty!37329)))

(assert (= (and start!113314 res!891769) b!1343942))

(assert (= (and b!1343942 res!891766) b!1343941))

(assert (= (and b!1343941 res!891768) b!1343944))

(assert (= (and b!1343944 res!891767) b!1343940))

(assert (= (and b!1343940 res!891770) b!1343943))

(assert (= (and b!1343939 condMapEmpty!57700) mapIsEmpty!57700))

(assert (= (and b!1343939 (not condMapEmpty!57700)) mapNonEmpty!57700))

(get-info :version)

(assert (= (and mapNonEmpty!57700 ((_ is ValueCellFull!17766) mapValue!57700)) b!1343938))

(assert (= (and b!1343939 ((_ is ValueCellFull!17766) mapDefault!57700)) b!1343945))

(assert (= start!113314 b!1343939))

(declare-fun m!1231715 () Bool)

(assert (=> b!1343941 m!1231715))

(declare-fun m!1231717 () Bool)

(assert (=> mapNonEmpty!57700 m!1231717))

(declare-fun m!1231719 () Bool)

(assert (=> b!1343943 m!1231719))

(assert (=> b!1343943 m!1231719))

(declare-fun m!1231721 () Bool)

(assert (=> b!1343943 m!1231721))

(declare-fun m!1231723 () Bool)

(assert (=> start!113314 m!1231723))

(declare-fun m!1231725 () Bool)

(assert (=> start!113314 m!1231725))

(declare-fun m!1231727 () Bool)

(assert (=> start!113314 m!1231727))

(declare-fun m!1231729 () Bool)

(assert (=> b!1343944 m!1231729))

(check-sat (not mapNonEmpty!57700) (not b_next!31329) (not start!113314) b_and!50561 (not b!1343941) tp_is_empty!37329 (not b!1343943) (not b!1343944))
(check-sat b_and!50561 (not b_next!31329))
