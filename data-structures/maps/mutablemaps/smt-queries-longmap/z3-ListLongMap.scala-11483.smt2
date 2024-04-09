; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133730 () Bool)

(assert start!133730)

(declare-fun b_free!32061 () Bool)

(declare-fun b_next!32061 () Bool)

(assert (=> start!133730 (= b_free!32061 (not b_next!32061))))

(declare-fun tp!113389 () Bool)

(declare-fun b_and!51641 () Bool)

(assert (=> start!133730 (= tp!113389 b_and!51641)))

(declare-fun mapIsEmpty!59547 () Bool)

(declare-fun mapRes!59547 () Bool)

(assert (=> mapIsEmpty!59547 mapRes!59547))

(declare-fun res!1068681 () Bool)

(declare-fun e!871157 () Bool)

(assert (=> start!133730 (=> (not res!1068681) (not e!871157))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133730 (= res!1068681 (validMask!0 mask!947))))

(assert (=> start!133730 e!871157))

(assert (=> start!133730 tp!113389))

(declare-fun tp_is_empty!38781 () Bool)

(assert (=> start!133730 tp_is_empty!38781))

(assert (=> start!133730 true))

(declare-datatypes ((array!104223 0))(
  ( (array!104224 (arr!50299 (Array (_ BitVec 32) (_ BitVec 64))) (size!50850 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104223)

(declare-fun array_inv!39017 (array!104223) Bool)

(assert (=> start!133730 (array_inv!39017 _keys!637)))

(declare-datatypes ((V!59915 0))(
  ( (V!59916 (val!19474 Int)) )
))
(declare-datatypes ((ValueCell!18360 0))(
  ( (ValueCellFull!18360 (v!22223 V!59915)) (EmptyCell!18360) )
))
(declare-datatypes ((array!104225 0))(
  ( (array!104226 (arr!50300 (Array (_ BitVec 32) ValueCell!18360)) (size!50851 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104225)

(declare-fun e!871154 () Bool)

(declare-fun array_inv!39018 (array!104225) Bool)

(assert (=> start!133730 (and (array_inv!39018 _values!487) e!871154)))

(declare-fun b!1563058 () Bool)

(declare-fun res!1068679 () Bool)

(assert (=> b!1563058 (=> (not res!1068679) (not e!871157))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563058 (= res!1068679 (and (= (size!50851 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50850 _keys!637) (size!50851 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563059 () Bool)

(declare-fun e!871152 () Bool)

(assert (=> b!1563059 (= e!871157 e!871152)))

(declare-fun res!1068683 () Bool)

(assert (=> b!1563059 (=> (not res!1068683) (not e!871152))))

(declare-datatypes ((tuple2!25278 0))(
  ( (tuple2!25279 (_1!12649 (_ BitVec 64)) (_2!12649 V!59915)) )
))
(declare-datatypes ((List!36667 0))(
  ( (Nil!36664) (Cons!36663 (h!38110 tuple2!25278) (t!51521 List!36667)) )
))
(declare-datatypes ((ListLongMap!22725 0))(
  ( (ListLongMap!22726 (toList!11378 List!36667)) )
))
(declare-fun lt!671760 () ListLongMap!22725)

(declare-fun contains!10298 (ListLongMap!22725 (_ BitVec 64)) Bool)

(assert (=> b!1563059 (= res!1068683 (not (contains!10298 lt!671760 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59915)

(declare-fun minValue!453 () V!59915)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6737 (array!104223 array!104225 (_ BitVec 32) (_ BitVec 32) V!59915 V!59915 (_ BitVec 32) Int) ListLongMap!22725)

(assert (=> b!1563059 (= lt!671760 (getCurrentListMapNoExtraKeys!6737 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59547 () Bool)

(declare-fun tp!113388 () Bool)

(declare-fun e!871156 () Bool)

(assert (=> mapNonEmpty!59547 (= mapRes!59547 (and tp!113388 e!871156))))

(declare-fun mapKey!59547 () (_ BitVec 32))

(declare-fun mapValue!59547 () ValueCell!18360)

(declare-fun mapRest!59547 () (Array (_ BitVec 32) ValueCell!18360))

(assert (=> mapNonEmpty!59547 (= (arr!50300 _values!487) (store mapRest!59547 mapKey!59547 mapValue!59547))))

(declare-fun b!1563060 () Bool)

(declare-fun e!871153 () Bool)

(assert (=> b!1563060 (= e!871153 tp_is_empty!38781)))

(declare-fun b!1563061 () Bool)

(declare-fun res!1068682 () Bool)

(assert (=> b!1563061 (=> (not res!1068682) (not e!871157))))

(assert (=> b!1563061 (= res!1068682 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50850 _keys!637)) (bvslt from!782 (size!50850 _keys!637))))))

(declare-fun b!1563062 () Bool)

(declare-fun res!1068677 () Bool)

(assert (=> b!1563062 (=> (not res!1068677) (not e!871157))))

(declare-datatypes ((List!36668 0))(
  ( (Nil!36665) (Cons!36664 (h!38111 (_ BitVec 64)) (t!51522 List!36668)) )
))
(declare-fun arrayNoDuplicates!0 (array!104223 (_ BitVec 32) List!36668) Bool)

(assert (=> b!1563062 (= res!1068677 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36665))))

(declare-fun b!1563063 () Bool)

(assert (=> b!1563063 (= e!871154 (and e!871153 mapRes!59547))))

(declare-fun condMapEmpty!59547 () Bool)

(declare-fun mapDefault!59547 () ValueCell!18360)

(assert (=> b!1563063 (= condMapEmpty!59547 (= (arr!50300 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18360)) mapDefault!59547)))))

(declare-fun b!1563064 () Bool)

(declare-fun res!1068680 () Bool)

(assert (=> b!1563064 (=> (not res!1068680) (not e!871157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104223 (_ BitVec 32)) Bool)

(assert (=> b!1563064 (= res!1068680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563065 () Bool)

(declare-fun res!1068678 () Bool)

(assert (=> b!1563065 (=> (not res!1068678) (not e!871157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563065 (= res!1068678 (not (validKeyInArray!0 (select (arr!50299 _keys!637) from!782))))))

(declare-fun b!1563066 () Bool)

(assert (=> b!1563066 (= e!871152 false)))

(declare-fun lt!671759 () Bool)

(assert (=> b!1563066 (= lt!671759 (contains!10298 lt!671760 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563067 () Bool)

(assert (=> b!1563067 (= e!871156 tp_is_empty!38781)))

(assert (= (and start!133730 res!1068681) b!1563058))

(assert (= (and b!1563058 res!1068679) b!1563064))

(assert (= (and b!1563064 res!1068680) b!1563062))

(assert (= (and b!1563062 res!1068677) b!1563061))

(assert (= (and b!1563061 res!1068682) b!1563065))

(assert (= (and b!1563065 res!1068678) b!1563059))

(assert (= (and b!1563059 res!1068683) b!1563066))

(assert (= (and b!1563063 condMapEmpty!59547) mapIsEmpty!59547))

(assert (= (and b!1563063 (not condMapEmpty!59547)) mapNonEmpty!59547))

(get-info :version)

(assert (= (and mapNonEmpty!59547 ((_ is ValueCellFull!18360) mapValue!59547)) b!1563067))

(assert (= (and b!1563063 ((_ is ValueCellFull!18360) mapDefault!59547)) b!1563060))

(assert (= start!133730 b!1563063))

(declare-fun m!1438697 () Bool)

(assert (=> mapNonEmpty!59547 m!1438697))

(declare-fun m!1438699 () Bool)

(assert (=> b!1563062 m!1438699))

(declare-fun m!1438701 () Bool)

(assert (=> b!1563064 m!1438701))

(declare-fun m!1438703 () Bool)

(assert (=> b!1563059 m!1438703))

(declare-fun m!1438705 () Bool)

(assert (=> b!1563059 m!1438705))

(declare-fun m!1438707 () Bool)

(assert (=> b!1563066 m!1438707))

(declare-fun m!1438709 () Bool)

(assert (=> start!133730 m!1438709))

(declare-fun m!1438711 () Bool)

(assert (=> start!133730 m!1438711))

(declare-fun m!1438713 () Bool)

(assert (=> start!133730 m!1438713))

(declare-fun m!1438715 () Bool)

(assert (=> b!1563065 m!1438715))

(assert (=> b!1563065 m!1438715))

(declare-fun m!1438717 () Bool)

(assert (=> b!1563065 m!1438717))

(check-sat tp_is_empty!38781 (not b!1563062) b_and!51641 (not b_next!32061) (not start!133730) (not b!1563066) (not mapNonEmpty!59547) (not b!1563059) (not b!1563064) (not b!1563065))
(check-sat b_and!51641 (not b_next!32061))
