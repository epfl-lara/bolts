; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184066 () Bool)

(assert start!184066)

(declare-fun b_free!51585 () Bool)

(declare-fun b_next!52289 () Bool)

(assert (=> start!184066 (= b_free!51585 (not b_next!52289))))

(declare-fun tp!521957 () Bool)

(declare-fun b_and!143749 () Bool)

(assert (=> start!184066 (= tp!521957 b_and!143749)))

(declare-fun b!1845734 () Bool)

(assert (=> b!1845734 true))

(assert (=> b!1845734 true))

(declare-fun lambda!72682 () Int)

(declare-fun order!13145 () Int)

(declare-fun order!13147 () Int)

(declare-fun f!1069 () Int)

(declare-fun dynLambda!10127 (Int Int) Int)

(declare-fun dynLambda!10128 (Int Int) Int)

(assert (=> b!1845734 (< (dynLambda!10127 order!13145 f!1069) (dynLambda!10128 order!13147 lambda!72682))))

(declare-fun e!1179573 () Bool)

(declare-datatypes ((B!1597 0))(
  ( (B!1598 (val!5775 Int)) )
))
(declare-datatypes ((List!20443 0))(
  ( (Nil!20371) (Cons!20371 (h!25772 B!1597) (t!172084 List!20443)) )
))
(declare-fun l!2946 () List!20443)

(declare-fun exists!675 (List!20443 Int) Bool)

(assert (=> b!1845734 (= e!1179573 (not (exists!675 l!2946 lambda!72682)))))

(declare-fun b!1845732 () Bool)

(declare-fun res!828854 () Bool)

(assert (=> b!1845732 (=> (not res!828854) (not e!1179573))))

(get-info :version)

(assert (=> b!1845732 (= res!828854 (not ((_ is Nil!20371) l!2946)))))

(declare-fun b!1845733 () Bool)

(declare-fun res!828855 () Bool)

(assert (=> b!1845733 (=> (not res!828855) (not e!1179573))))

(declare-datatypes ((A!439 0))(
  ( (A!440 (val!5776 Int)) )
))
(declare-fun a!855 () A!439)

(declare-fun dynLambda!10129 (Int B!1597) A!439)

(assert (=> b!1845733 (= res!828855 (= (dynLambda!10129 f!1069 (h!25772 l!2946)) a!855))))

(declare-fun res!828853 () Bool)

(assert (=> start!184066 (=> (not res!828853) (not e!1179573))))

(declare-datatypes ((List!20444 0))(
  ( (Nil!20372) (Cons!20372 (h!25773 A!439) (t!172085 List!20444)) )
))
(declare-fun contains!3748 (List!20444 A!439) Bool)

(declare-fun map!4277 (List!20443 Int) List!20444)

(assert (=> start!184066 (= res!828853 (contains!3748 (map!4277 l!2946 f!1069) a!855))))

(assert (=> start!184066 e!1179573))

(declare-fun e!1179574 () Bool)

(assert (=> start!184066 e!1179574))

(assert (=> start!184066 tp!521957))

(declare-fun tp_is_empty!8399 () Bool)

(assert (=> start!184066 tp_is_empty!8399))

(declare-fun b!1845735 () Bool)

(declare-fun tp_is_empty!8397 () Bool)

(declare-fun tp!521956 () Bool)

(assert (=> b!1845735 (= e!1179574 (and tp_is_empty!8397 tp!521956))))

(assert (= (and start!184066 res!828853) b!1845732))

(assert (= (and b!1845732 res!828854) b!1845733))

(assert (= (and b!1845733 res!828855) b!1845734))

(assert (= (and start!184066 ((_ is Cons!20371) l!2946)) b!1845735))

(declare-fun b_lambda!61227 () Bool)

(assert (=> (not b_lambda!61227) (not b!1845733)))

(declare-fun t!172083 () Bool)

(declare-fun tb!112839 () Bool)

(assert (=> (and start!184066 (= f!1069 f!1069) t!172083) tb!112839))

(declare-fun result!135924 () Bool)

(assert (=> tb!112839 (= result!135924 tp_is_empty!8399)))

(assert (=> b!1845733 t!172083))

(declare-fun b_and!143751 () Bool)

(assert (= b_and!143749 (and (=> t!172083 result!135924) b_and!143751)))

(declare-fun m!2274047 () Bool)

(assert (=> b!1845734 m!2274047))

(declare-fun m!2274049 () Bool)

(assert (=> b!1845733 m!2274049))

(declare-fun m!2274051 () Bool)

(assert (=> start!184066 m!2274051))

(assert (=> start!184066 m!2274051))

(declare-fun m!2274053 () Bool)

(assert (=> start!184066 m!2274053))

(check-sat tp_is_empty!8399 (not b!1845735) tp_is_empty!8397 (not b_lambda!61227) (not start!184066) (not b_next!52289) b_and!143751 (not b!1845734))
(check-sat b_and!143751 (not b_next!52289))
(get-model)

(declare-fun b_lambda!61231 () Bool)

(assert (= b_lambda!61227 (or (and start!184066 b_free!51585) b_lambda!61231)))

(check-sat tp_is_empty!8399 (not b!1845735) tp_is_empty!8397 (not start!184066) (not b_next!52289) (not b_lambda!61231) b_and!143751 (not b!1845734))
(check-sat b_and!143751 (not b_next!52289))
(get-model)

(declare-fun bs!409266 () Bool)

(declare-fun d!564920 () Bool)

(assert (= bs!409266 (and d!564920 b!1845734)))

(declare-fun lambda!72688 () Int)

(assert (=> bs!409266 (not (= lambda!72688 lambda!72682))))

(assert (=> d!564920 true))

(assert (=> d!564920 (< (dynLambda!10128 order!13147 lambda!72682) (dynLambda!10128 order!13147 lambda!72688))))

(declare-fun forall!4383 (List!20443 Int) Bool)

(assert (=> d!564920 (= (exists!675 l!2946 lambda!72682) (not (forall!4383 l!2946 lambda!72688)))))

(declare-fun bs!409267 () Bool)

(assert (= bs!409267 d!564920))

(declare-fun m!2274063 () Bool)

(assert (=> bs!409267 m!2274063))

(assert (=> b!1845734 d!564920))

(declare-fun d!564922 () Bool)

(declare-fun lt!714807 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3032 (List!20444) (InoxSet A!439))

(assert (=> d!564922 (= lt!714807 (select (content!3032 (map!4277 l!2946 f!1069)) a!855))))

(declare-fun e!1179591 () Bool)

(assert (=> d!564922 (= lt!714807 e!1179591)))

(declare-fun res!828866 () Bool)

(assert (=> d!564922 (=> (not res!828866) (not e!1179591))))

(assert (=> d!564922 (= res!828866 ((_ is Cons!20372) (map!4277 l!2946 f!1069)))))

(assert (=> d!564922 (= (contains!3748 (map!4277 l!2946 f!1069) a!855) lt!714807)))

(declare-fun b!1845767 () Bool)

(declare-fun e!1179592 () Bool)

(assert (=> b!1845767 (= e!1179591 e!1179592)))

(declare-fun res!828867 () Bool)

(assert (=> b!1845767 (=> res!828867 e!1179592)))

(assert (=> b!1845767 (= res!828867 (= (h!25773 (map!4277 l!2946 f!1069)) a!855))))

(declare-fun b!1845768 () Bool)

(assert (=> b!1845768 (= e!1179592 (contains!3748 (t!172085 (map!4277 l!2946 f!1069)) a!855))))

(assert (= (and d!564922 res!828866) b!1845767))

(assert (= (and b!1845767 (not res!828867)) b!1845768))

(assert (=> d!564922 m!2274051))

(declare-fun m!2274073 () Bool)

(assert (=> d!564922 m!2274073))

(declare-fun m!2274075 () Bool)

(assert (=> d!564922 m!2274075))

(declare-fun m!2274077 () Bool)

(assert (=> b!1845768 m!2274077))

(assert (=> start!184066 d!564922))

(declare-fun d!564924 () Bool)

(declare-fun lt!714810 () List!20444)

(declare-fun size!16122 (List!20444) Int)

(declare-fun size!16123 (List!20443) Int)

(assert (=> d!564924 (= (size!16122 lt!714810) (size!16123 l!2946))))

(declare-fun e!1179595 () List!20444)

(assert (=> d!564924 (= lt!714810 e!1179595)))

(declare-fun c!301334 () Bool)

(assert (=> d!564924 (= c!301334 ((_ is Nil!20371) l!2946))))

(assert (=> d!564924 (= (map!4277 l!2946 f!1069) lt!714810)))

(declare-fun b!1845773 () Bool)

(assert (=> b!1845773 (= e!1179595 Nil!20372)))

(declare-fun b!1845774 () Bool)

(declare-fun $colon$colon!480 (List!20444 A!439) List!20444)

(assert (=> b!1845774 (= e!1179595 ($colon$colon!480 (map!4277 (t!172084 l!2946) f!1069) (dynLambda!10129 f!1069 (h!25772 l!2946))))))

(assert (= (and d!564924 c!301334) b!1845773))

(assert (= (and d!564924 (not c!301334)) b!1845774))

(declare-fun b_lambda!61237 () Bool)

(assert (=> (not b_lambda!61237) (not b!1845774)))

(assert (=> b!1845774 t!172083))

(declare-fun b_and!143755 () Bool)

(assert (= b_and!143751 (and (=> t!172083 result!135924) b_and!143755)))

(declare-fun m!2274079 () Bool)

(assert (=> d!564924 m!2274079))

(declare-fun m!2274081 () Bool)

(assert (=> d!564924 m!2274081))

(declare-fun m!2274083 () Bool)

(assert (=> b!1845774 m!2274083))

(assert (=> b!1845774 m!2274049))

(assert (=> b!1845774 m!2274083))

(assert (=> b!1845774 m!2274049))

(declare-fun m!2274085 () Bool)

(assert (=> b!1845774 m!2274085))

(assert (=> start!184066 d!564924))

(declare-fun b!1845779 () Bool)

(declare-fun e!1179598 () Bool)

(declare-fun tp!521963 () Bool)

(assert (=> b!1845779 (= e!1179598 (and tp_is_empty!8397 tp!521963))))

(assert (=> b!1845735 (= tp!521956 e!1179598)))

(assert (= (and b!1845735 ((_ is Cons!20371) (t!172084 l!2946))) b!1845779))

(declare-fun b_lambda!61239 () Bool)

(assert (= b_lambda!61237 (or (and start!184066 b_free!51585) b_lambda!61239)))

(check-sat tp_is_empty!8399 (not b_lambda!61239) (not d!564920) (not b!1845768) tp_is_empty!8397 b_and!143755 (not b_next!52289) (not b!1845774) (not d!564922) (not d!564924) (not b_lambda!61231) (not b!1845779))
(check-sat b_and!143755 (not b_next!52289))
(get-model)

(declare-fun d!564934 () Bool)

(assert (=> d!564934 (= ($colon$colon!480 (map!4277 (t!172084 l!2946) f!1069) (dynLambda!10129 f!1069 (h!25772 l!2946))) (Cons!20372 (dynLambda!10129 f!1069 (h!25772 l!2946)) (map!4277 (t!172084 l!2946) f!1069)))))

(assert (=> b!1845774 d!564934))

(declare-fun d!564938 () Bool)

(declare-fun lt!714818 () List!20444)

(assert (=> d!564938 (= (size!16122 lt!714818) (size!16123 (t!172084 l!2946)))))

(declare-fun e!1179610 () List!20444)

(assert (=> d!564938 (= lt!714818 e!1179610)))

(declare-fun c!301344 () Bool)

(assert (=> d!564938 (= c!301344 ((_ is Nil!20371) (t!172084 l!2946)))))

(assert (=> d!564938 (= (map!4277 (t!172084 l!2946) f!1069) lt!714818)))

(declare-fun b!1845800 () Bool)

(assert (=> b!1845800 (= e!1179610 Nil!20372)))

(declare-fun b!1845801 () Bool)

(assert (=> b!1845801 (= e!1179610 ($colon$colon!480 (map!4277 (t!172084 (t!172084 l!2946)) f!1069) (dynLambda!10129 f!1069 (h!25772 (t!172084 l!2946)))))))

(assert (= (and d!564938 c!301344) b!1845800))

(assert (= (and d!564938 (not c!301344)) b!1845801))

(declare-fun b_lambda!61241 () Bool)

(assert (=> (not b_lambda!61241) (not b!1845801)))

(declare-fun t!172089 () Bool)

(declare-fun tb!112841 () Bool)

(assert (=> (and start!184066 (= f!1069 f!1069) t!172089) tb!112841))

(declare-fun result!135932 () Bool)

(assert (=> tb!112841 (= result!135932 tp_is_empty!8399)))

(assert (=> b!1845801 t!172089))

(declare-fun b_and!143757 () Bool)

(assert (= b_and!143755 (and (=> t!172089 result!135932) b_and!143757)))

(declare-fun m!2274099 () Bool)

(assert (=> d!564938 m!2274099))

(declare-fun m!2274101 () Bool)

(assert (=> d!564938 m!2274101))

(declare-fun m!2274103 () Bool)

(assert (=> b!1845801 m!2274103))

(declare-fun m!2274105 () Bool)

(assert (=> b!1845801 m!2274105))

(assert (=> b!1845801 m!2274103))

(assert (=> b!1845801 m!2274105))

(declare-fun m!2274107 () Bool)

(assert (=> b!1845801 m!2274107))

(assert (=> b!1845774 d!564938))

(declare-fun d!564942 () Bool)

(declare-fun lt!714822 () Int)

(assert (=> d!564942 (>= lt!714822 0)))

(declare-fun e!1179618 () Int)

(assert (=> d!564942 (= lt!714822 e!1179618)))

(declare-fun c!301348 () Bool)

(assert (=> d!564942 (= c!301348 ((_ is Nil!20372) lt!714810))))

(assert (=> d!564942 (= (size!16122 lt!714810) lt!714822)))

(declare-fun b!1845812 () Bool)

(assert (=> b!1845812 (= e!1179618 0)))

(declare-fun b!1845813 () Bool)

(assert (=> b!1845813 (= e!1179618 (+ 1 (size!16122 (t!172085 lt!714810))))))

(assert (= (and d!564942 c!301348) b!1845812))

(assert (= (and d!564942 (not c!301348)) b!1845813))

(declare-fun m!2274117 () Bool)

(assert (=> b!1845813 m!2274117))

(assert (=> d!564924 d!564942))

(declare-fun d!564946 () Bool)

(declare-fun lt!714825 () Int)

(assert (=> d!564946 (>= lt!714825 0)))

(declare-fun e!1179624 () Int)

(assert (=> d!564946 (= lt!714825 e!1179624)))

(declare-fun c!301351 () Bool)

(assert (=> d!564946 (= c!301351 ((_ is Nil!20371) l!2946))))

(assert (=> d!564946 (= (size!16123 l!2946) lt!714825)))

(declare-fun b!1845821 () Bool)

(assert (=> b!1845821 (= e!1179624 0)))

(declare-fun b!1845822 () Bool)

(assert (=> b!1845822 (= e!1179624 (+ 1 (size!16123 (t!172084 l!2946))))))

(assert (= (and d!564946 c!301351) b!1845821))

(assert (= (and d!564946 (not c!301351)) b!1845822))

(assert (=> b!1845822 m!2274101))

(assert (=> d!564924 d!564946))

(declare-fun d!564950 () Bool)

(declare-fun c!301354 () Bool)

(assert (=> d!564950 (= c!301354 ((_ is Nil!20372) (map!4277 l!2946 f!1069)))))

(declare-fun e!1179627 () (InoxSet A!439))

(assert (=> d!564950 (= (content!3032 (map!4277 l!2946 f!1069)) e!1179627)))

(declare-fun b!1845827 () Bool)

(assert (=> b!1845827 (= e!1179627 ((as const (Array A!439 Bool)) false))))

(declare-fun b!1845828 () Bool)

(assert (=> b!1845828 (= e!1179627 ((_ map or) (store ((as const (Array A!439 Bool)) false) (h!25773 (map!4277 l!2946 f!1069)) true) (content!3032 (t!172085 (map!4277 l!2946 f!1069)))))))

(assert (= (and d!564950 c!301354) b!1845827))

(assert (= (and d!564950 (not c!301354)) b!1845828))

(declare-fun m!2274125 () Bool)

(assert (=> b!1845828 m!2274125))

(declare-fun m!2274127 () Bool)

(assert (=> b!1845828 m!2274127))

(assert (=> d!564922 d!564950))

(declare-fun d!564952 () Bool)

(declare-fun res!828880 () Bool)

(declare-fun e!1179632 () Bool)

(assert (=> d!564952 (=> res!828880 e!1179632)))

(assert (=> d!564952 (= res!828880 ((_ is Nil!20371) l!2946))))

(assert (=> d!564952 (= (forall!4383 l!2946 lambda!72688) e!1179632)))

(declare-fun b!1845833 () Bool)

(declare-fun e!1179633 () Bool)

(assert (=> b!1845833 (= e!1179632 e!1179633)))

(declare-fun res!828881 () Bool)

(assert (=> b!1845833 (=> (not res!828881) (not e!1179633))))

(declare-fun dynLambda!10131 (Int B!1597) Bool)

(assert (=> b!1845833 (= res!828881 (dynLambda!10131 lambda!72688 (h!25772 l!2946)))))

(declare-fun b!1845834 () Bool)

(assert (=> b!1845834 (= e!1179633 (forall!4383 (t!172084 l!2946) lambda!72688))))

(assert (= (and d!564952 (not res!828880)) b!1845833))

(assert (= (and b!1845833 res!828881) b!1845834))

(declare-fun b_lambda!61253 () Bool)

(assert (=> (not b_lambda!61253) (not b!1845833)))

(declare-fun m!2274129 () Bool)

(assert (=> b!1845833 m!2274129))

(declare-fun m!2274131 () Bool)

(assert (=> b!1845834 m!2274131))

(assert (=> d!564920 d!564952))

(declare-fun d!564954 () Bool)

(declare-fun lt!714826 () Bool)

(assert (=> d!564954 (= lt!714826 (select (content!3032 (t!172085 (map!4277 l!2946 f!1069))) a!855))))

(declare-fun e!1179634 () Bool)

(assert (=> d!564954 (= lt!714826 e!1179634)))

(declare-fun res!828882 () Bool)

(assert (=> d!564954 (=> (not res!828882) (not e!1179634))))

(assert (=> d!564954 (= res!828882 ((_ is Cons!20372) (t!172085 (map!4277 l!2946 f!1069))))))

(assert (=> d!564954 (= (contains!3748 (t!172085 (map!4277 l!2946 f!1069)) a!855) lt!714826)))

(declare-fun b!1845835 () Bool)

(declare-fun e!1179635 () Bool)

(assert (=> b!1845835 (= e!1179634 e!1179635)))

(declare-fun res!828883 () Bool)

(assert (=> b!1845835 (=> res!828883 e!1179635)))

(assert (=> b!1845835 (= res!828883 (= (h!25773 (t!172085 (map!4277 l!2946 f!1069))) a!855))))

(declare-fun b!1845836 () Bool)

(assert (=> b!1845836 (= e!1179635 (contains!3748 (t!172085 (t!172085 (map!4277 l!2946 f!1069))) a!855))))

(assert (= (and d!564954 res!828882) b!1845835))

(assert (= (and b!1845835 (not res!828883)) b!1845836))

(assert (=> d!564954 m!2274127))

(declare-fun m!2274133 () Bool)

(assert (=> d!564954 m!2274133))

(declare-fun m!2274135 () Bool)

(assert (=> b!1845836 m!2274135))

(assert (=> b!1845768 d!564954))

(declare-fun b!1845837 () Bool)

(declare-fun e!1179636 () Bool)

(declare-fun tp!521965 () Bool)

(assert (=> b!1845837 (= e!1179636 (and tp_is_empty!8397 tp!521965))))

(assert (=> b!1845779 (= tp!521963 e!1179636)))

(assert (= (and b!1845779 ((_ is Cons!20371) (t!172084 (t!172084 l!2946)))) b!1845837))

(declare-fun b_lambda!61255 () Bool)

(assert (= b_lambda!61253 (or d!564920 b_lambda!61255)))

(declare-fun bs!409269 () Bool)

(declare-fun d!564956 () Bool)

(assert (= bs!409269 (and d!564956 d!564920)))

(assert (=> bs!409269 (= (dynLambda!10131 lambda!72688 (h!25772 l!2946)) (not (dynLambda!10131 lambda!72682 (h!25772 l!2946))))))

(declare-fun b_lambda!61259 () Bool)

(assert (=> (not b_lambda!61259) (not bs!409269)))

(declare-fun m!2274137 () Bool)

(assert (=> bs!409269 m!2274137))

(assert (=> b!1845833 d!564956))

(declare-fun b_lambda!61257 () Bool)

(assert (= b_lambda!61241 (or (and start!184066 b_free!51585) b_lambda!61257)))

(check-sat tp_is_empty!8399 (not b!1845822) b_and!143757 (not b_lambda!61239) (not b!1845828) (not d!564954) tp_is_empty!8397 (not b!1845837) (not d!564938) (not b!1845834) (not b_next!52289) (not b_lambda!61257) (not b!1845836) (not b_lambda!61255) (not b_lambda!61259) (not b_lambda!61231) (not b!1845813) (not b!1845801))
(check-sat b_and!143757 (not b_next!52289))
(get-model)

(declare-fun b_lambda!61265 () Bool)

(assert (= b_lambda!61259 (or b!1845734 b_lambda!61265)))

(declare-fun bs!409271 () Bool)

(declare-fun d!564960 () Bool)

(assert (= bs!409271 (and d!564960 b!1845734)))

(assert (=> bs!409271 (= (dynLambda!10131 lambda!72682 (h!25772 l!2946)) (= (dynLambda!10129 f!1069 (h!25772 l!2946)) a!855))))

(declare-fun b_lambda!61267 () Bool)

(assert (=> (not b_lambda!61267) (not bs!409271)))

(assert (=> bs!409271 t!172083))

(declare-fun b_and!143763 () Bool)

(assert (= b_and!143757 (and (=> t!172083 result!135924) b_and!143763)))

(assert (=> bs!409271 m!2274049))

(assert (=> bs!409269 d!564960))

(check-sat (not b_lambda!61255) tp_is_empty!8399 (not b!1845822) (not b_lambda!61265) (not b_lambda!61239) (not b!1845828) (not d!564954) tp_is_empty!8397 (not b!1845837) (not d!564938) (not b_lambda!61267) (not b!1845834) (not b_next!52289) (not b!1845836) b_and!143763 (not b_lambda!61257) (not b_lambda!61231) (not b!1845813) (not b!1845801))
(check-sat b_and!143763 (not b_next!52289))
