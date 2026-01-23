; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184102 () Bool)

(assert start!184102)

(declare-fun b_free!51589 () Bool)

(declare-fun b_next!52293 () Bool)

(assert (=> start!184102 (= b_free!51589 (not b_next!52293))))

(declare-fun tp!521977 () Bool)

(declare-fun b_and!143769 () Bool)

(assert (=> start!184102 (= tp!521977 b_and!143769)))

(declare-fun b!1845863 () Bool)

(declare-fun e!1179648 () Bool)

(declare-fun tp_is_empty!8405 () Bool)

(declare-fun tp!521976 () Bool)

(assert (=> b!1845863 (= e!1179648 (and tp_is_empty!8405 tp!521976))))

(declare-fun res!828900 () Bool)

(declare-fun e!1179647 () Bool)

(assert (=> start!184102 (=> (not res!828900) (not e!1179647))))

(declare-datatypes ((A!443 0))(
  ( (A!444 (val!5779 Int)) )
))
(declare-fun a!855 () A!443)

(declare-datatypes ((B!1601 0))(
  ( (B!1602 (val!5780 Int)) )
))
(declare-datatypes ((List!20447 0))(
  ( (Nil!20375) (Cons!20375 (h!25776 B!1601) (t!172098 List!20447)) )
))
(declare-fun l!2946 () List!20447)

(declare-fun f!1069 () Int)

(declare-datatypes ((List!20448 0))(
  ( (Nil!20376) (Cons!20376 (h!25777 A!443) (t!172099 List!20448)) )
))
(declare-fun contains!3750 (List!20448 A!443) Bool)

(declare-fun map!4280 (List!20447 Int) List!20448)

(assert (=> start!184102 (= res!828900 (contains!3750 (map!4280 l!2946 f!1069) a!855))))

(assert (=> start!184102 e!1179647))

(assert (=> start!184102 e!1179648))

(assert (=> start!184102 tp!521977))

(declare-fun tp_is_empty!8407 () Bool)

(assert (=> start!184102 tp_is_empty!8407))

(declare-fun b!1845862 () Bool)

(assert (=> b!1845862 (= e!1179647 (not (contains!3750 (map!4280 (t!172098 l!2946) f!1069) a!855)))))

(declare-fun b!1845860 () Bool)

(declare-fun res!828901 () Bool)

(assert (=> b!1845860 (=> (not res!828901) (not e!1179647))))

(get-info :version)

(assert (=> b!1845860 (= res!828901 (not ((_ is Nil!20375) l!2946)))))

(declare-fun b!1845861 () Bool)

(declare-fun res!828899 () Bool)

(assert (=> b!1845861 (=> (not res!828899) (not e!1179647))))

(declare-fun dynLambda!10133 (Int B!1601) A!443)

(assert (=> b!1845861 (= res!828899 (not (= (dynLambda!10133 f!1069 (h!25776 l!2946)) a!855)))))

(assert (= (and start!184102 res!828900) b!1845860))

(assert (= (and b!1845860 res!828901) b!1845861))

(assert (= (and b!1845861 res!828899) b!1845862))

(assert (= (and start!184102 ((_ is Cons!20375) l!2946)) b!1845863))

(declare-fun b_lambda!61271 () Bool)

(assert (=> (not b_lambda!61271) (not b!1845861)))

(declare-fun t!172097 () Bool)

(declare-fun tb!112847 () Bool)

(assert (=> (and start!184102 (= f!1069 f!1069) t!172097) tb!112847))

(declare-fun result!135940 () Bool)

(assert (=> tb!112847 (= result!135940 tp_is_empty!8407)))

(assert (=> b!1845861 t!172097))

(declare-fun b_and!143771 () Bool)

(assert (= b_and!143769 (and (=> t!172097 result!135940) b_and!143771)))

(declare-fun m!2274149 () Bool)

(assert (=> start!184102 m!2274149))

(assert (=> start!184102 m!2274149))

(declare-fun m!2274151 () Bool)

(assert (=> start!184102 m!2274151))

(declare-fun m!2274153 () Bool)

(assert (=> b!1845862 m!2274153))

(assert (=> b!1845862 m!2274153))

(declare-fun m!2274155 () Bool)

(assert (=> b!1845862 m!2274155))

(declare-fun m!2274157 () Bool)

(assert (=> b!1845861 m!2274157))

(check-sat tp_is_empty!8407 tp_is_empty!8405 (not b!1845862) b_and!143771 (not b_lambda!61271) (not b!1845863) (not start!184102) (not b_next!52293))
(check-sat b_and!143771 (not b_next!52293))
(get-model)

(declare-fun b_lambda!61275 () Bool)

(assert (= b_lambda!61271 (or (and start!184102 b_free!51589) b_lambda!61275)))

(check-sat tp_is_empty!8407 (not b_lambda!61275) tp_is_empty!8405 (not b!1845862) b_and!143771 (not b!1845863) (not start!184102) (not b_next!52293))
(check-sat b_and!143771 (not b_next!52293))
(get-model)

(declare-fun lt!714831 () Bool)

(declare-fun d!564963 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3033 (List!20448) (InoxSet A!443))

(assert (=> d!564963 (= lt!714831 (select (content!3033 (map!4280 (t!172098 l!2946) f!1069)) a!855))))

(declare-fun e!1179657 () Bool)

(assert (=> d!564963 (= lt!714831 e!1179657)))

(declare-fun res!828911 () Bool)

(assert (=> d!564963 (=> (not res!828911) (not e!1179657))))

(assert (=> d!564963 (= res!828911 ((_ is Cons!20376) (map!4280 (t!172098 l!2946) f!1069)))))

(assert (=> d!564963 (= (contains!3750 (map!4280 (t!172098 l!2946) f!1069) a!855) lt!714831)))

(declare-fun b!1845874 () Bool)

(declare-fun e!1179658 () Bool)

(assert (=> b!1845874 (= e!1179657 e!1179658)))

(declare-fun res!828910 () Bool)

(assert (=> b!1845874 (=> res!828910 e!1179658)))

(assert (=> b!1845874 (= res!828910 (= (h!25777 (map!4280 (t!172098 l!2946) f!1069)) a!855))))

(declare-fun b!1845875 () Bool)

(assert (=> b!1845875 (= e!1179658 (contains!3750 (t!172099 (map!4280 (t!172098 l!2946) f!1069)) a!855))))

(assert (= (and d!564963 res!828911) b!1845874))

(assert (= (and b!1845874 (not res!828910)) b!1845875))

(assert (=> d!564963 m!2274153))

(declare-fun m!2274159 () Bool)

(assert (=> d!564963 m!2274159))

(declare-fun m!2274161 () Bool)

(assert (=> d!564963 m!2274161))

(declare-fun m!2274163 () Bool)

(assert (=> b!1845875 m!2274163))

(assert (=> b!1845862 d!564963))

(declare-fun d!564967 () Bool)

(declare-fun lt!714837 () List!20448)

(declare-fun size!16124 (List!20448) Int)

(declare-fun size!16125 (List!20447) Int)

(assert (=> d!564967 (= (size!16124 lt!714837) (size!16125 (t!172098 l!2946)))))

(declare-fun e!1179665 () List!20448)

(assert (=> d!564967 (= lt!714837 e!1179665)))

(declare-fun c!301359 () Bool)

(assert (=> d!564967 (= c!301359 ((_ is Nil!20375) (t!172098 l!2946)))))

(assert (=> d!564967 (= (map!4280 (t!172098 l!2946) f!1069) lt!714837)))

(declare-fun b!1845886 () Bool)

(assert (=> b!1845886 (= e!1179665 Nil!20376)))

(declare-fun b!1845887 () Bool)

(declare-fun $colon$colon!481 (List!20448 A!443) List!20448)

(assert (=> b!1845887 (= e!1179665 ($colon$colon!481 (map!4280 (t!172098 (t!172098 l!2946)) f!1069) (dynLambda!10133 f!1069 (h!25776 (t!172098 l!2946)))))))

(assert (= (and d!564967 c!301359) b!1845886))

(assert (= (and d!564967 (not c!301359)) b!1845887))

(declare-fun b_lambda!61277 () Bool)

(assert (=> (not b_lambda!61277) (not b!1845887)))

(declare-fun t!172101 () Bool)

(declare-fun tb!112849 () Bool)

(assert (=> (and start!184102 (= f!1069 f!1069) t!172101) tb!112849))

(declare-fun result!135944 () Bool)

(assert (=> tb!112849 (= result!135944 tp_is_empty!8407)))

(assert (=> b!1845887 t!172101))

(declare-fun b_and!143773 () Bool)

(assert (= b_and!143771 (and (=> t!172101 result!135944) b_and!143773)))

(declare-fun m!2274171 () Bool)

(assert (=> d!564967 m!2274171))

(declare-fun m!2274173 () Bool)

(assert (=> d!564967 m!2274173))

(declare-fun m!2274175 () Bool)

(assert (=> b!1845887 m!2274175))

(declare-fun m!2274177 () Bool)

(assert (=> b!1845887 m!2274177))

(assert (=> b!1845887 m!2274175))

(assert (=> b!1845887 m!2274177))

(declare-fun m!2274179 () Bool)

(assert (=> b!1845887 m!2274179))

(assert (=> b!1845862 d!564967))

(declare-fun lt!714839 () Bool)

(declare-fun d!564971 () Bool)

(assert (=> d!564971 (= lt!714839 (select (content!3033 (map!4280 l!2946 f!1069)) a!855))))

(declare-fun e!1179667 () Bool)

(assert (=> d!564971 (= lt!714839 e!1179667)))

(declare-fun res!828915 () Bool)

(assert (=> d!564971 (=> (not res!828915) (not e!1179667))))

(assert (=> d!564971 (= res!828915 ((_ is Cons!20376) (map!4280 l!2946 f!1069)))))

(assert (=> d!564971 (= (contains!3750 (map!4280 l!2946 f!1069) a!855) lt!714839)))

(declare-fun b!1845890 () Bool)

(declare-fun e!1179668 () Bool)

(assert (=> b!1845890 (= e!1179667 e!1179668)))

(declare-fun res!828914 () Bool)

(assert (=> b!1845890 (=> res!828914 e!1179668)))

(assert (=> b!1845890 (= res!828914 (= (h!25777 (map!4280 l!2946 f!1069)) a!855))))

(declare-fun b!1845891 () Bool)

(assert (=> b!1845891 (= e!1179668 (contains!3750 (t!172099 (map!4280 l!2946 f!1069)) a!855))))

(assert (= (and d!564971 res!828915) b!1845890))

(assert (= (and b!1845890 (not res!828914)) b!1845891))

(assert (=> d!564971 m!2274149))

(declare-fun m!2274191 () Bool)

(assert (=> d!564971 m!2274191))

(declare-fun m!2274193 () Bool)

(assert (=> d!564971 m!2274193))

(declare-fun m!2274195 () Bool)

(assert (=> b!1845891 m!2274195))

(assert (=> start!184102 d!564971))

(declare-fun d!564975 () Bool)

(declare-fun lt!714841 () List!20448)

(assert (=> d!564975 (= (size!16124 lt!714841) (size!16125 l!2946))))

(declare-fun e!1179671 () List!20448)

(assert (=> d!564975 (= lt!714841 e!1179671)))

(declare-fun c!301361 () Bool)

(assert (=> d!564975 (= c!301361 ((_ is Nil!20375) l!2946))))

(assert (=> d!564975 (= (map!4280 l!2946 f!1069) lt!714841)))

(declare-fun b!1845894 () Bool)

(assert (=> b!1845894 (= e!1179671 Nil!20376)))

(declare-fun b!1845895 () Bool)

(assert (=> b!1845895 (= e!1179671 ($colon$colon!481 (map!4280 (t!172098 l!2946) f!1069) (dynLambda!10133 f!1069 (h!25776 l!2946))))))

(assert (= (and d!564975 c!301361) b!1845894))

(assert (= (and d!564975 (not c!301361)) b!1845895))

(declare-fun b_lambda!61281 () Bool)

(assert (=> (not b_lambda!61281) (not b!1845895)))

(assert (=> b!1845895 t!172097))

(declare-fun b_and!143777 () Bool)

(assert (= b_and!143773 (and (=> t!172097 result!135940) b_and!143777)))

(declare-fun m!2274203 () Bool)

(assert (=> d!564975 m!2274203))

(declare-fun m!2274205 () Bool)

(assert (=> d!564975 m!2274205))

(assert (=> b!1845895 m!2274153))

(assert (=> b!1845895 m!2274157))

(assert (=> b!1845895 m!2274153))

(assert (=> b!1845895 m!2274157))

(declare-fun m!2274207 () Bool)

(assert (=> b!1845895 m!2274207))

(assert (=> start!184102 d!564975))

(declare-fun b!1845906 () Bool)

(declare-fun e!1179677 () Bool)

(declare-fun tp!521982 () Bool)

(assert (=> b!1845906 (= e!1179677 (and tp_is_empty!8405 tp!521982))))

(assert (=> b!1845863 (= tp!521976 e!1179677)))

(assert (= (and b!1845863 ((_ is Cons!20375) (t!172098 l!2946))) b!1845906))

(declare-fun b_lambda!61285 () Bool)

(assert (= b_lambda!61281 (or (and start!184102 b_free!51589) b_lambda!61285)))

(declare-fun b_lambda!61287 () Bool)

(assert (= b_lambda!61277 (or (and start!184102 b_free!51589) b_lambda!61287)))

(check-sat (not b!1845891) (not d!564963) (not b_lambda!61275) b_and!143777 (not b_lambda!61287) (not b!1845895) (not d!564967) (not b_next!52293) (not d!564971) (not b_lambda!61285) (not d!564975) tp_is_empty!8407 tp_is_empty!8405 (not b!1845875) (not b!1845887) (not b!1845906))
(check-sat b_and!143777 (not b_next!52293))
(get-model)

(declare-fun d!564979 () Bool)

(declare-fun c!301365 () Bool)

(assert (=> d!564979 (= c!301365 ((_ is Nil!20376) (map!4280 (t!172098 l!2946) f!1069)))))

(declare-fun e!1179681 () (InoxSet A!443))

(assert (=> d!564979 (= (content!3033 (map!4280 (t!172098 l!2946) f!1069)) e!1179681)))

(declare-fun b!1845912 () Bool)

(assert (=> b!1845912 (= e!1179681 ((as const (Array A!443 Bool)) false))))

(declare-fun b!1845913 () Bool)

(assert (=> b!1845913 (= e!1179681 ((_ map or) (store ((as const (Array A!443 Bool)) false) (h!25777 (map!4280 (t!172098 l!2946) f!1069)) true) (content!3033 (t!172099 (map!4280 (t!172098 l!2946) f!1069)))))))

(assert (= (and d!564979 c!301365) b!1845912))

(assert (= (and d!564979 (not c!301365)) b!1845913))

(declare-fun m!2274215 () Bool)

(assert (=> b!1845913 m!2274215))

(declare-fun m!2274217 () Bool)

(assert (=> b!1845913 m!2274217))

(assert (=> d!564963 d!564979))

(declare-fun d!564981 () Bool)

(assert (=> d!564981 (= ($colon$colon!481 (map!4280 (t!172098 (t!172098 l!2946)) f!1069) (dynLambda!10133 f!1069 (h!25776 (t!172098 l!2946)))) (Cons!20376 (dynLambda!10133 f!1069 (h!25776 (t!172098 l!2946))) (map!4280 (t!172098 (t!172098 l!2946)) f!1069)))))

(assert (=> b!1845887 d!564981))

(declare-fun d!564983 () Bool)

(declare-fun lt!714843 () List!20448)

(assert (=> d!564983 (= (size!16124 lt!714843) (size!16125 (t!172098 (t!172098 l!2946))))))

(declare-fun e!1179682 () List!20448)

(assert (=> d!564983 (= lt!714843 e!1179682)))

(declare-fun c!301366 () Bool)

(assert (=> d!564983 (= c!301366 ((_ is Nil!20375) (t!172098 (t!172098 l!2946))))))

(assert (=> d!564983 (= (map!4280 (t!172098 (t!172098 l!2946)) f!1069) lt!714843)))

(declare-fun b!1845914 () Bool)

(assert (=> b!1845914 (= e!1179682 Nil!20376)))

(declare-fun b!1845915 () Bool)

(assert (=> b!1845915 (= e!1179682 ($colon$colon!481 (map!4280 (t!172098 (t!172098 (t!172098 l!2946))) f!1069) (dynLambda!10133 f!1069 (h!25776 (t!172098 (t!172098 l!2946))))))))

(assert (= (and d!564983 c!301366) b!1845914))

(assert (= (and d!564983 (not c!301366)) b!1845915))

(declare-fun b_lambda!61293 () Bool)

(assert (=> (not b_lambda!61293) (not b!1845915)))

(declare-fun t!172106 () Bool)

(declare-fun tb!112853 () Bool)

(assert (=> (and start!184102 (= f!1069 f!1069) t!172106) tb!112853))

(declare-fun result!135952 () Bool)

(assert (=> tb!112853 (= result!135952 tp_is_empty!8407)))

(assert (=> b!1845915 t!172106))

(declare-fun b_and!143781 () Bool)

(assert (= b_and!143777 (and (=> t!172106 result!135952) b_and!143781)))

(declare-fun m!2274219 () Bool)

(assert (=> d!564983 m!2274219))

(declare-fun m!2274221 () Bool)

(assert (=> d!564983 m!2274221))

(declare-fun m!2274223 () Bool)

(assert (=> b!1845915 m!2274223))

(declare-fun m!2274225 () Bool)

(assert (=> b!1845915 m!2274225))

(assert (=> b!1845915 m!2274223))

(assert (=> b!1845915 m!2274225))

(declare-fun m!2274227 () Bool)

(assert (=> b!1845915 m!2274227))

(assert (=> b!1845887 d!564983))

(declare-fun d!564985 () Bool)

(declare-fun lt!714844 () Bool)

(assert (=> d!564985 (= lt!714844 (select (content!3033 (t!172099 (map!4280 l!2946 f!1069))) a!855))))

(declare-fun e!1179683 () Bool)

(assert (=> d!564985 (= lt!714844 e!1179683)))

(declare-fun res!828919 () Bool)

(assert (=> d!564985 (=> (not res!828919) (not e!1179683))))

(assert (=> d!564985 (= res!828919 ((_ is Cons!20376) (t!172099 (map!4280 l!2946 f!1069))))))

(assert (=> d!564985 (= (contains!3750 (t!172099 (map!4280 l!2946 f!1069)) a!855) lt!714844)))

(declare-fun b!1845916 () Bool)

(declare-fun e!1179684 () Bool)

(assert (=> b!1845916 (= e!1179683 e!1179684)))

(declare-fun res!828918 () Bool)

(assert (=> b!1845916 (=> res!828918 e!1179684)))

(assert (=> b!1845916 (= res!828918 (= (h!25777 (t!172099 (map!4280 l!2946 f!1069))) a!855))))

(declare-fun b!1845917 () Bool)

(assert (=> b!1845917 (= e!1179684 (contains!3750 (t!172099 (t!172099 (map!4280 l!2946 f!1069))) a!855))))

(assert (= (and d!564985 res!828919) b!1845916))

(assert (= (and b!1845916 (not res!828918)) b!1845917))

(declare-fun m!2274229 () Bool)

(assert (=> d!564985 m!2274229))

(declare-fun m!2274231 () Bool)

(assert (=> d!564985 m!2274231))

(declare-fun m!2274233 () Bool)

(assert (=> b!1845917 m!2274233))

(assert (=> b!1845891 d!564985))

(declare-fun d!564987 () Bool)

(declare-fun c!301367 () Bool)

(assert (=> d!564987 (= c!301367 ((_ is Nil!20376) (map!4280 l!2946 f!1069)))))

(declare-fun e!1179685 () (InoxSet A!443))

(assert (=> d!564987 (= (content!3033 (map!4280 l!2946 f!1069)) e!1179685)))

(declare-fun b!1845918 () Bool)

(assert (=> b!1845918 (= e!1179685 ((as const (Array A!443 Bool)) false))))

(declare-fun b!1845919 () Bool)

(assert (=> b!1845919 (= e!1179685 ((_ map or) (store ((as const (Array A!443 Bool)) false) (h!25777 (map!4280 l!2946 f!1069)) true) (content!3033 (t!172099 (map!4280 l!2946 f!1069)))))))

(assert (= (and d!564987 c!301367) b!1845918))

(assert (= (and d!564987 (not c!301367)) b!1845919))

(declare-fun m!2274235 () Bool)

(assert (=> b!1845919 m!2274235))

(assert (=> b!1845919 m!2274229))

(assert (=> d!564971 d!564987))

(declare-fun lt!714845 () Bool)

(declare-fun d!564989 () Bool)

(assert (=> d!564989 (= lt!714845 (select (content!3033 (t!172099 (map!4280 (t!172098 l!2946) f!1069))) a!855))))

(declare-fun e!1179686 () Bool)

(assert (=> d!564989 (= lt!714845 e!1179686)))

(declare-fun res!828921 () Bool)

(assert (=> d!564989 (=> (not res!828921) (not e!1179686))))

(assert (=> d!564989 (= res!828921 ((_ is Cons!20376) (t!172099 (map!4280 (t!172098 l!2946) f!1069))))))

(assert (=> d!564989 (= (contains!3750 (t!172099 (map!4280 (t!172098 l!2946) f!1069)) a!855) lt!714845)))

(declare-fun b!1845920 () Bool)

(declare-fun e!1179687 () Bool)

(assert (=> b!1845920 (= e!1179686 e!1179687)))

(declare-fun res!828920 () Bool)

(assert (=> b!1845920 (=> res!828920 e!1179687)))

(assert (=> b!1845920 (= res!828920 (= (h!25777 (t!172099 (map!4280 (t!172098 l!2946) f!1069))) a!855))))

(declare-fun b!1845921 () Bool)

(assert (=> b!1845921 (= e!1179687 (contains!3750 (t!172099 (t!172099 (map!4280 (t!172098 l!2946) f!1069))) a!855))))

(assert (= (and d!564989 res!828921) b!1845920))

(assert (= (and b!1845920 (not res!828920)) b!1845921))

(assert (=> d!564989 m!2274217))

(declare-fun m!2274237 () Bool)

(assert (=> d!564989 m!2274237))

(declare-fun m!2274239 () Bool)

(assert (=> b!1845921 m!2274239))

(assert (=> b!1845875 d!564989))

(declare-fun d!564991 () Bool)

(declare-fun lt!714848 () Int)

(assert (=> d!564991 (>= lt!714848 0)))

(declare-fun e!1179690 () Int)

(assert (=> d!564991 (= lt!714848 e!1179690)))

(declare-fun c!301370 () Bool)

(assert (=> d!564991 (= c!301370 ((_ is Nil!20376) lt!714837))))

(assert (=> d!564991 (= (size!16124 lt!714837) lt!714848)))

(declare-fun b!1845926 () Bool)

(assert (=> b!1845926 (= e!1179690 0)))

(declare-fun b!1845927 () Bool)

(assert (=> b!1845927 (= e!1179690 (+ 1 (size!16124 (t!172099 lt!714837))))))

(assert (= (and d!564991 c!301370) b!1845926))

(assert (= (and d!564991 (not c!301370)) b!1845927))

(declare-fun m!2274241 () Bool)

(assert (=> b!1845927 m!2274241))

(assert (=> d!564967 d!564991))

(declare-fun d!564993 () Bool)

(declare-fun lt!714851 () Int)

(assert (=> d!564993 (>= lt!714851 0)))

(declare-fun e!1179693 () Int)

(assert (=> d!564993 (= lt!714851 e!1179693)))

(declare-fun c!301373 () Bool)

(assert (=> d!564993 (= c!301373 ((_ is Nil!20375) (t!172098 l!2946)))))

(assert (=> d!564993 (= (size!16125 (t!172098 l!2946)) lt!714851)))

(declare-fun b!1845932 () Bool)

(assert (=> b!1845932 (= e!1179693 0)))

(declare-fun b!1845933 () Bool)

(assert (=> b!1845933 (= e!1179693 (+ 1 (size!16125 (t!172098 (t!172098 l!2946)))))))

(assert (= (and d!564993 c!301373) b!1845932))

(assert (= (and d!564993 (not c!301373)) b!1845933))

(assert (=> b!1845933 m!2274221))

(assert (=> d!564967 d!564993))

(declare-fun d!564995 () Bool)

(declare-fun lt!714852 () Int)

(assert (=> d!564995 (>= lt!714852 0)))

(declare-fun e!1179694 () Int)

(assert (=> d!564995 (= lt!714852 e!1179694)))

(declare-fun c!301374 () Bool)

(assert (=> d!564995 (= c!301374 ((_ is Nil!20376) lt!714841))))

(assert (=> d!564995 (= (size!16124 lt!714841) lt!714852)))

(declare-fun b!1845934 () Bool)

(assert (=> b!1845934 (= e!1179694 0)))

(declare-fun b!1845935 () Bool)

(assert (=> b!1845935 (= e!1179694 (+ 1 (size!16124 (t!172099 lt!714841))))))

(assert (= (and d!564995 c!301374) b!1845934))

(assert (= (and d!564995 (not c!301374)) b!1845935))

(declare-fun m!2274243 () Bool)

(assert (=> b!1845935 m!2274243))

(assert (=> d!564975 d!564995))

(declare-fun d!564997 () Bool)

(declare-fun lt!714853 () Int)

(assert (=> d!564997 (>= lt!714853 0)))

(declare-fun e!1179695 () Int)

(assert (=> d!564997 (= lt!714853 e!1179695)))

(declare-fun c!301375 () Bool)

(assert (=> d!564997 (= c!301375 ((_ is Nil!20375) l!2946))))

(assert (=> d!564997 (= (size!16125 l!2946) lt!714853)))

(declare-fun b!1845936 () Bool)

(assert (=> b!1845936 (= e!1179695 0)))

(declare-fun b!1845937 () Bool)

(assert (=> b!1845937 (= e!1179695 (+ 1 (size!16125 (t!172098 l!2946))))))

(assert (= (and d!564997 c!301375) b!1845936))

(assert (= (and d!564997 (not c!301375)) b!1845937))

(assert (=> b!1845937 m!2274173))

(assert (=> d!564975 d!564997))

(declare-fun d!564999 () Bool)

(assert (=> d!564999 (= ($colon$colon!481 (map!4280 (t!172098 l!2946) f!1069) (dynLambda!10133 f!1069 (h!25776 l!2946))) (Cons!20376 (dynLambda!10133 f!1069 (h!25776 l!2946)) (map!4280 (t!172098 l!2946) f!1069)))))

(assert (=> b!1845895 d!564999))

(assert (=> b!1845895 d!564967))

(declare-fun b!1845938 () Bool)

(declare-fun e!1179696 () Bool)

(declare-fun tp!521984 () Bool)

(assert (=> b!1845938 (= e!1179696 (and tp_is_empty!8405 tp!521984))))

(assert (=> b!1845906 (= tp!521982 e!1179696)))

(assert (= (and b!1845906 ((_ is Cons!20375) (t!172098 (t!172098 l!2946)))) b!1845938))

(declare-fun b_lambda!61295 () Bool)

(assert (= b_lambda!61293 (or (and start!184102 b_free!51589) b_lambda!61295)))

(check-sat (not b_lambda!61285) tp_is_empty!8407 (not b!1845935) (not b!1845938) tp_is_empty!8405 (not b!1845933) (not b!1845921) (not b_lambda!61287) (not d!564985) (not b!1845937) (not b!1845927) (not b_lambda!61295) (not b!1845915) (not b!1845913) (not b_lambda!61275) (not b!1845919) (not d!564983) (not d!564989) b_and!143781 (not b!1845917) (not b_next!52293))
(check-sat b_and!143781 (not b_next!52293))
