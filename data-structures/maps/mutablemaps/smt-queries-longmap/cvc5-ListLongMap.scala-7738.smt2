; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97208 () Bool)

(assert start!97208)

(declare-fun b!1105318 () Bool)

(declare-fun e!630899 () Bool)

(assert (=> b!1105318 (= e!630899 (not true))))

(declare-datatypes ((array!71680 0))(
  ( (array!71681 (arr!34489 (Array (_ BitVec 32) (_ BitVec 64))) (size!35026 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71680)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105318 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36207 0))(
  ( (Unit!36208) )
))
(declare-fun lt!495272 () Unit!36207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71680 (_ BitVec 64) (_ BitVec 32)) Unit!36207)

(assert (=> b!1105318 (= lt!495272 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!737604 () Bool)

(declare-fun e!630894 () Bool)

(assert (=> start!97208 (=> (not res!737604) (not e!630894))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97208 (= res!737604 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35026 _keys!1208))))))

(assert (=> start!97208 e!630894))

(declare-fun array_inv!26408 (array!71680) Bool)

(assert (=> start!97208 (array_inv!26408 _keys!1208)))

(assert (=> start!97208 true))

(declare-datatypes ((V!41665 0))(
  ( (V!41666 (val!13758 Int)) )
))
(declare-datatypes ((ValueCell!12992 0))(
  ( (ValueCellFull!12992 (v!16392 V!41665)) (EmptyCell!12992) )
))
(declare-datatypes ((array!71682 0))(
  ( (array!71683 (arr!34490 (Array (_ BitVec 32) ValueCell!12992)) (size!35027 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71682)

(declare-fun e!630897 () Bool)

(declare-fun array_inv!26409 (array!71682) Bool)

(assert (=> start!97208 (and (array_inv!26409 _values!996) e!630897)))

(declare-fun b!1105319 () Bool)

(declare-fun res!737603 () Bool)

(assert (=> b!1105319 (=> (not res!737603) (not e!630894))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105319 (= res!737603 (validMask!0 mask!1564))))

(declare-fun b!1105320 () Bool)

(declare-fun res!737607 () Bool)

(assert (=> b!1105320 (=> (not res!737607) (not e!630894))))

(declare-datatypes ((List!24193 0))(
  ( (Nil!24190) (Cons!24189 (h!25398 (_ BitVec 64)) (t!34465 List!24193)) )
))
(declare-fun arrayNoDuplicates!0 (array!71680 (_ BitVec 32) List!24193) Bool)

(assert (=> b!1105320 (= res!737607 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24190))))

(declare-fun b!1105321 () Bool)

(declare-fun e!630895 () Bool)

(declare-fun tp_is_empty!27403 () Bool)

(assert (=> b!1105321 (= e!630895 tp_is_empty!27403)))

(declare-fun b!1105322 () Bool)

(declare-fun res!737600 () Bool)

(assert (=> b!1105322 (=> (not res!737600) (not e!630894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71680 (_ BitVec 32)) Bool)

(assert (=> b!1105322 (= res!737600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105323 () Bool)

(declare-fun e!630898 () Bool)

(declare-fun mapRes!42922 () Bool)

(assert (=> b!1105323 (= e!630897 (and e!630898 mapRes!42922))))

(declare-fun condMapEmpty!42922 () Bool)

(declare-fun mapDefault!42922 () ValueCell!12992)

