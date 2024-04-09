; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37458 () Bool)

(assert start!37458)

(declare-fun b_free!8577 () Bool)

(declare-fun b_next!8577 () Bool)

(assert (=> start!37458 (= b_free!8577 (not b_next!8577))))

(declare-fun tp!30447 () Bool)

(declare-fun b_and!15837 () Bool)

(assert (=> start!37458 (= tp!30447 b_and!15837)))

(declare-fun b!381199 () Bool)

(declare-fun res!216658 () Bool)

(declare-fun e!231775 () Bool)

(assert (=> b!381199 (=> (not res!216658) (not e!231775))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22343 0))(
  ( (array!22344 (arr!10637 (Array (_ BitVec 32) (_ BitVec 64))) (size!10989 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22343)

(assert (=> b!381199 (= res!216658 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10989 _keys!658))))))

(declare-fun b!381200 () Bool)

(declare-fun e!231777 () Bool)

(assert (=> b!381200 (= e!231777 true)))

(declare-datatypes ((V!13405 0))(
  ( (V!13406 (val!4657 Int)) )
))
(declare-datatypes ((tuple2!6208 0))(
  ( (tuple2!6209 (_1!3114 (_ BitVec 64)) (_2!3114 V!13405)) )
))
(declare-datatypes ((List!6079 0))(
  ( (Nil!6076) (Cons!6075 (h!6931 tuple2!6208) (t!11237 List!6079)) )
))
(declare-datatypes ((ListLongMap!5135 0))(
  ( (ListLongMap!5136 (toList!2583 List!6079)) )
))
(declare-fun lt!178719 () ListLongMap!5135)

(declare-fun lt!178716 () ListLongMap!5135)

(assert (=> b!381200 (= lt!178719 lt!178716)))

(declare-fun b!381201 () Bool)

(declare-fun res!216659 () Bool)

(assert (=> b!381201 (=> (not res!216659) (not e!231775))))

(declare-datatypes ((List!6080 0))(
  ( (Nil!6077) (Cons!6076 (h!6932 (_ BitVec 64)) (t!11238 List!6080)) )
))
(declare-fun arrayNoDuplicates!0 (array!22343 (_ BitVec 32) List!6080) Bool)

(assert (=> b!381201 (= res!216659 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6077))))

(declare-fun b!381202 () Bool)

(declare-fun res!216663 () Bool)

(assert (=> b!381202 (=> (not res!216663) (not e!231775))))

(assert (=> b!381202 (= res!216663 (or (= (select (arr!10637 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10637 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381203 () Bool)

(declare-fun res!216665 () Bool)

(assert (=> b!381203 (=> (not res!216665) (not e!231775))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381203 (= res!216665 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!381204 () Bool)

(declare-fun e!231774 () Bool)

(declare-fun tp_is_empty!9225 () Bool)

(assert (=> b!381204 (= e!231774 tp_is_empty!9225)))

(declare-fun b!381205 () Bool)

(declare-fun res!216666 () Bool)

(assert (=> b!381205 (=> (not res!216666) (not e!231775))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22343 (_ BitVec 32)) Bool)

(assert (=> b!381205 (= res!216666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!216662 () Bool)

(assert (=> start!37458 (=> (not res!216662) (not e!231775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37458 (= res!216662 (validMask!0 mask!970))))

(assert (=> start!37458 e!231775))

(declare-datatypes ((ValueCell!4269 0))(
  ( (ValueCellFull!4269 (v!6850 V!13405)) (EmptyCell!4269) )
))
(declare-datatypes ((array!22345 0))(
  ( (array!22346 (arr!10638 (Array (_ BitVec 32) ValueCell!4269)) (size!10990 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22345)

(declare-fun e!231776 () Bool)

(declare-fun array_inv!7818 (array!22345) Bool)

(assert (=> start!37458 (and (array_inv!7818 _values!506) e!231776)))

(assert (=> start!37458 tp!30447))

(assert (=> start!37458 true))

(assert (=> start!37458 tp_is_empty!9225))

(declare-fun array_inv!7819 (array!22343) Bool)

(assert (=> start!37458 (array_inv!7819 _keys!658)))

(declare-fun b!381206 () Bool)

(declare-fun e!231773 () Bool)

(assert (=> b!381206 (= e!231773 (not e!231777))))

(declare-fun res!216668 () Bool)

(assert (=> b!381206 (=> res!216668 e!231777)))

(declare-fun lt!178718 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381206 (= res!216668 (or (and (not lt!178718) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178718) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178718)))))

(assert (=> b!381206 (= lt!178718 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!178715 () ListLongMap!5135)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13405)

(declare-fun minValue!472 () V!13405)

(declare-fun getCurrentListMap!2003 (array!22343 array!22345 (_ BitVec 32) (_ BitVec 32) V!13405 V!13405 (_ BitVec 32) Int) ListLongMap!5135)

(assert (=> b!381206 (= lt!178715 (getCurrentListMap!2003 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178714 () array!22343)

(declare-fun lt!178720 () array!22345)

(assert (=> b!381206 (= lt!178719 (getCurrentListMap!2003 lt!178714 lt!178720 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178717 () ListLongMap!5135)

(assert (=> b!381206 (and (= lt!178716 lt!178717) (= lt!178717 lt!178716))))

(declare-fun v!373 () V!13405)

(declare-fun lt!178712 () ListLongMap!5135)

(declare-fun +!921 (ListLongMap!5135 tuple2!6208) ListLongMap!5135)

(assert (=> b!381206 (= lt!178717 (+!921 lt!178712 (tuple2!6209 k0!778 v!373)))))

(declare-datatypes ((Unit!11735 0))(
  ( (Unit!11736) )
))
(declare-fun lt!178713 () Unit!11735)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!154 (array!22343 array!22345 (_ BitVec 32) (_ BitVec 32) V!13405 V!13405 (_ BitVec 32) (_ BitVec 64) V!13405 (_ BitVec 32) Int) Unit!11735)

(assert (=> b!381206 (= lt!178713 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!154 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!821 (array!22343 array!22345 (_ BitVec 32) (_ BitVec 32) V!13405 V!13405 (_ BitVec 32) Int) ListLongMap!5135)

(assert (=> b!381206 (= lt!178716 (getCurrentListMapNoExtraKeys!821 lt!178714 lt!178720 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381206 (= lt!178720 (array!22346 (store (arr!10638 _values!506) i!548 (ValueCellFull!4269 v!373)) (size!10990 _values!506)))))

(assert (=> b!381206 (= lt!178712 (getCurrentListMapNoExtraKeys!821 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381207 () Bool)

(declare-fun res!216667 () Bool)

(assert (=> b!381207 (=> (not res!216667) (not e!231775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381207 (= res!216667 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!15402 () Bool)

(declare-fun mapRes!15402 () Bool)

(assert (=> mapIsEmpty!15402 mapRes!15402))

(declare-fun b!381208 () Bool)

(declare-fun res!216664 () Bool)

(assert (=> b!381208 (=> (not res!216664) (not e!231773))))

(assert (=> b!381208 (= res!216664 (arrayNoDuplicates!0 lt!178714 #b00000000000000000000000000000000 Nil!6077))))

(declare-fun b!381209 () Bool)

(declare-fun res!216660 () Bool)

(assert (=> b!381209 (=> (not res!216660) (not e!231775))))

(assert (=> b!381209 (= res!216660 (and (= (size!10990 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10989 _keys!658) (size!10990 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381210 () Bool)

(assert (=> b!381210 (= e!231775 e!231773)))

(declare-fun res!216661 () Bool)

(assert (=> b!381210 (=> (not res!216661) (not e!231773))))

(assert (=> b!381210 (= res!216661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178714 mask!970))))

(assert (=> b!381210 (= lt!178714 (array!22344 (store (arr!10637 _keys!658) i!548 k0!778) (size!10989 _keys!658)))))

(declare-fun b!381211 () Bool)

(declare-fun e!231772 () Bool)

(assert (=> b!381211 (= e!231776 (and e!231772 mapRes!15402))))

(declare-fun condMapEmpty!15402 () Bool)

(declare-fun mapDefault!15402 () ValueCell!4269)

(assert (=> b!381211 (= condMapEmpty!15402 (= (arr!10638 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4269)) mapDefault!15402)))))

(declare-fun b!381212 () Bool)

(assert (=> b!381212 (= e!231772 tp_is_empty!9225)))

(declare-fun mapNonEmpty!15402 () Bool)

(declare-fun tp!30446 () Bool)

(assert (=> mapNonEmpty!15402 (= mapRes!15402 (and tp!30446 e!231774))))

(declare-fun mapRest!15402 () (Array (_ BitVec 32) ValueCell!4269))

(declare-fun mapKey!15402 () (_ BitVec 32))

(declare-fun mapValue!15402 () ValueCell!4269)

(assert (=> mapNonEmpty!15402 (= (arr!10638 _values!506) (store mapRest!15402 mapKey!15402 mapValue!15402))))

(assert (= (and start!37458 res!216662) b!381209))

(assert (= (and b!381209 res!216660) b!381205))

(assert (= (and b!381205 res!216666) b!381201))

(assert (= (and b!381201 res!216659) b!381199))

(assert (= (and b!381199 res!216658) b!381207))

(assert (= (and b!381207 res!216667) b!381202))

(assert (= (and b!381202 res!216663) b!381203))

(assert (= (and b!381203 res!216665) b!381210))

(assert (= (and b!381210 res!216661) b!381208))

(assert (= (and b!381208 res!216664) b!381206))

(assert (= (and b!381206 (not res!216668)) b!381200))

(assert (= (and b!381211 condMapEmpty!15402) mapIsEmpty!15402))

(assert (= (and b!381211 (not condMapEmpty!15402)) mapNonEmpty!15402))

(get-info :version)

(assert (= (and mapNonEmpty!15402 ((_ is ValueCellFull!4269) mapValue!15402)) b!381204))

(assert (= (and b!381211 ((_ is ValueCellFull!4269) mapDefault!15402)) b!381212))

(assert (= start!37458 b!381211))

(declare-fun m!378163 () Bool)

(assert (=> b!381210 m!378163))

(declare-fun m!378165 () Bool)

(assert (=> b!381210 m!378165))

(declare-fun m!378167 () Bool)

(assert (=> b!381206 m!378167))

(declare-fun m!378169 () Bool)

(assert (=> b!381206 m!378169))

(declare-fun m!378171 () Bool)

(assert (=> b!381206 m!378171))

(declare-fun m!378173 () Bool)

(assert (=> b!381206 m!378173))

(declare-fun m!378175 () Bool)

(assert (=> b!381206 m!378175))

(declare-fun m!378177 () Bool)

(assert (=> b!381206 m!378177))

(declare-fun m!378179 () Bool)

(assert (=> b!381206 m!378179))

(declare-fun m!378181 () Bool)

(assert (=> b!381205 m!378181))

(declare-fun m!378183 () Bool)

(assert (=> mapNonEmpty!15402 m!378183))

(declare-fun m!378185 () Bool)

(assert (=> b!381208 m!378185))

(declare-fun m!378187 () Bool)

(assert (=> b!381207 m!378187))

(declare-fun m!378189 () Bool)

(assert (=> b!381203 m!378189))

(declare-fun m!378191 () Bool)

(assert (=> start!37458 m!378191))

(declare-fun m!378193 () Bool)

(assert (=> start!37458 m!378193))

(declare-fun m!378195 () Bool)

(assert (=> start!37458 m!378195))

(declare-fun m!378197 () Bool)

(assert (=> b!381202 m!378197))

(declare-fun m!378199 () Bool)

(assert (=> b!381201 m!378199))

(check-sat b_and!15837 (not b!381210) (not b!381205) (not b!381207) (not mapNonEmpty!15402) tp_is_empty!9225 (not b!381203) (not b!381206) (not b!381201) (not b!381208) (not b_next!8577) (not start!37458))
(check-sat b_and!15837 (not b_next!8577))
