; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728208 () Bool)

(assert start!728208)

(declare-fun b!7523779 () Bool)

(declare-fun e!4484849 () Bool)

(declare-fun tp!2185918 () Bool)

(assert (=> b!7523779 (= e!4484849 tp!2185918)))

(declare-fun b!7523780 () Bool)

(declare-fun tp_is_empty!49949 () Bool)

(assert (=> b!7523780 (= e!4484849 tp_is_empty!49949)))

(declare-fun b!7523781 () Bool)

(declare-fun res!3015611 () Bool)

(declare-fun e!4484851 () Bool)

(assert (=> b!7523781 (=> (not res!3015611) (not e!4484851))))

(declare-fun e!4484850 () Bool)

(assert (=> b!7523781 (= res!3015611 e!4484850)))

(declare-fun res!3015612 () Bool)

(assert (=> b!7523781 (=> res!3015612 e!4484850)))

(declare-datatypes ((C!39920 0))(
  ( (C!39921 (val!30400 Int)) )
))
(declare-datatypes ((Regex!19797 0))(
  ( (ElementMatch!19797 (c!1390000 C!39920)) (Concat!28642 (regOne!40106 Regex!19797) (regTwo!40106 Regex!19797)) (EmptyExpr!19797) (Star!19797 (reg!20126 Regex!19797)) (EmptyLang!19797) (Union!19797 (regOne!40107 Regex!19797) (regTwo!40107 Regex!19797)) )
))
(declare-fun expr!41 () Regex!19797)

(get-info :version)

(assert (=> b!7523781 (= res!3015612 (not ((_ is Concat!28642) expr!41)))))

(declare-fun b!7523782 () Bool)

(declare-fun res!3015614 () Bool)

(assert (=> b!7523782 (=> (not res!3015614) (not e!4484851))))

(assert (=> b!7523782 (= res!3015614 ((_ is Concat!28642) expr!41))))

(declare-fun b!7523783 () Bool)

(declare-fun nullable!8631 (Regex!19797) Bool)

(assert (=> b!7523783 (= e!4484850 (not (nullable!8631 (regOne!40106 expr!41))))))

(declare-fun res!3015613 () Bool)

(assert (=> start!728208 (=> (not res!3015613) (not e!4484851))))

(declare-fun validRegex!10225 (Regex!19797) Bool)

(assert (=> start!728208 (= res!3015613 (validRegex!10225 expr!41))))

(assert (=> start!728208 e!4484851))

(assert (=> start!728208 e!4484849))

(assert (=> start!728208 tp_is_empty!49949))

(declare-fun b!7523784 () Bool)

(declare-fun tp!2185919 () Bool)

(declare-fun tp!2185921 () Bool)

(assert (=> b!7523784 (= e!4484849 (and tp!2185919 tp!2185921))))

(declare-fun b!7523785 () Bool)

(assert (=> b!7523785 (= e!4484851 (not (validRegex!10225 (regTwo!40106 expr!41))))))

(declare-fun b!7523786 () Bool)

(declare-fun res!3015610 () Bool)

(assert (=> b!7523786 (=> (not res!3015610) (not e!4484851))))

(declare-fun a!1106 () C!39920)

(assert (=> b!7523786 (= res!3015610 (and (or (not ((_ is ElementMatch!19797) expr!41)) (not (= (c!1390000 expr!41) a!1106))) (not ((_ is Union!19797) expr!41))))))

(declare-fun b!7523787 () Bool)

(declare-fun tp!2185917 () Bool)

(declare-fun tp!2185920 () Bool)

(assert (=> b!7523787 (= e!4484849 (and tp!2185917 tp!2185920))))

(assert (= (and start!728208 res!3015613) b!7523786))

(assert (= (and b!7523786 res!3015610) b!7523781))

(assert (= (and b!7523781 (not res!3015612)) b!7523783))

(assert (= (and b!7523781 res!3015611) b!7523782))

(assert (= (and b!7523782 res!3015614) b!7523785))

(assert (= (and start!728208 ((_ is ElementMatch!19797) expr!41)) b!7523780))

(assert (= (and start!728208 ((_ is Concat!28642) expr!41)) b!7523787))

(assert (= (and start!728208 ((_ is Star!19797) expr!41)) b!7523779))

(assert (= (and start!728208 ((_ is Union!19797) expr!41)) b!7523784))

(declare-fun m!8100928 () Bool)

(assert (=> b!7523783 m!8100928))

(declare-fun m!8100930 () Bool)

(assert (=> start!728208 m!8100930))

(declare-fun m!8100932 () Bool)

(assert (=> b!7523785 m!8100932))

(check-sat tp_is_empty!49949 (not b!7523785) (not b!7523787) (not b!7523783) (not b!7523784) (not b!7523779) (not start!728208))
(check-sat)
(get-model)

(declare-fun c!1390013 () Bool)

(declare-fun call!690167 () Bool)

(declare-fun c!1390014 () Bool)

(declare-fun bm!690162 () Bool)

(assert (=> bm!690162 (= call!690167 (validRegex!10225 (ite c!1390013 (reg!20126 (regTwo!40106 expr!41)) (ite c!1390014 (regOne!40107 (regTwo!40106 expr!41)) (regTwo!40106 (regTwo!40106 expr!41))))))))

(declare-fun d!2309220 () Bool)

(declare-fun res!3015646 () Bool)

(declare-fun e!4484900 () Bool)

(assert (=> d!2309220 (=> res!3015646 e!4484900)))

(assert (=> d!2309220 (= res!3015646 ((_ is ElementMatch!19797) (regTwo!40106 expr!41)))))

(assert (=> d!2309220 (= (validRegex!10225 (regTwo!40106 expr!41)) e!4484900)))

(declare-fun b!7523842 () Bool)

(declare-fun e!4484895 () Bool)

(assert (=> b!7523842 (= e!4484900 e!4484895)))

(assert (=> b!7523842 (= c!1390013 ((_ is Star!19797) (regTwo!40106 expr!41)))))

(declare-fun bm!690163 () Bool)

(declare-fun call!690168 () Bool)

(assert (=> bm!690163 (= call!690168 (validRegex!10225 (ite c!1390014 (regTwo!40107 (regTwo!40106 expr!41)) (regOne!40106 (regTwo!40106 expr!41)))))))

(declare-fun b!7523843 () Bool)

(declare-fun res!3015645 () Bool)

(declare-fun e!4484898 () Bool)

(assert (=> b!7523843 (=> res!3015645 e!4484898)))

(assert (=> b!7523843 (= res!3015645 (not ((_ is Concat!28642) (regTwo!40106 expr!41))))))

(declare-fun e!4484897 () Bool)

(assert (=> b!7523843 (= e!4484897 e!4484898)))

(declare-fun b!7523844 () Bool)

(declare-fun e!4484896 () Bool)

(assert (=> b!7523844 (= e!4484896 call!690167)))

(declare-fun b!7523845 () Bool)

(assert (=> b!7523845 (= e!4484895 e!4484896)))

(declare-fun res!3015647 () Bool)

(assert (=> b!7523845 (= res!3015647 (not (nullable!8631 (reg!20126 (regTwo!40106 expr!41)))))))

(assert (=> b!7523845 (=> (not res!3015647) (not e!4484896))))

(declare-fun b!7523846 () Bool)

(declare-fun e!4484899 () Bool)

(assert (=> b!7523846 (= e!4484899 call!690168)))

(declare-fun bm!690164 () Bool)

(declare-fun call!690169 () Bool)

(assert (=> bm!690164 (= call!690169 call!690167)))

(declare-fun b!7523847 () Bool)

(declare-fun e!4484894 () Bool)

(assert (=> b!7523847 (= e!4484898 e!4484894)))

(declare-fun res!3015648 () Bool)

(assert (=> b!7523847 (=> (not res!3015648) (not e!4484894))))

(assert (=> b!7523847 (= res!3015648 call!690168)))

(declare-fun b!7523848 () Bool)

(assert (=> b!7523848 (= e!4484895 e!4484897)))

(assert (=> b!7523848 (= c!1390014 ((_ is Union!19797) (regTwo!40106 expr!41)))))

(declare-fun b!7523849 () Bool)

(declare-fun res!3015649 () Bool)

(assert (=> b!7523849 (=> (not res!3015649) (not e!4484899))))

(assert (=> b!7523849 (= res!3015649 call!690169)))

(assert (=> b!7523849 (= e!4484897 e!4484899)))

(declare-fun b!7523850 () Bool)

(assert (=> b!7523850 (= e!4484894 call!690169)))

(assert (= (and d!2309220 (not res!3015646)) b!7523842))

(assert (= (and b!7523842 c!1390013) b!7523845))

(assert (= (and b!7523842 (not c!1390013)) b!7523848))

(assert (= (and b!7523845 res!3015647) b!7523844))

(assert (= (and b!7523848 c!1390014) b!7523849))

(assert (= (and b!7523848 (not c!1390014)) b!7523843))

(assert (= (and b!7523849 res!3015649) b!7523846))

(assert (= (and b!7523843 (not res!3015645)) b!7523847))

(assert (= (and b!7523847 res!3015648) b!7523850))

(assert (= (or b!7523846 b!7523847) bm!690163))

(assert (= (or b!7523849 b!7523850) bm!690164))

(assert (= (or b!7523844 bm!690164) bm!690162))

(declare-fun m!8100948 () Bool)

(assert (=> bm!690162 m!8100948))

(declare-fun m!8100950 () Bool)

(assert (=> bm!690163 m!8100950))

(declare-fun m!8100952 () Bool)

(assert (=> b!7523845 m!8100952))

(assert (=> b!7523785 d!2309220))

(declare-fun d!2309226 () Bool)

(declare-fun nullableFct!3457 (Regex!19797) Bool)

(assert (=> d!2309226 (= (nullable!8631 (regOne!40106 expr!41)) (nullableFct!3457 (regOne!40106 expr!41)))))

(declare-fun bs!1939712 () Bool)

(assert (= bs!1939712 d!2309226))

(declare-fun m!8100954 () Bool)

(assert (=> bs!1939712 m!8100954))

(assert (=> b!7523783 d!2309226))

(declare-fun c!1390016 () Bool)

(declare-fun bm!690165 () Bool)

(declare-fun c!1390015 () Bool)

(declare-fun call!690170 () Bool)

(assert (=> bm!690165 (= call!690170 (validRegex!10225 (ite c!1390015 (reg!20126 expr!41) (ite c!1390016 (regOne!40107 expr!41) (regTwo!40106 expr!41)))))))

(declare-fun d!2309228 () Bool)

(declare-fun res!3015651 () Bool)

(declare-fun e!4484911 () Bool)

(assert (=> d!2309228 (=> res!3015651 e!4484911)))

(assert (=> d!2309228 (= res!3015651 ((_ is ElementMatch!19797) expr!41))))

(assert (=> d!2309228 (= (validRegex!10225 expr!41) e!4484911)))

(declare-fun b!7523869 () Bool)

(declare-fun e!4484906 () Bool)

(assert (=> b!7523869 (= e!4484911 e!4484906)))

(assert (=> b!7523869 (= c!1390015 ((_ is Star!19797) expr!41))))

(declare-fun bm!690166 () Bool)

(declare-fun call!690171 () Bool)

(assert (=> bm!690166 (= call!690171 (validRegex!10225 (ite c!1390016 (regTwo!40107 expr!41) (regOne!40106 expr!41))))))

(declare-fun b!7523870 () Bool)

(declare-fun res!3015650 () Bool)

(declare-fun e!4484909 () Bool)

(assert (=> b!7523870 (=> res!3015650 e!4484909)))

(assert (=> b!7523870 (= res!3015650 (not ((_ is Concat!28642) expr!41)))))

(declare-fun e!4484908 () Bool)

(assert (=> b!7523870 (= e!4484908 e!4484909)))

(declare-fun b!7523871 () Bool)

(declare-fun e!4484907 () Bool)

(assert (=> b!7523871 (= e!4484907 call!690170)))

(declare-fun b!7523872 () Bool)

(assert (=> b!7523872 (= e!4484906 e!4484907)))

(declare-fun res!3015652 () Bool)

(assert (=> b!7523872 (= res!3015652 (not (nullable!8631 (reg!20126 expr!41))))))

(assert (=> b!7523872 (=> (not res!3015652) (not e!4484907))))

(declare-fun b!7523873 () Bool)

(declare-fun e!4484910 () Bool)

(assert (=> b!7523873 (= e!4484910 call!690171)))

(declare-fun bm!690167 () Bool)

(declare-fun call!690172 () Bool)

(assert (=> bm!690167 (= call!690172 call!690170)))

(declare-fun b!7523874 () Bool)

(declare-fun e!4484905 () Bool)

(assert (=> b!7523874 (= e!4484909 e!4484905)))

(declare-fun res!3015653 () Bool)

(assert (=> b!7523874 (=> (not res!3015653) (not e!4484905))))

(assert (=> b!7523874 (= res!3015653 call!690171)))

(declare-fun b!7523875 () Bool)

(assert (=> b!7523875 (= e!4484906 e!4484908)))

(assert (=> b!7523875 (= c!1390016 ((_ is Union!19797) expr!41))))

(declare-fun b!7523876 () Bool)

(declare-fun res!3015654 () Bool)

(assert (=> b!7523876 (=> (not res!3015654) (not e!4484910))))

(assert (=> b!7523876 (= res!3015654 call!690172)))

(assert (=> b!7523876 (= e!4484908 e!4484910)))

(declare-fun b!7523877 () Bool)

(assert (=> b!7523877 (= e!4484905 call!690172)))

(assert (= (and d!2309228 (not res!3015651)) b!7523869))

(assert (= (and b!7523869 c!1390015) b!7523872))

(assert (= (and b!7523869 (not c!1390015)) b!7523875))

(assert (= (and b!7523872 res!3015652) b!7523871))

(assert (= (and b!7523875 c!1390016) b!7523876))

(assert (= (and b!7523875 (not c!1390016)) b!7523870))

(assert (= (and b!7523876 res!3015654) b!7523873))

(assert (= (and b!7523870 (not res!3015650)) b!7523874))

(assert (= (and b!7523874 res!3015653) b!7523877))

(assert (= (or b!7523873 b!7523874) bm!690166))

(assert (= (or b!7523876 b!7523877) bm!690167))

(assert (= (or b!7523871 bm!690167) bm!690165))

(declare-fun m!8100956 () Bool)

(assert (=> bm!690165 m!8100956))

(declare-fun m!8100958 () Bool)

(assert (=> bm!690166 m!8100958))

(declare-fun m!8100960 () Bool)

(assert (=> b!7523872 m!8100960))

(assert (=> start!728208 d!2309228))

(declare-fun b!7523903 () Bool)

(declare-fun e!4484917 () Bool)

(declare-fun tp!2185970 () Bool)

(declare-fun tp!2185967 () Bool)

(assert (=> b!7523903 (= e!4484917 (and tp!2185970 tp!2185967))))

(declare-fun b!7523902 () Bool)

(declare-fun tp!2185968 () Bool)

(assert (=> b!7523902 (= e!4484917 tp!2185968)))

(declare-fun b!7523901 () Bool)

(declare-fun tp!2185969 () Bool)

(declare-fun tp!2185971 () Bool)

(assert (=> b!7523901 (= e!4484917 (and tp!2185969 tp!2185971))))

(assert (=> b!7523779 (= tp!2185918 e!4484917)))

(declare-fun b!7523900 () Bool)

(assert (=> b!7523900 (= e!4484917 tp_is_empty!49949)))

(assert (= (and b!7523779 ((_ is ElementMatch!19797) (reg!20126 expr!41))) b!7523900))

(assert (= (and b!7523779 ((_ is Concat!28642) (reg!20126 expr!41))) b!7523901))

(assert (= (and b!7523779 ((_ is Star!19797) (reg!20126 expr!41))) b!7523902))

(assert (= (and b!7523779 ((_ is Union!19797) (reg!20126 expr!41))) b!7523903))

(declare-fun b!7523907 () Bool)

(declare-fun e!4484918 () Bool)

(declare-fun tp!2185975 () Bool)

(declare-fun tp!2185972 () Bool)

(assert (=> b!7523907 (= e!4484918 (and tp!2185975 tp!2185972))))

(declare-fun b!7523906 () Bool)

(declare-fun tp!2185973 () Bool)

(assert (=> b!7523906 (= e!4484918 tp!2185973)))

(declare-fun b!7523905 () Bool)

(declare-fun tp!2185974 () Bool)

(declare-fun tp!2185976 () Bool)

(assert (=> b!7523905 (= e!4484918 (and tp!2185974 tp!2185976))))

(assert (=> b!7523784 (= tp!2185919 e!4484918)))

(declare-fun b!7523904 () Bool)

(assert (=> b!7523904 (= e!4484918 tp_is_empty!49949)))

(assert (= (and b!7523784 ((_ is ElementMatch!19797) (regOne!40107 expr!41))) b!7523904))

(assert (= (and b!7523784 ((_ is Concat!28642) (regOne!40107 expr!41))) b!7523905))

(assert (= (and b!7523784 ((_ is Star!19797) (regOne!40107 expr!41))) b!7523906))

(assert (= (and b!7523784 ((_ is Union!19797) (regOne!40107 expr!41))) b!7523907))

(declare-fun b!7523911 () Bool)

(declare-fun e!4484919 () Bool)

(declare-fun tp!2185980 () Bool)

(declare-fun tp!2185977 () Bool)

(assert (=> b!7523911 (= e!4484919 (and tp!2185980 tp!2185977))))

(declare-fun b!7523910 () Bool)

(declare-fun tp!2185978 () Bool)

(assert (=> b!7523910 (= e!4484919 tp!2185978)))

(declare-fun b!7523909 () Bool)

(declare-fun tp!2185979 () Bool)

(declare-fun tp!2185981 () Bool)

(assert (=> b!7523909 (= e!4484919 (and tp!2185979 tp!2185981))))

(assert (=> b!7523784 (= tp!2185921 e!4484919)))

(declare-fun b!7523908 () Bool)

(assert (=> b!7523908 (= e!4484919 tp_is_empty!49949)))

(assert (= (and b!7523784 ((_ is ElementMatch!19797) (regTwo!40107 expr!41))) b!7523908))

(assert (= (and b!7523784 ((_ is Concat!28642) (regTwo!40107 expr!41))) b!7523909))

(assert (= (and b!7523784 ((_ is Star!19797) (regTwo!40107 expr!41))) b!7523910))

(assert (= (and b!7523784 ((_ is Union!19797) (regTwo!40107 expr!41))) b!7523911))

(declare-fun b!7523915 () Bool)

(declare-fun e!4484920 () Bool)

(declare-fun tp!2185985 () Bool)

(declare-fun tp!2185982 () Bool)

(assert (=> b!7523915 (= e!4484920 (and tp!2185985 tp!2185982))))

(declare-fun b!7523914 () Bool)

(declare-fun tp!2185983 () Bool)

(assert (=> b!7523914 (= e!4484920 tp!2185983)))

(declare-fun b!7523913 () Bool)

(declare-fun tp!2185984 () Bool)

(declare-fun tp!2185986 () Bool)

(assert (=> b!7523913 (= e!4484920 (and tp!2185984 tp!2185986))))

(assert (=> b!7523787 (= tp!2185917 e!4484920)))

(declare-fun b!7523912 () Bool)

(assert (=> b!7523912 (= e!4484920 tp_is_empty!49949)))

(assert (= (and b!7523787 ((_ is ElementMatch!19797) (regOne!40106 expr!41))) b!7523912))

(assert (= (and b!7523787 ((_ is Concat!28642) (regOne!40106 expr!41))) b!7523913))

(assert (= (and b!7523787 ((_ is Star!19797) (regOne!40106 expr!41))) b!7523914))

(assert (= (and b!7523787 ((_ is Union!19797) (regOne!40106 expr!41))) b!7523915))

(declare-fun b!7523919 () Bool)

(declare-fun e!4484921 () Bool)

(declare-fun tp!2185990 () Bool)

(declare-fun tp!2185987 () Bool)

(assert (=> b!7523919 (= e!4484921 (and tp!2185990 tp!2185987))))

(declare-fun b!7523918 () Bool)

(declare-fun tp!2185988 () Bool)

(assert (=> b!7523918 (= e!4484921 tp!2185988)))

(declare-fun b!7523917 () Bool)

(declare-fun tp!2185989 () Bool)

(declare-fun tp!2185991 () Bool)

(assert (=> b!7523917 (= e!4484921 (and tp!2185989 tp!2185991))))

(assert (=> b!7523787 (= tp!2185920 e!4484921)))

(declare-fun b!7523916 () Bool)

(assert (=> b!7523916 (= e!4484921 tp_is_empty!49949)))

(assert (= (and b!7523787 ((_ is ElementMatch!19797) (regTwo!40106 expr!41))) b!7523916))

(assert (= (and b!7523787 ((_ is Concat!28642) (regTwo!40106 expr!41))) b!7523917))

(assert (= (and b!7523787 ((_ is Star!19797) (regTwo!40106 expr!41))) b!7523918))

(assert (= (and b!7523787 ((_ is Union!19797) (regTwo!40106 expr!41))) b!7523919))

(check-sat (not b!7523919) (not b!7523914) (not b!7523845) (not d!2309226) (not b!7523915) (not b!7523903) (not b!7523907) (not b!7523913) (not b!7523905) (not b!7523906) (not bm!690162) (not bm!690165) (not b!7523910) tp_is_empty!49949 (not bm!690163) (not b!7523917) (not b!7523872) (not b!7523918) (not b!7523911) (not b!7523902) (not bm!690166) (not b!7523909) (not b!7523901))
(check-sat)
