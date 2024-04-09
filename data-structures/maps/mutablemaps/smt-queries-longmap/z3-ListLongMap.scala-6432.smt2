; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82418 () Bool)

(assert start!82418)

(declare-fun b_free!18657 () Bool)

(declare-fun b_next!18657 () Bool)

(assert (=> start!82418 (= b_free!18657 (not b_next!18657))))

(declare-fun tp!64941 () Bool)

(declare-fun b_and!30163 () Bool)

(assert (=> start!82418 (= tp!64941 b_and!30163)))

(declare-fun b!960542 () Bool)

(declare-fun e!541491 () Bool)

(declare-fun e!541492 () Bool)

(declare-fun mapRes!34033 () Bool)

(assert (=> b!960542 (= e!541491 (and e!541492 mapRes!34033))))

(declare-fun condMapEmpty!34033 () Bool)

(declare-datatypes ((V!33475 0))(
  ( (V!33476 (val!10735 Int)) )
))
(declare-datatypes ((ValueCell!10203 0))(
  ( (ValueCellFull!10203 (v!13292 V!33475)) (EmptyCell!10203) )
))
(declare-datatypes ((array!58837 0))(
  ( (array!58838 (arr!28288 (Array (_ BitVec 32) ValueCell!10203)) (size!28768 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58837)

(declare-fun mapDefault!34033 () ValueCell!10203)

(assert (=> b!960542 (= condMapEmpty!34033 (= (arr!28288 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10203)) mapDefault!34033)))))

(declare-fun b!960543 () Bool)

(declare-fun res!643084 () Bool)

(declare-fun e!541493 () Bool)

(assert (=> b!960543 (=> (not res!643084) (not e!541493))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((array!58839 0))(
  ( (array!58840 (arr!28289 (Array (_ BitVec 32) (_ BitVec 64))) (size!28769 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58839)

(assert (=> b!960543 (= res!643084 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28769 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28769 _keys!1668))))))

(declare-fun b!960544 () Bool)

(declare-fun res!643086 () Bool)

(assert (=> b!960544 (=> (not res!643086) (not e!541493))))

(declare-datatypes ((List!19789 0))(
  ( (Nil!19786) (Cons!19785 (h!20947 (_ BitVec 64)) (t!28160 List!19789)) )
))
(declare-fun arrayNoDuplicates!0 (array!58839 (_ BitVec 32) List!19789) Bool)

(assert (=> b!960544 (= res!643086 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19786))))

(declare-fun b!960545 () Bool)

(declare-fun res!643085 () Bool)

(assert (=> b!960545 (=> (not res!643085) (not e!541493))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58839 (_ BitVec 32)) Bool)

(assert (=> b!960545 (= res!643085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960546 () Bool)

(declare-fun e!541489 () Bool)

(declare-fun tp_is_empty!21369 () Bool)

(assert (=> b!960546 (= e!541489 tp_is_empty!21369)))

(declare-fun mapIsEmpty!34033 () Bool)

(assert (=> mapIsEmpty!34033 mapRes!34033))

(declare-fun b!960547 () Bool)

(declare-fun res!643083 () Bool)

(assert (=> b!960547 (=> (not res!643083) (not e!541493))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960547 (= res!643083 (and (= (size!28768 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28769 _keys!1668) (size!28768 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!643081 () Bool)

(assert (=> start!82418 (=> (not res!643081) (not e!541493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82418 (= res!643081 (validMask!0 mask!2088))))

(assert (=> start!82418 e!541493))

(assert (=> start!82418 true))

(assert (=> start!82418 tp_is_empty!21369))

(declare-fun array_inv!21857 (array!58839) Bool)

(assert (=> start!82418 (array_inv!21857 _keys!1668)))

(declare-fun array_inv!21858 (array!58837) Bool)

(assert (=> start!82418 (and (array_inv!21858 _values!1386) e!541491)))

(assert (=> start!82418 tp!64941))

(declare-fun b!960548 () Bool)

(assert (=> b!960548 (= e!541493 false)))

(declare-fun lt!430622 () Bool)

(declare-fun minValue!1328 () V!33475)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33475)

(declare-datatypes ((tuple2!13930 0))(
  ( (tuple2!13931 (_1!6975 (_ BitVec 64)) (_2!6975 V!33475)) )
))
(declare-datatypes ((List!19790 0))(
  ( (Nil!19787) (Cons!19786 (h!20948 tuple2!13930) (t!28161 List!19790)) )
))
(declare-datatypes ((ListLongMap!12641 0))(
  ( (ListLongMap!12642 (toList!6336 List!19790)) )
))
(declare-fun contains!5386 (ListLongMap!12641 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3521 (array!58839 array!58837 (_ BitVec 32) (_ BitVec 32) V!33475 V!33475 (_ BitVec 32) Int) ListLongMap!12641)

(assert (=> b!960548 (= lt!430622 (contains!5386 (getCurrentListMap!3521 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28289 _keys!1668) i!793)))))

(declare-fun b!960549 () Bool)

(declare-fun res!643082 () Bool)

(assert (=> b!960549 (=> (not res!643082) (not e!541493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960549 (= res!643082 (validKeyInArray!0 (select (arr!28289 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!34033 () Bool)

(declare-fun tp!64942 () Bool)

(assert (=> mapNonEmpty!34033 (= mapRes!34033 (and tp!64942 e!541489))))

(declare-fun mapKey!34033 () (_ BitVec 32))

(declare-fun mapRest!34033 () (Array (_ BitVec 32) ValueCell!10203))

(declare-fun mapValue!34033 () ValueCell!10203)

(assert (=> mapNonEmpty!34033 (= (arr!28288 _values!1386) (store mapRest!34033 mapKey!34033 mapValue!34033))))

(declare-fun b!960550 () Bool)

(assert (=> b!960550 (= e!541492 tp_is_empty!21369)))

(assert (= (and start!82418 res!643081) b!960547))

(assert (= (and b!960547 res!643083) b!960545))

(assert (= (and b!960545 res!643085) b!960544))

(assert (= (and b!960544 res!643086) b!960543))

(assert (= (and b!960543 res!643084) b!960549))

(assert (= (and b!960549 res!643082) b!960548))

(assert (= (and b!960542 condMapEmpty!34033) mapIsEmpty!34033))

(assert (= (and b!960542 (not condMapEmpty!34033)) mapNonEmpty!34033))

(get-info :version)

(assert (= (and mapNonEmpty!34033 ((_ is ValueCellFull!10203) mapValue!34033)) b!960546))

(assert (= (and b!960542 ((_ is ValueCellFull!10203) mapDefault!34033)) b!960550))

(assert (= start!82418 b!960542))

(declare-fun m!890825 () Bool)

(assert (=> b!960549 m!890825))

(assert (=> b!960549 m!890825))

(declare-fun m!890827 () Bool)

(assert (=> b!960549 m!890827))

(declare-fun m!890829 () Bool)

(assert (=> b!960548 m!890829))

(assert (=> b!960548 m!890825))

(assert (=> b!960548 m!890829))

(assert (=> b!960548 m!890825))

(declare-fun m!890831 () Bool)

(assert (=> b!960548 m!890831))

(declare-fun m!890833 () Bool)

(assert (=> mapNonEmpty!34033 m!890833))

(declare-fun m!890835 () Bool)

(assert (=> b!960545 m!890835))

(declare-fun m!890837 () Bool)

(assert (=> b!960544 m!890837))

(declare-fun m!890839 () Bool)

(assert (=> start!82418 m!890839))

(declare-fun m!890841 () Bool)

(assert (=> start!82418 m!890841))

(declare-fun m!890843 () Bool)

(assert (=> start!82418 m!890843))

(check-sat b_and!30163 (not b!960548) (not b!960549) tp_is_empty!21369 (not mapNonEmpty!34033) (not b!960545) (not b_next!18657) (not start!82418) (not b!960544))
(check-sat b_and!30163 (not b_next!18657))
