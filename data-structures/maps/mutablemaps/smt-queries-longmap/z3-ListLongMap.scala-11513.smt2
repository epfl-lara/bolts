; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133996 () Bool)

(assert start!133996)

(declare-fun b_free!32187 () Bool)

(declare-fun b_next!32187 () Bool)

(assert (=> start!133996 (= b_free!32187 (not b_next!32187))))

(declare-fun tp!113863 () Bool)

(declare-fun b_and!51825 () Bool)

(assert (=> start!133996 (= tp!113863 b_and!51825)))

(declare-fun res!1070547 () Bool)

(declare-fun e!872873 () Bool)

(assert (=> start!133996 (=> (not res!1070547) (not e!872873))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133996 (= res!1070547 (validMask!0 mask!947))))

(assert (=> start!133996 e!872873))

(assert (=> start!133996 tp!113863))

(declare-fun tp_is_empty!38961 () Bool)

(assert (=> start!133996 tp_is_empty!38961))

(assert (=> start!133996 true))

(declare-datatypes ((array!104581 0))(
  ( (array!104582 (arr!50473 (Array (_ BitVec 32) (_ BitVec 64))) (size!51024 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104581)

(declare-fun array_inv!39137 (array!104581) Bool)

(assert (=> start!133996 (array_inv!39137 _keys!637)))

(declare-datatypes ((V!60155 0))(
  ( (V!60156 (val!19564 Int)) )
))
(declare-datatypes ((ValueCell!18450 0))(
  ( (ValueCellFull!18450 (v!22317 V!60155)) (EmptyCell!18450) )
))
(declare-datatypes ((array!104583 0))(
  ( (array!104584 (arr!50474 (Array (_ BitVec 32) ValueCell!18450)) (size!51025 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104583)

(declare-fun e!872869 () Bool)

(declare-fun array_inv!39138 (array!104583) Bool)

(assert (=> start!133996 (and (array_inv!39138 _values!487) e!872869)))

(declare-fun lt!672474 () V!60155)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun b!1565982 () Bool)

(declare-datatypes ((tuple2!25406 0))(
  ( (tuple2!25407 (_1!12713 (_ BitVec 64)) (_2!12713 V!60155)) )
))
(declare-datatypes ((List!36792 0))(
  ( (Nil!36789) (Cons!36788 (h!38235 tuple2!25406) (t!51700 List!36792)) )
))
(declare-datatypes ((ListLongMap!22853 0))(
  ( (ListLongMap!22854 (toList!11442 List!36792)) )
))
(declare-fun lt!672476 () ListLongMap!22853)

(declare-fun e!872868 () Bool)

(declare-fun apply!1148 (ListLongMap!22853 (_ BitVec 64)) V!60155)

(assert (=> b!1565982 (= e!872868 (= (apply!1148 lt!672476 (select (arr!50473 _keys!637) from!782)) lt!672474))))

(declare-fun b!1565983 () Bool)

(declare-fun res!1070541 () Bool)

(assert (=> b!1565983 (=> (not res!1070541) (not e!872873))))

(declare-datatypes ((List!36793 0))(
  ( (Nil!36790) (Cons!36789 (h!38236 (_ BitVec 64)) (t!51701 List!36793)) )
))
(declare-fun arrayNoDuplicates!0 (array!104581 (_ BitVec 32) List!36793) Bool)

(assert (=> b!1565983 (= res!1070541 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36790))))

(declare-fun b!1565984 () Bool)

(assert (=> b!1565984 (= e!872873 (not e!872868))))

(declare-fun res!1070544 () Bool)

(assert (=> b!1565984 (=> (not res!1070544) (not e!872868))))

(declare-fun contains!10363 (ListLongMap!22853 (_ BitVec 64)) Bool)

(assert (=> b!1565984 (= res!1070544 (not (contains!10363 lt!672476 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1565984 (not (contains!10363 lt!672476 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672473 () ListLongMap!22853)

(declare-fun +!5049 (ListLongMap!22853 tuple2!25406) ListLongMap!22853)

(assert (=> b!1565984 (= lt!672476 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(declare-datatypes ((Unit!51972 0))(
  ( (Unit!51973) )
))
(declare-fun lt!672475 () Unit!51972)

(declare-fun addStillNotContains!585 (ListLongMap!22853 (_ BitVec 64) V!60155 (_ BitVec 64)) Unit!51972)

(assert (=> b!1565984 (= lt!672475 (addStillNotContains!585 lt!672473 (select (arr!50473 _keys!637) from!782) lt!672474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26389 (ValueCell!18450 V!60155) V!60155)

(declare-fun dynLambda!3938 (Int (_ BitVec 64)) V!60155)

(assert (=> b!1565984 (= lt!672474 (get!26389 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60155)

(declare-fun zeroValue!453 () V!60155)

(declare-fun getCurrentListMapNoExtraKeys!6782 (array!104581 array!104583 (_ BitVec 32) (_ BitVec 32) V!60155 V!60155 (_ BitVec 32) Int) ListLongMap!22853)

(assert (=> b!1565984 (= lt!672473 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565985 () Bool)

(declare-fun res!1070546 () Bool)

(assert (=> b!1565985 (=> (not res!1070546) (not e!872873))))

(assert (=> b!1565985 (= res!1070546 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51024 _keys!637)) (bvslt from!782 (size!51024 _keys!637))))))

(declare-fun b!1565986 () Bool)

(declare-fun res!1070543 () Bool)

(assert (=> b!1565986 (=> (not res!1070543) (not e!872873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104581 (_ BitVec 32)) Bool)

(assert (=> b!1565986 (= res!1070543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565987 () Bool)

(declare-fun res!1070540 () Bool)

(assert (=> b!1565987 (=> (not res!1070540) (not e!872873))))

(assert (=> b!1565987 (= res!1070540 (and (= (size!51025 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51024 _keys!637) (size!51025 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565988 () Bool)

(declare-fun e!872871 () Bool)

(declare-fun mapRes!59833 () Bool)

(assert (=> b!1565988 (= e!872869 (and e!872871 mapRes!59833))))

(declare-fun condMapEmpty!59833 () Bool)

(declare-fun mapDefault!59833 () ValueCell!18450)

(assert (=> b!1565988 (= condMapEmpty!59833 (= (arr!50474 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18450)) mapDefault!59833)))))

(declare-fun mapIsEmpty!59833 () Bool)

(assert (=> mapIsEmpty!59833 mapRes!59833))

(declare-fun b!1565989 () Bool)

(declare-fun res!1070545 () Bool)

(assert (=> b!1565989 (=> (not res!1070545) (not e!872873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565989 (= res!1070545 (validKeyInArray!0 (select (arr!50473 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59833 () Bool)

(declare-fun tp!113864 () Bool)

(declare-fun e!872870 () Bool)

(assert (=> mapNonEmpty!59833 (= mapRes!59833 (and tp!113864 e!872870))))

(declare-fun mapRest!59833 () (Array (_ BitVec 32) ValueCell!18450))

(declare-fun mapValue!59833 () ValueCell!18450)

(declare-fun mapKey!59833 () (_ BitVec 32))

(assert (=> mapNonEmpty!59833 (= (arr!50474 _values!487) (store mapRest!59833 mapKey!59833 mapValue!59833))))

(declare-fun b!1565990 () Bool)

(declare-fun res!1070542 () Bool)

(assert (=> b!1565990 (=> (not res!1070542) (not e!872868))))

(assert (=> b!1565990 (= res!1070542 (contains!10363 lt!672476 (select (arr!50473 _keys!637) from!782)))))

(declare-fun b!1565991 () Bool)

(assert (=> b!1565991 (= e!872871 tp_is_empty!38961)))

(declare-fun b!1565992 () Bool)

(assert (=> b!1565992 (= e!872870 tp_is_empty!38961)))

(assert (= (and start!133996 res!1070547) b!1565987))

(assert (= (and b!1565987 res!1070540) b!1565986))

(assert (= (and b!1565986 res!1070543) b!1565983))

(assert (= (and b!1565983 res!1070541) b!1565985))

(assert (= (and b!1565985 res!1070546) b!1565989))

(assert (= (and b!1565989 res!1070545) b!1565984))

(assert (= (and b!1565984 res!1070544) b!1565990))

(assert (= (and b!1565990 res!1070542) b!1565982))

(assert (= (and b!1565988 condMapEmpty!59833) mapIsEmpty!59833))

(assert (= (and b!1565988 (not condMapEmpty!59833)) mapNonEmpty!59833))

(get-info :version)

(assert (= (and mapNonEmpty!59833 ((_ is ValueCellFull!18450) mapValue!59833)) b!1565992))

(assert (= (and b!1565988 ((_ is ValueCellFull!18450) mapDefault!59833)) b!1565991))

(assert (= start!133996 b!1565988))

(declare-fun b_lambda!25011 () Bool)

(assert (=> (not b_lambda!25011) (not b!1565984)))

(declare-fun t!51699 () Bool)

(declare-fun tb!12663 () Bool)

(assert (=> (and start!133996 (= defaultEntry!495 defaultEntry!495) t!51699) tb!12663))

(declare-fun result!26609 () Bool)

(assert (=> tb!12663 (= result!26609 tp_is_empty!38961)))

(assert (=> b!1565984 t!51699))

(declare-fun b_and!51827 () Bool)

(assert (= b_and!51825 (and (=> t!51699 result!26609) b_and!51827)))

(declare-fun m!1440965 () Bool)

(assert (=> b!1565986 m!1440965))

(declare-fun m!1440967 () Bool)

(assert (=> mapNonEmpty!59833 m!1440967))

(declare-fun m!1440969 () Bool)

(assert (=> b!1565984 m!1440969))

(declare-fun m!1440971 () Bool)

(assert (=> b!1565984 m!1440971))

(declare-fun m!1440973 () Bool)

(assert (=> b!1565984 m!1440973))

(declare-fun m!1440975 () Bool)

(assert (=> b!1565984 m!1440975))

(assert (=> b!1565984 m!1440971))

(declare-fun m!1440977 () Bool)

(assert (=> b!1565984 m!1440977))

(declare-fun m!1440979 () Bool)

(assert (=> b!1565984 m!1440979))

(assert (=> b!1565984 m!1440969))

(declare-fun m!1440981 () Bool)

(assert (=> b!1565984 m!1440981))

(declare-fun m!1440983 () Bool)

(assert (=> b!1565984 m!1440983))

(declare-fun m!1440985 () Bool)

(assert (=> b!1565984 m!1440985))

(assert (=> b!1565984 m!1440983))

(assert (=> b!1565982 m!1440983))

(assert (=> b!1565982 m!1440983))

(declare-fun m!1440987 () Bool)

(assert (=> b!1565982 m!1440987))

(assert (=> b!1565990 m!1440983))

(assert (=> b!1565990 m!1440983))

(declare-fun m!1440989 () Bool)

(assert (=> b!1565990 m!1440989))

(declare-fun m!1440991 () Bool)

(assert (=> b!1565983 m!1440991))

(assert (=> b!1565989 m!1440983))

(assert (=> b!1565989 m!1440983))

(declare-fun m!1440993 () Bool)

(assert (=> b!1565989 m!1440993))

(declare-fun m!1440995 () Bool)

(assert (=> start!133996 m!1440995))

(declare-fun m!1440997 () Bool)

(assert (=> start!133996 m!1440997))

(declare-fun m!1440999 () Bool)

(assert (=> start!133996 m!1440999))

(check-sat (not b_next!32187) (not b!1565982) (not b!1565990) (not start!133996) (not mapNonEmpty!59833) (not b!1565989) b_and!51827 (not b!1565984) (not b!1565986) (not b!1565983) (not b_lambda!25011) tp_is_empty!38961)
(check-sat b_and!51827 (not b_next!32187))
(get-model)

(declare-fun b_lambda!25015 () Bool)

(assert (= b_lambda!25011 (or (and start!133996 b_free!32187) b_lambda!25015)))

(check-sat (not b_next!32187) (not b!1565982) (not b!1565990) tp_is_empty!38961 (not b_lambda!25015) (not start!133996) (not mapNonEmpty!59833) (not b!1565989) b_and!51827 (not b!1565984) (not b!1565986) (not b!1565983))
(check-sat b_and!51827 (not b_next!32187))
(get-model)

(declare-fun d!163133 () Bool)

(assert (=> d!163133 (= (validKeyInArray!0 (select (arr!50473 _keys!637) from!782)) (and (not (= (select (arr!50473 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50473 _keys!637) from!782) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1565989 d!163133))

(declare-fun d!163135 () Bool)

(declare-fun e!872897 () Bool)

(assert (=> d!163135 e!872897))

(declare-fun res!1070574 () Bool)

(assert (=> d!163135 (=> res!1070574 e!872897)))

(declare-fun lt!672498 () Bool)

(assert (=> d!163135 (= res!1070574 (not lt!672498))))

(declare-fun lt!672499 () Bool)

(assert (=> d!163135 (= lt!672498 lt!672499)))

(declare-fun lt!672497 () Unit!51972)

(declare-fun e!872896 () Unit!51972)

(assert (=> d!163135 (= lt!672497 e!872896)))

(declare-fun c!144239 () Bool)

(assert (=> d!163135 (= c!144239 lt!672499)))

(declare-fun containsKey!849 (List!36792 (_ BitVec 64)) Bool)

(assert (=> d!163135 (= lt!672499 (containsKey!849 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(assert (=> d!163135 (= (contains!10363 lt!672476 (select (arr!50473 _keys!637) from!782)) lt!672498)))

(declare-fun b!1566036 () Bool)

(declare-fun lt!672500 () Unit!51972)

(assert (=> b!1566036 (= e!872896 lt!672500)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!530 (List!36792 (_ BitVec 64)) Unit!51972)

(assert (=> b!1566036 (= lt!672500 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(declare-datatypes ((Option!870 0))(
  ( (Some!869 (v!22319 V!60155)) (None!868) )
))
(declare-fun isDefined!579 (Option!870) Bool)

(declare-fun getValueByKey!795 (List!36792 (_ BitVec 64)) Option!870)

(assert (=> b!1566036 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(declare-fun b!1566037 () Bool)

(declare-fun Unit!51976 () Unit!51972)

(assert (=> b!1566037 (= e!872896 Unit!51976)))

(declare-fun b!1566038 () Bool)

(assert (=> b!1566038 (= e!872897 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))))))

(assert (= (and d!163135 c!144239) b!1566036))

(assert (= (and d!163135 (not c!144239)) b!1566037))

(assert (= (and d!163135 (not res!1070574)) b!1566038))

(assert (=> d!163135 m!1440983))

(declare-fun m!1441037 () Bool)

(assert (=> d!163135 m!1441037))

(assert (=> b!1566036 m!1440983))

(declare-fun m!1441039 () Bool)

(assert (=> b!1566036 m!1441039))

(assert (=> b!1566036 m!1440983))

(declare-fun m!1441041 () Bool)

(assert (=> b!1566036 m!1441041))

(assert (=> b!1566036 m!1441041))

(declare-fun m!1441043 () Bool)

(assert (=> b!1566036 m!1441043))

(assert (=> b!1566038 m!1440983))

(assert (=> b!1566038 m!1441041))

(assert (=> b!1566038 m!1441041))

(assert (=> b!1566038 m!1441043))

(assert (=> b!1565990 d!163135))

(declare-fun b!1566048 () Bool)

(declare-fun e!872906 () Bool)

(declare-fun call!71882 () Bool)

(assert (=> b!1566048 (= e!872906 call!71882)))

(declare-fun bm!71879 () Bool)

(assert (=> bm!71879 (= call!71882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1566049 () Bool)

(declare-fun e!872905 () Bool)

(assert (=> b!1566049 (= e!872905 call!71882)))

(declare-fun b!1566050 () Bool)

(declare-fun e!872904 () Bool)

(assert (=> b!1566050 (= e!872904 e!872906)))

(declare-fun c!144242 () Bool)

(assert (=> b!1566050 (= c!144242 (validKeyInArray!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566047 () Bool)

(assert (=> b!1566047 (= e!872906 e!872905)))

(declare-fun lt!672509 () (_ BitVec 64))

(assert (=> b!1566047 (= lt!672509 (select (arr!50473 _keys!637) #b00000000000000000000000000000000))))

(declare-fun lt!672508 () Unit!51972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104581 (_ BitVec 64) (_ BitVec 32)) Unit!51972)

(assert (=> b!1566047 (= lt!672508 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672509 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1566047 (arrayContainsKey!0 _keys!637 lt!672509 #b00000000000000000000000000000000)))

(declare-fun lt!672507 () Unit!51972)

(assert (=> b!1566047 (= lt!672507 lt!672508)))

(declare-fun res!1070580 () Bool)

(declare-datatypes ((SeekEntryResult!13524 0))(
  ( (MissingZero!13524 (index!56493 (_ BitVec 32))) (Found!13524 (index!56494 (_ BitVec 32))) (Intermediate!13524 (undefined!14336 Bool) (index!56495 (_ BitVec 32)) (x!140742 (_ BitVec 32))) (Undefined!13524) (MissingVacant!13524 (index!56496 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104581 (_ BitVec 32)) SeekEntryResult!13524)

(assert (=> b!1566047 (= res!1070580 (= (seekEntryOrOpen!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13524 #b00000000000000000000000000000000)))))

(assert (=> b!1566047 (=> (not res!1070580) (not e!872905))))

(declare-fun d!163137 () Bool)

(declare-fun res!1070579 () Bool)

(assert (=> d!163137 (=> res!1070579 e!872904)))

(assert (=> d!163137 (= res!1070579 (bvsge #b00000000000000000000000000000000 (size!51024 _keys!637)))))

(assert (=> d!163137 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!872904)))

(assert (= (and d!163137 (not res!1070579)) b!1566050))

(assert (= (and b!1566050 c!144242) b!1566047))

(assert (= (and b!1566050 (not c!144242)) b!1566048))

(assert (= (and b!1566047 res!1070580) b!1566049))

(assert (= (or b!1566049 b!1566048) bm!71879))

(declare-fun m!1441045 () Bool)

(assert (=> bm!71879 m!1441045))

(declare-fun m!1441047 () Bool)

(assert (=> b!1566050 m!1441047))

(assert (=> b!1566050 m!1441047))

(declare-fun m!1441049 () Bool)

(assert (=> b!1566050 m!1441049))

(assert (=> b!1566047 m!1441047))

(declare-fun m!1441051 () Bool)

(assert (=> b!1566047 m!1441051))

(declare-fun m!1441053 () Bool)

(assert (=> b!1566047 m!1441053))

(assert (=> b!1566047 m!1441047))

(declare-fun m!1441055 () Bool)

(assert (=> b!1566047 m!1441055))

(assert (=> b!1565986 d!163137))

(declare-fun d!163139 () Bool)

(assert (=> d!163139 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133996 d!163139))

(declare-fun d!163141 () Bool)

(assert (=> d!163141 (= (array_inv!39137 _keys!637) (bvsge (size!51024 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133996 d!163141))

(declare-fun d!163143 () Bool)

(assert (=> d!163143 (= (array_inv!39138 _values!487) (bvsge (size!51025 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133996 d!163143))

(declare-fun d!163145 () Bool)

(declare-fun get!26391 (Option!870) V!60155)

(assert (=> d!163145 (= (apply!1148 lt!672476 (select (arr!50473 _keys!637) from!782)) (get!26391 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))))))

(declare-fun bs!45056 () Bool)

(assert (= bs!45056 d!163145))

(assert (=> bs!45056 m!1440983))

(assert (=> bs!45056 m!1441041))

(assert (=> bs!45056 m!1441041))

(declare-fun m!1441057 () Bool)

(assert (=> bs!45056 m!1441057))

(assert (=> b!1565982 d!163145))

(declare-fun d!163147 () Bool)

(declare-fun c!144245 () Bool)

(assert (=> d!163147 (= c!144245 ((_ is ValueCellFull!18450) (select (arr!50474 _values!487) from!782)))))

(declare-fun e!872909 () V!60155)

(assert (=> d!163147 (= (get!26389 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) e!872909)))

(declare-fun b!1566055 () Bool)

(declare-fun get!26392 (ValueCell!18450 V!60155) V!60155)

(assert (=> b!1566055 (= e!872909 (get!26392 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566056 () Bool)

(declare-fun get!26393 (ValueCell!18450 V!60155) V!60155)

(assert (=> b!1566056 (= e!872909 (get!26393 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163147 c!144245) b!1566055))

(assert (= (and d!163147 (not c!144245)) b!1566056))

(assert (=> b!1566055 m!1440969))

(assert (=> b!1566055 m!1440971))

(declare-fun m!1441059 () Bool)

(assert (=> b!1566055 m!1441059))

(assert (=> b!1566056 m!1440969))

(assert (=> b!1566056 m!1440971))

(declare-fun m!1441061 () Bool)

(assert (=> b!1566056 m!1441061))

(assert (=> b!1565984 d!163147))

(declare-fun d!163149 () Bool)

(assert (=> d!163149 (not (contains!10363 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672512 () Unit!51972)

(declare-fun choose!2081 (ListLongMap!22853 (_ BitVec 64) V!60155 (_ BitVec 64)) Unit!51972)

(assert (=> d!163149 (= lt!672512 (choose!2081 lt!672473 (select (arr!50473 _keys!637) from!782) lt!672474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!872912 () Bool)

(assert (=> d!163149 e!872912))

(declare-fun res!1070583 () Bool)

(assert (=> d!163149 (=> (not res!1070583) (not e!872912))))

(assert (=> d!163149 (= res!1070583 (not (contains!10363 lt!672473 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163149 (= (addStillNotContains!585 lt!672473 (select (arr!50473 _keys!637) from!782) lt!672474 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672512)))

(declare-fun b!1566060 () Bool)

(assert (=> b!1566060 (= e!872912 (not (= (select (arr!50473 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163149 res!1070583) b!1566060))

(assert (=> d!163149 m!1440975))

(assert (=> d!163149 m!1440975))

(declare-fun m!1441063 () Bool)

(assert (=> d!163149 m!1441063))

(assert (=> d!163149 m!1440983))

(declare-fun m!1441065 () Bool)

(assert (=> d!163149 m!1441065))

(declare-fun m!1441067 () Bool)

(assert (=> d!163149 m!1441067))

(assert (=> b!1565984 d!163149))

(declare-fun d!163151 () Bool)

(declare-fun e!872914 () Bool)

(assert (=> d!163151 e!872914))

(declare-fun res!1070584 () Bool)

(assert (=> d!163151 (=> res!1070584 e!872914)))

(declare-fun lt!672514 () Bool)

(assert (=> d!163151 (= res!1070584 (not lt!672514))))

(declare-fun lt!672515 () Bool)

(assert (=> d!163151 (= lt!672514 lt!672515)))

(declare-fun lt!672513 () Unit!51972)

(declare-fun e!872913 () Unit!51972)

(assert (=> d!163151 (= lt!672513 e!872913)))

(declare-fun c!144246 () Bool)

(assert (=> d!163151 (= c!144246 lt!672515)))

(assert (=> d!163151 (= lt!672515 (containsKey!849 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163151 (= (contains!10363 lt!672476 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672514)))

(declare-fun b!1566061 () Bool)

(declare-fun lt!672516 () Unit!51972)

(assert (=> b!1566061 (= e!872913 lt!672516)))

(assert (=> b!1566061 (= lt!672516 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566061 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566062 () Bool)

(declare-fun Unit!51977 () Unit!51972)

(assert (=> b!1566062 (= e!872913 Unit!51977)))

(declare-fun b!1566063 () Bool)

(assert (=> b!1566063 (= e!872914 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163151 c!144246) b!1566061))

(assert (= (and d!163151 (not c!144246)) b!1566062))

(assert (= (and d!163151 (not res!1070584)) b!1566063))

(declare-fun m!1441069 () Bool)

(assert (=> d!163151 m!1441069))

(declare-fun m!1441071 () Bool)

(assert (=> b!1566061 m!1441071))

(declare-fun m!1441073 () Bool)

(assert (=> b!1566061 m!1441073))

(assert (=> b!1566061 m!1441073))

(declare-fun m!1441075 () Bool)

(assert (=> b!1566061 m!1441075))

(assert (=> b!1566063 m!1441073))

(assert (=> b!1566063 m!1441073))

(assert (=> b!1566063 m!1441075))

(assert (=> b!1565984 d!163151))

(declare-fun d!163153 () Bool)

(declare-fun e!872917 () Bool)

(assert (=> d!163153 e!872917))

(declare-fun res!1070589 () Bool)

(assert (=> d!163153 (=> (not res!1070589) (not e!872917))))

(declare-fun lt!672528 () ListLongMap!22853)

(assert (=> d!163153 (= res!1070589 (contains!10363 lt!672528 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun lt!672526 () List!36792)

(assert (=> d!163153 (= lt!672528 (ListLongMap!22854 lt!672526))))

(declare-fun lt!672525 () Unit!51972)

(declare-fun lt!672527 () Unit!51972)

(assert (=> d!163153 (= lt!672525 lt!672527)))

(assert (=> d!163153 (= (getValueByKey!795 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun lemmaContainsTupThenGetReturnValue!386 (List!36792 (_ BitVec 64) V!60155) Unit!51972)

(assert (=> d!163153 (= lt!672527 (lemmaContainsTupThenGetReturnValue!386 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun insertStrictlySorted!576 (List!36792 (_ BitVec 64) V!60155) List!36792)

(assert (=> d!163153 (= lt!672526 (insertStrictlySorted!576 (toList!11442 lt!672473) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (=> d!163153 (= (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) lt!672528)))

(declare-fun b!1566068 () Bool)

(declare-fun res!1070590 () Bool)

(assert (=> b!1566068 (=> (not res!1070590) (not e!872917))))

(assert (=> b!1566068 (= res!1070590 (= (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566069 () Bool)

(declare-fun contains!10365 (List!36792 tuple2!25406) Bool)

(assert (=> b!1566069 (= e!872917 (contains!10365 (toList!11442 lt!672528) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(assert (= (and d!163153 res!1070589) b!1566068))

(assert (= (and b!1566068 res!1070590) b!1566069))

(declare-fun m!1441077 () Bool)

(assert (=> d!163153 m!1441077))

(declare-fun m!1441079 () Bool)

(assert (=> d!163153 m!1441079))

(declare-fun m!1441081 () Bool)

(assert (=> d!163153 m!1441081))

(declare-fun m!1441083 () Bool)

(assert (=> d!163153 m!1441083))

(declare-fun m!1441085 () Bool)

(assert (=> b!1566068 m!1441085))

(declare-fun m!1441087 () Bool)

(assert (=> b!1566069 m!1441087))

(assert (=> b!1565984 d!163153))

(declare-fun d!163155 () Bool)

(declare-fun e!872919 () Bool)

(assert (=> d!163155 e!872919))

(declare-fun res!1070591 () Bool)

(assert (=> d!163155 (=> res!1070591 e!872919)))

(declare-fun lt!672530 () Bool)

(assert (=> d!163155 (= res!1070591 (not lt!672530))))

(declare-fun lt!672531 () Bool)

(assert (=> d!163155 (= lt!672530 lt!672531)))

(declare-fun lt!672529 () Unit!51972)

(declare-fun e!872918 () Unit!51972)

(assert (=> d!163155 (= lt!672529 e!872918)))

(declare-fun c!144247 () Bool)

(assert (=> d!163155 (= c!144247 lt!672531)))

(assert (=> d!163155 (= lt!672531 (containsKey!849 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163155 (= (contains!10363 lt!672476 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672530)))

(declare-fun b!1566070 () Bool)

(declare-fun lt!672532 () Unit!51972)

(assert (=> b!1566070 (= e!872918 lt!672532)))

(assert (=> b!1566070 (= lt!672532 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566070 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566071 () Bool)

(declare-fun Unit!51978 () Unit!51972)

(assert (=> b!1566071 (= e!872918 Unit!51978)))

(declare-fun b!1566072 () Bool)

(assert (=> b!1566072 (= e!872919 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163155 c!144247) b!1566070))

(assert (= (and d!163155 (not c!144247)) b!1566071))

(assert (= (and d!163155 (not res!1070591)) b!1566072))

(declare-fun m!1441089 () Bool)

(assert (=> d!163155 m!1441089))

(declare-fun m!1441091 () Bool)

(assert (=> b!1566070 m!1441091))

(declare-fun m!1441093 () Bool)

(assert (=> b!1566070 m!1441093))

(assert (=> b!1566070 m!1441093))

(declare-fun m!1441095 () Bool)

(assert (=> b!1566070 m!1441095))

(assert (=> b!1566072 m!1441093))

(assert (=> b!1566072 m!1441093))

(assert (=> b!1566072 m!1441095))

(assert (=> b!1565984 d!163155))

(declare-fun b!1566097 () Bool)

(declare-fun e!872938 () Bool)

(assert (=> b!1566097 (= e!872938 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1566097 (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))

(declare-fun b!1566098 () Bool)

(declare-fun e!872936 () Bool)

(declare-fun e!872935 () Bool)

(assert (=> b!1566098 (= e!872936 e!872935)))

(assert (=> b!1566098 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51024 _keys!637)))))

(declare-fun lt!672548 () ListLongMap!22853)

(declare-fun res!1070602 () Bool)

(assert (=> b!1566098 (= res!1070602 (contains!10363 lt!672548 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1566098 (=> (not res!1070602) (not e!872935))))

(declare-fun b!1566099 () Bool)

(declare-fun e!872939 () Bool)

(declare-fun isEmpty!1148 (ListLongMap!22853) Bool)

(assert (=> b!1566099 (= e!872939 (isEmpty!1148 lt!672548))))

(declare-fun b!1566100 () Bool)

(assert (=> b!1566100 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51024 _keys!637)))))

(assert (=> b!1566100 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51025 _values!487)))))

(assert (=> b!1566100 (= e!872935 (= (apply!1148 lt!672548 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1566101 () Bool)

(declare-fun res!1070601 () Bool)

(declare-fun e!872940 () Bool)

(assert (=> b!1566101 (=> (not res!1070601) (not e!872940))))

(assert (=> b!1566101 (= res!1070601 (not (contains!10363 lt!672548 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566102 () Bool)

(declare-fun lt!672550 () Unit!51972)

(declare-fun lt!672549 () Unit!51972)

(assert (=> b!1566102 (= lt!672550 lt!672549)))

(declare-fun lt!672551 () V!60155)

(declare-fun lt!672547 () ListLongMap!22853)

(declare-fun lt!672553 () (_ BitVec 64))

(declare-fun lt!672552 () (_ BitVec 64))

(assert (=> b!1566102 (not (contains!10363 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)) lt!672553))))

(assert (=> b!1566102 (= lt!672549 (addStillNotContains!585 lt!672547 lt!672552 lt!672551 lt!672553))))

(assert (=> b!1566102 (= lt!672553 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1566102 (= lt!672551 (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1566102 (= lt!672552 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))

(declare-fun call!71885 () ListLongMap!22853)

(assert (=> b!1566102 (= lt!672547 call!71885)))

(declare-fun e!872937 () ListLongMap!22853)

(assert (=> b!1566102 (= e!872937 (+!5049 call!71885 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1566103 () Bool)

(assert (=> b!1566103 (= e!872940 e!872936)))

(declare-fun c!144256 () Bool)

(assert (=> b!1566103 (= c!144256 e!872938)))

(declare-fun res!1070603 () Bool)

(assert (=> b!1566103 (=> (not res!1070603) (not e!872938))))

(assert (=> b!1566103 (= res!1070603 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51024 _keys!637)))))

(declare-fun b!1566104 () Bool)

(assert (=> b!1566104 (= e!872936 e!872939)))

(declare-fun c!144258 () Bool)

(assert (=> b!1566104 (= c!144258 (bvslt (bvadd #b00000000000000000000000000000001 from!782) (size!51024 _keys!637)))))

(declare-fun b!1566105 () Bool)

(assert (=> b!1566105 (= e!872939 (= lt!672548 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1566106 () Bool)

(assert (=> b!1566106 (= e!872937 call!71885)))

(declare-fun b!1566107 () Bool)

(declare-fun e!872934 () ListLongMap!22853)

(assert (=> b!1566107 (= e!872934 e!872937)))

(declare-fun c!144257 () Bool)

(assert (=> b!1566107 (= c!144257 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1566108 () Bool)

(assert (=> b!1566108 (= e!872934 (ListLongMap!22854 Nil!36789))))

(declare-fun d!163157 () Bool)

(assert (=> d!163157 e!872940))

(declare-fun res!1070600 () Bool)

(assert (=> d!163157 (=> (not res!1070600) (not e!872940))))

(assert (=> d!163157 (= res!1070600 (not (contains!10363 lt!672548 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163157 (= lt!672548 e!872934)))

(declare-fun c!144259 () Bool)

(assert (=> d!163157 (= c!144259 (bvsge (bvadd #b00000000000000000000000000000001 from!782) (size!51024 _keys!637)))))

(assert (=> d!163157 (validMask!0 mask!947)))

(assert (=> d!163157 (= (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) lt!672548)))

(declare-fun bm!71882 () Bool)

(assert (=> bm!71882 (= call!71885 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495))))

(assert (= (and d!163157 c!144259) b!1566108))

(assert (= (and d!163157 (not c!144259)) b!1566107))

(assert (= (and b!1566107 c!144257) b!1566102))

(assert (= (and b!1566107 (not c!144257)) b!1566106))

(assert (= (or b!1566102 b!1566106) bm!71882))

(assert (= (and d!163157 res!1070600) b!1566101))

(assert (= (and b!1566101 res!1070601) b!1566103))

(assert (= (and b!1566103 res!1070603) b!1566097))

(assert (= (and b!1566103 c!144256) b!1566098))

(assert (= (and b!1566103 (not c!144256)) b!1566104))

(assert (= (and b!1566098 res!1070602) b!1566100))

(assert (= (and b!1566104 c!144258) b!1566105))

(assert (= (and b!1566104 (not c!144258)) b!1566099))

(declare-fun b_lambda!25017 () Bool)

(assert (=> (not b_lambda!25017) (not b!1566100)))

(assert (=> b!1566100 t!51699))

(declare-fun b_and!51833 () Bool)

(assert (= b_and!51827 (and (=> t!51699 result!26609) b_and!51833)))

(declare-fun b_lambda!25019 () Bool)

(assert (=> (not b_lambda!25019) (not b!1566102)))

(assert (=> b!1566102 t!51699))

(declare-fun b_and!51835 () Bool)

(assert (= b_and!51833 (and (=> t!51699 result!26609) b_and!51835)))

(declare-fun m!1441097 () Bool)

(assert (=> b!1566107 m!1441097))

(assert (=> b!1566107 m!1441097))

(declare-fun m!1441099 () Bool)

(assert (=> b!1566107 m!1441099))

(declare-fun m!1441101 () Bool)

(assert (=> d!163157 m!1441101))

(assert (=> d!163157 m!1440995))

(declare-fun m!1441103 () Bool)

(assert (=> b!1566099 m!1441103))

(assert (=> b!1566098 m!1441097))

(assert (=> b!1566098 m!1441097))

(declare-fun m!1441105 () Bool)

(assert (=> b!1566098 m!1441105))

(declare-fun m!1441107 () Bool)

(assert (=> b!1566102 m!1441107))

(declare-fun m!1441109 () Bool)

(assert (=> b!1566102 m!1441109))

(assert (=> b!1566102 m!1441097))

(declare-fun m!1441111 () Bool)

(assert (=> b!1566102 m!1441111))

(declare-fun m!1441113 () Bool)

(assert (=> b!1566102 m!1441113))

(assert (=> b!1566102 m!1441107))

(declare-fun m!1441115 () Bool)

(assert (=> b!1566102 m!1441115))

(assert (=> b!1566102 m!1440971))

(assert (=> b!1566102 m!1441113))

(assert (=> b!1566102 m!1440971))

(declare-fun m!1441117 () Bool)

(assert (=> b!1566102 m!1441117))

(assert (=> b!1566097 m!1441097))

(assert (=> b!1566097 m!1441097))

(assert (=> b!1566097 m!1441099))

(assert (=> b!1566100 m!1441097))

(assert (=> b!1566100 m!1441113))

(assert (=> b!1566100 m!1441097))

(declare-fun m!1441119 () Bool)

(assert (=> b!1566100 m!1441119))

(assert (=> b!1566100 m!1440971))

(assert (=> b!1566100 m!1441113))

(assert (=> b!1566100 m!1440971))

(assert (=> b!1566100 m!1441117))

(declare-fun m!1441121 () Bool)

(assert (=> bm!71882 m!1441121))

(assert (=> b!1566105 m!1441121))

(declare-fun m!1441123 () Bool)

(assert (=> b!1566101 m!1441123))

(assert (=> b!1565984 d!163157))

(declare-fun d!163159 () Bool)

(declare-fun res!1070610 () Bool)

(declare-fun e!872952 () Bool)

(assert (=> d!163159 (=> res!1070610 e!872952)))

(assert (=> d!163159 (= res!1070610 (bvsge #b00000000000000000000000000000000 (size!51024 _keys!637)))))

(assert (=> d!163159 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36790) e!872952)))

(declare-fun b!1566119 () Bool)

(declare-fun e!872951 () Bool)

(declare-fun e!872950 () Bool)

(assert (=> b!1566119 (= e!872951 e!872950)))

(declare-fun c!144262 () Bool)

(assert (=> b!1566119 (= c!144262 (validKeyInArray!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun bm!71885 () Bool)

(declare-fun call!71888 () Bool)

(assert (=> bm!71885 (= call!71888 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)))))

(declare-fun b!1566120 () Bool)

(assert (=> b!1566120 (= e!872950 call!71888)))

(declare-fun b!1566121 () Bool)

(assert (=> b!1566121 (= e!872952 e!872951)))

(declare-fun res!1070612 () Bool)

(assert (=> b!1566121 (=> (not res!1070612) (not e!872951))))

(declare-fun e!872949 () Bool)

(assert (=> b!1566121 (= res!1070612 (not e!872949))))

(declare-fun res!1070611 () Bool)

(assert (=> b!1566121 (=> (not res!1070611) (not e!872949))))

(assert (=> b!1566121 (= res!1070611 (validKeyInArray!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566122 () Bool)

(declare-fun contains!10366 (List!36793 (_ BitVec 64)) Bool)

(assert (=> b!1566122 (= e!872949 (contains!10366 Nil!36790 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566123 () Bool)

(assert (=> b!1566123 (= e!872950 call!71888)))

(assert (= (and d!163159 (not res!1070610)) b!1566121))

(assert (= (and b!1566121 res!1070611) b!1566122))

(assert (= (and b!1566121 res!1070612) b!1566119))

(assert (= (and b!1566119 c!144262) b!1566123))

(assert (= (and b!1566119 (not c!144262)) b!1566120))

(assert (= (or b!1566123 b!1566120) bm!71885))

(assert (=> b!1566119 m!1441047))

(assert (=> b!1566119 m!1441047))

(assert (=> b!1566119 m!1441049))

(assert (=> bm!71885 m!1441047))

(declare-fun m!1441125 () Bool)

(assert (=> bm!71885 m!1441125))

(assert (=> b!1566121 m!1441047))

(assert (=> b!1566121 m!1441047))

(assert (=> b!1566121 m!1441049))

(assert (=> b!1566122 m!1441047))

(assert (=> b!1566122 m!1441047))

(declare-fun m!1441127 () Bool)

(assert (=> b!1566122 m!1441127))

(assert (=> b!1565983 d!163159))

(declare-fun b!1566130 () Bool)

(declare-fun e!872957 () Bool)

(assert (=> b!1566130 (= e!872957 tp_is_empty!38961)))

(declare-fun b!1566131 () Bool)

(declare-fun e!872958 () Bool)

(assert (=> b!1566131 (= e!872958 tp_is_empty!38961)))

(declare-fun mapNonEmpty!59839 () Bool)

(declare-fun mapRes!59839 () Bool)

(declare-fun tp!113873 () Bool)

(assert (=> mapNonEmpty!59839 (= mapRes!59839 (and tp!113873 e!872957))))

(declare-fun mapValue!59839 () ValueCell!18450)

(declare-fun mapRest!59839 () (Array (_ BitVec 32) ValueCell!18450))

(declare-fun mapKey!59839 () (_ BitVec 32))

(assert (=> mapNonEmpty!59839 (= mapRest!59833 (store mapRest!59839 mapKey!59839 mapValue!59839))))

(declare-fun condMapEmpty!59839 () Bool)

(declare-fun mapDefault!59839 () ValueCell!18450)

(assert (=> mapNonEmpty!59833 (= condMapEmpty!59839 (= mapRest!59833 ((as const (Array (_ BitVec 32) ValueCell!18450)) mapDefault!59839)))))

(assert (=> mapNonEmpty!59833 (= tp!113864 (and e!872958 mapRes!59839))))

(declare-fun mapIsEmpty!59839 () Bool)

(assert (=> mapIsEmpty!59839 mapRes!59839))

(assert (= (and mapNonEmpty!59833 condMapEmpty!59839) mapIsEmpty!59839))

(assert (= (and mapNonEmpty!59833 (not condMapEmpty!59839)) mapNonEmpty!59839))

(assert (= (and mapNonEmpty!59839 ((_ is ValueCellFull!18450) mapValue!59839)) b!1566130))

(assert (= (and mapNonEmpty!59833 ((_ is ValueCellFull!18450) mapDefault!59839)) b!1566131))

(declare-fun m!1441129 () Bool)

(assert (=> mapNonEmpty!59839 m!1441129))

(declare-fun b_lambda!25021 () Bool)

(assert (= b_lambda!25017 (or (and start!133996 b_free!32187) b_lambda!25021)))

(declare-fun b_lambda!25023 () Bool)

(assert (= b_lambda!25019 (or (and start!133996 b_free!32187) b_lambda!25023)))

(check-sat (not b_next!32187) (not b!1566105) (not b!1566070) (not b!1566056) (not b!1566098) (not b!1566068) (not mapNonEmpty!59839) (not d!163149) b_and!51835 (not b!1566069) (not b!1566055) (not b!1566072) (not d!163155) (not b!1566061) (not b!1566122) (not b_lambda!25021) (not b!1566099) (not b!1566047) (not b!1566097) (not b!1566121) (not b!1566036) (not b!1566107) (not bm!71885) (not d!163151) (not d!163135) tp_is_empty!38961 (not b!1566119) (not b!1566038) (not b_lambda!25015) (not b!1566102) (not b!1566050) (not b!1566063) (not b!1566101) (not bm!71882) (not b!1566100) (not d!163153) (not bm!71879) (not d!163145) (not b_lambda!25023) (not d!163157))
(check-sat b_and!51835 (not b_next!32187))
(get-model)

(declare-fun d!163161 () Bool)

(declare-fun isEmpty!1149 (List!36792) Bool)

(assert (=> d!163161 (= (isEmpty!1148 lt!672548) (isEmpty!1149 (toList!11442 lt!672548)))))

(declare-fun bs!45057 () Bool)

(assert (= bs!45057 d!163161))

(declare-fun m!1441131 () Bool)

(assert (=> bs!45057 m!1441131))

(assert (=> b!1566099 d!163161))

(declare-fun d!163163 () Bool)

(assert (=> d!163163 (= (apply!1148 lt!672548 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (get!26391 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(declare-fun bs!45058 () Bool)

(assert (= bs!45058 d!163163))

(assert (=> bs!45058 m!1441097))

(declare-fun m!1441133 () Bool)

(assert (=> bs!45058 m!1441133))

(assert (=> bs!45058 m!1441133))

(declare-fun m!1441135 () Bool)

(assert (=> bs!45058 m!1441135))

(assert (=> b!1566100 d!163163))

(declare-fun d!163165 () Bool)

(declare-fun c!144263 () Bool)

(assert (=> d!163165 (= c!144263 ((_ is ValueCellFull!18450) (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun e!872959 () V!60155)

(assert (=> d!163165 (= (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) e!872959)))

(declare-fun b!1566132 () Bool)

(assert (=> b!1566132 (= e!872959 (get!26392 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566133 () Bool)

(assert (=> b!1566133 (= e!872959 (get!26393 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163165 c!144263) b!1566132))

(assert (= (and d!163165 (not c!144263)) b!1566133))

(assert (=> b!1566132 m!1441113))

(assert (=> b!1566132 m!1440971))

(declare-fun m!1441137 () Bool)

(assert (=> b!1566132 m!1441137))

(assert (=> b!1566133 m!1441113))

(assert (=> b!1566133 m!1440971))

(declare-fun m!1441139 () Bool)

(assert (=> b!1566133 m!1441139))

(assert (=> b!1566100 d!163165))

(declare-fun d!163167 () Bool)

(declare-fun e!872961 () Bool)

(assert (=> d!163167 e!872961))

(declare-fun res!1070613 () Bool)

(assert (=> d!163167 (=> res!1070613 e!872961)))

(declare-fun lt!672555 () Bool)

(assert (=> d!163167 (= res!1070613 (not lt!672555))))

(declare-fun lt!672556 () Bool)

(assert (=> d!163167 (= lt!672555 lt!672556)))

(declare-fun lt!672554 () Unit!51972)

(declare-fun e!872960 () Unit!51972)

(assert (=> d!163167 (= lt!672554 e!872960)))

(declare-fun c!144264 () Bool)

(assert (=> d!163167 (= c!144264 lt!672556)))

(assert (=> d!163167 (= lt!672556 (containsKey!849 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163167 (= (contains!10363 lt!672548 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672555)))

(declare-fun b!1566134 () Bool)

(declare-fun lt!672557 () Unit!51972)

(assert (=> b!1566134 (= e!872960 lt!672557)))

(assert (=> b!1566134 (= lt!672557 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566134 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566135 () Bool)

(declare-fun Unit!51979 () Unit!51972)

(assert (=> b!1566135 (= e!872960 Unit!51979)))

(declare-fun b!1566136 () Bool)

(assert (=> b!1566136 (= e!872961 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163167 c!144264) b!1566134))

(assert (= (and d!163167 (not c!144264)) b!1566135))

(assert (= (and d!163167 (not res!1070613)) b!1566136))

(declare-fun m!1441141 () Bool)

(assert (=> d!163167 m!1441141))

(declare-fun m!1441143 () Bool)

(assert (=> b!1566134 m!1441143))

(declare-fun m!1441145 () Bool)

(assert (=> b!1566134 m!1441145))

(assert (=> b!1566134 m!1441145))

(declare-fun m!1441147 () Bool)

(assert (=> b!1566134 m!1441147))

(assert (=> b!1566136 m!1441145))

(assert (=> b!1566136 m!1441145))

(assert (=> b!1566136 m!1441147))

(assert (=> b!1566101 d!163167))

(declare-fun d!163169 () Bool)

(declare-fun e!872962 () Bool)

(assert (=> d!163169 e!872962))

(declare-fun res!1070614 () Bool)

(assert (=> d!163169 (=> (not res!1070614) (not e!872962))))

(declare-fun lt!672561 () ListLongMap!22853)

(assert (=> d!163169 (= res!1070614 (contains!10363 lt!672561 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!672559 () List!36792)

(assert (=> d!163169 (= lt!672561 (ListLongMap!22854 lt!672559))))

(declare-fun lt!672558 () Unit!51972)

(declare-fun lt!672560 () Unit!51972)

(assert (=> d!163169 (= lt!672558 lt!672560)))

(assert (=> d!163169 (= (getValueByKey!795 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163169 (= lt!672560 (lemmaContainsTupThenGetReturnValue!386 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163169 (= lt!672559 (insertStrictlySorted!576 (toList!11442 call!71885) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163169 (= (+!5049 call!71885 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!672561)))

(declare-fun b!1566137 () Bool)

(declare-fun res!1070615 () Bool)

(assert (=> b!1566137 (=> (not res!1070615) (not e!872962))))

(assert (=> b!1566137 (= res!1070615 (= (getValueByKey!795 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1566138 () Bool)

(assert (=> b!1566138 (= e!872962 (contains!10365 (toList!11442 lt!672561) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!163169 res!1070614) b!1566137))

(assert (= (and b!1566137 res!1070615) b!1566138))

(declare-fun m!1441149 () Bool)

(assert (=> d!163169 m!1441149))

(declare-fun m!1441151 () Bool)

(assert (=> d!163169 m!1441151))

(declare-fun m!1441153 () Bool)

(assert (=> d!163169 m!1441153))

(declare-fun m!1441155 () Bool)

(assert (=> d!163169 m!1441155))

(declare-fun m!1441157 () Bool)

(assert (=> b!1566137 m!1441157))

(declare-fun m!1441159 () Bool)

(assert (=> b!1566138 m!1441159))

(assert (=> b!1566102 d!163169))

(declare-fun d!163171 () Bool)

(declare-fun e!872963 () Bool)

(assert (=> d!163171 e!872963))

(declare-fun res!1070616 () Bool)

(assert (=> d!163171 (=> (not res!1070616) (not e!872963))))

(declare-fun lt!672565 () ListLongMap!22853)

(assert (=> d!163171 (= res!1070616 (contains!10363 lt!672565 (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun lt!672563 () List!36792)

(assert (=> d!163171 (= lt!672565 (ListLongMap!22854 lt!672563))))

(declare-fun lt!672562 () Unit!51972)

(declare-fun lt!672564 () Unit!51972)

(assert (=> d!163171 (= lt!672562 lt!672564)))

(assert (=> d!163171 (= (getValueByKey!795 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551))) (Some!869 (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(assert (=> d!163171 (= lt!672564 (lemmaContainsTupThenGetReturnValue!386 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(assert (=> d!163171 (= lt!672563 (insertStrictlySorted!576 (toList!11442 lt!672547) (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(assert (=> d!163171 (= (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)) lt!672565)))

(declare-fun b!1566139 () Bool)

(declare-fun res!1070617 () Bool)

(assert (=> b!1566139 (=> (not res!1070617) (not e!872963))))

(assert (=> b!1566139 (= res!1070617 (= (getValueByKey!795 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551))) (Some!869 (_2!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(declare-fun b!1566140 () Bool)

(assert (=> b!1566140 (= e!872963 (contains!10365 (toList!11442 lt!672565) (tuple2!25407 lt!672552 lt!672551)))))

(assert (= (and d!163171 res!1070616) b!1566139))

(assert (= (and b!1566139 res!1070617) b!1566140))

(declare-fun m!1441161 () Bool)

(assert (=> d!163171 m!1441161))

(declare-fun m!1441163 () Bool)

(assert (=> d!163171 m!1441163))

(declare-fun m!1441165 () Bool)

(assert (=> d!163171 m!1441165))

(declare-fun m!1441167 () Bool)

(assert (=> d!163171 m!1441167))

(declare-fun m!1441169 () Bool)

(assert (=> b!1566139 m!1441169))

(declare-fun m!1441171 () Bool)

(assert (=> b!1566140 m!1441171))

(assert (=> b!1566102 d!163171))

(declare-fun d!163173 () Bool)

(declare-fun e!872965 () Bool)

(assert (=> d!163173 e!872965))

(declare-fun res!1070618 () Bool)

(assert (=> d!163173 (=> res!1070618 e!872965)))

(declare-fun lt!672567 () Bool)

(assert (=> d!163173 (= res!1070618 (not lt!672567))))

(declare-fun lt!672568 () Bool)

(assert (=> d!163173 (= lt!672567 lt!672568)))

(declare-fun lt!672566 () Unit!51972)

(declare-fun e!872964 () Unit!51972)

(assert (=> d!163173 (= lt!672566 e!872964)))

(declare-fun c!144265 () Bool)

(assert (=> d!163173 (= c!144265 lt!672568)))

(assert (=> d!163173 (= lt!672568 (containsKey!849 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(assert (=> d!163173 (= (contains!10363 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)) lt!672553) lt!672567)))

(declare-fun b!1566141 () Bool)

(declare-fun lt!672569 () Unit!51972)

(assert (=> b!1566141 (= e!872964 lt!672569)))

(assert (=> b!1566141 (= lt!672569 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(assert (=> b!1566141 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(declare-fun b!1566142 () Bool)

(declare-fun Unit!51980 () Unit!51972)

(assert (=> b!1566142 (= e!872964 Unit!51980)))

(declare-fun b!1566143 () Bool)

(assert (=> b!1566143 (= e!872965 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553)))))

(assert (= (and d!163173 c!144265) b!1566141))

(assert (= (and d!163173 (not c!144265)) b!1566142))

(assert (= (and d!163173 (not res!1070618)) b!1566143))

(declare-fun m!1441173 () Bool)

(assert (=> d!163173 m!1441173))

(declare-fun m!1441175 () Bool)

(assert (=> b!1566141 m!1441175))

(declare-fun m!1441177 () Bool)

(assert (=> b!1566141 m!1441177))

(assert (=> b!1566141 m!1441177))

(declare-fun m!1441179 () Bool)

(assert (=> b!1566141 m!1441179))

(assert (=> b!1566143 m!1441177))

(assert (=> b!1566143 m!1441177))

(assert (=> b!1566143 m!1441179))

(assert (=> b!1566102 d!163173))

(assert (=> b!1566102 d!163165))

(declare-fun d!163175 () Bool)

(assert (=> d!163175 (not (contains!10363 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)) lt!672553))))

(declare-fun lt!672570 () Unit!51972)

(assert (=> d!163175 (= lt!672570 (choose!2081 lt!672547 lt!672552 lt!672551 lt!672553))))

(declare-fun e!872966 () Bool)

(assert (=> d!163175 e!872966))

(declare-fun res!1070619 () Bool)

(assert (=> d!163175 (=> (not res!1070619) (not e!872966))))

(assert (=> d!163175 (= res!1070619 (not (contains!10363 lt!672547 lt!672553)))))

(assert (=> d!163175 (= (addStillNotContains!585 lt!672547 lt!672552 lt!672551 lt!672553) lt!672570)))

(declare-fun b!1566144 () Bool)

(assert (=> b!1566144 (= e!872966 (not (= lt!672552 lt!672553)))))

(assert (= (and d!163175 res!1070619) b!1566144))

(assert (=> d!163175 m!1441107))

(assert (=> d!163175 m!1441107))

(assert (=> d!163175 m!1441109))

(declare-fun m!1441181 () Bool)

(assert (=> d!163175 m!1441181))

(declare-fun m!1441183 () Bool)

(assert (=> d!163175 m!1441183))

(assert (=> b!1566102 d!163175))

(declare-fun d!163177 () Bool)

(assert (=> d!163177 (= (get!26391 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))) (v!22319 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))))))

(assert (=> d!163145 d!163177))

(declare-fun b!1566156 () Bool)

(declare-fun e!872972 () Option!870)

(assert (=> b!1566156 (= e!872972 None!868)))

(declare-fun b!1566153 () Bool)

(declare-fun e!872971 () Option!870)

(assert (=> b!1566153 (= e!872971 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672476)))))))

(declare-fun b!1566155 () Bool)

(assert (=> b!1566155 (= e!872972 (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) (select (arr!50473 _keys!637) from!782)))))

(declare-fun b!1566154 () Bool)

(assert (=> b!1566154 (= e!872971 e!872972)))

(declare-fun c!144271 () Bool)

(assert (=> b!1566154 (= c!144271 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782)))))))

(declare-fun c!144270 () Bool)

(declare-fun d!163179 () Bool)

(assert (=> d!163179 (= c!144270 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782))))))

(assert (=> d!163179 (= (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)) e!872971)))

(assert (= (and d!163179 c!144270) b!1566153))

(assert (= (and d!163179 (not c!144270)) b!1566154))

(assert (= (and b!1566154 c!144271) b!1566155))

(assert (= (and b!1566154 (not c!144271)) b!1566156))

(assert (=> b!1566155 m!1440983))

(declare-fun m!1441185 () Bool)

(assert (=> b!1566155 m!1441185))

(assert (=> d!163145 d!163179))

(declare-fun d!163181 () Bool)

(declare-fun res!1070624 () Bool)

(declare-fun e!872977 () Bool)

(assert (=> d!163181 (=> res!1070624 e!872977)))

(assert (=> d!163181 (= res!1070624 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782))))))

(assert (=> d!163181 (= (containsKey!849 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)) e!872977)))

(declare-fun b!1566161 () Bool)

(declare-fun e!872978 () Bool)

(assert (=> b!1566161 (= e!872977 e!872978)))

(declare-fun res!1070625 () Bool)

(assert (=> b!1566161 (=> (not res!1070625) (not e!872978))))

(assert (=> b!1566161 (= res!1070625 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672476))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782))) ((_ is Cons!36788) (toList!11442 lt!672476)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782))))))

(declare-fun b!1566162 () Bool)

(assert (=> b!1566162 (= e!872978 (containsKey!849 (t!51700 (toList!11442 lt!672476)) (select (arr!50473 _keys!637) from!782)))))

(assert (= (and d!163181 (not res!1070624)) b!1566161))

(assert (= (and b!1566161 res!1070625) b!1566162))

(assert (=> b!1566162 m!1440983))

(declare-fun m!1441187 () Bool)

(assert (=> b!1566162 m!1441187))

(assert (=> d!163135 d!163181))

(declare-fun d!163183 () Bool)

(assert (=> d!163183 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672573 () Unit!51972)

(declare-fun choose!2082 (List!36792 (_ BitVec 64)) Unit!51972)

(assert (=> d!163183 (= lt!672573 (choose!2082 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!872981 () Bool)

(assert (=> d!163183 e!872981))

(declare-fun res!1070628 () Bool)

(assert (=> d!163183 (=> (not res!1070628) (not e!872981))))

(declare-fun isStrictlySorted!983 (List!36792) Bool)

(assert (=> d!163183 (= res!1070628 (isStrictlySorted!983 (toList!11442 lt!672476)))))

(assert (=> d!163183 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000) lt!672573)))

(declare-fun b!1566165 () Bool)

(assert (=> b!1566165 (= e!872981 (containsKey!849 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163183 res!1070628) b!1566165))

(assert (=> d!163183 m!1441073))

(assert (=> d!163183 m!1441073))

(assert (=> d!163183 m!1441075))

(declare-fun m!1441189 () Bool)

(assert (=> d!163183 m!1441189))

(declare-fun m!1441191 () Bool)

(assert (=> d!163183 m!1441191))

(assert (=> b!1566165 m!1441069))

(assert (=> b!1566061 d!163183))

(declare-fun d!163185 () Bool)

(declare-fun isEmpty!1150 (Option!870) Bool)

(assert (=> d!163185 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45059 () Bool)

(assert (= bs!45059 d!163185))

(assert (=> bs!45059 m!1441073))

(declare-fun m!1441193 () Bool)

(assert (=> bs!45059 m!1441193))

(assert (=> b!1566061 d!163185))

(declare-fun b!1566169 () Bool)

(declare-fun e!872983 () Option!870)

(assert (=> b!1566169 (= e!872983 None!868)))

(declare-fun b!1566166 () Bool)

(declare-fun e!872982 () Option!870)

(assert (=> b!1566166 (= e!872982 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672476)))))))

(declare-fun b!1566168 () Bool)

(assert (=> b!1566168 (= e!872983 (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566167 () Bool)

(assert (=> b!1566167 (= e!872982 e!872983)))

(declare-fun c!144273 () Bool)

(assert (=> b!1566167 (= c!144273 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163187 () Bool)

(declare-fun c!144272 () Bool)

(assert (=> d!163187 (= c!144272 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163187 (= (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000) e!872982)))

(assert (= (and d!163187 c!144272) b!1566166))

(assert (= (and d!163187 (not c!144272)) b!1566167))

(assert (= (and b!1566167 c!144273) b!1566168))

(assert (= (and b!1566167 (not c!144273)) b!1566169))

(declare-fun m!1441195 () Bool)

(assert (=> b!1566168 m!1441195))

(assert (=> b!1566061 d!163187))

(declare-fun b!1566173 () Bool)

(declare-fun e!872985 () Option!870)

(assert (=> b!1566173 (= e!872985 None!868)))

(declare-fun b!1566170 () Bool)

(declare-fun e!872984 () Option!870)

(assert (=> b!1566170 (= e!872984 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672528)))))))

(declare-fun b!1566172 () Bool)

(assert (=> b!1566172 (= e!872985 (getValueByKey!795 (t!51700 (toList!11442 lt!672528)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566171 () Bool)

(assert (=> b!1566171 (= e!872984 e!872985)))

(declare-fun c!144275 () Bool)

(assert (=> b!1566171 (= c!144275 (and ((_ is Cons!36788) (toList!11442 lt!672528)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun c!144274 () Bool)

(declare-fun d!163189 () Bool)

(assert (=> d!163189 (= c!144274 (and ((_ is Cons!36788) (toList!11442 lt!672528)) (= (_1!12713 (h!38235 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163189 (= (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!872984)))

(assert (= (and d!163189 c!144274) b!1566170))

(assert (= (and d!163189 (not c!144274)) b!1566171))

(assert (= (and b!1566171 c!144275) b!1566172))

(assert (= (and b!1566171 (not c!144275)) b!1566173))

(declare-fun m!1441197 () Bool)

(assert (=> b!1566172 m!1441197))

(assert (=> b!1566068 d!163189))

(declare-fun d!163191 () Bool)

(assert (=> d!163191 (= (validKeyInArray!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)) (and (not (= (select (arr!50473 _keys!637) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50473 _keys!637) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1566050 d!163191))

(declare-fun d!163193 () Bool)

(declare-fun e!872987 () Bool)

(assert (=> d!163193 e!872987))

(declare-fun res!1070629 () Bool)

(assert (=> d!163193 (=> res!1070629 e!872987)))

(declare-fun lt!672575 () Bool)

(assert (=> d!163193 (= res!1070629 (not lt!672575))))

(declare-fun lt!672576 () Bool)

(assert (=> d!163193 (= lt!672575 lt!672576)))

(declare-fun lt!672574 () Unit!51972)

(declare-fun e!872986 () Unit!51972)

(assert (=> d!163193 (= lt!672574 e!872986)))

(declare-fun c!144276 () Bool)

(assert (=> d!163193 (= c!144276 lt!672576)))

(assert (=> d!163193 (= lt!672576 (containsKey!849 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (=> d!163193 (= (contains!10363 lt!672528 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) lt!672575)))

(declare-fun b!1566174 () Bool)

(declare-fun lt!672577 () Unit!51972)

(assert (=> b!1566174 (= e!872986 lt!672577)))

(assert (=> b!1566174 (= lt!672577 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (=> b!1566174 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566175 () Bool)

(declare-fun Unit!51981 () Unit!51972)

(assert (=> b!1566175 (= e!872986 Unit!51981)))

(declare-fun b!1566176 () Bool)

(assert (=> b!1566176 (= e!872987 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (= (and d!163193 c!144276) b!1566174))

(assert (= (and d!163193 (not c!144276)) b!1566175))

(assert (= (and d!163193 (not res!1070629)) b!1566176))

(declare-fun m!1441199 () Bool)

(assert (=> d!163193 m!1441199))

(declare-fun m!1441201 () Bool)

(assert (=> b!1566174 m!1441201))

(assert (=> b!1566174 m!1441085))

(assert (=> b!1566174 m!1441085))

(declare-fun m!1441203 () Bool)

(assert (=> b!1566174 m!1441203))

(assert (=> b!1566176 m!1441085))

(assert (=> b!1566176 m!1441085))

(assert (=> b!1566176 m!1441203))

(assert (=> d!163153 d!163193))

(declare-fun b!1566180 () Bool)

(declare-fun e!872989 () Option!870)

(assert (=> b!1566180 (= e!872989 None!868)))

(declare-fun b!1566177 () Bool)

(declare-fun e!872988 () Option!870)

(assert (=> b!1566177 (= e!872988 (Some!869 (_2!12713 (h!38235 lt!672526))))))

(declare-fun b!1566179 () Bool)

(assert (=> b!1566179 (= e!872989 (getValueByKey!795 (t!51700 lt!672526) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566178 () Bool)

(assert (=> b!1566178 (= e!872988 e!872989)))

(declare-fun c!144278 () Bool)

(assert (=> b!1566178 (= c!144278 (and ((_ is Cons!36788) lt!672526) (not (= (_1!12713 (h!38235 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun c!144277 () Bool)

(declare-fun d!163195 () Bool)

(assert (=> d!163195 (= c!144277 (and ((_ is Cons!36788) lt!672526) (= (_1!12713 (h!38235 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163195 (= (getValueByKey!795 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!872988)))

(assert (= (and d!163195 c!144277) b!1566177))

(assert (= (and d!163195 (not c!144277)) b!1566178))

(assert (= (and b!1566178 c!144278) b!1566179))

(assert (= (and b!1566178 (not c!144278)) b!1566180))

(declare-fun m!1441205 () Bool)

(assert (=> b!1566179 m!1441205))

(assert (=> d!163153 d!163195))

(declare-fun d!163197 () Bool)

(assert (=> d!163197 (= (getValueByKey!795 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun lt!672580 () Unit!51972)

(declare-fun choose!2083 (List!36792 (_ BitVec 64) V!60155) Unit!51972)

(assert (=> d!163197 (= lt!672580 (choose!2083 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun e!872992 () Bool)

(assert (=> d!163197 e!872992))

(declare-fun res!1070634 () Bool)

(assert (=> d!163197 (=> (not res!1070634) (not e!872992))))

(assert (=> d!163197 (= res!1070634 (isStrictlySorted!983 lt!672526))))

(assert (=> d!163197 (= (lemmaContainsTupThenGetReturnValue!386 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) lt!672580)))

(declare-fun b!1566185 () Bool)

(declare-fun res!1070635 () Bool)

(assert (=> b!1566185 (=> (not res!1070635) (not e!872992))))

(assert (=> b!1566185 (= res!1070635 (containsKey!849 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566186 () Bool)

(assert (=> b!1566186 (= e!872992 (contains!10365 lt!672526 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (= (and d!163197 res!1070634) b!1566185))

(assert (= (and b!1566185 res!1070635) b!1566186))

(assert (=> d!163197 m!1441079))

(declare-fun m!1441207 () Bool)

(assert (=> d!163197 m!1441207))

(declare-fun m!1441209 () Bool)

(assert (=> d!163197 m!1441209))

(declare-fun m!1441211 () Bool)

(assert (=> b!1566185 m!1441211))

(declare-fun m!1441213 () Bool)

(assert (=> b!1566186 m!1441213))

(assert (=> d!163153 d!163197))

(declare-fun b!1566207 () Bool)

(declare-fun e!873003 () List!36792)

(assert (=> b!1566207 (= e!873003 (insertStrictlySorted!576 (t!51700 (toList!11442 lt!672473)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun bm!71892 () Bool)

(declare-fun call!71895 () List!36792)

(declare-fun call!71897 () List!36792)

(assert (=> bm!71892 (= call!71895 call!71897)))

(declare-fun bm!71893 () Bool)

(declare-fun c!144290 () Bool)

(declare-fun call!71896 () List!36792)

(declare-fun $colon$colon!989 (List!36792 tuple2!25406) List!36792)

(assert (=> bm!71893 (= call!71896 ($colon$colon!989 e!873003 (ite c!144290 (h!38235 (toList!11442 lt!672473)) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun c!144288 () Bool)

(assert (=> bm!71893 (= c!144288 c!144290)))

(declare-fun c!144289 () Bool)

(declare-fun b!1566208 () Bool)

(assert (=> b!1566208 (= c!144289 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (bvsgt (_1!12713 (h!38235 (toList!11442 lt!672473))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun e!873007 () List!36792)

(declare-fun e!873006 () List!36792)

(assert (=> b!1566208 (= e!873007 e!873006)))

(declare-fun b!1566209 () Bool)

(assert (=> b!1566209 (= e!873006 call!71895)))

(declare-fun b!1566210 () Bool)

(declare-fun e!873005 () List!36792)

(assert (=> b!1566210 (= e!873005 call!71896)))

(declare-fun c!144287 () Bool)

(declare-fun b!1566212 () Bool)

(assert (=> b!1566212 (= e!873003 (ite c!144287 (t!51700 (toList!11442 lt!672473)) (ite c!144289 (Cons!36788 (h!38235 (toList!11442 lt!672473)) (t!51700 (toList!11442 lt!672473))) Nil!36789)))))

(declare-fun e!873004 () Bool)

(declare-fun b!1566213 () Bool)

(declare-fun lt!672583 () List!36792)

(assert (=> b!1566213 (= e!873004 (contains!10365 lt!672583 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566214 () Bool)

(assert (=> b!1566214 (= e!873006 call!71895)))

(declare-fun b!1566215 () Bool)

(assert (=> b!1566215 (= e!873005 e!873007)))

(assert (=> b!1566215 (= c!144287 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (= (_1!12713 (h!38235 (toList!11442 lt!672473))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566216 () Bool)

(declare-fun res!1070640 () Bool)

(assert (=> b!1566216 (=> (not res!1070640) (not e!873004))))

(assert (=> b!1566216 (= res!1070640 (containsKey!849 lt!672583 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun bm!71894 () Bool)

(assert (=> bm!71894 (= call!71897 call!71896)))

(declare-fun d!163199 () Bool)

(assert (=> d!163199 e!873004))

(declare-fun res!1070641 () Bool)

(assert (=> d!163199 (=> (not res!1070641) (not e!873004))))

(assert (=> d!163199 (= res!1070641 (isStrictlySorted!983 lt!672583))))

(assert (=> d!163199 (= lt!672583 e!873005)))

(assert (=> d!163199 (= c!144290 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672473))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163199 (isStrictlySorted!983 (toList!11442 lt!672473))))

(assert (=> d!163199 (= (insertStrictlySorted!576 (toList!11442 lt!672473) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) lt!672583)))

(declare-fun b!1566211 () Bool)

(assert (=> b!1566211 (= e!873007 call!71897)))

(assert (= (and d!163199 c!144290) b!1566210))

(assert (= (and d!163199 (not c!144290)) b!1566215))

(assert (= (and b!1566215 c!144287) b!1566211))

(assert (= (and b!1566215 (not c!144287)) b!1566208))

(assert (= (and b!1566208 c!144289) b!1566209))

(assert (= (and b!1566208 (not c!144289)) b!1566214))

(assert (= (or b!1566209 b!1566214) bm!71892))

(assert (= (or b!1566211 bm!71892) bm!71894))

(assert (= (or b!1566210 bm!71894) bm!71893))

(assert (= (and bm!71893 c!144288) b!1566207))

(assert (= (and bm!71893 (not c!144288)) b!1566212))

(assert (= (and d!163199 res!1070641) b!1566216))

(assert (= (and b!1566216 res!1070640) b!1566213))

(declare-fun m!1441215 () Bool)

(assert (=> d!163199 m!1441215))

(declare-fun m!1441217 () Bool)

(assert (=> d!163199 m!1441217))

(declare-fun m!1441219 () Bool)

(assert (=> bm!71893 m!1441219))

(declare-fun m!1441221 () Bool)

(assert (=> b!1566216 m!1441221))

(declare-fun m!1441223 () Bool)

(assert (=> b!1566207 m!1441223))

(declare-fun m!1441225 () Bool)

(assert (=> b!1566213 m!1441225))

(assert (=> d!163153 d!163199))

(declare-fun d!163201 () Bool)

(declare-fun res!1070642 () Bool)

(declare-fun e!873008 () Bool)

(assert (=> d!163201 (=> res!1070642 e!873008)))

(assert (=> d!163201 (= res!1070642 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163201 (= (containsKey!849 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000) e!873008)))

(declare-fun b!1566217 () Bool)

(declare-fun e!873009 () Bool)

(assert (=> b!1566217 (= e!873008 e!873009)))

(declare-fun res!1070643 () Bool)

(assert (=> b!1566217 (=> (not res!1070643) (not e!873009))))

(assert (=> b!1566217 (= res!1070643 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672476))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 lt!672476)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566218 () Bool)

(assert (=> b!1566218 (= e!873009 (containsKey!849 (t!51700 (toList!11442 lt!672476)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163201 (not res!1070642)) b!1566217))

(assert (= (and b!1566217 res!1070643) b!1566218))

(declare-fun m!1441227 () Bool)

(assert (=> b!1566218 m!1441227))

(assert (=> d!163151 d!163201))

(declare-fun d!163203 () Bool)

(declare-fun res!1070644 () Bool)

(declare-fun e!873010 () Bool)

(assert (=> d!163203 (=> res!1070644 e!873010)))

(assert (=> d!163203 (= res!1070644 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163203 (= (containsKey!849 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000) e!873010)))

(declare-fun b!1566219 () Bool)

(declare-fun e!873011 () Bool)

(assert (=> b!1566219 (= e!873010 e!873011)))

(declare-fun res!1070645 () Bool)

(assert (=> b!1566219 (=> (not res!1070645) (not e!873011))))

(assert (=> b!1566219 (= res!1070645 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672476))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 lt!672476)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566220 () Bool)

(assert (=> b!1566220 (= e!873011 (containsKey!849 (t!51700 (toList!11442 lt!672476)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163203 (not res!1070644)) b!1566219))

(assert (= (and b!1566219 res!1070645) b!1566220))

(declare-fun m!1441229 () Bool)

(assert (=> b!1566220 m!1441229))

(assert (=> d!163155 d!163203))

(declare-fun d!163205 () Bool)

(assert (=> d!163205 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(declare-fun lt!672584 () Unit!51972)

(assert (=> d!163205 (= lt!672584 (choose!2082 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(declare-fun e!873012 () Bool)

(assert (=> d!163205 e!873012))

(declare-fun res!1070646 () Bool)

(assert (=> d!163205 (=> (not res!1070646) (not e!873012))))

(assert (=> d!163205 (= res!1070646 (isStrictlySorted!983 (toList!11442 lt!672476)))))

(assert (=> d!163205 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)) lt!672584)))

(declare-fun b!1566221 () Bool)

(assert (=> b!1566221 (= e!873012 (containsKey!849 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(assert (= (and d!163205 res!1070646) b!1566221))

(assert (=> d!163205 m!1440983))

(assert (=> d!163205 m!1441041))

(assert (=> d!163205 m!1441041))

(assert (=> d!163205 m!1441043))

(assert (=> d!163205 m!1440983))

(declare-fun m!1441231 () Bool)

(assert (=> d!163205 m!1441231))

(assert (=> d!163205 m!1441191))

(assert (=> b!1566221 m!1440983))

(assert (=> b!1566221 m!1441037))

(assert (=> b!1566036 d!163205))

(declare-fun d!163207 () Bool)

(assert (=> d!163207 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))))

(declare-fun bs!45060 () Bool)

(assert (= bs!45060 d!163207))

(assert (=> bs!45060 m!1441041))

(declare-fun m!1441233 () Bool)

(assert (=> bs!45060 m!1441233))

(assert (=> b!1566036 d!163207))

(assert (=> b!1566036 d!163179))

(declare-fun d!163209 () Bool)

(declare-fun e!873014 () Bool)

(assert (=> d!163209 e!873014))

(declare-fun res!1070647 () Bool)

(assert (=> d!163209 (=> res!1070647 e!873014)))

(declare-fun lt!672586 () Bool)

(assert (=> d!163209 (= res!1070647 (not lt!672586))))

(declare-fun lt!672587 () Bool)

(assert (=> d!163209 (= lt!672586 lt!672587)))

(declare-fun lt!672585 () Unit!51972)

(declare-fun e!873013 () Unit!51972)

(assert (=> d!163209 (= lt!672585 e!873013)))

(declare-fun c!144291 () Bool)

(assert (=> d!163209 (= c!144291 lt!672587)))

(assert (=> d!163209 (= lt!672587 (containsKey!849 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163209 (= (contains!10363 lt!672548 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672586)))

(declare-fun b!1566222 () Bool)

(declare-fun lt!672588 () Unit!51972)

(assert (=> b!1566222 (= e!873013 lt!672588)))

(assert (=> b!1566222 (= lt!672588 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566222 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566223 () Bool)

(declare-fun Unit!51982 () Unit!51972)

(assert (=> b!1566223 (= e!873013 Unit!51982)))

(declare-fun b!1566224 () Bool)

(assert (=> b!1566224 (= e!873014 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163209 c!144291) b!1566222))

(assert (= (and d!163209 (not c!144291)) b!1566223))

(assert (= (and d!163209 (not res!1070647)) b!1566224))

(declare-fun m!1441235 () Bool)

(assert (=> d!163209 m!1441235))

(declare-fun m!1441237 () Bool)

(assert (=> b!1566222 m!1441237))

(declare-fun m!1441239 () Bool)

(assert (=> b!1566222 m!1441239))

(assert (=> b!1566222 m!1441239))

(declare-fun m!1441241 () Bool)

(assert (=> b!1566222 m!1441241))

(assert (=> b!1566224 m!1441239))

(assert (=> b!1566224 m!1441239))

(assert (=> b!1566224 m!1441241))

(assert (=> d!163157 d!163209))

(assert (=> d!163157 d!163139))

(declare-fun d!163211 () Bool)

(assert (=> d!163211 (= (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) (and (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1566097 d!163211))

(assert (=> b!1566038 d!163207))

(assert (=> b!1566038 d!163179))

(declare-fun d!163213 () Bool)

(declare-fun e!873016 () Bool)

(assert (=> d!163213 e!873016))

(declare-fun res!1070648 () Bool)

(assert (=> d!163213 (=> res!1070648 e!873016)))

(declare-fun lt!672590 () Bool)

(assert (=> d!163213 (= res!1070648 (not lt!672590))))

(declare-fun lt!672591 () Bool)

(assert (=> d!163213 (= lt!672590 lt!672591)))

(declare-fun lt!672589 () Unit!51972)

(declare-fun e!873015 () Unit!51972)

(assert (=> d!163213 (= lt!672589 e!873015)))

(declare-fun c!144292 () Bool)

(assert (=> d!163213 (= c!144292 lt!672591)))

(assert (=> d!163213 (= lt!672591 (containsKey!849 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> d!163213 (= (contains!10363 lt!672548 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) lt!672590)))

(declare-fun b!1566225 () Bool)

(declare-fun lt!672592 () Unit!51972)

(assert (=> b!1566225 (= e!873015 lt!672592)))

(assert (=> b!1566225 (= lt!672592 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1566225 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1566226 () Bool)

(declare-fun Unit!51983 () Unit!51972)

(assert (=> b!1566226 (= e!873015 Unit!51983)))

(declare-fun b!1566227 () Bool)

(assert (=> b!1566227 (= e!873016 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(assert (= (and d!163213 c!144292) b!1566225))

(assert (= (and d!163213 (not c!144292)) b!1566226))

(assert (= (and d!163213 (not res!1070648)) b!1566227))

(assert (=> d!163213 m!1441097))

(declare-fun m!1441243 () Bool)

(assert (=> d!163213 m!1441243))

(assert (=> b!1566225 m!1441097))

(declare-fun m!1441245 () Bool)

(assert (=> b!1566225 m!1441245))

(assert (=> b!1566225 m!1441097))

(assert (=> b!1566225 m!1441133))

(assert (=> b!1566225 m!1441133))

(declare-fun m!1441247 () Bool)

(assert (=> b!1566225 m!1441247))

(assert (=> b!1566227 m!1441097))

(assert (=> b!1566227 m!1441133))

(assert (=> b!1566227 m!1441133))

(assert (=> b!1566227 m!1441247))

(assert (=> b!1566098 d!163213))

(assert (=> b!1566121 d!163191))

(declare-fun d!163215 () Bool)

(declare-fun lt!672595 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!813 (List!36793) (InoxSet (_ BitVec 64)))

(assert (=> d!163215 (= lt!672595 (select (content!813 Nil!36790) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun e!873021 () Bool)

(assert (=> d!163215 (= lt!672595 e!873021)))

(declare-fun res!1070653 () Bool)

(assert (=> d!163215 (=> (not res!1070653) (not e!873021))))

(assert (=> d!163215 (= res!1070653 ((_ is Cons!36789) Nil!36790))))

(assert (=> d!163215 (= (contains!10366 Nil!36790 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)) lt!672595)))

(declare-fun b!1566232 () Bool)

(declare-fun e!873022 () Bool)

(assert (=> b!1566232 (= e!873021 e!873022)))

(declare-fun res!1070654 () Bool)

(assert (=> b!1566232 (=> res!1070654 e!873022)))

(assert (=> b!1566232 (= res!1070654 (= (h!38236 Nil!36790) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566233 () Bool)

(assert (=> b!1566233 (= e!873022 (contains!10366 (t!51701 Nil!36790) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(assert (= (and d!163215 res!1070653) b!1566232))

(assert (= (and b!1566232 (not res!1070654)) b!1566233))

(declare-fun m!1441249 () Bool)

(assert (=> d!163215 m!1441249))

(assert (=> d!163215 m!1441047))

(declare-fun m!1441251 () Bool)

(assert (=> d!163215 m!1441251))

(assert (=> b!1566233 m!1441047))

(declare-fun m!1441253 () Bool)

(assert (=> b!1566233 m!1441253))

(assert (=> b!1566122 d!163215))

(declare-fun d!163217 () Bool)

(assert (=> d!163217 (arrayContainsKey!0 _keys!637 lt!672509 #b00000000000000000000000000000000)))

(declare-fun lt!672598 () Unit!51972)

(declare-fun choose!13 (array!104581 (_ BitVec 64) (_ BitVec 32)) Unit!51972)

(assert (=> d!163217 (= lt!672598 (choose!13 _keys!637 lt!672509 #b00000000000000000000000000000000))))

(assert (=> d!163217 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!163217 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672509 #b00000000000000000000000000000000) lt!672598)))

(declare-fun bs!45061 () Bool)

(assert (= bs!45061 d!163217))

(assert (=> bs!45061 m!1441053))

(declare-fun m!1441255 () Bool)

(assert (=> bs!45061 m!1441255))

(assert (=> b!1566047 d!163217))

(declare-fun d!163219 () Bool)

(declare-fun res!1070659 () Bool)

(declare-fun e!873027 () Bool)

(assert (=> d!163219 (=> res!1070659 e!873027)))

(assert (=> d!163219 (= res!1070659 (= (select (arr!50473 _keys!637) #b00000000000000000000000000000000) lt!672509))))

(assert (=> d!163219 (= (arrayContainsKey!0 _keys!637 lt!672509 #b00000000000000000000000000000000) e!873027)))

(declare-fun b!1566238 () Bool)

(declare-fun e!873028 () Bool)

(assert (=> b!1566238 (= e!873027 e!873028)))

(declare-fun res!1070660 () Bool)

(assert (=> b!1566238 (=> (not res!1070660) (not e!873028))))

(assert (=> b!1566238 (= res!1070660 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566239 () Bool)

(assert (=> b!1566239 (= e!873028 (arrayContainsKey!0 _keys!637 lt!672509 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!163219 (not res!1070659)) b!1566238))

(assert (= (and b!1566238 res!1070660) b!1566239))

(assert (=> d!163219 m!1441047))

(declare-fun m!1441257 () Bool)

(assert (=> b!1566239 m!1441257))

(assert (=> b!1566047 d!163219))

(declare-fun b!1566253 () Bool)

(declare-fun e!873036 () SeekEntryResult!13524)

(declare-fun lt!672607 () SeekEntryResult!13524)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104581 (_ BitVec 32)) SeekEntryResult!13524)

(assert (=> b!1566253 (= e!873036 (seekKeyOrZeroReturnVacant!0 (x!140742 lt!672607) (index!56495 lt!672607) (index!56495 lt!672607) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(declare-fun b!1566254 () Bool)

(assert (=> b!1566254 (= e!873036 (MissingZero!13524 (index!56495 lt!672607)))))

(declare-fun b!1566255 () Bool)

(declare-fun e!873035 () SeekEntryResult!13524)

(assert (=> b!1566255 (= e!873035 (Found!13524 (index!56495 lt!672607)))))

(declare-fun b!1566256 () Bool)

(declare-fun e!873037 () SeekEntryResult!13524)

(assert (=> b!1566256 (= e!873037 Undefined!13524)))

(declare-fun b!1566257 () Bool)

(declare-fun c!144300 () Bool)

(declare-fun lt!672605 () (_ BitVec 64))

(assert (=> b!1566257 (= c!144300 (= lt!672605 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566257 (= e!873035 e!873036)))

(declare-fun d!163221 () Bool)

(declare-fun lt!672606 () SeekEntryResult!13524)

(assert (=> d!163221 (and (or ((_ is Undefined!13524) lt!672606) (not ((_ is Found!13524) lt!672606)) (and (bvsge (index!56494 lt!672606) #b00000000000000000000000000000000) (bvslt (index!56494 lt!672606) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672606) ((_ is Found!13524) lt!672606) (not ((_ is MissingZero!13524) lt!672606)) (and (bvsge (index!56493 lt!672606) #b00000000000000000000000000000000) (bvslt (index!56493 lt!672606) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672606) ((_ is Found!13524) lt!672606) ((_ is MissingZero!13524) lt!672606) (not ((_ is MissingVacant!13524) lt!672606)) (and (bvsge (index!56496 lt!672606) #b00000000000000000000000000000000) (bvslt (index!56496 lt!672606) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672606) (ite ((_ is Found!13524) lt!672606) (= (select (arr!50473 _keys!637) (index!56494 lt!672606)) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!13524) lt!672606) (= (select (arr!50473 _keys!637) (index!56493 lt!672606)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13524) lt!672606) (= (select (arr!50473 _keys!637) (index!56496 lt!672606)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163221 (= lt!672606 e!873037)))

(declare-fun c!144301 () Bool)

(assert (=> d!163221 (= c!144301 (and ((_ is Intermediate!13524) lt!672607) (undefined!14336 lt!672607)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104581 (_ BitVec 32)) SeekEntryResult!13524)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!163221 (= lt!672607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(assert (=> d!163221 (validMask!0 mask!947)))

(assert (=> d!163221 (= (seekEntryOrOpen!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) lt!672606)))

(declare-fun b!1566252 () Bool)

(assert (=> b!1566252 (= e!873037 e!873035)))

(assert (=> b!1566252 (= lt!672605 (select (arr!50473 _keys!637) (index!56495 lt!672607)))))

(declare-fun c!144299 () Bool)

(assert (=> b!1566252 (= c!144299 (= lt!672605 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(assert (= (and d!163221 c!144301) b!1566256))

(assert (= (and d!163221 (not c!144301)) b!1566252))

(assert (= (and b!1566252 c!144299) b!1566255))

(assert (= (and b!1566252 (not c!144299)) b!1566257))

(assert (= (and b!1566257 c!144300) b!1566254))

(assert (= (and b!1566257 (not c!144300)) b!1566253))

(assert (=> b!1566253 m!1441047))

(declare-fun m!1441259 () Bool)

(assert (=> b!1566253 m!1441259))

(declare-fun m!1441261 () Bool)

(assert (=> d!163221 m!1441261))

(declare-fun m!1441263 () Bool)

(assert (=> d!163221 m!1441263))

(declare-fun m!1441265 () Bool)

(assert (=> d!163221 m!1441265))

(assert (=> d!163221 m!1441047))

(declare-fun m!1441267 () Bool)

(assert (=> d!163221 m!1441267))

(assert (=> d!163221 m!1440995))

(assert (=> d!163221 m!1441047))

(assert (=> d!163221 m!1441265))

(declare-fun m!1441269 () Bool)

(assert (=> d!163221 m!1441269))

(declare-fun m!1441271 () Bool)

(assert (=> b!1566252 m!1441271))

(assert (=> b!1566047 d!163221))

(declare-fun d!163223 () Bool)

(declare-fun e!873039 () Bool)

(assert (=> d!163223 e!873039))

(declare-fun res!1070661 () Bool)

(assert (=> d!163223 (=> res!1070661 e!873039)))

(declare-fun lt!672609 () Bool)

(assert (=> d!163223 (= res!1070661 (not lt!672609))))

(declare-fun lt!672610 () Bool)

(assert (=> d!163223 (= lt!672609 lt!672610)))

(declare-fun lt!672608 () Unit!51972)

(declare-fun e!873038 () Unit!51972)

(assert (=> d!163223 (= lt!672608 e!873038)))

(declare-fun c!144302 () Bool)

(assert (=> d!163223 (= c!144302 lt!672610)))

(assert (=> d!163223 (= lt!672610 (containsKey!849 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163223 (= (contains!10363 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672609)))

(declare-fun b!1566258 () Bool)

(declare-fun lt!672611 () Unit!51972)

(assert (=> b!1566258 (= e!873038 lt!672611)))

(assert (=> b!1566258 (= lt!672611 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566258 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566259 () Bool)

(declare-fun Unit!51984 () Unit!51972)

(assert (=> b!1566259 (= e!873038 Unit!51984)))

(declare-fun b!1566260 () Bool)

(assert (=> b!1566260 (= e!873039 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163223 c!144302) b!1566258))

(assert (= (and d!163223 (not c!144302)) b!1566259))

(assert (= (and d!163223 (not res!1070661)) b!1566260))

(declare-fun m!1441273 () Bool)

(assert (=> d!163223 m!1441273))

(declare-fun m!1441275 () Bool)

(assert (=> b!1566258 m!1441275))

(declare-fun m!1441277 () Bool)

(assert (=> b!1566258 m!1441277))

(assert (=> b!1566258 m!1441277))

(declare-fun m!1441279 () Bool)

(assert (=> b!1566258 m!1441279))

(assert (=> b!1566260 m!1441277))

(assert (=> b!1566260 m!1441277))

(assert (=> b!1566260 m!1441279))

(assert (=> d!163149 d!163223))

(assert (=> d!163149 d!163153))

(declare-fun d!163225 () Bool)

(assert (=> d!163225 (not (contains!10363 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163225 true))

(declare-fun _$36!388 () Unit!51972)

(assert (=> d!163225 (= (choose!2081 lt!672473 (select (arr!50473 _keys!637) from!782) lt!672474 #b0000000000000000000000000000000000000000000000000000000000000000) _$36!388)))

(declare-fun bs!45062 () Bool)

(assert (= bs!45062 d!163225))

(assert (=> bs!45062 m!1440975))

(assert (=> bs!45062 m!1440975))

(assert (=> bs!45062 m!1441063))

(assert (=> d!163149 d!163225))

(declare-fun d!163227 () Bool)

(declare-fun e!873041 () Bool)

(assert (=> d!163227 e!873041))

(declare-fun res!1070662 () Bool)

(assert (=> d!163227 (=> res!1070662 e!873041)))

(declare-fun lt!672613 () Bool)

(assert (=> d!163227 (= res!1070662 (not lt!672613))))

(declare-fun lt!672614 () Bool)

(assert (=> d!163227 (= lt!672613 lt!672614)))

(declare-fun lt!672612 () Unit!51972)

(declare-fun e!873040 () Unit!51972)

(assert (=> d!163227 (= lt!672612 e!873040)))

(declare-fun c!144303 () Bool)

(assert (=> d!163227 (= c!144303 lt!672614)))

(assert (=> d!163227 (= lt!672614 (containsKey!849 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163227 (= (contains!10363 lt!672473 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672613)))

(declare-fun b!1566262 () Bool)

(declare-fun lt!672615 () Unit!51972)

(assert (=> b!1566262 (= e!873040 lt!672615)))

(assert (=> b!1566262 (= lt!672615 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566262 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566263 () Bool)

(declare-fun Unit!51985 () Unit!51972)

(assert (=> b!1566263 (= e!873040 Unit!51985)))

(declare-fun b!1566264 () Bool)

(assert (=> b!1566264 (= e!873041 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163227 c!144303) b!1566262))

(assert (= (and d!163227 (not c!144303)) b!1566263))

(assert (= (and d!163227 (not res!1070662)) b!1566264))

(declare-fun m!1441281 () Bool)

(assert (=> d!163227 m!1441281))

(declare-fun m!1441283 () Bool)

(assert (=> b!1566262 m!1441283))

(declare-fun m!1441285 () Bool)

(assert (=> b!1566262 m!1441285))

(assert (=> b!1566262 m!1441285))

(declare-fun m!1441287 () Bool)

(assert (=> b!1566262 m!1441287))

(assert (=> b!1566264 m!1441285))

(assert (=> b!1566264 m!1441285))

(assert (=> b!1566264 m!1441287))

(assert (=> d!163149 d!163227))

(declare-fun b!1566266 () Bool)

(declare-fun e!873044 () Bool)

(declare-fun call!71898 () Bool)

(assert (=> b!1566266 (= e!873044 call!71898)))

(declare-fun bm!71895 () Bool)

(assert (=> bm!71895 (= call!71898 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1566267 () Bool)

(declare-fun e!873043 () Bool)

(assert (=> b!1566267 (= e!873043 call!71898)))

(declare-fun b!1566268 () Bool)

(declare-fun e!873042 () Bool)

(assert (=> b!1566268 (= e!873042 e!873044)))

(declare-fun c!144304 () Bool)

(assert (=> b!1566268 (= c!144304 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1566265 () Bool)

(assert (=> b!1566265 (= e!873044 e!873043)))

(declare-fun lt!672618 () (_ BitVec 64))

(assert (=> b!1566265 (= lt!672618 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!672617 () Unit!51972)

(assert (=> b!1566265 (= lt!672617 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1566265 (arrayContainsKey!0 _keys!637 lt!672618 #b00000000000000000000000000000000)))

(declare-fun lt!672616 () Unit!51972)

(assert (=> b!1566265 (= lt!672616 lt!672617)))

(declare-fun res!1070664 () Bool)

(assert (=> b!1566265 (= res!1070664 (= (seekEntryOrOpen!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!637 mask!947) (Found!13524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1566265 (=> (not res!1070664) (not e!873043))))

(declare-fun d!163229 () Bool)

(declare-fun res!1070663 () Bool)

(assert (=> d!163229 (=> res!1070663 e!873042)))

(assert (=> d!163229 (= res!1070663 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163229 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947) e!873042)))

(assert (= (and d!163229 (not res!1070663)) b!1566268))

(assert (= (and b!1566268 c!144304) b!1566265))

(assert (= (and b!1566268 (not c!144304)) b!1566266))

(assert (= (and b!1566265 res!1070664) b!1566267))

(assert (= (or b!1566267 b!1566266) bm!71895))

(declare-fun m!1441289 () Bool)

(assert (=> bm!71895 m!1441289))

(declare-fun m!1441291 () Bool)

(assert (=> b!1566268 m!1441291))

(assert (=> b!1566268 m!1441291))

(declare-fun m!1441293 () Bool)

(assert (=> b!1566268 m!1441293))

(assert (=> b!1566265 m!1441291))

(declare-fun m!1441295 () Bool)

(assert (=> b!1566265 m!1441295))

(declare-fun m!1441297 () Bool)

(assert (=> b!1566265 m!1441297))

(assert (=> b!1566265 m!1441291))

(declare-fun m!1441299 () Bool)

(assert (=> b!1566265 m!1441299))

(assert (=> bm!71879 d!163229))

(declare-fun lt!672621 () Bool)

(declare-fun d!163231 () Bool)

(declare-fun content!814 (List!36792) (InoxSet tuple2!25406))

(assert (=> d!163231 (= lt!672621 (select (content!814 (toList!11442 lt!672528)) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(declare-fun e!873049 () Bool)

(assert (=> d!163231 (= lt!672621 e!873049)))

(declare-fun res!1070669 () Bool)

(assert (=> d!163231 (=> (not res!1070669) (not e!873049))))

(assert (=> d!163231 (= res!1070669 ((_ is Cons!36788) (toList!11442 lt!672528)))))

(assert (=> d!163231 (= (contains!10365 (toList!11442 lt!672528) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) lt!672621)))

(declare-fun b!1566273 () Bool)

(declare-fun e!873050 () Bool)

(assert (=> b!1566273 (= e!873049 e!873050)))

(declare-fun res!1070670 () Bool)

(assert (=> b!1566273 (=> res!1070670 e!873050)))

(assert (=> b!1566273 (= res!1070670 (= (h!38235 (toList!11442 lt!672528)) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(declare-fun b!1566274 () Bool)

(assert (=> b!1566274 (= e!873050 (contains!10365 (t!51700 (toList!11442 lt!672528)) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(assert (= (and d!163231 res!1070669) b!1566273))

(assert (= (and b!1566273 (not res!1070670)) b!1566274))

(declare-fun m!1441301 () Bool)

(assert (=> d!163231 m!1441301))

(declare-fun m!1441303 () Bool)

(assert (=> d!163231 m!1441303))

(declare-fun m!1441305 () Bool)

(assert (=> b!1566274 m!1441305))

(assert (=> b!1566069 d!163231))

(declare-fun d!163233 () Bool)

(assert (=> d!163233 (= (get!26392 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!22317 (select (arr!50474 _values!487) from!782)))))

(assert (=> b!1566055 d!163233))

(declare-fun b!1566275 () Bool)

(declare-fun e!873055 () Bool)

(assert (=> b!1566275 (= e!873055 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(assert (=> b!1566275 (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1566276 () Bool)

(declare-fun e!873053 () Bool)

(declare-fun e!873052 () Bool)

(assert (=> b!1566276 (= e!873053 e!873052)))

(assert (=> b!1566276 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun lt!672623 () ListLongMap!22853)

(declare-fun res!1070673 () Bool)

(assert (=> b!1566276 (= res!1070673 (contains!10363 lt!672623 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(assert (=> b!1566276 (=> (not res!1070673) (not e!873052))))

(declare-fun b!1566277 () Bool)

(declare-fun e!873056 () Bool)

(assert (=> b!1566277 (= e!873056 (isEmpty!1148 lt!672623))))

(declare-fun b!1566278 () Bool)

(assert (=> b!1566278 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> b!1566278 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51025 _values!487)))))

(assert (=> b!1566278 (= e!873052 (= (apply!1148 lt!672623 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1566279 () Bool)

(declare-fun res!1070672 () Bool)

(declare-fun e!873057 () Bool)

(assert (=> b!1566279 (=> (not res!1070672) (not e!873057))))

(assert (=> b!1566279 (= res!1070672 (not (contains!10363 lt!672623 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566280 () Bool)

(declare-fun lt!672625 () Unit!51972)

(declare-fun lt!672624 () Unit!51972)

(assert (=> b!1566280 (= lt!672625 lt!672624)))

(declare-fun lt!672626 () V!60155)

(declare-fun lt!672628 () (_ BitVec 64))

(declare-fun lt!672627 () (_ BitVec 64))

(declare-fun lt!672622 () ListLongMap!22853)

(assert (=> b!1566280 (not (contains!10363 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626)) lt!672628))))

(assert (=> b!1566280 (= lt!672624 (addStillNotContains!585 lt!672622 lt!672627 lt!672626 lt!672628))))

(assert (=> b!1566280 (= lt!672628 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1566280 (= lt!672626 (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1566280 (= lt!672627 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)))))

(declare-fun call!71899 () ListLongMap!22853)

(assert (=> b!1566280 (= lt!672622 call!71899)))

(declare-fun e!873054 () ListLongMap!22853)

(assert (=> b!1566280 (= e!873054 (+!5049 call!71899 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1566281 () Bool)

(assert (=> b!1566281 (= e!873057 e!873053)))

(declare-fun c!144305 () Bool)

(assert (=> b!1566281 (= c!144305 e!873055)))

(declare-fun res!1070674 () Bool)

(assert (=> b!1566281 (=> (not res!1070674) (not e!873055))))

(assert (=> b!1566281 (= res!1070674 (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566282 () Bool)

(assert (=> b!1566282 (= e!873053 e!873056)))

(declare-fun c!144307 () Bool)

(assert (=> b!1566282 (= c!144307 (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566283 () Bool)

(assert (=> b!1566283 (= e!873056 (= lt!672623 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1566284 () Bool)

(assert (=> b!1566284 (= e!873054 call!71899)))

(declare-fun b!1566285 () Bool)

(declare-fun e!873051 () ListLongMap!22853)

(assert (=> b!1566285 (= e!873051 e!873054)))

(declare-fun c!144306 () Bool)

(assert (=> b!1566285 (= c!144306 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(declare-fun b!1566286 () Bool)

(assert (=> b!1566286 (= e!873051 (ListLongMap!22854 Nil!36789))))

(declare-fun d!163235 () Bool)

(assert (=> d!163235 e!873057))

(declare-fun res!1070671 () Bool)

(assert (=> d!163235 (=> (not res!1070671) (not e!873057))))

(assert (=> d!163235 (= res!1070671 (not (contains!10363 lt!672623 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163235 (= lt!672623 e!873051)))

(declare-fun c!144308 () Bool)

(assert (=> d!163235 (= c!144308 (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163235 (validMask!0 mask!947)))

(assert (=> d!163235 (= (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001) defaultEntry!495) lt!672623)))

(declare-fun bm!71896 () Bool)

(assert (=> bm!71896 (= call!71899 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!495))))

(assert (= (and d!163235 c!144308) b!1566286))

(assert (= (and d!163235 (not c!144308)) b!1566285))

(assert (= (and b!1566285 c!144306) b!1566280))

(assert (= (and b!1566285 (not c!144306)) b!1566284))

(assert (= (or b!1566280 b!1566284) bm!71896))

(assert (= (and d!163235 res!1070671) b!1566279))

(assert (= (and b!1566279 res!1070672) b!1566281))

(assert (= (and b!1566281 res!1070674) b!1566275))

(assert (= (and b!1566281 c!144305) b!1566276))

(assert (= (and b!1566281 (not c!144305)) b!1566282))

(assert (= (and b!1566276 res!1070673) b!1566278))

(assert (= (and b!1566282 c!144307) b!1566283))

(assert (= (and b!1566282 (not c!144307)) b!1566277))

(declare-fun b_lambda!25025 () Bool)

(assert (=> (not b_lambda!25025) (not b!1566278)))

(assert (=> b!1566278 t!51699))

(declare-fun b_and!51837 () Bool)

(assert (= b_and!51835 (and (=> t!51699 result!26609) b_and!51837)))

(declare-fun b_lambda!25027 () Bool)

(assert (=> (not b_lambda!25027) (not b!1566280)))

(assert (=> b!1566280 t!51699))

(declare-fun b_and!51839 () Bool)

(assert (= b_and!51837 (and (=> t!51699 result!26609) b_and!51839)))

(declare-fun m!1441307 () Bool)

(assert (=> b!1566285 m!1441307))

(assert (=> b!1566285 m!1441307))

(declare-fun m!1441309 () Bool)

(assert (=> b!1566285 m!1441309))

(declare-fun m!1441311 () Bool)

(assert (=> d!163235 m!1441311))

(assert (=> d!163235 m!1440995))

(declare-fun m!1441313 () Bool)

(assert (=> b!1566277 m!1441313))

(assert (=> b!1566276 m!1441307))

(assert (=> b!1566276 m!1441307))

(declare-fun m!1441315 () Bool)

(assert (=> b!1566276 m!1441315))

(declare-fun m!1441317 () Bool)

(assert (=> b!1566280 m!1441317))

(declare-fun m!1441319 () Bool)

(assert (=> b!1566280 m!1441319))

(assert (=> b!1566280 m!1441307))

(declare-fun m!1441321 () Bool)

(assert (=> b!1566280 m!1441321))

(declare-fun m!1441323 () Bool)

(assert (=> b!1566280 m!1441323))

(assert (=> b!1566280 m!1441317))

(declare-fun m!1441325 () Bool)

(assert (=> b!1566280 m!1441325))

(assert (=> b!1566280 m!1440971))

(assert (=> b!1566280 m!1441323))

(assert (=> b!1566280 m!1440971))

(declare-fun m!1441327 () Bool)

(assert (=> b!1566280 m!1441327))

(assert (=> b!1566275 m!1441307))

(assert (=> b!1566275 m!1441307))

(assert (=> b!1566275 m!1441309))

(assert (=> b!1566278 m!1441307))

(assert (=> b!1566278 m!1441323))

(assert (=> b!1566278 m!1441307))

(declare-fun m!1441329 () Bool)

(assert (=> b!1566278 m!1441329))

(assert (=> b!1566278 m!1440971))

(assert (=> b!1566278 m!1441323))

(assert (=> b!1566278 m!1440971))

(assert (=> b!1566278 m!1441327))

(declare-fun m!1441331 () Bool)

(assert (=> bm!71896 m!1441331))

(assert (=> b!1566283 m!1441331))

(declare-fun m!1441333 () Bool)

(assert (=> b!1566279 m!1441333))

(assert (=> b!1566105 d!163235))

(declare-fun d!163237 () Bool)

(assert (=> d!163237 (= (get!26393 (select (arr!50474 _values!487) from!782) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566056 d!163237))

(assert (=> b!1566119 d!163191))

(assert (=> b!1566063 d!163185))

(assert (=> b!1566063 d!163187))

(declare-fun d!163239 () Bool)

(assert (=> d!163239 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672629 () Unit!51972)

(assert (=> d!163239 (= lt!672629 (choose!2082 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873058 () Bool)

(assert (=> d!163239 e!873058))

(declare-fun res!1070675 () Bool)

(assert (=> d!163239 (=> (not res!1070675) (not e!873058))))

(assert (=> d!163239 (= res!1070675 (isStrictlySorted!983 (toList!11442 lt!672476)))))

(assert (=> d!163239 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672629)))

(declare-fun b!1566287 () Bool)

(assert (=> b!1566287 (= e!873058 (containsKey!849 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163239 res!1070675) b!1566287))

(assert (=> d!163239 m!1441093))

(assert (=> d!163239 m!1441093))

(assert (=> d!163239 m!1441095))

(declare-fun m!1441335 () Bool)

(assert (=> d!163239 m!1441335))

(assert (=> d!163239 m!1441191))

(assert (=> b!1566287 m!1441089))

(assert (=> b!1566070 d!163239))

(declare-fun d!163241 () Bool)

(assert (=> d!163241 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45063 () Bool)

(assert (= bs!45063 d!163241))

(assert (=> bs!45063 m!1441093))

(declare-fun m!1441337 () Bool)

(assert (=> bs!45063 m!1441337))

(assert (=> b!1566070 d!163241))

(declare-fun b!1566291 () Bool)

(declare-fun e!873060 () Option!870)

(assert (=> b!1566291 (= e!873060 None!868)))

(declare-fun b!1566288 () Bool)

(declare-fun e!873059 () Option!870)

(assert (=> b!1566288 (= e!873059 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672476)))))))

(declare-fun b!1566290 () Bool)

(assert (=> b!1566290 (= e!873060 (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566289 () Bool)

(assert (=> b!1566289 (= e!873059 e!873060)))

(declare-fun c!144310 () Bool)

(assert (=> b!1566289 (= c!144310 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163243 () Bool)

(declare-fun c!144309 () Bool)

(assert (=> d!163243 (= c!144309 (and ((_ is Cons!36788) (toList!11442 lt!672476)) (= (_1!12713 (h!38235 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163243 (= (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000) e!873059)))

(assert (= (and d!163243 c!144309) b!1566288))

(assert (= (and d!163243 (not c!144309)) b!1566289))

(assert (= (and b!1566289 c!144310) b!1566290))

(assert (= (and b!1566289 (not c!144310)) b!1566291))

(declare-fun m!1441339 () Bool)

(assert (=> b!1566290 m!1441339))

(assert (=> b!1566070 d!163243))

(assert (=> b!1566072 d!163241))

(assert (=> b!1566072 d!163243))

(assert (=> b!1566107 d!163211))

(declare-fun d!163245 () Bool)

(declare-fun res!1070676 () Bool)

(declare-fun e!873064 () Bool)

(assert (=> d!163245 (=> res!1070676 e!873064)))

(assert (=> d!163245 (= res!1070676 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163245 (= (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) e!873064)))

(declare-fun b!1566292 () Bool)

(declare-fun e!873063 () Bool)

(declare-fun e!873062 () Bool)

(assert (=> b!1566292 (= e!873063 e!873062)))

(declare-fun c!144311 () Bool)

(assert (=> b!1566292 (= c!144311 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!71900 () Bool)

(declare-fun bm!71897 () Bool)

(assert (=> bm!71897 (= call!71900 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!144311 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790))))))

(declare-fun b!1566293 () Bool)

(assert (=> b!1566293 (= e!873062 call!71900)))

(declare-fun b!1566294 () Bool)

(assert (=> b!1566294 (= e!873064 e!873063)))

(declare-fun res!1070678 () Bool)

(assert (=> b!1566294 (=> (not res!1070678) (not e!873063))))

(declare-fun e!873061 () Bool)

(assert (=> b!1566294 (= res!1070678 (not e!873061))))

(declare-fun res!1070677 () Bool)

(assert (=> b!1566294 (=> (not res!1070677) (not e!873061))))

(assert (=> b!1566294 (= res!1070677 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1566295 () Bool)

(assert (=> b!1566295 (= e!873061 (contains!10366 (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1566296 () Bool)

(assert (=> b!1566296 (= e!873062 call!71900)))

(assert (= (and d!163245 (not res!1070676)) b!1566294))

(assert (= (and b!1566294 res!1070677) b!1566295))

(assert (= (and b!1566294 res!1070678) b!1566292))

(assert (= (and b!1566292 c!144311) b!1566296))

(assert (= (and b!1566292 (not c!144311)) b!1566293))

(assert (= (or b!1566296 b!1566293) bm!71897))

(assert (=> b!1566292 m!1441291))

(assert (=> b!1566292 m!1441291))

(assert (=> b!1566292 m!1441293))

(assert (=> bm!71897 m!1441291))

(declare-fun m!1441341 () Bool)

(assert (=> bm!71897 m!1441341))

(assert (=> b!1566294 m!1441291))

(assert (=> b!1566294 m!1441291))

(assert (=> b!1566294 m!1441293))

(assert (=> b!1566295 m!1441291))

(assert (=> b!1566295 m!1441291))

(declare-fun m!1441343 () Bool)

(assert (=> b!1566295 m!1441343))

(assert (=> bm!71885 d!163245))

(assert (=> bm!71882 d!163235))

(declare-fun b!1566297 () Bool)

(declare-fun e!873065 () Bool)

(assert (=> b!1566297 (= e!873065 tp_is_empty!38961)))

(declare-fun b!1566298 () Bool)

(declare-fun e!873066 () Bool)

(assert (=> b!1566298 (= e!873066 tp_is_empty!38961)))

(declare-fun mapNonEmpty!59840 () Bool)

(declare-fun mapRes!59840 () Bool)

(declare-fun tp!113874 () Bool)

(assert (=> mapNonEmpty!59840 (= mapRes!59840 (and tp!113874 e!873065))))

(declare-fun mapValue!59840 () ValueCell!18450)

(declare-fun mapRest!59840 () (Array (_ BitVec 32) ValueCell!18450))

(declare-fun mapKey!59840 () (_ BitVec 32))

(assert (=> mapNonEmpty!59840 (= mapRest!59839 (store mapRest!59840 mapKey!59840 mapValue!59840))))

(declare-fun condMapEmpty!59840 () Bool)

(declare-fun mapDefault!59840 () ValueCell!18450)

(assert (=> mapNonEmpty!59839 (= condMapEmpty!59840 (= mapRest!59839 ((as const (Array (_ BitVec 32) ValueCell!18450)) mapDefault!59840)))))

(assert (=> mapNonEmpty!59839 (= tp!113873 (and e!873066 mapRes!59840))))

(declare-fun mapIsEmpty!59840 () Bool)

(assert (=> mapIsEmpty!59840 mapRes!59840))

(assert (= (and mapNonEmpty!59839 condMapEmpty!59840) mapIsEmpty!59840))

(assert (= (and mapNonEmpty!59839 (not condMapEmpty!59840)) mapNonEmpty!59840))

(assert (= (and mapNonEmpty!59840 ((_ is ValueCellFull!18450) mapValue!59840)) b!1566297))

(assert (= (and mapNonEmpty!59839 ((_ is ValueCellFull!18450) mapDefault!59840)) b!1566298))

(declare-fun m!1441345 () Bool)

(assert (=> mapNonEmpty!59840 m!1441345))

(declare-fun b_lambda!25029 () Bool)

(assert (= b_lambda!25025 (or (and start!133996 b_free!32187) b_lambda!25029)))

(declare-fun b_lambda!25031 () Bool)

(assert (= b_lambda!25027 (or (and start!133996 b_free!32187) b_lambda!25031)))

(check-sat (not b!1566221) (not b!1566216) tp_is_empty!38961 (not d!163199) (not b_next!32187) (not b!1566278) (not b!1566134) (not d!163225) (not b!1566224) (not bm!71893) (not d!163163) (not d!163223) (not b!1566155) (not b!1566233) (not b!1566283) (not d!163173) (not d!163197) (not d!163169) (not b!1566287) (not b!1566218) (not b!1566168) (not b_lambda!25021) (not b_lambda!25031) (not b!1566133) (not b!1566292) (not d!163183) (not d!163193) (not b!1566275) (not d!163171) (not b!1566136) (not d!163207) (not d!163205) (not b!1566253) (not b!1566285) (not bm!71896) (not b!1566143) (not b!1566162) (not b!1566280) (not b!1566225) (not d!163221) (not b!1566220) (not d!163227) (not b!1566186) (not b!1566290) (not b!1566264) (not b!1566222) (not b!1566174) (not d!163217) (not b!1566139) (not b_lambda!25015) (not b!1566295) (not d!163215) (not b!1566265) (not b!1566294) (not d!163241) (not mapNonEmpty!59840) (not b!1566165) (not b!1566262) (not d!163167) (not b!1566132) (not b!1566213) (not b!1566138) (not d!163185) (not b!1566185) (not b!1566276) (not b!1566172) (not b!1566179) (not b!1566141) (not b!1566260) b_and!51839 (not b!1566227) (not bm!71895) (not bm!71897) (not b!1566258) (not b!1566268) (not b!1566274) (not d!163213) (not d!163209) (not b_lambda!25023) (not d!163161) (not d!163239) (not b!1566137) (not b_lambda!25029) (not d!163175) (not b!1566176) (not d!163231) (not b!1566140) (not b!1566277) (not b!1566239) (not d!163235) (not b!1566279) (not b!1566207))
(check-sat b_and!51839 (not b_next!32187))
(get-model)

(declare-fun d!163247 () Bool)

(assert (=> d!163247 (= (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))))

(declare-fun bs!45064 () Bool)

(assert (= bs!45064 d!163247))

(assert (=> bs!45064 m!1441177))

(declare-fun m!1441347 () Bool)

(assert (=> bs!45064 m!1441347))

(assert (=> b!1566143 d!163247))

(declare-fun b!1566302 () Bool)

(declare-fun e!873068 () Option!870)

(assert (=> b!1566302 (= e!873068 None!868)))

(declare-fun b!1566299 () Bool)

(declare-fun e!873067 () Option!870)

(assert (=> b!1566299 (= e!873067 (Some!869 (_2!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))))))))

(declare-fun b!1566301 () Bool)

(assert (=> b!1566301 (= e!873068 (getValueByKey!795 (t!51700 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) lt!672553))))

(declare-fun b!1566300 () Bool)

(assert (=> b!1566300 (= e!873067 e!873068)))

(declare-fun c!144313 () Bool)

(assert (=> b!1566300 (= c!144313 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) (not (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) lt!672553))))))

(declare-fun d!163249 () Bool)

(declare-fun c!144312 () Bool)

(assert (=> d!163249 (= c!144312 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) lt!672553)))))

(assert (=> d!163249 (= (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553) e!873067)))

(assert (= (and d!163249 c!144312) b!1566299))

(assert (= (and d!163249 (not c!144312)) b!1566300))

(assert (= (and b!1566300 c!144313) b!1566301))

(assert (= (and b!1566300 (not c!144313)) b!1566302))

(declare-fun m!1441349 () Bool)

(assert (=> b!1566301 m!1441349))

(assert (=> b!1566143 d!163249))

(declare-fun d!163251 () Bool)

(assert (=> d!163251 (= (get!26393 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566133 d!163251))

(declare-fun d!163253 () Bool)

(declare-fun res!1070679 () Bool)

(declare-fun e!873069 () Bool)

(assert (=> d!163253 (=> res!1070679 e!873069)))

(assert (=> d!163253 (= res!1070679 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (= (_1!12713 (h!38235 (toList!11442 lt!672473))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163253 (= (containsKey!849 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000) e!873069)))

(declare-fun b!1566303 () Bool)

(declare-fun e!873070 () Bool)

(assert (=> b!1566303 (= e!873069 e!873070)))

(declare-fun res!1070680 () Bool)

(assert (=> b!1566303 (=> (not res!1070680) (not e!873070))))

(assert (=> b!1566303 (= res!1070680 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672473))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672473))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 lt!672473)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672473))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566304 () Bool)

(assert (=> b!1566304 (= e!873070 (containsKey!849 (t!51700 (toList!11442 lt!672473)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163253 (not res!1070679)) b!1566303))

(assert (= (and b!1566303 res!1070680) b!1566304))

(declare-fun m!1441351 () Bool)

(assert (=> b!1566304 m!1441351))

(assert (=> d!163227 d!163253))

(declare-fun d!163255 () Bool)

(declare-fun lt!672630 () Bool)

(assert (=> d!163255 (= lt!672630 (select (content!814 lt!672526) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun e!873071 () Bool)

(assert (=> d!163255 (= lt!672630 e!873071)))

(declare-fun res!1070681 () Bool)

(assert (=> d!163255 (=> (not res!1070681) (not e!873071))))

(assert (=> d!163255 (= res!1070681 ((_ is Cons!36788) lt!672526))))

(assert (=> d!163255 (= (contains!10365 lt!672526 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) lt!672630)))

(declare-fun b!1566305 () Bool)

(declare-fun e!873072 () Bool)

(assert (=> b!1566305 (= e!873071 e!873072)))

(declare-fun res!1070682 () Bool)

(assert (=> b!1566305 (=> res!1070682 e!873072)))

(assert (=> b!1566305 (= res!1070682 (= (h!38235 lt!672526) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566306 () Bool)

(assert (=> b!1566306 (= e!873072 (contains!10365 (t!51700 lt!672526) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (= (and d!163255 res!1070681) b!1566305))

(assert (= (and b!1566305 (not res!1070682)) b!1566306))

(declare-fun m!1441353 () Bool)

(assert (=> d!163255 m!1441353))

(declare-fun m!1441355 () Bool)

(assert (=> d!163255 m!1441355))

(declare-fun m!1441357 () Bool)

(assert (=> b!1566306 m!1441357))

(assert (=> b!1566186 d!163255))

(declare-fun b!1566310 () Bool)

(declare-fun e!873074 () Option!870)

(assert (=> b!1566310 (= e!873074 None!868)))

(declare-fun b!1566307 () Bool)

(declare-fun e!873073 () Option!870)

(assert (=> b!1566307 (= e!873073 (Some!869 (_2!12713 (h!38235 (t!51700 (toList!11442 lt!672528))))))))

(declare-fun b!1566309 () Bool)

(assert (=> b!1566309 (= e!873074 (getValueByKey!795 (t!51700 (t!51700 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566308 () Bool)

(assert (=> b!1566308 (= e!873073 e!873074)))

(declare-fun c!144315 () Bool)

(assert (=> b!1566308 (= c!144315 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672528))) (not (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672528)))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun d!163257 () Bool)

(declare-fun c!144314 () Bool)

(assert (=> d!163257 (= c!144314 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672528))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672528)))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163257 (= (getValueByKey!795 (t!51700 (toList!11442 lt!672528)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!873073)))

(assert (= (and d!163257 c!144314) b!1566307))

(assert (= (and d!163257 (not c!144314)) b!1566308))

(assert (= (and b!1566308 c!144315) b!1566309))

(assert (= (and b!1566308 (not c!144315)) b!1566310))

(declare-fun m!1441359 () Bool)

(assert (=> b!1566309 m!1441359))

(assert (=> b!1566172 d!163257))

(declare-fun d!163259 () Bool)

(assert (=> d!163259 (= (isEmpty!1149 (toList!11442 lt!672548)) ((_ is Nil!36789) (toList!11442 lt!672548)))))

(assert (=> d!163161 d!163259))

(declare-fun lt!672631 () Bool)

(declare-fun d!163261 () Bool)

(assert (=> d!163261 (= lt!672631 (select (content!814 (toList!11442 lt!672561)) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!873075 () Bool)

(assert (=> d!163261 (= lt!672631 e!873075)))

(declare-fun res!1070683 () Bool)

(assert (=> d!163261 (=> (not res!1070683) (not e!873075))))

(assert (=> d!163261 (= res!1070683 ((_ is Cons!36788) (toList!11442 lt!672561)))))

(assert (=> d!163261 (= (contains!10365 (toList!11442 lt!672561) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!672631)))

(declare-fun b!1566311 () Bool)

(declare-fun e!873076 () Bool)

(assert (=> b!1566311 (= e!873075 e!873076)))

(declare-fun res!1070684 () Bool)

(assert (=> b!1566311 (=> res!1070684 e!873076)))

(assert (=> b!1566311 (= res!1070684 (= (h!38235 (toList!11442 lt!672561)) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1566312 () Bool)

(assert (=> b!1566312 (= e!873076 (contains!10365 (t!51700 (toList!11442 lt!672561)) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!163261 res!1070683) b!1566311))

(assert (= (and b!1566311 (not res!1070684)) b!1566312))

(declare-fun m!1441361 () Bool)

(assert (=> d!163261 m!1441361))

(declare-fun m!1441363 () Bool)

(assert (=> d!163261 m!1441363))

(declare-fun m!1441365 () Bool)

(assert (=> b!1566312 m!1441365))

(assert (=> b!1566138 d!163261))

(declare-fun d!163263 () Bool)

(assert (=> d!163263 (= (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1566268 d!163263))

(declare-fun d!163265 () Bool)

(assert (=> d!163265 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672632 () Unit!51972)

(assert (=> d!163265 (= lt!672632 (choose!2082 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873077 () Bool)

(assert (=> d!163265 e!873077))

(declare-fun res!1070685 () Bool)

(assert (=> d!163265 (=> (not res!1070685) (not e!873077))))

(assert (=> d!163265 (= res!1070685 (isStrictlySorted!983 (toList!11442 lt!672548)))))

(assert (=> d!163265 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000) lt!672632)))

(declare-fun b!1566313 () Bool)

(assert (=> b!1566313 (= e!873077 (containsKey!849 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163265 res!1070685) b!1566313))

(assert (=> d!163265 m!1441145))

(assert (=> d!163265 m!1441145))

(assert (=> d!163265 m!1441147))

(declare-fun m!1441367 () Bool)

(assert (=> d!163265 m!1441367))

(declare-fun m!1441369 () Bool)

(assert (=> d!163265 m!1441369))

(assert (=> b!1566313 m!1441141))

(assert (=> b!1566134 d!163265))

(declare-fun d!163267 () Bool)

(assert (=> d!163267 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45065 () Bool)

(assert (= bs!45065 d!163267))

(assert (=> bs!45065 m!1441145))

(declare-fun m!1441371 () Bool)

(assert (=> bs!45065 m!1441371))

(assert (=> b!1566134 d!163267))

(declare-fun b!1566317 () Bool)

(declare-fun e!873079 () Option!870)

(assert (=> b!1566317 (= e!873079 None!868)))

(declare-fun b!1566314 () Bool)

(declare-fun e!873078 () Option!870)

(assert (=> b!1566314 (= e!873078 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672548)))))))

(declare-fun b!1566316 () Bool)

(assert (=> b!1566316 (= e!873079 (getValueByKey!795 (t!51700 (toList!11442 lt!672548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566315 () Bool)

(assert (=> b!1566315 (= e!873078 e!873079)))

(declare-fun c!144317 () Bool)

(assert (=> b!1566315 (= c!144317 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163269 () Bool)

(declare-fun c!144316 () Bool)

(assert (=> d!163269 (= c!144316 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163269 (= (getValueByKey!795 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000) e!873078)))

(assert (= (and d!163269 c!144316) b!1566314))

(assert (= (and d!163269 (not c!144316)) b!1566315))

(assert (= (and b!1566315 c!144317) b!1566316))

(assert (= (and b!1566315 (not c!144317)) b!1566317))

(declare-fun m!1441373 () Bool)

(assert (=> b!1566316 m!1441373))

(assert (=> b!1566134 d!163269))

(declare-fun d!163271 () Bool)

(declare-fun lt!672633 () Bool)

(assert (=> d!163271 (= lt!672633 (select (content!813 (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!873080 () Bool)

(assert (=> d!163271 (= lt!672633 e!873080)))

(declare-fun res!1070686 () Bool)

(assert (=> d!163271 (=> (not res!1070686) (not e!873080))))

(assert (=> d!163271 (= res!1070686 ((_ is Cons!36789) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)))))

(assert (=> d!163271 (= (contains!10366 (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!672633)))

(declare-fun b!1566318 () Bool)

(declare-fun e!873081 () Bool)

(assert (=> b!1566318 (= e!873080 e!873081)))

(declare-fun res!1070687 () Bool)

(assert (=> b!1566318 (=> res!1070687 e!873081)))

(assert (=> b!1566318 (= res!1070687 (= (h!38236 (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1566319 () Bool)

(assert (=> b!1566319 (= e!873081 (contains!10366 (t!51701 (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!163271 res!1070686) b!1566318))

(assert (= (and b!1566318 (not res!1070687)) b!1566319))

(declare-fun m!1441375 () Bool)

(assert (=> d!163271 m!1441375))

(assert (=> d!163271 m!1441291))

(declare-fun m!1441377 () Bool)

(assert (=> d!163271 m!1441377))

(assert (=> b!1566319 m!1441291))

(declare-fun m!1441379 () Bool)

(assert (=> b!1566319 m!1441379))

(assert (=> b!1566295 d!163271))

(declare-fun d!163273 () Bool)

(declare-fun lt!672634 () Bool)

(assert (=> d!163273 (= lt!672634 (select (content!814 (toList!11442 lt!672565)) (tuple2!25407 lt!672552 lt!672551)))))

(declare-fun e!873082 () Bool)

(assert (=> d!163273 (= lt!672634 e!873082)))

(declare-fun res!1070688 () Bool)

(assert (=> d!163273 (=> (not res!1070688) (not e!873082))))

(assert (=> d!163273 (= res!1070688 ((_ is Cons!36788) (toList!11442 lt!672565)))))

(assert (=> d!163273 (= (contains!10365 (toList!11442 lt!672565) (tuple2!25407 lt!672552 lt!672551)) lt!672634)))

(declare-fun b!1566320 () Bool)

(declare-fun e!873083 () Bool)

(assert (=> b!1566320 (= e!873082 e!873083)))

(declare-fun res!1070689 () Bool)

(assert (=> b!1566320 (=> res!1070689 e!873083)))

(assert (=> b!1566320 (= res!1070689 (= (h!38235 (toList!11442 lt!672565)) (tuple2!25407 lt!672552 lt!672551)))))

(declare-fun b!1566321 () Bool)

(assert (=> b!1566321 (= e!873083 (contains!10365 (t!51700 (toList!11442 lt!672565)) (tuple2!25407 lt!672552 lt!672551)))))

(assert (= (and d!163273 res!1070688) b!1566320))

(assert (= (and b!1566320 (not res!1070689)) b!1566321))

(declare-fun m!1441381 () Bool)

(assert (=> d!163273 m!1441381))

(declare-fun m!1441383 () Bool)

(assert (=> d!163273 m!1441383))

(declare-fun m!1441385 () Bool)

(assert (=> b!1566321 m!1441385))

(assert (=> b!1566140 d!163273))

(assert (=> b!1566136 d!163267))

(assert (=> b!1566136 d!163269))

(declare-fun d!163275 () Bool)

(assert (=> d!163275 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(declare-fun lt!672635 () Unit!51972)

(assert (=> d!163275 (= lt!672635 (choose!2082 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(declare-fun e!873084 () Bool)

(assert (=> d!163275 e!873084))

(declare-fun res!1070690 () Bool)

(assert (=> d!163275 (=> (not res!1070690) (not e!873084))))

(assert (=> d!163275 (= res!1070690 (isStrictlySorted!983 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (=> d!163275 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553) lt!672635)))

(declare-fun b!1566322 () Bool)

(assert (=> b!1566322 (= e!873084 (containsKey!849 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553))))

(assert (= (and d!163275 res!1070690) b!1566322))

(assert (=> d!163275 m!1441177))

(assert (=> d!163275 m!1441177))

(assert (=> d!163275 m!1441179))

(declare-fun m!1441387 () Bool)

(assert (=> d!163275 m!1441387))

(declare-fun m!1441389 () Bool)

(assert (=> d!163275 m!1441389))

(assert (=> b!1566322 m!1441173))

(assert (=> b!1566141 d!163275))

(assert (=> b!1566141 d!163247))

(assert (=> b!1566141 d!163249))

(declare-fun d!163277 () Bool)

(assert (=> d!163277 (= (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000)) (not ((_ is Some!869) (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!163185 d!163277))

(declare-fun b!1566326 () Bool)

(declare-fun e!873086 () Option!870)

(assert (=> b!1566326 (= e!873086 None!868)))

(declare-fun b!1566323 () Bool)

(declare-fun e!873085 () Option!870)

(assert (=> b!1566323 (= e!873085 (Some!869 (_2!12713 (h!38235 (t!51700 (toList!11442 lt!672476))))))))

(declare-fun b!1566325 () Bool)

(assert (=> b!1566325 (= e!873086 (getValueByKey!795 (t!51700 (t!51700 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566324 () Bool)

(assert (=> b!1566324 (= e!873085 e!873086)))

(declare-fun c!144319 () Bool)

(assert (=> b!1566324 (= c!144319 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (not (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163279 () Bool)

(declare-fun c!144318 () Bool)

(assert (=> d!163279 (= c!144318 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163279 (= (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) #b0000000000000000000000000000000000000000000000000000000000000000) e!873085)))

(assert (= (and d!163279 c!144318) b!1566323))

(assert (= (and d!163279 (not c!144318)) b!1566324))

(assert (= (and b!1566324 c!144319) b!1566325))

(assert (= (and b!1566324 (not c!144319)) b!1566326))

(declare-fun m!1441391 () Bool)

(assert (=> b!1566325 m!1441391))

(assert (=> b!1566290 d!163279))

(assert (=> d!163197 d!163195))

(declare-fun d!163281 () Bool)

(assert (=> d!163281 (= (getValueByKey!795 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (=> d!163281 true))

(declare-fun _$22!592 () Unit!51972)

(assert (=> d!163281 (= (choose!2083 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) _$22!592)))

(declare-fun bs!45066 () Bool)

(assert (= bs!45066 d!163281))

(assert (=> bs!45066 m!1441079))

(assert (=> d!163197 d!163281))

(declare-fun d!163283 () Bool)

(declare-fun res!1070695 () Bool)

(declare-fun e!873091 () Bool)

(assert (=> d!163283 (=> res!1070695 e!873091)))

(assert (=> d!163283 (= res!1070695 (or ((_ is Nil!36789) lt!672526) ((_ is Nil!36789) (t!51700 lt!672526))))))

(assert (=> d!163283 (= (isStrictlySorted!983 lt!672526) e!873091)))

(declare-fun b!1566331 () Bool)

(declare-fun e!873092 () Bool)

(assert (=> b!1566331 (= e!873091 e!873092)))

(declare-fun res!1070696 () Bool)

(assert (=> b!1566331 (=> (not res!1070696) (not e!873092))))

(assert (=> b!1566331 (= res!1070696 (bvslt (_1!12713 (h!38235 lt!672526)) (_1!12713 (h!38235 (t!51700 lt!672526)))))))

(declare-fun b!1566332 () Bool)

(assert (=> b!1566332 (= e!873092 (isStrictlySorted!983 (t!51700 lt!672526)))))

(assert (= (and d!163283 (not res!1070695)) b!1566331))

(assert (= (and b!1566331 res!1070696) b!1566332))

(declare-fun m!1441393 () Bool)

(assert (=> b!1566332 m!1441393))

(assert (=> d!163197 d!163283))

(declare-fun d!163285 () Bool)

(declare-fun lt!672636 () Bool)

(assert (=> d!163285 (= lt!672636 (select (content!814 lt!672583) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun e!873093 () Bool)

(assert (=> d!163285 (= lt!672636 e!873093)))

(declare-fun res!1070697 () Bool)

(assert (=> d!163285 (=> (not res!1070697) (not e!873093))))

(assert (=> d!163285 (= res!1070697 ((_ is Cons!36788) lt!672583))))

(assert (=> d!163285 (= (contains!10365 lt!672583 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) lt!672636)))

(declare-fun b!1566333 () Bool)

(declare-fun e!873094 () Bool)

(assert (=> b!1566333 (= e!873093 e!873094)))

(declare-fun res!1070698 () Bool)

(assert (=> b!1566333 (=> res!1070698 e!873094)))

(assert (=> b!1566333 (= res!1070698 (= (h!38235 lt!672583) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566334 () Bool)

(assert (=> b!1566334 (= e!873094 (contains!10365 (t!51700 lt!672583) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (= (and d!163285 res!1070697) b!1566333))

(assert (= (and b!1566333 (not res!1070698)) b!1566334))

(declare-fun m!1441395 () Bool)

(assert (=> d!163285 m!1441395))

(declare-fun m!1441397 () Bool)

(assert (=> d!163285 m!1441397))

(declare-fun m!1441399 () Bool)

(assert (=> b!1566334 m!1441399))

(assert (=> b!1566213 d!163285))

(assert (=> d!163225 d!163223))

(assert (=> d!163225 d!163153))

(declare-fun d!163287 () Bool)

(assert (=> d!163287 (= (apply!1148 lt!672623 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))) (get!26391 (getValueByKey!795 (toList!11442 lt!672623) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)))))))

(declare-fun bs!45067 () Bool)

(assert (= bs!45067 d!163287))

(assert (=> bs!45067 m!1441307))

(declare-fun m!1441401 () Bool)

(assert (=> bs!45067 m!1441401))

(assert (=> bs!45067 m!1441401))

(declare-fun m!1441403 () Bool)

(assert (=> bs!45067 m!1441403))

(assert (=> b!1566278 d!163287))

(declare-fun d!163289 () Bool)

(declare-fun c!144320 () Bool)

(assert (=> d!163289 (= c!144320 ((_ is ValueCellFull!18450) (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(declare-fun e!873095 () V!60155)

(assert (=> d!163289 (= (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) e!873095)))

(declare-fun b!1566335 () Bool)

(assert (=> b!1566335 (= e!873095 (get!26392 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566336 () Bool)

(assert (=> b!1566336 (= e!873095 (get!26393 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163289 c!144320) b!1566335))

(assert (= (and d!163289 (not c!144320)) b!1566336))

(assert (=> b!1566335 m!1441323))

(assert (=> b!1566335 m!1440971))

(declare-fun m!1441405 () Bool)

(assert (=> b!1566335 m!1441405))

(assert (=> b!1566336 m!1441323))

(assert (=> b!1566336 m!1440971))

(declare-fun m!1441407 () Bool)

(assert (=> b!1566336 m!1441407))

(assert (=> b!1566278 d!163289))

(declare-fun d!163291 () Bool)

(assert (=> d!163291 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672637 () Unit!51972)

(assert (=> d!163291 (= lt!672637 (choose!2082 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873096 () Bool)

(assert (=> d!163291 e!873096))

(declare-fun res!1070699 () Bool)

(assert (=> d!163291 (=> (not res!1070699) (not e!873096))))

(assert (=> d!163291 (= res!1070699 (isStrictlySorted!983 (toList!11442 lt!672473)))))

(assert (=> d!163291 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672637)))

(declare-fun b!1566337 () Bool)

(assert (=> b!1566337 (= e!873096 (containsKey!849 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163291 res!1070699) b!1566337))

(assert (=> d!163291 m!1441285))

(assert (=> d!163291 m!1441285))

(assert (=> d!163291 m!1441287))

(declare-fun m!1441409 () Bool)

(assert (=> d!163291 m!1441409))

(assert (=> d!163291 m!1441217))

(assert (=> b!1566337 m!1441281))

(assert (=> b!1566262 d!163291))

(declare-fun d!163293 () Bool)

(assert (=> d!163293 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45068 () Bool)

(assert (= bs!45068 d!163293))

(assert (=> bs!45068 m!1441285))

(declare-fun m!1441411 () Bool)

(assert (=> bs!45068 m!1441411))

(assert (=> b!1566262 d!163293))

(declare-fun b!1566341 () Bool)

(declare-fun e!873098 () Option!870)

(assert (=> b!1566341 (= e!873098 None!868)))

(declare-fun b!1566338 () Bool)

(declare-fun e!873097 () Option!870)

(assert (=> b!1566338 (= e!873097 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672473)))))))

(declare-fun b!1566340 () Bool)

(assert (=> b!1566340 (= e!873098 (getValueByKey!795 (t!51700 (toList!11442 lt!672473)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566339 () Bool)

(assert (=> b!1566339 (= e!873097 e!873098)))

(declare-fun c!144322 () Bool)

(assert (=> b!1566339 (= c!144322 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672473))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163295 () Bool)

(declare-fun c!144321 () Bool)

(assert (=> d!163295 (= c!144321 (and ((_ is Cons!36788) (toList!11442 lt!672473)) (= (_1!12713 (h!38235 (toList!11442 lt!672473))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163295 (= (getValueByKey!795 (toList!11442 lt!672473) #b0000000000000000000000000000000000000000000000000000000000000000) e!873097)))

(assert (= (and d!163295 c!144321) b!1566338))

(assert (= (and d!163295 (not c!144321)) b!1566339))

(assert (= (and b!1566339 c!144322) b!1566340))

(assert (= (and b!1566339 (not c!144322)) b!1566341))

(declare-fun m!1441413 () Bool)

(assert (=> b!1566340 m!1441413))

(assert (=> b!1566262 d!163295))

(declare-fun d!163297 () Bool)

(declare-fun res!1070700 () Bool)

(declare-fun e!873099 () Bool)

(assert (=> d!163297 (=> res!1070700 e!873099)))

(assert (=> d!163297 (= res!1070700 (and ((_ is Cons!36788) (toList!11442 lt!672528)) (= (_1!12713 (h!38235 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163297 (= (containsKey!849 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!873099)))

(declare-fun b!1566342 () Bool)

(declare-fun e!873100 () Bool)

(assert (=> b!1566342 (= e!873099 e!873100)))

(declare-fun res!1070701 () Bool)

(assert (=> b!1566342 (=> (not res!1070701) (not e!873100))))

(assert (=> b!1566342 (= res!1070701 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672528))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) ((_ is Cons!36788) (toList!11442 lt!672528)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672528))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566343 () Bool)

(assert (=> b!1566343 (= e!873100 (containsKey!849 (t!51700 (toList!11442 lt!672528)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (= (and d!163297 (not res!1070700)) b!1566342))

(assert (= (and b!1566342 res!1070701) b!1566343))

(declare-fun m!1441415 () Bool)

(assert (=> b!1566343 m!1441415))

(assert (=> d!163193 d!163297))

(declare-fun d!163299 () Bool)

(declare-fun res!1070702 () Bool)

(declare-fun e!873101 () Bool)

(assert (=> d!163299 (=> res!1070702 e!873101)))

(assert (=> d!163299 (= res!1070702 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163299 (= (containsKey!849 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000) e!873101)))

(declare-fun b!1566344 () Bool)

(declare-fun e!873102 () Bool)

(assert (=> b!1566344 (= e!873101 e!873102)))

(declare-fun res!1070703 () Bool)

(assert (=> b!1566344 (=> (not res!1070703) (not e!873102))))

(assert (=> b!1566344 (= res!1070703 (and (or (not ((_ is Cons!36788) (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) (bvsle (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) (bvslt (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566345 () Bool)

(assert (=> b!1566345 (= e!873102 (containsKey!849 (t!51700 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163299 (not res!1070702)) b!1566344))

(assert (= (and b!1566344 res!1070703) b!1566345))

(declare-fun m!1441417 () Bool)

(assert (=> b!1566345 m!1441417))

(assert (=> d!163223 d!163299))

(declare-fun d!163301 () Bool)

(assert (=> d!163301 (arrayContainsKey!0 _keys!637 lt!672618 #b00000000000000000000000000000000)))

(declare-fun lt!672638 () Unit!51972)

(assert (=> d!163301 (= lt!672638 (choose!13 _keys!637 lt!672618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!163301 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!163301 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!672638)))

(declare-fun bs!45069 () Bool)

(assert (= bs!45069 d!163301))

(assert (=> bs!45069 m!1441297))

(declare-fun m!1441419 () Bool)

(assert (=> bs!45069 m!1441419))

(assert (=> b!1566265 d!163301))

(declare-fun d!163303 () Bool)

(declare-fun res!1070704 () Bool)

(declare-fun e!873103 () Bool)

(assert (=> d!163303 (=> res!1070704 e!873103)))

(assert (=> d!163303 (= res!1070704 (= (select (arr!50473 _keys!637) #b00000000000000000000000000000000) lt!672618))))

(assert (=> d!163303 (= (arrayContainsKey!0 _keys!637 lt!672618 #b00000000000000000000000000000000) e!873103)))

(declare-fun b!1566346 () Bool)

(declare-fun e!873104 () Bool)

(assert (=> b!1566346 (= e!873103 e!873104)))

(declare-fun res!1070705 () Bool)

(assert (=> b!1566346 (=> (not res!1070705) (not e!873104))))

(assert (=> b!1566346 (= res!1070705 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566347 () Bool)

(assert (=> b!1566347 (= e!873104 (arrayContainsKey!0 _keys!637 lt!672618 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!163303 (not res!1070704)) b!1566346))

(assert (= (and b!1566346 res!1070705) b!1566347))

(assert (=> d!163303 m!1441047))

(declare-fun m!1441421 () Bool)

(assert (=> b!1566347 m!1441421))

(assert (=> b!1566265 d!163303))

(declare-fun e!873106 () SeekEntryResult!13524)

(declare-fun b!1566349 () Bool)

(declare-fun lt!672641 () SeekEntryResult!13524)

(assert (=> b!1566349 (= e!873106 (seekKeyOrZeroReturnVacant!0 (x!140742 lt!672641) (index!56495 lt!672641) (index!56495 lt!672641) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!637 mask!947))))

(declare-fun b!1566350 () Bool)

(assert (=> b!1566350 (= e!873106 (MissingZero!13524 (index!56495 lt!672641)))))

(declare-fun b!1566351 () Bool)

(declare-fun e!873105 () SeekEntryResult!13524)

(assert (=> b!1566351 (= e!873105 (Found!13524 (index!56495 lt!672641)))))

(declare-fun b!1566352 () Bool)

(declare-fun e!873107 () SeekEntryResult!13524)

(assert (=> b!1566352 (= e!873107 Undefined!13524)))

(declare-fun b!1566353 () Bool)

(declare-fun c!144324 () Bool)

(declare-fun lt!672639 () (_ BitVec 64))

(assert (=> b!1566353 (= c!144324 (= lt!672639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566353 (= e!873105 e!873106)))

(declare-fun d!163305 () Bool)

(declare-fun lt!672640 () SeekEntryResult!13524)

(assert (=> d!163305 (and (or ((_ is Undefined!13524) lt!672640) (not ((_ is Found!13524) lt!672640)) (and (bvsge (index!56494 lt!672640) #b00000000000000000000000000000000) (bvslt (index!56494 lt!672640) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672640) ((_ is Found!13524) lt!672640) (not ((_ is MissingZero!13524) lt!672640)) (and (bvsge (index!56493 lt!672640) #b00000000000000000000000000000000) (bvslt (index!56493 lt!672640) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672640) ((_ is Found!13524) lt!672640) ((_ is MissingZero!13524) lt!672640) (not ((_ is MissingVacant!13524) lt!672640)) (and (bvsge (index!56496 lt!672640) #b00000000000000000000000000000000) (bvslt (index!56496 lt!672640) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672640) (ite ((_ is Found!13524) lt!672640) (= (select (arr!50473 _keys!637) (index!56494 lt!672640)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!13524) lt!672640) (= (select (arr!50473 _keys!637) (index!56493 lt!672640)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13524) lt!672640) (= (select (arr!50473 _keys!637) (index!56496 lt!672640)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163305 (= lt!672640 e!873107)))

(declare-fun c!144325 () Bool)

(assert (=> d!163305 (= c!144325 (and ((_ is Intermediate!13524) lt!672641) (undefined!14336 lt!672641)))))

(assert (=> d!163305 (= lt!672641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!947) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!637 mask!947))))

(assert (=> d!163305 (validMask!0 mask!947)))

(assert (=> d!163305 (= (seekEntryOrOpen!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!637 mask!947) lt!672640)))

(declare-fun b!1566348 () Bool)

(assert (=> b!1566348 (= e!873107 e!873105)))

(assert (=> b!1566348 (= lt!672639 (select (arr!50473 _keys!637) (index!56495 lt!672641)))))

(declare-fun c!144323 () Bool)

(assert (=> b!1566348 (= c!144323 (= lt!672639 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!163305 c!144325) b!1566352))

(assert (= (and d!163305 (not c!144325)) b!1566348))

(assert (= (and b!1566348 c!144323) b!1566351))

(assert (= (and b!1566348 (not c!144323)) b!1566353))

(assert (= (and b!1566353 c!144324) b!1566350))

(assert (= (and b!1566353 (not c!144324)) b!1566349))

(assert (=> b!1566349 m!1441291))

(declare-fun m!1441423 () Bool)

(assert (=> b!1566349 m!1441423))

(declare-fun m!1441425 () Bool)

(assert (=> d!163305 m!1441425))

(declare-fun m!1441427 () Bool)

(assert (=> d!163305 m!1441427))

(declare-fun m!1441429 () Bool)

(assert (=> d!163305 m!1441429))

(assert (=> d!163305 m!1441291))

(declare-fun m!1441431 () Bool)

(assert (=> d!163305 m!1441431))

(assert (=> d!163305 m!1440995))

(assert (=> d!163305 m!1441291))

(assert (=> d!163305 m!1441429))

(declare-fun m!1441433 () Bool)

(assert (=> d!163305 m!1441433))

(declare-fun m!1441435 () Bool)

(assert (=> b!1566348 m!1441435))

(assert (=> b!1566265 d!163305))

(declare-fun d!163307 () Bool)

(assert (=> d!163307 (not (contains!10363 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626)) lt!672628))))

(declare-fun lt!672642 () Unit!51972)

(assert (=> d!163307 (= lt!672642 (choose!2081 lt!672622 lt!672627 lt!672626 lt!672628))))

(declare-fun e!873108 () Bool)

(assert (=> d!163307 e!873108))

(declare-fun res!1070706 () Bool)

(assert (=> d!163307 (=> (not res!1070706) (not e!873108))))

(assert (=> d!163307 (= res!1070706 (not (contains!10363 lt!672622 lt!672628)))))

(assert (=> d!163307 (= (addStillNotContains!585 lt!672622 lt!672627 lt!672626 lt!672628) lt!672642)))

(declare-fun b!1566354 () Bool)

(assert (=> b!1566354 (= e!873108 (not (= lt!672627 lt!672628)))))

(assert (= (and d!163307 res!1070706) b!1566354))

(assert (=> d!163307 m!1441317))

(assert (=> d!163307 m!1441317))

(assert (=> d!163307 m!1441319))

(declare-fun m!1441437 () Bool)

(assert (=> d!163307 m!1441437))

(declare-fun m!1441439 () Bool)

(assert (=> d!163307 m!1441439))

(assert (=> b!1566280 d!163307))

(declare-fun d!163309 () Bool)

(declare-fun e!873109 () Bool)

(assert (=> d!163309 e!873109))

(declare-fun res!1070707 () Bool)

(assert (=> d!163309 (=> (not res!1070707) (not e!873109))))

(declare-fun lt!672646 () ListLongMap!22853)

(assert (=> d!163309 (= res!1070707 (contains!10363 lt!672646 (_1!12713 (tuple2!25407 lt!672627 lt!672626))))))

(declare-fun lt!672644 () List!36792)

(assert (=> d!163309 (= lt!672646 (ListLongMap!22854 lt!672644))))

(declare-fun lt!672643 () Unit!51972)

(declare-fun lt!672645 () Unit!51972)

(assert (=> d!163309 (= lt!672643 lt!672645)))

(assert (=> d!163309 (= (getValueByKey!795 lt!672644 (_1!12713 (tuple2!25407 lt!672627 lt!672626))) (Some!869 (_2!12713 (tuple2!25407 lt!672627 lt!672626))))))

(assert (=> d!163309 (= lt!672645 (lemmaContainsTupThenGetReturnValue!386 lt!672644 (_1!12713 (tuple2!25407 lt!672627 lt!672626)) (_2!12713 (tuple2!25407 lt!672627 lt!672626))))))

(assert (=> d!163309 (= lt!672644 (insertStrictlySorted!576 (toList!11442 lt!672622) (_1!12713 (tuple2!25407 lt!672627 lt!672626)) (_2!12713 (tuple2!25407 lt!672627 lt!672626))))))

(assert (=> d!163309 (= (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626)) lt!672646)))

(declare-fun b!1566355 () Bool)

(declare-fun res!1070708 () Bool)

(assert (=> b!1566355 (=> (not res!1070708) (not e!873109))))

(assert (=> b!1566355 (= res!1070708 (= (getValueByKey!795 (toList!11442 lt!672646) (_1!12713 (tuple2!25407 lt!672627 lt!672626))) (Some!869 (_2!12713 (tuple2!25407 lt!672627 lt!672626)))))))

(declare-fun b!1566356 () Bool)

(assert (=> b!1566356 (= e!873109 (contains!10365 (toList!11442 lt!672646) (tuple2!25407 lt!672627 lt!672626)))))

(assert (= (and d!163309 res!1070707) b!1566355))

(assert (= (and b!1566355 res!1070708) b!1566356))

(declare-fun m!1441441 () Bool)

(assert (=> d!163309 m!1441441))

(declare-fun m!1441443 () Bool)

(assert (=> d!163309 m!1441443))

(declare-fun m!1441445 () Bool)

(assert (=> d!163309 m!1441445))

(declare-fun m!1441447 () Bool)

(assert (=> d!163309 m!1441447))

(declare-fun m!1441449 () Bool)

(assert (=> b!1566355 m!1441449))

(declare-fun m!1441451 () Bool)

(assert (=> b!1566356 m!1441451))

(assert (=> b!1566280 d!163309))

(declare-fun d!163311 () Bool)

(declare-fun e!873110 () Bool)

(assert (=> d!163311 e!873110))

(declare-fun res!1070709 () Bool)

(assert (=> d!163311 (=> (not res!1070709) (not e!873110))))

(declare-fun lt!672650 () ListLongMap!22853)

(assert (=> d!163311 (= res!1070709 (contains!10363 lt!672650 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!672648 () List!36792)

(assert (=> d!163311 (= lt!672650 (ListLongMap!22854 lt!672648))))

(declare-fun lt!672647 () Unit!51972)

(declare-fun lt!672649 () Unit!51972)

(assert (=> d!163311 (= lt!672647 lt!672649)))

(assert (=> d!163311 (= (getValueByKey!795 lt!672648 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163311 (= lt!672649 (lemmaContainsTupThenGetReturnValue!386 lt!672648 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163311 (= lt!672648 (insertStrictlySorted!576 (toList!11442 call!71899) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163311 (= (+!5049 call!71899 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!672650)))

(declare-fun b!1566357 () Bool)

(declare-fun res!1070710 () Bool)

(assert (=> b!1566357 (=> (not res!1070710) (not e!873110))))

(assert (=> b!1566357 (= res!1070710 (= (getValueByKey!795 (toList!11442 lt!672650) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1566358 () Bool)

(assert (=> b!1566358 (= e!873110 (contains!10365 (toList!11442 lt!672650) (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!163311 res!1070709) b!1566357))

(assert (= (and b!1566357 res!1070710) b!1566358))

(declare-fun m!1441453 () Bool)

(assert (=> d!163311 m!1441453))

(declare-fun m!1441455 () Bool)

(assert (=> d!163311 m!1441455))

(declare-fun m!1441457 () Bool)

(assert (=> d!163311 m!1441457))

(declare-fun m!1441459 () Bool)

(assert (=> d!163311 m!1441459))

(declare-fun m!1441461 () Bool)

(assert (=> b!1566357 m!1441461))

(declare-fun m!1441463 () Bool)

(assert (=> b!1566358 m!1441463))

(assert (=> b!1566280 d!163311))

(declare-fun d!163313 () Bool)

(declare-fun e!873112 () Bool)

(assert (=> d!163313 e!873112))

(declare-fun res!1070711 () Bool)

(assert (=> d!163313 (=> res!1070711 e!873112)))

(declare-fun lt!672652 () Bool)

(assert (=> d!163313 (= res!1070711 (not lt!672652))))

(declare-fun lt!672653 () Bool)

(assert (=> d!163313 (= lt!672652 lt!672653)))

(declare-fun lt!672651 () Unit!51972)

(declare-fun e!873111 () Unit!51972)

(assert (=> d!163313 (= lt!672651 e!873111)))

(declare-fun c!144326 () Bool)

(assert (=> d!163313 (= c!144326 lt!672653)))

(assert (=> d!163313 (= lt!672653 (containsKey!849 (toList!11442 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626))) lt!672628))))

(assert (=> d!163313 (= (contains!10363 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626)) lt!672628) lt!672652)))

(declare-fun b!1566359 () Bool)

(declare-fun lt!672654 () Unit!51972)

(assert (=> b!1566359 (= e!873111 lt!672654)))

(assert (=> b!1566359 (= lt!672654 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626))) lt!672628))))

(assert (=> b!1566359 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626))) lt!672628))))

(declare-fun b!1566360 () Bool)

(declare-fun Unit!51986 () Unit!51972)

(assert (=> b!1566360 (= e!873111 Unit!51986)))

(declare-fun b!1566361 () Bool)

(assert (=> b!1566361 (= e!873112 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672622 (tuple2!25407 lt!672627 lt!672626))) lt!672628)))))

(assert (= (and d!163313 c!144326) b!1566359))

(assert (= (and d!163313 (not c!144326)) b!1566360))

(assert (= (and d!163313 (not res!1070711)) b!1566361))

(declare-fun m!1441465 () Bool)

(assert (=> d!163313 m!1441465))

(declare-fun m!1441467 () Bool)

(assert (=> b!1566359 m!1441467))

(declare-fun m!1441469 () Bool)

(assert (=> b!1566359 m!1441469))

(assert (=> b!1566359 m!1441469))

(declare-fun m!1441471 () Bool)

(assert (=> b!1566359 m!1441471))

(assert (=> b!1566361 m!1441469))

(assert (=> b!1566361 m!1441469))

(assert (=> b!1566361 m!1441471))

(assert (=> b!1566280 d!163313))

(assert (=> b!1566280 d!163289))

(assert (=> b!1566264 d!163293))

(assert (=> b!1566264 d!163295))

(declare-fun b!1566365 () Bool)

(declare-fun e!873114 () Option!870)

(assert (=> b!1566365 (= e!873114 None!868)))

(declare-fun b!1566362 () Bool)

(declare-fun e!873113 () Option!870)

(assert (=> b!1566362 (= e!873113 (Some!869 (_2!12713 (h!38235 (t!51700 (toList!11442 lt!672476))))))))

(declare-fun b!1566364 () Bool)

(assert (=> b!1566364 (= e!873114 (getValueByKey!795 (t!51700 (t!51700 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566363 () Bool)

(assert (=> b!1566363 (= e!873113 e!873114)))

(declare-fun c!144328 () Bool)

(assert (=> b!1566363 (= c!144328 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (not (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163315 () Bool)

(declare-fun c!144327 () Bool)

(assert (=> d!163315 (= c!144327 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163315 (= (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) #b1000000000000000000000000000000000000000000000000000000000000000) e!873113)))

(assert (= (and d!163315 c!144327) b!1566362))

(assert (= (and d!163315 (not c!144327)) b!1566363))

(assert (= (and b!1566363 c!144328) b!1566364))

(assert (= (and b!1566363 (not c!144328)) b!1566365))

(declare-fun m!1441473 () Bool)

(assert (=> b!1566364 m!1441473))

(assert (=> b!1566168 d!163315))

(assert (=> b!1566292 d!163263))

(declare-fun d!163317 () Bool)

(assert (=> d!163317 (= (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782))) (not ((_ is Some!869) (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))))

(assert (=> d!163207 d!163317))

(declare-fun b!1566367 () Bool)

(declare-fun e!873117 () Bool)

(declare-fun call!71901 () Bool)

(assert (=> b!1566367 (= e!873117 call!71901)))

(declare-fun bm!71898 () Bool)

(assert (=> bm!71898 (= call!71901 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!637 mask!947))))

(declare-fun b!1566368 () Bool)

(declare-fun e!873116 () Bool)

(assert (=> b!1566368 (= e!873116 call!71901)))

(declare-fun b!1566369 () Bool)

(declare-fun e!873115 () Bool)

(assert (=> b!1566369 (= e!873115 e!873117)))

(declare-fun c!144329 () Bool)

(assert (=> b!1566369 (= c!144329 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1566366 () Bool)

(assert (=> b!1566366 (= e!873117 e!873116)))

(declare-fun lt!672657 () (_ BitVec 64))

(assert (=> b!1566366 (= lt!672657 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!672656 () Unit!51972)

(assert (=> b!1566366 (= lt!672656 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!672657 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!1566366 (arrayContainsKey!0 _keys!637 lt!672657 #b00000000000000000000000000000000)))

(declare-fun lt!672655 () Unit!51972)

(assert (=> b!1566366 (= lt!672655 lt!672656)))

(declare-fun res!1070713 () Bool)

(assert (=> b!1566366 (= res!1070713 (= (seekEntryOrOpen!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) _keys!637 mask!947) (Found!13524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1566366 (=> (not res!1070713) (not e!873116))))

(declare-fun d!163319 () Bool)

(declare-fun res!1070712 () Bool)

(assert (=> d!163319 (=> res!1070712 e!873115)))

(assert (=> d!163319 (= res!1070712 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163319 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!637 mask!947) e!873115)))

(assert (= (and d!163319 (not res!1070712)) b!1566369))

(assert (= (and b!1566369 c!144329) b!1566366))

(assert (= (and b!1566369 (not c!144329)) b!1566367))

(assert (= (and b!1566366 res!1070713) b!1566368))

(assert (= (or b!1566368 b!1566367) bm!71898))

(declare-fun m!1441475 () Bool)

(assert (=> bm!71898 m!1441475))

(declare-fun m!1441477 () Bool)

(assert (=> b!1566369 m!1441477))

(assert (=> b!1566369 m!1441477))

(declare-fun m!1441479 () Bool)

(assert (=> b!1566369 m!1441479))

(assert (=> b!1566366 m!1441477))

(declare-fun m!1441481 () Bool)

(assert (=> b!1566366 m!1441481))

(declare-fun m!1441483 () Bool)

(assert (=> b!1566366 m!1441483))

(assert (=> b!1566366 m!1441477))

(declare-fun m!1441485 () Bool)

(assert (=> b!1566366 m!1441485))

(assert (=> bm!71895 d!163319))

(assert (=> b!1566165 d!163201))

(declare-fun d!163321 () Bool)

(declare-fun e!873119 () Bool)

(assert (=> d!163321 e!873119))

(declare-fun res!1070714 () Bool)

(assert (=> d!163321 (=> res!1070714 e!873119)))

(declare-fun lt!672659 () Bool)

(assert (=> d!163321 (= res!1070714 (not lt!672659))))

(declare-fun lt!672660 () Bool)

(assert (=> d!163321 (= lt!672659 lt!672660)))

(declare-fun lt!672658 () Unit!51972)

(declare-fun e!873118 () Unit!51972)

(assert (=> d!163321 (= lt!672658 e!873118)))

(declare-fun c!144330 () Bool)

(assert (=> d!163321 (= c!144330 lt!672660)))

(assert (=> d!163321 (= lt!672660 (containsKey!849 (toList!11442 lt!672623) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163321 (= (contains!10363 lt!672623 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672659)))

(declare-fun b!1566370 () Bool)

(declare-fun lt!672661 () Unit!51972)

(assert (=> b!1566370 (= e!873118 lt!672661)))

(assert (=> b!1566370 (= lt!672661 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672623) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566370 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566371 () Bool)

(declare-fun Unit!51987 () Unit!51972)

(assert (=> b!1566371 (= e!873118 Unit!51987)))

(declare-fun b!1566372 () Bool)

(assert (=> b!1566372 (= e!873119 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163321 c!144330) b!1566370))

(assert (= (and d!163321 (not c!144330)) b!1566371))

(assert (= (and d!163321 (not res!1070714)) b!1566372))

(declare-fun m!1441487 () Bool)

(assert (=> d!163321 m!1441487))

(declare-fun m!1441489 () Bool)

(assert (=> b!1566370 m!1441489))

(declare-fun m!1441491 () Bool)

(assert (=> b!1566370 m!1441491))

(assert (=> b!1566370 m!1441491))

(declare-fun m!1441493 () Bool)

(assert (=> b!1566370 m!1441493))

(assert (=> b!1566372 m!1441491))

(assert (=> b!1566372 m!1441491))

(assert (=> b!1566372 m!1441493))

(assert (=> d!163235 d!163321))

(assert (=> d!163235 d!163139))

(assert (=> d!163205 d!163207))

(assert (=> d!163205 d!163179))

(declare-fun d!163323 () Bool)

(assert (=> d!163323 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)))))

(assert (=> d!163323 true))

(declare-fun _$12!489 () Unit!51972)

(assert (=> d!163323 (= (choose!2082 (toList!11442 lt!672476) (select (arr!50473 _keys!637) from!782)) _$12!489)))

(declare-fun bs!45070 () Bool)

(assert (= bs!45070 d!163323))

(assert (=> bs!45070 m!1440983))

(assert (=> bs!45070 m!1441041))

(assert (=> bs!45070 m!1441041))

(assert (=> bs!45070 m!1441043))

(assert (=> d!163205 d!163323))

(declare-fun d!163325 () Bool)

(declare-fun res!1070715 () Bool)

(declare-fun e!873120 () Bool)

(assert (=> d!163325 (=> res!1070715 e!873120)))

(assert (=> d!163325 (= res!1070715 (or ((_ is Nil!36789) (toList!11442 lt!672476)) ((_ is Nil!36789) (t!51700 (toList!11442 lt!672476)))))))

(assert (=> d!163325 (= (isStrictlySorted!983 (toList!11442 lt!672476)) e!873120)))

(declare-fun b!1566373 () Bool)

(declare-fun e!873121 () Bool)

(assert (=> b!1566373 (= e!873120 e!873121)))

(declare-fun res!1070716 () Bool)

(assert (=> b!1566373 (=> (not res!1070716) (not e!873121))))

(assert (=> b!1566373 (= res!1070716 (bvslt (_1!12713 (h!38235 (toList!11442 lt!672476))) (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476))))))))

(declare-fun b!1566374 () Bool)

(assert (=> b!1566374 (= e!873121 (isStrictlySorted!983 (t!51700 (toList!11442 lt!672476))))))

(assert (= (and d!163325 (not res!1070715)) b!1566373))

(assert (= (and b!1566373 res!1070716) b!1566374))

(declare-fun m!1441495 () Bool)

(assert (=> b!1566374 m!1441495))

(assert (=> d!163205 d!163325))

(declare-fun b!1566393 () Bool)

(declare-fun lt!672667 () SeekEntryResult!13524)

(assert (=> b!1566393 (and (bvsge (index!56495 lt!672667) #b00000000000000000000000000000000) (bvslt (index!56495 lt!672667) (size!51024 _keys!637)))))

(declare-fun res!1070724 () Bool)

(assert (=> b!1566393 (= res!1070724 (= (select (arr!50473 _keys!637) (index!56495 lt!672667)) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun e!873134 () Bool)

(assert (=> b!1566393 (=> res!1070724 e!873134)))

(declare-fun e!873136 () Bool)

(assert (=> b!1566393 (= e!873136 e!873134)))

(declare-fun b!1566394 () Bool)

(declare-fun e!873133 () SeekEntryResult!13524)

(assert (=> b!1566394 (= e!873133 (Intermediate!13524 false (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) #b00000000000000000000000000000000))))

(declare-fun b!1566395 () Bool)

(declare-fun e!873132 () Bool)

(assert (=> b!1566395 (= e!873132 e!873136)))

(declare-fun res!1070723 () Bool)

(assert (=> b!1566395 (= res!1070723 (and ((_ is Intermediate!13524) lt!672667) (not (undefined!14336 lt!672667)) (bvslt (x!140742 lt!672667) #b01111111111111111111111111111110) (bvsge (x!140742 lt!672667) #b00000000000000000000000000000000) (bvsge (x!140742 lt!672667) #b00000000000000000000000000000000)))))

(assert (=> b!1566395 (=> (not res!1070723) (not e!873136))))

(declare-fun d!163327 () Bool)

(assert (=> d!163327 e!873132))

(declare-fun c!144338 () Bool)

(assert (=> d!163327 (= c!144338 (and ((_ is Intermediate!13524) lt!672667) (undefined!14336 lt!672667)))))

(declare-fun e!873135 () SeekEntryResult!13524)

(assert (=> d!163327 (= lt!672667 e!873135)))

(declare-fun c!144339 () Bool)

(assert (=> d!163327 (= c!144339 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!672666 () (_ BitVec 64))

(assert (=> d!163327 (= lt!672666 (select (arr!50473 _keys!637) (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947)))))

(assert (=> d!163327 (validMask!0 mask!947)))

(assert (=> d!163327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) lt!672667)))

(declare-fun b!1566396 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1566396 (= e!873133 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) #b00000000000000000000000000000000 mask!947) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(declare-fun b!1566397 () Bool)

(assert (=> b!1566397 (= e!873135 e!873133)))

(declare-fun c!144337 () Bool)

(assert (=> b!1566397 (= c!144337 (or (= lt!672666 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)) (= (bvadd lt!672666 lt!672666) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566398 () Bool)

(assert (=> b!1566398 (= e!873135 (Intermediate!13524 true (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) #b00000000000000000000000000000000))))

(declare-fun b!1566399 () Bool)

(assert (=> b!1566399 (and (bvsge (index!56495 lt!672667) #b00000000000000000000000000000000) (bvslt (index!56495 lt!672667) (size!51024 _keys!637)))))

(declare-fun res!1070725 () Bool)

(assert (=> b!1566399 (= res!1070725 (= (select (arr!50473 _keys!637) (index!56495 lt!672667)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566399 (=> res!1070725 e!873134)))

(declare-fun b!1566400 () Bool)

(assert (=> b!1566400 (and (bvsge (index!56495 lt!672667) #b00000000000000000000000000000000) (bvslt (index!56495 lt!672667) (size!51024 _keys!637)))))

(assert (=> b!1566400 (= e!873134 (= (select (arr!50473 _keys!637) (index!56495 lt!672667)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566401 () Bool)

(assert (=> b!1566401 (= e!873132 (bvsge (x!140742 lt!672667) #b01111111111111111111111111111110))))

(assert (= (and d!163327 c!144339) b!1566398))

(assert (= (and d!163327 (not c!144339)) b!1566397))

(assert (= (and b!1566397 c!144337) b!1566394))

(assert (= (and b!1566397 (not c!144337)) b!1566396))

(assert (= (and d!163327 c!144338) b!1566401))

(assert (= (and d!163327 (not c!144338)) b!1566395))

(assert (= (and b!1566395 res!1070723) b!1566393))

(assert (= (and b!1566393 (not res!1070724)) b!1566399))

(assert (= (and b!1566399 (not res!1070725)) b!1566400))

(declare-fun m!1441497 () Bool)

(assert (=> b!1566400 m!1441497))

(assert (=> b!1566393 m!1441497))

(assert (=> d!163327 m!1441265))

(declare-fun m!1441499 () Bool)

(assert (=> d!163327 m!1441499))

(assert (=> d!163327 m!1440995))

(assert (=> b!1566396 m!1441265))

(declare-fun m!1441501 () Bool)

(assert (=> b!1566396 m!1441501))

(assert (=> b!1566396 m!1441501))

(assert (=> b!1566396 m!1441047))

(declare-fun m!1441503 () Bool)

(assert (=> b!1566396 m!1441503))

(assert (=> b!1566399 m!1441497))

(assert (=> d!163221 d!163327))

(declare-fun d!163329 () Bool)

(declare-fun lt!672673 () (_ BitVec 32))

(declare-fun lt!672672 () (_ BitVec 32))

(assert (=> d!163329 (= lt!672673 (bvmul (bvxor lt!672672 (bvlshr lt!672672 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!163329 (= lt!672672 ((_ extract 31 0) (bvand (bvxor (select (arr!50473 _keys!637) #b00000000000000000000000000000000) (bvlshr (select (arr!50473 _keys!637) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!163329 (and (bvsge mask!947 #b00000000000000000000000000000000) (let ((res!1070726 (let ((h!38238 ((_ extract 31 0) (bvand (bvxor (select (arr!50473 _keys!637) #b00000000000000000000000000000000) (bvlshr (select (arr!50473 _keys!637) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!140752 (bvmul (bvxor h!38238 (bvlshr h!38238 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!140752 (bvlshr x!140752 #b00000000000000000000000000001101)) mask!947))))) (and (bvslt res!1070726 (bvadd mask!947 #b00000000000000000000000000000001)) (bvsge res!1070726 #b00000000000000000000000000000000))))))

(assert (=> d!163329 (= (toIndex!0 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) mask!947) (bvand (bvxor lt!672673 (bvlshr lt!672673 #b00000000000000000000000000001101)) mask!947))))

(assert (=> d!163221 d!163329))

(assert (=> d!163221 d!163139))

(declare-fun d!163331 () Bool)

(assert (=> d!163331 (= (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000)) (not ((_ is Some!869) (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!163241 d!163331))

(assert (=> d!163217 d!163219))

(declare-fun d!163333 () Bool)

(assert (=> d!163333 (arrayContainsKey!0 _keys!637 lt!672509 #b00000000000000000000000000000000)))

(assert (=> d!163333 true))

(declare-fun _$60!457 () Unit!51972)

(assert (=> d!163333 (= (choose!13 _keys!637 lt!672509 #b00000000000000000000000000000000) _$60!457)))

(declare-fun bs!45071 () Bool)

(assert (= bs!45071 d!163333))

(assert (=> bs!45071 m!1441053))

(assert (=> d!163217 d!163333))

(declare-fun d!163335 () Bool)

(declare-fun e!873138 () Bool)

(assert (=> d!163335 e!873138))

(declare-fun res!1070727 () Bool)

(assert (=> d!163335 (=> res!1070727 e!873138)))

(declare-fun lt!672675 () Bool)

(assert (=> d!163335 (= res!1070727 (not lt!672675))))

(declare-fun lt!672676 () Bool)

(assert (=> d!163335 (= lt!672675 lt!672676)))

(declare-fun lt!672674 () Unit!51972)

(declare-fun e!873137 () Unit!51972)

(assert (=> d!163335 (= lt!672674 e!873137)))

(declare-fun c!144340 () Bool)

(assert (=> d!163335 (= c!144340 lt!672676)))

(assert (=> d!163335 (= lt!672676 (containsKey!849 (toList!11442 lt!672623) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(assert (=> d!163335 (= (contains!10363 lt!672623 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))) lt!672675)))

(declare-fun b!1566402 () Bool)

(declare-fun lt!672677 () Unit!51972)

(assert (=> b!1566402 (= e!873137 lt!672677)))

(assert (=> b!1566402 (= lt!672677 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672623) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(assert (=> b!1566402 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))))))

(declare-fun b!1566403 () Bool)

(declare-fun Unit!51988 () Unit!51972)

(assert (=> b!1566403 (= e!873137 Unit!51988)))

(declare-fun b!1566404 () Bool)

(assert (=> b!1566404 (= e!873138 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)))))))

(assert (= (and d!163335 c!144340) b!1566402))

(assert (= (and d!163335 (not c!144340)) b!1566403))

(assert (= (and d!163335 (not res!1070727)) b!1566404))

(assert (=> d!163335 m!1441307))

(declare-fun m!1441505 () Bool)

(assert (=> d!163335 m!1441505))

(assert (=> b!1566402 m!1441307))

(declare-fun m!1441507 () Bool)

(assert (=> b!1566402 m!1441507))

(assert (=> b!1566402 m!1441307))

(assert (=> b!1566402 m!1441401))

(assert (=> b!1566402 m!1441401))

(declare-fun m!1441509 () Bool)

(assert (=> b!1566402 m!1441509))

(assert (=> b!1566404 m!1441307))

(assert (=> b!1566404 m!1441401))

(assert (=> b!1566404 m!1441401))

(assert (=> b!1566404 m!1441509))

(assert (=> b!1566276 d!163335))

(assert (=> b!1566221 d!163181))

(declare-fun d!163337 () Bool)

(declare-fun res!1070728 () Bool)

(declare-fun e!873139 () Bool)

(assert (=> d!163337 (=> res!1070728 e!873139)))

(assert (=> d!163337 (= res!1070728 (and ((_ is Cons!36788) lt!672526) (= (_1!12713 (h!38235 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163337 (= (containsKey!849 lt!672526 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!873139)))

(declare-fun b!1566405 () Bool)

(declare-fun e!873140 () Bool)

(assert (=> b!1566405 (= e!873139 e!873140)))

(declare-fun res!1070729 () Bool)

(assert (=> b!1566405 (=> (not res!1070729) (not e!873140))))

(assert (=> b!1566405 (= res!1070729 (and (or (not ((_ is Cons!36788) lt!672526)) (bvsle (_1!12713 (h!38235 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) ((_ is Cons!36788) lt!672526) (bvslt (_1!12713 (h!38235 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566406 () Bool)

(assert (=> b!1566406 (= e!873140 (containsKey!849 (t!51700 lt!672526) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (= (and d!163337 (not res!1070728)) b!1566405))

(assert (= (and b!1566405 res!1070729) b!1566406))

(declare-fun m!1441511 () Bool)

(assert (=> b!1566406 m!1441511))

(assert (=> b!1566185 d!163337))

(assert (=> d!163239 d!163241))

(assert (=> d!163239 d!163243))

(declare-fun d!163339 () Bool)

(assert (=> d!163339 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163339 true))

(declare-fun _$12!490 () Unit!51972)

(assert (=> d!163339 (= (choose!2082 (toList!11442 lt!672476) #b0000000000000000000000000000000000000000000000000000000000000000) _$12!490)))

(declare-fun bs!45072 () Bool)

(assert (= bs!45072 d!163339))

(assert (=> bs!45072 m!1441093))

(assert (=> bs!45072 m!1441093))

(assert (=> bs!45072 m!1441095))

(assert (=> d!163239 d!163339))

(assert (=> d!163239 d!163325))

(declare-fun d!163341 () Bool)

(assert (=> d!163341 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun bs!45073 () Bool)

(assert (= bs!45073 d!163341))

(assert (=> bs!45073 m!1441085))

(declare-fun m!1441513 () Bool)

(assert (=> bs!45073 m!1441513))

(assert (=> b!1566176 d!163341))

(assert (=> b!1566176 d!163189))

(declare-fun d!163343 () Bool)

(assert (not d!163343))

(assert (=> b!1566233 d!163343))

(declare-fun d!163345 () Bool)

(assert (=> d!163345 (= (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45074 () Bool)

(assert (= bs!45074 d!163345))

(assert (=> bs!45074 m!1441277))

(declare-fun m!1441515 () Bool)

(assert (=> bs!45074 m!1441515))

(assert (=> b!1566260 d!163345))

(declare-fun b!1566410 () Bool)

(declare-fun e!873142 () Option!870)

(assert (=> b!1566410 (= e!873142 None!868)))

(declare-fun e!873141 () Option!870)

(declare-fun b!1566407 () Bool)

(assert (=> b!1566407 (= e!873141 (Some!869 (_2!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))))

(declare-fun b!1566409 () Bool)

(assert (=> b!1566409 (= e!873142 (getValueByKey!795 (t!51700 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566408 () Bool)

(assert (=> b!1566408 (= e!873141 e!873142)))

(declare-fun c!144342 () Bool)

(assert (=> b!1566408 (= c!144342 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) (not (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163347 () Bool)

(declare-fun c!144341 () Bool)

(assert (=> d!163347 (= c!144341 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163347 (= (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000) e!873141)))

(assert (= (and d!163347 c!144341) b!1566407))

(assert (= (and d!163347 (not c!144341)) b!1566408))

(assert (= (and b!1566408 c!144342) b!1566409))

(assert (= (and b!1566408 (not c!144342)) b!1566410))

(declare-fun m!1441517 () Bool)

(assert (=> b!1566409 m!1441517))

(assert (=> b!1566260 d!163347))

(declare-fun d!163349 () Bool)

(assert (=> d!163349 (= (get!26392 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!22317 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (=> b!1566132 d!163349))

(declare-fun d!163351 () Bool)

(declare-fun res!1070730 () Bool)

(declare-fun e!873143 () Bool)

(assert (=> d!163351 (=> res!1070730 e!873143)))

(assert (=> d!163351 (= res!1070730 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163351 (= (containsKey!849 (t!51700 (toList!11442 lt!672476)) #b0000000000000000000000000000000000000000000000000000000000000000) e!873143)))

(declare-fun b!1566411 () Bool)

(declare-fun e!873144 () Bool)

(assert (=> b!1566411 (= e!873143 e!873144)))

(declare-fun res!1070731 () Bool)

(assert (=> b!1566411 (=> (not res!1070731) (not e!873144))))

(assert (=> b!1566411 (= res!1070731 (and (or (not ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476)))) (bvsle (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (bvslt (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566412 () Bool)

(assert (=> b!1566412 (= e!873144 (containsKey!849 (t!51700 (t!51700 (toList!11442 lt!672476))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163351 (not res!1070730)) b!1566411))

(assert (= (and b!1566411 res!1070731) b!1566412))

(declare-fun m!1441519 () Bool)

(assert (=> b!1566412 m!1441519))

(assert (=> b!1566220 d!163351))

(declare-fun d!163353 () Bool)

(declare-fun res!1070732 () Bool)

(declare-fun e!873145 () Bool)

(assert (=> d!163353 (=> res!1070732 e!873145)))

(assert (=> d!163353 (= res!1070732 (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!672509))))

(assert (=> d!163353 (= (arrayContainsKey!0 _keys!637 lt!672509 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!873145)))

(declare-fun b!1566413 () Bool)

(declare-fun e!873146 () Bool)

(assert (=> b!1566413 (= e!873145 e!873146)))

(declare-fun res!1070733 () Bool)

(assert (=> b!1566413 (=> (not res!1070733) (not e!873146))))

(assert (=> b!1566413 (= res!1070733 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566414 () Bool)

(assert (=> b!1566414 (= e!873146 (arrayContainsKey!0 _keys!637 lt!672509 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!163353 (not res!1070732)) b!1566413))

(assert (= (and b!1566413 res!1070733) b!1566414))

(assert (=> d!163353 m!1441291))

(declare-fun m!1441521 () Bool)

(assert (=> b!1566414 m!1441521))

(assert (=> b!1566239 d!163353))

(declare-fun b!1566415 () Bool)

(declare-fun e!873147 () List!36792)

(assert (=> b!1566415 (= e!873147 (insertStrictlySorted!576 (t!51700 (t!51700 (toList!11442 lt!672473))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun bm!71899 () Bool)

(declare-fun call!71902 () List!36792)

(declare-fun call!71904 () List!36792)

(assert (=> bm!71899 (= call!71902 call!71904)))

(declare-fun c!144346 () Bool)

(declare-fun bm!71900 () Bool)

(declare-fun call!71903 () List!36792)

(assert (=> bm!71900 (= call!71903 ($colon$colon!989 e!873147 (ite c!144346 (h!38235 (t!51700 (toList!11442 lt!672473))) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun c!144344 () Bool)

(assert (=> bm!71900 (= c!144344 c!144346)))

(declare-fun b!1566416 () Bool)

(declare-fun c!144345 () Bool)

(assert (=> b!1566416 (= c!144345 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672473))) (bvsgt (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672473)))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun e!873151 () List!36792)

(declare-fun e!873150 () List!36792)

(assert (=> b!1566416 (= e!873151 e!873150)))

(declare-fun b!1566417 () Bool)

(assert (=> b!1566417 (= e!873150 call!71902)))

(declare-fun b!1566418 () Bool)

(declare-fun e!873149 () List!36792)

(assert (=> b!1566418 (= e!873149 call!71903)))

(declare-fun b!1566420 () Bool)

(declare-fun c!144343 () Bool)

(assert (=> b!1566420 (= e!873147 (ite c!144343 (t!51700 (t!51700 (toList!11442 lt!672473))) (ite c!144345 (Cons!36788 (h!38235 (t!51700 (toList!11442 lt!672473))) (t!51700 (t!51700 (toList!11442 lt!672473)))) Nil!36789)))))

(declare-fun b!1566421 () Bool)

(declare-fun lt!672678 () List!36792)

(declare-fun e!873148 () Bool)

(assert (=> b!1566421 (= e!873148 (contains!10365 lt!672678 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566422 () Bool)

(assert (=> b!1566422 (= e!873150 call!71902)))

(declare-fun b!1566423 () Bool)

(assert (=> b!1566423 (= e!873149 e!873151)))

(assert (=> b!1566423 (= c!144343 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672473))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672473)))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566424 () Bool)

(declare-fun res!1070734 () Bool)

(assert (=> b!1566424 (=> (not res!1070734) (not e!873148))))

(assert (=> b!1566424 (= res!1070734 (containsKey!849 lt!672678 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun bm!71901 () Bool)

(assert (=> bm!71901 (= call!71904 call!71903)))

(declare-fun d!163355 () Bool)

(assert (=> d!163355 e!873148))

(declare-fun res!1070735 () Bool)

(assert (=> d!163355 (=> (not res!1070735) (not e!873148))))

(assert (=> d!163355 (= res!1070735 (isStrictlySorted!983 lt!672678))))

(assert (=> d!163355 (= lt!672678 e!873149)))

(assert (=> d!163355 (= c!144346 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672473))) (bvslt (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672473)))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163355 (isStrictlySorted!983 (t!51700 (toList!11442 lt!672473)))))

(assert (=> d!163355 (= (insertStrictlySorted!576 (t!51700 (toList!11442 lt!672473)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) lt!672678)))

(declare-fun b!1566419 () Bool)

(assert (=> b!1566419 (= e!873151 call!71904)))

(assert (= (and d!163355 c!144346) b!1566418))

(assert (= (and d!163355 (not c!144346)) b!1566423))

(assert (= (and b!1566423 c!144343) b!1566419))

(assert (= (and b!1566423 (not c!144343)) b!1566416))

(assert (= (and b!1566416 c!144345) b!1566417))

(assert (= (and b!1566416 (not c!144345)) b!1566422))

(assert (= (or b!1566417 b!1566422) bm!71899))

(assert (= (or b!1566419 bm!71899) bm!71901))

(assert (= (or b!1566418 bm!71901) bm!71900))

(assert (= (and bm!71900 c!144344) b!1566415))

(assert (= (and bm!71900 (not c!144344)) b!1566420))

(assert (= (and d!163355 res!1070735) b!1566424))

(assert (= (and b!1566424 res!1070734) b!1566421))

(declare-fun m!1441523 () Bool)

(assert (=> d!163355 m!1441523))

(declare-fun m!1441525 () Bool)

(assert (=> d!163355 m!1441525))

(declare-fun m!1441527 () Bool)

(assert (=> bm!71900 m!1441527))

(declare-fun m!1441529 () Bool)

(assert (=> b!1566424 m!1441529))

(declare-fun m!1441531 () Bool)

(assert (=> b!1566415 m!1441531))

(declare-fun m!1441533 () Bool)

(assert (=> b!1566421 m!1441533))

(assert (=> b!1566207 d!163355))

(assert (=> b!1566287 d!163203))

(declare-fun d!163357 () Bool)

(assert (=> d!163357 (= ($colon$colon!989 e!873003 (ite c!144290 (h!38235 (toList!11442 lt!672473)) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))) (Cons!36788 (ite c!144290 (h!38235 (toList!11442 lt!672473)) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) e!873003))))

(assert (=> bm!71893 d!163357))

(declare-fun b!1566428 () Bool)

(declare-fun e!873153 () Option!870)

(assert (=> b!1566428 (= e!873153 None!868)))

(declare-fun b!1566425 () Bool)

(declare-fun e!873152 () Option!870)

(assert (=> b!1566425 (= e!873152 (Some!869 (_2!12713 (h!38235 (t!51700 lt!672526)))))))

(declare-fun b!1566427 () Bool)

(assert (=> b!1566427 (= e!873153 (getValueByKey!795 (t!51700 (t!51700 lt!672526)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun b!1566426 () Bool)

(assert (=> b!1566426 (= e!873152 e!873153)))

(declare-fun c!144348 () Bool)

(assert (=> b!1566426 (= c!144348 (and ((_ is Cons!36788) (t!51700 lt!672526)) (not (= (_1!12713 (h!38235 (t!51700 lt!672526))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))))

(declare-fun d!163359 () Bool)

(declare-fun c!144347 () Bool)

(assert (=> d!163359 (= c!144347 (and ((_ is Cons!36788) (t!51700 lt!672526)) (= (_1!12713 (h!38235 (t!51700 lt!672526))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163359 (= (getValueByKey!795 (t!51700 lt!672526) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!873152)))

(assert (= (and d!163359 c!144347) b!1566425))

(assert (= (and d!163359 (not c!144347)) b!1566426))

(assert (= (and b!1566426 c!144348) b!1566427))

(assert (= (and b!1566426 (not c!144348)) b!1566428))

(declare-fun m!1441535 () Bool)

(assert (=> b!1566427 m!1441535))

(assert (=> b!1566179 d!163359))

(declare-fun b!1566429 () Bool)

(declare-fun e!873158 () Bool)

(assert (=> b!1566429 (= e!873158 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1566429 (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1566430 () Bool)

(declare-fun e!873156 () Bool)

(declare-fun e!873155 () Bool)

(assert (=> b!1566430 (= e!873156 e!873155)))

(assert (=> b!1566430 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun res!1070738 () Bool)

(declare-fun lt!672680 () ListLongMap!22853)

(assert (=> b!1566430 (= res!1070738 (contains!10363 lt!672680 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!1566430 (=> (not res!1070738) (not e!873155))))

(declare-fun b!1566431 () Bool)

(declare-fun e!873159 () Bool)

(assert (=> b!1566431 (= e!873159 (isEmpty!1148 lt!672680))))

(declare-fun b!1566432 () Bool)

(assert (=> b!1566432 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> b!1566432 (and (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51025 _values!487)))))

(assert (=> b!1566432 (= e!873155 (= (apply!1148 lt!672680 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1566433 () Bool)

(declare-fun res!1070737 () Bool)

(declare-fun e!873160 () Bool)

(assert (=> b!1566433 (=> (not res!1070737) (not e!873160))))

(assert (=> b!1566433 (= res!1070737 (not (contains!10363 lt!672680 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566434 () Bool)

(declare-fun lt!672682 () Unit!51972)

(declare-fun lt!672681 () Unit!51972)

(assert (=> b!1566434 (= lt!672682 lt!672681)))

(declare-fun lt!672685 () (_ BitVec 64))

(declare-fun lt!672683 () V!60155)

(declare-fun lt!672679 () ListLongMap!22853)

(declare-fun lt!672684 () (_ BitVec 64))

(assert (=> b!1566434 (not (contains!10363 (+!5049 lt!672679 (tuple2!25407 lt!672684 lt!672683)) lt!672685))))

(assert (=> b!1566434 (= lt!672681 (addStillNotContains!585 lt!672679 lt!672684 lt!672683 lt!672685))))

(assert (=> b!1566434 (= lt!672685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1566434 (= lt!672683 (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1566434 (= lt!672684 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun call!71905 () ListLongMap!22853)

(assert (=> b!1566434 (= lt!672679 call!71905)))

(declare-fun e!873157 () ListLongMap!22853)

(assert (=> b!1566434 (= e!873157 (+!5049 call!71905 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1566435 () Bool)

(assert (=> b!1566435 (= e!873160 e!873156)))

(declare-fun c!144349 () Bool)

(assert (=> b!1566435 (= c!144349 e!873158)))

(declare-fun res!1070739 () Bool)

(assert (=> b!1566435 (=> (not res!1070739) (not e!873158))))

(assert (=> b!1566435 (= res!1070739 (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566436 () Bool)

(assert (=> b!1566436 (= e!873156 e!873159)))

(declare-fun c!144351 () Bool)

(assert (=> b!1566436 (= c!144351 (bvslt (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(declare-fun b!1566437 () Bool)

(assert (=> b!1566437 (= e!873159 (= lt!672680 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!495)))))

(declare-fun b!1566438 () Bool)

(assert (=> b!1566438 (= e!873157 call!71905)))

(declare-fun b!1566439 () Bool)

(declare-fun e!873154 () ListLongMap!22853)

(assert (=> b!1566439 (= e!873154 e!873157)))

(declare-fun c!144350 () Bool)

(assert (=> b!1566439 (= c!144350 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1566440 () Bool)

(assert (=> b!1566440 (= e!873154 (ListLongMap!22854 Nil!36789))))

(declare-fun d!163361 () Bool)

(assert (=> d!163361 e!873160))

(declare-fun res!1070736 () Bool)

(assert (=> d!163361 (=> (not res!1070736) (not e!873160))))

(assert (=> d!163361 (= res!1070736 (not (contains!10363 lt!672680 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163361 (= lt!672680 e!873154)))

(declare-fun c!144352 () Bool)

(assert (=> d!163361 (= c!144352 (bvsge (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163361 (validMask!0 mask!947)))

(assert (=> d!163361 (= (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!495) lt!672680)))

(declare-fun bm!71902 () Bool)

(assert (=> bm!71902 (= call!71905 (getCurrentListMapNoExtraKeys!6782 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!495))))

(assert (= (and d!163361 c!144352) b!1566440))

(assert (= (and d!163361 (not c!144352)) b!1566439))

(assert (= (and b!1566439 c!144350) b!1566434))

(assert (= (and b!1566439 (not c!144350)) b!1566438))

(assert (= (or b!1566434 b!1566438) bm!71902))

(assert (= (and d!163361 res!1070736) b!1566433))

(assert (= (and b!1566433 res!1070737) b!1566435))

(assert (= (and b!1566435 res!1070739) b!1566429))

(assert (= (and b!1566435 c!144349) b!1566430))

(assert (= (and b!1566435 (not c!144349)) b!1566436))

(assert (= (and b!1566430 res!1070738) b!1566432))

(assert (= (and b!1566436 c!144351) b!1566437))

(assert (= (and b!1566436 (not c!144351)) b!1566431))

(declare-fun b_lambda!25033 () Bool)

(assert (=> (not b_lambda!25033) (not b!1566432)))

(assert (=> b!1566432 t!51699))

(declare-fun b_and!51841 () Bool)

(assert (= b_and!51839 (and (=> t!51699 result!26609) b_and!51841)))

(declare-fun b_lambda!25035 () Bool)

(assert (=> (not b_lambda!25035) (not b!1566434)))

(assert (=> b!1566434 t!51699))

(declare-fun b_and!51843 () Bool)

(assert (= b_and!51841 (and (=> t!51699 result!26609) b_and!51843)))

(declare-fun m!1441537 () Bool)

(assert (=> b!1566439 m!1441537))

(assert (=> b!1566439 m!1441537))

(declare-fun m!1441539 () Bool)

(assert (=> b!1566439 m!1441539))

(declare-fun m!1441541 () Bool)

(assert (=> d!163361 m!1441541))

(assert (=> d!163361 m!1440995))

(declare-fun m!1441543 () Bool)

(assert (=> b!1566431 m!1441543))

(assert (=> b!1566430 m!1441537))

(assert (=> b!1566430 m!1441537))

(declare-fun m!1441545 () Bool)

(assert (=> b!1566430 m!1441545))

(declare-fun m!1441547 () Bool)

(assert (=> b!1566434 m!1441547))

(declare-fun m!1441549 () Bool)

(assert (=> b!1566434 m!1441549))

(assert (=> b!1566434 m!1441537))

(declare-fun m!1441551 () Bool)

(assert (=> b!1566434 m!1441551))

(declare-fun m!1441553 () Bool)

(assert (=> b!1566434 m!1441553))

(assert (=> b!1566434 m!1441547))

(declare-fun m!1441555 () Bool)

(assert (=> b!1566434 m!1441555))

(assert (=> b!1566434 m!1440971))

(assert (=> b!1566434 m!1441553))

(assert (=> b!1566434 m!1440971))

(declare-fun m!1441557 () Bool)

(assert (=> b!1566434 m!1441557))

(assert (=> b!1566429 m!1441537))

(assert (=> b!1566429 m!1441537))

(assert (=> b!1566429 m!1441539))

(assert (=> b!1566432 m!1441537))

(assert (=> b!1566432 m!1441553))

(assert (=> b!1566432 m!1441537))

(declare-fun m!1441559 () Bool)

(assert (=> b!1566432 m!1441559))

(assert (=> b!1566432 m!1440971))

(assert (=> b!1566432 m!1441553))

(assert (=> b!1566432 m!1440971))

(assert (=> b!1566432 m!1441557))

(declare-fun m!1441561 () Bool)

(assert (=> bm!71902 m!1441561))

(assert (=> b!1566437 m!1441561))

(declare-fun m!1441563 () Bool)

(assert (=> b!1566433 m!1441563))

(assert (=> b!1566283 d!163361))

(declare-fun b!1566444 () Bool)

(declare-fun e!873162 () Option!870)

(assert (=> b!1566444 (= e!873162 None!868)))

(declare-fun b!1566441 () Bool)

(declare-fun e!873161 () Option!870)

(assert (=> b!1566441 (= e!873161 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672565)))))))

(declare-fun b!1566443 () Bool)

(assert (=> b!1566443 (= e!873162 (getValueByKey!795 (t!51700 (toList!11442 lt!672565)) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun b!1566442 () Bool)

(assert (=> b!1566442 (= e!873161 e!873162)))

(declare-fun c!144354 () Bool)

(assert (=> b!1566442 (= c!144354 (and ((_ is Cons!36788) (toList!11442 lt!672565)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672565))) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))))

(declare-fun c!144353 () Bool)

(declare-fun d!163363 () Bool)

(assert (=> d!163363 (= c!144353 (and ((_ is Cons!36788) (toList!11442 lt!672565)) (= (_1!12713 (h!38235 (toList!11442 lt!672565))) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (=> d!163363 (= (getValueByKey!795 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551))) e!873161)))

(assert (= (and d!163363 c!144353) b!1566441))

(assert (= (and d!163363 (not c!144353)) b!1566442))

(assert (= (and b!1566442 c!144354) b!1566443))

(assert (= (and b!1566442 (not c!144354)) b!1566444))

(declare-fun m!1441565 () Bool)

(assert (=> b!1566443 m!1441565))

(assert (=> b!1566139 d!163363))

(assert (=> b!1566294 d!163263))

(declare-fun d!163365 () Bool)

(assert (=> d!163365 (= (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001))) (and (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1566285 d!163365))

(declare-fun d!163367 () Bool)

(assert (=> d!163367 (= (content!813 Nil!36790) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!163215 d!163367))

(assert (=> d!163183 d!163185))

(assert (=> d!163183 d!163187))

(declare-fun d!163369 () Bool)

(assert (=> d!163369 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163369 true))

(declare-fun _$12!491 () Unit!51972)

(assert (=> d!163369 (= (choose!2082 (toList!11442 lt!672476) #b1000000000000000000000000000000000000000000000000000000000000000) _$12!491)))

(declare-fun bs!45075 () Bool)

(assert (= bs!45075 d!163369))

(assert (=> bs!45075 m!1441073))

(assert (=> bs!45075 m!1441073))

(assert (=> bs!45075 m!1441075))

(assert (=> d!163183 d!163369))

(assert (=> d!163183 d!163325))

(declare-fun d!163371 () Bool)

(declare-fun res!1070740 () Bool)

(declare-fun e!873163 () Bool)

(assert (=> d!163371 (=> res!1070740 e!873163)))

(assert (=> d!163371 (= res!1070740 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163371 (= (containsKey!849 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000) e!873163)))

(declare-fun b!1566445 () Bool)

(declare-fun e!873164 () Bool)

(assert (=> b!1566445 (= e!873163 e!873164)))

(declare-fun res!1070741 () Bool)

(assert (=> b!1566445 (=> (not res!1070741) (not e!873164))))

(assert (=> b!1566445 (= res!1070741 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672548))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672548))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 lt!672548)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672548))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566446 () Bool)

(assert (=> b!1566446 (= e!873164 (containsKey!849 (t!51700 (toList!11442 lt!672548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163371 (not res!1070740)) b!1566445))

(assert (= (and b!1566445 res!1070741) b!1566446))

(declare-fun m!1441567 () Bool)

(assert (=> b!1566446 m!1441567))

(assert (=> d!163209 d!163371))

(declare-fun d!163373 () Bool)

(assert (=> d!163373 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun lt!672686 () Unit!51972)

(assert (=> d!163373 (= lt!672686 (choose!2082 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(declare-fun e!873165 () Bool)

(assert (=> d!163373 e!873165))

(declare-fun res!1070742 () Bool)

(assert (=> d!163373 (=> (not res!1070742) (not e!873165))))

(assert (=> d!163373 (= res!1070742 (isStrictlySorted!983 (toList!11442 lt!672528)))))

(assert (=> d!163373 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) lt!672686)))

(declare-fun b!1566447 () Bool)

(assert (=> b!1566447 (= e!873165 (containsKey!849 (toList!11442 lt!672528) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (= (and d!163373 res!1070742) b!1566447))

(assert (=> d!163373 m!1441085))

(assert (=> d!163373 m!1441085))

(assert (=> d!163373 m!1441203))

(declare-fun m!1441569 () Bool)

(assert (=> d!163373 m!1441569))

(declare-fun m!1441571 () Bool)

(assert (=> d!163373 m!1441571))

(assert (=> b!1566447 m!1441199))

(assert (=> b!1566174 d!163373))

(assert (=> b!1566174 d!163341))

(assert (=> b!1566174 d!163189))

(declare-fun d!163375 () Bool)

(assert (=> d!163375 (isDefined!579 (getValueByKey!795 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672687 () Unit!51972)

(assert (=> d!163375 (= lt!672687 (choose!2082 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873166 () Bool)

(assert (=> d!163375 e!873166))

(declare-fun res!1070743 () Bool)

(assert (=> d!163375 (=> (not res!1070743) (not e!873166))))

(assert (=> d!163375 (= res!1070743 (isStrictlySorted!983 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163375 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672687)))

(declare-fun b!1566448 () Bool)

(assert (=> b!1566448 (= e!873166 (containsKey!849 (toList!11442 (+!5049 lt!672473 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163375 res!1070743) b!1566448))

(assert (=> d!163375 m!1441277))

(assert (=> d!163375 m!1441277))

(assert (=> d!163375 m!1441279))

(declare-fun m!1441573 () Bool)

(assert (=> d!163375 m!1441573))

(declare-fun m!1441575 () Bool)

(assert (=> d!163375 m!1441575))

(assert (=> b!1566448 m!1441273))

(assert (=> b!1566258 d!163375))

(assert (=> b!1566258 d!163345))

(assert (=> b!1566258 d!163347))

(assert (=> bm!71896 d!163361))

(declare-fun d!163377 () Bool)

(declare-fun res!1070744 () Bool)

(declare-fun e!873167 () Bool)

(assert (=> d!163377 (=> res!1070744 e!873167)))

(assert (=> d!163377 (= res!1070744 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(assert (=> d!163377 (= (containsKey!849 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) e!873167)))

(declare-fun b!1566449 () Bool)

(declare-fun e!873168 () Bool)

(assert (=> b!1566449 (= e!873167 e!873168)))

(declare-fun res!1070745 () Bool)

(assert (=> b!1566449 (=> (not res!1070745) (not e!873168))))

(assert (=> b!1566449 (= res!1070745 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672548))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672548))) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))) ((_ is Cons!36788) (toList!11442 lt!672548)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672548))) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(declare-fun b!1566450 () Bool)

(assert (=> b!1566450 (= e!873168 (containsKey!849 (t!51700 (toList!11442 lt!672548)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (= (and d!163377 (not res!1070744)) b!1566449))

(assert (= (and b!1566449 res!1070745) b!1566450))

(assert (=> b!1566450 m!1441097))

(declare-fun m!1441577 () Bool)

(assert (=> b!1566450 m!1441577))

(assert (=> d!163213 d!163377))

(declare-fun d!163379 () Bool)

(declare-fun res!1070746 () Bool)

(declare-fun e!873169 () Bool)

(assert (=> d!163379 (=> res!1070746 e!873169)))

(assert (=> d!163379 (= res!1070746 (and ((_ is Cons!36788) (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) (= (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) lt!672553)))))

(assert (=> d!163379 (= (containsKey!849 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))) lt!672553) e!873169)))

(declare-fun b!1566451 () Bool)

(declare-fun e!873170 () Bool)

(assert (=> b!1566451 (= e!873169 e!873170)))

(declare-fun res!1070747 () Bool)

(assert (=> b!1566451 (=> (not res!1070747) (not e!873170))))

(assert (=> b!1566451 (= res!1070747 (and (or (not ((_ is Cons!36788) (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) (bvsle (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) lt!672553)) ((_ is Cons!36788) (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) (bvslt (_1!12713 (h!38235 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551))))) lt!672553)))))

(declare-fun b!1566452 () Bool)

(assert (=> b!1566452 (= e!873170 (containsKey!849 (t!51700 (toList!11442 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)))) lt!672553))))

(assert (= (and d!163379 (not res!1070746)) b!1566451))

(assert (= (and b!1566451 res!1070747) b!1566452))

(declare-fun m!1441579 () Bool)

(assert (=> b!1566452 m!1441579))

(assert (=> d!163173 d!163379))

(declare-fun d!163381 () Bool)

(assert (=> d!163381 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))))

(declare-fun bs!45076 () Bool)

(assert (= bs!45076 d!163381))

(assert (=> bs!45076 m!1441133))

(declare-fun m!1441581 () Bool)

(assert (=> bs!45076 m!1441581))

(assert (=> b!1566227 d!163381))

(declare-fun b!1566456 () Bool)

(declare-fun e!873172 () Option!870)

(assert (=> b!1566456 (= e!873172 None!868)))

(declare-fun b!1566453 () Bool)

(declare-fun e!873171 () Option!870)

(assert (=> b!1566453 (= e!873171 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672548)))))))

(declare-fun b!1566455 () Bool)

(assert (=> b!1566455 (= e!873172 (getValueByKey!795 (t!51700 (toList!11442 lt!672548)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun b!1566454 () Bool)

(assert (=> b!1566454 (= e!873171 e!873172)))

(declare-fun c!144356 () Bool)

(assert (=> b!1566454 (= c!144356 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672548))) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))))

(declare-fun c!144355 () Bool)

(declare-fun d!163383 () Bool)

(assert (=> d!163383 (= c!144355 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(assert (=> d!163383 (= (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) e!873171)))

(assert (= (and d!163383 c!144355) b!1566453))

(assert (= (and d!163383 (not c!144355)) b!1566454))

(assert (= (and b!1566454 c!144356) b!1566455))

(assert (= (and b!1566454 (not c!144356)) b!1566456))

(assert (=> b!1566455 m!1441097))

(declare-fun m!1441583 () Bool)

(assert (=> b!1566455 m!1441583))

(assert (=> b!1566227 d!163383))

(declare-fun d!163385 () Bool)

(declare-fun res!1070748 () Bool)

(declare-fun e!873173 () Bool)

(assert (=> d!163385 (=> res!1070748 e!873173)))

(assert (=> d!163385 (= res!1070748 (or ((_ is Nil!36789) lt!672583) ((_ is Nil!36789) (t!51700 lt!672583))))))

(assert (=> d!163385 (= (isStrictlySorted!983 lt!672583) e!873173)))

(declare-fun b!1566457 () Bool)

(declare-fun e!873174 () Bool)

(assert (=> b!1566457 (= e!873173 e!873174)))

(declare-fun res!1070749 () Bool)

(assert (=> b!1566457 (=> (not res!1070749) (not e!873174))))

(assert (=> b!1566457 (= res!1070749 (bvslt (_1!12713 (h!38235 lt!672583)) (_1!12713 (h!38235 (t!51700 lt!672583)))))))

(declare-fun b!1566458 () Bool)

(assert (=> b!1566458 (= e!873174 (isStrictlySorted!983 (t!51700 lt!672583)))))

(assert (= (and d!163385 (not res!1070748)) b!1566457))

(assert (= (and b!1566457 res!1070749) b!1566458))

(declare-fun m!1441585 () Bool)

(assert (=> b!1566458 m!1441585))

(assert (=> d!163199 d!163385))

(declare-fun d!163387 () Bool)

(declare-fun res!1070750 () Bool)

(declare-fun e!873175 () Bool)

(assert (=> d!163387 (=> res!1070750 e!873175)))

(assert (=> d!163387 (= res!1070750 (or ((_ is Nil!36789) (toList!11442 lt!672473)) ((_ is Nil!36789) (t!51700 (toList!11442 lt!672473)))))))

(assert (=> d!163387 (= (isStrictlySorted!983 (toList!11442 lt!672473)) e!873175)))

(declare-fun b!1566459 () Bool)

(declare-fun e!873176 () Bool)

(assert (=> b!1566459 (= e!873175 e!873176)))

(declare-fun res!1070751 () Bool)

(assert (=> b!1566459 (=> (not res!1070751) (not e!873176))))

(assert (=> b!1566459 (= res!1070751 (bvslt (_1!12713 (h!38235 (toList!11442 lt!672473))) (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672473))))))))

(declare-fun b!1566460 () Bool)

(assert (=> b!1566460 (= e!873176 (isStrictlySorted!983 (t!51700 (toList!11442 lt!672473))))))

(assert (= (and d!163387 (not res!1070750)) b!1566459))

(assert (= (and b!1566459 res!1070751) b!1566460))

(assert (=> b!1566460 m!1441525))

(assert (=> d!163199 d!163387))

(declare-fun d!163389 () Bool)

(assert (=> d!163389 (= (get!26391 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))) (v!22319 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)))))))

(assert (=> d!163163 d!163389))

(assert (=> d!163163 d!163383))

(declare-fun d!163391 () Bool)

(declare-fun e!873178 () Bool)

(assert (=> d!163391 e!873178))

(declare-fun res!1070752 () Bool)

(assert (=> d!163391 (=> res!1070752 e!873178)))

(declare-fun lt!672689 () Bool)

(assert (=> d!163391 (= res!1070752 (not lt!672689))))

(declare-fun lt!672690 () Bool)

(assert (=> d!163391 (= lt!672689 lt!672690)))

(declare-fun lt!672688 () Unit!51972)

(declare-fun e!873177 () Unit!51972)

(assert (=> d!163391 (= lt!672688 e!873177)))

(declare-fun c!144357 () Bool)

(assert (=> d!163391 (= c!144357 lt!672690)))

(assert (=> d!163391 (= lt!672690 (containsKey!849 (toList!11442 lt!672623) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!163391 (= (contains!10363 lt!672623 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672689)))

(declare-fun b!1566461 () Bool)

(declare-fun lt!672691 () Unit!51972)

(assert (=> b!1566461 (= e!873177 lt!672691)))

(assert (=> b!1566461 (= lt!672691 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672623) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566461 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566462 () Bool)

(declare-fun Unit!51989 () Unit!51972)

(assert (=> b!1566462 (= e!873177 Unit!51989)))

(declare-fun b!1566463 () Bool)

(assert (=> b!1566463 (= e!873178 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672623) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!163391 c!144357) b!1566461))

(assert (= (and d!163391 (not c!144357)) b!1566462))

(assert (= (and d!163391 (not res!1070752)) b!1566463))

(declare-fun m!1441587 () Bool)

(assert (=> d!163391 m!1441587))

(declare-fun m!1441589 () Bool)

(assert (=> b!1566461 m!1441589))

(declare-fun m!1441591 () Bool)

(assert (=> b!1566461 m!1441591))

(assert (=> b!1566461 m!1441591))

(declare-fun m!1441593 () Bool)

(assert (=> b!1566461 m!1441593))

(assert (=> b!1566463 m!1441591))

(assert (=> b!1566463 m!1441591))

(assert (=> b!1566463 m!1441593))

(assert (=> b!1566279 d!163391))

(declare-fun b!1566476 () Bool)

(declare-fun e!873186 () SeekEntryResult!13524)

(assert (=> b!1566476 (= e!873186 (Found!13524 (index!56495 lt!672607)))))

(declare-fun b!1566477 () Bool)

(declare-fun e!873187 () SeekEntryResult!13524)

(assert (=> b!1566477 (= e!873187 e!873186)))

(declare-fun c!144365 () Bool)

(declare-fun lt!672696 () (_ BitVec 64))

(assert (=> b!1566477 (= c!144365 (= lt!672696 (select (arr!50473 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1566478 () Bool)

(declare-fun e!873185 () SeekEntryResult!13524)

(assert (=> b!1566478 (= e!873185 (MissingVacant!13524 (index!56495 lt!672607)))))

(declare-fun b!1566479 () Bool)

(assert (=> b!1566479 (= e!873187 Undefined!13524)))

(declare-fun b!1566480 () Bool)

(declare-fun c!144366 () Bool)

(assert (=> b!1566480 (= c!144366 (= lt!672696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1566480 (= e!873186 e!873185)))

(declare-fun d!163393 () Bool)

(declare-fun lt!672697 () SeekEntryResult!13524)

(assert (=> d!163393 (and (or ((_ is Undefined!13524) lt!672697) (not ((_ is Found!13524) lt!672697)) (and (bvsge (index!56494 lt!672697) #b00000000000000000000000000000000) (bvslt (index!56494 lt!672697) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672697) ((_ is Found!13524) lt!672697) (not ((_ is MissingVacant!13524) lt!672697)) (not (= (index!56496 lt!672697) (index!56495 lt!672607))) (and (bvsge (index!56496 lt!672697) #b00000000000000000000000000000000) (bvslt (index!56496 lt!672697) (size!51024 _keys!637)))) (or ((_ is Undefined!13524) lt!672697) (ite ((_ is Found!13524) lt!672697) (= (select (arr!50473 _keys!637) (index!56494 lt!672697)) (select (arr!50473 _keys!637) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!13524) lt!672697) (= (index!56496 lt!672697) (index!56495 lt!672607)) (= (select (arr!50473 _keys!637) (index!56496 lt!672697)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!163393 (= lt!672697 e!873187)))

(declare-fun c!144364 () Bool)

(assert (=> d!163393 (= c!144364 (bvsge (x!140742 lt!672607) #b01111111111111111111111111111110))))

(assert (=> d!163393 (= lt!672696 (select (arr!50473 _keys!637) (index!56495 lt!672607)))))

(assert (=> d!163393 (validMask!0 mask!947)))

(assert (=> d!163393 (= (seekKeyOrZeroReturnVacant!0 (x!140742 lt!672607) (index!56495 lt!672607) (index!56495 lt!672607) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) lt!672697)))

(declare-fun b!1566481 () Bool)

(assert (=> b!1566481 (= e!873185 (seekKeyOrZeroReturnVacant!0 (bvadd (x!140742 lt!672607) #b00000000000000000000000000000001) (nextIndex!0 (index!56495 lt!672607) (x!140742 lt!672607) mask!947) (index!56495 lt!672607) (select (arr!50473 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947))))

(assert (= (and d!163393 c!144364) b!1566479))

(assert (= (and d!163393 (not c!144364)) b!1566477))

(assert (= (and b!1566477 c!144365) b!1566476))

(assert (= (and b!1566477 (not c!144365)) b!1566480))

(assert (= (and b!1566480 c!144366) b!1566478))

(assert (= (and b!1566480 (not c!144366)) b!1566481))

(declare-fun m!1441595 () Bool)

(assert (=> d!163393 m!1441595))

(declare-fun m!1441597 () Bool)

(assert (=> d!163393 m!1441597))

(assert (=> d!163393 m!1441271))

(assert (=> d!163393 m!1440995))

(declare-fun m!1441599 () Bool)

(assert (=> b!1566481 m!1441599))

(assert (=> b!1566481 m!1441599))

(assert (=> b!1566481 m!1441047))

(declare-fun m!1441601 () Bool)

(assert (=> b!1566481 m!1441601))

(assert (=> b!1566253 d!163393))

(declare-fun d!163395 () Bool)

(declare-fun lt!672698 () Bool)

(assert (=> d!163395 (= lt!672698 (select (content!814 (t!51700 (toList!11442 lt!672528))) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(declare-fun e!873188 () Bool)

(assert (=> d!163395 (= lt!672698 e!873188)))

(declare-fun res!1070753 () Bool)

(assert (=> d!163395 (=> (not res!1070753) (not e!873188))))

(assert (=> d!163395 (= res!1070753 ((_ is Cons!36788) (t!51700 (toList!11442 lt!672528))))))

(assert (=> d!163395 (= (contains!10365 (t!51700 (toList!11442 lt!672528)) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)) lt!672698)))

(declare-fun b!1566482 () Bool)

(declare-fun e!873189 () Bool)

(assert (=> b!1566482 (= e!873188 e!873189)))

(declare-fun res!1070754 () Bool)

(assert (=> b!1566482 (=> res!1070754 e!873189)))

(assert (=> b!1566482 (= res!1070754 (= (h!38235 (t!51700 (toList!11442 lt!672528))) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(declare-fun b!1566483 () Bool)

(assert (=> b!1566483 (= e!873189 (contains!10365 (t!51700 (t!51700 (toList!11442 lt!672528))) (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))

(assert (= (and d!163395 res!1070753) b!1566482))

(assert (= (and b!1566482 (not res!1070754)) b!1566483))

(declare-fun m!1441603 () Bool)

(assert (=> d!163395 m!1441603))

(declare-fun m!1441605 () Bool)

(assert (=> d!163395 m!1441605))

(declare-fun m!1441607 () Bool)

(assert (=> b!1566483 m!1441607))

(assert (=> b!1566274 d!163395))

(declare-fun d!163397 () Bool)

(declare-fun res!1070755 () Bool)

(declare-fun e!873190 () Bool)

(assert (=> d!163397 (=> res!1070755 e!873190)))

(assert (=> d!163397 (= res!1070755 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163397 (= (containsKey!849 (t!51700 (toList!11442 lt!672476)) #b1000000000000000000000000000000000000000000000000000000000000000) e!873190)))

(declare-fun b!1566484 () Bool)

(declare-fun e!873191 () Bool)

(assert (=> b!1566484 (= e!873190 e!873191)))

(declare-fun res!1070756 () Bool)

(assert (=> b!1566484 (=> (not res!1070756) (not e!873191))))

(assert (=> b!1566484 (= res!1070756 (and (or (not ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476)))) (bvsle (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (bvslt (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566485 () Bool)

(assert (=> b!1566485 (= e!873191 (containsKey!849 (t!51700 (t!51700 (toList!11442 lt!672476))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163397 (not res!1070755)) b!1566484))

(assert (= (and b!1566484 res!1070756) b!1566485))

(declare-fun m!1441609 () Bool)

(assert (=> b!1566485 m!1441609))

(assert (=> b!1566218 d!163397))

(declare-fun d!163399 () Bool)

(declare-fun res!1070757 () Bool)

(declare-fun e!873192 () Bool)

(assert (=> d!163399 (=> res!1070757 e!873192)))

(assert (=> d!163399 (= res!1070757 (and ((_ is Cons!36788) lt!672583) (= (_1!12713 (h!38235 lt!672583)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(assert (=> d!163399 (= (containsKey!849 lt!672583 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))) e!873192)))

(declare-fun b!1566486 () Bool)

(declare-fun e!873193 () Bool)

(assert (=> b!1566486 (= e!873192 e!873193)))

(declare-fun res!1070758 () Bool)

(assert (=> b!1566486 (=> (not res!1070758) (not e!873193))))

(assert (=> b!1566486 (= res!1070758 (and (or (not ((_ is Cons!36788) lt!672583)) (bvsle (_1!12713 (h!38235 lt!672583)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))) ((_ is Cons!36788) lt!672583) (bvslt (_1!12713 (h!38235 lt!672583)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474)))))))

(declare-fun b!1566487 () Bool)

(assert (=> b!1566487 (= e!873193 (containsKey!849 (t!51700 lt!672583) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) from!782) lt!672474))))))

(assert (= (and d!163399 (not res!1070757)) b!1566486))

(assert (= (and b!1566486 res!1070758) b!1566487))

(declare-fun m!1441611 () Bool)

(assert (=> b!1566487 m!1441611))

(assert (=> b!1566216 d!163399))

(declare-fun d!163401 () Bool)

(declare-fun res!1070759 () Bool)

(declare-fun e!873197 () Bool)

(assert (=> d!163401 (=> res!1070759 e!873197)))

(assert (=> d!163401 (= res!1070759 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!51024 _keys!637)))))

(assert (=> d!163401 (= (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!144311 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790))) e!873197)))

(declare-fun b!1566488 () Bool)

(declare-fun e!873196 () Bool)

(declare-fun e!873195 () Bool)

(assert (=> b!1566488 (= e!873196 e!873195)))

(declare-fun c!144367 () Bool)

(assert (=> b!1566488 (= c!144367 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!71903 () Bool)

(declare-fun call!71906 () Bool)

(assert (=> bm!71903 (= call!71906 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!144367 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!144311 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790))) (ite c!144311 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)))))))

(declare-fun b!1566489 () Bool)

(assert (=> b!1566489 (= e!873195 call!71906)))

(declare-fun b!1566490 () Bool)

(assert (=> b!1566490 (= e!873197 e!873196)))

(declare-fun res!1070761 () Bool)

(assert (=> b!1566490 (=> (not res!1070761) (not e!873196))))

(declare-fun e!873194 () Bool)

(assert (=> b!1566490 (= res!1070761 (not e!873194))))

(declare-fun res!1070760 () Bool)

(assert (=> b!1566490 (=> (not res!1070760) (not e!873194))))

(assert (=> b!1566490 (= res!1070760 (validKeyInArray!0 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1566491 () Bool)

(assert (=> b!1566491 (= e!873194 (contains!10366 (ite c!144311 (Cons!36789 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (ite c!144262 (Cons!36789 (select (arr!50473 _keys!637) #b00000000000000000000000000000000) Nil!36790) Nil!36790)) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!1566492 () Bool)

(assert (=> b!1566492 (= e!873195 call!71906)))

(assert (= (and d!163401 (not res!1070759)) b!1566490))

(assert (= (and b!1566490 res!1070760) b!1566491))

(assert (= (and b!1566490 res!1070761) b!1566488))

(assert (= (and b!1566488 c!144367) b!1566492))

(assert (= (and b!1566488 (not c!144367)) b!1566489))

(assert (= (or b!1566492 b!1566489) bm!71903))

(assert (=> b!1566488 m!1441477))

(assert (=> b!1566488 m!1441477))

(assert (=> b!1566488 m!1441479))

(assert (=> bm!71903 m!1441477))

(declare-fun m!1441613 () Bool)

(assert (=> bm!71903 m!1441613))

(assert (=> b!1566490 m!1441477))

(assert (=> b!1566490 m!1441477))

(assert (=> b!1566490 m!1441479))

(assert (=> b!1566491 m!1441477))

(assert (=> b!1566491 m!1441477))

(declare-fun m!1441615 () Bool)

(assert (=> b!1566491 m!1441615))

(assert (=> bm!71897 d!163401))

(declare-fun b!1566496 () Bool)

(declare-fun e!873199 () Option!870)

(assert (=> b!1566496 (= e!873199 None!868)))

(declare-fun b!1566493 () Bool)

(declare-fun e!873198 () Option!870)

(assert (=> b!1566493 (= e!873198 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672561)))))))

(declare-fun b!1566495 () Bool)

(assert (=> b!1566495 (= e!873199 (getValueByKey!795 (t!51700 (toList!11442 lt!672561)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1566494 () Bool)

(assert (=> b!1566494 (= e!873198 e!873199)))

(declare-fun c!144369 () Bool)

(assert (=> b!1566494 (= c!144369 (and ((_ is Cons!36788) (toList!11442 lt!672561)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672561))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun d!163403 () Bool)

(declare-fun c!144368 () Bool)

(assert (=> d!163403 (= c!144368 (and ((_ is Cons!36788) (toList!11442 lt!672561)) (= (_1!12713 (h!38235 (toList!11442 lt!672561))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!163403 (= (getValueByKey!795 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!873198)))

(assert (= (and d!163403 c!144368) b!1566493))

(assert (= (and d!163403 (not c!144368)) b!1566494))

(assert (= (and b!1566494 c!144369) b!1566495))

(assert (= (and b!1566494 (not c!144369)) b!1566496))

(declare-fun m!1441617 () Bool)

(assert (=> b!1566495 m!1441617))

(assert (=> b!1566137 d!163403))

(declare-fun d!163405 () Bool)

(declare-fun res!1070762 () Bool)

(declare-fun e!873200 () Bool)

(assert (=> d!163405 (=> res!1070762 e!873200)))

(assert (=> d!163405 (= res!1070762 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) (select (arr!50473 _keys!637) from!782))))))

(assert (=> d!163405 (= (containsKey!849 (t!51700 (toList!11442 lt!672476)) (select (arr!50473 _keys!637) from!782)) e!873200)))

(declare-fun b!1566497 () Bool)

(declare-fun e!873201 () Bool)

(assert (=> b!1566497 (= e!873200 e!873201)))

(declare-fun res!1070763 () Bool)

(assert (=> b!1566497 (=> (not res!1070763) (not e!873201))))

(assert (=> b!1566497 (= res!1070763 (and (or (not ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476)))) (bvsle (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) (select (arr!50473 _keys!637) from!782))) ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (bvslt (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) (select (arr!50473 _keys!637) from!782))))))

(declare-fun b!1566498 () Bool)

(assert (=> b!1566498 (= e!873201 (containsKey!849 (t!51700 (t!51700 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782)))))

(assert (= (and d!163405 (not res!1070762)) b!1566497))

(assert (= (and b!1566497 res!1070763) b!1566498))

(assert (=> b!1566498 m!1440983))

(declare-fun m!1441619 () Bool)

(assert (=> b!1566498 m!1441619))

(assert (=> b!1566162 d!163405))

(declare-fun d!163407 () Bool)

(assert (=> d!163407 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672699 () Unit!51972)

(assert (=> d!163407 (= lt!672699 (choose!2082 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873202 () Bool)

(assert (=> d!163407 e!873202))

(declare-fun res!1070764 () Bool)

(assert (=> d!163407 (=> (not res!1070764) (not e!873202))))

(assert (=> d!163407 (= res!1070764 (isStrictlySorted!983 (toList!11442 lt!672548)))))

(assert (=> d!163407 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000) lt!672699)))

(declare-fun b!1566499 () Bool)

(assert (=> b!1566499 (= e!873202 (containsKey!849 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163407 res!1070764) b!1566499))

(assert (=> d!163407 m!1441239))

(assert (=> d!163407 m!1441239))

(assert (=> d!163407 m!1441241))

(declare-fun m!1441621 () Bool)

(assert (=> d!163407 m!1441621))

(assert (=> d!163407 m!1441369))

(assert (=> b!1566499 m!1441235))

(assert (=> b!1566222 d!163407))

(declare-fun d!163409 () Bool)

(assert (=> d!163409 (= (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!1150 (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!45077 () Bool)

(assert (= bs!45077 d!163409))

(assert (=> bs!45077 m!1441239))

(declare-fun m!1441623 () Bool)

(assert (=> bs!45077 m!1441623))

(assert (=> b!1566222 d!163409))

(declare-fun b!1566503 () Bool)

(declare-fun e!873204 () Option!870)

(assert (=> b!1566503 (= e!873204 None!868)))

(declare-fun b!1566500 () Bool)

(declare-fun e!873203 () Option!870)

(assert (=> b!1566500 (= e!873203 (Some!869 (_2!12713 (h!38235 (toList!11442 lt!672548)))))))

(declare-fun b!1566502 () Bool)

(assert (=> b!1566502 (= e!873204 (getValueByKey!795 (t!51700 (toList!11442 lt!672548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566501 () Bool)

(assert (=> b!1566501 (= e!873203 e!873204)))

(declare-fun c!144371 () Bool)

(assert (=> b!1566501 (= c!144371 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (not (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!163411 () Bool)

(declare-fun c!144370 () Bool)

(assert (=> d!163411 (= c!144370 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163411 (= (getValueByKey!795 (toList!11442 lt!672548) #b0000000000000000000000000000000000000000000000000000000000000000) e!873203)))

(assert (= (and d!163411 c!144370) b!1566500))

(assert (= (and d!163411 (not c!144370)) b!1566501))

(assert (= (and b!1566501 c!144371) b!1566502))

(assert (= (and b!1566501 (not c!144371)) b!1566503))

(declare-fun m!1441625 () Bool)

(assert (=> b!1566502 m!1441625))

(assert (=> b!1566222 d!163411))

(declare-fun d!163413 () Bool)

(declare-fun res!1070765 () Bool)

(declare-fun e!873205 () Bool)

(assert (=> d!163413 (=> res!1070765 e!873205)))

(assert (=> d!163413 (= res!1070765 (and ((_ is Cons!36788) (toList!11442 lt!672548)) (= (_1!12713 (h!38235 (toList!11442 lt!672548))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!163413 (= (containsKey!849 (toList!11442 lt!672548) #b1000000000000000000000000000000000000000000000000000000000000000) e!873205)))

(declare-fun b!1566504 () Bool)

(declare-fun e!873206 () Bool)

(assert (=> b!1566504 (= e!873205 e!873206)))

(declare-fun res!1070766 () Bool)

(assert (=> b!1566504 (=> (not res!1070766) (not e!873206))))

(assert (=> b!1566504 (= res!1070766 (and (or (not ((_ is Cons!36788) (toList!11442 lt!672548))) (bvsle (_1!12713 (h!38235 (toList!11442 lt!672548))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!36788) (toList!11442 lt!672548)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672548))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1566505 () Bool)

(assert (=> b!1566505 (= e!873206 (containsKey!849 (t!51700 (toList!11442 lt!672548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163413 (not res!1070765)) b!1566504))

(assert (= (and b!1566504 res!1070766) b!1566505))

(declare-fun m!1441627 () Bool)

(assert (=> b!1566505 m!1441627))

(assert (=> d!163167 d!163413))

(declare-fun d!163415 () Bool)

(declare-fun e!873208 () Bool)

(assert (=> d!163415 e!873208))

(declare-fun res!1070767 () Bool)

(assert (=> d!163415 (=> res!1070767 e!873208)))

(declare-fun lt!672701 () Bool)

(assert (=> d!163415 (= res!1070767 (not lt!672701))))

(declare-fun lt!672702 () Bool)

(assert (=> d!163415 (= lt!672701 lt!672702)))

(declare-fun lt!672700 () Unit!51972)

(declare-fun e!873207 () Unit!51972)

(assert (=> d!163415 (= lt!672700 e!873207)))

(declare-fun c!144372 () Bool)

(assert (=> d!163415 (= c!144372 lt!672702)))

(assert (=> d!163415 (= lt!672702 (containsKey!849 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!163415 (= (contains!10363 lt!672561 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!672701)))

(declare-fun b!1566506 () Bool)

(declare-fun lt!672703 () Unit!51972)

(assert (=> b!1566506 (= e!873207 lt!672703)))

(assert (=> b!1566506 (= lt!672703 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1566506 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1566507 () Bool)

(declare-fun Unit!51990 () Unit!51972)

(assert (=> b!1566507 (= e!873207 Unit!51990)))

(declare-fun b!1566508 () Bool)

(assert (=> b!1566508 (= e!873208 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672561) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!163415 c!144372) b!1566506))

(assert (= (and d!163415 (not c!144372)) b!1566507))

(assert (= (and d!163415 (not res!1070767)) b!1566508))

(declare-fun m!1441629 () Bool)

(assert (=> d!163415 m!1441629))

(declare-fun m!1441631 () Bool)

(assert (=> b!1566506 m!1441631))

(assert (=> b!1566506 m!1441157))

(assert (=> b!1566506 m!1441157))

(declare-fun m!1441633 () Bool)

(assert (=> b!1566506 m!1441633))

(assert (=> b!1566508 m!1441157))

(assert (=> b!1566508 m!1441157))

(assert (=> b!1566508 m!1441633))

(assert (=> d!163169 d!163415))

(declare-fun b!1566512 () Bool)

(declare-fun e!873210 () Option!870)

(assert (=> b!1566512 (= e!873210 None!868)))

(declare-fun b!1566509 () Bool)

(declare-fun e!873209 () Option!870)

(assert (=> b!1566509 (= e!873209 (Some!869 (_2!12713 (h!38235 lt!672559))))))

(declare-fun b!1566511 () Bool)

(assert (=> b!1566511 (= e!873210 (getValueByKey!795 (t!51700 lt!672559) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1566510 () Bool)

(assert (=> b!1566510 (= e!873209 e!873210)))

(declare-fun c!144374 () Bool)

(assert (=> b!1566510 (= c!144374 (and ((_ is Cons!36788) lt!672559) (not (= (_1!12713 (h!38235 lt!672559)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun d!163417 () Bool)

(declare-fun c!144373 () Bool)

(assert (=> d!163417 (= c!144373 (and ((_ is Cons!36788) lt!672559) (= (_1!12713 (h!38235 lt!672559)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!163417 (= (getValueByKey!795 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!873209)))

(assert (= (and d!163417 c!144373) b!1566509))

(assert (= (and d!163417 (not c!144373)) b!1566510))

(assert (= (and b!1566510 c!144374) b!1566511))

(assert (= (and b!1566510 (not c!144374)) b!1566512))

(declare-fun m!1441635 () Bool)

(assert (=> b!1566511 m!1441635))

(assert (=> d!163169 d!163417))

(declare-fun d!163419 () Bool)

(assert (=> d!163419 (= (getValueByKey!795 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!869 (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!672704 () Unit!51972)

(assert (=> d!163419 (= lt!672704 (choose!2083 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!873211 () Bool)

(assert (=> d!163419 e!873211))

(declare-fun res!1070768 () Bool)

(assert (=> d!163419 (=> (not res!1070768) (not e!873211))))

(assert (=> d!163419 (= res!1070768 (isStrictlySorted!983 lt!672559))))

(assert (=> d!163419 (= (lemmaContainsTupThenGetReturnValue!386 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!672704)))

(declare-fun b!1566513 () Bool)

(declare-fun res!1070769 () Bool)

(assert (=> b!1566513 (=> (not res!1070769) (not e!873211))))

(assert (=> b!1566513 (= res!1070769 (containsKey!849 lt!672559 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1566514 () Bool)

(assert (=> b!1566514 (= e!873211 (contains!10365 lt!672559 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!163419 res!1070768) b!1566513))

(assert (= (and b!1566513 res!1070769) b!1566514))

(assert (=> d!163419 m!1441151))

(declare-fun m!1441637 () Bool)

(assert (=> d!163419 m!1441637))

(declare-fun m!1441639 () Bool)

(assert (=> d!163419 m!1441639))

(declare-fun m!1441641 () Bool)

(assert (=> b!1566513 m!1441641))

(declare-fun m!1441643 () Bool)

(assert (=> b!1566514 m!1441643))

(assert (=> d!163169 d!163419))

(declare-fun e!873212 () List!36792)

(declare-fun b!1566515 () Bool)

(assert (=> b!1566515 (= e!873212 (insertStrictlySorted!576 (t!51700 (toList!11442 call!71885)) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!71904 () Bool)

(declare-fun call!71907 () List!36792)

(declare-fun call!71909 () List!36792)

(assert (=> bm!71904 (= call!71907 call!71909)))

(declare-fun bm!71905 () Bool)

(declare-fun call!71908 () List!36792)

(declare-fun c!144378 () Bool)

(assert (=> bm!71905 (= call!71908 ($colon$colon!989 e!873212 (ite c!144378 (h!38235 (toList!11442 call!71885)) (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!144376 () Bool)

(assert (=> bm!71905 (= c!144376 c!144378)))

(declare-fun b!1566516 () Bool)

(declare-fun c!144377 () Bool)

(assert (=> b!1566516 (= c!144377 (and ((_ is Cons!36788) (toList!11442 call!71885)) (bvsgt (_1!12713 (h!38235 (toList!11442 call!71885))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!873216 () List!36792)

(declare-fun e!873215 () List!36792)

(assert (=> b!1566516 (= e!873216 e!873215)))

(declare-fun b!1566517 () Bool)

(assert (=> b!1566517 (= e!873215 call!71907)))

(declare-fun b!1566518 () Bool)

(declare-fun e!873214 () List!36792)

(assert (=> b!1566518 (= e!873214 call!71908)))

(declare-fun c!144375 () Bool)

(declare-fun b!1566520 () Bool)

(assert (=> b!1566520 (= e!873212 (ite c!144375 (t!51700 (toList!11442 call!71885)) (ite c!144377 (Cons!36788 (h!38235 (toList!11442 call!71885)) (t!51700 (toList!11442 call!71885))) Nil!36789)))))

(declare-fun lt!672705 () List!36792)

(declare-fun b!1566521 () Bool)

(declare-fun e!873213 () Bool)

(assert (=> b!1566521 (= e!873213 (contains!10365 lt!672705 (tuple2!25407 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1566522 () Bool)

(assert (=> b!1566522 (= e!873215 call!71907)))

(declare-fun b!1566523 () Bool)

(assert (=> b!1566523 (= e!873214 e!873216)))

(assert (=> b!1566523 (= c!144375 (and ((_ is Cons!36788) (toList!11442 call!71885)) (= (_1!12713 (h!38235 (toList!11442 call!71885))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1566524 () Bool)

(declare-fun res!1070770 () Bool)

(assert (=> b!1566524 (=> (not res!1070770) (not e!873213))))

(assert (=> b!1566524 (= res!1070770 (containsKey!849 lt!672705 (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!71906 () Bool)

(assert (=> bm!71906 (= call!71909 call!71908)))

(declare-fun d!163421 () Bool)

(assert (=> d!163421 e!873213))

(declare-fun res!1070771 () Bool)

(assert (=> d!163421 (=> (not res!1070771) (not e!873213))))

(assert (=> d!163421 (= res!1070771 (isStrictlySorted!983 lt!672705))))

(assert (=> d!163421 (= lt!672705 e!873214)))

(assert (=> d!163421 (= c!144378 (and ((_ is Cons!36788) (toList!11442 call!71885)) (bvslt (_1!12713 (h!38235 (toList!11442 call!71885))) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!163421 (isStrictlySorted!983 (toList!11442 call!71885))))

(assert (=> d!163421 (= (insertStrictlySorted!576 (toList!11442 call!71885) (_1!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12713 (tuple2!25407 (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782)) (get!26389 (select (arr!50474 _values!487) (bvadd #b00000000000000000000000000000001 from!782)) (dynLambda!3938 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!672705)))

(declare-fun b!1566519 () Bool)

(assert (=> b!1566519 (= e!873216 call!71909)))

(assert (= (and d!163421 c!144378) b!1566518))

(assert (= (and d!163421 (not c!144378)) b!1566523))

(assert (= (and b!1566523 c!144375) b!1566519))

(assert (= (and b!1566523 (not c!144375)) b!1566516))

(assert (= (and b!1566516 c!144377) b!1566517))

(assert (= (and b!1566516 (not c!144377)) b!1566522))

(assert (= (or b!1566517 b!1566522) bm!71904))

(assert (= (or b!1566519 bm!71904) bm!71906))

(assert (= (or b!1566518 bm!71906) bm!71905))

(assert (= (and bm!71905 c!144376) b!1566515))

(assert (= (and bm!71905 (not c!144376)) b!1566520))

(assert (= (and d!163421 res!1070771) b!1566524))

(assert (= (and b!1566524 res!1070770) b!1566521))

(declare-fun m!1441645 () Bool)

(assert (=> d!163421 m!1441645))

(declare-fun m!1441647 () Bool)

(assert (=> d!163421 m!1441647))

(declare-fun m!1441649 () Bool)

(assert (=> bm!71905 m!1441649))

(declare-fun m!1441651 () Bool)

(assert (=> b!1566524 m!1441651))

(declare-fun m!1441653 () Bool)

(assert (=> b!1566515 m!1441653))

(declare-fun m!1441655 () Bool)

(assert (=> b!1566521 m!1441655))

(assert (=> d!163169 d!163421))

(assert (=> b!1566275 d!163365))

(declare-fun d!163423 () Bool)

(declare-fun e!873218 () Bool)

(assert (=> d!163423 e!873218))

(declare-fun res!1070772 () Bool)

(assert (=> d!163423 (=> res!1070772 e!873218)))

(declare-fun lt!672707 () Bool)

(assert (=> d!163423 (= res!1070772 (not lt!672707))))

(declare-fun lt!672708 () Bool)

(assert (=> d!163423 (= lt!672707 lt!672708)))

(declare-fun lt!672706 () Unit!51972)

(declare-fun e!873217 () Unit!51972)

(assert (=> d!163423 (= lt!672706 e!873217)))

(declare-fun c!144379 () Bool)

(assert (=> d!163423 (= c!144379 lt!672708)))

(assert (=> d!163423 (= lt!672708 (containsKey!849 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(assert (=> d!163423 (= (contains!10363 lt!672565 (_1!12713 (tuple2!25407 lt!672552 lt!672551))) lt!672707)))

(declare-fun b!1566525 () Bool)

(declare-fun lt!672709 () Unit!51972)

(assert (=> b!1566525 (= e!873217 lt!672709)))

(assert (=> b!1566525 (= lt!672709 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(assert (=> b!1566525 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun b!1566526 () Bool)

(declare-fun Unit!51991 () Unit!51972)

(assert (=> b!1566526 (= e!873217 Unit!51991)))

(declare-fun b!1566527 () Bool)

(assert (=> b!1566527 (= e!873218 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672565) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (= (and d!163423 c!144379) b!1566525))

(assert (= (and d!163423 (not c!144379)) b!1566526))

(assert (= (and d!163423 (not res!1070772)) b!1566527))

(declare-fun m!1441657 () Bool)

(assert (=> d!163423 m!1441657))

(declare-fun m!1441659 () Bool)

(assert (=> b!1566525 m!1441659))

(assert (=> b!1566525 m!1441169))

(assert (=> b!1566525 m!1441169))

(declare-fun m!1441661 () Bool)

(assert (=> b!1566525 m!1441661))

(assert (=> b!1566527 m!1441169))

(assert (=> b!1566527 m!1441169))

(assert (=> b!1566527 m!1441661))

(assert (=> d!163171 d!163423))

(declare-fun b!1566531 () Bool)

(declare-fun e!873220 () Option!870)

(assert (=> b!1566531 (= e!873220 None!868)))

(declare-fun b!1566528 () Bool)

(declare-fun e!873219 () Option!870)

(assert (=> b!1566528 (= e!873219 (Some!869 (_2!12713 (h!38235 lt!672563))))))

(declare-fun b!1566530 () Bool)

(assert (=> b!1566530 (= e!873220 (getValueByKey!795 (t!51700 lt!672563) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun b!1566529 () Bool)

(assert (=> b!1566529 (= e!873219 e!873220)))

(declare-fun c!144381 () Bool)

(assert (=> b!1566529 (= c!144381 (and ((_ is Cons!36788) lt!672563) (not (= (_1!12713 (h!38235 lt!672563)) (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))))

(declare-fun d!163425 () Bool)

(declare-fun c!144380 () Bool)

(assert (=> d!163425 (= c!144380 (and ((_ is Cons!36788) lt!672563) (= (_1!12713 (h!38235 lt!672563)) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (=> d!163425 (= (getValueByKey!795 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551))) e!873219)))

(assert (= (and d!163425 c!144380) b!1566528))

(assert (= (and d!163425 (not c!144380)) b!1566529))

(assert (= (and b!1566529 c!144381) b!1566530))

(assert (= (and b!1566529 (not c!144381)) b!1566531))

(declare-fun m!1441663 () Bool)

(assert (=> b!1566530 m!1441663))

(assert (=> d!163171 d!163425))

(declare-fun d!163427 () Bool)

(assert (=> d!163427 (= (getValueByKey!795 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551))) (Some!869 (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun lt!672710 () Unit!51972)

(assert (=> d!163427 (= lt!672710 (choose!2083 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun e!873221 () Bool)

(assert (=> d!163427 e!873221))

(declare-fun res!1070773 () Bool)

(assert (=> d!163427 (=> (not res!1070773) (not e!873221))))

(assert (=> d!163427 (= res!1070773 (isStrictlySorted!983 lt!672563))))

(assert (=> d!163427 (= (lemmaContainsTupThenGetReturnValue!386 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))) lt!672710)))

(declare-fun b!1566532 () Bool)

(declare-fun res!1070774 () Bool)

(assert (=> b!1566532 (=> (not res!1070774) (not e!873221))))

(assert (=> b!1566532 (= res!1070774 (containsKey!849 lt!672563 (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun b!1566533 () Bool)

(assert (=> b!1566533 (= e!873221 (contains!10365 lt!672563 (tuple2!25407 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (= (and d!163427 res!1070773) b!1566532))

(assert (= (and b!1566532 res!1070774) b!1566533))

(assert (=> d!163427 m!1441163))

(declare-fun m!1441665 () Bool)

(assert (=> d!163427 m!1441665))

(declare-fun m!1441667 () Bool)

(assert (=> d!163427 m!1441667))

(declare-fun m!1441669 () Bool)

(assert (=> b!1566532 m!1441669))

(declare-fun m!1441671 () Bool)

(assert (=> b!1566533 m!1441671))

(assert (=> d!163171 d!163427))

(declare-fun b!1566534 () Bool)

(declare-fun e!873222 () List!36792)

(assert (=> b!1566534 (= e!873222 (insertStrictlySorted!576 (t!51700 (toList!11442 lt!672547)) (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun bm!71907 () Bool)

(declare-fun call!71910 () List!36792)

(declare-fun call!71912 () List!36792)

(assert (=> bm!71907 (= call!71910 call!71912)))

(declare-fun call!71911 () List!36792)

(declare-fun bm!71908 () Bool)

(declare-fun c!144385 () Bool)

(assert (=> bm!71908 (= call!71911 ($colon$colon!989 e!873222 (ite c!144385 (h!38235 (toList!11442 lt!672547)) (tuple2!25407 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))))))))

(declare-fun c!144383 () Bool)

(assert (=> bm!71908 (= c!144383 c!144385)))

(declare-fun c!144384 () Bool)

(declare-fun b!1566535 () Bool)

(assert (=> b!1566535 (= c!144384 (and ((_ is Cons!36788) (toList!11442 lt!672547)) (bvsgt (_1!12713 (h!38235 (toList!11442 lt!672547))) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(declare-fun e!873226 () List!36792)

(declare-fun e!873225 () List!36792)

(assert (=> b!1566535 (= e!873226 e!873225)))

(declare-fun b!1566536 () Bool)

(assert (=> b!1566536 (= e!873225 call!71910)))

(declare-fun b!1566537 () Bool)

(declare-fun e!873224 () List!36792)

(assert (=> b!1566537 (= e!873224 call!71911)))

(declare-fun c!144382 () Bool)

(declare-fun b!1566539 () Bool)

(assert (=> b!1566539 (= e!873222 (ite c!144382 (t!51700 (toList!11442 lt!672547)) (ite c!144384 (Cons!36788 (h!38235 (toList!11442 lt!672547)) (t!51700 (toList!11442 lt!672547))) Nil!36789)))))

(declare-fun lt!672711 () List!36792)

(declare-fun e!873223 () Bool)

(declare-fun b!1566540 () Bool)

(assert (=> b!1566540 (= e!873223 (contains!10365 lt!672711 (tuple2!25407 (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(declare-fun b!1566541 () Bool)

(assert (=> b!1566541 (= e!873225 call!71910)))

(declare-fun b!1566542 () Bool)

(assert (=> b!1566542 (= e!873224 e!873226)))

(assert (=> b!1566542 (= c!144382 (and ((_ is Cons!36788) (toList!11442 lt!672547)) (= (_1!12713 (h!38235 (toList!11442 lt!672547))) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(declare-fun b!1566543 () Bool)

(declare-fun res!1070775 () Bool)

(assert (=> b!1566543 (=> (not res!1070775) (not e!873223))))

(assert (=> b!1566543 (= res!1070775 (containsKey!849 lt!672711 (_1!12713 (tuple2!25407 lt!672552 lt!672551))))))

(declare-fun bm!71909 () Bool)

(assert (=> bm!71909 (= call!71912 call!71911)))

(declare-fun d!163429 () Bool)

(assert (=> d!163429 e!873223))

(declare-fun res!1070776 () Bool)

(assert (=> d!163429 (=> (not res!1070776) (not e!873223))))

(assert (=> d!163429 (= res!1070776 (isStrictlySorted!983 lt!672711))))

(assert (=> d!163429 (= lt!672711 e!873224)))

(assert (=> d!163429 (= c!144385 (and ((_ is Cons!36788) (toList!11442 lt!672547)) (bvslt (_1!12713 (h!38235 (toList!11442 lt!672547))) (_1!12713 (tuple2!25407 lt!672552 lt!672551)))))))

(assert (=> d!163429 (isStrictlySorted!983 (toList!11442 lt!672547))))

(assert (=> d!163429 (= (insertStrictlySorted!576 (toList!11442 lt!672547) (_1!12713 (tuple2!25407 lt!672552 lt!672551)) (_2!12713 (tuple2!25407 lt!672552 lt!672551))) lt!672711)))

(declare-fun b!1566538 () Bool)

(assert (=> b!1566538 (= e!873226 call!71912)))

(assert (= (and d!163429 c!144385) b!1566537))

(assert (= (and d!163429 (not c!144385)) b!1566542))

(assert (= (and b!1566542 c!144382) b!1566538))

(assert (= (and b!1566542 (not c!144382)) b!1566535))

(assert (= (and b!1566535 c!144384) b!1566536))

(assert (= (and b!1566535 (not c!144384)) b!1566541))

(assert (= (or b!1566536 b!1566541) bm!71907))

(assert (= (or b!1566538 bm!71907) bm!71909))

(assert (= (or b!1566537 bm!71909) bm!71908))

(assert (= (and bm!71908 c!144383) b!1566534))

(assert (= (and bm!71908 (not c!144383)) b!1566539))

(assert (= (and d!163429 res!1070776) b!1566543))

(assert (= (and b!1566543 res!1070775) b!1566540))

(declare-fun m!1441673 () Bool)

(assert (=> d!163429 m!1441673))

(declare-fun m!1441675 () Bool)

(assert (=> d!163429 m!1441675))

(declare-fun m!1441677 () Bool)

(assert (=> bm!71908 m!1441677))

(declare-fun m!1441679 () Bool)

(assert (=> b!1566543 m!1441679))

(declare-fun m!1441681 () Bool)

(assert (=> b!1566534 m!1441681))

(declare-fun m!1441683 () Bool)

(assert (=> b!1566540 m!1441683))

(assert (=> d!163171 d!163429))

(assert (=> b!1566224 d!163409))

(assert (=> b!1566224 d!163411))

(declare-fun d!163431 () Bool)

(declare-fun c!144388 () Bool)

(assert (=> d!163431 (= c!144388 ((_ is Nil!36789) (toList!11442 lt!672528)))))

(declare-fun e!873229 () (InoxSet tuple2!25406))

(assert (=> d!163431 (= (content!814 (toList!11442 lt!672528)) e!873229)))

(declare-fun b!1566548 () Bool)

(assert (=> b!1566548 (= e!873229 ((as const (Array tuple2!25406 Bool)) false))))

(declare-fun b!1566549 () Bool)

(assert (=> b!1566549 (= e!873229 ((_ map or) (store ((as const (Array tuple2!25406 Bool)) false) (h!38235 (toList!11442 lt!672528)) true) (content!814 (t!51700 (toList!11442 lt!672528)))))))

(assert (= (and d!163431 c!144388) b!1566548))

(assert (= (and d!163431 (not c!144388)) b!1566549))

(declare-fun m!1441685 () Bool)

(assert (=> b!1566549 m!1441685))

(assert (=> b!1566549 m!1441603))

(assert (=> d!163231 d!163431))

(declare-fun d!163433 () Bool)

(assert (=> d!163433 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun lt!672712 () Unit!51972)

(assert (=> d!163433 (= lt!672712 (choose!2082 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(declare-fun e!873230 () Bool)

(assert (=> d!163433 e!873230))

(declare-fun res!1070777 () Bool)

(assert (=> d!163433 (=> (not res!1070777) (not e!873230))))

(assert (=> d!163433 (= res!1070777 (isStrictlySorted!983 (toList!11442 lt!672548)))))

(assert (=> d!163433 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))) lt!672712)))

(declare-fun b!1566550 () Bool)

(assert (=> b!1566550 (= e!873230 (containsKey!849 (toList!11442 lt!672548) (select (arr!50473 _keys!637) (bvadd #b00000000000000000000000000000001 from!782))))))

(assert (= (and d!163433 res!1070777) b!1566550))

(assert (=> d!163433 m!1441097))

(assert (=> d!163433 m!1441133))

(assert (=> d!163433 m!1441133))

(assert (=> d!163433 m!1441247))

(assert (=> d!163433 m!1441097))

(declare-fun m!1441687 () Bool)

(assert (=> d!163433 m!1441687))

(assert (=> d!163433 m!1441369))

(assert (=> b!1566550 m!1441097))

(assert (=> b!1566550 m!1441243))

(assert (=> b!1566225 d!163433))

(assert (=> b!1566225 d!163381))

(assert (=> b!1566225 d!163383))

(declare-fun b!1566554 () Bool)

(declare-fun e!873232 () Option!870)

(assert (=> b!1566554 (= e!873232 None!868)))

(declare-fun b!1566551 () Bool)

(declare-fun e!873231 () Option!870)

(assert (=> b!1566551 (= e!873231 (Some!869 (_2!12713 (h!38235 (t!51700 (toList!11442 lt!672476))))))))

(declare-fun b!1566553 () Bool)

(assert (=> b!1566553 (= e!873232 (getValueByKey!795 (t!51700 (t!51700 (toList!11442 lt!672476))) (select (arr!50473 _keys!637) from!782)))))

(declare-fun b!1566552 () Bool)

(assert (=> b!1566552 (= e!873231 e!873232)))

(declare-fun c!144390 () Bool)

(assert (=> b!1566552 (= c!144390 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (not (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) (select (arr!50473 _keys!637) from!782)))))))

(declare-fun c!144389 () Bool)

(declare-fun d!163435 () Bool)

(assert (=> d!163435 (= c!144389 (and ((_ is Cons!36788) (t!51700 (toList!11442 lt!672476))) (= (_1!12713 (h!38235 (t!51700 (toList!11442 lt!672476)))) (select (arr!50473 _keys!637) from!782))))))

(assert (=> d!163435 (= (getValueByKey!795 (t!51700 (toList!11442 lt!672476)) (select (arr!50473 _keys!637) from!782)) e!873231)))

(assert (= (and d!163435 c!144389) b!1566551))

(assert (= (and d!163435 (not c!144389)) b!1566552))

(assert (= (and b!1566552 c!144390) b!1566553))

(assert (= (and b!1566552 (not c!144390)) b!1566554))

(assert (=> b!1566553 m!1440983))

(declare-fun m!1441689 () Bool)

(assert (=> b!1566553 m!1441689))

(assert (=> b!1566155 d!163435))

(assert (=> d!163175 d!163173))

(assert (=> d!163175 d!163171))

(declare-fun d!163437 () Bool)

(assert (=> d!163437 (not (contains!10363 (+!5049 lt!672547 (tuple2!25407 lt!672552 lt!672551)) lt!672553))))

(assert (=> d!163437 true))

(declare-fun _$36!389 () Unit!51972)

(assert (=> d!163437 (= (choose!2081 lt!672547 lt!672552 lt!672551 lt!672553) _$36!389)))

(declare-fun bs!45078 () Bool)

(assert (= bs!45078 d!163437))

(assert (=> bs!45078 m!1441107))

(assert (=> bs!45078 m!1441107))

(assert (=> bs!45078 m!1441109))

(assert (=> d!163175 d!163437))

(declare-fun d!163439 () Bool)

(declare-fun e!873234 () Bool)

(assert (=> d!163439 e!873234))

(declare-fun res!1070778 () Bool)

(assert (=> d!163439 (=> res!1070778 e!873234)))

(declare-fun lt!672714 () Bool)

(assert (=> d!163439 (= res!1070778 (not lt!672714))))

(declare-fun lt!672715 () Bool)

(assert (=> d!163439 (= lt!672714 lt!672715)))

(declare-fun lt!672713 () Unit!51972)

(declare-fun e!873233 () Unit!51972)

(assert (=> d!163439 (= lt!672713 e!873233)))

(declare-fun c!144391 () Bool)

(assert (=> d!163439 (= c!144391 lt!672715)))

(assert (=> d!163439 (= lt!672715 (containsKey!849 (toList!11442 lt!672547) lt!672553))))

(assert (=> d!163439 (= (contains!10363 lt!672547 lt!672553) lt!672714)))

(declare-fun b!1566555 () Bool)

(declare-fun lt!672716 () Unit!51972)

(assert (=> b!1566555 (= e!873233 lt!672716)))

(assert (=> b!1566555 (= lt!672716 (lemmaContainsKeyImpliesGetValueByKeyDefined!530 (toList!11442 lt!672547) lt!672553))))

(assert (=> b!1566555 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672547) lt!672553))))

(declare-fun b!1566556 () Bool)

(declare-fun Unit!51992 () Unit!51972)

(assert (=> b!1566556 (= e!873233 Unit!51992)))

(declare-fun b!1566557 () Bool)

(assert (=> b!1566557 (= e!873234 (isDefined!579 (getValueByKey!795 (toList!11442 lt!672547) lt!672553)))))

(assert (= (and d!163439 c!144391) b!1566555))

(assert (= (and d!163439 (not c!144391)) b!1566556))

(assert (= (and d!163439 (not res!1070778)) b!1566557))

(declare-fun m!1441691 () Bool)

(assert (=> d!163439 m!1441691))

(declare-fun m!1441693 () Bool)

(assert (=> b!1566555 m!1441693))

(declare-fun m!1441695 () Bool)

(assert (=> b!1566555 m!1441695))

(assert (=> b!1566555 m!1441695))

(declare-fun m!1441697 () Bool)

(assert (=> b!1566555 m!1441697))

(assert (=> b!1566557 m!1441695))

(assert (=> b!1566557 m!1441695))

(assert (=> b!1566557 m!1441697))

(assert (=> d!163175 d!163439))

(declare-fun d!163441 () Bool)

(assert (=> d!163441 (= (isEmpty!1148 lt!672623) (isEmpty!1149 (toList!11442 lt!672623)))))

(declare-fun bs!45079 () Bool)

(assert (= bs!45079 d!163441))

(declare-fun m!1441699 () Bool)

(assert (=> bs!45079 m!1441699))

(assert (=> b!1566277 d!163441))

(declare-fun b!1566558 () Bool)

(declare-fun e!873235 () Bool)

(assert (=> b!1566558 (= e!873235 tp_is_empty!38961)))

(declare-fun b!1566559 () Bool)

(declare-fun e!873236 () Bool)

(assert (=> b!1566559 (= e!873236 tp_is_empty!38961)))

(declare-fun mapNonEmpty!59841 () Bool)

(declare-fun mapRes!59841 () Bool)

(declare-fun tp!113875 () Bool)

(assert (=> mapNonEmpty!59841 (= mapRes!59841 (and tp!113875 e!873235))))

(declare-fun mapKey!59841 () (_ BitVec 32))

(declare-fun mapValue!59841 () ValueCell!18450)

(declare-fun mapRest!59841 () (Array (_ BitVec 32) ValueCell!18450))

(assert (=> mapNonEmpty!59841 (= mapRest!59840 (store mapRest!59841 mapKey!59841 mapValue!59841))))

(declare-fun condMapEmpty!59841 () Bool)

(declare-fun mapDefault!59841 () ValueCell!18450)

(assert (=> mapNonEmpty!59840 (= condMapEmpty!59841 (= mapRest!59840 ((as const (Array (_ BitVec 32) ValueCell!18450)) mapDefault!59841)))))

(assert (=> mapNonEmpty!59840 (= tp!113874 (and e!873236 mapRes!59841))))

(declare-fun mapIsEmpty!59841 () Bool)

(assert (=> mapIsEmpty!59841 mapRes!59841))

(assert (= (and mapNonEmpty!59840 condMapEmpty!59841) mapIsEmpty!59841))

(assert (= (and mapNonEmpty!59840 (not condMapEmpty!59841)) mapNonEmpty!59841))

(assert (= (and mapNonEmpty!59841 ((_ is ValueCellFull!18450) mapValue!59841)) b!1566558))

(assert (= (and mapNonEmpty!59840 ((_ is ValueCellFull!18450) mapDefault!59841)) b!1566559))

(declare-fun m!1441701 () Bool)

(assert (=> mapNonEmpty!59841 m!1441701))

(declare-fun b_lambda!25037 () Bool)

(assert (= b_lambda!25033 (or (and start!133996 b_free!32187) b_lambda!25037)))

(declare-fun b_lambda!25039 () Bool)

(assert (= b_lambda!25035 (or (and start!133996 b_free!32187) b_lambda!25039)))

(check-sat (not b!1566304) (not b!1566432) (not d!163287) (not b_next!32187) (not b!1566357) (not b!1566434) (not b!1566430) (not b!1566370) (not b!1566369) (not b!1566359) (not b!1566463) (not d!163355) (not b!1566301) (not d!163285) (not b!1566446) (not b!1566543) (not b!1566495) (not d!163271) (not b!1566345) (not b!1566498) (not b!1566343) (not b!1566514) (not b!1566460) (not b!1566534) (not b!1566530) (not b!1566452) (not b!1566525) (not b!1566321) (not b!1566550) (not b!1566313) (not d!163255) (not d!163407) (not b!1566361) (not d!163311) (not b!1566553) (not d!163273) (not b!1566505) (not d!163375) (not d!163293) (not bm!71903) (not d!163423) (not d!163267) (not d!163265) (not b!1566309) (not b_lambda!25031) (not b!1566358) (not b!1566349) (not b_lambda!25021) (not b!1566521) (not d!163309) (not b!1566355) (not b!1566439) (not b!1566481) (not b!1566334) (not bm!71900) (not d!163393) (not b!1566325) (not b!1566443) (not b!1566431) (not b!1566532) (not d!163373) (not d!163395) b_and!51843 (not b!1566524) (not b!1566319) (not b!1566447) (not d!163291) (not d!163345) (not b!1566491) (not b!1566340) (not b!1566511) (not bm!71908) (not d!163261) (not b!1566455) (not b_lambda!25039) (not bm!71898) (not d!163301) (not d!163369) (not b!1566347) (not b!1566555) (not b!1566414) (not b!1566502) tp_is_empty!38961 (not d!163323) (not d!163441) (not d!163313) (not b!1566366) (not b!1566540) (not b!1566424) (not b_lambda!25015) (not b!1566513) (not b!1566487) (not d!163381) (not b!1566337) (not b!1566485) (not d!163327) (not b!1566406) (not d!163415) (not b!1566483) (not b!1566402) (not d!163409) (not b!1566488) (not d!163439) (not d!163305) (not d!163281) (not d!163339) (not b!1566499) (not d!163321) (not b!1566427) (not b!1566356) (not b!1566508) (not b!1566533) (not b!1566316) (not b!1566437) (not b!1566306) (not b!1566374) (not b!1566335) (not b!1566549) (not d!163333) (not b!1566415) (not b!1566412) (not b!1566404) (not d!163391) (not b!1566312) (not b!1566458) (not b!1566396) (not d!163247) (not bm!71905) (not b!1566448) (not b!1566461) (not b!1566332) (not d!163421) (not d!163335) (not b_lambda!25037) (not b!1566364) (not b!1566421) (not d!163433) (not b_lambda!25023) (not d!163419) (not b!1566515) (not d!163437) (not d!163307) (not d!163427) (not b!1566450) (not b_lambda!25029) (not b!1566506) (not d!163361) (not mapNonEmpty!59841) (not b!1566429) (not b!1566322) (not bm!71902) (not b!1566336) (not b!1566527) (not d!163429) (not b!1566433) (not b!1566557) (not b!1566409) (not b!1566490) (not d!163341) (not b!1566372) (not d!163275))
(check-sat b_and!51843 (not b_next!32187))
