; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73400 () Bool)

(assert start!73400)

(declare-fun b_free!14287 () Bool)

(declare-fun b_next!14287 () Bool)

(assert (=> start!73400 (= b_free!14287 (not b_next!14287))))

(declare-fun tp!50366 () Bool)

(declare-fun b_and!23661 () Bool)

(assert (=> start!73400 (= tp!50366 b_and!23661)))

(declare-fun b!856140 () Bool)

(declare-fun res!581596 () Bool)

(declare-fun e!477274 () Bool)

(assert (=> b!856140 (=> (not res!581596) (not e!477274))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49016 0))(
  ( (array!49017 (arr!23535 (Array (_ BitVec 32) (_ BitVec 64))) (size!23976 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49016)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!856140 (= res!581596 (and (= (select (arr!23535 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26234 () Bool)

(declare-fun mapRes!26234 () Bool)

(declare-fun tp!50365 () Bool)

(declare-fun e!477273 () Bool)

(assert (=> mapNonEmpty!26234 (= mapRes!26234 (and tp!50365 e!477273))))

(declare-datatypes ((V!26945 0))(
  ( (V!26946 (val!8259 Int)) )
))
(declare-datatypes ((ValueCell!7772 0))(
  ( (ValueCellFull!7772 (v!10680 V!26945)) (EmptyCell!7772) )
))
(declare-fun mapValue!26234 () ValueCell!7772)

(declare-fun mapRest!26234 () (Array (_ BitVec 32) ValueCell!7772))

(declare-fun mapKey!26234 () (_ BitVec 32))

(declare-datatypes ((array!49018 0))(
  ( (array!49019 (arr!23536 (Array (_ BitVec 32) ValueCell!7772)) (size!23977 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49018)

(assert (=> mapNonEmpty!26234 (= (arr!23536 _values!688) (store mapRest!26234 mapKey!26234 mapValue!26234))))

(declare-fun b!856141 () Bool)

(declare-fun res!581598 () Bool)

(assert (=> b!856141 (=> (not res!581598) (not e!477274))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!856141 (= res!581598 (and (= (size!23977 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23976 _keys!868) (size!23977 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856142 () Bool)

(declare-fun e!477275 () Bool)

(assert (=> b!856142 (= e!477274 e!477275)))

(declare-fun res!581599 () Bool)

(assert (=> b!856142 (=> (not res!581599) (not e!477275))))

(assert (=> b!856142 (= res!581599 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385853 () array!49018)

(declare-datatypes ((tuple2!10876 0))(
  ( (tuple2!10877 (_1!5448 (_ BitVec 64)) (_2!5448 V!26945)) )
))
(declare-datatypes ((List!16750 0))(
  ( (Nil!16747) (Cons!16746 (h!17877 tuple2!10876) (t!23399 List!16750)) )
))
(declare-datatypes ((ListLongMap!9659 0))(
  ( (ListLongMap!9660 (toList!4845 List!16750)) )
))
(declare-fun lt!385854 () ListLongMap!9659)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26945)

(declare-fun zeroValue!654 () V!26945)

(declare-fun getCurrentListMapNoExtraKeys!2827 (array!49016 array!49018 (_ BitVec 32) (_ BitVec 32) V!26945 V!26945 (_ BitVec 32) Int) ListLongMap!9659)

(assert (=> b!856142 (= lt!385854 (getCurrentListMapNoExtraKeys!2827 _keys!868 lt!385853 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26945)

(assert (=> b!856142 (= lt!385853 (array!49019 (store (arr!23536 _values!688) i!612 (ValueCellFull!7772 v!557)) (size!23977 _values!688)))))

(declare-fun lt!385852 () ListLongMap!9659)

(assert (=> b!856142 (= lt!385852 (getCurrentListMapNoExtraKeys!2827 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856143 () Bool)

(declare-fun tp_is_empty!16423 () Bool)

(assert (=> b!856143 (= e!477273 tp_is_empty!16423)))

(declare-fun res!581601 () Bool)

(assert (=> start!73400 (=> (not res!581601) (not e!477274))))

(assert (=> start!73400 (= res!581601 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23976 _keys!868))))))

(assert (=> start!73400 e!477274))

(assert (=> start!73400 tp_is_empty!16423))

(assert (=> start!73400 true))

(assert (=> start!73400 tp!50366))

(declare-fun array_inv!18628 (array!49016) Bool)

(assert (=> start!73400 (array_inv!18628 _keys!868)))

(declare-fun e!477276 () Bool)

(declare-fun array_inv!18629 (array!49018) Bool)

(assert (=> start!73400 (and (array_inv!18629 _values!688) e!477276)))

(declare-fun b!856144 () Bool)

(declare-fun res!581604 () Bool)

(assert (=> b!856144 (=> (not res!581604) (not e!477274))))

(declare-datatypes ((List!16751 0))(
  ( (Nil!16748) (Cons!16747 (h!17878 (_ BitVec 64)) (t!23400 List!16751)) )
))
(declare-fun arrayNoDuplicates!0 (array!49016 (_ BitVec 32) List!16751) Bool)

(assert (=> b!856144 (= res!581604 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16748))))

(declare-fun b!856145 () Bool)

(declare-fun res!581603 () Bool)

(assert (=> b!856145 (=> (not res!581603) (not e!477274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49016 (_ BitVec 32)) Bool)

(assert (=> b!856145 (= res!581603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26234 () Bool)

(assert (=> mapIsEmpty!26234 mapRes!26234))

(declare-fun b!856146 () Bool)

(declare-fun res!581602 () Bool)

(assert (=> b!856146 (=> (not res!581602) (not e!477274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856146 (= res!581602 (validMask!0 mask!1196))))

(declare-fun b!856147 () Bool)

(declare-fun res!581600 () Bool)

(assert (=> b!856147 (=> (not res!581600) (not e!477274))))

(assert (=> b!856147 (= res!581600 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23976 _keys!868))))))

(declare-fun b!856148 () Bool)

(declare-fun e!477271 () Bool)

(assert (=> b!856148 (= e!477276 (and e!477271 mapRes!26234))))

(declare-fun condMapEmpty!26234 () Bool)

(declare-fun mapDefault!26234 () ValueCell!7772)

