; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39774 () Bool)

(assert start!39774)

(declare-fun b_free!10033 () Bool)

(declare-fun b_next!10033 () Bool)

(assert (=> start!39774 (= b_free!10033 (not b_next!10033))))

(declare-fun tp!35628 () Bool)

(declare-fun b_and!17743 () Bool)

(assert (=> start!39774 (= tp!35628 b_and!17743)))

(declare-fun b!428117 () Bool)

(declare-fun e!253735 () Bool)

(assert (=> b!428117 (= e!253735 true)))

(declare-datatypes ((array!26187 0))(
  ( (array!26188 (arr!12540 (Array (_ BitVec 32) (_ BitVec 64))) (size!12892 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26187)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!428117 (not (= (select (arr!12540 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12519 0))(
  ( (Unit!12520) )
))
(declare-fun lt!195654 () Unit!12519)

(declare-fun e!253736 () Unit!12519)

(assert (=> b!428117 (= lt!195654 e!253736)))

(declare-fun c!55310 () Bool)

(assert (=> b!428117 (= c!55310 (= (select (arr!12540 _keys!709) from!863) k!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!16019 0))(
  ( (V!16020 (val!5637 Int)) )
))
(declare-datatypes ((tuple2!7354 0))(
  ( (tuple2!7355 (_1!3687 (_ BitVec 64)) (_2!3687 V!16019)) )
))
(declare-datatypes ((List!7403 0))(
  ( (Nil!7400) (Cons!7399 (h!8255 tuple2!7354) (t!12893 List!7403)) )
))
(declare-datatypes ((ListLongMap!6281 0))(
  ( (ListLongMap!6282 (toList!3156 List!7403)) )
))
(declare-fun lt!195650 () ListLongMap!6281)

(declare-fun lt!195648 () ListLongMap!6281)

(declare-datatypes ((ValueCell!5249 0))(
  ( (ValueCellFull!5249 (v!7880 V!16019)) (EmptyCell!5249) )
))
(declare-datatypes ((array!26189 0))(
  ( (array!26190 (arr!12541 (Array (_ BitVec 32) ValueCell!5249)) (size!12893 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26189)

(declare-fun +!1309 (ListLongMap!6281 tuple2!7354) ListLongMap!6281)

(declare-fun get!6221 (ValueCell!5249 V!16019) V!16019)

(declare-fun dynLambda!756 (Int (_ BitVec 64)) V!16019)

(assert (=> b!428117 (= lt!195650 (+!1309 lt!195648 (tuple2!7355 (select (arr!12540 _keys!709) from!863) (get!6221 (select (arr!12541 _values!549) from!863) (dynLambda!756 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428118 () Bool)

(declare-fun res!251354 () Bool)

(declare-fun e!253741 () Bool)

(assert (=> b!428118 (=> (not res!251354) (not e!253741))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428118 (= res!251354 (bvsle from!863 i!563))))

(declare-fun b!428119 () Bool)

(declare-fun res!251362 () Bool)

(declare-fun e!253737 () Bool)

(assert (=> b!428119 (=> (not res!251362) (not e!253737))))

(declare-datatypes ((List!7404 0))(
  ( (Nil!7401) (Cons!7400 (h!8256 (_ BitVec 64)) (t!12894 List!7404)) )
))
(declare-fun arrayNoDuplicates!0 (array!26187 (_ BitVec 32) List!7404) Bool)

(assert (=> b!428119 (= res!251362 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7401))))

(declare-fun b!428120 () Bool)

(declare-fun e!253734 () Bool)

(declare-fun e!253738 () Bool)

(declare-fun mapRes!18399 () Bool)

(assert (=> b!428120 (= e!253734 (and e!253738 mapRes!18399))))

(declare-fun condMapEmpty!18399 () Bool)

(declare-fun mapDefault!18399 () ValueCell!5249)

