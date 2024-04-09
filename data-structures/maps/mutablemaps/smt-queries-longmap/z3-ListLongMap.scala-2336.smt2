; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37488 () Bool)

(assert start!37488)

(declare-fun b_free!8607 () Bool)

(declare-fun b_next!8607 () Bool)

(assert (=> start!37488 (= b_free!8607 (not b_next!8607))))

(declare-fun tp!30536 () Bool)

(declare-fun b_and!15867 () Bool)

(assert (=> start!37488 (= tp!30536 b_and!15867)))

(declare-fun res!217154 () Bool)

(declare-fun e!232087 () Bool)

(assert (=> start!37488 (=> (not res!217154) (not e!232087))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37488 (= res!217154 (validMask!0 mask!970))))

(assert (=> start!37488 e!232087))

(declare-datatypes ((V!13445 0))(
  ( (V!13446 (val!4672 Int)) )
))
(declare-datatypes ((ValueCell!4284 0))(
  ( (ValueCellFull!4284 (v!6865 V!13445)) (EmptyCell!4284) )
))
(declare-datatypes ((array!22401 0))(
  ( (array!22402 (arr!10666 (Array (_ BitVec 32) ValueCell!4284)) (size!11018 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22401)

(declare-fun e!232092 () Bool)

(declare-fun array_inv!7832 (array!22401) Bool)

(assert (=> start!37488 (and (array_inv!7832 _values!506) e!232092)))

(assert (=> start!37488 tp!30536))

(assert (=> start!37488 true))

(declare-fun tp_is_empty!9255 () Bool)

(assert (=> start!37488 tp_is_empty!9255))

(declare-datatypes ((array!22403 0))(
  ( (array!22404 (arr!10667 (Array (_ BitVec 32) (_ BitVec 64))) (size!11019 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22403)

(declare-fun array_inv!7833 (array!22403) Bool)

(assert (=> start!37488 (array_inv!7833 _keys!658)))

(declare-fun mapIsEmpty!15447 () Bool)

(declare-fun mapRes!15447 () Bool)

(assert (=> mapIsEmpty!15447 mapRes!15447))

(declare-fun b!381829 () Bool)

(declare-fun e!232086 () Bool)

(assert (=> b!381829 (= e!232087 e!232086)))

(declare-fun res!217155 () Bool)

(assert (=> b!381829 (=> (not res!217155) (not e!232086))))

(declare-fun lt!179120 () array!22403)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22403 (_ BitVec 32)) Bool)

(assert (=> b!381829 (= res!217155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179120 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381829 (= lt!179120 (array!22404 (store (arr!10667 _keys!658) i!548 k0!778) (size!11019 _keys!658)))))

(declare-fun b!381830 () Bool)

(declare-fun e!232089 () Bool)

(assert (=> b!381830 (= e!232089 tp_is_empty!9255)))

(declare-fun b!381831 () Bool)

(declare-fun res!217158 () Bool)

(assert (=> b!381831 (=> (not res!217158) (not e!232087))))

(assert (=> b!381831 (= res!217158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381832 () Bool)

(declare-fun res!217159 () Bool)

(assert (=> b!381832 (=> (not res!217159) (not e!232087))))

(declare-fun arrayContainsKey!0 (array!22403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381832 (= res!217159 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!381833 () Bool)

(declare-fun e!232090 () Bool)

(assert (=> b!381833 (= e!232086 (not e!232090))))

(declare-fun res!217153 () Bool)

(assert (=> b!381833 (=> res!217153 e!232090)))

(declare-fun lt!179123 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381833 (= res!217153 (or (and (not lt!179123) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179123) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179123)))))

(assert (=> b!381833 (= lt!179123 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13445)

(declare-datatypes ((tuple2!6228 0))(
  ( (tuple2!6229 (_1!3124 (_ BitVec 64)) (_2!3124 V!13445)) )
))
(declare-datatypes ((List!6097 0))(
  ( (Nil!6094) (Cons!6093 (h!6949 tuple2!6228) (t!11255 List!6097)) )
))
(declare-datatypes ((ListLongMap!5155 0))(
  ( (ListLongMap!5156 (toList!2593 List!6097)) )
))
(declare-fun lt!179121 () ListLongMap!5155)

(declare-fun minValue!472 () V!13445)

(declare-fun getCurrentListMap!2012 (array!22403 array!22401 (_ BitVec 32) (_ BitVec 32) V!13445 V!13445 (_ BitVec 32) Int) ListLongMap!5155)

(assert (=> b!381833 (= lt!179121 (getCurrentListMap!2012 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179118 () array!22401)

(declare-fun lt!179124 () ListLongMap!5155)

(assert (=> b!381833 (= lt!179124 (getCurrentListMap!2012 lt!179120 lt!179118 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179117 () ListLongMap!5155)

(declare-fun lt!179119 () ListLongMap!5155)

(assert (=> b!381833 (and (= lt!179117 lt!179119) (= lt!179119 lt!179117))))

(declare-fun v!373 () V!13445)

(declare-fun lt!179122 () ListLongMap!5155)

(declare-fun +!930 (ListLongMap!5155 tuple2!6228) ListLongMap!5155)

(assert (=> b!381833 (= lt!179119 (+!930 lt!179122 (tuple2!6229 k0!778 v!373)))))

(declare-datatypes ((Unit!11753 0))(
  ( (Unit!11754) )
))
(declare-fun lt!179125 () Unit!11753)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!163 (array!22403 array!22401 (_ BitVec 32) (_ BitVec 32) V!13445 V!13445 (_ BitVec 32) (_ BitVec 64) V!13445 (_ BitVec 32) Int) Unit!11753)

(assert (=> b!381833 (= lt!179125 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!163 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!830 (array!22403 array!22401 (_ BitVec 32) (_ BitVec 32) V!13445 V!13445 (_ BitVec 32) Int) ListLongMap!5155)

(assert (=> b!381833 (= lt!179117 (getCurrentListMapNoExtraKeys!830 lt!179120 lt!179118 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381833 (= lt!179118 (array!22402 (store (arr!10666 _values!506) i!548 (ValueCellFull!4284 v!373)) (size!11018 _values!506)))))

(assert (=> b!381833 (= lt!179122 (getCurrentListMapNoExtraKeys!830 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381834 () Bool)

(declare-fun res!217161 () Bool)

(assert (=> b!381834 (=> (not res!217161) (not e!232087))))

(assert (=> b!381834 (= res!217161 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11019 _keys!658))))))

(declare-fun b!381835 () Bool)

(declare-fun res!217160 () Bool)

(assert (=> b!381835 (=> (not res!217160) (not e!232087))))

(assert (=> b!381835 (= res!217160 (or (= (select (arr!10667 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10667 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381836 () Bool)

(declare-fun res!217157 () Bool)

(assert (=> b!381836 (=> (not res!217157) (not e!232087))))

(declare-datatypes ((List!6098 0))(
  ( (Nil!6095) (Cons!6094 (h!6950 (_ BitVec 64)) (t!11256 List!6098)) )
))
(declare-fun arrayNoDuplicates!0 (array!22403 (_ BitVec 32) List!6098) Bool)

(assert (=> b!381836 (= res!217157 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6095))))

(declare-fun b!381837 () Bool)

(declare-fun res!217163 () Bool)

(assert (=> b!381837 (=> (not res!217163) (not e!232087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381837 (= res!217163 (validKeyInArray!0 k0!778))))

(declare-fun b!381838 () Bool)

(declare-fun e!232088 () Bool)

(assert (=> b!381838 (= e!232092 (and e!232088 mapRes!15447))))

(declare-fun condMapEmpty!15447 () Bool)

(declare-fun mapDefault!15447 () ValueCell!4284)

(assert (=> b!381838 (= condMapEmpty!15447 (= (arr!10666 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4284)) mapDefault!15447)))))

(declare-fun b!381839 () Bool)

(declare-fun res!217162 () Bool)

(assert (=> b!381839 (=> (not res!217162) (not e!232087))))

(assert (=> b!381839 (= res!217162 (and (= (size!11018 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11019 _keys!658) (size!11018 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381840 () Bool)

(assert (=> b!381840 (= e!232088 tp_is_empty!9255)))

(declare-fun mapNonEmpty!15447 () Bool)

(declare-fun tp!30537 () Bool)

(assert (=> mapNonEmpty!15447 (= mapRes!15447 (and tp!30537 e!232089))))

(declare-fun mapKey!15447 () (_ BitVec 32))

(declare-fun mapValue!15447 () ValueCell!4284)

(declare-fun mapRest!15447 () (Array (_ BitVec 32) ValueCell!4284))

(assert (=> mapNonEmpty!15447 (= (arr!10666 _values!506) (store mapRest!15447 mapKey!15447 mapValue!15447))))

(declare-fun b!381841 () Bool)

(assert (=> b!381841 (= e!232090 true)))

(assert (=> b!381841 (= lt!179124 lt!179117)))

(declare-fun b!381842 () Bool)

(declare-fun res!217156 () Bool)

(assert (=> b!381842 (=> (not res!217156) (not e!232086))))

(assert (=> b!381842 (= res!217156 (arrayNoDuplicates!0 lt!179120 #b00000000000000000000000000000000 Nil!6095))))

(assert (= (and start!37488 res!217154) b!381839))

(assert (= (and b!381839 res!217162) b!381831))

(assert (= (and b!381831 res!217158) b!381836))

(assert (= (and b!381836 res!217157) b!381834))

(assert (= (and b!381834 res!217161) b!381837))

(assert (= (and b!381837 res!217163) b!381835))

(assert (= (and b!381835 res!217160) b!381832))

(assert (= (and b!381832 res!217159) b!381829))

(assert (= (and b!381829 res!217155) b!381842))

(assert (= (and b!381842 res!217156) b!381833))

(assert (= (and b!381833 (not res!217153)) b!381841))

(assert (= (and b!381838 condMapEmpty!15447) mapIsEmpty!15447))

(assert (= (and b!381838 (not condMapEmpty!15447)) mapNonEmpty!15447))

(get-info :version)

(assert (= (and mapNonEmpty!15447 ((_ is ValueCellFull!4284) mapValue!15447)) b!381830))

(assert (= (and b!381838 ((_ is ValueCellFull!4284) mapDefault!15447)) b!381840))

(assert (= start!37488 b!381838))

(declare-fun m!378733 () Bool)

(assert (=> b!381835 m!378733))

(declare-fun m!378735 () Bool)

(assert (=> b!381842 m!378735))

(declare-fun m!378737 () Bool)

(assert (=> b!381829 m!378737))

(declare-fun m!378739 () Bool)

(assert (=> b!381829 m!378739))

(declare-fun m!378741 () Bool)

(assert (=> b!381832 m!378741))

(declare-fun m!378743 () Bool)

(assert (=> mapNonEmpty!15447 m!378743))

(declare-fun m!378745 () Bool)

(assert (=> b!381837 m!378745))

(declare-fun m!378747 () Bool)

(assert (=> b!381831 m!378747))

(declare-fun m!378749 () Bool)

(assert (=> b!381833 m!378749))

(declare-fun m!378751 () Bool)

(assert (=> b!381833 m!378751))

(declare-fun m!378753 () Bool)

(assert (=> b!381833 m!378753))

(declare-fun m!378755 () Bool)

(assert (=> b!381833 m!378755))

(declare-fun m!378757 () Bool)

(assert (=> b!381833 m!378757))

(declare-fun m!378759 () Bool)

(assert (=> b!381833 m!378759))

(declare-fun m!378761 () Bool)

(assert (=> b!381833 m!378761))

(declare-fun m!378763 () Bool)

(assert (=> b!381836 m!378763))

(declare-fun m!378765 () Bool)

(assert (=> start!37488 m!378765))

(declare-fun m!378767 () Bool)

(assert (=> start!37488 m!378767))

(declare-fun m!378769 () Bool)

(assert (=> start!37488 m!378769))

(check-sat (not b!381831) (not b!381829) (not b!381842) tp_is_empty!9255 b_and!15867 (not mapNonEmpty!15447) (not b!381836) (not b_next!8607) (not b!381832) (not b!381833) (not b!381837) (not start!37488))
(check-sat b_and!15867 (not b_next!8607))
