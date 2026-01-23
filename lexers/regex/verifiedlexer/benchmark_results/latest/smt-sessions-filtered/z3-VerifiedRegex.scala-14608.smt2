; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756144 () Bool)

(assert start!756144)

(declare-fun b!8028410 () Bool)

(declare-fun res!3175147 () Bool)

(declare-fun e!4729795 () Bool)

(assert (=> b!8028410 (=> res!3175147 e!4729795)))

(declare-datatypes ((B!4429 0))(
  ( (B!4430 (val!32614 Int)) )
))
(declare-datatypes ((List!75130 0))(
  ( (Nil!75004) (Cons!75004 (h!81452 B!4429) (t!390886 List!75130)) )
))
(declare-fun p1!159 () List!75130)

(declare-fun lt!2721559 () List!75130)

(declare-fun size!43739 (List!75130) Int)

(assert (=> b!8028410 (= res!3175147 (>= (size!43739 (t!390886 p1!159)) (size!43739 lt!2721559)))))

(declare-fun b!8028411 () Bool)

(declare-fun res!3175150 () Bool)

(declare-fun e!4729790 () Bool)

(assert (=> b!8028411 (=> (not res!3175150) (not e!4729790))))

(declare-fun s1!480 () List!75130)

(declare-fun isEmpty!43012 (List!75130) Bool)

(assert (=> b!8028411 (= res!3175150 (not (isEmpty!43012 s1!480)))))

(declare-fun b!8028412 () Bool)

(declare-fun p2!159 () List!75130)

(declare-fun lt!2721563 () B!4429)

(declare-fun contains!20946 (List!75130 B!4429) Bool)

(assert (=> b!8028412 (= e!4729795 (contains!20946 p2!159 lt!2721563))))

(assert (=> b!8028412 (contains!20946 lt!2721559 lt!2721563)))

(declare-fun head!16492 (List!75130) B!4429)

(assert (=> b!8028412 (= lt!2721563 (head!16492 s1!480))))

(declare-fun lt!2721562 () List!75130)

(declare-datatypes ((Unit!170992 0))(
  ( (Unit!170993) )
))
(declare-fun lt!2721561 () Unit!170992)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!162 (List!75130 List!75130 List!75130 List!75130) Unit!170992)

(assert (=> b!8028412 (= lt!2721561 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!162 (t!390886 p1!159) s1!480 lt!2721559 lt!2721562))))

(declare-fun b!8028413 () Bool)

(declare-fun e!4729792 () Bool)

(assert (=> b!8028413 (= e!4729792 e!4729790)))

(declare-fun res!3175151 () Bool)

(assert (=> b!8028413 (=> (not res!3175151) (not e!4729790))))

(declare-fun lt!2721564 () List!75130)

(declare-fun l!3185 () List!75130)

(assert (=> b!8028413 (= res!3175151 (= lt!2721564 l!3185))))

(declare-fun ++!18606 (List!75130 List!75130) List!75130)

(assert (=> b!8028413 (= lt!2721564 (++!18606 p1!159 s1!480))))

(declare-fun b!8028414 () Bool)

(declare-fun e!4729796 () Bool)

(declare-fun tp_is_empty!54333 () Bool)

(declare-fun tp!2402528 () Bool)

(assert (=> b!8028414 (= e!4729796 (and tp_is_empty!54333 tp!2402528))))

(declare-fun b!8028415 () Bool)

(declare-fun res!3175146 () Bool)

(assert (=> b!8028415 (=> res!3175146 e!4729795)))

(assert (=> b!8028415 (= res!3175146 (not (= (++!18606 (t!390886 p1!159) s1!480) lt!2721562)))))

(declare-fun b!8028416 () Bool)

(declare-fun e!4729794 () Bool)

(assert (=> b!8028416 (= e!4729790 (not e!4729794))))

(declare-fun res!3175144 () Bool)

(assert (=> b!8028416 (=> res!3175144 e!4729794)))

(get-info :version)

(assert (=> b!8028416 (= res!3175144 (not ((_ is Cons!75004) p1!159)))))

(declare-fun isPrefix!6879 (List!75130 List!75130) Bool)

(assert (=> b!8028416 (isPrefix!6879 p1!159 lt!2721564)))

(declare-fun lt!2721560 () Unit!170992)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3998 (List!75130 List!75130) Unit!170992)

(assert (=> b!8028416 (= lt!2721560 (lemmaConcatTwoListThenFirstIsPrefix!3998 p1!159 s1!480))))

(declare-fun b!8028417 () Bool)

(assert (=> b!8028417 (= e!4729794 e!4729795)))

(declare-fun res!3175145 () Bool)

(assert (=> b!8028417 (=> res!3175145 e!4729795)))

(assert (=> b!8028417 (= res!3175145 (not (isPrefix!6879 lt!2721559 lt!2721562)))))

(declare-fun tail!16037 (List!75130) List!75130)

(assert (=> b!8028417 (= lt!2721562 (tail!16037 l!3185))))

(assert (=> b!8028417 (= lt!2721559 (tail!16037 p2!159))))

(declare-fun b!8028418 () Bool)

(declare-fun e!4729791 () Bool)

(declare-fun tp!2402530 () Bool)

(assert (=> b!8028418 (= e!4729791 (and tp_is_empty!54333 tp!2402530))))

(declare-fun b!8028419 () Bool)

(declare-fun e!4729797 () Bool)

(declare-fun tp!2402531 () Bool)

(assert (=> b!8028419 (= e!4729797 (and tp_is_empty!54333 tp!2402531))))

(declare-fun b!8028420 () Bool)

(declare-fun e!4729793 () Bool)

(declare-fun tp!2402529 () Bool)

(assert (=> b!8028420 (= e!4729793 (and tp_is_empty!54333 tp!2402529))))

(declare-fun res!3175148 () Bool)

(assert (=> start!756144 (=> (not res!3175148) (not e!4729792))))

(assert (=> start!756144 (= res!3175148 (isPrefix!6879 p2!159 l!3185))))

(assert (=> start!756144 e!4729792))

(assert (=> start!756144 e!4729791))

(assert (=> start!756144 e!4729797))

(assert (=> start!756144 e!4729796))

(assert (=> start!756144 e!4729793))

(declare-fun b!8028421 () Bool)

(declare-fun res!3175149 () Bool)

(assert (=> b!8028421 (=> (not res!3175149) (not e!4729790))))

(assert (=> b!8028421 (= res!3175149 (< (size!43739 p1!159) (size!43739 p2!159)))))

(assert (= (and start!756144 res!3175148) b!8028413))

(assert (= (and b!8028413 res!3175151) b!8028411))

(assert (= (and b!8028411 res!3175150) b!8028421))

(assert (= (and b!8028421 res!3175149) b!8028416))

(assert (= (and b!8028416 (not res!3175144)) b!8028417))

(assert (= (and b!8028417 (not res!3175145)) b!8028415))

(assert (= (and b!8028415 (not res!3175146)) b!8028410))

(assert (= (and b!8028410 (not res!3175147)) b!8028412))

(assert (= (and start!756144 ((_ is Cons!75004) p2!159)) b!8028418))

(assert (= (and start!756144 ((_ is Cons!75004) l!3185)) b!8028419))

(assert (= (and start!756144 ((_ is Cons!75004) p1!159)) b!8028414))

(assert (= (and start!756144 ((_ is Cons!75004) s1!480)) b!8028420))

(declare-fun m!8390464 () Bool)

(assert (=> b!8028415 m!8390464))

(declare-fun m!8390466 () Bool)

(assert (=> b!8028411 m!8390466))

(declare-fun m!8390468 () Bool)

(assert (=> b!8028413 m!8390468))

(declare-fun m!8390470 () Bool)

(assert (=> b!8028410 m!8390470))

(declare-fun m!8390472 () Bool)

(assert (=> b!8028410 m!8390472))

(declare-fun m!8390474 () Bool)

(assert (=> b!8028416 m!8390474))

(declare-fun m!8390476 () Bool)

(assert (=> b!8028416 m!8390476))

(declare-fun m!8390478 () Bool)

(assert (=> b!8028421 m!8390478))

(declare-fun m!8390480 () Bool)

(assert (=> b!8028421 m!8390480))

(declare-fun m!8390482 () Bool)

(assert (=> b!8028412 m!8390482))

(declare-fun m!8390484 () Bool)

(assert (=> b!8028412 m!8390484))

(declare-fun m!8390486 () Bool)

(assert (=> b!8028412 m!8390486))

(declare-fun m!8390488 () Bool)

(assert (=> b!8028412 m!8390488))

(declare-fun m!8390490 () Bool)

(assert (=> start!756144 m!8390490))

(declare-fun m!8390492 () Bool)

(assert (=> b!8028417 m!8390492))

(declare-fun m!8390494 () Bool)

(assert (=> b!8028417 m!8390494))

(declare-fun m!8390496 () Bool)

(assert (=> b!8028417 m!8390496))

(check-sat (not b!8028410) (not b!8028417) (not b!8028420) (not b!8028414) tp_is_empty!54333 (not b!8028418) (not start!756144) (not b!8028411) (not b!8028413) (not b!8028412) (not b!8028421) (not b!8028416) (not b!8028415) (not b!8028419))
(check-sat)
(get-model)

(declare-fun d!2393969 () Bool)

(declare-fun lt!2721569 () Int)

(assert (=> d!2393969 (>= lt!2721569 0)))

(declare-fun e!4729802 () Int)

(assert (=> d!2393969 (= lt!2721569 e!4729802)))

(declare-fun c!1472931 () Bool)

(assert (=> d!2393969 (= c!1472931 ((_ is Nil!75004) p1!159))))

(assert (=> d!2393969 (= (size!43739 p1!159) lt!2721569)))

(declare-fun b!8028430 () Bool)

(assert (=> b!8028430 (= e!4729802 0)))

(declare-fun b!8028431 () Bool)

(assert (=> b!8028431 (= e!4729802 (+ 1 (size!43739 (t!390886 p1!159))))))

(assert (= (and d!2393969 c!1472931) b!8028430))

(assert (= (and d!2393969 (not c!1472931)) b!8028431))

(assert (=> b!8028431 m!8390470))

(assert (=> b!8028421 d!2393969))

(declare-fun d!2393971 () Bool)

(declare-fun lt!2721570 () Int)

(assert (=> d!2393971 (>= lt!2721570 0)))

(declare-fun e!4729805 () Int)

(assert (=> d!2393971 (= lt!2721570 e!4729805)))

(declare-fun c!1472932 () Bool)

(assert (=> d!2393971 (= c!1472932 ((_ is Nil!75004) p2!159))))

(assert (=> d!2393971 (= (size!43739 p2!159) lt!2721570)))

(declare-fun b!8028436 () Bool)

(assert (=> b!8028436 (= e!4729805 0)))

(declare-fun b!8028437 () Bool)

(assert (=> b!8028437 (= e!4729805 (+ 1 (size!43739 (t!390886 p2!159))))))

(assert (= (and d!2393971 c!1472932) b!8028436))

(assert (= (and d!2393971 (not c!1472932)) b!8028437))

(declare-fun m!8390498 () Bool)

(assert (=> b!8028437 m!8390498))

(assert (=> b!8028421 d!2393971))

(declare-fun d!2393973 () Bool)

(declare-fun lt!2721571 () Int)

(assert (=> d!2393973 (>= lt!2721571 0)))

(declare-fun e!4729806 () Int)

(assert (=> d!2393973 (= lt!2721571 e!4729806)))

(declare-fun c!1472933 () Bool)

(assert (=> d!2393973 (= c!1472933 ((_ is Nil!75004) (t!390886 p1!159)))))

(assert (=> d!2393973 (= (size!43739 (t!390886 p1!159)) lt!2721571)))

(declare-fun b!8028438 () Bool)

(assert (=> b!8028438 (= e!4729806 0)))

(declare-fun b!8028439 () Bool)

(assert (=> b!8028439 (= e!4729806 (+ 1 (size!43739 (t!390886 (t!390886 p1!159)))))))

(assert (= (and d!2393973 c!1472933) b!8028438))

(assert (= (and d!2393973 (not c!1472933)) b!8028439))

(declare-fun m!8390500 () Bool)

(assert (=> b!8028439 m!8390500))

(assert (=> b!8028410 d!2393973))

(declare-fun d!2393975 () Bool)

(declare-fun lt!2721572 () Int)

(assert (=> d!2393975 (>= lt!2721572 0)))

(declare-fun e!4729807 () Int)

(assert (=> d!2393975 (= lt!2721572 e!4729807)))

(declare-fun c!1472934 () Bool)

(assert (=> d!2393975 (= c!1472934 ((_ is Nil!75004) lt!2721559))))

(assert (=> d!2393975 (= (size!43739 lt!2721559) lt!2721572)))

(declare-fun b!8028440 () Bool)

(assert (=> b!8028440 (= e!4729807 0)))

(declare-fun b!8028441 () Bool)

(assert (=> b!8028441 (= e!4729807 (+ 1 (size!43739 (t!390886 lt!2721559))))))

(assert (= (and d!2393975 c!1472934) b!8028440))

(assert (= (and d!2393975 (not c!1472934)) b!8028441))

(declare-fun m!8390502 () Bool)

(assert (=> b!8028441 m!8390502))

(assert (=> b!8028410 d!2393975))

(declare-fun b!8028463 () Bool)

(declare-fun e!4729822 () List!75130)

(assert (=> b!8028463 (= e!4729822 (Cons!75004 (h!81452 (t!390886 p1!159)) (++!18606 (t!390886 (t!390886 p1!159)) s1!480)))))

(declare-fun lt!2721580 () List!75130)

(declare-fun b!8028465 () Bool)

(declare-fun e!4729823 () Bool)

(assert (=> b!8028465 (= e!4729823 (or (not (= s1!480 Nil!75004)) (= lt!2721580 (t!390886 p1!159))))))

(declare-fun b!8028462 () Bool)

(assert (=> b!8028462 (= e!4729822 s1!480)))

(declare-fun d!2393977 () Bool)

(assert (=> d!2393977 e!4729823))

(declare-fun res!3175170 () Bool)

(assert (=> d!2393977 (=> (not res!3175170) (not e!4729823))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16013 (List!75130) (InoxSet B!4429))

(assert (=> d!2393977 (= res!3175170 (= (content!16013 lt!2721580) ((_ map or) (content!16013 (t!390886 p1!159)) (content!16013 s1!480))))))

(assert (=> d!2393977 (= lt!2721580 e!4729822)))

(declare-fun c!1472938 () Bool)

(assert (=> d!2393977 (= c!1472938 ((_ is Nil!75004) (t!390886 p1!159)))))

(assert (=> d!2393977 (= (++!18606 (t!390886 p1!159) s1!480) lt!2721580)))

(declare-fun b!8028464 () Bool)

(declare-fun res!3175171 () Bool)

(assert (=> b!8028464 (=> (not res!3175171) (not e!4729823))))

(assert (=> b!8028464 (= res!3175171 (= (size!43739 lt!2721580) (+ (size!43739 (t!390886 p1!159)) (size!43739 s1!480))))))

(assert (= (and d!2393977 c!1472938) b!8028462))

(assert (= (and d!2393977 (not c!1472938)) b!8028463))

(assert (= (and d!2393977 res!3175170) b!8028464))

(assert (= (and b!8028464 res!3175171) b!8028465))

(declare-fun m!8390528 () Bool)

(assert (=> b!8028463 m!8390528))

(declare-fun m!8390530 () Bool)

(assert (=> d!2393977 m!8390530))

(declare-fun m!8390532 () Bool)

(assert (=> d!2393977 m!8390532))

(declare-fun m!8390534 () Bool)

(assert (=> d!2393977 m!8390534))

(declare-fun m!8390536 () Bool)

(assert (=> b!8028464 m!8390536))

(assert (=> b!8028464 m!8390470))

(declare-fun m!8390538 () Bool)

(assert (=> b!8028464 m!8390538))

(assert (=> b!8028415 d!2393977))

(declare-fun b!8028479 () Bool)

(declare-fun res!3175180 () Bool)

(declare-fun e!4729832 () Bool)

(assert (=> b!8028479 (=> (not res!3175180) (not e!4729832))))

(assert (=> b!8028479 (= res!3175180 (= (head!16492 lt!2721559) (head!16492 lt!2721562)))))

(declare-fun d!2393985 () Bool)

(declare-fun e!4729833 () Bool)

(assert (=> d!2393985 e!4729833))

(declare-fun res!3175182 () Bool)

(assert (=> d!2393985 (=> res!3175182 e!4729833)))

(declare-fun lt!2721588 () Bool)

(assert (=> d!2393985 (= res!3175182 (not lt!2721588))))

(declare-fun e!4729834 () Bool)

(assert (=> d!2393985 (= lt!2721588 e!4729834)))

(declare-fun res!3175183 () Bool)

(assert (=> d!2393985 (=> res!3175183 e!4729834)))

(assert (=> d!2393985 (= res!3175183 ((_ is Nil!75004) lt!2721559))))

(assert (=> d!2393985 (= (isPrefix!6879 lt!2721559 lt!2721562) lt!2721588)))

(declare-fun b!8028481 () Bool)

(assert (=> b!8028481 (= e!4729833 (>= (size!43739 lt!2721562) (size!43739 lt!2721559)))))

(declare-fun b!8028480 () Bool)

(assert (=> b!8028480 (= e!4729832 (isPrefix!6879 (tail!16037 lt!2721559) (tail!16037 lt!2721562)))))

(declare-fun b!8028478 () Bool)

(assert (=> b!8028478 (= e!4729834 e!4729832)))

(declare-fun res!3175181 () Bool)

(assert (=> b!8028478 (=> (not res!3175181) (not e!4729832))))

(assert (=> b!8028478 (= res!3175181 (not ((_ is Nil!75004) lt!2721562)))))

(assert (= (and d!2393985 (not res!3175183)) b!8028478))

(assert (= (and b!8028478 res!3175181) b!8028479))

(assert (= (and b!8028479 res!3175180) b!8028480))

(assert (= (and d!2393985 (not res!3175182)) b!8028481))

(declare-fun m!8390544 () Bool)

(assert (=> b!8028479 m!8390544))

(declare-fun m!8390546 () Bool)

(assert (=> b!8028479 m!8390546))

(declare-fun m!8390548 () Bool)

(assert (=> b!8028481 m!8390548))

(assert (=> b!8028481 m!8390472))

(declare-fun m!8390550 () Bool)

(assert (=> b!8028480 m!8390550))

(declare-fun m!8390552 () Bool)

(assert (=> b!8028480 m!8390552))

(assert (=> b!8028480 m!8390550))

(assert (=> b!8028480 m!8390552))

(declare-fun m!8390554 () Bool)

(assert (=> b!8028480 m!8390554))

(assert (=> b!8028417 d!2393985))

(declare-fun d!2393991 () Bool)

(assert (=> d!2393991 (= (tail!16037 l!3185) (t!390886 l!3185))))

(assert (=> b!8028417 d!2393991))

(declare-fun d!2393997 () Bool)

(assert (=> d!2393997 (= (tail!16037 p2!159) (t!390886 p2!159))))

(assert (=> b!8028417 d!2393997))

(declare-fun b!8028491 () Bool)

(declare-fun res!3175186 () Bool)

(declare-fun e!4729839 () Bool)

(assert (=> b!8028491 (=> (not res!3175186) (not e!4729839))))

(assert (=> b!8028491 (= res!3175186 (= (head!16492 p2!159) (head!16492 l!3185)))))

(declare-fun d!2393999 () Bool)

(declare-fun e!4729840 () Bool)

(assert (=> d!2393999 e!4729840))

(declare-fun res!3175188 () Bool)

(assert (=> d!2393999 (=> res!3175188 e!4729840)))

(declare-fun lt!2721592 () Bool)

(assert (=> d!2393999 (= res!3175188 (not lt!2721592))))

(declare-fun e!4729841 () Bool)

(assert (=> d!2393999 (= lt!2721592 e!4729841)))

(declare-fun res!3175189 () Bool)

(assert (=> d!2393999 (=> res!3175189 e!4729841)))

(assert (=> d!2393999 (= res!3175189 ((_ is Nil!75004) p2!159))))

(assert (=> d!2393999 (= (isPrefix!6879 p2!159 l!3185) lt!2721592)))

(declare-fun b!8028493 () Bool)

(assert (=> b!8028493 (= e!4729840 (>= (size!43739 l!3185) (size!43739 p2!159)))))

(declare-fun b!8028492 () Bool)

(assert (=> b!8028492 (= e!4729839 (isPrefix!6879 (tail!16037 p2!159) (tail!16037 l!3185)))))

(declare-fun b!8028490 () Bool)

(assert (=> b!8028490 (= e!4729841 e!4729839)))

(declare-fun res!3175187 () Bool)

(assert (=> b!8028490 (=> (not res!3175187) (not e!4729839))))

(assert (=> b!8028490 (= res!3175187 (not ((_ is Nil!75004) l!3185)))))

(assert (= (and d!2393999 (not res!3175189)) b!8028490))

(assert (= (and b!8028490 res!3175187) b!8028491))

(assert (= (and b!8028491 res!3175186) b!8028492))

(assert (= (and d!2393999 (not res!3175188)) b!8028493))

(declare-fun m!8390566 () Bool)

(assert (=> b!8028491 m!8390566))

(declare-fun m!8390568 () Bool)

(assert (=> b!8028491 m!8390568))

(declare-fun m!8390570 () Bool)

(assert (=> b!8028493 m!8390570))

(assert (=> b!8028493 m!8390480))

(assert (=> b!8028492 m!8390496))

(assert (=> b!8028492 m!8390494))

(assert (=> b!8028492 m!8390496))

(assert (=> b!8028492 m!8390494))

(declare-fun m!8390572 () Bool)

(assert (=> b!8028492 m!8390572))

(assert (=> start!756144 d!2393999))

(declare-fun d!2394003 () Bool)

(assert (=> d!2394003 (= (isEmpty!43012 s1!480) ((_ is Nil!75004) s1!480))))

(assert (=> b!8028411 d!2394003))

(declare-fun b!8028495 () Bool)

(declare-fun res!3175190 () Bool)

(declare-fun e!4729842 () Bool)

(assert (=> b!8028495 (=> (not res!3175190) (not e!4729842))))

(assert (=> b!8028495 (= res!3175190 (= (head!16492 p1!159) (head!16492 lt!2721564)))))

(declare-fun d!2394005 () Bool)

(declare-fun e!4729843 () Bool)

(assert (=> d!2394005 e!4729843))

(declare-fun res!3175192 () Bool)

(assert (=> d!2394005 (=> res!3175192 e!4729843)))

(declare-fun lt!2721593 () Bool)

(assert (=> d!2394005 (= res!3175192 (not lt!2721593))))

(declare-fun e!4729844 () Bool)

(assert (=> d!2394005 (= lt!2721593 e!4729844)))

(declare-fun res!3175193 () Bool)

(assert (=> d!2394005 (=> res!3175193 e!4729844)))

(assert (=> d!2394005 (= res!3175193 ((_ is Nil!75004) p1!159))))

(assert (=> d!2394005 (= (isPrefix!6879 p1!159 lt!2721564) lt!2721593)))

(declare-fun b!8028497 () Bool)

(assert (=> b!8028497 (= e!4729843 (>= (size!43739 lt!2721564) (size!43739 p1!159)))))

(declare-fun b!8028496 () Bool)

(assert (=> b!8028496 (= e!4729842 (isPrefix!6879 (tail!16037 p1!159) (tail!16037 lt!2721564)))))

(declare-fun b!8028494 () Bool)

(assert (=> b!8028494 (= e!4729844 e!4729842)))

(declare-fun res!3175191 () Bool)

(assert (=> b!8028494 (=> (not res!3175191) (not e!4729842))))

(assert (=> b!8028494 (= res!3175191 (not ((_ is Nil!75004) lt!2721564)))))

(assert (= (and d!2394005 (not res!3175193)) b!8028494))

(assert (= (and b!8028494 res!3175191) b!8028495))

(assert (= (and b!8028495 res!3175190) b!8028496))

(assert (= (and d!2394005 (not res!3175192)) b!8028497))

(declare-fun m!8390574 () Bool)

(assert (=> b!8028495 m!8390574))

(declare-fun m!8390576 () Bool)

(assert (=> b!8028495 m!8390576))

(declare-fun m!8390578 () Bool)

(assert (=> b!8028497 m!8390578))

(assert (=> b!8028497 m!8390478))

(declare-fun m!8390580 () Bool)

(assert (=> b!8028496 m!8390580))

(declare-fun m!8390582 () Bool)

(assert (=> b!8028496 m!8390582))

(assert (=> b!8028496 m!8390580))

(assert (=> b!8028496 m!8390582))

(declare-fun m!8390584 () Bool)

(assert (=> b!8028496 m!8390584))

(assert (=> b!8028416 d!2394005))

(declare-fun d!2394007 () Bool)

(assert (=> d!2394007 (isPrefix!6879 p1!159 (++!18606 p1!159 s1!480))))

(declare-fun lt!2721598 () Unit!170992)

(declare-fun choose!60470 (List!75130 List!75130) Unit!170992)

(assert (=> d!2394007 (= lt!2721598 (choose!60470 p1!159 s1!480))))

(assert (=> d!2394007 (= (lemmaConcatTwoListThenFirstIsPrefix!3998 p1!159 s1!480) lt!2721598)))

(declare-fun bs!1971382 () Bool)

(assert (= bs!1971382 d!2394007))

(assert (=> bs!1971382 m!8390468))

(assert (=> bs!1971382 m!8390468))

(declare-fun m!8390586 () Bool)

(assert (=> bs!1971382 m!8390586))

(declare-fun m!8390588 () Bool)

(assert (=> bs!1971382 m!8390588))

(assert (=> b!8028416 d!2394007))

(declare-fun b!8028507 () Bool)

(declare-fun e!4729851 () List!75130)

(assert (=> b!8028507 (= e!4729851 (Cons!75004 (h!81452 p1!159) (++!18606 (t!390886 p1!159) s1!480)))))

(declare-fun lt!2721599 () List!75130)

(declare-fun e!4729852 () Bool)

(declare-fun b!8028509 () Bool)

(assert (=> b!8028509 (= e!4729852 (or (not (= s1!480 Nil!75004)) (= lt!2721599 p1!159)))))

(declare-fun b!8028506 () Bool)

(assert (=> b!8028506 (= e!4729851 s1!480)))

(declare-fun d!2394009 () Bool)

(assert (=> d!2394009 e!4729852))

(declare-fun res!3175202 () Bool)

(assert (=> d!2394009 (=> (not res!3175202) (not e!4729852))))

(assert (=> d!2394009 (= res!3175202 (= (content!16013 lt!2721599) ((_ map or) (content!16013 p1!159) (content!16013 s1!480))))))

(assert (=> d!2394009 (= lt!2721599 e!4729851)))

(declare-fun c!1472944 () Bool)

(assert (=> d!2394009 (= c!1472944 ((_ is Nil!75004) p1!159))))

(assert (=> d!2394009 (= (++!18606 p1!159 s1!480) lt!2721599)))

(declare-fun b!8028508 () Bool)

(declare-fun res!3175203 () Bool)

(assert (=> b!8028508 (=> (not res!3175203) (not e!4729852))))

(assert (=> b!8028508 (= res!3175203 (= (size!43739 lt!2721599) (+ (size!43739 p1!159) (size!43739 s1!480))))))

(assert (= (and d!2394009 c!1472944) b!8028506))

(assert (= (and d!2394009 (not c!1472944)) b!8028507))

(assert (= (and d!2394009 res!3175202) b!8028508))

(assert (= (and b!8028508 res!3175203) b!8028509))

(assert (=> b!8028507 m!8390464))

(declare-fun m!8390590 () Bool)

(assert (=> d!2394009 m!8390590))

(declare-fun m!8390592 () Bool)

(assert (=> d!2394009 m!8390592))

(assert (=> d!2394009 m!8390534))

(declare-fun m!8390594 () Bool)

(assert (=> b!8028508 m!8390594))

(assert (=> b!8028508 m!8390478))

(assert (=> b!8028508 m!8390538))

(assert (=> b!8028413 d!2394009))

(declare-fun d!2394011 () Bool)

(declare-fun lt!2721606 () Bool)

(assert (=> d!2394011 (= lt!2721606 (select (content!16013 p2!159) lt!2721563))))

(declare-fun e!4729866 () Bool)

(assert (=> d!2394011 (= lt!2721606 e!4729866)))

(declare-fun res!3175217 () Bool)

(assert (=> d!2394011 (=> (not res!3175217) (not e!4729866))))

(assert (=> d!2394011 (= res!3175217 ((_ is Cons!75004) p2!159))))

(assert (=> d!2394011 (= (contains!20946 p2!159 lt!2721563) lt!2721606)))

(declare-fun b!8028526 () Bool)

(declare-fun e!4729865 () Bool)

(assert (=> b!8028526 (= e!4729866 e!4729865)))

(declare-fun res!3175216 () Bool)

(assert (=> b!8028526 (=> res!3175216 e!4729865)))

(assert (=> b!8028526 (= res!3175216 (= (h!81452 p2!159) lt!2721563))))

(declare-fun b!8028527 () Bool)

(assert (=> b!8028527 (= e!4729865 (contains!20946 (t!390886 p2!159) lt!2721563))))

(assert (= (and d!2394011 res!3175217) b!8028526))

(assert (= (and b!8028526 (not res!3175216)) b!8028527))

(declare-fun m!8390618 () Bool)

(assert (=> d!2394011 m!8390618))

(declare-fun m!8390620 () Bool)

(assert (=> d!2394011 m!8390620))

(declare-fun m!8390622 () Bool)

(assert (=> b!8028527 m!8390622))

(assert (=> b!8028412 d!2394011))

(declare-fun d!2394027 () Bool)

(declare-fun lt!2721608 () Bool)

(assert (=> d!2394027 (= lt!2721608 (select (content!16013 lt!2721559) lt!2721563))))

(declare-fun e!4729871 () Bool)

(assert (=> d!2394027 (= lt!2721608 e!4729871)))

(declare-fun res!3175223 () Bool)

(assert (=> d!2394027 (=> (not res!3175223) (not e!4729871))))

(assert (=> d!2394027 (= res!3175223 ((_ is Cons!75004) lt!2721559))))

(assert (=> d!2394027 (= (contains!20946 lt!2721559 lt!2721563) lt!2721608)))

(declare-fun b!8028532 () Bool)

(declare-fun e!4729870 () Bool)

(assert (=> b!8028532 (= e!4729871 e!4729870)))

(declare-fun res!3175222 () Bool)

(assert (=> b!8028532 (=> res!3175222 e!4729870)))

(assert (=> b!8028532 (= res!3175222 (= (h!81452 lt!2721559) lt!2721563))))

(declare-fun b!8028533 () Bool)

(assert (=> b!8028533 (= e!4729870 (contains!20946 (t!390886 lt!2721559) lt!2721563))))

(assert (= (and d!2394027 res!3175223) b!8028532))

(assert (= (and b!8028532 (not res!3175222)) b!8028533))

(declare-fun m!8390624 () Bool)

(assert (=> d!2394027 m!8390624))

(declare-fun m!8390626 () Bool)

(assert (=> d!2394027 m!8390626))

(declare-fun m!8390630 () Bool)

(assert (=> b!8028533 m!8390630))

(assert (=> b!8028412 d!2394027))

(declare-fun d!2394029 () Bool)

(assert (=> d!2394029 (= (head!16492 s1!480) (h!81452 s1!480))))

(assert (=> b!8028412 d!2394029))

(declare-fun d!2394033 () Bool)

(assert (=> d!2394033 (contains!20946 lt!2721559 (head!16492 s1!480))))

(declare-fun lt!2721614 () Unit!170992)

(declare-fun choose!60471 (List!75130 List!75130 List!75130 List!75130) Unit!170992)

(assert (=> d!2394033 (= lt!2721614 (choose!60471 (t!390886 p1!159) s1!480 lt!2721559 lt!2721562))))

(assert (=> d!2394033 (isPrefix!6879 lt!2721559 lt!2721562)))

(assert (=> d!2394033 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!162 (t!390886 p1!159) s1!480 lt!2721559 lt!2721562) lt!2721614)))

(declare-fun bs!1971384 () Bool)

(assert (= bs!1971384 d!2394033))

(assert (=> bs!1971384 m!8390486))

(assert (=> bs!1971384 m!8390486))

(declare-fun m!8390646 () Bool)

(assert (=> bs!1971384 m!8390646))

(declare-fun m!8390648 () Bool)

(assert (=> bs!1971384 m!8390648))

(assert (=> bs!1971384 m!8390492))

(assert (=> b!8028412 d!2394033))

(declare-fun b!8028546 () Bool)

(declare-fun e!4729880 () Bool)

(declare-fun tp!2402540 () Bool)

(assert (=> b!8028546 (= e!4729880 (and tp_is_empty!54333 tp!2402540))))

(assert (=> b!8028420 (= tp!2402529 e!4729880)))

(assert (= (and b!8028420 ((_ is Cons!75004) (t!390886 s1!480))) b!8028546))

(declare-fun b!8028547 () Bool)

(declare-fun e!4729881 () Bool)

(declare-fun tp!2402541 () Bool)

(assert (=> b!8028547 (= e!4729881 (and tp_is_empty!54333 tp!2402541))))

(assert (=> b!8028418 (= tp!2402530 e!4729881)))

(assert (= (and b!8028418 ((_ is Cons!75004) (t!390886 p2!159))) b!8028547))

(declare-fun b!8028548 () Bool)

(declare-fun e!4729882 () Bool)

(declare-fun tp!2402542 () Bool)

(assert (=> b!8028548 (= e!4729882 (and tp_is_empty!54333 tp!2402542))))

(assert (=> b!8028414 (= tp!2402528 e!4729882)))

(assert (= (and b!8028414 ((_ is Cons!75004) (t!390886 p1!159))) b!8028548))

(declare-fun b!8028549 () Bool)

(declare-fun e!4729883 () Bool)

(declare-fun tp!2402543 () Bool)

(assert (=> b!8028549 (= e!4729883 (and tp_is_empty!54333 tp!2402543))))

(assert (=> b!8028419 (= tp!2402531 e!4729883)))

(assert (= (and b!8028419 ((_ is Cons!75004) (t!390886 l!3185))) b!8028549))

(check-sat (not b!8028479) (not d!2394033) (not b!8028439) (not b!8028548) (not d!2394011) (not b!8028431) (not b!8028549) (not b!8028492) (not b!8028533) (not b!8028464) (not b!8028527) (not d!2394009) (not d!2393977) (not b!8028496) (not b!8028547) (not b!8028507) (not b!8028491) (not b!8028463) (not b!8028495) tp_is_empty!54333 (not b!8028546) (not b!8028480) (not d!2394007) (not b!8028437) (not b!8028493) (not b!8028441) (not d!2394027) (not b!8028497) (not b!8028508) (not b!8028481))
(check-sat)
