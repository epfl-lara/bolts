; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100448 () Bool)

(assert start!100448)

(declare-fun b_free!25735 () Bool)

(declare-fun b_next!25735 () Bool)

(assert (=> start!100448 (= b_free!25735 (not b_next!25735))))

(declare-fun tp!90195 () Bool)

(declare-fun b_and!42371 () Bool)

(assert (=> start!100448 (= tp!90195 b_and!42371)))

(declare-fun mapIsEmpty!47501 () Bool)

(declare-fun mapRes!47501 () Bool)

(assert (=> mapIsEmpty!47501 mapRes!47501))

(declare-fun b!1198508 () Bool)

(declare-fun res!797750 () Bool)

(declare-fun e!680834 () Bool)

(assert (=> b!1198508 (=> (not res!797750) (not e!680834))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198508 (= res!797750 (validKeyInArray!0 k!934))))

(declare-fun b!1198509 () Bool)

(declare-fun res!797756 () Bool)

(assert (=> b!1198509 (=> (not res!797756) (not e!680834))))

(declare-datatypes ((array!77640 0))(
  ( (array!77641 (arr!37461 (Array (_ BitVec 32) (_ BitVec 64))) (size!37998 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77640)

(declare-datatypes ((List!26521 0))(
  ( (Nil!26518) (Cons!26517 (h!27726 (_ BitVec 64)) (t!39243 List!26521)) )
))
(declare-fun arrayNoDuplicates!0 (array!77640 (_ BitVec 32) List!26521) Bool)

(assert (=> b!1198509 (= res!797756 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26518))))

(declare-fun b!1198510 () Bool)

(declare-fun e!680836 () Bool)

(declare-fun e!680833 () Bool)

(assert (=> b!1198510 (= e!680836 (not e!680833))))

(declare-fun res!797760 () Bool)

(assert (=> b!1198510 (=> res!797760 e!680833)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198510 (= res!797760 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198510 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39672 0))(
  ( (Unit!39673) )
))
(declare-fun lt!543481 () Unit!39672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77640 (_ BitVec 64) (_ BitVec 32)) Unit!39672)

(assert (=> b!1198510 (= lt!543481 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198511 () Bool)

(declare-fun res!797757 () Bool)

(assert (=> b!1198511 (=> (not res!797757) (not e!680834))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198511 (= res!797757 (validMask!0 mask!1564))))

(declare-fun b!1198512 () Bool)

(declare-fun res!797752 () Bool)

(assert (=> b!1198512 (=> (not res!797752) (not e!680834))))

(assert (=> b!1198512 (= res!797752 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37998 _keys!1208))))))

(declare-fun b!1198513 () Bool)

(declare-fun e!680838 () Bool)

(declare-fun e!680835 () Bool)

(assert (=> b!1198513 (= e!680838 (and e!680835 mapRes!47501))))

(declare-fun condMapEmpty!47501 () Bool)

(declare-datatypes ((V!45713 0))(
  ( (V!45714 (val!15276 Int)) )
))
(declare-datatypes ((ValueCell!14510 0))(
  ( (ValueCellFull!14510 (v!17915 V!45713)) (EmptyCell!14510) )
))
(declare-datatypes ((array!77642 0))(
  ( (array!77643 (arr!37462 (Array (_ BitVec 32) ValueCell!14510)) (size!37999 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77642)

(declare-fun mapDefault!47501 () ValueCell!14510)

