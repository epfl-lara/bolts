; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133724 () Bool)

(assert start!133724)

(declare-fun b!1562972 () Bool)

(declare-fun e!871106 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1562972 (= e!871106 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!59538 () Bool)

(declare-fun mapRes!59538 () Bool)

(assert (=> mapIsEmpty!59538 mapRes!59538))

(declare-fun b!1562973 () Bool)

(declare-fun res!1068619 () Bool)

(assert (=> b!1562973 (=> (not res!1068619) (not e!871106))))

(declare-datatypes ((array!104213 0))(
  ( (array!104214 (arr!50294 (Array (_ BitVec 32) (_ BitVec 64))) (size!50845 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104213)

(assert (=> b!1562973 (= res!1068619 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50845 _keys!637)) (bvslt from!782 (size!50845 _keys!637))))))

(declare-fun b!1562974 () Bool)

(declare-fun e!871102 () Bool)

(declare-fun e!871105 () Bool)

(assert (=> b!1562974 (= e!871102 (and e!871105 mapRes!59538))))

(declare-fun condMapEmpty!59538 () Bool)

(declare-datatypes ((V!59907 0))(
  ( (V!59908 (val!19471 Int)) )
))
(declare-datatypes ((ValueCell!18357 0))(
  ( (ValueCellFull!18357 (v!22220 V!59907)) (EmptyCell!18357) )
))
(declare-datatypes ((array!104215 0))(
  ( (array!104216 (arr!50295 (Array (_ BitVec 32) ValueCell!18357)) (size!50846 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104215)

(declare-fun mapDefault!59538 () ValueCell!18357)

(assert (=> b!1562974 (= condMapEmpty!59538 (= (arr!50295 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18357)) mapDefault!59538)))))

(declare-fun mapNonEmpty!59538 () Bool)

(declare-fun tp!113374 () Bool)

(declare-fun e!871103 () Bool)

(assert (=> mapNonEmpty!59538 (= mapRes!59538 (and tp!113374 e!871103))))

(declare-fun mapRest!59538 () (Array (_ BitVec 32) ValueCell!18357))

(declare-fun mapKey!59538 () (_ BitVec 32))

(declare-fun mapValue!59538 () ValueCell!18357)

(assert (=> mapNonEmpty!59538 (= (arr!50295 _values!487) (store mapRest!59538 mapKey!59538 mapValue!59538))))

(declare-fun b!1562975 () Bool)

(declare-fun res!1068618 () Bool)

(assert (=> b!1562975 (=> (not res!1068618) (not e!871106))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562975 (= res!1068618 (and (= (size!50846 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50845 _keys!637) (size!50846 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562976 () Bool)

(declare-fun res!1068623 () Bool)

(assert (=> b!1562976 (=> (not res!1068623) (not e!871106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562976 (= res!1068623 (not (validKeyInArray!0 (select (arr!50294 _keys!637) from!782))))))

(declare-fun b!1562977 () Bool)

(declare-fun tp_is_empty!38775 () Bool)

(assert (=> b!1562977 (= e!871103 tp_is_empty!38775)))

(declare-fun b!1562978 () Bool)

(declare-fun res!1068621 () Bool)

(assert (=> b!1562978 (=> (not res!1068621) (not e!871106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104213 (_ BitVec 32)) Bool)

(assert (=> b!1562978 (= res!1068621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1068622 () Bool)

(assert (=> start!133724 (=> (not res!1068622) (not e!871106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133724 (= res!1068622 (validMask!0 mask!947))))

(assert (=> start!133724 e!871106))

(assert (=> start!133724 true))

(declare-fun array_inv!39015 (array!104213) Bool)

(assert (=> start!133724 (array_inv!39015 _keys!637)))

(declare-fun array_inv!39016 (array!104215) Bool)

(assert (=> start!133724 (and (array_inv!39016 _values!487) e!871102)))

(declare-fun b!1562979 () Bool)

(assert (=> b!1562979 (= e!871105 tp_is_empty!38775)))

(declare-fun b!1562980 () Bool)

(declare-fun res!1068620 () Bool)

(assert (=> b!1562980 (=> (not res!1068620) (not e!871106))))

(declare-datatypes ((List!36665 0))(
  ( (Nil!36662) (Cons!36661 (h!38108 (_ BitVec 64)) (t!51519 List!36665)) )
))
(declare-fun arrayNoDuplicates!0 (array!104213 (_ BitVec 32) List!36665) Bool)

(assert (=> b!1562980 (= res!1068620 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36662))))

(assert (= (and start!133724 res!1068622) b!1562975))

(assert (= (and b!1562975 res!1068618) b!1562978))

(assert (= (and b!1562978 res!1068621) b!1562980))

(assert (= (and b!1562980 res!1068620) b!1562973))

(assert (= (and b!1562973 res!1068619) b!1562976))

(assert (= (and b!1562976 res!1068623) b!1562972))

(assert (= (and b!1562974 condMapEmpty!59538) mapIsEmpty!59538))

(assert (= (and b!1562974 (not condMapEmpty!59538)) mapNonEmpty!59538))

(get-info :version)

(assert (= (and mapNonEmpty!59538 ((_ is ValueCellFull!18357) mapValue!59538)) b!1562977))

(assert (= (and b!1562974 ((_ is ValueCellFull!18357) mapDefault!59538)) b!1562979))

(assert (= start!133724 b!1562974))

(declare-fun m!1438643 () Bool)

(assert (=> start!133724 m!1438643))

(declare-fun m!1438645 () Bool)

(assert (=> start!133724 m!1438645))

(declare-fun m!1438647 () Bool)

(assert (=> start!133724 m!1438647))

(declare-fun m!1438649 () Bool)

(assert (=> mapNonEmpty!59538 m!1438649))

(declare-fun m!1438651 () Bool)

(assert (=> b!1562978 m!1438651))

(declare-fun m!1438653 () Bool)

(assert (=> b!1562980 m!1438653))

(declare-fun m!1438655 () Bool)

(assert (=> b!1562976 m!1438655))

(assert (=> b!1562976 m!1438655))

(declare-fun m!1438657 () Bool)

(assert (=> b!1562976 m!1438657))

(check-sat (not b!1562976) (not mapNonEmpty!59538) tp_is_empty!38775 (not b!1562980) (not b!1562978) (not start!133724))
(check-sat)
