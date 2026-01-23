; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515822 () Bool)

(assert start!515822)

(declare-fun lt!2017323 () Int)

(declare-datatypes ((C!26894 0))(
  ( (C!26895 (val!22781 Int)) )
))
(declare-datatypes ((List!56749 0))(
  ( (Nil!56625) (Cons!56625 (h!63073 C!26894) (t!367155 List!56749)) )
))
(declare-datatypes ((IArray!29743 0))(
  ( (IArray!29744 (innerList!14929 List!56749)) )
))
(declare-datatypes ((Conc!14841 0))(
  ( (Node!14841 (left!41276 Conc!14841) (right!41606 Conc!14841) (csize!29912 Int) (cheight!15052 Int)) (Leaf!24695 (xs!18157 IArray!29743) (csize!29913 Int)) (Empty!14841) )
))
(declare-datatypes ((BalanceConc!29112 0))(
  ( (BalanceConc!29113 (c!835119 Conc!14841)) )
))
(declare-fun input!5492 () BalanceConc!29112)

(declare-fun size!37388 (BalanceConc!29112) Int)

(assert (=> start!515822 (= lt!2017323 (size!37388 input!5492))))

(declare-fun lt!2017322 () List!56749)

(declare-fun list!17888 (BalanceConc!29112) List!56749)

(assert (=> start!515822 (= lt!2017322 (list!17888 input!5492))))

(declare-fun ++!12288 (List!56749 List!56749) List!56749)

(assert (=> start!515822 (not (= (++!12288 Nil!56625 lt!2017322) lt!2017322))))

(declare-fun e!3070959 () Bool)

(declare-fun inv!73263 (BalanceConc!29112) Bool)

(assert (=> start!515822 (and (inv!73263 input!5492) e!3070959)))

(declare-fun b!4913264 () Bool)

(declare-fun tp!1381652 () Bool)

(declare-fun inv!73264 (Conc!14841) Bool)

(assert (=> b!4913264 (= e!3070959 (and (inv!73264 (c!835119 input!5492)) tp!1381652))))

(assert (= start!515822 b!4913264))

(declare-fun m!5923054 () Bool)

(assert (=> start!515822 m!5923054))

(declare-fun m!5923056 () Bool)

(assert (=> start!515822 m!5923056))

(declare-fun m!5923058 () Bool)

(assert (=> start!515822 m!5923058))

(declare-fun m!5923060 () Bool)

(assert (=> start!515822 m!5923060))

(declare-fun m!5923062 () Bool)

(assert (=> b!4913264 m!5923062))

(push 1)

(assert (not start!515822))

(assert (not b!4913264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1578742 () Bool)

(declare-fun lt!2017332 () Int)

(declare-fun size!37390 (List!56749) Int)

(assert (=> d!1578742 (= lt!2017332 (size!37390 (list!17888 input!5492)))))

(declare-fun size!37391 (Conc!14841) Int)

(assert (=> d!1578742 (= lt!2017332 (size!37391 (c!835119 input!5492)))))

(assert (=> d!1578742 (= (size!37388 input!5492) lt!2017332)))

(declare-fun bs!1177619 () Bool)

(assert (= bs!1177619 d!1578742))

(assert (=> bs!1177619 m!5923056))

(assert (=> bs!1177619 m!5923056))

(declare-fun m!5923074 () Bool)

(assert (=> bs!1177619 m!5923074))

(declare-fun m!5923076 () Bool)

(assert (=> bs!1177619 m!5923076))

(assert (=> start!515822 d!1578742))

(declare-fun d!1578744 () Bool)

(declare-fun list!17890 (Conc!14841) List!56749)

(assert (=> d!1578744 (= (list!17888 input!5492) (list!17890 (c!835119 input!5492)))))

(declare-fun bs!1177620 () Bool)

(assert (= bs!1177620 d!1578744))

(declare-fun m!5923078 () Bool)

(assert (=> bs!1177620 m!5923078))

(assert (=> start!515822 d!1578744))

(declare-fun b!4913278 () Bool)

(declare-fun res!2098735 () Bool)

(declare-fun e!3070968 () Bool)

(assert (=> b!4913278 (=> (not res!2098735) (not e!3070968))))

(declare-fun lt!2017337 () List!56749)

(assert (=> b!4913278 (= res!2098735 (= (size!37390 lt!2017337) (+ (size!37390 Nil!56625) (size!37390 lt!2017322))))))

(declare-fun d!1578748 () Bool)

(assert (=> d!1578748 e!3070968))

(declare-fun res!2098736 () Bool)

(assert (=> d!1578748 (=> (not res!2098736) (not e!3070968))))

(declare-fun content!10044 (List!56749) (Set C!26894))

(assert (=> d!1578748 (= res!2098736 (= (content!10044 lt!2017337) (set.union (content!10044 Nil!56625) (content!10044 lt!2017322))))))

(declare-fun e!3070967 () List!56749)

(assert (=> d!1578748 (= lt!2017337 e!3070967)))

(declare-fun c!835123 () Bool)

(assert (=> d!1578748 (= c!835123 (is-Nil!56625 Nil!56625))))

(assert (=> d!1578748 (= (++!12288 Nil!56625 lt!2017322) lt!2017337)))

(declare-fun b!4913276 () Bool)

(assert (=> b!4913276 (= e!3070967 lt!2017322)))

(declare-fun b!4913279 () Bool)

(assert (=> b!4913279 (= e!3070968 (or (not (= lt!2017322 Nil!56625)) (= lt!2017337 Nil!56625)))))

(declare-fun b!4913277 () Bool)

(assert (=> b!4913277 (= e!3070967 (Cons!56625 (h!63073 Nil!56625) (++!12288 (t!367155 Nil!56625) lt!2017322)))))

(assert (= (and d!1578748 c!835123) b!4913276))

(assert (= (and d!1578748 (not c!835123)) b!4913277))

(assert (= (and d!1578748 res!2098736) b!4913278))

(assert (= (and b!4913278 res!2098735) b!4913279))

(declare-fun m!5923080 () Bool)

(assert (=> b!4913278 m!5923080))

(declare-fun m!5923084 () Bool)

(assert (=> b!4913278 m!5923084))

(declare-fun m!5923086 () Bool)

(assert (=> b!4913278 m!5923086))

(declare-fun m!5923090 () Bool)

(assert (=> d!1578748 m!5923090))

(declare-fun m!5923092 () Bool)

(assert (=> d!1578748 m!5923092))

(declare-fun m!5923094 () Bool)

(assert (=> d!1578748 m!5923094))

(declare-fun m!5923096 () Bool)

(assert (=> b!4913277 m!5923096))

(assert (=> start!515822 d!1578748))

(declare-fun d!1578752 () Bool)

(declare-fun isBalanced!4060 (Conc!14841) Bool)

(assert (=> d!1578752 (= (inv!73263 input!5492) (isBalanced!4060 (c!835119 input!5492)))))

(declare-fun bs!1177622 () Bool)

(assert (= bs!1177622 d!1578752))

(declare-fun m!5923098 () Bool)

(assert (=> bs!1177622 m!5923098))

(assert (=> start!515822 d!1578752))

(declare-fun d!1578754 () Bool)

(declare-fun c!835126 () Bool)

(assert (=> d!1578754 (= c!835126 (is-Node!14841 (c!835119 input!5492)))))

(declare-fun e!3070973 () Bool)

(assert (=> d!1578754 (= (inv!73264 (c!835119 input!5492)) e!3070973)))

(declare-fun b!4913286 () Bool)

(declare-fun inv!73267 (Conc!14841) Bool)

(assert (=> b!4913286 (= e!3070973 (inv!73267 (c!835119 input!5492)))))

(declare-fun b!4913287 () Bool)

(declare-fun e!3070974 () Bool)

(assert (=> b!4913287 (= e!3070973 e!3070974)))

(declare-fun res!2098739 () Bool)

(assert (=> b!4913287 (= res!2098739 (not (is-Leaf!24695 (c!835119 input!5492))))))

(assert (=> b!4913287 (=> res!2098739 e!3070974)))

(declare-fun b!4913288 () Bool)

(declare-fun inv!73268 (Conc!14841) Bool)

(assert (=> b!4913288 (= e!3070974 (inv!73268 (c!835119 input!5492)))))

(assert (= (and d!1578754 c!835126) b!4913286))

(assert (= (and d!1578754 (not c!835126)) b!4913287))

(assert (= (and b!4913287 (not res!2098739)) b!4913288))

(declare-fun m!5923102 () Bool)

(assert (=> b!4913286 m!5923102))

(declare-fun m!5923104 () Bool)

(assert (=> b!4913288 m!5923104))

(assert (=> b!4913264 d!1578754))

(declare-fun tp!1381662 () Bool)

(declare-fun b!4913297 () Bool)

(declare-fun tp!1381663 () Bool)

(declare-fun e!3070979 () Bool)

(assert (=> b!4913297 (= e!3070979 (and (inv!73264 (left!41276 (c!835119 input!5492))) tp!1381662 (inv!73264 (right!41606 (c!835119 input!5492))) tp!1381663))))

(declare-fun b!4913299 () Bool)

(declare-fun e!3070980 () Bool)

(declare-fun tp!1381664 () Bool)

(assert (=> b!4913299 (= e!3070980 tp!1381664)))

(declare-fun b!4913298 () Bool)

(declare-fun inv!73269 (IArray!29743) Bool)

(assert (=> b!4913298 (= e!3070979 (and (inv!73269 (xs!18157 (c!835119 input!5492))) e!3070980))))

(assert (=> b!4913264 (= tp!1381652 (and (inv!73264 (c!835119 input!5492)) e!3070979))))

(assert (= (and b!4913264 (is-Node!14841 (c!835119 input!5492))) b!4913297))

(assert (= b!4913298 b!4913299))

(assert (= (and b!4913264 (is-Leaf!24695 (c!835119 input!5492))) b!4913298))

(declare-fun m!5923106 () Bool)

(assert (=> b!4913297 m!5923106))

(declare-fun m!5923108 () Bool)

(assert (=> b!4913297 m!5923108))

(declare-fun m!5923110 () Bool)

(assert (=> b!4913298 m!5923110))

(assert (=> b!4913264 m!5923062))

(push 1)

(assert (not b!4913288))

(assert (not b!4913264))

(assert (not b!4913298))

(assert (not b!4913277))

(assert (not d!1578742))

(assert (not b!4913286))

(assert (not d!1578748))

(assert (not b!4913278))

(assert (not d!1578744))

(assert (not b!4913299))

(assert (not b!4913297))

(assert (not d!1578752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

