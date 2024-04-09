; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37186 () Bool)

(assert start!37186)

(declare-fun b_free!8305 () Bool)

(declare-fun b_next!8305 () Bool)

(assert (=> start!37186 (= b_free!8305 (not b_next!8305))))

(declare-fun tp!29631 () Bool)

(declare-fun b_and!15565 () Bool)

(assert (=> start!37186 (= tp!29631 b_and!15565)))

(declare-fun mapIsEmpty!14994 () Bool)

(declare-fun mapRes!14994 () Bool)

(assert (=> mapIsEmpty!14994 mapRes!14994))

(declare-fun b!375102 () Bool)

(declare-fun e!228550 () Bool)

(declare-fun e!228553 () Bool)

(assert (=> b!375102 (= e!228550 e!228553)))

(declare-fun res!211789 () Bool)

(assert (=> b!375102 (=> (not res!211789) (not e!228553))))

(declare-datatypes ((array!21805 0))(
  ( (array!21806 (arr!10368 (Array (_ BitVec 32) (_ BitVec 64))) (size!10720 (_ BitVec 32))) )
))
(declare-fun lt!173544 () array!21805)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21805 (_ BitVec 32)) Bool)

(assert (=> b!375102 (= res!211789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173544 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21805)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375102 (= lt!173544 (array!21806 (store (arr!10368 _keys!658) i!548 k!778) (size!10720 _keys!658)))))

(declare-fun b!375103 () Bool)

(declare-fun res!211786 () Bool)

(assert (=> b!375103 (=> (not res!211786) (not e!228550))))

(assert (=> b!375103 (= res!211786 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10720 _keys!658))))))

(declare-fun b!375105 () Bool)

(declare-fun e!228555 () Bool)

(assert (=> b!375105 (= e!228553 (not e!228555))))

(declare-fun res!211787 () Bool)

(assert (=> b!375105 (=> res!211787 e!228555)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375105 (= res!211787 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13043 0))(
  ( (V!13044 (val!4521 Int)) )
))
(declare-datatypes ((ValueCell!4133 0))(
  ( (ValueCellFull!4133 (v!6714 V!13043)) (EmptyCell!4133) )
))
(declare-datatypes ((array!21807 0))(
  ( (array!21808 (arr!10369 (Array (_ BitVec 32) ValueCell!4133)) (size!10721 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21807)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13043)

(declare-datatypes ((tuple2!5988 0))(
  ( (tuple2!5989 (_1!3004 (_ BitVec 64)) (_2!3004 V!13043)) )
))
(declare-datatypes ((List!5859 0))(
  ( (Nil!5856) (Cons!5855 (h!6711 tuple2!5988) (t!11017 List!5859)) )
))
(declare-datatypes ((ListLongMap!4915 0))(
  ( (ListLongMap!4916 (toList!2473 List!5859)) )
))
(declare-fun lt!173554 () ListLongMap!4915)

(declare-fun minValue!472 () V!13043)

(declare-fun getCurrentListMap!1915 (array!21805 array!21807 (_ BitVec 32) (_ BitVec 32) V!13043 V!13043 (_ BitVec 32) Int) ListLongMap!4915)

(assert (=> b!375105 (= lt!173554 (getCurrentListMap!1915 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173547 () array!21807)

(declare-fun lt!173548 () ListLongMap!4915)

(assert (=> b!375105 (= lt!173548 (getCurrentListMap!1915 lt!173544 lt!173547 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173546 () ListLongMap!4915)

(declare-fun lt!173550 () ListLongMap!4915)

(assert (=> b!375105 (and (= lt!173546 lt!173550) (= lt!173550 lt!173546))))

(declare-fun lt!173555 () ListLongMap!4915)

(declare-fun lt!173559 () tuple2!5988)

(declare-fun +!814 (ListLongMap!4915 tuple2!5988) ListLongMap!4915)

(assert (=> b!375105 (= lt!173550 (+!814 lt!173555 lt!173559))))

(declare-fun v!373 () V!13043)

(assert (=> b!375105 (= lt!173559 (tuple2!5989 k!778 v!373))))

(declare-datatypes ((Unit!11531 0))(
  ( (Unit!11532) )
))
(declare-fun lt!173560 () Unit!11531)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!66 (array!21805 array!21807 (_ BitVec 32) (_ BitVec 32) V!13043 V!13043 (_ BitVec 32) (_ BitVec 64) V!13043 (_ BitVec 32) Int) Unit!11531)

(assert (=> b!375105 (= lt!173560 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!66 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!733 (array!21805 array!21807 (_ BitVec 32) (_ BitVec 32) V!13043 V!13043 (_ BitVec 32) Int) ListLongMap!4915)

(assert (=> b!375105 (= lt!173546 (getCurrentListMapNoExtraKeys!733 lt!173544 lt!173547 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375105 (= lt!173547 (array!21808 (store (arr!10369 _values!506) i!548 (ValueCellFull!4133 v!373)) (size!10721 _values!506)))))

(assert (=> b!375105 (= lt!173555 (getCurrentListMapNoExtraKeys!733 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375106 () Bool)

(declare-fun res!211796 () Bool)

(assert (=> b!375106 (=> (not res!211796) (not e!228550))))

(assert (=> b!375106 (= res!211796 (and (= (size!10721 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10720 _keys!658) (size!10721 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375107 () Bool)

(declare-fun res!211785 () Bool)

(assert (=> b!375107 (=> (not res!211785) (not e!228553))))

(declare-datatypes ((List!5860 0))(
  ( (Nil!5857) (Cons!5856 (h!6712 (_ BitVec 64)) (t!11018 List!5860)) )
))
(declare-fun arrayNoDuplicates!0 (array!21805 (_ BitVec 32) List!5860) Bool)

(assert (=> b!375107 (= res!211785 (arrayNoDuplicates!0 lt!173544 #b00000000000000000000000000000000 Nil!5857))))

(declare-fun b!375108 () Bool)

(declare-fun e!228548 () Bool)

(declare-fun tp_is_empty!8953 () Bool)

(assert (=> b!375108 (= e!228548 tp_is_empty!8953)))

(declare-fun b!375109 () Bool)

(declare-fun res!211794 () Bool)

(assert (=> b!375109 (=> (not res!211794) (not e!228550))))

(declare-fun arrayContainsKey!0 (array!21805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375109 (= res!211794 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14994 () Bool)

(declare-fun tp!29630 () Bool)

(declare-fun e!228549 () Bool)

(assert (=> mapNonEmpty!14994 (= mapRes!14994 (and tp!29630 e!228549))))

(declare-fun mapValue!14994 () ValueCell!4133)

(declare-fun mapRest!14994 () (Array (_ BitVec 32) ValueCell!4133))

(declare-fun mapKey!14994 () (_ BitVec 32))

(assert (=> mapNonEmpty!14994 (= (arr!10369 _values!506) (store mapRest!14994 mapKey!14994 mapValue!14994))))

(declare-fun b!375110 () Bool)

(declare-fun e!228552 () Bool)

(assert (=> b!375110 (= e!228552 true)))

(declare-fun lt!173557 () ListLongMap!4915)

(declare-fun lt!173551 () tuple2!5988)

(declare-fun lt!173556 () ListLongMap!4915)

(assert (=> b!375110 (= (+!814 lt!173556 lt!173551) (+!814 lt!173557 lt!173559))))

(declare-fun lt!173558 () Unit!11531)

(declare-fun lt!173549 () ListLongMap!4915)

(declare-fun addCommutativeForDiffKeys!243 (ListLongMap!4915 (_ BitVec 64) V!13043 (_ BitVec 64) V!13043) Unit!11531)

(assert (=> b!375110 (= lt!173558 (addCommutativeForDiffKeys!243 lt!173549 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!375111 () Bool)

(assert (=> b!375111 (= e!228549 tp_is_empty!8953)))

(declare-fun b!375112 () Bool)

(declare-fun res!211790 () Bool)

(assert (=> b!375112 (=> (not res!211790) (not e!228550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375112 (= res!211790 (validKeyInArray!0 k!778))))

(declare-fun b!375113 () Bool)

(declare-fun res!211795 () Bool)

(assert (=> b!375113 (=> (not res!211795) (not e!228550))))

(assert (=> b!375113 (= res!211795 (or (= (select (arr!10368 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10368 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375114 () Bool)

(declare-fun res!211788 () Bool)

(assert (=> b!375114 (=> (not res!211788) (not e!228550))))

(assert (=> b!375114 (= res!211788 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5857))))

(declare-fun b!375115 () Bool)

(assert (=> b!375115 (= e!228555 e!228552)))

(declare-fun res!211791 () Bool)

(assert (=> b!375115 (=> res!211791 e!228552)))

(assert (=> b!375115 (= res!211791 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173545 () ListLongMap!4915)

(assert (=> b!375115 (= lt!173545 lt!173556)))

(assert (=> b!375115 (= lt!173556 (+!814 lt!173549 lt!173559))))

(declare-fun lt!173552 () Unit!11531)

(assert (=> b!375115 (= lt!173552 (addCommutativeForDiffKeys!243 lt!173555 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!375115 (= lt!173548 (+!814 lt!173545 lt!173551))))

(declare-fun lt!173553 () tuple2!5988)

(assert (=> b!375115 (= lt!173545 (+!814 lt!173550 lt!173553))))

(assert (=> b!375115 (= lt!173554 lt!173557)))

(assert (=> b!375115 (= lt!173557 (+!814 lt!173549 lt!173551))))

(assert (=> b!375115 (= lt!173549 (+!814 lt!173555 lt!173553))))

(assert (=> b!375115 (= lt!173548 (+!814 (+!814 lt!173546 lt!173553) lt!173551))))

(assert (=> b!375115 (= lt!173551 (tuple2!5989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375115 (= lt!173553 (tuple2!5989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375116 () Bool)

(declare-fun res!211792 () Bool)

(assert (=> b!375116 (=> (not res!211792) (not e!228550))))

(assert (=> b!375116 (= res!211792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!211793 () Bool)

(assert (=> start!37186 (=> (not res!211793) (not e!228550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37186 (= res!211793 (validMask!0 mask!970))))

(assert (=> start!37186 e!228550))

(declare-fun e!228551 () Bool)

(declare-fun array_inv!7640 (array!21807) Bool)

(assert (=> start!37186 (and (array_inv!7640 _values!506) e!228551)))

(assert (=> start!37186 tp!29631))

(assert (=> start!37186 true))

(assert (=> start!37186 tp_is_empty!8953))

(declare-fun array_inv!7641 (array!21805) Bool)

(assert (=> start!37186 (array_inv!7641 _keys!658)))

(declare-fun b!375104 () Bool)

(assert (=> b!375104 (= e!228551 (and e!228548 mapRes!14994))))

(declare-fun condMapEmpty!14994 () Bool)

(declare-fun mapDefault!14994 () ValueCell!4133)

