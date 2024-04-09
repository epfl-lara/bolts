; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97818 () Bool)

(assert start!97818)

(declare-fun b_free!23483 () Bool)

(declare-fun b_next!23483 () Bool)

(assert (=> start!97818 (= b_free!23483 (not b_next!23483))))

(declare-fun tp!83153 () Bool)

(declare-fun b_and!37779 () Bool)

(assert (=> start!97818 (= tp!83153 b_and!37779)))

(declare-fun b!1118532 () Bool)

(declare-fun e!637135 () Bool)

(assert (=> b!1118532 (= e!637135 true)))

(declare-datatypes ((V!42477 0))(
  ( (V!42478 (val!14063 Int)) )
))
(declare-fun zeroValue!944 () V!42477)

(declare-datatypes ((array!72856 0))(
  ( (array!72857 (arr!35077 (Array (_ BitVec 32) (_ BitVec 64))) (size!35614 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72856)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13297 0))(
  ( (ValueCellFull!13297 (v!16697 V!42477)) (EmptyCell!13297) )
))
(declare-datatypes ((array!72858 0))(
  ( (array!72859 (arr!35078 (Array (_ BitVec 32) ValueCell!13297)) (size!35615 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72858)

(declare-fun minValue!944 () V!42477)

(declare-datatypes ((tuple2!17694 0))(
  ( (tuple2!17695 (_1!8857 (_ BitVec 64)) (_2!8857 V!42477)) )
))
(declare-datatypes ((List!24531 0))(
  ( (Nil!24528) (Cons!24527 (h!25736 tuple2!17694) (t!35019 List!24531)) )
))
(declare-datatypes ((ListLongMap!15675 0))(
  ( (ListLongMap!15676 (toList!7853 List!24531)) )
))
(declare-fun lt!497499 () ListLongMap!15675)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4314 (array!72856 array!72858 (_ BitVec 32) (_ BitVec 32) V!42477 V!42477 (_ BitVec 32) Int) ListLongMap!15675)

(assert (=> b!1118532 (= lt!497499 (getCurrentListMapNoExtraKeys!4314 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118533 () Bool)

(declare-fun res!747149 () Bool)

(declare-fun e!637138 () Bool)

(assert (=> b!1118533 (=> (not res!747149) (not e!637138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72856 (_ BitVec 32)) Bool)

(assert (=> b!1118533 (= res!747149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118534 () Bool)

(declare-fun e!637137 () Bool)

(declare-fun tp_is_empty!28013 () Bool)

(assert (=> b!1118534 (= e!637137 tp_is_empty!28013)))

(declare-fun b!1118535 () Bool)

(declare-fun e!637139 () Bool)

(assert (=> b!1118535 (= e!637139 (not e!637135))))

(declare-fun res!747145 () Bool)

(assert (=> b!1118535 (=> res!747145 e!637135)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118535 (= res!747145 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118535 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36619 0))(
  ( (Unit!36620) )
))
(declare-fun lt!497498 () Unit!36619)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72856 (_ BitVec 64) (_ BitVec 32)) Unit!36619)

(assert (=> b!1118535 (= lt!497498 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43837 () Bool)

(declare-fun mapRes!43837 () Bool)

(assert (=> mapIsEmpty!43837 mapRes!43837))

(declare-fun res!747148 () Bool)

(assert (=> start!97818 (=> (not res!747148) (not e!637138))))

(assert (=> start!97818 (= res!747148 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35614 _keys!1208))))))

(assert (=> start!97818 e!637138))

(assert (=> start!97818 tp_is_empty!28013))

(declare-fun array_inv!26816 (array!72856) Bool)

(assert (=> start!97818 (array_inv!26816 _keys!1208)))

(assert (=> start!97818 true))

(assert (=> start!97818 tp!83153))

(declare-fun e!637136 () Bool)

(declare-fun array_inv!26817 (array!72858) Bool)

(assert (=> start!97818 (and (array_inv!26817 _values!996) e!637136)))

(declare-fun b!1118536 () Bool)

(assert (=> b!1118536 (= e!637138 e!637139)))

(declare-fun res!747152 () Bool)

(assert (=> b!1118536 (=> (not res!747152) (not e!637139))))

(declare-fun lt!497497 () array!72856)

(assert (=> b!1118536 (= res!747152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497497 mask!1564))))

(assert (=> b!1118536 (= lt!497497 (array!72857 (store (arr!35077 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35614 _keys!1208)))))

(declare-fun mapNonEmpty!43837 () Bool)

(declare-fun tp!83154 () Bool)

(assert (=> mapNonEmpty!43837 (= mapRes!43837 (and tp!83154 e!637137))))

(declare-fun mapValue!43837 () ValueCell!13297)

(declare-fun mapKey!43837 () (_ BitVec 32))

(declare-fun mapRest!43837 () (Array (_ BitVec 32) ValueCell!13297))

(assert (=> mapNonEmpty!43837 (= (arr!35078 _values!996) (store mapRest!43837 mapKey!43837 mapValue!43837))))

(declare-fun b!1118537 () Bool)

(declare-fun res!747150 () Bool)

(assert (=> b!1118537 (=> (not res!747150) (not e!637138))))

(assert (=> b!1118537 (= res!747150 (= (select (arr!35077 _keys!1208) i!673) k!934))))

(declare-fun b!1118538 () Bool)

(declare-fun res!747153 () Bool)

(assert (=> b!1118538 (=> (not res!747153) (not e!637138))))

(assert (=> b!1118538 (= res!747153 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35614 _keys!1208))))))

(declare-fun b!1118539 () Bool)

(declare-fun res!747143 () Bool)

(assert (=> b!1118539 (=> (not res!747143) (not e!637138))))

(assert (=> b!1118539 (= res!747143 (and (= (size!35615 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35614 _keys!1208) (size!35615 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118540 () Bool)

(declare-fun res!747144 () Bool)

(assert (=> b!1118540 (=> (not res!747144) (not e!637139))))

(declare-datatypes ((List!24532 0))(
  ( (Nil!24529) (Cons!24528 (h!25737 (_ BitVec 64)) (t!35020 List!24532)) )
))
(declare-fun arrayNoDuplicates!0 (array!72856 (_ BitVec 32) List!24532) Bool)

(assert (=> b!1118540 (= res!747144 (arrayNoDuplicates!0 lt!497497 #b00000000000000000000000000000000 Nil!24529))))

(declare-fun b!1118541 () Bool)

(declare-fun res!747146 () Bool)

(assert (=> b!1118541 (=> (not res!747146) (not e!637138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118541 (= res!747146 (validKeyInArray!0 k!934))))

(declare-fun b!1118542 () Bool)

(declare-fun e!637134 () Bool)

(assert (=> b!1118542 (= e!637134 tp_is_empty!28013)))

(declare-fun b!1118543 () Bool)

(declare-fun res!747147 () Bool)

(assert (=> b!1118543 (=> (not res!747147) (not e!637138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118543 (= res!747147 (validMask!0 mask!1564))))

(declare-fun b!1118544 () Bool)

(declare-fun res!747151 () Bool)

(assert (=> b!1118544 (=> (not res!747151) (not e!637138))))

(assert (=> b!1118544 (= res!747151 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24529))))

(declare-fun b!1118545 () Bool)

(assert (=> b!1118545 (= e!637136 (and e!637134 mapRes!43837))))

(declare-fun condMapEmpty!43837 () Bool)

(declare-fun mapDefault!43837 () ValueCell!13297)

