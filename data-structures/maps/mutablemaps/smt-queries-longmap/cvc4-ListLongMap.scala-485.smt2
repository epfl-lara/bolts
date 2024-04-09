; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10524 () Bool)

(assert start!10524)

(declare-fun b!82706 () Bool)

(declare-fun b_free!2217 () Bool)

(declare-fun b_next!2217 () Bool)

(assert (=> b!82706 (= b_free!2217 (not b_next!2217))))

(declare-fun tp!8868 () Bool)

(declare-fun b_and!5021 () Bool)

(assert (=> b!82706 (= tp!8868 b_and!5021)))

(declare-fun b!82713 () Bool)

(declare-fun b_free!2219 () Bool)

(declare-fun b_next!2219 () Bool)

(assert (=> b!82713 (= b_free!2219 (not b_next!2219))))

(declare-fun tp!8870 () Bool)

(declare-fun b_and!5023 () Bool)

(assert (=> b!82713 (= tp!8870 b_and!5023)))

(declare-fun b!82705 () Bool)

(declare-fun e!54001 () Bool)

(declare-fun e!54000 () Bool)

(assert (=> b!82705 (= e!54001 e!54000)))

(declare-fun res!42861 () Bool)

(assert (=> b!82705 (=> (not res!42861) (not e!54000))))

(declare-datatypes ((V!3013 0))(
  ( (V!3014 (val!1307 Int)) )
))
(declare-datatypes ((array!4006 0))(
  ( (array!4007 (arr!1908 (Array (_ BitVec 32) (_ BitVec 64))) (size!2151 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!919 0))(
  ( (ValueCellFull!919 (v!2627 V!3013)) (EmptyCell!919) )
))
(declare-datatypes ((array!4008 0))(
  ( (array!4009 (arr!1909 (Array (_ BitVec 32) ValueCell!919)) (size!2152 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!746 0))(
  ( (LongMapFixedSize!747 (defaultEntry!2315 Int) (mask!6331 (_ BitVec 32)) (extraKeys!2158 (_ BitVec 32)) (zeroValue!2209 V!3013) (minValue!2209 V!3013) (_size!422 (_ BitVec 32)) (_keys!3983 array!4006) (_values!2298 array!4008) (_vacant!422 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!554 0))(
  ( (Cell!555 (v!2628 LongMapFixedSize!746)) )
))
(declare-datatypes ((LongMap!554 0))(
  ( (LongMap!555 (underlying!288 Cell!554)) )
))
(declare-fun thiss!992 () LongMap!554)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!82705 (= res!42861 (and (not (= (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!38643 () V!3013)

(declare-fun get!1203 (ValueCell!919 V!3013) V!3013)

(declare-fun dynLambda!350 (Int (_ BitVec 64)) V!3013)

(assert (=> b!82705 (= lt!38643 (get!1203 (select (arr!1909 (_values!2298 (v!2628 (underlying!288 thiss!992)))) from!355) (dynLambda!350 (defaultEntry!2315 (v!2628 (underlying!288 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun tp_is_empty!2525 () Bool)

(declare-fun e!53996 () Bool)

(declare-fun e!53993 () Bool)

(declare-fun array_inv!1139 (array!4006) Bool)

(declare-fun array_inv!1140 (array!4008) Bool)

(assert (=> b!82706 (= e!53996 (and tp!8868 tp_is_empty!2525 (array_inv!1139 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) (array_inv!1140 (_values!2298 (v!2628 (underlying!288 thiss!992)))) e!53993))))

(declare-fun b!82707 () Bool)

(declare-fun res!42858 () Bool)

(declare-fun e!53997 () Bool)

(assert (=> b!82707 (=> (not res!42858) (not e!53997))))

(declare-fun newMap!16 () LongMapFixedSize!746)

(declare-fun valid!322 (LongMapFixedSize!746) Bool)

(assert (=> b!82707 (= res!42858 (valid!322 newMap!16))))

(declare-fun b!82708 () Bool)

(declare-datatypes ((Unit!2441 0))(
  ( (Unit!2442) )
))
(declare-fun e!53998 () Unit!2441)

(declare-fun Unit!2443 () Unit!2441)

(assert (=> b!82708 (= e!53998 Unit!2443)))

(declare-fun lt!38648 () Unit!2441)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!69 (array!4006 array!4008 (_ BitVec 32) (_ BitVec 32) V!3013 V!3013 (_ BitVec 64) (_ BitVec 32) Int) Unit!2441)

(assert (=> b!82708 (= lt!38648 (lemmaListMapContainsThenArrayContainsFrom!69 (_keys!3983 (v!2628 (underlying!288 thiss!992))) (_values!2298 (v!2628 (underlying!288 thiss!992))) (mask!6331 (v!2628 (underlying!288 thiss!992))) (extraKeys!2158 (v!2628 (underlying!288 thiss!992))) (zeroValue!2209 (v!2628 (underlying!288 thiss!992))) (minValue!2209 (v!2628 (underlying!288 thiss!992))) (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2315 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!82708 (arrayContainsKey!0 (_keys!3983 (v!2628 (underlying!288 thiss!992))) (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!38640 () Unit!2441)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4006 (_ BitVec 32) (_ BitVec 32)) Unit!2441)

(assert (=> b!82708 (= lt!38640 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3983 (v!2628 (underlying!288 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1545 0))(
  ( (Nil!1542) (Cons!1541 (h!2131 (_ BitVec 64)) (t!5241 List!1545)) )
))
(declare-fun arrayNoDuplicates!0 (array!4006 (_ BitVec 32) List!1545) Bool)

(assert (=> b!82708 (arrayNoDuplicates!0 (_keys!3983 (v!2628 (underlying!288 thiss!992))) from!355 Nil!1542)))

(declare-fun lt!38644 () Unit!2441)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4006 (_ BitVec 32) (_ BitVec 64) List!1545) Unit!2441)

(assert (=> b!82708 (= lt!38644 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3983 (v!2628 (underlying!288 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) (Cons!1541 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) Nil!1542)))))

(assert (=> b!82708 false))

(declare-fun mapIsEmpty!3361 () Bool)

(declare-fun mapRes!3362 () Bool)

(assert (=> mapIsEmpty!3361 mapRes!3362))

(declare-fun b!82710 () Bool)

(declare-fun e!53984 () Bool)

(declare-fun e!53994 () Bool)

(assert (=> b!82710 (= e!53984 e!53994)))

(declare-fun b!82711 () Bool)

(declare-fun Unit!2444 () Unit!2441)

(assert (=> b!82711 (= e!53998 Unit!2444)))

(declare-fun b!82712 () Bool)

(declare-fun e!53995 () Bool)

(assert (=> b!82712 (= e!53995 tp_is_empty!2525)))

(declare-fun e!53990 () Bool)

(declare-fun e!53986 () Bool)

(assert (=> b!82713 (= e!53986 (and tp!8870 tp_is_empty!2525 (array_inv!1139 (_keys!3983 newMap!16)) (array_inv!1140 (_values!2298 newMap!16)) e!53990))))

(declare-fun b!82714 () Bool)

(declare-fun e!53991 () Bool)

(assert (=> b!82714 (= e!53991 tp_is_empty!2525)))

(declare-fun b!82715 () Bool)

(declare-fun res!42860 () Bool)

(assert (=> b!82715 (=> (not res!42860) (not e!53997))))

(assert (=> b!82715 (= res!42860 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6331 newMap!16)) (_size!422 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun b!82716 () Bool)

(declare-fun e!53988 () Bool)

(declare-fun e!53992 () Bool)

(assert (=> b!82716 (= e!53988 (not e!53992))))

(declare-fun res!42854 () Bool)

(assert (=> b!82716 (=> res!42854 e!53992)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!82716 (= res!42854 (not (validMask!0 (mask!6331 (v!2628 (underlying!288 thiss!992))))))))

(declare-datatypes ((tuple2!2216 0))(
  ( (tuple2!2217 (_1!1118 (_ BitVec 64)) (_2!1118 V!3013)) )
))
(declare-fun lt!38654 () tuple2!2216)

(declare-fun lt!38638 () tuple2!2216)

(declare-datatypes ((List!1546 0))(
  ( (Nil!1543) (Cons!1542 (h!2132 tuple2!2216) (t!5242 List!1546)) )
))
(declare-datatypes ((ListLongMap!1479 0))(
  ( (ListLongMap!1480 (toList!755 List!1546)) )
))
(declare-fun lt!38642 () ListLongMap!1479)

(declare-fun lt!38646 () ListLongMap!1479)

(declare-fun +!113 (ListLongMap!1479 tuple2!2216) ListLongMap!1479)

(assert (=> b!82716 (= (+!113 lt!38646 lt!38638) (+!113 (+!113 lt!38642 lt!38638) lt!38654))))

(assert (=> b!82716 (= lt!38638 (tuple2!2217 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2209 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun lt!38637 () Unit!2441)

(declare-fun addCommutativeForDiffKeys!32 (ListLongMap!1479 (_ BitVec 64) V!3013 (_ BitVec 64) V!3013) Unit!2441)

(assert (=> b!82716 (= lt!38637 (addCommutativeForDiffKeys!32 lt!38642 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) lt!38643 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2209 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun lt!38651 () ListLongMap!1479)

(assert (=> b!82716 (= lt!38651 lt!38646)))

(assert (=> b!82716 (= lt!38646 (+!113 lt!38642 lt!38654))))

(declare-fun lt!38650 () ListLongMap!1479)

(declare-fun lt!38652 () tuple2!2216)

(assert (=> b!82716 (= lt!38651 (+!113 lt!38650 lt!38652))))

(declare-fun lt!38647 () ListLongMap!1479)

(assert (=> b!82716 (= lt!38642 (+!113 lt!38647 lt!38652))))

(assert (=> b!82716 (= lt!38652 (tuple2!2217 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2209 (v!2628 (underlying!288 thiss!992)))))))

(assert (=> b!82716 (= lt!38650 (+!113 lt!38647 lt!38654))))

(assert (=> b!82716 (= lt!38654 (tuple2!2217 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) lt!38643))))

(declare-fun lt!38639 () Unit!2441)

(assert (=> b!82716 (= lt!38639 (addCommutativeForDiffKeys!32 lt!38647 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) lt!38643 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2209 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!77 (array!4006 array!4008 (_ BitVec 32) (_ BitVec 32) V!3013 V!3013 (_ BitVec 32) Int) ListLongMap!1479)

(assert (=> b!82716 (= lt!38647 (getCurrentListMapNoExtraKeys!77 (_keys!3983 (v!2628 (underlying!288 thiss!992))) (_values!2298 (v!2628 (underlying!288 thiss!992))) (mask!6331 (v!2628 (underlying!288 thiss!992))) (extraKeys!2158 (v!2628 (underlying!288 thiss!992))) (zeroValue!2209 (v!2628 (underlying!288 thiss!992))) (minValue!2209 (v!2628 (underlying!288 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2315 (v!2628 (underlying!288 thiss!992)))))))

(declare-fun b!82717 () Bool)

(declare-fun res!42856 () Bool)

(assert (=> b!82717 (=> (not res!42856) (not e!53997))))

(assert (=> b!82717 (= res!42856 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2151 (_keys!3983 (v!2628 (underlying!288 thiss!992)))))))))

(declare-fun mapNonEmpty!3361 () Bool)

(declare-fun mapRes!3361 () Bool)

(declare-fun tp!8867 () Bool)

(assert (=> mapNonEmpty!3361 (= mapRes!3361 (and tp!8867 e!53995))))

(declare-fun mapValue!3361 () ValueCell!919)

(declare-fun mapRest!3362 () (Array (_ BitVec 32) ValueCell!919))

(declare-fun mapKey!3362 () (_ BitVec 32))

(assert (=> mapNonEmpty!3361 (= (arr!1909 (_values!2298 newMap!16)) (store mapRest!3362 mapKey!3362 mapValue!3361))))

(declare-fun b!82718 () Bool)

(assert (=> b!82718 (= e!54000 e!53988)))

(declare-fun res!42859 () Bool)

(assert (=> b!82718 (=> (not res!42859) (not e!53988))))

(declare-datatypes ((tuple2!2218 0))(
  ( (tuple2!2219 (_1!1119 Bool) (_2!1119 LongMapFixedSize!746)) )
))
(declare-fun lt!38653 () tuple2!2218)

(assert (=> b!82718 (= res!42859 (and (_1!1119 lt!38653) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!38649 () Unit!2441)

(assert (=> b!82718 (= lt!38649 e!53998)))

(declare-fun lt!38641 () ListLongMap!1479)

(declare-fun c!13171 () Bool)

(declare-fun contains!756 (ListLongMap!1479 (_ BitVec 64)) Bool)

(assert (=> b!82718 (= c!13171 (contains!756 lt!38641 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355)))))

(declare-fun update!118 (LongMapFixedSize!746 (_ BitVec 64) V!3013) tuple2!2218)

(assert (=> b!82718 (= lt!38653 (update!118 newMap!16 (select (arr!1908 (_keys!3983 (v!2628 (underlying!288 thiss!992)))) from!355) lt!38643))))

(declare-fun b!82719 () Bool)

(declare-fun e!53985 () Bool)

(assert (=> b!82719 (= e!53990 (and e!53985 mapRes!3361))))

(declare-fun condMapEmpty!3362 () Bool)

(declare-fun mapDefault!3361 () ValueCell!919)

