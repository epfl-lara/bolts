; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37298 () Bool)

(assert start!37298)

(declare-fun b_free!8417 () Bool)

(declare-fun b_next!8417 () Bool)

(assert (=> start!37298 (= b_free!8417 (not b_next!8417))))

(declare-fun tp!29966 () Bool)

(declare-fun b_and!15677 () Bool)

(assert (=> start!37298 (= tp!29966 b_and!15677)))

(declare-fun mapNonEmpty!15162 () Bool)

(declare-fun mapRes!15162 () Bool)

(declare-fun tp!29967 () Bool)

(declare-fun e!229898 () Bool)

(assert (=> mapNonEmpty!15162 (= mapRes!15162 (and tp!29967 e!229898))))

(declare-fun mapKey!15162 () (_ BitVec 32))

(declare-datatypes ((V!13191 0))(
  ( (V!13192 (val!4577 Int)) )
))
(declare-datatypes ((ValueCell!4189 0))(
  ( (ValueCellFull!4189 (v!6770 V!13191)) (EmptyCell!4189) )
))
(declare-datatypes ((array!22029 0))(
  ( (array!22030 (arr!10480 (Array (_ BitVec 32) ValueCell!4189)) (size!10832 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22029)

(declare-fun mapRest!15162 () (Array (_ BitVec 32) ValueCell!4189))

(declare-fun mapValue!15162 () ValueCell!4189)

(assert (=> mapNonEmpty!15162 (= (arr!10480 _values!506) (store mapRest!15162 mapKey!15162 mapValue!15162))))

(declare-fun b!377631 () Bool)

(declare-fun res!213816 () Bool)

(declare-fun e!229894 () Bool)

(assert (=> b!377631 (=> (not res!213816) (not e!229894))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22031 0))(
  ( (array!22032 (arr!10481 (Array (_ BitVec 32) (_ BitVec 64))) (size!10833 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22031)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!377631 (= res!213816 (and (= (size!10832 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10833 _keys!658) (size!10832 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377632 () Bool)

(declare-fun res!213820 () Bool)

(assert (=> b!377632 (=> (not res!213820) (not e!229894))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377632 (= res!213820 (validKeyInArray!0 k!778))))

(declare-fun b!377633 () Bool)

(declare-fun res!213817 () Bool)

(assert (=> b!377633 (=> (not res!213817) (not e!229894))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377633 (= res!213817 (or (= (select (arr!10481 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10481 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377634 () Bool)

(declare-fun res!213821 () Bool)

(assert (=> b!377634 (=> (not res!213821) (not e!229894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22031 (_ BitVec 32)) Bool)

(assert (=> b!377634 (= res!213821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377635 () Bool)

(declare-fun tp_is_empty!9065 () Bool)

(assert (=> b!377635 (= e!229898 tp_is_empty!9065)))

(declare-fun b!377636 () Bool)

(declare-fun e!229896 () Bool)

(assert (=> b!377636 (= e!229894 e!229896)))

(declare-fun res!213810 () Bool)

(assert (=> b!377636 (=> (not res!213810) (not e!229896))))

(declare-fun lt!175794 () array!22031)

(assert (=> b!377636 (= res!213810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175794 mask!970))))

(assert (=> b!377636 (= lt!175794 (array!22032 (store (arr!10481 _keys!658) i!548 k!778) (size!10833 _keys!658)))))

(declare-fun b!377637 () Bool)

(declare-fun e!229892 () Bool)

(assert (=> b!377637 (= e!229896 (not e!229892))))

(declare-fun res!213813 () Bool)

(assert (=> b!377637 (=> res!213813 e!229892)))

(assert (=> b!377637 (= res!213813 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6080 0))(
  ( (tuple2!6081 (_1!3050 (_ BitVec 64)) (_2!3050 V!13191)) )
))
(declare-datatypes ((List!5950 0))(
  ( (Nil!5947) (Cons!5946 (h!6802 tuple2!6080) (t!11108 List!5950)) )
))
(declare-datatypes ((ListLongMap!5007 0))(
  ( (ListLongMap!5008 (toList!2519 List!5950)) )
))
(declare-fun lt!175792 () ListLongMap!5007)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13191)

(declare-fun minValue!472 () V!13191)

(declare-fun getCurrentListMap!1954 (array!22031 array!22029 (_ BitVec 32) (_ BitVec 32) V!13191 V!13191 (_ BitVec 32) Int) ListLongMap!5007)

(assert (=> b!377637 (= lt!175792 (getCurrentListMap!1954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175796 () ListLongMap!5007)

(declare-fun lt!175801 () array!22029)

(assert (=> b!377637 (= lt!175796 (getCurrentListMap!1954 lt!175794 lt!175801 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175802 () ListLongMap!5007)

(declare-fun lt!175804 () ListLongMap!5007)

(assert (=> b!377637 (and (= lt!175802 lt!175804) (= lt!175804 lt!175802))))

(declare-fun lt!175797 () ListLongMap!5007)

(declare-fun lt!175799 () tuple2!6080)

(declare-fun +!860 (ListLongMap!5007 tuple2!6080) ListLongMap!5007)

(assert (=> b!377637 (= lt!175804 (+!860 lt!175797 lt!175799))))

(declare-fun v!373 () V!13191)

(assert (=> b!377637 (= lt!175799 (tuple2!6081 k!778 v!373))))

(declare-datatypes ((Unit!11619 0))(
  ( (Unit!11620) )
))
(declare-fun lt!175803 () Unit!11619)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!105 (array!22031 array!22029 (_ BitVec 32) (_ BitVec 32) V!13191 V!13191 (_ BitVec 32) (_ BitVec 64) V!13191 (_ BitVec 32) Int) Unit!11619)

(assert (=> b!377637 (= lt!175803 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!105 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!772 (array!22031 array!22029 (_ BitVec 32) (_ BitVec 32) V!13191 V!13191 (_ BitVec 32) Int) ListLongMap!5007)

(assert (=> b!377637 (= lt!175802 (getCurrentListMapNoExtraKeys!772 lt!175794 lt!175801 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377637 (= lt!175801 (array!22030 (store (arr!10480 _values!506) i!548 (ValueCellFull!4189 v!373)) (size!10832 _values!506)))))

(assert (=> b!377637 (= lt!175797 (getCurrentListMapNoExtraKeys!772 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377638 () Bool)

(declare-fun res!213818 () Bool)

(assert (=> b!377638 (=> (not res!213818) (not e!229894))))

(declare-datatypes ((List!5951 0))(
  ( (Nil!5948) (Cons!5947 (h!6803 (_ BitVec 64)) (t!11109 List!5951)) )
))
(declare-fun arrayNoDuplicates!0 (array!22031 (_ BitVec 32) List!5951) Bool)

(assert (=> b!377638 (= res!213818 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5948))))

(declare-fun b!377639 () Bool)

(declare-fun res!213819 () Bool)

(assert (=> b!377639 (=> (not res!213819) (not e!229896))))

(assert (=> b!377639 (= res!213819 (arrayNoDuplicates!0 lt!175794 #b00000000000000000000000000000000 Nil!5948))))

(declare-fun b!377640 () Bool)

(declare-fun e!229895 () Bool)

(assert (=> b!377640 (= e!229892 e!229895)))

(declare-fun res!213812 () Bool)

(assert (=> b!377640 (=> res!213812 e!229895)))

(assert (=> b!377640 (= res!213812 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175798 () ListLongMap!5007)

(assert (=> b!377640 (= lt!175796 lt!175798)))

(declare-fun lt!175800 () tuple2!6080)

(assert (=> b!377640 (= lt!175798 (+!860 lt!175804 lt!175800))))

(declare-fun lt!175795 () ListLongMap!5007)

(assert (=> b!377640 (= lt!175792 lt!175795)))

(assert (=> b!377640 (= lt!175795 (+!860 lt!175797 lt!175800))))

(assert (=> b!377640 (= lt!175796 (+!860 lt!175802 lt!175800))))

(assert (=> b!377640 (= lt!175800 (tuple2!6081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377641 () Bool)

(declare-fun res!213814 () Bool)

(assert (=> b!377641 (=> (not res!213814) (not e!229894))))

(assert (=> b!377641 (= res!213814 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10833 _keys!658))))))

(declare-fun b!377643 () Bool)

(declare-fun e!229897 () Bool)

(declare-fun e!229893 () Bool)

(assert (=> b!377643 (= e!229897 (and e!229893 mapRes!15162))))

(declare-fun condMapEmpty!15162 () Bool)

(declare-fun mapDefault!15162 () ValueCell!4189)

