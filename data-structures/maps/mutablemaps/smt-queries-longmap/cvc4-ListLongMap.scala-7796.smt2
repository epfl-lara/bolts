; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97560 () Bool)

(assert start!97560)

(declare-fun b!1113430 () Bool)

(declare-fun res!743208 () Bool)

(declare-fun e!634745 () Bool)

(assert (=> b!1113430 (=> (not res!743208) (not e!634745))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113430 (= res!743208 (validKeyInArray!0 k!934))))

(declare-fun b!1113431 () Bool)

(declare-fun e!634743 () Bool)

(declare-fun e!634741 () Bool)

(declare-fun mapRes!43450 () Bool)

(assert (=> b!1113431 (= e!634743 (and e!634741 mapRes!43450))))

(declare-fun condMapEmpty!43450 () Bool)

(declare-datatypes ((V!42133 0))(
  ( (V!42134 (val!13934 Int)) )
))
(declare-datatypes ((ValueCell!13168 0))(
  ( (ValueCellFull!13168 (v!16568 V!42133)) (EmptyCell!13168) )
))
(declare-datatypes ((array!72364 0))(
  ( (array!72365 (arr!34831 (Array (_ BitVec 32) ValueCell!13168)) (size!35368 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72364)

(declare-fun mapDefault!43450 () ValueCell!13168)

