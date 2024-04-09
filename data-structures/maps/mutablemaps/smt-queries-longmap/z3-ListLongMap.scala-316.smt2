; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5508 () Bool)

(assert start!5508)

(declare-fun b_free!1359 () Bool)

(declare-fun b_next!1359 () Bool)

(assert (=> start!5508 (= b_free!1359 (not b_next!1359))))

(declare-fun tp!5726 () Bool)

(declare-fun b_and!2341 () Bool)

(assert (=> start!5508 (= tp!5726 b_and!2341)))

(declare-fun res!23563 () Bool)

(declare-fun e!24894 () Bool)

(assert (=> start!5508 (=> (not res!23563) (not e!24894))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5508 (= res!23563 (validMask!0 mask!853))))

(assert (=> start!5508 e!24894))

(assert (=> start!5508 true))

(assert (=> start!5508 tp!5726))

(declare-fun b!39202 () Bool)

(declare-fun e!24893 () Bool)

(assert (=> b!39202 (= e!24894 (not e!24893))))

(declare-fun res!23562 () Bool)

(assert (=> b!39202 (=> res!23562 e!24893)))

(declare-datatypes ((array!2579 0))(
  ( (array!2580 (arr!1233 (Array (_ BitVec 32) (_ BitVec 64))) (size!1355 (_ BitVec 32))) )
))
(declare-datatypes ((V!2091 0))(
  ( (V!2092 (val!913 Int)) )
))
(declare-datatypes ((ValueCell!627 0))(
  ( (ValueCellFull!627 (v!1984 V!2091)) (EmptyCell!627) )
))
(declare-datatypes ((array!2581 0))(
  ( (array!2582 (arr!1234 (Array (_ BitVec 32) ValueCell!627)) (size!1356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!234 0))(
  ( (LongMapFixedSize!235 (defaultEntry!1795 Int) (mask!5142 (_ BitVec 32)) (extraKeys!1686 (_ BitVec 32)) (zeroValue!1713 V!2091) (minValue!1713 V!2091) (_size!166 (_ BitVec 32)) (_keys!3266 array!2579) (_values!1778 array!2581) (_vacant!166 (_ BitVec 32))) )
))
(declare-fun lt!14721 () LongMapFixedSize!234)

(declare-datatypes ((tuple2!1484 0))(
  ( (tuple2!1485 (_1!752 (_ BitVec 64)) (_2!752 V!2091)) )
))
(declare-datatypes ((List!1064 0))(
  ( (Nil!1061) (Cons!1060 (h!1631 tuple2!1484) (t!3915 List!1064)) )
))
(declare-datatypes ((ListLongMap!1065 0))(
  ( (ListLongMap!1066 (toList!548 List!1064)) )
))
(declare-fun map!688 (LongMapFixedSize!234) ListLongMap!1065)

(assert (=> b!39202 (= res!23562 (= (map!688 lt!14721) (ListLongMap!1066 Nil!1061)))))

(declare-fun lt!14723 () array!2579)

(declare-datatypes ((List!1065 0))(
  ( (Nil!1062) (Cons!1061 (h!1632 (_ BitVec 64)) (t!3916 List!1065)) )
))
(declare-fun arrayNoDuplicates!0 (array!2579 (_ BitVec 32) List!1065) Bool)

(assert (=> b!39202 (arrayNoDuplicates!0 lt!14723 #b00000000000000000000000000000000 Nil!1062)))

(declare-datatypes ((Unit!962 0))(
  ( (Unit!963) )
))
(declare-fun lt!14722 () Unit!962)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2579 (_ BitVec 32) (_ BitVec 32) List!1065) Unit!962)

(assert (=> b!39202 (= lt!14722 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2579 (_ BitVec 32)) Bool)

(assert (=> b!39202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14723 mask!853)))

(declare-fun lt!14725 () Unit!962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2579 (_ BitVec 32) (_ BitVec 32)) Unit!962)

(assert (=> b!39202 (= lt!14725 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14723 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2579 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39202 (= (arrayCountValidKeys!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14720 () Unit!962)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2579 (_ BitVec 32) (_ BitVec 32)) Unit!962)

(assert (=> b!39202 (= lt!14720 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!14724 () V!2091)

(assert (=> b!39202 (= lt!14721 (LongMapFixedSize!235 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14724 lt!14724 #b00000000000000000000000000000000 lt!14723 (array!2582 ((as const (Array (_ BitVec 32) ValueCell!627)) EmptyCell!627) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!39202 (= lt!14723 (array!2580 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!188 (Int (_ BitVec 64)) V!2091)

(assert (=> b!39202 (= lt!14724 (dynLambda!188 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39203 () Bool)

(declare-fun valid!120 (LongMapFixedSize!234) Bool)

(assert (=> b!39203 (= e!24893 (valid!120 lt!14721))))

(assert (= (and start!5508 res!23563) b!39202))

(assert (= (and b!39202 (not res!23562)) b!39203))

(declare-fun b_lambda!2043 () Bool)

(assert (=> (not b_lambda!2043) (not b!39202)))

(declare-fun t!3914 () Bool)

(declare-fun tb!837 () Bool)

(assert (=> (and start!5508 (= defaultEntry!470 defaultEntry!470) t!3914) tb!837))

(declare-fun result!1429 () Bool)

(declare-fun tp_is_empty!1749 () Bool)

(assert (=> tb!837 (= result!1429 tp_is_empty!1749)))

(assert (=> b!39202 t!3914))

(declare-fun b_and!2343 () Bool)

(assert (= b_and!2341 (and (=> t!3914 result!1429) b_and!2343)))

(declare-fun m!31921 () Bool)

(assert (=> start!5508 m!31921))

(declare-fun m!31923 () Bool)

(assert (=> b!39202 m!31923))

(declare-fun m!31925 () Bool)

(assert (=> b!39202 m!31925))

(declare-fun m!31927 () Bool)

(assert (=> b!39202 m!31927))

(declare-fun m!31929 () Bool)

(assert (=> b!39202 m!31929))

(declare-fun m!31931 () Bool)

(assert (=> b!39202 m!31931))

(declare-fun m!31933 () Bool)

(assert (=> b!39202 m!31933))

(declare-fun m!31935 () Bool)

(assert (=> b!39202 m!31935))

(declare-fun m!31937 () Bool)

(assert (=> b!39202 m!31937))

(declare-fun m!31939 () Bool)

(assert (=> b!39203 m!31939))

(check-sat (not b!39203) (not b_next!1359) (not start!5508) (not b_lambda!2043) (not b!39202) tp_is_empty!1749 b_and!2343)
(check-sat b_and!2343 (not b_next!1359))
(get-model)

(declare-fun b_lambda!2049 () Bool)

(assert (= b_lambda!2043 (or (and start!5508 b_free!1359) b_lambda!2049)))

(check-sat (not b!39203) (not b_next!1359) (not start!5508) (not b!39202) (not b_lambda!2049) tp_is_empty!1749 b_and!2343)
(check-sat b_and!2343 (not b_next!1359))
(get-model)

(declare-fun d!6553 () Bool)

(assert (=> d!6553 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5508 d!6553))

(declare-fun d!6559 () Bool)

(assert (=> d!6559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14723 mask!853)))

(declare-fun lt!14746 () Unit!962)

(declare-fun choose!34 (array!2579 (_ BitVec 32) (_ BitVec 32)) Unit!962)

(assert (=> d!6559 (= lt!14746 (choose!34 lt!14723 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6559 (validMask!0 mask!853)))

(assert (=> d!6559 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14723 mask!853 #b00000000000000000000000000000000) lt!14746)))

(declare-fun bs!1628 () Bool)

(assert (= bs!1628 d!6559))

(assert (=> bs!1628 m!31933))

(declare-fun m!31963 () Bool)

(assert (=> bs!1628 m!31963))

(assert (=> bs!1628 m!31921))

(assert (=> b!39202 d!6559))

(declare-fun b!39236 () Bool)

(declare-fun e!24918 () Bool)

(declare-fun contains!504 (List!1065 (_ BitVec 64)) Bool)

(assert (=> b!39236 (= e!24918 (contains!504 Nil!1062 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun bm!2966 () Bool)

(declare-fun call!2969 () Bool)

(declare-fun c!4615 () Bool)

(assert (=> bm!2966 (= call!2969 (arrayNoDuplicates!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)))))

(declare-fun b!39237 () Bool)

(declare-fun e!24919 () Bool)

(declare-fun e!24921 () Bool)

(assert (=> b!39237 (= e!24919 e!24921)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!39237 (= c!4615 (validKeyInArray!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39238 () Bool)

(declare-fun e!24920 () Bool)

(assert (=> b!39238 (= e!24920 e!24919)))

(declare-fun res!23582 () Bool)

(assert (=> b!39238 (=> (not res!23582) (not e!24919))))

(assert (=> b!39238 (= res!23582 (not e!24918))))

(declare-fun res!23584 () Bool)

(assert (=> b!39238 (=> (not res!23584) (not e!24918))))

(assert (=> b!39238 (= res!23584 (validKeyInArray!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39239 () Bool)

(assert (=> b!39239 (= e!24921 call!2969)))

(declare-fun d!6563 () Bool)

(declare-fun res!23583 () Bool)

(assert (=> d!6563 (=> res!23583 e!24920)))

(assert (=> d!6563 (= res!23583 (bvsge #b00000000000000000000000000000000 (size!1355 lt!14723)))))

(assert (=> d!6563 (= (arrayNoDuplicates!0 lt!14723 #b00000000000000000000000000000000 Nil!1062) e!24920)))

(declare-fun b!39240 () Bool)

(assert (=> b!39240 (= e!24921 call!2969)))

(assert (= (and d!6563 (not res!23583)) b!39238))

(assert (= (and b!39238 res!23584) b!39236))

(assert (= (and b!39238 res!23582) b!39237))

(assert (= (and b!39237 c!4615) b!39239))

(assert (= (and b!39237 (not c!4615)) b!39240))

(assert (= (or b!39239 b!39240) bm!2966))

(declare-fun m!31981 () Bool)

(assert (=> b!39236 m!31981))

(assert (=> b!39236 m!31981))

(declare-fun m!31983 () Bool)

(assert (=> b!39236 m!31983))

(assert (=> bm!2966 m!31981))

(declare-fun m!31985 () Bool)

(assert (=> bm!2966 m!31985))

(assert (=> b!39237 m!31981))

(assert (=> b!39237 m!31981))

(declare-fun m!31987 () Bool)

(assert (=> b!39237 m!31987))

(assert (=> b!39238 m!31981))

(assert (=> b!39238 m!31981))

(assert (=> b!39238 m!31987))

(assert (=> b!39202 d!6563))

(declare-fun d!6571 () Bool)

(assert (=> d!6571 (arrayNoDuplicates!0 lt!14723 #b00000000000000000000000000000000 Nil!1062)))

(declare-fun lt!14764 () Unit!962)

(declare-fun choose!111 (array!2579 (_ BitVec 32) (_ BitVec 32) List!1065) Unit!962)

(assert (=> d!6571 (= lt!14764 (choose!111 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1062))))

(assert (=> d!6571 (= (size!1355 lt!14723) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6571 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1062) lt!14764)))

(declare-fun bs!1632 () Bool)

(assert (= bs!1632 d!6571))

(assert (=> bs!1632 m!31923))

(declare-fun m!31991 () Bool)

(assert (=> bs!1632 m!31991))

(assert (=> b!39202 d!6571))

(declare-fun d!6575 () Bool)

(assert (=> d!6575 (= (arrayCountValidKeys!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14769 () Unit!962)

(declare-fun choose!59 (array!2579 (_ BitVec 32) (_ BitVec 32)) Unit!962)

(assert (=> d!6575 (= lt!14769 (choose!59 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6575 (bvslt (size!1355 lt!14723) #b01111111111111111111111111111111)))

(assert (=> d!6575 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14769)))

(declare-fun bs!1633 () Bool)

(assert (= bs!1633 d!6575))

(assert (=> bs!1633 m!31925))

(declare-fun m!31993 () Bool)

(assert (=> bs!1633 m!31993))

(assert (=> b!39202 d!6575))

(declare-fun bm!2977 () Bool)

(declare-fun call!2980 () (_ BitVec 32))

(assert (=> bm!2977 (= call!2980 (arrayCountValidKeys!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!39283 () Bool)

(declare-fun e!24946 () (_ BitVec 32))

(assert (=> b!39283 (= e!24946 (bvadd #b00000000000000000000000000000001 call!2980))))

(declare-fun d!6577 () Bool)

(declare-fun lt!14776 () (_ BitVec 32))

(assert (=> d!6577 (and (bvsge lt!14776 #b00000000000000000000000000000000) (bvsle lt!14776 (bvsub (size!1355 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun e!24947 () (_ BitVec 32))

(assert (=> d!6577 (= lt!14776 e!24947)))

(declare-fun c!4634 () Bool)

(assert (=> d!6577 (= c!4634 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6577 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1355 lt!14723)))))

(assert (=> d!6577 (= (arrayCountValidKeys!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14776)))

(declare-fun b!39284 () Bool)

(assert (=> b!39284 (= e!24947 e!24946)))

(declare-fun c!4635 () Bool)

(assert (=> b!39284 (= c!4635 (validKeyInArray!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39285 () Bool)

(assert (=> b!39285 (= e!24946 call!2980)))

(declare-fun b!39286 () Bool)

(assert (=> b!39286 (= e!24947 #b00000000000000000000000000000000)))

(assert (= (and d!6577 c!4634) b!39286))

(assert (= (and d!6577 (not c!4634)) b!39284))

(assert (= (and b!39284 c!4635) b!39283))

(assert (= (and b!39284 (not c!4635)) b!39285))

(assert (= (or b!39283 b!39285) bm!2977))

(declare-fun m!32003 () Bool)

(assert (=> bm!2977 m!32003))

(assert (=> b!39284 m!31981))

(assert (=> b!39284 m!31981))

(assert (=> b!39284 m!31987))

(assert (=> b!39202 d!6577))

(declare-fun d!6583 () Bool)

(declare-fun getCurrentListMap!310 (array!2579 array!2581 (_ BitVec 32) (_ BitVec 32) V!2091 V!2091 (_ BitVec 32) Int) ListLongMap!1065)

(assert (=> d!6583 (= (map!688 lt!14721) (getCurrentListMap!310 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun bs!1636 () Bool)

(assert (= bs!1636 d!6583))

(declare-fun m!32013 () Bool)

(assert (=> bs!1636 m!32013))

(assert (=> b!39202 d!6583))

(declare-fun d!6591 () Bool)

(declare-fun res!23618 () Bool)

(declare-fun e!24978 () Bool)

(assert (=> d!6591 (=> res!23618 e!24978)))

(assert (=> d!6591 (= res!23618 (bvsge #b00000000000000000000000000000000 (size!1355 lt!14723)))))

(assert (=> d!6591 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14723 mask!853) e!24978)))

(declare-fun b!39329 () Bool)

(declare-fun e!24980 () Bool)

(declare-fun call!2989 () Bool)

(assert (=> b!39329 (= e!24980 call!2989)))

(declare-fun b!39330 () Bool)

(declare-fun e!24979 () Bool)

(assert (=> b!39330 (= e!24978 e!24979)))

(declare-fun c!4644 () Bool)

(assert (=> b!39330 (= c!4644 (validKeyInArray!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39331 () Bool)

(assert (=> b!39331 (= e!24979 call!2989)))

(declare-fun b!39332 () Bool)

(assert (=> b!39332 (= e!24979 e!24980)))

(declare-fun lt!14803 () (_ BitVec 64))

(assert (=> b!39332 (= lt!14803 (select (arr!1233 lt!14723) #b00000000000000000000000000000000))))

(declare-fun lt!14801 () Unit!962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2579 (_ BitVec 64) (_ BitVec 32)) Unit!962)

(assert (=> b!39332 (= lt!14801 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14723 lt!14803 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!39332 (arrayContainsKey!0 lt!14723 lt!14803 #b00000000000000000000000000000000)))

(declare-fun lt!14802 () Unit!962)

(assert (=> b!39332 (= lt!14802 lt!14801)))

(declare-fun res!23617 () Bool)

(declare-datatypes ((SeekEntryResult!181 0))(
  ( (MissingZero!181 (index!2846 (_ BitVec 32))) (Found!181 (index!2847 (_ BitVec 32))) (Intermediate!181 (undefined!993 Bool) (index!2848 (_ BitVec 32)) (x!7667 (_ BitVec 32))) (Undefined!181) (MissingVacant!181 (index!2849 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2579 (_ BitVec 32)) SeekEntryResult!181)

(assert (=> b!39332 (= res!23617 (= (seekEntryOrOpen!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853) (Found!181 #b00000000000000000000000000000000)))))

(assert (=> b!39332 (=> (not res!23617) (not e!24980))))

(declare-fun bm!2986 () Bool)

(assert (=> bm!2986 (= call!2989 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14723 mask!853))))

(assert (= (and d!6591 (not res!23618)) b!39330))

(assert (= (and b!39330 c!4644) b!39332))

(assert (= (and b!39330 (not c!4644)) b!39331))

(assert (= (and b!39332 res!23617) b!39329))

(assert (= (or b!39329 b!39331) bm!2986))

(assert (=> b!39330 m!31981))

(assert (=> b!39330 m!31981))

(assert (=> b!39330 m!31987))

(assert (=> b!39332 m!31981))

(declare-fun m!32023 () Bool)

(assert (=> b!39332 m!32023))

(declare-fun m!32025 () Bool)

(assert (=> b!39332 m!32025))

(assert (=> b!39332 m!31981))

(declare-fun m!32027 () Bool)

(assert (=> b!39332 m!32027))

(declare-fun m!32029 () Bool)

(assert (=> bm!2986 m!32029))

(assert (=> b!39202 d!6591))

(declare-fun d!6599 () Bool)

(declare-fun res!23630 () Bool)

(declare-fun e!24987 () Bool)

(assert (=> d!6599 (=> (not res!23630) (not e!24987))))

(declare-fun simpleValid!24 (LongMapFixedSize!234) Bool)

(assert (=> d!6599 (= res!23630 (simpleValid!24 lt!14721))))

(assert (=> d!6599 (= (valid!120 lt!14721) e!24987)))

(declare-fun b!39346 () Bool)

(declare-fun res!23631 () Bool)

(assert (=> b!39346 (=> (not res!23631) (not e!24987))))

(assert (=> b!39346 (= res!23631 (= (arrayCountValidKeys!0 (_keys!3266 lt!14721) #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))) (_size!166 lt!14721)))))

(declare-fun b!39347 () Bool)

(declare-fun res!23632 () Bool)

(assert (=> b!39347 (=> (not res!23632) (not e!24987))))

(assert (=> b!39347 (= res!23632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3266 lt!14721) (mask!5142 lt!14721)))))

(declare-fun b!39348 () Bool)

(assert (=> b!39348 (= e!24987 (arrayNoDuplicates!0 (_keys!3266 lt!14721) #b00000000000000000000000000000000 Nil!1062))))

(assert (= (and d!6599 res!23630) b!39346))

(assert (= (and b!39346 res!23631) b!39347))

(assert (= (and b!39347 res!23632) b!39348))

(declare-fun m!32047 () Bool)

(assert (=> d!6599 m!32047))

(declare-fun m!32049 () Bool)

(assert (=> b!39346 m!32049))

(declare-fun m!32051 () Bool)

(assert (=> b!39347 m!32051))

(declare-fun m!32053 () Bool)

(assert (=> b!39348 m!32053))

(assert (=> b!39203 d!6599))

(check-sat (not b!39238) (not d!6599) (not d!6583) (not b!39330) (not b!39348) (not b_lambda!2049) tp_is_empty!1749 b_and!2343 (not b!39347) (not b!39284) (not d!6575) (not b_next!1359) (not bm!2966) (not b!39346) (not bm!2986) (not b!39332) (not b!39237) (not b!39236) (not d!6559) (not bm!2977) (not d!6571))
(check-sat b_and!2343 (not b_next!1359))
(get-model)

(declare-fun b!39368 () Bool)

(declare-fun res!23652 () Bool)

(declare-fun e!24993 () Bool)

(assert (=> b!39368 (=> (not res!23652) (not e!24993))))

(declare-fun size!1371 (LongMapFixedSize!234) (_ BitVec 32))

(assert (=> b!39368 (= res!23652 (= (size!1371 lt!14721) (bvadd (_size!166 lt!14721) (bvsdiv (bvadd (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!6605 () Bool)

(declare-fun res!23653 () Bool)

(assert (=> d!6605 (=> (not res!23653) (not e!24993))))

(assert (=> d!6605 (= res!23653 (validMask!0 (mask!5142 lt!14721)))))

(assert (=> d!6605 (= (simpleValid!24 lt!14721) e!24993)))

(declare-fun b!39366 () Bool)

(declare-fun res!23650 () Bool)

(assert (=> b!39366 (=> (not res!23650) (not e!24993))))

(assert (=> b!39366 (= res!23650 (and (= (size!1356 (_values!1778 lt!14721)) (bvadd (mask!5142 lt!14721) #b00000000000000000000000000000001)) (= (size!1355 (_keys!3266 lt!14721)) (size!1356 (_values!1778 lt!14721))) (bvsge (_size!166 lt!14721) #b00000000000000000000000000000000) (bvsle (_size!166 lt!14721) (bvadd (mask!5142 lt!14721) #b00000000000000000000000000000001))))))

(declare-fun b!39369 () Bool)

(assert (=> b!39369 (= e!24993 (and (bvsge (extraKeys!1686 lt!14721) #b00000000000000000000000000000000) (bvsle (extraKeys!1686 lt!14721) #b00000000000000000000000000000011) (bvsge (_vacant!166 lt!14721) #b00000000000000000000000000000000)))))

(declare-fun b!39367 () Bool)

(declare-fun res!23651 () Bool)

(assert (=> b!39367 (=> (not res!23651) (not e!24993))))

(assert (=> b!39367 (= res!23651 (bvsge (size!1371 lt!14721) (_size!166 lt!14721)))))

(assert (= (and d!6605 res!23653) b!39366))

(assert (= (and b!39366 res!23650) b!39367))

(assert (= (and b!39367 res!23651) b!39368))

(assert (= (and b!39368 res!23652) b!39369))

(declare-fun m!32063 () Bool)

(assert (=> b!39368 m!32063))

(declare-fun m!32065 () Bool)

(assert (=> d!6605 m!32065))

(assert (=> b!39367 m!32063))

(assert (=> d!6599 d!6605))

(declare-fun d!6607 () Bool)

(assert (=> d!6607 (= (validKeyInArray!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)) (and (not (= (select (arr!1233 lt!14723) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1233 lt!14723) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39238 d!6607))

(assert (=> b!39237 d!6607))

(assert (=> d!6559 d!6591))

(declare-fun d!6609 () Bool)

(assert (=> d!6609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14723 mask!853)))

(assert (=> d!6609 true))

(declare-fun _$30!42 () Unit!962)

(assert (=> d!6609 (= (choose!34 lt!14723 mask!853 #b00000000000000000000000000000000) _$30!42)))

(declare-fun bs!1639 () Bool)

(assert (= bs!1639 d!6609))

(assert (=> bs!1639 m!31933))

(assert (=> d!6559 d!6609))

(assert (=> d!6559 d!6553))

(declare-fun b!39374 () Bool)

(declare-fun e!24997 () Bool)

(assert (=> b!39374 (= e!24997 (contains!504 (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!4647 () Bool)

(declare-fun bm!2989 () Bool)

(declare-fun call!2992 () Bool)

(assert (=> bm!2989 (= call!2992 (arrayNoDuplicates!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4647 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062))))))

(declare-fun b!39375 () Bool)

(declare-fun e!24998 () Bool)

(declare-fun e!25000 () Bool)

(assert (=> b!39375 (= e!24998 e!25000)))

(assert (=> b!39375 (= c!4647 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39376 () Bool)

(declare-fun e!24999 () Bool)

(assert (=> b!39376 (= e!24999 e!24998)))

(declare-fun res!23656 () Bool)

(assert (=> b!39376 (=> (not res!23656) (not e!24998))))

(assert (=> b!39376 (= res!23656 (not e!24997))))

(declare-fun res!23658 () Bool)

(assert (=> b!39376 (=> (not res!23658) (not e!24997))))

(assert (=> b!39376 (= res!23658 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39377 () Bool)

(assert (=> b!39377 (= e!25000 call!2992)))

(declare-fun d!6613 () Bool)

(declare-fun res!23657 () Bool)

(assert (=> d!6613 (=> res!23657 e!24999)))

(assert (=> d!6613 (= res!23657 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(assert (=> d!6613 (= (arrayNoDuplicates!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) e!24999)))

(declare-fun b!39378 () Bool)

(assert (=> b!39378 (= e!25000 call!2992)))

(assert (= (and d!6613 (not res!23657)) b!39376))

(assert (= (and b!39376 res!23658) b!39374))

(assert (= (and b!39376 res!23656) b!39375))

(assert (= (and b!39375 c!4647) b!39377))

(assert (= (and b!39375 (not c!4647)) b!39378))

(assert (= (or b!39377 b!39378) bm!2989))

(declare-fun m!32079 () Bool)

(assert (=> b!39374 m!32079))

(assert (=> b!39374 m!32079))

(declare-fun m!32081 () Bool)

(assert (=> b!39374 m!32081))

(assert (=> bm!2989 m!32079))

(declare-fun m!32083 () Bool)

(assert (=> bm!2989 m!32083))

(assert (=> b!39375 m!32079))

(assert (=> b!39375 m!32079))

(declare-fun m!32085 () Bool)

(assert (=> b!39375 m!32085))

(assert (=> b!39376 m!32079))

(assert (=> b!39376 m!32079))

(assert (=> b!39376 m!32085))

(assert (=> bm!2966 d!6613))

(declare-fun d!6617 () Bool)

(declare-fun lt!14812 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!28 (List!1065) (InoxSet (_ BitVec 64)))

(assert (=> d!6617 (= lt!14812 (select (content!28 Nil!1062) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun e!25005 () Bool)

(assert (=> d!6617 (= lt!14812 e!25005)))

(declare-fun res!23664 () Bool)

(assert (=> d!6617 (=> (not res!23664) (not e!25005))))

(get-info :version)

(assert (=> d!6617 (= res!23664 ((_ is Cons!1061) Nil!1062))))

(assert (=> d!6617 (= (contains!504 Nil!1062 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)) lt!14812)))

(declare-fun b!39383 () Bool)

(declare-fun e!25006 () Bool)

(assert (=> b!39383 (= e!25005 e!25006)))

(declare-fun res!23663 () Bool)

(assert (=> b!39383 (=> res!23663 e!25006)))

(assert (=> b!39383 (= res!23663 (= (h!1632 Nil!1062) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39384 () Bool)

(assert (=> b!39384 (= e!25006 (contains!504 (t!3916 Nil!1062) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(assert (= (and d!6617 res!23664) b!39383))

(assert (= (and b!39383 (not res!23663)) b!39384))

(declare-fun m!32087 () Bool)

(assert (=> d!6617 m!32087))

(assert (=> d!6617 m!31981))

(declare-fun m!32089 () Bool)

(assert (=> d!6617 m!32089))

(assert (=> b!39384 m!31981))

(declare-fun m!32091 () Bool)

(assert (=> b!39384 m!32091))

(assert (=> b!39236 d!6617))

(assert (=> d!6571 d!6563))

(declare-fun d!6621 () Bool)

(assert (=> d!6621 (arrayNoDuplicates!0 lt!14723 #b00000000000000000000000000000000 Nil!1062)))

(assert (=> d!6621 true))

(declare-fun res!23667 () Unit!962)

(assert (=> d!6621 (= (choose!111 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1062) res!23667)))

(declare-fun bs!1640 () Bool)

(assert (= bs!1640 d!6621))

(assert (=> bs!1640 m!31923))

(assert (=> d!6571 d!6621))

(assert (=> d!6575 d!6577))

(declare-fun d!6623 () Bool)

(assert (=> d!6623 (= (arrayCountValidKeys!0 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6623 true))

(declare-fun _$88!28 () Unit!962)

(assert (=> d!6623 (= (choose!59 lt!14723 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!28)))

(declare-fun bs!1641 () Bool)

(assert (= bs!1641 d!6623))

(assert (=> bs!1641 m!31925))

(assert (=> d!6575 d!6623))

(declare-fun b!39385 () Bool)

(declare-fun e!25007 () Bool)

(assert (=> b!39385 (= e!25007 (contains!504 Nil!1062 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun bm!2990 () Bool)

(declare-fun call!2993 () Bool)

(declare-fun c!4648 () Bool)

(assert (=> bm!2990 (= call!2993 (arrayNoDuplicates!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4648 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) Nil!1062) Nil!1062)))))

(declare-fun b!39386 () Bool)

(declare-fun e!25008 () Bool)

(declare-fun e!25010 () Bool)

(assert (=> b!39386 (= e!25008 e!25010)))

(assert (=> b!39386 (= c!4648 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39387 () Bool)

(declare-fun e!25009 () Bool)

(assert (=> b!39387 (= e!25009 e!25008)))

(declare-fun res!23668 () Bool)

(assert (=> b!39387 (=> (not res!23668) (not e!25008))))

(assert (=> b!39387 (= res!23668 (not e!25007))))

(declare-fun res!23670 () Bool)

(assert (=> b!39387 (=> (not res!23670) (not e!25007))))

(assert (=> b!39387 (= res!23670 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39388 () Bool)

(assert (=> b!39388 (= e!25010 call!2993)))

(declare-fun d!6625 () Bool)

(declare-fun res!23669 () Bool)

(assert (=> d!6625 (=> res!23669 e!25009)))

(assert (=> d!6625 (= res!23669 (bvsge #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6625 (= (arrayNoDuplicates!0 (_keys!3266 lt!14721) #b00000000000000000000000000000000 Nil!1062) e!25009)))

(declare-fun b!39389 () Bool)

(assert (=> b!39389 (= e!25010 call!2993)))

(assert (= (and d!6625 (not res!23669)) b!39387))

(assert (= (and b!39387 res!23670) b!39385))

(assert (= (and b!39387 res!23668) b!39386))

(assert (= (and b!39386 c!4648) b!39388))

(assert (= (and b!39386 (not c!4648)) b!39389))

(assert (= (or b!39388 b!39389) bm!2990))

(declare-fun m!32093 () Bool)

(assert (=> b!39385 m!32093))

(assert (=> b!39385 m!32093))

(declare-fun m!32095 () Bool)

(assert (=> b!39385 m!32095))

(assert (=> bm!2990 m!32093))

(declare-fun m!32097 () Bool)

(assert (=> bm!2990 m!32097))

(assert (=> b!39386 m!32093))

(assert (=> b!39386 m!32093))

(declare-fun m!32099 () Bool)

(assert (=> b!39386 m!32099))

(assert (=> b!39387 m!32093))

(assert (=> b!39387 m!32093))

(assert (=> b!39387 m!32099))

(assert (=> b!39348 d!6625))

(declare-fun d!6627 () Bool)

(declare-fun res!23672 () Bool)

(declare-fun e!25011 () Bool)

(assert (=> d!6627 (=> res!23672 e!25011)))

(assert (=> d!6627 (= res!23672 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(assert (=> d!6627 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14723 mask!853) e!25011)))

(declare-fun b!39390 () Bool)

(declare-fun e!25013 () Bool)

(declare-fun call!2994 () Bool)

(assert (=> b!39390 (= e!25013 call!2994)))

(declare-fun b!39391 () Bool)

(declare-fun e!25012 () Bool)

(assert (=> b!39391 (= e!25011 e!25012)))

(declare-fun c!4649 () Bool)

(assert (=> b!39391 (= c!4649 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39392 () Bool)

(assert (=> b!39392 (= e!25012 call!2994)))

(declare-fun b!39393 () Bool)

(assert (=> b!39393 (= e!25012 e!25013)))

(declare-fun lt!14815 () (_ BitVec 64))

(assert (=> b!39393 (= lt!14815 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14813 () Unit!962)

(assert (=> b!39393 (= lt!14813 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14723 lt!14815 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39393 (arrayContainsKey!0 lt!14723 lt!14815 #b00000000000000000000000000000000)))

(declare-fun lt!14814 () Unit!962)

(assert (=> b!39393 (= lt!14814 lt!14813)))

(declare-fun res!23671 () Bool)

(assert (=> b!39393 (= res!23671 (= (seekEntryOrOpen!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14723 mask!853) (Found!181 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39393 (=> (not res!23671) (not e!25013))))

(declare-fun bm!2991 () Bool)

(assert (=> bm!2991 (= call!2994 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14723 mask!853))))

(assert (= (and d!6627 (not res!23672)) b!39391))

(assert (= (and b!39391 c!4649) b!39393))

(assert (= (and b!39391 (not c!4649)) b!39392))

(assert (= (and b!39393 res!23671) b!39390))

(assert (= (or b!39390 b!39392) bm!2991))

(assert (=> b!39391 m!32079))

(assert (=> b!39391 m!32079))

(assert (=> b!39391 m!32085))

(assert (=> b!39393 m!32079))

(declare-fun m!32101 () Bool)

(assert (=> b!39393 m!32101))

(declare-fun m!32103 () Bool)

(assert (=> b!39393 m!32103))

(assert (=> b!39393 m!32079))

(declare-fun m!32105 () Bool)

(assert (=> b!39393 m!32105))

(declare-fun m!32107 () Bool)

(assert (=> bm!2991 m!32107))

(assert (=> bm!2986 d!6627))

(declare-fun d!6629 () Bool)

(declare-fun res!23674 () Bool)

(declare-fun e!25014 () Bool)

(assert (=> d!6629 (=> res!23674 e!25014)))

(assert (=> d!6629 (= res!23674 (bvsge #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6629 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3266 lt!14721) (mask!5142 lt!14721)) e!25014)))

(declare-fun b!39394 () Bool)

(declare-fun e!25016 () Bool)

(declare-fun call!2995 () Bool)

(assert (=> b!39394 (= e!25016 call!2995)))

(declare-fun b!39395 () Bool)

(declare-fun e!25015 () Bool)

(assert (=> b!39395 (= e!25014 e!25015)))

(declare-fun c!4650 () Bool)

(assert (=> b!39395 (= c!4650 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39396 () Bool)

(assert (=> b!39396 (= e!25015 call!2995)))

(declare-fun b!39397 () Bool)

(assert (=> b!39397 (= e!25015 e!25016)))

(declare-fun lt!14818 () (_ BitVec 64))

(assert (=> b!39397 (= lt!14818 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(declare-fun lt!14816 () Unit!962)

(assert (=> b!39397 (= lt!14816 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000))))

(assert (=> b!39397 (arrayContainsKey!0 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000)))

(declare-fun lt!14817 () Unit!962)

(assert (=> b!39397 (= lt!14817 lt!14816)))

(declare-fun res!23673 () Bool)

(assert (=> b!39397 (= res!23673 (= (seekEntryOrOpen!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (_keys!3266 lt!14721) (mask!5142 lt!14721)) (Found!181 #b00000000000000000000000000000000)))))

(assert (=> b!39397 (=> (not res!23673) (not e!25016))))

(declare-fun bm!2992 () Bool)

(assert (=> bm!2992 (= call!2995 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3266 lt!14721) (mask!5142 lt!14721)))))

(assert (= (and d!6629 (not res!23674)) b!39395))

(assert (= (and b!39395 c!4650) b!39397))

(assert (= (and b!39395 (not c!4650)) b!39396))

(assert (= (and b!39397 res!23673) b!39394))

(assert (= (or b!39394 b!39396) bm!2992))

(assert (=> b!39395 m!32093))

(assert (=> b!39395 m!32093))

(assert (=> b!39395 m!32099))

(assert (=> b!39397 m!32093))

(declare-fun m!32109 () Bool)

(assert (=> b!39397 m!32109))

(declare-fun m!32111 () Bool)

(assert (=> b!39397 m!32111))

(assert (=> b!39397 m!32093))

(declare-fun m!32113 () Bool)

(assert (=> b!39397 m!32113))

(declare-fun m!32115 () Bool)

(assert (=> bm!2992 m!32115))

(assert (=> b!39347 d!6629))

(assert (=> b!39284 d!6607))

(declare-fun d!6631 () Bool)

(assert (=> d!6631 (arrayContainsKey!0 lt!14723 lt!14803 #b00000000000000000000000000000000)))

(declare-fun lt!14821 () Unit!962)

(declare-fun choose!13 (array!2579 (_ BitVec 64) (_ BitVec 32)) Unit!962)

(assert (=> d!6631 (= lt!14821 (choose!13 lt!14723 lt!14803 #b00000000000000000000000000000000))))

(assert (=> d!6631 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6631 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14723 lt!14803 #b00000000000000000000000000000000) lt!14821)))

(declare-fun bs!1642 () Bool)

(assert (= bs!1642 d!6631))

(assert (=> bs!1642 m!32025))

(declare-fun m!32117 () Bool)

(assert (=> bs!1642 m!32117))

(assert (=> b!39332 d!6631))

(declare-fun d!6633 () Bool)

(declare-fun res!23679 () Bool)

(declare-fun e!25021 () Bool)

(assert (=> d!6633 (=> res!23679 e!25021)))

(assert (=> d!6633 (= res!23679 (= (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14803))))

(assert (=> d!6633 (= (arrayContainsKey!0 lt!14723 lt!14803 #b00000000000000000000000000000000) e!25021)))

(declare-fun b!39402 () Bool)

(declare-fun e!25022 () Bool)

(assert (=> b!39402 (= e!25021 e!25022)))

(declare-fun res!23680 () Bool)

(assert (=> b!39402 (=> (not res!23680) (not e!25022))))

(assert (=> b!39402 (= res!23680 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(declare-fun b!39403 () Bool)

(assert (=> b!39403 (= e!25022 (arrayContainsKey!0 lt!14723 lt!14803 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6633 (not res!23679)) b!39402))

(assert (= (and b!39402 res!23680) b!39403))

(assert (=> d!6633 m!31981))

(declare-fun m!32119 () Bool)

(assert (=> b!39403 m!32119))

(assert (=> b!39332 d!6633))

(declare-fun b!39416 () Bool)

(declare-fun e!25030 () SeekEntryResult!181)

(declare-fun e!25031 () SeekEntryResult!181)

(assert (=> b!39416 (= e!25030 e!25031)))

(declare-fun lt!14830 () (_ BitVec 64))

(declare-fun lt!14828 () SeekEntryResult!181)

(assert (=> b!39416 (= lt!14830 (select (arr!1233 lt!14723) (index!2848 lt!14828)))))

(declare-fun c!4658 () Bool)

(assert (=> b!39416 (= c!4658 (= lt!14830 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun e!25029 () SeekEntryResult!181)

(declare-fun b!39417 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2579 (_ BitVec 32)) SeekEntryResult!181)

(assert (=> b!39417 (= e!25029 (seekKeyOrZeroReturnVacant!0 (x!7667 lt!14828) (index!2848 lt!14828) (index!2848 lt!14828) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853))))

(declare-fun d!6635 () Bool)

(declare-fun lt!14829 () SeekEntryResult!181)

(assert (=> d!6635 (and (or ((_ is Undefined!181) lt!14829) (not ((_ is Found!181) lt!14829)) (and (bvsge (index!2847 lt!14829) #b00000000000000000000000000000000) (bvslt (index!2847 lt!14829) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!14829) ((_ is Found!181) lt!14829) (not ((_ is MissingZero!181) lt!14829)) (and (bvsge (index!2846 lt!14829) #b00000000000000000000000000000000) (bvslt (index!2846 lt!14829) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!14829) ((_ is Found!181) lt!14829) ((_ is MissingZero!181) lt!14829) (not ((_ is MissingVacant!181) lt!14829)) (and (bvsge (index!2849 lt!14829) #b00000000000000000000000000000000) (bvslt (index!2849 lt!14829) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!14829) (ite ((_ is Found!181) lt!14829) (= (select (arr!1233 lt!14723) (index!2847 lt!14829)) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!181) lt!14829) (= (select (arr!1233 lt!14723) (index!2846 lt!14829)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!181) lt!14829) (= (select (arr!1233 lt!14723) (index!2849 lt!14829)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6635 (= lt!14829 e!25030)))

(declare-fun c!4659 () Bool)

(assert (=> d!6635 (= c!4659 (and ((_ is Intermediate!181) lt!14828) (undefined!993 lt!14828)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2579 (_ BitVec 32)) SeekEntryResult!181)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6635 (= lt!14828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853))))

(assert (=> d!6635 (validMask!0 mask!853)))

(assert (=> d!6635 (= (seekEntryOrOpen!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853) lt!14829)))

(declare-fun b!39418 () Bool)

(assert (=> b!39418 (= e!25029 (MissingZero!181 (index!2848 lt!14828)))))

(declare-fun b!39419 () Bool)

(declare-fun c!4657 () Bool)

(assert (=> b!39419 (= c!4657 (= lt!14830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39419 (= e!25031 e!25029)))

(declare-fun b!39420 () Bool)

(assert (=> b!39420 (= e!25030 Undefined!181)))

(declare-fun b!39421 () Bool)

(assert (=> b!39421 (= e!25031 (Found!181 (index!2848 lt!14828)))))

(assert (= (and d!6635 c!4659) b!39420))

(assert (= (and d!6635 (not c!4659)) b!39416))

(assert (= (and b!39416 c!4658) b!39421))

(assert (= (and b!39416 (not c!4658)) b!39419))

(assert (= (and b!39419 c!4657) b!39418))

(assert (= (and b!39419 (not c!4657)) b!39417))

(declare-fun m!32121 () Bool)

(assert (=> b!39416 m!32121))

(assert (=> b!39417 m!31981))

(declare-fun m!32123 () Bool)

(assert (=> b!39417 m!32123))

(declare-fun m!32125 () Bool)

(assert (=> d!6635 m!32125))

(declare-fun m!32127 () Bool)

(assert (=> d!6635 m!32127))

(assert (=> d!6635 m!31981))

(declare-fun m!32129 () Bool)

(assert (=> d!6635 m!32129))

(assert (=> d!6635 m!31981))

(assert (=> d!6635 m!32127))

(declare-fun m!32131 () Bool)

(assert (=> d!6635 m!32131))

(declare-fun m!32133 () Bool)

(assert (=> d!6635 m!32133))

(assert (=> d!6635 m!31921))

(assert (=> b!39332 d!6635))

(declare-fun b!39676 () Bool)

(declare-fun e!25192 () Unit!962)

(declare-fun lt!15057 () Unit!962)

(assert (=> b!39676 (= e!25192 lt!15057)))

(declare-fun lt!15052 () ListLongMap!1065)

(declare-fun getCurrentListMapNoExtraKeys!32 (array!2579 array!2581 (_ BitVec 32) (_ BitVec 32) V!2091 V!2091 (_ BitVec 32) Int) ListLongMap!1065)

(assert (=> b!39676 (= lt!15052 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun lt!15060 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15060 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15048 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15048 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(declare-fun lt!15041 () Unit!962)

(declare-fun addStillContains!30 (ListLongMap!1065 (_ BitVec 64) V!2091 (_ BitVec 64)) Unit!962)

(assert (=> b!39676 (= lt!15041 (addStillContains!30 lt!15052 lt!15060 (zeroValue!1713 lt!14721) lt!15048))))

(declare-fun contains!509 (ListLongMap!1065 (_ BitVec 64)) Bool)

(declare-fun +!63 (ListLongMap!1065 tuple2!1484) ListLongMap!1065)

(assert (=> b!39676 (contains!509 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) lt!15048)))

(declare-fun lt!15040 () Unit!962)

(assert (=> b!39676 (= lt!15040 lt!15041)))

(declare-fun lt!15039 () ListLongMap!1065)

(assert (=> b!39676 (= lt!15039 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun lt!15045 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15045 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15056 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15056 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(declare-fun lt!15043 () Unit!962)

(declare-fun addApplyDifferent!30 (ListLongMap!1065 (_ BitVec 64) V!2091 (_ BitVec 64)) Unit!962)

(assert (=> b!39676 (= lt!15043 (addApplyDifferent!30 lt!15039 lt!15045 (minValue!1713 lt!14721) lt!15056))))

(declare-fun apply!54 (ListLongMap!1065 (_ BitVec 64)) V!2091)

(assert (=> b!39676 (= (apply!54 (+!63 lt!15039 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) lt!15056) (apply!54 lt!15039 lt!15056))))

(declare-fun lt!15044 () Unit!962)

(assert (=> b!39676 (= lt!15044 lt!15043)))

(declare-fun lt!15058 () ListLongMap!1065)

(assert (=> b!39676 (= lt!15058 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun lt!15042 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15042 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15054 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15054 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(declare-fun lt!15046 () Unit!962)

(assert (=> b!39676 (= lt!15046 (addApplyDifferent!30 lt!15058 lt!15042 (zeroValue!1713 lt!14721) lt!15054))))

(assert (=> b!39676 (= (apply!54 (+!63 lt!15058 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) lt!15054) (apply!54 lt!15058 lt!15054))))

(declare-fun lt!15051 () Unit!962)

(assert (=> b!39676 (= lt!15051 lt!15046)))

(declare-fun lt!15053 () ListLongMap!1065)

(assert (=> b!39676 (= lt!15053 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun lt!15055 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15055 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!15049 () (_ BitVec 64))

(assert (=> b!39676 (= lt!15049 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(assert (=> b!39676 (= lt!15057 (addApplyDifferent!30 lt!15053 lt!15055 (minValue!1713 lt!14721) lt!15049))))

(assert (=> b!39676 (= (apply!54 (+!63 lt!15053 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) lt!15049) (apply!54 lt!15053 lt!15049))))

(declare-fun b!39677 () Bool)

(declare-fun e!25195 () ListLongMap!1065)

(declare-fun call!3061 () ListLongMap!1065)

(assert (=> b!39677 (= e!25195 call!3061)))

(declare-fun b!39678 () Bool)

(declare-fun e!25197 () ListLongMap!1065)

(declare-fun call!3060 () ListLongMap!1065)

(assert (=> b!39678 (= e!25197 (+!63 call!3060 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))

(declare-fun b!39679 () Bool)

(declare-fun e!25198 () Bool)

(assert (=> b!39679 (= e!25198 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39680 () Bool)

(declare-fun e!25201 () Bool)

(declare-fun lt!15047 () ListLongMap!1065)

(assert (=> b!39680 (= e!25201 (= (apply!54 lt!15047 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1713 lt!14721)))))

(declare-fun b!39681 () Bool)

(declare-fun e!25196 () ListLongMap!1065)

(assert (=> b!39681 (= e!25197 e!25196)))

(declare-fun c!4736 () Bool)

(assert (=> b!39681 (= c!4736 (and (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!39682 () Bool)

(declare-fun c!4733 () Bool)

(assert (=> b!39682 (= c!4733 (and (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!39682 (= e!25196 e!25195)))

(declare-fun b!39683 () Bool)

(declare-fun e!25193 () Bool)

(assert (=> b!39683 (= e!25193 (= (apply!54 lt!15047 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1713 lt!14721)))))

(declare-fun b!39684 () Bool)

(declare-fun e!25191 () Bool)

(declare-fun call!3063 () Bool)

(assert (=> b!39684 (= e!25191 (not call!3063))))

(declare-fun bm!3055 () Bool)

(declare-fun call!3062 () ListLongMap!1065)

(assert (=> bm!3055 (= call!3062 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)))))

(declare-fun b!39685 () Bool)

(declare-fun res!23802 () Bool)

(declare-fun e!25199 () Bool)

(assert (=> b!39685 (=> (not res!23802) (not e!25199))))

(declare-fun e!25200 () Bool)

(assert (=> b!39685 (= res!23802 e!25200)))

(declare-fun c!4734 () Bool)

(assert (=> b!39685 (= c!4734 (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!39687 () Bool)

(declare-fun e!25202 () Bool)

(assert (=> b!39687 (= e!25202 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39688 () Bool)

(declare-fun e!25194 () Bool)

(declare-fun e!25190 () Bool)

(assert (=> b!39688 (= e!25194 e!25190)))

(declare-fun res!23800 () Bool)

(assert (=> b!39688 (=> (not res!23800) (not e!25190))))

(assert (=> b!39688 (= res!23800 (contains!509 lt!15047 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(assert (=> b!39688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!39689 () Bool)

(declare-fun call!3058 () ListLongMap!1065)

(assert (=> b!39689 (= e!25195 call!3058)))

(declare-fun b!39690 () Bool)

(assert (=> b!39690 (= e!25199 e!25191)))

(declare-fun c!4735 () Bool)

(assert (=> b!39690 (= c!4735 (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!39691 () Bool)

(declare-fun Unit!968 () Unit!962)

(assert (=> b!39691 (= e!25192 Unit!968)))

(declare-fun bm!3056 () Bool)

(declare-fun call!3059 () ListLongMap!1065)

(assert (=> bm!3056 (= call!3058 call!3059)))

(declare-fun bm!3057 () Bool)

(assert (=> bm!3057 (= call!3061 call!3060)))

(declare-fun bm!3058 () Bool)

(assert (=> bm!3058 (= call!3063 (contains!509 lt!15047 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!3059 () Bool)

(declare-fun call!3064 () Bool)

(assert (=> bm!3059 (= call!3064 (contains!509 lt!15047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!3060 () Bool)

(declare-fun c!4731 () Bool)

(assert (=> bm!3060 (= call!3060 (+!63 (ite c!4731 call!3062 (ite c!4736 call!3059 call!3058)) (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(declare-fun b!39692 () Bool)

(assert (=> b!39692 (= e!25191 e!25193)))

(declare-fun res!23798 () Bool)

(assert (=> b!39692 (= res!23798 call!3063)))

(assert (=> b!39692 (=> (not res!23798) (not e!25193))))

(declare-fun b!39693 () Bool)

(declare-fun res!23799 () Bool)

(assert (=> b!39693 (=> (not res!23799) (not e!25199))))

(assert (=> b!39693 (= res!23799 e!25194)))

(declare-fun res!23801 () Bool)

(assert (=> b!39693 (=> res!23801 e!25194)))

(assert (=> b!39693 (= res!23801 (not e!25202))))

(declare-fun res!23797 () Bool)

(assert (=> b!39693 (=> (not res!23797) (not e!25202))))

(assert (=> b!39693 (= res!23797 (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun bm!3061 () Bool)

(assert (=> bm!3061 (= call!3059 call!3062)))

(declare-fun b!39694 () Bool)

(assert (=> b!39694 (= e!25200 (not call!3064))))

(declare-fun b!39695 () Bool)

(assert (=> b!39695 (= e!25200 e!25201)))

(declare-fun res!23796 () Bool)

(assert (=> b!39695 (= res!23796 call!3064)))

(assert (=> b!39695 (=> (not res!23796) (not e!25201))))

(declare-fun b!39696 () Bool)

(declare-fun get!691 (ValueCell!627 V!2091) V!2091)

(assert (=> b!39696 (= e!25190 (= (apply!54 lt!15047 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) (get!691 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1356 (_values!1778 lt!14721))))))

(assert (=> b!39696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun d!6637 () Bool)

(assert (=> d!6637 e!25199))

(declare-fun res!23804 () Bool)

(assert (=> d!6637 (=> (not res!23804) (not e!25199))))

(assert (=> d!6637 (= res!23804 (or (bvsge #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))))

(declare-fun lt!15059 () ListLongMap!1065)

(assert (=> d!6637 (= lt!15047 lt!15059)))

(declare-fun lt!15050 () Unit!962)

(assert (=> d!6637 (= lt!15050 e!25192)))

(declare-fun c!4732 () Bool)

(assert (=> d!6637 (= c!4732 e!25198)))

(declare-fun res!23803 () Bool)

(assert (=> d!6637 (=> (not res!23803) (not e!25198))))

(assert (=> d!6637 (= res!23803 (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6637 (= lt!15059 e!25197)))

(assert (=> d!6637 (= c!4731 (and (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1686 lt!14721) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!6637 (validMask!0 (mask!5142 lt!14721))))

(assert (=> d!6637 (= (getCurrentListMap!310 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)) lt!15047)))

(declare-fun b!39686 () Bool)

(assert (=> b!39686 (= e!25196 call!3061)))

(assert (= (and d!6637 c!4731) b!39678))

(assert (= (and d!6637 (not c!4731)) b!39681))

(assert (= (and b!39681 c!4736) b!39686))

(assert (= (and b!39681 (not c!4736)) b!39682))

(assert (= (and b!39682 c!4733) b!39677))

(assert (= (and b!39682 (not c!4733)) b!39689))

(assert (= (or b!39677 b!39689) bm!3056))

(assert (= (or b!39686 bm!3056) bm!3061))

(assert (= (or b!39686 b!39677) bm!3057))

(assert (= (or b!39678 bm!3061) bm!3055))

(assert (= (or b!39678 bm!3057) bm!3060))

(assert (= (and d!6637 res!23803) b!39679))

(assert (= (and d!6637 c!4732) b!39676))

(assert (= (and d!6637 (not c!4732)) b!39691))

(assert (= (and d!6637 res!23804) b!39693))

(assert (= (and b!39693 res!23797) b!39687))

(assert (= (and b!39693 (not res!23801)) b!39688))

(assert (= (and b!39688 res!23800) b!39696))

(assert (= (and b!39693 res!23799) b!39685))

(assert (= (and b!39685 c!4734) b!39695))

(assert (= (and b!39685 (not c!4734)) b!39694))

(assert (= (and b!39695 res!23796) b!39680))

(assert (= (or b!39695 b!39694) bm!3059))

(assert (= (and b!39685 res!23802) b!39690))

(assert (= (and b!39690 c!4735) b!39692))

(assert (= (and b!39690 (not c!4735)) b!39684))

(assert (= (and b!39692 res!23798) b!39683))

(assert (= (or b!39692 b!39684) bm!3058))

(declare-fun b_lambda!2057 () Bool)

(assert (=> (not b_lambda!2057) (not b!39696)))

(declare-fun tb!845 () Bool)

(declare-fun t!3926 () Bool)

(assert (=> (and start!5508 (= defaultEntry!470 (defaultEntry!1795 lt!14721)) t!3926) tb!845))

(declare-fun result!1441 () Bool)

(assert (=> tb!845 (= result!1441 tp_is_empty!1749)))

(assert (=> b!39696 t!3926))

(declare-fun b_and!2353 () Bool)

(assert (= b_and!2343 (and (=> t!3926 result!1441) b_and!2353)))

(assert (=> b!39679 m!32093))

(assert (=> b!39679 m!32093))

(assert (=> b!39679 m!32099))

(declare-fun m!32331 () Bool)

(assert (=> b!39676 m!32331))

(declare-fun m!32333 () Bool)

(assert (=> b!39676 m!32333))

(assert (=> b!39676 m!32093))

(declare-fun m!32335 () Bool)

(assert (=> b!39676 m!32335))

(declare-fun m!32337 () Bool)

(assert (=> b!39676 m!32337))

(declare-fun m!32339 () Bool)

(assert (=> b!39676 m!32339))

(declare-fun m!32341 () Bool)

(assert (=> b!39676 m!32341))

(declare-fun m!32343 () Bool)

(assert (=> b!39676 m!32343))

(declare-fun m!32345 () Bool)

(assert (=> b!39676 m!32345))

(declare-fun m!32347 () Bool)

(assert (=> b!39676 m!32347))

(declare-fun m!32349 () Bool)

(assert (=> b!39676 m!32349))

(assert (=> b!39676 m!32337))

(declare-fun m!32351 () Bool)

(assert (=> b!39676 m!32351))

(assert (=> b!39676 m!32341))

(assert (=> b!39676 m!32351))

(declare-fun m!32353 () Bool)

(assert (=> b!39676 m!32353))

(declare-fun m!32355 () Bool)

(assert (=> b!39676 m!32355))

(assert (=> b!39676 m!32333))

(declare-fun m!32359 () Bool)

(assert (=> b!39676 m!32359))

(declare-fun m!32361 () Bool)

(assert (=> b!39676 m!32361))

(declare-fun m!32363 () Bool)

(assert (=> b!39676 m!32363))

(declare-fun m!32365 () Bool)

(assert (=> b!39678 m!32365))

(declare-fun m!32369 () Bool)

(assert (=> b!39696 m!32369))

(declare-fun m!32371 () Bool)

(assert (=> b!39696 m!32371))

(declare-fun m!32373 () Bool)

(assert (=> b!39696 m!32373))

(assert (=> b!39696 m!32093))

(declare-fun m!32375 () Bool)

(assert (=> b!39696 m!32375))

(assert (=> b!39696 m!32371))

(assert (=> b!39696 m!32093))

(assert (=> b!39696 m!32369))

(declare-fun m!32377 () Bool)

(assert (=> bm!3058 m!32377))

(declare-fun m!32379 () Bool)

(assert (=> b!39680 m!32379))

(assert (=> d!6637 m!32065))

(declare-fun m!32381 () Bool)

(assert (=> b!39683 m!32381))

(declare-fun m!32383 () Bool)

(assert (=> bm!3060 m!32383))

(assert (=> bm!3055 m!32355))

(assert (=> b!39687 m!32093))

(assert (=> b!39687 m!32093))

(assert (=> b!39687 m!32099))

(declare-fun m!32387 () Bool)

(assert (=> bm!3059 m!32387))

(assert (=> b!39688 m!32093))

(assert (=> b!39688 m!32093))

(declare-fun m!32389 () Bool)

(assert (=> b!39688 m!32389))

(assert (=> d!6583 d!6637))

(declare-fun bm!3064 () Bool)

(declare-fun call!3067 () (_ BitVec 32))

(assert (=> bm!3064 (= call!3067 (arrayCountValidKeys!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!39712 () Bool)

(declare-fun e!25212 () (_ BitVec 32))

(assert (=> b!39712 (= e!25212 (bvadd #b00000000000000000000000000000001 call!3067))))

(declare-fun d!6683 () Bool)

(declare-fun lt!15065 () (_ BitVec 32))

(assert (=> d!6683 (and (bvsge lt!15065 #b00000000000000000000000000000000) (bvsle lt!15065 (bvsub (size!1355 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun e!25213 () (_ BitVec 32))

(assert (=> d!6683 (= lt!15065 e!25213)))

(declare-fun c!4743 () Bool)

(assert (=> d!6683 (= c!4743 (bvsge #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6683 (and (bvsle #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1355 (_keys!3266 lt!14721)) (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6683 (= (arrayCountValidKeys!0 (_keys!3266 lt!14721) #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))) lt!15065)))

(declare-fun b!39713 () Bool)

(assert (=> b!39713 (= e!25213 e!25212)))

(declare-fun c!4744 () Bool)

(assert (=> b!39713 (= c!4744 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39714 () Bool)

(assert (=> b!39714 (= e!25212 call!3067)))

(declare-fun b!39715 () Bool)

(assert (=> b!39715 (= e!25213 #b00000000000000000000000000000000)))

(assert (= (and d!6683 c!4743) b!39715))

(assert (= (and d!6683 (not c!4743)) b!39713))

(assert (= (and b!39713 c!4744) b!39712))

(assert (= (and b!39713 (not c!4744)) b!39714))

(assert (= (or b!39712 b!39714) bm!3064))

(declare-fun m!32391 () Bool)

(assert (=> bm!3064 m!32391))

(assert (=> b!39713 m!32093))

(assert (=> b!39713 m!32093))

(assert (=> b!39713 m!32099))

(assert (=> b!39346 d!6683))

(declare-fun bm!3065 () Bool)

(declare-fun call!3068 () (_ BitVec 32))

(assert (=> bm!3065 (= call!3068 (arrayCountValidKeys!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!39716 () Bool)

(declare-fun e!25214 () (_ BitVec 32))

(assert (=> b!39716 (= e!25214 (bvadd #b00000000000000000000000000000001 call!3068))))

(declare-fun d!6685 () Bool)

(declare-fun lt!15066 () (_ BitVec 32))

(assert (=> d!6685 (and (bvsge lt!15066 #b00000000000000000000000000000000) (bvsle lt!15066 (bvsub (size!1355 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25215 () (_ BitVec 32))

(assert (=> d!6685 (= lt!15066 e!25215)))

(declare-fun c!4745 () Bool)

(assert (=> d!6685 (= c!4745 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6685 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1355 lt!14723)))))

(assert (=> d!6685 (= (arrayCountValidKeys!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15066)))

(declare-fun b!39717 () Bool)

(assert (=> b!39717 (= e!25215 e!25214)))

(declare-fun c!4746 () Bool)

(assert (=> b!39717 (= c!4746 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39718 () Bool)

(assert (=> b!39718 (= e!25214 call!3068)))

(declare-fun b!39719 () Bool)

(assert (=> b!39719 (= e!25215 #b00000000000000000000000000000000)))

(assert (= (and d!6685 c!4745) b!39719))

(assert (= (and d!6685 (not c!4745)) b!39717))

(assert (= (and b!39717 c!4746) b!39716))

(assert (= (and b!39717 (not c!4746)) b!39718))

(assert (= (or b!39716 b!39718) bm!3065))

(declare-fun m!32393 () Bool)

(assert (=> bm!3065 m!32393))

(assert (=> b!39717 m!32079))

(assert (=> b!39717 m!32079))

(assert (=> b!39717 m!32085))

(assert (=> bm!2977 d!6685))

(assert (=> b!39330 d!6607))

(check-sat (not b!39393) (not b_next!1359) (not bm!2991) (not b_lambda!2057) (not b!39395) (not b!39375) (not b!39688) (not bm!3058) (not b!39679) (not b!39385) (not d!6605) (not b!39678) (not bm!3065) (not b!39368) (not d!6621) (not d!6631) tp_is_empty!1749 (not d!6617) (not b!39680) (not bm!3059) (not bm!2990) (not b!39676) (not d!6609) (not b!39386) (not b!39403) (not bm!3064) (not b!39683) (not bm!3055) (not d!6635) (not b!39374) (not b!39687) (not b!39417) b_and!2353 (not d!6623) (not b!39376) (not b!39384) (not b!39391) (not bm!3060) (not d!6637) (not b!39717) (not b!39696) (not b_lambda!2049) (not b!39713) (not bm!2989) (not b!39387) (not b!39397) (not bm!2992) (not b!39367))
(check-sat b_and!2353 (not b_next!1359))
(get-model)

(declare-fun d!6699 () Bool)

(assert (=> d!6699 (= (size!1371 lt!14721) (bvadd (_size!166 lt!14721) (bvsdiv (bvadd (extraKeys!1686 lt!14721) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!39367 d!6699))

(declare-fun d!6701 () Bool)

(assert (=> d!6701 (= (content!28 Nil!1062) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!6617 d!6701))

(declare-fun d!6703 () Bool)

(declare-fun res!23835 () Bool)

(declare-fun e!25234 () Bool)

(assert (=> d!6703 (=> res!23835 e!25234)))

(assert (=> d!6703 (= res!23835 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6703 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3266 lt!14721) (mask!5142 lt!14721)) e!25234)))

(declare-fun b!39751 () Bool)

(declare-fun e!25236 () Bool)

(declare-fun call!3072 () Bool)

(assert (=> b!39751 (= e!25236 call!3072)))

(declare-fun b!39752 () Bool)

(declare-fun e!25235 () Bool)

(assert (=> b!39752 (= e!25234 e!25235)))

(declare-fun c!4751 () Bool)

(assert (=> b!39752 (= c!4751 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39753 () Bool)

(assert (=> b!39753 (= e!25235 call!3072)))

(declare-fun b!39754 () Bool)

(assert (=> b!39754 (= e!25235 e!25236)))

(declare-fun lt!15076 () (_ BitVec 64))

(assert (=> b!39754 (= lt!15076 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15074 () Unit!962)

(assert (=> b!39754 (= lt!15074 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3266 lt!14721) lt!15076 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39754 (arrayContainsKey!0 (_keys!3266 lt!14721) lt!15076 #b00000000000000000000000000000000)))

(declare-fun lt!15075 () Unit!962)

(assert (=> b!39754 (= lt!15075 lt!15074)))

(declare-fun res!23834 () Bool)

(assert (=> b!39754 (= res!23834 (= (seekEntryOrOpen!0 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3266 lt!14721) (mask!5142 lt!14721)) (Found!181 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39754 (=> (not res!23834) (not e!25236))))

(declare-fun bm!3069 () Bool)

(assert (=> bm!3069 (= call!3072 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3266 lt!14721) (mask!5142 lt!14721)))))

(assert (= (and d!6703 (not res!23835)) b!39752))

(assert (= (and b!39752 c!4751) b!39754))

(assert (= (and b!39752 (not c!4751)) b!39753))

(assert (= (and b!39754 res!23834) b!39751))

(assert (= (or b!39751 b!39753) bm!3069))

(declare-fun m!32417 () Bool)

(assert (=> b!39752 m!32417))

(assert (=> b!39752 m!32417))

(declare-fun m!32419 () Bool)

(assert (=> b!39752 m!32419))

(assert (=> b!39754 m!32417))

(declare-fun m!32421 () Bool)

(assert (=> b!39754 m!32421))

(declare-fun m!32423 () Bool)

(assert (=> b!39754 m!32423))

(assert (=> b!39754 m!32417))

(declare-fun m!32425 () Bool)

(assert (=> b!39754 m!32425))

(declare-fun m!32427 () Bool)

(assert (=> bm!3069 m!32427))

(assert (=> bm!2992 d!6703))

(declare-fun d!6705 () Bool)

(declare-fun e!25241 () Bool)

(assert (=> d!6705 e!25241))

(declare-fun res!23838 () Bool)

(assert (=> d!6705 (=> res!23838 e!25241)))

(declare-fun lt!15088 () Bool)

(assert (=> d!6705 (= res!23838 (not lt!15088))))

(declare-fun lt!15087 () Bool)

(assert (=> d!6705 (= lt!15088 lt!15087)))

(declare-fun lt!15085 () Unit!962)

(declare-fun e!25242 () Unit!962)

(assert (=> d!6705 (= lt!15085 e!25242)))

(declare-fun c!4754 () Bool)

(assert (=> d!6705 (= c!4754 lt!15087)))

(declare-fun containsKey!65 (List!1064 (_ BitVec 64)) Bool)

(assert (=> d!6705 (= lt!15087 (containsKey!65 (toList!548 lt!15047) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(assert (=> d!6705 (= (contains!509 lt!15047 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) lt!15088)))

(declare-fun b!39761 () Bool)

(declare-fun lt!15086 () Unit!962)

(assert (=> b!39761 (= e!25242 lt!15086)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!53 (List!1064 (_ BitVec 64)) Unit!962)

(assert (=> b!39761 (= lt!15086 (lemmaContainsKeyImpliesGetValueByKeyDefined!53 (toList!548 lt!15047) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-datatypes ((Option!103 0))(
  ( (Some!102 (v!1989 V!2091)) (None!101) )
))
(declare-fun isDefined!54 (Option!103) Bool)

(declare-fun getValueByKey!97 (List!1064 (_ BitVec 64)) Option!103)

(assert (=> b!39761 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39762 () Bool)

(declare-fun Unit!969 () Unit!962)

(assert (=> b!39762 (= e!25242 Unit!969)))

(declare-fun b!39763 () Bool)

(assert (=> b!39763 (= e!25241 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))))

(assert (= (and d!6705 c!4754) b!39761))

(assert (= (and d!6705 (not c!4754)) b!39762))

(assert (= (and d!6705 (not res!23838)) b!39763))

(assert (=> d!6705 m!32093))

(declare-fun m!32429 () Bool)

(assert (=> d!6705 m!32429))

(assert (=> b!39761 m!32093))

(declare-fun m!32431 () Bool)

(assert (=> b!39761 m!32431))

(assert (=> b!39761 m!32093))

(declare-fun m!32433 () Bool)

(assert (=> b!39761 m!32433))

(assert (=> b!39761 m!32433))

(declare-fun m!32435 () Bool)

(assert (=> b!39761 m!32435))

(assert (=> b!39763 m!32093))

(assert (=> b!39763 m!32433))

(assert (=> b!39763 m!32433))

(assert (=> b!39763 m!32435))

(assert (=> b!39688 d!6705))

(declare-fun d!6707 () Bool)

(assert (=> d!6707 (arrayContainsKey!0 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000)))

(declare-fun lt!15089 () Unit!962)

(assert (=> d!6707 (= lt!15089 (choose!13 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000))))

(assert (=> d!6707 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6707 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000) lt!15089)))

(declare-fun bs!1651 () Bool)

(assert (= bs!1651 d!6707))

(assert (=> bs!1651 m!32111))

(declare-fun m!32437 () Bool)

(assert (=> bs!1651 m!32437))

(assert (=> b!39397 d!6707))

(declare-fun d!6709 () Bool)

(declare-fun res!23839 () Bool)

(declare-fun e!25243 () Bool)

(assert (=> d!6709 (=> res!23839 e!25243)))

(assert (=> d!6709 (= res!23839 (= (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) lt!14818))))

(assert (=> d!6709 (= (arrayContainsKey!0 (_keys!3266 lt!14721) lt!14818 #b00000000000000000000000000000000) e!25243)))

(declare-fun b!39764 () Bool)

(declare-fun e!25244 () Bool)

(assert (=> b!39764 (= e!25243 e!25244)))

(declare-fun res!23840 () Bool)

(assert (=> b!39764 (=> (not res!23840) (not e!25244))))

(assert (=> b!39764 (= res!23840 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!39765 () Bool)

(assert (=> b!39765 (= e!25244 (arrayContainsKey!0 (_keys!3266 lt!14721) lt!14818 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6709 (not res!23839)) b!39764))

(assert (= (and b!39764 res!23840) b!39765))

(assert (=> d!6709 m!32093))

(declare-fun m!32439 () Bool)

(assert (=> b!39765 m!32439))

(assert (=> b!39397 d!6709))

(declare-fun b!39766 () Bool)

(declare-fun e!25246 () SeekEntryResult!181)

(declare-fun e!25247 () SeekEntryResult!181)

(assert (=> b!39766 (= e!25246 e!25247)))

(declare-fun lt!15092 () (_ BitVec 64))

(declare-fun lt!15090 () SeekEntryResult!181)

(assert (=> b!39766 (= lt!15092 (select (arr!1233 (_keys!3266 lt!14721)) (index!2848 lt!15090)))))

(declare-fun c!4756 () Bool)

(assert (=> b!39766 (= c!4756 (= lt!15092 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39767 () Bool)

(declare-fun e!25245 () SeekEntryResult!181)

(assert (=> b!39767 (= e!25245 (seekKeyOrZeroReturnVacant!0 (x!7667 lt!15090) (index!2848 lt!15090) (index!2848 lt!15090) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (_keys!3266 lt!14721) (mask!5142 lt!14721)))))

(declare-fun d!6711 () Bool)

(declare-fun lt!15091 () SeekEntryResult!181)

(assert (=> d!6711 (and (or ((_ is Undefined!181) lt!15091) (not ((_ is Found!181) lt!15091)) (and (bvsge (index!2847 lt!15091) #b00000000000000000000000000000000) (bvslt (index!2847 lt!15091) (size!1355 (_keys!3266 lt!14721))))) (or ((_ is Undefined!181) lt!15091) ((_ is Found!181) lt!15091) (not ((_ is MissingZero!181) lt!15091)) (and (bvsge (index!2846 lt!15091) #b00000000000000000000000000000000) (bvslt (index!2846 lt!15091) (size!1355 (_keys!3266 lt!14721))))) (or ((_ is Undefined!181) lt!15091) ((_ is Found!181) lt!15091) ((_ is MissingZero!181) lt!15091) (not ((_ is MissingVacant!181) lt!15091)) (and (bvsge (index!2849 lt!15091) #b00000000000000000000000000000000) (bvslt (index!2849 lt!15091) (size!1355 (_keys!3266 lt!14721))))) (or ((_ is Undefined!181) lt!15091) (ite ((_ is Found!181) lt!15091) (= (select (arr!1233 (_keys!3266 lt!14721)) (index!2847 lt!15091)) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!181) lt!15091) (= (select (arr!1233 (_keys!3266 lt!14721)) (index!2846 lt!15091)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!181) lt!15091) (= (select (arr!1233 (_keys!3266 lt!14721)) (index!2849 lt!15091)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6711 (= lt!15091 e!25246)))

(declare-fun c!4757 () Bool)

(assert (=> d!6711 (= c!4757 (and ((_ is Intermediate!181) lt!15090) (undefined!993 lt!15090)))))

(assert (=> d!6711 (= lt!15090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (mask!5142 lt!14721)) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (_keys!3266 lt!14721) (mask!5142 lt!14721)))))

(assert (=> d!6711 (validMask!0 (mask!5142 lt!14721))))

(assert (=> d!6711 (= (seekEntryOrOpen!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (_keys!3266 lt!14721) (mask!5142 lt!14721)) lt!15091)))

(declare-fun b!39768 () Bool)

(assert (=> b!39768 (= e!25245 (MissingZero!181 (index!2848 lt!15090)))))

(declare-fun b!39769 () Bool)

(declare-fun c!4755 () Bool)

(assert (=> b!39769 (= c!4755 (= lt!15092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39769 (= e!25247 e!25245)))

(declare-fun b!39770 () Bool)

(assert (=> b!39770 (= e!25246 Undefined!181)))

(declare-fun b!39771 () Bool)

(assert (=> b!39771 (= e!25247 (Found!181 (index!2848 lt!15090)))))

(assert (= (and d!6711 c!4757) b!39770))

(assert (= (and d!6711 (not c!4757)) b!39766))

(assert (= (and b!39766 c!4756) b!39771))

(assert (= (and b!39766 (not c!4756)) b!39769))

(assert (= (and b!39769 c!4755) b!39768))

(assert (= (and b!39769 (not c!4755)) b!39767))

(declare-fun m!32441 () Bool)

(assert (=> b!39766 m!32441))

(assert (=> b!39767 m!32093))

(declare-fun m!32443 () Bool)

(assert (=> b!39767 m!32443))

(declare-fun m!32445 () Bool)

(assert (=> d!6711 m!32445))

(declare-fun m!32447 () Bool)

(assert (=> d!6711 m!32447))

(assert (=> d!6711 m!32093))

(declare-fun m!32449 () Bool)

(assert (=> d!6711 m!32449))

(assert (=> d!6711 m!32093))

(assert (=> d!6711 m!32447))

(declare-fun m!32451 () Bool)

(assert (=> d!6711 m!32451))

(declare-fun m!32453 () Bool)

(assert (=> d!6711 m!32453))

(assert (=> d!6711 m!32065))

(assert (=> b!39397 d!6711))

(assert (=> d!6609 d!6591))

(declare-fun d!6713 () Bool)

(assert (=> d!6713 (= (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39687 d!6713))

(assert (=> d!6621 d!6563))

(declare-fun d!6715 () Bool)

(assert (=> d!6715 (= (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39376 d!6715))

(assert (=> b!39395 d!6713))

(declare-fun d!6717 () Bool)

(declare-fun res!23842 () Bool)

(declare-fun e!25248 () Bool)

(assert (=> d!6717 (=> res!23842 e!25248)))

(assert (=> d!6717 (= res!23842 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(assert (=> d!6717 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14723 mask!853) e!25248)))

(declare-fun b!39772 () Bool)

(declare-fun e!25250 () Bool)

(declare-fun call!3073 () Bool)

(assert (=> b!39772 (= e!25250 call!3073)))

(declare-fun b!39773 () Bool)

(declare-fun e!25249 () Bool)

(assert (=> b!39773 (= e!25248 e!25249)))

(declare-fun c!4758 () Bool)

(assert (=> b!39773 (= c!4758 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39774 () Bool)

(assert (=> b!39774 (= e!25249 call!3073)))

(declare-fun b!39775 () Bool)

(assert (=> b!39775 (= e!25249 e!25250)))

(declare-fun lt!15095 () (_ BitVec 64))

(assert (=> b!39775 (= lt!15095 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!15093 () Unit!962)

(assert (=> b!39775 (= lt!15093 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14723 lt!15095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!39775 (arrayContainsKey!0 lt!14723 lt!15095 #b00000000000000000000000000000000)))

(declare-fun lt!15094 () Unit!962)

(assert (=> b!39775 (= lt!15094 lt!15093)))

(declare-fun res!23841 () Bool)

(assert (=> b!39775 (= res!23841 (= (seekEntryOrOpen!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14723 mask!853) (Found!181 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!39775 (=> (not res!23841) (not e!25250))))

(declare-fun bm!3070 () Bool)

(assert (=> bm!3070 (= call!3073 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14723 mask!853))))

(assert (= (and d!6717 (not res!23842)) b!39773))

(assert (= (and b!39773 c!4758) b!39775))

(assert (= (and b!39773 (not c!4758)) b!39774))

(assert (= (and b!39775 res!23841) b!39772))

(assert (= (or b!39772 b!39774) bm!3070))

(declare-fun m!32455 () Bool)

(assert (=> b!39773 m!32455))

(assert (=> b!39773 m!32455))

(declare-fun m!32457 () Bool)

(assert (=> b!39773 m!32457))

(assert (=> b!39775 m!32455))

(declare-fun m!32459 () Bool)

(assert (=> b!39775 m!32459))

(declare-fun m!32461 () Bool)

(assert (=> b!39775 m!32461))

(assert (=> b!39775 m!32455))

(declare-fun m!32463 () Bool)

(assert (=> b!39775 m!32463))

(declare-fun m!32465 () Bool)

(assert (=> bm!3070 m!32465))

(assert (=> bm!2991 d!6717))

(assert (=> b!39375 d!6715))

(declare-fun d!6719 () Bool)

(assert (=> d!6719 (= (validMask!0 (mask!5142 lt!14721)) (and (or (= (mask!5142 lt!14721) #b00000000000000000000000000000111) (= (mask!5142 lt!14721) #b00000000000000000000000000001111) (= (mask!5142 lt!14721) #b00000000000000000000000000011111) (= (mask!5142 lt!14721) #b00000000000000000000000000111111) (= (mask!5142 lt!14721) #b00000000000000000000000001111111) (= (mask!5142 lt!14721) #b00000000000000000000000011111111) (= (mask!5142 lt!14721) #b00000000000000000000000111111111) (= (mask!5142 lt!14721) #b00000000000000000000001111111111) (= (mask!5142 lt!14721) #b00000000000000000000011111111111) (= (mask!5142 lt!14721) #b00000000000000000000111111111111) (= (mask!5142 lt!14721) #b00000000000000000001111111111111) (= (mask!5142 lt!14721) #b00000000000000000011111111111111) (= (mask!5142 lt!14721) #b00000000000000000111111111111111) (= (mask!5142 lt!14721) #b00000000000000001111111111111111) (= (mask!5142 lt!14721) #b00000000000000011111111111111111) (= (mask!5142 lt!14721) #b00000000000000111111111111111111) (= (mask!5142 lt!14721) #b00000000000001111111111111111111) (= (mask!5142 lt!14721) #b00000000000011111111111111111111) (= (mask!5142 lt!14721) #b00000000000111111111111111111111) (= (mask!5142 lt!14721) #b00000000001111111111111111111111) (= (mask!5142 lt!14721) #b00000000011111111111111111111111) (= (mask!5142 lt!14721) #b00000000111111111111111111111111) (= (mask!5142 lt!14721) #b00000001111111111111111111111111) (= (mask!5142 lt!14721) #b00000011111111111111111111111111) (= (mask!5142 lt!14721) #b00000111111111111111111111111111) (= (mask!5142 lt!14721) #b00001111111111111111111111111111) (= (mask!5142 lt!14721) #b00011111111111111111111111111111) (= (mask!5142 lt!14721) #b00111111111111111111111111111111)) (bvsle (mask!5142 lt!14721) #b00111111111111111111111111111111)))))

(assert (=> d!6605 d!6719))

(declare-fun d!6721 () Bool)

(assert (=> d!6721 (arrayContainsKey!0 lt!14723 lt!14815 #b00000000000000000000000000000000)))

(declare-fun lt!15096 () Unit!962)

(assert (=> d!6721 (= lt!15096 (choose!13 lt!14723 lt!14815 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6721 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6721 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14723 lt!14815 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15096)))

(declare-fun bs!1652 () Bool)

(assert (= bs!1652 d!6721))

(assert (=> bs!1652 m!32103))

(declare-fun m!32467 () Bool)

(assert (=> bs!1652 m!32467))

(assert (=> b!39393 d!6721))

(declare-fun d!6723 () Bool)

(declare-fun res!23843 () Bool)

(declare-fun e!25251 () Bool)

(assert (=> d!6723 (=> res!23843 e!25251)))

(assert (=> d!6723 (= res!23843 (= (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14815))))

(assert (=> d!6723 (= (arrayContainsKey!0 lt!14723 lt!14815 #b00000000000000000000000000000000) e!25251)))

(declare-fun b!39776 () Bool)

(declare-fun e!25252 () Bool)

(assert (=> b!39776 (= e!25251 e!25252)))

(declare-fun res!23844 () Bool)

(assert (=> b!39776 (=> (not res!23844) (not e!25252))))

(assert (=> b!39776 (= res!23844 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(declare-fun b!39777 () Bool)

(assert (=> b!39777 (= e!25252 (arrayContainsKey!0 lt!14723 lt!14815 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6723 (not res!23843)) b!39776))

(assert (= (and b!39776 res!23844) b!39777))

(assert (=> d!6723 m!31981))

(declare-fun m!32469 () Bool)

(assert (=> b!39777 m!32469))

(assert (=> b!39393 d!6723))

(declare-fun b!39778 () Bool)

(declare-fun e!25254 () SeekEntryResult!181)

(declare-fun e!25255 () SeekEntryResult!181)

(assert (=> b!39778 (= e!25254 e!25255)))

(declare-fun lt!15099 () (_ BitVec 64))

(declare-fun lt!15097 () SeekEntryResult!181)

(assert (=> b!39778 (= lt!15099 (select (arr!1233 lt!14723) (index!2848 lt!15097)))))

(declare-fun c!4760 () Bool)

(assert (=> b!39778 (= c!4760 (= lt!15099 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25253 () SeekEntryResult!181)

(declare-fun b!39779 () Bool)

(assert (=> b!39779 (= e!25253 (seekKeyOrZeroReturnVacant!0 (x!7667 lt!15097) (index!2848 lt!15097) (index!2848 lt!15097) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14723 mask!853))))

(declare-fun d!6725 () Bool)

(declare-fun lt!15098 () SeekEntryResult!181)

(assert (=> d!6725 (and (or ((_ is Undefined!181) lt!15098) (not ((_ is Found!181) lt!15098)) (and (bvsge (index!2847 lt!15098) #b00000000000000000000000000000000) (bvslt (index!2847 lt!15098) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!15098) ((_ is Found!181) lt!15098) (not ((_ is MissingZero!181) lt!15098)) (and (bvsge (index!2846 lt!15098) #b00000000000000000000000000000000) (bvslt (index!2846 lt!15098) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!15098) ((_ is Found!181) lt!15098) ((_ is MissingZero!181) lt!15098) (not ((_ is MissingVacant!181) lt!15098)) (and (bvsge (index!2849 lt!15098) #b00000000000000000000000000000000) (bvslt (index!2849 lt!15098) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!15098) (ite ((_ is Found!181) lt!15098) (= (select (arr!1233 lt!14723) (index!2847 lt!15098)) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!181) lt!15098) (= (select (arr!1233 lt!14723) (index!2846 lt!15098)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!181) lt!15098) (= (select (arr!1233 lt!14723) (index!2849 lt!15098)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6725 (= lt!15098 e!25254)))

(declare-fun c!4761 () Bool)

(assert (=> d!6725 (= c!4761 (and ((_ is Intermediate!181) lt!15097) (undefined!993 lt!15097)))))

(assert (=> d!6725 (= lt!15097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14723 mask!853))))

(assert (=> d!6725 (validMask!0 mask!853)))

(assert (=> d!6725 (= (seekEntryOrOpen!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14723 mask!853) lt!15098)))

(declare-fun b!39780 () Bool)

(assert (=> b!39780 (= e!25253 (MissingZero!181 (index!2848 lt!15097)))))

(declare-fun b!39781 () Bool)

(declare-fun c!4759 () Bool)

(assert (=> b!39781 (= c!4759 (= lt!15099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39781 (= e!25255 e!25253)))

(declare-fun b!39782 () Bool)

(assert (=> b!39782 (= e!25254 Undefined!181)))

(declare-fun b!39783 () Bool)

(assert (=> b!39783 (= e!25255 (Found!181 (index!2848 lt!15097)))))

(assert (= (and d!6725 c!4761) b!39782))

(assert (= (and d!6725 (not c!4761)) b!39778))

(assert (= (and b!39778 c!4760) b!39783))

(assert (= (and b!39778 (not c!4760)) b!39781))

(assert (= (and b!39781 c!4759) b!39780))

(assert (= (and b!39781 (not c!4759)) b!39779))

(declare-fun m!32471 () Bool)

(assert (=> b!39778 m!32471))

(assert (=> b!39779 m!32079))

(declare-fun m!32473 () Bool)

(assert (=> b!39779 m!32473))

(declare-fun m!32475 () Bool)

(assert (=> d!6725 m!32475))

(declare-fun m!32477 () Bool)

(assert (=> d!6725 m!32477))

(assert (=> d!6725 m!32079))

(declare-fun m!32479 () Bool)

(assert (=> d!6725 m!32479))

(assert (=> d!6725 m!32079))

(assert (=> d!6725 m!32477))

(declare-fun m!32481 () Bool)

(assert (=> d!6725 m!32481))

(declare-fun m!32483 () Bool)

(assert (=> d!6725 m!32483))

(assert (=> d!6725 m!31921))

(assert (=> b!39393 d!6725))

(declare-fun b!39784 () Bool)

(declare-fun e!25256 () Bool)

(assert (=> b!39784 (= e!25256 (contains!504 (ite c!4647 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun c!4762 () Bool)

(declare-fun call!3074 () Bool)

(declare-fun bm!3071 () Bool)

(assert (=> bm!3071 (= call!3074 (arrayNoDuplicates!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4762 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4647 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062))) (ite c!4647 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)))))))

(declare-fun b!39785 () Bool)

(declare-fun e!25257 () Bool)

(declare-fun e!25259 () Bool)

(assert (=> b!39785 (= e!25257 e!25259)))

(assert (=> b!39785 (= c!4762 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39786 () Bool)

(declare-fun e!25258 () Bool)

(assert (=> b!39786 (= e!25258 e!25257)))

(declare-fun res!23845 () Bool)

(assert (=> b!39786 (=> (not res!23845) (not e!25257))))

(assert (=> b!39786 (= res!23845 (not e!25256))))

(declare-fun res!23847 () Bool)

(assert (=> b!39786 (=> (not res!23847) (not e!25256))))

(assert (=> b!39786 (= res!23847 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39787 () Bool)

(assert (=> b!39787 (= e!25259 call!3074)))

(declare-fun d!6727 () Bool)

(declare-fun res!23846 () Bool)

(assert (=> d!6727 (=> res!23846 e!25258)))

(assert (=> d!6727 (= res!23846 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(assert (=> d!6727 (= (arrayNoDuplicates!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4647 (Cons!1061 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062))) e!25258)))

(declare-fun b!39788 () Bool)

(assert (=> b!39788 (= e!25259 call!3074)))

(assert (= (and d!6727 (not res!23846)) b!39786))

(assert (= (and b!39786 res!23847) b!39784))

(assert (= (and b!39786 res!23845) b!39785))

(assert (= (and b!39785 c!4762) b!39787))

(assert (= (and b!39785 (not c!4762)) b!39788))

(assert (= (or b!39787 b!39788) bm!3071))

(assert (=> b!39784 m!32455))

(assert (=> b!39784 m!32455))

(declare-fun m!32485 () Bool)

(assert (=> b!39784 m!32485))

(assert (=> bm!3071 m!32455))

(declare-fun m!32487 () Bool)

(assert (=> bm!3071 m!32487))

(assert (=> b!39785 m!32455))

(assert (=> b!39785 m!32455))

(assert (=> b!39785 m!32457))

(assert (=> b!39786 m!32455))

(assert (=> b!39786 m!32455))

(assert (=> b!39786 m!32457))

(assert (=> bm!2989 d!6727))

(declare-fun b!39853 () Bool)

(assert (=> b!39853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> b!39853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1356 (_values!1778 lt!14721))))))

(declare-fun e!25300 () Bool)

(declare-fun lt!15142 () ListLongMap!1065)

(assert (=> b!39853 (= e!25300 (= (apply!54 lt!15142 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) (get!691 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!39854 () Bool)

(declare-fun e!25302 () Bool)

(assert (=> b!39854 (= e!25302 (= lt!15142 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1795 lt!14721))))))

(declare-fun b!39855 () Bool)

(declare-fun lt!15145 () Unit!962)

(declare-fun lt!15143 () Unit!962)

(assert (=> b!39855 (= lt!15145 lt!15143)))

(declare-fun lt!15141 () ListLongMap!1065)

(declare-fun lt!15146 () (_ BitVec 64))

(declare-fun lt!15147 () (_ BitVec 64))

(declare-fun lt!15144 () V!2091)

(assert (=> b!39855 (not (contains!509 (+!63 lt!15141 (tuple2!1485 lt!15147 lt!15144)) lt!15146))))

(declare-fun addStillNotContains!4 (ListLongMap!1065 (_ BitVec 64) V!2091 (_ BitVec 64)) Unit!962)

(assert (=> b!39855 (= lt!15143 (addStillNotContains!4 lt!15141 lt!15147 lt!15144 lt!15146))))

(assert (=> b!39855 (= lt!15146 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!39855 (= lt!15144 (get!691 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!39855 (= lt!15147 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))

(declare-fun call!3080 () ListLongMap!1065)

(assert (=> b!39855 (= lt!15141 call!3080)))

(declare-fun e!25298 () ListLongMap!1065)

(assert (=> b!39855 (= e!25298 (+!63 call!3080 (tuple2!1485 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) (get!691 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!3077 () Bool)

(assert (=> bm!3077 (= call!3080 (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1795 lt!14721)))))

(declare-fun b!39856 () Bool)

(assert (=> b!39856 (= e!25298 call!3080)))

(declare-fun d!6729 () Bool)

(declare-fun e!25301 () Bool)

(assert (=> d!6729 e!25301))

(declare-fun res!23873 () Bool)

(assert (=> d!6729 (=> (not res!23873) (not e!25301))))

(assert (=> d!6729 (= res!23873 (not (contains!509 lt!15142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!25304 () ListLongMap!1065)

(assert (=> d!6729 (= lt!15142 e!25304)))

(declare-fun c!4785 () Bool)

(assert (=> d!6729 (= c!4785 (bvsge #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6729 (validMask!0 (mask!5142 lt!14721))))

(assert (=> d!6729 (= (getCurrentListMapNoExtraKeys!32 (_keys!3266 lt!14721) (_values!1778 lt!14721) (mask!5142 lt!14721) (extraKeys!1686 lt!14721) (zeroValue!1713 lt!14721) (minValue!1713 lt!14721) #b00000000000000000000000000000000 (defaultEntry!1795 lt!14721)) lt!15142)))

(declare-fun b!39857 () Bool)

(declare-fun e!25303 () Bool)

(assert (=> b!39857 (= e!25303 e!25300)))

(assert (=> b!39857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun res!23871 () Bool)

(assert (=> b!39857 (= res!23871 (contains!509 lt!15142 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(assert (=> b!39857 (=> (not res!23871) (not e!25300))))

(declare-fun b!39858 () Bool)

(declare-fun isEmpty!229 (ListLongMap!1065) Bool)

(assert (=> b!39858 (= e!25302 (isEmpty!229 lt!15142))))

(declare-fun b!39859 () Bool)

(assert (=> b!39859 (= e!25303 e!25302)))

(declare-fun c!4784 () Bool)

(assert (=> b!39859 (= c!4784 (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!39860 () Bool)

(declare-fun res!23870 () Bool)

(assert (=> b!39860 (=> (not res!23870) (not e!25301))))

(assert (=> b!39860 (= res!23870 (not (contains!509 lt!15142 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39861 () Bool)

(assert (=> b!39861 (= e!25304 e!25298)))

(declare-fun c!4787 () Bool)

(assert (=> b!39861 (= c!4787 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39862 () Bool)

(declare-fun e!25299 () Bool)

(assert (=> b!39862 (= e!25299 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(assert (=> b!39862 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!39863 () Bool)

(assert (=> b!39863 (= e!25301 e!25303)))

(declare-fun c!4786 () Bool)

(assert (=> b!39863 (= c!4786 e!25299)))

(declare-fun res!23872 () Bool)

(assert (=> b!39863 (=> (not res!23872) (not e!25299))))

(assert (=> b!39863 (= res!23872 (bvslt #b00000000000000000000000000000000 (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!39864 () Bool)

(assert (=> b!39864 (= e!25304 (ListLongMap!1066 Nil!1061))))

(assert (= (and d!6729 c!4785) b!39864))

(assert (= (and d!6729 (not c!4785)) b!39861))

(assert (= (and b!39861 c!4787) b!39855))

(assert (= (and b!39861 (not c!4787)) b!39856))

(assert (= (or b!39855 b!39856) bm!3077))

(assert (= (and d!6729 res!23873) b!39860))

(assert (= (and b!39860 res!23870) b!39863))

(assert (= (and b!39863 res!23872) b!39862))

(assert (= (and b!39863 c!4786) b!39857))

(assert (= (and b!39863 (not c!4786)) b!39859))

(assert (= (and b!39857 res!23871) b!39853))

(assert (= (and b!39859 c!4784) b!39854))

(assert (= (and b!39859 (not c!4784)) b!39858))

(declare-fun b_lambda!2059 () Bool)

(assert (=> (not b_lambda!2059) (not b!39853)))

(assert (=> b!39853 t!3926))

(declare-fun b_and!2355 () Bool)

(assert (= b_and!2353 (and (=> t!3926 result!1441) b_and!2355)))

(declare-fun b_lambda!2061 () Bool)

(assert (=> (not b_lambda!2061) (not b!39855)))

(assert (=> b!39855 t!3926))

(declare-fun b_and!2357 () Bool)

(assert (= b_and!2355 (and (=> t!3926 result!1441) b_and!2357)))

(assert (=> b!39857 m!32093))

(assert (=> b!39857 m!32093))

(declare-fun m!32575 () Bool)

(assert (=> b!39857 m!32575))

(assert (=> b!39855 m!32369))

(declare-fun m!32577 () Bool)

(assert (=> b!39855 m!32577))

(assert (=> b!39855 m!32577))

(declare-fun m!32579 () Bool)

(assert (=> b!39855 m!32579))

(assert (=> b!39855 m!32369))

(assert (=> b!39855 m!32371))

(assert (=> b!39855 m!32373))

(declare-fun m!32581 () Bool)

(assert (=> b!39855 m!32581))

(declare-fun m!32583 () Bool)

(assert (=> b!39855 m!32583))

(assert (=> b!39855 m!32093))

(assert (=> b!39855 m!32371))

(declare-fun m!32585 () Bool)

(assert (=> b!39854 m!32585))

(assert (=> b!39861 m!32093))

(assert (=> b!39861 m!32093))

(assert (=> b!39861 m!32099))

(declare-fun m!32587 () Bool)

(assert (=> b!39860 m!32587))

(assert (=> b!39853 m!32369))

(assert (=> b!39853 m!32369))

(assert (=> b!39853 m!32371))

(assert (=> b!39853 m!32373))

(assert (=> b!39853 m!32093))

(declare-fun m!32589 () Bool)

(assert (=> b!39853 m!32589))

(assert (=> b!39853 m!32093))

(assert (=> b!39853 m!32371))

(declare-fun m!32591 () Bool)

(assert (=> d!6729 m!32591))

(assert (=> d!6729 m!32065))

(declare-fun m!32593 () Bool)

(assert (=> b!39858 m!32593))

(assert (=> b!39862 m!32093))

(assert (=> b!39862 m!32093))

(assert (=> b!39862 m!32099))

(assert (=> bm!3077 m!32585))

(assert (=> bm!3055 d!6729))

(declare-fun d!6767 () Bool)

(declare-fun get!695 (Option!103) V!2091)

(assert (=> d!6767 (= (apply!54 lt!15047 #b1000000000000000000000000000000000000000000000000000000000000000) (get!695 (getValueByKey!97 (toList!548 lt!15047) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1658 () Bool)

(assert (= bs!1658 d!6767))

(declare-fun m!32595 () Bool)

(assert (=> bs!1658 m!32595))

(assert (=> bs!1658 m!32595))

(declare-fun m!32597 () Bool)

(assert (=> bs!1658 m!32597))

(assert (=> b!39683 d!6767))

(declare-fun d!6769 () Bool)

(declare-fun lt!15156 () Bool)

(assert (=> d!6769 (= lt!15156 (select (content!28 (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25309 () Bool)

(assert (=> d!6769 (= lt!15156 e!25309)))

(declare-fun res!23877 () Bool)

(assert (=> d!6769 (=> (not res!23877) (not e!25309))))

(assert (=> d!6769 (= res!23877 ((_ is Cons!1061) (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)))))

(assert (=> d!6769 (= (contains!504 (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!15156)))

(declare-fun b!39871 () Bool)

(declare-fun e!25310 () Bool)

(assert (=> b!39871 (= e!25309 e!25310)))

(declare-fun res!23876 () Bool)

(assert (=> b!39871 (=> res!23876 e!25310)))

(assert (=> b!39871 (= res!23876 (= (h!1632 (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39872 () Bool)

(assert (=> b!39872 (= e!25310 (contains!504 (t!3916 (ite c!4615 (Cons!1061 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6769 res!23877) b!39871))

(assert (= (and b!39871 (not res!23876)) b!39872))

(declare-fun m!32599 () Bool)

(assert (=> d!6769 m!32599))

(assert (=> d!6769 m!32079))

(declare-fun m!32601 () Bool)

(assert (=> d!6769 m!32601))

(assert (=> b!39872 m!32079))

(declare-fun m!32603 () Bool)

(assert (=> b!39872 m!32603))

(assert (=> b!39374 d!6769))

(assert (=> b!39391 d!6715))

(declare-fun d!6771 () Bool)

(assert (=> d!6771 (= (apply!54 lt!15047 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) (get!695 (getValueByKey!97 (toList!548 lt!15047) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000))))))

(declare-fun bs!1659 () Bool)

(assert (= bs!1659 d!6771))

(assert (=> bs!1659 m!32093))

(assert (=> bs!1659 m!32433))

(assert (=> bs!1659 m!32433))

(declare-fun m!32605 () Bool)

(assert (=> bs!1659 m!32605))

(assert (=> b!39696 d!6771))

(declare-fun d!6773 () Bool)

(declare-fun c!4793 () Bool)

(assert (=> d!6773 (= c!4793 ((_ is ValueCellFull!627) (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun e!25317 () V!2091)

(assert (=> d!6773 (= (get!691 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000)) e!25317)))

(declare-fun b!39882 () Bool)

(declare-fun get!696 (ValueCell!627 V!2091) V!2091)

(assert (=> b!39882 (= e!25317 (get!696 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39883 () Bool)

(declare-fun get!697 (ValueCell!627 V!2091) V!2091)

(assert (=> b!39883 (= e!25317 (get!697 (select (arr!1234 (_values!1778 lt!14721)) #b00000000000000000000000000000000) (dynLambda!188 (defaultEntry!1795 lt!14721) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6773 c!4793) b!39882))

(assert (= (and d!6773 (not c!4793)) b!39883))

(assert (=> b!39882 m!32369))

(assert (=> b!39882 m!32371))

(declare-fun m!32615 () Bool)

(assert (=> b!39882 m!32615))

(assert (=> b!39883 m!32369))

(assert (=> b!39883 m!32371))

(declare-fun m!32617 () Bool)

(assert (=> b!39883 m!32617))

(assert (=> b!39696 d!6773))

(declare-fun b!39910 () Bool)

(declare-fun e!25334 () SeekEntryResult!181)

(assert (=> b!39910 (= e!25334 (MissingVacant!181 (index!2848 lt!14828)))))

(declare-fun b!39912 () Bool)

(declare-fun e!25335 () SeekEntryResult!181)

(declare-fun e!25336 () SeekEntryResult!181)

(assert (=> b!39912 (= e!25335 e!25336)))

(declare-fun c!4806 () Bool)

(declare-fun lt!15169 () (_ BitVec 64))

(assert (=> b!39912 (= c!4806 (= lt!15169 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun b!39913 () Bool)

(assert (=> b!39913 (= e!25335 Undefined!181)))

(declare-fun b!39914 () Bool)

(assert (=> b!39914 (= e!25336 (Found!181 (index!2848 lt!14828)))))

(declare-fun b!39915 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39915 (= e!25334 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7667 lt!14828) #b00000000000000000000000000000001) (nextIndex!0 (index!2848 lt!14828) (x!7667 lt!14828) mask!853) (index!2848 lt!14828) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853))))

(declare-fun d!6779 () Bool)

(declare-fun lt!15170 () SeekEntryResult!181)

(assert (=> d!6779 (and (or ((_ is Undefined!181) lt!15170) (not ((_ is Found!181) lt!15170)) (and (bvsge (index!2847 lt!15170) #b00000000000000000000000000000000) (bvslt (index!2847 lt!15170) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!15170) ((_ is Found!181) lt!15170) (not ((_ is MissingVacant!181) lt!15170)) (not (= (index!2849 lt!15170) (index!2848 lt!14828))) (and (bvsge (index!2849 lt!15170) #b00000000000000000000000000000000) (bvslt (index!2849 lt!15170) (size!1355 lt!14723)))) (or ((_ is Undefined!181) lt!15170) (ite ((_ is Found!181) lt!15170) (= (select (arr!1233 lt!14723) (index!2847 lt!15170)) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!181) lt!15170) (= (index!2849 lt!15170) (index!2848 lt!14828)) (= (select (arr!1233 lt!14723) (index!2849 lt!15170)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!6779 (= lt!15170 e!25335)))

(declare-fun c!4808 () Bool)

(assert (=> d!6779 (= c!4808 (bvsge (x!7667 lt!14828) #b01111111111111111111111111111110))))

(assert (=> d!6779 (= lt!15169 (select (arr!1233 lt!14723) (index!2848 lt!14828)))))

(assert (=> d!6779 (validMask!0 mask!853)))

(assert (=> d!6779 (= (seekKeyOrZeroReturnVacant!0 (x!7667 lt!14828) (index!2848 lt!14828) (index!2848 lt!14828) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853) lt!15170)))

(declare-fun b!39911 () Bool)

(declare-fun c!4807 () Bool)

(assert (=> b!39911 (= c!4807 (= lt!15169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39911 (= e!25336 e!25334)))

(assert (= (and d!6779 c!4808) b!39913))

(assert (= (and d!6779 (not c!4808)) b!39912))

(assert (= (and b!39912 c!4806) b!39914))

(assert (= (and b!39912 (not c!4806)) b!39911))

(assert (= (and b!39911 c!4807) b!39910))

(assert (= (and b!39911 (not c!4807)) b!39915))

(declare-fun m!32619 () Bool)

(assert (=> b!39915 m!32619))

(assert (=> b!39915 m!32619))

(assert (=> b!39915 m!31981))

(declare-fun m!32621 () Bool)

(assert (=> b!39915 m!32621))

(declare-fun m!32623 () Bool)

(assert (=> d!6779 m!32623))

(declare-fun m!32625 () Bool)

(assert (=> d!6779 m!32625))

(assert (=> d!6779 m!32121))

(assert (=> d!6779 m!31921))

(assert (=> b!39417 d!6779))

(assert (=> d!6637 d!6719))

(assert (=> b!39387 d!6713))

(assert (=> b!39717 d!6715))

(assert (=> b!39679 d!6713))

(declare-fun d!6781 () Bool)

(assert (=> d!6781 (= (apply!54 lt!15047 #b0000000000000000000000000000000000000000000000000000000000000000) (get!695 (getValueByKey!97 (toList!548 lt!15047) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1660 () Bool)

(assert (= bs!1660 d!6781))

(declare-fun m!32627 () Bool)

(assert (=> bs!1660 m!32627))

(assert (=> bs!1660 m!32627))

(declare-fun m!32629 () Bool)

(assert (=> bs!1660 m!32629))

(assert (=> b!39680 d!6781))

(assert (=> b!39386 d!6713))

(declare-fun d!6783 () Bool)

(declare-fun e!25344 () Bool)

(assert (=> d!6783 e!25344))

(declare-fun res!23895 () Bool)

(assert (=> d!6783 (=> (not res!23895) (not e!25344))))

(declare-fun lt!15186 () ListLongMap!1065)

(assert (=> d!6783 (= res!23895 (contains!509 lt!15186 (_1!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(declare-fun lt!15185 () List!1064)

(assert (=> d!6783 (= lt!15186 (ListLongMap!1066 lt!15185))))

(declare-fun lt!15187 () Unit!962)

(declare-fun lt!15188 () Unit!962)

(assert (=> d!6783 (= lt!15187 lt!15188)))

(assert (=> d!6783 (= (getValueByKey!97 lt!15185 (_1!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!24 (List!1064 (_ BitVec 64) V!2091) Unit!962)

(assert (=> d!6783 (= lt!15188 (lemmaContainsTupThenGetReturnValue!24 lt!15185 (_1!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(declare-fun insertStrictlySorted!21 (List!1064 (_ BitVec 64) V!2091) List!1064)

(assert (=> d!6783 (= lt!15185 (insertStrictlySorted!21 (toList!548 call!3060) (_1!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(assert (=> d!6783 (= (+!63 call!3060 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))) lt!15186)))

(declare-fun b!39933 () Bool)

(declare-fun res!23896 () Bool)

(assert (=> b!39933 (=> (not res!23896) (not e!25344))))

(assert (=> b!39933 (= res!23896 (= (getValueByKey!97 (toList!548 lt!15186) (_1!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))))

(declare-fun b!39934 () Bool)

(declare-fun contains!511 (List!1064 tuple2!1484) Bool)

(assert (=> b!39934 (= e!25344 (contains!511 (toList!548 lt!15186) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))

(assert (= (and d!6783 res!23895) b!39933))

(assert (= (and b!39933 res!23896) b!39934))

(declare-fun m!32639 () Bool)

(assert (=> d!6783 m!32639))

(declare-fun m!32641 () Bool)

(assert (=> d!6783 m!32641))

(declare-fun m!32643 () Bool)

(assert (=> d!6783 m!32643))

(declare-fun m!32645 () Bool)

(assert (=> d!6783 m!32645))

(declare-fun m!32647 () Bool)

(assert (=> b!39933 m!32647))

(declare-fun m!32649 () Bool)

(assert (=> b!39934 m!32649))

(assert (=> b!39678 d!6783))

(declare-fun d!6787 () Bool)

(assert (not d!6787))

(assert (=> b!39384 d!6787))

(declare-fun b!39935 () Bool)

(declare-fun e!25345 () Bool)

(assert (=> b!39935 (= e!25345 (contains!504 (ite c!4648 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) Nil!1062) Nil!1062) (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!4812 () Bool)

(declare-fun bm!3078 () Bool)

(declare-fun call!3081 () Bool)

(assert (=> bm!3078 (= call!3081 (arrayNoDuplicates!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4812 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4648 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) (ite c!4648 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) Nil!1062) Nil!1062))))))

(declare-fun b!39936 () Bool)

(declare-fun e!25346 () Bool)

(declare-fun e!25348 () Bool)

(assert (=> b!39936 (= e!25346 e!25348)))

(assert (=> b!39936 (= c!4812 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39937 () Bool)

(declare-fun e!25347 () Bool)

(assert (=> b!39937 (= e!25347 e!25346)))

(declare-fun res!23897 () Bool)

(assert (=> b!39937 (=> (not res!23897) (not e!25346))))

(assert (=> b!39937 (= res!23897 (not e!25345))))

(declare-fun res!23899 () Bool)

(assert (=> b!39937 (=> (not res!23899) (not e!25345))))

(assert (=> b!39937 (= res!23899 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39938 () Bool)

(assert (=> b!39938 (= e!25348 call!3081)))

(declare-fun d!6791 () Bool)

(declare-fun res!23898 () Bool)

(assert (=> d!6791 (=> res!23898 e!25347)))

(assert (=> d!6791 (= res!23898 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6791 (= (arrayNoDuplicates!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4648 (Cons!1061 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000) Nil!1062) Nil!1062)) e!25347)))

(declare-fun b!39939 () Bool)

(assert (=> b!39939 (= e!25348 call!3081)))

(assert (= (and d!6791 (not res!23898)) b!39937))

(assert (= (and b!39937 res!23899) b!39935))

(assert (= (and b!39937 res!23897) b!39936))

(assert (= (and b!39936 c!4812) b!39938))

(assert (= (and b!39936 (not c!4812)) b!39939))

(assert (= (or b!39938 b!39939) bm!3078))

(assert (=> b!39935 m!32417))

(assert (=> b!39935 m!32417))

(declare-fun m!32655 () Bool)

(assert (=> b!39935 m!32655))

(assert (=> bm!3078 m!32417))

(declare-fun m!32657 () Bool)

(assert (=> bm!3078 m!32657))

(assert (=> b!39936 m!32417))

(assert (=> b!39936 m!32417))

(assert (=> b!39936 m!32419))

(assert (=> b!39937 m!32417))

(assert (=> b!39937 m!32417))

(assert (=> b!39937 m!32419))

(assert (=> bm!2990 d!6791))

(assert (=> d!6631 d!6633))

(declare-fun d!6795 () Bool)

(assert (=> d!6795 (arrayContainsKey!0 lt!14723 lt!14803 #b00000000000000000000000000000000)))

(assert (=> d!6795 true))

(declare-fun _$60!335 () Unit!962)

(assert (=> d!6795 (= (choose!13 lt!14723 lt!14803 #b00000000000000000000000000000000) _$60!335)))

(declare-fun bs!1662 () Bool)

(assert (= bs!1662 d!6795))

(assert (=> bs!1662 m!32025))

(assert (=> d!6631 d!6795))

(assert (=> d!6623 d!6577))

(assert (=> b!39713 d!6713))

(declare-fun d!6801 () Bool)

(declare-fun lt!15196 () Bool)

(assert (=> d!6801 (= lt!15196 (select (content!28 Nil!1062) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun e!25352 () Bool)

(assert (=> d!6801 (= lt!15196 e!25352)))

(declare-fun res!23905 () Bool)

(assert (=> d!6801 (=> (not res!23905) (not e!25352))))

(assert (=> d!6801 (= res!23905 ((_ is Cons!1061) Nil!1062))))

(assert (=> d!6801 (= (contains!504 Nil!1062 (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)) lt!15196)))

(declare-fun b!39944 () Bool)

(declare-fun e!25353 () Bool)

(assert (=> b!39944 (= e!25352 e!25353)))

(declare-fun res!23904 () Bool)

(assert (=> b!39944 (=> res!23904 e!25353)))

(assert (=> b!39944 (= res!23904 (= (h!1632 Nil!1062) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(declare-fun b!39945 () Bool)

(assert (=> b!39945 (= e!25353 (contains!504 (t!3916 Nil!1062) (select (arr!1233 (_keys!3266 lt!14721)) #b00000000000000000000000000000000)))))

(assert (= (and d!6801 res!23905) b!39944))

(assert (= (and b!39944 (not res!23904)) b!39945))

(assert (=> d!6801 m!32087))

(assert (=> d!6801 m!32093))

(declare-fun m!32675 () Bool)

(assert (=> d!6801 m!32675))

(assert (=> b!39945 m!32093))

(declare-fun m!32679 () Bool)

(assert (=> b!39945 m!32679))

(assert (=> b!39385 d!6801))

(declare-fun bm!3079 () Bool)

(declare-fun call!3082 () (_ BitVec 32))

(assert (=> bm!3079 (= call!3082 (arrayCountValidKeys!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!39946 () Bool)

(declare-fun e!25354 () (_ BitVec 32))

(assert (=> b!39946 (= e!25354 (bvadd #b00000000000000000000000000000001 call!3082))))

(declare-fun d!6805 () Bool)

(declare-fun lt!15197 () (_ BitVec 32))

(assert (=> d!6805 (and (bvsge lt!15197 #b00000000000000000000000000000000) (bvsle lt!15197 (bvsub (size!1355 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun e!25355 () (_ BitVec 32))

(assert (=> d!6805 (= lt!15197 e!25355)))

(declare-fun c!4813 () Bool)

(assert (=> d!6805 (= c!4813 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6805 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1355 lt!14723)))))

(assert (=> d!6805 (= (arrayCountValidKeys!0 lt!14723 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15197)))

(declare-fun b!39947 () Bool)

(assert (=> b!39947 (= e!25355 e!25354)))

(declare-fun c!4814 () Bool)

(assert (=> b!39947 (= c!4814 (validKeyInArray!0 (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39948 () Bool)

(assert (=> b!39948 (= e!25354 call!3082)))

(declare-fun b!39949 () Bool)

(assert (=> b!39949 (= e!25355 #b00000000000000000000000000000000)))

(assert (= (and d!6805 c!4813) b!39949))

(assert (= (and d!6805 (not c!4813)) b!39947))

(assert (= (and b!39947 c!4814) b!39946))

(assert (= (and b!39947 (not c!4814)) b!39948))

(assert (= (or b!39946 b!39948) bm!3079))

(declare-fun m!32681 () Bool)

(assert (=> bm!3079 m!32681))

(assert (=> b!39947 m!32455))

(assert (=> b!39947 m!32455))

(assert (=> b!39947 m!32457))

(assert (=> bm!3065 d!6805))

(declare-fun d!6809 () Bool)

(declare-fun e!25356 () Bool)

(assert (=> d!6809 e!25356))

(declare-fun res!23906 () Bool)

(assert (=> d!6809 (=> (not res!23906) (not e!25356))))

(declare-fun lt!15199 () ListLongMap!1065)

(assert (=> d!6809 (= res!23906 (contains!509 lt!15199 (_1!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))))))

(declare-fun lt!15198 () List!1064)

(assert (=> d!6809 (= lt!15199 (ListLongMap!1066 lt!15198))))

(declare-fun lt!15200 () Unit!962)

(declare-fun lt!15201 () Unit!962)

(assert (=> d!6809 (= lt!15200 lt!15201)))

(assert (=> d!6809 (= (getValueByKey!97 lt!15198 (_1!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6809 (= lt!15201 (lemmaContainsTupThenGetReturnValue!24 lt!15198 (_1!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6809 (= lt!15198 (insertStrictlySorted!21 (toList!548 lt!15052) (_1!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6809 (= (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) lt!15199)))

(declare-fun b!39950 () Bool)

(declare-fun res!23907 () Bool)

(assert (=> b!39950 (=> (not res!23907) (not e!25356))))

(assert (=> b!39950 (= res!23907 (= (getValueByKey!97 (toList!548 lt!15199) (_1!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))))))))

(declare-fun b!39951 () Bool)

(assert (=> b!39951 (= e!25356 (contains!511 (toList!548 lt!15199) (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))))))

(assert (= (and d!6809 res!23906) b!39950))

(assert (= (and b!39950 res!23907) b!39951))

(declare-fun m!32683 () Bool)

(assert (=> d!6809 m!32683))

(declare-fun m!32685 () Bool)

(assert (=> d!6809 m!32685))

(declare-fun m!32687 () Bool)

(assert (=> d!6809 m!32687))

(declare-fun m!32689 () Bool)

(assert (=> d!6809 m!32689))

(declare-fun m!32691 () Bool)

(assert (=> b!39950 m!32691))

(declare-fun m!32693 () Bool)

(assert (=> b!39951 m!32693))

(assert (=> b!39676 d!6809))

(assert (=> b!39676 d!6729))

(declare-fun d!6811 () Bool)

(declare-fun e!25361 () Bool)

(assert (=> d!6811 e!25361))

(declare-fun res!23911 () Bool)

(assert (=> d!6811 (=> res!23911 e!25361)))

(declare-fun lt!15205 () Bool)

(assert (=> d!6811 (= res!23911 (not lt!15205))))

(declare-fun lt!15204 () Bool)

(assert (=> d!6811 (= lt!15205 lt!15204)))

(declare-fun lt!15202 () Unit!962)

(declare-fun e!25362 () Unit!962)

(assert (=> d!6811 (= lt!15202 e!25362)))

(declare-fun c!4816 () Bool)

(assert (=> d!6811 (= c!4816 lt!15204)))

(assert (=> d!6811 (= lt!15204 (containsKey!65 (toList!548 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) lt!15048))))

(assert (=> d!6811 (= (contains!509 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) lt!15048) lt!15205)))

(declare-fun b!39957 () Bool)

(declare-fun lt!15203 () Unit!962)

(assert (=> b!39957 (= e!25362 lt!15203)))

(assert (=> b!39957 (= lt!15203 (lemmaContainsKeyImpliesGetValueByKeyDefined!53 (toList!548 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) lt!15048))))

(assert (=> b!39957 (isDefined!54 (getValueByKey!97 (toList!548 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) lt!15048))))

(declare-fun b!39958 () Bool)

(declare-fun Unit!971 () Unit!962)

(assert (=> b!39958 (= e!25362 Unit!971)))

(declare-fun b!39959 () Bool)

(assert (=> b!39959 (= e!25361 (isDefined!54 (getValueByKey!97 (toList!548 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721)))) lt!15048)))))

(assert (= (and d!6811 c!4816) b!39957))

(assert (= (and d!6811 (not c!4816)) b!39958))

(assert (= (and d!6811 (not res!23911)) b!39959))

(declare-fun m!32699 () Bool)

(assert (=> d!6811 m!32699))

(declare-fun m!32701 () Bool)

(assert (=> b!39957 m!32701))

(declare-fun m!32703 () Bool)

(assert (=> b!39957 m!32703))

(assert (=> b!39957 m!32703))

(declare-fun m!32705 () Bool)

(assert (=> b!39957 m!32705))

(assert (=> b!39959 m!32703))

(assert (=> b!39959 m!32703))

(assert (=> b!39959 m!32705))

(assert (=> b!39676 d!6811))

(declare-fun d!6815 () Bool)

(assert (=> d!6815 (= (apply!54 (+!63 lt!15058 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) lt!15054) (get!695 (getValueByKey!97 (toList!548 (+!63 lt!15058 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))) lt!15054)))))

(declare-fun bs!1663 () Bool)

(assert (= bs!1663 d!6815))

(declare-fun m!32707 () Bool)

(assert (=> bs!1663 m!32707))

(assert (=> bs!1663 m!32707))

(declare-fun m!32709 () Bool)

(assert (=> bs!1663 m!32709))

(assert (=> b!39676 d!6815))

(declare-fun d!6817 () Bool)

(assert (=> d!6817 (contains!509 (+!63 lt!15052 (tuple2!1485 lt!15060 (zeroValue!1713 lt!14721))) lt!15048)))

(declare-fun lt!15208 () Unit!962)

(declare-fun choose!244 (ListLongMap!1065 (_ BitVec 64) V!2091 (_ BitVec 64)) Unit!962)

(assert (=> d!6817 (= lt!15208 (choose!244 lt!15052 lt!15060 (zeroValue!1713 lt!14721) lt!15048))))

(assert (=> d!6817 (contains!509 lt!15052 lt!15048)))

(assert (=> d!6817 (= (addStillContains!30 lt!15052 lt!15060 (zeroValue!1713 lt!14721) lt!15048) lt!15208)))

(declare-fun bs!1664 () Bool)

(assert (= bs!1664 d!6817))

(assert (=> bs!1664 m!32333))

(assert (=> bs!1664 m!32333))

(assert (=> bs!1664 m!32359))

(declare-fun m!32711 () Bool)

(assert (=> bs!1664 m!32711))

(declare-fun m!32713 () Bool)

(assert (=> bs!1664 m!32713))

(assert (=> b!39676 d!6817))

(declare-fun d!6819 () Bool)

(assert (=> d!6819 (= (apply!54 (+!63 lt!15053 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) lt!15049) (apply!54 lt!15053 lt!15049))))

(declare-fun lt!15215 () Unit!962)

(declare-fun choose!245 (ListLongMap!1065 (_ BitVec 64) V!2091 (_ BitVec 64)) Unit!962)

(assert (=> d!6819 (= lt!15215 (choose!245 lt!15053 lt!15055 (minValue!1713 lt!14721) lt!15049))))

(declare-fun e!25370 () Bool)

(assert (=> d!6819 e!25370))

(declare-fun res!23918 () Bool)

(assert (=> d!6819 (=> (not res!23918) (not e!25370))))

(assert (=> d!6819 (= res!23918 (contains!509 lt!15053 lt!15049))))

(assert (=> d!6819 (= (addApplyDifferent!30 lt!15053 lt!15055 (minValue!1713 lt!14721) lt!15049) lt!15215)))

(declare-fun b!39970 () Bool)

(assert (=> b!39970 (= e!25370 (not (= lt!15049 lt!15055)))))

(assert (= (and d!6819 res!23918) b!39970))

(assert (=> d!6819 m!32351))

(assert (=> d!6819 m!32351))

(assert (=> d!6819 m!32353))

(declare-fun m!32731 () Bool)

(assert (=> d!6819 m!32731))

(assert (=> d!6819 m!32361))

(declare-fun m!32733 () Bool)

(assert (=> d!6819 m!32733))

(assert (=> b!39676 d!6819))

(declare-fun d!6833 () Bool)

(declare-fun e!25371 () Bool)

(assert (=> d!6833 e!25371))

(declare-fun res!23919 () Bool)

(assert (=> d!6833 (=> (not res!23919) (not e!25371))))

(declare-fun lt!15221 () ListLongMap!1065)

(assert (=> d!6833 (= res!23919 (contains!509 lt!15221 (_1!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))))))

(declare-fun lt!15220 () List!1064)

(assert (=> d!6833 (= lt!15221 (ListLongMap!1066 lt!15220))))

(declare-fun lt!15222 () Unit!962)

(declare-fun lt!15223 () Unit!962)

(assert (=> d!6833 (= lt!15222 lt!15223)))

(assert (=> d!6833 (= (getValueByKey!97 lt!15220 (_1!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))))))

(assert (=> d!6833 (= lt!15223 (lemmaContainsTupThenGetReturnValue!24 lt!15220 (_1!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))))))

(assert (=> d!6833 (= lt!15220 (insertStrictlySorted!21 (toList!548 lt!15053) (_1!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))))))

(assert (=> d!6833 (= (+!63 lt!15053 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) lt!15221)))

(declare-fun b!39971 () Bool)

(declare-fun res!23920 () Bool)

(assert (=> b!39971 (=> (not res!23920) (not e!25371))))

(assert (=> b!39971 (= res!23920 (= (getValueByKey!97 (toList!548 lt!15221) (_1!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))))))))

(declare-fun b!39972 () Bool)

(assert (=> b!39972 (= e!25371 (contains!511 (toList!548 lt!15221) (tuple2!1485 lt!15055 (minValue!1713 lt!14721))))))

(assert (= (and d!6833 res!23919) b!39971))

(assert (= (and b!39971 res!23920) b!39972))

(declare-fun m!32735 () Bool)

(assert (=> d!6833 m!32735))

(declare-fun m!32737 () Bool)

(assert (=> d!6833 m!32737))

(declare-fun m!32739 () Bool)

(assert (=> d!6833 m!32739))

(declare-fun m!32741 () Bool)

(assert (=> d!6833 m!32741))

(declare-fun m!32743 () Bool)

(assert (=> b!39971 m!32743))

(declare-fun m!32745 () Bool)

(assert (=> b!39972 m!32745))

(assert (=> b!39676 d!6833))

(declare-fun d!6835 () Bool)

(declare-fun e!25378 () Bool)

(assert (=> d!6835 e!25378))

(declare-fun res!23921 () Bool)

(assert (=> d!6835 (=> (not res!23921) (not e!25378))))

(declare-fun lt!15225 () ListLongMap!1065)

(assert (=> d!6835 (= res!23921 (contains!509 lt!15225 (_1!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))))))

(declare-fun lt!15224 () List!1064)

(assert (=> d!6835 (= lt!15225 (ListLongMap!1066 lt!15224))))

(declare-fun lt!15226 () Unit!962)

(declare-fun lt!15227 () Unit!962)

(assert (=> d!6835 (= lt!15226 lt!15227)))

(assert (=> d!6835 (= (getValueByKey!97 lt!15224 (_1!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))))))

(assert (=> d!6835 (= lt!15227 (lemmaContainsTupThenGetReturnValue!24 lt!15224 (_1!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))))))

(assert (=> d!6835 (= lt!15224 (insertStrictlySorted!21 (toList!548 lt!15039) (_1!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))))))

(assert (=> d!6835 (= (+!63 lt!15039 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) lt!15225)))

(declare-fun b!39985 () Bool)

(declare-fun res!23922 () Bool)

(assert (=> b!39985 (=> (not res!23922) (not e!25378))))

(assert (=> b!39985 (= res!23922 (= (getValueByKey!97 (toList!548 lt!15225) (_1!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))))))))

(declare-fun b!39986 () Bool)

(assert (=> b!39986 (= e!25378 (contains!511 (toList!548 lt!15225) (tuple2!1485 lt!15045 (minValue!1713 lt!14721))))))

(assert (= (and d!6835 res!23921) b!39985))

(assert (= (and b!39985 res!23922) b!39986))

(declare-fun m!32747 () Bool)

(assert (=> d!6835 m!32747))

(declare-fun m!32749 () Bool)

(assert (=> d!6835 m!32749))

(declare-fun m!32751 () Bool)

(assert (=> d!6835 m!32751))

(declare-fun m!32753 () Bool)

(assert (=> d!6835 m!32753))

(declare-fun m!32755 () Bool)

(assert (=> b!39985 m!32755))

(declare-fun m!32757 () Bool)

(assert (=> b!39986 m!32757))

(assert (=> b!39676 d!6835))

(declare-fun d!6837 () Bool)

(assert (=> d!6837 (= (apply!54 lt!15053 lt!15049) (get!695 (getValueByKey!97 (toList!548 lt!15053) lt!15049)))))

(declare-fun bs!1665 () Bool)

(assert (= bs!1665 d!6837))

(declare-fun m!32759 () Bool)

(assert (=> bs!1665 m!32759))

(assert (=> bs!1665 m!32759))

(declare-fun m!32761 () Bool)

(assert (=> bs!1665 m!32761))

(assert (=> b!39676 d!6837))

(declare-fun d!6839 () Bool)

(assert (=> d!6839 (= (apply!54 lt!15058 lt!15054) (get!695 (getValueByKey!97 (toList!548 lt!15058) lt!15054)))))

(declare-fun bs!1666 () Bool)

(assert (= bs!1666 d!6839))

(declare-fun m!32763 () Bool)

(assert (=> bs!1666 m!32763))

(assert (=> bs!1666 m!32763))

(declare-fun m!32765 () Bool)

(assert (=> bs!1666 m!32765))

(assert (=> b!39676 d!6839))

(declare-fun d!6841 () Bool)

(assert (=> d!6841 (= (apply!54 (+!63 lt!15039 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) lt!15056) (get!695 (getValueByKey!97 (toList!548 (+!63 lt!15039 (tuple2!1485 lt!15045 (minValue!1713 lt!14721)))) lt!15056)))))

(declare-fun bs!1667 () Bool)

(assert (= bs!1667 d!6841))

(declare-fun m!32767 () Bool)

(assert (=> bs!1667 m!32767))

(assert (=> bs!1667 m!32767))

(declare-fun m!32771 () Bool)

(assert (=> bs!1667 m!32771))

(assert (=> b!39676 d!6841))

(declare-fun d!6843 () Bool)

(assert (=> d!6843 (= (apply!54 (+!63 lt!15053 (tuple2!1485 lt!15055 (minValue!1713 lt!14721))) lt!15049) (get!695 (getValueByKey!97 (toList!548 (+!63 lt!15053 (tuple2!1485 lt!15055 (minValue!1713 lt!14721)))) lt!15049)))))

(declare-fun bs!1669 () Bool)

(assert (= bs!1669 d!6843))

(declare-fun m!32775 () Bool)

(assert (=> bs!1669 m!32775))

(assert (=> bs!1669 m!32775))

(declare-fun m!32777 () Bool)

(assert (=> bs!1669 m!32777))

(assert (=> b!39676 d!6843))

(declare-fun d!6847 () Bool)

(assert (=> d!6847 (= (apply!54 (+!63 lt!15058 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) lt!15054) (apply!54 lt!15058 lt!15054))))

(declare-fun lt!15229 () Unit!962)

(assert (=> d!6847 (= lt!15229 (choose!245 lt!15058 lt!15042 (zeroValue!1713 lt!14721) lt!15054))))

(declare-fun e!25379 () Bool)

(assert (=> d!6847 e!25379))

(declare-fun res!23923 () Bool)

(assert (=> d!6847 (=> (not res!23923) (not e!25379))))

(assert (=> d!6847 (= res!23923 (contains!509 lt!15058 lt!15054))))

(assert (=> d!6847 (= (addApplyDifferent!30 lt!15058 lt!15042 (zeroValue!1713 lt!14721) lt!15054) lt!15229)))

(declare-fun b!39987 () Bool)

(assert (=> b!39987 (= e!25379 (not (= lt!15054 lt!15042)))))

(assert (= (and d!6847 res!23923) b!39987))

(assert (=> d!6847 m!32337))

(assert (=> d!6847 m!32337))

(assert (=> d!6847 m!32339))

(declare-fun m!32781 () Bool)

(assert (=> d!6847 m!32781))

(assert (=> d!6847 m!32345))

(declare-fun m!32783 () Bool)

(assert (=> d!6847 m!32783))

(assert (=> b!39676 d!6847))

(declare-fun d!6851 () Bool)

(assert (=> d!6851 (= (apply!54 (+!63 lt!15039 (tuple2!1485 lt!15045 (minValue!1713 lt!14721))) lt!15056) (apply!54 lt!15039 lt!15056))))

(declare-fun lt!15230 () Unit!962)

(assert (=> d!6851 (= lt!15230 (choose!245 lt!15039 lt!15045 (minValue!1713 lt!14721) lt!15056))))

(declare-fun e!25382 () Bool)

(assert (=> d!6851 e!25382))

(declare-fun res!23926 () Bool)

(assert (=> d!6851 (=> (not res!23926) (not e!25382))))

(assert (=> d!6851 (= res!23926 (contains!509 lt!15039 lt!15056))))

(assert (=> d!6851 (= (addApplyDifferent!30 lt!15039 lt!15045 (minValue!1713 lt!14721) lt!15056) lt!15230)))

(declare-fun b!39990 () Bool)

(assert (=> b!39990 (= e!25382 (not (= lt!15056 lt!15045)))))

(assert (= (and d!6851 res!23926) b!39990))

(assert (=> d!6851 m!32341))

(assert (=> d!6851 m!32341))

(assert (=> d!6851 m!32343))

(declare-fun m!32787 () Bool)

(assert (=> d!6851 m!32787))

(assert (=> d!6851 m!32335))

(declare-fun m!32789 () Bool)

(assert (=> d!6851 m!32789))

(assert (=> b!39676 d!6851))

(declare-fun d!6855 () Bool)

(assert (=> d!6855 (= (apply!54 lt!15039 lt!15056) (get!695 (getValueByKey!97 (toList!548 lt!15039) lt!15056)))))

(declare-fun bs!1671 () Bool)

(assert (= bs!1671 d!6855))

(declare-fun m!32791 () Bool)

(assert (=> bs!1671 m!32791))

(assert (=> bs!1671 m!32791))

(declare-fun m!32795 () Bool)

(assert (=> bs!1671 m!32795))

(assert (=> b!39676 d!6855))

(declare-fun d!6857 () Bool)

(declare-fun e!25389 () Bool)

(assert (=> d!6857 e!25389))

(declare-fun res!23927 () Bool)

(assert (=> d!6857 (=> (not res!23927) (not e!25389))))

(declare-fun lt!15237 () ListLongMap!1065)

(assert (=> d!6857 (= res!23927 (contains!509 lt!15237 (_1!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))))))

(declare-fun lt!15236 () List!1064)

(assert (=> d!6857 (= lt!15237 (ListLongMap!1066 lt!15236))))

(declare-fun lt!15238 () Unit!962)

(declare-fun lt!15239 () Unit!962)

(assert (=> d!6857 (= lt!15238 lt!15239)))

(assert (=> d!6857 (= (getValueByKey!97 lt!15236 (_1!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6857 (= lt!15239 (lemmaContainsTupThenGetReturnValue!24 lt!15236 (_1!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6857 (= lt!15236 (insertStrictlySorted!21 (toList!548 lt!15058) (_1!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) (_2!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))))))

(assert (=> d!6857 (= (+!63 lt!15058 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))) lt!15237)))

(declare-fun b!40003 () Bool)

(declare-fun res!23928 () Bool)

(assert (=> b!40003 (=> (not res!23928) (not e!25389))))

(assert (=> b!40003 (= res!23928 (= (getValueByKey!97 (toList!548 lt!15237) (_1!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721)))) (Some!102 (_2!752 (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))))))))

(declare-fun b!40004 () Bool)

(assert (=> b!40004 (= e!25389 (contains!511 (toList!548 lt!15237) (tuple2!1485 lt!15042 (zeroValue!1713 lt!14721))))))

(assert (= (and d!6857 res!23927) b!40003))

(assert (= (and b!40003 res!23928) b!40004))

(declare-fun m!32819 () Bool)

(assert (=> d!6857 m!32819))

(declare-fun m!32823 () Bool)

(assert (=> d!6857 m!32823))

(declare-fun m!32825 () Bool)

(assert (=> d!6857 m!32825))

(declare-fun m!32827 () Bool)

(assert (=> d!6857 m!32827))

(declare-fun m!32829 () Bool)

(assert (=> b!40003 m!32829))

(declare-fun m!32831 () Bool)

(assert (=> b!40004 m!32831))

(assert (=> b!39676 d!6857))

(declare-fun b!40048 () Bool)

(declare-fun lt!15274 () SeekEntryResult!181)

(assert (=> b!40048 (and (bvsge (index!2848 lt!15274) #b00000000000000000000000000000000) (bvslt (index!2848 lt!15274) (size!1355 lt!14723)))))

(declare-fun res!23949 () Bool)

(assert (=> b!40048 (= res!23949 (= (select (arr!1233 lt!14723) (index!2848 lt!15274)) (select (arr!1233 lt!14723) #b00000000000000000000000000000000)))))

(declare-fun e!25416 () Bool)

(assert (=> b!40048 (=> res!23949 e!25416)))

(declare-fun e!25420 () Bool)

(assert (=> b!40048 (= e!25420 e!25416)))

(declare-fun b!40049 () Bool)

(declare-fun e!25417 () Bool)

(assert (=> b!40049 (= e!25417 (bvsge (x!7667 lt!15274) #b01111111111111111111111111111110))))

(declare-fun b!40050 () Bool)

(assert (=> b!40050 (and (bvsge (index!2848 lt!15274) #b00000000000000000000000000000000) (bvslt (index!2848 lt!15274) (size!1355 lt!14723)))))

(declare-fun res!23948 () Bool)

(assert (=> b!40050 (= res!23948 (= (select (arr!1233 lt!14723) (index!2848 lt!15274)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40050 (=> res!23948 e!25416)))

(declare-fun b!40051 () Bool)

(declare-fun e!25419 () SeekEntryResult!181)

(assert (=> b!40051 (= e!25419 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853))))

(declare-fun b!40052 () Bool)

(declare-fun e!25418 () SeekEntryResult!181)

(assert (=> b!40052 (= e!25418 e!25419)))

(declare-fun c!4844 () Bool)

(declare-fun lt!15273 () (_ BitVec 64))

(assert (=> b!40052 (= c!4844 (or (= lt!15273 (select (arr!1233 lt!14723) #b00000000000000000000000000000000)) (= (bvadd lt!15273 lt!15273) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!6865 () Bool)

(assert (=> d!6865 e!25417))

(declare-fun c!4843 () Bool)

(assert (=> d!6865 (= c!4843 (and ((_ is Intermediate!181) lt!15274) (undefined!993 lt!15274)))))

(assert (=> d!6865 (= lt!15274 e!25418)))

(declare-fun c!4842 () Bool)

(assert (=> d!6865 (= c!4842 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!6865 (= lt!15273 (select (arr!1233 lt!14723) (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6865 (validMask!0 mask!853)))

(assert (=> d!6865 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) (select (arr!1233 lt!14723) #b00000000000000000000000000000000) lt!14723 mask!853) lt!15274)))

(declare-fun b!40053 () Bool)

(assert (=> b!40053 (and (bvsge (index!2848 lt!15274) #b00000000000000000000000000000000) (bvslt (index!2848 lt!15274) (size!1355 lt!14723)))))

(assert (=> b!40053 (= e!25416 (= (select (arr!1233 lt!14723) (index!2848 lt!15274)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40054 () Bool)

(assert (=> b!40054 (= e!25418 (Intermediate!181 true (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!40055 () Bool)

(assert (=> b!40055 (= e!25417 e!25420)))

(declare-fun res!23947 () Bool)

(assert (=> b!40055 (= res!23947 (and ((_ is Intermediate!181) lt!15274) (not (undefined!993 lt!15274)) (bvslt (x!7667 lt!15274) #b01111111111111111111111111111110) (bvsge (x!7667 lt!15274) #b00000000000000000000000000000000) (bvsge (x!7667 lt!15274) #b00000000000000000000000000000000)))))

(assert (=> b!40055 (=> (not res!23947) (not e!25420))))

(declare-fun b!40056 () Bool)

(assert (=> b!40056 (= e!25419 (Intermediate!181 false (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(assert (= (and d!6865 c!4842) b!40054))

(assert (= (and d!6865 (not c!4842)) b!40052))

(assert (= (and b!40052 c!4844) b!40056))

(assert (= (and b!40052 (not c!4844)) b!40051))

(assert (= (and d!6865 c!4843) b!40049))

(assert (= (and d!6865 (not c!4843)) b!40055))

(assert (= (and b!40055 res!23947) b!40048))

(assert (= (and b!40048 (not res!23949)) b!40050))

(assert (= (and b!40050 (not res!23948)) b!40053))

(assert (=> b!40051 m!32127))

(declare-fun m!32895 () Bool)

(assert (=> b!40051 m!32895))

(assert (=> b!40051 m!32895))

(assert (=> b!40051 m!31981))

(declare-fun m!32897 () Bool)

(assert (=> b!40051 m!32897))

(declare-fun m!32899 () Bool)

(assert (=> b!40048 m!32899))

(assert (=> b!40050 m!32899))

(assert (=> b!40053 m!32899))

(assert (=> d!6865 m!32127))

(declare-fun m!32901 () Bool)

(assert (=> d!6865 m!32901))

(assert (=> d!6865 m!31921))

(assert (=> d!6635 d!6865))

(declare-fun d!6887 () Bool)

(declare-fun lt!15280 () (_ BitVec 32))

(declare-fun lt!15279 () (_ BitVec 32))

(assert (=> d!6887 (= lt!15280 (bvmul (bvxor lt!15279 (bvlshr lt!15279 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6887 (= lt!15279 ((_ extract 31 0) (bvand (bvxor (select (arr!1233 lt!14723) #b00000000000000000000000000000000) (bvlshr (select (arr!1233 lt!14723) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6887 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!23950 (let ((h!1636 ((_ extract 31 0) (bvand (bvxor (select (arr!1233 lt!14723) #b00000000000000000000000000000000) (bvlshr (select (arr!1233 lt!14723) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7691 (bvmul (bvxor h!1636 (bvlshr h!1636 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7691 (bvlshr x!7691 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!23950 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!23950 #b00000000000000000000000000000000))))))

(assert (=> d!6887 (= (toIndex!0 (select (arr!1233 lt!14723) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!15280 (bvlshr lt!15280 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6635 d!6887))

(assert (=> d!6635 d!6553))

(declare-fun d!6889 () Bool)

(declare-fun e!25421 () Bool)

(assert (=> d!6889 e!25421))

(declare-fun res!23951 () Bool)

(assert (=> d!6889 (=> (not res!23951) (not e!25421))))

(declare-fun lt!15282 () ListLongMap!1065)

(assert (=> d!6889 (= res!23951 (contains!509 lt!15282 (_1!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))))

(declare-fun lt!15281 () List!1064)

(assert (=> d!6889 (= lt!15282 (ListLongMap!1066 lt!15281))))

(declare-fun lt!15283 () Unit!962)

(declare-fun lt!15284 () Unit!962)

(assert (=> d!6889 (= lt!15283 lt!15284)))

(assert (=> d!6889 (= (getValueByKey!97 lt!15281 (_1!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))) (Some!102 (_2!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))))

(assert (=> d!6889 (= lt!15284 (lemmaContainsTupThenGetReturnValue!24 lt!15281 (_1!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))) (_2!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))))

(assert (=> d!6889 (= lt!15281 (insertStrictlySorted!21 (toList!548 (ite c!4731 call!3062 (ite c!4736 call!3059 call!3058))) (_1!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))) (_2!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))))))

(assert (=> d!6889 (= (+!63 (ite c!4731 call!3062 (ite c!4736 call!3059 call!3058)) (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))) lt!15282)))

(declare-fun b!40057 () Bool)

(declare-fun res!23952 () Bool)

(assert (=> b!40057 (=> (not res!23952) (not e!25421))))

(assert (=> b!40057 (= res!23952 (= (getValueByKey!97 (toList!548 lt!15282) (_1!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721))))) (Some!102 (_2!752 (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))))

(declare-fun b!40058 () Bool)

(assert (=> b!40058 (= e!25421 (contains!511 (toList!548 lt!15282) (ite (or c!4731 c!4736) (tuple2!1485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1713 lt!14721)) (tuple2!1485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1713 lt!14721)))))))

(assert (= (and d!6889 res!23951) b!40057))

(assert (= (and b!40057 res!23952) b!40058))

(declare-fun m!32903 () Bool)

(assert (=> d!6889 m!32903))

(declare-fun m!32905 () Bool)

(assert (=> d!6889 m!32905))

(declare-fun m!32907 () Bool)

(assert (=> d!6889 m!32907))

(declare-fun m!32909 () Bool)

(assert (=> d!6889 m!32909))

(declare-fun m!32911 () Bool)

(assert (=> b!40057 m!32911))

(declare-fun m!32913 () Bool)

(assert (=> b!40058 m!32913))

(assert (=> bm!3060 d!6889))

(declare-fun d!6891 () Bool)

(declare-fun e!25422 () Bool)

(assert (=> d!6891 e!25422))

(declare-fun res!23953 () Bool)

(assert (=> d!6891 (=> res!23953 e!25422)))

(declare-fun lt!15288 () Bool)

(assert (=> d!6891 (= res!23953 (not lt!15288))))

(declare-fun lt!15287 () Bool)

(assert (=> d!6891 (= lt!15288 lt!15287)))

(declare-fun lt!15285 () Unit!962)

(declare-fun e!25423 () Unit!962)

(assert (=> d!6891 (= lt!15285 e!25423)))

(declare-fun c!4845 () Bool)

(assert (=> d!6891 (= c!4845 lt!15287)))

(assert (=> d!6891 (= lt!15287 (containsKey!65 (toList!548 lt!15047) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6891 (= (contains!509 lt!15047 #b1000000000000000000000000000000000000000000000000000000000000000) lt!15288)))

(declare-fun b!40059 () Bool)

(declare-fun lt!15286 () Unit!962)

(assert (=> b!40059 (= e!25423 lt!15286)))

(assert (=> b!40059 (= lt!15286 (lemmaContainsKeyImpliesGetValueByKeyDefined!53 (toList!548 lt!15047) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40059 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40060 () Bool)

(declare-fun Unit!974 () Unit!962)

(assert (=> b!40060 (= e!25423 Unit!974)))

(declare-fun b!40061 () Bool)

(assert (=> b!40061 (= e!25422 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6891 c!4845) b!40059))

(assert (= (and d!6891 (not c!4845)) b!40060))

(assert (= (and d!6891 (not res!23953)) b!40061))

(declare-fun m!32915 () Bool)

(assert (=> d!6891 m!32915))

(declare-fun m!32917 () Bool)

(assert (=> b!40059 m!32917))

(assert (=> b!40059 m!32595))

(assert (=> b!40059 m!32595))

(declare-fun m!32919 () Bool)

(assert (=> b!40059 m!32919))

(assert (=> b!40061 m!32595))

(assert (=> b!40061 m!32595))

(assert (=> b!40061 m!32919))

(assert (=> bm!3058 d!6891))

(declare-fun d!6893 () Bool)

(declare-fun e!25424 () Bool)

(assert (=> d!6893 e!25424))

(declare-fun res!23954 () Bool)

(assert (=> d!6893 (=> res!23954 e!25424)))

(declare-fun lt!15292 () Bool)

(assert (=> d!6893 (= res!23954 (not lt!15292))))

(declare-fun lt!15291 () Bool)

(assert (=> d!6893 (= lt!15292 lt!15291)))

(declare-fun lt!15289 () Unit!962)

(declare-fun e!25425 () Unit!962)

(assert (=> d!6893 (= lt!15289 e!25425)))

(declare-fun c!4846 () Bool)

(assert (=> d!6893 (= c!4846 lt!15291)))

(assert (=> d!6893 (= lt!15291 (containsKey!65 (toList!548 lt!15047) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6893 (= (contains!509 lt!15047 #b0000000000000000000000000000000000000000000000000000000000000000) lt!15292)))

(declare-fun b!40062 () Bool)

(declare-fun lt!15290 () Unit!962)

(assert (=> b!40062 (= e!25425 lt!15290)))

(assert (=> b!40062 (= lt!15290 (lemmaContainsKeyImpliesGetValueByKeyDefined!53 (toList!548 lt!15047) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40062 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40063 () Bool)

(declare-fun Unit!975 () Unit!962)

(assert (=> b!40063 (= e!25425 Unit!975)))

(declare-fun b!40064 () Bool)

(assert (=> b!40064 (= e!25424 (isDefined!54 (getValueByKey!97 (toList!548 lt!15047) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6893 c!4846) b!40062))

(assert (= (and d!6893 (not c!4846)) b!40063))

(assert (= (and d!6893 (not res!23954)) b!40064))

(declare-fun m!32921 () Bool)

(assert (=> d!6893 m!32921))

(declare-fun m!32923 () Bool)

(assert (=> b!40062 m!32923))

(assert (=> b!40062 m!32627))

(assert (=> b!40062 m!32627))

(declare-fun m!32925 () Bool)

(assert (=> b!40062 m!32925))

(assert (=> b!40064 m!32627))

(assert (=> b!40064 m!32627))

(assert (=> b!40064 m!32925))

(assert (=> bm!3059 d!6893))

(declare-fun bm!3083 () Bool)

(declare-fun call!3086 () (_ BitVec 32))

(assert (=> bm!3083 (= call!3086 (arrayCountValidKeys!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(declare-fun b!40065 () Bool)

(declare-fun e!25426 () (_ BitVec 32))

(assert (=> b!40065 (= e!25426 (bvadd #b00000000000000000000000000000001 call!3086))))

(declare-fun d!6895 () Bool)

(declare-fun lt!15293 () (_ BitVec 32))

(assert (=> d!6895 (and (bvsge lt!15293 #b00000000000000000000000000000000) (bvsle lt!15293 (bvsub (size!1355 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!25427 () (_ BitVec 32))

(assert (=> d!6895 (= lt!15293 e!25427)))

(declare-fun c!4847 () Bool)

(assert (=> d!6895 (= c!4847 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6895 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1355 (_keys!3266 lt!14721)) (size!1355 (_keys!3266 lt!14721))))))

(assert (=> d!6895 (= (arrayCountValidKeys!0 (_keys!3266 lt!14721) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1355 (_keys!3266 lt!14721))) lt!15293)))

(declare-fun b!40066 () Bool)

(assert (=> b!40066 (= e!25427 e!25426)))

(declare-fun c!4848 () Bool)

(assert (=> b!40066 (= c!4848 (validKeyInArray!0 (select (arr!1233 (_keys!3266 lt!14721)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40067 () Bool)

(assert (=> b!40067 (= e!25426 call!3086)))

(declare-fun b!40068 () Bool)

(assert (=> b!40068 (= e!25427 #b00000000000000000000000000000000)))

(assert (= (and d!6895 c!4847) b!40068))

(assert (= (and d!6895 (not c!4847)) b!40066))

(assert (= (and b!40066 c!4848) b!40065))

(assert (= (and b!40066 (not c!4848)) b!40067))

(assert (= (or b!40065 b!40067) bm!3083))

(declare-fun m!32927 () Bool)

(assert (=> bm!3083 m!32927))

(assert (=> b!40066 m!32417))

(assert (=> b!40066 m!32417))

(assert (=> b!40066 m!32419))

(assert (=> bm!3064 d!6895))

(declare-fun d!6897 () Bool)

(declare-fun res!23955 () Bool)

(declare-fun e!25428 () Bool)

(assert (=> d!6897 (=> res!23955 e!25428)))

(assert (=> d!6897 (= res!23955 (= (select (arr!1233 lt!14723) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14803))))

(assert (=> d!6897 (= (arrayContainsKey!0 lt!14723 lt!14803 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!25428)))

(declare-fun b!40069 () Bool)

(declare-fun e!25429 () Bool)

(assert (=> b!40069 (= e!25428 e!25429)))

(declare-fun res!23956 () Bool)

(assert (=> b!40069 (=> (not res!23956) (not e!25429))))

(assert (=> b!40069 (= res!23956 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1355 lt!14723)))))

(declare-fun b!40070 () Bool)

(assert (=> b!40070 (= e!25429 (arrayContainsKey!0 lt!14723 lt!14803 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!6897 (not res!23955)) b!40069))

(assert (= (and b!40069 res!23956) b!40070))

(assert (=> d!6897 m!32079))

(declare-fun m!32929 () Bool)

(assert (=> b!40070 m!32929))

(assert (=> b!39403 d!6897))

(assert (=> b!39368 d!6699))

(declare-fun b_lambda!2063 () Bool)

(assert (= b_lambda!2057 (or (and start!5508 b_free!1359 (= defaultEntry!470 (defaultEntry!1795 lt!14721))) b_lambda!2063)))

(check-sat (not d!6819) (not b!39752) (not d!6711) (not d!6857) (not bm!3083) (not b!39761) (not d!6839) (not b!40004) (not b!39986) (not b!39784) (not d!6705) tp_is_empty!1749 (not b!39915) (not b!39934) (not b!39957) (not d!6833) (not b!39947) (not d!6721) (not d!6809) (not b!39959) (not b!39858) (not b!40064) (not d!6779) (not b!39872) (not d!6801) (not b!39765) (not bm!3071) (not b!39763) (not b!40066) (not d!6707) (not b!39861) (not d!6843) (not bm!3078) (not b!39857) (not d!6893) (not d!6817) (not d!6767) (not d!6781) (not b_next!1359) (not b!39775) (not bm!3069) (not b!40003) (not b!39935) (not b!39937) (not b!40057) (not b!39779) (not d!6795) (not b!39862) (not b!40061) (not b!39773) (not b!40070) (not d!6841) (not b!40059) (not d!6815) (not d!6889) (not b!39855) (not b!39971) (not b!40058) (not d!6769) (not b_lambda!2063) (not bm!3079) (not b!40062) (not d!6891) (not b!39945) (not b!39860) (not bm!3070) (not b!39951) (not d!6865) (not d!6837) (not d!6835) (not d!6783) (not b_lambda!2059) (not b!39853) (not b!39854) (not d!6771) (not b!40051) b_and!2357 (not d!6729) (not b!39972) (not b!39786) (not b_lambda!2061) (not d!6811) (not b!39985) (not b!39785) (not b_lambda!2049) (not b!39777) (not bm!3077) (not d!6855) (not b!39767) (not b!39754) (not b!39936) (not d!6851) (not b!39883) (not b!39933) (not b!39950) (not d!6725) (not b!39882) (not d!6847))
(check-sat b_and!2357 (not b_next!1359))
