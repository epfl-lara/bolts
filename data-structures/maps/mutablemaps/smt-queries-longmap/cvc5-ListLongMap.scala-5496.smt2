; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72788 () Bool)

(assert start!72788)

(declare-fun b!844295 () Bool)

(declare-fun res!573750 () Bool)

(declare-fun e!471266 () Bool)

(assert (=> b!844295 (=> (not res!573750) (not e!471266))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47838 0))(
  ( (array!47839 (arr!22946 (Array (_ BitVec 32) (_ BitVec 64))) (size!23387 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47838)

(declare-datatypes ((V!26129 0))(
  ( (V!26130 (val!7953 Int)) )
))
(declare-datatypes ((ValueCell!7466 0))(
  ( (ValueCellFull!7466 (v!10374 V!26129)) (EmptyCell!7466) )
))
(declare-datatypes ((array!47840 0))(
  ( (array!47841 (arr!22947 (Array (_ BitVec 32) ValueCell!7466)) (size!23388 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47840)

(assert (=> b!844295 (= res!573750 (and (= (size!23388 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23387 _keys!868) (size!23388 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844296 () Bool)

(declare-fun res!573747 () Bool)

(assert (=> b!844296 (=> (not res!573747) (not e!471266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844296 (= res!573747 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25316 () Bool)

(declare-fun mapRes!25316 () Bool)

(declare-fun tp!48635 () Bool)

(declare-fun e!471270 () Bool)

(assert (=> mapNonEmpty!25316 (= mapRes!25316 (and tp!48635 e!471270))))

(declare-fun mapRest!25316 () (Array (_ BitVec 32) ValueCell!7466))

(declare-fun mapValue!25316 () ValueCell!7466)

(declare-fun mapKey!25316 () (_ BitVec 32))

(assert (=> mapNonEmpty!25316 (= (arr!22947 _values!688) (store mapRest!25316 mapKey!25316 mapValue!25316))))

(declare-fun b!844297 () Bool)

(declare-fun e!471268 () Bool)

(declare-fun e!471267 () Bool)

(assert (=> b!844297 (= e!471268 (and e!471267 mapRes!25316))))

(declare-fun condMapEmpty!25316 () Bool)

(declare-fun mapDefault!25316 () ValueCell!7466)

