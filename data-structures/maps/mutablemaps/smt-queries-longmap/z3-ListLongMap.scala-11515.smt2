; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134098 () Bool)

(assert start!134098)

(declare-fun b_free!32193 () Bool)

(declare-fun b_next!32193 () Bool)

(assert (=> start!134098 (= b_free!32193 (not b_next!32193))))

(declare-fun tp!113899 () Bool)

(declare-fun b_and!51847 () Bool)

(assert (=> start!134098 (= tp!113899 b_and!51847)))

(declare-fun res!1070888 () Bool)

(declare-fun e!873344 () Bool)

(assert (=> start!134098 (=> (not res!1070888) (not e!873344))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134098 (= res!1070888 (validMask!0 mask!947))))

(assert (=> start!134098 e!873344))

(assert (=> start!134098 tp!113899))

(declare-fun tp_is_empty!38973 () Bool)

(assert (=> start!134098 tp_is_empty!38973))

(assert (=> start!134098 true))

(declare-datatypes ((array!104609 0))(
  ( (array!104610 (arr!50485 (Array (_ BitVec 32) (_ BitVec 64))) (size!51036 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104609)

(declare-fun array_inv!39145 (array!104609) Bool)

(assert (=> start!134098 (array_inv!39145 _keys!637)))

(declare-datatypes ((V!60171 0))(
  ( (V!60172 (val!19570 Int)) )
))
(declare-datatypes ((ValueCell!18456 0))(
  ( (ValueCellFull!18456 (v!22326 V!60171)) (EmptyCell!18456) )
))
(declare-datatypes ((array!104611 0))(
  ( (array!104612 (arr!50486 (Array (_ BitVec 32) ValueCell!18456)) (size!51037 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104611)

(declare-fun e!873342 () Bool)

(declare-fun array_inv!39146 (array!104611) Bool)

(assert (=> start!134098 (and (array_inv!39146 _values!487) e!873342)))

(declare-fun b!1566726 () Bool)

(declare-fun res!1070885 () Bool)

(assert (=> b!1566726 (=> (not res!1070885) (not e!873344))))

(declare-datatypes ((List!36798 0))(
  ( (Nil!36795) (Cons!36794 (h!38242 (_ BitVec 64)) (t!51709 List!36798)) )
))
(declare-fun arrayNoDuplicates!0 (array!104609 (_ BitVec 32) List!36798) Bool)

(assert (=> b!1566726 (= res!1070885 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36795))))

(declare-fun b!1566727 () Bool)

(declare-fun e!873341 () Bool)

(declare-fun mapRes!59859 () Bool)

(assert (=> b!1566727 (= e!873342 (and e!873341 mapRes!59859))))

(declare-fun condMapEmpty!59859 () Bool)

(declare-fun mapDefault!59859 () ValueCell!18456)

(assert (=> b!1566727 (= condMapEmpty!59859 (= (arr!50486 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18456)) mapDefault!59859)))))

(declare-fun mapIsEmpty!59859 () Bool)

(assert (=> mapIsEmpty!59859 mapRes!59859))

(declare-fun b!1566728 () Bool)

(declare-fun res!1070886 () Bool)

(assert (=> b!1566728 (=> (not res!1070886) (not e!873344))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566728 (= res!1070886 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51036 _keys!637)) (bvslt from!782 (size!51036 _keys!637))))))

(declare-fun b!1566729 () Bool)

(declare-fun e!873340 () Bool)

(assert (=> b!1566729 (= e!873340 false)))

(declare-fun lt!672737 () Bool)

(declare-datatypes ((tuple2!25412 0))(
  ( (tuple2!25413 (_1!12716 (_ BitVec 64)) (_2!12716 V!60171)) )
))
(declare-datatypes ((List!36799 0))(
  ( (Nil!36796) (Cons!36795 (h!38243 tuple2!25412) (t!51710 List!36799)) )
))
(declare-datatypes ((ListLongMap!22859 0))(
  ( (ListLongMap!22860 (toList!11445 List!36799)) )
))
(declare-fun lt!672736 () ListLongMap!22859)

(declare-fun contains!10369 (ListLongMap!22859 (_ BitVec 64)) Bool)

(assert (=> b!1566729 (= lt!672737 (contains!10369 lt!672736 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566730 () Bool)

(assert (=> b!1566730 (= e!873341 tp_is_empty!38973)))

(declare-fun b!1566731 () Bool)

(declare-fun e!873339 () Bool)

(assert (=> b!1566731 (= e!873339 tp_is_empty!38973)))

(declare-fun b!1566732 () Bool)

(declare-fun res!1070884 () Bool)

(assert (=> b!1566732 (=> (not res!1070884) (not e!873344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104609 (_ BitVec 32)) Bool)

(assert (=> b!1566732 (= res!1070884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59859 () Bool)

(declare-fun tp!113898 () Bool)

(assert (=> mapNonEmpty!59859 (= mapRes!59859 (and tp!113898 e!873339))))

(declare-fun mapRest!59859 () (Array (_ BitVec 32) ValueCell!18456))

(declare-fun mapValue!59859 () ValueCell!18456)

(declare-fun mapKey!59859 () (_ BitVec 32))

(assert (=> mapNonEmpty!59859 (= (arr!50486 _values!487) (store mapRest!59859 mapKey!59859 mapValue!59859))))

(declare-fun b!1566733 () Bool)

(assert (=> b!1566733 (= e!873344 e!873340)))

(declare-fun res!1070887 () Bool)

(assert (=> b!1566733 (=> (not res!1070887) (not e!873340))))

(assert (=> b!1566733 (= res!1070887 (not (contains!10369 lt!672736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60171)

(declare-fun zeroValue!453 () V!60171)

(declare-fun getCurrentListMapNoExtraKeys!6785 (array!104609 array!104611 (_ BitVec 32) (_ BitVec 32) V!60171 V!60171 (_ BitVec 32) Int) ListLongMap!22859)

(assert (=> b!1566733 (= lt!672736 (getCurrentListMapNoExtraKeys!6785 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1566734 () Bool)

(declare-fun res!1070889 () Bool)

(assert (=> b!1566734 (=> (not res!1070889) (not e!873344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566734 (= res!1070889 (not (validKeyInArray!0 (select (arr!50485 _keys!637) from!782))))))

(declare-fun b!1566735 () Bool)

(declare-fun res!1070883 () Bool)

(assert (=> b!1566735 (=> (not res!1070883) (not e!873344))))

(assert (=> b!1566735 (= res!1070883 (and (= (size!51037 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51036 _keys!637) (size!51037 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!134098 res!1070888) b!1566735))

(assert (= (and b!1566735 res!1070883) b!1566732))

(assert (= (and b!1566732 res!1070884) b!1566726))

(assert (= (and b!1566726 res!1070885) b!1566728))

(assert (= (and b!1566728 res!1070886) b!1566734))

(assert (= (and b!1566734 res!1070889) b!1566733))

(assert (= (and b!1566733 res!1070887) b!1566729))

(assert (= (and b!1566727 condMapEmpty!59859) mapIsEmpty!59859))

(assert (= (and b!1566727 (not condMapEmpty!59859)) mapNonEmpty!59859))

(get-info :version)

(assert (= (and mapNonEmpty!59859 ((_ is ValueCellFull!18456) mapValue!59859)) b!1566731))

(assert (= (and b!1566727 ((_ is ValueCellFull!18456) mapDefault!59859)) b!1566730))

(assert (= start!134098 b!1566727))

(declare-fun m!1441791 () Bool)

(assert (=> mapNonEmpty!59859 m!1441791))

(declare-fun m!1441793 () Bool)

(assert (=> b!1566734 m!1441793))

(assert (=> b!1566734 m!1441793))

(declare-fun m!1441795 () Bool)

(assert (=> b!1566734 m!1441795))

(declare-fun m!1441797 () Bool)

(assert (=> b!1566729 m!1441797))

(declare-fun m!1441799 () Bool)

(assert (=> b!1566733 m!1441799))

(declare-fun m!1441801 () Bool)

(assert (=> b!1566733 m!1441801))

(declare-fun m!1441803 () Bool)

(assert (=> start!134098 m!1441803))

(declare-fun m!1441805 () Bool)

(assert (=> start!134098 m!1441805))

(declare-fun m!1441807 () Bool)

(assert (=> start!134098 m!1441807))

(declare-fun m!1441809 () Bool)

(assert (=> b!1566726 m!1441809))

(declare-fun m!1441811 () Bool)

(assert (=> b!1566732 m!1441811))

(check-sat (not b!1566729) tp_is_empty!38973 (not b!1566732) (not b!1566726) (not mapNonEmpty!59859) b_and!51847 (not b!1566734) (not b!1566733) (not start!134098) (not b_next!32193))
(check-sat b_and!51847 (not b_next!32193))
