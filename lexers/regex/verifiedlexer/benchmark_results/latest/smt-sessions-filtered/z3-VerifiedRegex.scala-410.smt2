; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12128 () Bool)

(assert start!12128)

(declare-fun b!119852 () Bool)

(declare-fun b_free!3833 () Bool)

(declare-fun b_next!3833 () Bool)

(assert (=> b!119852 (= b_free!3833 (not b_next!3833))))

(declare-fun tp!65831 () Bool)

(declare-fun b_and!5963 () Bool)

(assert (=> b!119852 (= tp!65831 b_and!5963)))

(declare-fun b!119839 () Bool)

(declare-fun b_free!3835 () Bool)

(declare-fun b_next!3835 () Bool)

(assert (=> b!119839 (= b_free!3835 (not b_next!3835))))

(declare-fun tp!65822 () Bool)

(declare-fun b_and!5965 () Bool)

(assert (=> b!119839 (= tp!65822 b_and!5965)))

(declare-fun b!119837 () Bool)

(declare-fun res!56352 () Bool)

(declare-fun e!68481 () Bool)

(assert (=> b!119837 (=> res!56352 e!68481)))

(declare-datatypes ((C!1992 0))(
  ( (C!1993 (val!722 Int)) )
))
(declare-datatypes ((Regex!535 0))(
  ( (ElementMatch!535 (c!26877 C!1992)) (Concat!919 (regOne!1582 Regex!535) (regTwo!1582 Regex!535)) (EmptyExpr!535) (Star!535 (reg!864 Regex!535)) (EmptyLang!535) (Union!535 (regOne!1583 Regex!535) (regTwo!1583 Regex!535)) )
))
(declare-fun r!15532 () Regex!535)

(declare-fun nullable!80 (Regex!535) Bool)

(assert (=> b!119837 (= res!56352 (nullable!80 r!15532))))

(declare-fun res!56358 () Bool)

(declare-fun e!68475 () Bool)

(assert (=> start!12128 (=> (not res!56358) (not e!68475))))

(declare-fun validRegex!135 (Regex!535) Bool)

(assert (=> start!12128 (= res!56358 (validRegex!135 r!15532))))

(assert (=> start!12128 e!68475))

(assert (=> start!12128 true))

(declare-fun e!68487 () Bool)

(assert (=> start!12128 e!68487))

(declare-fun e!68484 () Bool)

(assert (=> start!12128 e!68484))

(declare-fun e!68485 () Bool)

(assert (=> start!12128 e!68485))

(declare-fun e!68473 () Bool)

(assert (=> start!12128 e!68473))

(declare-datatypes ((Hashable!397 0))(
  ( (HashableExt!396 (__x!2128 Int)) )
))
(declare-datatypes ((tuple2!2272 0))(
  ( (tuple2!2273 (_1!1346 Regex!535) (_2!1346 C!1992)) )
))
(declare-datatypes ((tuple2!2274 0))(
  ( (tuple2!2275 (_1!1347 tuple2!2272) (_2!1347 Regex!535)) )
))
(declare-datatypes ((List!1982 0))(
  ( (Nil!1976) (Cons!1976 (h!7373 tuple2!2274) (t!22459 List!1982)) )
))
(declare-datatypes ((array!1473 0))(
  ( (array!1474 (arr!686 (Array (_ BitVec 32) (_ BitVec 64))) (size!1822 (_ BitVec 32))) )
))
(declare-datatypes ((array!1475 0))(
  ( (array!1476 (arr!687 (Array (_ BitVec 32) List!1982)) (size!1823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!802 0))(
  ( (LongMapFixedSize!803 (defaultEntry!740 Int) (mask!1336 (_ BitVec 32)) (extraKeys!647 (_ BitVec 32)) (zeroValue!657 List!1982) (minValue!657 List!1982) (_size!935 (_ BitVec 32)) (_keys!692 array!1473) (_values!679 array!1475) (_vacant!462 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1593 0))(
  ( (Cell!1594 (v!13333 LongMapFixedSize!802)) )
))
(declare-datatypes ((MutLongMap!401 0))(
  ( (LongMap!401 (underlying!1001 Cell!1593)) (MutLongMapExt!400 (__x!2129 Int)) )
))
(declare-datatypes ((Cell!1595 0))(
  ( (Cell!1596 (v!13334 MutLongMap!401)) )
))
(declare-datatypes ((MutableMap!397 0))(
  ( (MutableMapExt!396 (__x!2130 Int)) (HashMap!397 (underlying!1002 Cell!1595) (hashF!2273 Hashable!397) (_size!936 (_ BitVec 32)) (defaultValue!546 Int)) )
))
(declare-datatypes ((Cache!230 0))(
  ( (Cache!231 (cache!849 MutableMap!397)) )
))
(declare-fun cache!470 () Cache!230)

(declare-fun e!68476 () Bool)

(declare-fun inv!2501 (Cache!230) Bool)

(assert (=> start!12128 (and (inv!2501 cache!470) e!68476)))

(declare-fun mapNonEmpty!1550 () Bool)

(declare-fun mapRes!1550 () Bool)

(declare-fun tp!65826 () Bool)

(declare-fun tp!65830 () Bool)

(assert (=> mapNonEmpty!1550 (= mapRes!1550 (and tp!65826 tp!65830))))

(declare-fun mapRest!1550 () (Array (_ BitVec 32) List!1982))

(declare-fun mapKey!1550 () (_ BitVec 32))

(declare-fun mapValue!1550 () List!1982)

(assert (=> mapNonEmpty!1550 (= (arr!687 (_values!679 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) (store mapRest!1550 mapKey!1550 mapValue!1550))))

(declare-fun b!119838 () Bool)

(declare-fun tp_is_empty!1125 () Bool)

(declare-fun tp!65818 () Bool)

(assert (=> b!119838 (= e!68484 (and tp_is_empty!1125 tp!65818))))

(declare-fun e!68471 () Bool)

(declare-fun e!68472 () Bool)

(assert (=> b!119839 (= e!68471 (and e!68472 tp!65822))))

(declare-fun b!119840 () Bool)

(declare-fun res!56355 () Bool)

(declare-fun e!68477 () Bool)

(assert (=> b!119840 (=> res!56355 e!68477)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!119840 (= res!56355 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!119841 () Bool)

(declare-fun e!68482 () Bool)

(declare-fun e!68478 () Bool)

(assert (=> b!119841 (= e!68482 e!68478)))

(declare-fun b!119842 () Bool)

(declare-fun tp!65825 () Bool)

(declare-fun tp!65832 () Bool)

(assert (=> b!119842 (= e!68487 (and tp!65825 tp!65832))))

(declare-fun b!119843 () Bool)

(assert (=> b!119843 (= e!68476 e!68471)))

(declare-fun b!119844 () Bool)

(declare-fun e!68486 () Bool)

(assert (=> b!119844 (= e!68478 e!68486)))

(declare-fun b!119845 () Bool)

(declare-fun e!68480 () Bool)

(declare-fun e!68479 () Bool)

(assert (=> b!119845 (= e!68480 (not e!68479))))

(declare-fun res!56357 () Bool)

(assert (=> b!119845 (=> res!56357 e!68479)))

(declare-datatypes ((List!1983 0))(
  ( (Nil!1977) (Cons!1977 (h!7374 C!1992) (t!22460 List!1983)) )
))
(declare-fun testedP!367 () List!1983)

(declare-fun totalInput!1363 () List!1983)

(declare-fun isPrefix!115 (List!1983 List!1983) Bool)

(assert (=> b!119845 (= res!56357 (not (isPrefix!115 testedP!367 totalInput!1363)))))

(declare-fun lt!35581 () List!1983)

(assert (=> b!119845 (isPrefix!115 testedP!367 lt!35581)))

(declare-datatypes ((Unit!1487 0))(
  ( (Unit!1488) )
))
(declare-fun lt!35577 () Unit!1487)

(declare-fun testedSuffix!285 () List!1983)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!61 (List!1983 List!1983) Unit!1487)

(assert (=> b!119845 (= lt!35577 (lemmaConcatTwoListThenFirstIsPrefix!61 testedP!367 testedSuffix!285))))

(declare-fun b!119846 () Bool)

(declare-fun tp!65829 () Bool)

(assert (=> b!119846 (= e!68485 (and tp_is_empty!1125 tp!65829))))

(declare-fun b!119847 () Bool)

(assert (=> b!119847 (= e!68487 tp_is_empty!1125)))

(declare-fun b!119848 () Bool)

(declare-datatypes ((tuple2!2276 0))(
  ( (tuple2!2277 (_1!1348 List!1983) (_2!1348 List!1983)) )
))
(declare-fun findLongestMatchInner!44 (Regex!535 List!1983 Int List!1983 List!1983 Int) tuple2!2276)

(assert (=> b!119848 (= e!68481 (= (tuple2!2277 Nil!1977 totalInput!1363) (findLongestMatchInner!44 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(declare-fun b!119849 () Bool)

(declare-fun tp!65819 () Bool)

(declare-fun tp!65820 () Bool)

(assert (=> b!119849 (= e!68487 (and tp!65819 tp!65820))))

(declare-fun b!119850 () Bool)

(declare-fun res!56361 () Bool)

(assert (=> b!119850 (=> (not res!56361) (not e!68480))))

(declare-fun size!1824 (List!1983) Int)

(assert (=> b!119850 (= res!56361 (= totalInputSize!643 (size!1824 totalInput!1363)))))

(declare-fun b!119851 () Bool)

(assert (=> b!119851 (= e!68479 e!68477)))

(declare-fun res!56360 () Bool)

(assert (=> b!119851 (=> res!56360 e!68477)))

(declare-fun lostCause!59 (Regex!535) Bool)

(assert (=> b!119851 (= res!56360 (lostCause!59 r!15532))))

(declare-fun lt!35578 () List!1983)

(assert (=> b!119851 (and (= testedSuffix!285 lt!35578) (= lt!35578 testedSuffix!285))))

(declare-fun lt!35583 () Unit!1487)

(declare-fun lemmaSamePrefixThenSameSuffix!50 (List!1983 List!1983 List!1983 List!1983 List!1983) Unit!1487)

(assert (=> b!119851 (= lt!35583 (lemmaSamePrefixThenSameSuffix!50 testedP!367 testedSuffix!285 testedP!367 lt!35578 totalInput!1363))))

(declare-fun getSuffix!54 (List!1983 List!1983) List!1983)

(assert (=> b!119851 (= lt!35578 (getSuffix!54 totalInput!1363 testedP!367))))

(declare-fun tp!65824 () Bool)

(declare-fun e!68483 () Bool)

(declare-fun tp!65821 () Bool)

(declare-fun array_inv!493 (array!1473) Bool)

(declare-fun array_inv!494 (array!1475) Bool)

(assert (=> b!119852 (= e!68486 (and tp!65831 tp!65821 tp!65824 (array_inv!493 (_keys!692 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) (array_inv!494 (_values!679 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) e!68483))))

(declare-fun mapIsEmpty!1550 () Bool)

(assert (=> mapIsEmpty!1550 mapRes!1550))

(declare-fun b!119853 () Bool)

(assert (=> b!119853 (= e!68477 e!68481)))

(declare-fun res!56354 () Bool)

(assert (=> b!119853 (=> res!56354 e!68481)))

(assert (=> b!119853 (= res!56354 (not (= testedP!367 totalInput!1363)))))

(assert (=> b!119853 (= totalInput!1363 testedP!367)))

(declare-fun lt!35580 () Unit!1487)

(declare-fun lemmaIsPrefixSameLengthThenSameList!31 (List!1983 List!1983 List!1983) Unit!1487)

(assert (=> b!119853 (= lt!35580 (lemmaIsPrefixSameLengthThenSameList!31 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!119853 (isPrefix!115 totalInput!1363 totalInput!1363)))

(declare-fun lt!35582 () Unit!1487)

(declare-fun lemmaIsPrefixRefl!86 (List!1983 List!1983) Unit!1487)

(assert (=> b!119853 (= lt!35582 (lemmaIsPrefixRefl!86 totalInput!1363 totalInput!1363))))

(declare-fun b!119854 () Bool)

(declare-fun tp!65828 () Bool)

(assert (=> b!119854 (= e!68487 tp!65828)))

(declare-fun b!119855 () Bool)

(declare-fun res!56359 () Bool)

(assert (=> b!119855 (=> (not res!56359) (not e!68480))))

(assert (=> b!119855 (= res!56359 (= testedPSize!285 (size!1824 testedP!367)))))

(declare-fun b!119856 () Bool)

(declare-fun res!56353 () Bool)

(assert (=> b!119856 (=> (not res!56353) (not e!68475))))

(declare-fun valid!363 (Cache!230) Bool)

(assert (=> b!119856 (= res!56353 (valid!363 cache!470))))

(declare-fun b!119857 () Bool)

(assert (=> b!119857 (= e!68475 e!68480)))

(declare-fun res!56356 () Bool)

(assert (=> b!119857 (=> (not res!56356) (not e!68480))))

(assert (=> b!119857 (= res!56356 (= lt!35581 totalInput!1363))))

(declare-fun ++!368 (List!1983 List!1983) List!1983)

(assert (=> b!119857 (= lt!35581 (++!368 testedP!367 testedSuffix!285))))

(declare-fun b!119858 () Bool)

(declare-fun tp!65827 () Bool)

(assert (=> b!119858 (= e!68483 (and tp!65827 mapRes!1550))))

(declare-fun condMapEmpty!1550 () Bool)

(declare-fun mapDefault!1550 () List!1982)

(assert (=> b!119858 (= condMapEmpty!1550 (= (arr!687 (_values!679 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) ((as const (Array (_ BitVec 32) List!1982)) mapDefault!1550)))))

(declare-fun b!119859 () Bool)

(declare-fun lt!35579 () MutLongMap!401)

(get-info :version)

(assert (=> b!119859 (= e!68472 (and e!68482 ((_ is LongMap!401) lt!35579)))))

(assert (=> b!119859 (= lt!35579 (v!13334 (underlying!1002 (cache!849 cache!470))))))

(declare-fun b!119860 () Bool)

(declare-fun tp!65823 () Bool)

(assert (=> b!119860 (= e!68473 (and tp_is_empty!1125 tp!65823))))

(assert (= (and start!12128 res!56358) b!119856))

(assert (= (and b!119856 res!56353) b!119857))

(assert (= (and b!119857 res!56356) b!119855))

(assert (= (and b!119855 res!56359) b!119850))

(assert (= (and b!119850 res!56361) b!119845))

(assert (= (and b!119845 (not res!56357)) b!119851))

(assert (= (and b!119851 (not res!56360)) b!119840))

(assert (= (and b!119840 (not res!56355)) b!119853))

(assert (= (and b!119853 (not res!56354)) b!119837))

(assert (= (and b!119837 (not res!56352)) b!119848))

(assert (= (and start!12128 ((_ is ElementMatch!535) r!15532)) b!119847))

(assert (= (and start!12128 ((_ is Concat!919) r!15532)) b!119849))

(assert (= (and start!12128 ((_ is Star!535) r!15532)) b!119854))

(assert (= (and start!12128 ((_ is Union!535) r!15532)) b!119842))

(assert (= (and start!12128 ((_ is Cons!1977) totalInput!1363)) b!119838))

(assert (= (and start!12128 ((_ is Cons!1977) testedSuffix!285)) b!119846))

(assert (= (and start!12128 ((_ is Cons!1977) testedP!367)) b!119860))

(assert (= (and b!119858 condMapEmpty!1550) mapIsEmpty!1550))

(assert (= (and b!119858 (not condMapEmpty!1550)) mapNonEmpty!1550))

(assert (= b!119852 b!119858))

(assert (= b!119844 b!119852))

(assert (= b!119841 b!119844))

(assert (= (and b!119859 ((_ is LongMap!401) (v!13334 (underlying!1002 (cache!849 cache!470))))) b!119841))

(assert (= b!119839 b!119859))

(assert (= (and b!119843 ((_ is HashMap!397) (cache!849 cache!470))) b!119839))

(assert (= start!12128 b!119843))

(declare-fun m!106585 () Bool)

(assert (=> mapNonEmpty!1550 m!106585))

(declare-fun m!106587 () Bool)

(assert (=> b!119851 m!106587))

(declare-fun m!106589 () Bool)

(assert (=> b!119851 m!106589))

(declare-fun m!106591 () Bool)

(assert (=> b!119851 m!106591))

(declare-fun m!106593 () Bool)

(assert (=> b!119837 m!106593))

(declare-fun m!106595 () Bool)

(assert (=> b!119848 m!106595))

(declare-fun m!106597 () Bool)

(assert (=> b!119852 m!106597))

(declare-fun m!106599 () Bool)

(assert (=> b!119852 m!106599))

(declare-fun m!106601 () Bool)

(assert (=> b!119855 m!106601))

(declare-fun m!106603 () Bool)

(assert (=> b!119845 m!106603))

(declare-fun m!106605 () Bool)

(assert (=> b!119845 m!106605))

(declare-fun m!106607 () Bool)

(assert (=> b!119845 m!106607))

(declare-fun m!106609 () Bool)

(assert (=> b!119853 m!106609))

(declare-fun m!106611 () Bool)

(assert (=> b!119853 m!106611))

(declare-fun m!106613 () Bool)

(assert (=> b!119853 m!106613))

(declare-fun m!106615 () Bool)

(assert (=> start!12128 m!106615))

(declare-fun m!106617 () Bool)

(assert (=> start!12128 m!106617))

(declare-fun m!106619 () Bool)

(assert (=> b!119856 m!106619))

(declare-fun m!106621 () Bool)

(assert (=> b!119857 m!106621))

(declare-fun m!106623 () Bool)

(assert (=> b!119850 m!106623))

(check-sat (not b!119849) (not b!119860) (not b!119838) (not b!119858) (not start!12128) tp_is_empty!1125 (not b!119845) (not b!119853) (not b!119854) (not b!119851) b_and!5963 (not b!119855) (not b!119846) (not b_next!3833) (not b!119850) (not mapNonEmpty!1550) (not b_next!3835) (not b!119852) (not b!119842) (not b!119837) (not b!119848) b_and!5965 (not b!119857) (not b!119856))
(check-sat b_and!5965 b_and!5963 (not b_next!3835) (not b_next!3833))
(get-model)

(declare-fun d!28671 () Bool)

(declare-fun lt!35586 () Int)

(assert (=> d!28671 (>= lt!35586 0)))

(declare-fun e!68490 () Int)

(assert (=> d!28671 (= lt!35586 e!68490)))

(declare-fun c!26880 () Bool)

(assert (=> d!28671 (= c!26880 ((_ is Nil!1977) totalInput!1363))))

(assert (=> d!28671 (= (size!1824 totalInput!1363) lt!35586)))

(declare-fun b!119865 () Bool)

(assert (=> b!119865 (= e!68490 0)))

(declare-fun b!119866 () Bool)

(assert (=> b!119866 (= e!68490 (+ 1 (size!1824 (t!22460 totalInput!1363))))))

(assert (= (and d!28671 c!26880) b!119865))

(assert (= (and d!28671 (not c!26880)) b!119866))

(declare-fun m!106625 () Bool)

(assert (=> b!119866 m!106625))

(assert (=> b!119850 d!28671))

(declare-fun b!119885 () Bool)

(declare-fun res!56373 () Bool)

(declare-fun e!68506 () Bool)

(assert (=> b!119885 (=> (not res!56373) (not e!68506))))

(declare-fun call!5044 () Bool)

(assert (=> b!119885 (= res!56373 call!5044)))

(declare-fun e!68511 () Bool)

(assert (=> b!119885 (= e!68511 e!68506)))

(declare-fun b!119886 () Bool)

(declare-fun e!68509 () Bool)

(declare-fun call!5045 () Bool)

(assert (=> b!119886 (= e!68509 call!5045)))

(declare-fun b!119887 () Bool)

(declare-fun e!68507 () Bool)

(declare-fun e!68508 () Bool)

(assert (=> b!119887 (= e!68507 e!68508)))

(declare-fun c!26885 () Bool)

(assert (=> b!119887 (= c!26885 ((_ is Star!535) r!15532))))

(declare-fun b!119889 () Bool)

(declare-fun call!5046 () Bool)

(assert (=> b!119889 (= e!68506 call!5046)))

(declare-fun b!119890 () Bool)

(assert (=> b!119890 (= e!68508 e!68509)))

(declare-fun res!56376 () Bool)

(assert (=> b!119890 (= res!56376 (not (nullable!80 (reg!864 r!15532))))))

(assert (=> b!119890 (=> (not res!56376) (not e!68509))))

(declare-fun bm!5039 () Bool)

(assert (=> bm!5039 (= call!5046 call!5045)))

(declare-fun b!119891 () Bool)

(declare-fun e!68510 () Bool)

(declare-fun e!68505 () Bool)

(assert (=> b!119891 (= e!68510 e!68505)))

(declare-fun res!56375 () Bool)

(assert (=> b!119891 (=> (not res!56375) (not e!68505))))

(assert (=> b!119891 (= res!56375 call!5046)))

(declare-fun bm!5040 () Bool)

(declare-fun c!26886 () Bool)

(assert (=> bm!5040 (= call!5044 (validRegex!135 (ite c!26886 (regOne!1583 r!15532) (regTwo!1582 r!15532))))))

(declare-fun b!119892 () Bool)

(assert (=> b!119892 (= e!68505 call!5044)))

(declare-fun b!119888 () Bool)

(declare-fun res!56374 () Bool)

(assert (=> b!119888 (=> res!56374 e!68510)))

(assert (=> b!119888 (= res!56374 (not ((_ is Concat!919) r!15532)))))

(assert (=> b!119888 (= e!68511 e!68510)))

(declare-fun d!28673 () Bool)

(declare-fun res!56372 () Bool)

(assert (=> d!28673 (=> res!56372 e!68507)))

(assert (=> d!28673 (= res!56372 ((_ is ElementMatch!535) r!15532))))

(assert (=> d!28673 (= (validRegex!135 r!15532) e!68507)))

(declare-fun bm!5041 () Bool)

(assert (=> bm!5041 (= call!5045 (validRegex!135 (ite c!26885 (reg!864 r!15532) (ite c!26886 (regTwo!1583 r!15532) (regOne!1582 r!15532)))))))

(declare-fun b!119893 () Bool)

(assert (=> b!119893 (= e!68508 e!68511)))

(assert (=> b!119893 (= c!26886 ((_ is Union!535) r!15532))))

(assert (= (and d!28673 (not res!56372)) b!119887))

(assert (= (and b!119887 c!26885) b!119890))

(assert (= (and b!119887 (not c!26885)) b!119893))

(assert (= (and b!119890 res!56376) b!119886))

(assert (= (and b!119893 c!26886) b!119885))

(assert (= (and b!119893 (not c!26886)) b!119888))

(assert (= (and b!119885 res!56373) b!119889))

(assert (= (and b!119888 (not res!56374)) b!119891))

(assert (= (and b!119891 res!56375) b!119892))

(assert (= (or b!119889 b!119891) bm!5039))

(assert (= (or b!119885 b!119892) bm!5040))

(assert (= (or b!119886 bm!5039) bm!5041))

(declare-fun m!106627 () Bool)

(assert (=> b!119890 m!106627))

(declare-fun m!106629 () Bool)

(assert (=> bm!5040 m!106629))

(declare-fun m!106631 () Bool)

(assert (=> bm!5041 m!106631))

(assert (=> start!12128 d!28673))

(declare-fun d!28675 () Bool)

(declare-fun res!56379 () Bool)

(declare-fun e!68514 () Bool)

(assert (=> d!28675 (=> (not res!56379) (not e!68514))))

(assert (=> d!28675 (= res!56379 ((_ is HashMap!397) (cache!849 cache!470)))))

(assert (=> d!28675 (= (inv!2501 cache!470) e!68514)))

(declare-fun b!119896 () Bool)

(declare-fun validCacheMap!24 (MutableMap!397) Bool)

(assert (=> b!119896 (= e!68514 (validCacheMap!24 (cache!849 cache!470)))))

(assert (= (and d!28675 res!56379) b!119896))

(declare-fun m!106633 () Bool)

(assert (=> b!119896 m!106633))

(assert (=> start!12128 d!28675))

(declare-fun d!28677 () Bool)

(declare-fun lostCauseFct!27 (Regex!535) Bool)

(assert (=> d!28677 (= (lostCause!59 r!15532) (lostCauseFct!27 r!15532))))

(declare-fun bs!11918 () Bool)

(assert (= bs!11918 d!28677))

(declare-fun m!106635 () Bool)

(assert (=> bs!11918 m!106635))

(assert (=> b!119851 d!28677))

(declare-fun d!28679 () Bool)

(assert (=> d!28679 (= testedSuffix!285 lt!35578)))

(declare-fun lt!35589 () Unit!1487)

(declare-fun choose!1556 (List!1983 List!1983 List!1983 List!1983 List!1983) Unit!1487)

(assert (=> d!28679 (= lt!35589 (choose!1556 testedP!367 testedSuffix!285 testedP!367 lt!35578 totalInput!1363))))

(assert (=> d!28679 (isPrefix!115 testedP!367 totalInput!1363)))

(assert (=> d!28679 (= (lemmaSamePrefixThenSameSuffix!50 testedP!367 testedSuffix!285 testedP!367 lt!35578 totalInput!1363) lt!35589)))

(declare-fun bs!11919 () Bool)

(assert (= bs!11919 d!28679))

(declare-fun m!106637 () Bool)

(assert (=> bs!11919 m!106637))

(assert (=> bs!11919 m!106603))

(assert (=> b!119851 d!28679))

(declare-fun d!28681 () Bool)

(declare-fun lt!35592 () List!1983)

(assert (=> d!28681 (= (++!368 testedP!367 lt!35592) totalInput!1363)))

(declare-fun e!68517 () List!1983)

(assert (=> d!28681 (= lt!35592 e!68517)))

(declare-fun c!26889 () Bool)

(assert (=> d!28681 (= c!26889 ((_ is Cons!1977) testedP!367))))

(assert (=> d!28681 (>= (size!1824 totalInput!1363) (size!1824 testedP!367))))

(assert (=> d!28681 (= (getSuffix!54 totalInput!1363 testedP!367) lt!35592)))

(declare-fun b!119901 () Bool)

(declare-fun tail!229 (List!1983) List!1983)

(assert (=> b!119901 (= e!68517 (getSuffix!54 (tail!229 totalInput!1363) (t!22460 testedP!367)))))

(declare-fun b!119902 () Bool)

(assert (=> b!119902 (= e!68517 totalInput!1363)))

(assert (= (and d!28681 c!26889) b!119901))

(assert (= (and d!28681 (not c!26889)) b!119902))

(declare-fun m!106639 () Bool)

(assert (=> d!28681 m!106639))

(assert (=> d!28681 m!106623))

(assert (=> d!28681 m!106601))

(declare-fun m!106641 () Bool)

(assert (=> b!119901 m!106641))

(assert (=> b!119901 m!106641))

(declare-fun m!106643 () Bool)

(assert (=> b!119901 m!106643))

(assert (=> b!119851 d!28681))

(declare-fun d!28683 () Bool)

(assert (=> d!28683 (= (valid!363 cache!470) (validCacheMap!24 (cache!849 cache!470)))))

(declare-fun bs!11920 () Bool)

(assert (= bs!11920 d!28683))

(assert (=> bs!11920 m!106633))

(assert (=> b!119856 d!28683))

(declare-fun d!28685 () Bool)

(declare-fun nullableFct!18 (Regex!535) Bool)

(assert (=> d!28685 (= (nullable!80 r!15532) (nullableFct!18 r!15532))))

(declare-fun bs!11921 () Bool)

(assert (= bs!11921 d!28685))

(declare-fun m!106645 () Bool)

(assert (=> bs!11921 m!106645))

(assert (=> b!119837 d!28685))

(declare-fun b!119913 () Bool)

(declare-fun res!56385 () Bool)

(declare-fun e!68522 () Bool)

(assert (=> b!119913 (=> (not res!56385) (not e!68522))))

(declare-fun lt!35595 () List!1983)

(assert (=> b!119913 (= res!56385 (= (size!1824 lt!35595) (+ (size!1824 testedP!367) (size!1824 testedSuffix!285))))))

(declare-fun b!119914 () Bool)

(assert (=> b!119914 (= e!68522 (or (not (= testedSuffix!285 Nil!1977)) (= lt!35595 testedP!367)))))

(declare-fun b!119911 () Bool)

(declare-fun e!68523 () List!1983)

(assert (=> b!119911 (= e!68523 testedSuffix!285)))

(declare-fun d!28687 () Bool)

(assert (=> d!28687 e!68522))

(declare-fun res!56384 () Bool)

(assert (=> d!28687 (=> (not res!56384) (not e!68522))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!222 (List!1983) (InoxSet C!1992))

(assert (=> d!28687 (= res!56384 (= (content!222 lt!35595) ((_ map or) (content!222 testedP!367) (content!222 testedSuffix!285))))))

(assert (=> d!28687 (= lt!35595 e!68523)))

(declare-fun c!26892 () Bool)

(assert (=> d!28687 (= c!26892 ((_ is Nil!1977) testedP!367))))

(assert (=> d!28687 (= (++!368 testedP!367 testedSuffix!285) lt!35595)))

(declare-fun b!119912 () Bool)

(assert (=> b!119912 (= e!68523 (Cons!1977 (h!7374 testedP!367) (++!368 (t!22460 testedP!367) testedSuffix!285)))))

(assert (= (and d!28687 c!26892) b!119911))

(assert (= (and d!28687 (not c!26892)) b!119912))

(assert (= (and d!28687 res!56384) b!119913))

(assert (= (and b!119913 res!56385) b!119914))

(declare-fun m!106647 () Bool)

(assert (=> b!119913 m!106647))

(assert (=> b!119913 m!106601))

(declare-fun m!106649 () Bool)

(assert (=> b!119913 m!106649))

(declare-fun m!106651 () Bool)

(assert (=> d!28687 m!106651))

(declare-fun m!106653 () Bool)

(assert (=> d!28687 m!106653))

(declare-fun m!106655 () Bool)

(assert (=> d!28687 m!106655))

(declare-fun m!106657 () Bool)

(assert (=> b!119912 m!106657))

(assert (=> b!119857 d!28687))

(declare-fun bm!5058 () Bool)

(declare-fun call!5065 () Unit!1487)

(assert (=> bm!5058 (= call!5065 (lemmaIsPrefixRefl!86 totalInput!1363 totalInput!1363))))

(declare-fun bm!5059 () Bool)

(declare-fun call!5067 () Unit!1487)

(assert (=> bm!5059 (= call!5067 (lemmaIsPrefixSameLengthThenSameList!31 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun b!119943 () Bool)

(declare-fun e!68541 () tuple2!2276)

(assert (=> b!119943 (= e!68541 (tuple2!2277 Nil!1977 totalInput!1363))))

(declare-fun b!119944 () Bool)

(declare-fun e!68543 () tuple2!2276)

(declare-fun call!5069 () tuple2!2276)

(assert (=> b!119944 (= e!68543 call!5069)))

(declare-fun b!119945 () Bool)

(declare-fun e!68547 () tuple2!2276)

(declare-fun e!68545 () tuple2!2276)

(assert (=> b!119945 (= e!68547 e!68545)))

(declare-fun c!26907 () Bool)

(assert (=> b!119945 (= c!26907 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!119946 () Bool)

(declare-fun e!68542 () Bool)

(declare-fun e!68540 () Bool)

(assert (=> b!119946 (= e!68542 e!68540)))

(declare-fun res!56390 () Bool)

(assert (=> b!119946 (=> res!56390 e!68540)))

(declare-fun lt!35657 () tuple2!2276)

(declare-fun isEmpty!812 (List!1983) Bool)

(assert (=> b!119946 (= res!56390 (isEmpty!812 (_1!1348 lt!35657)))))

(declare-fun bm!5060 () Bool)

(declare-fun call!5063 () List!1983)

(assert (=> bm!5060 (= call!5063 (tail!229 testedSuffix!285))))

(declare-fun b!119947 () Bool)

(declare-fun e!68544 () Unit!1487)

(declare-fun Unit!1489 () Unit!1487)

(assert (=> b!119947 (= e!68544 Unit!1489)))

(declare-fun b!119948 () Bool)

(assert (=> b!119948 (= e!68547 (tuple2!2277 Nil!1977 totalInput!1363))))

(declare-fun bm!5061 () Bool)

(declare-fun call!5066 () Bool)

(assert (=> bm!5061 (= call!5066 (isPrefix!115 totalInput!1363 totalInput!1363))))

(declare-fun b!119949 () Bool)

(declare-fun c!26906 () Bool)

(declare-fun call!5070 () Bool)

(assert (=> b!119949 (= c!26906 call!5070)))

(declare-fun lt!35679 () Unit!1487)

(declare-fun lt!35658 () Unit!1487)

(assert (=> b!119949 (= lt!35679 lt!35658)))

(declare-fun lt!35660 () List!1983)

(declare-fun lt!35673 () C!1992)

(assert (=> b!119949 (= (++!368 (++!368 testedP!367 (Cons!1977 lt!35673 Nil!1977)) lt!35660) totalInput!1363)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!18 (List!1983 C!1992 List!1983 List!1983) Unit!1487)

(assert (=> b!119949 (= lt!35658 (lemmaMoveElementToOtherListKeepsConcatEq!18 testedP!367 lt!35673 lt!35660 totalInput!1363))))

(assert (=> b!119949 (= lt!35660 (tail!229 testedSuffix!285))))

(declare-fun head!493 (List!1983) C!1992)

(assert (=> b!119949 (= lt!35673 (head!493 testedSuffix!285))))

(declare-fun lt!35663 () Unit!1487)

(declare-fun lt!35674 () Unit!1487)

(assert (=> b!119949 (= lt!35663 lt!35674)))

(assert (=> b!119949 (isPrefix!115 (++!368 testedP!367 (Cons!1977 (head!493 (getSuffix!54 totalInput!1363 testedP!367)) Nil!1977)) totalInput!1363)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!22 (List!1983 List!1983) Unit!1487)

(assert (=> b!119949 (= lt!35674 (lemmaAddHeadSuffixToPrefixStillPrefix!22 testedP!367 totalInput!1363))))

(declare-fun lt!35656 () Unit!1487)

(declare-fun lt!35667 () Unit!1487)

(assert (=> b!119949 (= lt!35656 lt!35667)))

(assert (=> b!119949 (= lt!35667 (lemmaAddHeadSuffixToPrefixStillPrefix!22 testedP!367 totalInput!1363))))

(declare-fun lt!35659 () List!1983)

(assert (=> b!119949 (= lt!35659 (++!368 testedP!367 (Cons!1977 (head!493 testedSuffix!285) Nil!1977)))))

(declare-fun lt!35666 () Unit!1487)

(assert (=> b!119949 (= lt!35666 e!68544)))

(declare-fun c!26909 () Bool)

(assert (=> b!119949 (= c!26909 (= (size!1824 testedP!367) (size!1824 totalInput!1363)))))

(declare-fun lt!35652 () Unit!1487)

(declare-fun lt!35654 () Unit!1487)

(assert (=> b!119949 (= lt!35652 lt!35654)))

(assert (=> b!119949 (<= (size!1824 testedP!367) (size!1824 totalInput!1363))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!29 (List!1983 List!1983) Unit!1487)

(assert (=> b!119949 (= lt!35654 (lemmaIsPrefixThenSmallerEqSize!29 testedP!367 totalInput!1363))))

(assert (=> b!119949 (= e!68545 e!68543)))

(declare-fun d!28689 () Bool)

(assert (=> d!28689 e!68542))

(declare-fun res!56391 () Bool)

(assert (=> d!28689 (=> (not res!56391) (not e!68542))))

(assert (=> d!28689 (= res!56391 (= (++!368 (_1!1348 lt!35657) (_2!1348 lt!35657)) totalInput!1363))))

(assert (=> d!28689 (= lt!35657 e!68547)))

(declare-fun c!26910 () Bool)

(assert (=> d!28689 (= c!26910 (lostCause!59 r!15532))))

(declare-fun lt!35662 () Unit!1487)

(declare-fun Unit!1490 () Unit!1487)

(assert (=> d!28689 (= lt!35662 Unit!1490)))

(assert (=> d!28689 (= (getSuffix!54 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!35668 () Unit!1487)

(declare-fun lt!35672 () Unit!1487)

(assert (=> d!28689 (= lt!35668 lt!35672)))

(declare-fun lt!35665 () List!1983)

(assert (=> d!28689 (= testedSuffix!285 lt!35665)))

(assert (=> d!28689 (= lt!35672 (lemmaSamePrefixThenSameSuffix!50 testedP!367 testedSuffix!285 testedP!367 lt!35665 totalInput!1363))))

(assert (=> d!28689 (= lt!35665 (getSuffix!54 totalInput!1363 testedP!367))))

(declare-fun lt!35661 () Unit!1487)

(declare-fun lt!35675 () Unit!1487)

(assert (=> d!28689 (= lt!35661 lt!35675)))

(assert (=> d!28689 (isPrefix!115 testedP!367 (++!368 testedP!367 testedSuffix!285))))

(assert (=> d!28689 (= lt!35675 (lemmaConcatTwoListThenFirstIsPrefix!61 testedP!367 testedSuffix!285))))

(assert (=> d!28689 (validRegex!135 r!15532)))

(assert (=> d!28689 (= (findLongestMatchInner!44 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!35657)))

(declare-fun b!119950 () Bool)

(declare-fun e!68546 () tuple2!2276)

(assert (=> b!119950 (= e!68543 e!68546)))

(declare-fun lt!35677 () tuple2!2276)

(assert (=> b!119950 (= lt!35677 call!5069)))

(declare-fun c!26908 () Bool)

(assert (=> b!119950 (= c!26908 (isEmpty!812 (_1!1348 lt!35677)))))

(declare-fun b!119951 () Bool)

(declare-fun Unit!1491 () Unit!1487)

(assert (=> b!119951 (= e!68544 Unit!1491)))

(declare-fun lt!35653 () Unit!1487)

(assert (=> b!119951 (= lt!35653 call!5065)))

(assert (=> b!119951 call!5066))

(declare-fun lt!35671 () Unit!1487)

(assert (=> b!119951 (= lt!35671 lt!35653)))

(declare-fun lt!35655 () Unit!1487)

(assert (=> b!119951 (= lt!35655 call!5067)))

(assert (=> b!119951 (= totalInput!1363 testedP!367)))

(declare-fun lt!35678 () Unit!1487)

(assert (=> b!119951 (= lt!35678 lt!35655)))

(assert (=> b!119951 false))

(declare-fun bm!5062 () Bool)

(declare-fun call!5064 () Regex!535)

(assert (=> bm!5062 (= call!5069 (findLongestMatchInner!44 call!5064 lt!35659 (+ testedPSize!285 1) call!5063 totalInput!1363 totalInputSize!643))))

(declare-fun b!119952 () Bool)

(assert (=> b!119952 (= e!68546 (tuple2!2277 testedP!367 testedSuffix!285))))

(declare-fun bm!5063 () Bool)

(assert (=> bm!5063 (= call!5070 (nullable!80 r!15532))))

(declare-fun b!119953 () Bool)

(declare-fun c!26905 () Bool)

(assert (=> b!119953 (= c!26905 call!5070)))

(declare-fun lt!35676 () Unit!1487)

(declare-fun lt!35669 () Unit!1487)

(assert (=> b!119953 (= lt!35676 lt!35669)))

(assert (=> b!119953 (= totalInput!1363 testedP!367)))

(assert (=> b!119953 (= lt!35669 call!5067)))

(declare-fun lt!35664 () Unit!1487)

(declare-fun lt!35670 () Unit!1487)

(assert (=> b!119953 (= lt!35664 lt!35670)))

(assert (=> b!119953 call!5066))

(assert (=> b!119953 (= lt!35670 call!5065)))

(assert (=> b!119953 (= e!68545 e!68541)))

(declare-fun b!119954 () Bool)

(assert (=> b!119954 (= e!68540 (>= (size!1824 (_1!1348 lt!35657)) (size!1824 testedP!367)))))

(declare-fun b!119955 () Bool)

(assert (=> b!119955 (= e!68546 lt!35677)))

(declare-fun bm!5064 () Bool)

(declare-fun call!5068 () C!1992)

(declare-fun derivativeStep!50 (Regex!535 C!1992) Regex!535)

(assert (=> bm!5064 (= call!5064 (derivativeStep!50 r!15532 call!5068))))

(declare-fun bm!5065 () Bool)

(assert (=> bm!5065 (= call!5068 (head!493 testedSuffix!285))))

(declare-fun b!119956 () Bool)

(assert (=> b!119956 (= e!68541 (tuple2!2277 testedP!367 Nil!1977))))

(assert (= (and d!28689 c!26910) b!119948))

(assert (= (and d!28689 (not c!26910)) b!119945))

(assert (= (and b!119945 c!26907) b!119953))

(assert (= (and b!119945 (not c!26907)) b!119949))

(assert (= (and b!119953 c!26905) b!119956))

(assert (= (and b!119953 (not c!26905)) b!119943))

(assert (= (and b!119949 c!26909) b!119951))

(assert (= (and b!119949 (not c!26909)) b!119947))

(assert (= (and b!119949 c!26906) b!119950))

(assert (= (and b!119949 (not c!26906)) b!119944))

(assert (= (and b!119950 c!26908) b!119952))

(assert (= (and b!119950 (not c!26908)) b!119955))

(assert (= (or b!119950 b!119944) bm!5060))

(assert (= (or b!119950 b!119944) bm!5065))

(assert (= (or b!119950 b!119944) bm!5064))

(assert (= (or b!119950 b!119944) bm!5062))

(assert (= (or b!119953 b!119951) bm!5058))

(assert (= (or b!119953 b!119951) bm!5061))

(assert (= (or b!119953 b!119949) bm!5063))

(assert (= (or b!119953 b!119951) bm!5059))

(assert (= (and d!28689 res!56391) b!119946))

(assert (= (and b!119946 (not res!56390)) b!119954))

(declare-fun m!106659 () Bool)

(assert (=> b!119954 m!106659))

(assert (=> b!119954 m!106601))

(declare-fun m!106661 () Bool)

(assert (=> b!119950 m!106661))

(declare-fun m!106663 () Bool)

(assert (=> b!119946 m!106663))

(declare-fun m!106665 () Bool)

(assert (=> bm!5064 m!106665))

(assert (=> bm!5059 m!106609))

(assert (=> bm!5061 m!106611))

(declare-fun m!106667 () Bool)

(assert (=> bm!5060 m!106667))

(declare-fun m!106669 () Bool)

(assert (=> bm!5065 m!106669))

(assert (=> bm!5058 m!106613))

(declare-fun m!106671 () Bool)

(assert (=> bm!5062 m!106671))

(assert (=> d!28689 m!106591))

(assert (=> d!28689 m!106621))

(declare-fun m!106673 () Bool)

(assert (=> d!28689 m!106673))

(assert (=> d!28689 m!106615))

(declare-fun m!106675 () Bool)

(assert (=> d!28689 m!106675))

(assert (=> d!28689 m!106607))

(declare-fun m!106677 () Bool)

(assert (=> d!28689 m!106677))

(assert (=> d!28689 m!106587))

(assert (=> d!28689 m!106621))

(declare-fun m!106679 () Bool)

(assert (=> b!119949 m!106679))

(declare-fun m!106681 () Bool)

(assert (=> b!119949 m!106681))

(assert (=> b!119949 m!106591))

(assert (=> b!119949 m!106669))

(declare-fun m!106683 () Bool)

(assert (=> b!119949 m!106683))

(declare-fun m!106685 () Bool)

(assert (=> b!119949 m!106685))

(declare-fun m!106687 () Bool)

(assert (=> b!119949 m!106687))

(assert (=> b!119949 m!106591))

(declare-fun m!106689 () Bool)

(assert (=> b!119949 m!106689))

(assert (=> b!119949 m!106601))

(assert (=> b!119949 m!106679))

(assert (=> b!119949 m!106667))

(assert (=> b!119949 m!106685))

(declare-fun m!106691 () Bool)

(assert (=> b!119949 m!106691))

(declare-fun m!106693 () Bool)

(assert (=> b!119949 m!106693))

(assert (=> b!119949 m!106623))

(declare-fun m!106695 () Bool)

(assert (=> b!119949 m!106695))

(assert (=> bm!5063 m!106593))

(assert (=> b!119848 d!28689))

(declare-fun b!119968 () Bool)

(declare-fun e!68556 () Bool)

(assert (=> b!119968 (= e!68556 (>= (size!1824 totalInput!1363) (size!1824 testedP!367)))))

(declare-fun b!119967 () Bool)

(declare-fun e!68555 () Bool)

(assert (=> b!119967 (= e!68555 (isPrefix!115 (tail!229 testedP!367) (tail!229 totalInput!1363)))))

(declare-fun b!119966 () Bool)

(declare-fun res!56403 () Bool)

(assert (=> b!119966 (=> (not res!56403) (not e!68555))))

(assert (=> b!119966 (= res!56403 (= (head!493 testedP!367) (head!493 totalInput!1363)))))

(declare-fun b!119965 () Bool)

(declare-fun e!68554 () Bool)

(assert (=> b!119965 (= e!68554 e!68555)))

(declare-fun res!56400 () Bool)

(assert (=> b!119965 (=> (not res!56400) (not e!68555))))

(assert (=> b!119965 (= res!56400 (not ((_ is Nil!1977) totalInput!1363)))))

(declare-fun d!28691 () Bool)

(assert (=> d!28691 e!68556))

(declare-fun res!56402 () Bool)

(assert (=> d!28691 (=> res!56402 e!68556)))

(declare-fun lt!35682 () Bool)

(assert (=> d!28691 (= res!56402 (not lt!35682))))

(assert (=> d!28691 (= lt!35682 e!68554)))

(declare-fun res!56401 () Bool)

(assert (=> d!28691 (=> res!56401 e!68554)))

(assert (=> d!28691 (= res!56401 ((_ is Nil!1977) testedP!367))))

(assert (=> d!28691 (= (isPrefix!115 testedP!367 totalInput!1363) lt!35682)))

(assert (= (and d!28691 (not res!56401)) b!119965))

(assert (= (and b!119965 res!56400) b!119966))

(assert (= (and b!119966 res!56403) b!119967))

(assert (= (and d!28691 (not res!56402)) b!119968))

(assert (=> b!119968 m!106623))

(assert (=> b!119968 m!106601))

(declare-fun m!106697 () Bool)

(assert (=> b!119967 m!106697))

(assert (=> b!119967 m!106641))

(assert (=> b!119967 m!106697))

(assert (=> b!119967 m!106641))

(declare-fun m!106699 () Bool)

(assert (=> b!119967 m!106699))

(declare-fun m!106701 () Bool)

(assert (=> b!119966 m!106701))

(declare-fun m!106703 () Bool)

(assert (=> b!119966 m!106703))

(assert (=> b!119845 d!28691))

(declare-fun b!119972 () Bool)

(declare-fun e!68559 () Bool)

(assert (=> b!119972 (= e!68559 (>= (size!1824 lt!35581) (size!1824 testedP!367)))))

(declare-fun b!119971 () Bool)

(declare-fun e!68558 () Bool)

(assert (=> b!119971 (= e!68558 (isPrefix!115 (tail!229 testedP!367) (tail!229 lt!35581)))))

(declare-fun b!119970 () Bool)

(declare-fun res!56407 () Bool)

(assert (=> b!119970 (=> (not res!56407) (not e!68558))))

(assert (=> b!119970 (= res!56407 (= (head!493 testedP!367) (head!493 lt!35581)))))

(declare-fun b!119969 () Bool)

(declare-fun e!68557 () Bool)

(assert (=> b!119969 (= e!68557 e!68558)))

(declare-fun res!56404 () Bool)

(assert (=> b!119969 (=> (not res!56404) (not e!68558))))

(assert (=> b!119969 (= res!56404 (not ((_ is Nil!1977) lt!35581)))))

(declare-fun d!28693 () Bool)

(assert (=> d!28693 e!68559))

(declare-fun res!56406 () Bool)

(assert (=> d!28693 (=> res!56406 e!68559)))

(declare-fun lt!35683 () Bool)

(assert (=> d!28693 (= res!56406 (not lt!35683))))

(assert (=> d!28693 (= lt!35683 e!68557)))

(declare-fun res!56405 () Bool)

(assert (=> d!28693 (=> res!56405 e!68557)))

(assert (=> d!28693 (= res!56405 ((_ is Nil!1977) testedP!367))))

(assert (=> d!28693 (= (isPrefix!115 testedP!367 lt!35581) lt!35683)))

(assert (= (and d!28693 (not res!56405)) b!119969))

(assert (= (and b!119969 res!56404) b!119970))

(assert (= (and b!119970 res!56407) b!119971))

(assert (= (and d!28693 (not res!56406)) b!119972))

(declare-fun m!106705 () Bool)

(assert (=> b!119972 m!106705))

(assert (=> b!119972 m!106601))

(assert (=> b!119971 m!106697))

(declare-fun m!106707 () Bool)

(assert (=> b!119971 m!106707))

(assert (=> b!119971 m!106697))

(assert (=> b!119971 m!106707))

(declare-fun m!106709 () Bool)

(assert (=> b!119971 m!106709))

(assert (=> b!119970 m!106701))

(declare-fun m!106711 () Bool)

(assert (=> b!119970 m!106711))

(assert (=> b!119845 d!28693))

(declare-fun d!28695 () Bool)

(assert (=> d!28695 (isPrefix!115 testedP!367 (++!368 testedP!367 testedSuffix!285))))

(declare-fun lt!35686 () Unit!1487)

(declare-fun choose!1557 (List!1983 List!1983) Unit!1487)

(assert (=> d!28695 (= lt!35686 (choose!1557 testedP!367 testedSuffix!285))))

(assert (=> d!28695 (= (lemmaConcatTwoListThenFirstIsPrefix!61 testedP!367 testedSuffix!285) lt!35686)))

(declare-fun bs!11922 () Bool)

(assert (= bs!11922 d!28695))

(assert (=> bs!11922 m!106621))

(assert (=> bs!11922 m!106621))

(assert (=> bs!11922 m!106673))

(declare-fun m!106713 () Bool)

(assert (=> bs!11922 m!106713))

(assert (=> b!119845 d!28695))

(declare-fun d!28697 () Bool)

(declare-fun lt!35687 () Int)

(assert (=> d!28697 (>= lt!35687 0)))

(declare-fun e!68560 () Int)

(assert (=> d!28697 (= lt!35687 e!68560)))

(declare-fun c!26911 () Bool)

(assert (=> d!28697 (= c!26911 ((_ is Nil!1977) testedP!367))))

(assert (=> d!28697 (= (size!1824 testedP!367) lt!35687)))

(declare-fun b!119973 () Bool)

(assert (=> b!119973 (= e!68560 0)))

(declare-fun b!119974 () Bool)

(assert (=> b!119974 (= e!68560 (+ 1 (size!1824 (t!22460 testedP!367))))))

(assert (= (and d!28697 c!26911) b!119973))

(assert (= (and d!28697 (not c!26911)) b!119974))

(declare-fun m!106715 () Bool)

(assert (=> b!119974 m!106715))

(assert (=> b!119855 d!28697))

(declare-fun d!28699 () Bool)

(assert (=> d!28699 (= (array_inv!493 (_keys!692 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) (bvsge (size!1822 (_keys!692 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119852 d!28699))

(declare-fun d!28701 () Bool)

(assert (=> d!28701 (= (array_inv!494 (_values!679 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) (bvsge (size!1823 (_values!679 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119852 d!28701))

(declare-fun d!28703 () Bool)

(assert (=> d!28703 (= totalInput!1363 testedP!367)))

(declare-fun lt!35690 () Unit!1487)

(declare-fun choose!1558 (List!1983 List!1983 List!1983) Unit!1487)

(assert (=> d!28703 (= lt!35690 (choose!1558 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28703 (isPrefix!115 totalInput!1363 totalInput!1363)))

(assert (=> d!28703 (= (lemmaIsPrefixSameLengthThenSameList!31 totalInput!1363 testedP!367 totalInput!1363) lt!35690)))

(declare-fun bs!11923 () Bool)

(assert (= bs!11923 d!28703))

(declare-fun m!106717 () Bool)

(assert (=> bs!11923 m!106717))

(assert (=> bs!11923 m!106611))

(assert (=> b!119853 d!28703))

(declare-fun b!119978 () Bool)

(declare-fun e!68563 () Bool)

(assert (=> b!119978 (= e!68563 (>= (size!1824 totalInput!1363) (size!1824 totalInput!1363)))))

(declare-fun b!119977 () Bool)

(declare-fun e!68562 () Bool)

(assert (=> b!119977 (= e!68562 (isPrefix!115 (tail!229 totalInput!1363) (tail!229 totalInput!1363)))))

(declare-fun b!119976 () Bool)

(declare-fun res!56411 () Bool)

(assert (=> b!119976 (=> (not res!56411) (not e!68562))))

(assert (=> b!119976 (= res!56411 (= (head!493 totalInput!1363) (head!493 totalInput!1363)))))

(declare-fun b!119975 () Bool)

(declare-fun e!68561 () Bool)

(assert (=> b!119975 (= e!68561 e!68562)))

(declare-fun res!56408 () Bool)

(assert (=> b!119975 (=> (not res!56408) (not e!68562))))

(assert (=> b!119975 (= res!56408 (not ((_ is Nil!1977) totalInput!1363)))))

(declare-fun d!28705 () Bool)

(assert (=> d!28705 e!68563))

(declare-fun res!56410 () Bool)

(assert (=> d!28705 (=> res!56410 e!68563)))

(declare-fun lt!35691 () Bool)

(assert (=> d!28705 (= res!56410 (not lt!35691))))

(assert (=> d!28705 (= lt!35691 e!68561)))

(declare-fun res!56409 () Bool)

(assert (=> d!28705 (=> res!56409 e!68561)))

(assert (=> d!28705 (= res!56409 ((_ is Nil!1977) totalInput!1363))))

(assert (=> d!28705 (= (isPrefix!115 totalInput!1363 totalInput!1363) lt!35691)))

(assert (= (and d!28705 (not res!56409)) b!119975))

(assert (= (and b!119975 res!56408) b!119976))

(assert (= (and b!119976 res!56411) b!119977))

(assert (= (and d!28705 (not res!56410)) b!119978))

(assert (=> b!119978 m!106623))

(assert (=> b!119978 m!106623))

(assert (=> b!119977 m!106641))

(assert (=> b!119977 m!106641))

(assert (=> b!119977 m!106641))

(assert (=> b!119977 m!106641))

(declare-fun m!106719 () Bool)

(assert (=> b!119977 m!106719))

(assert (=> b!119976 m!106703))

(assert (=> b!119976 m!106703))

(assert (=> b!119853 d!28705))

(declare-fun d!28707 () Bool)

(assert (=> d!28707 (isPrefix!115 totalInput!1363 totalInput!1363)))

(declare-fun lt!35694 () Unit!1487)

(declare-fun choose!1559 (List!1983 List!1983) Unit!1487)

(assert (=> d!28707 (= lt!35694 (choose!1559 totalInput!1363 totalInput!1363))))

(assert (=> d!28707 (= (lemmaIsPrefixRefl!86 totalInput!1363 totalInput!1363) lt!35694)))

(declare-fun bs!11924 () Bool)

(assert (= bs!11924 d!28707))

(assert (=> bs!11924 m!106611))

(declare-fun m!106721 () Bool)

(assert (=> bs!11924 m!106721))

(assert (=> b!119853 d!28707))

(declare-fun b!119989 () Bool)

(declare-fun e!68566 () Bool)

(assert (=> b!119989 (= e!68566 tp_is_empty!1125)))

(declare-fun b!119992 () Bool)

(declare-fun tp!65845 () Bool)

(declare-fun tp!65846 () Bool)

(assert (=> b!119992 (= e!68566 (and tp!65845 tp!65846))))

(assert (=> b!119849 (= tp!65819 e!68566)))

(declare-fun b!119991 () Bool)

(declare-fun tp!65847 () Bool)

(assert (=> b!119991 (= e!68566 tp!65847)))

(declare-fun b!119990 () Bool)

(declare-fun tp!65844 () Bool)

(declare-fun tp!65843 () Bool)

(assert (=> b!119990 (= e!68566 (and tp!65844 tp!65843))))

(assert (= (and b!119849 ((_ is ElementMatch!535) (regOne!1582 r!15532))) b!119989))

(assert (= (and b!119849 ((_ is Concat!919) (regOne!1582 r!15532))) b!119990))

(assert (= (and b!119849 ((_ is Star!535) (regOne!1582 r!15532))) b!119991))

(assert (= (and b!119849 ((_ is Union!535) (regOne!1582 r!15532))) b!119992))

(declare-fun b!119993 () Bool)

(declare-fun e!68567 () Bool)

(assert (=> b!119993 (= e!68567 tp_is_empty!1125)))

(declare-fun b!119996 () Bool)

(declare-fun tp!65850 () Bool)

(declare-fun tp!65851 () Bool)

(assert (=> b!119996 (= e!68567 (and tp!65850 tp!65851))))

(assert (=> b!119849 (= tp!65820 e!68567)))

(declare-fun b!119995 () Bool)

(declare-fun tp!65852 () Bool)

(assert (=> b!119995 (= e!68567 tp!65852)))

(declare-fun b!119994 () Bool)

(declare-fun tp!65849 () Bool)

(declare-fun tp!65848 () Bool)

(assert (=> b!119994 (= e!68567 (and tp!65849 tp!65848))))

(assert (= (and b!119849 ((_ is ElementMatch!535) (regTwo!1582 r!15532))) b!119993))

(assert (= (and b!119849 ((_ is Concat!919) (regTwo!1582 r!15532))) b!119994))

(assert (= (and b!119849 ((_ is Star!535) (regTwo!1582 r!15532))) b!119995))

(assert (= (and b!119849 ((_ is Union!535) (regTwo!1582 r!15532))) b!119996))

(declare-fun b!119997 () Bool)

(declare-fun e!68568 () Bool)

(assert (=> b!119997 (= e!68568 tp_is_empty!1125)))

(declare-fun b!120000 () Bool)

(declare-fun tp!65855 () Bool)

(declare-fun tp!65856 () Bool)

(assert (=> b!120000 (= e!68568 (and tp!65855 tp!65856))))

(assert (=> b!119854 (= tp!65828 e!68568)))

(declare-fun b!119999 () Bool)

(declare-fun tp!65857 () Bool)

(assert (=> b!119999 (= e!68568 tp!65857)))

(declare-fun b!119998 () Bool)

(declare-fun tp!65854 () Bool)

(declare-fun tp!65853 () Bool)

(assert (=> b!119998 (= e!68568 (and tp!65854 tp!65853))))

(assert (= (and b!119854 ((_ is ElementMatch!535) (reg!864 r!15532))) b!119997))

(assert (= (and b!119854 ((_ is Concat!919) (reg!864 r!15532))) b!119998))

(assert (= (and b!119854 ((_ is Star!535) (reg!864 r!15532))) b!119999))

(assert (= (and b!119854 ((_ is Union!535) (reg!864 r!15532))) b!120000))

(declare-fun b!120005 () Bool)

(declare-fun e!68571 () Bool)

(declare-fun tp!65860 () Bool)

(assert (=> b!120005 (= e!68571 (and tp_is_empty!1125 tp!65860))))

(assert (=> b!119860 (= tp!65823 e!68571)))

(assert (= (and b!119860 ((_ is Cons!1977) (t!22460 testedP!367))) b!120005))

(declare-fun b!120006 () Bool)

(declare-fun e!68572 () Bool)

(declare-fun tp!65861 () Bool)

(assert (=> b!120006 (= e!68572 (and tp_is_empty!1125 tp!65861))))

(assert (=> b!119846 (= tp!65829 e!68572)))

(assert (= (and b!119846 ((_ is Cons!1977) (t!22460 testedSuffix!285))) b!120006))

(declare-fun tp!65869 () Bool)

(declare-fun b!120011 () Bool)

(declare-fun tp!65868 () Bool)

(declare-fun tp!65870 () Bool)

(declare-fun e!68575 () Bool)

(assert (=> b!120011 (= e!68575 (and tp!65868 tp_is_empty!1125 tp!65869 tp!65870))))

(assert (=> b!119852 (= tp!65821 e!68575)))

(assert (= (and b!119852 ((_ is Cons!1976) (zeroValue!657 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470)))))))) b!120011))

(declare-fun tp!65871 () Bool)

(declare-fun tp!65872 () Bool)

(declare-fun tp!65873 () Bool)

(declare-fun e!68576 () Bool)

(declare-fun b!120012 () Bool)

(assert (=> b!120012 (= e!68576 (and tp!65871 tp_is_empty!1125 tp!65872 tp!65873))))

(assert (=> b!119852 (= tp!65824 e!68576)))

(assert (= (and b!119852 ((_ is Cons!1976) (minValue!657 (v!13333 (underlying!1001 (v!13334 (underlying!1002 (cache!849 cache!470)))))))) b!120012))

(declare-fun b!120013 () Bool)

(declare-fun e!68577 () Bool)

(assert (=> b!120013 (= e!68577 tp_is_empty!1125)))

(declare-fun b!120016 () Bool)

(declare-fun tp!65876 () Bool)

(declare-fun tp!65877 () Bool)

(assert (=> b!120016 (= e!68577 (and tp!65876 tp!65877))))

(assert (=> b!119842 (= tp!65825 e!68577)))

(declare-fun b!120015 () Bool)

(declare-fun tp!65878 () Bool)

(assert (=> b!120015 (= e!68577 tp!65878)))

(declare-fun b!120014 () Bool)

(declare-fun tp!65875 () Bool)

(declare-fun tp!65874 () Bool)

(assert (=> b!120014 (= e!68577 (and tp!65875 tp!65874))))

(assert (= (and b!119842 ((_ is ElementMatch!535) (regOne!1583 r!15532))) b!120013))

(assert (= (and b!119842 ((_ is Concat!919) (regOne!1583 r!15532))) b!120014))

(assert (= (and b!119842 ((_ is Star!535) (regOne!1583 r!15532))) b!120015))

(assert (= (and b!119842 ((_ is Union!535) (regOne!1583 r!15532))) b!120016))

(declare-fun b!120017 () Bool)

(declare-fun e!68578 () Bool)

(assert (=> b!120017 (= e!68578 tp_is_empty!1125)))

(declare-fun b!120020 () Bool)

(declare-fun tp!65881 () Bool)

(declare-fun tp!65882 () Bool)

(assert (=> b!120020 (= e!68578 (and tp!65881 tp!65882))))

(assert (=> b!119842 (= tp!65832 e!68578)))

(declare-fun b!120019 () Bool)

(declare-fun tp!65883 () Bool)

(assert (=> b!120019 (= e!68578 tp!65883)))

(declare-fun b!120018 () Bool)

(declare-fun tp!65880 () Bool)

(declare-fun tp!65879 () Bool)

(assert (=> b!120018 (= e!68578 (and tp!65880 tp!65879))))

(assert (= (and b!119842 ((_ is ElementMatch!535) (regTwo!1583 r!15532))) b!120017))

(assert (= (and b!119842 ((_ is Concat!919) (regTwo!1583 r!15532))) b!120018))

(assert (= (and b!119842 ((_ is Star!535) (regTwo!1583 r!15532))) b!120019))

(assert (= (and b!119842 ((_ is Union!535) (regTwo!1583 r!15532))) b!120020))

(declare-fun tp!65901 () Bool)

(declare-fun e!68583 () Bool)

(declare-fun tp!65902 () Bool)

(declare-fun tp!65904 () Bool)

(declare-fun b!120027 () Bool)

(assert (=> b!120027 (= e!68583 (and tp!65901 tp_is_empty!1125 tp!65902 tp!65904))))

(declare-fun tp!65903 () Bool)

(declare-fun tp!65900 () Bool)

(declare-fun b!120028 () Bool)

(declare-fun e!68584 () Bool)

(declare-fun tp!65899 () Bool)

(assert (=> b!120028 (= e!68584 (and tp!65900 tp_is_empty!1125 tp!65903 tp!65899))))

(declare-fun mapIsEmpty!1553 () Bool)

(declare-fun mapRes!1553 () Bool)

(assert (=> mapIsEmpty!1553 mapRes!1553))

(declare-fun mapNonEmpty!1553 () Bool)

(declare-fun tp!65898 () Bool)

(assert (=> mapNonEmpty!1553 (= mapRes!1553 (and tp!65898 e!68583))))

(declare-fun mapKey!1553 () (_ BitVec 32))

(declare-fun mapRest!1553 () (Array (_ BitVec 32) List!1982))

(declare-fun mapValue!1553 () List!1982)

(assert (=> mapNonEmpty!1553 (= mapRest!1550 (store mapRest!1553 mapKey!1553 mapValue!1553))))

(declare-fun condMapEmpty!1553 () Bool)

(declare-fun mapDefault!1553 () List!1982)

(assert (=> mapNonEmpty!1550 (= condMapEmpty!1553 (= mapRest!1550 ((as const (Array (_ BitVec 32) List!1982)) mapDefault!1553)))))

(assert (=> mapNonEmpty!1550 (= tp!65826 (and e!68584 mapRes!1553))))

(assert (= (and mapNonEmpty!1550 condMapEmpty!1553) mapIsEmpty!1553))

(assert (= (and mapNonEmpty!1550 (not condMapEmpty!1553)) mapNonEmpty!1553))

(assert (= (and mapNonEmpty!1553 ((_ is Cons!1976) mapValue!1553)) b!120027))

(assert (= (and mapNonEmpty!1550 ((_ is Cons!1976) mapDefault!1553)) b!120028))

(declare-fun m!106723 () Bool)

(assert (=> mapNonEmpty!1553 m!106723))

(declare-fun tp!65905 () Bool)

(declare-fun e!68585 () Bool)

(declare-fun b!120029 () Bool)

(declare-fun tp!65906 () Bool)

(declare-fun tp!65907 () Bool)

(assert (=> b!120029 (= e!68585 (and tp!65905 tp_is_empty!1125 tp!65906 tp!65907))))

(assert (=> mapNonEmpty!1550 (= tp!65830 e!68585)))

(assert (= (and mapNonEmpty!1550 ((_ is Cons!1976) mapValue!1550)) b!120029))

(declare-fun e!68586 () Bool)

(declare-fun tp!65910 () Bool)

(declare-fun tp!65909 () Bool)

(declare-fun tp!65908 () Bool)

(declare-fun b!120030 () Bool)

(assert (=> b!120030 (= e!68586 (and tp!65908 tp_is_empty!1125 tp!65909 tp!65910))))

(assert (=> b!119858 (= tp!65827 e!68586)))

(assert (= (and b!119858 ((_ is Cons!1976) mapDefault!1550)) b!120030))

(declare-fun b!120031 () Bool)

(declare-fun e!68587 () Bool)

(declare-fun tp!65911 () Bool)

(assert (=> b!120031 (= e!68587 (and tp_is_empty!1125 tp!65911))))

(assert (=> b!119838 (= tp!65818 e!68587)))

(assert (= (and b!119838 ((_ is Cons!1977) (t!22460 totalInput!1363))) b!120031))

(check-sat (not b!119866) (not b!119967) (not b!120028) (not b!119990) (not b!119995) (not b!120020) (not b!119966) (not b!119978) (not d!28683) b_and!5965 (not b!120014) (not b!120029) (not d!28677) (not b!120000) (not b!119954) (not b!119994) (not b!119972) tp_is_empty!1125 (not bm!5059) (not b!119999) (not d!28703) (not d!28695) (not b!119998) (not b!119996) (not bm!5040) (not bm!5062) (not b!119949) (not b!120015) (not bm!5061) (not b!119890) (not bm!5065) (not d!28689) (not b!119968) (not mapNonEmpty!1553) (not b_next!3835) (not b!119913) (not d!28685) (not b!119970) (not b!120011) (not bm!5058) (not b!119992) (not b!119974) (not b!120031) (not b!119901) (not b!119977) (not d!28681) (not bm!5063) (not b!119896) (not bm!5064) (not b!120027) (not b!120005) (not b!119976) (not b!119946) (not b!119950) (not bm!5060) (not b!120012) (not d!28679) (not b!119971) b_and!5963 (not b!119912) (not d!28687) (not b!120006) (not b!119991) (not d!28707) (not b!120019) (not b_next!3833) (not bm!5041) (not b!120030) (not b!120016) (not b!120018))
(check-sat b_and!5965 b_and!5963 (not b_next!3835) (not b_next!3833))
