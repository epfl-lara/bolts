; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97896 () Bool)

(assert start!97896)

(declare-fun b_free!23561 () Bool)

(declare-fun b_next!23561 () Bool)

(assert (=> start!97896 (= b_free!23561 (not b_next!23561))))

(declare-fun tp!83387 () Bool)

(declare-fun b_and!37927 () Bool)

(assert (=> start!97896 (= tp!83387 b_and!37927)))

(declare-fun b!1120240 () Bool)

(declare-fun res!748434 () Bool)

(declare-fun e!637957 () Bool)

(assert (=> b!1120240 (=> (not res!748434) (not e!637957))))

(declare-datatypes ((array!73008 0))(
  ( (array!73009 (arr!35153 (Array (_ BitVec 32) (_ BitVec 64))) (size!35690 (_ BitVec 32))) )
))
(declare-fun lt!497958 () array!73008)

(declare-datatypes ((List!24587 0))(
  ( (Nil!24584) (Cons!24583 (h!25792 (_ BitVec 64)) (t!35147 List!24587)) )
))
(declare-fun arrayNoDuplicates!0 (array!73008 (_ BitVec 32) List!24587) Bool)

(assert (=> b!1120240 (= res!748434 (arrayNoDuplicates!0 lt!497958 #b00000000000000000000000000000000 Nil!24584))))

(declare-fun b!1120241 () Bool)

(declare-fun res!748437 () Bool)

(declare-fun e!637952 () Bool)

(assert (=> b!1120241 (=> (not res!748437) (not e!637952))))

(declare-fun _keys!1208 () array!73008)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1120241 (= res!748437 (= (select (arr!35153 _keys!1208) i!673) k!934))))

(declare-fun b!1120242 () Bool)

(declare-fun e!637958 () Bool)

(assert (=> b!1120242 (= e!637957 (not e!637958))))

(declare-fun res!748440 () Bool)

(assert (=> b!1120242 (=> res!748440 e!637958)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1120242 (= res!748440 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120242 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36679 0))(
  ( (Unit!36680) )
))
(declare-fun lt!497957 () Unit!36679)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73008 (_ BitVec 64) (_ BitVec 32)) Unit!36679)

(assert (=> b!1120242 (= lt!497957 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!748431 () Bool)

(assert (=> start!97896 (=> (not res!748431) (not e!637952))))

(assert (=> start!97896 (= res!748431 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35690 _keys!1208))))))

(assert (=> start!97896 e!637952))

(declare-fun tp_is_empty!28091 () Bool)

(assert (=> start!97896 tp_is_empty!28091))

(declare-fun array_inv!26866 (array!73008) Bool)

(assert (=> start!97896 (array_inv!26866 _keys!1208)))

(assert (=> start!97896 true))

(assert (=> start!97896 tp!83387))

(declare-datatypes ((V!42581 0))(
  ( (V!42582 (val!14102 Int)) )
))
(declare-datatypes ((ValueCell!13336 0))(
  ( (ValueCellFull!13336 (v!16736 V!42581)) (EmptyCell!13336) )
))
(declare-datatypes ((array!73010 0))(
  ( (array!73011 (arr!35154 (Array (_ BitVec 32) ValueCell!13336)) (size!35691 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73010)

(declare-fun e!637955 () Bool)

(declare-fun array_inv!26867 (array!73010) Bool)

(assert (=> start!97896 (and (array_inv!26867 _values!996) e!637955)))

(declare-fun b!1120243 () Bool)

(declare-fun res!748438 () Bool)

(assert (=> b!1120243 (=> (not res!748438) (not e!637952))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73008 (_ BitVec 32)) Bool)

(assert (=> b!1120243 (= res!748438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120244 () Bool)

(declare-fun e!637954 () Bool)

(declare-fun mapRes!43954 () Bool)

(assert (=> b!1120244 (= e!637955 (and e!637954 mapRes!43954))))

(declare-fun condMapEmpty!43954 () Bool)

(declare-fun mapDefault!43954 () ValueCell!13336)

