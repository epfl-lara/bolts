; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100462 () Bool)

(assert start!100462)

(declare-fun b_free!25749 () Bool)

(declare-fun b_next!25749 () Bool)

(assert (=> start!100462 (= b_free!25749 (not b_next!25749))))

(declare-fun tp!90238 () Bool)

(declare-fun b_and!42399 () Bool)

(assert (=> start!100462 (= tp!90238 b_and!42399)))

(declare-fun b!1198816 () Bool)

(declare-fun res!797989 () Bool)

(declare-fun e!680984 () Bool)

(assert (=> b!1198816 (=> (not res!797989) (not e!680984))))

(declare-datatypes ((array!77664 0))(
  ( (array!77665 (arr!37473 (Array (_ BitVec 32) (_ BitVec 64))) (size!38010 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77664)

(declare-datatypes ((V!45731 0))(
  ( (V!45732 (val!15283 Int)) )
))
(declare-datatypes ((ValueCell!14517 0))(
  ( (ValueCellFull!14517 (v!17922 V!45731)) (EmptyCell!14517) )
))
(declare-datatypes ((array!77666 0))(
  ( (array!77667 (arr!37474 (Array (_ BitVec 32) ValueCell!14517)) (size!38011 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77666)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1198816 (= res!797989 (and (= (size!38011 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38010 _keys!1208) (size!38011 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198817 () Bool)

(declare-fun res!797990 () Bool)

(assert (=> b!1198817 (=> (not res!797990) (not e!680984))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198817 (= res!797990 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38010 _keys!1208))))))

(declare-fun b!1198818 () Bool)

(declare-fun res!797988 () Bool)

(assert (=> b!1198818 (=> (not res!797988) (not e!680984))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198818 (= res!797988 (validKeyInArray!0 k0!934))))

(declare-fun b!1198819 () Bool)

(declare-fun e!680983 () Bool)

(declare-fun e!680986 () Bool)

(assert (=> b!1198819 (= e!680983 (not e!680986))))

(declare-fun res!797991 () Bool)

(assert (=> b!1198819 (=> res!797991 e!680986)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1198819 (= res!797991 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198819 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39682 0))(
  ( (Unit!39683) )
))
(declare-fun lt!543563 () Unit!39682)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77664 (_ BitVec 64) (_ BitVec 32)) Unit!39682)

(assert (=> b!1198819 (= lt!543563 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198821 () Bool)

(assert (=> b!1198821 (= e!680986 true)))

(declare-fun zeroValue!944 () V!45731)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!543564 () array!77664)

(declare-fun minValue!944 () V!45731)

(declare-datatypes ((tuple2!19702 0))(
  ( (tuple2!19703 (_1!9861 (_ BitVec 64)) (_2!9861 V!45731)) )
))
(declare-datatypes ((List!26530 0))(
  ( (Nil!26527) (Cons!26526 (h!27735 tuple2!19702) (t!39266 List!26530)) )
))
(declare-datatypes ((ListLongMap!17683 0))(
  ( (ListLongMap!17684 (toList!8857 List!26530)) )
))
(declare-fun lt!543562 () ListLongMap!17683)

(declare-fun getCurrentListMapNoExtraKeys!5270 (array!77664 array!77666 (_ BitVec 32) (_ BitVec 32) V!45731 V!45731 (_ BitVec 32) Int) ListLongMap!17683)

(declare-fun dynLambda!3201 (Int (_ BitVec 64)) V!45731)

(assert (=> b!1198821 (= lt!543562 (getCurrentListMapNoExtraKeys!5270 lt!543564 (array!77667 (store (arr!37474 _values!996) i!673 (ValueCellFull!14517 (dynLambda!3201 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38011 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543565 () ListLongMap!17683)

(assert (=> b!1198821 (= lt!543565 (getCurrentListMapNoExtraKeys!5270 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198822 () Bool)

(assert (=> b!1198822 (= e!680984 e!680983)))

(declare-fun res!797987 () Bool)

(assert (=> b!1198822 (=> (not res!797987) (not e!680983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77664 (_ BitVec 32)) Bool)

(assert (=> b!1198822 (= res!797987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543564 mask!1564))))

(assert (=> b!1198822 (= lt!543564 (array!77665 (store (arr!37473 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38010 _keys!1208)))))

(declare-fun b!1198823 () Bool)

(declare-fun e!680981 () Bool)

(declare-fun e!680980 () Bool)

(declare-fun mapRes!47522 () Bool)

(assert (=> b!1198823 (= e!680981 (and e!680980 mapRes!47522))))

(declare-fun condMapEmpty!47522 () Bool)

(declare-fun mapDefault!47522 () ValueCell!14517)

(assert (=> b!1198823 (= condMapEmpty!47522 (= (arr!37474 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14517)) mapDefault!47522)))))

(declare-fun b!1198824 () Bool)

(declare-fun res!797984 () Bool)

(assert (=> b!1198824 (=> (not res!797984) (not e!680983))))

(declare-datatypes ((List!26531 0))(
  ( (Nil!26528) (Cons!26527 (h!27736 (_ BitVec 64)) (t!39267 List!26531)) )
))
(declare-fun arrayNoDuplicates!0 (array!77664 (_ BitVec 32) List!26531) Bool)

(assert (=> b!1198824 (= res!797984 (arrayNoDuplicates!0 lt!543564 #b00000000000000000000000000000000 Nil!26528))))

(declare-fun b!1198825 () Bool)

(declare-fun res!797981 () Bool)

(assert (=> b!1198825 (=> (not res!797981) (not e!680984))))

(assert (=> b!1198825 (= res!797981 (= (select (arr!37473 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!47522 () Bool)

(assert (=> mapIsEmpty!47522 mapRes!47522))

(declare-fun b!1198826 () Bool)

(declare-fun res!797986 () Bool)

(assert (=> b!1198826 (=> (not res!797986) (not e!680984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198826 (= res!797986 (validMask!0 mask!1564))))

(declare-fun b!1198827 () Bool)

(declare-fun tp_is_empty!30453 () Bool)

(assert (=> b!1198827 (= e!680980 tp_is_empty!30453)))

(declare-fun mapNonEmpty!47522 () Bool)

(declare-fun tp!90237 () Bool)

(declare-fun e!680982 () Bool)

(assert (=> mapNonEmpty!47522 (= mapRes!47522 (and tp!90237 e!680982))))

(declare-fun mapKey!47522 () (_ BitVec 32))

(declare-fun mapRest!47522 () (Array (_ BitVec 32) ValueCell!14517))

(declare-fun mapValue!47522 () ValueCell!14517)

(assert (=> mapNonEmpty!47522 (= (arr!37474 _values!996) (store mapRest!47522 mapKey!47522 mapValue!47522))))

(declare-fun b!1198828 () Bool)

(assert (=> b!1198828 (= e!680982 tp_is_empty!30453)))

(declare-fun b!1198829 () Bool)

(declare-fun res!797985 () Bool)

(assert (=> b!1198829 (=> (not res!797985) (not e!680984))))

(assert (=> b!1198829 (= res!797985 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26528))))

(declare-fun res!797982 () Bool)

(assert (=> start!100462 (=> (not res!797982) (not e!680984))))

(assert (=> start!100462 (= res!797982 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38010 _keys!1208))))))

(assert (=> start!100462 e!680984))

(assert (=> start!100462 tp_is_empty!30453))

(declare-fun array_inv!28462 (array!77664) Bool)

(assert (=> start!100462 (array_inv!28462 _keys!1208)))

(assert (=> start!100462 true))

(assert (=> start!100462 tp!90238))

(declare-fun array_inv!28463 (array!77666) Bool)

(assert (=> start!100462 (and (array_inv!28463 _values!996) e!680981)))

(declare-fun b!1198820 () Bool)

(declare-fun res!797983 () Bool)

(assert (=> b!1198820 (=> (not res!797983) (not e!680984))))

(assert (=> b!1198820 (= res!797983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!100462 res!797982) b!1198826))

(assert (= (and b!1198826 res!797986) b!1198816))

(assert (= (and b!1198816 res!797989) b!1198820))

(assert (= (and b!1198820 res!797983) b!1198829))

(assert (= (and b!1198829 res!797985) b!1198817))

(assert (= (and b!1198817 res!797990) b!1198818))

(assert (= (and b!1198818 res!797988) b!1198825))

(assert (= (and b!1198825 res!797981) b!1198822))

(assert (= (and b!1198822 res!797987) b!1198824))

(assert (= (and b!1198824 res!797984) b!1198819))

(assert (= (and b!1198819 (not res!797991)) b!1198821))

(assert (= (and b!1198823 condMapEmpty!47522) mapIsEmpty!47522))

(assert (= (and b!1198823 (not condMapEmpty!47522)) mapNonEmpty!47522))

(get-info :version)

(assert (= (and mapNonEmpty!47522 ((_ is ValueCellFull!14517) mapValue!47522)) b!1198828))

(assert (= (and b!1198823 ((_ is ValueCellFull!14517) mapDefault!47522)) b!1198827))

(assert (= start!100462 b!1198823))

(declare-fun b_lambda!20963 () Bool)

(assert (=> (not b_lambda!20963) (not b!1198821)))

(declare-fun t!39265 () Bool)

(declare-fun tb!10557 () Bool)

(assert (=> (and start!100462 (= defaultEntry!1004 defaultEntry!1004) t!39265) tb!10557))

(declare-fun result!21683 () Bool)

(assert (=> tb!10557 (= result!21683 tp_is_empty!30453)))

(assert (=> b!1198821 t!39265))

(declare-fun b_and!42401 () Bool)

(assert (= b_and!42399 (and (=> t!39265 result!21683) b_and!42401)))

(declare-fun m!1105535 () Bool)

(assert (=> b!1198829 m!1105535))

(declare-fun m!1105537 () Bool)

(assert (=> b!1198820 m!1105537))

(declare-fun m!1105539 () Bool)

(assert (=> mapNonEmpty!47522 m!1105539))

(declare-fun m!1105541 () Bool)

(assert (=> b!1198821 m!1105541))

(declare-fun m!1105543 () Bool)

(assert (=> b!1198821 m!1105543))

(declare-fun m!1105545 () Bool)

(assert (=> b!1198821 m!1105545))

(declare-fun m!1105547 () Bool)

(assert (=> b!1198821 m!1105547))

(declare-fun m!1105549 () Bool)

(assert (=> start!100462 m!1105549))

(declare-fun m!1105551 () Bool)

(assert (=> start!100462 m!1105551))

(declare-fun m!1105553 () Bool)

(assert (=> b!1198818 m!1105553))

(declare-fun m!1105555 () Bool)

(assert (=> b!1198825 m!1105555))

(declare-fun m!1105557 () Bool)

(assert (=> b!1198822 m!1105557))

(declare-fun m!1105559 () Bool)

(assert (=> b!1198822 m!1105559))

(declare-fun m!1105561 () Bool)

(assert (=> b!1198824 m!1105561))

(declare-fun m!1105563 () Bool)

(assert (=> b!1198819 m!1105563))

(declare-fun m!1105565 () Bool)

(assert (=> b!1198819 m!1105565))

(declare-fun m!1105567 () Bool)

(assert (=> b!1198826 m!1105567))

(check-sat (not b!1198821) (not b!1198820) (not b!1198818) (not mapNonEmpty!47522) (not b_next!25749) (not b!1198822) (not b!1198826) (not start!100462) (not b_lambda!20963) (not b!1198829) (not b!1198824) (not b!1198819) tp_is_empty!30453 b_and!42401)
(check-sat b_and!42401 (not b_next!25749))
