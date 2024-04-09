; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113302 () Bool)

(assert start!113302)

(declare-fun b_free!31317 () Bool)

(declare-fun b_next!31317 () Bool)

(assert (=> start!113302 (= b_free!31317 (not b_next!31317))))

(declare-fun tp!109757 () Bool)

(declare-fun b_and!50549 () Bool)

(assert (=> start!113302 (= tp!109757 b_and!50549)))

(declare-fun b!1343794 () Bool)

(declare-fun e!764829 () Bool)

(declare-fun e!764831 () Bool)

(declare-fun mapRes!57682 () Bool)

(assert (=> b!1343794 (= e!764829 (and e!764831 mapRes!57682))))

(declare-fun condMapEmpty!57682 () Bool)

(declare-datatypes ((V!54859 0))(
  ( (V!54860 (val!18733 Int)) )
))
(declare-datatypes ((ValueCell!17760 0))(
  ( (ValueCellFull!17760 (v!21379 V!54859)) (EmptyCell!17760) )
))
(declare-datatypes ((array!91433 0))(
  ( (array!91434 (arr!44168 (Array (_ BitVec 32) ValueCell!17760)) (size!44719 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91433)

(declare-fun mapDefault!57682 () ValueCell!17760)

(assert (=> b!1343794 (= condMapEmpty!57682 (= (arr!44168 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17760)) mapDefault!57682)))))

(declare-fun b!1343795 () Bool)

(declare-fun res!891676 () Bool)

(declare-fun e!764827 () Bool)

(assert (=> b!1343795 (=> (not res!891676) (not e!764827))))

(declare-datatypes ((array!91435 0))(
  ( (array!91436 (arr!44169 (Array (_ BitVec 32) (_ BitVec 64))) (size!44720 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91435)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1343795 (= res!891676 (and (= (size!44719 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44720 _keys!1571) (size!44719 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57682 () Bool)

(assert (=> mapIsEmpty!57682 mapRes!57682))

(declare-fun mapNonEmpty!57682 () Bool)

(declare-fun tp!109756 () Bool)

(declare-fun e!764828 () Bool)

(assert (=> mapNonEmpty!57682 (= mapRes!57682 (and tp!109756 e!764828))))

(declare-fun mapRest!57682 () (Array (_ BitVec 32) ValueCell!17760))

(declare-fun mapValue!57682 () ValueCell!17760)

(declare-fun mapKey!57682 () (_ BitVec 32))

(assert (=> mapNonEmpty!57682 (= (arr!44168 _values!1303) (store mapRest!57682 mapKey!57682 mapValue!57682))))

(declare-fun b!1343796 () Bool)

(declare-fun res!891679 () Bool)

(assert (=> b!1343796 (=> (not res!891679) (not e!764827))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343796 (= res!891679 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44720 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!891678 () Bool)

(assert (=> start!113302 (=> (not res!891678) (not e!764827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113302 (= res!891678 (validMask!0 mask!1977))))

(assert (=> start!113302 e!764827))

(declare-fun tp_is_empty!37317 () Bool)

(assert (=> start!113302 tp_is_empty!37317))

(assert (=> start!113302 true))

(declare-fun array_inv!33205 (array!91435) Bool)

(assert (=> start!113302 (array_inv!33205 _keys!1571)))

(declare-fun array_inv!33206 (array!91433) Bool)

(assert (=> start!113302 (and (array_inv!33206 _values!1303) e!764829)))

(assert (=> start!113302 tp!109757))

(declare-fun b!1343797 () Bool)

(declare-fun res!891677 () Bool)

(assert (=> b!1343797 (=> (not res!891677) (not e!764827))))

(declare-datatypes ((List!31462 0))(
  ( (Nil!31459) (Cons!31458 (h!32667 (_ BitVec 64)) (t!45993 List!31462)) )
))
(declare-fun arrayNoDuplicates!0 (array!91435 (_ BitVec 32) List!31462) Bool)

(assert (=> b!1343797 (= res!891677 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31459))))

(declare-fun b!1343798 () Bool)

(assert (=> b!1343798 (= e!764827 false)))

(declare-fun minValue!1245 () V!54859)

(declare-fun lt!595057 () Bool)

(declare-fun zeroValue!1245 () V!54859)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24288 0))(
  ( (tuple2!24289 (_1!12154 (_ BitVec 64)) (_2!12154 V!54859)) )
))
(declare-datatypes ((List!31463 0))(
  ( (Nil!31460) (Cons!31459 (h!32668 tuple2!24288) (t!45994 List!31463)) )
))
(declare-datatypes ((ListLongMap!21957 0))(
  ( (ListLongMap!21958 (toList!10994 List!31463)) )
))
(declare-fun contains!9106 (ListLongMap!21957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5887 (array!91435 array!91433 (_ BitVec 32) (_ BitVec 32) V!54859 V!54859 (_ BitVec 32) Int) ListLongMap!21957)

(assert (=> b!1343798 (= lt!595057 (contains!9106 (getCurrentListMap!5887 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343799 () Bool)

(assert (=> b!1343799 (= e!764828 tp_is_empty!37317)))

(declare-fun b!1343800 () Bool)

(declare-fun res!891680 () Bool)

(assert (=> b!1343800 (=> (not res!891680) (not e!764827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91435 (_ BitVec 32)) Bool)

(assert (=> b!1343800 (= res!891680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343801 () Bool)

(assert (=> b!1343801 (= e!764831 tp_is_empty!37317)))

(assert (= (and start!113302 res!891678) b!1343795))

(assert (= (and b!1343795 res!891676) b!1343800))

(assert (= (and b!1343800 res!891680) b!1343797))

(assert (= (and b!1343797 res!891677) b!1343796))

(assert (= (and b!1343796 res!891679) b!1343798))

(assert (= (and b!1343794 condMapEmpty!57682) mapIsEmpty!57682))

(assert (= (and b!1343794 (not condMapEmpty!57682)) mapNonEmpty!57682))

(get-info :version)

(assert (= (and mapNonEmpty!57682 ((_ is ValueCellFull!17760) mapValue!57682)) b!1343799))

(assert (= (and b!1343794 ((_ is ValueCellFull!17760) mapDefault!57682)) b!1343801))

(assert (= start!113302 b!1343794))

(declare-fun m!1231619 () Bool)

(assert (=> b!1343798 m!1231619))

(assert (=> b!1343798 m!1231619))

(declare-fun m!1231621 () Bool)

(assert (=> b!1343798 m!1231621))

(declare-fun m!1231623 () Bool)

(assert (=> mapNonEmpty!57682 m!1231623))

(declare-fun m!1231625 () Bool)

(assert (=> start!113302 m!1231625))

(declare-fun m!1231627 () Bool)

(assert (=> start!113302 m!1231627))

(declare-fun m!1231629 () Bool)

(assert (=> start!113302 m!1231629))

(declare-fun m!1231631 () Bool)

(assert (=> b!1343797 m!1231631))

(declare-fun m!1231633 () Bool)

(assert (=> b!1343800 m!1231633))

(check-sat (not mapNonEmpty!57682) (not start!113302) b_and!50549 (not b!1343798) (not b!1343797) tp_is_empty!37317 (not b_next!31317) (not b!1343800))
(check-sat b_and!50549 (not b_next!31317))
