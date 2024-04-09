; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37308 () Bool)

(assert start!37308)

(declare-fun b_free!8427 () Bool)

(declare-fun b_next!8427 () Bool)

(assert (=> start!37308 (= b_free!8427 (not b_next!8427))))

(declare-fun tp!29997 () Bool)

(declare-fun b_and!15687 () Bool)

(assert (=> start!37308 (= tp!29997 b_and!15687)))

(declare-fun b!377856 () Bool)

(declare-fun res!213995 () Bool)

(declare-fun e!230014 () Bool)

(assert (=> b!377856 (=> (not res!213995) (not e!230014))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13205 0))(
  ( (V!13206 (val!4582 Int)) )
))
(declare-datatypes ((ValueCell!4194 0))(
  ( (ValueCellFull!4194 (v!6775 V!13205)) (EmptyCell!4194) )
))
(declare-datatypes ((array!22049 0))(
  ( (array!22050 (arr!10490 (Array (_ BitVec 32) ValueCell!4194)) (size!10842 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22049)

(declare-datatypes ((array!22051 0))(
  ( (array!22052 (arr!10491 (Array (_ BitVec 32) (_ BitVec 64))) (size!10843 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22051)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!377856 (= res!213995 (and (= (size!10842 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10843 _keys!658) (size!10842 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377857 () Bool)

(declare-fun e!230013 () Bool)

(assert (=> b!377857 (= e!230014 e!230013)))

(declare-fun res!213996 () Bool)

(assert (=> b!377857 (=> (not res!213996) (not e!230013))))

(declare-fun lt!175988 () array!22051)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22051 (_ BitVec 32)) Bool)

(assert (=> b!377857 (= res!213996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175988 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377857 (= lt!175988 (array!22052 (store (arr!10491 _keys!658) i!548 k0!778) (size!10843 _keys!658)))))

(declare-fun b!377858 () Bool)

(declare-fun res!213993 () Bool)

(assert (=> b!377858 (=> (not res!213993) (not e!230013))))

(declare-datatypes ((List!5959 0))(
  ( (Nil!5956) (Cons!5955 (h!6811 (_ BitVec 64)) (t!11117 List!5959)) )
))
(declare-fun arrayNoDuplicates!0 (array!22051 (_ BitVec 32) List!5959) Bool)

(assert (=> b!377858 (= res!213993 (arrayNoDuplicates!0 lt!175988 #b00000000000000000000000000000000 Nil!5956))))

(declare-fun b!377859 () Bool)

(declare-fun res!213992 () Bool)

(assert (=> b!377859 (=> (not res!213992) (not e!230014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377859 (= res!213992 (validKeyInArray!0 k0!778))))

(declare-fun b!377860 () Bool)

(declare-fun e!230015 () Bool)

(declare-fun e!230019 () Bool)

(assert (=> b!377860 (= e!230015 e!230019)))

(declare-fun res!213990 () Bool)

(assert (=> b!377860 (=> res!213990 e!230019)))

(assert (=> b!377860 (= res!213990 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6088 0))(
  ( (tuple2!6089 (_1!3054 (_ BitVec 64)) (_2!3054 V!13205)) )
))
(declare-datatypes ((List!5960 0))(
  ( (Nil!5957) (Cons!5956 (h!6812 tuple2!6088) (t!11118 List!5960)) )
))
(declare-datatypes ((ListLongMap!5015 0))(
  ( (ListLongMap!5016 (toList!2523 List!5960)) )
))
(declare-fun lt!175993 () ListLongMap!5015)

(declare-fun lt!175995 () ListLongMap!5015)

(assert (=> b!377860 (= lt!175993 lt!175995)))

(declare-fun lt!175997 () ListLongMap!5015)

(declare-fun lt!175991 () tuple2!6088)

(declare-fun +!864 (ListLongMap!5015 tuple2!6088) ListLongMap!5015)

(assert (=> b!377860 (= lt!175995 (+!864 lt!175997 lt!175991))))

(declare-fun lt!175990 () ListLongMap!5015)

(declare-fun lt!175992 () ListLongMap!5015)

(assert (=> b!377860 (= lt!175990 lt!175992)))

(declare-fun lt!175996 () ListLongMap!5015)

(assert (=> b!377860 (= lt!175992 (+!864 lt!175996 lt!175991))))

(declare-fun lt!175994 () ListLongMap!5015)

(assert (=> b!377860 (= lt!175993 (+!864 lt!175994 lt!175991))))

(declare-fun zeroValue!472 () V!13205)

(assert (=> b!377860 (= lt!175991 (tuple2!6089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377861 () Bool)

(declare-fun res!213999 () Bool)

(assert (=> b!377861 (=> (not res!213999) (not e!230014))))

(assert (=> b!377861 (= res!213999 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5956))))

(declare-fun mapIsEmpty!15177 () Bool)

(declare-fun mapRes!15177 () Bool)

(assert (=> mapIsEmpty!15177 mapRes!15177))

(declare-fun b!377862 () Bool)

(declare-fun e!230018 () Bool)

(declare-fun tp_is_empty!9075 () Bool)

(assert (=> b!377862 (= e!230018 tp_is_empty!9075)))

(declare-fun res!213998 () Bool)

(assert (=> start!37308 (=> (not res!213998) (not e!230014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37308 (= res!213998 (validMask!0 mask!970))))

(assert (=> start!37308 e!230014))

(declare-fun e!230016 () Bool)

(declare-fun array_inv!7720 (array!22049) Bool)

(assert (=> start!37308 (and (array_inv!7720 _values!506) e!230016)))

(assert (=> start!37308 tp!29997))

(assert (=> start!37308 true))

(assert (=> start!37308 tp_is_empty!9075))

(declare-fun array_inv!7721 (array!22051) Bool)

(assert (=> start!37308 (array_inv!7721 _keys!658)))

(declare-fun b!377863 () Bool)

(declare-fun res!214000 () Bool)

(assert (=> b!377863 (=> (not res!214000) (not e!230014))))

(assert (=> b!377863 (= res!214000 (or (= (select (arr!10491 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10491 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377864 () Bool)

(assert (=> b!377864 (= e!230019 true)))

(declare-fun lt!175999 () tuple2!6088)

(assert (=> b!377864 (= lt!175995 (+!864 lt!175992 lt!175999))))

(declare-fun v!373 () V!13205)

(declare-datatypes ((Unit!11627 0))(
  ( (Unit!11628) )
))
(declare-fun lt!175989 () Unit!11627)

(declare-fun addCommutativeForDiffKeys!281 (ListLongMap!5015 (_ BitVec 64) V!13205 (_ BitVec 64) V!13205) Unit!11627)

(assert (=> b!377864 (= lt!175989 (addCommutativeForDiffKeys!281 lt!175996 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377865 () Bool)

(declare-fun e!230012 () Bool)

(assert (=> b!377865 (= e!230016 (and e!230012 mapRes!15177))))

(declare-fun condMapEmpty!15177 () Bool)

(declare-fun mapDefault!15177 () ValueCell!4194)

(assert (=> b!377865 (= condMapEmpty!15177 (= (arr!10490 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4194)) mapDefault!15177)))))

(declare-fun b!377866 () Bool)

(assert (=> b!377866 (= e!230012 tp_is_empty!9075)))

(declare-fun mapNonEmpty!15177 () Bool)

(declare-fun tp!29996 () Bool)

(assert (=> mapNonEmpty!15177 (= mapRes!15177 (and tp!29996 e!230018))))

(declare-fun mapRest!15177 () (Array (_ BitVec 32) ValueCell!4194))

(declare-fun mapKey!15177 () (_ BitVec 32))

(declare-fun mapValue!15177 () ValueCell!4194)

(assert (=> mapNonEmpty!15177 (= (arr!10490 _values!506) (store mapRest!15177 mapKey!15177 mapValue!15177))))

(declare-fun b!377867 () Bool)

(declare-fun res!214001 () Bool)

(assert (=> b!377867 (=> (not res!214001) (not e!230014))))

(declare-fun arrayContainsKey!0 (array!22051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377867 (= res!214001 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377868 () Bool)

(declare-fun res!213997 () Bool)

(assert (=> b!377868 (=> (not res!213997) (not e!230014))))

(assert (=> b!377868 (= res!213997 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10843 _keys!658))))))

(declare-fun b!377869 () Bool)

(declare-fun res!213994 () Bool)

(assert (=> b!377869 (=> (not res!213994) (not e!230014))))

(assert (=> b!377869 (= res!213994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377870 () Bool)

(assert (=> b!377870 (= e!230013 (not e!230015))))

(declare-fun res!213991 () Bool)

(assert (=> b!377870 (=> res!213991 e!230015)))

(assert (=> b!377870 (= res!213991 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13205)

(declare-fun getCurrentListMap!1958 (array!22051 array!22049 (_ BitVec 32) (_ BitVec 32) V!13205 V!13205 (_ BitVec 32) Int) ListLongMap!5015)

(assert (=> b!377870 (= lt!175990 (getCurrentListMap!1958 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175987 () array!22049)

(assert (=> b!377870 (= lt!175993 (getCurrentListMap!1958 lt!175988 lt!175987 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377870 (and (= lt!175994 lt!175997) (= lt!175997 lt!175994))))

(assert (=> b!377870 (= lt!175997 (+!864 lt!175996 lt!175999))))

(assert (=> b!377870 (= lt!175999 (tuple2!6089 k0!778 v!373))))

(declare-fun lt!175998 () Unit!11627)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!109 (array!22051 array!22049 (_ BitVec 32) (_ BitVec 32) V!13205 V!13205 (_ BitVec 32) (_ BitVec 64) V!13205 (_ BitVec 32) Int) Unit!11627)

(assert (=> b!377870 (= lt!175998 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!109 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!776 (array!22051 array!22049 (_ BitVec 32) (_ BitVec 32) V!13205 V!13205 (_ BitVec 32) Int) ListLongMap!5015)

(assert (=> b!377870 (= lt!175994 (getCurrentListMapNoExtraKeys!776 lt!175988 lt!175987 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377870 (= lt!175987 (array!22050 (store (arr!10490 _values!506) i!548 (ValueCellFull!4194 v!373)) (size!10842 _values!506)))))

(assert (=> b!377870 (= lt!175996 (getCurrentListMapNoExtraKeys!776 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37308 res!213998) b!377856))

(assert (= (and b!377856 res!213995) b!377869))

(assert (= (and b!377869 res!213994) b!377861))

(assert (= (and b!377861 res!213999) b!377868))

(assert (= (and b!377868 res!213997) b!377859))

(assert (= (and b!377859 res!213992) b!377863))

(assert (= (and b!377863 res!214000) b!377867))

(assert (= (and b!377867 res!214001) b!377857))

(assert (= (and b!377857 res!213996) b!377858))

(assert (= (and b!377858 res!213993) b!377870))

(assert (= (and b!377870 (not res!213991)) b!377860))

(assert (= (and b!377860 (not res!213990)) b!377864))

(assert (= (and b!377865 condMapEmpty!15177) mapIsEmpty!15177))

(assert (= (and b!377865 (not condMapEmpty!15177)) mapNonEmpty!15177))

(get-info :version)

(assert (= (and mapNonEmpty!15177 ((_ is ValueCellFull!4194) mapValue!15177)) b!377862))

(assert (= (and b!377865 ((_ is ValueCellFull!4194) mapDefault!15177)) b!377866))

(assert (= start!37308 b!377865))

(declare-fun m!374705 () Bool)

(assert (=> b!377858 m!374705))

(declare-fun m!374707 () Bool)

(assert (=> b!377859 m!374707))

(declare-fun m!374709 () Bool)

(assert (=> b!377867 m!374709))

(declare-fun m!374711 () Bool)

(assert (=> b!377863 m!374711))

(declare-fun m!374713 () Bool)

(assert (=> start!37308 m!374713))

(declare-fun m!374715 () Bool)

(assert (=> start!37308 m!374715))

(declare-fun m!374717 () Bool)

(assert (=> start!37308 m!374717))

(declare-fun m!374719 () Bool)

(assert (=> b!377864 m!374719))

(declare-fun m!374721 () Bool)

(assert (=> b!377864 m!374721))

(declare-fun m!374723 () Bool)

(assert (=> mapNonEmpty!15177 m!374723))

(declare-fun m!374725 () Bool)

(assert (=> b!377857 m!374725))

(declare-fun m!374727 () Bool)

(assert (=> b!377857 m!374727))

(declare-fun m!374729 () Bool)

(assert (=> b!377860 m!374729))

(declare-fun m!374731 () Bool)

(assert (=> b!377860 m!374731))

(declare-fun m!374733 () Bool)

(assert (=> b!377860 m!374733))

(declare-fun m!374735 () Bool)

(assert (=> b!377861 m!374735))

(declare-fun m!374737 () Bool)

(assert (=> b!377869 m!374737))

(declare-fun m!374739 () Bool)

(assert (=> b!377870 m!374739))

(declare-fun m!374741 () Bool)

(assert (=> b!377870 m!374741))

(declare-fun m!374743 () Bool)

(assert (=> b!377870 m!374743))

(declare-fun m!374745 () Bool)

(assert (=> b!377870 m!374745))

(declare-fun m!374747 () Bool)

(assert (=> b!377870 m!374747))

(declare-fun m!374749 () Bool)

(assert (=> b!377870 m!374749))

(declare-fun m!374751 () Bool)

(assert (=> b!377870 m!374751))

(check-sat (not start!37308) (not b_next!8427) (not b!377858) (not b!377867) b_and!15687 (not b!377859) (not b!377870) (not b!377864) (not b!377869) tp_is_empty!9075 (not mapNonEmpty!15177) (not b!377861) (not b!377860) (not b!377857))
(check-sat b_and!15687 (not b_next!8427))
