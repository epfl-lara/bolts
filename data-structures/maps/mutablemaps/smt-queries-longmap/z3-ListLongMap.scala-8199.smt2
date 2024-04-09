; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100098 () Bool)

(assert start!100098)

(declare-fun b_free!25641 () Bool)

(declare-fun b_next!25641 () Bool)

(assert (=> start!100098 (= b_free!25641 (not b_next!25641))))

(declare-fun tp!89637 () Bool)

(declare-fun b_and!42163 () Bool)

(assert (=> start!100098 (= tp!89637 b_and!42163)))

(declare-fun b!1192673 () Bool)

(declare-fun e!677938 () Bool)

(assert (=> b!1192673 (= e!677938 true)))

(declare-datatypes ((V!45355 0))(
  ( (V!45356 (val!15142 Int)) )
))
(declare-fun zeroValue!944 () V!45355)

(declare-datatypes ((array!77106 0))(
  ( (array!77107 (arr!37199 (Array (_ BitVec 32) (_ BitVec 64))) (size!37736 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77106)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14376 0))(
  ( (ValueCellFull!14376 (v!17781 V!45355)) (EmptyCell!14376) )
))
(declare-datatypes ((array!77108 0))(
  ( (array!77109 (arr!37200 (Array (_ BitVec 32) ValueCell!14376)) (size!37737 (_ BitVec 32))) )
))
(declare-fun lt!542277 () array!77108)

(declare-fun minValue!944 () V!45355)

(declare-fun lt!542280 () array!77106)

(declare-fun _values!996 () array!77108)

(declare-datatypes ((tuple2!19608 0))(
  ( (tuple2!19609 (_1!9814 (_ BitVec 64)) (_2!9814 V!45355)) )
))
(declare-datatypes ((List!26368 0))(
  ( (Nil!26365) (Cons!26364 (h!27573 tuple2!19608) (t!39008 List!26368)) )
))
(declare-datatypes ((ListLongMap!17589 0))(
  ( (ListLongMap!17590 (toList!8810 List!26368)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5224 (array!77106 array!77108 (_ BitVec 32) (_ BitVec 32) V!45355 V!45355 (_ BitVec 32) Int) ListLongMap!17589)

(declare-fun -!1786 (ListLongMap!17589 (_ BitVec 64)) ListLongMap!17589)

(assert (=> b!1192673 (= (getCurrentListMapNoExtraKeys!5224 lt!542280 lt!542277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1786 (getCurrentListMapNoExtraKeys!5224 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39508 0))(
  ( (Unit!39509) )
))
(declare-fun lt!542279 () Unit!39508)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!992 (array!77106 array!77108 (_ BitVec 32) (_ BitVec 32) V!45355 V!45355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39508)

(assert (=> b!1192673 (= lt!542279 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!992 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192674 () Bool)

(declare-fun e!677937 () Bool)

(declare-fun e!677941 () Bool)

(assert (=> b!1192674 (= e!677937 (not e!677941))))

(declare-fun res!793523 () Bool)

(assert (=> b!1192674 (=> res!793523 e!677941)))

(assert (=> b!1192674 (= res!793523 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192674 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542275 () Unit!39508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77106 (_ BitVec 64) (_ BitVec 32)) Unit!39508)

(assert (=> b!1192674 (= lt!542275 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1192675 () Bool)

(declare-fun e!677940 () Bool)

(declare-fun tp_is_empty!30171 () Bool)

(assert (=> b!1192675 (= e!677940 tp_is_empty!30171)))

(declare-fun b!1192676 () Bool)

(declare-fun res!793522 () Bool)

(declare-fun e!677934 () Bool)

(assert (=> b!1192676 (=> (not res!793522) (not e!677934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77106 (_ BitVec 32)) Bool)

(assert (=> b!1192676 (= res!793522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192677 () Bool)

(declare-fun e!677939 () Bool)

(assert (=> b!1192677 (= e!677939 tp_is_empty!30171)))

(declare-fun mapIsEmpty!47084 () Bool)

(declare-fun mapRes!47084 () Bool)

(assert (=> mapIsEmpty!47084 mapRes!47084))

(declare-fun b!1192678 () Bool)

(declare-fun res!793518 () Bool)

(assert (=> b!1192678 (=> (not res!793518) (not e!677934))))

(assert (=> b!1192678 (= res!793518 (= (select (arr!37199 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47084 () Bool)

(declare-fun tp!89638 () Bool)

(assert (=> mapNonEmpty!47084 (= mapRes!47084 (and tp!89638 e!677940))))

(declare-fun mapValue!47084 () ValueCell!14376)

(declare-fun mapRest!47084 () (Array (_ BitVec 32) ValueCell!14376))

(declare-fun mapKey!47084 () (_ BitVec 32))

(assert (=> mapNonEmpty!47084 (= (arr!37200 _values!996) (store mapRest!47084 mapKey!47084 mapValue!47084))))

(declare-fun res!793528 () Bool)

(assert (=> start!100098 (=> (not res!793528) (not e!677934))))

(assert (=> start!100098 (= res!793528 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37736 _keys!1208))))))

(assert (=> start!100098 e!677934))

(assert (=> start!100098 tp_is_empty!30171))

(declare-fun array_inv!28262 (array!77106) Bool)

(assert (=> start!100098 (array_inv!28262 _keys!1208)))

(assert (=> start!100098 true))

(assert (=> start!100098 tp!89637))

(declare-fun e!677935 () Bool)

(declare-fun array_inv!28263 (array!77108) Bool)

(assert (=> start!100098 (and (array_inv!28263 _values!996) e!677935)))

(declare-fun b!1192679 () Bool)

(declare-fun res!793517 () Bool)

(assert (=> b!1192679 (=> (not res!793517) (not e!677934))))

(declare-datatypes ((List!26369 0))(
  ( (Nil!26366) (Cons!26365 (h!27574 (_ BitVec 64)) (t!39009 List!26369)) )
))
(declare-fun arrayNoDuplicates!0 (array!77106 (_ BitVec 32) List!26369) Bool)

(assert (=> b!1192679 (= res!793517 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26366))))

(declare-fun b!1192680 () Bool)

(assert (=> b!1192680 (= e!677941 e!677938)))

(declare-fun res!793526 () Bool)

(assert (=> b!1192680 (=> res!793526 e!677938)))

(assert (=> b!1192680 (= res!793526 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542278 () ListLongMap!17589)

(assert (=> b!1192680 (= lt!542278 (getCurrentListMapNoExtraKeys!5224 lt!542280 lt!542277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3164 (Int (_ BitVec 64)) V!45355)

(assert (=> b!1192680 (= lt!542277 (array!77109 (store (arr!37200 _values!996) i!673 (ValueCellFull!14376 (dynLambda!3164 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37737 _values!996)))))

(declare-fun lt!542276 () ListLongMap!17589)

(assert (=> b!1192680 (= lt!542276 (getCurrentListMapNoExtraKeys!5224 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192681 () Bool)

(declare-fun res!793519 () Bool)

(assert (=> b!1192681 (=> (not res!793519) (not e!677934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192681 (= res!793519 (validKeyInArray!0 k0!934))))

(declare-fun b!1192682 () Bool)

(declare-fun res!793525 () Bool)

(assert (=> b!1192682 (=> (not res!793525) (not e!677934))))

(assert (=> b!1192682 (= res!793525 (and (= (size!37737 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37736 _keys!1208) (size!37737 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192683 () Bool)

(declare-fun res!793524 () Bool)

(assert (=> b!1192683 (=> (not res!793524) (not e!677934))))

(assert (=> b!1192683 (= res!793524 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37736 _keys!1208))))))

(declare-fun b!1192684 () Bool)

(declare-fun res!793527 () Bool)

(assert (=> b!1192684 (=> (not res!793527) (not e!677934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192684 (= res!793527 (validMask!0 mask!1564))))

(declare-fun b!1192685 () Bool)

(declare-fun res!793520 () Bool)

(assert (=> b!1192685 (=> (not res!793520) (not e!677937))))

(assert (=> b!1192685 (= res!793520 (arrayNoDuplicates!0 lt!542280 #b00000000000000000000000000000000 Nil!26366))))

(declare-fun b!1192686 () Bool)

(assert (=> b!1192686 (= e!677934 e!677937)))

(declare-fun res!793521 () Bool)

(assert (=> b!1192686 (=> (not res!793521) (not e!677937))))

(assert (=> b!1192686 (= res!793521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542280 mask!1564))))

(assert (=> b!1192686 (= lt!542280 (array!77107 (store (arr!37199 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37736 _keys!1208)))))

(declare-fun b!1192687 () Bool)

(assert (=> b!1192687 (= e!677935 (and e!677939 mapRes!47084))))

(declare-fun condMapEmpty!47084 () Bool)

(declare-fun mapDefault!47084 () ValueCell!14376)

(assert (=> b!1192687 (= condMapEmpty!47084 (= (arr!37200 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14376)) mapDefault!47084)))))

(assert (= (and start!100098 res!793528) b!1192684))

(assert (= (and b!1192684 res!793527) b!1192682))

(assert (= (and b!1192682 res!793525) b!1192676))

(assert (= (and b!1192676 res!793522) b!1192679))

(assert (= (and b!1192679 res!793517) b!1192683))

(assert (= (and b!1192683 res!793524) b!1192681))

(assert (= (and b!1192681 res!793519) b!1192678))

(assert (= (and b!1192678 res!793518) b!1192686))

(assert (= (and b!1192686 res!793521) b!1192685))

(assert (= (and b!1192685 res!793520) b!1192674))

(assert (= (and b!1192674 (not res!793523)) b!1192680))

(assert (= (and b!1192680 (not res!793526)) b!1192673))

(assert (= (and b!1192687 condMapEmpty!47084) mapIsEmpty!47084))

(assert (= (and b!1192687 (not condMapEmpty!47084)) mapNonEmpty!47084))

(get-info :version)

(assert (= (and mapNonEmpty!47084 ((_ is ValueCellFull!14376) mapValue!47084)) b!1192675))

(assert (= (and b!1192687 ((_ is ValueCellFull!14376) mapDefault!47084)) b!1192677))

(assert (= start!100098 b!1192687))

(declare-fun b_lambda!20803 () Bool)

(assert (=> (not b_lambda!20803) (not b!1192680)))

(declare-fun t!39007 () Bool)

(declare-fun tb!10461 () Bool)

(assert (=> (and start!100098 (= defaultEntry!1004 defaultEntry!1004) t!39007) tb!10461))

(declare-fun result!21481 () Bool)

(assert (=> tb!10461 (= result!21481 tp_is_empty!30171)))

(assert (=> b!1192680 t!39007))

(declare-fun b_and!42165 () Bool)

(assert (= b_and!42163 (and (=> t!39007 result!21481) b_and!42165)))

(declare-fun m!1101053 () Bool)

(assert (=> b!1192679 m!1101053))

(declare-fun m!1101055 () Bool)

(assert (=> b!1192685 m!1101055))

(declare-fun m!1101057 () Bool)

(assert (=> b!1192686 m!1101057))

(declare-fun m!1101059 () Bool)

(assert (=> b!1192686 m!1101059))

(declare-fun m!1101061 () Bool)

(assert (=> b!1192676 m!1101061))

(declare-fun m!1101063 () Bool)

(assert (=> b!1192674 m!1101063))

(declare-fun m!1101065 () Bool)

(assert (=> b!1192674 m!1101065))

(declare-fun m!1101067 () Bool)

(assert (=> b!1192681 m!1101067))

(declare-fun m!1101069 () Bool)

(assert (=> b!1192673 m!1101069))

(declare-fun m!1101071 () Bool)

(assert (=> b!1192673 m!1101071))

(assert (=> b!1192673 m!1101071))

(declare-fun m!1101073 () Bool)

(assert (=> b!1192673 m!1101073))

(declare-fun m!1101075 () Bool)

(assert (=> b!1192673 m!1101075))

(declare-fun m!1101077 () Bool)

(assert (=> b!1192684 m!1101077))

(declare-fun m!1101079 () Bool)

(assert (=> mapNonEmpty!47084 m!1101079))

(declare-fun m!1101081 () Bool)

(assert (=> b!1192678 m!1101081))

(declare-fun m!1101083 () Bool)

(assert (=> start!100098 m!1101083))

(declare-fun m!1101085 () Bool)

(assert (=> start!100098 m!1101085))

(declare-fun m!1101087 () Bool)

(assert (=> b!1192680 m!1101087))

(declare-fun m!1101089 () Bool)

(assert (=> b!1192680 m!1101089))

(declare-fun m!1101091 () Bool)

(assert (=> b!1192680 m!1101091))

(declare-fun m!1101093 () Bool)

(assert (=> b!1192680 m!1101093))

(check-sat (not b!1192685) (not b!1192681) (not start!100098) (not b_lambda!20803) (not b!1192673) (not b!1192674) (not mapNonEmpty!47084) tp_is_empty!30171 (not b!1192684) (not b!1192679) (not b!1192676) (not b_next!25641) (not b!1192680) (not b!1192686) b_and!42165)
(check-sat b_and!42165 (not b_next!25641))
