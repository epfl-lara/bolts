; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4050 () Bool)

(assert start!4050)

(declare-fun b_free!957 () Bool)

(declare-fun b_next!957 () Bool)

(assert (=> start!4050 (= b_free!957 (not b_next!957))))

(declare-fun tp!4290 () Bool)

(declare-fun b_and!1769 () Bool)

(assert (=> start!4050 (= tp!4290 b_and!1769)))

(declare-fun res!17866 () Bool)

(declare-fun e!19207 () Bool)

(assert (=> start!4050 (=> (not res!17866) (not e!19207))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4050 (= res!17866 (validMask!0 mask!2294))))

(assert (=> start!4050 e!19207))

(assert (=> start!4050 true))

(assert (=> start!4050 tp!4290))

(declare-datatypes ((V!1573 0))(
  ( (V!1574 (val!682 Int)) )
))
(declare-datatypes ((ValueCell!456 0))(
  ( (ValueCellFull!456 (v!1771 V!1573)) (EmptyCell!456) )
))
(declare-datatypes ((array!1843 0))(
  ( (array!1844 (arr!875 (Array (_ BitVec 32) ValueCell!456)) (size!976 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1843)

(declare-fun e!19204 () Bool)

(declare-fun array_inv!589 (array!1843) Bool)

(assert (=> start!4050 (and (array_inv!589 _values!1501) e!19204)))

(declare-datatypes ((array!1845 0))(
  ( (array!1846 (arr!876 (Array (_ BitVec 32) (_ BitVec 64))) (size!977 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1845)

(declare-fun array_inv!590 (array!1845) Bool)

(assert (=> start!4050 (array_inv!590 _keys!1833)))

(declare-fun tp_is_empty!1311 () Bool)

(assert (=> start!4050 tp_is_empty!1311))

(declare-fun b!29782 () Bool)

(declare-fun res!17869 () Bool)

(assert (=> b!29782 (=> (not res!17869) (not e!19207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1845 (_ BitVec 32)) Bool)

(assert (=> b!29782 (= res!17869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1495 () Bool)

(declare-fun mapRes!1495 () Bool)

(assert (=> mapIsEmpty!1495 mapRes!1495))

(declare-fun b!29783 () Bool)

(declare-fun e!19206 () Bool)

(assert (=> b!29783 (= e!19204 (and e!19206 mapRes!1495))))

(declare-fun condMapEmpty!1495 () Bool)

(declare-fun mapDefault!1495 () ValueCell!456)

(assert (=> b!29783 (= condMapEmpty!1495 (= (arr!875 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!456)) mapDefault!1495)))))

(declare-fun b!29784 () Bool)

(assert (=> b!29784 (= e!19206 tp_is_empty!1311)))

(declare-fun b!29785 () Bool)

(assert (=> b!29785 (= e!19207 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun lt!11361 () Bool)

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1573)

(declare-fun minValue!1443 () V!1573)

(declare-datatypes ((tuple2!1120 0))(
  ( (tuple2!1121 (_1!570 (_ BitVec 64)) (_2!570 V!1573)) )
))
(declare-datatypes ((List!723 0))(
  ( (Nil!720) (Cons!719 (h!1286 tuple2!1120) (t!3418 List!723)) )
))
(declare-datatypes ((ListLongMap!701 0))(
  ( (ListLongMap!702 (toList!366 List!723)) )
))
(declare-fun contains!303 (ListLongMap!701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!193 (array!1845 array!1843 (_ BitVec 32) (_ BitVec 32) V!1573 V!1573 (_ BitVec 32) Int) ListLongMap!701)

(assert (=> b!29785 (= lt!11361 (contains!303 (getCurrentListMap!193 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun b!29786 () Bool)

(declare-fun res!17867 () Bool)

(assert (=> b!29786 (=> (not res!17867) (not e!19207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29786 (= res!17867 (validKeyInArray!0 k0!1304))))

(declare-fun b!29787 () Bool)

(declare-fun res!17865 () Bool)

(assert (=> b!29787 (=> (not res!17865) (not e!19207))))

(declare-datatypes ((List!724 0))(
  ( (Nil!721) (Cons!720 (h!1287 (_ BitVec 64)) (t!3419 List!724)) )
))
(declare-fun arrayNoDuplicates!0 (array!1845 (_ BitVec 32) List!724) Bool)

(assert (=> b!29787 (= res!17865 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!721))))

(declare-fun mapNonEmpty!1495 () Bool)

(declare-fun tp!4291 () Bool)

(declare-fun e!19203 () Bool)

(assert (=> mapNonEmpty!1495 (= mapRes!1495 (and tp!4291 e!19203))))

(declare-fun mapRest!1495 () (Array (_ BitVec 32) ValueCell!456))

(declare-fun mapValue!1495 () ValueCell!456)

(declare-fun mapKey!1495 () (_ BitVec 32))

(assert (=> mapNonEmpty!1495 (= (arr!875 _values!1501) (store mapRest!1495 mapKey!1495 mapValue!1495))))

(declare-fun b!29788 () Bool)

(assert (=> b!29788 (= e!19203 tp_is_empty!1311)))

(declare-fun b!29789 () Bool)

(declare-fun res!17868 () Bool)

(assert (=> b!29789 (=> (not res!17868) (not e!19207))))

(assert (=> b!29789 (= res!17868 (and (= (size!976 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!977 _keys!1833) (size!976 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!4050 res!17866) b!29789))

(assert (= (and b!29789 res!17868) b!29782))

(assert (= (and b!29782 res!17869) b!29787))

(assert (= (and b!29787 res!17865) b!29786))

(assert (= (and b!29786 res!17867) b!29785))

(assert (= (and b!29783 condMapEmpty!1495) mapIsEmpty!1495))

(assert (= (and b!29783 (not condMapEmpty!1495)) mapNonEmpty!1495))

(get-info :version)

(assert (= (and mapNonEmpty!1495 ((_ is ValueCellFull!456) mapValue!1495)) b!29788))

(assert (= (and b!29783 ((_ is ValueCellFull!456) mapDefault!1495)) b!29784))

(assert (= start!4050 b!29783))

(declare-fun m!23985 () Bool)

(assert (=> b!29786 m!23985))

(declare-fun m!23987 () Bool)

(assert (=> b!29787 m!23987))

(declare-fun m!23989 () Bool)

(assert (=> start!4050 m!23989))

(declare-fun m!23991 () Bool)

(assert (=> start!4050 m!23991))

(declare-fun m!23993 () Bool)

(assert (=> start!4050 m!23993))

(declare-fun m!23995 () Bool)

(assert (=> b!29782 m!23995))

(declare-fun m!23997 () Bool)

(assert (=> mapNonEmpty!1495 m!23997))

(declare-fun m!23999 () Bool)

(assert (=> b!29785 m!23999))

(assert (=> b!29785 m!23999))

(declare-fun m!24001 () Bool)

(assert (=> b!29785 m!24001))

(check-sat (not mapNonEmpty!1495) (not b!29782) (not start!4050) tp_is_empty!1311 (not b_next!957) b_and!1769 (not b!29786) (not b!29785) (not b!29787))
(check-sat b_and!1769 (not b_next!957))
