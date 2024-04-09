; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90612 () Bool)

(assert start!90612)

(declare-fun b!1035850 () Bool)

(declare-fun b_free!20877 () Bool)

(declare-fun b_next!20877 () Bool)

(assert (=> b!1035850 (= b_free!20877 (not b_next!20877))))

(declare-fun tp!73765 () Bool)

(declare-fun b_and!33397 () Bool)

(assert (=> b!1035850 (= tp!73765 b_and!33397)))

(declare-fun b!1035847 () Bool)

(declare-fun e!585850 () Bool)

(declare-fun e!585847 () Bool)

(assert (=> b!1035847 (= e!585850 (not e!585847))))

(declare-fun res!691633 () Bool)

(assert (=> b!1035847 (=> (not res!691633) (not e!585847))))

(declare-datatypes ((V!37669 0))(
  ( (V!37670 (val!12349 Int)) )
))
(declare-datatypes ((ValueCell!11595 0))(
  ( (ValueCellFull!11595 (v!14930 V!37669)) (EmptyCell!11595) )
))
(declare-datatypes ((array!65276 0))(
  ( (array!65277 (arr!31419 (Array (_ BitVec 32) (_ BitVec 64))) (size!31948 (_ BitVec 32))) )
))
(declare-datatypes ((array!65278 0))(
  ( (array!65279 (arr!31420 (Array (_ BitVec 32) ValueCell!11595)) (size!31949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5784 0))(
  ( (LongMapFixedSize!5785 (defaultEntry!6270 Int) (mask!30166 (_ BitVec 32)) (extraKeys!6000 (_ BitVec 32)) (zeroValue!6104 V!37669) (minValue!6106 V!37669) (_size!2947 (_ BitVec 32)) (_keys!11456 array!65276) (_values!6293 array!65278) (_vacant!2947 (_ BitVec 32))) )
))
(declare-fun lt!456769 () LongMapFixedSize!5784)

(declare-fun valid!2132 (LongMapFixedSize!5784) Bool)

(assert (=> b!1035847 (= res!691633 (valid!2132 lt!456769))))

(declare-fun thiss!1427 () LongMapFixedSize!5784)

(declare-fun lt!456768 () V!37669)

(assert (=> b!1035847 (= lt!456769 (LongMapFixedSize!5785 (defaultEntry!6270 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (_size!2947 thiss!1427) (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (_vacant!2947 thiss!1427)))))

(declare-datatypes ((tuple2!15838 0))(
  ( (tuple2!15839 (_1!7929 (_ BitVec 64)) (_2!7929 V!37669)) )
))
(declare-datatypes ((List!22035 0))(
  ( (Nil!22032) (Cons!22031 (h!23233 tuple2!15838) (t!31249 List!22035)) )
))
(declare-datatypes ((ListLongMap!13875 0))(
  ( (ListLongMap!13876 (toList!6953 List!22035)) )
))
(declare-fun -!529 (ListLongMap!13875 (_ BitVec 64)) ListLongMap!13875)

(declare-fun getCurrentListMap!3959 (array!65276 array!65278 (_ BitVec 32) (_ BitVec 32) V!37669 V!37669 (_ BitVec 32) Int) ListLongMap!13875)

(assert (=> b!1035847 (= (-!529 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-datatypes ((Unit!33873 0))(
  ( (Unit!33874) )
))
(declare-fun lt!456767 () Unit!33873)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!11 (array!65276 array!65278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!37669 V!37669 V!37669 Int) Unit!33873)

(assert (=> b!1035847 (= lt!456767 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!11 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) lt!456768 (defaultEntry!6270 thiss!1427)))))

(declare-fun dynLambda!2003 (Int (_ BitVec 64)) V!37669)

(assert (=> b!1035847 (= lt!456768 (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!691635 () Bool)

(assert (=> start!90612 (=> (not res!691635) (not e!585850))))

(assert (=> start!90612 (= res!691635 (valid!2132 thiss!1427))))

(assert (=> start!90612 e!585850))

(declare-fun e!585846 () Bool)

(assert (=> start!90612 e!585846))

(assert (=> start!90612 true))

(declare-fun b!1035848 () Bool)

(declare-fun e!585849 () Bool)

(declare-fun e!585851 () Bool)

(declare-fun mapRes!38412 () Bool)

(assert (=> b!1035848 (= e!585849 (and e!585851 mapRes!38412))))

(declare-fun condMapEmpty!38412 () Bool)

(declare-fun mapDefault!38412 () ValueCell!11595)

(assert (=> b!1035848 (= condMapEmpty!38412 (= (arr!31420 (_values!6293 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11595)) mapDefault!38412)))))

(declare-fun mapIsEmpty!38412 () Bool)

(assert (=> mapIsEmpty!38412 mapRes!38412))

(declare-fun mapNonEmpty!38412 () Bool)

(declare-fun tp!73766 () Bool)

(declare-fun e!585845 () Bool)

(assert (=> mapNonEmpty!38412 (= mapRes!38412 (and tp!73766 e!585845))))

(declare-fun mapKey!38412 () (_ BitVec 32))

(declare-fun mapRest!38412 () (Array (_ BitVec 32) ValueCell!11595))

(declare-fun mapValue!38412 () ValueCell!11595)

(assert (=> mapNonEmpty!38412 (= (arr!31420 (_values!6293 thiss!1427)) (store mapRest!38412 mapKey!38412 mapValue!38412))))

(declare-fun b!1035849 () Bool)

(declare-fun res!691634 () Bool)

(assert (=> b!1035849 (=> (not res!691634) (not e!585850))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035849 (= res!691634 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun tp_is_empty!24597 () Bool)

(declare-fun array_inv!24133 (array!65276) Bool)

(declare-fun array_inv!24134 (array!65278) Bool)

(assert (=> b!1035850 (= e!585846 (and tp!73765 tp_is_empty!24597 (array_inv!24133 (_keys!11456 thiss!1427)) (array_inv!24134 (_values!6293 thiss!1427)) e!585849))))

(declare-fun b!1035851 () Bool)

(assert (=> b!1035851 (= e!585851 tp_is_empty!24597)))

(declare-fun b!1035852 () Bool)

(declare-fun map!14734 (LongMapFixedSize!5784) ListLongMap!13875)

(assert (=> b!1035852 (= e!585847 (= (map!14734 lt!456769) (-!529 (map!14734 thiss!1427) key!909)))))

(declare-fun b!1035853 () Bool)

(assert (=> b!1035853 (= e!585845 tp_is_empty!24597)))

(assert (= (and start!90612 res!691635) b!1035849))

(assert (= (and b!1035849 res!691634) b!1035847))

(assert (= (and b!1035847 res!691633) b!1035852))

(assert (= (and b!1035848 condMapEmpty!38412) mapIsEmpty!38412))

(assert (= (and b!1035848 (not condMapEmpty!38412)) mapNonEmpty!38412))

(get-info :version)

(assert (= (and mapNonEmpty!38412 ((_ is ValueCellFull!11595) mapValue!38412)) b!1035853))

(assert (= (and b!1035848 ((_ is ValueCellFull!11595) mapDefault!38412)) b!1035851))

(assert (= b!1035850 b!1035848))

(assert (= start!90612 b!1035850))

(declare-fun b_lambda!16133 () Bool)

(assert (=> (not b_lambda!16133) (not b!1035847)))

(declare-fun t!31248 () Bool)

(declare-fun tb!7037 () Bool)

(assert (=> (and b!1035850 (= (defaultEntry!6270 thiss!1427) (defaultEntry!6270 thiss!1427)) t!31248) tb!7037))

(declare-fun result!14427 () Bool)

(assert (=> tb!7037 (= result!14427 tp_is_empty!24597)))

(assert (=> b!1035847 t!31248))

(declare-fun b_and!33399 () Bool)

(assert (= b_and!33397 (and (=> t!31248 result!14427) b_and!33399)))

(declare-fun m!955713 () Bool)

(assert (=> b!1035850 m!955713))

(declare-fun m!955715 () Bool)

(assert (=> b!1035850 m!955715))

(declare-fun m!955717 () Bool)

(assert (=> b!1035847 m!955717))

(declare-fun m!955719 () Bool)

(assert (=> b!1035847 m!955719))

(declare-fun m!955721 () Bool)

(assert (=> b!1035847 m!955721))

(declare-fun m!955723 () Bool)

(assert (=> b!1035847 m!955723))

(declare-fun m!955725 () Bool)

(assert (=> b!1035847 m!955725))

(assert (=> b!1035847 m!955721))

(declare-fun m!955727 () Bool)

(assert (=> b!1035847 m!955727))

(declare-fun m!955729 () Bool)

(assert (=> b!1035852 m!955729))

(declare-fun m!955731 () Bool)

(assert (=> b!1035852 m!955731))

(assert (=> b!1035852 m!955731))

(declare-fun m!955733 () Bool)

(assert (=> b!1035852 m!955733))

(declare-fun m!955735 () Bool)

(assert (=> mapNonEmpty!38412 m!955735))

(declare-fun m!955737 () Bool)

(assert (=> start!90612 m!955737))

(check-sat (not start!90612) (not mapNonEmpty!38412) (not b!1035850) (not b_lambda!16133) b_and!33399 tp_is_empty!24597 (not b!1035847) (not b_next!20877) (not b!1035852))
(check-sat b_and!33399 (not b_next!20877))
(get-model)

(declare-fun b_lambda!16137 () Bool)

(assert (= b_lambda!16133 (or (and b!1035850 b_free!20877) b_lambda!16137)))

(check-sat (not b_lambda!16137) (not start!90612) (not mapNonEmpty!38412) (not b!1035850) b_and!33399 tp_is_empty!24597 (not b!1035847) (not b_next!20877) (not b!1035852))
(check-sat b_and!33399 (not b_next!20877))
(get-model)

(declare-fun d!124513 () Bool)

(assert (=> d!124513 (= (map!14734 lt!456769) (getCurrentListMap!3959 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun bs!30306 () Bool)

(assert (= bs!30306 d!124513))

(declare-fun m!955765 () Bool)

(assert (=> bs!30306 m!955765))

(assert (=> b!1035852 d!124513))

(declare-fun d!124515 () Bool)

(declare-fun lt!456781 () ListLongMap!13875)

(declare-fun contains!6044 (ListLongMap!13875 (_ BitVec 64)) Bool)

(assert (=> d!124515 (not (contains!6044 lt!456781 key!909))))

(declare-fun removeStrictlySorted!58 (List!22035 (_ BitVec 64)) List!22035)

(assert (=> d!124515 (= lt!456781 (ListLongMap!13876 (removeStrictlySorted!58 (toList!6953 (map!14734 thiss!1427)) key!909)))))

(assert (=> d!124515 (= (-!529 (map!14734 thiss!1427) key!909) lt!456781)))

(declare-fun bs!30307 () Bool)

(assert (= bs!30307 d!124515))

(declare-fun m!955767 () Bool)

(assert (=> bs!30307 m!955767))

(declare-fun m!955769 () Bool)

(assert (=> bs!30307 m!955769))

(assert (=> b!1035852 d!124515))

(declare-fun d!124517 () Bool)

(assert (=> d!124517 (= (map!14734 thiss!1427) (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun bs!30308 () Bool)

(assert (= bs!30308 d!124517))

(assert (=> bs!30308 m!955721))

(assert (=> b!1035852 d!124517))

(declare-fun d!124519 () Bool)

(declare-fun res!691651 () Bool)

(declare-fun e!585875 () Bool)

(assert (=> d!124519 (=> (not res!691651) (not e!585875))))

(declare-fun simpleValid!413 (LongMapFixedSize!5784) Bool)

(assert (=> d!124519 (= res!691651 (simpleValid!413 thiss!1427))))

(assert (=> d!124519 (= (valid!2132 thiss!1427) e!585875)))

(declare-fun b!1035885 () Bool)

(declare-fun res!691652 () Bool)

(assert (=> b!1035885 (=> (not res!691652) (not e!585875))))

(declare-fun arrayCountValidKeys!0 (array!65276 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035885 (= res!691652 (= (arrayCountValidKeys!0 (_keys!11456 thiss!1427) #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))) (_size!2947 thiss!1427)))))

(declare-fun b!1035886 () Bool)

(declare-fun res!691653 () Bool)

(assert (=> b!1035886 (=> (not res!691653) (not e!585875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65276 (_ BitVec 32)) Bool)

(assert (=> b!1035886 (= res!691653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11456 thiss!1427) (mask!30166 thiss!1427)))))

(declare-fun b!1035887 () Bool)

(declare-datatypes ((List!22036 0))(
  ( (Nil!22033) (Cons!22032 (h!23234 (_ BitVec 64)) (t!31254 List!22036)) )
))
(declare-fun arrayNoDuplicates!0 (array!65276 (_ BitVec 32) List!22036) Bool)

(assert (=> b!1035887 (= e!585875 (arrayNoDuplicates!0 (_keys!11456 thiss!1427) #b00000000000000000000000000000000 Nil!22033))))

(assert (= (and d!124519 res!691651) b!1035885))

(assert (= (and b!1035885 res!691652) b!1035886))

(assert (= (and b!1035886 res!691653) b!1035887))

(declare-fun m!955771 () Bool)

(assert (=> d!124519 m!955771))

(declare-fun m!955773 () Bool)

(assert (=> b!1035885 m!955773))

(declare-fun m!955775 () Bool)

(assert (=> b!1035886 m!955775))

(declare-fun m!955777 () Bool)

(assert (=> b!1035887 m!955777))

(assert (=> start!90612 d!124519))

(declare-fun d!124521 () Bool)

(assert (=> d!124521 (= (array_inv!24133 (_keys!11456 thiss!1427)) (bvsge (size!31948 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035850 d!124521))

(declare-fun d!124523 () Bool)

(assert (=> d!124523 (= (array_inv!24134 (_values!6293 thiss!1427)) (bvsge (size!31949 (_values!6293 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035850 d!124523))

(declare-fun b!1035930 () Bool)

(declare-fun res!691678 () Bool)

(declare-fun e!585903 () Bool)

(assert (=> b!1035930 (=> (not res!691678) (not e!585903))))

(declare-fun e!585906 () Bool)

(assert (=> b!1035930 (= res!691678 e!585906)))

(declare-fun c!104707 () Bool)

(assert (=> b!1035930 (= c!104707 (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1035931 () Bool)

(declare-fun e!585905 () Bool)

(assert (=> b!1035931 (= e!585906 e!585905)))

(declare-fun res!691676 () Bool)

(declare-fun call!43818 () Bool)

(assert (=> b!1035931 (= res!691676 call!43818)))

(assert (=> b!1035931 (=> (not res!691676) (not e!585905))))

(declare-fun b!1035932 () Bool)

(declare-fun e!585902 () Bool)

(declare-fun lt!456840 () ListLongMap!13875)

(declare-fun apply!942 (ListLongMap!13875 (_ BitVec 64)) V!37669)

(assert (=> b!1035932 (= e!585902 (= (apply!942 lt!456840 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6106 thiss!1427)))))

(declare-fun b!1035933 () Bool)

(declare-fun e!585910 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1035933 (= e!585910 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124525 () Bool)

(assert (=> d!124525 e!585903))

(declare-fun res!691677 () Bool)

(assert (=> d!124525 (=> (not res!691677) (not e!585903))))

(assert (=> d!124525 (= res!691677 (or (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))))

(declare-fun lt!456834 () ListLongMap!13875)

(assert (=> d!124525 (= lt!456840 lt!456834)))

(declare-fun lt!456841 () Unit!33873)

(declare-fun e!585904 () Unit!33873)

(assert (=> d!124525 (= lt!456841 e!585904)))

(declare-fun c!104708 () Bool)

(assert (=> d!124525 (= c!104708 e!585910)))

(declare-fun res!691674 () Bool)

(assert (=> d!124525 (=> (not res!691674) (not e!585910))))

(assert (=> d!124525 (= res!691674 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun e!585911 () ListLongMap!13875)

(assert (=> d!124525 (= lt!456834 e!585911)))

(declare-fun c!104710 () Bool)

(assert (=> d!124525 (= c!104710 (and (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!124525 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124525 (= (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) lt!456840)))

(declare-fun b!1035934 () Bool)

(declare-fun Unit!33875 () Unit!33873)

(assert (=> b!1035934 (= e!585904 Unit!33875)))

(declare-fun bm!43813 () Bool)

(declare-fun call!43820 () ListLongMap!13875)

(declare-fun call!43817 () ListLongMap!13875)

(assert (=> bm!43813 (= call!43820 call!43817)))

(declare-fun b!1035935 () Bool)

(assert (=> b!1035935 (= e!585905 (= (apply!942 lt!456840 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6104 thiss!1427)))))

(declare-fun b!1035936 () Bool)

(declare-fun c!104711 () Bool)

(assert (=> b!1035936 (= c!104711 (and (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!585913 () ListLongMap!13875)

(declare-fun e!585914 () ListLongMap!13875)

(assert (=> b!1035936 (= e!585913 e!585914)))

(declare-fun b!1035937 () Bool)

(declare-fun call!43822 () ListLongMap!13875)

(assert (=> b!1035937 (= e!585914 call!43822)))

(declare-fun call!43821 () ListLongMap!13875)

(declare-fun call!43819 () ListLongMap!13875)

(declare-fun bm!43814 () Bool)

(declare-fun c!104709 () Bool)

(declare-fun +!3065 (ListLongMap!13875 tuple2!15838) ListLongMap!13875)

(assert (=> bm!43814 (= call!43819 (+!3065 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1035938 () Bool)

(declare-fun e!585912 () Bool)

(assert (=> b!1035938 (= e!585912 e!585902)))

(declare-fun res!691679 () Bool)

(declare-fun call!43816 () Bool)

(assert (=> b!1035938 (= res!691679 call!43816)))

(assert (=> b!1035938 (=> (not res!691679) (not e!585902))))

(declare-fun b!1035939 () Bool)

(assert (=> b!1035939 (= e!585911 e!585913)))

(assert (=> b!1035939 (= c!104709 (and (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1035940 () Bool)

(declare-fun e!585907 () Bool)

(assert (=> b!1035940 (= e!585907 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035941 () Bool)

(declare-fun lt!456847 () Unit!33873)

(assert (=> b!1035941 (= e!585904 lt!456847)))

(declare-fun lt!456845 () ListLongMap!13875)

(declare-fun getCurrentListMapNoExtraKeys!3535 (array!65276 array!65278 (_ BitVec 32) (_ BitVec 32) V!37669 V!37669 (_ BitVec 32) Int) ListLongMap!13875)

(assert (=> b!1035941 (= lt!456845 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456842 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456842 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456835 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456835 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456844 () Unit!33873)

(declare-fun addStillContains!630 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> b!1035941 (= lt!456844 (addStillContains!630 lt!456845 lt!456842 (zeroValue!6104 thiss!1427) lt!456835))))

(assert (=> b!1035941 (contains!6044 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!456835)))

(declare-fun lt!456846 () Unit!33873)

(assert (=> b!1035941 (= lt!456846 lt!456844)))

(declare-fun lt!456827 () ListLongMap!13875)

(assert (=> b!1035941 (= lt!456827 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456843 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456843 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456836 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456836 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456833 () Unit!33873)

(declare-fun addApplyDifferent!482 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> b!1035941 (= lt!456833 (addApplyDifferent!482 lt!456827 lt!456843 (minValue!6106 thiss!1427) lt!456836))))

(assert (=> b!1035941 (= (apply!942 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!456836) (apply!942 lt!456827 lt!456836))))

(declare-fun lt!456828 () Unit!33873)

(assert (=> b!1035941 (= lt!456828 lt!456833)))

(declare-fun lt!456831 () ListLongMap!13875)

(assert (=> b!1035941 (= lt!456831 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456838 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456838 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456839 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456830 () Unit!33873)

(assert (=> b!1035941 (= lt!456830 (addApplyDifferent!482 lt!456831 lt!456838 (zeroValue!6104 thiss!1427) lt!456839))))

(assert (=> b!1035941 (= (apply!942 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!456839) (apply!942 lt!456831 lt!456839))))

(declare-fun lt!456826 () Unit!33873)

(assert (=> b!1035941 (= lt!456826 lt!456830)))

(declare-fun lt!456829 () ListLongMap!13875)

(assert (=> b!1035941 (= lt!456829 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456837 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456837 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456832 () (_ BitVec 64))

(assert (=> b!1035941 (= lt!456832 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035941 (= lt!456847 (addApplyDifferent!482 lt!456829 lt!456837 (minValue!6106 thiss!1427) lt!456832))))

(assert (=> b!1035941 (= (apply!942 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!456832) (apply!942 lt!456829 lt!456832))))

(declare-fun bm!43815 () Bool)

(assert (=> bm!43815 (= call!43816 (contains!6044 lt!456840 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1035942 () Bool)

(declare-fun res!691672 () Bool)

(assert (=> b!1035942 (=> (not res!691672) (not e!585903))))

(declare-fun e!585909 () Bool)

(assert (=> b!1035942 (= res!691672 e!585909)))

(declare-fun res!691673 () Bool)

(assert (=> b!1035942 (=> res!691673 e!585909)))

(assert (=> b!1035942 (= res!691673 (not e!585907))))

(declare-fun res!691675 () Bool)

(assert (=> b!1035942 (=> (not res!691675) (not e!585907))))

(assert (=> b!1035942 (= res!691675 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1035943 () Bool)

(assert (=> b!1035943 (= e!585912 (not call!43816))))

(declare-fun b!1035944 () Bool)

(assert (=> b!1035944 (= e!585903 e!585912)))

(declare-fun c!104706 () Bool)

(assert (=> b!1035944 (= c!104706 (not (= (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43816 () Bool)

(assert (=> bm!43816 (= call!43822 call!43819)))

(declare-fun b!1035945 () Bool)

(declare-fun e!585908 () Bool)

(declare-fun get!16474 (ValueCell!11595 V!37669) V!37669)

(assert (=> b!1035945 (= e!585908 (= (apply!942 lt!456840 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1035945 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 thiss!1427))))))

(assert (=> b!1035945 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun bm!43817 () Bool)

(assert (=> bm!43817 (= call!43817 call!43821)))

(declare-fun bm!43818 () Bool)

(assert (=> bm!43818 (= call!43821 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1035946 () Bool)

(assert (=> b!1035946 (= e!585913 call!43822)))

(declare-fun bm!43819 () Bool)

(assert (=> bm!43819 (= call!43818 (contains!6044 lt!456840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1035947 () Bool)

(assert (=> b!1035947 (= e!585911 (+!3065 call!43819 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))

(declare-fun b!1035948 () Bool)

(assert (=> b!1035948 (= e!585914 call!43820)))

(declare-fun b!1035949 () Bool)

(assert (=> b!1035949 (= e!585909 e!585908)))

(declare-fun res!691680 () Bool)

(assert (=> b!1035949 (=> (not res!691680) (not e!585908))))

(assert (=> b!1035949 (= res!691680 (contains!6044 lt!456840 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1035949 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1035950 () Bool)

(assert (=> b!1035950 (= e!585906 (not call!43818))))

(assert (= (and d!124525 c!104710) b!1035947))

(assert (= (and d!124525 (not c!104710)) b!1035939))

(assert (= (and b!1035939 c!104709) b!1035946))

(assert (= (and b!1035939 (not c!104709)) b!1035936))

(assert (= (and b!1035936 c!104711) b!1035937))

(assert (= (and b!1035936 (not c!104711)) b!1035948))

(assert (= (or b!1035937 b!1035948) bm!43813))

(assert (= (or b!1035946 bm!43813) bm!43817))

(assert (= (or b!1035946 b!1035937) bm!43816))

(assert (= (or b!1035947 bm!43817) bm!43818))

(assert (= (or b!1035947 bm!43816) bm!43814))

(assert (= (and d!124525 res!691674) b!1035933))

(assert (= (and d!124525 c!104708) b!1035941))

(assert (= (and d!124525 (not c!104708)) b!1035934))

(assert (= (and d!124525 res!691677) b!1035942))

(assert (= (and b!1035942 res!691675) b!1035940))

(assert (= (and b!1035942 (not res!691673)) b!1035949))

(assert (= (and b!1035949 res!691680) b!1035945))

(assert (= (and b!1035942 res!691672) b!1035930))

(assert (= (and b!1035930 c!104707) b!1035931))

(assert (= (and b!1035930 (not c!104707)) b!1035950))

(assert (= (and b!1035931 res!691676) b!1035935))

(assert (= (or b!1035931 b!1035950) bm!43819))

(assert (= (and b!1035930 res!691678) b!1035944))

(assert (= (and b!1035944 c!104706) b!1035938))

(assert (= (and b!1035944 (not c!104706)) b!1035943))

(assert (= (and b!1035938 res!691679) b!1035932))

(assert (= (or b!1035938 b!1035943) bm!43815))

(declare-fun b_lambda!16139 () Bool)

(assert (=> (not b_lambda!16139) (not b!1035945)))

(declare-fun t!31253 () Bool)

(declare-fun tb!7041 () Bool)

(assert (=> (and b!1035850 (= (defaultEntry!6270 thiss!1427) (defaultEntry!6270 thiss!1427)) t!31253) tb!7041))

(declare-fun result!14435 () Bool)

(assert (=> tb!7041 (= result!14435 tp_is_empty!24597)))

(assert (=> b!1035945 t!31253))

(declare-fun b_and!33405 () Bool)

(assert (= b_and!33399 (and (=> t!31253 result!14435) b_and!33405)))

(declare-fun m!955779 () Bool)

(assert (=> b!1035947 m!955779))

(declare-fun m!955781 () Bool)

(assert (=> d!124525 m!955781))

(declare-fun m!955783 () Bool)

(assert (=> b!1035932 m!955783))

(declare-fun m!955785 () Bool)

(assert (=> b!1035933 m!955785))

(assert (=> b!1035933 m!955785))

(declare-fun m!955787 () Bool)

(assert (=> b!1035933 m!955787))

(declare-fun m!955789 () Bool)

(assert (=> bm!43819 m!955789))

(declare-fun m!955791 () Bool)

(assert (=> b!1035945 m!955791))

(assert (=> b!1035945 m!955785))

(declare-fun m!955793 () Bool)

(assert (=> b!1035945 m!955793))

(assert (=> b!1035945 m!955785))

(declare-fun m!955795 () Bool)

(assert (=> b!1035945 m!955795))

(assert (=> b!1035945 m!955791))

(assert (=> b!1035945 m!955793))

(declare-fun m!955797 () Bool)

(assert (=> b!1035945 m!955797))

(assert (=> b!1035949 m!955785))

(assert (=> b!1035949 m!955785))

(declare-fun m!955799 () Bool)

(assert (=> b!1035949 m!955799))

(declare-fun m!955801 () Bool)

(assert (=> bm!43814 m!955801))

(declare-fun m!955803 () Bool)

(assert (=> b!1035941 m!955803))

(assert (=> b!1035941 m!955803))

(declare-fun m!955805 () Bool)

(assert (=> b!1035941 m!955805))

(assert (=> b!1035941 m!955785))

(declare-fun m!955807 () Bool)

(assert (=> b!1035941 m!955807))

(declare-fun m!955809 () Bool)

(assert (=> b!1035941 m!955809))

(declare-fun m!955811 () Bool)

(assert (=> b!1035941 m!955811))

(declare-fun m!955813 () Bool)

(assert (=> b!1035941 m!955813))

(declare-fun m!955815 () Bool)

(assert (=> b!1035941 m!955815))

(declare-fun m!955817 () Bool)

(assert (=> b!1035941 m!955817))

(declare-fun m!955819 () Bool)

(assert (=> b!1035941 m!955819))

(declare-fun m!955821 () Bool)

(assert (=> b!1035941 m!955821))

(declare-fun m!955823 () Bool)

(assert (=> b!1035941 m!955823))

(declare-fun m!955825 () Bool)

(assert (=> b!1035941 m!955825))

(assert (=> b!1035941 m!955809))

(declare-fun m!955827 () Bool)

(assert (=> b!1035941 m!955827))

(declare-fun m!955829 () Bool)

(assert (=> b!1035941 m!955829))

(assert (=> b!1035941 m!955829))

(declare-fun m!955831 () Bool)

(assert (=> b!1035941 m!955831))

(assert (=> b!1035941 m!955815))

(declare-fun m!955833 () Bool)

(assert (=> b!1035941 m!955833))

(declare-fun m!955835 () Bool)

(assert (=> b!1035935 m!955835))

(assert (=> b!1035940 m!955785))

(assert (=> b!1035940 m!955785))

(assert (=> b!1035940 m!955787))

(declare-fun m!955837 () Bool)

(assert (=> bm!43815 m!955837))

(assert (=> bm!43818 m!955823))

(assert (=> b!1035847 d!124525))

(declare-fun d!124527 () Bool)

(declare-fun lt!456848 () ListLongMap!13875)

(assert (=> d!124527 (not (contains!6044 lt!456848 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124527 (= lt!456848 (ListLongMap!13876 (removeStrictlySorted!58 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124527 (= (-!529 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!456848)))

(declare-fun bs!30309 () Bool)

(assert (= bs!30309 d!124527))

(declare-fun m!955839 () Bool)

(assert (=> bs!30309 m!955839))

(declare-fun m!955841 () Bool)

(assert (=> bs!30309 m!955841))

(assert (=> b!1035847 d!124527))

(declare-fun d!124529 () Bool)

(declare-fun res!691681 () Bool)

(declare-fun e!585915 () Bool)

(assert (=> d!124529 (=> (not res!691681) (not e!585915))))

(assert (=> d!124529 (= res!691681 (simpleValid!413 lt!456769))))

(assert (=> d!124529 (= (valid!2132 lt!456769) e!585915)))

(declare-fun b!1035951 () Bool)

(declare-fun res!691682 () Bool)

(assert (=> b!1035951 (=> (not res!691682) (not e!585915))))

(assert (=> b!1035951 (= res!691682 (= (arrayCountValidKeys!0 (_keys!11456 lt!456769) #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))) (_size!2947 lt!456769)))))

(declare-fun b!1035952 () Bool)

(declare-fun res!691683 () Bool)

(assert (=> b!1035952 (=> (not res!691683) (not e!585915))))

(assert (=> b!1035952 (= res!691683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11456 lt!456769) (mask!30166 lt!456769)))))

(declare-fun b!1035953 () Bool)

(assert (=> b!1035953 (= e!585915 (arrayNoDuplicates!0 (_keys!11456 lt!456769) #b00000000000000000000000000000000 Nil!22033))))

(assert (= (and d!124529 res!691681) b!1035951))

(assert (= (and b!1035951 res!691682) b!1035952))

(assert (= (and b!1035952 res!691683) b!1035953))

(declare-fun m!955843 () Bool)

(assert (=> d!124529 m!955843))

(declare-fun m!955845 () Bool)

(assert (=> b!1035951 m!955845))

(declare-fun m!955847 () Bool)

(assert (=> b!1035952 m!955847))

(declare-fun m!955849 () Bool)

(assert (=> b!1035953 m!955849))

(assert (=> b!1035847 d!124529))

(declare-fun d!124531 () Bool)

(assert (=> d!124531 (= (-!529 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456851 () Unit!33873)

(declare-fun choose!1708 (array!65276 array!65278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!37669 V!37669 V!37669 Int) Unit!33873)

(assert (=> d!124531 (= lt!456851 (choose!1708 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) lt!456768 (defaultEntry!6270 thiss!1427)))))

(assert (=> d!124531 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124531 (= (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!11 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) lt!456768 (defaultEntry!6270 thiss!1427)) lt!456851)))

(declare-fun bs!30310 () Bool)

(assert (= bs!30310 d!124531))

(assert (=> bs!30310 m!955781))

(assert (=> bs!30310 m!955721))

(declare-fun m!955851 () Bool)

(assert (=> bs!30310 m!955851))

(assert (=> bs!30310 m!955721))

(assert (=> bs!30310 m!955723))

(assert (=> bs!30310 m!955727))

(assert (=> b!1035847 d!124531))

(declare-fun b!1035954 () Bool)

(declare-fun res!691690 () Bool)

(declare-fun e!585917 () Bool)

(assert (=> b!1035954 (=> (not res!691690) (not e!585917))))

(declare-fun e!585920 () Bool)

(assert (=> b!1035954 (= res!691690 e!585920)))

(declare-fun c!104713 () Bool)

(assert (=> b!1035954 (= c!104713 (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1035955 () Bool)

(declare-fun e!585919 () Bool)

(assert (=> b!1035955 (= e!585920 e!585919)))

(declare-fun res!691688 () Bool)

(declare-fun call!43825 () Bool)

(assert (=> b!1035955 (= res!691688 call!43825)))

(assert (=> b!1035955 (=> (not res!691688) (not e!585919))))

(declare-fun b!1035956 () Bool)

(declare-fun e!585916 () Bool)

(declare-fun lt!456866 () ListLongMap!13875)

(assert (=> b!1035956 (= e!585916 (= (apply!942 lt!456866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456768))))

(declare-fun b!1035957 () Bool)

(declare-fun e!585924 () Bool)

(assert (=> b!1035957 (= e!585924 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124533 () Bool)

(assert (=> d!124533 e!585917))

(declare-fun res!691689 () Bool)

(assert (=> d!124533 (=> (not res!691689) (not e!585917))))

(assert (=> d!124533 (= res!691689 (or (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))))

(declare-fun lt!456860 () ListLongMap!13875)

(assert (=> d!124533 (= lt!456866 lt!456860)))

(declare-fun lt!456867 () Unit!33873)

(declare-fun e!585918 () Unit!33873)

(assert (=> d!124533 (= lt!456867 e!585918)))

(declare-fun c!104714 () Bool)

(assert (=> d!124533 (= c!104714 e!585924)))

(declare-fun res!691686 () Bool)

(assert (=> d!124533 (=> (not res!691686) (not e!585924))))

(assert (=> d!124533 (= res!691686 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun e!585925 () ListLongMap!13875)

(assert (=> d!124533 (= lt!456860 e!585925)))

(declare-fun c!104716 () Bool)

(assert (=> d!124533 (= c!104716 (and (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!124533 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124533 (= (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) lt!456866)))

(declare-fun b!1035958 () Bool)

(declare-fun Unit!33876 () Unit!33873)

(assert (=> b!1035958 (= e!585918 Unit!33876)))

(declare-fun bm!43820 () Bool)

(declare-fun call!43827 () ListLongMap!13875)

(declare-fun call!43824 () ListLongMap!13875)

(assert (=> bm!43820 (= call!43827 call!43824)))

(declare-fun b!1035959 () Bool)

(assert (=> b!1035959 (= e!585919 (= (apply!942 lt!456866 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6104 thiss!1427)))))

(declare-fun b!1035960 () Bool)

(declare-fun c!104717 () Bool)

(assert (=> b!1035960 (= c!104717 (and (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!585927 () ListLongMap!13875)

(declare-fun e!585928 () ListLongMap!13875)

(assert (=> b!1035960 (= e!585927 e!585928)))

(declare-fun b!1035961 () Bool)

(declare-fun call!43829 () ListLongMap!13875)

(assert (=> b!1035961 (= e!585928 call!43829)))

(declare-fun call!43826 () ListLongMap!13875)

(declare-fun c!104715 () Bool)

(declare-fun call!43828 () ListLongMap!13875)

(declare-fun bm!43821 () Bool)

(assert (=> bm!43821 (= call!43826 (+!3065 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1035962 () Bool)

(declare-fun e!585926 () Bool)

(assert (=> b!1035962 (= e!585926 e!585916)))

(declare-fun res!691691 () Bool)

(declare-fun call!43823 () Bool)

(assert (=> b!1035962 (= res!691691 call!43823)))

(assert (=> b!1035962 (=> (not res!691691) (not e!585916))))

(declare-fun b!1035963 () Bool)

(assert (=> b!1035963 (= e!585925 e!585927)))

(assert (=> b!1035963 (= c!104715 (and (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1035964 () Bool)

(declare-fun e!585921 () Bool)

(assert (=> b!1035964 (= e!585921 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035965 () Bool)

(declare-fun lt!456873 () Unit!33873)

(assert (=> b!1035965 (= e!585918 lt!456873)))

(declare-fun lt!456871 () ListLongMap!13875)

(assert (=> b!1035965 (= lt!456871 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456868 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456868 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456861 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456861 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456870 () Unit!33873)

(assert (=> b!1035965 (= lt!456870 (addStillContains!630 lt!456871 lt!456868 (zeroValue!6104 thiss!1427) lt!456861))))

(assert (=> b!1035965 (contains!6044 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!456861)))

(declare-fun lt!456872 () Unit!33873)

(assert (=> b!1035965 (= lt!456872 lt!456870)))

(declare-fun lt!456853 () ListLongMap!13875)

(assert (=> b!1035965 (= lt!456853 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456869 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456869 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456862 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456862 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456859 () Unit!33873)

(assert (=> b!1035965 (= lt!456859 (addApplyDifferent!482 lt!456853 lt!456869 lt!456768 lt!456862))))

(assert (=> b!1035965 (= (apply!942 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)) lt!456862) (apply!942 lt!456853 lt!456862))))

(declare-fun lt!456854 () Unit!33873)

(assert (=> b!1035965 (= lt!456854 lt!456859)))

(declare-fun lt!456857 () ListLongMap!13875)

(assert (=> b!1035965 (= lt!456857 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456864 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456865 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456865 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456856 () Unit!33873)

(assert (=> b!1035965 (= lt!456856 (addApplyDifferent!482 lt!456857 lt!456864 (zeroValue!6104 thiss!1427) lt!456865))))

(assert (=> b!1035965 (= (apply!942 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!456865) (apply!942 lt!456857 lt!456865))))

(declare-fun lt!456852 () Unit!33873)

(assert (=> b!1035965 (= lt!456852 lt!456856)))

(declare-fun lt!456855 () ListLongMap!13875)

(assert (=> b!1035965 (= lt!456855 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun lt!456863 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456863 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456858 () (_ BitVec 64))

(assert (=> b!1035965 (= lt!456858 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035965 (= lt!456873 (addApplyDifferent!482 lt!456855 lt!456863 lt!456768 lt!456858))))

(assert (=> b!1035965 (= (apply!942 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)) lt!456858) (apply!942 lt!456855 lt!456858))))

(declare-fun bm!43822 () Bool)

(assert (=> bm!43822 (= call!43823 (contains!6044 lt!456866 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1035966 () Bool)

(declare-fun res!691684 () Bool)

(assert (=> b!1035966 (=> (not res!691684) (not e!585917))))

(declare-fun e!585923 () Bool)

(assert (=> b!1035966 (= res!691684 e!585923)))

(declare-fun res!691685 () Bool)

(assert (=> b!1035966 (=> res!691685 e!585923)))

(assert (=> b!1035966 (= res!691685 (not e!585921))))

(declare-fun res!691687 () Bool)

(assert (=> b!1035966 (=> (not res!691687) (not e!585921))))

(assert (=> b!1035966 (= res!691687 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1035967 () Bool)

(assert (=> b!1035967 (= e!585926 (not call!43823))))

(declare-fun b!1035968 () Bool)

(assert (=> b!1035968 (= e!585917 e!585926)))

(declare-fun c!104712 () Bool)

(assert (=> b!1035968 (= c!104712 (not (= (bvand (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43823 () Bool)

(assert (=> bm!43823 (= call!43829 call!43826)))

(declare-fun b!1035969 () Bool)

(declare-fun e!585922 () Bool)

(assert (=> b!1035969 (= e!585922 (= (apply!942 lt!456866 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1035969 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 thiss!1427))))))

(assert (=> b!1035969 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun bm!43824 () Bool)

(assert (=> bm!43824 (= call!43824 call!43828)))

(declare-fun bm!43825 () Bool)

(assert (=> bm!43825 (= call!43828 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1035970 () Bool)

(assert (=> b!1035970 (= e!585927 call!43829)))

(declare-fun bm!43826 () Bool)

(assert (=> bm!43826 (= call!43825 (contains!6044 lt!456866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1035971 () Bool)

(assert (=> b!1035971 (= e!585925 (+!3065 call!43826 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))

(declare-fun b!1035972 () Bool)

(assert (=> b!1035972 (= e!585928 call!43827)))

(declare-fun b!1035973 () Bool)

(assert (=> b!1035973 (= e!585923 e!585922)))

(declare-fun res!691692 () Bool)

(assert (=> b!1035973 (=> (not res!691692) (not e!585922))))

(assert (=> b!1035973 (= res!691692 (contains!6044 lt!456866 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1035973 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1035974 () Bool)

(assert (=> b!1035974 (= e!585920 (not call!43825))))

(assert (= (and d!124533 c!104716) b!1035971))

(assert (= (and d!124533 (not c!104716)) b!1035963))

(assert (= (and b!1035963 c!104715) b!1035970))

(assert (= (and b!1035963 (not c!104715)) b!1035960))

(assert (= (and b!1035960 c!104717) b!1035961))

(assert (= (and b!1035960 (not c!104717)) b!1035972))

(assert (= (or b!1035961 b!1035972) bm!43820))

(assert (= (or b!1035970 bm!43820) bm!43824))

(assert (= (or b!1035970 b!1035961) bm!43823))

(assert (= (or b!1035971 bm!43824) bm!43825))

(assert (= (or b!1035971 bm!43823) bm!43821))

(assert (= (and d!124533 res!691686) b!1035957))

(assert (= (and d!124533 c!104714) b!1035965))

(assert (= (and d!124533 (not c!104714)) b!1035958))

(assert (= (and d!124533 res!691689) b!1035966))

(assert (= (and b!1035966 res!691687) b!1035964))

(assert (= (and b!1035966 (not res!691685)) b!1035973))

(assert (= (and b!1035973 res!691692) b!1035969))

(assert (= (and b!1035966 res!691684) b!1035954))

(assert (= (and b!1035954 c!104713) b!1035955))

(assert (= (and b!1035954 (not c!104713)) b!1035974))

(assert (= (and b!1035955 res!691688) b!1035959))

(assert (= (or b!1035955 b!1035974) bm!43826))

(assert (= (and b!1035954 res!691690) b!1035968))

(assert (= (and b!1035968 c!104712) b!1035962))

(assert (= (and b!1035968 (not c!104712)) b!1035967))

(assert (= (and b!1035962 res!691691) b!1035956))

(assert (= (or b!1035962 b!1035967) bm!43822))

(declare-fun b_lambda!16141 () Bool)

(assert (=> (not b_lambda!16141) (not b!1035969)))

(assert (=> b!1035969 t!31253))

(declare-fun b_and!33407 () Bool)

(assert (= b_and!33405 (and (=> t!31253 result!14435) b_and!33407)))

(declare-fun m!955853 () Bool)

(assert (=> b!1035971 m!955853))

(assert (=> d!124533 m!955781))

(declare-fun m!955855 () Bool)

(assert (=> b!1035956 m!955855))

(assert (=> b!1035957 m!955785))

(assert (=> b!1035957 m!955785))

(assert (=> b!1035957 m!955787))

(declare-fun m!955857 () Bool)

(assert (=> bm!43826 m!955857))

(assert (=> b!1035969 m!955791))

(assert (=> b!1035969 m!955785))

(assert (=> b!1035969 m!955793))

(assert (=> b!1035969 m!955785))

(declare-fun m!955859 () Bool)

(assert (=> b!1035969 m!955859))

(assert (=> b!1035969 m!955791))

(assert (=> b!1035969 m!955793))

(assert (=> b!1035969 m!955797))

(assert (=> b!1035973 m!955785))

(assert (=> b!1035973 m!955785))

(declare-fun m!955861 () Bool)

(assert (=> b!1035973 m!955861))

(declare-fun m!955863 () Bool)

(assert (=> bm!43821 m!955863))

(declare-fun m!955865 () Bool)

(assert (=> b!1035965 m!955865))

(assert (=> b!1035965 m!955865))

(declare-fun m!955867 () Bool)

(assert (=> b!1035965 m!955867))

(assert (=> b!1035965 m!955785))

(declare-fun m!955869 () Bool)

(assert (=> b!1035965 m!955869))

(declare-fun m!955871 () Bool)

(assert (=> b!1035965 m!955871))

(declare-fun m!955873 () Bool)

(assert (=> b!1035965 m!955873))

(declare-fun m!955875 () Bool)

(assert (=> b!1035965 m!955875))

(declare-fun m!955877 () Bool)

(assert (=> b!1035965 m!955877))

(declare-fun m!955879 () Bool)

(assert (=> b!1035965 m!955879))

(declare-fun m!955881 () Bool)

(assert (=> b!1035965 m!955881))

(declare-fun m!955883 () Bool)

(assert (=> b!1035965 m!955883))

(declare-fun m!955885 () Bool)

(assert (=> b!1035965 m!955885))

(declare-fun m!955887 () Bool)

(assert (=> b!1035965 m!955887))

(assert (=> b!1035965 m!955871))

(declare-fun m!955889 () Bool)

(assert (=> b!1035965 m!955889))

(declare-fun m!955891 () Bool)

(assert (=> b!1035965 m!955891))

(assert (=> b!1035965 m!955891))

(declare-fun m!955893 () Bool)

(assert (=> b!1035965 m!955893))

(assert (=> b!1035965 m!955877))

(declare-fun m!955895 () Bool)

(assert (=> b!1035965 m!955895))

(declare-fun m!955897 () Bool)

(assert (=> b!1035959 m!955897))

(assert (=> b!1035964 m!955785))

(assert (=> b!1035964 m!955785))

(assert (=> b!1035964 m!955787))

(declare-fun m!955899 () Bool)

(assert (=> bm!43822 m!955899))

(assert (=> bm!43825 m!955885))

(assert (=> b!1035847 d!124533))

(declare-fun mapNonEmpty!38418 () Bool)

(declare-fun mapRes!38418 () Bool)

(declare-fun tp!73775 () Bool)

(declare-fun e!585934 () Bool)

(assert (=> mapNonEmpty!38418 (= mapRes!38418 (and tp!73775 e!585934))))

(declare-fun mapValue!38418 () ValueCell!11595)

(declare-fun mapKey!38418 () (_ BitVec 32))

(declare-fun mapRest!38418 () (Array (_ BitVec 32) ValueCell!11595))

(assert (=> mapNonEmpty!38418 (= mapRest!38412 (store mapRest!38418 mapKey!38418 mapValue!38418))))

(declare-fun condMapEmpty!38418 () Bool)

(declare-fun mapDefault!38418 () ValueCell!11595)

(assert (=> mapNonEmpty!38412 (= condMapEmpty!38418 (= mapRest!38412 ((as const (Array (_ BitVec 32) ValueCell!11595)) mapDefault!38418)))))

(declare-fun e!585933 () Bool)

(assert (=> mapNonEmpty!38412 (= tp!73766 (and e!585933 mapRes!38418))))

(declare-fun mapIsEmpty!38418 () Bool)

(assert (=> mapIsEmpty!38418 mapRes!38418))

(declare-fun b!1035981 () Bool)

(assert (=> b!1035981 (= e!585934 tp_is_empty!24597)))

(declare-fun b!1035982 () Bool)

(assert (=> b!1035982 (= e!585933 tp_is_empty!24597)))

(assert (= (and mapNonEmpty!38412 condMapEmpty!38418) mapIsEmpty!38418))

(assert (= (and mapNonEmpty!38412 (not condMapEmpty!38418)) mapNonEmpty!38418))

(assert (= (and mapNonEmpty!38418 ((_ is ValueCellFull!11595) mapValue!38418)) b!1035981))

(assert (= (and mapNonEmpty!38412 ((_ is ValueCellFull!11595) mapDefault!38418)) b!1035982))

(declare-fun m!955901 () Bool)

(assert (=> mapNonEmpty!38418 m!955901))

(declare-fun b_lambda!16143 () Bool)

(assert (= b_lambda!16139 (or (and b!1035850 b_free!20877) b_lambda!16143)))

(declare-fun b_lambda!16145 () Bool)

(assert (= b_lambda!16141 (or (and b!1035850 b_free!20877) b_lambda!16145)))

(check-sat (not b!1035941) (not b!1035956) (not d!124517) (not b!1035969) (not b!1035971) (not b!1035947) (not d!124527) (not b!1035932) (not b!1035957) (not bm!43822) (not b_lambda!16137) (not b!1035935) (not b_lambda!16145) (not bm!43815) (not bm!43825) (not b!1035953) (not b!1035952) tp_is_empty!24597 (not b!1035973) (not b!1035886) (not d!124519) (not b!1035887) (not b!1035885) (not b!1035959) (not b!1035949) (not bm!43826) (not b!1035965) (not b_lambda!16143) (not b!1035951) (not d!124513) (not d!124525) (not d!124531) (not d!124533) b_and!33407 (not mapNonEmpty!38418) (not b!1035945) (not b_next!20877) (not bm!43818) (not d!124515) (not bm!43814) (not b!1035933) (not d!124529) (not bm!43821) (not b!1035964) (not bm!43819) (not b!1035940))
(check-sat b_and!33407 (not b_next!20877))
(get-model)

(declare-fun e!585950 () Bool)

(declare-fun lt!456890 () ListLongMap!13875)

(declare-fun b!1036007 () Bool)

(assert (=> b!1036007 (= e!585950 (= lt!456890 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427))))))

(declare-fun d!124535 () Bool)

(declare-fun e!585954 () Bool)

(assert (=> d!124535 e!585954))

(declare-fun res!691702 () Bool)

(assert (=> d!124535 (=> (not res!691702) (not e!585954))))

(assert (=> d!124535 (= res!691702 (not (contains!6044 lt!456890 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!585953 () ListLongMap!13875)

(assert (=> d!124535 (= lt!456890 e!585953)))

(declare-fun c!104728 () Bool)

(assert (=> d!124535 (= c!104728 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124535 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124535 (= (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) lt!456890)))

(declare-fun b!1036008 () Bool)

(declare-fun e!585951 () Bool)

(assert (=> b!1036008 (= e!585954 e!585951)))

(declare-fun c!104726 () Bool)

(declare-fun e!585955 () Bool)

(assert (=> b!1036008 (= c!104726 e!585955)))

(declare-fun res!691704 () Bool)

(assert (=> b!1036008 (=> (not res!691704) (not e!585955))))

(assert (=> b!1036008 (= res!691704 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036009 () Bool)

(assert (=> b!1036009 (= e!585951 e!585950)))

(declare-fun c!104727 () Bool)

(assert (=> b!1036009 (= c!104727 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036010 () Bool)

(assert (=> b!1036010 (= e!585955 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036010 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1036011 () Bool)

(declare-fun isEmpty!932 (ListLongMap!13875) Bool)

(assert (=> b!1036011 (= e!585950 (isEmpty!932 lt!456890))))

(declare-fun b!1036012 () Bool)

(assert (=> b!1036012 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> b!1036012 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 thiss!1427))))))

(declare-fun e!585952 () Bool)

(assert (=> b!1036012 (= e!585952 (= (apply!942 lt!456890 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036013 () Bool)

(assert (=> b!1036013 (= e!585953 (ListLongMap!13876 Nil!22032))))

(declare-fun b!1036014 () Bool)

(declare-fun e!585949 () ListLongMap!13875)

(declare-fun call!43832 () ListLongMap!13875)

(assert (=> b!1036014 (= e!585949 call!43832)))

(declare-fun b!1036015 () Bool)

(declare-fun lt!456891 () Unit!33873)

(declare-fun lt!456888 () Unit!33873)

(assert (=> b!1036015 (= lt!456891 lt!456888)))

(declare-fun lt!456892 () ListLongMap!13875)

(declare-fun lt!456893 () (_ BitVec 64))

(declare-fun lt!456889 () V!37669)

(declare-fun lt!456894 () (_ BitVec 64))

(assert (=> b!1036015 (not (contains!6044 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889)) lt!456894))))

(declare-fun addStillNotContains!245 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> b!1036015 (= lt!456888 (addStillNotContains!245 lt!456892 lt!456893 lt!456889 lt!456894))))

(assert (=> b!1036015 (= lt!456894 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1036015 (= lt!456889 (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036015 (= lt!456893 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1036015 (= lt!456892 call!43832)))

(assert (=> b!1036015 (= e!585949 (+!3065 call!43832 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!43829 () Bool)

(assert (=> bm!43829 (= call!43832 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1036016 () Bool)

(declare-fun res!691703 () Bool)

(assert (=> b!1036016 (=> (not res!691703) (not e!585954))))

(assert (=> b!1036016 (= res!691703 (not (contains!6044 lt!456890 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036017 () Bool)

(assert (=> b!1036017 (= e!585953 e!585949)))

(declare-fun c!104729 () Bool)

(assert (=> b!1036017 (= c!104729 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036018 () Bool)

(assert (=> b!1036018 (= e!585951 e!585952)))

(assert (=> b!1036018 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun res!691701 () Bool)

(assert (=> b!1036018 (= res!691701 (contains!6044 lt!456890 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036018 (=> (not res!691701) (not e!585952))))

(assert (= (and d!124535 c!104728) b!1036013))

(assert (= (and d!124535 (not c!104728)) b!1036017))

(assert (= (and b!1036017 c!104729) b!1036015))

(assert (= (and b!1036017 (not c!104729)) b!1036014))

(assert (= (or b!1036015 b!1036014) bm!43829))

(assert (= (and d!124535 res!691702) b!1036016))

(assert (= (and b!1036016 res!691703) b!1036008))

(assert (= (and b!1036008 res!691704) b!1036010))

(assert (= (and b!1036008 c!104726) b!1036018))

(assert (= (and b!1036008 (not c!104726)) b!1036009))

(assert (= (and b!1036018 res!691701) b!1036012))

(assert (= (and b!1036009 c!104727) b!1036007))

(assert (= (and b!1036009 (not c!104727)) b!1036011))

(declare-fun b_lambda!16147 () Bool)

(assert (=> (not b_lambda!16147) (not b!1036012)))

(assert (=> b!1036012 t!31253))

(declare-fun b_and!33409 () Bool)

(assert (= b_and!33407 (and (=> t!31253 result!14435) b_and!33409)))

(declare-fun b_lambda!16149 () Bool)

(assert (=> (not b_lambda!16149) (not b!1036015)))

(assert (=> b!1036015 t!31253))

(declare-fun b_and!33411 () Bool)

(assert (= b_and!33409 (and (=> t!31253 result!14435) b_and!33411)))

(declare-fun m!955903 () Bool)

(assert (=> bm!43829 m!955903))

(declare-fun m!955905 () Bool)

(assert (=> b!1036016 m!955905))

(assert (=> b!1036018 m!955785))

(assert (=> b!1036018 m!955785))

(declare-fun m!955907 () Bool)

(assert (=> b!1036018 m!955907))

(assert (=> b!1036012 m!955791))

(assert (=> b!1036012 m!955791))

(assert (=> b!1036012 m!955793))

(assert (=> b!1036012 m!955797))

(assert (=> b!1036012 m!955793))

(assert (=> b!1036012 m!955785))

(declare-fun m!955909 () Bool)

(assert (=> b!1036012 m!955909))

(assert (=> b!1036012 m!955785))

(assert (=> b!1036010 m!955785))

(assert (=> b!1036010 m!955785))

(assert (=> b!1036010 m!955787))

(assert (=> b!1036007 m!955903))

(assert (=> b!1036017 m!955785))

(assert (=> b!1036017 m!955785))

(assert (=> b!1036017 m!955787))

(declare-fun m!955911 () Bool)

(assert (=> d!124535 m!955911))

(assert (=> d!124535 m!955781))

(assert (=> b!1036015 m!955791))

(assert (=> b!1036015 m!955791))

(assert (=> b!1036015 m!955793))

(assert (=> b!1036015 m!955797))

(declare-fun m!955913 () Bool)

(assert (=> b!1036015 m!955913))

(assert (=> b!1036015 m!955785))

(declare-fun m!955915 () Bool)

(assert (=> b!1036015 m!955915))

(declare-fun m!955917 () Bool)

(assert (=> b!1036015 m!955917))

(assert (=> b!1036015 m!955793))

(assert (=> b!1036015 m!955915))

(declare-fun m!955919 () Bool)

(assert (=> b!1036015 m!955919))

(declare-fun m!955921 () Bool)

(assert (=> b!1036011 m!955921))

(assert (=> b!1035965 d!124535))

(declare-fun d!124537 () Bool)

(declare-fun e!585961 () Bool)

(assert (=> d!124537 e!585961))

(declare-fun res!691707 () Bool)

(assert (=> d!124537 (=> res!691707 e!585961)))

(declare-fun lt!456905 () Bool)

(assert (=> d!124537 (= res!691707 (not lt!456905))))

(declare-fun lt!456904 () Bool)

(assert (=> d!124537 (= lt!456905 lt!456904)))

(declare-fun lt!456906 () Unit!33873)

(declare-fun e!585960 () Unit!33873)

(assert (=> d!124537 (= lt!456906 e!585960)))

(declare-fun c!104732 () Bool)

(assert (=> d!124537 (= c!104732 lt!456904)))

(declare-fun containsKey!565 (List!22035 (_ BitVec 64)) Bool)

(assert (=> d!124537 (= lt!456904 (containsKey!565 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(assert (=> d!124537 (= (contains!6044 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!456861) lt!456905)))

(declare-fun b!1036025 () Bool)

(declare-fun lt!456903 () Unit!33873)

(assert (=> b!1036025 (= e!585960 lt!456903)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!397 (List!22035 (_ BitVec 64)) Unit!33873)

(assert (=> b!1036025 (= lt!456903 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(declare-datatypes ((Option!643 0))(
  ( (Some!642 (v!14932 V!37669)) (None!641) )
))
(declare-fun isDefined!437 (Option!643) Bool)

(declare-fun getValueByKey!592 (List!22035 (_ BitVec 64)) Option!643)

(assert (=> b!1036025 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(declare-fun b!1036026 () Bool)

(declare-fun Unit!33877 () Unit!33873)

(assert (=> b!1036026 (= e!585960 Unit!33877)))

(declare-fun b!1036027 () Bool)

(assert (=> b!1036027 (= e!585961 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861)))))

(assert (= (and d!124537 c!104732) b!1036025))

(assert (= (and d!124537 (not c!104732)) b!1036026))

(assert (= (and d!124537 (not res!691707)) b!1036027))

(declare-fun m!955923 () Bool)

(assert (=> d!124537 m!955923))

(declare-fun m!955925 () Bool)

(assert (=> b!1036025 m!955925))

(declare-fun m!955927 () Bool)

(assert (=> b!1036025 m!955927))

(assert (=> b!1036025 m!955927))

(declare-fun m!955929 () Bool)

(assert (=> b!1036025 m!955929))

(assert (=> b!1036027 m!955927))

(assert (=> b!1036027 m!955927))

(assert (=> b!1036027 m!955929))

(assert (=> b!1035965 d!124537))

(declare-fun d!124539 () Bool)

(declare-fun e!585964 () Bool)

(assert (=> d!124539 e!585964))

(declare-fun res!691712 () Bool)

(assert (=> d!124539 (=> (not res!691712) (not e!585964))))

(declare-fun lt!456918 () ListLongMap!13875)

(assert (=> d!124539 (= res!691712 (contains!6044 lt!456918 (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun lt!456916 () List!22035)

(assert (=> d!124539 (= lt!456918 (ListLongMap!13876 lt!456916))))

(declare-fun lt!456917 () Unit!33873)

(declare-fun lt!456915 () Unit!33873)

(assert (=> d!124539 (= lt!456917 lt!456915)))

(assert (=> d!124539 (= (getValueByKey!592 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun lemmaContainsTupThenGetReturnValue!281 (List!22035 (_ BitVec 64) V!37669) Unit!33873)

(assert (=> d!124539 (= lt!456915 (lemmaContainsTupThenGetReturnValue!281 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun insertStrictlySorted!373 (List!22035 (_ BitVec 64) V!37669) List!22035)

(assert (=> d!124539 (= lt!456916 (insertStrictlySorted!373 (toList!6953 lt!456853) (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(assert (=> d!124539 (= (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)) lt!456918)))

(declare-fun b!1036032 () Bool)

(declare-fun res!691713 () Bool)

(assert (=> b!1036032 (=> (not res!691713) (not e!585964))))

(assert (=> b!1036032 (= res!691713 (= (getValueByKey!592 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(declare-fun b!1036033 () Bool)

(declare-fun contains!6045 (List!22035 tuple2!15838) Bool)

(assert (=> b!1036033 (= e!585964 (contains!6045 (toList!6953 lt!456918) (tuple2!15839 lt!456869 lt!456768)))))

(assert (= (and d!124539 res!691712) b!1036032))

(assert (= (and b!1036032 res!691713) b!1036033))

(declare-fun m!955931 () Bool)

(assert (=> d!124539 m!955931))

(declare-fun m!955933 () Bool)

(assert (=> d!124539 m!955933))

(declare-fun m!955935 () Bool)

(assert (=> d!124539 m!955935))

(declare-fun m!955937 () Bool)

(assert (=> d!124539 m!955937))

(declare-fun m!955939 () Bool)

(assert (=> b!1036032 m!955939))

(declare-fun m!955941 () Bool)

(assert (=> b!1036033 m!955941))

(assert (=> b!1035965 d!124539))

(declare-fun d!124541 () Bool)

(declare-fun e!585965 () Bool)

(assert (=> d!124541 e!585965))

(declare-fun res!691714 () Bool)

(assert (=> d!124541 (=> (not res!691714) (not e!585965))))

(declare-fun lt!456922 () ListLongMap!13875)

(assert (=> d!124541 (= res!691714 (contains!6044 lt!456922 (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun lt!456920 () List!22035)

(assert (=> d!124541 (= lt!456922 (ListLongMap!13876 lt!456920))))

(declare-fun lt!456921 () Unit!33873)

(declare-fun lt!456919 () Unit!33873)

(assert (=> d!124541 (= lt!456921 lt!456919)))

(assert (=> d!124541 (= (getValueByKey!592 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(assert (=> d!124541 (= lt!456919 (lemmaContainsTupThenGetReturnValue!281 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(assert (=> d!124541 (= lt!456920 (insertStrictlySorted!373 (toList!6953 lt!456855) (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(assert (=> d!124541 (= (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)) lt!456922)))

(declare-fun b!1036034 () Bool)

(declare-fun res!691715 () Bool)

(assert (=> b!1036034 (=> (not res!691715) (not e!585965))))

(assert (=> b!1036034 (= res!691715 (= (getValueByKey!592 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(declare-fun b!1036035 () Bool)

(assert (=> b!1036035 (= e!585965 (contains!6045 (toList!6953 lt!456922) (tuple2!15839 lt!456863 lt!456768)))))

(assert (= (and d!124541 res!691714) b!1036034))

(assert (= (and b!1036034 res!691715) b!1036035))

(declare-fun m!955943 () Bool)

(assert (=> d!124541 m!955943))

(declare-fun m!955945 () Bool)

(assert (=> d!124541 m!955945))

(declare-fun m!955947 () Bool)

(assert (=> d!124541 m!955947))

(declare-fun m!955949 () Bool)

(assert (=> d!124541 m!955949))

(declare-fun m!955951 () Bool)

(assert (=> b!1036034 m!955951))

(declare-fun m!955953 () Bool)

(assert (=> b!1036035 m!955953))

(assert (=> b!1035965 d!124541))

(declare-fun d!124543 () Bool)

(declare-fun get!16475 (Option!643) V!37669)

(assert (=> d!124543 (= (apply!942 lt!456853 lt!456862) (get!16475 (getValueByKey!592 (toList!6953 lt!456853) lt!456862)))))

(declare-fun bs!30311 () Bool)

(assert (= bs!30311 d!124543))

(declare-fun m!955955 () Bool)

(assert (=> bs!30311 m!955955))

(assert (=> bs!30311 m!955955))

(declare-fun m!955957 () Bool)

(assert (=> bs!30311 m!955957))

(assert (=> b!1035965 d!124543))

(declare-fun d!124545 () Bool)

(assert (=> d!124545 (= (apply!942 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)) lt!456858) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))) lt!456858)))))

(declare-fun bs!30312 () Bool)

(assert (= bs!30312 d!124545))

(declare-fun m!955959 () Bool)

(assert (=> bs!30312 m!955959))

(assert (=> bs!30312 m!955959))

(declare-fun m!955961 () Bool)

(assert (=> bs!30312 m!955961))

(assert (=> b!1035965 d!124545))

(declare-fun d!124547 () Bool)

(assert (=> d!124547 (= (apply!942 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!456865) (apply!942 lt!456857 lt!456865))))

(declare-fun lt!456925 () Unit!33873)

(declare-fun choose!1709 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> d!124547 (= lt!456925 (choose!1709 lt!456857 lt!456864 (zeroValue!6104 thiss!1427) lt!456865))))

(declare-fun e!585968 () Bool)

(assert (=> d!124547 e!585968))

(declare-fun res!691718 () Bool)

(assert (=> d!124547 (=> (not res!691718) (not e!585968))))

(assert (=> d!124547 (= res!691718 (contains!6044 lt!456857 lt!456865))))

(assert (=> d!124547 (= (addApplyDifferent!482 lt!456857 lt!456864 (zeroValue!6104 thiss!1427) lt!456865) lt!456925)))

(declare-fun b!1036039 () Bool)

(assert (=> b!1036039 (= e!585968 (not (= lt!456865 lt!456864)))))

(assert (= (and d!124547 res!691718) b!1036039))

(declare-fun m!955963 () Bool)

(assert (=> d!124547 m!955963))

(assert (=> d!124547 m!955879))

(assert (=> d!124547 m!955865))

(assert (=> d!124547 m!955865))

(assert (=> d!124547 m!955867))

(declare-fun m!955965 () Bool)

(assert (=> d!124547 m!955965))

(assert (=> b!1035965 d!124547))

(declare-fun d!124549 () Bool)

(assert (=> d!124549 (= (apply!942 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)) lt!456862) (apply!942 lt!456853 lt!456862))))

(declare-fun lt!456926 () Unit!33873)

(assert (=> d!124549 (= lt!456926 (choose!1709 lt!456853 lt!456869 lt!456768 lt!456862))))

(declare-fun e!585969 () Bool)

(assert (=> d!124549 e!585969))

(declare-fun res!691719 () Bool)

(assert (=> d!124549 (=> (not res!691719) (not e!585969))))

(assert (=> d!124549 (= res!691719 (contains!6044 lt!456853 lt!456862))))

(assert (=> d!124549 (= (addApplyDifferent!482 lt!456853 lt!456869 lt!456768 lt!456862) lt!456926)))

(declare-fun b!1036040 () Bool)

(assert (=> b!1036040 (= e!585969 (not (= lt!456862 lt!456869)))))

(assert (= (and d!124549 res!691719) b!1036040))

(declare-fun m!955967 () Bool)

(assert (=> d!124549 m!955967))

(assert (=> d!124549 m!955889))

(assert (=> d!124549 m!955891))

(assert (=> d!124549 m!955891))

(assert (=> d!124549 m!955893))

(declare-fun m!955969 () Bool)

(assert (=> d!124549 m!955969))

(assert (=> b!1035965 d!124549))

(declare-fun d!124551 () Bool)

(assert (=> d!124551 (contains!6044 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!456861)))

(declare-fun lt!456929 () Unit!33873)

(declare-fun choose!1710 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> d!124551 (= lt!456929 (choose!1710 lt!456871 lt!456868 (zeroValue!6104 thiss!1427) lt!456861))))

(assert (=> d!124551 (contains!6044 lt!456871 lt!456861)))

(assert (=> d!124551 (= (addStillContains!630 lt!456871 lt!456868 (zeroValue!6104 thiss!1427) lt!456861) lt!456929)))

(declare-fun bs!30313 () Bool)

(assert (= bs!30313 d!124551))

(assert (=> bs!30313 m!955871))

(assert (=> bs!30313 m!955871))

(assert (=> bs!30313 m!955873))

(declare-fun m!955971 () Bool)

(assert (=> bs!30313 m!955971))

(declare-fun m!955973 () Bool)

(assert (=> bs!30313 m!955973))

(assert (=> b!1035965 d!124551))

(declare-fun d!124553 () Bool)

(assert (=> d!124553 (= (apply!942 lt!456855 lt!456858) (get!16475 (getValueByKey!592 (toList!6953 lt!456855) lt!456858)))))

(declare-fun bs!30314 () Bool)

(assert (= bs!30314 d!124553))

(declare-fun m!955975 () Bool)

(assert (=> bs!30314 m!955975))

(assert (=> bs!30314 m!955975))

(declare-fun m!955977 () Bool)

(assert (=> bs!30314 m!955977))

(assert (=> b!1035965 d!124553))

(declare-fun d!124555 () Bool)

(assert (=> d!124555 (= (apply!942 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)) lt!456862) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))) lt!456862)))))

(declare-fun bs!30315 () Bool)

(assert (= bs!30315 d!124555))

(declare-fun m!955979 () Bool)

(assert (=> bs!30315 m!955979))

(assert (=> bs!30315 m!955979))

(declare-fun m!955981 () Bool)

(assert (=> bs!30315 m!955981))

(assert (=> b!1035965 d!124555))

(declare-fun d!124557 () Bool)

(assert (=> d!124557 (= (apply!942 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!456865) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!456865)))))

(declare-fun bs!30316 () Bool)

(assert (= bs!30316 d!124557))

(declare-fun m!955983 () Bool)

(assert (=> bs!30316 m!955983))

(assert (=> bs!30316 m!955983))

(declare-fun m!955985 () Bool)

(assert (=> bs!30316 m!955985))

(assert (=> b!1035965 d!124557))

(declare-fun d!124559 () Bool)

(declare-fun e!585970 () Bool)

(assert (=> d!124559 e!585970))

(declare-fun res!691720 () Bool)

(assert (=> d!124559 (=> (not res!691720) (not e!585970))))

(declare-fun lt!456933 () ListLongMap!13875)

(assert (=> d!124559 (= res!691720 (contains!6044 lt!456933 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!456931 () List!22035)

(assert (=> d!124559 (= lt!456933 (ListLongMap!13876 lt!456931))))

(declare-fun lt!456932 () Unit!33873)

(declare-fun lt!456930 () Unit!33873)

(assert (=> d!124559 (= lt!456932 lt!456930)))

(assert (=> d!124559 (= (getValueByKey!592 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124559 (= lt!456930 (lemmaContainsTupThenGetReturnValue!281 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124559 (= lt!456931 (insertStrictlySorted!373 (toList!6953 lt!456871) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124559 (= (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!456933)))

(declare-fun b!1036042 () Bool)

(declare-fun res!691721 () Bool)

(assert (=> b!1036042 (=> (not res!691721) (not e!585970))))

(assert (=> b!1036042 (= res!691721 (= (getValueByKey!592 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036043 () Bool)

(assert (=> b!1036043 (= e!585970 (contains!6045 (toList!6953 lt!456933) (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124559 res!691720) b!1036042))

(assert (= (and b!1036042 res!691721) b!1036043))

(declare-fun m!955987 () Bool)

(assert (=> d!124559 m!955987))

(declare-fun m!955989 () Bool)

(assert (=> d!124559 m!955989))

(declare-fun m!955991 () Bool)

(assert (=> d!124559 m!955991))

(declare-fun m!955993 () Bool)

(assert (=> d!124559 m!955993))

(declare-fun m!955995 () Bool)

(assert (=> b!1036042 m!955995))

(declare-fun m!955997 () Bool)

(assert (=> b!1036043 m!955997))

(assert (=> b!1035965 d!124559))

(declare-fun d!124561 () Bool)

(declare-fun e!585971 () Bool)

(assert (=> d!124561 e!585971))

(declare-fun res!691722 () Bool)

(assert (=> d!124561 (=> (not res!691722) (not e!585971))))

(declare-fun lt!456937 () ListLongMap!13875)

(assert (=> d!124561 (= res!691722 (contains!6044 lt!456937 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!456935 () List!22035)

(assert (=> d!124561 (= lt!456937 (ListLongMap!13876 lt!456935))))

(declare-fun lt!456936 () Unit!33873)

(declare-fun lt!456934 () Unit!33873)

(assert (=> d!124561 (= lt!456936 lt!456934)))

(assert (=> d!124561 (= (getValueByKey!592 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124561 (= lt!456934 (lemmaContainsTupThenGetReturnValue!281 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124561 (= lt!456935 (insertStrictlySorted!373 (toList!6953 lt!456857) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124561 (= (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!456937)))

(declare-fun b!1036044 () Bool)

(declare-fun res!691723 () Bool)

(assert (=> b!1036044 (=> (not res!691723) (not e!585971))))

(assert (=> b!1036044 (= res!691723 (= (getValueByKey!592 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036045 () Bool)

(assert (=> b!1036045 (= e!585971 (contains!6045 (toList!6953 lt!456937) (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124561 res!691722) b!1036044))

(assert (= (and b!1036044 res!691723) b!1036045))

(declare-fun m!955999 () Bool)

(assert (=> d!124561 m!955999))

(declare-fun m!956001 () Bool)

(assert (=> d!124561 m!956001))

(declare-fun m!956003 () Bool)

(assert (=> d!124561 m!956003))

(declare-fun m!956005 () Bool)

(assert (=> d!124561 m!956005))

(declare-fun m!956007 () Bool)

(assert (=> b!1036044 m!956007))

(declare-fun m!956009 () Bool)

(assert (=> b!1036045 m!956009))

(assert (=> b!1035965 d!124561))

(declare-fun d!124563 () Bool)

(assert (=> d!124563 (= (apply!942 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)) lt!456858) (apply!942 lt!456855 lt!456858))))

(declare-fun lt!456938 () Unit!33873)

(assert (=> d!124563 (= lt!456938 (choose!1709 lt!456855 lt!456863 lt!456768 lt!456858))))

(declare-fun e!585972 () Bool)

(assert (=> d!124563 e!585972))

(declare-fun res!691724 () Bool)

(assert (=> d!124563 (=> (not res!691724) (not e!585972))))

(assert (=> d!124563 (= res!691724 (contains!6044 lt!456855 lt!456858))))

(assert (=> d!124563 (= (addApplyDifferent!482 lt!456855 lt!456863 lt!456768 lt!456858) lt!456938)))

(declare-fun b!1036046 () Bool)

(assert (=> b!1036046 (= e!585972 (not (= lt!456858 lt!456863)))))

(assert (= (and d!124563 res!691724) b!1036046))

(declare-fun m!956011 () Bool)

(assert (=> d!124563 m!956011))

(assert (=> d!124563 m!955875))

(assert (=> d!124563 m!955877))

(assert (=> d!124563 m!955877))

(assert (=> d!124563 m!955895))

(declare-fun m!956013 () Bool)

(assert (=> d!124563 m!956013))

(assert (=> b!1035965 d!124563))

(declare-fun d!124565 () Bool)

(assert (=> d!124565 (= (apply!942 lt!456857 lt!456865) (get!16475 (getValueByKey!592 (toList!6953 lt!456857) lt!456865)))))

(declare-fun bs!30317 () Bool)

(assert (= bs!30317 d!124565))

(declare-fun m!956015 () Bool)

(assert (=> bs!30317 m!956015))

(assert (=> bs!30317 m!956015))

(declare-fun m!956017 () Bool)

(assert (=> bs!30317 m!956017))

(assert (=> b!1035965 d!124565))

(declare-fun b!1036058 () Bool)

(declare-fun e!585975 () Bool)

(assert (=> b!1036058 (= e!585975 (and (bvsge (extraKeys!6000 lt!456769) #b00000000000000000000000000000000) (bvsle (extraKeys!6000 lt!456769) #b00000000000000000000000000000011) (bvsge (_vacant!2947 lt!456769) #b00000000000000000000000000000000)))))

(declare-fun b!1036056 () Bool)

(declare-fun res!691735 () Bool)

(assert (=> b!1036056 (=> (not res!691735) (not e!585975))))

(declare-fun size!31952 (LongMapFixedSize!5784) (_ BitVec 32))

(assert (=> b!1036056 (= res!691735 (bvsge (size!31952 lt!456769) (_size!2947 lt!456769)))))

(declare-fun b!1036057 () Bool)

(declare-fun res!691736 () Bool)

(assert (=> b!1036057 (=> (not res!691736) (not e!585975))))

(assert (=> b!1036057 (= res!691736 (= (size!31952 lt!456769) (bvadd (_size!2947 lt!456769) (bvsdiv (bvadd (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!124567 () Bool)

(declare-fun res!691733 () Bool)

(assert (=> d!124567 (=> (not res!691733) (not e!585975))))

(assert (=> d!124567 (= res!691733 (validMask!0 (mask!30166 lt!456769)))))

(assert (=> d!124567 (= (simpleValid!413 lt!456769) e!585975)))

(declare-fun b!1036055 () Bool)

(declare-fun res!691734 () Bool)

(assert (=> b!1036055 (=> (not res!691734) (not e!585975))))

(assert (=> b!1036055 (= res!691734 (and (= (size!31949 (_values!6293 lt!456769)) (bvadd (mask!30166 lt!456769) #b00000000000000000000000000000001)) (= (size!31948 (_keys!11456 lt!456769)) (size!31949 (_values!6293 lt!456769))) (bvsge (_size!2947 lt!456769) #b00000000000000000000000000000000) (bvsle (_size!2947 lt!456769) (bvadd (mask!30166 lt!456769) #b00000000000000000000000000000001))))))

(assert (= (and d!124567 res!691733) b!1036055))

(assert (= (and b!1036055 res!691734) b!1036056))

(assert (= (and b!1036056 res!691735) b!1036057))

(assert (= (and b!1036057 res!691736) b!1036058))

(declare-fun m!956019 () Bool)

(assert (=> b!1036056 m!956019))

(assert (=> b!1036057 m!956019))

(declare-fun m!956021 () Bool)

(assert (=> d!124567 m!956021))

(assert (=> d!124529 d!124567))

(declare-fun d!124569 () Bool)

(declare-fun e!585977 () Bool)

(assert (=> d!124569 e!585977))

(declare-fun res!691737 () Bool)

(assert (=> d!124569 (=> res!691737 e!585977)))

(declare-fun lt!456941 () Bool)

(assert (=> d!124569 (= res!691737 (not lt!456941))))

(declare-fun lt!456940 () Bool)

(assert (=> d!124569 (= lt!456941 lt!456940)))

(declare-fun lt!456942 () Unit!33873)

(declare-fun e!585976 () Unit!33873)

(assert (=> d!124569 (= lt!456942 e!585976)))

(declare-fun c!104733 () Bool)

(assert (=> d!124569 (= c!104733 lt!456940)))

(assert (=> d!124569 (= lt!456940 (containsKey!565 (toList!6953 lt!456781) key!909))))

(assert (=> d!124569 (= (contains!6044 lt!456781 key!909) lt!456941)))

(declare-fun b!1036059 () Bool)

(declare-fun lt!456939 () Unit!33873)

(assert (=> b!1036059 (= e!585976 lt!456939)))

(assert (=> b!1036059 (= lt!456939 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456781) key!909))))

(assert (=> b!1036059 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456781) key!909))))

(declare-fun b!1036060 () Bool)

(declare-fun Unit!33878 () Unit!33873)

(assert (=> b!1036060 (= e!585976 Unit!33878)))

(declare-fun b!1036061 () Bool)

(assert (=> b!1036061 (= e!585977 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456781) key!909)))))

(assert (= (and d!124569 c!104733) b!1036059))

(assert (= (and d!124569 (not c!104733)) b!1036060))

(assert (= (and d!124569 (not res!691737)) b!1036061))

(declare-fun m!956023 () Bool)

(assert (=> d!124569 m!956023))

(declare-fun m!956025 () Bool)

(assert (=> b!1036059 m!956025))

(declare-fun m!956027 () Bool)

(assert (=> b!1036059 m!956027))

(assert (=> b!1036059 m!956027))

(declare-fun m!956029 () Bool)

(assert (=> b!1036059 m!956029))

(assert (=> b!1036061 m!956027))

(assert (=> b!1036061 m!956027))

(assert (=> b!1036061 m!956029))

(assert (=> d!124515 d!124569))

(declare-fun b!1036072 () Bool)

(declare-fun e!585986 () List!22035)

(declare-fun e!585985 () List!22035)

(assert (=> b!1036072 (= e!585986 e!585985)))

(declare-fun c!104739 () Bool)

(assert (=> b!1036072 (= c!104739 (and ((_ is Cons!22031) (toList!6953 (map!14734 thiss!1427))) (not (= (_1!7929 (h!23233 (toList!6953 (map!14734 thiss!1427)))) key!909))))))

(declare-fun d!124571 () Bool)

(declare-fun e!585984 () Bool)

(assert (=> d!124571 e!585984))

(declare-fun res!691740 () Bool)

(assert (=> d!124571 (=> (not res!691740) (not e!585984))))

(declare-fun lt!456945 () List!22035)

(declare-fun isStrictlySorted!715 (List!22035) Bool)

(assert (=> d!124571 (= res!691740 (isStrictlySorted!715 lt!456945))))

(assert (=> d!124571 (= lt!456945 e!585986)))

(declare-fun c!104738 () Bool)

(assert (=> d!124571 (= c!104738 (and ((_ is Cons!22031) (toList!6953 (map!14734 thiss!1427))) (= (_1!7929 (h!23233 (toList!6953 (map!14734 thiss!1427)))) key!909)))))

(assert (=> d!124571 (isStrictlySorted!715 (toList!6953 (map!14734 thiss!1427)))))

(assert (=> d!124571 (= (removeStrictlySorted!58 (toList!6953 (map!14734 thiss!1427)) key!909) lt!456945)))

(declare-fun b!1036073 () Bool)

(assert (=> b!1036073 (= e!585986 (t!31249 (toList!6953 (map!14734 thiss!1427))))))

(declare-fun b!1036074 () Bool)

(assert (=> b!1036074 (= e!585984 (not (containsKey!565 lt!456945 key!909)))))

(declare-fun b!1036075 () Bool)

(assert (=> b!1036075 (= e!585985 Nil!22032)))

(declare-fun b!1036076 () Bool)

(declare-fun $colon$colon!606 (List!22035 tuple2!15838) List!22035)

(assert (=> b!1036076 (= e!585985 ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (toList!6953 (map!14734 thiss!1427))) key!909) (h!23233 (toList!6953 (map!14734 thiss!1427)))))))

(assert (= (and d!124571 c!104738) b!1036073))

(assert (= (and d!124571 (not c!104738)) b!1036072))

(assert (= (and b!1036072 c!104739) b!1036076))

(assert (= (and b!1036072 (not c!104739)) b!1036075))

(assert (= (and d!124571 res!691740) b!1036074))

(declare-fun m!956031 () Bool)

(assert (=> d!124571 m!956031))

(declare-fun m!956033 () Bool)

(assert (=> d!124571 m!956033))

(declare-fun m!956035 () Bool)

(assert (=> b!1036074 m!956035))

(declare-fun m!956037 () Bool)

(assert (=> b!1036076 m!956037))

(assert (=> b!1036076 m!956037))

(declare-fun m!956039 () Bool)

(assert (=> b!1036076 m!956039))

(assert (=> d!124515 d!124571))

(declare-fun d!124573 () Bool)

(assert (=> d!124573 (= (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1035964 d!124573))

(declare-fun b!1036077 () Bool)

(declare-fun e!585988 () Bool)

(declare-fun lt!456948 () ListLongMap!13875)

(assert (=> b!1036077 (= e!585988 (= lt!456948 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427))))))

(declare-fun d!124575 () Bool)

(declare-fun e!585992 () Bool)

(assert (=> d!124575 e!585992))

(declare-fun res!691742 () Bool)

(assert (=> d!124575 (=> (not res!691742) (not e!585992))))

(assert (=> d!124575 (= res!691742 (not (contains!6044 lt!456948 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!585991 () ListLongMap!13875)

(assert (=> d!124575 (= lt!456948 e!585991)))

(declare-fun c!104742 () Bool)

(assert (=> d!124575 (= c!104742 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124575 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124575 (= (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) lt!456948)))

(declare-fun b!1036078 () Bool)

(declare-fun e!585989 () Bool)

(assert (=> b!1036078 (= e!585992 e!585989)))

(declare-fun c!104740 () Bool)

(declare-fun e!585993 () Bool)

(assert (=> b!1036078 (= c!104740 e!585993)))

(declare-fun res!691744 () Bool)

(assert (=> b!1036078 (=> (not res!691744) (not e!585993))))

(assert (=> b!1036078 (= res!691744 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036079 () Bool)

(assert (=> b!1036079 (= e!585989 e!585988)))

(declare-fun c!104741 () Bool)

(assert (=> b!1036079 (= c!104741 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036080 () Bool)

(assert (=> b!1036080 (= e!585993 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036080 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1036081 () Bool)

(assert (=> b!1036081 (= e!585988 (isEmpty!932 lt!456948))))

(declare-fun b!1036082 () Bool)

(assert (=> b!1036082 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> b!1036082 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 thiss!1427))))))

(declare-fun e!585990 () Bool)

(assert (=> b!1036082 (= e!585990 (= (apply!942 lt!456948 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036083 () Bool)

(assert (=> b!1036083 (= e!585991 (ListLongMap!13876 Nil!22032))))

(declare-fun b!1036084 () Bool)

(declare-fun e!585987 () ListLongMap!13875)

(declare-fun call!43833 () ListLongMap!13875)

(assert (=> b!1036084 (= e!585987 call!43833)))

(declare-fun b!1036085 () Bool)

(declare-fun lt!456949 () Unit!33873)

(declare-fun lt!456946 () Unit!33873)

(assert (=> b!1036085 (= lt!456949 lt!456946)))

(declare-fun lt!456952 () (_ BitVec 64))

(declare-fun lt!456951 () (_ BitVec 64))

(declare-fun lt!456947 () V!37669)

(declare-fun lt!456950 () ListLongMap!13875)

(assert (=> b!1036085 (not (contains!6044 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947)) lt!456952))))

(assert (=> b!1036085 (= lt!456946 (addStillNotContains!245 lt!456950 lt!456951 lt!456947 lt!456952))))

(assert (=> b!1036085 (= lt!456952 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1036085 (= lt!456947 (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036085 (= lt!456951 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1036085 (= lt!456950 call!43833)))

(assert (=> b!1036085 (= e!585987 (+!3065 call!43833 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!43830 () Bool)

(assert (=> bm!43830 (= call!43833 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1036086 () Bool)

(declare-fun res!691743 () Bool)

(assert (=> b!1036086 (=> (not res!691743) (not e!585992))))

(assert (=> b!1036086 (= res!691743 (not (contains!6044 lt!456948 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036087 () Bool)

(assert (=> b!1036087 (= e!585991 e!585987)))

(declare-fun c!104743 () Bool)

(assert (=> b!1036087 (= c!104743 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036088 () Bool)

(assert (=> b!1036088 (= e!585989 e!585990)))

(assert (=> b!1036088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun res!691741 () Bool)

(assert (=> b!1036088 (= res!691741 (contains!6044 lt!456948 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036088 (=> (not res!691741) (not e!585990))))

(assert (= (and d!124575 c!104742) b!1036083))

(assert (= (and d!124575 (not c!104742)) b!1036087))

(assert (= (and b!1036087 c!104743) b!1036085))

(assert (= (and b!1036087 (not c!104743)) b!1036084))

(assert (= (or b!1036085 b!1036084) bm!43830))

(assert (= (and d!124575 res!691742) b!1036086))

(assert (= (and b!1036086 res!691743) b!1036078))

(assert (= (and b!1036078 res!691744) b!1036080))

(assert (= (and b!1036078 c!104740) b!1036088))

(assert (= (and b!1036078 (not c!104740)) b!1036079))

(assert (= (and b!1036088 res!691741) b!1036082))

(assert (= (and b!1036079 c!104741) b!1036077))

(assert (= (and b!1036079 (not c!104741)) b!1036081))

(declare-fun b_lambda!16151 () Bool)

(assert (=> (not b_lambda!16151) (not b!1036082)))

(assert (=> b!1036082 t!31253))

(declare-fun b_and!33413 () Bool)

(assert (= b_and!33411 (and (=> t!31253 result!14435) b_and!33413)))

(declare-fun b_lambda!16153 () Bool)

(assert (=> (not b_lambda!16153) (not b!1036085)))

(assert (=> b!1036085 t!31253))

(declare-fun b_and!33415 () Bool)

(assert (= b_and!33413 (and (=> t!31253 result!14435) b_and!33415)))

(declare-fun m!956041 () Bool)

(assert (=> bm!43830 m!956041))

(declare-fun m!956043 () Bool)

(assert (=> b!1036086 m!956043))

(assert (=> b!1036088 m!955785))

(assert (=> b!1036088 m!955785))

(declare-fun m!956045 () Bool)

(assert (=> b!1036088 m!956045))

(assert (=> b!1036082 m!955791))

(assert (=> b!1036082 m!955791))

(assert (=> b!1036082 m!955793))

(assert (=> b!1036082 m!955797))

(assert (=> b!1036082 m!955793))

(assert (=> b!1036082 m!955785))

(declare-fun m!956047 () Bool)

(assert (=> b!1036082 m!956047))

(assert (=> b!1036082 m!955785))

(assert (=> b!1036080 m!955785))

(assert (=> b!1036080 m!955785))

(assert (=> b!1036080 m!955787))

(assert (=> b!1036077 m!956041))

(assert (=> b!1036087 m!955785))

(assert (=> b!1036087 m!955785))

(assert (=> b!1036087 m!955787))

(declare-fun m!956049 () Bool)

(assert (=> d!124575 m!956049))

(assert (=> d!124575 m!955781))

(assert (=> b!1036085 m!955791))

(assert (=> b!1036085 m!955791))

(assert (=> b!1036085 m!955793))

(assert (=> b!1036085 m!955797))

(declare-fun m!956051 () Bool)

(assert (=> b!1036085 m!956051))

(assert (=> b!1036085 m!955785))

(declare-fun m!956053 () Bool)

(assert (=> b!1036085 m!956053))

(declare-fun m!956055 () Bool)

(assert (=> b!1036085 m!956055))

(assert (=> b!1036085 m!955793))

(assert (=> b!1036085 m!956053))

(declare-fun m!956057 () Bool)

(assert (=> b!1036085 m!956057))

(declare-fun m!956059 () Bool)

(assert (=> b!1036081 m!956059))

(assert (=> bm!43818 d!124575))

(declare-fun d!124577 () Bool)

(assert (=> d!124577 (= (apply!942 lt!456840 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16475 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30318 () Bool)

(assert (= bs!30318 d!124577))

(assert (=> bs!30318 m!955785))

(declare-fun m!956061 () Bool)

(assert (=> bs!30318 m!956061))

(assert (=> bs!30318 m!956061))

(declare-fun m!956063 () Bool)

(assert (=> bs!30318 m!956063))

(assert (=> b!1035945 d!124577))

(declare-fun d!124579 () Bool)

(declare-fun c!104746 () Bool)

(assert (=> d!124579 (= c!104746 ((_ is ValueCellFull!11595) (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!585996 () V!37669)

(assert (=> d!124579 (= (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!585996)))

(declare-fun b!1036093 () Bool)

(declare-fun get!16476 (ValueCell!11595 V!37669) V!37669)

(assert (=> b!1036093 (= e!585996 (get!16476 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036094 () Bool)

(declare-fun get!16477 (ValueCell!11595 V!37669) V!37669)

(assert (=> b!1036094 (= e!585996 (get!16477 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124579 c!104746) b!1036093))

(assert (= (and d!124579 (not c!104746)) b!1036094))

(assert (=> b!1036093 m!955791))

(assert (=> b!1036093 m!955793))

(declare-fun m!956065 () Bool)

(assert (=> b!1036093 m!956065))

(assert (=> b!1036094 m!955791))

(assert (=> b!1036094 m!955793))

(declare-fun m!956067 () Bool)

(assert (=> b!1036094 m!956067))

(assert (=> b!1035945 d!124579))

(declare-fun b!1036105 () Bool)

(declare-fun e!586006 () Bool)

(declare-fun e!586005 () Bool)

(assert (=> b!1036105 (= e!586006 e!586005)))

(declare-fun res!691753 () Bool)

(assert (=> b!1036105 (=> (not res!691753) (not e!586005))))

(declare-fun e!586008 () Bool)

(assert (=> b!1036105 (= res!691753 (not e!586008))))

(declare-fun res!691752 () Bool)

(assert (=> b!1036105 (=> (not res!691752) (not e!586008))))

(assert (=> b!1036105 (= res!691752 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036106 () Bool)

(declare-fun e!586007 () Bool)

(declare-fun call!43836 () Bool)

(assert (=> b!1036106 (= e!586007 call!43836)))

(declare-fun b!1036107 () Bool)

(assert (=> b!1036107 (= e!586007 call!43836)))

(declare-fun b!1036108 () Bool)

(declare-fun contains!6046 (List!22036 (_ BitVec 64)) Bool)

(assert (=> b!1036108 (= e!586008 (contains!6046 Nil!22033 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43833 () Bool)

(declare-fun c!104749 () Bool)

(assert (=> bm!43833 (= call!43836 (arrayNoDuplicates!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104749 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)))))

(declare-fun d!124581 () Bool)

(declare-fun res!691751 () Bool)

(assert (=> d!124581 (=> res!691751 e!586006)))

(assert (=> d!124581 (= res!691751 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124581 (= (arrayNoDuplicates!0 (_keys!11456 thiss!1427) #b00000000000000000000000000000000 Nil!22033) e!586006)))

(declare-fun b!1036109 () Bool)

(assert (=> b!1036109 (= e!586005 e!586007)))

(assert (=> b!1036109 (= c!104749 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124581 (not res!691751)) b!1036105))

(assert (= (and b!1036105 res!691752) b!1036108))

(assert (= (and b!1036105 res!691753) b!1036109))

(assert (= (and b!1036109 c!104749) b!1036107))

(assert (= (and b!1036109 (not c!104749)) b!1036106))

(assert (= (or b!1036107 b!1036106) bm!43833))

(assert (=> b!1036105 m!955785))

(assert (=> b!1036105 m!955785))

(assert (=> b!1036105 m!955787))

(assert (=> b!1036108 m!955785))

(assert (=> b!1036108 m!955785))

(declare-fun m!956069 () Bool)

(assert (=> b!1036108 m!956069))

(assert (=> bm!43833 m!955785))

(declare-fun m!956071 () Bool)

(assert (=> bm!43833 m!956071))

(assert (=> b!1036109 m!955785))

(assert (=> b!1036109 m!955785))

(assert (=> b!1036109 m!955787))

(assert (=> b!1035887 d!124581))

(declare-fun b!1036118 () Bool)

(declare-fun e!586015 () Bool)

(declare-fun e!586017 () Bool)

(assert (=> b!1036118 (= e!586015 e!586017)))

(declare-fun lt!456961 () (_ BitVec 64))

(assert (=> b!1036118 (= lt!456961 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456960 () Unit!33873)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65276 (_ BitVec 64) (_ BitVec 32)) Unit!33873)

(assert (=> b!1036118 (= lt!456960 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1036118 (arrayContainsKey!0 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000)))

(declare-fun lt!456959 () Unit!33873)

(assert (=> b!1036118 (= lt!456959 lt!456960)))

(declare-fun res!691758 () Bool)

(declare-datatypes ((SeekEntryResult!9741 0))(
  ( (MissingZero!9741 (index!41334 (_ BitVec 32))) (Found!9741 (index!41335 (_ BitVec 32))) (Intermediate!9741 (undefined!10553 Bool) (index!41336 (_ BitVec 32)) (x!92462 (_ BitVec 32))) (Undefined!9741) (MissingVacant!9741 (index!41337 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65276 (_ BitVec 32)) SeekEntryResult!9741)

(assert (=> b!1036118 (= res!691758 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)) (Found!9741 #b00000000000000000000000000000000)))))

(assert (=> b!1036118 (=> (not res!691758) (not e!586017))))

(declare-fun b!1036119 () Bool)

(declare-fun e!586016 () Bool)

(assert (=> b!1036119 (= e!586016 e!586015)))

(declare-fun c!104752 () Bool)

(assert (=> b!1036119 (= c!104752 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43836 () Bool)

(declare-fun call!43839 () Bool)

(assert (=> bm!43836 (= call!43839 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)))))

(declare-fun b!1036120 () Bool)

(assert (=> b!1036120 (= e!586017 call!43839)))

(declare-fun d!124583 () Bool)

(declare-fun res!691759 () Bool)

(assert (=> d!124583 (=> res!691759 e!586016)))

(assert (=> d!124583 (= res!691759 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124583 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11456 thiss!1427) (mask!30166 thiss!1427)) e!586016)))

(declare-fun b!1036121 () Bool)

(assert (=> b!1036121 (= e!586015 call!43839)))

(assert (= (and d!124583 (not res!691759)) b!1036119))

(assert (= (and b!1036119 c!104752) b!1036118))

(assert (= (and b!1036119 (not c!104752)) b!1036121))

(assert (= (and b!1036118 res!691758) b!1036120))

(assert (= (or b!1036120 b!1036121) bm!43836))

(assert (=> b!1036118 m!955785))

(declare-fun m!956073 () Bool)

(assert (=> b!1036118 m!956073))

(declare-fun m!956075 () Bool)

(assert (=> b!1036118 m!956075))

(assert (=> b!1036118 m!955785))

(declare-fun m!956077 () Bool)

(assert (=> b!1036118 m!956077))

(assert (=> b!1036119 m!955785))

(assert (=> b!1036119 m!955785))

(assert (=> b!1036119 m!955787))

(declare-fun m!956079 () Bool)

(assert (=> bm!43836 m!956079))

(assert (=> b!1035886 d!124583))

(declare-fun d!124585 () Bool)

(declare-fun e!586018 () Bool)

(assert (=> d!124585 e!586018))

(declare-fun res!691760 () Bool)

(assert (=> d!124585 (=> (not res!691760) (not e!586018))))

(declare-fun lt!456965 () ListLongMap!13875)

(assert (=> d!124585 (= res!691760 (contains!6044 lt!456965 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun lt!456963 () List!22035)

(assert (=> d!124585 (= lt!456965 (ListLongMap!13876 lt!456963))))

(declare-fun lt!456964 () Unit!33873)

(declare-fun lt!456962 () Unit!33873)

(assert (=> d!124585 (= lt!456964 lt!456962)))

(assert (=> d!124585 (= (getValueByKey!592 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) (Some!642 (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> d!124585 (= lt!456962 (lemmaContainsTupThenGetReturnValue!281 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> d!124585 (= lt!456963 (insertStrictlySorted!373 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> d!124585 (= (+!3065 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) lt!456965)))

(declare-fun b!1036122 () Bool)

(declare-fun res!691761 () Bool)

(assert (=> b!1036122 (=> (not res!691761) (not e!586018))))

(assert (=> b!1036122 (= res!691761 (= (getValueByKey!592 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) (Some!642 (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun b!1036123 () Bool)

(assert (=> b!1036123 (= e!586018 (contains!6045 (toList!6953 lt!456965) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (= (and d!124585 res!691760) b!1036122))

(assert (= (and b!1036122 res!691761) b!1036123))

(declare-fun m!956081 () Bool)

(assert (=> d!124585 m!956081))

(declare-fun m!956083 () Bool)

(assert (=> d!124585 m!956083))

(declare-fun m!956085 () Bool)

(assert (=> d!124585 m!956085))

(declare-fun m!956087 () Bool)

(assert (=> d!124585 m!956087))

(declare-fun m!956089 () Bool)

(assert (=> b!1036122 m!956089))

(declare-fun m!956091 () Bool)

(assert (=> b!1036123 m!956091))

(assert (=> bm!43821 d!124585))

(declare-fun d!124587 () Bool)

(assert (=> d!124587 (= (validMask!0 (mask!30166 thiss!1427)) (and (or (= (mask!30166 thiss!1427) #b00000000000000000000000000000111) (= (mask!30166 thiss!1427) #b00000000000000000000000000001111) (= (mask!30166 thiss!1427) #b00000000000000000000000000011111) (= (mask!30166 thiss!1427) #b00000000000000000000000000111111) (= (mask!30166 thiss!1427) #b00000000000000000000000001111111) (= (mask!30166 thiss!1427) #b00000000000000000000000011111111) (= (mask!30166 thiss!1427) #b00000000000000000000000111111111) (= (mask!30166 thiss!1427) #b00000000000000000000001111111111) (= (mask!30166 thiss!1427) #b00000000000000000000011111111111) (= (mask!30166 thiss!1427) #b00000000000000000000111111111111) (= (mask!30166 thiss!1427) #b00000000000000000001111111111111) (= (mask!30166 thiss!1427) #b00000000000000000011111111111111) (= (mask!30166 thiss!1427) #b00000000000000000111111111111111) (= (mask!30166 thiss!1427) #b00000000000000001111111111111111) (= (mask!30166 thiss!1427) #b00000000000000011111111111111111) (= (mask!30166 thiss!1427) #b00000000000000111111111111111111) (= (mask!30166 thiss!1427) #b00000000000001111111111111111111) (= (mask!30166 thiss!1427) #b00000000000011111111111111111111) (= (mask!30166 thiss!1427) #b00000000000111111111111111111111) (= (mask!30166 thiss!1427) #b00000000001111111111111111111111) (= (mask!30166 thiss!1427) #b00000000011111111111111111111111) (= (mask!30166 thiss!1427) #b00000000111111111111111111111111) (= (mask!30166 thiss!1427) #b00000001111111111111111111111111) (= (mask!30166 thiss!1427) #b00000011111111111111111111111111) (= (mask!30166 thiss!1427) #b00000111111111111111111111111111) (= (mask!30166 thiss!1427) #b00001111111111111111111111111111) (= (mask!30166 thiss!1427) #b00011111111111111111111111111111) (= (mask!30166 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30166 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!124525 d!124587))

(declare-fun d!124589 () Bool)

(assert (=> d!124589 (= (apply!942 lt!456840 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30319 () Bool)

(assert (= bs!30319 d!124589))

(declare-fun m!956093 () Bool)

(assert (=> bs!30319 m!956093))

(assert (=> bs!30319 m!956093))

(declare-fun m!956095 () Bool)

(assert (=> bs!30319 m!956095))

(assert (=> b!1035935 d!124589))

(declare-fun d!124591 () Bool)

(assert (=> d!124591 (= (apply!942 lt!456866 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16475 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30320 () Bool)

(assert (= bs!30320 d!124591))

(assert (=> bs!30320 m!955785))

(declare-fun m!956097 () Bool)

(assert (=> bs!30320 m!956097))

(assert (=> bs!30320 m!956097))

(declare-fun m!956099 () Bool)

(assert (=> bs!30320 m!956099))

(assert (=> b!1035969 d!124591))

(assert (=> b!1035969 d!124579))

(declare-fun b!1036124 () Bool)

(declare-fun e!586019 () Bool)

(declare-fun e!586021 () Bool)

(assert (=> b!1036124 (= e!586019 e!586021)))

(declare-fun lt!456968 () (_ BitVec 64))

(assert (=> b!1036124 (= lt!456968 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(declare-fun lt!456967 () Unit!33873)

(assert (=> b!1036124 (= lt!456967 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000))))

(assert (=> b!1036124 (arrayContainsKey!0 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000)))

(declare-fun lt!456966 () Unit!33873)

(assert (=> b!1036124 (= lt!456966 lt!456967)))

(declare-fun res!691762 () Bool)

(assert (=> b!1036124 (= res!691762 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (_keys!11456 lt!456769) (mask!30166 lt!456769)) (Found!9741 #b00000000000000000000000000000000)))))

(assert (=> b!1036124 (=> (not res!691762) (not e!586021))))

(declare-fun b!1036125 () Bool)

(declare-fun e!586020 () Bool)

(assert (=> b!1036125 (= e!586020 e!586019)))

(declare-fun c!104753 () Bool)

(assert (=> b!1036125 (= c!104753 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun bm!43837 () Bool)

(declare-fun call!43840 () Bool)

(assert (=> bm!43837 (= call!43840 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11456 lt!456769) (mask!30166 lt!456769)))))

(declare-fun b!1036126 () Bool)

(assert (=> b!1036126 (= e!586021 call!43840)))

(declare-fun d!124593 () Bool)

(declare-fun res!691763 () Bool)

(assert (=> d!124593 (=> res!691763 e!586020)))

(assert (=> d!124593 (= res!691763 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124593 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11456 lt!456769) (mask!30166 lt!456769)) e!586020)))

(declare-fun b!1036127 () Bool)

(assert (=> b!1036127 (= e!586019 call!43840)))

(assert (= (and d!124593 (not res!691763)) b!1036125))

(assert (= (and b!1036125 c!104753) b!1036124))

(assert (= (and b!1036125 (not c!104753)) b!1036127))

(assert (= (and b!1036124 res!691762) b!1036126))

(assert (= (or b!1036126 b!1036127) bm!43837))

(declare-fun m!956101 () Bool)

(assert (=> b!1036124 m!956101))

(declare-fun m!956103 () Bool)

(assert (=> b!1036124 m!956103))

(declare-fun m!956105 () Bool)

(assert (=> b!1036124 m!956105))

(assert (=> b!1036124 m!956101))

(declare-fun m!956107 () Bool)

(assert (=> b!1036124 m!956107))

(assert (=> b!1036125 m!956101))

(assert (=> b!1036125 m!956101))

(declare-fun m!956109 () Bool)

(assert (=> b!1036125 m!956109))

(declare-fun m!956111 () Bool)

(assert (=> bm!43837 m!956111))

(assert (=> b!1035952 d!124593))

(declare-fun d!124595 () Bool)

(declare-fun e!586023 () Bool)

(assert (=> d!124595 e!586023))

(declare-fun res!691764 () Bool)

(assert (=> d!124595 (=> res!691764 e!586023)))

(declare-fun lt!456971 () Bool)

(assert (=> d!124595 (= res!691764 (not lt!456971))))

(declare-fun lt!456970 () Bool)

(assert (=> d!124595 (= lt!456971 lt!456970)))

(declare-fun lt!456972 () Unit!33873)

(declare-fun e!586022 () Unit!33873)

(assert (=> d!124595 (= lt!456972 e!586022)))

(declare-fun c!104754 () Bool)

(assert (=> d!124595 (= c!104754 lt!456970)))

(assert (=> d!124595 (= lt!456970 (containsKey!565 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124595 (= (contains!6044 lt!456840 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!456971)))

(declare-fun b!1036128 () Bool)

(declare-fun lt!456969 () Unit!33873)

(assert (=> b!1036128 (= e!586022 lt!456969)))

(assert (=> b!1036128 (= lt!456969 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036128 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036129 () Bool)

(declare-fun Unit!33879 () Unit!33873)

(assert (=> b!1036129 (= e!586022 Unit!33879)))

(declare-fun b!1036130 () Bool)

(assert (=> b!1036130 (= e!586023 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!124595 c!104754) b!1036128))

(assert (= (and d!124595 (not c!104754)) b!1036129))

(assert (= (and d!124595 (not res!691764)) b!1036130))

(assert (=> d!124595 m!955785))

(declare-fun m!956113 () Bool)

(assert (=> d!124595 m!956113))

(assert (=> b!1036128 m!955785))

(declare-fun m!956115 () Bool)

(assert (=> b!1036128 m!956115))

(assert (=> b!1036128 m!955785))

(assert (=> b!1036128 m!956061))

(assert (=> b!1036128 m!956061))

(declare-fun m!956117 () Bool)

(assert (=> b!1036128 m!956117))

(assert (=> b!1036130 m!955785))

(assert (=> b!1036130 m!956061))

(assert (=> b!1036130 m!956061))

(assert (=> b!1036130 m!956117))

(assert (=> b!1035949 d!124595))

(declare-fun b!1036139 () Bool)

(declare-fun e!586028 () (_ BitVec 32))

(declare-fun call!43843 () (_ BitVec 32))

(assert (=> b!1036139 (= e!586028 call!43843)))

(declare-fun bm!43840 () Bool)

(assert (=> bm!43840 (= call!43843 (arrayCountValidKeys!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(declare-fun d!124597 () Bool)

(declare-fun lt!456975 () (_ BitVec 32))

(assert (=> d!124597 (and (bvsge lt!456975 #b00000000000000000000000000000000) (bvsle lt!456975 (bvsub (size!31948 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun e!586029 () (_ BitVec 32))

(assert (=> d!124597 (= lt!456975 e!586029)))

(declare-fun c!104760 () Bool)

(assert (=> d!124597 (= c!104760 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124597 (and (bvsle #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31948 (_keys!11456 lt!456769)) (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124597 (= (arrayCountValidKeys!0 (_keys!11456 lt!456769) #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))) lt!456975)))

(declare-fun b!1036140 () Bool)

(assert (=> b!1036140 (= e!586029 e!586028)))

(declare-fun c!104759 () Bool)

(assert (=> b!1036140 (= c!104759 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036141 () Bool)

(assert (=> b!1036141 (= e!586028 (bvadd #b00000000000000000000000000000001 call!43843))))

(declare-fun b!1036142 () Bool)

(assert (=> b!1036142 (= e!586029 #b00000000000000000000000000000000)))

(assert (= (and d!124597 c!104760) b!1036142))

(assert (= (and d!124597 (not c!104760)) b!1036140))

(assert (= (and b!1036140 c!104759) b!1036141))

(assert (= (and b!1036140 (not c!104759)) b!1036139))

(assert (= (or b!1036141 b!1036139) bm!43840))

(declare-fun m!956119 () Bool)

(assert (=> bm!43840 m!956119))

(assert (=> b!1036140 m!956101))

(assert (=> b!1036140 m!956101))

(assert (=> b!1036140 m!956109))

(assert (=> b!1035951 d!124597))

(assert (=> b!1035933 d!124573))

(declare-fun d!124599 () Bool)

(assert (=> d!124599 (= (apply!942 lt!456840 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30321 () Bool)

(assert (= bs!30321 d!124599))

(declare-fun m!956121 () Bool)

(assert (=> bs!30321 m!956121))

(assert (=> bs!30321 m!956121))

(declare-fun m!956123 () Bool)

(assert (=> bs!30321 m!956123))

(assert (=> b!1035932 d!124599))

(declare-fun d!124601 () Bool)

(declare-fun e!586031 () Bool)

(assert (=> d!124601 e!586031))

(declare-fun res!691765 () Bool)

(assert (=> d!124601 (=> res!691765 e!586031)))

(declare-fun lt!456978 () Bool)

(assert (=> d!124601 (= res!691765 (not lt!456978))))

(declare-fun lt!456977 () Bool)

(assert (=> d!124601 (= lt!456978 lt!456977)))

(declare-fun lt!456979 () Unit!33873)

(declare-fun e!586030 () Unit!33873)

(assert (=> d!124601 (= lt!456979 e!586030)))

(declare-fun c!104761 () Bool)

(assert (=> d!124601 (= c!104761 lt!456977)))

(assert (=> d!124601 (= lt!456977 (containsKey!565 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124601 (= (contains!6044 lt!456866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456978)))

(declare-fun b!1036143 () Bool)

(declare-fun lt!456976 () Unit!33873)

(assert (=> b!1036143 (= e!586030 lt!456976)))

(assert (=> b!1036143 (= lt!456976 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036143 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036144 () Bool)

(declare-fun Unit!33880 () Unit!33873)

(assert (=> b!1036144 (= e!586030 Unit!33880)))

(declare-fun b!1036145 () Bool)

(assert (=> b!1036145 (= e!586031 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124601 c!104761) b!1036143))

(assert (= (and d!124601 (not c!104761)) b!1036144))

(assert (= (and d!124601 (not res!691765)) b!1036145))

(declare-fun m!956125 () Bool)

(assert (=> d!124601 m!956125))

(declare-fun m!956127 () Bool)

(assert (=> b!1036143 m!956127))

(declare-fun m!956129 () Bool)

(assert (=> b!1036143 m!956129))

(assert (=> b!1036143 m!956129))

(declare-fun m!956131 () Bool)

(assert (=> b!1036143 m!956131))

(assert (=> b!1036145 m!956129))

(assert (=> b!1036145 m!956129))

(assert (=> b!1036145 m!956131))

(assert (=> bm!43822 d!124601))

(declare-fun d!124603 () Bool)

(declare-fun e!586033 () Bool)

(assert (=> d!124603 e!586033))

(declare-fun res!691766 () Bool)

(assert (=> d!124603 (=> res!691766 e!586033)))

(declare-fun lt!456982 () Bool)

(assert (=> d!124603 (= res!691766 (not lt!456982))))

(declare-fun lt!456981 () Bool)

(assert (=> d!124603 (= lt!456982 lt!456981)))

(declare-fun lt!456983 () Unit!33873)

(declare-fun e!586032 () Unit!33873)

(assert (=> d!124603 (= lt!456983 e!586032)))

(declare-fun c!104762 () Bool)

(assert (=> d!124603 (= c!104762 lt!456981)))

(assert (=> d!124603 (= lt!456981 (containsKey!565 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124603 (= (contains!6044 lt!456840 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456982)))

(declare-fun b!1036146 () Bool)

(declare-fun lt!456980 () Unit!33873)

(assert (=> b!1036146 (= e!586032 lt!456980)))

(assert (=> b!1036146 (= lt!456980 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036146 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036147 () Bool)

(declare-fun Unit!33881 () Unit!33873)

(assert (=> b!1036147 (= e!586032 Unit!33881)))

(declare-fun b!1036148 () Bool)

(assert (=> b!1036148 (= e!586033 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124603 c!104762) b!1036146))

(assert (= (and d!124603 (not c!104762)) b!1036147))

(assert (= (and d!124603 (not res!691766)) b!1036148))

(declare-fun m!956133 () Bool)

(assert (=> d!124603 m!956133))

(declare-fun m!956135 () Bool)

(assert (=> b!1036146 m!956135))

(assert (=> b!1036146 m!956093))

(assert (=> b!1036146 m!956093))

(declare-fun m!956137 () Bool)

(assert (=> b!1036146 m!956137))

(assert (=> b!1036148 m!956093))

(assert (=> b!1036148 m!956093))

(assert (=> b!1036148 m!956137))

(assert (=> bm!43819 d!124603))

(declare-fun d!124605 () Bool)

(declare-fun e!586034 () Bool)

(assert (=> d!124605 e!586034))

(declare-fun res!691767 () Bool)

(assert (=> d!124605 (=> (not res!691767) (not e!586034))))

(declare-fun lt!456987 () ListLongMap!13875)

(assert (=> d!124605 (= res!691767 (contains!6044 lt!456987 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun lt!456985 () List!22035)

(assert (=> d!124605 (= lt!456987 (ListLongMap!13876 lt!456985))))

(declare-fun lt!456986 () Unit!33873)

(declare-fun lt!456984 () Unit!33873)

(assert (=> d!124605 (= lt!456986 lt!456984)))

(assert (=> d!124605 (= (getValueByKey!592 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (=> d!124605 (= lt!456984 (lemmaContainsTupThenGetReturnValue!281 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (=> d!124605 (= lt!456985 (insertStrictlySorted!373 (toList!6953 call!43819) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (=> d!124605 (= (+!3065 call!43819 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) lt!456987)))

(declare-fun b!1036149 () Bool)

(declare-fun res!691768 () Bool)

(assert (=> b!1036149 (=> (not res!691768) (not e!586034))))

(assert (=> b!1036149 (= res!691768 (= (getValueByKey!592 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036150 () Bool)

(assert (=> b!1036150 (= e!586034 (contains!6045 (toList!6953 lt!456987) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))

(assert (= (and d!124605 res!691767) b!1036149))

(assert (= (and b!1036149 res!691768) b!1036150))

(declare-fun m!956139 () Bool)

(assert (=> d!124605 m!956139))

(declare-fun m!956141 () Bool)

(assert (=> d!124605 m!956141))

(declare-fun m!956143 () Bool)

(assert (=> d!124605 m!956143))

(declare-fun m!956145 () Bool)

(assert (=> d!124605 m!956145))

(declare-fun m!956147 () Bool)

(assert (=> b!1036149 m!956147))

(declare-fun m!956149 () Bool)

(assert (=> b!1036150 m!956149))

(assert (=> b!1035947 d!124605))

(declare-fun d!124607 () Bool)

(assert (=> d!124607 (= (apply!942 lt!456866 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30322 () Bool)

(assert (= bs!30322 d!124607))

(assert (=> bs!30322 m!956129))

(assert (=> bs!30322 m!956129))

(declare-fun m!956151 () Bool)

(assert (=> bs!30322 m!956151))

(assert (=> b!1035956 d!124607))

(assert (=> b!1035957 d!124573))

(assert (=> b!1035940 d!124573))

(declare-fun d!124609 () Bool)

(declare-fun e!586035 () Bool)

(assert (=> d!124609 e!586035))

(declare-fun res!691769 () Bool)

(assert (=> d!124609 (=> (not res!691769) (not e!586035))))

(declare-fun lt!456991 () ListLongMap!13875)

(assert (=> d!124609 (= res!691769 (contains!6044 lt!456991 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun lt!456989 () List!22035)

(assert (=> d!124609 (= lt!456991 (ListLongMap!13876 lt!456989))))

(declare-fun lt!456990 () Unit!33873)

(declare-fun lt!456988 () Unit!33873)

(assert (=> d!124609 (= lt!456990 lt!456988)))

(assert (=> d!124609 (= (getValueByKey!592 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (=> d!124609 (= lt!456988 (lemmaContainsTupThenGetReturnValue!281 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (=> d!124609 (= lt!456989 (insertStrictlySorted!373 (toList!6953 call!43826) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (=> d!124609 (= (+!3065 call!43826 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) lt!456991)))

(declare-fun b!1036151 () Bool)

(declare-fun res!691770 () Bool)

(assert (=> b!1036151 (=> (not res!691770) (not e!586035))))

(assert (=> b!1036151 (= res!691770 (= (getValueByKey!592 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036152 () Bool)

(assert (=> b!1036152 (= e!586035 (contains!6045 (toList!6953 lt!456991) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))

(assert (= (and d!124609 res!691769) b!1036151))

(assert (= (and b!1036151 res!691770) b!1036152))

(declare-fun m!956153 () Bool)

(assert (=> d!124609 m!956153))

(declare-fun m!956155 () Bool)

(assert (=> d!124609 m!956155))

(declare-fun m!956157 () Bool)

(assert (=> d!124609 m!956157))

(declare-fun m!956159 () Bool)

(assert (=> d!124609 m!956159))

(declare-fun m!956161 () Bool)

(assert (=> b!1036151 m!956161))

(declare-fun m!956163 () Bool)

(assert (=> b!1036152 m!956163))

(assert (=> b!1035971 d!124609))

(declare-fun d!124611 () Bool)

(declare-fun e!586037 () Bool)

(assert (=> d!124611 e!586037))

(declare-fun res!691771 () Bool)

(assert (=> d!124611 (=> res!691771 e!586037)))

(declare-fun lt!456994 () Bool)

(assert (=> d!124611 (= res!691771 (not lt!456994))))

(declare-fun lt!456993 () Bool)

(assert (=> d!124611 (= lt!456994 lt!456993)))

(declare-fun lt!456995 () Unit!33873)

(declare-fun e!586036 () Unit!33873)

(assert (=> d!124611 (= lt!456995 e!586036)))

(declare-fun c!104763 () Bool)

(assert (=> d!124611 (= c!104763 lt!456993)))

(assert (=> d!124611 (= lt!456993 (containsKey!565 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124611 (= (contains!6044 lt!456866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456994)))

(declare-fun b!1036153 () Bool)

(declare-fun lt!456992 () Unit!33873)

(assert (=> b!1036153 (= e!586036 lt!456992)))

(assert (=> b!1036153 (= lt!456992 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036153 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036154 () Bool)

(declare-fun Unit!33882 () Unit!33873)

(assert (=> b!1036154 (= e!586036 Unit!33882)))

(declare-fun b!1036155 () Bool)

(assert (=> b!1036155 (= e!586037 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124611 c!104763) b!1036153))

(assert (= (and d!124611 (not c!104763)) b!1036154))

(assert (= (and d!124611 (not res!691771)) b!1036155))

(declare-fun m!956165 () Bool)

(assert (=> d!124611 m!956165))

(declare-fun m!956167 () Bool)

(assert (=> b!1036153 m!956167))

(declare-fun m!956169 () Bool)

(assert (=> b!1036153 m!956169))

(assert (=> b!1036153 m!956169))

(declare-fun m!956171 () Bool)

(assert (=> b!1036153 m!956171))

(assert (=> b!1036155 m!956169))

(assert (=> b!1036155 m!956169))

(assert (=> b!1036155 m!956171))

(assert (=> bm!43826 d!124611))

(assert (=> bm!43825 d!124535))

(declare-fun d!124613 () Bool)

(declare-fun e!586038 () Bool)

(assert (=> d!124613 e!586038))

(declare-fun res!691772 () Bool)

(assert (=> d!124613 (=> (not res!691772) (not e!586038))))

(declare-fun lt!456999 () ListLongMap!13875)

(assert (=> d!124613 (= res!691772 (contains!6044 lt!456999 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun lt!456997 () List!22035)

(assert (=> d!124613 (= lt!456999 (ListLongMap!13876 lt!456997))))

(declare-fun lt!456998 () Unit!33873)

(declare-fun lt!456996 () Unit!33873)

(assert (=> d!124613 (= lt!456998 lt!456996)))

(assert (=> d!124613 (= (getValueByKey!592 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) (Some!642 (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> d!124613 (= lt!456996 (lemmaContainsTupThenGetReturnValue!281 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> d!124613 (= lt!456997 (insertStrictlySorted!373 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> d!124613 (= (+!3065 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) lt!456999)))

(declare-fun b!1036156 () Bool)

(declare-fun res!691773 () Bool)

(assert (=> b!1036156 (=> (not res!691773) (not e!586038))))

(assert (=> b!1036156 (= res!691773 (= (getValueByKey!592 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) (Some!642 (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036157 () Bool)

(assert (=> b!1036157 (= e!586038 (contains!6045 (toList!6953 lt!456999) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (= (and d!124613 res!691772) b!1036156))

(assert (= (and b!1036156 res!691773) b!1036157))

(declare-fun m!956173 () Bool)

(assert (=> d!124613 m!956173))

(declare-fun m!956175 () Bool)

(assert (=> d!124613 m!956175))

(declare-fun m!956177 () Bool)

(assert (=> d!124613 m!956177))

(declare-fun m!956179 () Bool)

(assert (=> d!124613 m!956179))

(declare-fun m!956181 () Bool)

(assert (=> b!1036156 m!956181))

(declare-fun m!956183 () Bool)

(assert (=> b!1036157 m!956183))

(assert (=> bm!43814 d!124613))

(declare-fun b!1036158 () Bool)

(declare-fun e!586040 () Bool)

(declare-fun e!586039 () Bool)

(assert (=> b!1036158 (= e!586040 e!586039)))

(declare-fun res!691776 () Bool)

(assert (=> b!1036158 (=> (not res!691776) (not e!586039))))

(declare-fun e!586042 () Bool)

(assert (=> b!1036158 (= res!691776 (not e!586042))))

(declare-fun res!691775 () Bool)

(assert (=> b!1036158 (=> (not res!691775) (not e!586042))))

(assert (=> b!1036158 (= res!691775 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036159 () Bool)

(declare-fun e!586041 () Bool)

(declare-fun call!43844 () Bool)

(assert (=> b!1036159 (= e!586041 call!43844)))

(declare-fun b!1036160 () Bool)

(assert (=> b!1036160 (= e!586041 call!43844)))

(declare-fun b!1036161 () Bool)

(assert (=> b!1036161 (= e!586042 (contains!6046 Nil!22033 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun bm!43841 () Bool)

(declare-fun c!104764 () Bool)

(assert (=> bm!43841 (= call!43844 (arrayNoDuplicates!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104764 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)))))

(declare-fun d!124615 () Bool)

(declare-fun res!691774 () Bool)

(assert (=> d!124615 (=> res!691774 e!586040)))

(assert (=> d!124615 (= res!691774 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124615 (= (arrayNoDuplicates!0 (_keys!11456 lt!456769) #b00000000000000000000000000000000 Nil!22033) e!586040)))

(declare-fun b!1036162 () Bool)

(assert (=> b!1036162 (= e!586039 e!586041)))

(assert (=> b!1036162 (= c!104764 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (= (and d!124615 (not res!691774)) b!1036158))

(assert (= (and b!1036158 res!691775) b!1036161))

(assert (= (and b!1036158 res!691776) b!1036162))

(assert (= (and b!1036162 c!104764) b!1036160))

(assert (= (and b!1036162 (not c!104764)) b!1036159))

(assert (= (or b!1036160 b!1036159) bm!43841))

(assert (=> b!1036158 m!956101))

(assert (=> b!1036158 m!956101))

(assert (=> b!1036158 m!956109))

(assert (=> b!1036161 m!956101))

(assert (=> b!1036161 m!956101))

(declare-fun m!956185 () Bool)

(assert (=> b!1036161 m!956185))

(assert (=> bm!43841 m!956101))

(declare-fun m!956187 () Bool)

(assert (=> bm!43841 m!956187))

(assert (=> b!1036162 m!956101))

(assert (=> b!1036162 m!956101))

(assert (=> b!1036162 m!956109))

(assert (=> b!1035953 d!124615))

(declare-fun b!1036163 () Bool)

(declare-fun e!586043 () (_ BitVec 32))

(declare-fun call!43845 () (_ BitVec 32))

(assert (=> b!1036163 (= e!586043 call!43845)))

(declare-fun bm!43842 () Bool)

(assert (=> bm!43842 (= call!43845 (arrayCountValidKeys!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun d!124617 () Bool)

(declare-fun lt!457000 () (_ BitVec 32))

(assert (=> d!124617 (and (bvsge lt!457000 #b00000000000000000000000000000000) (bvsle lt!457000 (bvsub (size!31948 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!586044 () (_ BitVec 32))

(assert (=> d!124617 (= lt!457000 e!586044)))

(declare-fun c!104766 () Bool)

(assert (=> d!124617 (= c!104766 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124617 (and (bvsle #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31948 (_keys!11456 thiss!1427)) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124617 (= (arrayCountValidKeys!0 (_keys!11456 thiss!1427) #b00000000000000000000000000000000 (size!31948 (_keys!11456 thiss!1427))) lt!457000)))

(declare-fun b!1036164 () Bool)

(assert (=> b!1036164 (= e!586044 e!586043)))

(declare-fun c!104765 () Bool)

(assert (=> b!1036164 (= c!104765 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036165 () Bool)

(assert (=> b!1036165 (= e!586043 (bvadd #b00000000000000000000000000000001 call!43845))))

(declare-fun b!1036166 () Bool)

(assert (=> b!1036166 (= e!586044 #b00000000000000000000000000000000)))

(assert (= (and d!124617 c!104766) b!1036166))

(assert (= (and d!124617 (not c!104766)) b!1036164))

(assert (= (and b!1036164 c!104765) b!1036165))

(assert (= (and b!1036164 (not c!104765)) b!1036163))

(assert (= (or b!1036165 b!1036163) bm!43842))

(declare-fun m!956189 () Bool)

(assert (=> bm!43842 m!956189))

(assert (=> b!1036164 m!955785))

(assert (=> b!1036164 m!955785))

(assert (=> b!1036164 m!955787))

(assert (=> b!1035885 d!124617))

(assert (=> d!124531 d!124525))

(assert (=> d!124531 d!124587))

(assert (=> d!124531 d!124527))

(declare-fun d!124619 () Bool)

(assert (=> d!124619 (= (-!529 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))

(assert (=> d!124619 true))

(declare-fun _$10!31 () Unit!33873)

(assert (=> d!124619 (= (choose!1708 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) lt!456768 (defaultEntry!6270 thiss!1427)) _$10!31)))

(declare-fun bs!30323 () Bool)

(assert (= bs!30323 d!124619))

(assert (=> bs!30323 m!955721))

(assert (=> bs!30323 m!955721))

(assert (=> bs!30323 m!955723))

(assert (=> bs!30323 m!955727))

(assert (=> d!124531 d!124619))

(assert (=> d!124531 d!124533))

(declare-fun b!1036170 () Bool)

(declare-fun e!586045 () Bool)

(assert (=> b!1036170 (= e!586045 (and (bvsge (extraKeys!6000 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6000 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2947 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1036168 () Bool)

(declare-fun res!691779 () Bool)

(assert (=> b!1036168 (=> (not res!691779) (not e!586045))))

(assert (=> b!1036168 (= res!691779 (bvsge (size!31952 thiss!1427) (_size!2947 thiss!1427)))))

(declare-fun b!1036169 () Bool)

(declare-fun res!691780 () Bool)

(assert (=> b!1036169 (=> (not res!691780) (not e!586045))))

(assert (=> b!1036169 (= res!691780 (= (size!31952 thiss!1427) (bvadd (_size!2947 thiss!1427) (bvsdiv (bvadd (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!124621 () Bool)

(declare-fun res!691777 () Bool)

(assert (=> d!124621 (=> (not res!691777) (not e!586045))))

(assert (=> d!124621 (= res!691777 (validMask!0 (mask!30166 thiss!1427)))))

(assert (=> d!124621 (= (simpleValid!413 thiss!1427) e!586045)))

(declare-fun b!1036167 () Bool)

(declare-fun res!691778 () Bool)

(assert (=> b!1036167 (=> (not res!691778) (not e!586045))))

(assert (=> b!1036167 (= res!691778 (and (= (size!31949 (_values!6293 thiss!1427)) (bvadd (mask!30166 thiss!1427) #b00000000000000000000000000000001)) (= (size!31948 (_keys!11456 thiss!1427)) (size!31949 (_values!6293 thiss!1427))) (bvsge (_size!2947 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2947 thiss!1427) (bvadd (mask!30166 thiss!1427) #b00000000000000000000000000000001))))))

(assert (= (and d!124621 res!691777) b!1036167))

(assert (= (and b!1036167 res!691778) b!1036168))

(assert (= (and b!1036168 res!691779) b!1036169))

(assert (= (and b!1036169 res!691780) b!1036170))

(declare-fun m!956191 () Bool)

(assert (=> b!1036168 m!956191))

(assert (=> b!1036169 m!956191))

(assert (=> d!124621 m!955781))

(assert (=> d!124519 d!124621))

(declare-fun d!124623 () Bool)

(assert (=> d!124623 (= (apply!942 lt!456866 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30324 () Bool)

(assert (= bs!30324 d!124623))

(assert (=> bs!30324 m!956169))

(assert (=> bs!30324 m!956169))

(declare-fun m!956193 () Bool)

(assert (=> bs!30324 m!956193))

(assert (=> b!1035959 d!124623))

(assert (=> d!124533 d!124587))

(declare-fun d!124625 () Bool)

(declare-fun e!586047 () Bool)

(assert (=> d!124625 e!586047))

(declare-fun res!691781 () Bool)

(assert (=> d!124625 (=> res!691781 e!586047)))

(declare-fun lt!457003 () Bool)

(assert (=> d!124625 (= res!691781 (not lt!457003))))

(declare-fun lt!457002 () Bool)

(assert (=> d!124625 (= lt!457003 lt!457002)))

(declare-fun lt!457004 () Unit!33873)

(declare-fun e!586046 () Unit!33873)

(assert (=> d!124625 (= lt!457004 e!586046)))

(declare-fun c!104767 () Bool)

(assert (=> d!124625 (= c!104767 lt!457002)))

(assert (=> d!124625 (= lt!457002 (containsKey!565 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124625 (= (contains!6044 lt!456840 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457003)))

(declare-fun b!1036171 () Bool)

(declare-fun lt!457001 () Unit!33873)

(assert (=> b!1036171 (= e!586046 lt!457001)))

(assert (=> b!1036171 (= lt!457001 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036171 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036172 () Bool)

(declare-fun Unit!33883 () Unit!33873)

(assert (=> b!1036172 (= e!586046 Unit!33883)))

(declare-fun b!1036173 () Bool)

(assert (=> b!1036173 (= e!586047 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124625 c!104767) b!1036171))

(assert (= (and d!124625 (not c!104767)) b!1036172))

(assert (= (and d!124625 (not res!691781)) b!1036173))

(declare-fun m!956195 () Bool)

(assert (=> d!124625 m!956195))

(declare-fun m!956197 () Bool)

(assert (=> b!1036171 m!956197))

(assert (=> b!1036171 m!956121))

(assert (=> b!1036171 m!956121))

(declare-fun m!956199 () Bool)

(assert (=> b!1036171 m!956199))

(assert (=> b!1036173 m!956121))

(assert (=> b!1036173 m!956121))

(assert (=> b!1036173 m!956199))

(assert (=> bm!43815 d!124625))

(declare-fun d!124627 () Bool)

(declare-fun e!586049 () Bool)

(assert (=> d!124627 e!586049))

(declare-fun res!691782 () Bool)

(assert (=> d!124627 (=> res!691782 e!586049)))

(declare-fun lt!457007 () Bool)

(assert (=> d!124627 (= res!691782 (not lt!457007))))

(declare-fun lt!457006 () Bool)

(assert (=> d!124627 (= lt!457007 lt!457006)))

(declare-fun lt!457008 () Unit!33873)

(declare-fun e!586048 () Unit!33873)

(assert (=> d!124627 (= lt!457008 e!586048)))

(declare-fun c!104768 () Bool)

(assert (=> d!124627 (= c!104768 lt!457006)))

(assert (=> d!124627 (= lt!457006 (containsKey!565 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124627 (= (contains!6044 lt!456866 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457007)))

(declare-fun b!1036174 () Bool)

(declare-fun lt!457005 () Unit!33873)

(assert (=> b!1036174 (= e!586048 lt!457005)))

(assert (=> b!1036174 (= lt!457005 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036174 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036175 () Bool)

(declare-fun Unit!33884 () Unit!33873)

(assert (=> b!1036175 (= e!586048 Unit!33884)))

(declare-fun b!1036176 () Bool)

(assert (=> b!1036176 (= e!586049 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!124627 c!104768) b!1036174))

(assert (= (and d!124627 (not c!104768)) b!1036175))

(assert (= (and d!124627 (not res!691782)) b!1036176))

(assert (=> d!124627 m!955785))

(declare-fun m!956201 () Bool)

(assert (=> d!124627 m!956201))

(assert (=> b!1036174 m!955785))

(declare-fun m!956203 () Bool)

(assert (=> b!1036174 m!956203))

(assert (=> b!1036174 m!955785))

(assert (=> b!1036174 m!956097))

(assert (=> b!1036174 m!956097))

(declare-fun m!956205 () Bool)

(assert (=> b!1036174 m!956205))

(assert (=> b!1036176 m!955785))

(assert (=> b!1036176 m!956097))

(assert (=> b!1036176 m!956097))

(assert (=> b!1036176 m!956205))

(assert (=> b!1035973 d!124627))

(declare-fun d!124629 () Bool)

(declare-fun e!586051 () Bool)

(assert (=> d!124629 e!586051))

(declare-fun res!691783 () Bool)

(assert (=> d!124629 (=> res!691783 e!586051)))

(declare-fun lt!457011 () Bool)

(assert (=> d!124629 (= res!691783 (not lt!457011))))

(declare-fun lt!457010 () Bool)

(assert (=> d!124629 (= lt!457011 lt!457010)))

(declare-fun lt!457012 () Unit!33873)

(declare-fun e!586050 () Unit!33873)

(assert (=> d!124629 (= lt!457012 e!586050)))

(declare-fun c!104769 () Bool)

(assert (=> d!124629 (= c!104769 lt!457010)))

(assert (=> d!124629 (= lt!457010 (containsKey!565 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124629 (= (contains!6044 lt!456848 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457011)))

(declare-fun b!1036177 () Bool)

(declare-fun lt!457009 () Unit!33873)

(assert (=> b!1036177 (= e!586050 lt!457009)))

(assert (=> b!1036177 (= lt!457009 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036177 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036178 () Bool)

(declare-fun Unit!33885 () Unit!33873)

(assert (=> b!1036178 (= e!586050 Unit!33885)))

(declare-fun b!1036179 () Bool)

(assert (=> b!1036179 (= e!586051 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124629 c!104769) b!1036177))

(assert (= (and d!124629 (not c!104769)) b!1036178))

(assert (= (and d!124629 (not res!691783)) b!1036179))

(declare-fun m!956207 () Bool)

(assert (=> d!124629 m!956207))

(declare-fun m!956209 () Bool)

(assert (=> b!1036177 m!956209))

(declare-fun m!956211 () Bool)

(assert (=> b!1036177 m!956211))

(assert (=> b!1036177 m!956211))

(declare-fun m!956213 () Bool)

(assert (=> b!1036177 m!956213))

(assert (=> b!1036179 m!956211))

(assert (=> b!1036179 m!956211))

(assert (=> b!1036179 m!956213))

(assert (=> d!124527 d!124629))

(declare-fun b!1036180 () Bool)

(declare-fun e!586054 () List!22035)

(declare-fun e!586053 () List!22035)

(assert (=> b!1036180 (= e!586054 e!586053)))

(declare-fun c!104771 () Bool)

(assert (=> b!1036180 (= c!104771 (and ((_ is Cons!22031) (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) (not (= (_1!7929 (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!124631 () Bool)

(declare-fun e!586052 () Bool)

(assert (=> d!124631 e!586052))

(declare-fun res!691784 () Bool)

(assert (=> d!124631 (=> (not res!691784) (not e!586052))))

(declare-fun lt!457013 () List!22035)

(assert (=> d!124631 (= res!691784 (isStrictlySorted!715 lt!457013))))

(assert (=> d!124631 (= lt!457013 e!586054)))

(declare-fun c!104770 () Bool)

(assert (=> d!124631 (= c!104770 (and ((_ is Cons!22031) (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) (= (_1!7929 (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124631 (isStrictlySorted!715 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))))

(assert (=> d!124631 (= (removeStrictlySorted!58 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457013)))

(declare-fun b!1036181 () Bool)

(assert (=> b!1036181 (= e!586054 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))))

(declare-fun b!1036182 () Bool)

(assert (=> b!1036182 (= e!586052 (not (containsKey!565 lt!457013 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036183 () Bool)

(assert (=> b!1036183 (= e!586053 Nil!22032)))

(declare-fun b!1036184 () Bool)

(assert (=> b!1036184 (= e!586053 ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) #b1000000000000000000000000000000000000000000000000000000000000000) (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))))))

(assert (= (and d!124631 c!104770) b!1036181))

(assert (= (and d!124631 (not c!104770)) b!1036180))

(assert (= (and b!1036180 c!104771) b!1036184))

(assert (= (and b!1036180 (not c!104771)) b!1036183))

(assert (= (and d!124631 res!691784) b!1036182))

(declare-fun m!956215 () Bool)

(assert (=> d!124631 m!956215))

(declare-fun m!956217 () Bool)

(assert (=> d!124631 m!956217))

(declare-fun m!956219 () Bool)

(assert (=> b!1036182 m!956219))

(declare-fun m!956221 () Bool)

(assert (=> b!1036184 m!956221))

(assert (=> b!1036184 m!956221))

(declare-fun m!956223 () Bool)

(assert (=> b!1036184 m!956223))

(assert (=> d!124527 d!124631))

(assert (=> d!124517 d!124525))

(declare-fun b!1036185 () Bool)

(declare-fun res!691791 () Bool)

(declare-fun e!586056 () Bool)

(assert (=> b!1036185 (=> (not res!691791) (not e!586056))))

(declare-fun e!586059 () Bool)

(assert (=> b!1036185 (= res!691791 e!586059)))

(declare-fun c!104773 () Bool)

(assert (=> b!1036185 (= c!104773 (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1036186 () Bool)

(declare-fun e!586058 () Bool)

(assert (=> b!1036186 (= e!586059 e!586058)))

(declare-fun res!691789 () Bool)

(declare-fun call!43848 () Bool)

(assert (=> b!1036186 (= res!691789 call!43848)))

(assert (=> b!1036186 (=> (not res!691789) (not e!586058))))

(declare-fun b!1036187 () Bool)

(declare-fun e!586055 () Bool)

(declare-fun lt!457028 () ListLongMap!13875)

(assert (=> b!1036187 (= e!586055 (= (apply!942 lt!457028 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6106 lt!456769)))))

(declare-fun b!1036188 () Bool)

(declare-fun e!586063 () Bool)

(assert (=> b!1036188 (= e!586063 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun d!124633 () Bool)

(assert (=> d!124633 e!586056))

(declare-fun res!691790 () Bool)

(assert (=> d!124633 (=> (not res!691790) (not e!586056))))

(assert (=> d!124633 (= res!691790 (or (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))))

(declare-fun lt!457022 () ListLongMap!13875)

(assert (=> d!124633 (= lt!457028 lt!457022)))

(declare-fun lt!457029 () Unit!33873)

(declare-fun e!586057 () Unit!33873)

(assert (=> d!124633 (= lt!457029 e!586057)))

(declare-fun c!104774 () Bool)

(assert (=> d!124633 (= c!104774 e!586063)))

(declare-fun res!691787 () Bool)

(assert (=> d!124633 (=> (not res!691787) (not e!586063))))

(assert (=> d!124633 (= res!691787 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun e!586064 () ListLongMap!13875)

(assert (=> d!124633 (= lt!457022 e!586064)))

(declare-fun c!104776 () Bool)

(assert (=> d!124633 (= c!104776 (and (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!124633 (validMask!0 (mask!30166 lt!456769))))

(assert (=> d!124633 (= (getCurrentListMap!3959 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)) lt!457028)))

(declare-fun b!1036189 () Bool)

(declare-fun Unit!33886 () Unit!33873)

(assert (=> b!1036189 (= e!586057 Unit!33886)))

(declare-fun bm!43843 () Bool)

(declare-fun call!43850 () ListLongMap!13875)

(declare-fun call!43847 () ListLongMap!13875)

(assert (=> bm!43843 (= call!43850 call!43847)))

(declare-fun b!1036190 () Bool)

(assert (=> b!1036190 (= e!586058 (= (apply!942 lt!457028 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6104 lt!456769)))))

(declare-fun b!1036191 () Bool)

(declare-fun c!104777 () Bool)

(assert (=> b!1036191 (= c!104777 (and (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!586066 () ListLongMap!13875)

(declare-fun e!586067 () ListLongMap!13875)

(assert (=> b!1036191 (= e!586066 e!586067)))

(declare-fun b!1036192 () Bool)

(declare-fun call!43852 () ListLongMap!13875)

(assert (=> b!1036192 (= e!586067 call!43852)))

(declare-fun c!104775 () Bool)

(declare-fun call!43851 () ListLongMap!13875)

(declare-fun bm!43844 () Bool)

(declare-fun call!43849 () ListLongMap!13875)

(assert (=> bm!43844 (= call!43849 (+!3065 (ite c!104776 call!43851 (ite c!104775 call!43847 call!43850)) (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(declare-fun b!1036193 () Bool)

(declare-fun e!586065 () Bool)

(assert (=> b!1036193 (= e!586065 e!586055)))

(declare-fun res!691792 () Bool)

(declare-fun call!43846 () Bool)

(assert (=> b!1036193 (= res!691792 call!43846)))

(assert (=> b!1036193 (=> (not res!691792) (not e!586055))))

(declare-fun b!1036194 () Bool)

(assert (=> b!1036194 (= e!586064 e!586066)))

(assert (=> b!1036194 (= c!104775 (and (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1036195 () Bool)

(declare-fun e!586060 () Bool)

(assert (=> b!1036195 (= e!586060 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036196 () Bool)

(declare-fun lt!457035 () Unit!33873)

(assert (=> b!1036196 (= e!586057 lt!457035)))

(declare-fun lt!457033 () ListLongMap!13875)

(assert (=> b!1036196 (= lt!457033 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun lt!457030 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!457023 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457023 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(declare-fun lt!457032 () Unit!33873)

(assert (=> b!1036196 (= lt!457032 (addStillContains!630 lt!457033 lt!457030 (zeroValue!6104 lt!456769) lt!457023))))

(assert (=> b!1036196 (contains!6044 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) lt!457023)))

(declare-fun lt!457034 () Unit!33873)

(assert (=> b!1036196 (= lt!457034 lt!457032)))

(declare-fun lt!457015 () ListLongMap!13875)

(assert (=> b!1036196 (= lt!457015 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun lt!457031 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457031 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!457024 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457024 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(declare-fun lt!457021 () Unit!33873)

(assert (=> b!1036196 (= lt!457021 (addApplyDifferent!482 lt!457015 lt!457031 (minValue!6106 lt!456769) lt!457024))))

(assert (=> b!1036196 (= (apply!942 (+!3065 lt!457015 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) lt!457024) (apply!942 lt!457015 lt!457024))))

(declare-fun lt!457016 () Unit!33873)

(assert (=> b!1036196 (= lt!457016 lt!457021)))

(declare-fun lt!457019 () ListLongMap!13875)

(assert (=> b!1036196 (= lt!457019 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun lt!457026 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457026 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!457027 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457027 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(declare-fun lt!457018 () Unit!33873)

(assert (=> b!1036196 (= lt!457018 (addApplyDifferent!482 lt!457019 lt!457026 (zeroValue!6104 lt!456769) lt!457027))))

(assert (=> b!1036196 (= (apply!942 (+!3065 lt!457019 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) lt!457027) (apply!942 lt!457019 lt!457027))))

(declare-fun lt!457014 () Unit!33873)

(assert (=> b!1036196 (= lt!457014 lt!457018)))

(declare-fun lt!457017 () ListLongMap!13875)

(assert (=> b!1036196 (= lt!457017 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun lt!457025 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457025 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!457020 () (_ BitVec 64))

(assert (=> b!1036196 (= lt!457020 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(assert (=> b!1036196 (= lt!457035 (addApplyDifferent!482 lt!457017 lt!457025 (minValue!6106 lt!456769) lt!457020))))

(assert (=> b!1036196 (= (apply!942 (+!3065 lt!457017 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) lt!457020) (apply!942 lt!457017 lt!457020))))

(declare-fun bm!43845 () Bool)

(assert (=> bm!43845 (= call!43846 (contains!6044 lt!457028 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036197 () Bool)

(declare-fun res!691785 () Bool)

(assert (=> b!1036197 (=> (not res!691785) (not e!586056))))

(declare-fun e!586062 () Bool)

(assert (=> b!1036197 (= res!691785 e!586062)))

(declare-fun res!691786 () Bool)

(assert (=> b!1036197 (=> res!691786 e!586062)))

(assert (=> b!1036197 (= res!691786 (not e!586060))))

(declare-fun res!691788 () Bool)

(assert (=> b!1036197 (=> (not res!691788) (not e!586060))))

(assert (=> b!1036197 (= res!691788 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun b!1036198 () Bool)

(assert (=> b!1036198 (= e!586065 (not call!43846))))

(declare-fun b!1036199 () Bool)

(assert (=> b!1036199 (= e!586056 e!586065)))

(declare-fun c!104772 () Bool)

(assert (=> b!1036199 (= c!104772 (not (= (bvand (extraKeys!6000 lt!456769) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43846 () Bool)

(assert (=> bm!43846 (= call!43852 call!43849)))

(declare-fun b!1036200 () Bool)

(declare-fun e!586061 () Bool)

(assert (=> b!1036200 (= e!586061 (= (apply!942 lt!457028 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1036200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 lt!456769))))))

(assert (=> b!1036200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun bm!43847 () Bool)

(assert (=> bm!43847 (= call!43847 call!43851)))

(declare-fun bm!43848 () Bool)

(assert (=> bm!43848 (= call!43851 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)))))

(declare-fun b!1036201 () Bool)

(assert (=> b!1036201 (= e!586066 call!43852)))

(declare-fun bm!43849 () Bool)

(assert (=> bm!43849 (= call!43848 (contains!6044 lt!457028 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036202 () Bool)

(assert (=> b!1036202 (= e!586064 (+!3065 call!43849 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))

(declare-fun b!1036203 () Bool)

(assert (=> b!1036203 (= e!586067 call!43850)))

(declare-fun b!1036204 () Bool)

(assert (=> b!1036204 (= e!586062 e!586061)))

(declare-fun res!691793 () Bool)

(assert (=> b!1036204 (=> (not res!691793) (not e!586061))))

(assert (=> b!1036204 (= res!691793 (contains!6044 lt!457028 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (=> b!1036204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun b!1036205 () Bool)

(assert (=> b!1036205 (= e!586059 (not call!43848))))

(assert (= (and d!124633 c!104776) b!1036202))

(assert (= (and d!124633 (not c!104776)) b!1036194))

(assert (= (and b!1036194 c!104775) b!1036201))

(assert (= (and b!1036194 (not c!104775)) b!1036191))

(assert (= (and b!1036191 c!104777) b!1036192))

(assert (= (and b!1036191 (not c!104777)) b!1036203))

(assert (= (or b!1036192 b!1036203) bm!43843))

(assert (= (or b!1036201 bm!43843) bm!43847))

(assert (= (or b!1036201 b!1036192) bm!43846))

(assert (= (or b!1036202 bm!43847) bm!43848))

(assert (= (or b!1036202 bm!43846) bm!43844))

(assert (= (and d!124633 res!691787) b!1036188))

(assert (= (and d!124633 c!104774) b!1036196))

(assert (= (and d!124633 (not c!104774)) b!1036189))

(assert (= (and d!124633 res!691790) b!1036197))

(assert (= (and b!1036197 res!691788) b!1036195))

(assert (= (and b!1036197 (not res!691786)) b!1036204))

(assert (= (and b!1036204 res!691793) b!1036200))

(assert (= (and b!1036197 res!691785) b!1036185))

(assert (= (and b!1036185 c!104773) b!1036186))

(assert (= (and b!1036185 (not c!104773)) b!1036205))

(assert (= (and b!1036186 res!691789) b!1036190))

(assert (= (or b!1036186 b!1036205) bm!43849))

(assert (= (and b!1036185 res!691791) b!1036199))

(assert (= (and b!1036199 c!104772) b!1036193))

(assert (= (and b!1036199 (not c!104772)) b!1036198))

(assert (= (and b!1036193 res!691792) b!1036187))

(assert (= (or b!1036193 b!1036198) bm!43845))

(declare-fun b_lambda!16155 () Bool)

(assert (=> (not b_lambda!16155) (not b!1036200)))

(declare-fun tb!7043 () Bool)

(declare-fun t!31256 () Bool)

(assert (=> (and b!1035850 (= (defaultEntry!6270 thiss!1427) (defaultEntry!6270 lt!456769)) t!31256) tb!7043))

(declare-fun result!14439 () Bool)

(assert (=> tb!7043 (= result!14439 tp_is_empty!24597)))

(assert (=> b!1036200 t!31256))

(declare-fun b_and!33417 () Bool)

(assert (= b_and!33415 (and (=> t!31256 result!14439) b_and!33417)))

(declare-fun m!956225 () Bool)

(assert (=> b!1036202 m!956225))

(assert (=> d!124633 m!956021))

(declare-fun m!956227 () Bool)

(assert (=> b!1036187 m!956227))

(assert (=> b!1036188 m!956101))

(assert (=> b!1036188 m!956101))

(assert (=> b!1036188 m!956109))

(declare-fun m!956229 () Bool)

(assert (=> bm!43849 m!956229))

(declare-fun m!956231 () Bool)

(assert (=> b!1036200 m!956231))

(assert (=> b!1036200 m!956101))

(declare-fun m!956233 () Bool)

(assert (=> b!1036200 m!956233))

(assert (=> b!1036200 m!956101))

(declare-fun m!956235 () Bool)

(assert (=> b!1036200 m!956235))

(assert (=> b!1036200 m!956231))

(assert (=> b!1036200 m!956233))

(declare-fun m!956237 () Bool)

(assert (=> b!1036200 m!956237))

(assert (=> b!1036204 m!956101))

(assert (=> b!1036204 m!956101))

(declare-fun m!956239 () Bool)

(assert (=> b!1036204 m!956239))

(declare-fun m!956241 () Bool)

(assert (=> bm!43844 m!956241))

(declare-fun m!956243 () Bool)

(assert (=> b!1036196 m!956243))

(assert (=> b!1036196 m!956243))

(declare-fun m!956245 () Bool)

(assert (=> b!1036196 m!956245))

(assert (=> b!1036196 m!956101))

(declare-fun m!956247 () Bool)

(assert (=> b!1036196 m!956247))

(declare-fun m!956249 () Bool)

(assert (=> b!1036196 m!956249))

(declare-fun m!956251 () Bool)

(assert (=> b!1036196 m!956251))

(declare-fun m!956253 () Bool)

(assert (=> b!1036196 m!956253))

(declare-fun m!956255 () Bool)

(assert (=> b!1036196 m!956255))

(declare-fun m!956257 () Bool)

(assert (=> b!1036196 m!956257))

(declare-fun m!956259 () Bool)

(assert (=> b!1036196 m!956259))

(declare-fun m!956261 () Bool)

(assert (=> b!1036196 m!956261))

(declare-fun m!956263 () Bool)

(assert (=> b!1036196 m!956263))

(declare-fun m!956265 () Bool)

(assert (=> b!1036196 m!956265))

(assert (=> b!1036196 m!956249))

(declare-fun m!956267 () Bool)

(assert (=> b!1036196 m!956267))

(declare-fun m!956269 () Bool)

(assert (=> b!1036196 m!956269))

(assert (=> b!1036196 m!956269))

(declare-fun m!956271 () Bool)

(assert (=> b!1036196 m!956271))

(assert (=> b!1036196 m!956255))

(declare-fun m!956273 () Bool)

(assert (=> b!1036196 m!956273))

(declare-fun m!956275 () Bool)

(assert (=> b!1036190 m!956275))

(assert (=> b!1036195 m!956101))

(assert (=> b!1036195 m!956101))

(assert (=> b!1036195 m!956109))

(declare-fun m!956277 () Bool)

(assert (=> bm!43845 m!956277))

(assert (=> bm!43848 m!956263))

(assert (=> d!124513 d!124633))

(declare-fun d!124635 () Bool)

(assert (=> d!124635 (= (apply!942 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!456836) (apply!942 lt!456827 lt!456836))))

(declare-fun lt!457036 () Unit!33873)

(assert (=> d!124635 (= lt!457036 (choose!1709 lt!456827 lt!456843 (minValue!6106 thiss!1427) lt!456836))))

(declare-fun e!586068 () Bool)

(assert (=> d!124635 e!586068))

(declare-fun res!691794 () Bool)

(assert (=> d!124635 (=> (not res!691794) (not e!586068))))

(assert (=> d!124635 (= res!691794 (contains!6044 lt!456827 lt!456836))))

(assert (=> d!124635 (= (addApplyDifferent!482 lt!456827 lt!456843 (minValue!6106 thiss!1427) lt!456836) lt!457036)))

(declare-fun b!1036206 () Bool)

(assert (=> b!1036206 (= e!586068 (not (= lt!456836 lt!456843)))))

(assert (= (and d!124635 res!691794) b!1036206))

(declare-fun m!956279 () Bool)

(assert (=> d!124635 m!956279))

(assert (=> d!124635 m!955827))

(assert (=> d!124635 m!955829))

(assert (=> d!124635 m!955829))

(assert (=> d!124635 m!955831))

(declare-fun m!956281 () Bool)

(assert (=> d!124635 m!956281))

(assert (=> b!1035941 d!124635))

(declare-fun d!124637 () Bool)

(assert (=> d!124637 (contains!6044 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!456835)))

(declare-fun lt!457037 () Unit!33873)

(assert (=> d!124637 (= lt!457037 (choose!1710 lt!456845 lt!456842 (zeroValue!6104 thiss!1427) lt!456835))))

(assert (=> d!124637 (contains!6044 lt!456845 lt!456835)))

(assert (=> d!124637 (= (addStillContains!630 lt!456845 lt!456842 (zeroValue!6104 thiss!1427) lt!456835) lt!457037)))

(declare-fun bs!30325 () Bool)

(assert (= bs!30325 d!124637))

(assert (=> bs!30325 m!955809))

(assert (=> bs!30325 m!955809))

(assert (=> bs!30325 m!955811))

(declare-fun m!956283 () Bool)

(assert (=> bs!30325 m!956283))

(declare-fun m!956285 () Bool)

(assert (=> bs!30325 m!956285))

(assert (=> b!1035941 d!124637))

(declare-fun d!124639 () Bool)

(declare-fun e!586069 () Bool)

(assert (=> d!124639 e!586069))

(declare-fun res!691795 () Bool)

(assert (=> d!124639 (=> (not res!691795) (not e!586069))))

(declare-fun lt!457041 () ListLongMap!13875)

(assert (=> d!124639 (= res!691795 (contains!6044 lt!457041 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457039 () List!22035)

(assert (=> d!124639 (= lt!457041 (ListLongMap!13876 lt!457039))))

(declare-fun lt!457040 () Unit!33873)

(declare-fun lt!457038 () Unit!33873)

(assert (=> d!124639 (= lt!457040 lt!457038)))

(assert (=> d!124639 (= (getValueByKey!592 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124639 (= lt!457038 (lemmaContainsTupThenGetReturnValue!281 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124639 (= lt!457039 (insertStrictlySorted!373 (toList!6953 lt!456845) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124639 (= (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!457041)))

(declare-fun b!1036207 () Bool)

(declare-fun res!691796 () Bool)

(assert (=> b!1036207 (=> (not res!691796) (not e!586069))))

(assert (=> b!1036207 (= res!691796 (= (getValueByKey!592 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036208 () Bool)

(assert (=> b!1036208 (= e!586069 (contains!6045 (toList!6953 lt!457041) (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124639 res!691795) b!1036207))

(assert (= (and b!1036207 res!691796) b!1036208))

(declare-fun m!956287 () Bool)

(assert (=> d!124639 m!956287))

(declare-fun m!956289 () Bool)

(assert (=> d!124639 m!956289))

(declare-fun m!956291 () Bool)

(assert (=> d!124639 m!956291))

(declare-fun m!956293 () Bool)

(assert (=> d!124639 m!956293))

(declare-fun m!956295 () Bool)

(assert (=> b!1036207 m!956295))

(declare-fun m!956297 () Bool)

(assert (=> b!1036208 m!956297))

(assert (=> b!1035941 d!124639))

(declare-fun d!124641 () Bool)

(assert (=> d!124641 (= (apply!942 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!456836) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!456836)))))

(declare-fun bs!30326 () Bool)

(assert (= bs!30326 d!124641))

(declare-fun m!956299 () Bool)

(assert (=> bs!30326 m!956299))

(assert (=> bs!30326 m!956299))

(declare-fun m!956301 () Bool)

(assert (=> bs!30326 m!956301))

(assert (=> b!1035941 d!124641))

(assert (=> b!1035941 d!124575))

(declare-fun d!124643 () Bool)

(assert (=> d!124643 (= (apply!942 lt!456827 lt!456836) (get!16475 (getValueByKey!592 (toList!6953 lt!456827) lt!456836)))))

(declare-fun bs!30327 () Bool)

(assert (= bs!30327 d!124643))

(declare-fun m!956303 () Bool)

(assert (=> bs!30327 m!956303))

(assert (=> bs!30327 m!956303))

(declare-fun m!956305 () Bool)

(assert (=> bs!30327 m!956305))

(assert (=> b!1035941 d!124643))

(declare-fun d!124645 () Bool)

(declare-fun e!586070 () Bool)

(assert (=> d!124645 e!586070))

(declare-fun res!691797 () Bool)

(assert (=> d!124645 (=> (not res!691797) (not e!586070))))

(declare-fun lt!457045 () ListLongMap!13875)

(assert (=> d!124645 (= res!691797 (contains!6044 lt!457045 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun lt!457043 () List!22035)

(assert (=> d!124645 (= lt!457045 (ListLongMap!13876 lt!457043))))

(declare-fun lt!457044 () Unit!33873)

(declare-fun lt!457042 () Unit!33873)

(assert (=> d!124645 (= lt!457044 lt!457042)))

(assert (=> d!124645 (= (getValueByKey!592 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(assert (=> d!124645 (= lt!457042 (lemmaContainsTupThenGetReturnValue!281 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(assert (=> d!124645 (= lt!457043 (insertStrictlySorted!373 (toList!6953 lt!456829) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(assert (=> d!124645 (= (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!457045)))

(declare-fun b!1036209 () Bool)

(declare-fun res!691798 () Bool)

(assert (=> b!1036209 (=> (not res!691798) (not e!586070))))

(assert (=> b!1036209 (= res!691798 (= (getValueByKey!592 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036210 () Bool)

(assert (=> b!1036210 (= e!586070 (contains!6045 (toList!6953 lt!457045) (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))

(assert (= (and d!124645 res!691797) b!1036209))

(assert (= (and b!1036209 res!691798) b!1036210))

(declare-fun m!956307 () Bool)

(assert (=> d!124645 m!956307))

(declare-fun m!956309 () Bool)

(assert (=> d!124645 m!956309))

(declare-fun m!956311 () Bool)

(assert (=> d!124645 m!956311))

(declare-fun m!956313 () Bool)

(assert (=> d!124645 m!956313))

(declare-fun m!956315 () Bool)

(assert (=> b!1036209 m!956315))

(declare-fun m!956317 () Bool)

(assert (=> b!1036210 m!956317))

(assert (=> b!1035941 d!124645))

(declare-fun d!124647 () Bool)

(assert (=> d!124647 (= (apply!942 lt!456831 lt!456839) (get!16475 (getValueByKey!592 (toList!6953 lt!456831) lt!456839)))))

(declare-fun bs!30328 () Bool)

(assert (= bs!30328 d!124647))

(declare-fun m!956319 () Bool)

(assert (=> bs!30328 m!956319))

(assert (=> bs!30328 m!956319))

(declare-fun m!956321 () Bool)

(assert (=> bs!30328 m!956321))

(assert (=> b!1035941 d!124647))

(declare-fun d!124649 () Bool)

(assert (=> d!124649 (= (apply!942 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!456832) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!456832)))))

(declare-fun bs!30329 () Bool)

(assert (= bs!30329 d!124649))

(declare-fun m!956323 () Bool)

(assert (=> bs!30329 m!956323))

(assert (=> bs!30329 m!956323))

(declare-fun m!956325 () Bool)

(assert (=> bs!30329 m!956325))

(assert (=> b!1035941 d!124649))

(declare-fun d!124651 () Bool)

(declare-fun e!586071 () Bool)

(assert (=> d!124651 e!586071))

(declare-fun res!691799 () Bool)

(assert (=> d!124651 (=> (not res!691799) (not e!586071))))

(declare-fun lt!457049 () ListLongMap!13875)

(assert (=> d!124651 (= res!691799 (contains!6044 lt!457049 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457047 () List!22035)

(assert (=> d!124651 (= lt!457049 (ListLongMap!13876 lt!457047))))

(declare-fun lt!457048 () Unit!33873)

(declare-fun lt!457046 () Unit!33873)

(assert (=> d!124651 (= lt!457048 lt!457046)))

(assert (=> d!124651 (= (getValueByKey!592 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124651 (= lt!457046 (lemmaContainsTupThenGetReturnValue!281 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124651 (= lt!457047 (insertStrictlySorted!373 (toList!6953 lt!456831) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124651 (= (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!457049)))

(declare-fun b!1036211 () Bool)

(declare-fun res!691800 () Bool)

(assert (=> b!1036211 (=> (not res!691800) (not e!586071))))

(assert (=> b!1036211 (= res!691800 (= (getValueByKey!592 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036212 () Bool)

(assert (=> b!1036212 (= e!586071 (contains!6045 (toList!6953 lt!457049) (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124651 res!691799) b!1036211))

(assert (= (and b!1036211 res!691800) b!1036212))

(declare-fun m!956327 () Bool)

(assert (=> d!124651 m!956327))

(declare-fun m!956329 () Bool)

(assert (=> d!124651 m!956329))

(declare-fun m!956331 () Bool)

(assert (=> d!124651 m!956331))

(declare-fun m!956333 () Bool)

(assert (=> d!124651 m!956333))

(declare-fun m!956335 () Bool)

(assert (=> b!1036211 m!956335))

(declare-fun m!956337 () Bool)

(assert (=> b!1036212 m!956337))

(assert (=> b!1035941 d!124651))

(declare-fun d!124653 () Bool)

(assert (=> d!124653 (= (apply!942 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!456832) (apply!942 lt!456829 lt!456832))))

(declare-fun lt!457050 () Unit!33873)

(assert (=> d!124653 (= lt!457050 (choose!1709 lt!456829 lt!456837 (minValue!6106 thiss!1427) lt!456832))))

(declare-fun e!586072 () Bool)

(assert (=> d!124653 e!586072))

(declare-fun res!691801 () Bool)

(assert (=> d!124653 (=> (not res!691801) (not e!586072))))

(assert (=> d!124653 (= res!691801 (contains!6044 lt!456829 lt!456832))))

(assert (=> d!124653 (= (addApplyDifferent!482 lt!456829 lt!456837 (minValue!6106 thiss!1427) lt!456832) lt!457050)))

(declare-fun b!1036213 () Bool)

(assert (=> b!1036213 (= e!586072 (not (= lt!456832 lt!456837)))))

(assert (= (and d!124653 res!691801) b!1036213))

(declare-fun m!956339 () Bool)

(assert (=> d!124653 m!956339))

(assert (=> d!124653 m!955813))

(assert (=> d!124653 m!955815))

(assert (=> d!124653 m!955815))

(assert (=> d!124653 m!955833))

(declare-fun m!956341 () Bool)

(assert (=> d!124653 m!956341))

(assert (=> b!1035941 d!124653))

(declare-fun d!124655 () Bool)

(declare-fun e!586074 () Bool)

(assert (=> d!124655 e!586074))

(declare-fun res!691802 () Bool)

(assert (=> d!124655 (=> res!691802 e!586074)))

(declare-fun lt!457053 () Bool)

(assert (=> d!124655 (= res!691802 (not lt!457053))))

(declare-fun lt!457052 () Bool)

(assert (=> d!124655 (= lt!457053 lt!457052)))

(declare-fun lt!457054 () Unit!33873)

(declare-fun e!586073 () Unit!33873)

(assert (=> d!124655 (= lt!457054 e!586073)))

(declare-fun c!104778 () Bool)

(assert (=> d!124655 (= c!104778 lt!457052)))

(assert (=> d!124655 (= lt!457052 (containsKey!565 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(assert (=> d!124655 (= (contains!6044 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!456835) lt!457053)))

(declare-fun b!1036214 () Bool)

(declare-fun lt!457051 () Unit!33873)

(assert (=> b!1036214 (= e!586073 lt!457051)))

(assert (=> b!1036214 (= lt!457051 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(assert (=> b!1036214 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(declare-fun b!1036215 () Bool)

(declare-fun Unit!33887 () Unit!33873)

(assert (=> b!1036215 (= e!586073 Unit!33887)))

(declare-fun b!1036216 () Bool)

(assert (=> b!1036216 (= e!586074 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835)))))

(assert (= (and d!124655 c!104778) b!1036214))

(assert (= (and d!124655 (not c!104778)) b!1036215))

(assert (= (and d!124655 (not res!691802)) b!1036216))

(declare-fun m!956343 () Bool)

(assert (=> d!124655 m!956343))

(declare-fun m!956345 () Bool)

(assert (=> b!1036214 m!956345))

(declare-fun m!956347 () Bool)

(assert (=> b!1036214 m!956347))

(assert (=> b!1036214 m!956347))

(declare-fun m!956349 () Bool)

(assert (=> b!1036214 m!956349))

(assert (=> b!1036216 m!956347))

(assert (=> b!1036216 m!956347))

(assert (=> b!1036216 m!956349))

(assert (=> b!1035941 d!124655))

(declare-fun d!124657 () Bool)

(declare-fun e!586075 () Bool)

(assert (=> d!124657 e!586075))

(declare-fun res!691803 () Bool)

(assert (=> d!124657 (=> (not res!691803) (not e!586075))))

(declare-fun lt!457058 () ListLongMap!13875)

(assert (=> d!124657 (= res!691803 (contains!6044 lt!457058 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun lt!457056 () List!22035)

(assert (=> d!124657 (= lt!457058 (ListLongMap!13876 lt!457056))))

(declare-fun lt!457057 () Unit!33873)

(declare-fun lt!457055 () Unit!33873)

(assert (=> d!124657 (= lt!457057 lt!457055)))

(assert (=> d!124657 (= (getValueByKey!592 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(assert (=> d!124657 (= lt!457055 (lemmaContainsTupThenGetReturnValue!281 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(assert (=> d!124657 (= lt!457056 (insertStrictlySorted!373 (toList!6953 lt!456827) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(assert (=> d!124657 (= (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!457058)))

(declare-fun b!1036217 () Bool)

(declare-fun res!691804 () Bool)

(assert (=> b!1036217 (=> (not res!691804) (not e!586075))))

(assert (=> b!1036217 (= res!691804 (= (getValueByKey!592 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036218 () Bool)

(assert (=> b!1036218 (= e!586075 (contains!6045 (toList!6953 lt!457058) (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))

(assert (= (and d!124657 res!691803) b!1036217))

(assert (= (and b!1036217 res!691804) b!1036218))

(declare-fun m!956351 () Bool)

(assert (=> d!124657 m!956351))

(declare-fun m!956353 () Bool)

(assert (=> d!124657 m!956353))

(declare-fun m!956355 () Bool)

(assert (=> d!124657 m!956355))

(declare-fun m!956357 () Bool)

(assert (=> d!124657 m!956357))

(declare-fun m!956359 () Bool)

(assert (=> b!1036217 m!956359))

(declare-fun m!956361 () Bool)

(assert (=> b!1036218 m!956361))

(assert (=> b!1035941 d!124657))

(declare-fun d!124659 () Bool)

(assert (=> d!124659 (= (apply!942 lt!456829 lt!456832) (get!16475 (getValueByKey!592 (toList!6953 lt!456829) lt!456832)))))

(declare-fun bs!30330 () Bool)

(assert (= bs!30330 d!124659))

(declare-fun m!956363 () Bool)

(assert (=> bs!30330 m!956363))

(assert (=> bs!30330 m!956363))

(declare-fun m!956365 () Bool)

(assert (=> bs!30330 m!956365))

(assert (=> b!1035941 d!124659))

(declare-fun d!124661 () Bool)

(assert (=> d!124661 (= (apply!942 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!456839) (apply!942 lt!456831 lt!456839))))

(declare-fun lt!457059 () Unit!33873)

(assert (=> d!124661 (= lt!457059 (choose!1709 lt!456831 lt!456838 (zeroValue!6104 thiss!1427) lt!456839))))

(declare-fun e!586076 () Bool)

(assert (=> d!124661 e!586076))

(declare-fun res!691805 () Bool)

(assert (=> d!124661 (=> (not res!691805) (not e!586076))))

(assert (=> d!124661 (= res!691805 (contains!6044 lt!456831 lt!456839))))

(assert (=> d!124661 (= (addApplyDifferent!482 lt!456831 lt!456838 (zeroValue!6104 thiss!1427) lt!456839) lt!457059)))

(declare-fun b!1036219 () Bool)

(assert (=> b!1036219 (= e!586076 (not (= lt!456839 lt!456838)))))

(assert (= (and d!124661 res!691805) b!1036219))

(declare-fun m!956367 () Bool)

(assert (=> d!124661 m!956367))

(assert (=> d!124661 m!955817))

(assert (=> d!124661 m!955803))

(assert (=> d!124661 m!955803))

(assert (=> d!124661 m!955805))

(declare-fun m!956369 () Bool)

(assert (=> d!124661 m!956369))

(assert (=> b!1035941 d!124661))

(declare-fun d!124663 () Bool)

(assert (=> d!124663 (= (apply!942 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!456839) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!456839)))))

(declare-fun bs!30331 () Bool)

(assert (= bs!30331 d!124663))

(declare-fun m!956371 () Bool)

(assert (=> bs!30331 m!956371))

(assert (=> bs!30331 m!956371))

(declare-fun m!956373 () Bool)

(assert (=> bs!30331 m!956373))

(assert (=> b!1035941 d!124663))

(declare-fun mapNonEmpty!38419 () Bool)

(declare-fun mapRes!38419 () Bool)

(declare-fun tp!73776 () Bool)

(declare-fun e!586078 () Bool)

(assert (=> mapNonEmpty!38419 (= mapRes!38419 (and tp!73776 e!586078))))

(declare-fun mapRest!38419 () (Array (_ BitVec 32) ValueCell!11595))

(declare-fun mapValue!38419 () ValueCell!11595)

(declare-fun mapKey!38419 () (_ BitVec 32))

(assert (=> mapNonEmpty!38419 (= mapRest!38418 (store mapRest!38419 mapKey!38419 mapValue!38419))))

(declare-fun condMapEmpty!38419 () Bool)

(declare-fun mapDefault!38419 () ValueCell!11595)

(assert (=> mapNonEmpty!38418 (= condMapEmpty!38419 (= mapRest!38418 ((as const (Array (_ BitVec 32) ValueCell!11595)) mapDefault!38419)))))

(declare-fun e!586077 () Bool)

(assert (=> mapNonEmpty!38418 (= tp!73775 (and e!586077 mapRes!38419))))

(declare-fun mapIsEmpty!38419 () Bool)

(assert (=> mapIsEmpty!38419 mapRes!38419))

(declare-fun b!1036220 () Bool)

(assert (=> b!1036220 (= e!586078 tp_is_empty!24597)))

(declare-fun b!1036221 () Bool)

(assert (=> b!1036221 (= e!586077 tp_is_empty!24597)))

(assert (= (and mapNonEmpty!38418 condMapEmpty!38419) mapIsEmpty!38419))

(assert (= (and mapNonEmpty!38418 (not condMapEmpty!38419)) mapNonEmpty!38419))

(assert (= (and mapNonEmpty!38419 ((_ is ValueCellFull!11595) mapValue!38419)) b!1036220))

(assert (= (and mapNonEmpty!38418 ((_ is ValueCellFull!11595) mapDefault!38419)) b!1036221))

(declare-fun m!956375 () Bool)

(assert (=> mapNonEmpty!38419 m!956375))

(declare-fun b_lambda!16157 () Bool)

(assert (= b_lambda!16153 (or (and b!1035850 b_free!20877) b_lambda!16157)))

(declare-fun b_lambda!16159 () Bool)

(assert (= b_lambda!16149 (or (and b!1035850 b_free!20877) b_lambda!16159)))

(declare-fun b_lambda!16161 () Bool)

(assert (= b_lambda!16147 (or (and b!1035850 b_free!20877) b_lambda!16161)))

(declare-fun b_lambda!16163 () Bool)

(assert (= b_lambda!16151 (or (and b!1035850 b_free!20877) b_lambda!16163)))

(check-sat (not d!124551) (not bm!43833) (not d!124657) (not d!124625) (not b!1036158) (not d!124613) (not b!1036187) (not d!124637) (not b!1036081) (not b!1036012) (not b_lambda!16137) (not d!124569) (not d!124547) (not d!124655) (not d!124577) (not b!1036085) (not d!124645) (not b!1036179) (not d!124555) (not d!124599) (not b!1036176) (not b!1036168) (not b_lambda!16145) (not d!124609) (not d!124643) (not b!1036045) (not b!1036011) (not b!1036161) (not d!124663) (not b!1036182) (not bm!43845) (not b!1036125) (not d!124621) (not b!1036202) (not b!1036164) (not b!1036218) (not d!124545) (not d!124575) (not b!1036130) (not bm!43844) (not d!124635) (not b!1036152) (not bm!43842) (not b!1036196) (not b!1036057) (not d!124623) (not bm!43836) (not b!1036204) (not b!1036122) (not d!124565) (not b!1036119) tp_is_empty!24597 (not b!1036151) (not b!1036216) (not b!1036032) (not bm!43830) (not d!124557) (not d!124559) (not d!124561) (not d!124651) (not b!1036077) (not bm!43829) (not b!1036044) (not d!124653) (not b!1036080) (not b!1036074) (not b!1036149) (not d!124611) (not d!124633) (not b!1036018) (not b!1036217) (not b!1036094) (not d!124567) (not d!124627) (not b!1036056) (not b!1036214) (not d!124603) (not b!1036184) (not b!1036017) (not d!124639) (not b_lambda!16159) (not d!124641) (not d!124591) (not d!124631) (not d!124539) (not b!1036171) (not b!1036210) (not d!124619) (not b!1036208) (not b!1036015) (not b!1036200) (not b!1036177) (not b!1036086) (not b!1036027) (not b!1036207) (not d!124661) (not b_lambda!16157) b_and!33417 (not b!1036148) (not b_lambda!16143) (not b!1036035) (not b!1036033) (not d!124553) (not b!1036169) (not b!1036109) (not bm!43840) (not d!124585) (not b!1036174) (not bm!43848) (not mapNonEmpty!38419) (not d!124563) (not b!1036034) (not b_lambda!16163) (not d!124535) (not b!1036155) (not b!1036076) (not d!124595) (not b!1036212) (not b!1036146) (not b!1036145) (not bm!43849) (not b!1036108) (not b!1036173) (not b!1036118) (not b!1036093) (not d!124605) (not b!1036105) (not b_lambda!16161) (not b!1036156) (not d!124649) (not b!1036150) (not b!1036010) (not b_next!20877) (not b!1036162) (not d!124541) (not b!1036123) (not d!124659) (not b!1036025) (not b!1036082) (not b_lambda!16155) (not b!1036016) (not b!1036153) (not b!1036128) (not b!1036211) (not d!124537) (not d!124601) (not b!1036140) (not b!1036209) (not d!124629) (not bm!43841) (not d!124549) (not b!1036157) (not b!1036188) (not b!1036043) (not d!124647) (not b!1036195) (not b!1036042) (not d!124543) (not b!1036124) (not d!124589) (not d!124607) (not b!1036061) (not bm!43837) (not b!1036007) (not d!124571) (not b!1036088) (not b!1036059) (not b!1036143) (not b!1036190) (not b!1036087))
(check-sat b_and!33417 (not b_next!20877))
(get-model)

(declare-fun e!586080 () Bool)

(declare-fun b!1036222 () Bool)

(declare-fun lt!457062 () ListLongMap!13875)

(assert (=> b!1036222 (= e!586080 (= lt!457062 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427))))))

(declare-fun d!124665 () Bool)

(declare-fun e!586084 () Bool)

(assert (=> d!124665 e!586084))

(declare-fun res!691807 () Bool)

(assert (=> d!124665 (=> (not res!691807) (not e!586084))))

(assert (=> d!124665 (= res!691807 (not (contains!6044 lt!457062 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586083 () ListLongMap!13875)

(assert (=> d!124665 (= lt!457062 e!586083)))

(declare-fun c!104781 () Bool)

(assert (=> d!124665 (= c!104781 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124665 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124665 (= (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)) lt!457062)))

(declare-fun b!1036223 () Bool)

(declare-fun e!586081 () Bool)

(assert (=> b!1036223 (= e!586084 e!586081)))

(declare-fun c!104779 () Bool)

(declare-fun e!586085 () Bool)

(assert (=> b!1036223 (= c!104779 e!586085)))

(declare-fun res!691809 () Bool)

(assert (=> b!1036223 (=> (not res!691809) (not e!586085))))

(assert (=> b!1036223 (= res!691809 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036224 () Bool)

(assert (=> b!1036224 (= e!586081 e!586080)))

(declare-fun c!104780 () Bool)

(assert (=> b!1036224 (= c!104780 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036225 () Bool)

(assert (=> b!1036225 (= e!586085 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036225 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1036226 () Bool)

(assert (=> b!1036226 (= e!586080 (isEmpty!932 lt!457062))))

(declare-fun b!1036227 () Bool)

(assert (=> b!1036227 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> b!1036227 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31949 (_values!6293 thiss!1427))))))

(declare-fun e!586082 () Bool)

(assert (=> b!1036227 (= e!586082 (= (apply!942 lt!457062 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036228 () Bool)

(assert (=> b!1036228 (= e!586083 (ListLongMap!13876 Nil!22032))))

(declare-fun b!1036229 () Bool)

(declare-fun e!586079 () ListLongMap!13875)

(declare-fun call!43853 () ListLongMap!13875)

(assert (=> b!1036229 (= e!586079 call!43853)))

(declare-fun b!1036230 () Bool)

(declare-fun lt!457063 () Unit!33873)

(declare-fun lt!457060 () Unit!33873)

(assert (=> b!1036230 (= lt!457063 lt!457060)))

(declare-fun lt!457065 () (_ BitVec 64))

(declare-fun lt!457066 () (_ BitVec 64))

(declare-fun lt!457064 () ListLongMap!13875)

(declare-fun lt!457061 () V!37669)

(assert (=> b!1036230 (not (contains!6044 (+!3065 lt!457064 (tuple2!15839 lt!457065 lt!457061)) lt!457066))))

(assert (=> b!1036230 (= lt!457060 (addStillNotContains!245 lt!457064 lt!457065 lt!457061 lt!457066))))

(assert (=> b!1036230 (= lt!457066 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1036230 (= lt!457061 (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036230 (= lt!457065 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1036230 (= lt!457064 call!43853)))

(assert (=> b!1036230 (= e!586079 (+!3065 call!43853 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!43850 () Bool)

(assert (=> bm!43850 (= call!43853 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (bvand (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) (zeroValue!6104 thiss!1427) lt!456768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1036231 () Bool)

(declare-fun res!691808 () Bool)

(assert (=> b!1036231 (=> (not res!691808) (not e!586084))))

(assert (=> b!1036231 (= res!691808 (not (contains!6044 lt!457062 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036232 () Bool)

(assert (=> b!1036232 (= e!586083 e!586079)))

(declare-fun c!104782 () Bool)

(assert (=> b!1036232 (= c!104782 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036233 () Bool)

(assert (=> b!1036233 (= e!586081 e!586082)))

(assert (=> b!1036233 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun res!691806 () Bool)

(assert (=> b!1036233 (= res!691806 (contains!6044 lt!457062 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036233 (=> (not res!691806) (not e!586082))))

(assert (= (and d!124665 c!104781) b!1036228))

(assert (= (and d!124665 (not c!104781)) b!1036232))

(assert (= (and b!1036232 c!104782) b!1036230))

(assert (= (and b!1036232 (not c!104782)) b!1036229))

(assert (= (or b!1036230 b!1036229) bm!43850))

(assert (= (and d!124665 res!691807) b!1036231))

(assert (= (and b!1036231 res!691808) b!1036223))

(assert (= (and b!1036223 res!691809) b!1036225))

(assert (= (and b!1036223 c!104779) b!1036233))

(assert (= (and b!1036223 (not c!104779)) b!1036224))

(assert (= (and b!1036233 res!691806) b!1036227))

(assert (= (and b!1036224 c!104780) b!1036222))

(assert (= (and b!1036224 (not c!104780)) b!1036226))

(declare-fun b_lambda!16165 () Bool)

(assert (=> (not b_lambda!16165) (not b!1036227)))

(assert (=> b!1036227 t!31253))

(declare-fun b_and!33419 () Bool)

(assert (= b_and!33417 (and (=> t!31253 result!14435) b_and!33419)))

(declare-fun b_lambda!16167 () Bool)

(assert (=> (not b_lambda!16167) (not b!1036230)))

(assert (=> b!1036230 t!31253))

(declare-fun b_and!33421 () Bool)

(assert (= b_and!33419 (and (=> t!31253 result!14435) b_and!33421)))

(declare-fun m!956377 () Bool)

(assert (=> bm!43850 m!956377))

(declare-fun m!956379 () Bool)

(assert (=> b!1036231 m!956379))

(declare-fun m!956381 () Bool)

(assert (=> b!1036233 m!956381))

(assert (=> b!1036233 m!956381))

(declare-fun m!956383 () Bool)

(assert (=> b!1036233 m!956383))

(declare-fun m!956385 () Bool)

(assert (=> b!1036227 m!956385))

(assert (=> b!1036227 m!956385))

(assert (=> b!1036227 m!955793))

(declare-fun m!956387 () Bool)

(assert (=> b!1036227 m!956387))

(assert (=> b!1036227 m!955793))

(assert (=> b!1036227 m!956381))

(declare-fun m!956389 () Bool)

(assert (=> b!1036227 m!956389))

(assert (=> b!1036227 m!956381))

(assert (=> b!1036225 m!956381))

(assert (=> b!1036225 m!956381))

(declare-fun m!956391 () Bool)

(assert (=> b!1036225 m!956391))

(assert (=> b!1036222 m!956377))

(assert (=> b!1036232 m!956381))

(assert (=> b!1036232 m!956381))

(assert (=> b!1036232 m!956391))

(declare-fun m!956393 () Bool)

(assert (=> d!124665 m!956393))

(assert (=> d!124665 m!955781))

(assert (=> b!1036230 m!956385))

(assert (=> b!1036230 m!956385))

(assert (=> b!1036230 m!955793))

(assert (=> b!1036230 m!956387))

(declare-fun m!956395 () Bool)

(assert (=> b!1036230 m!956395))

(assert (=> b!1036230 m!956381))

(declare-fun m!956397 () Bool)

(assert (=> b!1036230 m!956397))

(declare-fun m!956399 () Bool)

(assert (=> b!1036230 m!956399))

(assert (=> b!1036230 m!955793))

(assert (=> b!1036230 m!956397))

(declare-fun m!956401 () Bool)

(assert (=> b!1036230 m!956401))

(declare-fun m!956403 () Bool)

(assert (=> b!1036226 m!956403))

(assert (=> b!1036007 d!124665))

(declare-fun d!124667 () Bool)

(declare-fun c!104787 () Bool)

(assert (=> d!124667 (= c!104787 (and ((_ is Cons!22031) (toList!6953 lt!456937)) (= (_1!7929 (h!23233 (toList!6953 lt!456937))) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586090 () Option!643)

(assert (=> d!124667 (= (getValueByKey!592 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) e!586090)))

(declare-fun b!1036243 () Bool)

(declare-fun e!586091 () Option!643)

(assert (=> b!1036243 (= e!586090 e!586091)))

(declare-fun c!104788 () Bool)

(assert (=> b!1036243 (= c!104788 (and ((_ is Cons!22031) (toList!6953 lt!456937)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456937))) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036245 () Bool)

(assert (=> b!1036245 (= e!586091 None!641)))

(declare-fun b!1036244 () Bool)

(assert (=> b!1036244 (= e!586091 (getValueByKey!592 (t!31249 (toList!6953 lt!456937)) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036242 () Bool)

(assert (=> b!1036242 (= e!586090 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456937)))))))

(assert (= (and d!124667 c!104787) b!1036242))

(assert (= (and d!124667 (not c!104787)) b!1036243))

(assert (= (and b!1036243 c!104788) b!1036244))

(assert (= (and b!1036243 (not c!104788)) b!1036245))

(declare-fun m!956405 () Bool)

(assert (=> b!1036244 m!956405))

(assert (=> b!1036044 d!124667))

(declare-fun d!124669 () Bool)

(assert (=> d!124669 (= (get!16477 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036094 d!124669))

(declare-fun d!124671 () Bool)

(declare-fun e!586092 () Bool)

(assert (=> d!124671 e!586092))

(declare-fun res!691810 () Bool)

(assert (=> d!124671 (=> (not res!691810) (not e!586092))))

(declare-fun lt!457070 () ListLongMap!13875)

(assert (=> d!124671 (= res!691810 (contains!6044 lt!457070 (_1!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))))

(declare-fun lt!457068 () List!22035)

(assert (=> d!124671 (= lt!457070 (ListLongMap!13876 lt!457068))))

(declare-fun lt!457069 () Unit!33873)

(declare-fun lt!457067 () Unit!33873)

(assert (=> d!124671 (= lt!457069 lt!457067)))

(assert (=> d!124671 (= (getValueByKey!592 lt!457068 (_1!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))) (Some!642 (_2!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))))

(assert (=> d!124671 (= lt!457067 (lemmaContainsTupThenGetReturnValue!281 lt!457068 (_1!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))) (_2!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))))

(assert (=> d!124671 (= lt!457068 (insertStrictlySorted!373 (toList!6953 (ite c!104776 call!43851 (ite c!104775 call!43847 call!43850))) (_1!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))) (_2!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))))

(assert (=> d!124671 (= (+!3065 (ite c!104776 call!43851 (ite c!104775 call!43847 call!43850)) (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))) lt!457070)))

(declare-fun b!1036246 () Bool)

(declare-fun res!691811 () Bool)

(assert (=> b!1036246 (=> (not res!691811) (not e!586092))))

(assert (=> b!1036246 (= res!691811 (= (getValueByKey!592 (toList!6953 lt!457070) (_1!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))) (Some!642 (_2!7929 (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))))

(declare-fun b!1036247 () Bool)

(assert (=> b!1036247 (= e!586092 (contains!6045 (toList!6953 lt!457070) (ite (or c!104776 c!104775) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 lt!456769)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(assert (= (and d!124671 res!691810) b!1036246))

(assert (= (and b!1036246 res!691811) b!1036247))

(declare-fun m!956407 () Bool)

(assert (=> d!124671 m!956407))

(declare-fun m!956409 () Bool)

(assert (=> d!124671 m!956409))

(declare-fun m!956411 () Bool)

(assert (=> d!124671 m!956411))

(declare-fun m!956413 () Bool)

(assert (=> d!124671 m!956413))

(declare-fun m!956415 () Bool)

(assert (=> b!1036246 m!956415))

(declare-fun m!956417 () Bool)

(assert (=> b!1036247 m!956417))

(assert (=> bm!43844 d!124671))

(declare-fun d!124673 () Bool)

(assert (=> d!124673 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!457073 () Unit!33873)

(declare-fun choose!1711 (List!22035 (_ BitVec 64)) Unit!33873)

(assert (=> d!124673 (= lt!457073 (choose!1711 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586095 () Bool)

(assert (=> d!124673 e!586095))

(declare-fun res!691814 () Bool)

(assert (=> d!124673 (=> (not res!691814) (not e!586095))))

(assert (=> d!124673 (= res!691814 (isStrictlySorted!715 (toList!6953 lt!456866)))))

(assert (=> d!124673 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000) lt!457073)))

(declare-fun b!1036250 () Bool)

(assert (=> b!1036250 (= e!586095 (containsKey!565 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124673 res!691814) b!1036250))

(assert (=> d!124673 m!956169))

(assert (=> d!124673 m!956169))

(assert (=> d!124673 m!956171))

(declare-fun m!956419 () Bool)

(assert (=> d!124673 m!956419))

(declare-fun m!956421 () Bool)

(assert (=> d!124673 m!956421))

(assert (=> b!1036250 m!956165))

(assert (=> b!1036153 d!124673))

(declare-fun d!124675 () Bool)

(declare-fun isEmpty!933 (Option!643) Bool)

(assert (=> d!124675 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30332 () Bool)

(assert (= bs!30332 d!124675))

(assert (=> bs!30332 m!956169))

(declare-fun m!956423 () Bool)

(assert (=> bs!30332 m!956423))

(assert (=> b!1036153 d!124675))

(declare-fun d!124677 () Bool)

(declare-fun c!104789 () Bool)

(assert (=> d!124677 (= c!104789 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586096 () Option!643)

(assert (=> d!124677 (= (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000) e!586096)))

(declare-fun b!1036252 () Bool)

(declare-fun e!586097 () Option!643)

(assert (=> b!1036252 (= e!586096 e!586097)))

(declare-fun c!104790 () Bool)

(assert (=> b!1036252 (= c!104790 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036254 () Bool)

(assert (=> b!1036254 (= e!586097 None!641)))

(declare-fun b!1036253 () Bool)

(assert (=> b!1036253 (= e!586097 (getValueByKey!592 (t!31249 (toList!6953 lt!456866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036251 () Bool)

(assert (=> b!1036251 (= e!586096 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456866)))))))

(assert (= (and d!124677 c!104789) b!1036251))

(assert (= (and d!124677 (not c!104789)) b!1036252))

(assert (= (and b!1036252 c!104790) b!1036253))

(assert (= (and b!1036252 (not c!104790)) b!1036254))

(declare-fun m!956425 () Bool)

(assert (=> b!1036253 m!956425))

(assert (=> b!1036153 d!124677))

(declare-fun d!124679 () Bool)

(declare-fun res!691819 () Bool)

(declare-fun e!586102 () Bool)

(assert (=> d!124679 (=> res!691819 e!586102)))

(assert (=> d!124679 (= res!691819 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) lt!456861)))))

(assert (=> d!124679 (= (containsKey!565 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861) e!586102)))

(declare-fun b!1036259 () Bool)

(declare-fun e!586103 () Bool)

(assert (=> b!1036259 (= e!586102 e!586103)))

(declare-fun res!691820 () Bool)

(assert (=> b!1036259 (=> (not res!691820) (not e!586103))))

(assert (=> b!1036259 (= res!691820 (and (or (not ((_ is Cons!22031) (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) (bvsle (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) lt!456861)) ((_ is Cons!22031) (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) (bvslt (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) lt!456861)))))

(declare-fun b!1036260 () Bool)

(assert (=> b!1036260 (= e!586103 (containsKey!565 (t!31249 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) lt!456861))))

(assert (= (and d!124679 (not res!691819)) b!1036259))

(assert (= (and b!1036259 res!691820) b!1036260))

(declare-fun m!956427 () Bool)

(assert (=> b!1036260 m!956427))

(assert (=> d!124537 d!124679))

(declare-fun d!124681 () Bool)

(assert (=> d!124681 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))) lt!456858)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))) lt!456858)))))

(assert (=> d!124545 d!124681))

(declare-fun c!104791 () Bool)

(declare-fun d!124683 () Bool)

(assert (=> d!124683 (= c!104791 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))))) lt!456858)))))

(declare-fun e!586104 () Option!643)

(assert (=> d!124683 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))) lt!456858) e!586104)))

(declare-fun b!1036262 () Bool)

(declare-fun e!586105 () Option!643)

(assert (=> b!1036262 (= e!586104 e!586105)))

(declare-fun c!104792 () Bool)

(assert (=> b!1036262 (= c!104792 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768))))) lt!456858))))))

(declare-fun b!1036264 () Bool)

(assert (=> b!1036264 (= e!586105 None!641)))

(declare-fun b!1036263 () Bool)

(assert (=> b!1036263 (= e!586105 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)))) lt!456858))))

(declare-fun b!1036261 () Bool)

(assert (=> b!1036261 (= e!586104 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)))))))))

(assert (= (and d!124683 c!104791) b!1036261))

(assert (= (and d!124683 (not c!104791)) b!1036262))

(assert (= (and b!1036262 c!104792) b!1036263))

(assert (= (and b!1036262 (not c!104792)) b!1036264))

(declare-fun m!956429 () Bool)

(assert (=> b!1036263 m!956429))

(assert (=> d!124545 d!124683))

(assert (=> d!124635 d!124641))

(assert (=> d!124635 d!124643))

(declare-fun d!124685 () Bool)

(declare-fun e!586107 () Bool)

(assert (=> d!124685 e!586107))

(declare-fun res!691821 () Bool)

(assert (=> d!124685 (=> res!691821 e!586107)))

(declare-fun lt!457076 () Bool)

(assert (=> d!124685 (= res!691821 (not lt!457076))))

(declare-fun lt!457075 () Bool)

(assert (=> d!124685 (= lt!457076 lt!457075)))

(declare-fun lt!457077 () Unit!33873)

(declare-fun e!586106 () Unit!33873)

(assert (=> d!124685 (= lt!457077 e!586106)))

(declare-fun c!104793 () Bool)

(assert (=> d!124685 (= c!104793 lt!457075)))

(assert (=> d!124685 (= lt!457075 (containsKey!565 (toList!6953 lt!456827) lt!456836))))

(assert (=> d!124685 (= (contains!6044 lt!456827 lt!456836) lt!457076)))

(declare-fun b!1036265 () Bool)

(declare-fun lt!457074 () Unit!33873)

(assert (=> b!1036265 (= e!586106 lt!457074)))

(assert (=> b!1036265 (= lt!457074 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456827) lt!456836))))

(assert (=> b!1036265 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456827) lt!456836))))

(declare-fun b!1036266 () Bool)

(declare-fun Unit!33888 () Unit!33873)

(assert (=> b!1036266 (= e!586106 Unit!33888)))

(declare-fun b!1036267 () Bool)

(assert (=> b!1036267 (= e!586107 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456827) lt!456836)))))

(assert (= (and d!124685 c!104793) b!1036265))

(assert (= (and d!124685 (not c!104793)) b!1036266))

(assert (= (and d!124685 (not res!691821)) b!1036267))

(declare-fun m!956431 () Bool)

(assert (=> d!124685 m!956431))

(declare-fun m!956433 () Bool)

(assert (=> b!1036265 m!956433))

(assert (=> b!1036265 m!956303))

(assert (=> b!1036265 m!956303))

(declare-fun m!956435 () Bool)

(assert (=> b!1036265 m!956435))

(assert (=> b!1036267 m!956303))

(assert (=> b!1036267 m!956303))

(assert (=> b!1036267 m!956435))

(assert (=> d!124635 d!124685))

(declare-fun d!124687 () Bool)

(assert (=> d!124687 (= (apply!942 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!456836) (apply!942 lt!456827 lt!456836))))

(assert (=> d!124687 true))

(declare-fun _$34!1169 () Unit!33873)

(assert (=> d!124687 (= (choose!1709 lt!456827 lt!456843 (minValue!6106 thiss!1427) lt!456836) _$34!1169)))

(declare-fun bs!30333 () Bool)

(assert (= bs!30333 d!124687))

(assert (=> bs!30333 m!955829))

(assert (=> bs!30333 m!955829))

(assert (=> bs!30333 m!955831))

(assert (=> bs!30333 m!955827))

(assert (=> d!124635 d!124687))

(assert (=> d!124635 d!124657))

(declare-fun lt!457080 () Bool)

(declare-fun d!124689 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!518 (List!22035) (InoxSet tuple2!15838))

(assert (=> d!124689 (= lt!457080 (select (content!518 (toList!6953 lt!456999)) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun e!586113 () Bool)

(assert (=> d!124689 (= lt!457080 e!586113)))

(declare-fun res!691826 () Bool)

(assert (=> d!124689 (=> (not res!691826) (not e!586113))))

(assert (=> d!124689 (= res!691826 ((_ is Cons!22031) (toList!6953 lt!456999)))))

(assert (=> d!124689 (= (contains!6045 (toList!6953 lt!456999) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) lt!457080)))

(declare-fun b!1036273 () Bool)

(declare-fun e!586112 () Bool)

(assert (=> b!1036273 (= e!586113 e!586112)))

(declare-fun res!691827 () Bool)

(assert (=> b!1036273 (=> res!691827 e!586112)))

(assert (=> b!1036273 (= res!691827 (= (h!23233 (toList!6953 lt!456999)) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036274 () Bool)

(assert (=> b!1036274 (= e!586112 (contains!6045 (t!31249 (toList!6953 lt!456999)) (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (= (and d!124689 res!691826) b!1036273))

(assert (= (and b!1036273 (not res!691827)) b!1036274))

(declare-fun m!956437 () Bool)

(assert (=> d!124689 m!956437))

(declare-fun m!956439 () Bool)

(assert (=> d!124689 m!956439))

(declare-fun m!956441 () Bool)

(assert (=> b!1036274 m!956441))

(assert (=> b!1036157 d!124689))

(declare-fun d!124691 () Bool)

(declare-fun c!104794 () Bool)

(assert (=> d!124691 (= c!104794 (and ((_ is Cons!22031) (toList!6953 lt!457045)) (= (_1!7929 (h!23233 (toList!6953 lt!457045))) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(declare-fun e!586114 () Option!643)

(assert (=> d!124691 (= (getValueByKey!592 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) e!586114)))

(declare-fun b!1036276 () Bool)

(declare-fun e!586115 () Option!643)

(assert (=> b!1036276 (= e!586114 e!586115)))

(declare-fun c!104795 () Bool)

(assert (=> b!1036276 (= c!104795 (and ((_ is Cons!22031) (toList!6953 lt!457045)) (not (= (_1!7929 (h!23233 (toList!6953 lt!457045))) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036278 () Bool)

(assert (=> b!1036278 (= e!586115 None!641)))

(declare-fun b!1036277 () Bool)

(assert (=> b!1036277 (= e!586115 (getValueByKey!592 (t!31249 (toList!6953 lt!457045)) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036275 () Bool)

(assert (=> b!1036275 (= e!586114 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!457045)))))))

(assert (= (and d!124691 c!104794) b!1036275))

(assert (= (and d!124691 (not c!104794)) b!1036276))

(assert (= (and b!1036276 c!104795) b!1036277))

(assert (= (and b!1036276 (not c!104795)) b!1036278))

(declare-fun m!956443 () Bool)

(assert (=> b!1036277 m!956443))

(assert (=> b!1036209 d!124691))

(assert (=> d!124619 d!124527))

(assert (=> d!124619 d!124525))

(assert (=> d!124619 d!124533))

(declare-fun d!124693 () Bool)

(assert (=> d!124693 (= (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1036125 d!124693))

(declare-fun d!124695 () Bool)

(declare-fun e!586117 () Bool)

(assert (=> d!124695 e!586117))

(declare-fun res!691828 () Bool)

(assert (=> d!124695 (=> res!691828 e!586117)))

(declare-fun lt!457083 () Bool)

(assert (=> d!124695 (= res!691828 (not lt!457083))))

(declare-fun lt!457082 () Bool)

(assert (=> d!124695 (= lt!457083 lt!457082)))

(declare-fun lt!457084 () Unit!33873)

(declare-fun e!586116 () Unit!33873)

(assert (=> d!124695 (= lt!457084 e!586116)))

(declare-fun c!104796 () Bool)

(assert (=> d!124695 (= c!104796 lt!457082)))

(assert (=> d!124695 (= lt!457082 (containsKey!565 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(assert (=> d!124695 (= (contains!6044 lt!456922 (_1!7929 (tuple2!15839 lt!456863 lt!456768))) lt!457083)))

(declare-fun b!1036279 () Bool)

(declare-fun lt!457081 () Unit!33873)

(assert (=> b!1036279 (= e!586116 lt!457081)))

(assert (=> b!1036279 (= lt!457081 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(assert (=> b!1036279 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036280 () Bool)

(declare-fun Unit!33889 () Unit!33873)

(assert (=> b!1036280 (= e!586116 Unit!33889)))

(declare-fun b!1036281 () Bool)

(assert (=> b!1036281 (= e!586117 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(assert (= (and d!124695 c!104796) b!1036279))

(assert (= (and d!124695 (not c!104796)) b!1036280))

(assert (= (and d!124695 (not res!691828)) b!1036281))

(declare-fun m!956445 () Bool)

(assert (=> d!124695 m!956445))

(declare-fun m!956447 () Bool)

(assert (=> b!1036279 m!956447))

(assert (=> b!1036279 m!955951))

(assert (=> b!1036279 m!955951))

(declare-fun m!956449 () Bool)

(assert (=> b!1036279 m!956449))

(assert (=> b!1036281 m!955951))

(assert (=> b!1036281 m!955951))

(assert (=> b!1036281 m!956449))

(assert (=> d!124541 d!124695))

(declare-fun d!124697 () Bool)

(declare-fun c!104797 () Bool)

(assert (=> d!124697 (= c!104797 (and ((_ is Cons!22031) lt!456920) (= (_1!7929 (h!23233 lt!456920)) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(declare-fun e!586118 () Option!643)

(assert (=> d!124697 (= (getValueByKey!592 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768))) e!586118)))

(declare-fun b!1036283 () Bool)

(declare-fun e!586119 () Option!643)

(assert (=> b!1036283 (= e!586118 e!586119)))

(declare-fun c!104798 () Bool)

(assert (=> b!1036283 (= c!104798 (and ((_ is Cons!22031) lt!456920) (not (= (_1!7929 (h!23233 lt!456920)) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))))

(declare-fun b!1036285 () Bool)

(assert (=> b!1036285 (= e!586119 None!641)))

(declare-fun b!1036284 () Bool)

(assert (=> b!1036284 (= e!586119 (getValueByKey!592 (t!31249 lt!456920) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036282 () Bool)

(assert (=> b!1036282 (= e!586118 (Some!642 (_2!7929 (h!23233 lt!456920))))))

(assert (= (and d!124697 c!104797) b!1036282))

(assert (= (and d!124697 (not c!104797)) b!1036283))

(assert (= (and b!1036283 c!104798) b!1036284))

(assert (= (and b!1036283 (not c!104798)) b!1036285))

(declare-fun m!956451 () Bool)

(assert (=> b!1036284 m!956451))

(assert (=> d!124541 d!124697))

(declare-fun d!124699 () Bool)

(assert (=> d!124699 (= (getValueByKey!592 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun lt!457087 () Unit!33873)

(declare-fun choose!1712 (List!22035 (_ BitVec 64) V!37669) Unit!33873)

(assert (=> d!124699 (= lt!457087 (choose!1712 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun e!586122 () Bool)

(assert (=> d!124699 e!586122))

(declare-fun res!691833 () Bool)

(assert (=> d!124699 (=> (not res!691833) (not e!586122))))

(assert (=> d!124699 (= res!691833 (isStrictlySorted!715 lt!456920))))

(assert (=> d!124699 (= (lemmaContainsTupThenGetReturnValue!281 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))) lt!457087)))

(declare-fun b!1036290 () Bool)

(declare-fun res!691834 () Bool)

(assert (=> b!1036290 (=> (not res!691834) (not e!586122))))

(assert (=> b!1036290 (= res!691834 (containsKey!565 lt!456920 (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036291 () Bool)

(assert (=> b!1036291 (= e!586122 (contains!6045 lt!456920 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(assert (= (and d!124699 res!691833) b!1036290))

(assert (= (and b!1036290 res!691834) b!1036291))

(assert (=> d!124699 m!955945))

(declare-fun m!956453 () Bool)

(assert (=> d!124699 m!956453))

(declare-fun m!956455 () Bool)

(assert (=> d!124699 m!956455))

(declare-fun m!956457 () Bool)

(assert (=> b!1036290 m!956457))

(declare-fun m!956459 () Bool)

(assert (=> b!1036291 m!956459))

(assert (=> d!124541 d!124699))

(declare-fun b!1036312 () Bool)

(declare-fun e!586133 () List!22035)

(declare-fun e!586134 () List!22035)

(assert (=> b!1036312 (= e!586133 e!586134)))

(declare-fun c!104810 () Bool)

(assert (=> b!1036312 (= c!104810 (and ((_ is Cons!22031) (toList!6953 lt!456855)) (= (_1!7929 (h!23233 (toList!6953 lt!456855))) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(declare-fun b!1036313 () Bool)

(declare-fun e!586136 () List!22035)

(declare-fun call!43861 () List!22035)

(assert (=> b!1036313 (= e!586136 call!43861)))

(declare-fun bm!43857 () Bool)

(declare-fun call!43860 () List!22035)

(declare-fun e!586137 () List!22035)

(declare-fun c!104807 () Bool)

(assert (=> bm!43857 (= call!43860 ($colon$colon!606 e!586137 (ite c!104807 (h!23233 (toList!6953 lt!456855)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))))

(declare-fun c!104808 () Bool)

(assert (=> bm!43857 (= c!104808 c!104807)))

(declare-fun d!124701 () Bool)

(declare-fun e!586135 () Bool)

(assert (=> d!124701 e!586135))

(declare-fun res!691839 () Bool)

(assert (=> d!124701 (=> (not res!691839) (not e!586135))))

(declare-fun lt!457090 () List!22035)

(assert (=> d!124701 (= res!691839 (isStrictlySorted!715 lt!457090))))

(assert (=> d!124701 (= lt!457090 e!586133)))

(assert (=> d!124701 (= c!104807 (and ((_ is Cons!22031) (toList!6953 lt!456855)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456855))) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(assert (=> d!124701 (isStrictlySorted!715 (toList!6953 lt!456855))))

(assert (=> d!124701 (= (insertStrictlySorted!373 (toList!6953 lt!456855) (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))) lt!457090)))

(declare-fun c!104809 () Bool)

(declare-fun b!1036314 () Bool)

(assert (=> b!1036314 (= c!104809 (and ((_ is Cons!22031) (toList!6953 lt!456855)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456855))) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(assert (=> b!1036314 (= e!586134 e!586136)))

(declare-fun b!1036315 () Bool)

(assert (=> b!1036315 (= e!586137 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456855)) (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036316 () Bool)

(declare-fun res!691840 () Bool)

(assert (=> b!1036316 (=> (not res!691840) (not e!586135))))

(assert (=> b!1036316 (= res!691840 (containsKey!565 lt!457090 (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036317 () Bool)

(assert (=> b!1036317 (= e!586133 call!43860)))

(declare-fun bm!43858 () Bool)

(declare-fun call!43862 () List!22035)

(assert (=> bm!43858 (= call!43861 call!43862)))

(declare-fun b!1036318 () Bool)

(assert (=> b!1036318 (= e!586135 (contains!6045 lt!457090 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456863 lt!456768)) (_2!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(declare-fun b!1036319 () Bool)

(assert (=> b!1036319 (= e!586136 call!43861)))

(declare-fun bm!43859 () Bool)

(assert (=> bm!43859 (= call!43862 call!43860)))

(declare-fun b!1036320 () Bool)

(assert (=> b!1036320 (= e!586137 (ite c!104810 (t!31249 (toList!6953 lt!456855)) (ite c!104809 (Cons!22031 (h!23233 (toList!6953 lt!456855)) (t!31249 (toList!6953 lt!456855))) Nil!22032)))))

(declare-fun b!1036321 () Bool)

(assert (=> b!1036321 (= e!586134 call!43862)))

(assert (= (and d!124701 c!104807) b!1036317))

(assert (= (and d!124701 (not c!104807)) b!1036312))

(assert (= (and b!1036312 c!104810) b!1036321))

(assert (= (and b!1036312 (not c!104810)) b!1036314))

(assert (= (and b!1036314 c!104809) b!1036319))

(assert (= (and b!1036314 (not c!104809)) b!1036313))

(assert (= (or b!1036319 b!1036313) bm!43858))

(assert (= (or b!1036321 bm!43858) bm!43859))

(assert (= (or b!1036317 bm!43859) bm!43857))

(assert (= (and bm!43857 c!104808) b!1036315))

(assert (= (and bm!43857 (not c!104808)) b!1036320))

(assert (= (and d!124701 res!691839) b!1036316))

(assert (= (and b!1036316 res!691840) b!1036318))

(declare-fun m!956461 () Bool)

(assert (=> b!1036318 m!956461))

(declare-fun m!956463 () Bool)

(assert (=> bm!43857 m!956463))

(declare-fun m!956465 () Bool)

(assert (=> b!1036315 m!956465))

(declare-fun m!956467 () Bool)

(assert (=> b!1036316 m!956467))

(declare-fun m!956469 () Bool)

(assert (=> d!124701 m!956469))

(declare-fun m!956471 () Bool)

(assert (=> d!124701 m!956471))

(assert (=> d!124541 d!124701))

(assert (=> b!1036162 d!124693))

(declare-fun d!124703 () Bool)

(declare-fun isEmpty!934 (List!22035) Bool)

(assert (=> d!124703 (= (isEmpty!932 lt!456890) (isEmpty!934 (toList!6953 lt!456890)))))

(declare-fun bs!30334 () Bool)

(assert (= bs!30334 d!124703))

(declare-fun m!956473 () Bool)

(assert (=> bs!30334 m!956473))

(assert (=> b!1036011 d!124703))

(declare-fun d!124705 () Bool)

(declare-fun e!586139 () Bool)

(assert (=> d!124705 e!586139))

(declare-fun res!691841 () Bool)

(assert (=> d!124705 (=> res!691841 e!586139)))

(declare-fun lt!457093 () Bool)

(assert (=> d!124705 (= res!691841 (not lt!457093))))

(declare-fun lt!457092 () Bool)

(assert (=> d!124705 (= lt!457093 lt!457092)))

(declare-fun lt!457094 () Unit!33873)

(declare-fun e!586138 () Unit!33873)

(assert (=> d!124705 (= lt!457094 e!586138)))

(declare-fun c!104811 () Bool)

(assert (=> d!124705 (= c!104811 lt!457092)))

(assert (=> d!124705 (= lt!457092 (containsKey!565 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124705 (= (contains!6044 lt!457049 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!457093)))

(declare-fun b!1036322 () Bool)

(declare-fun lt!457091 () Unit!33873)

(assert (=> b!1036322 (= e!586138 lt!457091)))

(assert (=> b!1036322 (= lt!457091 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(assert (=> b!1036322 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036323 () Bool)

(declare-fun Unit!33890 () Unit!33873)

(assert (=> b!1036323 (= e!586138 Unit!33890)))

(declare-fun b!1036324 () Bool)

(assert (=> b!1036324 (= e!586139 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124705 c!104811) b!1036322))

(assert (= (and d!124705 (not c!104811)) b!1036323))

(assert (= (and d!124705 (not res!691841)) b!1036324))

(declare-fun m!956475 () Bool)

(assert (=> d!124705 m!956475))

(declare-fun m!956477 () Bool)

(assert (=> b!1036322 m!956477))

(assert (=> b!1036322 m!956335))

(assert (=> b!1036322 m!956335))

(declare-fun m!956479 () Bool)

(assert (=> b!1036322 m!956479))

(assert (=> b!1036324 m!956335))

(assert (=> b!1036324 m!956335))

(assert (=> b!1036324 m!956479))

(assert (=> d!124651 d!124705))

(declare-fun d!124707 () Bool)

(declare-fun c!104812 () Bool)

(assert (=> d!124707 (= c!104812 (and ((_ is Cons!22031) lt!457047) (= (_1!7929 (h!23233 lt!457047)) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586140 () Option!643)

(assert (=> d!124707 (= (getValueByKey!592 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) e!586140)))

(declare-fun b!1036326 () Bool)

(declare-fun e!586141 () Option!643)

(assert (=> b!1036326 (= e!586140 e!586141)))

(declare-fun c!104813 () Bool)

(assert (=> b!1036326 (= c!104813 (and ((_ is Cons!22031) lt!457047) (not (= (_1!7929 (h!23233 lt!457047)) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036328 () Bool)

(assert (=> b!1036328 (= e!586141 None!641)))

(declare-fun b!1036327 () Bool)

(assert (=> b!1036327 (= e!586141 (getValueByKey!592 (t!31249 lt!457047) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036325 () Bool)

(assert (=> b!1036325 (= e!586140 (Some!642 (_2!7929 (h!23233 lt!457047))))))

(assert (= (and d!124707 c!104812) b!1036325))

(assert (= (and d!124707 (not c!104812)) b!1036326))

(assert (= (and b!1036326 c!104813) b!1036327))

(assert (= (and b!1036326 (not c!104813)) b!1036328))

(declare-fun m!956481 () Bool)

(assert (=> b!1036327 m!956481))

(assert (=> d!124651 d!124707))

(declare-fun d!124709 () Bool)

(assert (=> d!124709 (= (getValueByKey!592 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457095 () Unit!33873)

(assert (=> d!124709 (= lt!457095 (choose!1712 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun e!586142 () Bool)

(assert (=> d!124709 e!586142))

(declare-fun res!691842 () Bool)

(assert (=> d!124709 (=> (not res!691842) (not e!586142))))

(assert (=> d!124709 (= res!691842 (isStrictlySorted!715 lt!457047))))

(assert (=> d!124709 (= (lemmaContainsTupThenGetReturnValue!281 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!457095)))

(declare-fun b!1036329 () Bool)

(declare-fun res!691843 () Bool)

(assert (=> b!1036329 (=> (not res!691843) (not e!586142))))

(assert (=> b!1036329 (= res!691843 (containsKey!565 lt!457047 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036330 () Bool)

(assert (=> b!1036330 (= e!586142 (contains!6045 lt!457047 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124709 res!691842) b!1036329))

(assert (= (and b!1036329 res!691843) b!1036330))

(assert (=> d!124709 m!956329))

(declare-fun m!956483 () Bool)

(assert (=> d!124709 m!956483))

(declare-fun m!956485 () Bool)

(assert (=> d!124709 m!956485))

(declare-fun m!956487 () Bool)

(assert (=> b!1036329 m!956487))

(declare-fun m!956489 () Bool)

(assert (=> b!1036330 m!956489))

(assert (=> d!124651 d!124709))

(declare-fun b!1036331 () Bool)

(declare-fun e!586143 () List!22035)

(declare-fun e!586144 () List!22035)

(assert (=> b!1036331 (= e!586143 e!586144)))

(declare-fun c!104817 () Bool)

(assert (=> b!1036331 (= c!104817 (and ((_ is Cons!22031) (toList!6953 lt!456831)) (= (_1!7929 (h!23233 (toList!6953 lt!456831))) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036332 () Bool)

(declare-fun e!586146 () List!22035)

(declare-fun call!43864 () List!22035)

(assert (=> b!1036332 (= e!586146 call!43864)))

(declare-fun call!43863 () List!22035)

(declare-fun e!586147 () List!22035)

(declare-fun bm!43860 () Bool)

(declare-fun c!104814 () Bool)

(assert (=> bm!43860 (= call!43863 ($colon$colon!606 e!586147 (ite c!104814 (h!23233 (toList!6953 lt!456831)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))))

(declare-fun c!104815 () Bool)

(assert (=> bm!43860 (= c!104815 c!104814)))

(declare-fun d!124711 () Bool)

(declare-fun e!586145 () Bool)

(assert (=> d!124711 e!586145))

(declare-fun res!691844 () Bool)

(assert (=> d!124711 (=> (not res!691844) (not e!586145))))

(declare-fun lt!457096 () List!22035)

(assert (=> d!124711 (= res!691844 (isStrictlySorted!715 lt!457096))))

(assert (=> d!124711 (= lt!457096 e!586143)))

(assert (=> d!124711 (= c!104814 (and ((_ is Cons!22031) (toList!6953 lt!456831)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456831))) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!124711 (isStrictlySorted!715 (toList!6953 lt!456831))))

(assert (=> d!124711 (= (insertStrictlySorted!373 (toList!6953 lt!456831) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!457096)))

(declare-fun c!104816 () Bool)

(declare-fun b!1036333 () Bool)

(assert (=> b!1036333 (= c!104816 (and ((_ is Cons!22031) (toList!6953 lt!456831)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456831))) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(assert (=> b!1036333 (= e!586144 e!586146)))

(declare-fun b!1036334 () Bool)

(assert (=> b!1036334 (= e!586147 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456831)) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036335 () Bool)

(declare-fun res!691845 () Bool)

(assert (=> b!1036335 (=> (not res!691845) (not e!586145))))

(assert (=> b!1036335 (= res!691845 (containsKey!565 lt!457096 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036336 () Bool)

(assert (=> b!1036336 (= e!586143 call!43863)))

(declare-fun bm!43861 () Bool)

(declare-fun call!43865 () List!22035)

(assert (=> bm!43861 (= call!43864 call!43865)))

(declare-fun b!1036337 () Bool)

(assert (=> b!1036337 (= e!586145 (contains!6045 lt!457096 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036338 () Bool)

(assert (=> b!1036338 (= e!586146 call!43864)))

(declare-fun bm!43862 () Bool)

(assert (=> bm!43862 (= call!43865 call!43863)))

(declare-fun b!1036339 () Bool)

(assert (=> b!1036339 (= e!586147 (ite c!104817 (t!31249 (toList!6953 lt!456831)) (ite c!104816 (Cons!22031 (h!23233 (toList!6953 lt!456831)) (t!31249 (toList!6953 lt!456831))) Nil!22032)))))

(declare-fun b!1036340 () Bool)

(assert (=> b!1036340 (= e!586144 call!43865)))

(assert (= (and d!124711 c!104814) b!1036336))

(assert (= (and d!124711 (not c!104814)) b!1036331))

(assert (= (and b!1036331 c!104817) b!1036340))

(assert (= (and b!1036331 (not c!104817)) b!1036333))

(assert (= (and b!1036333 c!104816) b!1036338))

(assert (= (and b!1036333 (not c!104816)) b!1036332))

(assert (= (or b!1036338 b!1036332) bm!43861))

(assert (= (or b!1036340 bm!43861) bm!43862))

(assert (= (or b!1036336 bm!43862) bm!43860))

(assert (= (and bm!43860 c!104815) b!1036334))

(assert (= (and bm!43860 (not c!104815)) b!1036339))

(assert (= (and d!124711 res!691844) b!1036335))

(assert (= (and b!1036335 res!691845) b!1036337))

(declare-fun m!956491 () Bool)

(assert (=> b!1036337 m!956491))

(declare-fun m!956493 () Bool)

(assert (=> bm!43860 m!956493))

(declare-fun m!956495 () Bool)

(assert (=> b!1036334 m!956495))

(declare-fun m!956497 () Bool)

(assert (=> b!1036335 m!956497))

(declare-fun m!956499 () Bool)

(assert (=> d!124711 m!956499))

(declare-fun m!956501 () Bool)

(assert (=> d!124711 m!956501))

(assert (=> d!124651 d!124711))

(declare-fun d!124713 () Bool)

(assert (=> d!124713 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30335 () Bool)

(assert (= bs!30335 d!124713))

(assert (=> bs!30335 m!956211))

(declare-fun m!956503 () Bool)

(assert (=> bs!30335 m!956503))

(assert (=> b!1036179 d!124713))

(declare-fun d!124715 () Bool)

(declare-fun c!104818 () Bool)

(assert (=> d!124715 (= c!104818 (and ((_ is Cons!22031) (toList!6953 lt!456848)) (= (_1!7929 (h!23233 (toList!6953 lt!456848))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586148 () Option!643)

(assert (=> d!124715 (= (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000) e!586148)))

(declare-fun b!1036342 () Bool)

(declare-fun e!586149 () Option!643)

(assert (=> b!1036342 (= e!586148 e!586149)))

(declare-fun c!104819 () Bool)

(assert (=> b!1036342 (= c!104819 (and ((_ is Cons!22031) (toList!6953 lt!456848)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456848))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036344 () Bool)

(assert (=> b!1036344 (= e!586149 None!641)))

(declare-fun b!1036343 () Bool)

(assert (=> b!1036343 (= e!586149 (getValueByKey!592 (t!31249 (toList!6953 lt!456848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036341 () Bool)

(assert (=> b!1036341 (= e!586148 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456848)))))))

(assert (= (and d!124715 c!104818) b!1036341))

(assert (= (and d!124715 (not c!104818)) b!1036342))

(assert (= (and b!1036342 c!104819) b!1036343))

(assert (= (and b!1036342 (not c!104819)) b!1036344))

(declare-fun m!956505 () Bool)

(assert (=> b!1036343 m!956505))

(assert (=> b!1036179 d!124715))

(declare-fun d!124717 () Bool)

(assert (=> d!124717 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun lt!457097 () Unit!33873)

(assert (=> d!124717 (= lt!457097 (choose!1711 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!586150 () Bool)

(assert (=> d!124717 e!586150))

(declare-fun res!691846 () Bool)

(assert (=> d!124717 (=> (not res!691846) (not e!586150))))

(assert (=> d!124717 (= res!691846 (isStrictlySorted!715 (toList!6953 lt!456866)))))

(assert (=> d!124717 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457097)))

(declare-fun b!1036345 () Bool)

(assert (=> b!1036345 (= e!586150 (containsKey!565 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124717 res!691846) b!1036345))

(assert (=> d!124717 m!955785))

(assert (=> d!124717 m!956097))

(assert (=> d!124717 m!956097))

(assert (=> d!124717 m!956205))

(assert (=> d!124717 m!955785))

(declare-fun m!956507 () Bool)

(assert (=> d!124717 m!956507))

(assert (=> d!124717 m!956421))

(assert (=> b!1036345 m!955785))

(assert (=> b!1036345 m!956201))

(assert (=> b!1036174 d!124717))

(declare-fun d!124719 () Bool)

(assert (=> d!124719 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun bs!30336 () Bool)

(assert (= bs!30336 d!124719))

(assert (=> bs!30336 m!956097))

(declare-fun m!956509 () Bool)

(assert (=> bs!30336 m!956509))

(assert (=> b!1036174 d!124719))

(declare-fun d!124721 () Bool)

(declare-fun c!104820 () Bool)

(assert (=> d!124721 (= c!104820 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun e!586151 () Option!643)

(assert (=> d!124721 (= (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) e!586151)))

(declare-fun b!1036347 () Bool)

(declare-fun e!586152 () Option!643)

(assert (=> b!1036347 (= e!586151 e!586152)))

(declare-fun c!104821 () Bool)

(assert (=> b!1036347 (= c!104821 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456866))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun b!1036349 () Bool)

(assert (=> b!1036349 (= e!586152 None!641)))

(declare-fun b!1036348 () Bool)

(assert (=> b!1036348 (= e!586152 (getValueByKey!592 (t!31249 (toList!6953 lt!456866)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036346 () Bool)

(assert (=> b!1036346 (= e!586151 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456866)))))))

(assert (= (and d!124721 c!104820) b!1036346))

(assert (= (and d!124721 (not c!104820)) b!1036347))

(assert (= (and b!1036347 c!104821) b!1036348))

(assert (= (and b!1036347 (not c!104821)) b!1036349))

(assert (=> b!1036348 m!955785))

(declare-fun m!956511 () Bool)

(assert (=> b!1036348 m!956511))

(assert (=> b!1036174 d!124721))

(declare-fun d!124723 () Bool)

(assert (=> d!124723 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!456865)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!456865)))))

(assert (=> d!124557 d!124723))

(declare-fun c!104822 () Bool)

(declare-fun d!124725 () Bool)

(assert (=> d!124725 (= c!104822 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))) lt!456865)))))

(declare-fun e!586153 () Option!643)

(assert (=> d!124725 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!456865) e!586153)))

(declare-fun b!1036351 () Bool)

(declare-fun e!586154 () Option!643)

(assert (=> b!1036351 (= e!586153 e!586154)))

(declare-fun c!104823 () Bool)

(assert (=> b!1036351 (= c!104823 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))) lt!456865))))))

(declare-fun b!1036353 () Bool)

(assert (=> b!1036353 (= e!586154 None!641)))

(declare-fun b!1036352 () Bool)

(assert (=> b!1036352 (= e!586154 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))) lt!456865))))

(declare-fun b!1036350 () Bool)

(assert (=> b!1036350 (= e!586153 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))))

(assert (= (and d!124725 c!104822) b!1036350))

(assert (= (and d!124725 (not c!104822)) b!1036351))

(assert (= (and b!1036351 c!104823) b!1036352))

(assert (= (and b!1036351 (not c!104823)) b!1036353))

(declare-fun m!956513 () Bool)

(assert (=> b!1036352 m!956513))

(assert (=> d!124557 d!124725))

(assert (=> d!124661 d!124651))

(assert (=> d!124661 d!124647))

(declare-fun d!124727 () Bool)

(assert (=> d!124727 (= (apply!942 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!456839) (apply!942 lt!456831 lt!456839))))

(assert (=> d!124727 true))

(declare-fun _$34!1170 () Unit!33873)

(assert (=> d!124727 (= (choose!1709 lt!456831 lt!456838 (zeroValue!6104 thiss!1427) lt!456839) _$34!1170)))

(declare-fun bs!30337 () Bool)

(assert (= bs!30337 d!124727))

(assert (=> bs!30337 m!955803))

(assert (=> bs!30337 m!955803))

(assert (=> bs!30337 m!955805))

(assert (=> bs!30337 m!955817))

(assert (=> d!124661 d!124727))

(assert (=> d!124661 d!124663))

(declare-fun d!124729 () Bool)

(declare-fun e!586156 () Bool)

(assert (=> d!124729 e!586156))

(declare-fun res!691847 () Bool)

(assert (=> d!124729 (=> res!691847 e!586156)))

(declare-fun lt!457100 () Bool)

(assert (=> d!124729 (= res!691847 (not lt!457100))))

(declare-fun lt!457099 () Bool)

(assert (=> d!124729 (= lt!457100 lt!457099)))

(declare-fun lt!457101 () Unit!33873)

(declare-fun e!586155 () Unit!33873)

(assert (=> d!124729 (= lt!457101 e!586155)))

(declare-fun c!104824 () Bool)

(assert (=> d!124729 (= c!104824 lt!457099)))

(assert (=> d!124729 (= lt!457099 (containsKey!565 (toList!6953 lt!456831) lt!456839))))

(assert (=> d!124729 (= (contains!6044 lt!456831 lt!456839) lt!457100)))

(declare-fun b!1036354 () Bool)

(declare-fun lt!457098 () Unit!33873)

(assert (=> b!1036354 (= e!586155 lt!457098)))

(assert (=> b!1036354 (= lt!457098 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456831) lt!456839))))

(assert (=> b!1036354 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456831) lt!456839))))

(declare-fun b!1036355 () Bool)

(declare-fun Unit!33891 () Unit!33873)

(assert (=> b!1036355 (= e!586155 Unit!33891)))

(declare-fun b!1036356 () Bool)

(assert (=> b!1036356 (= e!586156 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456831) lt!456839)))))

(assert (= (and d!124729 c!104824) b!1036354))

(assert (= (and d!124729 (not c!104824)) b!1036355))

(assert (= (and d!124729 (not res!691847)) b!1036356))

(declare-fun m!956515 () Bool)

(assert (=> d!124729 m!956515))

(declare-fun m!956517 () Bool)

(assert (=> b!1036354 m!956517))

(assert (=> b!1036354 m!956319))

(assert (=> b!1036354 m!956319))

(declare-fun m!956519 () Bool)

(assert (=> b!1036354 m!956519))

(assert (=> b!1036356 m!956319))

(assert (=> b!1036356 m!956319))

(assert (=> b!1036356 m!956519))

(assert (=> d!124661 d!124729))

(declare-fun d!124731 () Bool)

(assert (=> d!124731 (= (apply!942 lt!457017 lt!457020) (get!16475 (getValueByKey!592 (toList!6953 lt!457017) lt!457020)))))

(declare-fun bs!30338 () Bool)

(assert (= bs!30338 d!124731))

(declare-fun m!956521 () Bool)

(assert (=> bs!30338 m!956521))

(assert (=> bs!30338 m!956521))

(declare-fun m!956523 () Bool)

(assert (=> bs!30338 m!956523))

(assert (=> b!1036196 d!124731))

(declare-fun d!124733 () Bool)

(assert (=> d!124733 (= (apply!942 (+!3065 lt!457019 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) lt!457027) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!457019 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))) lt!457027)))))

(declare-fun bs!30339 () Bool)

(assert (= bs!30339 d!124733))

(declare-fun m!956525 () Bool)

(assert (=> bs!30339 m!956525))

(assert (=> bs!30339 m!956525))

(declare-fun m!956527 () Bool)

(assert (=> bs!30339 m!956527))

(assert (=> b!1036196 d!124733))

(declare-fun d!124735 () Bool)

(assert (=> d!124735 (contains!6044 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) lt!457023)))

(declare-fun lt!457102 () Unit!33873)

(assert (=> d!124735 (= lt!457102 (choose!1710 lt!457033 lt!457030 (zeroValue!6104 lt!456769) lt!457023))))

(assert (=> d!124735 (contains!6044 lt!457033 lt!457023)))

(assert (=> d!124735 (= (addStillContains!630 lt!457033 lt!457030 (zeroValue!6104 lt!456769) lt!457023) lt!457102)))

(declare-fun bs!30340 () Bool)

(assert (= bs!30340 d!124735))

(assert (=> bs!30340 m!956249))

(assert (=> bs!30340 m!956249))

(assert (=> bs!30340 m!956251))

(declare-fun m!956529 () Bool)

(assert (=> bs!30340 m!956529))

(declare-fun m!956531 () Bool)

(assert (=> bs!30340 m!956531))

(assert (=> b!1036196 d!124735))

(declare-fun d!124737 () Bool)

(assert (=> d!124737 (= (apply!942 lt!457015 lt!457024) (get!16475 (getValueByKey!592 (toList!6953 lt!457015) lt!457024)))))

(declare-fun bs!30341 () Bool)

(assert (= bs!30341 d!124737))

(declare-fun m!956533 () Bool)

(assert (=> bs!30341 m!956533))

(assert (=> bs!30341 m!956533))

(declare-fun m!956535 () Bool)

(assert (=> bs!30341 m!956535))

(assert (=> b!1036196 d!124737))

(declare-fun d!124739 () Bool)

(declare-fun e!586157 () Bool)

(assert (=> d!124739 e!586157))

(declare-fun res!691848 () Bool)

(assert (=> d!124739 (=> (not res!691848) (not e!586157))))

(declare-fun lt!457106 () ListLongMap!13875)

(assert (=> d!124739 (= res!691848 (contains!6044 lt!457106 (_1!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))))))

(declare-fun lt!457104 () List!22035)

(assert (=> d!124739 (= lt!457106 (ListLongMap!13876 lt!457104))))

(declare-fun lt!457105 () Unit!33873)

(declare-fun lt!457103 () Unit!33873)

(assert (=> d!124739 (= lt!457105 lt!457103)))

(assert (=> d!124739 (= (getValueByKey!592 lt!457104 (_1!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124739 (= lt!457103 (lemmaContainsTupThenGetReturnValue!281 lt!457104 (_1!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) (_2!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124739 (= lt!457104 (insertStrictlySorted!373 (toList!6953 lt!457019) (_1!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) (_2!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124739 (= (+!3065 lt!457019 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) lt!457106)))

(declare-fun b!1036357 () Bool)

(declare-fun res!691849 () Bool)

(assert (=> b!1036357 (=> (not res!691849) (not e!586157))))

(assert (=> b!1036357 (= res!691849 (= (getValueByKey!592 (toList!6953 lt!457106) (_1!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))))))))

(declare-fun b!1036358 () Bool)

(assert (=> b!1036358 (= e!586157 (contains!6045 (toList!6953 lt!457106) (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))))))

(assert (= (and d!124739 res!691848) b!1036357))

(assert (= (and b!1036357 res!691849) b!1036358))

(declare-fun m!956537 () Bool)

(assert (=> d!124739 m!956537))

(declare-fun m!956539 () Bool)

(assert (=> d!124739 m!956539))

(declare-fun m!956541 () Bool)

(assert (=> d!124739 m!956541))

(declare-fun m!956543 () Bool)

(assert (=> d!124739 m!956543))

(declare-fun m!956545 () Bool)

(assert (=> b!1036357 m!956545))

(declare-fun m!956547 () Bool)

(assert (=> b!1036358 m!956547))

(assert (=> b!1036196 d!124739))

(declare-fun d!124741 () Bool)

(assert (=> d!124741 (= (apply!942 (+!3065 lt!457017 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) lt!457020) (apply!942 lt!457017 lt!457020))))

(declare-fun lt!457107 () Unit!33873)

(assert (=> d!124741 (= lt!457107 (choose!1709 lt!457017 lt!457025 (minValue!6106 lt!456769) lt!457020))))

(declare-fun e!586158 () Bool)

(assert (=> d!124741 e!586158))

(declare-fun res!691850 () Bool)

(assert (=> d!124741 (=> (not res!691850) (not e!586158))))

(assert (=> d!124741 (= res!691850 (contains!6044 lt!457017 lt!457020))))

(assert (=> d!124741 (= (addApplyDifferent!482 lt!457017 lt!457025 (minValue!6106 lt!456769) lt!457020) lt!457107)))

(declare-fun b!1036359 () Bool)

(assert (=> b!1036359 (= e!586158 (not (= lt!457020 lt!457025)))))

(assert (= (and d!124741 res!691850) b!1036359))

(declare-fun m!956549 () Bool)

(assert (=> d!124741 m!956549))

(assert (=> d!124741 m!956253))

(assert (=> d!124741 m!956255))

(assert (=> d!124741 m!956255))

(assert (=> d!124741 m!956273))

(declare-fun m!956551 () Bool)

(assert (=> d!124741 m!956551))

(assert (=> b!1036196 d!124741))

(declare-fun d!124743 () Bool)

(declare-fun e!586160 () Bool)

(assert (=> d!124743 e!586160))

(declare-fun res!691851 () Bool)

(assert (=> d!124743 (=> res!691851 e!586160)))

(declare-fun lt!457110 () Bool)

(assert (=> d!124743 (= res!691851 (not lt!457110))))

(declare-fun lt!457109 () Bool)

(assert (=> d!124743 (= lt!457110 lt!457109)))

(declare-fun lt!457111 () Unit!33873)

(declare-fun e!586159 () Unit!33873)

(assert (=> d!124743 (= lt!457111 e!586159)))

(declare-fun c!104825 () Bool)

(assert (=> d!124743 (= c!104825 lt!457109)))

(assert (=> d!124743 (= lt!457109 (containsKey!565 (toList!6953 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) lt!457023))))

(assert (=> d!124743 (= (contains!6044 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) lt!457023) lt!457110)))

(declare-fun b!1036360 () Bool)

(declare-fun lt!457108 () Unit!33873)

(assert (=> b!1036360 (= e!586159 lt!457108)))

(assert (=> b!1036360 (= lt!457108 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) lt!457023))))

(assert (=> b!1036360 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) lt!457023))))

(declare-fun b!1036361 () Bool)

(declare-fun Unit!33892 () Unit!33873)

(assert (=> b!1036361 (= e!586159 Unit!33892)))

(declare-fun b!1036362 () Bool)

(assert (=> b!1036362 (= e!586160 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) lt!457023)))))

(assert (= (and d!124743 c!104825) b!1036360))

(assert (= (and d!124743 (not c!104825)) b!1036361))

(assert (= (and d!124743 (not res!691851)) b!1036362))

(declare-fun m!956553 () Bool)

(assert (=> d!124743 m!956553))

(declare-fun m!956555 () Bool)

(assert (=> b!1036360 m!956555))

(declare-fun m!956557 () Bool)

(assert (=> b!1036360 m!956557))

(assert (=> b!1036360 m!956557))

(declare-fun m!956559 () Bool)

(assert (=> b!1036360 m!956559))

(assert (=> b!1036362 m!956557))

(assert (=> b!1036362 m!956557))

(assert (=> b!1036362 m!956559))

(assert (=> b!1036196 d!124743))

(declare-fun d!124745 () Bool)

(assert (=> d!124745 (= (apply!942 (+!3065 lt!457015 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) lt!457024) (apply!942 lt!457015 lt!457024))))

(declare-fun lt!457112 () Unit!33873)

(assert (=> d!124745 (= lt!457112 (choose!1709 lt!457015 lt!457031 (minValue!6106 lt!456769) lt!457024))))

(declare-fun e!586161 () Bool)

(assert (=> d!124745 e!586161))

(declare-fun res!691852 () Bool)

(assert (=> d!124745 (=> (not res!691852) (not e!586161))))

(assert (=> d!124745 (= res!691852 (contains!6044 lt!457015 lt!457024))))

(assert (=> d!124745 (= (addApplyDifferent!482 lt!457015 lt!457031 (minValue!6106 lt!456769) lt!457024) lt!457112)))

(declare-fun b!1036363 () Bool)

(assert (=> b!1036363 (= e!586161 (not (= lt!457024 lt!457031)))))

(assert (= (and d!124745 res!691852) b!1036363))

(declare-fun m!956561 () Bool)

(assert (=> d!124745 m!956561))

(assert (=> d!124745 m!956267))

(assert (=> d!124745 m!956269))

(assert (=> d!124745 m!956269))

(assert (=> d!124745 m!956271))

(declare-fun m!956563 () Bool)

(assert (=> d!124745 m!956563))

(assert (=> b!1036196 d!124745))

(declare-fun d!124747 () Bool)

(assert (=> d!124747 (= (apply!942 (+!3065 lt!457019 (tuple2!15839 lt!457026 (zeroValue!6104 lt!456769))) lt!457027) (apply!942 lt!457019 lt!457027))))

(declare-fun lt!457113 () Unit!33873)

(assert (=> d!124747 (= lt!457113 (choose!1709 lt!457019 lt!457026 (zeroValue!6104 lt!456769) lt!457027))))

(declare-fun e!586162 () Bool)

(assert (=> d!124747 e!586162))

(declare-fun res!691853 () Bool)

(assert (=> d!124747 (=> (not res!691853) (not e!586162))))

(assert (=> d!124747 (= res!691853 (contains!6044 lt!457019 lt!457027))))

(assert (=> d!124747 (= (addApplyDifferent!482 lt!457019 lt!457026 (zeroValue!6104 lt!456769) lt!457027) lt!457113)))

(declare-fun b!1036364 () Bool)

(assert (=> b!1036364 (= e!586162 (not (= lt!457027 lt!457026)))))

(assert (= (and d!124747 res!691853) b!1036364))

(declare-fun m!956565 () Bool)

(assert (=> d!124747 m!956565))

(assert (=> d!124747 m!956257))

(assert (=> d!124747 m!956243))

(assert (=> d!124747 m!956243))

(assert (=> d!124747 m!956245))

(declare-fun m!956567 () Bool)

(assert (=> d!124747 m!956567))

(assert (=> b!1036196 d!124747))

(declare-fun d!124749 () Bool)

(assert (=> d!124749 (= (apply!942 (+!3065 lt!457015 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) lt!457024) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!457015 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))) lt!457024)))))

(declare-fun bs!30342 () Bool)

(assert (= bs!30342 d!124749))

(declare-fun m!956569 () Bool)

(assert (=> bs!30342 m!956569))

(assert (=> bs!30342 m!956569))

(declare-fun m!956571 () Bool)

(assert (=> bs!30342 m!956571))

(assert (=> b!1036196 d!124749))

(declare-fun d!124751 () Bool)

(declare-fun e!586163 () Bool)

(assert (=> d!124751 e!586163))

(declare-fun res!691854 () Bool)

(assert (=> d!124751 (=> (not res!691854) (not e!586163))))

(declare-fun lt!457117 () ListLongMap!13875)

(assert (=> d!124751 (= res!691854 (contains!6044 lt!457117 (_1!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))))))

(declare-fun lt!457115 () List!22035)

(assert (=> d!124751 (= lt!457117 (ListLongMap!13876 lt!457115))))

(declare-fun lt!457116 () Unit!33873)

(declare-fun lt!457114 () Unit!33873)

(assert (=> d!124751 (= lt!457116 lt!457114)))

(assert (=> d!124751 (= (getValueByKey!592 lt!457115 (_1!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124751 (= lt!457114 (lemmaContainsTupThenGetReturnValue!281 lt!457115 (_1!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) (_2!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124751 (= lt!457115 (insertStrictlySorted!373 (toList!6953 lt!457033) (_1!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) (_2!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))))))

(assert (=> d!124751 (= (+!3065 lt!457033 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))) lt!457117)))

(declare-fun b!1036365 () Bool)

(declare-fun res!691855 () Bool)

(assert (=> b!1036365 (=> (not res!691855) (not e!586163))))

(assert (=> b!1036365 (= res!691855 (= (getValueByKey!592 (toList!6953 lt!457117) (_1!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))))))))

(declare-fun b!1036366 () Bool)

(assert (=> b!1036366 (= e!586163 (contains!6045 (toList!6953 lt!457117) (tuple2!15839 lt!457030 (zeroValue!6104 lt!456769))))))

(assert (= (and d!124751 res!691854) b!1036365))

(assert (= (and b!1036365 res!691855) b!1036366))

(declare-fun m!956573 () Bool)

(assert (=> d!124751 m!956573))

(declare-fun m!956575 () Bool)

(assert (=> d!124751 m!956575))

(declare-fun m!956577 () Bool)

(assert (=> d!124751 m!956577))

(declare-fun m!956579 () Bool)

(assert (=> d!124751 m!956579))

(declare-fun m!956581 () Bool)

(assert (=> b!1036365 m!956581))

(declare-fun m!956583 () Bool)

(assert (=> b!1036366 m!956583))

(assert (=> b!1036196 d!124751))

(declare-fun d!124753 () Bool)

(assert (=> d!124753 (= (apply!942 lt!457019 lt!457027) (get!16475 (getValueByKey!592 (toList!6953 lt!457019) lt!457027)))))

(declare-fun bs!30343 () Bool)

(assert (= bs!30343 d!124753))

(declare-fun m!956585 () Bool)

(assert (=> bs!30343 m!956585))

(assert (=> bs!30343 m!956585))

(declare-fun m!956587 () Bool)

(assert (=> bs!30343 m!956587))

(assert (=> b!1036196 d!124753))

(declare-fun b!1036367 () Bool)

(declare-fun e!586165 () Bool)

(declare-fun lt!457120 () ListLongMap!13875)

(assert (=> b!1036367 (= e!586165 (= lt!457120 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 lt!456769))))))

(declare-fun d!124755 () Bool)

(declare-fun e!586169 () Bool)

(assert (=> d!124755 e!586169))

(declare-fun res!691857 () Bool)

(assert (=> d!124755 (=> (not res!691857) (not e!586169))))

(assert (=> d!124755 (= res!691857 (not (contains!6044 lt!457120 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586168 () ListLongMap!13875)

(assert (=> d!124755 (= lt!457120 e!586168)))

(declare-fun c!104828 () Bool)

(assert (=> d!124755 (= c!104828 (bvsge #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124755 (validMask!0 (mask!30166 lt!456769))))

(assert (=> d!124755 (= (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) #b00000000000000000000000000000000 (defaultEntry!6270 lt!456769)) lt!457120)))

(declare-fun b!1036368 () Bool)

(declare-fun e!586166 () Bool)

(assert (=> b!1036368 (= e!586169 e!586166)))

(declare-fun c!104826 () Bool)

(declare-fun e!586170 () Bool)

(assert (=> b!1036368 (= c!104826 e!586170)))

(declare-fun res!691859 () Bool)

(assert (=> b!1036368 (=> (not res!691859) (not e!586170))))

(assert (=> b!1036368 (= res!691859 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun b!1036369 () Bool)

(assert (=> b!1036369 (= e!586166 e!586165)))

(declare-fun c!104827 () Bool)

(assert (=> b!1036369 (= c!104827 (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun b!1036370 () Bool)

(assert (=> b!1036370 (= e!586170 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (=> b!1036370 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1036371 () Bool)

(assert (=> b!1036371 (= e!586165 (isEmpty!932 lt!457120))))

(declare-fun b!1036372 () Bool)

(assert (=> b!1036372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(assert (=> b!1036372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31949 (_values!6293 lt!456769))))))

(declare-fun e!586167 () Bool)

(assert (=> b!1036372 (= e!586167 (= (apply!942 lt!457120 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) (get!16474 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036373 () Bool)

(assert (=> b!1036373 (= e!586168 (ListLongMap!13876 Nil!22032))))

(declare-fun b!1036374 () Bool)

(declare-fun e!586164 () ListLongMap!13875)

(declare-fun call!43866 () ListLongMap!13875)

(assert (=> b!1036374 (= e!586164 call!43866)))

(declare-fun b!1036375 () Bool)

(declare-fun lt!457121 () Unit!33873)

(declare-fun lt!457118 () Unit!33873)

(assert (=> b!1036375 (= lt!457121 lt!457118)))

(declare-fun lt!457123 () (_ BitVec 64))

(declare-fun lt!457124 () (_ BitVec 64))

(declare-fun lt!457119 () V!37669)

(declare-fun lt!457122 () ListLongMap!13875)

(assert (=> b!1036375 (not (contains!6044 (+!3065 lt!457122 (tuple2!15839 lt!457123 lt!457119)) lt!457124))))

(assert (=> b!1036375 (= lt!457118 (addStillNotContains!245 lt!457122 lt!457123 lt!457119 lt!457124))))

(assert (=> b!1036375 (= lt!457124 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1036375 (= lt!457119 (get!16474 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036375 (= lt!457123 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))

(assert (=> b!1036375 (= lt!457122 call!43866)))

(assert (=> b!1036375 (= e!586164 (+!3065 call!43866 (tuple2!15839 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!43863 () Bool)

(assert (=> bm!43863 (= call!43866 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 lt!456769) (_values!6293 lt!456769) (mask!30166 lt!456769) (extraKeys!6000 lt!456769) (zeroValue!6104 lt!456769) (minValue!6106 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 lt!456769)))))

(declare-fun b!1036376 () Bool)

(declare-fun res!691858 () Bool)

(assert (=> b!1036376 (=> (not res!691858) (not e!586169))))

(assert (=> b!1036376 (= res!691858 (not (contains!6044 lt!457120 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036377 () Bool)

(assert (=> b!1036377 (= e!586168 e!586164)))

(declare-fun c!104829 () Bool)

(assert (=> b!1036377 (= c!104829 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036378 () Bool)

(assert (=> b!1036378 (= e!586166 e!586167)))

(assert (=> b!1036378 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31948 (_keys!11456 lt!456769))))))

(declare-fun res!691856 () Bool)

(assert (=> b!1036378 (= res!691856 (contains!6044 lt!457120 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (=> b!1036378 (=> (not res!691856) (not e!586167))))

(assert (= (and d!124755 c!104828) b!1036373))

(assert (= (and d!124755 (not c!104828)) b!1036377))

(assert (= (and b!1036377 c!104829) b!1036375))

(assert (= (and b!1036377 (not c!104829)) b!1036374))

(assert (= (or b!1036375 b!1036374) bm!43863))

(assert (= (and d!124755 res!691857) b!1036376))

(assert (= (and b!1036376 res!691858) b!1036368))

(assert (= (and b!1036368 res!691859) b!1036370))

(assert (= (and b!1036368 c!104826) b!1036378))

(assert (= (and b!1036368 (not c!104826)) b!1036369))

(assert (= (and b!1036378 res!691856) b!1036372))

(assert (= (and b!1036369 c!104827) b!1036367))

(assert (= (and b!1036369 (not c!104827)) b!1036371))

(declare-fun b_lambda!16169 () Bool)

(assert (=> (not b_lambda!16169) (not b!1036372)))

(assert (=> b!1036372 t!31256))

(declare-fun b_and!33423 () Bool)

(assert (= b_and!33421 (and (=> t!31256 result!14439) b_and!33423)))

(declare-fun b_lambda!16171 () Bool)

(assert (=> (not b_lambda!16171) (not b!1036375)))

(assert (=> b!1036375 t!31256))

(declare-fun b_and!33425 () Bool)

(assert (= b_and!33423 (and (=> t!31256 result!14439) b_and!33425)))

(declare-fun m!956589 () Bool)

(assert (=> bm!43863 m!956589))

(declare-fun m!956591 () Bool)

(assert (=> b!1036376 m!956591))

(assert (=> b!1036378 m!956101))

(assert (=> b!1036378 m!956101))

(declare-fun m!956593 () Bool)

(assert (=> b!1036378 m!956593))

(assert (=> b!1036372 m!956231))

(assert (=> b!1036372 m!956231))

(assert (=> b!1036372 m!956233))

(assert (=> b!1036372 m!956237))

(assert (=> b!1036372 m!956233))

(assert (=> b!1036372 m!956101))

(declare-fun m!956595 () Bool)

(assert (=> b!1036372 m!956595))

(assert (=> b!1036372 m!956101))

(assert (=> b!1036370 m!956101))

(assert (=> b!1036370 m!956101))

(assert (=> b!1036370 m!956109))

(assert (=> b!1036367 m!956589))

(assert (=> b!1036377 m!956101))

(assert (=> b!1036377 m!956101))

(assert (=> b!1036377 m!956109))

(declare-fun m!956597 () Bool)

(assert (=> d!124755 m!956597))

(assert (=> d!124755 m!956021))

(assert (=> b!1036375 m!956231))

(assert (=> b!1036375 m!956231))

(assert (=> b!1036375 m!956233))

(assert (=> b!1036375 m!956237))

(declare-fun m!956599 () Bool)

(assert (=> b!1036375 m!956599))

(assert (=> b!1036375 m!956101))

(declare-fun m!956601 () Bool)

(assert (=> b!1036375 m!956601))

(declare-fun m!956603 () Bool)

(assert (=> b!1036375 m!956603))

(assert (=> b!1036375 m!956233))

(assert (=> b!1036375 m!956601))

(declare-fun m!956605 () Bool)

(assert (=> b!1036375 m!956605))

(declare-fun m!956607 () Bool)

(assert (=> b!1036371 m!956607))

(assert (=> b!1036196 d!124755))

(declare-fun d!124757 () Bool)

(declare-fun e!586171 () Bool)

(assert (=> d!124757 e!586171))

(declare-fun res!691860 () Bool)

(assert (=> d!124757 (=> (not res!691860) (not e!586171))))

(declare-fun lt!457128 () ListLongMap!13875)

(assert (=> d!124757 (= res!691860 (contains!6044 lt!457128 (_1!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))))))

(declare-fun lt!457126 () List!22035)

(assert (=> d!124757 (= lt!457128 (ListLongMap!13876 lt!457126))))

(declare-fun lt!457127 () Unit!33873)

(declare-fun lt!457125 () Unit!33873)

(assert (=> d!124757 (= lt!457127 lt!457125)))

(assert (=> d!124757 (= (getValueByKey!592 lt!457126 (_1!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))))))

(assert (=> d!124757 (= lt!457125 (lemmaContainsTupThenGetReturnValue!281 lt!457126 (_1!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))))))

(assert (=> d!124757 (= lt!457126 (insertStrictlySorted!373 (toList!6953 lt!457015) (_1!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))))))

(assert (=> d!124757 (= (+!3065 lt!457015 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))) lt!457128)))

(declare-fun b!1036379 () Bool)

(declare-fun res!691861 () Bool)

(assert (=> b!1036379 (=> (not res!691861) (not e!586171))))

(assert (=> b!1036379 (= res!691861 (= (getValueByKey!592 (toList!6953 lt!457128) (_1!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457031 (minValue!6106 lt!456769))))))))

(declare-fun b!1036380 () Bool)

(assert (=> b!1036380 (= e!586171 (contains!6045 (toList!6953 lt!457128) (tuple2!15839 lt!457031 (minValue!6106 lt!456769))))))

(assert (= (and d!124757 res!691860) b!1036379))

(assert (= (and b!1036379 res!691861) b!1036380))

(declare-fun m!956609 () Bool)

(assert (=> d!124757 m!956609))

(declare-fun m!956611 () Bool)

(assert (=> d!124757 m!956611))

(declare-fun m!956613 () Bool)

(assert (=> d!124757 m!956613))

(declare-fun m!956615 () Bool)

(assert (=> d!124757 m!956615))

(declare-fun m!956617 () Bool)

(assert (=> b!1036379 m!956617))

(declare-fun m!956619 () Bool)

(assert (=> b!1036380 m!956619))

(assert (=> b!1036196 d!124757))

(declare-fun d!124759 () Bool)

(declare-fun e!586172 () Bool)

(assert (=> d!124759 e!586172))

(declare-fun res!691862 () Bool)

(assert (=> d!124759 (=> (not res!691862) (not e!586172))))

(declare-fun lt!457132 () ListLongMap!13875)

(assert (=> d!124759 (= res!691862 (contains!6044 lt!457132 (_1!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))))))

(declare-fun lt!457130 () List!22035)

(assert (=> d!124759 (= lt!457132 (ListLongMap!13876 lt!457130))))

(declare-fun lt!457131 () Unit!33873)

(declare-fun lt!457129 () Unit!33873)

(assert (=> d!124759 (= lt!457131 lt!457129)))

(assert (=> d!124759 (= (getValueByKey!592 lt!457130 (_1!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))))))

(assert (=> d!124759 (= lt!457129 (lemmaContainsTupThenGetReturnValue!281 lt!457130 (_1!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))))))

(assert (=> d!124759 (= lt!457130 (insertStrictlySorted!373 (toList!6953 lt!457017) (_1!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))))))

(assert (=> d!124759 (= (+!3065 lt!457017 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) lt!457132)))

(declare-fun b!1036381 () Bool)

(declare-fun res!691863 () Bool)

(assert (=> b!1036381 (=> (not res!691863) (not e!586172))))

(assert (=> b!1036381 (= res!691863 (= (getValueByKey!592 (toList!6953 lt!457132) (_1!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))))))))

(declare-fun b!1036382 () Bool)

(assert (=> b!1036382 (= e!586172 (contains!6045 (toList!6953 lt!457132) (tuple2!15839 lt!457025 (minValue!6106 lt!456769))))))

(assert (= (and d!124759 res!691862) b!1036381))

(assert (= (and b!1036381 res!691863) b!1036382))

(declare-fun m!956621 () Bool)

(assert (=> d!124759 m!956621))

(declare-fun m!956623 () Bool)

(assert (=> d!124759 m!956623))

(declare-fun m!956625 () Bool)

(assert (=> d!124759 m!956625))

(declare-fun m!956627 () Bool)

(assert (=> d!124759 m!956627))

(declare-fun m!956629 () Bool)

(assert (=> b!1036381 m!956629))

(declare-fun m!956631 () Bool)

(assert (=> b!1036382 m!956631))

(assert (=> b!1036196 d!124759))

(declare-fun d!124761 () Bool)

(assert (=> d!124761 (= (apply!942 (+!3065 lt!457017 (tuple2!15839 lt!457025 (minValue!6106 lt!456769))) lt!457020) (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!457017 (tuple2!15839 lt!457025 (minValue!6106 lt!456769)))) lt!457020)))))

(declare-fun bs!30344 () Bool)

(assert (= bs!30344 d!124761))

(declare-fun m!956633 () Bool)

(assert (=> bs!30344 m!956633))

(assert (=> bs!30344 m!956633))

(declare-fun m!956635 () Bool)

(assert (=> bs!30344 m!956635))

(assert (=> b!1036196 d!124761))

(assert (=> b!1036119 d!124573))

(declare-fun lt!457133 () Bool)

(declare-fun d!124763 () Bool)

(assert (=> d!124763 (= lt!457133 (select (content!518 (toList!6953 lt!457058)) (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))

(declare-fun e!586174 () Bool)

(assert (=> d!124763 (= lt!457133 e!586174)))

(declare-fun res!691864 () Bool)

(assert (=> d!124763 (=> (not res!691864) (not e!586174))))

(assert (=> d!124763 (= res!691864 ((_ is Cons!22031) (toList!6953 lt!457058)))))

(assert (=> d!124763 (= (contains!6045 (toList!6953 lt!457058) (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) lt!457133)))

(declare-fun b!1036383 () Bool)

(declare-fun e!586173 () Bool)

(assert (=> b!1036383 (= e!586174 e!586173)))

(declare-fun res!691865 () Bool)

(assert (=> b!1036383 (=> res!691865 e!586173)))

(assert (=> b!1036383 (= res!691865 (= (h!23233 (toList!6953 lt!457058)) (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))

(declare-fun b!1036384 () Bool)

(assert (=> b!1036384 (= e!586173 (contains!6045 (t!31249 (toList!6953 lt!457058)) (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))

(assert (= (and d!124763 res!691864) b!1036383))

(assert (= (and b!1036383 (not res!691865)) b!1036384))

(declare-fun m!956637 () Bool)

(assert (=> d!124763 m!956637))

(declare-fun m!956639 () Bool)

(assert (=> d!124763 m!956639))

(declare-fun m!956641 () Bool)

(assert (=> b!1036384 m!956641))

(assert (=> b!1036218 d!124763))

(declare-fun d!124765 () Bool)

(assert (=> d!124765 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456857) lt!456865)) (v!14932 (getValueByKey!592 (toList!6953 lt!456857) lt!456865)))))

(assert (=> d!124565 d!124765))

(declare-fun d!124767 () Bool)

(declare-fun c!104830 () Bool)

(assert (=> d!124767 (= c!104830 (and ((_ is Cons!22031) (toList!6953 lt!456857)) (= (_1!7929 (h!23233 (toList!6953 lt!456857))) lt!456865)))))

(declare-fun e!586175 () Option!643)

(assert (=> d!124767 (= (getValueByKey!592 (toList!6953 lt!456857) lt!456865) e!586175)))

(declare-fun b!1036386 () Bool)

(declare-fun e!586176 () Option!643)

(assert (=> b!1036386 (= e!586175 e!586176)))

(declare-fun c!104831 () Bool)

(assert (=> b!1036386 (= c!104831 (and ((_ is Cons!22031) (toList!6953 lt!456857)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456857))) lt!456865))))))

(declare-fun b!1036388 () Bool)

(assert (=> b!1036388 (= e!586176 None!641)))

(declare-fun b!1036387 () Bool)

(assert (=> b!1036387 (= e!586176 (getValueByKey!592 (t!31249 (toList!6953 lt!456857)) lt!456865))))

(declare-fun b!1036385 () Bool)

(assert (=> b!1036385 (= e!586175 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456857)))))))

(assert (= (and d!124767 c!104830) b!1036385))

(assert (= (and d!124767 (not c!104830)) b!1036386))

(assert (= (and b!1036386 c!104831) b!1036387))

(assert (= (and b!1036386 (not c!104831)) b!1036388))

(declare-fun m!956643 () Bool)

(assert (=> b!1036387 m!956643))

(assert (=> d!124565 d!124767))

(declare-fun d!124769 () Bool)

(assert (=> d!124769 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(declare-fun lt!457134 () Unit!33873)

(assert (=> d!124769 (= lt!457134 (choose!1711 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(declare-fun e!586177 () Bool)

(assert (=> d!124769 e!586177))

(declare-fun res!691866 () Bool)

(assert (=> d!124769 (=> (not res!691866) (not e!586177))))

(assert (=> d!124769 (= res!691866 (isStrictlySorted!715 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!124769 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835) lt!457134)))

(declare-fun b!1036389 () Bool)

(assert (=> b!1036389 (= e!586177 (containsKey!565 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))

(assert (= (and d!124769 res!691866) b!1036389))

(assert (=> d!124769 m!956347))

(assert (=> d!124769 m!956347))

(assert (=> d!124769 m!956349))

(declare-fun m!956645 () Bool)

(assert (=> d!124769 m!956645))

(declare-fun m!956647 () Bool)

(assert (=> d!124769 m!956647))

(assert (=> b!1036389 m!956343))

(assert (=> b!1036214 d!124769))

(declare-fun d!124771 () Bool)

(assert (=> d!124771 (= (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835))))))

(declare-fun bs!30345 () Bool)

(assert (= bs!30345 d!124771))

(assert (=> bs!30345 m!956347))

(declare-fun m!956649 () Bool)

(assert (=> bs!30345 m!956649))

(assert (=> b!1036214 d!124771))

(declare-fun d!124773 () Bool)

(declare-fun c!104832 () Bool)

(assert (=> d!124773 (= c!104832 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) lt!456835)))))

(declare-fun e!586178 () Option!643)

(assert (=> d!124773 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835) e!586178)))

(declare-fun b!1036391 () Bool)

(declare-fun e!586179 () Option!643)

(assert (=> b!1036391 (= e!586178 e!586179)))

(declare-fun c!104833 () Bool)

(assert (=> b!1036391 (= c!104833 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) lt!456835))))))

(declare-fun b!1036393 () Bool)

(assert (=> b!1036393 (= e!586179 None!641)))

(declare-fun b!1036392 () Bool)

(assert (=> b!1036392 (= e!586179 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) lt!456835))))

(declare-fun b!1036390 () Bool)

(assert (=> b!1036390 (= e!586178 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))))

(assert (= (and d!124773 c!104832) b!1036390))

(assert (= (and d!124773 (not c!104832)) b!1036391))

(assert (= (and b!1036391 c!104833) b!1036392))

(assert (= (and b!1036391 (not c!104833)) b!1036393))

(declare-fun m!956651 () Bool)

(assert (=> b!1036392 m!956651))

(assert (=> b!1036214 d!124773))

(assert (=> d!124621 d!124587))

(declare-fun d!124775 () Bool)

(declare-fun res!691867 () Bool)

(declare-fun e!586180 () Bool)

(assert (=> d!124775 (=> res!691867 e!586180)))

(assert (=> d!124775 (= res!691867 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124775 (= (containsKey!565 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) e!586180)))

(declare-fun b!1036394 () Bool)

(declare-fun e!586181 () Bool)

(assert (=> b!1036394 (= e!586180 e!586181)))

(declare-fun res!691868 () Bool)

(assert (=> b!1036394 (=> (not res!691868) (not e!586181))))

(assert (=> b!1036394 (= res!691868 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456840))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456840))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) ((_ is Cons!22031) (toList!6953 lt!456840)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456840))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun b!1036395 () Bool)

(assert (=> b!1036395 (= e!586181 (containsKey!565 (t!31249 (toList!6953 lt!456840)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124775 (not res!691867)) b!1036394))

(assert (= (and b!1036394 res!691868) b!1036395))

(assert (=> b!1036395 m!955785))

(declare-fun m!956653 () Bool)

(assert (=> b!1036395 m!956653))

(assert (=> d!124595 d!124775))

(declare-fun d!124777 () Bool)

(declare-fun c!104834 () Bool)

(assert (=> d!124777 (= c!104834 (and ((_ is Cons!22031) (toList!6953 lt!456965)) (= (_1!7929 (h!23233 (toList!6953 lt!456965))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun e!586182 () Option!643)

(assert (=> d!124777 (= (getValueByKey!592 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) e!586182)))

(declare-fun b!1036397 () Bool)

(declare-fun e!586183 () Option!643)

(assert (=> b!1036397 (= e!586182 e!586183)))

(declare-fun c!104835 () Bool)

(assert (=> b!1036397 (= c!104835 (and ((_ is Cons!22031) (toList!6953 lt!456965)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456965))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))))

(declare-fun b!1036399 () Bool)

(assert (=> b!1036399 (= e!586183 None!641)))

(declare-fun b!1036398 () Bool)

(assert (=> b!1036398 (= e!586183 (getValueByKey!592 (t!31249 (toList!6953 lt!456965)) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036396 () Bool)

(assert (=> b!1036396 (= e!586182 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456965)))))))

(assert (= (and d!124777 c!104834) b!1036396))

(assert (= (and d!124777 (not c!104834)) b!1036397))

(assert (= (and b!1036397 c!104835) b!1036398))

(assert (= (and b!1036397 (not c!104835)) b!1036399))

(declare-fun m!956655 () Bool)

(assert (=> b!1036398 m!956655))

(assert (=> b!1036122 d!124777))

(assert (=> bm!43829 d!124665))

(declare-fun d!124779 () Bool)

(declare-fun e!586185 () Bool)

(assert (=> d!124779 e!586185))

(declare-fun res!691869 () Bool)

(assert (=> d!124779 (=> res!691869 e!586185)))

(declare-fun lt!457137 () Bool)

(assert (=> d!124779 (= res!691869 (not lt!457137))))

(declare-fun lt!457136 () Bool)

(assert (=> d!124779 (= lt!457137 lt!457136)))

(declare-fun lt!457138 () Unit!33873)

(declare-fun e!586184 () Unit!33873)

(assert (=> d!124779 (= lt!457138 e!586184)))

(declare-fun c!104836 () Bool)

(assert (=> d!124779 (= c!104836 lt!457136)))

(assert (=> d!124779 (= lt!457136 (containsKey!565 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(assert (=> d!124779 (= (contains!6044 lt!457045 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!457137)))

(declare-fun b!1036400 () Bool)

(declare-fun lt!457135 () Unit!33873)

(assert (=> b!1036400 (= e!586184 lt!457135)))

(assert (=> b!1036400 (= lt!457135 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(assert (=> b!1036400 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036401 () Bool)

(declare-fun Unit!33893 () Unit!33873)

(assert (=> b!1036401 (= e!586184 Unit!33893)))

(declare-fun b!1036402 () Bool)

(assert (=> b!1036402 (= e!586185 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457045) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(assert (= (and d!124779 c!104836) b!1036400))

(assert (= (and d!124779 (not c!104836)) b!1036401))

(assert (= (and d!124779 (not res!691869)) b!1036402))

(declare-fun m!956657 () Bool)

(assert (=> d!124779 m!956657))

(declare-fun m!956659 () Bool)

(assert (=> b!1036400 m!956659))

(assert (=> b!1036400 m!956315))

(assert (=> b!1036400 m!956315))

(declare-fun m!956661 () Bool)

(assert (=> b!1036400 m!956661))

(assert (=> b!1036402 m!956315))

(assert (=> b!1036402 m!956315))

(assert (=> b!1036402 m!956661))

(assert (=> d!124645 d!124779))

(declare-fun c!104837 () Bool)

(declare-fun d!124781 () Bool)

(assert (=> d!124781 (= c!104837 (and ((_ is Cons!22031) lt!457043) (= (_1!7929 (h!23233 lt!457043)) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(declare-fun e!586186 () Option!643)

(assert (=> d!124781 (= (getValueByKey!592 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) e!586186)))

(declare-fun b!1036404 () Bool)

(declare-fun e!586187 () Option!643)

(assert (=> b!1036404 (= e!586186 e!586187)))

(declare-fun c!104838 () Bool)

(assert (=> b!1036404 (= c!104838 (and ((_ is Cons!22031) lt!457043) (not (= (_1!7929 (h!23233 lt!457043)) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036406 () Bool)

(assert (=> b!1036406 (= e!586187 None!641)))

(declare-fun b!1036405 () Bool)

(assert (=> b!1036405 (= e!586187 (getValueByKey!592 (t!31249 lt!457043) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036403 () Bool)

(assert (=> b!1036403 (= e!586186 (Some!642 (_2!7929 (h!23233 lt!457043))))))

(assert (= (and d!124781 c!104837) b!1036403))

(assert (= (and d!124781 (not c!104837)) b!1036404))

(assert (= (and b!1036404 c!104838) b!1036405))

(assert (= (and b!1036404 (not c!104838)) b!1036406))

(declare-fun m!956663 () Bool)

(assert (=> b!1036405 m!956663))

(assert (=> d!124645 d!124781))

(declare-fun d!124783 () Bool)

(assert (=> d!124783 (= (getValueByKey!592 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun lt!457139 () Unit!33873)

(assert (=> d!124783 (= lt!457139 (choose!1712 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun e!586188 () Bool)

(assert (=> d!124783 e!586188))

(declare-fun res!691870 () Bool)

(assert (=> d!124783 (=> (not res!691870) (not e!586188))))

(assert (=> d!124783 (= res!691870 (isStrictlySorted!715 lt!457043))))

(assert (=> d!124783 (= (lemmaContainsTupThenGetReturnValue!281 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!457139)))

(declare-fun b!1036407 () Bool)

(declare-fun res!691871 () Bool)

(assert (=> b!1036407 (=> (not res!691871) (not e!586188))))

(assert (=> b!1036407 (= res!691871 (containsKey!565 lt!457043 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036408 () Bool)

(assert (=> b!1036408 (= e!586188 (contains!6045 lt!457043 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(assert (= (and d!124783 res!691870) b!1036407))

(assert (= (and b!1036407 res!691871) b!1036408))

(assert (=> d!124783 m!956309))

(declare-fun m!956665 () Bool)

(assert (=> d!124783 m!956665))

(declare-fun m!956667 () Bool)

(assert (=> d!124783 m!956667))

(declare-fun m!956669 () Bool)

(assert (=> b!1036407 m!956669))

(declare-fun m!956671 () Bool)

(assert (=> b!1036408 m!956671))

(assert (=> d!124645 d!124783))

(declare-fun b!1036409 () Bool)

(declare-fun e!586189 () List!22035)

(declare-fun e!586190 () List!22035)

(assert (=> b!1036409 (= e!586189 e!586190)))

(declare-fun c!104842 () Bool)

(assert (=> b!1036409 (= c!104842 (and ((_ is Cons!22031) (toList!6953 lt!456829)) (= (_1!7929 (h!23233 (toList!6953 lt!456829))) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036410 () Bool)

(declare-fun e!586192 () List!22035)

(declare-fun call!43868 () List!22035)

(assert (=> b!1036410 (= e!586192 call!43868)))

(declare-fun e!586193 () List!22035)

(declare-fun bm!43864 () Bool)

(declare-fun call!43867 () List!22035)

(declare-fun c!104839 () Bool)

(assert (=> bm!43864 (= call!43867 ($colon$colon!606 e!586193 (ite c!104839 (h!23233 (toList!6953 lt!456829)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))))

(declare-fun c!104840 () Bool)

(assert (=> bm!43864 (= c!104840 c!104839)))

(declare-fun d!124785 () Bool)

(declare-fun e!586191 () Bool)

(assert (=> d!124785 e!586191))

(declare-fun res!691872 () Bool)

(assert (=> d!124785 (=> (not res!691872) (not e!586191))))

(declare-fun lt!457140 () List!22035)

(assert (=> d!124785 (= res!691872 (isStrictlySorted!715 lt!457140))))

(assert (=> d!124785 (= lt!457140 e!586189)))

(assert (=> d!124785 (= c!104839 (and ((_ is Cons!22031) (toList!6953 lt!456829)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456829))) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(assert (=> d!124785 (isStrictlySorted!715 (toList!6953 lt!456829))))

(assert (=> d!124785 (= (insertStrictlySorted!373 (toList!6953 lt!456829) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!457140)))

(declare-fun c!104841 () Bool)

(declare-fun b!1036411 () Bool)

(assert (=> b!1036411 (= c!104841 (and ((_ is Cons!22031) (toList!6953 lt!456829)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456829))) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(assert (=> b!1036411 (= e!586190 e!586192)))

(declare-fun b!1036412 () Bool)

(assert (=> b!1036412 (= e!586193 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456829)) (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036413 () Bool)

(declare-fun res!691873 () Bool)

(assert (=> b!1036413 (=> (not res!691873) (not e!586191))))

(assert (=> b!1036413 (= res!691873 (containsKey!565 lt!457140 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036414 () Bool)

(assert (=> b!1036414 (= e!586189 call!43867)))

(declare-fun bm!43865 () Bool)

(declare-fun call!43869 () List!22035)

(assert (=> bm!43865 (= call!43868 call!43869)))

(declare-fun b!1036415 () Bool)

(assert (=> b!1036415 (= e!586191 (contains!6045 lt!457140 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036416 () Bool)

(assert (=> b!1036416 (= e!586192 call!43868)))

(declare-fun bm!43866 () Bool)

(assert (=> bm!43866 (= call!43869 call!43867)))

(declare-fun b!1036417 () Bool)

(assert (=> b!1036417 (= e!586193 (ite c!104842 (t!31249 (toList!6953 lt!456829)) (ite c!104841 (Cons!22031 (h!23233 (toList!6953 lt!456829)) (t!31249 (toList!6953 lt!456829))) Nil!22032)))))

(declare-fun b!1036418 () Bool)

(assert (=> b!1036418 (= e!586190 call!43869)))

(assert (= (and d!124785 c!104839) b!1036414))

(assert (= (and d!124785 (not c!104839)) b!1036409))

(assert (= (and b!1036409 c!104842) b!1036418))

(assert (= (and b!1036409 (not c!104842)) b!1036411))

(assert (= (and b!1036411 c!104841) b!1036416))

(assert (= (and b!1036411 (not c!104841)) b!1036410))

(assert (= (or b!1036416 b!1036410) bm!43865))

(assert (= (or b!1036418 bm!43865) bm!43866))

(assert (= (or b!1036414 bm!43866) bm!43864))

(assert (= (and bm!43864 c!104840) b!1036412))

(assert (= (and bm!43864 (not c!104840)) b!1036417))

(assert (= (and d!124785 res!691872) b!1036413))

(assert (= (and b!1036413 res!691873) b!1036415))

(declare-fun m!956673 () Bool)

(assert (=> b!1036415 m!956673))

(declare-fun m!956675 () Bool)

(assert (=> bm!43864 m!956675))

(declare-fun m!956677 () Bool)

(assert (=> b!1036412 m!956677))

(declare-fun m!956679 () Bool)

(assert (=> b!1036413 m!956679))

(declare-fun m!956681 () Bool)

(assert (=> d!124785 m!956681))

(declare-fun m!956683 () Bool)

(assert (=> d!124785 m!956683))

(assert (=> d!124645 d!124785))

(declare-fun d!124787 () Bool)

(assert (=> d!124787 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun lt!457141 () Unit!33873)

(assert (=> d!124787 (= lt!457141 (choose!1711 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!586194 () Bool)

(assert (=> d!124787 e!586194))

(declare-fun res!691874 () Bool)

(assert (=> d!124787 (=> (not res!691874) (not e!586194))))

(assert (=> d!124787 (= res!691874 (isStrictlySorted!715 (toList!6953 lt!456840)))))

(assert (=> d!124787 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457141)))

(declare-fun b!1036419 () Bool)

(assert (=> b!1036419 (= e!586194 (containsKey!565 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124787 res!691874) b!1036419))

(assert (=> d!124787 m!955785))

(assert (=> d!124787 m!956061))

(assert (=> d!124787 m!956061))

(assert (=> d!124787 m!956117))

(assert (=> d!124787 m!955785))

(declare-fun m!956685 () Bool)

(assert (=> d!124787 m!956685))

(declare-fun m!956687 () Bool)

(assert (=> d!124787 m!956687))

(assert (=> b!1036419 m!955785))

(assert (=> b!1036419 m!956113))

(assert (=> b!1036128 d!124787))

(declare-fun d!124789 () Bool)

(assert (=> d!124789 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun bs!30346 () Bool)

(assert (= bs!30346 d!124789))

(assert (=> bs!30346 m!956061))

(declare-fun m!956689 () Bool)

(assert (=> bs!30346 m!956689))

(assert (=> b!1036128 d!124789))

(declare-fun d!124791 () Bool)

(declare-fun c!104843 () Bool)

(assert (=> d!124791 (= c!104843 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun e!586195 () Option!643)

(assert (=> d!124791 (= (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) e!586195)))

(declare-fun b!1036421 () Bool)

(declare-fun e!586196 () Option!643)

(assert (=> b!1036421 (= e!586195 e!586196)))

(declare-fun c!104844 () Bool)

(assert (=> b!1036421 (= c!104844 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456840))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun b!1036423 () Bool)

(assert (=> b!1036423 (= e!586196 None!641)))

(declare-fun b!1036422 () Bool)

(assert (=> b!1036422 (= e!586196 (getValueByKey!592 (t!31249 (toList!6953 lt!456840)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036420 () Bool)

(assert (=> b!1036420 (= e!586195 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456840)))))))

(assert (= (and d!124791 c!104843) b!1036420))

(assert (= (and d!124791 (not c!104843)) b!1036421))

(assert (= (and b!1036421 c!104844) b!1036422))

(assert (= (and b!1036421 (not c!104844)) b!1036423))

(assert (=> b!1036422 m!955785))

(declare-fun m!956691 () Bool)

(assert (=> b!1036422 m!956691))

(assert (=> b!1036128 d!124791))

(assert (=> b!1036087 d!124573))

(assert (=> b!1036105 d!124573))

(declare-fun b!1036424 () Bool)

(declare-fun e!586197 () Bool)

(declare-fun e!586199 () Bool)

(assert (=> b!1036424 (= e!586197 e!586199)))

(declare-fun lt!457144 () (_ BitVec 64))

(assert (=> b!1036424 (= lt!457144 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!457143 () Unit!33873)

(assert (=> b!1036424 (= lt!457143 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 lt!456769) lt!457144 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1036424 (arrayContainsKey!0 (_keys!11456 lt!456769) lt!457144 #b00000000000000000000000000000000)))

(declare-fun lt!457142 () Unit!33873)

(assert (=> b!1036424 (= lt!457142 lt!457143)))

(declare-fun res!691875 () Bool)

(assert (=> b!1036424 (= res!691875 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!11456 lt!456769) (mask!30166 lt!456769)) (Found!9741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036424 (=> (not res!691875) (not e!586199))))

(declare-fun b!1036425 () Bool)

(declare-fun e!586198 () Bool)

(assert (=> b!1036425 (= e!586198 e!586197)))

(declare-fun c!104845 () Bool)

(assert (=> b!1036425 (= c!104845 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!43867 () Bool)

(declare-fun call!43870 () Bool)

(assert (=> bm!43867 (= call!43870 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!11456 lt!456769) (mask!30166 lt!456769)))))

(declare-fun b!1036426 () Bool)

(assert (=> b!1036426 (= e!586199 call!43870)))

(declare-fun d!124793 () Bool)

(declare-fun res!691876 () Bool)

(assert (=> d!124793 (=> res!691876 e!586198)))

(assert (=> d!124793 (= res!691876 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!124793 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11456 lt!456769) (mask!30166 lt!456769)) e!586198)))

(declare-fun b!1036427 () Bool)

(assert (=> b!1036427 (= e!586197 call!43870)))

(assert (= (and d!124793 (not res!691876)) b!1036425))

(assert (= (and b!1036425 c!104845) b!1036424))

(assert (= (and b!1036425 (not c!104845)) b!1036427))

(assert (= (and b!1036424 res!691875) b!1036426))

(assert (= (or b!1036426 b!1036427) bm!43867))

(declare-fun m!956693 () Bool)

(assert (=> b!1036424 m!956693))

(declare-fun m!956695 () Bool)

(assert (=> b!1036424 m!956695))

(declare-fun m!956697 () Bool)

(assert (=> b!1036424 m!956697))

(assert (=> b!1036424 m!956693))

(declare-fun m!956699 () Bool)

(assert (=> b!1036424 m!956699))

(assert (=> b!1036425 m!956693))

(assert (=> b!1036425 m!956693))

(declare-fun m!956701 () Bool)

(assert (=> b!1036425 m!956701))

(declare-fun m!956703 () Bool)

(assert (=> bm!43867 m!956703))

(assert (=> bm!43837 d!124793))

(declare-fun d!124795 () Bool)

(assert (=> d!124795 (= (validMask!0 (mask!30166 lt!456769)) (and (or (= (mask!30166 lt!456769) #b00000000000000000000000000000111) (= (mask!30166 lt!456769) #b00000000000000000000000000001111) (= (mask!30166 lt!456769) #b00000000000000000000000000011111) (= (mask!30166 lt!456769) #b00000000000000000000000000111111) (= (mask!30166 lt!456769) #b00000000000000000000000001111111) (= (mask!30166 lt!456769) #b00000000000000000000000011111111) (= (mask!30166 lt!456769) #b00000000000000000000000111111111) (= (mask!30166 lt!456769) #b00000000000000000000001111111111) (= (mask!30166 lt!456769) #b00000000000000000000011111111111) (= (mask!30166 lt!456769) #b00000000000000000000111111111111) (= (mask!30166 lt!456769) #b00000000000000000001111111111111) (= (mask!30166 lt!456769) #b00000000000000000011111111111111) (= (mask!30166 lt!456769) #b00000000000000000111111111111111) (= (mask!30166 lt!456769) #b00000000000000001111111111111111) (= (mask!30166 lt!456769) #b00000000000000011111111111111111) (= (mask!30166 lt!456769) #b00000000000000111111111111111111) (= (mask!30166 lt!456769) #b00000000000001111111111111111111) (= (mask!30166 lt!456769) #b00000000000011111111111111111111) (= (mask!30166 lt!456769) #b00000000000111111111111111111111) (= (mask!30166 lt!456769) #b00000000001111111111111111111111) (= (mask!30166 lt!456769) #b00000000011111111111111111111111) (= (mask!30166 lt!456769) #b00000000111111111111111111111111) (= (mask!30166 lt!456769) #b00000001111111111111111111111111) (= (mask!30166 lt!456769) #b00000011111111111111111111111111) (= (mask!30166 lt!456769) #b00000111111111111111111111111111) (= (mask!30166 lt!456769) #b00001111111111111111111111111111) (= (mask!30166 lt!456769) #b00011111111111111111111111111111) (= (mask!30166 lt!456769) #b00111111111111111111111111111111)) (bvsle (mask!30166 lt!456769) #b00111111111111111111111111111111)))))

(assert (=> d!124633 d!124795))

(declare-fun lt!457145 () Bool)

(declare-fun d!124797 () Bool)

(assert (=> d!124797 (= lt!457145 (select (content!518 (toList!6953 lt!456922)) (tuple2!15839 lt!456863 lt!456768)))))

(declare-fun e!586201 () Bool)

(assert (=> d!124797 (= lt!457145 e!586201)))

(declare-fun res!691877 () Bool)

(assert (=> d!124797 (=> (not res!691877) (not e!586201))))

(assert (=> d!124797 (= res!691877 ((_ is Cons!22031) (toList!6953 lt!456922)))))

(assert (=> d!124797 (= (contains!6045 (toList!6953 lt!456922) (tuple2!15839 lt!456863 lt!456768)) lt!457145)))

(declare-fun b!1036428 () Bool)

(declare-fun e!586200 () Bool)

(assert (=> b!1036428 (= e!586201 e!586200)))

(declare-fun res!691878 () Bool)

(assert (=> b!1036428 (=> res!691878 e!586200)))

(assert (=> b!1036428 (= res!691878 (= (h!23233 (toList!6953 lt!456922)) (tuple2!15839 lt!456863 lt!456768)))))

(declare-fun b!1036429 () Bool)

(assert (=> b!1036429 (= e!586200 (contains!6045 (t!31249 (toList!6953 lt!456922)) (tuple2!15839 lt!456863 lt!456768)))))

(assert (= (and d!124797 res!691877) b!1036428))

(assert (= (and b!1036428 (not res!691878)) b!1036429))

(declare-fun m!956705 () Bool)

(assert (=> d!124797 m!956705))

(declare-fun m!956707 () Bool)

(assert (=> d!124797 m!956707))

(declare-fun m!956709 () Bool)

(assert (=> b!1036429 m!956709))

(assert (=> b!1036035 d!124797))

(declare-fun d!124799 () Bool)

(declare-fun e!586203 () Bool)

(assert (=> d!124799 e!586203))

(declare-fun res!691879 () Bool)

(assert (=> d!124799 (=> res!691879 e!586203)))

(declare-fun lt!457148 () Bool)

(assert (=> d!124799 (= res!691879 (not lt!457148))))

(declare-fun lt!457147 () Bool)

(assert (=> d!124799 (= lt!457148 lt!457147)))

(declare-fun lt!457149 () Unit!33873)

(declare-fun e!586202 () Unit!33873)

(assert (=> d!124799 (= lt!457149 e!586202)))

(declare-fun c!104846 () Bool)

(assert (=> d!124799 (= c!104846 lt!457147)))

(assert (=> d!124799 (= lt!457147 (containsKey!565 (toList!6953 lt!457028) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (=> d!124799 (= (contains!6044 lt!457028 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) lt!457148)))

(declare-fun b!1036430 () Bool)

(declare-fun lt!457146 () Unit!33873)

(assert (=> b!1036430 (= e!586202 lt!457146)))

(assert (=> b!1036430 (= lt!457146 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457028) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (=> b!1036430 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036431 () Bool)

(declare-fun Unit!33894 () Unit!33873)

(assert (=> b!1036431 (= e!586202 Unit!33894)))

(declare-fun b!1036432 () Bool)

(assert (=> b!1036432 (= e!586203 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))))

(assert (= (and d!124799 c!104846) b!1036430))

(assert (= (and d!124799 (not c!104846)) b!1036431))

(assert (= (and d!124799 (not res!691879)) b!1036432))

(assert (=> d!124799 m!956101))

(declare-fun m!956711 () Bool)

(assert (=> d!124799 m!956711))

(assert (=> b!1036430 m!956101))

(declare-fun m!956713 () Bool)

(assert (=> b!1036430 m!956713))

(assert (=> b!1036430 m!956101))

(declare-fun m!956715 () Bool)

(assert (=> b!1036430 m!956715))

(assert (=> b!1036430 m!956715))

(declare-fun m!956717 () Bool)

(assert (=> b!1036430 m!956717))

(assert (=> b!1036432 m!956101))

(assert (=> b!1036432 m!956715))

(assert (=> b!1036432 m!956715))

(assert (=> b!1036432 m!956717))

(assert (=> b!1036204 d!124799))

(declare-fun d!124801 () Bool)

(declare-fun e!586205 () Bool)

(assert (=> d!124801 e!586205))

(declare-fun res!691880 () Bool)

(assert (=> d!124801 (=> res!691880 e!586205)))

(declare-fun lt!457152 () Bool)

(assert (=> d!124801 (= res!691880 (not lt!457152))))

(declare-fun lt!457151 () Bool)

(assert (=> d!124801 (= lt!457152 lt!457151)))

(declare-fun lt!457153 () Unit!33873)

(declare-fun e!586204 () Unit!33873)

(assert (=> d!124801 (= lt!457153 e!586204)))

(declare-fun c!104847 () Bool)

(assert (=> d!124801 (= c!104847 lt!457151)))

(assert (=> d!124801 (= lt!457151 (containsKey!565 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> d!124801 (= (contains!6044 lt!456965 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) lt!457152)))

(declare-fun b!1036433 () Bool)

(declare-fun lt!457150 () Unit!33873)

(assert (=> b!1036433 (= e!586204 lt!457150)))

(assert (=> b!1036433 (= lt!457150 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> b!1036433 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036434 () Bool)

(declare-fun Unit!33895 () Unit!33873)

(assert (=> b!1036434 (= e!586204 Unit!33895)))

(declare-fun b!1036435 () Bool)

(assert (=> b!1036435 (= e!586205 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456965) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(assert (= (and d!124801 c!104847) b!1036433))

(assert (= (and d!124801 (not c!104847)) b!1036434))

(assert (= (and d!124801 (not res!691880)) b!1036435))

(declare-fun m!956719 () Bool)

(assert (=> d!124801 m!956719))

(declare-fun m!956721 () Bool)

(assert (=> b!1036433 m!956721))

(assert (=> b!1036433 m!956089))

(assert (=> b!1036433 m!956089))

(declare-fun m!956723 () Bool)

(assert (=> b!1036433 m!956723))

(assert (=> b!1036435 m!956089))

(assert (=> b!1036435 m!956089))

(assert (=> b!1036435 m!956723))

(assert (=> d!124585 d!124801))

(declare-fun d!124803 () Bool)

(declare-fun c!104848 () Bool)

(assert (=> d!124803 (= c!104848 (and ((_ is Cons!22031) lt!456963) (= (_1!7929 (h!23233 lt!456963)) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun e!586206 () Option!643)

(assert (=> d!124803 (= (getValueByKey!592 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) e!586206)))

(declare-fun b!1036437 () Bool)

(declare-fun e!586207 () Option!643)

(assert (=> b!1036437 (= e!586206 e!586207)))

(declare-fun c!104849 () Bool)

(assert (=> b!1036437 (= c!104849 (and ((_ is Cons!22031) lt!456963) (not (= (_1!7929 (h!23233 lt!456963)) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))))

(declare-fun b!1036439 () Bool)

(assert (=> b!1036439 (= e!586207 None!641)))

(declare-fun b!1036438 () Bool)

(assert (=> b!1036438 (= e!586207 (getValueByKey!592 (t!31249 lt!456963) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036436 () Bool)

(assert (=> b!1036436 (= e!586206 (Some!642 (_2!7929 (h!23233 lt!456963))))))

(assert (= (and d!124803 c!104848) b!1036436))

(assert (= (and d!124803 (not c!104848)) b!1036437))

(assert (= (and b!1036437 c!104849) b!1036438))

(assert (= (and b!1036437 (not c!104849)) b!1036439))

(declare-fun m!956725 () Bool)

(assert (=> b!1036438 m!956725))

(assert (=> d!124585 d!124803))

(declare-fun d!124805 () Bool)

(assert (=> d!124805 (= (getValueByKey!592 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) (Some!642 (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun lt!457154 () Unit!33873)

(assert (=> d!124805 (= lt!457154 (choose!1712 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun e!586208 () Bool)

(assert (=> d!124805 e!586208))

(declare-fun res!691881 () Bool)

(assert (=> d!124805 (=> (not res!691881) (not e!586208))))

(assert (=> d!124805 (= res!691881 (isStrictlySorted!715 lt!456963))))

(assert (=> d!124805 (= (lemmaContainsTupThenGetReturnValue!281 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) lt!457154)))

(declare-fun b!1036440 () Bool)

(declare-fun res!691882 () Bool)

(assert (=> b!1036440 (=> (not res!691882) (not e!586208))))

(assert (=> b!1036440 (= res!691882 (containsKey!565 lt!456963 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036441 () Bool)

(assert (=> b!1036441 (= e!586208 (contains!6045 lt!456963 (tuple2!15839 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(assert (= (and d!124805 res!691881) b!1036440))

(assert (= (and b!1036440 res!691882) b!1036441))

(assert (=> d!124805 m!956083))

(declare-fun m!956727 () Bool)

(assert (=> d!124805 m!956727))

(declare-fun m!956729 () Bool)

(assert (=> d!124805 m!956729))

(declare-fun m!956731 () Bool)

(assert (=> b!1036440 m!956731))

(declare-fun m!956733 () Bool)

(assert (=> b!1036441 m!956733))

(assert (=> d!124585 d!124805))

(declare-fun b!1036442 () Bool)

(declare-fun e!586209 () List!22035)

(declare-fun e!586210 () List!22035)

(assert (=> b!1036442 (= e!586209 e!586210)))

(declare-fun c!104853 () Bool)

(assert (=> b!1036442 (= c!104853 (and ((_ is Cons!22031) (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (= (_1!7929 (h!23233 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun b!1036443 () Bool)

(declare-fun e!586212 () List!22035)

(declare-fun call!43872 () List!22035)

(assert (=> b!1036443 (= e!586212 call!43872)))

(declare-fun bm!43868 () Bool)

(declare-fun call!43871 () List!22035)

(declare-fun c!104850 () Bool)

(declare-fun e!586213 () List!22035)

(assert (=> bm!43868 (= call!43871 ($colon$colon!606 e!586213 (ite c!104850 (h!23233 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (tuple2!15839 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))))

(declare-fun c!104851 () Bool)

(assert (=> bm!43868 (= c!104851 c!104850)))

(declare-fun d!124807 () Bool)

(declare-fun e!586211 () Bool)

(assert (=> d!124807 e!586211))

(declare-fun res!691883 () Bool)

(assert (=> d!124807 (=> (not res!691883) (not e!586211))))

(declare-fun lt!457155 () List!22035)

(assert (=> d!124807 (= res!691883 (isStrictlySorted!715 lt!457155))))

(assert (=> d!124807 (= lt!457155 e!586209)))

(assert (=> d!124807 (= c!104850 (and ((_ is Cons!22031) (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (bvslt (_1!7929 (h!23233 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(assert (=> d!124807 (isStrictlySorted!715 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))))))

(assert (=> d!124807 (= (insertStrictlySorted!373 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))) lt!457155)))

(declare-fun b!1036444 () Bool)

(declare-fun c!104852 () Bool)

(assert (=> b!1036444 (= c!104852 (and ((_ is Cons!22031) (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (bvsgt (_1!7929 (h!23233 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(assert (=> b!1036444 (= e!586210 e!586212)))

(declare-fun b!1036445 () Bool)

(assert (=> b!1036445 (= e!586213 (insertStrictlySorted!373 (t!31249 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036446 () Bool)

(declare-fun res!691884 () Bool)

(assert (=> b!1036446 (=> (not res!691884) (not e!586211))))

(assert (=> b!1036446 (= res!691884 (containsKey!565 lt!457155 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036447 () Bool)

(assert (=> b!1036447 (= e!586209 call!43871)))

(declare-fun bm!43869 () Bool)

(declare-fun call!43873 () List!22035)

(assert (=> bm!43869 (= call!43872 call!43873)))

(declare-fun b!1036448 () Bool)

(assert (=> b!1036448 (= e!586211 (contains!6045 lt!457155 (tuple2!15839 (_1!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (_2!7929 (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun b!1036449 () Bool)

(assert (=> b!1036449 (= e!586212 call!43872)))

(declare-fun bm!43870 () Bool)

(assert (=> bm!43870 (= call!43873 call!43871)))

(declare-fun b!1036450 () Bool)

(assert (=> b!1036450 (= e!586213 (ite c!104853 (t!31249 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (ite c!104852 (Cons!22031 (h!23233 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827)))) (t!31249 (toList!6953 (ite c!104716 call!43828 (ite c!104715 call!43824 call!43827))))) Nil!22032)))))

(declare-fun b!1036451 () Bool)

(assert (=> b!1036451 (= e!586210 call!43873)))

(assert (= (and d!124807 c!104850) b!1036447))

(assert (= (and d!124807 (not c!104850)) b!1036442))

(assert (= (and b!1036442 c!104853) b!1036451))

(assert (= (and b!1036442 (not c!104853)) b!1036444))

(assert (= (and b!1036444 c!104852) b!1036449))

(assert (= (and b!1036444 (not c!104852)) b!1036443))

(assert (= (or b!1036449 b!1036443) bm!43869))

(assert (= (or b!1036451 bm!43869) bm!43870))

(assert (= (or b!1036447 bm!43870) bm!43868))

(assert (= (and bm!43868 c!104851) b!1036445))

(assert (= (and bm!43868 (not c!104851)) b!1036450))

(assert (= (and d!124807 res!691883) b!1036446))

(assert (= (and b!1036446 res!691884) b!1036448))

(declare-fun m!956735 () Bool)

(assert (=> b!1036448 m!956735))

(declare-fun m!956737 () Bool)

(assert (=> bm!43868 m!956737))

(declare-fun m!956739 () Bool)

(assert (=> b!1036445 m!956739))

(declare-fun m!956741 () Bool)

(assert (=> b!1036446 m!956741))

(declare-fun m!956743 () Bool)

(assert (=> d!124807 m!956743))

(declare-fun m!956745 () Bool)

(assert (=> d!124807 m!956745))

(assert (=> d!124585 d!124807))

(declare-fun d!124809 () Bool)

(declare-fun e!586215 () Bool)

(assert (=> d!124809 e!586215))

(declare-fun res!691885 () Bool)

(assert (=> d!124809 (=> res!691885 e!586215)))

(declare-fun lt!457158 () Bool)

(assert (=> d!124809 (= res!691885 (not lt!457158))))

(declare-fun lt!457157 () Bool)

(assert (=> d!124809 (= lt!457158 lt!457157)))

(declare-fun lt!457159 () Unit!33873)

(declare-fun e!586214 () Unit!33873)

(assert (=> d!124809 (= lt!457159 e!586214)))

(declare-fun c!104854 () Bool)

(assert (=> d!124809 (= c!104854 lt!457157)))

(assert (=> d!124809 (= lt!457157 (containsKey!565 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124809 (= (contains!6044 lt!456937 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!457158)))

(declare-fun b!1036452 () Bool)

(declare-fun lt!457156 () Unit!33873)

(assert (=> b!1036452 (= e!586214 lt!457156)))

(assert (=> b!1036452 (= lt!457156 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(assert (=> b!1036452 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036453 () Bool)

(declare-fun Unit!33896 () Unit!33873)

(assert (=> b!1036453 (= e!586214 Unit!33896)))

(declare-fun b!1036454 () Bool)

(assert (=> b!1036454 (= e!586215 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456937) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124809 c!104854) b!1036452))

(assert (= (and d!124809 (not c!104854)) b!1036453))

(assert (= (and d!124809 (not res!691885)) b!1036454))

(declare-fun m!956747 () Bool)

(assert (=> d!124809 m!956747))

(declare-fun m!956749 () Bool)

(assert (=> b!1036452 m!956749))

(assert (=> b!1036452 m!956007))

(assert (=> b!1036452 m!956007))

(declare-fun m!956751 () Bool)

(assert (=> b!1036452 m!956751))

(assert (=> b!1036454 m!956007))

(assert (=> b!1036454 m!956007))

(assert (=> b!1036454 m!956751))

(assert (=> d!124561 d!124809))

(declare-fun c!104855 () Bool)

(declare-fun d!124811 () Bool)

(assert (=> d!124811 (= c!104855 (and ((_ is Cons!22031) lt!456935) (= (_1!7929 (h!23233 lt!456935)) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586216 () Option!643)

(assert (=> d!124811 (= (getValueByKey!592 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) e!586216)))

(declare-fun b!1036456 () Bool)

(declare-fun e!586217 () Option!643)

(assert (=> b!1036456 (= e!586216 e!586217)))

(declare-fun c!104856 () Bool)

(assert (=> b!1036456 (= c!104856 (and ((_ is Cons!22031) lt!456935) (not (= (_1!7929 (h!23233 lt!456935)) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036458 () Bool)

(assert (=> b!1036458 (= e!586217 None!641)))

(declare-fun b!1036457 () Bool)

(assert (=> b!1036457 (= e!586217 (getValueByKey!592 (t!31249 lt!456935) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036455 () Bool)

(assert (=> b!1036455 (= e!586216 (Some!642 (_2!7929 (h!23233 lt!456935))))))

(assert (= (and d!124811 c!104855) b!1036455))

(assert (= (and d!124811 (not c!104855)) b!1036456))

(assert (= (and b!1036456 c!104856) b!1036457))

(assert (= (and b!1036456 (not c!104856)) b!1036458))

(declare-fun m!956753 () Bool)

(assert (=> b!1036457 m!956753))

(assert (=> d!124561 d!124811))

(declare-fun d!124813 () Bool)

(assert (=> d!124813 (= (getValueByKey!592 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457160 () Unit!33873)

(assert (=> d!124813 (= lt!457160 (choose!1712 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun e!586218 () Bool)

(assert (=> d!124813 e!586218))

(declare-fun res!691886 () Bool)

(assert (=> d!124813 (=> (not res!691886) (not e!586218))))

(assert (=> d!124813 (= res!691886 (isStrictlySorted!715 lt!456935))))

(assert (=> d!124813 (= (lemmaContainsTupThenGetReturnValue!281 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!457160)))

(declare-fun b!1036459 () Bool)

(declare-fun res!691887 () Bool)

(assert (=> b!1036459 (=> (not res!691887) (not e!586218))))

(assert (=> b!1036459 (= res!691887 (containsKey!565 lt!456935 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036460 () Bool)

(assert (=> b!1036460 (= e!586218 (contains!6045 lt!456935 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124813 res!691886) b!1036459))

(assert (= (and b!1036459 res!691887) b!1036460))

(assert (=> d!124813 m!956001))

(declare-fun m!956755 () Bool)

(assert (=> d!124813 m!956755))

(declare-fun m!956757 () Bool)

(assert (=> d!124813 m!956757))

(declare-fun m!956759 () Bool)

(assert (=> b!1036459 m!956759))

(declare-fun m!956761 () Bool)

(assert (=> b!1036460 m!956761))

(assert (=> d!124561 d!124813))

(declare-fun b!1036461 () Bool)

(declare-fun e!586219 () List!22035)

(declare-fun e!586220 () List!22035)

(assert (=> b!1036461 (= e!586219 e!586220)))

(declare-fun c!104860 () Bool)

(assert (=> b!1036461 (= c!104860 (and ((_ is Cons!22031) (toList!6953 lt!456857)) (= (_1!7929 (h!23233 (toList!6953 lt!456857))) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036462 () Bool)

(declare-fun e!586222 () List!22035)

(declare-fun call!43875 () List!22035)

(assert (=> b!1036462 (= e!586222 call!43875)))

(declare-fun call!43874 () List!22035)

(declare-fun c!104857 () Bool)

(declare-fun e!586223 () List!22035)

(declare-fun bm!43871 () Bool)

(assert (=> bm!43871 (= call!43874 ($colon$colon!606 e!586223 (ite c!104857 (h!23233 (toList!6953 lt!456857)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))))

(declare-fun c!104858 () Bool)

(assert (=> bm!43871 (= c!104858 c!104857)))

(declare-fun d!124815 () Bool)

(declare-fun e!586221 () Bool)

(assert (=> d!124815 e!586221))

(declare-fun res!691888 () Bool)

(assert (=> d!124815 (=> (not res!691888) (not e!586221))))

(declare-fun lt!457161 () List!22035)

(assert (=> d!124815 (= res!691888 (isStrictlySorted!715 lt!457161))))

(assert (=> d!124815 (= lt!457161 e!586219)))

(assert (=> d!124815 (= c!104857 (and ((_ is Cons!22031) (toList!6953 lt!456857)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456857))) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!124815 (isStrictlySorted!715 (toList!6953 lt!456857))))

(assert (=> d!124815 (= (insertStrictlySorted!373 (toList!6953 lt!456857) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))) lt!457161)))

(declare-fun b!1036463 () Bool)

(declare-fun c!104859 () Bool)

(assert (=> b!1036463 (= c!104859 (and ((_ is Cons!22031) (toList!6953 lt!456857)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456857))) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(assert (=> b!1036463 (= e!586220 e!586222)))

(declare-fun b!1036464 () Bool)

(assert (=> b!1036464 (= e!586223 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456857)) (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036465 () Bool)

(declare-fun res!691889 () Bool)

(assert (=> b!1036465 (=> (not res!691889) (not e!586221))))

(assert (=> b!1036465 (= res!691889 (containsKey!565 lt!457161 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036466 () Bool)

(assert (=> b!1036466 (= e!586219 call!43874)))

(declare-fun bm!43872 () Bool)

(declare-fun call!43876 () List!22035)

(assert (=> bm!43872 (= call!43875 call!43876)))

(declare-fun b!1036467 () Bool)

(assert (=> b!1036467 (= e!586221 (contains!6045 lt!457161 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036468 () Bool)

(assert (=> b!1036468 (= e!586222 call!43875)))

(declare-fun bm!43873 () Bool)

(assert (=> bm!43873 (= call!43876 call!43874)))

(declare-fun b!1036469 () Bool)

(assert (=> b!1036469 (= e!586223 (ite c!104860 (t!31249 (toList!6953 lt!456857)) (ite c!104859 (Cons!22031 (h!23233 (toList!6953 lt!456857)) (t!31249 (toList!6953 lt!456857))) Nil!22032)))))

(declare-fun b!1036470 () Bool)

(assert (=> b!1036470 (= e!586220 call!43876)))

(assert (= (and d!124815 c!104857) b!1036466))

(assert (= (and d!124815 (not c!104857)) b!1036461))

(assert (= (and b!1036461 c!104860) b!1036470))

(assert (= (and b!1036461 (not c!104860)) b!1036463))

(assert (= (and b!1036463 c!104859) b!1036468))

(assert (= (and b!1036463 (not c!104859)) b!1036462))

(assert (= (or b!1036468 b!1036462) bm!43872))

(assert (= (or b!1036470 bm!43872) bm!43873))

(assert (= (or b!1036466 bm!43873) bm!43871))

(assert (= (and bm!43871 c!104858) b!1036464))

(assert (= (and bm!43871 (not c!104858)) b!1036469))

(assert (= (and d!124815 res!691888) b!1036465))

(assert (= (and b!1036465 res!691889) b!1036467))

(declare-fun m!956763 () Bool)

(assert (=> b!1036467 m!956763))

(declare-fun m!956765 () Bool)

(assert (=> bm!43871 m!956765))

(declare-fun m!956767 () Bool)

(assert (=> b!1036464 m!956767))

(declare-fun m!956769 () Bool)

(assert (=> b!1036465 m!956769))

(declare-fun m!956771 () Bool)

(assert (=> d!124815 m!956771))

(declare-fun m!956773 () Bool)

(assert (=> d!124815 m!956773))

(assert (=> d!124561 d!124815))

(assert (=> b!1036140 d!124693))

(declare-fun d!124817 () Bool)

(assert (=> d!124817 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14932 (getValueByKey!592 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124623 d!124817))

(assert (=> d!124623 d!124677))

(declare-fun b!1036471 () Bool)

(declare-fun e!586225 () Bool)

(declare-fun e!586224 () Bool)

(assert (=> b!1036471 (= e!586225 e!586224)))

(declare-fun res!691892 () Bool)

(assert (=> b!1036471 (=> (not res!691892) (not e!586224))))

(declare-fun e!586227 () Bool)

(assert (=> b!1036471 (= res!691892 (not e!586227))))

(declare-fun res!691891 () Bool)

(assert (=> b!1036471 (=> (not res!691891) (not e!586227))))

(assert (=> b!1036471 (= res!691891 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036472 () Bool)

(declare-fun e!586226 () Bool)

(declare-fun call!43877 () Bool)

(assert (=> b!1036472 (= e!586226 call!43877)))

(declare-fun b!1036473 () Bool)

(assert (=> b!1036473 (= e!586226 call!43877)))

(declare-fun b!1036474 () Bool)

(assert (=> b!1036474 (= e!586227 (contains!6046 (ite c!104749 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) Nil!22033) Nil!22033) (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!104861 () Bool)

(declare-fun bm!43874 () Bool)

(assert (=> bm!43874 (= call!43877 (arrayNoDuplicates!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!104861 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!104749 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)) (ite c!104749 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) Nil!22033) Nil!22033))))))

(declare-fun d!124819 () Bool)

(declare-fun res!691890 () Bool)

(assert (=> d!124819 (=> res!691890 e!586225)))

(assert (=> d!124819 (= res!691890 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124819 (= (arrayNoDuplicates!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104749 (Cons!22032 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)) e!586225)))

(declare-fun b!1036475 () Bool)

(assert (=> b!1036475 (= e!586224 e!586226)))

(assert (=> b!1036475 (= c!104861 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!124819 (not res!691890)) b!1036471))

(assert (= (and b!1036471 res!691891) b!1036474))

(assert (= (and b!1036471 res!691892) b!1036475))

(assert (= (and b!1036475 c!104861) b!1036473))

(assert (= (and b!1036475 (not c!104861)) b!1036472))

(assert (= (or b!1036473 b!1036472) bm!43874))

(assert (=> b!1036471 m!956381))

(assert (=> b!1036471 m!956381))

(assert (=> b!1036471 m!956391))

(assert (=> b!1036474 m!956381))

(assert (=> b!1036474 m!956381))

(declare-fun m!956775 () Bool)

(assert (=> b!1036474 m!956775))

(assert (=> bm!43874 m!956381))

(declare-fun m!956777 () Bool)

(assert (=> bm!43874 m!956777))

(assert (=> b!1036475 m!956381))

(assert (=> b!1036475 m!956381))

(assert (=> b!1036475 m!956391))

(assert (=> bm!43833 d!124819))

(declare-fun d!124821 () Bool)

(declare-fun lt!457162 () Bool)

(assert (=> d!124821 (= lt!457162 (select (content!518 (toList!6953 lt!457049)) (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))

(declare-fun e!586229 () Bool)

(assert (=> d!124821 (= lt!457162 e!586229)))

(declare-fun res!691893 () Bool)

(assert (=> d!124821 (=> (not res!691893) (not e!586229))))

(assert (=> d!124821 (= res!691893 ((_ is Cons!22031) (toList!6953 lt!457049)))))

(assert (=> d!124821 (= (contains!6045 (toList!6953 lt!457049) (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))) lt!457162)))

(declare-fun b!1036476 () Bool)

(declare-fun e!586228 () Bool)

(assert (=> b!1036476 (= e!586229 e!586228)))

(declare-fun res!691894 () Bool)

(assert (=> b!1036476 (=> res!691894 e!586228)))

(assert (=> b!1036476 (= res!691894 (= (h!23233 (toList!6953 lt!457049)) (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))

(declare-fun b!1036477 () Bool)

(assert (=> b!1036477 (= e!586228 (contains!6045 (t!31249 (toList!6953 lt!457049)) (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124821 res!691893) b!1036476))

(assert (= (and b!1036476 (not res!691894)) b!1036477))

(declare-fun m!956779 () Bool)

(assert (=> d!124821 m!956779))

(declare-fun m!956781 () Bool)

(assert (=> d!124821 m!956781))

(declare-fun m!956783 () Bool)

(assert (=> b!1036477 m!956783))

(assert (=> b!1036212 d!124821))

(declare-fun lt!457163 () Bool)

(declare-fun d!124823 () Bool)

(assert (=> d!124823 (= lt!457163 (select (content!518 (toList!6953 lt!456937)) (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))

(declare-fun e!586231 () Bool)

(assert (=> d!124823 (= lt!457163 e!586231)))

(declare-fun res!691895 () Bool)

(assert (=> d!124823 (=> (not res!691895) (not e!586231))))

(assert (=> d!124823 (= res!691895 ((_ is Cons!22031) (toList!6953 lt!456937)))))

(assert (=> d!124823 (= (contains!6045 (toList!6953 lt!456937) (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!457163)))

(declare-fun b!1036478 () Bool)

(declare-fun e!586230 () Bool)

(assert (=> b!1036478 (= e!586231 e!586230)))

(declare-fun res!691896 () Bool)

(assert (=> b!1036478 (=> res!691896 e!586230)))

(assert (=> b!1036478 (= res!691896 (= (h!23233 (toList!6953 lt!456937)) (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))

(declare-fun b!1036479 () Bool)

(assert (=> b!1036479 (= e!586230 (contains!6045 (t!31249 (toList!6953 lt!456937)) (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124823 res!691895) b!1036478))

(assert (= (and b!1036478 (not res!691896)) b!1036479))

(declare-fun m!956785 () Bool)

(assert (=> d!124823 m!956785))

(declare-fun m!956787 () Bool)

(assert (=> d!124823 m!956787))

(declare-fun m!956789 () Bool)

(assert (=> b!1036479 m!956789))

(assert (=> b!1036045 d!124823))

(declare-fun d!124825 () Bool)

(declare-fun res!691897 () Bool)

(declare-fun e!586232 () Bool)

(assert (=> d!124825 (=> res!691897 e!586232)))

(assert (=> d!124825 (= res!691897 (and ((_ is Cons!22031) lt!456945) (= (_1!7929 (h!23233 lt!456945)) key!909)))))

(assert (=> d!124825 (= (containsKey!565 lt!456945 key!909) e!586232)))

(declare-fun b!1036480 () Bool)

(declare-fun e!586233 () Bool)

(assert (=> b!1036480 (= e!586232 e!586233)))

(declare-fun res!691898 () Bool)

(assert (=> b!1036480 (=> (not res!691898) (not e!586233))))

(assert (=> b!1036480 (= res!691898 (and (or (not ((_ is Cons!22031) lt!456945)) (bvsle (_1!7929 (h!23233 lt!456945)) key!909)) ((_ is Cons!22031) lt!456945) (bvslt (_1!7929 (h!23233 lt!456945)) key!909)))))

(declare-fun b!1036481 () Bool)

(assert (=> b!1036481 (= e!586233 (containsKey!565 (t!31249 lt!456945) key!909))))

(assert (= (and d!124825 (not res!691897)) b!1036480))

(assert (= (and b!1036480 res!691898) b!1036481))

(declare-fun m!956791 () Bool)

(assert (=> b!1036481 m!956791))

(assert (=> b!1036074 d!124825))

(declare-fun b!1036482 () Bool)

(declare-fun e!586234 () (_ BitVec 32))

(declare-fun call!43878 () (_ BitVec 32))

(assert (=> b!1036482 (= e!586234 call!43878)))

(declare-fun bm!43875 () Bool)

(assert (=> bm!43875 (= call!43878 (arrayCountValidKeys!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun d!124827 () Bool)

(declare-fun lt!457164 () (_ BitVec 32))

(assert (=> d!124827 (and (bvsge lt!457164 #b00000000000000000000000000000000) (bvsle lt!457164 (bvsub (size!31948 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!586235 () (_ BitVec 32))

(assert (=> d!124827 (= lt!457164 e!586235)))

(declare-fun c!104863 () Bool)

(assert (=> d!124827 (= c!104863 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124827 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31948 (_keys!11456 thiss!1427)) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124827 (= (arrayCountValidKeys!0 (_keys!11456 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))) lt!457164)))

(declare-fun b!1036483 () Bool)

(assert (=> b!1036483 (= e!586235 e!586234)))

(declare-fun c!104862 () Bool)

(assert (=> b!1036483 (= c!104862 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036484 () Bool)

(assert (=> b!1036484 (= e!586234 (bvadd #b00000000000000000000000000000001 call!43878))))

(declare-fun b!1036485 () Bool)

(assert (=> b!1036485 (= e!586235 #b00000000000000000000000000000000)))

(assert (= (and d!124827 c!104863) b!1036485))

(assert (= (and d!124827 (not c!104863)) b!1036483))

(assert (= (and b!1036483 c!104862) b!1036484))

(assert (= (and b!1036483 (not c!104862)) b!1036482))

(assert (= (or b!1036484 b!1036482) bm!43875))

(declare-fun m!956793 () Bool)

(assert (=> bm!43875 m!956793))

(assert (=> b!1036483 m!956381))

(assert (=> b!1036483 m!956381))

(assert (=> b!1036483 m!956391))

(assert (=> bm!43842 d!124827))

(declare-fun d!124829 () Bool)

(assert (=> d!124829 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))) lt!456862)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))) lt!456862)))))

(assert (=> d!124555 d!124829))

(declare-fun d!124831 () Bool)

(declare-fun c!104864 () Bool)

(assert (=> d!124831 (= c!104864 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))))) lt!456862)))))

(declare-fun e!586236 () Option!643)

(assert (=> d!124831 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))) lt!456862) e!586236)))

(declare-fun b!1036487 () Bool)

(declare-fun e!586237 () Option!643)

(assert (=> b!1036487 (= e!586236 e!586237)))

(declare-fun c!104865 () Bool)

(assert (=> b!1036487 (= c!104865 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768))))) lt!456862))))))

(declare-fun b!1036489 () Bool)

(assert (=> b!1036489 (= e!586237 None!641)))

(declare-fun b!1036488 () Bool)

(assert (=> b!1036488 (= e!586237 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)))) lt!456862))))

(declare-fun b!1036486 () Bool)

(assert (=> b!1036486 (= e!586236 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)))))))))

(assert (= (and d!124831 c!104864) b!1036486))

(assert (= (and d!124831 (not c!104864)) b!1036487))

(assert (= (and b!1036487 c!104865) b!1036488))

(assert (= (and b!1036487 (not c!104865)) b!1036489))

(declare-fun m!956795 () Bool)

(assert (=> b!1036488 m!956795))

(assert (=> d!124555 d!124831))

(declare-fun lt!457165 () Bool)

(declare-fun d!124833 () Bool)

(assert (=> d!124833 (= lt!457165 (select (content!518 (toList!6953 lt!457045)) (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))

(declare-fun e!586239 () Bool)

(assert (=> d!124833 (= lt!457165 e!586239)))

(declare-fun res!691899 () Bool)

(assert (=> d!124833 (=> (not res!691899) (not e!586239))))

(assert (=> d!124833 (= res!691899 ((_ is Cons!22031) (toList!6953 lt!457045)))))

(assert (=> d!124833 (= (contains!6045 (toList!6953 lt!457045) (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!457165)))

(declare-fun b!1036490 () Bool)

(declare-fun e!586238 () Bool)

(assert (=> b!1036490 (= e!586239 e!586238)))

(declare-fun res!691900 () Bool)

(assert (=> b!1036490 (=> res!691900 e!586238)))

(assert (=> b!1036490 (= res!691900 (= (h!23233 (toList!6953 lt!457045)) (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))

(declare-fun b!1036491 () Bool)

(assert (=> b!1036491 (= e!586238 (contains!6045 (t!31249 (toList!6953 lt!457045)) (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))

(assert (= (and d!124833 res!691899) b!1036490))

(assert (= (and b!1036490 (not res!691900)) b!1036491))

(declare-fun m!956797 () Bool)

(assert (=> d!124833 m!956797))

(declare-fun m!956799 () Bool)

(assert (=> d!124833 m!956799))

(declare-fun m!956801 () Bool)

(assert (=> b!1036491 m!956801))

(assert (=> b!1036210 d!124833))

(declare-fun d!124835 () Bool)

(declare-fun res!691901 () Bool)

(declare-fun e!586240 () Bool)

(assert (=> d!124835 (=> res!691901 e!586240)))

(assert (=> d!124835 (= res!691901 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124835 (= (containsKey!565 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000) e!586240)))

(declare-fun b!1036492 () Bool)

(declare-fun e!586241 () Bool)

(assert (=> b!1036492 (= e!586240 e!586241)))

(declare-fun res!691902 () Bool)

(assert (=> b!1036492 (=> (not res!691902) (not e!586241))))

(assert (=> b!1036492 (= res!691902 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456840))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456840))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) (toList!6953 lt!456840)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456840))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036493 () Bool)

(assert (=> b!1036493 (= e!586241 (containsKey!565 (t!31249 (toList!6953 lt!456840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124835 (not res!691901)) b!1036492))

(assert (= (and b!1036492 res!691902) b!1036493))

(declare-fun m!956803 () Bool)

(assert (=> b!1036493 m!956803))

(assert (=> d!124625 d!124835))

(declare-fun d!124837 () Bool)

(declare-fun c!104866 () Bool)

(assert (=> d!124837 (= c!104866 (and ((_ is Cons!22031) (toList!6953 lt!456991)) (= (_1!7929 (h!23233 (toList!6953 lt!456991))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun e!586242 () Option!643)

(assert (=> d!124837 (= (getValueByKey!592 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) e!586242)))

(declare-fun b!1036495 () Bool)

(declare-fun e!586243 () Option!643)

(assert (=> b!1036495 (= e!586242 e!586243)))

(declare-fun c!104867 () Bool)

(assert (=> b!1036495 (= c!104867 (and ((_ is Cons!22031) (toList!6953 lt!456991)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456991))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun b!1036497 () Bool)

(assert (=> b!1036497 (= e!586243 None!641)))

(declare-fun b!1036496 () Bool)

(assert (=> b!1036496 (= e!586243 (getValueByKey!592 (t!31249 (toList!6953 lt!456991)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036494 () Bool)

(assert (=> b!1036494 (= e!586242 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456991)))))))

(assert (= (and d!124837 c!104866) b!1036494))

(assert (= (and d!124837 (not c!104866)) b!1036495))

(assert (= (and b!1036495 c!104867) b!1036496))

(assert (= (and b!1036495 (not c!104867)) b!1036497))

(declare-fun m!956805 () Bool)

(assert (=> b!1036496 m!956805))

(assert (=> b!1036151 d!124837))

(declare-fun d!124839 () Bool)

(assert (=> d!124839 (= (size!31952 lt!456769) (bvadd (_size!2947 lt!456769) (bvsdiv (bvadd (extraKeys!6000 lt!456769) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1036056 d!124839))

(declare-fun d!124841 () Bool)

(assert (=> d!124841 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!456832)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!456832)))))

(assert (=> d!124649 d!124841))

(declare-fun d!124843 () Bool)

(declare-fun c!104868 () Bool)

(assert (=> d!124843 (= c!104868 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))) lt!456832)))))

(declare-fun e!586244 () Option!643)

(assert (=> d!124843 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))) lt!456832) e!586244)))

(declare-fun b!1036499 () Bool)

(declare-fun e!586245 () Option!643)

(assert (=> b!1036499 (= e!586244 e!586245)))

(declare-fun c!104869 () Bool)

(assert (=> b!1036499 (= c!104869 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427)))))) lt!456832))))))

(declare-fun b!1036501 () Bool)

(assert (=> b!1036501 (= e!586245 None!641)))

(declare-fun b!1036500 () Bool)

(assert (=> b!1036500 (= e!586245 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))) lt!456832))))

(declare-fun b!1036498 () Bool)

(assert (=> b!1036498 (= e!586244 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))))))))))

(assert (= (and d!124843 c!104868) b!1036498))

(assert (= (and d!124843 (not c!104868)) b!1036499))

(assert (= (and b!1036499 c!104869) b!1036500))

(assert (= (and b!1036499 (not c!104869)) b!1036501))

(declare-fun m!956807 () Bool)

(assert (=> b!1036500 m!956807))

(assert (=> d!124649 d!124843))

(declare-fun d!124845 () Bool)

(declare-fun res!691903 () Bool)

(declare-fun e!586246 () Bool)

(assert (=> d!124845 (=> res!691903 e!586246)))

(assert (=> d!124845 (= res!691903 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124845 (= (containsKey!565 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000) e!586246)))

(declare-fun b!1036502 () Bool)

(declare-fun e!586247 () Bool)

(assert (=> b!1036502 (= e!586246 e!586247)))

(declare-fun res!691904 () Bool)

(assert (=> b!1036502 (=> (not res!691904) (not e!586247))))

(assert (=> b!1036502 (= res!691904 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456866))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456866))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) (toList!6953 lt!456866)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456866))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036503 () Bool)

(assert (=> b!1036503 (= e!586247 (containsKey!565 (t!31249 (toList!6953 lt!456866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124845 (not res!691903)) b!1036502))

(assert (= (and b!1036502 res!691904) b!1036503))

(declare-fun m!956809 () Bool)

(assert (=> b!1036503 m!956809))

(assert (=> d!124601 d!124845))

(declare-fun d!124847 () Bool)

(assert (=> d!124847 (= (apply!942 lt!456890 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16475 (getValueByKey!592 (toList!6953 lt!456890) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30347 () Bool)

(assert (= bs!30347 d!124847))

(assert (=> bs!30347 m!955785))

(declare-fun m!956811 () Bool)

(assert (=> bs!30347 m!956811))

(assert (=> bs!30347 m!956811))

(declare-fun m!956813 () Bool)

(assert (=> bs!30347 m!956813))

(assert (=> b!1036012 d!124847))

(assert (=> b!1036012 d!124579))

(declare-fun d!124849 () Bool)

(declare-fun res!691905 () Bool)

(declare-fun e!586248 () Bool)

(assert (=> d!124849 (=> res!691905 e!586248)))

(assert (=> d!124849 (= res!691905 (and ((_ is Cons!22031) (toList!6953 lt!456781)) (= (_1!7929 (h!23233 (toList!6953 lt!456781))) key!909)))))

(assert (=> d!124849 (= (containsKey!565 (toList!6953 lt!456781) key!909) e!586248)))

(declare-fun b!1036504 () Bool)

(declare-fun e!586249 () Bool)

(assert (=> b!1036504 (= e!586248 e!586249)))

(declare-fun res!691906 () Bool)

(assert (=> b!1036504 (=> (not res!691906) (not e!586249))))

(assert (=> b!1036504 (= res!691906 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456781))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456781))) key!909)) ((_ is Cons!22031) (toList!6953 lt!456781)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456781))) key!909)))))

(declare-fun b!1036505 () Bool)

(assert (=> b!1036505 (= e!586249 (containsKey!565 (t!31249 (toList!6953 lt!456781)) key!909))))

(assert (= (and d!124849 (not res!691905)) b!1036504))

(assert (= (and b!1036504 res!691906) b!1036505))

(declare-fun m!956815 () Bool)

(assert (=> b!1036505 m!956815))

(assert (=> d!124569 d!124849))

(declare-fun d!124851 () Bool)

(declare-fun e!586251 () Bool)

(assert (=> d!124851 e!586251))

(declare-fun res!691907 () Bool)

(assert (=> d!124851 (=> res!691907 e!586251)))

(declare-fun lt!457168 () Bool)

(assert (=> d!124851 (= res!691907 (not lt!457168))))

(declare-fun lt!457167 () Bool)

(assert (=> d!124851 (= lt!457168 lt!457167)))

(declare-fun lt!457169 () Unit!33873)

(declare-fun e!586250 () Unit!33873)

(assert (=> d!124851 (= lt!457169 e!586250)))

(declare-fun c!104870 () Bool)

(assert (=> d!124851 (= c!104870 lt!457167)))

(assert (=> d!124851 (= lt!457167 (containsKey!565 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(assert (=> d!124851 (= (contains!6044 lt!456918 (_1!7929 (tuple2!15839 lt!456869 lt!456768))) lt!457168)))

(declare-fun b!1036506 () Bool)

(declare-fun lt!457166 () Unit!33873)

(assert (=> b!1036506 (= e!586250 lt!457166)))

(assert (=> b!1036506 (= lt!457166 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(assert (=> b!1036506 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036507 () Bool)

(declare-fun Unit!33897 () Unit!33873)

(assert (=> b!1036507 (= e!586250 Unit!33897)))

(declare-fun b!1036508 () Bool)

(assert (=> b!1036508 (= e!586251 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(assert (= (and d!124851 c!104870) b!1036506))

(assert (= (and d!124851 (not c!104870)) b!1036507))

(assert (= (and d!124851 (not res!691907)) b!1036508))

(declare-fun m!956817 () Bool)

(assert (=> d!124851 m!956817))

(declare-fun m!956819 () Bool)

(assert (=> b!1036506 m!956819))

(assert (=> b!1036506 m!955939))

(assert (=> b!1036506 m!955939))

(declare-fun m!956821 () Bool)

(assert (=> b!1036506 m!956821))

(assert (=> b!1036508 m!955939))

(assert (=> b!1036508 m!955939))

(assert (=> b!1036508 m!956821))

(assert (=> d!124539 d!124851))

(declare-fun d!124853 () Bool)

(declare-fun c!104871 () Bool)

(assert (=> d!124853 (= c!104871 (and ((_ is Cons!22031) lt!456916) (= (_1!7929 (h!23233 lt!456916)) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(declare-fun e!586252 () Option!643)

(assert (=> d!124853 (= (getValueByKey!592 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768))) e!586252)))

(declare-fun b!1036510 () Bool)

(declare-fun e!586253 () Option!643)

(assert (=> b!1036510 (= e!586252 e!586253)))

(declare-fun c!104872 () Bool)

(assert (=> b!1036510 (= c!104872 (and ((_ is Cons!22031) lt!456916) (not (= (_1!7929 (h!23233 lt!456916)) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))))

(declare-fun b!1036512 () Bool)

(assert (=> b!1036512 (= e!586253 None!641)))

(declare-fun b!1036511 () Bool)

(assert (=> b!1036511 (= e!586253 (getValueByKey!592 (t!31249 lt!456916) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036509 () Bool)

(assert (=> b!1036509 (= e!586252 (Some!642 (_2!7929 (h!23233 lt!456916))))))

(assert (= (and d!124853 c!104871) b!1036509))

(assert (= (and d!124853 (not c!104871)) b!1036510))

(assert (= (and b!1036510 c!104872) b!1036511))

(assert (= (and b!1036510 (not c!104872)) b!1036512))

(declare-fun m!956823 () Bool)

(assert (=> b!1036511 m!956823))

(assert (=> d!124539 d!124853))

(declare-fun d!124855 () Bool)

(assert (=> d!124855 (= (getValueByKey!592 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun lt!457170 () Unit!33873)

(assert (=> d!124855 (= lt!457170 (choose!1712 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun e!586254 () Bool)

(assert (=> d!124855 e!586254))

(declare-fun res!691908 () Bool)

(assert (=> d!124855 (=> (not res!691908) (not e!586254))))

(assert (=> d!124855 (= res!691908 (isStrictlySorted!715 lt!456916))))

(assert (=> d!124855 (= (lemmaContainsTupThenGetReturnValue!281 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))) lt!457170)))

(declare-fun b!1036513 () Bool)

(declare-fun res!691909 () Bool)

(assert (=> b!1036513 (=> (not res!691909) (not e!586254))))

(assert (=> b!1036513 (= res!691909 (containsKey!565 lt!456916 (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036514 () Bool)

(assert (=> b!1036514 (= e!586254 (contains!6045 lt!456916 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(assert (= (and d!124855 res!691908) b!1036513))

(assert (= (and b!1036513 res!691909) b!1036514))

(assert (=> d!124855 m!955933))

(declare-fun m!956825 () Bool)

(assert (=> d!124855 m!956825))

(declare-fun m!956827 () Bool)

(assert (=> d!124855 m!956827))

(declare-fun m!956829 () Bool)

(assert (=> b!1036513 m!956829))

(declare-fun m!956831 () Bool)

(assert (=> b!1036514 m!956831))

(assert (=> d!124539 d!124855))

(declare-fun b!1036515 () Bool)

(declare-fun e!586255 () List!22035)

(declare-fun e!586256 () List!22035)

(assert (=> b!1036515 (= e!586255 e!586256)))

(declare-fun c!104876 () Bool)

(assert (=> b!1036515 (= c!104876 (and ((_ is Cons!22031) (toList!6953 lt!456853)) (= (_1!7929 (h!23233 (toList!6953 lt!456853))) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(declare-fun b!1036516 () Bool)

(declare-fun e!586258 () List!22035)

(declare-fun call!43880 () List!22035)

(assert (=> b!1036516 (= e!586258 call!43880)))

(declare-fun e!586259 () List!22035)

(declare-fun call!43879 () List!22035)

(declare-fun bm!43876 () Bool)

(declare-fun c!104873 () Bool)

(assert (=> bm!43876 (= call!43879 ($colon$colon!606 e!586259 (ite c!104873 (h!23233 (toList!6953 lt!456853)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))))

(declare-fun c!104874 () Bool)

(assert (=> bm!43876 (= c!104874 c!104873)))

(declare-fun d!124857 () Bool)

(declare-fun e!586257 () Bool)

(assert (=> d!124857 e!586257))

(declare-fun res!691910 () Bool)

(assert (=> d!124857 (=> (not res!691910) (not e!586257))))

(declare-fun lt!457171 () List!22035)

(assert (=> d!124857 (= res!691910 (isStrictlySorted!715 lt!457171))))

(assert (=> d!124857 (= lt!457171 e!586255)))

(assert (=> d!124857 (= c!104873 (and ((_ is Cons!22031) (toList!6953 lt!456853)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456853))) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(assert (=> d!124857 (isStrictlySorted!715 (toList!6953 lt!456853))))

(assert (=> d!124857 (= (insertStrictlySorted!373 (toList!6953 lt!456853) (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))) lt!457171)))

(declare-fun b!1036517 () Bool)

(declare-fun c!104875 () Bool)

(assert (=> b!1036517 (= c!104875 (and ((_ is Cons!22031) (toList!6953 lt!456853)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456853))) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(assert (=> b!1036517 (= e!586256 e!586258)))

(declare-fun b!1036518 () Bool)

(assert (=> b!1036518 (= e!586259 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456853)) (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036519 () Bool)

(declare-fun res!691911 () Bool)

(assert (=> b!1036519 (=> (not res!691911) (not e!586257))))

(assert (=> b!1036519 (= res!691911 (containsKey!565 lt!457171 (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036520 () Bool)

(assert (=> b!1036520 (= e!586255 call!43879)))

(declare-fun bm!43877 () Bool)

(declare-fun call!43881 () List!22035)

(assert (=> bm!43877 (= call!43880 call!43881)))

(declare-fun b!1036521 () Bool)

(assert (=> b!1036521 (= e!586257 (contains!6045 lt!457171 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456869 lt!456768)) (_2!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(declare-fun b!1036522 () Bool)

(assert (=> b!1036522 (= e!586258 call!43880)))

(declare-fun bm!43878 () Bool)

(assert (=> bm!43878 (= call!43881 call!43879)))

(declare-fun b!1036523 () Bool)

(assert (=> b!1036523 (= e!586259 (ite c!104876 (t!31249 (toList!6953 lt!456853)) (ite c!104875 (Cons!22031 (h!23233 (toList!6953 lt!456853)) (t!31249 (toList!6953 lt!456853))) Nil!22032)))))

(declare-fun b!1036524 () Bool)

(assert (=> b!1036524 (= e!586256 call!43881)))

(assert (= (and d!124857 c!104873) b!1036520))

(assert (= (and d!124857 (not c!104873)) b!1036515))

(assert (= (and b!1036515 c!104876) b!1036524))

(assert (= (and b!1036515 (not c!104876)) b!1036517))

(assert (= (and b!1036517 c!104875) b!1036522))

(assert (= (and b!1036517 (not c!104875)) b!1036516))

(assert (= (or b!1036522 b!1036516) bm!43877))

(assert (= (or b!1036524 bm!43877) bm!43878))

(assert (= (or b!1036520 bm!43878) bm!43876))

(assert (= (and bm!43876 c!104874) b!1036518))

(assert (= (and bm!43876 (not c!104874)) b!1036523))

(assert (= (and d!124857 res!691910) b!1036519))

(assert (= (and b!1036519 res!691911) b!1036521))

(declare-fun m!956833 () Bool)

(assert (=> b!1036521 m!956833))

(declare-fun m!956835 () Bool)

(assert (=> bm!43876 m!956835))

(declare-fun m!956837 () Bool)

(assert (=> b!1036518 m!956837))

(declare-fun m!956839 () Bool)

(assert (=> b!1036519 m!956839))

(declare-fun m!956841 () Bool)

(assert (=> d!124857 m!956841))

(declare-fun m!956843 () Bool)

(assert (=> d!124857 m!956843))

(assert (=> d!124539 d!124857))

(declare-fun d!124859 () Bool)

(assert (=> d!124859 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!14932 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124607 d!124859))

(declare-fun d!124861 () Bool)

(declare-fun c!104877 () Bool)

(assert (=> d!124861 (= c!104877 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586260 () Option!643)

(assert (=> d!124861 (= (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000) e!586260)))

(declare-fun b!1036526 () Bool)

(declare-fun e!586261 () Option!643)

(assert (=> b!1036526 (= e!586260 e!586261)))

(declare-fun c!104878 () Bool)

(assert (=> b!1036526 (= c!104878 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036528 () Bool)

(assert (=> b!1036528 (= e!586261 None!641)))

(declare-fun b!1036527 () Bool)

(assert (=> b!1036527 (= e!586261 (getValueByKey!592 (t!31249 (toList!6953 lt!456866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036525 () Bool)

(assert (=> b!1036525 (= e!586260 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456866)))))))

(assert (= (and d!124861 c!104877) b!1036525))

(assert (= (and d!124861 (not c!104877)) b!1036526))

(assert (= (and b!1036526 c!104878) b!1036527))

(assert (= (and b!1036526 (not c!104878)) b!1036528))

(declare-fun m!956845 () Bool)

(assert (=> b!1036527 m!956845))

(assert (=> d!124607 d!124861))

(declare-fun d!124863 () Bool)

(assert (=> d!124863 (= ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) #b1000000000000000000000000000000000000000000000000000000000000000) (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) (Cons!22031 (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) (removeStrictlySorted!58 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036184 d!124863))

(declare-fun b!1036529 () Bool)

(declare-fun e!586264 () List!22035)

(declare-fun e!586263 () List!22035)

(assert (=> b!1036529 (= e!586264 e!586263)))

(declare-fun c!104880 () Bool)

(assert (=> b!1036529 (= c!104880 (and ((_ is Cons!22031) (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) (not (= (_1!7929 (h!23233 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!124865 () Bool)

(declare-fun e!586262 () Bool)

(assert (=> d!124865 e!586262))

(declare-fun res!691912 () Bool)

(assert (=> d!124865 (=> (not res!691912) (not e!586262))))

(declare-fun lt!457172 () List!22035)

(assert (=> d!124865 (= res!691912 (isStrictlySorted!715 lt!457172))))

(assert (=> d!124865 (= lt!457172 e!586264)))

(declare-fun c!104879 () Bool)

(assert (=> d!124865 (= c!104879 (and ((_ is Cons!22031) (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) (= (_1!7929 (h!23233 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124865 (isStrictlySorted!715 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))))

(assert (=> d!124865 (= (removeStrictlySorted!58 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457172)))

(declare-fun b!1036530 () Bool)

(assert (=> b!1036530 (= e!586264 (t!31249 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))))))

(declare-fun b!1036531 () Bool)

(assert (=> b!1036531 (= e!586262 (not (containsKey!565 lt!457172 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036532 () Bool)

(assert (=> b!1036532 (= e!586263 Nil!22032)))

(declare-fun b!1036533 () Bool)

(assert (=> b!1036533 (= e!586263 ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) #b1000000000000000000000000000000000000000000000000000000000000000) (h!23233 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))))))

(assert (= (and d!124865 c!104879) b!1036530))

(assert (= (and d!124865 (not c!104879)) b!1036529))

(assert (= (and b!1036529 c!104880) b!1036533))

(assert (= (and b!1036529 (not c!104880)) b!1036532))

(assert (= (and d!124865 res!691912) b!1036531))

(declare-fun m!956847 () Bool)

(assert (=> d!124865 m!956847))

(declare-fun m!956849 () Bool)

(assert (=> d!124865 m!956849))

(declare-fun m!956851 () Bool)

(assert (=> b!1036531 m!956851))

(declare-fun m!956853 () Bool)

(assert (=> b!1036533 m!956853))

(assert (=> b!1036533 m!956853))

(declare-fun m!956855 () Bool)

(assert (=> b!1036533 m!956855))

(assert (=> b!1036184 d!124865))

(declare-fun d!124867 () Bool)

(declare-fun res!691913 () Bool)

(declare-fun e!586265 () Bool)

(assert (=> d!124867 (=> res!691913 e!586265)))

(assert (=> d!124867 (= res!691913 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124867 (= (containsKey!565 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000) e!586265)))

(declare-fun b!1036534 () Bool)

(declare-fun e!586266 () Bool)

(assert (=> b!1036534 (= e!586265 e!586266)))

(declare-fun res!691914 () Bool)

(assert (=> b!1036534 (=> (not res!691914) (not e!586266))))

(assert (=> b!1036534 (= res!691914 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456840))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456840))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) (toList!6953 lt!456840)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456840))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036535 () Bool)

(assert (=> b!1036535 (= e!586266 (containsKey!565 (t!31249 (toList!6953 lt!456840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124867 (not res!691913)) b!1036534))

(assert (= (and b!1036534 res!691914) b!1036535))

(declare-fun m!956857 () Bool)

(assert (=> b!1036535 m!956857))

(assert (=> d!124603 d!124867))

(declare-fun d!124869 () Bool)

(declare-fun res!691919 () Bool)

(declare-fun e!586271 () Bool)

(assert (=> d!124869 (=> res!691919 e!586271)))

(assert (=> d!124869 (= res!691919 (or ((_ is Nil!22032) lt!456945) ((_ is Nil!22032) (t!31249 lt!456945))))))

(assert (=> d!124869 (= (isStrictlySorted!715 lt!456945) e!586271)))

(declare-fun b!1036540 () Bool)

(declare-fun e!586272 () Bool)

(assert (=> b!1036540 (= e!586271 e!586272)))

(declare-fun res!691920 () Bool)

(assert (=> b!1036540 (=> (not res!691920) (not e!586272))))

(assert (=> b!1036540 (= res!691920 (bvslt (_1!7929 (h!23233 lt!456945)) (_1!7929 (h!23233 (t!31249 lt!456945)))))))

(declare-fun b!1036541 () Bool)

(assert (=> b!1036541 (= e!586272 (isStrictlySorted!715 (t!31249 lt!456945)))))

(assert (= (and d!124869 (not res!691919)) b!1036540))

(assert (= (and b!1036540 res!691920) b!1036541))

(declare-fun m!956859 () Bool)

(assert (=> b!1036541 m!956859))

(assert (=> d!124571 d!124869))

(declare-fun d!124871 () Bool)

(declare-fun res!691921 () Bool)

(declare-fun e!586273 () Bool)

(assert (=> d!124871 (=> res!691921 e!586273)))

(assert (=> d!124871 (= res!691921 (or ((_ is Nil!22032) (toList!6953 (map!14734 thiss!1427))) ((_ is Nil!22032) (t!31249 (toList!6953 (map!14734 thiss!1427))))))))

(assert (=> d!124871 (= (isStrictlySorted!715 (toList!6953 (map!14734 thiss!1427))) e!586273)))

(declare-fun b!1036542 () Bool)

(declare-fun e!586274 () Bool)

(assert (=> b!1036542 (= e!586273 e!586274)))

(declare-fun res!691922 () Bool)

(assert (=> b!1036542 (=> (not res!691922) (not e!586274))))

(assert (=> b!1036542 (= res!691922 (bvslt (_1!7929 (h!23233 (toList!6953 (map!14734 thiss!1427)))) (_1!7929 (h!23233 (t!31249 (toList!6953 (map!14734 thiss!1427)))))))))

(declare-fun b!1036543 () Bool)

(assert (=> b!1036543 (= e!586274 (isStrictlySorted!715 (t!31249 (toList!6953 (map!14734 thiss!1427)))))))

(assert (= (and d!124871 (not res!691921)) b!1036542))

(assert (= (and b!1036542 res!691922) b!1036543))

(declare-fun m!956861 () Bool)

(assert (=> b!1036543 m!956861))

(assert (=> d!124571 d!124871))

(declare-fun lt!457173 () Bool)

(declare-fun d!124873 () Bool)

(assert (=> d!124873 (= lt!457173 (select (content!518 (toList!6953 lt!456965)) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun e!586276 () Bool)

(assert (=> d!124873 (= lt!457173 e!586276)))

(declare-fun res!691923 () Bool)

(assert (=> d!124873 (=> (not res!691923) (not e!586276))))

(assert (=> d!124873 (= res!691923 ((_ is Cons!22031) (toList!6953 lt!456965)))))

(assert (=> d!124873 (= (contains!6045 (toList!6953 lt!456965) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) lt!457173)))

(declare-fun b!1036544 () Bool)

(declare-fun e!586275 () Bool)

(assert (=> b!1036544 (= e!586276 e!586275)))

(declare-fun res!691924 () Bool)

(assert (=> b!1036544 (=> res!691924 e!586275)))

(assert (=> b!1036544 (= res!691924 (= (h!23233 (toList!6953 lt!456965)) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036545 () Bool)

(assert (=> b!1036545 (= e!586275 (contains!6045 (t!31249 (toList!6953 lt!456965)) (ite (or c!104716 c!104715) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (= (and d!124873 res!691923) b!1036544))

(assert (= (and b!1036544 (not res!691924)) b!1036545))

(declare-fun m!956863 () Bool)

(assert (=> d!124873 m!956863))

(declare-fun m!956865 () Bool)

(assert (=> d!124873 m!956865))

(declare-fun m!956867 () Bool)

(assert (=> b!1036545 m!956867))

(assert (=> b!1036123 d!124873))

(declare-fun d!124875 () Bool)

(declare-fun e!586278 () Bool)

(assert (=> d!124875 e!586278))

(declare-fun res!691925 () Bool)

(assert (=> d!124875 (=> res!691925 e!586278)))

(declare-fun lt!457176 () Bool)

(assert (=> d!124875 (= res!691925 (not lt!457176))))

(declare-fun lt!457175 () Bool)

(assert (=> d!124875 (= lt!457176 lt!457175)))

(declare-fun lt!457177 () Unit!33873)

(declare-fun e!586277 () Unit!33873)

(assert (=> d!124875 (= lt!457177 e!586277)))

(declare-fun c!104881 () Bool)

(assert (=> d!124875 (= c!104881 lt!457175)))

(assert (=> d!124875 (= lt!457175 (containsKey!565 (toList!6953 lt!457028) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124875 (= (contains!6044 lt!457028 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457176)))

(declare-fun b!1036546 () Bool)

(declare-fun lt!457174 () Unit!33873)

(assert (=> b!1036546 (= e!586277 lt!457174)))

(assert (=> b!1036546 (= lt!457174 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457028) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036546 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036547 () Bool)

(declare-fun Unit!33898 () Unit!33873)

(assert (=> b!1036547 (= e!586277 Unit!33898)))

(declare-fun b!1036548 () Bool)

(assert (=> b!1036548 (= e!586278 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124875 c!104881) b!1036546))

(assert (= (and d!124875 (not c!104881)) b!1036547))

(assert (= (and d!124875 (not res!691925)) b!1036548))

(declare-fun m!956869 () Bool)

(assert (=> d!124875 m!956869))

(declare-fun m!956871 () Bool)

(assert (=> b!1036546 m!956871))

(declare-fun m!956873 () Bool)

(assert (=> b!1036546 m!956873))

(assert (=> b!1036546 m!956873))

(declare-fun m!956875 () Bool)

(assert (=> b!1036546 m!956875))

(assert (=> b!1036548 m!956873))

(assert (=> b!1036548 m!956873))

(assert (=> b!1036548 m!956875))

(assert (=> bm!43845 d!124875))

(declare-fun b!1036549 () Bool)

(declare-fun e!586279 () Bool)

(declare-fun e!586281 () Bool)

(assert (=> b!1036549 (= e!586279 e!586281)))

(declare-fun lt!457180 () (_ BitVec 64))

(assert (=> b!1036549 (= lt!457180 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!457179 () Unit!33873)

(assert (=> b!1036549 (= lt!457179 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 thiss!1427) lt!457180 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1036549 (arrayContainsKey!0 (_keys!11456 thiss!1427) lt!457180 #b00000000000000000000000000000000)))

(declare-fun lt!457178 () Unit!33873)

(assert (=> b!1036549 (= lt!457178 lt!457179)))

(declare-fun res!691926 () Bool)

(assert (=> b!1036549 (= res!691926 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)) (Found!9741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036549 (=> (not res!691926) (not e!586281))))

(declare-fun b!1036550 () Bool)

(declare-fun e!586280 () Bool)

(assert (=> b!1036550 (= e!586280 e!586279)))

(declare-fun c!104882 () Bool)

(assert (=> b!1036550 (= c!104882 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!43879 () Bool)

(declare-fun call!43882 () Bool)

(assert (=> bm!43879 (= call!43882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)))))

(declare-fun b!1036551 () Bool)

(assert (=> b!1036551 (= e!586281 call!43882)))

(declare-fun d!124877 () Bool)

(declare-fun res!691927 () Bool)

(assert (=> d!124877 (=> res!691927 e!586280)))

(assert (=> d!124877 (= res!691927 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124877 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)) e!586280)))

(declare-fun b!1036552 () Bool)

(assert (=> b!1036552 (= e!586279 call!43882)))

(assert (= (and d!124877 (not res!691927)) b!1036550))

(assert (= (and b!1036550 c!104882) b!1036549))

(assert (= (and b!1036550 (not c!104882)) b!1036552))

(assert (= (and b!1036549 res!691926) b!1036551))

(assert (= (or b!1036551 b!1036552) bm!43879))

(assert (=> b!1036549 m!956381))

(declare-fun m!956877 () Bool)

(assert (=> b!1036549 m!956877))

(declare-fun m!956879 () Bool)

(assert (=> b!1036549 m!956879))

(assert (=> b!1036549 m!956381))

(declare-fun m!956881 () Bool)

(assert (=> b!1036549 m!956881))

(assert (=> b!1036550 m!956381))

(assert (=> b!1036550 m!956381))

(assert (=> b!1036550 m!956391))

(declare-fun m!956883 () Bool)

(assert (=> bm!43879 m!956883))

(assert (=> bm!43836 d!124877))

(assert (=> b!1036080 d!124573))

(declare-fun d!124879 () Bool)

(declare-fun c!104883 () Bool)

(assert (=> d!124879 (= c!104883 (and ((_ is Cons!22031) (toList!6953 lt!457041)) (= (_1!7929 (h!23233 (toList!6953 lt!457041))) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586282 () Option!643)

(assert (=> d!124879 (= (getValueByKey!592 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) e!586282)))

(declare-fun b!1036554 () Bool)

(declare-fun e!586283 () Option!643)

(assert (=> b!1036554 (= e!586282 e!586283)))

(declare-fun c!104884 () Bool)

(assert (=> b!1036554 (= c!104884 (and ((_ is Cons!22031) (toList!6953 lt!457041)) (not (= (_1!7929 (h!23233 (toList!6953 lt!457041))) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036556 () Bool)

(assert (=> b!1036556 (= e!586283 None!641)))

(declare-fun b!1036555 () Bool)

(assert (=> b!1036555 (= e!586283 (getValueByKey!592 (t!31249 (toList!6953 lt!457041)) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036553 () Bool)

(assert (=> b!1036553 (= e!586282 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!457041)))))))

(assert (= (and d!124879 c!104883) b!1036553))

(assert (= (and d!124879 (not c!104883)) b!1036554))

(assert (= (and b!1036554 c!104884) b!1036555))

(assert (= (and b!1036554 (not c!104884)) b!1036556))

(declare-fun m!956885 () Bool)

(assert (=> b!1036555 m!956885))

(assert (=> b!1036207 d!124879))

(declare-fun d!124881 () Bool)

(declare-fun e!586285 () Bool)

(assert (=> d!124881 e!586285))

(declare-fun res!691928 () Bool)

(assert (=> d!124881 (=> res!691928 e!586285)))

(declare-fun lt!457183 () Bool)

(assert (=> d!124881 (= res!691928 (not lt!457183))))

(declare-fun lt!457182 () Bool)

(assert (=> d!124881 (= lt!457183 lt!457182)))

(declare-fun lt!457184 () Unit!33873)

(declare-fun e!586284 () Unit!33873)

(assert (=> d!124881 (= lt!457184 e!586284)))

(declare-fun c!104885 () Bool)

(assert (=> d!124881 (= c!104885 lt!457182)))

(assert (=> d!124881 (= lt!457182 (containsKey!565 (toList!6953 lt!456948) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124881 (= (contains!6044 lt!456948 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457183)))

(declare-fun b!1036557 () Bool)

(declare-fun lt!457181 () Unit!33873)

(assert (=> b!1036557 (= e!586284 lt!457181)))

(assert (=> b!1036557 (= lt!457181 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456948) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036557 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036558 () Bool)

(declare-fun Unit!33899 () Unit!33873)

(assert (=> b!1036558 (= e!586284 Unit!33899)))

(declare-fun b!1036559 () Bool)

(assert (=> b!1036559 (= e!586285 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!124881 c!104885) b!1036557))

(assert (= (and d!124881 (not c!104885)) b!1036558))

(assert (= (and d!124881 (not res!691928)) b!1036559))

(assert (=> d!124881 m!955785))

(declare-fun m!956887 () Bool)

(assert (=> d!124881 m!956887))

(assert (=> b!1036557 m!955785))

(declare-fun m!956889 () Bool)

(assert (=> b!1036557 m!956889))

(assert (=> b!1036557 m!955785))

(declare-fun m!956891 () Bool)

(assert (=> b!1036557 m!956891))

(assert (=> b!1036557 m!956891))

(declare-fun m!956893 () Bool)

(assert (=> b!1036557 m!956893))

(assert (=> b!1036559 m!955785))

(assert (=> b!1036559 m!956891))

(assert (=> b!1036559 m!956891))

(assert (=> b!1036559 m!956893))

(assert (=> b!1036088 d!124881))

(declare-fun d!124883 () Bool)

(declare-fun e!586287 () Bool)

(assert (=> d!124883 e!586287))

(declare-fun res!691929 () Bool)

(assert (=> d!124883 (=> res!691929 e!586287)))

(declare-fun lt!457187 () Bool)

(assert (=> d!124883 (= res!691929 (not lt!457187))))

(declare-fun lt!457186 () Bool)

(assert (=> d!124883 (= lt!457187 lt!457186)))

(declare-fun lt!457188 () Unit!33873)

(declare-fun e!586286 () Unit!33873)

(assert (=> d!124883 (= lt!457188 e!586286)))

(declare-fun c!104886 () Bool)

(assert (=> d!124883 (= c!104886 lt!457186)))

(assert (=> d!124883 (= lt!457186 (containsKey!565 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (=> d!124883 (= (contains!6044 lt!456991 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) lt!457187)))

(declare-fun b!1036560 () Bool)

(declare-fun lt!457185 () Unit!33873)

(assert (=> b!1036560 (= e!586286 lt!457185)))

(assert (=> b!1036560 (= lt!457185 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(assert (=> b!1036560 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036561 () Bool)

(declare-fun Unit!33900 () Unit!33873)

(assert (=> b!1036561 (= e!586286 Unit!33900)))

(declare-fun b!1036562 () Bool)

(assert (=> b!1036562 (= e!586287 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456991) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (= (and d!124883 c!104886) b!1036560))

(assert (= (and d!124883 (not c!104886)) b!1036561))

(assert (= (and d!124883 (not res!691929)) b!1036562))

(declare-fun m!956895 () Bool)

(assert (=> d!124883 m!956895))

(declare-fun m!956897 () Bool)

(assert (=> b!1036560 m!956897))

(assert (=> b!1036560 m!956161))

(assert (=> b!1036560 m!956161))

(declare-fun m!956899 () Bool)

(assert (=> b!1036560 m!956899))

(assert (=> b!1036562 m!956161))

(assert (=> b!1036562 m!956161))

(assert (=> b!1036562 m!956899))

(assert (=> d!124609 d!124883))

(declare-fun d!124885 () Bool)

(declare-fun c!104887 () Bool)

(assert (=> d!124885 (= c!104887 (and ((_ is Cons!22031) lt!456989) (= (_1!7929 (h!23233 lt!456989)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun e!586288 () Option!643)

(assert (=> d!124885 (= (getValueByKey!592 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) e!586288)))

(declare-fun b!1036564 () Bool)

(declare-fun e!586289 () Option!643)

(assert (=> b!1036564 (= e!586288 e!586289)))

(declare-fun c!104888 () Bool)

(assert (=> b!1036564 (= c!104888 (and ((_ is Cons!22031) lt!456989) (not (= (_1!7929 (h!23233 lt!456989)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun b!1036566 () Bool)

(assert (=> b!1036566 (= e!586289 None!641)))

(declare-fun b!1036565 () Bool)

(assert (=> b!1036565 (= e!586289 (getValueByKey!592 (t!31249 lt!456989) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036563 () Bool)

(assert (=> b!1036563 (= e!586288 (Some!642 (_2!7929 (h!23233 lt!456989))))))

(assert (= (and d!124885 c!104887) b!1036563))

(assert (= (and d!124885 (not c!104887)) b!1036564))

(assert (= (and b!1036564 c!104888) b!1036565))

(assert (= (and b!1036564 (not c!104888)) b!1036566))

(declare-fun m!956901 () Bool)

(assert (=> b!1036565 m!956901))

(assert (=> d!124609 d!124885))

(declare-fun d!124887 () Bool)

(assert (=> d!124887 (= (getValueByKey!592 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun lt!457189 () Unit!33873)

(assert (=> d!124887 (= lt!457189 (choose!1712 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun e!586290 () Bool)

(assert (=> d!124887 e!586290))

(declare-fun res!691930 () Bool)

(assert (=> d!124887 (=> (not res!691930) (not e!586290))))

(assert (=> d!124887 (= res!691930 (isStrictlySorted!715 lt!456989))))

(assert (=> d!124887 (= (lemmaContainsTupThenGetReturnValue!281 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) lt!457189)))

(declare-fun b!1036567 () Bool)

(declare-fun res!691931 () Bool)

(assert (=> b!1036567 (=> (not res!691931) (not e!586290))))

(assert (=> b!1036567 (= res!691931 (containsKey!565 lt!456989 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036568 () Bool)

(assert (=> b!1036568 (= e!586290 (contains!6045 lt!456989 (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (= (and d!124887 res!691930) b!1036567))

(assert (= (and b!1036567 res!691931) b!1036568))

(assert (=> d!124887 m!956155))

(declare-fun m!956903 () Bool)

(assert (=> d!124887 m!956903))

(declare-fun m!956905 () Bool)

(assert (=> d!124887 m!956905))

(declare-fun m!956907 () Bool)

(assert (=> b!1036567 m!956907))

(declare-fun m!956909 () Bool)

(assert (=> b!1036568 m!956909))

(assert (=> d!124609 d!124887))

(declare-fun b!1036569 () Bool)

(declare-fun e!586291 () List!22035)

(declare-fun e!586292 () List!22035)

(assert (=> b!1036569 (= e!586291 e!586292)))

(declare-fun c!104892 () Bool)

(assert (=> b!1036569 (= c!104892 (and ((_ is Cons!22031) (toList!6953 call!43826)) (= (_1!7929 (h!23233 (toList!6953 call!43826))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036570 () Bool)

(declare-fun e!586294 () List!22035)

(declare-fun call!43884 () List!22035)

(assert (=> b!1036570 (= e!586294 call!43884)))

(declare-fun bm!43880 () Bool)

(declare-fun c!104889 () Bool)

(declare-fun call!43883 () List!22035)

(declare-fun e!586295 () List!22035)

(assert (=> bm!43880 (= call!43883 ($colon$colon!606 e!586295 (ite c!104889 (h!23233 (toList!6953 call!43826)) (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))))

(declare-fun c!104890 () Bool)

(assert (=> bm!43880 (= c!104890 c!104889)))

(declare-fun d!124889 () Bool)

(declare-fun e!586293 () Bool)

(assert (=> d!124889 e!586293))

(declare-fun res!691932 () Bool)

(assert (=> d!124889 (=> (not res!691932) (not e!586293))))

(declare-fun lt!457190 () List!22035)

(assert (=> d!124889 (= res!691932 (isStrictlySorted!715 lt!457190))))

(assert (=> d!124889 (= lt!457190 e!586291)))

(assert (=> d!124889 (= c!104889 (and ((_ is Cons!22031) (toList!6953 call!43826)) (bvslt (_1!7929 (h!23233 (toList!6953 call!43826))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> d!124889 (isStrictlySorted!715 (toList!6953 call!43826))))

(assert (=> d!124889 (= (insertStrictlySorted!373 (toList!6953 call!43826) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))) lt!457190)))

(declare-fun b!1036571 () Bool)

(declare-fun c!104891 () Bool)

(assert (=> b!1036571 (= c!104891 (and ((_ is Cons!22031) (toList!6953 call!43826)) (bvsgt (_1!7929 (h!23233 (toList!6953 call!43826))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(assert (=> b!1036571 (= e!586292 e!586294)))

(declare-fun b!1036572 () Bool)

(assert (=> b!1036572 (= e!586295 (insertStrictlySorted!373 (t!31249 (toList!6953 call!43826)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036573 () Bool)

(declare-fun res!691933 () Bool)

(assert (=> b!1036573 (=> (not res!691933) (not e!586293))))

(assert (=> b!1036573 (= res!691933 (containsKey!565 lt!457190 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768))))))

(declare-fun b!1036574 () Bool)

(assert (=> b!1036574 (= e!586291 call!43883)))

(declare-fun bm!43881 () Bool)

(declare-fun call!43885 () List!22035)

(assert (=> bm!43881 (= call!43884 call!43885)))

(declare-fun b!1036575 () Bool)

(assert (=> b!1036575 (= e!586293 (contains!6045 lt!457190 (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))))

(declare-fun b!1036576 () Bool)

(assert (=> b!1036576 (= e!586294 call!43884)))

(declare-fun bm!43882 () Bool)

(assert (=> bm!43882 (= call!43885 call!43883)))

(declare-fun b!1036577 () Bool)

(assert (=> b!1036577 (= e!586295 (ite c!104892 (t!31249 (toList!6953 call!43826)) (ite c!104891 (Cons!22031 (h!23233 (toList!6953 call!43826)) (t!31249 (toList!6953 call!43826))) Nil!22032)))))

(declare-fun b!1036578 () Bool)

(assert (=> b!1036578 (= e!586292 call!43885)))

(assert (= (and d!124889 c!104889) b!1036574))

(assert (= (and d!124889 (not c!104889)) b!1036569))

(assert (= (and b!1036569 c!104892) b!1036578))

(assert (= (and b!1036569 (not c!104892)) b!1036571))

(assert (= (and b!1036571 c!104891) b!1036576))

(assert (= (and b!1036571 (not c!104891)) b!1036570))

(assert (= (or b!1036576 b!1036570) bm!43881))

(assert (= (or b!1036578 bm!43881) bm!43882))

(assert (= (or b!1036574 bm!43882) bm!43880))

(assert (= (and bm!43880 c!104890) b!1036572))

(assert (= (and bm!43880 (not c!104890)) b!1036577))

(assert (= (and d!124889 res!691932) b!1036573))

(assert (= (and b!1036573 res!691933) b!1036575))

(declare-fun m!956911 () Bool)

(assert (=> b!1036575 m!956911))

(declare-fun m!956913 () Bool)

(assert (=> bm!43880 m!956913))

(declare-fun m!956915 () Bool)

(assert (=> b!1036572 m!956915))

(declare-fun m!956917 () Bool)

(assert (=> b!1036573 m!956917))

(declare-fun m!956919 () Bool)

(assert (=> d!124889 m!956919))

(declare-fun m!956921 () Bool)

(assert (=> d!124889 m!956921))

(assert (=> d!124609 d!124889))

(declare-fun d!124891 () Bool)

(declare-fun e!586297 () Bool)

(assert (=> d!124891 e!586297))

(declare-fun res!691934 () Bool)

(assert (=> d!124891 (=> res!691934 e!586297)))

(declare-fun lt!457193 () Bool)

(assert (=> d!124891 (= res!691934 (not lt!457193))))

(declare-fun lt!457192 () Bool)

(assert (=> d!124891 (= lt!457193 lt!457192)))

(declare-fun lt!457194 () Unit!33873)

(declare-fun e!586296 () Unit!33873)

(assert (=> d!124891 (= lt!457194 e!586296)))

(declare-fun c!104893 () Bool)

(assert (=> d!124891 (= c!104893 lt!457192)))

(assert (=> d!124891 (= lt!457192 (containsKey!565 (toList!6953 lt!456890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124891 (= (contains!6044 lt!456890 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457193)))

(declare-fun b!1036579 () Bool)

(declare-fun lt!457191 () Unit!33873)

(assert (=> b!1036579 (= e!586296 lt!457191)))

(assert (=> b!1036579 (= lt!457191 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036579 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036580 () Bool)

(declare-fun Unit!33901 () Unit!33873)

(assert (=> b!1036580 (= e!586296 Unit!33901)))

(declare-fun b!1036581 () Bool)

(assert (=> b!1036581 (= e!586297 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124891 c!104893) b!1036579))

(assert (= (and d!124891 (not c!104893)) b!1036580))

(assert (= (and d!124891 (not res!691934)) b!1036581))

(declare-fun m!956923 () Bool)

(assert (=> d!124891 m!956923))

(declare-fun m!956925 () Bool)

(assert (=> b!1036579 m!956925))

(declare-fun m!956927 () Bool)

(assert (=> b!1036579 m!956927))

(assert (=> b!1036579 m!956927))

(declare-fun m!956929 () Bool)

(assert (=> b!1036579 m!956929))

(assert (=> b!1036581 m!956927))

(assert (=> b!1036581 m!956927))

(assert (=> b!1036581 m!956929))

(assert (=> b!1036016 d!124891))

(declare-fun d!124893 () Bool)

(assert (=> d!124893 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) (v!14932 (getValueByKey!592 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124591 d!124893))

(assert (=> d!124591 d!124721))

(declare-fun d!124895 () Bool)

(assert (=> d!124895 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456853) lt!456862)) (v!14932 (getValueByKey!592 (toList!6953 lt!456853) lt!456862)))))

(assert (=> d!124543 d!124895))

(declare-fun d!124897 () Bool)

(declare-fun c!104894 () Bool)

(assert (=> d!124897 (= c!104894 (and ((_ is Cons!22031) (toList!6953 lt!456853)) (= (_1!7929 (h!23233 (toList!6953 lt!456853))) lt!456862)))))

(declare-fun e!586298 () Option!643)

(assert (=> d!124897 (= (getValueByKey!592 (toList!6953 lt!456853) lt!456862) e!586298)))

(declare-fun b!1036583 () Bool)

(declare-fun e!586299 () Option!643)

(assert (=> b!1036583 (= e!586298 e!586299)))

(declare-fun c!104895 () Bool)

(assert (=> b!1036583 (= c!104895 (and ((_ is Cons!22031) (toList!6953 lt!456853)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456853))) lt!456862))))))

(declare-fun b!1036585 () Bool)

(assert (=> b!1036585 (= e!586299 None!641)))

(declare-fun b!1036584 () Bool)

(assert (=> b!1036584 (= e!586299 (getValueByKey!592 (t!31249 (toList!6953 lt!456853)) lt!456862))))

(declare-fun b!1036582 () Bool)

(assert (=> b!1036582 (= e!586298 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456853)))))))

(assert (= (and d!124897 c!104894) b!1036582))

(assert (= (and d!124897 (not c!104894)) b!1036583))

(assert (= (and b!1036583 c!104895) b!1036584))

(assert (= (and b!1036583 (not c!104895)) b!1036585))

(declare-fun m!956931 () Bool)

(assert (=> b!1036584 m!956931))

(assert (=> d!124543 d!124897))

(declare-fun d!124899 () Bool)

(assert (=> d!124899 (= (apply!942 lt!457028 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) (get!16475 (getValueByKey!592 (toList!6953 lt!457028) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000))))))

(declare-fun bs!30348 () Bool)

(assert (= bs!30348 d!124899))

(assert (=> bs!30348 m!956101))

(assert (=> bs!30348 m!956715))

(assert (=> bs!30348 m!956715))

(declare-fun m!956933 () Bool)

(assert (=> bs!30348 m!956933))

(assert (=> b!1036200 d!124899))

(declare-fun d!124901 () Bool)

(declare-fun c!104896 () Bool)

(assert (=> d!124901 (= c!104896 ((_ is ValueCellFull!11595) (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun e!586300 () V!37669)

(assert (=> d!124901 (= (get!16474 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000)) e!586300)))

(declare-fun b!1036586 () Bool)

(assert (=> b!1036586 (= e!586300 (get!16476 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036587 () Bool)

(assert (=> b!1036587 (= e!586300 (get!16477 (select (arr!31420 (_values!6293 lt!456769)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 lt!456769) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124901 c!104896) b!1036586))

(assert (= (and d!124901 (not c!104896)) b!1036587))

(assert (=> b!1036586 m!956231))

(assert (=> b!1036586 m!956233))

(declare-fun m!956935 () Bool)

(assert (=> b!1036586 m!956935))

(assert (=> b!1036587 m!956231))

(assert (=> b!1036587 m!956233))

(declare-fun m!956937 () Bool)

(assert (=> b!1036587 m!956937))

(assert (=> b!1036200 d!124901))

(assert (=> b!1036176 d!124719))

(assert (=> b!1036176 d!124721))

(declare-fun d!124903 () Bool)

(assert (=> d!124903 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!457195 () Unit!33873)

(assert (=> d!124903 (= lt!457195 (choose!1711 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586301 () Bool)

(assert (=> d!124903 e!586301))

(declare-fun res!691935 () Bool)

(assert (=> d!124903 (=> (not res!691935) (not e!586301))))

(assert (=> d!124903 (= res!691935 (isStrictlySorted!715 (toList!6953 lt!456840)))))

(assert (=> d!124903 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457195)))

(declare-fun b!1036588 () Bool)

(assert (=> b!1036588 (= e!586301 (containsKey!565 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124903 res!691935) b!1036588))

(assert (=> d!124903 m!956121))

(assert (=> d!124903 m!956121))

(assert (=> d!124903 m!956199))

(declare-fun m!956939 () Bool)

(assert (=> d!124903 m!956939))

(assert (=> d!124903 m!956687))

(assert (=> b!1036588 m!956195))

(assert (=> b!1036171 d!124903))

(declare-fun d!124905 () Bool)

(assert (=> d!124905 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30349 () Bool)

(assert (= bs!30349 d!124905))

(assert (=> bs!30349 m!956121))

(declare-fun m!956941 () Bool)

(assert (=> bs!30349 m!956941))

(assert (=> b!1036171 d!124905))

(declare-fun d!124907 () Bool)

(declare-fun c!104897 () Bool)

(assert (=> d!124907 (= c!104897 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586302 () Option!643)

(assert (=> d!124907 (= (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000) e!586302)))

(declare-fun b!1036590 () Bool)

(declare-fun e!586303 () Option!643)

(assert (=> b!1036590 (= e!586302 e!586303)))

(declare-fun c!104898 () Bool)

(assert (=> b!1036590 (= c!104898 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036592 () Bool)

(assert (=> b!1036592 (= e!586303 None!641)))

(declare-fun b!1036591 () Bool)

(assert (=> b!1036591 (= e!586303 (getValueByKey!592 (t!31249 (toList!6953 lt!456840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036589 () Bool)

(assert (=> b!1036589 (= e!586302 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456840)))))))

(assert (= (and d!124907 c!104897) b!1036589))

(assert (= (and d!124907 (not c!104897)) b!1036590))

(assert (= (and b!1036590 c!104898) b!1036591))

(assert (= (and b!1036590 (not c!104898)) b!1036592))

(declare-fun m!956943 () Bool)

(assert (=> b!1036591 m!956943))

(assert (=> b!1036171 d!124907))

(assert (=> d!124637 d!124655))

(assert (=> d!124637 d!124639))

(declare-fun d!124909 () Bool)

(assert (=> d!124909 (contains!6044 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!456835)))

(assert (=> d!124909 true))

(declare-fun _$35!441 () Unit!33873)

(assert (=> d!124909 (= (choose!1710 lt!456845 lt!456842 (zeroValue!6104 thiss!1427) lt!456835) _$35!441)))

(declare-fun bs!30350 () Bool)

(assert (= bs!30350 d!124909))

(assert (=> bs!30350 m!955809))

(assert (=> bs!30350 m!955809))

(assert (=> bs!30350 m!955811))

(assert (=> d!124637 d!124909))

(declare-fun d!124911 () Bool)

(declare-fun e!586305 () Bool)

(assert (=> d!124911 e!586305))

(declare-fun res!691936 () Bool)

(assert (=> d!124911 (=> res!691936 e!586305)))

(declare-fun lt!457198 () Bool)

(assert (=> d!124911 (= res!691936 (not lt!457198))))

(declare-fun lt!457197 () Bool)

(assert (=> d!124911 (= lt!457198 lt!457197)))

(declare-fun lt!457199 () Unit!33873)

(declare-fun e!586304 () Unit!33873)

(assert (=> d!124911 (= lt!457199 e!586304)))

(declare-fun c!104899 () Bool)

(assert (=> d!124911 (= c!104899 lt!457197)))

(assert (=> d!124911 (= lt!457197 (containsKey!565 (toList!6953 lt!456845) lt!456835))))

(assert (=> d!124911 (= (contains!6044 lt!456845 lt!456835) lt!457198)))

(declare-fun b!1036594 () Bool)

(declare-fun lt!457196 () Unit!33873)

(assert (=> b!1036594 (= e!586304 lt!457196)))

(assert (=> b!1036594 (= lt!457196 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456845) lt!456835))))

(assert (=> b!1036594 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456845) lt!456835))))

(declare-fun b!1036595 () Bool)

(declare-fun Unit!33902 () Unit!33873)

(assert (=> b!1036595 (= e!586304 Unit!33902)))

(declare-fun b!1036596 () Bool)

(assert (=> b!1036596 (= e!586305 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456845) lt!456835)))))

(assert (= (and d!124911 c!104899) b!1036594))

(assert (= (and d!124911 (not c!104899)) b!1036595))

(assert (= (and d!124911 (not res!691936)) b!1036596))

(declare-fun m!956945 () Bool)

(assert (=> d!124911 m!956945))

(declare-fun m!956947 () Bool)

(assert (=> b!1036594 m!956947))

(declare-fun m!956949 () Bool)

(assert (=> b!1036594 m!956949))

(assert (=> b!1036594 m!956949))

(declare-fun m!956951 () Bool)

(assert (=> b!1036594 m!956951))

(assert (=> b!1036596 m!956949))

(assert (=> b!1036596 m!956949))

(assert (=> b!1036596 m!956951))

(assert (=> d!124637 d!124911))

(assert (=> b!1036085 d!124579))

(declare-fun d!124913 () Bool)

(declare-fun e!586306 () Bool)

(assert (=> d!124913 e!586306))

(declare-fun res!691937 () Bool)

(assert (=> d!124913 (=> (not res!691937) (not e!586306))))

(declare-fun lt!457203 () ListLongMap!13875)

(assert (=> d!124913 (= res!691937 (contains!6044 lt!457203 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!457201 () List!22035)

(assert (=> d!124913 (= lt!457203 (ListLongMap!13876 lt!457201))))

(declare-fun lt!457202 () Unit!33873)

(declare-fun lt!457200 () Unit!33873)

(assert (=> d!124913 (= lt!457202 lt!457200)))

(assert (=> d!124913 (= (getValueByKey!592 lt!457201 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!642 (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124913 (= lt!457200 (lemmaContainsTupThenGetReturnValue!281 lt!457201 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124913 (= lt!457201 (insertStrictlySorted!373 (toList!6953 call!43833) (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124913 (= (+!3065 call!43833 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!457203)))

(declare-fun b!1036597 () Bool)

(declare-fun res!691938 () Bool)

(assert (=> b!1036597 (=> (not res!691938) (not e!586306))))

(assert (=> b!1036597 (= res!691938 (= (getValueByKey!592 (toList!6953 lt!457203) (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!642 (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1036598 () Bool)

(assert (=> b!1036598 (= e!586306 (contains!6045 (toList!6953 lt!457203) (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!124913 res!691937) b!1036597))

(assert (= (and b!1036597 res!691938) b!1036598))

(declare-fun m!956953 () Bool)

(assert (=> d!124913 m!956953))

(declare-fun m!956955 () Bool)

(assert (=> d!124913 m!956955))

(declare-fun m!956957 () Bool)

(assert (=> d!124913 m!956957))

(declare-fun m!956959 () Bool)

(assert (=> d!124913 m!956959))

(declare-fun m!956961 () Bool)

(assert (=> b!1036597 m!956961))

(declare-fun m!956963 () Bool)

(assert (=> b!1036598 m!956963))

(assert (=> b!1036085 d!124913))

(declare-fun d!124915 () Bool)

(declare-fun e!586308 () Bool)

(assert (=> d!124915 e!586308))

(declare-fun res!691939 () Bool)

(assert (=> d!124915 (=> res!691939 e!586308)))

(declare-fun lt!457206 () Bool)

(assert (=> d!124915 (= res!691939 (not lt!457206))))

(declare-fun lt!457205 () Bool)

(assert (=> d!124915 (= lt!457206 lt!457205)))

(declare-fun lt!457207 () Unit!33873)

(declare-fun e!586307 () Unit!33873)

(assert (=> d!124915 (= lt!457207 e!586307)))

(declare-fun c!104900 () Bool)

(assert (=> d!124915 (= c!104900 lt!457205)))

(assert (=> d!124915 (= lt!457205 (containsKey!565 (toList!6953 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947))) lt!456952))))

(assert (=> d!124915 (= (contains!6044 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947)) lt!456952) lt!457206)))

(declare-fun b!1036599 () Bool)

(declare-fun lt!457204 () Unit!33873)

(assert (=> b!1036599 (= e!586307 lt!457204)))

(assert (=> b!1036599 (= lt!457204 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947))) lt!456952))))

(assert (=> b!1036599 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947))) lt!456952))))

(declare-fun b!1036600 () Bool)

(declare-fun Unit!33903 () Unit!33873)

(assert (=> b!1036600 (= e!586307 Unit!33903)))

(declare-fun b!1036601 () Bool)

(assert (=> b!1036601 (= e!586308 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947))) lt!456952)))))

(assert (= (and d!124915 c!104900) b!1036599))

(assert (= (and d!124915 (not c!104900)) b!1036600))

(assert (= (and d!124915 (not res!691939)) b!1036601))

(declare-fun m!956965 () Bool)

(assert (=> d!124915 m!956965))

(declare-fun m!956967 () Bool)

(assert (=> b!1036599 m!956967))

(declare-fun m!956969 () Bool)

(assert (=> b!1036599 m!956969))

(assert (=> b!1036599 m!956969))

(declare-fun m!956971 () Bool)

(assert (=> b!1036599 m!956971))

(assert (=> b!1036601 m!956969))

(assert (=> b!1036601 m!956969))

(assert (=> b!1036601 m!956971))

(assert (=> b!1036085 d!124915))

(declare-fun d!124917 () Bool)

(declare-fun e!586309 () Bool)

(assert (=> d!124917 e!586309))

(declare-fun res!691940 () Bool)

(assert (=> d!124917 (=> (not res!691940) (not e!586309))))

(declare-fun lt!457211 () ListLongMap!13875)

(assert (=> d!124917 (= res!691940 (contains!6044 lt!457211 (_1!7929 (tuple2!15839 lt!456951 lt!456947))))))

(declare-fun lt!457209 () List!22035)

(assert (=> d!124917 (= lt!457211 (ListLongMap!13876 lt!457209))))

(declare-fun lt!457210 () Unit!33873)

(declare-fun lt!457208 () Unit!33873)

(assert (=> d!124917 (= lt!457210 lt!457208)))

(assert (=> d!124917 (= (getValueByKey!592 lt!457209 (_1!7929 (tuple2!15839 lt!456951 lt!456947))) (Some!642 (_2!7929 (tuple2!15839 lt!456951 lt!456947))))))

(assert (=> d!124917 (= lt!457208 (lemmaContainsTupThenGetReturnValue!281 lt!457209 (_1!7929 (tuple2!15839 lt!456951 lt!456947)) (_2!7929 (tuple2!15839 lt!456951 lt!456947))))))

(assert (=> d!124917 (= lt!457209 (insertStrictlySorted!373 (toList!6953 lt!456950) (_1!7929 (tuple2!15839 lt!456951 lt!456947)) (_2!7929 (tuple2!15839 lt!456951 lt!456947))))))

(assert (=> d!124917 (= (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947)) lt!457211)))

(declare-fun b!1036602 () Bool)

(declare-fun res!691941 () Bool)

(assert (=> b!1036602 (=> (not res!691941) (not e!586309))))

(assert (=> b!1036602 (= res!691941 (= (getValueByKey!592 (toList!6953 lt!457211) (_1!7929 (tuple2!15839 lt!456951 lt!456947))) (Some!642 (_2!7929 (tuple2!15839 lt!456951 lt!456947)))))))

(declare-fun b!1036603 () Bool)

(assert (=> b!1036603 (= e!586309 (contains!6045 (toList!6953 lt!457211) (tuple2!15839 lt!456951 lt!456947)))))

(assert (= (and d!124917 res!691940) b!1036602))

(assert (= (and b!1036602 res!691941) b!1036603))

(declare-fun m!956973 () Bool)

(assert (=> d!124917 m!956973))

(declare-fun m!956975 () Bool)

(assert (=> d!124917 m!956975))

(declare-fun m!956977 () Bool)

(assert (=> d!124917 m!956977))

(declare-fun m!956979 () Bool)

(assert (=> d!124917 m!956979))

(declare-fun m!956981 () Bool)

(assert (=> b!1036602 m!956981))

(declare-fun m!956983 () Bool)

(assert (=> b!1036603 m!956983))

(assert (=> b!1036085 d!124917))

(declare-fun d!124919 () Bool)

(assert (=> d!124919 (not (contains!6044 (+!3065 lt!456950 (tuple2!15839 lt!456951 lt!456947)) lt!456952))))

(declare-fun lt!457214 () Unit!33873)

(declare-fun choose!1713 (ListLongMap!13875 (_ BitVec 64) V!37669 (_ BitVec 64)) Unit!33873)

(assert (=> d!124919 (= lt!457214 (choose!1713 lt!456950 lt!456951 lt!456947 lt!456952))))

(declare-fun e!586312 () Bool)

(assert (=> d!124919 e!586312))

(declare-fun res!691944 () Bool)

(assert (=> d!124919 (=> (not res!691944) (not e!586312))))

(assert (=> d!124919 (= res!691944 (not (contains!6044 lt!456950 lt!456952)))))

(assert (=> d!124919 (= (addStillNotContains!245 lt!456950 lt!456951 lt!456947 lt!456952) lt!457214)))

(declare-fun b!1036607 () Bool)

(assert (=> b!1036607 (= e!586312 (not (= lt!456951 lt!456952)))))

(assert (= (and d!124919 res!691944) b!1036607))

(assert (=> d!124919 m!956053))

(assert (=> d!124919 m!956053))

(assert (=> d!124919 m!956057))

(declare-fun m!956985 () Bool)

(assert (=> d!124919 m!956985))

(declare-fun m!956987 () Bool)

(assert (=> d!124919 m!956987))

(assert (=> b!1036085 d!124919))

(assert (=> d!124549 d!124539))

(declare-fun d!124921 () Bool)

(assert (=> d!124921 (= (apply!942 (+!3065 lt!456853 (tuple2!15839 lt!456869 lt!456768)) lt!456862) (apply!942 lt!456853 lt!456862))))

(assert (=> d!124921 true))

(declare-fun _$34!1171 () Unit!33873)

(assert (=> d!124921 (= (choose!1709 lt!456853 lt!456869 lt!456768 lt!456862) _$34!1171)))

(declare-fun bs!30351 () Bool)

(assert (= bs!30351 d!124921))

(assert (=> bs!30351 m!955891))

(assert (=> bs!30351 m!955891))

(assert (=> bs!30351 m!955893))

(assert (=> bs!30351 m!955889))

(assert (=> d!124549 d!124921))

(assert (=> d!124549 d!124543))

(declare-fun d!124923 () Bool)

(declare-fun e!586314 () Bool)

(assert (=> d!124923 e!586314))

(declare-fun res!691945 () Bool)

(assert (=> d!124923 (=> res!691945 e!586314)))

(declare-fun lt!457217 () Bool)

(assert (=> d!124923 (= res!691945 (not lt!457217))))

(declare-fun lt!457216 () Bool)

(assert (=> d!124923 (= lt!457217 lt!457216)))

(declare-fun lt!457218 () Unit!33873)

(declare-fun e!586313 () Unit!33873)

(assert (=> d!124923 (= lt!457218 e!586313)))

(declare-fun c!104901 () Bool)

(assert (=> d!124923 (= c!104901 lt!457216)))

(assert (=> d!124923 (= lt!457216 (containsKey!565 (toList!6953 lt!456853) lt!456862))))

(assert (=> d!124923 (= (contains!6044 lt!456853 lt!456862) lt!457217)))

(declare-fun b!1036608 () Bool)

(declare-fun lt!457215 () Unit!33873)

(assert (=> b!1036608 (= e!586313 lt!457215)))

(assert (=> b!1036608 (= lt!457215 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456853) lt!456862))))

(assert (=> b!1036608 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456853) lt!456862))))

(declare-fun b!1036609 () Bool)

(declare-fun Unit!33904 () Unit!33873)

(assert (=> b!1036609 (= e!586313 Unit!33904)))

(declare-fun b!1036610 () Bool)

(assert (=> b!1036610 (= e!586314 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456853) lt!456862)))))

(assert (= (and d!124923 c!104901) b!1036608))

(assert (= (and d!124923 (not c!104901)) b!1036609))

(assert (= (and d!124923 (not res!691945)) b!1036610))

(declare-fun m!956989 () Bool)

(assert (=> d!124923 m!956989))

(declare-fun m!956991 () Bool)

(assert (=> b!1036608 m!956991))

(assert (=> b!1036608 m!955955))

(assert (=> b!1036608 m!955955))

(declare-fun m!956993 () Bool)

(assert (=> b!1036608 m!956993))

(assert (=> b!1036610 m!955955))

(assert (=> b!1036610 m!955955))

(assert (=> b!1036610 m!956993))

(assert (=> d!124549 d!124923))

(assert (=> d!124549 d!124555))

(declare-fun d!124925 () Bool)

(assert (=> d!124925 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456829) lt!456832)) (v!14932 (getValueByKey!592 (toList!6953 lt!456829) lt!456832)))))

(assert (=> d!124659 d!124925))

(declare-fun d!124927 () Bool)

(declare-fun c!104902 () Bool)

(assert (=> d!124927 (= c!104902 (and ((_ is Cons!22031) (toList!6953 lt!456829)) (= (_1!7929 (h!23233 (toList!6953 lt!456829))) lt!456832)))))

(declare-fun e!586315 () Option!643)

(assert (=> d!124927 (= (getValueByKey!592 (toList!6953 lt!456829) lt!456832) e!586315)))

(declare-fun b!1036612 () Bool)

(declare-fun e!586316 () Option!643)

(assert (=> b!1036612 (= e!586315 e!586316)))

(declare-fun c!104903 () Bool)

(assert (=> b!1036612 (= c!104903 (and ((_ is Cons!22031) (toList!6953 lt!456829)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456829))) lt!456832))))))

(declare-fun b!1036614 () Bool)

(assert (=> b!1036614 (= e!586316 None!641)))

(declare-fun b!1036613 () Bool)

(assert (=> b!1036613 (= e!586316 (getValueByKey!592 (t!31249 (toList!6953 lt!456829)) lt!456832))))

(declare-fun b!1036611 () Bool)

(assert (=> b!1036611 (= e!586315 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456829)))))))

(assert (= (and d!124927 c!104902) b!1036611))

(assert (= (and d!124927 (not c!104902)) b!1036612))

(assert (= (and b!1036612 c!104903) b!1036613))

(assert (= (and b!1036612 (not c!104903)) b!1036614))

(declare-fun m!956995 () Bool)

(assert (=> b!1036613 m!956995))

(assert (=> d!124659 d!124927))

(declare-fun d!124929 () Bool)

(assert (=> d!124929 (= (apply!942 lt!457028 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!457028) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30352 () Bool)

(assert (= bs!30352 d!124929))

(declare-fun m!956997 () Bool)

(assert (=> bs!30352 m!956997))

(assert (=> bs!30352 m!956997))

(declare-fun m!956999 () Bool)

(assert (=> bs!30352 m!956999))

(assert (=> b!1036190 d!124929))

(declare-fun d!124931 () Bool)

(declare-fun res!691946 () Bool)

(declare-fun e!586317 () Bool)

(assert (=> d!124931 (=> res!691946 e!586317)))

(assert (=> d!124931 (= res!691946 (and ((_ is Cons!22031) (toList!6953 lt!456848)) (= (_1!7929 (h!23233 (toList!6953 lt!456848))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124931 (= (containsKey!565 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000) e!586317)))

(declare-fun b!1036615 () Bool)

(declare-fun e!586318 () Bool)

(assert (=> b!1036615 (= e!586317 e!586318)))

(declare-fun res!691947 () Bool)

(assert (=> b!1036615 (=> (not res!691947) (not e!586318))))

(assert (=> b!1036615 (= res!691947 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456848))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456848))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) (toList!6953 lt!456848)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456848))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036616 () Bool)

(assert (=> b!1036616 (= e!586318 (containsKey!565 (t!31249 (toList!6953 lt!456848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124931 (not res!691946)) b!1036615))

(assert (= (and b!1036615 res!691947) b!1036616))

(declare-fun m!957001 () Bool)

(assert (=> b!1036616 m!957001))

(assert (=> d!124629 d!124931))

(declare-fun d!124933 () Bool)

(declare-fun e!586320 () Bool)

(assert (=> d!124933 e!586320))

(declare-fun res!691948 () Bool)

(assert (=> d!124933 (=> res!691948 e!586320)))

(declare-fun lt!457221 () Bool)

(assert (=> d!124933 (= res!691948 (not lt!457221))))

(declare-fun lt!457220 () Bool)

(assert (=> d!124933 (= lt!457221 lt!457220)))

(declare-fun lt!457222 () Unit!33873)

(declare-fun e!586319 () Unit!33873)

(assert (=> d!124933 (= lt!457222 e!586319)))

(declare-fun c!104904 () Bool)

(assert (=> d!124933 (= c!104904 lt!457220)))

(assert (=> d!124933 (= lt!457220 (containsKey!565 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!124933 (= (contains!6044 lt!457041 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!457221)))

(declare-fun b!1036617 () Bool)

(declare-fun lt!457219 () Unit!33873)

(assert (=> b!1036617 (= e!586319 lt!457219)))

(assert (=> b!1036617 (= lt!457219 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(assert (=> b!1036617 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036618 () Bool)

(declare-fun Unit!33905 () Unit!33873)

(assert (=> b!1036618 (= e!586319 Unit!33905)))

(declare-fun b!1036619 () Bool)

(assert (=> b!1036619 (= e!586320 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457041) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124933 c!104904) b!1036617))

(assert (= (and d!124933 (not c!104904)) b!1036618))

(assert (= (and d!124933 (not res!691948)) b!1036619))

(declare-fun m!957003 () Bool)

(assert (=> d!124933 m!957003))

(declare-fun m!957005 () Bool)

(assert (=> b!1036617 m!957005))

(assert (=> b!1036617 m!956295))

(assert (=> b!1036617 m!956295))

(declare-fun m!957007 () Bool)

(assert (=> b!1036617 m!957007))

(assert (=> b!1036619 m!956295))

(assert (=> b!1036619 m!956295))

(assert (=> b!1036619 m!957007))

(assert (=> d!124639 d!124933))

(declare-fun d!124935 () Bool)

(declare-fun c!104905 () Bool)

(assert (=> d!124935 (= c!104905 (and ((_ is Cons!22031) lt!457039) (= (_1!7929 (h!23233 lt!457039)) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586321 () Option!643)

(assert (=> d!124935 (= (getValueByKey!592 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) e!586321)))

(declare-fun b!1036621 () Bool)

(declare-fun e!586322 () Option!643)

(assert (=> b!1036621 (= e!586321 e!586322)))

(declare-fun c!104906 () Bool)

(assert (=> b!1036621 (= c!104906 (and ((_ is Cons!22031) lt!457039) (not (= (_1!7929 (h!23233 lt!457039)) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036623 () Bool)

(assert (=> b!1036623 (= e!586322 None!641)))

(declare-fun b!1036622 () Bool)

(assert (=> b!1036622 (= e!586322 (getValueByKey!592 (t!31249 lt!457039) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036620 () Bool)

(assert (=> b!1036620 (= e!586321 (Some!642 (_2!7929 (h!23233 lt!457039))))))

(assert (= (and d!124935 c!104905) b!1036620))

(assert (= (and d!124935 (not c!104905)) b!1036621))

(assert (= (and b!1036621 c!104906) b!1036622))

(assert (= (and b!1036621 (not c!104906)) b!1036623))

(declare-fun m!957009 () Bool)

(assert (=> b!1036622 m!957009))

(assert (=> d!124639 d!124935))

(declare-fun d!124937 () Bool)

(assert (=> d!124937 (= (getValueByKey!592 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457223 () Unit!33873)

(assert (=> d!124937 (= lt!457223 (choose!1712 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun e!586323 () Bool)

(assert (=> d!124937 e!586323))

(declare-fun res!691949 () Bool)

(assert (=> d!124937 (=> (not res!691949) (not e!586323))))

(assert (=> d!124937 (= res!691949 (isStrictlySorted!715 lt!457039))))

(assert (=> d!124937 (= (lemmaContainsTupThenGetReturnValue!281 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!457223)))

(declare-fun b!1036624 () Bool)

(declare-fun res!691950 () Bool)

(assert (=> b!1036624 (=> (not res!691950) (not e!586323))))

(assert (=> b!1036624 (= res!691950 (containsKey!565 lt!457039 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036625 () Bool)

(assert (=> b!1036625 (= e!586323 (contains!6045 lt!457039 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!124937 res!691949) b!1036624))

(assert (= (and b!1036624 res!691950) b!1036625))

(assert (=> d!124937 m!956289))

(declare-fun m!957011 () Bool)

(assert (=> d!124937 m!957011))

(declare-fun m!957013 () Bool)

(assert (=> d!124937 m!957013))

(declare-fun m!957015 () Bool)

(assert (=> b!1036624 m!957015))

(declare-fun m!957017 () Bool)

(assert (=> b!1036625 m!957017))

(assert (=> d!124639 d!124937))

(declare-fun b!1036626 () Bool)

(declare-fun e!586324 () List!22035)

(declare-fun e!586325 () List!22035)

(assert (=> b!1036626 (= e!586324 e!586325)))

(declare-fun c!104910 () Bool)

(assert (=> b!1036626 (= c!104910 (and ((_ is Cons!22031) (toList!6953 lt!456845)) (= (_1!7929 (h!23233 (toList!6953 lt!456845))) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036627 () Bool)

(declare-fun e!586327 () List!22035)

(declare-fun call!43887 () List!22035)

(assert (=> b!1036627 (= e!586327 call!43887)))

(declare-fun c!104907 () Bool)

(declare-fun bm!43883 () Bool)

(declare-fun call!43886 () List!22035)

(declare-fun e!586328 () List!22035)

(assert (=> bm!43883 (= call!43886 ($colon$colon!606 e!586328 (ite c!104907 (h!23233 (toList!6953 lt!456845)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))))

(declare-fun c!104908 () Bool)

(assert (=> bm!43883 (= c!104908 c!104907)))

(declare-fun d!124939 () Bool)

(declare-fun e!586326 () Bool)

(assert (=> d!124939 e!586326))

(declare-fun res!691951 () Bool)

(assert (=> d!124939 (=> (not res!691951) (not e!586326))))

(declare-fun lt!457224 () List!22035)

(assert (=> d!124939 (= res!691951 (isStrictlySorted!715 lt!457224))))

(assert (=> d!124939 (= lt!457224 e!586324)))

(assert (=> d!124939 (= c!104907 (and ((_ is Cons!22031) (toList!6953 lt!456845)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456845))) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!124939 (isStrictlySorted!715 (toList!6953 lt!456845))))

(assert (=> d!124939 (= (insertStrictlySorted!373 (toList!6953 lt!456845) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!457224)))

(declare-fun c!104909 () Bool)

(declare-fun b!1036628 () Bool)

(assert (=> b!1036628 (= c!104909 (and ((_ is Cons!22031) (toList!6953 lt!456845)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456845))) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(assert (=> b!1036628 (= e!586325 e!586327)))

(declare-fun b!1036629 () Bool)

(assert (=> b!1036629 (= e!586328 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456845)) (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036630 () Bool)

(declare-fun res!691952 () Bool)

(assert (=> b!1036630 (=> (not res!691952) (not e!586326))))

(assert (=> b!1036630 (= res!691952 (containsKey!565 lt!457224 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036631 () Bool)

(assert (=> b!1036631 (= e!586324 call!43886)))

(declare-fun bm!43884 () Bool)

(declare-fun call!43888 () List!22035)

(assert (=> bm!43884 (= call!43887 call!43888)))

(declare-fun b!1036632 () Bool)

(assert (=> b!1036632 (= e!586326 (contains!6045 lt!457224 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036633 () Bool)

(assert (=> b!1036633 (= e!586327 call!43887)))

(declare-fun bm!43885 () Bool)

(assert (=> bm!43885 (= call!43888 call!43886)))

(declare-fun b!1036634 () Bool)

(assert (=> b!1036634 (= e!586328 (ite c!104910 (t!31249 (toList!6953 lt!456845)) (ite c!104909 (Cons!22031 (h!23233 (toList!6953 lt!456845)) (t!31249 (toList!6953 lt!456845))) Nil!22032)))))

(declare-fun b!1036635 () Bool)

(assert (=> b!1036635 (= e!586325 call!43888)))

(assert (= (and d!124939 c!104907) b!1036631))

(assert (= (and d!124939 (not c!104907)) b!1036626))

(assert (= (and b!1036626 c!104910) b!1036635))

(assert (= (and b!1036626 (not c!104910)) b!1036628))

(assert (= (and b!1036628 c!104909) b!1036633))

(assert (= (and b!1036628 (not c!104909)) b!1036627))

(assert (= (or b!1036633 b!1036627) bm!43884))

(assert (= (or b!1036635 bm!43884) bm!43885))

(assert (= (or b!1036631 bm!43885) bm!43883))

(assert (= (and bm!43883 c!104908) b!1036629))

(assert (= (and bm!43883 (not c!104908)) b!1036634))

(assert (= (and d!124939 res!691951) b!1036630))

(assert (= (and b!1036630 res!691952) b!1036632))

(declare-fun m!957019 () Bool)

(assert (=> b!1036632 m!957019))

(declare-fun m!957021 () Bool)

(assert (=> bm!43883 m!957021))

(declare-fun m!957023 () Bool)

(assert (=> b!1036629 m!957023))

(declare-fun m!957025 () Bool)

(assert (=> b!1036630 m!957025))

(declare-fun m!957027 () Bool)

(assert (=> d!124939 m!957027))

(declare-fun m!957029 () Bool)

(assert (=> d!124939 m!957029))

(assert (=> d!124639 d!124939))

(declare-fun d!124941 () Bool)

(assert (=> d!124941 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(declare-fun lt!457225 () Unit!33873)

(assert (=> d!124941 (= lt!457225 (choose!1711 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(declare-fun e!586329 () Bool)

(assert (=> d!124941 e!586329))

(declare-fun res!691953 () Bool)

(assert (=> d!124941 (=> (not res!691953) (not e!586329))))

(assert (=> d!124941 (= res!691953 (isStrictlySorted!715 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!124941 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861) lt!457225)))

(declare-fun b!1036636 () Bool)

(assert (=> b!1036636 (= e!586329 (containsKey!565 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))

(assert (= (and d!124941 res!691953) b!1036636))

(assert (=> d!124941 m!955927))

(assert (=> d!124941 m!955927))

(assert (=> d!124941 m!955929))

(declare-fun m!957031 () Bool)

(assert (=> d!124941 m!957031))

(declare-fun m!957033 () Bool)

(assert (=> d!124941 m!957033))

(assert (=> b!1036636 m!955923))

(assert (=> b!1036025 d!124941))

(declare-fun d!124943 () Bool)

(assert (=> d!124943 (= (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861))))))

(declare-fun bs!30353 () Bool)

(assert (= bs!30353 d!124943))

(assert (=> bs!30353 m!955927))

(declare-fun m!957035 () Bool)

(assert (=> bs!30353 m!957035))

(assert (=> b!1036025 d!124943))

(declare-fun c!104911 () Bool)

(declare-fun d!124945 () Bool)

(assert (=> d!124945 (= c!104911 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) lt!456861)))))

(declare-fun e!586330 () Option!643)

(assert (=> d!124945 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!456861) e!586330)))

(declare-fun b!1036638 () Bool)

(declare-fun e!586331 () Option!643)

(assert (=> b!1036638 (= e!586330 e!586331)))

(declare-fun c!104912 () Bool)

(assert (=> b!1036638 (= c!104912 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))) lt!456861))))))

(declare-fun b!1036640 () Bool)

(assert (=> b!1036640 (= e!586331 None!641)))

(declare-fun b!1036639 () Bool)

(assert (=> b!1036639 (= e!586331 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))) lt!456861))))

(declare-fun b!1036637 () Bool)

(assert (=> b!1036637 (= e!586330 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))))

(assert (= (and d!124945 c!104911) b!1036637))

(assert (= (and d!124945 (not c!104911)) b!1036638))

(assert (= (and b!1036638 c!104912) b!1036639))

(assert (= (and b!1036638 (not c!104912)) b!1036640))

(declare-fun m!957037 () Bool)

(assert (=> b!1036639 m!957037))

(assert (=> b!1036025 d!124945))

(assert (=> b!1036109 d!124573))

(declare-fun d!124947 () Bool)

(assert (=> d!124947 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!457226 () Unit!33873)

(assert (=> d!124947 (= lt!457226 (choose!1711 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586332 () Bool)

(assert (=> d!124947 e!586332))

(declare-fun res!691954 () Bool)

(assert (=> d!124947 (=> (not res!691954) (not e!586332))))

(assert (=> d!124947 (= res!691954 (isStrictlySorted!715 (toList!6953 lt!456840)))))

(assert (=> d!124947 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000) lt!457226)))

(declare-fun b!1036641 () Bool)

(assert (=> b!1036641 (= e!586332 (containsKey!565 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124947 res!691954) b!1036641))

(assert (=> d!124947 m!956093))

(assert (=> d!124947 m!956093))

(assert (=> d!124947 m!956137))

(declare-fun m!957039 () Bool)

(assert (=> d!124947 m!957039))

(assert (=> d!124947 m!956687))

(assert (=> b!1036641 m!956133))

(assert (=> b!1036146 d!124947))

(declare-fun d!124949 () Bool)

(assert (=> d!124949 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30354 () Bool)

(assert (= bs!30354 d!124949))

(assert (=> bs!30354 m!956093))

(declare-fun m!957041 () Bool)

(assert (=> bs!30354 m!957041))

(assert (=> b!1036146 d!124949))

(declare-fun d!124951 () Bool)

(declare-fun c!104913 () Bool)

(assert (=> d!124951 (= c!104913 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586333 () Option!643)

(assert (=> d!124951 (= (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000) e!586333)))

(declare-fun b!1036643 () Bool)

(declare-fun e!586334 () Option!643)

(assert (=> b!1036643 (= e!586333 e!586334)))

(declare-fun c!104914 () Bool)

(assert (=> b!1036643 (= c!104914 (and ((_ is Cons!22031) (toList!6953 lt!456840)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456840))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036645 () Bool)

(assert (=> b!1036645 (= e!586334 None!641)))

(declare-fun b!1036644 () Bool)

(assert (=> b!1036644 (= e!586334 (getValueByKey!592 (t!31249 (toList!6953 lt!456840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036642 () Bool)

(assert (=> b!1036642 (= e!586333 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456840)))))))

(assert (= (and d!124951 c!104913) b!1036642))

(assert (= (and d!124951 (not c!104913)) b!1036643))

(assert (= (and b!1036643 c!104914) b!1036644))

(assert (= (and b!1036643 (not c!104914)) b!1036645))

(declare-fun m!957043 () Bool)

(assert (=> b!1036644 m!957043))

(assert (=> b!1036146 d!124951))

(declare-fun d!124953 () Bool)

(declare-fun res!691955 () Bool)

(declare-fun e!586335 () Bool)

(assert (=> d!124953 (=> res!691955 e!586335)))

(assert (=> d!124953 (= res!691955 (or ((_ is Nil!22032) lt!457013) ((_ is Nil!22032) (t!31249 lt!457013))))))

(assert (=> d!124953 (= (isStrictlySorted!715 lt!457013) e!586335)))

(declare-fun b!1036646 () Bool)

(declare-fun e!586336 () Bool)

(assert (=> b!1036646 (= e!586335 e!586336)))

(declare-fun res!691956 () Bool)

(assert (=> b!1036646 (=> (not res!691956) (not e!586336))))

(assert (=> b!1036646 (= res!691956 (bvslt (_1!7929 (h!23233 lt!457013)) (_1!7929 (h!23233 (t!31249 lt!457013)))))))

(declare-fun b!1036647 () Bool)

(assert (=> b!1036647 (= e!586336 (isStrictlySorted!715 (t!31249 lt!457013)))))

(assert (= (and d!124953 (not res!691955)) b!1036646))

(assert (= (and b!1036646 res!691956) b!1036647))

(declare-fun m!957045 () Bool)

(assert (=> b!1036647 m!957045))

(assert (=> d!124631 d!124953))

(declare-fun d!124955 () Bool)

(declare-fun res!691957 () Bool)

(declare-fun e!586337 () Bool)

(assert (=> d!124955 (=> res!691957 e!586337)))

(assert (=> d!124955 (= res!691957 (or ((_ is Nil!22032) (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) ((_ is Nil!22032) (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))))))))

(assert (=> d!124955 (= (isStrictlySorted!715 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427)))) e!586337)))

(declare-fun b!1036648 () Bool)

(declare-fun e!586338 () Bool)

(assert (=> b!1036648 (= e!586337 e!586338)))

(declare-fun res!691958 () Bool)

(assert (=> b!1036648 (=> (not res!691958) (not e!586338))))

(assert (=> b!1036648 (= res!691958 (bvslt (_1!7929 (h!23233 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))) (_1!7929 (h!23233 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))))))))

(declare-fun b!1036649 () Bool)

(assert (=> b!1036649 (= e!586338 (isStrictlySorted!715 (t!31249 (toList!6953 (getCurrentListMap!3959 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6270 thiss!1427))))))))

(assert (= (and d!124955 (not res!691957)) b!1036648))

(assert (= (and b!1036648 res!691958) b!1036649))

(assert (=> b!1036649 m!956849))

(assert (=> d!124631 d!124955))

(declare-fun d!124957 () Bool)

(assert (=> d!124957 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!457227 () Unit!33873)

(assert (=> d!124957 (= lt!457227 (choose!1711 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586339 () Bool)

(assert (=> d!124957 e!586339))

(declare-fun res!691959 () Bool)

(assert (=> d!124957 (=> (not res!691959) (not e!586339))))

(assert (=> d!124957 (= res!691959 (isStrictlySorted!715 (toList!6953 lt!456866)))))

(assert (=> d!124957 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457227)))

(declare-fun b!1036650 () Bool)

(assert (=> b!1036650 (= e!586339 (containsKey!565 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124957 res!691959) b!1036650))

(assert (=> d!124957 m!956129))

(assert (=> d!124957 m!956129))

(assert (=> d!124957 m!956131))

(declare-fun m!957047 () Bool)

(assert (=> d!124957 m!957047))

(assert (=> d!124957 m!956421))

(assert (=> b!1036650 m!956125))

(assert (=> b!1036143 d!124957))

(declare-fun d!124959 () Bool)

(assert (=> d!124959 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456866) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30355 () Bool)

(assert (= bs!30355 d!124959))

(assert (=> bs!30355 m!956129))

(declare-fun m!957049 () Bool)

(assert (=> bs!30355 m!957049))

(assert (=> b!1036143 d!124959))

(assert (=> b!1036143 d!124861))

(declare-fun d!124961 () Bool)

(assert (=> d!124961 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456781) key!909))))

(declare-fun lt!457228 () Unit!33873)

(assert (=> d!124961 (= lt!457228 (choose!1711 (toList!6953 lt!456781) key!909))))

(declare-fun e!586340 () Bool)

(assert (=> d!124961 e!586340))

(declare-fun res!691960 () Bool)

(assert (=> d!124961 (=> (not res!691960) (not e!586340))))

(assert (=> d!124961 (= res!691960 (isStrictlySorted!715 (toList!6953 lt!456781)))))

(assert (=> d!124961 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456781) key!909) lt!457228)))

(declare-fun b!1036651 () Bool)

(assert (=> b!1036651 (= e!586340 (containsKey!565 (toList!6953 lt!456781) key!909))))

(assert (= (and d!124961 res!691960) b!1036651))

(assert (=> d!124961 m!956027))

(assert (=> d!124961 m!956027))

(assert (=> d!124961 m!956029))

(declare-fun m!957051 () Bool)

(assert (=> d!124961 m!957051))

(declare-fun m!957053 () Bool)

(assert (=> d!124961 m!957053))

(assert (=> b!1036651 m!956023))

(assert (=> b!1036059 d!124961))

(declare-fun d!124963 () Bool)

(assert (=> d!124963 (= (isDefined!437 (getValueByKey!592 (toList!6953 lt!456781) key!909)) (not (isEmpty!933 (getValueByKey!592 (toList!6953 lt!456781) key!909))))))

(declare-fun bs!30356 () Bool)

(assert (= bs!30356 d!124963))

(assert (=> bs!30356 m!956027))

(declare-fun m!957055 () Bool)

(assert (=> bs!30356 m!957055))

(assert (=> b!1036059 d!124963))

(declare-fun d!124965 () Bool)

(declare-fun c!104915 () Bool)

(assert (=> d!124965 (= c!104915 (and ((_ is Cons!22031) (toList!6953 lt!456781)) (= (_1!7929 (h!23233 (toList!6953 lt!456781))) key!909)))))

(declare-fun e!586341 () Option!643)

(assert (=> d!124965 (= (getValueByKey!592 (toList!6953 lt!456781) key!909) e!586341)))

(declare-fun b!1036653 () Bool)

(declare-fun e!586342 () Option!643)

(assert (=> b!1036653 (= e!586341 e!586342)))

(declare-fun c!104916 () Bool)

(assert (=> b!1036653 (= c!104916 (and ((_ is Cons!22031) (toList!6953 lt!456781)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456781))) key!909))))))

(declare-fun b!1036655 () Bool)

(assert (=> b!1036655 (= e!586342 None!641)))

(declare-fun b!1036654 () Bool)

(assert (=> b!1036654 (= e!586342 (getValueByKey!592 (t!31249 (toList!6953 lt!456781)) key!909))))

(declare-fun b!1036652 () Bool)

(assert (=> b!1036652 (= e!586341 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456781)))))))

(assert (= (and d!124965 c!104915) b!1036652))

(assert (= (and d!124965 (not c!104915)) b!1036653))

(assert (= (and b!1036653 c!104916) b!1036654))

(assert (= (and b!1036653 (not c!104916)) b!1036655))

(declare-fun m!957057 () Bool)

(assert (=> b!1036654 m!957057))

(assert (=> b!1036059 d!124965))

(declare-fun d!124967 () Bool)

(assert (=> d!124967 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!456839)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!456839)))))

(assert (=> d!124663 d!124967))

(declare-fun d!124969 () Bool)

(declare-fun c!104917 () Bool)

(assert (=> d!124969 (= c!104917 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))) lt!456839)))))

(declare-fun e!586343 () Option!643)

(assert (=> d!124969 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) lt!456839) e!586343)))

(declare-fun b!1036657 () Bool)

(declare-fun e!586344 () Option!643)

(assert (=> b!1036657 (= e!586343 e!586344)))

(declare-fun c!104918 () Bool)

(assert (=> b!1036657 (= c!104918 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))) lt!456839))))))

(declare-fun b!1036659 () Bool)

(assert (=> b!1036659 (= e!586344 None!641)))

(declare-fun b!1036658 () Bool)

(assert (=> b!1036658 (= e!586344 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))) lt!456839))))

(declare-fun b!1036656 () Bool)

(assert (=> b!1036656 (= e!586343 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456831 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))))

(assert (= (and d!124969 c!104917) b!1036656))

(assert (= (and d!124969 (not c!104917)) b!1036657))

(assert (= (and b!1036657 c!104918) b!1036658))

(assert (= (and b!1036657 (not c!104918)) b!1036659))

(declare-fun m!957059 () Bool)

(assert (=> b!1036658 m!957059))

(assert (=> d!124663 d!124969))

(declare-fun d!124971 () Bool)

(declare-fun e!586346 () Bool)

(assert (=> d!124971 e!586346))

(declare-fun res!691961 () Bool)

(assert (=> d!124971 (=> res!691961 e!586346)))

(declare-fun lt!457231 () Bool)

(assert (=> d!124971 (= res!691961 (not lt!457231))))

(declare-fun lt!457230 () Bool)

(assert (=> d!124971 (= lt!457231 lt!457230)))

(declare-fun lt!457232 () Unit!33873)

(declare-fun e!586345 () Unit!33873)

(assert (=> d!124971 (= lt!457232 e!586345)))

(declare-fun c!104919 () Bool)

(assert (=> d!124971 (= c!104919 lt!457230)))

(assert (=> d!124971 (= lt!457230 (containsKey!565 (toList!6953 lt!457028) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124971 (= (contains!6044 lt!457028 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457231)))

(declare-fun b!1036660 () Bool)

(declare-fun lt!457229 () Unit!33873)

(assert (=> b!1036660 (= e!586345 lt!457229)))

(assert (=> b!1036660 (= lt!457229 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457028) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036660 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036661 () Bool)

(declare-fun Unit!33906 () Unit!33873)

(assert (=> b!1036661 (= e!586345 Unit!33906)))

(declare-fun b!1036662 () Bool)

(assert (=> b!1036662 (= e!586346 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457028) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124971 c!104919) b!1036660))

(assert (= (and d!124971 (not c!104919)) b!1036661))

(assert (= (and d!124971 (not res!691961)) b!1036662))

(declare-fun m!957061 () Bool)

(assert (=> d!124971 m!957061))

(declare-fun m!957063 () Bool)

(assert (=> b!1036660 m!957063))

(assert (=> b!1036660 m!956997))

(assert (=> b!1036660 m!956997))

(declare-fun m!957065 () Bool)

(assert (=> b!1036660 m!957065))

(assert (=> b!1036662 m!956997))

(assert (=> b!1036662 m!956997))

(assert (=> b!1036662 m!957065))

(assert (=> bm!43849 d!124971))

(declare-fun d!124973 () Bool)

(declare-fun c!104920 () Bool)

(assert (=> d!124973 (= c!104920 (and ((_ is Cons!22031) (toList!6953 lt!456918)) (= (_1!7929 (h!23233 (toList!6953 lt!456918))) (_1!7929 (tuple2!15839 lt!456869 lt!456768)))))))

(declare-fun e!586347 () Option!643)

(assert (=> d!124973 (= (getValueByKey!592 (toList!6953 lt!456918) (_1!7929 (tuple2!15839 lt!456869 lt!456768))) e!586347)))

(declare-fun b!1036664 () Bool)

(declare-fun e!586348 () Option!643)

(assert (=> b!1036664 (= e!586347 e!586348)))

(declare-fun c!104921 () Bool)

(assert (=> b!1036664 (= c!104921 (and ((_ is Cons!22031) (toList!6953 lt!456918)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456918))) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))))

(declare-fun b!1036666 () Bool)

(assert (=> b!1036666 (= e!586348 None!641)))

(declare-fun b!1036665 () Bool)

(assert (=> b!1036665 (= e!586348 (getValueByKey!592 (t!31249 (toList!6953 lt!456918)) (_1!7929 (tuple2!15839 lt!456869 lt!456768))))))

(declare-fun b!1036663 () Bool)

(assert (=> b!1036663 (= e!586347 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456918)))))))

(assert (= (and d!124973 c!104920) b!1036663))

(assert (= (and d!124973 (not c!104920)) b!1036664))

(assert (= (and b!1036664 c!104921) b!1036665))

(assert (= (and b!1036664 (not c!104921)) b!1036666))

(declare-fun m!957067 () Bool)

(assert (=> b!1036665 m!957067))

(assert (=> b!1036032 d!124973))

(declare-fun d!124975 () Bool)

(assert (=> d!124975 (= (apply!942 lt!457028 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16475 (getValueByKey!592 (toList!6953 lt!457028) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30357 () Bool)

(assert (= bs!30357 d!124975))

(assert (=> bs!30357 m!956873))

(assert (=> bs!30357 m!956873))

(declare-fun m!957069 () Bool)

(assert (=> bs!30357 m!957069))

(assert (=> b!1036187 d!124975))

(declare-fun d!124977 () Bool)

(declare-fun e!586350 () Bool)

(assert (=> d!124977 e!586350))

(declare-fun res!691962 () Bool)

(assert (=> d!124977 (=> res!691962 e!586350)))

(declare-fun lt!457235 () Bool)

(assert (=> d!124977 (= res!691962 (not lt!457235))))

(declare-fun lt!457234 () Bool)

(assert (=> d!124977 (= lt!457235 lt!457234)))

(declare-fun lt!457236 () Unit!33873)

(declare-fun e!586349 () Unit!33873)

(assert (=> d!124977 (= lt!457236 e!586349)))

(declare-fun c!104922 () Bool)

(assert (=> d!124977 (= c!104922 lt!457234)))

(assert (=> d!124977 (= lt!457234 (containsKey!565 (toList!6953 lt!456890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124977 (= (contains!6044 lt!456890 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457235)))

(declare-fun b!1036667 () Bool)

(declare-fun lt!457233 () Unit!33873)

(assert (=> b!1036667 (= e!586349 lt!457233)))

(assert (=> b!1036667 (= lt!457233 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036667 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036668 () Bool)

(declare-fun Unit!33907 () Unit!33873)

(assert (=> b!1036668 (= e!586349 Unit!33907)))

(declare-fun b!1036669 () Bool)

(assert (=> b!1036669 (= e!586350 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124977 c!104922) b!1036667))

(assert (= (and d!124977 (not c!104922)) b!1036668))

(assert (= (and d!124977 (not res!691962)) b!1036669))

(declare-fun m!957071 () Bool)

(assert (=> d!124977 m!957071))

(declare-fun m!957073 () Bool)

(assert (=> b!1036667 m!957073))

(declare-fun m!957075 () Bool)

(assert (=> b!1036667 m!957075))

(assert (=> b!1036667 m!957075))

(declare-fun m!957077 () Bool)

(assert (=> b!1036667 m!957077))

(assert (=> b!1036669 m!957075))

(assert (=> b!1036669 m!957075))

(assert (=> b!1036669 m!957077))

(assert (=> d!124535 d!124977))

(assert (=> d!124535 d!124587))

(assert (=> b!1036155 d!124675))

(assert (=> b!1036155 d!124677))

(declare-fun d!124979 () Bool)

(assert (=> d!124979 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) (v!14932 (getValueByKey!592 (toList!6953 lt!456840) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124577 d!124979))

(assert (=> d!124577 d!124791))

(declare-fun b!1036670 () Bool)

(declare-fun e!586352 () Bool)

(declare-fun lt!457239 () ListLongMap!13875)

(assert (=> b!1036670 (= e!586352 (= lt!457239 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427))))))

(declare-fun d!124981 () Bool)

(declare-fun e!586356 () Bool)

(assert (=> d!124981 e!586356))

(declare-fun res!691964 () Bool)

(assert (=> d!124981 (=> (not res!691964) (not e!586356))))

(assert (=> d!124981 (= res!691964 (not (contains!6044 lt!457239 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!586355 () ListLongMap!13875)

(assert (=> d!124981 (= lt!457239 e!586355)))

(declare-fun c!104925 () Bool)

(assert (=> d!124981 (= c!104925 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> d!124981 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!124981 (= (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)) lt!457239)))

(declare-fun b!1036671 () Bool)

(declare-fun e!586353 () Bool)

(assert (=> b!1036671 (= e!586356 e!586353)))

(declare-fun c!104923 () Bool)

(declare-fun e!586357 () Bool)

(assert (=> b!1036671 (= c!104923 e!586357)))

(declare-fun res!691966 () Bool)

(assert (=> b!1036671 (=> (not res!691966) (not e!586357))))

(assert (=> b!1036671 (= res!691966 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036672 () Bool)

(assert (=> b!1036672 (= e!586353 e!586352)))

(declare-fun c!104924 () Bool)

(assert (=> b!1036672 (= c!104924 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036673 () Bool)

(assert (=> b!1036673 (= e!586357 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036673 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1036674 () Bool)

(assert (=> b!1036674 (= e!586352 (isEmpty!932 lt!457239))))

(declare-fun b!1036675 () Bool)

(assert (=> b!1036675 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(assert (=> b!1036675 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31949 (_values!6293 thiss!1427))))))

(declare-fun e!586354 () Bool)

(assert (=> b!1036675 (= e!586354 (= (apply!942 lt!457239 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1036676 () Bool)

(assert (=> b!1036676 (= e!586355 (ListLongMap!13876 Nil!22032))))

(declare-fun b!1036677 () Bool)

(declare-fun e!586351 () ListLongMap!13875)

(declare-fun call!43889 () ListLongMap!13875)

(assert (=> b!1036677 (= e!586351 call!43889)))

(declare-fun b!1036678 () Bool)

(declare-fun lt!457240 () Unit!33873)

(declare-fun lt!457237 () Unit!33873)

(assert (=> b!1036678 (= lt!457240 lt!457237)))

(declare-fun lt!457243 () (_ BitVec 64))

(declare-fun lt!457238 () V!37669)

(declare-fun lt!457242 () (_ BitVec 64))

(declare-fun lt!457241 () ListLongMap!13875)

(assert (=> b!1036678 (not (contains!6044 (+!3065 lt!457241 (tuple2!15839 lt!457242 lt!457238)) lt!457243))))

(assert (=> b!1036678 (= lt!457237 (addStillNotContains!245 lt!457241 lt!457242 lt!457238 lt!457243))))

(assert (=> b!1036678 (= lt!457243 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1036678 (= lt!457238 (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1036678 (= lt!457242 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1036678 (= lt!457241 call!43889)))

(assert (=> b!1036678 (= e!586351 (+!3065 call!43889 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!43886 () Bool)

(assert (=> bm!43886 (= call!43889 (getCurrentListMapNoExtraKeys!3535 (_keys!11456 thiss!1427) (_values!6293 thiss!1427) (mask!30166 thiss!1427) (extraKeys!6000 thiss!1427) (zeroValue!6104 thiss!1427) (minValue!6106 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6270 thiss!1427)))))

(declare-fun b!1036679 () Bool)

(declare-fun res!691965 () Bool)

(assert (=> b!1036679 (=> (not res!691965) (not e!586356))))

(assert (=> b!1036679 (= res!691965 (not (contains!6044 lt!457239 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036680 () Bool)

(assert (=> b!1036680 (= e!586355 e!586351)))

(declare-fun c!104926 () Bool)

(assert (=> b!1036680 (= c!104926 (validKeyInArray!0 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036681 () Bool)

(assert (=> b!1036681 (= e!586353 e!586354)))

(assert (=> b!1036681 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun res!691963 () Bool)

(assert (=> b!1036681 (= res!691963 (contains!6044 lt!457239 (select (arr!31419 (_keys!11456 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1036681 (=> (not res!691963) (not e!586354))))

(assert (= (and d!124981 c!104925) b!1036676))

(assert (= (and d!124981 (not c!104925)) b!1036680))

(assert (= (and b!1036680 c!104926) b!1036678))

(assert (= (and b!1036680 (not c!104926)) b!1036677))

(assert (= (or b!1036678 b!1036677) bm!43886))

(assert (= (and d!124981 res!691964) b!1036679))

(assert (= (and b!1036679 res!691965) b!1036671))

(assert (= (and b!1036671 res!691966) b!1036673))

(assert (= (and b!1036671 c!104923) b!1036681))

(assert (= (and b!1036671 (not c!104923)) b!1036672))

(assert (= (and b!1036681 res!691963) b!1036675))

(assert (= (and b!1036672 c!104924) b!1036670))

(assert (= (and b!1036672 (not c!104924)) b!1036674))

(declare-fun b_lambda!16173 () Bool)

(assert (=> (not b_lambda!16173) (not b!1036675)))

(assert (=> b!1036675 t!31253))

(declare-fun b_and!33427 () Bool)

(assert (= b_and!33425 (and (=> t!31253 result!14435) b_and!33427)))

(declare-fun b_lambda!16175 () Bool)

(assert (=> (not b_lambda!16175) (not b!1036678)))

(assert (=> b!1036678 t!31253))

(declare-fun b_and!33429 () Bool)

(assert (= b_and!33427 (and (=> t!31253 result!14435) b_and!33429)))

(declare-fun m!957079 () Bool)

(assert (=> bm!43886 m!957079))

(declare-fun m!957081 () Bool)

(assert (=> b!1036679 m!957081))

(assert (=> b!1036681 m!956381))

(assert (=> b!1036681 m!956381))

(declare-fun m!957083 () Bool)

(assert (=> b!1036681 m!957083))

(assert (=> b!1036675 m!956385))

(assert (=> b!1036675 m!956385))

(assert (=> b!1036675 m!955793))

(assert (=> b!1036675 m!956387))

(assert (=> b!1036675 m!955793))

(assert (=> b!1036675 m!956381))

(declare-fun m!957085 () Bool)

(assert (=> b!1036675 m!957085))

(assert (=> b!1036675 m!956381))

(assert (=> b!1036673 m!956381))

(assert (=> b!1036673 m!956381))

(assert (=> b!1036673 m!956391))

(assert (=> b!1036670 m!957079))

(assert (=> b!1036680 m!956381))

(assert (=> b!1036680 m!956381))

(assert (=> b!1036680 m!956391))

(declare-fun m!957087 () Bool)

(assert (=> d!124981 m!957087))

(assert (=> d!124981 m!955781))

(assert (=> b!1036678 m!956385))

(assert (=> b!1036678 m!956385))

(assert (=> b!1036678 m!955793))

(assert (=> b!1036678 m!956387))

(declare-fun m!957089 () Bool)

(assert (=> b!1036678 m!957089))

(assert (=> b!1036678 m!956381))

(declare-fun m!957091 () Bool)

(assert (=> b!1036678 m!957091))

(declare-fun m!957093 () Bool)

(assert (=> b!1036678 m!957093))

(assert (=> b!1036678 m!955793))

(assert (=> b!1036678 m!957091))

(declare-fun m!957095 () Bool)

(assert (=> b!1036678 m!957095))

(declare-fun m!957097 () Bool)

(assert (=> b!1036674 m!957097))

(assert (=> b!1036077 d!124981))

(assert (=> b!1036164 d!124573))

(declare-fun d!124983 () Bool)

(declare-fun c!104927 () Bool)

(assert (=> d!124983 (= c!104927 (and ((_ is Cons!22031) (toList!6953 lt!456933)) (= (_1!7929 (h!23233 (toList!6953 lt!456933))) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586358 () Option!643)

(assert (=> d!124983 (= (getValueByKey!592 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) e!586358)))

(declare-fun b!1036683 () Bool)

(declare-fun e!586359 () Option!643)

(assert (=> b!1036683 (= e!586358 e!586359)))

(declare-fun c!104928 () Bool)

(assert (=> b!1036683 (= c!104928 (and ((_ is Cons!22031) (toList!6953 lt!456933)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456933))) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036685 () Bool)

(assert (=> b!1036685 (= e!586359 None!641)))

(declare-fun b!1036684 () Bool)

(assert (=> b!1036684 (= e!586359 (getValueByKey!592 (t!31249 (toList!6953 lt!456933)) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036682 () Bool)

(assert (=> b!1036682 (= e!586358 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456933)))))))

(assert (= (and d!124983 c!104927) b!1036682))

(assert (= (and d!124983 (not c!104927)) b!1036683))

(assert (= (and b!1036683 c!104928) b!1036684))

(assert (= (and b!1036683 (not c!104928)) b!1036685))

(declare-fun m!957099 () Bool)

(assert (=> b!1036684 m!957099))

(assert (=> b!1036042 d!124983))

(declare-fun d!124985 () Bool)

(assert (=> d!124985 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!14932 (getValueByKey!592 (toList!6953 lt!456840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124599 d!124985))

(assert (=> d!124599 d!124907))

(assert (=> b!1036057 d!124839))

(declare-fun d!124987 () Bool)

(declare-fun lt!457244 () Bool)

(assert (=> d!124987 (= lt!457244 (select (content!518 (toList!6953 lt!456991)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))

(declare-fun e!586361 () Bool)

(assert (=> d!124987 (= lt!457244 e!586361)))

(declare-fun res!691967 () Bool)

(assert (=> d!124987 (=> (not res!691967) (not e!586361))))

(assert (=> d!124987 (= res!691967 ((_ is Cons!22031) (toList!6953 lt!456991)))))

(assert (=> d!124987 (= (contains!6045 (toList!6953 lt!456991) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)) lt!457244)))

(declare-fun b!1036686 () Bool)

(declare-fun e!586360 () Bool)

(assert (=> b!1036686 (= e!586361 e!586360)))

(declare-fun res!691968 () Bool)

(assert (=> b!1036686 (=> res!691968 e!586360)))

(assert (=> b!1036686 (= res!691968 (= (h!23233 (toList!6953 lt!456991)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))

(declare-fun b!1036687 () Bool)

(assert (=> b!1036687 (= e!586360 (contains!6045 (t!31249 (toList!6953 lt!456991)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 lt!456768)))))

(assert (= (and d!124987 res!691967) b!1036686))

(assert (= (and b!1036686 (not res!691968)) b!1036687))

(declare-fun m!957101 () Bool)

(assert (=> d!124987 m!957101))

(declare-fun m!957103 () Bool)

(assert (=> d!124987 m!957103))

(declare-fun m!957105 () Bool)

(assert (=> b!1036687 m!957105))

(assert (=> b!1036152 d!124987))

(assert (=> b!1036216 d!124771))

(assert (=> b!1036216 d!124773))

(declare-fun d!124989 () Bool)

(declare-fun e!586363 () Bool)

(assert (=> d!124989 e!586363))

(declare-fun res!691969 () Bool)

(assert (=> d!124989 (=> res!691969 e!586363)))

(declare-fun lt!457247 () Bool)

(assert (=> d!124989 (= res!691969 (not lt!457247))))

(declare-fun lt!457246 () Bool)

(assert (=> d!124989 (= lt!457247 lt!457246)))

(declare-fun lt!457248 () Unit!33873)

(declare-fun e!586362 () Unit!33873)

(assert (=> d!124989 (= lt!457248 e!586362)))

(declare-fun c!104929 () Bool)

(assert (=> d!124989 (= c!104929 lt!457246)))

(assert (=> d!124989 (= lt!457246 (containsKey!565 (toList!6953 lt!456829) lt!456832))))

(assert (=> d!124989 (= (contains!6044 lt!456829 lt!456832) lt!457247)))

(declare-fun b!1036688 () Bool)

(declare-fun lt!457245 () Unit!33873)

(assert (=> b!1036688 (= e!586362 lt!457245)))

(assert (=> b!1036688 (= lt!457245 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456829) lt!456832))))

(assert (=> b!1036688 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456829) lt!456832))))

(declare-fun b!1036689 () Bool)

(declare-fun Unit!33908 () Unit!33873)

(assert (=> b!1036689 (= e!586362 Unit!33908)))

(declare-fun b!1036690 () Bool)

(assert (=> b!1036690 (= e!586363 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456829) lt!456832)))))

(assert (= (and d!124989 c!104929) b!1036688))

(assert (= (and d!124989 (not c!104929)) b!1036689))

(assert (= (and d!124989 (not res!691969)) b!1036690))

(declare-fun m!957107 () Bool)

(assert (=> d!124989 m!957107))

(declare-fun m!957109 () Bool)

(assert (=> b!1036688 m!957109))

(assert (=> b!1036688 m!956363))

(assert (=> b!1036688 m!956363))

(declare-fun m!957111 () Bool)

(assert (=> b!1036688 m!957111))

(assert (=> b!1036690 m!956363))

(assert (=> b!1036690 m!956363))

(assert (=> b!1036690 m!957111))

(assert (=> d!124653 d!124989))

(assert (=> d!124653 d!124645))

(declare-fun d!124991 () Bool)

(assert (=> d!124991 (= (apply!942 (+!3065 lt!456829 (tuple2!15839 lt!456837 (minValue!6106 thiss!1427))) lt!456832) (apply!942 lt!456829 lt!456832))))

(assert (=> d!124991 true))

(declare-fun _$34!1172 () Unit!33873)

(assert (=> d!124991 (= (choose!1709 lt!456829 lt!456837 (minValue!6106 thiss!1427) lt!456832) _$34!1172)))

(declare-fun bs!30358 () Bool)

(assert (= bs!30358 d!124991))

(assert (=> bs!30358 m!955815))

(assert (=> bs!30358 m!955815))

(assert (=> bs!30358 m!955833))

(assert (=> bs!30358 m!955813))

(assert (=> d!124653 d!124991))

(assert (=> d!124653 d!124649))

(assert (=> d!124653 d!124659))

(declare-fun d!124993 () Bool)

(declare-fun lt!457251 () Bool)

(declare-fun content!519 (List!22036) (InoxSet (_ BitVec 64)))

(assert (=> d!124993 (= lt!457251 (select (content!519 Nil!22033) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun e!586369 () Bool)

(assert (=> d!124993 (= lt!457251 e!586369)))

(declare-fun res!691974 () Bool)

(assert (=> d!124993 (=> (not res!691974) (not e!586369))))

(assert (=> d!124993 (= res!691974 ((_ is Cons!22032) Nil!22033))))

(assert (=> d!124993 (= (contains!6046 Nil!22033 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) lt!457251)))

(declare-fun b!1036695 () Bool)

(declare-fun e!586368 () Bool)

(assert (=> b!1036695 (= e!586369 e!586368)))

(declare-fun res!691975 () Bool)

(assert (=> b!1036695 (=> res!691975 e!586368)))

(assert (=> b!1036695 (= res!691975 (= (h!23234 Nil!22033) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(declare-fun b!1036696 () Bool)

(assert (=> b!1036696 (= e!586368 (contains!6046 (t!31254 Nil!22033) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (= (and d!124993 res!691974) b!1036695))

(assert (= (and b!1036695 (not res!691975)) b!1036696))

(declare-fun m!957113 () Bool)

(assert (=> d!124993 m!957113))

(assert (=> d!124993 m!956101))

(declare-fun m!957115 () Bool)

(assert (=> d!124993 m!957115))

(assert (=> b!1036696 m!956101))

(declare-fun m!957117 () Bool)

(assert (=> b!1036696 m!957117))

(assert (=> b!1036161 d!124993))

(declare-fun d!124995 () Bool)

(assert (=> d!124995 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456827) lt!456836)) (v!14932 (getValueByKey!592 (toList!6953 lt!456827) lt!456836)))))

(assert (=> d!124643 d!124995))

(declare-fun d!124997 () Bool)

(declare-fun c!104930 () Bool)

(assert (=> d!124997 (= c!104930 (and ((_ is Cons!22031) (toList!6953 lt!456827)) (= (_1!7929 (h!23233 (toList!6953 lt!456827))) lt!456836)))))

(declare-fun e!586370 () Option!643)

(assert (=> d!124997 (= (getValueByKey!592 (toList!6953 lt!456827) lt!456836) e!586370)))

(declare-fun b!1036698 () Bool)

(declare-fun e!586371 () Option!643)

(assert (=> b!1036698 (= e!586370 e!586371)))

(declare-fun c!104931 () Bool)

(assert (=> b!1036698 (= c!104931 (and ((_ is Cons!22031) (toList!6953 lt!456827)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456827))) lt!456836))))))

(declare-fun b!1036700 () Bool)

(assert (=> b!1036700 (= e!586371 None!641)))

(declare-fun b!1036699 () Bool)

(assert (=> b!1036699 (= e!586371 (getValueByKey!592 (t!31249 (toList!6953 lt!456827)) lt!456836))))

(declare-fun b!1036697 () Bool)

(assert (=> b!1036697 (= e!586370 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456827)))))))

(assert (= (and d!124997 c!104930) b!1036697))

(assert (= (and d!124997 (not c!104930)) b!1036698))

(assert (= (and b!1036698 c!104931) b!1036699))

(assert (= (and b!1036698 (not c!104931)) b!1036700))

(declare-fun m!957119 () Bool)

(assert (=> b!1036699 m!957119))

(assert (=> d!124643 d!124997))

(declare-fun lt!457252 () Bool)

(declare-fun d!124999 () Bool)

(assert (=> d!124999 (= lt!457252 (select (content!518 (toList!6953 lt!457041)) (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))

(declare-fun e!586373 () Bool)

(assert (=> d!124999 (= lt!457252 e!586373)))

(declare-fun res!691976 () Bool)

(assert (=> d!124999 (=> (not res!691976) (not e!586373))))

(assert (=> d!124999 (= res!691976 ((_ is Cons!22031) (toList!6953 lt!457041)))))

(assert (=> d!124999 (= (contains!6045 (toList!6953 lt!457041) (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))) lt!457252)))

(declare-fun b!1036701 () Bool)

(declare-fun e!586372 () Bool)

(assert (=> b!1036701 (= e!586373 e!586372)))

(declare-fun res!691977 () Bool)

(assert (=> b!1036701 (=> res!691977 e!586372)))

(assert (=> b!1036701 (= res!691977 (= (h!23233 (toList!6953 lt!457041)) (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))

(declare-fun b!1036702 () Bool)

(assert (=> b!1036702 (= e!586372 (contains!6045 (t!31249 (toList!6953 lt!457041)) (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!124999 res!691976) b!1036701))

(assert (= (and b!1036701 (not res!691977)) b!1036702))

(declare-fun m!957121 () Bool)

(assert (=> d!124999 m!957121))

(declare-fun m!957123 () Bool)

(assert (=> d!124999 m!957123))

(declare-fun m!957125 () Bool)

(assert (=> b!1036702 m!957125))

(assert (=> b!1036208 d!124999))

(declare-fun d!125001 () Bool)

(assert (=> d!125001 (= (isEmpty!932 lt!456948) (isEmpty!934 (toList!6953 lt!456948)))))

(declare-fun bs!30359 () Bool)

(assert (= bs!30359 d!125001))

(declare-fun m!957127 () Bool)

(assert (=> bs!30359 m!957127))

(assert (=> b!1036081 d!125001))

(declare-fun d!125003 () Bool)

(assert (=> d!125003 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!457253 () Unit!33873)

(assert (=> d!125003 (= lt!457253 (choose!1711 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586374 () Bool)

(assert (=> d!125003 e!586374))

(declare-fun res!691978 () Bool)

(assert (=> d!125003 (=> (not res!691978) (not e!586374))))

(assert (=> d!125003 (= res!691978 (isStrictlySorted!715 (toList!6953 lt!456848)))))

(assert (=> d!125003 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457253)))

(declare-fun b!1036703 () Bool)

(assert (=> b!1036703 (= e!586374 (containsKey!565 (toList!6953 lt!456848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125003 res!691978) b!1036703))

(assert (=> d!125003 m!956211))

(assert (=> d!125003 m!956211))

(assert (=> d!125003 m!956213))

(declare-fun m!957129 () Bool)

(assert (=> d!125003 m!957129))

(declare-fun m!957131 () Bool)

(assert (=> d!125003 m!957131))

(assert (=> b!1036703 m!956207))

(assert (=> b!1036177 d!125003))

(assert (=> b!1036177 d!124713))

(assert (=> b!1036177 d!124715))

(declare-fun d!125005 () Bool)

(declare-fun c!104932 () Bool)

(assert (=> d!125005 (= c!104932 (and ((_ is Cons!22031) (toList!6953 lt!456987)) (= (_1!7929 (h!23233 (toList!6953 lt!456987))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun e!586375 () Option!643)

(assert (=> d!125005 (= (getValueByKey!592 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) e!586375)))

(declare-fun b!1036705 () Bool)

(declare-fun e!586376 () Option!643)

(assert (=> b!1036705 (= e!586375 e!586376)))

(declare-fun c!104933 () Bool)

(assert (=> b!1036705 (= c!104933 (and ((_ is Cons!22031) (toList!6953 lt!456987)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456987))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036707 () Bool)

(assert (=> b!1036707 (= e!586376 None!641)))

(declare-fun b!1036706 () Bool)

(assert (=> b!1036706 (= e!586376 (getValueByKey!592 (t!31249 (toList!6953 lt!456987)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036704 () Bool)

(assert (=> b!1036704 (= e!586375 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456987)))))))

(assert (= (and d!125005 c!104932) b!1036704))

(assert (= (and d!125005 (not c!104932)) b!1036705))

(assert (= (and b!1036705 c!104933) b!1036706))

(assert (= (and b!1036705 (not c!104933)) b!1036707))

(declare-fun m!957133 () Bool)

(assert (=> b!1036706 m!957133))

(assert (=> b!1036149 d!125005))

(assert (=> d!124567 d!124795))

(declare-fun d!125007 () Bool)

(declare-fun e!586378 () Bool)

(assert (=> d!125007 e!586378))

(declare-fun res!691979 () Bool)

(assert (=> d!125007 (=> res!691979 e!586378)))

(declare-fun lt!457256 () Bool)

(assert (=> d!125007 (= res!691979 (not lt!457256))))

(declare-fun lt!457255 () Bool)

(assert (=> d!125007 (= lt!457256 lt!457255)))

(declare-fun lt!457257 () Unit!33873)

(declare-fun e!586377 () Unit!33873)

(assert (=> d!125007 (= lt!457257 e!586377)))

(declare-fun c!104934 () Bool)

(assert (=> d!125007 (= c!104934 lt!457255)))

(assert (=> d!125007 (= lt!457255 (containsKey!565 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(assert (=> d!125007 (= (contains!6044 lt!456933 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!457256)))

(declare-fun b!1036708 () Bool)

(declare-fun lt!457254 () Unit!33873)

(assert (=> b!1036708 (= e!586377 lt!457254)))

(assert (=> b!1036708 (= lt!457254 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(assert (=> b!1036708 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036709 () Bool)

(declare-fun Unit!33909 () Unit!33873)

(assert (=> b!1036709 (= e!586377 Unit!33909)))

(declare-fun b!1036710 () Bool)

(assert (=> b!1036710 (= e!586378 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456933) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!125007 c!104934) b!1036708))

(assert (= (and d!125007 (not c!104934)) b!1036709))

(assert (= (and d!125007 (not res!691979)) b!1036710))

(declare-fun m!957135 () Bool)

(assert (=> d!125007 m!957135))

(declare-fun m!957137 () Bool)

(assert (=> b!1036708 m!957137))

(assert (=> b!1036708 m!955995))

(assert (=> b!1036708 m!955995))

(declare-fun m!957139 () Bool)

(assert (=> b!1036708 m!957139))

(assert (=> b!1036710 m!955995))

(assert (=> b!1036710 m!955995))

(assert (=> b!1036710 m!957139))

(assert (=> d!124559 d!125007))

(declare-fun d!125009 () Bool)

(declare-fun c!104935 () Bool)

(assert (=> d!125009 (= c!104935 (and ((_ is Cons!22031) lt!456931) (= (_1!7929 (h!23233 lt!456931)) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586379 () Option!643)

(assert (=> d!125009 (= (getValueByKey!592 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) e!586379)))

(declare-fun b!1036712 () Bool)

(declare-fun e!586380 () Option!643)

(assert (=> b!1036712 (= e!586379 e!586380)))

(declare-fun c!104936 () Bool)

(assert (=> b!1036712 (= c!104936 (and ((_ is Cons!22031) lt!456931) (not (= (_1!7929 (h!23233 lt!456931)) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036714 () Bool)

(assert (=> b!1036714 (= e!586380 None!641)))

(declare-fun b!1036713 () Bool)

(assert (=> b!1036713 (= e!586380 (getValueByKey!592 (t!31249 lt!456931) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036711 () Bool)

(assert (=> b!1036711 (= e!586379 (Some!642 (_2!7929 (h!23233 lt!456931))))))

(assert (= (and d!125009 c!104935) b!1036711))

(assert (= (and d!125009 (not c!104935)) b!1036712))

(assert (= (and b!1036712 c!104936) b!1036713))

(assert (= (and b!1036712 (not c!104936)) b!1036714))

(declare-fun m!957141 () Bool)

(assert (=> b!1036713 m!957141))

(assert (=> d!124559 d!125009))

(declare-fun d!125011 () Bool)

(assert (=> d!125011 (= (getValueByKey!592 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun lt!457258 () Unit!33873)

(assert (=> d!125011 (= lt!457258 (choose!1712 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun e!586381 () Bool)

(assert (=> d!125011 e!586381))

(declare-fun res!691980 () Bool)

(assert (=> d!125011 (=> (not res!691980) (not e!586381))))

(assert (=> d!125011 (= res!691980 (isStrictlySorted!715 lt!456931))))

(assert (=> d!125011 (= (lemmaContainsTupThenGetReturnValue!281 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!457258)))

(declare-fun b!1036715 () Bool)

(declare-fun res!691981 () Bool)

(assert (=> b!1036715 (=> (not res!691981) (not e!586381))))

(assert (=> b!1036715 (= res!691981 (containsKey!565 lt!456931 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036716 () Bool)

(assert (=> b!1036716 (= e!586381 (contains!6045 lt!456931 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(assert (= (and d!125011 res!691980) b!1036715))

(assert (= (and b!1036715 res!691981) b!1036716))

(assert (=> d!125011 m!955989))

(declare-fun m!957143 () Bool)

(assert (=> d!125011 m!957143))

(declare-fun m!957145 () Bool)

(assert (=> d!125011 m!957145))

(declare-fun m!957147 () Bool)

(assert (=> b!1036715 m!957147))

(declare-fun m!957149 () Bool)

(assert (=> b!1036716 m!957149))

(assert (=> d!124559 d!125011))

(declare-fun b!1036717 () Bool)

(declare-fun e!586382 () List!22035)

(declare-fun e!586383 () List!22035)

(assert (=> b!1036717 (= e!586382 e!586383)))

(declare-fun c!104940 () Bool)

(assert (=> b!1036717 (= c!104940 (and ((_ is Cons!22031) (toList!6953 lt!456871)) (= (_1!7929 (h!23233 (toList!6953 lt!456871))) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036718 () Bool)

(declare-fun e!586385 () List!22035)

(declare-fun call!43891 () List!22035)

(assert (=> b!1036718 (= e!586385 call!43891)))

(declare-fun call!43890 () List!22035)

(declare-fun c!104937 () Bool)

(declare-fun bm!43887 () Bool)

(declare-fun e!586386 () List!22035)

(assert (=> bm!43887 (= call!43890 ($colon$colon!606 e!586386 (ite c!104937 (h!23233 (toList!6953 lt!456871)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))))

(declare-fun c!104938 () Bool)

(assert (=> bm!43887 (= c!104938 c!104937)))

(declare-fun d!125013 () Bool)

(declare-fun e!586384 () Bool)

(assert (=> d!125013 e!586384))

(declare-fun res!691982 () Bool)

(assert (=> d!125013 (=> (not res!691982) (not e!586384))))

(declare-fun lt!457259 () List!22035)

(assert (=> d!125013 (= res!691982 (isStrictlySorted!715 lt!457259))))

(assert (=> d!125013 (= lt!457259 e!586382)))

(assert (=> d!125013 (= c!104937 (and ((_ is Cons!22031) (toList!6953 lt!456871)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456871))) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(assert (=> d!125013 (isStrictlySorted!715 (toList!6953 lt!456871))))

(assert (=> d!125013 (= (insertStrictlySorted!373 (toList!6953 lt!456871) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))) lt!457259)))

(declare-fun c!104939 () Bool)

(declare-fun b!1036719 () Bool)

(assert (=> b!1036719 (= c!104939 (and ((_ is Cons!22031) (toList!6953 lt!456871)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456871))) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(assert (=> b!1036719 (= e!586383 e!586385)))

(declare-fun b!1036720 () Bool)

(assert (=> b!1036720 (= e!586386 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456871)) (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036721 () Bool)

(declare-fun res!691983 () Bool)

(assert (=> b!1036721 (=> (not res!691983) (not e!586384))))

(assert (=> b!1036721 (= res!691983 (containsKey!565 lt!457259 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036722 () Bool)

(assert (=> b!1036722 (= e!586382 call!43890)))

(declare-fun bm!43888 () Bool)

(declare-fun call!43892 () List!22035)

(assert (=> bm!43888 (= call!43891 call!43892)))

(declare-fun b!1036723 () Bool)

(assert (=> b!1036723 (= e!586384 (contains!6045 lt!457259 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) (_2!7929 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))))

(declare-fun b!1036724 () Bool)

(assert (=> b!1036724 (= e!586385 call!43891)))

(declare-fun bm!43889 () Bool)

(assert (=> bm!43889 (= call!43892 call!43890)))

(declare-fun b!1036725 () Bool)

(assert (=> b!1036725 (= e!586386 (ite c!104940 (t!31249 (toList!6953 lt!456871)) (ite c!104939 (Cons!22031 (h!23233 (toList!6953 lt!456871)) (t!31249 (toList!6953 lt!456871))) Nil!22032)))))

(declare-fun b!1036726 () Bool)

(assert (=> b!1036726 (= e!586383 call!43892)))

(assert (= (and d!125013 c!104937) b!1036722))

(assert (= (and d!125013 (not c!104937)) b!1036717))

(assert (= (and b!1036717 c!104940) b!1036726))

(assert (= (and b!1036717 (not c!104940)) b!1036719))

(assert (= (and b!1036719 c!104939) b!1036724))

(assert (= (and b!1036719 (not c!104939)) b!1036718))

(assert (= (or b!1036724 b!1036718) bm!43888))

(assert (= (or b!1036726 bm!43888) bm!43889))

(assert (= (or b!1036722 bm!43889) bm!43887))

(assert (= (and bm!43887 c!104938) b!1036720))

(assert (= (and bm!43887 (not c!104938)) b!1036725))

(assert (= (and d!125013 res!691982) b!1036721))

(assert (= (and b!1036721 res!691983) b!1036723))

(declare-fun m!957151 () Bool)

(assert (=> b!1036723 m!957151))

(declare-fun m!957153 () Bool)

(assert (=> bm!43887 m!957153))

(declare-fun m!957155 () Bool)

(assert (=> b!1036720 m!957155))

(declare-fun m!957157 () Bool)

(assert (=> b!1036721 m!957157))

(declare-fun m!957159 () Bool)

(assert (=> d!125013 m!957159))

(declare-fun m!957161 () Bool)

(assert (=> d!125013 m!957161))

(assert (=> d!124559 d!125013))

(declare-fun d!125015 () Bool)

(assert (=> d!125015 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456831) lt!456839)) (v!14932 (getValueByKey!592 (toList!6953 lt!456831) lt!456839)))))

(assert (=> d!124647 d!125015))

(declare-fun d!125017 () Bool)

(declare-fun c!104941 () Bool)

(assert (=> d!125017 (= c!104941 (and ((_ is Cons!22031) (toList!6953 lt!456831)) (= (_1!7929 (h!23233 (toList!6953 lt!456831))) lt!456839)))))

(declare-fun e!586387 () Option!643)

(assert (=> d!125017 (= (getValueByKey!592 (toList!6953 lt!456831) lt!456839) e!586387)))

(declare-fun b!1036728 () Bool)

(declare-fun e!586388 () Option!643)

(assert (=> b!1036728 (= e!586387 e!586388)))

(declare-fun c!104942 () Bool)

(assert (=> b!1036728 (= c!104942 (and ((_ is Cons!22031) (toList!6953 lt!456831)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456831))) lt!456839))))))

(declare-fun b!1036730 () Bool)

(assert (=> b!1036730 (= e!586388 None!641)))

(declare-fun b!1036729 () Bool)

(assert (=> b!1036729 (= e!586388 (getValueByKey!592 (t!31249 (toList!6953 lt!456831)) lt!456839))))

(declare-fun b!1036727 () Bool)

(assert (=> b!1036727 (= e!586387 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456831)))))))

(assert (= (and d!125017 c!104941) b!1036727))

(assert (= (and d!125017 (not c!104941)) b!1036728))

(assert (= (and b!1036728 c!104942) b!1036729))

(assert (= (and b!1036728 (not c!104942)) b!1036730))

(declare-fun m!957163 () Bool)

(assert (=> b!1036729 m!957163))

(assert (=> d!124647 d!125017))

(assert (=> b!1036017 d!124573))

(declare-fun d!125019 () Bool)

(assert (=> d!125019 (= (size!31952 thiss!1427) (bvadd (_size!2947 thiss!1427) (bvsdiv (bvadd (extraKeys!6000 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1036168 d!125019))

(assert (=> bm!43830 d!124981))

(assert (=> d!124563 d!124541))

(assert (=> d!124563 d!124553))

(declare-fun d!125021 () Bool)

(assert (=> d!125021 (= (apply!942 (+!3065 lt!456855 (tuple2!15839 lt!456863 lt!456768)) lt!456858) (apply!942 lt!456855 lt!456858))))

(assert (=> d!125021 true))

(declare-fun _$34!1173 () Unit!33873)

(assert (=> d!125021 (= (choose!1709 lt!456855 lt!456863 lt!456768 lt!456858) _$34!1173)))

(declare-fun bs!30360 () Bool)

(assert (= bs!30360 d!125021))

(assert (=> bs!30360 m!955877))

(assert (=> bs!30360 m!955877))

(assert (=> bs!30360 m!955895))

(assert (=> bs!30360 m!955875))

(assert (=> d!124563 d!125021))

(declare-fun d!125023 () Bool)

(declare-fun e!586390 () Bool)

(assert (=> d!125023 e!586390))

(declare-fun res!691984 () Bool)

(assert (=> d!125023 (=> res!691984 e!586390)))

(declare-fun lt!457262 () Bool)

(assert (=> d!125023 (= res!691984 (not lt!457262))))

(declare-fun lt!457261 () Bool)

(assert (=> d!125023 (= lt!457262 lt!457261)))

(declare-fun lt!457263 () Unit!33873)

(declare-fun e!586389 () Unit!33873)

(assert (=> d!125023 (= lt!457263 e!586389)))

(declare-fun c!104943 () Bool)

(assert (=> d!125023 (= c!104943 lt!457261)))

(assert (=> d!125023 (= lt!457261 (containsKey!565 (toList!6953 lt!456855) lt!456858))))

(assert (=> d!125023 (= (contains!6044 lt!456855 lt!456858) lt!457262)))

(declare-fun b!1036731 () Bool)

(declare-fun lt!457260 () Unit!33873)

(assert (=> b!1036731 (= e!586389 lt!457260)))

(assert (=> b!1036731 (= lt!457260 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456855) lt!456858))))

(assert (=> b!1036731 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456855) lt!456858))))

(declare-fun b!1036732 () Bool)

(declare-fun Unit!33910 () Unit!33873)

(assert (=> b!1036732 (= e!586389 Unit!33910)))

(declare-fun b!1036733 () Bool)

(assert (=> b!1036733 (= e!586390 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456855) lt!456858)))))

(assert (= (and d!125023 c!104943) b!1036731))

(assert (= (and d!125023 (not c!104943)) b!1036732))

(assert (= (and d!125023 (not res!691984)) b!1036733))

(declare-fun m!957165 () Bool)

(assert (=> d!125023 m!957165))

(declare-fun m!957167 () Bool)

(assert (=> b!1036731 m!957167))

(assert (=> b!1036731 m!955975))

(assert (=> b!1036731 m!955975))

(declare-fun m!957169 () Bool)

(assert (=> b!1036731 m!957169))

(assert (=> b!1036733 m!955975))

(assert (=> b!1036733 m!955975))

(assert (=> b!1036733 m!957169))

(assert (=> d!124563 d!125023))

(assert (=> d!124563 d!124545))

(declare-fun d!125025 () Bool)

(declare-fun lt!457264 () Bool)

(assert (=> d!125025 (= lt!457264 (select (content!518 (toList!6953 lt!456918)) (tuple2!15839 lt!456869 lt!456768)))))

(declare-fun e!586392 () Bool)

(assert (=> d!125025 (= lt!457264 e!586392)))

(declare-fun res!691985 () Bool)

(assert (=> d!125025 (=> (not res!691985) (not e!586392))))

(assert (=> d!125025 (= res!691985 ((_ is Cons!22031) (toList!6953 lt!456918)))))

(assert (=> d!125025 (= (contains!6045 (toList!6953 lt!456918) (tuple2!15839 lt!456869 lt!456768)) lt!457264)))

(declare-fun b!1036734 () Bool)

(declare-fun e!586391 () Bool)

(assert (=> b!1036734 (= e!586392 e!586391)))

(declare-fun res!691986 () Bool)

(assert (=> b!1036734 (=> res!691986 e!586391)))

(assert (=> b!1036734 (= res!691986 (= (h!23233 (toList!6953 lt!456918)) (tuple2!15839 lt!456869 lt!456768)))))

(declare-fun b!1036735 () Bool)

(assert (=> b!1036735 (= e!586391 (contains!6045 (t!31249 (toList!6953 lt!456918)) (tuple2!15839 lt!456869 lt!456768)))))

(assert (= (and d!125025 res!691985) b!1036734))

(assert (= (and b!1036734 (not res!691986)) b!1036735))

(declare-fun m!957171 () Bool)

(assert (=> d!125025 m!957171))

(declare-fun m!957173 () Bool)

(assert (=> d!125025 m!957173))

(declare-fun m!957175 () Bool)

(assert (=> b!1036735 m!957175))

(assert (=> b!1036033 d!125025))

(declare-fun d!125027 () Bool)

(declare-fun e!586393 () Bool)

(assert (=> d!125027 e!586393))

(declare-fun res!691987 () Bool)

(assert (=> d!125027 (=> (not res!691987) (not e!586393))))

(declare-fun lt!457268 () ListLongMap!13875)

(assert (=> d!125027 (= res!691987 (contains!6044 lt!457268 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(declare-fun lt!457266 () List!22035)

(assert (=> d!125027 (= lt!457268 (ListLongMap!13876 lt!457266))))

(declare-fun lt!457267 () Unit!33873)

(declare-fun lt!457265 () Unit!33873)

(assert (=> d!125027 (= lt!457267 lt!457265)))

(assert (=> d!125027 (= (getValueByKey!592 lt!457266 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(assert (=> d!125027 (= lt!457265 (lemmaContainsTupThenGetReturnValue!281 lt!457266 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(assert (=> d!125027 (= lt!457266 (insertStrictlySorted!373 (toList!6953 call!43849) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))))))

(assert (=> d!125027 (= (+!3065 call!43849 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))) lt!457268)))

(declare-fun b!1036736 () Bool)

(declare-fun res!691988 () Bool)

(assert (=> b!1036736 (=> (not res!691988) (not e!586393))))

(assert (=> b!1036736 (= res!691988 (= (getValueByKey!592 (toList!6953 lt!457268) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769)))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))))

(declare-fun b!1036737 () Bool)

(assert (=> b!1036737 (= e!586393 (contains!6045 (toList!6953 lt!457268) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 lt!456769))))))

(assert (= (and d!125027 res!691987) b!1036736))

(assert (= (and b!1036736 res!691988) b!1036737))

(declare-fun m!957177 () Bool)

(assert (=> d!125027 m!957177))

(declare-fun m!957179 () Bool)

(assert (=> d!125027 m!957179))

(declare-fun m!957181 () Bool)

(assert (=> d!125027 m!957181))

(declare-fun m!957183 () Bool)

(assert (=> d!125027 m!957183))

(declare-fun m!957185 () Bool)

(assert (=> b!1036736 m!957185))

(declare-fun m!957187 () Bool)

(assert (=> b!1036737 m!957187))

(assert (=> b!1036202 d!125027))

(assert (=> b!1036188 d!124693))

(declare-fun d!125029 () Bool)

(assert (=> d!125029 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456855) lt!456858)) (v!14932 (getValueByKey!592 (toList!6953 lt!456855) lt!456858)))))

(assert (=> d!124553 d!125029))

(declare-fun d!125031 () Bool)

(declare-fun c!104944 () Bool)

(assert (=> d!125031 (= c!104944 (and ((_ is Cons!22031) (toList!6953 lt!456855)) (= (_1!7929 (h!23233 (toList!6953 lt!456855))) lt!456858)))))

(declare-fun e!586394 () Option!643)

(assert (=> d!125031 (= (getValueByKey!592 (toList!6953 lt!456855) lt!456858) e!586394)))

(declare-fun b!1036739 () Bool)

(declare-fun e!586395 () Option!643)

(assert (=> b!1036739 (= e!586394 e!586395)))

(declare-fun c!104945 () Bool)

(assert (=> b!1036739 (= c!104945 (and ((_ is Cons!22031) (toList!6953 lt!456855)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456855))) lt!456858))))))

(declare-fun b!1036741 () Bool)

(assert (=> b!1036741 (= e!586395 None!641)))

(declare-fun b!1036740 () Bool)

(assert (=> b!1036740 (= e!586395 (getValueByKey!592 (t!31249 (toList!6953 lt!456855)) lt!456858))))

(declare-fun b!1036738 () Bool)

(assert (=> b!1036738 (= e!586394 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456855)))))))

(assert (= (and d!125031 c!104944) b!1036738))

(assert (= (and d!125031 (not c!104944)) b!1036739))

(assert (= (and b!1036739 c!104945) b!1036740))

(assert (= (and b!1036739 (not c!104945)) b!1036741))

(declare-fun m!957189 () Bool)

(assert (=> b!1036740 m!957189))

(assert (=> d!124553 d!125031))

(assert (=> b!1036130 d!124789))

(assert (=> b!1036130 d!124791))

(declare-fun d!125033 () Bool)

(assert (=> d!125033 (= ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (toList!6953 (map!14734 thiss!1427))) key!909) (h!23233 (toList!6953 (map!14734 thiss!1427)))) (Cons!22031 (h!23233 (toList!6953 (map!14734 thiss!1427))) (removeStrictlySorted!58 (t!31249 (toList!6953 (map!14734 thiss!1427))) key!909)))))

(assert (=> b!1036076 d!125033))

(declare-fun b!1036742 () Bool)

(declare-fun e!586398 () List!22035)

(declare-fun e!586397 () List!22035)

(assert (=> b!1036742 (= e!586398 e!586397)))

(declare-fun c!104947 () Bool)

(assert (=> b!1036742 (= c!104947 (and ((_ is Cons!22031) (t!31249 (toList!6953 (map!14734 thiss!1427)))) (not (= (_1!7929 (h!23233 (t!31249 (toList!6953 (map!14734 thiss!1427))))) key!909))))))

(declare-fun d!125035 () Bool)

(declare-fun e!586396 () Bool)

(assert (=> d!125035 e!586396))

(declare-fun res!691989 () Bool)

(assert (=> d!125035 (=> (not res!691989) (not e!586396))))

(declare-fun lt!457269 () List!22035)

(assert (=> d!125035 (= res!691989 (isStrictlySorted!715 lt!457269))))

(assert (=> d!125035 (= lt!457269 e!586398)))

(declare-fun c!104946 () Bool)

(assert (=> d!125035 (= c!104946 (and ((_ is Cons!22031) (t!31249 (toList!6953 (map!14734 thiss!1427)))) (= (_1!7929 (h!23233 (t!31249 (toList!6953 (map!14734 thiss!1427))))) key!909)))))

(assert (=> d!125035 (isStrictlySorted!715 (t!31249 (toList!6953 (map!14734 thiss!1427))))))

(assert (=> d!125035 (= (removeStrictlySorted!58 (t!31249 (toList!6953 (map!14734 thiss!1427))) key!909) lt!457269)))

(declare-fun b!1036743 () Bool)

(assert (=> b!1036743 (= e!586398 (t!31249 (t!31249 (toList!6953 (map!14734 thiss!1427)))))))

(declare-fun b!1036744 () Bool)

(assert (=> b!1036744 (= e!586396 (not (containsKey!565 lt!457269 key!909)))))

(declare-fun b!1036745 () Bool)

(assert (=> b!1036745 (= e!586397 Nil!22032)))

(declare-fun b!1036746 () Bool)

(assert (=> b!1036746 (= e!586397 ($colon$colon!606 (removeStrictlySorted!58 (t!31249 (t!31249 (toList!6953 (map!14734 thiss!1427)))) key!909) (h!23233 (t!31249 (toList!6953 (map!14734 thiss!1427))))))))

(assert (= (and d!125035 c!104946) b!1036743))

(assert (= (and d!125035 (not c!104946)) b!1036742))

(assert (= (and b!1036742 c!104947) b!1036746))

(assert (= (and b!1036742 (not c!104947)) b!1036745))

(assert (= (and d!125035 res!691989) b!1036744))

(declare-fun m!957191 () Bool)

(assert (=> d!125035 m!957191))

(assert (=> d!125035 m!956861))

(declare-fun m!957193 () Bool)

(assert (=> b!1036744 m!957193))

(declare-fun m!957195 () Bool)

(assert (=> b!1036746 m!957195))

(assert (=> b!1036746 m!957195))

(declare-fun m!957197 () Bool)

(assert (=> b!1036746 m!957197))

(assert (=> b!1036076 d!125035))

(assert (=> b!1036158 d!124693))

(declare-fun d!125037 () Bool)

(assert (=> d!125037 (= (get!16475 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14932 (getValueByKey!592 (toList!6953 lt!456840) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124589 d!125037))

(assert (=> d!124589 d!124951))

(declare-fun d!125039 () Bool)

(assert (=> d!125039 (= (get!16476 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14930 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036093 d!125039))

(declare-fun d!125041 () Bool)

(declare-fun lt!457270 () Bool)

(assert (=> d!125041 (= lt!457270 (select (content!518 (toList!6953 lt!456933)) (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))

(declare-fun e!586400 () Bool)

(assert (=> d!125041 (= lt!457270 e!586400)))

(declare-fun res!691990 () Bool)

(assert (=> d!125041 (=> (not res!691990) (not e!586400))))

(assert (=> d!125041 (= res!691990 ((_ is Cons!22031) (toList!6953 lt!456933)))))

(assert (=> d!125041 (= (contains!6045 (toList!6953 lt!456933) (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!457270)))

(declare-fun b!1036747 () Bool)

(declare-fun e!586399 () Bool)

(assert (=> b!1036747 (= e!586400 e!586399)))

(declare-fun res!691991 () Bool)

(assert (=> b!1036747 (=> res!691991 e!586399)))

(assert (=> b!1036747 (= res!691991 (= (h!23233 (toList!6953 lt!456933)) (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))

(declare-fun b!1036748 () Bool)

(assert (=> b!1036748 (= e!586399 (contains!6045 (t!31249 (toList!6953 lt!456933)) (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))))))

(assert (= (and d!125041 res!691990) b!1036747))

(assert (= (and b!1036747 (not res!691991)) b!1036748))

(declare-fun m!957199 () Bool)

(assert (=> d!125041 m!957199))

(declare-fun m!957201 () Bool)

(assert (=> d!125041 m!957201))

(declare-fun m!957203 () Bool)

(assert (=> b!1036748 m!957203))

(assert (=> b!1036043 d!125041))

(declare-fun c!104948 () Bool)

(declare-fun d!125043 () Bool)

(assert (=> d!125043 (= c!104948 (and ((_ is Cons!22031) (toList!6953 lt!456999)) (= (_1!7929 (h!23233 (toList!6953 lt!456999))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun e!586401 () Option!643)

(assert (=> d!125043 (= (getValueByKey!592 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) e!586401)))

(declare-fun b!1036750 () Bool)

(declare-fun e!586402 () Option!643)

(assert (=> b!1036750 (= e!586401 e!586402)))

(declare-fun c!104949 () Bool)

(assert (=> b!1036750 (= c!104949 (and ((_ is Cons!22031) (toList!6953 lt!456999)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456999))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))))

(declare-fun b!1036752 () Bool)

(assert (=> b!1036752 (= e!586402 None!641)))

(declare-fun b!1036751 () Bool)

(assert (=> b!1036751 (= e!586402 (getValueByKey!592 (t!31249 (toList!6953 lt!456999)) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036749 () Bool)

(assert (=> b!1036749 (= e!586401 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456999)))))))

(assert (= (and d!125043 c!104948) b!1036749))

(assert (= (and d!125043 (not c!104948)) b!1036750))

(assert (= (and b!1036750 c!104949) b!1036751))

(assert (= (and b!1036750 (not c!104949)) b!1036752))

(declare-fun m!957205 () Bool)

(assert (=> b!1036751 m!957205))

(assert (=> b!1036156 d!125043))

(assert (=> d!124551 d!124537))

(assert (=> d!124551 d!124559))

(declare-fun d!125045 () Bool)

(assert (=> d!125045 (contains!6044 (+!3065 lt!456871 (tuple2!15839 lt!456868 (zeroValue!6104 thiss!1427))) lt!456861)))

(assert (=> d!125045 true))

(declare-fun _$35!442 () Unit!33873)

(assert (=> d!125045 (= (choose!1710 lt!456871 lt!456868 (zeroValue!6104 thiss!1427) lt!456861) _$35!442)))

(declare-fun bs!30361 () Bool)

(assert (= bs!30361 d!125045))

(assert (=> bs!30361 m!955871))

(assert (=> bs!30361 m!955871))

(assert (=> bs!30361 m!955873))

(assert (=> d!124551 d!125045))

(declare-fun d!125047 () Bool)

(declare-fun e!586404 () Bool)

(assert (=> d!125047 e!586404))

(declare-fun res!691992 () Bool)

(assert (=> d!125047 (=> res!691992 e!586404)))

(declare-fun lt!457273 () Bool)

(assert (=> d!125047 (= res!691992 (not lt!457273))))

(declare-fun lt!457272 () Bool)

(assert (=> d!125047 (= lt!457273 lt!457272)))

(declare-fun lt!457274 () Unit!33873)

(declare-fun e!586403 () Unit!33873)

(assert (=> d!125047 (= lt!457274 e!586403)))

(declare-fun c!104950 () Bool)

(assert (=> d!125047 (= c!104950 lt!457272)))

(assert (=> d!125047 (= lt!457272 (containsKey!565 (toList!6953 lt!456871) lt!456861))))

(assert (=> d!125047 (= (contains!6044 lt!456871 lt!456861) lt!457273)))

(declare-fun b!1036753 () Bool)

(declare-fun lt!457271 () Unit!33873)

(assert (=> b!1036753 (= e!586403 lt!457271)))

(assert (=> b!1036753 (= lt!457271 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456871) lt!456861))))

(assert (=> b!1036753 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456871) lt!456861))))

(declare-fun b!1036754 () Bool)

(declare-fun Unit!33911 () Unit!33873)

(assert (=> b!1036754 (= e!586403 Unit!33911)))

(declare-fun b!1036755 () Bool)

(assert (=> b!1036755 (= e!586404 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456871) lt!456861)))))

(assert (= (and d!125047 c!104950) b!1036753))

(assert (= (and d!125047 (not c!104950)) b!1036754))

(assert (= (and d!125047 (not res!691992)) b!1036755))

(declare-fun m!957207 () Bool)

(assert (=> d!125047 m!957207))

(declare-fun m!957209 () Bool)

(assert (=> b!1036753 m!957209))

(declare-fun m!957211 () Bool)

(assert (=> b!1036753 m!957211))

(assert (=> b!1036753 m!957211))

(declare-fun m!957213 () Bool)

(assert (=> b!1036753 m!957213))

(assert (=> b!1036755 m!957211))

(assert (=> b!1036755 m!957211))

(assert (=> b!1036755 m!957213))

(assert (=> d!124551 d!125047))

(declare-fun d!125049 () Bool)

(declare-fun e!586406 () Bool)

(assert (=> d!125049 e!586406))

(declare-fun res!691993 () Bool)

(assert (=> d!125049 (=> res!691993 e!586406)))

(declare-fun lt!457277 () Bool)

(assert (=> d!125049 (= res!691993 (not lt!457277))))

(declare-fun lt!457276 () Bool)

(assert (=> d!125049 (= lt!457277 lt!457276)))

(declare-fun lt!457278 () Unit!33873)

(declare-fun e!586405 () Unit!33873)

(assert (=> d!125049 (= lt!457278 e!586405)))

(declare-fun c!104951 () Bool)

(assert (=> d!125049 (= c!104951 lt!457276)))

(assert (=> d!125049 (= lt!457276 (containsKey!565 (toList!6953 lt!456948) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125049 (= (contains!6044 lt!456948 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457277)))

(declare-fun b!1036756 () Bool)

(declare-fun lt!457275 () Unit!33873)

(assert (=> b!1036756 (= e!586405 lt!457275)))

(assert (=> b!1036756 (= lt!457275 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456948) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036756 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036757 () Bool)

(declare-fun Unit!33912 () Unit!33873)

(assert (=> b!1036757 (= e!586405 Unit!33912)))

(declare-fun b!1036758 () Bool)

(assert (=> b!1036758 (= e!586406 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125049 c!104951) b!1036756))

(assert (= (and d!125049 (not c!104951)) b!1036757))

(assert (= (and d!125049 (not res!691993)) b!1036758))

(declare-fun m!957215 () Bool)

(assert (=> d!125049 m!957215))

(declare-fun m!957217 () Bool)

(assert (=> b!1036756 m!957217))

(declare-fun m!957219 () Bool)

(assert (=> b!1036756 m!957219))

(assert (=> b!1036756 m!957219))

(declare-fun m!957221 () Bool)

(assert (=> b!1036756 m!957221))

(assert (=> b!1036758 m!957219))

(assert (=> b!1036758 m!957219))

(assert (=> b!1036758 m!957221))

(assert (=> d!124575 d!125049))

(assert (=> d!124575 d!124587))

(declare-fun d!125051 () Bool)

(assert (=> d!125051 (= (apply!942 lt!456948 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (get!16475 (getValueByKey!592 (toList!6953 lt!456948) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30362 () Bool)

(assert (= bs!30362 d!125051))

(assert (=> bs!30362 m!955785))

(assert (=> bs!30362 m!956891))

(assert (=> bs!30362 m!956891))

(declare-fun m!957223 () Bool)

(assert (=> bs!30362 m!957223))

(assert (=> b!1036082 d!125051))

(assert (=> b!1036082 d!124579))

(declare-fun d!125053 () Bool)

(assert (=> d!125053 (arrayContainsKey!0 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000)))

(declare-fun lt!457281 () Unit!33873)

(declare-fun choose!13 (array!65276 (_ BitVec 64) (_ BitVec 32)) Unit!33873)

(assert (=> d!125053 (= lt!457281 (choose!13 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000))))

(assert (=> d!125053 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125053 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000) lt!457281)))

(declare-fun bs!30363 () Bool)

(assert (= bs!30363 d!125053))

(assert (=> bs!30363 m!956105))

(declare-fun m!957225 () Bool)

(assert (=> bs!30363 m!957225))

(assert (=> b!1036124 d!125053))

(declare-fun d!125055 () Bool)

(declare-fun res!691998 () Bool)

(declare-fun e!586411 () Bool)

(assert (=> d!125055 (=> res!691998 e!586411)))

(assert (=> d!125055 (= res!691998 (= (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) lt!456968))))

(assert (=> d!125055 (= (arrayContainsKey!0 (_keys!11456 lt!456769) lt!456968 #b00000000000000000000000000000000) e!586411)))

(declare-fun b!1036763 () Bool)

(declare-fun e!586412 () Bool)

(assert (=> b!1036763 (= e!586411 e!586412)))

(declare-fun res!691999 () Bool)

(assert (=> b!1036763 (=> (not res!691999) (not e!586412))))

(assert (=> b!1036763 (= res!691999 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(declare-fun b!1036764 () Bool)

(assert (=> b!1036764 (= e!586412 (arrayContainsKey!0 (_keys!11456 lt!456769) lt!456968 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125055 (not res!691998)) b!1036763))

(assert (= (and b!1036763 res!691999) b!1036764))

(assert (=> d!125055 m!956101))

(declare-fun m!957227 () Bool)

(assert (=> b!1036764 m!957227))

(assert (=> b!1036124 d!125055))

(declare-fun d!125057 () Bool)

(declare-fun lt!457289 () SeekEntryResult!9741)

(assert (=> d!125057 (and (or ((_ is Undefined!9741) lt!457289) (not ((_ is Found!9741) lt!457289)) (and (bvsge (index!41335 lt!457289) #b00000000000000000000000000000000) (bvslt (index!41335 lt!457289) (size!31948 (_keys!11456 lt!456769))))) (or ((_ is Undefined!9741) lt!457289) ((_ is Found!9741) lt!457289) (not ((_ is MissingZero!9741) lt!457289)) (and (bvsge (index!41334 lt!457289) #b00000000000000000000000000000000) (bvslt (index!41334 lt!457289) (size!31948 (_keys!11456 lt!456769))))) (or ((_ is Undefined!9741) lt!457289) ((_ is Found!9741) lt!457289) ((_ is MissingZero!9741) lt!457289) (not ((_ is MissingVacant!9741) lt!457289)) (and (bvsge (index!41337 lt!457289) #b00000000000000000000000000000000) (bvslt (index!41337 lt!457289) (size!31948 (_keys!11456 lt!456769))))) (or ((_ is Undefined!9741) lt!457289) (ite ((_ is Found!9741) lt!457289) (= (select (arr!31419 (_keys!11456 lt!456769)) (index!41335 lt!457289)) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9741) lt!457289) (= (select (arr!31419 (_keys!11456 lt!456769)) (index!41334 lt!457289)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9741) lt!457289) (= (select (arr!31419 (_keys!11456 lt!456769)) (index!41337 lt!457289)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!586420 () SeekEntryResult!9741)

(assert (=> d!125057 (= lt!457289 e!586420)))

(declare-fun c!104959 () Bool)

(declare-fun lt!457290 () SeekEntryResult!9741)

(assert (=> d!125057 (= c!104959 (and ((_ is Intermediate!9741) lt!457290) (undefined!10553 lt!457290)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65276 (_ BitVec 32)) SeekEntryResult!9741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125057 (= lt!457290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (mask!30166 lt!456769)) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (_keys!11456 lt!456769) (mask!30166 lt!456769)))))

(assert (=> d!125057 (validMask!0 (mask!30166 lt!456769))))

(assert (=> d!125057 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (_keys!11456 lt!456769) (mask!30166 lt!456769)) lt!457289)))

(declare-fun b!1036777 () Bool)

(declare-fun e!586421 () SeekEntryResult!9741)

(assert (=> b!1036777 (= e!586421 (Found!9741 (index!41336 lt!457290)))))

(declare-fun b!1036778 () Bool)

(assert (=> b!1036778 (= e!586420 Undefined!9741)))

(declare-fun b!1036779 () Bool)

(declare-fun e!586419 () SeekEntryResult!9741)

(assert (=> b!1036779 (= e!586419 (MissingZero!9741 (index!41336 lt!457290)))))

(declare-fun b!1036780 () Bool)

(declare-fun c!104958 () Bool)

(declare-fun lt!457288 () (_ BitVec 64))

(assert (=> b!1036780 (= c!104958 (= lt!457288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036780 (= e!586421 e!586419)))

(declare-fun b!1036781 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65276 (_ BitVec 32)) SeekEntryResult!9741)

(assert (=> b!1036781 (= e!586419 (seekKeyOrZeroReturnVacant!0 (x!92462 lt!457290) (index!41336 lt!457290) (index!41336 lt!457290) (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) (_keys!11456 lt!456769) (mask!30166 lt!456769)))))

(declare-fun b!1036782 () Bool)

(assert (=> b!1036782 (= e!586420 e!586421)))

(assert (=> b!1036782 (= lt!457288 (select (arr!31419 (_keys!11456 lt!456769)) (index!41336 lt!457290)))))

(declare-fun c!104960 () Bool)

(assert (=> b!1036782 (= c!104960 (= lt!457288 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000)))))

(assert (= (and d!125057 c!104959) b!1036778))

(assert (= (and d!125057 (not c!104959)) b!1036782))

(assert (= (and b!1036782 c!104960) b!1036777))

(assert (= (and b!1036782 (not c!104960)) b!1036780))

(assert (= (and b!1036780 c!104958) b!1036779))

(assert (= (and b!1036780 (not c!104958)) b!1036781))

(assert (=> d!125057 m!956101))

(declare-fun m!957229 () Bool)

(assert (=> d!125057 m!957229))

(assert (=> d!125057 m!957229))

(assert (=> d!125057 m!956101))

(declare-fun m!957231 () Bool)

(assert (=> d!125057 m!957231))

(declare-fun m!957233 () Bool)

(assert (=> d!125057 m!957233))

(assert (=> d!125057 m!956021))

(declare-fun m!957235 () Bool)

(assert (=> d!125057 m!957235))

(declare-fun m!957237 () Bool)

(assert (=> d!125057 m!957237))

(assert (=> b!1036781 m!956101))

(declare-fun m!957239 () Bool)

(assert (=> b!1036781 m!957239))

(declare-fun m!957241 () Bool)

(assert (=> b!1036782 m!957241))

(assert (=> b!1036124 d!125057))

(declare-fun d!125059 () Bool)

(declare-fun e!586423 () Bool)

(assert (=> d!125059 e!586423))

(declare-fun res!692000 () Bool)

(assert (=> d!125059 (=> res!692000 e!586423)))

(declare-fun lt!457293 () Bool)

(assert (=> d!125059 (= res!692000 (not lt!457293))))

(declare-fun lt!457292 () Bool)

(assert (=> d!125059 (= lt!457293 lt!457292)))

(declare-fun lt!457294 () Unit!33873)

(declare-fun e!586422 () Unit!33873)

(assert (=> d!125059 (= lt!457294 e!586422)))

(declare-fun c!104961 () Bool)

(assert (=> d!125059 (= c!104961 lt!457292)))

(assert (=> d!125059 (= lt!457292 (containsKey!565 (toList!6953 lt!456857) lt!456865))))

(assert (=> d!125059 (= (contains!6044 lt!456857 lt!456865) lt!457293)))

(declare-fun b!1036783 () Bool)

(declare-fun lt!457291 () Unit!33873)

(assert (=> b!1036783 (= e!586422 lt!457291)))

(assert (=> b!1036783 (= lt!457291 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456857) lt!456865))))

(assert (=> b!1036783 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456857) lt!456865))))

(declare-fun b!1036784 () Bool)

(declare-fun Unit!33913 () Unit!33873)

(assert (=> b!1036784 (= e!586422 Unit!33913)))

(declare-fun b!1036785 () Bool)

(assert (=> b!1036785 (= e!586423 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456857) lt!456865)))))

(assert (= (and d!125059 c!104961) b!1036783))

(assert (= (and d!125059 (not c!104961)) b!1036784))

(assert (= (and d!125059 (not res!692000)) b!1036785))

(declare-fun m!957243 () Bool)

(assert (=> d!125059 m!957243))

(declare-fun m!957245 () Bool)

(assert (=> b!1036783 m!957245))

(assert (=> b!1036783 m!956015))

(assert (=> b!1036783 m!956015))

(declare-fun m!957247 () Bool)

(assert (=> b!1036783 m!957247))

(assert (=> b!1036785 m!956015))

(assert (=> b!1036785 m!956015))

(assert (=> b!1036785 m!957247))

(assert (=> d!124547 d!125059))

(assert (=> d!124547 d!124557))

(declare-fun d!125061 () Bool)

(assert (=> d!125061 (= (apply!942 (+!3065 lt!456857 (tuple2!15839 lt!456864 (zeroValue!6104 thiss!1427))) lt!456865) (apply!942 lt!456857 lt!456865))))

(assert (=> d!125061 true))

(declare-fun _$34!1174 () Unit!33873)

(assert (=> d!125061 (= (choose!1709 lt!456857 lt!456864 (zeroValue!6104 thiss!1427) lt!456865) _$34!1174)))

(declare-fun bs!30364 () Bool)

(assert (= bs!30364 d!125061))

(assert (=> bs!30364 m!955865))

(assert (=> bs!30364 m!955865))

(assert (=> bs!30364 m!955867))

(assert (=> bs!30364 m!955879))

(assert (=> d!124547 d!125061))

(assert (=> d!124547 d!124561))

(assert (=> d!124547 d!124565))

(declare-fun b!1036786 () Bool)

(declare-fun e!586425 () Bool)

(declare-fun e!586424 () Bool)

(assert (=> b!1036786 (= e!586425 e!586424)))

(declare-fun res!692003 () Bool)

(assert (=> b!1036786 (=> (not res!692003) (not e!586424))))

(declare-fun e!586427 () Bool)

(assert (=> b!1036786 (= res!692003 (not e!586427))))

(declare-fun res!692002 () Bool)

(assert (=> b!1036786 (=> (not res!692002) (not e!586427))))

(assert (=> b!1036786 (= res!692002 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036787 () Bool)

(declare-fun e!586426 () Bool)

(declare-fun call!43893 () Bool)

(assert (=> b!1036787 (= e!586426 call!43893)))

(declare-fun b!1036788 () Bool)

(assert (=> b!1036788 (= e!586426 call!43893)))

(declare-fun b!1036789 () Bool)

(assert (=> b!1036789 (= e!586427 (contains!6046 (ite c!104764 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) Nil!22033) Nil!22033) (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!43890 () Bool)

(declare-fun c!104962 () Bool)

(assert (=> bm!43890 (= call!43893 (arrayNoDuplicates!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!104962 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!104764 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)) (ite c!104764 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) Nil!22033) Nil!22033))))))

(declare-fun d!125063 () Bool)

(declare-fun res!692001 () Bool)

(assert (=> d!125063 (=> res!692001 e!586425)))

(assert (=> d!125063 (= res!692001 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!125063 (= (arrayNoDuplicates!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104764 (Cons!22032 (select (arr!31419 (_keys!11456 lt!456769)) #b00000000000000000000000000000000) Nil!22033) Nil!22033)) e!586425)))

(declare-fun b!1036790 () Bool)

(assert (=> b!1036790 (= e!586424 e!586426)))

(assert (=> b!1036790 (= c!104962 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125063 (not res!692001)) b!1036786))

(assert (= (and b!1036786 res!692002) b!1036789))

(assert (= (and b!1036786 res!692003) b!1036790))

(assert (= (and b!1036790 c!104962) b!1036788))

(assert (= (and b!1036790 (not c!104962)) b!1036787))

(assert (= (or b!1036788 b!1036787) bm!43890))

(assert (=> b!1036786 m!956693))

(assert (=> b!1036786 m!956693))

(assert (=> b!1036786 m!956701))

(assert (=> b!1036789 m!956693))

(assert (=> b!1036789 m!956693))

(declare-fun m!957249 () Bool)

(assert (=> b!1036789 m!957249))

(assert (=> bm!43890 m!956693))

(declare-fun m!957251 () Bool)

(assert (=> bm!43890 m!957251))

(assert (=> b!1036790 m!956693))

(assert (=> b!1036790 m!956693))

(assert (=> b!1036790 m!956701))

(assert (=> bm!43841 d!125063))

(declare-fun d!125065 () Bool)

(declare-fun e!586429 () Bool)

(assert (=> d!125065 e!586429))

(declare-fun res!692004 () Bool)

(assert (=> d!125065 (=> res!692004 e!586429)))

(declare-fun lt!457297 () Bool)

(assert (=> d!125065 (= res!692004 (not lt!457297))))

(declare-fun lt!457296 () Bool)

(assert (=> d!125065 (= lt!457297 lt!457296)))

(declare-fun lt!457298 () Unit!33873)

(declare-fun e!586428 () Unit!33873)

(assert (=> d!125065 (= lt!457298 e!586428)))

(declare-fun c!104963 () Bool)

(assert (=> d!125065 (= c!104963 lt!457296)))

(assert (=> d!125065 (= lt!457296 (containsKey!565 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (=> d!125065 (= (contains!6044 lt!456987 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) lt!457297)))

(declare-fun b!1036791 () Bool)

(declare-fun lt!457295 () Unit!33873)

(assert (=> b!1036791 (= e!586428 lt!457295)))

(assert (=> b!1036791 (= lt!457295 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(assert (=> b!1036791 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036792 () Bool)

(declare-fun Unit!33914 () Unit!33873)

(assert (=> b!1036792 (= e!586428 Unit!33914)))

(declare-fun b!1036793 () Bool)

(assert (=> b!1036793 (= e!586429 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456987) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (= (and d!125065 c!104963) b!1036791))

(assert (= (and d!125065 (not c!104963)) b!1036792))

(assert (= (and d!125065 (not res!692004)) b!1036793))

(declare-fun m!957253 () Bool)

(assert (=> d!125065 m!957253))

(declare-fun m!957255 () Bool)

(assert (=> b!1036791 m!957255))

(assert (=> b!1036791 m!956147))

(assert (=> b!1036791 m!956147))

(declare-fun m!957257 () Bool)

(assert (=> b!1036791 m!957257))

(assert (=> b!1036793 m!956147))

(assert (=> b!1036793 m!956147))

(assert (=> b!1036793 m!957257))

(assert (=> d!124605 d!125065))

(declare-fun d!125067 () Bool)

(declare-fun c!104964 () Bool)

(assert (=> d!125067 (= c!104964 (and ((_ is Cons!22031) lt!456985) (= (_1!7929 (h!23233 lt!456985)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun e!586430 () Option!643)

(assert (=> d!125067 (= (getValueByKey!592 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) e!586430)))

(declare-fun b!1036795 () Bool)

(declare-fun e!586431 () Option!643)

(assert (=> b!1036795 (= e!586430 e!586431)))

(declare-fun c!104965 () Bool)

(assert (=> b!1036795 (= c!104965 (and ((_ is Cons!22031) lt!456985) (not (= (_1!7929 (h!23233 lt!456985)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036797 () Bool)

(assert (=> b!1036797 (= e!586431 None!641)))

(declare-fun b!1036796 () Bool)

(assert (=> b!1036796 (= e!586431 (getValueByKey!592 (t!31249 lt!456985) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036794 () Bool)

(assert (=> b!1036794 (= e!586430 (Some!642 (_2!7929 (h!23233 lt!456985))))))

(assert (= (and d!125067 c!104964) b!1036794))

(assert (= (and d!125067 (not c!104964)) b!1036795))

(assert (= (and b!1036795 c!104965) b!1036796))

(assert (= (and b!1036795 (not c!104965)) b!1036797))

(declare-fun m!957259 () Bool)

(assert (=> b!1036796 m!957259))

(assert (=> d!124605 d!125067))

(declare-fun d!125069 () Bool)

(assert (=> d!125069 (= (getValueByKey!592 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun lt!457299 () Unit!33873)

(assert (=> d!125069 (= lt!457299 (choose!1712 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun e!586432 () Bool)

(assert (=> d!125069 e!586432))

(declare-fun res!692005 () Bool)

(assert (=> d!125069 (=> (not res!692005) (not e!586432))))

(assert (=> d!125069 (= res!692005 (isStrictlySorted!715 lt!456985))))

(assert (=> d!125069 (= (lemmaContainsTupThenGetReturnValue!281 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) lt!457299)))

(declare-fun b!1036798 () Bool)

(declare-fun res!692006 () Bool)

(assert (=> b!1036798 (=> (not res!692006) (not e!586432))))

(assert (=> b!1036798 (= res!692006 (containsKey!565 lt!456985 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036799 () Bool)

(assert (=> b!1036799 (= e!586432 (contains!6045 lt!456985 (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (= (and d!125069 res!692005) b!1036798))

(assert (= (and b!1036798 res!692006) b!1036799))

(assert (=> d!125069 m!956141))

(declare-fun m!957261 () Bool)

(assert (=> d!125069 m!957261))

(declare-fun m!957263 () Bool)

(assert (=> d!125069 m!957263))

(declare-fun m!957265 () Bool)

(assert (=> b!1036798 m!957265))

(declare-fun m!957267 () Bool)

(assert (=> b!1036799 m!957267))

(assert (=> d!124605 d!125069))

(declare-fun b!1036800 () Bool)

(declare-fun e!586433 () List!22035)

(declare-fun e!586434 () List!22035)

(assert (=> b!1036800 (= e!586433 e!586434)))

(declare-fun c!104969 () Bool)

(assert (=> b!1036800 (= c!104969 (and ((_ is Cons!22031) (toList!6953 call!43819)) (= (_1!7929 (h!23233 (toList!6953 call!43819))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036801 () Bool)

(declare-fun e!586436 () List!22035)

(declare-fun call!43895 () List!22035)

(assert (=> b!1036801 (= e!586436 call!43895)))

(declare-fun e!586437 () List!22035)

(declare-fun call!43894 () List!22035)

(declare-fun c!104966 () Bool)

(declare-fun bm!43891 () Bool)

(assert (=> bm!43891 (= call!43894 ($colon$colon!606 e!586437 (ite c!104966 (h!23233 (toList!6953 call!43819)) (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun c!104967 () Bool)

(assert (=> bm!43891 (= c!104967 c!104966)))

(declare-fun d!125071 () Bool)

(declare-fun e!586435 () Bool)

(assert (=> d!125071 e!586435))

(declare-fun res!692007 () Bool)

(assert (=> d!125071 (=> (not res!692007) (not e!586435))))

(declare-fun lt!457300 () List!22035)

(assert (=> d!125071 (= res!692007 (isStrictlySorted!715 lt!457300))))

(assert (=> d!125071 (= lt!457300 e!586433)))

(assert (=> d!125071 (= c!104966 (and ((_ is Cons!22031) (toList!6953 call!43819)) (bvslt (_1!7929 (h!23233 (toList!6953 call!43819))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> d!125071 (isStrictlySorted!715 (toList!6953 call!43819))))

(assert (=> d!125071 (= (insertStrictlySorted!373 (toList!6953 call!43819) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) lt!457300)))

(declare-fun b!1036802 () Bool)

(declare-fun c!104968 () Bool)

(assert (=> b!1036802 (= c!104968 (and ((_ is Cons!22031) (toList!6953 call!43819)) (bvsgt (_1!7929 (h!23233 (toList!6953 call!43819))) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> b!1036802 (= e!586434 e!586436)))

(declare-fun b!1036803 () Bool)

(assert (=> b!1036803 (= e!586437 (insertStrictlySorted!373 (t!31249 (toList!6953 call!43819)) (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036804 () Bool)

(declare-fun res!692008 () Bool)

(assert (=> b!1036804 (=> (not res!692008) (not e!586435))))

(assert (=> b!1036804 (= res!692008 (containsKey!565 lt!457300 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036805 () Bool)

(assert (=> b!1036805 (= e!586433 call!43894)))

(declare-fun bm!43892 () Bool)

(declare-fun call!43896 () List!22035)

(assert (=> bm!43892 (= call!43895 call!43896)))

(declare-fun b!1036806 () Bool)

(assert (=> b!1036806 (= e!586435 (contains!6045 lt!457300 (tuple2!15839 (_1!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036807 () Bool)

(assert (=> b!1036807 (= e!586436 call!43895)))

(declare-fun bm!43893 () Bool)

(assert (=> bm!43893 (= call!43896 call!43894)))

(declare-fun b!1036808 () Bool)

(assert (=> b!1036808 (= e!586437 (ite c!104969 (t!31249 (toList!6953 call!43819)) (ite c!104968 (Cons!22031 (h!23233 (toList!6953 call!43819)) (t!31249 (toList!6953 call!43819))) Nil!22032)))))

(declare-fun b!1036809 () Bool)

(assert (=> b!1036809 (= e!586434 call!43896)))

(assert (= (and d!125071 c!104966) b!1036805))

(assert (= (and d!125071 (not c!104966)) b!1036800))

(assert (= (and b!1036800 c!104969) b!1036809))

(assert (= (and b!1036800 (not c!104969)) b!1036802))

(assert (= (and b!1036802 c!104968) b!1036807))

(assert (= (and b!1036802 (not c!104968)) b!1036801))

(assert (= (or b!1036807 b!1036801) bm!43892))

(assert (= (or b!1036809 bm!43892) bm!43893))

(assert (= (or b!1036805 bm!43893) bm!43891))

(assert (= (and bm!43891 c!104967) b!1036803))

(assert (= (and bm!43891 (not c!104967)) b!1036808))

(assert (= (and d!125071 res!692007) b!1036804))

(assert (= (and b!1036804 res!692008) b!1036806))

(declare-fun m!957269 () Bool)

(assert (=> b!1036806 m!957269))

(declare-fun m!957271 () Bool)

(assert (=> bm!43891 m!957271))

(declare-fun m!957273 () Bool)

(assert (=> b!1036803 m!957273))

(declare-fun m!957275 () Bool)

(assert (=> b!1036804 m!957275))

(declare-fun m!957277 () Bool)

(assert (=> d!125071 m!957277))

(declare-fun m!957279 () Bool)

(assert (=> d!125071 m!957279))

(assert (=> d!124605 d!125071))

(declare-fun d!125073 () Bool)

(declare-fun res!692009 () Bool)

(declare-fun e!586438 () Bool)

(assert (=> d!125073 (=> res!692009 e!586438)))

(assert (=> d!125073 (= res!692009 (and ((_ is Cons!22031) lt!457013) (= (_1!7929 (h!23233 lt!457013)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!125073 (= (containsKey!565 lt!457013 #b1000000000000000000000000000000000000000000000000000000000000000) e!586438)))

(declare-fun b!1036810 () Bool)

(declare-fun e!586439 () Bool)

(assert (=> b!1036810 (= e!586438 e!586439)))

(declare-fun res!692010 () Bool)

(assert (=> b!1036810 (=> (not res!692010) (not e!586439))))

(assert (=> b!1036810 (= res!692010 (and (or (not ((_ is Cons!22031) lt!457013)) (bvsle (_1!7929 (h!23233 lt!457013)) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) lt!457013) (bvslt (_1!7929 (h!23233 lt!457013)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036811 () Bool)

(assert (=> b!1036811 (= e!586439 (containsKey!565 (t!31249 lt!457013) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125073 (not res!692009)) b!1036810))

(assert (= (and b!1036810 res!692010) b!1036811))

(declare-fun m!957281 () Bool)

(assert (=> b!1036811 m!957281))

(assert (=> b!1036182 d!125073))

(assert (=> b!1036010 d!124573))

(assert (=> b!1036195 d!124693))

(declare-fun d!125075 () Bool)

(assert (=> d!125075 (arrayContainsKey!0 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000)))

(declare-fun lt!457301 () Unit!33873)

(assert (=> d!125075 (= lt!457301 (choose!13 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000))))

(assert (=> d!125075 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125075 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000) lt!457301)))

(declare-fun bs!30365 () Bool)

(assert (= bs!30365 d!125075))

(assert (=> bs!30365 m!956075))

(declare-fun m!957283 () Bool)

(assert (=> bs!30365 m!957283))

(assert (=> b!1036118 d!125075))

(declare-fun d!125077 () Bool)

(declare-fun res!692011 () Bool)

(declare-fun e!586440 () Bool)

(assert (=> d!125077 (=> res!692011 e!586440)))

(assert (=> d!125077 (= res!692011 (= (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) lt!456961))))

(assert (=> d!125077 (= (arrayContainsKey!0 (_keys!11456 thiss!1427) lt!456961 #b00000000000000000000000000000000) e!586440)))

(declare-fun b!1036812 () Bool)

(declare-fun e!586441 () Bool)

(assert (=> b!1036812 (= e!586440 e!586441)))

(declare-fun res!692012 () Bool)

(assert (=> b!1036812 (=> (not res!692012) (not e!586441))))

(assert (=> b!1036812 (= res!692012 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 thiss!1427))))))

(declare-fun b!1036813 () Bool)

(assert (=> b!1036813 (= e!586441 (arrayContainsKey!0 (_keys!11456 thiss!1427) lt!456961 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125077 (not res!692011)) b!1036812))

(assert (= (and b!1036812 res!692012) b!1036813))

(assert (=> d!125077 m!955785))

(declare-fun m!957285 () Bool)

(assert (=> b!1036813 m!957285))

(assert (=> b!1036118 d!125077))

(declare-fun d!125079 () Bool)

(declare-fun lt!457303 () SeekEntryResult!9741)

(assert (=> d!125079 (and (or ((_ is Undefined!9741) lt!457303) (not ((_ is Found!9741) lt!457303)) (and (bvsge (index!41335 lt!457303) #b00000000000000000000000000000000) (bvslt (index!41335 lt!457303) (size!31948 (_keys!11456 thiss!1427))))) (or ((_ is Undefined!9741) lt!457303) ((_ is Found!9741) lt!457303) (not ((_ is MissingZero!9741) lt!457303)) (and (bvsge (index!41334 lt!457303) #b00000000000000000000000000000000) (bvslt (index!41334 lt!457303) (size!31948 (_keys!11456 thiss!1427))))) (or ((_ is Undefined!9741) lt!457303) ((_ is Found!9741) lt!457303) ((_ is MissingZero!9741) lt!457303) (not ((_ is MissingVacant!9741) lt!457303)) (and (bvsge (index!41337 lt!457303) #b00000000000000000000000000000000) (bvslt (index!41337 lt!457303) (size!31948 (_keys!11456 thiss!1427))))) (or ((_ is Undefined!9741) lt!457303) (ite ((_ is Found!9741) lt!457303) (= (select (arr!31419 (_keys!11456 thiss!1427)) (index!41335 lt!457303)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9741) lt!457303) (= (select (arr!31419 (_keys!11456 thiss!1427)) (index!41334 lt!457303)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9741) lt!457303) (= (select (arr!31419 (_keys!11456 thiss!1427)) (index!41337 lt!457303)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!586443 () SeekEntryResult!9741)

(assert (=> d!125079 (= lt!457303 e!586443)))

(declare-fun c!104971 () Bool)

(declare-fun lt!457304 () SeekEntryResult!9741)

(assert (=> d!125079 (= c!104971 (and ((_ is Intermediate!9741) lt!457304) (undefined!10553 lt!457304)))))

(assert (=> d!125079 (= lt!457304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (mask!30166 thiss!1427)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)))))

(assert (=> d!125079 (validMask!0 (mask!30166 thiss!1427))))

(assert (=> d!125079 (= (seekEntryOrOpen!0 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)) lt!457303)))

(declare-fun b!1036814 () Bool)

(declare-fun e!586444 () SeekEntryResult!9741)

(assert (=> b!1036814 (= e!586444 (Found!9741 (index!41336 lt!457304)))))

(declare-fun b!1036815 () Bool)

(assert (=> b!1036815 (= e!586443 Undefined!9741)))

(declare-fun b!1036816 () Bool)

(declare-fun e!586442 () SeekEntryResult!9741)

(assert (=> b!1036816 (= e!586442 (MissingZero!9741 (index!41336 lt!457304)))))

(declare-fun b!1036817 () Bool)

(declare-fun c!104970 () Bool)

(declare-fun lt!457302 () (_ BitVec 64))

(assert (=> b!1036817 (= c!104970 (= lt!457302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036817 (= e!586444 e!586442)))

(declare-fun b!1036818 () Bool)

(assert (=> b!1036818 (= e!586442 (seekKeyOrZeroReturnVacant!0 (x!92462 lt!457304) (index!41336 lt!457304) (index!41336 lt!457304) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (_keys!11456 thiss!1427) (mask!30166 thiss!1427)))))

(declare-fun b!1036819 () Bool)

(assert (=> b!1036819 (= e!586443 e!586444)))

(assert (=> b!1036819 (= lt!457302 (select (arr!31419 (_keys!11456 thiss!1427)) (index!41336 lt!457304)))))

(declare-fun c!104972 () Bool)

(assert (=> b!1036819 (= c!104972 (= lt!457302 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125079 c!104971) b!1036815))

(assert (= (and d!125079 (not c!104971)) b!1036819))

(assert (= (and b!1036819 c!104972) b!1036814))

(assert (= (and b!1036819 (not c!104972)) b!1036817))

(assert (= (and b!1036817 c!104970) b!1036816))

(assert (= (and b!1036817 (not c!104970)) b!1036818))

(assert (=> d!125079 m!955785))

(declare-fun m!957287 () Bool)

(assert (=> d!125079 m!957287))

(assert (=> d!125079 m!957287))

(assert (=> d!125079 m!955785))

(declare-fun m!957289 () Bool)

(assert (=> d!125079 m!957289))

(declare-fun m!957291 () Bool)

(assert (=> d!125079 m!957291))

(assert (=> d!125079 m!955781))

(declare-fun m!957293 () Bool)

(assert (=> d!125079 m!957293))

(declare-fun m!957295 () Bool)

(assert (=> d!125079 m!957295))

(assert (=> b!1036818 m!955785))

(declare-fun m!957297 () Bool)

(assert (=> b!1036818 m!957297))

(declare-fun m!957299 () Bool)

(assert (=> b!1036819 m!957299))

(assert (=> b!1036118 d!125079))

(declare-fun d!125081 () Bool)

(declare-fun c!104973 () Bool)

(assert (=> d!125081 (= c!104973 (and ((_ is Cons!22031) (toList!6953 lt!457058)) (= (_1!7929 (h!23233 (toList!6953 lt!457058))) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(declare-fun e!586445 () Option!643)

(assert (=> d!125081 (= (getValueByKey!592 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) e!586445)))

(declare-fun b!1036821 () Bool)

(declare-fun e!586446 () Option!643)

(assert (=> b!1036821 (= e!586445 e!586446)))

(declare-fun c!104974 () Bool)

(assert (=> b!1036821 (= c!104974 (and ((_ is Cons!22031) (toList!6953 lt!457058)) (not (= (_1!7929 (h!23233 (toList!6953 lt!457058))) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036823 () Bool)

(assert (=> b!1036823 (= e!586446 None!641)))

(declare-fun b!1036822 () Bool)

(assert (=> b!1036822 (= e!586446 (getValueByKey!592 (t!31249 (toList!6953 lt!457058)) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036820 () Bool)

(assert (=> b!1036820 (= e!586445 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!457058)))))))

(assert (= (and d!125081 c!104973) b!1036820))

(assert (= (and d!125081 (not c!104973)) b!1036821))

(assert (= (and b!1036821 c!104974) b!1036822))

(assert (= (and b!1036821 (not c!104974)) b!1036823))

(declare-fun m!957301 () Bool)

(assert (=> b!1036822 m!957301))

(assert (=> b!1036217 d!125081))

(assert (=> bm!43848 d!124755))

(declare-fun d!125083 () Bool)

(declare-fun e!586448 () Bool)

(assert (=> d!125083 e!586448))

(declare-fun res!692013 () Bool)

(assert (=> d!125083 (=> res!692013 e!586448)))

(declare-fun lt!457307 () Bool)

(assert (=> d!125083 (= res!692013 (not lt!457307))))

(declare-fun lt!457306 () Bool)

(assert (=> d!125083 (= lt!457307 lt!457306)))

(declare-fun lt!457308 () Unit!33873)

(declare-fun e!586447 () Unit!33873)

(assert (=> d!125083 (= lt!457308 e!586447)))

(declare-fun c!104975 () Bool)

(assert (=> d!125083 (= c!104975 lt!457306)))

(assert (=> d!125083 (= lt!457306 (containsKey!565 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> d!125083 (= (contains!6044 lt!456999 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) lt!457307)))

(declare-fun b!1036824 () Bool)

(declare-fun lt!457305 () Unit!33873)

(assert (=> b!1036824 (= e!586447 lt!457305)))

(assert (=> b!1036824 (= lt!457305 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(assert (=> b!1036824 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036825 () Bool)

(declare-fun Unit!33915 () Unit!33873)

(assert (=> b!1036825 (= e!586447 Unit!33915)))

(declare-fun b!1036826 () Bool)

(assert (=> b!1036826 (= e!586448 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456999) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(assert (= (and d!125083 c!104975) b!1036824))

(assert (= (and d!125083 (not c!104975)) b!1036825))

(assert (= (and d!125083 (not res!692013)) b!1036826))

(declare-fun m!957303 () Bool)

(assert (=> d!125083 m!957303))

(declare-fun m!957305 () Bool)

(assert (=> b!1036824 m!957305))

(assert (=> b!1036824 m!956181))

(assert (=> b!1036824 m!956181))

(declare-fun m!957307 () Bool)

(assert (=> b!1036824 m!957307))

(assert (=> b!1036826 m!956181))

(assert (=> b!1036826 m!956181))

(assert (=> b!1036826 m!957307))

(assert (=> d!124613 d!125083))

(declare-fun d!125085 () Bool)

(declare-fun c!104976 () Bool)

(assert (=> d!125085 (= c!104976 (and ((_ is Cons!22031) lt!456997) (= (_1!7929 (h!23233 lt!456997)) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun e!586449 () Option!643)

(assert (=> d!125085 (= (getValueByKey!592 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) e!586449)))

(declare-fun b!1036828 () Bool)

(declare-fun e!586450 () Option!643)

(assert (=> b!1036828 (= e!586449 e!586450)))

(declare-fun c!104977 () Bool)

(assert (=> b!1036828 (= c!104977 (and ((_ is Cons!22031) lt!456997) (not (= (_1!7929 (h!23233 lt!456997)) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))))

(declare-fun b!1036830 () Bool)

(assert (=> b!1036830 (= e!586450 None!641)))

(declare-fun b!1036829 () Bool)

(assert (=> b!1036829 (= e!586450 (getValueByKey!592 (t!31249 lt!456997) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036827 () Bool)

(assert (=> b!1036827 (= e!586449 (Some!642 (_2!7929 (h!23233 lt!456997))))))

(assert (= (and d!125085 c!104976) b!1036827))

(assert (= (and d!125085 (not c!104976)) b!1036828))

(assert (= (and b!1036828 c!104977) b!1036829))

(assert (= (and b!1036828 (not c!104977)) b!1036830))

(declare-fun m!957309 () Bool)

(assert (=> b!1036829 m!957309))

(assert (=> d!124613 d!125085))

(declare-fun d!125087 () Bool)

(assert (=> d!125087 (= (getValueByKey!592 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) (Some!642 (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun lt!457309 () Unit!33873)

(assert (=> d!125087 (= lt!457309 (choose!1712 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun e!586451 () Bool)

(assert (=> d!125087 e!586451))

(declare-fun res!692014 () Bool)

(assert (=> d!125087 (=> (not res!692014) (not e!586451))))

(assert (=> d!125087 (= res!692014 (isStrictlySorted!715 lt!456997))))

(assert (=> d!125087 (= (lemmaContainsTupThenGetReturnValue!281 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) lt!457309)))

(declare-fun b!1036831 () Bool)

(declare-fun res!692015 () Bool)

(assert (=> b!1036831 (=> (not res!692015) (not e!586451))))

(assert (=> b!1036831 (= res!692015 (containsKey!565 lt!456997 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036832 () Bool)

(assert (=> b!1036832 (= e!586451 (contains!6045 lt!456997 (tuple2!15839 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(assert (= (and d!125087 res!692014) b!1036831))

(assert (= (and b!1036831 res!692015) b!1036832))

(assert (=> d!125087 m!956175))

(declare-fun m!957311 () Bool)

(assert (=> d!125087 m!957311))

(declare-fun m!957313 () Bool)

(assert (=> d!125087 m!957313))

(declare-fun m!957315 () Bool)

(assert (=> b!1036831 m!957315))

(declare-fun m!957317 () Bool)

(assert (=> b!1036832 m!957317))

(assert (=> d!124613 d!125087))

(declare-fun b!1036833 () Bool)

(declare-fun e!586452 () List!22035)

(declare-fun e!586453 () List!22035)

(assert (=> b!1036833 (= e!586452 e!586453)))

(declare-fun c!104981 () Bool)

(assert (=> b!1036833 (= c!104981 (and ((_ is Cons!22031) (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (= (_1!7929 (h!23233 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036834 () Bool)

(declare-fun e!586455 () List!22035)

(declare-fun call!43898 () List!22035)

(assert (=> b!1036834 (= e!586455 call!43898)))

(declare-fun e!586456 () List!22035)

(declare-fun bm!43894 () Bool)

(declare-fun call!43897 () List!22035)

(declare-fun c!104978 () Bool)

(assert (=> bm!43894 (= call!43897 ($colon$colon!606 e!586456 (ite c!104978 (h!23233 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (tuple2!15839 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))))

(declare-fun c!104979 () Bool)

(assert (=> bm!43894 (= c!104979 c!104978)))

(declare-fun d!125089 () Bool)

(declare-fun e!586454 () Bool)

(assert (=> d!125089 e!586454))

(declare-fun res!692016 () Bool)

(assert (=> d!125089 (=> (not res!692016) (not e!586454))))

(declare-fun lt!457310 () List!22035)

(assert (=> d!125089 (= res!692016 (isStrictlySorted!715 lt!457310))))

(assert (=> d!125089 (= lt!457310 e!586452)))

(assert (=> d!125089 (= c!104978 (and ((_ is Cons!22031) (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (bvslt (_1!7929 (h!23233 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(assert (=> d!125089 (isStrictlySorted!715 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))))))

(assert (=> d!125089 (= (insertStrictlySorted!373 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))) lt!457310)))

(declare-fun c!104980 () Bool)

(declare-fun b!1036835 () Bool)

(assert (=> b!1036835 (= c!104980 (and ((_ is Cons!22031) (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (bvsgt (_1!7929 (h!23233 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(assert (=> b!1036835 (= e!586453 e!586455)))

(declare-fun b!1036836 () Bool)

(assert (=> b!1036836 (= e!586456 (insertStrictlySorted!373 (t!31249 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036837 () Bool)

(declare-fun res!692017 () Bool)

(assert (=> b!1036837 (=> (not res!692017) (not e!586454))))

(assert (=> b!1036837 (= res!692017 (containsKey!565 lt!457310 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036838 () Bool)

(assert (=> b!1036838 (= e!586452 call!43897)))

(declare-fun bm!43895 () Bool)

(declare-fun call!43899 () List!22035)

(assert (=> bm!43895 (= call!43898 call!43899)))

(declare-fun b!1036839 () Bool)

(assert (=> b!1036839 (= e!586454 (contains!6045 lt!457310 (tuple2!15839 (_1!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))) (_2!7929 (ite (or c!104710 c!104709) (tuple2!15839 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6104 thiss!1427)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036840 () Bool)

(assert (=> b!1036840 (= e!586455 call!43898)))

(declare-fun bm!43896 () Bool)

(assert (=> bm!43896 (= call!43899 call!43897)))

(declare-fun b!1036841 () Bool)

(assert (=> b!1036841 (= e!586456 (ite c!104981 (t!31249 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (ite c!104980 (Cons!22031 (h!23233 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820)))) (t!31249 (toList!6953 (ite c!104710 call!43821 (ite c!104709 call!43817 call!43820))))) Nil!22032)))))

(declare-fun b!1036842 () Bool)

(assert (=> b!1036842 (= e!586453 call!43899)))

(assert (= (and d!125089 c!104978) b!1036838))

(assert (= (and d!125089 (not c!104978)) b!1036833))

(assert (= (and b!1036833 c!104981) b!1036842))

(assert (= (and b!1036833 (not c!104981)) b!1036835))

(assert (= (and b!1036835 c!104980) b!1036840))

(assert (= (and b!1036835 (not c!104980)) b!1036834))

(assert (= (or b!1036840 b!1036834) bm!43895))

(assert (= (or b!1036842 bm!43895) bm!43896))

(assert (= (or b!1036838 bm!43896) bm!43894))

(assert (= (and bm!43894 c!104979) b!1036836))

(assert (= (and bm!43894 (not c!104979)) b!1036841))

(assert (= (and d!125089 res!692016) b!1036837))

(assert (= (and b!1036837 res!692017) b!1036839))

(declare-fun m!957319 () Bool)

(assert (=> b!1036839 m!957319))

(declare-fun m!957321 () Bool)

(assert (=> bm!43894 m!957321))

(declare-fun m!957323 () Bool)

(assert (=> b!1036836 m!957323))

(declare-fun m!957325 () Bool)

(assert (=> b!1036837 m!957325))

(declare-fun m!957327 () Bool)

(assert (=> d!125089 m!957327))

(declare-fun m!957329 () Bool)

(assert (=> d!125089 m!957329))

(assert (=> d!124613 d!125089))

(declare-fun d!125091 () Bool)

(declare-fun res!692018 () Bool)

(declare-fun e!586457 () Bool)

(assert (=> d!125091 (=> res!692018 e!586457)))

(assert (=> d!125091 (= res!692018 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!125091 (= (containsKey!565 (toList!6953 lt!456866) #b0000000000000000000000000000000000000000000000000000000000000000) e!586457)))

(declare-fun b!1036843 () Bool)

(declare-fun e!586458 () Bool)

(assert (=> b!1036843 (= e!586457 e!586458)))

(declare-fun res!692019 () Bool)

(assert (=> b!1036843 (=> (not res!692019) (not e!586458))))

(assert (=> b!1036843 (= res!692019 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456866))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456866))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22031) (toList!6953 lt!456866)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456866))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1036844 () Bool)

(assert (=> b!1036844 (= e!586458 (containsKey!565 (t!31249 (toList!6953 lt!456866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125091 (not res!692018)) b!1036843))

(assert (= (and b!1036843 res!692019) b!1036844))

(declare-fun m!957331 () Bool)

(assert (=> b!1036844 m!957331))

(assert (=> d!124611 d!125091))

(declare-fun d!125093 () Bool)

(declare-fun lt!457311 () Bool)

(assert (=> d!125093 (= lt!457311 (select (content!518 (toList!6953 lt!456987)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))

(declare-fun e!586460 () Bool)

(assert (=> d!125093 (= lt!457311 e!586460)))

(declare-fun res!692020 () Bool)

(assert (=> d!125093 (=> (not res!692020) (not e!586460))))

(assert (=> d!125093 (= res!692020 ((_ is Cons!22031) (toList!6953 lt!456987)))))

(assert (=> d!125093 (= (contains!6045 (toList!6953 lt!456987) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))) lt!457311)))

(declare-fun b!1036845 () Bool)

(declare-fun e!586459 () Bool)

(assert (=> b!1036845 (= e!586460 e!586459)))

(declare-fun res!692021 () Bool)

(assert (=> b!1036845 (=> res!692021 e!586459)))

(assert (=> b!1036845 (= res!692021 (= (h!23233 (toList!6953 lt!456987)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))

(declare-fun b!1036846 () Bool)

(assert (=> b!1036846 (= e!586459 (contains!6045 (t!31249 (toList!6953 lt!456987)) (tuple2!15839 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6106 thiss!1427))))))

(assert (= (and d!125093 res!692020) b!1036845))

(assert (= (and b!1036845 (not res!692021)) b!1036846))

(declare-fun m!957333 () Bool)

(assert (=> d!125093 m!957333))

(declare-fun m!957335 () Bool)

(assert (=> d!125093 m!957335))

(declare-fun m!957337 () Bool)

(assert (=> b!1036846 m!957337))

(assert (=> b!1036150 d!125093))

(declare-fun d!125095 () Bool)

(declare-fun lt!457312 () Bool)

(assert (=> d!125095 (= lt!457312 (select (content!519 Nil!22033) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!586462 () Bool)

(assert (=> d!125095 (= lt!457312 e!586462)))

(declare-fun res!692022 () Bool)

(assert (=> d!125095 (=> (not res!692022) (not e!586462))))

(assert (=> d!125095 (= res!692022 ((_ is Cons!22032) Nil!22033))))

(assert (=> d!125095 (= (contains!6046 Nil!22033 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457312)))

(declare-fun b!1036847 () Bool)

(declare-fun e!586461 () Bool)

(assert (=> b!1036847 (= e!586462 e!586461)))

(declare-fun res!692023 () Bool)

(assert (=> b!1036847 (=> res!692023 e!586461)))

(assert (=> b!1036847 (= res!692023 (= (h!23234 Nil!22033) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036848 () Bool)

(assert (=> b!1036848 (= e!586461 (contains!6046 (t!31254 Nil!22033) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125095 res!692022) b!1036847))

(assert (= (and b!1036847 (not res!692023)) b!1036848))

(assert (=> d!125095 m!957113))

(assert (=> d!125095 m!955785))

(declare-fun m!957339 () Bool)

(assert (=> d!125095 m!957339))

(assert (=> b!1036848 m!955785))

(declare-fun m!957341 () Bool)

(assert (=> b!1036848 m!957341))

(assert (=> b!1036108 d!125095))

(assert (=> b!1036169 d!125019))

(declare-fun d!125097 () Bool)

(declare-fun e!586464 () Bool)

(assert (=> d!125097 e!586464))

(declare-fun res!692024 () Bool)

(assert (=> d!125097 (=> res!692024 e!586464)))

(declare-fun lt!457315 () Bool)

(assert (=> d!125097 (= res!692024 (not lt!457315))))

(declare-fun lt!457314 () Bool)

(assert (=> d!125097 (= lt!457315 lt!457314)))

(declare-fun lt!457316 () Unit!33873)

(declare-fun e!586463 () Unit!33873)

(assert (=> d!125097 (= lt!457316 e!586463)))

(declare-fun c!104982 () Bool)

(assert (=> d!125097 (= c!104982 lt!457314)))

(assert (=> d!125097 (= lt!457314 (containsKey!565 (toList!6953 lt!456948) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125097 (= (contains!6044 lt!456948 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457315)))

(declare-fun b!1036849 () Bool)

(declare-fun lt!457313 () Unit!33873)

(assert (=> b!1036849 (= e!586463 lt!457313)))

(assert (=> b!1036849 (= lt!457313 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456948) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1036849 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1036850 () Bool)

(declare-fun Unit!33916 () Unit!33873)

(assert (=> b!1036850 (= e!586463 Unit!33916)))

(declare-fun b!1036851 () Bool)

(assert (=> b!1036851 (= e!586464 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456948) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125097 c!104982) b!1036849))

(assert (= (and d!125097 (not c!104982)) b!1036850))

(assert (= (and d!125097 (not res!692024)) b!1036851))

(declare-fun m!957343 () Bool)

(assert (=> d!125097 m!957343))

(declare-fun m!957345 () Bool)

(assert (=> b!1036849 m!957345))

(declare-fun m!957347 () Bool)

(assert (=> b!1036849 m!957347))

(assert (=> b!1036849 m!957347))

(declare-fun m!957349 () Bool)

(assert (=> b!1036849 m!957349))

(assert (=> b!1036851 m!957347))

(assert (=> b!1036851 m!957347))

(assert (=> b!1036851 m!957349))

(assert (=> b!1036086 d!125097))

(declare-fun d!125099 () Bool)

(assert (=> d!125099 (not (contains!6044 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889)) lt!456894))))

(declare-fun lt!457317 () Unit!33873)

(assert (=> d!125099 (= lt!457317 (choose!1713 lt!456892 lt!456893 lt!456889 lt!456894))))

(declare-fun e!586465 () Bool)

(assert (=> d!125099 e!586465))

(declare-fun res!692025 () Bool)

(assert (=> d!125099 (=> (not res!692025) (not e!586465))))

(assert (=> d!125099 (= res!692025 (not (contains!6044 lt!456892 lt!456894)))))

(assert (=> d!125099 (= (addStillNotContains!245 lt!456892 lt!456893 lt!456889 lt!456894) lt!457317)))

(declare-fun b!1036852 () Bool)

(assert (=> b!1036852 (= e!586465 (not (= lt!456893 lt!456894)))))

(assert (= (and d!125099 res!692025) b!1036852))

(assert (=> d!125099 m!955915))

(assert (=> d!125099 m!955915))

(assert (=> d!125099 m!955919))

(declare-fun m!957351 () Bool)

(assert (=> d!125099 m!957351))

(declare-fun m!957353 () Bool)

(assert (=> d!125099 m!957353))

(assert (=> b!1036015 d!125099))

(assert (=> b!1036015 d!124579))

(declare-fun d!125101 () Bool)

(declare-fun e!586466 () Bool)

(assert (=> d!125101 e!586466))

(declare-fun res!692026 () Bool)

(assert (=> d!125101 (=> (not res!692026) (not e!586466))))

(declare-fun lt!457321 () ListLongMap!13875)

(assert (=> d!125101 (= res!692026 (contains!6044 lt!457321 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!457319 () List!22035)

(assert (=> d!125101 (= lt!457321 (ListLongMap!13876 lt!457319))))

(declare-fun lt!457320 () Unit!33873)

(declare-fun lt!457318 () Unit!33873)

(assert (=> d!125101 (= lt!457320 lt!457318)))

(assert (=> d!125101 (= (getValueByKey!592 lt!457319 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!642 (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!125101 (= lt!457318 (lemmaContainsTupThenGetReturnValue!281 lt!457319 (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!125101 (= lt!457319 (insertStrictlySorted!373 (toList!6953 call!43832) (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!125101 (= (+!3065 call!43832 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!457321)))

(declare-fun b!1036853 () Bool)

(declare-fun res!692027 () Bool)

(assert (=> b!1036853 (=> (not res!692027) (not e!586466))))

(assert (=> b!1036853 (= res!692027 (= (getValueByKey!592 (toList!6953 lt!457321) (_1!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!642 (_2!7929 (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1036854 () Bool)

(assert (=> b!1036854 (= e!586466 (contains!6045 (toList!6953 lt!457321) (tuple2!15839 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000) (get!16474 (select (arr!31420 (_values!6293 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2003 (defaultEntry!6270 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!125101 res!692026) b!1036853))

(assert (= (and b!1036853 res!692027) b!1036854))

(declare-fun m!957355 () Bool)

(assert (=> d!125101 m!957355))

(declare-fun m!957357 () Bool)

(assert (=> d!125101 m!957357))

(declare-fun m!957359 () Bool)

(assert (=> d!125101 m!957359))

(declare-fun m!957361 () Bool)

(assert (=> d!125101 m!957361))

(declare-fun m!957363 () Bool)

(assert (=> b!1036853 m!957363))

(declare-fun m!957365 () Bool)

(assert (=> b!1036854 m!957365))

(assert (=> b!1036015 d!125101))

(declare-fun d!125103 () Bool)

(declare-fun e!586468 () Bool)

(assert (=> d!125103 e!586468))

(declare-fun res!692028 () Bool)

(assert (=> d!125103 (=> res!692028 e!586468)))

(declare-fun lt!457324 () Bool)

(assert (=> d!125103 (= res!692028 (not lt!457324))))

(declare-fun lt!457323 () Bool)

(assert (=> d!125103 (= lt!457324 lt!457323)))

(declare-fun lt!457325 () Unit!33873)

(declare-fun e!586467 () Unit!33873)

(assert (=> d!125103 (= lt!457325 e!586467)))

(declare-fun c!104983 () Bool)

(assert (=> d!125103 (= c!104983 lt!457323)))

(assert (=> d!125103 (= lt!457323 (containsKey!565 (toList!6953 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889))) lt!456894))))

(assert (=> d!125103 (= (contains!6044 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889)) lt!456894) lt!457324)))

(declare-fun b!1036855 () Bool)

(declare-fun lt!457322 () Unit!33873)

(assert (=> b!1036855 (= e!586467 lt!457322)))

(assert (=> b!1036855 (= lt!457322 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889))) lt!456894))))

(assert (=> b!1036855 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889))) lt!456894))))

(declare-fun b!1036856 () Bool)

(declare-fun Unit!33917 () Unit!33873)

(assert (=> b!1036856 (= e!586467 Unit!33917)))

(declare-fun b!1036857 () Bool)

(assert (=> b!1036857 (= e!586468 (isDefined!437 (getValueByKey!592 (toList!6953 (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889))) lt!456894)))))

(assert (= (and d!125103 c!104983) b!1036855))

(assert (= (and d!125103 (not c!104983)) b!1036856))

(assert (= (and d!125103 (not res!692028)) b!1036857))

(declare-fun m!957367 () Bool)

(assert (=> d!125103 m!957367))

(declare-fun m!957369 () Bool)

(assert (=> b!1036855 m!957369))

(declare-fun m!957371 () Bool)

(assert (=> b!1036855 m!957371))

(assert (=> b!1036855 m!957371))

(declare-fun m!957373 () Bool)

(assert (=> b!1036855 m!957373))

(assert (=> b!1036857 m!957371))

(assert (=> b!1036857 m!957371))

(assert (=> b!1036857 m!957373))

(assert (=> b!1036015 d!125103))

(declare-fun d!125105 () Bool)

(declare-fun e!586469 () Bool)

(assert (=> d!125105 e!586469))

(declare-fun res!692029 () Bool)

(assert (=> d!125105 (=> (not res!692029) (not e!586469))))

(declare-fun lt!457329 () ListLongMap!13875)

(assert (=> d!125105 (= res!692029 (contains!6044 lt!457329 (_1!7929 (tuple2!15839 lt!456893 lt!456889))))))

(declare-fun lt!457327 () List!22035)

(assert (=> d!125105 (= lt!457329 (ListLongMap!13876 lt!457327))))

(declare-fun lt!457328 () Unit!33873)

(declare-fun lt!457326 () Unit!33873)

(assert (=> d!125105 (= lt!457328 lt!457326)))

(assert (=> d!125105 (= (getValueByKey!592 lt!457327 (_1!7929 (tuple2!15839 lt!456893 lt!456889))) (Some!642 (_2!7929 (tuple2!15839 lt!456893 lt!456889))))))

(assert (=> d!125105 (= lt!457326 (lemmaContainsTupThenGetReturnValue!281 lt!457327 (_1!7929 (tuple2!15839 lt!456893 lt!456889)) (_2!7929 (tuple2!15839 lt!456893 lt!456889))))))

(assert (=> d!125105 (= lt!457327 (insertStrictlySorted!373 (toList!6953 lt!456892) (_1!7929 (tuple2!15839 lt!456893 lt!456889)) (_2!7929 (tuple2!15839 lt!456893 lt!456889))))))

(assert (=> d!125105 (= (+!3065 lt!456892 (tuple2!15839 lt!456893 lt!456889)) lt!457329)))

(declare-fun b!1036858 () Bool)

(declare-fun res!692030 () Bool)

(assert (=> b!1036858 (=> (not res!692030) (not e!586469))))

(assert (=> b!1036858 (= res!692030 (= (getValueByKey!592 (toList!6953 lt!457329) (_1!7929 (tuple2!15839 lt!456893 lt!456889))) (Some!642 (_2!7929 (tuple2!15839 lt!456893 lt!456889)))))))

(declare-fun b!1036859 () Bool)

(assert (=> b!1036859 (= e!586469 (contains!6045 (toList!6953 lt!457329) (tuple2!15839 lt!456893 lt!456889)))))

(assert (= (and d!125105 res!692029) b!1036858))

(assert (= (and b!1036858 res!692030) b!1036859))

(declare-fun m!957375 () Bool)

(assert (=> d!125105 m!957375))

(declare-fun m!957377 () Bool)

(assert (=> d!125105 m!957377))

(declare-fun m!957379 () Bool)

(assert (=> d!125105 m!957379))

(declare-fun m!957381 () Bool)

(assert (=> d!125105 m!957381))

(declare-fun m!957383 () Bool)

(assert (=> b!1036858 m!957383))

(declare-fun m!957385 () Bool)

(assert (=> b!1036859 m!957385))

(assert (=> b!1036015 d!125105))

(assert (=> b!1036173 d!124905))

(assert (=> b!1036173 d!124907))

(assert (=> b!1036148 d!124949))

(assert (=> b!1036148 d!124951))

(assert (=> b!1036145 d!124959))

(assert (=> b!1036145 d!124861))

(declare-fun d!125107 () Bool)

(assert (=> d!125107 (= (get!16475 (getValueByKey!592 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!456836)) (v!14932 (getValueByKey!592 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!456836)))))

(assert (=> d!124641 d!125107))

(declare-fun c!104984 () Bool)

(declare-fun d!125109 () Bool)

(assert (=> d!125109 (= c!104984 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))) lt!456836)))))

(declare-fun e!586470 () Option!643)

(assert (=> d!125109 (= (getValueByKey!592 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!456836) e!586470)))

(declare-fun b!1036861 () Bool)

(declare-fun e!586471 () Option!643)

(assert (=> b!1036861 (= e!586470 e!586471)))

(declare-fun c!104985 () Bool)

(assert (=> b!1036861 (= c!104985 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))) (not (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))) lt!456836))))))

(declare-fun b!1036863 () Bool)

(assert (=> b!1036863 (= e!586471 None!641)))

(declare-fun b!1036862 () Bool)

(assert (=> b!1036862 (= e!586471 (getValueByKey!592 (t!31249 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))) lt!456836))))

(declare-fun b!1036860 () Bool)

(assert (=> b!1036860 (= e!586470 (Some!642 (_2!7929 (h!23233 (toList!6953 (+!3065 lt!456827 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))))

(assert (= (and d!125109 c!104984) b!1036860))

(assert (= (and d!125109 (not c!104984)) b!1036861))

(assert (= (and b!1036861 c!104985) b!1036862))

(assert (= (and b!1036861 (not c!104985)) b!1036863))

(declare-fun m!957387 () Bool)

(assert (=> b!1036862 m!957387))

(assert (=> d!124641 d!125109))

(declare-fun d!125111 () Bool)

(declare-fun res!692031 () Bool)

(declare-fun e!586472 () Bool)

(assert (=> d!125111 (=> res!692031 e!586472)))

(assert (=> d!125111 (= res!692031 (and ((_ is Cons!22031) (toList!6953 lt!456866)) (= (_1!7929 (h!23233 (toList!6953 lt!456866))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!125111 (= (containsKey!565 (toList!6953 lt!456866) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) e!586472)))

(declare-fun b!1036864 () Bool)

(declare-fun e!586473 () Bool)

(assert (=> b!1036864 (= e!586472 e!586473)))

(declare-fun res!692032 () Bool)

(assert (=> b!1036864 (=> (not res!692032) (not e!586473))))

(assert (=> b!1036864 (= res!692032 (and (or (not ((_ is Cons!22031) (toList!6953 lt!456866))) (bvsle (_1!7929 (h!23233 (toList!6953 lt!456866))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))) ((_ is Cons!22031) (toList!6953 lt!456866)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456866))) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun b!1036865 () Bool)

(assert (=> b!1036865 (= e!586473 (containsKey!565 (t!31249 (toList!6953 lt!456866)) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125111 (not res!692031)) b!1036864))

(assert (= (and b!1036864 res!692032) b!1036865))

(assert (=> b!1036865 m!955785))

(declare-fun m!957389 () Bool)

(assert (=> b!1036865 m!957389))

(assert (=> d!124627 d!125111))

(assert (=> b!1036061 d!124963))

(assert (=> b!1036061 d!124965))

(declare-fun d!125113 () Bool)

(declare-fun e!586475 () Bool)

(assert (=> d!125113 e!586475))

(declare-fun res!692033 () Bool)

(assert (=> d!125113 (=> res!692033 e!586475)))

(declare-fun lt!457332 () Bool)

(assert (=> d!125113 (= res!692033 (not lt!457332))))

(declare-fun lt!457331 () Bool)

(assert (=> d!125113 (= lt!457332 lt!457331)))

(declare-fun lt!457333 () Unit!33873)

(declare-fun e!586474 () Unit!33873)

(assert (=> d!125113 (= lt!457333 e!586474)))

(declare-fun c!104986 () Bool)

(assert (=> d!125113 (= c!104986 lt!457331)))

(assert (=> d!125113 (= lt!457331 (containsKey!565 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(assert (=> d!125113 (= (contains!6044 lt!457058 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!457332)))

(declare-fun b!1036866 () Bool)

(declare-fun lt!457330 () Unit!33873)

(assert (=> b!1036866 (= e!586474 lt!457330)))

(assert (=> b!1036866 (= lt!457330 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(assert (=> b!1036866 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036867 () Bool)

(declare-fun Unit!33918 () Unit!33873)

(assert (=> b!1036867 (= e!586474 Unit!33918)))

(declare-fun b!1036868 () Bool)

(assert (=> b!1036868 (= e!586475 (isDefined!437 (getValueByKey!592 (toList!6953 lt!457058) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(assert (= (and d!125113 c!104986) b!1036866))

(assert (= (and d!125113 (not c!104986)) b!1036867))

(assert (= (and d!125113 (not res!692033)) b!1036868))

(declare-fun m!957391 () Bool)

(assert (=> d!125113 m!957391))

(declare-fun m!957393 () Bool)

(assert (=> b!1036866 m!957393))

(assert (=> b!1036866 m!956359))

(assert (=> b!1036866 m!956359))

(declare-fun m!957395 () Bool)

(assert (=> b!1036866 m!957395))

(assert (=> b!1036868 m!956359))

(assert (=> b!1036868 m!956359))

(assert (=> b!1036868 m!957395))

(assert (=> d!124657 d!125113))

(declare-fun d!125115 () Bool)

(declare-fun c!104987 () Bool)

(assert (=> d!125115 (= c!104987 (and ((_ is Cons!22031) lt!457056) (= (_1!7929 (h!23233 lt!457056)) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(declare-fun e!586476 () Option!643)

(assert (=> d!125115 (= (getValueByKey!592 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) e!586476)))

(declare-fun b!1036870 () Bool)

(declare-fun e!586477 () Option!643)

(assert (=> b!1036870 (= e!586476 e!586477)))

(declare-fun c!104988 () Bool)

(assert (=> b!1036870 (= c!104988 (and ((_ is Cons!22031) lt!457056) (not (= (_1!7929 (h!23233 lt!457056)) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))))

(declare-fun b!1036872 () Bool)

(assert (=> b!1036872 (= e!586477 None!641)))

(declare-fun b!1036871 () Bool)

(assert (=> b!1036871 (= e!586477 (getValueByKey!592 (t!31249 lt!457056) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036869 () Bool)

(assert (=> b!1036869 (= e!586476 (Some!642 (_2!7929 (h!23233 lt!457056))))))

(assert (= (and d!125115 c!104987) b!1036869))

(assert (= (and d!125115 (not c!104987)) b!1036870))

(assert (= (and b!1036870 c!104988) b!1036871))

(assert (= (and b!1036870 (not c!104988)) b!1036872))

(declare-fun m!957397 () Bool)

(assert (=> b!1036871 m!957397))

(assert (=> d!124657 d!125115))

(declare-fun d!125117 () Bool)

(assert (=> d!125117 (= (getValueByKey!592 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) (Some!642 (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun lt!457334 () Unit!33873)

(assert (=> d!125117 (= lt!457334 (choose!1712 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun e!586478 () Bool)

(assert (=> d!125117 e!586478))

(declare-fun res!692034 () Bool)

(assert (=> d!125117 (=> (not res!692034) (not e!586478))))

(assert (=> d!125117 (= res!692034 (isStrictlySorted!715 lt!457056))))

(assert (=> d!125117 (= (lemmaContainsTupThenGetReturnValue!281 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!457334)))

(declare-fun b!1036873 () Bool)

(declare-fun res!692035 () Bool)

(assert (=> b!1036873 (=> (not res!692035) (not e!586478))))

(assert (=> b!1036873 (= res!692035 (containsKey!565 lt!457056 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036874 () Bool)

(assert (=> b!1036874 (= e!586478 (contains!6045 lt!457056 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(assert (= (and d!125117 res!692034) b!1036873))

(assert (= (and b!1036873 res!692035) b!1036874))

(assert (=> d!125117 m!956353))

(declare-fun m!957399 () Bool)

(assert (=> d!125117 m!957399))

(declare-fun m!957401 () Bool)

(assert (=> d!125117 m!957401))

(declare-fun m!957403 () Bool)

(assert (=> b!1036873 m!957403))

(declare-fun m!957405 () Bool)

(assert (=> b!1036874 m!957405))

(assert (=> d!124657 d!125117))

(declare-fun b!1036875 () Bool)

(declare-fun e!586479 () List!22035)

(declare-fun e!586480 () List!22035)

(assert (=> b!1036875 (= e!586479 e!586480)))

(declare-fun c!104992 () Bool)

(assert (=> b!1036875 (= c!104992 (and ((_ is Cons!22031) (toList!6953 lt!456827)) (= (_1!7929 (h!23233 (toList!6953 lt!456827))) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036876 () Bool)

(declare-fun e!586482 () List!22035)

(declare-fun call!43901 () List!22035)

(assert (=> b!1036876 (= e!586482 call!43901)))

(declare-fun bm!43897 () Bool)

(declare-fun e!586483 () List!22035)

(declare-fun c!104989 () Bool)

(declare-fun call!43900 () List!22035)

(assert (=> bm!43897 (= call!43900 ($colon$colon!606 e!586483 (ite c!104989 (h!23233 (toList!6953 lt!456827)) (tuple2!15839 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))))

(declare-fun c!104990 () Bool)

(assert (=> bm!43897 (= c!104990 c!104989)))

(declare-fun d!125119 () Bool)

(declare-fun e!586481 () Bool)

(assert (=> d!125119 e!586481))

(declare-fun res!692036 () Bool)

(assert (=> d!125119 (=> (not res!692036) (not e!586481))))

(declare-fun lt!457335 () List!22035)

(assert (=> d!125119 (= res!692036 (isStrictlySorted!715 lt!457335))))

(assert (=> d!125119 (= lt!457335 e!586479)))

(assert (=> d!125119 (= c!104989 (and ((_ is Cons!22031) (toList!6953 lt!456827)) (bvslt (_1!7929 (h!23233 (toList!6953 lt!456827))) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(assert (=> d!125119 (isStrictlySorted!715 (toList!6953 lt!456827))))

(assert (=> d!125119 (= (insertStrictlySorted!373 (toList!6953 lt!456827) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))) lt!457335)))

(declare-fun c!104991 () Bool)

(declare-fun b!1036877 () Bool)

(assert (=> b!1036877 (= c!104991 (and ((_ is Cons!22031) (toList!6953 lt!456827)) (bvsgt (_1!7929 (h!23233 (toList!6953 lt!456827))) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(assert (=> b!1036877 (= e!586480 e!586482)))

(declare-fun b!1036878 () Bool)

(assert (=> b!1036878 (= e!586483 (insertStrictlySorted!373 (t!31249 (toList!6953 lt!456827)) (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036879 () Bool)

(declare-fun res!692037 () Bool)

(assert (=> b!1036879 (=> (not res!692037) (not e!586481))))

(assert (=> b!1036879 (= res!692037 (containsKey!565 lt!457335 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427)))))))

(declare-fun b!1036880 () Bool)

(assert (=> b!1036880 (= e!586479 call!43900)))

(declare-fun bm!43898 () Bool)

(declare-fun call!43902 () List!22035)

(assert (=> bm!43898 (= call!43901 call!43902)))

(declare-fun b!1036881 () Bool)

(assert (=> b!1036881 (= e!586481 (contains!6045 lt!457335 (tuple2!15839 (_1!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))) (_2!7929 (tuple2!15839 lt!456843 (minValue!6106 thiss!1427))))))))

(declare-fun b!1036882 () Bool)

(assert (=> b!1036882 (= e!586482 call!43901)))

(declare-fun bm!43899 () Bool)

(assert (=> bm!43899 (= call!43902 call!43900)))

(declare-fun b!1036883 () Bool)

(assert (=> b!1036883 (= e!586483 (ite c!104992 (t!31249 (toList!6953 lt!456827)) (ite c!104991 (Cons!22031 (h!23233 (toList!6953 lt!456827)) (t!31249 (toList!6953 lt!456827))) Nil!22032)))))

(declare-fun b!1036884 () Bool)

(assert (=> b!1036884 (= e!586480 call!43902)))

(assert (= (and d!125119 c!104989) b!1036880))

(assert (= (and d!125119 (not c!104989)) b!1036875))

(assert (= (and b!1036875 c!104992) b!1036884))

(assert (= (and b!1036875 (not c!104992)) b!1036877))

(assert (= (and b!1036877 c!104991) b!1036882))

(assert (= (and b!1036877 (not c!104991)) b!1036876))

(assert (= (or b!1036882 b!1036876) bm!43898))

(assert (= (or b!1036884 bm!43898) bm!43899))

(assert (= (or b!1036880 bm!43899) bm!43897))

(assert (= (and bm!43897 c!104990) b!1036878))

(assert (= (and bm!43897 (not c!104990)) b!1036883))

(assert (= (and d!125119 res!692036) b!1036879))

(assert (= (and b!1036879 res!692037) b!1036881))

(declare-fun m!957407 () Bool)

(assert (=> b!1036881 m!957407))

(declare-fun m!957409 () Bool)

(assert (=> bm!43897 m!957409))

(declare-fun m!957411 () Bool)

(assert (=> b!1036878 m!957411))

(declare-fun m!957413 () Bool)

(assert (=> b!1036879 m!957413))

(declare-fun m!957415 () Bool)

(assert (=> d!125119 m!957415))

(declare-fun m!957417 () Bool)

(assert (=> d!125119 m!957417))

(assert (=> d!124657 d!125119))

(assert (=> b!1036027 d!124943))

(assert (=> b!1036027 d!124945))

(declare-fun d!125121 () Bool)

(declare-fun res!692038 () Bool)

(declare-fun e!586484 () Bool)

(assert (=> d!125121 (=> res!692038 e!586484)))

(assert (=> d!125121 (= res!692038 (and ((_ is Cons!22031) (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) (= (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) lt!456835)))))

(assert (=> d!125121 (= (containsKey!565 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))) lt!456835) e!586484)))

(declare-fun b!1036885 () Bool)

(declare-fun e!586485 () Bool)

(assert (=> b!1036885 (= e!586484 e!586485)))

(declare-fun res!692039 () Bool)

(assert (=> b!1036885 (=> (not res!692039) (not e!586485))))

(assert (=> b!1036885 (= res!692039 (and (or (not ((_ is Cons!22031) (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) (bvsle (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) lt!456835)) ((_ is Cons!22031) (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) (bvslt (_1!7929 (h!23233 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427)))))) lt!456835)))))

(declare-fun b!1036886 () Bool)

(assert (=> b!1036886 (= e!586485 (containsKey!565 (t!31249 (toList!6953 (+!3065 lt!456845 (tuple2!15839 lt!456842 (zeroValue!6104 thiss!1427))))) lt!456835))))

(assert (= (and d!125121 (not res!692038)) b!1036885))

(assert (= (and b!1036885 res!692039) b!1036886))

(declare-fun m!957419 () Bool)

(assert (=> b!1036886 m!957419))

(assert (=> d!124655 d!125121))

(declare-fun d!125123 () Bool)

(declare-fun c!104993 () Bool)

(assert (=> d!125123 (= c!104993 (and ((_ is Cons!22031) (toList!6953 lt!456922)) (= (_1!7929 (h!23233 (toList!6953 lt!456922))) (_1!7929 (tuple2!15839 lt!456863 lt!456768)))))))

(declare-fun e!586486 () Option!643)

(assert (=> d!125123 (= (getValueByKey!592 (toList!6953 lt!456922) (_1!7929 (tuple2!15839 lt!456863 lt!456768))) e!586486)))

(declare-fun b!1036888 () Bool)

(declare-fun e!586487 () Option!643)

(assert (=> b!1036888 (= e!586486 e!586487)))

(declare-fun c!104994 () Bool)

(assert (=> b!1036888 (= c!104994 (and ((_ is Cons!22031) (toList!6953 lt!456922)) (not (= (_1!7929 (h!23233 (toList!6953 lt!456922))) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))))

(declare-fun b!1036890 () Bool)

(assert (=> b!1036890 (= e!586487 None!641)))

(declare-fun b!1036889 () Bool)

(assert (=> b!1036889 (= e!586487 (getValueByKey!592 (t!31249 (toList!6953 lt!456922)) (_1!7929 (tuple2!15839 lt!456863 lt!456768))))))

(declare-fun b!1036887 () Bool)

(assert (=> b!1036887 (= e!586486 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!456922)))))))

(assert (= (and d!125123 c!104993) b!1036887))

(assert (= (and d!125123 (not c!104993)) b!1036888))

(assert (= (and b!1036888 c!104994) b!1036889))

(assert (= (and b!1036888 (not c!104994)) b!1036890))

(declare-fun m!957421 () Bool)

(assert (=> b!1036889 m!957421))

(assert (=> b!1036034 d!125123))

(declare-fun d!125125 () Bool)

(declare-fun e!586489 () Bool)

(assert (=> d!125125 e!586489))

(declare-fun res!692040 () Bool)

(assert (=> d!125125 (=> res!692040 e!586489)))

(declare-fun lt!457338 () Bool)

(assert (=> d!125125 (= res!692040 (not lt!457338))))

(declare-fun lt!457337 () Bool)

(assert (=> d!125125 (= lt!457338 lt!457337)))

(declare-fun lt!457339 () Unit!33873)

(declare-fun e!586488 () Unit!33873)

(assert (=> d!125125 (= lt!457339 e!586488)))

(declare-fun c!104995 () Bool)

(assert (=> d!125125 (= c!104995 lt!457337)))

(assert (=> d!125125 (= lt!457337 (containsKey!565 (toList!6953 lt!456890) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125125 (= (contains!6044 lt!456890 (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)) lt!457338)))

(declare-fun b!1036891 () Bool)

(declare-fun lt!457336 () Unit!33873)

(assert (=> b!1036891 (= e!586488 lt!457336)))

(assert (=> b!1036891 (= lt!457336 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!6953 lt!456890) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1036891 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1036892 () Bool)

(declare-fun Unit!33919 () Unit!33873)

(assert (=> b!1036892 (= e!586488 Unit!33919)))

(declare-fun b!1036893 () Bool)

(assert (=> b!1036893 (= e!586489 (isDefined!437 (getValueByKey!592 (toList!6953 lt!456890) (select (arr!31419 (_keys!11456 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!125125 c!104995) b!1036891))

(assert (= (and d!125125 (not c!104995)) b!1036892))

(assert (= (and d!125125 (not res!692040)) b!1036893))

(assert (=> d!125125 m!955785))

(declare-fun m!957423 () Bool)

(assert (=> d!125125 m!957423))

(assert (=> b!1036891 m!955785))

(declare-fun m!957425 () Bool)

(assert (=> b!1036891 m!957425))

(assert (=> b!1036891 m!955785))

(assert (=> b!1036891 m!956811))

(assert (=> b!1036891 m!956811))

(declare-fun m!957427 () Bool)

(assert (=> b!1036891 m!957427))

(assert (=> b!1036893 m!955785))

(assert (=> b!1036893 m!956811))

(assert (=> b!1036893 m!956811))

(assert (=> b!1036893 m!957427))

(assert (=> b!1036018 d!125125))

(declare-fun c!104996 () Bool)

(declare-fun d!125127 () Bool)

(assert (=> d!125127 (= c!104996 (and ((_ is Cons!22031) (toList!6953 lt!457049)) (= (_1!7929 (h!23233 (toList!6953 lt!457049))) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427))))))))

(declare-fun e!586490 () Option!643)

(assert (=> d!125127 (= (getValueByKey!592 (toList!6953 lt!457049) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))) e!586490)))

(declare-fun b!1036895 () Bool)

(declare-fun e!586491 () Option!643)

(assert (=> b!1036895 (= e!586490 e!586491)))

(declare-fun c!104997 () Bool)

(assert (=> b!1036895 (= c!104997 (and ((_ is Cons!22031) (toList!6953 lt!457049)) (not (= (_1!7929 (h!23233 (toList!6953 lt!457049))) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))))

(declare-fun b!1036897 () Bool)

(assert (=> b!1036897 (= e!586491 None!641)))

(declare-fun b!1036896 () Bool)

(assert (=> b!1036896 (= e!586491 (getValueByKey!592 (t!31249 (toList!6953 lt!457049)) (_1!7929 (tuple2!15839 lt!456838 (zeroValue!6104 thiss!1427)))))))

(declare-fun b!1036894 () Bool)

(assert (=> b!1036894 (= e!586490 (Some!642 (_2!7929 (h!23233 (toList!6953 lt!457049)))))))

(assert (= (and d!125127 c!104996) b!1036894))

(assert (= (and d!125127 (not c!104996)) b!1036895))

(assert (= (and b!1036895 c!104997) b!1036896))

(assert (= (and b!1036895 (not c!104997)) b!1036897))

(declare-fun m!957429 () Bool)

(assert (=> b!1036896 m!957429))

(assert (=> b!1036211 d!125127))

(declare-fun b!1036898 () Bool)

(declare-fun e!586492 () (_ BitVec 32))

(declare-fun call!43903 () (_ BitVec 32))

(assert (=> b!1036898 (= e!586492 call!43903)))

(declare-fun bm!43900 () Bool)

(assert (=> bm!43900 (= call!43903 (arrayCountValidKeys!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(declare-fun d!125129 () Bool)

(declare-fun lt!457340 () (_ BitVec 32))

(assert (=> d!125129 (and (bvsge lt!457340 #b00000000000000000000000000000000) (bvsle lt!457340 (bvsub (size!31948 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!586493 () (_ BitVec 32))

(assert (=> d!125129 (= lt!457340 e!586493)))

(declare-fun c!104999 () Bool)

(assert (=> d!125129 (= c!104999 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!125129 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31948 (_keys!11456 lt!456769)) (size!31948 (_keys!11456 lt!456769))))))

(assert (=> d!125129 (= (arrayCountValidKeys!0 (_keys!11456 lt!456769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31948 (_keys!11456 lt!456769))) lt!457340)))

(declare-fun b!1036899 () Bool)

(assert (=> b!1036899 (= e!586493 e!586492)))

(declare-fun c!104998 () Bool)

(assert (=> b!1036899 (= c!104998 (validKeyInArray!0 (select (arr!31419 (_keys!11456 lt!456769)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1036900 () Bool)

(assert (=> b!1036900 (= e!586492 (bvadd #b00000000000000000000000000000001 call!43903))))

(declare-fun b!1036901 () Bool)

(assert (=> b!1036901 (= e!586493 #b00000000000000000000000000000000)))

(assert (= (and d!125129 c!104999) b!1036901))

(assert (= (and d!125129 (not c!104999)) b!1036899))

(assert (= (and b!1036899 c!104998) b!1036900))

(assert (= (and b!1036899 (not c!104998)) b!1036898))

(assert (= (or b!1036900 b!1036898) bm!43900))

(declare-fun m!957431 () Bool)

(assert (=> bm!43900 m!957431))

(assert (=> b!1036899 m!956693))

(assert (=> b!1036899 m!956693))

(assert (=> b!1036899 m!956701))

(assert (=> bm!43840 d!125129))

(declare-fun mapNonEmpty!38420 () Bool)

(declare-fun mapRes!38420 () Bool)

(declare-fun tp!73777 () Bool)

(declare-fun e!586495 () Bool)

(assert (=> mapNonEmpty!38420 (= mapRes!38420 (and tp!73777 e!586495))))

(declare-fun mapRest!38420 () (Array (_ BitVec 32) ValueCell!11595))

(declare-fun mapValue!38420 () ValueCell!11595)

(declare-fun mapKey!38420 () (_ BitVec 32))

(assert (=> mapNonEmpty!38420 (= mapRest!38419 (store mapRest!38420 mapKey!38420 mapValue!38420))))

(declare-fun condMapEmpty!38420 () Bool)

(declare-fun mapDefault!38420 () ValueCell!11595)

(assert (=> mapNonEmpty!38419 (= condMapEmpty!38420 (= mapRest!38419 ((as const (Array (_ BitVec 32) ValueCell!11595)) mapDefault!38420)))))

(declare-fun e!586494 () Bool)

(assert (=> mapNonEmpty!38419 (= tp!73776 (and e!586494 mapRes!38420))))

(declare-fun mapIsEmpty!38420 () Bool)

(assert (=> mapIsEmpty!38420 mapRes!38420))

(declare-fun b!1036902 () Bool)

(assert (=> b!1036902 (= e!586495 tp_is_empty!24597)))

(declare-fun b!1036903 () Bool)

(assert (=> b!1036903 (= e!586494 tp_is_empty!24597)))

(assert (= (and mapNonEmpty!38419 condMapEmpty!38420) mapIsEmpty!38420))

(assert (= (and mapNonEmpty!38419 (not condMapEmpty!38420)) mapNonEmpty!38420))

(assert (= (and mapNonEmpty!38420 ((_ is ValueCellFull!11595) mapValue!38420)) b!1036902))

(assert (= (and mapNonEmpty!38419 ((_ is ValueCellFull!11595) mapDefault!38420)) b!1036903))

(declare-fun m!957433 () Bool)

(assert (=> mapNonEmpty!38420 m!957433))

(declare-fun b_lambda!16177 () Bool)

(assert (= b_lambda!16165 (or (and b!1035850 b_free!20877) b_lambda!16177)))

(declare-fun b_lambda!16179 () Bool)

(assert (= b_lambda!16175 (or (and b!1035850 b_free!20877) b_lambda!16179)))

(declare-fun b_lambda!16181 () Bool)

(assert (= b_lambda!16173 (or (and b!1035850 b_free!20877) b_lambda!16181)))

(declare-fun b_lambda!16183 () Bool)

(assert (= b_lambda!16167 (or (and b!1035850 b_free!20877) b_lambda!16183)))

(declare-fun b_lambda!16185 () Bool)

(assert (= b_lambda!16155 (or (and b!1035850 b_free!20877 (= (defaultEntry!6270 thiss!1427) (defaultEntry!6270 lt!456769))) b_lambda!16185)))

(check-sat (not b!1036744) (not d!124957) (not d!124665) (not b!1036370) (not d!124847) (not d!124915) (not b_lambda!16137) (not d!125095) (not d!124865) (not d!124899) (not b!1036500) (not b!1036567) (not b!1036503) (not b!1036316) (not b!1036831) (not d!124823) (not b!1036703) (not d!124705) (not b!1036227) (not b!1036322) (not mapNonEmpty!38420) (not b!1036674) (not b!1036678) (not d!124671) (not d!124889) (not d!125057) (not b!1036392) (not b!1036713) (not b!1036407) (not b_lambda!16185) (not b!1036454) (not b!1036381) (not b!1036284) (not d!124771) (not b!1036513) (not b!1036710) (not b!1036382) (not b!1036446) (not d!124739) (not b!1036506) (not d!124929) (not d!124785) (not b!1036429) (not d!125001) (not b!1036460) (not d!124709) (not b!1036265) (not b_lambda!16145) (not b!1036813) (not b!1036435) (not b!1036608) (not bm!43867) (not d!124857) (not b!1036799) (not b!1036893) (not b!1036846) (not b!1036267) (not b_lambda!16181) (not b!1036535) (not d!124989) (not d!125065) (not b!1036865) (not d!125035) (not b!1036568) (not b!1036662) (not d!125007) (not b!1036740) (not d!124789) (not b!1036597) (not b!1036366) (not b!1036665) (not b!1036641) (not d!124807) (not d!124729) (not d!125075) (not d!124673) (not b!1036798) (not b!1036837) (not d!125119) (not d!125059) (not b!1036438) (not b!1036357) (not b!1036619) (not b!1036687) (not d!124727) (not b!1036579) (not d!124959) (not d!124745) (not b!1036781) (not b!1036253) (not b!1036572) (not b!1036874) (not b!1036716) (not d!124763) (not b!1036669) (not b!1036789) (not d!124713) (not d!124971) (not d!124755) (not bm!43850) (not b!1036878) (not b!1036630) (not b!1036793) (not b!1036854) (not b!1036408) tp_is_empty!24597 (not b!1036751) (not b!1036684) (not d!125071) (not b!1036584) (not b!1036467) (not b!1036764) (not b!1036891) (not bm!43876) (not d!124783) (not b!1036832) (not d!124733) (not b!1036233) (not d!124815) (not b!1036327) (not b!1036575) (not b!1036345) (not d!125027) (not d!124999) (not b!1036379) (not b!1036457) (not b!1036533) (not b!1036376) (not d!124961) (not b!1036474) (not b!1036274) (not d!124761) (not b!1036603) (not d!124687) (not b!1036871) (not b!1036231) (not b!1036337) (not d!125117) (not d!125013) (not b!1036858) (not d!125011) (not d!124731) (not b!1036358) (not b!1036432) (not b!1036844) (not b!1036250) (not b!1036225) (not b!1036459) (not d!125103) (not b!1036402) (not b!1036849) (not d!124711) (not b!1036508) (not d!124975) (not b!1036505) (not b!1036733) (not b!1036405) (not d!125053) (not b!1036440) (not b!1036879) (not d!124905) (not b_lambda!16159) (not b!1036527) (not d!124753) (not b!1036395) (not d!124941) (not b!1036367) (not b!1036601) (not b!1036873) (not d!124883) (not d!124833) (not d!124747) (not bm!43857) (not b!1036862) (not b_lambda!16183) (not b!1036586) (not b!1036617) (not b!1036736) (not d!125093) (not b!1036829) (not b!1036886) (not d!124797) (not bm!43879) (not b!1036737) (not b!1036452) (not d!124675) (not d!124801) (not d!124855) (not b!1036790) (not d!124805) (not d!124769) (not b!1036688) (not d!125087) (not b!1036696) (not b!1036796) (not b!1036281) (not b!1036263) (not d!125003) (not b!1036425) (not b!1036475) (not b!1036483) (not d!124799) (not d!124809) (not b!1036471) (not b!1036222) (not d!124943) (not b!1036415) (not b!1036806) (not b_lambda!16157) (not b!1036348) (not b!1036514) (not bm!43897) (not d!124891) (not b!1036848) (not b!1036715) (not b!1036708) (not b!1036464) (not b!1036581) (not bm!43863) (not b!1036839) (not b!1036599) (not b!1036226) (not bm!43900) (not d!124779) (not b_lambda!16169) (not d!125051) (not b!1036491) (not d!124987) (not b!1036647) (not d!124741) (not bm!43890) (not b_lambda!16143) (not b!1036785) (not bm!43875) (not b!1036596) (not bm!43871) (not b_lambda!16177) (not d!124937) (not b!1036702) (not d!124947) (not b!1036866) (not b!1036496) (not d!125101) (not b!1036247) (not b!1036519) (not d!124821) (not b!1036260) (not b!1036518) (not b!1036541) (not b!1036560) (not bm!43880) (not b!1036616) (not b!1036681) (not b!1036679) (not d!125099) (not b!1036419) (not d!124737) (not d!125079) (not b!1036651) (not b!1036343) (not b!1036424) (not b!1036430) (not b!1036660) (not b!1036667) b_and!33429 (not b!1036565) (not b!1036822) (not b!1036318) (not b!1036758) (not d!124703) (not b!1036731) (not b!1036857) (not bm!43886) (not b!1036591) (not b_lambda!16163) (not d!124749) (not d!124751) (not b!1036658) (not b!1036632) (not b!1036412) (not b!1036230) (not b!1036598) (not b!1036649) (not b!1036493) (not d!124743) (not b!1036445) (not b!1036277) (not d!124913) (not d!125041) (not b_lambda!16179) (not b!1036562) (not b!1036531) (not b!1036735) (not d!124949) (not b!1036330) (not b!1036690) (not d!124685) (not b!1036324) (not d!124873) (not b_lambda!16171) (not bm!43894) (not d!124787) (not d!124717) (not b!1036720) (not d!124719) (not b_lambda!16161) (not d!125023) (not b!1036644) (not d!124695) (not b!1036650) (not b!1036548) (not d!125047) (not d!124887) (not b!1036587) (not b!1036803) (not b!1036545) (not d!125069) (not d!124933) (not b!1036594) (not b!1036756) (not b_next!20877) (not b!1036279) (not bm!43868) (not b!1036521) (not b!1036706) (not b!1036479) (not d!124759) (not d!124963) (not b!1036387) (not b!1036675) (not b!1036786) (not b!1036481) (not b!1036384) (not b!1036853) (not b!1036629) (not d!125097) (not b!1036400) (not b!1036371) (not d!124701) (not b!1036246) (not d!124903) (not d!124917) (not b!1036818) (not d!124993) (not b!1036477) (not b!1036868) (not b!1036488) (not b!1036441) (not d!125083) (not b!1036625) (not d!125061) (not b!1036389) (not d!124939) (not b!1036624) (not b!1036639) (not b!1036448) (not b!1036824) (not b!1036360) (not d!125025) (not b!1036291) (not b!1036398) (not b!1036753) (not b!1036783) (not b!1036334) (not b!1036290) (not bm!43874) (not b!1036555) (not b!1036244) (not b!1036748) (not d!124981) (not b!1036680) (not b!1036699) (not d!125105) (not b!1036896) (not b!1036543) (not b!1036804) (not d!125089) (not b!1036377) (not b!1036881) (not d!125049) (not b!1036811) (not b!1036362) (not b!1036836) (not b!1036723) (not d!125021) (not b!1036573) (not d!124699) (not b!1036465) (not b!1036422) (not b!1036413) (not d!125125) (not b!1036550) (not b!1036511) (not d!124991) (not bm!43887) (not d!124909) (not d!124735) (not bm!43860) (not d!124689) (not b!1036380) (not b!1036557) (not b!1036859) (not b!1036329) (not d!124875) (not b!1036356) (not b!1036899) (not b!1036335) (not b!1036232) (not b!1036729) (not d!124977) (not d!124813) (not b!1036559) (not b!1036365) (not b!1036622) (not b!1036375) (not b!1036546) (not b!1036755) (not d!125045) (not b!1036851) (not d!125113) (not d!124881) (not b!1036791) (not b!1036378) (not d!124919) (not b!1036721) (not b!1036826) (not bm!43891) (not d!124923) (not b!1036855) (not b!1036549) (not d!124921) (not b!1036654) (not bm!43883) (not b!1036670) (not d!124851) (not b!1036889) (not b!1036315) (not b!1036613) (not b!1036372) (not d!124911) (not b!1036352) (not b!1036602) (not b!1036673) (not b!1036354) (not d!124757) (not b!1036746) (not b!1036610) (not bm!43864) (not b!1036588) (not b!1036636) (not b!1036433))
(check-sat b_and!33429 (not b_next!20877))
