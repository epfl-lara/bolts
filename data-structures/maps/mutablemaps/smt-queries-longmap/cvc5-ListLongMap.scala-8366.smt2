; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101814 () Bool)

(assert start!101814)

(declare-fun b_free!26467 () Bool)

(declare-fun b_next!26467 () Bool)

(assert (=> start!101814 (= b_free!26467 (not b_next!26467))))

(declare-fun tp!92448 () Bool)

(declare-fun b_and!44205 () Bool)

(assert (=> start!101814 (= tp!92448 b_and!44205)))

(declare-fun mapIsEmpty!48655 () Bool)

(declare-fun mapRes!48655 () Bool)

(assert (=> mapIsEmpty!48655 mapRes!48655))

(declare-fun b!1225772 () Bool)

(declare-fun e!696222 () Bool)

(declare-fun e!696224 () Bool)

(assert (=> b!1225772 (= e!696222 e!696224)))

(declare-fun res!814709 () Bool)

(assert (=> b!1225772 (=> res!814709 e!696224)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225772 (= res!814709 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46689 0))(
  ( (V!46690 (val!15642 Int)) )
))
(declare-fun zeroValue!944 () V!46689)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!79100 0))(
  ( (array!79101 (arr!38173 (Array (_ BitVec 32) (_ BitVec 64))) (size!38710 (_ BitVec 32))) )
))
(declare-fun lt!558537 () array!79100)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20312 0))(
  ( (tuple2!20313 (_1!10166 (_ BitVec 64)) (_2!10166 V!46689)) )
))
(declare-datatypes ((List!27124 0))(
  ( (Nil!27121) (Cons!27120 (h!28329 tuple2!20312) (t!40578 List!27124)) )
))
(declare-datatypes ((ListLongMap!18293 0))(
  ( (ListLongMap!18294 (toList!9162 List!27124)) )
))
(declare-fun lt!558538 () ListLongMap!18293)

(declare-datatypes ((ValueCell!14876 0))(
  ( (ValueCellFull!14876 (v!18305 V!46689)) (EmptyCell!14876) )
))
(declare-datatypes ((array!79102 0))(
  ( (array!79103 (arr!38174 (Array (_ BitVec 32) ValueCell!14876)) (size!38711 (_ BitVec 32))) )
))
(declare-fun lt!558540 () array!79102)

(declare-fun minValue!944 () V!46689)

(declare-fun getCurrentListMapNoExtraKeys!5558 (array!79100 array!79102 (_ BitVec 32) (_ BitVec 32) V!46689 V!46689 (_ BitVec 32) Int) ListLongMap!18293)

(assert (=> b!1225772 (= lt!558538 (getCurrentListMapNoExtraKeys!5558 lt!558537 lt!558540 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!79102)

(declare-fun dynLambda!3451 (Int (_ BitVec 64)) V!46689)

(assert (=> b!1225772 (= lt!558540 (array!79103 (store (arr!38174 _values!996) i!673 (ValueCellFull!14876 (dynLambda!3451 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38711 _values!996)))))

(declare-fun _keys!1208 () array!79100)

(declare-fun lt!558536 () ListLongMap!18293)

(assert (=> b!1225772 (= lt!558536 (getCurrentListMapNoExtraKeys!5558 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225773 () Bool)

(declare-fun res!814712 () Bool)

(declare-fun e!696220 () Bool)

(assert (=> b!1225773 (=> (not res!814712) (not e!696220))))

(assert (=> b!1225773 (= res!814712 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38710 _keys!1208))))))

(declare-fun b!1225774 () Bool)

(declare-fun res!814708 () Bool)

(assert (=> b!1225774 (=> (not res!814708) (not e!696220))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225774 (= res!814708 (validKeyInArray!0 k!934))))

(declare-fun b!1225775 () Bool)

(declare-fun res!814715 () Bool)

(assert (=> b!1225775 (=> (not res!814715) (not e!696220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225775 (= res!814715 (validMask!0 mask!1564))))

(declare-fun b!1225776 () Bool)

(declare-fun e!696218 () Bool)

(declare-fun tp_is_empty!31171 () Bool)

(assert (=> b!1225776 (= e!696218 tp_is_empty!31171)))

(declare-fun b!1225778 () Bool)

(declare-fun e!696225 () Bool)

(assert (=> b!1225778 (= e!696225 tp_is_empty!31171)))

(declare-fun b!1225779 () Bool)

(declare-fun res!814717 () Bool)

(assert (=> b!1225779 (=> (not res!814717) (not e!696220))))

(assert (=> b!1225779 (= res!814717 (and (= (size!38711 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38710 _keys!1208) (size!38711 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225780 () Bool)

(declare-fun e!696219 () Bool)

(assert (=> b!1225780 (= e!696220 e!696219)))

(declare-fun res!814711 () Bool)

(assert (=> b!1225780 (=> (not res!814711) (not e!696219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79100 (_ BitVec 32)) Bool)

(assert (=> b!1225780 (= res!814711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558537 mask!1564))))

(assert (=> b!1225780 (= lt!558537 (array!79101 (store (arr!38173 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38710 _keys!1208)))))

(declare-fun mapNonEmpty!48655 () Bool)

(declare-fun tp!92447 () Bool)

(assert (=> mapNonEmpty!48655 (= mapRes!48655 (and tp!92447 e!696225))))

(declare-fun mapRest!48655 () (Array (_ BitVec 32) ValueCell!14876))

(declare-fun mapKey!48655 () (_ BitVec 32))

(declare-fun mapValue!48655 () ValueCell!14876)

(assert (=> mapNonEmpty!48655 (= (arr!38174 _values!996) (store mapRest!48655 mapKey!48655 mapValue!48655))))

(declare-fun b!1225777 () Bool)

(declare-fun res!814713 () Bool)

(assert (=> b!1225777 (=> (not res!814713) (not e!696220))))

(declare-datatypes ((List!27125 0))(
  ( (Nil!27122) (Cons!27121 (h!28330 (_ BitVec 64)) (t!40579 List!27125)) )
))
(declare-fun arrayNoDuplicates!0 (array!79100 (_ BitVec 32) List!27125) Bool)

(assert (=> b!1225777 (= res!814713 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27122))))

(declare-fun res!814718 () Bool)

(assert (=> start!101814 (=> (not res!814718) (not e!696220))))

(assert (=> start!101814 (= res!814718 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38710 _keys!1208))))))

(assert (=> start!101814 e!696220))

(assert (=> start!101814 tp_is_empty!31171))

(declare-fun array_inv!28950 (array!79100) Bool)

(assert (=> start!101814 (array_inv!28950 _keys!1208)))

(assert (=> start!101814 true))

(assert (=> start!101814 tp!92448))

(declare-fun e!696221 () Bool)

(declare-fun array_inv!28951 (array!79102) Bool)

(assert (=> start!101814 (and (array_inv!28951 _values!996) e!696221)))

(declare-fun b!1225781 () Bool)

(assert (=> b!1225781 (= e!696224 true)))

(declare-fun -!1998 (ListLongMap!18293 (_ BitVec 64)) ListLongMap!18293)

(assert (=> b!1225781 (= (getCurrentListMapNoExtraKeys!5558 lt!558537 lt!558540 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1998 (getCurrentListMapNoExtraKeys!5558 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!40570 0))(
  ( (Unit!40571) )
))
(declare-fun lt!558539 () Unit!40570)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1198 (array!79100 array!79102 (_ BitVec 32) (_ BitVec 32) V!46689 V!46689 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40570)

(assert (=> b!1225781 (= lt!558539 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1198 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225782 () Bool)

(assert (=> b!1225782 (= e!696221 (and e!696218 mapRes!48655))))

(declare-fun condMapEmpty!48655 () Bool)

(declare-fun mapDefault!48655 () ValueCell!14876)

