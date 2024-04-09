; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133990 () Bool)

(assert start!133990)

(declare-fun b_free!32181 () Bool)

(declare-fun b_next!32181 () Bool)

(assert (=> start!133990 (= b_free!32181 (not b_next!32181))))

(declare-fun tp!113845 () Bool)

(declare-fun b_and!51813 () Bool)

(assert (=> start!133990 (= tp!113845 b_and!51813)))

(declare-fun b!1565885 () Bool)

(declare-fun e!872821 () Bool)

(declare-fun tp_is_empty!38955 () Bool)

(assert (=> b!1565885 (= e!872821 tp_is_empty!38955)))

(declare-fun res!1070480 () Bool)

(declare-fun e!872822 () Bool)

(assert (=> start!133990 (=> (not res!1070480) (not e!872822))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133990 (= res!1070480 (validMask!0 mask!947))))

(assert (=> start!133990 e!872822))

(assert (=> start!133990 tp!113845))

(assert (=> start!133990 tp_is_empty!38955))

(assert (=> start!133990 true))

(declare-datatypes ((array!104569 0))(
  ( (array!104570 (arr!50467 (Array (_ BitVec 32) (_ BitVec 64))) (size!51018 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104569)

(declare-fun array_inv!39133 (array!104569) Bool)

(assert (=> start!133990 (array_inv!39133 _keys!637)))

(declare-datatypes ((V!60147 0))(
  ( (V!60148 (val!19561 Int)) )
))
(declare-datatypes ((ValueCell!18447 0))(
  ( (ValueCellFull!18447 (v!22314 V!60147)) (EmptyCell!18447) )
))
(declare-datatypes ((array!104571 0))(
  ( (array!104572 (arr!50468 (Array (_ BitVec 32) ValueCell!18447)) (size!51019 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104571)

(declare-fun e!872818 () Bool)

(declare-fun array_inv!39134 (array!104571) Bool)

(assert (=> start!133990 (and (array_inv!39134 _values!487) e!872818)))

(declare-fun b!1565886 () Bool)

(declare-fun e!872819 () Bool)

(declare-fun mapRes!59824 () Bool)

(assert (=> b!1565886 (= e!872818 (and e!872819 mapRes!59824))))

(declare-fun condMapEmpty!59824 () Bool)

(declare-fun mapDefault!59824 () ValueCell!18447)

(assert (=> b!1565886 (= condMapEmpty!59824 (= (arr!50468 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18447)) mapDefault!59824)))))

(declare-fun b!1565887 () Bool)

(declare-fun res!1070478 () Bool)

(assert (=> b!1565887 (=> (not res!1070478) (not e!872822))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565887 (= res!1070478 (validKeyInArray!0 (select (arr!50467 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59824 () Bool)

(assert (=> mapIsEmpty!59824 mapRes!59824))

(declare-fun b!1565888 () Bool)

(declare-fun res!1070479 () Bool)

(assert (=> b!1565888 (=> (not res!1070479) (not e!872822))))

(assert (=> b!1565888 (= res!1070479 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51018 _keys!637)) (bvslt from!782 (size!51018 _keys!637))))))

(declare-fun b!1565889 () Bool)

(declare-fun res!1070476 () Bool)

(assert (=> b!1565889 (=> (not res!1070476) (not e!872822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104569 (_ BitVec 32)) Bool)

(assert (=> b!1565889 (= res!1070476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565890 () Bool)

(declare-fun res!1070477 () Bool)

(assert (=> b!1565890 (=> (not res!1070477) (not e!872822))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1565890 (= res!1070477 (and (= (size!51019 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51018 _keys!637) (size!51019 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59824 () Bool)

(declare-fun tp!113846 () Bool)

(assert (=> mapNonEmpty!59824 (= mapRes!59824 (and tp!113846 e!872821))))

(declare-fun mapRest!59824 () (Array (_ BitVec 32) ValueCell!18447))

(declare-fun mapValue!59824 () ValueCell!18447)

(declare-fun mapKey!59824 () (_ BitVec 32))

(assert (=> mapNonEmpty!59824 (= (arr!50468 _values!487) (store mapRest!59824 mapKey!59824 mapValue!59824))))

(declare-fun b!1565891 () Bool)

(assert (=> b!1565891 (= e!872819 tp_is_empty!38955)))

(declare-fun b!1565892 () Bool)

(assert (=> b!1565892 (= e!872822 (not true))))

(declare-fun lt!672436 () Bool)

(declare-datatypes ((tuple2!25402 0))(
  ( (tuple2!25403 (_1!12711 (_ BitVec 64)) (_2!12711 V!60147)) )
))
(declare-datatypes ((List!36788 0))(
  ( (Nil!36785) (Cons!36784 (h!38231 tuple2!25402) (t!51690 List!36788)) )
))
(declare-datatypes ((ListLongMap!22849 0))(
  ( (ListLongMap!22850 (toList!11440 List!36788)) )
))
(declare-fun lt!672437 () ListLongMap!22849)

(declare-fun contains!10361 (ListLongMap!22849 (_ BitVec 64)) Bool)

(assert (=> b!1565892 (= lt!672436 (contains!10361 lt!672437 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565892 (not (contains!10361 lt!672437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672434 () V!60147)

(declare-fun lt!672433 () ListLongMap!22849)

(declare-fun +!5047 (ListLongMap!22849 tuple2!25402) ListLongMap!22849)

(assert (=> b!1565892 (= lt!672437 (+!5047 lt!672433 (tuple2!25403 (select (arr!50467 _keys!637) from!782) lt!672434)))))

(declare-datatypes ((Unit!51968 0))(
  ( (Unit!51969) )
))
(declare-fun lt!672435 () Unit!51968)

(declare-fun addStillNotContains!583 (ListLongMap!22849 (_ BitVec 64) V!60147 (_ BitVec 64)) Unit!51968)

(assert (=> b!1565892 (= lt!672435 (addStillNotContains!583 lt!672433 (select (arr!50467 _keys!637) from!782) lt!672434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26385 (ValueCell!18447 V!60147) V!60147)

(declare-fun dynLambda!3936 (Int (_ BitVec 64)) V!60147)

(assert (=> b!1565892 (= lt!672434 (get!26385 (select (arr!50468 _values!487) from!782) (dynLambda!3936 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60147)

(declare-fun minValue!453 () V!60147)

(declare-fun getCurrentListMapNoExtraKeys!6780 (array!104569 array!104571 (_ BitVec 32) (_ BitVec 32) V!60147 V!60147 (_ BitVec 32) Int) ListLongMap!22849)

(assert (=> b!1565892 (= lt!672433 (getCurrentListMapNoExtraKeys!6780 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565893 () Bool)

(declare-fun res!1070481 () Bool)

(assert (=> b!1565893 (=> (not res!1070481) (not e!872822))))

(declare-datatypes ((List!36789 0))(
  ( (Nil!36786) (Cons!36785 (h!38232 (_ BitVec 64)) (t!51691 List!36789)) )
))
(declare-fun arrayNoDuplicates!0 (array!104569 (_ BitVec 32) List!36789) Bool)

(assert (=> b!1565893 (= res!1070481 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36786))))

(assert (= (and start!133990 res!1070480) b!1565890))

(assert (= (and b!1565890 res!1070477) b!1565889))

(assert (= (and b!1565889 res!1070476) b!1565893))

(assert (= (and b!1565893 res!1070481) b!1565888))

(assert (= (and b!1565888 res!1070479) b!1565887))

(assert (= (and b!1565887 res!1070478) b!1565892))

(assert (= (and b!1565886 condMapEmpty!59824) mapIsEmpty!59824))

(assert (= (and b!1565886 (not condMapEmpty!59824)) mapNonEmpty!59824))

(get-info :version)

(assert (= (and mapNonEmpty!59824 ((_ is ValueCellFull!18447) mapValue!59824)) b!1565885))

(assert (= (and b!1565886 ((_ is ValueCellFull!18447) mapDefault!59824)) b!1565891))

(assert (= start!133990 b!1565886))

(declare-fun b_lambda!25005 () Bool)

(assert (=> (not b_lambda!25005) (not b!1565892)))

(declare-fun t!51689 () Bool)

(declare-fun tb!12657 () Bool)

(assert (=> (and start!133990 (= defaultEntry!495 defaultEntry!495) t!51689) tb!12657))

(declare-fun result!26597 () Bool)

(assert (=> tb!12657 (= result!26597 tp_is_empty!38955)))

(assert (=> b!1565892 t!51689))

(declare-fun b_and!51815 () Bool)

(assert (= b_and!51813 (and (=> t!51689 result!26597) b_and!51815)))

(declare-fun m!1440865 () Bool)

(assert (=> b!1565889 m!1440865))

(declare-fun m!1440867 () Bool)

(assert (=> b!1565887 m!1440867))

(assert (=> b!1565887 m!1440867))

(declare-fun m!1440869 () Bool)

(assert (=> b!1565887 m!1440869))

(declare-fun m!1440871 () Bool)

(assert (=> b!1565893 m!1440871))

(declare-fun m!1440873 () Bool)

(assert (=> b!1565892 m!1440873))

(declare-fun m!1440875 () Bool)

(assert (=> b!1565892 m!1440875))

(declare-fun m!1440877 () Bool)

(assert (=> b!1565892 m!1440877))

(declare-fun m!1440879 () Bool)

(assert (=> b!1565892 m!1440879))

(assert (=> b!1565892 m!1440867))

(declare-fun m!1440881 () Bool)

(assert (=> b!1565892 m!1440881))

(assert (=> b!1565892 m!1440873))

(assert (=> b!1565892 m!1440867))

(declare-fun m!1440883 () Bool)

(assert (=> b!1565892 m!1440883))

(declare-fun m!1440885 () Bool)

(assert (=> b!1565892 m!1440885))

(assert (=> b!1565892 m!1440875))

(declare-fun m!1440887 () Bool)

(assert (=> b!1565892 m!1440887))

(declare-fun m!1440889 () Bool)

(assert (=> mapNonEmpty!59824 m!1440889))

(declare-fun m!1440891 () Bool)

(assert (=> start!133990 m!1440891))

(declare-fun m!1440893 () Bool)

(assert (=> start!133990 m!1440893))

(declare-fun m!1440895 () Bool)

(assert (=> start!133990 m!1440895))

(check-sat b_and!51815 (not b_next!32181) (not b!1565889) (not b_lambda!25005) tp_is_empty!38955 (not b!1565893) (not b!1565887) (not mapNonEmpty!59824) (not start!133990) (not b!1565892))
(check-sat b_and!51815 (not b_next!32181))
