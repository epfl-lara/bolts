; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112226 () Bool)

(assert start!112226)

(declare-fun b_free!30585 () Bool)

(declare-fun b_next!30585 () Bool)

(assert (=> start!112226 (= b_free!30585 (not b_next!30585))))

(declare-fun tp!107392 () Bool)

(declare-fun b_and!49245 () Bool)

(assert (=> start!112226 (= tp!107392 b_and!49245)))

(declare-fun mapIsEmpty!56416 () Bool)

(declare-fun mapRes!56416 () Bool)

(assert (=> mapIsEmpty!56416 mapRes!56416))

(declare-fun b!1328611 () Bool)

(declare-fun res!881603 () Bool)

(declare-fun e!757564 () Bool)

(assert (=> b!1328611 (=> (not res!881603) (not e!757564))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89849 0))(
  ( (array!89850 (arr!43386 (Array (_ BitVec 32) (_ BitVec 64))) (size!43937 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89849)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1328611 (= res!881603 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43937 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56416 () Bool)

(declare-fun tp!107393 () Bool)

(declare-fun e!757563 () Bool)

(assert (=> mapNonEmpty!56416 (= mapRes!56416 (and tp!107393 e!757563))))

(declare-fun mapKey!56416 () (_ BitVec 32))

(declare-datatypes ((V!53763 0))(
  ( (V!53764 (val!18322 Int)) )
))
(declare-datatypes ((ValueCell!17349 0))(
  ( (ValueCellFull!17349 (v!20957 V!53763)) (EmptyCell!17349) )
))
(declare-datatypes ((array!89851 0))(
  ( (array!89852 (arr!43387 (Array (_ BitVec 32) ValueCell!17349)) (size!43938 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89851)

(declare-fun mapRest!56416 () (Array (_ BitVec 32) ValueCell!17349))

(declare-fun mapValue!56416 () ValueCell!17349)

(assert (=> mapNonEmpty!56416 (= (arr!43387 _values!1320) (store mapRest!56416 mapKey!56416 mapValue!56416))))

(declare-fun b!1328612 () Bool)

(declare-fun tp_is_empty!36495 () Bool)

(assert (=> b!1328612 (= e!757563 tp_is_empty!36495)))

(declare-fun b!1328613 () Bool)

(declare-fun res!881600 () Bool)

(assert (=> b!1328613 (=> (not res!881600) (not e!757564))))

(declare-datatypes ((List!30920 0))(
  ( (Nil!30917) (Cons!30916 (h!32125 (_ BitVec 64)) (t!44933 List!30920)) )
))
(declare-fun arrayNoDuplicates!0 (array!89849 (_ BitVec 32) List!30920) Bool)

(assert (=> b!1328613 (= res!881600 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30917))))

(declare-fun b!1328614 () Bool)

(declare-fun e!757560 () Bool)

(declare-fun e!757561 () Bool)

(assert (=> b!1328614 (= e!757560 (and e!757561 mapRes!56416))))

(declare-fun condMapEmpty!56416 () Bool)

(declare-fun mapDefault!56416 () ValueCell!17349)

(assert (=> b!1328614 (= condMapEmpty!56416 (= (arr!43387 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17349)) mapDefault!56416)))))

(declare-fun b!1328615 () Bool)

(assert (=> b!1328615 (= e!757561 tp_is_empty!36495)))

(declare-fun b!1328616 () Bool)

(assert (=> b!1328616 (= e!757564 false)))

(declare-fun lt!590807 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53763)

(declare-fun zeroValue!1262 () V!53763)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((tuple2!23732 0))(
  ( (tuple2!23733 (_1!11876 (_ BitVec 64)) (_2!11876 V!53763)) )
))
(declare-datatypes ((List!30921 0))(
  ( (Nil!30918) (Cons!30917 (h!32126 tuple2!23732) (t!44934 List!30921)) )
))
(declare-datatypes ((ListLongMap!21401 0))(
  ( (ListLongMap!21402 (toList!10716 List!30921)) )
))
(declare-fun contains!8816 (ListLongMap!21401 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5648 (array!89849 array!89851 (_ BitVec 32) (_ BitVec 32) V!53763 V!53763 (_ BitVec 32) Int) ListLongMap!21401)

(assert (=> b!1328616 (= lt!590807 (contains!8816 (getCurrentListMap!5648 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!881602 () Bool)

(assert (=> start!112226 (=> (not res!881602) (not e!757564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112226 (= res!881602 (validMask!0 mask!1998))))

(assert (=> start!112226 e!757564))

(declare-fun array_inv!32689 (array!89851) Bool)

(assert (=> start!112226 (and (array_inv!32689 _values!1320) e!757560)))

(assert (=> start!112226 true))

(declare-fun array_inv!32690 (array!89849) Bool)

(assert (=> start!112226 (array_inv!32690 _keys!1590)))

(assert (=> start!112226 tp!107392))

(assert (=> start!112226 tp_is_empty!36495))

(declare-fun b!1328617 () Bool)

(declare-fun res!881599 () Bool)

(assert (=> b!1328617 (=> (not res!881599) (not e!757564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89849 (_ BitVec 32)) Bool)

(assert (=> b!1328617 (= res!881599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328618 () Bool)

(declare-fun res!881601 () Bool)

(assert (=> b!1328618 (=> (not res!881601) (not e!757564))))

(assert (=> b!1328618 (= res!881601 (and (= (size!43938 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43937 _keys!1590) (size!43938 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112226 res!881602) b!1328618))

(assert (= (and b!1328618 res!881601) b!1328617))

(assert (= (and b!1328617 res!881599) b!1328613))

(assert (= (and b!1328613 res!881600) b!1328611))

(assert (= (and b!1328611 res!881603) b!1328616))

(assert (= (and b!1328614 condMapEmpty!56416) mapIsEmpty!56416))

(assert (= (and b!1328614 (not condMapEmpty!56416)) mapNonEmpty!56416))

(get-info :version)

(assert (= (and mapNonEmpty!56416 ((_ is ValueCellFull!17349) mapValue!56416)) b!1328612))

(assert (= (and b!1328614 ((_ is ValueCellFull!17349) mapDefault!56416)) b!1328615))

(assert (= start!112226 b!1328614))

(declare-fun m!1217533 () Bool)

(assert (=> b!1328617 m!1217533))

(declare-fun m!1217535 () Bool)

(assert (=> mapNonEmpty!56416 m!1217535))

(declare-fun m!1217537 () Bool)

(assert (=> b!1328616 m!1217537))

(assert (=> b!1328616 m!1217537))

(declare-fun m!1217539 () Bool)

(assert (=> b!1328616 m!1217539))

(declare-fun m!1217541 () Bool)

(assert (=> b!1328613 m!1217541))

(declare-fun m!1217543 () Bool)

(assert (=> start!112226 m!1217543))

(declare-fun m!1217545 () Bool)

(assert (=> start!112226 m!1217545))

(declare-fun m!1217547 () Bool)

(assert (=> start!112226 m!1217547))

(check-sat (not b!1328617) (not start!112226) b_and!49245 (not b_next!30585) (not b!1328616) tp_is_empty!36495 (not mapNonEmpty!56416) (not b!1328613))
(check-sat b_and!49245 (not b_next!30585))
