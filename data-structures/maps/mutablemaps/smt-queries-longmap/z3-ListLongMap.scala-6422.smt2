; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82358 () Bool)

(assert start!82358)

(declare-fun b_free!18597 () Bool)

(declare-fun b_next!18597 () Bool)

(assert (=> start!82358 (= b_free!18597 (not b_next!18597))))

(declare-fun tp!64761 () Bool)

(declare-fun b_and!30103 () Bool)

(assert (=> start!82358 (= tp!64761 b_and!30103)))

(declare-fun mapNonEmpty!33943 () Bool)

(declare-fun mapRes!33943 () Bool)

(declare-fun tp!64762 () Bool)

(declare-fun e!541040 () Bool)

(assert (=> mapNonEmpty!33943 (= mapRes!33943 (and tp!64762 e!541040))))

(declare-fun mapKey!33943 () (_ BitVec 32))

(declare-datatypes ((V!33395 0))(
  ( (V!33396 (val!10705 Int)) )
))
(declare-datatypes ((ValueCell!10173 0))(
  ( (ValueCellFull!10173 (v!13262 V!33395)) (EmptyCell!10173) )
))
(declare-fun mapValue!33943 () ValueCell!10173)

(declare-datatypes ((array!58725 0))(
  ( (array!58726 (arr!28232 (Array (_ BitVec 32) ValueCell!10173)) (size!28712 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58725)

(declare-fun mapRest!33943 () (Array (_ BitVec 32) ValueCell!10173))

(assert (=> mapNonEmpty!33943 (= (arr!28232 _values!1386) (store mapRest!33943 mapKey!33943 mapValue!33943))))

(declare-fun b!959732 () Bool)

(declare-fun res!642546 () Bool)

(declare-fun e!541043 () Bool)

(assert (=> b!959732 (=> (not res!642546) (not e!541043))))

(declare-datatypes ((array!58727 0))(
  ( (array!58728 (arr!28233 (Array (_ BitVec 32) (_ BitVec 64))) (size!28713 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58727)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58727 (_ BitVec 32)) Bool)

(assert (=> b!959732 (= res!642546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959733 () Bool)

(declare-fun e!541039 () Bool)

(declare-fun e!541041 () Bool)

(assert (=> b!959733 (= e!541039 (and e!541041 mapRes!33943))))

(declare-fun condMapEmpty!33943 () Bool)

(declare-fun mapDefault!33943 () ValueCell!10173)

(assert (=> b!959733 (= condMapEmpty!33943 (= (arr!28232 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10173)) mapDefault!33943)))))

(declare-fun b!959734 () Bool)

(declare-fun res!642543 () Bool)

(assert (=> b!959734 (=> (not res!642543) (not e!541043))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959734 (= res!642543 (validKeyInArray!0 (select (arr!28233 _keys!1668) i!793)))))

(declare-fun b!959735 () Bool)

(assert (=> b!959735 (= e!541043 false)))

(declare-fun minValue!1328 () V!33395)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430532 () Bool)

(declare-fun zeroValue!1328 () V!33395)

(declare-datatypes ((tuple2!13892 0))(
  ( (tuple2!13893 (_1!6956 (_ BitVec 64)) (_2!6956 V!33395)) )
))
(declare-datatypes ((List!19757 0))(
  ( (Nil!19754) (Cons!19753 (h!20915 tuple2!13892) (t!28128 List!19757)) )
))
(declare-datatypes ((ListLongMap!12603 0))(
  ( (ListLongMap!12604 (toList!6317 List!19757)) )
))
(declare-fun contains!5367 (ListLongMap!12603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3502 (array!58727 array!58725 (_ BitVec 32) (_ BitVec 32) V!33395 V!33395 (_ BitVec 32) Int) ListLongMap!12603)

(assert (=> b!959735 (= lt!430532 (contains!5367 (getCurrentListMap!3502 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28233 _keys!1668) i!793)))))

(declare-fun b!959736 () Bool)

(declare-fun res!642544 () Bool)

(assert (=> b!959736 (=> (not res!642544) (not e!541043))))

(assert (=> b!959736 (= res!642544 (and (= (size!28712 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28713 _keys!1668) (size!28712 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959737 () Bool)

(declare-fun tp_is_empty!21309 () Bool)

(assert (=> b!959737 (= e!541041 tp_is_empty!21309)))

(declare-fun res!642541 () Bool)

(assert (=> start!82358 (=> (not res!642541) (not e!541043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82358 (= res!642541 (validMask!0 mask!2088))))

(assert (=> start!82358 e!541043))

(assert (=> start!82358 true))

(assert (=> start!82358 tp_is_empty!21309))

(declare-fun array_inv!21829 (array!58727) Bool)

(assert (=> start!82358 (array_inv!21829 _keys!1668)))

(declare-fun array_inv!21830 (array!58725) Bool)

(assert (=> start!82358 (and (array_inv!21830 _values!1386) e!541039)))

(assert (=> start!82358 tp!64761))

(declare-fun b!959738 () Bool)

(assert (=> b!959738 (= e!541040 tp_is_empty!21309)))

(declare-fun b!959739 () Bool)

(declare-fun res!642542 () Bool)

(assert (=> b!959739 (=> (not res!642542) (not e!541043))))

(declare-datatypes ((List!19758 0))(
  ( (Nil!19755) (Cons!19754 (h!20916 (_ BitVec 64)) (t!28129 List!19758)) )
))
(declare-fun arrayNoDuplicates!0 (array!58727 (_ BitVec 32) List!19758) Bool)

(assert (=> b!959739 (= res!642542 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19755))))

(declare-fun mapIsEmpty!33943 () Bool)

(assert (=> mapIsEmpty!33943 mapRes!33943))

(declare-fun b!959740 () Bool)

(declare-fun res!642545 () Bool)

(assert (=> b!959740 (=> (not res!642545) (not e!541043))))

(assert (=> b!959740 (= res!642545 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28713 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28713 _keys!1668))))))

(assert (= (and start!82358 res!642541) b!959736))

(assert (= (and b!959736 res!642544) b!959732))

(assert (= (and b!959732 res!642546) b!959739))

(assert (= (and b!959739 res!642542) b!959740))

(assert (= (and b!959740 res!642545) b!959734))

(assert (= (and b!959734 res!642543) b!959735))

(assert (= (and b!959733 condMapEmpty!33943) mapIsEmpty!33943))

(assert (= (and b!959733 (not condMapEmpty!33943)) mapNonEmpty!33943))

(get-info :version)

(assert (= (and mapNonEmpty!33943 ((_ is ValueCellFull!10173) mapValue!33943)) b!959738))

(assert (= (and b!959733 ((_ is ValueCellFull!10173) mapDefault!33943)) b!959737))

(assert (= start!82358 b!959733))

(declare-fun m!890225 () Bool)

(assert (=> b!959739 m!890225))

(declare-fun m!890227 () Bool)

(assert (=> b!959732 m!890227))

(declare-fun m!890229 () Bool)

(assert (=> b!959734 m!890229))

(assert (=> b!959734 m!890229))

(declare-fun m!890231 () Bool)

(assert (=> b!959734 m!890231))

(declare-fun m!890233 () Bool)

(assert (=> b!959735 m!890233))

(assert (=> b!959735 m!890229))

(assert (=> b!959735 m!890233))

(assert (=> b!959735 m!890229))

(declare-fun m!890235 () Bool)

(assert (=> b!959735 m!890235))

(declare-fun m!890237 () Bool)

(assert (=> mapNonEmpty!33943 m!890237))

(declare-fun m!890239 () Bool)

(assert (=> start!82358 m!890239))

(declare-fun m!890241 () Bool)

(assert (=> start!82358 m!890241))

(declare-fun m!890243 () Bool)

(assert (=> start!82358 m!890243))

(check-sat tp_is_empty!21309 (not b!959734) b_and!30103 (not b_next!18597) (not b!959735) (not mapNonEmpty!33943) (not start!82358) (not b!959739) (not b!959732))
(check-sat b_and!30103 (not b_next!18597))
