; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37510 () Bool)

(assert start!37510)

(declare-fun b_free!8629 () Bool)

(declare-fun b_next!8629 () Bool)

(assert (=> start!37510 (= b_free!8629 (not b_next!8629))))

(declare-fun tp!30603 () Bool)

(declare-fun b_and!15889 () Bool)

(assert (=> start!37510 (= tp!30603 b_and!15889)))

(declare-fun b!382291 () Bool)

(declare-fun res!217516 () Bool)

(declare-fun e!232318 () Bool)

(assert (=> b!382291 (=> (not res!217516) (not e!232318))))

(declare-datatypes ((array!22445 0))(
  ( (array!22446 (arr!10688 (Array (_ BitVec 32) (_ BitVec 64))) (size!11040 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22445)

(declare-datatypes ((List!6115 0))(
  ( (Nil!6112) (Cons!6111 (h!6967 (_ BitVec 64)) (t!11273 List!6115)) )
))
(declare-fun arrayNoDuplicates!0 (array!22445 (_ BitVec 32) List!6115) Bool)

(assert (=> b!382291 (= res!217516 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6112))))

(declare-fun b!382292 () Bool)

(declare-fun e!232321 () Bool)

(declare-fun tp_is_empty!9277 () Bool)

(assert (=> b!382292 (= e!232321 tp_is_empty!9277)))

(declare-fun b!382293 () Bool)

(declare-fun res!217519 () Bool)

(assert (=> b!382293 (=> (not res!217519) (not e!232318))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382293 (= res!217519 (or (= (select (arr!10688 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10688 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!217526 () Bool)

(assert (=> start!37510 (=> (not res!217526) (not e!232318))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37510 (= res!217526 (validMask!0 mask!970))))

(assert (=> start!37510 e!232318))

(declare-datatypes ((V!13475 0))(
  ( (V!13476 (val!4683 Int)) )
))
(declare-datatypes ((ValueCell!4295 0))(
  ( (ValueCellFull!4295 (v!6876 V!13475)) (EmptyCell!4295) )
))
(declare-datatypes ((array!22447 0))(
  ( (array!22448 (arr!10689 (Array (_ BitVec 32) ValueCell!4295)) (size!11041 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22447)

(declare-fun e!232323 () Bool)

(declare-fun array_inv!7848 (array!22447) Bool)

(assert (=> start!37510 (and (array_inv!7848 _values!506) e!232323)))

(assert (=> start!37510 tp!30603))

(assert (=> start!37510 true))

(assert (=> start!37510 tp_is_empty!9277))

(declare-fun array_inv!7849 (array!22445) Bool)

(assert (=> start!37510 (array_inv!7849 _keys!658)))

(declare-fun b!382294 () Bool)

(declare-fun e!232317 () Bool)

(declare-fun e!232319 () Bool)

(assert (=> b!382294 (= e!232317 (not e!232319))))

(declare-fun res!217522 () Bool)

(assert (=> b!382294 (=> res!217522 e!232319)))

(declare-fun lt!179421 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382294 (= res!217522 (or (and (not lt!179421) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179421) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179421)))))

(assert (=> b!382294 (= lt!179421 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13475)

(declare-datatypes ((tuple2!6246 0))(
  ( (tuple2!6247 (_1!3133 (_ BitVec 64)) (_2!3133 V!13475)) )
))
(declare-datatypes ((List!6116 0))(
  ( (Nil!6113) (Cons!6112 (h!6968 tuple2!6246) (t!11274 List!6116)) )
))
(declare-datatypes ((ListLongMap!5173 0))(
  ( (ListLongMap!5174 (toList!2602 List!6116)) )
))
(declare-fun lt!179418 () ListLongMap!5173)

(declare-fun minValue!472 () V!13475)

(declare-fun getCurrentListMap!2021 (array!22445 array!22447 (_ BitVec 32) (_ BitVec 32) V!13475 V!13475 (_ BitVec 32) Int) ListLongMap!5173)

(assert (=> b!382294 (= lt!179418 (getCurrentListMap!2021 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179417 () ListLongMap!5173)

(declare-fun lt!179414 () array!22447)

(declare-fun lt!179415 () array!22445)

(assert (=> b!382294 (= lt!179417 (getCurrentListMap!2021 lt!179415 lt!179414 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179416 () ListLongMap!5173)

(declare-fun lt!179422 () ListLongMap!5173)

(assert (=> b!382294 (and (= lt!179416 lt!179422) (= lt!179422 lt!179416))))

(declare-fun v!373 () V!13475)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!179420 () ListLongMap!5173)

(declare-fun +!939 (ListLongMap!5173 tuple2!6246) ListLongMap!5173)

(assert (=> b!382294 (= lt!179422 (+!939 lt!179420 (tuple2!6247 k!778 v!373)))))

(declare-datatypes ((Unit!11771 0))(
  ( (Unit!11772) )
))
(declare-fun lt!179419 () Unit!11771)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!172 (array!22445 array!22447 (_ BitVec 32) (_ BitVec 32) V!13475 V!13475 (_ BitVec 32) (_ BitVec 64) V!13475 (_ BitVec 32) Int) Unit!11771)

(assert (=> b!382294 (= lt!179419 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!172 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!839 (array!22445 array!22447 (_ BitVec 32) (_ BitVec 32) V!13475 V!13475 (_ BitVec 32) Int) ListLongMap!5173)

(assert (=> b!382294 (= lt!179416 (getCurrentListMapNoExtraKeys!839 lt!179415 lt!179414 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382294 (= lt!179414 (array!22448 (store (arr!10689 _values!506) i!548 (ValueCellFull!4295 v!373)) (size!11041 _values!506)))))

(assert (=> b!382294 (= lt!179420 (getCurrentListMapNoExtraKeys!839 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382295 () Bool)

(declare-fun mapRes!15480 () Bool)

(assert (=> b!382295 (= e!232323 (and e!232321 mapRes!15480))))

(declare-fun condMapEmpty!15480 () Bool)

(declare-fun mapDefault!15480 () ValueCell!4295)

