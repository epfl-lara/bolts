; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37118 () Bool)

(assert start!37118)

(declare-fun b_free!8237 () Bool)

(declare-fun b_next!8237 () Bool)

(assert (=> start!37118 (= b_free!8237 (not b_next!8237))))

(declare-fun tp!29426 () Bool)

(declare-fun b_and!15497 () Bool)

(assert (=> start!37118 (= tp!29426 b_and!15497)))

(declare-fun b!373572 () Bool)

(declare-fun e!227738 () Bool)

(declare-fun e!227733 () Bool)

(assert (=> b!373572 (= e!227738 e!227733)))

(declare-fun res!210570 () Bool)

(assert (=> b!373572 (=> (not res!210570) (not e!227733))))

(declare-datatypes ((array!21677 0))(
  ( (array!21678 (arr!10304 (Array (_ BitVec 32) (_ BitVec 64))) (size!10656 (_ BitVec 32))) )
))
(declare-fun lt!171821 () array!21677)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21677 (_ BitVec 32)) Bool)

(assert (=> b!373572 (= res!210570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171821 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21677)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373572 (= lt!171821 (array!21678 (store (arr!10304 _keys!658) i!548 k!778) (size!10656 _keys!658)))))

(declare-fun b!373573 () Bool)

(declare-fun e!227734 () Bool)

(declare-fun e!227736 () Bool)

(assert (=> b!373573 (= e!227734 e!227736)))

(declare-fun res!210569 () Bool)

(assert (=> b!373573 (=> res!210569 e!227736)))

(assert (=> b!373573 (= res!210569 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!12951 0))(
  ( (V!12952 (val!4487 Int)) )
))
(declare-datatypes ((tuple2!5938 0))(
  ( (tuple2!5939 (_1!2979 (_ BitVec 64)) (_2!2979 V!12951)) )
))
(declare-datatypes ((List!5811 0))(
  ( (Nil!5808) (Cons!5807 (h!6663 tuple2!5938) (t!10969 List!5811)) )
))
(declare-datatypes ((ListLongMap!4865 0))(
  ( (ListLongMap!4866 (toList!2448 List!5811)) )
))
(declare-fun lt!171816 () ListLongMap!4865)

(declare-fun lt!171823 () ListLongMap!4865)

(assert (=> b!373573 (= lt!171816 lt!171823)))

(declare-fun lt!171820 () ListLongMap!4865)

(declare-fun lt!171822 () tuple2!5938)

(declare-fun +!789 (ListLongMap!4865 tuple2!5938) ListLongMap!4865)

(assert (=> b!373573 (= lt!171823 (+!789 lt!171820 lt!171822))))

(declare-datatypes ((Unit!11481 0))(
  ( (Unit!11482) )
))
(declare-fun lt!171817 () Unit!11481)

(declare-fun lt!171826 () ListLongMap!4865)

(declare-fun zeroValue!472 () V!12951)

(declare-fun v!373 () V!12951)

(declare-fun addCommutativeForDiffKeys!218 (ListLongMap!4865 (_ BitVec 64) V!12951 (_ BitVec 64) V!12951) Unit!11481)

(assert (=> b!373573 (= lt!171817 (addCommutativeForDiffKeys!218 lt!171826 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171813 () ListLongMap!4865)

(declare-fun lt!171824 () tuple2!5938)

(assert (=> b!373573 (= lt!171813 (+!789 lt!171816 lt!171824))))

(declare-fun lt!171819 () ListLongMap!4865)

(declare-fun lt!171810 () tuple2!5938)

(assert (=> b!373573 (= lt!171816 (+!789 lt!171819 lt!171810))))

(declare-fun lt!171811 () ListLongMap!4865)

(declare-fun lt!171825 () ListLongMap!4865)

(assert (=> b!373573 (= lt!171811 lt!171825)))

(assert (=> b!373573 (= lt!171825 (+!789 lt!171820 lt!171824))))

(assert (=> b!373573 (= lt!171820 (+!789 lt!171826 lt!171810))))

(declare-fun lt!171815 () ListLongMap!4865)

(assert (=> b!373573 (= lt!171813 (+!789 (+!789 lt!171815 lt!171810) lt!171824))))

(declare-fun minValue!472 () V!12951)

(assert (=> b!373573 (= lt!171824 (tuple2!5939 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373573 (= lt!171810 (tuple2!5939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!14892 () Bool)

(declare-fun mapRes!14892 () Bool)

(assert (=> mapIsEmpty!14892 mapRes!14892))

(declare-fun b!373574 () Bool)

(declare-fun e!227735 () Bool)

(declare-fun tp_is_empty!8885 () Bool)

(assert (=> b!373574 (= e!227735 tp_is_empty!8885)))

(declare-fun b!373575 () Bool)

(declare-fun res!210563 () Bool)

(assert (=> b!373575 (=> (not res!210563) (not e!227738))))

(assert (=> b!373575 (= res!210563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373576 () Bool)

(declare-fun res!210566 () Bool)

(assert (=> b!373576 (=> (not res!210566) (not e!227738))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4099 0))(
  ( (ValueCellFull!4099 (v!6680 V!12951)) (EmptyCell!4099) )
))
(declare-datatypes ((array!21679 0))(
  ( (array!21680 (arr!10305 (Array (_ BitVec 32) ValueCell!4099)) (size!10657 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21679)

(assert (=> b!373576 (= res!210566 (and (= (size!10657 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10656 _keys!658) (size!10657 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373577 () Bool)

(assert (=> b!373577 (= e!227736 true)))

(assert (=> b!373577 (= (+!789 lt!171823 lt!171824) (+!789 lt!171825 lt!171822))))

(declare-fun lt!171812 () Unit!11481)

(assert (=> b!373577 (= lt!171812 (addCommutativeForDiffKeys!218 lt!171820 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373578 () Bool)

(assert (=> b!373578 (= e!227733 (not e!227734))))

(declare-fun res!210572 () Bool)

(assert (=> b!373578 (=> res!210572 e!227734)))

(assert (=> b!373578 (= res!210572 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1896 (array!21677 array!21679 (_ BitVec 32) (_ BitVec 32) V!12951 V!12951 (_ BitVec 32) Int) ListLongMap!4865)

(assert (=> b!373578 (= lt!171811 (getCurrentListMap!1896 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171818 () array!21679)

(assert (=> b!373578 (= lt!171813 (getCurrentListMap!1896 lt!171821 lt!171818 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373578 (and (= lt!171815 lt!171819) (= lt!171819 lt!171815))))

(assert (=> b!373578 (= lt!171819 (+!789 lt!171826 lt!171822))))

(assert (=> b!373578 (= lt!171822 (tuple2!5939 k!778 v!373))))

(declare-fun lt!171814 () Unit!11481)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!47 (array!21677 array!21679 (_ BitVec 32) (_ BitVec 32) V!12951 V!12951 (_ BitVec 32) (_ BitVec 64) V!12951 (_ BitVec 32) Int) Unit!11481)

(assert (=> b!373578 (= lt!171814 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!47 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!714 (array!21677 array!21679 (_ BitVec 32) (_ BitVec 32) V!12951 V!12951 (_ BitVec 32) Int) ListLongMap!4865)

(assert (=> b!373578 (= lt!171815 (getCurrentListMapNoExtraKeys!714 lt!171821 lt!171818 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373578 (= lt!171818 (array!21680 (store (arr!10305 _values!506) i!548 (ValueCellFull!4099 v!373)) (size!10657 _values!506)))))

(assert (=> b!373578 (= lt!171826 (getCurrentListMapNoExtraKeys!714 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!14892 () Bool)

(declare-fun tp!29427 () Bool)

(declare-fun e!227739 () Bool)

(assert (=> mapNonEmpty!14892 (= mapRes!14892 (and tp!29427 e!227739))))

(declare-fun mapRest!14892 () (Array (_ BitVec 32) ValueCell!4099))

(declare-fun mapKey!14892 () (_ BitVec 32))

(declare-fun mapValue!14892 () ValueCell!4099)

(assert (=> mapNonEmpty!14892 (= (arr!10305 _values!506) (store mapRest!14892 mapKey!14892 mapValue!14892))))

(declare-fun res!210568 () Bool)

(assert (=> start!37118 (=> (not res!210568) (not e!227738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37118 (= res!210568 (validMask!0 mask!970))))

(assert (=> start!37118 e!227738))

(declare-fun e!227737 () Bool)

(declare-fun array_inv!7604 (array!21679) Bool)

(assert (=> start!37118 (and (array_inv!7604 _values!506) e!227737)))

(assert (=> start!37118 tp!29426))

(assert (=> start!37118 true))

(assert (=> start!37118 tp_is_empty!8885))

(declare-fun array_inv!7605 (array!21677) Bool)

(assert (=> start!37118 (array_inv!7605 _keys!658)))

(declare-fun b!373579 () Bool)

(declare-fun res!210565 () Bool)

(assert (=> b!373579 (=> (not res!210565) (not e!227738))))

(assert (=> b!373579 (= res!210565 (or (= (select (arr!10304 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10304 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373580 () Bool)

(assert (=> b!373580 (= e!227739 tp_is_empty!8885)))

(declare-fun b!373581 () Bool)

(declare-fun res!210561 () Bool)

(assert (=> b!373581 (=> (not res!210561) (not e!227738))))

(declare-fun arrayContainsKey!0 (array!21677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373581 (= res!210561 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373582 () Bool)

(declare-fun res!210562 () Bool)

(assert (=> b!373582 (=> (not res!210562) (not e!227733))))

(declare-datatypes ((List!5812 0))(
  ( (Nil!5809) (Cons!5808 (h!6664 (_ BitVec 64)) (t!10970 List!5812)) )
))
(declare-fun arrayNoDuplicates!0 (array!21677 (_ BitVec 32) List!5812) Bool)

(assert (=> b!373582 (= res!210562 (arrayNoDuplicates!0 lt!171821 #b00000000000000000000000000000000 Nil!5809))))

(declare-fun b!373583 () Bool)

(declare-fun res!210567 () Bool)

(assert (=> b!373583 (=> (not res!210567) (not e!227738))))

(assert (=> b!373583 (= res!210567 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5809))))

(declare-fun b!373584 () Bool)

(declare-fun res!210571 () Bool)

(assert (=> b!373584 (=> (not res!210571) (not e!227738))))

(assert (=> b!373584 (= res!210571 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10656 _keys!658))))))

(declare-fun b!373585 () Bool)

(assert (=> b!373585 (= e!227737 (and e!227735 mapRes!14892))))

(declare-fun condMapEmpty!14892 () Bool)

(declare-fun mapDefault!14892 () ValueCell!4099)

