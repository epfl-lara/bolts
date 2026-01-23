; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755680 () Bool)

(assert start!755680)

(declare-fun b!8026005 () Bool)

(declare-fun e!4728145 () Bool)

(declare-datatypes ((B!4325 0))(
  ( (B!4326 (val!32562 Int)) )
))
(declare-datatypes ((List!75078 0))(
  ( (Nil!74952) (Cons!74952 (h!81400 B!4325) (t!390834 List!75078)) )
))
(declare-fun l!3127 () List!75078)

(assert (=> b!8026005 (= e!4728145 (not (not (= l!3127 Nil!74952))))))

(declare-fun lt!2720819 () List!75078)

(declare-fun e!9294 () B!4325)

(declare-fun getIndex!912 (List!75078 B!4325) Int)

(declare-fun tail!16001 (List!75078) List!75078)

(assert (=> b!8026005 (= (getIndex!912 lt!2720819 e!9294) (+ 1 (getIndex!912 (tail!16001 lt!2720819) e!9294)))))

(declare-datatypes ((Unit!170940 0))(
  ( (Unit!170941) )
))
(declare-fun lt!2720820 () Unit!170940)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!26 (List!75078 B!4325) Unit!170940)

(assert (=> b!8026005 (= lt!2720820 (lemmaNotHeadSoGetIndexTailIsMinusOne!26 lt!2720819 e!9294))))

(declare-fun res!3173884 () Bool)

(declare-fun e!4728143 () Bool)

(assert (=> start!755680 (=> (not res!3173884) (not e!4728143))))

(declare-fun contains!20916 (List!75078 B!4325) Bool)

(assert (=> start!755680 (= res!3173884 (contains!20916 l!3127 e!9294))))

(assert (=> start!755680 e!4728143))

(declare-fun e!4728144 () Bool)

(assert (=> start!755680 e!4728144))

(declare-fun tp_is_empty!54229 () Bool)

(assert (=> start!755680 tp_is_empty!54229))

(declare-fun b!8026006 () Bool)

(declare-fun tp!2401961 () Bool)

(assert (=> b!8026006 (= e!4728144 (and tp_is_empty!54229 tp!2401961))))

(declare-fun b!8026007 () Bool)

(assert (=> b!8026007 (= e!4728143 e!4728145)))

(declare-fun res!3173885 () Bool)

(assert (=> b!8026007 (=> (not res!3173885) (not e!4728145))))

(declare-fun head!16458 (List!75078) B!4325)

(assert (=> b!8026007 (= res!3173885 (not (= (head!16458 lt!2720819) e!9294)))))

(assert (=> b!8026007 (= lt!2720819 (tail!16001 l!3127))))

(declare-fun b!8026008 () Bool)

(declare-fun res!3173883 () Bool)

(assert (=> b!8026008 (=> (not res!3173883) (not e!4728143))))

(assert (=> b!8026008 (= res!3173883 (not (= (head!16458 l!3127) e!9294)))))

(declare-fun b!8026009 () Bool)

(declare-fun res!3173882 () Bool)

(assert (=> b!8026009 (=> (not res!3173882) (not e!4728145))))

(assert (=> b!8026009 (= res!3173882 (contains!20916 lt!2720819 e!9294))))

(assert (= (and start!755680 res!3173884) b!8026008))

(assert (= (and b!8026008 res!3173883) b!8026007))

(assert (= (and b!8026007 res!3173885) b!8026009))

(assert (= (and b!8026009 res!3173882) b!8026005))

(get-info :version)

(assert (= (and start!755680 ((_ is Cons!74952) l!3127)) b!8026006))

(declare-fun m!8388512 () Bool)

(assert (=> b!8026007 m!8388512))

(declare-fun m!8388514 () Bool)

(assert (=> b!8026007 m!8388514))

(declare-fun m!8388516 () Bool)

(assert (=> b!8026009 m!8388516))

(declare-fun m!8388518 () Bool)

(assert (=> b!8026008 m!8388518))

(declare-fun m!8388520 () Bool)

(assert (=> start!755680 m!8388520))

(declare-fun m!8388522 () Bool)

(assert (=> b!8026005 m!8388522))

(declare-fun m!8388524 () Bool)

(assert (=> b!8026005 m!8388524))

(assert (=> b!8026005 m!8388524))

(declare-fun m!8388526 () Bool)

(assert (=> b!8026005 m!8388526))

(declare-fun m!8388528 () Bool)

(assert (=> b!8026005 m!8388528))

(check-sat tp_is_empty!54229 (not b!8026009) (not b!8026005) (not b!8026008) (not b!8026007) (not start!755680) (not b!8026006))
(check-sat)
(get-model)

(declare-fun d!2393347 () Bool)

(assert (=> d!2393347 (= (head!16458 l!3127) (h!81400 l!3127))))

(assert (=> b!8026008 d!2393347))

(declare-fun d!2393349 () Bool)

(assert (=> d!2393349 (= (head!16458 lt!2720819) (h!81400 lt!2720819))))

(assert (=> b!8026007 d!2393349))

(declare-fun d!2393351 () Bool)

(assert (=> d!2393351 (= (tail!16001 l!3127) (t!390834 l!3127))))

(assert (=> b!8026007 d!2393351))

(declare-fun b!8026029 () Bool)

(declare-fun e!4728159 () Int)

(assert (=> b!8026029 (= e!4728159 (- 1))))

(declare-fun d!2393353 () Bool)

(declare-fun lt!2720827 () Int)

(assert (=> d!2393353 (>= lt!2720827 0)))

(declare-fun e!4728161 () Int)

(assert (=> d!2393353 (= lt!2720827 e!4728161)))

(declare-fun c!1472686 () Bool)

(assert (=> d!2393353 (= c!1472686 (and ((_ is Cons!74952) lt!2720819) (= (h!81400 lt!2720819) e!9294)))))

(assert (=> d!2393353 (contains!20916 lt!2720819 e!9294)))

(assert (=> d!2393353 (= (getIndex!912 lt!2720819 e!9294) lt!2720827)))

(declare-fun b!8026027 () Bool)

(assert (=> b!8026027 (= e!4728161 e!4728159)))

(declare-fun c!1472685 () Bool)

(assert (=> b!8026027 (= c!1472685 (and ((_ is Cons!74952) lt!2720819) (not (= (h!81400 lt!2720819) e!9294))))))

(declare-fun b!8026028 () Bool)

(assert (=> b!8026028 (= e!4728159 (+ 1 (getIndex!912 (t!390834 lt!2720819) e!9294)))))

(declare-fun b!8026026 () Bool)

(assert (=> b!8026026 (= e!4728161 0)))

(assert (= (and d!2393353 c!1472686) b!8026026))

(assert (= (and d!2393353 (not c!1472686)) b!8026027))

(assert (= (and b!8026027 c!1472685) b!8026028))

(assert (= (and b!8026027 (not c!1472685)) b!8026029))

(assert (=> d!2393353 m!8388516))

(declare-fun m!8388542 () Bool)

(assert (=> b!8026028 m!8388542))

(assert (=> b!8026005 d!2393353))

(declare-fun b!8026041 () Bool)

(declare-fun e!4728166 () Int)

(assert (=> b!8026041 (= e!4728166 (- 1))))

(declare-fun d!2393359 () Bool)

(declare-fun lt!2720830 () Int)

(assert (=> d!2393359 (>= lt!2720830 0)))

(declare-fun e!4728167 () Int)

(assert (=> d!2393359 (= lt!2720830 e!4728167)))

(declare-fun c!1472692 () Bool)

(assert (=> d!2393359 (= c!1472692 (and ((_ is Cons!74952) (tail!16001 lt!2720819)) (= (h!81400 (tail!16001 lt!2720819)) e!9294)))))

(assert (=> d!2393359 (contains!20916 (tail!16001 lt!2720819) e!9294)))

(assert (=> d!2393359 (= (getIndex!912 (tail!16001 lt!2720819) e!9294) lt!2720830)))

(declare-fun b!8026039 () Bool)

(assert (=> b!8026039 (= e!4728167 e!4728166)))

(declare-fun c!1472691 () Bool)

(assert (=> b!8026039 (= c!1472691 (and ((_ is Cons!74952) (tail!16001 lt!2720819)) (not (= (h!81400 (tail!16001 lt!2720819)) e!9294))))))

(declare-fun b!8026040 () Bool)

(assert (=> b!8026040 (= e!4728166 (+ 1 (getIndex!912 (t!390834 (tail!16001 lt!2720819)) e!9294)))))

(declare-fun b!8026038 () Bool)

(assert (=> b!8026038 (= e!4728167 0)))

(assert (= (and d!2393359 c!1472692) b!8026038))

(assert (= (and d!2393359 (not c!1472692)) b!8026039))

(assert (= (and b!8026039 c!1472691) b!8026040))

(assert (= (and b!8026039 (not c!1472691)) b!8026041))

(assert (=> d!2393359 m!8388524))

(declare-fun m!8388544 () Bool)

(assert (=> d!2393359 m!8388544))

(declare-fun m!8388546 () Bool)

(assert (=> b!8026040 m!8388546))

(assert (=> b!8026005 d!2393359))

(declare-fun d!2393361 () Bool)

(assert (=> d!2393361 (= (tail!16001 lt!2720819) (t!390834 lt!2720819))))

(assert (=> b!8026005 d!2393361))

(declare-fun d!2393363 () Bool)

(assert (=> d!2393363 (= (getIndex!912 lt!2720819 e!9294) (+ (getIndex!912 (tail!16001 lt!2720819) e!9294) 1))))

(declare-fun lt!2720835 () Unit!170940)

(declare-fun choose!60448 (List!75078 B!4325) Unit!170940)

(assert (=> d!2393363 (= lt!2720835 (choose!60448 lt!2720819 e!9294))))

(assert (=> d!2393363 (contains!20916 lt!2720819 e!9294)))

(assert (=> d!2393363 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!26 lt!2720819 e!9294) lt!2720835)))

(declare-fun bs!1971307 () Bool)

(assert (= bs!1971307 d!2393363))

(assert (=> bs!1971307 m!8388524))

(assert (=> bs!1971307 m!8388516))

(declare-fun m!8388554 () Bool)

(assert (=> bs!1971307 m!8388554))

(assert (=> bs!1971307 m!8388522))

(assert (=> bs!1971307 m!8388524))

(assert (=> bs!1971307 m!8388526))

(assert (=> b!8026005 d!2393363))

(declare-fun d!2393371 () Bool)

(declare-fun lt!2720841 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15971 (List!75078) (InoxSet B!4325))

(assert (=> d!2393371 (= lt!2720841 (select (content!15971 l!3127) e!9294))))

(declare-fun e!4728180 () Bool)

(assert (=> d!2393371 (= lt!2720841 e!4728180)))

(declare-fun res!3173899 () Bool)

(assert (=> d!2393371 (=> (not res!3173899) (not e!4728180))))

(assert (=> d!2393371 (= res!3173899 ((_ is Cons!74952) l!3127))))

(assert (=> d!2393371 (= (contains!20916 l!3127 e!9294) lt!2720841)))

(declare-fun b!8026058 () Bool)

(declare-fun e!4728181 () Bool)

(assert (=> b!8026058 (= e!4728180 e!4728181)))

(declare-fun res!3173898 () Bool)

(assert (=> b!8026058 (=> res!3173898 e!4728181)))

(assert (=> b!8026058 (= res!3173898 (= (h!81400 l!3127) e!9294))))

(declare-fun b!8026059 () Bool)

(assert (=> b!8026059 (= e!4728181 (contains!20916 (t!390834 l!3127) e!9294))))

(assert (= (and d!2393371 res!3173899) b!8026058))

(assert (= (and b!8026058 (not res!3173898)) b!8026059))

(declare-fun m!8388558 () Bool)

(assert (=> d!2393371 m!8388558))

(declare-fun m!8388560 () Bool)

(assert (=> d!2393371 m!8388560))

(declare-fun m!8388562 () Bool)

(assert (=> b!8026059 m!8388562))

(assert (=> start!755680 d!2393371))

(declare-fun d!2393379 () Bool)

(declare-fun lt!2720842 () Bool)

(assert (=> d!2393379 (= lt!2720842 (select (content!15971 lt!2720819) e!9294))))

(declare-fun e!4728183 () Bool)

(assert (=> d!2393379 (= lt!2720842 e!4728183)))

(declare-fun res!3173901 () Bool)

(assert (=> d!2393379 (=> (not res!3173901) (not e!4728183))))

(assert (=> d!2393379 (= res!3173901 ((_ is Cons!74952) lt!2720819))))

(assert (=> d!2393379 (= (contains!20916 lt!2720819 e!9294) lt!2720842)))

(declare-fun b!8026061 () Bool)

(declare-fun e!4728184 () Bool)

(assert (=> b!8026061 (= e!4728183 e!4728184)))

(declare-fun res!3173900 () Bool)

(assert (=> b!8026061 (=> res!3173900 e!4728184)))

(assert (=> b!8026061 (= res!3173900 (= (h!81400 lt!2720819) e!9294))))

(declare-fun b!8026062 () Bool)

(assert (=> b!8026062 (= e!4728184 (contains!20916 (t!390834 lt!2720819) e!9294))))

(assert (= (and d!2393379 res!3173901) b!8026061))

(assert (= (and b!8026061 (not res!3173900)) b!8026062))

(declare-fun m!8388564 () Bool)

(assert (=> d!2393379 m!8388564))

(declare-fun m!8388566 () Bool)

(assert (=> d!2393379 m!8388566))

(declare-fun m!8388568 () Bool)

(assert (=> b!8026062 m!8388568))

(assert (=> b!8026009 d!2393379))

(declare-fun b!8026067 () Bool)

(declare-fun e!4728187 () Bool)

(declare-fun tp!2401967 () Bool)

(assert (=> b!8026067 (= e!4728187 (and tp_is_empty!54229 tp!2401967))))

(assert (=> b!8026006 (= tp!2401961 e!4728187)))

(assert (= (and b!8026006 ((_ is Cons!74952) (t!390834 l!3127))) b!8026067))

(check-sat tp_is_empty!54229 (not d!2393379) (not b!8026040) (not b!8026062) (not d!2393359) (not b!8026028) (not b!8026059) (not b!8026067) (not d!2393353) (not d!2393371) (not d!2393363))
(check-sat)
