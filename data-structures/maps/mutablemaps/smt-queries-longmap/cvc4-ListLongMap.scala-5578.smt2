; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73284 () Bool)

(assert start!73284)

(declare-fun b_free!14171 () Bool)

(declare-fun b_next!14171 () Bool)

(assert (=> start!73284 (= b_free!14171 (not b_next!14171))))

(declare-fun tp!50017 () Bool)

(declare-fun b_and!23519 () Bool)

(assert (=> start!73284 (= tp!50017 b_and!23519)))

(declare-fun b!854023 () Bool)

(declare-fun res!580101 () Bool)

(declare-fun e!476267 () Bool)

(assert (=> b!854023 (=> (not res!580101) (not e!476267))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854023 (= res!580101 (validMask!0 mask!1196))))

(declare-fun b!854024 () Bool)

(declare-fun e!476262 () Bool)

(assert (=> b!854024 (= e!476267 e!476262)))

(declare-fun res!580109 () Bool)

(assert (=> b!854024 (=> (not res!580109) (not e!476262))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854024 (= res!580109 (= from!1053 i!612))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26789 0))(
  ( (V!26790 (val!8201 Int)) )
))
(declare-datatypes ((ValueCell!7714 0))(
  ( (ValueCellFull!7714 (v!10622 V!26789)) (EmptyCell!7714) )
))
(declare-datatypes ((array!48794 0))(
  ( (array!48795 (arr!23424 (Array (_ BitVec 32) ValueCell!7714)) (size!23865 (_ BitVec 32))) )
))
(declare-fun lt!385157 () array!48794)

(declare-datatypes ((array!48796 0))(
  ( (array!48797 (arr!23425 (Array (_ BitVec 32) (_ BitVec 64))) (size!23866 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48796)

(declare-fun minValue!654 () V!26789)

(declare-fun zeroValue!654 () V!26789)

(declare-datatypes ((tuple2!10796 0))(
  ( (tuple2!10797 (_1!5408 (_ BitVec 64)) (_2!5408 V!26789)) )
))
(declare-datatypes ((List!16671 0))(
  ( (Nil!16668) (Cons!16667 (h!17798 tuple2!10796) (t!23296 List!16671)) )
))
(declare-datatypes ((ListLongMap!9579 0))(
  ( (ListLongMap!9580 (toList!4805 List!16671)) )
))
(declare-fun lt!385158 () ListLongMap!9579)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2787 (array!48796 array!48794 (_ BitVec 32) (_ BitVec 32) V!26789 V!26789 (_ BitVec 32) Int) ListLongMap!9579)

(assert (=> b!854024 (= lt!385158 (getCurrentListMapNoExtraKeys!2787 _keys!868 lt!385157 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26789)

(declare-fun _values!688 () array!48794)

(assert (=> b!854024 (= lt!385157 (array!48795 (store (arr!23424 _values!688) i!612 (ValueCellFull!7714 v!557)) (size!23865 _values!688)))))

(declare-fun lt!385156 () ListLongMap!9579)

(assert (=> b!854024 (= lt!385156 (getCurrentListMapNoExtraKeys!2787 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854025 () Bool)

(declare-fun e!476263 () Bool)

(declare-fun e!476264 () Bool)

(declare-fun mapRes!26060 () Bool)

(assert (=> b!854025 (= e!476263 (and e!476264 mapRes!26060))))

(declare-fun condMapEmpty!26060 () Bool)

(declare-fun mapDefault!26060 () ValueCell!7714)

