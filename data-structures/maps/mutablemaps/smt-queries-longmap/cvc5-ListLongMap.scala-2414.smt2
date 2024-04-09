; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38198 () Bool)

(assert start!38198)

(declare-fun b_free!9049 () Bool)

(declare-fun b_next!9049 () Bool)

(assert (=> start!38198 (= b_free!9049 (not b_next!9049))))

(declare-fun tp!31931 () Bool)

(declare-fun b_and!16441 () Bool)

(assert (=> start!38198 (= tp!31931 b_and!16441)))

(declare-fun b!393589 () Bool)

(declare-fun res!225586 () Bool)

(declare-fun e!238300 () Bool)

(assert (=> b!393589 (=> (not res!225586) (not e!238300))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23325 0))(
  ( (array!23326 (arr!11117 (Array (_ BitVec 32) (_ BitVec 64))) (size!11469 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23325)

(assert (=> b!393589 (= res!225586 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11469 _keys!658))))))

(declare-fun b!393590 () Bool)

(declare-fun e!238299 () Bool)

(assert (=> b!393590 (= e!238300 e!238299)))

(declare-fun res!225590 () Bool)

(assert (=> b!393590 (=> (not res!225590) (not e!238299))))

(declare-fun lt!186401 () array!23325)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23325 (_ BitVec 32)) Bool)

(assert (=> b!393590 (= res!225590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186401 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!393590 (= lt!186401 (array!23326 (store (arr!11117 _keys!658) i!548 k!778) (size!11469 _keys!658)))))

(declare-fun b!393591 () Bool)

(declare-fun res!225594 () Bool)

(assert (=> b!393591 (=> (not res!225594) (not e!238300))))

(declare-datatypes ((List!6436 0))(
  ( (Nil!6433) (Cons!6432 (h!7288 (_ BitVec 64)) (t!11616 List!6436)) )
))
(declare-fun arrayNoDuplicates!0 (array!23325 (_ BitVec 32) List!6436) Bool)

(assert (=> b!393591 (= res!225594 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6433))))

(declare-fun b!393592 () Bool)

(declare-fun res!225588 () Bool)

(assert (=> b!393592 (=> (not res!225588) (not e!238300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393592 (= res!225588 (validKeyInArray!0 k!778))))

(declare-fun b!393593 () Bool)

(declare-fun res!225589 () Bool)

(assert (=> b!393593 (=> (not res!225589) (not e!238300))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14067 0))(
  ( (V!14068 (val!4905 Int)) )
))
(declare-datatypes ((ValueCell!4517 0))(
  ( (ValueCellFull!4517 (v!7142 V!14067)) (EmptyCell!4517) )
))
(declare-datatypes ((array!23327 0))(
  ( (array!23328 (arr!11118 (Array (_ BitVec 32) ValueCell!4517)) (size!11470 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23327)

(assert (=> b!393593 (= res!225589 (and (= (size!11470 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11469 _keys!658) (size!11470 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393594 () Bool)

(declare-fun res!225591 () Bool)

(assert (=> b!393594 (=> (not res!225591) (not e!238300))))

(assert (=> b!393594 (= res!225591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393595 () Bool)

(declare-fun e!238296 () Bool)

(declare-fun tp_is_empty!9721 () Bool)

(assert (=> b!393595 (= e!238296 tp_is_empty!9721)))

(declare-fun b!393596 () Bool)

(declare-fun res!225593 () Bool)

(assert (=> b!393596 (=> (not res!225593) (not e!238300))))

(declare-fun arrayContainsKey!0 (array!23325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393596 (= res!225593 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!393597 () Bool)

(declare-fun e!238298 () Bool)

(assert (=> b!393597 (= e!238299 (not e!238298))))

(declare-fun res!225584 () Bool)

(assert (=> b!393597 (=> res!225584 e!238298)))

(declare-fun lt!186405 () Bool)

(assert (=> b!393597 (= res!225584 (or (and (not lt!186405) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186405) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186405)))))

(assert (=> b!393597 (= lt!186405 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6554 0))(
  ( (tuple2!6555 (_1!3287 (_ BitVec 64)) (_2!3287 V!14067)) )
))
(declare-datatypes ((List!6437 0))(
  ( (Nil!6434) (Cons!6433 (h!7289 tuple2!6554) (t!11617 List!6437)) )
))
(declare-datatypes ((ListLongMap!5481 0))(
  ( (ListLongMap!5482 (toList!2756 List!6437)) )
))
(declare-fun lt!186402 () ListLongMap!5481)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14067)

(declare-fun minValue!472 () V!14067)

(declare-fun getCurrentListMap!2116 (array!23325 array!23327 (_ BitVec 32) (_ BitVec 32) V!14067 V!14067 (_ BitVec 32) Int) ListLongMap!5481)

(assert (=> b!393597 (= lt!186402 (getCurrentListMap!2116 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186406 () ListLongMap!5481)

(declare-fun lt!186407 () array!23327)

(assert (=> b!393597 (= lt!186406 (getCurrentListMap!2116 lt!186401 lt!186407 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186409 () ListLongMap!5481)

(declare-fun lt!186403 () ListLongMap!5481)

(assert (=> b!393597 (and (= lt!186409 lt!186403) (= lt!186403 lt!186409))))

(declare-fun v!373 () V!14067)

(declare-fun lt!186404 () ListLongMap!5481)

(declare-fun +!1054 (ListLongMap!5481 tuple2!6554) ListLongMap!5481)

(assert (=> b!393597 (= lt!186403 (+!1054 lt!186404 (tuple2!6555 k!778 v!373)))))

(declare-datatypes ((Unit!12005 0))(
  ( (Unit!12006) )
))
(declare-fun lt!186408 () Unit!12005)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!273 (array!23325 array!23327 (_ BitVec 32) (_ BitVec 32) V!14067 V!14067 (_ BitVec 32) (_ BitVec 64) V!14067 (_ BitVec 32) Int) Unit!12005)

(assert (=> b!393597 (= lt!186408 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!273 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!978 (array!23325 array!23327 (_ BitVec 32) (_ BitVec 32) V!14067 V!14067 (_ BitVec 32) Int) ListLongMap!5481)

(assert (=> b!393597 (= lt!186409 (getCurrentListMapNoExtraKeys!978 lt!186401 lt!186407 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393597 (= lt!186407 (array!23328 (store (arr!11118 _values!506) i!548 (ValueCellFull!4517 v!373)) (size!11470 _values!506)))))

(assert (=> b!393597 (= lt!186404 (getCurrentListMapNoExtraKeys!978 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393598 () Bool)

(declare-fun res!225587 () Bool)

(assert (=> b!393598 (=> (not res!225587) (not e!238300))))

(assert (=> b!393598 (= res!225587 (or (= (select (arr!11117 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11117 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393599 () Bool)

(declare-fun e!238301 () Bool)

(declare-fun mapRes!16179 () Bool)

(assert (=> b!393599 (= e!238301 (and e!238296 mapRes!16179))))

(declare-fun condMapEmpty!16179 () Bool)

(declare-fun mapDefault!16179 () ValueCell!4517)

