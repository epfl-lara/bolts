; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100056 () Bool)

(assert start!100056)

(declare-fun b_free!25599 () Bool)

(declare-fun b_next!25599 () Bool)

(assert (=> start!100056 (= b_free!25599 (not b_next!25599))))

(declare-fun tp!89512 () Bool)

(declare-fun b_and!42079 () Bool)

(assert (=> start!100056 (= tp!89512 b_and!42079)))

(declare-fun b!1191686 () Bool)

(declare-fun e!677433 () Bool)

(declare-fun tp_is_empty!30129 () Bool)

(assert (=> b!1191686 (= e!677433 tp_is_empty!30129)))

(declare-fun b!1191687 () Bool)

(declare-fun res!792765 () Bool)

(declare-fun e!677432 () Bool)

(assert (=> b!1191687 (=> (not res!792765) (not e!677432))))

(declare-datatypes ((array!77022 0))(
  ( (array!77023 (arr!37157 (Array (_ BitVec 32) (_ BitVec 64))) (size!37694 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77022)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1191687 (= res!792765 (= (select (arr!37157 _keys!1208) i!673) k0!934))))

(declare-fun res!792772 () Bool)

(assert (=> start!100056 (=> (not res!792772) (not e!677432))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100056 (= res!792772 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37694 _keys!1208))))))

(assert (=> start!100056 e!677432))

(assert (=> start!100056 tp_is_empty!30129))

(declare-fun array_inv!28236 (array!77022) Bool)

(assert (=> start!100056 (array_inv!28236 _keys!1208)))

(assert (=> start!100056 true))

(assert (=> start!100056 tp!89512))

(declare-datatypes ((V!45299 0))(
  ( (V!45300 (val!15121 Int)) )
))
(declare-datatypes ((ValueCell!14355 0))(
  ( (ValueCellFull!14355 (v!17760 V!45299)) (EmptyCell!14355) )
))
(declare-datatypes ((array!77024 0))(
  ( (array!77025 (arr!37158 (Array (_ BitVec 32) ValueCell!14355)) (size!37695 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77024)

(declare-fun e!677434 () Bool)

(declare-fun array_inv!28237 (array!77024) Bool)

(assert (=> start!100056 (and (array_inv!28237 _values!996) e!677434)))

(declare-fun b!1191688 () Bool)

(declare-fun res!792764 () Bool)

(assert (=> b!1191688 (=> (not res!792764) (not e!677432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191688 (= res!792764 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!47021 () Bool)

(declare-fun mapRes!47021 () Bool)

(assert (=> mapIsEmpty!47021 mapRes!47021))

(declare-fun b!1191689 () Bool)

(declare-fun res!792771 () Bool)

(assert (=> b!1191689 (=> (not res!792771) (not e!677432))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191689 (= res!792771 (validMask!0 mask!1564))))

(declare-fun b!1191690 () Bool)

(declare-fun e!677430 () Bool)

(declare-fun e!677436 () Bool)

(assert (=> b!1191690 (= e!677430 (not e!677436))))

(declare-fun res!792768 () Bool)

(assert (=> b!1191690 (=> res!792768 e!677436)))

(assert (=> b!1191690 (= res!792768 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191690 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39476 0))(
  ( (Unit!39477) )
))
(declare-fun lt!541899 () Unit!39476)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77022 (_ BitVec 64) (_ BitVec 32)) Unit!39476)

(assert (=> b!1191690 (= lt!541899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191691 () Bool)

(declare-fun res!792761 () Bool)

(assert (=> b!1191691 (=> (not res!792761) (not e!677432))))

(assert (=> b!1191691 (= res!792761 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37694 _keys!1208))))))

(declare-fun b!1191692 () Bool)

(declare-fun res!792763 () Bool)

(assert (=> b!1191692 (=> (not res!792763) (not e!677430))))

(declare-fun lt!541901 () array!77022)

(declare-datatypes ((List!26334 0))(
  ( (Nil!26331) (Cons!26330 (h!27539 (_ BitVec 64)) (t!38932 List!26334)) )
))
(declare-fun arrayNoDuplicates!0 (array!77022 (_ BitVec 32) List!26334) Bool)

(assert (=> b!1191692 (= res!792763 (arrayNoDuplicates!0 lt!541901 #b00000000000000000000000000000000 Nil!26331))))

(declare-fun b!1191693 () Bool)

(assert (=> b!1191693 (= e!677432 e!677430)))

(declare-fun res!792762 () Bool)

(assert (=> b!1191693 (=> (not res!792762) (not e!677430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77022 (_ BitVec 32)) Bool)

(assert (=> b!1191693 (= res!792762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541901 mask!1564))))

(assert (=> b!1191693 (= lt!541901 (array!77023 (store (arr!37157 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37694 _keys!1208)))))

(declare-fun b!1191694 () Bool)

(declare-fun res!792766 () Bool)

(assert (=> b!1191694 (=> (not res!792766) (not e!677432))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1191694 (= res!792766 (and (= (size!37695 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37694 _keys!1208) (size!37695 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191695 () Bool)

(declare-fun e!677431 () Bool)

(assert (=> b!1191695 (= e!677431 tp_is_empty!30129)))

(declare-fun b!1191696 () Bool)

(declare-fun res!792769 () Bool)

(assert (=> b!1191696 (=> (not res!792769) (not e!677432))))

(assert (=> b!1191696 (= res!792769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191697 () Bool)

(declare-fun e!677435 () Bool)

(assert (=> b!1191697 (= e!677435 true)))

(declare-fun zeroValue!944 () V!45299)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45299)

(declare-fun lt!541902 () array!77024)

(declare-datatypes ((tuple2!19572 0))(
  ( (tuple2!19573 (_1!9796 (_ BitVec 64)) (_2!9796 V!45299)) )
))
(declare-datatypes ((List!26335 0))(
  ( (Nil!26332) (Cons!26331 (h!27540 tuple2!19572) (t!38933 List!26335)) )
))
(declare-datatypes ((ListLongMap!17553 0))(
  ( (ListLongMap!17554 (toList!8792 List!26335)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5206 (array!77022 array!77024 (_ BitVec 32) (_ BitVec 32) V!45299 V!45299 (_ BitVec 32) Int) ListLongMap!17553)

(declare-fun -!1771 (ListLongMap!17553 (_ BitVec 64)) ListLongMap!17553)

(assert (=> b!1191697 (= (getCurrentListMapNoExtraKeys!5206 lt!541901 lt!541902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1771 (getCurrentListMapNoExtraKeys!5206 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541897 () Unit!39476)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!977 (array!77022 array!77024 (_ BitVec 32) (_ BitVec 32) V!45299 V!45299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39476)

(assert (=> b!1191697 (= lt!541897 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!977 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191698 () Bool)

(declare-fun res!792767 () Bool)

(assert (=> b!1191698 (=> (not res!792767) (not e!677432))))

(assert (=> b!1191698 (= res!792767 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26331))))

(declare-fun mapNonEmpty!47021 () Bool)

(declare-fun tp!89511 () Bool)

(assert (=> mapNonEmpty!47021 (= mapRes!47021 (and tp!89511 e!677431))))

(declare-fun mapValue!47021 () ValueCell!14355)

(declare-fun mapRest!47021 () (Array (_ BitVec 32) ValueCell!14355))

(declare-fun mapKey!47021 () (_ BitVec 32))

(assert (=> mapNonEmpty!47021 (= (arr!37158 _values!996) (store mapRest!47021 mapKey!47021 mapValue!47021))))

(declare-fun b!1191699 () Bool)

(assert (=> b!1191699 (= e!677434 (and e!677433 mapRes!47021))))

(declare-fun condMapEmpty!47021 () Bool)

(declare-fun mapDefault!47021 () ValueCell!14355)

(assert (=> b!1191699 (= condMapEmpty!47021 (= (arr!37158 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14355)) mapDefault!47021)))))

(declare-fun b!1191700 () Bool)

(assert (=> b!1191700 (= e!677436 e!677435)))

(declare-fun res!792770 () Bool)

(assert (=> b!1191700 (=> res!792770 e!677435)))

(assert (=> b!1191700 (= res!792770 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541900 () ListLongMap!17553)

(assert (=> b!1191700 (= lt!541900 (getCurrentListMapNoExtraKeys!5206 lt!541901 lt!541902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3150 (Int (_ BitVec 64)) V!45299)

(assert (=> b!1191700 (= lt!541902 (array!77025 (store (arr!37158 _values!996) i!673 (ValueCellFull!14355 (dynLambda!3150 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37695 _values!996)))))

(declare-fun lt!541898 () ListLongMap!17553)

(assert (=> b!1191700 (= lt!541898 (getCurrentListMapNoExtraKeys!5206 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!100056 res!792772) b!1191689))

(assert (= (and b!1191689 res!792771) b!1191694))

(assert (= (and b!1191694 res!792766) b!1191696))

(assert (= (and b!1191696 res!792769) b!1191698))

(assert (= (and b!1191698 res!792767) b!1191691))

(assert (= (and b!1191691 res!792761) b!1191688))

(assert (= (and b!1191688 res!792764) b!1191687))

(assert (= (and b!1191687 res!792765) b!1191693))

(assert (= (and b!1191693 res!792762) b!1191692))

(assert (= (and b!1191692 res!792763) b!1191690))

(assert (= (and b!1191690 (not res!792768)) b!1191700))

(assert (= (and b!1191700 (not res!792770)) b!1191697))

(assert (= (and b!1191699 condMapEmpty!47021) mapIsEmpty!47021))

(assert (= (and b!1191699 (not condMapEmpty!47021)) mapNonEmpty!47021))

(get-info :version)

(assert (= (and mapNonEmpty!47021 ((_ is ValueCellFull!14355) mapValue!47021)) b!1191695))

(assert (= (and b!1191699 ((_ is ValueCellFull!14355) mapDefault!47021)) b!1191686))

(assert (= start!100056 b!1191699))

(declare-fun b_lambda!20761 () Bool)

(assert (=> (not b_lambda!20761) (not b!1191700)))

(declare-fun t!38931 () Bool)

(declare-fun tb!10419 () Bool)

(assert (=> (and start!100056 (= defaultEntry!1004 defaultEntry!1004) t!38931) tb!10419))

(declare-fun result!21397 () Bool)

(assert (=> tb!10419 (= result!21397 tp_is_empty!30129)))

(assert (=> b!1191700 t!38931))

(declare-fun b_and!42081 () Bool)

(assert (= b_and!42079 (and (=> t!38931 result!21397) b_and!42081)))

(declare-fun m!1100171 () Bool)

(assert (=> b!1191690 m!1100171))

(declare-fun m!1100173 () Bool)

(assert (=> b!1191690 m!1100173))

(declare-fun m!1100175 () Bool)

(assert (=> mapNonEmpty!47021 m!1100175))

(declare-fun m!1100177 () Bool)

(assert (=> b!1191693 m!1100177))

(declare-fun m!1100179 () Bool)

(assert (=> b!1191693 m!1100179))

(declare-fun m!1100181 () Bool)

(assert (=> b!1191696 m!1100181))

(declare-fun m!1100183 () Bool)

(assert (=> b!1191692 m!1100183))

(declare-fun m!1100185 () Bool)

(assert (=> b!1191700 m!1100185))

(declare-fun m!1100187 () Bool)

(assert (=> b!1191700 m!1100187))

(declare-fun m!1100189 () Bool)

(assert (=> b!1191700 m!1100189))

(declare-fun m!1100191 () Bool)

(assert (=> b!1191700 m!1100191))

(declare-fun m!1100193 () Bool)

(assert (=> start!100056 m!1100193))

(declare-fun m!1100195 () Bool)

(assert (=> start!100056 m!1100195))

(declare-fun m!1100197 () Bool)

(assert (=> b!1191688 m!1100197))

(declare-fun m!1100199 () Bool)

(assert (=> b!1191697 m!1100199))

(declare-fun m!1100201 () Bool)

(assert (=> b!1191697 m!1100201))

(assert (=> b!1191697 m!1100201))

(declare-fun m!1100203 () Bool)

(assert (=> b!1191697 m!1100203))

(declare-fun m!1100205 () Bool)

(assert (=> b!1191697 m!1100205))

(declare-fun m!1100207 () Bool)

(assert (=> b!1191687 m!1100207))

(declare-fun m!1100209 () Bool)

(assert (=> b!1191698 m!1100209))

(declare-fun m!1100211 () Bool)

(assert (=> b!1191689 m!1100211))

(check-sat tp_is_empty!30129 (not b_next!25599) (not b!1191689) (not b!1191693) (not b!1191688) (not b!1191696) (not b_lambda!20761) (not b!1191692) (not b!1191690) (not b!1191698) (not b!1191697) (not b!1191700) (not mapNonEmpty!47021) b_and!42081 (not start!100056))
(check-sat b_and!42081 (not b_next!25599))
