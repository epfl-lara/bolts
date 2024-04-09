; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97778 () Bool)

(assert start!97778)

(declare-fun b_free!23443 () Bool)

(declare-fun b_next!23443 () Bool)

(assert (=> start!97778 (= b_free!23443 (not b_next!23443))))

(declare-fun tp!83033 () Bool)

(declare-fun b_and!37739 () Bool)

(assert (=> start!97778 (= tp!83033 b_and!37739)))

(declare-fun b!1117692 () Bool)

(declare-fun e!636713 () Bool)

(assert (=> b!1117692 (= e!636713 true)))

(declare-datatypes ((V!42425 0))(
  ( (V!42426 (val!14043 Int)) )
))
(declare-fun zeroValue!944 () V!42425)

(declare-datatypes ((array!72778 0))(
  ( (array!72779 (arr!35038 (Array (_ BitVec 32) (_ BitVec 64))) (size!35575 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72778)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!17664 0))(
  ( (tuple2!17665 (_1!8842 (_ BitVec 64)) (_2!8842 V!42425)) )
))
(declare-datatypes ((List!24500 0))(
  ( (Nil!24497) (Cons!24496 (h!25705 tuple2!17664) (t!34988 List!24500)) )
))
(declare-datatypes ((ListLongMap!15645 0))(
  ( (ListLongMap!15646 (toList!7838 List!24500)) )
))
(declare-fun lt!497319 () ListLongMap!15645)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13277 0))(
  ( (ValueCellFull!13277 (v!16677 V!42425)) (EmptyCell!13277) )
))
(declare-datatypes ((array!72780 0))(
  ( (array!72781 (arr!35039 (Array (_ BitVec 32) ValueCell!13277)) (size!35576 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72780)

(declare-fun minValue!944 () V!42425)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4299 (array!72778 array!72780 (_ BitVec 32) (_ BitVec 32) V!42425 V!42425 (_ BitVec 32) Int) ListLongMap!15645)

(assert (=> b!1117692 (= lt!497319 (getCurrentListMapNoExtraKeys!4299 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117693 () Bool)

(declare-fun e!636718 () Bool)

(declare-fun tp_is_empty!27973 () Bool)

(assert (=> b!1117693 (= e!636718 tp_is_empty!27973)))

(declare-fun b!1117694 () Bool)

(declare-fun res!746487 () Bool)

(declare-fun e!636716 () Bool)

(assert (=> b!1117694 (=> (not res!746487) (not e!636716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72778 (_ BitVec 32)) Bool)

(assert (=> b!1117694 (= res!746487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43777 () Bool)

(declare-fun mapRes!43777 () Bool)

(assert (=> mapIsEmpty!43777 mapRes!43777))

(declare-fun b!1117695 () Bool)

(declare-fun e!636719 () Bool)

(assert (=> b!1117695 (= e!636719 (not e!636713))))

(declare-fun res!746492 () Bool)

(assert (=> b!1117695 (=> res!746492 e!636713)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117695 (= res!746492 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117695 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36591 0))(
  ( (Unit!36592) )
))
(declare-fun lt!497318 () Unit!36591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72778 (_ BitVec 64) (_ BitVec 32)) Unit!36591)

(assert (=> b!1117695 (= lt!497318 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43777 () Bool)

(declare-fun tp!83034 () Bool)

(assert (=> mapNonEmpty!43777 (= mapRes!43777 (and tp!83034 e!636718))))

(declare-fun mapKey!43777 () (_ BitVec 32))

(declare-fun mapValue!43777 () ValueCell!13277)

(declare-fun mapRest!43777 () (Array (_ BitVec 32) ValueCell!13277))

(assert (=> mapNonEmpty!43777 (= (arr!35039 _values!996) (store mapRest!43777 mapKey!43777 mapValue!43777))))

(declare-fun b!1117696 () Bool)

(declare-fun res!746483 () Bool)

(assert (=> b!1117696 (=> (not res!746483) (not e!636716))))

(assert (=> b!1117696 (= res!746483 (= (select (arr!35038 _keys!1208) i!673) k!934))))

(declare-fun b!1117697 () Bool)

(declare-fun e!636717 () Bool)

(declare-fun e!636715 () Bool)

(assert (=> b!1117697 (= e!636717 (and e!636715 mapRes!43777))))

(declare-fun condMapEmpty!43777 () Bool)

(declare-fun mapDefault!43777 () ValueCell!13277)

