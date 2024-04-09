; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8062 () Bool)

(assert start!8062)

(declare-fun b!50646 () Bool)

(declare-fun b_free!1553 () Bool)

(declare-fun b_next!1553 () Bool)

(assert (=> b!50646 (= b_free!1553 (not b_next!1553))))

(declare-fun tp!6724 () Bool)

(declare-fun b_and!2773 () Bool)

(assert (=> b!50646 (= tp!6724 b_and!2773)))

(declare-fun b!50647 () Bool)

(declare-fun b_free!1555 () Bool)

(declare-fun b_next!1555 () Bool)

(assert (=> b!50647 (= b_free!1555 (not b_next!1555))))

(declare-fun tp!6723 () Bool)

(declare-fun b_and!2775 () Bool)

(assert (=> b!50647 (= tp!6723 b_and!2775)))

(declare-fun b!50635 () Bool)

(declare-fun e!32737 () Bool)

(declare-datatypes ((V!2571 0))(
  ( (V!2572 (val!1141 Int)) )
))
(declare-datatypes ((array!3298 0))(
  ( (array!3299 (arr!1576 (Array (_ BitVec 32) (_ BitVec 64))) (size!1800 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!753 0))(
  ( (ValueCellFull!753 (v!2166 V!2571)) (EmptyCell!753) )
))
(declare-datatypes ((array!3300 0))(
  ( (array!3301 (arr!1577 (Array (_ BitVec 32) ValueCell!753)) (size!1801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!414 0))(
  ( (LongMapFixedSize!415 (defaultEntry!1921 Int) (mask!5713 (_ BitVec 32)) (extraKeys!1812 (_ BitVec 32)) (zeroValue!1839 V!2571) (minValue!1839 V!2571) (_size!256 (_ BitVec 32)) (_keys!3531 array!3298) (_values!1904 array!3300) (_vacant!256 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!236 0))(
  ( (Cell!237 (v!2167 LongMapFixedSize!414)) )
))
(declare-datatypes ((LongMap!236 0))(
  ( (LongMap!237 (underlying!129 Cell!236)) )
))
(declare-fun thiss!992 () LongMap!236)

(assert (=> b!50635 (= e!32737 (and (= (size!1801 (_values!1904 (v!2167 (underlying!129 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5713 (v!2167 (underlying!129 thiss!992))))) (not (= (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) (size!1801 (_values!1904 (v!2167 (underlying!129 thiss!992))))))))))

(declare-fun b!50636 () Bool)

(declare-fun e!32744 () Bool)

(declare-fun e!32742 () Bool)

(assert (=> b!50636 (= e!32744 e!32742)))

(declare-fun mapNonEmpty!2213 () Bool)

(declare-fun mapRes!2214 () Bool)

(declare-fun tp!6725 () Bool)

(declare-fun e!32749 () Bool)

(assert (=> mapNonEmpty!2213 (= mapRes!2214 (and tp!6725 e!32749))))

(declare-fun mapRest!2214 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapKey!2214 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!414)

(declare-fun mapValue!2213 () ValueCell!753)

(assert (=> mapNonEmpty!2213 (= (arr!1577 (_values!1904 newMap!16)) (store mapRest!2214 mapKey!2214 mapValue!2213))))

(declare-fun b!50637 () Bool)

(declare-fun e!32740 () Bool)

(declare-fun e!32743 () Bool)

(declare-fun mapRes!2213 () Bool)

(assert (=> b!50637 (= e!32740 (and e!32743 mapRes!2213))))

(declare-fun condMapEmpty!2214 () Bool)

(declare-fun mapDefault!2214 () ValueCell!753)

(assert (=> b!50637 (= condMapEmpty!2214 (= (arr!1577 (_values!1904 (v!2167 (underlying!129 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2214)))))

(declare-fun mapIsEmpty!2213 () Bool)

(assert (=> mapIsEmpty!2213 mapRes!2214))

(declare-fun b!50638 () Bool)

(declare-fun res!29113 () Bool)

(assert (=> b!50638 (=> (not res!29113) (not e!32737))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50638 (= res!29113 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))))))))

(declare-fun res!29116 () Bool)

(assert (=> start!8062 (=> (not res!29116) (not e!32737))))

(declare-fun valid!139 (LongMap!236) Bool)

(assert (=> start!8062 (= res!29116 (valid!139 thiss!992))))

(assert (=> start!8062 e!32737))

(assert (=> start!8062 e!32744))

(assert (=> start!8062 true))

(declare-fun e!32746 () Bool)

(assert (=> start!8062 e!32746))

(declare-fun b!50639 () Bool)

(declare-fun res!29115 () Bool)

(assert (=> b!50639 (=> (not res!29115) (not e!32737))))

(assert (=> b!50639 (= res!29115 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5713 newMap!16)) (_size!256 (v!2167 (underlying!129 thiss!992)))))))

(declare-fun b!50640 () Bool)

(declare-fun tp_is_empty!2193 () Bool)

(assert (=> b!50640 (= e!32743 tp_is_empty!2193)))

(declare-fun b!50641 () Bool)

(assert (=> b!50641 (= e!32749 tp_is_empty!2193)))

(declare-fun b!50642 () Bool)

(declare-fun e!32747 () Bool)

(assert (=> b!50642 (= e!32742 e!32747)))

(declare-fun mapIsEmpty!2214 () Bool)

(assert (=> mapIsEmpty!2214 mapRes!2213))

(declare-fun b!50643 () Bool)

(declare-fun e!32739 () Bool)

(declare-fun e!32745 () Bool)

(assert (=> b!50643 (= e!32739 (and e!32745 mapRes!2214))))

(declare-fun condMapEmpty!2213 () Bool)

(declare-fun mapDefault!2213 () ValueCell!753)

(assert (=> b!50643 (= condMapEmpty!2213 (= (arr!1577 (_values!1904 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2213)))))

(declare-fun b!50644 () Bool)

(declare-fun res!29114 () Bool)

(assert (=> b!50644 (=> (not res!29114) (not e!32737))))

(declare-fun valid!140 (LongMapFixedSize!414) Bool)

(assert (=> b!50644 (= res!29114 (valid!140 newMap!16))))

(declare-fun b!50645 () Bool)

(assert (=> b!50645 (= e!32745 tp_is_empty!2193)))

(declare-fun array_inv!917 (array!3298) Bool)

(declare-fun array_inv!918 (array!3300) Bool)

(assert (=> b!50646 (= e!32747 (and tp!6724 tp_is_empty!2193 (array_inv!917 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) (array_inv!918 (_values!1904 (v!2167 (underlying!129 thiss!992)))) e!32740))))

(assert (=> b!50647 (= e!32746 (and tp!6723 tp_is_empty!2193 (array_inv!917 (_keys!3531 newMap!16)) (array_inv!918 (_values!1904 newMap!16)) e!32739))))

(declare-fun b!50648 () Bool)

(declare-fun e!32748 () Bool)

(assert (=> b!50648 (= e!32748 tp_is_empty!2193)))

(declare-fun mapNonEmpty!2214 () Bool)

(declare-fun tp!6726 () Bool)

(assert (=> mapNonEmpty!2214 (= mapRes!2213 (and tp!6726 e!32748))))

(declare-fun mapRest!2213 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapValue!2214 () ValueCell!753)

(declare-fun mapKey!2213 () (_ BitVec 32))

(assert (=> mapNonEmpty!2214 (= (arr!1577 (_values!1904 (v!2167 (underlying!129 thiss!992)))) (store mapRest!2213 mapKey!2213 mapValue!2214))))

(declare-fun b!50649 () Bool)

(declare-fun res!29112 () Bool)

(assert (=> b!50649 (=> (not res!29112) (not e!32737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50649 (= res!29112 (validMask!0 (mask!5713 (v!2167 (underlying!129 thiss!992)))))))

(assert (= (and start!8062 res!29116) b!50638))

(assert (= (and b!50638 res!29113) b!50644))

(assert (= (and b!50644 res!29114) b!50639))

(assert (= (and b!50639 res!29115) b!50649))

(assert (= (and b!50649 res!29112) b!50635))

(assert (= (and b!50637 condMapEmpty!2214) mapIsEmpty!2214))

(assert (= (and b!50637 (not condMapEmpty!2214)) mapNonEmpty!2214))

(get-info :version)

(assert (= (and mapNonEmpty!2214 ((_ is ValueCellFull!753) mapValue!2214)) b!50648))

(assert (= (and b!50637 ((_ is ValueCellFull!753) mapDefault!2214)) b!50640))

(assert (= b!50646 b!50637))

(assert (= b!50642 b!50646))

(assert (= b!50636 b!50642))

(assert (= start!8062 b!50636))

(assert (= (and b!50643 condMapEmpty!2213) mapIsEmpty!2213))

(assert (= (and b!50643 (not condMapEmpty!2213)) mapNonEmpty!2213))

(assert (= (and mapNonEmpty!2213 ((_ is ValueCellFull!753) mapValue!2213)) b!50641))

(assert (= (and b!50643 ((_ is ValueCellFull!753) mapDefault!2213)) b!50645))

(assert (= b!50647 b!50643))

(assert (= start!8062 b!50647))

(declare-fun m!43863 () Bool)

(assert (=> start!8062 m!43863))

(declare-fun m!43865 () Bool)

(assert (=> b!50646 m!43865))

(declare-fun m!43867 () Bool)

(assert (=> b!50646 m!43867))

(declare-fun m!43869 () Bool)

(assert (=> mapNonEmpty!2213 m!43869))

(declare-fun m!43871 () Bool)

(assert (=> b!50647 m!43871))

(declare-fun m!43873 () Bool)

(assert (=> b!50647 m!43873))

(declare-fun m!43875 () Bool)

(assert (=> b!50644 m!43875))

(declare-fun m!43877 () Bool)

(assert (=> mapNonEmpty!2214 m!43877))

(declare-fun m!43879 () Bool)

(assert (=> b!50649 m!43879))

(check-sat (not b!50646) b_and!2773 (not b!50644) (not mapNonEmpty!2214) (not b!50647) (not start!8062) (not mapNonEmpty!2213) (not b_next!1553) (not b!50649) tp_is_empty!2193 b_and!2775 (not b_next!1555))
(check-sat b_and!2773 b_and!2775 (not b_next!1553) (not b_next!1555))
(get-model)

(declare-fun d!10233 () Bool)

(assert (=> d!10233 (= (validMask!0 (mask!5713 (v!2167 (underlying!129 thiss!992)))) (and (or (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000001111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000011111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000001111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000011111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000001111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000011111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000001111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000011111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000001111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000011111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000001111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000011111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000001111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000011111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000001111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000011111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000111111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00001111111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00011111111111111111111111111111) (= (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!50649 d!10233))

(declare-fun d!10235 () Bool)

(declare-fun res!29138 () Bool)

(declare-fun e!32791 () Bool)

(assert (=> d!10235 (=> (not res!29138) (not e!32791))))

(declare-fun simpleValid!34 (LongMapFixedSize!414) Bool)

(assert (=> d!10235 (= res!29138 (simpleValid!34 newMap!16))))

(assert (=> d!10235 (= (valid!140 newMap!16) e!32791)))

(declare-fun b!50701 () Bool)

(declare-fun res!29139 () Bool)

(assert (=> b!50701 (=> (not res!29139) (not e!32791))))

(declare-fun arrayCountValidKeys!0 (array!3298 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!50701 (= res!29139 (= (arrayCountValidKeys!0 (_keys!3531 newMap!16) #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))) (_size!256 newMap!16)))))

(declare-fun b!50702 () Bool)

(declare-fun res!29140 () Bool)

(assert (=> b!50702 (=> (not res!29140) (not e!32791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3298 (_ BitVec 32)) Bool)

(assert (=> b!50702 (= res!29140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3531 newMap!16) (mask!5713 newMap!16)))))

(declare-fun b!50703 () Bool)

(declare-datatypes ((List!1349 0))(
  ( (Nil!1346) (Cons!1345 (h!1925 (_ BitVec 64)) (t!4391 List!1349)) )
))
(declare-fun arrayNoDuplicates!0 (array!3298 (_ BitVec 32) List!1349) Bool)

(assert (=> b!50703 (= e!32791 (arrayNoDuplicates!0 (_keys!3531 newMap!16) #b00000000000000000000000000000000 Nil!1346))))

(assert (= (and d!10235 res!29138) b!50701))

(assert (= (and b!50701 res!29139) b!50702))

(assert (= (and b!50702 res!29140) b!50703))

(declare-fun m!43899 () Bool)

(assert (=> d!10235 m!43899))

(declare-fun m!43901 () Bool)

(assert (=> b!50701 m!43901))

(declare-fun m!43903 () Bool)

(assert (=> b!50702 m!43903))

(declare-fun m!43905 () Bool)

(assert (=> b!50703 m!43905))

(assert (=> b!50644 d!10235))

(declare-fun d!10237 () Bool)

(assert (=> d!10237 (= (array_inv!917 (_keys!3531 newMap!16)) (bvsge (size!1800 (_keys!3531 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50647 d!10237))

(declare-fun d!10239 () Bool)

(assert (=> d!10239 (= (array_inv!918 (_values!1904 newMap!16)) (bvsge (size!1801 (_values!1904 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50647 d!10239))

(declare-fun d!10241 () Bool)

(assert (=> d!10241 (= (valid!139 thiss!992) (valid!140 (v!2167 (underlying!129 thiss!992))))))

(declare-fun bs!2364 () Bool)

(assert (= bs!2364 d!10241))

(declare-fun m!43907 () Bool)

(assert (=> bs!2364 m!43907))

(assert (=> start!8062 d!10241))

(declare-fun d!10243 () Bool)

(assert (=> d!10243 (= (array_inv!917 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) (bvsge (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50646 d!10243))

(declare-fun d!10245 () Bool)

(assert (=> d!10245 (= (array_inv!918 (_values!1904 (v!2167 (underlying!129 thiss!992)))) (bvsge (size!1801 (_values!1904 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50646 d!10245))

(declare-fun b!50711 () Bool)

(declare-fun e!32797 () Bool)

(assert (=> b!50711 (= e!32797 tp_is_empty!2193)))

(declare-fun b!50710 () Bool)

(declare-fun e!32796 () Bool)

(assert (=> b!50710 (= e!32796 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2223 () Bool)

(declare-fun mapRes!2223 () Bool)

(assert (=> mapIsEmpty!2223 mapRes!2223))

(declare-fun condMapEmpty!2223 () Bool)

(declare-fun mapDefault!2223 () ValueCell!753)

(assert (=> mapNonEmpty!2213 (= condMapEmpty!2223 (= mapRest!2214 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2223)))))

(assert (=> mapNonEmpty!2213 (= tp!6725 (and e!32797 mapRes!2223))))

(declare-fun mapNonEmpty!2223 () Bool)

(declare-fun tp!6741 () Bool)

(assert (=> mapNonEmpty!2223 (= mapRes!2223 (and tp!6741 e!32796))))

(declare-fun mapRest!2223 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapValue!2223 () ValueCell!753)

(declare-fun mapKey!2223 () (_ BitVec 32))

(assert (=> mapNonEmpty!2223 (= mapRest!2214 (store mapRest!2223 mapKey!2223 mapValue!2223))))

(assert (= (and mapNonEmpty!2213 condMapEmpty!2223) mapIsEmpty!2223))

(assert (= (and mapNonEmpty!2213 (not condMapEmpty!2223)) mapNonEmpty!2223))

(assert (= (and mapNonEmpty!2223 ((_ is ValueCellFull!753) mapValue!2223)) b!50710))

(assert (= (and mapNonEmpty!2213 ((_ is ValueCellFull!753) mapDefault!2223)) b!50711))

(declare-fun m!43909 () Bool)

(assert (=> mapNonEmpty!2223 m!43909))

(declare-fun b!50713 () Bool)

(declare-fun e!32799 () Bool)

(assert (=> b!50713 (= e!32799 tp_is_empty!2193)))

(declare-fun b!50712 () Bool)

(declare-fun e!32798 () Bool)

(assert (=> b!50712 (= e!32798 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2224 () Bool)

(declare-fun mapRes!2224 () Bool)

(assert (=> mapIsEmpty!2224 mapRes!2224))

(declare-fun condMapEmpty!2224 () Bool)

(declare-fun mapDefault!2224 () ValueCell!753)

(assert (=> mapNonEmpty!2214 (= condMapEmpty!2224 (= mapRest!2213 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2224)))))

(assert (=> mapNonEmpty!2214 (= tp!6726 (and e!32799 mapRes!2224))))

(declare-fun mapNonEmpty!2224 () Bool)

(declare-fun tp!6742 () Bool)

(assert (=> mapNonEmpty!2224 (= mapRes!2224 (and tp!6742 e!32798))))

(declare-fun mapRest!2224 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapKey!2224 () (_ BitVec 32))

(declare-fun mapValue!2224 () ValueCell!753)

(assert (=> mapNonEmpty!2224 (= mapRest!2213 (store mapRest!2224 mapKey!2224 mapValue!2224))))

(assert (= (and mapNonEmpty!2214 condMapEmpty!2224) mapIsEmpty!2224))

(assert (= (and mapNonEmpty!2214 (not condMapEmpty!2224)) mapNonEmpty!2224))

(assert (= (and mapNonEmpty!2224 ((_ is ValueCellFull!753) mapValue!2224)) b!50712))

(assert (= (and mapNonEmpty!2214 ((_ is ValueCellFull!753) mapDefault!2224)) b!50713))

(declare-fun m!43911 () Bool)

(assert (=> mapNonEmpty!2224 m!43911))

(check-sat (not d!10241) (not mapNonEmpty!2223) b_and!2773 (not b!50701) (not d!10235) (not mapNonEmpty!2224) (not b!50702) tp_is_empty!2193 (not b!50703) (not b_next!1553) b_and!2775 (not b_next!1555))
(check-sat b_and!2773 b_and!2775 (not b_next!1553) (not b_next!1555))
(get-model)

(declare-fun b!50724 () Bool)

(declare-fun e!32809 () Bool)

(declare-fun call!3906 () Bool)

(assert (=> b!50724 (= e!32809 call!3906)))

(declare-fun bm!3903 () Bool)

(declare-fun c!6838 () Bool)

(assert (=> bm!3903 (= call!3906 (arrayNoDuplicates!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6838 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) Nil!1346) Nil!1346)))))

(declare-fun d!10247 () Bool)

(declare-fun res!29149 () Bool)

(declare-fun e!32810 () Bool)

(assert (=> d!10247 (=> res!29149 e!32810)))

(assert (=> d!10247 (= res!29149 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10247 (= (arrayNoDuplicates!0 (_keys!3531 newMap!16) #b00000000000000000000000000000000 Nil!1346) e!32810)))

(declare-fun b!50725 () Bool)

(declare-fun e!32808 () Bool)

(declare-fun contains!621 (List!1349 (_ BitVec 64)) Bool)

(assert (=> b!50725 (= e!32808 (contains!621 Nil!1346 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50726 () Bool)

(declare-fun e!32811 () Bool)

(assert (=> b!50726 (= e!32811 e!32809)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!50726 (= c!6838 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50727 () Bool)

(assert (=> b!50727 (= e!32809 call!3906)))

(declare-fun b!50728 () Bool)

(assert (=> b!50728 (= e!32810 e!32811)))

(declare-fun res!29148 () Bool)

(assert (=> b!50728 (=> (not res!29148) (not e!32811))))

(assert (=> b!50728 (= res!29148 (not e!32808))))

(declare-fun res!29147 () Bool)

(assert (=> b!50728 (=> (not res!29147) (not e!32808))))

(assert (=> b!50728 (= res!29147 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10247 (not res!29149)) b!50728))

(assert (= (and b!50728 res!29147) b!50725))

(assert (= (and b!50728 res!29148) b!50726))

(assert (= (and b!50726 c!6838) b!50727))

(assert (= (and b!50726 (not c!6838)) b!50724))

(assert (= (or b!50727 b!50724) bm!3903))

(declare-fun m!43913 () Bool)

(assert (=> bm!3903 m!43913))

(declare-fun m!43915 () Bool)

(assert (=> bm!3903 m!43915))

(assert (=> b!50725 m!43913))

(assert (=> b!50725 m!43913))

(declare-fun m!43917 () Bool)

(assert (=> b!50725 m!43917))

(assert (=> b!50726 m!43913))

(assert (=> b!50726 m!43913))

(declare-fun m!43919 () Bool)

(assert (=> b!50726 m!43919))

(assert (=> b!50728 m!43913))

(assert (=> b!50728 m!43913))

(assert (=> b!50728 m!43919))

(assert (=> b!50703 d!10247))

(declare-fun b!50737 () Bool)

(declare-fun e!32818 () Bool)

(declare-fun call!3909 () Bool)

(assert (=> b!50737 (= e!32818 call!3909)))

(declare-fun b!50738 () Bool)

(declare-fun e!32820 () Bool)

(assert (=> b!50738 (= e!32820 call!3909)))

(declare-fun d!10249 () Bool)

(declare-fun res!29155 () Bool)

(declare-fun e!32819 () Bool)

(assert (=> d!10249 (=> res!29155 e!32819)))

(assert (=> d!10249 (= res!29155 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3531 newMap!16) (mask!5713 newMap!16)) e!32819)))

(declare-fun b!50739 () Bool)

(assert (=> b!50739 (= e!32819 e!32818)))

(declare-fun c!6841 () Bool)

(assert (=> b!50739 (= c!6841 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3906 () Bool)

(assert (=> bm!3906 (= call!3909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3531 newMap!16) (mask!5713 newMap!16)))))

(declare-fun b!50740 () Bool)

(assert (=> b!50740 (= e!32818 e!32820)))

(declare-fun lt!21103 () (_ BitVec 64))

(assert (=> b!50740 (= lt!21103 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1422 0))(
  ( (Unit!1423) )
))
(declare-fun lt!21102 () Unit!1422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3298 (_ BitVec 64) (_ BitVec 32)) Unit!1422)

(assert (=> b!50740 (= lt!21102 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!50740 (arrayContainsKey!0 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000)))

(declare-fun lt!21101 () Unit!1422)

(assert (=> b!50740 (= lt!21101 lt!21102)))

(declare-fun res!29154 () Bool)

(declare-datatypes ((SeekEntryResult!230 0))(
  ( (MissingZero!230 (index!3042 (_ BitVec 32))) (Found!230 (index!3043 (_ BitVec 32))) (Intermediate!230 (undefined!1042 Bool) (index!3044 (_ BitVec 32)) (x!9262 (_ BitVec 32))) (Undefined!230) (MissingVacant!230 (index!3045 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3298 (_ BitVec 32)) SeekEntryResult!230)

(assert (=> b!50740 (= res!29154 (= (seekEntryOrOpen!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) (_keys!3531 newMap!16) (mask!5713 newMap!16)) (Found!230 #b00000000000000000000000000000000)))))

(assert (=> b!50740 (=> (not res!29154) (not e!32820))))

(assert (= (and d!10249 (not res!29155)) b!50739))

(assert (= (and b!50739 c!6841) b!50740))

(assert (= (and b!50739 (not c!6841)) b!50737))

(assert (= (and b!50740 res!29154) b!50738))

(assert (= (or b!50738 b!50737) bm!3906))

(assert (=> b!50739 m!43913))

(assert (=> b!50739 m!43913))

(assert (=> b!50739 m!43919))

(declare-fun m!43921 () Bool)

(assert (=> bm!3906 m!43921))

(assert (=> b!50740 m!43913))

(declare-fun m!43923 () Bool)

(assert (=> b!50740 m!43923))

(declare-fun m!43925 () Bool)

(assert (=> b!50740 m!43925))

(assert (=> b!50740 m!43913))

(declare-fun m!43927 () Bool)

(assert (=> b!50740 m!43927))

(assert (=> b!50702 d!10249))

(declare-fun d!10251 () Bool)

(declare-fun res!29156 () Bool)

(declare-fun e!32821 () Bool)

(assert (=> d!10251 (=> (not res!29156) (not e!32821))))

(assert (=> d!10251 (= res!29156 (simpleValid!34 (v!2167 (underlying!129 thiss!992))))))

(assert (=> d!10251 (= (valid!140 (v!2167 (underlying!129 thiss!992))) e!32821)))

(declare-fun b!50741 () Bool)

(declare-fun res!29157 () Bool)

(assert (=> b!50741 (=> (not res!29157) (not e!32821))))

(assert (=> b!50741 (= res!29157 (= (arrayCountValidKeys!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))) (_size!256 (v!2167 (underlying!129 thiss!992)))))))

(declare-fun b!50742 () Bool)

(declare-fun res!29158 () Bool)

(assert (=> b!50742 (=> (not res!29158) (not e!32821))))

(assert (=> b!50742 (= res!29158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3531 (v!2167 (underlying!129 thiss!992))) (mask!5713 (v!2167 (underlying!129 thiss!992)))))))

(declare-fun b!50743 () Bool)

(assert (=> b!50743 (= e!32821 (arrayNoDuplicates!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000 Nil!1346))))

(assert (= (and d!10251 res!29156) b!50741))

(assert (= (and b!50741 res!29157) b!50742))

(assert (= (and b!50742 res!29158) b!50743))

(declare-fun m!43929 () Bool)

(assert (=> d!10251 m!43929))

(declare-fun m!43931 () Bool)

(assert (=> b!50741 m!43931))

(declare-fun m!43933 () Bool)

(assert (=> b!50742 m!43933))

(declare-fun m!43935 () Bool)

(assert (=> b!50743 m!43935))

(assert (=> d!10241 d!10251))

(declare-fun b!50752 () Bool)

(declare-fun e!32826 () (_ BitVec 32))

(declare-fun call!3912 () (_ BitVec 32))

(assert (=> b!50752 (= e!32826 (bvadd #b00000000000000000000000000000001 call!3912))))

(declare-fun b!50753 () Bool)

(declare-fun e!32827 () (_ BitVec 32))

(assert (=> b!50753 (= e!32827 #b00000000000000000000000000000000)))

(declare-fun b!50754 () Bool)

(assert (=> b!50754 (= e!32827 e!32826)))

(declare-fun c!6847 () Bool)

(assert (=> b!50754 (= c!6847 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50755 () Bool)

(assert (=> b!50755 (= e!32826 call!3912)))

(declare-fun d!10253 () Bool)

(declare-fun lt!21106 () (_ BitVec 32))

(assert (=> d!10253 (and (bvsge lt!21106 #b00000000000000000000000000000000) (bvsle lt!21106 (bvsub (size!1800 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!10253 (= lt!21106 e!32827)))

(declare-fun c!6846 () Bool)

(assert (=> d!10253 (= c!6846 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10253 (and (bvsle #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1800 (_keys!3531 newMap!16)) (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10253 (= (arrayCountValidKeys!0 (_keys!3531 newMap!16) #b00000000000000000000000000000000 (size!1800 (_keys!3531 newMap!16))) lt!21106)))

(declare-fun bm!3909 () Bool)

(assert (=> bm!3909 (= call!3912 (arrayCountValidKeys!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(assert (= (and d!10253 c!6846) b!50753))

(assert (= (and d!10253 (not c!6846)) b!50754))

(assert (= (and b!50754 c!6847) b!50752))

(assert (= (and b!50754 (not c!6847)) b!50755))

(assert (= (or b!50752 b!50755) bm!3909))

(assert (=> b!50754 m!43913))

(assert (=> b!50754 m!43913))

(assert (=> b!50754 m!43919))

(declare-fun m!43937 () Bool)

(assert (=> bm!3909 m!43937))

(assert (=> b!50701 d!10253))

(declare-fun d!10255 () Bool)

(declare-fun res!29170 () Bool)

(declare-fun e!32830 () Bool)

(assert (=> d!10255 (=> (not res!29170) (not e!32830))))

(assert (=> d!10255 (= res!29170 (validMask!0 (mask!5713 newMap!16)))))

(assert (=> d!10255 (= (simpleValid!34 newMap!16) e!32830)))

(declare-fun b!50766 () Bool)

(declare-fun res!29169 () Bool)

(assert (=> b!50766 (=> (not res!29169) (not e!32830))))

(declare-fun size!1804 (LongMapFixedSize!414) (_ BitVec 32))

(assert (=> b!50766 (= res!29169 (= (size!1804 newMap!16) (bvadd (_size!256 newMap!16) (bvsdiv (bvadd (extraKeys!1812 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50767 () Bool)

(assert (=> b!50767 (= e!32830 (and (bvsge (extraKeys!1812 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1812 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!256 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!50764 () Bool)

(declare-fun res!29168 () Bool)

(assert (=> b!50764 (=> (not res!29168) (not e!32830))))

(assert (=> b!50764 (= res!29168 (and (= (size!1801 (_values!1904 newMap!16)) (bvadd (mask!5713 newMap!16) #b00000000000000000000000000000001)) (= (size!1800 (_keys!3531 newMap!16)) (size!1801 (_values!1904 newMap!16))) (bvsge (_size!256 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!256 newMap!16) (bvadd (mask!5713 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!50765 () Bool)

(declare-fun res!29167 () Bool)

(assert (=> b!50765 (=> (not res!29167) (not e!32830))))

(assert (=> b!50765 (= res!29167 (bvsge (size!1804 newMap!16) (_size!256 newMap!16)))))

(assert (= (and d!10255 res!29170) b!50764))

(assert (= (and b!50764 res!29168) b!50765))

(assert (= (and b!50765 res!29167) b!50766))

(assert (= (and b!50766 res!29169) b!50767))

(declare-fun m!43939 () Bool)

(assert (=> d!10255 m!43939))

(declare-fun m!43941 () Bool)

(assert (=> b!50766 m!43941))

(assert (=> b!50765 m!43941))

(assert (=> d!10235 d!10255))

(declare-fun b!50769 () Bool)

(declare-fun e!32832 () Bool)

(assert (=> b!50769 (= e!32832 tp_is_empty!2193)))

(declare-fun b!50768 () Bool)

(declare-fun e!32831 () Bool)

(assert (=> b!50768 (= e!32831 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2225 () Bool)

(declare-fun mapRes!2225 () Bool)

(assert (=> mapIsEmpty!2225 mapRes!2225))

(declare-fun condMapEmpty!2225 () Bool)

(declare-fun mapDefault!2225 () ValueCell!753)

(assert (=> mapNonEmpty!2223 (= condMapEmpty!2225 (= mapRest!2223 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2225)))))

(assert (=> mapNonEmpty!2223 (= tp!6741 (and e!32832 mapRes!2225))))

(declare-fun mapNonEmpty!2225 () Bool)

(declare-fun tp!6743 () Bool)

(assert (=> mapNonEmpty!2225 (= mapRes!2225 (and tp!6743 e!32831))))

(declare-fun mapValue!2225 () ValueCell!753)

(declare-fun mapKey!2225 () (_ BitVec 32))

(declare-fun mapRest!2225 () (Array (_ BitVec 32) ValueCell!753))

(assert (=> mapNonEmpty!2225 (= mapRest!2223 (store mapRest!2225 mapKey!2225 mapValue!2225))))

(assert (= (and mapNonEmpty!2223 condMapEmpty!2225) mapIsEmpty!2225))

(assert (= (and mapNonEmpty!2223 (not condMapEmpty!2225)) mapNonEmpty!2225))

(assert (= (and mapNonEmpty!2225 ((_ is ValueCellFull!753) mapValue!2225)) b!50768))

(assert (= (and mapNonEmpty!2223 ((_ is ValueCellFull!753) mapDefault!2225)) b!50769))

(declare-fun m!43943 () Bool)

(assert (=> mapNonEmpty!2225 m!43943))

(declare-fun b!50771 () Bool)

(declare-fun e!32834 () Bool)

(assert (=> b!50771 (= e!32834 tp_is_empty!2193)))

(declare-fun b!50770 () Bool)

(declare-fun e!32833 () Bool)

(assert (=> b!50770 (= e!32833 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2226 () Bool)

(declare-fun mapRes!2226 () Bool)

(assert (=> mapIsEmpty!2226 mapRes!2226))

(declare-fun condMapEmpty!2226 () Bool)

(declare-fun mapDefault!2226 () ValueCell!753)

(assert (=> mapNonEmpty!2224 (= condMapEmpty!2226 (= mapRest!2224 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2226)))))

(assert (=> mapNonEmpty!2224 (= tp!6742 (and e!32834 mapRes!2226))))

(declare-fun mapNonEmpty!2226 () Bool)

(declare-fun tp!6744 () Bool)

(assert (=> mapNonEmpty!2226 (= mapRes!2226 (and tp!6744 e!32833))))

(declare-fun mapValue!2226 () ValueCell!753)

(declare-fun mapRest!2226 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapKey!2226 () (_ BitVec 32))

(assert (=> mapNonEmpty!2226 (= mapRest!2224 (store mapRest!2226 mapKey!2226 mapValue!2226))))

(assert (= (and mapNonEmpty!2224 condMapEmpty!2226) mapIsEmpty!2226))

(assert (= (and mapNonEmpty!2224 (not condMapEmpty!2226)) mapNonEmpty!2226))

(assert (= (and mapNonEmpty!2226 ((_ is ValueCellFull!753) mapValue!2226)) b!50770))

(assert (= (and mapNonEmpty!2224 ((_ is ValueCellFull!753) mapDefault!2226)) b!50771))

(declare-fun m!43945 () Bool)

(assert (=> mapNonEmpty!2226 m!43945))

(check-sat (not bm!3906) (not b!50725) b_and!2773 (not b!50739) (not b!50741) (not b!50726) tp_is_empty!2193 (not b!50740) (not mapNonEmpty!2225) (not mapNonEmpty!2226) (not b!50743) (not b!50754) (not bm!3909) (not b!50766) (not b!50728) (not d!10251) (not bm!3903) b_and!2775 (not d!10255) (not b_next!1555) (not b!50765) (not b!50742) (not b_next!1553))
(check-sat b_and!2773 b_and!2775 (not b_next!1553) (not b_next!1555))
(get-model)

(declare-fun d!10257 () Bool)

(declare-fun res!29174 () Bool)

(declare-fun e!32835 () Bool)

(assert (=> d!10257 (=> (not res!29174) (not e!32835))))

(assert (=> d!10257 (= res!29174 (validMask!0 (mask!5713 (v!2167 (underlying!129 thiss!992)))))))

(assert (=> d!10257 (= (simpleValid!34 (v!2167 (underlying!129 thiss!992))) e!32835)))

(declare-fun b!50774 () Bool)

(declare-fun res!29173 () Bool)

(assert (=> b!50774 (=> (not res!29173) (not e!32835))))

(assert (=> b!50774 (= res!29173 (= (size!1804 (v!2167 (underlying!129 thiss!992))) (bvadd (_size!256 (v!2167 (underlying!129 thiss!992))) (bvsdiv (bvadd (extraKeys!1812 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50775 () Bool)

(assert (=> b!50775 (= e!32835 (and (bvsge (extraKeys!1812 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1812 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!256 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!50772 () Bool)

(declare-fun res!29172 () Bool)

(assert (=> b!50772 (=> (not res!29172) (not e!32835))))

(assert (=> b!50772 (= res!29172 (and (= (size!1801 (_values!1904 (v!2167 (underlying!129 thiss!992)))) (bvadd (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000001)) (= (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) (size!1801 (_values!1904 (v!2167 (underlying!129 thiss!992))))) (bvsge (_size!256 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!256 (v!2167 (underlying!129 thiss!992))) (bvadd (mask!5713 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!50773 () Bool)

(declare-fun res!29171 () Bool)

(assert (=> b!50773 (=> (not res!29171) (not e!32835))))

(assert (=> b!50773 (= res!29171 (bvsge (size!1804 (v!2167 (underlying!129 thiss!992))) (_size!256 (v!2167 (underlying!129 thiss!992)))))))

(assert (= (and d!10257 res!29174) b!50772))

(assert (= (and b!50772 res!29172) b!50773))

(assert (= (and b!50773 res!29171) b!50774))

(assert (= (and b!50774 res!29173) b!50775))

(assert (=> d!10257 m!43879))

(declare-fun m!43947 () Bool)

(assert (=> b!50774 m!43947))

(assert (=> b!50773 m!43947))

(assert (=> d!10251 d!10257))

(declare-fun b!50776 () Bool)

(declare-fun e!32836 () Bool)

(declare-fun call!3913 () Bool)

(assert (=> b!50776 (= e!32836 call!3913)))

(declare-fun b!50777 () Bool)

(declare-fun e!32838 () Bool)

(assert (=> b!50777 (= e!32838 call!3913)))

(declare-fun d!10259 () Bool)

(declare-fun res!29176 () Bool)

(declare-fun e!32837 () Bool)

(assert (=> d!10259 (=> res!29176 e!32837)))

(assert (=> d!10259 (= res!29176 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10259 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3531 newMap!16) (mask!5713 newMap!16)) e!32837)))

(declare-fun b!50778 () Bool)

(assert (=> b!50778 (= e!32837 e!32836)))

(declare-fun c!6848 () Bool)

(assert (=> b!50778 (= c!6848 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3910 () Bool)

(assert (=> bm!3910 (= call!3913 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3531 newMap!16) (mask!5713 newMap!16)))))

(declare-fun b!50779 () Bool)

(assert (=> b!50779 (= e!32836 e!32838)))

(declare-fun lt!21109 () (_ BitVec 64))

(assert (=> b!50779 (= lt!21109 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21108 () Unit!1422)

(assert (=> b!50779 (= lt!21108 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3531 newMap!16) lt!21109 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!50779 (arrayContainsKey!0 (_keys!3531 newMap!16) lt!21109 #b00000000000000000000000000000000)))

(declare-fun lt!21107 () Unit!1422)

(assert (=> b!50779 (= lt!21107 lt!21108)))

(declare-fun res!29175 () Bool)

(assert (=> b!50779 (= res!29175 (= (seekEntryOrOpen!0 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3531 newMap!16) (mask!5713 newMap!16)) (Found!230 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!50779 (=> (not res!29175) (not e!32838))))

(assert (= (and d!10259 (not res!29176)) b!50778))

(assert (= (and b!50778 c!6848) b!50779))

(assert (= (and b!50778 (not c!6848)) b!50776))

(assert (= (and b!50779 res!29175) b!50777))

(assert (= (or b!50777 b!50776) bm!3910))

(declare-fun m!43949 () Bool)

(assert (=> b!50778 m!43949))

(assert (=> b!50778 m!43949))

(declare-fun m!43951 () Bool)

(assert (=> b!50778 m!43951))

(declare-fun m!43953 () Bool)

(assert (=> bm!3910 m!43953))

(assert (=> b!50779 m!43949))

(declare-fun m!43955 () Bool)

(assert (=> b!50779 m!43955))

(declare-fun m!43957 () Bool)

(assert (=> b!50779 m!43957))

(assert (=> b!50779 m!43949))

(declare-fun m!43959 () Bool)

(assert (=> b!50779 m!43959))

(assert (=> bm!3906 d!10259))

(declare-fun d!10261 () Bool)

(assert (=> d!10261 (= (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!50739 d!10261))

(declare-fun b!50780 () Bool)

(declare-fun e!32839 () (_ BitVec 32))

(declare-fun call!3914 () (_ BitVec 32))

(assert (=> b!50780 (= e!32839 (bvadd #b00000000000000000000000000000001 call!3914))))

(declare-fun b!50781 () Bool)

(declare-fun e!32840 () (_ BitVec 32))

(assert (=> b!50781 (= e!32840 #b00000000000000000000000000000000)))

(declare-fun b!50782 () Bool)

(assert (=> b!50782 (= e!32840 e!32839)))

(declare-fun c!6850 () Bool)

(assert (=> b!50782 (= c!6850 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50783 () Bool)

(assert (=> b!50783 (= e!32839 call!3914)))

(declare-fun d!10263 () Bool)

(declare-fun lt!21110 () (_ BitVec 32))

(assert (=> d!10263 (and (bvsge lt!21110 #b00000000000000000000000000000000) (bvsle lt!21110 (bvsub (size!1800 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!10263 (= lt!21110 e!32840)))

(declare-fun c!6849 () Bool)

(assert (=> d!10263 (= c!6849 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10263 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1800 (_keys!3531 newMap!16)) (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10263 (= (arrayCountValidKeys!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))) lt!21110)))

(declare-fun bm!3911 () Bool)

(assert (=> bm!3911 (= call!3914 (arrayCountValidKeys!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(assert (= (and d!10263 c!6849) b!50781))

(assert (= (and d!10263 (not c!6849)) b!50782))

(assert (= (and b!50782 c!6850) b!50780))

(assert (= (and b!50782 (not c!6850)) b!50783))

(assert (= (or b!50780 b!50783) bm!3911))

(assert (=> b!50782 m!43949))

(assert (=> b!50782 m!43949))

(assert (=> b!50782 m!43951))

(declare-fun m!43961 () Bool)

(assert (=> bm!3911 m!43961))

(assert (=> bm!3909 d!10263))

(declare-fun b!50784 () Bool)

(declare-fun e!32842 () Bool)

(declare-fun call!3915 () Bool)

(assert (=> b!50784 (= e!32842 call!3915)))

(declare-fun bm!3912 () Bool)

(declare-fun c!6851 () Bool)

(assert (=> bm!3912 (= call!3915 (arrayNoDuplicates!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6851 (Cons!1345 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000) Nil!1346) Nil!1346)))))

(declare-fun d!10265 () Bool)

(declare-fun res!29179 () Bool)

(declare-fun e!32843 () Bool)

(assert (=> d!10265 (=> res!29179 e!32843)))

(assert (=> d!10265 (= res!29179 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))))))

(assert (=> d!10265 (= (arrayNoDuplicates!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000 Nil!1346) e!32843)))

(declare-fun b!50785 () Bool)

(declare-fun e!32841 () Bool)

(assert (=> b!50785 (= e!32841 (contains!621 Nil!1346 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50786 () Bool)

(declare-fun e!32844 () Bool)

(assert (=> b!50786 (= e!32844 e!32842)))

(assert (=> b!50786 (= c!6851 (validKeyInArray!0 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50787 () Bool)

(assert (=> b!50787 (= e!32842 call!3915)))

(declare-fun b!50788 () Bool)

(assert (=> b!50788 (= e!32843 e!32844)))

(declare-fun res!29178 () Bool)

(assert (=> b!50788 (=> (not res!29178) (not e!32844))))

(assert (=> b!50788 (= res!29178 (not e!32841))))

(declare-fun res!29177 () Bool)

(assert (=> b!50788 (=> (not res!29177) (not e!32841))))

(assert (=> b!50788 (= res!29177 (validKeyInArray!0 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!10265 (not res!29179)) b!50788))

(assert (= (and b!50788 res!29177) b!50785))

(assert (= (and b!50788 res!29178) b!50786))

(assert (= (and b!50786 c!6851) b!50787))

(assert (= (and b!50786 (not c!6851)) b!50784))

(assert (= (or b!50787 b!50784) bm!3912))

(declare-fun m!43963 () Bool)

(assert (=> bm!3912 m!43963))

(declare-fun m!43965 () Bool)

(assert (=> bm!3912 m!43965))

(assert (=> b!50785 m!43963))

(assert (=> b!50785 m!43963))

(declare-fun m!43967 () Bool)

(assert (=> b!50785 m!43967))

(assert (=> b!50786 m!43963))

(assert (=> b!50786 m!43963))

(declare-fun m!43969 () Bool)

(assert (=> b!50786 m!43969))

(assert (=> b!50788 m!43963))

(assert (=> b!50788 m!43963))

(assert (=> b!50788 m!43969))

(assert (=> b!50743 d!10265))

(declare-fun b!50789 () Bool)

(declare-fun e!32845 () Bool)

(declare-fun call!3916 () Bool)

(assert (=> b!50789 (= e!32845 call!3916)))

(declare-fun b!50790 () Bool)

(declare-fun e!32847 () Bool)

(assert (=> b!50790 (= e!32847 call!3916)))

(declare-fun d!10267 () Bool)

(declare-fun res!29181 () Bool)

(declare-fun e!32846 () Bool)

(assert (=> d!10267 (=> res!29181 e!32846)))

(assert (=> d!10267 (= res!29181 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))))))

(assert (=> d!10267 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3531 (v!2167 (underlying!129 thiss!992))) (mask!5713 (v!2167 (underlying!129 thiss!992)))) e!32846)))

(declare-fun b!50791 () Bool)

(assert (=> b!50791 (= e!32846 e!32845)))

(declare-fun c!6852 () Bool)

(assert (=> b!50791 (= c!6852 (validKeyInArray!0 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!3913 () Bool)

(assert (=> bm!3913 (= call!3916 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3531 (v!2167 (underlying!129 thiss!992))) (mask!5713 (v!2167 (underlying!129 thiss!992)))))))

(declare-fun b!50792 () Bool)

(assert (=> b!50792 (= e!32845 e!32847)))

(declare-fun lt!21113 () (_ BitVec 64))

(assert (=> b!50792 (= lt!21113 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!21112 () Unit!1422)

(assert (=> b!50792 (= lt!21112 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) lt!21113 #b00000000000000000000000000000000))))

(assert (=> b!50792 (arrayContainsKey!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) lt!21113 #b00000000000000000000000000000000)))

(declare-fun lt!21111 () Unit!1422)

(assert (=> b!50792 (= lt!21111 lt!21112)))

(declare-fun res!29180 () Bool)

(assert (=> b!50792 (= res!29180 (= (seekEntryOrOpen!0 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000) (_keys!3531 (v!2167 (underlying!129 thiss!992))) (mask!5713 (v!2167 (underlying!129 thiss!992)))) (Found!230 #b00000000000000000000000000000000)))))

(assert (=> b!50792 (=> (not res!29180) (not e!32847))))

(assert (= (and d!10267 (not res!29181)) b!50791))

(assert (= (and b!50791 c!6852) b!50792))

(assert (= (and b!50791 (not c!6852)) b!50789))

(assert (= (and b!50792 res!29180) b!50790))

(assert (= (or b!50790 b!50789) bm!3913))

(assert (=> b!50791 m!43963))

(assert (=> b!50791 m!43963))

(assert (=> b!50791 m!43969))

(declare-fun m!43971 () Bool)

(assert (=> bm!3913 m!43971))

(assert (=> b!50792 m!43963))

(declare-fun m!43973 () Bool)

(assert (=> b!50792 m!43973))

(declare-fun m!43975 () Bool)

(assert (=> b!50792 m!43975))

(assert (=> b!50792 m!43963))

(declare-fun m!43977 () Bool)

(assert (=> b!50792 m!43977))

(assert (=> b!50742 d!10267))

(declare-fun d!10269 () Bool)

(assert (=> d!10269 (= (validMask!0 (mask!5713 newMap!16)) (and (or (= (mask!5713 newMap!16) #b00000000000000000000000000000111) (= (mask!5713 newMap!16) #b00000000000000000000000000001111) (= (mask!5713 newMap!16) #b00000000000000000000000000011111) (= (mask!5713 newMap!16) #b00000000000000000000000000111111) (= (mask!5713 newMap!16) #b00000000000000000000000001111111) (= (mask!5713 newMap!16) #b00000000000000000000000011111111) (= (mask!5713 newMap!16) #b00000000000000000000000111111111) (= (mask!5713 newMap!16) #b00000000000000000000001111111111) (= (mask!5713 newMap!16) #b00000000000000000000011111111111) (= (mask!5713 newMap!16) #b00000000000000000000111111111111) (= (mask!5713 newMap!16) #b00000000000000000001111111111111) (= (mask!5713 newMap!16) #b00000000000000000011111111111111) (= (mask!5713 newMap!16) #b00000000000000000111111111111111) (= (mask!5713 newMap!16) #b00000000000000001111111111111111) (= (mask!5713 newMap!16) #b00000000000000011111111111111111) (= (mask!5713 newMap!16) #b00000000000000111111111111111111) (= (mask!5713 newMap!16) #b00000000000001111111111111111111) (= (mask!5713 newMap!16) #b00000000000011111111111111111111) (= (mask!5713 newMap!16) #b00000000000111111111111111111111) (= (mask!5713 newMap!16) #b00000000001111111111111111111111) (= (mask!5713 newMap!16) #b00000000011111111111111111111111) (= (mask!5713 newMap!16) #b00000000111111111111111111111111) (= (mask!5713 newMap!16) #b00000001111111111111111111111111) (= (mask!5713 newMap!16) #b00000011111111111111111111111111) (= (mask!5713 newMap!16) #b00000111111111111111111111111111) (= (mask!5713 newMap!16) #b00001111111111111111111111111111) (= (mask!5713 newMap!16) #b00011111111111111111111111111111) (= (mask!5713 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!5713 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!10255 d!10269))

(declare-fun b!50793 () Bool)

(declare-fun e!32848 () (_ BitVec 32))

(declare-fun call!3917 () (_ BitVec 32))

(assert (=> b!50793 (= e!32848 (bvadd #b00000000000000000000000000000001 call!3917))))

(declare-fun b!50794 () Bool)

(declare-fun e!32849 () (_ BitVec 32))

(assert (=> b!50794 (= e!32849 #b00000000000000000000000000000000)))

(declare-fun b!50795 () Bool)

(assert (=> b!50795 (= e!32849 e!32848)))

(declare-fun c!6854 () Bool)

(assert (=> b!50795 (= c!6854 (validKeyInArray!0 (select (arr!1576 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50796 () Bool)

(assert (=> b!50796 (= e!32848 call!3917)))

(declare-fun d!10271 () Bool)

(declare-fun lt!21114 () (_ BitVec 32))

(assert (=> d!10271 (and (bvsge lt!21114 #b00000000000000000000000000000000) (bvsle lt!21114 (bvsub (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!10271 (= lt!21114 e!32849)))

(declare-fun c!6853 () Bool)

(assert (=> d!10271 (= c!6853 (bvsge #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))))))

(assert (=> d!10271 (and (bvsle #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992)))) (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))))))

(assert (=> d!10271 (= (arrayCountValidKeys!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) #b00000000000000000000000000000000 (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))) lt!21114)))

(declare-fun bm!3914 () Bool)

(assert (=> bm!3914 (= call!3917 (arrayCountValidKeys!0 (_keys!3531 (v!2167 (underlying!129 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 (v!2167 (underlying!129 thiss!992))))))))

(assert (= (and d!10271 c!6853) b!50794))

(assert (= (and d!10271 (not c!6853)) b!50795))

(assert (= (and b!50795 c!6854) b!50793))

(assert (= (and b!50795 (not c!6854)) b!50796))

(assert (= (or b!50793 b!50796) bm!3914))

(assert (=> b!50795 m!43963))

(assert (=> b!50795 m!43963))

(assert (=> b!50795 m!43969))

(declare-fun m!43979 () Bool)

(assert (=> bm!3914 m!43979))

(assert (=> b!50741 d!10271))

(assert (=> b!50728 d!10261))

(declare-fun d!10273 () Bool)

(assert (=> d!10273 (= (size!1804 newMap!16) (bvadd (_size!256 newMap!16) (bvsdiv (bvadd (extraKeys!1812 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!50766 d!10273))

(assert (=> b!50726 d!10261))

(assert (=> b!50765 d!10273))

(declare-fun d!10275 () Bool)

(declare-fun lt!21117 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!56 (List!1349) (InoxSet (_ BitVec 64)))

(assert (=> d!10275 (= lt!21117 (select (content!56 Nil!1346) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!32855 () Bool)

(assert (=> d!10275 (= lt!21117 e!32855)))

(declare-fun res!29186 () Bool)

(assert (=> d!10275 (=> (not res!29186) (not e!32855))))

(assert (=> d!10275 (= res!29186 ((_ is Cons!1345) Nil!1346))))

(assert (=> d!10275 (= (contains!621 Nil!1346 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)) lt!21117)))

(declare-fun b!50801 () Bool)

(declare-fun e!32854 () Bool)

(assert (=> b!50801 (= e!32855 e!32854)))

(declare-fun res!29187 () Bool)

(assert (=> b!50801 (=> res!29187 e!32854)))

(assert (=> b!50801 (= res!29187 (= (h!1925 Nil!1346) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50802 () Bool)

(assert (=> b!50802 (= e!32854 (contains!621 (t!4391 Nil!1346) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10275 res!29186) b!50801))

(assert (= (and b!50801 (not res!29187)) b!50802))

(declare-fun m!43981 () Bool)

(assert (=> d!10275 m!43981))

(assert (=> d!10275 m!43913))

(declare-fun m!43983 () Bool)

(assert (=> d!10275 m!43983))

(assert (=> b!50802 m!43913))

(declare-fun m!43985 () Bool)

(assert (=> b!50802 m!43985))

(assert (=> b!50725 d!10275))

(assert (=> b!50754 d!10261))

(declare-fun b!50803 () Bool)

(declare-fun e!32857 () Bool)

(declare-fun call!3918 () Bool)

(assert (=> b!50803 (= e!32857 call!3918)))

(declare-fun bm!3915 () Bool)

(declare-fun c!6855 () Bool)

(assert (=> bm!3915 (= call!3918 (arrayNoDuplicates!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6855 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6838 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) Nil!1346) Nil!1346)) (ite c!6838 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) Nil!1346) Nil!1346))))))

(declare-fun d!10277 () Bool)

(declare-fun res!29190 () Bool)

(declare-fun e!32858 () Bool)

(assert (=> d!10277 (=> res!29190 e!32858)))

(assert (=> d!10277 (= res!29190 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(assert (=> d!10277 (= (arrayNoDuplicates!0 (_keys!3531 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6838 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) Nil!1346) Nil!1346)) e!32858)))

(declare-fun b!50804 () Bool)

(declare-fun e!32856 () Bool)

(assert (=> b!50804 (= e!32856 (contains!621 (ite c!6838 (Cons!1345 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) Nil!1346) Nil!1346) (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50805 () Bool)

(declare-fun e!32859 () Bool)

(assert (=> b!50805 (= e!32859 e!32857)))

(assert (=> b!50805 (= c!6855 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50806 () Bool)

(assert (=> b!50806 (= e!32857 call!3918)))

(declare-fun b!50807 () Bool)

(assert (=> b!50807 (= e!32858 e!32859)))

(declare-fun res!29189 () Bool)

(assert (=> b!50807 (=> (not res!29189) (not e!32859))))

(assert (=> b!50807 (= res!29189 (not e!32856))))

(declare-fun res!29188 () Bool)

(assert (=> b!50807 (=> (not res!29188) (not e!32856))))

(assert (=> b!50807 (= res!29188 (validKeyInArray!0 (select (arr!1576 (_keys!3531 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!10277 (not res!29190)) b!50807))

(assert (= (and b!50807 res!29188) b!50804))

(assert (= (and b!50807 res!29189) b!50805))

(assert (= (and b!50805 c!6855) b!50806))

(assert (= (and b!50805 (not c!6855)) b!50803))

(assert (= (or b!50806 b!50803) bm!3915))

(assert (=> bm!3915 m!43949))

(declare-fun m!43987 () Bool)

(assert (=> bm!3915 m!43987))

(assert (=> b!50804 m!43949))

(assert (=> b!50804 m!43949))

(declare-fun m!43989 () Bool)

(assert (=> b!50804 m!43989))

(assert (=> b!50805 m!43949))

(assert (=> b!50805 m!43949))

(assert (=> b!50805 m!43951))

(assert (=> b!50807 m!43949))

(assert (=> b!50807 m!43949))

(assert (=> b!50807 m!43951))

(assert (=> bm!3903 d!10277))

(declare-fun d!10279 () Bool)

(assert (=> d!10279 (arrayContainsKey!0 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000)))

(declare-fun lt!21120 () Unit!1422)

(declare-fun choose!13 (array!3298 (_ BitVec 64) (_ BitVec 32)) Unit!1422)

(assert (=> d!10279 (= lt!21120 (choose!13 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000))))

(assert (=> d!10279 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10279 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000) lt!21120)))

(declare-fun bs!2365 () Bool)

(assert (= bs!2365 d!10279))

(assert (=> bs!2365 m!43925))

(declare-fun m!43991 () Bool)

(assert (=> bs!2365 m!43991))

(assert (=> b!50740 d!10279))

(declare-fun d!10281 () Bool)

(declare-fun res!29195 () Bool)

(declare-fun e!32864 () Bool)

(assert (=> d!10281 (=> res!29195 e!32864)))

(assert (=> d!10281 (= res!29195 (= (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) lt!21103))))

(assert (=> d!10281 (= (arrayContainsKey!0 (_keys!3531 newMap!16) lt!21103 #b00000000000000000000000000000000) e!32864)))

(declare-fun b!50812 () Bool)

(declare-fun e!32865 () Bool)

(assert (=> b!50812 (= e!32864 e!32865)))

(declare-fun res!29196 () Bool)

(assert (=> b!50812 (=> (not res!29196) (not e!32865))))

(assert (=> b!50812 (= res!29196 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1800 (_keys!3531 newMap!16))))))

(declare-fun b!50813 () Bool)

(assert (=> b!50813 (= e!32865 (arrayContainsKey!0 (_keys!3531 newMap!16) lt!21103 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10281 (not res!29195)) b!50812))

(assert (= (and b!50812 res!29196) b!50813))

(assert (=> d!10281 m!43913))

(declare-fun m!43993 () Bool)

(assert (=> b!50813 m!43993))

(assert (=> b!50740 d!10281))

(declare-fun b!50826 () Bool)

(declare-fun e!32874 () SeekEntryResult!230)

(declare-fun lt!21127 () SeekEntryResult!230)

(assert (=> b!50826 (= e!32874 (Found!230 (index!3044 lt!21127)))))

(declare-fun b!50827 () Bool)

(declare-fun e!32872 () SeekEntryResult!230)

(assert (=> b!50827 (= e!32872 Undefined!230)))

(declare-fun b!50828 () Bool)

(assert (=> b!50828 (= e!32872 e!32874)))

(declare-fun lt!21129 () (_ BitVec 64))

(assert (=> b!50828 (= lt!21129 (select (arr!1576 (_keys!3531 newMap!16)) (index!3044 lt!21127)))))

(declare-fun c!6864 () Bool)

(assert (=> b!50828 (= c!6864 (= lt!21129 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50829 () Bool)

(declare-fun e!32873 () SeekEntryResult!230)

(assert (=> b!50829 (= e!32873 (MissingZero!230 (index!3044 lt!21127)))))

(declare-fun b!50830 () Bool)

(declare-fun c!6863 () Bool)

(assert (=> b!50830 (= c!6863 (= lt!21129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!50830 (= e!32874 e!32873)))

(declare-fun b!50831 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3298 (_ BitVec 32)) SeekEntryResult!230)

(assert (=> b!50831 (= e!32873 (seekKeyOrZeroReturnVacant!0 (x!9262 lt!21127) (index!3044 lt!21127) (index!3044 lt!21127) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) (_keys!3531 newMap!16) (mask!5713 newMap!16)))))

(declare-fun d!10283 () Bool)

(declare-fun lt!21128 () SeekEntryResult!230)

(assert (=> d!10283 (and (or ((_ is Undefined!230) lt!21128) (not ((_ is Found!230) lt!21128)) (and (bvsge (index!3043 lt!21128) #b00000000000000000000000000000000) (bvslt (index!3043 lt!21128) (size!1800 (_keys!3531 newMap!16))))) (or ((_ is Undefined!230) lt!21128) ((_ is Found!230) lt!21128) (not ((_ is MissingZero!230) lt!21128)) (and (bvsge (index!3042 lt!21128) #b00000000000000000000000000000000) (bvslt (index!3042 lt!21128) (size!1800 (_keys!3531 newMap!16))))) (or ((_ is Undefined!230) lt!21128) ((_ is Found!230) lt!21128) ((_ is MissingZero!230) lt!21128) (not ((_ is MissingVacant!230) lt!21128)) (and (bvsge (index!3045 lt!21128) #b00000000000000000000000000000000) (bvslt (index!3045 lt!21128) (size!1800 (_keys!3531 newMap!16))))) (or ((_ is Undefined!230) lt!21128) (ite ((_ is Found!230) lt!21128) (= (select (arr!1576 (_keys!3531 newMap!16)) (index!3043 lt!21128)) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!230) lt!21128) (= (select (arr!1576 (_keys!3531 newMap!16)) (index!3042 lt!21128)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!230) lt!21128) (= (select (arr!1576 (_keys!3531 newMap!16)) (index!3045 lt!21128)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10283 (= lt!21128 e!32872)))

(declare-fun c!6862 () Bool)

(assert (=> d!10283 (= c!6862 (and ((_ is Intermediate!230) lt!21127) (undefined!1042 lt!21127)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3298 (_ BitVec 32)) SeekEntryResult!230)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10283 (= lt!21127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) (mask!5713 newMap!16)) (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) (_keys!3531 newMap!16) (mask!5713 newMap!16)))))

(assert (=> d!10283 (validMask!0 (mask!5713 newMap!16))))

(assert (=> d!10283 (= (seekEntryOrOpen!0 (select (arr!1576 (_keys!3531 newMap!16)) #b00000000000000000000000000000000) (_keys!3531 newMap!16) (mask!5713 newMap!16)) lt!21128)))

(assert (= (and d!10283 c!6862) b!50827))

(assert (= (and d!10283 (not c!6862)) b!50828))

(assert (= (and b!50828 c!6864) b!50826))

(assert (= (and b!50828 (not c!6864)) b!50830))

(assert (= (and b!50830 c!6863) b!50829))

(assert (= (and b!50830 (not c!6863)) b!50831))

(declare-fun m!43995 () Bool)

(assert (=> b!50828 m!43995))

(assert (=> b!50831 m!43913))

(declare-fun m!43997 () Bool)

(assert (=> b!50831 m!43997))

(assert (=> d!10283 m!43913))

(declare-fun m!43999 () Bool)

(assert (=> d!10283 m!43999))

(assert (=> d!10283 m!43999))

(assert (=> d!10283 m!43913))

(declare-fun m!44001 () Bool)

(assert (=> d!10283 m!44001))

(assert (=> d!10283 m!43939))

(declare-fun m!44003 () Bool)

(assert (=> d!10283 m!44003))

(declare-fun m!44005 () Bool)

(assert (=> d!10283 m!44005))

(declare-fun m!44007 () Bool)

(assert (=> d!10283 m!44007))

(assert (=> b!50740 d!10283))

(declare-fun b!50833 () Bool)

(declare-fun e!32876 () Bool)

(assert (=> b!50833 (= e!32876 tp_is_empty!2193)))

(declare-fun b!50832 () Bool)

(declare-fun e!32875 () Bool)

(assert (=> b!50832 (= e!32875 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2227 () Bool)

(declare-fun mapRes!2227 () Bool)

(assert (=> mapIsEmpty!2227 mapRes!2227))

(declare-fun condMapEmpty!2227 () Bool)

(declare-fun mapDefault!2227 () ValueCell!753)

(assert (=> mapNonEmpty!2225 (= condMapEmpty!2227 (= mapRest!2225 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2227)))))

(assert (=> mapNonEmpty!2225 (= tp!6743 (and e!32876 mapRes!2227))))

(declare-fun mapNonEmpty!2227 () Bool)

(declare-fun tp!6745 () Bool)

(assert (=> mapNonEmpty!2227 (= mapRes!2227 (and tp!6745 e!32875))))

(declare-fun mapKey!2227 () (_ BitVec 32))

(declare-fun mapValue!2227 () ValueCell!753)

(declare-fun mapRest!2227 () (Array (_ BitVec 32) ValueCell!753))

(assert (=> mapNonEmpty!2227 (= mapRest!2225 (store mapRest!2227 mapKey!2227 mapValue!2227))))

(assert (= (and mapNonEmpty!2225 condMapEmpty!2227) mapIsEmpty!2227))

(assert (= (and mapNonEmpty!2225 (not condMapEmpty!2227)) mapNonEmpty!2227))

(assert (= (and mapNonEmpty!2227 ((_ is ValueCellFull!753) mapValue!2227)) b!50832))

(assert (= (and mapNonEmpty!2225 ((_ is ValueCellFull!753) mapDefault!2227)) b!50833))

(declare-fun m!44009 () Bool)

(assert (=> mapNonEmpty!2227 m!44009))

(declare-fun b!50835 () Bool)

(declare-fun e!32878 () Bool)

(assert (=> b!50835 (= e!32878 tp_is_empty!2193)))

(declare-fun b!50834 () Bool)

(declare-fun e!32877 () Bool)

(assert (=> b!50834 (= e!32877 tp_is_empty!2193)))

(declare-fun mapIsEmpty!2228 () Bool)

(declare-fun mapRes!2228 () Bool)

(assert (=> mapIsEmpty!2228 mapRes!2228))

(declare-fun condMapEmpty!2228 () Bool)

(declare-fun mapDefault!2228 () ValueCell!753)

(assert (=> mapNonEmpty!2226 (= condMapEmpty!2228 (= mapRest!2226 ((as const (Array (_ BitVec 32) ValueCell!753)) mapDefault!2228)))))

(assert (=> mapNonEmpty!2226 (= tp!6744 (and e!32878 mapRes!2228))))

(declare-fun mapNonEmpty!2228 () Bool)

(declare-fun tp!6746 () Bool)

(assert (=> mapNonEmpty!2228 (= mapRes!2228 (and tp!6746 e!32877))))

(declare-fun mapRest!2228 () (Array (_ BitVec 32) ValueCell!753))

(declare-fun mapValue!2228 () ValueCell!753)

(declare-fun mapKey!2228 () (_ BitVec 32))

(assert (=> mapNonEmpty!2228 (= mapRest!2226 (store mapRest!2228 mapKey!2228 mapValue!2228))))

(assert (= (and mapNonEmpty!2226 condMapEmpty!2228) mapIsEmpty!2228))

(assert (= (and mapNonEmpty!2226 (not condMapEmpty!2228)) mapNonEmpty!2228))

(assert (= (and mapNonEmpty!2228 ((_ is ValueCellFull!753) mapValue!2228)) b!50834))

(assert (= (and mapNonEmpty!2226 ((_ is ValueCellFull!753) mapDefault!2228)) b!50835))

(declare-fun m!44011 () Bool)

(assert (=> mapNonEmpty!2228 m!44011))

(check-sat (not b!50805) (not d!10275) (not d!10283) (not bm!3914) (not b!50779) (not b!50804) (not bm!3915) (not b!50778) (not b!50807) (not bm!3913) tp_is_empty!2193 (not b!50792) (not bm!3911) (not bm!3912) (not b!50774) (not b!50773) (not d!10279) (not mapNonEmpty!2228) (not b!50791) (not d!10257) b_and!2773 (not b!50788) (not mapNonEmpty!2227) (not b!50831) (not b!50785) b_and!2775 (not bm!3910) (not b_next!1555) (not b!50802) (not b!50782) (not b!50813) (not b!50786) (not b!50795) (not b_next!1553))
(check-sat b_and!2773 b_and!2775 (not b_next!1553) (not b_next!1555))
