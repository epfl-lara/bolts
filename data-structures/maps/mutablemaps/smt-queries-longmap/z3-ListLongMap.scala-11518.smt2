; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134116 () Bool)

(assert start!134116)

(declare-fun b_free!32211 () Bool)

(declare-fun b_next!32211 () Bool)

(assert (=> start!134116 (= b_free!32211 (not b_next!32211))))

(declare-fun tp!113953 () Bool)

(declare-fun b_and!51865 () Bool)

(assert (=> start!134116 (= tp!113953 b_and!51865)))

(declare-fun res!1071074 () Bool)

(declare-fun e!873502 () Bool)

(assert (=> start!134116 (=> (not res!1071074) (not e!873502))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134116 (= res!1071074 (validMask!0 mask!947))))

(assert (=> start!134116 e!873502))

(assert (=> start!134116 tp!113953))

(declare-fun tp_is_empty!38991 () Bool)

(assert (=> start!134116 tp_is_empty!38991))

(assert (=> start!134116 true))

(declare-datatypes ((array!104643 0))(
  ( (array!104644 (arr!50502 (Array (_ BitVec 32) (_ BitVec 64))) (size!51053 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104643)

(declare-fun array_inv!39155 (array!104643) Bool)

(assert (=> start!134116 (array_inv!39155 _keys!637)))

(declare-datatypes ((V!60195 0))(
  ( (V!60196 (val!19579 Int)) )
))
(declare-datatypes ((ValueCell!18465 0))(
  ( (ValueCellFull!18465 (v!22335 V!60195)) (EmptyCell!18465) )
))
(declare-datatypes ((array!104645 0))(
  ( (array!104646 (arr!50503 (Array (_ BitVec 32) ValueCell!18465)) (size!51054 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104645)

(declare-fun e!873504 () Bool)

(declare-fun array_inv!39156 (array!104645) Bool)

(assert (=> start!134116 (and (array_inv!39156 _values!487) e!873504)))

(declare-fun b!1566996 () Bool)

(declare-fun res!1071072 () Bool)

(assert (=> b!1566996 (=> (not res!1071072) (not e!873502))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566996 (= res!1071072 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51053 _keys!637)) (bvslt from!782 (size!51053 _keys!637))))))

(declare-fun b!1566997 () Bool)

(declare-fun res!1071075 () Bool)

(assert (=> b!1566997 (=> (not res!1071075) (not e!873502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566997 (= res!1071075 (not (validKeyInArray!0 (select (arr!50502 _keys!637) from!782))))))

(declare-fun b!1566998 () Bool)

(declare-fun e!873506 () Bool)

(assert (=> b!1566998 (= e!873506 false)))

(declare-fun lt!672790 () Bool)

(declare-datatypes ((tuple2!25428 0))(
  ( (tuple2!25429 (_1!12724 (_ BitVec 64)) (_2!12724 V!60195)) )
))
(declare-datatypes ((List!36812 0))(
  ( (Nil!36809) (Cons!36808 (h!38256 tuple2!25428) (t!51723 List!36812)) )
))
(declare-datatypes ((ListLongMap!22875 0))(
  ( (ListLongMap!22876 (toList!11453 List!36812)) )
))
(declare-fun lt!672791 () ListLongMap!22875)

(declare-fun contains!10377 (ListLongMap!22875 (_ BitVec 64)) Bool)

(assert (=> b!1566998 (= lt!672790 (contains!10377 lt!672791 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566999 () Bool)

(declare-fun e!873505 () Bool)

(assert (=> b!1566999 (= e!873505 tp_is_empty!38991)))

(declare-fun b!1567000 () Bool)

(declare-fun res!1071078 () Bool)

(assert (=> b!1567000 (=> (not res!1071078) (not e!873502))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1567000 (= res!1071078 (and (= (size!51054 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51053 _keys!637) (size!51054 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1567001 () Bool)

(assert (=> b!1567001 (= e!873502 e!873506)))

(declare-fun res!1071077 () Bool)

(assert (=> b!1567001 (=> (not res!1071077) (not e!873506))))

(assert (=> b!1567001 (= res!1071077 (not (contains!10377 lt!672791 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60195)

(declare-fun minValue!453 () V!60195)

(declare-fun getCurrentListMapNoExtraKeys!6790 (array!104643 array!104645 (_ BitVec 32) (_ BitVec 32) V!60195 V!60195 (_ BitVec 32) Int) ListLongMap!22875)

(assert (=> b!1567001 (= lt!672791 (getCurrentListMapNoExtraKeys!6790 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59886 () Bool)

(declare-fun mapRes!59886 () Bool)

(declare-fun tp!113952 () Bool)

(assert (=> mapNonEmpty!59886 (= mapRes!59886 (and tp!113952 e!873505))))

(declare-fun mapRest!59886 () (Array (_ BitVec 32) ValueCell!18465))

(declare-fun mapValue!59886 () ValueCell!18465)

(declare-fun mapKey!59886 () (_ BitVec 32))

(assert (=> mapNonEmpty!59886 (= (arr!50503 _values!487) (store mapRest!59886 mapKey!59886 mapValue!59886))))

(declare-fun b!1567002 () Bool)

(declare-fun e!873503 () Bool)

(assert (=> b!1567002 (= e!873504 (and e!873503 mapRes!59886))))

(declare-fun condMapEmpty!59886 () Bool)

(declare-fun mapDefault!59886 () ValueCell!18465)

(assert (=> b!1567002 (= condMapEmpty!59886 (= (arr!50503 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18465)) mapDefault!59886)))))

(declare-fun mapIsEmpty!59886 () Bool)

(assert (=> mapIsEmpty!59886 mapRes!59886))

(declare-fun b!1567003 () Bool)

(declare-fun res!1071073 () Bool)

(assert (=> b!1567003 (=> (not res!1071073) (not e!873502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104643 (_ BitVec 32)) Bool)

(assert (=> b!1567003 (= res!1071073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1567004 () Bool)

(assert (=> b!1567004 (= e!873503 tp_is_empty!38991)))

(declare-fun b!1567005 () Bool)

(declare-fun res!1071076 () Bool)

(assert (=> b!1567005 (=> (not res!1071076) (not e!873502))))

(declare-datatypes ((List!36813 0))(
  ( (Nil!36810) (Cons!36809 (h!38257 (_ BitVec 64)) (t!51724 List!36813)) )
))
(declare-fun arrayNoDuplicates!0 (array!104643 (_ BitVec 32) List!36813) Bool)

(assert (=> b!1567005 (= res!1071076 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36810))))

(assert (= (and start!134116 res!1071074) b!1567000))

(assert (= (and b!1567000 res!1071078) b!1567003))

(assert (= (and b!1567003 res!1071073) b!1567005))

(assert (= (and b!1567005 res!1071076) b!1566996))

(assert (= (and b!1566996 res!1071072) b!1566997))

(assert (= (and b!1566997 res!1071075) b!1567001))

(assert (= (and b!1567001 res!1071077) b!1566998))

(assert (= (and b!1567002 condMapEmpty!59886) mapIsEmpty!59886))

(assert (= (and b!1567002 (not condMapEmpty!59886)) mapNonEmpty!59886))

(get-info :version)

(assert (= (and mapNonEmpty!59886 ((_ is ValueCellFull!18465) mapValue!59886)) b!1566999))

(assert (= (and b!1567002 ((_ is ValueCellFull!18465) mapDefault!59886)) b!1567004))

(assert (= start!134116 b!1567002))

(declare-fun m!1441989 () Bool)

(assert (=> b!1567003 m!1441989))

(declare-fun m!1441991 () Bool)

(assert (=> b!1567001 m!1441991))

(declare-fun m!1441993 () Bool)

(assert (=> b!1567001 m!1441993))

(declare-fun m!1441995 () Bool)

(assert (=> b!1566997 m!1441995))

(assert (=> b!1566997 m!1441995))

(declare-fun m!1441997 () Bool)

(assert (=> b!1566997 m!1441997))

(declare-fun m!1441999 () Bool)

(assert (=> mapNonEmpty!59886 m!1441999))

(declare-fun m!1442001 () Bool)

(assert (=> b!1566998 m!1442001))

(declare-fun m!1442003 () Bool)

(assert (=> start!134116 m!1442003))

(declare-fun m!1442005 () Bool)

(assert (=> start!134116 m!1442005))

(declare-fun m!1442007 () Bool)

(assert (=> start!134116 m!1442007))

(declare-fun m!1442009 () Bool)

(assert (=> b!1567005 m!1442009))

(check-sat (not b_next!32211) (not b!1567003) (not b!1567001) b_and!51865 tp_is_empty!38991 (not b!1566998) (not b!1566997) (not b!1567005) (not start!134116) (not mapNonEmpty!59886))
(check-sat b_and!51865 (not b_next!32211))
