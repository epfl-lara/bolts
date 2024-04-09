; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75438 () Bool)

(assert start!75438)

(declare-fun b!887707 () Bool)

(declare-fun b_free!15537 () Bool)

(declare-fun b_next!15537 () Bool)

(assert (=> b!887707 (= b_free!15537 (not b_next!15537))))

(declare-fun tp!54555 () Bool)

(declare-fun b_and!25791 () Bool)

(assert (=> b!887707 (= tp!54555 b_and!25791)))

(declare-fun mapNonEmpty!28327 () Bool)

(declare-fun mapRes!28327 () Bool)

(declare-fun tp!54556 () Bool)

(declare-fun e!494522 () Bool)

(assert (=> mapNonEmpty!28327 (= mapRes!28327 (and tp!54556 e!494522))))

(declare-datatypes ((V!28785 0))(
  ( (V!28786 (val!8983 Int)) )
))
(declare-datatypes ((ValueCell!8451 0))(
  ( (ValueCellFull!8451 (v!11446 V!28785)) (EmptyCell!8451) )
))
(declare-fun mapValue!28327 () ValueCell!8451)

(declare-fun mapRest!28327 () (Array (_ BitVec 32) ValueCell!8451))

(declare-fun mapKey!28327 () (_ BitVec 32))

(declare-datatypes ((array!51682 0))(
  ( (array!51683 (arr!24850 (Array (_ BitVec 32) (_ BitVec 64))) (size!25291 (_ BitVec 32))) )
))
(declare-datatypes ((array!51684 0))(
  ( (array!51685 (arr!24851 (Array (_ BitVec 32) ValueCell!8451)) (size!25292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3918 0))(
  ( (LongMapFixedSize!3919 (defaultEntry!5150 Int) (mask!25549 (_ BitVec 32)) (extraKeys!4844 (_ BitVec 32)) (zeroValue!4948 V!28785) (minValue!4948 V!28785) (_size!2014 (_ BitVec 32)) (_keys!9823 array!51682) (_values!5135 array!51684) (_vacant!2014 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1072 0))(
  ( (Cell!1073 (v!11447 LongMapFixedSize!3918)) )
))
(declare-datatypes ((LongMap!1072 0))(
  ( (LongMap!1073 (underlying!547 Cell!1072)) )
))
(declare-fun thiss!821 () LongMap!1072)

(assert (=> mapNonEmpty!28327 (= (arr!24851 (_values!5135 (v!11447 (underlying!547 thiss!821)))) (store mapRest!28327 mapKey!28327 mapValue!28327))))

(declare-fun b!887703 () Bool)

(declare-fun e!494526 () Bool)

(declare-fun key!666 () (_ BitVec 64))

(declare-fun contains!4310 (LongMapFixedSize!3918 (_ BitVec 64)) Bool)

(declare-datatypes ((tuple2!11950 0))(
  ( (tuple2!11951 (_1!5985 (_ BitVec 64)) (_2!5985 V!28785)) )
))
(declare-datatypes ((List!17768 0))(
  ( (Nil!17765) (Cons!17764 (h!18895 tuple2!11950) (t!25071 List!17768)) )
))
(declare-datatypes ((ListLongMap!10661 0))(
  ( (ListLongMap!10662 (toList!5346 List!17768)) )
))
(declare-fun contains!4311 (ListLongMap!10661 (_ BitVec 64)) Bool)

(declare-fun map!12095 (LongMap!1072) ListLongMap!10661)

(assert (=> b!887703 (= e!494526 (not (= (contains!4310 (v!11447 (underlying!547 thiss!821)) key!666) (contains!4311 (map!12095 thiss!821) key!666))))))

(declare-fun res!602229 () Bool)

(assert (=> start!75438 (=> (not res!602229) (not e!494526))))

(declare-fun valid!1517 (LongMap!1072) Bool)

(assert (=> start!75438 (= res!602229 (valid!1517 thiss!821))))

(assert (=> start!75438 e!494526))

(declare-fun e!494525 () Bool)

(assert (=> start!75438 e!494525))

(assert (=> start!75438 true))

(declare-fun b!887704 () Bool)

(declare-fun e!494523 () Bool)

(declare-fun tp_is_empty!17865 () Bool)

(assert (=> b!887704 (= e!494523 tp_is_empty!17865)))

(declare-fun mapIsEmpty!28327 () Bool)

(assert (=> mapIsEmpty!28327 mapRes!28327))

(declare-fun b!887705 () Bool)

(declare-fun e!494524 () Bool)

(declare-fun e!494520 () Bool)

(assert (=> b!887705 (= e!494524 e!494520)))

(declare-fun b!887706 () Bool)

(assert (=> b!887706 (= e!494522 tp_is_empty!17865)))

(declare-fun e!494521 () Bool)

(declare-fun array_inv!19532 (array!51682) Bool)

(declare-fun array_inv!19533 (array!51684) Bool)

(assert (=> b!887707 (= e!494520 (and tp!54555 tp_is_empty!17865 (array_inv!19532 (_keys!9823 (v!11447 (underlying!547 thiss!821)))) (array_inv!19533 (_values!5135 (v!11447 (underlying!547 thiss!821)))) e!494521))))

(declare-fun b!887708 () Bool)

(assert (=> b!887708 (= e!494525 e!494524)))

(declare-fun b!887709 () Bool)

(assert (=> b!887709 (= e!494521 (and e!494523 mapRes!28327))))

(declare-fun condMapEmpty!28327 () Bool)

(declare-fun mapDefault!28327 () ValueCell!8451)

(assert (=> b!887709 (= condMapEmpty!28327 (= (arr!24851 (_values!5135 (v!11447 (underlying!547 thiss!821)))) ((as const (Array (_ BitVec 32) ValueCell!8451)) mapDefault!28327)))))

(assert (= (and start!75438 res!602229) b!887703))

(assert (= (and b!887709 condMapEmpty!28327) mapIsEmpty!28327))

(assert (= (and b!887709 (not condMapEmpty!28327)) mapNonEmpty!28327))

(get-info :version)

(assert (= (and mapNonEmpty!28327 ((_ is ValueCellFull!8451) mapValue!28327)) b!887706))

(assert (= (and b!887709 ((_ is ValueCellFull!8451) mapDefault!28327)) b!887704))

(assert (= b!887707 b!887709))

(assert (= b!887705 b!887707))

(assert (= b!887708 b!887705))

(assert (= start!75438 b!887708))

(declare-fun m!827289 () Bool)

(assert (=> mapNonEmpty!28327 m!827289))

(declare-fun m!827291 () Bool)

(assert (=> b!887703 m!827291))

(declare-fun m!827293 () Bool)

(assert (=> b!887703 m!827293))

(assert (=> b!887703 m!827293))

(declare-fun m!827295 () Bool)

(assert (=> b!887703 m!827295))

(declare-fun m!827297 () Bool)

(assert (=> start!75438 m!827297))

(declare-fun m!827299 () Bool)

(assert (=> b!887707 m!827299))

(declare-fun m!827301 () Bool)

(assert (=> b!887707 m!827301))

(check-sat (not mapNonEmpty!28327) (not b_next!15537) b_and!25791 tp_is_empty!17865 (not b!887707) (not b!887703) (not start!75438))
(check-sat b_and!25791 (not b_next!15537))
(get-model)

(declare-fun d!109895 () Bool)

(declare-fun valid!1519 (LongMapFixedSize!3918) Bool)

(assert (=> d!109895 (= (valid!1517 thiss!821) (valid!1519 (v!11447 (underlying!547 thiss!821))))))

(declare-fun bs!24886 () Bool)

(assert (= bs!24886 d!109895))

(declare-fun m!827317 () Bool)

(assert (=> bs!24886 m!827317))

(assert (=> start!75438 d!109895))

(declare-fun b!887751 () Bool)

(assert (=> b!887751 false))

(declare-datatypes ((Unit!30220 0))(
  ( (Unit!30221) )
))
(declare-fun lt!401445 () Unit!30220)

(declare-fun lt!401449 () Unit!30220)

(assert (=> b!887751 (= lt!401445 lt!401449)))

(declare-datatypes ((SeekEntryResult!8754 0))(
  ( (MissingZero!8754 (index!37386 (_ BitVec 32))) (Found!8754 (index!37387 (_ BitVec 32))) (Intermediate!8754 (undefined!9566 Bool) (index!37388 (_ BitVec 32)) (x!75295 (_ BitVec 32))) (Undefined!8754) (MissingVacant!8754 (index!37389 (_ BitVec 32))) )
))
(declare-fun lt!401441 () SeekEntryResult!8754)

(declare-fun lt!401452 () (_ BitVec 32))

(assert (=> b!887751 (and ((_ is Found!8754) lt!401441) (= (index!37387 lt!401441) lt!401452))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51682 (_ BitVec 32)) SeekEntryResult!8754)

(assert (=> b!887751 (= lt!401441 (seekEntry!0 key!666 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821)))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!51682 (_ BitVec 32)) Unit!30220)

(assert (=> b!887751 (= lt!401449 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!666 lt!401452 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821)))))))

(declare-fun lt!401450 () Unit!30220)

(declare-fun lt!401440 () Unit!30220)

(assert (=> b!887751 (= lt!401450 lt!401440)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51682 (_ BitVec 32)) Bool)

(assert (=> b!887751 (arrayForallSeekEntryOrOpenFound!0 lt!401452 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!51682 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30220)

(assert (=> b!887751 (= lt!401440 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000000 lt!401452))))

(declare-fun arrayScanForKey!0 (array!51682 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887751 (= lt!401452 (arrayScanForKey!0 (_keys!9823 (v!11447 (underlying!547 thiss!821))) key!666 #b00000000000000000000000000000000))))

(declare-fun lt!401451 () Unit!30220)

(declare-fun lt!401448 () Unit!30220)

(assert (=> b!887751 (= lt!401451 lt!401448)))

(declare-fun e!494562 () Bool)

(assert (=> b!887751 e!494562))

(declare-fun c!93666 () Bool)

(assert (=> b!887751 (= c!93666 (and (not (= key!666 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!666 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!158 (array!51682 array!51684 (_ BitVec 32) (_ BitVec 32) V!28785 V!28785 (_ BitVec 64) Int) Unit!30220)

(assert (=> b!887751 (= lt!401448 (lemmaKeyInListMapIsInArray!158 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (_values!5135 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821))) (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) (zeroValue!4948 (v!11447 (underlying!547 thiss!821))) (minValue!4948 (v!11447 (underlying!547 thiss!821))) key!666 (defaultEntry!5150 (v!11447 (underlying!547 thiss!821)))))))

(declare-fun e!494566 () Unit!30220)

(declare-fun Unit!30222 () Unit!30220)

(assert (=> b!887751 (= e!494566 Unit!30222)))

(declare-fun bm!39398 () Bool)

(declare-fun call!39402 () ListLongMap!10661)

(declare-fun getCurrentListMap!2603 (array!51682 array!51684 (_ BitVec 32) (_ BitVec 32) V!28785 V!28785 (_ BitVec 32) Int) ListLongMap!10661)

(assert (=> bm!39398 (= call!39402 (getCurrentListMap!2603 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (_values!5135 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821))) (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) (zeroValue!4948 (v!11447 (underlying!547 thiss!821))) (minValue!4948 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000000 (defaultEntry!5150 (v!11447 (underlying!547 thiss!821)))))))

(declare-fun b!887752 () Bool)

(declare-fun Unit!30223 () Unit!30220)

(assert (=> b!887752 (= e!494566 Unit!30223)))

(declare-fun bm!39399 () Bool)

(declare-fun call!39403 () Bool)

(declare-fun lt!401444 () SeekEntryResult!8754)

(declare-fun c!93669 () Bool)

(assert (=> bm!39399 (= call!39403 (contains!4311 call!39402 (ite c!93669 (select (arr!24850 (_keys!9823 (v!11447 (underlying!547 thiss!821)))) (index!37387 lt!401444)) key!666)))))

(declare-fun b!887753 () Bool)

(assert (=> b!887753 (= c!93669 ((_ is Found!8754) lt!401444))))

(assert (=> b!887753 (= lt!401444 (seekEntry!0 key!666 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821)))))))

(declare-fun e!494565 () Bool)

(declare-fun e!494563 () Bool)

(assert (=> b!887753 (= e!494565 e!494563)))

(declare-fun b!887754 () Bool)

(declare-fun e!494564 () Bool)

(assert (=> b!887754 (= e!494564 (not (= (bvand (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!887755 () Bool)

(assert (=> b!887755 (= e!494563 true)))

(declare-fun lt!401446 () Unit!30220)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51682 (_ BitVec 64) (_ BitVec 32)) Unit!30220)

(assert (=> b!887755 (= lt!401446 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9823 (v!11447 (underlying!547 thiss!821))) key!666 (index!37387 lt!401444)))))

(declare-fun call!39401 () Bool)

(assert (=> b!887755 call!39401))

(declare-fun lt!401438 () Unit!30220)

(assert (=> b!887755 (= lt!401438 lt!401446)))

(declare-fun lt!401447 () Unit!30220)

(declare-fun lemmaValidKeyInArrayIsInListMap!196 (array!51682 array!51684 (_ BitVec 32) (_ BitVec 32) V!28785 V!28785 (_ BitVec 32) Int) Unit!30220)

(assert (=> b!887755 (= lt!401447 (lemmaValidKeyInArrayIsInListMap!196 (_keys!9823 (v!11447 (underlying!547 thiss!821))) (_values!5135 (v!11447 (underlying!547 thiss!821))) (mask!25549 (v!11447 (underlying!547 thiss!821))) (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) (zeroValue!4948 (v!11447 (underlying!547 thiss!821))) (minValue!4948 (v!11447 (underlying!547 thiss!821))) (index!37387 lt!401444) (defaultEntry!5150 (v!11447 (underlying!547 thiss!821)))))))

(assert (=> b!887755 call!39403))

(declare-fun lt!401443 () Unit!30220)

(assert (=> b!887755 (= lt!401443 lt!401447)))

(declare-fun b!887756 () Bool)

(assert (=> b!887756 (= e!494562 (ite (= key!666 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!887757 () Bool)

(assert (=> b!887757 (= e!494563 false)))

(declare-fun c!93668 () Bool)

(assert (=> b!887757 (= c!93668 call!39403)))

(declare-fun lt!401442 () Unit!30220)

(assert (=> b!887757 (= lt!401442 e!494566)))

(declare-fun bm!39400 () Bool)

(declare-fun arrayContainsKey!0 (array!51682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39400 (= call!39401 (arrayContainsKey!0 (_keys!9823 (v!11447 (underlying!547 thiss!821))) key!666 #b00000000000000000000000000000000))))

(declare-fun b!887758 () Bool)

(assert (=> b!887758 (= e!494564 e!494565)))

(declare-fun c!93667 () Bool)

(assert (=> b!887758 (= c!93667 (= key!666 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!887759 () Bool)

(assert (=> b!887759 (= e!494562 call!39401)))

(declare-fun b!887760 () Bool)

(assert (=> b!887760 (= e!494565 (not (= (bvand (extraKeys!4844 (v!11447 (underlying!547 thiss!821))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!109897 () Bool)

(declare-fun lt!401439 () Bool)

(declare-fun map!12096 (LongMapFixedSize!3918) ListLongMap!10661)

(assert (=> d!109897 (= lt!401439 (contains!4311 (map!12096 (v!11447 (underlying!547 thiss!821))) key!666))))

(assert (=> d!109897 (= lt!401439 e!494564)))

(declare-fun c!93665 () Bool)

(assert (=> d!109897 (= c!93665 (= key!666 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!109897 (valid!1519 (v!11447 (underlying!547 thiss!821)))))

(assert (=> d!109897 (= (contains!4310 (v!11447 (underlying!547 thiss!821)) key!666) lt!401439)))

(assert (= (and d!109897 c!93665) b!887754))

(assert (= (and d!109897 (not c!93665)) b!887758))

(assert (= (and b!887758 c!93667) b!887760))

(assert (= (and b!887758 (not c!93667)) b!887753))

(assert (= (and b!887753 c!93669) b!887755))

(assert (= (and b!887753 (not c!93669)) b!887757))

(assert (= (and b!887757 c!93668) b!887751))

(assert (= (and b!887757 (not c!93668)) b!887752))

(assert (= (and b!887751 c!93666) b!887759))

(assert (= (and b!887751 (not c!93666)) b!887756))

(assert (= (or b!887755 b!887757) bm!39398))

(assert (= (or b!887755 b!887759) bm!39400))

(assert (= (or b!887755 b!887757) bm!39399))

(declare-fun m!827319 () Bool)

(assert (=> bm!39398 m!827319))

(declare-fun m!827321 () Bool)

(assert (=> bm!39400 m!827321))

(declare-fun m!827323 () Bool)

(assert (=> b!887755 m!827323))

(declare-fun m!827325 () Bool)

(assert (=> b!887755 m!827325))

(declare-fun m!827327 () Bool)

(assert (=> bm!39399 m!827327))

(declare-fun m!827329 () Bool)

(assert (=> bm!39399 m!827329))

(declare-fun m!827331 () Bool)

(assert (=> d!109897 m!827331))

(assert (=> d!109897 m!827331))

(declare-fun m!827333 () Bool)

(assert (=> d!109897 m!827333))

(assert (=> d!109897 m!827317))

(declare-fun m!827335 () Bool)

(assert (=> b!887751 m!827335))

(declare-fun m!827337 () Bool)

(assert (=> b!887751 m!827337))

(declare-fun m!827339 () Bool)

(assert (=> b!887751 m!827339))

(declare-fun m!827341 () Bool)

(assert (=> b!887751 m!827341))

(declare-fun m!827343 () Bool)

(assert (=> b!887751 m!827343))

(declare-fun m!827345 () Bool)

(assert (=> b!887751 m!827345))

(assert (=> b!887753 m!827341))

(assert (=> b!887703 d!109897))

(declare-fun d!109899 () Bool)

(declare-fun e!494572 () Bool)

(assert (=> d!109899 e!494572))

(declare-fun res!602235 () Bool)

(assert (=> d!109899 (=> res!602235 e!494572)))

(declare-fun lt!401463 () Bool)

(assert (=> d!109899 (= res!602235 (not lt!401463))))

(declare-fun lt!401462 () Bool)

(assert (=> d!109899 (= lt!401463 lt!401462)))

(declare-fun lt!401461 () Unit!30220)

(declare-fun e!494571 () Unit!30220)

(assert (=> d!109899 (= lt!401461 e!494571)))

(declare-fun c!93672 () Bool)

(assert (=> d!109899 (= c!93672 lt!401462)))

(declare-fun containsKey!419 (List!17768 (_ BitVec 64)) Bool)

(assert (=> d!109899 (= lt!401462 (containsKey!419 (toList!5346 (map!12095 thiss!821)) key!666))))

(assert (=> d!109899 (= (contains!4311 (map!12095 thiss!821) key!666) lt!401463)))

(declare-fun b!887767 () Bool)

(declare-fun lt!401464 () Unit!30220)

(assert (=> b!887767 (= e!494571 lt!401464)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!314 (List!17768 (_ BitVec 64)) Unit!30220)

(assert (=> b!887767 (= lt!401464 (lemmaContainsKeyImpliesGetValueByKeyDefined!314 (toList!5346 (map!12095 thiss!821)) key!666))))

(declare-datatypes ((Option!441 0))(
  ( (Some!440 (v!11450 V!28785)) (None!439) )
))
(declare-fun isDefined!316 (Option!441) Bool)

(declare-fun getValueByKey!435 (List!17768 (_ BitVec 64)) Option!441)

(assert (=> b!887767 (isDefined!316 (getValueByKey!435 (toList!5346 (map!12095 thiss!821)) key!666))))

(declare-fun b!887768 () Bool)

(declare-fun Unit!30224 () Unit!30220)

(assert (=> b!887768 (= e!494571 Unit!30224)))

(declare-fun b!887769 () Bool)

(assert (=> b!887769 (= e!494572 (isDefined!316 (getValueByKey!435 (toList!5346 (map!12095 thiss!821)) key!666)))))

(assert (= (and d!109899 c!93672) b!887767))

(assert (= (and d!109899 (not c!93672)) b!887768))

(assert (= (and d!109899 (not res!602235)) b!887769))

(declare-fun m!827347 () Bool)

(assert (=> d!109899 m!827347))

(declare-fun m!827349 () Bool)

(assert (=> b!887767 m!827349))

(declare-fun m!827351 () Bool)

(assert (=> b!887767 m!827351))

(assert (=> b!887767 m!827351))

(declare-fun m!827353 () Bool)

(assert (=> b!887767 m!827353))

(assert (=> b!887769 m!827351))

(assert (=> b!887769 m!827351))

(assert (=> b!887769 m!827353))

(assert (=> b!887703 d!109899))

(declare-fun d!109901 () Bool)

(assert (=> d!109901 (= (map!12095 thiss!821) (map!12096 (v!11447 (underlying!547 thiss!821))))))

(declare-fun bs!24887 () Bool)

(assert (= bs!24887 d!109901))

(assert (=> bs!24887 m!827331))

(assert (=> b!887703 d!109901))

(declare-fun d!109903 () Bool)

(assert (=> d!109903 (= (array_inv!19532 (_keys!9823 (v!11447 (underlying!547 thiss!821)))) (bvsge (size!25291 (_keys!9823 (v!11447 (underlying!547 thiss!821)))) #b00000000000000000000000000000000))))

(assert (=> b!887707 d!109903))

(declare-fun d!109905 () Bool)

(assert (=> d!109905 (= (array_inv!19533 (_values!5135 (v!11447 (underlying!547 thiss!821)))) (bvsge (size!25292 (_values!5135 (v!11447 (underlying!547 thiss!821)))) #b00000000000000000000000000000000))))

(assert (=> b!887707 d!109905))

(declare-fun mapNonEmpty!28333 () Bool)

(declare-fun mapRes!28333 () Bool)

(declare-fun tp!54565 () Bool)

(declare-fun e!494578 () Bool)

(assert (=> mapNonEmpty!28333 (= mapRes!28333 (and tp!54565 e!494578))))

(declare-fun mapKey!28333 () (_ BitVec 32))

(declare-fun mapValue!28333 () ValueCell!8451)

(declare-fun mapRest!28333 () (Array (_ BitVec 32) ValueCell!8451))

(assert (=> mapNonEmpty!28333 (= mapRest!28327 (store mapRest!28333 mapKey!28333 mapValue!28333))))

(declare-fun b!887777 () Bool)

(declare-fun e!494577 () Bool)

(assert (=> b!887777 (= e!494577 tp_is_empty!17865)))

(declare-fun mapIsEmpty!28333 () Bool)

(assert (=> mapIsEmpty!28333 mapRes!28333))

(declare-fun b!887776 () Bool)

(assert (=> b!887776 (= e!494578 tp_is_empty!17865)))

(declare-fun condMapEmpty!28333 () Bool)

(declare-fun mapDefault!28333 () ValueCell!8451)

(assert (=> mapNonEmpty!28327 (= condMapEmpty!28333 (= mapRest!28327 ((as const (Array (_ BitVec 32) ValueCell!8451)) mapDefault!28333)))))

(assert (=> mapNonEmpty!28327 (= tp!54556 (and e!494577 mapRes!28333))))

(assert (= (and mapNonEmpty!28327 condMapEmpty!28333) mapIsEmpty!28333))

(assert (= (and mapNonEmpty!28327 (not condMapEmpty!28333)) mapNonEmpty!28333))

(assert (= (and mapNonEmpty!28333 ((_ is ValueCellFull!8451) mapValue!28333)) b!887776))

(assert (= (and mapNonEmpty!28327 ((_ is ValueCellFull!8451) mapDefault!28333)) b!887777))

(declare-fun m!827355 () Bool)

(assert (=> mapNonEmpty!28333 m!827355))

(check-sat (not d!109901) (not b_next!15537) (not mapNonEmpty!28333) b_and!25791 (not b!887767) (not bm!39398) tp_is_empty!17865 (not b!887753) (not b!887769) (not bm!39399) (not bm!39400) (not b!887755) (not d!109899) (not d!109897) (not b!887751) (not d!109895))
(check-sat b_and!25791 (not b_next!15537))
