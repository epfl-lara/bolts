; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82364 () Bool)

(assert start!82364)

(declare-fun b_free!18603 () Bool)

(declare-fun b_next!18603 () Bool)

(assert (=> start!82364 (= b_free!18603 (not b_next!18603))))

(declare-fun tp!64779 () Bool)

(declare-fun b_and!30109 () Bool)

(assert (=> start!82364 (= tp!64779 b_and!30109)))

(declare-fun b!959813 () Bool)

(declare-fun res!642597 () Bool)

(declare-fun e!541088 () Bool)

(assert (=> b!959813 (=> (not res!642597) (not e!541088))))

(declare-datatypes ((array!58737 0))(
  ( (array!58738 (arr!28238 (Array (_ BitVec 32) (_ BitVec 64))) (size!28718 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58737)

(declare-datatypes ((List!19761 0))(
  ( (Nil!19758) (Cons!19757 (h!20919 (_ BitVec 64)) (t!28132 List!19761)) )
))
(declare-fun arrayNoDuplicates!0 (array!58737 (_ BitVec 32) List!19761) Bool)

(assert (=> b!959813 (= res!642597 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19758))))

(declare-fun b!959814 () Bool)

(assert (=> b!959814 (= e!541088 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33403 0))(
  ( (V!33404 (val!10708 Int)) )
))
(declare-datatypes ((ValueCell!10176 0))(
  ( (ValueCellFull!10176 (v!13265 V!33403)) (EmptyCell!10176) )
))
(declare-datatypes ((array!58739 0))(
  ( (array!58740 (arr!28239 (Array (_ BitVec 32) ValueCell!10176)) (size!28719 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58739)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33403)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33403)

(declare-fun lt!430541 () Bool)

(declare-datatypes ((tuple2!13898 0))(
  ( (tuple2!13899 (_1!6959 (_ BitVec 64)) (_2!6959 V!33403)) )
))
(declare-datatypes ((List!19762 0))(
  ( (Nil!19759) (Cons!19758 (h!20920 tuple2!13898) (t!28133 List!19762)) )
))
(declare-datatypes ((ListLongMap!12609 0))(
  ( (ListLongMap!12610 (toList!6320 List!19762)) )
))
(declare-fun contains!5370 (ListLongMap!12609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3505 (array!58737 array!58739 (_ BitVec 32) (_ BitVec 32) V!33403 V!33403 (_ BitVec 32) Int) ListLongMap!12609)

(assert (=> b!959814 (= lt!430541 (contains!5370 (getCurrentListMap!3505 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28238 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33952 () Bool)

(declare-fun mapRes!33952 () Bool)

(assert (=> mapIsEmpty!33952 mapRes!33952))

(declare-fun res!642600 () Bool)

(assert (=> start!82364 (=> (not res!642600) (not e!541088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82364 (= res!642600 (validMask!0 mask!2088))))

(assert (=> start!82364 e!541088))

(assert (=> start!82364 true))

(declare-fun tp_is_empty!21315 () Bool)

(assert (=> start!82364 tp_is_empty!21315))

(declare-fun array_inv!21831 (array!58737) Bool)

(assert (=> start!82364 (array_inv!21831 _keys!1668)))

(declare-fun e!541086 () Bool)

(declare-fun array_inv!21832 (array!58739) Bool)

(assert (=> start!82364 (and (array_inv!21832 _values!1386) e!541086)))

(assert (=> start!82364 tp!64779))

(declare-fun b!959815 () Bool)

(declare-fun res!642595 () Bool)

(assert (=> b!959815 (=> (not res!642595) (not e!541088))))

(assert (=> b!959815 (= res!642595 (and (= (size!28719 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28718 _keys!1668) (size!28719 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959816 () Bool)

(declare-fun e!541084 () Bool)

(assert (=> b!959816 (= e!541084 tp_is_empty!21315)))

(declare-fun mapNonEmpty!33952 () Bool)

(declare-fun tp!64780 () Bool)

(assert (=> mapNonEmpty!33952 (= mapRes!33952 (and tp!64780 e!541084))))

(declare-fun mapValue!33952 () ValueCell!10176)

(declare-fun mapKey!33952 () (_ BitVec 32))

(declare-fun mapRest!33952 () (Array (_ BitVec 32) ValueCell!10176))

(assert (=> mapNonEmpty!33952 (= (arr!28239 _values!1386) (store mapRest!33952 mapKey!33952 mapValue!33952))))

(declare-fun b!959817 () Bool)

(declare-fun res!642599 () Bool)

(assert (=> b!959817 (=> (not res!642599) (not e!541088))))

(assert (=> b!959817 (= res!642599 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28718 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28718 _keys!1668))))))

(declare-fun b!959818 () Bool)

(declare-fun res!642598 () Bool)

(assert (=> b!959818 (=> (not res!642598) (not e!541088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959818 (= res!642598 (validKeyInArray!0 (select (arr!28238 _keys!1668) i!793)))))

(declare-fun b!959819 () Bool)

(declare-fun e!541087 () Bool)

(assert (=> b!959819 (= e!541086 (and e!541087 mapRes!33952))))

(declare-fun condMapEmpty!33952 () Bool)

(declare-fun mapDefault!33952 () ValueCell!10176)

(assert (=> b!959819 (= condMapEmpty!33952 (= (arr!28239 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10176)) mapDefault!33952)))))

(declare-fun b!959820 () Bool)

(assert (=> b!959820 (= e!541087 tp_is_empty!21315)))

(declare-fun b!959821 () Bool)

(declare-fun res!642596 () Bool)

(assert (=> b!959821 (=> (not res!642596) (not e!541088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58737 (_ BitVec 32)) Bool)

(assert (=> b!959821 (= res!642596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82364 res!642600) b!959815))

(assert (= (and b!959815 res!642595) b!959821))

(assert (= (and b!959821 res!642596) b!959813))

(assert (= (and b!959813 res!642597) b!959817))

(assert (= (and b!959817 res!642599) b!959818))

(assert (= (and b!959818 res!642598) b!959814))

(assert (= (and b!959819 condMapEmpty!33952) mapIsEmpty!33952))

(assert (= (and b!959819 (not condMapEmpty!33952)) mapNonEmpty!33952))

(get-info :version)

(assert (= (and mapNonEmpty!33952 ((_ is ValueCellFull!10176) mapValue!33952)) b!959816))

(assert (= (and b!959819 ((_ is ValueCellFull!10176) mapDefault!33952)) b!959820))

(assert (= start!82364 b!959819))

(declare-fun m!890285 () Bool)

(assert (=> b!959813 m!890285))

(declare-fun m!890287 () Bool)

(assert (=> mapNonEmpty!33952 m!890287))

(declare-fun m!890289 () Bool)

(assert (=> b!959821 m!890289))

(declare-fun m!890291 () Bool)

(assert (=> start!82364 m!890291))

(declare-fun m!890293 () Bool)

(assert (=> start!82364 m!890293))

(declare-fun m!890295 () Bool)

(assert (=> start!82364 m!890295))

(declare-fun m!890297 () Bool)

(assert (=> b!959818 m!890297))

(assert (=> b!959818 m!890297))

(declare-fun m!890299 () Bool)

(assert (=> b!959818 m!890299))

(declare-fun m!890301 () Bool)

(assert (=> b!959814 m!890301))

(assert (=> b!959814 m!890297))

(assert (=> b!959814 m!890301))

(assert (=> b!959814 m!890297))

(declare-fun m!890303 () Bool)

(assert (=> b!959814 m!890303))

(check-sat (not mapNonEmpty!33952) (not b!959818) tp_is_empty!21315 (not b!959813) (not b!959821) b_and!30109 (not b_next!18603) (not b!959814) (not start!82364))
(check-sat b_and!30109 (not b_next!18603))
