; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133646 () Bool)

(assert start!133646)

(declare-fun b_free!32031 () Bool)

(declare-fun b_next!32031 () Bool)

(assert (=> start!133646 (= b_free!32031 (not b_next!32031))))

(declare-fun tp!113218 () Bool)

(declare-fun b_and!51583 () Bool)

(assert (=> start!133646 (= tp!113218 b_and!51583)))

(declare-fun res!1068137 () Bool)

(declare-fun e!870520 () Bool)

(assert (=> start!133646 (=> (not res!1068137) (not e!870520))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133646 (= res!1068137 (validMask!0 mask!947))))

(assert (=> start!133646 e!870520))

(assert (=> start!133646 tp!113218))

(declare-fun tp_is_empty!38697 () Bool)

(assert (=> start!133646 tp_is_empty!38697))

(assert (=> start!133646 true))

(declare-datatypes ((array!104063 0))(
  ( (array!104064 (arr!50219 (Array (_ BitVec 32) (_ BitVec 64))) (size!50770 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104063)

(declare-fun array_inv!38959 (array!104063) Bool)

(assert (=> start!133646 (array_inv!38959 _keys!637)))

(declare-datatypes ((V!59803 0))(
  ( (V!59804 (val!19432 Int)) )
))
(declare-datatypes ((ValueCell!18318 0))(
  ( (ValueCellFull!18318 (v!22181 V!59803)) (EmptyCell!18318) )
))
(declare-datatypes ((array!104065 0))(
  ( (array!104066 (arr!50220 (Array (_ BitVec 32) ValueCell!18318)) (size!50771 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104065)

(declare-fun e!870517 () Bool)

(declare-fun array_inv!38960 (array!104065) Bool)

(assert (=> start!133646 (and (array_inv!38960 _values!487) e!870517)))

(declare-fun b!1562107 () Bool)

(declare-fun res!1068134 () Bool)

(assert (=> b!1562107 (=> (not res!1068134) (not e!870520))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562107 (= res!1068134 (and (= (size!50771 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50770 _keys!637) (size!50771 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562108 () Bool)

(declare-fun e!870521 () Bool)

(assert (=> b!1562108 (= e!870521 tp_is_empty!38697)))

(declare-fun b!1562109 () Bool)

(declare-fun res!1068133 () Bool)

(assert (=> b!1562109 (=> (not res!1068133) (not e!870520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104063 (_ BitVec 32)) Bool)

(assert (=> b!1562109 (= res!1068133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562110 () Bool)

(declare-fun mapRes!59421 () Bool)

(assert (=> b!1562110 (= e!870517 (and e!870521 mapRes!59421))))

(declare-fun condMapEmpty!59421 () Bool)

(declare-fun mapDefault!59421 () ValueCell!18318)

(assert (=> b!1562110 (= condMapEmpty!59421 (= (arr!50220 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18318)) mapDefault!59421)))))

(declare-fun b!1562111 () Bool)

(declare-fun res!1068135 () Bool)

(assert (=> b!1562111 (=> (not res!1068135) (not e!870520))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562111 (= res!1068135 (validKeyInArray!0 (select (arr!50219 _keys!637) from!782)))))

(declare-fun b!1562112 () Bool)

(declare-fun res!1068136 () Bool)

(assert (=> b!1562112 (=> (not res!1068136) (not e!870520))))

(assert (=> b!1562112 (= res!1068136 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50770 _keys!637)) (bvslt from!782 (size!50770 _keys!637))))))

(declare-fun b!1562113 () Bool)

(declare-fun e!870519 () Bool)

(assert (=> b!1562113 (= e!870519 tp_is_empty!38697)))

(declare-fun b!1562114 () Bool)

(declare-fun res!1068132 () Bool)

(assert (=> b!1562114 (=> (not res!1068132) (not e!870520))))

(declare-datatypes ((List!36632 0))(
  ( (Nil!36629) (Cons!36628 (h!38075 (_ BitVec 64)) (t!51460 List!36632)) )
))
(declare-fun arrayNoDuplicates!0 (array!104063 (_ BitVec 32) List!36632) Bool)

(assert (=> b!1562114 (= res!1068132 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36629))))

(declare-fun b!1562115 () Bool)

(assert (=> b!1562115 (= e!870520 (not true))))

(declare-fun lt!671477 () Bool)

(declare-datatypes ((tuple2!25258 0))(
  ( (tuple2!25259 (_1!12639 (_ BitVec 64)) (_2!12639 V!59803)) )
))
(declare-datatypes ((List!36633 0))(
  ( (Nil!36630) (Cons!36629 (h!38076 tuple2!25258) (t!51461 List!36633)) )
))
(declare-datatypes ((ListLongMap!22705 0))(
  ( (ListLongMap!22706 (toList!11368 List!36633)) )
))
(declare-fun lt!671478 () ListLongMap!22705)

(declare-fun contains!10288 (ListLongMap!22705 (_ BitVec 64)) Bool)

(assert (=> b!1562115 (= lt!671477 (contains!10288 lt!671478 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562115 (not (contains!10288 lt!671478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671479 () ListLongMap!22705)

(declare-fun lt!671480 () V!59803)

(declare-fun +!5022 (ListLongMap!22705 tuple2!25258) ListLongMap!22705)

(assert (=> b!1562115 (= lt!671478 (+!5022 lt!671479 (tuple2!25259 (select (arr!50219 _keys!637) from!782) lt!671480)))))

(declare-datatypes ((Unit!51908 0))(
  ( (Unit!51909) )
))
(declare-fun lt!671481 () Unit!51908)

(declare-fun addStillNotContains!558 (ListLongMap!22705 (_ BitVec 64) V!59803 (_ BitVec 64)) Unit!51908)

(assert (=> b!1562115 (= lt!671481 (addStillNotContains!558 lt!671479 (select (arr!50219 _keys!637) from!782) lt!671480 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26272 (ValueCell!18318 V!59803) V!59803)

(declare-fun dynLambda!3911 (Int (_ BitVec 64)) V!59803)

(assert (=> b!1562115 (= lt!671480 (get!26272 (select (arr!50220 _values!487) from!782) (dynLambda!3911 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!453 () V!59803)

(declare-fun zeroValue!453 () V!59803)

(declare-fun getCurrentListMapNoExtraKeys!6728 (array!104063 array!104065 (_ BitVec 32) (_ BitVec 32) V!59803 V!59803 (_ BitVec 32) Int) ListLongMap!22705)

(assert (=> b!1562115 (= lt!671479 (getCurrentListMapNoExtraKeys!6728 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59421 () Bool)

(assert (=> mapIsEmpty!59421 mapRes!59421))

(declare-fun mapNonEmpty!59421 () Bool)

(declare-fun tp!113217 () Bool)

(assert (=> mapNonEmpty!59421 (= mapRes!59421 (and tp!113217 e!870519))))

(declare-fun mapValue!59421 () ValueCell!18318)

(declare-fun mapRest!59421 () (Array (_ BitVec 32) ValueCell!18318))

(declare-fun mapKey!59421 () (_ BitVec 32))

(assert (=> mapNonEmpty!59421 (= (arr!50220 _values!487) (store mapRest!59421 mapKey!59421 mapValue!59421))))

(assert (= (and start!133646 res!1068137) b!1562107))

(assert (= (and b!1562107 res!1068134) b!1562109))

(assert (= (and b!1562109 res!1068133) b!1562114))

(assert (= (and b!1562114 res!1068132) b!1562112))

(assert (= (and b!1562112 res!1068136) b!1562111))

(assert (= (and b!1562111 res!1068135) b!1562115))

(assert (= (and b!1562110 condMapEmpty!59421) mapIsEmpty!59421))

(assert (= (and b!1562110 (not condMapEmpty!59421)) mapNonEmpty!59421))

(get-info :version)

(assert (= (and mapNonEmpty!59421 ((_ is ValueCellFull!18318) mapValue!59421)) b!1562113))

(assert (= (and b!1562110 ((_ is ValueCellFull!18318) mapDefault!59421)) b!1562108))

(assert (= start!133646 b!1562110))

(declare-fun b_lambda!24915 () Bool)

(assert (=> (not b_lambda!24915) (not b!1562115)))

(declare-fun t!51459 () Bool)

(declare-fun tb!12583 () Bool)

(assert (=> (and start!133646 (= defaultEntry!495 defaultEntry!495) t!51459) tb!12583))

(declare-fun result!26439 () Bool)

(assert (=> tb!12583 (= result!26439 tp_is_empty!38697)))

(assert (=> b!1562115 t!51459))

(declare-fun b_and!51585 () Bool)

(assert (= b_and!51583 (and (=> t!51459 result!26439) b_and!51585)))

(declare-fun m!1437891 () Bool)

(assert (=> b!1562115 m!1437891))

(declare-fun m!1437893 () Bool)

(assert (=> b!1562115 m!1437893))

(declare-fun m!1437895 () Bool)

(assert (=> b!1562115 m!1437895))

(assert (=> b!1562115 m!1437891))

(declare-fun m!1437897 () Bool)

(assert (=> b!1562115 m!1437897))

(declare-fun m!1437899 () Bool)

(assert (=> b!1562115 m!1437899))

(assert (=> b!1562115 m!1437897))

(declare-fun m!1437901 () Bool)

(assert (=> b!1562115 m!1437901))

(declare-fun m!1437903 () Bool)

(assert (=> b!1562115 m!1437903))

(declare-fun m!1437905 () Bool)

(assert (=> b!1562115 m!1437905))

(assert (=> b!1562115 m!1437893))

(declare-fun m!1437907 () Bool)

(assert (=> b!1562115 m!1437907))

(declare-fun m!1437909 () Bool)

(assert (=> b!1562109 m!1437909))

(declare-fun m!1437911 () Bool)

(assert (=> mapNonEmpty!59421 m!1437911))

(declare-fun m!1437913 () Bool)

(assert (=> start!133646 m!1437913))

(declare-fun m!1437915 () Bool)

(assert (=> start!133646 m!1437915))

(declare-fun m!1437917 () Bool)

(assert (=> start!133646 m!1437917))

(declare-fun m!1437919 () Bool)

(assert (=> b!1562114 m!1437919))

(assert (=> b!1562111 m!1437897))

(assert (=> b!1562111 m!1437897))

(declare-fun m!1437921 () Bool)

(assert (=> b!1562111 m!1437921))

(check-sat (not b_lambda!24915) (not b!1562111) (not b_next!32031) (not start!133646) (not mapNonEmpty!59421) tp_is_empty!38697 (not b!1562114) (not b!1562115) b_and!51585 (not b!1562109))
(check-sat b_and!51585 (not b_next!32031))
