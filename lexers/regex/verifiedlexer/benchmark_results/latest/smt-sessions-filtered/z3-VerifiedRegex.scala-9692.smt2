; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507866 () Bool)

(assert start!507866)

(declare-fun b!4859980 () Bool)

(declare-fun e!3038309 () Bool)

(declare-datatypes ((B!2953 0))(
  ( (B!2954 (val!22432 Int)) )
))
(declare-datatypes ((List!55900 0))(
  ( (Nil!55776) (Cons!55776 (h!62224 B!2953) (t!363520 List!55900)) )
))
(declare-fun lt!1992150 () List!55900)

(declare-fun l2!1268 () List!55900)

(declare-fun last!420 (List!55900) B!2953)

(assert (=> b!4859980 (= e!3038309 (= (last!420 lt!1992150) (last!420 l2!1268)))))

(declare-fun b!4859981 () Bool)

(declare-fun e!3038310 () Bool)

(declare-fun e!3038312 () Bool)

(assert (=> b!4859981 (= e!3038310 e!3038312)))

(declare-fun res!2074811 () Bool)

(assert (=> b!4859981 (=> (not res!2074811) (not e!3038312))))

(declare-fun lt!1992151 () Bool)

(assert (=> b!4859981 (= res!2074811 (not lt!1992151))))

(declare-fun b!4859982 () Bool)

(declare-fun e!3038318 () Bool)

(declare-fun tp_is_empty!35571 () Bool)

(declare-fun tp!1366988 () Bool)

(assert (=> b!4859982 (= e!3038318 (and tp_is_empty!35571 tp!1366988))))

(declare-fun res!2074812 () Bool)

(declare-fun e!3038317 () Bool)

(assert (=> start!507866 (=> (not res!2074812) (not e!3038317))))

(declare-fun lt!1992152 () List!55900)

(declare-fun isEmpty!29865 (List!55900) Bool)

(assert (=> start!507866 (= res!2074812 (not (isEmpty!29865 lt!1992152)))))

(declare-fun l1!1299 () List!55900)

(declare-fun ++!12161 (List!55900 List!55900) List!55900)

(assert (=> start!507866 (= lt!1992152 (++!12161 l1!1299 l2!1268))))

(assert (=> start!507866 e!3038317))

(declare-fun e!3038314 () Bool)

(assert (=> start!507866 e!3038314))

(assert (=> start!507866 e!3038318))

(declare-fun b!4859983 () Bool)

(declare-fun e!3038311 () Bool)

(assert (=> b!4859983 (= e!3038311 (= (last!420 lt!1992150) (last!420 (t!363520 l1!1299))))))

(declare-fun b!4859984 () Bool)

(declare-fun res!2074806 () Bool)

(assert (=> b!4859984 (=> (not res!2074806) (not e!3038317))))

(get-info :version)

(assert (=> b!4859984 (= res!2074806 ((_ is Cons!55776) l1!1299))))

(declare-fun b!4859985 () Bool)

(declare-fun e!3038316 () Bool)

(assert (=> b!4859985 (= e!3038317 e!3038316)))

(declare-fun res!2074807 () Bool)

(assert (=> b!4859985 (=> (not res!2074807) (not e!3038316))))

(assert (=> b!4859985 (= res!2074807 (not (isEmpty!29865 lt!1992150)))))

(assert (=> b!4859985 (= lt!1992150 (++!12161 (t!363520 l1!1299) l2!1268))))

(declare-fun b!4859986 () Bool)

(assert (=> b!4859986 (= e!3038316 (not e!3038310))))

(declare-fun res!2074815 () Bool)

(assert (=> b!4859986 (=> res!2074815 e!3038310)))

(declare-fun e!3038313 () Bool)

(assert (=> b!4859986 (= res!2074815 e!3038313)))

(declare-fun res!2074809 () Bool)

(assert (=> b!4859986 (=> (not res!2074809) (not e!3038313))))

(declare-fun lt!1992149 () Bool)

(assert (=> b!4859986 (= res!2074809 (not lt!1992149))))

(declare-fun e!3038315 () Bool)

(assert (=> b!4859986 e!3038315))

(declare-fun res!2074808 () Bool)

(assert (=> b!4859986 (=> res!2074808 e!3038315)))

(assert (=> b!4859986 (= res!2074808 e!3038311)))

(declare-fun res!2074810 () Bool)

(assert (=> b!4859986 (=> (not res!2074810) (not e!3038311))))

(assert (=> b!4859986 (= res!2074810 (not lt!1992149))))

(assert (=> b!4859986 (= lt!1992149 (not lt!1992151))))

(assert (=> b!4859986 (= lt!1992151 (isEmpty!29865 l2!1268))))

(declare-datatypes ((Unit!145875 0))(
  ( (Unit!145876) )
))
(declare-fun lt!1992153 () Unit!145875)

(declare-fun lemmaLastOfConcatIsLastOfRhs!44 (List!55900 List!55900) Unit!145875)

(assert (=> b!4859986 (= lt!1992153 (lemmaLastOfConcatIsLastOfRhs!44 (t!363520 l1!1299) l2!1268))))

(declare-fun b!4859987 () Bool)

(assert (=> b!4859987 (= e!3038315 e!3038309)))

(declare-fun res!2074814 () Bool)

(assert (=> b!4859987 (=> (not res!2074814) (not e!3038309))))

(assert (=> b!4859987 (= res!2074814 (not lt!1992151))))

(declare-fun b!4859988 () Bool)

(assert (=> b!4859988 (= e!3038312 (= (last!420 lt!1992152) (last!420 l2!1268)))))

(declare-fun b!4859989 () Bool)

(assert (=> b!4859989 (= e!3038313 (= (last!420 lt!1992152) (last!420 l1!1299)))))

(declare-fun b!4859990 () Bool)

(declare-fun tp!1366989 () Bool)

(assert (=> b!4859990 (= e!3038314 (and tp_is_empty!35571 tp!1366989))))

(declare-fun b!4859991 () Bool)

(declare-fun res!2074813 () Bool)

(assert (=> b!4859991 (=> (not res!2074813) (not e!3038317))))

(assert (=> b!4859991 (= res!2074813 (not (isEmpty!29865 (t!363520 l1!1299))))))

(assert (= (and start!507866 res!2074812) b!4859984))

(assert (= (and b!4859984 res!2074806) b!4859991))

(assert (= (and b!4859991 res!2074813) b!4859985))

(assert (= (and b!4859985 res!2074807) b!4859986))

(assert (= (and b!4859986 res!2074810) b!4859983))

(assert (= (and b!4859986 (not res!2074808)) b!4859987))

(assert (= (and b!4859987 res!2074814) b!4859980))

(assert (= (and b!4859986 res!2074809) b!4859989))

(assert (= (and b!4859986 (not res!2074815)) b!4859981))

(assert (= (and b!4859981 res!2074811) b!4859988))

(assert (= (and start!507866 ((_ is Cons!55776) l1!1299)) b!4859990))

(assert (= (and start!507866 ((_ is Cons!55776) l2!1268)) b!4859982))

(declare-fun m!5858170 () Bool)

(assert (=> b!4859980 m!5858170))

(declare-fun m!5858172 () Bool)

(assert (=> b!4859980 m!5858172))

(declare-fun m!5858174 () Bool)

(assert (=> b!4859991 m!5858174))

(declare-fun m!5858176 () Bool)

(assert (=> b!4859985 m!5858176))

(declare-fun m!5858178 () Bool)

(assert (=> b!4859985 m!5858178))

(declare-fun m!5858180 () Bool)

(assert (=> b!4859989 m!5858180))

(declare-fun m!5858182 () Bool)

(assert (=> b!4859989 m!5858182))

(assert (=> b!4859988 m!5858180))

(assert (=> b!4859988 m!5858172))

(assert (=> b!4859983 m!5858170))

(declare-fun m!5858184 () Bool)

(assert (=> b!4859983 m!5858184))

(declare-fun m!5858186 () Bool)

(assert (=> b!4859986 m!5858186))

(declare-fun m!5858188 () Bool)

(assert (=> b!4859986 m!5858188))

(declare-fun m!5858190 () Bool)

(assert (=> start!507866 m!5858190))

(declare-fun m!5858192 () Bool)

(assert (=> start!507866 m!5858192))

(check-sat (not b!4859982) (not b!4859986) (not b!4859983) (not b!4859990) (not b!4859989) (not b!4859985) (not b!4859991) (not b!4859980) tp_is_empty!35571 (not b!4859988) (not start!507866))
(check-sat)
(get-model)

(declare-fun d!1560037 () Bool)

(declare-fun lt!1992159 () B!2953)

(declare-fun contains!19372 (List!55900 B!2953) Bool)

(assert (=> d!1560037 (contains!19372 lt!1992152 lt!1992159)))

(declare-fun e!3038324 () B!2953)

(assert (=> d!1560037 (= lt!1992159 e!3038324)))

(declare-fun c!826745 () Bool)

(assert (=> d!1560037 (= c!826745 (and ((_ is Cons!55776) lt!1992152) ((_ is Nil!55776) (t!363520 lt!1992152))))))

(assert (=> d!1560037 (not (isEmpty!29865 lt!1992152))))

(assert (=> d!1560037 (= (last!420 lt!1992152) lt!1992159)))

(declare-fun b!4860002 () Bool)

(assert (=> b!4860002 (= e!3038324 (h!62224 lt!1992152))))

(declare-fun b!4860003 () Bool)

(assert (=> b!4860003 (= e!3038324 (last!420 (t!363520 lt!1992152)))))

(assert (= (and d!1560037 c!826745) b!4860002))

(assert (= (and d!1560037 (not c!826745)) b!4860003))

(declare-fun m!5858198 () Bool)

(assert (=> d!1560037 m!5858198))

(assert (=> d!1560037 m!5858190))

(declare-fun m!5858200 () Bool)

(assert (=> b!4860003 m!5858200))

(assert (=> b!4859989 d!1560037))

(declare-fun d!1560043 () Bool)

(declare-fun lt!1992161 () B!2953)

(assert (=> d!1560043 (contains!19372 l1!1299 lt!1992161)))

(declare-fun e!3038326 () B!2953)

(assert (=> d!1560043 (= lt!1992161 e!3038326)))

(declare-fun c!826747 () Bool)

(assert (=> d!1560043 (= c!826747 (and ((_ is Cons!55776) l1!1299) ((_ is Nil!55776) (t!363520 l1!1299))))))

(assert (=> d!1560043 (not (isEmpty!29865 l1!1299))))

(assert (=> d!1560043 (= (last!420 l1!1299) lt!1992161)))

(declare-fun b!4860006 () Bool)

(assert (=> b!4860006 (= e!3038326 (h!62224 l1!1299))))

(declare-fun b!4860007 () Bool)

(assert (=> b!4860007 (= e!3038326 (last!420 (t!363520 l1!1299)))))

(assert (= (and d!1560043 c!826747) b!4860006))

(assert (= (and d!1560043 (not c!826747)) b!4860007))

(declare-fun m!5858206 () Bool)

(assert (=> d!1560043 m!5858206))

(declare-fun m!5858208 () Bool)

(assert (=> d!1560043 m!5858208))

(assert (=> b!4860007 m!5858184))

(assert (=> b!4859989 d!1560043))

(assert (=> b!4859988 d!1560037))

(declare-fun d!1560047 () Bool)

(declare-fun lt!1992163 () B!2953)

(assert (=> d!1560047 (contains!19372 l2!1268 lt!1992163)))

(declare-fun e!3038328 () B!2953)

(assert (=> d!1560047 (= lt!1992163 e!3038328)))

(declare-fun c!826749 () Bool)

(assert (=> d!1560047 (= c!826749 (and ((_ is Cons!55776) l2!1268) ((_ is Nil!55776) (t!363520 l2!1268))))))

(assert (=> d!1560047 (not (isEmpty!29865 l2!1268))))

(assert (=> d!1560047 (= (last!420 l2!1268) lt!1992163)))

(declare-fun b!4860010 () Bool)

(assert (=> b!4860010 (= e!3038328 (h!62224 l2!1268))))

(declare-fun b!4860011 () Bool)

(assert (=> b!4860011 (= e!3038328 (last!420 (t!363520 l2!1268)))))

(assert (= (and d!1560047 c!826749) b!4860010))

(assert (= (and d!1560047 (not c!826749)) b!4860011))

(declare-fun m!5858214 () Bool)

(assert (=> d!1560047 m!5858214))

(assert (=> d!1560047 m!5858186))

(declare-fun m!5858216 () Bool)

(assert (=> b!4860011 m!5858216))

(assert (=> b!4859988 d!1560047))

(declare-fun d!1560051 () Bool)

(declare-fun lt!1992164 () B!2953)

(assert (=> d!1560051 (contains!19372 lt!1992150 lt!1992164)))

(declare-fun e!3038329 () B!2953)

(assert (=> d!1560051 (= lt!1992164 e!3038329)))

(declare-fun c!826750 () Bool)

(assert (=> d!1560051 (= c!826750 (and ((_ is Cons!55776) lt!1992150) ((_ is Nil!55776) (t!363520 lt!1992150))))))

(assert (=> d!1560051 (not (isEmpty!29865 lt!1992150))))

(assert (=> d!1560051 (= (last!420 lt!1992150) lt!1992164)))

(declare-fun b!4860012 () Bool)

(assert (=> b!4860012 (= e!3038329 (h!62224 lt!1992150))))

(declare-fun b!4860013 () Bool)

(assert (=> b!4860013 (= e!3038329 (last!420 (t!363520 lt!1992150)))))

(assert (= (and d!1560051 c!826750) b!4860012))

(assert (= (and d!1560051 (not c!826750)) b!4860013))

(declare-fun m!5858218 () Bool)

(assert (=> d!1560051 m!5858218))

(assert (=> d!1560051 m!5858176))

(declare-fun m!5858220 () Bool)

(assert (=> b!4860013 m!5858220))

(assert (=> b!4859983 d!1560051))

(declare-fun d!1560053 () Bool)

(declare-fun lt!1992165 () B!2953)

(assert (=> d!1560053 (contains!19372 (t!363520 l1!1299) lt!1992165)))

(declare-fun e!3038330 () B!2953)

(assert (=> d!1560053 (= lt!1992165 e!3038330)))

(declare-fun c!826751 () Bool)

(assert (=> d!1560053 (= c!826751 (and ((_ is Cons!55776) (t!363520 l1!1299)) ((_ is Nil!55776) (t!363520 (t!363520 l1!1299)))))))

(assert (=> d!1560053 (not (isEmpty!29865 (t!363520 l1!1299)))))

(assert (=> d!1560053 (= (last!420 (t!363520 l1!1299)) lt!1992165)))

(declare-fun b!4860014 () Bool)

(assert (=> b!4860014 (= e!3038330 (h!62224 (t!363520 l1!1299)))))

(declare-fun b!4860015 () Bool)

(assert (=> b!4860015 (= e!3038330 (last!420 (t!363520 (t!363520 l1!1299))))))

(assert (= (and d!1560053 c!826751) b!4860014))

(assert (= (and d!1560053 (not c!826751)) b!4860015))

(declare-fun m!5858222 () Bool)

(assert (=> d!1560053 m!5858222))

(assert (=> d!1560053 m!5858174))

(declare-fun m!5858224 () Bool)

(assert (=> b!4860015 m!5858224))

(assert (=> b!4859983 d!1560053))

(declare-fun d!1560057 () Bool)

(assert (=> d!1560057 (= (isEmpty!29865 l2!1268) ((_ is Nil!55776) l2!1268))))

(assert (=> b!4859986 d!1560057))

(declare-fun d!1560059 () Bool)

(declare-fun e!3038347 () Bool)

(assert (=> d!1560059 e!3038347))

(declare-fun res!2074832 () Bool)

(assert (=> d!1560059 (=> res!2074832 e!3038347)))

(declare-fun e!3038348 () Bool)

(assert (=> d!1560059 (= res!2074832 e!3038348)))

(declare-fun res!2074831 () Bool)

(assert (=> d!1560059 (=> (not res!2074831) (not e!3038348))))

(assert (=> d!1560059 (= res!2074831 (isEmpty!29865 l2!1268))))

(declare-fun lt!1992171 () Unit!145875)

(declare-fun choose!35568 (List!55900 List!55900) Unit!145875)

(assert (=> d!1560059 (= lt!1992171 (choose!35568 (t!363520 l1!1299) l2!1268))))

(assert (=> d!1560059 (not (isEmpty!29865 (++!12161 (t!363520 l1!1299) l2!1268)))))

(assert (=> d!1560059 (= (lemmaLastOfConcatIsLastOfRhs!44 (t!363520 l1!1299) l2!1268) lt!1992171)))

(declare-fun b!4860031 () Bool)

(assert (=> b!4860031 (= e!3038348 (= (last!420 (++!12161 (t!363520 l1!1299) l2!1268)) (last!420 (t!363520 l1!1299))))))

(declare-fun b!4860032 () Bool)

(declare-fun e!3038346 () Bool)

(assert (=> b!4860032 (= e!3038347 e!3038346)))

(declare-fun res!2074833 () Bool)

(assert (=> b!4860032 (=> (not res!2074833) (not e!3038346))))

(assert (=> b!4860032 (= res!2074833 (not (isEmpty!29865 l2!1268)))))

(declare-fun b!4860033 () Bool)

(assert (=> b!4860033 (= e!3038346 (= (last!420 (++!12161 (t!363520 l1!1299) l2!1268)) (last!420 l2!1268)))))

(assert (= (and d!1560059 res!2074831) b!4860031))

(assert (= (and d!1560059 (not res!2074832)) b!4860032))

(assert (= (and b!4860032 res!2074833) b!4860033))

(assert (=> d!1560059 m!5858186))

(declare-fun m!5858236 () Bool)

(assert (=> d!1560059 m!5858236))

(assert (=> d!1560059 m!5858178))

(assert (=> d!1560059 m!5858178))

(declare-fun m!5858238 () Bool)

(assert (=> d!1560059 m!5858238))

(assert (=> b!4860031 m!5858178))

(assert (=> b!4860031 m!5858178))

(declare-fun m!5858240 () Bool)

(assert (=> b!4860031 m!5858240))

(assert (=> b!4860031 m!5858184))

(assert (=> b!4860032 m!5858186))

(assert (=> b!4860033 m!5858178))

(assert (=> b!4860033 m!5858178))

(assert (=> b!4860033 m!5858240))

(assert (=> b!4860033 m!5858172))

(assert (=> b!4859986 d!1560059))

(assert (=> b!4859980 d!1560051))

(assert (=> b!4859980 d!1560047))

(declare-fun d!1560067 () Bool)

(assert (=> d!1560067 (= (isEmpty!29865 (t!363520 l1!1299)) ((_ is Nil!55776) (t!363520 l1!1299)))))

(assert (=> b!4859991 d!1560067))

(declare-fun d!1560069 () Bool)

(assert (=> d!1560069 (= (isEmpty!29865 lt!1992150) ((_ is Nil!55776) lt!1992150))))

(assert (=> b!4859985 d!1560069))

(declare-fun b!4860057 () Bool)

(declare-fun e!3038360 () List!55900)

(assert (=> b!4860057 (= e!3038360 (Cons!55776 (h!62224 (t!363520 l1!1299)) (++!12161 (t!363520 (t!363520 l1!1299)) l2!1268)))))

(declare-fun d!1560071 () Bool)

(declare-fun e!3038361 () Bool)

(assert (=> d!1560071 e!3038361))

(declare-fun res!2074845 () Bool)

(assert (=> d!1560071 (=> (not res!2074845) (not e!3038361))))

(declare-fun lt!1992178 () List!55900)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9951 (List!55900) (InoxSet B!2953))

(assert (=> d!1560071 (= res!2074845 (= (content!9951 lt!1992178) ((_ map or) (content!9951 (t!363520 l1!1299)) (content!9951 l2!1268))))))

(assert (=> d!1560071 (= lt!1992178 e!3038360)))

(declare-fun c!826758 () Bool)

(assert (=> d!1560071 (= c!826758 ((_ is Nil!55776) (t!363520 l1!1299)))))

(assert (=> d!1560071 (= (++!12161 (t!363520 l1!1299) l2!1268) lt!1992178)))

(declare-fun b!4860059 () Bool)

(assert (=> b!4860059 (= e!3038361 (or (not (= l2!1268 Nil!55776)) (= lt!1992178 (t!363520 l1!1299))))))

(declare-fun b!4860056 () Bool)

(assert (=> b!4860056 (= e!3038360 l2!1268)))

(declare-fun b!4860058 () Bool)

(declare-fun res!2074844 () Bool)

(assert (=> b!4860058 (=> (not res!2074844) (not e!3038361))))

(declare-fun size!36754 (List!55900) Int)

(assert (=> b!4860058 (= res!2074844 (= (size!36754 lt!1992178) (+ (size!36754 (t!363520 l1!1299)) (size!36754 l2!1268))))))

(assert (= (and d!1560071 c!826758) b!4860056))

(assert (= (and d!1560071 (not c!826758)) b!4860057))

(assert (= (and d!1560071 res!2074845) b!4860058))

(assert (= (and b!4860058 res!2074844) b!4860059))

(declare-fun m!5858260 () Bool)

(assert (=> b!4860057 m!5858260))

(declare-fun m!5858262 () Bool)

(assert (=> d!1560071 m!5858262))

(declare-fun m!5858264 () Bool)

(assert (=> d!1560071 m!5858264))

(declare-fun m!5858266 () Bool)

(assert (=> d!1560071 m!5858266))

(declare-fun m!5858268 () Bool)

(assert (=> b!4860058 m!5858268))

(declare-fun m!5858270 () Bool)

(assert (=> b!4860058 m!5858270))

(declare-fun m!5858272 () Bool)

(assert (=> b!4860058 m!5858272))

(assert (=> b!4859985 d!1560071))

(declare-fun d!1560079 () Bool)

(assert (=> d!1560079 (= (isEmpty!29865 lt!1992152) ((_ is Nil!55776) lt!1992152))))

(assert (=> start!507866 d!1560079))

(declare-fun b!4860067 () Bool)

(declare-fun e!3038365 () List!55900)

(assert (=> b!4860067 (= e!3038365 (Cons!55776 (h!62224 l1!1299) (++!12161 (t!363520 l1!1299) l2!1268)))))

(declare-fun d!1560081 () Bool)

(declare-fun e!3038366 () Bool)

(assert (=> d!1560081 e!3038366))

(declare-fun res!2074849 () Bool)

(assert (=> d!1560081 (=> (not res!2074849) (not e!3038366))))

(declare-fun lt!1992181 () List!55900)

(assert (=> d!1560081 (= res!2074849 (= (content!9951 lt!1992181) ((_ map or) (content!9951 l1!1299) (content!9951 l2!1268))))))

(assert (=> d!1560081 (= lt!1992181 e!3038365)))

(declare-fun c!826761 () Bool)

(assert (=> d!1560081 (= c!826761 ((_ is Nil!55776) l1!1299))))

(assert (=> d!1560081 (= (++!12161 l1!1299 l2!1268) lt!1992181)))

(declare-fun b!4860069 () Bool)

(assert (=> b!4860069 (= e!3038366 (or (not (= l2!1268 Nil!55776)) (= lt!1992181 l1!1299)))))

(declare-fun b!4860066 () Bool)

(assert (=> b!4860066 (= e!3038365 l2!1268)))

(declare-fun b!4860068 () Bool)

(declare-fun res!2074848 () Bool)

(assert (=> b!4860068 (=> (not res!2074848) (not e!3038366))))

(assert (=> b!4860068 (= res!2074848 (= (size!36754 lt!1992181) (+ (size!36754 l1!1299) (size!36754 l2!1268))))))

(assert (= (and d!1560081 c!826761) b!4860066))

(assert (= (and d!1560081 (not c!826761)) b!4860067))

(assert (= (and d!1560081 res!2074849) b!4860068))

(assert (= (and b!4860068 res!2074848) b!4860069))

(assert (=> b!4860067 m!5858178))

(declare-fun m!5858282 () Bool)

(assert (=> d!1560081 m!5858282))

(declare-fun m!5858284 () Bool)

(assert (=> d!1560081 m!5858284))

(assert (=> d!1560081 m!5858266))

(declare-fun m!5858286 () Bool)

(assert (=> b!4860068 m!5858286))

(declare-fun m!5858288 () Bool)

(assert (=> b!4860068 m!5858288))

(assert (=> b!4860068 m!5858272))

(assert (=> start!507866 d!1560081))

(declare-fun b!4860080 () Bool)

(declare-fun e!3038373 () Bool)

(declare-fun tp!1366996 () Bool)

(assert (=> b!4860080 (= e!3038373 (and tp_is_empty!35571 tp!1366996))))

(assert (=> b!4859982 (= tp!1366988 e!3038373)))

(assert (= (and b!4859982 ((_ is Cons!55776) (t!363520 l2!1268))) b!4860080))

(declare-fun b!4860081 () Bool)

(declare-fun e!3038374 () Bool)

(declare-fun tp!1366997 () Bool)

(assert (=> b!4860081 (= e!3038374 (and tp_is_empty!35571 tp!1366997))))

(assert (=> b!4859990 (= tp!1366989 e!3038374)))

(assert (= (and b!4859990 ((_ is Cons!55776) (t!363520 l1!1299))) b!4860081))

(check-sat (not b!4860003) (not b!4860011) (not d!1560043) (not b!4860067) (not b!4860057) (not b!4860031) (not d!1560081) (not b!4860068) tp_is_empty!35571 (not b!4860081) (not b!4860080) (not d!1560047) (not b!4860013) (not b!4860058) (not b!4860007) (not d!1560051) (not b!4860033) (not d!1560059) (not b!4860015) (not d!1560037) (not d!1560053) (not b!4860032) (not d!1560071))
(check-sat)
