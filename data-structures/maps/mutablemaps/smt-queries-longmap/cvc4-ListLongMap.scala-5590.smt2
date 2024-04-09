; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73356 () Bool)

(assert start!73356)

(declare-fun b_free!14243 () Bool)

(declare-fun b_next!14243 () Bool)

(assert (=> start!73356 (= b_free!14243 (not b_next!14243))))

(declare-fun tp!50233 () Bool)

(declare-fun b_and!23617 () Bool)

(assert (=> start!73356 (= tp!50233 b_and!23617)))

(declare-fun b!855385 () Bool)

(declare-fun res!581040 () Bool)

(declare-fun e!476913 () Bool)

(assert (=> b!855385 (=> (not res!581040) (not e!476913))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48934 0))(
  ( (array!48935 (arr!23494 (Array (_ BitVec 32) (_ BitVec 64))) (size!23935 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48934)

(declare-datatypes ((V!26885 0))(
  ( (V!26886 (val!8237 Int)) )
))
(declare-datatypes ((ValueCell!7750 0))(
  ( (ValueCellFull!7750 (v!10658 V!26885)) (EmptyCell!7750) )
))
(declare-datatypes ((array!48936 0))(
  ( (array!48937 (arr!23495 (Array (_ BitVec 32) ValueCell!7750)) (size!23936 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48936)

(assert (=> b!855385 (= res!581040 (and (= (size!23936 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23935 _keys!868) (size!23936 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!581044 () Bool)

(assert (=> start!73356 (=> (not res!581044) (not e!476913))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73356 (= res!581044 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23935 _keys!868))))))

(assert (=> start!73356 e!476913))

(declare-fun tp_is_empty!16379 () Bool)

(assert (=> start!73356 tp_is_empty!16379))

(assert (=> start!73356 true))

(assert (=> start!73356 tp!50233))

(declare-fun array_inv!18600 (array!48934) Bool)

(assert (=> start!73356 (array_inv!18600 _keys!868)))

(declare-fun e!476912 () Bool)

(declare-fun array_inv!18601 (array!48936) Bool)

(assert (=> start!73356 (and (array_inv!18601 _values!688) e!476912)))

(declare-fun mapIsEmpty!26168 () Bool)

(declare-fun mapRes!26168 () Bool)

(assert (=> mapIsEmpty!26168 mapRes!26168))

(declare-fun b!855386 () Bool)

(declare-fun res!581041 () Bool)

(assert (=> b!855386 (=> (not res!581041) (not e!476913))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855386 (= res!581041 (validKeyInArray!0 k!854))))

(declare-fun b!855387 () Bool)

(declare-fun res!581039 () Bool)

(assert (=> b!855387 (=> (not res!581039) (not e!476913))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855387 (= res!581039 (and (= (select (arr!23494 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!855388 () Bool)

(declare-fun res!581042 () Bool)

(assert (=> b!855388 (=> (not res!581042) (not e!476913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855388 (= res!581042 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26168 () Bool)

(declare-fun tp!50234 () Bool)

(declare-fun e!476916 () Bool)

(assert (=> mapNonEmpty!26168 (= mapRes!26168 (and tp!50234 e!476916))))

(declare-fun mapRest!26168 () (Array (_ BitVec 32) ValueCell!7750))

(declare-fun mapValue!26168 () ValueCell!7750)

(declare-fun mapKey!26168 () (_ BitVec 32))

(assert (=> mapNonEmpty!26168 (= (arr!23495 _values!688) (store mapRest!26168 mapKey!26168 mapValue!26168))))

(declare-fun b!855389 () Bool)

(assert (=> b!855389 (= e!476916 tp_is_empty!16379)))

(declare-fun b!855390 () Bool)

(declare-fun res!581043 () Bool)

(assert (=> b!855390 (=> (not res!581043) (not e!476913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48934 (_ BitVec 32)) Bool)

(assert (=> b!855390 (= res!581043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855391 () Bool)

(assert (=> b!855391 (= e!476913 false)))

(declare-fun v!557 () V!26885)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26885)

(declare-fun zeroValue!654 () V!26885)

(declare-datatypes ((tuple2!10844 0))(
  ( (tuple2!10845 (_1!5432 (_ BitVec 64)) (_2!5432 V!26885)) )
))
(declare-datatypes ((List!16719 0))(
  ( (Nil!16716) (Cons!16715 (h!17846 tuple2!10844) (t!23368 List!16719)) )
))
(declare-datatypes ((ListLongMap!9627 0))(
  ( (ListLongMap!9628 (toList!4829 List!16719)) )
))
(declare-fun lt!385662 () ListLongMap!9627)

(declare-fun getCurrentListMapNoExtraKeys!2811 (array!48934 array!48936 (_ BitVec 32) (_ BitVec 32) V!26885 V!26885 (_ BitVec 32) Int) ListLongMap!9627)

(assert (=> b!855391 (= lt!385662 (getCurrentListMapNoExtraKeys!2811 _keys!868 (array!48937 (store (arr!23495 _values!688) i!612 (ValueCellFull!7750 v!557)) (size!23936 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385661 () ListLongMap!9627)

(assert (=> b!855391 (= lt!385661 (getCurrentListMapNoExtraKeys!2811 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855392 () Bool)

(declare-fun res!581045 () Bool)

(assert (=> b!855392 (=> (not res!581045) (not e!476913))))

(declare-datatypes ((List!16720 0))(
  ( (Nil!16717) (Cons!16716 (h!17847 (_ BitVec 64)) (t!23369 List!16720)) )
))
(declare-fun arrayNoDuplicates!0 (array!48934 (_ BitVec 32) List!16720) Bool)

(assert (=> b!855392 (= res!581045 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16717))))

(declare-fun b!855393 () Bool)

(declare-fun res!581046 () Bool)

(assert (=> b!855393 (=> (not res!581046) (not e!476913))))

(assert (=> b!855393 (= res!581046 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23935 _keys!868))))))

(declare-fun b!855394 () Bool)

(declare-fun e!476914 () Bool)

(assert (=> b!855394 (= e!476914 tp_is_empty!16379)))

(declare-fun b!855395 () Bool)

(assert (=> b!855395 (= e!476912 (and e!476914 mapRes!26168))))

(declare-fun condMapEmpty!26168 () Bool)

(declare-fun mapDefault!26168 () ValueCell!7750)

