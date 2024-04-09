; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112232 () Bool)

(assert start!112232)

(declare-fun b_free!30591 () Bool)

(declare-fun b_next!30591 () Bool)

(assert (=> start!112232 (= b_free!30591 (not b_next!30591))))

(declare-fun tp!107410 () Bool)

(declare-fun b_and!49251 () Bool)

(assert (=> start!112232 (= tp!107410 b_and!49251)))

(declare-fun b!1328698 () Bool)

(declare-fun res!881660 () Bool)

(declare-fun e!757609 () Bool)

(assert (=> b!1328698 (=> (not res!881660) (not e!757609))))

(declare-datatypes ((array!89859 0))(
  ( (array!89860 (arr!43391 (Array (_ BitVec 32) (_ BitVec 64))) (size!43942 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89859)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328698 (= res!881660 (validKeyInArray!0 (select (arr!43391 _keys!1590) from!1980)))))

(declare-fun b!1328700 () Bool)

(declare-fun e!757606 () Bool)

(declare-fun tp_is_empty!36501 () Bool)

(assert (=> b!1328700 (= e!757606 tp_is_empty!36501)))

(declare-fun b!1328701 () Bool)

(declare-fun res!881666 () Bool)

(assert (=> b!1328701 (=> (not res!881666) (not e!757609))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89859 (_ BitVec 32)) Bool)

(assert (=> b!1328701 (= res!881666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56425 () Bool)

(declare-fun mapRes!56425 () Bool)

(assert (=> mapIsEmpty!56425 mapRes!56425))

(declare-fun b!1328702 () Bool)

(declare-fun e!757608 () Bool)

(declare-fun e!757605 () Bool)

(assert (=> b!1328702 (= e!757608 (and e!757605 mapRes!56425))))

(declare-fun condMapEmpty!56425 () Bool)

(declare-datatypes ((V!53771 0))(
  ( (V!53772 (val!18325 Int)) )
))
(declare-datatypes ((ValueCell!17352 0))(
  ( (ValueCellFull!17352 (v!20960 V!53771)) (EmptyCell!17352) )
))
(declare-datatypes ((array!89861 0))(
  ( (array!89862 (arr!43392 (Array (_ BitVec 32) ValueCell!17352)) (size!43943 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89861)

(declare-fun mapDefault!56425 () ValueCell!17352)

(assert (=> b!1328702 (= condMapEmpty!56425 (= (arr!43392 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17352)) mapDefault!56425)))))

(declare-fun b!1328703 () Bool)

(declare-fun res!881659 () Bool)

(assert (=> b!1328703 (=> (not res!881659) (not e!757609))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1328703 (= res!881659 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43942 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328704 () Bool)

(declare-fun res!881665 () Bool)

(assert (=> b!1328704 (=> (not res!881665) (not e!757609))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53771)

(declare-fun zeroValue!1262 () V!53771)

(declare-datatypes ((tuple2!23736 0))(
  ( (tuple2!23737 (_1!11878 (_ BitVec 64)) (_2!11878 V!53771)) )
))
(declare-datatypes ((List!30924 0))(
  ( (Nil!30921) (Cons!30920 (h!32129 tuple2!23736) (t!44937 List!30924)) )
))
(declare-datatypes ((ListLongMap!21405 0))(
  ( (ListLongMap!21406 (toList!10718 List!30924)) )
))
(declare-fun contains!8818 (ListLongMap!21405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5650 (array!89859 array!89861 (_ BitVec 32) (_ BitVec 32) V!53771 V!53771 (_ BitVec 32) Int) ListLongMap!21405)

(assert (=> b!1328704 (= res!881665 (contains!8818 (getCurrentListMap!5650 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328699 () Bool)

(assert (=> b!1328699 (= e!757605 tp_is_empty!36501)))

(declare-fun res!881662 () Bool)

(assert (=> start!112232 (=> (not res!881662) (not e!757609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112232 (= res!881662 (validMask!0 mask!1998))))

(assert (=> start!112232 e!757609))

(declare-fun array_inv!32693 (array!89861) Bool)

(assert (=> start!112232 (and (array_inv!32693 _values!1320) e!757608)))

(assert (=> start!112232 true))

(declare-fun array_inv!32694 (array!89859) Bool)

(assert (=> start!112232 (array_inv!32694 _keys!1590)))

(assert (=> start!112232 tp!107410))

(assert (=> start!112232 tp_is_empty!36501))

(declare-fun b!1328705 () Bool)

(assert (=> b!1328705 (= e!757609 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun b!1328706 () Bool)

(declare-fun res!881664 () Bool)

(assert (=> b!1328706 (=> (not res!881664) (not e!757609))))

(declare-datatypes ((List!30925 0))(
  ( (Nil!30922) (Cons!30921 (h!32130 (_ BitVec 64)) (t!44938 List!30925)) )
))
(declare-fun arrayNoDuplicates!0 (array!89859 (_ BitVec 32) List!30925) Bool)

(assert (=> b!1328706 (= res!881664 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30922))))

(declare-fun b!1328707 () Bool)

(declare-fun res!881663 () Bool)

(assert (=> b!1328707 (=> (not res!881663) (not e!757609))))

(assert (=> b!1328707 (= res!881663 (not (= (select (arr!43391 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1328708 () Bool)

(declare-fun res!881661 () Bool)

(assert (=> b!1328708 (=> (not res!881661) (not e!757609))))

(assert (=> b!1328708 (= res!881661 (and (= (size!43943 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43942 _keys!1590) (size!43943 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56425 () Bool)

(declare-fun tp!107411 () Bool)

(assert (=> mapNonEmpty!56425 (= mapRes!56425 (and tp!107411 e!757606))))

(declare-fun mapRest!56425 () (Array (_ BitVec 32) ValueCell!17352))

(declare-fun mapKey!56425 () (_ BitVec 32))

(declare-fun mapValue!56425 () ValueCell!17352)

(assert (=> mapNonEmpty!56425 (= (arr!43392 _values!1320) (store mapRest!56425 mapKey!56425 mapValue!56425))))

(assert (= (and start!112232 res!881662) b!1328708))

(assert (= (and b!1328708 res!881661) b!1328701))

(assert (= (and b!1328701 res!881666) b!1328706))

(assert (= (and b!1328706 res!881664) b!1328703))

(assert (= (and b!1328703 res!881659) b!1328704))

(assert (= (and b!1328704 res!881665) b!1328707))

(assert (= (and b!1328707 res!881663) b!1328698))

(assert (= (and b!1328698 res!881660) b!1328705))

(assert (= (and b!1328702 condMapEmpty!56425) mapIsEmpty!56425))

(assert (= (and b!1328702 (not condMapEmpty!56425)) mapNonEmpty!56425))

(get-info :version)

(assert (= (and mapNonEmpty!56425 ((_ is ValueCellFull!17352) mapValue!56425)) b!1328700))

(assert (= (and b!1328702 ((_ is ValueCellFull!17352) mapDefault!56425)) b!1328699))

(assert (= start!112232 b!1328702))

(declare-fun m!1217585 () Bool)

(assert (=> b!1328698 m!1217585))

(assert (=> b!1328698 m!1217585))

(declare-fun m!1217587 () Bool)

(assert (=> b!1328698 m!1217587))

(declare-fun m!1217589 () Bool)

(assert (=> b!1328701 m!1217589))

(declare-fun m!1217591 () Bool)

(assert (=> b!1328706 m!1217591))

(declare-fun m!1217593 () Bool)

(assert (=> b!1328704 m!1217593))

(assert (=> b!1328704 m!1217593))

(declare-fun m!1217595 () Bool)

(assert (=> b!1328704 m!1217595))

(declare-fun m!1217597 () Bool)

(assert (=> start!112232 m!1217597))

(declare-fun m!1217599 () Bool)

(assert (=> start!112232 m!1217599))

(declare-fun m!1217601 () Bool)

(assert (=> start!112232 m!1217601))

(declare-fun m!1217603 () Bool)

(assert (=> mapNonEmpty!56425 m!1217603))

(assert (=> b!1328707 m!1217585))

(check-sat (not b!1328701) (not b_next!30591) (not start!112232) (not mapNonEmpty!56425) (not b!1328698) (not b!1328706) b_and!49251 tp_is_empty!36501 (not b!1328704))
(check-sat b_and!49251 (not b_next!30591))
