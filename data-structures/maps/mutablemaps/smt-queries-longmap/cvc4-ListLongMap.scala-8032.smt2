; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99072 () Bool)

(assert start!99072)

(declare-fun b_free!24641 () Bool)

(declare-fun b_next!24641 () Bool)

(assert (=> start!99072 (= b_free!24641 (not b_next!24641))))

(declare-fun tp!86634 () Bool)

(declare-fun b_and!40145 () Bool)

(assert (=> start!99072 (= tp!86634 b_and!40145)))

(declare-fun mapIsEmpty!45581 () Bool)

(declare-fun mapRes!45581 () Bool)

(assert (=> mapIsEmpty!45581 mapRes!45581))

(declare-fun b!1164162 () Bool)

(declare-fun res!772074 () Bool)

(declare-fun e!661962 () Bool)

(assert (=> b!1164162 (=> (not res!772074) (not e!661962))))

(declare-datatypes ((array!75126 0))(
  ( (array!75127 (arr!36210 (Array (_ BitVec 32) (_ BitVec 64))) (size!36747 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75126)

(declare-datatypes ((List!25522 0))(
  ( (Nil!25519) (Cons!25518 (h!26727 (_ BitVec 64)) (t!37162 List!25522)) )
))
(declare-fun arrayNoDuplicates!0 (array!75126 (_ BitVec 32) List!25522) Bool)

(assert (=> b!1164162 (= res!772074 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25519))))

(declare-fun b!1164163 () Bool)

(declare-fun res!772070 () Bool)

(assert (=> b!1164163 (=> (not res!772070) (not e!661962))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164163 (= res!772070 (validKeyInArray!0 k!934))))

(declare-fun b!1164164 () Bool)

(declare-fun res!772072 () Bool)

(declare-fun e!661963 () Bool)

(assert (=> b!1164164 (=> (not res!772072) (not e!661963))))

(declare-fun lt!524526 () array!75126)

(assert (=> b!1164164 (= res!772072 (arrayNoDuplicates!0 lt!524526 #b00000000000000000000000000000000 Nil!25519))))

(declare-fun b!1164165 () Bool)

(declare-fun res!772066 () Bool)

(assert (=> b!1164165 (=> (not res!772066) (not e!661962))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44021 0))(
  ( (V!44022 (val!14642 Int)) )
))
(declare-datatypes ((ValueCell!13876 0))(
  ( (ValueCellFull!13876 (v!17280 V!44021)) (EmptyCell!13876) )
))
(declare-datatypes ((array!75128 0))(
  ( (array!75129 (arr!36211 (Array (_ BitVec 32) ValueCell!13876)) (size!36748 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75128)

(assert (=> b!1164165 (= res!772066 (and (= (size!36748 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36747 _keys!1208) (size!36748 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164166 () Bool)

(declare-fun res!772067 () Bool)

(assert (=> b!1164166 (=> (not res!772067) (not e!661962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75126 (_ BitVec 32)) Bool)

(assert (=> b!1164166 (= res!772067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164167 () Bool)

(declare-fun res!772075 () Bool)

(assert (=> b!1164167 (=> (not res!772075) (not e!661962))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164167 (= res!772075 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36747 _keys!1208))))))

(declare-fun b!1164168 () Bool)

(declare-fun e!661967 () Bool)

(declare-fun e!661965 () Bool)

(assert (=> b!1164168 (= e!661967 (and e!661965 mapRes!45581))))

(declare-fun condMapEmpty!45581 () Bool)

(declare-fun mapDefault!45581 () ValueCell!13876)

