; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693220 () Bool)

(assert start!693220)

(declare-fun b_free!133629 () Bool)

(declare-fun b_next!134419 () Bool)

(assert (=> start!693220 (= b_free!133629 (not b_next!134419))))

(declare-fun tp!1960619 () Bool)

(declare-fun b_and!350689 () Bool)

(assert (=> start!693220 (= tp!1960619 b_and!350689)))

(declare-fun setNonEmpty!50759 () Bool)

(declare-fun setRes!50759 () Bool)

(declare-fun tp!1960620 () Bool)

(declare-fun tp_is_empty!45263 () Bool)

(assert (=> setNonEmpty!50759 (= setRes!50759 (and tp!1960620 tp_is_empty!45263))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!535 0))(
  ( (A!536 (val!27861 Int)) )
))
(declare-fun s!1427 () (InoxSet A!535))

(declare-fun setElem!50759 () A!535)

(declare-fun setRest!50759 () (InoxSet A!535))

(assert (=> setNonEmpty!50759 (= s!1427 ((_ map or) (store ((as const (Array A!535 Bool)) false) setElem!50759 true) setRest!50759))))

(declare-fun b!7121140 () Bool)

(declare-fun e!4278832 () Bool)

(declare-fun e!4278834 () Bool)

(assert (=> b!7121140 (= e!4278832 e!4278834)))

(declare-fun res!2905021 () Bool)

(assert (=> b!7121140 (=> res!2905021 e!4278834)))

(declare-datatypes ((B!3193 0))(
  ( (B!3194 (val!27862 Int)) )
))
(declare-datatypes ((List!68966 0))(
  ( (Nil!68842) (Cons!68842 (h!75290 B!3193) (t!382841 List!68966)) )
))
(declare-fun lt!2561457 () List!68966)

(get-info :version)

(assert (=> b!7121140 (= res!2905021 (not ((_ is Cons!68842) (t!382841 lt!2561457))))))

(declare-fun setIsEmpty!50759 () Bool)

(assert (=> setIsEmpty!50759 setRes!50759))

(declare-fun f!842 () Int)

(declare-fun b!7121141 () Bool)

(declare-fun lt!2561458 () A!535)

(declare-fun mapPost2!554 ((InoxSet A!535) Int B!3193) A!535)

(assert (=> b!7121141 (= e!4278834 (= (mapPost2!554 s!1427 f!842 (h!75290 (t!382841 lt!2561457))) lt!2561458))))

(declare-fun b!7121142 () Bool)

(declare-fun e!4278833 () Bool)

(declare-fun e!4278831 () Bool)

(assert (=> b!7121142 (= e!4278833 e!4278831)))

(declare-fun res!2905024 () Bool)

(assert (=> b!7121142 (=> (not res!2905024) (not e!4278831))))

(assert (=> b!7121142 (= res!2905024 ((_ is Cons!68842) lt!2561457))))

(declare-fun toList!11069 ((InoxSet B!3193)) List!68966)

(declare-fun map!16347 ((InoxSet A!535) Int) (InoxSet B!3193))

(assert (=> b!7121142 (= lt!2561457 (toList!11069 (map!16347 s!1427 f!842)))))

(declare-fun b!7121139 () Bool)

(assert (=> b!7121139 (= e!4278831 (not (not ((_ is Cons!68842) (t!382841 lt!2561457)))))))

(assert (=> b!7121139 e!4278832))

(declare-fun res!2905022 () Bool)

(assert (=> b!7121139 (=> (not res!2905022) (not e!4278832))))

(assert (=> b!7121139 (= res!2905022 (= (mapPost2!554 s!1427 f!842 (h!75290 lt!2561457)) lt!2561458))))

(declare-fun empty!2743 () A!535)

(assert (=> b!7121139 (= lt!2561458 empty!2743)))

(assert (=> b!7121139 true))

(assert (=> b!7121139 tp_is_empty!45263))

(declare-fun res!2905023 () Bool)

(assert (=> start!693220 (=> (not res!2905023) (not e!4278833))))

(declare-fun elmt!108 () A!535)

(assert (=> start!693220 (= res!2905023 (= s!1427 (store ((as const (Array A!535 Bool)) false) elmt!108 true)))))

(assert (=> start!693220 e!4278833))

(declare-fun condSetEmpty!50759 () Bool)

(assert (=> start!693220 (= condSetEmpty!50759 (= s!1427 ((as const (Array A!535 Bool)) false)))))

(assert (=> start!693220 setRes!50759))

(assert (=> start!693220 tp_is_empty!45263))

(assert (=> start!693220 tp!1960619))

(assert (= (and start!693220 res!2905023) b!7121142))

(assert (= (and b!7121142 res!2905024) b!7121139))

(assert (= (and b!7121139 res!2905022) b!7121140))

(assert (= (and b!7121140 (not res!2905021)) b!7121141))

(assert (= (and start!693220 condSetEmpty!50759) setIsEmpty!50759))

(assert (= (and start!693220 (not condSetEmpty!50759)) setNonEmpty!50759))

(declare-fun m!7837966 () Bool)

(assert (=> b!7121141 m!7837966))

(declare-fun m!7837968 () Bool)

(assert (=> b!7121142 m!7837968))

(assert (=> b!7121142 m!7837968))

(declare-fun m!7837970 () Bool)

(assert (=> b!7121142 m!7837970))

(declare-fun m!7837972 () Bool)

(assert (=> b!7121139 m!7837972))

(declare-fun m!7837974 () Bool)

(assert (=> start!693220 m!7837974))

(check-sat b_and!350689 tp_is_empty!45263 (not b!7121139) (not b!7121142) (not setNonEmpty!50759) (not b_next!134419) (not b!7121141))
(check-sat b_and!350689 (not b_next!134419))
(get-model)

(declare-fun d!2222068 () Bool)

(declare-fun e!4278839 () Bool)

(assert (=> d!2222068 e!4278839))

(declare-fun res!2905029 () Bool)

(assert (=> d!2222068 (=> (not res!2905029) (not e!4278839))))

(declare-fun lt!2561463 () A!535)

(declare-fun dynLambda!28068 (Int A!535) B!3193)

(assert (=> d!2222068 (= res!2905029 (= (h!75290 (t!382841 lt!2561457)) (dynLambda!28068 f!842 lt!2561463)))))

(declare-fun choose!54948 ((InoxSet A!535) Int B!3193) A!535)

(assert (=> d!2222068 (= lt!2561463 (choose!54948 s!1427 f!842 (h!75290 (t!382841 lt!2561457))))))

(assert (=> d!2222068 (select (map!16347 s!1427 f!842) (h!75290 (t!382841 lt!2561457)))))

(assert (=> d!2222068 (= (mapPost2!554 s!1427 f!842 (h!75290 (t!382841 lt!2561457))) lt!2561463)))

(declare-fun b!7121148 () Bool)

(assert (=> b!7121148 (= e!4278839 (select s!1427 lt!2561463))))

(assert (= (and d!2222068 res!2905029) b!7121148))

(declare-fun b_lambda!271601 () Bool)

(assert (=> (not b_lambda!271601) (not d!2222068)))

(declare-fun t!382843 () Bool)

(declare-fun tb!261965 () Bool)

(assert (=> (and start!693220 (= f!842 f!842) t!382843) tb!261965))

(declare-fun result!349084 () Bool)

(declare-fun tp_is_empty!45265 () Bool)

(assert (=> tb!261965 (= result!349084 tp_is_empty!45265)))

(assert (=> d!2222068 t!382843))

(declare-fun b_and!350691 () Bool)

(assert (= b_and!350689 (and (=> t!382843 result!349084) b_and!350691)))

(declare-fun m!7837982 () Bool)

(assert (=> d!2222068 m!7837982))

(declare-fun m!7837984 () Bool)

(assert (=> d!2222068 m!7837984))

(assert (=> d!2222068 m!7837968))

(declare-fun m!7837986 () Bool)

(assert (=> d!2222068 m!7837986))

(declare-fun m!7837988 () Bool)

(assert (=> b!7121148 m!7837988))

(assert (=> b!7121141 d!2222068))

(declare-fun d!2222074 () Bool)

(declare-fun e!4278843 () Bool)

(assert (=> d!2222074 e!4278843))

(declare-fun res!2905033 () Bool)

(assert (=> d!2222074 (=> (not res!2905033) (not e!4278843))))

(declare-fun lt!2561469 () List!68966)

(declare-fun noDuplicate!2773 (List!68966) Bool)

(assert (=> d!2222074 (= res!2905033 (noDuplicate!2773 lt!2561469))))

(declare-fun choose!54951 ((InoxSet B!3193)) List!68966)

(assert (=> d!2222074 (= lt!2561469 (choose!54951 (map!16347 s!1427 f!842)))))

(assert (=> d!2222074 (= (toList!11069 (map!16347 s!1427 f!842)) lt!2561469)))

(declare-fun b!7121155 () Bool)

(declare-fun content!14071 (List!68966) (InoxSet B!3193))

(assert (=> b!7121155 (= e!4278843 (= (content!14071 lt!2561469) (map!16347 s!1427 f!842)))))

(assert (= (and d!2222074 res!2905033) b!7121155))

(declare-fun m!7837992 () Bool)

(assert (=> d!2222074 m!7837992))

(assert (=> d!2222074 m!7837968))

(declare-fun m!7837994 () Bool)

(assert (=> d!2222074 m!7837994))

(declare-fun m!7837996 () Bool)

(assert (=> b!7121155 m!7837996))

(assert (=> b!7121142 d!2222074))

(declare-fun d!2222078 () Bool)

(declare-fun choose!54953 ((InoxSet A!535) Int) (InoxSet B!3193))

(assert (=> d!2222078 (= (map!16347 s!1427 f!842) (choose!54953 s!1427 f!842))))

(declare-fun bs!1885920 () Bool)

(assert (= bs!1885920 d!2222078))

(declare-fun m!7837998 () Bool)

(assert (=> bs!1885920 m!7837998))

(assert (=> b!7121142 d!2222078))

(declare-fun d!2222080 () Bool)

(declare-fun e!4278846 () Bool)

(assert (=> d!2222080 e!4278846))

(declare-fun res!2905036 () Bool)

(assert (=> d!2222080 (=> (not res!2905036) (not e!4278846))))

(declare-fun lt!2561470 () A!535)

(assert (=> d!2222080 (= res!2905036 (= (h!75290 lt!2561457) (dynLambda!28068 f!842 lt!2561470)))))

(assert (=> d!2222080 (= lt!2561470 (choose!54948 s!1427 f!842 (h!75290 lt!2561457)))))

(assert (=> d!2222080 (select (map!16347 s!1427 f!842) (h!75290 lt!2561457))))

(assert (=> d!2222080 (= (mapPost2!554 s!1427 f!842 (h!75290 lt!2561457)) lt!2561470)))

(declare-fun b!7121158 () Bool)

(assert (=> b!7121158 (= e!4278846 (select s!1427 lt!2561470))))

(assert (= (and d!2222080 res!2905036) b!7121158))

(declare-fun b_lambda!271603 () Bool)

(assert (=> (not b_lambda!271603) (not d!2222080)))

(declare-fun t!382845 () Bool)

(declare-fun tb!261967 () Bool)

(assert (=> (and start!693220 (= f!842 f!842) t!382845) tb!261967))

(declare-fun result!349088 () Bool)

(assert (=> tb!261967 (= result!349088 tp_is_empty!45265)))

(assert (=> d!2222080 t!382845))

(declare-fun b_and!350693 () Bool)

(assert (= b_and!350691 (and (=> t!382845 result!349088) b_and!350693)))

(declare-fun m!7838000 () Bool)

(assert (=> d!2222080 m!7838000))

(declare-fun m!7838002 () Bool)

(assert (=> d!2222080 m!7838002))

(assert (=> d!2222080 m!7837968))

(declare-fun m!7838004 () Bool)

(assert (=> d!2222080 m!7838004))

(declare-fun m!7838006 () Bool)

(assert (=> b!7121158 m!7838006))

(assert (=> b!7121139 d!2222080))

(declare-fun condSetEmpty!50762 () Bool)

(assert (=> setNonEmpty!50759 (= condSetEmpty!50762 (= setRest!50759 ((as const (Array A!535 Bool)) false)))))

(declare-fun setRes!50762 () Bool)

(assert (=> setNonEmpty!50759 (= tp!1960620 setRes!50762)))

(declare-fun setIsEmpty!50762 () Bool)

(assert (=> setIsEmpty!50762 setRes!50762))

(declare-fun setNonEmpty!50762 () Bool)

(declare-fun tp!1960623 () Bool)

(assert (=> setNonEmpty!50762 (= setRes!50762 (and tp!1960623 tp_is_empty!45263))))

(declare-fun setElem!50762 () A!535)

(declare-fun setRest!50762 () (InoxSet A!535))

(assert (=> setNonEmpty!50762 (= setRest!50759 ((_ map or) (store ((as const (Array A!535 Bool)) false) setElem!50762 true) setRest!50762))))

(assert (= (and setNonEmpty!50759 condSetEmpty!50762) setIsEmpty!50762))

(assert (= (and setNonEmpty!50759 (not condSetEmpty!50762)) setNonEmpty!50762))

(declare-fun b_lambda!271609 () Bool)

(assert (= b_lambda!271601 (or (and start!693220 b_free!133629) b_lambda!271609)))

(declare-fun b_lambda!271611 () Bool)

(assert (= b_lambda!271603 (or (and start!693220 b_free!133629) b_lambda!271611)))

(check-sat (not b_lambda!271609) (not d!2222068) (not d!2222078) (not b!7121155) tp_is_empty!45265 b_and!350693 (not d!2222080) (not setNonEmpty!50762) (not b_next!134419) (not b_lambda!271611) tp_is_empty!45263 (not d!2222074))
(check-sat b_and!350693 (not b_next!134419))
(get-model)

(declare-fun d!2222084 () Bool)

(declare-fun e!4278851 () Bool)

(assert (=> d!2222084 e!4278851))

(declare-fun res!2905041 () Bool)

(assert (=> d!2222084 (=> (not res!2905041) (not e!4278851))))

(declare-fun a!13970 () A!535)

(assert (=> d!2222084 (= res!2905041 (= (h!75290 (t!382841 lt!2561457)) (dynLambda!28068 f!842 a!13970)))))

(assert (=> d!2222084 tp_is_empty!45263))

(assert (=> d!2222084 (= (choose!54948 s!1427 f!842 (h!75290 (t!382841 lt!2561457))) a!13970)))

(declare-fun b!7121170 () Bool)

(assert (=> b!7121170 (= e!4278851 (select s!1427 a!13970))))

(assert (= (and d!2222084 res!2905041) b!7121170))

(declare-fun b_lambda!271617 () Bool)

(assert (=> (not b_lambda!271617) (not d!2222084)))

(declare-fun t!382851 () Bool)

(declare-fun tb!261973 () Bool)

(assert (=> (and start!693220 (= f!842 f!842) t!382851) tb!261973))

(declare-fun result!349100 () Bool)

(assert (=> tb!261973 (= result!349100 tp_is_empty!45265)))

(assert (=> d!2222084 t!382851))

(declare-fun b_and!350699 () Bool)

(assert (= b_and!350693 (and (=> t!382851 result!349100) b_and!350699)))

(declare-fun m!7838024 () Bool)

(assert (=> d!2222084 m!7838024))

(declare-fun m!7838026 () Bool)

(assert (=> b!7121170 m!7838026))

(assert (=> d!2222068 d!2222084))

(assert (=> d!2222068 d!2222078))

(declare-fun d!2222086 () Bool)

(declare-fun e!4278852 () Bool)

(assert (=> d!2222086 e!4278852))

(declare-fun res!2905042 () Bool)

(assert (=> d!2222086 (=> (not res!2905042) (not e!4278852))))

(declare-fun a!13971 () A!535)

(assert (=> d!2222086 (= res!2905042 (= (h!75290 lt!2561457) (dynLambda!28068 f!842 a!13971)))))

(assert (=> d!2222086 tp_is_empty!45263))

(assert (=> d!2222086 (= (choose!54948 s!1427 f!842 (h!75290 lt!2561457)) a!13971)))

(declare-fun b!7121171 () Bool)

(assert (=> b!7121171 (= e!4278852 (select s!1427 a!13971))))

(assert (= (and d!2222086 res!2905042) b!7121171))

(declare-fun b_lambda!271619 () Bool)

(assert (=> (not b_lambda!271619) (not d!2222086)))

(declare-fun t!382853 () Bool)

(declare-fun tb!261975 () Bool)

(assert (=> (and start!693220 (= f!842 f!842) t!382853) tb!261975))

(declare-fun result!349102 () Bool)

(assert (=> tb!261975 (= result!349102 tp_is_empty!45265)))

(assert (=> d!2222086 t!382853))

(declare-fun b_and!350701 () Bool)

(assert (= b_and!350699 (and (=> t!382853 result!349102) b_and!350701)))

(declare-fun m!7838028 () Bool)

(assert (=> d!2222086 m!7838028))

(declare-fun m!7838030 () Bool)

(assert (=> b!7121171 m!7838030))

(assert (=> d!2222080 d!2222086))

(assert (=> d!2222080 d!2222078))

(declare-fun d!2222088 () Bool)

(assert (=> d!2222088 true))

(declare-fun setRes!50768 () Bool)

(assert (=> d!2222088 setRes!50768))

(declare-fun condSetEmpty!50768 () Bool)

(declare-fun res!2905045 () (InoxSet B!3193))

(assert (=> d!2222088 (= condSetEmpty!50768 (= res!2905045 ((as const (Array B!3193 Bool)) false)))))

(assert (=> d!2222088 (= (choose!54953 s!1427 f!842) res!2905045)))

(declare-fun setIsEmpty!50768 () Bool)

(assert (=> setIsEmpty!50768 setRes!50768))

(declare-fun setNonEmpty!50768 () Bool)

(declare-fun tp!1960629 () Bool)

(assert (=> setNonEmpty!50768 (= setRes!50768 (and tp!1960629 tp_is_empty!45265))))

(declare-fun setElem!50768 () B!3193)

(declare-fun setRest!50768 () (InoxSet B!3193))

(assert (=> setNonEmpty!50768 (= res!2905045 ((_ map or) (store ((as const (Array B!3193 Bool)) false) setElem!50768 true) setRest!50768))))

(assert (= (and d!2222088 condSetEmpty!50768) setIsEmpty!50768))

(assert (= (and d!2222088 (not condSetEmpty!50768)) setNonEmpty!50768))

(assert (=> d!2222078 d!2222088))

(declare-fun d!2222090 () Bool)

(declare-fun c!1328933 () Bool)

(assert (=> d!2222090 (= c!1328933 ((_ is Nil!68842) lt!2561469))))

(declare-fun e!4278855 () (InoxSet B!3193))

(assert (=> d!2222090 (= (content!14071 lt!2561469) e!4278855)))

(declare-fun b!7121176 () Bool)

(assert (=> b!7121176 (= e!4278855 ((as const (Array B!3193 Bool)) false))))

(declare-fun b!7121177 () Bool)

(assert (=> b!7121177 (= e!4278855 ((_ map or) (store ((as const (Array B!3193 Bool)) false) (h!75290 lt!2561469) true) (content!14071 (t!382841 lt!2561469))))))

(assert (= (and d!2222090 c!1328933) b!7121176))

(assert (= (and d!2222090 (not c!1328933)) b!7121177))

(declare-fun m!7838032 () Bool)

(assert (=> b!7121177 m!7838032))

(declare-fun m!7838034 () Bool)

(assert (=> b!7121177 m!7838034))

(assert (=> b!7121155 d!2222090))

(declare-fun d!2222092 () Bool)

(declare-fun res!2905050 () Bool)

(declare-fun e!4278860 () Bool)

(assert (=> d!2222092 (=> res!2905050 e!4278860)))

(assert (=> d!2222092 (= res!2905050 ((_ is Nil!68842) lt!2561469))))

(assert (=> d!2222092 (= (noDuplicate!2773 lt!2561469) e!4278860)))

(declare-fun b!7121182 () Bool)

(declare-fun e!4278861 () Bool)

(assert (=> b!7121182 (= e!4278860 e!4278861)))

(declare-fun res!2905051 () Bool)

(assert (=> b!7121182 (=> (not res!2905051) (not e!4278861))))

(declare-fun contains!20512 (List!68966 B!3193) Bool)

(assert (=> b!7121182 (= res!2905051 (not (contains!20512 (t!382841 lt!2561469) (h!75290 lt!2561469))))))

(declare-fun b!7121183 () Bool)

(assert (=> b!7121183 (= e!4278861 (noDuplicate!2773 (t!382841 lt!2561469)))))

(assert (= (and d!2222092 (not res!2905050)) b!7121182))

(assert (= (and b!7121182 res!2905051) b!7121183))

(declare-fun m!7838036 () Bool)

(assert (=> b!7121182 m!7838036))

(declare-fun m!7838038 () Bool)

(assert (=> b!7121183 m!7838038))

(assert (=> d!2222074 d!2222092))

(declare-fun d!2222094 () Bool)

(declare-fun e!4278867 () Bool)

(assert (=> d!2222094 e!4278867))

(declare-fun res!2905058 () Bool)

(assert (=> d!2222094 (=> (not res!2905058) (not e!4278867))))

(declare-fun res!2905059 () List!68966)

(assert (=> d!2222094 (= res!2905058 (noDuplicate!2773 res!2905059))))

(declare-fun e!4278866 () Bool)

(assert (=> d!2222094 e!4278866))

(assert (=> d!2222094 (= (choose!54951 (map!16347 s!1427 f!842)) res!2905059)))

(declare-fun b!7121188 () Bool)

(declare-fun tp!1960634 () Bool)

(assert (=> b!7121188 (= e!4278866 (and tp_is_empty!45265 tp!1960634))))

(declare-fun b!7121189 () Bool)

(assert (=> b!7121189 (= e!4278867 (= (content!14071 res!2905059) (map!16347 s!1427 f!842)))))

(assert (= (and d!2222094 ((_ is Cons!68842) res!2905059)) b!7121188))

(assert (= (and d!2222094 res!2905058) b!7121189))

(declare-fun m!7838040 () Bool)

(assert (=> d!2222094 m!7838040))

(declare-fun m!7838042 () Bool)

(assert (=> b!7121189 m!7838042))

(assert (=> d!2222074 d!2222094))

(declare-fun condSetEmpty!50772 () Bool)

(assert (=> setNonEmpty!50762 (= condSetEmpty!50772 (= setRest!50762 ((as const (Array A!535 Bool)) false)))))

(declare-fun setRes!50772 () Bool)

(assert (=> setNonEmpty!50762 (= tp!1960623 setRes!50772)))

(declare-fun setIsEmpty!50772 () Bool)

(assert (=> setIsEmpty!50772 setRes!50772))

(declare-fun setNonEmpty!50772 () Bool)

(declare-fun tp!1960636 () Bool)

(assert (=> setNonEmpty!50772 (= setRes!50772 (and tp!1960636 tp_is_empty!45263))))

(declare-fun setElem!50772 () A!535)

(declare-fun setRest!50772 () (InoxSet A!535))

(assert (=> setNonEmpty!50772 (= setRest!50762 ((_ map or) (store ((as const (Array A!535 Bool)) false) setElem!50772 true) setRest!50772))))

(assert (= (and setNonEmpty!50762 condSetEmpty!50772) setIsEmpty!50772))

(assert (= (and setNonEmpty!50762 (not condSetEmpty!50772)) setNonEmpty!50772))

(declare-fun b_lambda!271621 () Bool)

(assert (= b_lambda!271617 (or (and start!693220 b_free!133629) b_lambda!271621)))

(declare-fun b_lambda!271623 () Bool)

(assert (= b_lambda!271619 (or (and start!693220 b_free!133629) b_lambda!271623)))

(check-sat (not b!7121188) tp_is_empty!45263 (not b!7121177) b_and!350701 (not setNonEmpty!50768) (not b!7121189) (not setNonEmpty!50772) (not b_lambda!271609) (not b!7121183) (not b_lambda!271623) tp_is_empty!45265 (not b_next!134419) (not b_lambda!271621) (not b!7121182) (not b_lambda!271611) (not d!2222094))
(check-sat b_and!350701 (not b_next!134419))
(get-model)

(declare-fun d!2222108 () Bool)

(declare-fun lt!2561475 () Bool)

(assert (=> d!2222108 (= lt!2561475 (select (content!14071 (t!382841 lt!2561469)) (h!75290 lt!2561469)))))

(declare-fun e!4278892 () Bool)

(assert (=> d!2222108 (= lt!2561475 e!4278892)))

(declare-fun res!2905082 () Bool)

(assert (=> d!2222108 (=> (not res!2905082) (not e!4278892))))

(assert (=> d!2222108 (= res!2905082 ((_ is Cons!68842) (t!382841 lt!2561469)))))

(assert (=> d!2222108 (= (contains!20512 (t!382841 lt!2561469) (h!75290 lt!2561469)) lt!2561475)))

(declare-fun b!7121217 () Bool)

(declare-fun e!4278891 () Bool)

(assert (=> b!7121217 (= e!4278892 e!4278891)))

(declare-fun res!2905081 () Bool)

(assert (=> b!7121217 (=> res!2905081 e!4278891)))

(assert (=> b!7121217 (= res!2905081 (= (h!75290 (t!382841 lt!2561469)) (h!75290 lt!2561469)))))

(declare-fun b!7121218 () Bool)

(assert (=> b!7121218 (= e!4278891 (contains!20512 (t!382841 (t!382841 lt!2561469)) (h!75290 lt!2561469)))))

(assert (= (and d!2222108 res!2905082) b!7121217))

(assert (= (and b!7121217 (not res!2905081)) b!7121218))

(assert (=> d!2222108 m!7838034))

(declare-fun m!7838064 () Bool)

(assert (=> d!2222108 m!7838064))

(declare-fun m!7838066 () Bool)

(assert (=> b!7121218 m!7838066))

(assert (=> b!7121182 d!2222108))

(declare-fun d!2222110 () Bool)

(declare-fun c!1328937 () Bool)

(assert (=> d!2222110 (= c!1328937 ((_ is Nil!68842) res!2905059))))

(declare-fun e!4278893 () (InoxSet B!3193))

(assert (=> d!2222110 (= (content!14071 res!2905059) e!4278893)))

(declare-fun b!7121219 () Bool)

(assert (=> b!7121219 (= e!4278893 ((as const (Array B!3193 Bool)) false))))

(declare-fun b!7121220 () Bool)

(assert (=> b!7121220 (= e!4278893 ((_ map or) (store ((as const (Array B!3193 Bool)) false) (h!75290 res!2905059) true) (content!14071 (t!382841 res!2905059))))))

(assert (= (and d!2222110 c!1328937) b!7121219))

(assert (= (and d!2222110 (not c!1328937)) b!7121220))

(declare-fun m!7838068 () Bool)

(assert (=> b!7121220 m!7838068))

(declare-fun m!7838070 () Bool)

(assert (=> b!7121220 m!7838070))

(assert (=> b!7121189 d!2222110))

(declare-fun d!2222112 () Bool)

(declare-fun res!2905083 () Bool)

(declare-fun e!4278894 () Bool)

(assert (=> d!2222112 (=> res!2905083 e!4278894)))

(assert (=> d!2222112 (= res!2905083 ((_ is Nil!68842) (t!382841 lt!2561469)))))

(assert (=> d!2222112 (= (noDuplicate!2773 (t!382841 lt!2561469)) e!4278894)))

(declare-fun b!7121221 () Bool)

(declare-fun e!4278895 () Bool)

(assert (=> b!7121221 (= e!4278894 e!4278895)))

(declare-fun res!2905084 () Bool)

(assert (=> b!7121221 (=> (not res!2905084) (not e!4278895))))

(assert (=> b!7121221 (= res!2905084 (not (contains!20512 (t!382841 (t!382841 lt!2561469)) (h!75290 (t!382841 lt!2561469)))))))

(declare-fun b!7121222 () Bool)

(assert (=> b!7121222 (= e!4278895 (noDuplicate!2773 (t!382841 (t!382841 lt!2561469))))))

(assert (= (and d!2222112 (not res!2905083)) b!7121221))

(assert (= (and b!7121221 res!2905084) b!7121222))

(declare-fun m!7838072 () Bool)

(assert (=> b!7121221 m!7838072))

(declare-fun m!7838074 () Bool)

(assert (=> b!7121222 m!7838074))

(assert (=> b!7121183 d!2222112))

(declare-fun d!2222114 () Bool)

(declare-fun c!1328938 () Bool)

(assert (=> d!2222114 (= c!1328938 ((_ is Nil!68842) (t!382841 lt!2561469)))))

(declare-fun e!4278896 () (InoxSet B!3193))

(assert (=> d!2222114 (= (content!14071 (t!382841 lt!2561469)) e!4278896)))

(declare-fun b!7121223 () Bool)

(assert (=> b!7121223 (= e!4278896 ((as const (Array B!3193 Bool)) false))))

(declare-fun b!7121224 () Bool)

(assert (=> b!7121224 (= e!4278896 ((_ map or) (store ((as const (Array B!3193 Bool)) false) (h!75290 (t!382841 lt!2561469)) true) (content!14071 (t!382841 (t!382841 lt!2561469)))))))

(assert (= (and d!2222114 c!1328938) b!7121223))

(assert (= (and d!2222114 (not c!1328938)) b!7121224))

(declare-fun m!7838076 () Bool)

(assert (=> b!7121224 m!7838076))

(declare-fun m!7838078 () Bool)

(assert (=> b!7121224 m!7838078))

(assert (=> b!7121177 d!2222114))

(declare-fun d!2222116 () Bool)

(declare-fun res!2905085 () Bool)

(declare-fun e!4278897 () Bool)

(assert (=> d!2222116 (=> res!2905085 e!4278897)))

(assert (=> d!2222116 (= res!2905085 ((_ is Nil!68842) res!2905059))))

(assert (=> d!2222116 (= (noDuplicate!2773 res!2905059) e!4278897)))

(declare-fun b!7121225 () Bool)

(declare-fun e!4278898 () Bool)

(assert (=> b!7121225 (= e!4278897 e!4278898)))

(declare-fun res!2905086 () Bool)

(assert (=> b!7121225 (=> (not res!2905086) (not e!4278898))))

(assert (=> b!7121225 (= res!2905086 (not (contains!20512 (t!382841 res!2905059) (h!75290 res!2905059))))))

(declare-fun b!7121226 () Bool)

(assert (=> b!7121226 (= e!4278898 (noDuplicate!2773 (t!382841 res!2905059)))))

(assert (= (and d!2222116 (not res!2905085)) b!7121225))

(assert (= (and b!7121225 res!2905086) b!7121226))

(declare-fun m!7838080 () Bool)

(assert (=> b!7121225 m!7838080))

(declare-fun m!7838082 () Bool)

(assert (=> b!7121226 m!7838082))

(assert (=> d!2222094 d!2222116))

(declare-fun b!7121231 () Bool)

(declare-fun e!4278901 () Bool)

(declare-fun tp!1960643 () Bool)

(assert (=> b!7121231 (= e!4278901 (and tp_is_empty!45265 tp!1960643))))

(assert (=> b!7121188 (= tp!1960634 e!4278901)))

(assert (= (and b!7121188 ((_ is Cons!68842) (t!382841 res!2905059))) b!7121231))

(declare-fun condSetEmpty!50774 () Bool)

(assert (=> setNonEmpty!50772 (= condSetEmpty!50774 (= setRest!50772 ((as const (Array A!535 Bool)) false)))))

(declare-fun setRes!50774 () Bool)

(assert (=> setNonEmpty!50772 (= tp!1960636 setRes!50774)))

(declare-fun setIsEmpty!50774 () Bool)

(assert (=> setIsEmpty!50774 setRes!50774))

(declare-fun setNonEmpty!50774 () Bool)

(declare-fun tp!1960644 () Bool)

(assert (=> setNonEmpty!50774 (= setRes!50774 (and tp!1960644 tp_is_empty!45263))))

(declare-fun setElem!50774 () A!535)

(declare-fun setRest!50774 () (InoxSet A!535))

(assert (=> setNonEmpty!50774 (= setRest!50772 ((_ map or) (store ((as const (Array A!535 Bool)) false) setElem!50774 true) setRest!50774))))

(assert (= (and setNonEmpty!50772 condSetEmpty!50774) setIsEmpty!50774))

(assert (= (and setNonEmpty!50772 (not condSetEmpty!50774)) setNonEmpty!50774))

(declare-fun condSetEmpty!50777 () Bool)

(assert (=> setNonEmpty!50768 (= condSetEmpty!50777 (= setRest!50768 ((as const (Array B!3193 Bool)) false)))))

(declare-fun setRes!50777 () Bool)

(assert (=> setNonEmpty!50768 (= tp!1960629 setRes!50777)))

(declare-fun setIsEmpty!50777 () Bool)

(assert (=> setIsEmpty!50777 setRes!50777))

(declare-fun setNonEmpty!50777 () Bool)

(declare-fun tp!1960647 () Bool)

(assert (=> setNonEmpty!50777 (= setRes!50777 (and tp!1960647 tp_is_empty!45265))))

(declare-fun setElem!50777 () B!3193)

(declare-fun setRest!50777 () (InoxSet B!3193))

(assert (=> setNonEmpty!50777 (= setRest!50768 ((_ map or) (store ((as const (Array B!3193 Bool)) false) setElem!50777 true) setRest!50777))))

(assert (= (and setNonEmpty!50768 condSetEmpty!50777) setIsEmpty!50777))

(assert (= (and setNonEmpty!50768 (not condSetEmpty!50777)) setNonEmpty!50777))

(check-sat (not b_lambda!271609) (not b!7121218) (not setNonEmpty!50777) (not setNonEmpty!50774) (not b!7121224) (not b!7121221) (not b_lambda!271611) tp_is_empty!45263 (not b!7121231) (not b!7121226) (not d!2222108) (not b!7121222) (not b!7121220) (not b_lambda!271623) tp_is_empty!45265 b_and!350701 (not b!7121225) (not b_next!134419) (not b_lambda!271621))
(check-sat b_and!350701 (not b_next!134419))
