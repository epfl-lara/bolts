; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73362 () Bool)

(assert start!73362)

(declare-fun b_free!14249 () Bool)

(declare-fun b_next!14249 () Bool)

(assert (=> start!73362 (= b_free!14249 (not b_next!14249))))

(declare-fun tp!50252 () Bool)

(declare-fun b_and!23623 () Bool)

(assert (=> start!73362 (= tp!50252 b_and!23623)))

(declare-fun b!855484 () Bool)

(declare-fun res!581115 () Bool)

(declare-fun e!476957 () Bool)

(assert (=> b!855484 (=> (not res!581115) (not e!476957))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48946 0))(
  ( (array!48947 (arr!23500 (Array (_ BitVec 32) (_ BitVec 64))) (size!23941 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48946)

(declare-datatypes ((V!26893 0))(
  ( (V!26894 (val!8240 Int)) )
))
(declare-datatypes ((ValueCell!7753 0))(
  ( (ValueCellFull!7753 (v!10661 V!26893)) (EmptyCell!7753) )
))
(declare-datatypes ((array!48948 0))(
  ( (array!48949 (arr!23501 (Array (_ BitVec 32) ValueCell!7753)) (size!23942 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48948)

(assert (=> b!855484 (= res!581115 (and (= (size!23942 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23941 _keys!868) (size!23942 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855485 () Bool)

(declare-fun res!581116 () Bool)

(assert (=> b!855485 (=> (not res!581116) (not e!476957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48946 (_ BitVec 32)) Bool)

(assert (=> b!855485 (= res!581116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855486 () Bool)

(assert (=> b!855486 (= e!476957 false)))

(declare-datatypes ((tuple2!10850 0))(
  ( (tuple2!10851 (_1!5435 (_ BitVec 64)) (_2!5435 V!26893)) )
))
(declare-datatypes ((List!16725 0))(
  ( (Nil!16722) (Cons!16721 (h!17852 tuple2!10850) (t!23374 List!16725)) )
))
(declare-datatypes ((ListLongMap!9633 0))(
  ( (ListLongMap!9634 (toList!4832 List!16725)) )
))
(declare-fun lt!385680 () ListLongMap!9633)

(declare-fun v!557 () V!26893)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26893)

(declare-fun zeroValue!654 () V!26893)

(declare-fun getCurrentListMapNoExtraKeys!2814 (array!48946 array!48948 (_ BitVec 32) (_ BitVec 32) V!26893 V!26893 (_ BitVec 32) Int) ListLongMap!9633)

(assert (=> b!855486 (= lt!385680 (getCurrentListMapNoExtraKeys!2814 _keys!868 (array!48949 (store (arr!23501 _values!688) i!612 (ValueCellFull!7753 v!557)) (size!23942 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385679 () ListLongMap!9633)

(assert (=> b!855486 (= lt!385679 (getCurrentListMapNoExtraKeys!2814 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855487 () Bool)

(declare-fun e!476958 () Bool)

(declare-fun tp_is_empty!16385 () Bool)

(assert (=> b!855487 (= e!476958 tp_is_empty!16385)))

(declare-fun b!855488 () Bool)

(declare-fun res!581111 () Bool)

(assert (=> b!855488 (=> (not res!581111) (not e!476957))))

(declare-datatypes ((List!16726 0))(
  ( (Nil!16723) (Cons!16722 (h!17853 (_ BitVec 64)) (t!23375 List!16726)) )
))
(declare-fun arrayNoDuplicates!0 (array!48946 (_ BitVec 32) List!16726) Bool)

(assert (=> b!855488 (= res!581111 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16723))))

(declare-fun mapIsEmpty!26177 () Bool)

(declare-fun mapRes!26177 () Bool)

(assert (=> mapIsEmpty!26177 mapRes!26177))

(declare-fun res!581114 () Bool)

(assert (=> start!73362 (=> (not res!581114) (not e!476957))))

(assert (=> start!73362 (= res!581114 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23941 _keys!868))))))

(assert (=> start!73362 e!476957))

(assert (=> start!73362 tp_is_empty!16385))

(assert (=> start!73362 true))

(assert (=> start!73362 tp!50252))

(declare-fun array_inv!18606 (array!48946) Bool)

(assert (=> start!73362 (array_inv!18606 _keys!868)))

(declare-fun e!476961 () Bool)

(declare-fun array_inv!18607 (array!48948) Bool)

(assert (=> start!73362 (and (array_inv!18607 _values!688) e!476961)))

(declare-fun b!855489 () Bool)

(declare-fun e!476960 () Bool)

(assert (=> b!855489 (= e!476961 (and e!476960 mapRes!26177))))

(declare-fun condMapEmpty!26177 () Bool)

(declare-fun mapDefault!26177 () ValueCell!7753)

