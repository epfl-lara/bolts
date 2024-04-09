; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99158 () Bool)

(assert start!99158)

(declare-fun b_free!24727 () Bool)

(declare-fun b_next!24727 () Bool)

(assert (=> start!99158 (= b_free!24727 (not b_next!24727))))

(declare-fun tp!86892 () Bool)

(declare-fun b_and!40317 () Bool)

(assert (=> start!99158 (= tp!86892 b_and!40317)))

(declare-fun b!1166074 () Bool)

(declare-fun res!773507 () Bool)

(declare-fun e!662887 () Bool)

(assert (=> b!1166074 (=> (not res!773507) (not e!662887))))

(declare-datatypes ((array!75294 0))(
  ( (array!75295 (arr!36294 (Array (_ BitVec 32) (_ BitVec 64))) (size!36831 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75294)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44137 0))(
  ( (V!44138 (val!14685 Int)) )
))
(declare-datatypes ((ValueCell!13919 0))(
  ( (ValueCellFull!13919 (v!17323 V!44137)) (EmptyCell!13919) )
))
(declare-datatypes ((array!75296 0))(
  ( (array!75297 (arr!36295 (Array (_ BitVec 32) ValueCell!13919)) (size!36832 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75296)

(assert (=> b!1166074 (= res!773507 (and (= (size!36832 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36831 _keys!1208) (size!36832 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166075 () Bool)

(declare-fun e!662891 () Bool)

(assert (=> b!1166075 (= e!662887 e!662891)))

(declare-fun res!773508 () Bool)

(assert (=> b!1166075 (=> (not res!773508) (not e!662891))))

(declare-fun lt!525087 () array!75294)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75294 (_ BitVec 32)) Bool)

(assert (=> b!1166075 (= res!773508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525087 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166075 (= lt!525087 (array!75295 (store (arr!36294 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36831 _keys!1208)))))

(declare-fun mapIsEmpty!45710 () Bool)

(declare-fun mapRes!45710 () Bool)

(assert (=> mapIsEmpty!45710 mapRes!45710))

(declare-fun b!1166076 () Bool)

(declare-fun e!662892 () Bool)

(declare-fun e!662890 () Bool)

(assert (=> b!1166076 (= e!662892 (and e!662890 mapRes!45710))))

(declare-fun condMapEmpty!45710 () Bool)

(declare-fun mapDefault!45710 () ValueCell!13919)

