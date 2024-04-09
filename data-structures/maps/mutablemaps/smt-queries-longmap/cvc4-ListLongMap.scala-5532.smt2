; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73008 () Bool)

(assert start!73008)

(declare-fun b_free!13895 () Bool)

(declare-fun b_next!13895 () Bool)

(assert (=> start!73008 (= b_free!13895 (not b_next!13895))))

(declare-fun tp!49190 () Bool)

(declare-fun b_and!22999 () Bool)

(assert (=> start!73008 (= tp!49190 b_and!22999)))

(declare-fun b!847606 () Bool)

(declare-fun res!575999 () Bool)

(declare-fun e!472990 () Bool)

(assert (=> b!847606 (=> (not res!575999) (not e!472990))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48254 0))(
  ( (array!48255 (arr!23154 (Array (_ BitVec 32) (_ BitVec 64))) (size!23595 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48254)

(assert (=> b!847606 (= res!575999 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23595 _keys!868))))))

(declare-fun b!847607 () Bool)

(declare-fun e!472986 () Bool)

(assert (=> b!847607 (= e!472990 e!472986)))

(declare-fun res!576001 () Bool)

(assert (=> b!847607 (=> (not res!576001) (not e!472986))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847607 (= res!576001 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26421 0))(
  ( (V!26422 (val!8063 Int)) )
))
(declare-datatypes ((tuple2!10548 0))(
  ( (tuple2!10549 (_1!5284 (_ BitVec 64)) (_2!5284 V!26421)) )
))
(declare-datatypes ((List!16460 0))(
  ( (Nil!16457) (Cons!16456 (h!17587 tuple2!10548) (t!22839 List!16460)) )
))
(declare-datatypes ((ListLongMap!9331 0))(
  ( (ListLongMap!9332 (toList!4681 List!16460)) )
))
(declare-fun lt!381771 () ListLongMap!9331)

(declare-datatypes ((ValueCell!7576 0))(
  ( (ValueCellFull!7576 (v!10484 V!26421)) (EmptyCell!7576) )
))
(declare-datatypes ((array!48256 0))(
  ( (array!48257 (arr!23155 (Array (_ BitVec 32) ValueCell!7576)) (size!23596 (_ BitVec 32))) )
))
(declare-fun lt!381774 () array!48256)

(declare-fun minValue!654 () V!26421)

(declare-fun zeroValue!654 () V!26421)

(declare-fun getCurrentListMapNoExtraKeys!2670 (array!48254 array!48256 (_ BitVec 32) (_ BitVec 32) V!26421 V!26421 (_ BitVec 32) Int) ListLongMap!9331)

(assert (=> b!847607 (= lt!381771 (getCurrentListMapNoExtraKeys!2670 _keys!868 lt!381774 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26421)

(declare-fun _values!688 () array!48256)

(assert (=> b!847607 (= lt!381774 (array!48257 (store (arr!23155 _values!688) i!612 (ValueCellFull!7576 v!557)) (size!23596 _values!688)))))

(declare-fun lt!381773 () ListLongMap!9331)

(assert (=> b!847607 (= lt!381773 (getCurrentListMapNoExtraKeys!2670 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847608 () Bool)

(declare-fun e!472988 () Bool)

(declare-fun e!472992 () Bool)

(declare-fun mapRes!25646 () Bool)

(assert (=> b!847608 (= e!472988 (and e!472992 mapRes!25646))))

(declare-fun condMapEmpty!25646 () Bool)

(declare-fun mapDefault!25646 () ValueCell!7576)

