; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11068 () Bool)

(assert start!11068)

(declare-fun b!89860 () Bool)

(declare-fun b_free!2273 () Bool)

(declare-fun b_next!2273 () Bool)

(assert (=> b!89860 (= b_free!2273 (not b_next!2273))))

(declare-fun tp!9065 () Bool)

(declare-fun b_and!5385 () Bool)

(assert (=> b!89860 (= tp!9065 b_and!5385)))

(declare-fun b!89850 () Bool)

(declare-fun b_free!2275 () Bool)

(declare-fun b_next!2275 () Bool)

(assert (=> b!89850 (= b_free!2275 (not b_next!2275))))

(declare-fun tp!9063 () Bool)

(declare-fun b_and!5387 () Bool)

(assert (=> b!89850 (= tp!9063 b_and!5387)))

(declare-fun b!89848 () Bool)

(declare-fun e!58499 () Bool)

(declare-fun tp_is_empty!2553 () Bool)

(assert (=> b!89848 (= e!58499 tp_is_empty!2553)))

(declare-fun mapNonEmpty!3473 () Bool)

(declare-fun mapRes!3473 () Bool)

(declare-fun tp!9066 () Bool)

(declare-fun e!58494 () Bool)

(assert (=> mapNonEmpty!3473 (= mapRes!3473 (and tp!9066 e!58494))))

(declare-datatypes ((V!3051 0))(
  ( (V!3052 (val!1321 Int)) )
))
(declare-datatypes ((ValueCell!933 0))(
  ( (ValueCellFull!933 (v!2688 V!3051)) (EmptyCell!933) )
))
(declare-fun mapRest!3473 () (Array (_ BitVec 32) ValueCell!933))

(declare-datatypes ((array!4070 0))(
  ( (array!4071 (arr!1936 (Array (_ BitVec 32) (_ BitVec 64))) (size!2183 (_ BitVec 32))) )
))
(declare-datatypes ((array!4072 0))(
  ( (array!4073 (arr!1937 (Array (_ BitVec 32) ValueCell!933)) (size!2184 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!774 0))(
  ( (LongMapFixedSize!775 (defaultEntry!2385 Int) (mask!6435 (_ BitVec 32)) (extraKeys!2216 (_ BitVec 32)) (zeroValue!2273 V!3051) (minValue!2273 V!3051) (_size!436 (_ BitVec 32)) (_keys!4065 array!4070) (_values!2368 array!4072) (_vacant!436 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!580 0))(
  ( (Cell!581 (v!2689 LongMapFixedSize!774)) )
))
(declare-datatypes ((LongMap!580 0))(
  ( (LongMap!581 (underlying!301 Cell!580)) )
))
(declare-fun thiss!992 () LongMap!580)

(declare-fun mapValue!3474 () ValueCell!933)

(declare-fun mapKey!3474 () (_ BitVec 32))

(assert (=> mapNonEmpty!3473 (= (arr!1937 (_values!2368 (v!2689 (underlying!301 thiss!992)))) (store mapRest!3473 mapKey!3474 mapValue!3474))))

(declare-fun b!89849 () Bool)

(declare-fun res!45903 () Bool)

(declare-fun e!58495 () Bool)

(assert (=> b!89849 (=> res!45903 e!58495)))

(assert (=> b!89849 (= res!45903 (or (not (= (size!2184 (_values!2368 (v!2689 (underlying!301 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6435 (v!2689 (underlying!301 thiss!992)))))) (not (= (size!2183 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) (size!2184 (_values!2368 (v!2689 (underlying!301 thiss!992)))))) (bvslt (mask!6435 (v!2689 (underlying!301 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2216 (v!2689 (underlying!301 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2216 (v!2689 (underlying!301 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!58488 () Bool)

(declare-fun e!58501 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!774)

(declare-fun array_inv!1159 (array!4070) Bool)

(declare-fun array_inv!1160 (array!4072) Bool)

(assert (=> b!89850 (= e!58488 (and tp!9063 tp_is_empty!2553 (array_inv!1159 (_keys!4065 newMap!16)) (array_inv!1160 (_values!2368 newMap!16)) e!58501))))

(declare-fun b!89851 () Bool)

(assert (=> b!89851 (= e!58494 tp_is_empty!2553)))

(declare-fun b!89852 () Bool)

(declare-fun res!45901 () Bool)

(declare-fun e!58492 () Bool)

(assert (=> b!89852 (=> (not res!45901) (not e!58492))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!89852 (= res!45901 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2183 (_keys!4065 (v!2689 (underlying!301 thiss!992)))))))))

(declare-fun mapIsEmpty!3473 () Bool)

(assert (=> mapIsEmpty!3473 mapRes!3473))

(declare-fun b!89853 () Bool)

(declare-fun e!58500 () Bool)

(declare-fun e!58493 () Bool)

(assert (=> b!89853 (= e!58500 e!58493)))

(declare-fun res!45899 () Bool)

(assert (=> b!89853 (=> (not res!45899) (not e!58493))))

(declare-datatypes ((tuple2!2248 0))(
  ( (tuple2!2249 (_1!1134 Bool) (_2!1134 LongMapFixedSize!774)) )
))
(declare-fun lt!43207 () tuple2!2248)

(assert (=> b!89853 (= res!45899 (and (_1!1134 lt!43207) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2689 0))(
  ( (Unit!2690) )
))
(declare-fun lt!43198 () Unit!2689)

(declare-fun e!58487 () Unit!2689)

(assert (=> b!89853 (= lt!43198 e!58487)))

(declare-fun c!14956 () Bool)

(declare-datatypes ((tuple2!2250 0))(
  ( (tuple2!2251 (_1!1135 (_ BitVec 64)) (_2!1135 V!3051)) )
))
(declare-datatypes ((List!1562 0))(
  ( (Nil!1559) (Cons!1558 (h!2150 tuple2!2250) (t!5340 List!1562)) )
))
(declare-datatypes ((ListLongMap!1495 0))(
  ( (ListLongMap!1496 (toList!763 List!1562)) )
))
(declare-fun lt!43213 () ListLongMap!1495)

(declare-fun contains!772 (ListLongMap!1495 (_ BitVec 64)) Bool)

(assert (=> b!89853 (= c!14956 (contains!772 lt!43213 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355)))))

(declare-fun lt!43202 () V!3051)

(declare-fun update!126 (LongMapFixedSize!774 (_ BitVec 64) V!3051) tuple2!2248)

(assert (=> b!89853 (= lt!43207 (update!126 newMap!16 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) lt!43202))))

(declare-fun b!89854 () Bool)

(declare-fun res!45908 () Bool)

(assert (=> b!89854 (=> res!45908 e!58495)))

(declare-datatypes ((List!1563 0))(
  ( (Nil!1560) (Cons!1559 (h!2151 (_ BitVec 64)) (t!5341 List!1563)) )
))
(declare-fun arrayNoDuplicates!0 (array!4070 (_ BitVec 32) List!1563) Bool)

(assert (=> b!89854 (= res!45908 (not (arrayNoDuplicates!0 (_keys!4065 (v!2689 (underlying!301 thiss!992))) #b00000000000000000000000000000000 Nil!1560)))))

(declare-fun b!89855 () Bool)

(assert (=> b!89855 (= e!58495 (bvsle from!355 (size!2183 (_keys!4065 (v!2689 (underlying!301 thiss!992))))))))

(declare-fun b!89856 () Bool)

(declare-fun e!58503 () Bool)

(declare-fun e!58491 () Bool)

(assert (=> b!89856 (= e!58503 (and e!58491 mapRes!3473))))

(declare-fun condMapEmpty!3474 () Bool)

(declare-fun mapDefault!3474 () ValueCell!933)

(assert (=> b!89856 (= condMapEmpty!3474 (= (arr!1937 (_values!2368 (v!2689 (underlying!301 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!933)) mapDefault!3474)))))

(declare-fun mapNonEmpty!3474 () Bool)

(declare-fun mapRes!3474 () Bool)

(declare-fun tp!9064 () Bool)

(declare-fun e!58489 () Bool)

(assert (=> mapNonEmpty!3474 (= mapRes!3474 (and tp!9064 e!58489))))

(declare-fun mapValue!3473 () ValueCell!933)

(declare-fun mapRest!3474 () (Array (_ BitVec 32) ValueCell!933))

(declare-fun mapKey!3473 () (_ BitVec 32))

(assert (=> mapNonEmpty!3474 (= (arr!1937 (_values!2368 newMap!16)) (store mapRest!3474 mapKey!3473 mapValue!3473))))

(declare-fun res!45906 () Bool)

(assert (=> start!11068 (=> (not res!45906) (not e!58492))))

(declare-fun valid!337 (LongMap!580) Bool)

(assert (=> start!11068 (= res!45906 (valid!337 thiss!992))))

(assert (=> start!11068 e!58492))

(declare-fun e!58486 () Bool)

(assert (=> start!11068 e!58486))

(assert (=> start!11068 true))

(assert (=> start!11068 e!58488))

(declare-fun b!89857 () Bool)

(assert (=> b!89857 (= e!58493 (not e!58495))))

(declare-fun res!45900 () Bool)

(assert (=> b!89857 (=> res!45900 e!58495)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!89857 (= res!45900 (not (validMask!0 (mask!6435 (v!2689 (underlying!301 thiss!992))))))))

(declare-fun lt!43212 () ListLongMap!1495)

(declare-fun lt!43211 () tuple2!2250)

(declare-fun lt!43204 () ListLongMap!1495)

(declare-fun lt!43201 () tuple2!2250)

(declare-fun +!120 (ListLongMap!1495 tuple2!2250) ListLongMap!1495)

(assert (=> b!89857 (= (+!120 lt!43204 lt!43211) (+!120 (+!120 lt!43212 lt!43211) lt!43201))))

(assert (=> b!89857 (= lt!43211 (tuple2!2251 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2273 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun lt!43209 () Unit!2689)

(declare-fun addCommutativeForDiffKeys!39 (ListLongMap!1495 (_ BitVec 64) V!3051 (_ BitVec 64) V!3051) Unit!2689)

(assert (=> b!89857 (= lt!43209 (addCommutativeForDiffKeys!39 lt!43212 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) lt!43202 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2273 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun lt!43210 () ListLongMap!1495)

(assert (=> b!89857 (= lt!43210 lt!43204)))

(assert (=> b!89857 (= lt!43204 (+!120 lt!43212 lt!43201))))

(declare-fun lt!43208 () ListLongMap!1495)

(declare-fun lt!43196 () tuple2!2250)

(assert (=> b!89857 (= lt!43210 (+!120 lt!43208 lt!43196))))

(declare-fun lt!43203 () ListLongMap!1495)

(assert (=> b!89857 (= lt!43212 (+!120 lt!43203 lt!43196))))

(assert (=> b!89857 (= lt!43196 (tuple2!2251 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2273 (v!2689 (underlying!301 thiss!992)))))))

(assert (=> b!89857 (= lt!43208 (+!120 lt!43203 lt!43201))))

(assert (=> b!89857 (= lt!43201 (tuple2!2251 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) lt!43202))))

(declare-fun lt!43199 () Unit!2689)

(assert (=> b!89857 (= lt!43199 (addCommutativeForDiffKeys!39 lt!43203 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) lt!43202 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2273 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!84 (array!4070 array!4072 (_ BitVec 32) (_ BitVec 32) V!3051 V!3051 (_ BitVec 32) Int) ListLongMap!1495)

(assert (=> b!89857 (= lt!43203 (getCurrentListMapNoExtraKeys!84 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (_values!2368 (v!2689 (underlying!301 thiss!992))) (mask!6435 (v!2689 (underlying!301 thiss!992))) (extraKeys!2216 (v!2689 (underlying!301 thiss!992))) (zeroValue!2273 (v!2689 (underlying!301 thiss!992))) (minValue!2273 (v!2689 (underlying!301 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2385 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun b!89858 () Bool)

(declare-fun e!58496 () Bool)

(assert (=> b!89858 (= e!58486 e!58496)))

(declare-fun b!89859 () Bool)

(assert (=> b!89859 (= e!58489 tp_is_empty!2553)))

(declare-fun e!58498 () Bool)

(assert (=> b!89860 (= e!58498 (and tp!9065 tp_is_empty!2553 (array_inv!1159 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) (array_inv!1160 (_values!2368 (v!2689 (underlying!301 thiss!992)))) e!58503))))

(declare-fun b!89861 () Bool)

(declare-fun Unit!2691 () Unit!2689)

(assert (=> b!89861 (= e!58487 Unit!2691)))

(declare-fun b!89862 () Bool)

(declare-fun res!45907 () Bool)

(assert (=> b!89862 (=> (not res!45907) (not e!58492))))

(declare-fun valid!338 (LongMapFixedSize!774) Bool)

(assert (=> b!89862 (= res!45907 (valid!338 newMap!16))))

(declare-fun b!89863 () Bool)

(assert (=> b!89863 (= e!58496 e!58498)))

(declare-fun b!89864 () Bool)

(declare-fun res!45905 () Bool)

(assert (=> b!89864 (=> (not res!45905) (not e!58492))))

(assert (=> b!89864 (= res!45905 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6435 newMap!16)) (_size!436 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun mapIsEmpty!3474 () Bool)

(assert (=> mapIsEmpty!3474 mapRes!3474))

(declare-fun b!89865 () Bool)

(declare-fun e!58497 () Bool)

(assert (=> b!89865 (= e!58492 e!58497)))

(declare-fun res!45902 () Bool)

(assert (=> b!89865 (=> (not res!45902) (not e!58497))))

(declare-fun lt!43200 () ListLongMap!1495)

(assert (=> b!89865 (= res!45902 (= lt!43200 lt!43213))))

(declare-fun map!1204 (LongMapFixedSize!774) ListLongMap!1495)

(assert (=> b!89865 (= lt!43213 (map!1204 newMap!16))))

(declare-fun getCurrentListMap!446 (array!4070 array!4072 (_ BitVec 32) (_ BitVec 32) V!3051 V!3051 (_ BitVec 32) Int) ListLongMap!1495)

(assert (=> b!89865 (= lt!43200 (getCurrentListMap!446 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (_values!2368 (v!2689 (underlying!301 thiss!992))) (mask!6435 (v!2689 (underlying!301 thiss!992))) (extraKeys!2216 (v!2689 (underlying!301 thiss!992))) (zeroValue!2273 (v!2689 (underlying!301 thiss!992))) (minValue!2273 (v!2689 (underlying!301 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2385 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun b!89866 () Bool)

(assert (=> b!89866 (= e!58491 tp_is_empty!2553)))

(declare-fun b!89867 () Bool)

(assert (=> b!89867 (= e!58497 e!58500)))

(declare-fun res!45904 () Bool)

(assert (=> b!89867 (=> (not res!45904) (not e!58500))))

(assert (=> b!89867 (= res!45904 (and (not (= (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1231 (ValueCell!933 V!3051) V!3051)

(declare-fun dynLambda!356 (Int (_ BitVec 64)) V!3051)

(assert (=> b!89867 (= lt!43202 (get!1231 (select (arr!1937 (_values!2368 (v!2689 (underlying!301 thiss!992)))) from!355) (dynLambda!356 (defaultEntry!2385 (v!2689 (underlying!301 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!89868 () Bool)

(declare-fun res!45909 () Bool)

(assert (=> b!89868 (=> res!45909 e!58495)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4070 (_ BitVec 32)) Bool)

(assert (=> b!89868 (= res!45909 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (mask!6435 (v!2689 (underlying!301 thiss!992))))))))

(declare-fun b!89869 () Bool)

(assert (=> b!89869 (= e!58501 (and e!58499 mapRes!3474))))

(declare-fun condMapEmpty!3473 () Bool)

(declare-fun mapDefault!3473 () ValueCell!933)

(assert (=> b!89869 (= condMapEmpty!3473 (= (arr!1937 (_values!2368 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!933)) mapDefault!3473)))))

(declare-fun b!89870 () Bool)

(declare-fun Unit!2692 () Unit!2689)

(assert (=> b!89870 (= e!58487 Unit!2692)))

(declare-fun lt!43205 () Unit!2689)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!77 (array!4070 array!4072 (_ BitVec 32) (_ BitVec 32) V!3051 V!3051 (_ BitVec 64) (_ BitVec 32) Int) Unit!2689)

(assert (=> b!89870 (= lt!43205 (lemmaListMapContainsThenArrayContainsFrom!77 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (_values!2368 (v!2689 (underlying!301 thiss!992))) (mask!6435 (v!2689 (underlying!301 thiss!992))) (extraKeys!2216 (v!2689 (underlying!301 thiss!992))) (zeroValue!2273 (v!2689 (underlying!301 thiss!992))) (minValue!2273 (v!2689 (underlying!301 thiss!992))) (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2385 (v!2689 (underlying!301 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!89870 (arrayContainsKey!0 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43206 () Unit!2689)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4070 (_ BitVec 32) (_ BitVec 32)) Unit!2689)

(assert (=> b!89870 (= lt!43206 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4065 (v!2689 (underlying!301 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!89870 (arrayNoDuplicates!0 (_keys!4065 (v!2689 (underlying!301 thiss!992))) from!355 Nil!1560)))

(declare-fun lt!43197 () Unit!2689)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4070 (_ BitVec 32) (_ BitVec 64) List!1563) Unit!2689)

(assert (=> b!89870 (= lt!43197 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4065 (v!2689 (underlying!301 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) (Cons!1559 (select (arr!1936 (_keys!4065 (v!2689 (underlying!301 thiss!992)))) from!355) Nil!1560)))))

(assert (=> b!89870 false))

(assert (= (and start!11068 res!45906) b!89852))

(assert (= (and b!89852 res!45901) b!89862))

(assert (= (and b!89862 res!45907) b!89864))

(assert (= (and b!89864 res!45905) b!89865))

(assert (= (and b!89865 res!45902) b!89867))

(assert (= (and b!89867 res!45904) b!89853))

(assert (= (and b!89853 c!14956) b!89870))

(assert (= (and b!89853 (not c!14956)) b!89861))

(assert (= (and b!89853 res!45899) b!89857))

(assert (= (and b!89857 (not res!45900)) b!89849))

(assert (= (and b!89849 (not res!45903)) b!89868))

(assert (= (and b!89868 (not res!45909)) b!89854))

(assert (= (and b!89854 (not res!45908)) b!89855))

(assert (= (and b!89856 condMapEmpty!3474) mapIsEmpty!3473))

(assert (= (and b!89856 (not condMapEmpty!3474)) mapNonEmpty!3473))

(get-info :version)

(assert (= (and mapNonEmpty!3473 ((_ is ValueCellFull!933) mapValue!3474)) b!89851))

(assert (= (and b!89856 ((_ is ValueCellFull!933) mapDefault!3474)) b!89866))

(assert (= b!89860 b!89856))

(assert (= b!89863 b!89860))

(assert (= b!89858 b!89863))

(assert (= start!11068 b!89858))

(assert (= (and b!89869 condMapEmpty!3473) mapIsEmpty!3474))

(assert (= (and b!89869 (not condMapEmpty!3473)) mapNonEmpty!3474))

(assert (= (and mapNonEmpty!3474 ((_ is ValueCellFull!933) mapValue!3473)) b!89859))

(assert (= (and b!89869 ((_ is ValueCellFull!933) mapDefault!3473)) b!89848))

(assert (= b!89850 b!89869))

(assert (= start!11068 b!89850))

(declare-fun b_lambda!3973 () Bool)

(assert (=> (not b_lambda!3973) (not b!89867)))

(declare-fun t!5337 () Bool)

(declare-fun tb!1745 () Bool)

(assert (=> (and b!89860 (= (defaultEntry!2385 (v!2689 (underlying!301 thiss!992))) (defaultEntry!2385 (v!2689 (underlying!301 thiss!992)))) t!5337) tb!1745))

(declare-fun result!2993 () Bool)

(assert (=> tb!1745 (= result!2993 tp_is_empty!2553)))

(assert (=> b!89867 t!5337))

(declare-fun b_and!5389 () Bool)

(assert (= b_and!5385 (and (=> t!5337 result!2993) b_and!5389)))

(declare-fun t!5339 () Bool)

(declare-fun tb!1747 () Bool)

(assert (=> (and b!89850 (= (defaultEntry!2385 newMap!16) (defaultEntry!2385 (v!2689 (underlying!301 thiss!992)))) t!5339) tb!1747))

(declare-fun result!2997 () Bool)

(assert (= result!2997 result!2993))

(assert (=> b!89867 t!5339))

(declare-fun b_and!5391 () Bool)

(assert (= b_and!5387 (and (=> t!5339 result!2997) b_and!5391)))

(declare-fun m!96295 () Bool)

(assert (=> mapNonEmpty!3473 m!96295))

(declare-fun m!96297 () Bool)

(assert (=> b!89868 m!96297))

(declare-fun m!96299 () Bool)

(assert (=> b!89870 m!96299))

(declare-fun m!96301 () Bool)

(assert (=> b!89870 m!96301))

(declare-fun m!96303 () Bool)

(assert (=> b!89870 m!96303))

(declare-fun m!96305 () Bool)

(assert (=> b!89870 m!96305))

(assert (=> b!89870 m!96303))

(assert (=> b!89870 m!96303))

(declare-fun m!96307 () Bool)

(assert (=> b!89870 m!96307))

(assert (=> b!89870 m!96303))

(declare-fun m!96309 () Bool)

(assert (=> b!89870 m!96309))

(assert (=> b!89853 m!96303))

(assert (=> b!89853 m!96303))

(declare-fun m!96311 () Bool)

(assert (=> b!89853 m!96311))

(assert (=> b!89853 m!96303))

(declare-fun m!96313 () Bool)

(assert (=> b!89853 m!96313))

(declare-fun m!96315 () Bool)

(assert (=> b!89865 m!96315))

(declare-fun m!96317 () Bool)

(assert (=> b!89865 m!96317))

(declare-fun m!96319 () Bool)

(assert (=> b!89862 m!96319))

(declare-fun m!96321 () Bool)

(assert (=> start!11068 m!96321))

(declare-fun m!96323 () Bool)

(assert (=> b!89857 m!96323))

(assert (=> b!89857 m!96303))

(declare-fun m!96325 () Bool)

(assert (=> b!89857 m!96325))

(declare-fun m!96327 () Bool)

(assert (=> b!89857 m!96327))

(assert (=> b!89857 m!96303))

(assert (=> b!89857 m!96327))

(declare-fun m!96329 () Bool)

(assert (=> b!89857 m!96329))

(assert (=> b!89857 m!96303))

(declare-fun m!96331 () Bool)

(assert (=> b!89857 m!96331))

(declare-fun m!96333 () Bool)

(assert (=> b!89857 m!96333))

(declare-fun m!96335 () Bool)

(assert (=> b!89857 m!96335))

(declare-fun m!96337 () Bool)

(assert (=> b!89857 m!96337))

(declare-fun m!96339 () Bool)

(assert (=> b!89857 m!96339))

(declare-fun m!96341 () Bool)

(assert (=> b!89857 m!96341))

(declare-fun m!96343 () Bool)

(assert (=> b!89857 m!96343))

(declare-fun m!96345 () Bool)

(assert (=> mapNonEmpty!3474 m!96345))

(declare-fun m!96347 () Bool)

(assert (=> b!89860 m!96347))

(declare-fun m!96349 () Bool)

(assert (=> b!89860 m!96349))

(declare-fun m!96351 () Bool)

(assert (=> b!89854 m!96351))

(assert (=> b!89867 m!96303))

(declare-fun m!96353 () Bool)

(assert (=> b!89867 m!96353))

(declare-fun m!96355 () Bool)

(assert (=> b!89867 m!96355))

(assert (=> b!89867 m!96353))

(assert (=> b!89867 m!96355))

(declare-fun m!96357 () Bool)

(assert (=> b!89867 m!96357))

(declare-fun m!96359 () Bool)

(assert (=> b!89850 m!96359))

(declare-fun m!96361 () Bool)

(assert (=> b!89850 m!96361))

(check-sat (not b!89854) (not b!89850) (not b!89870) b_and!5391 (not b_next!2275) (not b!89862) (not b!89853) (not b_next!2273) (not mapNonEmpty!3473) b_and!5389 (not b!89867) (not start!11068) (not b!89865) tp_is_empty!2553 (not mapNonEmpty!3474) (not b!89868) (not b!89857) (not b!89860) (not b_lambda!3973))
(check-sat b_and!5389 b_and!5391 (not b_next!2273) (not b_next!2275))
