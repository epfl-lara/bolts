; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37566 () Bool)

(assert start!37566)

(declare-fun b_free!8685 () Bool)

(declare-fun b_next!8685 () Bool)

(assert (=> start!37566 (= b_free!8685 (not b_next!8685))))

(declare-fun tp!30770 () Bool)

(declare-fun b_and!15945 () Bool)

(assert (=> start!37566 (= tp!30770 b_and!15945)))

(declare-fun b!383467 () Bool)

(declare-fun res!218441 () Bool)

(declare-fun e!232911 () Bool)

(assert (=> b!383467 (=> (not res!218441) (not e!232911))))

(declare-datatypes ((array!22557 0))(
  ( (array!22558 (arr!10744 (Array (_ BitVec 32) (_ BitVec 64))) (size!11096 (_ BitVec 32))) )
))
(declare-fun lt!180253 () array!22557)

(declare-datatypes ((List!6162 0))(
  ( (Nil!6159) (Cons!6158 (h!7014 (_ BitVec 64)) (t!11320 List!6162)) )
))
(declare-fun arrayNoDuplicates!0 (array!22557 (_ BitVec 32) List!6162) Bool)

(assert (=> b!383467 (= res!218441 (arrayNoDuplicates!0 lt!180253 #b00000000000000000000000000000000 Nil!6159))))

(declare-fun b!383468 () Bool)

(declare-fun e!232905 () Bool)

(declare-fun tp_is_empty!9333 () Bool)

(assert (=> b!383468 (= e!232905 tp_is_empty!9333)))

(declare-fun mapIsEmpty!15564 () Bool)

(declare-fun mapRes!15564 () Bool)

(assert (=> mapIsEmpty!15564 mapRes!15564))

(declare-fun b!383469 () Bool)

(declare-fun res!218446 () Bool)

(declare-fun e!232910 () Bool)

(assert (=> b!383469 (=> (not res!218446) (not e!232910))))

(declare-fun _keys!658 () array!22557)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22557 (_ BitVec 32)) Bool)

(assert (=> b!383469 (= res!218446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383470 () Bool)

(declare-fun res!218444 () Bool)

(assert (=> b!383470 (=> (not res!218444) (not e!232910))))

(assert (=> b!383470 (= res!218444 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6159))))

(declare-fun b!383471 () Bool)

(declare-fun res!218442 () Bool)

(assert (=> b!383471 (=> (not res!218442) (not e!232910))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383471 (= res!218442 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!218450 () Bool)

(assert (=> start!37566 (=> (not res!218450) (not e!232910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37566 (= res!218450 (validMask!0 mask!970))))

(assert (=> start!37566 e!232910))

(declare-datatypes ((V!13549 0))(
  ( (V!13550 (val!4711 Int)) )
))
(declare-datatypes ((ValueCell!4323 0))(
  ( (ValueCellFull!4323 (v!6904 V!13549)) (EmptyCell!4323) )
))
(declare-datatypes ((array!22559 0))(
  ( (array!22560 (arr!10745 (Array (_ BitVec 32) ValueCell!4323)) (size!11097 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22559)

(declare-fun e!232906 () Bool)

(declare-fun array_inv!7892 (array!22559) Bool)

(assert (=> start!37566 (and (array_inv!7892 _values!506) e!232906)))

(assert (=> start!37566 tp!30770))

(assert (=> start!37566 true))

(assert (=> start!37566 tp_is_empty!9333))

(declare-fun array_inv!7893 (array!22557) Bool)

(assert (=> start!37566 (array_inv!7893 _keys!658)))

(declare-fun b!383472 () Bool)

(declare-fun e!232909 () Bool)

(assert (=> b!383472 (= e!232909 true)))

(declare-datatypes ((tuple2!6294 0))(
  ( (tuple2!6295 (_1!3157 (_ BitVec 64)) (_2!3157 V!13549)) )
))
(declare-datatypes ((List!6163 0))(
  ( (Nil!6160) (Cons!6159 (h!7015 tuple2!6294) (t!11321 List!6163)) )
))
(declare-datatypes ((ListLongMap!5221 0))(
  ( (ListLongMap!5222 (toList!2626 List!6163)) )
))
(declare-fun lt!180260 () ListLongMap!5221)

(declare-fun lt!180255 () ListLongMap!5221)

(declare-fun lt!180257 () tuple2!6294)

(declare-fun +!962 (ListLongMap!5221 tuple2!6294) ListLongMap!5221)

(assert (=> b!383472 (= lt!180260 (+!962 lt!180255 lt!180257))))

(declare-fun lt!180258 () ListLongMap!5221)

(declare-fun lt!180262 () ListLongMap!5221)

(assert (=> b!383472 (= lt!180258 lt!180262)))

(declare-fun b!383473 () Bool)

(declare-fun e!232907 () Bool)

(assert (=> b!383473 (= e!232907 tp_is_empty!9333)))

(declare-fun b!383474 () Bool)

(assert (=> b!383474 (= e!232910 e!232911)))

(declare-fun res!218448 () Bool)

(assert (=> b!383474 (=> (not res!218448) (not e!232911))))

(assert (=> b!383474 (= res!218448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180253 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383474 (= lt!180253 (array!22558 (store (arr!10744 _keys!658) i!548 k0!778) (size!11096 _keys!658)))))

(declare-fun b!383475 () Bool)

(declare-fun res!218447 () Bool)

(assert (=> b!383475 (=> (not res!218447) (not e!232910))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383475 (= res!218447 (and (= (size!11097 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11096 _keys!658) (size!11097 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383476 () Bool)

(assert (=> b!383476 (= e!232906 (and e!232907 mapRes!15564))))

(declare-fun condMapEmpty!15564 () Bool)

(declare-fun mapDefault!15564 () ValueCell!4323)

(assert (=> b!383476 (= condMapEmpty!15564 (= (arr!10745 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4323)) mapDefault!15564)))))

(declare-fun b!383477 () Bool)

(assert (=> b!383477 (= e!232911 (not e!232909))))

(declare-fun res!218440 () Bool)

(assert (=> b!383477 (=> res!218440 e!232909)))

(declare-fun lt!180252 () Bool)

(assert (=> b!383477 (= res!218440 (or (and (not lt!180252) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180252) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180252)))))

(assert (=> b!383477 (= lt!180252 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13549)

(declare-fun minValue!472 () V!13549)

(declare-fun getCurrentListMap!2043 (array!22557 array!22559 (_ BitVec 32) (_ BitVec 32) V!13549 V!13549 (_ BitVec 32) Int) ListLongMap!5221)

(assert (=> b!383477 (= lt!180255 (getCurrentListMap!2043 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180254 () array!22559)

(assert (=> b!383477 (= lt!180258 (getCurrentListMap!2043 lt!180253 lt!180254 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180259 () ListLongMap!5221)

(assert (=> b!383477 (and (= lt!180262 lt!180259) (= lt!180259 lt!180262))))

(declare-fun lt!180261 () ListLongMap!5221)

(assert (=> b!383477 (= lt!180259 (+!962 lt!180261 lt!180257))))

(declare-fun v!373 () V!13549)

(assert (=> b!383477 (= lt!180257 (tuple2!6295 k0!778 v!373))))

(declare-datatypes ((Unit!11815 0))(
  ( (Unit!11816) )
))
(declare-fun lt!180256 () Unit!11815)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!194 (array!22557 array!22559 (_ BitVec 32) (_ BitVec 32) V!13549 V!13549 (_ BitVec 32) (_ BitVec 64) V!13549 (_ BitVec 32) Int) Unit!11815)

(assert (=> b!383477 (= lt!180256 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!194 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!861 (array!22557 array!22559 (_ BitVec 32) (_ BitVec 32) V!13549 V!13549 (_ BitVec 32) Int) ListLongMap!5221)

(assert (=> b!383477 (= lt!180262 (getCurrentListMapNoExtraKeys!861 lt!180253 lt!180254 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383477 (= lt!180254 (array!22560 (store (arr!10745 _values!506) i!548 (ValueCellFull!4323 v!373)) (size!11097 _values!506)))))

(assert (=> b!383477 (= lt!180261 (getCurrentListMapNoExtraKeys!861 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383478 () Bool)

(declare-fun res!218443 () Bool)

(assert (=> b!383478 (=> (not res!218443) (not e!232910))))

(assert (=> b!383478 (= res!218443 (or (= (select (arr!10744 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10744 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383479 () Bool)

(declare-fun res!218445 () Bool)

(assert (=> b!383479 (=> (not res!218445) (not e!232910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383479 (= res!218445 (validKeyInArray!0 k0!778))))

(declare-fun b!383480 () Bool)

(declare-fun res!218449 () Bool)

(assert (=> b!383480 (=> (not res!218449) (not e!232910))))

(assert (=> b!383480 (= res!218449 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11096 _keys!658))))))

(declare-fun mapNonEmpty!15564 () Bool)

(declare-fun tp!30771 () Bool)

(assert (=> mapNonEmpty!15564 (= mapRes!15564 (and tp!30771 e!232905))))

(declare-fun mapValue!15564 () ValueCell!4323)

(declare-fun mapRest!15564 () (Array (_ BitVec 32) ValueCell!4323))

(declare-fun mapKey!15564 () (_ BitVec 32))

(assert (=> mapNonEmpty!15564 (= (arr!10745 _values!506) (store mapRest!15564 mapKey!15564 mapValue!15564))))

(assert (= (and start!37566 res!218450) b!383475))

(assert (= (and b!383475 res!218447) b!383469))

(assert (= (and b!383469 res!218446) b!383470))

(assert (= (and b!383470 res!218444) b!383480))

(assert (= (and b!383480 res!218449) b!383479))

(assert (= (and b!383479 res!218445) b!383478))

(assert (= (and b!383478 res!218443) b!383471))

(assert (= (and b!383471 res!218442) b!383474))

(assert (= (and b!383474 res!218448) b!383467))

(assert (= (and b!383467 res!218441) b!383477))

(assert (= (and b!383477 (not res!218440)) b!383472))

(assert (= (and b!383476 condMapEmpty!15564) mapIsEmpty!15564))

(assert (= (and b!383476 (not condMapEmpty!15564)) mapNonEmpty!15564))

(get-info :version)

(assert (= (and mapNonEmpty!15564 ((_ is ValueCellFull!4323) mapValue!15564)) b!383468))

(assert (= (and b!383476 ((_ is ValueCellFull!4323) mapDefault!15564)) b!383473))

(assert (= start!37566 b!383476))

(declare-fun m!380241 () Bool)

(assert (=> b!383479 m!380241))

(declare-fun m!380243 () Bool)

(assert (=> b!383478 m!380243))

(declare-fun m!380245 () Bool)

(assert (=> b!383469 m!380245))

(declare-fun m!380247 () Bool)

(assert (=> mapNonEmpty!15564 m!380247))

(declare-fun m!380249 () Bool)

(assert (=> b!383470 m!380249))

(declare-fun m!380251 () Bool)

(assert (=> b!383474 m!380251))

(declare-fun m!380253 () Bool)

(assert (=> b!383474 m!380253))

(declare-fun m!380255 () Bool)

(assert (=> b!383477 m!380255))

(declare-fun m!380257 () Bool)

(assert (=> b!383477 m!380257))

(declare-fun m!380259 () Bool)

(assert (=> b!383477 m!380259))

(declare-fun m!380261 () Bool)

(assert (=> b!383477 m!380261))

(declare-fun m!380263 () Bool)

(assert (=> b!383477 m!380263))

(declare-fun m!380265 () Bool)

(assert (=> b!383477 m!380265))

(declare-fun m!380267 () Bool)

(assert (=> b!383477 m!380267))

(declare-fun m!380269 () Bool)

(assert (=> b!383467 m!380269))

(declare-fun m!380271 () Bool)

(assert (=> b!383472 m!380271))

(declare-fun m!380273 () Bool)

(assert (=> start!37566 m!380273))

(declare-fun m!380275 () Bool)

(assert (=> start!37566 m!380275))

(declare-fun m!380277 () Bool)

(assert (=> start!37566 m!380277))

(declare-fun m!380279 () Bool)

(assert (=> b!383471 m!380279))

(check-sat (not b!383471) (not start!37566) (not b!383472) (not b_next!8685) (not b!383477) b_and!15945 (not mapNonEmpty!15564) (not b!383479) (not b!383470) (not b!383467) (not b!383469) tp_is_empty!9333 (not b!383474))
(check-sat b_and!15945 (not b_next!8685))
