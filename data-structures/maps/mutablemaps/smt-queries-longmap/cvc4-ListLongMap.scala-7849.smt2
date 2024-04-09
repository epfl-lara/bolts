; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97878 () Bool)

(assert start!97878)

(declare-fun b_free!23543 () Bool)

(declare-fun b_next!23543 () Bool)

(assert (=> start!97878 (= b_free!23543 (not b_next!23543))))

(declare-fun tp!83333 () Bool)

(declare-fun b_and!37891 () Bool)

(assert (=> start!97878 (= tp!83333 b_and!37891)))

(declare-fun b!1119844 () Bool)

(declare-fun res!748141 () Bool)

(declare-fun e!637767 () Bool)

(assert (=> b!1119844 (=> (not res!748141) (not e!637767))))

(declare-datatypes ((array!72972 0))(
  ( (array!72973 (arr!35135 (Array (_ BitVec 32) (_ BitVec 64))) (size!35672 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72972)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1119844 (= res!748141 (= (select (arr!35135 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43927 () Bool)

(declare-fun mapRes!43927 () Bool)

(assert (=> mapIsEmpty!43927 mapRes!43927))

(declare-fun b!1119845 () Bool)

(declare-fun res!748138 () Bool)

(assert (=> b!1119845 (=> (not res!748138) (not e!637767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119845 (= res!748138 (validKeyInArray!0 k!934))))

(declare-fun b!1119846 () Bool)

(declare-fun e!637768 () Bool)

(declare-fun tp_is_empty!28073 () Bool)

(assert (=> b!1119846 (= e!637768 tp_is_empty!28073)))

(declare-fun b!1119847 () Bool)

(declare-fun res!748139 () Bool)

(declare-fun e!637763 () Bool)

(assert (=> b!1119847 (=> (not res!748139) (not e!637763))))

(declare-fun lt!497849 () array!72972)

(declare-datatypes ((List!24576 0))(
  ( (Nil!24573) (Cons!24572 (h!25781 (_ BitVec 64)) (t!35118 List!24576)) )
))
(declare-fun arrayNoDuplicates!0 (array!72972 (_ BitVec 32) List!24576) Bool)

(assert (=> b!1119847 (= res!748139 (arrayNoDuplicates!0 lt!497849 #b00000000000000000000000000000000 Nil!24573))))

(declare-fun mapNonEmpty!43927 () Bool)

(declare-fun tp!83334 () Bool)

(declare-fun e!637766 () Bool)

(assert (=> mapNonEmpty!43927 (= mapRes!43927 (and tp!83334 e!637766))))

(declare-datatypes ((V!42557 0))(
  ( (V!42558 (val!14093 Int)) )
))
(declare-datatypes ((ValueCell!13327 0))(
  ( (ValueCellFull!13327 (v!16727 V!42557)) (EmptyCell!13327) )
))
(declare-fun mapValue!43927 () ValueCell!13327)

(declare-fun mapKey!43927 () (_ BitVec 32))

(declare-fun mapRest!43927 () (Array (_ BitVec 32) ValueCell!13327))

(declare-datatypes ((array!72974 0))(
  ( (array!72975 (arr!35136 (Array (_ BitVec 32) ValueCell!13327)) (size!35673 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72974)

(assert (=> mapNonEmpty!43927 (= (arr!35136 _values!996) (store mapRest!43927 mapKey!43927 mapValue!43927))))

(declare-fun b!1119848 () Bool)

(declare-fun res!748135 () Bool)

(assert (=> b!1119848 (=> (not res!748135) (not e!637767))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1119848 (= res!748135 (and (= (size!35673 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35672 _keys!1208) (size!35673 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119849 () Bool)

(declare-fun e!637764 () Bool)

(assert (=> b!1119849 (= e!637763 (not e!637764))))

(declare-fun res!748136 () Bool)

(assert (=> b!1119849 (=> res!748136 e!637764)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1119849 (= res!748136 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119849 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36665 0))(
  ( (Unit!36666) )
))
(declare-fun lt!497848 () Unit!36665)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72972 (_ BitVec 64) (_ BitVec 32)) Unit!36665)

(assert (=> b!1119849 (= lt!497848 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119850 () Bool)

(declare-fun e!637765 () Bool)

(assert (=> b!1119850 (= e!637765 (and e!637768 mapRes!43927))))

(declare-fun condMapEmpty!43927 () Bool)

(declare-fun mapDefault!43927 () ValueCell!13327)

