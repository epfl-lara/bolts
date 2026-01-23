; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277248 () Bool)

(assert start!277248)

(declare-fun b!2847072 () Bool)

(declare-fun b_free!82701 () Bool)

(declare-fun b_next!83405 () Bool)

(assert (=> b!2847072 (= b_free!82701 (not b_next!83405))))

(declare-fun tp!913478 () Bool)

(declare-fun b_and!208943 () Bool)

(assert (=> b!2847072 (= tp!913478 b_and!208943)))

(declare-fun b!2847074 () Bool)

(declare-fun b_free!82703 () Bool)

(declare-fun b_next!83407 () Bool)

(assert (=> b!2847074 (= b_free!82703 (not b_next!83407))))

(declare-fun tp!913480 () Bool)

(declare-fun b_and!208945 () Bool)

(assert (=> b!2847074 (= tp!913480 b_and!208945)))

(declare-fun b!2847069 () Bool)

(declare-fun b_free!82705 () Bool)

(declare-fun b_next!83409 () Bool)

(assert (=> b!2847069 (= b_free!82705 (not b_next!83409))))

(declare-fun tp!913482 () Bool)

(declare-fun b_and!208947 () Bool)

(assert (=> b!2847069 (= tp!913482 b_and!208947)))

(declare-fun b!2847080 () Bool)

(declare-fun b_free!82707 () Bool)

(declare-fun b_next!83411 () Bool)

(assert (=> b!2847080 (= b_free!82707 (not b_next!83411))))

(declare-fun tp!913467 () Bool)

(declare-fun b_and!208949 () Bool)

(assert (=> b!2847080 (= tp!913467 b_and!208949)))

(declare-fun b!2847068 () Bool)

(declare-fun e!1803960 () Bool)

(declare-fun e!1803964 () Bool)

(assert (=> b!2847068 (= e!1803960 e!1803964)))

(declare-fun res!1183793 () Bool)

(declare-fun e!1803961 () Bool)

(assert (=> start!277248 (=> (not res!1183793) (not e!1803961))))

(declare-fun i!1868 () Int)

(assert (=> start!277248 (= res!1183793 (>= i!1868 0))))

(assert (=> start!277248 e!1803961))

(declare-datatypes ((C!17148 0))(
  ( (C!17149 (val!10608 Int)) )
))
(declare-datatypes ((Regex!8483 0))(
  ( (ElementMatch!8483 (c!459382 C!17148)) (Concat!13786 (regOne!17478 Regex!8483) (regTwo!17478 Regex!8483)) (EmptyExpr!8483) (Star!8483 (reg!8812 Regex!8483)) (EmptyLang!8483) (Union!8483 (regOne!17479 Regex!8483) (regTwo!17479 Regex!8483)) )
))
(declare-datatypes ((List!33909 0))(
  ( (Nil!33785) (Cons!33785 (h!39205 Regex!8483) (t!232934 List!33909)) )
))
(declare-datatypes ((Context!5022 0))(
  ( (Context!5023 (exprs!3011 List!33909)) )
))
(declare-datatypes ((tuple2!33626 0))(
  ( (tuple2!33627 (_1!19939 Context!5022) (_2!19939 C!17148)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33628 0))(
  ( (tuple2!33629 (_1!19940 tuple2!33626) (_2!19940 (InoxSet Context!5022))) )
))
(declare-datatypes ((Hashable!4022 0))(
  ( (HashableExt!4021 (__x!22388 Int)) )
))
(declare-datatypes ((List!33910 0))(
  ( (Nil!33786) (Cons!33786 (h!39206 tuple2!33628) (t!232935 List!33910)) )
))
(declare-datatypes ((array!14597 0))(
  ( (array!14598 (arr!6504 (Array (_ BitVec 32) (_ BitVec 64))) (size!26232 (_ BitVec 32))) )
))
(declare-datatypes ((array!14599 0))(
  ( (array!14600 (arr!6505 (Array (_ BitVec 32) List!33910)) (size!26233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8212 0))(
  ( (LongMapFixedSize!8213 (defaultEntry!4491 Int) (mask!10139 (_ BitVec 32)) (extraKeys!4355 (_ BitVec 32)) (zeroValue!4365 List!33910) (minValue!4365 List!33910) (_size!8255 (_ BitVec 32)) (_keys!4406 array!14597) (_values!4387 array!14599) (_vacant!4167 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16233 0))(
  ( (Cell!16234 (v!34410 LongMapFixedSize!8212)) )
))
(declare-datatypes ((MutLongMap!4106 0))(
  ( (LongMap!4106 (underlying!8441 Cell!16233)) (MutLongMapExt!4105 (__x!22389 Int)) )
))
(declare-datatypes ((Cell!16235 0))(
  ( (Cell!16236 (v!34411 MutLongMap!4106)) )
))
(declare-datatypes ((MutableMap!4012 0))(
  ( (MutableMapExt!4011 (__x!22390 Int)) (HashMap!4012 (underlying!8442 Cell!16235) (hashF!6054 Hashable!4022) (_size!8256 (_ BitVec 32)) (defaultValue!4183 Int)) )
))
(declare-datatypes ((CacheUp!2708 0))(
  ( (CacheUp!2709 (cache!4147 MutableMap!4012)) )
))
(declare-fun cacheUp!778 () CacheUp!2708)

(declare-fun e!1803950 () Bool)

(declare-fun inv!45815 (CacheUp!2708) Bool)

(assert (=> start!277248 (and (inv!45815 cacheUp!778) e!1803950)))

(declare-datatypes ((tuple3!5312 0))(
  ( (tuple3!5313 (_1!19941 Regex!8483) (_2!19941 Context!5022) (_3!3126 C!17148)) )
))
(declare-datatypes ((tuple2!33630 0))(
  ( (tuple2!33631 (_1!19942 tuple3!5312) (_2!19942 (InoxSet Context!5022))) )
))
(declare-datatypes ((List!33911 0))(
  ( (Nil!33787) (Cons!33787 (h!39207 tuple2!33630) (t!232936 List!33911)) )
))
(declare-datatypes ((array!14601 0))(
  ( (array!14602 (arr!6506 (Array (_ BitVec 32) List!33911)) (size!26234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8214 0))(
  ( (LongMapFixedSize!8215 (defaultEntry!4492 Int) (mask!10140 (_ BitVec 32)) (extraKeys!4356 (_ BitVec 32)) (zeroValue!4366 List!33911) (minValue!4366 List!33911) (_size!8257 (_ BitVec 32)) (_keys!4407 array!14597) (_values!4388 array!14601) (_vacant!4168 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16237 0))(
  ( (Cell!16238 (v!34412 LongMapFixedSize!8214)) )
))
(declare-datatypes ((MutLongMap!4107 0))(
  ( (LongMap!4107 (underlying!8443 Cell!16237)) (MutLongMapExt!4106 (__x!22391 Int)) )
))
(declare-datatypes ((Cell!16239 0))(
  ( (Cell!16240 (v!34413 MutLongMap!4107)) )
))
(declare-datatypes ((Hashable!4023 0))(
  ( (HashableExt!4022 (__x!22392 Int)) )
))
(declare-datatypes ((MutableMap!4013 0))(
  ( (MutableMapExt!4012 (__x!22393 Int)) (HashMap!4013 (underlying!8444 Cell!16239) (hashF!6055 Hashable!4023) (_size!8258 (_ BitVec 32)) (defaultValue!4184 Int)) )
))
(declare-datatypes ((CacheDown!2832 0))(
  ( (CacheDown!2833 (cache!4148 MutableMap!4013)) )
))
(declare-fun cacheDown!791 () CacheDown!2832)

(declare-fun inv!45816 (CacheDown!2832) Bool)

(assert (=> start!277248 (and (inv!45816 cacheDown!791) e!1803960)))

(declare-fun condSetEmpty!24955 () Bool)

(declare-fun z!632 () (InoxSet Context!5022))

(assert (=> start!277248 (= condSetEmpty!24955 (= z!632 ((as const (Array Context!5022 Bool)) false)))))

(declare-fun setRes!24955 () Bool)

(assert (=> start!277248 setRes!24955))

(assert (=> start!277248 true))

(declare-datatypes ((List!33912 0))(
  ( (Nil!33788) (Cons!33788 (h!39208 C!17148) (t!232937 List!33912)) )
))
(declare-datatypes ((IArray!20959 0))(
  ( (IArray!20960 (innerList!10537 List!33912)) )
))
(declare-datatypes ((Conc!10477 0))(
  ( (Node!10477 (left!25437 Conc!10477) (right!25767 Conc!10477) (csize!21184 Int) (cheight!10688 Int)) (Leaf!15942 (xs!13595 IArray!20959) (csize!21185 Int)) (Empty!10477) )
))
(declare-datatypes ((BalanceConc!20592 0))(
  ( (BalanceConc!20593 (c!459383 Conc!10477)) )
))
(declare-fun input!3762 () BalanceConc!20592)

(declare-fun e!1803952 () Bool)

(declare-fun inv!45817 (BalanceConc!20592) Bool)

(assert (=> start!277248 (and (inv!45817 input!3762) e!1803952)))

(declare-fun e!1803962 () Bool)

(declare-fun tp!913481 () Bool)

(declare-fun e!1803957 () Bool)

(declare-fun tp!913474 () Bool)

(declare-fun array_inv!4656 (array!14597) Bool)

(declare-fun array_inv!4657 (array!14599) Bool)

(assert (=> b!2847069 (= e!1803957 (and tp!913482 tp!913481 tp!913474 (array_inv!4656 (_keys!4406 (v!34410 (underlying!8441 (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))))) (array_inv!4657 (_values!4387 (v!34410 (underlying!8441 (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))))) e!1803962))))

(declare-fun b!2847070 () Bool)

(declare-fun e!1803956 () Bool)

(declare-fun e!1803946 () Bool)

(assert (=> b!2847070 (= e!1803956 e!1803946)))

(declare-fun mapIsEmpty!18642 () Bool)

(declare-fun mapRes!18642 () Bool)

(assert (=> mapIsEmpty!18642 mapRes!18642))

(declare-fun setIsEmpty!24955 () Bool)

(assert (=> setIsEmpty!24955 setRes!24955))

(declare-fun b!2847071 () Bool)

(declare-fun e!1803953 () Bool)

(assert (=> b!2847071 (= e!1803953 e!1803957)))

(declare-fun e!1803949 () Bool)

(declare-fun e!1803948 () Bool)

(assert (=> b!2847072 (= e!1803949 (and e!1803948 tp!913478))))

(declare-fun b!2847073 () Bool)

(assert (=> b!2847073 (= e!1803950 e!1803949)))

(declare-fun e!1803947 () Bool)

(declare-fun tp!913473 () Bool)

(declare-fun tp!913483 () Bool)

(declare-fun e!1803951 () Bool)

(declare-fun array_inv!4658 (array!14601) Bool)

(assert (=> b!2847074 (= e!1803951 (and tp!913480 tp!913483 tp!913473 (array_inv!4656 (_keys!4407 (v!34412 (underlying!8443 (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))))) (array_inv!4658 (_values!4388 (v!34412 (underlying!8443 (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))))) e!1803947))))

(declare-fun b!2847075 () Bool)

(declare-fun e!1803958 () Bool)

(declare-fun lt!1012835 () MutLongMap!4107)

(get-info :version)

(assert (=> b!2847075 (= e!1803958 (and e!1803956 ((_ is LongMap!4107) lt!1012835)))))

(assert (=> b!2847075 (= lt!1012835 (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))))

(declare-fun b!2847076 () Bool)

(declare-fun e!1803954 () Bool)

(assert (=> b!2847076 (= e!1803961 e!1803954)))

(declare-fun res!1183792 () Bool)

(assert (=> b!2847076 (=> (not res!1183792) (not e!1803954))))

(declare-fun lt!1012834 () Int)

(assert (=> b!2847076 (= res!1183792 (and (<= i!1868 lt!1012834) (not (= i!1868 lt!1012834))))))

(declare-fun size!26235 (BalanceConc!20592) Int)

(assert (=> b!2847076 (= lt!1012834 (size!26235 input!3762))))

(declare-fun b!2847077 () Bool)

(declare-fun tp!913468 () Bool)

(assert (=> b!2847077 (= e!1803947 (and tp!913468 mapRes!18642))))

(declare-fun condMapEmpty!18643 () Bool)

(declare-fun mapDefault!18643 () List!33911)

(assert (=> b!2847077 (= condMapEmpty!18643 (= (arr!6506 (_values!4388 (v!34412 (underlying!8443 (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))))) ((as const (Array (_ BitVec 32) List!33911)) mapDefault!18643)))))

(declare-fun b!2847078 () Bool)

(declare-fun tp!913477 () Bool)

(declare-fun inv!45818 (Conc!10477) Bool)

(assert (=> b!2847078 (= e!1803952 (and (inv!45818 (c!459383 input!3762)) tp!913477))))

(declare-fun setNonEmpty!24955 () Bool)

(declare-fun e!1803955 () Bool)

(declare-fun setElem!24955 () Context!5022)

(declare-fun tp!913471 () Bool)

(declare-fun inv!45819 (Context!5022) Bool)

(assert (=> setNonEmpty!24955 (= setRes!24955 (and tp!913471 (inv!45819 setElem!24955) e!1803955))))

(declare-fun setRest!24955 () (InoxSet Context!5022))

(assert (=> setNonEmpty!24955 (= z!632 ((_ map or) (store ((as const (Array Context!5022 Bool)) false) setElem!24955 true) setRest!24955))))

(declare-fun b!2847079 () Bool)

(declare-fun tp!913479 () Bool)

(declare-fun mapRes!18643 () Bool)

(assert (=> b!2847079 (= e!1803962 (and tp!913479 mapRes!18643))))

(declare-fun condMapEmpty!18642 () Bool)

(declare-fun mapDefault!18642 () List!33910)

(assert (=> b!2847079 (= condMapEmpty!18642 (= (arr!6505 (_values!4387 (v!34410 (underlying!8441 (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))))) ((as const (Array (_ BitVec 32) List!33910)) mapDefault!18642)))))

(assert (=> b!2847080 (= e!1803964 (and e!1803958 tp!913467))))

(declare-fun b!2847081 () Bool)

(declare-fun e!1803959 () Bool)

(assert (=> b!2847081 (= e!1803959 e!1803953)))

(declare-fun b!2847082 () Bool)

(assert (=> b!2847082 (= e!1803954 false)))

(declare-datatypes ((tuple3!5314 0))(
  ( (tuple3!5315 (_1!19943 (InoxSet Context!5022)) (_2!19943 CacheUp!2708) (_3!3127 CacheDown!2832)) )
))
(declare-fun lt!1012836 () tuple3!5314)

(declare-datatypes ((tuple3!5316 0))(
  ( (tuple3!5317 (_1!19944 Bool) (_2!19944 CacheUp!2708) (_3!3128 CacheDown!2832)) )
))
(declare-fun lt!1012838 () tuple3!5316)

(declare-fun prefixMatchZipperSequenceMem!9 ((InoxSet Context!5022) BalanceConc!20592 Int CacheUp!2708 CacheDown!2832) tuple3!5316)

(assert (=> b!2847082 (= lt!1012838 (prefixMatchZipperSequenceMem!9 (_1!19943 lt!1012836) input!3762 (+ 1 i!1868) (_2!19943 lt!1012836) (_3!3127 lt!1012836)))))

(declare-fun derivationStepZipperMem!125 ((InoxSet Context!5022) C!17148 CacheUp!2708 CacheDown!2832) tuple3!5314)

(declare-fun apply!7868 (BalanceConc!20592 Int) C!17148)

(assert (=> b!2847082 (= lt!1012836 (derivationStepZipperMem!125 z!632 (apply!7868 input!3762 i!1868) cacheUp!778 cacheDown!791))))

(declare-fun b!2847083 () Bool)

(declare-fun tp!913470 () Bool)

(assert (=> b!2847083 (= e!1803955 tp!913470)))

(declare-fun mapNonEmpty!18642 () Bool)

(declare-fun tp!913469 () Bool)

(declare-fun tp!913475 () Bool)

(assert (=> mapNonEmpty!18642 (= mapRes!18642 (and tp!913469 tp!913475))))

(declare-fun mapValue!18642 () List!33911)

(declare-fun mapRest!18643 () (Array (_ BitVec 32) List!33911))

(declare-fun mapKey!18643 () (_ BitVec 32))

(assert (=> mapNonEmpty!18642 (= (arr!6506 (_values!4388 (v!34412 (underlying!8443 (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))))) (store mapRest!18643 mapKey!18643 mapValue!18642))))

(declare-fun mapNonEmpty!18643 () Bool)

(declare-fun tp!913472 () Bool)

(declare-fun tp!913476 () Bool)

(assert (=> mapNonEmpty!18643 (= mapRes!18643 (and tp!913472 tp!913476))))

(declare-fun mapRest!18642 () (Array (_ BitVec 32) List!33910))

(declare-fun mapKey!18642 () (_ BitVec 32))

(declare-fun mapValue!18643 () List!33910)

(assert (=> mapNonEmpty!18643 (= (arr!6505 (_values!4387 (v!34410 (underlying!8441 (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))))) (store mapRest!18642 mapKey!18642 mapValue!18643))))

(declare-fun mapIsEmpty!18643 () Bool)

(assert (=> mapIsEmpty!18643 mapRes!18643))

(declare-fun b!2847084 () Bool)

(assert (=> b!2847084 (= e!1803946 e!1803951)))

(declare-fun b!2847085 () Bool)

(declare-fun lt!1012837 () MutLongMap!4106)

(assert (=> b!2847085 (= e!1803948 (and e!1803959 ((_ is LongMap!4106) lt!1012837)))))

(assert (=> b!2847085 (= lt!1012837 (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))))

(assert (= (and start!277248 res!1183793) b!2847076))

(assert (= (and b!2847076 res!1183792) b!2847082))

(assert (= (and b!2847079 condMapEmpty!18642) mapIsEmpty!18643))

(assert (= (and b!2847079 (not condMapEmpty!18642)) mapNonEmpty!18643))

(assert (= b!2847069 b!2847079))

(assert (= b!2847071 b!2847069))

(assert (= b!2847081 b!2847071))

(assert (= (and b!2847085 ((_ is LongMap!4106) (v!34411 (underlying!8442 (cache!4147 cacheUp!778))))) b!2847081))

(assert (= b!2847072 b!2847085))

(assert (= (and b!2847073 ((_ is HashMap!4012) (cache!4147 cacheUp!778))) b!2847072))

(assert (= start!277248 b!2847073))

(assert (= (and b!2847077 condMapEmpty!18643) mapIsEmpty!18642))

(assert (= (and b!2847077 (not condMapEmpty!18643)) mapNonEmpty!18642))

(assert (= b!2847074 b!2847077))

(assert (= b!2847084 b!2847074))

(assert (= b!2847070 b!2847084))

(assert (= (and b!2847075 ((_ is LongMap!4107) (v!34413 (underlying!8444 (cache!4148 cacheDown!791))))) b!2847070))

(assert (= b!2847080 b!2847075))

(assert (= (and b!2847068 ((_ is HashMap!4013) (cache!4148 cacheDown!791))) b!2847080))

(assert (= start!277248 b!2847068))

(assert (= (and start!277248 condSetEmpty!24955) setIsEmpty!24955))

(assert (= (and start!277248 (not condSetEmpty!24955)) setNonEmpty!24955))

(assert (= setNonEmpty!24955 b!2847083))

(assert (= start!277248 b!2847078))

(declare-fun m!3274635 () Bool)

(assert (=> b!2847074 m!3274635))

(declare-fun m!3274637 () Bool)

(assert (=> b!2847074 m!3274637))

(declare-fun m!3274639 () Bool)

(assert (=> mapNonEmpty!18643 m!3274639))

(declare-fun m!3274641 () Bool)

(assert (=> mapNonEmpty!18642 m!3274641))

(declare-fun m!3274643 () Bool)

(assert (=> b!2847082 m!3274643))

(declare-fun m!3274645 () Bool)

(assert (=> b!2847082 m!3274645))

(assert (=> b!2847082 m!3274645))

(declare-fun m!3274647 () Bool)

(assert (=> b!2847082 m!3274647))

(declare-fun m!3274649 () Bool)

(assert (=> setNonEmpty!24955 m!3274649))

(declare-fun m!3274651 () Bool)

(assert (=> start!277248 m!3274651))

(declare-fun m!3274653 () Bool)

(assert (=> start!277248 m!3274653))

(declare-fun m!3274655 () Bool)

(assert (=> start!277248 m!3274655))

(declare-fun m!3274657 () Bool)

(assert (=> b!2847078 m!3274657))

(declare-fun m!3274659 () Bool)

(assert (=> b!2847069 m!3274659))

(declare-fun m!3274661 () Bool)

(assert (=> b!2847069 m!3274661))

(declare-fun m!3274663 () Bool)

(assert (=> b!2847076 m!3274663))

(check-sat (not b!2847078) (not b!2847082) (not b!2847079) b_and!208949 (not mapNonEmpty!18643) (not b!2847074) (not mapNonEmpty!18642) (not b_next!83409) (not setNonEmpty!24955) b_and!208943 b_and!208945 b_and!208947 (not b!2847083) (not b_next!83407) (not b_next!83405) (not start!277248) (not b_next!83411) (not b!2847076) (not b!2847069) (not b!2847077))
(check-sat b_and!208943 (not b_next!83407) (not b_next!83405) (not b_next!83411) b_and!208949 (not b_next!83409) b_and!208945 b_and!208947)
