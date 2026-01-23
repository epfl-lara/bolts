; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756080 () Bool)

(assert start!756080)

(declare-fun b!8027962 () Bool)

(declare-fun res!3174897 () Bool)

(declare-fun e!4729503 () Bool)

(assert (=> b!8027962 (=> (not res!3174897) (not e!4729503))))

(declare-datatypes ((B!4417 0))(
  ( (B!4418 (val!32608 Int)) )
))
(declare-datatypes ((List!75124 0))(
  ( (Nil!74998) (Cons!74998 (h!81446 B!4417) (t!390880 List!75124)) )
))
(declare-fun s1!480 () List!75124)

(declare-fun isEmpty!43006 (List!75124) Bool)

(assert (=> b!8027962 (= res!3174897 (not (isEmpty!43006 s1!480)))))

(declare-fun b!8027963 () Bool)

(declare-fun e!4729502 () Bool)

(declare-fun tp_is_empty!54321 () Bool)

(declare-fun tp!2402434 () Bool)

(assert (=> b!8027963 (= e!4729502 (and tp_is_empty!54321 tp!2402434))))

(declare-fun b!8027964 () Bool)

(declare-fun e!4729504 () Bool)

(assert (=> b!8027964 (= e!4729504 true)))

(declare-fun lt!2721400 () List!75124)

(declare-fun p1!159 () List!75124)

(declare-fun ++!18600 (List!75124 List!75124) List!75124)

(assert (=> b!8027964 (= lt!2721400 (++!18600 (t!390880 p1!159) s1!480))))

(declare-fun b!8027965 () Bool)

(assert (=> b!8027965 (= e!4729503 (not e!4729504))))

(declare-fun res!3174899 () Bool)

(assert (=> b!8027965 (=> res!3174899 e!4729504)))

(get-info :version)

(assert (=> b!8027965 (= res!3174899 (not ((_ is Cons!74998) p1!159)))))

(declare-fun lt!2721398 () List!75124)

(declare-fun isPrefix!6873 (List!75124 List!75124) Bool)

(assert (=> b!8027965 (isPrefix!6873 p1!159 lt!2721398)))

(declare-datatypes ((Unit!170980 0))(
  ( (Unit!170981) )
))
(declare-fun lt!2721399 () Unit!170980)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3992 (List!75124 List!75124) Unit!170980)

(assert (=> b!8027965 (= lt!2721399 (lemmaConcatTwoListThenFirstIsPrefix!3992 p1!159 s1!480))))

(declare-fun b!8027966 () Bool)

(declare-fun e!4729501 () Bool)

(assert (=> b!8027966 (= e!4729501 e!4729503)))

(declare-fun res!3174896 () Bool)

(assert (=> b!8027966 (=> (not res!3174896) (not e!4729503))))

(declare-fun l!3185 () List!75124)

(assert (=> b!8027966 (= res!3174896 (= lt!2721398 l!3185))))

(assert (=> b!8027966 (= lt!2721398 (++!18600 p1!159 s1!480))))

(declare-fun b!8027967 () Bool)

(declare-fun res!3174900 () Bool)

(assert (=> b!8027967 (=> (not res!3174900) (not e!4729503))))

(declare-fun p2!159 () List!75124)

(declare-fun size!43733 (List!75124) Int)

(assert (=> b!8027967 (= res!3174900 (< (size!43733 p1!159) (size!43733 p2!159)))))

(declare-fun b!8027968 () Bool)

(declare-fun res!3174898 () Bool)

(assert (=> b!8027968 (=> res!3174898 e!4729504)))

(declare-fun tail!16031 (List!75124) List!75124)

(assert (=> b!8027968 (= res!3174898 (not (isPrefix!6873 (tail!16031 p2!159) (tail!16031 l!3185))))))

(declare-fun res!3174901 () Bool)

(assert (=> start!756080 (=> (not res!3174901) (not e!4729501))))

(assert (=> start!756080 (= res!3174901 (isPrefix!6873 p2!159 l!3185))))

(assert (=> start!756080 e!4729501))

(assert (=> start!756080 e!4729502))

(declare-fun e!4729500 () Bool)

(assert (=> start!756080 e!4729500))

(declare-fun e!4729499 () Bool)

(assert (=> start!756080 e!4729499))

(declare-fun e!4729505 () Bool)

(assert (=> start!756080 e!4729505))

(declare-fun b!8027969 () Bool)

(declare-fun tp!2402433 () Bool)

(assert (=> b!8027969 (= e!4729500 (and tp_is_empty!54321 tp!2402433))))

(declare-fun b!8027970 () Bool)

(declare-fun tp!2402435 () Bool)

(assert (=> b!8027970 (= e!4729505 (and tp_is_empty!54321 tp!2402435))))

(declare-fun b!8027971 () Bool)

(declare-fun tp!2402432 () Bool)

(assert (=> b!8027971 (= e!4729499 (and tp_is_empty!54321 tp!2402432))))

(assert (= (and start!756080 res!3174901) b!8027966))

(assert (= (and b!8027966 res!3174896) b!8027962))

(assert (= (and b!8027962 res!3174897) b!8027967))

(assert (= (and b!8027967 res!3174900) b!8027965))

(assert (= (and b!8027965 (not res!3174899)) b!8027968))

(assert (= (and b!8027968 (not res!3174898)) b!8027964))

(assert (= (and start!756080 ((_ is Cons!74998) p2!159)) b!8027963))

(assert (= (and start!756080 ((_ is Cons!74998) l!3185)) b!8027969))

(assert (= (and start!756080 ((_ is Cons!74998) p1!159)) b!8027971))

(assert (= (and start!756080 ((_ is Cons!74998) s1!480)) b!8027970))

(declare-fun m!8390052 () Bool)

(assert (=> b!8027965 m!8390052))

(declare-fun m!8390054 () Bool)

(assert (=> b!8027965 m!8390054))

(declare-fun m!8390056 () Bool)

(assert (=> start!756080 m!8390056))

(declare-fun m!8390058 () Bool)

(assert (=> b!8027967 m!8390058))

(declare-fun m!8390060 () Bool)

(assert (=> b!8027967 m!8390060))

(declare-fun m!8390062 () Bool)

(assert (=> b!8027964 m!8390062))

(declare-fun m!8390064 () Bool)

(assert (=> b!8027966 m!8390064))

(declare-fun m!8390066 () Bool)

(assert (=> b!8027968 m!8390066))

(declare-fun m!8390068 () Bool)

(assert (=> b!8027968 m!8390068))

(assert (=> b!8027968 m!8390066))

(assert (=> b!8027968 m!8390068))

(declare-fun m!8390070 () Bool)

(assert (=> b!8027968 m!8390070))

(declare-fun m!8390072 () Bool)

(assert (=> b!8027962 m!8390072))

(check-sat (not b!8027969) tp_is_empty!54321 (not b!8027971) (not b!8027970) (not b!8027962) (not b!8027964) (not b!8027968) (not b!8027967) (not b!8027966) (not b!8027965) (not start!756080) (not b!8027963))
(check-sat)
