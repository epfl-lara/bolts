; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108410 () Bool)

(assert start!108410)

(declare-fun b_free!27921 () Bool)

(declare-fun b_next!27921 () Bool)

(assert (=> start!108410 (= b_free!27921 (not b_next!27921))))

(declare-fun tp!98874 () Bool)

(declare-fun b_and!45991 () Bool)

(assert (=> start!108410 (= tp!98874 b_and!45991)))

(declare-fun b!1278958 () Bool)

(declare-fun res!849692 () Bool)

(declare-fun e!730749 () Bool)

(assert (=> b!1278958 (=> (not res!849692) (not e!730749))))

(declare-datatypes ((array!84159 0))(
  ( (array!84160 (arr!40579 (Array (_ BitVec 32) (_ BitVec 64))) (size!41130 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84159)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84159 (_ BitVec 32)) Bool)

(assert (=> b!1278958 (= res!849692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278959 () Bool)

(declare-fun e!730747 () Bool)

(declare-fun tp_is_empty!33561 () Bool)

(assert (=> b!1278959 (= e!730747 tp_is_empty!33561)))

(declare-fun mapNonEmpty!51893 () Bool)

(declare-fun mapRes!51893 () Bool)

(declare-fun tp!98873 () Bool)

(declare-fun e!730748 () Bool)

(assert (=> mapNonEmpty!51893 (= mapRes!51893 (and tp!98873 e!730748))))

(declare-datatypes ((V!49851 0))(
  ( (V!49852 (val!16855 Int)) )
))
(declare-datatypes ((ValueCell!15882 0))(
  ( (ValueCellFull!15882 (v!19453 V!49851)) (EmptyCell!15882) )
))
(declare-fun mapRest!51893 () (Array (_ BitVec 32) ValueCell!15882))

(declare-fun mapValue!51893 () ValueCell!15882)

(declare-fun mapKey!51893 () (_ BitVec 32))

(declare-datatypes ((array!84161 0))(
  ( (array!84162 (arr!40580 (Array (_ BitVec 32) ValueCell!15882)) (size!41131 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84161)

(assert (=> mapNonEmpty!51893 (= (arr!40580 _values!1445) (store mapRest!51893 mapKey!51893 mapValue!51893))))

(declare-fun b!1278960 () Bool)

(declare-fun res!849688 () Bool)

(assert (=> b!1278960 (=> (not res!849688) (not e!730749))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1278960 (= res!849688 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41130 _keys!1741))))))

(declare-fun res!849689 () Bool)

(assert (=> start!108410 (=> (not res!849689) (not e!730749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108410 (= res!849689 (validMask!0 mask!2175))))

(assert (=> start!108410 e!730749))

(assert (=> start!108410 tp_is_empty!33561))

(assert (=> start!108410 true))

(declare-fun e!730750 () Bool)

(declare-fun array_inv!30797 (array!84161) Bool)

(assert (=> start!108410 (and (array_inv!30797 _values!1445) e!730750)))

(declare-fun array_inv!30798 (array!84159) Bool)

(assert (=> start!108410 (array_inv!30798 _keys!1741)))

(assert (=> start!108410 tp!98874))

(declare-fun b!1278961 () Bool)

(assert (=> b!1278961 (= e!730748 tp_is_empty!33561)))

(declare-fun b!1278962 () Bool)

(assert (=> b!1278962 (= e!730749 false)))

(declare-fun zeroValue!1387 () V!49851)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!49851)

(declare-fun lt!575899 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21712 0))(
  ( (tuple2!21713 (_1!10866 (_ BitVec 64)) (_2!10866 V!49851)) )
))
(declare-datatypes ((List!28924 0))(
  ( (Nil!28921) (Cons!28920 (h!30129 tuple2!21712) (t!42471 List!28924)) )
))
(declare-datatypes ((ListLongMap!19381 0))(
  ( (ListLongMap!19382 (toList!9706 List!28924)) )
))
(declare-fun contains!7759 (ListLongMap!19381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4726 (array!84159 array!84161 (_ BitVec 32) (_ BitVec 32) V!49851 V!49851 (_ BitVec 32) Int) ListLongMap!19381)

(assert (=> b!1278962 (= lt!575899 (contains!7759 (getCurrentListMap!4726 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1278963 () Bool)

(declare-fun res!849690 () Bool)

(assert (=> b!1278963 (=> (not res!849690) (not e!730749))))

(assert (=> b!1278963 (= res!849690 (and (= (size!41131 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41130 _keys!1741) (size!41131 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51893 () Bool)

(assert (=> mapIsEmpty!51893 mapRes!51893))

(declare-fun b!1278964 () Bool)

(declare-fun res!849691 () Bool)

(assert (=> b!1278964 (=> (not res!849691) (not e!730749))))

(declare-datatypes ((List!28925 0))(
  ( (Nil!28922) (Cons!28921 (h!30130 (_ BitVec 64)) (t!42472 List!28925)) )
))
(declare-fun arrayNoDuplicates!0 (array!84159 (_ BitVec 32) List!28925) Bool)

(assert (=> b!1278964 (= res!849691 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28922))))

(declare-fun b!1278965 () Bool)

(assert (=> b!1278965 (= e!730750 (and e!730747 mapRes!51893))))

(declare-fun condMapEmpty!51893 () Bool)

(declare-fun mapDefault!51893 () ValueCell!15882)

(assert (=> b!1278965 (= condMapEmpty!51893 (= (arr!40580 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15882)) mapDefault!51893)))))

(assert (= (and start!108410 res!849689) b!1278963))

(assert (= (and b!1278963 res!849690) b!1278958))

(assert (= (and b!1278958 res!849692) b!1278964))

(assert (= (and b!1278964 res!849691) b!1278960))

(assert (= (and b!1278960 res!849688) b!1278962))

(assert (= (and b!1278965 condMapEmpty!51893) mapIsEmpty!51893))

(assert (= (and b!1278965 (not condMapEmpty!51893)) mapNonEmpty!51893))

(get-info :version)

(assert (= (and mapNonEmpty!51893 ((_ is ValueCellFull!15882) mapValue!51893)) b!1278961))

(assert (= (and b!1278965 ((_ is ValueCellFull!15882) mapDefault!51893)) b!1278959))

(assert (= start!108410 b!1278965))

(declare-fun m!1174095 () Bool)

(assert (=> b!1278964 m!1174095))

(declare-fun m!1174097 () Bool)

(assert (=> b!1278962 m!1174097))

(assert (=> b!1278962 m!1174097))

(declare-fun m!1174099 () Bool)

(assert (=> b!1278962 m!1174099))

(declare-fun m!1174101 () Bool)

(assert (=> b!1278958 m!1174101))

(declare-fun m!1174103 () Bool)

(assert (=> mapNonEmpty!51893 m!1174103))

(declare-fun m!1174105 () Bool)

(assert (=> start!108410 m!1174105))

(declare-fun m!1174107 () Bool)

(assert (=> start!108410 m!1174107))

(declare-fun m!1174109 () Bool)

(assert (=> start!108410 m!1174109))

(check-sat (not b!1278962) tp_is_empty!33561 (not b_next!27921) (not b!1278958) (not b!1278964) b_and!45991 (not mapNonEmpty!51893) (not start!108410))
(check-sat b_and!45991 (not b_next!27921))
