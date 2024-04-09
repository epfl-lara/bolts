; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37364 () Bool)

(assert start!37364)

(declare-fun b_free!8483 () Bool)

(declare-fun b_next!8483 () Bool)

(assert (=> start!37364 (= b_free!8483 (not b_next!8483))))

(declare-fun tp!30165 () Bool)

(declare-fun b_and!15743 () Bool)

(assert (=> start!37364 (= tp!30165 b_and!15743)))

(declare-fun res!215012 () Bool)

(declare-fun e!230686 () Bool)

(assert (=> start!37364 (=> (not res!215012) (not e!230686))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37364 (= res!215012 (validMask!0 mask!970))))

(assert (=> start!37364 e!230686))

(declare-datatypes ((V!13279 0))(
  ( (V!13280 (val!4610 Int)) )
))
(declare-datatypes ((ValueCell!4222 0))(
  ( (ValueCellFull!4222 (v!6803 V!13279)) (EmptyCell!4222) )
))
(declare-datatypes ((array!22159 0))(
  ( (array!22160 (arr!10545 (Array (_ BitVec 32) ValueCell!4222)) (size!10897 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22159)

(declare-fun e!230684 () Bool)

(declare-fun array_inv!7760 (array!22159) Bool)

(assert (=> start!37364 (and (array_inv!7760 _values!506) e!230684)))

(assert (=> start!37364 tp!30165))

(assert (=> start!37364 true))

(declare-fun tp_is_empty!9131 () Bool)

(assert (=> start!37364 tp_is_empty!9131))

(declare-datatypes ((array!22161 0))(
  ( (array!22162 (arr!10546 (Array (_ BitVec 32) (_ BitVec 64))) (size!10898 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22161)

(declare-fun array_inv!7761 (array!22161) Bool)

(assert (=> start!37364 (array_inv!7761 _keys!658)))

(declare-fun mapIsEmpty!15261 () Bool)

(declare-fun mapRes!15261 () Bool)

(assert (=> mapIsEmpty!15261 mapRes!15261))

(declare-fun b!379125 () Bool)

(declare-fun e!230689 () Bool)

(assert (=> b!379125 (= e!230686 e!230689)))

(declare-fun res!215013 () Bool)

(assert (=> b!379125 (=> (not res!215013) (not e!230689))))

(declare-fun lt!177047 () array!22161)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22161 (_ BitVec 32)) Bool)

(assert (=> b!379125 (= res!215013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177047 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379125 (= lt!177047 (array!22162 (store (arr!10546 _keys!658) i!548 k!778) (size!10898 _keys!658)))))

(declare-fun mapNonEmpty!15261 () Bool)

(declare-fun tp!30164 () Bool)

(declare-fun e!230685 () Bool)

(assert (=> mapNonEmpty!15261 (= mapRes!15261 (and tp!30164 e!230685))))

(declare-fun mapValue!15261 () ValueCell!4222)

(declare-fun mapRest!15261 () (Array (_ BitVec 32) ValueCell!4222))

(declare-fun mapKey!15261 () (_ BitVec 32))

(assert (=> mapNonEmpty!15261 (= (arr!10545 _values!506) (store mapRest!15261 mapKey!15261 mapValue!15261))))

(declare-fun b!379126 () Bool)

(declare-fun e!230688 () Bool)

(assert (=> b!379126 (= e!230688 true)))

(declare-datatypes ((tuple2!6132 0))(
  ( (tuple2!6133 (_1!3076 (_ BitVec 64)) (_2!3076 V!13279)) )
))
(declare-datatypes ((List!6005 0))(
  ( (Nil!6002) (Cons!6001 (h!6857 tuple2!6132) (t!11163 List!6005)) )
))
(declare-datatypes ((ListLongMap!5059 0))(
  ( (ListLongMap!5060 (toList!2545 List!6005)) )
))
(declare-fun lt!177048 () ListLongMap!5059)

(declare-fun lt!177049 () ListLongMap!5059)

(declare-fun lt!177045 () tuple2!6132)

(declare-fun +!886 (ListLongMap!5059 tuple2!6132) ListLongMap!5059)

(assert (=> b!379126 (= lt!177048 (+!886 lt!177049 lt!177045))))

(declare-fun v!373 () V!13279)

(declare-datatypes ((Unit!11667 0))(
  ( (Unit!11668) )
))
(declare-fun lt!177051 () Unit!11667)

(declare-fun minValue!472 () V!13279)

(declare-fun lt!177052 () ListLongMap!5059)

(declare-fun addCommutativeForDiffKeys!300 (ListLongMap!5059 (_ BitVec 64) V!13279 (_ BitVec 64) V!13279) Unit!11667)

(assert (=> b!379126 (= lt!177051 (addCommutativeForDiffKeys!300 lt!177052 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379127 () Bool)

(assert (=> b!379127 (= e!230685 tp_is_empty!9131)))

(declare-fun b!379128 () Bool)

(declare-fun res!215018 () Bool)

(assert (=> b!379128 (=> (not res!215018) (not e!230689))))

(declare-datatypes ((List!6006 0))(
  ( (Nil!6003) (Cons!6002 (h!6858 (_ BitVec 64)) (t!11164 List!6006)) )
))
(declare-fun arrayNoDuplicates!0 (array!22161 (_ BitVec 32) List!6006) Bool)

(assert (=> b!379128 (= res!215018 (arrayNoDuplicates!0 lt!177047 #b00000000000000000000000000000000 Nil!6003))))

(declare-fun b!379129 () Bool)

(declare-fun e!230690 () Bool)

(assert (=> b!379129 (= e!230690 e!230688)))

(declare-fun res!215009 () Bool)

(assert (=> b!379129 (=> res!215009 e!230688)))

(assert (=> b!379129 (= res!215009 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177044 () ListLongMap!5059)

(assert (=> b!379129 (= lt!177044 lt!177049)))

(declare-fun lt!177055 () tuple2!6132)

(assert (=> b!379129 (= lt!177049 (+!886 lt!177052 lt!177055))))

(declare-fun lt!177046 () ListLongMap!5059)

(assert (=> b!379129 (= lt!177046 lt!177048)))

(declare-fun lt!177050 () ListLongMap!5059)

(assert (=> b!379129 (= lt!177048 (+!886 lt!177050 lt!177055))))

(declare-fun lt!177054 () ListLongMap!5059)

(assert (=> b!379129 (= lt!177046 (+!886 lt!177054 lt!177055))))

(assert (=> b!379129 (= lt!177055 (tuple2!6133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379130 () Bool)

(assert (=> b!379130 (= e!230689 (not e!230690))))

(declare-fun res!215010 () Bool)

(assert (=> b!379130 (=> res!215010 e!230690)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379130 (= res!215010 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13279)

(declare-fun getCurrentListMap!1973 (array!22161 array!22159 (_ BitVec 32) (_ BitVec 32) V!13279 V!13279 (_ BitVec 32) Int) ListLongMap!5059)

(assert (=> b!379130 (= lt!177044 (getCurrentListMap!1973 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177043 () array!22159)

(assert (=> b!379130 (= lt!177046 (getCurrentListMap!1973 lt!177047 lt!177043 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379130 (and (= lt!177054 lt!177050) (= lt!177050 lt!177054))))

(assert (=> b!379130 (= lt!177050 (+!886 lt!177052 lt!177045))))

(assert (=> b!379130 (= lt!177045 (tuple2!6133 k!778 v!373))))

(declare-fun lt!177053 () Unit!11667)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!124 (array!22161 array!22159 (_ BitVec 32) (_ BitVec 32) V!13279 V!13279 (_ BitVec 32) (_ BitVec 64) V!13279 (_ BitVec 32) Int) Unit!11667)

(assert (=> b!379130 (= lt!177053 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!124 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!791 (array!22161 array!22159 (_ BitVec 32) (_ BitVec 32) V!13279 V!13279 (_ BitVec 32) Int) ListLongMap!5059)

(assert (=> b!379130 (= lt!177054 (getCurrentListMapNoExtraKeys!791 lt!177047 lt!177043 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379130 (= lt!177043 (array!22160 (store (arr!10545 _values!506) i!548 (ValueCellFull!4222 v!373)) (size!10897 _values!506)))))

(assert (=> b!379130 (= lt!177052 (getCurrentListMapNoExtraKeys!791 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379131 () Bool)

(declare-fun res!215008 () Bool)

(assert (=> b!379131 (=> (not res!215008) (not e!230686))))

(assert (=> b!379131 (= res!215008 (and (= (size!10897 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10898 _keys!658) (size!10897 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379132 () Bool)

(declare-fun res!215017 () Bool)

(assert (=> b!379132 (=> (not res!215017) (not e!230686))))

(assert (=> b!379132 (= res!215017 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6003))))

(declare-fun b!379133 () Bool)

(declare-fun e!230687 () Bool)

(assert (=> b!379133 (= e!230687 tp_is_empty!9131)))

(declare-fun b!379134 () Bool)

(declare-fun res!215011 () Bool)

(assert (=> b!379134 (=> (not res!215011) (not e!230686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379134 (= res!215011 (validKeyInArray!0 k!778))))

(declare-fun b!379135 () Bool)

(declare-fun res!215016 () Bool)

(assert (=> b!379135 (=> (not res!215016) (not e!230686))))

(assert (=> b!379135 (= res!215016 (or (= (select (arr!10546 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10546 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379136 () Bool)

(declare-fun res!215015 () Bool)

(assert (=> b!379136 (=> (not res!215015) (not e!230686))))

(assert (=> b!379136 (= res!215015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379137 () Bool)

(declare-fun res!215007 () Bool)

(assert (=> b!379137 (=> (not res!215007) (not e!230686))))

(assert (=> b!379137 (= res!215007 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10898 _keys!658))))))

(declare-fun b!379138 () Bool)

(declare-fun res!215014 () Bool)

(assert (=> b!379138 (=> (not res!215014) (not e!230686))))

(declare-fun arrayContainsKey!0 (array!22161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379138 (= res!215014 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379139 () Bool)

(assert (=> b!379139 (= e!230684 (and e!230687 mapRes!15261))))

(declare-fun condMapEmpty!15261 () Bool)

(declare-fun mapDefault!15261 () ValueCell!4222)

