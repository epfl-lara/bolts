; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113482 () Bool)

(assert start!113482)

(declare-fun b_free!31497 () Bool)

(declare-fun b_next!31497 () Bool)

(assert (=> start!113482 (= b_free!31497 (not b_next!31497))))

(declare-fun tp!110296 () Bool)

(declare-fun b_and!50795 () Bool)

(assert (=> start!113482 (= tp!110296 b_and!50795)))

(declare-fun b!1346632 () Bool)

(declare-fun res!893638 () Bool)

(declare-fun e!766258 () Bool)

(assert (=> b!1346632 (=> (not res!893638) (not e!766258))))

(declare-datatypes ((array!91783 0))(
  ( (array!91784 (arr!44343 (Array (_ BitVec 32) (_ BitVec 64))) (size!44894 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91783)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91783 (_ BitVec 32)) Bool)

(assert (=> b!1346632 (= res!893638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346633 () Bool)

(declare-fun e!766260 () Bool)

(declare-fun tp_is_empty!37497 () Bool)

(assert (=> b!1346633 (= e!766260 tp_is_empty!37497)))

(declare-fun b!1346634 () Bool)

(assert (=> b!1346634 (= e!766258 false)))

(declare-datatypes ((V!55099 0))(
  ( (V!55100 (val!18823 Int)) )
))
(declare-fun minValue!1245 () V!55099)

(declare-fun zeroValue!1245 () V!55099)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17850 0))(
  ( (ValueCellFull!17850 (v!21469 V!55099)) (EmptyCell!17850) )
))
(declare-datatypes ((array!91785 0))(
  ( (array!91786 (arr!44344 (Array (_ BitVec 32) ValueCell!17850)) (size!44895 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91785)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun lt!595471 () Bool)

(declare-datatypes ((tuple2!24398 0))(
  ( (tuple2!24399 (_1!12209 (_ BitVec 64)) (_2!12209 V!55099)) )
))
(declare-datatypes ((List!31572 0))(
  ( (Nil!31569) (Cons!31568 (h!32777 tuple2!24398) (t!46169 List!31572)) )
))
(declare-datatypes ((ListLongMap!22067 0))(
  ( (ListLongMap!22068 (toList!11049 List!31572)) )
))
(declare-fun contains!9161 (ListLongMap!22067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5940 (array!91783 array!91785 (_ BitVec 32) (_ BitVec 32) V!55099 V!55099 (_ BitVec 32) Int) ListLongMap!22067)

(assert (=> b!1346634 (= lt!595471 (contains!9161 (getCurrentListMap!5940 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346635 () Bool)

(declare-fun e!766259 () Bool)

(assert (=> b!1346635 (= e!766259 tp_is_empty!37497)))

(declare-fun mapIsEmpty!57952 () Bool)

(declare-fun mapRes!57952 () Bool)

(assert (=> mapIsEmpty!57952 mapRes!57952))

(declare-fun res!893639 () Bool)

(assert (=> start!113482 (=> (not res!893639) (not e!766258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113482 (= res!893639 (validMask!0 mask!1977))))

(assert (=> start!113482 e!766258))

(assert (=> start!113482 tp_is_empty!37497))

(assert (=> start!113482 true))

(declare-fun array_inv!33323 (array!91783) Bool)

(assert (=> start!113482 (array_inv!33323 _keys!1571)))

(declare-fun e!766261 () Bool)

(declare-fun array_inv!33324 (array!91785) Bool)

(assert (=> start!113482 (and (array_inv!33324 _values!1303) e!766261)))

(assert (=> start!113482 tp!110296))

(declare-fun b!1346636 () Bool)

(declare-fun res!893642 () Bool)

(assert (=> b!1346636 (=> (not res!893642) (not e!766258))))

(assert (=> b!1346636 (= res!893642 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44894 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346637 () Bool)

(assert (=> b!1346637 (= e!766261 (and e!766260 mapRes!57952))))

(declare-fun condMapEmpty!57952 () Bool)

(declare-fun mapDefault!57952 () ValueCell!17850)

(assert (=> b!1346637 (= condMapEmpty!57952 (= (arr!44344 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17850)) mapDefault!57952)))))

(declare-fun mapNonEmpty!57952 () Bool)

(declare-fun tp!110297 () Bool)

(assert (=> mapNonEmpty!57952 (= mapRes!57952 (and tp!110297 e!766259))))

(declare-fun mapValue!57952 () ValueCell!17850)

(declare-fun mapKey!57952 () (_ BitVec 32))

(declare-fun mapRest!57952 () (Array (_ BitVec 32) ValueCell!17850))

(assert (=> mapNonEmpty!57952 (= (arr!44344 _values!1303) (store mapRest!57952 mapKey!57952 mapValue!57952))))

(declare-fun b!1346638 () Bool)

(declare-fun res!893641 () Bool)

(assert (=> b!1346638 (=> (not res!893641) (not e!766258))))

(declare-datatypes ((List!31573 0))(
  ( (Nil!31570) (Cons!31569 (h!32778 (_ BitVec 64)) (t!46170 List!31573)) )
))
(declare-fun arrayNoDuplicates!0 (array!91783 (_ BitVec 32) List!31573) Bool)

(assert (=> b!1346638 (= res!893641 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31570))))

(declare-fun b!1346639 () Bool)

(declare-fun res!893640 () Bool)

(assert (=> b!1346639 (=> (not res!893640) (not e!766258))))

(assert (=> b!1346639 (= res!893640 (and (= (size!44895 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44894 _keys!1571) (size!44895 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113482 res!893639) b!1346639))

(assert (= (and b!1346639 res!893640) b!1346632))

(assert (= (and b!1346632 res!893638) b!1346638))

(assert (= (and b!1346638 res!893641) b!1346636))

(assert (= (and b!1346636 res!893642) b!1346634))

(assert (= (and b!1346637 condMapEmpty!57952) mapIsEmpty!57952))

(assert (= (and b!1346637 (not condMapEmpty!57952)) mapNonEmpty!57952))

(get-info :version)

(assert (= (and mapNonEmpty!57952 ((_ is ValueCellFull!17850) mapValue!57952)) b!1346635))

(assert (= (and b!1346637 ((_ is ValueCellFull!17850) mapDefault!57952)) b!1346633))

(assert (= start!113482 b!1346637))

(declare-fun m!1233719 () Bool)

(assert (=> start!113482 m!1233719))

(declare-fun m!1233721 () Bool)

(assert (=> start!113482 m!1233721))

(declare-fun m!1233723 () Bool)

(assert (=> start!113482 m!1233723))

(declare-fun m!1233725 () Bool)

(assert (=> b!1346634 m!1233725))

(assert (=> b!1346634 m!1233725))

(declare-fun m!1233727 () Bool)

(assert (=> b!1346634 m!1233727))

(declare-fun m!1233729 () Bool)

(assert (=> mapNonEmpty!57952 m!1233729))

(declare-fun m!1233731 () Bool)

(assert (=> b!1346638 m!1233731))

(declare-fun m!1233733 () Bool)

(assert (=> b!1346632 m!1233733))

(check-sat (not mapNonEmpty!57952) (not b_next!31497) (not start!113482) (not b!1346638) b_and!50795 tp_is_empty!37497 (not b!1346632) (not b!1346634))
(check-sat b_and!50795 (not b_next!31497))
