; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40072 () Bool)

(assert start!40072)

(declare-fun b_free!10331 () Bool)

(declare-fun b_next!10331 () Bool)

(assert (=> start!40072 (= b_free!10331 (not b_next!10331))))

(declare-fun tp!36522 () Bool)

(declare-fun b_and!18317 () Bool)

(assert (=> start!40072 (= tp!36522 b_and!18317)))

(declare-fun b!437105 () Bool)

(declare-fun res!257913 () Bool)

(declare-fun e!258015 () Bool)

(assert (=> b!437105 (=> (not res!257913) (not e!258015))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26765 0))(
  ( (array!26766 (arr!12829 (Array (_ BitVec 32) (_ BitVec 64))) (size!13181 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26765)

(assert (=> b!437105 (= res!257913 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13181 _keys!709))))))

(declare-fun b!437106 () Bool)

(declare-fun e!258012 () Bool)

(assert (=> b!437106 (= e!258012 (not true))))

(declare-datatypes ((V!16415 0))(
  ( (V!16416 (val!5786 Int)) )
))
(declare-fun minValue!515 () V!16415)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5398 0))(
  ( (ValueCellFull!5398 (v!8029 V!16415)) (EmptyCell!5398) )
))
(declare-datatypes ((array!26767 0))(
  ( (array!26768 (arr!12830 (Array (_ BitVec 32) ValueCell!5398)) (size!13182 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26767)

(declare-fun zeroValue!515 () V!16415)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!201563 () array!26765)

(declare-fun v!412 () V!16415)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!201566 () array!26767)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7600 0))(
  ( (tuple2!7601 (_1!3810 (_ BitVec 64)) (_2!3810 V!16415)) )
))
(declare-datatypes ((List!7644 0))(
  ( (Nil!7641) (Cons!7640 (h!8496 tuple2!7600) (t!13408 List!7644)) )
))
(declare-datatypes ((ListLongMap!6527 0))(
  ( (ListLongMap!6528 (toList!3279 List!7644)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1461 (array!26765 array!26767 (_ BitVec 32) (_ BitVec 32) V!16415 V!16415 (_ BitVec 32) Int) ListLongMap!6527)

(declare-fun +!1423 (ListLongMap!6527 tuple2!7600) ListLongMap!6527)

(assert (=> b!437106 (= (getCurrentListMapNoExtraKeys!1461 lt!201563 lt!201566 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1423 (getCurrentListMapNoExtraKeys!1461 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7601 k!794 v!412)))))

(declare-datatypes ((Unit!12961 0))(
  ( (Unit!12962) )
))
(declare-fun lt!201564 () Unit!12961)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!601 (array!26765 array!26767 (_ BitVec 32) (_ BitVec 32) V!16415 V!16415 (_ BitVec 32) (_ BitVec 64) V!16415 (_ BitVec 32) Int) Unit!12961)

(assert (=> b!437106 (= lt!201564 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!601 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437107 () Bool)

(declare-fun res!257909 () Bool)

(assert (=> b!437107 (=> (not res!257909) (not e!258015))))

(assert (=> b!437107 (= res!257909 (or (= (select (arr!12829 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12829 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18846 () Bool)

(declare-fun mapRes!18846 () Bool)

(assert (=> mapIsEmpty!18846 mapRes!18846))

(declare-fun b!437108 () Bool)

(declare-fun res!257910 () Bool)

(declare-fun e!258010 () Bool)

(assert (=> b!437108 (=> (not res!257910) (not e!258010))))

(assert (=> b!437108 (= res!257910 (bvsle from!863 i!563))))

(declare-fun b!437109 () Bool)

(declare-fun e!258014 () Bool)

(declare-fun e!258016 () Bool)

(assert (=> b!437109 (= e!258014 (and e!258016 mapRes!18846))))

(declare-fun condMapEmpty!18846 () Bool)

(declare-fun mapDefault!18846 () ValueCell!5398)

