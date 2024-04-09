; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108810 () Bool)

(assert start!108810)

(declare-fun b_free!28287 () Bool)

(declare-fun b_next!28287 () Bool)

(assert (=> start!108810 (= b_free!28287 (not b_next!28287))))

(declare-fun tp!99978 () Bool)

(declare-fun b_and!46363 () Bool)

(assert (=> start!108810 (= tp!99978 b_and!46363)))

(declare-fun b!1284378 () Bool)

(declare-fun res!853317 () Bool)

(declare-fun e!733690 () Bool)

(assert (=> b!1284378 (=> (not res!853317) (not e!733690))))

(declare-datatypes ((array!84869 0))(
  ( (array!84870 (arr!40932 (Array (_ BitVec 32) (_ BitVec 64))) (size!41483 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84869)

(declare-datatypes ((List!29175 0))(
  ( (Nil!29172) (Cons!29171 (h!30380 (_ BitVec 64)) (t!42726 List!29175)) )
))
(declare-fun arrayNoDuplicates!0 (array!84869 (_ BitVec 32) List!29175) Bool)

(assert (=> b!1284378 (= res!853317 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29172))))

(declare-fun mapNonEmpty!52448 () Bool)

(declare-fun mapRes!52448 () Bool)

(declare-fun tp!99977 () Bool)

(declare-fun e!733688 () Bool)

(assert (=> mapNonEmpty!52448 (= mapRes!52448 (and tp!99977 e!733688))))

(declare-datatypes ((V!50339 0))(
  ( (V!50340 (val!17038 Int)) )
))
(declare-datatypes ((ValueCell!16065 0))(
  ( (ValueCellFull!16065 (v!19638 V!50339)) (EmptyCell!16065) )
))
(declare-fun mapRest!52448 () (Array (_ BitVec 32) ValueCell!16065))

(declare-datatypes ((array!84871 0))(
  ( (array!84872 (arr!40933 (Array (_ BitVec 32) ValueCell!16065)) (size!41484 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84871)

(declare-fun mapValue!52448 () ValueCell!16065)

(declare-fun mapKey!52448 () (_ BitVec 32))

(assert (=> mapNonEmpty!52448 (= (arr!40933 _values!1445) (store mapRest!52448 mapKey!52448 mapValue!52448))))

(declare-fun b!1284379 () Bool)

(declare-fun res!853313 () Bool)

(assert (=> b!1284379 (=> (not res!853313) (not e!733690))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284379 (= res!853313 (and (= (size!41484 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41483 _keys!1741) (size!41484 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284380 () Bool)

(assert (=> b!1284380 (= e!733690 false)))

(declare-fun minValue!1387 () V!50339)

(declare-fun zeroValue!1387 () V!50339)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576753 () Bool)

(declare-datatypes ((tuple2!21968 0))(
  ( (tuple2!21969 (_1!10994 (_ BitVec 64)) (_2!10994 V!50339)) )
))
(declare-datatypes ((List!29176 0))(
  ( (Nil!29173) (Cons!29172 (h!30381 tuple2!21968) (t!42727 List!29176)) )
))
(declare-datatypes ((ListLongMap!19637 0))(
  ( (ListLongMap!19638 (toList!9834 List!29176)) )
))
(declare-fun contains!7889 (ListLongMap!19637 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4852 (array!84869 array!84871 (_ BitVec 32) (_ BitVec 32) V!50339 V!50339 (_ BitVec 32) Int) ListLongMap!19637)

(assert (=> b!1284380 (= lt!576753 (contains!7889 (getCurrentListMap!4852 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284381 () Bool)

(declare-fun e!733689 () Bool)

(declare-fun tp_is_empty!33927 () Bool)

(assert (=> b!1284381 (= e!733689 tp_is_empty!33927)))

(declare-fun b!1284382 () Bool)

(declare-fun res!853314 () Bool)

(assert (=> b!1284382 (=> (not res!853314) (not e!733690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84869 (_ BitVec 32)) Bool)

(assert (=> b!1284382 (= res!853314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284383 () Bool)

(declare-fun res!853316 () Bool)

(assert (=> b!1284383 (=> (not res!853316) (not e!733690))))

(assert (=> b!1284383 (= res!853316 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41483 _keys!1741))))))

(declare-fun res!853315 () Bool)

(assert (=> start!108810 (=> (not res!853315) (not e!733690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108810 (= res!853315 (validMask!0 mask!2175))))

(assert (=> start!108810 e!733690))

(assert (=> start!108810 tp_is_empty!33927))

(assert (=> start!108810 true))

(declare-fun e!733687 () Bool)

(declare-fun array_inv!31025 (array!84871) Bool)

(assert (=> start!108810 (and (array_inv!31025 _values!1445) e!733687)))

(declare-fun array_inv!31026 (array!84869) Bool)

(assert (=> start!108810 (array_inv!31026 _keys!1741)))

(assert (=> start!108810 tp!99978))

(declare-fun mapIsEmpty!52448 () Bool)

(assert (=> mapIsEmpty!52448 mapRes!52448))

(declare-fun b!1284384 () Bool)

(assert (=> b!1284384 (= e!733687 (and e!733689 mapRes!52448))))

(declare-fun condMapEmpty!52448 () Bool)

(declare-fun mapDefault!52448 () ValueCell!16065)

(assert (=> b!1284384 (= condMapEmpty!52448 (= (arr!40933 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16065)) mapDefault!52448)))))

(declare-fun b!1284385 () Bool)

(assert (=> b!1284385 (= e!733688 tp_is_empty!33927)))

(assert (= (and start!108810 res!853315) b!1284379))

(assert (= (and b!1284379 res!853313) b!1284382))

(assert (= (and b!1284382 res!853314) b!1284378))

(assert (= (and b!1284378 res!853317) b!1284383))

(assert (= (and b!1284383 res!853316) b!1284380))

(assert (= (and b!1284384 condMapEmpty!52448) mapIsEmpty!52448))

(assert (= (and b!1284384 (not condMapEmpty!52448)) mapNonEmpty!52448))

(get-info :version)

(assert (= (and mapNonEmpty!52448 ((_ is ValueCellFull!16065) mapValue!52448)) b!1284385))

(assert (= (and b!1284384 ((_ is ValueCellFull!16065) mapDefault!52448)) b!1284381))

(assert (= start!108810 b!1284384))

(declare-fun m!1178095 () Bool)

(assert (=> start!108810 m!1178095))

(declare-fun m!1178097 () Bool)

(assert (=> start!108810 m!1178097))

(declare-fun m!1178099 () Bool)

(assert (=> start!108810 m!1178099))

(declare-fun m!1178101 () Bool)

(assert (=> b!1284382 m!1178101))

(declare-fun m!1178103 () Bool)

(assert (=> b!1284380 m!1178103))

(assert (=> b!1284380 m!1178103))

(declare-fun m!1178105 () Bool)

(assert (=> b!1284380 m!1178105))

(declare-fun m!1178107 () Bool)

(assert (=> mapNonEmpty!52448 m!1178107))

(declare-fun m!1178109 () Bool)

(assert (=> b!1284378 m!1178109))

(check-sat tp_is_empty!33927 (not b!1284378) (not start!108810) (not mapNonEmpty!52448) (not b!1284380) b_and!46363 (not b!1284382) (not b_next!28287))
(check-sat b_and!46363 (not b_next!28287))
