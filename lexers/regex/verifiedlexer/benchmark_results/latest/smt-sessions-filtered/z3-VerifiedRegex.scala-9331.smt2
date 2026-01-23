; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496578 () Bool)

(assert start!496578)

(declare-fun b!4805985 () Bool)

(declare-fun b_free!129827 () Bool)

(declare-fun b_next!130617 () Bool)

(assert (=> b!4805985 (= b_free!129827 (not b_next!130617))))

(declare-fun tp!1358639 () Bool)

(declare-fun b_and!341581 () Bool)

(assert (=> b!4805985 (= tp!1358639 b_and!341581)))

(declare-fun b!4805979 () Bool)

(declare-fun b_free!129829 () Bool)

(declare-fun b_next!130619 () Bool)

(assert (=> b!4805979 (= b_free!129829 (not b_next!130619))))

(declare-fun tp!1358636 () Bool)

(declare-fun b_and!341583 () Bool)

(assert (=> b!4805979 (= tp!1358636 b_and!341583)))

(declare-fun b!4805977 () Bool)

(declare-fun res!2044664 () Bool)

(declare-fun e!3001460 () Bool)

(assert (=> b!4805977 (=> (not res!2044664) (not e!3001460))))

(declare-datatypes ((K!15944 0))(
  ( (K!15945 (val!21061 Int)) )
))
(declare-datatypes ((array!18224 0))(
  ( (array!18225 (arr!8127 (Array (_ BitVec 32) (_ BitVec 64))) (size!36373 (_ BitVec 32))) )
))
(declare-datatypes ((V!16190 0))(
  ( (V!16191 (val!21062 Int)) )
))
(declare-datatypes ((tuple2!57090 0))(
  ( (tuple2!57091 (_1!31839 K!15944) (_2!31839 V!16190)) )
))
(declare-datatypes ((List!54498 0))(
  ( (Nil!54374) (Cons!54374 (h!60806 tuple2!57090) (t!361948 List!54498)) )
))
(declare-datatypes ((array!18226 0))(
  ( (array!18227 (arr!8128 (Array (_ BitVec 32) List!54498)) (size!36374 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9942 0))(
  ( (LongMapFixedSize!9943 (defaultEntry!5389 Int) (mask!14927 (_ BitVec 32)) (extraKeys!5246 (_ BitVec 32)) (zeroValue!5259 List!54498) (minValue!5259 List!54498) (_size!9967 (_ BitVec 32)) (_keys!5313 array!18224) (_values!5284 array!18226) (_vacant!5036 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19649 0))(
  ( (Cell!19650 (v!48576 LongMapFixedSize!9942)) )
))
(declare-datatypes ((MutLongMap!4971 0))(
  ( (LongMap!4971 (underlying!10149 Cell!19649)) (MutLongMapExt!4970 (__x!33011 Int)) )
))
(declare-datatypes ((Hashable!6982 0))(
  ( (HashableExt!6981 (__x!33012 Int)) )
))
(declare-datatypes ((Cell!19651 0))(
  ( (Cell!19652 (v!48577 MutLongMap!4971)) )
))
(declare-datatypes ((MutableMap!4855 0))(
  ( (MutableMapExt!4854 (__x!33013 Int)) (HashMap!4855 (underlying!10150 Cell!19651) (hashF!13250 Hashable!6982) (_size!9968 (_ BitVec 32)) (defaultValue!5026 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4855)

(declare-fun key!1652 () K!15944)

(declare-fun contains!18040 (MutLongMap!4971 (_ BitVec 64)) Bool)

(declare-fun hash!5050 (Hashable!6982 K!15944) (_ BitVec 64))

(assert (=> b!4805977 (= res!2044664 (contains!18040 (v!48577 (underlying!10150 thiss!41921)) (hash!5050 (hashF!13250 thiss!41921) key!1652)))))

(declare-fun mapNonEmpty!22031 () Bool)

(declare-fun mapRes!22031 () Bool)

(declare-fun tp!1358640 () Bool)

(declare-fun tp!1358638 () Bool)

(assert (=> mapNonEmpty!22031 (= mapRes!22031 (and tp!1358640 tp!1358638))))

(declare-fun mapRest!22031 () (Array (_ BitVec 32) List!54498))

(declare-fun mapValue!22031 () List!54498)

(declare-fun mapKey!22031 () (_ BitVec 32))

(assert (=> mapNonEmpty!22031 (= (arr!8128 (_values!5284 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) (store mapRest!22031 mapKey!22031 mapValue!22031))))

(declare-fun b!4805978 () Bool)

(declare-fun e!3001459 () Bool)

(declare-fun e!3001458 () Bool)

(assert (=> b!4805978 (= e!3001459 e!3001458)))

(declare-fun e!3001457 () Bool)

(declare-fun e!3001463 () Bool)

(assert (=> b!4805979 (= e!3001457 (and e!3001463 tp!1358636))))

(declare-fun b!4805980 () Bool)

(declare-fun res!2044663 () Bool)

(assert (=> b!4805980 (=> (not res!2044663) (not e!3001460))))

(declare-fun valid!3978 (MutableMap!4855) Bool)

(assert (=> b!4805980 (= res!2044663 (valid!3978 thiss!41921))))

(declare-fun b!4805981 () Bool)

(declare-fun e!3001462 () Bool)

(assert (=> b!4805981 (= e!3001462 e!3001459)))

(declare-fun res!2044661 () Bool)

(assert (=> start!496578 (=> (not res!2044661) (not e!3001460))))

(get-info :version)

(assert (=> start!496578 (= res!2044661 ((_ is HashMap!4855) thiss!41921))))

(assert (=> start!496578 e!3001460))

(assert (=> start!496578 e!3001457))

(declare-fun tp_is_empty!33783 () Bool)

(assert (=> start!496578 tp_is_empty!33783))

(declare-fun b!4805982 () Bool)

(declare-fun valid!3979 (MutLongMap!4971) Bool)

(assert (=> b!4805982 (= e!3001460 (not (valid!3979 (v!48577 (underlying!10150 thiss!41921)))))))

(declare-fun b!4805983 () Bool)

(declare-fun lt!1959865 () MutLongMap!4971)

(assert (=> b!4805983 (= e!3001463 (and e!3001462 ((_ is LongMap!4971) lt!1959865)))))

(assert (=> b!4805983 (= lt!1959865 (v!48577 (underlying!10150 thiss!41921)))))

(declare-fun b!4805984 () Bool)

(declare-fun e!3001464 () Bool)

(declare-fun tp!1358641 () Bool)

(assert (=> b!4805984 (= e!3001464 (and tp!1358641 mapRes!22031))))

(declare-fun condMapEmpty!22031 () Bool)

(declare-fun mapDefault!22031 () List!54498)

(assert (=> b!4805984 (= condMapEmpty!22031 (= (arr!8128 (_values!5284 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54498)) mapDefault!22031)))))

(declare-fun tp!1358637 () Bool)

(declare-fun tp!1358642 () Bool)

(declare-fun array_inv!5853 (array!18224) Bool)

(declare-fun array_inv!5854 (array!18226) Bool)

(assert (=> b!4805985 (= e!3001458 (and tp!1358639 tp!1358642 tp!1358637 (array_inv!5853 (_keys!5313 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) (array_inv!5854 (_values!5284 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) e!3001464))))

(declare-fun mapIsEmpty!22031 () Bool)

(assert (=> mapIsEmpty!22031 mapRes!22031))

(declare-fun b!4805986 () Bool)

(declare-fun res!2044662 () Bool)

(assert (=> b!4805986 (=> (not res!2044662) (not e!3001460))))

(assert (=> b!4805986 (= res!2044662 ((_ is LongMap!4971) (v!48577 (underlying!10150 thiss!41921))))))

(assert (= (and start!496578 res!2044661) b!4805980))

(assert (= (and b!4805980 res!2044663) b!4805977))

(assert (= (and b!4805977 res!2044664) b!4805986))

(assert (= (and b!4805986 res!2044662) b!4805982))

(assert (= (and b!4805984 condMapEmpty!22031) mapIsEmpty!22031))

(assert (= (and b!4805984 (not condMapEmpty!22031)) mapNonEmpty!22031))

(assert (= b!4805985 b!4805984))

(assert (= b!4805978 b!4805985))

(assert (= b!4805981 b!4805978))

(assert (= (and b!4805983 ((_ is LongMap!4971) (v!48577 (underlying!10150 thiss!41921)))) b!4805981))

(assert (= b!4805979 b!4805983))

(assert (= (and start!496578 ((_ is HashMap!4855) thiss!41921)) b!4805979))

(declare-fun m!5792510 () Bool)

(assert (=> b!4805982 m!5792510))

(declare-fun m!5792512 () Bool)

(assert (=> b!4805980 m!5792512))

(declare-fun m!5792514 () Bool)

(assert (=> mapNonEmpty!22031 m!5792514))

(declare-fun m!5792516 () Bool)

(assert (=> b!4805985 m!5792516))

(declare-fun m!5792518 () Bool)

(assert (=> b!4805985 m!5792518))

(declare-fun m!5792520 () Bool)

(assert (=> b!4805977 m!5792520))

(assert (=> b!4805977 m!5792520))

(declare-fun m!5792522 () Bool)

(assert (=> b!4805977 m!5792522))

(check-sat b_and!341583 (not b!4805984) (not b_next!130617) b_and!341581 (not b!4805977) (not b!4805985) (not b_next!130619) tp_is_empty!33783 (not b!4805982) (not b!4805980) (not mapNonEmpty!22031))
(check-sat b_and!341581 b_and!341583 (not b_next!130617) (not b_next!130619))
(get-model)

(declare-fun d!1539708 () Bool)

(declare-fun res!2044669 () Bool)

(declare-fun e!3001467 () Bool)

(assert (=> d!1539708 (=> (not res!2044669) (not e!3001467))))

(assert (=> d!1539708 (= res!2044669 (valid!3979 (v!48577 (underlying!10150 thiss!41921))))))

(assert (=> d!1539708 (= (valid!3978 thiss!41921) e!3001467)))

(declare-fun b!4805991 () Bool)

(declare-fun res!2044670 () Bool)

(assert (=> b!4805991 (=> (not res!2044670) (not e!3001467))))

(declare-fun lambda!233456 () Int)

(declare-datatypes ((tuple2!57092 0))(
  ( (tuple2!57093 (_1!31840 (_ BitVec 64)) (_2!31840 List!54498)) )
))
(declare-datatypes ((List!54499 0))(
  ( (Nil!54375) (Cons!54375 (h!60807 tuple2!57092) (t!361949 List!54499)) )
))
(declare-fun forall!12366 (List!54499 Int) Bool)

(declare-datatypes ((ListLongMap!5459 0))(
  ( (ListLongMap!5460 (toList!7037 List!54499)) )
))
(declare-fun map!12294 (MutLongMap!4971) ListLongMap!5459)

(assert (=> b!4805991 (= res!2044670 (forall!12366 (toList!7037 (map!12294 (v!48577 (underlying!10150 thiss!41921)))) lambda!233456))))

(declare-fun b!4805992 () Bool)

(declare-fun allKeysSameHashInMap!2384 (ListLongMap!5459 Hashable!6982) Bool)

(assert (=> b!4805992 (= e!3001467 (allKeysSameHashInMap!2384 (map!12294 (v!48577 (underlying!10150 thiss!41921))) (hashF!13250 thiss!41921)))))

(assert (= (and d!1539708 res!2044669) b!4805991))

(assert (= (and b!4805991 res!2044670) b!4805992))

(assert (=> d!1539708 m!5792510))

(declare-fun m!5792524 () Bool)

(assert (=> b!4805991 m!5792524))

(declare-fun m!5792526 () Bool)

(assert (=> b!4805991 m!5792526))

(assert (=> b!4805992 m!5792524))

(assert (=> b!4805992 m!5792524))

(declare-fun m!5792528 () Bool)

(assert (=> b!4805992 m!5792528))

(assert (=> b!4805980 d!1539708))

(declare-fun d!1539710 () Bool)

(assert (=> d!1539710 (= (array_inv!5853 (_keys!5313 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) (bvsge (size!36373 (_keys!5313 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4805985 d!1539710))

(declare-fun d!1539712 () Bool)

(assert (=> d!1539712 (= (array_inv!5854 (_values!5284 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) (bvsge (size!36374 (_values!5284 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4805985 d!1539712))

(declare-fun d!1539714 () Bool)

(declare-fun valid!3980 (LongMapFixedSize!9942) Bool)

(assert (=> d!1539714 (= (valid!3979 (v!48577 (underlying!10150 thiss!41921))) (valid!3980 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921))))))))

(declare-fun bs!1159852 () Bool)

(assert (= bs!1159852 d!1539714))

(declare-fun m!5792530 () Bool)

(assert (=> bs!1159852 m!5792530))

(assert (=> b!4805982 d!1539714))

(declare-fun d!1539716 () Bool)

(declare-fun lt!1959868 () Bool)

(declare-fun contains!18041 (ListLongMap!5459 (_ BitVec 64)) Bool)

(assert (=> d!1539716 (= lt!1959868 (contains!18041 (map!12294 (v!48577 (underlying!10150 thiss!41921))) (hash!5050 (hashF!13250 thiss!41921) key!1652)))))

(declare-fun contains!18042 (LongMapFixedSize!9942 (_ BitVec 64)) Bool)

(assert (=> d!1539716 (= lt!1959868 (contains!18042 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921)))) (hash!5050 (hashF!13250 thiss!41921) key!1652)))))

(assert (=> d!1539716 (valid!3979 (v!48577 (underlying!10150 thiss!41921)))))

(assert (=> d!1539716 (= (contains!18040 (v!48577 (underlying!10150 thiss!41921)) (hash!5050 (hashF!13250 thiss!41921) key!1652)) lt!1959868)))

(declare-fun bs!1159853 () Bool)

(assert (= bs!1159853 d!1539716))

(assert (=> bs!1159853 m!5792524))

(assert (=> bs!1159853 m!5792524))

(assert (=> bs!1159853 m!5792520))

(declare-fun m!5792532 () Bool)

(assert (=> bs!1159853 m!5792532))

(assert (=> bs!1159853 m!5792520))

(declare-fun m!5792534 () Bool)

(assert (=> bs!1159853 m!5792534))

(assert (=> bs!1159853 m!5792510))

(assert (=> b!4805977 d!1539716))

(declare-fun d!1539718 () Bool)

(declare-fun hash!5051 (Hashable!6982 K!15944) (_ BitVec 64))

(assert (=> d!1539718 (= (hash!5050 (hashF!13250 thiss!41921) key!1652) (hash!5051 (hashF!13250 thiss!41921) key!1652))))

(declare-fun bs!1159854 () Bool)

(assert (= bs!1159854 d!1539718))

(declare-fun m!5792536 () Bool)

(assert (=> bs!1159854 m!5792536))

(assert (=> b!4805977 d!1539718))

(declare-fun e!3001470 () Bool)

(declare-fun tp_is_empty!33785 () Bool)

(declare-fun b!4805997 () Bool)

(declare-fun tp!1358645 () Bool)

(assert (=> b!4805997 (= e!3001470 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358645))))

(assert (=> b!4805985 (= tp!1358642 e!3001470)))

(assert (= (and b!4805985 ((_ is Cons!54374) (zeroValue!5259 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921))))))) b!4805997))

(declare-fun tp!1358646 () Bool)

(declare-fun b!4805998 () Bool)

(declare-fun e!3001471 () Bool)

(assert (=> b!4805998 (= e!3001471 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358646))))

(assert (=> b!4805985 (= tp!1358637 e!3001471)))

(assert (= (and b!4805985 ((_ is Cons!54374) (minValue!5259 (v!48576 (underlying!10149 (v!48577 (underlying!10150 thiss!41921))))))) b!4805998))

(declare-fun tp!1358647 () Bool)

(declare-fun e!3001472 () Bool)

(declare-fun b!4805999 () Bool)

(assert (=> b!4805999 (= e!3001472 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358647))))

(assert (=> b!4805984 (= tp!1358641 e!3001472)))

(assert (= (and b!4805984 ((_ is Cons!54374) mapDefault!22031)) b!4805999))

(declare-fun condMapEmpty!22034 () Bool)

(declare-fun mapDefault!22034 () List!54498)

(assert (=> mapNonEmpty!22031 (= condMapEmpty!22034 (= mapRest!22031 ((as const (Array (_ BitVec 32) List!54498)) mapDefault!22034)))))

(declare-fun e!3001477 () Bool)

(declare-fun mapRes!22034 () Bool)

(assert (=> mapNonEmpty!22031 (= tp!1358640 (and e!3001477 mapRes!22034))))

(declare-fun mapIsEmpty!22034 () Bool)

(assert (=> mapIsEmpty!22034 mapRes!22034))

(declare-fun tp!1358654 () Bool)

(declare-fun e!3001478 () Bool)

(declare-fun b!4806006 () Bool)

(assert (=> b!4806006 (= e!3001478 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358654))))

(declare-fun tp!1358655 () Bool)

(declare-fun b!4806007 () Bool)

(assert (=> b!4806007 (= e!3001477 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358655))))

(declare-fun mapNonEmpty!22034 () Bool)

(declare-fun tp!1358656 () Bool)

(assert (=> mapNonEmpty!22034 (= mapRes!22034 (and tp!1358656 e!3001478))))

(declare-fun mapValue!22034 () List!54498)

(declare-fun mapRest!22034 () (Array (_ BitVec 32) List!54498))

(declare-fun mapKey!22034 () (_ BitVec 32))

(assert (=> mapNonEmpty!22034 (= mapRest!22031 (store mapRest!22034 mapKey!22034 mapValue!22034))))

(assert (= (and mapNonEmpty!22031 condMapEmpty!22034) mapIsEmpty!22034))

(assert (= (and mapNonEmpty!22031 (not condMapEmpty!22034)) mapNonEmpty!22034))

(assert (= (and mapNonEmpty!22034 ((_ is Cons!54374) mapValue!22034)) b!4806006))

(assert (= (and mapNonEmpty!22031 ((_ is Cons!54374) mapDefault!22034)) b!4806007))

(declare-fun m!5792538 () Bool)

(assert (=> mapNonEmpty!22034 m!5792538))

(declare-fun e!3001479 () Bool)

(declare-fun b!4806008 () Bool)

(declare-fun tp!1358657 () Bool)

(assert (=> b!4806008 (= e!3001479 (and tp_is_empty!33783 tp_is_empty!33785 tp!1358657))))

(assert (=> mapNonEmpty!22031 (= tp!1358638 e!3001479)))

(assert (= (and mapNonEmpty!22031 ((_ is Cons!54374) mapValue!22031)) b!4806008))

(check-sat (not b!4806008) (not mapNonEmpty!22034) b_and!341581 tp_is_empty!33785 (not d!1539718) tp_is_empty!33783 (not b!4806006) b_and!341583 (not d!1539716) (not d!1539708) (not b!4805991) (not b_next!130617) (not b!4805998) (not b!4806007) (not b!4805997) (not b!4805992) (not b_next!130619) (not d!1539714) (not b!4805999))
(check-sat b_and!341581 b_and!341583 (not b_next!130617) (not b_next!130619))
