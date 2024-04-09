; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133904 () Bool)

(assert start!133904)

(declare-fun b_free!32133 () Bool)

(declare-fun b_next!32133 () Bool)

(assert (=> start!133904 (= b_free!32133 (not b_next!32133))))

(declare-fun tp!113696 () Bool)

(declare-fun b_and!51713 () Bool)

(assert (=> start!133904 (= tp!113696 b_and!51713)))

(declare-fun b!1564984 () Bool)

(declare-fun res!1069947 () Bool)

(declare-fun e!872323 () Bool)

(assert (=> b!1564984 (=> (not res!1069947) (not e!872323))))

(declare-datatypes ((array!104473 0))(
  ( (array!104474 (arr!50421 (Array (_ BitVec 32) (_ BitVec 64))) (size!50972 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104473)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104473 (_ BitVec 32)) Bool)

(assert (=> b!1564984 (= res!1069947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564985 () Bool)

(declare-fun e!872322 () Bool)

(declare-fun e!872324 () Bool)

(declare-fun mapRes!59746 () Bool)

(assert (=> b!1564985 (= e!872322 (and e!872324 mapRes!59746))))

(declare-fun condMapEmpty!59746 () Bool)

(declare-datatypes ((V!60083 0))(
  ( (V!60084 (val!19537 Int)) )
))
(declare-datatypes ((ValueCell!18423 0))(
  ( (ValueCellFull!18423 (v!22288 V!60083)) (EmptyCell!18423) )
))
(declare-datatypes ((array!104475 0))(
  ( (array!104476 (arr!50422 (Array (_ BitVec 32) ValueCell!18423)) (size!50973 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104475)

(declare-fun mapDefault!59746 () ValueCell!18423)

(assert (=> b!1564985 (= condMapEmpty!59746 (= (arr!50422 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18423)) mapDefault!59746)))))

(declare-fun b!1564986 () Bool)

(declare-fun res!1069945 () Bool)

(assert (=> b!1564986 (=> (not res!1069945) (not e!872323))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564986 (= res!1069945 (and (= (size!50973 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50972 _keys!637) (size!50973 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59746 () Bool)

(declare-fun tp!113695 () Bool)

(declare-fun e!872320 () Bool)

(assert (=> mapNonEmpty!59746 (= mapRes!59746 (and tp!113695 e!872320))))

(declare-fun mapKey!59746 () (_ BitVec 32))

(declare-fun mapValue!59746 () ValueCell!18423)

(declare-fun mapRest!59746 () (Array (_ BitVec 32) ValueCell!18423))

(assert (=> mapNonEmpty!59746 (= (arr!50422 _values!487) (store mapRest!59746 mapKey!59746 mapValue!59746))))

(declare-fun b!1564987 () Bool)

(declare-fun res!1069948 () Bool)

(assert (=> b!1564987 (=> (not res!1069948) (not e!872323))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564987 (= res!1069948 (validKeyInArray!0 (select (arr!50421 _keys!637) from!782)))))

(declare-fun b!1564988 () Bool)

(declare-fun tp_is_empty!38907 () Bool)

(assert (=> b!1564988 (= e!872324 tp_is_empty!38907)))

(declare-fun mapIsEmpty!59746 () Bool)

(assert (=> mapIsEmpty!59746 mapRes!59746))

(declare-fun b!1564989 () Bool)

(assert (=> b!1564989 (= e!872320 tp_is_empty!38907)))

(declare-fun res!1069946 () Bool)

(assert (=> start!133904 (=> (not res!1069946) (not e!872323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133904 (= res!1069946 (validMask!0 mask!947))))

(assert (=> start!133904 e!872323))

(assert (=> start!133904 tp!113696))

(assert (=> start!133904 tp_is_empty!38907))

(assert (=> start!133904 true))

(declare-fun array_inv!39103 (array!104473) Bool)

(assert (=> start!133904 (array_inv!39103 _keys!637)))

(declare-fun array_inv!39104 (array!104475) Bool)

(assert (=> start!133904 (and (array_inv!39104 _values!487) e!872322)))

(declare-fun b!1564990 () Bool)

(declare-fun e!872321 () Bool)

(assert (=> b!1564990 (= e!872323 e!872321)))

(declare-fun res!1069944 () Bool)

(assert (=> b!1564990 (=> res!1069944 e!872321)))

(declare-fun defaultEntry!495 () Int)

(declare-fun minValue!453 () V!60083)

(declare-fun zeroValue!453 () V!60083)

(declare-datatypes ((tuple2!25368 0))(
  ( (tuple2!25369 (_1!12694 (_ BitVec 64)) (_2!12694 V!60083)) )
))
(declare-datatypes ((List!36755 0))(
  ( (Nil!36752) (Cons!36751 (h!38198 tuple2!25368) (t!51609 List!36755)) )
))
(declare-datatypes ((ListLongMap!22815 0))(
  ( (ListLongMap!22816 (toList!11423 List!36755)) )
))
(declare-fun contains!10341 (ListLongMap!22815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6763 (array!104473 array!104475 (_ BitVec 32) (_ BitVec 32) V!60083 V!60083 (_ BitVec 32) Int) ListLongMap!22815)

(assert (=> b!1564990 (= res!1069944 (contains!10341 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564991 () Bool)

(declare-fun res!1069950 () Bool)

(assert (=> b!1564991 (=> (not res!1069950) (not e!872323))))

(declare-datatypes ((List!36756 0))(
  ( (Nil!36753) (Cons!36752 (h!38199 (_ BitVec 64)) (t!51610 List!36756)) )
))
(declare-fun arrayNoDuplicates!0 (array!104473 (_ BitVec 32) List!36756) Bool)

(assert (=> b!1564991 (= res!1069950 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36753))))

(declare-fun b!1564992 () Bool)

(declare-fun res!1069949 () Bool)

(assert (=> b!1564992 (=> (not res!1069949) (not e!872323))))

(assert (=> b!1564992 (= res!1069949 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50972 _keys!637)) (bvslt from!782 (size!50972 _keys!637))))))

(declare-fun b!1564993 () Bool)

(assert (=> b!1564993 (= e!872321 (= (select (arr!50421 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!133904 res!1069946) b!1564986))

(assert (= (and b!1564986 res!1069945) b!1564984))

(assert (= (and b!1564984 res!1069947) b!1564991))

(assert (= (and b!1564991 res!1069950) b!1564992))

(assert (= (and b!1564992 res!1069949) b!1564987))

(assert (= (and b!1564987 res!1069948) b!1564990))

(assert (= (and b!1564990 (not res!1069944)) b!1564993))

(assert (= (and b!1564985 condMapEmpty!59746) mapIsEmpty!59746))

(assert (= (and b!1564985 (not condMapEmpty!59746)) mapNonEmpty!59746))

(get-info :version)

(assert (= (and mapNonEmpty!59746 ((_ is ValueCellFull!18423) mapValue!59746)) b!1564989))

(assert (= (and b!1564985 ((_ is ValueCellFull!18423) mapDefault!59746)) b!1564988))

(assert (= start!133904 b!1564985))

(declare-fun m!1439997 () Bool)

(assert (=> b!1564987 m!1439997))

(assert (=> b!1564987 m!1439997))

(declare-fun m!1439999 () Bool)

(assert (=> b!1564987 m!1439999))

(assert (=> b!1564993 m!1439997))

(declare-fun m!1440001 () Bool)

(assert (=> mapNonEmpty!59746 m!1440001))

(declare-fun m!1440003 () Bool)

(assert (=> b!1564990 m!1440003))

(assert (=> b!1564990 m!1440003))

(declare-fun m!1440005 () Bool)

(assert (=> b!1564990 m!1440005))

(declare-fun m!1440007 () Bool)

(assert (=> b!1564984 m!1440007))

(declare-fun m!1440009 () Bool)

(assert (=> start!133904 m!1440009))

(declare-fun m!1440011 () Bool)

(assert (=> start!133904 m!1440011))

(declare-fun m!1440013 () Bool)

(assert (=> start!133904 m!1440013))

(declare-fun m!1440015 () Bool)

(assert (=> b!1564991 m!1440015))

(check-sat b_and!51713 (not b_next!32133) (not b!1564991) (not mapNonEmpty!59746) (not start!133904) (not b!1564987) (not b!1564990) tp_is_empty!38907 (not b!1564984))
(check-sat b_and!51713 (not b_next!32133))
(get-model)

(declare-fun d!163077 () Bool)

(assert (=> d!163077 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133904 d!163077))

(declare-fun d!163079 () Bool)

(assert (=> d!163079 (= (array_inv!39103 _keys!637) (bvsge (size!50972 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133904 d!163079))

(declare-fun d!163081 () Bool)

(assert (=> d!163081 (= (array_inv!39104 _values!487) (bvsge (size!50973 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133904 d!163081))

(declare-fun d!163083 () Bool)

(declare-fun e!872347 () Bool)

(assert (=> d!163083 e!872347))

(declare-fun res!1069974 () Bool)

(assert (=> d!163083 (=> res!1069974 e!872347)))

(declare-fun lt!672066 () Bool)

(assert (=> d!163083 (= res!1069974 (not lt!672066))))

(declare-fun lt!672068 () Bool)

(assert (=> d!163083 (= lt!672066 lt!672068)))

(declare-datatypes ((Unit!51934 0))(
  ( (Unit!51935) )
))
(declare-fun lt!672067 () Unit!51934)

(declare-fun e!872348 () Unit!51934)

(assert (=> d!163083 (= lt!672067 e!872348)))

(declare-fun c!144194 () Bool)

(assert (=> d!163083 (= c!144194 lt!672068)))

(declare-fun containsKey!847 (List!36755 (_ BitVec 64)) Bool)

(assert (=> d!163083 (= lt!672068 (containsKey!847 (toList!11423 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163083 (= (contains!10341 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672066)))

(declare-fun b!1565030 () Bool)

(declare-fun lt!672065 () Unit!51934)

(assert (=> b!1565030 (= e!872348 lt!672065)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!528 (List!36755 (_ BitVec 64)) Unit!51934)

(assert (=> b!1565030 (= lt!672065 (lemmaContainsKeyImpliesGetValueByKeyDefined!528 (toList!11423 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!868 0))(
  ( (Some!867 (v!22290 V!60083)) (None!866) )
))
(declare-fun isDefined!577 (Option!868) Bool)

(declare-fun getValueByKey!793 (List!36755 (_ BitVec 64)) Option!868)

(assert (=> b!1565030 (isDefined!577 (getValueByKey!793 (toList!11423 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1565031 () Bool)

(declare-fun Unit!51936 () Unit!51934)

(assert (=> b!1565031 (= e!872348 Unit!51936)))

(declare-fun b!1565032 () Bool)

(assert (=> b!1565032 (= e!872347 (isDefined!577 (getValueByKey!793 (toList!11423 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163083 c!144194) b!1565030))

(assert (= (and d!163083 (not c!144194)) b!1565031))

(assert (= (and d!163083 (not res!1069974)) b!1565032))

(declare-fun m!1440037 () Bool)

(assert (=> d!163083 m!1440037))

(declare-fun m!1440039 () Bool)

(assert (=> b!1565030 m!1440039))

(declare-fun m!1440041 () Bool)

(assert (=> b!1565030 m!1440041))

(assert (=> b!1565030 m!1440041))

(declare-fun m!1440043 () Bool)

(assert (=> b!1565030 m!1440043))

(assert (=> b!1565032 m!1440041))

(assert (=> b!1565032 m!1440041))

(assert (=> b!1565032 m!1440043))

(assert (=> b!1564990 d!163083))

(declare-fun b!1565057 () Bool)

(declare-fun e!872364 () Bool)

(declare-fun e!872363 () Bool)

(assert (=> b!1565057 (= e!872364 e!872363)))

(assert (=> b!1565057 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50972 _keys!637)))))

(declare-fun lt!672084 () ListLongMap!22815)

(declare-fun res!1069984 () Bool)

(assert (=> b!1565057 (= res!1069984 (contains!10341 lt!672084 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1565057 (=> (not res!1069984) (not e!872363))))

(declare-fun b!1565058 () Bool)

(declare-fun e!872365 () ListLongMap!22815)

(declare-fun e!872367 () ListLongMap!22815)

(assert (=> b!1565058 (= e!872365 e!872367)))

(declare-fun c!144206 () Bool)

(assert (=> b!1565058 (= c!144206 (validKeyInArray!0 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1565059 () Bool)

(declare-fun e!872366 () Bool)

(declare-fun isEmpty!1146 (ListLongMap!22815) Bool)

(assert (=> b!1565059 (= e!872366 (isEmpty!1146 lt!672084))))

(declare-fun b!1565060 () Bool)

(declare-fun lt!672083 () Unit!51934)

(declare-fun lt!672085 () Unit!51934)

(assert (=> b!1565060 (= lt!672083 lt!672085)))

(declare-fun lt!672089 () ListLongMap!22815)

(declare-fun lt!672086 () V!60083)

(declare-fun lt!672088 () (_ BitVec 64))

(declare-fun lt!672087 () (_ BitVec 64))

(declare-fun +!5031 (ListLongMap!22815 tuple2!25368) ListLongMap!22815)

(assert (=> b!1565060 (not (contains!10341 (+!5031 lt!672089 (tuple2!25369 lt!672087 lt!672086)) lt!672088))))

(declare-fun addStillNotContains!567 (ListLongMap!22815 (_ BitVec 64) V!60083 (_ BitVec 64)) Unit!51934)

(assert (=> b!1565060 (= lt!672085 (addStillNotContains!567 lt!672089 lt!672087 lt!672086 lt!672088))))

(assert (=> b!1565060 (= lt!672088 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!26351 (ValueCell!18423 V!60083) V!60083)

(declare-fun dynLambda!3920 (Int (_ BitVec 64)) V!60083)

(assert (=> b!1565060 (= lt!672086 (get!26351 (select (arr!50422 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3920 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1565060 (= lt!672087 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))

(declare-fun call!71864 () ListLongMap!22815)

(assert (=> b!1565060 (= lt!672089 call!71864)))

(assert (=> b!1565060 (= e!872367 (+!5031 call!71864 (tuple2!25369 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26351 (select (arr!50422 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3920 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1565061 () Bool)

(assert (=> b!1565061 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50972 _keys!637)))))

(assert (=> b!1565061 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50973 _values!487)))))

(declare-fun apply!1145 (ListLongMap!22815 (_ BitVec 64)) V!60083)

(assert (=> b!1565061 (= e!872363 (= (apply!1145 lt!672084 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26351 (select (arr!50422 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3920 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1565062 () Bool)

(declare-fun e!872369 () Bool)

(assert (=> b!1565062 (= e!872369 e!872364)))

(declare-fun c!144203 () Bool)

(declare-fun e!872368 () Bool)

(assert (=> b!1565062 (= c!144203 e!872368)))

(declare-fun res!1069985 () Bool)

(assert (=> b!1565062 (=> (not res!1069985) (not e!872368))))

(assert (=> b!1565062 (= res!1069985 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50972 _keys!637)))))

(declare-fun b!1565063 () Bool)

(assert (=> b!1565063 (= e!872368 (validKeyInArray!0 (select (arr!50421 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1565063 (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))

(declare-fun bm!71861 () Bool)

(assert (=> bm!71861 (= call!71864 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495))))

(declare-fun b!1565065 () Bool)

(assert (=> b!1565065 (= e!872367 call!71864)))

(declare-fun b!1565066 () Bool)

(declare-fun res!1069983 () Bool)

(assert (=> b!1565066 (=> (not res!1069983) (not e!872369))))

(assert (=> b!1565066 (= res!1069983 (not (contains!10341 lt!672084 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1565067 () Bool)

(assert (=> b!1565067 (= e!872365 (ListLongMap!22816 Nil!36752))))

(declare-fun b!1565068 () Bool)

(assert (=> b!1565068 (= e!872364 e!872366)))

(declare-fun c!144204 () Bool)

(assert (=> b!1565068 (= c!144204 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!50972 _keys!637)))))

(declare-fun b!1565064 () Bool)

(assert (=> b!1565064 (= e!872366 (= lt!672084 (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun d!163085 () Bool)

(assert (=> d!163085 e!872369))

(declare-fun res!1069986 () Bool)

(assert (=> d!163085 (=> (not res!1069986) (not e!872369))))

(assert (=> d!163085 (= res!1069986 (not (contains!10341 lt!672084 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163085 (= lt!672084 e!872365)))

(declare-fun c!144205 () Bool)

(assert (=> d!163085 (= c!144205 (bvsge (bvadd #b00000000000000000000000000000001 from!782) (size!50972 _keys!637)))))

(assert (=> d!163085 (validMask!0 mask!947)))

(assert (=> d!163085 (= (getCurrentListMapNoExtraKeys!6763 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) lt!672084)))

(assert (= (and d!163085 c!144205) b!1565067))

(assert (= (and d!163085 (not c!144205)) b!1565058))

(assert (= (and b!1565058 c!144206) b!1565060))

(assert (= (and b!1565058 (not c!144206)) b!1565065))

(assert (= (or b!1565060 b!1565065) bm!71861))

(assert (= (and d!163085 res!1069986) b!1565066))

(assert (= (and b!1565066 res!1069983) b!1565062))

(assert (= (and b!1565062 res!1069985) b!1565063))

(assert (= (and b!1565062 c!144203) b!1565057))

(assert (= (and b!1565062 (not c!144203)) b!1565068))

(assert (= (and b!1565057 res!1069984) b!1565061))

(assert (= (and b!1565068 c!144204) b!1565064))

(assert (= (and b!1565068 (not c!144204)) b!1565059))

(declare-fun b_lambda!24943 () Bool)

(assert (=> (not b_lambda!24943) (not b!1565060)))

(declare-fun t!51614 () Bool)

(declare-fun tb!12611 () Bool)

(assert (=> (and start!133904 (= defaultEntry!495 defaultEntry!495) t!51614) tb!12611))

(declare-fun result!26501 () Bool)

(assert (=> tb!12611 (= result!26501 tp_is_empty!38907)))

(assert (=> b!1565060 t!51614))

(declare-fun b_and!51717 () Bool)

(assert (= b_and!51713 (and (=> t!51614 result!26501) b_and!51717)))

(declare-fun b_lambda!24945 () Bool)

(assert (=> (not b_lambda!24945) (not b!1565061)))

(assert (=> b!1565061 t!51614))

(declare-fun b_and!51719 () Bool)

(assert (= b_and!51717 (and (=> t!51614 result!26501) b_and!51719)))

(declare-fun m!1440045 () Bool)

(assert (=> b!1565061 m!1440045))

(declare-fun m!1440047 () Bool)

(assert (=> b!1565061 m!1440047))

(declare-fun m!1440049 () Bool)

(assert (=> b!1565061 m!1440049))

(assert (=> b!1565061 m!1440047))

(declare-fun m!1440051 () Bool)

(assert (=> b!1565061 m!1440051))

(assert (=> b!1565061 m!1440045))

(declare-fun m!1440053 () Bool)

(assert (=> b!1565061 m!1440053))

(assert (=> b!1565061 m!1440051))

(declare-fun m!1440055 () Bool)

(assert (=> b!1565066 m!1440055))

(assert (=> b!1565063 m!1440047))

(assert (=> b!1565063 m!1440047))

(declare-fun m!1440057 () Bool)

(assert (=> b!1565063 m!1440057))

(declare-fun m!1440059 () Bool)

(assert (=> b!1565064 m!1440059))

(assert (=> b!1565057 m!1440047))

(assert (=> b!1565057 m!1440047))

(declare-fun m!1440061 () Bool)

(assert (=> b!1565057 m!1440061))

(assert (=> b!1565060 m!1440045))

(declare-fun m!1440063 () Bool)

(assert (=> b!1565060 m!1440063))

(declare-fun m!1440065 () Bool)

(assert (=> b!1565060 m!1440065))

(declare-fun m!1440067 () Bool)

(assert (=> b!1565060 m!1440067))

(assert (=> b!1565060 m!1440065))

(declare-fun m!1440069 () Bool)

(assert (=> b!1565060 m!1440069))

(assert (=> b!1565060 m!1440047))

(assert (=> b!1565060 m!1440051))

(assert (=> b!1565060 m!1440045))

(assert (=> b!1565060 m!1440053))

(assert (=> b!1565060 m!1440051))

(declare-fun m!1440071 () Bool)

(assert (=> b!1565059 m!1440071))

(declare-fun m!1440073 () Bool)

(assert (=> d!163085 m!1440073))

(assert (=> d!163085 m!1440009))

(assert (=> bm!71861 m!1440059))

(assert (=> b!1565058 m!1440047))

(assert (=> b!1565058 m!1440047))

(assert (=> b!1565058 m!1440057))

(assert (=> b!1564990 d!163085))

(declare-fun b!1565081 () Bool)

(declare-fun e!872381 () Bool)

(declare-fun e!872378 () Bool)

(assert (=> b!1565081 (= e!872381 e!872378)))

(declare-fun c!144209 () Bool)

(assert (=> b!1565081 (= c!144209 (validKeyInArray!0 (select (arr!50421 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71864 () Bool)

(declare-fun call!71867 () Bool)

(assert (=> bm!71864 (= call!71867 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144209 (Cons!36752 (select (arr!50421 _keys!637) #b00000000000000000000000000000000) Nil!36753) Nil!36753)))))

(declare-fun b!1565082 () Bool)

(declare-fun e!872380 () Bool)

(assert (=> b!1565082 (= e!872380 e!872381)))

(declare-fun res!1069995 () Bool)

(assert (=> b!1565082 (=> (not res!1069995) (not e!872381))))

(declare-fun e!872379 () Bool)

(assert (=> b!1565082 (= res!1069995 (not e!872379))))

(declare-fun res!1069993 () Bool)

(assert (=> b!1565082 (=> (not res!1069993) (not e!872379))))

(assert (=> b!1565082 (= res!1069993 (validKeyInArray!0 (select (arr!50421 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1565083 () Bool)

(assert (=> b!1565083 (= e!872378 call!71867)))

(declare-fun b!1565084 () Bool)

(declare-fun contains!10343 (List!36756 (_ BitVec 64)) Bool)

(assert (=> b!1565084 (= e!872379 (contains!10343 Nil!36753 (select (arr!50421 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163087 () Bool)

(declare-fun res!1069994 () Bool)

(assert (=> d!163087 (=> res!1069994 e!872380)))

(assert (=> d!163087 (= res!1069994 (bvsge #b00000000000000000000000000000000 (size!50972 _keys!637)))))

(assert (=> d!163087 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36753) e!872380)))

(declare-fun b!1565085 () Bool)

(assert (=> b!1565085 (= e!872378 call!71867)))

(assert (= (and d!163087 (not res!1069994)) b!1565082))

(assert (= (and b!1565082 res!1069993) b!1565084))

(assert (= (and b!1565082 res!1069995) b!1565081))

(assert (= (and b!1565081 c!144209) b!1565085))

(assert (= (and b!1565081 (not c!144209)) b!1565083))

(assert (= (or b!1565085 b!1565083) bm!71864))

(declare-fun m!1440075 () Bool)

(assert (=> b!1565081 m!1440075))

(assert (=> b!1565081 m!1440075))

(declare-fun m!1440077 () Bool)

(assert (=> b!1565081 m!1440077))

(assert (=> bm!71864 m!1440075))

(declare-fun m!1440079 () Bool)

(assert (=> bm!71864 m!1440079))

(assert (=> b!1565082 m!1440075))

(assert (=> b!1565082 m!1440075))

(assert (=> b!1565082 m!1440077))

(assert (=> b!1565084 m!1440075))

(assert (=> b!1565084 m!1440075))

(declare-fun m!1440081 () Bool)

(assert (=> b!1565084 m!1440081))

(assert (=> b!1564991 d!163087))

(declare-fun d!163089 () Bool)

(assert (=> d!163089 (= (validKeyInArray!0 (select (arr!50421 _keys!637) from!782)) (and (not (= (select (arr!50421 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50421 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1564987 d!163089))

(declare-fun b!1565094 () Bool)

(declare-fun e!872390 () Bool)

(declare-fun call!71870 () Bool)

(assert (=> b!1565094 (= e!872390 call!71870)))

(declare-fun b!1565095 () Bool)

(declare-fun e!872388 () Bool)

(declare-fun e!872389 () Bool)

(assert (=> b!1565095 (= e!872388 e!872389)))

(declare-fun c!144212 () Bool)

(assert (=> b!1565095 (= c!144212 (validKeyInArray!0 (select (arr!50421 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!163091 () Bool)

(declare-fun res!1070001 () Bool)

(assert (=> d!163091 (=> res!1070001 e!872388)))

(assert (=> d!163091 (= res!1070001 (bvsge #b00000000000000000000000000000000 (size!50972 _keys!637)))))

(assert (=> d!163091 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!872388)))

(declare-fun bm!71867 () Bool)

(assert (=> bm!71867 (= call!71870 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1565096 () Bool)

(assert (=> b!1565096 (= e!872389 e!872390)))

(declare-fun lt!672097 () (_ BitVec 64))

(assert (=> b!1565096 (= lt!672097 (select (arr!50421 _keys!637) #b00000000000000000000000000000000))))

(declare-fun lt!672096 () Unit!51934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104473 (_ BitVec 64) (_ BitVec 32)) Unit!51934)

(assert (=> b!1565096 (= lt!672096 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672097 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1565096 (arrayContainsKey!0 _keys!637 lt!672097 #b00000000000000000000000000000000)))

(declare-fun lt!672098 () Unit!51934)

(assert (=> b!1565096 (= lt!672098 lt!672096)))

(declare-fun res!1070000 () Bool)

(declare-datatypes ((SeekEntryResult!13522 0))(
  ( (MissingZero!13522 (index!56485 (_ BitVec 32))) (Found!13522 (index!56486 (_ BitVec 32))) (Intermediate!13522 (undefined!14334 Bool) (index!56487 (_ BitVec 32)) (x!140592 (_ BitVec 32))) (Undefined!13522) (MissingVacant!13522 (index!56488 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104473 (_ BitVec 32)) SeekEntryResult!13522)

(assert (=> b!1565096 (= res!1070000 (= (seekEntryOrOpen!0 (select (arr!50421 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13522 #b00000000000000000000000000000000)))))

(assert (=> b!1565096 (=> (not res!1070000) (not e!872390))))

(declare-fun b!1565097 () Bool)

(assert (=> b!1565097 (= e!872389 call!71870)))

(assert (= (and d!163091 (not res!1070001)) b!1565095))

(assert (= (and b!1565095 c!144212) b!1565096))

(assert (= (and b!1565095 (not c!144212)) b!1565097))

(assert (= (and b!1565096 res!1070000) b!1565094))

(assert (= (or b!1565094 b!1565097) bm!71867))

(assert (=> b!1565095 m!1440075))

(assert (=> b!1565095 m!1440075))

(assert (=> b!1565095 m!1440077))

(declare-fun m!1440083 () Bool)

(assert (=> bm!71867 m!1440083))

(assert (=> b!1565096 m!1440075))

(declare-fun m!1440085 () Bool)

(assert (=> b!1565096 m!1440085))

(declare-fun m!1440087 () Bool)

(assert (=> b!1565096 m!1440087))

(assert (=> b!1565096 m!1440075))

(declare-fun m!1440089 () Bool)

(assert (=> b!1565096 m!1440089))

(assert (=> b!1564984 d!163091))

(declare-fun condMapEmpty!59752 () Bool)

(declare-fun mapDefault!59752 () ValueCell!18423)

(assert (=> mapNonEmpty!59746 (= condMapEmpty!59752 (= mapRest!59746 ((as const (Array (_ BitVec 32) ValueCell!18423)) mapDefault!59752)))))

(declare-fun e!872396 () Bool)

(declare-fun mapRes!59752 () Bool)

(assert (=> mapNonEmpty!59746 (= tp!113695 (and e!872396 mapRes!59752))))

(declare-fun b!1565104 () Bool)

(declare-fun e!872395 () Bool)

(assert (=> b!1565104 (= e!872395 tp_is_empty!38907)))

(declare-fun mapNonEmpty!59752 () Bool)

(declare-fun tp!113705 () Bool)

(assert (=> mapNonEmpty!59752 (= mapRes!59752 (and tp!113705 e!872395))))

(declare-fun mapValue!59752 () ValueCell!18423)

(declare-fun mapKey!59752 () (_ BitVec 32))

(declare-fun mapRest!59752 () (Array (_ BitVec 32) ValueCell!18423))

(assert (=> mapNonEmpty!59752 (= mapRest!59746 (store mapRest!59752 mapKey!59752 mapValue!59752))))

(declare-fun mapIsEmpty!59752 () Bool)

(assert (=> mapIsEmpty!59752 mapRes!59752))

(declare-fun b!1565105 () Bool)

(assert (=> b!1565105 (= e!872396 tp_is_empty!38907)))

(assert (= (and mapNonEmpty!59746 condMapEmpty!59752) mapIsEmpty!59752))

(assert (= (and mapNonEmpty!59746 (not condMapEmpty!59752)) mapNonEmpty!59752))

(assert (= (and mapNonEmpty!59752 ((_ is ValueCellFull!18423) mapValue!59752)) b!1565104))

(assert (= (and mapNonEmpty!59746 ((_ is ValueCellFull!18423) mapDefault!59752)) b!1565105))

(declare-fun m!1440091 () Bool)

(assert (=> mapNonEmpty!59752 m!1440091))

(declare-fun b_lambda!24947 () Bool)

(assert (= b_lambda!24945 (or (and start!133904 b_free!32133) b_lambda!24947)))

(declare-fun b_lambda!24949 () Bool)

(assert (= b_lambda!24943 (or (and start!133904 b_free!32133) b_lambda!24949)))

(check-sat (not mapNonEmpty!59752) (not d!163083) (not b!1565081) (not b!1565063) (not b!1565084) b_and!51719 tp_is_empty!38907 (not b!1565061) (not b!1565030) (not b!1565096) (not b!1565082) (not b_lambda!24949) (not b!1565059) (not b!1565060) (not b_lambda!24947) (not b_next!32133) (not bm!71864) (not b!1565032) (not b!1565066) (not b!1565057) (not bm!71867) (not b!1565095) (not d!163085) (not b!1565064) (not b!1565058) (not bm!71861))
(check-sat b_and!51719 (not b_next!32133))
