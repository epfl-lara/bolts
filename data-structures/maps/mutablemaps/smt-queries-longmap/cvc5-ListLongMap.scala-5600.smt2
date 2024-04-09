; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73412 () Bool)

(assert start!73412)

(declare-fun b_free!14299 () Bool)

(declare-fun b_next!14299 () Bool)

(assert (=> start!73412 (= b_free!14299 (not b_next!14299))))

(declare-fun tp!50402 () Bool)

(declare-fun b_and!23673 () Bool)

(assert (=> start!73412 (= tp!50402 b_and!23673)))

(declare-fun b!856356 () Bool)

(declare-fun e!477381 () Bool)

(declare-fun e!477380 () Bool)

(assert (=> b!856356 (= e!477381 e!477380)))

(declare-fun res!581764 () Bool)

(assert (=> b!856356 (=> (not res!581764) (not e!477380))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856356 (= res!581764 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!26961 0))(
  ( (V!26962 (val!8265 Int)) )
))
(declare-datatypes ((tuple2!10884 0))(
  ( (tuple2!10885 (_1!5452 (_ BitVec 64)) (_2!5452 V!26961)) )
))
(declare-datatypes ((List!16758 0))(
  ( (Nil!16755) (Cons!16754 (h!17885 tuple2!10884) (t!23407 List!16758)) )
))
(declare-datatypes ((ListLongMap!9667 0))(
  ( (ListLongMap!9668 (toList!4849 List!16758)) )
))
(declare-fun lt!385924 () ListLongMap!9667)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7778 0))(
  ( (ValueCellFull!7778 (v!10686 V!26961)) (EmptyCell!7778) )
))
(declare-datatypes ((array!49038 0))(
  ( (array!49039 (arr!23546 (Array (_ BitVec 32) ValueCell!7778)) (size!23987 (_ BitVec 32))) )
))
(declare-fun lt!385925 () array!49038)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49040 0))(
  ( (array!49041 (arr!23547 (Array (_ BitVec 32) (_ BitVec 64))) (size!23988 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49040)

(declare-fun minValue!654 () V!26961)

(declare-fun zeroValue!654 () V!26961)

(declare-fun getCurrentListMapNoExtraKeys!2831 (array!49040 array!49038 (_ BitVec 32) (_ BitVec 32) V!26961 V!26961 (_ BitVec 32) Int) ListLongMap!9667)

(assert (=> b!856356 (= lt!385924 (getCurrentListMapNoExtraKeys!2831 _keys!868 lt!385925 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26961)

(declare-fun _values!688 () array!49038)

(assert (=> b!856356 (= lt!385925 (array!49039 (store (arr!23546 _values!688) i!612 (ValueCellFull!7778 v!557)) (size!23987 _values!688)))))

(declare-fun lt!385926 () ListLongMap!9667)

(assert (=> b!856356 (= lt!385926 (getCurrentListMapNoExtraKeys!2831 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856357 () Bool)

(declare-fun res!581762 () Bool)

(assert (=> b!856357 (=> (not res!581762) (not e!477381))))

(assert (=> b!856357 (= res!581762 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23988 _keys!868))))))

(declare-fun b!856358 () Bool)

(declare-fun res!581758 () Bool)

(assert (=> b!856358 (=> (not res!581758) (not e!477381))))

(declare-datatypes ((List!16759 0))(
  ( (Nil!16756) (Cons!16755 (h!17886 (_ BitVec 64)) (t!23408 List!16759)) )
))
(declare-fun arrayNoDuplicates!0 (array!49040 (_ BitVec 32) List!16759) Bool)

(assert (=> b!856358 (= res!581758 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16756))))

(declare-fun b!856359 () Bool)

(declare-fun res!581759 () Bool)

(assert (=> b!856359 (=> (not res!581759) (not e!477381))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!856359 (= res!581759 (and (= (select (arr!23547 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856360 () Bool)

(declare-fun res!581766 () Bool)

(assert (=> b!856360 (=> (not res!581766) (not e!477381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856360 (= res!581766 (validKeyInArray!0 k!854))))

(declare-fun res!581765 () Bool)

(assert (=> start!73412 (=> (not res!581765) (not e!477381))))

(assert (=> start!73412 (= res!581765 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23988 _keys!868))))))

(assert (=> start!73412 e!477381))

(declare-fun tp_is_empty!16435 () Bool)

(assert (=> start!73412 tp_is_empty!16435))

(assert (=> start!73412 true))

(assert (=> start!73412 tp!50402))

(declare-fun array_inv!18636 (array!49040) Bool)

(assert (=> start!73412 (array_inv!18636 _keys!868)))

(declare-fun e!477383 () Bool)

(declare-fun array_inv!18637 (array!49038) Bool)

(assert (=> start!73412 (and (array_inv!18637 _values!688) e!477383)))

(declare-fun mapNonEmpty!26252 () Bool)

(declare-fun mapRes!26252 () Bool)

(declare-fun tp!50401 () Bool)

(declare-fun e!477384 () Bool)

(assert (=> mapNonEmpty!26252 (= mapRes!26252 (and tp!50401 e!477384))))

(declare-fun mapValue!26252 () ValueCell!7778)

(declare-fun mapKey!26252 () (_ BitVec 32))

(declare-fun mapRest!26252 () (Array (_ BitVec 32) ValueCell!7778))

(assert (=> mapNonEmpty!26252 (= (arr!23546 _values!688) (store mapRest!26252 mapKey!26252 mapValue!26252))))

(declare-fun mapIsEmpty!26252 () Bool)

(assert (=> mapIsEmpty!26252 mapRes!26252))

(declare-fun b!856361 () Bool)

(declare-fun e!477379 () Bool)

(assert (=> b!856361 (= e!477383 (and e!477379 mapRes!26252))))

(declare-fun condMapEmpty!26252 () Bool)

(declare-fun mapDefault!26252 () ValueCell!7778)

