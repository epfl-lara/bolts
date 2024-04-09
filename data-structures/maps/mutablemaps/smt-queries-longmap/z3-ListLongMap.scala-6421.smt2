; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82352 () Bool)

(assert start!82352)

(declare-fun b_free!18591 () Bool)

(declare-fun b_next!18591 () Bool)

(assert (=> start!82352 (= b_free!18591 (not b_next!18591))))

(declare-fun tp!64743 () Bool)

(declare-fun b_and!30097 () Bool)

(assert (=> start!82352 (= tp!64743 b_and!30097)))

(declare-fun b!959651 () Bool)

(declare-fun res!642491 () Bool)

(declare-fun e!540995 () Bool)

(assert (=> b!959651 (=> (not res!642491) (not e!540995))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58713 0))(
  ( (array!58714 (arr!28226 (Array (_ BitVec 32) (_ BitVec 64))) (size!28706 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58713)

(declare-datatypes ((V!33387 0))(
  ( (V!33388 (val!10702 Int)) )
))
(declare-datatypes ((ValueCell!10170 0))(
  ( (ValueCellFull!10170 (v!13259 V!33387)) (EmptyCell!10170) )
))
(declare-datatypes ((array!58715 0))(
  ( (array!58716 (arr!28227 (Array (_ BitVec 32) ValueCell!10170)) (size!28707 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58715)

(assert (=> b!959651 (= res!642491 (and (= (size!28707 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28706 _keys!1668) (size!28707 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959652 () Bool)

(declare-fun e!540994 () Bool)

(declare-fun tp_is_empty!21303 () Bool)

(assert (=> b!959652 (= e!540994 tp_is_empty!21303)))

(declare-fun res!642492 () Bool)

(assert (=> start!82352 (=> (not res!642492) (not e!540995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82352 (= res!642492 (validMask!0 mask!2088))))

(assert (=> start!82352 e!540995))

(assert (=> start!82352 true))

(assert (=> start!82352 tp_is_empty!21303))

(declare-fun array_inv!21825 (array!58713) Bool)

(assert (=> start!82352 (array_inv!21825 _keys!1668)))

(declare-fun e!540997 () Bool)

(declare-fun array_inv!21826 (array!58715) Bool)

(assert (=> start!82352 (and (array_inv!21826 _values!1386) e!540997)))

(assert (=> start!82352 tp!64743))

(declare-fun mapNonEmpty!33934 () Bool)

(declare-fun mapRes!33934 () Bool)

(declare-fun tp!64744 () Bool)

(declare-fun e!540998 () Bool)

(assert (=> mapNonEmpty!33934 (= mapRes!33934 (and tp!64744 e!540998))))

(declare-fun mapKey!33934 () (_ BitVec 32))

(declare-fun mapValue!33934 () ValueCell!10170)

(declare-fun mapRest!33934 () (Array (_ BitVec 32) ValueCell!10170))

(assert (=> mapNonEmpty!33934 (= (arr!28227 _values!1386) (store mapRest!33934 mapKey!33934 mapValue!33934))))

(declare-fun b!959653 () Bool)

(declare-fun res!642488 () Bool)

(assert (=> b!959653 (=> (not res!642488) (not e!540995))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959653 (= res!642488 (validKeyInArray!0 (select (arr!28226 _keys!1668) i!793)))))

(declare-fun b!959654 () Bool)

(declare-fun res!642490 () Bool)

(assert (=> b!959654 (=> (not res!642490) (not e!540995))))

(declare-datatypes ((List!19753 0))(
  ( (Nil!19750) (Cons!19749 (h!20911 (_ BitVec 64)) (t!28124 List!19753)) )
))
(declare-fun arrayNoDuplicates!0 (array!58713 (_ BitVec 32) List!19753) Bool)

(assert (=> b!959654 (= res!642490 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19750))))

(declare-fun b!959655 () Bool)

(declare-fun res!642489 () Bool)

(assert (=> b!959655 (=> (not res!642489) (not e!540995))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959655 (= res!642489 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28706 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28706 _keys!1668))))))

(declare-fun b!959656 () Bool)

(assert (=> b!959656 (= e!540995 false)))

(declare-fun minValue!1328 () V!33387)

(declare-fun lt!430523 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33387)

(declare-datatypes ((tuple2!13888 0))(
  ( (tuple2!13889 (_1!6954 (_ BitVec 64)) (_2!6954 V!33387)) )
))
(declare-datatypes ((List!19754 0))(
  ( (Nil!19751) (Cons!19750 (h!20912 tuple2!13888) (t!28125 List!19754)) )
))
(declare-datatypes ((ListLongMap!12599 0))(
  ( (ListLongMap!12600 (toList!6315 List!19754)) )
))
(declare-fun contains!5365 (ListLongMap!12599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3500 (array!58713 array!58715 (_ BitVec 32) (_ BitVec 32) V!33387 V!33387 (_ BitVec 32) Int) ListLongMap!12599)

(assert (=> b!959656 (= lt!430523 (contains!5365 (getCurrentListMap!3500 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28226 _keys!1668) i!793)))))

(declare-fun b!959657 () Bool)

(assert (=> b!959657 (= e!540998 tp_is_empty!21303)))

(declare-fun mapIsEmpty!33934 () Bool)

(assert (=> mapIsEmpty!33934 mapRes!33934))

(declare-fun b!959658 () Bool)

(assert (=> b!959658 (= e!540997 (and e!540994 mapRes!33934))))

(declare-fun condMapEmpty!33934 () Bool)

(declare-fun mapDefault!33934 () ValueCell!10170)

(assert (=> b!959658 (= condMapEmpty!33934 (= (arr!28227 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10170)) mapDefault!33934)))))

(declare-fun b!959659 () Bool)

(declare-fun res!642487 () Bool)

(assert (=> b!959659 (=> (not res!642487) (not e!540995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58713 (_ BitVec 32)) Bool)

(assert (=> b!959659 (= res!642487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82352 res!642492) b!959651))

(assert (= (and b!959651 res!642491) b!959659))

(assert (= (and b!959659 res!642487) b!959654))

(assert (= (and b!959654 res!642490) b!959655))

(assert (= (and b!959655 res!642489) b!959653))

(assert (= (and b!959653 res!642488) b!959656))

(assert (= (and b!959658 condMapEmpty!33934) mapIsEmpty!33934))

(assert (= (and b!959658 (not condMapEmpty!33934)) mapNonEmpty!33934))

(get-info :version)

(assert (= (and mapNonEmpty!33934 ((_ is ValueCellFull!10170) mapValue!33934)) b!959657))

(assert (= (and b!959658 ((_ is ValueCellFull!10170) mapDefault!33934)) b!959652))

(assert (= start!82352 b!959658))

(declare-fun m!890165 () Bool)

(assert (=> mapNonEmpty!33934 m!890165))

(declare-fun m!890167 () Bool)

(assert (=> b!959659 m!890167))

(declare-fun m!890169 () Bool)

(assert (=> b!959656 m!890169))

(declare-fun m!890171 () Bool)

(assert (=> b!959656 m!890171))

(assert (=> b!959656 m!890169))

(assert (=> b!959656 m!890171))

(declare-fun m!890173 () Bool)

(assert (=> b!959656 m!890173))

(declare-fun m!890175 () Bool)

(assert (=> b!959654 m!890175))

(assert (=> b!959653 m!890171))

(assert (=> b!959653 m!890171))

(declare-fun m!890177 () Bool)

(assert (=> b!959653 m!890177))

(declare-fun m!890179 () Bool)

(assert (=> start!82352 m!890179))

(declare-fun m!890181 () Bool)

(assert (=> start!82352 m!890181))

(declare-fun m!890183 () Bool)

(assert (=> start!82352 m!890183))

(check-sat (not b!959653) (not b!959654) b_and!30097 (not b_next!18591) tp_is_empty!21303 (not start!82352) (not b!959659) (not b!959656) (not mapNonEmpty!33934))
(check-sat b_and!30097 (not b_next!18591))
