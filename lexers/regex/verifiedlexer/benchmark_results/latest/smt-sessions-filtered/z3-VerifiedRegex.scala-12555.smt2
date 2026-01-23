; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696836 () Bool)

(assert start!696836)

(declare-fun b!7146770 () Bool)

(declare-fun e!4294730 () Bool)

(declare-fun tp!1972031 () Bool)

(assert (=> b!7146770 (= e!4294730 tp!1972031)))

(declare-fun b!7146771 () Bool)

(declare-fun res!2915769 () Bool)

(declare-fun e!4294729 () Bool)

(assert (=> b!7146771 (=> (not res!2915769) (not e!4294729))))

(declare-datatypes ((C!36712 0))(
  ( (C!36713 (val!28304 Int)) )
))
(declare-datatypes ((Regex!18219 0))(
  ( (ElementMatch!18219 (c!1332672 C!36712)) (Concat!27064 (regOne!36950 Regex!18219) (regTwo!36950 Regex!18219)) (EmptyExpr!18219) (Star!18219 (reg!18548 Regex!18219)) (EmptyLang!18219) (Union!18219 (regOne!36951 Regex!18219) (regTwo!36951 Regex!18219)) )
))
(declare-datatypes ((List!69516 0))(
  ( (Nil!69392) (Cons!69392 (h!75840 Regex!18219) (t!383533 List!69516)) )
))
(declare-datatypes ((Context!14426 0))(
  ( (Context!14427 (exprs!7713 List!69516)) )
))
(declare-datatypes ((List!69517 0))(
  ( (Nil!69393) (Cons!69393 (h!75841 Context!14426) (t!383534 List!69517)) )
))
(declare-fun zl!333 () List!69517)

(declare-fun r!7278 () Regex!18219)

(declare-fun generalisedConcat!2395 (List!69516) Regex!18219)

(assert (=> b!7146771 (= res!2915769 (not (= (generalisedConcat!2395 (exprs!7713 (h!75841 zl!333))) r!7278)))))

(declare-fun b!7146772 () Bool)

(declare-fun res!2915771 () Bool)

(assert (=> b!7146772 (=> (not res!2915771) (not e!4294729))))

(get-info :version)

(assert (=> b!7146772 (= res!2915771 ((_ is Cons!69393) zl!333))))

(declare-fun res!2915770 () Bool)

(assert (=> start!696836 (=> (not res!2915770) (not e!4294729))))

(declare-fun contains!20651 (List!69516 Regex!18219) Bool)

(declare-fun unfocusZipperList!2260 (List!69517) List!69516)

(assert (=> start!696836 (= res!2915770 (contains!20651 (unfocusZipperList!2260 zl!333) r!7278))))

(assert (=> start!696836 e!4294729))

(declare-fun e!4294731 () Bool)

(assert (=> start!696836 e!4294731))

(assert (=> start!696836 e!4294730))

(declare-fun b!7146773 () Bool)

(declare-fun e!4294732 () Bool)

(declare-fun tp!1972033 () Bool)

(assert (=> b!7146773 (= e!4294732 tp!1972033)))

(declare-fun b!7146774 () Bool)

(declare-fun size!41509 (List!69517) Int)

(assert (=> b!7146774 (= e!4294729 (>= (size!41509 (t!383534 zl!333)) (size!41509 zl!333)))))

(declare-fun b!7146775 () Bool)

(declare-fun tp!1972032 () Bool)

(declare-fun inv!88611 (Context!14426) Bool)

(assert (=> b!7146775 (= e!4294731 (and (inv!88611 (h!75841 zl!333)) e!4294732 tp!1972032))))

(declare-fun b!7146776 () Bool)

(declare-fun tp_is_empty!46075 () Bool)

(assert (=> b!7146776 (= e!4294730 tp_is_empty!46075)))

(declare-fun b!7146777 () Bool)

(declare-fun tp!1972036 () Bool)

(declare-fun tp!1972037 () Bool)

(assert (=> b!7146777 (= e!4294730 (and tp!1972036 tp!1972037))))

(declare-fun b!7146778 () Bool)

(declare-fun res!2915768 () Bool)

(assert (=> b!7146778 (=> (not res!2915768) (not e!4294729))))

(assert (=> b!7146778 (= res!2915768 (contains!20651 (unfocusZipperList!2260 (t!383534 zl!333)) r!7278))))

(declare-fun b!7146779 () Bool)

(declare-fun tp!1972034 () Bool)

(declare-fun tp!1972035 () Bool)

(assert (=> b!7146779 (= e!4294730 (and tp!1972034 tp!1972035))))

(assert (= (and start!696836 res!2915770) b!7146772))

(assert (= (and b!7146772 res!2915771) b!7146771))

(assert (= (and b!7146771 res!2915769) b!7146778))

(assert (= (and b!7146778 res!2915768) b!7146774))

(assert (= b!7146775 b!7146773))

(assert (= (and start!696836 ((_ is Cons!69393) zl!333)) b!7146775))

(assert (= (and start!696836 ((_ is ElementMatch!18219) r!7278)) b!7146776))

(assert (= (and start!696836 ((_ is Concat!27064) r!7278)) b!7146779))

(assert (= (and start!696836 ((_ is Star!18219) r!7278)) b!7146770))

(assert (= (and start!696836 ((_ is Union!18219) r!7278)) b!7146777))

(declare-fun m!7859514 () Bool)

(assert (=> b!7146775 m!7859514))

(declare-fun m!7859516 () Bool)

(assert (=> b!7146778 m!7859516))

(assert (=> b!7146778 m!7859516))

(declare-fun m!7859518 () Bool)

(assert (=> b!7146778 m!7859518))

(declare-fun m!7859520 () Bool)

(assert (=> b!7146771 m!7859520))

(declare-fun m!7859522 () Bool)

(assert (=> start!696836 m!7859522))

(assert (=> start!696836 m!7859522))

(declare-fun m!7859524 () Bool)

(assert (=> start!696836 m!7859524))

(declare-fun m!7859526 () Bool)

(assert (=> b!7146774 m!7859526))

(declare-fun m!7859528 () Bool)

(assert (=> b!7146774 m!7859528))

(check-sat (not b!7146777) (not b!7146775) tp_is_empty!46075 (not b!7146770) (not start!696836) (not b!7146774) (not b!7146779) (not b!7146773) (not b!7146778) (not b!7146771))
(check-sat)
(get-model)

(declare-fun d!2228184 () Bool)

(declare-fun lt!2568909 () Int)

(assert (=> d!2228184 (>= lt!2568909 0)))

(declare-fun e!4294735 () Int)

(assert (=> d!2228184 (= lt!2568909 e!4294735)))

(declare-fun c!1332675 () Bool)

(assert (=> d!2228184 (= c!1332675 ((_ is Nil!69393) (t!383534 zl!333)))))

(assert (=> d!2228184 (= (size!41509 (t!383534 zl!333)) lt!2568909)))

(declare-fun b!7146784 () Bool)

(assert (=> b!7146784 (= e!4294735 0)))

(declare-fun b!7146785 () Bool)

(assert (=> b!7146785 (= e!4294735 (+ 1 (size!41509 (t!383534 (t!383534 zl!333)))))))

(assert (= (and d!2228184 c!1332675) b!7146784))

(assert (= (and d!2228184 (not c!1332675)) b!7146785))

(declare-fun m!7859530 () Bool)

(assert (=> b!7146785 m!7859530))

(assert (=> b!7146774 d!2228184))

(declare-fun d!2228188 () Bool)

(declare-fun lt!2568910 () Int)

(assert (=> d!2228188 (>= lt!2568910 0)))

(declare-fun e!4294736 () Int)

(assert (=> d!2228188 (= lt!2568910 e!4294736)))

(declare-fun c!1332676 () Bool)

(assert (=> d!2228188 (= c!1332676 ((_ is Nil!69393) zl!333))))

(assert (=> d!2228188 (= (size!41509 zl!333) lt!2568910)))

(declare-fun b!7146786 () Bool)

(assert (=> b!7146786 (= e!4294736 0)))

(declare-fun b!7146787 () Bool)

(assert (=> b!7146787 (= e!4294736 (+ 1 (size!41509 (t!383534 zl!333))))))

(assert (= (and d!2228188 c!1332676) b!7146786))

(assert (= (and d!2228188 (not c!1332676)) b!7146787))

(assert (=> b!7146787 m!7859526))

(assert (=> b!7146774 d!2228188))

(declare-fun d!2228190 () Bool)

(declare-fun lambda!435833 () Int)

(declare-fun forall!17055 (List!69516 Int) Bool)

(assert (=> d!2228190 (= (inv!88611 (h!75841 zl!333)) (forall!17055 (exprs!7713 (h!75841 zl!333)) lambda!435833))))

(declare-fun bs!1889214 () Bool)

(assert (= bs!1889214 d!2228190))

(declare-fun m!7859578 () Bool)

(assert (=> bs!1889214 m!7859578))

(assert (=> b!7146775 d!2228190))

(declare-fun bs!1889215 () Bool)

(declare-fun d!2228206 () Bool)

(assert (= bs!1889215 (and d!2228206 d!2228190)))

(declare-fun lambda!435836 () Int)

(assert (=> bs!1889215 (= lambda!435836 lambda!435833)))

(declare-fun b!7146905 () Bool)

(declare-fun e!4294804 () Bool)

(declare-fun e!4294803 () Bool)

(assert (=> b!7146905 (= e!4294804 e!4294803)))

(declare-fun c!1332707 () Bool)

(declare-fun isEmpty!40091 (List!69516) Bool)

(assert (=> b!7146905 (= c!1332707 (isEmpty!40091 (exprs!7713 (h!75841 zl!333))))))

(declare-fun b!7146906 () Bool)

(declare-fun lt!2568928 () Regex!18219)

(declare-fun isEmptyExpr!2052 (Regex!18219) Bool)

(assert (=> b!7146906 (= e!4294803 (isEmptyExpr!2052 lt!2568928))))

(declare-fun b!7146907 () Bool)

(declare-fun e!4294802 () Regex!18219)

(assert (=> b!7146907 (= e!4294802 EmptyExpr!18219)))

(assert (=> d!2228206 e!4294804))

(declare-fun res!2915790 () Bool)

(assert (=> d!2228206 (=> (not res!2915790) (not e!4294804))))

(declare-fun validRegex!9381 (Regex!18219) Bool)

(assert (=> d!2228206 (= res!2915790 (validRegex!9381 lt!2568928))))

(declare-fun e!4294801 () Regex!18219)

(assert (=> d!2228206 (= lt!2568928 e!4294801)))

(declare-fun c!1332708 () Bool)

(declare-fun e!4294799 () Bool)

(assert (=> d!2228206 (= c!1332708 e!4294799)))

(declare-fun res!2915791 () Bool)

(assert (=> d!2228206 (=> (not res!2915791) (not e!4294799))))

(assert (=> d!2228206 (= res!2915791 ((_ is Cons!69392) (exprs!7713 (h!75841 zl!333))))))

(assert (=> d!2228206 (forall!17055 (exprs!7713 (h!75841 zl!333)) lambda!435836)))

(assert (=> d!2228206 (= (generalisedConcat!2395 (exprs!7713 (h!75841 zl!333))) lt!2568928)))

(declare-fun b!7146908 () Bool)

(declare-fun e!4294800 () Bool)

(assert (=> b!7146908 (= e!4294803 e!4294800)))

(declare-fun c!1332705 () Bool)

(declare-fun tail!14002 (List!69516) List!69516)

(assert (=> b!7146908 (= c!1332705 (isEmpty!40091 (tail!14002 (exprs!7713 (h!75841 zl!333)))))))

(declare-fun b!7146909 () Bool)

(assert (=> b!7146909 (= e!4294801 (h!75840 (exprs!7713 (h!75841 zl!333))))))

(declare-fun b!7146910 () Bool)

(declare-fun isConcat!1575 (Regex!18219) Bool)

(assert (=> b!7146910 (= e!4294800 (isConcat!1575 lt!2568928))))

(declare-fun b!7146911 () Bool)

(assert (=> b!7146911 (= e!4294802 (Concat!27064 (h!75840 (exprs!7713 (h!75841 zl!333))) (generalisedConcat!2395 (t!383533 (exprs!7713 (h!75841 zl!333))))))))

(declare-fun b!7146912 () Bool)

(assert (=> b!7146912 (= e!4294799 (isEmpty!40091 (t!383533 (exprs!7713 (h!75841 zl!333)))))))

(declare-fun b!7146913 () Bool)

(declare-fun head!14532 (List!69516) Regex!18219)

(assert (=> b!7146913 (= e!4294800 (= lt!2568928 (head!14532 (exprs!7713 (h!75841 zl!333)))))))

(declare-fun b!7146914 () Bool)

(assert (=> b!7146914 (= e!4294801 e!4294802)))

(declare-fun c!1332706 () Bool)

(assert (=> b!7146914 (= c!1332706 ((_ is Cons!69392) (exprs!7713 (h!75841 zl!333))))))

(assert (= (and d!2228206 res!2915791) b!7146912))

(assert (= (and d!2228206 c!1332708) b!7146909))

(assert (= (and d!2228206 (not c!1332708)) b!7146914))

(assert (= (and b!7146914 c!1332706) b!7146911))

(assert (= (and b!7146914 (not c!1332706)) b!7146907))

(assert (= (and d!2228206 res!2915790) b!7146905))

(assert (= (and b!7146905 c!1332707) b!7146906))

(assert (= (and b!7146905 (not c!1332707)) b!7146908))

(assert (= (and b!7146908 c!1332705) b!7146913))

(assert (= (and b!7146908 (not c!1332705)) b!7146910))

(declare-fun m!7859580 () Bool)

(assert (=> b!7146911 m!7859580))

(declare-fun m!7859582 () Bool)

(assert (=> d!2228206 m!7859582))

(declare-fun m!7859584 () Bool)

(assert (=> d!2228206 m!7859584))

(declare-fun m!7859586 () Bool)

(assert (=> b!7146905 m!7859586))

(declare-fun m!7859588 () Bool)

(assert (=> b!7146908 m!7859588))

(assert (=> b!7146908 m!7859588))

(declare-fun m!7859590 () Bool)

(assert (=> b!7146908 m!7859590))

(declare-fun m!7859592 () Bool)

(assert (=> b!7146913 m!7859592))

(declare-fun m!7859594 () Bool)

(assert (=> b!7146906 m!7859594))

(declare-fun m!7859596 () Bool)

(assert (=> b!7146910 m!7859596))

(declare-fun m!7859598 () Bool)

(assert (=> b!7146912 m!7859598))

(assert (=> b!7146771 d!2228206))

(declare-fun d!2228208 () Bool)

(declare-fun lt!2568931 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14240 (List!69516) (InoxSet Regex!18219))

(assert (=> d!2228208 (= lt!2568931 (select (content!14240 (unfocusZipperList!2260 zl!333)) r!7278))))

(declare-fun e!4294810 () Bool)

(assert (=> d!2228208 (= lt!2568931 e!4294810)))

(declare-fun res!2915796 () Bool)

(assert (=> d!2228208 (=> (not res!2915796) (not e!4294810))))

(assert (=> d!2228208 (= res!2915796 ((_ is Cons!69392) (unfocusZipperList!2260 zl!333)))))

(assert (=> d!2228208 (= (contains!20651 (unfocusZipperList!2260 zl!333) r!7278) lt!2568931)))

(declare-fun b!7146919 () Bool)

(declare-fun e!4294809 () Bool)

(assert (=> b!7146919 (= e!4294810 e!4294809)))

(declare-fun res!2915797 () Bool)

(assert (=> b!7146919 (=> res!2915797 e!4294809)))

(assert (=> b!7146919 (= res!2915797 (= (h!75840 (unfocusZipperList!2260 zl!333)) r!7278))))

(declare-fun b!7146920 () Bool)

(assert (=> b!7146920 (= e!4294809 (contains!20651 (t!383533 (unfocusZipperList!2260 zl!333)) r!7278))))

(assert (= (and d!2228208 res!2915796) b!7146919))

(assert (= (and b!7146919 (not res!2915797)) b!7146920))

(assert (=> d!2228208 m!7859522))

(declare-fun m!7859600 () Bool)

(assert (=> d!2228208 m!7859600))

(declare-fun m!7859602 () Bool)

(assert (=> d!2228208 m!7859602))

(declare-fun m!7859604 () Bool)

(assert (=> b!7146920 m!7859604))

(assert (=> start!696836 d!2228208))

(declare-fun bs!1889216 () Bool)

(declare-fun d!2228210 () Bool)

(assert (= bs!1889216 (and d!2228210 d!2228190)))

(declare-fun lambda!435839 () Int)

(assert (=> bs!1889216 (= lambda!435839 lambda!435833)))

(declare-fun bs!1889217 () Bool)

(assert (= bs!1889217 (and d!2228210 d!2228206)))

(assert (=> bs!1889217 (= lambda!435839 lambda!435836)))

(declare-fun lt!2568934 () List!69516)

(assert (=> d!2228210 (forall!17055 lt!2568934 lambda!435839)))

(declare-fun e!4294813 () List!69516)

(assert (=> d!2228210 (= lt!2568934 e!4294813)))

(declare-fun c!1332711 () Bool)

(assert (=> d!2228210 (= c!1332711 ((_ is Cons!69393) zl!333))))

(assert (=> d!2228210 (= (unfocusZipperList!2260 zl!333) lt!2568934)))

(declare-fun b!7146925 () Bool)

(assert (=> b!7146925 (= e!4294813 (Cons!69392 (generalisedConcat!2395 (exprs!7713 (h!75841 zl!333))) (unfocusZipperList!2260 (t!383534 zl!333))))))

(declare-fun b!7146926 () Bool)

(assert (=> b!7146926 (= e!4294813 Nil!69392)))

(assert (= (and d!2228210 c!1332711) b!7146925))

(assert (= (and d!2228210 (not c!1332711)) b!7146926))

(declare-fun m!7859606 () Bool)

(assert (=> d!2228210 m!7859606))

(assert (=> b!7146925 m!7859520))

(assert (=> b!7146925 m!7859516))

(assert (=> start!696836 d!2228210))

(declare-fun d!2228212 () Bool)

(declare-fun lt!2568935 () Bool)

(assert (=> d!2228212 (= lt!2568935 (select (content!14240 (unfocusZipperList!2260 (t!383534 zl!333))) r!7278))))

(declare-fun e!4294815 () Bool)

(assert (=> d!2228212 (= lt!2568935 e!4294815)))

(declare-fun res!2915798 () Bool)

(assert (=> d!2228212 (=> (not res!2915798) (not e!4294815))))

(assert (=> d!2228212 (= res!2915798 ((_ is Cons!69392) (unfocusZipperList!2260 (t!383534 zl!333))))))

(assert (=> d!2228212 (= (contains!20651 (unfocusZipperList!2260 (t!383534 zl!333)) r!7278) lt!2568935)))

(declare-fun b!7146927 () Bool)

(declare-fun e!4294814 () Bool)

(assert (=> b!7146927 (= e!4294815 e!4294814)))

(declare-fun res!2915799 () Bool)

(assert (=> b!7146927 (=> res!2915799 e!4294814)))

(assert (=> b!7146927 (= res!2915799 (= (h!75840 (unfocusZipperList!2260 (t!383534 zl!333))) r!7278))))

(declare-fun b!7146928 () Bool)

(assert (=> b!7146928 (= e!4294814 (contains!20651 (t!383533 (unfocusZipperList!2260 (t!383534 zl!333))) r!7278))))

(assert (= (and d!2228212 res!2915798) b!7146927))

(assert (= (and b!7146927 (not res!2915799)) b!7146928))

(assert (=> d!2228212 m!7859516))

(declare-fun m!7859608 () Bool)

(assert (=> d!2228212 m!7859608))

(declare-fun m!7859610 () Bool)

(assert (=> d!2228212 m!7859610))

(declare-fun m!7859612 () Bool)

(assert (=> b!7146928 m!7859612))

(assert (=> b!7146778 d!2228212))

(declare-fun bs!1889218 () Bool)

(declare-fun d!2228214 () Bool)

(assert (= bs!1889218 (and d!2228214 d!2228190)))

(declare-fun lambda!435840 () Int)

(assert (=> bs!1889218 (= lambda!435840 lambda!435833)))

(declare-fun bs!1889219 () Bool)

(assert (= bs!1889219 (and d!2228214 d!2228206)))

(assert (=> bs!1889219 (= lambda!435840 lambda!435836)))

(declare-fun bs!1889220 () Bool)

(assert (= bs!1889220 (and d!2228214 d!2228210)))

(assert (=> bs!1889220 (= lambda!435840 lambda!435839)))

(declare-fun lt!2568936 () List!69516)

(assert (=> d!2228214 (forall!17055 lt!2568936 lambda!435840)))

(declare-fun e!4294816 () List!69516)

(assert (=> d!2228214 (= lt!2568936 e!4294816)))

(declare-fun c!1332712 () Bool)

(assert (=> d!2228214 (= c!1332712 ((_ is Cons!69393) (t!383534 zl!333)))))

(assert (=> d!2228214 (= (unfocusZipperList!2260 (t!383534 zl!333)) lt!2568936)))

(declare-fun b!7146929 () Bool)

(assert (=> b!7146929 (= e!4294816 (Cons!69392 (generalisedConcat!2395 (exprs!7713 (h!75841 (t!383534 zl!333)))) (unfocusZipperList!2260 (t!383534 (t!383534 zl!333)))))))

(declare-fun b!7146930 () Bool)

(assert (=> b!7146930 (= e!4294816 Nil!69392)))

(assert (= (and d!2228214 c!1332712) b!7146929))

(assert (= (and d!2228214 (not c!1332712)) b!7146930))

(declare-fun m!7859614 () Bool)

(assert (=> d!2228214 m!7859614))

(declare-fun m!7859616 () Bool)

(assert (=> b!7146929 m!7859616))

(declare-fun m!7859618 () Bool)

(assert (=> b!7146929 m!7859618))

(assert (=> b!7146778 d!2228214))

(declare-fun b!7146943 () Bool)

(declare-fun e!4294819 () Bool)

(declare-fun tp!1972097 () Bool)

(assert (=> b!7146943 (= e!4294819 tp!1972097)))

(declare-fun b!7146941 () Bool)

(assert (=> b!7146941 (= e!4294819 tp_is_empty!46075)))

(declare-fun b!7146944 () Bool)

(declare-fun tp!1972096 () Bool)

(declare-fun tp!1972099 () Bool)

(assert (=> b!7146944 (= e!4294819 (and tp!1972096 tp!1972099))))

(declare-fun b!7146942 () Bool)

(declare-fun tp!1972095 () Bool)

(declare-fun tp!1972098 () Bool)

(assert (=> b!7146942 (= e!4294819 (and tp!1972095 tp!1972098))))

(assert (=> b!7146779 (= tp!1972034 e!4294819)))

(assert (= (and b!7146779 ((_ is ElementMatch!18219) (regOne!36950 r!7278))) b!7146941))

(assert (= (and b!7146779 ((_ is Concat!27064) (regOne!36950 r!7278))) b!7146942))

(assert (= (and b!7146779 ((_ is Star!18219) (regOne!36950 r!7278))) b!7146943))

(assert (= (and b!7146779 ((_ is Union!18219) (regOne!36950 r!7278))) b!7146944))

(declare-fun b!7146947 () Bool)

(declare-fun e!4294820 () Bool)

(declare-fun tp!1972102 () Bool)

(assert (=> b!7146947 (= e!4294820 tp!1972102)))

(declare-fun b!7146945 () Bool)

(assert (=> b!7146945 (= e!4294820 tp_is_empty!46075)))

(declare-fun b!7146948 () Bool)

(declare-fun tp!1972101 () Bool)

(declare-fun tp!1972104 () Bool)

(assert (=> b!7146948 (= e!4294820 (and tp!1972101 tp!1972104))))

(declare-fun b!7146946 () Bool)

(declare-fun tp!1972100 () Bool)

(declare-fun tp!1972103 () Bool)

(assert (=> b!7146946 (= e!4294820 (and tp!1972100 tp!1972103))))

(assert (=> b!7146779 (= tp!1972035 e!4294820)))

(assert (= (and b!7146779 ((_ is ElementMatch!18219) (regTwo!36950 r!7278))) b!7146945))

(assert (= (and b!7146779 ((_ is Concat!27064) (regTwo!36950 r!7278))) b!7146946))

(assert (= (and b!7146779 ((_ is Star!18219) (regTwo!36950 r!7278))) b!7146947))

(assert (= (and b!7146779 ((_ is Union!18219) (regTwo!36950 r!7278))) b!7146948))

(declare-fun b!7146956 () Bool)

(declare-fun e!4294826 () Bool)

(declare-fun tp!1972109 () Bool)

(assert (=> b!7146956 (= e!4294826 tp!1972109)))

(declare-fun tp!1972110 () Bool)

(declare-fun e!4294825 () Bool)

(declare-fun b!7146955 () Bool)

(assert (=> b!7146955 (= e!4294825 (and (inv!88611 (h!75841 (t!383534 zl!333))) e!4294826 tp!1972110))))

(assert (=> b!7146775 (= tp!1972032 e!4294825)))

(assert (= b!7146955 b!7146956))

(assert (= (and b!7146775 ((_ is Cons!69393) (t!383534 zl!333))) b!7146955))

(declare-fun m!7859620 () Bool)

(assert (=> b!7146955 m!7859620))

(declare-fun b!7146959 () Bool)

(declare-fun e!4294827 () Bool)

(declare-fun tp!1972113 () Bool)

(assert (=> b!7146959 (= e!4294827 tp!1972113)))

(declare-fun b!7146957 () Bool)

(assert (=> b!7146957 (= e!4294827 tp_is_empty!46075)))

(declare-fun b!7146960 () Bool)

(declare-fun tp!1972112 () Bool)

(declare-fun tp!1972115 () Bool)

(assert (=> b!7146960 (= e!4294827 (and tp!1972112 tp!1972115))))

(declare-fun b!7146958 () Bool)

(declare-fun tp!1972111 () Bool)

(declare-fun tp!1972114 () Bool)

(assert (=> b!7146958 (= e!4294827 (and tp!1972111 tp!1972114))))

(assert (=> b!7146770 (= tp!1972031 e!4294827)))

(assert (= (and b!7146770 ((_ is ElementMatch!18219) (reg!18548 r!7278))) b!7146957))

(assert (= (and b!7146770 ((_ is Concat!27064) (reg!18548 r!7278))) b!7146958))

(assert (= (and b!7146770 ((_ is Star!18219) (reg!18548 r!7278))) b!7146959))

(assert (= (and b!7146770 ((_ is Union!18219) (reg!18548 r!7278))) b!7146960))

(declare-fun b!7146963 () Bool)

(declare-fun e!4294828 () Bool)

(declare-fun tp!1972118 () Bool)

(assert (=> b!7146963 (= e!4294828 tp!1972118)))

(declare-fun b!7146961 () Bool)

(assert (=> b!7146961 (= e!4294828 tp_is_empty!46075)))

(declare-fun b!7146964 () Bool)

(declare-fun tp!1972117 () Bool)

(declare-fun tp!1972120 () Bool)

(assert (=> b!7146964 (= e!4294828 (and tp!1972117 tp!1972120))))

(declare-fun b!7146962 () Bool)

(declare-fun tp!1972116 () Bool)

(declare-fun tp!1972119 () Bool)

(assert (=> b!7146962 (= e!4294828 (and tp!1972116 tp!1972119))))

(assert (=> b!7146777 (= tp!1972036 e!4294828)))

(assert (= (and b!7146777 ((_ is ElementMatch!18219) (regOne!36951 r!7278))) b!7146961))

(assert (= (and b!7146777 ((_ is Concat!27064) (regOne!36951 r!7278))) b!7146962))

(assert (= (and b!7146777 ((_ is Star!18219) (regOne!36951 r!7278))) b!7146963))

(assert (= (and b!7146777 ((_ is Union!18219) (regOne!36951 r!7278))) b!7146964))

(declare-fun b!7146967 () Bool)

(declare-fun e!4294829 () Bool)

(declare-fun tp!1972123 () Bool)

(assert (=> b!7146967 (= e!4294829 tp!1972123)))

(declare-fun b!7146965 () Bool)

(assert (=> b!7146965 (= e!4294829 tp_is_empty!46075)))

(declare-fun b!7146968 () Bool)

(declare-fun tp!1972122 () Bool)

(declare-fun tp!1972125 () Bool)

(assert (=> b!7146968 (= e!4294829 (and tp!1972122 tp!1972125))))

(declare-fun b!7146966 () Bool)

(declare-fun tp!1972121 () Bool)

(declare-fun tp!1972124 () Bool)

(assert (=> b!7146966 (= e!4294829 (and tp!1972121 tp!1972124))))

(assert (=> b!7146777 (= tp!1972037 e!4294829)))

(assert (= (and b!7146777 ((_ is ElementMatch!18219) (regTwo!36951 r!7278))) b!7146965))

(assert (= (and b!7146777 ((_ is Concat!27064) (regTwo!36951 r!7278))) b!7146966))

(assert (= (and b!7146777 ((_ is Star!18219) (regTwo!36951 r!7278))) b!7146967))

(assert (= (and b!7146777 ((_ is Union!18219) (regTwo!36951 r!7278))) b!7146968))

(declare-fun b!7146973 () Bool)

(declare-fun e!4294832 () Bool)

(declare-fun tp!1972130 () Bool)

(declare-fun tp!1972131 () Bool)

(assert (=> b!7146973 (= e!4294832 (and tp!1972130 tp!1972131))))

(assert (=> b!7146773 (= tp!1972033 e!4294832)))

(assert (= (and b!7146773 ((_ is Cons!69392) (exprs!7713 (h!75841 zl!333)))) b!7146973))

(check-sat (not b!7146906) (not d!2228210) (not b!7146956) (not b!7146944) (not b!7146958) tp_is_empty!46075 (not b!7146911) (not d!2228214) (not b!7146928) (not d!2228190) (not b!7146968) (not b!7146943) (not b!7146948) (not b!7146973) (not b!7146920) (not b!7146787) (not b!7146905) (not b!7146947) (not b!7146912) (not b!7146929) (not b!7146925) (not b!7146966) (not b!7146963) (not d!2228206) (not b!7146908) (not d!2228208) (not b!7146964) (not b!7146785) (not b!7146962) (not b!7146959) (not b!7146942) (not b!7146967) (not b!7146946) (not d!2228212) (not b!7146913) (not b!7146910) (not b!7146960) (not b!7146955))
(check-sat)
