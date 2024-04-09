; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100118 () Bool)

(assert start!100118)

(declare-fun b_free!25661 () Bool)

(declare-fun b_next!25661 () Bool)

(assert (=> start!100118 (= b_free!25661 (not b_next!25661))))

(declare-fun tp!89697 () Bool)

(declare-fun b_and!42203 () Bool)

(assert (=> start!100118 (= tp!89697 b_and!42203)))

(declare-fun b!1193143 () Bool)

(declare-fun res!793888 () Bool)

(declare-fun e!678179 () Bool)

(assert (=> b!1193143 (=> (not res!793888) (not e!678179))))

(declare-datatypes ((array!77146 0))(
  ( (array!77147 (arr!37219 (Array (_ BitVec 32) (_ BitVec 64))) (size!37756 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77146)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77146 (_ BitVec 32)) Bool)

(assert (=> b!1193143 (= res!793888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193144 () Bool)

(declare-fun res!793877 () Bool)

(assert (=> b!1193144 (=> (not res!793877) (not e!678179))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45381 0))(
  ( (V!45382 (val!15152 Int)) )
))
(declare-datatypes ((ValueCell!14386 0))(
  ( (ValueCellFull!14386 (v!17791 V!45381)) (EmptyCell!14386) )
))
(declare-datatypes ((array!77148 0))(
  ( (array!77149 (arr!37220 (Array (_ BitVec 32) ValueCell!14386)) (size!37757 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77148)

(assert (=> b!1193144 (= res!793877 (and (= (size!37757 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37756 _keys!1208) (size!37757 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193145 () Bool)

(declare-fun e!678177 () Bool)

(declare-fun e!678175 () Bool)

(assert (=> b!1193145 (= e!678177 (not e!678175))))

(declare-fun res!793887 () Bool)

(assert (=> b!1193145 (=> res!793887 e!678175)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193145 (= res!793887 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193145 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39524 0))(
  ( (Unit!39525) )
))
(declare-fun lt!542459 () Unit!39524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77146 (_ BitVec 64) (_ BitVec 32)) Unit!39524)

(assert (=> b!1193145 (= lt!542459 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193146 () Bool)

(declare-fun res!793884 () Bool)

(assert (=> b!1193146 (=> (not res!793884) (not e!678179))))

(declare-datatypes ((List!26385 0))(
  ( (Nil!26382) (Cons!26381 (h!27590 (_ BitVec 64)) (t!39045 List!26385)) )
))
(declare-fun arrayNoDuplicates!0 (array!77146 (_ BitVec 32) List!26385) Bool)

(assert (=> b!1193146 (= res!793884 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26382))))

(declare-fun mapNonEmpty!47114 () Bool)

(declare-fun mapRes!47114 () Bool)

(declare-fun tp!89698 () Bool)

(declare-fun e!678180 () Bool)

(assert (=> mapNonEmpty!47114 (= mapRes!47114 (and tp!89698 e!678180))))

(declare-fun mapRest!47114 () (Array (_ BitVec 32) ValueCell!14386))

(declare-fun mapKey!47114 () (_ BitVec 32))

(declare-fun mapValue!47114 () ValueCell!14386)

(assert (=> mapNonEmpty!47114 (= (arr!37220 _values!996) (store mapRest!47114 mapKey!47114 mapValue!47114))))

(declare-fun b!1193148 () Bool)

(declare-fun e!678181 () Bool)

(assert (=> b!1193148 (= e!678181 true)))

(declare-fun zeroValue!944 () V!45381)

(declare-fun lt!542457 () array!77146)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!542455 () array!77148)

(declare-fun minValue!944 () V!45381)

(declare-datatypes ((tuple2!19628 0))(
  ( (tuple2!19629 (_1!9824 (_ BitVec 64)) (_2!9824 V!45381)) )
))
(declare-datatypes ((List!26386 0))(
  ( (Nil!26383) (Cons!26382 (h!27591 tuple2!19628) (t!39046 List!26386)) )
))
(declare-datatypes ((ListLongMap!17609 0))(
  ( (ListLongMap!17610 (toList!8820 List!26386)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5234 (array!77146 array!77148 (_ BitVec 32) (_ BitVec 32) V!45381 V!45381 (_ BitVec 32) Int) ListLongMap!17609)

(declare-fun -!1793 (ListLongMap!17609 (_ BitVec 64)) ListLongMap!17609)

(assert (=> b!1193148 (= (getCurrentListMapNoExtraKeys!5234 lt!542457 lt!542455 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1793 (getCurrentListMapNoExtraKeys!5234 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!542460 () Unit!39524)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!999 (array!77146 array!77148 (_ BitVec 32) (_ BitVec 32) V!45381 V!45381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39524)

(assert (=> b!1193148 (= lt!542460 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!999 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193149 () Bool)

(assert (=> b!1193149 (= e!678175 e!678181)))

(declare-fun res!793882 () Bool)

(assert (=> b!1193149 (=> res!793882 e!678181)))

(assert (=> b!1193149 (= res!793882 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542456 () ListLongMap!17609)

(assert (=> b!1193149 (= lt!542456 (getCurrentListMapNoExtraKeys!5234 lt!542457 lt!542455 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3173 (Int (_ BitVec 64)) V!45381)

(assert (=> b!1193149 (= lt!542455 (array!77149 (store (arr!37220 _values!996) i!673 (ValueCellFull!14386 (dynLambda!3173 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37757 _values!996)))))

(declare-fun lt!542458 () ListLongMap!17609)

(assert (=> b!1193149 (= lt!542458 (getCurrentListMapNoExtraKeys!5234 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193150 () Bool)

(declare-fun res!793886 () Bool)

(assert (=> b!1193150 (=> (not res!793886) (not e!678179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193150 (= res!793886 (validMask!0 mask!1564))))

(declare-fun b!1193151 () Bool)

(declare-fun tp_is_empty!30191 () Bool)

(assert (=> b!1193151 (= e!678180 tp_is_empty!30191)))

(declare-fun b!1193152 () Bool)

(declare-fun res!793879 () Bool)

(assert (=> b!1193152 (=> (not res!793879) (not e!678179))))

(assert (=> b!1193152 (= res!793879 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37756 _keys!1208))))))

(declare-fun b!1193153 () Bool)

(declare-fun res!793878 () Bool)

(assert (=> b!1193153 (=> (not res!793878) (not e!678179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193153 (= res!793878 (validKeyInArray!0 k!934))))

(declare-fun b!1193154 () Bool)

(declare-fun res!793885 () Bool)

(assert (=> b!1193154 (=> (not res!793885) (not e!678179))))

(assert (=> b!1193154 (= res!793885 (= (select (arr!37219 _keys!1208) i!673) k!934))))

(declare-fun b!1193155 () Bool)

(declare-fun e!678176 () Bool)

(assert (=> b!1193155 (= e!678176 tp_is_empty!30191)))

(declare-fun mapIsEmpty!47114 () Bool)

(assert (=> mapIsEmpty!47114 mapRes!47114))

(declare-fun b!1193156 () Bool)

(declare-fun res!793881 () Bool)

(assert (=> b!1193156 (=> (not res!793881) (not e!678177))))

(assert (=> b!1193156 (= res!793881 (arrayNoDuplicates!0 lt!542457 #b00000000000000000000000000000000 Nil!26382))))

(declare-fun b!1193157 () Bool)

(assert (=> b!1193157 (= e!678179 e!678177)))

(declare-fun res!793883 () Bool)

(assert (=> b!1193157 (=> (not res!793883) (not e!678177))))

(assert (=> b!1193157 (= res!793883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542457 mask!1564))))

(assert (=> b!1193157 (= lt!542457 (array!77147 (store (arr!37219 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37756 _keys!1208)))))

(declare-fun b!1193147 () Bool)

(declare-fun e!678178 () Bool)

(assert (=> b!1193147 (= e!678178 (and e!678176 mapRes!47114))))

(declare-fun condMapEmpty!47114 () Bool)

(declare-fun mapDefault!47114 () ValueCell!14386)

