; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14054 () Bool)

(assert start!14054)

(declare-fun b!134664 () Bool)

(declare-fun res!62981 () Bool)

(declare-fun e!78059 () Bool)

(assert (=> b!134664 (=> (not res!62981) (not e!78059))))

(declare-datatypes ((B!833 0))(
  ( (B!834 (val!902 Int)) )
))
(declare-datatypes ((List!2220 0))(
  ( (Nil!2214) (Cons!2214 (h!7611 B!833) (t!22806 List!2220)) )
))
(declare-fun sub!16 () List!2220)

(get-info :version)

(assert (=> b!134664 (= res!62981 (not ((_ is Nil!2214) sub!16)))))

(declare-fun b!134665 () Bool)

(declare-fun e!78063 () Bool)

(declare-fun tp_is_empty!1477 () Bool)

(declare-fun tp!70767 () Bool)

(assert (=> b!134665 (= e!78063 (and tp_is_empty!1477 tp!70767))))

(declare-fun b!134666 () Bool)

(declare-fun e!78058 () Bool)

(assert (=> b!134666 (= e!78059 e!78058)))

(declare-fun res!62978 () Bool)

(assert (=> b!134666 (=> (not res!62978) (not e!78058))))

(declare-fun e!78061 () Bool)

(assert (=> b!134666 (= res!62978 e!78061)))

(declare-fun res!62980 () Bool)

(assert (=> b!134666 (=> res!62980 e!78061)))

(declare-fun lt!40594 () Bool)

(assert (=> b!134666 (= res!62980 lt!40594)))

(declare-fun lt!40593 () List!2220)

(assert (=> b!134666 (= lt!40594 (not ((_ is Cons!2214) lt!40593)))))

(declare-fun b!134667 () Bool)

(declare-fun e!78062 () Bool)

(declare-fun tp!70768 () Bool)

(assert (=> b!134667 (= e!78062 (and tp_is_empty!1477 tp!70768))))

(declare-fun b!134668 () Bool)

(declare-fun res!62979 () Bool)

(assert (=> b!134668 (=> (not res!62979) (not e!78058))))

(declare-fun subseq!61 (List!2220 List!2220) Bool)

(assert (=> b!134668 (= res!62979 (subseq!61 (t!22806 sub!16) (t!22806 lt!40593)))))

(declare-fun res!62977 () Bool)

(assert (=> start!14054 (=> (not res!62977) (not e!78059))))

(assert (=> start!14054 (= res!62977 (subseq!61 sub!16 lt!40593))))

(declare-fun l1!1230 () List!2220)

(declare-fun l2!1199 () List!2220)

(declare-fun ++!488 (List!2220 List!2220) List!2220)

(assert (=> start!14054 (= lt!40593 (++!488 l1!1230 l2!1199))))

(assert (=> start!14054 e!78059))

(assert (=> start!14054 e!78063))

(assert (=> start!14054 e!78062))

(declare-fun e!78060 () Bool)

(assert (=> start!14054 e!78060))

(declare-fun b!134669 () Bool)

(assert (=> b!134669 (= e!78058 false)))

(declare-fun lt!40592 () Bool)

(declare-fun tail!292 (List!2220) List!2220)

(assert (=> b!134669 (= lt!40592 (subseq!61 (t!22806 sub!16) (++!488 (tail!292 l1!1230) l2!1199)))))

(declare-fun b!134670 () Bool)

(declare-fun isEmpty!860 (List!2220) Bool)

(assert (=> b!134670 (= e!78061 (not (isEmpty!860 l1!1230)))))

(declare-fun b!134671 () Bool)

(declare-fun res!62982 () Bool)

(assert (=> b!134671 (=> (not res!62982) (not e!78058))))

(assert (=> b!134671 (= res!62982 (and (not lt!40594) (= (h!7611 sub!16) (h!7611 lt!40593))))))

(declare-fun b!134672 () Bool)

(declare-fun tp!70766 () Bool)

(assert (=> b!134672 (= e!78060 (and tp_is_empty!1477 tp!70766))))

(assert (= (and start!14054 res!62977) b!134664))

(assert (= (and b!134664 res!62981) b!134666))

(assert (= (and b!134666 (not res!62980)) b!134670))

(assert (= (and b!134666 res!62978) b!134671))

(assert (= (and b!134671 res!62982) b!134668))

(assert (= (and b!134668 res!62979) b!134669))

(assert (= (and start!14054 ((_ is Cons!2214) l1!1230)) b!134665))

(assert (= (and start!14054 ((_ is Cons!2214) l2!1199)) b!134667))

(assert (= (and start!14054 ((_ is Cons!2214) sub!16)) b!134672))

(declare-fun m!119675 () Bool)

(assert (=> b!134668 m!119675))

(declare-fun m!119677 () Bool)

(assert (=> start!14054 m!119677))

(declare-fun m!119679 () Bool)

(assert (=> start!14054 m!119679))

(declare-fun m!119681 () Bool)

(assert (=> b!134669 m!119681))

(assert (=> b!134669 m!119681))

(declare-fun m!119683 () Bool)

(assert (=> b!134669 m!119683))

(assert (=> b!134669 m!119683))

(declare-fun m!119685 () Bool)

(assert (=> b!134669 m!119685))

(declare-fun m!119687 () Bool)

(assert (=> b!134670 m!119687))

(check-sat (not b!134670) (not b!134667) tp_is_empty!1477 (not b!134672) (not b!134665) (not b!134668) (not b!134669) (not start!14054))
(check-sat)
