; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73310 () Bool)

(assert start!73310)

(declare-fun b_free!14197 () Bool)

(declare-fun b_next!14197 () Bool)

(assert (=> start!73310 (= b_free!14197 (not b_next!14197))))

(declare-fun tp!50095 () Bool)

(declare-fun b_and!23571 () Bool)

(assert (=> start!73310 (= tp!50095 b_and!23571)))

(declare-fun b!854626 () Bool)

(declare-fun e!476571 () Bool)

(declare-fun tp_is_empty!16333 () Bool)

(assert (=> b!854626 (= e!476571 tp_is_empty!16333)))

(declare-fun b!854627 () Bool)

(declare-fun e!476568 () Bool)

(assert (=> b!854627 (= e!476568 tp_is_empty!16333)))

(declare-fun res!580487 () Bool)

(declare-fun e!476569 () Bool)

(assert (=> start!73310 (=> (not res!580487) (not e!476569))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48846 0))(
  ( (array!48847 (arr!23450 (Array (_ BitVec 32) (_ BitVec 64))) (size!23891 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48846)

(assert (=> start!73310 (= res!580487 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23891 _keys!868))))))

(assert (=> start!73310 e!476569))

(assert (=> start!73310 tp_is_empty!16333))

(assert (=> start!73310 true))

(assert (=> start!73310 tp!50095))

(declare-fun array_inv!18566 (array!48846) Bool)

(assert (=> start!73310 (array_inv!18566 _keys!868)))

(declare-datatypes ((V!26825 0))(
  ( (V!26826 (val!8214 Int)) )
))
(declare-datatypes ((ValueCell!7727 0))(
  ( (ValueCellFull!7727 (v!10635 V!26825)) (EmptyCell!7727) )
))
(declare-datatypes ((array!48848 0))(
  ( (array!48849 (arr!23451 (Array (_ BitVec 32) ValueCell!7727)) (size!23892 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48848)

(declare-fun e!476567 () Bool)

(declare-fun array_inv!18567 (array!48848) Bool)

(assert (=> start!73310 (and (array_inv!18567 _values!688) e!476567)))

(declare-fun mapIsEmpty!26099 () Bool)

(declare-fun mapRes!26099 () Bool)

(assert (=> mapIsEmpty!26099 mapRes!26099))

(declare-fun b!854628 () Bool)

(assert (=> b!854628 (= e!476567 (and e!476571 mapRes!26099))))

(declare-fun condMapEmpty!26099 () Bool)

(declare-fun mapDefault!26099 () ValueCell!7727)

