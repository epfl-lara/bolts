; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755676 () Bool)

(assert start!755676)

(declare-fun b!8025975 () Bool)

(declare-fun e!4728127 () Bool)

(declare-fun e!4728125 () Bool)

(assert (=> b!8025975 (= e!4728127 e!4728125)))

(declare-fun res!3173861 () Bool)

(assert (=> b!8025975 (=> (not res!3173861) (not e!4728125))))

(declare-datatypes ((B!4321 0))(
  ( (B!4322 (val!32560 Int)) )
))
(declare-datatypes ((List!75076 0))(
  ( (Nil!74950) (Cons!74950 (h!81398 B!4321) (t!390832 List!75076)) )
))
(declare-fun lt!2720807 () List!75076)

(declare-fun e!9294 () B!4321)

(declare-fun head!16456 (List!75076) B!4321)

(assert (=> b!8025975 (= res!3173861 (not (= (head!16456 lt!2720807) e!9294)))))

(declare-fun l!3127 () List!75076)

(declare-fun tail!15999 (List!75076) List!75076)

(assert (=> b!8025975 (= lt!2720807 (tail!15999 l!3127))))

(declare-fun b!8025976 () Bool)

(assert (=> b!8025976 (= e!4728125 (not true))))

(declare-fun getIndex!910 (List!75076 B!4321) Int)

(assert (=> b!8025976 (= (getIndex!910 lt!2720807 e!9294) (+ 1 (getIndex!910 (tail!15999 lt!2720807) e!9294)))))

(declare-datatypes ((Unit!170936 0))(
  ( (Unit!170937) )
))
(declare-fun lt!2720808 () Unit!170936)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!24 (List!75076 B!4321) Unit!170936)

(assert (=> b!8025976 (= lt!2720808 (lemmaNotHeadSoGetIndexTailIsMinusOne!24 lt!2720807 e!9294))))

(declare-fun res!3173858 () Bool)

(assert (=> start!755676 (=> (not res!3173858) (not e!4728127))))

(declare-fun contains!20914 (List!75076 B!4321) Bool)

(assert (=> start!755676 (= res!3173858 (contains!20914 l!3127 e!9294))))

(assert (=> start!755676 e!4728127))

(declare-fun e!4728126 () Bool)

(assert (=> start!755676 e!4728126))

(declare-fun tp_is_empty!54225 () Bool)

(assert (=> start!755676 tp_is_empty!54225))

(declare-fun b!8025977 () Bool)

(declare-fun tp!2401955 () Bool)

(assert (=> b!8025977 (= e!4728126 (and tp_is_empty!54225 tp!2401955))))

(declare-fun b!8025978 () Bool)

(declare-fun res!3173859 () Bool)

(assert (=> b!8025978 (=> (not res!3173859) (not e!4728127))))

(assert (=> b!8025978 (= res!3173859 (not (= (head!16456 l!3127) e!9294)))))

(declare-fun b!8025979 () Bool)

(declare-fun res!3173860 () Bool)

(assert (=> b!8025979 (=> (not res!3173860) (not e!4728125))))

(assert (=> b!8025979 (= res!3173860 (contains!20914 lt!2720807 e!9294))))

(assert (= (and start!755676 res!3173858) b!8025978))

(assert (= (and b!8025978 res!3173859) b!8025975))

(assert (= (and b!8025975 res!3173861) b!8025979))

(assert (= (and b!8025979 res!3173860) b!8025976))

(get-info :version)

(assert (= (and start!755676 ((_ is Cons!74950) l!3127)) b!8025977))

(declare-fun m!8388476 () Bool)

(assert (=> start!755676 m!8388476))

(declare-fun m!8388478 () Bool)

(assert (=> b!8025976 m!8388478))

(declare-fun m!8388480 () Bool)

(assert (=> b!8025976 m!8388480))

(assert (=> b!8025976 m!8388480))

(declare-fun m!8388482 () Bool)

(assert (=> b!8025976 m!8388482))

(declare-fun m!8388484 () Bool)

(assert (=> b!8025976 m!8388484))

(declare-fun m!8388486 () Bool)

(assert (=> b!8025979 m!8388486))

(declare-fun m!8388488 () Bool)

(assert (=> b!8025975 m!8388488))

(declare-fun m!8388490 () Bool)

(assert (=> b!8025975 m!8388490))

(declare-fun m!8388492 () Bool)

(assert (=> b!8025978 m!8388492))

(check-sat tp_is_empty!54225 (not b!8025979) (not b!8025977) (not b!8025978) (not b!8025975) (not b!8025976) (not start!755676))
(check-sat)
