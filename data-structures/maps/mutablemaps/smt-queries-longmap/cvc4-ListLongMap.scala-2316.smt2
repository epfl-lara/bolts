; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37370 () Bool)

(assert start!37370)

(declare-fun b_free!8489 () Bool)

(declare-fun b_next!8489 () Bool)

(assert (=> start!37370 (= b_free!8489 (not b_next!8489))))

(declare-fun tp!30182 () Bool)

(declare-fun b_and!15749 () Bool)

(assert (=> start!37370 (= tp!30182 b_and!15749)))

(declare-fun b!379260 () Bool)

(declare-fun res!215124 () Bool)

(declare-fun e!230760 () Bool)

(assert (=> b!379260 (=> (not res!215124) (not e!230760))))

(declare-datatypes ((array!22171 0))(
  ( (array!22172 (arr!10551 (Array (_ BitVec 32) (_ BitVec 64))) (size!10903 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22171)

(declare-datatypes ((List!6011 0))(
  ( (Nil!6008) (Cons!6007 (h!6863 (_ BitVec 64)) (t!11169 List!6011)) )
))
(declare-fun arrayNoDuplicates!0 (array!22171 (_ BitVec 32) List!6011) Bool)

(assert (=> b!379260 (= res!215124 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6008))))

(declare-fun b!379261 () Bool)

(declare-fun res!215117 () Bool)

(declare-fun e!230757 () Bool)

(assert (=> b!379261 (=> (not res!215117) (not e!230757))))

(declare-fun lt!177167 () array!22171)

(assert (=> b!379261 (= res!215117 (arrayNoDuplicates!0 lt!177167 #b00000000000000000000000000000000 Nil!6008))))

(declare-fun mapNonEmpty!15270 () Bool)

(declare-fun mapRes!15270 () Bool)

(declare-fun tp!30183 () Bool)

(declare-fun e!230758 () Bool)

(assert (=> mapNonEmpty!15270 (= mapRes!15270 (and tp!30183 e!230758))))

(declare-datatypes ((V!13287 0))(
  ( (V!13288 (val!4613 Int)) )
))
(declare-datatypes ((ValueCell!4225 0))(
  ( (ValueCellFull!4225 (v!6806 V!13287)) (EmptyCell!4225) )
))
(declare-datatypes ((array!22173 0))(
  ( (array!22174 (arr!10552 (Array (_ BitVec 32) ValueCell!4225)) (size!10904 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22173)

(declare-fun mapRest!15270 () (Array (_ BitVec 32) ValueCell!4225))

(declare-fun mapKey!15270 () (_ BitVec 32))

(declare-fun mapValue!15270 () ValueCell!4225)

(assert (=> mapNonEmpty!15270 (= (arr!10552 _values!506) (store mapRest!15270 mapKey!15270 mapValue!15270))))

(declare-fun mapIsEmpty!15270 () Bool)

(assert (=> mapIsEmpty!15270 mapRes!15270))

(declare-fun b!379262 () Bool)

(declare-fun e!230763 () Bool)

(declare-fun e!230762 () Bool)

(assert (=> b!379262 (= e!230763 e!230762)))

(declare-fun res!215125 () Bool)

(assert (=> b!379262 (=> res!215125 e!230762)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!379262 (= res!215125 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6138 0))(
  ( (tuple2!6139 (_1!3079 (_ BitVec 64)) (_2!3079 V!13287)) )
))
(declare-datatypes ((List!6012 0))(
  ( (Nil!6009) (Cons!6008 (h!6864 tuple2!6138) (t!11170 List!6012)) )
))
(declare-datatypes ((ListLongMap!5065 0))(
  ( (ListLongMap!5066 (toList!2548 List!6012)) )
))
(declare-fun lt!177160 () ListLongMap!5065)

(declare-fun lt!177165 () ListLongMap!5065)

(assert (=> b!379262 (= lt!177160 lt!177165)))

(declare-fun lt!177164 () ListLongMap!5065)

(declare-fun lt!177162 () tuple2!6138)

(declare-fun +!889 (ListLongMap!5065 tuple2!6138) ListLongMap!5065)

(assert (=> b!379262 (= lt!177165 (+!889 lt!177164 lt!177162))))

(declare-fun lt!177172 () ListLongMap!5065)

(declare-fun lt!177168 () ListLongMap!5065)

(assert (=> b!379262 (= lt!177172 lt!177168)))

(declare-fun lt!177171 () ListLongMap!5065)

(assert (=> b!379262 (= lt!177168 (+!889 lt!177171 lt!177162))))

(declare-fun lt!177166 () ListLongMap!5065)

(assert (=> b!379262 (= lt!177172 (+!889 lt!177166 lt!177162))))

(declare-fun minValue!472 () V!13287)

(assert (=> b!379262 (= lt!177162 (tuple2!6139 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379263 () Bool)

(declare-fun res!215121 () Bool)

(assert (=> b!379263 (=> (not res!215121) (not e!230760))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!379263 (= res!215121 (and (= (size!10904 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10903 _keys!658) (size!10904 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379264 () Bool)

(assert (=> b!379264 (= e!230757 (not e!230763))))

(declare-fun res!215116 () Bool)

(assert (=> b!379264 (=> res!215116 e!230763)))

(assert (=> b!379264 (= res!215116 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13287)

(declare-fun getCurrentListMap!1976 (array!22171 array!22173 (_ BitVec 32) (_ BitVec 32) V!13287 V!13287 (_ BitVec 32) Int) ListLongMap!5065)

(assert (=> b!379264 (= lt!177160 (getCurrentListMap!1976 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177170 () array!22173)

(assert (=> b!379264 (= lt!177172 (getCurrentListMap!1976 lt!177167 lt!177170 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379264 (and (= lt!177166 lt!177171) (= lt!177171 lt!177166))))

(declare-fun lt!177161 () tuple2!6138)

(assert (=> b!379264 (= lt!177171 (+!889 lt!177164 lt!177161))))

(declare-fun v!373 () V!13287)

(assert (=> b!379264 (= lt!177161 (tuple2!6139 k!778 v!373))))

(declare-datatypes ((Unit!11673 0))(
  ( (Unit!11674) )
))
(declare-fun lt!177169 () Unit!11673)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!127 (array!22171 array!22173 (_ BitVec 32) (_ BitVec 32) V!13287 V!13287 (_ BitVec 32) (_ BitVec 64) V!13287 (_ BitVec 32) Int) Unit!11673)

(assert (=> b!379264 (= lt!177169 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!127 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!794 (array!22171 array!22173 (_ BitVec 32) (_ BitVec 32) V!13287 V!13287 (_ BitVec 32) Int) ListLongMap!5065)

(assert (=> b!379264 (= lt!177166 (getCurrentListMapNoExtraKeys!794 lt!177167 lt!177170 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379264 (= lt!177170 (array!22174 (store (arr!10552 _values!506) i!548 (ValueCellFull!4225 v!373)) (size!10904 _values!506)))))

(assert (=> b!379264 (= lt!177164 (getCurrentListMapNoExtraKeys!794 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379265 () Bool)

(assert (=> b!379265 (= e!230760 e!230757)))

(declare-fun res!215119 () Bool)

(assert (=> b!379265 (=> (not res!215119) (not e!230757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22171 (_ BitVec 32)) Bool)

(assert (=> b!379265 (= res!215119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177167 mask!970))))

(assert (=> b!379265 (= lt!177167 (array!22172 (store (arr!10551 _keys!658) i!548 k!778) (size!10903 _keys!658)))))

(declare-fun b!379266 () Bool)

(declare-fun res!215123 () Bool)

(assert (=> b!379266 (=> (not res!215123) (not e!230760))))

(declare-fun arrayContainsKey!0 (array!22171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379266 (= res!215123 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379267 () Bool)

(declare-fun e!230756 () Bool)

(declare-fun e!230761 () Bool)

(assert (=> b!379267 (= e!230756 (and e!230761 mapRes!15270))))

(declare-fun condMapEmpty!15270 () Bool)

(declare-fun mapDefault!15270 () ValueCell!4225)

