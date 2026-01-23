; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11610 () Bool)

(assert start!11610)

(declare-fun b!112850 () Bool)

(declare-fun b_free!3537 () Bool)

(declare-fun b_next!3537 () Bool)

(assert (=> b!112850 (= b_free!3537 (not b_next!3537))))

(declare-fun tp!61339 () Bool)

(declare-fun b_and!5667 () Bool)

(assert (=> b!112850 (= tp!61339 b_and!5667)))

(declare-fun b!112847 () Bool)

(declare-fun b_free!3539 () Bool)

(declare-fun b_next!3539 () Bool)

(assert (=> b!112847 (= b_free!3539 (not b_next!3539))))

(declare-fun tp!61334 () Bool)

(declare-fun b_and!5669 () Bool)

(assert (=> b!112847 (= tp!61334 b_and!5669)))

(declare-fun res!54008 () Bool)

(declare-fun e!63462 () Bool)

(assert (=> start!11610 (=> (not res!54008) (not e!63462))))

(declare-datatypes ((C!1844 0))(
  ( (C!1845 (val!648 Int)) )
))
(declare-datatypes ((Regex!461 0))(
  ( (ElementMatch!461 (c!26429 C!1844)) (Concat!845 (regOne!1434 Regex!461) (regTwo!1434 Regex!461)) (EmptyExpr!461) (Star!461 (reg!790 Regex!461)) (EmptyLang!461) (Union!461 (regOne!1435 Regex!461) (regTwo!1435 Regex!461)) )
))
(declare-fun r!15532 () Regex!461)

(declare-fun validRegex!75 (Regex!461) Bool)

(assert (=> start!11610 (= res!54008 (validRegex!75 r!15532))))

(assert (=> start!11610 e!63462))

(assert (=> start!11610 true))

(declare-fun e!63455 () Bool)

(assert (=> start!11610 e!63455))

(declare-fun e!63454 () Bool)

(assert (=> start!11610 e!63454))

(declare-fun e!63453 () Bool)

(assert (=> start!11610 e!63453))

(declare-fun e!63452 () Bool)

(assert (=> start!11610 e!63452))

(declare-datatypes ((Hashable!323 0))(
  ( (HashableExt!322 (__x!1906 Int)) )
))
(declare-datatypes ((tuple2!1964 0))(
  ( (tuple2!1965 (_1!1192 Regex!461) (_2!1192 C!1844)) )
))
(declare-datatypes ((tuple2!1966 0))(
  ( (tuple2!1967 (_1!1193 tuple2!1964) (_2!1193 Regex!461)) )
))
(declare-datatypes ((List!1838 0))(
  ( (Nil!1832) (Cons!1832 (h!7229 tuple2!1966) (t!22315 List!1838)) )
))
(declare-datatypes ((array!1153 0))(
  ( (array!1154 (arr!538 (Array (_ BitVec 32) (_ BitVec 64))) (size!1608 (_ BitVec 32))) )
))
(declare-datatypes ((array!1155 0))(
  ( (array!1156 (arr!539 (Array (_ BitVec 32) List!1838)) (size!1609 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!654 0))(
  ( (LongMapFixedSize!655 (defaultEntry!666 Int) (mask!1225 (_ BitVec 32)) (extraKeys!573 (_ BitVec 32)) (zeroValue!583 List!1838) (minValue!583 List!1838) (_size!787 (_ BitVec 32)) (_keys!618 array!1153) (_values!605 array!1155) (_vacant!388 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1297 0))(
  ( (Cell!1298 (v!13185 LongMapFixedSize!654)) )
))
(declare-datatypes ((MutLongMap!327 0))(
  ( (LongMap!327 (underlying!853 Cell!1297)) (MutLongMapExt!326 (__x!1907 Int)) )
))
(declare-datatypes ((Cell!1299 0))(
  ( (Cell!1300 (v!13186 MutLongMap!327)) )
))
(declare-datatypes ((MutableMap!323 0))(
  ( (MutableMapExt!322 (__x!1908 Int)) (HashMap!323 (underlying!854 Cell!1299) (hashF!2199 Hashable!323) (_size!788 (_ BitVec 32)) (defaultValue!472 Int)) )
))
(declare-datatypes ((Cache!82 0))(
  ( (Cache!83 (cache!775 MutableMap!323)) )
))
(declare-fun cache!470 () Cache!82)

(declare-fun e!63456 () Bool)

(declare-fun inv!2331 (Cache!82) Bool)

(assert (=> start!11610 (and (inv!2331 cache!470) e!63456)))

(declare-fun b!112841 () Bool)

(declare-fun tp!61337 () Bool)

(declare-fun tp!61336 () Bool)

(assert (=> b!112841 (= e!63455 (and tp!61337 tp!61336))))

(declare-fun mapIsEmpty!1291 () Bool)

(declare-fun mapRes!1291 () Bool)

(assert (=> mapIsEmpty!1291 mapRes!1291))

(declare-fun b!112842 () Bool)

(declare-fun res!54009 () Bool)

(declare-fun e!63451 () Bool)

(assert (=> b!112842 (=> (not res!54009) (not e!63451))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((List!1839 0))(
  ( (Nil!1833) (Cons!1833 (h!7230 C!1844) (t!22316 List!1839)) )
))
(declare-fun totalInput!1363 () List!1839)

(declare-fun size!1610 (List!1839) Int)

(assert (=> b!112842 (= res!54009 (= totalInputSize!643 (size!1610 totalInput!1363)))))

(declare-fun b!112843 () Bool)

(declare-fun res!54010 () Bool)

(assert (=> b!112843 (=> (not res!54010) (not e!63451))))

(declare-fun testedPSize!285 () Int)

(declare-fun testedP!367 () List!1839)

(assert (=> b!112843 (= res!54010 (= testedPSize!285 (size!1610 testedP!367)))))

(declare-fun b!112844 () Bool)

(declare-fun tp!61327 () Bool)

(assert (=> b!112844 (= e!63455 tp!61327)))

(declare-fun b!112845 () Bool)

(declare-fun e!63457 () Bool)

(declare-fun e!63449 () Bool)

(assert (=> b!112845 (= e!63457 e!63449)))

(declare-fun b!112846 () Bool)

(declare-fun e!63461 () Bool)

(assert (=> b!112846 (= e!63449 e!63461)))

(declare-fun e!63459 () Bool)

(declare-fun e!63460 () Bool)

(assert (=> b!112847 (= e!63459 (and e!63460 tp!61334))))

(declare-fun mapNonEmpty!1291 () Bool)

(declare-fun tp!61328 () Bool)

(declare-fun tp!61329 () Bool)

(assert (=> mapNonEmpty!1291 (= mapRes!1291 (and tp!61328 tp!61329))))

(declare-fun mapValue!1291 () List!1838)

(declare-fun mapRest!1291 () (Array (_ BitVec 32) List!1838))

(declare-fun mapKey!1291 () (_ BitVec 32))

(assert (=> mapNonEmpty!1291 (= (arr!539 (_values!605 (v!13185 (underlying!853 (v!13186 (underlying!854 (cache!775 cache!470))))))) (store mapRest!1291 mapKey!1291 mapValue!1291))))

(declare-fun b!112848 () Bool)

(declare-fun lt!32952 () MutLongMap!327)

(get-info :version)

(assert (=> b!112848 (= e!63460 (and e!63457 ((_ is LongMap!327) lt!32952)))))

(assert (=> b!112848 (= lt!32952 (v!13186 (underlying!854 (cache!775 cache!470))))))

(declare-fun b!112849 () Bool)

(declare-fun tp!61332 () Bool)

(declare-fun tp!61340 () Bool)

(assert (=> b!112849 (= e!63455 (and tp!61332 tp!61340))))

(declare-fun e!63458 () Bool)

(declare-fun tp!61341 () Bool)

(declare-fun tp!61333 () Bool)

(declare-fun array_inv!375 (array!1153) Bool)

(declare-fun array_inv!376 (array!1155) Bool)

(assert (=> b!112850 (= e!63461 (and tp!61339 tp!61341 tp!61333 (array_inv!375 (_keys!618 (v!13185 (underlying!853 (v!13186 (underlying!854 (cache!775 cache!470))))))) (array_inv!376 (_values!605 (v!13185 (underlying!853 (v!13186 (underlying!854 (cache!775 cache!470))))))) e!63458))))

(declare-fun b!112851 () Bool)

(declare-fun tp_is_empty!977 () Bool)

(declare-fun tp!61335 () Bool)

(assert (=> b!112851 (= e!63452 (and tp_is_empty!977 tp!61335))))

(declare-fun b!112852 () Bool)

(declare-fun tp!61330 () Bool)

(assert (=> b!112852 (= e!63454 (and tp_is_empty!977 tp!61330))))

(declare-fun b!112853 () Bool)

(assert (=> b!112853 (= e!63451 (not true))))

(declare-fun lt!32951 () Bool)

(declare-fun isPrefix!54 (List!1839 List!1839) Bool)

(assert (=> b!112853 (= lt!32951 (isPrefix!54 testedP!367 totalInput!1363))))

(declare-fun lt!32953 () List!1839)

(assert (=> b!112853 (isPrefix!54 testedP!367 lt!32953)))

(declare-datatypes ((Unit!1307 0))(
  ( (Unit!1308) )
))
(declare-fun lt!32954 () Unit!1307)

(declare-fun testedSuffix!285 () List!1839)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3 (List!1839 List!1839) Unit!1307)

(assert (=> b!112853 (= lt!32954 (lemmaConcatTwoListThenFirstIsPrefix!3 testedP!367 testedSuffix!285))))

(declare-fun b!112854 () Bool)

(declare-fun tp!61331 () Bool)

(assert (=> b!112854 (= e!63453 (and tp_is_empty!977 tp!61331))))

(declare-fun b!112855 () Bool)

(assert (=> b!112855 (= e!63462 e!63451)))

(declare-fun res!54011 () Bool)

(assert (=> b!112855 (=> (not res!54011) (not e!63451))))

(assert (=> b!112855 (= res!54011 (= lt!32953 totalInput!1363))))

(declare-fun ++!308 (List!1839 List!1839) List!1839)

(assert (=> b!112855 (= lt!32953 (++!308 testedP!367 testedSuffix!285))))

(declare-fun b!112856 () Bool)

(declare-fun res!54007 () Bool)

(assert (=> b!112856 (=> (not res!54007) (not e!63462))))

(declare-fun valid!303 (Cache!82) Bool)

(assert (=> b!112856 (= res!54007 (valid!303 cache!470))))

(declare-fun b!112857 () Bool)

(declare-fun tp!61338 () Bool)

(assert (=> b!112857 (= e!63458 (and tp!61338 mapRes!1291))))

(declare-fun condMapEmpty!1291 () Bool)

(declare-fun mapDefault!1291 () List!1838)

(assert (=> b!112857 (= condMapEmpty!1291 (= (arr!539 (_values!605 (v!13185 (underlying!853 (v!13186 (underlying!854 (cache!775 cache!470))))))) ((as const (Array (_ BitVec 32) List!1838)) mapDefault!1291)))))

(declare-fun b!112858 () Bool)

(assert (=> b!112858 (= e!63456 e!63459)))

(declare-fun b!112859 () Bool)

(assert (=> b!112859 (= e!63455 tp_is_empty!977)))

(assert (= (and start!11610 res!54008) b!112856))

(assert (= (and b!112856 res!54007) b!112855))

(assert (= (and b!112855 res!54011) b!112843))

(assert (= (and b!112843 res!54010) b!112842))

(assert (= (and b!112842 res!54009) b!112853))

(assert (= (and start!11610 ((_ is ElementMatch!461) r!15532)) b!112859))

(assert (= (and start!11610 ((_ is Concat!845) r!15532)) b!112849))

(assert (= (and start!11610 ((_ is Star!461) r!15532)) b!112844))

(assert (= (and start!11610 ((_ is Union!461) r!15532)) b!112841))

(assert (= (and start!11610 ((_ is Cons!1833) totalInput!1363)) b!112852))

(assert (= (and start!11610 ((_ is Cons!1833) testedSuffix!285)) b!112854))

(assert (= (and start!11610 ((_ is Cons!1833) testedP!367)) b!112851))

(assert (= (and b!112857 condMapEmpty!1291) mapIsEmpty!1291))

(assert (= (and b!112857 (not condMapEmpty!1291)) mapNonEmpty!1291))

(assert (= b!112850 b!112857))

(assert (= b!112846 b!112850))

(assert (= b!112845 b!112846))

(assert (= (and b!112848 ((_ is LongMap!327) (v!13186 (underlying!854 (cache!775 cache!470))))) b!112845))

(assert (= b!112847 b!112848))

(assert (= (and b!112858 ((_ is HashMap!323) (cache!775 cache!470))) b!112847))

(assert (= start!11610 b!112858))

(declare-fun m!102490 () Bool)

(assert (=> b!112850 m!102490))

(declare-fun m!102492 () Bool)

(assert (=> b!112850 m!102492))

(declare-fun m!102494 () Bool)

(assert (=> b!112856 m!102494))

(declare-fun m!102496 () Bool)

(assert (=> b!112853 m!102496))

(declare-fun m!102498 () Bool)

(assert (=> b!112853 m!102498))

(declare-fun m!102500 () Bool)

(assert (=> b!112853 m!102500))

(declare-fun m!102502 () Bool)

(assert (=> b!112855 m!102502))

(declare-fun m!102504 () Bool)

(assert (=> start!11610 m!102504))

(declare-fun m!102506 () Bool)

(assert (=> start!11610 m!102506))

(declare-fun m!102508 () Bool)

(assert (=> b!112842 m!102508))

(declare-fun m!102510 () Bool)

(assert (=> b!112843 m!102510))

(declare-fun m!102512 () Bool)

(assert (=> mapNonEmpty!1291 m!102512))

(check-sat (not b!112850) (not b!112852) (not b!112843) b_and!5667 (not b!112855) (not b!112844) (not start!11610) (not b!112853) (not b!112851) (not b!112841) (not mapNonEmpty!1291) (not b_next!3537) (not b!112842) (not b!112857) (not b!112849) b_and!5669 (not b!112854) (not b_next!3539) (not b!112856) tp_is_empty!977)
(check-sat b_and!5669 b_and!5667 (not b_next!3539) (not b_next!3537))
