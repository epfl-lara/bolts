; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82786 () Bool)

(assert start!82786)

(declare-fun b_free!18891 () Bool)

(declare-fun b_next!18891 () Bool)

(assert (=> start!82786 (= b_free!18891 (not b_next!18891))))

(declare-fun tp!65794 () Bool)

(declare-fun b_and!30397 () Bool)

(assert (=> start!82786 (= tp!65794 b_and!30397)))

(declare-fun mapIsEmpty!34534 () Bool)

(declare-fun mapRes!34534 () Bool)

(assert (=> mapIsEmpty!34534 mapRes!34534))

(declare-fun b!965123 () Bool)

(declare-fun res!646140 () Bool)

(declare-fun e!544095 () Bool)

(assert (=> b!965123 (=> (not res!646140) (not e!544095))))

(declare-datatypes ((array!59451 0))(
  ( (array!59452 (arr!28590 (Array (_ BitVec 32) (_ BitVec 64))) (size!29070 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59451)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965123 (= res!646140 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29070 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29070 _keys!1686))))))

(declare-fun b!965124 () Bool)

(declare-fun e!544099 () Bool)

(declare-fun tp_is_empty!21693 () Bool)

(assert (=> b!965124 (= e!544099 tp_is_empty!21693)))

(declare-fun b!965125 () Bool)

(assert (=> b!965125 (= e!544095 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431166 () Bool)

(declare-datatypes ((V!33907 0))(
  ( (V!33908 (val!10897 Int)) )
))
(declare-datatypes ((ValueCell!10365 0))(
  ( (ValueCellFull!10365 (v!13455 V!33907)) (EmptyCell!10365) )
))
(declare-datatypes ((array!59453 0))(
  ( (array!59454 (arr!28591 (Array (_ BitVec 32) ValueCell!10365)) (size!29071 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59453)

(declare-fun minValue!1342 () V!33907)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33907)

(declare-datatypes ((tuple2!14088 0))(
  ( (tuple2!14089 (_1!7054 (_ BitVec 64)) (_2!7054 V!33907)) )
))
(declare-datatypes ((List!19964 0))(
  ( (Nil!19961) (Cons!19960 (h!21122 tuple2!14088) (t!28335 List!19964)) )
))
(declare-datatypes ((ListLongMap!12799 0))(
  ( (ListLongMap!12800 (toList!6415 List!19964)) )
))
(declare-fun contains!5469 (ListLongMap!12799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3600 (array!59451 array!59453 (_ BitVec 32) (_ BitVec 32) V!33907 V!33907 (_ BitVec 32) Int) ListLongMap!12799)

(assert (=> b!965125 (= lt!431166 (contains!5469 (getCurrentListMap!3600 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28590 _keys!1686) i!803)))))

(declare-fun b!965127 () Bool)

(declare-fun res!646145 () Bool)

(assert (=> b!965127 (=> (not res!646145) (not e!544095))))

(assert (=> b!965127 (= res!646145 (and (= (size!29071 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29070 _keys!1686) (size!29071 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965128 () Bool)

(declare-fun res!646144 () Bool)

(assert (=> b!965128 (=> (not res!646144) (not e!544095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59451 (_ BitVec 32)) Bool)

(assert (=> b!965128 (= res!646144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965129 () Bool)

(declare-fun e!544098 () Bool)

(assert (=> b!965129 (= e!544098 (and e!544099 mapRes!34534))))

(declare-fun condMapEmpty!34534 () Bool)

(declare-fun mapDefault!34534 () ValueCell!10365)

(assert (=> b!965129 (= condMapEmpty!34534 (= (arr!28591 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10365)) mapDefault!34534)))))

(declare-fun b!965130 () Bool)

(declare-fun res!646143 () Bool)

(assert (=> b!965130 (=> (not res!646143) (not e!544095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965130 (= res!646143 (validKeyInArray!0 (select (arr!28590 _keys!1686) i!803)))))

(declare-fun b!965131 () Bool)

(declare-fun e!544097 () Bool)

(assert (=> b!965131 (= e!544097 tp_is_empty!21693)))

(declare-fun mapNonEmpty!34534 () Bool)

(declare-fun tp!65793 () Bool)

(assert (=> mapNonEmpty!34534 (= mapRes!34534 (and tp!65793 e!544097))))

(declare-fun mapValue!34534 () ValueCell!10365)

(declare-fun mapRest!34534 () (Array (_ BitVec 32) ValueCell!10365))

(declare-fun mapKey!34534 () (_ BitVec 32))

(assert (=> mapNonEmpty!34534 (= (arr!28591 _values!1400) (store mapRest!34534 mapKey!34534 mapValue!34534))))

(declare-fun b!965126 () Bool)

(declare-fun res!646142 () Bool)

(assert (=> b!965126 (=> (not res!646142) (not e!544095))))

(declare-datatypes ((List!19965 0))(
  ( (Nil!19962) (Cons!19961 (h!21123 (_ BitVec 64)) (t!28336 List!19965)) )
))
(declare-fun arrayNoDuplicates!0 (array!59451 (_ BitVec 32) List!19965) Bool)

(assert (=> b!965126 (= res!646142 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19962))))

(declare-fun res!646141 () Bool)

(assert (=> start!82786 (=> (not res!646141) (not e!544095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82786 (= res!646141 (validMask!0 mask!2110))))

(assert (=> start!82786 e!544095))

(assert (=> start!82786 true))

(declare-fun array_inv!22047 (array!59453) Bool)

(assert (=> start!82786 (and (array_inv!22047 _values!1400) e!544098)))

(declare-fun array_inv!22048 (array!59451) Bool)

(assert (=> start!82786 (array_inv!22048 _keys!1686)))

(assert (=> start!82786 tp!65794))

(assert (=> start!82786 tp_is_empty!21693))

(assert (= (and start!82786 res!646141) b!965127))

(assert (= (and b!965127 res!646145) b!965128))

(assert (= (and b!965128 res!646144) b!965126))

(assert (= (and b!965126 res!646142) b!965123))

(assert (= (and b!965123 res!646140) b!965130))

(assert (= (and b!965130 res!646143) b!965125))

(assert (= (and b!965129 condMapEmpty!34534) mapIsEmpty!34534))

(assert (= (and b!965129 (not condMapEmpty!34534)) mapNonEmpty!34534))

(get-info :version)

(assert (= (and mapNonEmpty!34534 ((_ is ValueCellFull!10365) mapValue!34534)) b!965131))

(assert (= (and b!965129 ((_ is ValueCellFull!10365) mapDefault!34534)) b!965124))

(assert (= start!82786 b!965129))

(declare-fun m!894345 () Bool)

(assert (=> b!965128 m!894345))

(declare-fun m!894347 () Bool)

(assert (=> start!82786 m!894347))

(declare-fun m!894349 () Bool)

(assert (=> start!82786 m!894349))

(declare-fun m!894351 () Bool)

(assert (=> start!82786 m!894351))

(declare-fun m!894353 () Bool)

(assert (=> mapNonEmpty!34534 m!894353))

(declare-fun m!894355 () Bool)

(assert (=> b!965130 m!894355))

(assert (=> b!965130 m!894355))

(declare-fun m!894357 () Bool)

(assert (=> b!965130 m!894357))

(declare-fun m!894359 () Bool)

(assert (=> b!965126 m!894359))

(declare-fun m!894361 () Bool)

(assert (=> b!965125 m!894361))

(assert (=> b!965125 m!894355))

(assert (=> b!965125 m!894361))

(assert (=> b!965125 m!894355))

(declare-fun m!894363 () Bool)

(assert (=> b!965125 m!894363))

(check-sat (not b!965130) (not b!965126) (not b!965128) b_and!30397 tp_is_empty!21693 (not mapNonEmpty!34534) (not b_next!18891) (not start!82786) (not b!965125))
(check-sat b_and!30397 (not b_next!18891))
