; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75612 () Bool)

(assert start!75612)

(declare-fun b!888803 () Bool)

(declare-fun b_free!15597 () Bool)

(declare-fun b_next!15597 () Bool)

(assert (=> b!888803 (= b_free!15597 (not b_next!15597))))

(declare-fun tp!54750 () Bool)

(declare-fun b_and!25855 () Bool)

(assert (=> b!888803 (= tp!54750 b_and!25855)))

(declare-fun mapIsEmpty!28431 () Bool)

(declare-fun mapRes!28431 () Bool)

(assert (=> mapIsEmpty!28431 mapRes!28431))

(declare-fun mapNonEmpty!28431 () Bool)

(declare-fun tp!54749 () Bool)

(declare-fun e!495377 () Bool)

(assert (=> mapNonEmpty!28431 (= mapRes!28431 (and tp!54749 e!495377))))

(declare-fun mapKey!28431 () (_ BitVec 32))

(declare-datatypes ((V!28865 0))(
  ( (V!28866 (val!9013 Int)) )
))
(declare-datatypes ((ValueCell!8481 0))(
  ( (ValueCellFull!8481 (v!11485 V!28865)) (EmptyCell!8481) )
))
(declare-fun mapValue!28431 () ValueCell!8481)

(declare-datatypes ((array!51810 0))(
  ( (array!51811 (arr!24910 (Array (_ BitVec 32) (_ BitVec 64))) (size!25353 (_ BitVec 32))) )
))
(declare-datatypes ((array!51812 0))(
  ( (array!51813 (arr!24911 (Array (_ BitVec 32) ValueCell!8481)) (size!25354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3978 0))(
  ( (LongMapFixedSize!3979 (defaultEntry!5186 Int) (mask!25613 (_ BitVec 32)) (extraKeys!4880 (_ BitVec 32)) (zeroValue!4984 V!28865) (minValue!4984 V!28865) (_size!2044 (_ BitVec 32)) (_keys!9863 array!51810) (_values!5171 array!51812) (_vacant!2044 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3978)

(declare-fun mapRest!28431 () (Array (_ BitVec 32) ValueCell!8481))

(assert (=> mapNonEmpty!28431 (= (arr!24911 (_values!5171 thiss!1181)) (store mapRest!28431 mapKey!28431 mapValue!28431))))

(declare-fun b!888798 () Bool)

(declare-fun res!602546 () Bool)

(declare-fun e!495374 () Bool)

(assert (=> b!888798 (=> (not res!602546) (not e!495374))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888798 (= res!602546 (not (= key!785 (bvneg key!785))))))

(declare-fun b!888799 () Bool)

(declare-fun e!495375 () Bool)

(declare-fun tp_is_empty!17925 () Bool)

(assert (=> b!888799 (= e!495375 tp_is_empty!17925)))

(declare-fun res!602547 () Bool)

(assert (=> start!75612 (=> (not res!602547) (not e!495374))))

(declare-fun valid!1539 (LongMapFixedSize!3978) Bool)

(assert (=> start!75612 (= res!602547 (valid!1539 thiss!1181))))

(assert (=> start!75612 e!495374))

(declare-fun e!495376 () Bool)

(assert (=> start!75612 e!495376))

(assert (=> start!75612 true))

(declare-fun b!888800 () Bool)

(declare-fun e!495379 () Bool)

(assert (=> b!888800 (= e!495379 (and e!495375 mapRes!28431))))

(declare-fun condMapEmpty!28431 () Bool)

(declare-fun mapDefault!28431 () ValueCell!8481)

(assert (=> b!888800 (= condMapEmpty!28431 (= (arr!24911 (_values!5171 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8481)) mapDefault!28431)))))

(declare-fun b!888801 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!888801 (= e!495374 (not (validMask!0 (mask!25613 thiss!1181))))))

(declare-fun b!888802 () Bool)

(assert (=> b!888802 (= e!495377 tp_is_empty!17925)))

(declare-fun array_inv!19570 (array!51810) Bool)

(declare-fun array_inv!19571 (array!51812) Bool)

(assert (=> b!888803 (= e!495376 (and tp!54750 tp_is_empty!17925 (array_inv!19570 (_keys!9863 thiss!1181)) (array_inv!19571 (_values!5171 thiss!1181)) e!495379))))

(assert (= (and start!75612 res!602547) b!888798))

(assert (= (and b!888798 res!602546) b!888801))

(assert (= (and b!888800 condMapEmpty!28431) mapIsEmpty!28431))

(assert (= (and b!888800 (not condMapEmpty!28431)) mapNonEmpty!28431))

(get-info :version)

(assert (= (and mapNonEmpty!28431 ((_ is ValueCellFull!8481) mapValue!28431)) b!888802))

(assert (= (and b!888800 ((_ is ValueCellFull!8481) mapDefault!28431)) b!888799))

(assert (= b!888803 b!888800))

(assert (= start!75612 b!888803))

(declare-fun m!828057 () Bool)

(assert (=> mapNonEmpty!28431 m!828057))

(declare-fun m!828059 () Bool)

(assert (=> start!75612 m!828059))

(declare-fun m!828061 () Bool)

(assert (=> b!888801 m!828061))

(declare-fun m!828063 () Bool)

(assert (=> b!888803 m!828063))

(declare-fun m!828065 () Bool)

(assert (=> b!888803 m!828065))

(check-sat (not start!75612) (not mapNonEmpty!28431) b_and!25855 (not b!888801) (not b!888803) tp_is_empty!17925 (not b_next!15597))
(check-sat b_and!25855 (not b_next!15597))
(get-model)

(declare-fun d!110041 () Bool)

(assert (=> d!110041 (= (array_inv!19570 (_keys!9863 thiss!1181)) (bvsge (size!25353 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888803 d!110041))

(declare-fun d!110043 () Bool)

(assert (=> d!110043 (= (array_inv!19571 (_values!5171 thiss!1181)) (bvsge (size!25354 (_values!5171 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888803 d!110043))

(declare-fun d!110045 () Bool)

(declare-fun res!602560 () Bool)

(declare-fun e!495400 () Bool)

(assert (=> d!110045 (=> (not res!602560) (not e!495400))))

(declare-fun simpleValid!291 (LongMapFixedSize!3978) Bool)

(assert (=> d!110045 (= res!602560 (simpleValid!291 thiss!1181))))

(assert (=> d!110045 (= (valid!1539 thiss!1181) e!495400)))

(declare-fun b!888828 () Bool)

(declare-fun res!602561 () Bool)

(assert (=> b!888828 (=> (not res!602561) (not e!495400))))

(declare-fun arrayCountValidKeys!0 (array!51810 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888828 (= res!602561 (= (arrayCountValidKeys!0 (_keys!9863 thiss!1181) #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))) (_size!2044 thiss!1181)))))

(declare-fun b!888829 () Bool)

(declare-fun res!602562 () Bool)

(assert (=> b!888829 (=> (not res!602562) (not e!495400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51810 (_ BitVec 32)) Bool)

(assert (=> b!888829 (= res!602562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9863 thiss!1181) (mask!25613 thiss!1181)))))

(declare-fun b!888830 () Bool)

(declare-datatypes ((List!17778 0))(
  ( (Nil!17775) (Cons!17774 (h!18905 (_ BitVec 64)) (t!25085 List!17778)) )
))
(declare-fun arrayNoDuplicates!0 (array!51810 (_ BitVec 32) List!17778) Bool)

(assert (=> b!888830 (= e!495400 (arrayNoDuplicates!0 (_keys!9863 thiss!1181) #b00000000000000000000000000000000 Nil!17775))))

(assert (= (and d!110045 res!602560) b!888828))

(assert (= (and b!888828 res!602561) b!888829))

(assert (= (and b!888829 res!602562) b!888830))

(declare-fun m!828077 () Bool)

(assert (=> d!110045 m!828077))

(declare-fun m!828079 () Bool)

(assert (=> b!888828 m!828079))

(declare-fun m!828081 () Bool)

(assert (=> b!888829 m!828081))

(declare-fun m!828083 () Bool)

(assert (=> b!888830 m!828083))

(assert (=> start!75612 d!110045))

(declare-fun d!110047 () Bool)

(assert (=> d!110047 (= (validMask!0 (mask!25613 thiss!1181)) (and (or (= (mask!25613 thiss!1181) #b00000000000000000000000000000111) (= (mask!25613 thiss!1181) #b00000000000000000000000000001111) (= (mask!25613 thiss!1181) #b00000000000000000000000000011111) (= (mask!25613 thiss!1181) #b00000000000000000000000000111111) (= (mask!25613 thiss!1181) #b00000000000000000000000001111111) (= (mask!25613 thiss!1181) #b00000000000000000000000011111111) (= (mask!25613 thiss!1181) #b00000000000000000000000111111111) (= (mask!25613 thiss!1181) #b00000000000000000000001111111111) (= (mask!25613 thiss!1181) #b00000000000000000000011111111111) (= (mask!25613 thiss!1181) #b00000000000000000000111111111111) (= (mask!25613 thiss!1181) #b00000000000000000001111111111111) (= (mask!25613 thiss!1181) #b00000000000000000011111111111111) (= (mask!25613 thiss!1181) #b00000000000000000111111111111111) (= (mask!25613 thiss!1181) #b00000000000000001111111111111111) (= (mask!25613 thiss!1181) #b00000000000000011111111111111111) (= (mask!25613 thiss!1181) #b00000000000000111111111111111111) (= (mask!25613 thiss!1181) #b00000000000001111111111111111111) (= (mask!25613 thiss!1181) #b00000000000011111111111111111111) (= (mask!25613 thiss!1181) #b00000000000111111111111111111111) (= (mask!25613 thiss!1181) #b00000000001111111111111111111111) (= (mask!25613 thiss!1181) #b00000000011111111111111111111111) (= (mask!25613 thiss!1181) #b00000000111111111111111111111111) (= (mask!25613 thiss!1181) #b00000001111111111111111111111111) (= (mask!25613 thiss!1181) #b00000011111111111111111111111111) (= (mask!25613 thiss!1181) #b00000111111111111111111111111111) (= (mask!25613 thiss!1181) #b00001111111111111111111111111111) (= (mask!25613 thiss!1181) #b00011111111111111111111111111111) (= (mask!25613 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25613 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!888801 d!110047))

(declare-fun mapIsEmpty!28437 () Bool)

(declare-fun mapRes!28437 () Bool)

(assert (=> mapIsEmpty!28437 mapRes!28437))

(declare-fun condMapEmpty!28437 () Bool)

(declare-fun mapDefault!28437 () ValueCell!8481)

(assert (=> mapNonEmpty!28431 (= condMapEmpty!28437 (= mapRest!28431 ((as const (Array (_ BitVec 32) ValueCell!8481)) mapDefault!28437)))))

(declare-fun e!495406 () Bool)

(assert (=> mapNonEmpty!28431 (= tp!54749 (and e!495406 mapRes!28437))))

(declare-fun mapNonEmpty!28437 () Bool)

(declare-fun tp!54759 () Bool)

(declare-fun e!495405 () Bool)

(assert (=> mapNonEmpty!28437 (= mapRes!28437 (and tp!54759 e!495405))))

(declare-fun mapValue!28437 () ValueCell!8481)

(declare-fun mapKey!28437 () (_ BitVec 32))

(declare-fun mapRest!28437 () (Array (_ BitVec 32) ValueCell!8481))

(assert (=> mapNonEmpty!28437 (= mapRest!28431 (store mapRest!28437 mapKey!28437 mapValue!28437))))

(declare-fun b!888838 () Bool)

(assert (=> b!888838 (= e!495406 tp_is_empty!17925)))

(declare-fun b!888837 () Bool)

(assert (=> b!888837 (= e!495405 tp_is_empty!17925)))

(assert (= (and mapNonEmpty!28431 condMapEmpty!28437) mapIsEmpty!28437))

(assert (= (and mapNonEmpty!28431 (not condMapEmpty!28437)) mapNonEmpty!28437))

(assert (= (and mapNonEmpty!28437 ((_ is ValueCellFull!8481) mapValue!28437)) b!888837))

(assert (= (and mapNonEmpty!28431 ((_ is ValueCellFull!8481) mapDefault!28437)) b!888838))

(declare-fun m!828085 () Bool)

(assert (=> mapNonEmpty!28437 m!828085))

(check-sat (not b!888830) (not b!888828) b_and!25855 (not mapNonEmpty!28437) (not d!110045) tp_is_empty!17925 (not b!888829) (not b_next!15597))
(check-sat b_and!25855 (not b_next!15597))
(get-model)

(declare-fun b!888847 () Bool)

(declare-fun e!495415 () Bool)

(declare-fun call!39495 () Bool)

(assert (=> b!888847 (= e!495415 call!39495)))

(declare-fun b!888848 () Bool)

(declare-fun e!495414 () Bool)

(assert (=> b!888848 (= e!495415 e!495414)))

(declare-fun lt!401920 () (_ BitVec 64))

(assert (=> b!888848 (= lt!401920 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30243 0))(
  ( (Unit!30244) )
))
(declare-fun lt!401922 () Unit!30243)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51810 (_ BitVec 64) (_ BitVec 32)) Unit!30243)

(assert (=> b!888848 (= lt!401922 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9863 thiss!1181) lt!401920 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!888848 (arrayContainsKey!0 (_keys!9863 thiss!1181) lt!401920 #b00000000000000000000000000000000)))

(declare-fun lt!401921 () Unit!30243)

(assert (=> b!888848 (= lt!401921 lt!401922)))

(declare-fun res!602567 () Bool)

(declare-datatypes ((SeekEntryResult!8758 0))(
  ( (MissingZero!8758 (index!37402 (_ BitVec 32))) (Found!8758 (index!37403 (_ BitVec 32))) (Intermediate!8758 (undefined!9570 Bool) (index!37404 (_ BitVec 32)) (x!75433 (_ BitVec 32))) (Undefined!8758) (MissingVacant!8758 (index!37405 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51810 (_ BitVec 32)) SeekEntryResult!8758)

(assert (=> b!888848 (= res!602567 (= (seekEntryOrOpen!0 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000) (_keys!9863 thiss!1181) (mask!25613 thiss!1181)) (Found!8758 #b00000000000000000000000000000000)))))

(assert (=> b!888848 (=> (not res!602567) (not e!495414))))

(declare-fun b!888849 () Bool)

(assert (=> b!888849 (= e!495414 call!39495)))

(declare-fun b!888850 () Bool)

(declare-fun e!495413 () Bool)

(assert (=> b!888850 (= e!495413 e!495415)))

(declare-fun c!93842 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!888850 (= c!93842 (validKeyInArray!0 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39492 () Bool)

(assert (=> bm!39492 (= call!39495 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!9863 thiss!1181) (mask!25613 thiss!1181)))))

(declare-fun d!110049 () Bool)

(declare-fun res!602568 () Bool)

(assert (=> d!110049 (=> res!602568 e!495413)))

(assert (=> d!110049 (= res!602568 (bvsge #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))))))

(assert (=> d!110049 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9863 thiss!1181) (mask!25613 thiss!1181)) e!495413)))

(assert (= (and d!110049 (not res!602568)) b!888850))

(assert (= (and b!888850 c!93842) b!888848))

(assert (= (and b!888850 (not c!93842)) b!888847))

(assert (= (and b!888848 res!602567) b!888849))

(assert (= (or b!888849 b!888847) bm!39492))

(declare-fun m!828087 () Bool)

(assert (=> b!888848 m!828087))

(declare-fun m!828089 () Bool)

(assert (=> b!888848 m!828089))

(declare-fun m!828091 () Bool)

(assert (=> b!888848 m!828091))

(assert (=> b!888848 m!828087))

(declare-fun m!828093 () Bool)

(assert (=> b!888848 m!828093))

(assert (=> b!888850 m!828087))

(assert (=> b!888850 m!828087))

(declare-fun m!828095 () Bool)

(assert (=> b!888850 m!828095))

(declare-fun m!828097 () Bool)

(assert (=> bm!39492 m!828097))

(assert (=> b!888829 d!110049))

(declare-fun bm!39495 () Bool)

(declare-fun call!39498 () (_ BitVec 32))

(assert (=> bm!39495 (= call!39498 (arrayCountValidKeys!0 (_keys!9863 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25353 (_keys!9863 thiss!1181))))))

(declare-fun d!110051 () Bool)

(declare-fun lt!401925 () (_ BitVec 32))

(assert (=> d!110051 (and (bvsge lt!401925 #b00000000000000000000000000000000) (bvsle lt!401925 (bvsub (size!25353 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!495420 () (_ BitVec 32))

(assert (=> d!110051 (= lt!401925 e!495420)))

(declare-fun c!93848 () Bool)

(assert (=> d!110051 (= c!93848 (bvsge #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))))))

(assert (=> d!110051 (and (bvsle #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25353 (_keys!9863 thiss!1181)) (size!25353 (_keys!9863 thiss!1181))))))

(assert (=> d!110051 (= (arrayCountValidKeys!0 (_keys!9863 thiss!1181) #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))) lt!401925)))

(declare-fun b!888859 () Bool)

(assert (=> b!888859 (= e!495420 #b00000000000000000000000000000000)))

(declare-fun b!888860 () Bool)

(declare-fun e!495421 () (_ BitVec 32))

(assert (=> b!888860 (= e!495421 (bvadd #b00000000000000000000000000000001 call!39498))))

(declare-fun b!888861 () Bool)

(assert (=> b!888861 (= e!495421 call!39498)))

(declare-fun b!888862 () Bool)

(assert (=> b!888862 (= e!495420 e!495421)))

(declare-fun c!93847 () Bool)

(assert (=> b!888862 (= c!93847 (validKeyInArray!0 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110051 c!93848) b!888859))

(assert (= (and d!110051 (not c!93848)) b!888862))

(assert (= (and b!888862 c!93847) b!888860))

(assert (= (and b!888862 (not c!93847)) b!888861))

(assert (= (or b!888860 b!888861) bm!39495))

(declare-fun m!828099 () Bool)

(assert (=> bm!39495 m!828099))

(assert (=> b!888862 m!828087))

(assert (=> b!888862 m!828087))

(assert (=> b!888862 m!828095))

(assert (=> b!888828 d!110051))

(declare-fun b!888873 () Bool)

(declare-fun res!602580 () Bool)

(declare-fun e!495424 () Bool)

(assert (=> b!888873 (=> (not res!602580) (not e!495424))))

(declare-fun size!25357 (LongMapFixedSize!3978) (_ BitVec 32))

(assert (=> b!888873 (= res!602580 (= (size!25357 thiss!1181) (bvadd (_size!2044 thiss!1181) (bvsdiv (bvadd (extraKeys!4880 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!888874 () Bool)

(assert (=> b!888874 (= e!495424 (and (bvsge (extraKeys!4880 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4880 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2044 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!888871 () Bool)

(declare-fun res!602577 () Bool)

(assert (=> b!888871 (=> (not res!602577) (not e!495424))))

(assert (=> b!888871 (= res!602577 (and (= (size!25354 (_values!5171 thiss!1181)) (bvadd (mask!25613 thiss!1181) #b00000000000000000000000000000001)) (= (size!25353 (_keys!9863 thiss!1181)) (size!25354 (_values!5171 thiss!1181))) (bvsge (_size!2044 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2044 thiss!1181) (bvadd (mask!25613 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun d!110053 () Bool)

(declare-fun res!602578 () Bool)

(assert (=> d!110053 (=> (not res!602578) (not e!495424))))

(assert (=> d!110053 (= res!602578 (validMask!0 (mask!25613 thiss!1181)))))

(assert (=> d!110053 (= (simpleValid!291 thiss!1181) e!495424)))

(declare-fun b!888872 () Bool)

(declare-fun res!602579 () Bool)

(assert (=> b!888872 (=> (not res!602579) (not e!495424))))

(assert (=> b!888872 (= res!602579 (bvsge (size!25357 thiss!1181) (_size!2044 thiss!1181)))))

(assert (= (and d!110053 res!602578) b!888871))

(assert (= (and b!888871 res!602577) b!888872))

(assert (= (and b!888872 res!602579) b!888873))

(assert (= (and b!888873 res!602580) b!888874))

(declare-fun m!828101 () Bool)

(assert (=> b!888873 m!828101))

(assert (=> d!110053 m!828061))

(assert (=> b!888872 m!828101))

(assert (=> d!110045 d!110053))

(declare-fun b!888885 () Bool)

(declare-fun e!495436 () Bool)

(declare-fun contains!4328 (List!17778 (_ BitVec 64)) Bool)

(assert (=> b!888885 (= e!495436 (contains!4328 Nil!17775 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888886 () Bool)

(declare-fun e!495434 () Bool)

(declare-fun call!39501 () Bool)

(assert (=> b!888886 (= e!495434 call!39501)))

(declare-fun bm!39498 () Bool)

(declare-fun c!93851 () Bool)

(assert (=> bm!39498 (= call!39501 (arrayNoDuplicates!0 (_keys!9863 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93851 (Cons!17774 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000) Nil!17775) Nil!17775)))))

(declare-fun b!888887 () Bool)

(assert (=> b!888887 (= e!495434 call!39501)))

(declare-fun d!110055 () Bool)

(declare-fun res!602589 () Bool)

(declare-fun e!495435 () Bool)

(assert (=> d!110055 (=> res!602589 e!495435)))

(assert (=> d!110055 (= res!602589 (bvsge #b00000000000000000000000000000000 (size!25353 (_keys!9863 thiss!1181))))))

(assert (=> d!110055 (= (arrayNoDuplicates!0 (_keys!9863 thiss!1181) #b00000000000000000000000000000000 Nil!17775) e!495435)))

(declare-fun b!888888 () Bool)

(declare-fun e!495433 () Bool)

(assert (=> b!888888 (= e!495435 e!495433)))

(declare-fun res!602587 () Bool)

(assert (=> b!888888 (=> (not res!602587) (not e!495433))))

(assert (=> b!888888 (= res!602587 (not e!495436))))

(declare-fun res!602588 () Bool)

(assert (=> b!888888 (=> (not res!602588) (not e!495436))))

(assert (=> b!888888 (= res!602588 (validKeyInArray!0 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!888889 () Bool)

(assert (=> b!888889 (= e!495433 e!495434)))

(assert (=> b!888889 (= c!93851 (validKeyInArray!0 (select (arr!24910 (_keys!9863 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110055 (not res!602589)) b!888888))

(assert (= (and b!888888 res!602588) b!888885))

(assert (= (and b!888888 res!602587) b!888889))

(assert (= (and b!888889 c!93851) b!888886))

(assert (= (and b!888889 (not c!93851)) b!888887))

(assert (= (or b!888886 b!888887) bm!39498))

(assert (=> b!888885 m!828087))

(assert (=> b!888885 m!828087))

(declare-fun m!828103 () Bool)

(assert (=> b!888885 m!828103))

(assert (=> bm!39498 m!828087))

(declare-fun m!828105 () Bool)

(assert (=> bm!39498 m!828105))

(assert (=> b!888888 m!828087))

(assert (=> b!888888 m!828087))

(assert (=> b!888888 m!828095))

(assert (=> b!888889 m!828087))

(assert (=> b!888889 m!828087))

(assert (=> b!888889 m!828095))

(assert (=> b!888830 d!110055))

(declare-fun mapIsEmpty!28438 () Bool)

(declare-fun mapRes!28438 () Bool)

(assert (=> mapIsEmpty!28438 mapRes!28438))

(declare-fun condMapEmpty!28438 () Bool)

(declare-fun mapDefault!28438 () ValueCell!8481)

(assert (=> mapNonEmpty!28437 (= condMapEmpty!28438 (= mapRest!28437 ((as const (Array (_ BitVec 32) ValueCell!8481)) mapDefault!28438)))))

(declare-fun e!495438 () Bool)

(assert (=> mapNonEmpty!28437 (= tp!54759 (and e!495438 mapRes!28438))))

(declare-fun mapNonEmpty!28438 () Bool)

(declare-fun tp!54760 () Bool)

(declare-fun e!495437 () Bool)

(assert (=> mapNonEmpty!28438 (= mapRes!28438 (and tp!54760 e!495437))))

(declare-fun mapKey!28438 () (_ BitVec 32))

(declare-fun mapValue!28438 () ValueCell!8481)

(declare-fun mapRest!28438 () (Array (_ BitVec 32) ValueCell!8481))

(assert (=> mapNonEmpty!28438 (= mapRest!28437 (store mapRest!28438 mapKey!28438 mapValue!28438))))

(declare-fun b!888891 () Bool)

(assert (=> b!888891 (= e!495438 tp_is_empty!17925)))

(declare-fun b!888890 () Bool)

(assert (=> b!888890 (= e!495437 tp_is_empty!17925)))

(assert (= (and mapNonEmpty!28437 condMapEmpty!28438) mapIsEmpty!28438))

(assert (= (and mapNonEmpty!28437 (not condMapEmpty!28438)) mapNonEmpty!28438))

(assert (= (and mapNonEmpty!28438 ((_ is ValueCellFull!8481) mapValue!28438)) b!888890))

(assert (= (and mapNonEmpty!28437 ((_ is ValueCellFull!8481) mapDefault!28438)) b!888891))

(declare-fun m!828107 () Bool)

(assert (=> mapNonEmpty!28438 m!828107))

(check-sat (not b!888862) (not b!888848) (not b!888872) (not bm!39498) (not b!888850) (not bm!39492) (not b!888873) (not b!888888) (not bm!39495) b_and!25855 (not mapNonEmpty!28438) (not b!888885) (not d!110053) tp_is_empty!17925 (not b!888889) (not b_next!15597))
(check-sat b_and!25855 (not b_next!15597))
