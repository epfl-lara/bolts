; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73812 () Bool)

(assert start!73812)

(declare-fun b_free!14699 () Bool)

(declare-fun b_next!14699 () Bool)

(assert (=> start!73812 (= b_free!14699 (not b_next!14699))))

(declare-fun tp!51601 () Bool)

(declare-fun b_and!24395 () Bool)

(assert (=> start!73812 (= tp!51601 b_and!24395)))

(declare-fun b!865575 () Bool)

(declare-datatypes ((Unit!29630 0))(
  ( (Unit!29631) )
))
(declare-fun e!482215 () Unit!29630)

(declare-fun Unit!29632 () Unit!29630)

(assert (=> b!865575 (= e!482215 Unit!29632)))

(declare-fun lt!392374 () Unit!29630)

(declare-datatypes ((array!49814 0))(
  ( (array!49815 (arr!23934 (Array (_ BitVec 32) (_ BitVec 64))) (size!24375 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49814)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49814 (_ BitVec 32) (_ BitVec 32)) Unit!29630)

(assert (=> b!865575 (= lt!392374 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17088 0))(
  ( (Nil!17085) (Cons!17084 (h!18215 (_ BitVec 64)) (t!24061 List!17088)) )
))
(declare-fun arrayNoDuplicates!0 (array!49814 (_ BitVec 32) List!17088) Bool)

(assert (=> b!865575 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17085)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!392380 () Unit!29630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49814 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29630)

(assert (=> b!865575 (= lt!392380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865575 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392376 () Unit!29630)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49814 (_ BitVec 64) (_ BitVec 32) List!17088) Unit!29630)

(assert (=> b!865575 (= lt!392376 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17085))))

(assert (=> b!865575 false))

(declare-fun b!865576 () Bool)

(declare-fun e!482209 () Bool)

(declare-fun e!482210 () Bool)

(declare-fun mapRes!26852 () Bool)

(assert (=> b!865576 (= e!482209 (and e!482210 mapRes!26852))))

(declare-fun condMapEmpty!26852 () Bool)

(declare-datatypes ((V!27493 0))(
  ( (V!27494 (val!8465 Int)) )
))
(declare-datatypes ((ValueCell!7978 0))(
  ( (ValueCellFull!7978 (v!10886 V!27493)) (EmptyCell!7978) )
))
(declare-datatypes ((array!49816 0))(
  ( (array!49817 (arr!23935 (Array (_ BitVec 32) ValueCell!7978)) (size!24376 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49816)

(declare-fun mapDefault!26852 () ValueCell!7978)

