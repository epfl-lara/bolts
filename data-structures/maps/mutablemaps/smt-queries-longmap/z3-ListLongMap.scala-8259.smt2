; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100540 () Bool)

(assert start!100540)

(declare-fun b_free!25827 () Bool)

(declare-fun b_next!25827 () Bool)

(assert (=> start!100540 (= b_free!25827 (not b_next!25827))))

(declare-fun tp!90471 () Bool)

(declare-fun b_and!42555 () Bool)

(assert (=> start!100540 (= tp!90471 b_and!42555)))

(declare-fun b!1200579 () Bool)

(declare-fun res!799287 () Bool)

(declare-fun e!681836 () Bool)

(assert (=> b!1200579 (=> (not res!799287) (not e!681836))))

(declare-datatypes ((array!77816 0))(
  ( (array!77817 (arr!37549 (Array (_ BitVec 32) (_ BitVec 64))) (size!38086 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77816)

(declare-datatypes ((List!26589 0))(
  ( (Nil!26586) (Cons!26585 (h!27794 (_ BitVec 64)) (t!39403 List!26589)) )
))
(declare-fun arrayNoDuplicates!0 (array!77816 (_ BitVec 32) List!26589) Bool)

(assert (=> b!1200579 (= res!799287 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26586))))

(declare-fun b!1200580 () Bool)

(declare-fun res!799290 () Bool)

(assert (=> b!1200580 (=> (not res!799290) (not e!681836))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1200580 (= res!799290 (= (select (arr!37549 _keys!1208) i!673) k0!934))))

(declare-fun b!1200581 () Bool)

(declare-fun e!681832 () Bool)

(declare-fun e!681838 () Bool)

(assert (=> b!1200581 (= e!681832 e!681838)))

(declare-fun res!799294 () Bool)

(assert (=> b!1200581 (=> res!799294 e!681838)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200581 (= res!799294 (not (= (select (arr!37549 _keys!1208) from!1455) k0!934)))))

(declare-fun e!681835 () Bool)

(assert (=> b!1200581 e!681835))

(declare-fun c!117400 () Bool)

(assert (=> b!1200581 (= c!117400 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!45835 0))(
  ( (V!45836 (val!15322 Int)) )
))
(declare-fun zeroValue!944 () V!45835)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14556 0))(
  ( (ValueCellFull!14556 (v!17961 V!45835)) (EmptyCell!14556) )
))
(declare-datatypes ((array!77818 0))(
  ( (array!77819 (arr!37550 (Array (_ BitVec 32) ValueCell!14556)) (size!38087 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77818)

(declare-datatypes ((Unit!39732 0))(
  ( (Unit!39733) )
))
(declare-fun lt!544069 () Unit!39732)

(declare-fun minValue!944 () V!45835)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1015 (array!77816 array!77818 (_ BitVec 32) (_ BitVec 32) V!45835 V!45835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39732)

(assert (=> b!1200581 (= lt!544069 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1015 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200582 () Bool)

(declare-fun res!799299 () Bool)

(assert (=> b!1200582 (=> (not res!799299) (not e!681836))))

(assert (=> b!1200582 (= res!799299 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38086 _keys!1208))))))

(declare-fun b!1200583 () Bool)

(declare-fun e!681833 () Bool)

(assert (=> b!1200583 (= e!681836 e!681833)))

(declare-fun res!799298 () Bool)

(assert (=> b!1200583 (=> (not res!799298) (not e!681833))))

(declare-fun lt!544067 () array!77816)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77816 (_ BitVec 32)) Bool)

(assert (=> b!1200583 (= res!799298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544067 mask!1564))))

(assert (=> b!1200583 (= lt!544067 (array!77817 (store (arr!37549 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38086 _keys!1208)))))

(declare-fun mapNonEmpty!47639 () Bool)

(declare-fun mapRes!47639 () Bool)

(declare-fun tp!90472 () Bool)

(declare-fun e!681839 () Bool)

(assert (=> mapNonEmpty!47639 (= mapRes!47639 (and tp!90472 e!681839))))

(declare-fun mapKey!47639 () (_ BitVec 32))

(declare-fun mapValue!47639 () ValueCell!14556)

(declare-fun mapRest!47639 () (Array (_ BitVec 32) ValueCell!14556))

(assert (=> mapNonEmpty!47639 (= (arr!37550 _values!996) (store mapRest!47639 mapKey!47639 mapValue!47639))))

(declare-fun b!1200584 () Bool)

(declare-fun res!799297 () Bool)

(assert (=> b!1200584 (=> (not res!799297) (not e!681836))))

(assert (=> b!1200584 (= res!799297 (and (= (size!38087 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38086 _keys!1208) (size!38087 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200585 () Bool)

(declare-fun res!799288 () Bool)

(assert (=> b!1200585 (=> (not res!799288) (not e!681836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200585 (= res!799288 (validKeyInArray!0 k0!934))))

(declare-fun b!1200586 () Bool)

(declare-fun tp_is_empty!30531 () Bool)

(assert (=> b!1200586 (= e!681839 tp_is_empty!30531)))

(declare-fun b!1200587 () Bool)

(declare-fun e!681834 () Bool)

(assert (=> b!1200587 (= e!681834 tp_is_empty!30531)))

(declare-fun b!1200588 () Bool)

(declare-fun e!681840 () Bool)

(assert (=> b!1200588 (= e!681833 (not e!681840))))

(declare-fun res!799292 () Bool)

(assert (=> b!1200588 (=> res!799292 e!681840)))

(assert (=> b!1200588 (= res!799292 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200588 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544065 () Unit!39732)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77816 (_ BitVec 64) (_ BitVec 32)) Unit!39732)

(assert (=> b!1200588 (= lt!544065 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!799289 () Bool)

(assert (=> start!100540 (=> (not res!799289) (not e!681836))))

(assert (=> start!100540 (= res!799289 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38086 _keys!1208))))))

(assert (=> start!100540 e!681836))

(assert (=> start!100540 tp_is_empty!30531))

(declare-fun array_inv!28510 (array!77816) Bool)

(assert (=> start!100540 (array_inv!28510 _keys!1208)))

(assert (=> start!100540 true))

(assert (=> start!100540 tp!90471))

(declare-fun e!681837 () Bool)

(declare-fun array_inv!28511 (array!77818) Bool)

(assert (=> start!100540 (and (array_inv!28511 _values!996) e!681837)))

(declare-fun b!1200589 () Bool)

(declare-fun res!799293 () Bool)

(assert (=> b!1200589 (=> (not res!799293) (not e!681836))))

(assert (=> b!1200589 (= res!799293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200590 () Bool)

(assert (=> b!1200590 (= e!681837 (and e!681834 mapRes!47639))))

(declare-fun condMapEmpty!47639 () Bool)

(declare-fun mapDefault!47639 () ValueCell!14556)

(assert (=> b!1200590 (= condMapEmpty!47639 (= (arr!37550 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14556)) mapDefault!47639)))))

(declare-fun b!1200591 () Bool)

(declare-datatypes ((tuple2!19756 0))(
  ( (tuple2!19757 (_1!9888 (_ BitVec 64)) (_2!9888 V!45835)) )
))
(declare-datatypes ((List!26590 0))(
  ( (Nil!26587) (Cons!26586 (h!27795 tuple2!19756) (t!39404 List!26590)) )
))
(declare-datatypes ((ListLongMap!17737 0))(
  ( (ListLongMap!17738 (toList!8884 List!26590)) )
))
(declare-fun call!57310 () ListLongMap!17737)

(declare-fun call!57309 () ListLongMap!17737)

(assert (=> b!1200591 (= e!681835 (= call!57310 call!57309))))

(declare-fun b!1200592 () Bool)

(declare-fun res!799296 () Bool)

(assert (=> b!1200592 (=> (not res!799296) (not e!681833))))

(assert (=> b!1200592 (= res!799296 (arrayNoDuplicates!0 lt!544067 #b00000000000000000000000000000000 Nil!26586))))

(declare-fun b!1200593 () Bool)

(assert (=> b!1200593 (= e!681840 e!681832)))

(declare-fun res!799291 () Bool)

(assert (=> b!1200593 (=> res!799291 e!681832)))

(assert (=> b!1200593 (= res!799291 (not (= from!1455 i!673)))))

(declare-fun lt!544068 () array!77818)

(declare-fun lt!544066 () ListLongMap!17737)

(declare-fun getCurrentListMapNoExtraKeys!5297 (array!77816 array!77818 (_ BitVec 32) (_ BitVec 32) V!45835 V!45835 (_ BitVec 32) Int) ListLongMap!17737)

(assert (=> b!1200593 (= lt!544066 (getCurrentListMapNoExtraKeys!5297 lt!544067 lt!544068 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3227 (Int (_ BitVec 64)) V!45835)

(assert (=> b!1200593 (= lt!544068 (array!77819 (store (arr!37550 _values!996) i!673 (ValueCellFull!14556 (dynLambda!3227 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38087 _values!996)))))

(declare-fun lt!544064 () ListLongMap!17737)

(assert (=> b!1200593 (= lt!544064 (getCurrentListMapNoExtraKeys!5297 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200594 () Bool)

(assert (=> b!1200594 (= e!681838 true)))

(declare-fun lt!544063 () Bool)

(declare-fun contains!6887 (ListLongMap!17737 (_ BitVec 64)) Bool)

(assert (=> b!1200594 (= lt!544063 (contains!6887 (getCurrentListMapNoExtraKeys!5297 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun mapIsEmpty!47639 () Bool)

(assert (=> mapIsEmpty!47639 mapRes!47639))

(declare-fun b!1200595 () Bool)

(declare-fun res!799295 () Bool)

(assert (=> b!1200595 (=> (not res!799295) (not e!681836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200595 (= res!799295 (validMask!0 mask!1564))))

(declare-fun bm!57306 () Bool)

(assert (=> bm!57306 (= call!57310 (getCurrentListMapNoExtraKeys!5297 lt!544067 lt!544068 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57307 () Bool)

(assert (=> bm!57307 (= call!57309 (getCurrentListMapNoExtraKeys!5297 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200596 () Bool)

(declare-fun -!1811 (ListLongMap!17737 (_ BitVec 64)) ListLongMap!17737)

(assert (=> b!1200596 (= e!681835 (= call!57310 (-!1811 call!57309 k0!934)))))

(assert (= (and start!100540 res!799289) b!1200595))

(assert (= (and b!1200595 res!799295) b!1200584))

(assert (= (and b!1200584 res!799297) b!1200589))

(assert (= (and b!1200589 res!799293) b!1200579))

(assert (= (and b!1200579 res!799287) b!1200582))

(assert (= (and b!1200582 res!799299) b!1200585))

(assert (= (and b!1200585 res!799288) b!1200580))

(assert (= (and b!1200580 res!799290) b!1200583))

(assert (= (and b!1200583 res!799298) b!1200592))

(assert (= (and b!1200592 res!799296) b!1200588))

(assert (= (and b!1200588 (not res!799292)) b!1200593))

(assert (= (and b!1200593 (not res!799291)) b!1200581))

(assert (= (and b!1200581 c!117400) b!1200596))

(assert (= (and b!1200581 (not c!117400)) b!1200591))

(assert (= (or b!1200596 b!1200591) bm!57306))

(assert (= (or b!1200596 b!1200591) bm!57307))

(assert (= (and b!1200581 (not res!799294)) b!1200594))

(assert (= (and b!1200590 condMapEmpty!47639) mapIsEmpty!47639))

(assert (= (and b!1200590 (not condMapEmpty!47639)) mapNonEmpty!47639))

(get-info :version)

(assert (= (and mapNonEmpty!47639 ((_ is ValueCellFull!14556) mapValue!47639)) b!1200586))

(assert (= (and b!1200590 ((_ is ValueCellFull!14556) mapDefault!47639)) b!1200587))

(assert (= start!100540 b!1200590))

(declare-fun b_lambda!21041 () Bool)

(assert (=> (not b_lambda!21041) (not b!1200593)))

(declare-fun t!39402 () Bool)

(declare-fun tb!10635 () Bool)

(assert (=> (and start!100540 (= defaultEntry!1004 defaultEntry!1004) t!39402) tb!10635))

(declare-fun result!21839 () Bool)

(assert (=> tb!10635 (= result!21839 tp_is_empty!30531)))

(assert (=> b!1200593 t!39402))

(declare-fun b_and!42557 () Bool)

(assert (= b_and!42555 (and (=> t!39402 result!21839) b_and!42557)))

(declare-fun m!1106897 () Bool)

(assert (=> mapNonEmpty!47639 m!1106897))

(declare-fun m!1106899 () Bool)

(assert (=> b!1200593 m!1106899))

(declare-fun m!1106901 () Bool)

(assert (=> b!1200593 m!1106901))

(declare-fun m!1106903 () Bool)

(assert (=> b!1200593 m!1106903))

(declare-fun m!1106905 () Bool)

(assert (=> b!1200593 m!1106905))

(declare-fun m!1106907 () Bool)

(assert (=> b!1200589 m!1106907))

(declare-fun m!1106909 () Bool)

(assert (=> b!1200588 m!1106909))

(declare-fun m!1106911 () Bool)

(assert (=> b!1200588 m!1106911))

(declare-fun m!1106913 () Bool)

(assert (=> b!1200585 m!1106913))

(declare-fun m!1106915 () Bool)

(assert (=> b!1200594 m!1106915))

(assert (=> b!1200594 m!1106915))

(declare-fun m!1106917 () Bool)

(assert (=> b!1200594 m!1106917))

(declare-fun m!1106919 () Bool)

(assert (=> b!1200595 m!1106919))

(declare-fun m!1106921 () Bool)

(assert (=> b!1200592 m!1106921))

(declare-fun m!1106923 () Bool)

(assert (=> bm!57306 m!1106923))

(declare-fun m!1106925 () Bool)

(assert (=> b!1200581 m!1106925))

(declare-fun m!1106927 () Bool)

(assert (=> b!1200581 m!1106927))

(declare-fun m!1106929 () Bool)

(assert (=> b!1200579 m!1106929))

(declare-fun m!1106931 () Bool)

(assert (=> b!1200596 m!1106931))

(declare-fun m!1106933 () Bool)

(assert (=> b!1200580 m!1106933))

(declare-fun m!1106935 () Bool)

(assert (=> b!1200583 m!1106935))

(declare-fun m!1106937 () Bool)

(assert (=> b!1200583 m!1106937))

(assert (=> bm!57307 m!1106915))

(declare-fun m!1106939 () Bool)

(assert (=> start!100540 m!1106939))

(declare-fun m!1106941 () Bool)

(assert (=> start!100540 m!1106941))

(check-sat (not b!1200581) (not b!1200588) (not b!1200585) (not bm!57307) (not b!1200594) (not b!1200596) (not b!1200589) (not b_next!25827) (not mapNonEmpty!47639) (not b!1200595) (not b!1200583) tp_is_empty!30531 (not b!1200592) (not b!1200579) b_and!42557 (not b!1200593) (not bm!57306) (not b_lambda!21041) (not start!100540))
(check-sat b_and!42557 (not b_next!25827))
