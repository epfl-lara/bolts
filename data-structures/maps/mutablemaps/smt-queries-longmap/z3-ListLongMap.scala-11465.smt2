; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133622 () Bool)

(assert start!133622)

(declare-fun b_free!32007 () Bool)

(declare-fun b_next!32007 () Bool)

(assert (=> start!133622 (= b_free!32007 (not b_next!32007))))

(declare-fun tp!113146 () Bool)

(declare-fun b_and!51535 () Bool)

(assert (=> start!133622 (= tp!113146 b_and!51535)))

(declare-fun b!1561759 () Bool)

(declare-fun e!870341 () Bool)

(declare-fun tp_is_empty!38673 () Bool)

(assert (=> b!1561759 (= e!870341 tp_is_empty!38673)))

(declare-fun b!1561760 () Bool)

(declare-fun res!1067919 () Bool)

(declare-fun e!870337 () Bool)

(assert (=> b!1561760 (=> (not res!1067919) (not e!870337))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104017 0))(
  ( (array!104018 (arr!50196 (Array (_ BitVec 32) (_ BitVec 64))) (size!50747 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104017)

(declare-datatypes ((V!59771 0))(
  ( (V!59772 (val!19420 Int)) )
))
(declare-datatypes ((ValueCell!18306 0))(
  ( (ValueCellFull!18306 (v!22169 V!59771)) (EmptyCell!18306) )
))
(declare-datatypes ((array!104019 0))(
  ( (array!104020 (arr!50197 (Array (_ BitVec 32) ValueCell!18306)) (size!50748 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104019)

(assert (=> b!1561760 (= res!1067919 (and (= (size!50748 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50747 _keys!637) (size!50748 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561761 () Bool)

(declare-fun res!1067918 () Bool)

(assert (=> b!1561761 (=> (not res!1067918) (not e!870337))))

(declare-datatypes ((List!36616 0))(
  ( (Nil!36613) (Cons!36612 (h!38059 (_ BitVec 64)) (t!51420 List!36616)) )
))
(declare-fun arrayNoDuplicates!0 (array!104017 (_ BitVec 32) List!36616) Bool)

(assert (=> b!1561761 (= res!1067918 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36613))))

(declare-fun b!1561762 () Bool)

(declare-fun res!1067916 () Bool)

(assert (=> b!1561762 (=> (not res!1067916) (not e!870337))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561762 (= res!1067916 (validKeyInArray!0 (select (arr!50196 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59385 () Bool)

(declare-fun mapRes!59385 () Bool)

(declare-fun tp!113145 () Bool)

(declare-fun e!870339 () Bool)

(assert (=> mapNonEmpty!59385 (= mapRes!59385 (and tp!113145 e!870339))))

(declare-fun mapRest!59385 () (Array (_ BitVec 32) ValueCell!18306))

(declare-fun mapKey!59385 () (_ BitVec 32))

(declare-fun mapValue!59385 () ValueCell!18306)

(assert (=> mapNonEmpty!59385 (= (arr!50197 _values!487) (store mapRest!59385 mapKey!59385 mapValue!59385))))

(declare-fun b!1561763 () Bool)

(declare-fun res!1067921 () Bool)

(assert (=> b!1561763 (=> (not res!1067921) (not e!870337))))

(assert (=> b!1561763 (= res!1067921 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50747 _keys!637)) (bvslt from!782 (size!50747 _keys!637))))))

(declare-fun res!1067920 () Bool)

(assert (=> start!133622 (=> (not res!1067920) (not e!870337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133622 (= res!1067920 (validMask!0 mask!947))))

(assert (=> start!133622 e!870337))

(assert (=> start!133622 tp!113146))

(assert (=> start!133622 tp_is_empty!38673))

(assert (=> start!133622 true))

(declare-fun array_inv!38943 (array!104017) Bool)

(assert (=> start!133622 (array_inv!38943 _keys!637)))

(declare-fun e!870338 () Bool)

(declare-fun array_inv!38944 (array!104019) Bool)

(assert (=> start!133622 (and (array_inv!38944 _values!487) e!870338)))

(declare-fun b!1561764 () Bool)

(assert (=> b!1561764 (= e!870337 (not true))))

(declare-fun lt!671298 () Bool)

(declare-datatypes ((tuple2!25240 0))(
  ( (tuple2!25241 (_1!12630 (_ BitVec 64)) (_2!12630 V!59771)) )
))
(declare-datatypes ((List!36617 0))(
  ( (Nil!36614) (Cons!36613 (h!38060 tuple2!25240) (t!51421 List!36617)) )
))
(declare-datatypes ((ListLongMap!22687 0))(
  ( (ListLongMap!22688 (toList!11359 List!36617)) )
))
(declare-fun lt!671297 () ListLongMap!22687)

(declare-fun contains!10279 (ListLongMap!22687 (_ BitVec 64)) Bool)

(assert (=> b!1561764 (= lt!671298 (contains!10279 lt!671297 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561764 (not (contains!10279 lt!671297 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671301 () V!59771)

(declare-fun lt!671299 () ListLongMap!22687)

(declare-fun +!5013 (ListLongMap!22687 tuple2!25240) ListLongMap!22687)

(assert (=> b!1561764 (= lt!671297 (+!5013 lt!671299 (tuple2!25241 (select (arr!50196 _keys!637) from!782) lt!671301)))))

(declare-datatypes ((Unit!51890 0))(
  ( (Unit!51891) )
))
(declare-fun lt!671300 () Unit!51890)

(declare-fun addStillNotContains!549 (ListLongMap!22687 (_ BitVec 64) V!59771 (_ BitVec 64)) Unit!51890)

(assert (=> b!1561764 (= lt!671300 (addStillNotContains!549 lt!671299 (select (arr!50196 _keys!637) from!782) lt!671301 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26255 (ValueCell!18306 V!59771) V!59771)

(declare-fun dynLambda!3902 (Int (_ BitVec 64)) V!59771)

(assert (=> b!1561764 (= lt!671301 (get!26255 (select (arr!50197 _values!487) from!782) (dynLambda!3902 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59771)

(declare-fun minValue!453 () V!59771)

(declare-fun getCurrentListMapNoExtraKeys!6719 (array!104017 array!104019 (_ BitVec 32) (_ BitVec 32) V!59771 V!59771 (_ BitVec 32) Int) ListLongMap!22687)

(assert (=> b!1561764 (= lt!671299 (getCurrentListMapNoExtraKeys!6719 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561765 () Bool)

(assert (=> b!1561765 (= e!870339 tp_is_empty!38673)))

(declare-fun b!1561766 () Bool)

(assert (=> b!1561766 (= e!870338 (and e!870341 mapRes!59385))))

(declare-fun condMapEmpty!59385 () Bool)

(declare-fun mapDefault!59385 () ValueCell!18306)

(assert (=> b!1561766 (= condMapEmpty!59385 (= (arr!50197 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18306)) mapDefault!59385)))))

(declare-fun b!1561767 () Bool)

(declare-fun res!1067917 () Bool)

(assert (=> b!1561767 (=> (not res!1067917) (not e!870337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104017 (_ BitVec 32)) Bool)

(assert (=> b!1561767 (= res!1067917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59385 () Bool)

(assert (=> mapIsEmpty!59385 mapRes!59385))

(assert (= (and start!133622 res!1067920) b!1561760))

(assert (= (and b!1561760 res!1067919) b!1561767))

(assert (= (and b!1561767 res!1067917) b!1561761))

(assert (= (and b!1561761 res!1067918) b!1561763))

(assert (= (and b!1561763 res!1067921) b!1561762))

(assert (= (and b!1561762 res!1067916) b!1561764))

(assert (= (and b!1561766 condMapEmpty!59385) mapIsEmpty!59385))

(assert (= (and b!1561766 (not condMapEmpty!59385)) mapNonEmpty!59385))

(get-info :version)

(assert (= (and mapNonEmpty!59385 ((_ is ValueCellFull!18306) mapValue!59385)) b!1561765))

(assert (= (and b!1561766 ((_ is ValueCellFull!18306) mapDefault!59385)) b!1561759))

(assert (= start!133622 b!1561766))

(declare-fun b_lambda!24891 () Bool)

(assert (=> (not b_lambda!24891) (not b!1561764)))

(declare-fun t!51419 () Bool)

(declare-fun tb!12559 () Bool)

(assert (=> (and start!133622 (= defaultEntry!495 defaultEntry!495) t!51419) tb!12559))

(declare-fun result!26391 () Bool)

(assert (=> tb!12559 (= result!26391 tp_is_empty!38673)))

(assert (=> b!1561764 t!51419))

(declare-fun b_and!51537 () Bool)

(assert (= b_and!51535 (and (=> t!51419 result!26391) b_and!51537)))

(declare-fun m!1437507 () Bool)

(assert (=> b!1561767 m!1437507))

(declare-fun m!1437509 () Bool)

(assert (=> b!1561764 m!1437509))

(declare-fun m!1437511 () Bool)

(assert (=> b!1561764 m!1437511))

(declare-fun m!1437513 () Bool)

(assert (=> b!1561764 m!1437513))

(declare-fun m!1437515 () Bool)

(assert (=> b!1561764 m!1437515))

(assert (=> b!1561764 m!1437509))

(declare-fun m!1437517 () Bool)

(assert (=> b!1561764 m!1437517))

(declare-fun m!1437519 () Bool)

(assert (=> b!1561764 m!1437519))

(assert (=> b!1561764 m!1437511))

(declare-fun m!1437521 () Bool)

(assert (=> b!1561764 m!1437521))

(assert (=> b!1561764 m!1437517))

(declare-fun m!1437523 () Bool)

(assert (=> b!1561764 m!1437523))

(declare-fun m!1437525 () Bool)

(assert (=> b!1561764 m!1437525))

(declare-fun m!1437527 () Bool)

(assert (=> mapNonEmpty!59385 m!1437527))

(assert (=> b!1561762 m!1437517))

(assert (=> b!1561762 m!1437517))

(declare-fun m!1437529 () Bool)

(assert (=> b!1561762 m!1437529))

(declare-fun m!1437531 () Bool)

(assert (=> start!133622 m!1437531))

(declare-fun m!1437533 () Bool)

(assert (=> start!133622 m!1437533))

(declare-fun m!1437535 () Bool)

(assert (=> start!133622 m!1437535))

(declare-fun m!1437537 () Bool)

(assert (=> b!1561761 m!1437537))

(check-sat (not b!1561767) (not start!133622) b_and!51537 tp_is_empty!38673 (not b_next!32007) (not b!1561762) (not mapNonEmpty!59385) (not b_lambda!24891) (not b!1561761) (not b!1561764))
(check-sat b_and!51537 (not b_next!32007))
