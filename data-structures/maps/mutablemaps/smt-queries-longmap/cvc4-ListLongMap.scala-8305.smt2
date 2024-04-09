; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101218 () Bool)

(assert start!101218)

(declare-fun b_free!26105 () Bool)

(declare-fun b_next!26105 () Bool)

(assert (=> start!101218 (= b_free!26105 (not b_next!26105))))

(declare-fun tp!91338 () Bool)

(declare-fun b_and!43337 () Bool)

(assert (=> start!101218 (= tp!91338 b_and!43337)))

(declare-fun b!1214508 () Bool)

(declare-fun res!806410 () Bool)

(declare-fun e!689735 () Bool)

(assert (=> b!1214508 (=> (not res!806410) (not e!689735))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78376 0))(
  ( (array!78377 (arr!37819 (Array (_ BitVec 32) (_ BitVec 64))) (size!38356 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78376)

(assert (=> b!1214508 (= res!806410 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38356 _keys!1208))))))

(declare-fun b!1214509 () Bool)

(declare-fun e!689734 () Bool)

(declare-fun tp_is_empty!30809 () Bool)

(assert (=> b!1214509 (= e!689734 tp_is_empty!30809)))

(declare-fun mapIsEmpty!48088 () Bool)

(declare-fun mapRes!48088 () Bool)

(assert (=> mapIsEmpty!48088 mapRes!48088))

(declare-fun res!806413 () Bool)

(assert (=> start!101218 (=> (not res!806413) (not e!689735))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101218 (= res!806413 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38356 _keys!1208))))))

(assert (=> start!101218 e!689735))

(assert (=> start!101218 tp_is_empty!30809))

(declare-fun array_inv!28706 (array!78376) Bool)

(assert (=> start!101218 (array_inv!28706 _keys!1208)))

(assert (=> start!101218 true))

(assert (=> start!101218 tp!91338))

(declare-datatypes ((V!46205 0))(
  ( (V!46206 (val!15461 Int)) )
))
(declare-datatypes ((ValueCell!14695 0))(
  ( (ValueCellFull!14695 (v!18115 V!46205)) (EmptyCell!14695) )
))
(declare-datatypes ((array!78378 0))(
  ( (array!78379 (arr!37820 (Array (_ BitVec 32) ValueCell!14695)) (size!38357 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78378)

(declare-fun e!689731 () Bool)

(declare-fun array_inv!28707 (array!78378) Bool)

(assert (=> start!101218 (and (array_inv!28707 _values!996) e!689731)))

(declare-fun b!1214510 () Bool)

(declare-fun res!806409 () Bool)

(assert (=> b!1214510 (=> (not res!806409) (not e!689735))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1214510 (= res!806409 (and (= (size!38357 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38356 _keys!1208) (size!38357 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214511 () Bool)

(declare-fun e!689730 () Bool)

(assert (=> b!1214511 (= e!689730 true)))

(declare-fun zeroValue!944 () V!46205)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552320 () array!78376)

(declare-fun minValue!944 () V!46205)

(declare-datatypes ((tuple2!20014 0))(
  ( (tuple2!20015 (_1!10017 (_ BitVec 64)) (_2!10017 V!46205)) )
))
(declare-datatypes ((List!26832 0))(
  ( (Nil!26829) (Cons!26828 (h!28037 tuple2!20014) (t!39924 List!26832)) )
))
(declare-datatypes ((ListLongMap!17995 0))(
  ( (ListLongMap!17996 (toList!9013 List!26832)) )
))
(declare-fun lt!552321 () ListLongMap!17995)

(declare-fun getCurrentListMapNoExtraKeys!5418 (array!78376 array!78378 (_ BitVec 32) (_ BitVec 32) V!46205 V!46205 (_ BitVec 32) Int) ListLongMap!17995)

(declare-fun dynLambda!3327 (Int (_ BitVec 64)) V!46205)

(assert (=> b!1214511 (= lt!552321 (getCurrentListMapNoExtraKeys!5418 lt!552320 (array!78379 (store (arr!37820 _values!996) i!673 (ValueCellFull!14695 (dynLambda!3327 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38357 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552323 () ListLongMap!17995)

(assert (=> b!1214511 (= lt!552323 (getCurrentListMapNoExtraKeys!5418 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214512 () Bool)

(declare-fun res!806408 () Bool)

(assert (=> b!1214512 (=> (not res!806408) (not e!689735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78376 (_ BitVec 32)) Bool)

(assert (=> b!1214512 (= res!806408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48088 () Bool)

(declare-fun tp!91337 () Bool)

(assert (=> mapNonEmpty!48088 (= mapRes!48088 (and tp!91337 e!689734))))

(declare-fun mapKey!48088 () (_ BitVec 32))

(declare-fun mapValue!48088 () ValueCell!14695)

(declare-fun mapRest!48088 () (Array (_ BitVec 32) ValueCell!14695))

(assert (=> mapNonEmpty!48088 (= (arr!37820 _values!996) (store mapRest!48088 mapKey!48088 mapValue!48088))))

(declare-fun b!1214513 () Bool)

(declare-fun e!689733 () Bool)

(assert (=> b!1214513 (= e!689735 e!689733)))

(declare-fun res!806403 () Bool)

(assert (=> b!1214513 (=> (not res!806403) (not e!689733))))

(assert (=> b!1214513 (= res!806403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552320 mask!1564))))

(assert (=> b!1214513 (= lt!552320 (array!78377 (store (arr!37819 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38356 _keys!1208)))))

(declare-fun b!1214514 () Bool)

(declare-fun e!689736 () Bool)

(assert (=> b!1214514 (= e!689736 tp_is_empty!30809)))

(declare-fun b!1214515 () Bool)

(declare-fun res!806405 () Bool)

(assert (=> b!1214515 (=> (not res!806405) (not e!689733))))

(declare-datatypes ((List!26833 0))(
  ( (Nil!26830) (Cons!26829 (h!28038 (_ BitVec 64)) (t!39925 List!26833)) )
))
(declare-fun arrayNoDuplicates!0 (array!78376 (_ BitVec 32) List!26833) Bool)

(assert (=> b!1214515 (= res!806405 (arrayNoDuplicates!0 lt!552320 #b00000000000000000000000000000000 Nil!26830))))

(declare-fun b!1214516 () Bool)

(declare-fun res!806406 () Bool)

(assert (=> b!1214516 (=> (not res!806406) (not e!689735))))

(assert (=> b!1214516 (= res!806406 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26830))))

(declare-fun b!1214517 () Bool)

(declare-fun res!806404 () Bool)

(assert (=> b!1214517 (=> (not res!806404) (not e!689735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214517 (= res!806404 (validMask!0 mask!1564))))

(declare-fun b!1214518 () Bool)

(declare-fun res!806407 () Bool)

(assert (=> b!1214518 (=> (not res!806407) (not e!689735))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214518 (= res!806407 (validKeyInArray!0 k!934))))

(declare-fun b!1214519 () Bool)

(assert (=> b!1214519 (= e!689733 (not e!689730))))

(declare-fun res!806412 () Bool)

(assert (=> b!1214519 (=> res!806412 e!689730)))

(assert (=> b!1214519 (= res!806412 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214519 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40210 0))(
  ( (Unit!40211) )
))
(declare-fun lt!552322 () Unit!40210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78376 (_ BitVec 64) (_ BitVec 32)) Unit!40210)

(assert (=> b!1214519 (= lt!552322 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1214520 () Bool)

(declare-fun res!806411 () Bool)

(assert (=> b!1214520 (=> (not res!806411) (not e!689735))))

(assert (=> b!1214520 (= res!806411 (= (select (arr!37819 _keys!1208) i!673) k!934))))

(declare-fun b!1214521 () Bool)

(assert (=> b!1214521 (= e!689731 (and e!689736 mapRes!48088))))

(declare-fun condMapEmpty!48088 () Bool)

(declare-fun mapDefault!48088 () ValueCell!14695)

