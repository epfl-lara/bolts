; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4158 () Bool)

(assert start!4158)

(declare-fun b_free!1065 () Bool)

(declare-fun b_next!1065 () Bool)

(assert (=> start!4158 (= b_free!1065 (not b_next!1065))))

(declare-fun tp!4615 () Bool)

(declare-fun b_and!1877 () Bool)

(assert (=> start!4158 (= tp!4615 b_and!1877)))

(declare-fun b!31402 () Bool)

(declare-fun e!20068 () Bool)

(declare-fun tp_is_empty!1419 () Bool)

(assert (=> b!31402 (= e!20068 tp_is_empty!1419)))

(declare-fun mapIsEmpty!1657 () Bool)

(declare-fun mapRes!1657 () Bool)

(assert (=> mapIsEmpty!1657 mapRes!1657))

(declare-fun b!31403 () Bool)

(declare-fun res!19000 () Bool)

(declare-fun e!20069 () Bool)

(assert (=> b!31403 (=> (not res!19000) (not e!20069))))

(declare-datatypes ((array!2045 0))(
  ( (array!2046 (arr!976 (Array (_ BitVec 32) (_ BitVec 64))) (size!1077 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2045)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2045 (_ BitVec 32)) Bool)

(assert (=> b!31403 (= res!19000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1657 () Bool)

(declare-fun tp!4614 () Bool)

(assert (=> mapNonEmpty!1657 (= mapRes!1657 (and tp!4614 e!20068))))

(declare-datatypes ((V!1717 0))(
  ( (V!1718 (val!736 Int)) )
))
(declare-datatypes ((ValueCell!510 0))(
  ( (ValueCellFull!510 (v!1825 V!1717)) (EmptyCell!510) )
))
(declare-datatypes ((array!2047 0))(
  ( (array!2048 (arr!977 (Array (_ BitVec 32) ValueCell!510)) (size!1078 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2047)

(declare-fun mapKey!1657 () (_ BitVec 32))

(declare-fun mapRest!1657 () (Array (_ BitVec 32) ValueCell!510))

(declare-fun mapValue!1657 () ValueCell!510)

(assert (=> mapNonEmpty!1657 (= (arr!977 _values!1501) (store mapRest!1657 mapKey!1657 mapValue!1657))))

(declare-fun res!19003 () Bool)

(assert (=> start!4158 (=> (not res!19003) (not e!20069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4158 (= res!19003 (validMask!0 mask!2294))))

(assert (=> start!4158 e!20069))

(assert (=> start!4158 true))

(assert (=> start!4158 tp!4615))

(declare-fun e!20071 () Bool)

(declare-fun array_inv!653 (array!2047) Bool)

(assert (=> start!4158 (and (array_inv!653 _values!1501) e!20071)))

(declare-fun array_inv!654 (array!2045) Bool)

(assert (=> start!4158 (array_inv!654 _keys!1833)))

(assert (=> start!4158 tp_is_empty!1419))

(declare-fun b!31404 () Bool)

(declare-fun e!20070 () Bool)

(assert (=> b!31404 (= e!20071 (and e!20070 mapRes!1657))))

(declare-fun condMapEmpty!1657 () Bool)

(declare-fun mapDefault!1657 () ValueCell!510)

(assert (=> b!31404 (= condMapEmpty!1657 (= (arr!977 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!510)) mapDefault!1657)))))

(declare-fun b!31405 () Bool)

(declare-fun res!19002 () Bool)

(assert (=> b!31405 (=> (not res!19002) (not e!20069))))

(declare-datatypes ((List!801 0))(
  ( (Nil!798) (Cons!797 (h!1364 (_ BitVec 64)) (t!3496 List!801)) )
))
(declare-fun arrayNoDuplicates!0 (array!2045 (_ BitVec 32) List!801) Bool)

(assert (=> b!31405 (= res!19002 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!798))))

(declare-fun b!31406 () Bool)

(declare-fun res!18999 () Bool)

(assert (=> b!31406 (=> (not res!18999) (not e!20069))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31406 (= res!18999 (validKeyInArray!0 k0!1304))))

(declare-fun b!31407 () Bool)

(declare-fun res!19001 () Bool)

(assert (=> b!31407 (=> (not res!19001) (not e!20069))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31407 (= res!19001 (and (= (size!1078 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1077 _keys!1833) (size!1078 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31408 () Bool)

(assert (=> b!31408 (= e!20069 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1717)

(declare-fun minValue!1443 () V!1717)

(declare-fun lt!11568 () Bool)

(declare-datatypes ((tuple2!1198 0))(
  ( (tuple2!1199 (_1!609 (_ BitVec 64)) (_2!609 V!1717)) )
))
(declare-datatypes ((List!802 0))(
  ( (Nil!799) (Cons!798 (h!1365 tuple2!1198) (t!3497 List!802)) )
))
(declare-datatypes ((ListLongMap!779 0))(
  ( (ListLongMap!780 (toList!405 List!802)) )
))
(declare-fun contains!342 (ListLongMap!779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!230 (array!2045 array!2047 (_ BitVec 32) (_ BitVec 32) V!1717 V!1717 (_ BitVec 32) Int) ListLongMap!779)

(assert (=> b!31408 (= lt!11568 (contains!342 (getCurrentListMap!230 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun b!31409 () Bool)

(assert (=> b!31409 (= e!20070 tp_is_empty!1419)))

(assert (= (and start!4158 res!19003) b!31407))

(assert (= (and b!31407 res!19001) b!31403))

(assert (= (and b!31403 res!19000) b!31405))

(assert (= (and b!31405 res!19002) b!31406))

(assert (= (and b!31406 res!18999) b!31408))

(assert (= (and b!31404 condMapEmpty!1657) mapIsEmpty!1657))

(assert (= (and b!31404 (not condMapEmpty!1657)) mapNonEmpty!1657))

(get-info :version)

(assert (= (and mapNonEmpty!1657 ((_ is ValueCellFull!510) mapValue!1657)) b!31402))

(assert (= (and b!31404 ((_ is ValueCellFull!510) mapDefault!1657)) b!31409))

(assert (= start!4158 b!31404))

(declare-fun m!25203 () Bool)

(assert (=> mapNonEmpty!1657 m!25203))

(declare-fun m!25205 () Bool)

(assert (=> start!4158 m!25205))

(declare-fun m!25207 () Bool)

(assert (=> start!4158 m!25207))

(declare-fun m!25209 () Bool)

(assert (=> start!4158 m!25209))

(declare-fun m!25211 () Bool)

(assert (=> b!31408 m!25211))

(assert (=> b!31408 m!25211))

(declare-fun m!25213 () Bool)

(assert (=> b!31408 m!25213))

(declare-fun m!25215 () Bool)

(assert (=> b!31406 m!25215))

(declare-fun m!25217 () Bool)

(assert (=> b!31405 m!25217))

(declare-fun m!25219 () Bool)

(assert (=> b!31403 m!25219))

(check-sat (not start!4158) (not b!31406) b_and!1877 (not b!31405) (not b!31403) tp_is_empty!1419 (not mapNonEmpty!1657) (not b_next!1065) (not b!31408))
(check-sat b_and!1877 (not b_next!1065))
