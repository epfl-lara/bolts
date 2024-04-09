; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74226 () Bool)

(assert start!74226)

(declare-fun b_free!15005 () Bool)

(declare-fun b_next!15005 () Bool)

(assert (=> start!74226 (= b_free!15005 (not b_next!15005))))

(declare-fun tp!52666 () Bool)

(declare-fun b_and!24775 () Bool)

(assert (=> start!74226 (= tp!52666 b_and!24775)))

(declare-fun b!872707 () Bool)

(declare-fun res!593229 () Bool)

(declare-fun e!486041 () Bool)

(assert (=> b!872707 (=> (not res!593229) (not e!486041))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872707 (= res!593229 (validKeyInArray!0 k!854))))

(declare-fun b!872708 () Bool)

(assert (=> b!872708 (= e!486041 (not true))))

(declare-fun e!486038 () Bool)

(assert (=> b!872708 e!486038))

(declare-fun c!92319 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!872708 (= c!92319 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!28029 0))(
  ( (V!28030 (val!8666 Int)) )
))
(declare-fun v!557 () V!28029)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50592 0))(
  ( (array!50593 (arr!24322 (Array (_ BitVec 32) (_ BitVec 64))) (size!24763 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50592)

(declare-fun minValue!654 () V!28029)

(declare-fun zeroValue!654 () V!28029)

(declare-datatypes ((Unit!29874 0))(
  ( (Unit!29875) )
))
(declare-fun lt!395607 () Unit!29874)

(declare-datatypes ((ValueCell!8179 0))(
  ( (ValueCellFull!8179 (v!11087 V!28029)) (EmptyCell!8179) )
))
(declare-datatypes ((array!50594 0))(
  ( (array!50595 (arr!24323 (Array (_ BitVec 32) ValueCell!8179)) (size!24764 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50594)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!642 (array!50592 array!50594 (_ BitVec 32) (_ BitVec 32) V!28029 V!28029 (_ BitVec 32) (_ BitVec 64) V!28029 (_ BitVec 32) Int) Unit!29874)

(assert (=> b!872708 (= lt!395607 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!642 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872710 () Bool)

(declare-fun e!486039 () Bool)

(declare-fun tp_is_empty!17237 () Bool)

(assert (=> b!872710 (= e!486039 tp_is_empty!17237)))

(declare-fun b!872711 () Bool)

(declare-fun res!593228 () Bool)

(assert (=> b!872711 (=> (not res!593228) (not e!486041))))

(assert (=> b!872711 (= res!593228 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24763 _keys!868))))))

(declare-fun b!872712 () Bool)

(declare-fun e!486037 () Bool)

(assert (=> b!872712 (= e!486037 tp_is_empty!17237)))

(declare-fun b!872713 () Bool)

(declare-fun res!593222 () Bool)

(assert (=> b!872713 (=> (not res!593222) (not e!486041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872713 (= res!593222 (validMask!0 mask!1196))))

(declare-fun b!872714 () Bool)

(declare-fun e!486040 () Bool)

(declare-fun mapRes!27458 () Bool)

(assert (=> b!872714 (= e!486040 (and e!486037 mapRes!27458))))

(declare-fun condMapEmpty!27458 () Bool)

(declare-fun mapDefault!27458 () ValueCell!8179)

