; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73796 () Bool)

(assert start!73796)

(declare-fun b_free!14683 () Bool)

(declare-fun b_next!14683 () Bool)

(assert (=> start!73796 (= b_free!14683 (not b_next!14683))))

(declare-fun tp!51554 () Bool)

(declare-fun b_and!24363 () Bool)

(assert (=> start!73796 (= tp!51554 b_and!24363)))

(declare-fun b!865175 () Bool)

(declare-fun res!587985 () Bool)

(declare-fun e!482000 () Bool)

(assert (=> b!865175 (=> (not res!587985) (not e!482000))))

(declare-datatypes ((array!49782 0))(
  ( (array!49783 (arr!23918 (Array (_ BitVec 32) (_ BitVec 64))) (size!24359 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49782)

(declare-datatypes ((List!17073 0))(
  ( (Nil!17070) (Cons!17069 (h!18200 (_ BitVec 64)) (t!24030 List!17073)) )
))
(declare-fun arrayNoDuplicates!0 (array!49782 (_ BitVec 32) List!17073) Bool)

(assert (=> b!865175 (= res!587985 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17070))))

(declare-fun b!865176 () Bool)

(declare-fun res!587987 () Bool)

(assert (=> b!865176 (=> (not res!587987) (not e!482000))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49782 (_ BitVec 32)) Bool)

(assert (=> b!865176 (= res!587987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26828 () Bool)

(declare-fun mapRes!26828 () Bool)

(assert (=> mapIsEmpty!26828 mapRes!26828))

(declare-fun b!865177 () Bool)

(declare-datatypes ((Unit!29600 0))(
  ( (Unit!29601) )
))
(declare-fun e!481998 () Unit!29600)

(declare-fun Unit!29602 () Unit!29600)

(assert (=> b!865177 (= e!481998 Unit!29602)))

(declare-fun lt!391998 () Unit!29600)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49782 (_ BitVec 32) (_ BitVec 32)) Unit!29600)

(assert (=> b!865177 (= lt!391998 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865177 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17070)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!391995 () Unit!29600)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49782 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29600)

(assert (=> b!865177 (= lt!391995 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865177 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391999 () Unit!29600)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49782 (_ BitVec 64) (_ BitVec 32) List!17073) Unit!29600)

(assert (=> b!865177 (= lt!391999 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17070))))

(assert (=> b!865177 false))

(declare-fun b!865178 () Bool)

(declare-fun Unit!29603 () Unit!29600)

(assert (=> b!865178 (= e!481998 Unit!29603)))

(declare-fun b!865179 () Bool)

(declare-fun e!481994 () Bool)

(declare-fun e!481997 () Bool)

(assert (=> b!865179 (= e!481994 (and e!481997 mapRes!26828))))

(declare-fun condMapEmpty!26828 () Bool)

(declare-datatypes ((V!27473 0))(
  ( (V!27474 (val!8457 Int)) )
))
(declare-datatypes ((ValueCell!7970 0))(
  ( (ValueCellFull!7970 (v!10878 V!27473)) (EmptyCell!7970) )
))
(declare-datatypes ((array!49784 0))(
  ( (array!49785 (arr!23919 (Array (_ BitVec 32) ValueCell!7970)) (size!24360 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49784)

(declare-fun mapDefault!26828 () ValueCell!7970)

