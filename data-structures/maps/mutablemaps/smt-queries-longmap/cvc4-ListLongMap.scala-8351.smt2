; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101696 () Bool)

(assert start!101696)

(declare-fun b_free!26381 () Bool)

(declare-fun b_next!26381 () Bool)

(assert (=> start!101696 (= b_free!26381 (not b_next!26381))))

(declare-fun tp!92187 () Bool)

(declare-fun b_and!44015 () Bool)

(assert (=> start!101696 (= tp!92187 b_and!44015)))

(declare-datatypes ((array!78928 0))(
  ( (array!78929 (arr!38088 (Array (_ BitVec 32) (_ BitVec 64))) (size!38625 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78928)

(declare-fun e!694593 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1222962 () Bool)

(declare-fun arrayContainsKey!0 (array!78928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222962 (= e!694593 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222963 () Bool)

(declare-fun e!694588 () Bool)

(declare-fun tp_is_empty!31085 () Bool)

(assert (=> b!1222963 (= e!694588 tp_is_empty!31085)))

(declare-fun b!1222964 () Bool)

(declare-fun e!694591 () Bool)

(declare-fun e!694585 () Bool)

(assert (=> b!1222964 (= e!694591 e!694585)))

(declare-fun res!812683 () Bool)

(assert (=> b!1222964 (=> res!812683 e!694585)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222964 (= res!812683 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46573 0))(
  ( (V!46574 (val!15599 Int)) )
))
(declare-fun zeroValue!944 () V!46573)

(declare-datatypes ((ValueCell!14833 0))(
  ( (ValueCellFull!14833 (v!18261 V!46573)) (EmptyCell!14833) )
))
(declare-datatypes ((array!78930 0))(
  ( (array!78931 (arr!38089 (Array (_ BitVec 32) ValueCell!14833)) (size!38626 (_ BitVec 32))) )
))
(declare-fun lt!556526 () array!78930)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20238 0))(
  ( (tuple2!20239 (_1!10129 (_ BitVec 64)) (_2!10129 V!46573)) )
))
(declare-datatypes ((List!27051 0))(
  ( (Nil!27048) (Cons!27047 (h!28256 tuple2!20238) (t!40419 List!27051)) )
))
(declare-datatypes ((ListLongMap!18219 0))(
  ( (ListLongMap!18220 (toList!9125 List!27051)) )
))
(declare-fun lt!556519 () ListLongMap!18219)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46573)

(declare-fun lt!556521 () array!78928)

(declare-fun getCurrentListMapNoExtraKeys!5523 (array!78928 array!78930 (_ BitVec 32) (_ BitVec 32) V!46573 V!46573 (_ BitVec 32) Int) ListLongMap!18219)

(assert (=> b!1222964 (= lt!556519 (getCurrentListMapNoExtraKeys!5523 lt!556521 lt!556526 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556527 () V!46573)

(declare-fun _values!996 () array!78930)

(assert (=> b!1222964 (= lt!556526 (array!78931 (store (arr!38089 _values!996) i!673 (ValueCellFull!14833 lt!556527)) (size!38626 _values!996)))))

(declare-fun dynLambda!3419 (Int (_ BitVec 64)) V!46573)

(assert (=> b!1222964 (= lt!556527 (dynLambda!3419 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556515 () ListLongMap!18219)

(assert (=> b!1222964 (= lt!556515 (getCurrentListMapNoExtraKeys!5523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222965 () Bool)

(declare-fun res!812682 () Bool)

(declare-fun e!694590 () Bool)

(assert (=> b!1222965 (=> (not res!812682) (not e!694590))))

(assert (=> b!1222965 (= res!812682 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38625 _keys!1208))))))

(declare-fun b!1222966 () Bool)

(declare-fun e!694584 () Bool)

(assert (=> b!1222966 (= e!694584 (bvslt from!1455 (size!38626 _values!996)))))

(assert (=> b!1222966 (not (= (select (arr!38088 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!40437 0))(
  ( (Unit!40438) )
))
(declare-fun lt!556518 () Unit!40437)

(declare-fun e!694594 () Unit!40437)

(assert (=> b!1222966 (= lt!556518 e!694594)))

(declare-fun c!120297 () Bool)

(assert (=> b!1222966 (= c!120297 (= (select (arr!38088 _keys!1208) from!1455) k!934))))

(declare-fun e!694587 () Bool)

(assert (=> b!1222966 e!694587))

(declare-fun res!812688 () Bool)

(assert (=> b!1222966 (=> (not res!812688) (not e!694587))))

(declare-fun lt!556524 () ListLongMap!18219)

(declare-fun +!4089 (ListLongMap!18219 tuple2!20238) ListLongMap!18219)

(declare-fun get!19487 (ValueCell!14833 V!46573) V!46573)

(assert (=> b!1222966 (= res!812688 (= lt!556519 (+!4089 lt!556524 (tuple2!20239 (select (arr!38088 _keys!1208) from!1455) (get!19487 (select (arr!38089 _values!996) from!1455) lt!556527)))))))

(declare-fun b!1222967 () Bool)

(declare-fun e!694586 () Bool)

(assert (=> b!1222967 (= e!694590 e!694586)))

(declare-fun res!812676 () Bool)

(assert (=> b!1222967 (=> (not res!812676) (not e!694586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78928 (_ BitVec 32)) Bool)

(assert (=> b!1222967 (= res!812676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556521 mask!1564))))

(assert (=> b!1222967 (= lt!556521 (array!78929 (store (arr!38088 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38625 _keys!1208)))))

(declare-fun b!1222968 () Bool)

(assert (=> b!1222968 (= e!694587 e!694593)))

(declare-fun res!812686 () Bool)

(assert (=> b!1222968 (=> res!812686 e!694593)))

(assert (=> b!1222968 (= res!812686 (not (= (select (arr!38088 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222969 () Bool)

(declare-fun res!812685 () Bool)

(assert (=> b!1222969 (=> (not res!812685) (not e!694590))))

(assert (=> b!1222969 (= res!812685 (and (= (size!38626 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38625 _keys!1208) (size!38626 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222970 () Bool)

(declare-fun res!812677 () Bool)

(assert (=> b!1222970 (=> (not res!812677) (not e!694590))))

(declare-datatypes ((List!27052 0))(
  ( (Nil!27049) (Cons!27048 (h!28257 (_ BitVec 64)) (t!40420 List!27052)) )
))
(declare-fun arrayNoDuplicates!0 (array!78928 (_ BitVec 32) List!27052) Bool)

(assert (=> b!1222970 (= res!812677 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27049))))

(declare-fun b!1222971 () Bool)

(declare-fun res!812681 () Bool)

(assert (=> b!1222971 (=> (not res!812681) (not e!694590))))

(assert (=> b!1222971 (= res!812681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222972 () Bool)

(declare-fun Unit!40439 () Unit!40437)

(assert (=> b!1222972 (= e!694594 Unit!40439)))

(declare-fun b!1222973 () Bool)

(assert (=> b!1222973 (= e!694585 e!694584)))

(declare-fun res!812675 () Bool)

(assert (=> b!1222973 (=> res!812675 e!694584)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222973 (= res!812675 (not (validKeyInArray!0 (select (arr!38088 _keys!1208) from!1455))))))

(declare-fun lt!556525 () ListLongMap!18219)

(assert (=> b!1222973 (= lt!556525 lt!556524)))

(declare-fun lt!556522 () ListLongMap!18219)

(declare-fun -!1967 (ListLongMap!18219 (_ BitVec 64)) ListLongMap!18219)

(assert (=> b!1222973 (= lt!556524 (-!1967 lt!556522 k!934))))

(assert (=> b!1222973 (= lt!556525 (getCurrentListMapNoExtraKeys!5523 lt!556521 lt!556526 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222973 (= lt!556522 (getCurrentListMapNoExtraKeys!5523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556514 () Unit!40437)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1169 (array!78928 array!78930 (_ BitVec 32) (_ BitVec 32) V!46573 V!46573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40437)

(assert (=> b!1222973 (= lt!556514 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1169 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222974 () Bool)

(declare-fun res!812684 () Bool)

(assert (=> b!1222974 (=> (not res!812684) (not e!694590))))

(assert (=> b!1222974 (= res!812684 (validKeyInArray!0 k!934))))

(declare-fun b!1222975 () Bool)

(declare-fun res!812679 () Bool)

(assert (=> b!1222975 (=> (not res!812679) (not e!694590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222975 (= res!812679 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!48523 () Bool)

(declare-fun mapRes!48523 () Bool)

(declare-fun tp!92186 () Bool)

(assert (=> mapNonEmpty!48523 (= mapRes!48523 (and tp!92186 e!694588))))

(declare-fun mapValue!48523 () ValueCell!14833)

(declare-fun mapRest!48523 () (Array (_ BitVec 32) ValueCell!14833))

(declare-fun mapKey!48523 () (_ BitVec 32))

(assert (=> mapNonEmpty!48523 (= (arr!38089 _values!996) (store mapRest!48523 mapKey!48523 mapValue!48523))))

(declare-fun b!1222976 () Bool)

(declare-fun res!812689 () Bool)

(assert (=> b!1222976 (=> (not res!812689) (not e!694586))))

(assert (=> b!1222976 (= res!812689 (arrayNoDuplicates!0 lt!556521 #b00000000000000000000000000000000 Nil!27049))))

(declare-fun b!1222977 () Bool)

(declare-fun res!812680 () Bool)

(assert (=> b!1222977 (=> (not res!812680) (not e!694590))))

(assert (=> b!1222977 (= res!812680 (= (select (arr!38088 _keys!1208) i!673) k!934))))

(declare-fun b!1222978 () Bool)

(declare-fun e!694595 () Bool)

(assert (=> b!1222978 (= e!694595 tp_is_empty!31085)))

(declare-fun b!1222979 () Bool)

(declare-fun e!694589 () Bool)

(assert (=> b!1222979 (= e!694589 (and e!694595 mapRes!48523))))

(declare-fun condMapEmpty!48523 () Bool)

(declare-fun mapDefault!48523 () ValueCell!14833)

