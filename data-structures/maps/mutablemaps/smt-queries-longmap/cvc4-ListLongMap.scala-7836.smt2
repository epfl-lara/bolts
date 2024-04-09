; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97800 () Bool)

(assert start!97800)

(declare-fun b_free!23465 () Bool)

(declare-fun b_next!23465 () Bool)

(assert (=> start!97800 (= b_free!23465 (not b_next!23465))))

(declare-fun tp!83100 () Bool)

(declare-fun b_and!37761 () Bool)

(assert (=> start!97800 (= tp!83100 b_and!37761)))

(declare-fun b!1118154 () Bool)

(declare-fun e!636946 () Bool)

(declare-fun e!636950 () Bool)

(assert (=> b!1118154 (= e!636946 (not e!636950))))

(declare-fun res!746849 () Bool)

(assert (=> b!1118154 (=> res!746849 e!636950)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118154 (= res!746849 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72820 0))(
  ( (array!72821 (arr!35059 (Array (_ BitVec 32) (_ BitVec 64))) (size!35596 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72820)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118154 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36609 0))(
  ( (Unit!36610) )
))
(declare-fun lt!497417 () Unit!36609)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72820 (_ BitVec 64) (_ BitVec 32)) Unit!36609)

(assert (=> b!1118154 (= lt!497417 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118155 () Bool)

(declare-fun res!746854 () Bool)

(declare-fun e!636944 () Bool)

(assert (=> b!1118155 (=> (not res!746854) (not e!636944))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42453 0))(
  ( (V!42454 (val!14054 Int)) )
))
(declare-datatypes ((ValueCell!13288 0))(
  ( (ValueCellFull!13288 (v!16688 V!42453)) (EmptyCell!13288) )
))
(declare-datatypes ((array!72822 0))(
  ( (array!72823 (arr!35060 (Array (_ BitVec 32) ValueCell!13288)) (size!35597 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72822)

(assert (=> b!1118155 (= res!746854 (and (= (size!35597 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35596 _keys!1208) (size!35597 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118156 () Bool)

(declare-fun e!636949 () Bool)

(declare-fun tp_is_empty!27995 () Bool)

(assert (=> b!1118156 (= e!636949 tp_is_empty!27995)))

(declare-fun mapIsEmpty!43810 () Bool)

(declare-fun mapRes!43810 () Bool)

(assert (=> mapIsEmpty!43810 mapRes!43810))

(declare-fun mapNonEmpty!43810 () Bool)

(declare-fun tp!83099 () Bool)

(assert (=> mapNonEmpty!43810 (= mapRes!43810 (and tp!83099 e!636949))))

(declare-fun mapRest!43810 () (Array (_ BitVec 32) ValueCell!13288))

(declare-fun mapKey!43810 () (_ BitVec 32))

(declare-fun mapValue!43810 () ValueCell!13288)

(assert (=> mapNonEmpty!43810 (= (arr!35060 _values!996) (store mapRest!43810 mapKey!43810 mapValue!43810))))

(declare-fun b!1118157 () Bool)

(declare-fun res!746853 () Bool)

(assert (=> b!1118157 (=> (not res!746853) (not e!636944))))

(assert (=> b!1118157 (= res!746853 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35596 _keys!1208))))))

(declare-fun b!1118158 () Bool)

(assert (=> b!1118158 (= e!636950 true)))

(declare-fun zeroValue!944 () V!42453)

(declare-fun minValue!944 () V!42453)

(declare-datatypes ((tuple2!17682 0))(
  ( (tuple2!17683 (_1!8851 (_ BitVec 64)) (_2!8851 V!42453)) )
))
(declare-datatypes ((List!24516 0))(
  ( (Nil!24513) (Cons!24512 (h!25721 tuple2!17682) (t!35004 List!24516)) )
))
(declare-datatypes ((ListLongMap!15663 0))(
  ( (ListLongMap!15664 (toList!7847 List!24516)) )
))
(declare-fun lt!497416 () ListLongMap!15663)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4308 (array!72820 array!72822 (_ BitVec 32) (_ BitVec 32) V!42453 V!42453 (_ BitVec 32) Int) ListLongMap!15663)

(assert (=> b!1118158 (= lt!497416 (getCurrentListMapNoExtraKeys!4308 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118159 () Bool)

(declare-fun res!746847 () Bool)

(assert (=> b!1118159 (=> (not res!746847) (not e!636944))))

(declare-datatypes ((List!24517 0))(
  ( (Nil!24514) (Cons!24513 (h!25722 (_ BitVec 64)) (t!35005 List!24517)) )
))
(declare-fun arrayNoDuplicates!0 (array!72820 (_ BitVec 32) List!24517) Bool)

(assert (=> b!1118159 (= res!746847 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24514))))

(declare-fun b!1118160 () Bool)

(declare-fun res!746846 () Bool)

(assert (=> b!1118160 (=> (not res!746846) (not e!636944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118160 (= res!746846 (validKeyInArray!0 k!934))))

(declare-fun b!1118162 () Bool)

(declare-fun e!636947 () Bool)

(assert (=> b!1118162 (= e!636947 tp_is_empty!27995)))

(declare-fun b!1118163 () Bool)

(declare-fun res!746850 () Bool)

(assert (=> b!1118163 (=> (not res!746850) (not e!636944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72820 (_ BitVec 32)) Bool)

(assert (=> b!1118163 (= res!746850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118164 () Bool)

(declare-fun res!746855 () Bool)

(assert (=> b!1118164 (=> (not res!746855) (not e!636944))))

(assert (=> b!1118164 (= res!746855 (= (select (arr!35059 _keys!1208) i!673) k!934))))

(declare-fun b!1118165 () Bool)

(declare-fun res!746852 () Bool)

(assert (=> b!1118165 (=> (not res!746852) (not e!636946))))

(declare-fun lt!497418 () array!72820)

(assert (=> b!1118165 (= res!746852 (arrayNoDuplicates!0 lt!497418 #b00000000000000000000000000000000 Nil!24514))))

(declare-fun b!1118166 () Bool)

(assert (=> b!1118166 (= e!636944 e!636946)))

(declare-fun res!746848 () Bool)

(assert (=> b!1118166 (=> (not res!746848) (not e!636946))))

(assert (=> b!1118166 (= res!746848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497418 mask!1564))))

(assert (=> b!1118166 (= lt!497418 (array!72821 (store (arr!35059 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35596 _keys!1208)))))

(declare-fun b!1118167 () Bool)

(declare-fun res!746856 () Bool)

(assert (=> b!1118167 (=> (not res!746856) (not e!636944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118167 (= res!746856 (validMask!0 mask!1564))))

(declare-fun res!746851 () Bool)

(assert (=> start!97800 (=> (not res!746851) (not e!636944))))

(assert (=> start!97800 (= res!746851 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35596 _keys!1208))))))

(assert (=> start!97800 e!636944))

(assert (=> start!97800 tp_is_empty!27995))

(declare-fun array_inv!26802 (array!72820) Bool)

(assert (=> start!97800 (array_inv!26802 _keys!1208)))

(assert (=> start!97800 true))

(assert (=> start!97800 tp!83100))

(declare-fun e!636945 () Bool)

(declare-fun array_inv!26803 (array!72822) Bool)

(assert (=> start!97800 (and (array_inv!26803 _values!996) e!636945)))

(declare-fun b!1118161 () Bool)

(assert (=> b!1118161 (= e!636945 (and e!636947 mapRes!43810))))

(declare-fun condMapEmpty!43810 () Bool)

(declare-fun mapDefault!43810 () ValueCell!13288)

