; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281328 () Bool)

(assert start!281328)

(declare-fun b!2881771 () Bool)

(declare-fun res!1194080 () Bool)

(declare-fun e!1823079 () Bool)

(assert (=> b!2881771 (=> (not res!1194080) (not e!1823079))))

(declare-datatypes ((C!17692 0))(
  ( (C!17693 (val!10880 Int)) )
))
(declare-datatypes ((Regex!8755 0))(
  ( (ElementMatch!8755 (c!468106 C!17692)) (Concat!14076 (regOne!18022 Regex!8755) (regTwo!18022 Regex!8755)) (EmptyExpr!8755) (Star!8755 (reg!9084 Regex!8755)) (EmptyLang!8755) (Union!8755 (regOne!18023 Regex!8755) (regTwo!18023 Regex!8755)) )
))
(declare-datatypes ((List!34553 0))(
  ( (Nil!34429) (Cons!34429 (h!39849 Regex!8755) (t!233596 List!34553)) )
))
(declare-datatypes ((Context!5430 0))(
  ( (Context!5431 (exprs!3215 List!34553)) )
))
(declare-fun c!7184 () Context!5430)

(get-info :version)

(declare-datatypes ((List!34554 0))(
  ( (Nil!34430) (Cons!34430 (h!39850 C!17692) (t!233597 List!34554)) )
))
(declare-datatypes ((Option!6430 0))(
  ( (None!6429) (Some!6429 (v!34555 List!34554)) )
))
(declare-fun getLanguageWitness!461 (Regex!8755) Option!6430)

(assert (=> b!2881771 (= res!1194080 (not ((_ is Some!6429) (getLanguageWitness!461 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881773 () Bool)

(declare-fun e!1823078 () Bool)

(declare-fun tp!924216 () Bool)

(assert (=> b!2881773 (= e!1823078 tp!924216)))

(declare-fun b!2881772 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!497 ((InoxSet Context!5430) List!34554) Bool)

(declare-fun get!10359 (Option!6430) List!34554)

(declare-fun getLanguageWitness!462 (Context!5430) Option!6430)

(assert (=> b!2881772 (= e!1823079 (not (matchZipper!497 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (get!10359 (getLanguageWitness!462 c!7184)))))))

(declare-fun res!1194081 () Bool)

(assert (=> start!281328 (=> (not res!1194081) (not e!1823079))))

(declare-fun lostCause!847 (Context!5430) Bool)

(assert (=> start!281328 (= res!1194081 (not (lostCause!847 c!7184)))))

(assert (=> start!281328 e!1823079))

(declare-fun inv!46474 (Context!5430) Bool)

(assert (=> start!281328 (and (inv!46474 c!7184) e!1823078)))

(declare-fun b!2881770 () Bool)

(declare-fun res!1194079 () Bool)

(assert (=> b!2881770 (=> (not res!1194079) (not e!1823079))))

(assert (=> b!2881770 (= res!1194079 ((_ is Cons!34429) (exprs!3215 c!7184)))))

(assert (= (and start!281328 res!1194081) b!2881770))

(assert (= (and b!2881770 res!1194079) b!2881771))

(assert (= (and b!2881771 res!1194080) b!2881772))

(assert (= start!281328 b!2881773))

(declare-fun m!3299017 () Bool)

(assert (=> b!2881771 m!3299017))

(declare-fun m!3299019 () Bool)

(assert (=> b!2881772 m!3299019))

(declare-fun m!3299021 () Bool)

(assert (=> b!2881772 m!3299021))

(assert (=> b!2881772 m!3299021))

(declare-fun m!3299023 () Bool)

(assert (=> b!2881772 m!3299023))

(assert (=> b!2881772 m!3299019))

(assert (=> b!2881772 m!3299023))

(declare-fun m!3299025 () Bool)

(assert (=> b!2881772 m!3299025))

(declare-fun m!3299027 () Bool)

(assert (=> start!281328 m!3299027))

(declare-fun m!3299029 () Bool)

(assert (=> start!281328 m!3299029))

(check-sat (not b!2881772) (not b!2881771) (not start!281328) (not b!2881773))
(check-sat)
(get-model)

(declare-fun d!833569 () Bool)

(declare-fun c!468109 () Bool)

(declare-fun isEmpty!18751 (List!34554) Bool)

(assert (=> d!833569 (= c!468109 (isEmpty!18751 (get!10359 (getLanguageWitness!462 c!7184))))))

(declare-fun e!1823082 () Bool)

(assert (=> d!833569 (= (matchZipper!497 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (get!10359 (getLanguageWitness!462 c!7184))) e!1823082)))

(declare-fun b!2881778 () Bool)

(declare-fun nullableZipper!732 ((InoxSet Context!5430)) Bool)

(assert (=> b!2881778 (= e!1823082 (nullableZipper!732 (store ((as const (Array Context!5430 Bool)) false) c!7184 true)))))

(declare-fun b!2881779 () Bool)

(declare-fun derivationStepZipper!488 ((InoxSet Context!5430) C!17692) (InoxSet Context!5430))

(declare-fun head!6361 (List!34554) C!17692)

(declare-fun tail!4586 (List!34554) List!34554)

(assert (=> b!2881779 (= e!1823082 (matchZipper!497 (derivationStepZipper!488 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (head!6361 (get!10359 (getLanguageWitness!462 c!7184)))) (tail!4586 (get!10359 (getLanguageWitness!462 c!7184)))))))

(assert (= (and d!833569 c!468109) b!2881778))

(assert (= (and d!833569 (not c!468109)) b!2881779))

(assert (=> d!833569 m!3299023))

(declare-fun m!3299031 () Bool)

(assert (=> d!833569 m!3299031))

(assert (=> b!2881778 m!3299019))

(declare-fun m!3299033 () Bool)

(assert (=> b!2881778 m!3299033))

(assert (=> b!2881779 m!3299023))

(declare-fun m!3299035 () Bool)

(assert (=> b!2881779 m!3299035))

(assert (=> b!2881779 m!3299019))

(assert (=> b!2881779 m!3299035))

(declare-fun m!3299037 () Bool)

(assert (=> b!2881779 m!3299037))

(assert (=> b!2881779 m!3299023))

(declare-fun m!3299039 () Bool)

(assert (=> b!2881779 m!3299039))

(assert (=> b!2881779 m!3299037))

(assert (=> b!2881779 m!3299039))

(declare-fun m!3299041 () Bool)

(assert (=> b!2881779 m!3299041))

(assert (=> b!2881772 d!833569))

(declare-fun d!833573 () Bool)

(assert (=> d!833573 (= (get!10359 (getLanguageWitness!462 c!7184)) (v!34555 (getLanguageWitness!462 c!7184)))))

(assert (=> b!2881772 d!833573))

(declare-fun d!833575 () Bool)

(declare-fun lt!1019876 () Option!6430)

(declare-fun lambda!107623 () Int)

(declare-fun isEmpty!18752 (Option!6430) Bool)

(declare-fun exists!1199 (List!34553 Int) Bool)

(assert (=> d!833575 (= (isEmpty!18752 lt!1019876) (exists!1199 (exprs!3215 c!7184) lambda!107623))))

(declare-fun e!1823123 () Option!6430)

(assert (=> d!833575 (= lt!1019876 e!1823123)))

(declare-fun c!468152 () Bool)

(assert (=> d!833575 (= c!468152 ((_ is Cons!34429) (exprs!3215 c!7184)))))

(assert (=> d!833575 (= (getLanguageWitness!462 c!7184) lt!1019876)))

(declare-fun b!2881858 () Bool)

(declare-fun e!1823122 () Option!6430)

(assert (=> b!2881858 (= e!1823122 None!6429)))

(declare-fun b!2881859 () Bool)

(declare-fun e!1823124 () Option!6430)

(assert (=> b!2881859 (= e!1823124 None!6429)))

(declare-fun b!2881860 () Bool)

(declare-fun c!468151 () Bool)

(declare-fun lt!1019877 () Option!6430)

(assert (=> b!2881860 (= c!468151 ((_ is Some!6429) lt!1019877))))

(assert (=> b!2881860 (= lt!1019877 (getLanguageWitness!462 (Context!5431 (t!233596 (exprs!3215 c!7184)))))))

(assert (=> b!2881860 (= e!1823122 e!1823124)))

(declare-fun b!2881861 () Bool)

(declare-fun lt!1019875 () Option!6430)

(declare-fun ++!8192 (List!34554 List!34554) List!34554)

(assert (=> b!2881861 (= e!1823124 (Some!6429 (++!8192 (v!34555 lt!1019875) (v!34555 lt!1019877))))))

(declare-fun b!2881862 () Bool)

(assert (=> b!2881862 (= e!1823123 e!1823122)))

(assert (=> b!2881862 (= lt!1019875 (getLanguageWitness!461 (h!39849 (exprs!3215 c!7184))))))

(declare-fun c!468153 () Bool)

(assert (=> b!2881862 (= c!468153 ((_ is Some!6429) lt!1019875))))

(declare-fun b!2881863 () Bool)

(assert (=> b!2881863 (= e!1823123 (Some!6429 Nil!34430))))

(assert (= (and d!833575 c!468152) b!2881862))

(assert (= (and d!833575 (not c!468152)) b!2881863))

(assert (= (and b!2881862 c!468153) b!2881860))

(assert (= (and b!2881862 (not c!468153)) b!2881858))

(assert (= (and b!2881860 c!468151) b!2881861))

(assert (= (and b!2881860 (not c!468151)) b!2881859))

(declare-fun m!3299061 () Bool)

(assert (=> d!833575 m!3299061))

(declare-fun m!3299063 () Bool)

(assert (=> d!833575 m!3299063))

(declare-fun m!3299065 () Bool)

(assert (=> b!2881860 m!3299065))

(declare-fun m!3299067 () Bool)

(assert (=> b!2881861 m!3299067))

(assert (=> b!2881862 m!3299017))

(assert (=> b!2881772 d!833575))

(declare-fun b!2881896 () Bool)

(declare-fun e!1823143 () Option!6430)

(assert (=> b!2881896 (= e!1823143 None!6429)))

(declare-fun b!2881897 () Bool)

(declare-fun e!1823141 () Option!6430)

(declare-fun call!186862 () Option!6430)

(assert (=> b!2881897 (= e!1823141 call!186862)))

(declare-fun b!2881898 () Bool)

(declare-fun e!1823147 () Option!6430)

(assert (=> b!2881898 (= e!1823147 (Some!6429 Nil!34430))))

(declare-fun b!2881899 () Bool)

(declare-fun c!468172 () Bool)

(declare-fun lt!1019884 () Option!6430)

(assert (=> b!2881899 (= c!468172 ((_ is Some!6429) lt!1019884))))

(assert (=> b!2881899 (= lt!1019884 call!186862)))

(declare-fun e!1823148 () Option!6430)

(assert (=> b!2881899 (= e!1823148 e!1823143)))

(declare-fun b!2881900 () Bool)

(declare-fun e!1823146 () Option!6430)

(declare-fun e!1823144 () Option!6430)

(assert (=> b!2881900 (= e!1823146 e!1823144)))

(declare-fun c!468173 () Bool)

(assert (=> b!2881900 (= c!468173 ((_ is EmptyLang!8755) (h!39849 (exprs!3215 c!7184))))))

(declare-fun b!2881901 () Bool)

(declare-fun e!1823142 () Option!6430)

(assert (=> b!2881901 (= e!1823142 e!1823147)))

(declare-fun c!468177 () Bool)

(assert (=> b!2881901 (= c!468177 ((_ is Star!8755) (h!39849 (exprs!3215 c!7184))))))

(declare-fun b!2881902 () Bool)

(assert (=> b!2881902 (= e!1823144 None!6429)))

(declare-fun b!2881903 () Bool)

(assert (=> b!2881903 (= e!1823148 None!6429)))

(declare-fun d!833583 () Bool)

(declare-fun c!468175 () Bool)

(assert (=> d!833583 (= c!468175 ((_ is EmptyExpr!8755) (h!39849 (exprs!3215 c!7184))))))

(assert (=> d!833583 (= (getLanguageWitness!461 (h!39849 (exprs!3215 c!7184))) e!1823146)))

(declare-fun bm!186856 () Bool)

(declare-fun call!186861 () Option!6430)

(declare-fun c!468171 () Bool)

(assert (=> bm!186856 (= call!186861 (getLanguageWitness!461 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881904 () Bool)

(declare-fun c!468176 () Bool)

(assert (=> b!2881904 (= c!468176 ((_ is ElementMatch!8755) (h!39849 (exprs!3215 c!7184))))))

(assert (=> b!2881904 (= e!1823144 e!1823142)))

(declare-fun b!2881905 () Bool)

(assert (=> b!2881905 (= e!1823146 (Some!6429 Nil!34430))))

(declare-fun b!2881906 () Bool)

(declare-fun e!1823145 () Option!6430)

(assert (=> b!2881906 (= e!1823145 e!1823141)))

(declare-fun lt!1019885 () Option!6430)

(assert (=> b!2881906 (= lt!1019885 call!186861)))

(declare-fun c!468174 () Bool)

(assert (=> b!2881906 (= c!468174 ((_ is Some!6429) lt!1019885))))

(declare-fun b!2881907 () Bool)

(assert (=> b!2881907 (= e!1823142 (Some!6429 (Cons!34430 (c!468106 (h!39849 (exprs!3215 c!7184))) Nil!34430)))))

(declare-fun b!2881908 () Bool)

(assert (=> b!2881908 (= e!1823145 e!1823148)))

(declare-fun lt!1019886 () Option!6430)

(assert (=> b!2881908 (= lt!1019886 call!186861)))

(declare-fun c!468170 () Bool)

(assert (=> b!2881908 (= c!468170 ((_ is Some!6429) lt!1019886))))

(declare-fun bm!186857 () Bool)

(assert (=> bm!186857 (= call!186862 (getLanguageWitness!461 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881909 () Bool)

(assert (=> b!2881909 (= e!1823143 (Some!6429 (++!8192 (v!34555 lt!1019886) (v!34555 lt!1019884))))))

(declare-fun b!2881910 () Bool)

(assert (=> b!2881910 (= e!1823141 lt!1019885)))

(declare-fun b!2881911 () Bool)

(assert (=> b!2881911 (= c!468171 ((_ is Union!8755) (h!39849 (exprs!3215 c!7184))))))

(assert (=> b!2881911 (= e!1823147 e!1823145)))

(assert (= (and d!833583 c!468175) b!2881905))

(assert (= (and d!833583 (not c!468175)) b!2881900))

(assert (= (and b!2881900 c!468173) b!2881902))

(assert (= (and b!2881900 (not c!468173)) b!2881904))

(assert (= (and b!2881904 c!468176) b!2881907))

(assert (= (and b!2881904 (not c!468176)) b!2881901))

(assert (= (and b!2881901 c!468177) b!2881898))

(assert (= (and b!2881901 (not c!468177)) b!2881911))

(assert (= (and b!2881911 c!468171) b!2881906))

(assert (= (and b!2881911 (not c!468171)) b!2881908))

(assert (= (and b!2881906 c!468174) b!2881910))

(assert (= (and b!2881906 (not c!468174)) b!2881897))

(assert (= (and b!2881908 c!468170) b!2881899))

(assert (= (and b!2881908 (not c!468170)) b!2881903))

(assert (= (and b!2881899 c!468172) b!2881909))

(assert (= (and b!2881899 (not c!468172)) b!2881896))

(assert (= (or b!2881897 b!2881899) bm!186857))

(assert (= (or b!2881906 b!2881908) bm!186856))

(declare-fun m!3299069 () Bool)

(assert (=> bm!186856 m!3299069))

(declare-fun m!3299071 () Bool)

(assert (=> bm!186857 m!3299071))

(declare-fun m!3299073 () Bool)

(assert (=> b!2881909 m!3299073))

(assert (=> b!2881771 d!833583))

(declare-fun bs!523696 () Bool)

(declare-fun d!833585 () Bool)

(assert (= bs!523696 (and d!833585 d!833575)))

(declare-fun lambda!107626 () Int)

(assert (=> bs!523696 (= lambda!107626 lambda!107623)))

(assert (=> d!833585 (= (lostCause!847 c!7184) (exists!1199 (exprs!3215 c!7184) lambda!107626))))

(declare-fun bs!523697 () Bool)

(assert (= bs!523697 d!833585))

(declare-fun m!3299075 () Bool)

(assert (=> bs!523697 m!3299075))

(assert (=> start!281328 d!833585))

(declare-fun bs!523698 () Bool)

(declare-fun d!833587 () Bool)

(assert (= bs!523698 (and d!833587 d!833575)))

(declare-fun lambda!107629 () Int)

(assert (=> bs!523698 (not (= lambda!107629 lambda!107623))))

(declare-fun bs!523699 () Bool)

(assert (= bs!523699 (and d!833587 d!833585)))

(assert (=> bs!523699 (not (= lambda!107629 lambda!107626))))

(declare-fun forall!7098 (List!34553 Int) Bool)

(assert (=> d!833587 (= (inv!46474 c!7184) (forall!7098 (exprs!3215 c!7184) lambda!107629))))

(declare-fun bs!523700 () Bool)

(assert (= bs!523700 d!833587))

(declare-fun m!3299077 () Bool)

(assert (=> bs!523700 m!3299077))

(assert (=> start!281328 d!833587))

(declare-fun b!2881916 () Bool)

(declare-fun e!1823151 () Bool)

(declare-fun tp!924221 () Bool)

(declare-fun tp!924222 () Bool)

(assert (=> b!2881916 (= e!1823151 (and tp!924221 tp!924222))))

(assert (=> b!2881773 (= tp!924216 e!1823151)))

(assert (= (and b!2881773 ((_ is Cons!34429) (exprs!3215 c!7184))) b!2881916))

(check-sat (not bm!186856) (not b!2881860) (not b!2881916) (not d!833585) (not d!833575) (not b!2881779) (not b!2881862) (not bm!186857) (not b!2881778) (not b!2881909) (not b!2881861) (not d!833569) (not d!833587))
(check-sat)
(get-model)

(assert (=> b!2881862 d!833583))

(declare-fun b!2881917 () Bool)

(declare-fun e!1823154 () Option!6430)

(assert (=> b!2881917 (= e!1823154 None!6429)))

(declare-fun b!2881918 () Bool)

(declare-fun e!1823152 () Option!6430)

(declare-fun call!186864 () Option!6430)

(assert (=> b!2881918 (= e!1823152 call!186864)))

(declare-fun b!2881919 () Bool)

(declare-fun e!1823158 () Option!6430)

(assert (=> b!2881919 (= e!1823158 (Some!6429 Nil!34430))))

(declare-fun b!2881920 () Bool)

(declare-fun c!468180 () Bool)

(declare-fun lt!1019887 () Option!6430)

(assert (=> b!2881920 (= c!468180 ((_ is Some!6429) lt!1019887))))

(assert (=> b!2881920 (= lt!1019887 call!186864)))

(declare-fun e!1823159 () Option!6430)

(assert (=> b!2881920 (= e!1823159 e!1823154)))

(declare-fun b!2881921 () Bool)

(declare-fun e!1823157 () Option!6430)

(declare-fun e!1823155 () Option!6430)

(assert (=> b!2881921 (= e!1823157 e!1823155)))

(declare-fun c!468181 () Bool)

(assert (=> b!2881921 (= c!468181 ((_ is EmptyLang!8755) (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881922 () Bool)

(declare-fun e!1823153 () Option!6430)

(assert (=> b!2881922 (= e!1823153 e!1823158)))

(declare-fun c!468185 () Bool)

(assert (=> b!2881922 (= c!468185 ((_ is Star!8755) (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881923 () Bool)

(assert (=> b!2881923 (= e!1823155 None!6429)))

(declare-fun b!2881924 () Bool)

(assert (=> b!2881924 (= e!1823159 None!6429)))

(declare-fun d!833589 () Bool)

(declare-fun c!468183 () Bool)

(assert (=> d!833589 (= c!468183 ((_ is EmptyExpr!8755) (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> d!833589 (= (getLanguageWitness!461 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))) e!1823157)))

(declare-fun bm!186858 () Bool)

(declare-fun call!186863 () Option!6430)

(declare-fun c!468179 () Bool)

(assert (=> bm!186858 (= call!186863 (getLanguageWitness!461 (ite c!468179 (regOne!18023 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))) (regOne!18022 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))))

(declare-fun b!2881925 () Bool)

(declare-fun c!468184 () Bool)

(assert (=> b!2881925 (= c!468184 ((_ is ElementMatch!8755) (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> b!2881925 (= e!1823155 e!1823153)))

(declare-fun b!2881926 () Bool)

(assert (=> b!2881926 (= e!1823157 (Some!6429 Nil!34430))))

(declare-fun b!2881927 () Bool)

(declare-fun e!1823156 () Option!6430)

(assert (=> b!2881927 (= e!1823156 e!1823152)))

(declare-fun lt!1019888 () Option!6430)

(assert (=> b!2881927 (= lt!1019888 call!186863)))

(declare-fun c!468182 () Bool)

(assert (=> b!2881927 (= c!468182 ((_ is Some!6429) lt!1019888))))

(declare-fun b!2881928 () Bool)

(assert (=> b!2881928 (= e!1823153 (Some!6429 (Cons!34430 (c!468106 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))) Nil!34430)))))

(declare-fun b!2881929 () Bool)

(assert (=> b!2881929 (= e!1823156 e!1823159)))

(declare-fun lt!1019889 () Option!6430)

(assert (=> b!2881929 (= lt!1019889 call!186863)))

(declare-fun c!468178 () Bool)

(assert (=> b!2881929 (= c!468178 ((_ is Some!6429) lt!1019889))))

(declare-fun bm!186859 () Bool)

(assert (=> bm!186859 (= call!186864 (getLanguageWitness!461 (ite c!468179 (regTwo!18023 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))) (regTwo!18022 (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))))

(declare-fun b!2881930 () Bool)

(assert (=> b!2881930 (= e!1823154 (Some!6429 (++!8192 (v!34555 lt!1019889) (v!34555 lt!1019887))))))

(declare-fun b!2881931 () Bool)

(assert (=> b!2881931 (= e!1823152 lt!1019888)))

(declare-fun b!2881932 () Bool)

(assert (=> b!2881932 (= c!468179 ((_ is Union!8755) (ite c!468171 (regTwo!18023 (h!39849 (exprs!3215 c!7184))) (regTwo!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> b!2881932 (= e!1823158 e!1823156)))

(assert (= (and d!833589 c!468183) b!2881926))

(assert (= (and d!833589 (not c!468183)) b!2881921))

(assert (= (and b!2881921 c!468181) b!2881923))

(assert (= (and b!2881921 (not c!468181)) b!2881925))

(assert (= (and b!2881925 c!468184) b!2881928))

(assert (= (and b!2881925 (not c!468184)) b!2881922))

(assert (= (and b!2881922 c!468185) b!2881919))

(assert (= (and b!2881922 (not c!468185)) b!2881932))

(assert (= (and b!2881932 c!468179) b!2881927))

(assert (= (and b!2881932 (not c!468179)) b!2881929))

(assert (= (and b!2881927 c!468182) b!2881931))

(assert (= (and b!2881927 (not c!468182)) b!2881918))

(assert (= (and b!2881929 c!468178) b!2881920))

(assert (= (and b!2881929 (not c!468178)) b!2881924))

(assert (= (and b!2881920 c!468180) b!2881930))

(assert (= (and b!2881920 (not c!468180)) b!2881917))

(assert (= (or b!2881918 b!2881920) bm!186859))

(assert (= (or b!2881927 b!2881929) bm!186858))

(declare-fun m!3299079 () Bool)

(assert (=> bm!186858 m!3299079))

(declare-fun m!3299081 () Bool)

(assert (=> bm!186859 m!3299081))

(declare-fun m!3299083 () Bool)

(assert (=> b!2881930 m!3299083))

(assert (=> bm!186857 d!833589))

(declare-fun d!833591 () Bool)

(declare-fun e!1823165 () Bool)

(assert (=> d!833591 e!1823165))

(declare-fun res!1194086 () Bool)

(assert (=> d!833591 (=> (not res!1194086) (not e!1823165))))

(declare-fun lt!1019892 () List!34554)

(declare-fun content!4720 (List!34554) (InoxSet C!17692))

(assert (=> d!833591 (= res!1194086 (= (content!4720 lt!1019892) ((_ map or) (content!4720 (v!34555 lt!1019875)) (content!4720 (v!34555 lt!1019877)))))))

(declare-fun e!1823164 () List!34554)

(assert (=> d!833591 (= lt!1019892 e!1823164)))

(declare-fun c!468188 () Bool)

(assert (=> d!833591 (= c!468188 ((_ is Nil!34430) (v!34555 lt!1019875)))))

(assert (=> d!833591 (= (++!8192 (v!34555 lt!1019875) (v!34555 lt!1019877)) lt!1019892)))

(declare-fun b!2881943 () Bool)

(declare-fun res!1194087 () Bool)

(assert (=> b!2881943 (=> (not res!1194087) (not e!1823165))))

(declare-fun size!26339 (List!34554) Int)

(assert (=> b!2881943 (= res!1194087 (= (size!26339 lt!1019892) (+ (size!26339 (v!34555 lt!1019875)) (size!26339 (v!34555 lt!1019877)))))))

(declare-fun b!2881944 () Bool)

(assert (=> b!2881944 (= e!1823165 (or (not (= (v!34555 lt!1019877) Nil!34430)) (= lt!1019892 (v!34555 lt!1019875))))))

(declare-fun b!2881942 () Bool)

(assert (=> b!2881942 (= e!1823164 (Cons!34430 (h!39850 (v!34555 lt!1019875)) (++!8192 (t!233597 (v!34555 lt!1019875)) (v!34555 lt!1019877))))))

(declare-fun b!2881941 () Bool)

(assert (=> b!2881941 (= e!1823164 (v!34555 lt!1019877))))

(assert (= (and d!833591 c!468188) b!2881941))

(assert (= (and d!833591 (not c!468188)) b!2881942))

(assert (= (and d!833591 res!1194086) b!2881943))

(assert (= (and b!2881943 res!1194087) b!2881944))

(declare-fun m!3299085 () Bool)

(assert (=> d!833591 m!3299085))

(declare-fun m!3299087 () Bool)

(assert (=> d!833591 m!3299087))

(declare-fun m!3299089 () Bool)

(assert (=> d!833591 m!3299089))

(declare-fun m!3299091 () Bool)

(assert (=> b!2881943 m!3299091))

(declare-fun m!3299093 () Bool)

(assert (=> b!2881943 m!3299093))

(declare-fun m!3299095 () Bool)

(assert (=> b!2881943 m!3299095))

(declare-fun m!3299097 () Bool)

(assert (=> b!2881942 m!3299097))

(assert (=> b!2881861 d!833591))

(declare-fun d!833593 () Bool)

(assert (=> d!833593 (= (isEmpty!18751 (get!10359 (getLanguageWitness!462 c!7184))) ((_ is Nil!34430) (get!10359 (getLanguageWitness!462 c!7184))))))

(assert (=> d!833569 d!833593))

(declare-fun bs!523701 () Bool)

(declare-fun d!833595 () Bool)

(assert (= bs!523701 (and d!833595 d!833575)))

(declare-fun lambda!107630 () Int)

(assert (=> bs!523701 (= lambda!107630 lambda!107623)))

(declare-fun bs!523702 () Bool)

(assert (= bs!523702 (and d!833595 d!833585)))

(assert (=> bs!523702 (= lambda!107630 lambda!107626)))

(declare-fun bs!523703 () Bool)

(assert (= bs!523703 (and d!833595 d!833587)))

(assert (=> bs!523703 (not (= lambda!107630 lambda!107629))))

(declare-fun lt!1019894 () Option!6430)

(assert (=> d!833595 (= (isEmpty!18752 lt!1019894) (exists!1199 (exprs!3215 (Context!5431 (t!233596 (exprs!3215 c!7184)))) lambda!107630))))

(declare-fun e!1823167 () Option!6430)

(assert (=> d!833595 (= lt!1019894 e!1823167)))

(declare-fun c!468190 () Bool)

(assert (=> d!833595 (= c!468190 ((_ is Cons!34429) (exprs!3215 (Context!5431 (t!233596 (exprs!3215 c!7184))))))))

(assert (=> d!833595 (= (getLanguageWitness!462 (Context!5431 (t!233596 (exprs!3215 c!7184)))) lt!1019894)))

(declare-fun b!2881945 () Bool)

(declare-fun e!1823166 () Option!6430)

(assert (=> b!2881945 (= e!1823166 None!6429)))

(declare-fun b!2881946 () Bool)

(declare-fun e!1823168 () Option!6430)

(assert (=> b!2881946 (= e!1823168 None!6429)))

(declare-fun b!2881947 () Bool)

(declare-fun c!468189 () Bool)

(declare-fun lt!1019895 () Option!6430)

(assert (=> b!2881947 (= c!468189 ((_ is Some!6429) lt!1019895))))

(assert (=> b!2881947 (= lt!1019895 (getLanguageWitness!462 (Context!5431 (t!233596 (exprs!3215 (Context!5431 (t!233596 (exprs!3215 c!7184))))))))))

(assert (=> b!2881947 (= e!1823166 e!1823168)))

(declare-fun b!2881948 () Bool)

(declare-fun lt!1019893 () Option!6430)

(assert (=> b!2881948 (= e!1823168 (Some!6429 (++!8192 (v!34555 lt!1019893) (v!34555 lt!1019895))))))

(declare-fun b!2881949 () Bool)

(assert (=> b!2881949 (= e!1823167 e!1823166)))

(assert (=> b!2881949 (= lt!1019893 (getLanguageWitness!461 (h!39849 (exprs!3215 (Context!5431 (t!233596 (exprs!3215 c!7184)))))))))

(declare-fun c!468191 () Bool)

(assert (=> b!2881949 (= c!468191 ((_ is Some!6429) lt!1019893))))

(declare-fun b!2881950 () Bool)

(assert (=> b!2881950 (= e!1823167 (Some!6429 Nil!34430))))

(assert (= (and d!833595 c!468190) b!2881949))

(assert (= (and d!833595 (not c!468190)) b!2881950))

(assert (= (and b!2881949 c!468191) b!2881947))

(assert (= (and b!2881949 (not c!468191)) b!2881945))

(assert (= (and b!2881947 c!468189) b!2881948))

(assert (= (and b!2881947 (not c!468189)) b!2881946))

(declare-fun m!3299099 () Bool)

(assert (=> d!833595 m!3299099))

(declare-fun m!3299101 () Bool)

(assert (=> d!833595 m!3299101))

(declare-fun m!3299103 () Bool)

(assert (=> b!2881947 m!3299103))

(declare-fun m!3299105 () Bool)

(assert (=> b!2881948 m!3299105))

(declare-fun m!3299107 () Bool)

(assert (=> b!2881949 m!3299107))

(assert (=> b!2881860 d!833595))

(declare-fun b!2881951 () Bool)

(declare-fun e!1823171 () Option!6430)

(assert (=> b!2881951 (= e!1823171 None!6429)))

(declare-fun b!2881952 () Bool)

(declare-fun e!1823169 () Option!6430)

(declare-fun call!186866 () Option!6430)

(assert (=> b!2881952 (= e!1823169 call!186866)))

(declare-fun b!2881953 () Bool)

(declare-fun e!1823175 () Option!6430)

(assert (=> b!2881953 (= e!1823175 (Some!6429 Nil!34430))))

(declare-fun b!2881954 () Bool)

(declare-fun c!468194 () Bool)

(declare-fun lt!1019896 () Option!6430)

(assert (=> b!2881954 (= c!468194 ((_ is Some!6429) lt!1019896))))

(assert (=> b!2881954 (= lt!1019896 call!186866)))

(declare-fun e!1823176 () Option!6430)

(assert (=> b!2881954 (= e!1823176 e!1823171)))

(declare-fun b!2881955 () Bool)

(declare-fun e!1823174 () Option!6430)

(declare-fun e!1823172 () Option!6430)

(assert (=> b!2881955 (= e!1823174 e!1823172)))

(declare-fun c!468195 () Bool)

(assert (=> b!2881955 (= c!468195 ((_ is EmptyLang!8755) (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881956 () Bool)

(declare-fun e!1823170 () Option!6430)

(assert (=> b!2881956 (= e!1823170 e!1823175)))

(declare-fun c!468199 () Bool)

(assert (=> b!2881956 (= c!468199 ((_ is Star!8755) (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(declare-fun b!2881957 () Bool)

(assert (=> b!2881957 (= e!1823172 None!6429)))

(declare-fun b!2881958 () Bool)

(assert (=> b!2881958 (= e!1823176 None!6429)))

(declare-fun d!833597 () Bool)

(declare-fun c!468197 () Bool)

(assert (=> d!833597 (= c!468197 ((_ is EmptyExpr!8755) (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> d!833597 (= (getLanguageWitness!461 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))) e!1823174)))

(declare-fun call!186865 () Option!6430)

(declare-fun c!468193 () Bool)

(declare-fun bm!186860 () Bool)

(assert (=> bm!186860 (= call!186865 (getLanguageWitness!461 (ite c!468193 (regOne!18023 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))) (regOne!18022 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))))

(declare-fun b!2881959 () Bool)

(declare-fun c!468198 () Bool)

(assert (=> b!2881959 (= c!468198 ((_ is ElementMatch!8755) (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> b!2881959 (= e!1823172 e!1823170)))

(declare-fun b!2881960 () Bool)

(assert (=> b!2881960 (= e!1823174 (Some!6429 Nil!34430))))

(declare-fun b!2881961 () Bool)

(declare-fun e!1823173 () Option!6430)

(assert (=> b!2881961 (= e!1823173 e!1823169)))

(declare-fun lt!1019897 () Option!6430)

(assert (=> b!2881961 (= lt!1019897 call!186865)))

(declare-fun c!468196 () Bool)

(assert (=> b!2881961 (= c!468196 ((_ is Some!6429) lt!1019897))))

(declare-fun b!2881962 () Bool)

(assert (=> b!2881962 (= e!1823170 (Some!6429 (Cons!34430 (c!468106 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))) Nil!34430)))))

(declare-fun b!2881963 () Bool)

(assert (=> b!2881963 (= e!1823173 e!1823176)))

(declare-fun lt!1019898 () Option!6430)

(assert (=> b!2881963 (= lt!1019898 call!186865)))

(declare-fun c!468192 () Bool)

(assert (=> b!2881963 (= c!468192 ((_ is Some!6429) lt!1019898))))

(declare-fun bm!186861 () Bool)

(assert (=> bm!186861 (= call!186866 (getLanguageWitness!461 (ite c!468193 (regTwo!18023 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))) (regTwo!18022 (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))))

(declare-fun b!2881964 () Bool)

(assert (=> b!2881964 (= e!1823171 (Some!6429 (++!8192 (v!34555 lt!1019898) (v!34555 lt!1019896))))))

(declare-fun b!2881965 () Bool)

(assert (=> b!2881965 (= e!1823169 lt!1019897)))

(declare-fun b!2881966 () Bool)

(assert (=> b!2881966 (= c!468193 ((_ is Union!8755) (ite c!468171 (regOne!18023 (h!39849 (exprs!3215 c!7184))) (regOne!18022 (h!39849 (exprs!3215 c!7184))))))))

(assert (=> b!2881966 (= e!1823175 e!1823173)))

(assert (= (and d!833597 c!468197) b!2881960))

(assert (= (and d!833597 (not c!468197)) b!2881955))

(assert (= (and b!2881955 c!468195) b!2881957))

(assert (= (and b!2881955 (not c!468195)) b!2881959))

(assert (= (and b!2881959 c!468198) b!2881962))

(assert (= (and b!2881959 (not c!468198)) b!2881956))

(assert (= (and b!2881956 c!468199) b!2881953))

(assert (= (and b!2881956 (not c!468199)) b!2881966))

(assert (= (and b!2881966 c!468193) b!2881961))

(assert (= (and b!2881966 (not c!468193)) b!2881963))

(assert (= (and b!2881961 c!468196) b!2881965))

(assert (= (and b!2881961 (not c!468196)) b!2881952))

(assert (= (and b!2881963 c!468192) b!2881954))

(assert (= (and b!2881963 (not c!468192)) b!2881958))

(assert (= (and b!2881954 c!468194) b!2881964))

(assert (= (and b!2881954 (not c!468194)) b!2881951))

(assert (= (or b!2881952 b!2881954) bm!186861))

(assert (= (or b!2881961 b!2881963) bm!186860))

(declare-fun m!3299109 () Bool)

(assert (=> bm!186860 m!3299109))

(declare-fun m!3299111 () Bool)

(assert (=> bm!186861 m!3299111))

(declare-fun m!3299113 () Bool)

(assert (=> b!2881964 m!3299113))

(assert (=> bm!186856 d!833597))

(declare-fun d!833599 () Bool)

(declare-fun c!468200 () Bool)

(assert (=> d!833599 (= c!468200 (isEmpty!18751 (tail!4586 (get!10359 (getLanguageWitness!462 c!7184)))))))

(declare-fun e!1823177 () Bool)

(assert (=> d!833599 (= (matchZipper!497 (derivationStepZipper!488 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (head!6361 (get!10359 (getLanguageWitness!462 c!7184)))) (tail!4586 (get!10359 (getLanguageWitness!462 c!7184)))) e!1823177)))

(declare-fun b!2881967 () Bool)

(assert (=> b!2881967 (= e!1823177 (nullableZipper!732 (derivationStepZipper!488 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (head!6361 (get!10359 (getLanguageWitness!462 c!7184))))))))

(declare-fun b!2881968 () Bool)

(assert (=> b!2881968 (= e!1823177 (matchZipper!497 (derivationStepZipper!488 (derivationStepZipper!488 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (head!6361 (get!10359 (getLanguageWitness!462 c!7184)))) (head!6361 (tail!4586 (get!10359 (getLanguageWitness!462 c!7184))))) (tail!4586 (tail!4586 (get!10359 (getLanguageWitness!462 c!7184))))))))

(assert (= (and d!833599 c!468200) b!2881967))

(assert (= (and d!833599 (not c!468200)) b!2881968))

(assert (=> d!833599 m!3299039))

(declare-fun m!3299115 () Bool)

(assert (=> d!833599 m!3299115))

(assert (=> b!2881967 m!3299037))

(declare-fun m!3299117 () Bool)

(assert (=> b!2881967 m!3299117))

(assert (=> b!2881968 m!3299039))

(declare-fun m!3299119 () Bool)

(assert (=> b!2881968 m!3299119))

(assert (=> b!2881968 m!3299037))

(assert (=> b!2881968 m!3299119))

(declare-fun m!3299121 () Bool)

(assert (=> b!2881968 m!3299121))

(assert (=> b!2881968 m!3299039))

(declare-fun m!3299123 () Bool)

(assert (=> b!2881968 m!3299123))

(assert (=> b!2881968 m!3299121))

(assert (=> b!2881968 m!3299123))

(declare-fun m!3299125 () Bool)

(assert (=> b!2881968 m!3299125))

(assert (=> b!2881779 d!833599))

(declare-fun d!833601 () Bool)

(assert (=> d!833601 true))

(declare-fun lambda!107633 () Int)

(declare-fun flatMap!235 ((InoxSet Context!5430) Int) (InoxSet Context!5430))

(assert (=> d!833601 (= (derivationStepZipper!488 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) (head!6361 (get!10359 (getLanguageWitness!462 c!7184)))) (flatMap!235 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) lambda!107633))))

(declare-fun bs!523704 () Bool)

(assert (= bs!523704 d!833601))

(assert (=> bs!523704 m!3299019))

(declare-fun m!3299127 () Bool)

(assert (=> bs!523704 m!3299127))

(assert (=> b!2881779 d!833601))

(declare-fun d!833603 () Bool)

(assert (=> d!833603 (= (head!6361 (get!10359 (getLanguageWitness!462 c!7184))) (h!39850 (get!10359 (getLanguageWitness!462 c!7184))))))

(assert (=> b!2881779 d!833603))

(declare-fun d!833605 () Bool)

(assert (=> d!833605 (= (tail!4586 (get!10359 (getLanguageWitness!462 c!7184))) (t!233597 (get!10359 (getLanguageWitness!462 c!7184))))))

(assert (=> b!2881779 d!833605))

(declare-fun d!833607 () Bool)

(declare-fun lambda!107636 () Int)

(declare-fun exists!1200 ((InoxSet Context!5430) Int) Bool)

(assert (=> d!833607 (= (nullableZipper!732 (store ((as const (Array Context!5430 Bool)) false) c!7184 true)) (exists!1200 (store ((as const (Array Context!5430 Bool)) false) c!7184 true) lambda!107636))))

(declare-fun bs!523705 () Bool)

(assert (= bs!523705 d!833607))

(assert (=> bs!523705 m!3299019))

(declare-fun m!3299129 () Bool)

(assert (=> bs!523705 m!3299129))

(assert (=> b!2881778 d!833607))

(declare-fun d!833609 () Bool)

(declare-fun res!1194092 () Bool)

(declare-fun e!1823182 () Bool)

(assert (=> d!833609 (=> res!1194092 e!1823182)))

(assert (=> d!833609 (= res!1194092 ((_ is Nil!34429) (exprs!3215 c!7184)))))

(assert (=> d!833609 (= (forall!7098 (exprs!3215 c!7184) lambda!107629) e!1823182)))

(declare-fun b!2881975 () Bool)

(declare-fun e!1823183 () Bool)

(assert (=> b!2881975 (= e!1823182 e!1823183)))

(declare-fun res!1194093 () Bool)

(assert (=> b!2881975 (=> (not res!1194093) (not e!1823183))))

(declare-fun dynLambda!14342 (Int Regex!8755) Bool)

(assert (=> b!2881975 (= res!1194093 (dynLambda!14342 lambda!107629 (h!39849 (exprs!3215 c!7184))))))

(declare-fun b!2881976 () Bool)

(assert (=> b!2881976 (= e!1823183 (forall!7098 (t!233596 (exprs!3215 c!7184)) lambda!107629))))

(assert (= (and d!833609 (not res!1194092)) b!2881975))

(assert (= (and b!2881975 res!1194093) b!2881976))

(declare-fun b_lambda!86323 () Bool)

(assert (=> (not b_lambda!86323) (not b!2881975)))

(declare-fun m!3299131 () Bool)

(assert (=> b!2881975 m!3299131))

(declare-fun m!3299133 () Bool)

(assert (=> b!2881976 m!3299133))

(assert (=> d!833587 d!833609))

(declare-fun d!833611 () Bool)

(assert (=> d!833611 (= (isEmpty!18752 lt!1019876) (not ((_ is Some!6429) lt!1019876)))))

(assert (=> d!833575 d!833611))

(declare-fun bs!523706 () Bool)

(declare-fun d!833613 () Bool)

(assert (= bs!523706 (and d!833613 d!833575)))

(declare-fun lambda!107639 () Int)

(assert (=> bs!523706 (not (= lambda!107639 lambda!107623))))

(declare-fun bs!523707 () Bool)

(assert (= bs!523707 (and d!833613 d!833585)))

(assert (=> bs!523707 (not (= lambda!107639 lambda!107626))))

(declare-fun bs!523708 () Bool)

(assert (= bs!523708 (and d!833613 d!833587)))

(assert (=> bs!523708 (not (= lambda!107639 lambda!107629))))

(declare-fun bs!523709 () Bool)

(assert (= bs!523709 (and d!833613 d!833595)))

(assert (=> bs!523709 (not (= lambda!107639 lambda!107630))))

(assert (=> d!833613 true))

(declare-fun order!18161 () Int)

(declare-fun dynLambda!14343 (Int Int) Int)

(assert (=> d!833613 (< (dynLambda!14343 order!18161 lambda!107623) (dynLambda!14343 order!18161 lambda!107639))))

(assert (=> d!833613 (= (exists!1199 (exprs!3215 c!7184) lambda!107623) (not (forall!7098 (exprs!3215 c!7184) lambda!107639)))))

(declare-fun bs!523710 () Bool)

(assert (= bs!523710 d!833613))

(declare-fun m!3299135 () Bool)

(assert (=> bs!523710 m!3299135))

(assert (=> d!833575 d!833613))

(declare-fun bs!523711 () Bool)

(declare-fun d!833615 () Bool)

(assert (= bs!523711 (and d!833615 d!833575)))

(declare-fun lambda!107640 () Int)

(assert (=> bs!523711 (not (= lambda!107640 lambda!107623))))

(declare-fun bs!523712 () Bool)

(assert (= bs!523712 (and d!833615 d!833595)))

(assert (=> bs!523712 (not (= lambda!107640 lambda!107630))))

(declare-fun bs!523713 () Bool)

(assert (= bs!523713 (and d!833615 d!833587)))

(assert (=> bs!523713 (not (= lambda!107640 lambda!107629))))

(declare-fun bs!523714 () Bool)

(assert (= bs!523714 (and d!833615 d!833613)))

(assert (=> bs!523714 (= (= lambda!107626 lambda!107623) (= lambda!107640 lambda!107639))))

(declare-fun bs!523715 () Bool)

(assert (= bs!523715 (and d!833615 d!833585)))

(assert (=> bs!523715 (not (= lambda!107640 lambda!107626))))

(assert (=> d!833615 true))

(assert (=> d!833615 (< (dynLambda!14343 order!18161 lambda!107626) (dynLambda!14343 order!18161 lambda!107640))))

(assert (=> d!833615 (= (exists!1199 (exprs!3215 c!7184) lambda!107626) (not (forall!7098 (exprs!3215 c!7184) lambda!107640)))))

(declare-fun bs!523716 () Bool)

(assert (= bs!523716 d!833615))

(declare-fun m!3299137 () Bool)

(assert (=> bs!523716 m!3299137))

(assert (=> d!833585 d!833615))

(declare-fun d!833617 () Bool)

(declare-fun e!1823185 () Bool)

(assert (=> d!833617 e!1823185))

(declare-fun res!1194094 () Bool)

(assert (=> d!833617 (=> (not res!1194094) (not e!1823185))))

(declare-fun lt!1019899 () List!34554)

(assert (=> d!833617 (= res!1194094 (= (content!4720 lt!1019899) ((_ map or) (content!4720 (v!34555 lt!1019886)) (content!4720 (v!34555 lt!1019884)))))))

(declare-fun e!1823184 () List!34554)

(assert (=> d!833617 (= lt!1019899 e!1823184)))

(declare-fun c!468205 () Bool)

(assert (=> d!833617 (= c!468205 ((_ is Nil!34430) (v!34555 lt!1019886)))))

(assert (=> d!833617 (= (++!8192 (v!34555 lt!1019886) (v!34555 lt!1019884)) lt!1019899)))

(declare-fun b!2881981 () Bool)

(declare-fun res!1194095 () Bool)

(assert (=> b!2881981 (=> (not res!1194095) (not e!1823185))))

(assert (=> b!2881981 (= res!1194095 (= (size!26339 lt!1019899) (+ (size!26339 (v!34555 lt!1019886)) (size!26339 (v!34555 lt!1019884)))))))

(declare-fun b!2881982 () Bool)

(assert (=> b!2881982 (= e!1823185 (or (not (= (v!34555 lt!1019884) Nil!34430)) (= lt!1019899 (v!34555 lt!1019886))))))

(declare-fun b!2881980 () Bool)

(assert (=> b!2881980 (= e!1823184 (Cons!34430 (h!39850 (v!34555 lt!1019886)) (++!8192 (t!233597 (v!34555 lt!1019886)) (v!34555 lt!1019884))))))

(declare-fun b!2881979 () Bool)

(assert (=> b!2881979 (= e!1823184 (v!34555 lt!1019884))))

(assert (= (and d!833617 c!468205) b!2881979))

(assert (= (and d!833617 (not c!468205)) b!2881980))

(assert (= (and d!833617 res!1194094) b!2881981))

(assert (= (and b!2881981 res!1194095) b!2881982))

(declare-fun m!3299139 () Bool)

(assert (=> d!833617 m!3299139))

(declare-fun m!3299141 () Bool)

(assert (=> d!833617 m!3299141))

(declare-fun m!3299143 () Bool)

(assert (=> d!833617 m!3299143))

(declare-fun m!3299145 () Bool)

(assert (=> b!2881981 m!3299145))

(declare-fun m!3299147 () Bool)

(assert (=> b!2881981 m!3299147))

(declare-fun m!3299149 () Bool)

(assert (=> b!2881981 m!3299149))

(declare-fun m!3299151 () Bool)

(assert (=> b!2881980 m!3299151))

(assert (=> b!2881909 d!833617))

(declare-fun b!2881994 () Bool)

(declare-fun e!1823188 () Bool)

(declare-fun tp!924235 () Bool)

(declare-fun tp!924233 () Bool)

(assert (=> b!2881994 (= e!1823188 (and tp!924235 tp!924233))))

(assert (=> b!2881916 (= tp!924221 e!1823188)))

(declare-fun b!2881993 () Bool)

(declare-fun tp_is_empty!15105 () Bool)

(assert (=> b!2881993 (= e!1823188 tp_is_empty!15105)))

(declare-fun b!2881995 () Bool)

(declare-fun tp!924237 () Bool)

(assert (=> b!2881995 (= e!1823188 tp!924237)))

(declare-fun b!2881996 () Bool)

(declare-fun tp!924236 () Bool)

(declare-fun tp!924234 () Bool)

(assert (=> b!2881996 (= e!1823188 (and tp!924236 tp!924234))))

(assert (= (and b!2881916 ((_ is ElementMatch!8755) (h!39849 (exprs!3215 c!7184)))) b!2881993))

(assert (= (and b!2881916 ((_ is Concat!14076) (h!39849 (exprs!3215 c!7184)))) b!2881994))

(assert (= (and b!2881916 ((_ is Star!8755) (h!39849 (exprs!3215 c!7184)))) b!2881995))

(assert (= (and b!2881916 ((_ is Union!8755) (h!39849 (exprs!3215 c!7184)))) b!2881996))

(declare-fun b!2881997 () Bool)

(declare-fun e!1823189 () Bool)

(declare-fun tp!924238 () Bool)

(declare-fun tp!924239 () Bool)

(assert (=> b!2881997 (= e!1823189 (and tp!924238 tp!924239))))

(assert (=> b!2881916 (= tp!924222 e!1823189)))

(assert (= (and b!2881916 ((_ is Cons!34429) (t!233596 (exprs!3215 c!7184)))) b!2881997))

(declare-fun b_lambda!86325 () Bool)

(assert (= b_lambda!86323 (or d!833587 b_lambda!86325)))

(declare-fun bs!523717 () Bool)

(declare-fun d!833619 () Bool)

(assert (= bs!523717 (and d!833619 d!833587)))

(declare-fun validRegex!3532 (Regex!8755) Bool)

(assert (=> bs!523717 (= (dynLambda!14342 lambda!107629 (h!39849 (exprs!3215 c!7184))) (validRegex!3532 (h!39849 (exprs!3215 c!7184))))))

(declare-fun m!3299153 () Bool)

(assert (=> bs!523717 m!3299153))

(assert (=> b!2881975 d!833619))

(check-sat (not b!2881967) (not bm!186860) (not b!2881995) (not b!2881997) (not b!2881943) tp_is_empty!15105 (not b!2881981) (not b!2881968) (not bm!186858) (not b!2881942) (not d!833615) (not d!833595) (not d!833599) (not d!833617) (not bs!523717) (not d!833591) (not d!833613) (not b!2881996) (not b!2881964) (not d!833601) (not b!2881947) (not b!2881949) (not b!2881980) (not bm!186861) (not d!833607) (not b!2881976) (not b_lambda!86325) (not bm!186859) (not b!2881994) (not b!2881930) (not b!2881948))
(check-sat)
