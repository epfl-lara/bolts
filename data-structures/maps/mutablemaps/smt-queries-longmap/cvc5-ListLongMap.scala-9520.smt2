; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113018 () Bool)

(assert start!113018)

(declare-fun b!1339110 () Bool)

(declare-fun e!762700 () Bool)

(declare-fun e!762699 () Bool)

(declare-fun mapRes!57256 () Bool)

(assert (=> b!1339110 (= e!762700 (and e!762699 mapRes!57256))))

(declare-fun condMapEmpty!57256 () Bool)

(declare-datatypes ((V!54481 0))(
  ( (V!54482 (val!18591 Int)) )
))
(declare-datatypes ((ValueCell!17618 0))(
  ( (ValueCellFull!17618 (v!21237 V!54481)) (EmptyCell!17618) )
))
(declare-datatypes ((array!90891 0))(
  ( (array!90892 (arr!43897 (Array (_ BitVec 32) ValueCell!17618)) (size!44448 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90891)

(declare-fun mapDefault!57256 () ValueCell!17618)

