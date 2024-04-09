; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97890 () Bool)

(assert start!97890)

(declare-fun b_free!23555 () Bool)

(declare-fun b_next!23555 () Bool)

(assert (=> start!97890 (= b_free!23555 (not b_next!23555))))

(declare-fun tp!83369 () Bool)

(declare-fun b_and!37915 () Bool)

(assert (=> start!97890 (= tp!83369 b_and!37915)))

(declare-fun b!1120108 () Bool)

(declare-fun e!637895 () Bool)

(declare-fun e!637891 () Bool)

(assert (=> b!1120108 (= e!637895 e!637891)))

(declare-fun res!748333 () Bool)

(assert (=> b!1120108 (=> (not res!748333) (not e!637891))))

(declare-datatypes ((array!72996 0))(
  ( (array!72997 (arr!35147 (Array (_ BitVec 32) (_ BitVec 64))) (size!35684 (_ BitVec 32))) )
))
(declare-fun lt!497920 () array!72996)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72996 (_ BitVec 32)) Bool)

(assert (=> b!1120108 (= res!748333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497920 mask!1564))))

(declare-fun _keys!1208 () array!72996)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120108 (= lt!497920 (array!72997 (store (arr!35147 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35684 _keys!1208)))))

(declare-fun mapNonEmpty!43945 () Bool)

(declare-fun mapRes!43945 () Bool)

(declare-fun tp!83370 () Bool)

(declare-fun e!637892 () Bool)

(assert (=> mapNonEmpty!43945 (= mapRes!43945 (and tp!83370 e!637892))))

(declare-datatypes ((V!42573 0))(
  ( (V!42574 (val!14099 Int)) )
))
(declare-datatypes ((ValueCell!13333 0))(
  ( (ValueCellFull!13333 (v!16733 V!42573)) (EmptyCell!13333) )
))
(declare-fun mapRest!43945 () (Array (_ BitVec 32) ValueCell!13333))

(declare-fun mapKey!43945 () (_ BitVec 32))

(declare-fun mapValue!43945 () ValueCell!13333)

(declare-datatypes ((array!72998 0))(
  ( (array!72999 (arr!35148 (Array (_ BitVec 32) ValueCell!13333)) (size!35685 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72998)

(assert (=> mapNonEmpty!43945 (= (arr!35148 _values!996) (store mapRest!43945 mapKey!43945 mapValue!43945))))

(declare-fun b!1120109 () Bool)

(declare-fun res!748340 () Bool)

(assert (=> b!1120109 (=> (not res!748340) (not e!637895))))

(assert (=> b!1120109 (= res!748340 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35684 _keys!1208))))))

(declare-fun b!1120110 () Bool)

(declare-fun e!637893 () Bool)

(declare-fun tp_is_empty!28085 () Bool)

(assert (=> b!1120110 (= e!637893 tp_is_empty!28085)))

(declare-fun b!1120111 () Bool)

(assert (=> b!1120111 (= e!637892 tp_is_empty!28085)))

(declare-fun b!1120112 () Bool)

(declare-fun res!748338 () Bool)

(assert (=> b!1120112 (=> (not res!748338) (not e!637891))))

(declare-datatypes ((List!24583 0))(
  ( (Nil!24580) (Cons!24579 (h!25788 (_ BitVec 64)) (t!35137 List!24583)) )
))
(declare-fun arrayNoDuplicates!0 (array!72996 (_ BitVec 32) List!24583) Bool)

(assert (=> b!1120112 (= res!748338 (arrayNoDuplicates!0 lt!497920 #b00000000000000000000000000000000 Nil!24580))))

(declare-fun b!1120114 () Bool)

(declare-fun res!748332 () Bool)

(assert (=> b!1120114 (=> (not res!748332) (not e!637895))))

(assert (=> b!1120114 (= res!748332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120115 () Bool)

(declare-fun e!637894 () Bool)

(assert (=> b!1120115 (= e!637891 (not e!637894))))

(declare-fun res!748336 () Bool)

(assert (=> b!1120115 (=> res!748336 e!637894)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1120115 (= res!748336 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120115 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36673 0))(
  ( (Unit!36674) )
))
(declare-fun lt!497922 () Unit!36673)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72996 (_ BitVec 64) (_ BitVec 32)) Unit!36673)

(assert (=> b!1120115 (= lt!497922 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120116 () Bool)

(declare-fun res!748331 () Bool)

(assert (=> b!1120116 (=> (not res!748331) (not e!637895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120116 (= res!748331 (validMask!0 mask!1564))))

(declare-fun b!1120117 () Bool)

(declare-fun e!637890 () Bool)

(assert (=> b!1120117 (= e!637890 (and e!637893 mapRes!43945))))

(declare-fun condMapEmpty!43945 () Bool)

(declare-fun mapDefault!43945 () ValueCell!13333)

