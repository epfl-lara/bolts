; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12842 () Bool)

(assert start!12842)

(declare-fun b!125908 () Bool)

(declare-fun e!72476 () Bool)

(declare-fun tp!68713 () Bool)

(declare-fun tp!68712 () Bool)

(assert (=> b!125908 (= e!72476 (and tp!68713 tp!68712))))

(declare-fun b!125909 () Bool)

(declare-fun tp_is_empty!1213 () Bool)

(assert (=> b!125909 (= e!72476 tp_is_empty!1213)))

(declare-fun b!125910 () Bool)

(declare-fun tp!68714 () Bool)

(assert (=> b!125910 (= e!72476 tp!68714)))

(declare-fun b!125911 () Bool)

(declare-fun e!72475 () Bool)

(declare-datatypes ((C!2080 0))(
  ( (C!2081 (val!766 Int)) )
))
(declare-datatypes ((List!2082 0))(
  ( (Nil!2076) (Cons!2076 (h!7473 C!2080) (t!22650 List!2082)) )
))
(declare-datatypes ((IArray!1171 0))(
  ( (IArray!1172 (innerList!643 List!2082)) )
))
(declare-datatypes ((Conc!585 0))(
  ( (Node!585 (left!1658 Conc!585) (right!1988 Conc!585) (csize!1400 Int) (cheight!796 Int)) (Leaf!1023 (xs!3180 IArray!1171) (csize!1401 Int)) (Empty!585) )
))
(declare-datatypes ((BalanceConc!1174 0))(
  ( (BalanceConc!1175 (c!27709 Conc!585)) )
))
(declare-fun input!6028 () BalanceConc!1174)

(declare-fun size!1911 (BalanceConc!1174) Int)

(assert (=> b!125911 (= e!72475 (> 0 (size!1911 input!6028)))))

(declare-fun b!125912 () Bool)

(declare-fun e!72474 () Bool)

(declare-fun tp!68717 () Bool)

(declare-fun inv!2669 (Conc!585) Bool)

(assert (=> b!125912 (= e!72474 (and (inv!2669 (c!27709 input!6028)) tp!68717))))

(declare-fun b!125913 () Bool)

(declare-fun tp!68716 () Bool)

(declare-fun tp!68715 () Bool)

(assert (=> b!125913 (= e!72476 (and tp!68716 tp!68715))))

(declare-fun res!58424 () Bool)

(declare-fun e!72477 () Bool)

(assert (=> start!12842 (=> (not res!58424) (not e!72477))))

(declare-datatypes ((Regex!579 0))(
  ( (ElementMatch!579 (c!27710 C!2080)) (Concat!973 (regOne!1670 Regex!579) (regTwo!1670 Regex!579)) (EmptyExpr!579) (Star!579 (reg!908 Regex!579)) (EmptyLang!579) (Union!579 (regOne!1671 Regex!579) (regTwo!1671 Regex!579)) )
))
(declare-fun r!13481 () Regex!579)

(declare-fun validRegex!171 (Regex!579) Bool)

(assert (=> start!12842 (= res!58424 (validRegex!171 r!13481))))

(assert (=> start!12842 e!72477))

(assert (=> start!12842 e!72476))

(declare-fun inv!2670 (BalanceConc!1174) Bool)

(assert (=> start!12842 (and (inv!2670 input!6028) e!72474)))

(declare-fun b!125914 () Bool)

(assert (=> b!125914 (= e!72477 e!72475)))

(declare-fun res!58423 () Bool)

(assert (=> b!125914 (=> res!58423 e!72475)))

(assert (=> b!125914 (= res!58423 false)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!2083 0))(
  ( (Nil!2077) (Cons!2077 (h!7474 Regex!579) (t!22651 List!2083)) )
))
(declare-datatypes ((Context!238 0))(
  ( (Context!239 (exprs!619 List!2083)) )
))
(declare-fun lt!38049 () (InoxSet Context!238))

(declare-fun focus!14 (Regex!579) (InoxSet Context!238))

(assert (=> b!125914 (= lt!38049 (focus!14 r!13481))))

(assert (= (and start!12842 res!58424) b!125914))

(assert (= (and b!125914 (not res!58423)) b!125911))

(get-info :version)

(assert (= (and start!12842 ((_ is ElementMatch!579) r!13481)) b!125909))

(assert (= (and start!12842 ((_ is Concat!973) r!13481)) b!125908))

(assert (= (and start!12842 ((_ is Star!579) r!13481)) b!125910))

(assert (= (and start!12842 ((_ is Union!579) r!13481)) b!125913))

(assert (= start!12842 b!125912))

(declare-fun m!111473 () Bool)

(assert (=> b!125911 m!111473))

(declare-fun m!111475 () Bool)

(assert (=> b!125912 m!111475))

(declare-fun m!111477 () Bool)

(assert (=> start!12842 m!111477))

(declare-fun m!111479 () Bool)

(assert (=> start!12842 m!111479))

(declare-fun m!111481 () Bool)

(assert (=> b!125914 m!111481))

(check-sat (not b!125912) (not b!125911) (not b!125908) tp_is_empty!1213 (not b!125914) (not start!12842) (not b!125913) (not b!125910))
(check-sat)
(get-model)

(declare-fun d!29814 () Bool)

(declare-fun e!72486 () Bool)

(assert (=> d!29814 e!72486))

(declare-fun res!58432 () Bool)

(assert (=> d!29814 (=> (not res!58432) (not e!72486))))

(assert (=> d!29814 (= res!58432 (validRegex!171 r!13481))))

(assert (=> d!29814 (= (focus!14 r!13481) (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true))))

(declare-fun b!125926 () Bool)

(declare-datatypes ((List!2084 0))(
  ( (Nil!2078) (Cons!2078 (h!7475 Context!238) (t!22652 List!2084)) )
))
(declare-fun unfocusZipper!4 (List!2084) Regex!579)

(declare-fun toList!278 ((InoxSet Context!238)) List!2084)

(assert (=> b!125926 (= e!72486 (= (unfocusZipper!4 (toList!278 (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true))) r!13481))))

(assert (= (and d!29814 res!58432) b!125926))

(assert (=> d!29814 m!111477))

(declare-fun m!111487 () Bool)

(assert (=> d!29814 m!111487))

(assert (=> b!125926 m!111487))

(assert (=> b!125926 m!111487))

(declare-fun m!111489 () Bool)

(assert (=> b!125926 m!111489))

(assert (=> b!125926 m!111489))

(declare-fun m!111491 () Bool)

(assert (=> b!125926 m!111491))

(assert (=> b!125914 d!29814))

(declare-fun d!29818 () Bool)

(declare-fun c!27716 () Bool)

(assert (=> d!29818 (= c!27716 ((_ is Node!585) (c!27709 input!6028)))))

(declare-fun e!72494 () Bool)

(assert (=> d!29818 (= (inv!2669 (c!27709 input!6028)) e!72494)))

(declare-fun b!125936 () Bool)

(declare-fun inv!2673 (Conc!585) Bool)

(assert (=> b!125936 (= e!72494 (inv!2673 (c!27709 input!6028)))))

(declare-fun b!125937 () Bool)

(declare-fun e!72495 () Bool)

(assert (=> b!125937 (= e!72494 e!72495)))

(declare-fun res!58438 () Bool)

(assert (=> b!125937 (= res!58438 (not ((_ is Leaf!1023) (c!27709 input!6028))))))

(assert (=> b!125937 (=> res!58438 e!72495)))

(declare-fun b!125938 () Bool)

(declare-fun inv!2674 (Conc!585) Bool)

(assert (=> b!125938 (= e!72495 (inv!2674 (c!27709 input!6028)))))

(assert (= (and d!29818 c!27716) b!125936))

(assert (= (and d!29818 (not c!27716)) b!125937))

(assert (= (and b!125937 (not res!58438)) b!125938))

(declare-fun m!111499 () Bool)

(assert (=> b!125936 m!111499))

(declare-fun m!111501 () Bool)

(assert (=> b!125938 m!111501))

(assert (=> b!125912 d!29818))

(declare-fun b!125975 () Bool)

(declare-fun e!72529 () Bool)

(declare-fun e!72524 () Bool)

(assert (=> b!125975 (= e!72529 e!72524)))

(declare-fun res!58462 () Bool)

(assert (=> b!125975 (=> (not res!58462) (not e!72524))))

(declare-fun call!5459 () Bool)

(assert (=> b!125975 (= res!58462 call!5459)))

(declare-fun b!125976 () Bool)

(declare-fun e!72528 () Bool)

(declare-fun e!72526 () Bool)

(assert (=> b!125976 (= e!72528 e!72526)))

(declare-fun res!58463 () Bool)

(declare-fun nullable!99 (Regex!579) Bool)

(assert (=> b!125976 (= res!58463 (not (nullable!99 (reg!908 r!13481))))))

(assert (=> b!125976 (=> (not res!58463) (not e!72526))))

(declare-fun b!125978 () Bool)

(declare-fun e!72530 () Bool)

(declare-fun call!5461 () Bool)

(assert (=> b!125978 (= e!72530 call!5461)))

(declare-fun b!125979 () Bool)

(declare-fun res!58459 () Bool)

(assert (=> b!125979 (=> res!58459 e!72529)))

(assert (=> b!125979 (= res!58459 (not ((_ is Concat!973) r!13481)))))

(declare-fun e!72527 () Bool)

(assert (=> b!125979 (= e!72527 e!72529)))

(declare-fun b!125980 () Bool)

(declare-fun res!58460 () Bool)

(assert (=> b!125980 (=> (not res!58460) (not e!72530))))

(assert (=> b!125980 (= res!58460 call!5459)))

(assert (=> b!125980 (= e!72527 e!72530)))

(declare-fun b!125981 () Bool)

(assert (=> b!125981 (= e!72528 e!72527)))

(declare-fun c!27725 () Bool)

(assert (=> b!125981 (= c!27725 ((_ is Union!579) r!13481))))

(declare-fun bm!5454 () Bool)

(assert (=> bm!5454 (= call!5459 (validRegex!171 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))

(declare-fun bm!5455 () Bool)

(declare-fun call!5460 () Bool)

(assert (=> bm!5455 (= call!5461 call!5460)))

(declare-fun c!27726 () Bool)

(declare-fun bm!5456 () Bool)

(assert (=> bm!5456 (= call!5460 (validRegex!171 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))

(declare-fun d!29822 () Bool)

(declare-fun res!58461 () Bool)

(declare-fun e!72525 () Bool)

(assert (=> d!29822 (=> res!58461 e!72525)))

(assert (=> d!29822 (= res!58461 ((_ is ElementMatch!579) r!13481))))

(assert (=> d!29822 (= (validRegex!171 r!13481) e!72525)))

(declare-fun b!125977 () Bool)

(assert (=> b!125977 (= e!72525 e!72528)))

(assert (=> b!125977 (= c!27726 ((_ is Star!579) r!13481))))

(declare-fun b!125982 () Bool)

(assert (=> b!125982 (= e!72524 call!5461)))

(declare-fun b!125983 () Bool)

(assert (=> b!125983 (= e!72526 call!5460)))

(assert (= (and d!29822 (not res!58461)) b!125977))

(assert (= (and b!125977 c!27726) b!125976))

(assert (= (and b!125977 (not c!27726)) b!125981))

(assert (= (and b!125976 res!58463) b!125983))

(assert (= (and b!125981 c!27725) b!125980))

(assert (= (and b!125981 (not c!27725)) b!125979))

(assert (= (and b!125980 res!58460) b!125978))

(assert (= (and b!125979 (not res!58459)) b!125975))

(assert (= (and b!125975 res!58462) b!125982))

(assert (= (or b!125980 b!125975) bm!5454))

(assert (= (or b!125978 b!125982) bm!5455))

(assert (= (or b!125983 bm!5455) bm!5456))

(declare-fun m!111509 () Bool)

(assert (=> b!125976 m!111509))

(declare-fun m!111511 () Bool)

(assert (=> bm!5454 m!111511))

(declare-fun m!111513 () Bool)

(assert (=> bm!5456 m!111513))

(assert (=> start!12842 d!29822))

(declare-fun d!29826 () Bool)

(declare-fun isBalanced!168 (Conc!585) Bool)

(assert (=> d!29826 (= (inv!2670 input!6028) (isBalanced!168 (c!27709 input!6028)))))

(declare-fun bs!12441 () Bool)

(assert (= bs!12441 d!29826))

(declare-fun m!111521 () Bool)

(assert (=> bs!12441 m!111521))

(assert (=> start!12842 d!29826))

(declare-fun d!29830 () Bool)

(declare-fun lt!38055 () Int)

(declare-fun size!1914 (List!2082) Int)

(declare-fun list!803 (BalanceConc!1174) List!2082)

(assert (=> d!29830 (= lt!38055 (size!1914 (list!803 input!6028)))))

(declare-fun size!1915 (Conc!585) Int)

(assert (=> d!29830 (= lt!38055 (size!1915 (c!27709 input!6028)))))

(assert (=> d!29830 (= (size!1911 input!6028) lt!38055)))

(declare-fun bs!12443 () Bool)

(assert (= bs!12443 d!29830))

(declare-fun m!111525 () Bool)

(assert (=> bs!12443 m!111525))

(assert (=> bs!12443 m!111525))

(declare-fun m!111527 () Bool)

(assert (=> bs!12443 m!111527))

(declare-fun m!111529 () Bool)

(assert (=> bs!12443 m!111529))

(assert (=> b!125911 d!29830))

(declare-fun b!126026 () Bool)

(declare-fun e!72548 () Bool)

(declare-fun tp!68749 () Bool)

(assert (=> b!126026 (= e!72548 tp!68749)))

(declare-fun b!126024 () Bool)

(assert (=> b!126024 (= e!72548 tp_is_empty!1213)))

(declare-fun b!126027 () Bool)

(declare-fun tp!68748 () Bool)

(declare-fun tp!68751 () Bool)

(assert (=> b!126027 (= e!72548 (and tp!68748 tp!68751))))

(declare-fun b!126025 () Bool)

(declare-fun tp!68750 () Bool)

(declare-fun tp!68747 () Bool)

(assert (=> b!126025 (= e!72548 (and tp!68750 tp!68747))))

(assert (=> b!125908 (= tp!68713 e!72548)))

(assert (= (and b!125908 ((_ is ElementMatch!579) (regOne!1670 r!13481))) b!126024))

(assert (= (and b!125908 ((_ is Concat!973) (regOne!1670 r!13481))) b!126025))

(assert (= (and b!125908 ((_ is Star!579) (regOne!1670 r!13481))) b!126026))

(assert (= (and b!125908 ((_ is Union!579) (regOne!1670 r!13481))) b!126027))

(declare-fun b!126030 () Bool)

(declare-fun e!72549 () Bool)

(declare-fun tp!68754 () Bool)

(assert (=> b!126030 (= e!72549 tp!68754)))

(declare-fun b!126028 () Bool)

(assert (=> b!126028 (= e!72549 tp_is_empty!1213)))

(declare-fun b!126031 () Bool)

(declare-fun tp!68753 () Bool)

(declare-fun tp!68756 () Bool)

(assert (=> b!126031 (= e!72549 (and tp!68753 tp!68756))))

(declare-fun b!126029 () Bool)

(declare-fun tp!68755 () Bool)

(declare-fun tp!68752 () Bool)

(assert (=> b!126029 (= e!72549 (and tp!68755 tp!68752))))

(assert (=> b!125908 (= tp!68712 e!72549)))

(assert (= (and b!125908 ((_ is ElementMatch!579) (regTwo!1670 r!13481))) b!126028))

(assert (= (and b!125908 ((_ is Concat!973) (regTwo!1670 r!13481))) b!126029))

(assert (= (and b!125908 ((_ is Star!579) (regTwo!1670 r!13481))) b!126030))

(assert (= (and b!125908 ((_ is Union!579) (regTwo!1670 r!13481))) b!126031))

(declare-fun b!126038 () Bool)

(declare-fun e!72551 () Bool)

(declare-fun tp!68764 () Bool)

(assert (=> b!126038 (= e!72551 tp!68764)))

(declare-fun b!126036 () Bool)

(assert (=> b!126036 (= e!72551 tp_is_empty!1213)))

(declare-fun b!126039 () Bool)

(declare-fun tp!68763 () Bool)

(declare-fun tp!68766 () Bool)

(assert (=> b!126039 (= e!72551 (and tp!68763 tp!68766))))

(declare-fun b!126037 () Bool)

(declare-fun tp!68765 () Bool)

(declare-fun tp!68762 () Bool)

(assert (=> b!126037 (= e!72551 (and tp!68765 tp!68762))))

(assert (=> b!125913 (= tp!68716 e!72551)))

(assert (= (and b!125913 ((_ is ElementMatch!579) (regOne!1671 r!13481))) b!126036))

(assert (= (and b!125913 ((_ is Concat!973) (regOne!1671 r!13481))) b!126037))

(assert (= (and b!125913 ((_ is Star!579) (regOne!1671 r!13481))) b!126038))

(assert (= (and b!125913 ((_ is Union!579) (regOne!1671 r!13481))) b!126039))

(declare-fun b!126046 () Bool)

(declare-fun e!72553 () Bool)

(declare-fun tp!68774 () Bool)

(assert (=> b!126046 (= e!72553 tp!68774)))

(declare-fun b!126044 () Bool)

(assert (=> b!126044 (= e!72553 tp_is_empty!1213)))

(declare-fun b!126047 () Bool)

(declare-fun tp!68773 () Bool)

(declare-fun tp!68776 () Bool)

(assert (=> b!126047 (= e!72553 (and tp!68773 tp!68776))))

(declare-fun b!126045 () Bool)

(declare-fun tp!68775 () Bool)

(declare-fun tp!68772 () Bool)

(assert (=> b!126045 (= e!72553 (and tp!68775 tp!68772))))

(assert (=> b!125913 (= tp!68715 e!72553)))

(assert (= (and b!125913 ((_ is ElementMatch!579) (regTwo!1671 r!13481))) b!126044))

(assert (= (and b!125913 ((_ is Concat!973) (regTwo!1671 r!13481))) b!126045))

(assert (= (and b!125913 ((_ is Star!579) (regTwo!1671 r!13481))) b!126046))

(assert (= (and b!125913 ((_ is Union!579) (regTwo!1671 r!13481))) b!126047))

(declare-fun tp!68799 () Bool)

(declare-fun tp!68798 () Bool)

(declare-fun e!72561 () Bool)

(declare-fun b!126068 () Bool)

(assert (=> b!126068 (= e!72561 (and (inv!2669 (left!1658 (c!27709 input!6028))) tp!68798 (inv!2669 (right!1988 (c!27709 input!6028))) tp!68799))))

(declare-fun b!126070 () Bool)

(declare-fun e!72562 () Bool)

(declare-fun tp!68800 () Bool)

(assert (=> b!126070 (= e!72562 tp!68800)))

(declare-fun b!126069 () Bool)

(declare-fun inv!2676 (IArray!1171) Bool)

(assert (=> b!126069 (= e!72561 (and (inv!2676 (xs!3180 (c!27709 input!6028))) e!72562))))

(assert (=> b!125912 (= tp!68717 (and (inv!2669 (c!27709 input!6028)) e!72561))))

(assert (= (and b!125912 ((_ is Node!585) (c!27709 input!6028))) b!126068))

(assert (= b!126069 b!126070))

(assert (= (and b!125912 ((_ is Leaf!1023) (c!27709 input!6028))) b!126069))

(declare-fun m!111537 () Bool)

(assert (=> b!126068 m!111537))

(declare-fun m!111539 () Bool)

(assert (=> b!126068 m!111539))

(declare-fun m!111541 () Bool)

(assert (=> b!126069 m!111541))

(assert (=> b!125912 m!111475))

(declare-fun b!126073 () Bool)

(declare-fun e!72563 () Bool)

(declare-fun tp!68803 () Bool)

(assert (=> b!126073 (= e!72563 tp!68803)))

(declare-fun b!126071 () Bool)

(assert (=> b!126071 (= e!72563 tp_is_empty!1213)))

(declare-fun b!126074 () Bool)

(declare-fun tp!68802 () Bool)

(declare-fun tp!68805 () Bool)

(assert (=> b!126074 (= e!72563 (and tp!68802 tp!68805))))

(declare-fun b!126072 () Bool)

(declare-fun tp!68804 () Bool)

(declare-fun tp!68801 () Bool)

(assert (=> b!126072 (= e!72563 (and tp!68804 tp!68801))))

(assert (=> b!125910 (= tp!68714 e!72563)))

(assert (= (and b!125910 ((_ is ElementMatch!579) (reg!908 r!13481))) b!126071))

(assert (= (and b!125910 ((_ is Concat!973) (reg!908 r!13481))) b!126072))

(assert (= (and b!125910 ((_ is Star!579) (reg!908 r!13481))) b!126073))

(assert (= (and b!125910 ((_ is Union!579) (reg!908 r!13481))) b!126074))

(check-sat (not b!125912) (not b!126031) (not d!29814) (not b!126070) (not b!126038) (not d!29826) (not d!29830) (not b!126068) tp_is_empty!1213 (not b!125936) (not b!126029) (not bm!5454) (not b!126072) (not b!126039) (not b!126074) (not b!126025) (not bm!5456) (not b!126027) (not b!126069) (not b!126045) (not b!126047) (not b!126037) (not b!125976) (not b!125938) (not b!125926) (not b!126046) (not b!126026) (not b!126073) (not b!126030))
(check-sat)
(get-model)

(declare-fun d!29832 () Bool)

(assert (=> d!29832 (= (inv!2676 (xs!3180 (c!27709 input!6028))) (<= (size!1914 (innerList!643 (xs!3180 (c!27709 input!6028)))) 2147483647))))

(declare-fun bs!12444 () Bool)

(assert (= bs!12444 d!29832))

(declare-fun m!111543 () Bool)

(assert (=> bs!12444 m!111543))

(assert (=> b!126069 d!29832))

(declare-fun b!126075 () Bool)

(declare-fun e!72569 () Bool)

(declare-fun e!72564 () Bool)

(assert (=> b!126075 (= e!72569 e!72564)))

(declare-fun res!58472 () Bool)

(assert (=> b!126075 (=> (not res!58472) (not e!72564))))

(declare-fun call!5465 () Bool)

(assert (=> b!126075 (= res!58472 call!5465)))

(declare-fun b!126076 () Bool)

(declare-fun e!72568 () Bool)

(declare-fun e!72566 () Bool)

(assert (=> b!126076 (= e!72568 e!72566)))

(declare-fun res!58473 () Bool)

(assert (=> b!126076 (= res!58473 (not (nullable!99 (reg!908 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))))

(assert (=> b!126076 (=> (not res!58473) (not e!72566))))

(declare-fun b!126078 () Bool)

(declare-fun e!72570 () Bool)

(declare-fun call!5467 () Bool)

(assert (=> b!126078 (= e!72570 call!5467)))

(declare-fun b!126079 () Bool)

(declare-fun res!58469 () Bool)

(assert (=> b!126079 (=> res!58469 e!72569)))

(assert (=> b!126079 (= res!58469 (not ((_ is Concat!973) (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481)))))))

(declare-fun e!72567 () Bool)

(assert (=> b!126079 (= e!72567 e!72569)))

(declare-fun b!126080 () Bool)

(declare-fun res!58470 () Bool)

(assert (=> b!126080 (=> (not res!58470) (not e!72570))))

(assert (=> b!126080 (= res!58470 call!5465)))

(assert (=> b!126080 (= e!72567 e!72570)))

(declare-fun b!126081 () Bool)

(assert (=> b!126081 (= e!72568 e!72567)))

(declare-fun c!27729 () Bool)

(assert (=> b!126081 (= c!27729 ((_ is Union!579) (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))

(declare-fun bm!5460 () Bool)

(assert (=> bm!5460 (= call!5465 (validRegex!171 (ite c!27729 (regOne!1671 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))) (regOne!1670 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))))

(declare-fun bm!5461 () Bool)

(declare-fun call!5466 () Bool)

(assert (=> bm!5461 (= call!5467 call!5466)))

(declare-fun c!27730 () Bool)

(declare-fun bm!5462 () Bool)

(assert (=> bm!5462 (= call!5466 (validRegex!171 (ite c!27730 (reg!908 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))) (ite c!27729 (regTwo!1671 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))) (regTwo!1670 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481)))))))))

(declare-fun d!29834 () Bool)

(declare-fun res!58471 () Bool)

(declare-fun e!72565 () Bool)

(assert (=> d!29834 (=> res!58471 e!72565)))

(assert (=> d!29834 (= res!58471 ((_ is ElementMatch!579) (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))

(assert (=> d!29834 (= (validRegex!171 (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))) e!72565)))

(declare-fun b!126077 () Bool)

(assert (=> b!126077 (= e!72565 e!72568)))

(assert (=> b!126077 (= c!27730 ((_ is Star!579) (ite c!27725 (regOne!1671 r!13481) (regOne!1670 r!13481))))))

(declare-fun b!126082 () Bool)

(assert (=> b!126082 (= e!72564 call!5467)))

(declare-fun b!126083 () Bool)

(assert (=> b!126083 (= e!72566 call!5466)))

(assert (= (and d!29834 (not res!58471)) b!126077))

(assert (= (and b!126077 c!27730) b!126076))

(assert (= (and b!126077 (not c!27730)) b!126081))

(assert (= (and b!126076 res!58473) b!126083))

(assert (= (and b!126081 c!27729) b!126080))

(assert (= (and b!126081 (not c!27729)) b!126079))

(assert (= (and b!126080 res!58470) b!126078))

(assert (= (and b!126079 (not res!58469)) b!126075))

(assert (= (and b!126075 res!58472) b!126082))

(assert (= (or b!126080 b!126075) bm!5460))

(assert (= (or b!126078 b!126082) bm!5461))

(assert (= (or b!126083 bm!5461) bm!5462))

(declare-fun m!111545 () Bool)

(assert (=> b!126076 m!111545))

(declare-fun m!111547 () Bool)

(assert (=> bm!5460 m!111547))

(declare-fun m!111549 () Bool)

(assert (=> bm!5462 m!111549))

(assert (=> bm!5454 d!29834))

(declare-fun b!126084 () Bool)

(declare-fun e!72576 () Bool)

(declare-fun e!72571 () Bool)

(assert (=> b!126084 (= e!72576 e!72571)))

(declare-fun res!58477 () Bool)

(assert (=> b!126084 (=> (not res!58477) (not e!72571))))

(declare-fun call!5468 () Bool)

(assert (=> b!126084 (= res!58477 call!5468)))

(declare-fun b!126085 () Bool)

(declare-fun e!72575 () Bool)

(declare-fun e!72573 () Bool)

(assert (=> b!126085 (= e!72575 e!72573)))

(declare-fun res!58478 () Bool)

(assert (=> b!126085 (= res!58478 (not (nullable!99 (reg!908 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))))

(assert (=> b!126085 (=> (not res!58478) (not e!72573))))

(declare-fun b!126087 () Bool)

(declare-fun e!72577 () Bool)

(declare-fun call!5470 () Bool)

(assert (=> b!126087 (= e!72577 call!5470)))

(declare-fun b!126088 () Bool)

(declare-fun res!58474 () Bool)

(assert (=> b!126088 (=> res!58474 e!72576)))

(assert (=> b!126088 (= res!58474 (not ((_ is Concat!973) (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481))))))))

(declare-fun e!72574 () Bool)

(assert (=> b!126088 (= e!72574 e!72576)))

(declare-fun b!126089 () Bool)

(declare-fun res!58475 () Bool)

(assert (=> b!126089 (=> (not res!58475) (not e!72577))))

(assert (=> b!126089 (= res!58475 call!5468)))

(assert (=> b!126089 (= e!72574 e!72577)))

(declare-fun b!126090 () Bool)

(assert (=> b!126090 (= e!72575 e!72574)))

(declare-fun c!27731 () Bool)

(assert (=> b!126090 (= c!27731 ((_ is Union!579) (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))

(declare-fun bm!5463 () Bool)

(assert (=> bm!5463 (= call!5468 (validRegex!171 (ite c!27731 (regOne!1671 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))) (regOne!1670 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))))

(declare-fun bm!5464 () Bool)

(declare-fun call!5469 () Bool)

(assert (=> bm!5464 (= call!5470 call!5469)))

(declare-fun c!27732 () Bool)

(declare-fun bm!5465 () Bool)

(assert (=> bm!5465 (= call!5469 (validRegex!171 (ite c!27732 (reg!908 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))) (ite c!27731 (regTwo!1671 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))) (regTwo!1670 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481))))))))))

(declare-fun d!29836 () Bool)

(declare-fun res!58476 () Bool)

(declare-fun e!72572 () Bool)

(assert (=> d!29836 (=> res!58476 e!72572)))

(assert (=> d!29836 (= res!58476 ((_ is ElementMatch!579) (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))

(assert (=> d!29836 (= (validRegex!171 (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))) e!72572)))

(declare-fun b!126086 () Bool)

(assert (=> b!126086 (= e!72572 e!72575)))

(assert (=> b!126086 (= c!27732 ((_ is Star!579) (ite c!27726 (reg!908 r!13481) (ite c!27725 (regTwo!1671 r!13481) (regTwo!1670 r!13481)))))))

(declare-fun b!126091 () Bool)

(assert (=> b!126091 (= e!72571 call!5470)))

(declare-fun b!126092 () Bool)

(assert (=> b!126092 (= e!72573 call!5469)))

(assert (= (and d!29836 (not res!58476)) b!126086))

(assert (= (and b!126086 c!27732) b!126085))

(assert (= (and b!126086 (not c!27732)) b!126090))

(assert (= (and b!126085 res!58478) b!126092))

(assert (= (and b!126090 c!27731) b!126089))

(assert (= (and b!126090 (not c!27731)) b!126088))

(assert (= (and b!126089 res!58475) b!126087))

(assert (= (and b!126088 (not res!58474)) b!126084))

(assert (= (and b!126084 res!58477) b!126091))

(assert (= (or b!126089 b!126084) bm!5463))

(assert (= (or b!126087 b!126091) bm!5464))

(assert (= (or b!126092 bm!5464) bm!5465))

(declare-fun m!111551 () Bool)

(assert (=> b!126085 m!111551))

(declare-fun m!111553 () Bool)

(assert (=> bm!5463 m!111553))

(declare-fun m!111555 () Bool)

(assert (=> bm!5465 m!111555))

(assert (=> bm!5456 d!29836))

(declare-fun d!29838 () Bool)

(declare-fun res!58483 () Bool)

(declare-fun e!72580 () Bool)

(assert (=> d!29838 (=> (not res!58483) (not e!72580))))

(declare-fun list!804 (IArray!1171) List!2082)

(assert (=> d!29838 (= res!58483 (<= (size!1914 (list!804 (xs!3180 (c!27709 input!6028)))) 512))))

(assert (=> d!29838 (= (inv!2674 (c!27709 input!6028)) e!72580)))

(declare-fun b!126097 () Bool)

(declare-fun res!58484 () Bool)

(assert (=> b!126097 (=> (not res!58484) (not e!72580))))

(assert (=> b!126097 (= res!58484 (= (csize!1401 (c!27709 input!6028)) (size!1914 (list!804 (xs!3180 (c!27709 input!6028))))))))

(declare-fun b!126098 () Bool)

(assert (=> b!126098 (= e!72580 (and (> (csize!1401 (c!27709 input!6028)) 0) (<= (csize!1401 (c!27709 input!6028)) 512)))))

(assert (= (and d!29838 res!58483) b!126097))

(assert (= (and b!126097 res!58484) b!126098))

(declare-fun m!111557 () Bool)

(assert (=> d!29838 m!111557))

(assert (=> d!29838 m!111557))

(declare-fun m!111559 () Bool)

(assert (=> d!29838 m!111559))

(assert (=> b!126097 m!111557))

(assert (=> b!126097 m!111557))

(assert (=> b!126097 m!111559))

(assert (=> b!125938 d!29838))

(assert (=> d!29814 d!29822))

(declare-fun d!29840 () Bool)

(declare-fun res!58491 () Bool)

(declare-fun e!72583 () Bool)

(assert (=> d!29840 (=> (not res!58491) (not e!72583))))

(assert (=> d!29840 (= res!58491 (= (csize!1400 (c!27709 input!6028)) (+ (size!1915 (left!1658 (c!27709 input!6028))) (size!1915 (right!1988 (c!27709 input!6028))))))))

(assert (=> d!29840 (= (inv!2673 (c!27709 input!6028)) e!72583)))

(declare-fun b!126105 () Bool)

(declare-fun res!58492 () Bool)

(assert (=> b!126105 (=> (not res!58492) (not e!72583))))

(assert (=> b!126105 (= res!58492 (and (not (= (left!1658 (c!27709 input!6028)) Empty!585)) (not (= (right!1988 (c!27709 input!6028)) Empty!585))))))

(declare-fun b!126106 () Bool)

(declare-fun res!58493 () Bool)

(assert (=> b!126106 (=> (not res!58493) (not e!72583))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!67 (Conc!585) Int)

(assert (=> b!126106 (= res!58493 (= (cheight!796 (c!27709 input!6028)) (+ (max!0 (height!67 (left!1658 (c!27709 input!6028))) (height!67 (right!1988 (c!27709 input!6028)))) 1)))))

(declare-fun b!126107 () Bool)

(assert (=> b!126107 (= e!72583 (<= 0 (cheight!796 (c!27709 input!6028))))))

(assert (= (and d!29840 res!58491) b!126105))

(assert (= (and b!126105 res!58492) b!126106))

(assert (= (and b!126106 res!58493) b!126107))

(declare-fun m!111561 () Bool)

(assert (=> d!29840 m!111561))

(declare-fun m!111563 () Bool)

(assert (=> d!29840 m!111563))

(declare-fun m!111565 () Bool)

(assert (=> b!126106 m!111565))

(declare-fun m!111567 () Bool)

(assert (=> b!126106 m!111567))

(assert (=> b!126106 m!111565))

(assert (=> b!126106 m!111567))

(declare-fun m!111569 () Bool)

(assert (=> b!126106 m!111569))

(assert (=> b!125936 d!29840))

(assert (=> b!125912 d!29818))

(declare-fun b!126120 () Bool)

(declare-fun res!58508 () Bool)

(declare-fun e!72588 () Bool)

(assert (=> b!126120 (=> (not res!58508) (not e!72588))))

(assert (=> b!126120 (= res!58508 (<= (- (height!67 (left!1658 (c!27709 input!6028))) (height!67 (right!1988 (c!27709 input!6028)))) 1))))

(declare-fun b!126121 () Bool)

(declare-fun res!58506 () Bool)

(assert (=> b!126121 (=> (not res!58506) (not e!72588))))

(declare-fun isEmpty!822 (Conc!585) Bool)

(assert (=> b!126121 (= res!58506 (not (isEmpty!822 (left!1658 (c!27709 input!6028)))))))

(declare-fun b!126122 () Bool)

(declare-fun res!58510 () Bool)

(assert (=> b!126122 (=> (not res!58510) (not e!72588))))

(assert (=> b!126122 (= res!58510 (isBalanced!168 (left!1658 (c!27709 input!6028))))))

(declare-fun b!126124 () Bool)

(declare-fun res!58509 () Bool)

(assert (=> b!126124 (=> (not res!58509) (not e!72588))))

(assert (=> b!126124 (= res!58509 (isBalanced!168 (right!1988 (c!27709 input!6028))))))

(declare-fun b!126125 () Bool)

(assert (=> b!126125 (= e!72588 (not (isEmpty!822 (right!1988 (c!27709 input!6028)))))))

(declare-fun b!126123 () Bool)

(declare-fun e!72589 () Bool)

(assert (=> b!126123 (= e!72589 e!72588)))

(declare-fun res!58507 () Bool)

(assert (=> b!126123 (=> (not res!58507) (not e!72588))))

(assert (=> b!126123 (= res!58507 (<= (- 1) (- (height!67 (left!1658 (c!27709 input!6028))) (height!67 (right!1988 (c!27709 input!6028))))))))

(declare-fun d!29842 () Bool)

(declare-fun res!58511 () Bool)

(assert (=> d!29842 (=> res!58511 e!72589)))

(assert (=> d!29842 (= res!58511 (not ((_ is Node!585) (c!27709 input!6028))))))

(assert (=> d!29842 (= (isBalanced!168 (c!27709 input!6028)) e!72589)))

(assert (= (and d!29842 (not res!58511)) b!126123))

(assert (= (and b!126123 res!58507) b!126120))

(assert (= (and b!126120 res!58508) b!126122))

(assert (= (and b!126122 res!58510) b!126124))

(assert (= (and b!126124 res!58509) b!126121))

(assert (= (and b!126121 res!58506) b!126125))

(assert (=> b!126123 m!111565))

(assert (=> b!126123 m!111567))

(declare-fun m!111571 () Bool)

(assert (=> b!126125 m!111571))

(assert (=> b!126120 m!111565))

(assert (=> b!126120 m!111567))

(declare-fun m!111573 () Bool)

(assert (=> b!126124 m!111573))

(declare-fun m!111575 () Bool)

(assert (=> b!126121 m!111575))

(declare-fun m!111577 () Bool)

(assert (=> b!126122 m!111577))

(assert (=> d!29826 d!29842))

(declare-fun d!29844 () Bool)

(declare-fun c!27733 () Bool)

(assert (=> d!29844 (= c!27733 ((_ is Node!585) (left!1658 (c!27709 input!6028))))))

(declare-fun e!72590 () Bool)

(assert (=> d!29844 (= (inv!2669 (left!1658 (c!27709 input!6028))) e!72590)))

(declare-fun b!126126 () Bool)

(assert (=> b!126126 (= e!72590 (inv!2673 (left!1658 (c!27709 input!6028))))))

(declare-fun b!126127 () Bool)

(declare-fun e!72591 () Bool)

(assert (=> b!126127 (= e!72590 e!72591)))

(declare-fun res!58512 () Bool)

(assert (=> b!126127 (= res!58512 (not ((_ is Leaf!1023) (left!1658 (c!27709 input!6028)))))))

(assert (=> b!126127 (=> res!58512 e!72591)))

(declare-fun b!126128 () Bool)

(assert (=> b!126128 (= e!72591 (inv!2674 (left!1658 (c!27709 input!6028))))))

(assert (= (and d!29844 c!27733) b!126126))

(assert (= (and d!29844 (not c!27733)) b!126127))

(assert (= (and b!126127 (not res!58512)) b!126128))

(declare-fun m!111579 () Bool)

(assert (=> b!126126 m!111579))

(declare-fun m!111581 () Bool)

(assert (=> b!126128 m!111581))

(assert (=> b!126068 d!29844))

(declare-fun d!29846 () Bool)

(declare-fun c!27734 () Bool)

(assert (=> d!29846 (= c!27734 ((_ is Node!585) (right!1988 (c!27709 input!6028))))))

(declare-fun e!72592 () Bool)

(assert (=> d!29846 (= (inv!2669 (right!1988 (c!27709 input!6028))) e!72592)))

(declare-fun b!126129 () Bool)

(assert (=> b!126129 (= e!72592 (inv!2673 (right!1988 (c!27709 input!6028))))))

(declare-fun b!126130 () Bool)

(declare-fun e!72593 () Bool)

(assert (=> b!126130 (= e!72592 e!72593)))

(declare-fun res!58513 () Bool)

(assert (=> b!126130 (= res!58513 (not ((_ is Leaf!1023) (right!1988 (c!27709 input!6028)))))))

(assert (=> b!126130 (=> res!58513 e!72593)))

(declare-fun b!126131 () Bool)

(assert (=> b!126131 (= e!72593 (inv!2674 (right!1988 (c!27709 input!6028))))))

(assert (= (and d!29846 c!27734) b!126129))

(assert (= (and d!29846 (not c!27734)) b!126130))

(assert (= (and b!126130 (not res!58513)) b!126131))

(declare-fun m!111583 () Bool)

(assert (=> b!126129 m!111583))

(declare-fun m!111585 () Bool)

(assert (=> b!126131 m!111585))

(assert (=> b!126068 d!29846))

(declare-fun d!29848 () Bool)

(declare-fun nullableFct!26 (Regex!579) Bool)

(assert (=> d!29848 (= (nullable!99 (reg!908 r!13481)) (nullableFct!26 (reg!908 r!13481)))))

(declare-fun bs!12445 () Bool)

(assert (= bs!12445 d!29848))

(declare-fun m!111587 () Bool)

(assert (=> bs!12445 m!111587))

(assert (=> b!125976 d!29848))

(declare-fun d!29850 () Bool)

(declare-fun lt!38058 () Regex!579)

(assert (=> d!29850 (validRegex!171 lt!38058)))

(declare-fun generalisedUnion!1 (List!2083) Regex!579)

(declare-fun unfocusZipperList!1 (List!2084) List!2083)

(assert (=> d!29850 (= lt!38058 (generalisedUnion!1 (unfocusZipperList!1 (toList!278 (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true)))))))

(assert (=> d!29850 (= (unfocusZipper!4 (toList!278 (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true))) lt!38058)))

(declare-fun bs!12446 () Bool)

(assert (= bs!12446 d!29850))

(declare-fun m!111589 () Bool)

(assert (=> bs!12446 m!111589))

(assert (=> bs!12446 m!111489))

(declare-fun m!111591 () Bool)

(assert (=> bs!12446 m!111591))

(assert (=> bs!12446 m!111591))

(declare-fun m!111593 () Bool)

(assert (=> bs!12446 m!111593))

(assert (=> b!125926 d!29850))

(declare-fun d!29854 () Bool)

(declare-fun e!72596 () Bool)

(assert (=> d!29854 e!72596))

(declare-fun res!58516 () Bool)

(assert (=> d!29854 (=> (not res!58516) (not e!72596))))

(declare-fun lt!38061 () List!2084)

(declare-fun noDuplicate!25 (List!2084) Bool)

(assert (=> d!29854 (= res!58516 (noDuplicate!25 lt!38061))))

(declare-fun choose!1629 ((InoxSet Context!238)) List!2084)

(assert (=> d!29854 (= lt!38061 (choose!1629 (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true)))))

(assert (=> d!29854 (= (toList!278 (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true)) lt!38061)))

(declare-fun b!126134 () Bool)

(declare-fun content!234 (List!2084) (InoxSet Context!238))

(assert (=> b!126134 (= e!72596 (= (content!234 lt!38061) (store ((as const (Array Context!238 Bool)) false) (Context!239 (Cons!2077 r!13481 Nil!2077)) true)))))

(assert (= (and d!29854 res!58516) b!126134))

(declare-fun m!111595 () Bool)

(assert (=> d!29854 m!111595))

(assert (=> d!29854 m!111487))

(declare-fun m!111597 () Bool)

(assert (=> d!29854 m!111597))

(declare-fun m!111599 () Bool)

(assert (=> b!126134 m!111599))

(assert (=> b!125926 d!29854))

(declare-fun d!29856 () Bool)

(declare-fun lt!38064 () Int)

(assert (=> d!29856 (>= lt!38064 0)))

(declare-fun e!72603 () Int)

(assert (=> d!29856 (= lt!38064 e!72603)))

(declare-fun c!27737 () Bool)

(assert (=> d!29856 (= c!27737 ((_ is Nil!2076) (list!803 input!6028)))))

(assert (=> d!29856 (= (size!1914 (list!803 input!6028)) lt!38064)))

(declare-fun b!126151 () Bool)

(assert (=> b!126151 (= e!72603 0)))

(declare-fun b!126152 () Bool)

(assert (=> b!126152 (= e!72603 (+ 1 (size!1914 (t!22650 (list!803 input!6028)))))))

(assert (= (and d!29856 c!27737) b!126151))

(assert (= (and d!29856 (not c!27737)) b!126152))

(declare-fun m!111601 () Bool)

(assert (=> b!126152 m!111601))

(assert (=> d!29830 d!29856))

(declare-fun d!29858 () Bool)

(declare-fun list!806 (Conc!585) List!2082)

(assert (=> d!29858 (= (list!803 input!6028) (list!806 (c!27709 input!6028)))))

(declare-fun bs!12447 () Bool)

(assert (= bs!12447 d!29858))

(declare-fun m!111603 () Bool)

(assert (=> bs!12447 m!111603))

(assert (=> d!29830 d!29858))

(declare-fun d!29860 () Bool)

(declare-fun lt!38067 () Int)

(assert (=> d!29860 (= lt!38067 (size!1914 (list!806 (c!27709 input!6028))))))

(assert (=> d!29860 (= lt!38067 (ite ((_ is Empty!585) (c!27709 input!6028)) 0 (ite ((_ is Leaf!1023) (c!27709 input!6028)) (csize!1401 (c!27709 input!6028)) (csize!1400 (c!27709 input!6028)))))))

(assert (=> d!29860 (= (size!1915 (c!27709 input!6028)) lt!38067)))

(declare-fun bs!12448 () Bool)

(assert (= bs!12448 d!29860))

(assert (=> bs!12448 m!111603))

(assert (=> bs!12448 m!111603))

(declare-fun m!111617 () Bool)

(assert (=> bs!12448 m!111617))

(assert (=> d!29830 d!29860))

(declare-fun b!126163 () Bool)

(declare-fun e!72608 () Bool)

(declare-fun tp!68808 () Bool)

(assert (=> b!126163 (= e!72608 (and tp_is_empty!1213 tp!68808))))

(assert (=> b!126070 (= tp!68800 e!72608)))

(assert (= (and b!126070 ((_ is Cons!2076) (innerList!643 (xs!3180 (c!27709 input!6028))))) b!126163))

(declare-fun b!126166 () Bool)

(declare-fun e!72609 () Bool)

(declare-fun tp!68811 () Bool)

(assert (=> b!126166 (= e!72609 tp!68811)))

(declare-fun b!126164 () Bool)

(assert (=> b!126164 (= e!72609 tp_is_empty!1213)))

(declare-fun b!126167 () Bool)

(declare-fun tp!68810 () Bool)

(declare-fun tp!68813 () Bool)

(assert (=> b!126167 (= e!72609 (and tp!68810 tp!68813))))

(declare-fun b!126165 () Bool)

(declare-fun tp!68812 () Bool)

(declare-fun tp!68809 () Bool)

(assert (=> b!126165 (= e!72609 (and tp!68812 tp!68809))))

(assert (=> b!126046 (= tp!68774 e!72609)))

(assert (= (and b!126046 ((_ is ElementMatch!579) (reg!908 (regTwo!1671 r!13481)))) b!126164))

(assert (= (and b!126046 ((_ is Concat!973) (reg!908 (regTwo!1671 r!13481)))) b!126165))

(assert (= (and b!126046 ((_ is Star!579) (reg!908 (regTwo!1671 r!13481)))) b!126166))

(assert (= (and b!126046 ((_ is Union!579) (reg!908 (regTwo!1671 r!13481)))) b!126167))

(declare-fun b!126170 () Bool)

(declare-fun e!72610 () Bool)

(declare-fun tp!68816 () Bool)

(assert (=> b!126170 (= e!72610 tp!68816)))

(declare-fun b!126168 () Bool)

(assert (=> b!126168 (= e!72610 tp_is_empty!1213)))

(declare-fun b!126171 () Bool)

(declare-fun tp!68815 () Bool)

(declare-fun tp!68818 () Bool)

(assert (=> b!126171 (= e!72610 (and tp!68815 tp!68818))))

(declare-fun b!126169 () Bool)

(declare-fun tp!68817 () Bool)

(declare-fun tp!68814 () Bool)

(assert (=> b!126169 (= e!72610 (and tp!68817 tp!68814))))

(assert (=> b!126037 (= tp!68765 e!72610)))

(assert (= (and b!126037 ((_ is ElementMatch!579) (regOne!1670 (regOne!1671 r!13481)))) b!126168))

(assert (= (and b!126037 ((_ is Concat!973) (regOne!1670 (regOne!1671 r!13481)))) b!126169))

(assert (= (and b!126037 ((_ is Star!579) (regOne!1670 (regOne!1671 r!13481)))) b!126170))

(assert (= (and b!126037 ((_ is Union!579) (regOne!1670 (regOne!1671 r!13481)))) b!126171))

(declare-fun b!126174 () Bool)

(declare-fun e!72611 () Bool)

(declare-fun tp!68821 () Bool)

(assert (=> b!126174 (= e!72611 tp!68821)))

(declare-fun b!126172 () Bool)

(assert (=> b!126172 (= e!72611 tp_is_empty!1213)))

(declare-fun b!126175 () Bool)

(declare-fun tp!68820 () Bool)

(declare-fun tp!68823 () Bool)

(assert (=> b!126175 (= e!72611 (and tp!68820 tp!68823))))

(declare-fun b!126173 () Bool)

(declare-fun tp!68822 () Bool)

(declare-fun tp!68819 () Bool)

(assert (=> b!126173 (= e!72611 (and tp!68822 tp!68819))))

(assert (=> b!126037 (= tp!68762 e!72611)))

(assert (= (and b!126037 ((_ is ElementMatch!579) (regTwo!1670 (regOne!1671 r!13481)))) b!126172))

(assert (= (and b!126037 ((_ is Concat!973) (regTwo!1670 (regOne!1671 r!13481)))) b!126173))

(assert (= (and b!126037 ((_ is Star!579) (regTwo!1670 (regOne!1671 r!13481)))) b!126174))

(assert (= (and b!126037 ((_ is Union!579) (regTwo!1670 (regOne!1671 r!13481)))) b!126175))

(declare-fun b!126178 () Bool)

(declare-fun e!72612 () Bool)

(declare-fun tp!68826 () Bool)

(assert (=> b!126178 (= e!72612 tp!68826)))

(declare-fun b!126176 () Bool)

(assert (=> b!126176 (= e!72612 tp_is_empty!1213)))

(declare-fun b!126179 () Bool)

(declare-fun tp!68825 () Bool)

(declare-fun tp!68828 () Bool)

(assert (=> b!126179 (= e!72612 (and tp!68825 tp!68828))))

(declare-fun b!126177 () Bool)

(declare-fun tp!68827 () Bool)

(declare-fun tp!68824 () Bool)

(assert (=> b!126177 (= e!72612 (and tp!68827 tp!68824))))

(assert (=> b!126047 (= tp!68773 e!72612)))

(assert (= (and b!126047 ((_ is ElementMatch!579) (regOne!1671 (regTwo!1671 r!13481)))) b!126176))

(assert (= (and b!126047 ((_ is Concat!973) (regOne!1671 (regTwo!1671 r!13481)))) b!126177))

(assert (= (and b!126047 ((_ is Star!579) (regOne!1671 (regTwo!1671 r!13481)))) b!126178))

(assert (= (and b!126047 ((_ is Union!579) (regOne!1671 (regTwo!1671 r!13481)))) b!126179))

(declare-fun b!126186 () Bool)

(declare-fun e!72615 () Bool)

(declare-fun tp!68831 () Bool)

(assert (=> b!126186 (= e!72615 tp!68831)))

(declare-fun b!126184 () Bool)

(assert (=> b!126184 (= e!72615 tp_is_empty!1213)))

(declare-fun b!126187 () Bool)

(declare-fun tp!68830 () Bool)

(declare-fun tp!68833 () Bool)

(assert (=> b!126187 (= e!72615 (and tp!68830 tp!68833))))

(declare-fun b!126185 () Bool)

(declare-fun tp!68832 () Bool)

(declare-fun tp!68829 () Bool)

(assert (=> b!126185 (= e!72615 (and tp!68832 tp!68829))))

(assert (=> b!126047 (= tp!68776 e!72615)))

(assert (= (and b!126047 ((_ is ElementMatch!579) (regTwo!1671 (regTwo!1671 r!13481)))) b!126184))

(assert (= (and b!126047 ((_ is Concat!973) (regTwo!1671 (regTwo!1671 r!13481)))) b!126185))

(assert (= (and b!126047 ((_ is Star!579) (regTwo!1671 (regTwo!1671 r!13481)))) b!126186))

(assert (= (and b!126047 ((_ is Union!579) (regTwo!1671 (regTwo!1671 r!13481)))) b!126187))

(declare-fun b!126190 () Bool)

(declare-fun e!72616 () Bool)

(declare-fun tp!68836 () Bool)

(assert (=> b!126190 (= e!72616 tp!68836)))

(declare-fun b!126188 () Bool)

(assert (=> b!126188 (= e!72616 tp_is_empty!1213)))

(declare-fun b!126191 () Bool)

(declare-fun tp!68835 () Bool)

(declare-fun tp!68838 () Bool)

(assert (=> b!126191 (= e!72616 (and tp!68835 tp!68838))))

(declare-fun b!126189 () Bool)

(declare-fun tp!68837 () Bool)

(declare-fun tp!68834 () Bool)

(assert (=> b!126189 (= e!72616 (and tp!68837 tp!68834))))

(assert (=> b!126045 (= tp!68775 e!72616)))

(assert (= (and b!126045 ((_ is ElementMatch!579) (regOne!1670 (regTwo!1671 r!13481)))) b!126188))

(assert (= (and b!126045 ((_ is Concat!973) (regOne!1670 (regTwo!1671 r!13481)))) b!126189))

(assert (= (and b!126045 ((_ is Star!579) (regOne!1670 (regTwo!1671 r!13481)))) b!126190))

(assert (= (and b!126045 ((_ is Union!579) (regOne!1670 (regTwo!1671 r!13481)))) b!126191))

(declare-fun b!126194 () Bool)

(declare-fun e!72617 () Bool)

(declare-fun tp!68841 () Bool)

(assert (=> b!126194 (= e!72617 tp!68841)))

(declare-fun b!126192 () Bool)

(assert (=> b!126192 (= e!72617 tp_is_empty!1213)))

(declare-fun b!126195 () Bool)

(declare-fun tp!68840 () Bool)

(declare-fun tp!68843 () Bool)

(assert (=> b!126195 (= e!72617 (and tp!68840 tp!68843))))

(declare-fun b!126193 () Bool)

(declare-fun tp!68842 () Bool)

(declare-fun tp!68839 () Bool)

(assert (=> b!126193 (= e!72617 (and tp!68842 tp!68839))))

(assert (=> b!126045 (= tp!68772 e!72617)))

(assert (= (and b!126045 ((_ is ElementMatch!579) (regTwo!1670 (regTwo!1671 r!13481)))) b!126192))

(assert (= (and b!126045 ((_ is Concat!973) (regTwo!1670 (regTwo!1671 r!13481)))) b!126193))

(assert (= (and b!126045 ((_ is Star!579) (regTwo!1670 (regTwo!1671 r!13481)))) b!126194))

(assert (= (and b!126045 ((_ is Union!579) (regTwo!1670 (regTwo!1671 r!13481)))) b!126195))

(declare-fun b!126198 () Bool)

(declare-fun e!72618 () Bool)

(declare-fun tp!68846 () Bool)

(assert (=> b!126198 (= e!72618 tp!68846)))

(declare-fun b!126196 () Bool)

(assert (=> b!126196 (= e!72618 tp_is_empty!1213)))

(declare-fun b!126199 () Bool)

(declare-fun tp!68845 () Bool)

(declare-fun tp!68848 () Bool)

(assert (=> b!126199 (= e!72618 (and tp!68845 tp!68848))))

(declare-fun b!126197 () Bool)

(declare-fun tp!68847 () Bool)

(declare-fun tp!68844 () Bool)

(assert (=> b!126197 (= e!72618 (and tp!68847 tp!68844))))

(assert (=> b!126030 (= tp!68754 e!72618)))

(assert (= (and b!126030 ((_ is ElementMatch!579) (reg!908 (regTwo!1670 r!13481)))) b!126196))

(assert (= (and b!126030 ((_ is Concat!973) (reg!908 (regTwo!1670 r!13481)))) b!126197))

(assert (= (and b!126030 ((_ is Star!579) (reg!908 (regTwo!1670 r!13481)))) b!126198))

(assert (= (and b!126030 ((_ is Union!579) (reg!908 (regTwo!1670 r!13481)))) b!126199))

(declare-fun b!126202 () Bool)

(declare-fun e!72619 () Bool)

(declare-fun tp!68851 () Bool)

(assert (=> b!126202 (= e!72619 tp!68851)))

(declare-fun b!126200 () Bool)

(assert (=> b!126200 (= e!72619 tp_is_empty!1213)))

(declare-fun b!126203 () Bool)

(declare-fun tp!68850 () Bool)

(declare-fun tp!68853 () Bool)

(assert (=> b!126203 (= e!72619 (and tp!68850 tp!68853))))

(declare-fun b!126201 () Bool)

(declare-fun tp!68852 () Bool)

(declare-fun tp!68849 () Bool)

(assert (=> b!126201 (= e!72619 (and tp!68852 tp!68849))))

(assert (=> b!126074 (= tp!68802 e!72619)))

(assert (= (and b!126074 ((_ is ElementMatch!579) (regOne!1671 (reg!908 r!13481)))) b!126200))

(assert (= (and b!126074 ((_ is Concat!973) (regOne!1671 (reg!908 r!13481)))) b!126201))

(assert (= (and b!126074 ((_ is Star!579) (regOne!1671 (reg!908 r!13481)))) b!126202))

(assert (= (and b!126074 ((_ is Union!579) (regOne!1671 (reg!908 r!13481)))) b!126203))

(declare-fun b!126206 () Bool)

(declare-fun e!72620 () Bool)

(declare-fun tp!68856 () Bool)

(assert (=> b!126206 (= e!72620 tp!68856)))

(declare-fun b!126204 () Bool)

(assert (=> b!126204 (= e!72620 tp_is_empty!1213)))

(declare-fun b!126207 () Bool)

(declare-fun tp!68855 () Bool)

(declare-fun tp!68858 () Bool)

(assert (=> b!126207 (= e!72620 (and tp!68855 tp!68858))))

(declare-fun b!126205 () Bool)

(declare-fun tp!68857 () Bool)

(declare-fun tp!68854 () Bool)

(assert (=> b!126205 (= e!72620 (and tp!68857 tp!68854))))

(assert (=> b!126074 (= tp!68805 e!72620)))

(assert (= (and b!126074 ((_ is ElementMatch!579) (regTwo!1671 (reg!908 r!13481)))) b!126204))

(assert (= (and b!126074 ((_ is Concat!973) (regTwo!1671 (reg!908 r!13481)))) b!126205))

(assert (= (and b!126074 ((_ is Star!579) (regTwo!1671 (reg!908 r!13481)))) b!126206))

(assert (= (and b!126074 ((_ is Union!579) (regTwo!1671 (reg!908 r!13481)))) b!126207))

(declare-fun b!126210 () Bool)

(declare-fun e!72621 () Bool)

(declare-fun tp!68861 () Bool)

(assert (=> b!126210 (= e!72621 tp!68861)))

(declare-fun b!126208 () Bool)

(assert (=> b!126208 (= e!72621 tp_is_empty!1213)))

(declare-fun b!126211 () Bool)

(declare-fun tp!68860 () Bool)

(declare-fun tp!68863 () Bool)

(assert (=> b!126211 (= e!72621 (and tp!68860 tp!68863))))

(declare-fun b!126209 () Bool)

(declare-fun tp!68862 () Bool)

(declare-fun tp!68859 () Bool)

(assert (=> b!126209 (= e!72621 (and tp!68862 tp!68859))))

(assert (=> b!126026 (= tp!68749 e!72621)))

(assert (= (and b!126026 ((_ is ElementMatch!579) (reg!908 (regOne!1670 r!13481)))) b!126208))

(assert (= (and b!126026 ((_ is Concat!973) (reg!908 (regOne!1670 r!13481)))) b!126209))

(assert (= (and b!126026 ((_ is Star!579) (reg!908 (regOne!1670 r!13481)))) b!126210))

(assert (= (and b!126026 ((_ is Union!579) (reg!908 (regOne!1670 r!13481)))) b!126211))

(declare-fun b!126214 () Bool)

(declare-fun e!72622 () Bool)

(declare-fun tp!68866 () Bool)

(assert (=> b!126214 (= e!72622 tp!68866)))

(declare-fun b!126212 () Bool)

(assert (=> b!126212 (= e!72622 tp_is_empty!1213)))

(declare-fun b!126215 () Bool)

(declare-fun tp!68865 () Bool)

(declare-fun tp!68868 () Bool)

(assert (=> b!126215 (= e!72622 (and tp!68865 tp!68868))))

(declare-fun b!126213 () Bool)

(declare-fun tp!68867 () Bool)

(declare-fun tp!68864 () Bool)

(assert (=> b!126213 (= e!72622 (and tp!68867 tp!68864))))

(assert (=> b!126031 (= tp!68753 e!72622)))

(assert (= (and b!126031 ((_ is ElementMatch!579) (regOne!1671 (regTwo!1670 r!13481)))) b!126212))

(assert (= (and b!126031 ((_ is Concat!973) (regOne!1671 (regTwo!1670 r!13481)))) b!126213))

(assert (= (and b!126031 ((_ is Star!579) (regOne!1671 (regTwo!1670 r!13481)))) b!126214))

(assert (= (and b!126031 ((_ is Union!579) (regOne!1671 (regTwo!1670 r!13481)))) b!126215))

(declare-fun b!126220 () Bool)

(declare-fun e!72624 () Bool)

(declare-fun tp!68871 () Bool)

(assert (=> b!126220 (= e!72624 tp!68871)))

(declare-fun b!126218 () Bool)

(assert (=> b!126218 (= e!72624 tp_is_empty!1213)))

(declare-fun b!126221 () Bool)

(declare-fun tp!68870 () Bool)

(declare-fun tp!68873 () Bool)

(assert (=> b!126221 (= e!72624 (and tp!68870 tp!68873))))

(declare-fun b!126219 () Bool)

(declare-fun tp!68872 () Bool)

(declare-fun tp!68869 () Bool)

(assert (=> b!126219 (= e!72624 (and tp!68872 tp!68869))))

(assert (=> b!126031 (= tp!68756 e!72624)))

(assert (= (and b!126031 ((_ is ElementMatch!579) (regTwo!1671 (regTwo!1670 r!13481)))) b!126218))

(assert (= (and b!126031 ((_ is Concat!973) (regTwo!1671 (regTwo!1670 r!13481)))) b!126219))

(assert (= (and b!126031 ((_ is Star!579) (regTwo!1671 (regTwo!1670 r!13481)))) b!126220))

(assert (= (and b!126031 ((_ is Union!579) (regTwo!1671 (regTwo!1670 r!13481)))) b!126221))

(declare-fun b!126224 () Bool)

(declare-fun e!72625 () Bool)

(declare-fun tp!68876 () Bool)

(assert (=> b!126224 (= e!72625 tp!68876)))

(declare-fun b!126222 () Bool)

(assert (=> b!126222 (= e!72625 tp_is_empty!1213)))

(declare-fun b!126225 () Bool)

(declare-fun tp!68875 () Bool)

(declare-fun tp!68878 () Bool)

(assert (=> b!126225 (= e!72625 (and tp!68875 tp!68878))))

(declare-fun b!126223 () Bool)

(declare-fun tp!68877 () Bool)

(declare-fun tp!68874 () Bool)

(assert (=> b!126223 (= e!72625 (and tp!68877 tp!68874))))

(assert (=> b!126072 (= tp!68804 e!72625)))

(assert (= (and b!126072 ((_ is ElementMatch!579) (regOne!1670 (reg!908 r!13481)))) b!126222))

(assert (= (and b!126072 ((_ is Concat!973) (regOne!1670 (reg!908 r!13481)))) b!126223))

(assert (= (and b!126072 ((_ is Star!579) (regOne!1670 (reg!908 r!13481)))) b!126224))

(assert (= (and b!126072 ((_ is Union!579) (regOne!1670 (reg!908 r!13481)))) b!126225))

(declare-fun b!126228 () Bool)

(declare-fun e!72626 () Bool)

(declare-fun tp!68881 () Bool)

(assert (=> b!126228 (= e!72626 tp!68881)))

(declare-fun b!126226 () Bool)

(assert (=> b!126226 (= e!72626 tp_is_empty!1213)))

(declare-fun b!126229 () Bool)

(declare-fun tp!68880 () Bool)

(declare-fun tp!68883 () Bool)

(assert (=> b!126229 (= e!72626 (and tp!68880 tp!68883))))

(declare-fun b!126227 () Bool)

(declare-fun tp!68882 () Bool)

(declare-fun tp!68879 () Bool)

(assert (=> b!126227 (= e!72626 (and tp!68882 tp!68879))))

(assert (=> b!126072 (= tp!68801 e!72626)))

(assert (= (and b!126072 ((_ is ElementMatch!579) (regTwo!1670 (reg!908 r!13481)))) b!126226))

(assert (= (and b!126072 ((_ is Concat!973) (regTwo!1670 (reg!908 r!13481)))) b!126227))

(assert (= (and b!126072 ((_ is Star!579) (regTwo!1670 (reg!908 r!13481)))) b!126228))

(assert (= (and b!126072 ((_ is Union!579) (regTwo!1670 (reg!908 r!13481)))) b!126229))

(declare-fun b!126232 () Bool)

(declare-fun e!72627 () Bool)

(declare-fun tp!68886 () Bool)

(assert (=> b!126232 (= e!72627 tp!68886)))

(declare-fun b!126230 () Bool)

(assert (=> b!126230 (= e!72627 tp_is_empty!1213)))

(declare-fun b!126233 () Bool)

(declare-fun tp!68885 () Bool)

(declare-fun tp!68888 () Bool)

(assert (=> b!126233 (= e!72627 (and tp!68885 tp!68888))))

(declare-fun b!126231 () Bool)

(declare-fun tp!68887 () Bool)

(declare-fun tp!68884 () Bool)

(assert (=> b!126231 (= e!72627 (and tp!68887 tp!68884))))

(assert (=> b!126038 (= tp!68764 e!72627)))

(assert (= (and b!126038 ((_ is ElementMatch!579) (reg!908 (regOne!1671 r!13481)))) b!126230))

(assert (= (and b!126038 ((_ is Concat!973) (reg!908 (regOne!1671 r!13481)))) b!126231))

(assert (= (and b!126038 ((_ is Star!579) (reg!908 (regOne!1671 r!13481)))) b!126232))

(assert (= (and b!126038 ((_ is Union!579) (reg!908 (regOne!1671 r!13481)))) b!126233))

(declare-fun b!126245 () Bool)

(declare-fun e!72635 () Bool)

(declare-fun tp!68891 () Bool)

(assert (=> b!126245 (= e!72635 tp!68891)))

(declare-fun b!126243 () Bool)

(assert (=> b!126243 (= e!72635 tp_is_empty!1213)))

(declare-fun b!126246 () Bool)

(declare-fun tp!68890 () Bool)

(declare-fun tp!68893 () Bool)

(assert (=> b!126246 (= e!72635 (and tp!68890 tp!68893))))

(declare-fun b!126244 () Bool)

(declare-fun tp!68892 () Bool)

(declare-fun tp!68889 () Bool)

(assert (=> b!126244 (= e!72635 (and tp!68892 tp!68889))))

(assert (=> b!126029 (= tp!68755 e!72635)))

(assert (= (and b!126029 ((_ is ElementMatch!579) (regOne!1670 (regTwo!1670 r!13481)))) b!126243))

(assert (= (and b!126029 ((_ is Concat!973) (regOne!1670 (regTwo!1670 r!13481)))) b!126244))

(assert (= (and b!126029 ((_ is Star!579) (regOne!1670 (regTwo!1670 r!13481)))) b!126245))

(assert (= (and b!126029 ((_ is Union!579) (regOne!1670 (regTwo!1670 r!13481)))) b!126246))

(declare-fun b!126249 () Bool)

(declare-fun e!72636 () Bool)

(declare-fun tp!68896 () Bool)

(assert (=> b!126249 (= e!72636 tp!68896)))

(declare-fun b!126247 () Bool)

(assert (=> b!126247 (= e!72636 tp_is_empty!1213)))

(declare-fun b!126250 () Bool)

(declare-fun tp!68895 () Bool)

(declare-fun tp!68898 () Bool)

(assert (=> b!126250 (= e!72636 (and tp!68895 tp!68898))))

(declare-fun b!126248 () Bool)

(declare-fun tp!68897 () Bool)

(declare-fun tp!68894 () Bool)

(assert (=> b!126248 (= e!72636 (and tp!68897 tp!68894))))

(assert (=> b!126029 (= tp!68752 e!72636)))

(assert (= (and b!126029 ((_ is ElementMatch!579) (regTwo!1670 (regTwo!1670 r!13481)))) b!126247))

(assert (= (and b!126029 ((_ is Concat!973) (regTwo!1670 (regTwo!1670 r!13481)))) b!126248))

(assert (= (and b!126029 ((_ is Star!579) (regTwo!1670 (regTwo!1670 r!13481)))) b!126249))

(assert (= (and b!126029 ((_ is Union!579) (regTwo!1670 (regTwo!1670 r!13481)))) b!126250))

(declare-fun b!126253 () Bool)

(declare-fun e!72637 () Bool)

(declare-fun tp!68901 () Bool)

(assert (=> b!126253 (= e!72637 tp!68901)))

(declare-fun b!126251 () Bool)

(assert (=> b!126251 (= e!72637 tp_is_empty!1213)))

(declare-fun b!126254 () Bool)

(declare-fun tp!68900 () Bool)

(declare-fun tp!68903 () Bool)

(assert (=> b!126254 (= e!72637 (and tp!68900 tp!68903))))

(declare-fun b!126252 () Bool)

(declare-fun tp!68902 () Bool)

(declare-fun tp!68899 () Bool)

(assert (=> b!126252 (= e!72637 (and tp!68902 tp!68899))))

(assert (=> b!126073 (= tp!68803 e!72637)))

(assert (= (and b!126073 ((_ is ElementMatch!579) (reg!908 (reg!908 r!13481)))) b!126251))

(assert (= (and b!126073 ((_ is Concat!973) (reg!908 (reg!908 r!13481)))) b!126252))

(assert (= (and b!126073 ((_ is Star!579) (reg!908 (reg!908 r!13481)))) b!126253))

(assert (= (and b!126073 ((_ is Union!579) (reg!908 (reg!908 r!13481)))) b!126254))

(declare-fun b!126257 () Bool)

(declare-fun e!72638 () Bool)

(declare-fun tp!68906 () Bool)

(assert (=> b!126257 (= e!72638 tp!68906)))

(declare-fun b!126255 () Bool)

(assert (=> b!126255 (= e!72638 tp_is_empty!1213)))

(declare-fun b!126258 () Bool)

(declare-fun tp!68905 () Bool)

(declare-fun tp!68908 () Bool)

(assert (=> b!126258 (= e!72638 (and tp!68905 tp!68908))))

(declare-fun b!126256 () Bool)

(declare-fun tp!68907 () Bool)

(declare-fun tp!68904 () Bool)

(assert (=> b!126256 (= e!72638 (and tp!68907 tp!68904))))

(assert (=> b!126039 (= tp!68763 e!72638)))

(assert (= (and b!126039 ((_ is ElementMatch!579) (regOne!1671 (regOne!1671 r!13481)))) b!126255))

(assert (= (and b!126039 ((_ is Concat!973) (regOne!1671 (regOne!1671 r!13481)))) b!126256))

(assert (= (and b!126039 ((_ is Star!579) (regOne!1671 (regOne!1671 r!13481)))) b!126257))

(assert (= (and b!126039 ((_ is Union!579) (regOne!1671 (regOne!1671 r!13481)))) b!126258))

(declare-fun b!126261 () Bool)

(declare-fun e!72639 () Bool)

(declare-fun tp!68911 () Bool)

(assert (=> b!126261 (= e!72639 tp!68911)))

(declare-fun b!126259 () Bool)

(assert (=> b!126259 (= e!72639 tp_is_empty!1213)))

(declare-fun b!126262 () Bool)

(declare-fun tp!68910 () Bool)

(declare-fun tp!68913 () Bool)

(assert (=> b!126262 (= e!72639 (and tp!68910 tp!68913))))

(declare-fun b!126260 () Bool)

(declare-fun tp!68912 () Bool)

(declare-fun tp!68909 () Bool)

(assert (=> b!126260 (= e!72639 (and tp!68912 tp!68909))))

(assert (=> b!126039 (= tp!68766 e!72639)))

(assert (= (and b!126039 ((_ is ElementMatch!579) (regTwo!1671 (regOne!1671 r!13481)))) b!126259))

(assert (= (and b!126039 ((_ is Concat!973) (regTwo!1671 (regOne!1671 r!13481)))) b!126260))

(assert (= (and b!126039 ((_ is Star!579) (regTwo!1671 (regOne!1671 r!13481)))) b!126261))

(assert (= (and b!126039 ((_ is Union!579) (regTwo!1671 (regOne!1671 r!13481)))) b!126262))

(declare-fun b!126265 () Bool)

(declare-fun e!72640 () Bool)

(declare-fun tp!68916 () Bool)

(assert (=> b!126265 (= e!72640 tp!68916)))

(declare-fun b!126263 () Bool)

(assert (=> b!126263 (= e!72640 tp_is_empty!1213)))

(declare-fun b!126266 () Bool)

(declare-fun tp!68915 () Bool)

(declare-fun tp!68918 () Bool)

(assert (=> b!126266 (= e!72640 (and tp!68915 tp!68918))))

(declare-fun b!126264 () Bool)

(declare-fun tp!68917 () Bool)

(declare-fun tp!68914 () Bool)

(assert (=> b!126264 (= e!72640 (and tp!68917 tp!68914))))

(assert (=> b!126025 (= tp!68750 e!72640)))

(assert (= (and b!126025 ((_ is ElementMatch!579) (regOne!1670 (regOne!1670 r!13481)))) b!126263))

(assert (= (and b!126025 ((_ is Concat!973) (regOne!1670 (regOne!1670 r!13481)))) b!126264))

(assert (= (and b!126025 ((_ is Star!579) (regOne!1670 (regOne!1670 r!13481)))) b!126265))

(assert (= (and b!126025 ((_ is Union!579) (regOne!1670 (regOne!1670 r!13481)))) b!126266))

(declare-fun b!126278 () Bool)

(declare-fun e!72648 () Bool)

(declare-fun tp!68921 () Bool)

(assert (=> b!126278 (= e!72648 tp!68921)))

(declare-fun b!126276 () Bool)

(assert (=> b!126276 (= e!72648 tp_is_empty!1213)))

(declare-fun b!126279 () Bool)

(declare-fun tp!68920 () Bool)

(declare-fun tp!68923 () Bool)

(assert (=> b!126279 (= e!72648 (and tp!68920 tp!68923))))

(declare-fun b!126277 () Bool)

(declare-fun tp!68922 () Bool)

(declare-fun tp!68919 () Bool)

(assert (=> b!126277 (= e!72648 (and tp!68922 tp!68919))))

(assert (=> b!126025 (= tp!68747 e!72648)))

(assert (= (and b!126025 ((_ is ElementMatch!579) (regTwo!1670 (regOne!1670 r!13481)))) b!126276))

(assert (= (and b!126025 ((_ is Concat!973) (regTwo!1670 (regOne!1670 r!13481)))) b!126277))

(assert (= (and b!126025 ((_ is Star!579) (regTwo!1670 (regOne!1670 r!13481)))) b!126278))

(assert (= (and b!126025 ((_ is Union!579) (regTwo!1670 (regOne!1670 r!13481)))) b!126279))

(declare-fun e!72649 () Bool)

(declare-fun tp!68925 () Bool)

(declare-fun b!126280 () Bool)

(declare-fun tp!68924 () Bool)

(assert (=> b!126280 (= e!72649 (and (inv!2669 (left!1658 (left!1658 (c!27709 input!6028)))) tp!68924 (inv!2669 (right!1988 (left!1658 (c!27709 input!6028)))) tp!68925))))

(declare-fun b!126282 () Bool)

(declare-fun e!72650 () Bool)

(declare-fun tp!68926 () Bool)

(assert (=> b!126282 (= e!72650 tp!68926)))

(declare-fun b!126281 () Bool)

(assert (=> b!126281 (= e!72649 (and (inv!2676 (xs!3180 (left!1658 (c!27709 input!6028)))) e!72650))))

(assert (=> b!126068 (= tp!68798 (and (inv!2669 (left!1658 (c!27709 input!6028))) e!72649))))

(assert (= (and b!126068 ((_ is Node!585) (left!1658 (c!27709 input!6028)))) b!126280))

(assert (= b!126281 b!126282))

(assert (= (and b!126068 ((_ is Leaf!1023) (left!1658 (c!27709 input!6028)))) b!126281))

(declare-fun m!111629 () Bool)

(assert (=> b!126280 m!111629))

(declare-fun m!111631 () Bool)

(assert (=> b!126280 m!111631))

(declare-fun m!111633 () Bool)

(assert (=> b!126281 m!111633))

(assert (=> b!126068 m!111537))

(declare-fun e!72651 () Bool)

(declare-fun tp!68927 () Bool)

(declare-fun tp!68928 () Bool)

(declare-fun b!126283 () Bool)

(assert (=> b!126283 (= e!72651 (and (inv!2669 (left!1658 (right!1988 (c!27709 input!6028)))) tp!68927 (inv!2669 (right!1988 (right!1988 (c!27709 input!6028)))) tp!68928))))

(declare-fun b!126285 () Bool)

(declare-fun e!72652 () Bool)

(declare-fun tp!68929 () Bool)

(assert (=> b!126285 (= e!72652 tp!68929)))

(declare-fun b!126284 () Bool)

(assert (=> b!126284 (= e!72651 (and (inv!2676 (xs!3180 (right!1988 (c!27709 input!6028)))) e!72652))))

(assert (=> b!126068 (= tp!68799 (and (inv!2669 (right!1988 (c!27709 input!6028))) e!72651))))

(assert (= (and b!126068 ((_ is Node!585) (right!1988 (c!27709 input!6028)))) b!126283))

(assert (= b!126284 b!126285))

(assert (= (and b!126068 ((_ is Leaf!1023) (right!1988 (c!27709 input!6028)))) b!126284))

(declare-fun m!111637 () Bool)

(assert (=> b!126283 m!111637))

(declare-fun m!111639 () Bool)

(assert (=> b!126283 m!111639))

(declare-fun m!111641 () Bool)

(assert (=> b!126284 m!111641))

(assert (=> b!126068 m!111539))

(declare-fun b!126288 () Bool)

(declare-fun e!72653 () Bool)

(declare-fun tp!68932 () Bool)

(assert (=> b!126288 (= e!72653 tp!68932)))

(declare-fun b!126286 () Bool)

(assert (=> b!126286 (= e!72653 tp_is_empty!1213)))

(declare-fun b!126289 () Bool)

(declare-fun tp!68931 () Bool)

(declare-fun tp!68934 () Bool)

(assert (=> b!126289 (= e!72653 (and tp!68931 tp!68934))))

(declare-fun b!126287 () Bool)

(declare-fun tp!68933 () Bool)

(declare-fun tp!68930 () Bool)

(assert (=> b!126287 (= e!72653 (and tp!68933 tp!68930))))

(assert (=> b!126027 (= tp!68748 e!72653)))

(assert (= (and b!126027 ((_ is ElementMatch!579) (regOne!1671 (regOne!1670 r!13481)))) b!126286))

(assert (= (and b!126027 ((_ is Concat!973) (regOne!1671 (regOne!1670 r!13481)))) b!126287))

(assert (= (and b!126027 ((_ is Star!579) (regOne!1671 (regOne!1670 r!13481)))) b!126288))

(assert (= (and b!126027 ((_ is Union!579) (regOne!1671 (regOne!1670 r!13481)))) b!126289))

(declare-fun b!126292 () Bool)

(declare-fun e!72654 () Bool)

(declare-fun tp!68937 () Bool)

(assert (=> b!126292 (= e!72654 tp!68937)))

(declare-fun b!126290 () Bool)

(assert (=> b!126290 (= e!72654 tp_is_empty!1213)))

(declare-fun b!126293 () Bool)

(declare-fun tp!68936 () Bool)

(declare-fun tp!68939 () Bool)

(assert (=> b!126293 (= e!72654 (and tp!68936 tp!68939))))

(declare-fun b!126291 () Bool)

(declare-fun tp!68938 () Bool)

(declare-fun tp!68935 () Bool)

(assert (=> b!126291 (= e!72654 (and tp!68938 tp!68935))))

(assert (=> b!126027 (= tp!68751 e!72654)))

(assert (= (and b!126027 ((_ is ElementMatch!579) (regTwo!1671 (regOne!1670 r!13481)))) b!126290))

(assert (= (and b!126027 ((_ is Concat!973) (regTwo!1671 (regOne!1670 r!13481)))) b!126291))

(assert (= (and b!126027 ((_ is Star!579) (regTwo!1671 (regOne!1670 r!13481)))) b!126292))

(assert (= (and b!126027 ((_ is Union!579) (regTwo!1671 (regOne!1670 r!13481)))) b!126293))

(check-sat (not b!126288) (not b!126262) (not b!126171) (not bm!5465) (not b!126187) (not b!126134) (not b!126185) (not b!126202) (not d!29832) (not b!126246) (not b!126106) (not b!126277) (not b!126120) (not b!126248) (not b!126265) (not b!126261) (not b!126289) (not b!126223) (not b!126227) (not b!126245) (not b!126198) (not b!126170) (not b!126186) (not b!126219) (not b!126121) (not b!126221) (not b!126199) (not b!126194) (not d!29840) (not b!126207) (not b!126165) (not b!126195) (not b!126281) (not b!126124) (not b!126283) (not b!126215) (not b!126131) (not b!126225) (not b!126280) (not b!126174) (not b!126163) (not b!126231) (not bm!5462) (not b!126068) (not b!126258) tp_is_empty!1213 (not b!126191) (not b!126220) (not b!126287) (not b!126167) (not b!126279) (not b!126282) (not b!126285) (not b!126175) (not b!126257) (not b!126214) (not b!126260) (not b!126166) (not d!29854) (not b!126129) (not bm!5463) (not b!126250) (not b!126228) (not d!29858) (not d!29850) (not b!126076) (not b!126085) (not b!126291) (not b!126128) (not b!126152) (not b!126179) (not b!126201) (not b!126233) (not b!126249) (not d!29838) (not bm!5460) (not b!126256) (not b!126292) (not b!126224) (not b!126253) (not b!126125) (not b!126211) (not b!126209) (not b!126278) (not b!126097) (not d!29860) (not b!126254) (not b!126264) (not b!126178) (not b!126169) (not b!126197) (not b!126177) (not b!126190) (not b!126229) (not b!126244) (not b!126206) (not b!126266) (not b!126173) (not b!126213) (not d!29848) (not b!126189) (not b!126232) (not b!126203) (not b!126284) (not b!126210) (not b!126293) (not b!126122) (not b!126123) (not b!126252) (not b!126126) (not b!126205) (not b!126193))
(check-sat)
