; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3942 () Bool)

(assert start!3942)

(declare-fun b_free!849 () Bool)

(declare-fun b_next!849 () Bool)

(assert (=> start!3942 (= b_free!849 (not b_next!849))))

(declare-fun tp!3966 () Bool)

(declare-fun b_and!1661 () Bool)

(assert (=> start!3942 (= tp!3966 b_and!1661)))

(declare-fun b!28145 () Bool)

(declare-fun e!18232 () Bool)

(assert (=> b!28145 (= e!18232 false)))

(declare-fun lt!10758 () (_ BitVec 32))

(declare-datatypes ((array!1631 0))(
  ( (array!1632 (arr!769 (Array (_ BitVec 32) (_ BitVec 64))) (size!870 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1631)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1631 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28145 (= lt!10758 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1333 () Bool)

(declare-fun mapRes!1333 () Bool)

(assert (=> mapIsEmpty!1333 mapRes!1333))

(declare-fun b!28146 () Bool)

(declare-fun res!16720 () Bool)

(assert (=> b!28146 (=> (not res!16720) (not e!18232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28146 (= res!16720 (validKeyInArray!0 k0!1304))))

(declare-fun b!28147 () Bool)

(declare-fun res!16715 () Bool)

(assert (=> b!28147 (=> (not res!16715) (not e!18232))))

(declare-datatypes ((V!1429 0))(
  ( (V!1430 (val!628 Int)) )
))
(declare-datatypes ((ValueCell!402 0))(
  ( (ValueCellFull!402 (v!1717 V!1429)) (EmptyCell!402) )
))
(declare-datatypes ((array!1633 0))(
  ( (array!1634 (arr!770 (Array (_ BitVec 32) ValueCell!402)) (size!871 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1633)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28147 (= res!16715 (and (= (size!871 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!870 _keys!1833) (size!871 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28148 () Bool)

(declare-fun e!18235 () Bool)

(declare-fun tp_is_empty!1203 () Bool)

(assert (=> b!28148 (= e!18235 tp_is_empty!1203)))

(declare-fun b!28149 () Bool)

(declare-fun res!16716 () Bool)

(assert (=> b!28149 (=> (not res!16716) (not e!18232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1631 (_ BitVec 32)) Bool)

(assert (=> b!28149 (= res!16716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28150 () Bool)

(declare-fun res!16717 () Bool)

(assert (=> b!28150 (=> (not res!16717) (not e!18232))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1429)

(declare-fun minValue!1443 () V!1429)

(declare-datatypes ((tuple2!1030 0))(
  ( (tuple2!1031 (_1!525 (_ BitVec 64)) (_2!525 V!1429)) )
))
(declare-datatypes ((List!645 0))(
  ( (Nil!642) (Cons!641 (h!1208 tuple2!1030) (t!3340 List!645)) )
))
(declare-datatypes ((ListLongMap!611 0))(
  ( (ListLongMap!612 (toList!321 List!645)) )
))
(declare-fun contains!258 (ListLongMap!611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!149 (array!1631 array!1633 (_ BitVec 32) (_ BitVec 32) V!1429 V!1429 (_ BitVec 32) Int) ListLongMap!611)

(assert (=> b!28150 (= res!16717 (not (contains!258 (getCurrentListMap!149 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!28151 () Bool)

(declare-fun res!16718 () Bool)

(assert (=> b!28151 (=> (not res!16718) (not e!18232))))

(declare-datatypes ((List!646 0))(
  ( (Nil!643) (Cons!642 (h!1209 (_ BitVec 64)) (t!3341 List!646)) )
))
(declare-fun arrayNoDuplicates!0 (array!1631 (_ BitVec 32) List!646) Bool)

(assert (=> b!28151 (= res!16718 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!643))))

(declare-fun b!28152 () Bool)

(declare-fun e!18234 () Bool)

(assert (=> b!28152 (= e!18234 tp_is_empty!1203)))

(declare-fun res!16714 () Bool)

(assert (=> start!3942 (=> (not res!16714) (not e!18232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3942 (= res!16714 (validMask!0 mask!2294))))

(assert (=> start!3942 e!18232))

(assert (=> start!3942 true))

(assert (=> start!3942 tp!3966))

(declare-fun e!18233 () Bool)

(declare-fun array_inv!523 (array!1633) Bool)

(assert (=> start!3942 (and (array_inv!523 _values!1501) e!18233)))

(declare-fun array_inv!524 (array!1631) Bool)

(assert (=> start!3942 (array_inv!524 _keys!1833)))

(assert (=> start!3942 tp_is_empty!1203))

(declare-fun b!28153 () Bool)

(declare-fun res!16719 () Bool)

(assert (=> b!28153 (=> (not res!16719) (not e!18232))))

(declare-fun arrayContainsKey!0 (array!1631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28153 (= res!16719 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1333 () Bool)

(declare-fun tp!3967 () Bool)

(assert (=> mapNonEmpty!1333 (= mapRes!1333 (and tp!3967 e!18235))))

(declare-fun mapKey!1333 () (_ BitVec 32))

(declare-fun mapRest!1333 () (Array (_ BitVec 32) ValueCell!402))

(declare-fun mapValue!1333 () ValueCell!402)

(assert (=> mapNonEmpty!1333 (= (arr!770 _values!1501) (store mapRest!1333 mapKey!1333 mapValue!1333))))

(declare-fun b!28154 () Bool)

(assert (=> b!28154 (= e!18233 (and e!18234 mapRes!1333))))

(declare-fun condMapEmpty!1333 () Bool)

(declare-fun mapDefault!1333 () ValueCell!402)

(assert (=> b!28154 (= condMapEmpty!1333 (= (arr!770 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!402)) mapDefault!1333)))))

(assert (= (and start!3942 res!16714) b!28147))

(assert (= (and b!28147 res!16715) b!28149))

(assert (= (and b!28149 res!16716) b!28151))

(assert (= (and b!28151 res!16718) b!28146))

(assert (= (and b!28146 res!16720) b!28150))

(assert (= (and b!28150 res!16717) b!28153))

(assert (= (and b!28153 res!16719) b!28145))

(assert (= (and b!28154 condMapEmpty!1333) mapIsEmpty!1333))

(assert (= (and b!28154 (not condMapEmpty!1333)) mapNonEmpty!1333))

(get-info :version)

(assert (= (and mapNonEmpty!1333 ((_ is ValueCellFull!402) mapValue!1333)) b!28148))

(assert (= (and b!28154 ((_ is ValueCellFull!402) mapDefault!1333)) b!28152))

(assert (= start!3942 b!28154))

(declare-fun m!22423 () Bool)

(assert (=> b!28149 m!22423))

(declare-fun m!22425 () Bool)

(assert (=> b!28145 m!22425))

(declare-fun m!22427 () Bool)

(assert (=> b!28153 m!22427))

(declare-fun m!22429 () Bool)

(assert (=> start!3942 m!22429))

(declare-fun m!22431 () Bool)

(assert (=> start!3942 m!22431))

(declare-fun m!22433 () Bool)

(assert (=> start!3942 m!22433))

(declare-fun m!22435 () Bool)

(assert (=> mapNonEmpty!1333 m!22435))

(declare-fun m!22437 () Bool)

(assert (=> b!28151 m!22437))

(declare-fun m!22439 () Bool)

(assert (=> b!28150 m!22439))

(assert (=> b!28150 m!22439))

(declare-fun m!22441 () Bool)

(assert (=> b!28150 m!22441))

(declare-fun m!22443 () Bool)

(assert (=> b!28146 m!22443))

(check-sat (not b!28153) (not b!28151) (not b!28145) (not b!28150) (not b!28149) b_and!1661 (not mapNonEmpty!1333) (not b!28146) tp_is_empty!1203 (not start!3942) (not b_next!849))
(check-sat b_and!1661 (not b_next!849))
