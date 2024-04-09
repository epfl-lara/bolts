; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100304 () Bool)

(assert start!100304)

(declare-fun b!1196036 () Bool)

(declare-fun res!796017 () Bool)

(declare-fun e!679616 () Bool)

(assert (=> b!1196036 (=> (not res!796017) (not e!679616))))

(declare-datatypes ((array!77432 0))(
  ( (array!77433 (arr!37359 (Array (_ BitVec 32) (_ BitVec 64))) (size!37896 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77432)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77432 (_ BitVec 32)) Bool)

(assert (=> b!1196036 (= res!796017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196037 () Bool)

(declare-fun res!796018 () Bool)

(assert (=> b!1196037 (=> (not res!796018) (not e!679616))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196037 (= res!796018 (validKeyInArray!0 k!934))))

(declare-fun b!1196038 () Bool)

(declare-fun e!679615 () Bool)

(declare-fun e!679613 () Bool)

(declare-fun mapRes!47339 () Bool)

(assert (=> b!1196038 (= e!679615 (and e!679613 mapRes!47339))))

(declare-fun condMapEmpty!47339 () Bool)

(declare-datatypes ((V!45573 0))(
  ( (V!45574 (val!15224 Int)) )
))
(declare-datatypes ((ValueCell!14458 0))(
  ( (ValueCellFull!14458 (v!17863 V!45573)) (EmptyCell!14458) )
))
(declare-datatypes ((array!77434 0))(
  ( (array!77435 (arr!37360 (Array (_ BitVec 32) ValueCell!14458)) (size!37897 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77434)

(declare-fun mapDefault!47339 () ValueCell!14458)

