; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79946 () Bool)

(assert start!79946)

(declare-fun b!939609 () Bool)

(declare-fun b_free!17799 () Bool)

(declare-fun b_next!17799 () Bool)

(assert (=> b!939609 (= b_free!17799 (not b_next!17799))))

(declare-fun tp!61865 () Bool)

(declare-fun b_and!29229 () Bool)

(assert (=> b!939609 (= tp!61865 b_and!29229)))

(declare-fun mapIsEmpty!32244 () Bool)

(declare-fun mapRes!32244 () Bool)

(assert (=> mapIsEmpty!32244 mapRes!32244))

(declare-fun b!939603 () Bool)

(declare-fun res!632030 () Bool)

(declare-fun e!527874 () Bool)

(assert (=> b!939603 (=> (not res!632030) (not e!527874))))

(declare-datatypes ((V!32041 0))(
  ( (V!32042 (val!10204 Int)) )
))
(declare-datatypes ((ValueCell!9672 0))(
  ( (ValueCellFull!9672 (v!12735 V!32041)) (EmptyCell!9672) )
))
(declare-datatypes ((array!56580 0))(
  ( (array!56581 (arr!27223 (Array (_ BitVec 32) ValueCell!9672)) (size!27684 (_ BitVec 32))) )
))
(declare-datatypes ((array!56582 0))(
  ( (array!56583 (arr!27224 (Array (_ BitVec 32) (_ BitVec 64))) (size!27685 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4494 0))(
  ( (LongMapFixedSize!4495 (defaultEntry!5538 Int) (mask!27051 (_ BitVec 32)) (extraKeys!5270 (_ BitVec 32)) (zeroValue!5374 V!32041) (minValue!5374 V!32041) (_size!2302 (_ BitVec 32)) (_keys!10383 array!56582) (_values!5561 array!56580) (_vacant!2302 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4494)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939603 (= res!632030 (validMask!0 (mask!27051 thiss!1141)))))

(declare-fun b!939604 () Bool)

(declare-fun e!527877 () Bool)

(declare-fun e!527873 () Bool)

(assert (=> b!939604 (= e!527877 (and e!527873 mapRes!32244))))

(declare-fun condMapEmpty!32244 () Bool)

(declare-fun mapDefault!32244 () ValueCell!9672)

(assert (=> b!939604 (= condMapEmpty!32244 (= (arr!27223 (_values!5561 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9672)) mapDefault!32244)))))

(declare-fun b!939605 () Bool)

(declare-fun res!632028 () Bool)

(assert (=> b!939605 (=> (not res!632028) (not e!527874))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939605 (= res!632028 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32244 () Bool)

(declare-fun tp!61866 () Bool)

(declare-fun e!527875 () Bool)

(assert (=> mapNonEmpty!32244 (= mapRes!32244 (and tp!61866 e!527875))))

(declare-fun mapValue!32244 () ValueCell!9672)

(declare-fun mapKey!32244 () (_ BitVec 32))

(declare-fun mapRest!32244 () (Array (_ BitVec 32) ValueCell!9672))

(assert (=> mapNonEmpty!32244 (= (arr!27223 (_values!5561 thiss!1141)) (store mapRest!32244 mapKey!32244 mapValue!32244))))

(declare-fun b!939606 () Bool)

(declare-fun tp_is_empty!20307 () Bool)

(assert (=> b!939606 (= e!527875 tp_is_empty!20307)))

(declare-fun b!939607 () Bool)

(assert (=> b!939607 (= e!527873 tp_is_empty!20307)))

(declare-fun res!632029 () Bool)

(assert (=> start!79946 (=> (not res!632029) (not e!527874))))

(declare-fun valid!1709 (LongMapFixedSize!4494) Bool)

(assert (=> start!79946 (= res!632029 (valid!1709 thiss!1141))))

(assert (=> start!79946 e!527874))

(declare-fun e!527878 () Bool)

(assert (=> start!79946 e!527878))

(assert (=> start!79946 true))

(declare-fun b!939608 () Bool)

(assert (=> b!939608 (= e!527874 (not (= (size!27685 (_keys!10383 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27051 thiss!1141)))))))

(declare-fun array_inv!21126 (array!56582) Bool)

(declare-fun array_inv!21127 (array!56580) Bool)

(assert (=> b!939609 (= e!527878 (and tp!61865 tp_is_empty!20307 (array_inv!21126 (_keys!10383 thiss!1141)) (array_inv!21127 (_values!5561 thiss!1141)) e!527877))))

(assert (= (and start!79946 res!632029) b!939605))

(assert (= (and b!939605 res!632028) b!939603))

(assert (= (and b!939603 res!632030) b!939608))

(assert (= (and b!939604 condMapEmpty!32244) mapIsEmpty!32244))

(assert (= (and b!939604 (not condMapEmpty!32244)) mapNonEmpty!32244))

(get-info :version)

(assert (= (and mapNonEmpty!32244 ((_ is ValueCellFull!9672) mapValue!32244)) b!939606))

(assert (= (and b!939604 ((_ is ValueCellFull!9672) mapDefault!32244)) b!939607))

(assert (= b!939609 b!939604))

(assert (= start!79946 b!939609))

(declare-fun m!875451 () Bool)

(assert (=> b!939603 m!875451))

(declare-fun m!875453 () Bool)

(assert (=> mapNonEmpty!32244 m!875453))

(declare-fun m!875455 () Bool)

(assert (=> start!79946 m!875455))

(declare-fun m!875457 () Bool)

(assert (=> b!939609 m!875457))

(declare-fun m!875459 () Bool)

(assert (=> b!939609 m!875459))

(check-sat (not start!79946) (not b_next!17799) (not mapNonEmpty!32244) (not b!939603) (not b!939609) b_and!29229 tp_is_empty!20307)
(check-sat b_and!29229 (not b_next!17799))
(get-model)

(declare-fun d!113893 () Bool)

(declare-fun res!632046 () Bool)

(declare-fun e!527899 () Bool)

(assert (=> d!113893 (=> (not res!632046) (not e!527899))))

(declare-fun simpleValid!336 (LongMapFixedSize!4494) Bool)

(assert (=> d!113893 (= res!632046 (simpleValid!336 thiss!1141))))

(assert (=> d!113893 (= (valid!1709 thiss!1141) e!527899)))

(declare-fun b!939637 () Bool)

(declare-fun res!632047 () Bool)

(assert (=> b!939637 (=> (not res!632047) (not e!527899))))

(declare-fun arrayCountValidKeys!0 (array!56582 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!939637 (= res!632047 (= (arrayCountValidKeys!0 (_keys!10383 thiss!1141) #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))) (_size!2302 thiss!1141)))))

(declare-fun b!939638 () Bool)

(declare-fun res!632048 () Bool)

(assert (=> b!939638 (=> (not res!632048) (not e!527899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56582 (_ BitVec 32)) Bool)

(assert (=> b!939638 (= res!632048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10383 thiss!1141) (mask!27051 thiss!1141)))))

(declare-fun b!939639 () Bool)

(declare-datatypes ((List!19312 0))(
  ( (Nil!19309) (Cons!19308 (h!20454 (_ BitVec 64)) (t!27635 List!19312)) )
))
(declare-fun arrayNoDuplicates!0 (array!56582 (_ BitVec 32) List!19312) Bool)

(assert (=> b!939639 (= e!527899 (arrayNoDuplicates!0 (_keys!10383 thiss!1141) #b00000000000000000000000000000000 Nil!19309))))

(assert (= (and d!113893 res!632046) b!939637))

(assert (= (and b!939637 res!632047) b!939638))

(assert (= (and b!939638 res!632048) b!939639))

(declare-fun m!875471 () Bool)

(assert (=> d!113893 m!875471))

(declare-fun m!875473 () Bool)

(assert (=> b!939637 m!875473))

(declare-fun m!875475 () Bool)

(assert (=> b!939638 m!875475))

(declare-fun m!875477 () Bool)

(assert (=> b!939639 m!875477))

(assert (=> start!79946 d!113893))

(declare-fun d!113895 () Bool)

(assert (=> d!113895 (= (validMask!0 (mask!27051 thiss!1141)) (and (or (= (mask!27051 thiss!1141) #b00000000000000000000000000000111) (= (mask!27051 thiss!1141) #b00000000000000000000000000001111) (= (mask!27051 thiss!1141) #b00000000000000000000000000011111) (= (mask!27051 thiss!1141) #b00000000000000000000000000111111) (= (mask!27051 thiss!1141) #b00000000000000000000000001111111) (= (mask!27051 thiss!1141) #b00000000000000000000000011111111) (= (mask!27051 thiss!1141) #b00000000000000000000000111111111) (= (mask!27051 thiss!1141) #b00000000000000000000001111111111) (= (mask!27051 thiss!1141) #b00000000000000000000011111111111) (= (mask!27051 thiss!1141) #b00000000000000000000111111111111) (= (mask!27051 thiss!1141) #b00000000000000000001111111111111) (= (mask!27051 thiss!1141) #b00000000000000000011111111111111) (= (mask!27051 thiss!1141) #b00000000000000000111111111111111) (= (mask!27051 thiss!1141) #b00000000000000001111111111111111) (= (mask!27051 thiss!1141) #b00000000000000011111111111111111) (= (mask!27051 thiss!1141) #b00000000000000111111111111111111) (= (mask!27051 thiss!1141) #b00000000000001111111111111111111) (= (mask!27051 thiss!1141) #b00000000000011111111111111111111) (= (mask!27051 thiss!1141) #b00000000000111111111111111111111) (= (mask!27051 thiss!1141) #b00000000001111111111111111111111) (= (mask!27051 thiss!1141) #b00000000011111111111111111111111) (= (mask!27051 thiss!1141) #b00000000111111111111111111111111) (= (mask!27051 thiss!1141) #b00000001111111111111111111111111) (= (mask!27051 thiss!1141) #b00000011111111111111111111111111) (= (mask!27051 thiss!1141) #b00000111111111111111111111111111) (= (mask!27051 thiss!1141) #b00001111111111111111111111111111) (= (mask!27051 thiss!1141) #b00011111111111111111111111111111) (= (mask!27051 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27051 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!939603 d!113895))

(declare-fun d!113897 () Bool)

(assert (=> d!113897 (= (array_inv!21126 (_keys!10383 thiss!1141)) (bvsge (size!27685 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939609 d!113897))

(declare-fun d!113899 () Bool)

(assert (=> d!113899 (= (array_inv!21127 (_values!5561 thiss!1141)) (bvsge (size!27684 (_values!5561 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!939609 d!113899))

(declare-fun b!939647 () Bool)

(declare-fun e!527904 () Bool)

(assert (=> b!939647 (= e!527904 tp_is_empty!20307)))

(declare-fun b!939646 () Bool)

(declare-fun e!527905 () Bool)

(assert (=> b!939646 (= e!527905 tp_is_empty!20307)))

(declare-fun mapIsEmpty!32250 () Bool)

(declare-fun mapRes!32250 () Bool)

(assert (=> mapIsEmpty!32250 mapRes!32250))

(declare-fun condMapEmpty!32250 () Bool)

(declare-fun mapDefault!32250 () ValueCell!9672)

(assert (=> mapNonEmpty!32244 (= condMapEmpty!32250 (= mapRest!32244 ((as const (Array (_ BitVec 32) ValueCell!9672)) mapDefault!32250)))))

(assert (=> mapNonEmpty!32244 (= tp!61866 (and e!527904 mapRes!32250))))

(declare-fun mapNonEmpty!32250 () Bool)

(declare-fun tp!61875 () Bool)

(assert (=> mapNonEmpty!32250 (= mapRes!32250 (and tp!61875 e!527905))))

(declare-fun mapKey!32250 () (_ BitVec 32))

(declare-fun mapValue!32250 () ValueCell!9672)

(declare-fun mapRest!32250 () (Array (_ BitVec 32) ValueCell!9672))

(assert (=> mapNonEmpty!32250 (= mapRest!32244 (store mapRest!32250 mapKey!32250 mapValue!32250))))

(assert (= (and mapNonEmpty!32244 condMapEmpty!32250) mapIsEmpty!32250))

(assert (= (and mapNonEmpty!32244 (not condMapEmpty!32250)) mapNonEmpty!32250))

(assert (= (and mapNonEmpty!32250 ((_ is ValueCellFull!9672) mapValue!32250)) b!939646))

(assert (= (and mapNonEmpty!32244 ((_ is ValueCellFull!9672) mapDefault!32250)) b!939647))

(declare-fun m!875479 () Bool)

(assert (=> mapNonEmpty!32250 m!875479))

(check-sat (not b!939639) (not d!113893) (not b_next!17799) (not mapNonEmpty!32250) (not b!939637) (not b!939638) b_and!29229 tp_is_empty!20307)
(check-sat b_and!29229 (not b_next!17799))
(get-model)

(declare-fun bm!40905 () Bool)

(declare-fun call!40908 () (_ BitVec 32))

(assert (=> bm!40905 (= call!40908 (arrayCountValidKeys!0 (_keys!10383 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27685 (_keys!10383 thiss!1141))))))

(declare-fun d!113901 () Bool)

(declare-fun lt!424524 () (_ BitVec 32))

(assert (=> d!113901 (and (bvsge lt!424524 #b00000000000000000000000000000000) (bvsle lt!424524 (bvsub (size!27685 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!527910 () (_ BitVec 32))

(assert (=> d!113901 (= lt!424524 e!527910)))

(declare-fun c!97938 () Bool)

(assert (=> d!113901 (= c!97938 (bvsge #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))))))

(assert (=> d!113901 (and (bvsle #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27685 (_keys!10383 thiss!1141)) (size!27685 (_keys!10383 thiss!1141))))))

(assert (=> d!113901 (= (arrayCountValidKeys!0 (_keys!10383 thiss!1141) #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))) lt!424524)))

(declare-fun b!939656 () Bool)

(declare-fun e!527911 () (_ BitVec 32))

(assert (=> b!939656 (= e!527911 call!40908)))

(declare-fun b!939657 () Bool)

(assert (=> b!939657 (= e!527910 #b00000000000000000000000000000000)))

(declare-fun b!939658 () Bool)

(assert (=> b!939658 (= e!527911 (bvadd #b00000000000000000000000000000001 call!40908))))

(declare-fun b!939659 () Bool)

(assert (=> b!939659 (= e!527910 e!527911)))

(declare-fun c!97937 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939659 (= c!97937 (validKeyInArray!0 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!113901 c!97938) b!939657))

(assert (= (and d!113901 (not c!97938)) b!939659))

(assert (= (and b!939659 c!97937) b!939658))

(assert (= (and b!939659 (not c!97937)) b!939656))

(assert (= (or b!939658 b!939656) bm!40905))

(declare-fun m!875481 () Bool)

(assert (=> bm!40905 m!875481))

(declare-fun m!875483 () Bool)

(assert (=> b!939659 m!875483))

(assert (=> b!939659 m!875483))

(declare-fun m!875485 () Bool)

(assert (=> b!939659 m!875485))

(assert (=> b!939637 d!113901))

(declare-fun b!939670 () Bool)

(declare-fun e!527922 () Bool)

(declare-fun contains!5137 (List!19312 (_ BitVec 64)) Bool)

(assert (=> b!939670 (= e!527922 (contains!5137 Nil!19309 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939671 () Bool)

(declare-fun e!527920 () Bool)

(declare-fun e!527923 () Bool)

(assert (=> b!939671 (= e!527920 e!527923)))

(declare-fun c!97941 () Bool)

(assert (=> b!939671 (= c!97941 (validKeyInArray!0 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939672 () Bool)

(declare-fun call!40911 () Bool)

(assert (=> b!939672 (= e!527923 call!40911)))

(declare-fun d!113903 () Bool)

(declare-fun res!632055 () Bool)

(declare-fun e!527921 () Bool)

(assert (=> d!113903 (=> res!632055 e!527921)))

(assert (=> d!113903 (= res!632055 (bvsge #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))))))

(assert (=> d!113903 (= (arrayNoDuplicates!0 (_keys!10383 thiss!1141) #b00000000000000000000000000000000 Nil!19309) e!527921)))

(declare-fun bm!40908 () Bool)

(assert (=> bm!40908 (= call!40911 (arrayNoDuplicates!0 (_keys!10383 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97941 (Cons!19308 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000) Nil!19309) Nil!19309)))))

(declare-fun b!939673 () Bool)

(assert (=> b!939673 (= e!527923 call!40911)))

(declare-fun b!939674 () Bool)

(assert (=> b!939674 (= e!527921 e!527920)))

(declare-fun res!632057 () Bool)

(assert (=> b!939674 (=> (not res!632057) (not e!527920))))

(assert (=> b!939674 (= res!632057 (not e!527922))))

(declare-fun res!632056 () Bool)

(assert (=> b!939674 (=> (not res!632056) (not e!527922))))

(assert (=> b!939674 (= res!632056 (validKeyInArray!0 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!113903 (not res!632055)) b!939674))

(assert (= (and b!939674 res!632056) b!939670))

(assert (= (and b!939674 res!632057) b!939671))

(assert (= (and b!939671 c!97941) b!939673))

(assert (= (and b!939671 (not c!97941)) b!939672))

(assert (= (or b!939673 b!939672) bm!40908))

(assert (=> b!939670 m!875483))

(assert (=> b!939670 m!875483))

(declare-fun m!875487 () Bool)

(assert (=> b!939670 m!875487))

(assert (=> b!939671 m!875483))

(assert (=> b!939671 m!875483))

(assert (=> b!939671 m!875485))

(assert (=> bm!40908 m!875483))

(declare-fun m!875489 () Bool)

(assert (=> bm!40908 m!875489))

(assert (=> b!939674 m!875483))

(assert (=> b!939674 m!875483))

(assert (=> b!939674 m!875485))

(assert (=> b!939639 d!113903))

(declare-fun bm!40911 () Bool)

(declare-fun call!40914 () Bool)

(assert (=> bm!40911 (= call!40914 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10383 thiss!1141) (mask!27051 thiss!1141)))))

(declare-fun b!939683 () Bool)

(declare-fun e!527932 () Bool)

(assert (=> b!939683 (= e!527932 call!40914)))

(declare-fun b!939684 () Bool)

(declare-fun e!527931 () Bool)

(assert (=> b!939684 (= e!527931 e!527932)))

(declare-fun c!97944 () Bool)

(assert (=> b!939684 (= c!97944 (validKeyInArray!0 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!939685 () Bool)

(declare-fun e!527930 () Bool)

(assert (=> b!939685 (= e!527930 call!40914)))

(declare-fun d!113905 () Bool)

(declare-fun res!632063 () Bool)

(assert (=> d!113905 (=> res!632063 e!527931)))

(assert (=> d!113905 (= res!632063 (bvsge #b00000000000000000000000000000000 (size!27685 (_keys!10383 thiss!1141))))))

(assert (=> d!113905 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10383 thiss!1141) (mask!27051 thiss!1141)) e!527931)))

(declare-fun b!939686 () Bool)

(assert (=> b!939686 (= e!527932 e!527930)))

(declare-fun lt!424532 () (_ BitVec 64))

(assert (=> b!939686 (= lt!424532 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31755 0))(
  ( (Unit!31756) )
))
(declare-fun lt!424531 () Unit!31755)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56582 (_ BitVec 64) (_ BitVec 32)) Unit!31755)

(assert (=> b!939686 (= lt!424531 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10383 thiss!1141) lt!424532 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939686 (arrayContainsKey!0 (_keys!10383 thiss!1141) lt!424532 #b00000000000000000000000000000000)))

(declare-fun lt!424533 () Unit!31755)

(assert (=> b!939686 (= lt!424533 lt!424531)))

(declare-fun res!632062 () Bool)

(declare-datatypes ((SeekEntryResult!8971 0))(
  ( (MissingZero!8971 (index!38254 (_ BitVec 32))) (Found!8971 (index!38255 (_ BitVec 32))) (Intermediate!8971 (undefined!9783 Bool) (index!38256 (_ BitVec 32)) (x!80545 (_ BitVec 32))) (Undefined!8971) (MissingVacant!8971 (index!38257 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56582 (_ BitVec 32)) SeekEntryResult!8971)

(assert (=> b!939686 (= res!632062 (= (seekEntryOrOpen!0 (select (arr!27224 (_keys!10383 thiss!1141)) #b00000000000000000000000000000000) (_keys!10383 thiss!1141) (mask!27051 thiss!1141)) (Found!8971 #b00000000000000000000000000000000)))))

(assert (=> b!939686 (=> (not res!632062) (not e!527930))))

(assert (= (and d!113905 (not res!632063)) b!939684))

(assert (= (and b!939684 c!97944) b!939686))

(assert (= (and b!939684 (not c!97944)) b!939683))

(assert (= (and b!939686 res!632062) b!939685))

(assert (= (or b!939685 b!939683) bm!40911))

(declare-fun m!875491 () Bool)

(assert (=> bm!40911 m!875491))

(assert (=> b!939684 m!875483))

(assert (=> b!939684 m!875483))

(assert (=> b!939684 m!875485))

(assert (=> b!939686 m!875483))

(declare-fun m!875493 () Bool)

(assert (=> b!939686 m!875493))

(declare-fun m!875495 () Bool)

(assert (=> b!939686 m!875495))

(assert (=> b!939686 m!875483))

(declare-fun m!875497 () Bool)

(assert (=> b!939686 m!875497))

(assert (=> b!939638 d!113905))

(declare-fun b!939698 () Bool)

(declare-fun e!527935 () Bool)

(assert (=> b!939698 (= e!527935 (and (bvsge (extraKeys!5270 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5270 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2302 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!939697 () Bool)

(declare-fun res!632073 () Bool)

(assert (=> b!939697 (=> (not res!632073) (not e!527935))))

(declare-fun size!27688 (LongMapFixedSize!4494) (_ BitVec 32))

(assert (=> b!939697 (= res!632073 (= (size!27688 thiss!1141) (bvadd (_size!2302 thiss!1141) (bvsdiv (bvadd (extraKeys!5270 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!939696 () Bool)

(declare-fun res!632072 () Bool)

(assert (=> b!939696 (=> (not res!632072) (not e!527935))))

(assert (=> b!939696 (= res!632072 (bvsge (size!27688 thiss!1141) (_size!2302 thiss!1141)))))

(declare-fun d!113907 () Bool)

(declare-fun res!632074 () Bool)

(assert (=> d!113907 (=> (not res!632074) (not e!527935))))

(assert (=> d!113907 (= res!632074 (validMask!0 (mask!27051 thiss!1141)))))

(assert (=> d!113907 (= (simpleValid!336 thiss!1141) e!527935)))

(declare-fun b!939695 () Bool)

(declare-fun res!632075 () Bool)

(assert (=> b!939695 (=> (not res!632075) (not e!527935))))

(assert (=> b!939695 (= res!632075 (and (= (size!27684 (_values!5561 thiss!1141)) (bvadd (mask!27051 thiss!1141) #b00000000000000000000000000000001)) (= (size!27685 (_keys!10383 thiss!1141)) (size!27684 (_values!5561 thiss!1141))) (bvsge (_size!2302 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2302 thiss!1141) (bvadd (mask!27051 thiss!1141) #b00000000000000000000000000000001))))))

(assert (= (and d!113907 res!632074) b!939695))

(assert (= (and b!939695 res!632075) b!939696))

(assert (= (and b!939696 res!632072) b!939697))

(assert (= (and b!939697 res!632073) b!939698))

(declare-fun m!875499 () Bool)

(assert (=> b!939697 m!875499))

(assert (=> b!939696 m!875499))

(assert (=> d!113907 m!875451))

(assert (=> d!113893 d!113907))

(declare-fun b!939700 () Bool)

(declare-fun e!527936 () Bool)

(assert (=> b!939700 (= e!527936 tp_is_empty!20307)))

(declare-fun b!939699 () Bool)

(declare-fun e!527937 () Bool)

(assert (=> b!939699 (= e!527937 tp_is_empty!20307)))

(declare-fun mapIsEmpty!32251 () Bool)

(declare-fun mapRes!32251 () Bool)

(assert (=> mapIsEmpty!32251 mapRes!32251))

(declare-fun condMapEmpty!32251 () Bool)

(declare-fun mapDefault!32251 () ValueCell!9672)

(assert (=> mapNonEmpty!32250 (= condMapEmpty!32251 (= mapRest!32250 ((as const (Array (_ BitVec 32) ValueCell!9672)) mapDefault!32251)))))

(assert (=> mapNonEmpty!32250 (= tp!61875 (and e!527936 mapRes!32251))))

(declare-fun mapNonEmpty!32251 () Bool)

(declare-fun tp!61876 () Bool)

(assert (=> mapNonEmpty!32251 (= mapRes!32251 (and tp!61876 e!527937))))

(declare-fun mapRest!32251 () (Array (_ BitVec 32) ValueCell!9672))

(declare-fun mapValue!32251 () ValueCell!9672)

(declare-fun mapKey!32251 () (_ BitVec 32))

(assert (=> mapNonEmpty!32251 (= mapRest!32250 (store mapRest!32251 mapKey!32251 mapValue!32251))))

(assert (= (and mapNonEmpty!32250 condMapEmpty!32251) mapIsEmpty!32251))

(assert (= (and mapNonEmpty!32250 (not condMapEmpty!32251)) mapNonEmpty!32251))

(assert (= (and mapNonEmpty!32251 ((_ is ValueCellFull!9672) mapValue!32251)) b!939699))

(assert (= (and mapNonEmpty!32250 ((_ is ValueCellFull!9672) mapDefault!32251)) b!939700))

(declare-fun m!875501 () Bool)

(assert (=> mapNonEmpty!32251 m!875501))

(check-sat (not b!939674) (not b!939670) (not mapNonEmpty!32251) (not d!113907) (not b!939659) (not bm!40908) (not b!939684) (not b_next!17799) (not b!939671) (not b!939696) (not bm!40911) (not bm!40905) (not b!939686) (not b!939697) b_and!29229 tp_is_empty!20307)
(check-sat b_and!29229 (not b_next!17799))
