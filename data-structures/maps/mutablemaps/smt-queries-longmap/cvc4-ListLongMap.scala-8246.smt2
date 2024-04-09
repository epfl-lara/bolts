; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100464 () Bool)

(assert start!100464)

(declare-fun b_free!25751 () Bool)

(declare-fun b_next!25751 () Bool)

(assert (=> start!100464 (= b_free!25751 (not b_next!25751))))

(declare-fun tp!90244 () Bool)

(declare-fun b_and!42403 () Bool)

(assert (=> start!100464 (= tp!90244 b_and!42403)))

(declare-fun res!798014 () Bool)

(declare-fun e!681002 () Bool)

(assert (=> start!100464 (=> (not res!798014) (not e!681002))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77668 0))(
  ( (array!77669 (arr!37475 (Array (_ BitVec 32) (_ BitVec 64))) (size!38012 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77668)

(assert (=> start!100464 (= res!798014 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38012 _keys!1208))))))

(assert (=> start!100464 e!681002))

(declare-fun tp_is_empty!30455 () Bool)

(assert (=> start!100464 tp_is_empty!30455))

(declare-fun array_inv!28464 (array!77668) Bool)

(assert (=> start!100464 (array_inv!28464 _keys!1208)))

(assert (=> start!100464 true))

(assert (=> start!100464 tp!90244))

(declare-datatypes ((V!45733 0))(
  ( (V!45734 (val!15284 Int)) )
))
(declare-datatypes ((ValueCell!14518 0))(
  ( (ValueCellFull!14518 (v!17923 V!45733)) (EmptyCell!14518) )
))
(declare-datatypes ((array!77670 0))(
  ( (array!77671 (arr!37476 (Array (_ BitVec 32) ValueCell!14518)) (size!38013 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77670)

(declare-fun e!681005 () Bool)

(declare-fun array_inv!28465 (array!77670) Bool)

(assert (=> start!100464 (and (array_inv!28465 _values!996) e!681005)))

(declare-fun b!1198860 () Bool)

(declare-fun res!798024 () Bool)

(assert (=> b!1198860 (=> (not res!798024) (not e!681002))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198860 (= res!798024 (validKeyInArray!0 k!934))))

(declare-fun b!1198861 () Bool)

(declare-fun res!798020 () Bool)

(assert (=> b!1198861 (=> (not res!798020) (not e!681002))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1198861 (= res!798020 (and (= (size!38013 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38012 _keys!1208) (size!38013 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198862 () Bool)

(declare-fun e!681007 () Bool)

(assert (=> b!1198862 (= e!681007 true)))

(declare-fun zeroValue!944 () V!45733)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19704 0))(
  ( (tuple2!19705 (_1!9862 (_ BitVec 64)) (_2!9862 V!45733)) )
))
(declare-datatypes ((List!26532 0))(
  ( (Nil!26529) (Cons!26528 (h!27737 tuple2!19704) (t!39270 List!26532)) )
))
(declare-datatypes ((ListLongMap!17685 0))(
  ( (ListLongMap!17686 (toList!8858 List!26532)) )
))
(declare-fun lt!543576 () ListLongMap!17685)

(declare-fun lt!543575 () array!77668)

(declare-fun minValue!944 () V!45733)

(declare-fun getCurrentListMapNoExtraKeys!5271 (array!77668 array!77670 (_ BitVec 32) (_ BitVec 32) V!45733 V!45733 (_ BitVec 32) Int) ListLongMap!17685)

(declare-fun dynLambda!3202 (Int (_ BitVec 64)) V!45733)

(assert (=> b!1198862 (= lt!543576 (getCurrentListMapNoExtraKeys!5271 lt!543575 (array!77671 (store (arr!37476 _values!996) i!673 (ValueCellFull!14518 (dynLambda!3202 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38013 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543577 () ListLongMap!17685)

(assert (=> b!1198862 (= lt!543577 (getCurrentListMapNoExtraKeys!5271 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198863 () Bool)

(declare-fun e!681003 () Bool)

(assert (=> b!1198863 (= e!681003 tp_is_empty!30455)))

(declare-fun mapNonEmpty!47525 () Bool)

(declare-fun mapRes!47525 () Bool)

(declare-fun tp!90243 () Bool)

(assert (=> mapNonEmpty!47525 (= mapRes!47525 (and tp!90243 e!681003))))

(declare-fun mapRest!47525 () (Array (_ BitVec 32) ValueCell!14518))

(declare-fun mapValue!47525 () ValueCell!14518)

(declare-fun mapKey!47525 () (_ BitVec 32))

(assert (=> mapNonEmpty!47525 (= (arr!37476 _values!996) (store mapRest!47525 mapKey!47525 mapValue!47525))))

(declare-fun b!1198864 () Bool)

(declare-fun e!681006 () Bool)

(assert (=> b!1198864 (= e!681006 (not e!681007))))

(declare-fun res!798016 () Bool)

(assert (=> b!1198864 (=> res!798016 e!681007)))

(assert (=> b!1198864 (= res!798016 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198864 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39684 0))(
  ( (Unit!39685) )
))
(declare-fun lt!543574 () Unit!39684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77668 (_ BitVec 64) (_ BitVec 32)) Unit!39684)

(assert (=> b!1198864 (= lt!543574 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198865 () Bool)

(declare-fun res!798019 () Bool)

(assert (=> b!1198865 (=> (not res!798019) (not e!681002))))

(assert (=> b!1198865 (= res!798019 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38012 _keys!1208))))))

(declare-fun b!1198866 () Bool)

(declare-fun res!798017 () Bool)

(assert (=> b!1198866 (=> (not res!798017) (not e!681002))))

(declare-datatypes ((List!26533 0))(
  ( (Nil!26530) (Cons!26529 (h!27738 (_ BitVec 64)) (t!39271 List!26533)) )
))
(declare-fun arrayNoDuplicates!0 (array!77668 (_ BitVec 32) List!26533) Bool)

(assert (=> b!1198866 (= res!798017 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26530))))

(declare-fun b!1198867 () Bool)

(declare-fun res!798023 () Bool)

(assert (=> b!1198867 (=> (not res!798023) (not e!681002))))

(assert (=> b!1198867 (= res!798023 (= (select (arr!37475 _keys!1208) i!673) k!934))))

(declare-fun b!1198868 () Bool)

(declare-fun e!681001 () Bool)

(assert (=> b!1198868 (= e!681001 tp_is_empty!30455)))

(declare-fun mapIsEmpty!47525 () Bool)

(assert (=> mapIsEmpty!47525 mapRes!47525))

(declare-fun b!1198869 () Bool)

(assert (=> b!1198869 (= e!681002 e!681006)))

(declare-fun res!798022 () Bool)

(assert (=> b!1198869 (=> (not res!798022) (not e!681006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77668 (_ BitVec 32)) Bool)

(assert (=> b!1198869 (= res!798022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543575 mask!1564))))

(assert (=> b!1198869 (= lt!543575 (array!77669 (store (arr!37475 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38012 _keys!1208)))))

(declare-fun b!1198870 () Bool)

(declare-fun res!798015 () Bool)

(assert (=> b!1198870 (=> (not res!798015) (not e!681002))))

(assert (=> b!1198870 (= res!798015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198871 () Bool)

(assert (=> b!1198871 (= e!681005 (and e!681001 mapRes!47525))))

(declare-fun condMapEmpty!47525 () Bool)

(declare-fun mapDefault!47525 () ValueCell!14518)

