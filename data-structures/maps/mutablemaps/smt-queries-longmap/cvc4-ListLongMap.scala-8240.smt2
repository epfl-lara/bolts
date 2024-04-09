; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100410 () Bool)

(assert start!100410)

(declare-fun b_free!25715 () Bool)

(declare-fun b_next!25715 () Bool)

(assert (=> start!100410 (= b_free!25715 (not b_next!25715))))

(declare-fun tp!90132 () Bool)

(declare-fun b_and!42335 () Bool)

(assert (=> start!100410 (= tp!90132 b_and!42335)))

(declare-fun b!1197982 () Bool)

(declare-fun res!797380 () Bool)

(declare-fun e!680555 () Bool)

(assert (=> b!1197982 (=> (not res!797380) (not e!680555))))

(declare-datatypes ((array!77598 0))(
  ( (array!77599 (arr!37441 (Array (_ BitVec 32) (_ BitVec 64))) (size!37978 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77598)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77598 (_ BitVec 32)) Bool)

(assert (=> b!1197982 (= res!797380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47468 () Bool)

(declare-fun mapRes!47468 () Bool)

(declare-fun tp!90133 () Bool)

(declare-fun e!680560 () Bool)

(assert (=> mapNonEmpty!47468 (= mapRes!47468 (and tp!90133 e!680560))))

(declare-datatypes ((V!45685 0))(
  ( (V!45686 (val!15266 Int)) )
))
(declare-datatypes ((ValueCell!14500 0))(
  ( (ValueCellFull!14500 (v!17905 V!45685)) (EmptyCell!14500) )
))
(declare-fun mapRest!47468 () (Array (_ BitVec 32) ValueCell!14500))

(declare-datatypes ((array!77600 0))(
  ( (array!77601 (arr!37442 (Array (_ BitVec 32) ValueCell!14500)) (size!37979 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77600)

(declare-fun mapValue!47468 () ValueCell!14500)

(declare-fun mapKey!47468 () (_ BitVec 32))

(assert (=> mapNonEmpty!47468 (= (arr!37442 _values!996) (store mapRest!47468 mapKey!47468 mapValue!47468))))

(declare-fun b!1197983 () Bool)

(declare-fun e!680558 () Bool)

(assert (=> b!1197983 (= e!680555 e!680558)))

(declare-fun res!797378 () Bool)

(assert (=> b!1197983 (=> (not res!797378) (not e!680558))))

(declare-fun lt!543336 () array!77598)

(assert (=> b!1197983 (= res!797378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543336 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197983 (= lt!543336 (array!77599 (store (arr!37441 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37978 _keys!1208)))))

(declare-fun res!797384 () Bool)

(assert (=> start!100410 (=> (not res!797384) (not e!680555))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100410 (= res!797384 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37978 _keys!1208))))))

(assert (=> start!100410 e!680555))

(declare-fun tp_is_empty!30419 () Bool)

(assert (=> start!100410 tp_is_empty!30419))

(declare-fun array_inv!28440 (array!77598) Bool)

(assert (=> start!100410 (array_inv!28440 _keys!1208)))

(assert (=> start!100410 true))

(assert (=> start!100410 tp!90132))

(declare-fun e!680556 () Bool)

(declare-fun array_inv!28441 (array!77600) Bool)

(assert (=> start!100410 (and (array_inv!28441 _values!996) e!680556)))

(declare-fun b!1197984 () Bool)

(declare-fun e!680561 () Bool)

(assert (=> b!1197984 (= e!680561 tp_is_empty!30419)))

(declare-fun b!1197985 () Bool)

(declare-fun res!797385 () Bool)

(assert (=> b!1197985 (=> (not res!797385) (not e!680555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197985 (= res!797385 (validMask!0 mask!1564))))

(declare-fun b!1197986 () Bool)

(declare-fun res!797387 () Bool)

(assert (=> b!1197986 (=> (not res!797387) (not e!680555))))

(declare-datatypes ((List!26502 0))(
  ( (Nil!26499) (Cons!26498 (h!27707 (_ BitVec 64)) (t!39216 List!26502)) )
))
(declare-fun arrayNoDuplicates!0 (array!77598 (_ BitVec 32) List!26502) Bool)

(assert (=> b!1197986 (= res!797387 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26499))))

(declare-fun b!1197987 () Bool)

(declare-fun res!797379 () Bool)

(assert (=> b!1197987 (=> (not res!797379) (not e!680555))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1197987 (= res!797379 (= (select (arr!37441 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47468 () Bool)

(assert (=> mapIsEmpty!47468 mapRes!47468))

(declare-fun b!1197988 () Bool)

(declare-fun res!797382 () Bool)

(assert (=> b!1197988 (=> (not res!797382) (not e!680555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197988 (= res!797382 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!45685)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!680557 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun b!1197989 () Bool)

(declare-fun minValue!944 () V!45685)

(declare-datatypes ((tuple2!19676 0))(
  ( (tuple2!19677 (_1!9848 (_ BitVec 64)) (_2!9848 V!45685)) )
))
(declare-datatypes ((List!26503 0))(
  ( (Nil!26500) (Cons!26499 (h!27708 tuple2!19676) (t!39217 List!26503)) )
))
(declare-datatypes ((ListLongMap!17657 0))(
  ( (ListLongMap!17658 (toList!8844 List!26503)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5257 (array!77598 array!77600 (_ BitVec 32) (_ BitVec 32) V!45685 V!45685 (_ BitVec 32) Int) ListLongMap!17657)

(declare-fun dynLambda!3193 (Int (_ BitVec 64)) V!45685)

(assert (=> b!1197989 (= e!680557 (= (getCurrentListMapNoExtraKeys!5257 lt!543336 (array!77601 (store (arr!37442 _values!996) i!673 (ValueCellFull!14500 (dynLambda!3193 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37979 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5257 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(declare-fun b!1197990 () Bool)

(declare-fun res!797388 () Bool)

(assert (=> b!1197990 (=> (not res!797388) (not e!680555))))

(assert (=> b!1197990 (= res!797388 (and (= (size!37979 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37978 _keys!1208) (size!37979 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197991 () Bool)

(declare-fun res!797381 () Bool)

(assert (=> b!1197991 (=> (not res!797381) (not e!680555))))

(assert (=> b!1197991 (= res!797381 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37978 _keys!1208))))))

(declare-fun b!1197992 () Bool)

(assert (=> b!1197992 (= e!680556 (and e!680561 mapRes!47468))))

(declare-fun condMapEmpty!47468 () Bool)

(declare-fun mapDefault!47468 () ValueCell!14500)

