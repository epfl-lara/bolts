; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37126 () Bool)

(assert start!37126)

(declare-fun b_free!8245 () Bool)

(declare-fun b_next!8245 () Bool)

(assert (=> start!37126 (= b_free!8245 (not b_next!8245))))

(declare-fun tp!29451 () Bool)

(declare-fun b_and!15505 () Bool)

(assert (=> start!37126 (= tp!29451 b_and!15505)))

(declare-fun b!373752 () Bool)

(declare-fun res!210713 () Bool)

(declare-fun e!227829 () Bool)

(assert (=> b!373752 (=> (not res!210713) (not e!227829))))

(declare-datatypes ((array!21691 0))(
  ( (array!21692 (arr!10311 (Array (_ BitVec 32) (_ BitVec 64))) (size!10663 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21691)

(declare-datatypes ((List!5816 0))(
  ( (Nil!5813) (Cons!5812 (h!6668 (_ BitVec 64)) (t!10974 List!5816)) )
))
(declare-fun arrayNoDuplicates!0 (array!21691 (_ BitVec 32) List!5816) Bool)

(assert (=> b!373752 (= res!210713 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5813))))

(declare-fun b!373753 () Bool)

(declare-fun e!227828 () Bool)

(assert (=> b!373753 (= e!227828 true)))

(declare-datatypes ((V!12963 0))(
  ( (V!12964 (val!4491 Int)) )
))
(declare-datatypes ((tuple2!5944 0))(
  ( (tuple2!5945 (_1!2982 (_ BitVec 64)) (_2!2982 V!12963)) )
))
(declare-fun lt!172028 () tuple2!5944)

(declare-datatypes ((List!5817 0))(
  ( (Nil!5814) (Cons!5813 (h!6669 tuple2!5944) (t!10975 List!5817)) )
))
(declare-datatypes ((ListLongMap!4871 0))(
  ( (ListLongMap!4872 (toList!2451 List!5817)) )
))
(declare-fun lt!172023 () ListLongMap!4871)

(declare-fun lt!172024 () tuple2!5944)

(declare-fun lt!172019 () ListLongMap!4871)

(declare-fun +!792 (ListLongMap!4871 tuple2!5944) ListLongMap!4871)

(assert (=> b!373753 (= (+!792 lt!172023 lt!172028) (+!792 lt!172019 lt!172024))))

(declare-fun v!373 () V!12963)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!12963)

(declare-datatypes ((Unit!11487 0))(
  ( (Unit!11488) )
))
(declare-fun lt!172021 () Unit!11487)

(declare-fun lt!172025 () ListLongMap!4871)

(declare-fun addCommutativeForDiffKeys!221 (ListLongMap!4871 (_ BitVec 64) V!12963 (_ BitVec 64) V!12963) Unit!11487)

(assert (=> b!373753 (= lt!172021 (addCommutativeForDiffKeys!221 lt!172025 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373754 () Bool)

(declare-fun e!227833 () Bool)

(assert (=> b!373754 (= e!227829 e!227833)))

(declare-fun res!210706 () Bool)

(assert (=> b!373754 (=> (not res!210706) (not e!227833))))

(declare-fun lt!172015 () array!21691)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21691 (_ BitVec 32)) Bool)

(assert (=> b!373754 (= res!210706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172015 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373754 (= lt!172015 (array!21692 (store (arr!10311 _keys!658) i!548 k!778) (size!10663 _keys!658)))))

(declare-fun mapNonEmpty!14904 () Bool)

(declare-fun mapRes!14904 () Bool)

(declare-fun tp!29450 () Bool)

(declare-fun e!227830 () Bool)

(assert (=> mapNonEmpty!14904 (= mapRes!14904 (and tp!29450 e!227830))))

(declare-datatypes ((ValueCell!4103 0))(
  ( (ValueCellFull!4103 (v!6684 V!12963)) (EmptyCell!4103) )
))
(declare-fun mapValue!14904 () ValueCell!4103)

(declare-datatypes ((array!21693 0))(
  ( (array!21694 (arr!10312 (Array (_ BitVec 32) ValueCell!4103)) (size!10664 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21693)

(declare-fun mapKey!14904 () (_ BitVec 32))

(declare-fun mapRest!14904 () (Array (_ BitVec 32) ValueCell!4103))

(assert (=> mapNonEmpty!14904 (= (arr!10312 _values!506) (store mapRest!14904 mapKey!14904 mapValue!14904))))

(declare-fun b!373755 () Bool)

(declare-fun res!210708 () Bool)

(assert (=> b!373755 (=> (not res!210708) (not e!227829))))

(assert (=> b!373755 (= res!210708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373756 () Bool)

(declare-fun e!227834 () Bool)

(assert (=> b!373756 (= e!227833 (not e!227834))))

(declare-fun res!210705 () Bool)

(assert (=> b!373756 (=> res!210705 e!227834)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373756 (= res!210705 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!172030 () ListLongMap!4871)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12963)

(declare-fun getCurrentListMap!1898 (array!21691 array!21693 (_ BitVec 32) (_ BitVec 32) V!12963 V!12963 (_ BitVec 32) Int) ListLongMap!4871)

(assert (=> b!373756 (= lt!172030 (getCurrentListMap!1898 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172029 () ListLongMap!4871)

(declare-fun lt!172027 () array!21693)

(assert (=> b!373756 (= lt!172029 (getCurrentListMap!1898 lt!172015 lt!172027 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172026 () ListLongMap!4871)

(declare-fun lt!172016 () ListLongMap!4871)

(assert (=> b!373756 (and (= lt!172026 lt!172016) (= lt!172016 lt!172026))))

(declare-fun lt!172020 () ListLongMap!4871)

(assert (=> b!373756 (= lt!172016 (+!792 lt!172020 lt!172024))))

(assert (=> b!373756 (= lt!172024 (tuple2!5945 k!778 v!373))))

(declare-fun lt!172018 () Unit!11487)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!49 (array!21691 array!21693 (_ BitVec 32) (_ BitVec 32) V!12963 V!12963 (_ BitVec 32) (_ BitVec 64) V!12963 (_ BitVec 32) Int) Unit!11487)

(assert (=> b!373756 (= lt!172018 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!49 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!716 (array!21691 array!21693 (_ BitVec 32) (_ BitVec 32) V!12963 V!12963 (_ BitVec 32) Int) ListLongMap!4871)

(assert (=> b!373756 (= lt!172026 (getCurrentListMapNoExtraKeys!716 lt!172015 lt!172027 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373756 (= lt!172027 (array!21694 (store (arr!10312 _values!506) i!548 (ValueCellFull!4103 v!373)) (size!10664 _values!506)))))

(assert (=> b!373756 (= lt!172020 (getCurrentListMapNoExtraKeys!716 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373757 () Bool)

(assert (=> b!373757 (= e!227834 e!227828)))

(declare-fun res!210712 () Bool)

(assert (=> b!373757 (=> res!210712 e!227828)))

(assert (=> b!373757 (= res!210712 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172022 () ListLongMap!4871)

(assert (=> b!373757 (= lt!172022 lt!172023)))

(assert (=> b!373757 (= lt!172023 (+!792 lt!172025 lt!172024))))

(declare-fun lt!172014 () Unit!11487)

(assert (=> b!373757 (= lt!172014 (addCommutativeForDiffKeys!221 lt!172020 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373757 (= lt!172029 (+!792 lt!172022 lt!172028))))

(declare-fun lt!172017 () tuple2!5944)

(assert (=> b!373757 (= lt!172022 (+!792 lt!172016 lt!172017))))

(assert (=> b!373757 (= lt!172030 lt!172019)))

(assert (=> b!373757 (= lt!172019 (+!792 lt!172025 lt!172028))))

(assert (=> b!373757 (= lt!172025 (+!792 lt!172020 lt!172017))))

(assert (=> b!373757 (= lt!172029 (+!792 (+!792 lt!172026 lt!172017) lt!172028))))

(assert (=> b!373757 (= lt!172028 (tuple2!5945 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373757 (= lt!172017 (tuple2!5945 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373758 () Bool)

(declare-fun res!210709 () Bool)

(assert (=> b!373758 (=> (not res!210709) (not e!227829))))

(assert (=> b!373758 (= res!210709 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10663 _keys!658))))))

(declare-fun res!210715 () Bool)

(assert (=> start!37126 (=> (not res!210715) (not e!227829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37126 (= res!210715 (validMask!0 mask!970))))

(assert (=> start!37126 e!227829))

(declare-fun e!227835 () Bool)

(declare-fun array_inv!7608 (array!21693) Bool)

(assert (=> start!37126 (and (array_inv!7608 _values!506) e!227835)))

(assert (=> start!37126 tp!29451))

(assert (=> start!37126 true))

(declare-fun tp_is_empty!8893 () Bool)

(assert (=> start!37126 tp_is_empty!8893))

(declare-fun array_inv!7609 (array!21691) Bool)

(assert (=> start!37126 (array_inv!7609 _keys!658)))

(declare-fun b!373759 () Bool)

(declare-fun res!210710 () Bool)

(assert (=> b!373759 (=> (not res!210710) (not e!227829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373759 (= res!210710 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!14904 () Bool)

(assert (=> mapIsEmpty!14904 mapRes!14904))

(declare-fun b!373760 () Bool)

(declare-fun res!210711 () Bool)

(assert (=> b!373760 (=> (not res!210711) (not e!227829))))

(assert (=> b!373760 (= res!210711 (and (= (size!10664 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10663 _keys!658) (size!10664 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373761 () Bool)

(declare-fun res!210716 () Bool)

(assert (=> b!373761 (=> (not res!210716) (not e!227829))))

(assert (=> b!373761 (= res!210716 (or (= (select (arr!10311 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10311 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373762 () Bool)

(declare-fun res!210707 () Bool)

(assert (=> b!373762 (=> (not res!210707) (not e!227829))))

(declare-fun arrayContainsKey!0 (array!21691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373762 (= res!210707 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373763 () Bool)

(declare-fun res!210714 () Bool)

(assert (=> b!373763 (=> (not res!210714) (not e!227833))))

(assert (=> b!373763 (= res!210714 (arrayNoDuplicates!0 lt!172015 #b00000000000000000000000000000000 Nil!5813))))

(declare-fun b!373764 () Bool)

(assert (=> b!373764 (= e!227830 tp_is_empty!8893)))

(declare-fun b!373765 () Bool)

(declare-fun e!227832 () Bool)

(assert (=> b!373765 (= e!227832 tp_is_empty!8893)))

(declare-fun b!373766 () Bool)

(assert (=> b!373766 (= e!227835 (and e!227832 mapRes!14904))))

(declare-fun condMapEmpty!14904 () Bool)

(declare-fun mapDefault!14904 () ValueCell!4103)

