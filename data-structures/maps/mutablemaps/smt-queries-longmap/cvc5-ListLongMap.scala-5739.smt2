; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74290 () Bool)

(assert start!74290)

(declare-fun b_free!15025 () Bool)

(declare-fun b_next!15025 () Bool)

(assert (=> start!74290 (= b_free!15025 (not b_next!15025))))

(declare-fun tp!52750 () Bool)

(declare-fun b_and!24819 () Bool)

(assert (=> start!74290 (= tp!52750 b_and!24819)))

(declare-fun b!873437 () Bool)

(declare-fun res!593645 () Bool)

(declare-fun e!486430 () Bool)

(assert (=> b!873437 (=> (not res!593645) (not e!486430))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50654 0))(
  ( (array!50655 (arr!24351 (Array (_ BitVec 32) (_ BitVec 64))) (size!24792 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50654)

(declare-datatypes ((V!28073 0))(
  ( (V!28074 (val!8682 Int)) )
))
(declare-datatypes ((ValueCell!8195 0))(
  ( (ValueCellFull!8195 (v!11107 V!28073)) (EmptyCell!8195) )
))
(declare-datatypes ((array!50656 0))(
  ( (array!50657 (arr!24352 (Array (_ BitVec 32) ValueCell!8195)) (size!24793 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50656)

(assert (=> b!873437 (= res!593645 (and (= (size!24793 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24792 _keys!868) (size!24793 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873438 () Bool)

(declare-fun res!593641 () Bool)

(assert (=> b!873438 (=> (not res!593641) (not e!486430))))

(declare-datatypes ((List!17353 0))(
  ( (Nil!17350) (Cons!17349 (h!18480 (_ BitVec 64)) (t!24402 List!17353)) )
))
(declare-fun arrayNoDuplicates!0 (array!50654 (_ BitVec 32) List!17353) Bool)

(assert (=> b!873438 (= res!593641 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17350))))

(declare-fun b!873439 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873439 (= e!486430 (bvsge i!612 (size!24793 _values!688)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28073)

(declare-datatypes ((tuple2!11466 0))(
  ( (tuple2!11467 (_1!5743 (_ BitVec 64)) (_2!5743 V!28073)) )
))
(declare-datatypes ((List!17354 0))(
  ( (Nil!17351) (Cons!17350 (h!18481 tuple2!11466) (t!24403 List!17354)) )
))
(declare-datatypes ((ListLongMap!10249 0))(
  ( (ListLongMap!10250 (toList!5140 List!17354)) )
))
(declare-fun lt!395740 () ListLongMap!10249)

(declare-fun zeroValue!654 () V!28073)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3104 (array!50654 array!50656 (_ BitVec 32) (_ BitVec 32) V!28073 V!28073 (_ BitVec 32) Int) ListLongMap!10249)

(assert (=> b!873439 (= lt!395740 (getCurrentListMapNoExtraKeys!3104 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873440 () Bool)

(declare-fun e!486429 () Bool)

(declare-fun tp_is_empty!17269 () Bool)

(assert (=> b!873440 (= e!486429 tp_is_empty!17269)))

(declare-fun b!873441 () Bool)

(declare-fun res!593644 () Bool)

(assert (=> b!873441 (=> (not res!593644) (not e!486430))))

(assert (=> b!873441 (= res!593644 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24792 _keys!868))))))

(declare-fun b!873442 () Bool)

(declare-fun res!593647 () Bool)

(assert (=> b!873442 (=> (not res!593647) (not e!486430))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873442 (= res!593647 (validKeyInArray!0 k!854))))

(declare-fun b!873443 () Bool)

(declare-fun res!593643 () Bool)

(assert (=> b!873443 (=> (not res!593643) (not e!486430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873443 (= res!593643 (validMask!0 mask!1196))))

(declare-fun b!873444 () Bool)

(declare-fun res!593646 () Bool)

(assert (=> b!873444 (=> (not res!593646) (not e!486430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50654 (_ BitVec 32)) Bool)

(assert (=> b!873444 (= res!593646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27512 () Bool)

(declare-fun mapRes!27512 () Bool)

(assert (=> mapIsEmpty!27512 mapRes!27512))

(declare-fun b!873445 () Bool)

(declare-fun e!486433 () Bool)

(declare-fun e!486432 () Bool)

(assert (=> b!873445 (= e!486433 (and e!486432 mapRes!27512))))

(declare-fun condMapEmpty!27512 () Bool)

(declare-fun mapDefault!27512 () ValueCell!8195)

