; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296482 () Bool)

(assert start!296482)

(declare-fun b!3163112 () Bool)

(declare-fun b_free!83057 () Bool)

(declare-fun b_next!83761 () Bool)

(assert (=> b!3163112 (= b_free!83057 (not b_next!83761))))

(declare-fun tp!995886 () Bool)

(declare-fun b_and!209307 () Bool)

(assert (=> b!3163112 (= tp!995886 b_and!209307)))

(declare-fun b!3163115 () Bool)

(declare-fun b_free!83059 () Bool)

(declare-fun b_next!83763 () Bool)

(assert (=> b!3163115 (= b_free!83059 (not b_next!83763))))

(declare-fun tp!995891 () Bool)

(declare-fun b_and!209309 () Bool)

(assert (=> b!3163115 (= tp!995891 b_and!209309)))

(declare-fun res!1287513 () Bool)

(declare-fun e!1970534 () Bool)

(assert (=> start!296482 (=> (not res!1287513) (not e!1970534))))

(declare-datatypes ((C!19632 0))(
  ( (C!19633 (val!11852 Int)) )
))
(declare-datatypes ((Regex!9723 0))(
  ( (ElementMatch!9723 (c!531899 C!19632)) (Concat!15044 (regOne!19958 Regex!9723) (regTwo!19958 Regex!9723)) (EmptyExpr!9723) (Star!9723 (reg!10052 Regex!9723)) (EmptyLang!9723) (Union!9723 (regOne!19959 Regex!9723) (regTwo!19959 Regex!9723)) )
))
(declare-fun r!13156 () Regex!9723)

(declare-fun validRegex!4449 (Regex!9723) Bool)

(assert (=> start!296482 (= res!1287513 (validRegex!4449 r!13156))))

(assert (=> start!296482 e!1970534))

(declare-fun e!1970531 () Bool)

(assert (=> start!296482 e!1970531))

(declare-datatypes ((tuple2!34440 0))(
  ( (tuple2!34441 (_1!20352 Regex!9723) (_2!20352 C!19632)) )
))
(declare-datatypes ((tuple2!34442 0))(
  ( (tuple2!34443 (_1!20353 tuple2!34440) (_2!20353 Regex!9723)) )
))
(declare-datatypes ((array!14770 0))(
  ( (array!14771 (arr!6578 (Array (_ BitVec 32) (_ BitVec 64))) (size!26664 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4060 0))(
  ( (HashableExt!4059 (__x!22538 Int)) )
))
(declare-datatypes ((List!35553 0))(
  ( (Nil!35429) (Cons!35429 (h!40849 tuple2!34442) (t!234622 List!35553)) )
))
(declare-datatypes ((array!14772 0))(
  ( (array!14773 (arr!6579 (Array (_ BitVec 32) List!35553)) (size!26665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8288 0))(
  ( (LongMapFixedSize!8289 (defaultEntry!4529 Int) (mask!10799 (_ BitVec 32)) (extraKeys!4393 (_ BitVec 32)) (zeroValue!4403 List!35553) (minValue!4403 List!35553) (_size!8331 (_ BitVec 32)) (_keys!4444 array!14770) (_values!4425 array!14772) (_vacant!4205 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16385 0))(
  ( (Cell!16386 (v!35084 LongMapFixedSize!8288)) )
))
(declare-datatypes ((MutLongMap!4144 0))(
  ( (LongMap!4144 (underlying!8517 Cell!16385)) (MutLongMapExt!4143 (__x!22539 Int)) )
))
(declare-datatypes ((Cell!16387 0))(
  ( (Cell!16388 (v!35085 MutLongMap!4144)) )
))
(declare-datatypes ((MutableMap!4050 0))(
  ( (MutableMapExt!4049 (__x!22540 Int)) (HashMap!4050 (underlying!8518 Cell!16387) (hashF!6092 Hashable!4060) (_size!8332 (_ BitVec 32)) (defaultValue!4221 Int)) )
))
(declare-datatypes ((Cache!370 0))(
  ( (Cache!371 (cache!4191 MutableMap!4050)) )
))
(declare-fun cache!347 () Cache!370)

(declare-fun e!1970532 () Bool)

(declare-fun inv!48081 (Cache!370) Bool)

(assert (=> start!296482 (and (inv!48081 cache!347) e!1970532)))

(declare-fun tp_is_empty!17009 () Bool)

(assert (=> start!296482 tp_is_empty!17009))

(declare-fun mapNonEmpty!18799 () Bool)

(declare-fun mapRes!18799 () Bool)

(declare-fun tp!995897 () Bool)

(declare-fun tp!995890 () Bool)

(assert (=> mapNonEmpty!18799 (= mapRes!18799 (and tp!995897 tp!995890))))

(declare-fun mapRest!18799 () (Array (_ BitVec 32) List!35553))

(declare-fun mapKey!18799 () (_ BitVec 32))

(declare-fun mapValue!18799 () List!35553)

(assert (=> mapNonEmpty!18799 (= (arr!6579 (_values!4425 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) (store mapRest!18799 mapKey!18799 mapValue!18799))))

(declare-fun b!3163107 () Bool)

(declare-fun e!1970537 () Bool)

(declare-fun e!1970536 () Bool)

(assert (=> b!3163107 (= e!1970537 e!1970536)))

(declare-fun b!3163108 () Bool)

(declare-fun tp!995887 () Bool)

(declare-fun tp!995889 () Bool)

(assert (=> b!3163108 (= e!1970531 (and tp!995887 tp!995889))))

(declare-fun b!3163109 () Bool)

(declare-fun e!1970530 () Bool)

(declare-fun tp!995896 () Bool)

(assert (=> b!3163109 (= e!1970530 (and tp!995896 mapRes!18799))))

(declare-fun condMapEmpty!18799 () Bool)

(declare-fun mapDefault!18799 () List!35553)

(assert (=> b!3163109 (= condMapEmpty!18799 (= (arr!6579 (_values!4425 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) ((as const (Array (_ BitVec 32) List!35553)) mapDefault!18799)))))

(declare-fun b!3163110 () Bool)

(declare-fun res!1287516 () Bool)

(assert (=> b!3163110 (=> (not res!1287516) (not e!1970534))))

(declare-fun valid!3228 (Cache!370) Bool)

(assert (=> b!3163110 (= res!1287516 (valid!3228 cache!347))))

(declare-fun b!3163111 () Bool)

(declare-fun e!1970535 () Bool)

(assert (=> b!3163111 (= e!1970532 e!1970535)))

(declare-fun tp!995888 () Bool)

(declare-fun tp!995892 () Bool)

(declare-fun e!1970539 () Bool)

(declare-fun array_inv!4712 (array!14770) Bool)

(declare-fun array_inv!4713 (array!14772) Bool)

(assert (=> b!3163112 (= e!1970539 (and tp!995886 tp!995888 tp!995892 (array_inv!4712 (_keys!4444 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) (array_inv!4713 (_values!4425 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) e!1970530))))

(declare-fun mapIsEmpty!18799 () Bool)

(assert (=> mapIsEmpty!18799 mapRes!18799))

(declare-fun b!3163113 () Bool)

(assert (=> b!3163113 (= e!1970531 tp_is_empty!17009)))

(declare-fun b!3163114 () Bool)

(declare-fun res!1287515 () Bool)

(assert (=> b!3163114 (=> (not res!1287515) (not e!1970534))))

(declare-fun a!2409 () C!19632)

(get-info :version)

(declare-datatypes ((Option!6885 0))(
  ( (None!6884) (Some!6884 (v!35086 Regex!9723)) )
))
(declare-fun get!11218 (Cache!370 Regex!9723 C!19632) Option!6885)

(assert (=> b!3163114 (= res!1287515 (not ((_ is Some!6884) (get!11218 cache!347 r!13156 a!2409))))))

(declare-fun e!1970538 () Bool)

(assert (=> b!3163115 (= e!1970535 (and e!1970538 tp!995891))))

(declare-fun b!3163116 () Bool)

(assert (=> b!3163116 (= e!1970534 (not (validRegex!4449 (regOne!19958 r!13156))))))

(declare-fun b!3163117 () Bool)

(declare-fun res!1287514 () Bool)

(assert (=> b!3163117 (=> (not res!1287514) (not e!1970534))))

(declare-fun nullable!3336 (Regex!9723) Bool)

(assert (=> b!3163117 (= res!1287514 (not (nullable!3336 (regOne!19958 r!13156))))))

(declare-fun b!3163118 () Bool)

(declare-fun lt!1063421 () MutLongMap!4144)

(assert (=> b!3163118 (= e!1970538 (and e!1970537 ((_ is LongMap!4144) lt!1063421)))))

(assert (=> b!3163118 (= lt!1063421 (v!35085 (underlying!8518 (cache!4191 cache!347))))))

(declare-fun b!3163119 () Bool)

(declare-fun tp!995894 () Bool)

(declare-fun tp!995893 () Bool)

(assert (=> b!3163119 (= e!1970531 (and tp!995894 tp!995893))))

(declare-fun b!3163120 () Bool)

(declare-fun tp!995895 () Bool)

(assert (=> b!3163120 (= e!1970531 tp!995895)))

(declare-fun b!3163121 () Bool)

(assert (=> b!3163121 (= e!1970536 e!1970539)))

(declare-fun b!3163122 () Bool)

(declare-fun res!1287517 () Bool)

(assert (=> b!3163122 (=> (not res!1287517) (not e!1970534))))

(assert (=> b!3163122 (= res!1287517 (and (not ((_ is EmptyExpr!9723) r!13156)) (not ((_ is EmptyLang!9723) r!13156)) (not ((_ is ElementMatch!9723) r!13156)) (not ((_ is Union!9723) r!13156)) (not ((_ is Star!9723) r!13156))))))

(assert (= (and start!296482 res!1287513) b!3163110))

(assert (= (and b!3163110 res!1287516) b!3163114))

(assert (= (and b!3163114 res!1287515) b!3163122))

(assert (= (and b!3163122 res!1287517) b!3163117))

(assert (= (and b!3163117 res!1287514) b!3163116))

(assert (= (and start!296482 ((_ is ElementMatch!9723) r!13156)) b!3163113))

(assert (= (and start!296482 ((_ is Concat!15044) r!13156)) b!3163119))

(assert (= (and start!296482 ((_ is Star!9723) r!13156)) b!3163120))

(assert (= (and start!296482 ((_ is Union!9723) r!13156)) b!3163108))

(assert (= (and b!3163109 condMapEmpty!18799) mapIsEmpty!18799))

(assert (= (and b!3163109 (not condMapEmpty!18799)) mapNonEmpty!18799))

(assert (= b!3163112 b!3163109))

(assert (= b!3163121 b!3163112))

(assert (= b!3163107 b!3163121))

(assert (= (and b!3163118 ((_ is LongMap!4144) (v!35085 (underlying!8518 (cache!4191 cache!347))))) b!3163107))

(assert (= b!3163115 b!3163118))

(assert (= (and b!3163111 ((_ is HashMap!4050) (cache!4191 cache!347))) b!3163115))

(assert (= start!296482 b!3163111))

(declare-fun m!3426645 () Bool)

(assert (=> start!296482 m!3426645))

(declare-fun m!3426647 () Bool)

(assert (=> start!296482 m!3426647))

(declare-fun m!3426649 () Bool)

(assert (=> b!3163114 m!3426649))

(declare-fun m!3426651 () Bool)

(assert (=> b!3163116 m!3426651))

(declare-fun m!3426653 () Bool)

(assert (=> b!3163110 m!3426653))

(declare-fun m!3426655 () Bool)

(assert (=> b!3163112 m!3426655))

(declare-fun m!3426657 () Bool)

(assert (=> b!3163112 m!3426657))

(declare-fun m!3426659 () Bool)

(assert (=> b!3163117 m!3426659))

(declare-fun m!3426661 () Bool)

(assert (=> mapNonEmpty!18799 m!3426661))

(check-sat (not b!3163110) (not mapNonEmpty!18799) (not b!3163119) (not b!3163109) (not b_next!83763) (not b!3163112) (not b_next!83761) (not b!3163108) tp_is_empty!17009 b_and!209309 (not b!3163117) (not b!3163120) b_and!209307 (not b!3163116) (not b!3163114) (not start!296482))
(check-sat b_and!209309 b_and!209307 (not b_next!83761) (not b_next!83763))
(get-model)

(declare-fun bm!229138 () Bool)

(declare-fun call!229145 () Bool)

(declare-fun call!229144 () Bool)

(assert (=> bm!229138 (= call!229145 call!229144)))

(declare-fun b!3163141 () Bool)

(declare-fun e!1970560 () Bool)

(declare-fun e!1970556 () Bool)

(assert (=> b!3163141 (= e!1970560 e!1970556)))

(declare-fun c!531904 () Bool)

(assert (=> b!3163141 (= c!531904 ((_ is Star!9723) (regOne!19958 r!13156)))))

(declare-fun b!3163142 () Bool)

(declare-fun e!1970557 () Bool)

(assert (=> b!3163142 (= e!1970556 e!1970557)))

(declare-fun res!1287528 () Bool)

(assert (=> b!3163142 (= res!1287528 (not (nullable!3336 (reg!10052 (regOne!19958 r!13156)))))))

(assert (=> b!3163142 (=> (not res!1287528) (not e!1970557))))

(declare-fun d!868605 () Bool)

(declare-fun res!1287532 () Bool)

(assert (=> d!868605 (=> res!1287532 e!1970560)))

(assert (=> d!868605 (= res!1287532 ((_ is ElementMatch!9723) (regOne!19958 r!13156)))))

(assert (=> d!868605 (= (validRegex!4449 (regOne!19958 r!13156)) e!1970560)))

(declare-fun bm!229139 () Bool)

(declare-fun call!229143 () Bool)

(declare-fun c!531905 () Bool)

(assert (=> bm!229139 (= call!229143 (validRegex!4449 (ite c!531905 (regOne!19959 (regOne!19958 r!13156)) (regOne!19958 (regOne!19958 r!13156)))))))

(declare-fun b!3163143 () Bool)

(assert (=> b!3163143 (= e!1970557 call!229144)))

(declare-fun b!3163144 () Bool)

(declare-fun e!1970554 () Bool)

(assert (=> b!3163144 (= e!1970554 call!229145)))

(declare-fun b!3163145 () Bool)

(declare-fun e!1970558 () Bool)

(assert (=> b!3163145 (= e!1970558 e!1970554)))

(declare-fun res!1287530 () Bool)

(assert (=> b!3163145 (=> (not res!1287530) (not e!1970554))))

(assert (=> b!3163145 (= res!1287530 call!229143)))

(declare-fun b!3163146 () Bool)

(declare-fun res!1287531 () Bool)

(assert (=> b!3163146 (=> res!1287531 e!1970558)))

(assert (=> b!3163146 (= res!1287531 (not ((_ is Concat!15044) (regOne!19958 r!13156))))))

(declare-fun e!1970555 () Bool)

(assert (=> b!3163146 (= e!1970555 e!1970558)))

(declare-fun b!3163147 () Bool)

(declare-fun res!1287529 () Bool)

(declare-fun e!1970559 () Bool)

(assert (=> b!3163147 (=> (not res!1287529) (not e!1970559))))

(assert (=> b!3163147 (= res!1287529 call!229143)))

(assert (=> b!3163147 (= e!1970555 e!1970559)))

(declare-fun b!3163148 () Bool)

(assert (=> b!3163148 (= e!1970556 e!1970555)))

(assert (=> b!3163148 (= c!531905 ((_ is Union!9723) (regOne!19958 r!13156)))))

(declare-fun bm!229140 () Bool)

(assert (=> bm!229140 (= call!229144 (validRegex!4449 (ite c!531904 (reg!10052 (regOne!19958 r!13156)) (ite c!531905 (regTwo!19959 (regOne!19958 r!13156)) (regTwo!19958 (regOne!19958 r!13156))))))))

(declare-fun b!3163149 () Bool)

(assert (=> b!3163149 (= e!1970559 call!229145)))

(assert (= (and d!868605 (not res!1287532)) b!3163141))

(assert (= (and b!3163141 c!531904) b!3163142))

(assert (= (and b!3163141 (not c!531904)) b!3163148))

(assert (= (and b!3163142 res!1287528) b!3163143))

(assert (= (and b!3163148 c!531905) b!3163147))

(assert (= (and b!3163148 (not c!531905)) b!3163146))

(assert (= (and b!3163147 res!1287529) b!3163149))

(assert (= (and b!3163146 (not res!1287531)) b!3163145))

(assert (= (and b!3163145 res!1287530) b!3163144))

(assert (= (or b!3163147 b!3163145) bm!229139))

(assert (= (or b!3163149 b!3163144) bm!229138))

(assert (= (or b!3163143 bm!229138) bm!229140))

(declare-fun m!3426663 () Bool)

(assert (=> b!3163142 m!3426663))

(declare-fun m!3426665 () Bool)

(assert (=> bm!229139 m!3426665))

(declare-fun m!3426667 () Bool)

(assert (=> bm!229140 m!3426667))

(assert (=> b!3163116 d!868605))

(declare-fun d!868607 () Bool)

(assert (=> d!868607 (= (array_inv!4712 (_keys!4444 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) (bvsge (size!26664 (_keys!4444 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3163112 d!868607))

(declare-fun d!868609 () Bool)

(assert (=> d!868609 (= (array_inv!4713 (_values!4425 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) (bvsge (size!26665 (_values!4425 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3163112 d!868609))

(declare-fun d!868611 () Bool)

(declare-fun nullableFct!947 (Regex!9723) Bool)

(assert (=> d!868611 (= (nullable!3336 (regOne!19958 r!13156)) (nullableFct!947 (regOne!19958 r!13156)))))

(declare-fun bs!539463 () Bool)

(assert (= bs!539463 d!868611))

(declare-fun m!3426669 () Bool)

(assert (=> bs!539463 m!3426669))

(assert (=> b!3163117 d!868611))

(declare-fun bm!229141 () Bool)

(declare-fun call!229148 () Bool)

(declare-fun call!229147 () Bool)

(assert (=> bm!229141 (= call!229148 call!229147)))

(declare-fun b!3163150 () Bool)

(declare-fun e!1970567 () Bool)

(declare-fun e!1970563 () Bool)

(assert (=> b!3163150 (= e!1970567 e!1970563)))

(declare-fun c!531906 () Bool)

(assert (=> b!3163150 (= c!531906 ((_ is Star!9723) r!13156))))

(declare-fun b!3163151 () Bool)

(declare-fun e!1970564 () Bool)

(assert (=> b!3163151 (= e!1970563 e!1970564)))

(declare-fun res!1287533 () Bool)

(assert (=> b!3163151 (= res!1287533 (not (nullable!3336 (reg!10052 r!13156))))))

(assert (=> b!3163151 (=> (not res!1287533) (not e!1970564))))

(declare-fun d!868613 () Bool)

(declare-fun res!1287537 () Bool)

(assert (=> d!868613 (=> res!1287537 e!1970567)))

(assert (=> d!868613 (= res!1287537 ((_ is ElementMatch!9723) r!13156))))

(assert (=> d!868613 (= (validRegex!4449 r!13156) e!1970567)))

(declare-fun bm!229142 () Bool)

(declare-fun call!229146 () Bool)

(declare-fun c!531907 () Bool)

(assert (=> bm!229142 (= call!229146 (validRegex!4449 (ite c!531907 (regOne!19959 r!13156) (regOne!19958 r!13156))))))

(declare-fun b!3163152 () Bool)

(assert (=> b!3163152 (= e!1970564 call!229147)))

(declare-fun b!3163153 () Bool)

(declare-fun e!1970561 () Bool)

(assert (=> b!3163153 (= e!1970561 call!229148)))

(declare-fun b!3163154 () Bool)

(declare-fun e!1970565 () Bool)

(assert (=> b!3163154 (= e!1970565 e!1970561)))

(declare-fun res!1287535 () Bool)

(assert (=> b!3163154 (=> (not res!1287535) (not e!1970561))))

(assert (=> b!3163154 (= res!1287535 call!229146)))

(declare-fun b!3163155 () Bool)

(declare-fun res!1287536 () Bool)

(assert (=> b!3163155 (=> res!1287536 e!1970565)))

(assert (=> b!3163155 (= res!1287536 (not ((_ is Concat!15044) r!13156)))))

(declare-fun e!1970562 () Bool)

(assert (=> b!3163155 (= e!1970562 e!1970565)))

(declare-fun b!3163156 () Bool)

(declare-fun res!1287534 () Bool)

(declare-fun e!1970566 () Bool)

(assert (=> b!3163156 (=> (not res!1287534) (not e!1970566))))

(assert (=> b!3163156 (= res!1287534 call!229146)))

(assert (=> b!3163156 (= e!1970562 e!1970566)))

(declare-fun b!3163157 () Bool)

(assert (=> b!3163157 (= e!1970563 e!1970562)))

(assert (=> b!3163157 (= c!531907 ((_ is Union!9723) r!13156))))

(declare-fun bm!229143 () Bool)

(assert (=> bm!229143 (= call!229147 (validRegex!4449 (ite c!531906 (reg!10052 r!13156) (ite c!531907 (regTwo!19959 r!13156) (regTwo!19958 r!13156)))))))

(declare-fun b!3163158 () Bool)

(assert (=> b!3163158 (= e!1970566 call!229148)))

(assert (= (and d!868613 (not res!1287537)) b!3163150))

(assert (= (and b!3163150 c!531906) b!3163151))

(assert (= (and b!3163150 (not c!531906)) b!3163157))

(assert (= (and b!3163151 res!1287533) b!3163152))

(assert (= (and b!3163157 c!531907) b!3163156))

(assert (= (and b!3163157 (not c!531907)) b!3163155))

(assert (= (and b!3163156 res!1287534) b!3163158))

(assert (= (and b!3163155 (not res!1287536)) b!3163154))

(assert (= (and b!3163154 res!1287535) b!3163153))

(assert (= (or b!3163156 b!3163154) bm!229142))

(assert (= (or b!3163158 b!3163153) bm!229141))

(assert (= (or b!3163152 bm!229141) bm!229143))

(declare-fun m!3426671 () Bool)

(assert (=> b!3163151 m!3426671))

(declare-fun m!3426673 () Bool)

(assert (=> bm!229142 m!3426673))

(declare-fun m!3426675 () Bool)

(assert (=> bm!229143 m!3426675))

(assert (=> start!296482 d!868613))

(declare-fun d!868615 () Bool)

(declare-fun res!1287540 () Bool)

(declare-fun e!1970570 () Bool)

(assert (=> d!868615 (=> (not res!1287540) (not e!1970570))))

(assert (=> d!868615 (= res!1287540 ((_ is HashMap!4050) (cache!4191 cache!347)))))

(assert (=> d!868615 (= (inv!48081 cache!347) e!1970570)))

(declare-fun b!3163161 () Bool)

(declare-fun validCacheMap!50 (MutableMap!4050) Bool)

(assert (=> b!3163161 (= e!1970570 (validCacheMap!50 (cache!4191 cache!347)))))

(assert (= (and d!868615 res!1287540) b!3163161))

(declare-fun m!3426677 () Bool)

(assert (=> b!3163161 m!3426677))

(assert (=> start!296482 d!868615))

(declare-fun d!868617 () Bool)

(declare-fun e!1970575 () Bool)

(assert (=> d!868617 e!1970575))

(declare-fun res!1287543 () Bool)

(assert (=> d!868617 (=> res!1287543 e!1970575)))

(declare-fun lt!1063426 () Option!6885)

(declare-fun isEmpty!19752 (Option!6885) Bool)

(assert (=> d!868617 (= res!1287543 (isEmpty!19752 lt!1063426))))

(declare-fun e!1970576 () Option!6885)

(assert (=> d!868617 (= lt!1063426 e!1970576)))

(declare-fun c!531911 () Bool)

(declare-fun contains!6155 (MutableMap!4050 tuple2!34440) Bool)

(assert (=> d!868617 (= c!531911 (contains!6155 (cache!4191 cache!347) (tuple2!34441 r!13156 a!2409)))))

(assert (=> d!868617 (validRegex!4449 r!13156)))

(assert (=> d!868617 (= (get!11218 cache!347 r!13156 a!2409) lt!1063426)))

(declare-fun b!3163168 () Bool)

(declare-fun apply!7938 (MutableMap!4050 tuple2!34440) Regex!9723)

(assert (=> b!3163168 (= e!1970576 (Some!6884 (apply!7938 (cache!4191 cache!347) (tuple2!34441 r!13156 a!2409))))))

(declare-datatypes ((Unit!49784 0))(
  ( (Unit!49785) )
))
(declare-fun lt!1063427 () Unit!49784)

(declare-fun lemmaIfInCacheThenValid!50 (Cache!370 Regex!9723 C!19632) Unit!49784)

(assert (=> b!3163168 (= lt!1063427 (lemmaIfInCacheThenValid!50 cache!347 r!13156 a!2409))))

(declare-fun b!3163169 () Bool)

(assert (=> b!3163169 (= e!1970576 None!6884)))

(declare-fun b!3163170 () Bool)

(declare-fun get!11219 (Option!6885) Regex!9723)

(declare-fun derivativeStep!2885 (Regex!9723 C!19632) Regex!9723)

(assert (=> b!3163170 (= e!1970575 (= (get!11219 lt!1063426) (derivativeStep!2885 r!13156 a!2409)))))

(assert (= (and d!868617 c!531911) b!3163168))

(assert (= (and d!868617 (not c!531911)) b!3163169))

(assert (= (and d!868617 (not res!1287543)) b!3163170))

(declare-fun m!3426679 () Bool)

(assert (=> d!868617 m!3426679))

(declare-fun m!3426681 () Bool)

(assert (=> d!868617 m!3426681))

(assert (=> d!868617 m!3426645))

(declare-fun m!3426683 () Bool)

(assert (=> b!3163168 m!3426683))

(declare-fun m!3426685 () Bool)

(assert (=> b!3163168 m!3426685))

(declare-fun m!3426687 () Bool)

(assert (=> b!3163170 m!3426687))

(declare-fun m!3426689 () Bool)

(assert (=> b!3163170 m!3426689))

(assert (=> b!3163114 d!868617))

(declare-fun d!868619 () Bool)

(assert (=> d!868619 (= (valid!3228 cache!347) (validCacheMap!50 (cache!4191 cache!347)))))

(declare-fun bs!539464 () Bool)

(assert (= bs!539464 d!868619))

(assert (=> bs!539464 m!3426677))

(assert (=> b!3163110 d!868619))

(declare-fun mapNonEmpty!18802 () Bool)

(declare-fun mapRes!18802 () Bool)

(declare-fun tp!995917 () Bool)

(declare-fun e!1970581 () Bool)

(assert (=> mapNonEmpty!18802 (= mapRes!18802 (and tp!995917 e!1970581))))

(declare-fun mapRest!18802 () (Array (_ BitVec 32) List!35553))

(declare-fun mapKey!18802 () (_ BitVec 32))

(declare-fun mapValue!18802 () List!35553)

(assert (=> mapNonEmpty!18802 (= mapRest!18799 (store mapRest!18802 mapKey!18802 mapValue!18802))))

(declare-fun condMapEmpty!18802 () Bool)

(declare-fun mapDefault!18802 () List!35553)

(assert (=> mapNonEmpty!18799 (= condMapEmpty!18802 (= mapRest!18799 ((as const (Array (_ BitVec 32) List!35553)) mapDefault!18802)))))

(declare-fun e!1970582 () Bool)

(assert (=> mapNonEmpty!18799 (= tp!995897 (and e!1970582 mapRes!18802))))

(declare-fun tp!995918 () Bool)

(declare-fun tp!995912 () Bool)

(declare-fun tp!995916 () Bool)

(declare-fun b!3163177 () Bool)

(assert (=> b!3163177 (= e!1970581 (and tp!995918 tp_is_empty!17009 tp!995912 tp!995916))))

(declare-fun tp!995914 () Bool)

(declare-fun tp!995915 () Bool)

(declare-fun b!3163178 () Bool)

(declare-fun tp!995913 () Bool)

(assert (=> b!3163178 (= e!1970582 (and tp!995913 tp_is_empty!17009 tp!995915 tp!995914))))

(declare-fun mapIsEmpty!18802 () Bool)

(assert (=> mapIsEmpty!18802 mapRes!18802))

(assert (= (and mapNonEmpty!18799 condMapEmpty!18802) mapIsEmpty!18802))

(assert (= (and mapNonEmpty!18799 (not condMapEmpty!18802)) mapNonEmpty!18802))

(assert (= (and mapNonEmpty!18802 ((_ is Cons!35429) mapValue!18802)) b!3163177))

(assert (= (and mapNonEmpty!18799 ((_ is Cons!35429) mapDefault!18802)) b!3163178))

(declare-fun m!3426691 () Bool)

(assert (=> mapNonEmpty!18802 m!3426691))

(declare-fun e!1970585 () Bool)

(declare-fun tp!995925 () Bool)

(declare-fun tp!995927 () Bool)

(declare-fun b!3163183 () Bool)

(declare-fun tp!995926 () Bool)

(assert (=> b!3163183 (= e!1970585 (and tp!995925 tp_is_empty!17009 tp!995926 tp!995927))))

(assert (=> mapNonEmpty!18799 (= tp!995890 e!1970585)))

(assert (= (and mapNonEmpty!18799 ((_ is Cons!35429) mapValue!18799)) b!3163183))

(declare-fun b!3163184 () Bool)

(declare-fun tp!995930 () Bool)

(declare-fun tp!995929 () Bool)

(declare-fun e!1970586 () Bool)

(declare-fun tp!995928 () Bool)

(assert (=> b!3163184 (= e!1970586 (and tp!995928 tp_is_empty!17009 tp!995929 tp!995930))))

(assert (=> b!3163112 (= tp!995888 e!1970586)))

(assert (= (and b!3163112 ((_ is Cons!35429) (zeroValue!4403 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347)))))))) b!3163184))

(declare-fun tp!995932 () Bool)

(declare-fun e!1970587 () Bool)

(declare-fun b!3163185 () Bool)

(declare-fun tp!995931 () Bool)

(declare-fun tp!995933 () Bool)

(assert (=> b!3163185 (= e!1970587 (and tp!995931 tp_is_empty!17009 tp!995932 tp!995933))))

(assert (=> b!3163112 (= tp!995892 e!1970587)))

(assert (= (and b!3163112 ((_ is Cons!35429) (minValue!4403 (v!35084 (underlying!8517 (v!35085 (underlying!8518 (cache!4191 cache!347)))))))) b!3163185))

(declare-fun e!1970590 () Bool)

(assert (=> b!3163108 (= tp!995887 e!1970590)))

(declare-fun b!3163197 () Bool)

(declare-fun tp!995946 () Bool)

(declare-fun tp!995945 () Bool)

(assert (=> b!3163197 (= e!1970590 (and tp!995946 tp!995945))))

(declare-fun b!3163198 () Bool)

(declare-fun tp!995948 () Bool)

(assert (=> b!3163198 (= e!1970590 tp!995948)))

(declare-fun b!3163196 () Bool)

(assert (=> b!3163196 (= e!1970590 tp_is_empty!17009)))

(declare-fun b!3163199 () Bool)

(declare-fun tp!995944 () Bool)

(declare-fun tp!995947 () Bool)

(assert (=> b!3163199 (= e!1970590 (and tp!995944 tp!995947))))

(assert (= (and b!3163108 ((_ is ElementMatch!9723) (regOne!19959 r!13156))) b!3163196))

(assert (= (and b!3163108 ((_ is Concat!15044) (regOne!19959 r!13156))) b!3163197))

(assert (= (and b!3163108 ((_ is Star!9723) (regOne!19959 r!13156))) b!3163198))

(assert (= (and b!3163108 ((_ is Union!9723) (regOne!19959 r!13156))) b!3163199))

(declare-fun e!1970591 () Bool)

(assert (=> b!3163108 (= tp!995889 e!1970591)))

(declare-fun b!3163201 () Bool)

(declare-fun tp!995951 () Bool)

(declare-fun tp!995950 () Bool)

(assert (=> b!3163201 (= e!1970591 (and tp!995951 tp!995950))))

(declare-fun b!3163202 () Bool)

(declare-fun tp!995953 () Bool)

(assert (=> b!3163202 (= e!1970591 tp!995953)))

(declare-fun b!3163200 () Bool)

(assert (=> b!3163200 (= e!1970591 tp_is_empty!17009)))

(declare-fun b!3163203 () Bool)

(declare-fun tp!995949 () Bool)

(declare-fun tp!995952 () Bool)

(assert (=> b!3163203 (= e!1970591 (and tp!995949 tp!995952))))

(assert (= (and b!3163108 ((_ is ElementMatch!9723) (regTwo!19959 r!13156))) b!3163200))

(assert (= (and b!3163108 ((_ is Concat!15044) (regTwo!19959 r!13156))) b!3163201))

(assert (= (and b!3163108 ((_ is Star!9723) (regTwo!19959 r!13156))) b!3163202))

(assert (= (and b!3163108 ((_ is Union!9723) (regTwo!19959 r!13156))) b!3163203))

(declare-fun e!1970592 () Bool)

(declare-fun tp!995954 () Bool)

(declare-fun b!3163204 () Bool)

(declare-fun tp!995955 () Bool)

(declare-fun tp!995956 () Bool)

(assert (=> b!3163204 (= e!1970592 (and tp!995954 tp_is_empty!17009 tp!995955 tp!995956))))

(assert (=> b!3163109 (= tp!995896 e!1970592)))

(assert (= (and b!3163109 ((_ is Cons!35429) mapDefault!18799)) b!3163204))

(declare-fun e!1970593 () Bool)

(assert (=> b!3163119 (= tp!995894 e!1970593)))

(declare-fun b!3163206 () Bool)

(declare-fun tp!995959 () Bool)

(declare-fun tp!995958 () Bool)

(assert (=> b!3163206 (= e!1970593 (and tp!995959 tp!995958))))

(declare-fun b!3163207 () Bool)

(declare-fun tp!995961 () Bool)

(assert (=> b!3163207 (= e!1970593 tp!995961)))

(declare-fun b!3163205 () Bool)

(assert (=> b!3163205 (= e!1970593 tp_is_empty!17009)))

(declare-fun b!3163208 () Bool)

(declare-fun tp!995957 () Bool)

(declare-fun tp!995960 () Bool)

(assert (=> b!3163208 (= e!1970593 (and tp!995957 tp!995960))))

(assert (= (and b!3163119 ((_ is ElementMatch!9723) (regOne!19958 r!13156))) b!3163205))

(assert (= (and b!3163119 ((_ is Concat!15044) (regOne!19958 r!13156))) b!3163206))

(assert (= (and b!3163119 ((_ is Star!9723) (regOne!19958 r!13156))) b!3163207))

(assert (= (and b!3163119 ((_ is Union!9723) (regOne!19958 r!13156))) b!3163208))

(declare-fun e!1970594 () Bool)

(assert (=> b!3163119 (= tp!995893 e!1970594)))

(declare-fun b!3163210 () Bool)

(declare-fun tp!995964 () Bool)

(declare-fun tp!995963 () Bool)

(assert (=> b!3163210 (= e!1970594 (and tp!995964 tp!995963))))

(declare-fun b!3163211 () Bool)

(declare-fun tp!995966 () Bool)

(assert (=> b!3163211 (= e!1970594 tp!995966)))

(declare-fun b!3163209 () Bool)

(assert (=> b!3163209 (= e!1970594 tp_is_empty!17009)))

(declare-fun b!3163212 () Bool)

(declare-fun tp!995962 () Bool)

(declare-fun tp!995965 () Bool)

(assert (=> b!3163212 (= e!1970594 (and tp!995962 tp!995965))))

(assert (= (and b!3163119 ((_ is ElementMatch!9723) (regTwo!19958 r!13156))) b!3163209))

(assert (= (and b!3163119 ((_ is Concat!15044) (regTwo!19958 r!13156))) b!3163210))

(assert (= (and b!3163119 ((_ is Star!9723) (regTwo!19958 r!13156))) b!3163211))

(assert (= (and b!3163119 ((_ is Union!9723) (regTwo!19958 r!13156))) b!3163212))

(declare-fun e!1970595 () Bool)

(assert (=> b!3163120 (= tp!995895 e!1970595)))

(declare-fun b!3163214 () Bool)

(declare-fun tp!995969 () Bool)

(declare-fun tp!995968 () Bool)

(assert (=> b!3163214 (= e!1970595 (and tp!995969 tp!995968))))

(declare-fun b!3163215 () Bool)

(declare-fun tp!995971 () Bool)

(assert (=> b!3163215 (= e!1970595 tp!995971)))

(declare-fun b!3163213 () Bool)

(assert (=> b!3163213 (= e!1970595 tp_is_empty!17009)))

(declare-fun b!3163216 () Bool)

(declare-fun tp!995967 () Bool)

(declare-fun tp!995970 () Bool)

(assert (=> b!3163216 (= e!1970595 (and tp!995967 tp!995970))))

(assert (= (and b!3163120 ((_ is ElementMatch!9723) (reg!10052 r!13156))) b!3163213))

(assert (= (and b!3163120 ((_ is Concat!15044) (reg!10052 r!13156))) b!3163214))

(assert (= (and b!3163120 ((_ is Star!9723) (reg!10052 r!13156))) b!3163215))

(assert (= (and b!3163120 ((_ is Union!9723) (reg!10052 r!13156))) b!3163216))

(check-sat (not b!3163207) (not b!3163208) (not bm!229142) (not d!868617) (not b_next!83761) (not b!3163151) (not b!3163183) (not b!3163211) (not b!3163185) (not b!3163142) (not d!868611) (not b!3163202) (not b!3163184) (not b!3163197) (not b!3163170) (not bm!229143) (not b_next!83763) (not bm!229139) (not b!3163215) (not b!3163198) (not mapNonEmpty!18802) (not b!3163177) (not b!3163214) (not d!868619) (not b!3163210) (not b!3163203) (not b!3163216) (not b!3163161) tp_is_empty!17009 b_and!209309 b_and!209307 (not b!3163178) (not bm!229140) (not b!3163199) (not b!3163168) (not b!3163201) (not b!3163206) (not b!3163204) (not b!3163212))
(check-sat b_and!209309 b_and!209307 (not b_next!83761) (not b_next!83763))
