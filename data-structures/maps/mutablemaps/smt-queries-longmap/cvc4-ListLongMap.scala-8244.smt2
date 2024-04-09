; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100452 () Bool)

(assert start!100452)

(declare-fun b_free!25739 () Bool)

(declare-fun b_next!25739 () Bool)

(assert (=> start!100452 (= b_free!25739 (not b_next!25739))))

(declare-fun tp!90208 () Bool)

(declare-fun b_and!42379 () Bool)

(assert (=> start!100452 (= tp!90208 b_and!42379)))

(declare-fun res!797825 () Bool)

(declare-fun e!680878 () Bool)

(assert (=> start!100452 (=> (not res!797825) (not e!680878))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77648 0))(
  ( (array!77649 (arr!37465 (Array (_ BitVec 32) (_ BitVec 64))) (size!38002 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77648)

(assert (=> start!100452 (= res!797825 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38002 _keys!1208))))))

(assert (=> start!100452 e!680878))

(declare-fun tp_is_empty!30443 () Bool)

(assert (=> start!100452 tp_is_empty!30443))

(declare-fun array_inv!28456 (array!77648) Bool)

(assert (=> start!100452 (array_inv!28456 _keys!1208)))

(assert (=> start!100452 true))

(assert (=> start!100452 tp!90208))

(declare-datatypes ((V!45717 0))(
  ( (V!45718 (val!15278 Int)) )
))
(declare-datatypes ((ValueCell!14512 0))(
  ( (ValueCellFull!14512 (v!17917 V!45717)) (EmptyCell!14512) )
))
(declare-datatypes ((array!77650 0))(
  ( (array!77651 (arr!37466 (Array (_ BitVec 32) ValueCell!14512)) (size!38003 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77650)

(declare-fun e!680875 () Bool)

(declare-fun array_inv!28457 (array!77650) Bool)

(assert (=> start!100452 (and (array_inv!28457 _values!996) e!680875)))

(declare-fun b!1198596 () Bool)

(declare-fun res!797819 () Bool)

(assert (=> b!1198596 (=> (not res!797819) (not e!680878))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198596 (= res!797819 (validKeyInArray!0 k!934))))

(declare-fun b!1198597 () Bool)

(declare-fun e!680881 () Bool)

(assert (=> b!1198597 (= e!680881 tp_is_empty!30443)))

(declare-fun b!1198598 () Bool)

(declare-fun res!797823 () Bool)

(assert (=> b!1198598 (=> (not res!797823) (not e!680878))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198598 (= res!797823 (= (select (arr!37465 _keys!1208) i!673) k!934))))

(declare-fun b!1198599 () Bool)

(declare-fun res!797818 () Bool)

(assert (=> b!1198599 (=> (not res!797818) (not e!680878))))

(assert (=> b!1198599 (= res!797818 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38002 _keys!1208))))))

(declare-fun b!1198600 () Bool)

(declare-fun e!680880 () Bool)

(assert (=> b!1198600 (= e!680878 e!680880)))

(declare-fun res!797816 () Bool)

(assert (=> b!1198600 (=> (not res!797816) (not e!680880))))

(declare-fun lt!543505 () array!77648)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77648 (_ BitVec 32)) Bool)

(assert (=> b!1198600 (= res!797816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543505 mask!1564))))

(assert (=> b!1198600 (= lt!543505 (array!77649 (store (arr!37465 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38002 _keys!1208)))))

(declare-fun b!1198601 () Bool)

(declare-fun e!680877 () Bool)

(assert (=> b!1198601 (= e!680880 (not e!680877))))

(declare-fun res!797826 () Bool)

(assert (=> b!1198601 (=> res!797826 e!680877)))

(assert (=> b!1198601 (= res!797826 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198601 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39676 0))(
  ( (Unit!39677) )
))
(declare-fun lt!543504 () Unit!39676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77648 (_ BitVec 64) (_ BitVec 32)) Unit!39676)

(assert (=> b!1198601 (= lt!543504 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198602 () Bool)

(declare-fun res!797822 () Bool)

(assert (=> b!1198602 (=> (not res!797822) (not e!680880))))

(declare-datatypes ((List!26524 0))(
  ( (Nil!26521) (Cons!26520 (h!27729 (_ BitVec 64)) (t!39250 List!26524)) )
))
(declare-fun arrayNoDuplicates!0 (array!77648 (_ BitVec 32) List!26524) Bool)

(assert (=> b!1198602 (= res!797822 (arrayNoDuplicates!0 lt!543505 #b00000000000000000000000000000000 Nil!26521))))

(declare-fun b!1198603 () Bool)

(declare-fun res!797821 () Bool)

(assert (=> b!1198603 (=> (not res!797821) (not e!680878))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1198603 (= res!797821 (and (= (size!38003 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38002 _keys!1208) (size!38003 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198604 () Bool)

(assert (=> b!1198604 (= e!680877 true)))

(declare-fun zeroValue!944 () V!45717)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19696 0))(
  ( (tuple2!19697 (_1!9858 (_ BitVec 64)) (_2!9858 V!45717)) )
))
(declare-datatypes ((List!26525 0))(
  ( (Nil!26522) (Cons!26521 (h!27730 tuple2!19696) (t!39251 List!26525)) )
))
(declare-datatypes ((ListLongMap!17677 0))(
  ( (ListLongMap!17678 (toList!8854 List!26525)) )
))
(declare-fun lt!543502 () ListLongMap!17677)

(declare-fun minValue!944 () V!45717)

(declare-fun getCurrentListMapNoExtraKeys!5267 (array!77648 array!77650 (_ BitVec 32) (_ BitVec 32) V!45717 V!45717 (_ BitVec 32) Int) ListLongMap!17677)

(declare-fun dynLambda!3198 (Int (_ BitVec 64)) V!45717)

(assert (=> b!1198604 (= lt!543502 (getCurrentListMapNoExtraKeys!5267 lt!543505 (array!77651 (store (arr!37466 _values!996) i!673 (ValueCellFull!14512 (dynLambda!3198 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38003 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543503 () ListLongMap!17677)

(assert (=> b!1198604 (= lt!543503 (getCurrentListMapNoExtraKeys!5267 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198605 () Bool)

(declare-fun res!797820 () Bool)

(assert (=> b!1198605 (=> (not res!797820) (not e!680878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198605 (= res!797820 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47507 () Bool)

(declare-fun mapRes!47507 () Bool)

(declare-fun tp!90207 () Bool)

(declare-fun e!680879 () Bool)

(assert (=> mapNonEmpty!47507 (= mapRes!47507 (and tp!90207 e!680879))))

(declare-fun mapValue!47507 () ValueCell!14512)

(declare-fun mapRest!47507 () (Array (_ BitVec 32) ValueCell!14512))

(declare-fun mapKey!47507 () (_ BitVec 32))

(assert (=> mapNonEmpty!47507 (= (arr!37466 _values!996) (store mapRest!47507 mapKey!47507 mapValue!47507))))

(declare-fun b!1198606 () Bool)

(declare-fun res!797824 () Bool)

(assert (=> b!1198606 (=> (not res!797824) (not e!680878))))

(assert (=> b!1198606 (= res!797824 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26521))))

(declare-fun b!1198607 () Bool)

(declare-fun res!797817 () Bool)

(assert (=> b!1198607 (=> (not res!797817) (not e!680878))))

(assert (=> b!1198607 (= res!797817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47507 () Bool)

(assert (=> mapIsEmpty!47507 mapRes!47507))

(declare-fun b!1198608 () Bool)

(assert (=> b!1198608 (= e!680879 tp_is_empty!30443)))

(declare-fun b!1198609 () Bool)

(assert (=> b!1198609 (= e!680875 (and e!680881 mapRes!47507))))

(declare-fun condMapEmpty!47507 () Bool)

(declare-fun mapDefault!47507 () ValueCell!14512)

