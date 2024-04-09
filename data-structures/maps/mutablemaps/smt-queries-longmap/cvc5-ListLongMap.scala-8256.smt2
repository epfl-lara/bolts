; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100520 () Bool)

(assert start!100520)

(declare-fun b_free!25807 () Bool)

(declare-fun b_next!25807 () Bool)

(assert (=> start!100520 (= b_free!25807 (not b_next!25807))))

(declare-fun tp!90412 () Bool)

(declare-fun b_and!42515 () Bool)

(assert (=> start!100520 (= tp!90412 b_and!42515)))

(declare-fun b!1200092 () Bool)

(declare-fun e!681589 () Bool)

(declare-fun tp_is_empty!30511 () Bool)

(assert (=> b!1200092 (= e!681589 tp_is_empty!30511)))

(declare-fun b!1200093 () Bool)

(declare-fun e!681592 () Bool)

(assert (=> b!1200093 (= e!681592 tp_is_empty!30511)))

(declare-fun b!1200094 () Bool)

(declare-fun res!798938 () Bool)

(declare-fun e!681593 () Bool)

(assert (=> b!1200094 (=> (not res!798938) (not e!681593))))

(declare-datatypes ((array!77776 0))(
  ( (array!77777 (arr!37529 (Array (_ BitVec 32) (_ BitVec 64))) (size!38066 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77776)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77776 (_ BitVec 32)) Bool)

(assert (=> b!1200094 (= res!798938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200095 () Bool)

(declare-fun res!798946 () Bool)

(assert (=> b!1200095 (=> (not res!798946) (not e!681593))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200095 (= res!798946 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38066 _keys!1208))))))

(declare-fun b!1200096 () Bool)

(declare-fun res!798948 () Bool)

(assert (=> b!1200096 (=> (not res!798948) (not e!681593))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200096 (= res!798948 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47609 () Bool)

(declare-fun mapRes!47609 () Bool)

(assert (=> mapIsEmpty!47609 mapRes!47609))

(declare-fun b!1200097 () Bool)

(declare-fun e!681590 () Bool)

(assert (=> b!1200097 (= e!681590 true)))

(declare-datatypes ((V!45809 0))(
  ( (V!45810 (val!15312 Int)) )
))
(declare-fun zeroValue!944 () V!45809)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!543911 () array!77776)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19740 0))(
  ( (tuple2!19741 (_1!9880 (_ BitVec 64)) (_2!9880 V!45809)) )
))
(declare-datatypes ((List!26573 0))(
  ( (Nil!26570) (Cons!26569 (h!27778 tuple2!19740) (t!39367 List!26573)) )
))
(declare-datatypes ((ListLongMap!17721 0))(
  ( (ListLongMap!17722 (toList!8876 List!26573)) )
))
(declare-fun lt!543913 () ListLongMap!17721)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14546 0))(
  ( (ValueCellFull!14546 (v!17951 V!45809)) (EmptyCell!14546) )
))
(declare-datatypes ((array!77778 0))(
  ( (array!77779 (arr!37530 (Array (_ BitVec 32) ValueCell!14546)) (size!38067 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77778)

(declare-fun minValue!944 () V!45809)

(declare-fun getCurrentListMapNoExtraKeys!5289 (array!77776 array!77778 (_ BitVec 32) (_ BitVec 32) V!45809 V!45809 (_ BitVec 32) Int) ListLongMap!17721)

(declare-fun dynLambda!3220 (Int (_ BitVec 64)) V!45809)

(assert (=> b!1200097 (= lt!543913 (getCurrentListMapNoExtraKeys!5289 lt!543911 (array!77779 (store (arr!37530 _values!996) i!673 (ValueCellFull!14546 (dynLambda!3220 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38067 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543910 () ListLongMap!17721)

(assert (=> b!1200097 (= lt!543910 (getCurrentListMapNoExtraKeys!5289 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200098 () Bool)

(declare-fun res!798947 () Bool)

(assert (=> b!1200098 (=> (not res!798947) (not e!681593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200098 (= res!798947 (validMask!0 mask!1564))))

(declare-fun b!1200099 () Bool)

(declare-fun res!798939 () Bool)

(assert (=> b!1200099 (=> (not res!798939) (not e!681593))))

(assert (=> b!1200099 (= res!798939 (and (= (size!38067 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38066 _keys!1208) (size!38067 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200100 () Bool)

(declare-fun e!681594 () Bool)

(assert (=> b!1200100 (= e!681593 e!681594)))

(declare-fun res!798944 () Bool)

(assert (=> b!1200100 (=> (not res!798944) (not e!681594))))

(assert (=> b!1200100 (= res!798944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543911 mask!1564))))

(assert (=> b!1200100 (= lt!543911 (array!77777 (store (arr!37529 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38066 _keys!1208)))))

(declare-fun b!1200101 () Bool)

(declare-fun res!798945 () Bool)

(assert (=> b!1200101 (=> (not res!798945) (not e!681593))))

(declare-datatypes ((List!26574 0))(
  ( (Nil!26571) (Cons!26570 (h!27779 (_ BitVec 64)) (t!39368 List!26574)) )
))
(declare-fun arrayNoDuplicates!0 (array!77776 (_ BitVec 32) List!26574) Bool)

(assert (=> b!1200101 (= res!798945 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26571))))

(declare-fun res!798942 () Bool)

(assert (=> start!100520 (=> (not res!798942) (not e!681593))))

(assert (=> start!100520 (= res!798942 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38066 _keys!1208))))))

(assert (=> start!100520 e!681593))

(assert (=> start!100520 tp_is_empty!30511))

(declare-fun array_inv!28502 (array!77776) Bool)

(assert (=> start!100520 (array_inv!28502 _keys!1208)))

(assert (=> start!100520 true))

(assert (=> start!100520 tp!90412))

(declare-fun e!681591 () Bool)

(declare-fun array_inv!28503 (array!77778) Bool)

(assert (=> start!100520 (and (array_inv!28503 _values!996) e!681591)))

(declare-fun b!1200102 () Bool)

(declare-fun res!798943 () Bool)

(assert (=> b!1200102 (=> (not res!798943) (not e!681593))))

(assert (=> b!1200102 (= res!798943 (= (select (arr!37529 _keys!1208) i!673) k!934))))

(declare-fun b!1200103 () Bool)

(assert (=> b!1200103 (= e!681594 (not e!681590))))

(declare-fun res!798940 () Bool)

(assert (=> b!1200103 (=> res!798940 e!681590)))

(assert (=> b!1200103 (= res!798940 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200103 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39720 0))(
  ( (Unit!39721) )
))
(declare-fun lt!543912 () Unit!39720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77776 (_ BitVec 64) (_ BitVec 32)) Unit!39720)

(assert (=> b!1200103 (= lt!543912 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!47609 () Bool)

(declare-fun tp!90411 () Bool)

(assert (=> mapNonEmpty!47609 (= mapRes!47609 (and tp!90411 e!681592))))

(declare-fun mapValue!47609 () ValueCell!14546)

(declare-fun mapKey!47609 () (_ BitVec 32))

(declare-fun mapRest!47609 () (Array (_ BitVec 32) ValueCell!14546))

(assert (=> mapNonEmpty!47609 (= (arr!37530 _values!996) (store mapRest!47609 mapKey!47609 mapValue!47609))))

(declare-fun b!1200104 () Bool)

(declare-fun res!798941 () Bool)

(assert (=> b!1200104 (=> (not res!798941) (not e!681594))))

(assert (=> b!1200104 (= res!798941 (arrayNoDuplicates!0 lt!543911 #b00000000000000000000000000000000 Nil!26571))))

(declare-fun b!1200105 () Bool)

(assert (=> b!1200105 (= e!681591 (and e!681589 mapRes!47609))))

(declare-fun condMapEmpty!47609 () Bool)

(declare-fun mapDefault!47609 () ValueCell!14546)

