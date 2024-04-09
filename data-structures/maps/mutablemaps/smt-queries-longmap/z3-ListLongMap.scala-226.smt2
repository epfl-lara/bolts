; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4038 () Bool)

(assert start!4038)

(declare-fun b_free!945 () Bool)

(declare-fun b_next!945 () Bool)

(assert (=> start!4038 (= b_free!945 (not b_next!945))))

(declare-fun tp!4255 () Bool)

(declare-fun b_and!1757 () Bool)

(assert (=> start!4038 (= tp!4255 b_and!1757)))

(declare-fun res!17759 () Bool)

(declare-fun e!19114 () Bool)

(assert (=> start!4038 (=> (not res!17759) (not e!19114))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4038 (= res!17759 (validMask!0 mask!2294))))

(assert (=> start!4038 e!19114))

(assert (=> start!4038 true))

(assert (=> start!4038 tp!4255))

(declare-datatypes ((V!1557 0))(
  ( (V!1558 (val!676 Int)) )
))
(declare-datatypes ((ValueCell!450 0))(
  ( (ValueCellFull!450 (v!1765 V!1557)) (EmptyCell!450) )
))
(declare-datatypes ((array!1819 0))(
  ( (array!1820 (arr!863 (Array (_ BitVec 32) ValueCell!450)) (size!964 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1819)

(declare-fun e!19116 () Bool)

(declare-fun array_inv!583 (array!1819) Bool)

(assert (=> start!4038 (and (array_inv!583 _values!1501) e!19116)))

(declare-datatypes ((array!1821 0))(
  ( (array!1822 (arr!864 (Array (_ BitVec 32) (_ BitVec 64))) (size!965 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1821)

(declare-fun array_inv!584 (array!1821) Bool)

(assert (=> start!4038 (array_inv!584 _keys!1833)))

(declare-fun tp_is_empty!1299 () Bool)

(assert (=> start!4038 tp_is_empty!1299))

(declare-fun mapNonEmpty!1477 () Bool)

(declare-fun mapRes!1477 () Bool)

(declare-fun tp!4254 () Bool)

(declare-fun e!19113 () Bool)

(assert (=> mapNonEmpty!1477 (= mapRes!1477 (and tp!4254 e!19113))))

(declare-fun mapValue!1477 () ValueCell!450)

(declare-fun mapRest!1477 () (Array (_ BitVec 32) ValueCell!450))

(declare-fun mapKey!1477 () (_ BitVec 32))

(assert (=> mapNonEmpty!1477 (= (arr!863 _values!1501) (store mapRest!1477 mapKey!1477 mapValue!1477))))

(declare-fun b!29620 () Bool)

(declare-fun res!17757 () Bool)

(assert (=> b!29620 (=> (not res!17757) (not e!19114))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!29620 (= res!17757 (and (= (size!964 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!965 _keys!1833) (size!964 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29621 () Bool)

(declare-fun res!17761 () Bool)

(assert (=> b!29621 (=> (not res!17761) (not e!19114))))

(declare-datatypes ((List!713 0))(
  ( (Nil!710) (Cons!709 (h!1276 (_ BitVec 64)) (t!3408 List!713)) )
))
(declare-fun arrayNoDuplicates!0 (array!1821 (_ BitVec 32) List!713) Bool)

(assert (=> b!29621 (= res!17761 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!710))))

(declare-fun b!29622 () Bool)

(declare-fun res!17758 () Bool)

(assert (=> b!29622 (=> (not res!17758) (not e!19114))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29622 (= res!17758 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1477 () Bool)

(assert (=> mapIsEmpty!1477 mapRes!1477))

(declare-fun b!29623 () Bool)

(assert (=> b!29623 (= e!19114 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11352 () Bool)

(declare-fun zeroValue!1443 () V!1557)

(declare-fun minValue!1443 () V!1557)

(declare-datatypes ((tuple2!1108 0))(
  ( (tuple2!1109 (_1!564 (_ BitVec 64)) (_2!564 V!1557)) )
))
(declare-datatypes ((List!714 0))(
  ( (Nil!711) (Cons!710 (h!1277 tuple2!1108) (t!3409 List!714)) )
))
(declare-datatypes ((ListLongMap!689 0))(
  ( (ListLongMap!690 (toList!360 List!714)) )
))
(declare-fun contains!297 (ListLongMap!689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!187 (array!1821 array!1819 (_ BitVec 32) (_ BitVec 32) V!1557 V!1557 (_ BitVec 32) Int) ListLongMap!689)

(assert (=> b!29623 (= lt!11352 (contains!297 (getCurrentListMap!187 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun b!29624 () Bool)

(declare-fun res!17760 () Bool)

(assert (=> b!29624 (=> (not res!17760) (not e!19114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1821 (_ BitVec 32)) Bool)

(assert (=> b!29624 (= res!17760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29625 () Bool)

(assert (=> b!29625 (= e!19113 tp_is_empty!1299)))

(declare-fun b!29626 () Bool)

(declare-fun e!19115 () Bool)

(assert (=> b!29626 (= e!19115 tp_is_empty!1299)))

(declare-fun b!29627 () Bool)

(assert (=> b!29627 (= e!19116 (and e!19115 mapRes!1477))))

(declare-fun condMapEmpty!1477 () Bool)

(declare-fun mapDefault!1477 () ValueCell!450)

(assert (=> b!29627 (= condMapEmpty!1477 (= (arr!863 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!450)) mapDefault!1477)))))

(assert (= (and start!4038 res!17759) b!29620))

(assert (= (and b!29620 res!17757) b!29624))

(assert (= (and b!29624 res!17760) b!29621))

(assert (= (and b!29621 res!17761) b!29622))

(assert (= (and b!29622 res!17758) b!29623))

(assert (= (and b!29627 condMapEmpty!1477) mapIsEmpty!1477))

(assert (= (and b!29627 (not condMapEmpty!1477)) mapNonEmpty!1477))

(get-info :version)

(assert (= (and mapNonEmpty!1477 ((_ is ValueCellFull!450) mapValue!1477)) b!29625))

(assert (= (and b!29627 ((_ is ValueCellFull!450) mapDefault!1477)) b!29626))

(assert (= start!4038 b!29627))

(declare-fun m!23871 () Bool)

(assert (=> b!29623 m!23871))

(assert (=> b!29623 m!23871))

(declare-fun m!23873 () Bool)

(assert (=> b!29623 m!23873))

(declare-fun m!23875 () Bool)

(assert (=> mapNonEmpty!1477 m!23875))

(declare-fun m!23877 () Bool)

(assert (=> start!4038 m!23877))

(declare-fun m!23879 () Bool)

(assert (=> start!4038 m!23879))

(declare-fun m!23881 () Bool)

(assert (=> start!4038 m!23881))

(declare-fun m!23883 () Bool)

(assert (=> b!29624 m!23883))

(declare-fun m!23885 () Bool)

(assert (=> b!29622 m!23885))

(declare-fun m!23887 () Bool)

(assert (=> b!29621 m!23887))

(check-sat (not b!29624) b_and!1757 tp_is_empty!1299 (not start!4038) (not b!29622) (not b_next!945) (not b!29621) (not b!29623) (not mapNonEmpty!1477))
(check-sat b_and!1757 (not b_next!945))
