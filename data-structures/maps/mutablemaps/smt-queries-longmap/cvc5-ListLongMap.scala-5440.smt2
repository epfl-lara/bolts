; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72452 () Bool)

(assert start!72452)

(declare-fun b_free!13609 () Bool)

(declare-fun b_next!13609 () Bool)

(assert (=> start!72452 (= b_free!13609 (not b_next!13609))))

(declare-fun tp!47926 () Bool)

(declare-fun b_and!22713 () Bool)

(assert (=> start!72452 (= tp!47926 b_and!22713)))

(declare-fun b!839537 () Bool)

(declare-fun res!570915 () Bool)

(declare-fun e!468541 () Bool)

(assert (=> b!839537 (=> (not res!570915) (not e!468541))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839537 (= res!570915 (validKeyInArray!0 k!854))))

(declare-fun b!839538 () Bool)

(declare-fun res!570916 () Bool)

(assert (=> b!839538 (=> (not res!570916) (not e!468541))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47202 0))(
  ( (array!47203 (arr!22628 (Array (_ BitVec 32) (_ BitVec 64))) (size!23069 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47202)

(assert (=> b!839538 (= res!570916 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23069 _keys!868))))))

(declare-fun b!839539 () Bool)

(assert (=> b!839539 (= e!468541 (not true))))

(declare-fun e!468545 () Bool)

(assert (=> b!839539 e!468545))

(declare-fun c!91191 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!839539 (= c!91191 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25681 0))(
  ( (V!25682 (val!7785 Int)) )
))
(declare-fun v!557 () V!25681)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7298 0))(
  ( (ValueCellFull!7298 (v!10206 V!25681)) (EmptyCell!7298) )
))
(declare-datatypes ((array!47204 0))(
  ( (array!47205 (arr!22629 (Array (_ BitVec 32) ValueCell!7298)) (size!23070 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47204)

(declare-fun minValue!654 () V!25681)

(declare-fun zeroValue!654 () V!25681)

(declare-datatypes ((Unit!28834 0))(
  ( (Unit!28835) )
))
(declare-fun lt!380724 () Unit!28834)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!266 (array!47202 array!47204 (_ BitVec 32) (_ BitVec 32) V!25681 V!25681 (_ BitVec 32) (_ BitVec 64) V!25681 (_ BitVec 32) Int) Unit!28834)

(assert (=> b!839539 (= lt!380724 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!266 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24812 () Bool)

(declare-fun mapRes!24812 () Bool)

(assert (=> mapIsEmpty!24812 mapRes!24812))

(declare-fun b!839541 () Bool)

(declare-fun e!468543 () Bool)

(declare-fun e!468546 () Bool)

(assert (=> b!839541 (= e!468543 (and e!468546 mapRes!24812))))

(declare-fun condMapEmpty!24812 () Bool)

(declare-fun mapDefault!24812 () ValueCell!7298)

