; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72410 () Bool)

(assert start!72410)

(declare-fun b_free!13567 () Bool)

(declare-fun b_next!13567 () Bool)

(assert (=> start!72410 (= b_free!13567 (not b_next!13567))))

(declare-fun tp!47801 () Bool)

(declare-fun b_and!22671 () Bool)

(assert (=> start!72410 (= tp!47801 b_and!22671)))

(declare-fun b!838718 () Bool)

(declare-fun e!468166 () Bool)

(assert (=> b!838718 (= e!468166 (not true))))

(declare-fun e!468168 () Bool)

(assert (=> b!838718 e!468168))

(declare-fun c!91128 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838718 (= c!91128 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25625 0))(
  ( (V!25626 (val!7764 Int)) )
))
(declare-fun v!557 () V!25625)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28798 0))(
  ( (Unit!28799) )
))
(declare-fun lt!380661 () Unit!28798)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47118 0))(
  ( (array!47119 (arr!22586 (Array (_ BitVec 32) (_ BitVec 64))) (size!23027 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47118)

(declare-datatypes ((ValueCell!7277 0))(
  ( (ValueCellFull!7277 (v!10185 V!25625)) (EmptyCell!7277) )
))
(declare-datatypes ((array!47120 0))(
  ( (array!47121 (arr!22587 (Array (_ BitVec 32) ValueCell!7277)) (size!23028 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47120)

(declare-fun minValue!654 () V!25625)

(declare-fun zeroValue!654 () V!25625)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!248 (array!47118 array!47120 (_ BitVec 32) (_ BitVec 32) V!25625 V!25625 (_ BitVec 32) (_ BitVec 64) V!25625 (_ BitVec 32) Int) Unit!28798)

(assert (=> b!838718 (= lt!380661 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!248 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838719 () Bool)

(declare-fun res!570409 () Bool)

(assert (=> b!838719 (=> (not res!570409) (not e!468166))))

(assert (=> b!838719 (= res!570409 (and (= (select (arr!22586 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23027 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838720 () Bool)

(declare-fun e!468164 () Bool)

(declare-fun e!468167 () Bool)

(declare-fun mapRes!24749 () Bool)

(assert (=> b!838720 (= e!468164 (and e!468167 mapRes!24749))))

(declare-fun condMapEmpty!24749 () Bool)

(declare-fun mapDefault!24749 () ValueCell!7277)

