; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755972 () Bool)

(assert start!755972)

(declare-fun res!3174562 () Bool)

(declare-fun e!4729064 () Bool)

(assert (=> start!755972 (=> (not res!3174562) (not e!4729064))))

(declare-datatypes ((B!4397 0))(
  ( (B!4398 (val!32598 Int)) )
))
(declare-datatypes ((List!75114 0))(
  ( (Nil!74988) (Cons!74988 (h!81436 B!4397) (t!390870 List!75114)) )
))
(declare-fun p2!159 () List!75114)

(declare-fun l!3185 () List!75114)

(declare-fun isPrefix!6863 (List!75114 List!75114) Bool)

(assert (=> start!755972 (= res!3174562 (isPrefix!6863 p2!159 l!3185))))

(assert (=> start!755972 e!4729064))

(declare-fun e!4729063 () Bool)

(assert (=> start!755972 e!4729063))

(declare-fun e!4729065 () Bool)

(assert (=> start!755972 e!4729065))

(declare-fun e!4729067 () Bool)

(assert (=> start!755972 e!4729067))

(declare-fun e!4729062 () Bool)

(assert (=> start!755972 e!4729062))

(declare-fun b!8027314 () Bool)

(declare-fun res!3174561 () Bool)

(declare-fun e!4729066 () Bool)

(assert (=> b!8027314 (=> (not res!3174561) (not e!4729066))))

(declare-fun p1!159 () List!75114)

(declare-fun size!43723 (List!75114) Int)

(assert (=> b!8027314 (= res!3174561 (< (size!43723 p1!159) (size!43723 p2!159)))))

(declare-fun b!8027315 () Bool)

(assert (=> b!8027315 (= e!4729064 e!4729066)))

(declare-fun res!3174563 () Bool)

(assert (=> b!8027315 (=> (not res!3174563) (not e!4729066))))

(declare-fun lt!2721223 () List!75114)

(assert (=> b!8027315 (= res!3174563 (= lt!2721223 l!3185))))

(declare-fun s1!480 () List!75114)

(declare-fun ++!18590 (List!75114 List!75114) List!75114)

(assert (=> b!8027315 (= lt!2721223 (++!18590 p1!159 s1!480))))

(declare-fun b!8027316 () Bool)

(declare-fun tp_is_empty!54301 () Bool)

(declare-fun tp!2402267 () Bool)

(assert (=> b!8027316 (= e!4729062 (and tp_is_empty!54301 tp!2402267))))

(declare-fun b!8027317 () Bool)

(declare-fun res!3174560 () Bool)

(assert (=> b!8027317 (=> (not res!3174560) (not e!4729066))))

(declare-fun isEmpty!42996 (List!75114) Bool)

(assert (=> b!8027317 (= res!3174560 (not (isEmpty!42996 s1!480)))))

(declare-fun b!8027318 () Bool)

(get-info :version)

(assert (=> b!8027318 (= e!4729066 (not (or ((_ is Cons!74988) p1!159) (not (= s1!480 Nil!74988)))))))

(assert (=> b!8027318 (isPrefix!6863 p1!159 lt!2721223)))

(declare-datatypes ((Unit!170964 0))(
  ( (Unit!170965) )
))
(declare-fun lt!2721224 () Unit!170964)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3984 (List!75114 List!75114) Unit!170964)

(assert (=> b!8027318 (= lt!2721224 (lemmaConcatTwoListThenFirstIsPrefix!3984 p1!159 s1!480))))

(declare-fun b!8027319 () Bool)

(declare-fun tp!2402265 () Bool)

(assert (=> b!8027319 (= e!4729065 (and tp_is_empty!54301 tp!2402265))))

(declare-fun b!8027320 () Bool)

(declare-fun tp!2402266 () Bool)

(assert (=> b!8027320 (= e!4729063 (and tp_is_empty!54301 tp!2402266))))

(declare-fun b!8027321 () Bool)

(declare-fun tp!2402264 () Bool)

(assert (=> b!8027321 (= e!4729067 (and tp_is_empty!54301 tp!2402264))))

(assert (= (and start!755972 res!3174562) b!8027315))

(assert (= (and b!8027315 res!3174563) b!8027317))

(assert (= (and b!8027317 res!3174560) b!8027314))

(assert (= (and b!8027314 res!3174561) b!8027318))

(assert (= (and start!755972 ((_ is Cons!74988) p2!159)) b!8027320))

(assert (= (and start!755972 ((_ is Cons!74988) l!3185)) b!8027319))

(assert (= (and start!755972 ((_ is Cons!74988) p1!159)) b!8027321))

(assert (= (and start!755972 ((_ is Cons!74988) s1!480)) b!8027316))

(declare-fun m!8389508 () Bool)

(assert (=> b!8027318 m!8389508))

(declare-fun m!8389510 () Bool)

(assert (=> b!8027318 m!8389510))

(declare-fun m!8389512 () Bool)

(assert (=> start!755972 m!8389512))

(declare-fun m!8389514 () Bool)

(assert (=> b!8027314 m!8389514))

(declare-fun m!8389516 () Bool)

(assert (=> b!8027314 m!8389516))

(declare-fun m!8389518 () Bool)

(assert (=> b!8027317 m!8389518))

(declare-fun m!8389520 () Bool)

(assert (=> b!8027315 m!8389520))

(check-sat (not b!8027320) tp_is_empty!54301 (not b!8027314) (not b!8027321) (not start!755972) (not b!8027315) (not b!8027318) (not b!8027316) (not b!8027317) (not b!8027319))
(check-sat)
(get-model)

(declare-fun b!8027336 () Bool)

(declare-fun e!4729078 () Bool)

(declare-fun tail!16022 (List!75114) List!75114)

(assert (=> b!8027336 (= e!4729078 (isPrefix!6863 (tail!16022 p2!159) (tail!16022 l!3185)))))

(declare-fun b!8027335 () Bool)

(declare-fun res!3174572 () Bool)

(assert (=> b!8027335 (=> (not res!3174572) (not e!4729078))))

(declare-fun head!16479 (List!75114) B!4397)

(assert (=> b!8027335 (= res!3174572 (= (head!16479 p2!159) (head!16479 l!3185)))))

(declare-fun b!8027337 () Bool)

(declare-fun e!4729076 () Bool)

(assert (=> b!8027337 (= e!4729076 (>= (size!43723 l!3185) (size!43723 p2!159)))))

(declare-fun b!8027334 () Bool)

(declare-fun e!4729077 () Bool)

(assert (=> b!8027334 (= e!4729077 e!4729078)))

(declare-fun res!3174575 () Bool)

(assert (=> b!8027334 (=> (not res!3174575) (not e!4729078))))

(assert (=> b!8027334 (= res!3174575 (not ((_ is Nil!74988) l!3185)))))

(declare-fun d!2393711 () Bool)

(assert (=> d!2393711 e!4729076))

(declare-fun res!3174573 () Bool)

(assert (=> d!2393711 (=> res!3174573 e!4729076)))

(declare-fun lt!2721229 () Bool)

(assert (=> d!2393711 (= res!3174573 (not lt!2721229))))

(assert (=> d!2393711 (= lt!2721229 e!4729077)))

(declare-fun res!3174574 () Bool)

(assert (=> d!2393711 (=> res!3174574 e!4729077)))

(assert (=> d!2393711 (= res!3174574 ((_ is Nil!74988) p2!159))))

(assert (=> d!2393711 (= (isPrefix!6863 p2!159 l!3185) lt!2721229)))

(assert (= (and d!2393711 (not res!3174574)) b!8027334))

(assert (= (and b!8027334 res!3174575) b!8027335))

(assert (= (and b!8027335 res!3174572) b!8027336))

(assert (= (and d!2393711 (not res!3174573)) b!8027337))

(declare-fun m!8389522 () Bool)

(assert (=> b!8027336 m!8389522))

(declare-fun m!8389524 () Bool)

(assert (=> b!8027336 m!8389524))

(assert (=> b!8027336 m!8389522))

(assert (=> b!8027336 m!8389524))

(declare-fun m!8389526 () Bool)

(assert (=> b!8027336 m!8389526))

(declare-fun m!8389528 () Bool)

(assert (=> b!8027335 m!8389528))

(declare-fun m!8389530 () Bool)

(assert (=> b!8027335 m!8389530))

(declare-fun m!8389532 () Bool)

(assert (=> b!8027337 m!8389532))

(assert (=> b!8027337 m!8389516))

(assert (=> start!755972 d!2393711))

(declare-fun d!2393717 () Bool)

(assert (=> d!2393717 (= (isEmpty!42996 s1!480) ((_ is Nil!74988) s1!480))))

(assert (=> b!8027317 d!2393717))

(declare-fun b!8027344 () Bool)

(declare-fun e!4729083 () Bool)

(assert (=> b!8027344 (= e!4729083 (isPrefix!6863 (tail!16022 p1!159) (tail!16022 lt!2721223)))))

(declare-fun b!8027343 () Bool)

(declare-fun res!3174580 () Bool)

(assert (=> b!8027343 (=> (not res!3174580) (not e!4729083))))

(assert (=> b!8027343 (= res!3174580 (= (head!16479 p1!159) (head!16479 lt!2721223)))))

(declare-fun b!8027345 () Bool)

(declare-fun e!4729081 () Bool)

(assert (=> b!8027345 (= e!4729081 (>= (size!43723 lt!2721223) (size!43723 p1!159)))))

(declare-fun b!8027342 () Bool)

(declare-fun e!4729082 () Bool)

(assert (=> b!8027342 (= e!4729082 e!4729083)))

(declare-fun res!3174583 () Bool)

(assert (=> b!8027342 (=> (not res!3174583) (not e!4729083))))

(assert (=> b!8027342 (= res!3174583 (not ((_ is Nil!74988) lt!2721223)))))

(declare-fun d!2393719 () Bool)

(assert (=> d!2393719 e!4729081))

(declare-fun res!3174581 () Bool)

(assert (=> d!2393719 (=> res!3174581 e!4729081)))

(declare-fun lt!2721230 () Bool)

(assert (=> d!2393719 (= res!3174581 (not lt!2721230))))

(assert (=> d!2393719 (= lt!2721230 e!4729082)))

(declare-fun res!3174582 () Bool)

(assert (=> d!2393719 (=> res!3174582 e!4729082)))

(assert (=> d!2393719 (= res!3174582 ((_ is Nil!74988) p1!159))))

(assert (=> d!2393719 (= (isPrefix!6863 p1!159 lt!2721223) lt!2721230)))

(assert (= (and d!2393719 (not res!3174582)) b!8027342))

(assert (= (and b!8027342 res!3174583) b!8027343))

(assert (= (and b!8027343 res!3174580) b!8027344))

(assert (= (and d!2393719 (not res!3174581)) b!8027345))

(declare-fun m!8389534 () Bool)

(assert (=> b!8027344 m!8389534))

(declare-fun m!8389536 () Bool)

(assert (=> b!8027344 m!8389536))

(assert (=> b!8027344 m!8389534))

(assert (=> b!8027344 m!8389536))

(declare-fun m!8389538 () Bool)

(assert (=> b!8027344 m!8389538))

(declare-fun m!8389540 () Bool)

(assert (=> b!8027343 m!8389540))

(declare-fun m!8389542 () Bool)

(assert (=> b!8027343 m!8389542))

(declare-fun m!8389544 () Bool)

(assert (=> b!8027345 m!8389544))

(assert (=> b!8027345 m!8389514))

(assert (=> b!8027318 d!2393719))

(declare-fun d!2393721 () Bool)

(assert (=> d!2393721 (isPrefix!6863 p1!159 (++!18590 p1!159 s1!480))))

(declare-fun lt!2721234 () Unit!170964)

(declare-fun choose!60460 (List!75114 List!75114) Unit!170964)

(assert (=> d!2393721 (= lt!2721234 (choose!60460 p1!159 s1!480))))

(assert (=> d!2393721 (= (lemmaConcatTwoListThenFirstIsPrefix!3984 p1!159 s1!480) lt!2721234)))

(declare-fun bs!1971355 () Bool)

(assert (= bs!1971355 d!2393721))

(assert (=> bs!1971355 m!8389520))

(assert (=> bs!1971355 m!8389520))

(declare-fun m!8389558 () Bool)

(assert (=> bs!1971355 m!8389558))

(declare-fun m!8389560 () Bool)

(assert (=> bs!1971355 m!8389560))

(assert (=> b!8027318 d!2393721))

(declare-fun d!2393725 () Bool)

(declare-fun lt!2721239 () Int)

(assert (=> d!2393725 (>= lt!2721239 0)))

(declare-fun e!4729094 () Int)

(assert (=> d!2393725 (= lt!2721239 e!4729094)))

(declare-fun c!1472820 () Bool)

(assert (=> d!2393725 (= c!1472820 ((_ is Nil!74988) p1!159))))

(assert (=> d!2393725 (= (size!43723 p1!159) lt!2721239)))

(declare-fun b!8027362 () Bool)

(assert (=> b!8027362 (= e!4729094 0)))

(declare-fun b!8027363 () Bool)

(assert (=> b!8027363 (= e!4729094 (+ 1 (size!43723 (t!390870 p1!159))))))

(assert (= (and d!2393725 c!1472820) b!8027362))

(assert (= (and d!2393725 (not c!1472820)) b!8027363))

(declare-fun m!8389562 () Bool)

(assert (=> b!8027363 m!8389562))

(assert (=> b!8027314 d!2393725))

(declare-fun d!2393727 () Bool)

(declare-fun lt!2721240 () Int)

(assert (=> d!2393727 (>= lt!2721240 0)))

(declare-fun e!4729095 () Int)

(assert (=> d!2393727 (= lt!2721240 e!4729095)))

(declare-fun c!1472821 () Bool)

(assert (=> d!2393727 (= c!1472821 ((_ is Nil!74988) p2!159))))

(assert (=> d!2393727 (= (size!43723 p2!159) lt!2721240)))

(declare-fun b!8027364 () Bool)

(assert (=> b!8027364 (= e!4729095 0)))

(declare-fun b!8027365 () Bool)

(assert (=> b!8027365 (= e!4729095 (+ 1 (size!43723 (t!390870 p2!159))))))

(assert (= (and d!2393727 c!1472821) b!8027364))

(assert (= (and d!2393727 (not c!1472821)) b!8027365))

(declare-fun m!8389564 () Bool)

(assert (=> b!8027365 m!8389564))

(assert (=> b!8027314 d!2393727))

(declare-fun b!8027385 () Bool)

(declare-fun e!4729106 () List!75114)

(assert (=> b!8027385 (= e!4729106 (Cons!74988 (h!81436 p1!159) (++!18590 (t!390870 p1!159) s1!480)))))

(declare-fun b!8027384 () Bool)

(assert (=> b!8027384 (= e!4729106 s1!480)))

(declare-fun d!2393729 () Bool)

(declare-fun e!4729107 () Bool)

(assert (=> d!2393729 e!4729107))

(declare-fun res!3174606 () Bool)

(assert (=> d!2393729 (=> (not res!3174606) (not e!4729107))))

(declare-fun lt!2721250 () List!75114)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16001 (List!75114) (InoxSet B!4397))

(assert (=> d!2393729 (= res!3174606 (= (content!16001 lt!2721250) ((_ map or) (content!16001 p1!159) (content!16001 s1!480))))))

(assert (=> d!2393729 (= lt!2721250 e!4729106)))

(declare-fun c!1472824 () Bool)

(assert (=> d!2393729 (= c!1472824 ((_ is Nil!74988) p1!159))))

(assert (=> d!2393729 (= (++!18590 p1!159 s1!480) lt!2721250)))

(declare-fun b!8027387 () Bool)

(assert (=> b!8027387 (= e!4729107 (or (not (= s1!480 Nil!74988)) (= lt!2721250 p1!159)))))

(declare-fun b!8027386 () Bool)

(declare-fun res!3174607 () Bool)

(assert (=> b!8027386 (=> (not res!3174607) (not e!4729107))))

(assert (=> b!8027386 (= res!3174607 (= (size!43723 lt!2721250) (+ (size!43723 p1!159) (size!43723 s1!480))))))

(assert (= (and d!2393729 c!1472824) b!8027384))

(assert (= (and d!2393729 (not c!1472824)) b!8027385))

(assert (= (and d!2393729 res!3174606) b!8027386))

(assert (= (and b!8027386 res!3174607) b!8027387))

(declare-fun m!8389594 () Bool)

(assert (=> b!8027385 m!8389594))

(declare-fun m!8389596 () Bool)

(assert (=> d!2393729 m!8389596))

(declare-fun m!8389598 () Bool)

(assert (=> d!2393729 m!8389598))

(declare-fun m!8389600 () Bool)

(assert (=> d!2393729 m!8389600))

(declare-fun m!8389602 () Bool)

(assert (=> b!8027386 m!8389602))

(assert (=> b!8027386 m!8389514))

(declare-fun m!8389604 () Bool)

(assert (=> b!8027386 m!8389604))

(assert (=> b!8027315 d!2393729))

(declare-fun b!8027396 () Bool)

(declare-fun e!4729113 () Bool)

(declare-fun tp!2402270 () Bool)

(assert (=> b!8027396 (= e!4729113 (and tp_is_empty!54301 tp!2402270))))

(assert (=> b!8027321 (= tp!2402264 e!4729113)))

(assert (= (and b!8027321 ((_ is Cons!74988) (t!390870 p1!159))) b!8027396))

(declare-fun b!8027397 () Bool)

(declare-fun e!4729114 () Bool)

(declare-fun tp!2402271 () Bool)

(assert (=> b!8027397 (= e!4729114 (and tp_is_empty!54301 tp!2402271))))

(assert (=> b!8027316 (= tp!2402267 e!4729114)))

(assert (= (and b!8027316 ((_ is Cons!74988) (t!390870 s1!480))) b!8027397))

(declare-fun b!8027400 () Bool)

(declare-fun e!4729116 () Bool)

(declare-fun tp!2402272 () Bool)

(assert (=> b!8027400 (= e!4729116 (and tp_is_empty!54301 tp!2402272))))

(assert (=> b!8027319 (= tp!2402265 e!4729116)))

(assert (= (and b!8027319 ((_ is Cons!74988) (t!390870 l!3185))) b!8027400))

(declare-fun b!8027401 () Bool)

(declare-fun e!4729117 () Bool)

(declare-fun tp!2402273 () Bool)

(assert (=> b!8027401 (= e!4729117 (and tp_is_empty!54301 tp!2402273))))

(assert (=> b!8027320 (= tp!2402266 e!4729117)))

(assert (= (and b!8027320 ((_ is Cons!74988) (t!390870 p2!159))) b!8027401))

(check-sat (not b!8027386) (not b!8027363) (not d!2393721) tp_is_empty!54301 (not b!8027401) (not b!8027385) (not b!8027344) (not b!8027345) (not b!8027400) (not b!8027343) (not d!2393729) (not b!8027336) (not b!8027335) (not b!8027365) (not b!8027396) (not b!8027337) (not b!8027397))
(check-sat)
