; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534258 () Bool)

(assert start!534258)

(declare-fun b!5050850 () Bool)

(declare-fun res!2151012 () Bool)

(declare-fun e!3153443 () Bool)

(assert (=> b!5050850 (=> (not res!2151012) (not e!3153443))))

(declare-datatypes ((T!104796 0))(
  ( (T!104797 (val!23602 Int)) )
))
(declare-datatypes ((List!58512 0))(
  ( (Nil!58388) (Cons!58388 (h!64836 T!104796) (t!371151 List!58512)) )
))
(declare-fun l!2757 () List!58512)

(declare-fun isEmpty!31571 (List!58512) Bool)

(assert (=> b!5050850 (= res!2151012 (not (isEmpty!31571 l!2757)))))

(declare-fun b!5050851 () Bool)

(declare-fun e!3153444 () Bool)

(declare-fun tp_is_empty!36959 () Bool)

(declare-fun tp!1412236 () Bool)

(assert (=> b!5050851 (= e!3153444 (and tp_is_empty!36959 tp!1412236))))

(declare-fun b!5050853 () Bool)

(declare-fun e!3153441 () Bool)

(assert (=> b!5050853 (= e!3153441 false)))

(declare-fun lt!2086586 () Int)

(declare-fun lt!2086587 () List!58512)

(declare-fun size!39011 (List!58512) Int)

(assert (=> b!5050853 (= lt!2086586 (size!39011 lt!2086587))))

(declare-fun b!5050854 () Bool)

(declare-fun e!3153442 () Bool)

(declare-fun tp!1412237 () Bool)

(assert (=> b!5050854 (= e!3153442 (and tp_is_empty!36959 tp!1412237))))

(declare-fun b!5050855 () Bool)

(declare-fun res!2151015 () Bool)

(assert (=> b!5050855 (=> (not res!2151015) (not e!3153443))))

(declare-fun r!2041 () List!58512)

(assert (=> b!5050855 (= res!2151015 (and (not (= l!2757 Nil!58388)) (not (= r!2041 Nil!58388))))))

(declare-fun b!5050856 () Bool)

(declare-fun res!2151010 () Bool)

(assert (=> b!5050856 (=> (not res!2151010) (not e!3153443))))

(assert (=> b!5050856 (= res!2151010 (not (isEmpty!31571 r!2041)))))

(declare-fun b!5050857 () Bool)

(declare-fun res!2151013 () Bool)

(assert (=> b!5050857 (=> (not res!2151013) (not e!3153441))))

(declare-fun i!652 () Int)

(assert (=> b!5050857 (= res!2151013 (<= 0 (- i!652 1)))))

(declare-fun b!5050858 () Bool)

(declare-fun res!2151009 () Bool)

(assert (=> b!5050858 (=> (not res!2151009) (not e!3153443))))

(assert (=> b!5050858 (= res!2151009 (> i!652 0))))

(declare-fun b!5050859 () Bool)

(declare-fun res!2151014 () Bool)

(assert (=> b!5050859 (=> (not res!2151014) (not e!3153443))))

(assert (=> b!5050859 (= res!2151014 (<= i!652 (+ (size!39011 l!2757) (size!39011 r!2041))))))

(declare-fun res!2151011 () Bool)

(assert (=> start!534258 (=> (not res!2151011) (not e!3153443))))

(assert (=> start!534258 (= res!2151011 (<= 0 i!652))))

(assert (=> start!534258 e!3153443))

(assert (=> start!534258 true))

(assert (=> start!534258 e!3153442))

(assert (=> start!534258 e!3153444))

(declare-fun b!5050852 () Bool)

(assert (=> b!5050852 (= e!3153443 e!3153441)))

(declare-fun res!2151008 () Bool)

(assert (=> b!5050852 (=> (not res!2151008) (not e!3153441))))

(declare-fun tail!9942 (List!58512) List!58512)

(declare-fun ++!12755 (List!58512 List!58512) List!58512)

(assert (=> b!5050852 (= res!2151008 (= (tail!9942 (++!12755 l!2757 r!2041)) (++!12755 lt!2086587 r!2041)))))

(assert (=> b!5050852 (= lt!2086587 (tail!9942 l!2757))))

(assert (= (and start!534258 res!2151011) b!5050859))

(assert (= (and b!5050859 res!2151014) b!5050855))

(assert (= (and b!5050855 res!2151015) b!5050850))

(assert (= (and b!5050850 res!2151012) b!5050856))

(assert (= (and b!5050856 res!2151010) b!5050858))

(assert (= (and b!5050858 res!2151009) b!5050852))

(assert (= (and b!5050852 res!2151008) b!5050857))

(assert (= (and b!5050857 res!2151013) b!5050853))

(get-info :version)

(assert (= (and start!534258 ((_ is Cons!58388) l!2757)) b!5050854))

(assert (= (and start!534258 ((_ is Cons!58388) r!2041)) b!5050851))

(declare-fun m!6084984 () Bool)

(assert (=> b!5050850 m!6084984))

(declare-fun m!6084986 () Bool)

(assert (=> b!5050859 m!6084986))

(declare-fun m!6084988 () Bool)

(assert (=> b!5050859 m!6084988))

(declare-fun m!6084990 () Bool)

(assert (=> b!5050856 m!6084990))

(declare-fun m!6084992 () Bool)

(assert (=> b!5050853 m!6084992))

(declare-fun m!6084994 () Bool)

(assert (=> b!5050852 m!6084994))

(assert (=> b!5050852 m!6084994))

(declare-fun m!6084996 () Bool)

(assert (=> b!5050852 m!6084996))

(declare-fun m!6084998 () Bool)

(assert (=> b!5050852 m!6084998))

(declare-fun m!6085000 () Bool)

(assert (=> b!5050852 m!6085000))

(check-sat (not b!5050854) (not b!5050851) (not b!5050850) tp_is_empty!36959 (not b!5050852) (not b!5050859) (not b!5050856) (not b!5050853))
(check-sat)
