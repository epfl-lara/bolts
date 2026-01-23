; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733212 () Bool)

(assert start!733212)

(declare-fun b!7607072 () Bool)

(declare-fun res!3045968 () Bool)

(declare-fun e!4524771 () Bool)

(assert (=> b!7607072 (=> (not res!3045968) (not e!4524771))))

(declare-datatypes ((C!40728 0))(
  ( (C!40729 (val!30804 Int)) )
))
(declare-datatypes ((Regex!20201 0))(
  ( (ElementMatch!20201 (c!1402858 C!40728)) (Concat!29046 (regOne!40914 Regex!20201) (regTwo!40914 Regex!20201)) (EmptyExpr!20201) (Star!20201 (reg!20530 Regex!20201)) (EmptyLang!20201) (Union!20201 (regOne!40915 Regex!20201) (regTwo!40915 Regex!20201)) )
))
(declare-fun r!19218 () Regex!20201)

(declare-fun nullable!8822 (Regex!20201) Bool)

(assert (=> b!7607072 (= res!3045968 (nullable!8822 r!19218))))

(declare-fun b!7607073 () Bool)

(declare-fun e!4524770 () Bool)

(declare-fun tp!2218768 () Bool)

(assert (=> b!7607073 (= e!4524770 tp!2218768)))

(declare-fun b!7607074 () Bool)

(declare-fun tp_is_empty!50757 () Bool)

(assert (=> b!7607074 (= e!4524770 tp_is_empty!50757)))

(declare-fun b!7607075 () Bool)

(declare-fun regexDepth!469 (Regex!20201) Int)

(assert (=> b!7607075 (= e!4524771 (< (regexDepth!469 r!19218) 0))))

(declare-fun b!7607076 () Bool)

(declare-fun tp!2218767 () Bool)

(declare-fun tp!2218766 () Bool)

(assert (=> b!7607076 (= e!4524770 (and tp!2218767 tp!2218766))))

(declare-fun res!3045967 () Bool)

(assert (=> start!733212 (=> (not res!3045967) (not e!4524771))))

(declare-fun validRegex!10623 (Regex!20201) Bool)

(assert (=> start!733212 (= res!3045967 (validRegex!10623 r!19218))))

(assert (=> start!733212 e!4524771))

(assert (=> start!733212 e!4524770))

(declare-fun b!7607077 () Bool)

(declare-fun tp!2218765 () Bool)

(declare-fun tp!2218769 () Bool)

(assert (=> b!7607077 (= e!4524770 (and tp!2218765 tp!2218769))))

(assert (= (and start!733212 res!3045967) b!7607072))

(assert (= (and b!7607072 res!3045968) b!7607075))

(get-info :version)

(assert (= (and start!733212 ((_ is ElementMatch!20201) r!19218)) b!7607074))

(assert (= (and start!733212 ((_ is Concat!29046) r!19218)) b!7607077))

(assert (= (and start!733212 ((_ is Star!20201) r!19218)) b!7607073))

(assert (= (and start!733212 ((_ is Union!20201) r!19218)) b!7607076))

(declare-fun m!8147132 () Bool)

(assert (=> b!7607072 m!8147132))

(declare-fun m!8147134 () Bool)

(assert (=> b!7607075 m!8147134))

(declare-fun m!8147136 () Bool)

(assert (=> start!733212 m!8147136))

(check-sat (not b!7607076) (not b!7607075) (not b!7607072) (not start!733212) (not b!7607077) tp_is_empty!50757 (not b!7607073))
(check-sat)
(get-model)

(declare-fun b!7607139 () Bool)

(declare-fun e!4524813 () Bool)

(declare-fun e!4524815 () Bool)

(assert (=> b!7607139 (= e!4524813 e!4524815)))

(declare-fun c!1402883 () Bool)

(assert (=> b!7607139 (= c!1402883 ((_ is Concat!29046) r!19218))))

(declare-fun bm!698423 () Bool)

(declare-fun call!698434 () Int)

(declare-fun c!1402885 () Bool)

(assert (=> bm!698423 (= call!698434 (regexDepth!469 (ite c!1402885 (regTwo!40915 r!19218) (regTwo!40914 r!19218))))))

(declare-fun b!7607140 () Bool)

(declare-fun e!4524818 () Bool)

(declare-fun lt!2654931 () Int)

(assert (=> b!7607140 (= e!4524818 (= lt!2654931 1))))

(declare-fun bm!698424 () Bool)

(declare-fun call!698433 () Int)

(declare-fun c!1402881 () Bool)

(assert (=> bm!698424 (= call!698433 (regexDepth!469 (ite c!1402881 (regTwo!40915 r!19218) (regTwo!40914 r!19218))))))

(declare-fun b!7607141 () Bool)

(declare-fun e!4524822 () Int)

(declare-fun e!4524817 () Int)

(assert (=> b!7607141 (= e!4524822 e!4524817)))

(declare-fun c!1402882 () Bool)

(assert (=> b!7607141 (= c!1402882 ((_ is Star!20201) r!19218))))

(declare-fun bm!698425 () Bool)

(declare-fun call!698432 () Int)

(declare-fun call!698431 () Int)

(assert (=> bm!698425 (= call!698432 call!698431)))

(declare-fun b!7607142 () Bool)

(assert (=> b!7607142 (= c!1402885 ((_ is Union!20201) r!19218))))

(declare-fun e!4524821 () Int)

(assert (=> b!7607142 (= e!4524817 e!4524821)))

(declare-fun b!7607143 () Bool)

(declare-fun e!4524814 () Bool)

(assert (=> b!7607143 (= e!4524814 (> lt!2654931 call!698433))))

(declare-fun b!7607144 () Bool)

(declare-fun call!698429 () Int)

(assert (=> b!7607144 (= e!4524821 (+ 1 call!698429))))

(declare-fun b!7607145 () Bool)

(declare-fun e!4524819 () Int)

(assert (=> b!7607145 (= e!4524819 1)))

(declare-fun bm!698426 () Bool)

(declare-fun call!698430 () Int)

(declare-fun call!698428 () Int)

(assert (=> bm!698426 (= call!698430 call!698428)))

(declare-fun b!7607146 () Bool)

(assert (=> b!7607146 (= e!4524819 (+ 1 call!698429))))

(declare-fun b!7607147 () Bool)

(assert (=> b!7607147 (= e!4524822 1)))

(declare-fun b!7607148 () Bool)

(declare-fun res!3045990 () Bool)

(assert (=> b!7607148 (=> (not res!3045990) (not e!4524814))))

(assert (=> b!7607148 (= res!3045990 (> lt!2654931 call!698430))))

(assert (=> b!7607148 (= e!4524815 e!4524814)))

(declare-fun b!7607149 () Bool)

(declare-fun c!1402879 () Bool)

(assert (=> b!7607149 (= c!1402879 ((_ is Star!20201) r!19218))))

(assert (=> b!7607149 (= e!4524815 e!4524818)))

(declare-fun b!7607150 () Bool)

(declare-fun e!4524816 () Bool)

(assert (=> b!7607150 (= e!4524816 e!4524813)))

(assert (=> b!7607150 (= c!1402881 ((_ is Union!20201) r!19218))))

(declare-fun bm!698427 () Bool)

(assert (=> bm!698427 (= call!698431 (regexDepth!469 (ite c!1402882 (reg!20530 r!19218) (ite c!1402885 (regOne!40915 r!19218) (regOne!40914 r!19218)))))))

(declare-fun bm!698428 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!698428 (= call!698429 (maxBigInt!0 call!698432 call!698434))))

(declare-fun d!2321920 () Bool)

(assert (=> d!2321920 e!4524816))

(declare-fun res!3045992 () Bool)

(assert (=> d!2321920 (=> (not res!3045992) (not e!4524816))))

(assert (=> d!2321920 (= res!3045992 (> lt!2654931 0))))

(assert (=> d!2321920 (= lt!2654931 e!4524822)))

(declare-fun c!1402880 () Bool)

(assert (=> d!2321920 (= c!1402880 ((_ is ElementMatch!20201) r!19218))))

(assert (=> d!2321920 (= (regexDepth!469 r!19218) lt!2654931)))

(declare-fun b!7607151 () Bool)

(declare-fun e!4524820 () Bool)

(assert (=> b!7607151 (= e!4524813 e!4524820)))

(declare-fun res!3045991 () Bool)

(assert (=> b!7607151 (= res!3045991 (> lt!2654931 call!698428))))

(assert (=> b!7607151 (=> (not res!3045991) (not e!4524820))))

(declare-fun b!7607152 () Bool)

(assert (=> b!7607152 (= e!4524818 (> lt!2654931 call!698430))))

(declare-fun b!7607153 () Bool)

(assert (=> b!7607153 (= e!4524821 e!4524819)))

(declare-fun c!1402884 () Bool)

(assert (=> b!7607153 (= c!1402884 ((_ is Concat!29046) r!19218))))

(declare-fun b!7607154 () Bool)

(assert (=> b!7607154 (= e!4524820 (> lt!2654931 call!698433))))

(declare-fun b!7607155 () Bool)

(assert (=> b!7607155 (= e!4524817 (+ 1 call!698431))))

(declare-fun bm!698429 () Bool)

(assert (=> bm!698429 (= call!698428 (regexDepth!469 (ite c!1402881 (regOne!40915 r!19218) (ite c!1402883 (regOne!40914 r!19218) (reg!20530 r!19218)))))))

(assert (= (and d!2321920 c!1402880) b!7607147))

(assert (= (and d!2321920 (not c!1402880)) b!7607141))

(assert (= (and b!7607141 c!1402882) b!7607155))

(assert (= (and b!7607141 (not c!1402882)) b!7607142))

(assert (= (and b!7607142 c!1402885) b!7607144))

(assert (= (and b!7607142 (not c!1402885)) b!7607153))

(assert (= (and b!7607153 c!1402884) b!7607146))

(assert (= (and b!7607153 (not c!1402884)) b!7607145))

(assert (= (or b!7607144 b!7607146) bm!698423))

(assert (= (or b!7607144 b!7607146) bm!698425))

(assert (= (or b!7607144 b!7607146) bm!698428))

(assert (= (or b!7607155 bm!698425) bm!698427))

(assert (= (and d!2321920 res!3045992) b!7607150))

(assert (= (and b!7607150 c!1402881) b!7607151))

(assert (= (and b!7607150 (not c!1402881)) b!7607139))

(assert (= (and b!7607151 res!3045991) b!7607154))

(assert (= (and b!7607139 c!1402883) b!7607148))

(assert (= (and b!7607139 (not c!1402883)) b!7607149))

(assert (= (and b!7607148 res!3045990) b!7607143))

(assert (= (and b!7607149 c!1402879) b!7607152))

(assert (= (and b!7607149 (not c!1402879)) b!7607140))

(assert (= (or b!7607148 b!7607152) bm!698426))

(assert (= (or b!7607154 b!7607143) bm!698424))

(assert (= (or b!7607151 bm!698426) bm!698429))

(declare-fun m!8147146 () Bool)

(assert (=> bm!698424 m!8147146))

(declare-fun m!8147148 () Bool)

(assert (=> bm!698423 m!8147148))

(declare-fun m!8147150 () Bool)

(assert (=> bm!698429 m!8147150))

(declare-fun m!8147152 () Bool)

(assert (=> bm!698428 m!8147152))

(declare-fun m!8147154 () Bool)

(assert (=> bm!698427 m!8147154))

(assert (=> b!7607075 d!2321920))

(declare-fun bm!698450 () Bool)

(declare-fun call!698455 () Bool)

(declare-fun c!1402904 () Bool)

(assert (=> bm!698450 (= call!698455 (validRegex!10623 (ite c!1402904 (regTwo!40915 r!19218) (regTwo!40914 r!19218))))))

(declare-fun b!7607208 () Bool)

(declare-fun e!4524858 () Bool)

(declare-fun call!698457 () Bool)

(assert (=> b!7607208 (= e!4524858 call!698457)))

(declare-fun b!7607209 () Bool)

(declare-fun e!4524862 () Bool)

(assert (=> b!7607209 (= e!4524862 call!698455)))

(declare-fun b!7607210 () Bool)

(declare-fun e!4524860 () Bool)

(declare-fun e!4524859 () Bool)

(assert (=> b!7607210 (= e!4524860 e!4524859)))

(declare-fun res!3046009 () Bool)

(assert (=> b!7607210 (=> (not res!3046009) (not e!4524859))))

(declare-fun call!698456 () Bool)

(assert (=> b!7607210 (= res!3046009 call!698456)))

(declare-fun bm!698451 () Bool)

(assert (=> bm!698451 (= call!698456 call!698457)))

(declare-fun d!2321928 () Bool)

(declare-fun res!3046010 () Bool)

(declare-fun e!4524857 () Bool)

(assert (=> d!2321928 (=> res!3046010 e!4524857)))

(assert (=> d!2321928 (= res!3046010 ((_ is ElementMatch!20201) r!19218))))

(assert (=> d!2321928 (= (validRegex!10623 r!19218) e!4524857)))

(declare-fun bm!698452 () Bool)

(declare-fun c!1402905 () Bool)

(assert (=> bm!698452 (= call!698457 (validRegex!10623 (ite c!1402905 (reg!20530 r!19218) (ite c!1402904 (regOne!40915 r!19218) (regOne!40914 r!19218)))))))

(declare-fun b!7607211 () Bool)

(declare-fun e!4524863 () Bool)

(assert (=> b!7607211 (= e!4524863 e!4524858)))

(declare-fun res!3046011 () Bool)

(assert (=> b!7607211 (= res!3046011 (not (nullable!8822 (reg!20530 r!19218))))))

(assert (=> b!7607211 (=> (not res!3046011) (not e!4524858))))

(declare-fun b!7607212 () Bool)

(assert (=> b!7607212 (= e!4524857 e!4524863)))

(assert (=> b!7607212 (= c!1402905 ((_ is Star!20201) r!19218))))

(declare-fun b!7607213 () Bool)

(declare-fun e!4524861 () Bool)

(assert (=> b!7607213 (= e!4524863 e!4524861)))

(assert (=> b!7607213 (= c!1402904 ((_ is Union!20201) r!19218))))

(declare-fun b!7607214 () Bool)

(declare-fun res!3046013 () Bool)

(assert (=> b!7607214 (=> (not res!3046013) (not e!4524862))))

(assert (=> b!7607214 (= res!3046013 call!698456)))

(assert (=> b!7607214 (= e!4524861 e!4524862)))

(declare-fun b!7607215 () Bool)

(assert (=> b!7607215 (= e!4524859 call!698455)))

(declare-fun b!7607216 () Bool)

(declare-fun res!3046012 () Bool)

(assert (=> b!7607216 (=> res!3046012 e!4524860)))

(assert (=> b!7607216 (= res!3046012 (not ((_ is Concat!29046) r!19218)))))

(assert (=> b!7607216 (= e!4524861 e!4524860)))

(assert (= (and d!2321928 (not res!3046010)) b!7607212))

(assert (= (and b!7607212 c!1402905) b!7607211))

(assert (= (and b!7607212 (not c!1402905)) b!7607213))

(assert (= (and b!7607211 res!3046011) b!7607208))

(assert (= (and b!7607213 c!1402904) b!7607214))

(assert (= (and b!7607213 (not c!1402904)) b!7607216))

(assert (= (and b!7607214 res!3046013) b!7607209))

(assert (= (and b!7607216 (not res!3046012)) b!7607210))

(assert (= (and b!7607210 res!3046009) b!7607215))

(assert (= (or b!7607214 b!7607210) bm!698451))

(assert (= (or b!7607209 b!7607215) bm!698450))

(assert (= (or b!7607208 bm!698451) bm!698452))

(declare-fun m!8147156 () Bool)

(assert (=> bm!698450 m!8147156))

(declare-fun m!8147158 () Bool)

(assert (=> bm!698452 m!8147158))

(declare-fun m!8147160 () Bool)

(assert (=> b!7607211 m!8147160))

(assert (=> start!733212 d!2321928))

(declare-fun d!2321930 () Bool)

(declare-fun nullableFct!3506 (Regex!20201) Bool)

(assert (=> d!2321930 (= (nullable!8822 r!19218) (nullableFct!3506 r!19218))))

(declare-fun bs!1942768 () Bool)

(assert (= bs!1942768 d!2321930))

(declare-fun m!8147162 () Bool)

(assert (=> bs!1942768 m!8147162))

(assert (=> b!7607072 d!2321930))

(declare-fun b!7607230 () Bool)

(declare-fun e!4524866 () Bool)

(declare-fun tp!2218784 () Bool)

(declare-fun tp!2218780 () Bool)

(assert (=> b!7607230 (= e!4524866 (and tp!2218784 tp!2218780))))

(assert (=> b!7607073 (= tp!2218768 e!4524866)))

(declare-fun b!7607227 () Bool)

(assert (=> b!7607227 (= e!4524866 tp_is_empty!50757)))

(declare-fun b!7607228 () Bool)

(declare-fun tp!2218782 () Bool)

(declare-fun tp!2218783 () Bool)

(assert (=> b!7607228 (= e!4524866 (and tp!2218782 tp!2218783))))

(declare-fun b!7607229 () Bool)

(declare-fun tp!2218781 () Bool)

(assert (=> b!7607229 (= e!4524866 tp!2218781)))

(assert (= (and b!7607073 ((_ is ElementMatch!20201) (reg!20530 r!19218))) b!7607227))

(assert (= (and b!7607073 ((_ is Concat!29046) (reg!20530 r!19218))) b!7607228))

(assert (= (and b!7607073 ((_ is Star!20201) (reg!20530 r!19218))) b!7607229))

(assert (= (and b!7607073 ((_ is Union!20201) (reg!20530 r!19218))) b!7607230))

(declare-fun b!7607234 () Bool)

(declare-fun e!4524867 () Bool)

(declare-fun tp!2218789 () Bool)

(declare-fun tp!2218785 () Bool)

(assert (=> b!7607234 (= e!4524867 (and tp!2218789 tp!2218785))))

(assert (=> b!7607077 (= tp!2218765 e!4524867)))

(declare-fun b!7607231 () Bool)

(assert (=> b!7607231 (= e!4524867 tp_is_empty!50757)))

(declare-fun b!7607232 () Bool)

(declare-fun tp!2218787 () Bool)

(declare-fun tp!2218788 () Bool)

(assert (=> b!7607232 (= e!4524867 (and tp!2218787 tp!2218788))))

(declare-fun b!7607233 () Bool)

(declare-fun tp!2218786 () Bool)

(assert (=> b!7607233 (= e!4524867 tp!2218786)))

(assert (= (and b!7607077 ((_ is ElementMatch!20201) (regOne!40914 r!19218))) b!7607231))

(assert (= (and b!7607077 ((_ is Concat!29046) (regOne!40914 r!19218))) b!7607232))

(assert (= (and b!7607077 ((_ is Star!20201) (regOne!40914 r!19218))) b!7607233))

(assert (= (and b!7607077 ((_ is Union!20201) (regOne!40914 r!19218))) b!7607234))

(declare-fun b!7607255 () Bool)

(declare-fun e!4524878 () Bool)

(declare-fun tp!2218794 () Bool)

(declare-fun tp!2218790 () Bool)

(assert (=> b!7607255 (= e!4524878 (and tp!2218794 tp!2218790))))

(assert (=> b!7607077 (= tp!2218769 e!4524878)))

(declare-fun b!7607252 () Bool)

(assert (=> b!7607252 (= e!4524878 tp_is_empty!50757)))

(declare-fun b!7607253 () Bool)

(declare-fun tp!2218792 () Bool)

(declare-fun tp!2218793 () Bool)

(assert (=> b!7607253 (= e!4524878 (and tp!2218792 tp!2218793))))

(declare-fun b!7607254 () Bool)

(declare-fun tp!2218791 () Bool)

(assert (=> b!7607254 (= e!4524878 tp!2218791)))

(assert (= (and b!7607077 ((_ is ElementMatch!20201) (regTwo!40914 r!19218))) b!7607252))

(assert (= (and b!7607077 ((_ is Concat!29046) (regTwo!40914 r!19218))) b!7607253))

(assert (= (and b!7607077 ((_ is Star!20201) (regTwo!40914 r!19218))) b!7607254))

(assert (= (and b!7607077 ((_ is Union!20201) (regTwo!40914 r!19218))) b!7607255))

(declare-fun b!7607259 () Bool)

(declare-fun e!4524879 () Bool)

(declare-fun tp!2218799 () Bool)

(declare-fun tp!2218795 () Bool)

(assert (=> b!7607259 (= e!4524879 (and tp!2218799 tp!2218795))))

(assert (=> b!7607076 (= tp!2218767 e!4524879)))

(declare-fun b!7607256 () Bool)

(assert (=> b!7607256 (= e!4524879 tp_is_empty!50757)))

(declare-fun b!7607257 () Bool)

(declare-fun tp!2218797 () Bool)

(declare-fun tp!2218798 () Bool)

(assert (=> b!7607257 (= e!4524879 (and tp!2218797 tp!2218798))))

(declare-fun b!7607258 () Bool)

(declare-fun tp!2218796 () Bool)

(assert (=> b!7607258 (= e!4524879 tp!2218796)))

(assert (= (and b!7607076 ((_ is ElementMatch!20201) (regOne!40915 r!19218))) b!7607256))

(assert (= (and b!7607076 ((_ is Concat!29046) (regOne!40915 r!19218))) b!7607257))

(assert (= (and b!7607076 ((_ is Star!20201) (regOne!40915 r!19218))) b!7607258))

(assert (= (and b!7607076 ((_ is Union!20201) (regOne!40915 r!19218))) b!7607259))

(declare-fun b!7607263 () Bool)

(declare-fun e!4524880 () Bool)

(declare-fun tp!2218804 () Bool)

(declare-fun tp!2218800 () Bool)

(assert (=> b!7607263 (= e!4524880 (and tp!2218804 tp!2218800))))

(assert (=> b!7607076 (= tp!2218766 e!4524880)))

(declare-fun b!7607260 () Bool)

(assert (=> b!7607260 (= e!4524880 tp_is_empty!50757)))

(declare-fun b!7607261 () Bool)

(declare-fun tp!2218802 () Bool)

(declare-fun tp!2218803 () Bool)

(assert (=> b!7607261 (= e!4524880 (and tp!2218802 tp!2218803))))

(declare-fun b!7607262 () Bool)

(declare-fun tp!2218801 () Bool)

(assert (=> b!7607262 (= e!4524880 tp!2218801)))

(assert (= (and b!7607076 ((_ is ElementMatch!20201) (regTwo!40915 r!19218))) b!7607260))

(assert (= (and b!7607076 ((_ is Concat!29046) (regTwo!40915 r!19218))) b!7607261))

(assert (= (and b!7607076 ((_ is Star!20201) (regTwo!40915 r!19218))) b!7607262))

(assert (= (and b!7607076 ((_ is Union!20201) (regTwo!40915 r!19218))) b!7607263))

(check-sat (not b!7607211) (not b!7607253) (not b!7607232) (not b!7607233) (not b!7607234) (not b!7607261) (not bm!698452) (not bm!698428) (not bm!698429) (not b!7607263) (not bm!698427) (not b!7607258) (not b!7607230) (not bm!698423) (not b!7607229) (not bm!698424) (not bm!698450) (not d!2321930) (not b!7607228) (not b!7607254) (not b!7607259) (not b!7607257) (not b!7607262) tp_is_empty!50757 (not b!7607255))
(check-sat)
