; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755904 () Bool)

(assert start!755904)

(declare-fun b!8026916 () Bool)

(declare-fun e!4728796 () Bool)

(declare-fun tp_is_empty!54289 () Bool)

(declare-fun tp!2402168 () Bool)

(assert (=> b!8026916 (= e!4728796 (and tp_is_empty!54289 tp!2402168))))

(declare-fun b!8026917 () Bool)

(declare-fun e!4728794 () Bool)

(declare-datatypes ((B!4385 0))(
  ( (B!4386 (val!32592 Int)) )
))
(declare-datatypes ((List!75108 0))(
  ( (Nil!74982) (Cons!74982 (h!81430 B!4385) (t!390864 List!75108)) )
))
(declare-fun p1!159 () List!75108)

(declare-fun l!3185 () List!75108)

(get-info :version)

(assert (=> b!8026917 (= e!4728794 (not (or (not ((_ is Cons!74982) p1!159)) (not (= l!3185 Nil!74982)))))))

(declare-fun lt!2721070 () List!75108)

(declare-fun isPrefix!6857 (List!75108 List!75108) Bool)

(assert (=> b!8026917 (isPrefix!6857 p1!159 lt!2721070)))

(declare-datatypes ((Unit!170952 0))(
  ( (Unit!170953) )
))
(declare-fun lt!2721069 () Unit!170952)

(declare-fun s1!480 () List!75108)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3978 (List!75108 List!75108) Unit!170952)

(assert (=> b!8026917 (= lt!2721069 (lemmaConcatTwoListThenFirstIsPrefix!3978 p1!159 s1!480))))

(declare-fun b!8026918 () Bool)

(declare-fun e!4728792 () Bool)

(declare-fun tp!2402171 () Bool)

(assert (=> b!8026918 (= e!4728792 (and tp_is_empty!54289 tp!2402171))))

(declare-fun res!3174334 () Bool)

(declare-fun e!4728793 () Bool)

(assert (=> start!755904 (=> (not res!3174334) (not e!4728793))))

(declare-fun p2!159 () List!75108)

(assert (=> start!755904 (= res!3174334 (isPrefix!6857 p2!159 l!3185))))

(assert (=> start!755904 e!4728793))

(declare-fun e!4728795 () Bool)

(assert (=> start!755904 e!4728795))

(assert (=> start!755904 e!4728792))

(declare-fun e!4728797 () Bool)

(assert (=> start!755904 e!4728797))

(assert (=> start!755904 e!4728796))

(declare-fun b!8026919 () Bool)

(declare-fun tp!2402169 () Bool)

(assert (=> b!8026919 (= e!4728795 (and tp_is_empty!54289 tp!2402169))))

(declare-fun b!8026920 () Bool)

(declare-fun res!3174335 () Bool)

(assert (=> b!8026920 (=> (not res!3174335) (not e!4728794))))

(declare-fun isEmpty!42990 (List!75108) Bool)

(assert (=> b!8026920 (= res!3174335 (not (isEmpty!42990 s1!480)))))

(declare-fun b!8026921 () Bool)

(declare-fun res!3174337 () Bool)

(assert (=> b!8026921 (=> (not res!3174337) (not e!4728794))))

(declare-fun size!43717 (List!75108) Int)

(assert (=> b!8026921 (= res!3174337 (< (size!43717 p1!159) (size!43717 p2!159)))))

(declare-fun b!8026922 () Bool)

(assert (=> b!8026922 (= e!4728793 e!4728794)))

(declare-fun res!3174336 () Bool)

(assert (=> b!8026922 (=> (not res!3174336) (not e!4728794))))

(assert (=> b!8026922 (= res!3174336 (= lt!2721070 l!3185))))

(declare-fun ++!18584 (List!75108 List!75108) List!75108)

(assert (=> b!8026922 (= lt!2721070 (++!18584 p1!159 s1!480))))

(declare-fun b!8026923 () Bool)

(declare-fun tp!2402170 () Bool)

(assert (=> b!8026923 (= e!4728797 (and tp_is_empty!54289 tp!2402170))))

(assert (= (and start!755904 res!3174334) b!8026922))

(assert (= (and b!8026922 res!3174336) b!8026920))

(assert (= (and b!8026920 res!3174335) b!8026921))

(assert (= (and b!8026921 res!3174337) b!8026917))

(assert (= (and start!755904 ((_ is Cons!74982) p2!159)) b!8026919))

(assert (= (and start!755904 ((_ is Cons!74982) l!3185)) b!8026918))

(assert (= (and start!755904 ((_ is Cons!74982) p1!159)) b!8026923))

(assert (= (and start!755904 ((_ is Cons!74982) s1!480)) b!8026916))

(declare-fun m!8389140 () Bool)

(assert (=> b!8026917 m!8389140))

(declare-fun m!8389142 () Bool)

(assert (=> b!8026917 m!8389142))

(declare-fun m!8389144 () Bool)

(assert (=> b!8026921 m!8389144))

(declare-fun m!8389146 () Bool)

(assert (=> b!8026921 m!8389146))

(declare-fun m!8389148 () Bool)

(assert (=> start!755904 m!8389148))

(declare-fun m!8389150 () Bool)

(assert (=> b!8026920 m!8389150))

(declare-fun m!8389152 () Bool)

(assert (=> b!8026922 m!8389152))

(check-sat (not b!8026918) (not b!8026919) tp_is_empty!54289 (not b!8026917) (not b!8026916) (not b!8026920) (not b!8026921) (not b!8026923) (not b!8026922) (not start!755904))
(check-sat)
(get-model)

(declare-fun b!8026942 () Bool)

(declare-fun e!4728809 () Bool)

(declare-fun tail!16016 (List!75108) List!75108)

(assert (=> b!8026942 (= e!4728809 (isPrefix!6857 (tail!16016 p2!159) (tail!16016 l!3185)))))

(declare-fun d!2393618 () Bool)

(declare-fun e!4728810 () Bool)

(assert (=> d!2393618 e!4728810))

(declare-fun res!3174349 () Bool)

(assert (=> d!2393618 (=> res!3174349 e!4728810)))

(declare-fun lt!2721077 () Bool)

(assert (=> d!2393618 (= res!3174349 (not lt!2721077))))

(declare-fun e!4728808 () Bool)

(assert (=> d!2393618 (= lt!2721077 e!4728808)))

(declare-fun res!3174347 () Bool)

(assert (=> d!2393618 (=> res!3174347 e!4728808)))

(assert (=> d!2393618 (= res!3174347 ((_ is Nil!74982) p2!159))))

(assert (=> d!2393618 (= (isPrefix!6857 p2!159 l!3185) lt!2721077)))

(declare-fun b!8026940 () Bool)

(assert (=> b!8026940 (= e!4728808 e!4728809)))

(declare-fun res!3174346 () Bool)

(assert (=> b!8026940 (=> (not res!3174346) (not e!4728809))))

(assert (=> b!8026940 (= res!3174346 (not ((_ is Nil!74982) l!3185)))))

(declare-fun b!8026943 () Bool)

(assert (=> b!8026943 (= e!4728810 (>= (size!43717 l!3185) (size!43717 p2!159)))))

(declare-fun b!8026941 () Bool)

(declare-fun res!3174348 () Bool)

(assert (=> b!8026941 (=> (not res!3174348) (not e!4728809))))

(declare-fun head!16475 (List!75108) B!4385)

(assert (=> b!8026941 (= res!3174348 (= (head!16475 p2!159) (head!16475 l!3185)))))

(assert (= (and d!2393618 (not res!3174347)) b!8026940))

(assert (= (and b!8026940 res!3174346) b!8026941))

(assert (= (and b!8026941 res!3174348) b!8026942))

(assert (= (and d!2393618 (not res!3174349)) b!8026943))

(declare-fun m!8389158 () Bool)

(assert (=> b!8026942 m!8389158))

(declare-fun m!8389160 () Bool)

(assert (=> b!8026942 m!8389160))

(assert (=> b!8026942 m!8389158))

(assert (=> b!8026942 m!8389160))

(declare-fun m!8389162 () Bool)

(assert (=> b!8026942 m!8389162))

(declare-fun m!8389164 () Bool)

(assert (=> b!8026943 m!8389164))

(assert (=> b!8026943 m!8389146))

(declare-fun m!8389166 () Bool)

(assert (=> b!8026941 m!8389166))

(declare-fun m!8389168 () Bool)

(assert (=> b!8026941 m!8389168))

(assert (=> start!755904 d!2393618))

(declare-fun d!2393626 () Bool)

(declare-fun lt!2721083 () Int)

(assert (=> d!2393626 (>= lt!2721083 0)))

(declare-fun e!4728822 () Int)

(assert (=> d!2393626 (= lt!2721083 e!4728822)))

(declare-fun c!1472787 () Bool)

(assert (=> d!2393626 (= c!1472787 ((_ is Nil!74982) p1!159))))

(assert (=> d!2393626 (= (size!43717 p1!159) lt!2721083)))

(declare-fun b!8026960 () Bool)

(assert (=> b!8026960 (= e!4728822 0)))

(declare-fun b!8026961 () Bool)

(assert (=> b!8026961 (= e!4728822 (+ 1 (size!43717 (t!390864 p1!159))))))

(assert (= (and d!2393626 c!1472787) b!8026960))

(assert (= (and d!2393626 (not c!1472787)) b!8026961))

(declare-fun m!8389182 () Bool)

(assert (=> b!8026961 m!8389182))

(assert (=> b!8026921 d!2393626))

(declare-fun d!2393630 () Bool)

(declare-fun lt!2721084 () Int)

(assert (=> d!2393630 (>= lt!2721084 0)))

(declare-fun e!4728823 () Int)

(assert (=> d!2393630 (= lt!2721084 e!4728823)))

(declare-fun c!1472788 () Bool)

(assert (=> d!2393630 (= c!1472788 ((_ is Nil!74982) p2!159))))

(assert (=> d!2393630 (= (size!43717 p2!159) lt!2721084)))

(declare-fun b!8026962 () Bool)

(assert (=> b!8026962 (= e!4728823 0)))

(declare-fun b!8026963 () Bool)

(assert (=> b!8026963 (= e!4728823 (+ 1 (size!43717 (t!390864 p2!159))))))

(assert (= (and d!2393630 c!1472788) b!8026962))

(assert (= (and d!2393630 (not c!1472788)) b!8026963))

(declare-fun m!8389184 () Bool)

(assert (=> b!8026963 m!8389184))

(assert (=> b!8026921 d!2393630))

(declare-fun d!2393632 () Bool)

(assert (=> d!2393632 (= (isEmpty!42990 s1!480) ((_ is Nil!74982) s1!480))))

(assert (=> b!8026920 d!2393632))

(declare-fun b!8026982 () Bool)

(declare-fun res!3174370 () Bool)

(declare-fun e!4728832 () Bool)

(assert (=> b!8026982 (=> (not res!3174370) (not e!4728832))))

(declare-fun lt!2721092 () List!75108)

(assert (=> b!8026982 (= res!3174370 (= (size!43717 lt!2721092) (+ (size!43717 p1!159) (size!43717 s1!480))))))

(declare-fun b!8026980 () Bool)

(declare-fun e!4728833 () List!75108)

(assert (=> b!8026980 (= e!4728833 s1!480)))

(declare-fun b!8026983 () Bool)

(assert (=> b!8026983 (= e!4728832 (or (not (= s1!480 Nil!74982)) (= lt!2721092 p1!159)))))

(declare-fun b!8026981 () Bool)

(assert (=> b!8026981 (= e!4728833 (Cons!74982 (h!81430 p1!159) (++!18584 (t!390864 p1!159) s1!480)))))

(declare-fun d!2393634 () Bool)

(assert (=> d!2393634 e!4728832))

(declare-fun res!3174371 () Bool)

(assert (=> d!2393634 (=> (not res!3174371) (not e!4728832))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15997 (List!75108) (InoxSet B!4385))

(assert (=> d!2393634 (= res!3174371 (= (content!15997 lt!2721092) ((_ map or) (content!15997 p1!159) (content!15997 s1!480))))))

(assert (=> d!2393634 (= lt!2721092 e!4728833)))

(declare-fun c!1472793 () Bool)

(assert (=> d!2393634 (= c!1472793 ((_ is Nil!74982) p1!159))))

(assert (=> d!2393634 (= (++!18584 p1!159 s1!480) lt!2721092)))

(assert (= (and d!2393634 c!1472793) b!8026980))

(assert (= (and d!2393634 (not c!1472793)) b!8026981))

(assert (= (and d!2393634 res!3174371) b!8026982))

(assert (= (and b!8026982 res!3174370) b!8026983))

(declare-fun m!8389190 () Bool)

(assert (=> b!8026982 m!8389190))

(assert (=> b!8026982 m!8389144))

(declare-fun m!8389192 () Bool)

(assert (=> b!8026982 m!8389192))

(declare-fun m!8389194 () Bool)

(assert (=> b!8026981 m!8389194))

(declare-fun m!8389196 () Bool)

(assert (=> d!2393634 m!8389196))

(declare-fun m!8389198 () Bool)

(assert (=> d!2393634 m!8389198))

(declare-fun m!8389200 () Bool)

(assert (=> d!2393634 m!8389200))

(assert (=> b!8026922 d!2393634))

(declare-fun b!8026986 () Bool)

(declare-fun e!4728835 () Bool)

(assert (=> b!8026986 (= e!4728835 (isPrefix!6857 (tail!16016 p1!159) (tail!16016 lt!2721070)))))

(declare-fun d!2393638 () Bool)

(declare-fun e!4728836 () Bool)

(assert (=> d!2393638 e!4728836))

(declare-fun res!3174375 () Bool)

(assert (=> d!2393638 (=> res!3174375 e!4728836)))

(declare-fun lt!2721093 () Bool)

(assert (=> d!2393638 (= res!3174375 (not lt!2721093))))

(declare-fun e!4728834 () Bool)

(assert (=> d!2393638 (= lt!2721093 e!4728834)))

(declare-fun res!3174373 () Bool)

(assert (=> d!2393638 (=> res!3174373 e!4728834)))

(assert (=> d!2393638 (= res!3174373 ((_ is Nil!74982) p1!159))))

(assert (=> d!2393638 (= (isPrefix!6857 p1!159 lt!2721070) lt!2721093)))

(declare-fun b!8026984 () Bool)

(assert (=> b!8026984 (= e!4728834 e!4728835)))

(declare-fun res!3174372 () Bool)

(assert (=> b!8026984 (=> (not res!3174372) (not e!4728835))))

(assert (=> b!8026984 (= res!3174372 (not ((_ is Nil!74982) lt!2721070)))))

(declare-fun b!8026987 () Bool)

(assert (=> b!8026987 (= e!4728836 (>= (size!43717 lt!2721070) (size!43717 p1!159)))))

(declare-fun b!8026985 () Bool)

(declare-fun res!3174374 () Bool)

(assert (=> b!8026985 (=> (not res!3174374) (not e!4728835))))

(assert (=> b!8026985 (= res!3174374 (= (head!16475 p1!159) (head!16475 lt!2721070)))))

(assert (= (and d!2393638 (not res!3174373)) b!8026984))

(assert (= (and b!8026984 res!3174372) b!8026985))

(assert (= (and b!8026985 res!3174374) b!8026986))

(assert (= (and d!2393638 (not res!3174375)) b!8026987))

(declare-fun m!8389202 () Bool)

(assert (=> b!8026986 m!8389202))

(declare-fun m!8389204 () Bool)

(assert (=> b!8026986 m!8389204))

(assert (=> b!8026986 m!8389202))

(assert (=> b!8026986 m!8389204))

(declare-fun m!8389206 () Bool)

(assert (=> b!8026986 m!8389206))

(declare-fun m!8389208 () Bool)

(assert (=> b!8026987 m!8389208))

(assert (=> b!8026987 m!8389144))

(declare-fun m!8389210 () Bool)

(assert (=> b!8026985 m!8389210))

(declare-fun m!8389212 () Bool)

(assert (=> b!8026985 m!8389212))

(assert (=> b!8026917 d!2393638))

(declare-fun d!2393640 () Bool)

(assert (=> d!2393640 (isPrefix!6857 p1!159 (++!18584 p1!159 s1!480))))

(declare-fun lt!2721098 () Unit!170952)

(declare-fun choose!60455 (List!75108 List!75108) Unit!170952)

(assert (=> d!2393640 (= lt!2721098 (choose!60455 p1!159 s1!480))))

(assert (=> d!2393640 (= (lemmaConcatTwoListThenFirstIsPrefix!3978 p1!159 s1!480) lt!2721098)))

(declare-fun bs!1971344 () Bool)

(assert (= bs!1971344 d!2393640))

(assert (=> bs!1971344 m!8389152))

(assert (=> bs!1971344 m!8389152))

(declare-fun m!8389238 () Bool)

(assert (=> bs!1971344 m!8389238))

(declare-fun m!8389240 () Bool)

(assert (=> bs!1971344 m!8389240))

(assert (=> b!8026917 d!2393640))

(declare-fun b!8027008 () Bool)

(declare-fun e!4728850 () Bool)

(declare-fun tp!2402180 () Bool)

(assert (=> b!8027008 (= e!4728850 (and tp_is_empty!54289 tp!2402180))))

(assert (=> b!8026918 (= tp!2402171 e!4728850)))

(assert (= (and b!8026918 ((_ is Cons!74982) (t!390864 l!3185))) b!8027008))

(declare-fun b!8027009 () Bool)

(declare-fun e!4728851 () Bool)

(declare-fun tp!2402181 () Bool)

(assert (=> b!8027009 (= e!4728851 (and tp_is_empty!54289 tp!2402181))))

(assert (=> b!8026923 (= tp!2402170 e!4728851)))

(assert (= (and b!8026923 ((_ is Cons!74982) (t!390864 p1!159))) b!8027009))

(declare-fun b!8027010 () Bool)

(declare-fun e!4728852 () Bool)

(declare-fun tp!2402182 () Bool)

(assert (=> b!8027010 (= e!4728852 (and tp_is_empty!54289 tp!2402182))))

(assert (=> b!8026919 (= tp!2402169 e!4728852)))

(assert (= (and b!8026919 ((_ is Cons!74982) (t!390864 p2!159))) b!8027010))

(declare-fun b!8027011 () Bool)

(declare-fun e!4728853 () Bool)

(declare-fun tp!2402183 () Bool)

(assert (=> b!8027011 (= e!4728853 (and tp_is_empty!54289 tp!2402183))))

(assert (=> b!8026916 (= tp!2402168 e!4728853)))

(assert (= (and b!8026916 ((_ is Cons!74982) (t!390864 s1!480))) b!8027011))

(check-sat (not b!8026981) (not b!8026963) (not b!8026985) (not d!2393640) (not b!8026961) (not d!2393634) (not b!8027010) (not b!8026982) (not b!8027011) (not b!8026941) (not b!8026942) (not b!8027009) (not b!8026987) (not b!8027008) tp_is_empty!54289 (not b!8026943) (not b!8026986))
(check-sat)
