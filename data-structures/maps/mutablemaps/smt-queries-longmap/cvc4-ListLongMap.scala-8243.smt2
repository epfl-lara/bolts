; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100446 () Bool)

(assert start!100446)

(declare-fun b_free!25733 () Bool)

(declare-fun b_next!25733 () Bool)

(assert (=> start!100446 (= b_free!25733 (not b_next!25733))))

(declare-fun tp!90190 () Bool)

(declare-fun b_and!42367 () Bool)

(assert (=> start!100446 (= tp!90190 b_and!42367)))

(declare-fun b!1198464 () Bool)

(declare-fun res!797726 () Bool)

(declare-fun e!680817 () Bool)

(assert (=> b!1198464 (=> (not res!797726) (not e!680817))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198464 (= res!797726 (validKeyInArray!0 k!934))))

(declare-fun res!797719 () Bool)

(assert (=> start!100446 (=> (not res!797719) (not e!680817))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77636 0))(
  ( (array!77637 (arr!37459 (Array (_ BitVec 32) (_ BitVec 64))) (size!37996 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77636)

(assert (=> start!100446 (= res!797719 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37996 _keys!1208))))))

(assert (=> start!100446 e!680817))

(declare-fun tp_is_empty!30437 () Bool)

(assert (=> start!100446 tp_is_empty!30437))

(declare-fun array_inv!28452 (array!77636) Bool)

(assert (=> start!100446 (array_inv!28452 _keys!1208)))

(assert (=> start!100446 true))

(assert (=> start!100446 tp!90190))

(declare-datatypes ((V!45709 0))(
  ( (V!45710 (val!15275 Int)) )
))
(declare-datatypes ((ValueCell!14509 0))(
  ( (ValueCellFull!14509 (v!17914 V!45709)) (EmptyCell!14509) )
))
(declare-datatypes ((array!77638 0))(
  ( (array!77639 (arr!37460 (Array (_ BitVec 32) ValueCell!14509)) (size!37997 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77638)

(declare-fun e!680815 () Bool)

(declare-fun array_inv!28453 (array!77638) Bool)

(assert (=> start!100446 (and (array_inv!28453 _values!996) e!680815)))

(declare-fun b!1198465 () Bool)

(declare-fun res!797725 () Bool)

(declare-fun e!680816 () Bool)

(assert (=> b!1198465 (=> (not res!797725) (not e!680816))))

(declare-fun lt!543466 () array!77636)

(declare-datatypes ((List!26519 0))(
  ( (Nil!26516) (Cons!26515 (h!27724 (_ BitVec 64)) (t!39239 List!26519)) )
))
(declare-fun arrayNoDuplicates!0 (array!77636 (_ BitVec 32) List!26519) Bool)

(assert (=> b!1198465 (= res!797725 (arrayNoDuplicates!0 lt!543466 #b00000000000000000000000000000000 Nil!26516))))

(declare-fun b!1198466 () Bool)

(declare-fun res!797724 () Bool)

(assert (=> b!1198466 (=> (not res!797724) (not e!680817))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1198466 (= res!797724 (and (= (size!37997 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37996 _keys!1208) (size!37997 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198467 () Bool)

(declare-fun res!797721 () Bool)

(assert (=> b!1198467 (=> (not res!797721) (not e!680817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198467 (= res!797721 (validMask!0 mask!1564))))

(declare-fun b!1198468 () Bool)

(declare-fun e!680818 () Bool)

(assert (=> b!1198468 (= e!680818 tp_is_empty!30437)))

(declare-fun b!1198469 () Bool)

(declare-fun e!680813 () Bool)

(assert (=> b!1198469 (= e!680816 (not e!680813))))

(declare-fun res!797727 () Bool)

(assert (=> b!1198469 (=> res!797727 e!680813)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198469 (= res!797727 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198469 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39670 0))(
  ( (Unit!39671) )
))
(declare-fun lt!543467 () Unit!39670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77636 (_ BitVec 64) (_ BitVec 32)) Unit!39670)

(assert (=> b!1198469 (= lt!543467 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!47498 () Bool)

(declare-fun mapRes!47498 () Bool)

(declare-fun tp!90189 () Bool)

(assert (=> mapNonEmpty!47498 (= mapRes!47498 (and tp!90189 e!680818))))

(declare-fun mapValue!47498 () ValueCell!14509)

(declare-fun mapKey!47498 () (_ BitVec 32))

(declare-fun mapRest!47498 () (Array (_ BitVec 32) ValueCell!14509))

(assert (=> mapNonEmpty!47498 (= (arr!37460 _values!996) (store mapRest!47498 mapKey!47498 mapValue!47498))))

(declare-fun b!1198470 () Bool)

(declare-fun e!680814 () Bool)

(assert (=> b!1198470 (= e!680814 tp_is_empty!30437)))

(declare-fun b!1198471 () Bool)

(assert (=> b!1198471 (= e!680813 (or (not (= from!1455 i!673)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37996 _keys!1208)))))))

(declare-fun zeroValue!944 () V!45709)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19692 0))(
  ( (tuple2!19693 (_1!9856 (_ BitVec 64)) (_2!9856 V!45709)) )
))
(declare-datatypes ((List!26520 0))(
  ( (Nil!26517) (Cons!26516 (h!27725 tuple2!19692) (t!39240 List!26520)) )
))
(declare-datatypes ((ListLongMap!17673 0))(
  ( (ListLongMap!17674 (toList!8852 List!26520)) )
))
(declare-fun lt!543468 () ListLongMap!17673)

(declare-fun minValue!944 () V!45709)

(declare-fun getCurrentListMapNoExtraKeys!5265 (array!77636 array!77638 (_ BitVec 32) (_ BitVec 32) V!45709 V!45709 (_ BitVec 32) Int) ListLongMap!17673)

(declare-fun dynLambda!3196 (Int (_ BitVec 64)) V!45709)

(assert (=> b!1198471 (= lt!543468 (getCurrentListMapNoExtraKeys!5265 lt!543466 (array!77639 (store (arr!37460 _values!996) i!673 (ValueCellFull!14509 (dynLambda!3196 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37997 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543469 () ListLongMap!17673)

(assert (=> b!1198471 (= lt!543469 (getCurrentListMapNoExtraKeys!5265 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198472 () Bool)

(declare-fun res!797723 () Bool)

(assert (=> b!1198472 (=> (not res!797723) (not e!680817))))

(assert (=> b!1198472 (= res!797723 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26516))))

(declare-fun b!1198473 () Bool)

(declare-fun res!797717 () Bool)

(assert (=> b!1198473 (=> (not res!797717) (not e!680817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77636 (_ BitVec 32)) Bool)

(assert (=> b!1198473 (= res!797717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47498 () Bool)

(assert (=> mapIsEmpty!47498 mapRes!47498))

(declare-fun b!1198474 () Bool)

(assert (=> b!1198474 (= e!680817 e!680816)))

(declare-fun res!797722 () Bool)

(assert (=> b!1198474 (=> (not res!797722) (not e!680816))))

(assert (=> b!1198474 (= res!797722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543466 mask!1564))))

(assert (=> b!1198474 (= lt!543466 (array!77637 (store (arr!37459 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37996 _keys!1208)))))

(declare-fun b!1198475 () Bool)

(declare-fun res!797720 () Bool)

(assert (=> b!1198475 (=> (not res!797720) (not e!680817))))

(assert (=> b!1198475 (= res!797720 (= (select (arr!37459 _keys!1208) i!673) k!934))))

(declare-fun b!1198476 () Bool)

(declare-fun res!797718 () Bool)

(assert (=> b!1198476 (=> (not res!797718) (not e!680817))))

(assert (=> b!1198476 (= res!797718 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37996 _keys!1208))))))

(declare-fun b!1198477 () Bool)

(assert (=> b!1198477 (= e!680815 (and e!680814 mapRes!47498))))

(declare-fun condMapEmpty!47498 () Bool)

(declare-fun mapDefault!47498 () ValueCell!14509)

