; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4176 () Bool)

(assert start!4176)

(declare-fun b_free!1083 () Bool)

(declare-fun b_next!1083 () Bool)

(assert (=> start!4176 (= b_free!1083 (not b_next!1083))))

(declare-fun tp!4669 () Bool)

(declare-fun b_and!1895 () Bool)

(assert (=> start!4176 (= tp!4669 b_and!1895)))

(declare-fun b!31646 () Bool)

(declare-fun res!19164 () Bool)

(declare-fun e!20206 () Bool)

(assert (=> b!31646 (=> (not res!19164) (not e!20206))))

(declare-datatypes ((array!2081 0))(
  ( (array!2082 (arr!994 (Array (_ BitVec 32) (_ BitVec 64))) (size!1095 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2081)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31646 (= res!19164 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31647 () Bool)

(assert (=> b!31647 (= e!20206 false)))

(declare-fun lt!11595 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2081 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31647 (= lt!11595 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!19163 () Bool)

(assert (=> start!4176 (=> (not res!19163) (not e!20206))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4176 (= res!19163 (validMask!0 mask!2294))))

(assert (=> start!4176 e!20206))

(assert (=> start!4176 true))

(assert (=> start!4176 tp!4669))

(declare-datatypes ((V!1741 0))(
  ( (V!1742 (val!745 Int)) )
))
(declare-datatypes ((ValueCell!519 0))(
  ( (ValueCellFull!519 (v!1834 V!1741)) (EmptyCell!519) )
))
(declare-datatypes ((array!2083 0))(
  ( (array!2084 (arr!995 (Array (_ BitVec 32) ValueCell!519)) (size!1096 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2083)

(declare-fun e!20203 () Bool)

(declare-fun array_inv!667 (array!2083) Bool)

(assert (=> start!4176 (and (array_inv!667 _values!1501) e!20203)))

(declare-fun array_inv!668 (array!2081) Bool)

(assert (=> start!4176 (array_inv!668 _keys!1833)))

(declare-fun tp_is_empty!1437 () Bool)

(assert (=> start!4176 tp_is_empty!1437))

(declare-fun b!31648 () Bool)

(declare-fun res!19168 () Bool)

(assert (=> b!31648 (=> (not res!19168) (not e!20206))))

(declare-datatypes ((List!812 0))(
  ( (Nil!809) (Cons!808 (h!1375 (_ BitVec 64)) (t!3507 List!812)) )
))
(declare-fun arrayNoDuplicates!0 (array!2081 (_ BitVec 32) List!812) Bool)

(assert (=> b!31648 (= res!19168 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!809))))

(declare-fun b!31649 () Bool)

(declare-fun res!19165 () Bool)

(assert (=> b!31649 (=> (not res!19165) (not e!20206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2081 (_ BitVec 32)) Bool)

(assert (=> b!31649 (= res!19165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31650 () Bool)

(declare-fun e!20204 () Bool)

(declare-fun mapRes!1684 () Bool)

(assert (=> b!31650 (= e!20203 (and e!20204 mapRes!1684))))

(declare-fun condMapEmpty!1684 () Bool)

(declare-fun mapDefault!1684 () ValueCell!519)

(assert (=> b!31650 (= condMapEmpty!1684 (= (arr!995 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!519)) mapDefault!1684)))))

(declare-fun b!31651 () Bool)

(declare-fun res!19162 () Bool)

(assert (=> b!31651 (=> (not res!19162) (not e!20206))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1741)

(declare-fun minValue!1443 () V!1741)

(declare-datatypes ((tuple2!1210 0))(
  ( (tuple2!1211 (_1!615 (_ BitVec 64)) (_2!615 V!1741)) )
))
(declare-datatypes ((List!813 0))(
  ( (Nil!810) (Cons!809 (h!1376 tuple2!1210) (t!3508 List!813)) )
))
(declare-datatypes ((ListLongMap!791 0))(
  ( (ListLongMap!792 (toList!411 List!813)) )
))
(declare-fun contains!348 (ListLongMap!791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!236 (array!2081 array!2083 (_ BitVec 32) (_ BitVec 32) V!1741 V!1741 (_ BitVec 32) Int) ListLongMap!791)

(assert (=> b!31651 (= res!19162 (not (contains!348 (getCurrentListMap!236 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapNonEmpty!1684 () Bool)

(declare-fun tp!4668 () Bool)

(declare-fun e!20205 () Bool)

(assert (=> mapNonEmpty!1684 (= mapRes!1684 (and tp!4668 e!20205))))

(declare-fun mapKey!1684 () (_ BitVec 32))

(declare-fun mapValue!1684 () ValueCell!519)

(declare-fun mapRest!1684 () (Array (_ BitVec 32) ValueCell!519))

(assert (=> mapNonEmpty!1684 (= (arr!995 _values!1501) (store mapRest!1684 mapKey!1684 mapValue!1684))))

(declare-fun mapIsEmpty!1684 () Bool)

(assert (=> mapIsEmpty!1684 mapRes!1684))

(declare-fun b!31652 () Bool)

(declare-fun res!19166 () Bool)

(assert (=> b!31652 (=> (not res!19166) (not e!20206))))

(assert (=> b!31652 (= res!19166 (and (= (size!1096 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1095 _keys!1833) (size!1096 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31653 () Bool)

(assert (=> b!31653 (= e!20205 tp_is_empty!1437)))

(declare-fun b!31654 () Bool)

(declare-fun res!19167 () Bool)

(assert (=> b!31654 (=> (not res!19167) (not e!20206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31654 (= res!19167 (validKeyInArray!0 k0!1304))))

(declare-fun b!31655 () Bool)

(assert (=> b!31655 (= e!20204 tp_is_empty!1437)))

(assert (= (and start!4176 res!19163) b!31652))

(assert (= (and b!31652 res!19166) b!31649))

(assert (= (and b!31649 res!19165) b!31648))

(assert (= (and b!31648 res!19168) b!31654))

(assert (= (and b!31654 res!19167) b!31651))

(assert (= (and b!31651 res!19162) b!31646))

(assert (= (and b!31646 res!19164) b!31647))

(assert (= (and b!31650 condMapEmpty!1684) mapIsEmpty!1684))

(assert (= (and b!31650 (not condMapEmpty!1684)) mapNonEmpty!1684))

(get-info :version)

(assert (= (and mapNonEmpty!1684 ((_ is ValueCellFull!519) mapValue!1684)) b!31653))

(assert (= (and b!31650 ((_ is ValueCellFull!519) mapDefault!1684)) b!31655))

(assert (= start!4176 b!31650))

(declare-fun m!25381 () Bool)

(assert (=> b!31654 m!25381))

(declare-fun m!25383 () Bool)

(assert (=> b!31646 m!25383))

(declare-fun m!25385 () Bool)

(assert (=> b!31648 m!25385))

(declare-fun m!25387 () Bool)

(assert (=> start!4176 m!25387))

(declare-fun m!25389 () Bool)

(assert (=> start!4176 m!25389))

(declare-fun m!25391 () Bool)

(assert (=> start!4176 m!25391))

(declare-fun m!25393 () Bool)

(assert (=> b!31647 m!25393))

(declare-fun m!25395 () Bool)

(assert (=> b!31649 m!25395))

(declare-fun m!25397 () Bool)

(assert (=> mapNonEmpty!1684 m!25397))

(declare-fun m!25399 () Bool)

(assert (=> b!31651 m!25399))

(assert (=> b!31651 m!25399))

(declare-fun m!25401 () Bool)

(assert (=> b!31651 m!25401))

(check-sat (not mapNonEmpty!1684) (not b!31648) (not b_next!1083) (not b!31647) (not start!4176) (not b!31654) (not b!31646) tp_is_empty!1437 (not b!31651) b_and!1895 (not b!31649))
(check-sat b_and!1895 (not b_next!1083))
