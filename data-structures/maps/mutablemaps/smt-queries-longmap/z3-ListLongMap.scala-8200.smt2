; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100104 () Bool)

(assert start!100104)

(declare-fun b_free!25647 () Bool)

(declare-fun b_next!25647 () Bool)

(assert (=> start!100104 (= b_free!25647 (not b_next!25647))))

(declare-fun tp!89656 () Bool)

(declare-fun b_and!42175 () Bool)

(assert (=> start!100104 (= tp!89656 b_and!42175)))

(declare-fun mapNonEmpty!47093 () Bool)

(declare-fun mapRes!47093 () Bool)

(declare-fun tp!89655 () Bool)

(declare-fun e!678007 () Bool)

(assert (=> mapNonEmpty!47093 (= mapRes!47093 (and tp!89655 e!678007))))

(declare-datatypes ((V!45363 0))(
  ( (V!45364 (val!15145 Int)) )
))
(declare-datatypes ((ValueCell!14379 0))(
  ( (ValueCellFull!14379 (v!17784 V!45363)) (EmptyCell!14379) )
))
(declare-fun mapRest!47093 () (Array (_ BitVec 32) ValueCell!14379))

(declare-fun mapKey!47093 () (_ BitVec 32))

(declare-datatypes ((array!77118 0))(
  ( (array!77119 (arr!37205 (Array (_ BitVec 32) ValueCell!14379)) (size!37742 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77118)

(declare-fun mapValue!47093 () ValueCell!14379)

(assert (=> mapNonEmpty!47093 (= (arr!37205 _values!996) (store mapRest!47093 mapKey!47093 mapValue!47093))))

(declare-fun b!1192814 () Bool)

(declare-fun res!793629 () Bool)

(declare-fun e!678010 () Bool)

(assert (=> b!1192814 (=> (not res!793629) (not e!678010))))

(declare-datatypes ((array!77120 0))(
  ( (array!77121 (arr!37206 (Array (_ BitVec 32) (_ BitVec 64))) (size!37743 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77120)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77120 (_ BitVec 32)) Bool)

(assert (=> b!1192814 (= res!793629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192815 () Bool)

(declare-fun e!678009 () Bool)

(declare-fun e!678008 () Bool)

(assert (=> b!1192815 (= e!678009 e!678008)))

(declare-fun res!793628 () Bool)

(assert (=> b!1192815 (=> res!793628 e!678008)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1192815 (= res!793628 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45363)

(declare-fun lt!542334 () array!77120)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!542331 () array!77118)

(declare-datatypes ((tuple2!19614 0))(
  ( (tuple2!19615 (_1!9817 (_ BitVec 64)) (_2!9817 V!45363)) )
))
(declare-datatypes ((List!26373 0))(
  ( (Nil!26370) (Cons!26369 (h!27578 tuple2!19614) (t!39019 List!26373)) )
))
(declare-datatypes ((ListLongMap!17595 0))(
  ( (ListLongMap!17596 (toList!8813 List!26373)) )
))
(declare-fun lt!542329 () ListLongMap!17595)

(declare-fun minValue!944 () V!45363)

(declare-fun getCurrentListMapNoExtraKeys!5227 (array!77120 array!77118 (_ BitVec 32) (_ BitVec 32) V!45363 V!45363 (_ BitVec 32) Int) ListLongMap!17595)

(assert (=> b!1192815 (= lt!542329 (getCurrentListMapNoExtraKeys!5227 lt!542334 lt!542331 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3166 (Int (_ BitVec 64)) V!45363)

(assert (=> b!1192815 (= lt!542331 (array!77119 (store (arr!37205 _values!996) i!673 (ValueCellFull!14379 (dynLambda!3166 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37742 _values!996)))))

(declare-fun lt!542330 () ListLongMap!17595)

(assert (=> b!1192815 (= lt!542330 (getCurrentListMapNoExtraKeys!5227 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192816 () Bool)

(declare-fun res!793636 () Bool)

(assert (=> b!1192816 (=> (not res!793636) (not e!678010))))

(declare-datatypes ((List!26374 0))(
  ( (Nil!26371) (Cons!26370 (h!27579 (_ BitVec 64)) (t!39020 List!26374)) )
))
(declare-fun arrayNoDuplicates!0 (array!77120 (_ BitVec 32) List!26374) Bool)

(assert (=> b!1192816 (= res!793636 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26371))))

(declare-fun mapIsEmpty!47093 () Bool)

(assert (=> mapIsEmpty!47093 mapRes!47093))

(declare-fun res!793630 () Bool)

(assert (=> start!100104 (=> (not res!793630) (not e!678010))))

(assert (=> start!100104 (= res!793630 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37743 _keys!1208))))))

(assert (=> start!100104 e!678010))

(declare-fun tp_is_empty!30177 () Bool)

(assert (=> start!100104 tp_is_empty!30177))

(declare-fun array_inv!28264 (array!77120) Bool)

(assert (=> start!100104 (array_inv!28264 _keys!1208)))

(assert (=> start!100104 true))

(assert (=> start!100104 tp!89656))

(declare-fun e!678012 () Bool)

(declare-fun array_inv!28265 (array!77118) Bool)

(assert (=> start!100104 (and (array_inv!28265 _values!996) e!678012)))

(declare-fun b!1192817 () Bool)

(declare-fun res!793626 () Bool)

(assert (=> b!1192817 (=> (not res!793626) (not e!678010))))

(assert (=> b!1192817 (= res!793626 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37743 _keys!1208))))))

(declare-fun b!1192818 () Bool)

(assert (=> b!1192818 (= e!678007 tp_is_empty!30177)))

(declare-fun b!1192819 () Bool)

(declare-fun e!678013 () Bool)

(assert (=> b!1192819 (= e!678012 (and e!678013 mapRes!47093))))

(declare-fun condMapEmpty!47093 () Bool)

(declare-fun mapDefault!47093 () ValueCell!14379)

(assert (=> b!1192819 (= condMapEmpty!47093 (= (arr!37205 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14379)) mapDefault!47093)))))

(declare-fun b!1192820 () Bool)

(assert (=> b!1192820 (= e!678013 tp_is_empty!30177)))

(declare-fun b!1192821 () Bool)

(declare-fun res!793625 () Bool)

(assert (=> b!1192821 (=> (not res!793625) (not e!678010))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192821 (= res!793625 (validKeyInArray!0 k0!934))))

(declare-fun b!1192822 () Bool)

(declare-fun res!793635 () Bool)

(assert (=> b!1192822 (=> (not res!793635) (not e!678010))))

(assert (=> b!1192822 (= res!793635 (= (select (arr!37206 _keys!1208) i!673) k0!934))))

(declare-fun b!1192823 () Bool)

(declare-fun res!793633 () Bool)

(assert (=> b!1192823 (=> (not res!793633) (not e!678010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192823 (= res!793633 (validMask!0 mask!1564))))

(declare-fun b!1192824 () Bool)

(assert (=> b!1192824 (= e!678008 true)))

(declare-fun -!1788 (ListLongMap!17595 (_ BitVec 64)) ListLongMap!17595)

(assert (=> b!1192824 (= (getCurrentListMapNoExtraKeys!5227 lt!542334 lt!542331 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1788 (getCurrentListMapNoExtraKeys!5227 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39512 0))(
  ( (Unit!39513) )
))
(declare-fun lt!542333 () Unit!39512)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!994 (array!77120 array!77118 (_ BitVec 32) (_ BitVec 32) V!45363 V!45363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39512)

(assert (=> b!1192824 (= lt!542333 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!994 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192825 () Bool)

(declare-fun res!793631 () Bool)

(declare-fun e!678011 () Bool)

(assert (=> b!1192825 (=> (not res!793631) (not e!678011))))

(assert (=> b!1192825 (= res!793631 (arrayNoDuplicates!0 lt!542334 #b00000000000000000000000000000000 Nil!26371))))

(declare-fun b!1192826 () Bool)

(declare-fun res!793634 () Bool)

(assert (=> b!1192826 (=> (not res!793634) (not e!678010))))

(assert (=> b!1192826 (= res!793634 (and (= (size!37742 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37743 _keys!1208) (size!37742 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192827 () Bool)

(assert (=> b!1192827 (= e!678010 e!678011)))

(declare-fun res!793632 () Bool)

(assert (=> b!1192827 (=> (not res!793632) (not e!678011))))

(assert (=> b!1192827 (= res!793632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542334 mask!1564))))

(assert (=> b!1192827 (= lt!542334 (array!77121 (store (arr!37206 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37743 _keys!1208)))))

(declare-fun b!1192828 () Bool)

(assert (=> b!1192828 (= e!678011 (not e!678009))))

(declare-fun res!793627 () Bool)

(assert (=> b!1192828 (=> res!793627 e!678009)))

(assert (=> b!1192828 (= res!793627 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192828 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542332 () Unit!39512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77120 (_ BitVec 64) (_ BitVec 32)) Unit!39512)

(assert (=> b!1192828 (= lt!542332 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100104 res!793630) b!1192823))

(assert (= (and b!1192823 res!793633) b!1192826))

(assert (= (and b!1192826 res!793634) b!1192814))

(assert (= (and b!1192814 res!793629) b!1192816))

(assert (= (and b!1192816 res!793636) b!1192817))

(assert (= (and b!1192817 res!793626) b!1192821))

(assert (= (and b!1192821 res!793625) b!1192822))

(assert (= (and b!1192822 res!793635) b!1192827))

(assert (= (and b!1192827 res!793632) b!1192825))

(assert (= (and b!1192825 res!793631) b!1192828))

(assert (= (and b!1192828 (not res!793627)) b!1192815))

(assert (= (and b!1192815 (not res!793628)) b!1192824))

(assert (= (and b!1192819 condMapEmpty!47093) mapIsEmpty!47093))

(assert (= (and b!1192819 (not condMapEmpty!47093)) mapNonEmpty!47093))

(get-info :version)

(assert (= (and mapNonEmpty!47093 ((_ is ValueCellFull!14379) mapValue!47093)) b!1192818))

(assert (= (and b!1192819 ((_ is ValueCellFull!14379) mapDefault!47093)) b!1192820))

(assert (= start!100104 b!1192819))

(declare-fun b_lambda!20809 () Bool)

(assert (=> (not b_lambda!20809) (not b!1192815)))

(declare-fun t!39018 () Bool)

(declare-fun tb!10467 () Bool)

(assert (=> (and start!100104 (= defaultEntry!1004 defaultEntry!1004) t!39018) tb!10467))

(declare-fun result!21493 () Bool)

(assert (=> tb!10467 (= result!21493 tp_is_empty!30177)))

(assert (=> b!1192815 t!39018))

(declare-fun b_and!42177 () Bool)

(assert (= b_and!42175 (and (=> t!39018 result!21493) b_and!42177)))

(declare-fun m!1101179 () Bool)

(assert (=> b!1192828 m!1101179))

(declare-fun m!1101181 () Bool)

(assert (=> b!1192828 m!1101181))

(declare-fun m!1101183 () Bool)

(assert (=> b!1192825 m!1101183))

(declare-fun m!1101185 () Bool)

(assert (=> b!1192827 m!1101185))

(declare-fun m!1101187 () Bool)

(assert (=> b!1192827 m!1101187))

(declare-fun m!1101189 () Bool)

(assert (=> b!1192823 m!1101189))

(declare-fun m!1101191 () Bool)

(assert (=> b!1192821 m!1101191))

(declare-fun m!1101193 () Bool)

(assert (=> b!1192824 m!1101193))

(declare-fun m!1101195 () Bool)

(assert (=> b!1192824 m!1101195))

(assert (=> b!1192824 m!1101195))

(declare-fun m!1101197 () Bool)

(assert (=> b!1192824 m!1101197))

(declare-fun m!1101199 () Bool)

(assert (=> b!1192824 m!1101199))

(declare-fun m!1101201 () Bool)

(assert (=> b!1192815 m!1101201))

(declare-fun m!1101203 () Bool)

(assert (=> b!1192815 m!1101203))

(declare-fun m!1101205 () Bool)

(assert (=> b!1192815 m!1101205))

(declare-fun m!1101207 () Bool)

(assert (=> b!1192815 m!1101207))

(declare-fun m!1101209 () Bool)

(assert (=> b!1192816 m!1101209))

(declare-fun m!1101211 () Bool)

(assert (=> b!1192814 m!1101211))

(declare-fun m!1101213 () Bool)

(assert (=> mapNonEmpty!47093 m!1101213))

(declare-fun m!1101215 () Bool)

(assert (=> b!1192822 m!1101215))

(declare-fun m!1101217 () Bool)

(assert (=> start!100104 m!1101217))

(declare-fun m!1101219 () Bool)

(assert (=> start!100104 m!1101219))

(check-sat (not b!1192814) (not b!1192827) (not b!1192824) (not b!1192825) (not start!100104) (not b!1192815) (not b!1192821) tp_is_empty!30177 b_and!42177 (not mapNonEmpty!47093) (not b_lambda!20809) (not b!1192828) (not b!1192823) (not b_next!25647) (not b!1192816))
(check-sat b_and!42177 (not b_next!25647))
