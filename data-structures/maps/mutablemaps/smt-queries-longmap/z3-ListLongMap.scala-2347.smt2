; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37554 () Bool)

(assert start!37554)

(declare-fun b_free!8673 () Bool)

(declare-fun b_next!8673 () Bool)

(assert (=> start!37554 (= b_free!8673 (not b_next!8673))))

(declare-fun tp!30734 () Bool)

(declare-fun b_and!15933 () Bool)

(assert (=> start!37554 (= tp!30734 b_and!15933)))

(declare-fun b!383215 () Bool)

(declare-fun res!218250 () Bool)

(declare-fun e!232782 () Bool)

(assert (=> b!383215 (=> (not res!218250) (not e!232782))))

(declare-datatypes ((array!22533 0))(
  ( (array!22534 (arr!10732 (Array (_ BitVec 32) (_ BitVec 64))) (size!11084 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22533)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383215 (= res!218250 (or (= (select (arr!10732 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10732 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383216 () Bool)

(declare-fun res!218249 () Bool)

(assert (=> b!383216 (=> (not res!218249) (not e!232782))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383216 (= res!218249 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383217 () Bool)

(declare-fun res!218242 () Bool)

(assert (=> b!383217 (=> (not res!218242) (not e!232782))))

(assert (=> b!383217 (= res!218242 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11084 _keys!658))))))

(declare-fun b!383218 () Bool)

(declare-fun e!232779 () Bool)

(declare-fun e!232781 () Bool)

(assert (=> b!383218 (= e!232779 (not e!232781))))

(declare-fun res!218246 () Bool)

(assert (=> b!383218 (=> res!218246 e!232781)))

(declare-fun lt!180063 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383218 (= res!218246 (or (and (not lt!180063) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180063) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180063)))))

(assert (=> b!383218 (= lt!180063 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13533 0))(
  ( (V!13534 (val!4705 Int)) )
))
(declare-datatypes ((ValueCell!4317 0))(
  ( (ValueCellFull!4317 (v!6898 V!13533)) (EmptyCell!4317) )
))
(declare-datatypes ((array!22535 0))(
  ( (array!22536 (arr!10733 (Array (_ BitVec 32) ValueCell!4317)) (size!11085 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22535)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6282 0))(
  ( (tuple2!6283 (_1!3151 (_ BitVec 64)) (_2!3151 V!13533)) )
))
(declare-datatypes ((List!6150 0))(
  ( (Nil!6147) (Cons!6146 (h!7002 tuple2!6282) (t!11308 List!6150)) )
))
(declare-datatypes ((ListLongMap!5209 0))(
  ( (ListLongMap!5210 (toList!2620 List!6150)) )
))
(declare-fun lt!180059 () ListLongMap!5209)

(declare-fun zeroValue!472 () V!13533)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13533)

(declare-fun getCurrentListMap!2038 (array!22533 array!22535 (_ BitVec 32) (_ BitVec 32) V!13533 V!13533 (_ BitVec 32) Int) ListLongMap!5209)

(assert (=> b!383218 (= lt!180059 (getCurrentListMap!2038 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180054 () array!22533)

(declare-fun lt!180064 () ListLongMap!5209)

(declare-fun lt!180055 () array!22535)

(assert (=> b!383218 (= lt!180064 (getCurrentListMap!2038 lt!180054 lt!180055 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180056 () ListLongMap!5209)

(declare-fun lt!180060 () ListLongMap!5209)

(assert (=> b!383218 (and (= lt!180056 lt!180060) (= lt!180060 lt!180056))))

(declare-fun lt!180062 () ListLongMap!5209)

(declare-fun lt!180061 () tuple2!6282)

(declare-fun +!956 (ListLongMap!5209 tuple2!6282) ListLongMap!5209)

(assert (=> b!383218 (= lt!180060 (+!956 lt!180062 lt!180061))))

(declare-fun v!373 () V!13533)

(assert (=> b!383218 (= lt!180061 (tuple2!6283 k0!778 v!373))))

(declare-datatypes ((Unit!11805 0))(
  ( (Unit!11806) )
))
(declare-fun lt!180057 () Unit!11805)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!189 (array!22533 array!22535 (_ BitVec 32) (_ BitVec 32) V!13533 V!13533 (_ BitVec 32) (_ BitVec 64) V!13533 (_ BitVec 32) Int) Unit!11805)

(assert (=> b!383218 (= lt!180057 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!189 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!856 (array!22533 array!22535 (_ BitVec 32) (_ BitVec 32) V!13533 V!13533 (_ BitVec 32) Int) ListLongMap!5209)

(assert (=> b!383218 (= lt!180056 (getCurrentListMapNoExtraKeys!856 lt!180054 lt!180055 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383218 (= lt!180055 (array!22536 (store (arr!10733 _values!506) i!548 (ValueCellFull!4317 v!373)) (size!11085 _values!506)))))

(assert (=> b!383218 (= lt!180062 (getCurrentListMapNoExtraKeys!856 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15546 () Bool)

(declare-fun mapRes!15546 () Bool)

(assert (=> mapIsEmpty!15546 mapRes!15546))

(declare-fun b!383219 () Bool)

(declare-fun res!218248 () Bool)

(assert (=> b!383219 (=> (not res!218248) (not e!232782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22533 (_ BitVec 32)) Bool)

(assert (=> b!383219 (= res!218248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383220 () Bool)

(declare-fun e!232783 () Bool)

(declare-fun e!232784 () Bool)

(assert (=> b!383220 (= e!232783 (and e!232784 mapRes!15546))))

(declare-fun condMapEmpty!15546 () Bool)

(declare-fun mapDefault!15546 () ValueCell!4317)

(assert (=> b!383220 (= condMapEmpty!15546 (= (arr!10733 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4317)) mapDefault!15546)))))

(declare-fun mapNonEmpty!15546 () Bool)

(declare-fun tp!30735 () Bool)

(declare-fun e!232780 () Bool)

(assert (=> mapNonEmpty!15546 (= mapRes!15546 (and tp!30735 e!232780))))

(declare-fun mapValue!15546 () ValueCell!4317)

(declare-fun mapKey!15546 () (_ BitVec 32))

(declare-fun mapRest!15546 () (Array (_ BitVec 32) ValueCell!4317))

(assert (=> mapNonEmpty!15546 (= (arr!10733 _values!506) (store mapRest!15546 mapKey!15546 mapValue!15546))))

(declare-fun b!383222 () Bool)

(assert (=> b!383222 (= e!232782 e!232779)))

(declare-fun res!218243 () Bool)

(assert (=> b!383222 (=> (not res!218243) (not e!232779))))

(assert (=> b!383222 (= res!218243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180054 mask!970))))

(assert (=> b!383222 (= lt!180054 (array!22534 (store (arr!10732 _keys!658) i!548 k0!778) (size!11084 _keys!658)))))

(declare-fun b!383223 () Bool)

(declare-fun tp_is_empty!9321 () Bool)

(assert (=> b!383223 (= e!232780 tp_is_empty!9321)))

(declare-fun b!383224 () Bool)

(assert (=> b!383224 (= e!232784 tp_is_empty!9321)))

(declare-fun b!383225 () Bool)

(assert (=> b!383225 (= e!232781 true)))

(declare-fun lt!180058 () ListLongMap!5209)

(assert (=> b!383225 (= lt!180058 (+!956 lt!180059 lt!180061))))

(assert (=> b!383225 (= lt!180064 lt!180056)))

(declare-fun b!383226 () Bool)

(declare-fun res!218252 () Bool)

(assert (=> b!383226 (=> (not res!218252) (not e!232782))))

(declare-datatypes ((List!6151 0))(
  ( (Nil!6148) (Cons!6147 (h!7003 (_ BitVec 64)) (t!11309 List!6151)) )
))
(declare-fun arrayNoDuplicates!0 (array!22533 (_ BitVec 32) List!6151) Bool)

(assert (=> b!383226 (= res!218252 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6148))))

(declare-fun b!383227 () Bool)

(declare-fun res!218245 () Bool)

(assert (=> b!383227 (=> (not res!218245) (not e!232782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383227 (= res!218245 (validKeyInArray!0 k0!778))))

(declare-fun b!383228 () Bool)

(declare-fun res!218247 () Bool)

(assert (=> b!383228 (=> (not res!218247) (not e!232782))))

(assert (=> b!383228 (= res!218247 (and (= (size!11085 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11084 _keys!658) (size!11085 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383221 () Bool)

(declare-fun res!218244 () Bool)

(assert (=> b!383221 (=> (not res!218244) (not e!232779))))

(assert (=> b!383221 (= res!218244 (arrayNoDuplicates!0 lt!180054 #b00000000000000000000000000000000 Nil!6148))))

(declare-fun res!218251 () Bool)

(assert (=> start!37554 (=> (not res!218251) (not e!232782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37554 (= res!218251 (validMask!0 mask!970))))

(assert (=> start!37554 e!232782))

(declare-fun array_inv!7882 (array!22535) Bool)

(assert (=> start!37554 (and (array_inv!7882 _values!506) e!232783)))

(assert (=> start!37554 tp!30734))

(assert (=> start!37554 true))

(assert (=> start!37554 tp_is_empty!9321))

(declare-fun array_inv!7883 (array!22533) Bool)

(assert (=> start!37554 (array_inv!7883 _keys!658)))

(assert (= (and start!37554 res!218251) b!383228))

(assert (= (and b!383228 res!218247) b!383219))

(assert (= (and b!383219 res!218248) b!383226))

(assert (= (and b!383226 res!218252) b!383217))

(assert (= (and b!383217 res!218242) b!383227))

(assert (= (and b!383227 res!218245) b!383215))

(assert (= (and b!383215 res!218250) b!383216))

(assert (= (and b!383216 res!218249) b!383222))

(assert (= (and b!383222 res!218243) b!383221))

(assert (= (and b!383221 res!218244) b!383218))

(assert (= (and b!383218 (not res!218246)) b!383225))

(assert (= (and b!383220 condMapEmpty!15546) mapIsEmpty!15546))

(assert (= (and b!383220 (not condMapEmpty!15546)) mapNonEmpty!15546))

(get-info :version)

(assert (= (and mapNonEmpty!15546 ((_ is ValueCellFull!4317) mapValue!15546)) b!383223))

(assert (= (and b!383220 ((_ is ValueCellFull!4317) mapDefault!15546)) b!383224))

(assert (= start!37554 b!383220))

(declare-fun m!380001 () Bool)

(assert (=> b!383226 m!380001))

(declare-fun m!380003 () Bool)

(assert (=> mapNonEmpty!15546 m!380003))

(declare-fun m!380005 () Bool)

(assert (=> b!383218 m!380005))

(declare-fun m!380007 () Bool)

(assert (=> b!383218 m!380007))

(declare-fun m!380009 () Bool)

(assert (=> b!383218 m!380009))

(declare-fun m!380011 () Bool)

(assert (=> b!383218 m!380011))

(declare-fun m!380013 () Bool)

(assert (=> b!383218 m!380013))

(declare-fun m!380015 () Bool)

(assert (=> b!383218 m!380015))

(declare-fun m!380017 () Bool)

(assert (=> b!383218 m!380017))

(declare-fun m!380019 () Bool)

(assert (=> b!383225 m!380019))

(declare-fun m!380021 () Bool)

(assert (=> b!383221 m!380021))

(declare-fun m!380023 () Bool)

(assert (=> b!383219 m!380023))

(declare-fun m!380025 () Bool)

(assert (=> b!383215 m!380025))

(declare-fun m!380027 () Bool)

(assert (=> b!383227 m!380027))

(declare-fun m!380029 () Bool)

(assert (=> b!383216 m!380029))

(declare-fun m!380031 () Bool)

(assert (=> b!383222 m!380031))

(declare-fun m!380033 () Bool)

(assert (=> b!383222 m!380033))

(declare-fun m!380035 () Bool)

(assert (=> start!37554 m!380035))

(declare-fun m!380037 () Bool)

(assert (=> start!37554 m!380037))

(declare-fun m!380039 () Bool)

(assert (=> start!37554 m!380039))

(check-sat (not b!383219) (not b!383221) (not b_next!8673) (not b!383227) (not b!383216) (not b!383225) b_and!15933 (not b!383222) (not mapNonEmpty!15546) (not start!37554) tp_is_empty!9321 (not b!383218) (not b!383226))
(check-sat b_and!15933 (not b_next!8673))
