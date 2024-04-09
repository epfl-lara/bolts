; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37412 () Bool)

(assert start!37412)

(declare-fun b_free!8531 () Bool)

(declare-fun b_next!8531 () Bool)

(assert (=> start!37412 (= b_free!8531 (not b_next!8531))))

(declare-fun tp!30309 () Bool)

(declare-fun b_and!15791 () Bool)

(assert (=> start!37412 (= tp!30309 b_and!15791)))

(declare-fun b!380205 () Bool)

(declare-fun e!231265 () Bool)

(declare-fun e!231260 () Bool)

(assert (=> b!380205 (= e!231265 (not e!231260))))

(declare-fun res!215877 () Bool)

(assert (=> b!380205 (=> res!215877 e!231260)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380205 (= res!215877 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13343 0))(
  ( (V!13344 (val!4634 Int)) )
))
(declare-datatypes ((ValueCell!4246 0))(
  ( (ValueCellFull!4246 (v!6827 V!13343)) (EmptyCell!4246) )
))
(declare-datatypes ((array!22255 0))(
  ( (array!22256 (arr!10593 (Array (_ BitVec 32) ValueCell!4246)) (size!10945 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22255)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6176 0))(
  ( (tuple2!6177 (_1!3098 (_ BitVec 64)) (_2!3098 V!13343)) )
))
(declare-datatypes ((List!6047 0))(
  ( (Nil!6044) (Cons!6043 (h!6899 tuple2!6176) (t!11205 List!6047)) )
))
(declare-datatypes ((ListLongMap!5103 0))(
  ( (ListLongMap!5104 (toList!2567 List!6047)) )
))
(declare-fun lt!177980 () ListLongMap!5103)

(declare-fun zeroValue!472 () V!13343)

(declare-datatypes ((array!22257 0))(
  ( (array!22258 (arr!10594 (Array (_ BitVec 32) (_ BitVec 64))) (size!10946 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22257)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13343)

(declare-fun getCurrentListMap!1992 (array!22257 array!22255 (_ BitVec 32) (_ BitVec 32) V!13343 V!13343 (_ BitVec 32) Int) ListLongMap!5103)

(assert (=> b!380205 (= lt!177980 (getCurrentListMap!1992 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177987 () array!22257)

(declare-fun lt!177983 () ListLongMap!5103)

(declare-fun lt!177988 () array!22255)

(assert (=> b!380205 (= lt!177983 (getCurrentListMap!1992 lt!177987 lt!177988 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177985 () ListLongMap!5103)

(declare-fun lt!177979 () ListLongMap!5103)

(assert (=> b!380205 (and (= lt!177985 lt!177979) (= lt!177979 lt!177985))))

(declare-fun lt!177991 () ListLongMap!5103)

(declare-fun lt!177989 () tuple2!6176)

(declare-fun +!908 (ListLongMap!5103 tuple2!6176) ListLongMap!5103)

(assert (=> b!380205 (= lt!177979 (+!908 lt!177991 lt!177989))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13343)

(assert (=> b!380205 (= lt!177989 (tuple2!6177 k!778 v!373))))

(declare-datatypes ((Unit!11711 0))(
  ( (Unit!11712) )
))
(declare-fun lt!177990 () Unit!11711)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!143 (array!22257 array!22255 (_ BitVec 32) (_ BitVec 32) V!13343 V!13343 (_ BitVec 32) (_ BitVec 64) V!13343 (_ BitVec 32) Int) Unit!11711)

(assert (=> b!380205 (= lt!177990 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!143 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!810 (array!22257 array!22255 (_ BitVec 32) (_ BitVec 32) V!13343 V!13343 (_ BitVec 32) Int) ListLongMap!5103)

(assert (=> b!380205 (= lt!177985 (getCurrentListMapNoExtraKeys!810 lt!177987 lt!177988 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380205 (= lt!177988 (array!22256 (store (arr!10593 _values!506) i!548 (ValueCellFull!4246 v!373)) (size!10945 _values!506)))))

(assert (=> b!380205 (= lt!177991 (getCurrentListMapNoExtraKeys!810 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380206 () Bool)

(declare-fun e!231263 () Bool)

(assert (=> b!380206 (= e!231263 e!231265)))

(declare-fun res!215873 () Bool)

(assert (=> b!380206 (=> (not res!215873) (not e!231265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22257 (_ BitVec 32)) Bool)

(assert (=> b!380206 (= res!215873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177987 mask!970))))

(assert (=> b!380206 (= lt!177987 (array!22258 (store (arr!10594 _keys!658) i!548 k!778) (size!10946 _keys!658)))))

(declare-fun b!380207 () Bool)

(declare-fun res!215879 () Bool)

(assert (=> b!380207 (=> (not res!215879) (not e!231263))))

(declare-datatypes ((List!6048 0))(
  ( (Nil!6045) (Cons!6044 (h!6900 (_ BitVec 64)) (t!11206 List!6048)) )
))
(declare-fun arrayNoDuplicates!0 (array!22257 (_ BitVec 32) List!6048) Bool)

(assert (=> b!380207 (= res!215879 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6045))))

(declare-fun b!380208 () Bool)

(declare-fun res!215882 () Bool)

(assert (=> b!380208 (=> (not res!215882) (not e!231265))))

(assert (=> b!380208 (= res!215882 (arrayNoDuplicates!0 lt!177987 #b00000000000000000000000000000000 Nil!6045))))

(declare-fun b!380210 () Bool)

(declare-fun e!231264 () Bool)

(assert (=> b!380210 (= e!231264 true)))

(declare-fun lt!177984 () ListLongMap!5103)

(declare-fun lt!177981 () ListLongMap!5103)

(assert (=> b!380210 (= lt!177984 (+!908 lt!177981 lt!177989))))

(declare-fun lt!177982 () Unit!11711)

(declare-fun addCommutativeForDiffKeys!319 (ListLongMap!5103 (_ BitVec 64) V!13343 (_ BitVec 64) V!13343) Unit!11711)

(assert (=> b!380210 (= lt!177982 (addCommutativeForDiffKeys!319 lt!177991 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380211 () Bool)

(declare-fun res!215881 () Bool)

(assert (=> b!380211 (=> (not res!215881) (not e!231263))))

(declare-fun arrayContainsKey!0 (array!22257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380211 (= res!215881 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15333 () Bool)

(declare-fun mapRes!15333 () Bool)

(assert (=> mapIsEmpty!15333 mapRes!15333))

(declare-fun b!380212 () Bool)

(declare-fun res!215871 () Bool)

(assert (=> b!380212 (=> (not res!215871) (not e!231263))))

(assert (=> b!380212 (= res!215871 (or (= (select (arr!10594 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10594 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380213 () Bool)

(declare-fun res!215875 () Bool)

(assert (=> b!380213 (=> (not res!215875) (not e!231263))))

(assert (=> b!380213 (= res!215875 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10946 _keys!658))))))

(declare-fun mapNonEmpty!15333 () Bool)

(declare-fun tp!30308 () Bool)

(declare-fun e!231261 () Bool)

(assert (=> mapNonEmpty!15333 (= mapRes!15333 (and tp!30308 e!231261))))

(declare-fun mapKey!15333 () (_ BitVec 32))

(declare-fun mapValue!15333 () ValueCell!4246)

(declare-fun mapRest!15333 () (Array (_ BitVec 32) ValueCell!4246))

(assert (=> mapNonEmpty!15333 (= (arr!10593 _values!506) (store mapRest!15333 mapKey!15333 mapValue!15333))))

(declare-fun res!215876 () Bool)

(assert (=> start!37412 (=> (not res!215876) (not e!231263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37412 (= res!215876 (validMask!0 mask!970))))

(assert (=> start!37412 e!231263))

(declare-fun e!231267 () Bool)

(declare-fun array_inv!7794 (array!22255) Bool)

(assert (=> start!37412 (and (array_inv!7794 _values!506) e!231267)))

(assert (=> start!37412 tp!30309))

(assert (=> start!37412 true))

(declare-fun tp_is_empty!9179 () Bool)

(assert (=> start!37412 tp_is_empty!9179))

(declare-fun array_inv!7795 (array!22257) Bool)

(assert (=> start!37412 (array_inv!7795 _keys!658)))

(declare-fun b!380209 () Bool)

(assert (=> b!380209 (= e!231261 tp_is_empty!9179)))

(declare-fun b!380214 () Bool)

(declare-fun res!215874 () Bool)

(assert (=> b!380214 (=> (not res!215874) (not e!231263))))

(assert (=> b!380214 (= res!215874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380215 () Bool)

(declare-fun res!215872 () Bool)

(assert (=> b!380215 (=> (not res!215872) (not e!231263))))

(assert (=> b!380215 (= res!215872 (and (= (size!10945 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10946 _keys!658) (size!10945 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380216 () Bool)

(declare-fun e!231262 () Bool)

(assert (=> b!380216 (= e!231262 tp_is_empty!9179)))

(declare-fun b!380217 () Bool)

(assert (=> b!380217 (= e!231267 (and e!231262 mapRes!15333))))

(declare-fun condMapEmpty!15333 () Bool)

(declare-fun mapDefault!15333 () ValueCell!4246)

