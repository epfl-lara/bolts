; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99370 () Bool)

(assert start!99370)

(declare-fun b_free!24913 () Bool)

(declare-fun b_next!24913 () Bool)

(assert (=> start!99370 (= b_free!24913 (not b_next!24913))))

(declare-fun tp!87454 () Bool)

(declare-fun b_and!40707 () Bool)

(assert (=> start!99370 (= tp!87454 b_and!40707)))

(declare-fun b!1171043 () Bool)

(declare-fun e!665652 () Bool)

(declare-fun e!665647 () Bool)

(assert (=> b!1171043 (= e!665652 e!665647)))

(declare-fun res!777368 () Bool)

(assert (=> b!1171043 (=> res!777368 e!665647)))

(declare-datatypes ((array!75662 0))(
  ( (array!75663 (arr!36477 (Array (_ BitVec 32) (_ BitVec 64))) (size!37014 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75662)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171043 (= res!777368 (or (bvsge (size!37014 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37014 _keys!1208)) (bvsge from!1455 (size!37014 _keys!1208))))))

(declare-datatypes ((List!25740 0))(
  ( (Nil!25737) (Cons!25736 (h!26945 (_ BitVec 64)) (t!37652 List!25740)) )
))
(declare-fun arrayNoDuplicates!0 (array!75662 (_ BitVec 32) List!25740) Bool)

(assert (=> b!1171043 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25737)))

(declare-datatypes ((Unit!38524 0))(
  ( (Unit!38525) )
))
(declare-fun lt!527468 () Unit!38524)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75662 (_ BitVec 32) (_ BitVec 32)) Unit!38524)

(assert (=> b!1171043 (= lt!527468 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171043 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!527462 () Unit!38524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38524)

(assert (=> b!1171043 (= lt!527462 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171044 () Bool)

(declare-fun res!777379 () Bool)

(assert (=> b!1171044 (=> res!777379 e!665647)))

(declare-fun noDuplicate!1626 (List!25740) Bool)

(assert (=> b!1171044 (= res!777379 (not (noDuplicate!1626 Nil!25737)))))

(declare-fun b!1171045 () Bool)

(declare-fun e!665645 () Bool)

(declare-fun e!665651 () Bool)

(assert (=> b!1171045 (= e!665645 (not e!665651))))

(declare-fun res!777380 () Bool)

(assert (=> b!1171045 (=> res!777380 e!665651)))

(assert (=> b!1171045 (= res!777380 (bvsgt from!1455 i!673))))

(assert (=> b!1171045 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527463 () Unit!38524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75662 (_ BitVec 64) (_ BitVec 32)) Unit!38524)

(assert (=> b!1171045 (= lt!527463 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!777369 () Bool)

(declare-fun e!665650 () Bool)

(assert (=> start!99370 (=> (not res!777369) (not e!665650))))

(assert (=> start!99370 (= res!777369 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37014 _keys!1208))))))

(assert (=> start!99370 e!665650))

(declare-fun tp_is_empty!29443 () Bool)

(assert (=> start!99370 tp_is_empty!29443))

(declare-fun array_inv!27758 (array!75662) Bool)

(assert (=> start!99370 (array_inv!27758 _keys!1208)))

(assert (=> start!99370 true))

(assert (=> start!99370 tp!87454))

(declare-datatypes ((V!44385 0))(
  ( (V!44386 (val!14778 Int)) )
))
(declare-datatypes ((ValueCell!14012 0))(
  ( (ValueCellFull!14012 (v!17417 V!44385)) (EmptyCell!14012) )
))
(declare-datatypes ((array!75664 0))(
  ( (array!75665 (arr!36478 (Array (_ BitVec 32) ValueCell!14012)) (size!37015 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75664)

(declare-fun e!665644 () Bool)

(declare-fun array_inv!27759 (array!75664) Bool)

(assert (=> start!99370 (and (array_inv!27759 _values!996) e!665644)))

(declare-fun b!1171046 () Bool)

(declare-fun e!665648 () Bool)

(declare-fun mapRes!45992 () Bool)

(assert (=> b!1171046 (= e!665644 (and e!665648 mapRes!45992))))

(declare-fun condMapEmpty!45992 () Bool)

(declare-fun mapDefault!45992 () ValueCell!14012)

