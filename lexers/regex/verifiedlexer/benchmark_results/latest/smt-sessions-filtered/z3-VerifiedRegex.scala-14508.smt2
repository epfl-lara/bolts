; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754552 () Bool)

(assert start!754552)

(declare-fun b!8017762 () Bool)

(declare-fun e!4722927 () Bool)

(assert (=> b!8017762 (= e!4722927 false)))

(declare-fun lt!2719099 () Bool)

(declare-datatypes ((B!4049 0))(
  ( (B!4050 (val!32414 Int)) )
))
(declare-datatypes ((List!74926 0))(
  ( (Nil!74802) (Cons!74802 (h!81250 B!4049) (t!390669 List!74926)) )
))
(declare-fun p!2003 () List!74926)

(declare-fun l!3425 () List!74926)

(declare-fun isPrefix!6749 (List!74926 List!74926) Bool)

(declare-fun tail!15890 (List!74926) List!74926)

(assert (=> b!8017762 (= lt!2719099 (isPrefix!6749 (tail!15890 p!2003) (tail!15890 l!3425)))))

(declare-fun b!8017763 () Bool)

(declare-fun e!4722926 () Bool)

(declare-fun tp_is_empty!53937 () Bool)

(declare-fun tp!2399918 () Bool)

(assert (=> b!8017763 (= e!4722926 (and tp_is_empty!53937 tp!2399918))))

(declare-fun b!8017764 () Bool)

(declare-fun e!4722925 () Bool)

(declare-fun tp!2399917 () Bool)

(assert (=> b!8017764 (= e!4722925 (and tp_is_empty!53937 tp!2399917))))

(declare-fun b!8017761 () Bool)

(declare-fun res!3170030 () Bool)

(assert (=> b!8017761 (=> (not res!3170030) (not e!4722927))))

(get-info :version)

(assert (=> b!8017761 (= res!3170030 (and (not ((_ is Nil!74802) p!2003)) (not ((_ is Nil!74802) l!3425))))))

(declare-fun res!3170029 () Bool)

(assert (=> start!754552 (=> (not res!3170029) (not e!4722927))))

(assert (=> start!754552 (= res!3170029 (isPrefix!6749 p!2003 l!3425))))

(assert (=> start!754552 e!4722927))

(assert (=> start!754552 e!4722926))

(assert (=> start!754552 e!4722925))

(assert (= (and start!754552 res!3170029) b!8017761))

(assert (= (and b!8017761 res!3170030) b!8017762))

(assert (= (and start!754552 ((_ is Cons!74802) p!2003)) b!8017763))

(assert (= (and start!754552 ((_ is Cons!74802) l!3425)) b!8017764))

(declare-fun m!8380870 () Bool)

(assert (=> b!8017762 m!8380870))

(declare-fun m!8380872 () Bool)

(assert (=> b!8017762 m!8380872))

(assert (=> b!8017762 m!8380870))

(assert (=> b!8017762 m!8380872))

(declare-fun m!8380874 () Bool)

(assert (=> b!8017762 m!8380874))

(declare-fun m!8380876 () Bool)

(assert (=> start!754552 m!8380876))

(check-sat (not b!8017762) tp_is_empty!53937 (not start!754552) (not b!8017763) (not b!8017764))
(check-sat)
