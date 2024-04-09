; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133538 () Bool)

(assert start!133538)

(declare-fun res!1067190 () Bool)

(declare-fun e!869700 () Bool)

(assert (=> start!133538 (=> (not res!1067190) (not e!869700))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133538 (= res!1067190 (validMask!0 mask!947))))

(assert (=> start!133538 e!869700))

(assert (=> start!133538 true))

(declare-datatypes ((V!59659 0))(
  ( (V!59660 (val!19378 Int)) )
))
(declare-datatypes ((ValueCell!18264 0))(
  ( (ValueCellFull!18264 (v!22127 V!59659)) (EmptyCell!18264) )
))
(declare-datatypes ((array!103851 0))(
  ( (array!103852 (arr!50113 (Array (_ BitVec 32) ValueCell!18264)) (size!50664 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103851)

(declare-fun e!869701 () Bool)

(declare-fun array_inv!38879 (array!103851) Bool)

(assert (=> start!133538 (and (array_inv!38879 _values!487) e!869701)))

(declare-datatypes ((array!103853 0))(
  ( (array!103854 (arr!50114 (Array (_ BitVec 32) (_ BitVec 64))) (size!50665 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103853)

(declare-fun array_inv!38880 (array!103853) Bool)

(assert (=> start!133538 (array_inv!38880 _keys!637)))

(declare-fun mapNonEmpty!59259 () Bool)

(declare-fun mapRes!59259 () Bool)

(declare-fun tp!112915 () Bool)

(declare-fun e!869699 () Bool)

(assert (=> mapNonEmpty!59259 (= mapRes!59259 (and tp!112915 e!869699))))

(declare-fun mapKey!59259 () (_ BitVec 32))

(declare-fun mapValue!59259 () ValueCell!18264)

(declare-fun mapRest!59259 () (Array (_ BitVec 32) ValueCell!18264))

(assert (=> mapNonEmpty!59259 (= (arr!50113 _values!487) (store mapRest!59259 mapKey!59259 mapValue!59259))))

(declare-fun b!1560593 () Bool)

(declare-fun res!1067192 () Bool)

(assert (=> b!1560593 (=> (not res!1067192) (not e!869700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103853 (_ BitVec 32)) Bool)

(assert (=> b!1560593 (= res!1067192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560594 () Bool)

(assert (=> b!1560594 (= e!869700 false)))

(declare-fun lt!670962 () Bool)

(declare-datatypes ((List!36556 0))(
  ( (Nil!36553) (Cons!36552 (h!37999 (_ BitVec 64)) (t!51296 List!36556)) )
))
(declare-fun arrayNoDuplicates!0 (array!103853 (_ BitVec 32) List!36556) Bool)

(assert (=> b!1560594 (= lt!670962 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36553))))

(declare-fun b!1560595 () Bool)

(declare-fun e!869698 () Bool)

(assert (=> b!1560595 (= e!869701 (and e!869698 mapRes!59259))))

(declare-fun condMapEmpty!59259 () Bool)

(declare-fun mapDefault!59259 () ValueCell!18264)

(assert (=> b!1560595 (= condMapEmpty!59259 (= (arr!50113 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18264)) mapDefault!59259)))))

(declare-fun b!1560596 () Bool)

(declare-fun res!1067191 () Bool)

(assert (=> b!1560596 (=> (not res!1067191) (not e!869700))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560596 (= res!1067191 (and (= (size!50664 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50665 _keys!637) (size!50664 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59259 () Bool)

(assert (=> mapIsEmpty!59259 mapRes!59259))

(declare-fun b!1560597 () Bool)

(declare-fun tp_is_empty!38589 () Bool)

(assert (=> b!1560597 (= e!869698 tp_is_empty!38589)))

(declare-fun b!1560598 () Bool)

(assert (=> b!1560598 (= e!869699 tp_is_empty!38589)))

(assert (= (and start!133538 res!1067190) b!1560596))

(assert (= (and b!1560596 res!1067191) b!1560593))

(assert (= (and b!1560593 res!1067192) b!1560594))

(assert (= (and b!1560595 condMapEmpty!59259) mapIsEmpty!59259))

(assert (= (and b!1560595 (not condMapEmpty!59259)) mapNonEmpty!59259))

(get-info :version)

(assert (= (and mapNonEmpty!59259 ((_ is ValueCellFull!18264) mapValue!59259)) b!1560598))

(assert (= (and b!1560595 ((_ is ValueCellFull!18264) mapDefault!59259)) b!1560597))

(assert (= start!133538 b!1560595))

(declare-fun m!1436395 () Bool)

(assert (=> start!133538 m!1436395))

(declare-fun m!1436397 () Bool)

(assert (=> start!133538 m!1436397))

(declare-fun m!1436399 () Bool)

(assert (=> start!133538 m!1436399))

(declare-fun m!1436401 () Bool)

(assert (=> mapNonEmpty!59259 m!1436401))

(declare-fun m!1436403 () Bool)

(assert (=> b!1560593 m!1436403))

(declare-fun m!1436405 () Bool)

(assert (=> b!1560594 m!1436405))

(check-sat (not start!133538) (not mapNonEmpty!59259) tp_is_empty!38589 (not b!1560594) (not b!1560593))
(check-sat)
