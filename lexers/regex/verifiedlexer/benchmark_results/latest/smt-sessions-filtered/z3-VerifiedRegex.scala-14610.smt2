; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756228 () Bool)

(assert start!756228)

(declare-fun res!3175347 () Bool)

(declare-fun e!4730069 () Bool)

(assert (=> start!756228 (=> (not res!3175347) (not e!4730069))))

(declare-datatypes ((B!4437 0))(
  ( (B!4438 (val!32618 Int)) )
))
(declare-datatypes ((List!75134 0))(
  ( (Nil!75008) (Cons!75008 (h!81456 B!4437) (t!390890 List!75134)) )
))
(declare-fun l1!1017 () List!75134)

(get-info :version)

(assert (=> start!756228 (= res!3175347 ((_ is Cons!75008) l1!1017))))

(assert (=> start!756228 e!4730069))

(declare-fun e!4730068 () Bool)

(assert (=> start!756228 e!4730068))

(declare-fun e!4730067 () Bool)

(assert (=> start!756228 e!4730067))

(declare-fun b!8028811 () Bool)

(declare-fun l2!986 () List!75134)

(declare-fun isPrefix!6883 (List!75134 List!75134) Bool)

(declare-fun ++!18610 (List!75134 List!75134) List!75134)

(assert (=> b!8028811 (= e!4730069 (not (isPrefix!6883 l1!1017 (++!18610 l1!1017 l2!986))))))

(assert (=> b!8028811 (isPrefix!6883 (t!390890 l1!1017) (++!18610 (t!390890 l1!1017) l2!986))))

(declare-datatypes ((Unit!171000 0))(
  ( (Unit!171001) )
))
(declare-fun lt!2721688 () Unit!171000)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!4002 (List!75134 List!75134) Unit!171000)

(assert (=> b!8028811 (= lt!2721688 (lemmaConcatTwoListThenFirstIsPrefix!4002 (t!390890 l1!1017) l2!986))))

(declare-fun b!8028812 () Bool)

(declare-fun tp_is_empty!54341 () Bool)

(declare-fun tp!2402598 () Bool)

(assert (=> b!8028812 (= e!4730068 (and tp_is_empty!54341 tp!2402598))))

(declare-fun b!8028813 () Bool)

(declare-fun tp!2402599 () Bool)

(assert (=> b!8028813 (= e!4730067 (and tp_is_empty!54341 tp!2402599))))

(assert (= (and start!756228 res!3175347) b!8028811))

(assert (= (and start!756228 ((_ is Cons!75008) l1!1017)) b!8028812))

(assert (= (and start!756228 ((_ is Cons!75008) l2!986)) b!8028813))

(declare-fun m!8390944 () Bool)

(assert (=> b!8028811 m!8390944))

(declare-fun m!8390946 () Bool)

(assert (=> b!8028811 m!8390946))

(declare-fun m!8390948 () Bool)

(assert (=> b!8028811 m!8390948))

(declare-fun m!8390950 () Bool)

(assert (=> b!8028811 m!8390950))

(assert (=> b!8028811 m!8390944))

(assert (=> b!8028811 m!8390950))

(declare-fun m!8390952 () Bool)

(assert (=> b!8028811 m!8390952))

(check-sat (not b!8028811) (not b!8028812) (not b!8028813) tp_is_empty!54341)
(check-sat)
(get-model)

(declare-fun d!2394169 () Bool)

(declare-fun e!4730075 () Bool)

(assert (=> d!2394169 e!4730075))

(declare-fun res!3175352 () Bool)

(assert (=> d!2394169 (=> (not res!3175352) (not e!4730075))))

(declare-fun lt!2721693 () List!75134)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16016 (List!75134) (InoxSet B!4437))

(assert (=> d!2394169 (= res!3175352 (= (content!16016 lt!2721693) ((_ map or) (content!16016 l1!1017) (content!16016 l2!986))))))

(declare-fun e!4730074 () List!75134)

(assert (=> d!2394169 (= lt!2721693 e!4730074)))

(declare-fun c!1472989 () Bool)

(assert (=> d!2394169 (= c!1472989 ((_ is Nil!75008) l1!1017))))

(assert (=> d!2394169 (= (++!18610 l1!1017 l2!986) lt!2721693)))

(declare-fun b!8028824 () Bool)

(assert (=> b!8028824 (= e!4730074 l2!986)))

(declare-fun b!8028826 () Bool)

(declare-fun res!3175353 () Bool)

(assert (=> b!8028826 (=> (not res!3175353) (not e!4730075))))

(declare-fun size!43742 (List!75134) Int)

(assert (=> b!8028826 (= res!3175353 (= (size!43742 lt!2721693) (+ (size!43742 l1!1017) (size!43742 l2!986))))))

(declare-fun b!8028827 () Bool)

(assert (=> b!8028827 (= e!4730075 (or (not (= l2!986 Nil!75008)) (= lt!2721693 l1!1017)))))

(declare-fun b!8028825 () Bool)

(assert (=> b!8028825 (= e!4730074 (Cons!75008 (h!81456 l1!1017) (++!18610 (t!390890 l1!1017) l2!986)))))

(assert (= (and d!2394169 c!1472989) b!8028824))

(assert (= (and d!2394169 (not c!1472989)) b!8028825))

(assert (= (and d!2394169 res!3175352) b!8028826))

(assert (= (and b!8028826 res!3175353) b!8028827))

(declare-fun m!8390954 () Bool)

(assert (=> d!2394169 m!8390954))

(declare-fun m!8390956 () Bool)

(assert (=> d!2394169 m!8390956))

(declare-fun m!8390958 () Bool)

(assert (=> d!2394169 m!8390958))

(declare-fun m!8390960 () Bool)

(assert (=> b!8028826 m!8390960))

(declare-fun m!8390962 () Bool)

(assert (=> b!8028826 m!8390962))

(declare-fun m!8390964 () Bool)

(assert (=> b!8028826 m!8390964))

(assert (=> b!8028825 m!8390950))

(assert (=> b!8028811 d!2394169))

(declare-fun b!8028846 () Bool)

(declare-fun e!4730088 () Bool)

(declare-fun e!4730090 () Bool)

(assert (=> b!8028846 (= e!4730088 e!4730090)))

(declare-fun res!3175370 () Bool)

(assert (=> b!8028846 (=> (not res!3175370) (not e!4730090))))

(assert (=> b!8028846 (= res!3175370 (not ((_ is Nil!75008) (++!18610 l1!1017 l2!986))))))

(declare-fun b!8028847 () Bool)

(declare-fun res!3175371 () Bool)

(assert (=> b!8028847 (=> (not res!3175371) (not e!4730090))))

(declare-fun head!16495 (List!75134) B!4437)

(assert (=> b!8028847 (= res!3175371 (= (head!16495 l1!1017) (head!16495 (++!18610 l1!1017 l2!986))))))

(declare-fun b!8028849 () Bool)

(declare-fun e!4730089 () Bool)

(assert (=> b!8028849 (= e!4730089 (>= (size!43742 (++!18610 l1!1017 l2!986)) (size!43742 l1!1017)))))

(declare-fun b!8028848 () Bool)

(declare-fun tail!16040 (List!75134) List!75134)

(assert (=> b!8028848 (= e!4730090 (isPrefix!6883 (tail!16040 l1!1017) (tail!16040 (++!18610 l1!1017 l2!986))))))

(declare-fun d!2394173 () Bool)

(assert (=> d!2394173 e!4730089))

(declare-fun res!3175369 () Bool)

(assert (=> d!2394173 (=> res!3175369 e!4730089)))

(declare-fun lt!2721697 () Bool)

(assert (=> d!2394173 (= res!3175369 (not lt!2721697))))

(assert (=> d!2394173 (= lt!2721697 e!4730088)))

(declare-fun res!3175368 () Bool)

(assert (=> d!2394173 (=> res!3175368 e!4730088)))

(assert (=> d!2394173 (= res!3175368 ((_ is Nil!75008) l1!1017))))

(assert (=> d!2394173 (= (isPrefix!6883 l1!1017 (++!18610 l1!1017 l2!986)) lt!2721697)))

(assert (= (and d!2394173 (not res!3175368)) b!8028846))

(assert (= (and b!8028846 res!3175370) b!8028847))

(assert (= (and b!8028847 res!3175371) b!8028848))

(assert (= (and d!2394173 (not res!3175369)) b!8028849))

(declare-fun m!8390978 () Bool)

(assert (=> b!8028847 m!8390978))

(assert (=> b!8028847 m!8390944))

(declare-fun m!8390980 () Bool)

(assert (=> b!8028847 m!8390980))

(assert (=> b!8028849 m!8390944))

(declare-fun m!8390982 () Bool)

(assert (=> b!8028849 m!8390982))

(assert (=> b!8028849 m!8390962))

(declare-fun m!8390984 () Bool)

(assert (=> b!8028848 m!8390984))

(assert (=> b!8028848 m!8390944))

(declare-fun m!8390986 () Bool)

(assert (=> b!8028848 m!8390986))

(assert (=> b!8028848 m!8390984))

(assert (=> b!8028848 m!8390986))

(declare-fun m!8390988 () Bool)

(assert (=> b!8028848 m!8390988))

(assert (=> b!8028811 d!2394173))

(declare-fun b!8028858 () Bool)

(declare-fun e!4730097 () Bool)

(declare-fun e!4730099 () Bool)

(assert (=> b!8028858 (= e!4730097 e!4730099)))

(declare-fun res!3175382 () Bool)

(assert (=> b!8028858 (=> (not res!3175382) (not e!4730099))))

(assert (=> b!8028858 (= res!3175382 (not ((_ is Nil!75008) (++!18610 (t!390890 l1!1017) l2!986))))))

(declare-fun b!8028859 () Bool)

(declare-fun res!3175383 () Bool)

(assert (=> b!8028859 (=> (not res!3175383) (not e!4730099))))

(assert (=> b!8028859 (= res!3175383 (= (head!16495 (t!390890 l1!1017)) (head!16495 (++!18610 (t!390890 l1!1017) l2!986))))))

(declare-fun b!8028861 () Bool)

(declare-fun e!4730098 () Bool)

(assert (=> b!8028861 (= e!4730098 (>= (size!43742 (++!18610 (t!390890 l1!1017) l2!986)) (size!43742 (t!390890 l1!1017))))))

(declare-fun b!8028860 () Bool)

(assert (=> b!8028860 (= e!4730099 (isPrefix!6883 (tail!16040 (t!390890 l1!1017)) (tail!16040 (++!18610 (t!390890 l1!1017) l2!986))))))

(declare-fun d!2394177 () Bool)

(assert (=> d!2394177 e!4730098))

(declare-fun res!3175381 () Bool)

(assert (=> d!2394177 (=> res!3175381 e!4730098)))

(declare-fun lt!2721700 () Bool)

(assert (=> d!2394177 (= res!3175381 (not lt!2721700))))

(assert (=> d!2394177 (= lt!2721700 e!4730097)))

(declare-fun res!3175380 () Bool)

(assert (=> d!2394177 (=> res!3175380 e!4730097)))

(assert (=> d!2394177 (= res!3175380 ((_ is Nil!75008) (t!390890 l1!1017)))))

(assert (=> d!2394177 (= (isPrefix!6883 (t!390890 l1!1017) (++!18610 (t!390890 l1!1017) l2!986)) lt!2721700)))

(assert (= (and d!2394177 (not res!3175380)) b!8028858))

(assert (= (and b!8028858 res!3175382) b!8028859))

(assert (= (and b!8028859 res!3175383) b!8028860))

(assert (= (and d!2394177 (not res!3175381)) b!8028861))

(declare-fun m!8390990 () Bool)

(assert (=> b!8028859 m!8390990))

(assert (=> b!8028859 m!8390950))

(declare-fun m!8390992 () Bool)

(assert (=> b!8028859 m!8390992))

(assert (=> b!8028861 m!8390950))

(declare-fun m!8390994 () Bool)

(assert (=> b!8028861 m!8390994))

(declare-fun m!8390996 () Bool)

(assert (=> b!8028861 m!8390996))

(declare-fun m!8390998 () Bool)

(assert (=> b!8028860 m!8390998))

(assert (=> b!8028860 m!8390950))

(declare-fun m!8391000 () Bool)

(assert (=> b!8028860 m!8391000))

(assert (=> b!8028860 m!8390998))

(assert (=> b!8028860 m!8391000))

(declare-fun m!8391002 () Bool)

(assert (=> b!8028860 m!8391002))

(assert (=> b!8028811 d!2394177))

(declare-fun d!2394179 () Bool)

(declare-fun e!4730101 () Bool)

(assert (=> d!2394179 e!4730101))

(declare-fun res!3175384 () Bool)

(assert (=> d!2394179 (=> (not res!3175384) (not e!4730101))))

(declare-fun lt!2721701 () List!75134)

(assert (=> d!2394179 (= res!3175384 (= (content!16016 lt!2721701) ((_ map or) (content!16016 (t!390890 l1!1017)) (content!16016 l2!986))))))

(declare-fun e!4730100 () List!75134)

(assert (=> d!2394179 (= lt!2721701 e!4730100)))

(declare-fun c!1472993 () Bool)

(assert (=> d!2394179 (= c!1472993 ((_ is Nil!75008) (t!390890 l1!1017)))))

(assert (=> d!2394179 (= (++!18610 (t!390890 l1!1017) l2!986) lt!2721701)))

(declare-fun b!8028862 () Bool)

(assert (=> b!8028862 (= e!4730100 l2!986)))

(declare-fun b!8028864 () Bool)

(declare-fun res!3175385 () Bool)

(assert (=> b!8028864 (=> (not res!3175385) (not e!4730101))))

(assert (=> b!8028864 (= res!3175385 (= (size!43742 lt!2721701) (+ (size!43742 (t!390890 l1!1017)) (size!43742 l2!986))))))

(declare-fun b!8028865 () Bool)

(assert (=> b!8028865 (= e!4730101 (or (not (= l2!986 Nil!75008)) (= lt!2721701 (t!390890 l1!1017))))))

(declare-fun b!8028863 () Bool)

(assert (=> b!8028863 (= e!4730100 (Cons!75008 (h!81456 (t!390890 l1!1017)) (++!18610 (t!390890 (t!390890 l1!1017)) l2!986)))))

(assert (= (and d!2394179 c!1472993) b!8028862))

(assert (= (and d!2394179 (not c!1472993)) b!8028863))

(assert (= (and d!2394179 res!3175384) b!8028864))

(assert (= (and b!8028864 res!3175385) b!8028865))

(declare-fun m!8391004 () Bool)

(assert (=> d!2394179 m!8391004))

(declare-fun m!8391006 () Bool)

(assert (=> d!2394179 m!8391006))

(assert (=> d!2394179 m!8390958))

(declare-fun m!8391008 () Bool)

(assert (=> b!8028864 m!8391008))

(assert (=> b!8028864 m!8390996))

(assert (=> b!8028864 m!8390964))

(declare-fun m!8391010 () Bool)

(assert (=> b!8028863 m!8391010))

(assert (=> b!8028811 d!2394179))

(declare-fun d!2394181 () Bool)

(assert (=> d!2394181 (isPrefix!6883 (t!390890 l1!1017) (++!18610 (t!390890 l1!1017) l2!986))))

(declare-fun lt!2721707 () Unit!171000)

(declare-fun choose!60475 (List!75134 List!75134) Unit!171000)

(assert (=> d!2394181 (= lt!2721707 (choose!60475 (t!390890 l1!1017) l2!986))))

(assert (=> d!2394181 (= (lemmaConcatTwoListThenFirstIsPrefix!4002 (t!390890 l1!1017) l2!986) lt!2721707)))

(declare-fun bs!1971393 () Bool)

(assert (= bs!1971393 d!2394181))

(assert (=> bs!1971393 m!8390950))

(assert (=> bs!1971393 m!8390950))

(assert (=> bs!1971393 m!8390952))

(declare-fun m!8391042 () Bool)

(assert (=> bs!1971393 m!8391042))

(assert (=> b!8028811 d!2394181))

(declare-fun b!8028882 () Bool)

(declare-fun e!4730112 () Bool)

(declare-fun tp!2402602 () Bool)

(assert (=> b!8028882 (= e!4730112 (and tp_is_empty!54341 tp!2402602))))

(assert (=> b!8028812 (= tp!2402598 e!4730112)))

(assert (= (and b!8028812 ((_ is Cons!75008) (t!390890 l1!1017))) b!8028882))

(declare-fun b!8028883 () Bool)

(declare-fun e!4730113 () Bool)

(declare-fun tp!2402603 () Bool)

(assert (=> b!8028883 (= e!4730113 (and tp_is_empty!54341 tp!2402603))))

(assert (=> b!8028813 (= tp!2402599 e!4730113)))

(assert (= (and b!8028813 ((_ is Cons!75008) (t!390890 l2!986))) b!8028883))

(check-sat (not b!8028847) (not d!2394181) (not b!8028848) (not b!8028882) tp_is_empty!54341 (not b!8028864) (not d!2394169) (not b!8028849) (not b!8028861) (not b!8028859) (not d!2394179) (not b!8028825) (not b!8028863) (not b!8028826) (not b!8028860) (not b!8028883))
(check-sat)
(get-model)

(declare-fun d!2394189 () Bool)

(declare-fun lt!2721713 () Int)

(assert (=> d!2394189 (>= lt!2721713 0)))

(declare-fun e!4730120 () Int)

(assert (=> d!2394189 (= lt!2721713 e!4730120)))

(declare-fun c!1472997 () Bool)

(assert (=> d!2394189 (= c!1472997 ((_ is Nil!75008) lt!2721701))))

(assert (=> d!2394189 (= (size!43742 lt!2721701) lt!2721713)))

(declare-fun b!8028894 () Bool)

(assert (=> b!8028894 (= e!4730120 0)))

(declare-fun b!8028895 () Bool)

(assert (=> b!8028895 (= e!4730120 (+ 1 (size!43742 (t!390890 lt!2721701))))))

(assert (= (and d!2394189 c!1472997) b!8028894))

(assert (= (and d!2394189 (not c!1472997)) b!8028895))

(declare-fun m!8391050 () Bool)

(assert (=> b!8028895 m!8391050))

(assert (=> b!8028864 d!2394189))

(declare-fun d!2394191 () Bool)

(declare-fun lt!2721714 () Int)

(assert (=> d!2394191 (>= lt!2721714 0)))

(declare-fun e!4730121 () Int)

(assert (=> d!2394191 (= lt!2721714 e!4730121)))

(declare-fun c!1472998 () Bool)

(assert (=> d!2394191 (= c!1472998 ((_ is Nil!75008) (t!390890 l1!1017)))))

(assert (=> d!2394191 (= (size!43742 (t!390890 l1!1017)) lt!2721714)))

(declare-fun b!8028896 () Bool)

(assert (=> b!8028896 (= e!4730121 0)))

(declare-fun b!8028897 () Bool)

(assert (=> b!8028897 (= e!4730121 (+ 1 (size!43742 (t!390890 (t!390890 l1!1017)))))))

(assert (= (and d!2394191 c!1472998) b!8028896))

(assert (= (and d!2394191 (not c!1472998)) b!8028897))

(declare-fun m!8391052 () Bool)

(assert (=> b!8028897 m!8391052))

(assert (=> b!8028864 d!2394191))

(declare-fun d!2394193 () Bool)

(declare-fun lt!2721715 () Int)

(assert (=> d!2394193 (>= lt!2721715 0)))

(declare-fun e!4730122 () Int)

(assert (=> d!2394193 (= lt!2721715 e!4730122)))

(declare-fun c!1472999 () Bool)

(assert (=> d!2394193 (= c!1472999 ((_ is Nil!75008) l2!986))))

(assert (=> d!2394193 (= (size!43742 l2!986) lt!2721715)))

(declare-fun b!8028898 () Bool)

(assert (=> b!8028898 (= e!4730122 0)))

(declare-fun b!8028899 () Bool)

(assert (=> b!8028899 (= e!4730122 (+ 1 (size!43742 (t!390890 l2!986))))))

(assert (= (and d!2394193 c!1472999) b!8028898))

(assert (= (and d!2394193 (not c!1472999)) b!8028899))

(declare-fun m!8391054 () Bool)

(assert (=> b!8028899 m!8391054))

(assert (=> b!8028864 d!2394193))

(assert (=> d!2394181 d!2394177))

(assert (=> d!2394181 d!2394179))

(declare-fun d!2394195 () Bool)

(assert (=> d!2394195 (isPrefix!6883 (t!390890 l1!1017) (++!18610 (t!390890 l1!1017) l2!986))))

(assert (=> d!2394195 true))

(declare-fun _$46!2190 () Unit!171000)

(assert (=> d!2394195 (= (choose!60475 (t!390890 l1!1017) l2!986) _$46!2190)))

(declare-fun bs!1971395 () Bool)

(assert (= bs!1971395 d!2394195))

(assert (=> bs!1971395 m!8390950))

(assert (=> bs!1971395 m!8390950))

(assert (=> bs!1971395 m!8390952))

(assert (=> d!2394181 d!2394195))

(declare-fun d!2394197 () Bool)

(declare-fun c!1473002 () Bool)

(assert (=> d!2394197 (= c!1473002 ((_ is Nil!75008) lt!2721701))))

(declare-fun e!4730125 () (InoxSet B!4437))

(assert (=> d!2394197 (= (content!16016 lt!2721701) e!4730125)))

(declare-fun b!8028904 () Bool)

(assert (=> b!8028904 (= e!4730125 ((as const (Array B!4437 Bool)) false))))

(declare-fun b!8028905 () Bool)

(assert (=> b!8028905 (= e!4730125 ((_ map or) (store ((as const (Array B!4437 Bool)) false) (h!81456 lt!2721701) true) (content!16016 (t!390890 lt!2721701))))))

(assert (= (and d!2394197 c!1473002) b!8028904))

(assert (= (and d!2394197 (not c!1473002)) b!8028905))

(declare-fun m!8391056 () Bool)

(assert (=> b!8028905 m!8391056))

(declare-fun m!8391058 () Bool)

(assert (=> b!8028905 m!8391058))

(assert (=> d!2394179 d!2394197))

(declare-fun d!2394199 () Bool)

(declare-fun c!1473003 () Bool)

(assert (=> d!2394199 (= c!1473003 ((_ is Nil!75008) (t!390890 l1!1017)))))

(declare-fun e!4730126 () (InoxSet B!4437))

(assert (=> d!2394199 (= (content!16016 (t!390890 l1!1017)) e!4730126)))

(declare-fun b!8028906 () Bool)

(assert (=> b!8028906 (= e!4730126 ((as const (Array B!4437 Bool)) false))))

(declare-fun b!8028907 () Bool)

(assert (=> b!8028907 (= e!4730126 ((_ map or) (store ((as const (Array B!4437 Bool)) false) (h!81456 (t!390890 l1!1017)) true) (content!16016 (t!390890 (t!390890 l1!1017)))))))

(assert (= (and d!2394199 c!1473003) b!8028906))

(assert (= (and d!2394199 (not c!1473003)) b!8028907))

(declare-fun m!8391060 () Bool)

(assert (=> b!8028907 m!8391060))

(declare-fun m!8391062 () Bool)

(assert (=> b!8028907 m!8391062))

(assert (=> d!2394179 d!2394199))

(declare-fun d!2394201 () Bool)

(declare-fun c!1473004 () Bool)

(assert (=> d!2394201 (= c!1473004 ((_ is Nil!75008) l2!986))))

(declare-fun e!4730127 () (InoxSet B!4437))

(assert (=> d!2394201 (= (content!16016 l2!986) e!4730127)))

(declare-fun b!8028908 () Bool)

(assert (=> b!8028908 (= e!4730127 ((as const (Array B!4437 Bool)) false))))

(declare-fun b!8028909 () Bool)

(assert (=> b!8028909 (= e!4730127 ((_ map or) (store ((as const (Array B!4437 Bool)) false) (h!81456 l2!986) true) (content!16016 (t!390890 l2!986))))))

(assert (= (and d!2394201 c!1473004) b!8028908))

(assert (= (and d!2394201 (not c!1473004)) b!8028909))

(declare-fun m!8391064 () Bool)

(assert (=> b!8028909 m!8391064))

(declare-fun m!8391066 () Bool)

(assert (=> b!8028909 m!8391066))

(assert (=> d!2394179 d!2394201))

(declare-fun d!2394203 () Bool)

(assert (=> d!2394203 (= (head!16495 l1!1017) (h!81456 l1!1017))))

(assert (=> b!8028847 d!2394203))

(declare-fun d!2394205 () Bool)

(assert (=> d!2394205 (= (head!16495 (++!18610 l1!1017 l2!986)) (h!81456 (++!18610 l1!1017 l2!986)))))

(assert (=> b!8028847 d!2394205))

(declare-fun d!2394207 () Bool)

(assert (=> d!2394207 (= (head!16495 (t!390890 l1!1017)) (h!81456 (t!390890 l1!1017)))))

(assert (=> b!8028859 d!2394207))

(declare-fun d!2394209 () Bool)

(assert (=> d!2394209 (= (head!16495 (++!18610 (t!390890 l1!1017) l2!986)) (h!81456 (++!18610 (t!390890 l1!1017) l2!986)))))

(assert (=> b!8028859 d!2394209))

(declare-fun b!8028910 () Bool)

(declare-fun e!4730128 () Bool)

(declare-fun e!4730130 () Bool)

(assert (=> b!8028910 (= e!4730128 e!4730130)))

(declare-fun res!3175398 () Bool)

(assert (=> b!8028910 (=> (not res!3175398) (not e!4730130))))

(assert (=> b!8028910 (= res!3175398 (not ((_ is Nil!75008) (tail!16040 (++!18610 l1!1017 l2!986)))))))

(declare-fun b!8028911 () Bool)

(declare-fun res!3175399 () Bool)

(assert (=> b!8028911 (=> (not res!3175399) (not e!4730130))))

(assert (=> b!8028911 (= res!3175399 (= (head!16495 (tail!16040 l1!1017)) (head!16495 (tail!16040 (++!18610 l1!1017 l2!986)))))))

(declare-fun b!8028913 () Bool)

(declare-fun e!4730129 () Bool)

(assert (=> b!8028913 (= e!4730129 (>= (size!43742 (tail!16040 (++!18610 l1!1017 l2!986))) (size!43742 (tail!16040 l1!1017))))))

(declare-fun b!8028912 () Bool)

(assert (=> b!8028912 (= e!4730130 (isPrefix!6883 (tail!16040 (tail!16040 l1!1017)) (tail!16040 (tail!16040 (++!18610 l1!1017 l2!986)))))))

(declare-fun d!2394211 () Bool)

(assert (=> d!2394211 e!4730129))

(declare-fun res!3175397 () Bool)

(assert (=> d!2394211 (=> res!3175397 e!4730129)))

(declare-fun lt!2721716 () Bool)

(assert (=> d!2394211 (= res!3175397 (not lt!2721716))))

(assert (=> d!2394211 (= lt!2721716 e!4730128)))

(declare-fun res!3175396 () Bool)

(assert (=> d!2394211 (=> res!3175396 e!4730128)))

(assert (=> d!2394211 (= res!3175396 ((_ is Nil!75008) (tail!16040 l1!1017)))))

(assert (=> d!2394211 (= (isPrefix!6883 (tail!16040 l1!1017) (tail!16040 (++!18610 l1!1017 l2!986))) lt!2721716)))

(assert (= (and d!2394211 (not res!3175396)) b!8028910))

(assert (= (and b!8028910 res!3175398) b!8028911))

(assert (= (and b!8028911 res!3175399) b!8028912))

(assert (= (and d!2394211 (not res!3175397)) b!8028913))

(assert (=> b!8028911 m!8390984))

(declare-fun m!8391068 () Bool)

(assert (=> b!8028911 m!8391068))

(assert (=> b!8028911 m!8390986))

(declare-fun m!8391070 () Bool)

(assert (=> b!8028911 m!8391070))

(assert (=> b!8028913 m!8390986))

(declare-fun m!8391072 () Bool)

(assert (=> b!8028913 m!8391072))

(assert (=> b!8028913 m!8390984))

(declare-fun m!8391074 () Bool)

(assert (=> b!8028913 m!8391074))

(assert (=> b!8028912 m!8390984))

(declare-fun m!8391076 () Bool)

(assert (=> b!8028912 m!8391076))

(assert (=> b!8028912 m!8390986))

(declare-fun m!8391078 () Bool)

(assert (=> b!8028912 m!8391078))

(assert (=> b!8028912 m!8391076))

(assert (=> b!8028912 m!8391078))

(declare-fun m!8391080 () Bool)

(assert (=> b!8028912 m!8391080))

(assert (=> b!8028848 d!2394211))

(declare-fun d!2394213 () Bool)

(assert (=> d!2394213 (= (tail!16040 l1!1017) (t!390890 l1!1017))))

(assert (=> b!8028848 d!2394213))

(declare-fun d!2394215 () Bool)

(assert (=> d!2394215 (= (tail!16040 (++!18610 l1!1017 l2!986)) (t!390890 (++!18610 l1!1017 l2!986)))))

(assert (=> b!8028848 d!2394215))

(declare-fun b!8028914 () Bool)

(declare-fun e!4730131 () Bool)

(declare-fun e!4730133 () Bool)

(assert (=> b!8028914 (= e!4730131 e!4730133)))

(declare-fun res!3175402 () Bool)

(assert (=> b!8028914 (=> (not res!3175402) (not e!4730133))))

(assert (=> b!8028914 (= res!3175402 (not ((_ is Nil!75008) (tail!16040 (++!18610 (t!390890 l1!1017) l2!986)))))))

(declare-fun b!8028915 () Bool)

(declare-fun res!3175403 () Bool)

(assert (=> b!8028915 (=> (not res!3175403) (not e!4730133))))

(assert (=> b!8028915 (= res!3175403 (= (head!16495 (tail!16040 (t!390890 l1!1017))) (head!16495 (tail!16040 (++!18610 (t!390890 l1!1017) l2!986)))))))

(declare-fun b!8028917 () Bool)

(declare-fun e!4730132 () Bool)

(assert (=> b!8028917 (= e!4730132 (>= (size!43742 (tail!16040 (++!18610 (t!390890 l1!1017) l2!986))) (size!43742 (tail!16040 (t!390890 l1!1017)))))))

(declare-fun b!8028916 () Bool)

(assert (=> b!8028916 (= e!4730133 (isPrefix!6883 (tail!16040 (tail!16040 (t!390890 l1!1017))) (tail!16040 (tail!16040 (++!18610 (t!390890 l1!1017) l2!986)))))))

(declare-fun d!2394217 () Bool)

(assert (=> d!2394217 e!4730132))

(declare-fun res!3175401 () Bool)

(assert (=> d!2394217 (=> res!3175401 e!4730132)))

(declare-fun lt!2721717 () Bool)

(assert (=> d!2394217 (= res!3175401 (not lt!2721717))))

(assert (=> d!2394217 (= lt!2721717 e!4730131)))

(declare-fun res!3175400 () Bool)

(assert (=> d!2394217 (=> res!3175400 e!4730131)))

(assert (=> d!2394217 (= res!3175400 ((_ is Nil!75008) (tail!16040 (t!390890 l1!1017))))))

(assert (=> d!2394217 (= (isPrefix!6883 (tail!16040 (t!390890 l1!1017)) (tail!16040 (++!18610 (t!390890 l1!1017) l2!986))) lt!2721717)))

(assert (= (and d!2394217 (not res!3175400)) b!8028914))

(assert (= (and b!8028914 res!3175402) b!8028915))

(assert (= (and b!8028915 res!3175403) b!8028916))

(assert (= (and d!2394217 (not res!3175401)) b!8028917))

(assert (=> b!8028915 m!8390998))

(declare-fun m!8391082 () Bool)

(assert (=> b!8028915 m!8391082))

(assert (=> b!8028915 m!8391000))

(declare-fun m!8391084 () Bool)

(assert (=> b!8028915 m!8391084))

(assert (=> b!8028917 m!8391000))

(declare-fun m!8391086 () Bool)

(assert (=> b!8028917 m!8391086))

(assert (=> b!8028917 m!8390998))

(declare-fun m!8391088 () Bool)

(assert (=> b!8028917 m!8391088))

(assert (=> b!8028916 m!8390998))

(declare-fun m!8391090 () Bool)

(assert (=> b!8028916 m!8391090))

(assert (=> b!8028916 m!8391000))

(declare-fun m!8391092 () Bool)

(assert (=> b!8028916 m!8391092))

(assert (=> b!8028916 m!8391090))

(assert (=> b!8028916 m!8391092))

(declare-fun m!8391094 () Bool)

(assert (=> b!8028916 m!8391094))

(assert (=> b!8028860 d!2394217))

(declare-fun d!2394219 () Bool)

(assert (=> d!2394219 (= (tail!16040 (t!390890 l1!1017)) (t!390890 (t!390890 l1!1017)))))

(assert (=> b!8028860 d!2394219))

(declare-fun d!2394221 () Bool)

(assert (=> d!2394221 (= (tail!16040 (++!18610 (t!390890 l1!1017) l2!986)) (t!390890 (++!18610 (t!390890 l1!1017) l2!986)))))

(assert (=> b!8028860 d!2394221))

(assert (=> b!8028825 d!2394179))

(declare-fun d!2394223 () Bool)

(declare-fun lt!2721718 () Int)

(assert (=> d!2394223 (>= lt!2721718 0)))

(declare-fun e!4730134 () Int)

(assert (=> d!2394223 (= lt!2721718 e!4730134)))

(declare-fun c!1473005 () Bool)

(assert (=> d!2394223 (= c!1473005 ((_ is Nil!75008) (++!18610 l1!1017 l2!986)))))

(assert (=> d!2394223 (= (size!43742 (++!18610 l1!1017 l2!986)) lt!2721718)))

(declare-fun b!8028918 () Bool)

(assert (=> b!8028918 (= e!4730134 0)))

(declare-fun b!8028919 () Bool)

(assert (=> b!8028919 (= e!4730134 (+ 1 (size!43742 (t!390890 (++!18610 l1!1017 l2!986)))))))

(assert (= (and d!2394223 c!1473005) b!8028918))

(assert (= (and d!2394223 (not c!1473005)) b!8028919))

(declare-fun m!8391096 () Bool)

(assert (=> b!8028919 m!8391096))

(assert (=> b!8028849 d!2394223))

(declare-fun d!2394225 () Bool)

(declare-fun lt!2721719 () Int)

(assert (=> d!2394225 (>= lt!2721719 0)))

(declare-fun e!4730135 () Int)

(assert (=> d!2394225 (= lt!2721719 e!4730135)))

(declare-fun c!1473006 () Bool)

(assert (=> d!2394225 (= c!1473006 ((_ is Nil!75008) l1!1017))))

(assert (=> d!2394225 (= (size!43742 l1!1017) lt!2721719)))

(declare-fun b!8028920 () Bool)

(assert (=> b!8028920 (= e!4730135 0)))

(declare-fun b!8028921 () Bool)

(assert (=> b!8028921 (= e!4730135 (+ 1 (size!43742 (t!390890 l1!1017))))))

(assert (= (and d!2394225 c!1473006) b!8028920))

(assert (= (and d!2394225 (not c!1473006)) b!8028921))

(assert (=> b!8028921 m!8390996))

(assert (=> b!8028849 d!2394225))

(declare-fun d!2394227 () Bool)

(declare-fun c!1473007 () Bool)

(assert (=> d!2394227 (= c!1473007 ((_ is Nil!75008) lt!2721693))))

(declare-fun e!4730136 () (InoxSet B!4437))

(assert (=> d!2394227 (= (content!16016 lt!2721693) e!4730136)))

(declare-fun b!8028922 () Bool)

(assert (=> b!8028922 (= e!4730136 ((as const (Array B!4437 Bool)) false))))

(declare-fun b!8028923 () Bool)

(assert (=> b!8028923 (= e!4730136 ((_ map or) (store ((as const (Array B!4437 Bool)) false) (h!81456 lt!2721693) true) (content!16016 (t!390890 lt!2721693))))))

(assert (= (and d!2394227 c!1473007) b!8028922))

(assert (= (and d!2394227 (not c!1473007)) b!8028923))

(declare-fun m!8391098 () Bool)

(assert (=> b!8028923 m!8391098))

(declare-fun m!8391100 () Bool)

(assert (=> b!8028923 m!8391100))

(assert (=> d!2394169 d!2394227))

(declare-fun d!2394229 () Bool)

(declare-fun c!1473008 () Bool)

(assert (=> d!2394229 (= c!1473008 ((_ is Nil!75008) l1!1017))))

(declare-fun e!4730137 () (InoxSet B!4437))

(assert (=> d!2394229 (= (content!16016 l1!1017) e!4730137)))

(declare-fun b!8028924 () Bool)

(assert (=> b!8028924 (= e!4730137 ((as const (Array B!4437 Bool)) false))))

(declare-fun b!8028925 () Bool)

(assert (=> b!8028925 (= e!4730137 ((_ map or) (store ((as const (Array B!4437 Bool)) false) (h!81456 l1!1017) true) (content!16016 (t!390890 l1!1017))))))

(assert (= (and d!2394229 c!1473008) b!8028924))

(assert (= (and d!2394229 (not c!1473008)) b!8028925))

(declare-fun m!8391102 () Bool)

(assert (=> b!8028925 m!8391102))

(assert (=> b!8028925 m!8391006))

(assert (=> d!2394169 d!2394229))

(assert (=> d!2394169 d!2394201))

(declare-fun d!2394231 () Bool)

(declare-fun lt!2721720 () Int)

(assert (=> d!2394231 (>= lt!2721720 0)))

(declare-fun e!4730138 () Int)

(assert (=> d!2394231 (= lt!2721720 e!4730138)))

(declare-fun c!1473009 () Bool)

(assert (=> d!2394231 (= c!1473009 ((_ is Nil!75008) (++!18610 (t!390890 l1!1017) l2!986)))))

(assert (=> d!2394231 (= (size!43742 (++!18610 (t!390890 l1!1017) l2!986)) lt!2721720)))

(declare-fun b!8028926 () Bool)

(assert (=> b!8028926 (= e!4730138 0)))

(declare-fun b!8028927 () Bool)

(assert (=> b!8028927 (= e!4730138 (+ 1 (size!43742 (t!390890 (++!18610 (t!390890 l1!1017) l2!986)))))))

(assert (= (and d!2394231 c!1473009) b!8028926))

(assert (= (and d!2394231 (not c!1473009)) b!8028927))

(declare-fun m!8391104 () Bool)

(assert (=> b!8028927 m!8391104))

(assert (=> b!8028861 d!2394231))

(assert (=> b!8028861 d!2394191))

(declare-fun d!2394233 () Bool)

(declare-fun lt!2721721 () Int)

(assert (=> d!2394233 (>= lt!2721721 0)))

(declare-fun e!4730139 () Int)

(assert (=> d!2394233 (= lt!2721721 e!4730139)))

(declare-fun c!1473010 () Bool)

(assert (=> d!2394233 (= c!1473010 ((_ is Nil!75008) lt!2721693))))

(assert (=> d!2394233 (= (size!43742 lt!2721693) lt!2721721)))

(declare-fun b!8028928 () Bool)

(assert (=> b!8028928 (= e!4730139 0)))

(declare-fun b!8028929 () Bool)

(assert (=> b!8028929 (= e!4730139 (+ 1 (size!43742 (t!390890 lt!2721693))))))

(assert (= (and d!2394233 c!1473010) b!8028928))

(assert (= (and d!2394233 (not c!1473010)) b!8028929))

(declare-fun m!8391106 () Bool)

(assert (=> b!8028929 m!8391106))

(assert (=> b!8028826 d!2394233))

(assert (=> b!8028826 d!2394225))

(assert (=> b!8028826 d!2394193))

(declare-fun d!2394235 () Bool)

(declare-fun e!4730141 () Bool)

(assert (=> d!2394235 e!4730141))

(declare-fun res!3175404 () Bool)

(assert (=> d!2394235 (=> (not res!3175404) (not e!4730141))))

(declare-fun lt!2721722 () List!75134)

(assert (=> d!2394235 (= res!3175404 (= (content!16016 lt!2721722) ((_ map or) (content!16016 (t!390890 (t!390890 l1!1017))) (content!16016 l2!986))))))

(declare-fun e!4730140 () List!75134)

(assert (=> d!2394235 (= lt!2721722 e!4730140)))

(declare-fun c!1473011 () Bool)

(assert (=> d!2394235 (= c!1473011 ((_ is Nil!75008) (t!390890 (t!390890 l1!1017))))))

(assert (=> d!2394235 (= (++!18610 (t!390890 (t!390890 l1!1017)) l2!986) lt!2721722)))

(declare-fun b!8028930 () Bool)

(assert (=> b!8028930 (= e!4730140 l2!986)))

(declare-fun b!8028932 () Bool)

(declare-fun res!3175405 () Bool)

(assert (=> b!8028932 (=> (not res!3175405) (not e!4730141))))

(assert (=> b!8028932 (= res!3175405 (= (size!43742 lt!2721722) (+ (size!43742 (t!390890 (t!390890 l1!1017))) (size!43742 l2!986))))))

(declare-fun b!8028933 () Bool)

(assert (=> b!8028933 (= e!4730141 (or (not (= l2!986 Nil!75008)) (= lt!2721722 (t!390890 (t!390890 l1!1017)))))))

(declare-fun b!8028931 () Bool)

(assert (=> b!8028931 (= e!4730140 (Cons!75008 (h!81456 (t!390890 (t!390890 l1!1017))) (++!18610 (t!390890 (t!390890 (t!390890 l1!1017))) l2!986)))))

(assert (= (and d!2394235 c!1473011) b!8028930))

(assert (= (and d!2394235 (not c!1473011)) b!8028931))

(assert (= (and d!2394235 res!3175404) b!8028932))

(assert (= (and b!8028932 res!3175405) b!8028933))

(declare-fun m!8391108 () Bool)

(assert (=> d!2394235 m!8391108))

(assert (=> d!2394235 m!8391062))

(assert (=> d!2394235 m!8390958))

(declare-fun m!8391110 () Bool)

(assert (=> b!8028932 m!8391110))

(assert (=> b!8028932 m!8391052))

(assert (=> b!8028932 m!8390964))

(declare-fun m!8391112 () Bool)

(assert (=> b!8028931 m!8391112))

(assert (=> b!8028863 d!2394235))

(declare-fun b!8028934 () Bool)

(declare-fun e!4730142 () Bool)

(declare-fun tp!2402608 () Bool)

(assert (=> b!8028934 (= e!4730142 (and tp_is_empty!54341 tp!2402608))))

(assert (=> b!8028883 (= tp!2402603 e!4730142)))

(assert (= (and b!8028883 ((_ is Cons!75008) (t!390890 (t!390890 l2!986)))) b!8028934))

(declare-fun b!8028935 () Bool)

(declare-fun e!4730143 () Bool)

(declare-fun tp!2402609 () Bool)

(assert (=> b!8028935 (= e!4730143 (and tp_is_empty!54341 tp!2402609))))

(assert (=> b!8028882 (= tp!2402602 e!4730143)))

(assert (= (and b!8028882 ((_ is Cons!75008) (t!390890 (t!390890 l1!1017)))) b!8028935))

(check-sat (not b!8028917) (not b!8028913) (not b!8028911) (not b!8028925) (not b!8028905) (not b!8028909) (not b!8028923) tp_is_empty!54341 (not b!8028929) (not d!2394235) (not b!8028912) (not b!8028907) (not b!8028895) (not b!8028921) (not b!8028934) (not b!8028919) (not b!8028916) (not b!8028931) (not b!8028899) (not b!8028915) (not b!8028932) (not b!8028897) (not d!2394195) (not b!8028927) (not b!8028935))
(check-sat)
