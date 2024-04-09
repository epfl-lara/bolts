; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4164 () Bool)

(assert start!4164)

(declare-fun b_free!1071 () Bool)

(declare-fun b_next!1071 () Bool)

(assert (=> start!4164 (= b_free!1071 (not b_next!1071))))

(declare-fun tp!4633 () Bool)

(declare-fun b_and!1883 () Bool)

(assert (=> start!4164 (= tp!4633 b_and!1883)))

(declare-fun b!31474 () Bool)

(declare-fun res!19045 () Bool)

(declare-fun e!20114 () Bool)

(assert (=> b!31474 (=> (not res!19045) (not e!20114))))

(declare-datatypes ((V!1725 0))(
  ( (V!1726 (val!739 Int)) )
))
(declare-datatypes ((ValueCell!513 0))(
  ( (ValueCellFull!513 (v!1828 V!1725)) (EmptyCell!513) )
))
(declare-datatypes ((array!2057 0))(
  ( (array!2058 (arr!982 (Array (_ BitVec 32) ValueCell!513)) (size!1083 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2057)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2059 0))(
  ( (array!2060 (arr!983 (Array (_ BitVec 32) (_ BitVec 64))) (size!1084 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2059)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31474 (= res!19045 (and (= (size!1083 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1084 _keys!1833) (size!1083 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!19048 () Bool)

(assert (=> start!4164 (=> (not res!19048) (not e!20114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4164 (= res!19048 (validMask!0 mask!2294))))

(assert (=> start!4164 e!20114))

(assert (=> start!4164 true))

(assert (=> start!4164 tp!4633))

(declare-fun e!20115 () Bool)

(declare-fun array_inv!659 (array!2057) Bool)

(assert (=> start!4164 (and (array_inv!659 _values!1501) e!20115)))

(declare-fun array_inv!660 (array!2059) Bool)

(assert (=> start!4164 (array_inv!660 _keys!1833)))

(declare-fun tp_is_empty!1425 () Bool)

(assert (=> start!4164 tp_is_empty!1425))

(declare-fun mapIsEmpty!1666 () Bool)

(declare-fun mapRes!1666 () Bool)

(assert (=> mapIsEmpty!1666 mapRes!1666))

(declare-fun b!31475 () Bool)

(declare-fun res!19046 () Bool)

(assert (=> b!31475 (=> (not res!19046) (not e!20114))))

(declare-datatypes ((List!805 0))(
  ( (Nil!802) (Cons!801 (h!1368 (_ BitVec 64)) (t!3500 List!805)) )
))
(declare-fun arrayNoDuplicates!0 (array!2059 (_ BitVec 32) List!805) Bool)

(assert (=> b!31475 (= res!19046 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!802))))

(declare-fun b!31476 () Bool)

(declare-fun res!19044 () Bool)

(assert (=> b!31476 (=> (not res!19044) (not e!20114))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31476 (= res!19044 (validKeyInArray!0 k0!1304))))

(declare-fun b!31477 () Bool)

(declare-fun res!19047 () Bool)

(assert (=> b!31477 (=> (not res!19047) (not e!20114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2059 (_ BitVec 32)) Bool)

(assert (=> b!31477 (= res!19047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31478 () Bool)

(declare-fun e!20112 () Bool)

(assert (=> b!31478 (= e!20112 tp_is_empty!1425)))

(declare-fun b!31479 () Bool)

(assert (=> b!31479 (= e!20114 false)))

(declare-fun lt!11577 () Bool)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1725)

(declare-fun minValue!1443 () V!1725)

(declare-datatypes ((tuple2!1202 0))(
  ( (tuple2!1203 (_1!611 (_ BitVec 64)) (_2!611 V!1725)) )
))
(declare-datatypes ((List!806 0))(
  ( (Nil!803) (Cons!802 (h!1369 tuple2!1202) (t!3501 List!806)) )
))
(declare-datatypes ((ListLongMap!783 0))(
  ( (ListLongMap!784 (toList!407 List!806)) )
))
(declare-fun contains!344 (ListLongMap!783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!232 (array!2059 array!2057 (_ BitVec 32) (_ BitVec 32) V!1725 V!1725 (_ BitVec 32) Int) ListLongMap!783)

(assert (=> b!31479 (= lt!11577 (contains!344 (getCurrentListMap!232 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun mapNonEmpty!1666 () Bool)

(declare-fun tp!4632 () Bool)

(assert (=> mapNonEmpty!1666 (= mapRes!1666 (and tp!4632 e!20112))))

(declare-fun mapValue!1666 () ValueCell!513)

(declare-fun mapRest!1666 () (Array (_ BitVec 32) ValueCell!513))

(declare-fun mapKey!1666 () (_ BitVec 32))

(assert (=> mapNonEmpty!1666 (= (arr!982 _values!1501) (store mapRest!1666 mapKey!1666 mapValue!1666))))

(declare-fun b!31480 () Bool)

(declare-fun e!20113 () Bool)

(assert (=> b!31480 (= e!20115 (and e!20113 mapRes!1666))))

(declare-fun condMapEmpty!1666 () Bool)

(declare-fun mapDefault!1666 () ValueCell!513)

(assert (=> b!31480 (= condMapEmpty!1666 (= (arr!982 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!513)) mapDefault!1666)))))

(declare-fun b!31481 () Bool)

(assert (=> b!31481 (= e!20113 tp_is_empty!1425)))

(assert (= (and start!4164 res!19048) b!31474))

(assert (= (and b!31474 res!19045) b!31477))

(assert (= (and b!31477 res!19047) b!31475))

(assert (= (and b!31475 res!19046) b!31476))

(assert (= (and b!31476 res!19044) b!31479))

(assert (= (and b!31480 condMapEmpty!1666) mapIsEmpty!1666))

(assert (= (and b!31480 (not condMapEmpty!1666)) mapNonEmpty!1666))

(get-info :version)

(assert (= (and mapNonEmpty!1666 ((_ is ValueCellFull!513) mapValue!1666)) b!31478))

(assert (= (and b!31480 ((_ is ValueCellFull!513) mapDefault!1666)) b!31481))

(assert (= start!4164 b!31480))

(declare-fun m!25257 () Bool)

(assert (=> start!4164 m!25257))

(declare-fun m!25259 () Bool)

(assert (=> start!4164 m!25259))

(declare-fun m!25261 () Bool)

(assert (=> start!4164 m!25261))

(declare-fun m!25263 () Bool)

(assert (=> b!31475 m!25263))

(declare-fun m!25265 () Bool)

(assert (=> b!31476 m!25265))

(declare-fun m!25267 () Bool)

(assert (=> mapNonEmpty!1666 m!25267))

(declare-fun m!25269 () Bool)

(assert (=> b!31477 m!25269))

(declare-fun m!25271 () Bool)

(assert (=> b!31479 m!25271))

(assert (=> b!31479 m!25271))

(declare-fun m!25273 () Bool)

(assert (=> b!31479 m!25273))

(check-sat (not b!31475) tp_is_empty!1425 (not b!31479) (not mapNonEmpty!1666) (not b_next!1071) b_and!1883 (not b!31477) (not start!4164) (not b!31476))
(check-sat b_and!1883 (not b_next!1071))
