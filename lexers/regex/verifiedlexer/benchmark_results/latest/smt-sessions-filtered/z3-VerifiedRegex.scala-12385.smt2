; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693308 () Bool)

(assert start!693308)

(declare-fun b_free!133645 () Bool)

(declare-fun b_next!134435 () Bool)

(assert (=> start!693308 (= b_free!133645 (not b_next!134435))))

(declare-fun tp!1960735 () Bool)

(declare-fun b_and!350733 () Bool)

(assert (=> start!693308 (= tp!1960735 b_and!350733)))

(declare-fun b!7121427 () Bool)

(declare-fun res!2905229 () Bool)

(declare-fun e!4279054 () Bool)

(assert (=> b!7121427 (=> (not res!2905229) (not e!4279054))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!551 0))(
  ( (A!552 (val!27877 Int)) )
))
(declare-fun s!1427 () (InoxSet A!551))

(declare-fun f!842 () Int)

(get-info :version)

(declare-datatypes ((B!3209 0))(
  ( (B!3210 (val!27878 Int)) )
))
(declare-datatypes ((List!68974 0))(
  ( (Nil!68850) (Cons!68850 (h!75298 B!3209) (t!382877 List!68974)) )
))
(declare-fun toList!11077 ((InoxSet B!3209)) List!68974)

(declare-fun map!16359 ((InoxSet A!551) Int) (InoxSet B!3209))

(assert (=> b!7121427 (= res!2905229 (not ((_ is Cons!68850) (toList!11077 (map!16359 s!1427 f!842)))))))

(declare-fun res!2905230 () Bool)

(assert (=> start!693308 (=> (not res!2905230) (not e!4279054))))

(declare-fun elmt!108 () A!551)

(assert (=> start!693308 (= res!2905230 (= s!1427 (store ((as const (Array A!551 Bool)) false) elmt!108 true)))))

(assert (=> start!693308 e!4279054))

(declare-fun condSetEmpty!50827 () Bool)

(assert (=> start!693308 (= condSetEmpty!50827 (= s!1427 ((as const (Array A!551 Bool)) false)))))

(declare-fun setRes!50827 () Bool)

(assert (=> start!693308 setRes!50827))

(declare-fun tp_is_empty!45287 () Bool)

(assert (=> start!693308 tp_is_empty!45287))

(assert (=> start!693308 tp!1960735))

(declare-fun setIsEmpty!50827 () Bool)

(assert (=> setIsEmpty!50827 setRes!50827))

(declare-fun b!7121428 () Bool)

(assert (=> b!7121428 (= e!4279054 (not false))))

(declare-datatypes ((Unit!162653 0))(
  ( (Unit!162654) )
))
(declare-fun empty!2775 () Unit!162653)

(declare-fun mapPost1!2 ((InoxSet A!551) Int A!551) Unit!162653)

(assert (=> b!7121428 (= (mapPost1!2 s!1427 f!842 elmt!108) empty!2775)))

(assert (=> b!7121428 true))

(declare-fun setNonEmpty!50827 () Bool)

(declare-fun tp!1960736 () Bool)

(assert (=> setNonEmpty!50827 (= setRes!50827 (and tp!1960736 tp_is_empty!45287))))

(declare-fun setElem!50827 () A!551)

(declare-fun setRest!50827 () (InoxSet A!551))

(assert (=> setNonEmpty!50827 (= s!1427 ((_ map or) (store ((as const (Array A!551 Bool)) false) setElem!50827 true) setRest!50827))))

(assert (= (and start!693308 res!2905230) b!7121427))

(assert (= (and b!7121427 res!2905229) b!7121428))

(assert (= (and start!693308 condSetEmpty!50827) setIsEmpty!50827))

(assert (= (and start!693308 (not condSetEmpty!50827)) setNonEmpty!50827))

(declare-fun m!7838276 () Bool)

(assert (=> b!7121427 m!7838276))

(assert (=> b!7121427 m!7838276))

(declare-fun m!7838278 () Bool)

(assert (=> b!7121427 m!7838278))

(declare-fun m!7838280 () Bool)

(assert (=> start!693308 m!7838280))

(declare-fun m!7838282 () Bool)

(assert (=> b!7121428 m!7838282))

(check-sat (not setNonEmpty!50827) (not b!7121428) (not b!7121427) b_and!350733 tp_is_empty!45287 (not b_next!134435))
(check-sat b_and!350733 (not b_next!134435))
(get-model)

(declare-fun d!2222184 () Bool)

(declare-fun e!4279059 () Bool)

(assert (=> d!2222184 e!4279059))

(declare-fun res!2905235 () Bool)

(assert (=> d!2222184 (=> res!2905235 e!4279059)))

(assert (=> d!2222184 (= res!2905235 (not (select s!1427 elmt!108)))))

(declare-fun lt!2561531 () Unit!162653)

(declare-fun choose!54960 ((InoxSet A!551) Int A!551) Unit!162653)

(assert (=> d!2222184 (= lt!2561531 (choose!54960 s!1427 f!842 elmt!108))))

(assert (=> d!2222184 (= (mapPost1!2 s!1427 f!842 elmt!108) lt!2561531)))

(declare-fun b!7121433 () Bool)

(declare-fun dynLambda!28072 (Int A!551) B!3209)

(assert (=> b!7121433 (= e!4279059 (select (map!16359 s!1427 f!842) (dynLambda!28072 f!842 elmt!108)))))

(assert (= (and d!2222184 (not res!2905235)) b!7121433))

(declare-fun b_lambda!271657 () Bool)

(assert (=> (not b_lambda!271657) (not b!7121433)))

(declare-fun t!382879 () Bool)

(declare-fun tb!261993 () Bool)

(assert (=> (and start!693308 (= f!842 f!842) t!382879) tb!261993))

(declare-fun result!349144 () Bool)

(declare-fun tp_is_empty!45289 () Bool)

(assert (=> tb!261993 (= result!349144 tp_is_empty!45289)))

(assert (=> b!7121433 t!382879))

(declare-fun b_and!350735 () Bool)

(assert (= b_and!350733 (and (=> t!382879 result!349144) b_and!350735)))

(declare-fun m!7838284 () Bool)

(assert (=> d!2222184 m!7838284))

(declare-fun m!7838286 () Bool)

(assert (=> d!2222184 m!7838286))

(declare-fun m!7838288 () Bool)

(assert (=> b!7121433 m!7838288))

(assert (=> b!7121433 m!7838276))

(assert (=> b!7121433 m!7838288))

(declare-fun m!7838290 () Bool)

(assert (=> b!7121433 m!7838290))

(assert (=> b!7121428 d!2222184))

(declare-fun d!2222188 () Bool)

(declare-fun e!4279065 () Bool)

(assert (=> d!2222188 e!4279065))

(declare-fun res!2905241 () Bool)

(assert (=> d!2222188 (=> (not res!2905241) (not e!4279065))))

(declare-fun lt!2561537 () List!68974)

(declare-fun noDuplicate!2776 (List!68974) Bool)

(assert (=> d!2222188 (= res!2905241 (noDuplicate!2776 lt!2561537))))

(declare-fun choose!54962 ((InoxSet B!3209)) List!68974)

(assert (=> d!2222188 (= lt!2561537 (choose!54962 (map!16359 s!1427 f!842)))))

(assert (=> d!2222188 (= (toList!11077 (map!16359 s!1427 f!842)) lt!2561537)))

(declare-fun b!7121443 () Bool)

(declare-fun content!14074 (List!68974) (InoxSet B!3209))

(assert (=> b!7121443 (= e!4279065 (= (content!14074 lt!2561537) (map!16359 s!1427 f!842)))))

(assert (= (and d!2222188 res!2905241) b!7121443))

(declare-fun m!7838300 () Bool)

(assert (=> d!2222188 m!7838300))

(assert (=> d!2222188 m!7838276))

(declare-fun m!7838302 () Bool)

(assert (=> d!2222188 m!7838302))

(declare-fun m!7838304 () Bool)

(assert (=> b!7121443 m!7838304))

(assert (=> b!7121427 d!2222188))

(declare-fun d!2222192 () Bool)

(declare-fun choose!54964 ((InoxSet A!551) Int) (InoxSet B!3209))

(assert (=> d!2222192 (= (map!16359 s!1427 f!842) (choose!54964 s!1427 f!842))))

(declare-fun bs!1885931 () Bool)

(assert (= bs!1885931 d!2222192))

(declare-fun m!7838312 () Bool)

(assert (=> bs!1885931 m!7838312))

(assert (=> b!7121427 d!2222192))

(declare-fun condSetEmpty!50832 () Bool)

(assert (=> setNonEmpty!50827 (= condSetEmpty!50832 (= setRest!50827 ((as const (Array A!551 Bool)) false)))))

(declare-fun setRes!50832 () Bool)

(assert (=> setNonEmpty!50827 (= tp!1960736 setRes!50832)))

(declare-fun setIsEmpty!50832 () Bool)

(assert (=> setIsEmpty!50832 setRes!50832))

(declare-fun setNonEmpty!50832 () Bool)

(declare-fun tp!1960741 () Bool)

(assert (=> setNonEmpty!50832 (= setRes!50832 (and tp!1960741 tp_is_empty!45287))))

(declare-fun setElem!50832 () A!551)

(declare-fun setRest!50832 () (InoxSet A!551))

(assert (=> setNonEmpty!50832 (= setRest!50827 ((_ map or) (store ((as const (Array A!551 Bool)) false) setElem!50832 true) setRest!50832))))

(assert (= (and setNonEmpty!50827 condSetEmpty!50832) setIsEmpty!50832))

(assert (= (and setNonEmpty!50827 (not condSetEmpty!50832)) setNonEmpty!50832))

(declare-fun b_lambda!271661 () Bool)

(assert (= b_lambda!271657 (or (and start!693308 b_free!133645) b_lambda!271661)))

(check-sat (not d!2222192) (not b!7121433) (not b!7121443) b_and!350735 (not d!2222188) (not d!2222184) (not b_lambda!271661) tp_is_empty!45287 (not b_next!134435) (not setNonEmpty!50832) tp_is_empty!45289)
(check-sat b_and!350735 (not b_next!134435))
(get-model)

(declare-fun d!2222196 () Bool)

(assert (=> d!2222196 true))

(declare-fun setRes!50836 () Bool)

(assert (=> d!2222196 setRes!50836))

(declare-fun condSetEmpty!50836 () Bool)

(declare-fun res!2905245 () (InoxSet B!3209))

(assert (=> d!2222196 (= condSetEmpty!50836 (= res!2905245 ((as const (Array B!3209 Bool)) false)))))

(assert (=> d!2222196 (= (choose!54964 s!1427 f!842) res!2905245)))

(declare-fun setIsEmpty!50836 () Bool)

(assert (=> setIsEmpty!50836 setRes!50836))

(declare-fun setNonEmpty!50836 () Bool)

(declare-fun tp!1960745 () Bool)

(assert (=> setNonEmpty!50836 (= setRes!50836 (and tp!1960745 tp_is_empty!45289))))

(declare-fun setElem!50836 () B!3209)

(declare-fun setRest!50836 () (InoxSet B!3209))

(assert (=> setNonEmpty!50836 (= res!2905245 ((_ map or) (store ((as const (Array B!3209 Bool)) false) setElem!50836 true) setRest!50836))))

(assert (= (and d!2222196 condSetEmpty!50836) setIsEmpty!50836))

(assert (= (and d!2222196 (not condSetEmpty!50836)) setNonEmpty!50836))

(assert (=> d!2222192 d!2222196))

(declare-fun d!2222198 () Bool)

(declare-fun c!1328953 () Bool)

(assert (=> d!2222198 (= c!1328953 ((_ is Nil!68850) lt!2561537))))

(declare-fun e!4279069 () (InoxSet B!3209))

(assert (=> d!2222198 (= (content!14074 lt!2561537) e!4279069)))

(declare-fun b!7121453 () Bool)

(assert (=> b!7121453 (= e!4279069 ((as const (Array B!3209 Bool)) false))))

(declare-fun b!7121454 () Bool)

(assert (=> b!7121454 (= e!4279069 ((_ map or) (store ((as const (Array B!3209 Bool)) false) (h!75298 lt!2561537) true) (content!14074 (t!382877 lt!2561537))))))

(assert (= (and d!2222198 c!1328953) b!7121453))

(assert (= (and d!2222198 (not c!1328953)) b!7121454))

(declare-fun m!7838316 () Bool)

(assert (=> b!7121454 m!7838316))

(declare-fun m!7838318 () Bool)

(assert (=> b!7121454 m!7838318))

(assert (=> b!7121443 d!2222198))

(declare-fun d!2222200 () Bool)

(declare-fun e!4279072 () Bool)

(assert (=> d!2222200 e!4279072))

(declare-fun res!2905248 () Bool)

(assert (=> d!2222200 (=> res!2905248 e!4279072)))

(assert (=> d!2222200 (= res!2905248 (not (select s!1427 elmt!108)))))

(assert (=> d!2222200 true))

(declare-fun _$1!11307 () Unit!162653)

(assert (=> d!2222200 (= (choose!54960 s!1427 f!842 elmt!108) _$1!11307)))

(declare-fun b!7121457 () Bool)

(assert (=> b!7121457 (= e!4279072 (select (map!16359 s!1427 f!842) (dynLambda!28072 f!842 elmt!108)))))

(assert (= (and d!2222200 (not res!2905248)) b!7121457))

(declare-fun b_lambda!271665 () Bool)

(assert (=> (not b_lambda!271665) (not b!7121457)))

(assert (=> b!7121457 t!382879))

(declare-fun b_and!350739 () Bool)

(assert (= b_and!350735 (and (=> t!382879 result!349144) b_and!350739)))

(assert (=> d!2222200 m!7838284))

(assert (=> b!7121457 m!7838288))

(assert (=> b!7121457 m!7838276))

(assert (=> b!7121457 m!7838288))

(assert (=> b!7121457 m!7838290))

(assert (=> d!2222184 d!2222200))

(declare-fun d!2222204 () Bool)

(declare-fun res!2905256 () Bool)

(declare-fun e!4279080 () Bool)

(assert (=> d!2222204 (=> res!2905256 e!4279080)))

(assert (=> d!2222204 (= res!2905256 ((_ is Nil!68850) lt!2561537))))

(assert (=> d!2222204 (= (noDuplicate!2776 lt!2561537) e!4279080)))

(declare-fun b!7121465 () Bool)

(declare-fun e!4279081 () Bool)

(assert (=> b!7121465 (= e!4279080 e!4279081)))

(declare-fun res!2905257 () Bool)

(assert (=> b!7121465 (=> (not res!2905257) (not e!4279081))))

(declare-fun contains!20516 (List!68974 B!3209) Bool)

(assert (=> b!7121465 (= res!2905257 (not (contains!20516 (t!382877 lt!2561537) (h!75298 lt!2561537))))))

(declare-fun b!7121466 () Bool)

(assert (=> b!7121466 (= e!4279081 (noDuplicate!2776 (t!382877 lt!2561537)))))

(assert (= (and d!2222204 (not res!2905256)) b!7121465))

(assert (= (and b!7121465 res!2905257) b!7121466))

(declare-fun m!7838320 () Bool)

(assert (=> b!7121465 m!7838320))

(declare-fun m!7838322 () Bool)

(assert (=> b!7121466 m!7838322))

(assert (=> d!2222188 d!2222204))

(declare-fun d!2222208 () Bool)

(declare-fun e!4279090 () Bool)

(assert (=> d!2222208 e!4279090))

(declare-fun res!2905267 () Bool)

(assert (=> d!2222208 (=> (not res!2905267) (not e!4279090))))

(declare-fun res!2905266 () List!68974)

(assert (=> d!2222208 (= res!2905267 (noDuplicate!2776 res!2905266))))

(declare-fun e!4279091 () Bool)

(assert (=> d!2222208 e!4279091))

(assert (=> d!2222208 (= (choose!54962 (map!16359 s!1427 f!842)) res!2905266)))

(declare-fun b!7121475 () Bool)

(declare-fun tp!1960748 () Bool)

(assert (=> b!7121475 (= e!4279091 (and tp_is_empty!45289 tp!1960748))))

(declare-fun b!7121476 () Bool)

(assert (=> b!7121476 (= e!4279090 (= (content!14074 res!2905266) (map!16359 s!1427 f!842)))))

(assert (= (and d!2222208 ((_ is Cons!68850) res!2905266)) b!7121475))

(assert (= (and d!2222208 res!2905267) b!7121476))

(declare-fun m!7838324 () Bool)

(assert (=> d!2222208 m!7838324))

(declare-fun m!7838326 () Bool)

(assert (=> b!7121476 m!7838326))

(assert (=> d!2222188 d!2222208))

(assert (=> b!7121433 d!2222192))

(declare-fun condSetEmpty!50837 () Bool)

(assert (=> setNonEmpty!50832 (= condSetEmpty!50837 (= setRest!50832 ((as const (Array A!551 Bool)) false)))))

(declare-fun setRes!50837 () Bool)

(assert (=> setNonEmpty!50832 (= tp!1960741 setRes!50837)))

(declare-fun setIsEmpty!50837 () Bool)

(assert (=> setIsEmpty!50837 setRes!50837))

(declare-fun setNonEmpty!50837 () Bool)

(declare-fun tp!1960749 () Bool)

(assert (=> setNonEmpty!50837 (= setRes!50837 (and tp!1960749 tp_is_empty!45287))))

(declare-fun setElem!50837 () A!551)

(declare-fun setRest!50837 () (InoxSet A!551))

(assert (=> setNonEmpty!50837 (= setRest!50832 ((_ map or) (store ((as const (Array A!551 Bool)) false) setElem!50837 true) setRest!50837))))

(assert (= (and setNonEmpty!50832 condSetEmpty!50837) setIsEmpty!50837))

(assert (= (and setNonEmpty!50832 (not condSetEmpty!50837)) setNonEmpty!50837))

(declare-fun b_lambda!271669 () Bool)

(assert (= b_lambda!271665 (or (and start!693308 b_free!133645) b_lambda!271669)))

(check-sat (not b!7121457) (not d!2222208) (not b_lambda!271669) (not b!7121466) b_and!350739 (not b!7121475) tp_is_empty!45289 (not setNonEmpty!50837) (not b!7121454) (not b_lambda!271661) tp_is_empty!45287 (not setNonEmpty!50836) (not b!7121476) (not b!7121465) (not b_next!134435))
(check-sat b_and!350739 (not b_next!134435))
