; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99782 () Bool)

(assert start!99782)

(declare-fun b_free!25325 () Bool)

(declare-fun b_next!25325 () Bool)

(assert (=> start!99782 (= b_free!25325 (not b_next!25325))))

(declare-fun tp!88689 () Bool)

(declare-fun b_and!41531 () Bool)

(assert (=> start!99782 (= tp!88689 b_and!41531)))

(declare-fun b!1184297 () Bool)

(declare-fun res!787261 () Bool)

(declare-fun e!673389 () Bool)

(assert (=> b!1184297 (=> (not res!787261) (not e!673389))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184297 (= res!787261 (validKeyInArray!0 k!934))))

(declare-fun b!1184298 () Bool)

(declare-fun e!673393 () Bool)

(declare-fun e!673391 () Bool)

(assert (=> b!1184298 (= e!673393 (not e!673391))))

(declare-fun res!787266 () Bool)

(assert (=> b!1184298 (=> res!787266 e!673391)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184298 (= res!787266 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76478 0))(
  ( (array!76479 (arr!36885 (Array (_ BitVec 32) (_ BitVec 64))) (size!37422 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76478)

(declare-fun arrayContainsKey!0 (array!76478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184298 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39142 0))(
  ( (Unit!39143) )
))
(declare-fun lt!536963 () Unit!39142)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76478 (_ BitVec 64) (_ BitVec 32)) Unit!39142)

(assert (=> b!1184298 (= lt!536963 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184299 () Bool)

(declare-fun res!787265 () Bool)

(assert (=> b!1184299 (=> (not res!787265) (not e!673389))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44933 0))(
  ( (V!44934 (val!14984 Int)) )
))
(declare-datatypes ((ValueCell!14218 0))(
  ( (ValueCellFull!14218 (v!17623 V!44933)) (EmptyCell!14218) )
))
(declare-datatypes ((array!76480 0))(
  ( (array!76481 (arr!36886 (Array (_ BitVec 32) ValueCell!14218)) (size!37423 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76480)

(assert (=> b!1184299 (= res!787265 (and (= (size!37423 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37422 _keys!1208) (size!37423 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184301 () Bool)

(declare-fun e!673387 () Bool)

(declare-fun tp_is_empty!29855 () Bool)

(assert (=> b!1184301 (= e!673387 tp_is_empty!29855)))

(declare-fun b!1184302 () Bool)

(declare-fun e!673388 () Unit!39142)

(declare-fun Unit!39144 () Unit!39142)

(assert (=> b!1184302 (= e!673388 Unit!39144)))

(declare-fun b!1184303 () Bool)

(declare-fun e!673385 () Bool)

(declare-fun e!673386 () Bool)

(assert (=> b!1184303 (= e!673385 e!673386)))

(declare-fun res!787271 () Bool)

(assert (=> b!1184303 (=> res!787271 e!673386)))

(assert (=> b!1184303 (= res!787271 (not (= (select (arr!36885 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184304 () Bool)

(assert (=> b!1184304 (= e!673389 e!673393)))

(declare-fun res!787269 () Bool)

(assert (=> b!1184304 (=> (not res!787269) (not e!673393))))

(declare-fun lt!536978 () array!76478)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76478 (_ BitVec 32)) Bool)

(assert (=> b!1184304 (= res!787269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536978 mask!1564))))

(assert (=> b!1184304 (= lt!536978 (array!76479 (store (arr!36885 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37422 _keys!1208)))))

(declare-fun b!1184305 () Bool)

(declare-fun e!673382 () Bool)

(declare-fun e!673392 () Bool)

(declare-fun mapRes!46610 () Bool)

(assert (=> b!1184305 (= e!673382 (and e!673392 mapRes!46610))))

(declare-fun condMapEmpty!46610 () Bool)

(declare-fun mapDefault!46610 () ValueCell!14218)

