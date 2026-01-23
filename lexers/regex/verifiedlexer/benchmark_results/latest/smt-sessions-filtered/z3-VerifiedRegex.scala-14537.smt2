; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754976 () Bool)

(assert start!754976)

(declare-fun b!8020636 () Bool)

(declare-fun res!3171330 () Bool)

(declare-fun e!4724774 () Bool)

(assert (=> b!8020636 (=> (not res!3171330) (not e!4724774))))

(declare-datatypes ((B!4165 0))(
  ( (B!4166 (val!32472 Int)) )
))
(declare-datatypes ((List!74984 0))(
  ( (Nil!74860) (Cons!74860 (h!81308 B!4165) (t!390727 List!74984)) )
))
(declare-fun lt!2719852 () List!74984)

(declare-fun lt!2719850 () List!74984)

(declare-fun isPrefix!6791 (List!74984 List!74984) Bool)

(assert (=> b!8020636 (= res!3171330 (isPrefix!6791 lt!2719852 lt!2719850))))

(declare-fun b!8020637 () Bool)

(declare-fun res!3171326 () Bool)

(declare-fun e!4724775 () Bool)

(assert (=> b!8020637 (=> (not res!3171326) (not e!4724775))))

(declare-fun p2!173 () List!74984)

(declare-fun l!3353 () List!74984)

(assert (=> b!8020637 (= res!3171326 (isPrefix!6791 p2!173 l!3353))))

(declare-fun res!3171327 () Bool)

(assert (=> start!754976 (=> (not res!3171327) (not e!4724775))))

(declare-fun p1!173 () List!74984)

(assert (=> start!754976 (= res!3171327 (isPrefix!6791 p1!173 l!3353))))

(assert (=> start!754976 e!4724775))

(declare-fun e!4724772 () Bool)

(assert (=> start!754976 e!4724772))

(declare-fun e!4724771 () Bool)

(assert (=> start!754976 e!4724771))

(declare-fun e!4724773 () Bool)

(assert (=> start!754976 e!4724773))

(declare-fun b!8020638 () Bool)

(assert (=> b!8020638 (= e!4724774 false)))

(declare-fun lt!2719851 () Int)

(declare-fun size!43645 (List!74984) Int)

(assert (=> b!8020638 (= lt!2719851 (size!43645 lt!2719852))))

(declare-fun lt!2719853 () Int)

(assert (=> b!8020638 (= lt!2719853 (size!43645 (t!390727 p1!173)))))

(declare-fun b!8020639 () Bool)

(declare-fun tp_is_empty!54053 () Bool)

(declare-fun tp!2400545 () Bool)

(assert (=> b!8020639 (= e!4724772 (and tp_is_empty!54053 tp!2400545))))

(declare-fun b!8020640 () Bool)

(declare-fun tp!2400546 () Bool)

(assert (=> b!8020640 (= e!4724773 (and tp_is_empty!54053 tp!2400546))))

(declare-fun b!8020641 () Bool)

(assert (=> b!8020641 (= e!4724775 e!4724774)))

(declare-fun res!3171325 () Bool)

(assert (=> b!8020641 (=> (not res!3171325) (not e!4724774))))

(assert (=> b!8020641 (= res!3171325 (isPrefix!6791 (t!390727 p1!173) lt!2719850))))

(declare-fun tail!15935 (List!74984) List!74984)

(assert (=> b!8020641 (= lt!2719850 (tail!15935 l!3353))))

(assert (=> b!8020641 (= lt!2719852 (tail!15935 p2!173))))

(declare-fun b!8020642 () Bool)

(declare-fun res!3171328 () Bool)

(assert (=> b!8020642 (=> (not res!3171328) (not e!4724775))))

(get-info :version)

(assert (=> b!8020642 (= res!3171328 ((_ is Cons!74860) p1!173))))

(declare-fun b!8020643 () Bool)

(declare-fun tp!2400544 () Bool)

(assert (=> b!8020643 (= e!4724771 (and tp_is_empty!54053 tp!2400544))))

(declare-fun b!8020644 () Bool)

(declare-fun res!3171329 () Bool)

(assert (=> b!8020644 (=> (not res!3171329) (not e!4724775))))

(assert (=> b!8020644 (= res!3171329 (= (size!43645 p1!173) (size!43645 p2!173)))))

(assert (= (and start!754976 res!3171327) b!8020637))

(assert (= (and b!8020637 res!3171326) b!8020644))

(assert (= (and b!8020644 res!3171329) b!8020642))

(assert (= (and b!8020642 res!3171328) b!8020641))

(assert (= (and b!8020641 res!3171325) b!8020636))

(assert (= (and b!8020636 res!3171330) b!8020638))

(assert (= (and start!754976 ((_ is Cons!74860) p1!173)) b!8020639))

(assert (= (and start!754976 ((_ is Cons!74860) l!3353)) b!8020643))

(assert (= (and start!754976 ((_ is Cons!74860) p2!173)) b!8020640))

(declare-fun m!8383578 () Bool)

(assert (=> b!8020636 m!8383578))

(declare-fun m!8383580 () Bool)

(assert (=> b!8020644 m!8383580))

(declare-fun m!8383582 () Bool)

(assert (=> b!8020644 m!8383582))

(declare-fun m!8383584 () Bool)

(assert (=> b!8020638 m!8383584))

(declare-fun m!8383586 () Bool)

(assert (=> b!8020638 m!8383586))

(declare-fun m!8383588 () Bool)

(assert (=> b!8020637 m!8383588))

(declare-fun m!8383590 () Bool)

(assert (=> start!754976 m!8383590))

(declare-fun m!8383592 () Bool)

(assert (=> b!8020641 m!8383592))

(declare-fun m!8383594 () Bool)

(assert (=> b!8020641 m!8383594))

(declare-fun m!8383596 () Bool)

(assert (=> b!8020641 m!8383596))

(check-sat (not b!8020639) (not b!8020636) (not b!8020644) (not b!8020638) (not b!8020643) (not b!8020640) tp_is_empty!54053 (not b!8020637) (not start!754976) (not b!8020641))
(check-sat)
