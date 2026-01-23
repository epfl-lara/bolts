; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11644 () Bool)

(assert start!11644)

(declare-fun b!113331 () Bool)

(declare-fun b_free!3561 () Bool)

(declare-fun b_next!3561 () Bool)

(assert (=> b!113331 (= b_free!3561 (not b_next!3561))))

(declare-fun tp!61683 () Bool)

(declare-fun b_and!5691 () Bool)

(assert (=> b!113331 (= tp!61683 b_and!5691)))

(declare-fun b!113340 () Bool)

(declare-fun b_free!3563 () Bool)

(declare-fun b_next!3563 () Bool)

(assert (=> b!113340 (= b_free!3563 (not b_next!3563))))

(declare-fun tp!61677 () Bool)

(declare-fun b_and!5693 () Bool)

(assert (=> b!113340 (= tp!61677 b_and!5693)))

(declare-fun b!113325 () Bool)

(declare-fun res!54158 () Bool)

(declare-fun e!63808 () Bool)

(assert (=> b!113325 (=> (not res!54158) (not e!63808))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((C!1856 0))(
  ( (C!1857 (val!654 Int)) )
))
(declare-datatypes ((List!1850 0))(
  ( (Nil!1844) (Cons!1844 (h!7241 C!1856) (t!22327 List!1850)) )
))
(declare-fun totalInput!1363 () List!1850)

(declare-fun size!1626 (List!1850) Int)

(assert (=> b!113325 (= res!54158 (= totalInputSize!643 (size!1626 totalInput!1363)))))

(declare-fun b!113326 () Bool)

(declare-fun e!63815 () Bool)

(declare-fun tp_is_empty!989 () Bool)

(declare-fun tp!61685 () Bool)

(assert (=> b!113326 (= e!63815 (and tp_is_empty!989 tp!61685))))

(declare-fun b!113327 () Bool)

(declare-fun e!63813 () Bool)

(declare-fun e!63812 () Bool)

(assert (=> b!113327 (= e!63813 e!63812)))

(declare-fun b!113328 () Bool)

(declare-fun e!63811 () Bool)

(assert (=> b!113328 (= e!63808 (not e!63811))))

(declare-fun res!54154 () Bool)

(assert (=> b!113328 (=> res!54154 e!63811)))

(declare-fun testedP!367 () List!1850)

(declare-fun isPrefix!59 (List!1850 List!1850) Bool)

(assert (=> b!113328 (= res!54154 (not (isPrefix!59 testedP!367 totalInput!1363)))))

(declare-fun lt!33069 () List!1850)

(assert (=> b!113328 (isPrefix!59 testedP!367 lt!33069)))

(declare-datatypes ((Unit!1317 0))(
  ( (Unit!1318) )
))
(declare-fun lt!33070 () Unit!1317)

(declare-fun testedSuffix!285 () List!1850)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!8 (List!1850 List!1850) Unit!1317)

(assert (=> b!113328 (= lt!33070 (lemmaConcatTwoListThenFirstIsPrefix!8 testedP!367 testedSuffix!285))))

(declare-fun b!113329 () Bool)

(declare-fun e!63817 () Bool)

(declare-fun tp!61682 () Bool)

(assert (=> b!113329 (= e!63817 (and tp_is_empty!989 tp!61682))))

(declare-fun b!113330 () Bool)

(declare-fun e!63804 () Bool)

(declare-fun tp!61687 () Bool)

(assert (=> b!113330 (= e!63804 tp!61687)))

(declare-fun e!63810 () Bool)

(declare-fun e!63814 () Bool)

(assert (=> b!113331 (= e!63810 (and e!63814 tp!61683))))

(declare-fun b!113332 () Bool)

(declare-fun e!63803 () Bool)

(declare-fun tp!61690 () Bool)

(assert (=> b!113332 (= e!63803 (and tp_is_empty!989 tp!61690))))

(declare-fun b!113333 () Bool)

(declare-fun e!63816 () Bool)

(declare-fun tp!61689 () Bool)

(declare-fun mapRes!1312 () Bool)

(assert (=> b!113333 (= e!63816 (and tp!61689 mapRes!1312))))

(declare-fun condMapEmpty!1312 () Bool)

(declare-datatypes ((Regex!467 0))(
  ( (ElementMatch!467 (c!26451 C!1856)) (Concat!851 (regOne!1446 Regex!467) (regTwo!1446 Regex!467)) (EmptyExpr!467) (Star!467 (reg!796 Regex!467)) (EmptyLang!467) (Union!467 (regOne!1447 Regex!467) (regTwo!1447 Regex!467)) )
))
(declare-datatypes ((Hashable!329 0))(
  ( (HashableExt!328 (__x!1924 Int)) )
))
(declare-datatypes ((tuple2!1988 0))(
  ( (tuple2!1989 (_1!1204 Regex!467) (_2!1204 C!1856)) )
))
(declare-datatypes ((tuple2!1990 0))(
  ( (tuple2!1991 (_1!1205 tuple2!1988) (_2!1205 Regex!467)) )
))
(declare-datatypes ((List!1851 0))(
  ( (Nil!1845) (Cons!1845 (h!7242 tuple2!1990) (t!22328 List!1851)) )
))
(declare-datatypes ((array!1179 0))(
  ( (array!1180 (arr!550 (Array (_ BitVec 32) (_ BitVec 64))) (size!1627 (_ BitVec 32))) )
))
(declare-datatypes ((array!1181 0))(
  ( (array!1182 (arr!551 (Array (_ BitVec 32) List!1851)) (size!1628 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!666 0))(
  ( (LongMapFixedSize!667 (defaultEntry!672 Int) (mask!1234 (_ BitVec 32)) (extraKeys!579 (_ BitVec 32)) (zeroValue!589 List!1851) (minValue!589 List!1851) (_size!799 (_ BitVec 32)) (_keys!624 array!1179) (_values!611 array!1181) (_vacant!394 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1321 0))(
  ( (Cell!1322 (v!13197 LongMapFixedSize!666)) )
))
(declare-datatypes ((MutLongMap!333 0))(
  ( (LongMap!333 (underlying!865 Cell!1321)) (MutLongMapExt!332 (__x!1925 Int)) )
))
(declare-datatypes ((Cell!1323 0))(
  ( (Cell!1324 (v!13198 MutLongMap!333)) )
))
(declare-datatypes ((MutableMap!329 0))(
  ( (MutableMapExt!328 (__x!1926 Int)) (HashMap!329 (underlying!866 Cell!1323) (hashF!2205 Hashable!329) (_size!800 (_ BitVec 32)) (defaultValue!478 Int)) )
))
(declare-datatypes ((Cache!94 0))(
  ( (Cache!95 (cache!781 MutableMap!329)) )
))
(declare-fun cache!470 () Cache!94)

(declare-fun mapDefault!1312 () List!1851)

(assert (=> b!113333 (= condMapEmpty!1312 (= (arr!551 (_values!611 (v!13197 (underlying!865 (v!13198 (underlying!866 (cache!781 cache!470))))))) ((as const (Array (_ BitVec 32) List!1851)) mapDefault!1312)))))

(declare-fun b!113334 () Bool)

(declare-fun res!54159 () Bool)

(assert (=> b!113334 (=> (not res!54159) (not e!63808))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!113334 (= res!54159 (= testedPSize!285 (size!1626 testedP!367)))))

(declare-fun b!113335 () Bool)

(assert (=> b!113335 (= e!63811 true)))

(declare-fun lt!33067 () List!1850)

(assert (=> b!113335 (= testedSuffix!285 lt!33067)))

(declare-fun lt!33068 () Unit!1317)

(declare-fun lemmaSamePrefixThenSameSuffix!5 (List!1850 List!1850 List!1850 List!1850 List!1850) Unit!1317)

(assert (=> b!113335 (= lt!33068 (lemmaSamePrefixThenSameSuffix!5 testedP!367 testedSuffix!285 testedP!367 lt!33067 totalInput!1363))))

(declare-fun getSuffix!6 (List!1850 List!1850) List!1850)

(assert (=> b!113335 (= lt!33067 (getSuffix!6 totalInput!1363 testedP!367))))

(declare-fun mapIsEmpty!1312 () Bool)

(assert (=> mapIsEmpty!1312 mapRes!1312))

(declare-fun b!113336 () Bool)

(assert (=> b!113336 (= e!63804 tp_is_empty!989)))

(declare-fun b!113337 () Bool)

(declare-fun e!63806 () Bool)

(assert (=> b!113337 (= e!63806 e!63810)))

(declare-fun b!113338 () Bool)

(declare-fun res!54157 () Bool)

(declare-fun e!63809 () Bool)

(assert (=> b!113338 (=> (not res!54157) (not e!63809))))

(declare-fun valid!309 (Cache!94) Bool)

(assert (=> b!113338 (= res!54157 (valid!309 cache!470))))

(declare-fun b!113339 () Bool)

(assert (=> b!113339 (= e!63809 e!63808)))

(declare-fun res!54156 () Bool)

(assert (=> b!113339 (=> (not res!54156) (not e!63808))))

(assert (=> b!113339 (= res!54156 (= lt!33069 totalInput!1363))))

(declare-fun ++!312 (List!1850 List!1850) List!1850)

(assert (=> b!113339 (= lt!33069 (++!312 testedP!367 testedSuffix!285))))

(declare-fun tp!61679 () Bool)

(declare-fun tp!61686 () Bool)

(declare-fun array_inv!387 (array!1179) Bool)

(declare-fun array_inv!388 (array!1181) Bool)

(assert (=> b!113340 (= e!63812 (and tp!61677 tp!61679 tp!61686 (array_inv!387 (_keys!624 (v!13197 (underlying!865 (v!13198 (underlying!866 (cache!781 cache!470))))))) (array_inv!388 (_values!611 (v!13197 (underlying!865 (v!13198 (underlying!866 (cache!781 cache!470))))))) e!63816))))

(declare-fun b!113341 () Bool)

(declare-fun e!63805 () Bool)

(declare-fun lt!33066 () MutLongMap!333)

(get-info :version)

(assert (=> b!113341 (= e!63814 (and e!63805 ((_ is LongMap!333) lt!33066)))))

(assert (=> b!113341 (= lt!33066 (v!13198 (underlying!866 (cache!781 cache!470))))))

(declare-fun b!113342 () Bool)

(declare-fun tp!61676 () Bool)

(declare-fun tp!61680 () Bool)

(assert (=> b!113342 (= e!63804 (and tp!61676 tp!61680))))

(declare-fun b!113343 () Bool)

(assert (=> b!113343 (= e!63805 e!63813)))

(declare-fun b!113344 () Bool)

(declare-fun tp!61678 () Bool)

(declare-fun tp!61684 () Bool)

(assert (=> b!113344 (= e!63804 (and tp!61678 tp!61684))))

(declare-fun res!54155 () Bool)

(assert (=> start!11644 (=> (not res!54155) (not e!63809))))

(declare-fun r!15532 () Regex!467)

(declare-fun validRegex!81 (Regex!467) Bool)

(assert (=> start!11644 (= res!54155 (validRegex!81 r!15532))))

(assert (=> start!11644 e!63809))

(assert (=> start!11644 true))

(assert (=> start!11644 e!63804))

(assert (=> start!11644 e!63803))

(assert (=> start!11644 e!63817))

(assert (=> start!11644 e!63815))

(declare-fun inv!2346 (Cache!94) Bool)

(assert (=> start!11644 (and (inv!2346 cache!470) e!63806)))

(declare-fun mapNonEmpty!1312 () Bool)

(declare-fun tp!61681 () Bool)

(declare-fun tp!61688 () Bool)

(assert (=> mapNonEmpty!1312 (= mapRes!1312 (and tp!61681 tp!61688))))

(declare-fun mapValue!1312 () List!1851)

(declare-fun mapKey!1312 () (_ BitVec 32))

(declare-fun mapRest!1312 () (Array (_ BitVec 32) List!1851))

(assert (=> mapNonEmpty!1312 (= (arr!551 (_values!611 (v!13197 (underlying!865 (v!13198 (underlying!866 (cache!781 cache!470))))))) (store mapRest!1312 mapKey!1312 mapValue!1312))))

(assert (= (and start!11644 res!54155) b!113338))

(assert (= (and b!113338 res!54157) b!113339))

(assert (= (and b!113339 res!54156) b!113334))

(assert (= (and b!113334 res!54159) b!113325))

(assert (= (and b!113325 res!54158) b!113328))

(assert (= (and b!113328 (not res!54154)) b!113335))

(assert (= (and start!11644 ((_ is ElementMatch!467) r!15532)) b!113336))

(assert (= (and start!11644 ((_ is Concat!851) r!15532)) b!113342))

(assert (= (and start!11644 ((_ is Star!467) r!15532)) b!113330))

(assert (= (and start!11644 ((_ is Union!467) r!15532)) b!113344))

(assert (= (and start!11644 ((_ is Cons!1844) totalInput!1363)) b!113332))

(assert (= (and start!11644 ((_ is Cons!1844) testedSuffix!285)) b!113329))

(assert (= (and start!11644 ((_ is Cons!1844) testedP!367)) b!113326))

(assert (= (and b!113333 condMapEmpty!1312) mapIsEmpty!1312))

(assert (= (and b!113333 (not condMapEmpty!1312)) mapNonEmpty!1312))

(assert (= b!113340 b!113333))

(assert (= b!113327 b!113340))

(assert (= b!113343 b!113327))

(assert (= (and b!113341 ((_ is LongMap!333) (v!13198 (underlying!866 (cache!781 cache!470))))) b!113343))

(assert (= b!113331 b!113341))

(assert (= (and b!113337 ((_ is HashMap!329) (cache!781 cache!470))) b!113331))

(assert (= start!11644 b!113337))

(declare-fun m!102708 () Bool)

(assert (=> start!11644 m!102708))

(declare-fun m!102710 () Bool)

(assert (=> start!11644 m!102710))

(declare-fun m!102712 () Bool)

(assert (=> b!113340 m!102712))

(declare-fun m!102714 () Bool)

(assert (=> b!113340 m!102714))

(declare-fun m!102716 () Bool)

(assert (=> b!113338 m!102716))

(declare-fun m!102718 () Bool)

(assert (=> b!113328 m!102718))

(declare-fun m!102720 () Bool)

(assert (=> b!113328 m!102720))

(declare-fun m!102722 () Bool)

(assert (=> b!113328 m!102722))

(declare-fun m!102724 () Bool)

(assert (=> b!113339 m!102724))

(declare-fun m!102726 () Bool)

(assert (=> b!113325 m!102726))

(declare-fun m!102728 () Bool)

(assert (=> mapNonEmpty!1312 m!102728))

(declare-fun m!102730 () Bool)

(assert (=> b!113334 m!102730))

(declare-fun m!102732 () Bool)

(assert (=> b!113335 m!102732))

(declare-fun m!102734 () Bool)

(assert (=> b!113335 m!102734))

(check-sat (not mapNonEmpty!1312) (not b!113335) (not b!113330) (not b!113329) b_and!5693 (not b_next!3561) (not b!113340) (not start!11644) (not b!113326) tp_is_empty!989 (not b!113332) (not b!113342) (not b!113338) (not b!113325) (not b!113344) (not b!113334) (not b_next!3563) b_and!5691 (not b!113328) (not b!113339) (not b!113333))
(check-sat b_and!5691 b_and!5693 (not b_next!3561) (not b_next!3563))
