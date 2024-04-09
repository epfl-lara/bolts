; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74846 () Bool)

(assert start!74846)

(declare-fun b_free!15395 () Bool)

(declare-fun b_next!15395 () Bool)

(assert (=> start!74846 (= b_free!15395 (not b_next!15395))))

(declare-fun tp!53883 () Bool)

(declare-fun b_and!25475 () Bool)

(assert (=> start!74846 (= tp!53883 b_and!25475)))

(declare-fun res!599318 () Bool)

(declare-fun e!490874 () Bool)

(assert (=> start!74846 (=> (not res!599318) (not e!490874))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51386 0))(
  ( (array!51387 (arr!24710 (Array (_ BitVec 32) (_ BitVec 64))) (size!25151 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51386)

(assert (=> start!74846 (= res!599318 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25151 _keys!868))))))

(assert (=> start!74846 e!490874))

(declare-fun tp_is_empty!17639 () Bool)

(assert (=> start!74846 tp_is_empty!17639))

(assert (=> start!74846 true))

(assert (=> start!74846 tp!53883))

(declare-fun array_inv!19446 (array!51386) Bool)

(assert (=> start!74846 (array_inv!19446 _keys!868)))

(declare-datatypes ((V!28565 0))(
  ( (V!28566 (val!8867 Int)) )
))
(declare-datatypes ((ValueCell!8380 0))(
  ( (ValueCellFull!8380 (v!11323 V!28565)) (EmptyCell!8380) )
))
(declare-datatypes ((array!51388 0))(
  ( (array!51389 (arr!24711 (Array (_ BitVec 32) ValueCell!8380)) (size!25152 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51388)

(declare-fun e!490872 () Bool)

(declare-fun array_inv!19447 (array!51388) Bool)

(assert (=> start!74846 (and (array_inv!19447 _values!688) e!490872)))

(declare-fun b!881978 () Bool)

(declare-fun e!490875 () Bool)

(assert (=> b!881978 (= e!490875 tp_is_empty!17639)))

(declare-fun b!881979 () Bool)

(declare-fun res!599316 () Bool)

(assert (=> b!881979 (=> (not res!599316) (not e!490874))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881979 (= res!599316 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25151 _keys!868))))))

(declare-fun mapIsEmpty!28089 () Bool)

(declare-fun mapRes!28089 () Bool)

(assert (=> mapIsEmpty!28089 mapRes!28089))

(declare-fun b!881980 () Bool)

(declare-fun e!490871 () Bool)

(assert (=> b!881980 (= e!490872 (and e!490871 mapRes!28089))))

(declare-fun condMapEmpty!28089 () Bool)

(declare-fun mapDefault!28089 () ValueCell!8380)

