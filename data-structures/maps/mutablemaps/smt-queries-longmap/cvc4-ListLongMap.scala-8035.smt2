; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99090 () Bool)

(assert start!99090)

(declare-fun b_free!24659 () Bool)

(declare-fun b_next!24659 () Bool)

(assert (=> start!99090 (= b_free!24659 (not b_next!24659))))

(declare-fun tp!86688 () Bool)

(declare-fun b_and!40181 () Bool)

(assert (=> start!99090 (= tp!86688 b_and!40181)))

(declare-fun b!1164558 () Bool)

(declare-fun e!662152 () Bool)

(declare-fun e!662153 () Bool)

(assert (=> b!1164558 (= e!662152 e!662153)))

(declare-fun res!772371 () Bool)

(assert (=> b!1164558 (=> (not res!772371) (not e!662153))))

(declare-datatypes ((array!75162 0))(
  ( (array!75163 (arr!36228 (Array (_ BitVec 32) (_ BitVec 64))) (size!36765 (_ BitVec 32))) )
))
(declare-fun lt!524636 () array!75162)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75162 (_ BitVec 32)) Bool)

(assert (=> b!1164558 (= res!772371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524636 mask!1564))))

(declare-fun _keys!1208 () array!75162)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164558 (= lt!524636 (array!75163 (store (arr!36228 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36765 _keys!1208)))))

(declare-fun b!1164559 () Bool)

(declare-fun res!772364 () Bool)

(assert (=> b!1164559 (=> (not res!772364) (not e!662152))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1164559 (= res!772364 (= (select (arr!36228 _keys!1208) i!673) k!934))))

(declare-fun b!1164560 () Bool)

(declare-fun res!772365 () Bool)

(assert (=> b!1164560 (=> (not res!772365) (not e!662152))))

(declare-datatypes ((List!25535 0))(
  ( (Nil!25532) (Cons!25531 (h!26740 (_ BitVec 64)) (t!37193 List!25535)) )
))
(declare-fun arrayNoDuplicates!0 (array!75162 (_ BitVec 32) List!25535) Bool)

(assert (=> b!1164560 (= res!772365 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25532))))

(declare-fun b!1164561 () Bool)

(declare-fun e!662154 () Bool)

(declare-fun tp_is_empty!29189 () Bool)

(assert (=> b!1164561 (= e!662154 tp_is_empty!29189)))

(declare-fun b!1164562 () Bool)

(declare-fun res!772366 () Bool)

(assert (=> b!1164562 (=> (not res!772366) (not e!662152))))

(assert (=> b!1164562 (= res!772366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164563 () Bool)

(declare-fun res!772363 () Bool)

(assert (=> b!1164563 (=> (not res!772363) (not e!662152))))

(declare-datatypes ((V!44045 0))(
  ( (V!44046 (val!14651 Int)) )
))
(declare-datatypes ((ValueCell!13885 0))(
  ( (ValueCellFull!13885 (v!17289 V!44045)) (EmptyCell!13885) )
))
(declare-datatypes ((array!75164 0))(
  ( (array!75165 (arr!36229 (Array (_ BitVec 32) ValueCell!13885)) (size!36766 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75164)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1164563 (= res!772363 (and (= (size!36766 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36765 _keys!1208) (size!36766 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164564 () Bool)

(declare-fun res!772370 () Bool)

(assert (=> b!1164564 (=> (not res!772370) (not e!662152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164564 (= res!772370 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!45608 () Bool)

(declare-fun mapRes!45608 () Bool)

(declare-fun tp!86689 () Bool)

(assert (=> mapNonEmpty!45608 (= mapRes!45608 (and tp!86689 e!662154))))

(declare-fun mapKey!45608 () (_ BitVec 32))

(declare-fun mapValue!45608 () ValueCell!13885)

(declare-fun mapRest!45608 () (Array (_ BitVec 32) ValueCell!13885))

(assert (=> mapNonEmpty!45608 (= (arr!36229 _values!996) (store mapRest!45608 mapKey!45608 mapValue!45608))))

(declare-fun b!1164565 () Bool)

(declare-fun e!662156 () Bool)

(assert (=> b!1164565 (= e!662153 (not e!662156))))

(declare-fun res!772373 () Bool)

(assert (=> b!1164565 (=> res!772373 e!662156)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1164565 (= res!772373 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164565 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38326 0))(
  ( (Unit!38327) )
))
(declare-fun lt!524634 () Unit!38326)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75162 (_ BitVec 64) (_ BitVec 32)) Unit!38326)

(assert (=> b!1164565 (= lt!524634 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45608 () Bool)

(assert (=> mapIsEmpty!45608 mapRes!45608))

(declare-fun b!1164566 () Bool)

(declare-fun e!662155 () Bool)

(declare-fun e!662151 () Bool)

(assert (=> b!1164566 (= e!662155 (and e!662151 mapRes!45608))))

(declare-fun condMapEmpty!45608 () Bool)

(declare-fun mapDefault!45608 () ValueCell!13885)

