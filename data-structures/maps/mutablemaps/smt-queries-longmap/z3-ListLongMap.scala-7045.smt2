; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89320 () Bool)

(assert start!89320)

(declare-fun b!1023738 () Bool)

(declare-fun b_free!20325 () Bool)

(declare-fun b_next!20325 () Bool)

(assert (=> b!1023738 (= b_free!20325 (not b_next!20325))))

(declare-fun tp!72011 () Bool)

(declare-fun b_and!32579 () Bool)

(assert (=> b!1023738 (= tp!72011 b_and!32579)))

(declare-fun b!1023733 () Bool)

(declare-fun res!685640 () Bool)

(declare-fun e!576970 () Bool)

(assert (=> b!1023733 (=> (not res!685640) (not e!576970))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023733 (= res!685640 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685641 () Bool)

(assert (=> start!89320 (=> (not res!685641) (not e!576970))))

(declare-datatypes ((V!36933 0))(
  ( (V!36934 (val!12073 Int)) )
))
(declare-datatypes ((ValueCell!11319 0))(
  ( (ValueCellFull!11319 (v!14643 V!36933)) (EmptyCell!11319) )
))
(declare-datatypes ((array!64118 0))(
  ( (array!64119 (arr!30867 (Array (_ BitVec 32) (_ BitVec 64))) (size!31379 (_ BitVec 32))) )
))
(declare-datatypes ((array!64120 0))(
  ( (array!64121 (arr!30868 (Array (_ BitVec 32) ValueCell!11319)) (size!31380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5232 0))(
  ( (LongMapFixedSize!5233 (defaultEntry!5968 Int) (mask!29594 (_ BitVec 32)) (extraKeys!5700 (_ BitVec 32)) (zeroValue!5804 V!36933) (minValue!5804 V!36933) (_size!2671 (_ BitVec 32)) (_keys!11110 array!64118) (_values!5991 array!64120) (_vacant!2671 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5232)

(declare-fun valid!1950 (LongMapFixedSize!5232) Bool)

(assert (=> start!89320 (= res!685641 (valid!1950 thiss!1427))))

(assert (=> start!89320 e!576970))

(declare-fun e!576972 () Bool)

(assert (=> start!89320 e!576972))

(assert (=> start!89320 true))

(declare-fun b!1023734 () Bool)

(declare-fun e!576973 () Bool)

(declare-fun tp_is_empty!24045 () Bool)

(assert (=> b!1023734 (= e!576973 tp_is_empty!24045)))

(declare-fun b!1023735 () Bool)

(assert (=> b!1023735 (= e!576970 (not true))))

(declare-fun lt!450476 () Bool)

(declare-fun lt!450477 () V!36933)

(assert (=> b!1023735 (= lt!450476 (valid!1950 (LongMapFixedSize!5233 (defaultEntry!5968 thiss!1427) (mask!29594 thiss!1427) (bvand (extraKeys!5700 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5804 thiss!1427) lt!450477 (_size!2671 thiss!1427) (_keys!11110 thiss!1427) (_values!5991 thiss!1427) (_vacant!2671 thiss!1427))))))

(declare-datatypes ((tuple2!15610 0))(
  ( (tuple2!15611 (_1!7815 (_ BitVec 64)) (_2!7815 V!36933)) )
))
(declare-datatypes ((List!21824 0))(
  ( (Nil!21821) (Cons!21820 (h!23018 tuple2!15610) (t!30885 List!21824)) )
))
(declare-datatypes ((ListLongMap!13769 0))(
  ( (ListLongMap!13770 (toList!6900 List!21824)) )
))
(declare-fun -!476 (ListLongMap!13769 (_ BitVec 64)) ListLongMap!13769)

(declare-fun getCurrentListMap!3907 (array!64118 array!64120 (_ BitVec 32) (_ BitVec 32) V!36933 V!36933 (_ BitVec 32) Int) ListLongMap!13769)

(assert (=> b!1023735 (= (-!476 (getCurrentListMap!3907 (_keys!11110 thiss!1427) (_values!5991 thiss!1427) (mask!29594 thiss!1427) (extraKeys!5700 thiss!1427) (zeroValue!5804 thiss!1427) (minValue!5804 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5968 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3907 (_keys!11110 thiss!1427) (_values!5991 thiss!1427) (mask!29594 thiss!1427) (bvand (extraKeys!5700 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5804 thiss!1427) lt!450477 #b00000000000000000000000000000000 (defaultEntry!5968 thiss!1427)))))

(declare-datatypes ((Unit!33304 0))(
  ( (Unit!33305) )
))
(declare-fun lt!450478 () Unit!33304)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!8 (array!64118 array!64120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36933 V!36933 V!36933 Int) Unit!33304)

(assert (=> b!1023735 (= lt!450478 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!8 (_keys!11110 thiss!1427) (_values!5991 thiss!1427) (mask!29594 thiss!1427) (extraKeys!5700 thiss!1427) (bvand (extraKeys!5700 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5804 thiss!1427) (minValue!5804 thiss!1427) lt!450477 (defaultEntry!5968 thiss!1427)))))

(declare-fun dynLambda!1951 (Int (_ BitVec 64)) V!36933)

(assert (=> b!1023735 (= lt!450477 (dynLambda!1951 (defaultEntry!5968 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023736 () Bool)

(declare-fun e!576968 () Bool)

(declare-fun mapRes!37485 () Bool)

(assert (=> b!1023736 (= e!576968 (and e!576973 mapRes!37485))))

(declare-fun condMapEmpty!37485 () Bool)

(declare-fun mapDefault!37485 () ValueCell!11319)

(assert (=> b!1023736 (= condMapEmpty!37485 (= (arr!30868 (_values!5991 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11319)) mapDefault!37485)))))

(declare-fun b!1023737 () Bool)

(declare-fun e!576969 () Bool)

(assert (=> b!1023737 (= e!576969 tp_is_empty!24045)))

(declare-fun mapNonEmpty!37485 () Bool)

(declare-fun tp!72010 () Bool)

(assert (=> mapNonEmpty!37485 (= mapRes!37485 (and tp!72010 e!576969))))

(declare-fun mapKey!37485 () (_ BitVec 32))

(declare-fun mapValue!37485 () ValueCell!11319)

(declare-fun mapRest!37485 () (Array (_ BitVec 32) ValueCell!11319))

(assert (=> mapNonEmpty!37485 (= (arr!30868 (_values!5991 thiss!1427)) (store mapRest!37485 mapKey!37485 mapValue!37485))))

(declare-fun mapIsEmpty!37485 () Bool)

(assert (=> mapIsEmpty!37485 mapRes!37485))

(declare-fun array_inv!23785 (array!64118) Bool)

(declare-fun array_inv!23786 (array!64120) Bool)

(assert (=> b!1023738 (= e!576972 (and tp!72011 tp_is_empty!24045 (array_inv!23785 (_keys!11110 thiss!1427)) (array_inv!23786 (_values!5991 thiss!1427)) e!576968))))

(assert (= (and start!89320 res!685641) b!1023733))

(assert (= (and b!1023733 res!685640) b!1023735))

(assert (= (and b!1023736 condMapEmpty!37485) mapIsEmpty!37485))

(assert (= (and b!1023736 (not condMapEmpty!37485)) mapNonEmpty!37485))

(get-info :version)

(assert (= (and mapNonEmpty!37485 ((_ is ValueCellFull!11319) mapValue!37485)) b!1023737))

(assert (= (and b!1023736 ((_ is ValueCellFull!11319) mapDefault!37485)) b!1023734))

(assert (= b!1023738 b!1023736))

(assert (= start!89320 b!1023738))

(declare-fun b_lambda!15739 () Bool)

(assert (=> (not b_lambda!15739) (not b!1023735)))

(declare-fun t!30884 () Bool)

(declare-fun tb!6885 () Bool)

(assert (=> (and b!1023738 (= (defaultEntry!5968 thiss!1427) (defaultEntry!5968 thiss!1427)) t!30884) tb!6885))

(declare-fun result!14071 () Bool)

(assert (=> tb!6885 (= result!14071 tp_is_empty!24045)))

(assert (=> b!1023735 t!30884))

(declare-fun b_and!32581 () Bool)

(assert (= b_and!32579 (and (=> t!30884 result!14071) b_and!32581)))

(declare-fun m!942457 () Bool)

(assert (=> start!89320 m!942457))

(declare-fun m!942459 () Bool)

(assert (=> b!1023735 m!942459))

(declare-fun m!942461 () Bool)

(assert (=> b!1023735 m!942461))

(declare-fun m!942463 () Bool)

(assert (=> b!1023735 m!942463))

(declare-fun m!942465 () Bool)

(assert (=> b!1023735 m!942465))

(declare-fun m!942467 () Bool)

(assert (=> b!1023735 m!942467))

(declare-fun m!942469 () Bool)

(assert (=> b!1023735 m!942469))

(assert (=> b!1023735 m!942463))

(declare-fun m!942471 () Bool)

(assert (=> mapNonEmpty!37485 m!942471))

(declare-fun m!942473 () Bool)

(assert (=> b!1023738 m!942473))

(declare-fun m!942475 () Bool)

(assert (=> b!1023738 m!942475))

(check-sat (not b!1023738) (not b_lambda!15739) (not b_next!20325) tp_is_empty!24045 (not mapNonEmpty!37485) b_and!32581 (not start!89320) (not b!1023735))
(check-sat b_and!32581 (not b_next!20325))
