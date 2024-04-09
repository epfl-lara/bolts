; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101414 () Bool)

(assert start!101414)

(declare-fun b_free!26249 () Bool)

(declare-fun b_next!26249 () Bool)

(assert (=> start!101414 (= b_free!26249 (not b_next!26249))))

(declare-fun tp!91775 () Bool)

(declare-fun b_and!43661 () Bool)

(assert (=> start!101414 (= tp!91775 b_and!43661)))

(declare-fun b!1218203 () Bool)

(declare-fun e!691676 () Bool)

(declare-fun e!691680 () Bool)

(assert (=> b!1218203 (= e!691676 e!691680)))

(declare-fun res!809147 () Bool)

(assert (=> b!1218203 (=> res!809147 e!691680)))

(declare-datatypes ((array!78656 0))(
  ( (array!78657 (arr!37957 (Array (_ BitVec 32) (_ BitVec 64))) (size!38494 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78656)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1218203 (= res!809147 (not (= (select (arr!37957 _keys!1208) from!1455) k!934)))))

(declare-fun res!809150 () Bool)

(declare-fun e!691672 () Bool)

(assert (=> start!101414 (=> (not res!809150) (not e!691672))))

(assert (=> start!101414 (= res!809150 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38494 _keys!1208))))))

(assert (=> start!101414 e!691672))

(declare-fun tp_is_empty!30953 () Bool)

(assert (=> start!101414 tp_is_empty!30953))

(declare-fun array_inv!28802 (array!78656) Bool)

(assert (=> start!101414 (array_inv!28802 _keys!1208)))

(assert (=> start!101414 true))

(assert (=> start!101414 tp!91775))

(declare-datatypes ((V!46397 0))(
  ( (V!46398 (val!15533 Int)) )
))
(declare-datatypes ((ValueCell!14767 0))(
  ( (ValueCellFull!14767 (v!18189 V!46397)) (EmptyCell!14767) )
))
(declare-datatypes ((array!78658 0))(
  ( (array!78659 (arr!37958 (Array (_ BitVec 32) ValueCell!14767)) (size!38495 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78658)

(declare-fun e!691681 () Bool)

(declare-fun array_inv!28803 (array!78658) Bool)

(assert (=> start!101414 (and (array_inv!28803 _values!996) e!691681)))

(declare-fun mapNonEmpty!48310 () Bool)

(declare-fun mapRes!48310 () Bool)

(declare-fun tp!91776 () Bool)

(declare-fun e!691677 () Bool)

(assert (=> mapNonEmpty!48310 (= mapRes!48310 (and tp!91776 e!691677))))

(declare-fun mapRest!48310 () (Array (_ BitVec 32) ValueCell!14767))

(declare-fun mapValue!48310 () ValueCell!14767)

(declare-fun mapKey!48310 () (_ BitVec 32))

(assert (=> mapNonEmpty!48310 (= (arr!37958 _values!996) (store mapRest!48310 mapKey!48310 mapValue!48310))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1218204 () Bool)

(declare-fun arrayContainsKey!0 (array!78656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218204 (= e!691680 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218205 () Bool)

(declare-fun e!691673 () Bool)

(assert (=> b!1218205 (= e!691673 (or (not (= (select (arr!37957 _keys!1208) from!1455) k!934)) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(assert (=> b!1218205 e!691676))

(declare-fun res!809145 () Bool)

(assert (=> b!1218205 (=> (not res!809145) (not e!691676))))

(declare-datatypes ((tuple2!20116 0))(
  ( (tuple2!20117 (_1!10068 (_ BitVec 64)) (_2!10068 V!46397)) )
))
(declare-datatypes ((List!26936 0))(
  ( (Nil!26933) (Cons!26932 (h!28141 tuple2!20116) (t!40172 List!26936)) )
))
(declare-datatypes ((ListLongMap!18097 0))(
  ( (ListLongMap!18098 (toList!9064 List!26936)) )
))
(declare-fun lt!553743 () ListLongMap!18097)

(declare-fun lt!553751 () ListLongMap!18097)

(declare-fun lt!553749 () V!46397)

(declare-fun +!4045 (ListLongMap!18097 tuple2!20116) ListLongMap!18097)

(declare-fun get!19389 (ValueCell!14767 V!46397) V!46397)

(assert (=> b!1218205 (= res!809145 (= lt!553743 (+!4045 lt!553751 (tuple2!20117 (select (arr!37957 _keys!1208) from!1455) (get!19389 (select (arr!37958 _values!996) from!1455) lt!553749)))))))

(declare-fun b!1218206 () Bool)

(declare-fun res!809148 () Bool)

(assert (=> b!1218206 (=> (not res!809148) (not e!691672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218206 (= res!809148 (validKeyInArray!0 k!934))))

(declare-fun b!1218207 () Bool)

(declare-fun res!809151 () Bool)

(assert (=> b!1218207 (=> (not res!809151) (not e!691672))))

(declare-datatypes ((List!26937 0))(
  ( (Nil!26934) (Cons!26933 (h!28142 (_ BitVec 64)) (t!40173 List!26937)) )
))
(declare-fun arrayNoDuplicates!0 (array!78656 (_ BitVec 32) List!26937) Bool)

(assert (=> b!1218207 (= res!809151 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26934))))

(declare-fun b!1218208 () Bool)

(declare-fun res!809146 () Bool)

(assert (=> b!1218208 (=> (not res!809146) (not e!691672))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1218208 (= res!809146 (and (= (size!38495 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38494 _keys!1208) (size!38495 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218209 () Bool)

(declare-fun e!691671 () Bool)

(declare-fun e!691674 () Bool)

(assert (=> b!1218209 (= e!691671 (not e!691674))))

(declare-fun res!809152 () Bool)

(assert (=> b!1218209 (=> res!809152 e!691674)))

(assert (=> b!1218209 (= res!809152 (bvsgt from!1455 i!673))))

(assert (=> b!1218209 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40312 0))(
  ( (Unit!40313) )
))
(declare-fun lt!553748 () Unit!40312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78656 (_ BitVec 64) (_ BitVec 32)) Unit!40312)

(assert (=> b!1218209 (= lt!553748 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218210 () Bool)

(declare-fun res!809149 () Bool)

(assert (=> b!1218210 (=> (not res!809149) (not e!691672))))

(assert (=> b!1218210 (= res!809149 (= (select (arr!37957 _keys!1208) i!673) k!934))))

(declare-fun b!1218211 () Bool)

(declare-fun res!809138 () Bool)

(assert (=> b!1218211 (=> (not res!809138) (not e!691672))))

(assert (=> b!1218211 (= res!809138 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38494 _keys!1208))))))

(declare-fun b!1218212 () Bool)

(assert (=> b!1218212 (= e!691672 e!691671)))

(declare-fun res!809141 () Bool)

(assert (=> b!1218212 (=> (not res!809141) (not e!691671))))

(declare-fun lt!553745 () array!78656)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78656 (_ BitVec 32)) Bool)

(assert (=> b!1218212 (= res!809141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553745 mask!1564))))

(assert (=> b!1218212 (= lt!553745 (array!78657 (store (arr!37957 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38494 _keys!1208)))))

(declare-fun b!1218213 () Bool)

(declare-fun e!691679 () Bool)

(assert (=> b!1218213 (= e!691674 e!691679)))

(declare-fun res!809142 () Bool)

(assert (=> b!1218213 (=> res!809142 e!691679)))

(assert (=> b!1218213 (= res!809142 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46397)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553744 () array!78658)

(declare-fun minValue!944 () V!46397)

(declare-fun getCurrentListMapNoExtraKeys!5468 (array!78656 array!78658 (_ BitVec 32) (_ BitVec 32) V!46397 V!46397 (_ BitVec 32) Int) ListLongMap!18097)

(assert (=> b!1218213 (= lt!553743 (getCurrentListMapNoExtraKeys!5468 lt!553745 lt!553744 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218213 (= lt!553744 (array!78659 (store (arr!37958 _values!996) i!673 (ValueCellFull!14767 lt!553749)) (size!38495 _values!996)))))

(declare-fun dynLambda!3372 (Int (_ BitVec 64)) V!46397)

(assert (=> b!1218213 (= lt!553749 (dynLambda!3372 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553747 () ListLongMap!18097)

(assert (=> b!1218213 (= lt!553747 (getCurrentListMapNoExtraKeys!5468 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218214 () Bool)

(declare-fun e!691678 () Bool)

(assert (=> b!1218214 (= e!691678 tp_is_empty!30953)))

(declare-fun b!1218215 () Bool)

(declare-fun res!809144 () Bool)

(assert (=> b!1218215 (=> (not res!809144) (not e!691672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218215 (= res!809144 (validMask!0 mask!1564))))

(declare-fun b!1218216 () Bool)

(declare-fun res!809140 () Bool)

(assert (=> b!1218216 (=> (not res!809140) (not e!691672))))

(assert (=> b!1218216 (= res!809140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48310 () Bool)

(assert (=> mapIsEmpty!48310 mapRes!48310))

(declare-fun b!1218217 () Bool)

(declare-fun res!809139 () Bool)

(assert (=> b!1218217 (=> (not res!809139) (not e!691671))))

(assert (=> b!1218217 (= res!809139 (arrayNoDuplicates!0 lt!553745 #b00000000000000000000000000000000 Nil!26934))))

(declare-fun b!1218218 () Bool)

(assert (=> b!1218218 (= e!691677 tp_is_empty!30953)))

(declare-fun b!1218219 () Bool)

(assert (=> b!1218219 (= e!691681 (and e!691678 mapRes!48310))))

(declare-fun condMapEmpty!48310 () Bool)

(declare-fun mapDefault!48310 () ValueCell!14767)

