; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243152 () Bool)

(assert start!243152)

(declare-fun res!1053140 () Bool)

(declare-fun e!1579746 () Bool)

(assert (=> start!243152 (=> (not res!1053140) (not e!1579746))))

(declare-datatypes ((C!14756 0))(
  ( (C!14757 (val!9030 Int)) )
))
(declare-datatypes ((Regex!7299 0))(
  ( (ElementMatch!7299 (c!395381 C!14756)) (Concat!11995 (regOne!15110 Regex!7299) (regTwo!15110 Regex!7299)) (EmptyExpr!7299) (Star!7299 (reg!7628 Regex!7299)) (EmptyLang!7299) (Union!7299 (regOne!15111 Regex!7299) (regTwo!15111 Regex!7299)) )
))
(declare-fun r!26136 () Regex!7299)

(declare-fun validRegex!2925 (Regex!7299) Bool)

(assert (=> start!243152 (= res!1053140 (validRegex!2925 r!26136))))

(assert (=> start!243152 e!1579746))

(declare-fun e!1579748 () Bool)

(assert (=> start!243152 e!1579748))

(declare-fun e!1579747 () Bool)

(assert (=> start!243152 e!1579747))

(declare-fun tp_is_empty!12453 () Bool)

(assert (=> start!243152 tp_is_empty!12453))

(declare-fun b!2487820 () Bool)

(declare-fun res!1053139 () Bool)

(assert (=> b!2487820 (=> (not res!1053139) (not e!1579746))))

(declare-datatypes ((List!29366 0))(
  ( (Nil!29266) (Cons!29266 (h!34686 C!14756) (t!211065 List!29366)) )
))
(declare-fun s!14955 () List!29366)

(declare-fun c!13476 () C!14756)

(declare-fun contains!5275 (List!29366 C!14756) Bool)

(assert (=> b!2487820 (= res!1053139 (contains!5275 s!14955 c!13476))))

(declare-fun b!2487821 () Bool)

(declare-fun tp!796298 () Bool)

(assert (=> b!2487821 (= e!1579747 (and tp_is_empty!12453 tp!796298))))

(declare-fun b!2487822 () Bool)

(assert (=> b!2487822 (= e!1579746 (= s!14955 Nil!29266))))

(declare-fun b!2487823 () Bool)

(declare-fun tp!796297 () Bool)

(declare-fun tp!796299 () Bool)

(assert (=> b!2487823 (= e!1579748 (and tp!796297 tp!796299))))

(declare-fun b!2487824 () Bool)

(declare-fun tp!796301 () Bool)

(declare-fun tp!796302 () Bool)

(assert (=> b!2487824 (= e!1579748 (and tp!796301 tp!796302))))

(declare-fun b!2487825 () Bool)

(assert (=> b!2487825 (= e!1579748 tp_is_empty!12453)))

(declare-fun b!2487826 () Bool)

(declare-fun tp!796300 () Bool)

(assert (=> b!2487826 (= e!1579748 tp!796300)))

(assert (= (and start!243152 res!1053140) b!2487820))

(assert (= (and b!2487820 res!1053139) b!2487822))

(get-info :version)

(assert (= (and start!243152 ((_ is ElementMatch!7299) r!26136)) b!2487825))

(assert (= (and start!243152 ((_ is Concat!11995) r!26136)) b!2487824))

(assert (= (and start!243152 ((_ is Star!7299) r!26136)) b!2487826))

(assert (= (and start!243152 ((_ is Union!7299) r!26136)) b!2487823))

(assert (= (and start!243152 ((_ is Cons!29266) s!14955)) b!2487821))

(declare-fun m!2856653 () Bool)

(assert (=> start!243152 m!2856653))

(declare-fun m!2856655 () Bool)

(assert (=> b!2487820 m!2856655))

(check-sat (not b!2487826) (not b!2487821) (not start!243152) (not b!2487823) (not b!2487824) tp_is_empty!12453 (not b!2487820))
(check-sat)
(get-model)

(declare-fun b!2487863 () Bool)

(declare-fun e!1579783 () Bool)

(declare-fun e!1579778 () Bool)

(assert (=> b!2487863 (= e!1579783 e!1579778)))

(declare-fun res!1053161 () Bool)

(assert (=> b!2487863 (=> (not res!1053161) (not e!1579778))))

(declare-fun call!152616 () Bool)

(assert (=> b!2487863 (= res!1053161 call!152616)))

(declare-fun d!714059 () Bool)

(declare-fun res!1053163 () Bool)

(declare-fun e!1579781 () Bool)

(assert (=> d!714059 (=> res!1053163 e!1579781)))

(assert (=> d!714059 (= res!1053163 ((_ is ElementMatch!7299) r!26136))))

(assert (=> d!714059 (= (validRegex!2925 r!26136) e!1579781)))

(declare-fun b!2487864 () Bool)

(declare-fun e!1579780 () Bool)

(declare-fun e!1579777 () Bool)

(assert (=> b!2487864 (= e!1579780 e!1579777)))

(declare-fun res!1053162 () Bool)

(declare-fun nullable!2223 (Regex!7299) Bool)

(assert (=> b!2487864 (= res!1053162 (not (nullable!2223 (reg!7628 r!26136))))))

(assert (=> b!2487864 (=> (not res!1053162) (not e!1579777))))

(declare-fun b!2487865 () Bool)

(declare-fun res!1053164 () Bool)

(assert (=> b!2487865 (=> res!1053164 e!1579783)))

(assert (=> b!2487865 (= res!1053164 (not ((_ is Concat!11995) r!26136)))))

(declare-fun e!1579782 () Bool)

(assert (=> b!2487865 (= e!1579782 e!1579783)))

(declare-fun b!2487866 () Bool)

(assert (=> b!2487866 (= e!1579780 e!1579782)))

(declare-fun c!395390 () Bool)

(assert (=> b!2487866 (= c!395390 ((_ is Union!7299) r!26136))))

(declare-fun bm!152611 () Bool)

(declare-fun c!395391 () Bool)

(declare-fun call!152618 () Bool)

(assert (=> bm!152611 (= call!152618 (validRegex!2925 (ite c!395391 (reg!7628 r!26136) (ite c!395390 (regOne!15111 r!26136) (regTwo!15110 r!26136)))))))

(declare-fun b!2487867 () Bool)

(assert (=> b!2487867 (= e!1579777 call!152618)))

(declare-fun bm!152612 () Bool)

(declare-fun call!152617 () Bool)

(assert (=> bm!152612 (= call!152617 call!152618)))

(declare-fun b!2487868 () Bool)

(declare-fun res!1053165 () Bool)

(declare-fun e!1579779 () Bool)

(assert (=> b!2487868 (=> (not res!1053165) (not e!1579779))))

(assert (=> b!2487868 (= res!1053165 call!152617)))

(assert (=> b!2487868 (= e!1579782 e!1579779)))

(declare-fun b!2487869 () Bool)

(assert (=> b!2487869 (= e!1579778 call!152617)))

(declare-fun bm!152613 () Bool)

(assert (=> bm!152613 (= call!152616 (validRegex!2925 (ite c!395390 (regTwo!15111 r!26136) (regOne!15110 r!26136))))))

(declare-fun b!2487870 () Bool)

(assert (=> b!2487870 (= e!1579781 e!1579780)))

(assert (=> b!2487870 (= c!395391 ((_ is Star!7299) r!26136))))

(declare-fun b!2487871 () Bool)

(assert (=> b!2487871 (= e!1579779 call!152616)))

(assert (= (and d!714059 (not res!1053163)) b!2487870))

(assert (= (and b!2487870 c!395391) b!2487864))

(assert (= (and b!2487870 (not c!395391)) b!2487866))

(assert (= (and b!2487864 res!1053162) b!2487867))

(assert (= (and b!2487866 c!395390) b!2487868))

(assert (= (and b!2487866 (not c!395390)) b!2487865))

(assert (= (and b!2487868 res!1053165) b!2487871))

(assert (= (and b!2487865 (not res!1053164)) b!2487863))

(assert (= (and b!2487863 res!1053161) b!2487869))

(assert (= (or b!2487871 b!2487863) bm!152613))

(assert (= (or b!2487868 b!2487869) bm!152612))

(assert (= (or b!2487867 bm!152612) bm!152611))

(declare-fun m!2856657 () Bool)

(assert (=> b!2487864 m!2856657))

(declare-fun m!2856659 () Bool)

(assert (=> bm!152611 m!2856659))

(declare-fun m!2856661 () Bool)

(assert (=> bm!152613 m!2856661))

(assert (=> start!243152 d!714059))

(declare-fun d!714063 () Bool)

(declare-fun lt!893685 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3985 (List!29366) (InoxSet C!14756))

(assert (=> d!714063 (= lt!893685 (select (content!3985 s!14955) c!13476))))

(declare-fun e!1579789 () Bool)

(assert (=> d!714063 (= lt!893685 e!1579789)))

(declare-fun res!1053171 () Bool)

(assert (=> d!714063 (=> (not res!1053171) (not e!1579789))))

(assert (=> d!714063 (= res!1053171 ((_ is Cons!29266) s!14955))))

(assert (=> d!714063 (= (contains!5275 s!14955 c!13476) lt!893685)))

(declare-fun b!2487876 () Bool)

(declare-fun e!1579788 () Bool)

(assert (=> b!2487876 (= e!1579789 e!1579788)))

(declare-fun res!1053170 () Bool)

(assert (=> b!2487876 (=> res!1053170 e!1579788)))

(assert (=> b!2487876 (= res!1053170 (= (h!34686 s!14955) c!13476))))

(declare-fun b!2487877 () Bool)

(assert (=> b!2487877 (= e!1579788 (contains!5275 (t!211065 s!14955) c!13476))))

(assert (= (and d!714063 res!1053171) b!2487876))

(assert (= (and b!2487876 (not res!1053170)) b!2487877))

(declare-fun m!2856663 () Bool)

(assert (=> d!714063 m!2856663))

(declare-fun m!2856665 () Bool)

(assert (=> d!714063 m!2856665))

(declare-fun m!2856667 () Bool)

(assert (=> b!2487877 m!2856667))

(assert (=> b!2487820 d!714063))

(declare-fun b!2487889 () Bool)

(declare-fun e!1579792 () Bool)

(declare-fun tp!796317 () Bool)

(declare-fun tp!796314 () Bool)

(assert (=> b!2487889 (= e!1579792 (and tp!796317 tp!796314))))

(declare-fun b!2487891 () Bool)

(declare-fun tp!796313 () Bool)

(declare-fun tp!796316 () Bool)

(assert (=> b!2487891 (= e!1579792 (and tp!796313 tp!796316))))

(declare-fun b!2487888 () Bool)

(assert (=> b!2487888 (= e!1579792 tp_is_empty!12453)))

(assert (=> b!2487823 (= tp!796297 e!1579792)))

(declare-fun b!2487890 () Bool)

(declare-fun tp!796315 () Bool)

(assert (=> b!2487890 (= e!1579792 tp!796315)))

(assert (= (and b!2487823 ((_ is ElementMatch!7299) (regOne!15111 r!26136))) b!2487888))

(assert (= (and b!2487823 ((_ is Concat!11995) (regOne!15111 r!26136))) b!2487889))

(assert (= (and b!2487823 ((_ is Star!7299) (regOne!15111 r!26136))) b!2487890))

(assert (= (and b!2487823 ((_ is Union!7299) (regOne!15111 r!26136))) b!2487891))

(declare-fun b!2487893 () Bool)

(declare-fun e!1579793 () Bool)

(declare-fun tp!796322 () Bool)

(declare-fun tp!796319 () Bool)

(assert (=> b!2487893 (= e!1579793 (and tp!796322 tp!796319))))

(declare-fun b!2487895 () Bool)

(declare-fun tp!796318 () Bool)

(declare-fun tp!796321 () Bool)

(assert (=> b!2487895 (= e!1579793 (and tp!796318 tp!796321))))

(declare-fun b!2487892 () Bool)

(assert (=> b!2487892 (= e!1579793 tp_is_empty!12453)))

(assert (=> b!2487823 (= tp!796299 e!1579793)))

(declare-fun b!2487894 () Bool)

(declare-fun tp!796320 () Bool)

(assert (=> b!2487894 (= e!1579793 tp!796320)))

(assert (= (and b!2487823 ((_ is ElementMatch!7299) (regTwo!15111 r!26136))) b!2487892))

(assert (= (and b!2487823 ((_ is Concat!11995) (regTwo!15111 r!26136))) b!2487893))

(assert (= (and b!2487823 ((_ is Star!7299) (regTwo!15111 r!26136))) b!2487894))

(assert (= (and b!2487823 ((_ is Union!7299) (regTwo!15111 r!26136))) b!2487895))

(declare-fun b!2487897 () Bool)

(declare-fun e!1579794 () Bool)

(declare-fun tp!796327 () Bool)

(declare-fun tp!796324 () Bool)

(assert (=> b!2487897 (= e!1579794 (and tp!796327 tp!796324))))

(declare-fun b!2487899 () Bool)

(declare-fun tp!796323 () Bool)

(declare-fun tp!796326 () Bool)

(assert (=> b!2487899 (= e!1579794 (and tp!796323 tp!796326))))

(declare-fun b!2487896 () Bool)

(assert (=> b!2487896 (= e!1579794 tp_is_empty!12453)))

(assert (=> b!2487824 (= tp!796301 e!1579794)))

(declare-fun b!2487898 () Bool)

(declare-fun tp!796325 () Bool)

(assert (=> b!2487898 (= e!1579794 tp!796325)))

(assert (= (and b!2487824 ((_ is ElementMatch!7299) (regOne!15110 r!26136))) b!2487896))

(assert (= (and b!2487824 ((_ is Concat!11995) (regOne!15110 r!26136))) b!2487897))

(assert (= (and b!2487824 ((_ is Star!7299) (regOne!15110 r!26136))) b!2487898))

(assert (= (and b!2487824 ((_ is Union!7299) (regOne!15110 r!26136))) b!2487899))

(declare-fun b!2487901 () Bool)

(declare-fun e!1579795 () Bool)

(declare-fun tp!796332 () Bool)

(declare-fun tp!796329 () Bool)

(assert (=> b!2487901 (= e!1579795 (and tp!796332 tp!796329))))

(declare-fun b!2487903 () Bool)

(declare-fun tp!796328 () Bool)

(declare-fun tp!796331 () Bool)

(assert (=> b!2487903 (= e!1579795 (and tp!796328 tp!796331))))

(declare-fun b!2487900 () Bool)

(assert (=> b!2487900 (= e!1579795 tp_is_empty!12453)))

(assert (=> b!2487824 (= tp!796302 e!1579795)))

(declare-fun b!2487902 () Bool)

(declare-fun tp!796330 () Bool)

(assert (=> b!2487902 (= e!1579795 tp!796330)))

(assert (= (and b!2487824 ((_ is ElementMatch!7299) (regTwo!15110 r!26136))) b!2487900))

(assert (= (and b!2487824 ((_ is Concat!11995) (regTwo!15110 r!26136))) b!2487901))

(assert (= (and b!2487824 ((_ is Star!7299) (regTwo!15110 r!26136))) b!2487902))

(assert (= (and b!2487824 ((_ is Union!7299) (regTwo!15110 r!26136))) b!2487903))

(declare-fun b!2487905 () Bool)

(declare-fun e!1579796 () Bool)

(declare-fun tp!796337 () Bool)

(declare-fun tp!796334 () Bool)

(assert (=> b!2487905 (= e!1579796 (and tp!796337 tp!796334))))

(declare-fun b!2487907 () Bool)

(declare-fun tp!796333 () Bool)

(declare-fun tp!796336 () Bool)

(assert (=> b!2487907 (= e!1579796 (and tp!796333 tp!796336))))

(declare-fun b!2487904 () Bool)

(assert (=> b!2487904 (= e!1579796 tp_is_empty!12453)))

(assert (=> b!2487826 (= tp!796300 e!1579796)))

(declare-fun b!2487906 () Bool)

(declare-fun tp!796335 () Bool)

(assert (=> b!2487906 (= e!1579796 tp!796335)))

(assert (= (and b!2487826 ((_ is ElementMatch!7299) (reg!7628 r!26136))) b!2487904))

(assert (= (and b!2487826 ((_ is Concat!11995) (reg!7628 r!26136))) b!2487905))

(assert (= (and b!2487826 ((_ is Star!7299) (reg!7628 r!26136))) b!2487906))

(assert (= (and b!2487826 ((_ is Union!7299) (reg!7628 r!26136))) b!2487907))

(declare-fun b!2487912 () Bool)

(declare-fun e!1579799 () Bool)

(declare-fun tp!796340 () Bool)

(assert (=> b!2487912 (= e!1579799 (and tp_is_empty!12453 tp!796340))))

(assert (=> b!2487821 (= tp!796298 e!1579799)))

(assert (= (and b!2487821 ((_ is Cons!29266) (t!211065 s!14955))) b!2487912))

(check-sat (not b!2487905) (not d!714063) (not b!2487890) (not b!2487906) (not b!2487889) (not b!2487899) (not b!2487902) (not b!2487893) (not b!2487895) (not b!2487901) (not b!2487877) (not bm!152613) (not b!2487894) (not b!2487897) (not b!2487903) (not b!2487912) (not b!2487907) (not b!2487898) (not b!2487891) tp_is_empty!12453 (not b!2487864) (not bm!152611))
(check-sat)
