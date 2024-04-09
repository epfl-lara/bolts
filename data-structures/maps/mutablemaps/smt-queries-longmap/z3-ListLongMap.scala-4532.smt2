; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62732 () Bool)

(assert start!62732)

(declare-fun b!707664 () Bool)

(declare-fun res!471595 () Bool)

(declare-fun e!398211 () Bool)

(assert (=> b!707664 (=> (not res!471595) (not e!398211))))

(declare-datatypes ((array!40316 0))(
  ( (array!40317 (arr!19309 (Array (_ BitVec 32) (_ BitVec 64))) (size!19694 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40316)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707664 (= res!471595 (validKeyInArray!0 (select (arr!19309 a!3591) from!2969)))))

(declare-fun b!707665 () Bool)

(declare-datatypes ((List!13403 0))(
  ( (Nil!13400) (Cons!13399 (h!14444 (_ BitVec 64)) (t!19696 List!13403)) )
))
(declare-fun newAcc!49 () List!13403)

(declare-fun noDuplicate!1193 (List!13403) Bool)

(declare-fun $colon$colon!500 (List!13403 (_ BitVec 64)) List!13403)

(assert (=> b!707665 (= e!398211 (not (noDuplicate!1193 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(declare-fun b!707666 () Bool)

(declare-fun res!471598 () Bool)

(assert (=> b!707666 (=> (not res!471598) (not e!398211))))

(declare-fun acc!652 () List!13403)

(declare-fun contains!3946 (List!13403 (_ BitVec 64)) Bool)

(assert (=> b!707666 (= res!471598 (not (contains!3946 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!471603 () Bool)

(assert (=> start!62732 (=> (not res!471603) (not e!398211))))

(assert (=> start!62732 (= res!471603 (and (bvslt (size!19694 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19694 a!3591))))))

(assert (=> start!62732 e!398211))

(assert (=> start!62732 true))

(declare-fun array_inv!15083 (array!40316) Bool)

(assert (=> start!62732 (array_inv!15083 a!3591)))

(declare-fun b!707667 () Bool)

(declare-fun res!471596 () Bool)

(assert (=> b!707667 (=> (not res!471596) (not e!398211))))

(assert (=> b!707667 (= res!471596 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19694 a!3591)))))

(declare-fun b!707668 () Bool)

(declare-fun res!471607 () Bool)

(assert (=> b!707668 (=> (not res!471607) (not e!398211))))

(assert (=> b!707668 (= res!471607 (not (contains!3946 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707669 () Bool)

(declare-fun res!471594 () Bool)

(assert (=> b!707669 (=> (not res!471594) (not e!398211))))

(assert (=> b!707669 (= res!471594 (not (contains!3946 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707670 () Bool)

(declare-fun res!471608 () Bool)

(assert (=> b!707670 (=> (not res!471608) (not e!398211))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!707670 (= res!471608 (contains!3946 newAcc!49 k0!2824))))

(declare-fun b!707671 () Bool)

(declare-fun res!471599 () Bool)

(assert (=> b!707671 (=> (not res!471599) (not e!398211))))

(assert (=> b!707671 (= res!471599 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707672 () Bool)

(declare-fun res!471609 () Bool)

(assert (=> b!707672 (=> (not res!471609) (not e!398211))))

(assert (=> b!707672 (= res!471609 (not (contains!3946 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707673 () Bool)

(declare-fun res!471610 () Bool)

(assert (=> b!707673 (=> (not res!471610) (not e!398211))))

(declare-fun subseq!390 (List!13403 List!13403) Bool)

(assert (=> b!707673 (= res!471610 (subseq!390 acc!652 newAcc!49))))

(declare-fun b!707674 () Bool)

(declare-fun res!471601 () Bool)

(assert (=> b!707674 (=> (not res!471601) (not e!398211))))

(assert (=> b!707674 (= res!471601 (noDuplicate!1193 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))))))

(declare-fun b!707675 () Bool)

(declare-fun res!471605 () Bool)

(assert (=> b!707675 (=> (not res!471605) (not e!398211))))

(declare-fun arrayContainsKey!0 (array!40316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707675 (= res!471605 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!707676 () Bool)

(declare-fun res!471602 () Bool)

(assert (=> b!707676 (=> (not res!471602) (not e!398211))))

(assert (=> b!707676 (= res!471602 (not (contains!3946 acc!652 k0!2824)))))

(declare-fun b!707677 () Bool)

(declare-fun res!471600 () Bool)

(assert (=> b!707677 (=> (not res!471600) (not e!398211))))

(assert (=> b!707677 (= res!471600 (noDuplicate!1193 acc!652))))

(declare-fun b!707678 () Bool)

(declare-fun res!471597 () Bool)

(assert (=> b!707678 (=> (not res!471597) (not e!398211))))

(assert (=> b!707678 (= res!471597 (validKeyInArray!0 k0!2824))))

(declare-fun b!707679 () Bool)

(declare-fun res!471606 () Bool)

(assert (=> b!707679 (=> (not res!471606) (not e!398211))))

(declare-fun -!355 (List!13403 (_ BitVec 64)) List!13403)

(assert (=> b!707679 (= res!471606 (= (-!355 newAcc!49 k0!2824) acc!652))))

(declare-fun b!707680 () Bool)

(declare-fun res!471611 () Bool)

(assert (=> b!707680 (=> (not res!471611) (not e!398211))))

(assert (=> b!707680 (= res!471611 (noDuplicate!1193 newAcc!49))))

(declare-fun b!707681 () Bool)

(declare-fun res!471604 () Bool)

(assert (=> b!707681 (=> (not res!471604) (not e!398211))))

(declare-fun arrayNoDuplicates!0 (array!40316 (_ BitVec 32) List!13403) Bool)

(assert (=> b!707681 (= res!471604 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!62732 res!471603) b!707677))

(assert (= (and b!707677 res!471600) b!707680))

(assert (= (and b!707680 res!471611) b!707669))

(assert (= (and b!707669 res!471594) b!707666))

(assert (= (and b!707666 res!471598) b!707675))

(assert (= (and b!707675 res!471605) b!707676))

(assert (= (and b!707676 res!471602) b!707678))

(assert (= (and b!707678 res!471597) b!707681))

(assert (= (and b!707681 res!471604) b!707673))

(assert (= (and b!707673 res!471610) b!707670))

(assert (= (and b!707670 res!471608) b!707679))

(assert (= (and b!707679 res!471606) b!707668))

(assert (= (and b!707668 res!471607) b!707672))

(assert (= (and b!707672 res!471609) b!707667))

(assert (= (and b!707667 res!471596) b!707664))

(assert (= (and b!707664 res!471595) b!707671))

(assert (= (and b!707671 res!471599) b!707674))

(assert (= (and b!707674 res!471601) b!707665))

(declare-fun m!665215 () Bool)

(assert (=> b!707670 m!665215))

(declare-fun m!665217 () Bool)

(assert (=> b!707672 m!665217))

(declare-fun m!665219 () Bool)

(assert (=> b!707665 m!665219))

(assert (=> b!707665 m!665219))

(declare-fun m!665221 () Bool)

(assert (=> b!707665 m!665221))

(assert (=> b!707665 m!665221))

(declare-fun m!665223 () Bool)

(assert (=> b!707665 m!665223))

(declare-fun m!665225 () Bool)

(assert (=> start!62732 m!665225))

(declare-fun m!665227 () Bool)

(assert (=> b!707677 m!665227))

(assert (=> b!707674 m!665219))

(assert (=> b!707674 m!665219))

(declare-fun m!665229 () Bool)

(assert (=> b!707674 m!665229))

(assert (=> b!707674 m!665229))

(declare-fun m!665231 () Bool)

(assert (=> b!707674 m!665231))

(declare-fun m!665233 () Bool)

(assert (=> b!707681 m!665233))

(declare-fun m!665235 () Bool)

(assert (=> b!707678 m!665235))

(declare-fun m!665237 () Bool)

(assert (=> b!707676 m!665237))

(declare-fun m!665239 () Bool)

(assert (=> b!707668 m!665239))

(declare-fun m!665241 () Bool)

(assert (=> b!707680 m!665241))

(declare-fun m!665243 () Bool)

(assert (=> b!707679 m!665243))

(declare-fun m!665245 () Bool)

(assert (=> b!707673 m!665245))

(assert (=> b!707664 m!665219))

(assert (=> b!707664 m!665219))

(declare-fun m!665247 () Bool)

(assert (=> b!707664 m!665247))

(declare-fun m!665249 () Bool)

(assert (=> b!707666 m!665249))

(declare-fun m!665251 () Bool)

(assert (=> b!707675 m!665251))

(declare-fun m!665253 () Bool)

(assert (=> b!707669 m!665253))

(check-sat (not b!707681) (not b!707664) (not b!707672) (not b!707677) (not b!707670) (not b!707668) (not b!707666) (not b!707678) (not b!707679) (not b!707669) (not b!707665) (not b!707673) (not b!707680) (not b!707676) (not start!62732) (not b!707674) (not b!707675))
(check-sat)
(get-model)

(declare-fun d!96487 () Bool)

(declare-fun res!471670 () Bool)

(declare-fun e!398223 () Bool)

(assert (=> d!96487 (=> res!471670 e!398223)))

(get-info :version)

(assert (=> d!96487 (= res!471670 ((_ is Nil!13400) ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))))))

(assert (=> d!96487 (= (noDuplicate!1193 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))) e!398223)))

(declare-fun b!707740 () Bool)

(declare-fun e!398224 () Bool)

(assert (=> b!707740 (= e!398223 e!398224)))

(declare-fun res!471671 () Bool)

(assert (=> b!707740 (=> (not res!471671) (not e!398224))))

(assert (=> b!707740 (= res!471671 (not (contains!3946 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))) (h!14444 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))))))))

(declare-fun b!707741 () Bool)

(assert (=> b!707741 (= e!398224 (noDuplicate!1193 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(assert (= (and d!96487 (not res!471670)) b!707740))

(assert (= (and b!707740 res!471671) b!707741))

(declare-fun m!665295 () Bool)

(assert (=> b!707740 m!665295))

(declare-fun m!665297 () Bool)

(assert (=> b!707741 m!665297))

(assert (=> b!707665 d!96487))

(declare-fun d!96489 () Bool)

(assert (=> d!96489 (= ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)) (Cons!13399 (select (arr!19309 a!3591) from!2969) newAcc!49))))

(assert (=> b!707665 d!96489))

(declare-fun d!96491 () Bool)

(declare-fun lt!317982 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!337 (List!13403) (InoxSet (_ BitVec 64)))

(assert (=> d!96491 (= lt!317982 (select (content!337 acc!652) k0!2824))))

(declare-fun e!398230 () Bool)

(assert (=> d!96491 (= lt!317982 e!398230)))

(declare-fun res!471676 () Bool)

(assert (=> d!96491 (=> (not res!471676) (not e!398230))))

(assert (=> d!96491 (= res!471676 ((_ is Cons!13399) acc!652))))

(assert (=> d!96491 (= (contains!3946 acc!652 k0!2824) lt!317982)))

(declare-fun b!707746 () Bool)

(declare-fun e!398229 () Bool)

(assert (=> b!707746 (= e!398230 e!398229)))

(declare-fun res!471677 () Bool)

(assert (=> b!707746 (=> res!471677 e!398229)))

(assert (=> b!707746 (= res!471677 (= (h!14444 acc!652) k0!2824))))

(declare-fun b!707747 () Bool)

(assert (=> b!707747 (= e!398229 (contains!3946 (t!19696 acc!652) k0!2824))))

(assert (= (and d!96491 res!471676) b!707746))

(assert (= (and b!707746 (not res!471677)) b!707747))

(declare-fun m!665299 () Bool)

(assert (=> d!96491 m!665299))

(declare-fun m!665301 () Bool)

(assert (=> d!96491 m!665301))

(declare-fun m!665303 () Bool)

(assert (=> b!707747 m!665303))

(assert (=> b!707676 d!96491))

(declare-fun d!96495 () Bool)

(declare-fun res!471688 () Bool)

(declare-fun e!398243 () Bool)

(assert (=> d!96495 (=> res!471688 e!398243)))

(assert (=> d!96495 (= res!471688 (= (select (arr!19309 a!3591) from!2969) k0!2824))))

(assert (=> d!96495 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!398243)))

(declare-fun b!707762 () Bool)

(declare-fun e!398244 () Bool)

(assert (=> b!707762 (= e!398243 e!398244)))

(declare-fun res!471689 () Bool)

(assert (=> b!707762 (=> (not res!471689) (not e!398244))))

(assert (=> b!707762 (= res!471689 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19694 a!3591)))))

(declare-fun b!707763 () Bool)

(assert (=> b!707763 (= e!398244 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96495 (not res!471688)) b!707762))

(assert (= (and b!707762 res!471689) b!707763))

(assert (=> d!96495 m!665219))

(declare-fun m!665305 () Bool)

(assert (=> b!707763 m!665305))

(assert (=> b!707675 d!96495))

(declare-fun d!96497 () Bool)

(assert (=> d!96497 (= (validKeyInArray!0 (select (arr!19309 a!3591) from!2969)) (and (not (= (select (arr!19309 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19309 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707664 d!96497))

(declare-fun d!96501 () Bool)

(assert (=> d!96501 (= (array_inv!15083 a!3591) (bvsge (size!19694 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62732 d!96501))

(declare-fun d!96503 () Bool)

(declare-fun res!471690 () Bool)

(declare-fun e!398245 () Bool)

(assert (=> d!96503 (=> res!471690 e!398245)))

(assert (=> d!96503 (= res!471690 ((_ is Nil!13400) ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))))))

(assert (=> d!96503 (= (noDuplicate!1193 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))) e!398245)))

(declare-fun b!707764 () Bool)

(declare-fun e!398247 () Bool)

(assert (=> b!707764 (= e!398245 e!398247)))

(declare-fun res!471691 () Bool)

(assert (=> b!707764 (=> (not res!471691) (not e!398247))))

(assert (=> b!707764 (= res!471691 (not (contains!3946 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))) (h!14444 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))))))))

(declare-fun b!707765 () Bool)

(assert (=> b!707765 (= e!398247 (noDuplicate!1193 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(assert (= (and d!96503 (not res!471690)) b!707764))

(assert (= (and b!707764 res!471691) b!707765))

(declare-fun m!665307 () Bool)

(assert (=> b!707764 m!665307))

(declare-fun m!665309 () Bool)

(assert (=> b!707765 m!665309))

(assert (=> b!707674 d!96503))

(declare-fun d!96505 () Bool)

(assert (=> d!96505 (= ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)) (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652))))

(assert (=> b!707674 d!96505))

(declare-fun d!96507 () Bool)

(declare-fun lt!317983 () Bool)

(assert (=> d!96507 (= lt!317983 (select (content!337 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398252 () Bool)

(assert (=> d!96507 (= lt!317983 e!398252)))

(declare-fun res!471695 () Bool)

(assert (=> d!96507 (=> (not res!471695) (not e!398252))))

(assert (=> d!96507 (= res!471695 ((_ is Cons!13399) newAcc!49))))

(assert (=> d!96507 (= (contains!3946 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317983)))

(declare-fun b!707771 () Bool)

(declare-fun e!398251 () Bool)

(assert (=> b!707771 (= e!398252 e!398251)))

(declare-fun res!471696 () Bool)

(assert (=> b!707771 (=> res!471696 e!398251)))

(assert (=> b!707771 (= res!471696 (= (h!14444 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707772 () Bool)

(assert (=> b!707772 (= e!398251 (contains!3946 (t!19696 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96507 res!471695) b!707771))

(assert (= (and b!707771 (not res!471696)) b!707772))

(declare-fun m!665313 () Bool)

(assert (=> d!96507 m!665313))

(declare-fun m!665317 () Bool)

(assert (=> d!96507 m!665317))

(declare-fun m!665319 () Bool)

(assert (=> b!707772 m!665319))

(assert (=> b!707668 d!96507))

(declare-fun d!96509 () Bool)

(assert (=> d!96509 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707678 d!96509))

(declare-fun d!96513 () Bool)

(declare-fun res!471701 () Bool)

(declare-fun e!398257 () Bool)

(assert (=> d!96513 (=> res!471701 e!398257)))

(assert (=> d!96513 (= res!471701 ((_ is Nil!13400) acc!652))))

(assert (=> d!96513 (= (noDuplicate!1193 acc!652) e!398257)))

(declare-fun b!707777 () Bool)

(declare-fun e!398258 () Bool)

(assert (=> b!707777 (= e!398257 e!398258)))

(declare-fun res!471702 () Bool)

(assert (=> b!707777 (=> (not res!471702) (not e!398258))))

(assert (=> b!707777 (= res!471702 (not (contains!3946 (t!19696 acc!652) (h!14444 acc!652))))))

(declare-fun b!707778 () Bool)

(assert (=> b!707778 (= e!398258 (noDuplicate!1193 (t!19696 acc!652)))))

(assert (= (and d!96513 (not res!471701)) b!707777))

(assert (= (and b!707777 res!471702) b!707778))

(declare-fun m!665321 () Bool)

(assert (=> b!707777 m!665321))

(declare-fun m!665323 () Bool)

(assert (=> b!707778 m!665323))

(assert (=> b!707677 d!96513))

(declare-fun d!96515 () Bool)

(declare-fun lt!317986 () Bool)

(assert (=> d!96515 (= lt!317986 (select (content!337 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398260 () Bool)

(assert (=> d!96515 (= lt!317986 e!398260)))

(declare-fun res!471703 () Bool)

(assert (=> d!96515 (=> (not res!471703) (not e!398260))))

(assert (=> d!96515 (= res!471703 ((_ is Cons!13399) acc!652))))

(assert (=> d!96515 (= (contains!3946 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317986)))

(declare-fun b!707779 () Bool)

(declare-fun e!398259 () Bool)

(assert (=> b!707779 (= e!398260 e!398259)))

(declare-fun res!471704 () Bool)

(assert (=> b!707779 (=> res!471704 e!398259)))

(assert (=> b!707779 (= res!471704 (= (h!14444 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707780 () Bool)

(assert (=> b!707780 (= e!398259 (contains!3946 (t!19696 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96515 res!471703) b!707779))

(assert (= (and b!707779 (not res!471704)) b!707780))

(assert (=> d!96515 m!665299))

(declare-fun m!665325 () Bool)

(assert (=> d!96515 m!665325))

(declare-fun m!665327 () Bool)

(assert (=> b!707780 m!665327))

(assert (=> b!707666 d!96515))

(declare-fun b!707816 () Bool)

(declare-fun e!398289 () Bool)

(declare-fun e!398290 () Bool)

(assert (=> b!707816 (= e!398289 e!398290)))

(declare-fun c!78413 () Bool)

(assert (=> b!707816 (= c!78413 (validKeyInArray!0 (select (arr!19309 a!3591) from!2969)))))

(declare-fun d!96517 () Bool)

(declare-fun res!471726 () Bool)

(declare-fun e!398291 () Bool)

(assert (=> d!96517 (=> res!471726 e!398291)))

(assert (=> d!96517 (= res!471726 (bvsge from!2969 (size!19694 a!3591)))))

(assert (=> d!96517 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398291)))

(declare-fun b!707817 () Bool)

(declare-fun call!34382 () Bool)

(assert (=> b!707817 (= e!398290 call!34382)))

(declare-fun bm!34379 () Bool)

(assert (=> bm!34379 (= call!34382 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78413 (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!707818 () Bool)

(assert (=> b!707818 (= e!398290 call!34382)))

(declare-fun b!707819 () Bool)

(assert (=> b!707819 (= e!398291 e!398289)))

(declare-fun res!471724 () Bool)

(assert (=> b!707819 (=> (not res!471724) (not e!398289))))

(declare-fun e!398292 () Bool)

(assert (=> b!707819 (= res!471724 (not e!398292))))

(declare-fun res!471725 () Bool)

(assert (=> b!707819 (=> (not res!471725) (not e!398292))))

(assert (=> b!707819 (= res!471725 (validKeyInArray!0 (select (arr!19309 a!3591) from!2969)))))

(declare-fun b!707820 () Bool)

(assert (=> b!707820 (= e!398292 (contains!3946 acc!652 (select (arr!19309 a!3591) from!2969)))))

(assert (= (and d!96517 (not res!471726)) b!707819))

(assert (= (and b!707819 res!471725) b!707820))

(assert (= (and b!707819 res!471724) b!707816))

(assert (= (and b!707816 c!78413) b!707818))

(assert (= (and b!707816 (not c!78413)) b!707817))

(assert (= (or b!707818 b!707817) bm!34379))

(assert (=> b!707816 m!665219))

(assert (=> b!707816 m!665219))

(assert (=> b!707816 m!665247))

(assert (=> bm!34379 m!665219))

(declare-fun m!665353 () Bool)

(assert (=> bm!34379 m!665353))

(assert (=> b!707819 m!665219))

(assert (=> b!707819 m!665219))

(assert (=> b!707819 m!665247))

(assert (=> b!707820 m!665219))

(assert (=> b!707820 m!665219))

(declare-fun m!665355 () Bool)

(assert (=> b!707820 m!665355))

(assert (=> b!707681 d!96517))

(declare-fun d!96531 () Bool)

(declare-fun lt!317992 () Bool)

(assert (=> d!96531 (= lt!317992 (select (content!337 newAcc!49) k0!2824))))

(declare-fun e!398298 () Bool)

(assert (=> d!96531 (= lt!317992 e!398298)))

(declare-fun res!471731 () Bool)

(assert (=> d!96531 (=> (not res!471731) (not e!398298))))

(assert (=> d!96531 (= res!471731 ((_ is Cons!13399) newAcc!49))))

(assert (=> d!96531 (= (contains!3946 newAcc!49 k0!2824) lt!317992)))

(declare-fun b!707825 () Bool)

(declare-fun e!398297 () Bool)

(assert (=> b!707825 (= e!398298 e!398297)))

(declare-fun res!471732 () Bool)

(assert (=> b!707825 (=> res!471732 e!398297)))

(assert (=> b!707825 (= res!471732 (= (h!14444 newAcc!49) k0!2824))))

(declare-fun b!707826 () Bool)

(assert (=> b!707826 (= e!398297 (contains!3946 (t!19696 newAcc!49) k0!2824))))

(assert (= (and d!96531 res!471731) b!707825))

(assert (= (and b!707825 (not res!471732)) b!707826))

(assert (=> d!96531 m!665313))

(declare-fun m!665357 () Bool)

(assert (=> d!96531 m!665357))

(declare-fun m!665359 () Bool)

(assert (=> b!707826 m!665359))

(assert (=> b!707670 d!96531))

(declare-fun d!96533 () Bool)

(declare-fun lt!317993 () Bool)

(assert (=> d!96533 (= lt!317993 (select (content!337 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398300 () Bool)

(assert (=> d!96533 (= lt!317993 e!398300)))

(declare-fun res!471733 () Bool)

(assert (=> d!96533 (=> (not res!471733) (not e!398300))))

(assert (=> d!96533 (= res!471733 ((_ is Cons!13399) acc!652))))

(assert (=> d!96533 (= (contains!3946 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317993)))

(declare-fun b!707827 () Bool)

(declare-fun e!398299 () Bool)

(assert (=> b!707827 (= e!398300 e!398299)))

(declare-fun res!471734 () Bool)

(assert (=> b!707827 (=> res!471734 e!398299)))

(assert (=> b!707827 (= res!471734 (= (h!14444 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707828 () Bool)

(assert (=> b!707828 (= e!398299 (contains!3946 (t!19696 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96533 res!471733) b!707827))

(assert (= (and b!707827 (not res!471734)) b!707828))

(assert (=> d!96533 m!665299))

(declare-fun m!665361 () Bool)

(assert (=> d!96533 m!665361))

(declare-fun m!665363 () Bool)

(assert (=> b!707828 m!665363))

(assert (=> b!707669 d!96533))

(declare-fun d!96535 () Bool)

(declare-fun res!471739 () Bool)

(declare-fun e!398305 () Bool)

(assert (=> d!96535 (=> res!471739 e!398305)))

(assert (=> d!96535 (= res!471739 ((_ is Nil!13400) newAcc!49))))

(assert (=> d!96535 (= (noDuplicate!1193 newAcc!49) e!398305)))

(declare-fun b!707833 () Bool)

(declare-fun e!398306 () Bool)

(assert (=> b!707833 (= e!398305 e!398306)))

(declare-fun res!471740 () Bool)

(assert (=> b!707833 (=> (not res!471740) (not e!398306))))

(assert (=> b!707833 (= res!471740 (not (contains!3946 (t!19696 newAcc!49) (h!14444 newAcc!49))))))

(declare-fun b!707834 () Bool)

(assert (=> b!707834 (= e!398306 (noDuplicate!1193 (t!19696 newAcc!49)))))

(assert (= (and d!96535 (not res!471739)) b!707833))

(assert (= (and b!707833 res!471740) b!707834))

(declare-fun m!665365 () Bool)

(assert (=> b!707833 m!665365))

(declare-fun m!665367 () Bool)

(assert (=> b!707834 m!665367))

(assert (=> b!707680 d!96535))

(declare-fun lt!317999 () List!13403)

(declare-fun e!398343 () Bool)

(declare-fun b!707873 () Bool)

(assert (=> b!707873 (= e!398343 (= (content!337 lt!317999) ((_ map and) (content!337 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!96537 () Bool)

(assert (=> d!96537 e!398343))

(declare-fun res!471771 () Bool)

(assert (=> d!96537 (=> (not res!471771) (not e!398343))))

(declare-fun size!19697 (List!13403) Int)

(assert (=> d!96537 (= res!471771 (<= (size!19697 lt!317999) (size!19697 newAcc!49)))))

(declare-fun e!398344 () List!13403)

(assert (=> d!96537 (= lt!317999 e!398344)))

(declare-fun c!78419 () Bool)

(assert (=> d!96537 (= c!78419 ((_ is Cons!13399) newAcc!49))))

(assert (=> d!96537 (= (-!355 newAcc!49 k0!2824) lt!317999)))

(declare-fun b!707874 () Bool)

(declare-fun e!398342 () List!13403)

(declare-fun call!34385 () List!13403)

(assert (=> b!707874 (= e!398342 call!34385)))

(declare-fun b!707875 () Bool)

(assert (=> b!707875 (= e!398344 e!398342)))

(declare-fun c!78418 () Bool)

(assert (=> b!707875 (= c!78418 (= k0!2824 (h!14444 newAcc!49)))))

(declare-fun b!707876 () Bool)

(assert (=> b!707876 (= e!398344 Nil!13400)))

(declare-fun bm!34382 () Bool)

(assert (=> bm!34382 (= call!34385 (-!355 (t!19696 newAcc!49) k0!2824))))

(declare-fun b!707877 () Bool)

(assert (=> b!707877 (= e!398342 (Cons!13399 (h!14444 newAcc!49) call!34385))))

(assert (= (and d!96537 c!78419) b!707875))

(assert (= (and d!96537 (not c!78419)) b!707876))

(assert (= (and b!707875 c!78418) b!707874))

(assert (= (and b!707875 (not c!78418)) b!707877))

(assert (= (or b!707874 b!707877) bm!34382))

(assert (= (and d!96537 res!471771) b!707873))

(declare-fun m!665397 () Bool)

(assert (=> b!707873 m!665397))

(assert (=> b!707873 m!665313))

(declare-fun m!665399 () Bool)

(assert (=> b!707873 m!665399))

(declare-fun m!665401 () Bool)

(assert (=> d!96537 m!665401))

(declare-fun m!665403 () Bool)

(assert (=> d!96537 m!665403))

(declare-fun m!665405 () Bool)

(assert (=> bm!34382 m!665405))

(assert (=> b!707679 d!96537))

(declare-fun b!707911 () Bool)

(declare-fun e!398374 () Bool)

(assert (=> b!707911 (= e!398374 (subseq!390 acc!652 (t!19696 newAcc!49)))))

(declare-fun b!707908 () Bool)

(declare-fun e!398372 () Bool)

(declare-fun e!398375 () Bool)

(assert (=> b!707908 (= e!398372 e!398375)))

(declare-fun res!471795 () Bool)

(assert (=> b!707908 (=> (not res!471795) (not e!398375))))

(assert (=> b!707908 (= res!471795 ((_ is Cons!13399) newAcc!49))))

(declare-fun d!96563 () Bool)

(declare-fun res!471797 () Bool)

(assert (=> d!96563 (=> res!471797 e!398372)))

(assert (=> d!96563 (= res!471797 ((_ is Nil!13400) acc!652))))

(assert (=> d!96563 (= (subseq!390 acc!652 newAcc!49) e!398372)))

(declare-fun b!707909 () Bool)

(assert (=> b!707909 (= e!398375 e!398374)))

(declare-fun res!471796 () Bool)

(assert (=> b!707909 (=> res!471796 e!398374)))

(declare-fun e!398373 () Bool)

(assert (=> b!707909 (= res!471796 e!398373)))

(declare-fun res!471794 () Bool)

(assert (=> b!707909 (=> (not res!471794) (not e!398373))))

(assert (=> b!707909 (= res!471794 (= (h!14444 acc!652) (h!14444 newAcc!49)))))

(declare-fun b!707910 () Bool)

(assert (=> b!707910 (= e!398373 (subseq!390 (t!19696 acc!652) (t!19696 newAcc!49)))))

(assert (= (and d!96563 (not res!471797)) b!707908))

(assert (= (and b!707908 res!471795) b!707909))

(assert (= (and b!707909 res!471794) b!707910))

(assert (= (and b!707909 (not res!471796)) b!707911))

(declare-fun m!665413 () Bool)

(assert (=> b!707911 m!665413))

(declare-fun m!665417 () Bool)

(assert (=> b!707910 m!665417))

(assert (=> b!707673 d!96563))

(declare-fun d!96567 () Bool)

(declare-fun lt!318003 () Bool)

(assert (=> d!96567 (= lt!318003 (select (content!337 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398379 () Bool)

(assert (=> d!96567 (= lt!318003 e!398379)))

(declare-fun res!471800 () Bool)

(assert (=> d!96567 (=> (not res!471800) (not e!398379))))

(assert (=> d!96567 (= res!471800 ((_ is Cons!13399) newAcc!49))))

(assert (=> d!96567 (= (contains!3946 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318003)))

(declare-fun b!707914 () Bool)

(declare-fun e!398378 () Bool)

(assert (=> b!707914 (= e!398379 e!398378)))

(declare-fun res!471801 () Bool)

(assert (=> b!707914 (=> res!471801 e!398378)))

(assert (=> b!707914 (= res!471801 (= (h!14444 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707915 () Bool)

(assert (=> b!707915 (= e!398378 (contains!3946 (t!19696 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96567 res!471800) b!707914))

(assert (= (and b!707914 (not res!471801)) b!707915))

(assert (=> d!96567 m!665313))

(declare-fun m!665421 () Bool)

(assert (=> d!96567 m!665421))

(declare-fun m!665423 () Bool)

(assert (=> b!707915 m!665423))

(assert (=> b!707672 d!96567))

(check-sat (not b!707741) (not bm!34382) (not bm!34379) (not b!707772) (not d!96537) (not d!96515) (not b!707820) (not b!707777) (not b!707915) (not b!707819) (not b!707763) (not b!707780) (not b!707765) (not b!707747) (not d!96507) (not b!707911) (not b!707740) (not b!707764) (not b!707833) (not b!707826) (not d!96531) (not d!96567) (not b!707828) (not d!96491) (not b!707778) (not b!707816) (not d!96533) (not b!707873) (not b!707910) (not b!707834))
(check-sat)
(get-model)

(declare-fun d!96601 () Bool)

(declare-fun c!78431 () Bool)

(assert (=> d!96601 (= c!78431 ((_ is Nil!13400) acc!652))))

(declare-fun e!398425 () (InoxSet (_ BitVec 64)))

(assert (=> d!96601 (= (content!337 acc!652) e!398425)))

(declare-fun b!707968 () Bool)

(assert (=> b!707968 (= e!398425 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!707969 () Bool)

(assert (=> b!707969 (= e!398425 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!14444 acc!652) true) (content!337 (t!19696 acc!652))))))

(assert (= (and d!96601 c!78431) b!707968))

(assert (= (and d!96601 (not c!78431)) b!707969))

(declare-fun m!665487 () Bool)

(assert (=> b!707969 m!665487))

(declare-fun m!665489 () Bool)

(assert (=> b!707969 m!665489))

(assert (=> d!96491 d!96601))

(assert (=> d!96515 d!96601))

(declare-fun b!707970 () Bool)

(declare-fun e!398426 () Bool)

(declare-fun e!398427 () Bool)

(assert (=> b!707970 (= e!398426 e!398427)))

(declare-fun c!78432 () Bool)

(assert (=> b!707970 (= c!78432 (validKeyInArray!0 (select (arr!19309 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun d!96603 () Bool)

(declare-fun res!471842 () Bool)

(declare-fun e!398428 () Bool)

(assert (=> d!96603 (=> res!471842 e!398428)))

(assert (=> d!96603 (= res!471842 (bvsge (bvadd from!2969 #b00000000000000000000000000000001) (size!19694 a!3591)))))

(assert (=> d!96603 (= (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78413 (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652) acc!652)) e!398428)))

(declare-fun b!707971 () Bool)

(declare-fun call!34392 () Bool)

(assert (=> b!707971 (= e!398427 call!34392)))

(declare-fun bm!34389 () Bool)

(assert (=> bm!34389 (= call!34392 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78432 (Cons!13399 (select (arr!19309 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) (ite c!78413 (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652) acc!652)) (ite c!78413 (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652) acc!652))))))

(declare-fun b!707972 () Bool)

(assert (=> b!707972 (= e!398427 call!34392)))

(declare-fun b!707973 () Bool)

(assert (=> b!707973 (= e!398428 e!398426)))

(declare-fun res!471840 () Bool)

(assert (=> b!707973 (=> (not res!471840) (not e!398426))))

(declare-fun e!398429 () Bool)

(assert (=> b!707973 (= res!471840 (not e!398429))))

(declare-fun res!471841 () Bool)

(assert (=> b!707973 (=> (not res!471841) (not e!398429))))

(assert (=> b!707973 (= res!471841 (validKeyInArray!0 (select (arr!19309 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun b!707974 () Bool)

(assert (=> b!707974 (= e!398429 (contains!3946 (ite c!78413 (Cons!13399 (select (arr!19309 a!3591) from!2969) acc!652) acc!652) (select (arr!19309 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(assert (= (and d!96603 (not res!471842)) b!707973))

(assert (= (and b!707973 res!471841) b!707974))

(assert (= (and b!707973 res!471840) b!707970))

(assert (= (and b!707970 c!78432) b!707972))

(assert (= (and b!707970 (not c!78432)) b!707971))

(assert (= (or b!707972 b!707971) bm!34389))

(declare-fun m!665491 () Bool)

(assert (=> b!707970 m!665491))

(assert (=> b!707970 m!665491))

(declare-fun m!665493 () Bool)

(assert (=> b!707970 m!665493))

(assert (=> bm!34389 m!665491))

(declare-fun m!665495 () Bool)

(assert (=> bm!34389 m!665495))

(assert (=> b!707973 m!665491))

(assert (=> b!707973 m!665491))

(assert (=> b!707973 m!665493))

(assert (=> b!707974 m!665491))

(assert (=> b!707974 m!665491))

(declare-fun m!665497 () Bool)

(assert (=> b!707974 m!665497))

(assert (=> bm!34379 d!96603))

(declare-fun d!96605 () Bool)

(declare-fun res!471843 () Bool)

(declare-fun e!398430 () Bool)

(assert (=> d!96605 (=> res!471843 e!398430)))

(assert (=> d!96605 (= res!471843 ((_ is Nil!13400) (t!19696 newAcc!49)))))

(assert (=> d!96605 (= (noDuplicate!1193 (t!19696 newAcc!49)) e!398430)))

(declare-fun b!707975 () Bool)

(declare-fun e!398431 () Bool)

(assert (=> b!707975 (= e!398430 e!398431)))

(declare-fun res!471844 () Bool)

(assert (=> b!707975 (=> (not res!471844) (not e!398431))))

(assert (=> b!707975 (= res!471844 (not (contains!3946 (t!19696 (t!19696 newAcc!49)) (h!14444 (t!19696 newAcc!49)))))))

(declare-fun b!707976 () Bool)

(assert (=> b!707976 (= e!398431 (noDuplicate!1193 (t!19696 (t!19696 newAcc!49))))))

(assert (= (and d!96605 (not res!471843)) b!707975))

(assert (= (and b!707975 res!471844) b!707976))

(declare-fun m!665499 () Bool)

(assert (=> b!707975 m!665499))

(declare-fun m!665501 () Bool)

(assert (=> b!707976 m!665501))

(assert (=> b!707834 d!96605))

(declare-fun d!96607 () Bool)

(declare-fun lt!318013 () Bool)

(assert (=> d!96607 (= lt!318013 (select (content!337 acc!652) (select (arr!19309 a!3591) from!2969)))))

(declare-fun e!398433 () Bool)

(assert (=> d!96607 (= lt!318013 e!398433)))

(declare-fun res!471845 () Bool)

(assert (=> d!96607 (=> (not res!471845) (not e!398433))))

(assert (=> d!96607 (= res!471845 ((_ is Cons!13399) acc!652))))

(assert (=> d!96607 (= (contains!3946 acc!652 (select (arr!19309 a!3591) from!2969)) lt!318013)))

(declare-fun b!707977 () Bool)

(declare-fun e!398432 () Bool)

(assert (=> b!707977 (= e!398433 e!398432)))

(declare-fun res!471846 () Bool)

(assert (=> b!707977 (=> res!471846 e!398432)))

(assert (=> b!707977 (= res!471846 (= (h!14444 acc!652) (select (arr!19309 a!3591) from!2969)))))

(declare-fun b!707978 () Bool)

(assert (=> b!707978 (= e!398432 (contains!3946 (t!19696 acc!652) (select (arr!19309 a!3591) from!2969)))))

(assert (= (and d!96607 res!471845) b!707977))

(assert (= (and b!707977 (not res!471846)) b!707978))

(assert (=> d!96607 m!665299))

(assert (=> d!96607 m!665219))

(declare-fun m!665503 () Bool)

(assert (=> d!96607 m!665503))

(assert (=> b!707978 m!665219))

(declare-fun m!665505 () Bool)

(assert (=> b!707978 m!665505))

(assert (=> b!707820 d!96607))

(assert (=> b!707819 d!96497))

(declare-fun d!96609 () Bool)

(declare-fun lt!318014 () Bool)

(assert (=> d!96609 (= lt!318014 (select (content!337 (t!19696 newAcc!49)) k0!2824))))

(declare-fun e!398435 () Bool)

(assert (=> d!96609 (= lt!318014 e!398435)))

(declare-fun res!471847 () Bool)

(assert (=> d!96609 (=> (not res!471847) (not e!398435))))

(assert (=> d!96609 (= res!471847 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(assert (=> d!96609 (= (contains!3946 (t!19696 newAcc!49) k0!2824) lt!318014)))

(declare-fun b!707979 () Bool)

(declare-fun e!398434 () Bool)

(assert (=> b!707979 (= e!398435 e!398434)))

(declare-fun res!471848 () Bool)

(assert (=> b!707979 (=> res!471848 e!398434)))

(assert (=> b!707979 (= res!471848 (= (h!14444 (t!19696 newAcc!49)) k0!2824))))

(declare-fun b!707980 () Bool)

(assert (=> b!707980 (= e!398434 (contains!3946 (t!19696 (t!19696 newAcc!49)) k0!2824))))

(assert (= (and d!96609 res!471847) b!707979))

(assert (= (and b!707979 (not res!471848)) b!707980))

(declare-fun m!665507 () Bool)

(assert (=> d!96609 m!665507))

(declare-fun m!665509 () Bool)

(assert (=> d!96609 m!665509))

(declare-fun m!665511 () Bool)

(assert (=> b!707980 m!665511))

(assert (=> b!707826 d!96609))

(declare-fun d!96611 () Bool)

(declare-fun c!78433 () Bool)

(assert (=> d!96611 (= c!78433 ((_ is Nil!13400) newAcc!49))))

(declare-fun e!398436 () (InoxSet (_ BitVec 64)))

(assert (=> d!96611 (= (content!337 newAcc!49) e!398436)))

(declare-fun b!707981 () Bool)

(assert (=> b!707981 (= e!398436 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!707982 () Bool)

(assert (=> b!707982 (= e!398436 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!14444 newAcc!49) true) (content!337 (t!19696 newAcc!49))))))

(assert (= (and d!96611 c!78433) b!707981))

(assert (= (and d!96611 (not c!78433)) b!707982))

(declare-fun m!665513 () Bool)

(assert (=> b!707982 m!665513))

(assert (=> b!707982 m!665507))

(assert (=> d!96531 d!96611))

(assert (=> d!96567 d!96611))

(declare-fun d!96613 () Bool)

(declare-fun lt!318015 () Bool)

(assert (=> d!96613 (= lt!318015 (select (content!337 (t!19696 acc!652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398438 () Bool)

(assert (=> d!96613 (= lt!318015 e!398438)))

(declare-fun res!471849 () Bool)

(assert (=> d!96613 (=> (not res!471849) (not e!398438))))

(assert (=> d!96613 (= res!471849 ((_ is Cons!13399) (t!19696 acc!652)))))

(assert (=> d!96613 (= (contains!3946 (t!19696 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000) lt!318015)))

(declare-fun b!707983 () Bool)

(declare-fun e!398437 () Bool)

(assert (=> b!707983 (= e!398438 e!398437)))

(declare-fun res!471850 () Bool)

(assert (=> b!707983 (=> res!471850 e!398437)))

(assert (=> b!707983 (= res!471850 (= (h!14444 (t!19696 acc!652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707984 () Bool)

(assert (=> b!707984 (= e!398437 (contains!3946 (t!19696 (t!19696 acc!652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96613 res!471849) b!707983))

(assert (= (and b!707983 (not res!471850)) b!707984))

(assert (=> d!96613 m!665489))

(declare-fun m!665515 () Bool)

(assert (=> d!96613 m!665515))

(declare-fun m!665517 () Bool)

(assert (=> b!707984 m!665517))

(assert (=> b!707828 d!96613))

(declare-fun d!96615 () Bool)

(declare-fun res!471851 () Bool)

(declare-fun e!398439 () Bool)

(assert (=> d!96615 (=> res!471851 e!398439)))

(assert (=> d!96615 (= res!471851 ((_ is Nil!13400) (t!19696 acc!652)))))

(assert (=> d!96615 (= (noDuplicate!1193 (t!19696 acc!652)) e!398439)))

(declare-fun b!707985 () Bool)

(declare-fun e!398440 () Bool)

(assert (=> b!707985 (= e!398439 e!398440)))

(declare-fun res!471852 () Bool)

(assert (=> b!707985 (=> (not res!471852) (not e!398440))))

(assert (=> b!707985 (= res!471852 (not (contains!3946 (t!19696 (t!19696 acc!652)) (h!14444 (t!19696 acc!652)))))))

(declare-fun b!707986 () Bool)

(assert (=> b!707986 (= e!398440 (noDuplicate!1193 (t!19696 (t!19696 acc!652))))))

(assert (= (and d!96615 (not res!471851)) b!707985))

(assert (= (and b!707985 res!471852) b!707986))

(declare-fun m!665519 () Bool)

(assert (=> b!707985 m!665519))

(declare-fun m!665521 () Bool)

(assert (=> b!707986 m!665521))

(assert (=> b!707778 d!96615))

(assert (=> b!707816 d!96497))

(declare-fun d!96617 () Bool)

(declare-fun lt!318016 () Bool)

(assert (=> d!96617 (= lt!318016 (select (content!337 (t!19696 newAcc!49)) (h!14444 newAcc!49)))))

(declare-fun e!398442 () Bool)

(assert (=> d!96617 (= lt!318016 e!398442)))

(declare-fun res!471853 () Bool)

(assert (=> d!96617 (=> (not res!471853) (not e!398442))))

(assert (=> d!96617 (= res!471853 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(assert (=> d!96617 (= (contains!3946 (t!19696 newAcc!49) (h!14444 newAcc!49)) lt!318016)))

(declare-fun b!707987 () Bool)

(declare-fun e!398441 () Bool)

(assert (=> b!707987 (= e!398442 e!398441)))

(declare-fun res!471854 () Bool)

(assert (=> b!707987 (=> res!471854 e!398441)))

(assert (=> b!707987 (= res!471854 (= (h!14444 (t!19696 newAcc!49)) (h!14444 newAcc!49)))))

(declare-fun b!707988 () Bool)

(assert (=> b!707988 (= e!398441 (contains!3946 (t!19696 (t!19696 newAcc!49)) (h!14444 newAcc!49)))))

(assert (= (and d!96617 res!471853) b!707987))

(assert (= (and b!707987 (not res!471854)) b!707988))

(assert (=> d!96617 m!665507))

(declare-fun m!665523 () Bool)

(assert (=> d!96617 m!665523))

(declare-fun m!665525 () Bool)

(assert (=> b!707988 m!665525))

(assert (=> b!707833 d!96617))

(declare-fun b!707992 () Bool)

(declare-fun e!398445 () Bool)

(assert (=> b!707992 (= e!398445 (subseq!390 acc!652 (t!19696 (t!19696 newAcc!49))))))

(declare-fun b!707989 () Bool)

(declare-fun e!398443 () Bool)

(declare-fun e!398446 () Bool)

(assert (=> b!707989 (= e!398443 e!398446)))

(declare-fun res!471856 () Bool)

(assert (=> b!707989 (=> (not res!471856) (not e!398446))))

(assert (=> b!707989 (= res!471856 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(declare-fun d!96619 () Bool)

(declare-fun res!471858 () Bool)

(assert (=> d!96619 (=> res!471858 e!398443)))

(assert (=> d!96619 (= res!471858 ((_ is Nil!13400) acc!652))))

(assert (=> d!96619 (= (subseq!390 acc!652 (t!19696 newAcc!49)) e!398443)))

(declare-fun b!707990 () Bool)

(assert (=> b!707990 (= e!398446 e!398445)))

(declare-fun res!471857 () Bool)

(assert (=> b!707990 (=> res!471857 e!398445)))

(declare-fun e!398444 () Bool)

(assert (=> b!707990 (= res!471857 e!398444)))

(declare-fun res!471855 () Bool)

(assert (=> b!707990 (=> (not res!471855) (not e!398444))))

(assert (=> b!707990 (= res!471855 (= (h!14444 acc!652) (h!14444 (t!19696 newAcc!49))))))

(declare-fun b!707991 () Bool)

(assert (=> b!707991 (= e!398444 (subseq!390 (t!19696 acc!652) (t!19696 (t!19696 newAcc!49))))))

(assert (= (and d!96619 (not res!471858)) b!707989))

(assert (= (and b!707989 res!471856) b!707990))

(assert (= (and b!707990 res!471855) b!707991))

(assert (= (and b!707990 (not res!471857)) b!707992))

(declare-fun m!665527 () Bool)

(assert (=> b!707992 m!665527))

(declare-fun m!665529 () Bool)

(assert (=> b!707991 m!665529))

(assert (=> b!707911 d!96619))

(declare-fun d!96621 () Bool)

(declare-fun lt!318017 () Bool)

(assert (=> d!96621 (= lt!318017 (select (content!337 (t!19696 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398448 () Bool)

(assert (=> d!96621 (= lt!318017 e!398448)))

(declare-fun res!471859 () Bool)

(assert (=> d!96621 (=> (not res!471859) (not e!398448))))

(assert (=> d!96621 (= res!471859 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(assert (=> d!96621 (= (contains!3946 (t!19696 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000) lt!318017)))

(declare-fun b!707993 () Bool)

(declare-fun e!398447 () Bool)

(assert (=> b!707993 (= e!398448 e!398447)))

(declare-fun res!471860 () Bool)

(assert (=> b!707993 (=> res!471860 e!398447)))

(assert (=> b!707993 (= res!471860 (= (h!14444 (t!19696 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707994 () Bool)

(assert (=> b!707994 (= e!398447 (contains!3946 (t!19696 (t!19696 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96621 res!471859) b!707993))

(assert (= (and b!707993 (not res!471860)) b!707994))

(assert (=> d!96621 m!665507))

(declare-fun m!665531 () Bool)

(assert (=> d!96621 m!665531))

(declare-fun m!665533 () Bool)

(assert (=> b!707994 m!665533))

(assert (=> b!707772 d!96621))

(declare-fun b!707998 () Bool)

(declare-fun e!398451 () Bool)

(assert (=> b!707998 (= e!398451 (subseq!390 (t!19696 acc!652) (t!19696 (t!19696 newAcc!49))))))

(declare-fun b!707995 () Bool)

(declare-fun e!398449 () Bool)

(declare-fun e!398452 () Bool)

(assert (=> b!707995 (= e!398449 e!398452)))

(declare-fun res!471862 () Bool)

(assert (=> b!707995 (=> (not res!471862) (not e!398452))))

(assert (=> b!707995 (= res!471862 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(declare-fun d!96623 () Bool)

(declare-fun res!471864 () Bool)

(assert (=> d!96623 (=> res!471864 e!398449)))

(assert (=> d!96623 (= res!471864 ((_ is Nil!13400) (t!19696 acc!652)))))

(assert (=> d!96623 (= (subseq!390 (t!19696 acc!652) (t!19696 newAcc!49)) e!398449)))

(declare-fun b!707996 () Bool)

(assert (=> b!707996 (= e!398452 e!398451)))

(declare-fun res!471863 () Bool)

(assert (=> b!707996 (=> res!471863 e!398451)))

(declare-fun e!398450 () Bool)

(assert (=> b!707996 (= res!471863 e!398450)))

(declare-fun res!471861 () Bool)

(assert (=> b!707996 (=> (not res!471861) (not e!398450))))

(assert (=> b!707996 (= res!471861 (= (h!14444 (t!19696 acc!652)) (h!14444 (t!19696 newAcc!49))))))

(declare-fun b!707997 () Bool)

(assert (=> b!707997 (= e!398450 (subseq!390 (t!19696 (t!19696 acc!652)) (t!19696 (t!19696 newAcc!49))))))

(assert (= (and d!96623 (not res!471864)) b!707995))

(assert (= (and b!707995 res!471862) b!707996))

(assert (= (and b!707996 res!471861) b!707997))

(assert (= (and b!707996 (not res!471863)) b!707998))

(assert (=> b!707998 m!665529))

(declare-fun m!665535 () Bool)

(assert (=> b!707997 m!665535))

(assert (=> b!707910 d!96623))

(declare-fun d!96625 () Bool)

(declare-fun lt!318018 () Bool)

(assert (=> d!96625 (= lt!318018 (select (content!337 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(declare-fun e!398454 () Bool)

(assert (=> d!96625 (= lt!318018 e!398454)))

(declare-fun res!471865 () Bool)

(assert (=> d!96625 (=> (not res!471865) (not e!398454))))

(assert (=> d!96625 (= res!471865 ((_ is Cons!13399) (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(assert (=> d!96625 (= (contains!3946 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))) (h!14444 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) lt!318018)))

(declare-fun b!707999 () Bool)

(declare-fun e!398453 () Bool)

(assert (=> b!707999 (= e!398454 e!398453)))

(declare-fun res!471866 () Bool)

(assert (=> b!707999 (=> res!471866 e!398453)))

(assert (=> b!707999 (= res!471866 (= (h!14444 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(declare-fun b!708000 () Bool)

(assert (=> b!708000 (= e!398453 (contains!3946 (t!19696 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(assert (= (and d!96625 res!471865) b!707999))

(assert (= (and b!707999 (not res!471866)) b!708000))

(declare-fun m!665537 () Bool)

(assert (=> d!96625 m!665537))

(declare-fun m!665539 () Bool)

(assert (=> d!96625 m!665539))

(declare-fun m!665541 () Bool)

(assert (=> b!708000 m!665541))

(assert (=> b!707764 d!96625))

(assert (=> d!96507 d!96611))

(declare-fun d!96627 () Bool)

(declare-fun res!471867 () Bool)

(declare-fun e!398455 () Bool)

(assert (=> d!96627 (=> res!471867 e!398455)))

(assert (=> d!96627 (= res!471867 ((_ is Nil!13400) (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(assert (=> d!96627 (= (noDuplicate!1193 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) e!398455)))

(declare-fun b!708001 () Bool)

(declare-fun e!398456 () Bool)

(assert (=> b!708001 (= e!398455 e!398456)))

(declare-fun res!471868 () Bool)

(assert (=> b!708001 (=> (not res!471868) (not e!398456))))

(assert (=> b!708001 (= res!471868 (not (contains!3946 (t!19696 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) (h!14444 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))))

(declare-fun b!708002 () Bool)

(assert (=> b!708002 (= e!398456 (noDuplicate!1193 (t!19696 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))))))))

(assert (= (and d!96627 (not res!471867)) b!708001))

(assert (= (and b!708001 res!471868) b!708002))

(declare-fun m!665543 () Bool)

(assert (=> b!708001 m!665543))

(declare-fun m!665545 () Bool)

(assert (=> b!708002 m!665545))

(assert (=> b!707741 d!96627))

(declare-fun d!96629 () Bool)

(declare-fun lt!318021 () Int)

(assert (=> d!96629 (>= lt!318021 0)))

(declare-fun e!398459 () Int)

(assert (=> d!96629 (= lt!318021 e!398459)))

(declare-fun c!78436 () Bool)

(assert (=> d!96629 (= c!78436 ((_ is Nil!13400) lt!317999))))

(assert (=> d!96629 (= (size!19697 lt!317999) lt!318021)))

(declare-fun b!708007 () Bool)

(assert (=> b!708007 (= e!398459 0)))

(declare-fun b!708008 () Bool)

(assert (=> b!708008 (= e!398459 (+ 1 (size!19697 (t!19696 lt!317999))))))

(assert (= (and d!96629 c!78436) b!708007))

(assert (= (and d!96629 (not c!78436)) b!708008))

(declare-fun m!665547 () Bool)

(assert (=> b!708008 m!665547))

(assert (=> d!96537 d!96629))

(declare-fun d!96631 () Bool)

(declare-fun lt!318022 () Int)

(assert (=> d!96631 (>= lt!318022 0)))

(declare-fun e!398460 () Int)

(assert (=> d!96631 (= lt!318022 e!398460)))

(declare-fun c!78437 () Bool)

(assert (=> d!96631 (= c!78437 ((_ is Nil!13400) newAcc!49))))

(assert (=> d!96631 (= (size!19697 newAcc!49) lt!318022)))

(declare-fun b!708009 () Bool)

(assert (=> b!708009 (= e!398460 0)))

(declare-fun b!708010 () Bool)

(assert (=> b!708010 (= e!398460 (+ 1 (size!19697 (t!19696 newAcc!49))))))

(assert (= (and d!96631 c!78437) b!708009))

(assert (= (and d!96631 (not c!78437)) b!708010))

(declare-fun m!665549 () Bool)

(assert (=> b!708010 m!665549))

(assert (=> d!96537 d!96631))

(declare-fun d!96633 () Bool)

(declare-fun lt!318023 () Bool)

(assert (=> d!96633 (= lt!318023 (select (content!337 (t!19696 acc!652)) (h!14444 acc!652)))))

(declare-fun e!398462 () Bool)

(assert (=> d!96633 (= lt!318023 e!398462)))

(declare-fun res!471869 () Bool)

(assert (=> d!96633 (=> (not res!471869) (not e!398462))))

(assert (=> d!96633 (= res!471869 ((_ is Cons!13399) (t!19696 acc!652)))))

(assert (=> d!96633 (= (contains!3946 (t!19696 acc!652) (h!14444 acc!652)) lt!318023)))

(declare-fun b!708011 () Bool)

(declare-fun e!398461 () Bool)

(assert (=> b!708011 (= e!398462 e!398461)))

(declare-fun res!471870 () Bool)

(assert (=> b!708011 (=> res!471870 e!398461)))

(assert (=> b!708011 (= res!471870 (= (h!14444 (t!19696 acc!652)) (h!14444 acc!652)))))

(declare-fun b!708012 () Bool)

(assert (=> b!708012 (= e!398461 (contains!3946 (t!19696 (t!19696 acc!652)) (h!14444 acc!652)))))

(assert (= (and d!96633 res!471869) b!708011))

(assert (= (and b!708011 (not res!471870)) b!708012))

(assert (=> d!96633 m!665489))

(declare-fun m!665551 () Bool)

(assert (=> d!96633 m!665551))

(declare-fun m!665553 () Bool)

(assert (=> b!708012 m!665553))

(assert (=> b!707777 d!96633))

(declare-fun d!96635 () Bool)

(declare-fun res!471871 () Bool)

(declare-fun e!398463 () Bool)

(assert (=> d!96635 (=> res!471871 e!398463)))

(assert (=> d!96635 (= res!471871 ((_ is Nil!13400) (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))

(assert (=> d!96635 (= (noDuplicate!1193 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) e!398463)))

(declare-fun b!708013 () Bool)

(declare-fun e!398464 () Bool)

(assert (=> b!708013 (= e!398463 e!398464)))

(declare-fun res!471872 () Bool)

(assert (=> b!708013 (=> (not res!471872) (not e!398464))))

(assert (=> b!708013 (= res!471872 (not (contains!3946 (t!19696 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))) (h!14444 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969)))))))))

(declare-fun b!708014 () Bool)

(assert (=> b!708014 (= e!398464 (noDuplicate!1193 (t!19696 (t!19696 ($colon$colon!500 acc!652 (select (arr!19309 a!3591) from!2969))))))))

(assert (= (and d!96635 (not res!471871)) b!708013))

(assert (= (and b!708013 res!471872) b!708014))

(declare-fun m!665555 () Bool)

(assert (=> b!708013 m!665555))

(declare-fun m!665557 () Bool)

(assert (=> b!708014 m!665557))

(assert (=> b!707765 d!96635))

(declare-fun d!96637 () Bool)

(declare-fun lt!318024 () Bool)

(assert (=> d!96637 (= lt!318024 (select (content!337 (t!19696 acc!652)) k0!2824))))

(declare-fun e!398466 () Bool)

(assert (=> d!96637 (= lt!318024 e!398466)))

(declare-fun res!471873 () Bool)

(assert (=> d!96637 (=> (not res!471873) (not e!398466))))

(assert (=> d!96637 (= res!471873 ((_ is Cons!13399) (t!19696 acc!652)))))

(assert (=> d!96637 (= (contains!3946 (t!19696 acc!652) k0!2824) lt!318024)))

(declare-fun b!708015 () Bool)

(declare-fun e!398465 () Bool)

(assert (=> b!708015 (= e!398466 e!398465)))

(declare-fun res!471874 () Bool)

(assert (=> b!708015 (=> res!471874 e!398465)))

(assert (=> b!708015 (= res!471874 (= (h!14444 (t!19696 acc!652)) k0!2824))))

(declare-fun b!708016 () Bool)

(assert (=> b!708016 (= e!398465 (contains!3946 (t!19696 (t!19696 acc!652)) k0!2824))))

(assert (= (and d!96637 res!471873) b!708015))

(assert (= (and b!708015 (not res!471874)) b!708016))

(assert (=> d!96637 m!665489))

(declare-fun m!665559 () Bool)

(assert (=> d!96637 m!665559))

(declare-fun m!665561 () Bool)

(assert (=> b!708016 m!665561))

(assert (=> b!707747 d!96637))

(declare-fun d!96639 () Bool)

(declare-fun lt!318025 () Bool)

(assert (=> d!96639 (= lt!318025 (select (content!337 (t!19696 acc!652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398468 () Bool)

(assert (=> d!96639 (= lt!318025 e!398468)))

(declare-fun res!471875 () Bool)

(assert (=> d!96639 (=> (not res!471875) (not e!398468))))

(assert (=> d!96639 (= res!471875 ((_ is Cons!13399) (t!19696 acc!652)))))

(assert (=> d!96639 (= (contains!3946 (t!19696 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000) lt!318025)))

(declare-fun b!708017 () Bool)

(declare-fun e!398467 () Bool)

(assert (=> b!708017 (= e!398468 e!398467)))

(declare-fun res!471876 () Bool)

(assert (=> b!708017 (=> res!471876 e!398467)))

(assert (=> b!708017 (= res!471876 (= (h!14444 (t!19696 acc!652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708018 () Bool)

(assert (=> b!708018 (= e!398467 (contains!3946 (t!19696 (t!19696 acc!652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96639 res!471875) b!708017))

(assert (= (and b!708017 (not res!471876)) b!708018))

(assert (=> d!96639 m!665489))

(declare-fun m!665563 () Bool)

(assert (=> d!96639 m!665563))

(declare-fun m!665565 () Bool)

(assert (=> b!708018 m!665565))

(assert (=> b!707780 d!96639))

(declare-fun d!96641 () Bool)

(declare-fun c!78438 () Bool)

(assert (=> d!96641 (= c!78438 ((_ is Nil!13400) lt!317999))))

(declare-fun e!398469 () (InoxSet (_ BitVec 64)))

(assert (=> d!96641 (= (content!337 lt!317999) e!398469)))

(declare-fun b!708019 () Bool)

(assert (=> b!708019 (= e!398469 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!708020 () Bool)

(assert (=> b!708020 (= e!398469 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!14444 lt!317999) true) (content!337 (t!19696 lt!317999))))))

(assert (= (and d!96641 c!78438) b!708019))

(assert (= (and d!96641 (not c!78438)) b!708020))

(declare-fun m!665567 () Bool)

(assert (=> b!708020 m!665567))

(declare-fun m!665569 () Bool)

(assert (=> b!708020 m!665569))

(assert (=> b!707873 d!96641))

(assert (=> b!707873 d!96611))

(declare-fun d!96643 () Bool)

(declare-fun lt!318026 () Bool)

(assert (=> d!96643 (= lt!318026 (select (content!337 (t!19696 newAcc!49)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398471 () Bool)

(assert (=> d!96643 (= lt!318026 e!398471)))

(declare-fun res!471877 () Bool)

(assert (=> d!96643 (=> (not res!471877) (not e!398471))))

(assert (=> d!96643 (= res!471877 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(assert (=> d!96643 (= (contains!3946 (t!19696 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000) lt!318026)))

(declare-fun b!708021 () Bool)

(declare-fun e!398470 () Bool)

(assert (=> b!708021 (= e!398471 e!398470)))

(declare-fun res!471878 () Bool)

(assert (=> b!708021 (=> res!471878 e!398470)))

(assert (=> b!708021 (= res!471878 (= (h!14444 (t!19696 newAcc!49)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708022 () Bool)

(assert (=> b!708022 (= e!398470 (contains!3946 (t!19696 (t!19696 newAcc!49)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96643 res!471877) b!708021))

(assert (= (and b!708021 (not res!471878)) b!708022))

(assert (=> d!96643 m!665507))

(declare-fun m!665571 () Bool)

(assert (=> d!96643 m!665571))

(declare-fun m!665573 () Bool)

(assert (=> b!708022 m!665573))

(assert (=> b!707915 d!96643))

(declare-fun lt!318027 () Bool)

(declare-fun d!96645 () Bool)

(assert (=> d!96645 (= lt!318027 (select (content!337 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(declare-fun e!398473 () Bool)

(assert (=> d!96645 (= lt!318027 e!398473)))

(declare-fun res!471879 () Bool)

(assert (=> d!96645 (=> (not res!471879) (not e!398473))))

(assert (=> d!96645 (= res!471879 ((_ is Cons!13399) (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(assert (=> d!96645 (= (contains!3946 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969))) (h!14444 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) lt!318027)))

(declare-fun b!708023 () Bool)

(declare-fun e!398472 () Bool)

(assert (=> b!708023 (= e!398473 e!398472)))

(declare-fun res!471880 () Bool)

(assert (=> b!708023 (=> res!471880 e!398472)))

(assert (=> b!708023 (= res!471880 (= (h!14444 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(declare-fun b!708024 () Bool)

(assert (=> b!708024 (= e!398472 (contains!3946 (t!19696 (t!19696 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))) (h!14444 ($colon$colon!500 newAcc!49 (select (arr!19309 a!3591) from!2969)))))))

(assert (= (and d!96645 res!471879) b!708023))

(assert (= (and b!708023 (not res!471880)) b!708024))

(declare-fun m!665575 () Bool)

(assert (=> d!96645 m!665575))

(declare-fun m!665577 () Bool)

(assert (=> d!96645 m!665577))

(declare-fun m!665579 () Bool)

(assert (=> b!708024 m!665579))

(assert (=> b!707740 d!96645))

(declare-fun e!398475 () Bool)

(declare-fun b!708025 () Bool)

(declare-fun lt!318028 () List!13403)

(assert (=> b!708025 (= e!398475 (= (content!337 lt!318028) ((_ map and) (content!337 (t!19696 newAcc!49)) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!96647 () Bool)

(assert (=> d!96647 e!398475))

(declare-fun res!471881 () Bool)

(assert (=> d!96647 (=> (not res!471881) (not e!398475))))

(assert (=> d!96647 (= res!471881 (<= (size!19697 lt!318028) (size!19697 (t!19696 newAcc!49))))))

(declare-fun e!398476 () List!13403)

(assert (=> d!96647 (= lt!318028 e!398476)))

(declare-fun c!78440 () Bool)

(assert (=> d!96647 (= c!78440 ((_ is Cons!13399) (t!19696 newAcc!49)))))

(assert (=> d!96647 (= (-!355 (t!19696 newAcc!49) k0!2824) lt!318028)))

(declare-fun b!708026 () Bool)

(declare-fun e!398474 () List!13403)

(declare-fun call!34393 () List!13403)

(assert (=> b!708026 (= e!398474 call!34393)))

(declare-fun b!708027 () Bool)

(assert (=> b!708027 (= e!398476 e!398474)))

(declare-fun c!78439 () Bool)

(assert (=> b!708027 (= c!78439 (= k0!2824 (h!14444 (t!19696 newAcc!49))))))

(declare-fun b!708028 () Bool)

(assert (=> b!708028 (= e!398476 Nil!13400)))

(declare-fun bm!34390 () Bool)

(assert (=> bm!34390 (= call!34393 (-!355 (t!19696 (t!19696 newAcc!49)) k0!2824))))

(declare-fun b!708029 () Bool)

(assert (=> b!708029 (= e!398474 (Cons!13399 (h!14444 (t!19696 newAcc!49)) call!34393))))

(assert (= (and d!96647 c!78440) b!708027))

(assert (= (and d!96647 (not c!78440)) b!708028))

(assert (= (and b!708027 c!78439) b!708026))

(assert (= (and b!708027 (not c!78439)) b!708029))

(assert (= (or b!708026 b!708029) bm!34390))

(assert (= (and d!96647 res!471881) b!708025))

(declare-fun m!665581 () Bool)

(assert (=> b!708025 m!665581))

(assert (=> b!708025 m!665507))

(assert (=> b!708025 m!665399))

(declare-fun m!665583 () Bool)

(assert (=> d!96647 m!665583))

(assert (=> d!96647 m!665549))

(declare-fun m!665585 () Bool)

(assert (=> bm!34390 m!665585))

(assert (=> bm!34382 d!96647))

(assert (=> d!96533 d!96601))

(declare-fun d!96649 () Bool)

(declare-fun res!471882 () Bool)

(declare-fun e!398477 () Bool)

(assert (=> d!96649 (=> res!471882 e!398477)))

(assert (=> d!96649 (= res!471882 (= (select (arr!19309 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) k0!2824))))

(assert (=> d!96649 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)) e!398477)))

(declare-fun b!708030 () Bool)

(declare-fun e!398478 () Bool)

(assert (=> b!708030 (= e!398477 e!398478)))

(declare-fun res!471883 () Bool)

(assert (=> b!708030 (=> (not res!471883) (not e!398478))))

(assert (=> b!708030 (= res!471883 (bvslt (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!19694 a!3591)))))

(declare-fun b!708031 () Bool)

(assert (=> b!708031 (= e!398478 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!96649 (not res!471882)) b!708030))

(assert (= (and b!708030 res!471883) b!708031))

(assert (=> d!96649 m!665491))

(declare-fun m!665587 () Bool)

(assert (=> b!708031 m!665587))

(assert (=> b!707763 d!96649))

(check-sat (not b!707992) (not b!707985) (not b!708008) (not b!708020) (not b!708031) (not b!707982) (not b!707970) (not b!708002) (not b!707991) (not b!707997) (not d!96637) (not b!708025) (not b!707978) (not d!96625) (not b!708013) (not b!708010) (not bm!34390) (not d!96645) (not b!707994) (not b!708012) (not b!707984) (not b!708016) (not d!96617) (not d!96639) (not b!707986) (not d!96647) (not bm!34389) (not b!707998) (not b!708022) (not b!707988) (not b!708001) (not d!96607) (not b!707980) (not b!707973) (not b!707975) (not b!707976) (not d!96613) (not b!708014) (not b!708024) (not b!707974) (not b!708000) (not b!708018) (not d!96633) (not b!707969) (not d!96621) (not d!96643) (not d!96609))
(check-sat)
