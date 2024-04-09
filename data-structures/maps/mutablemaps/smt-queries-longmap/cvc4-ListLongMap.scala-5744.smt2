; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74324 () Bool)

(assert start!74324)

(declare-fun b_free!15059 () Bool)

(declare-fun b_next!15059 () Bool)

(assert (=> start!74324 (= b_free!15059 (not b_next!15059))))

(declare-fun tp!52852 () Bool)

(declare-fun b_and!24853 () Bool)

(assert (=> start!74324 (= tp!52852 b_and!24853)))

(declare-fun b!873998 () Bool)

(declare-fun res!594052 () Bool)

(declare-fun e!486685 () Bool)

(assert (=> b!873998 (=> (not res!594052) (not e!486685))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50720 0))(
  ( (array!50721 (arr!24384 (Array (_ BitVec 32) (_ BitVec 64))) (size!24825 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50720)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873998 (= res!594052 (and (= (select (arr!24384 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873999 () Bool)

(declare-fun e!486687 () Bool)

(declare-fun tp_is_empty!17303 () Bool)

(assert (=> b!873999 (= e!486687 tp_is_empty!17303)))

(declare-fun b!874000 () Bool)

(declare-fun res!594051 () Bool)

(assert (=> b!874000 (=> (not res!594051) (not e!486685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874000 (= res!594051 (validKeyInArray!0 k!854))))

(declare-fun b!874001 () Bool)

(declare-fun res!594048 () Bool)

(assert (=> b!874001 (=> (not res!594048) (not e!486685))))

(assert (=> b!874001 (= res!594048 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24825 _keys!868))))))

(declare-fun b!874002 () Bool)

(declare-fun res!594053 () Bool)

(assert (=> b!874002 (=> (not res!594053) (not e!486685))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28117 0))(
  ( (V!28118 (val!8699 Int)) )
))
(declare-datatypes ((ValueCell!8212 0))(
  ( (ValueCellFull!8212 (v!11124 V!28117)) (EmptyCell!8212) )
))
(declare-datatypes ((array!50722 0))(
  ( (array!50723 (arr!24385 (Array (_ BitVec 32) ValueCell!8212)) (size!24826 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50722)

(assert (=> b!874002 (= res!594053 (and (= (size!24826 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24825 _keys!868) (size!24826 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874003 () Bool)

(declare-fun e!486684 () Bool)

(assert (=> b!874003 (= e!486684 tp_is_empty!17303)))

(declare-fun b!874004 () Bool)

(declare-fun res!594055 () Bool)

(assert (=> b!874004 (=> (not res!594055) (not e!486685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874004 (= res!594055 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27563 () Bool)

(declare-fun mapRes!27563 () Bool)

(assert (=> mapIsEmpty!27563 mapRes!27563))

(declare-fun b!874005 () Bool)

(assert (=> b!874005 (= e!486685 false)))

(declare-datatypes ((tuple2!11492 0))(
  ( (tuple2!11493 (_1!5756 (_ BitVec 64)) (_2!5756 V!28117)) )
))
(declare-datatypes ((List!17380 0))(
  ( (Nil!17377) (Cons!17376 (h!18507 tuple2!11492) (t!24429 List!17380)) )
))
(declare-datatypes ((ListLongMap!10275 0))(
  ( (ListLongMap!10276 (toList!5153 List!17380)) )
))
(declare-fun lt!395836 () ListLongMap!10275)

(declare-fun v!557 () V!28117)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28117)

(declare-fun zeroValue!654 () V!28117)

(declare-fun getCurrentListMapNoExtraKeys!3117 (array!50720 array!50722 (_ BitVec 32) (_ BitVec 32) V!28117 V!28117 (_ BitVec 32) Int) ListLongMap!10275)

(assert (=> b!874005 (= lt!395836 (getCurrentListMapNoExtraKeys!3117 _keys!868 (array!50723 (store (arr!24385 _values!688) i!612 (ValueCellFull!8212 v!557)) (size!24826 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395835 () ListLongMap!10275)

(assert (=> b!874005 (= lt!395835 (getCurrentListMapNoExtraKeys!3117 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874006 () Bool)

(declare-fun e!486688 () Bool)

(assert (=> b!874006 (= e!486688 (and e!486684 mapRes!27563))))

(declare-fun condMapEmpty!27563 () Bool)

(declare-fun mapDefault!27563 () ValueCell!8212)

