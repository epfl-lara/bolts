; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37400 () Bool)

(assert start!37400)

(declare-fun b_free!8519 () Bool)

(declare-fun b_next!8519 () Bool)

(assert (=> start!37400 (= b_free!8519 (not b_next!8519))))

(declare-fun tp!30273 () Bool)

(declare-fun b_and!15779 () Bool)

(assert (=> start!37400 (= tp!30273 b_and!15779)))

(declare-fun b!379935 () Bool)

(declare-fun e!231120 () Bool)

(declare-fun e!231119 () Bool)

(assert (=> b!379935 (= e!231120 (not e!231119))))

(declare-fun res!215662 () Bool)

(assert (=> b!379935 (=> res!215662 e!231119)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379935 (= res!215662 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13327 0))(
  ( (V!13328 (val!4628 Int)) )
))
(declare-datatypes ((ValueCell!4240 0))(
  ( (ValueCellFull!4240 (v!6821 V!13327)) (EmptyCell!4240) )
))
(declare-datatypes ((array!22231 0))(
  ( (array!22232 (arr!10581 (Array (_ BitVec 32) ValueCell!4240)) (size!10933 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22231)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13327)

(declare-datatypes ((tuple2!6166 0))(
  ( (tuple2!6167 (_1!3093 (_ BitVec 64)) (_2!3093 V!13327)) )
))
(declare-datatypes ((List!6037 0))(
  ( (Nil!6034) (Cons!6033 (h!6889 tuple2!6166) (t!11195 List!6037)) )
))
(declare-datatypes ((ListLongMap!5093 0))(
  ( (ListLongMap!5094 (toList!2562 List!6037)) )
))
(declare-fun lt!177757 () ListLongMap!5093)

(declare-datatypes ((array!22233 0))(
  ( (array!22234 (arr!10582 (Array (_ BitVec 32) (_ BitVec 64))) (size!10934 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22233)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13327)

(declare-fun getCurrentListMap!1987 (array!22233 array!22231 (_ BitVec 32) (_ BitVec 32) V!13327 V!13327 (_ BitVec 32) Int) ListLongMap!5093)

(assert (=> b!379935 (= lt!177757 (getCurrentListMap!1987 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177751 () ListLongMap!5093)

(declare-fun lt!177750 () array!22233)

(declare-fun lt!177745 () array!22231)

(assert (=> b!379935 (= lt!177751 (getCurrentListMap!1987 lt!177750 lt!177745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177752 () ListLongMap!5093)

(declare-fun lt!177754 () ListLongMap!5093)

(assert (=> b!379935 (and (= lt!177752 lt!177754) (= lt!177754 lt!177752))))

(declare-fun lt!177747 () ListLongMap!5093)

(declare-fun lt!177756 () tuple2!6166)

(declare-fun +!903 (ListLongMap!5093 tuple2!6166) ListLongMap!5093)

(assert (=> b!379935 (= lt!177754 (+!903 lt!177747 lt!177756))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13327)

(assert (=> b!379935 (= lt!177756 (tuple2!6167 k!778 v!373))))

(declare-datatypes ((Unit!11701 0))(
  ( (Unit!11702) )
))
(declare-fun lt!177749 () Unit!11701)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!138 (array!22233 array!22231 (_ BitVec 32) (_ BitVec 32) V!13327 V!13327 (_ BitVec 32) (_ BitVec 64) V!13327 (_ BitVec 32) Int) Unit!11701)

(assert (=> b!379935 (= lt!177749 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!138 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!805 (array!22233 array!22231 (_ BitVec 32) (_ BitVec 32) V!13327 V!13327 (_ BitVec 32) Int) ListLongMap!5093)

(assert (=> b!379935 (= lt!177752 (getCurrentListMapNoExtraKeys!805 lt!177750 lt!177745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379935 (= lt!177745 (array!22232 (store (arr!10581 _values!506) i!548 (ValueCellFull!4240 v!373)) (size!10933 _values!506)))))

(assert (=> b!379935 (= lt!177747 (getCurrentListMapNoExtraKeys!805 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379936 () Bool)

(declare-fun e!231122 () Bool)

(assert (=> b!379936 (= e!231119 e!231122)))

(declare-fun res!215664 () Bool)

(assert (=> b!379936 (=> res!215664 e!231122)))

(assert (=> b!379936 (= res!215664 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177748 () ListLongMap!5093)

(assert (=> b!379936 (= lt!177757 lt!177748)))

(declare-fun lt!177746 () tuple2!6166)

(assert (=> b!379936 (= lt!177748 (+!903 lt!177747 lt!177746))))

(declare-fun lt!177755 () ListLongMap!5093)

(assert (=> b!379936 (= lt!177751 lt!177755)))

(assert (=> b!379936 (= lt!177755 (+!903 lt!177754 lt!177746))))

(assert (=> b!379936 (= lt!177751 (+!903 lt!177752 lt!177746))))

(assert (=> b!379936 (= lt!177746 (tuple2!6167 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379937 () Bool)

(declare-fun res!215666 () Bool)

(declare-fun e!231118 () Bool)

(assert (=> b!379937 (=> (not res!215666) (not e!231118))))

(assert (=> b!379937 (= res!215666 (or (= (select (arr!10582 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10582 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379938 () Bool)

(assert (=> b!379938 (= e!231118 e!231120)))

(declare-fun res!215656 () Bool)

(assert (=> b!379938 (=> (not res!215656) (not e!231120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22233 (_ BitVec 32)) Bool)

(assert (=> b!379938 (= res!215656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177750 mask!970))))

(assert (=> b!379938 (= lt!177750 (array!22234 (store (arr!10582 _keys!658) i!548 k!778) (size!10934 _keys!658)))))

(declare-fun b!379939 () Bool)

(declare-fun res!215659 () Bool)

(assert (=> b!379939 (=> (not res!215659) (not e!231118))))

(assert (=> b!379939 (= res!215659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15315 () Bool)

(declare-fun mapRes!15315 () Bool)

(assert (=> mapIsEmpty!15315 mapRes!15315))

(declare-fun b!379940 () Bool)

(declare-fun res!215657 () Bool)

(assert (=> b!379940 (=> (not res!215657) (not e!231118))))

(declare-fun arrayContainsKey!0 (array!22233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379940 (= res!215657 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379941 () Bool)

(declare-fun res!215661 () Bool)

(assert (=> b!379941 (=> (not res!215661) (not e!231118))))

(assert (=> b!379941 (= res!215661 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10934 _keys!658))))))

(declare-fun mapNonEmpty!15315 () Bool)

(declare-fun tp!30272 () Bool)

(declare-fun e!231116 () Bool)

(assert (=> mapNonEmpty!15315 (= mapRes!15315 (and tp!30272 e!231116))))

(declare-fun mapValue!15315 () ValueCell!4240)

(declare-fun mapKey!15315 () (_ BitVec 32))

(declare-fun mapRest!15315 () (Array (_ BitVec 32) ValueCell!4240))

(assert (=> mapNonEmpty!15315 (= (arr!10581 _values!506) (store mapRest!15315 mapKey!15315 mapValue!15315))))

(declare-fun b!379943 () Bool)

(declare-fun res!215663 () Bool)

(assert (=> b!379943 (=> (not res!215663) (not e!231120))))

(declare-datatypes ((List!6038 0))(
  ( (Nil!6035) (Cons!6034 (h!6890 (_ BitVec 64)) (t!11196 List!6038)) )
))
(declare-fun arrayNoDuplicates!0 (array!22233 (_ BitVec 32) List!6038) Bool)

(assert (=> b!379943 (= res!215663 (arrayNoDuplicates!0 lt!177750 #b00000000000000000000000000000000 Nil!6035))))

(declare-fun b!379944 () Bool)

(declare-fun res!215660 () Bool)

(assert (=> b!379944 (=> (not res!215660) (not e!231118))))

(assert (=> b!379944 (= res!215660 (and (= (size!10933 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10934 _keys!658) (size!10933 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379945 () Bool)

(assert (=> b!379945 (= e!231122 true)))

(assert (=> b!379945 (= lt!177755 (+!903 lt!177748 lt!177756))))

(declare-fun lt!177753 () Unit!11701)

(declare-fun addCommutativeForDiffKeys!314 (ListLongMap!5093 (_ BitVec 64) V!13327 (_ BitVec 64) V!13327) Unit!11701)

(assert (=> b!379945 (= lt!177753 (addCommutativeForDiffKeys!314 lt!177747 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379942 () Bool)

(declare-fun e!231123 () Bool)

(declare-fun tp_is_empty!9167 () Bool)

(assert (=> b!379942 (= e!231123 tp_is_empty!9167)))

(declare-fun res!215658 () Bool)

(assert (=> start!37400 (=> (not res!215658) (not e!231118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37400 (= res!215658 (validMask!0 mask!970))))

(assert (=> start!37400 e!231118))

(declare-fun e!231121 () Bool)

(declare-fun array_inv!7784 (array!22231) Bool)

(assert (=> start!37400 (and (array_inv!7784 _values!506) e!231121)))

(assert (=> start!37400 tp!30273))

(assert (=> start!37400 true))

(assert (=> start!37400 tp_is_empty!9167))

(declare-fun array_inv!7785 (array!22233) Bool)

(assert (=> start!37400 (array_inv!7785 _keys!658)))

(declare-fun b!379946 () Bool)

(assert (=> b!379946 (= e!231116 tp_is_empty!9167)))

(declare-fun b!379947 () Bool)

(assert (=> b!379947 (= e!231121 (and e!231123 mapRes!15315))))

(declare-fun condMapEmpty!15315 () Bool)

(declare-fun mapDefault!15315 () ValueCell!4240)

