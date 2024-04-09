; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99984 () Bool)

(assert start!99984)

(declare-fun b_free!25527 () Bool)

(declare-fun b_next!25527 () Bool)

(assert (=> start!99984 (= b_free!25527 (not b_next!25527))))

(declare-fun tp!89296 () Bool)

(declare-fun b_and!41935 () Bool)

(assert (=> start!99984 (= tp!89296 b_and!41935)))

(declare-fun b!1189994 () Bool)

(declare-fun e!676571 () Bool)

(declare-fun e!676570 () Bool)

(assert (=> b!1189994 (= e!676571 e!676570)))

(declare-fun res!791469 () Bool)

(assert (=> b!1189994 (=> (not res!791469) (not e!676570))))

(declare-datatypes ((array!76880 0))(
  ( (array!76881 (arr!37086 (Array (_ BitVec 32) (_ BitVec 64))) (size!37623 (_ BitVec 32))) )
))
(declare-fun lt!541249 () array!76880)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76880 (_ BitVec 32)) Bool)

(assert (=> b!1189994 (= res!791469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541249 mask!1564))))

(declare-fun _keys!1208 () array!76880)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189994 (= lt!541249 (array!76881 (store (arr!37086 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37623 _keys!1208)))))

(declare-fun b!1189995 () Bool)

(declare-fun e!676567 () Bool)

(assert (=> b!1189995 (= e!676567 true)))

(declare-datatypes ((V!45203 0))(
  ( (V!45204 (val!15085 Int)) )
))
(declare-fun zeroValue!944 () V!45203)

(declare-datatypes ((ValueCell!14319 0))(
  ( (ValueCellFull!14319 (v!17724 V!45203)) (EmptyCell!14319) )
))
(declare-datatypes ((array!76882 0))(
  ( (array!76883 (arr!37087 (Array (_ BitVec 32) ValueCell!14319)) (size!37624 (_ BitVec 32))) )
))
(declare-fun lt!541251 () array!76882)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!76882)

(declare-fun minValue!944 () V!45203)

(declare-datatypes ((tuple2!19514 0))(
  ( (tuple2!19515 (_1!9767 (_ BitVec 64)) (_2!9767 V!45203)) )
))
(declare-datatypes ((List!26273 0))(
  ( (Nil!26270) (Cons!26269 (h!27478 tuple2!19514) (t!38799 List!26273)) )
))
(declare-datatypes ((ListLongMap!17495 0))(
  ( (ListLongMap!17496 (toList!8763 List!26273)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5177 (array!76880 array!76882 (_ BitVec 32) (_ BitVec 32) V!45203 V!45203 (_ BitVec 32) Int) ListLongMap!17495)

(declare-fun -!1745 (ListLongMap!17495 (_ BitVec 64)) ListLongMap!17495)

(assert (=> b!1189995 (= (getCurrentListMapNoExtraKeys!5177 lt!541249 lt!541251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1745 (getCurrentListMapNoExtraKeys!5177 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39418 0))(
  ( (Unit!39419) )
))
(declare-fun lt!541254 () Unit!39418)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!951 (array!76880 array!76882 (_ BitVec 32) (_ BitVec 32) V!45203 V!45203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39418)

(assert (=> b!1189995 (= lt!541254 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!951 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189996 () Bool)

(declare-fun res!791466 () Bool)

(assert (=> b!1189996 (=> (not res!791466) (not e!676571))))

(assert (=> b!1189996 (= res!791466 (= (select (arr!37086 _keys!1208) i!673) k0!934))))

(declare-fun b!1189997 () Bool)

(declare-fun res!791471 () Bool)

(assert (=> b!1189997 (=> (not res!791471) (not e!676571))))

(assert (=> b!1189997 (= res!791471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189998 () Bool)

(declare-fun res!791474 () Bool)

(assert (=> b!1189998 (=> (not res!791474) (not e!676571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189998 (= res!791474 (validMask!0 mask!1564))))

(declare-fun b!1189999 () Bool)

(declare-fun e!676568 () Bool)

(assert (=> b!1189999 (= e!676570 (not e!676568))))

(declare-fun res!791465 () Bool)

(assert (=> b!1189999 (=> res!791465 e!676568)))

(assert (=> b!1189999 (= res!791465 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189999 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541253 () Unit!39418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76880 (_ BitVec 64) (_ BitVec 32)) Unit!39418)

(assert (=> b!1189999 (= lt!541253 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46913 () Bool)

(declare-fun mapRes!46913 () Bool)

(assert (=> mapIsEmpty!46913 mapRes!46913))

(declare-fun b!1190000 () Bool)

(declare-fun e!676566 () Bool)

(declare-fun tp_is_empty!30057 () Bool)

(assert (=> b!1190000 (= e!676566 tp_is_empty!30057)))

(declare-fun res!791470 () Bool)

(assert (=> start!99984 (=> (not res!791470) (not e!676571))))

(assert (=> start!99984 (= res!791470 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37623 _keys!1208))))))

(assert (=> start!99984 e!676571))

(assert (=> start!99984 tp_is_empty!30057))

(declare-fun array_inv!28180 (array!76880) Bool)

(assert (=> start!99984 (array_inv!28180 _keys!1208)))

(assert (=> start!99984 true))

(assert (=> start!99984 tp!89296))

(declare-fun e!676572 () Bool)

(declare-fun array_inv!28181 (array!76882) Bool)

(assert (=> start!99984 (and (array_inv!28181 _values!996) e!676572)))

(declare-fun b!1190001 () Bool)

(declare-fun res!791476 () Bool)

(assert (=> b!1190001 (=> (not res!791476) (not e!676570))))

(declare-datatypes ((List!26274 0))(
  ( (Nil!26271) (Cons!26270 (h!27479 (_ BitVec 64)) (t!38800 List!26274)) )
))
(declare-fun arrayNoDuplicates!0 (array!76880 (_ BitVec 32) List!26274) Bool)

(assert (=> b!1190001 (= res!791476 (arrayNoDuplicates!0 lt!541249 #b00000000000000000000000000000000 Nil!26271))))

(declare-fun b!1190002 () Bool)

(declare-fun res!791475 () Bool)

(assert (=> b!1190002 (=> (not res!791475) (not e!676571))))

(assert (=> b!1190002 (= res!791475 (and (= (size!37624 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37623 _keys!1208) (size!37624 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190003 () Bool)

(declare-fun res!791473 () Bool)

(assert (=> b!1190003 (=> (not res!791473) (not e!676571))))

(assert (=> b!1190003 (= res!791473 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26271))))

(declare-fun mapNonEmpty!46913 () Bool)

(declare-fun tp!89295 () Bool)

(declare-fun e!676569 () Bool)

(assert (=> mapNonEmpty!46913 (= mapRes!46913 (and tp!89295 e!676569))))

(declare-fun mapKey!46913 () (_ BitVec 32))

(declare-fun mapValue!46913 () ValueCell!14319)

(declare-fun mapRest!46913 () (Array (_ BitVec 32) ValueCell!14319))

(assert (=> mapNonEmpty!46913 (= (arr!37087 _values!996) (store mapRest!46913 mapKey!46913 mapValue!46913))))

(declare-fun b!1190004 () Bool)

(declare-fun res!791468 () Bool)

(assert (=> b!1190004 (=> (not res!791468) (not e!676571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190004 (= res!791468 (validKeyInArray!0 k0!934))))

(declare-fun b!1190005 () Bool)

(declare-fun res!791472 () Bool)

(assert (=> b!1190005 (=> (not res!791472) (not e!676571))))

(assert (=> b!1190005 (= res!791472 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37623 _keys!1208))))))

(declare-fun b!1190006 () Bool)

(assert (=> b!1190006 (= e!676569 tp_is_empty!30057)))

(declare-fun b!1190007 () Bool)

(assert (=> b!1190007 (= e!676568 e!676567)))

(declare-fun res!791467 () Bool)

(assert (=> b!1190007 (=> res!791467 e!676567)))

(assert (=> b!1190007 (= res!791467 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541252 () ListLongMap!17495)

(assert (=> b!1190007 (= lt!541252 (getCurrentListMapNoExtraKeys!5177 lt!541249 lt!541251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3127 (Int (_ BitVec 64)) V!45203)

(assert (=> b!1190007 (= lt!541251 (array!76883 (store (arr!37087 _values!996) i!673 (ValueCellFull!14319 (dynLambda!3127 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37624 _values!996)))))

(declare-fun lt!541250 () ListLongMap!17495)

(assert (=> b!1190007 (= lt!541250 (getCurrentListMapNoExtraKeys!5177 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190008 () Bool)

(assert (=> b!1190008 (= e!676572 (and e!676566 mapRes!46913))))

(declare-fun condMapEmpty!46913 () Bool)

(declare-fun mapDefault!46913 () ValueCell!14319)

(assert (=> b!1190008 (= condMapEmpty!46913 (= (arr!37087 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14319)) mapDefault!46913)))))

(assert (= (and start!99984 res!791470) b!1189998))

(assert (= (and b!1189998 res!791474) b!1190002))

(assert (= (and b!1190002 res!791475) b!1189997))

(assert (= (and b!1189997 res!791471) b!1190003))

(assert (= (and b!1190003 res!791473) b!1190005))

(assert (= (and b!1190005 res!791472) b!1190004))

(assert (= (and b!1190004 res!791468) b!1189996))

(assert (= (and b!1189996 res!791466) b!1189994))

(assert (= (and b!1189994 res!791469) b!1190001))

(assert (= (and b!1190001 res!791476) b!1189999))

(assert (= (and b!1189999 (not res!791465)) b!1190007))

(assert (= (and b!1190007 (not res!791467)) b!1189995))

(assert (= (and b!1190008 condMapEmpty!46913) mapIsEmpty!46913))

(assert (= (and b!1190008 (not condMapEmpty!46913)) mapNonEmpty!46913))

(get-info :version)

(assert (= (and mapNonEmpty!46913 ((_ is ValueCellFull!14319) mapValue!46913)) b!1190006))

(assert (= (and b!1190008 ((_ is ValueCellFull!14319) mapDefault!46913)) b!1190000))

(assert (= start!99984 b!1190008))

(declare-fun b_lambda!20689 () Bool)

(assert (=> (not b_lambda!20689) (not b!1190007)))

(declare-fun t!38798 () Bool)

(declare-fun tb!10347 () Bool)

(assert (=> (and start!99984 (= defaultEntry!1004 defaultEntry!1004) t!38798) tb!10347))

(declare-fun result!21253 () Bool)

(assert (=> tb!10347 (= result!21253 tp_is_empty!30057)))

(assert (=> b!1190007 t!38798))

(declare-fun b_and!41937 () Bool)

(assert (= b_and!41935 (and (=> t!38798 result!21253) b_and!41937)))

(declare-fun m!1098659 () Bool)

(assert (=> b!1190007 m!1098659))

(declare-fun m!1098661 () Bool)

(assert (=> b!1190007 m!1098661))

(declare-fun m!1098663 () Bool)

(assert (=> b!1190007 m!1098663))

(declare-fun m!1098665 () Bool)

(assert (=> b!1190007 m!1098665))

(declare-fun m!1098667 () Bool)

(assert (=> start!99984 m!1098667))

(declare-fun m!1098669 () Bool)

(assert (=> start!99984 m!1098669))

(declare-fun m!1098671 () Bool)

(assert (=> b!1189994 m!1098671))

(declare-fun m!1098673 () Bool)

(assert (=> b!1189994 m!1098673))

(declare-fun m!1098675 () Bool)

(assert (=> b!1189996 m!1098675))

(declare-fun m!1098677 () Bool)

(assert (=> b!1189995 m!1098677))

(declare-fun m!1098679 () Bool)

(assert (=> b!1189995 m!1098679))

(assert (=> b!1189995 m!1098679))

(declare-fun m!1098681 () Bool)

(assert (=> b!1189995 m!1098681))

(declare-fun m!1098683 () Bool)

(assert (=> b!1189995 m!1098683))

(declare-fun m!1098685 () Bool)

(assert (=> b!1189999 m!1098685))

(declare-fun m!1098687 () Bool)

(assert (=> b!1189999 m!1098687))

(declare-fun m!1098689 () Bool)

(assert (=> b!1190001 m!1098689))

(declare-fun m!1098691 () Bool)

(assert (=> b!1189997 m!1098691))

(declare-fun m!1098693 () Bool)

(assert (=> b!1189998 m!1098693))

(declare-fun m!1098695 () Bool)

(assert (=> b!1190004 m!1098695))

(declare-fun m!1098697 () Bool)

(assert (=> mapNonEmpty!46913 m!1098697))

(declare-fun m!1098699 () Bool)

(assert (=> b!1190003 m!1098699))

(check-sat (not b!1189995) (not b!1189998) (not start!99984) tp_is_empty!30057 (not b!1190007) (not b_lambda!20689) (not b!1189999) (not b!1190004) (not b!1190001) (not b_next!25527) (not b!1190003) b_and!41937 (not b!1189994) (not b!1189997) (not mapNonEmpty!46913))
(check-sat b_and!41937 (not b_next!25527))
