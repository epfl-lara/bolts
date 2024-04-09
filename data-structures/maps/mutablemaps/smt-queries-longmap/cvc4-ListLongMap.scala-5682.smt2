; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73908 () Bool)

(assert start!73908)

(declare-fun b_free!14795 () Bool)

(declare-fun b_next!14795 () Bool)

(assert (=> start!73908 (= b_free!14795 (not b_next!14795))))

(declare-fun tp!51889 () Bool)

(declare-fun b_and!24565 () Bool)

(assert (=> start!73908 (= tp!51889 b_and!24565)))

(declare-fun mapIsEmpty!26996 () Bool)

(declare-fun mapRes!26996 () Bool)

(assert (=> mapIsEmpty!26996 mapRes!26996))

(declare-fun b!867813 () Bool)

(declare-fun res!589765 () Bool)

(declare-fun e!483404 () Bool)

(assert (=> b!867813 (=> (not res!589765) (not e!483404))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867813 (= res!589765 (validMask!0 mask!1196))))

(declare-fun b!867814 () Bool)

(declare-fun e!483402 () Bool)

(assert (=> b!867814 (= e!483404 e!483402)))

(declare-fun res!589767 () Bool)

(assert (=> b!867814 (=> (not res!589767) (not e!483402))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867814 (= res!589767 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27621 0))(
  ( (V!27622 (val!8513 Int)) )
))
(declare-datatypes ((ValueCell!8026 0))(
  ( (ValueCellFull!8026 (v!10934 V!27621)) (EmptyCell!8026) )
))
(declare-datatypes ((array!50000 0))(
  ( (array!50001 (arr!24027 (Array (_ BitVec 32) ValueCell!8026)) (size!24468 (_ BitVec 32))) )
))
(declare-fun lt!394254 () array!50000)

(declare-fun minValue!654 () V!27621)

(declare-fun zeroValue!654 () V!27621)

(declare-datatypes ((tuple2!11302 0))(
  ( (tuple2!11303 (_1!5661 (_ BitVec 64)) (_2!5661 V!27621)) )
))
(declare-datatypes ((List!17162 0))(
  ( (Nil!17159) (Cons!17158 (h!18289 tuple2!11302) (t!24207 List!17162)) )
))
(declare-datatypes ((ListLongMap!10085 0))(
  ( (ListLongMap!10086 (toList!5058 List!17162)) )
))
(declare-fun lt!394256 () ListLongMap!10085)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((array!50002 0))(
  ( (array!50003 (arr!24028 (Array (_ BitVec 32) (_ BitVec 64))) (size!24469 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50002)

(declare-fun getCurrentListMapNoExtraKeys!3022 (array!50002 array!50000 (_ BitVec 32) (_ BitVec 32) V!27621 V!27621 (_ BitVec 32) Int) ListLongMap!10085)

(assert (=> b!867814 (= lt!394256 (getCurrentListMapNoExtraKeys!3022 _keys!868 lt!394254 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27621)

(declare-fun _values!688 () array!50000)

(assert (=> b!867814 (= lt!394254 (array!50001 (store (arr!24027 _values!688) i!612 (ValueCellFull!8026 v!557)) (size!24468 _values!688)))))

(declare-fun lt!394255 () ListLongMap!10085)

(assert (=> b!867814 (= lt!394255 (getCurrentListMapNoExtraKeys!3022 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!589763 () Bool)

(assert (=> start!73908 (=> (not res!589763) (not e!483404))))

(assert (=> start!73908 (= res!589763 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24469 _keys!868))))))

(assert (=> start!73908 e!483404))

(declare-fun tp_is_empty!16931 () Bool)

(assert (=> start!73908 tp_is_empty!16931))

(assert (=> start!73908 true))

(assert (=> start!73908 tp!51889))

(declare-fun array_inv!18962 (array!50002) Bool)

(assert (=> start!73908 (array_inv!18962 _keys!868)))

(declare-fun e!483400 () Bool)

(declare-fun array_inv!18963 (array!50000) Bool)

(assert (=> start!73908 (and (array_inv!18963 _values!688) e!483400)))

(declare-fun b!867815 () Bool)

(declare-fun res!589766 () Bool)

(assert (=> b!867815 (=> (not res!589766) (not e!483404))))

(assert (=> b!867815 (= res!589766 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24469 _keys!868))))))

(declare-fun b!867816 () Bool)

(declare-fun res!589760 () Bool)

(assert (=> b!867816 (=> (not res!589760) (not e!483404))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!867816 (= res!589760 (and (= (select (arr!24028 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!867817 () Bool)

(declare-fun res!589762 () Bool)

(assert (=> b!867817 (=> (not res!589762) (not e!483404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50002 (_ BitVec 32)) Bool)

(assert (=> b!867817 (= res!589762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867818 () Bool)

(declare-fun e!483403 () Bool)

(assert (=> b!867818 (= e!483403 tp_is_empty!16931)))

(declare-fun b!867819 () Bool)

(declare-fun e!483405 () Bool)

(assert (=> b!867819 (= e!483400 (and e!483405 mapRes!26996))))

(declare-fun condMapEmpty!26996 () Bool)

(declare-fun mapDefault!26996 () ValueCell!8026)

