; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3274 () Bool)

(assert start!3274)

(declare-fun b!20082 () Bool)

(declare-fun b_free!705 () Bool)

(declare-fun b_next!705 () Bool)

(assert (=> b!20082 (= b_free!705 (not b_next!705))))

(declare-fun tp!3340 () Bool)

(declare-fun b_and!1379 () Bool)

(assert (=> b!20082 (= tp!3340 b_and!1379)))

(declare-fun b!20076 () Bool)

(declare-fun e!13082 () Bool)

(declare-fun e!13085 () Bool)

(assert (=> b!20076 (= e!13082 e!13085)))

(declare-fun b!20077 () Bool)

(declare-fun e!13084 () Bool)

(declare-fun e!13088 () Bool)

(assert (=> b!20077 (= e!13084 e!13088)))

(declare-fun res!13379 () Bool)

(assert (=> b!20077 (=> (not res!13379) (not e!13088))))

(declare-datatypes ((V!1117 0))(
  ( (V!1118 (val!511 Int)) )
))
(declare-datatypes ((ValueCell!285 0))(
  ( (ValueCellFull!285 (v!1539 V!1117)) (EmptyCell!285) )
))
(declare-datatypes ((array!1153 0))(
  ( (array!1154 (arr!549 (Array (_ BitVec 32) ValueCell!285)) (size!642 (_ BitVec 32))) )
))
(declare-datatypes ((array!1155 0))(
  ( (array!1156 (arr!550 (Array (_ BitVec 32) (_ BitVec 64))) (size!643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!156 0))(
  ( (LongMapFixedSize!157 (defaultEntry!1700 Int) (mask!4660 (_ BitVec 32)) (extraKeys!1607 (_ BitVec 32)) (zeroValue!1631 V!1117) (minValue!1631 V!1117) (_size!115 (_ BitVec 32)) (_keys!3125 array!1155) (_values!1693 array!1153) (_vacant!115 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!156 0))(
  ( (Cell!157 (v!1540 LongMapFixedSize!156)) )
))
(declare-datatypes ((LongMap!156 0))(
  ( (LongMap!157 (underlying!89 Cell!156)) )
))
(declare-fun thiss!938 () LongMap!156)

(assert (=> b!20077 (= res!13379 (and (= (bvand (extraKeys!1607 (v!1540 (underlying!89 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand (extraKeys!1607 (v!1540 (underlying!89 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!5771 () LongMapFixedSize!156)

(declare-fun getNewLongMapFixedSize!15 ((_ BitVec 32) Int) LongMapFixedSize!156)

(declare-fun computeNewMask!12 (LongMap!156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20077 (= lt!5771 (getNewLongMapFixedSize!15 (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) (defaultEntry!1700 (v!1540 (underlying!89 thiss!938)))))))

(declare-fun b!20078 () Bool)

(declare-fun valid!79 (LongMapFixedSize!156) Bool)

(assert (=> b!20078 (= e!13088 (not (valid!79 lt!5771)))))

(declare-fun b!20079 () Bool)

(declare-fun e!13081 () Bool)

(declare-fun e!13083 () Bool)

(declare-fun mapRes!922 () Bool)

(assert (=> b!20079 (= e!13081 (and e!13083 mapRes!922))))

(declare-fun condMapEmpty!922 () Bool)

(declare-fun mapDefault!922 () ValueCell!285)

(assert (=> b!20079 (= condMapEmpty!922 (= (arr!549 (_values!1693 (v!1540 (underlying!89 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!285)) mapDefault!922)))))

(declare-fun b!20080 () Bool)

(declare-fun e!13089 () Bool)

(declare-fun tp_is_empty!969 () Bool)

(assert (=> b!20080 (= e!13089 tp_is_empty!969)))

(declare-fun mapIsEmpty!922 () Bool)

(assert (=> mapIsEmpty!922 mapRes!922))

(declare-fun b!20081 () Bool)

(declare-fun e!13086 () Bool)

(assert (=> b!20081 (= e!13086 e!13082)))

(declare-fun res!13380 () Bool)

(assert (=> start!3274 (=> (not res!13380) (not e!13084))))

(declare-fun valid!80 (LongMap!156) Bool)

(assert (=> start!3274 (= res!13380 (valid!80 thiss!938))))

(assert (=> start!3274 e!13084))

(assert (=> start!3274 e!13086))

(declare-fun array_inv!387 (array!1155) Bool)

(declare-fun array_inv!388 (array!1153) Bool)

(assert (=> b!20082 (= e!13085 (and tp!3340 tp_is_empty!969 (array_inv!387 (_keys!3125 (v!1540 (underlying!89 thiss!938)))) (array_inv!388 (_values!1693 (v!1540 (underlying!89 thiss!938)))) e!13081))))

(declare-fun mapNonEmpty!922 () Bool)

(declare-fun tp!3339 () Bool)

(assert (=> mapNonEmpty!922 (= mapRes!922 (and tp!3339 e!13089))))

(declare-fun mapRest!922 () (Array (_ BitVec 32) ValueCell!285))

(declare-fun mapKey!922 () (_ BitVec 32))

(declare-fun mapValue!922 () ValueCell!285)

(assert (=> mapNonEmpty!922 (= (arr!549 (_values!1693 (v!1540 (underlying!89 thiss!938)))) (store mapRest!922 mapKey!922 mapValue!922))))

(declare-fun b!20083 () Bool)

(assert (=> b!20083 (= e!13083 tp_is_empty!969)))

(assert (= (and start!3274 res!13380) b!20077))

(assert (= (and b!20077 res!13379) b!20078))

(assert (= (and b!20079 condMapEmpty!922) mapIsEmpty!922))

(assert (= (and b!20079 (not condMapEmpty!922)) mapNonEmpty!922))

(get-info :version)

(assert (= (and mapNonEmpty!922 ((_ is ValueCellFull!285) mapValue!922)) b!20080))

(assert (= (and b!20079 ((_ is ValueCellFull!285) mapDefault!922)) b!20083))

(assert (= b!20082 b!20079))

(assert (= b!20076 b!20082))

(assert (= b!20081 b!20076))

(assert (= start!3274 b!20081))

(declare-fun m!14107 () Bool)

(assert (=> start!3274 m!14107))

(declare-fun m!14109 () Bool)

(assert (=> b!20082 m!14109))

(declare-fun m!14111 () Bool)

(assert (=> b!20082 m!14111))

(declare-fun m!14113 () Bool)

(assert (=> b!20078 m!14113))

(declare-fun m!14115 () Bool)

(assert (=> b!20077 m!14115))

(assert (=> b!20077 m!14115))

(declare-fun m!14117 () Bool)

(assert (=> b!20077 m!14117))

(declare-fun m!14119 () Bool)

(assert (=> mapNonEmpty!922 m!14119))

(check-sat (not start!3274) tp_is_empty!969 (not b_next!705) (not b!20078) (not mapNonEmpty!922) (not b!20077) (not b!20082) b_and!1379)
(check-sat b_and!1379 (not b_next!705))
(get-model)

(declare-fun d!3665 () Bool)

(assert (=> d!3665 (= (valid!80 thiss!938) (valid!79 (v!1540 (underlying!89 thiss!938))))))

(declare-fun bs!889 () Bool)

(assert (= bs!889 d!3665))

(declare-fun m!14135 () Bool)

(assert (=> bs!889 m!14135))

(assert (=> start!3274 d!3665))

(declare-fun b!20120 () Bool)

(declare-datatypes ((Unit!414 0))(
  ( (Unit!415) )
))
(declare-fun e!13123 () Unit!414)

(declare-fun Unit!416 () Unit!414)

(assert (=> b!20120 (= e!13123 Unit!416)))

(declare-fun b!20121 () Bool)

(declare-fun res!13392 () Bool)

(declare-fun e!13125 () Bool)

(assert (=> b!20121 (=> (not res!13392) (not e!13125))))

(declare-fun lt!5842 () LongMapFixedSize!156)

(assert (=> b!20121 (= res!13392 (= (mask!4660 lt!5842) (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938))))))))

(declare-fun b!20122 () Bool)

(declare-fun Unit!417 () Unit!414)

(assert (=> b!20122 (= e!13123 Unit!417)))

(declare-datatypes ((tuple2!822 0))(
  ( (tuple2!823 (_1!414 (_ BitVec 64)) (_2!414 V!1117)) )
))
(declare-fun lt!5838 () tuple2!822)

(declare-fun lt!5836 () LongMapFixedSize!156)

(declare-datatypes ((List!549 0))(
  ( (Nil!546) (Cons!545 (h!1111 tuple2!822) (t!3202 List!549)) )
))
(declare-fun head!823 (List!549) tuple2!822)

(declare-datatypes ((ListLongMap!535 0))(
  ( (ListLongMap!536 (toList!283 List!549)) )
))
(declare-fun map!383 (LongMapFixedSize!156) ListLongMap!535)

(assert (=> b!20122 (= lt!5838 (head!823 (toList!283 (map!383 lt!5836))))))

(declare-fun lt!5830 () array!1155)

(assert (=> b!20122 (= lt!5830 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5826 () (_ BitVec 32))

(assert (=> b!20122 (= lt!5826 #b00000000000000000000000000000000)))

(declare-fun lt!5843 () Unit!414)

(declare-fun lemmaKeyInListMapIsInArray!86 (array!1155 array!1153 (_ BitVec 32) (_ BitVec 32) V!1117 V!1117 (_ BitVec 64) Int) Unit!414)

(declare-fun dynLambda!137 (Int (_ BitVec 64)) V!1117)

(assert (=> b!20122 (= lt!5843 (lemmaKeyInListMapIsInArray!86 lt!5830 (array!1154 ((as const (Array (_ BitVec 32) ValueCell!285)) EmptyCell!285) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) lt!5826 (dynLambda!137 (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!137 (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!414 lt!5838) (defaultEntry!1700 (v!1540 (underlying!89 thiss!938)))))))

(declare-fun c!2162 () Bool)

(assert (=> b!20122 (= c!2162 (and (not (= (_1!414 lt!5838) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!414 lt!5838) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!13124 () Bool)

(assert (=> b!20122 e!13124))

(declare-fun lt!5827 () Unit!414)

(assert (=> b!20122 (= lt!5827 lt!5843)))

(declare-fun lt!5834 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1155 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20122 (= lt!5834 (arrayScanForKey!0 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)) (_1!414 lt!5838) #b00000000000000000000000000000000))))

(assert (=> b!20122 false))

(declare-fun b!20123 () Bool)

(assert (=> b!20123 (= e!13125 (= (map!383 lt!5842) (ListLongMap!536 Nil!546)))))

(declare-fun b!20124 () Bool)

(assert (=> b!20124 (= e!13124 (ite (= (_1!414 lt!5838) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!5826 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!5826 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!3667 () Bool)

(assert (=> d!3667 e!13125))

(declare-fun res!13391 () Bool)

(assert (=> d!3667 (=> (not res!13391) (not e!13125))))

(assert (=> d!3667 (= res!13391 (valid!79 lt!5842))))

(assert (=> d!3667 (= lt!5842 lt!5836)))

(declare-fun lt!5839 () Unit!414)

(assert (=> d!3667 (= lt!5839 e!13123)))

(declare-fun c!2163 () Bool)

(assert (=> d!3667 (= c!2163 (not (= (map!383 lt!5836) (ListLongMap!536 Nil!546))))))

(declare-fun lt!5837 () Unit!414)

(declare-fun lt!5828 () Unit!414)

(assert (=> d!3667 (= lt!5837 lt!5828)))

(declare-fun lt!5835 () array!1155)

(declare-fun lt!5840 () (_ BitVec 32))

(declare-datatypes ((List!550 0))(
  ( (Nil!547) (Cons!546 (h!1112 (_ BitVec 64)) (t!3203 List!550)) )
))
(declare-fun lt!5833 () List!550)

(declare-fun arrayNoDuplicates!0 (array!1155 (_ BitVec 32) List!550) Bool)

(assert (=> d!3667 (arrayNoDuplicates!0 lt!5835 lt!5840 lt!5833)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1155 (_ BitVec 32) (_ BitVec 32) List!550) Unit!414)

(assert (=> d!3667 (= lt!5828 (lemmaArrayNoDuplicatesInAll0Array!0 lt!5835 lt!5840 (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001) lt!5833))))

(assert (=> d!3667 (= lt!5833 Nil!547)))

(assert (=> d!3667 (= lt!5840 #b00000000000000000000000000000000)))

(assert (=> d!3667 (= lt!5835 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5821 () Unit!414)

(declare-fun lt!5831 () Unit!414)

(assert (=> d!3667 (= lt!5821 lt!5831)))

(declare-fun lt!5841 () (_ BitVec 32))

(declare-fun lt!5832 () array!1155)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1155 (_ BitVec 32)) Bool)

(assert (=> d!3667 (arrayForallSeekEntryOrOpenFound!0 lt!5841 lt!5832 (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1155 (_ BitVec 32) (_ BitVec 32)) Unit!414)

(assert (=> d!3667 (= lt!5831 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!5832 (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) lt!5841))))

(assert (=> d!3667 (= lt!5841 #b00000000000000000000000000000000)))

(assert (=> d!3667 (= lt!5832 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5829 () Unit!414)

(declare-fun lt!5822 () Unit!414)

(assert (=> d!3667 (= lt!5829 lt!5822)))

(declare-fun lt!5823 () array!1155)

(declare-fun lt!5824 () (_ BitVec 32))

(declare-fun lt!5825 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1155 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3667 (= (arrayCountValidKeys!0 lt!5823 lt!5824 lt!5825) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1155 (_ BitVec 32) (_ BitVec 32)) Unit!414)

(assert (=> d!3667 (= lt!5822 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!5823 lt!5824 lt!5825))))

(assert (=> d!3667 (= lt!5825 (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3667 (= lt!5824 #b00000000000000000000000000000000)))

(assert (=> d!3667 (= lt!5823 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3667 (= lt!5836 (LongMapFixedSize!157 (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!137 (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!137 (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1156 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)) (array!1154 ((as const (Array (_ BitVec 32) ValueCell!285)) EmptyCell!285) (bvadd (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3667 (validMask!0 (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))))))

(assert (=> d!3667 (= (getNewLongMapFixedSize!15 (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) (defaultEntry!1700 (v!1540 (underlying!89 thiss!938)))) lt!5842)))

(declare-fun b!20125 () Bool)

(declare-fun arrayContainsKey!0 (array!1155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!20125 (= e!13124 (arrayContainsKey!0 lt!5830 (_1!414 lt!5838) #b00000000000000000000000000000000))))

(assert (= (and d!3667 c!2163) b!20122))

(assert (= (and d!3667 (not c!2163)) b!20120))

(assert (= (and b!20122 c!2162) b!20125))

(assert (= (and b!20122 (not c!2162)) b!20124))

(assert (= (and d!3667 res!13391) b!20121))

(assert (= (and b!20121 res!13392) b!20123))

(declare-fun b_lambda!1493 () Bool)

(assert (=> (not b_lambda!1493) (not b!20122)))

(declare-fun t!3201 () Bool)

(declare-fun tb!639 () Bool)

(assert (=> (and b!20082 (= (defaultEntry!1700 (v!1540 (underlying!89 thiss!938))) (defaultEntry!1700 (v!1540 (underlying!89 thiss!938)))) t!3201) tb!639))

(declare-fun result!1047 () Bool)

(assert (=> tb!639 (= result!1047 tp_is_empty!969)))

(assert (=> b!20122 t!3201))

(declare-fun b_and!1383 () Bool)

(assert (= b_and!1379 (and (=> t!3201 result!1047) b_and!1383)))

(declare-fun b_lambda!1495 () Bool)

(assert (=> (not b_lambda!1495) (not d!3667)))

(assert (=> d!3667 t!3201))

(declare-fun b_and!1385 () Bool)

(assert (= b_and!1383 (and (=> t!3201 result!1047) b_and!1385)))

(declare-fun m!14137 () Bool)

(assert (=> b!20122 m!14137))

(assert (=> b!20122 m!14115))

(assert (=> b!20122 m!14137))

(assert (=> b!20122 m!14137))

(declare-fun m!14139 () Bool)

(assert (=> b!20122 m!14139))

(declare-fun m!14141 () Bool)

(assert (=> b!20122 m!14141))

(declare-fun m!14143 () Bool)

(assert (=> b!20122 m!14143))

(declare-fun m!14145 () Bool)

(assert (=> b!20122 m!14145))

(declare-fun m!14147 () Bool)

(assert (=> b!20123 m!14147))

(assert (=> d!3667 m!14137))

(assert (=> d!3667 m!14115))

(declare-fun m!14149 () Bool)

(assert (=> d!3667 m!14149))

(declare-fun m!14151 () Bool)

(assert (=> d!3667 m!14151))

(assert (=> d!3667 m!14145))

(assert (=> d!3667 m!14115))

(declare-fun m!14153 () Bool)

(assert (=> d!3667 m!14153))

(assert (=> d!3667 m!14115))

(declare-fun m!14155 () Bool)

(assert (=> d!3667 m!14155))

(declare-fun m!14157 () Bool)

(assert (=> d!3667 m!14157))

(declare-fun m!14159 () Bool)

(assert (=> d!3667 m!14159))

(declare-fun m!14161 () Bool)

(assert (=> d!3667 m!14161))

(declare-fun m!14163 () Bool)

(assert (=> d!3667 m!14163))

(declare-fun m!14165 () Bool)

(assert (=> b!20125 m!14165))

(assert (=> b!20077 d!3667))

(declare-fun d!3669 () Bool)

(declare-fun e!13131 () Bool)

(assert (=> d!3669 e!13131))

(declare-fun res!13395 () Bool)

(assert (=> d!3669 (=> (not res!13395) (not e!13131))))

(declare-fun lt!5849 () (_ BitVec 32))

(assert (=> d!3669 (= res!13395 (validMask!0 lt!5849))))

(declare-datatypes ((tuple2!824 0))(
  ( (tuple2!825 (_1!415 Unit!414) (_2!415 (_ BitVec 32))) )
))
(declare-fun e!13130 () tuple2!824)

(assert (=> d!3669 (= lt!5849 (_2!415 e!13130))))

(declare-fun c!2166 () Bool)

(declare-fun lt!5848 () tuple2!824)

(assert (=> d!3669 (= c!2166 (and (bvsgt (_2!415 lt!5848) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!115 (v!1540 (underlying!89 thiss!938)))) (_2!415 lt!5848)) (bvsge (bvadd (bvand (bvashr (_2!415 lt!5848) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!115 (v!1540 (underlying!89 thiss!938))))))))

(declare-fun Unit!418 () Unit!414)

(declare-fun Unit!419 () Unit!414)

(assert (=> d!3669 (= lt!5848 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!115 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))))) (mask!4660 (v!1540 (underlying!89 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!115 (v!1540 (underlying!89 thiss!938)))) (mask!4660 (v!1540 (underlying!89 thiss!938))))) (tuple2!825 Unit!418 (bvand (bvadd (bvshl (mask!4660 (v!1540 (underlying!89 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!825 Unit!419 (mask!4660 (v!1540 (underlying!89 thiss!938))))))))

(assert (=> d!3669 (validMask!0 (mask!4660 (v!1540 (underlying!89 thiss!938))))))

(assert (=> d!3669 (= (computeNewMask!12 thiss!938 (mask!4660 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (_size!115 (v!1540 (underlying!89 thiss!938)))) lt!5849)))

(declare-fun b!20134 () Bool)

(declare-fun computeNewMaskWhile!7 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!824)

(assert (=> b!20134 (= e!13130 (computeNewMaskWhile!7 (_size!115 (v!1540 (underlying!89 thiss!938))) (_vacant!115 (v!1540 (underlying!89 thiss!938))) (mask!4660 (v!1540 (underlying!89 thiss!938))) (_2!415 lt!5848)))))

(declare-fun b!20135 () Bool)

(declare-fun Unit!420 () Unit!414)

(assert (=> b!20135 (= e!13130 (tuple2!825 Unit!420 (_2!415 lt!5848)))))

(declare-fun b!20136 () Bool)

(assert (=> b!20136 (= e!13131 (bvsle (_size!115 (v!1540 (underlying!89 thiss!938))) (bvadd lt!5849 #b00000000000000000000000000000001)))))

(assert (= (and d!3669 c!2166) b!20134))

(assert (= (and d!3669 (not c!2166)) b!20135))

(assert (= (and d!3669 res!13395) b!20136))

(declare-fun m!14167 () Bool)

(assert (=> d!3669 m!14167))

(declare-fun m!14169 () Bool)

(assert (=> d!3669 m!14169))

(declare-fun m!14171 () Bool)

(assert (=> b!20134 m!14171))

(assert (=> b!20077 d!3669))

(declare-fun d!3671 () Bool)

(declare-fun res!13402 () Bool)

(declare-fun e!13134 () Bool)

(assert (=> d!3671 (=> (not res!13402) (not e!13134))))

(declare-fun simpleValid!15 (LongMapFixedSize!156) Bool)

(assert (=> d!3671 (= res!13402 (simpleValid!15 lt!5771))))

(assert (=> d!3671 (= (valid!79 lt!5771) e!13134)))

(declare-fun b!20143 () Bool)

(declare-fun res!13403 () Bool)

(assert (=> b!20143 (=> (not res!13403) (not e!13134))))

(assert (=> b!20143 (= res!13403 (= (arrayCountValidKeys!0 (_keys!3125 lt!5771) #b00000000000000000000000000000000 (size!643 (_keys!3125 lt!5771))) (_size!115 lt!5771)))))

(declare-fun b!20144 () Bool)

(declare-fun res!13404 () Bool)

(assert (=> b!20144 (=> (not res!13404) (not e!13134))))

(assert (=> b!20144 (= res!13404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3125 lt!5771) (mask!4660 lt!5771)))))

(declare-fun b!20145 () Bool)

(assert (=> b!20145 (= e!13134 (arrayNoDuplicates!0 (_keys!3125 lt!5771) #b00000000000000000000000000000000 Nil!547))))

(assert (= (and d!3671 res!13402) b!20143))

(assert (= (and b!20143 res!13403) b!20144))

(assert (= (and b!20144 res!13404) b!20145))

(declare-fun m!14173 () Bool)

(assert (=> d!3671 m!14173))

(declare-fun m!14175 () Bool)

(assert (=> b!20143 m!14175))

(declare-fun m!14177 () Bool)

(assert (=> b!20144 m!14177))

(declare-fun m!14179 () Bool)

(assert (=> b!20145 m!14179))

(assert (=> b!20078 d!3671))

(declare-fun d!3673 () Bool)

(assert (=> d!3673 (= (array_inv!387 (_keys!3125 (v!1540 (underlying!89 thiss!938)))) (bvsge (size!643 (_keys!3125 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20082 d!3673))

(declare-fun d!3675 () Bool)

(assert (=> d!3675 (= (array_inv!388 (_values!1693 (v!1540 (underlying!89 thiss!938)))) (bvsge (size!642 (_values!1693 (v!1540 (underlying!89 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20082 d!3675))

(declare-fun condMapEmpty!928 () Bool)

(declare-fun mapDefault!928 () ValueCell!285)

(assert (=> mapNonEmpty!922 (= condMapEmpty!928 (= mapRest!922 ((as const (Array (_ BitVec 32) ValueCell!285)) mapDefault!928)))))

(declare-fun e!13140 () Bool)

(declare-fun mapRes!928 () Bool)

(assert (=> mapNonEmpty!922 (= tp!3339 (and e!13140 mapRes!928))))

(declare-fun b!20153 () Bool)

(assert (=> b!20153 (= e!13140 tp_is_empty!969)))

(declare-fun b!20152 () Bool)

(declare-fun e!13139 () Bool)

(assert (=> b!20152 (= e!13139 tp_is_empty!969)))

(declare-fun mapNonEmpty!928 () Bool)

(declare-fun tp!3349 () Bool)

(assert (=> mapNonEmpty!928 (= mapRes!928 (and tp!3349 e!13139))))

(declare-fun mapKey!928 () (_ BitVec 32))

(declare-fun mapValue!928 () ValueCell!285)

(declare-fun mapRest!928 () (Array (_ BitVec 32) ValueCell!285))

(assert (=> mapNonEmpty!928 (= mapRest!922 (store mapRest!928 mapKey!928 mapValue!928))))

(declare-fun mapIsEmpty!928 () Bool)

(assert (=> mapIsEmpty!928 mapRes!928))

(assert (= (and mapNonEmpty!922 condMapEmpty!928) mapIsEmpty!928))

(assert (= (and mapNonEmpty!922 (not condMapEmpty!928)) mapNonEmpty!928))

(assert (= (and mapNonEmpty!928 ((_ is ValueCellFull!285) mapValue!928)) b!20152))

(assert (= (and mapNonEmpty!922 ((_ is ValueCellFull!285) mapDefault!928)) b!20153))

(declare-fun m!14181 () Bool)

(assert (=> mapNonEmpty!928 m!14181))

(declare-fun b_lambda!1497 () Bool)

(assert (= b_lambda!1495 (or (and b!20082 b_free!705) b_lambda!1497)))

(declare-fun b_lambda!1499 () Bool)

(assert (= b_lambda!1493 (or (and b!20082 b_free!705) b_lambda!1499)))

(check-sat (not b!20125) (not b_lambda!1499) (not d!3671) (not b!20134) (not d!3669) b_and!1385 (not b_lambda!1497) (not d!3665) (not b!20144) (not b!20122) (not d!3667) (not b!20143) tp_is_empty!969 (not b!20123) (not b_next!705) (not b!20145) (not mapNonEmpty!928))
(check-sat b_and!1385 (not b_next!705))
