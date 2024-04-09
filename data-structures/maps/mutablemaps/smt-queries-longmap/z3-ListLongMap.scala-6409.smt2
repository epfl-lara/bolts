; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82280 () Bool)

(assert start!82280)

(declare-fun b_free!18525 () Bool)

(declare-fun b_next!18525 () Bool)

(assert (=> start!82280 (= b_free!18525 (not b_next!18525))))

(declare-fun tp!64537 () Bool)

(declare-fun b_and!30031 () Bool)

(assert (=> start!82280 (= tp!64537 b_and!30031)))

(declare-fun b!958616 () Bool)

(declare-fun e!540457 () Bool)

(assert (=> b!958616 (= e!540457 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33291 0))(
  ( (V!33292 (val!10666 Int)) )
))
(declare-fun minValue!1328 () V!33291)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58577 0))(
  ( (array!58578 (arr!28158 (Array (_ BitVec 32) (_ BitVec 64))) (size!28638 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58577)

(declare-datatypes ((ValueCell!10134 0))(
  ( (ValueCellFull!10134 (v!13223 V!33291)) (EmptyCell!10134) )
))
(declare-datatypes ((array!58579 0))(
  ( (array!58580 (arr!28159 (Array (_ BitVec 32) ValueCell!10134)) (size!28639 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58579)

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430424 () Bool)

(declare-fun zeroValue!1328 () V!33291)

(declare-datatypes ((tuple2!13844 0))(
  ( (tuple2!13845 (_1!6932 (_ BitVec 64)) (_2!6932 V!33291)) )
))
(declare-datatypes ((List!19709 0))(
  ( (Nil!19706) (Cons!19705 (h!20867 tuple2!13844) (t!28080 List!19709)) )
))
(declare-datatypes ((ListLongMap!12555 0))(
  ( (ListLongMap!12556 (toList!6293 List!19709)) )
))
(declare-fun contains!5346 (ListLongMap!12555 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3478 (array!58577 array!58579 (_ BitVec 32) (_ BitVec 32) V!33291 V!33291 (_ BitVec 32) Int) ListLongMap!12555)

(assert (=> b!958616 (= lt!430424 (contains!5346 (getCurrentListMap!3478 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28158 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33826 () Bool)

(declare-fun mapRes!33826 () Bool)

(assert (=> mapIsEmpty!33826 mapRes!33826))

(declare-fun b!958617 () Bool)

(declare-fun e!540458 () Bool)

(declare-fun tp_is_empty!21231 () Bool)

(assert (=> b!958617 (= e!540458 tp_is_empty!21231)))

(declare-fun res!641781 () Bool)

(assert (=> start!82280 (=> (not res!641781) (not e!540457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82280 (= res!641781 (validMask!0 mask!2088))))

(assert (=> start!82280 e!540457))

(assert (=> start!82280 true))

(assert (=> start!82280 tp_is_empty!21231))

(declare-fun array_inv!21779 (array!58577) Bool)

(assert (=> start!82280 (array_inv!21779 _keys!1668)))

(declare-fun e!540456 () Bool)

(declare-fun array_inv!21780 (array!58579) Bool)

(assert (=> start!82280 (and (array_inv!21780 _values!1386) e!540456)))

(assert (=> start!82280 tp!64537))

(declare-fun b!958618 () Bool)

(declare-fun res!641780 () Bool)

(assert (=> b!958618 (=> (not res!641780) (not e!540457))))

(assert (=> b!958618 (= res!641780 (and (= (size!28639 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28638 _keys!1668) (size!28639 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958619 () Bool)

(declare-fun res!641779 () Bool)

(assert (=> b!958619 (=> (not res!641779) (not e!540457))))

(declare-datatypes ((List!19710 0))(
  ( (Nil!19707) (Cons!19706 (h!20868 (_ BitVec 64)) (t!28081 List!19710)) )
))
(declare-fun arrayNoDuplicates!0 (array!58577 (_ BitVec 32) List!19710) Bool)

(assert (=> b!958619 (= res!641779 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19707))))

(declare-fun b!958620 () Bool)

(declare-fun e!540454 () Bool)

(assert (=> b!958620 (= e!540456 (and e!540454 mapRes!33826))))

(declare-fun condMapEmpty!33826 () Bool)

(declare-fun mapDefault!33826 () ValueCell!10134)

(assert (=> b!958620 (= condMapEmpty!33826 (= (arr!28159 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10134)) mapDefault!33826)))))

(declare-fun b!958621 () Bool)

(assert (=> b!958621 (= e!540454 tp_is_empty!21231)))

(declare-fun b!958622 () Bool)

(declare-fun res!641777 () Bool)

(assert (=> b!958622 (=> (not res!641777) (not e!540457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958622 (= res!641777 (validKeyInArray!0 (select (arr!28158 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33826 () Bool)

(declare-fun tp!64536 () Bool)

(assert (=> mapNonEmpty!33826 (= mapRes!33826 (and tp!64536 e!540458))))

(declare-fun mapKey!33826 () (_ BitVec 32))

(declare-fun mapRest!33826 () (Array (_ BitVec 32) ValueCell!10134))

(declare-fun mapValue!33826 () ValueCell!10134)

(assert (=> mapNonEmpty!33826 (= (arr!28159 _values!1386) (store mapRest!33826 mapKey!33826 mapValue!33826))))

(declare-fun b!958623 () Bool)

(declare-fun res!641776 () Bool)

(assert (=> b!958623 (=> (not res!641776) (not e!540457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58577 (_ BitVec 32)) Bool)

(assert (=> b!958623 (= res!641776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958624 () Bool)

(declare-fun res!641778 () Bool)

(assert (=> b!958624 (=> (not res!641778) (not e!540457))))

(assert (=> b!958624 (= res!641778 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28638 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28638 _keys!1668))))))

(assert (= (and start!82280 res!641781) b!958618))

(assert (= (and b!958618 res!641780) b!958623))

(assert (= (and b!958623 res!641776) b!958619))

(assert (= (and b!958619 res!641779) b!958624))

(assert (= (and b!958624 res!641778) b!958622))

(assert (= (and b!958622 res!641777) b!958616))

(assert (= (and b!958620 condMapEmpty!33826) mapIsEmpty!33826))

(assert (= (and b!958620 (not condMapEmpty!33826)) mapNonEmpty!33826))

(get-info :version)

(assert (= (and mapNonEmpty!33826 ((_ is ValueCellFull!10134) mapValue!33826)) b!958617))

(assert (= (and b!958620 ((_ is ValueCellFull!10134) mapDefault!33826)) b!958621))

(assert (= start!82280 b!958620))

(declare-fun m!889313 () Bool)

(assert (=> b!958619 m!889313))

(declare-fun m!889315 () Bool)

(assert (=> b!958623 m!889315))

(declare-fun m!889317 () Bool)

(assert (=> start!82280 m!889317))

(declare-fun m!889319 () Bool)

(assert (=> start!82280 m!889319))

(declare-fun m!889321 () Bool)

(assert (=> start!82280 m!889321))

(declare-fun m!889323 () Bool)

(assert (=> b!958622 m!889323))

(assert (=> b!958622 m!889323))

(declare-fun m!889325 () Bool)

(assert (=> b!958622 m!889325))

(declare-fun m!889327 () Bool)

(assert (=> b!958616 m!889327))

(assert (=> b!958616 m!889323))

(assert (=> b!958616 m!889327))

(assert (=> b!958616 m!889323))

(declare-fun m!889329 () Bool)

(assert (=> b!958616 m!889329))

(declare-fun m!889331 () Bool)

(assert (=> mapNonEmpty!33826 m!889331))

(check-sat b_and!30031 tp_is_empty!21231 (not b!958623) (not b_next!18525) (not b!958616) (not mapNonEmpty!33826) (not b!958622) (not start!82280) (not b!958619))
(check-sat b_and!30031 (not b_next!18525))
