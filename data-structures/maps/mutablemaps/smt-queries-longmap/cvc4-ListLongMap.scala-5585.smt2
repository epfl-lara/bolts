; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73326 () Bool)

(assert start!73326)

(declare-fun b_free!14213 () Bool)

(declare-fun b_next!14213 () Bool)

(assert (=> start!73326 (= b_free!14213 (not b_next!14213))))

(declare-fun tp!50143 () Bool)

(declare-fun b_and!23587 () Bool)

(assert (=> start!73326 (= tp!50143 b_and!23587)))

(declare-fun b!854890 () Bool)

(declare-fun res!580679 () Bool)

(declare-fun e!476691 () Bool)

(assert (=> b!854890 (=> (not res!580679) (not e!476691))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26845 0))(
  ( (V!26846 (val!8222 Int)) )
))
(declare-datatypes ((ValueCell!7735 0))(
  ( (ValueCellFull!7735 (v!10643 V!26845)) (EmptyCell!7735) )
))
(declare-datatypes ((array!48876 0))(
  ( (array!48877 (arr!23465 (Array (_ BitVec 32) ValueCell!7735)) (size!23906 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48876)

(declare-datatypes ((array!48878 0))(
  ( (array!48879 (arr!23466 (Array (_ BitVec 32) (_ BitVec 64))) (size!23907 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48878)

(assert (=> b!854890 (= res!580679 (and (= (size!23906 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23907 _keys!868) (size!23906 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854891 () Bool)

(declare-fun res!580683 () Bool)

(assert (=> b!854891 (=> (not res!580683) (not e!476691))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854891 (= res!580683 (validKeyInArray!0 k!854))))

(declare-fun b!854892 () Bool)

(declare-fun e!476689 () Bool)

(declare-fun tp_is_empty!16349 () Bool)

(assert (=> b!854892 (= e!476689 tp_is_empty!16349)))

(declare-fun b!854894 () Bool)

(assert (=> b!854894 (= e!476691 false)))

(declare-datatypes ((tuple2!10826 0))(
  ( (tuple2!10827 (_1!5423 (_ BitVec 64)) (_2!5423 V!26845)) )
))
(declare-datatypes ((List!16700 0))(
  ( (Nil!16697) (Cons!16696 (h!17827 tuple2!10826) (t!23349 List!16700)) )
))
(declare-datatypes ((ListLongMap!9609 0))(
  ( (ListLongMap!9610 (toList!4820 List!16700)) )
))
(declare-fun lt!385572 () ListLongMap!9609)

(declare-fun v!557 () V!26845)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26845)

(declare-fun zeroValue!654 () V!26845)

(declare-fun getCurrentListMapNoExtraKeys!2802 (array!48878 array!48876 (_ BitVec 32) (_ BitVec 32) V!26845 V!26845 (_ BitVec 32) Int) ListLongMap!9609)

(assert (=> b!854894 (= lt!385572 (getCurrentListMapNoExtraKeys!2802 _keys!868 (array!48877 (store (arr!23465 _values!688) i!612 (ValueCellFull!7735 v!557)) (size!23906 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385571 () ListLongMap!9609)

(assert (=> b!854894 (= lt!385571 (getCurrentListMapNoExtraKeys!2802 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854895 () Bool)

(declare-fun e!476687 () Bool)

(assert (=> b!854895 (= e!476687 tp_is_empty!16349)))

(declare-fun b!854896 () Bool)

(declare-fun res!580682 () Bool)

(assert (=> b!854896 (=> (not res!580682) (not e!476691))))

(assert (=> b!854896 (= res!580682 (and (= (select (arr!23466 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26123 () Bool)

(declare-fun mapRes!26123 () Bool)

(declare-fun tp!50144 () Bool)

(assert (=> mapNonEmpty!26123 (= mapRes!26123 (and tp!50144 e!476687))))

(declare-fun mapValue!26123 () ValueCell!7735)

(declare-fun mapKey!26123 () (_ BitVec 32))

(declare-fun mapRest!26123 () (Array (_ BitVec 32) ValueCell!7735))

(assert (=> mapNonEmpty!26123 (= (arr!23465 _values!688) (store mapRest!26123 mapKey!26123 mapValue!26123))))

(declare-fun b!854897 () Bool)

(declare-fun e!476688 () Bool)

(assert (=> b!854897 (= e!476688 (and e!476689 mapRes!26123))))

(declare-fun condMapEmpty!26123 () Bool)

(declare-fun mapDefault!26123 () ValueCell!7735)

