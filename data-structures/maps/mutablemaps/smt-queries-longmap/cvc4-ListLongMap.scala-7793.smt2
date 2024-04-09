; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97542 () Bool)

(assert start!97542)

(declare-fun b!1113079 () Bool)

(declare-fun e!634580 () Bool)

(declare-fun tp_is_empty!27737 () Bool)

(assert (=> b!1113079 (= e!634580 tp_is_empty!27737)))

(declare-fun b!1113080 () Bool)

(declare-fun res!742932 () Bool)

(declare-fun e!634582 () Bool)

(assert (=> b!1113080 (=> (not res!742932) (not e!634582))))

(declare-datatypes ((array!72330 0))(
  ( (array!72331 (arr!34814 (Array (_ BitVec 32) (_ BitVec 64))) (size!35351 (_ BitVec 32))) )
))
(declare-fun lt!496599 () array!72330)

(declare-datatypes ((List!24412 0))(
  ( (Nil!24409) (Cons!24408 (h!25617 (_ BitVec 64)) (t!34900 List!24412)) )
))
(declare-fun arrayNoDuplicates!0 (array!72330 (_ BitVec 32) List!24412) Bool)

(assert (=> b!1113080 (= res!742932 (arrayNoDuplicates!0 lt!496599 #b00000000000000000000000000000000 Nil!24409))))

(declare-fun mapNonEmpty!43423 () Bool)

(declare-fun mapRes!43423 () Bool)

(declare-fun tp!82668 () Bool)

(assert (=> mapNonEmpty!43423 (= mapRes!43423 (and tp!82668 e!634580))))

(declare-datatypes ((V!42109 0))(
  ( (V!42110 (val!13925 Int)) )
))
(declare-datatypes ((ValueCell!13159 0))(
  ( (ValueCellFull!13159 (v!16559 V!42109)) (EmptyCell!13159) )
))
(declare-fun mapRest!43423 () (Array (_ BitVec 32) ValueCell!13159))

(declare-fun mapValue!43423 () ValueCell!13159)

(declare-datatypes ((array!72332 0))(
  ( (array!72333 (arr!34815 (Array (_ BitVec 32) ValueCell!13159)) (size!35352 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72332)

(declare-fun mapKey!43423 () (_ BitVec 32))

(assert (=> mapNonEmpty!43423 (= (arr!34815 _values!996) (store mapRest!43423 mapKey!43423 mapValue!43423))))

(declare-fun b!1113081 () Bool)

(assert (=> b!1113081 (= e!634582 (not true))))

(declare-fun _keys!1208 () array!72330)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113081 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36437 0))(
  ( (Unit!36438) )
))
(declare-fun lt!496598 () Unit!36437)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72330 (_ BitVec 64) (_ BitVec 32)) Unit!36437)

(assert (=> b!1113081 (= lt!496598 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43423 () Bool)

(assert (=> mapIsEmpty!43423 mapRes!43423))

(declare-fun b!1113082 () Bool)

(declare-fun res!742934 () Bool)

(declare-fun e!634583 () Bool)

(assert (=> b!1113082 (=> (not res!742934) (not e!634583))))

(assert (=> b!1113082 (= res!742934 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24409))))

(declare-fun b!1113084 () Bool)

(declare-fun res!742937 () Bool)

(assert (=> b!1113084 (=> (not res!742937) (not e!634583))))

(assert (=> b!1113084 (= res!742937 (= (select (arr!34814 _keys!1208) i!673) k!934))))

(declare-fun b!1113085 () Bool)

(declare-fun res!742933 () Bool)

(assert (=> b!1113085 (=> (not res!742933) (not e!634583))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72330 (_ BitVec 32)) Bool)

(assert (=> b!1113085 (= res!742933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113086 () Bool)

(declare-fun e!634578 () Bool)

(assert (=> b!1113086 (= e!634578 tp_is_empty!27737)))

(declare-fun b!1113087 () Bool)

(declare-fun res!742935 () Bool)

(assert (=> b!1113087 (=> (not res!742935) (not e!634583))))

(assert (=> b!1113087 (= res!742935 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35351 _keys!1208))))))

(declare-fun b!1113088 () Bool)

(declare-fun res!742936 () Bool)

(assert (=> b!1113088 (=> (not res!742936) (not e!634583))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113088 (= res!742936 (and (= (size!35352 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35351 _keys!1208) (size!35352 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113089 () Bool)

(declare-fun res!742939 () Bool)

(assert (=> b!1113089 (=> (not res!742939) (not e!634583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113089 (= res!742939 (validKeyInArray!0 k!934))))

(declare-fun b!1113090 () Bool)

(declare-fun res!742941 () Bool)

(assert (=> b!1113090 (=> (not res!742941) (not e!634583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113090 (= res!742941 (validMask!0 mask!1564))))

(declare-fun b!1113091 () Bool)

(declare-fun e!634579 () Bool)

(assert (=> b!1113091 (= e!634579 (and e!634578 mapRes!43423))))

(declare-fun condMapEmpty!43423 () Bool)

(declare-fun mapDefault!43423 () ValueCell!13159)

