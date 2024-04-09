; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97838 () Bool)

(assert start!97838)

(declare-fun b_free!23503 () Bool)

(declare-fun b_next!23503 () Bool)

(assert (=> start!97838 (= b_free!23503 (not b_next!23503))))

(declare-fun tp!83213 () Bool)

(declare-fun b_and!37811 () Bool)

(assert (=> start!97838 (= tp!83213 b_and!37811)))

(declare-fun b!1118964 () Bool)

(declare-fun e!637344 () Bool)

(declare-fun e!637343 () Bool)

(assert (=> b!1118964 (= e!637344 (not e!637343))))

(declare-fun res!747478 () Bool)

(assert (=> b!1118964 (=> res!747478 e!637343)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118964 (= res!747478 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72894 0))(
  ( (array!72895 (arr!35096 (Array (_ BitVec 32) (_ BitVec 64))) (size!35633 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72894)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118964 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36631 0))(
  ( (Unit!36632) )
))
(declare-fun lt!497607 () Unit!36631)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72894 (_ BitVec 64) (_ BitVec 32)) Unit!36631)

(assert (=> b!1118964 (= lt!497607 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118965 () Bool)

(declare-fun res!747483 () Bool)

(declare-fun e!637345 () Bool)

(assert (=> b!1118965 (=> (not res!747483) (not e!637345))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118965 (= res!747483 (validMask!0 mask!1564))))

(declare-fun b!1118966 () Bool)

(declare-fun e!637349 () Bool)

(declare-fun e!637346 () Bool)

(declare-fun mapRes!43867 () Bool)

(assert (=> b!1118966 (= e!637349 (and e!637346 mapRes!43867))))

(declare-fun condMapEmpty!43867 () Bool)

(declare-datatypes ((V!42505 0))(
  ( (V!42506 (val!14073 Int)) )
))
(declare-datatypes ((ValueCell!13307 0))(
  ( (ValueCellFull!13307 (v!16707 V!42505)) (EmptyCell!13307) )
))
(declare-datatypes ((array!72896 0))(
  ( (array!72897 (arr!35097 (Array (_ BitVec 32) ValueCell!13307)) (size!35634 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72896)

(declare-fun mapDefault!43867 () ValueCell!13307)

