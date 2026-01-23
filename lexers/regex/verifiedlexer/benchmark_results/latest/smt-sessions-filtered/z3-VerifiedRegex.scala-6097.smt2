; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296720 () Bool)

(assert start!296720)

(declare-fun b!3166728 () Bool)

(declare-fun b_free!83145 () Bool)

(declare-fun b_next!83849 () Bool)

(assert (=> b!3166728 (= b_free!83145 (not b_next!83849))))

(declare-fun tp!998115 () Bool)

(declare-fun b_and!209411 () Bool)

(assert (=> b!3166728 (= tp!998115 b_and!209411)))

(declare-fun b!3166725 () Bool)

(declare-fun b_free!83147 () Bool)

(declare-fun b_next!83851 () Bool)

(assert (=> b!3166725 (= b_free!83147 (not b_next!83851))))

(declare-fun tp!998118 () Bool)

(declare-fun b_and!209413 () Bool)

(assert (=> b!3166725 (= tp!998118 b_and!209413)))

(declare-fun b!3166721 () Bool)

(declare-fun e!1972565 () Bool)

(declare-fun e!1972570 () Bool)

(declare-datatypes ((C!19676 0))(
  ( (C!19677 (val!11874 Int)) )
))
(declare-datatypes ((Regex!9745 0))(
  ( (ElementMatch!9745 (c!532568 C!19676)) (Concat!15066 (regOne!20002 Regex!9745) (regTwo!20002 Regex!9745)) (EmptyExpr!9745) (Star!9745 (reg!10074 Regex!9745)) (EmptyLang!9745) (Union!9745 (regOne!20003 Regex!9745) (regTwo!20003 Regex!9745)) )
))
(declare-datatypes ((tuple2!34568 0))(
  ( (tuple2!34569 (_1!20416 Regex!9745) (_2!20416 C!19676)) )
))
(declare-datatypes ((tuple2!34570 0))(
  ( (tuple2!34571 (_1!20417 tuple2!34568) (_2!20417 Regex!9745)) )
))
(declare-datatypes ((array!14874 0))(
  ( (array!14875 (arr!6622 (Array (_ BitVec 32) (_ BitVec 64))) (size!26708 (_ BitVec 32))) )
))
(declare-datatypes ((List!35579 0))(
  ( (Nil!35455) (Cons!35455 (h!40875 tuple2!34570) (t!234656 List!35579)) )
))
(declare-datatypes ((array!14876 0))(
  ( (array!14877 (arr!6623 (Array (_ BitVec 32) List!35579)) (size!26709 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8332 0))(
  ( (LongMapFixedSize!8333 (defaultEntry!4551 Int) (mask!10832 (_ BitVec 32)) (extraKeys!4415 (_ BitVec 32)) (zeroValue!4425 List!35579) (minValue!4425 List!35579) (_size!8375 (_ BitVec 32)) (_keys!4466 array!14874) (_values!4447 array!14876) (_vacant!4227 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16473 0))(
  ( (Cell!16474 (v!35151 LongMapFixedSize!8332)) )
))
(declare-datatypes ((MutLongMap!4166 0))(
  ( (LongMap!4166 (underlying!8561 Cell!16473)) (MutLongMapExt!4165 (__x!22604 Int)) )
))
(declare-fun lt!1064645 () MutLongMap!4166)

(get-info :version)

(assert (=> b!3166721 (= e!1972565 (and e!1972570 ((_ is LongMap!4166) lt!1064645)))))

(declare-datatypes ((Hashable!4082 0))(
  ( (HashableExt!4081 (__x!22605 Int)) )
))
(declare-datatypes ((Cell!16475 0))(
  ( (Cell!16476 (v!35152 MutLongMap!4166)) )
))
(declare-datatypes ((MutableMap!4072 0))(
  ( (MutableMapExt!4071 (__x!22606 Int)) (HashMap!4072 (underlying!8562 Cell!16475) (hashF!6114 Hashable!4082) (_size!8376 (_ BitVec 32)) (defaultValue!4243 Int)) )
))
(declare-datatypes ((Cache!414 0))(
  ( (Cache!415 (cache!4216 MutableMap!4072)) )
))
(declare-fun cache!347 () Cache!414)

(assert (=> b!3166721 (= lt!1064645 (v!35152 (underlying!8562 (cache!4216 cache!347))))))

(declare-fun mapNonEmpty!18893 () Bool)

(declare-fun mapRes!18893 () Bool)

(declare-fun tp!998114 () Bool)

(declare-fun tp!998119 () Bool)

(assert (=> mapNonEmpty!18893 (= mapRes!18893 (and tp!998114 tp!998119))))

(declare-fun mapRest!18893 () (Array (_ BitVec 32) List!35579))

(declare-fun mapValue!18893 () List!35579)

(declare-fun mapKey!18893 () (_ BitVec 32))

(assert (=> mapNonEmpty!18893 (= (arr!6623 (_values!4447 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) (store mapRest!18893 mapKey!18893 mapValue!18893))))

(declare-fun b!3166722 () Bool)

(declare-fun res!1288118 () Bool)

(declare-fun e!1972569 () Bool)

(assert (=> b!3166722 (=> (not res!1288118) (not e!1972569))))

(declare-fun r!13156 () Regex!9745)

(declare-fun nullable!3346 (Regex!9745) Bool)

(assert (=> b!3166722 (= res!1288118 (nullable!3346 (regOne!20002 r!13156)))))

(declare-fun b!3166723 () Bool)

(declare-fun e!1972564 () Bool)

(declare-fun tp!998117 () Bool)

(declare-fun tp!998110 () Bool)

(assert (=> b!3166723 (= e!1972564 (and tp!998117 tp!998110))))

(declare-fun res!1288122 () Bool)

(assert (=> start!296720 (=> (not res!1288122) (not e!1972569))))

(declare-fun validRegex!4464 (Regex!9745) Bool)

(assert (=> start!296720 (= res!1288122 (validRegex!4464 r!13156))))

(assert (=> start!296720 e!1972569))

(assert (=> start!296720 e!1972564))

(declare-fun e!1972568 () Bool)

(declare-fun inv!48129 (Cache!414) Bool)

(assert (=> start!296720 (and (inv!48129 cache!347) e!1972568)))

(declare-fun tp_is_empty!17053 () Bool)

(assert (=> start!296720 tp_is_empty!17053))

(declare-fun b!3166724 () Bool)

(declare-fun res!1288120 () Bool)

(assert (=> b!3166724 (=> (not res!1288120) (not e!1972569))))

(assert (=> b!3166724 (= res!1288120 (and (not ((_ is EmptyExpr!9745) r!13156)) (not ((_ is EmptyLang!9745) r!13156)) (not ((_ is ElementMatch!9745) r!13156)) (not ((_ is Union!9745) r!13156)) (not ((_ is Star!9745) r!13156))))))

(declare-fun e!1972566 () Bool)

(assert (=> b!3166725 (= e!1972566 (and e!1972565 tp!998118))))

(declare-fun b!3166726 () Bool)

(declare-fun e!1972561 () Bool)

(assert (=> b!3166726 (= e!1972570 e!1972561)))

(declare-fun b!3166727 () Bool)

(assert (=> b!3166727 (= e!1972564 tp_is_empty!17053)))

(declare-fun e!1972567 () Bool)

(declare-fun tp!998112 () Bool)

(declare-fun e!1972562 () Bool)

(declare-fun tp!998120 () Bool)

(declare-fun array_inv!4744 (array!14874) Bool)

(declare-fun array_inv!4745 (array!14876) Bool)

(assert (=> b!3166728 (= e!1972562 (and tp!998115 tp!998120 tp!998112 (array_inv!4744 (_keys!4466 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) (array_inv!4745 (_values!4447 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) e!1972567))))

(declare-fun b!3166729 () Bool)

(declare-fun tp!998113 () Bool)

(assert (=> b!3166729 (= e!1972564 tp!998113)))

(declare-fun b!3166730 () Bool)

(declare-fun RegexPrimitiveSize!131 (Regex!9745) Int)

(assert (=> b!3166730 (= e!1972569 (>= (RegexPrimitiveSize!131 (regOne!20002 r!13156)) (RegexPrimitiveSize!131 r!13156)))))

(declare-fun b!3166731 () Bool)

(declare-fun tp!998116 () Bool)

(assert (=> b!3166731 (= e!1972567 (and tp!998116 mapRes!18893))))

(declare-fun condMapEmpty!18893 () Bool)

(declare-fun mapDefault!18893 () List!35579)

(assert (=> b!3166731 (= condMapEmpty!18893 (= (arr!6623 (_values!4447 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) ((as const (Array (_ BitVec 32) List!35579)) mapDefault!18893)))))

(declare-fun b!3166732 () Bool)

(assert (=> b!3166732 (= e!1972561 e!1972562)))

(declare-fun b!3166733 () Bool)

(declare-fun res!1288121 () Bool)

(assert (=> b!3166733 (=> (not res!1288121) (not e!1972569))))

(declare-fun valid!3251 (Cache!414) Bool)

(assert (=> b!3166733 (= res!1288121 (valid!3251 cache!347))))

(declare-fun b!3166734 () Bool)

(assert (=> b!3166734 (= e!1972568 e!1972566)))

(declare-fun b!3166735 () Bool)

(declare-fun res!1288119 () Bool)

(assert (=> b!3166735 (=> (not res!1288119) (not e!1972569))))

(declare-fun a!2409 () C!19676)

(declare-datatypes ((Option!6908 0))(
  ( (None!6907) (Some!6907 (v!35153 Regex!9745)) )
))
(declare-fun get!11255 (Cache!414 Regex!9745 C!19676) Option!6908)

(assert (=> b!3166735 (= res!1288119 (not ((_ is Some!6907) (get!11255 cache!347 r!13156 a!2409))))))

(declare-fun mapIsEmpty!18893 () Bool)

(assert (=> mapIsEmpty!18893 mapRes!18893))

(declare-fun b!3166736 () Bool)

(declare-fun tp!998111 () Bool)

(declare-fun tp!998121 () Bool)

(assert (=> b!3166736 (= e!1972564 (and tp!998111 tp!998121))))

(assert (= (and start!296720 res!1288122) b!3166733))

(assert (= (and b!3166733 res!1288121) b!3166735))

(assert (= (and b!3166735 res!1288119) b!3166724))

(assert (= (and b!3166724 res!1288120) b!3166722))

(assert (= (and b!3166722 res!1288118) b!3166730))

(assert (= (and start!296720 ((_ is ElementMatch!9745) r!13156)) b!3166727))

(assert (= (and start!296720 ((_ is Concat!15066) r!13156)) b!3166736))

(assert (= (and start!296720 ((_ is Star!9745) r!13156)) b!3166729))

(assert (= (and start!296720 ((_ is Union!9745) r!13156)) b!3166723))

(assert (= (and b!3166731 condMapEmpty!18893) mapIsEmpty!18893))

(assert (= (and b!3166731 (not condMapEmpty!18893)) mapNonEmpty!18893))

(assert (= b!3166728 b!3166731))

(assert (= b!3166732 b!3166728))

(assert (= b!3166726 b!3166732))

(assert (= (and b!3166721 ((_ is LongMap!4166) (v!35152 (underlying!8562 (cache!4216 cache!347))))) b!3166726))

(assert (= b!3166725 b!3166721))

(assert (= (and b!3166734 ((_ is HashMap!4072) (cache!4216 cache!347))) b!3166725))

(assert (= start!296720 b!3166734))

(declare-fun m!3428242 () Bool)

(assert (=> start!296720 m!3428242))

(declare-fun m!3428244 () Bool)

(assert (=> start!296720 m!3428244))

(declare-fun m!3428246 () Bool)

(assert (=> b!3166730 m!3428246))

(declare-fun m!3428248 () Bool)

(assert (=> b!3166730 m!3428248))

(declare-fun m!3428250 () Bool)

(assert (=> b!3166722 m!3428250))

(declare-fun m!3428252 () Bool)

(assert (=> b!3166733 m!3428252))

(declare-fun m!3428254 () Bool)

(assert (=> b!3166728 m!3428254))

(declare-fun m!3428256 () Bool)

(assert (=> b!3166728 m!3428256))

(declare-fun m!3428258 () Bool)

(assert (=> mapNonEmpty!18893 m!3428258))

(declare-fun m!3428260 () Bool)

(assert (=> b!3166735 m!3428260))

(check-sat (not b!3166723) (not b!3166730) (not b!3166728) (not b_next!83851) (not b!3166722) b_and!209413 (not b_next!83849) (not start!296720) (not b!3166733) (not mapNonEmpty!18893) (not b!3166731) (not b!3166729) tp_is_empty!17053 (not b!3166736) b_and!209411 (not b!3166735))
(check-sat b_and!209413 b_and!209411 (not b_next!83849) (not b_next!83851))
(get-model)

(declare-fun b!3166755 () Bool)

(declare-fun e!1972591 () Bool)

(declare-fun e!1972587 () Bool)

(assert (=> b!3166755 (= e!1972591 e!1972587)))

(declare-fun c!532573 () Bool)

(assert (=> b!3166755 (= c!532573 ((_ is Union!9745) r!13156))))

(declare-fun d!868906 () Bool)

(declare-fun res!1288135 () Bool)

(declare-fun e!1972588 () Bool)

(assert (=> d!868906 (=> res!1288135 e!1972588)))

(assert (=> d!868906 (= res!1288135 ((_ is ElementMatch!9745) r!13156))))

(assert (=> d!868906 (= (validRegex!4464 r!13156) e!1972588)))

(declare-fun bm!229640 () Bool)

(declare-fun call!229647 () Bool)

(declare-fun call!229645 () Bool)

(assert (=> bm!229640 (= call!229647 call!229645)))

(declare-fun b!3166756 () Bool)

(assert (=> b!3166756 (= e!1972588 e!1972591)))

(declare-fun c!532574 () Bool)

(assert (=> b!3166756 (= c!532574 ((_ is Star!9745) r!13156))))

(declare-fun b!3166757 () Bool)

(declare-fun e!1972586 () Bool)

(declare-fun e!1972585 () Bool)

(assert (=> b!3166757 (= e!1972586 e!1972585)))

(declare-fun res!1288136 () Bool)

(assert (=> b!3166757 (=> (not res!1288136) (not e!1972585))))

(assert (=> b!3166757 (= res!1288136 call!229647)))

(declare-fun b!3166758 () Bool)

(declare-fun e!1972589 () Bool)

(assert (=> b!3166758 (= e!1972591 e!1972589)))

(declare-fun res!1288134 () Bool)

(assert (=> b!3166758 (= res!1288134 (not (nullable!3346 (reg!10074 r!13156))))))

(assert (=> b!3166758 (=> (not res!1288134) (not e!1972589))))

(declare-fun b!3166759 () Bool)

(assert (=> b!3166759 (= e!1972589 call!229645)))

(declare-fun b!3166760 () Bool)

(declare-fun res!1288137 () Bool)

(declare-fun e!1972590 () Bool)

(assert (=> b!3166760 (=> (not res!1288137) (not e!1972590))))

(assert (=> b!3166760 (= res!1288137 call!229647)))

(assert (=> b!3166760 (= e!1972587 e!1972590)))

(declare-fun bm!229641 () Bool)

(assert (=> bm!229641 (= call!229645 (validRegex!4464 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))

(declare-fun b!3166761 () Bool)

(declare-fun res!1288133 () Bool)

(assert (=> b!3166761 (=> res!1288133 e!1972586)))

(assert (=> b!3166761 (= res!1288133 (not ((_ is Concat!15066) r!13156)))))

(assert (=> b!3166761 (= e!1972587 e!1972586)))

(declare-fun bm!229642 () Bool)

(declare-fun call!229646 () Bool)

(assert (=> bm!229642 (= call!229646 (validRegex!4464 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))

(declare-fun b!3166762 () Bool)

(assert (=> b!3166762 (= e!1972585 call!229646)))

(declare-fun b!3166763 () Bool)

(assert (=> b!3166763 (= e!1972590 call!229646)))

(assert (= (and d!868906 (not res!1288135)) b!3166756))

(assert (= (and b!3166756 c!532574) b!3166758))

(assert (= (and b!3166756 (not c!532574)) b!3166755))

(assert (= (and b!3166758 res!1288134) b!3166759))

(assert (= (and b!3166755 c!532573) b!3166760))

(assert (= (and b!3166755 (not c!532573)) b!3166761))

(assert (= (and b!3166760 res!1288137) b!3166763))

(assert (= (and b!3166761 (not res!1288133)) b!3166757))

(assert (= (and b!3166757 res!1288136) b!3166762))

(assert (= (or b!3166760 b!3166757) bm!229640))

(assert (= (or b!3166763 b!3166762) bm!229642))

(assert (= (or b!3166759 bm!229640) bm!229641))

(declare-fun m!3428262 () Bool)

(assert (=> b!3166758 m!3428262))

(declare-fun m!3428264 () Bool)

(assert (=> bm!229641 m!3428264))

(declare-fun m!3428266 () Bool)

(assert (=> bm!229642 m!3428266))

(assert (=> start!296720 d!868906))

(declare-fun d!868908 () Bool)

(declare-fun res!1288140 () Bool)

(declare-fun e!1972594 () Bool)

(assert (=> d!868908 (=> (not res!1288140) (not e!1972594))))

(assert (=> d!868908 (= res!1288140 ((_ is HashMap!4072) (cache!4216 cache!347)))))

(assert (=> d!868908 (= (inv!48129 cache!347) e!1972594)))

(declare-fun b!3166766 () Bool)

(declare-fun validCacheMap!60 (MutableMap!4072) Bool)

(assert (=> b!3166766 (= e!1972594 (validCacheMap!60 (cache!4216 cache!347)))))

(assert (= (and d!868908 res!1288140) b!3166766))

(declare-fun m!3428268 () Bool)

(assert (=> b!3166766 m!3428268))

(assert (=> start!296720 d!868908))

(declare-fun d!868910 () Bool)

(assert (=> d!868910 (= (array_inv!4744 (_keys!4466 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) (bvsge (size!26708 (_keys!4466 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3166728 d!868910))

(declare-fun d!868912 () Bool)

(assert (=> d!868912 (= (array_inv!4745 (_values!4447 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) (bvsge (size!26709 (_values!4447 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3166728 d!868912))

(declare-fun d!868914 () Bool)

(assert (=> d!868914 (= (valid!3251 cache!347) (validCacheMap!60 (cache!4216 cache!347)))))

(declare-fun bs!539531 () Bool)

(assert (= bs!539531 d!868914))

(assert (=> bs!539531 m!3428268))

(assert (=> b!3166733 d!868914))

(declare-fun d!868916 () Bool)

(declare-fun nullableFct!953 (Regex!9745) Bool)

(assert (=> d!868916 (= (nullable!3346 (regOne!20002 r!13156)) (nullableFct!953 (regOne!20002 r!13156)))))

(declare-fun bs!539532 () Bool)

(assert (= bs!539532 d!868916))

(declare-fun m!3428270 () Bool)

(assert (=> bs!539532 m!3428270))

(assert (=> b!3166722 d!868916))

(declare-fun d!868918 () Bool)

(declare-fun lt!1064648 () Int)

(assert (=> d!868918 (>= lt!1064648 0)))

(declare-fun e!1972605 () Int)

(assert (=> d!868918 (= lt!1064648 e!1972605)))

(declare-fun c!532588 () Bool)

(assert (=> d!868918 (= c!532588 ((_ is ElementMatch!9745) (regOne!20002 r!13156)))))

(assert (=> d!868918 (= (RegexPrimitiveSize!131 (regOne!20002 r!13156)) lt!1064648)))

(declare-fun b!3166787 () Bool)

(declare-fun e!1972609 () Int)

(declare-fun call!229656 () Int)

(declare-fun call!229655 () Int)

(assert (=> b!3166787 (= e!1972609 (+ 1 call!229656 call!229655))))

(declare-fun bm!229649 () Bool)

(declare-fun c!532587 () Bool)

(assert (=> bm!229649 (= call!229656 (RegexPrimitiveSize!131 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(declare-fun bm!229650 () Bool)

(declare-fun c!532589 () Bool)

(declare-fun call!229654 () Int)

(assert (=> bm!229650 (= call!229654 (RegexPrimitiveSize!131 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(declare-fun bm!229651 () Bool)

(assert (=> bm!229651 (= call!229655 call!229654)))

(declare-fun b!3166788 () Bool)

(assert (=> b!3166788 (= e!1972605 1)))

(declare-fun b!3166789 () Bool)

(declare-fun c!532585 () Bool)

(assert (=> b!3166789 (= c!532585 ((_ is EmptyLang!9745) (regOne!20002 r!13156)))))

(declare-fun e!1972607 () Int)

(assert (=> b!3166789 (= e!1972607 e!1972609)))

(declare-fun b!3166790 () Bool)

(declare-fun e!1972608 () Int)

(assert (=> b!3166790 (= e!1972608 e!1972607)))

(assert (=> b!3166790 (= c!532589 ((_ is Star!9745) (regOne!20002 r!13156)))))

(declare-fun b!3166791 () Bool)

(assert (=> b!3166791 (= e!1972609 0)))

(declare-fun b!3166792 () Bool)

(assert (=> b!3166792 (= e!1972607 (+ 1 call!229655))))

(declare-fun b!3166793 () Bool)

(assert (=> b!3166793 (= e!1972608 0)))

(declare-fun b!3166794 () Bool)

(declare-fun e!1972606 () Int)

(assert (=> b!3166794 (= e!1972605 e!1972606)))

(assert (=> b!3166794 (= c!532587 ((_ is Concat!15066) (regOne!20002 r!13156)))))

(declare-fun b!3166795 () Bool)

(declare-fun c!532586 () Bool)

(assert (=> b!3166795 (= c!532586 ((_ is EmptyExpr!9745) (regOne!20002 r!13156)))))

(assert (=> b!3166795 (= e!1972606 e!1972608)))

(declare-fun b!3166796 () Bool)

(assert (=> b!3166796 (= e!1972606 (+ 1 call!229654 call!229656))))

(assert (= (and d!868918 c!532588) b!3166788))

(assert (= (and d!868918 (not c!532588)) b!3166794))

(assert (= (and b!3166794 c!532587) b!3166796))

(assert (= (and b!3166794 (not c!532587)) b!3166795))

(assert (= (and b!3166795 c!532586) b!3166793))

(assert (= (and b!3166795 (not c!532586)) b!3166790))

(assert (= (and b!3166790 c!532589) b!3166792))

(assert (= (and b!3166790 (not c!532589)) b!3166789))

(assert (= (and b!3166789 c!532585) b!3166791))

(assert (= (and b!3166789 (not c!532585)) b!3166787))

(assert (= (or b!3166792 b!3166787) bm!229651))

(assert (= (or b!3166796 b!3166787) bm!229649))

(assert (= (or b!3166796 bm!229651) bm!229650))

(declare-fun m!3428272 () Bool)

(assert (=> bm!229649 m!3428272))

(declare-fun m!3428274 () Bool)

(assert (=> bm!229650 m!3428274))

(assert (=> b!3166730 d!868918))

(declare-fun d!868920 () Bool)

(declare-fun lt!1064649 () Int)

(assert (=> d!868920 (>= lt!1064649 0)))

(declare-fun e!1972610 () Int)

(assert (=> d!868920 (= lt!1064649 e!1972610)))

(declare-fun c!532593 () Bool)

(assert (=> d!868920 (= c!532593 ((_ is ElementMatch!9745) r!13156))))

(assert (=> d!868920 (= (RegexPrimitiveSize!131 r!13156) lt!1064649)))

(declare-fun b!3166797 () Bool)

(declare-fun e!1972614 () Int)

(declare-fun call!229659 () Int)

(declare-fun call!229658 () Int)

(assert (=> b!3166797 (= e!1972614 (+ 1 call!229659 call!229658))))

(declare-fun bm!229652 () Bool)

(declare-fun c!532592 () Bool)

(assert (=> bm!229652 (= call!229659 (RegexPrimitiveSize!131 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(declare-fun call!229657 () Int)

(declare-fun c!532594 () Bool)

(declare-fun bm!229653 () Bool)

(assert (=> bm!229653 (= call!229657 (RegexPrimitiveSize!131 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(declare-fun bm!229654 () Bool)

(assert (=> bm!229654 (= call!229658 call!229657)))

(declare-fun b!3166798 () Bool)

(assert (=> b!3166798 (= e!1972610 1)))

(declare-fun b!3166799 () Bool)

(declare-fun c!532590 () Bool)

(assert (=> b!3166799 (= c!532590 ((_ is EmptyLang!9745) r!13156))))

(declare-fun e!1972612 () Int)

(assert (=> b!3166799 (= e!1972612 e!1972614)))

(declare-fun b!3166800 () Bool)

(declare-fun e!1972613 () Int)

(assert (=> b!3166800 (= e!1972613 e!1972612)))

(assert (=> b!3166800 (= c!532594 ((_ is Star!9745) r!13156))))

(declare-fun b!3166801 () Bool)

(assert (=> b!3166801 (= e!1972614 0)))

(declare-fun b!3166802 () Bool)

(assert (=> b!3166802 (= e!1972612 (+ 1 call!229658))))

(declare-fun b!3166803 () Bool)

(assert (=> b!3166803 (= e!1972613 0)))

(declare-fun b!3166804 () Bool)

(declare-fun e!1972611 () Int)

(assert (=> b!3166804 (= e!1972610 e!1972611)))

(assert (=> b!3166804 (= c!532592 ((_ is Concat!15066) r!13156))))

(declare-fun b!3166805 () Bool)

(declare-fun c!532591 () Bool)

(assert (=> b!3166805 (= c!532591 ((_ is EmptyExpr!9745) r!13156))))

(assert (=> b!3166805 (= e!1972611 e!1972613)))

(declare-fun b!3166806 () Bool)

(assert (=> b!3166806 (= e!1972611 (+ 1 call!229657 call!229659))))

(assert (= (and d!868920 c!532593) b!3166798))

(assert (= (and d!868920 (not c!532593)) b!3166804))

(assert (= (and b!3166804 c!532592) b!3166806))

(assert (= (and b!3166804 (not c!532592)) b!3166805))

(assert (= (and b!3166805 c!532591) b!3166803))

(assert (= (and b!3166805 (not c!532591)) b!3166800))

(assert (= (and b!3166800 c!532594) b!3166802))

(assert (= (and b!3166800 (not c!532594)) b!3166799))

(assert (= (and b!3166799 c!532590) b!3166801))

(assert (= (and b!3166799 (not c!532590)) b!3166797))

(assert (= (or b!3166802 b!3166797) bm!229654))

(assert (= (or b!3166806 b!3166797) bm!229652))

(assert (= (or b!3166806 bm!229654) bm!229653))

(declare-fun m!3428276 () Bool)

(assert (=> bm!229652 m!3428276))

(declare-fun m!3428278 () Bool)

(assert (=> bm!229653 m!3428278))

(assert (=> b!3166730 d!868920))

(declare-fun d!868922 () Bool)

(declare-fun e!1972620 () Bool)

(assert (=> d!868922 e!1972620))

(declare-fun res!1288143 () Bool)

(assert (=> d!868922 (=> res!1288143 e!1972620)))

(declare-fun lt!1064654 () Option!6908)

(declare-fun isEmpty!19759 (Option!6908) Bool)

(assert (=> d!868922 (= res!1288143 (isEmpty!19759 lt!1064654))))

(declare-fun e!1972619 () Option!6908)

(assert (=> d!868922 (= lt!1064654 e!1972619)))

(declare-fun c!532598 () Bool)

(declare-fun contains!6178 (MutableMap!4072 tuple2!34568) Bool)

(assert (=> d!868922 (= c!532598 (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409)))))

(assert (=> d!868922 (validRegex!4464 r!13156)))

(assert (=> d!868922 (= (get!11255 cache!347 r!13156 a!2409) lt!1064654)))

(declare-fun b!3166813 () Bool)

(declare-fun apply!7953 (MutableMap!4072 tuple2!34568) Regex!9745)

(assert (=> b!3166813 (= e!1972619 (Some!6907 (apply!7953 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409))))))

(declare-datatypes ((Unit!49835 0))(
  ( (Unit!49836) )
))
(declare-fun lt!1064655 () Unit!49835)

(declare-fun lemmaIfInCacheThenValid!57 (Cache!414 Regex!9745 C!19676) Unit!49835)

(assert (=> b!3166813 (= lt!1064655 (lemmaIfInCacheThenValid!57 cache!347 r!13156 a!2409))))

(declare-fun b!3166814 () Bool)

(assert (=> b!3166814 (= e!1972619 None!6907)))

(declare-fun b!3166815 () Bool)

(declare-fun get!11256 (Option!6908) Regex!9745)

(declare-fun derivativeStep!2893 (Regex!9745 C!19676) Regex!9745)

(assert (=> b!3166815 (= e!1972620 (= (get!11256 lt!1064654) (derivativeStep!2893 r!13156 a!2409)))))

(assert (= (and d!868922 c!532598) b!3166813))

(assert (= (and d!868922 (not c!532598)) b!3166814))

(assert (= (and d!868922 (not res!1288143)) b!3166815))

(declare-fun m!3428280 () Bool)

(assert (=> d!868922 m!3428280))

(declare-fun m!3428282 () Bool)

(assert (=> d!868922 m!3428282))

(assert (=> d!868922 m!3428242))

(declare-fun m!3428284 () Bool)

(assert (=> b!3166813 m!3428284))

(declare-fun m!3428286 () Bool)

(assert (=> b!3166813 m!3428286))

(declare-fun m!3428288 () Bool)

(assert (=> b!3166815 m!3428288))

(declare-fun m!3428290 () Bool)

(assert (=> b!3166815 m!3428290))

(assert (=> b!3166735 d!868922))

(declare-fun b!3166829 () Bool)

(declare-fun e!1972623 () Bool)

(declare-fun tp!998136 () Bool)

(declare-fun tp!998133 () Bool)

(assert (=> b!3166829 (= e!1972623 (and tp!998136 tp!998133))))

(declare-fun b!3166826 () Bool)

(assert (=> b!3166826 (= e!1972623 tp_is_empty!17053)))

(declare-fun b!3166828 () Bool)

(declare-fun tp!998134 () Bool)

(assert (=> b!3166828 (= e!1972623 tp!998134)))

(declare-fun b!3166827 () Bool)

(declare-fun tp!998132 () Bool)

(declare-fun tp!998135 () Bool)

(assert (=> b!3166827 (= e!1972623 (and tp!998132 tp!998135))))

(assert (=> b!3166723 (= tp!998117 e!1972623)))

(assert (= (and b!3166723 ((_ is ElementMatch!9745) (regOne!20003 r!13156))) b!3166826))

(assert (= (and b!3166723 ((_ is Concat!15066) (regOne!20003 r!13156))) b!3166827))

(assert (= (and b!3166723 ((_ is Star!9745) (regOne!20003 r!13156))) b!3166828))

(assert (= (and b!3166723 ((_ is Union!9745) (regOne!20003 r!13156))) b!3166829))

(declare-fun b!3166833 () Bool)

(declare-fun e!1972624 () Bool)

(declare-fun tp!998141 () Bool)

(declare-fun tp!998138 () Bool)

(assert (=> b!3166833 (= e!1972624 (and tp!998141 tp!998138))))

(declare-fun b!3166830 () Bool)

(assert (=> b!3166830 (= e!1972624 tp_is_empty!17053)))

(declare-fun b!3166832 () Bool)

(declare-fun tp!998139 () Bool)

(assert (=> b!3166832 (= e!1972624 tp!998139)))

(declare-fun b!3166831 () Bool)

(declare-fun tp!998137 () Bool)

(declare-fun tp!998140 () Bool)

(assert (=> b!3166831 (= e!1972624 (and tp!998137 tp!998140))))

(assert (=> b!3166723 (= tp!998110 e!1972624)))

(assert (= (and b!3166723 ((_ is ElementMatch!9745) (regTwo!20003 r!13156))) b!3166830))

(assert (= (and b!3166723 ((_ is Concat!15066) (regTwo!20003 r!13156))) b!3166831))

(assert (= (and b!3166723 ((_ is Star!9745) (regTwo!20003 r!13156))) b!3166832))

(assert (= (and b!3166723 ((_ is Union!9745) (regTwo!20003 r!13156))) b!3166833))

(declare-fun tp!998148 () Bool)

(declare-fun tp!998150 () Bool)

(declare-fun tp!998149 () Bool)

(declare-fun b!3166838 () Bool)

(declare-fun e!1972627 () Bool)

(assert (=> b!3166838 (= e!1972627 (and tp!998148 tp_is_empty!17053 tp!998149 tp!998150))))

(assert (=> b!3166728 (= tp!998120 e!1972627)))

(assert (= (and b!3166728 ((_ is Cons!35455) (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))) b!3166838))

(declare-fun tp!998152 () Bool)

(declare-fun tp!998151 () Bool)

(declare-fun b!3166839 () Bool)

(declare-fun tp!998153 () Bool)

(declare-fun e!1972628 () Bool)

(assert (=> b!3166839 (= e!1972628 (and tp!998151 tp_is_empty!17053 tp!998152 tp!998153))))

(assert (=> b!3166728 (= tp!998112 e!1972628)))

(assert (= (and b!3166728 ((_ is Cons!35455) (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))) b!3166839))

(declare-fun mapNonEmpty!18896 () Bool)

(declare-fun mapRes!18896 () Bool)

(declare-fun tp!998171 () Bool)

(declare-fun e!1972634 () Bool)

(assert (=> mapNonEmpty!18896 (= mapRes!18896 (and tp!998171 e!1972634))))

(declare-fun mapRest!18896 () (Array (_ BitVec 32) List!35579))

(declare-fun mapKey!18896 () (_ BitVec 32))

(declare-fun mapValue!18896 () List!35579)

(assert (=> mapNonEmpty!18896 (= mapRest!18893 (store mapRest!18896 mapKey!18896 mapValue!18896))))

(declare-fun b!3166846 () Bool)

(declare-fun tp!998169 () Bool)

(declare-fun tp!998174 () Bool)

(declare-fun tp!998173 () Bool)

(assert (=> b!3166846 (= e!1972634 (and tp!998174 tp_is_empty!17053 tp!998173 tp!998169))))

(declare-fun condMapEmpty!18896 () Bool)

(declare-fun mapDefault!18896 () List!35579)

(assert (=> mapNonEmpty!18893 (= condMapEmpty!18896 (= mapRest!18893 ((as const (Array (_ BitVec 32) List!35579)) mapDefault!18896)))))

(declare-fun e!1972633 () Bool)

(assert (=> mapNonEmpty!18893 (= tp!998114 (and e!1972633 mapRes!18896))))

(declare-fun tp!998172 () Bool)

(declare-fun tp!998170 () Bool)

(declare-fun b!3166847 () Bool)

(declare-fun tp!998168 () Bool)

(assert (=> b!3166847 (= e!1972633 (and tp!998170 tp_is_empty!17053 tp!998172 tp!998168))))

(declare-fun mapIsEmpty!18896 () Bool)

(assert (=> mapIsEmpty!18896 mapRes!18896))

(assert (= (and mapNonEmpty!18893 condMapEmpty!18896) mapIsEmpty!18896))

(assert (= (and mapNonEmpty!18893 (not condMapEmpty!18896)) mapNonEmpty!18896))

(assert (= (and mapNonEmpty!18896 ((_ is Cons!35455) mapValue!18896)) b!3166846))

(assert (= (and mapNonEmpty!18893 ((_ is Cons!35455) mapDefault!18896)) b!3166847))

(declare-fun m!3428292 () Bool)

(assert (=> mapNonEmpty!18896 m!3428292))

(declare-fun tp!998176 () Bool)

(declare-fun b!3166848 () Bool)

(declare-fun tp!998177 () Bool)

(declare-fun e!1972635 () Bool)

(declare-fun tp!998175 () Bool)

(assert (=> b!3166848 (= e!1972635 (and tp!998175 tp_is_empty!17053 tp!998176 tp!998177))))

(assert (=> mapNonEmpty!18893 (= tp!998119 e!1972635)))

(assert (= (and mapNonEmpty!18893 ((_ is Cons!35455) mapValue!18893)) b!3166848))

(declare-fun b!3166852 () Bool)

(declare-fun e!1972636 () Bool)

(declare-fun tp!998182 () Bool)

(declare-fun tp!998179 () Bool)

(assert (=> b!3166852 (= e!1972636 (and tp!998182 tp!998179))))

(declare-fun b!3166849 () Bool)

(assert (=> b!3166849 (= e!1972636 tp_is_empty!17053)))

(declare-fun b!3166851 () Bool)

(declare-fun tp!998180 () Bool)

(assert (=> b!3166851 (= e!1972636 tp!998180)))

(declare-fun b!3166850 () Bool)

(declare-fun tp!998178 () Bool)

(declare-fun tp!998181 () Bool)

(assert (=> b!3166850 (= e!1972636 (and tp!998178 tp!998181))))

(assert (=> b!3166736 (= tp!998111 e!1972636)))

(assert (= (and b!3166736 ((_ is ElementMatch!9745) (regOne!20002 r!13156))) b!3166849))

(assert (= (and b!3166736 ((_ is Concat!15066) (regOne!20002 r!13156))) b!3166850))

(assert (= (and b!3166736 ((_ is Star!9745) (regOne!20002 r!13156))) b!3166851))

(assert (= (and b!3166736 ((_ is Union!9745) (regOne!20002 r!13156))) b!3166852))

(declare-fun b!3166856 () Bool)

(declare-fun e!1972637 () Bool)

(declare-fun tp!998187 () Bool)

(declare-fun tp!998184 () Bool)

(assert (=> b!3166856 (= e!1972637 (and tp!998187 tp!998184))))

(declare-fun b!3166853 () Bool)

(assert (=> b!3166853 (= e!1972637 tp_is_empty!17053)))

(declare-fun b!3166855 () Bool)

(declare-fun tp!998185 () Bool)

(assert (=> b!3166855 (= e!1972637 tp!998185)))

(declare-fun b!3166854 () Bool)

(declare-fun tp!998183 () Bool)

(declare-fun tp!998186 () Bool)

(assert (=> b!3166854 (= e!1972637 (and tp!998183 tp!998186))))

(assert (=> b!3166736 (= tp!998121 e!1972637)))

(assert (= (and b!3166736 ((_ is ElementMatch!9745) (regTwo!20002 r!13156))) b!3166853))

(assert (= (and b!3166736 ((_ is Concat!15066) (regTwo!20002 r!13156))) b!3166854))

(assert (= (and b!3166736 ((_ is Star!9745) (regTwo!20002 r!13156))) b!3166855))

(assert (= (and b!3166736 ((_ is Union!9745) (regTwo!20002 r!13156))) b!3166856))

(declare-fun e!1972638 () Bool)

(declare-fun tp!998190 () Bool)

(declare-fun tp!998189 () Bool)

(declare-fun b!3166857 () Bool)

(declare-fun tp!998188 () Bool)

(assert (=> b!3166857 (= e!1972638 (and tp!998188 tp_is_empty!17053 tp!998189 tp!998190))))

(assert (=> b!3166731 (= tp!998116 e!1972638)))

(assert (= (and b!3166731 ((_ is Cons!35455) mapDefault!18893)) b!3166857))

(declare-fun b!3166861 () Bool)

(declare-fun e!1972639 () Bool)

(declare-fun tp!998195 () Bool)

(declare-fun tp!998192 () Bool)

(assert (=> b!3166861 (= e!1972639 (and tp!998195 tp!998192))))

(declare-fun b!3166858 () Bool)

(assert (=> b!3166858 (= e!1972639 tp_is_empty!17053)))

(declare-fun b!3166860 () Bool)

(declare-fun tp!998193 () Bool)

(assert (=> b!3166860 (= e!1972639 tp!998193)))

(declare-fun b!3166859 () Bool)

(declare-fun tp!998191 () Bool)

(declare-fun tp!998194 () Bool)

(assert (=> b!3166859 (= e!1972639 (and tp!998191 tp!998194))))

(assert (=> b!3166729 (= tp!998113 e!1972639)))

(assert (= (and b!3166729 ((_ is ElementMatch!9745) (reg!10074 r!13156))) b!3166858))

(assert (= (and b!3166729 ((_ is Concat!15066) (reg!10074 r!13156))) b!3166859))

(assert (= (and b!3166729 ((_ is Star!9745) (reg!10074 r!13156))) b!3166860))

(assert (= (and b!3166729 ((_ is Union!9745) (reg!10074 r!13156))) b!3166861))

(check-sat (not b!3166848) (not b!3166815) (not b!3166813) tp_is_empty!17053 (not b_next!83851) (not b!3166839) (not b!3166852) (not b!3166854) (not b!3166838) (not bm!229649) (not b!3166856) (not bm!229653) (not b!3166857) (not b!3166850) (not bm!229650) (not b!3166859) (not b!3166860) (not b!3166829) (not bm!229641) (not b!3166827) (not b!3166851) (not b!3166846) (not b!3166766) (not b!3166832) (not b!3166828) (not bm!229652) b_and!209411 (not bm!229642) (not b!3166855) b_and!209413 (not d!868916) (not d!868922) (not b!3166861) (not b_next!83849) (not b!3166831) (not b!3166847) (not b!3166758) (not mapNonEmpty!18896) (not b!3166833) (not d!868914))
(check-sat b_and!209413 b_and!209411 (not b_next!83849) (not b_next!83851))
(get-model)

(declare-fun d!868924 () Bool)

(assert (=> d!868924 (= (isEmpty!19759 lt!1064654) (not ((_ is Some!6907) lt!1064654)))))

(assert (=> d!868922 d!868924))

(declare-fun b!3166884 () Bool)

(assert (=> b!3166884 false))

(declare-fun lt!1064707 () Unit!49835)

(declare-fun lt!1064700 () Unit!49835)

(assert (=> b!3166884 (= lt!1064707 lt!1064700)))

(declare-datatypes ((tuple2!34572 0))(
  ( (tuple2!34573 (_1!20418 (_ BitVec 64)) (_2!20418 List!35579)) )
))
(declare-datatypes ((List!35580 0))(
  ( (Nil!35456) (Cons!35456 (h!40876 tuple2!34572) (t!234659 List!35580)) )
))
(declare-datatypes ((ListLongMap!723 0))(
  ( (ListLongMap!724 (toList!2058 List!35580)) )
))
(declare-fun lt!1064714 () ListLongMap!723)

(declare-datatypes ((ListMap!1305 0))(
  ( (ListMap!1306 (toList!2059 List!35579)) )
))
(declare-fun contains!6179 (ListMap!1305 tuple2!34568) Bool)

(declare-fun extractMap!234 (List!35580) ListMap!1305)

(assert (=> b!3166884 (contains!6179 (extractMap!234 (toList!2058 lt!1064714)) (tuple2!34569 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!96 (ListLongMap!723 tuple2!34568 Hashable!4082) Unit!49835)

(assert (=> b!3166884 (= lt!1064700 (lemmaInLongMapThenInGenericMap!96 lt!1064714 (tuple2!34569 r!13156 a!2409) (hashF!6114 (cache!4216 cache!347))))))

(declare-fun call!229676 () ListLongMap!723)

(assert (=> b!3166884 (= lt!1064714 call!229676)))

(declare-fun e!1972657 () Unit!49835)

(declare-fun Unit!49837 () Unit!49835)

(assert (=> b!3166884 (= e!1972657 Unit!49837)))

(declare-fun call!229672 () List!35579)

(declare-datatypes ((Option!6909 0))(
  ( (None!6908) (Some!6908 (v!35154 tuple2!34570)) )
))
(declare-fun call!229674 () Option!6909)

(declare-fun bm!229667 () Bool)

(declare-fun getPair!96 (List!35579 tuple2!34568) Option!6909)

(assert (=> bm!229667 (= call!229674 (getPair!96 call!229672 (tuple2!34569 r!13156 a!2409)))))

(declare-fun b!3166885 () Bool)

(declare-fun e!1972654 () Unit!49835)

(declare-fun lt!1064697 () Unit!49835)

(assert (=> b!3166885 (= e!1972654 lt!1064697)))

(declare-fun lt!1064703 () ListLongMap!723)

(assert (=> b!3166885 (= lt!1064703 call!229676)))

(declare-fun lemmaInGenericMapThenInLongMap!96 (ListLongMap!723 tuple2!34568 Hashable!4082) Unit!49835)

(assert (=> b!3166885 (= lt!1064697 (lemmaInGenericMapThenInLongMap!96 lt!1064703 (tuple2!34569 r!13156 a!2409) (hashF!6114 (cache!4216 cache!347))))))

(declare-fun res!1288150 () Bool)

(declare-fun call!229677 () Bool)

(assert (=> b!3166885 (= res!1288150 call!229677)))

(declare-fun e!1972656 () Bool)

(assert (=> b!3166885 (=> (not res!1288150) (not e!1972656))))

(assert (=> b!3166885 e!1972656))

(declare-fun b!3166886 () Bool)

(declare-fun e!1972655 () Unit!49835)

(declare-fun Unit!49838 () Unit!49835)

(assert (=> b!3166886 (= e!1972655 Unit!49838)))

(declare-fun bm!229668 () Bool)

(declare-fun c!532607 () Bool)

(declare-fun call!229675 () (_ BitVec 64))

(declare-fun contains!6180 (ListLongMap!723 (_ BitVec 64)) Bool)

(assert (=> bm!229668 (= call!229677 (contains!6180 (ite c!532607 lt!1064703 call!229676) call!229675))))

(declare-fun b!3166887 () Bool)

(declare-fun Unit!49839 () Unit!49835)

(assert (=> b!3166887 (= e!1972657 Unit!49839)))

(declare-fun e!1972660 () Bool)

(declare-fun b!3166888 () Bool)

(declare-fun lt!1064704 () (_ BitVec 64))

(declare-fun isDefined!5426 (Option!6909) Bool)

(declare-fun apply!7954 (MutLongMap!4166 (_ BitVec 64)) List!35579)

(assert (=> b!3166888 (= e!1972660 (isDefined!5426 (getPair!96 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704) (tuple2!34569 r!13156 a!2409))))))

(declare-fun d!868926 () Bool)

(declare-fun lt!1064710 () Bool)

(declare-fun map!7906 (MutableMap!4072) ListMap!1305)

(assert (=> d!868926 (= lt!1064710 (contains!6179 (map!7906 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(assert (=> d!868926 (= lt!1064710 e!1972660)))

(declare-fun res!1288152 () Bool)

(assert (=> d!868926 (=> (not res!1288152) (not e!1972660))))

(declare-fun contains!6181 (MutLongMap!4166 (_ BitVec 64)) Bool)

(assert (=> d!868926 (= res!1288152 (contains!6181 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704))))

(declare-fun lt!1064705 () Unit!49835)

(assert (=> d!868926 (= lt!1064705 e!1972654)))

(declare-fun map!7907 (MutLongMap!4166) ListLongMap!723)

(assert (=> d!868926 (= c!532607 (contains!6179 (extractMap!234 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347)))))) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064708 () Unit!49835)

(assert (=> d!868926 (= lt!1064708 e!1972655)))

(declare-fun c!532609 () Bool)

(assert (=> d!868926 (= c!532609 (contains!6181 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704))))

(declare-fun hash!805 (Hashable!4082 tuple2!34568) (_ BitVec 64))

(assert (=> d!868926 (= lt!1064704 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun valid!3252 (MutableMap!4072) Bool)

(assert (=> d!868926 (valid!3252 (cache!4216 cache!347))))

(assert (=> d!868926 (= (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409)) lt!1064710)))

(declare-fun bm!229669 () Bool)

(assert (=> bm!229669 (= call!229676 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))

(declare-fun b!3166889 () Bool)

(declare-fun e!1972659 () Unit!49835)

(declare-fun Unit!49840 () Unit!49835)

(assert (=> b!3166889 (= e!1972659 Unit!49840)))

(declare-fun b!3166890 () Bool)

(assert (=> b!3166890 (= e!1972654 e!1972657)))

(declare-fun res!1288151 () Bool)

(assert (=> b!3166890 (= res!1288151 call!229677)))

(declare-fun e!1972658 () Bool)

(assert (=> b!3166890 (=> (not res!1288151) (not e!1972658))))

(declare-fun c!532608 () Bool)

(assert (=> b!3166890 (= c!532608 e!1972658)))

(declare-fun bm!229670 () Bool)

(assert (=> bm!229670 (= call!229675 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun b!3166891 () Bool)

(declare-fun call!229673 () Bool)

(assert (=> b!3166891 (= e!1972658 call!229673)))

(declare-fun b!3166892 () Bool)

(assert (=> b!3166892 false))

(declare-fun lt!1064698 () Unit!49835)

(declare-fun lt!1064709 () Unit!49835)

(assert (=> b!3166892 (= lt!1064698 lt!1064709)))

(declare-fun lt!1064715 () List!35580)

(declare-fun lt!1064713 () List!35579)

(declare-fun contains!6182 (List!35580 tuple2!34572) Bool)

(assert (=> b!3166892 (contains!6182 lt!1064715 (tuple2!34573 lt!1064704 lt!1064713))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!102 (List!35580 (_ BitVec 64) List!35579) Unit!49835)

(assert (=> b!3166892 (= lt!1064709 (lemmaGetValueByKeyImpliesContainsTuple!102 lt!1064715 lt!1064704 lt!1064713))))

(assert (=> b!3166892 (= lt!1064713 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704))))

(assert (=> b!3166892 (= lt!1064715 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))

(declare-fun lt!1064712 () Unit!49835)

(declare-fun lt!1064699 () Unit!49835)

(assert (=> b!3166892 (= lt!1064712 lt!1064699)))

(declare-fun lt!1064706 () List!35580)

(declare-datatypes ((Option!6910 0))(
  ( (None!6909) (Some!6909 (v!35155 List!35579)) )
))
(declare-fun isDefined!5427 (Option!6910) Bool)

(declare-fun getValueByKey!179 (List!35580 (_ BitVec 64)) Option!6910)

(assert (=> b!3166892 (isDefined!5427 (getValueByKey!179 lt!1064706 lt!1064704))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!130 (List!35580 (_ BitVec 64)) Unit!49835)

(assert (=> b!3166892 (= lt!1064699 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 lt!1064706 lt!1064704))))

(assert (=> b!3166892 (= lt!1064706 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))

(declare-fun lt!1064711 () Unit!49835)

(declare-fun lt!1064696 () Unit!49835)

(assert (=> b!3166892 (= lt!1064711 lt!1064696)))

(declare-fun lt!1064701 () List!35580)

(declare-fun containsKey!194 (List!35580 (_ BitVec 64)) Bool)

(assert (=> b!3166892 (containsKey!194 lt!1064701 lt!1064704)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!97 (List!35580 (_ BitVec 64)) Unit!49835)

(assert (=> b!3166892 (= lt!1064696 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!97 lt!1064701 lt!1064704))))

(assert (=> b!3166892 (= lt!1064701 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))

(declare-fun Unit!49841 () Unit!49835)

(assert (=> b!3166892 (= e!1972659 Unit!49841)))

(declare-fun bm!229671 () Bool)

(declare-fun apply!7955 (ListLongMap!723 (_ BitVec 64)) List!35579)

(assert (=> bm!229671 (= call!229672 (apply!7955 (ite c!532607 lt!1064703 call!229676) call!229675))))

(declare-fun b!3166893 () Bool)

(assert (=> b!3166893 (= e!1972656 call!229673)))

(declare-fun bm!229672 () Bool)

(assert (=> bm!229672 (= call!229673 (isDefined!5426 call!229674))))

(declare-fun b!3166894 () Bool)

(declare-fun lambda!115868 () Int)

(declare-fun forallContained!1074 (List!35580 Int tuple2!34572) Unit!49835)

(assert (=> b!3166894 (= e!1972655 (forallContained!1074 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))) lambda!115868 (tuple2!34573 lt!1064704 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704))))))

(declare-fun c!532610 () Bool)

(assert (=> b!3166894 (= c!532610 (not (contains!6182 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))) (tuple2!34573 lt!1064704 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064704)))))))

(declare-fun lt!1064702 () Unit!49835)

(assert (=> b!3166894 (= lt!1064702 e!1972659)))

(assert (= (and d!868926 c!532609) b!3166894))

(assert (= (and d!868926 (not c!532609)) b!3166886))

(assert (= (and b!3166894 c!532610) b!3166892))

(assert (= (and b!3166894 (not c!532610)) b!3166889))

(assert (= (and d!868926 c!532607) b!3166885))

(assert (= (and d!868926 (not c!532607)) b!3166890))

(assert (= (and b!3166885 res!1288150) b!3166893))

(assert (= (and b!3166890 res!1288151) b!3166891))

(assert (= (and b!3166890 c!532608) b!3166884))

(assert (= (and b!3166890 (not c!532608)) b!3166887))

(assert (= (or b!3166885 b!3166890 b!3166891 b!3166884) bm!229669))

(assert (= (or b!3166885 b!3166893 b!3166890 b!3166891) bm!229670))

(assert (= (or b!3166893 b!3166891) bm!229671))

(assert (= (or b!3166885 b!3166890) bm!229668))

(assert (= (or b!3166893 b!3166891) bm!229667))

(assert (= (or b!3166893 b!3166891) bm!229672))

(assert (= (and d!868926 res!1288152) b!3166888))

(declare-fun m!3428294 () Bool)

(assert (=> bm!229669 m!3428294))

(declare-fun m!3428296 () Bool)

(assert (=> d!868926 m!3428296))

(declare-fun m!3428298 () Bool)

(assert (=> d!868926 m!3428298))

(declare-fun m!3428300 () Bool)

(assert (=> d!868926 m!3428300))

(declare-fun m!3428302 () Bool)

(assert (=> d!868926 m!3428302))

(assert (=> d!868926 m!3428296))

(declare-fun m!3428304 () Bool)

(assert (=> d!868926 m!3428304))

(declare-fun m!3428306 () Bool)

(assert (=> d!868926 m!3428306))

(assert (=> d!868926 m!3428294))

(assert (=> d!868926 m!3428302))

(declare-fun m!3428308 () Bool)

(assert (=> d!868926 m!3428308))

(assert (=> bm!229670 m!3428306))

(declare-fun m!3428310 () Bool)

(assert (=> b!3166884 m!3428310))

(assert (=> b!3166884 m!3428310))

(declare-fun m!3428312 () Bool)

(assert (=> b!3166884 m!3428312))

(declare-fun m!3428314 () Bool)

(assert (=> b!3166884 m!3428314))

(declare-fun m!3428316 () Bool)

(assert (=> bm!229672 m!3428316))

(declare-fun m!3428318 () Bool)

(assert (=> b!3166885 m!3428318))

(declare-fun m!3428320 () Bool)

(assert (=> bm!229668 m!3428320))

(declare-fun m!3428322 () Bool)

(assert (=> b!3166888 m!3428322))

(assert (=> b!3166888 m!3428322))

(declare-fun m!3428324 () Bool)

(assert (=> b!3166888 m!3428324))

(assert (=> b!3166888 m!3428324))

(declare-fun m!3428326 () Bool)

(assert (=> b!3166888 m!3428326))

(assert (=> b!3166894 m!3428294))

(assert (=> b!3166894 m!3428322))

(declare-fun m!3428328 () Bool)

(assert (=> b!3166894 m!3428328))

(declare-fun m!3428330 () Bool)

(assert (=> b!3166894 m!3428330))

(declare-fun m!3428332 () Bool)

(assert (=> bm!229667 m!3428332))

(declare-fun m!3428334 () Bool)

(assert (=> bm!229671 m!3428334))

(declare-fun m!3428336 () Bool)

(assert (=> b!3166892 m!3428336))

(declare-fun m!3428338 () Bool)

(assert (=> b!3166892 m!3428338))

(assert (=> b!3166892 m!3428294))

(declare-fun m!3428340 () Bool)

(assert (=> b!3166892 m!3428340))

(declare-fun m!3428342 () Bool)

(assert (=> b!3166892 m!3428342))

(assert (=> b!3166892 m!3428322))

(declare-fun m!3428344 () Bool)

(assert (=> b!3166892 m!3428344))

(declare-fun m!3428346 () Bool)

(assert (=> b!3166892 m!3428346))

(assert (=> b!3166892 m!3428342))

(declare-fun m!3428348 () Bool)

(assert (=> b!3166892 m!3428348))

(assert (=> d!868922 d!868926))

(assert (=> d!868922 d!868906))

(declare-fun d!868928 () Bool)

(assert (=> d!868928 (= (get!11256 lt!1064654) (v!35153 lt!1064654))))

(assert (=> b!3166815 d!868928))

(declare-fun b!3166915 () Bool)

(declare-fun e!1972671 () Regex!9745)

(declare-fun call!229688 () Regex!9745)

(assert (=> b!3166915 (= e!1972671 (Union!9745 (Concat!15066 call!229688 (regTwo!20002 r!13156)) EmptyLang!9745))))

(declare-fun b!3166916 () Bool)

(declare-fun e!1972674 () Regex!9745)

(declare-fun call!229687 () Regex!9745)

(declare-fun call!229686 () Regex!9745)

(assert (=> b!3166916 (= e!1972674 (Union!9745 call!229687 call!229686))))

(declare-fun b!3166918 () Bool)

(declare-fun e!1972675 () Regex!9745)

(assert (=> b!3166918 (= e!1972674 e!1972675)))

(declare-fun c!532621 () Bool)

(assert (=> b!3166918 (= c!532621 ((_ is Star!9745) r!13156))))

(declare-fun b!3166919 () Bool)

(assert (=> b!3166919 (= e!1972671 (Union!9745 (Concat!15066 call!229688 (regTwo!20002 r!13156)) call!229687))))

(declare-fun b!3166920 () Bool)

(declare-fun call!229689 () Regex!9745)

(assert (=> b!3166920 (= e!1972675 (Concat!15066 call!229689 r!13156))))

(declare-fun b!3166921 () Bool)

(declare-fun c!532623 () Bool)

(assert (=> b!3166921 (= c!532623 ((_ is Union!9745) r!13156))))

(declare-fun e!1972673 () Regex!9745)

(assert (=> b!3166921 (= e!1972673 e!1972674)))

(declare-fun b!3166922 () Bool)

(declare-fun e!1972672 () Regex!9745)

(assert (=> b!3166922 (= e!1972672 EmptyLang!9745)))

(declare-fun bm!229681 () Bool)

(assert (=> bm!229681 (= call!229687 (derivativeStep!2893 (ite c!532623 (regOne!20003 r!13156) (regTwo!20002 r!13156)) a!2409))))

(declare-fun bm!229682 () Bool)

(assert (=> bm!229682 (= call!229686 (derivativeStep!2893 (ite c!532623 (regTwo!20003 r!13156) (ite c!532621 (reg!10074 r!13156) (regOne!20002 r!13156))) a!2409))))

(declare-fun bm!229683 () Bool)

(assert (=> bm!229683 (= call!229689 call!229686)))

(declare-fun bm!229684 () Bool)

(assert (=> bm!229684 (= call!229688 call!229689)))

(declare-fun b!3166923 () Bool)

(assert (=> b!3166923 (= e!1972673 (ite (= a!2409 (c!532568 r!13156)) EmptyExpr!9745 EmptyLang!9745))))

(declare-fun b!3166924 () Bool)

(assert (=> b!3166924 (= e!1972672 e!1972673)))

(declare-fun c!532625 () Bool)

(assert (=> b!3166924 (= c!532625 ((_ is ElementMatch!9745) r!13156))))

(declare-fun b!3166917 () Bool)

(declare-fun c!532624 () Bool)

(assert (=> b!3166917 (= c!532624 (nullable!3346 (regOne!20002 r!13156)))))

(assert (=> b!3166917 (= e!1972675 e!1972671)))

(declare-fun d!868930 () Bool)

(declare-fun lt!1064718 () Regex!9745)

(assert (=> d!868930 (validRegex!4464 lt!1064718)))

(assert (=> d!868930 (= lt!1064718 e!1972672)))

(declare-fun c!532622 () Bool)

(assert (=> d!868930 (= c!532622 (or ((_ is EmptyExpr!9745) r!13156) ((_ is EmptyLang!9745) r!13156)))))

(assert (=> d!868930 (validRegex!4464 r!13156)))

(assert (=> d!868930 (= (derivativeStep!2893 r!13156 a!2409) lt!1064718)))

(assert (= (and d!868930 c!532622) b!3166922))

(assert (= (and d!868930 (not c!532622)) b!3166924))

(assert (= (and b!3166924 c!532625) b!3166923))

(assert (= (and b!3166924 (not c!532625)) b!3166921))

(assert (= (and b!3166921 c!532623) b!3166916))

(assert (= (and b!3166921 (not c!532623)) b!3166918))

(assert (= (and b!3166918 c!532621) b!3166920))

(assert (= (and b!3166918 (not c!532621)) b!3166917))

(assert (= (and b!3166917 c!532624) b!3166919))

(assert (= (and b!3166917 (not c!532624)) b!3166915))

(assert (= (or b!3166919 b!3166915) bm!229684))

(assert (= (or b!3166920 bm!229684) bm!229683))

(assert (= (or b!3166916 bm!229683) bm!229682))

(assert (= (or b!3166916 b!3166919) bm!229681))

(declare-fun m!3428350 () Bool)

(assert (=> bm!229681 m!3428350))

(declare-fun m!3428352 () Bool)

(assert (=> bm!229682 m!3428352))

(assert (=> b!3166917 m!3428250))

(declare-fun m!3428354 () Bool)

(assert (=> d!868930 m!3428354))

(assert (=> d!868930 m!3428242))

(assert (=> b!3166815 d!868930))

(declare-fun d!868932 () Bool)

(declare-fun res!1288159 () Bool)

(declare-fun e!1972680 () Bool)

(assert (=> d!868932 (=> (not res!1288159) (not e!1972680))))

(assert (=> d!868932 (= res!1288159 (valid!3252 (cache!4216 cache!347)))))

(assert (=> d!868932 (= (validCacheMap!60 (cache!4216 cache!347)) e!1972680)))

(declare-fun b!3166931 () Bool)

(declare-fun res!1288160 () Bool)

(assert (=> b!3166931 (=> (not res!1288160) (not e!1972680))))

(declare-fun invariantList!482 (List!35579) Bool)

(assert (=> b!3166931 (= res!1288160 (invariantList!482 (toList!2059 (map!7906 (cache!4216 cache!347)))))))

(declare-fun b!3166932 () Bool)

(declare-fun lambda!115871 () Int)

(declare-fun forall!7148 (List!35579 Int) Bool)

(assert (=> b!3166932 (= e!1972680 (forall!7148 (toList!2059 (map!7906 (cache!4216 cache!347))) lambda!115871))))

(assert (= (and d!868932 res!1288159) b!3166931))

(assert (= (and b!3166931 res!1288160) b!3166932))

(assert (=> d!868932 m!3428300))

(assert (=> b!3166931 m!3428296))

(declare-fun m!3428357 () Bool)

(assert (=> b!3166931 m!3428357))

(assert (=> b!3166932 m!3428296))

(declare-fun m!3428359 () Bool)

(assert (=> b!3166932 m!3428359))

(assert (=> b!3166766 d!868932))

(declare-fun bs!539533 () Bool)

(declare-fun b!3166947 () Bool)

(assert (= bs!539533 (and b!3166947 b!3166894)))

(declare-fun lambda!115878 () Int)

(assert (=> bs!539533 (= lambda!115878 lambda!115868)))

(declare-fun e!1972687 () Regex!9745)

(declare-fun b!3166945 () Bool)

(declare-fun dynLambda!14361 (Int tuple2!34568) Regex!9745)

(assert (=> b!3166945 (= e!1972687 (dynLambda!14361 (defaultValue!4243 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun d!868934 () Bool)

(declare-fun e!1972688 () Bool)

(assert (=> d!868934 e!1972688))

(declare-fun c!532634 () Bool)

(assert (=> d!868934 (= c!532634 (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064791 () Regex!9745)

(assert (=> d!868934 (= lt!1064791 e!1972687)))

(declare-fun c!532633 () Bool)

(assert (=> d!868934 (= c!532633 (not (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409))))))

(assert (=> d!868934 (valid!3252 (cache!4216 cache!347))))

(assert (=> d!868934 (= (apply!7953 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409)) lt!1064791)))

(declare-fun b!3166946 () Bool)

(declare-fun getValueByKey!180 (List!35579 tuple2!34568) Option!6908)

(assert (=> b!3166946 (= e!1972688 (= lt!1064791 (get!11256 (getValueByKey!180 (toList!2059 (map!7906 (cache!4216 cache!347))) (tuple2!34569 r!13156 a!2409)))))))

(declare-fun lt!1064805 () (_ BitVec 64))

(declare-fun get!11257 (Option!6909) tuple2!34570)

(assert (=> b!3166947 (= e!1972687 (_2!20417 (get!11257 (getPair!96 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064805) (tuple2!34569 r!13156 a!2409)))))))

(assert (=> b!3166947 (= lt!1064805 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun c!532632 () Bool)

(assert (=> b!3166947 (= c!532632 (not (contains!6182 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))) (tuple2!34573 lt!1064805 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064805)))))))

(declare-fun lt!1064783 () Unit!49835)

(declare-fun e!1972689 () Unit!49835)

(assert (=> b!3166947 (= lt!1064783 e!1972689)))

(declare-fun lt!1064780 () Unit!49835)

(assert (=> b!3166947 (= lt!1064780 (forallContained!1074 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))) lambda!115878 (tuple2!34573 lt!1064805 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064805))))))

(declare-fun lt!1064794 () ListLongMap!723)

(assert (=> b!3166947 (= lt!1064794 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))

(declare-fun lt!1064795 () Unit!49835)

(declare-fun lemmaGetPairGetSameValueAsMap!34 (ListLongMap!723 tuple2!34568 Regex!9745 Hashable!4082) Unit!49835)

(assert (=> b!3166947 (= lt!1064795 (lemmaGetPairGetSameValueAsMap!34 lt!1064794 (tuple2!34569 r!13156 a!2409) (_2!20417 (get!11257 (getPair!96 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064805) (tuple2!34569 r!13156 a!2409)))) (hashF!6114 (cache!4216 cache!347))))))

(declare-fun lt!1064800 () Unit!49835)

(declare-fun lemmaInGenMapThenLongMapContainsHash!40 (ListLongMap!723 tuple2!34568 Hashable!4082) Unit!49835)

(assert (=> b!3166947 (= lt!1064800 (lemmaInGenMapThenLongMapContainsHash!40 lt!1064794 (tuple2!34569 r!13156 a!2409) (hashF!6114 (cache!4216 cache!347))))))

(assert (=> b!3166947 (contains!6180 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064787 () Unit!49835)

(assert (=> b!3166947 (= lt!1064787 lt!1064800)))

(declare-fun lt!1064790 () (_ BitVec 64))

(assert (=> b!3166947 (= lt!1064790 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064782 () List!35579)

(assert (=> b!3166947 (= lt!1064782 (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))))))

(declare-fun lt!1064804 () Unit!49835)

(declare-fun lemmaGetValueImpliesTupleContained!35 (ListLongMap!723 (_ BitVec 64) List!35579) Unit!49835)

(assert (=> b!3166947 (= lt!1064804 (lemmaGetValueImpliesTupleContained!35 lt!1064794 lt!1064790 lt!1064782))))

(assert (=> b!3166947 (contains!6182 (toList!2058 lt!1064794) (tuple2!34573 lt!1064790 lt!1064782))))

(declare-fun lt!1064788 () Unit!49835)

(assert (=> b!3166947 (= lt!1064788 lt!1064804)))

(declare-fun lt!1064799 () Unit!49835)

(assert (=> b!3166947 (= lt!1064799 (forallContained!1074 (toList!2058 lt!1064794) lambda!115878 (tuple2!34573 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)) (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))))))))

(declare-fun lt!1064779 () Unit!49835)

(declare-fun lemmaInGenMapThenGetPairDefined!34 (ListLongMap!723 tuple2!34568 Hashable!4082) Unit!49835)

(assert (=> b!3166947 (= lt!1064779 (lemmaInGenMapThenGetPairDefined!34 lt!1064794 (tuple2!34569 r!13156 a!2409) (hashF!6114 (cache!4216 cache!347))))))

(declare-fun lt!1064802 () Unit!49835)

(assert (=> b!3166947 (= lt!1064802 (lemmaInGenMapThenLongMapContainsHash!40 lt!1064794 (tuple2!34569 r!13156 a!2409) (hashF!6114 (cache!4216 cache!347))))))

(declare-fun lt!1064792 () Unit!49835)

(assert (=> b!3166947 (= lt!1064792 lt!1064802)))

(declare-fun lt!1064781 () (_ BitVec 64))

(assert (=> b!3166947 (= lt!1064781 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064785 () List!35579)

(assert (=> b!3166947 (= lt!1064785 (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))))))

(declare-fun lt!1064801 () Unit!49835)

(assert (=> b!3166947 (= lt!1064801 (lemmaGetValueImpliesTupleContained!35 lt!1064794 lt!1064781 lt!1064785))))

(assert (=> b!3166947 (contains!6182 (toList!2058 lt!1064794) (tuple2!34573 lt!1064781 lt!1064785))))

(declare-fun lt!1064798 () Unit!49835)

(assert (=> b!3166947 (= lt!1064798 lt!1064801)))

(declare-fun lt!1064806 () Unit!49835)

(assert (=> b!3166947 (= lt!1064806 (forallContained!1074 (toList!2058 lt!1064794) lambda!115878 (tuple2!34573 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409)) (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))))))))

(assert (=> b!3166947 (isDefined!5426 (getPair!96 (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))) (tuple2!34569 r!13156 a!2409)))))

(declare-fun lt!1064786 () Unit!49835)

(assert (=> b!3166947 (= lt!1064786 lt!1064779)))

(assert (=> b!3166947 (= (_2!20417 (get!11257 (getPair!96 (apply!7955 lt!1064794 (hash!805 (hashF!6114 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))) (tuple2!34569 r!13156 a!2409)))) (get!11256 (getValueByKey!180 (toList!2059 (extractMap!234 (toList!2058 lt!1064794))) (tuple2!34569 r!13156 a!2409))))))

(declare-fun lt!1064784 () Unit!49835)

(assert (=> b!3166947 (= lt!1064784 lt!1064795)))

(declare-fun b!3166948 () Bool)

(assert (=> b!3166948 false))

(declare-fun lt!1064789 () Unit!49835)

(declare-fun lt!1064793 () Unit!49835)

(assert (=> b!3166948 (= lt!1064789 lt!1064793)))

(declare-fun lt!1064807 () List!35580)

(declare-fun lt!1064796 () List!35579)

(assert (=> b!3166948 (contains!6182 lt!1064807 (tuple2!34573 lt!1064805 lt!1064796))))

(assert (=> b!3166948 (= lt!1064793 (lemmaGetValueByKeyImpliesContainsTuple!102 lt!1064807 lt!1064805 lt!1064796))))

(assert (=> b!3166948 (= lt!1064796 (apply!7954 (v!35152 (underlying!8562 (cache!4216 cache!347))) lt!1064805))))

(assert (=> b!3166948 (= lt!1064807 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))

(declare-fun lt!1064797 () Unit!49835)

(declare-fun lt!1064803 () Unit!49835)

(assert (=> b!3166948 (= lt!1064797 lt!1064803)))

(declare-fun lt!1064808 () List!35580)

(assert (=> b!3166948 (isDefined!5427 (getValueByKey!179 lt!1064808 lt!1064805))))

(assert (=> b!3166948 (= lt!1064803 (lemmaContainsKeyImpliesGetValueByKeyDefined!130 lt!1064808 lt!1064805))))

(assert (=> b!3166948 (= lt!1064808 (toList!2058 (map!7907 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))

(declare-fun Unit!49842 () Unit!49835)

(assert (=> b!3166948 (= e!1972689 Unit!49842)))

(declare-fun b!3166949 () Bool)

(declare-fun Unit!49843 () Unit!49835)

(assert (=> b!3166949 (= e!1972689 Unit!49843)))

(declare-fun b!3166950 () Bool)

(assert (=> b!3166950 (= e!1972688 (= lt!1064791 (dynLambda!14361 (defaultValue!4243 (cache!4216 cache!347)) (tuple2!34569 r!13156 a!2409))))))

(assert (= (and d!868934 c!532633) b!3166945))

(assert (= (and d!868934 (not c!532633)) b!3166947))

(assert (= (and b!3166947 c!532632) b!3166948))

(assert (= (and b!3166947 (not c!532632)) b!3166949))

(assert (= (and d!868934 c!532634) b!3166946))

(assert (= (and d!868934 (not c!532634)) b!3166950))

(declare-fun b_lambda!86427 () Bool)

(assert (=> (not b_lambda!86427) (not b!3166945)))

(declare-fun t!234658 () Bool)

(declare-fun tb!155101 () Bool)

(assert (=> (and b!3166725 (= (defaultValue!4243 (cache!4216 cache!347)) (defaultValue!4243 (cache!4216 cache!347))) t!234658) tb!155101))

(assert (=> b!3166945 t!234658))

(declare-fun result!196876 () Bool)

(declare-fun b_and!209415 () Bool)

(assert (= b_and!209413 (and (=> t!234658 result!196876) b_and!209415)))

(declare-fun b_lambda!86429 () Bool)

(assert (=> (not b_lambda!86429) (not b!3166950)))

(assert (=> b!3166950 t!234658))

(declare-fun b_and!209417 () Bool)

(assert (= b_and!209415 (and (=> t!234658 result!196876) b_and!209417)))

(declare-fun m!3428361 () Bool)

(assert (=> b!3166950 m!3428361))

(assert (=> d!868934 m!3428282))

(assert (=> d!868934 m!3428300))

(assert (=> b!3166948 m!3428294))

(declare-fun m!3428363 () Bool)

(assert (=> b!3166948 m!3428363))

(declare-fun m!3428365 () Bool)

(assert (=> b!3166948 m!3428365))

(declare-fun m!3428367 () Bool)

(assert (=> b!3166948 m!3428367))

(declare-fun m!3428369 () Bool)

(assert (=> b!3166948 m!3428369))

(declare-fun m!3428371 () Bool)

(assert (=> b!3166948 m!3428371))

(assert (=> b!3166948 m!3428367))

(declare-fun m!3428373 () Bool)

(assert (=> b!3166948 m!3428373))

(assert (=> b!3166945 m!3428361))

(assert (=> b!3166946 m!3428296))

(declare-fun m!3428375 () Bool)

(assert (=> b!3166946 m!3428375))

(assert (=> b!3166946 m!3428375))

(declare-fun m!3428377 () Bool)

(assert (=> b!3166946 m!3428377))

(declare-fun m!3428379 () Bool)

(assert (=> b!3166947 m!3428379))

(declare-fun m!3428381 () Bool)

(assert (=> b!3166947 m!3428381))

(assert (=> b!3166947 m!3428306))

(declare-fun m!3428383 () Bool)

(assert (=> b!3166947 m!3428383))

(declare-fun m!3428385 () Bool)

(assert (=> b!3166947 m!3428385))

(declare-fun m!3428387 () Bool)

(assert (=> b!3166947 m!3428387))

(declare-fun m!3428389 () Bool)

(assert (=> b!3166947 m!3428389))

(declare-fun m!3428391 () Bool)

(assert (=> b!3166947 m!3428391))

(declare-fun m!3428393 () Bool)

(assert (=> b!3166947 m!3428393))

(declare-fun m!3428395 () Bool)

(assert (=> b!3166947 m!3428395))

(declare-fun m!3428397 () Bool)

(assert (=> b!3166947 m!3428397))

(declare-fun m!3428399 () Bool)

(assert (=> b!3166947 m!3428399))

(declare-fun m!3428401 () Bool)

(assert (=> b!3166947 m!3428401))

(declare-fun m!3428403 () Bool)

(assert (=> b!3166947 m!3428403))

(assert (=> b!3166947 m!3428399))

(declare-fun m!3428405 () Bool)

(assert (=> b!3166947 m!3428405))

(declare-fun m!3428407 () Bool)

(assert (=> b!3166947 m!3428407))

(declare-fun m!3428409 () Bool)

(assert (=> b!3166947 m!3428409))

(declare-fun m!3428411 () Bool)

(assert (=> b!3166947 m!3428411))

(assert (=> b!3166947 m!3428306))

(assert (=> b!3166947 m!3428403))

(declare-fun m!3428413 () Bool)

(assert (=> b!3166947 m!3428413))

(assert (=> b!3166947 m!3428405))

(assert (=> b!3166947 m!3428385))

(assert (=> b!3166947 m!3428294))

(assert (=> b!3166947 m!3428399))

(declare-fun m!3428415 () Bool)

(assert (=> b!3166947 m!3428415))

(assert (=> b!3166947 m!3428306))

(assert (=> b!3166947 m!3428363))

(assert (=> b!3166947 m!3428407))

(assert (=> b!3166947 m!3428363))

(declare-fun m!3428417 () Bool)

(assert (=> b!3166947 m!3428417))

(assert (=> b!3166813 d!868934))

(declare-fun bs!539534 () Bool)

(declare-fun b!3166961 () Bool)

(assert (= bs!539534 (and b!3166961 b!3166932)))

(declare-fun lambda!115881 () Int)

(assert (=> bs!539534 (= lambda!115881 lambda!115871)))

(declare-fun b!3166963 () Bool)

(declare-fun lt!1064825 () tuple2!34568)

(declare-fun lt!1064832 () tuple2!34568)

(assert (=> b!3166963 (= lt!1064825 lt!1064832)))

(declare-fun lt!1064831 () Regex!9745)

(assert (=> b!3166963 (= lt!1064831 (apply!7953 (cache!4216 cache!347) lt!1064832))))

(declare-fun lt!1064830 () Regex!9745)

(assert (=> b!3166963 (= lt!1064830 (apply!7953 (cache!4216 cache!347) lt!1064832))))

(declare-fun e!1972702 () Bool)

(assert (=> b!3166963 (= e!1972702 (= (apply!7953 (cache!4216 cache!347) lt!1064832) (derivativeStep!2893 (_1!20416 lt!1064832) (_2!20416 lt!1064832))))))

(declare-fun e!1972704 () Unit!49835)

(declare-fun lt!1064829 () Unit!49835)

(assert (=> b!3166961 (= e!1972704 lt!1064829)))

(assert (=> b!3166961 (= lt!1064832 (tuple2!34569 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!48 (MutableMap!4072 tuple2!34568 Int) Unit!49835)

(assert (=> b!3166961 (= lt!1064829 (lemmaForallPairsThenForLookup!48 (cache!4216 cache!347) lt!1064832 lambda!115881))))

(declare-fun lt!1064826 () tuple2!34570)

(assert (=> b!3166961 (= lt!1064826 (tuple2!34571 lt!1064832 (apply!7953 (cache!4216 cache!347) lt!1064832)))))

(declare-fun lt!1064827 () Regex!9745)

(assert (=> b!3166961 (= lt!1064827 (apply!7953 (cache!4216 cache!347) lt!1064832))))

(declare-fun res!1288168 () Bool)

(assert (=> b!3166961 (= res!1288168 (validRegex!4464 (_1!20416 lt!1064832)))))

(assert (=> b!3166961 (=> (not res!1288168) (not e!1972702))))

(assert (=> b!3166961 e!1972702))

(declare-fun b!3166962 () Bool)

(declare-fun Unit!49844 () Unit!49835)

(assert (=> b!3166962 (= e!1972704 Unit!49844)))

(declare-fun b!3166964 () Bool)

(declare-fun e!1972703 () Bool)

(assert (=> b!3166964 (= e!1972703 (= (derivativeStep!2893 r!13156 a!2409) (apply!7953 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409))))))

(declare-fun d!868936 () Bool)

(assert (=> d!868936 e!1972703))

(declare-fun res!1288167 () Bool)

(assert (=> d!868936 (=> res!1288167 e!1972703)))

(assert (=> d!868936 (= res!1288167 (not (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409))))))

(declare-fun lt!1064828 () Unit!49835)

(assert (=> d!868936 (= lt!1064828 e!1972704)))

(declare-fun c!532638 () Bool)

(assert (=> d!868936 (= c!532638 (contains!6178 (cache!4216 cache!347) (tuple2!34569 r!13156 a!2409)))))

(assert (=> d!868936 (validCacheMap!60 (cache!4216 cache!347))))

(assert (=> d!868936 (= (lemmaIfInCacheThenValid!57 cache!347 r!13156 a!2409) lt!1064828)))

(assert (= (and d!868936 c!532638) b!3166961))

(assert (= (and d!868936 (not c!532638)) b!3166962))

(assert (= (and b!3166961 res!1288168) b!3166963))

(assert (= (and d!868936 (not res!1288167)) b!3166964))

(declare-fun m!3428419 () Bool)

(assert (=> b!3166963 m!3428419))

(declare-fun m!3428421 () Bool)

(assert (=> b!3166963 m!3428421))

(declare-fun m!3428423 () Bool)

(assert (=> b!3166961 m!3428423))

(assert (=> b!3166961 m!3428419))

(declare-fun m!3428425 () Bool)

(assert (=> b!3166961 m!3428425))

(assert (=> b!3166964 m!3428290))

(assert (=> b!3166964 m!3428284))

(assert (=> d!868936 m!3428282))

(assert (=> d!868936 m!3428268))

(assert (=> b!3166813 d!868936))

(declare-fun b!3166965 () Bool)

(declare-fun e!1972711 () Bool)

(declare-fun e!1972707 () Bool)

(assert (=> b!3166965 (= e!1972711 e!1972707)))

(declare-fun c!532639 () Bool)

(assert (=> b!3166965 (= c!532639 ((_ is Union!9745) (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))

(declare-fun d!868938 () Bool)

(declare-fun res!1288171 () Bool)

(declare-fun e!1972708 () Bool)

(assert (=> d!868938 (=> res!1288171 e!1972708)))

(assert (=> d!868938 (= res!1288171 ((_ is ElementMatch!9745) (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))

(assert (=> d!868938 (= (validRegex!4464 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))) e!1972708)))

(declare-fun bm!229685 () Bool)

(declare-fun call!229692 () Bool)

(declare-fun call!229690 () Bool)

(assert (=> bm!229685 (= call!229692 call!229690)))

(declare-fun b!3166966 () Bool)

(assert (=> b!3166966 (= e!1972708 e!1972711)))

(declare-fun c!532640 () Bool)

(assert (=> b!3166966 (= c!532640 ((_ is Star!9745) (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))

(declare-fun b!3166967 () Bool)

(declare-fun e!1972706 () Bool)

(declare-fun e!1972705 () Bool)

(assert (=> b!3166967 (= e!1972706 e!1972705)))

(declare-fun res!1288172 () Bool)

(assert (=> b!3166967 (=> (not res!1288172) (not e!1972705))))

(assert (=> b!3166967 (= res!1288172 call!229692)))

(declare-fun b!3166968 () Bool)

(declare-fun e!1972709 () Bool)

(assert (=> b!3166968 (= e!1972711 e!1972709)))

(declare-fun res!1288170 () Bool)

(assert (=> b!3166968 (= res!1288170 (not (nullable!3346 (reg!10074 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))))

(assert (=> b!3166968 (=> (not res!1288170) (not e!1972709))))

(declare-fun b!3166969 () Bool)

(assert (=> b!3166969 (= e!1972709 call!229690)))

(declare-fun b!3166970 () Bool)

(declare-fun res!1288173 () Bool)

(declare-fun e!1972710 () Bool)

(assert (=> b!3166970 (=> (not res!1288173) (not e!1972710))))

(assert (=> b!3166970 (= res!1288173 call!229692)))

(assert (=> b!3166970 (= e!1972707 e!1972710)))

(declare-fun bm!229686 () Bool)

(assert (=> bm!229686 (= call!229690 (validRegex!4464 (ite c!532640 (reg!10074 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))) (ite c!532639 (regOne!20003 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))) (regOne!20002 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156)))))))))

(declare-fun b!3166971 () Bool)

(declare-fun res!1288169 () Bool)

(assert (=> b!3166971 (=> res!1288169 e!1972706)))

(assert (=> b!3166971 (= res!1288169 (not ((_ is Concat!15066) (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156)))))))

(assert (=> b!3166971 (= e!1972707 e!1972706)))

(declare-fun call!229691 () Bool)

(declare-fun bm!229687 () Bool)

(assert (=> bm!229687 (= call!229691 (validRegex!4464 (ite c!532639 (regTwo!20003 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))) (regTwo!20002 (ite c!532573 (regTwo!20003 r!13156) (regTwo!20002 r!13156))))))))

(declare-fun b!3166972 () Bool)

(assert (=> b!3166972 (= e!1972705 call!229691)))

(declare-fun b!3166973 () Bool)

(assert (=> b!3166973 (= e!1972710 call!229691)))

(assert (= (and d!868938 (not res!1288171)) b!3166966))

(assert (= (and b!3166966 c!532640) b!3166968))

(assert (= (and b!3166966 (not c!532640)) b!3166965))

(assert (= (and b!3166968 res!1288170) b!3166969))

(assert (= (and b!3166965 c!532639) b!3166970))

(assert (= (and b!3166965 (not c!532639)) b!3166971))

(assert (= (and b!3166970 res!1288173) b!3166973))

(assert (= (and b!3166971 (not res!1288169)) b!3166967))

(assert (= (and b!3166967 res!1288172) b!3166972))

(assert (= (or b!3166970 b!3166967) bm!229685))

(assert (= (or b!3166973 b!3166972) bm!229687))

(assert (= (or b!3166969 bm!229685) bm!229686))

(declare-fun m!3428427 () Bool)

(assert (=> b!3166968 m!3428427))

(declare-fun m!3428429 () Bool)

(assert (=> bm!229686 m!3428429))

(declare-fun m!3428431 () Bool)

(assert (=> bm!229687 m!3428431))

(assert (=> bm!229642 d!868938))

(declare-fun b!3166988 () Bool)

(declare-fun e!1972726 () Bool)

(declare-fun e!1972728 () Bool)

(assert (=> b!3166988 (= e!1972726 e!1972728)))

(declare-fun c!532643 () Bool)

(assert (=> b!3166988 (= c!532643 ((_ is Union!9745) (regOne!20002 r!13156)))))

(declare-fun b!3166989 () Bool)

(declare-fun e!1972725 () Bool)

(declare-fun call!229698 () Bool)

(assert (=> b!3166989 (= e!1972725 call!229698)))

(declare-fun b!3166990 () Bool)

(declare-fun e!1972724 () Bool)

(assert (=> b!3166990 (= e!1972728 e!1972724)))

(declare-fun res!1288186 () Bool)

(assert (=> b!3166990 (= res!1288186 call!229698)))

(assert (=> b!3166990 (=> res!1288186 e!1972724)))

(declare-fun b!3166991 () Bool)

(declare-fun e!1972729 () Bool)

(assert (=> b!3166991 (= e!1972729 e!1972726)))

(declare-fun res!1288184 () Bool)

(assert (=> b!3166991 (=> res!1288184 e!1972726)))

(assert (=> b!3166991 (= res!1288184 ((_ is Star!9745) (regOne!20002 r!13156)))))

(declare-fun b!3166993 () Bool)

(assert (=> b!3166993 (= e!1972728 e!1972725)))

(declare-fun res!1288187 () Bool)

(declare-fun call!229697 () Bool)

(assert (=> b!3166993 (= res!1288187 call!229697)))

(assert (=> b!3166993 (=> (not res!1288187) (not e!1972725))))

(declare-fun bm!229692 () Bool)

(assert (=> bm!229692 (= call!229697 (nullable!3346 (ite c!532643 (regTwo!20003 (regOne!20002 r!13156)) (regOne!20002 (regOne!20002 r!13156)))))))

(declare-fun b!3166994 () Bool)

(declare-fun e!1972727 () Bool)

(assert (=> b!3166994 (= e!1972727 e!1972729)))

(declare-fun res!1288185 () Bool)

(assert (=> b!3166994 (=> (not res!1288185) (not e!1972729))))

(assert (=> b!3166994 (= res!1288185 (and (not ((_ is EmptyLang!9745) (regOne!20002 r!13156))) (not ((_ is ElementMatch!9745) (regOne!20002 r!13156)))))))

(declare-fun bm!229693 () Bool)

(assert (=> bm!229693 (= call!229698 (nullable!3346 (ite c!532643 (regOne!20003 (regOne!20002 r!13156)) (regTwo!20002 (regOne!20002 r!13156)))))))

(declare-fun b!3166992 () Bool)

(assert (=> b!3166992 (= e!1972724 call!229697)))

(declare-fun d!868940 () Bool)

(declare-fun res!1288188 () Bool)

(assert (=> d!868940 (=> res!1288188 e!1972727)))

(assert (=> d!868940 (= res!1288188 ((_ is EmptyExpr!9745) (regOne!20002 r!13156)))))

(assert (=> d!868940 (= (nullableFct!953 (regOne!20002 r!13156)) e!1972727)))

(assert (= (and d!868940 (not res!1288188)) b!3166994))

(assert (= (and b!3166994 res!1288185) b!3166991))

(assert (= (and b!3166991 (not res!1288184)) b!3166988))

(assert (= (and b!3166988 c!532643) b!3166990))

(assert (= (and b!3166988 (not c!532643)) b!3166993))

(assert (= (and b!3166990 (not res!1288186)) b!3166992))

(assert (= (and b!3166993 res!1288187) b!3166989))

(assert (= (or b!3166992 b!3166993) bm!229692))

(assert (= (or b!3166990 b!3166989) bm!229693))

(declare-fun m!3428433 () Bool)

(assert (=> bm!229692 m!3428433))

(declare-fun m!3428435 () Bool)

(assert (=> bm!229693 m!3428435))

(assert (=> d!868916 d!868940))

(declare-fun b!3166995 () Bool)

(declare-fun e!1972736 () Bool)

(declare-fun e!1972732 () Bool)

(assert (=> b!3166995 (= e!1972736 e!1972732)))

(declare-fun c!532644 () Bool)

(assert (=> b!3166995 (= c!532644 ((_ is Union!9745) (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))

(declare-fun d!868942 () Bool)

(declare-fun res!1288191 () Bool)

(declare-fun e!1972733 () Bool)

(assert (=> d!868942 (=> res!1288191 e!1972733)))

(assert (=> d!868942 (= res!1288191 ((_ is ElementMatch!9745) (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))

(assert (=> d!868942 (= (validRegex!4464 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))) e!1972733)))

(declare-fun bm!229694 () Bool)

(declare-fun call!229701 () Bool)

(declare-fun call!229699 () Bool)

(assert (=> bm!229694 (= call!229701 call!229699)))

(declare-fun b!3166996 () Bool)

(assert (=> b!3166996 (= e!1972733 e!1972736)))

(declare-fun c!532645 () Bool)

(assert (=> b!3166996 (= c!532645 ((_ is Star!9745) (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))

(declare-fun b!3166997 () Bool)

(declare-fun e!1972731 () Bool)

(declare-fun e!1972730 () Bool)

(assert (=> b!3166997 (= e!1972731 e!1972730)))

(declare-fun res!1288192 () Bool)

(assert (=> b!3166997 (=> (not res!1288192) (not e!1972730))))

(assert (=> b!3166997 (= res!1288192 call!229701)))

(declare-fun b!3166998 () Bool)

(declare-fun e!1972734 () Bool)

(assert (=> b!3166998 (= e!1972736 e!1972734)))

(declare-fun res!1288190 () Bool)

(assert (=> b!3166998 (= res!1288190 (not (nullable!3346 (reg!10074 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))))

(assert (=> b!3166998 (=> (not res!1288190) (not e!1972734))))

(declare-fun b!3166999 () Bool)

(assert (=> b!3166999 (= e!1972734 call!229699)))

(declare-fun b!3167000 () Bool)

(declare-fun res!1288193 () Bool)

(declare-fun e!1972735 () Bool)

(assert (=> b!3167000 (=> (not res!1288193) (not e!1972735))))

(assert (=> b!3167000 (= res!1288193 call!229701)))

(assert (=> b!3167000 (= e!1972732 e!1972735)))

(declare-fun bm!229695 () Bool)

(assert (=> bm!229695 (= call!229699 (validRegex!4464 (ite c!532645 (reg!10074 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))) (ite c!532644 (regOne!20003 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))) (regOne!20002 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156))))))))))

(declare-fun b!3167001 () Bool)

(declare-fun res!1288189 () Bool)

(assert (=> b!3167001 (=> res!1288189 e!1972731)))

(assert (=> b!3167001 (= res!1288189 (not ((_ is Concat!15066) (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156))))))))

(assert (=> b!3167001 (= e!1972732 e!1972731)))

(declare-fun call!229700 () Bool)

(declare-fun bm!229696 () Bool)

(assert (=> bm!229696 (= call!229700 (validRegex!4464 (ite c!532644 (regTwo!20003 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))) (regTwo!20002 (ite c!532574 (reg!10074 r!13156) (ite c!532573 (regOne!20003 r!13156) (regOne!20002 r!13156)))))))))

(declare-fun b!3167002 () Bool)

(assert (=> b!3167002 (= e!1972730 call!229700)))

(declare-fun b!3167003 () Bool)

(assert (=> b!3167003 (= e!1972735 call!229700)))

(assert (= (and d!868942 (not res!1288191)) b!3166996))

(assert (= (and b!3166996 c!532645) b!3166998))

(assert (= (and b!3166996 (not c!532645)) b!3166995))

(assert (= (and b!3166998 res!1288190) b!3166999))

(assert (= (and b!3166995 c!532644) b!3167000))

(assert (= (and b!3166995 (not c!532644)) b!3167001))

(assert (= (and b!3167000 res!1288193) b!3167003))

(assert (= (and b!3167001 (not res!1288189)) b!3166997))

(assert (= (and b!3166997 res!1288192) b!3167002))

(assert (= (or b!3167000 b!3166997) bm!229694))

(assert (= (or b!3167003 b!3167002) bm!229696))

(assert (= (or b!3166999 bm!229694) bm!229695))

(declare-fun m!3428437 () Bool)

(assert (=> b!3166998 m!3428437))

(declare-fun m!3428439 () Bool)

(assert (=> bm!229695 m!3428439))

(declare-fun m!3428441 () Bool)

(assert (=> bm!229696 m!3428441))

(assert (=> bm!229641 d!868942))

(declare-fun d!868944 () Bool)

(declare-fun lt!1064833 () Int)

(assert (=> d!868944 (>= lt!1064833 0)))

(declare-fun e!1972737 () Int)

(assert (=> d!868944 (= lt!1064833 e!1972737)))

(declare-fun c!532649 () Bool)

(assert (=> d!868944 (= c!532649 ((_ is ElementMatch!9745) (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(assert (=> d!868944 (= (RegexPrimitiveSize!131 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))) lt!1064833)))

(declare-fun b!3167004 () Bool)

(declare-fun e!1972741 () Int)

(declare-fun call!229704 () Int)

(declare-fun call!229703 () Int)

(assert (=> b!3167004 (= e!1972741 (+ 1 call!229704 call!229703))))

(declare-fun c!532648 () Bool)

(declare-fun bm!229697 () Bool)

(assert (=> bm!229697 (= call!229704 (RegexPrimitiveSize!131 (ite c!532648 (regTwo!20002 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))) (regOne!20003 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))))

(declare-fun call!229702 () Int)

(declare-fun bm!229698 () Bool)

(declare-fun c!532650 () Bool)

(assert (=> bm!229698 (= call!229702 (RegexPrimitiveSize!131 (ite c!532648 (regOne!20002 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))) (ite c!532650 (reg!10074 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))) (regTwo!20003 (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156))))))))))

(declare-fun bm!229699 () Bool)

(assert (=> bm!229699 (= call!229703 call!229702)))

(declare-fun b!3167005 () Bool)

(assert (=> b!3167005 (= e!1972737 1)))

(declare-fun c!532646 () Bool)

(declare-fun b!3167006 () Bool)

(assert (=> b!3167006 (= c!532646 ((_ is EmptyLang!9745) (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(declare-fun e!1972739 () Int)

(assert (=> b!3167006 (= e!1972739 e!1972741)))

(declare-fun b!3167007 () Bool)

(declare-fun e!1972740 () Int)

(assert (=> b!3167007 (= e!1972740 e!1972739)))

(assert (=> b!3167007 (= c!532650 ((_ is Star!9745) (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(declare-fun b!3167008 () Bool)

(assert (=> b!3167008 (= e!1972741 0)))

(declare-fun b!3167009 () Bool)

(assert (=> b!3167009 (= e!1972739 (+ 1 call!229703))))

(declare-fun b!3167010 () Bool)

(assert (=> b!3167010 (= e!1972740 0)))

(declare-fun b!3167011 () Bool)

(declare-fun e!1972738 () Int)

(assert (=> b!3167011 (= e!1972737 e!1972738)))

(assert (=> b!3167011 (= c!532648 ((_ is Concat!15066) (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(declare-fun c!532647 () Bool)

(declare-fun b!3167012 () Bool)

(assert (=> b!3167012 (= c!532647 ((_ is EmptyExpr!9745) (ite c!532592 (regOne!20002 r!13156) (ite c!532594 (reg!10074 r!13156) (regTwo!20003 r!13156)))))))

(assert (=> b!3167012 (= e!1972738 e!1972740)))

(declare-fun b!3167013 () Bool)

(assert (=> b!3167013 (= e!1972738 (+ 1 call!229702 call!229704))))

(assert (= (and d!868944 c!532649) b!3167005))

(assert (= (and d!868944 (not c!532649)) b!3167011))

(assert (= (and b!3167011 c!532648) b!3167013))

(assert (= (and b!3167011 (not c!532648)) b!3167012))

(assert (= (and b!3167012 c!532647) b!3167010))

(assert (= (and b!3167012 (not c!532647)) b!3167007))

(assert (= (and b!3167007 c!532650) b!3167009))

(assert (= (and b!3167007 (not c!532650)) b!3167006))

(assert (= (and b!3167006 c!532646) b!3167008))

(assert (= (and b!3167006 (not c!532646)) b!3167004))

(assert (= (or b!3167009 b!3167004) bm!229699))

(assert (= (or b!3167013 b!3167004) bm!229697))

(assert (= (or b!3167013 bm!229699) bm!229698))

(declare-fun m!3428443 () Bool)

(assert (=> bm!229697 m!3428443))

(declare-fun m!3428445 () Bool)

(assert (=> bm!229698 m!3428445))

(assert (=> bm!229653 d!868944))

(declare-fun d!868946 () Bool)

(declare-fun lt!1064834 () Int)

(assert (=> d!868946 (>= lt!1064834 0)))

(declare-fun e!1972742 () Int)

(assert (=> d!868946 (= lt!1064834 e!1972742)))

(declare-fun c!532654 () Bool)

(assert (=> d!868946 (= c!532654 ((_ is ElementMatch!9745) (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(assert (=> d!868946 (= (RegexPrimitiveSize!131 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))) lt!1064834)))

(declare-fun b!3167014 () Bool)

(declare-fun e!1972746 () Int)

(declare-fun call!229707 () Int)

(declare-fun call!229706 () Int)

(assert (=> b!3167014 (= e!1972746 (+ 1 call!229707 call!229706))))

(declare-fun c!532653 () Bool)

(declare-fun bm!229700 () Bool)

(assert (=> bm!229700 (= call!229707 (RegexPrimitiveSize!131 (ite c!532653 (regTwo!20002 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))) (regOne!20003 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))))

(declare-fun c!532655 () Bool)

(declare-fun call!229705 () Int)

(declare-fun bm!229701 () Bool)

(assert (=> bm!229701 (= call!229705 (RegexPrimitiveSize!131 (ite c!532653 (regOne!20002 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))) (ite c!532655 (reg!10074 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))) (regTwo!20003 (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156)))))))))

(declare-fun bm!229702 () Bool)

(assert (=> bm!229702 (= call!229706 call!229705)))

(declare-fun b!3167015 () Bool)

(assert (=> b!3167015 (= e!1972742 1)))

(declare-fun b!3167016 () Bool)

(declare-fun c!532651 () Bool)

(assert (=> b!3167016 (= c!532651 ((_ is EmptyLang!9745) (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(declare-fun e!1972744 () Int)

(assert (=> b!3167016 (= e!1972744 e!1972746)))

(declare-fun b!3167017 () Bool)

(declare-fun e!1972745 () Int)

(assert (=> b!3167017 (= e!1972745 e!1972744)))

(assert (=> b!3167017 (= c!532655 ((_ is Star!9745) (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(declare-fun b!3167018 () Bool)

(assert (=> b!3167018 (= e!1972746 0)))

(declare-fun b!3167019 () Bool)

(assert (=> b!3167019 (= e!1972744 (+ 1 call!229706))))

(declare-fun b!3167020 () Bool)

(assert (=> b!3167020 (= e!1972745 0)))

(declare-fun b!3167021 () Bool)

(declare-fun e!1972743 () Int)

(assert (=> b!3167021 (= e!1972742 e!1972743)))

(assert (=> b!3167021 (= c!532653 ((_ is Concat!15066) (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(declare-fun b!3167022 () Bool)

(declare-fun c!532652 () Bool)

(assert (=> b!3167022 (= c!532652 ((_ is EmptyExpr!9745) (ite c!532592 (regTwo!20002 r!13156) (regOne!20003 r!13156))))))

(assert (=> b!3167022 (= e!1972743 e!1972745)))

(declare-fun b!3167023 () Bool)

(assert (=> b!3167023 (= e!1972743 (+ 1 call!229705 call!229707))))

(assert (= (and d!868946 c!532654) b!3167015))

(assert (= (and d!868946 (not c!532654)) b!3167021))

(assert (= (and b!3167021 c!532653) b!3167023))

(assert (= (and b!3167021 (not c!532653)) b!3167022))

(assert (= (and b!3167022 c!532652) b!3167020))

(assert (= (and b!3167022 (not c!532652)) b!3167017))

(assert (= (and b!3167017 c!532655) b!3167019))

(assert (= (and b!3167017 (not c!532655)) b!3167016))

(assert (= (and b!3167016 c!532651) b!3167018))

(assert (= (and b!3167016 (not c!532651)) b!3167014))

(assert (= (or b!3167019 b!3167014) bm!229702))

(assert (= (or b!3167023 b!3167014) bm!229700))

(assert (= (or b!3167023 bm!229702) bm!229701))

(declare-fun m!3428447 () Bool)

(assert (=> bm!229700 m!3428447))

(declare-fun m!3428449 () Bool)

(assert (=> bm!229701 m!3428449))

(assert (=> bm!229652 d!868946))

(declare-fun d!868948 () Bool)

(declare-fun lt!1064835 () Int)

(assert (=> d!868948 (>= lt!1064835 0)))

(declare-fun e!1972747 () Int)

(assert (=> d!868948 (= lt!1064835 e!1972747)))

(declare-fun c!532659 () Bool)

(assert (=> d!868948 (= c!532659 ((_ is ElementMatch!9745) (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(assert (=> d!868948 (= (RegexPrimitiveSize!131 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))) lt!1064835)))

(declare-fun b!3167024 () Bool)

(declare-fun e!1972751 () Int)

(declare-fun call!229710 () Int)

(declare-fun call!229709 () Int)

(assert (=> b!3167024 (= e!1972751 (+ 1 call!229710 call!229709))))

(declare-fun c!532658 () Bool)

(declare-fun bm!229703 () Bool)

(assert (=> bm!229703 (= call!229710 (RegexPrimitiveSize!131 (ite c!532658 (regTwo!20002 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))) (regOne!20003 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))))

(declare-fun call!229708 () Int)

(declare-fun c!532660 () Bool)

(declare-fun bm!229704 () Bool)

(assert (=> bm!229704 (= call!229708 (RegexPrimitiveSize!131 (ite c!532658 (regOne!20002 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))) (ite c!532660 (reg!10074 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))) (regTwo!20003 (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156)))))))))))

(declare-fun bm!229705 () Bool)

(assert (=> bm!229705 (= call!229709 call!229708)))

(declare-fun b!3167025 () Bool)

(assert (=> b!3167025 (= e!1972747 1)))

(declare-fun b!3167026 () Bool)

(declare-fun c!532656 () Bool)

(assert (=> b!3167026 (= c!532656 ((_ is EmptyLang!9745) (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(declare-fun e!1972749 () Int)

(assert (=> b!3167026 (= e!1972749 e!1972751)))

(declare-fun b!3167027 () Bool)

(declare-fun e!1972750 () Int)

(assert (=> b!3167027 (= e!1972750 e!1972749)))

(assert (=> b!3167027 (= c!532660 ((_ is Star!9745) (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(declare-fun b!3167028 () Bool)

(assert (=> b!3167028 (= e!1972751 0)))

(declare-fun b!3167029 () Bool)

(assert (=> b!3167029 (= e!1972749 (+ 1 call!229709))))

(declare-fun b!3167030 () Bool)

(assert (=> b!3167030 (= e!1972750 0)))

(declare-fun b!3167031 () Bool)

(declare-fun e!1972748 () Int)

(assert (=> b!3167031 (= e!1972747 e!1972748)))

(assert (=> b!3167031 (= c!532658 ((_ is Concat!15066) (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(declare-fun b!3167032 () Bool)

(declare-fun c!532657 () Bool)

(assert (=> b!3167032 (= c!532657 ((_ is EmptyExpr!9745) (ite c!532587 (regOne!20002 (regOne!20002 r!13156)) (ite c!532589 (reg!10074 (regOne!20002 r!13156)) (regTwo!20003 (regOne!20002 r!13156))))))))

(assert (=> b!3167032 (= e!1972748 e!1972750)))

(declare-fun b!3167033 () Bool)

(assert (=> b!3167033 (= e!1972748 (+ 1 call!229708 call!229710))))

(assert (= (and d!868948 c!532659) b!3167025))

(assert (= (and d!868948 (not c!532659)) b!3167031))

(assert (= (and b!3167031 c!532658) b!3167033))

(assert (= (and b!3167031 (not c!532658)) b!3167032))

(assert (= (and b!3167032 c!532657) b!3167030))

(assert (= (and b!3167032 (not c!532657)) b!3167027))

(assert (= (and b!3167027 c!532660) b!3167029))

(assert (= (and b!3167027 (not c!532660)) b!3167026))

(assert (= (and b!3167026 c!532656) b!3167028))

(assert (= (and b!3167026 (not c!532656)) b!3167024))

(assert (= (or b!3167029 b!3167024) bm!229705))

(assert (= (or b!3167033 b!3167024) bm!229703))

(assert (= (or b!3167033 bm!229705) bm!229704))

(declare-fun m!3428451 () Bool)

(assert (=> bm!229703 m!3428451))

(declare-fun m!3428453 () Bool)

(assert (=> bm!229704 m!3428453))

(assert (=> bm!229650 d!868948))

(declare-fun d!868950 () Bool)

(declare-fun lt!1064836 () Int)

(assert (=> d!868950 (>= lt!1064836 0)))

(declare-fun e!1972752 () Int)

(assert (=> d!868950 (= lt!1064836 e!1972752)))

(declare-fun c!532664 () Bool)

(assert (=> d!868950 (= c!532664 ((_ is ElementMatch!9745) (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(assert (=> d!868950 (= (RegexPrimitiveSize!131 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))) lt!1064836)))

(declare-fun b!3167034 () Bool)

(declare-fun e!1972756 () Int)

(declare-fun call!229713 () Int)

(declare-fun call!229712 () Int)

(assert (=> b!3167034 (= e!1972756 (+ 1 call!229713 call!229712))))

(declare-fun c!532663 () Bool)

(declare-fun bm!229706 () Bool)

(assert (=> bm!229706 (= call!229713 (RegexPrimitiveSize!131 (ite c!532663 (regTwo!20002 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))) (regOne!20003 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))))

(declare-fun c!532665 () Bool)

(declare-fun bm!229707 () Bool)

(declare-fun call!229711 () Int)

(assert (=> bm!229707 (= call!229711 (RegexPrimitiveSize!131 (ite c!532663 (regOne!20002 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))) (ite c!532665 (reg!10074 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))) (regTwo!20003 (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156))))))))))

(declare-fun bm!229708 () Bool)

(assert (=> bm!229708 (= call!229712 call!229711)))

(declare-fun b!3167035 () Bool)

(assert (=> b!3167035 (= e!1972752 1)))

(declare-fun b!3167036 () Bool)

(declare-fun c!532661 () Bool)

(assert (=> b!3167036 (= c!532661 ((_ is EmptyLang!9745) (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(declare-fun e!1972754 () Int)

(assert (=> b!3167036 (= e!1972754 e!1972756)))

(declare-fun b!3167037 () Bool)

(declare-fun e!1972755 () Int)

(assert (=> b!3167037 (= e!1972755 e!1972754)))

(assert (=> b!3167037 (= c!532665 ((_ is Star!9745) (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(declare-fun b!3167038 () Bool)

(assert (=> b!3167038 (= e!1972756 0)))

(declare-fun b!3167039 () Bool)

(assert (=> b!3167039 (= e!1972754 (+ 1 call!229712))))

(declare-fun b!3167040 () Bool)

(assert (=> b!3167040 (= e!1972755 0)))

(declare-fun b!3167041 () Bool)

(declare-fun e!1972753 () Int)

(assert (=> b!3167041 (= e!1972752 e!1972753)))

(assert (=> b!3167041 (= c!532663 ((_ is Concat!15066) (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(declare-fun b!3167042 () Bool)

(declare-fun c!532662 () Bool)

(assert (=> b!3167042 (= c!532662 ((_ is EmptyExpr!9745) (ite c!532587 (regTwo!20002 (regOne!20002 r!13156)) (regOne!20003 (regOne!20002 r!13156)))))))

(assert (=> b!3167042 (= e!1972753 e!1972755)))

(declare-fun b!3167043 () Bool)

(assert (=> b!3167043 (= e!1972753 (+ 1 call!229711 call!229713))))

(assert (= (and d!868950 c!532664) b!3167035))

(assert (= (and d!868950 (not c!532664)) b!3167041))

(assert (= (and b!3167041 c!532663) b!3167043))

(assert (= (and b!3167041 (not c!532663)) b!3167042))

(assert (= (and b!3167042 c!532662) b!3167040))

(assert (= (and b!3167042 (not c!532662)) b!3167037))

(assert (= (and b!3167037 c!532665) b!3167039))

(assert (= (and b!3167037 (not c!532665)) b!3167036))

(assert (= (and b!3167036 c!532661) b!3167038))

(assert (= (and b!3167036 (not c!532661)) b!3167034))

(assert (= (or b!3167039 b!3167034) bm!229708))

(assert (= (or b!3167043 b!3167034) bm!229706))

(assert (= (or b!3167043 bm!229708) bm!229707))

(declare-fun m!3428455 () Bool)

(assert (=> bm!229706 m!3428455))

(declare-fun m!3428457 () Bool)

(assert (=> bm!229707 m!3428457))

(assert (=> bm!229649 d!868950))

(declare-fun d!868952 () Bool)

(assert (=> d!868952 (= (nullable!3346 (reg!10074 r!13156)) (nullableFct!953 (reg!10074 r!13156)))))

(declare-fun bs!539535 () Bool)

(assert (= bs!539535 d!868952))

(declare-fun m!3428459 () Bool)

(assert (=> bs!539535 m!3428459))

(assert (=> b!3166758 d!868952))

(assert (=> d!868914 d!868932))

(declare-fun b!3167047 () Bool)

(declare-fun e!1972757 () Bool)

(declare-fun tp!998200 () Bool)

(declare-fun tp!998197 () Bool)

(assert (=> b!3167047 (= e!1972757 (and tp!998200 tp!998197))))

(declare-fun b!3167044 () Bool)

(assert (=> b!3167044 (= e!1972757 tp_is_empty!17053)))

(declare-fun b!3167046 () Bool)

(declare-fun tp!998198 () Bool)

(assert (=> b!3167046 (= e!1972757 tp!998198)))

(declare-fun b!3167045 () Bool)

(declare-fun tp!998196 () Bool)

(declare-fun tp!998199 () Bool)

(assert (=> b!3167045 (= e!1972757 (and tp!998196 tp!998199))))

(assert (=> b!3166839 (= tp!998151 e!1972757)))

(assert (= (and b!3166839 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167044))

(assert (= (and b!3166839 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167045))

(assert (= (and b!3166839 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167046))

(assert (= (and b!3166839 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167047))

(declare-fun b!3167051 () Bool)

(declare-fun e!1972758 () Bool)

(declare-fun tp!998205 () Bool)

(declare-fun tp!998202 () Bool)

(assert (=> b!3167051 (= e!1972758 (and tp!998205 tp!998202))))

(declare-fun b!3167048 () Bool)

(assert (=> b!3167048 (= e!1972758 tp_is_empty!17053)))

(declare-fun b!3167050 () Bool)

(declare-fun tp!998203 () Bool)

(assert (=> b!3167050 (= e!1972758 tp!998203)))

(declare-fun b!3167049 () Bool)

(declare-fun tp!998201 () Bool)

(declare-fun tp!998204 () Bool)

(assert (=> b!3167049 (= e!1972758 (and tp!998201 tp!998204))))

(assert (=> b!3166839 (= tp!998152 e!1972758)))

(assert (= (and b!3166839 ((_ is ElementMatch!9745) (_2!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167048))

(assert (= (and b!3166839 ((_ is Concat!15066) (_2!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167049))

(assert (= (and b!3166839 ((_ is Star!9745) (_2!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167050))

(assert (= (and b!3166839 ((_ is Union!9745) (_2!20417 (h!40875 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167051))

(declare-fun tp!998207 () Bool)

(declare-fun b!3167052 () Bool)

(declare-fun tp!998206 () Bool)

(declare-fun tp!998208 () Bool)

(declare-fun e!1972759 () Bool)

(assert (=> b!3167052 (= e!1972759 (and tp!998206 tp_is_empty!17053 tp!998207 tp!998208))))

(assert (=> b!3166839 (= tp!998153 e!1972759)))

(assert (= (and b!3166839 ((_ is Cons!35455) (t!234656 (minValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))) b!3167052))

(declare-fun b!3167056 () Bool)

(declare-fun e!1972760 () Bool)

(declare-fun tp!998213 () Bool)

(declare-fun tp!998210 () Bool)

(assert (=> b!3167056 (= e!1972760 (and tp!998213 tp!998210))))

(declare-fun b!3167053 () Bool)

(assert (=> b!3167053 (= e!1972760 tp_is_empty!17053)))

(declare-fun b!3167055 () Bool)

(declare-fun tp!998211 () Bool)

(assert (=> b!3167055 (= e!1972760 tp!998211)))

(declare-fun b!3167054 () Bool)

(declare-fun tp!998209 () Bool)

(declare-fun tp!998212 () Bool)

(assert (=> b!3167054 (= e!1972760 (and tp!998209 tp!998212))))

(assert (=> b!3166847 (= tp!998170 e!1972760)))

(assert (= (and b!3166847 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18896))))) b!3167053))

(assert (= (and b!3166847 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 mapDefault!18896))))) b!3167054))

(assert (= (and b!3166847 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18896))))) b!3167055))

(assert (= (and b!3166847 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18896))))) b!3167056))

(declare-fun b!3167060 () Bool)

(declare-fun e!1972761 () Bool)

(declare-fun tp!998218 () Bool)

(declare-fun tp!998215 () Bool)

(assert (=> b!3167060 (= e!1972761 (and tp!998218 tp!998215))))

(declare-fun b!3167057 () Bool)

(assert (=> b!3167057 (= e!1972761 tp_is_empty!17053)))

(declare-fun b!3167059 () Bool)

(declare-fun tp!998216 () Bool)

(assert (=> b!3167059 (= e!1972761 tp!998216)))

(declare-fun b!3167058 () Bool)

(declare-fun tp!998214 () Bool)

(declare-fun tp!998217 () Bool)

(assert (=> b!3167058 (= e!1972761 (and tp!998214 tp!998217))))

(assert (=> b!3166847 (= tp!998172 e!1972761)))

(assert (= (and b!3166847 ((_ is ElementMatch!9745) (_2!20417 (h!40875 mapDefault!18896)))) b!3167057))

(assert (= (and b!3166847 ((_ is Concat!15066) (_2!20417 (h!40875 mapDefault!18896)))) b!3167058))

(assert (= (and b!3166847 ((_ is Star!9745) (_2!20417 (h!40875 mapDefault!18896)))) b!3167059))

(assert (= (and b!3166847 ((_ is Union!9745) (_2!20417 (h!40875 mapDefault!18896)))) b!3167060))

(declare-fun b!3167061 () Bool)

(declare-fun e!1972762 () Bool)

(declare-fun tp!998221 () Bool)

(declare-fun tp!998220 () Bool)

(declare-fun tp!998219 () Bool)

(assert (=> b!3167061 (= e!1972762 (and tp!998219 tp_is_empty!17053 tp!998220 tp!998221))))

(assert (=> b!3166847 (= tp!998168 e!1972762)))

(assert (= (and b!3166847 ((_ is Cons!35455) (t!234656 mapDefault!18896))) b!3167061))

(declare-fun b!3167065 () Bool)

(declare-fun e!1972763 () Bool)

(declare-fun tp!998226 () Bool)

(declare-fun tp!998223 () Bool)

(assert (=> b!3167065 (= e!1972763 (and tp!998226 tp!998223))))

(declare-fun b!3167062 () Bool)

(assert (=> b!3167062 (= e!1972763 tp_is_empty!17053)))

(declare-fun b!3167064 () Bool)

(declare-fun tp!998224 () Bool)

(assert (=> b!3167064 (= e!1972763 tp!998224)))

(declare-fun b!3167063 () Bool)

(declare-fun tp!998222 () Bool)

(declare-fun tp!998225 () Bool)

(assert (=> b!3167063 (= e!1972763 (and tp!998222 tp!998225))))

(assert (=> b!3166857 (= tp!998188 e!1972763)))

(assert (= (and b!3166857 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18893))))) b!3167062))

(assert (= (and b!3166857 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 mapDefault!18893))))) b!3167063))

(assert (= (and b!3166857 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18893))))) b!3167064))

(assert (= (and b!3166857 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 mapDefault!18893))))) b!3167065))

(declare-fun b!3167069 () Bool)

(declare-fun e!1972764 () Bool)

(declare-fun tp!998231 () Bool)

(declare-fun tp!998228 () Bool)

(assert (=> b!3167069 (= e!1972764 (and tp!998231 tp!998228))))

(declare-fun b!3167066 () Bool)

(assert (=> b!3167066 (= e!1972764 tp_is_empty!17053)))

(declare-fun b!3167068 () Bool)

(declare-fun tp!998229 () Bool)

(assert (=> b!3167068 (= e!1972764 tp!998229)))

(declare-fun b!3167067 () Bool)

(declare-fun tp!998227 () Bool)

(declare-fun tp!998230 () Bool)

(assert (=> b!3167067 (= e!1972764 (and tp!998227 tp!998230))))

(assert (=> b!3166857 (= tp!998189 e!1972764)))

(assert (= (and b!3166857 ((_ is ElementMatch!9745) (_2!20417 (h!40875 mapDefault!18893)))) b!3167066))

(assert (= (and b!3166857 ((_ is Concat!15066) (_2!20417 (h!40875 mapDefault!18893)))) b!3167067))

(assert (= (and b!3166857 ((_ is Star!9745) (_2!20417 (h!40875 mapDefault!18893)))) b!3167068))

(assert (= (and b!3166857 ((_ is Union!9745) (_2!20417 (h!40875 mapDefault!18893)))) b!3167069))

(declare-fun e!1972765 () Bool)

(declare-fun b!3167070 () Bool)

(declare-fun tp!998232 () Bool)

(declare-fun tp!998233 () Bool)

(declare-fun tp!998234 () Bool)

(assert (=> b!3167070 (= e!1972765 (and tp!998232 tp_is_empty!17053 tp!998233 tp!998234))))

(assert (=> b!3166857 (= tp!998190 e!1972765)))

(assert (= (and b!3166857 ((_ is Cons!35455) (t!234656 mapDefault!18893))) b!3167070))

(declare-fun b!3167074 () Bool)

(declare-fun e!1972766 () Bool)

(declare-fun tp!998239 () Bool)

(declare-fun tp!998236 () Bool)

(assert (=> b!3167074 (= e!1972766 (and tp!998239 tp!998236))))

(declare-fun b!3167071 () Bool)

(assert (=> b!3167071 (= e!1972766 tp_is_empty!17053)))

(declare-fun b!3167073 () Bool)

(declare-fun tp!998237 () Bool)

(assert (=> b!3167073 (= e!1972766 tp!998237)))

(declare-fun b!3167072 () Bool)

(declare-fun tp!998235 () Bool)

(declare-fun tp!998238 () Bool)

(assert (=> b!3167072 (= e!1972766 (and tp!998235 tp!998238))))

(assert (=> b!3166861 (= tp!998195 e!1972766)))

(assert (= (and b!3166861 ((_ is ElementMatch!9745) (regOne!20003 (reg!10074 r!13156)))) b!3167071))

(assert (= (and b!3166861 ((_ is Concat!15066) (regOne!20003 (reg!10074 r!13156)))) b!3167072))

(assert (= (and b!3166861 ((_ is Star!9745) (regOne!20003 (reg!10074 r!13156)))) b!3167073))

(assert (= (and b!3166861 ((_ is Union!9745) (regOne!20003 (reg!10074 r!13156)))) b!3167074))

(declare-fun b!3167078 () Bool)

(declare-fun e!1972767 () Bool)

(declare-fun tp!998244 () Bool)

(declare-fun tp!998241 () Bool)

(assert (=> b!3167078 (= e!1972767 (and tp!998244 tp!998241))))

(declare-fun b!3167075 () Bool)

(assert (=> b!3167075 (= e!1972767 tp_is_empty!17053)))

(declare-fun b!3167077 () Bool)

(declare-fun tp!998242 () Bool)

(assert (=> b!3167077 (= e!1972767 tp!998242)))

(declare-fun b!3167076 () Bool)

(declare-fun tp!998240 () Bool)

(declare-fun tp!998243 () Bool)

(assert (=> b!3167076 (= e!1972767 (and tp!998240 tp!998243))))

(assert (=> b!3166861 (= tp!998192 e!1972767)))

(assert (= (and b!3166861 ((_ is ElementMatch!9745) (regTwo!20003 (reg!10074 r!13156)))) b!3167075))

(assert (= (and b!3166861 ((_ is Concat!15066) (regTwo!20003 (reg!10074 r!13156)))) b!3167076))

(assert (= (and b!3166861 ((_ is Star!9745) (regTwo!20003 (reg!10074 r!13156)))) b!3167077))

(assert (= (and b!3166861 ((_ is Union!9745) (regTwo!20003 (reg!10074 r!13156)))) b!3167078))

(declare-fun b!3167082 () Bool)

(declare-fun e!1972768 () Bool)

(declare-fun tp!998249 () Bool)

(declare-fun tp!998246 () Bool)

(assert (=> b!3167082 (= e!1972768 (and tp!998249 tp!998246))))

(declare-fun b!3167079 () Bool)

(assert (=> b!3167079 (= e!1972768 tp_is_empty!17053)))

(declare-fun b!3167081 () Bool)

(declare-fun tp!998247 () Bool)

(assert (=> b!3167081 (= e!1972768 tp!998247)))

(declare-fun b!3167080 () Bool)

(declare-fun tp!998245 () Bool)

(declare-fun tp!998248 () Bool)

(assert (=> b!3167080 (= e!1972768 (and tp!998245 tp!998248))))

(assert (=> b!3166846 (= tp!998174 e!1972768)))

(assert (= (and b!3166846 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18896))))) b!3167079))

(assert (= (and b!3166846 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 mapValue!18896))))) b!3167080))

(assert (= (and b!3166846 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18896))))) b!3167081))

(assert (= (and b!3166846 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18896))))) b!3167082))

(declare-fun b!3167086 () Bool)

(declare-fun e!1972769 () Bool)

(declare-fun tp!998254 () Bool)

(declare-fun tp!998251 () Bool)

(assert (=> b!3167086 (= e!1972769 (and tp!998254 tp!998251))))

(declare-fun b!3167083 () Bool)

(assert (=> b!3167083 (= e!1972769 tp_is_empty!17053)))

(declare-fun b!3167085 () Bool)

(declare-fun tp!998252 () Bool)

(assert (=> b!3167085 (= e!1972769 tp!998252)))

(declare-fun b!3167084 () Bool)

(declare-fun tp!998250 () Bool)

(declare-fun tp!998253 () Bool)

(assert (=> b!3167084 (= e!1972769 (and tp!998250 tp!998253))))

(assert (=> b!3166846 (= tp!998173 e!1972769)))

(assert (= (and b!3166846 ((_ is ElementMatch!9745) (_2!20417 (h!40875 mapValue!18896)))) b!3167083))

(assert (= (and b!3166846 ((_ is Concat!15066) (_2!20417 (h!40875 mapValue!18896)))) b!3167084))

(assert (= (and b!3166846 ((_ is Star!9745) (_2!20417 (h!40875 mapValue!18896)))) b!3167085))

(assert (= (and b!3166846 ((_ is Union!9745) (_2!20417 (h!40875 mapValue!18896)))) b!3167086))

(declare-fun b!3167087 () Bool)

(declare-fun tp!998257 () Bool)

(declare-fun tp!998255 () Bool)

(declare-fun tp!998256 () Bool)

(declare-fun e!1972770 () Bool)

(assert (=> b!3167087 (= e!1972770 (and tp!998255 tp_is_empty!17053 tp!998256 tp!998257))))

(assert (=> b!3166846 (= tp!998169 e!1972770)))

(assert (= (and b!3166846 ((_ is Cons!35455) (t!234656 mapValue!18896))) b!3167087))

(declare-fun b!3167091 () Bool)

(declare-fun e!1972771 () Bool)

(declare-fun tp!998262 () Bool)

(declare-fun tp!998259 () Bool)

(assert (=> b!3167091 (= e!1972771 (and tp!998262 tp!998259))))

(declare-fun b!3167088 () Bool)

(assert (=> b!3167088 (= e!1972771 tp_is_empty!17053)))

(declare-fun b!3167090 () Bool)

(declare-fun tp!998260 () Bool)

(assert (=> b!3167090 (= e!1972771 tp!998260)))

(declare-fun b!3167089 () Bool)

(declare-fun tp!998258 () Bool)

(declare-fun tp!998261 () Bool)

(assert (=> b!3167089 (= e!1972771 (and tp!998258 tp!998261))))

(assert (=> b!3166860 (= tp!998193 e!1972771)))

(assert (= (and b!3166860 ((_ is ElementMatch!9745) (reg!10074 (reg!10074 r!13156)))) b!3167088))

(assert (= (and b!3166860 ((_ is Concat!15066) (reg!10074 (reg!10074 r!13156)))) b!3167089))

(assert (= (and b!3166860 ((_ is Star!9745) (reg!10074 (reg!10074 r!13156)))) b!3167090))

(assert (= (and b!3166860 ((_ is Union!9745) (reg!10074 (reg!10074 r!13156)))) b!3167091))

(declare-fun mapNonEmpty!18897 () Bool)

(declare-fun mapRes!18897 () Bool)

(declare-fun tp!998266 () Bool)

(declare-fun e!1972773 () Bool)

(assert (=> mapNonEmpty!18897 (= mapRes!18897 (and tp!998266 e!1972773))))

(declare-fun mapRest!18897 () (Array (_ BitVec 32) List!35579))

(declare-fun mapKey!18897 () (_ BitVec 32))

(declare-fun mapValue!18897 () List!35579)

(assert (=> mapNonEmpty!18897 (= mapRest!18896 (store mapRest!18897 mapKey!18897 mapValue!18897))))

(declare-fun b!3167092 () Bool)

(declare-fun tp!998264 () Bool)

(declare-fun tp!998268 () Bool)

(declare-fun tp!998269 () Bool)

(assert (=> b!3167092 (= e!1972773 (and tp!998269 tp_is_empty!17053 tp!998268 tp!998264))))

(declare-fun condMapEmpty!18897 () Bool)

(declare-fun mapDefault!18897 () List!35579)

(assert (=> mapNonEmpty!18896 (= condMapEmpty!18897 (= mapRest!18896 ((as const (Array (_ BitVec 32) List!35579)) mapDefault!18897)))))

(declare-fun e!1972772 () Bool)

(assert (=> mapNonEmpty!18896 (= tp!998171 (and e!1972772 mapRes!18897))))

(declare-fun tp!998265 () Bool)

(declare-fun tp!998267 () Bool)

(declare-fun b!3167093 () Bool)

(declare-fun tp!998263 () Bool)

(assert (=> b!3167093 (= e!1972772 (and tp!998265 tp_is_empty!17053 tp!998267 tp!998263))))

(declare-fun mapIsEmpty!18897 () Bool)

(assert (=> mapIsEmpty!18897 mapRes!18897))

(assert (= (and mapNonEmpty!18896 condMapEmpty!18897) mapIsEmpty!18897))

(assert (= (and mapNonEmpty!18896 (not condMapEmpty!18897)) mapNonEmpty!18897))

(assert (= (and mapNonEmpty!18897 ((_ is Cons!35455) mapValue!18897)) b!3167092))

(assert (= (and mapNonEmpty!18896 ((_ is Cons!35455) mapDefault!18897)) b!3167093))

(declare-fun m!3428461 () Bool)

(assert (=> mapNonEmpty!18897 m!3428461))

(declare-fun b!3167097 () Bool)

(declare-fun e!1972774 () Bool)

(declare-fun tp!998274 () Bool)

(declare-fun tp!998271 () Bool)

(assert (=> b!3167097 (= e!1972774 (and tp!998274 tp!998271))))

(declare-fun b!3167094 () Bool)

(assert (=> b!3167094 (= e!1972774 tp_is_empty!17053)))

(declare-fun b!3167096 () Bool)

(declare-fun tp!998272 () Bool)

(assert (=> b!3167096 (= e!1972774 tp!998272)))

(declare-fun b!3167095 () Bool)

(declare-fun tp!998270 () Bool)

(declare-fun tp!998273 () Bool)

(assert (=> b!3167095 (= e!1972774 (and tp!998270 tp!998273))))

(assert (=> b!3166859 (= tp!998191 e!1972774)))

(assert (= (and b!3166859 ((_ is ElementMatch!9745) (regOne!20002 (reg!10074 r!13156)))) b!3167094))

(assert (= (and b!3166859 ((_ is Concat!15066) (regOne!20002 (reg!10074 r!13156)))) b!3167095))

(assert (= (and b!3166859 ((_ is Star!9745) (regOne!20002 (reg!10074 r!13156)))) b!3167096))

(assert (= (and b!3166859 ((_ is Union!9745) (regOne!20002 (reg!10074 r!13156)))) b!3167097))

(declare-fun b!3167101 () Bool)

(declare-fun e!1972775 () Bool)

(declare-fun tp!998279 () Bool)

(declare-fun tp!998276 () Bool)

(assert (=> b!3167101 (= e!1972775 (and tp!998279 tp!998276))))

(declare-fun b!3167098 () Bool)

(assert (=> b!3167098 (= e!1972775 tp_is_empty!17053)))

(declare-fun b!3167100 () Bool)

(declare-fun tp!998277 () Bool)

(assert (=> b!3167100 (= e!1972775 tp!998277)))

(declare-fun b!3167099 () Bool)

(declare-fun tp!998275 () Bool)

(declare-fun tp!998278 () Bool)

(assert (=> b!3167099 (= e!1972775 (and tp!998275 tp!998278))))

(assert (=> b!3166859 (= tp!998194 e!1972775)))

(assert (= (and b!3166859 ((_ is ElementMatch!9745) (regTwo!20002 (reg!10074 r!13156)))) b!3167098))

(assert (= (and b!3166859 ((_ is Concat!15066) (regTwo!20002 (reg!10074 r!13156)))) b!3167099))

(assert (= (and b!3166859 ((_ is Star!9745) (regTwo!20002 (reg!10074 r!13156)))) b!3167100))

(assert (= (and b!3166859 ((_ is Union!9745) (regTwo!20002 (reg!10074 r!13156)))) b!3167101))

(declare-fun b!3167105 () Bool)

(declare-fun e!1972776 () Bool)

(declare-fun tp!998284 () Bool)

(declare-fun tp!998281 () Bool)

(assert (=> b!3167105 (= e!1972776 (and tp!998284 tp!998281))))

(declare-fun b!3167102 () Bool)

(assert (=> b!3167102 (= e!1972776 tp_is_empty!17053)))

(declare-fun b!3167104 () Bool)

(declare-fun tp!998282 () Bool)

(assert (=> b!3167104 (= e!1972776 tp!998282)))

(declare-fun b!3167103 () Bool)

(declare-fun tp!998280 () Bool)

(declare-fun tp!998283 () Bool)

(assert (=> b!3167103 (= e!1972776 (and tp!998280 tp!998283))))

(assert (=> b!3166829 (= tp!998136 e!1972776)))

(assert (= (and b!3166829 ((_ is ElementMatch!9745) (regOne!20003 (regOne!20003 r!13156)))) b!3167102))

(assert (= (and b!3166829 ((_ is Concat!15066) (regOne!20003 (regOne!20003 r!13156)))) b!3167103))

(assert (= (and b!3166829 ((_ is Star!9745) (regOne!20003 (regOne!20003 r!13156)))) b!3167104))

(assert (= (and b!3166829 ((_ is Union!9745) (regOne!20003 (regOne!20003 r!13156)))) b!3167105))

(declare-fun b!3167109 () Bool)

(declare-fun e!1972777 () Bool)

(declare-fun tp!998289 () Bool)

(declare-fun tp!998286 () Bool)

(assert (=> b!3167109 (= e!1972777 (and tp!998289 tp!998286))))

(declare-fun b!3167106 () Bool)

(assert (=> b!3167106 (= e!1972777 tp_is_empty!17053)))

(declare-fun b!3167108 () Bool)

(declare-fun tp!998287 () Bool)

(assert (=> b!3167108 (= e!1972777 tp!998287)))

(declare-fun b!3167107 () Bool)

(declare-fun tp!998285 () Bool)

(declare-fun tp!998288 () Bool)

(assert (=> b!3167107 (= e!1972777 (and tp!998285 tp!998288))))

(assert (=> b!3166829 (= tp!998133 e!1972777)))

(assert (= (and b!3166829 ((_ is ElementMatch!9745) (regTwo!20003 (regOne!20003 r!13156)))) b!3167106))

(assert (= (and b!3166829 ((_ is Concat!15066) (regTwo!20003 (regOne!20003 r!13156)))) b!3167107))

(assert (= (and b!3166829 ((_ is Star!9745) (regTwo!20003 (regOne!20003 r!13156)))) b!3167108))

(assert (= (and b!3166829 ((_ is Union!9745) (regTwo!20003 (regOne!20003 r!13156)))) b!3167109))

(declare-fun b!3167113 () Bool)

(declare-fun e!1972778 () Bool)

(declare-fun tp!998294 () Bool)

(declare-fun tp!998291 () Bool)

(assert (=> b!3167113 (= e!1972778 (and tp!998294 tp!998291))))

(declare-fun b!3167110 () Bool)

(assert (=> b!3167110 (= e!1972778 tp_is_empty!17053)))

(declare-fun b!3167112 () Bool)

(declare-fun tp!998292 () Bool)

(assert (=> b!3167112 (= e!1972778 tp!998292)))

(declare-fun b!3167111 () Bool)

(declare-fun tp!998290 () Bool)

(declare-fun tp!998293 () Bool)

(assert (=> b!3167111 (= e!1972778 (and tp!998290 tp!998293))))

(assert (=> b!3166848 (= tp!998175 e!1972778)))

(assert (= (and b!3166848 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18893))))) b!3167110))

(assert (= (and b!3166848 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 mapValue!18893))))) b!3167111))

(assert (= (and b!3166848 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18893))))) b!3167112))

(assert (= (and b!3166848 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 mapValue!18893))))) b!3167113))

(declare-fun b!3167117 () Bool)

(declare-fun e!1972779 () Bool)

(declare-fun tp!998299 () Bool)

(declare-fun tp!998296 () Bool)

(assert (=> b!3167117 (= e!1972779 (and tp!998299 tp!998296))))

(declare-fun b!3167114 () Bool)

(assert (=> b!3167114 (= e!1972779 tp_is_empty!17053)))

(declare-fun b!3167116 () Bool)

(declare-fun tp!998297 () Bool)

(assert (=> b!3167116 (= e!1972779 tp!998297)))

(declare-fun b!3167115 () Bool)

(declare-fun tp!998295 () Bool)

(declare-fun tp!998298 () Bool)

(assert (=> b!3167115 (= e!1972779 (and tp!998295 tp!998298))))

(assert (=> b!3166848 (= tp!998176 e!1972779)))

(assert (= (and b!3166848 ((_ is ElementMatch!9745) (_2!20417 (h!40875 mapValue!18893)))) b!3167114))

(assert (= (and b!3166848 ((_ is Concat!15066) (_2!20417 (h!40875 mapValue!18893)))) b!3167115))

(assert (= (and b!3166848 ((_ is Star!9745) (_2!20417 (h!40875 mapValue!18893)))) b!3167116))

(assert (= (and b!3166848 ((_ is Union!9745) (_2!20417 (h!40875 mapValue!18893)))) b!3167117))

(declare-fun tp!998302 () Bool)

(declare-fun b!3167118 () Bool)

(declare-fun tp!998301 () Bool)

(declare-fun e!1972780 () Bool)

(declare-fun tp!998300 () Bool)

(assert (=> b!3167118 (= e!1972780 (and tp!998300 tp_is_empty!17053 tp!998301 tp!998302))))

(assert (=> b!3166848 (= tp!998177 e!1972780)))

(assert (= (and b!3166848 ((_ is Cons!35455) (t!234656 mapValue!18893))) b!3167118))

(declare-fun b!3167122 () Bool)

(declare-fun e!1972781 () Bool)

(declare-fun tp!998307 () Bool)

(declare-fun tp!998304 () Bool)

(assert (=> b!3167122 (= e!1972781 (and tp!998307 tp!998304))))

(declare-fun b!3167119 () Bool)

(assert (=> b!3167119 (= e!1972781 tp_is_empty!17053)))

(declare-fun b!3167121 () Bool)

(declare-fun tp!998305 () Bool)

(assert (=> b!3167121 (= e!1972781 tp!998305)))

(declare-fun b!3167120 () Bool)

(declare-fun tp!998303 () Bool)

(declare-fun tp!998306 () Bool)

(assert (=> b!3167120 (= e!1972781 (and tp!998303 tp!998306))))

(assert (=> b!3166833 (= tp!998141 e!1972781)))

(assert (= (and b!3166833 ((_ is ElementMatch!9745) (regOne!20003 (regTwo!20003 r!13156)))) b!3167119))

(assert (= (and b!3166833 ((_ is Concat!15066) (regOne!20003 (regTwo!20003 r!13156)))) b!3167120))

(assert (= (and b!3166833 ((_ is Star!9745) (regOne!20003 (regTwo!20003 r!13156)))) b!3167121))

(assert (= (and b!3166833 ((_ is Union!9745) (regOne!20003 (regTwo!20003 r!13156)))) b!3167122))

(declare-fun b!3167126 () Bool)

(declare-fun e!1972782 () Bool)

(declare-fun tp!998312 () Bool)

(declare-fun tp!998309 () Bool)

(assert (=> b!3167126 (= e!1972782 (and tp!998312 tp!998309))))

(declare-fun b!3167123 () Bool)

(assert (=> b!3167123 (= e!1972782 tp_is_empty!17053)))

(declare-fun b!3167125 () Bool)

(declare-fun tp!998310 () Bool)

(assert (=> b!3167125 (= e!1972782 tp!998310)))

(declare-fun b!3167124 () Bool)

(declare-fun tp!998308 () Bool)

(declare-fun tp!998311 () Bool)

(assert (=> b!3167124 (= e!1972782 (and tp!998308 tp!998311))))

(assert (=> b!3166833 (= tp!998138 e!1972782)))

(assert (= (and b!3166833 ((_ is ElementMatch!9745) (regTwo!20003 (regTwo!20003 r!13156)))) b!3167123))

(assert (= (and b!3166833 ((_ is Concat!15066) (regTwo!20003 (regTwo!20003 r!13156)))) b!3167124))

(assert (= (and b!3166833 ((_ is Star!9745) (regTwo!20003 (regTwo!20003 r!13156)))) b!3167125))

(assert (= (and b!3166833 ((_ is Union!9745) (regTwo!20003 (regTwo!20003 r!13156)))) b!3167126))

(declare-fun b!3167130 () Bool)

(declare-fun e!1972783 () Bool)

(declare-fun tp!998317 () Bool)

(declare-fun tp!998314 () Bool)

(assert (=> b!3167130 (= e!1972783 (and tp!998317 tp!998314))))

(declare-fun b!3167127 () Bool)

(assert (=> b!3167127 (= e!1972783 tp_is_empty!17053)))

(declare-fun b!3167129 () Bool)

(declare-fun tp!998315 () Bool)

(assert (=> b!3167129 (= e!1972783 tp!998315)))

(declare-fun b!3167128 () Bool)

(declare-fun tp!998313 () Bool)

(declare-fun tp!998316 () Bool)

(assert (=> b!3167128 (= e!1972783 (and tp!998313 tp!998316))))

(assert (=> b!3166838 (= tp!998148 e!1972783)))

(assert (= (and b!3166838 ((_ is ElementMatch!9745) (_1!20416 (_1!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167127))

(assert (= (and b!3166838 ((_ is Concat!15066) (_1!20416 (_1!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167128))

(assert (= (and b!3166838 ((_ is Star!9745) (_1!20416 (_1!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167129))

(assert (= (and b!3166838 ((_ is Union!9745) (_1!20416 (_1!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))))) b!3167130))

(declare-fun b!3167134 () Bool)

(declare-fun e!1972784 () Bool)

(declare-fun tp!998322 () Bool)

(declare-fun tp!998319 () Bool)

(assert (=> b!3167134 (= e!1972784 (and tp!998322 tp!998319))))

(declare-fun b!3167131 () Bool)

(assert (=> b!3167131 (= e!1972784 tp_is_empty!17053)))

(declare-fun b!3167133 () Bool)

(declare-fun tp!998320 () Bool)

(assert (=> b!3167133 (= e!1972784 tp!998320)))

(declare-fun b!3167132 () Bool)

(declare-fun tp!998318 () Bool)

(declare-fun tp!998321 () Bool)

(assert (=> b!3167132 (= e!1972784 (and tp!998318 tp!998321))))

(assert (=> b!3166838 (= tp!998149 e!1972784)))

(assert (= (and b!3166838 ((_ is ElementMatch!9745) (_2!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167131))

(assert (= (and b!3166838 ((_ is Concat!15066) (_2!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167132))

(assert (= (and b!3166838 ((_ is Star!9745) (_2!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167133))

(assert (= (and b!3166838 ((_ is Union!9745) (_2!20417 (h!40875 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347)))))))))) b!3167134))

(declare-fun tp!998324 () Bool)

(declare-fun e!1972785 () Bool)

(declare-fun b!3167135 () Bool)

(declare-fun tp!998325 () Bool)

(declare-fun tp!998323 () Bool)

(assert (=> b!3167135 (= e!1972785 (and tp!998323 tp_is_empty!17053 tp!998324 tp!998325))))

(assert (=> b!3166838 (= tp!998150 e!1972785)))

(assert (= (and b!3166838 ((_ is Cons!35455) (t!234656 (zeroValue!4425 (v!35151 (underlying!8561 (v!35152 (underlying!8562 (cache!4216 cache!347))))))))) b!3167135))

(declare-fun b!3167139 () Bool)

(declare-fun e!1972786 () Bool)

(declare-fun tp!998330 () Bool)

(declare-fun tp!998327 () Bool)

(assert (=> b!3167139 (= e!1972786 (and tp!998330 tp!998327))))

(declare-fun b!3167136 () Bool)

(assert (=> b!3167136 (= e!1972786 tp_is_empty!17053)))

(declare-fun b!3167138 () Bool)

(declare-fun tp!998328 () Bool)

(assert (=> b!3167138 (= e!1972786 tp!998328)))

(declare-fun b!3167137 () Bool)

(declare-fun tp!998326 () Bool)

(declare-fun tp!998329 () Bool)

(assert (=> b!3167137 (= e!1972786 (and tp!998326 tp!998329))))

(assert (=> b!3166828 (= tp!998134 e!1972786)))

(assert (= (and b!3166828 ((_ is ElementMatch!9745) (reg!10074 (regOne!20003 r!13156)))) b!3167136))

(assert (= (and b!3166828 ((_ is Concat!15066) (reg!10074 (regOne!20003 r!13156)))) b!3167137))

(assert (= (and b!3166828 ((_ is Star!9745) (reg!10074 (regOne!20003 r!13156)))) b!3167138))

(assert (= (and b!3166828 ((_ is Union!9745) (reg!10074 (regOne!20003 r!13156)))) b!3167139))

(declare-fun b!3167143 () Bool)

(declare-fun e!1972787 () Bool)

(declare-fun tp!998335 () Bool)

(declare-fun tp!998332 () Bool)

(assert (=> b!3167143 (= e!1972787 (and tp!998335 tp!998332))))

(declare-fun b!3167140 () Bool)

(assert (=> b!3167140 (= e!1972787 tp_is_empty!17053)))

(declare-fun b!3167142 () Bool)

(declare-fun tp!998333 () Bool)

(assert (=> b!3167142 (= e!1972787 tp!998333)))

(declare-fun b!3167141 () Bool)

(declare-fun tp!998331 () Bool)

(declare-fun tp!998334 () Bool)

(assert (=> b!3167141 (= e!1972787 (and tp!998331 tp!998334))))

(assert (=> b!3166852 (= tp!998182 e!1972787)))

(assert (= (and b!3166852 ((_ is ElementMatch!9745) (regOne!20003 (regOne!20002 r!13156)))) b!3167140))

(assert (= (and b!3166852 ((_ is Concat!15066) (regOne!20003 (regOne!20002 r!13156)))) b!3167141))

(assert (= (and b!3166852 ((_ is Star!9745) (regOne!20003 (regOne!20002 r!13156)))) b!3167142))

(assert (= (and b!3166852 ((_ is Union!9745) (regOne!20003 (regOne!20002 r!13156)))) b!3167143))

(declare-fun b!3167147 () Bool)

(declare-fun e!1972788 () Bool)

(declare-fun tp!998340 () Bool)

(declare-fun tp!998337 () Bool)

(assert (=> b!3167147 (= e!1972788 (and tp!998340 tp!998337))))

(declare-fun b!3167144 () Bool)

(assert (=> b!3167144 (= e!1972788 tp_is_empty!17053)))

(declare-fun b!3167146 () Bool)

(declare-fun tp!998338 () Bool)

(assert (=> b!3167146 (= e!1972788 tp!998338)))

(declare-fun b!3167145 () Bool)

(declare-fun tp!998336 () Bool)

(declare-fun tp!998339 () Bool)

(assert (=> b!3167145 (= e!1972788 (and tp!998336 tp!998339))))

(assert (=> b!3166852 (= tp!998179 e!1972788)))

(assert (= (and b!3166852 ((_ is ElementMatch!9745) (regTwo!20003 (regOne!20002 r!13156)))) b!3167144))

(assert (= (and b!3166852 ((_ is Concat!15066) (regTwo!20003 (regOne!20002 r!13156)))) b!3167145))

(assert (= (and b!3166852 ((_ is Star!9745) (regTwo!20003 (regOne!20002 r!13156)))) b!3167146))

(assert (= (and b!3166852 ((_ is Union!9745) (regTwo!20003 (regOne!20002 r!13156)))) b!3167147))

(declare-fun b!3167151 () Bool)

(declare-fun e!1972789 () Bool)

(declare-fun tp!998345 () Bool)

(declare-fun tp!998342 () Bool)

(assert (=> b!3167151 (= e!1972789 (and tp!998345 tp!998342))))

(declare-fun b!3167148 () Bool)

(assert (=> b!3167148 (= e!1972789 tp_is_empty!17053)))

(declare-fun b!3167150 () Bool)

(declare-fun tp!998343 () Bool)

(assert (=> b!3167150 (= e!1972789 tp!998343)))

(declare-fun b!3167149 () Bool)

(declare-fun tp!998341 () Bool)

(declare-fun tp!998344 () Bool)

(assert (=> b!3167149 (= e!1972789 (and tp!998341 tp!998344))))

(assert (=> b!3166832 (= tp!998139 e!1972789)))

(assert (= (and b!3166832 ((_ is ElementMatch!9745) (reg!10074 (regTwo!20003 r!13156)))) b!3167148))

(assert (= (and b!3166832 ((_ is Concat!15066) (reg!10074 (regTwo!20003 r!13156)))) b!3167149))

(assert (= (and b!3166832 ((_ is Star!9745) (reg!10074 (regTwo!20003 r!13156)))) b!3167150))

(assert (= (and b!3166832 ((_ is Union!9745) (reg!10074 (regTwo!20003 r!13156)))) b!3167151))

(declare-fun b!3167155 () Bool)

(declare-fun e!1972790 () Bool)

(declare-fun tp!998350 () Bool)

(declare-fun tp!998347 () Bool)

(assert (=> b!3167155 (= e!1972790 (and tp!998350 tp!998347))))

(declare-fun b!3167152 () Bool)

(assert (=> b!3167152 (= e!1972790 tp_is_empty!17053)))

(declare-fun b!3167154 () Bool)

(declare-fun tp!998348 () Bool)

(assert (=> b!3167154 (= e!1972790 tp!998348)))

(declare-fun b!3167153 () Bool)

(declare-fun tp!998346 () Bool)

(declare-fun tp!998349 () Bool)

(assert (=> b!3167153 (= e!1972790 (and tp!998346 tp!998349))))

(assert (=> b!3166856 (= tp!998187 e!1972790)))

(assert (= (and b!3166856 ((_ is ElementMatch!9745) (regOne!20003 (regTwo!20002 r!13156)))) b!3167152))

(assert (= (and b!3166856 ((_ is Concat!15066) (regOne!20003 (regTwo!20002 r!13156)))) b!3167153))

(assert (= (and b!3166856 ((_ is Star!9745) (regOne!20003 (regTwo!20002 r!13156)))) b!3167154))

(assert (= (and b!3166856 ((_ is Union!9745) (regOne!20003 (regTwo!20002 r!13156)))) b!3167155))

(declare-fun b!3167159 () Bool)

(declare-fun e!1972791 () Bool)

(declare-fun tp!998355 () Bool)

(declare-fun tp!998352 () Bool)

(assert (=> b!3167159 (= e!1972791 (and tp!998355 tp!998352))))

(declare-fun b!3167156 () Bool)

(assert (=> b!3167156 (= e!1972791 tp_is_empty!17053)))

(declare-fun b!3167158 () Bool)

(declare-fun tp!998353 () Bool)

(assert (=> b!3167158 (= e!1972791 tp!998353)))

(declare-fun b!3167157 () Bool)

(declare-fun tp!998351 () Bool)

(declare-fun tp!998354 () Bool)

(assert (=> b!3167157 (= e!1972791 (and tp!998351 tp!998354))))

(assert (=> b!3166856 (= tp!998184 e!1972791)))

(assert (= (and b!3166856 ((_ is ElementMatch!9745) (regTwo!20003 (regTwo!20002 r!13156)))) b!3167156))

(assert (= (and b!3166856 ((_ is Concat!15066) (regTwo!20003 (regTwo!20002 r!13156)))) b!3167157))

(assert (= (and b!3166856 ((_ is Star!9745) (regTwo!20003 (regTwo!20002 r!13156)))) b!3167158))

(assert (= (and b!3166856 ((_ is Union!9745) (regTwo!20003 (regTwo!20002 r!13156)))) b!3167159))

(declare-fun b!3167163 () Bool)

(declare-fun e!1972792 () Bool)

(declare-fun tp!998360 () Bool)

(declare-fun tp!998357 () Bool)

(assert (=> b!3167163 (= e!1972792 (and tp!998360 tp!998357))))

(declare-fun b!3167160 () Bool)

(assert (=> b!3167160 (= e!1972792 tp_is_empty!17053)))

(declare-fun b!3167162 () Bool)

(declare-fun tp!998358 () Bool)

(assert (=> b!3167162 (= e!1972792 tp!998358)))

(declare-fun b!3167161 () Bool)

(declare-fun tp!998356 () Bool)

(declare-fun tp!998359 () Bool)

(assert (=> b!3167161 (= e!1972792 (and tp!998356 tp!998359))))

(assert (=> b!3166827 (= tp!998132 e!1972792)))

(assert (= (and b!3166827 ((_ is ElementMatch!9745) (regOne!20002 (regOne!20003 r!13156)))) b!3167160))

(assert (= (and b!3166827 ((_ is Concat!15066) (regOne!20002 (regOne!20003 r!13156)))) b!3167161))

(assert (= (and b!3166827 ((_ is Star!9745) (regOne!20002 (regOne!20003 r!13156)))) b!3167162))

(assert (= (and b!3166827 ((_ is Union!9745) (regOne!20002 (regOne!20003 r!13156)))) b!3167163))

(declare-fun b!3167167 () Bool)

(declare-fun e!1972793 () Bool)

(declare-fun tp!998365 () Bool)

(declare-fun tp!998362 () Bool)

(assert (=> b!3167167 (= e!1972793 (and tp!998365 tp!998362))))

(declare-fun b!3167164 () Bool)

(assert (=> b!3167164 (= e!1972793 tp_is_empty!17053)))

(declare-fun b!3167166 () Bool)

(declare-fun tp!998363 () Bool)

(assert (=> b!3167166 (= e!1972793 tp!998363)))

(declare-fun b!3167165 () Bool)

(declare-fun tp!998361 () Bool)

(declare-fun tp!998364 () Bool)

(assert (=> b!3167165 (= e!1972793 (and tp!998361 tp!998364))))

(assert (=> b!3166827 (= tp!998135 e!1972793)))

(assert (= (and b!3166827 ((_ is ElementMatch!9745) (regTwo!20002 (regOne!20003 r!13156)))) b!3167164))

(assert (= (and b!3166827 ((_ is Concat!15066) (regTwo!20002 (regOne!20003 r!13156)))) b!3167165))

(assert (= (and b!3166827 ((_ is Star!9745) (regTwo!20002 (regOne!20003 r!13156)))) b!3167166))

(assert (= (and b!3166827 ((_ is Union!9745) (regTwo!20002 (regOne!20003 r!13156)))) b!3167167))

(declare-fun b!3167171 () Bool)

(declare-fun e!1972794 () Bool)

(declare-fun tp!998370 () Bool)

(declare-fun tp!998367 () Bool)

(assert (=> b!3167171 (= e!1972794 (and tp!998370 tp!998367))))

(declare-fun b!3167168 () Bool)

(assert (=> b!3167168 (= e!1972794 tp_is_empty!17053)))

(declare-fun b!3167170 () Bool)

(declare-fun tp!998368 () Bool)

(assert (=> b!3167170 (= e!1972794 tp!998368)))

(declare-fun b!3167169 () Bool)

(declare-fun tp!998366 () Bool)

(declare-fun tp!998369 () Bool)

(assert (=> b!3167169 (= e!1972794 (and tp!998366 tp!998369))))

(assert (=> b!3166851 (= tp!998180 e!1972794)))

(assert (= (and b!3166851 ((_ is ElementMatch!9745) (reg!10074 (regOne!20002 r!13156)))) b!3167168))

(assert (= (and b!3166851 ((_ is Concat!15066) (reg!10074 (regOne!20002 r!13156)))) b!3167169))

(assert (= (and b!3166851 ((_ is Star!9745) (reg!10074 (regOne!20002 r!13156)))) b!3167170))

(assert (= (and b!3166851 ((_ is Union!9745) (reg!10074 (regOne!20002 r!13156)))) b!3167171))

(declare-fun b!3167175 () Bool)

(declare-fun e!1972795 () Bool)

(declare-fun tp!998375 () Bool)

(declare-fun tp!998372 () Bool)

(assert (=> b!3167175 (= e!1972795 (and tp!998375 tp!998372))))

(declare-fun b!3167172 () Bool)

(assert (=> b!3167172 (= e!1972795 tp_is_empty!17053)))

(declare-fun b!3167174 () Bool)

(declare-fun tp!998373 () Bool)

(assert (=> b!3167174 (= e!1972795 tp!998373)))

(declare-fun b!3167173 () Bool)

(declare-fun tp!998371 () Bool)

(declare-fun tp!998374 () Bool)

(assert (=> b!3167173 (= e!1972795 (and tp!998371 tp!998374))))

(assert (=> b!3166831 (= tp!998137 e!1972795)))

(assert (= (and b!3166831 ((_ is ElementMatch!9745) (regOne!20002 (regTwo!20003 r!13156)))) b!3167172))

(assert (= (and b!3166831 ((_ is Concat!15066) (regOne!20002 (regTwo!20003 r!13156)))) b!3167173))

(assert (= (and b!3166831 ((_ is Star!9745) (regOne!20002 (regTwo!20003 r!13156)))) b!3167174))

(assert (= (and b!3166831 ((_ is Union!9745) (regOne!20002 (regTwo!20003 r!13156)))) b!3167175))

(declare-fun b!3167179 () Bool)

(declare-fun e!1972796 () Bool)

(declare-fun tp!998380 () Bool)

(declare-fun tp!998377 () Bool)

(assert (=> b!3167179 (= e!1972796 (and tp!998380 tp!998377))))

(declare-fun b!3167176 () Bool)

(assert (=> b!3167176 (= e!1972796 tp_is_empty!17053)))

(declare-fun b!3167178 () Bool)

(declare-fun tp!998378 () Bool)

(assert (=> b!3167178 (= e!1972796 tp!998378)))

(declare-fun b!3167177 () Bool)

(declare-fun tp!998376 () Bool)

(declare-fun tp!998379 () Bool)

(assert (=> b!3167177 (= e!1972796 (and tp!998376 tp!998379))))

(assert (=> b!3166831 (= tp!998140 e!1972796)))

(assert (= (and b!3166831 ((_ is ElementMatch!9745) (regTwo!20002 (regTwo!20003 r!13156)))) b!3167176))

(assert (= (and b!3166831 ((_ is Concat!15066) (regTwo!20002 (regTwo!20003 r!13156)))) b!3167177))

(assert (= (and b!3166831 ((_ is Star!9745) (regTwo!20002 (regTwo!20003 r!13156)))) b!3167178))

(assert (= (and b!3166831 ((_ is Union!9745) (regTwo!20002 (regTwo!20003 r!13156)))) b!3167179))

(declare-fun b!3167183 () Bool)

(declare-fun e!1972797 () Bool)

(declare-fun tp!998385 () Bool)

(declare-fun tp!998382 () Bool)

(assert (=> b!3167183 (= e!1972797 (and tp!998385 tp!998382))))

(declare-fun b!3167180 () Bool)

(assert (=> b!3167180 (= e!1972797 tp_is_empty!17053)))

(declare-fun b!3167182 () Bool)

(declare-fun tp!998383 () Bool)

(assert (=> b!3167182 (= e!1972797 tp!998383)))

(declare-fun b!3167181 () Bool)

(declare-fun tp!998381 () Bool)

(declare-fun tp!998384 () Bool)

(assert (=> b!3167181 (= e!1972797 (and tp!998381 tp!998384))))

(assert (=> b!3166855 (= tp!998185 e!1972797)))

(assert (= (and b!3166855 ((_ is ElementMatch!9745) (reg!10074 (regTwo!20002 r!13156)))) b!3167180))

(assert (= (and b!3166855 ((_ is Concat!15066) (reg!10074 (regTwo!20002 r!13156)))) b!3167181))

(assert (= (and b!3166855 ((_ is Star!9745) (reg!10074 (regTwo!20002 r!13156)))) b!3167182))

(assert (= (and b!3166855 ((_ is Union!9745) (reg!10074 (regTwo!20002 r!13156)))) b!3167183))

(declare-fun b!3167187 () Bool)

(declare-fun e!1972798 () Bool)

(declare-fun tp!998390 () Bool)

(declare-fun tp!998387 () Bool)

(assert (=> b!3167187 (= e!1972798 (and tp!998390 tp!998387))))

(declare-fun b!3167184 () Bool)

(assert (=> b!3167184 (= e!1972798 tp_is_empty!17053)))

(declare-fun b!3167186 () Bool)

(declare-fun tp!998388 () Bool)

(assert (=> b!3167186 (= e!1972798 tp!998388)))

(declare-fun b!3167185 () Bool)

(declare-fun tp!998386 () Bool)

(declare-fun tp!998389 () Bool)

(assert (=> b!3167185 (= e!1972798 (and tp!998386 tp!998389))))

(assert (=> b!3166850 (= tp!998178 e!1972798)))

(assert (= (and b!3166850 ((_ is ElementMatch!9745) (regOne!20002 (regOne!20002 r!13156)))) b!3167184))

(assert (= (and b!3166850 ((_ is Concat!15066) (regOne!20002 (regOne!20002 r!13156)))) b!3167185))

(assert (= (and b!3166850 ((_ is Star!9745) (regOne!20002 (regOne!20002 r!13156)))) b!3167186))

(assert (= (and b!3166850 ((_ is Union!9745) (regOne!20002 (regOne!20002 r!13156)))) b!3167187))

(declare-fun b!3167191 () Bool)

(declare-fun e!1972799 () Bool)

(declare-fun tp!998395 () Bool)

(declare-fun tp!998392 () Bool)

(assert (=> b!3167191 (= e!1972799 (and tp!998395 tp!998392))))

(declare-fun b!3167188 () Bool)

(assert (=> b!3167188 (= e!1972799 tp_is_empty!17053)))

(declare-fun b!3167190 () Bool)

(declare-fun tp!998393 () Bool)

(assert (=> b!3167190 (= e!1972799 tp!998393)))

(declare-fun b!3167189 () Bool)

(declare-fun tp!998391 () Bool)

(declare-fun tp!998394 () Bool)

(assert (=> b!3167189 (= e!1972799 (and tp!998391 tp!998394))))

(assert (=> b!3166850 (= tp!998181 e!1972799)))

(assert (= (and b!3166850 ((_ is ElementMatch!9745) (regTwo!20002 (regOne!20002 r!13156)))) b!3167188))

(assert (= (and b!3166850 ((_ is Concat!15066) (regTwo!20002 (regOne!20002 r!13156)))) b!3167189))

(assert (= (and b!3166850 ((_ is Star!9745) (regTwo!20002 (regOne!20002 r!13156)))) b!3167190))

(assert (= (and b!3166850 ((_ is Union!9745) (regTwo!20002 (regOne!20002 r!13156)))) b!3167191))

(declare-fun b!3167195 () Bool)

(declare-fun e!1972800 () Bool)

(declare-fun tp!998400 () Bool)

(declare-fun tp!998397 () Bool)

(assert (=> b!3167195 (= e!1972800 (and tp!998400 tp!998397))))

(declare-fun b!3167192 () Bool)

(assert (=> b!3167192 (= e!1972800 tp_is_empty!17053)))

(declare-fun b!3167194 () Bool)

(declare-fun tp!998398 () Bool)

(assert (=> b!3167194 (= e!1972800 tp!998398)))

(declare-fun b!3167193 () Bool)

(declare-fun tp!998396 () Bool)

(declare-fun tp!998399 () Bool)

(assert (=> b!3167193 (= e!1972800 (and tp!998396 tp!998399))))

(assert (=> b!3166854 (= tp!998183 e!1972800)))

(assert (= (and b!3166854 ((_ is ElementMatch!9745) (regOne!20002 (regTwo!20002 r!13156)))) b!3167192))

(assert (= (and b!3166854 ((_ is Concat!15066) (regOne!20002 (regTwo!20002 r!13156)))) b!3167193))

(assert (= (and b!3166854 ((_ is Star!9745) (regOne!20002 (regTwo!20002 r!13156)))) b!3167194))

(assert (= (and b!3166854 ((_ is Union!9745) (regOne!20002 (regTwo!20002 r!13156)))) b!3167195))

(declare-fun b!3167199 () Bool)

(declare-fun e!1972801 () Bool)

(declare-fun tp!998405 () Bool)

(declare-fun tp!998402 () Bool)

(assert (=> b!3167199 (= e!1972801 (and tp!998405 tp!998402))))

(declare-fun b!3167196 () Bool)

(assert (=> b!3167196 (= e!1972801 tp_is_empty!17053)))

(declare-fun b!3167198 () Bool)

(declare-fun tp!998403 () Bool)

(assert (=> b!3167198 (= e!1972801 tp!998403)))

(declare-fun b!3167197 () Bool)

(declare-fun tp!998401 () Bool)

(declare-fun tp!998404 () Bool)

(assert (=> b!3167197 (= e!1972801 (and tp!998401 tp!998404))))

(assert (=> b!3166854 (= tp!998186 e!1972801)))

(assert (= (and b!3166854 ((_ is ElementMatch!9745) (regTwo!20002 (regTwo!20002 r!13156)))) b!3167196))

(assert (= (and b!3166854 ((_ is Concat!15066) (regTwo!20002 (regTwo!20002 r!13156)))) b!3167197))

(assert (= (and b!3166854 ((_ is Star!9745) (regTwo!20002 (regTwo!20002 r!13156)))) b!3167198))

(assert (= (and b!3166854 ((_ is Union!9745) (regTwo!20002 (regTwo!20002 r!13156)))) b!3167199))

(declare-fun b_lambda!86431 () Bool)

(assert (= b_lambda!86429 (or (and b!3166725 b_free!83147) b_lambda!86431)))

(declare-fun b_lambda!86433 () Bool)

(assert (= b_lambda!86427 (or (and b!3166725 b_free!83147) b_lambda!86433)))

(check-sat (not b!3167120) (not b!3167197) (not b!3166884) (not b!3167150) (not b!3167109) (not b!3167056) (not b!3167060) (not bm!229700) (not b!3166946) (not b!3167068) (not b!3167067) (not b!3167105) (not b!3167076) (not bm!229670) (not b!3167089) (not b!3166964) (not b!3167154) (not bm!229692) (not b!3167130) (not b!3167122) (not b!3167113) (not b!3167045) (not bm!229671) (not b!3166917) (not b!3167085) (not b!3167138) (not b!3167166) (not b!3167133) (not b!3167082) (not b!3166961) (not b!3167147) (not d!868934) (not b!3167198) (not b!3167093) (not b!3166948) (not b!3167161) (not b!3167163) (not b!3167174) (not b!3167099) (not b!3167145) (not b!3167059) (not b!3167158) (not b!3167190) (not b!3167142) (not b!3167091) (not b!3167132) (not b!3167186) (not bm!229695) (not bm!229704) (not b!3167069) (not b!3167112) (not b!3167181) (not b!3167121) (not d!868936) (not b!3167191) (not bm!229686) (not b!3167170) (not b!3167141) (not b!3167052) (not b!3166885) (not b!3167183) (not b!3167090) (not b!3167046) (not d!868932) (not bm!229681) b_and!209417 (not b!3167081) (not b!3166947) (not b!3167124) tp_is_empty!17053 (not b!3167097) (not b!3167077) (not b!3167177) b_and!209411 (not b!3167100) (not bm!229707) (not b!3167128) (not b!3167178) (not b!3166968) (not b!3167149) (not b!3167080) (not b!3167084) (not b!3167165) (not b!3167155) (not b!3167055) (not b!3167169) (not bm!229696) (not bm!229672) (not b!3167185) (not b_next!83851) (not b!3167135) (not b!3167107) (not bm!229668) (not b!3167162) (not b!3167065) (not b!3167173) (not bm!229687) (not b!3167078) (not b!3167095) (not d!868952) (not bm!229669) (not bm!229682) (not b!3167175) (not b!3167194) (not b!3167047) (not bm!229701) (not b!3167096) (not bm!229703) (not b!3166998) (not b!3167087) (not b!3167189) (not b!3167072) (not b!3167118) (not b!3167064) (not b!3167125) (not b!3167117) (not bm!229697) (not b!3167049) (not b!3167159) (not b!3167129) (not b!3167143) (not b_lambda!86431) (not b!3167051) (not b!3167171) (not b!3167086) (not d!868930) (not bm!229667) (not b!3167111) (not b!3167151) (not b!3166963) (not b!3166931) (not b!3167104) (not b!3167116) (not b!3167058) (not bm!229698) (not b!3167199) (not b_next!83849) (not b_lambda!86433) (not b!3167187) (not b!3167146) (not mapNonEmpty!18897) (not b!3167092) (not b!3167179) (not b!3167134) (not bm!229693) (not b!3167073) (not b!3166894) (not b!3167126) (not b!3166932) (not b!3167054) (not b!3166888) (not b!3167157) (not b!3167182) (not b!3167074) (not b!3167193) (not b!3167103) (not b!3167063) (not b!3167070) (not b!3167101) (not d!868926) (not b!3167139) (not bm!229706) (not b!3167061) (not b!3167167) (not b!3166892) (not tb!155101) (not b!3167108) (not b!3167195) (not b!3167137) (not b!3167050) (not b!3167115) (not b!3167153))
(check-sat b_and!209417 b_and!209411 (not b_next!83849) (not b_next!83851))
