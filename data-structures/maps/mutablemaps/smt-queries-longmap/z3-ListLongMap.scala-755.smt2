; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17710 () Bool)

(assert start!17710)

(declare-fun b!176920 () Bool)

(declare-fun b_free!4371 () Bool)

(declare-fun b_next!4371 () Bool)

(assert (=> b!176920 (= b_free!4371 (not b_next!4371))))

(declare-fun tp!15810 () Bool)

(declare-fun b_and!10887 () Bool)

(assert (=> b!176920 (= tp!15810 b_and!10887)))

(declare-fun b!176916 () Bool)

(declare-fun e!116684 () Bool)

(declare-fun tp_is_empty!4143 () Bool)

(assert (=> b!176916 (= e!116684 tp_is_empty!4143)))

(declare-fun b!176917 () Bool)

(declare-fun res!83884 () Bool)

(declare-fun e!116685 () Bool)

(assert (=> b!176917 (=> (not res!83884) (not e!116685))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!176917 (= res!83884 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176919 () Bool)

(declare-fun res!83883 () Bool)

(assert (=> b!176919 (=> (not res!83883) (not e!116685))))

(declare-datatypes ((V!5171 0))(
  ( (V!5172 (val!2116 Int)) )
))
(declare-datatypes ((ValueCell!1728 0))(
  ( (ValueCellFull!1728 (v!3991 V!5171)) (EmptyCell!1728) )
))
(declare-datatypes ((array!7434 0))(
  ( (array!7435 (arr!3526 (Array (_ BitVec 32) (_ BitVec 64))) (size!3830 (_ BitVec 32))) )
))
(declare-datatypes ((array!7436 0))(
  ( (array!7437 (arr!3527 (Array (_ BitVec 32) ValueCell!1728)) (size!3831 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2364 0))(
  ( (LongMapFixedSize!2365 (defaultEntry!3644 Int) (mask!8573 (_ BitVec 32)) (extraKeys!3381 (_ BitVec 32)) (zeroValue!3485 V!5171) (minValue!3485 V!5171) (_size!1231 (_ BitVec 32)) (_keys!5509 array!7434) (_values!3627 array!7436) (_vacant!1231 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2364)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7434 (_ BitVec 32)) Bool)

(assert (=> b!176919 (= res!83883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)))))

(declare-fun mapNonEmpty!7074 () Bool)

(declare-fun mapRes!7074 () Bool)

(declare-fun tp!15809 () Bool)

(declare-fun e!116686 () Bool)

(assert (=> mapNonEmpty!7074 (= mapRes!7074 (and tp!15809 e!116686))))

(declare-fun mapValue!7074 () ValueCell!1728)

(declare-fun mapKey!7074 () (_ BitVec 32))

(declare-fun mapRest!7074 () (Array (_ BitVec 32) ValueCell!1728))

(assert (=> mapNonEmpty!7074 (= (arr!3527 (_values!3627 thiss!1248)) (store mapRest!7074 mapKey!7074 mapValue!7074))))

(declare-fun e!116688 () Bool)

(declare-fun e!116687 () Bool)

(declare-fun array_inv!2249 (array!7434) Bool)

(declare-fun array_inv!2250 (array!7436) Bool)

(assert (=> b!176920 (= e!116687 (and tp!15810 tp_is_empty!4143 (array_inv!2249 (_keys!5509 thiss!1248)) (array_inv!2250 (_values!3627 thiss!1248)) e!116688))))

(declare-fun b!176921 () Bool)

(assert (=> b!176921 (= e!116686 tp_is_empty!4143)))

(declare-fun b!176922 () Bool)

(declare-fun res!83879 () Bool)

(assert (=> b!176922 (=> (not res!83879) (not e!116685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176922 (= res!83879 (validMask!0 (mask!8573 thiss!1248)))))

(declare-fun b!176923 () Bool)

(declare-fun res!83881 () Bool)

(assert (=> b!176923 (=> (not res!83881) (not e!116685))))

(declare-datatypes ((List!2266 0))(
  ( (Nil!2263) (Cons!2262 (h!2883 (_ BitVec 64)) (t!7102 List!2266)) )
))
(declare-fun arrayNoDuplicates!0 (array!7434 (_ BitVec 32) List!2266) Bool)

(assert (=> b!176923 (= res!83881 (arrayNoDuplicates!0 (_keys!5509 thiss!1248) #b00000000000000000000000000000000 Nil!2263))))

(declare-fun b!176924 () Bool)

(declare-fun res!83880 () Bool)

(assert (=> b!176924 (=> (not res!83880) (not e!116685))))

(declare-datatypes ((tuple2!3290 0))(
  ( (tuple2!3291 (_1!1655 (_ BitVec 64)) (_2!1655 V!5171)) )
))
(declare-datatypes ((List!2267 0))(
  ( (Nil!2264) (Cons!2263 (h!2884 tuple2!3290) (t!7103 List!2267)) )
))
(declare-datatypes ((ListLongMap!2231 0))(
  ( (ListLongMap!2232 (toList!1131 List!2267)) )
))
(declare-fun contains!1190 (ListLongMap!2231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!778 (array!7434 array!7436 (_ BitVec 32) (_ BitVec 32) V!5171 V!5171 (_ BitVec 32) Int) ListLongMap!2231)

(assert (=> b!176924 (= res!83880 (contains!1190 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)) key!828))))

(declare-fun b!176925 () Bool)

(declare-fun res!83885 () Bool)

(assert (=> b!176925 (=> (not res!83885) (not e!116685))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!572 0))(
  ( (MissingZero!572 (index!4456 (_ BitVec 32))) (Found!572 (index!4457 (_ BitVec 32))) (Intermediate!572 (undefined!1384 Bool) (index!4458 (_ BitVec 32)) (x!19426 (_ BitVec 32))) (Undefined!572) (MissingVacant!572 (index!4459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7434 (_ BitVec 32)) SeekEntryResult!572)

(assert (=> b!176925 (= res!83885 ((_ is Undefined!572) (seekEntryOrOpen!0 key!828 (_keys!5509 thiss!1248) (mask!8573 thiss!1248))))))

(declare-fun mapIsEmpty!7074 () Bool)

(assert (=> mapIsEmpty!7074 mapRes!7074))

(declare-fun res!83882 () Bool)

(assert (=> start!17710 (=> (not res!83882) (not e!116685))))

(declare-fun valid!984 (LongMapFixedSize!2364) Bool)

(assert (=> start!17710 (= res!83882 (valid!984 thiss!1248))))

(assert (=> start!17710 e!116685))

(assert (=> start!17710 e!116687))

(assert (=> start!17710 true))

(declare-fun b!176918 () Bool)

(assert (=> b!176918 (= e!116688 (and e!116684 mapRes!7074))))

(declare-fun condMapEmpty!7074 () Bool)

(declare-fun mapDefault!7074 () ValueCell!1728)

(assert (=> b!176918 (= condMapEmpty!7074 (= (arr!3527 (_values!3627 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1728)) mapDefault!7074)))))

(declare-fun b!176926 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176926 (= e!116685 (not (validKeyInArray!0 key!828)))))

(declare-fun b!176927 () Bool)

(declare-fun res!83878 () Bool)

(assert (=> b!176927 (=> (not res!83878) (not e!116685))))

(assert (=> b!176927 (= res!83878 (and (= (size!3831 (_values!3627 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8573 thiss!1248))) (= (size!3830 (_keys!5509 thiss!1248)) (size!3831 (_values!3627 thiss!1248))) (bvsge (mask!8573 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3381 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3381 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!17710 res!83882) b!176917))

(assert (= (and b!176917 res!83884) b!176925))

(assert (= (and b!176925 res!83885) b!176924))

(assert (= (and b!176924 res!83880) b!176922))

(assert (= (and b!176922 res!83879) b!176927))

(assert (= (and b!176927 res!83878) b!176919))

(assert (= (and b!176919 res!83883) b!176923))

(assert (= (and b!176923 res!83881) b!176926))

(assert (= (and b!176918 condMapEmpty!7074) mapIsEmpty!7074))

(assert (= (and b!176918 (not condMapEmpty!7074)) mapNonEmpty!7074))

(assert (= (and mapNonEmpty!7074 ((_ is ValueCellFull!1728) mapValue!7074)) b!176921))

(assert (= (and b!176918 ((_ is ValueCellFull!1728) mapDefault!7074)) b!176916))

(assert (= b!176920 b!176918))

(assert (= start!17710 b!176920))

(declare-fun m!205581 () Bool)

(assert (=> b!176926 m!205581))

(declare-fun m!205583 () Bool)

(assert (=> b!176922 m!205583))

(declare-fun m!205585 () Bool)

(assert (=> start!17710 m!205585))

(declare-fun m!205587 () Bool)

(assert (=> b!176919 m!205587))

(declare-fun m!205589 () Bool)

(assert (=> b!176920 m!205589))

(declare-fun m!205591 () Bool)

(assert (=> b!176920 m!205591))

(declare-fun m!205593 () Bool)

(assert (=> b!176925 m!205593))

(declare-fun m!205595 () Bool)

(assert (=> b!176924 m!205595))

(assert (=> b!176924 m!205595))

(declare-fun m!205597 () Bool)

(assert (=> b!176924 m!205597))

(declare-fun m!205599 () Bool)

(assert (=> b!176923 m!205599))

(declare-fun m!205601 () Bool)

(assert (=> mapNonEmpty!7074 m!205601))

(check-sat (not b!176920) (not mapNonEmpty!7074) (not b_next!4371) (not b!176926) b_and!10887 (not b!176922) (not b!176919) (not b!176923) (not b!176925) (not start!17710) (not b!176924) tp_is_empty!4143)
(check-sat b_and!10887 (not b_next!4371))
(get-model)

(declare-fun b!176974 () Bool)

(declare-fun e!116716 () Bool)

(declare-fun call!17897 () Bool)

(assert (=> b!176974 (= e!116716 call!17897)))

(declare-fun d!53625 () Bool)

(declare-fun res!83918 () Bool)

(declare-fun e!116719 () Bool)

(assert (=> d!53625 (=> res!83918 e!116719)))

(assert (=> d!53625 (= res!83918 (bvsge #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(assert (=> d!53625 (= (arrayNoDuplicates!0 (_keys!5509 thiss!1248) #b00000000000000000000000000000000 Nil!2263) e!116719)))

(declare-fun b!176975 () Bool)

(declare-fun e!116717 () Bool)

(assert (=> b!176975 (= e!116717 e!116716)))

(declare-fun c!31680 () Bool)

(assert (=> b!176975 (= c!31680 (validKeyInArray!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17894 () Bool)

(assert (=> bm!17894 (= call!17897 (arrayNoDuplicates!0 (_keys!5509 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31680 (Cons!2262 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000) Nil!2263) Nil!2263)))))

(declare-fun b!176976 () Bool)

(declare-fun e!116718 () Bool)

(declare-fun contains!1192 (List!2266 (_ BitVec 64)) Bool)

(assert (=> b!176976 (= e!116718 (contains!1192 Nil!2263 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176977 () Bool)

(assert (=> b!176977 (= e!116716 call!17897)))

(declare-fun b!176978 () Bool)

(assert (=> b!176978 (= e!116719 e!116717)))

(declare-fun res!83916 () Bool)

(assert (=> b!176978 (=> (not res!83916) (not e!116717))))

(assert (=> b!176978 (= res!83916 (not e!116718))))

(declare-fun res!83917 () Bool)

(assert (=> b!176978 (=> (not res!83917) (not e!116718))))

(assert (=> b!176978 (= res!83917 (validKeyInArray!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53625 (not res!83918)) b!176978))

(assert (= (and b!176978 res!83917) b!176976))

(assert (= (and b!176978 res!83916) b!176975))

(assert (= (and b!176975 c!31680) b!176974))

(assert (= (and b!176975 (not c!31680)) b!176977))

(assert (= (or b!176974 b!176977) bm!17894))

(declare-fun m!205625 () Bool)

(assert (=> b!176975 m!205625))

(assert (=> b!176975 m!205625))

(declare-fun m!205627 () Bool)

(assert (=> b!176975 m!205627))

(assert (=> bm!17894 m!205625))

(declare-fun m!205629 () Bool)

(assert (=> bm!17894 m!205629))

(assert (=> b!176976 m!205625))

(assert (=> b!176976 m!205625))

(declare-fun m!205631 () Bool)

(assert (=> b!176976 m!205631))

(assert (=> b!176978 m!205625))

(assert (=> b!176978 m!205625))

(assert (=> b!176978 m!205627))

(assert (=> b!176923 d!53625))

(declare-fun b!176987 () Bool)

(declare-fun e!116726 () Bool)

(declare-fun e!116728 () Bool)

(assert (=> b!176987 (= e!116726 e!116728)))

(declare-fun c!31683 () Bool)

(assert (=> b!176987 (= c!31683 (validKeyInArray!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176988 () Bool)

(declare-fun e!116727 () Bool)

(declare-fun call!17900 () Bool)

(assert (=> b!176988 (= e!116727 call!17900)))

(declare-fun b!176989 () Bool)

(assert (=> b!176989 (= e!116728 e!116727)))

(declare-fun lt!87509 () (_ BitVec 64))

(assert (=> b!176989 (= lt!87509 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5409 0))(
  ( (Unit!5410) )
))
(declare-fun lt!87510 () Unit!5409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7434 (_ BitVec 64) (_ BitVec 32)) Unit!5409)

(assert (=> b!176989 (= lt!87510 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5509 thiss!1248) lt!87509 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!176989 (arrayContainsKey!0 (_keys!5509 thiss!1248) lt!87509 #b00000000000000000000000000000000)))

(declare-fun lt!87511 () Unit!5409)

(assert (=> b!176989 (= lt!87511 lt!87510)))

(declare-fun res!83923 () Bool)

(assert (=> b!176989 (= res!83923 (= (seekEntryOrOpen!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000) (_keys!5509 thiss!1248) (mask!8573 thiss!1248)) (Found!572 #b00000000000000000000000000000000)))))

(assert (=> b!176989 (=> (not res!83923) (not e!116727))))

(declare-fun b!176990 () Bool)

(assert (=> b!176990 (= e!116728 call!17900)))

(declare-fun d!53627 () Bool)

(declare-fun res!83924 () Bool)

(assert (=> d!53627 (=> res!83924 e!116726)))

(assert (=> d!53627 (= res!83924 (bvsge #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(assert (=> d!53627 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)) e!116726)))

(declare-fun bm!17897 () Bool)

(assert (=> bm!17897 (= call!17900 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5509 thiss!1248) (mask!8573 thiss!1248)))))

(assert (= (and d!53627 (not res!83924)) b!176987))

(assert (= (and b!176987 c!31683) b!176989))

(assert (= (and b!176987 (not c!31683)) b!176990))

(assert (= (and b!176989 res!83923) b!176988))

(assert (= (or b!176988 b!176990) bm!17897))

(assert (=> b!176987 m!205625))

(assert (=> b!176987 m!205625))

(assert (=> b!176987 m!205627))

(assert (=> b!176989 m!205625))

(declare-fun m!205633 () Bool)

(assert (=> b!176989 m!205633))

(declare-fun m!205635 () Bool)

(assert (=> b!176989 m!205635))

(assert (=> b!176989 m!205625))

(declare-fun m!205637 () Bool)

(assert (=> b!176989 m!205637))

(declare-fun m!205639 () Bool)

(assert (=> bm!17897 m!205639))

(assert (=> b!176919 d!53627))

(declare-fun d!53629 () Bool)

(declare-fun e!116734 () Bool)

(assert (=> d!53629 e!116734))

(declare-fun res!83927 () Bool)

(assert (=> d!53629 (=> res!83927 e!116734)))

(declare-fun lt!87523 () Bool)

(assert (=> d!53629 (= res!83927 (not lt!87523))))

(declare-fun lt!87521 () Bool)

(assert (=> d!53629 (= lt!87523 lt!87521)))

(declare-fun lt!87522 () Unit!5409)

(declare-fun e!116733 () Unit!5409)

(assert (=> d!53629 (= lt!87522 e!116733)))

(declare-fun c!31686 () Bool)

(assert (=> d!53629 (= c!31686 lt!87521)))

(declare-fun containsKey!197 (List!2267 (_ BitVec 64)) Bool)

(assert (=> d!53629 (= lt!87521 (containsKey!197 (toList!1131 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248))) key!828))))

(assert (=> d!53629 (= (contains!1190 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)) key!828) lt!87523)))

(declare-fun b!176997 () Bool)

(declare-fun lt!87520 () Unit!5409)

(assert (=> b!176997 (= e!116733 lt!87520)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!146 (List!2267 (_ BitVec 64)) Unit!5409)

(assert (=> b!176997 (= lt!87520 (lemmaContainsKeyImpliesGetValueByKeyDefined!146 (toList!1131 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248))) key!828))))

(declare-datatypes ((Option!199 0))(
  ( (Some!198 (v!3993 V!5171)) (None!197) )
))
(declare-fun isDefined!147 (Option!199) Bool)

(declare-fun getValueByKey!193 (List!2267 (_ BitVec 64)) Option!199)

(assert (=> b!176997 (isDefined!147 (getValueByKey!193 (toList!1131 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248))) key!828))))

(declare-fun b!176998 () Bool)

(declare-fun Unit!5411 () Unit!5409)

(assert (=> b!176998 (= e!116733 Unit!5411)))

(declare-fun b!176999 () Bool)

(assert (=> b!176999 (= e!116734 (isDefined!147 (getValueByKey!193 (toList!1131 (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248))) key!828)))))

(assert (= (and d!53629 c!31686) b!176997))

(assert (= (and d!53629 (not c!31686)) b!176998))

(assert (= (and d!53629 (not res!83927)) b!176999))

(declare-fun m!205641 () Bool)

(assert (=> d!53629 m!205641))

(declare-fun m!205643 () Bool)

(assert (=> b!176997 m!205643))

(declare-fun m!205645 () Bool)

(assert (=> b!176997 m!205645))

(assert (=> b!176997 m!205645))

(declare-fun m!205647 () Bool)

(assert (=> b!176997 m!205647))

(assert (=> b!176999 m!205645))

(assert (=> b!176999 m!205645))

(assert (=> b!176999 m!205647))

(assert (=> b!176924 d!53629))

(declare-fun b!177042 () Bool)

(declare-fun e!116762 () Unit!5409)

(declare-fun lt!87575 () Unit!5409)

(assert (=> b!177042 (= e!116762 lt!87575)))

(declare-fun lt!87580 () ListLongMap!2231)

(declare-fun getCurrentListMapNoExtraKeys!169 (array!7434 array!7436 (_ BitVec 32) (_ BitVec 32) V!5171 V!5171 (_ BitVec 32) Int) ListLongMap!2231)

(assert (=> b!177042 (= lt!87580 (getCurrentListMapNoExtraKeys!169 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)))))

(declare-fun lt!87574 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87574 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87582 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87582 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87570 () Unit!5409)

(declare-fun addStillContains!115 (ListLongMap!2231 (_ BitVec 64) V!5171 (_ BitVec 64)) Unit!5409)

(assert (=> b!177042 (= lt!87570 (addStillContains!115 lt!87580 lt!87574 (zeroValue!3485 thiss!1248) lt!87582))))

(declare-fun +!251 (ListLongMap!2231 tuple2!3290) ListLongMap!2231)

(assert (=> b!177042 (contains!1190 (+!251 lt!87580 (tuple2!3291 lt!87574 (zeroValue!3485 thiss!1248))) lt!87582)))

(declare-fun lt!87577 () Unit!5409)

(assert (=> b!177042 (= lt!87577 lt!87570)))

(declare-fun lt!87572 () ListLongMap!2231)

(assert (=> b!177042 (= lt!87572 (getCurrentListMapNoExtraKeys!169 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)))))

(declare-fun lt!87585 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87585 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87586 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87586 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87589 () Unit!5409)

(declare-fun addApplyDifferent!115 (ListLongMap!2231 (_ BitVec 64) V!5171 (_ BitVec 64)) Unit!5409)

(assert (=> b!177042 (= lt!87589 (addApplyDifferent!115 lt!87572 lt!87585 (minValue!3485 thiss!1248) lt!87586))))

(declare-fun apply!139 (ListLongMap!2231 (_ BitVec 64)) V!5171)

(assert (=> b!177042 (= (apply!139 (+!251 lt!87572 (tuple2!3291 lt!87585 (minValue!3485 thiss!1248))) lt!87586) (apply!139 lt!87572 lt!87586))))

(declare-fun lt!87587 () Unit!5409)

(assert (=> b!177042 (= lt!87587 lt!87589)))

(declare-fun lt!87568 () ListLongMap!2231)

(assert (=> b!177042 (= lt!87568 (getCurrentListMapNoExtraKeys!169 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)))))

(declare-fun lt!87578 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87578 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87583 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87583 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87581 () Unit!5409)

(assert (=> b!177042 (= lt!87581 (addApplyDifferent!115 lt!87568 lt!87578 (zeroValue!3485 thiss!1248) lt!87583))))

(assert (=> b!177042 (= (apply!139 (+!251 lt!87568 (tuple2!3291 lt!87578 (zeroValue!3485 thiss!1248))) lt!87583) (apply!139 lt!87568 lt!87583))))

(declare-fun lt!87571 () Unit!5409)

(assert (=> b!177042 (= lt!87571 lt!87581)))

(declare-fun lt!87588 () ListLongMap!2231)

(assert (=> b!177042 (= lt!87588 (getCurrentListMapNoExtraKeys!169 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)))))

(declare-fun lt!87576 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87576 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87569 () (_ BitVec 64))

(assert (=> b!177042 (= lt!87569 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177042 (= lt!87575 (addApplyDifferent!115 lt!87588 lt!87576 (minValue!3485 thiss!1248) lt!87569))))

(assert (=> b!177042 (= (apply!139 (+!251 lt!87588 (tuple2!3291 lt!87576 (minValue!3485 thiss!1248))) lt!87569) (apply!139 lt!87588 lt!87569))))

(declare-fun b!177043 () Bool)

(declare-fun e!116770 () Bool)

(declare-fun e!116767 () Bool)

(assert (=> b!177043 (= e!116770 e!116767)))

(declare-fun c!31702 () Bool)

(assert (=> b!177043 (= c!31702 (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177044 () Bool)

(declare-fun e!116772 () Bool)

(declare-fun e!116768 () Bool)

(assert (=> b!177044 (= e!116772 e!116768)))

(declare-fun res!83948 () Bool)

(assert (=> b!177044 (=> (not res!83948) (not e!116768))))

(declare-fun lt!87584 () ListLongMap!2231)

(assert (=> b!177044 (= res!83948 (contains!1190 lt!87584 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177044 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(declare-fun b!177046 () Bool)

(declare-fun e!116773 () Bool)

(assert (=> b!177046 (= e!116773 (validKeyInArray!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun c!31704 () Bool)

(declare-fun call!17918 () ListLongMap!2231)

(declare-fun call!17919 () ListLongMap!2231)

(declare-fun call!17920 () ListLongMap!2231)

(declare-fun bm!17912 () Bool)

(declare-fun call!17917 () ListLongMap!2231)

(declare-fun c!31700 () Bool)

(assert (=> bm!17912 (= call!17917 (+!251 (ite c!31704 call!17920 (ite c!31700 call!17919 call!17918)) (ite (or c!31704 c!31700) (tuple2!3291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3485 thiss!1248)) (tuple2!3291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3485 thiss!1248)))))))

(declare-fun b!177047 () Bool)

(declare-fun c!31699 () Bool)

(assert (=> b!177047 (= c!31699 (and (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!116764 () ListLongMap!2231)

(declare-fun e!116765 () ListLongMap!2231)

(assert (=> b!177047 (= e!116764 e!116765)))

(declare-fun b!177048 () Bool)

(declare-fun e!116763 () Bool)

(declare-fun call!17921 () Bool)

(assert (=> b!177048 (= e!116763 (not call!17921))))

(declare-fun b!177049 () Bool)

(declare-fun call!17915 () ListLongMap!2231)

(assert (=> b!177049 (= e!116765 call!17915)))

(declare-fun b!177050 () Bool)

(assert (=> b!177050 (= e!116764 call!17915)))

(declare-fun bm!17913 () Bool)

(assert (=> bm!17913 (= call!17918 call!17919)))

(declare-fun b!177051 () Bool)

(assert (=> b!177051 (= e!116765 call!17918)))

(declare-fun b!177045 () Bool)

(declare-fun call!17916 () Bool)

(assert (=> b!177045 (= e!116767 (not call!17916))))

(declare-fun d!53631 () Bool)

(assert (=> d!53631 e!116770))

(declare-fun res!83950 () Bool)

(assert (=> d!53631 (=> (not res!83950) (not e!116770))))

(assert (=> d!53631 (= res!83950 (or (bvsge #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))))

(declare-fun lt!87579 () ListLongMap!2231)

(assert (=> d!53631 (= lt!87584 lt!87579)))

(declare-fun lt!87573 () Unit!5409)

(assert (=> d!53631 (= lt!87573 e!116762)))

(declare-fun c!31701 () Bool)

(assert (=> d!53631 (= c!31701 e!116773)))

(declare-fun res!83951 () Bool)

(assert (=> d!53631 (=> (not res!83951) (not e!116773))))

(assert (=> d!53631 (= res!83951 (bvslt #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(declare-fun e!116761 () ListLongMap!2231)

(assert (=> d!53631 (= lt!87579 e!116761)))

(assert (=> d!53631 (= c!31704 (and (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53631 (validMask!0 (mask!8573 thiss!1248))))

(assert (=> d!53631 (= (getCurrentListMap!778 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)) lt!87584)))

(declare-fun b!177052 () Bool)

(declare-fun Unit!5412 () Unit!5409)

(assert (=> b!177052 (= e!116762 Unit!5412)))

(declare-fun b!177053 () Bool)

(declare-fun e!116771 () Bool)

(assert (=> b!177053 (= e!116771 (validKeyInArray!0 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177054 () Bool)

(assert (=> b!177054 (= e!116761 (+!251 call!17917 (tuple2!3291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3485 thiss!1248))))))

(declare-fun bm!17914 () Bool)

(assert (=> bm!17914 (= call!17915 call!17917)))

(declare-fun b!177055 () Bool)

(declare-fun res!83954 () Bool)

(assert (=> b!177055 (=> (not res!83954) (not e!116770))))

(assert (=> b!177055 (= res!83954 e!116772)))

(declare-fun res!83949 () Bool)

(assert (=> b!177055 (=> res!83949 e!116772)))

(assert (=> b!177055 (= res!83949 (not e!116771))))

(declare-fun res!83953 () Bool)

(assert (=> b!177055 (=> (not res!83953) (not e!116771))))

(assert (=> b!177055 (= res!83953 (bvslt #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(declare-fun b!177056 () Bool)

(assert (=> b!177056 (= e!116761 e!116764)))

(assert (=> b!177056 (= c!31700 (and (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177057 () Bool)

(declare-fun get!2013 (ValueCell!1728 V!5171) V!5171)

(declare-fun dynLambda!477 (Int (_ BitVec 64)) V!5171)

(assert (=> b!177057 (= e!116768 (= (apply!139 lt!87584 (select (arr!3526 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000)) (get!2013 (select (arr!3527 (_values!3627 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!477 (defaultEntry!3644 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177057 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3831 (_values!3627 thiss!1248))))))

(assert (=> b!177057 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))))))

(declare-fun bm!17915 () Bool)

(assert (=> bm!17915 (= call!17921 (contains!1190 lt!87584 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17916 () Bool)

(assert (=> bm!17916 (= call!17916 (contains!1190 lt!87584 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17917 () Bool)

(assert (=> bm!17917 (= call!17919 call!17920)))

(declare-fun b!177058 () Bool)

(declare-fun e!116769 () Bool)

(assert (=> b!177058 (= e!116769 (= (apply!139 lt!87584 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3485 thiss!1248)))))

(declare-fun b!177059 () Bool)

(declare-fun res!83946 () Bool)

(assert (=> b!177059 (=> (not res!83946) (not e!116770))))

(assert (=> b!177059 (= res!83946 e!116763)))

(declare-fun c!31703 () Bool)

(assert (=> b!177059 (= c!31703 (not (= (bvand (extraKeys!3381 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!177060 () Bool)

(declare-fun e!116766 () Bool)

(assert (=> b!177060 (= e!116763 e!116766)))

(declare-fun res!83952 () Bool)

(assert (=> b!177060 (= res!83952 call!17921)))

(assert (=> b!177060 (=> (not res!83952) (not e!116766))))

(declare-fun bm!17918 () Bool)

(assert (=> bm!17918 (= call!17920 (getCurrentListMapNoExtraKeys!169 (_keys!5509 thiss!1248) (_values!3627 thiss!1248) (mask!8573 thiss!1248) (extraKeys!3381 thiss!1248) (zeroValue!3485 thiss!1248) (minValue!3485 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3644 thiss!1248)))))

(declare-fun b!177061 () Bool)

(assert (=> b!177061 (= e!116767 e!116769)))

(declare-fun res!83947 () Bool)

(assert (=> b!177061 (= res!83947 call!17916)))

(assert (=> b!177061 (=> (not res!83947) (not e!116769))))

(declare-fun b!177062 () Bool)

(assert (=> b!177062 (= e!116766 (= (apply!139 lt!87584 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3485 thiss!1248)))))

(assert (= (and d!53631 c!31704) b!177054))

(assert (= (and d!53631 (not c!31704)) b!177056))

(assert (= (and b!177056 c!31700) b!177050))

(assert (= (and b!177056 (not c!31700)) b!177047))

(assert (= (and b!177047 c!31699) b!177049))

(assert (= (and b!177047 (not c!31699)) b!177051))

(assert (= (or b!177049 b!177051) bm!17913))

(assert (= (or b!177050 bm!17913) bm!17917))

(assert (= (or b!177050 b!177049) bm!17914))

(assert (= (or b!177054 bm!17917) bm!17918))

(assert (= (or b!177054 bm!17914) bm!17912))

(assert (= (and d!53631 res!83951) b!177046))

(assert (= (and d!53631 c!31701) b!177042))

(assert (= (and d!53631 (not c!31701)) b!177052))

(assert (= (and d!53631 res!83950) b!177055))

(assert (= (and b!177055 res!83953) b!177053))

(assert (= (and b!177055 (not res!83949)) b!177044))

(assert (= (and b!177044 res!83948) b!177057))

(assert (= (and b!177055 res!83954) b!177059))

(assert (= (and b!177059 c!31703) b!177060))

(assert (= (and b!177059 (not c!31703)) b!177048))

(assert (= (and b!177060 res!83952) b!177062))

(assert (= (or b!177060 b!177048) bm!17915))

(assert (= (and b!177059 res!83946) b!177043))

(assert (= (and b!177043 c!31702) b!177061))

(assert (= (and b!177043 (not c!31702)) b!177045))

(assert (= (and b!177061 res!83947) b!177058))

(assert (= (or b!177061 b!177045) bm!17916))

(declare-fun b_lambda!7077 () Bool)

(assert (=> (not b_lambda!7077) (not b!177057)))

(declare-fun t!7107 () Bool)

(declare-fun tb!2797 () Bool)

(assert (=> (and b!176920 (= (defaultEntry!3644 thiss!1248) (defaultEntry!3644 thiss!1248)) t!7107) tb!2797))

(declare-fun result!4649 () Bool)

(assert (=> tb!2797 (= result!4649 tp_is_empty!4143)))

(assert (=> b!177057 t!7107))

(declare-fun b_and!10891 () Bool)

(assert (= b_and!10887 (and (=> t!7107 result!4649) b_and!10891)))

(declare-fun m!205649 () Bool)

(assert (=> bm!17912 m!205649))

(assert (=> d!53631 m!205583))

(declare-fun m!205651 () Bool)

(assert (=> bm!17916 m!205651))

(declare-fun m!205653 () Bool)

(assert (=> b!177058 m!205653))

(assert (=> b!177053 m!205625))

(assert (=> b!177053 m!205625))

(assert (=> b!177053 m!205627))

(declare-fun m!205655 () Bool)

(assert (=> bm!17918 m!205655))

(declare-fun m!205657 () Bool)

(assert (=> bm!17915 m!205657))

(declare-fun m!205659 () Bool)

(assert (=> b!177062 m!205659))

(declare-fun m!205661 () Bool)

(assert (=> b!177057 m!205661))

(assert (=> b!177057 m!205625))

(declare-fun m!205663 () Bool)

(assert (=> b!177057 m!205663))

(assert (=> b!177057 m!205625))

(declare-fun m!205665 () Bool)

(assert (=> b!177057 m!205665))

(assert (=> b!177057 m!205665))

(assert (=> b!177057 m!205661))

(declare-fun m!205667 () Bool)

(assert (=> b!177057 m!205667))

(assert (=> b!177046 m!205625))

(assert (=> b!177046 m!205625))

(assert (=> b!177046 m!205627))

(declare-fun m!205669 () Bool)

(assert (=> b!177042 m!205669))

(declare-fun m!205671 () Bool)

(assert (=> b!177042 m!205671))

(declare-fun m!205673 () Bool)

(assert (=> b!177042 m!205673))

(declare-fun m!205675 () Bool)

(assert (=> b!177042 m!205675))

(declare-fun m!205677 () Bool)

(assert (=> b!177042 m!205677))

(declare-fun m!205679 () Bool)

(assert (=> b!177042 m!205679))

(declare-fun m!205681 () Bool)

(assert (=> b!177042 m!205681))

(declare-fun m!205683 () Bool)

(assert (=> b!177042 m!205683))

(declare-fun m!205685 () Bool)

(assert (=> b!177042 m!205685))

(declare-fun m!205687 () Bool)

(assert (=> b!177042 m!205687))

(assert (=> b!177042 m!205625))

(assert (=> b!177042 m!205655))

(assert (=> b!177042 m!205681))

(declare-fun m!205689 () Bool)

(assert (=> b!177042 m!205689))

(declare-fun m!205691 () Bool)

(assert (=> b!177042 m!205691))

(assert (=> b!177042 m!205669))

(declare-fun m!205693 () Bool)

(assert (=> b!177042 m!205693))

(assert (=> b!177042 m!205671))

(declare-fun m!205695 () Bool)

(assert (=> b!177042 m!205695))

(assert (=> b!177042 m!205683))

(declare-fun m!205697 () Bool)

(assert (=> b!177042 m!205697))

(declare-fun m!205699 () Bool)

(assert (=> b!177054 m!205699))

(assert (=> b!177044 m!205625))

(assert (=> b!177044 m!205625))

(declare-fun m!205701 () Bool)

(assert (=> b!177044 m!205701))

(assert (=> b!176924 d!53631))

(declare-fun d!53633 () Bool)

(assert (=> d!53633 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!176926 d!53633))

(declare-fun d!53635 () Bool)

(assert (=> d!53635 (= (validMask!0 (mask!8573 thiss!1248)) (and (or (= (mask!8573 thiss!1248) #b00000000000000000000000000000111) (= (mask!8573 thiss!1248) #b00000000000000000000000000001111) (= (mask!8573 thiss!1248) #b00000000000000000000000000011111) (= (mask!8573 thiss!1248) #b00000000000000000000000000111111) (= (mask!8573 thiss!1248) #b00000000000000000000000001111111) (= (mask!8573 thiss!1248) #b00000000000000000000000011111111) (= (mask!8573 thiss!1248) #b00000000000000000000000111111111) (= (mask!8573 thiss!1248) #b00000000000000000000001111111111) (= (mask!8573 thiss!1248) #b00000000000000000000011111111111) (= (mask!8573 thiss!1248) #b00000000000000000000111111111111) (= (mask!8573 thiss!1248) #b00000000000000000001111111111111) (= (mask!8573 thiss!1248) #b00000000000000000011111111111111) (= (mask!8573 thiss!1248) #b00000000000000000111111111111111) (= (mask!8573 thiss!1248) #b00000000000000001111111111111111) (= (mask!8573 thiss!1248) #b00000000000000011111111111111111) (= (mask!8573 thiss!1248) #b00000000000000111111111111111111) (= (mask!8573 thiss!1248) #b00000000000001111111111111111111) (= (mask!8573 thiss!1248) #b00000000000011111111111111111111) (= (mask!8573 thiss!1248) #b00000000000111111111111111111111) (= (mask!8573 thiss!1248) #b00000000001111111111111111111111) (= (mask!8573 thiss!1248) #b00000000011111111111111111111111) (= (mask!8573 thiss!1248) #b00000000111111111111111111111111) (= (mask!8573 thiss!1248) #b00000001111111111111111111111111) (= (mask!8573 thiss!1248) #b00000011111111111111111111111111) (= (mask!8573 thiss!1248) #b00000111111111111111111111111111) (= (mask!8573 thiss!1248) #b00001111111111111111111111111111) (= (mask!8573 thiss!1248) #b00011111111111111111111111111111) (= (mask!8573 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8573 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!176922 d!53635))

(declare-fun d!53637 () Bool)

(declare-fun res!83961 () Bool)

(declare-fun e!116776 () Bool)

(assert (=> d!53637 (=> (not res!83961) (not e!116776))))

(declare-fun simpleValid!152 (LongMapFixedSize!2364) Bool)

(assert (=> d!53637 (= res!83961 (simpleValid!152 thiss!1248))))

(assert (=> d!53637 (= (valid!984 thiss!1248) e!116776)))

(declare-fun b!177071 () Bool)

(declare-fun res!83962 () Bool)

(assert (=> b!177071 (=> (not res!83962) (not e!116776))))

(declare-fun arrayCountValidKeys!0 (array!7434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177071 (= res!83962 (= (arrayCountValidKeys!0 (_keys!5509 thiss!1248) #b00000000000000000000000000000000 (size!3830 (_keys!5509 thiss!1248))) (_size!1231 thiss!1248)))))

(declare-fun b!177072 () Bool)

(declare-fun res!83963 () Bool)

(assert (=> b!177072 (=> (not res!83963) (not e!116776))))

(assert (=> b!177072 (= res!83963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)))))

(declare-fun b!177073 () Bool)

(assert (=> b!177073 (= e!116776 (arrayNoDuplicates!0 (_keys!5509 thiss!1248) #b00000000000000000000000000000000 Nil!2263))))

(assert (= (and d!53637 res!83961) b!177071))

(assert (= (and b!177071 res!83962) b!177072))

(assert (= (and b!177072 res!83963) b!177073))

(declare-fun m!205703 () Bool)

(assert (=> d!53637 m!205703))

(declare-fun m!205705 () Bool)

(assert (=> b!177071 m!205705))

(assert (=> b!177072 m!205587))

(assert (=> b!177073 m!205599))

(assert (=> start!17710 d!53637))

(declare-fun b!177087 () Bool)

(declare-fun e!116783 () SeekEntryResult!572)

(declare-fun lt!87598 () SeekEntryResult!572)

(assert (=> b!177087 (= e!116783 (Found!572 (index!4458 lt!87598)))))

(declare-fun b!177088 () Bool)

(declare-fun e!116784 () SeekEntryResult!572)

(assert (=> b!177088 (= e!116784 Undefined!572)))

(declare-fun b!177089 () Bool)

(declare-fun e!116785 () SeekEntryResult!572)

(assert (=> b!177089 (= e!116785 (MissingZero!572 (index!4458 lt!87598)))))

(declare-fun b!177090 () Bool)

(declare-fun c!31712 () Bool)

(declare-fun lt!87596 () (_ BitVec 64))

(assert (=> b!177090 (= c!31712 (= lt!87596 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!177090 (= e!116783 e!116785)))

(declare-fun b!177091 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7434 (_ BitVec 32)) SeekEntryResult!572)

(assert (=> b!177091 (= e!116785 (seekKeyOrZeroReturnVacant!0 (x!19426 lt!87598) (index!4458 lt!87598) (index!4458 lt!87598) key!828 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)))))

(declare-fun b!177086 () Bool)

(assert (=> b!177086 (= e!116784 e!116783)))

(assert (=> b!177086 (= lt!87596 (select (arr!3526 (_keys!5509 thiss!1248)) (index!4458 lt!87598)))))

(declare-fun c!31711 () Bool)

(assert (=> b!177086 (= c!31711 (= lt!87596 key!828))))

(declare-fun d!53639 () Bool)

(declare-fun lt!87597 () SeekEntryResult!572)

(assert (=> d!53639 (and (or ((_ is Undefined!572) lt!87597) (not ((_ is Found!572) lt!87597)) (and (bvsge (index!4457 lt!87597) #b00000000000000000000000000000000) (bvslt (index!4457 lt!87597) (size!3830 (_keys!5509 thiss!1248))))) (or ((_ is Undefined!572) lt!87597) ((_ is Found!572) lt!87597) (not ((_ is MissingZero!572) lt!87597)) (and (bvsge (index!4456 lt!87597) #b00000000000000000000000000000000) (bvslt (index!4456 lt!87597) (size!3830 (_keys!5509 thiss!1248))))) (or ((_ is Undefined!572) lt!87597) ((_ is Found!572) lt!87597) ((_ is MissingZero!572) lt!87597) (not ((_ is MissingVacant!572) lt!87597)) (and (bvsge (index!4459 lt!87597) #b00000000000000000000000000000000) (bvslt (index!4459 lt!87597) (size!3830 (_keys!5509 thiss!1248))))) (or ((_ is Undefined!572) lt!87597) (ite ((_ is Found!572) lt!87597) (= (select (arr!3526 (_keys!5509 thiss!1248)) (index!4457 lt!87597)) key!828) (ite ((_ is MissingZero!572) lt!87597) (= (select (arr!3526 (_keys!5509 thiss!1248)) (index!4456 lt!87597)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!572) lt!87597) (= (select (arr!3526 (_keys!5509 thiss!1248)) (index!4459 lt!87597)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53639 (= lt!87597 e!116784)))

(declare-fun c!31713 () Bool)

(assert (=> d!53639 (= c!31713 (and ((_ is Intermediate!572) lt!87598) (undefined!1384 lt!87598)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7434 (_ BitVec 32)) SeekEntryResult!572)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53639 (= lt!87598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8573 thiss!1248)) key!828 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)))))

(assert (=> d!53639 (validMask!0 (mask!8573 thiss!1248))))

(assert (=> d!53639 (= (seekEntryOrOpen!0 key!828 (_keys!5509 thiss!1248) (mask!8573 thiss!1248)) lt!87597)))

(assert (= (and d!53639 c!31713) b!177088))

(assert (= (and d!53639 (not c!31713)) b!177086))

(assert (= (and b!177086 c!31711) b!177087))

(assert (= (and b!177086 (not c!31711)) b!177090))

(assert (= (and b!177090 c!31712) b!177089))

(assert (= (and b!177090 (not c!31712)) b!177091))

(declare-fun m!205707 () Bool)

(assert (=> b!177091 m!205707))

(declare-fun m!205709 () Bool)

(assert (=> b!177086 m!205709))

(declare-fun m!205711 () Bool)

(assert (=> d!53639 m!205711))

(declare-fun m!205713 () Bool)

(assert (=> d!53639 m!205713))

(declare-fun m!205715 () Bool)

(assert (=> d!53639 m!205715))

(assert (=> d!53639 m!205713))

(assert (=> d!53639 m!205583))

(declare-fun m!205717 () Bool)

(assert (=> d!53639 m!205717))

(declare-fun m!205719 () Bool)

(assert (=> d!53639 m!205719))

(assert (=> b!176925 d!53639))

(declare-fun d!53641 () Bool)

(assert (=> d!53641 (= (array_inv!2249 (_keys!5509 thiss!1248)) (bvsge (size!3830 (_keys!5509 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176920 d!53641))

(declare-fun d!53643 () Bool)

(assert (=> d!53643 (= (array_inv!2250 (_values!3627 thiss!1248)) (bvsge (size!3831 (_values!3627 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176920 d!53643))

(declare-fun b!177098 () Bool)

(declare-fun e!116790 () Bool)

(assert (=> b!177098 (= e!116790 tp_is_empty!4143)))

(declare-fun condMapEmpty!7080 () Bool)

(declare-fun mapDefault!7080 () ValueCell!1728)

(assert (=> mapNonEmpty!7074 (= condMapEmpty!7080 (= mapRest!7074 ((as const (Array (_ BitVec 32) ValueCell!1728)) mapDefault!7080)))))

(declare-fun e!116791 () Bool)

(declare-fun mapRes!7080 () Bool)

(assert (=> mapNonEmpty!7074 (= tp!15809 (and e!116791 mapRes!7080))))

(declare-fun mapNonEmpty!7080 () Bool)

(declare-fun tp!15819 () Bool)

(assert (=> mapNonEmpty!7080 (= mapRes!7080 (and tp!15819 e!116790))))

(declare-fun mapRest!7080 () (Array (_ BitVec 32) ValueCell!1728))

(declare-fun mapValue!7080 () ValueCell!1728)

(declare-fun mapKey!7080 () (_ BitVec 32))

(assert (=> mapNonEmpty!7080 (= mapRest!7074 (store mapRest!7080 mapKey!7080 mapValue!7080))))

(declare-fun mapIsEmpty!7080 () Bool)

(assert (=> mapIsEmpty!7080 mapRes!7080))

(declare-fun b!177099 () Bool)

(assert (=> b!177099 (= e!116791 tp_is_empty!4143)))

(assert (= (and mapNonEmpty!7074 condMapEmpty!7080) mapIsEmpty!7080))

(assert (= (and mapNonEmpty!7074 (not condMapEmpty!7080)) mapNonEmpty!7080))

(assert (= (and mapNonEmpty!7080 ((_ is ValueCellFull!1728) mapValue!7080)) b!177098))

(assert (= (and mapNonEmpty!7074 ((_ is ValueCellFull!1728) mapDefault!7080)) b!177099))

(declare-fun m!205721 () Bool)

(assert (=> mapNonEmpty!7080 m!205721))

(declare-fun b_lambda!7079 () Bool)

(assert (= b_lambda!7077 (or (and b!176920 b_free!4371) b_lambda!7079)))

(check-sat (not bm!17912) (not b!176997) (not b!177053) (not b!176975) (not b!177044) (not b!176978) (not b!177091) (not bm!17897) (not b!176976) tp_is_empty!4143 (not d!53637) (not d!53639) (not b!176987) (not b!177058) (not b!177071) (not bm!17894) (not bm!17918) (not b!177073) (not b_next!4371) b_and!10891 (not b!176989) (not b!177072) (not b!177054) (not b!176999) (not bm!17916) (not b!177042) (not b!177057) (not mapNonEmpty!7080) (not d!53629) (not d!53631) (not b_lambda!7079) (not b!177062) (not b!177046) (not bm!17915))
(check-sat b_and!10891 (not b_next!4371))
