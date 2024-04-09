; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39812 () Bool)

(assert start!39812)

(declare-fun b_free!10071 () Bool)

(declare-fun b_next!10071 () Bool)

(assert (=> start!39812 (= b_free!10071 (not b_next!10071))))

(declare-fun tp!35741 () Bool)

(declare-fun b_and!17819 () Bool)

(assert (=> start!39812 (= tp!35741 b_and!17819)))

(declare-fun mapIsEmpty!18456 () Bool)

(declare-fun mapRes!18456 () Bool)

(assert (=> mapIsEmpty!18456 mapRes!18456))

(declare-fun b!429238 () Bool)

(declare-fun e!254253 () Bool)

(declare-fun e!254246 () Bool)

(assert (=> b!429238 (= e!254253 e!254246)))

(declare-fun res!252163 () Bool)

(assert (=> b!429238 (=> (not res!252163) (not e!254246))))

(declare-datatypes ((array!26263 0))(
  ( (array!26264 (arr!12578 (Array (_ BitVec 32) (_ BitVec 64))) (size!12930 (_ BitVec 32))) )
))
(declare-fun lt!196221 () array!26263)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26263 (_ BitVec 32)) Bool)

(assert (=> b!429238 (= res!252163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196221 mask!1025))))

(declare-fun _keys!709 () array!26263)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429238 (= lt!196221 (array!26264 (store (arr!12578 _keys!709) i!563 k0!794) (size!12930 _keys!709)))))

(declare-fun b!429239 () Bool)

(declare-fun e!254250 () Bool)

(declare-fun e!254248 () Bool)

(assert (=> b!429239 (= e!254250 (and e!254248 mapRes!18456))))

(declare-fun condMapEmpty!18456 () Bool)

(declare-datatypes ((V!16069 0))(
  ( (V!16070 (val!5656 Int)) )
))
(declare-datatypes ((ValueCell!5268 0))(
  ( (ValueCellFull!5268 (v!7899 V!16069)) (EmptyCell!5268) )
))
(declare-datatypes ((array!26265 0))(
  ( (array!26266 (arr!12579 (Array (_ BitVec 32) ValueCell!5268)) (size!12931 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26265)

(declare-fun mapDefault!18456 () ValueCell!5268)

(assert (=> b!429239 (= condMapEmpty!18456 (= (arr!12579 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5268)) mapDefault!18456)))))

(declare-fun b!429240 () Bool)

(declare-fun e!254247 () Bool)

(declare-fun e!254252 () Bool)

(assert (=> b!429240 (= e!254247 (not e!254252))))

(declare-fun res!252164 () Bool)

(assert (=> b!429240 (=> res!252164 e!254252)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429240 (= res!252164 (not (validKeyInArray!0 (select (arr!12578 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7382 0))(
  ( (tuple2!7383 (_1!3701 (_ BitVec 64)) (_2!3701 V!16069)) )
))
(declare-datatypes ((List!7432 0))(
  ( (Nil!7429) (Cons!7428 (h!8284 tuple2!7382) (t!12960 List!7432)) )
))
(declare-datatypes ((ListLongMap!6309 0))(
  ( (ListLongMap!6310 (toList!3170 List!7432)) )
))
(declare-fun lt!196223 () ListLongMap!6309)

(declare-fun lt!196224 () ListLongMap!6309)

(assert (=> b!429240 (= lt!196223 lt!196224)))

(declare-fun lt!196220 () ListLongMap!6309)

(declare-fun v!412 () V!16069)

(declare-fun +!1319 (ListLongMap!6309 tuple2!7382) ListLongMap!6309)

(assert (=> b!429240 (= lt!196224 (+!1319 lt!196220 (tuple2!7383 k0!794 v!412)))))

(declare-fun minValue!515 () V!16069)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16069)

(declare-fun lt!196225 () array!26265)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1369 (array!26263 array!26265 (_ BitVec 32) (_ BitVec 32) V!16069 V!16069 (_ BitVec 32) Int) ListLongMap!6309)

(assert (=> b!429240 (= lt!196223 (getCurrentListMapNoExtraKeys!1369 lt!196221 lt!196225 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429240 (= lt!196220 (getCurrentListMapNoExtraKeys!1369 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12573 0))(
  ( (Unit!12574) )
))
(declare-fun lt!196218 () Unit!12573)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!519 (array!26263 array!26265 (_ BitVec 32) (_ BitVec 32) V!16069 V!16069 (_ BitVec 32) (_ BitVec 64) V!16069 (_ BitVec 32) Int) Unit!12573)

(assert (=> b!429240 (= lt!196218 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!519 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18456 () Bool)

(declare-fun tp!35742 () Bool)

(declare-fun e!254251 () Bool)

(assert (=> mapNonEmpty!18456 (= mapRes!18456 (and tp!35742 e!254251))))

(declare-fun mapValue!18456 () ValueCell!5268)

(declare-fun mapRest!18456 () (Array (_ BitVec 32) ValueCell!5268))

(declare-fun mapKey!18456 () (_ BitVec 32))

(assert (=> mapNonEmpty!18456 (= (arr!12579 _values!549) (store mapRest!18456 mapKey!18456 mapValue!18456))))

(declare-fun b!429241 () Bool)

(declare-fun res!252157 () Bool)

(assert (=> b!429241 (=> (not res!252157) (not e!254253))))

(assert (=> b!429241 (= res!252157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429242 () Bool)

(declare-fun res!252162 () Bool)

(assert (=> b!429242 (=> (not res!252162) (not e!254253))))

(assert (=> b!429242 (= res!252162 (or (= (select (arr!12578 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12578 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429243 () Bool)

(declare-fun res!252154 () Bool)

(assert (=> b!429243 (=> (not res!252154) (not e!254253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429243 (= res!252154 (validMask!0 mask!1025))))

(declare-fun res!252153 () Bool)

(assert (=> start!39812 (=> (not res!252153) (not e!254253))))

(assert (=> start!39812 (= res!252153 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12930 _keys!709))))))

(assert (=> start!39812 e!254253))

(declare-fun tp_is_empty!11223 () Bool)

(assert (=> start!39812 tp_is_empty!11223))

(assert (=> start!39812 tp!35741))

(assert (=> start!39812 true))

(declare-fun array_inv!9152 (array!26265) Bool)

(assert (=> start!39812 (and (array_inv!9152 _values!549) e!254250)))

(declare-fun array_inv!9153 (array!26263) Bool)

(assert (=> start!39812 (array_inv!9153 _keys!709)))

(declare-fun b!429244 () Bool)

(declare-fun e!254249 () Unit!12573)

(declare-fun Unit!12575 () Unit!12573)

(assert (=> b!429244 (= e!254249 Unit!12575)))

(declare-fun lt!196222 () Unit!12573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26263 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12573)

(assert (=> b!429244 (= lt!196222 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429244 false))

(declare-fun b!429245 () Bool)

(declare-fun res!252165 () Bool)

(assert (=> b!429245 (=> (not res!252165) (not e!254253))))

(assert (=> b!429245 (= res!252165 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12930 _keys!709))))))

(declare-fun b!429246 () Bool)

(assert (=> b!429246 (= e!254252 true)))

(assert (=> b!429246 (not (= (select (arr!12578 _keys!709) from!863) k0!794))))

(declare-fun lt!196219 () Unit!12573)

(assert (=> b!429246 (= lt!196219 e!254249)))

(declare-fun c!55367 () Bool)

(assert (=> b!429246 (= c!55367 (= (select (arr!12578 _keys!709) from!863) k0!794))))

(declare-fun lt!196227 () ListLongMap!6309)

(declare-fun get!6242 (ValueCell!5268 V!16069) V!16069)

(declare-fun dynLambda!765 (Int (_ BitVec 64)) V!16069)

(assert (=> b!429246 (= lt!196227 (+!1319 lt!196224 (tuple2!7383 (select (arr!12578 _keys!709) from!863) (get!6242 (select (arr!12579 _values!549) from!863) (dynLambda!765 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429247 () Bool)

(declare-fun res!252156 () Bool)

(assert (=> b!429247 (=> (not res!252156) (not e!254253))))

(assert (=> b!429247 (= res!252156 (and (= (size!12931 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12930 _keys!709) (size!12931 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429248 () Bool)

(declare-fun res!252160 () Bool)

(assert (=> b!429248 (=> (not res!252160) (not e!254253))))

(assert (=> b!429248 (= res!252160 (validKeyInArray!0 k0!794))))

(declare-fun b!429249 () Bool)

(assert (=> b!429249 (= e!254251 tp_is_empty!11223)))

(declare-fun b!429250 () Bool)

(assert (=> b!429250 (= e!254248 tp_is_empty!11223)))

(declare-fun b!429251 () Bool)

(declare-fun res!252158 () Bool)

(assert (=> b!429251 (=> (not res!252158) (not e!254253))))

(declare-fun arrayContainsKey!0 (array!26263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429251 (= res!252158 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429252 () Bool)

(assert (=> b!429252 (= e!254246 e!254247)))

(declare-fun res!252152 () Bool)

(assert (=> b!429252 (=> (not res!252152) (not e!254247))))

(assert (=> b!429252 (= res!252152 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!429252 (= lt!196227 (getCurrentListMapNoExtraKeys!1369 lt!196221 lt!196225 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429252 (= lt!196225 (array!26266 (store (arr!12579 _values!549) i!563 (ValueCellFull!5268 v!412)) (size!12931 _values!549)))))

(declare-fun lt!196226 () ListLongMap!6309)

(assert (=> b!429252 (= lt!196226 (getCurrentListMapNoExtraKeys!1369 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429253 () Bool)

(declare-fun Unit!12576 () Unit!12573)

(assert (=> b!429253 (= e!254249 Unit!12576)))

(declare-fun b!429254 () Bool)

(declare-fun res!252159 () Bool)

(assert (=> b!429254 (=> (not res!252159) (not e!254246))))

(declare-datatypes ((List!7433 0))(
  ( (Nil!7430) (Cons!7429 (h!8285 (_ BitVec 64)) (t!12961 List!7433)) )
))
(declare-fun arrayNoDuplicates!0 (array!26263 (_ BitVec 32) List!7433) Bool)

(assert (=> b!429254 (= res!252159 (arrayNoDuplicates!0 lt!196221 #b00000000000000000000000000000000 Nil!7430))))

(declare-fun b!429255 () Bool)

(declare-fun res!252155 () Bool)

(assert (=> b!429255 (=> (not res!252155) (not e!254253))))

(assert (=> b!429255 (= res!252155 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7430))))

(declare-fun b!429256 () Bool)

(declare-fun res!252161 () Bool)

(assert (=> b!429256 (=> (not res!252161) (not e!254246))))

(assert (=> b!429256 (= res!252161 (bvsle from!863 i!563))))

(assert (= (and start!39812 res!252153) b!429243))

(assert (= (and b!429243 res!252154) b!429247))

(assert (= (and b!429247 res!252156) b!429241))

(assert (= (and b!429241 res!252157) b!429255))

(assert (= (and b!429255 res!252155) b!429245))

(assert (= (and b!429245 res!252165) b!429248))

(assert (= (and b!429248 res!252160) b!429242))

(assert (= (and b!429242 res!252162) b!429251))

(assert (= (and b!429251 res!252158) b!429238))

(assert (= (and b!429238 res!252163) b!429254))

(assert (= (and b!429254 res!252159) b!429256))

(assert (= (and b!429256 res!252161) b!429252))

(assert (= (and b!429252 res!252152) b!429240))

(assert (= (and b!429240 (not res!252164)) b!429246))

(assert (= (and b!429246 c!55367) b!429244))

(assert (= (and b!429246 (not c!55367)) b!429253))

(assert (= (and b!429239 condMapEmpty!18456) mapIsEmpty!18456))

(assert (= (and b!429239 (not condMapEmpty!18456)) mapNonEmpty!18456))

(get-info :version)

(assert (= (and mapNonEmpty!18456 ((_ is ValueCellFull!5268) mapValue!18456)) b!429249))

(assert (= (and b!429239 ((_ is ValueCellFull!5268) mapDefault!18456)) b!429250))

(assert (= start!39812 b!429239))

(declare-fun b_lambda!9189 () Bool)

(assert (=> (not b_lambda!9189) (not b!429246)))

(declare-fun t!12959 () Bool)

(declare-fun tb!3485 () Bool)

(assert (=> (and start!39812 (= defaultEntry!557 defaultEntry!557) t!12959) tb!3485))

(declare-fun result!6489 () Bool)

(assert (=> tb!3485 (= result!6489 tp_is_empty!11223)))

(assert (=> b!429246 t!12959))

(declare-fun b_and!17821 () Bool)

(assert (= b_and!17819 (and (=> t!12959 result!6489) b_and!17821)))

(declare-fun m!417587 () Bool)

(assert (=> b!429241 m!417587))

(declare-fun m!417589 () Bool)

(assert (=> b!429244 m!417589))

(declare-fun m!417591 () Bool)

(assert (=> b!429255 m!417591))

(declare-fun m!417593 () Bool)

(assert (=> start!39812 m!417593))

(declare-fun m!417595 () Bool)

(assert (=> start!39812 m!417595))

(declare-fun m!417597 () Bool)

(assert (=> b!429240 m!417597))

(declare-fun m!417599 () Bool)

(assert (=> b!429240 m!417599))

(declare-fun m!417601 () Bool)

(assert (=> b!429240 m!417601))

(assert (=> b!429240 m!417597))

(declare-fun m!417603 () Bool)

(assert (=> b!429240 m!417603))

(declare-fun m!417605 () Bool)

(assert (=> b!429240 m!417605))

(declare-fun m!417607 () Bool)

(assert (=> b!429240 m!417607))

(declare-fun m!417609 () Bool)

(assert (=> b!429251 m!417609))

(declare-fun m!417611 () Bool)

(assert (=> b!429242 m!417611))

(declare-fun m!417613 () Bool)

(assert (=> b!429243 m!417613))

(declare-fun m!417615 () Bool)

(assert (=> b!429238 m!417615))

(declare-fun m!417617 () Bool)

(assert (=> b!429238 m!417617))

(declare-fun m!417619 () Bool)

(assert (=> mapNonEmpty!18456 m!417619))

(declare-fun m!417621 () Bool)

(assert (=> b!429252 m!417621))

(declare-fun m!417623 () Bool)

(assert (=> b!429252 m!417623))

(declare-fun m!417625 () Bool)

(assert (=> b!429252 m!417625))

(declare-fun m!417627 () Bool)

(assert (=> b!429254 m!417627))

(assert (=> b!429246 m!417597))

(declare-fun m!417629 () Bool)

(assert (=> b!429246 m!417629))

(declare-fun m!417631 () Bool)

(assert (=> b!429246 m!417631))

(declare-fun m!417633 () Bool)

(assert (=> b!429246 m!417633))

(assert (=> b!429246 m!417633))

(assert (=> b!429246 m!417631))

(declare-fun m!417635 () Bool)

(assert (=> b!429246 m!417635))

(declare-fun m!417637 () Bool)

(assert (=> b!429248 m!417637))

(check-sat (not b!429255) (not b!429238) (not mapNonEmpty!18456) (not b!429243) (not b!429251) (not b!429240) tp_is_empty!11223 (not b_lambda!9189) (not b!429246) (not b!429254) (not b!429248) (not start!39812) b_and!17821 (not b_next!10071) (not b!429244) (not b!429252) (not b!429241))
(check-sat b_and!17821 (not b_next!10071))
