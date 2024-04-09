; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38160 () Bool)

(assert start!38160)

(declare-fun b_free!9033 () Bool)

(declare-fun b_next!9033 () Bool)

(assert (=> start!38160 (= b_free!9033 (not b_next!9033))))

(declare-fun tp!31881 () Bool)

(declare-fun b_and!16413 () Bool)

(assert (=> start!38160 (= tp!31881 b_and!16413)))

(declare-fun b!393059 () Bool)

(declare-fun e!238009 () Bool)

(declare-fun tp_is_empty!9705 () Bool)

(assert (=> b!393059 (= e!238009 tp_is_empty!9705)))

(declare-fun b!393060 () Bool)

(declare-fun res!225243 () Bool)

(declare-fun e!238003 () Bool)

(assert (=> b!393060 (=> (not res!225243) (not e!238003))))

(declare-datatypes ((array!23291 0))(
  ( (array!23292 (arr!11101 (Array (_ BitVec 32) (_ BitVec 64))) (size!11453 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23291)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393060 (= res!225243 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!225245 () Bool)

(assert (=> start!38160 (=> (not res!225245) (not e!238003))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38160 (= res!225245 (validMask!0 mask!970))))

(assert (=> start!38160 e!238003))

(declare-datatypes ((V!14045 0))(
  ( (V!14046 (val!4897 Int)) )
))
(declare-datatypes ((ValueCell!4509 0))(
  ( (ValueCellFull!4509 (v!7130 V!14045)) (EmptyCell!4509) )
))
(declare-datatypes ((array!23293 0))(
  ( (array!23294 (arr!11102 (Array (_ BitVec 32) ValueCell!4509)) (size!11454 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23293)

(declare-fun e!238008 () Bool)

(declare-fun array_inv!8136 (array!23293) Bool)

(assert (=> start!38160 (and (array_inv!8136 _values!506) e!238008)))

(assert (=> start!38160 tp!31881))

(assert (=> start!38160 true))

(assert (=> start!38160 tp_is_empty!9705))

(declare-fun array_inv!8137 (array!23291) Bool)

(assert (=> start!38160 (array_inv!8137 _keys!658)))

(declare-fun b!393061 () Bool)

(declare-fun e!238010 () Bool)

(declare-fun e!238004 () Bool)

(assert (=> b!393061 (= e!238010 (not e!238004))))

(declare-fun res!225247 () Bool)

(assert (=> b!393061 (=> res!225247 e!238004)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393061 (= res!225247 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14045)

(declare-datatypes ((tuple2!6542 0))(
  ( (tuple2!6543 (_1!3281 (_ BitVec 64)) (_2!3281 V!14045)) )
))
(declare-datatypes ((List!6423 0))(
  ( (Nil!6420) (Cons!6419 (h!7275 tuple2!6542) (t!11601 List!6423)) )
))
(declare-datatypes ((ListLongMap!5469 0))(
  ( (ListLongMap!5470 (toList!2750 List!6423)) )
))
(declare-fun lt!186030 () ListLongMap!5469)

(declare-fun minValue!472 () V!14045)

(declare-fun getCurrentListMap!2110 (array!23291 array!23293 (_ BitVec 32) (_ BitVec 32) V!14045 V!14045 (_ BitVec 32) Int) ListLongMap!5469)

(assert (=> b!393061 (= lt!186030 (getCurrentListMap!2110 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186031 () ListLongMap!5469)

(declare-fun lt!186033 () array!23293)

(declare-fun lt!186034 () array!23291)

(assert (=> b!393061 (= lt!186031 (getCurrentListMap!2110 lt!186034 lt!186033 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186037 () ListLongMap!5469)

(declare-fun lt!186038 () ListLongMap!5469)

(assert (=> b!393061 (and (= lt!186037 lt!186038) (= lt!186038 lt!186037))))

(declare-fun lt!186036 () ListLongMap!5469)

(declare-fun lt!186032 () tuple2!6542)

(declare-fun +!1048 (ListLongMap!5469 tuple2!6542) ListLongMap!5469)

(assert (=> b!393061 (= lt!186038 (+!1048 lt!186036 lt!186032))))

(declare-fun v!373 () V!14045)

(assert (=> b!393061 (= lt!186032 (tuple2!6543 k0!778 v!373))))

(declare-datatypes ((Unit!11991 0))(
  ( (Unit!11992) )
))
(declare-fun lt!186029 () Unit!11991)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!267 (array!23291 array!23293 (_ BitVec 32) (_ BitVec 32) V!14045 V!14045 (_ BitVec 32) (_ BitVec 64) V!14045 (_ BitVec 32) Int) Unit!11991)

(assert (=> b!393061 (= lt!186029 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!267 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!972 (array!23291 array!23293 (_ BitVec 32) (_ BitVec 32) V!14045 V!14045 (_ BitVec 32) Int) ListLongMap!5469)

(assert (=> b!393061 (= lt!186037 (getCurrentListMapNoExtraKeys!972 lt!186034 lt!186033 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393061 (= lt!186033 (array!23294 (store (arr!11102 _values!506) i!548 (ValueCellFull!4509 v!373)) (size!11454 _values!506)))))

(assert (=> b!393061 (= lt!186036 (getCurrentListMapNoExtraKeys!972 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393062 () Bool)

(declare-fun res!225242 () Bool)

(assert (=> b!393062 (=> (not res!225242) (not e!238003))))

(assert (=> b!393062 (= res!225242 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11453 _keys!658))))))

(declare-fun e!238006 () Bool)

(declare-fun b!393063 () Bool)

(assert (=> b!393063 (= e!238006 (= (+!1048 lt!186030 lt!186032) lt!186031))))

(declare-fun lt!186027 () ListLongMap!5469)

(declare-fun lt!186028 () ListLongMap!5469)

(assert (=> b!393063 (= lt!186027 (+!1048 lt!186028 lt!186032))))

(declare-fun lt!186026 () Unit!11991)

(declare-fun addCommutativeForDiffKeys!344 (ListLongMap!5469 (_ BitVec 64) V!14045 (_ BitVec 64) V!14045) Unit!11991)

(assert (=> b!393063 (= lt!186026 (addCommutativeForDiffKeys!344 lt!186036 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!16152 () Bool)

(declare-fun mapRes!16152 () Bool)

(declare-fun tp!31880 () Bool)

(assert (=> mapNonEmpty!16152 (= mapRes!16152 (and tp!31880 e!238009))))

(declare-fun mapRest!16152 () (Array (_ BitVec 32) ValueCell!4509))

(declare-fun mapValue!16152 () ValueCell!4509)

(declare-fun mapKey!16152 () (_ BitVec 32))

(assert (=> mapNonEmpty!16152 (= (arr!11102 _values!506) (store mapRest!16152 mapKey!16152 mapValue!16152))))

(declare-fun b!393064 () Bool)

(declare-fun res!225239 () Bool)

(assert (=> b!393064 (=> (not res!225239) (not e!238003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23291 (_ BitVec 32)) Bool)

(assert (=> b!393064 (= res!225239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393065 () Bool)

(declare-fun e!238005 () Bool)

(assert (=> b!393065 (= e!238005 tp_is_empty!9705)))

(declare-fun b!393066 () Bool)

(assert (=> b!393066 (= e!238004 e!238006)))

(declare-fun res!225240 () Bool)

(assert (=> b!393066 (=> res!225240 e!238006)))

(assert (=> b!393066 (= res!225240 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!393066 (= lt!186030 lt!186028)))

(declare-fun lt!186035 () tuple2!6542)

(assert (=> b!393066 (= lt!186028 (+!1048 lt!186036 lt!186035))))

(assert (=> b!393066 (= lt!186031 lt!186027)))

(assert (=> b!393066 (= lt!186027 (+!1048 lt!186038 lt!186035))))

(assert (=> b!393066 (= lt!186031 (+!1048 lt!186037 lt!186035))))

(assert (=> b!393066 (= lt!186035 (tuple2!6543 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!393067 () Bool)

(declare-fun res!225248 () Bool)

(assert (=> b!393067 (=> (not res!225248) (not e!238003))))

(assert (=> b!393067 (= res!225248 (or (= (select (arr!11101 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11101 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393068 () Bool)

(assert (=> b!393068 (= e!238003 e!238010)))

(declare-fun res!225249 () Bool)

(assert (=> b!393068 (=> (not res!225249) (not e!238010))))

(assert (=> b!393068 (= res!225249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186034 mask!970))))

(assert (=> b!393068 (= lt!186034 (array!23292 (store (arr!11101 _keys!658) i!548 k0!778) (size!11453 _keys!658)))))

(declare-fun b!393069 () Bool)

(declare-fun res!225244 () Bool)

(assert (=> b!393069 (=> (not res!225244) (not e!238010))))

(declare-datatypes ((List!6424 0))(
  ( (Nil!6421) (Cons!6420 (h!7276 (_ BitVec 64)) (t!11602 List!6424)) )
))
(declare-fun arrayNoDuplicates!0 (array!23291 (_ BitVec 32) List!6424) Bool)

(assert (=> b!393069 (= res!225244 (arrayNoDuplicates!0 lt!186034 #b00000000000000000000000000000000 Nil!6421))))

(declare-fun b!393070 () Bool)

(declare-fun res!225241 () Bool)

(assert (=> b!393070 (=> (not res!225241) (not e!238003))))

(assert (=> b!393070 (= res!225241 (and (= (size!11454 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11453 _keys!658) (size!11454 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393071 () Bool)

(declare-fun res!225238 () Bool)

(assert (=> b!393071 (=> (not res!225238) (not e!238003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393071 (= res!225238 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!16152 () Bool)

(assert (=> mapIsEmpty!16152 mapRes!16152))

(declare-fun b!393072 () Bool)

(assert (=> b!393072 (= e!238008 (and e!238005 mapRes!16152))))

(declare-fun condMapEmpty!16152 () Bool)

(declare-fun mapDefault!16152 () ValueCell!4509)

(assert (=> b!393072 (= condMapEmpty!16152 (= (arr!11102 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4509)) mapDefault!16152)))))

(declare-fun b!393073 () Bool)

(declare-fun res!225246 () Bool)

(assert (=> b!393073 (=> (not res!225246) (not e!238003))))

(assert (=> b!393073 (= res!225246 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6421))))

(assert (= (and start!38160 res!225245) b!393070))

(assert (= (and b!393070 res!225241) b!393064))

(assert (= (and b!393064 res!225239) b!393073))

(assert (= (and b!393073 res!225246) b!393062))

(assert (= (and b!393062 res!225242) b!393071))

(assert (= (and b!393071 res!225238) b!393067))

(assert (= (and b!393067 res!225248) b!393060))

(assert (= (and b!393060 res!225243) b!393068))

(assert (= (and b!393068 res!225249) b!393069))

(assert (= (and b!393069 res!225244) b!393061))

(assert (= (and b!393061 (not res!225247)) b!393066))

(assert (= (and b!393066 (not res!225240)) b!393063))

(assert (= (and b!393072 condMapEmpty!16152) mapIsEmpty!16152))

(assert (= (and b!393072 (not condMapEmpty!16152)) mapNonEmpty!16152))

(get-info :version)

(assert (= (and mapNonEmpty!16152 ((_ is ValueCellFull!4509) mapValue!16152)) b!393059))

(assert (= (and b!393072 ((_ is ValueCellFull!4509) mapDefault!16152)) b!393065))

(assert (= start!38160 b!393072))

(declare-fun m!389559 () Bool)

(assert (=> b!393071 m!389559))

(declare-fun m!389561 () Bool)

(assert (=> b!393068 m!389561))

(declare-fun m!389563 () Bool)

(assert (=> b!393068 m!389563))

(declare-fun m!389565 () Bool)

(assert (=> b!393069 m!389565))

(declare-fun m!389567 () Bool)

(assert (=> mapNonEmpty!16152 m!389567))

(declare-fun m!389569 () Bool)

(assert (=> b!393073 m!389569))

(declare-fun m!389571 () Bool)

(assert (=> b!393060 m!389571))

(declare-fun m!389573 () Bool)

(assert (=> b!393067 m!389573))

(declare-fun m!389575 () Bool)

(assert (=> b!393061 m!389575))

(declare-fun m!389577 () Bool)

(assert (=> b!393061 m!389577))

(declare-fun m!389579 () Bool)

(assert (=> b!393061 m!389579))

(declare-fun m!389581 () Bool)

(assert (=> b!393061 m!389581))

(declare-fun m!389583 () Bool)

(assert (=> b!393061 m!389583))

(declare-fun m!389585 () Bool)

(assert (=> b!393061 m!389585))

(declare-fun m!389587 () Bool)

(assert (=> b!393061 m!389587))

(declare-fun m!389589 () Bool)

(assert (=> start!38160 m!389589))

(declare-fun m!389591 () Bool)

(assert (=> start!38160 m!389591))

(declare-fun m!389593 () Bool)

(assert (=> start!38160 m!389593))

(declare-fun m!389595 () Bool)

(assert (=> b!393066 m!389595))

(declare-fun m!389597 () Bool)

(assert (=> b!393066 m!389597))

(declare-fun m!389599 () Bool)

(assert (=> b!393066 m!389599))

(declare-fun m!389601 () Bool)

(assert (=> b!393064 m!389601))

(declare-fun m!389603 () Bool)

(assert (=> b!393063 m!389603))

(declare-fun m!389605 () Bool)

(assert (=> b!393063 m!389605))

(declare-fun m!389607 () Bool)

(assert (=> b!393063 m!389607))

(check-sat (not b!393064) (not b!393060) (not b_next!9033) tp_is_empty!9705 (not b!393066) (not b!393069) (not b!393071) (not mapNonEmpty!16152) (not b!393068) (not b!393063) (not b!393073) (not b!393061) b_and!16413 (not start!38160))
(check-sat b_and!16413 (not b_next!9033))
