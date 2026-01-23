; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755996 () Bool)

(assert start!755996)

(declare-fun b!8027450 () Bool)

(declare-fun res!3174631 () Bool)

(declare-fun e!4729156 () Bool)

(assert (=> b!8027450 (=> (not res!3174631) (not e!4729156))))

(declare-datatypes ((B!4401 0))(
  ( (B!4402 (val!32600 Int)) )
))
(declare-datatypes ((List!75116 0))(
  ( (Nil!74990) (Cons!74990 (h!81438 B!4401) (t!390872 List!75116)) )
))
(declare-fun p1!159 () List!75116)

(declare-fun p2!159 () List!75116)

(declare-fun size!43725 (List!75116) Int)

(assert (=> b!8027450 (= res!3174631 (< (size!43725 p1!159) (size!43725 p2!159)))))

(declare-fun b!8027451 () Bool)

(assert (=> b!8027451 (= e!4729156 (not true))))

(declare-fun lt!2721264 () List!75116)

(declare-fun isPrefix!6865 (List!75116 List!75116) Bool)

(assert (=> b!8027451 (isPrefix!6865 p1!159 lt!2721264)))

(declare-datatypes ((Unit!170968 0))(
  ( (Unit!170969) )
))
(declare-fun lt!2721263 () Unit!170968)

(declare-fun s1!480 () List!75116)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3986 (List!75116 List!75116) Unit!170968)

(assert (=> b!8027451 (= lt!2721263 (lemmaConcatTwoListThenFirstIsPrefix!3986 p1!159 s1!480))))

(declare-fun b!8027452 () Bool)

(declare-fun e!4729154 () Bool)

(declare-fun tp_is_empty!54305 () Bool)

(declare-fun tp!2402301 () Bool)

(assert (=> b!8027452 (= e!4729154 (and tp_is_empty!54305 tp!2402301))))

(declare-fun b!8027453 () Bool)

(declare-fun e!4729155 () Bool)

(declare-fun tp!2402300 () Bool)

(assert (=> b!8027453 (= e!4729155 (and tp_is_empty!54305 tp!2402300))))

(declare-fun b!8027454 () Bool)

(declare-fun e!4729157 () Bool)

(assert (=> b!8027454 (= e!4729157 e!4729156)))

(declare-fun res!3174628 () Bool)

(assert (=> b!8027454 (=> (not res!3174628) (not e!4729156))))

(declare-fun l!3185 () List!75116)

(assert (=> b!8027454 (= res!3174628 (= lt!2721264 l!3185))))

(declare-fun ++!18592 (List!75116 List!75116) List!75116)

(assert (=> b!8027454 (= lt!2721264 (++!18592 p1!159 s1!480))))

(declare-fun b!8027455 () Bool)

(declare-fun e!4729158 () Bool)

(declare-fun tp!2402302 () Bool)

(assert (=> b!8027455 (= e!4729158 (and tp_is_empty!54305 tp!2402302))))

(declare-fun res!3174629 () Bool)

(assert (=> start!755996 (=> (not res!3174629) (not e!4729157))))

(assert (=> start!755996 (= res!3174629 (isPrefix!6865 p2!159 l!3185))))

(assert (=> start!755996 e!4729157))

(assert (=> start!755996 e!4729154))

(assert (=> start!755996 e!4729158))

(assert (=> start!755996 e!4729155))

(declare-fun e!4729159 () Bool)

(assert (=> start!755996 e!4729159))

(declare-fun b!8027456 () Bool)

(declare-fun res!3174630 () Bool)

(assert (=> b!8027456 (=> (not res!3174630) (not e!4729156))))

(declare-fun isEmpty!42998 (List!75116) Bool)

(assert (=> b!8027456 (= res!3174630 (not (isEmpty!42998 s1!480)))))

(declare-fun b!8027457 () Bool)

(declare-fun tp!2402303 () Bool)

(assert (=> b!8027457 (= e!4729159 (and tp_is_empty!54305 tp!2402303))))

(assert (= (and start!755996 res!3174629) b!8027454))

(assert (= (and b!8027454 res!3174628) b!8027456))

(assert (= (and b!8027456 res!3174630) b!8027450))

(assert (= (and b!8027450 res!3174631) b!8027451))

(get-info :version)

(assert (= (and start!755996 ((_ is Cons!74990) p2!159)) b!8027452))

(assert (= (and start!755996 ((_ is Cons!74990) l!3185)) b!8027455))

(assert (= (and start!755996 ((_ is Cons!74990) p1!159)) b!8027453))

(assert (= (and start!755996 ((_ is Cons!74990) s1!480)) b!8027457))

(declare-fun m!8389624 () Bool)

(assert (=> b!8027454 m!8389624))

(declare-fun m!8389626 () Bool)

(assert (=> b!8027450 m!8389626))

(declare-fun m!8389628 () Bool)

(assert (=> b!8027450 m!8389628))

(declare-fun m!8389630 () Bool)

(assert (=> b!8027456 m!8389630))

(declare-fun m!8389632 () Bool)

(assert (=> b!8027451 m!8389632))

(declare-fun m!8389634 () Bool)

(assert (=> b!8027451 m!8389634))

(declare-fun m!8389636 () Bool)

(assert (=> start!755996 m!8389636))

(check-sat (not b!8027453) (not b!8027457) tp_is_empty!54305 (not b!8027455) (not b!8027452) (not start!755996) (not b!8027454) (not b!8027456) (not b!8027451) (not b!8027450))
(check-sat)
