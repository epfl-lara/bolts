; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98190 () Bool)

(assert start!98190)

(declare-fun b_free!23855 () Bool)

(declare-fun b_next!23855 () Bool)

(assert (=> start!98190 (= b_free!23855 (not b_next!23855))))

(declare-fun tp!84269 () Bool)

(declare-fun b_and!38515 () Bool)

(assert (=> start!98190 (= tp!84269 b_and!38515)))

(declare-fun b!1128513 () Bool)

(declare-fun e!642315 () Bool)

(declare-fun e!642318 () Bool)

(assert (=> b!1128513 (= e!642315 e!642318)))

(declare-fun res!754252 () Bool)

(assert (=> b!1128513 (=> res!754252 e!642318)))

(declare-datatypes ((array!73590 0))(
  ( (array!73591 (arr!35444 (Array (_ BitVec 32) (_ BitVec 64))) (size!35981 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73590)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1128513 (= res!754252 (not (= (select (arr!35444 _keys!1208) from!1455) k!934)))))

(declare-fun e!642323 () Bool)

(assert (=> b!1128513 e!642323))

(declare-fun c!109733 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128513 (= c!109733 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42973 0))(
  ( (V!42974 (val!14249 Int)) )
))
(declare-fun zeroValue!944 () V!42973)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13483 0))(
  ( (ValueCellFull!13483 (v!16883 V!42973)) (EmptyCell!13483) )
))
(declare-datatypes ((array!73592 0))(
  ( (array!73593 (arr!35445 (Array (_ BitVec 32) ValueCell!13483)) (size!35982 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73592)

(declare-fun minValue!944 () V!42973)

(declare-datatypes ((Unit!36921 0))(
  ( (Unit!36922) )
))
(declare-fun lt!500982 () Unit!36921)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!406 (array!73590 array!73592 (_ BitVec 32) (_ BitVec 32) V!42973 V!42973 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36921)

(assert (=> b!1128513 (= lt!500982 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128514 () Bool)

(declare-fun e!642314 () Bool)

(declare-fun e!642321 () Bool)

(declare-fun mapRes!44395 () Bool)

(assert (=> b!1128514 (= e!642314 (and e!642321 mapRes!44395))))

(declare-fun condMapEmpty!44395 () Bool)

(declare-fun mapDefault!44395 () ValueCell!13483)

