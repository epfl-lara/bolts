; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510490 () Bool)

(assert start!510490)

(declare-fun b!4878912 () Bool)

(declare-fun e!3049294 () Bool)

(declare-datatypes ((T!99284 0))(
  ( (T!99285 (val!22555 Int)) )
))
(declare-datatypes ((List!56154 0))(
  ( (Nil!56030) (Cons!56030 (h!62478 T!99284) (t!364780 List!56154)) )
))
(declare-datatypes ((IArray!29291 0))(
  ( (IArray!29292 (innerList!14703 List!56154)) )
))
(declare-datatypes ((Conc!14615 0))(
  ( (Node!14615 (left!40709 Conc!14615) (right!41039 Conc!14615) (csize!29460 Int) (cheight!14826 Int)) (Leaf!24356 (xs!17925 IArray!29291) (csize!29461 Int)) (Empty!14615) )
))
(declare-fun t!4585 () Conc!14615)

(declare-fun e!3049295 () Bool)

(declare-fun inv!72010 (IArray!29291) Bool)

(assert (=> b!4878912 (= e!3049294 (and (inv!72010 (xs!17925 t!4585)) e!3049295))))

(declare-fun tp!1372821 () Bool)

(declare-fun b!4878911 () Bool)

(declare-fun tp!1372822 () Bool)

(declare-fun inv!72011 (Conc!14615) Bool)

(assert (=> b!4878911 (= e!3049294 (and (inv!72011 (left!40709 t!4585)) tp!1372821 (inv!72011 (right!41039 t!4585)) tp!1372822))))

(declare-fun b!4878913 () Bool)

(declare-fun tp!1372820 () Bool)

(assert (=> b!4878913 (= e!3049295 tp!1372820)))

(declare-fun res!2082653 () Bool)

(declare-fun e!3049296 () Bool)

(assert (=> start!510490 (=> (not res!2082653) (not e!3049296))))

(declare-fun isBalanced!3977 (Conc!14615) Bool)

(assert (=> start!510490 (= res!2082653 (isBalanced!3977 t!4585))))

(assert (=> start!510490 e!3049296))

(assert (=> start!510490 (and (inv!72011 t!4585) e!3049294)))

(declare-fun tp_is_empty!35693 () Bool)

(assert (=> start!510490 tp_is_empty!35693))

(declare-fun b!4878910 () Bool)

(declare-fun v!5488 () T!99284)

(declare-fun fill!236 (Int T!99284) IArray!29291)

(assert (=> b!4878910 (= e!3049296 (not (inv!72011 (Leaf!24356 (fill!236 1 v!5488) 1))))))

(assert (= (and start!510490 res!2082653) b!4878910))

(assert (= (and start!510490 (is-Node!14615 t!4585)) b!4878911))

(assert (= b!4878912 b!4878913))

(assert (= (and start!510490 (is-Leaf!24356 t!4585)) b!4878912))

(declare-fun m!5881824 () Bool)

(assert (=> b!4878912 m!5881824))

(declare-fun m!5881826 () Bool)

(assert (=> b!4878911 m!5881826))

(declare-fun m!5881828 () Bool)

(assert (=> b!4878911 m!5881828))

(declare-fun m!5881830 () Bool)

(assert (=> start!510490 m!5881830))

(declare-fun m!5881832 () Bool)

(assert (=> start!510490 m!5881832))

(declare-fun m!5881834 () Bool)

(assert (=> b!4878910 m!5881834))

(declare-fun m!5881836 () Bool)

(assert (=> b!4878910 m!5881836))

(push 1)

(assert (not b!4878911))

(assert (not start!510490))

(assert tp_is_empty!35693)

(assert (not b!4878910))

(assert (not b!4878913))

(assert (not b!4878912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567559 () Bool)

(declare-fun c!829783 () Bool)

(assert (=> d!1567559 (= c!829783 (is-Node!14615 (Leaf!24356 (fill!236 1 v!5488) 1)))))

(declare-fun e!3049310 () Bool)

(assert (=> d!1567559 (= (inv!72011 (Leaf!24356 (fill!236 1 v!5488) 1)) e!3049310)))

(declare-fun b!4878932 () Bool)

(declare-fun inv!72014 (Conc!14615) Bool)

(assert (=> b!4878932 (= e!3049310 (inv!72014 (Leaf!24356 (fill!236 1 v!5488) 1)))))

(declare-fun b!4878933 () Bool)

(declare-fun e!3049311 () Bool)

(assert (=> b!4878933 (= e!3049310 e!3049311)))

(declare-fun res!2082659 () Bool)

(assert (=> b!4878933 (= res!2082659 (not (is-Leaf!24356 (Leaf!24356 (fill!236 1 v!5488) 1))))))

(assert (=> b!4878933 (=> res!2082659 e!3049311)))

(declare-fun b!4878934 () Bool)

(declare-fun inv!72015 (Conc!14615) Bool)

(assert (=> b!4878934 (= e!3049311 (inv!72015 (Leaf!24356 (fill!236 1 v!5488) 1)))))

(assert (= (and d!1567559 c!829783) b!4878932))

(assert (= (and d!1567559 (not c!829783)) b!4878933))

(assert (= (and b!4878933 (not res!2082659)) b!4878934))

(declare-fun m!5881852 () Bool)

(assert (=> b!4878932 m!5881852))

(declare-fun m!5881854 () Bool)

(assert (=> b!4878934 m!5881854))

(assert (=> b!4878910 d!1567559))

(declare-fun d!1567563 () Bool)

(declare-fun lt!1999077 () IArray!29291)

(declare-fun fill!238 (Int T!99284) List!56154)

(assert (=> d!1567563 (= lt!1999077 (IArray!29292 (fill!238 1 v!5488)))))

(declare-fun choose!35658 (Int T!99284) IArray!29291)

(assert (=> d!1567563 (= lt!1999077 (choose!35658 1 v!5488))))

(assert (=> d!1567563 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1567563 (= (fill!236 1 v!5488) lt!1999077)))

(declare-fun bs!1175283 () Bool)

(assert (= bs!1175283 d!1567563))

(declare-fun m!5881856 () Bool)

(assert (=> bs!1175283 m!5881856))

(declare-fun m!5881858 () Bool)

(assert (=> bs!1175283 m!5881858))

(assert (=> b!4878910 d!1567563))

(declare-fun b!4878956 () Bool)

(declare-fun res!2082675 () Bool)

(declare-fun e!3049322 () Bool)

(assert (=> b!4878956 (=> (not res!2082675) (not e!3049322))))

(assert (=> b!4878956 (= res!2082675 (isBalanced!3977 (right!41039 t!4585)))))

(declare-fun b!4878957 () Bool)

(declare-fun res!2082677 () Bool)

(assert (=> b!4878957 (=> (not res!2082677) (not e!3049322))))

(assert (=> b!4878957 (= res!2082677 (isBalanced!3977 (left!40709 t!4585)))))

(declare-fun b!4878958 () Bool)

(declare-fun res!2082679 () Bool)

(assert (=> b!4878958 (=> (not res!2082679) (not e!3049322))))

(declare-fun isEmpty!30026 (Conc!14615) Bool)

(assert (=> b!4878958 (= res!2082679 (not (isEmpty!30026 (left!40709 t!4585))))))

(declare-fun b!4878959 () Bool)

(declare-fun e!3049323 () Bool)

(assert (=> b!4878959 (= e!3049323 e!3049322)))

(declare-fun res!2082676 () Bool)

(assert (=> b!4878959 (=> (not res!2082676) (not e!3049322))))

(declare-fun height!1948 (Conc!14615) Int)

(assert (=> b!4878959 (= res!2082676 (<= (- 1) (- (height!1948 (left!40709 t!4585)) (height!1948 (right!41039 t!4585)))))))

(declare-fun d!1567565 () Bool)

(declare-fun res!2082678 () Bool)

(assert (=> d!1567565 (=> res!2082678 e!3049323)))

(assert (=> d!1567565 (= res!2082678 (not (is-Node!14615 t!4585)))))

(assert (=> d!1567565 (= (isBalanced!3977 t!4585) e!3049323)))

(declare-fun b!4878960 () Bool)

(declare-fun res!2082680 () Bool)

(assert (=> b!4878960 (=> (not res!2082680) (not e!3049322))))

(assert (=> b!4878960 (= res!2082680 (<= (- (height!1948 (left!40709 t!4585)) (height!1948 (right!41039 t!4585))) 1))))

(declare-fun b!4878961 () Bool)

(assert (=> b!4878961 (= e!3049322 (not (isEmpty!30026 (right!41039 t!4585))))))

(assert (= (and d!1567565 (not res!2082678)) b!4878959))

(assert (= (and b!4878959 res!2082676) b!4878960))

(assert (= (and b!4878960 res!2082680) b!4878957))

(assert (= (and b!4878957 res!2082677) b!4878956))

(assert (= (and b!4878956 res!2082675) b!4878958))

(assert (= (and b!4878958 res!2082679) b!4878961))

(declare-fun m!5881864 () Bool)

(assert (=> b!4878957 m!5881864))

(declare-fun m!5881866 () Bool)

(assert (=> b!4878958 m!5881866))

(declare-fun m!5881868 () Bool)

(assert (=> b!4878961 m!5881868))

(declare-fun m!5881870 () Bool)

(assert (=> b!4878956 m!5881870))

(declare-fun m!5881872 () Bool)

(assert (=> b!4878960 m!5881872))

(declare-fun m!5881874 () Bool)

(assert (=> b!4878960 m!5881874))

(assert (=> b!4878959 m!5881872))

(assert (=> b!4878959 m!5881874))

(assert (=> start!510490 d!1567565))

(declare-fun d!1567569 () Bool)

(declare-fun c!829787 () Bool)

(assert (=> d!1567569 (= c!829787 (is-Node!14615 t!4585))))

(declare-fun e!3049324 () Bool)

(assert (=> d!1567569 (= (inv!72011 t!4585) e!3049324)))

(declare-fun b!4878962 () Bool)

(assert (=> b!4878962 (= e!3049324 (inv!72014 t!4585))))

(declare-fun b!4878963 () Bool)

(declare-fun e!3049325 () Bool)

(assert (=> b!4878963 (= e!3049324 e!3049325)))

(declare-fun res!2082681 () Bool)

(assert (=> b!4878963 (= res!2082681 (not (is-Leaf!24356 t!4585)))))

(assert (=> b!4878963 (=> res!2082681 e!3049325)))

(declare-fun b!4878964 () Bool)

(assert (=> b!4878964 (= e!3049325 (inv!72015 t!4585))))

(assert (= (and d!1567569 c!829787) b!4878962))

(assert (= (and d!1567569 (not c!829787)) b!4878963))

(assert (= (and b!4878963 (not res!2082681)) b!4878964))

(declare-fun m!5881876 () Bool)

(assert (=> b!4878962 m!5881876))

(declare-fun m!5881878 () Bool)

(assert (=> b!4878964 m!5881878))

(assert (=> start!510490 d!1567569))

(declare-fun d!1567571 () Bool)

(declare-fun c!829788 () Bool)

(assert (=> d!1567571 (= c!829788 (is-Node!14615 (left!40709 t!4585)))))

(declare-fun e!3049326 () Bool)

(assert (=> d!1567571 (= (inv!72011 (left!40709 t!4585)) e!3049326)))

(declare-fun b!4878965 () Bool)

(assert (=> b!4878965 (= e!3049326 (inv!72014 (left!40709 t!4585)))))

(declare-fun b!4878966 () Bool)

(declare-fun e!3049327 () Bool)

(assert (=> b!4878966 (= e!3049326 e!3049327)))

(declare-fun res!2082682 () Bool)

(assert (=> b!4878966 (= res!2082682 (not (is-Leaf!24356 (left!40709 t!4585))))))

(assert (=> b!4878966 (=> res!2082682 e!3049327)))

(declare-fun b!4878967 () Bool)

(assert (=> b!4878967 (= e!3049327 (inv!72015 (left!40709 t!4585)))))

(assert (= (and d!1567571 c!829788) b!4878965))

(assert (= (and d!1567571 (not c!829788)) b!4878966))

(assert (= (and b!4878966 (not res!2082682)) b!4878967))

(declare-fun m!5881880 () Bool)

(assert (=> b!4878965 m!5881880))

(declare-fun m!5881882 () Bool)

(assert (=> b!4878967 m!5881882))

(assert (=> b!4878911 d!1567571))

(declare-fun d!1567573 () Bool)

(declare-fun c!829789 () Bool)

(assert (=> d!1567573 (= c!829789 (is-Node!14615 (right!41039 t!4585)))))

(declare-fun e!3049328 () Bool)

(assert (=> d!1567573 (= (inv!72011 (right!41039 t!4585)) e!3049328)))

(declare-fun b!4878968 () Bool)

(assert (=> b!4878968 (= e!3049328 (inv!72014 (right!41039 t!4585)))))

(declare-fun b!4878969 () Bool)

(declare-fun e!3049329 () Bool)

(assert (=> b!4878969 (= e!3049328 e!3049329)))

(declare-fun res!2082683 () Bool)

(assert (=> b!4878969 (= res!2082683 (not (is-Leaf!24356 (right!41039 t!4585))))))

(assert (=> b!4878969 (=> res!2082683 e!3049329)))

(declare-fun b!4878970 () Bool)

(assert (=> b!4878970 (= e!3049329 (inv!72015 (right!41039 t!4585)))))

(assert (= (and d!1567573 c!829789) b!4878968))

(assert (= (and d!1567573 (not c!829789)) b!4878969))

(assert (= (and b!4878969 (not res!2082683)) b!4878970))

(declare-fun m!5881884 () Bool)

(assert (=> b!4878968 m!5881884))

(declare-fun m!5881886 () Bool)

(assert (=> b!4878970 m!5881886))

(assert (=> b!4878911 d!1567573))

(declare-fun d!1567575 () Bool)

(declare-fun size!36956 (List!56154) Int)

(assert (=> d!1567575 (= (inv!72010 (xs!17925 t!4585)) (<= (size!36956 (innerList!14703 (xs!17925 t!4585))) 2147483647))))

(declare-fun bs!1175284 () Bool)

(assert (= bs!1175284 d!1567575))

(declare-fun m!5881888 () Bool)

(assert (=> bs!1175284 m!5881888))

(assert (=> b!4878912 d!1567575))

(declare-fun tp!1372840 () Bool)

(declare-fun e!3049334 () Bool)

(declare-fun b!4878979 () Bool)

(declare-fun tp!1372838 () Bool)

(assert (=> b!4878979 (= e!3049334 (and (inv!72011 (left!40709 (left!40709 t!4585))) tp!1372840 (inv!72011 (right!41039 (left!40709 t!4585))) tp!1372838))))

(declare-fun b!4878981 () Bool)

(declare-fun e!3049335 () Bool)

(declare-fun tp!1372839 () Bool)

(assert (=> b!4878981 (= e!3049335 tp!1372839)))

(declare-fun b!4878980 () Bool)

(assert (=> b!4878980 (= e!3049334 (and (inv!72010 (xs!17925 (left!40709 t!4585))) e!3049335))))

(assert (=> b!4878911 (= tp!1372821 (and (inv!72011 (left!40709 t!4585)) e!3049334))))

(assert (= (and b!4878911 (is-Node!14615 (left!40709 t!4585))) b!4878979))

(assert (= b!4878980 b!4878981))

(assert (= (and b!4878911 (is-Leaf!24356 (left!40709 t!4585))) b!4878980))

(declare-fun m!5881894 () Bool)

(assert (=> b!4878979 m!5881894))

(declare-fun m!5881896 () Bool)

(assert (=> b!4878979 m!5881896))

(declare-fun m!5881898 () Bool)

(assert (=> b!4878980 m!5881898))

(assert (=> b!4878911 m!5881826))

(declare-fun e!3049336 () Bool)

(declare-fun b!4878982 () Bool)

(declare-fun tp!1372841 () Bool)

(declare-fun tp!1372843 () Bool)

(assert (=> b!4878982 (= e!3049336 (and (inv!72011 (left!40709 (right!41039 t!4585))) tp!1372843 (inv!72011 (right!41039 (right!41039 t!4585))) tp!1372841))))

(declare-fun b!4878984 () Bool)

(declare-fun e!3049337 () Bool)

(declare-fun tp!1372842 () Bool)

(assert (=> b!4878984 (= e!3049337 tp!1372842)))

(declare-fun b!4878983 () Bool)

(assert (=> b!4878983 (= e!3049336 (and (inv!72010 (xs!17925 (right!41039 t!4585))) e!3049337))))

(assert (=> b!4878911 (= tp!1372822 (and (inv!72011 (right!41039 t!4585)) e!3049336))))

(assert (= (and b!4878911 (is-Node!14615 (right!41039 t!4585))) b!4878982))

(assert (= b!4878983 b!4878984))

(assert (= (and b!4878911 (is-Leaf!24356 (right!41039 t!4585))) b!4878983))

(declare-fun m!5881900 () Bool)

(assert (=> b!4878982 m!5881900))

(declare-fun m!5881902 () Bool)

(assert (=> b!4878982 m!5881902))

(declare-fun m!5881904 () Bool)

(assert (=> b!4878983 m!5881904))

(assert (=> b!4878911 m!5881828))

(declare-fun b!4878989 () Bool)

(declare-fun e!3049340 () Bool)

(declare-fun tp!1372846 () Bool)

(assert (=> b!4878989 (= e!3049340 (and tp_is_empty!35693 tp!1372846))))

(assert (=> b!4878913 (= tp!1372820 e!3049340)))

(assert (= (and b!4878913 (is-Cons!56030 (innerList!14703 (xs!17925 t!4585)))) b!4878989))

(push 1)

(assert (not b!4878968))

(assert (not b!4878982))

(assert (not b!4878979))

(assert (not b!4878984))

(assert (not b!4878965))

(assert tp_is_empty!35693)

(assert (not b!4878960))

(assert (not b!4878967))

(assert (not b!4878956))

(assert (not b!4878961))

(assert (not b!4878958))

(assert (not b!4878959))

(assert (not b!4878983))

(assert (not b!4878911))

(assert (not b!4878957))

(assert (not b!4878980))

(assert (not b!4878981))

(assert (not d!1567563))

(assert (not b!4878970))

(assert (not b!4878962))

(assert (not b!4878989))

(assert (not b!4878964))

(assert (not d!1567575))

(assert (not b!4878934))

(assert (not b!4878932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567587 () Bool)

(declare-fun res!2082709 () Bool)

(declare-fun e!3049366 () Bool)

(assert (=> d!1567587 (=> (not res!2082709) (not e!3049366))))

(declare-fun list!17560 (IArray!29291) List!56154)

(assert (=> d!1567587 (= res!2082709 (<= (size!36956 (list!17560 (xs!17925 (right!41039 t!4585)))) 512))))

(assert (=> d!1567587 (= (inv!72015 (right!41039 t!4585)) e!3049366)))

(declare-fun b!4879040 () Bool)

(declare-fun res!2082710 () Bool)

(assert (=> b!4879040 (=> (not res!2082710) (not e!3049366))))

(assert (=> b!4879040 (= res!2082710 (= (csize!29461 (right!41039 t!4585)) (size!36956 (list!17560 (xs!17925 (right!41039 t!4585))))))))

(declare-fun b!4879041 () Bool)

(assert (=> b!4879041 (= e!3049366 (and (> (csize!29461 (right!41039 t!4585)) 0) (<= (csize!29461 (right!41039 t!4585)) 512)))))

(assert (= (and d!1567587 res!2082709) b!4879040))

(assert (= (and b!4879040 res!2082710) b!4879041))

(declare-fun m!5881944 () Bool)

(assert (=> d!1567587 m!5881944))

(assert (=> d!1567587 m!5881944))

(declare-fun m!5881946 () Bool)

(assert (=> d!1567587 m!5881946))

(assert (=> b!4879040 m!5881944))

(assert (=> b!4879040 m!5881944))

(assert (=> b!4879040 m!5881946))

(assert (=> b!4878970 d!1567587))

(declare-fun d!1567589 () Bool)

(declare-fun lt!1999083 () Int)

(assert (=> d!1567589 (>= lt!1999083 0)))

(declare-fun e!3049369 () Int)

(assert (=> d!1567589 (= lt!1999083 e!3049369)))

(declare-fun c!829795 () Bool)

(assert (=> d!1567589 (= c!829795 (is-Nil!56030 (innerList!14703 (xs!17925 t!4585))))))

(assert (=> d!1567589 (= (size!36956 (innerList!14703 (xs!17925 t!4585))) lt!1999083)))

(declare-fun b!4879046 () Bool)

(assert (=> b!4879046 (= e!3049369 0)))

(declare-fun b!4879047 () Bool)

(assert (=> b!4879047 (= e!3049369 (+ 1 (size!36956 (t!364780 (innerList!14703 (xs!17925 t!4585))))))))

(assert (= (and d!1567589 c!829795) b!4879046))

(assert (= (and d!1567589 (not c!829795)) b!4879047))

(declare-fun m!5881948 () Bool)

(assert (=> b!4879047 m!5881948))

(assert (=> d!1567575 d!1567589))

(declare-fun b!4879048 () Bool)

(declare-fun res!2082711 () Bool)

(declare-fun e!3049370 () Bool)

(assert (=> b!4879048 (=> (not res!2082711) (not e!3049370))))

(assert (=> b!4879048 (= res!2082711 (isBalanced!3977 (right!41039 (right!41039 t!4585))))))

(declare-fun b!4879049 () Bool)

(declare-fun res!2082713 () Bool)

(assert (=> b!4879049 (=> (not res!2082713) (not e!3049370))))

(assert (=> b!4879049 (= res!2082713 (isBalanced!3977 (left!40709 (right!41039 t!4585))))))

(declare-fun b!4879050 () Bool)

(declare-fun res!2082715 () Bool)

(assert (=> b!4879050 (=> (not res!2082715) (not e!3049370))))

(assert (=> b!4879050 (= res!2082715 (not (isEmpty!30026 (left!40709 (right!41039 t!4585)))))))

(declare-fun b!4879051 () Bool)

(declare-fun e!3049371 () Bool)

(assert (=> b!4879051 (= e!3049371 e!3049370)))

(declare-fun res!2082712 () Bool)

(assert (=> b!4879051 (=> (not res!2082712) (not e!3049370))))

(assert (=> b!4879051 (= res!2082712 (<= (- 1) (- (height!1948 (left!40709 (right!41039 t!4585))) (height!1948 (right!41039 (right!41039 t!4585))))))))

(declare-fun d!1567591 () Bool)

(declare-fun res!2082714 () Bool)

(assert (=> d!1567591 (=> res!2082714 e!3049371)))

(assert (=> d!1567591 (= res!2082714 (not (is-Node!14615 (right!41039 t!4585))))))

(assert (=> d!1567591 (= (isBalanced!3977 (right!41039 t!4585)) e!3049371)))

(declare-fun b!4879052 () Bool)

(declare-fun res!2082716 () Bool)

(assert (=> b!4879052 (=> (not res!2082716) (not e!3049370))))

(assert (=> b!4879052 (= res!2082716 (<= (- (height!1948 (left!40709 (right!41039 t!4585))) (height!1948 (right!41039 (right!41039 t!4585)))) 1))))

(declare-fun b!4879053 () Bool)

(assert (=> b!4879053 (= e!3049370 (not (isEmpty!30026 (right!41039 (right!41039 t!4585)))))))

(assert (= (and d!1567591 (not res!2082714)) b!4879051))

(assert (= (and b!4879051 res!2082712) b!4879052))

(assert (= (and b!4879052 res!2082716) b!4879049))

(assert (= (and b!4879049 res!2082713) b!4879048))

(assert (= (and b!4879048 res!2082711) b!4879050))

(assert (= (and b!4879050 res!2082715) b!4879053))

(declare-fun m!5881950 () Bool)

(assert (=> b!4879049 m!5881950))

(declare-fun m!5881952 () Bool)

(assert (=> b!4879050 m!5881952))

(declare-fun m!5881954 () Bool)

(assert (=> b!4879053 m!5881954))

(declare-fun m!5881956 () Bool)

(assert (=> b!4879048 m!5881956))

(declare-fun m!5881958 () Bool)

(assert (=> b!4879052 m!5881958))

(declare-fun m!5881960 () Bool)

(assert (=> b!4879052 m!5881960))

(assert (=> b!4879051 m!5881958))

(assert (=> b!4879051 m!5881960))

(assert (=> b!4878956 d!1567591))

(assert (=> b!4878911 d!1567571))

(assert (=> b!4878911 d!1567573))

(declare-fun d!1567593 () Bool)

(declare-fun c!829796 () Bool)

(assert (=> d!1567593 (= c!829796 (is-Node!14615 (left!40709 (left!40709 t!4585))))))

(declare-fun e!3049372 () Bool)

(assert (=> d!1567593 (= (inv!72011 (left!40709 (left!40709 t!4585))) e!3049372)))

(declare-fun b!4879054 () Bool)

(assert (=> b!4879054 (= e!3049372 (inv!72014 (left!40709 (left!40709 t!4585))))))

(declare-fun b!4879055 () Bool)

(declare-fun e!3049373 () Bool)

(assert (=> b!4879055 (= e!3049372 e!3049373)))

(declare-fun res!2082717 () Bool)

(assert (=> b!4879055 (= res!2082717 (not (is-Leaf!24356 (left!40709 (left!40709 t!4585)))))))

(assert (=> b!4879055 (=> res!2082717 e!3049373)))

(declare-fun b!4879056 () Bool)

(assert (=> b!4879056 (= e!3049373 (inv!72015 (left!40709 (left!40709 t!4585))))))

(assert (= (and d!1567593 c!829796) b!4879054))

(assert (= (and d!1567593 (not c!829796)) b!4879055))

(assert (= (and b!4879055 (not res!2082717)) b!4879056))

(declare-fun m!5881962 () Bool)

(assert (=> b!4879054 m!5881962))

(declare-fun m!5881964 () Bool)

(assert (=> b!4879056 m!5881964))

(assert (=> b!4878979 d!1567593))

(declare-fun d!1567595 () Bool)

(declare-fun c!829797 () Bool)

(assert (=> d!1567595 (= c!829797 (is-Node!14615 (right!41039 (left!40709 t!4585))))))

(declare-fun e!3049374 () Bool)

(assert (=> d!1567595 (= (inv!72011 (right!41039 (left!40709 t!4585))) e!3049374)))

(declare-fun b!4879057 () Bool)

(assert (=> b!4879057 (= e!3049374 (inv!72014 (right!41039 (left!40709 t!4585))))))

(declare-fun b!4879058 () Bool)

(declare-fun e!3049375 () Bool)

(assert (=> b!4879058 (= e!3049374 e!3049375)))

(declare-fun res!2082718 () Bool)

(assert (=> b!4879058 (= res!2082718 (not (is-Leaf!24356 (right!41039 (left!40709 t!4585)))))))

(assert (=> b!4879058 (=> res!2082718 e!3049375)))

(declare-fun b!4879059 () Bool)

(assert (=> b!4879059 (= e!3049375 (inv!72015 (right!41039 (left!40709 t!4585))))))

(assert (= (and d!1567595 c!829797) b!4879057))

(assert (= (and d!1567595 (not c!829797)) b!4879058))

(assert (= (and b!4879058 (not res!2082718)) b!4879059))

(declare-fun m!5881966 () Bool)

(assert (=> b!4879057 m!5881966))

(declare-fun m!5881968 () Bool)

(assert (=> b!4879059 m!5881968))

(assert (=> b!4878979 d!1567595))

(declare-fun d!1567597 () Bool)

(declare-fun res!2082719 () Bool)

(declare-fun e!3049376 () Bool)

(assert (=> d!1567597 (=> (not res!2082719) (not e!3049376))))

(assert (=> d!1567597 (= res!2082719 (<= (size!36956 (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1)))) 512))))

(assert (=> d!1567597 (= (inv!72015 (Leaf!24356 (fill!236 1 v!5488) 1)) e!3049376)))

(declare-fun b!4879060 () Bool)

(declare-fun res!2082720 () Bool)

(assert (=> b!4879060 (=> (not res!2082720) (not e!3049376))))

(assert (=> b!4879060 (= res!2082720 (= (csize!29461 (Leaf!24356 (fill!236 1 v!5488) 1)) (size!36956 (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(declare-fun b!4879061 () Bool)

(assert (=> b!4879061 (= e!3049376 (and (> (csize!29461 (Leaf!24356 (fill!236 1 v!5488) 1)) 0) (<= (csize!29461 (Leaf!24356 (fill!236 1 v!5488) 1)) 512)))))

(assert (= (and d!1567597 res!2082719) b!4879060))

(assert (= (and b!4879060 res!2082720) b!4879061))

(declare-fun m!5881970 () Bool)

(assert (=> d!1567597 m!5881970))

(assert (=> d!1567597 m!5881970))

(declare-fun m!5881972 () Bool)

(assert (=> d!1567597 m!5881972))

(assert (=> b!4879060 m!5881970))

(assert (=> b!4879060 m!5881970))

(assert (=> b!4879060 m!5881972))

(assert (=> b!4878934 d!1567597))

(declare-fun d!1567599 () Bool)

(declare-fun res!2082727 () Bool)

(declare-fun e!3049379 () Bool)

(assert (=> d!1567599 (=> (not res!2082727) (not e!3049379))))

(declare-fun size!36958 (Conc!14615) Int)

(assert (=> d!1567599 (= res!2082727 (= (csize!29460 (right!41039 t!4585)) (+ (size!36958 (left!40709 (right!41039 t!4585))) (size!36958 (right!41039 (right!41039 t!4585))))))))

(assert (=> d!1567599 (= (inv!72014 (right!41039 t!4585)) e!3049379)))

(declare-fun b!4879068 () Bool)

(declare-fun res!2082728 () Bool)

(assert (=> b!4879068 (=> (not res!2082728) (not e!3049379))))

(assert (=> b!4879068 (= res!2082728 (and (not (= (left!40709 (right!41039 t!4585)) Empty!14615)) (not (= (right!41039 (right!41039 t!4585)) Empty!14615))))))

(declare-fun b!4879069 () Bool)

(declare-fun res!2082729 () Bool)

(assert (=> b!4879069 (=> (not res!2082729) (not e!3049379))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4879069 (= res!2082729 (= (cheight!14826 (right!41039 t!4585)) (+ (max!0 (height!1948 (left!40709 (right!41039 t!4585))) (height!1948 (right!41039 (right!41039 t!4585)))) 1)))))

(declare-fun b!4879070 () Bool)

(assert (=> b!4879070 (= e!3049379 (<= 0 (cheight!14826 (right!41039 t!4585))))))

(assert (= (and d!1567599 res!2082727) b!4879068))

(assert (= (and b!4879068 res!2082728) b!4879069))

(assert (= (and b!4879069 res!2082729) b!4879070))

(declare-fun m!5881974 () Bool)

(assert (=> d!1567599 m!5881974))

(declare-fun m!5881976 () Bool)

(assert (=> d!1567599 m!5881976))

(assert (=> b!4879069 m!5881958))

(assert (=> b!4879069 m!5881960))

(assert (=> b!4879069 m!5881958))

(assert (=> b!4879069 m!5881960))

(declare-fun m!5881978 () Bool)

(assert (=> b!4879069 m!5881978))

(assert (=> b!4878968 d!1567599))

(declare-fun d!1567601 () Bool)

(declare-fun res!2082730 () Bool)

(declare-fun e!3049380 () Bool)

(assert (=> d!1567601 (=> (not res!2082730) (not e!3049380))))

(assert (=> d!1567601 (= res!2082730 (<= (size!36956 (list!17560 (xs!17925 (left!40709 t!4585)))) 512))))

(assert (=> d!1567601 (= (inv!72015 (left!40709 t!4585)) e!3049380)))

(declare-fun b!4879071 () Bool)

(declare-fun res!2082731 () Bool)

(assert (=> b!4879071 (=> (not res!2082731) (not e!3049380))))

(assert (=> b!4879071 (= res!2082731 (= (csize!29461 (left!40709 t!4585)) (size!36956 (list!17560 (xs!17925 (left!40709 t!4585))))))))

(declare-fun b!4879072 () Bool)

(assert (=> b!4879072 (= e!3049380 (and (> (csize!29461 (left!40709 t!4585)) 0) (<= (csize!29461 (left!40709 t!4585)) 512)))))

(assert (= (and d!1567601 res!2082730) b!4879071))

(assert (= (and b!4879071 res!2082731) b!4879072))

(declare-fun m!5881980 () Bool)

(assert (=> d!1567601 m!5881980))

(assert (=> d!1567601 m!5881980))

(declare-fun m!5881982 () Bool)

(assert (=> d!1567601 m!5881982))

(assert (=> b!4879071 m!5881980))

(assert (=> b!4879071 m!5881980))

(assert (=> b!4879071 m!5881982))

(assert (=> b!4878967 d!1567601))

(declare-fun d!1567603 () Bool)

(declare-fun res!2082732 () Bool)

(declare-fun e!3049381 () Bool)

(assert (=> d!1567603 (=> (not res!2082732) (not e!3049381))))

(assert (=> d!1567603 (= res!2082732 (= (csize!29460 (Leaf!24356 (fill!236 1 v!5488) 1)) (+ (size!36958 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (size!36958 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(assert (=> d!1567603 (= (inv!72014 (Leaf!24356 (fill!236 1 v!5488) 1)) e!3049381)))

(declare-fun b!4879073 () Bool)

(declare-fun res!2082733 () Bool)

(assert (=> b!4879073 (=> (not res!2082733) (not e!3049381))))

(assert (=> b!4879073 (= res!2082733 (and (not (= (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1)) Empty!14615)) (not (= (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1)) Empty!14615))))))

(declare-fun b!4879074 () Bool)

(declare-fun res!2082734 () Bool)

(assert (=> b!4879074 (=> (not res!2082734) (not e!3049381))))

(assert (=> b!4879074 (= res!2082734 (= (cheight!14826 (Leaf!24356 (fill!236 1 v!5488) 1)) (+ (max!0 (height!1948 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (height!1948 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1)))) 1)))))

(declare-fun b!4879075 () Bool)

(assert (=> b!4879075 (= e!3049381 (<= 0 (cheight!14826 (Leaf!24356 (fill!236 1 v!5488) 1))))))

(assert (= (and d!1567603 res!2082732) b!4879073))

(assert (= (and b!4879073 res!2082733) b!4879074))

(assert (= (and b!4879074 res!2082734) b!4879075))

(declare-fun m!5881984 () Bool)

(assert (=> d!1567603 m!5881984))

(declare-fun m!5881986 () Bool)

(assert (=> d!1567603 m!5881986))

(declare-fun m!5881988 () Bool)

(assert (=> b!4879074 m!5881988))

(declare-fun m!5881990 () Bool)

(assert (=> b!4879074 m!5881990))

(assert (=> b!4879074 m!5881988))

(assert (=> b!4879074 m!5881990))

(declare-fun m!5881992 () Bool)

(assert (=> b!4879074 m!5881992))

(assert (=> b!4878932 d!1567603))

(declare-fun d!1567605 () Bool)

(assert (=> d!1567605 (= (height!1948 (left!40709 t!4585)) (ite (is-Empty!14615 (left!40709 t!4585)) 0 (ite (is-Leaf!24356 (left!40709 t!4585)) 1 (cheight!14826 (left!40709 t!4585)))))))

(assert (=> b!4878960 d!1567605))

(declare-fun d!1567607 () Bool)

(assert (=> d!1567607 (= (height!1948 (right!41039 t!4585)) (ite (is-Empty!14615 (right!41039 t!4585)) 0 (ite (is-Leaf!24356 (right!41039 t!4585)) 1 (cheight!14826 (right!41039 t!4585)))))))

(assert (=> b!4878960 d!1567607))

(declare-fun d!1567609 () Bool)

(assert (=> d!1567609 (= (inv!72010 (xs!17925 (right!41039 t!4585))) (<= (size!36956 (innerList!14703 (xs!17925 (right!41039 t!4585)))) 2147483647))))

(declare-fun bs!1175287 () Bool)

(assert (= bs!1175287 d!1567609))

(declare-fun m!5881994 () Bool)

(assert (=> bs!1175287 m!5881994))

(assert (=> b!4878983 d!1567609))

(assert (=> b!4878959 d!1567605))

(assert (=> b!4878959 d!1567607))

(declare-fun d!1567611 () Bool)

(declare-fun res!2082735 () Bool)

(declare-fun e!3049382 () Bool)

(assert (=> d!1567611 (=> (not res!2082735) (not e!3049382))))

(assert (=> d!1567611 (= res!2082735 (= (csize!29460 (left!40709 t!4585)) (+ (size!36958 (left!40709 (left!40709 t!4585))) (size!36958 (right!41039 (left!40709 t!4585))))))))

(assert (=> d!1567611 (= (inv!72014 (left!40709 t!4585)) e!3049382)))

(declare-fun b!4879076 () Bool)

(declare-fun res!2082736 () Bool)

(assert (=> b!4879076 (=> (not res!2082736) (not e!3049382))))

(assert (=> b!4879076 (= res!2082736 (and (not (= (left!40709 (left!40709 t!4585)) Empty!14615)) (not (= (right!41039 (left!40709 t!4585)) Empty!14615))))))

(declare-fun b!4879077 () Bool)

(declare-fun res!2082737 () Bool)

(assert (=> b!4879077 (=> (not res!2082737) (not e!3049382))))

(assert (=> b!4879077 (= res!2082737 (= (cheight!14826 (left!40709 t!4585)) (+ (max!0 (height!1948 (left!40709 (left!40709 t!4585))) (height!1948 (right!41039 (left!40709 t!4585)))) 1)))))

(declare-fun b!4879078 () Bool)

(assert (=> b!4879078 (= e!3049382 (<= 0 (cheight!14826 (left!40709 t!4585))))))

(assert (= (and d!1567611 res!2082735) b!4879076))

(assert (= (and b!4879076 res!2082736) b!4879077))

(assert (= (and b!4879077 res!2082737) b!4879078))

(declare-fun m!5881996 () Bool)

(assert (=> d!1567611 m!5881996))

(declare-fun m!5881998 () Bool)

(assert (=> d!1567611 m!5881998))

(declare-fun m!5882000 () Bool)

(assert (=> b!4879077 m!5882000))

(declare-fun m!5882002 () Bool)

(assert (=> b!4879077 m!5882002))

(assert (=> b!4879077 m!5882000))

(assert (=> b!4879077 m!5882002))

(declare-fun m!5882004 () Bool)

(assert (=> b!4879077 m!5882004))

(assert (=> b!4878965 d!1567611))

(declare-fun d!1567613 () Bool)

(declare-fun lt!1999086 () Bool)

(declare-fun isEmpty!30028 (List!56154) Bool)

(declare-fun list!17561 (Conc!14615) List!56154)

(assert (=> d!1567613 (= lt!1999086 (isEmpty!30028 (list!17561 (right!41039 t!4585))))))

(assert (=> d!1567613 (= lt!1999086 (= (size!36958 (right!41039 t!4585)) 0))))

(assert (=> d!1567613 (= (isEmpty!30026 (right!41039 t!4585)) lt!1999086)))

(declare-fun bs!1175288 () Bool)

(assert (= bs!1175288 d!1567613))

(declare-fun m!5882006 () Bool)

(assert (=> bs!1175288 m!5882006))

(assert (=> bs!1175288 m!5882006))

(declare-fun m!5882008 () Bool)

(assert (=> bs!1175288 m!5882008))

(declare-fun m!5882010 () Bool)

(assert (=> bs!1175288 m!5882010))

(assert (=> b!4878961 d!1567613))

(declare-fun d!1567615 () Bool)

(declare-fun res!2082738 () Bool)

(declare-fun e!3049383 () Bool)

(assert (=> d!1567615 (=> (not res!2082738) (not e!3049383))))

(assert (=> d!1567615 (= res!2082738 (<= (size!36956 (list!17560 (xs!17925 t!4585))) 512))))

(assert (=> d!1567615 (= (inv!72015 t!4585) e!3049383)))

(declare-fun b!4879079 () Bool)

(declare-fun res!2082739 () Bool)

(assert (=> b!4879079 (=> (not res!2082739) (not e!3049383))))

(assert (=> b!4879079 (= res!2082739 (= (csize!29461 t!4585) (size!36956 (list!17560 (xs!17925 t!4585)))))))

(declare-fun b!4879080 () Bool)

(assert (=> b!4879080 (= e!3049383 (and (> (csize!29461 t!4585) 0) (<= (csize!29461 t!4585) 512)))))

(assert (= (and d!1567615 res!2082738) b!4879079))

(assert (= (and b!4879079 res!2082739) b!4879080))

(declare-fun m!5882012 () Bool)

(assert (=> d!1567615 m!5882012))

(assert (=> d!1567615 m!5882012))

(declare-fun m!5882014 () Bool)

(assert (=> d!1567615 m!5882014))

(assert (=> b!4879079 m!5882012))

(assert (=> b!4879079 m!5882012))

(assert (=> b!4879079 m!5882014))

(assert (=> b!4878964 d!1567615))

(declare-fun d!1567617 () Bool)

(declare-fun e!3049393 () Bool)

(assert (=> d!1567617 e!3049393))

(declare-fun res!2082744 () Bool)

(assert (=> d!1567617 (=> (not res!2082744) (not e!3049393))))

(declare-fun lt!1999089 () List!56154)

(declare-fun content!10007 (List!56154) (Set T!99284))

(assert (=> d!1567617 (= res!2082744 (= (content!10007 lt!1999089) (ite (<= 1 0) (as set.empty (Set T!99284)) (set.insert v!5488 (as set.empty (Set T!99284))))))))

(declare-fun e!3049392 () List!56154)

(assert (=> d!1567617 (= lt!1999089 e!3049392)))

(declare-fun c!829802 () Bool)

(assert (=> d!1567617 (= c!829802 (<= 1 0))))

(assert (=> d!1567617 (= (fill!238 1 v!5488) lt!1999089)))

(declare-fun b!4879093 () Bool)

(assert (=> b!4879093 (= e!3049392 Nil!56030)))

(declare-fun b!4879094 () Bool)

(assert (=> b!4879094 (= e!3049392 (Cons!56030 v!5488 (fill!238 (- 1 1) v!5488)))))

(declare-fun b!4879095 () Bool)

(assert (=> b!4879095 (= e!3049393 (= (size!36956 lt!1999089) (ite (<= 1 0) 0 1)))))

(assert (= (and d!1567617 c!829802) b!4879093))

(assert (= (and d!1567617 (not c!829802)) b!4879094))

(assert (= (and d!1567617 res!2082744) b!4879095))

(declare-fun m!5882024 () Bool)

(assert (=> d!1567617 m!5882024))

(declare-fun m!5882026 () Bool)

(assert (=> d!1567617 m!5882026))

(declare-fun m!5882028 () Bool)

(assert (=> b!4879094 m!5882028))

(declare-fun m!5882030 () Bool)

(assert (=> b!4879095 m!5882030))

(assert (=> d!1567563 d!1567617))

(declare-fun d!1567625 () Bool)

(declare-fun _$14!1591 () IArray!29291)

(assert (=> d!1567625 (= _$14!1591 (IArray!29292 (fill!238 1 v!5488)))))

(declare-fun e!3049396 () Bool)

(assert (=> d!1567625 (and (inv!72010 _$14!1591) e!3049396)))

(assert (=> d!1567625 (= (choose!35658 1 v!5488) _$14!1591)))

(declare-fun b!4879098 () Bool)

(declare-fun tp!1372864 () Bool)

(assert (=> b!4879098 (= e!3049396 tp!1372864)))

(assert (= d!1567625 b!4879098))

(assert (=> d!1567625 m!5881856))

(declare-fun m!5882032 () Bool)

(assert (=> d!1567625 m!5882032))

(assert (=> d!1567563 d!1567625))

(declare-fun b!4879099 () Bool)

(declare-fun res!2082745 () Bool)

(declare-fun e!3049397 () Bool)

(assert (=> b!4879099 (=> (not res!2082745) (not e!3049397))))

(assert (=> b!4879099 (= res!2082745 (isBalanced!3977 (right!41039 (left!40709 t!4585))))))

(declare-fun b!4879100 () Bool)

(declare-fun res!2082747 () Bool)

(assert (=> b!4879100 (=> (not res!2082747) (not e!3049397))))

(assert (=> b!4879100 (= res!2082747 (isBalanced!3977 (left!40709 (left!40709 t!4585))))))

(declare-fun b!4879101 () Bool)

(declare-fun res!2082749 () Bool)

(assert (=> b!4879101 (=> (not res!2082749) (not e!3049397))))

(assert (=> b!4879101 (= res!2082749 (not (isEmpty!30026 (left!40709 (left!40709 t!4585)))))))

(declare-fun b!4879102 () Bool)

(declare-fun e!3049398 () Bool)

(assert (=> b!4879102 (= e!3049398 e!3049397)))

(declare-fun res!2082746 () Bool)

(assert (=> b!4879102 (=> (not res!2082746) (not e!3049397))))

(assert (=> b!4879102 (= res!2082746 (<= (- 1) (- (height!1948 (left!40709 (left!40709 t!4585))) (height!1948 (right!41039 (left!40709 t!4585))))))))

(declare-fun d!1567627 () Bool)

(declare-fun res!2082748 () Bool)

(assert (=> d!1567627 (=> res!2082748 e!3049398)))

(assert (=> d!1567627 (= res!2082748 (not (is-Node!14615 (left!40709 t!4585))))))

(assert (=> d!1567627 (= (isBalanced!3977 (left!40709 t!4585)) e!3049398)))

(declare-fun b!4879103 () Bool)

(declare-fun res!2082750 () Bool)

(assert (=> b!4879103 (=> (not res!2082750) (not e!3049397))))

(assert (=> b!4879103 (= res!2082750 (<= (- (height!1948 (left!40709 (left!40709 t!4585))) (height!1948 (right!41039 (left!40709 t!4585)))) 1))))

(declare-fun b!4879104 () Bool)

(assert (=> b!4879104 (= e!3049397 (not (isEmpty!30026 (right!41039 (left!40709 t!4585)))))))

(assert (= (and d!1567627 (not res!2082748)) b!4879102))

(assert (= (and b!4879102 res!2082746) b!4879103))

(assert (= (and b!4879103 res!2082750) b!4879100))

(assert (= (and b!4879100 res!2082747) b!4879099))

(assert (= (and b!4879099 res!2082745) b!4879101))

(assert (= (and b!4879101 res!2082749) b!4879104))

(declare-fun m!5882034 () Bool)

(assert (=> b!4879100 m!5882034))

(declare-fun m!5882036 () Bool)

(assert (=> b!4879101 m!5882036))

(declare-fun m!5882038 () Bool)

(assert (=> b!4879104 m!5882038))

(declare-fun m!5882040 () Bool)

(assert (=> b!4879099 m!5882040))

(assert (=> b!4879103 m!5882000))

(assert (=> b!4879103 m!5882002))

(assert (=> b!4879102 m!5882000))

(assert (=> b!4879102 m!5882002))

(assert (=> b!4878957 d!1567627))

(declare-fun d!1567629 () Bool)

(assert (=> d!1567629 (= (inv!72010 (xs!17925 (left!40709 t!4585))) (<= (size!36956 (innerList!14703 (xs!17925 (left!40709 t!4585)))) 2147483647))))

(declare-fun bs!1175289 () Bool)

(assert (= bs!1175289 d!1567629))

(declare-fun m!5882042 () Bool)

(assert (=> bs!1175289 m!5882042))

(assert (=> b!4878980 d!1567629))

(declare-fun d!1567631 () Bool)

(declare-fun res!2082751 () Bool)

(declare-fun e!3049399 () Bool)

(assert (=> d!1567631 (=> (not res!2082751) (not e!3049399))))

(assert (=> d!1567631 (= res!2082751 (= (csize!29460 t!4585) (+ (size!36958 (left!40709 t!4585)) (size!36958 (right!41039 t!4585)))))))

(assert (=> d!1567631 (= (inv!72014 t!4585) e!3049399)))

(declare-fun b!4879105 () Bool)

(declare-fun res!2082752 () Bool)

(assert (=> b!4879105 (=> (not res!2082752) (not e!3049399))))

(assert (=> b!4879105 (= res!2082752 (and (not (= (left!40709 t!4585) Empty!14615)) (not (= (right!41039 t!4585) Empty!14615))))))

(declare-fun b!4879106 () Bool)

(declare-fun res!2082753 () Bool)

(assert (=> b!4879106 (=> (not res!2082753) (not e!3049399))))

(assert (=> b!4879106 (= res!2082753 (= (cheight!14826 t!4585) (+ (max!0 (height!1948 (left!40709 t!4585)) (height!1948 (right!41039 t!4585))) 1)))))

(declare-fun b!4879107 () Bool)

(assert (=> b!4879107 (= e!3049399 (<= 0 (cheight!14826 t!4585)))))

(assert (= (and d!1567631 res!2082751) b!4879105))

(assert (= (and b!4879105 res!2082752) b!4879106))

(assert (= (and b!4879106 res!2082753) b!4879107))

(declare-fun m!5882044 () Bool)

(assert (=> d!1567631 m!5882044))

(assert (=> d!1567631 m!5882010))

(assert (=> b!4879106 m!5881872))

(assert (=> b!4879106 m!5881874))

(assert (=> b!4879106 m!5881872))

(assert (=> b!4879106 m!5881874))

(declare-fun m!5882046 () Bool)

(assert (=> b!4879106 m!5882046))

(assert (=> b!4878962 d!1567631))

(declare-fun d!1567633 () Bool)

(declare-fun c!829803 () Bool)

(assert (=> d!1567633 (= c!829803 (is-Node!14615 (left!40709 (right!41039 t!4585))))))

(declare-fun e!3049400 () Bool)

(assert (=> d!1567633 (= (inv!72011 (left!40709 (right!41039 t!4585))) e!3049400)))

(declare-fun b!4879108 () Bool)

(assert (=> b!4879108 (= e!3049400 (inv!72014 (left!40709 (right!41039 t!4585))))))

(declare-fun b!4879109 () Bool)

(declare-fun e!3049401 () Bool)

(assert (=> b!4879109 (= e!3049400 e!3049401)))

(declare-fun res!2082754 () Bool)

(assert (=> b!4879109 (= res!2082754 (not (is-Leaf!24356 (left!40709 (right!41039 t!4585)))))))

(assert (=> b!4879109 (=> res!2082754 e!3049401)))

(declare-fun b!4879110 () Bool)

(assert (=> b!4879110 (= e!3049401 (inv!72015 (left!40709 (right!41039 t!4585))))))

(assert (= (and d!1567633 c!829803) b!4879108))

(assert (= (and d!1567633 (not c!829803)) b!4879109))

(assert (= (and b!4879109 (not res!2082754)) b!4879110))

(declare-fun m!5882048 () Bool)

(assert (=> b!4879108 m!5882048))

(declare-fun m!5882050 () Bool)

(assert (=> b!4879110 m!5882050))

(assert (=> b!4878982 d!1567633))

(declare-fun d!1567635 () Bool)

(declare-fun c!829804 () Bool)

(assert (=> d!1567635 (= c!829804 (is-Node!14615 (right!41039 (right!41039 t!4585))))))

(declare-fun e!3049402 () Bool)

(assert (=> d!1567635 (= (inv!72011 (right!41039 (right!41039 t!4585))) e!3049402)))

(declare-fun b!4879111 () Bool)

(assert (=> b!4879111 (= e!3049402 (inv!72014 (right!41039 (right!41039 t!4585))))))

(declare-fun b!4879112 () Bool)

(declare-fun e!3049403 () Bool)

(assert (=> b!4879112 (= e!3049402 e!3049403)))

(declare-fun res!2082755 () Bool)

(assert (=> b!4879112 (= res!2082755 (not (is-Leaf!24356 (right!41039 (right!41039 t!4585)))))))

(assert (=> b!4879112 (=> res!2082755 e!3049403)))

(declare-fun b!4879113 () Bool)

(assert (=> b!4879113 (= e!3049403 (inv!72015 (right!41039 (right!41039 t!4585))))))

(assert (= (and d!1567635 c!829804) b!4879111))

(assert (= (and d!1567635 (not c!829804)) b!4879112))

(assert (= (and b!4879112 (not res!2082755)) b!4879113))

(declare-fun m!5882052 () Bool)

(assert (=> b!4879111 m!5882052))

(declare-fun m!5882054 () Bool)

(assert (=> b!4879113 m!5882054))

(assert (=> b!4878982 d!1567635))

(declare-fun d!1567637 () Bool)

(declare-fun lt!1999092 () Bool)

(assert (=> d!1567637 (= lt!1999092 (isEmpty!30028 (list!17561 (left!40709 t!4585))))))

(assert (=> d!1567637 (= lt!1999092 (= (size!36958 (left!40709 t!4585)) 0))))

(assert (=> d!1567637 (= (isEmpty!30026 (left!40709 t!4585)) lt!1999092)))

(declare-fun bs!1175290 () Bool)

(assert (= bs!1175290 d!1567637))

(declare-fun m!5882056 () Bool)

(assert (=> bs!1175290 m!5882056))

(assert (=> bs!1175290 m!5882056))

(declare-fun m!5882058 () Bool)

(assert (=> bs!1175290 m!5882058))

(assert (=> bs!1175290 m!5882044))

(assert (=> b!4878958 d!1567637))

(declare-fun tp!1372867 () Bool)

(declare-fun tp!1372865 () Bool)

(declare-fun b!4879114 () Bool)

(declare-fun e!3049404 () Bool)

(assert (=> b!4879114 (= e!3049404 (and (inv!72011 (left!40709 (left!40709 (left!40709 t!4585)))) tp!1372867 (inv!72011 (right!41039 (left!40709 (left!40709 t!4585)))) tp!1372865))))

(declare-fun b!4879116 () Bool)

(declare-fun e!3049405 () Bool)

(declare-fun tp!1372866 () Bool)

(assert (=> b!4879116 (= e!3049405 tp!1372866)))

(declare-fun b!4879115 () Bool)

(assert (=> b!4879115 (= e!3049404 (and (inv!72010 (xs!17925 (left!40709 (left!40709 t!4585)))) e!3049405))))

(assert (=> b!4878979 (= tp!1372840 (and (inv!72011 (left!40709 (left!40709 t!4585))) e!3049404))))

(assert (= (and b!4878979 (is-Node!14615 (left!40709 (left!40709 t!4585)))) b!4879114))

(assert (= b!4879115 b!4879116))

(assert (= (and b!4878979 (is-Leaf!24356 (left!40709 (left!40709 t!4585)))) b!4879115))

(declare-fun m!5882062 () Bool)

(assert (=> b!4879114 m!5882062))

(declare-fun m!5882064 () Bool)

(assert (=> b!4879114 m!5882064))

(declare-fun m!5882066 () Bool)

(assert (=> b!4879115 m!5882066))

(assert (=> b!4878979 m!5881894))

(declare-fun b!4879117 () Bool)

(declare-fun tp!1372870 () Bool)

(declare-fun e!3049406 () Bool)

(declare-fun tp!1372868 () Bool)

(assert (=> b!4879117 (= e!3049406 (and (inv!72011 (left!40709 (right!41039 (left!40709 t!4585)))) tp!1372870 (inv!72011 (right!41039 (right!41039 (left!40709 t!4585)))) tp!1372868))))

(declare-fun b!4879119 () Bool)

(declare-fun e!3049407 () Bool)

(declare-fun tp!1372869 () Bool)

(assert (=> b!4879119 (= e!3049407 tp!1372869)))

(declare-fun b!4879118 () Bool)

(assert (=> b!4879118 (= e!3049406 (and (inv!72010 (xs!17925 (right!41039 (left!40709 t!4585)))) e!3049407))))

(assert (=> b!4878979 (= tp!1372838 (and (inv!72011 (right!41039 (left!40709 t!4585))) e!3049406))))

(assert (= (and b!4878979 (is-Node!14615 (right!41039 (left!40709 t!4585)))) b!4879117))

(assert (= b!4879118 b!4879119))

(assert (= (and b!4878979 (is-Leaf!24356 (right!41039 (left!40709 t!4585)))) b!4879118))

(declare-fun m!5882072 () Bool)

(assert (=> b!4879117 m!5882072))

(declare-fun m!5882074 () Bool)

(assert (=> b!4879117 m!5882074))

(declare-fun m!5882076 () Bool)

(assert (=> b!4879118 m!5882076))

(assert (=> b!4878979 m!5881896))

(declare-fun b!4879120 () Bool)

(declare-fun e!3049408 () Bool)

(declare-fun tp!1372871 () Bool)

(assert (=> b!4879120 (= e!3049408 (and tp_is_empty!35693 tp!1372871))))

(assert (=> b!4878984 (= tp!1372842 e!3049408)))

(assert (= (and b!4878984 (is-Cons!56030 (innerList!14703 (xs!17925 (right!41039 t!4585))))) b!4879120))

(declare-fun b!4879121 () Bool)

(declare-fun e!3049409 () Bool)

(declare-fun tp!1372872 () Bool)

(assert (=> b!4879121 (= e!3049409 (and tp_is_empty!35693 tp!1372872))))

(assert (=> b!4878989 (= tp!1372846 e!3049409)))

(assert (= (and b!4878989 (is-Cons!56030 (t!364780 (innerList!14703 (xs!17925 t!4585))))) b!4879121))

(declare-fun b!4879122 () Bool)

(declare-fun e!3049410 () Bool)

(declare-fun tp!1372873 () Bool)

(assert (=> b!4879122 (= e!3049410 (and tp_is_empty!35693 tp!1372873))))

(assert (=> b!4878981 (= tp!1372839 e!3049410)))

(assert (= (and b!4878981 (is-Cons!56030 (innerList!14703 (xs!17925 (left!40709 t!4585))))) b!4879122))

(declare-fun tp!1372876 () Bool)

(declare-fun b!4879123 () Bool)

(declare-fun e!3049411 () Bool)

(declare-fun tp!1372874 () Bool)

(assert (=> b!4879123 (= e!3049411 (and (inv!72011 (left!40709 (left!40709 (right!41039 t!4585)))) tp!1372876 (inv!72011 (right!41039 (left!40709 (right!41039 t!4585)))) tp!1372874))))

(declare-fun b!4879125 () Bool)

(declare-fun e!3049412 () Bool)

(declare-fun tp!1372875 () Bool)

(assert (=> b!4879125 (= e!3049412 tp!1372875)))

(declare-fun b!4879124 () Bool)

(assert (=> b!4879124 (= e!3049411 (and (inv!72010 (xs!17925 (left!40709 (right!41039 t!4585)))) e!3049412))))

(assert (=> b!4878982 (= tp!1372843 (and (inv!72011 (left!40709 (right!41039 t!4585))) e!3049411))))

(assert (= (and b!4878982 (is-Node!14615 (left!40709 (right!41039 t!4585)))) b!4879123))

(assert (= b!4879124 b!4879125))

(assert (= (and b!4878982 (is-Leaf!24356 (left!40709 (right!41039 t!4585)))) b!4879124))

(declare-fun m!5882078 () Bool)

(assert (=> b!4879123 m!5882078))

(declare-fun m!5882080 () Bool)

(assert (=> b!4879123 m!5882080))

(declare-fun m!5882082 () Bool)

(assert (=> b!4879124 m!5882082))

(assert (=> b!4878982 m!5881900))

(declare-fun e!3049413 () Bool)

(declare-fun b!4879126 () Bool)

(declare-fun tp!1372877 () Bool)

(declare-fun tp!1372879 () Bool)

(assert (=> b!4879126 (= e!3049413 (and (inv!72011 (left!40709 (right!41039 (right!41039 t!4585)))) tp!1372879 (inv!72011 (right!41039 (right!41039 (right!41039 t!4585)))) tp!1372877))))

(declare-fun b!4879128 () Bool)

(declare-fun e!3049414 () Bool)

(declare-fun tp!1372878 () Bool)

(assert (=> b!4879128 (= e!3049414 tp!1372878)))

(declare-fun b!4879127 () Bool)

(assert (=> b!4879127 (= e!3049413 (and (inv!72010 (xs!17925 (right!41039 (right!41039 t!4585)))) e!3049414))))

(assert (=> b!4878982 (= tp!1372841 (and (inv!72011 (right!41039 (right!41039 t!4585))) e!3049413))))

(assert (= (and b!4878982 (is-Node!14615 (right!41039 (right!41039 t!4585)))) b!4879126))

(assert (= b!4879127 b!4879128))

(assert (= (and b!4878982 (is-Leaf!24356 (right!41039 (right!41039 t!4585)))) b!4879127))

(declare-fun m!5882084 () Bool)

(assert (=> b!4879126 m!5882084))

(declare-fun m!5882086 () Bool)

(assert (=> b!4879126 m!5882086))

(declare-fun m!5882088 () Bool)

(assert (=> b!4879127 m!5882088))

(assert (=> b!4878982 m!5881902))

(push 1)

(assert (not b!4879049))

(assert (not d!1567601))

(assert (not b!4879071))

(assert (not b!4879111))

(assert (not d!1567637))

(assert (not b!4878982))

(assert (not b!4879100))

(assert (not b!4879101))

(assert (not b!4879116))

(assert (not b!4879104))

(assert (not b!4878979))

(assert (not b!4879094))

(assert (not b!4879079))

(assert (not d!1567617))

(assert (not d!1567625))

(assert (not d!1567587))

(assert (not b!4879048))

(assert (not d!1567631))

(assert (not b!4879124))

(assert (not b!4879052))

(assert (not b!4879122))

(assert (not b!4879057))

(assert (not b!4879053))

(assert (not d!1567603))

(assert (not b!4879121))

(assert (not b!4879126))

(assert (not b!4879074))

(assert (not d!1567615))

(assert (not b!4879103))

(assert (not b!4879099))

(assert tp_is_empty!35693)

(assert (not b!4879127))

(assert (not d!1567629))

(assert (not b!4879059))

(assert (not b!4879047))

(assert (not b!4879123))

(assert (not b!4879115))

(assert (not b!4879095))

(assert (not b!4879051))

(assert (not b!4879040))

(assert (not d!1567599))

(assert (not b!4879120))

(assert (not b!4879118))

(assert (not b!4879077))

(assert (not b!4879102))

(assert (not d!1567609))

(assert (not b!4879117))

(assert (not b!4879128))

(assert (not b!4879098))

(assert (not d!1567597))

(assert (not b!4879050))

(assert (not b!4879106))

(assert (not b!4879125))

(assert (not b!4879114))

(assert (not b!4879060))

(assert (not b!4879110))

(assert (not b!4879069))

(assert (not b!4879119))

(assert (not b!4879056))

(assert (not b!4879113))

(assert (not b!4879108))

(assert (not b!4879054))

(assert (not d!1567613))

(assert (not d!1567611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567679 () Bool)

(assert (=> d!1567679 (= (isEmpty!30028 (list!17561 (right!41039 t!4585))) (is-Nil!56030 (list!17561 (right!41039 t!4585))))))

(assert (=> d!1567613 d!1567679))

(declare-fun b!4879220 () Bool)

(declare-fun e!3049463 () List!56154)

(assert (=> b!4879220 (= e!3049463 (list!17560 (xs!17925 (right!41039 t!4585))))))

(declare-fun b!4879219 () Bool)

(declare-fun e!3049462 () List!56154)

(assert (=> b!4879219 (= e!3049462 e!3049463)))

(declare-fun c!829818 () Bool)

(assert (=> b!4879219 (= c!829818 (is-Leaf!24356 (right!41039 t!4585)))))

(declare-fun b!4879221 () Bool)

(declare-fun ++!12213 (List!56154 List!56154) List!56154)

(assert (=> b!4879221 (= e!3049463 (++!12213 (list!17561 (left!40709 (right!41039 t!4585))) (list!17561 (right!41039 (right!41039 t!4585)))))))

(declare-fun d!1567681 () Bool)

(declare-fun c!829817 () Bool)

(assert (=> d!1567681 (= c!829817 (is-Empty!14615 (right!41039 t!4585)))))

(assert (=> d!1567681 (= (list!17561 (right!41039 t!4585)) e!3049462)))

(declare-fun b!4879218 () Bool)

(assert (=> b!4879218 (= e!3049462 Nil!56030)))

(assert (= (and d!1567681 c!829817) b!4879218))

(assert (= (and d!1567681 (not c!829817)) b!4879219))

(assert (= (and b!4879219 c!829818) b!4879220))

(assert (= (and b!4879219 (not c!829818)) b!4879221))

(assert (=> b!4879220 m!5881944))

(declare-fun m!5882208 () Bool)

(assert (=> b!4879221 m!5882208))

(declare-fun m!5882210 () Bool)

(assert (=> b!4879221 m!5882210))

(assert (=> b!4879221 m!5882208))

(assert (=> b!4879221 m!5882210))

(declare-fun m!5882212 () Bool)

(assert (=> b!4879221 m!5882212))

(assert (=> d!1567613 d!1567681))

(declare-fun d!1567683 () Bool)

(declare-fun lt!1999103 () Int)

(assert (=> d!1567683 (= lt!1999103 (size!36956 (list!17561 (right!41039 t!4585))))))

(assert (=> d!1567683 (= lt!1999103 (ite (is-Empty!14615 (right!41039 t!4585)) 0 (ite (is-Leaf!24356 (right!41039 t!4585)) (csize!29461 (right!41039 t!4585)) (csize!29460 (right!41039 t!4585)))))))

(assert (=> d!1567683 (= (size!36958 (right!41039 t!4585)) lt!1999103)))

(declare-fun bs!1175295 () Bool)

(assert (= bs!1175295 d!1567683))

(assert (=> bs!1175295 m!5882006))

(assert (=> bs!1175295 m!5882006))

(declare-fun m!5882214 () Bool)

(assert (=> bs!1175295 m!5882214))

(assert (=> d!1567613 d!1567683))

(assert (=> b!4878979 d!1567593))

(assert (=> b!4878979 d!1567595))

(declare-fun b!4879222 () Bool)

(declare-fun res!2082803 () Bool)

(declare-fun e!3049464 () Bool)

(assert (=> b!4879222 (=> (not res!2082803) (not e!3049464))))

(assert (=> b!4879222 (= res!2082803 (isBalanced!3977 (right!41039 (right!41039 (right!41039 t!4585)))))))

(declare-fun b!4879223 () Bool)

(declare-fun res!2082805 () Bool)

(assert (=> b!4879223 (=> (not res!2082805) (not e!3049464))))

(assert (=> b!4879223 (= res!2082805 (isBalanced!3977 (left!40709 (right!41039 (right!41039 t!4585)))))))

(declare-fun b!4879224 () Bool)

(declare-fun res!2082807 () Bool)

(assert (=> b!4879224 (=> (not res!2082807) (not e!3049464))))

(assert (=> b!4879224 (= res!2082807 (not (isEmpty!30026 (left!40709 (right!41039 (right!41039 t!4585))))))))

(declare-fun b!4879225 () Bool)

(declare-fun e!3049465 () Bool)

(assert (=> b!4879225 (= e!3049465 e!3049464)))

(declare-fun res!2082804 () Bool)

(assert (=> b!4879225 (=> (not res!2082804) (not e!3049464))))

(assert (=> b!4879225 (= res!2082804 (<= (- 1) (- (height!1948 (left!40709 (right!41039 (right!41039 t!4585)))) (height!1948 (right!41039 (right!41039 (right!41039 t!4585)))))))))

(declare-fun d!1567685 () Bool)

(declare-fun res!2082806 () Bool)

(assert (=> d!1567685 (=> res!2082806 e!3049465)))

(assert (=> d!1567685 (= res!2082806 (not (is-Node!14615 (right!41039 (right!41039 t!4585)))))))

(assert (=> d!1567685 (= (isBalanced!3977 (right!41039 (right!41039 t!4585))) e!3049465)))

(declare-fun b!4879226 () Bool)

(declare-fun res!2082808 () Bool)

(assert (=> b!4879226 (=> (not res!2082808) (not e!3049464))))

(assert (=> b!4879226 (= res!2082808 (<= (- (height!1948 (left!40709 (right!41039 (right!41039 t!4585)))) (height!1948 (right!41039 (right!41039 (right!41039 t!4585))))) 1))))

(declare-fun b!4879227 () Bool)

(assert (=> b!4879227 (= e!3049464 (not (isEmpty!30026 (right!41039 (right!41039 (right!41039 t!4585))))))))

(assert (= (and d!1567685 (not res!2082806)) b!4879225))

(assert (= (and b!4879225 res!2082804) b!4879226))

(assert (= (and b!4879226 res!2082808) b!4879223))

(assert (= (and b!4879223 res!2082805) b!4879222))

(assert (= (and b!4879222 res!2082803) b!4879224))

(assert (= (and b!4879224 res!2082807) b!4879227))

(declare-fun m!5882216 () Bool)

(assert (=> b!4879223 m!5882216))

(declare-fun m!5882218 () Bool)

(assert (=> b!4879224 m!5882218))

(declare-fun m!5882220 () Bool)

(assert (=> b!4879227 m!5882220))

(declare-fun m!5882222 () Bool)

(assert (=> b!4879222 m!5882222))

(declare-fun m!5882224 () Bool)

(assert (=> b!4879226 m!5882224))

(declare-fun m!5882226 () Bool)

(assert (=> b!4879226 m!5882226))

(assert (=> b!4879225 m!5882224))

(assert (=> b!4879225 m!5882226))

(assert (=> b!4879048 d!1567685))

(declare-fun d!1567687 () Bool)

(declare-fun lt!1999104 () Int)

(assert (=> d!1567687 (>= lt!1999104 0)))

(declare-fun e!3049466 () Int)

(assert (=> d!1567687 (= lt!1999104 e!3049466)))

(declare-fun c!829819 () Bool)

(assert (=> d!1567687 (= c!829819 (is-Nil!56030 lt!1999089))))

(assert (=> d!1567687 (= (size!36956 lt!1999089) lt!1999104)))

(declare-fun b!4879228 () Bool)

(assert (=> b!4879228 (= e!3049466 0)))

(declare-fun b!4879229 () Bool)

(assert (=> b!4879229 (= e!3049466 (+ 1 (size!36956 (t!364780 lt!1999089))))))

(assert (= (and d!1567687 c!829819) b!4879228))

(assert (= (and d!1567687 (not c!829819)) b!4879229))

(declare-fun m!5882228 () Bool)

(assert (=> b!4879229 m!5882228))

(assert (=> b!4879095 d!1567687))

(declare-fun d!1567689 () Bool)

(assert (=> d!1567689 (= (max!0 (height!1948 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (height!1948 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1)))) (ite (< (height!1948 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (height!1948 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1)))) (height!1948 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) (height!1948 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1)))))))

(assert (=> b!4879074 d!1567689))

(declare-fun d!1567691 () Bool)

(assert (=> d!1567691 (= (height!1948 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (ite (is-Empty!14615 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) 0 (ite (is-Leaf!24356 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) 1 (cheight!14826 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(assert (=> b!4879074 d!1567691))

(declare-fun d!1567693 () Bool)

(assert (=> d!1567693 (= (height!1948 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) (ite (is-Empty!14615 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) 0 (ite (is-Leaf!24356 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) 1 (cheight!14826 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(assert (=> b!4879074 d!1567693))

(declare-fun d!1567695 () Bool)

(declare-fun lt!1999105 () Int)

(assert (=> d!1567695 (>= lt!1999105 0)))

(declare-fun e!3049467 () Int)

(assert (=> d!1567695 (= lt!1999105 e!3049467)))

(declare-fun c!829820 () Bool)

(assert (=> d!1567695 (= c!829820 (is-Nil!56030 (list!17560 (xs!17925 t!4585))))))

(assert (=> d!1567695 (= (size!36956 (list!17560 (xs!17925 t!4585))) lt!1999105)))

(declare-fun b!4879230 () Bool)

(assert (=> b!4879230 (= e!3049467 0)))

(declare-fun b!4879231 () Bool)

(assert (=> b!4879231 (= e!3049467 (+ 1 (size!36956 (t!364780 (list!17560 (xs!17925 t!4585))))))))

(assert (= (and d!1567695 c!829820) b!4879230))

(assert (= (and d!1567695 (not c!829820)) b!4879231))

(declare-fun m!5882230 () Bool)

(assert (=> b!4879231 m!5882230))

(assert (=> b!4879079 d!1567695))

(declare-fun d!1567697 () Bool)

(assert (=> d!1567697 (= (list!17560 (xs!17925 t!4585)) (innerList!14703 (xs!17925 t!4585)))))

(assert (=> b!4879079 d!1567697))

(declare-fun d!1567699 () Bool)

(declare-fun lt!1999106 () Bool)

(assert (=> d!1567699 (= lt!1999106 (isEmpty!30028 (list!17561 (right!41039 (left!40709 t!4585)))))))

(assert (=> d!1567699 (= lt!1999106 (= (size!36958 (right!41039 (left!40709 t!4585))) 0))))

(assert (=> d!1567699 (= (isEmpty!30026 (right!41039 (left!40709 t!4585))) lt!1999106)))

(declare-fun bs!1175296 () Bool)

(assert (= bs!1175296 d!1567699))

(declare-fun m!5882232 () Bool)

(assert (=> bs!1175296 m!5882232))

(assert (=> bs!1175296 m!5882232))

(declare-fun m!5882234 () Bool)

(assert (=> bs!1175296 m!5882234))

(assert (=> bs!1175296 m!5881998))

(assert (=> b!4879104 d!1567699))

(assert (=> d!1567615 d!1567695))

(assert (=> d!1567615 d!1567697))

(declare-fun b!4879232 () Bool)

(declare-fun res!2082809 () Bool)

(declare-fun e!3049468 () Bool)

(assert (=> b!4879232 (=> (not res!2082809) (not e!3049468))))

(assert (=> b!4879232 (= res!2082809 (isBalanced!3977 (right!41039 (left!40709 (left!40709 t!4585)))))))

(declare-fun b!4879233 () Bool)

(declare-fun res!2082811 () Bool)

(assert (=> b!4879233 (=> (not res!2082811) (not e!3049468))))

(assert (=> b!4879233 (= res!2082811 (isBalanced!3977 (left!40709 (left!40709 (left!40709 t!4585)))))))

(declare-fun b!4879234 () Bool)

(declare-fun res!2082813 () Bool)

(assert (=> b!4879234 (=> (not res!2082813) (not e!3049468))))

(assert (=> b!4879234 (= res!2082813 (not (isEmpty!30026 (left!40709 (left!40709 (left!40709 t!4585))))))))

(declare-fun b!4879235 () Bool)

(declare-fun e!3049469 () Bool)

(assert (=> b!4879235 (= e!3049469 e!3049468)))

(declare-fun res!2082810 () Bool)

(assert (=> b!4879235 (=> (not res!2082810) (not e!3049468))))

(assert (=> b!4879235 (= res!2082810 (<= (- 1) (- (height!1948 (left!40709 (left!40709 (left!40709 t!4585)))) (height!1948 (right!41039 (left!40709 (left!40709 t!4585)))))))))

(declare-fun d!1567701 () Bool)

(declare-fun res!2082812 () Bool)

(assert (=> d!1567701 (=> res!2082812 e!3049469)))

(assert (=> d!1567701 (= res!2082812 (not (is-Node!14615 (left!40709 (left!40709 t!4585)))))))

(assert (=> d!1567701 (= (isBalanced!3977 (left!40709 (left!40709 t!4585))) e!3049469)))

(declare-fun b!4879236 () Bool)

(declare-fun res!2082814 () Bool)

(assert (=> b!4879236 (=> (not res!2082814) (not e!3049468))))

(assert (=> b!4879236 (= res!2082814 (<= (- (height!1948 (left!40709 (left!40709 (left!40709 t!4585)))) (height!1948 (right!41039 (left!40709 (left!40709 t!4585))))) 1))))

(declare-fun b!4879237 () Bool)

(assert (=> b!4879237 (= e!3049468 (not (isEmpty!30026 (right!41039 (left!40709 (left!40709 t!4585))))))))

(assert (= (and d!1567701 (not res!2082812)) b!4879235))

(assert (= (and b!4879235 res!2082810) b!4879236))

(assert (= (and b!4879236 res!2082814) b!4879233))

(assert (= (and b!4879233 res!2082811) b!4879232))

(assert (= (and b!4879232 res!2082809) b!4879234))

(assert (= (and b!4879234 res!2082813) b!4879237))

(declare-fun m!5882236 () Bool)

(assert (=> b!4879233 m!5882236))

(declare-fun m!5882238 () Bool)

(assert (=> b!4879234 m!5882238))

(declare-fun m!5882240 () Bool)

(assert (=> b!4879237 m!5882240))

(declare-fun m!5882242 () Bool)

(assert (=> b!4879232 m!5882242))

(declare-fun m!5882244 () Bool)

(assert (=> b!4879236 m!5882244))

(declare-fun m!5882246 () Bool)

(assert (=> b!4879236 m!5882246))

(assert (=> b!4879235 m!5882244))

(assert (=> b!4879235 m!5882246))

(assert (=> b!4879100 d!1567701))

(declare-fun d!1567703 () Bool)

(assert (=> d!1567703 (= (height!1948 (left!40709 (left!40709 t!4585))) (ite (is-Empty!14615 (left!40709 (left!40709 t!4585))) 0 (ite (is-Leaf!24356 (left!40709 (left!40709 t!4585))) 1 (cheight!14826 (left!40709 (left!40709 t!4585))))))))

(assert (=> b!4879102 d!1567703))

(declare-fun d!1567705 () Bool)

(assert (=> d!1567705 (= (height!1948 (right!41039 (left!40709 t!4585))) (ite (is-Empty!14615 (right!41039 (left!40709 t!4585))) 0 (ite (is-Leaf!24356 (right!41039 (left!40709 t!4585))) 1 (cheight!14826 (right!41039 (left!40709 t!4585))))))))

(assert (=> b!4879102 d!1567705))

(declare-fun d!1567707 () Bool)

(declare-fun res!2082815 () Bool)

(declare-fun e!3049470 () Bool)

(assert (=> d!1567707 (=> (not res!2082815) (not e!3049470))))

(assert (=> d!1567707 (= res!2082815 (<= (size!36956 (list!17560 (xs!17925 (left!40709 (right!41039 t!4585))))) 512))))

(assert (=> d!1567707 (= (inv!72015 (left!40709 (right!41039 t!4585))) e!3049470)))

(declare-fun b!4879238 () Bool)

(declare-fun res!2082816 () Bool)

(assert (=> b!4879238 (=> (not res!2082816) (not e!3049470))))

(assert (=> b!4879238 (= res!2082816 (= (csize!29461 (left!40709 (right!41039 t!4585))) (size!36956 (list!17560 (xs!17925 (left!40709 (right!41039 t!4585)))))))))

(declare-fun b!4879239 () Bool)

(assert (=> b!4879239 (= e!3049470 (and (> (csize!29461 (left!40709 (right!41039 t!4585))) 0) (<= (csize!29461 (left!40709 (right!41039 t!4585))) 512)))))

(assert (= (and d!1567707 res!2082815) b!4879238))

(assert (= (and b!4879238 res!2082816) b!4879239))

(declare-fun m!5882248 () Bool)

(assert (=> d!1567707 m!5882248))

(assert (=> d!1567707 m!5882248))

(declare-fun m!5882250 () Bool)

(assert (=> d!1567707 m!5882250))

(assert (=> b!4879238 m!5882248))

(assert (=> b!4879238 m!5882248))

(assert (=> b!4879238 m!5882250))

(assert (=> b!4879110 d!1567707))

(declare-fun d!1567709 () Bool)

(declare-fun lt!1999107 () Int)

(assert (=> d!1567709 (>= lt!1999107 0)))

(declare-fun e!3049471 () Int)

(assert (=> d!1567709 (= lt!1999107 e!3049471)))

(declare-fun c!829821 () Bool)

(assert (=> d!1567709 (= c!829821 (is-Nil!56030 (innerList!14703 (xs!17925 (left!40709 t!4585)))))))

(assert (=> d!1567709 (= (size!36956 (innerList!14703 (xs!17925 (left!40709 t!4585)))) lt!1999107)))

(declare-fun b!4879240 () Bool)

(assert (=> b!4879240 (= e!3049471 0)))

(declare-fun b!4879241 () Bool)

(assert (=> b!4879241 (= e!3049471 (+ 1 (size!36956 (t!364780 (innerList!14703 (xs!17925 (left!40709 t!4585)))))))))

(assert (= (and d!1567709 c!829821) b!4879240))

(assert (= (and d!1567709 (not c!829821)) b!4879241))

(declare-fun m!5882252 () Bool)

(assert (=> b!4879241 m!5882252))

(assert (=> d!1567629 d!1567709))

(declare-fun d!1567711 () Bool)

(assert (=> d!1567711 (= (isEmpty!30028 (list!17561 (left!40709 t!4585))) (is-Nil!56030 (list!17561 (left!40709 t!4585))))))

(assert (=> d!1567637 d!1567711))

(declare-fun b!4879244 () Bool)

(declare-fun e!3049473 () List!56154)

(assert (=> b!4879244 (= e!3049473 (list!17560 (xs!17925 (left!40709 t!4585))))))

(declare-fun b!4879243 () Bool)

(declare-fun e!3049472 () List!56154)

(assert (=> b!4879243 (= e!3049472 e!3049473)))

(declare-fun c!829823 () Bool)

(assert (=> b!4879243 (= c!829823 (is-Leaf!24356 (left!40709 t!4585)))))

(declare-fun b!4879245 () Bool)

(assert (=> b!4879245 (= e!3049473 (++!12213 (list!17561 (left!40709 (left!40709 t!4585))) (list!17561 (right!41039 (left!40709 t!4585)))))))

(declare-fun d!1567713 () Bool)

(declare-fun c!829822 () Bool)

(assert (=> d!1567713 (= c!829822 (is-Empty!14615 (left!40709 t!4585)))))

(assert (=> d!1567713 (= (list!17561 (left!40709 t!4585)) e!3049472)))

(declare-fun b!4879242 () Bool)

(assert (=> b!4879242 (= e!3049472 Nil!56030)))

(assert (= (and d!1567713 c!829822) b!4879242))

(assert (= (and d!1567713 (not c!829822)) b!4879243))

(assert (= (and b!4879243 c!829823) b!4879244))

(assert (= (and b!4879243 (not c!829823)) b!4879245))

(assert (=> b!4879244 m!5881980))

(declare-fun m!5882254 () Bool)

(assert (=> b!4879245 m!5882254))

(assert (=> b!4879245 m!5882232))

(assert (=> b!4879245 m!5882254))

(assert (=> b!4879245 m!5882232))

(declare-fun m!5882256 () Bool)

(assert (=> b!4879245 m!5882256))

(assert (=> d!1567637 d!1567713))

(declare-fun d!1567715 () Bool)

(declare-fun lt!1999108 () Int)

(assert (=> d!1567715 (= lt!1999108 (size!36956 (list!17561 (left!40709 t!4585))))))

(assert (=> d!1567715 (= lt!1999108 (ite (is-Empty!14615 (left!40709 t!4585)) 0 (ite (is-Leaf!24356 (left!40709 t!4585)) (csize!29461 (left!40709 t!4585)) (csize!29460 (left!40709 t!4585)))))))

(assert (=> d!1567715 (= (size!36958 (left!40709 t!4585)) lt!1999108)))

(declare-fun bs!1175297 () Bool)

(assert (= bs!1175297 d!1567715))

(assert (=> bs!1175297 m!5882056))

(assert (=> bs!1175297 m!5882056))

(declare-fun m!5882258 () Bool)

(assert (=> bs!1175297 m!5882258))

(assert (=> d!1567637 d!1567715))

(declare-fun d!1567717 () Bool)

(declare-fun res!2082817 () Bool)

(declare-fun e!3049474 () Bool)

(assert (=> d!1567717 (=> (not res!2082817) (not e!3049474))))

(assert (=> d!1567717 (= res!2082817 (= (csize!29460 (left!40709 (right!41039 t!4585))) (+ (size!36958 (left!40709 (left!40709 (right!41039 t!4585)))) (size!36958 (right!41039 (left!40709 (right!41039 t!4585)))))))))

(assert (=> d!1567717 (= (inv!72014 (left!40709 (right!41039 t!4585))) e!3049474)))

(declare-fun b!4879246 () Bool)

(declare-fun res!2082818 () Bool)

(assert (=> b!4879246 (=> (not res!2082818) (not e!3049474))))

(assert (=> b!4879246 (= res!2082818 (and (not (= (left!40709 (left!40709 (right!41039 t!4585))) Empty!14615)) (not (= (right!41039 (left!40709 (right!41039 t!4585))) Empty!14615))))))

(declare-fun b!4879247 () Bool)

(declare-fun res!2082819 () Bool)

(assert (=> b!4879247 (=> (not res!2082819) (not e!3049474))))

(assert (=> b!4879247 (= res!2082819 (= (cheight!14826 (left!40709 (right!41039 t!4585))) (+ (max!0 (height!1948 (left!40709 (left!40709 (right!41039 t!4585)))) (height!1948 (right!41039 (left!40709 (right!41039 t!4585))))) 1)))))

(declare-fun b!4879248 () Bool)

(assert (=> b!4879248 (= e!3049474 (<= 0 (cheight!14826 (left!40709 (right!41039 t!4585)))))))

(assert (= (and d!1567717 res!2082817) b!4879246))

(assert (= (and b!4879246 res!2082818) b!4879247))

(assert (= (and b!4879247 res!2082819) b!4879248))

(declare-fun m!5882260 () Bool)

(assert (=> d!1567717 m!5882260))

(declare-fun m!5882262 () Bool)

(assert (=> d!1567717 m!5882262))

(declare-fun m!5882264 () Bool)

(assert (=> b!4879247 m!5882264))

(declare-fun m!5882266 () Bool)

(assert (=> b!4879247 m!5882266))

(assert (=> b!4879247 m!5882264))

(assert (=> b!4879247 m!5882266))

(declare-fun m!5882268 () Bool)

(assert (=> b!4879247 m!5882268))

(assert (=> b!4879108 d!1567717))

(declare-fun d!1567719 () Bool)

(declare-fun lt!1999109 () Int)

(assert (=> d!1567719 (= lt!1999109 (size!36956 (list!17561 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1)))))))

(assert (=> d!1567719 (= lt!1999109 (ite (is-Empty!14615 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) 0 (ite (is-Leaf!24356 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (csize!29461 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) (csize!29460 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(assert (=> d!1567719 (= (size!36958 (left!40709 (Leaf!24356 (fill!236 1 v!5488) 1))) lt!1999109)))

(declare-fun bs!1175298 () Bool)

(assert (= bs!1175298 d!1567719))

(declare-fun m!5882270 () Bool)

(assert (=> bs!1175298 m!5882270))

(assert (=> bs!1175298 m!5882270))

(declare-fun m!5882272 () Bool)

(assert (=> bs!1175298 m!5882272))

(assert (=> d!1567603 d!1567719))

(declare-fun d!1567721 () Bool)

(declare-fun lt!1999110 () Int)

(assert (=> d!1567721 (= lt!1999110 (size!36956 (list!17561 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1)))))))

(assert (=> d!1567721 (= lt!1999110 (ite (is-Empty!14615 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) 0 (ite (is-Leaf!24356 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) (csize!29461 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) (csize!29460 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))))))))

(assert (=> d!1567721 (= (size!36958 (right!41039 (Leaf!24356 (fill!236 1 v!5488) 1))) lt!1999110)))

(declare-fun bs!1175299 () Bool)

(assert (= bs!1175299 d!1567721))

(declare-fun m!5882274 () Bool)

(assert (=> bs!1175299 m!5882274))

(assert (=> bs!1175299 m!5882274))

(declare-fun m!5882276 () Bool)

(assert (=> bs!1175299 m!5882276))

(assert (=> d!1567603 d!1567721))

(declare-fun d!1567723 () Bool)

(assert (=> d!1567723 (= (inv!72010 (xs!17925 (left!40709 (right!41039 t!4585)))) (<= (size!36956 (innerList!14703 (xs!17925 (left!40709 (right!41039 t!4585))))) 2147483647))))

(declare-fun bs!1175300 () Bool)

(assert (= bs!1175300 d!1567723))

(declare-fun m!5882278 () Bool)

(assert (=> bs!1175300 m!5882278))

(assert (=> b!4879124 d!1567723))

(declare-fun d!1567725 () Bool)

(assert (=> d!1567725 (= (inv!72010 (xs!17925 (left!40709 (left!40709 t!4585)))) (<= (size!36956 (innerList!14703 (xs!17925 (left!40709 (left!40709 t!4585))))) 2147483647))))

(declare-fun bs!1175301 () Bool)

(assert (= bs!1175301 d!1567725))

(declare-fun m!5882280 () Bool)

(assert (=> bs!1175301 m!5882280))

(assert (=> b!4879115 d!1567725))

(declare-fun d!1567727 () Bool)

(declare-fun lt!1999111 () Int)

(assert (=> d!1567727 (>= lt!1999111 0)))

(declare-fun e!3049475 () Int)

(assert (=> d!1567727 (= lt!1999111 e!3049475)))

(declare-fun c!829824 () Bool)

(assert (=> d!1567727 (= c!829824 (is-Nil!56030 (list!17560 (xs!17925 (left!40709 t!4585)))))))

(assert (=> d!1567727 (= (size!36956 (list!17560 (xs!17925 (left!40709 t!4585)))) lt!1999111)))

(declare-fun b!4879249 () Bool)

(assert (=> b!4879249 (= e!3049475 0)))

(declare-fun b!4879250 () Bool)

(assert (=> b!4879250 (= e!3049475 (+ 1 (size!36956 (t!364780 (list!17560 (xs!17925 (left!40709 t!4585)))))))))

(assert (= (and d!1567727 c!829824) b!4879249))

(assert (= (and d!1567727 (not c!829824)) b!4879250))

(declare-fun m!5882282 () Bool)

(assert (=> b!4879250 m!5882282))

(assert (=> b!4879071 d!1567727))

(declare-fun d!1567729 () Bool)

(assert (=> d!1567729 (= (list!17560 (xs!17925 (left!40709 t!4585))) (innerList!14703 (xs!17925 (left!40709 t!4585))))))

(assert (=> b!4879071 d!1567729))

(declare-fun d!1567731 () Bool)

(declare-fun lt!1999112 () Int)

(assert (=> d!1567731 (>= lt!1999112 0)))

(declare-fun e!3049476 () Int)

(assert (=> d!1567731 (= lt!1999112 e!3049476)))

(declare-fun c!829825 () Bool)

(assert (=> d!1567731 (= c!829825 (is-Nil!56030 (list!17560 (xs!17925 (right!41039 t!4585)))))))

(assert (=> d!1567731 (= (size!36956 (list!17560 (xs!17925 (right!41039 t!4585)))) lt!1999112)))

(declare-fun b!4879251 () Bool)

(assert (=> b!4879251 (= e!3049476 0)))

(declare-fun b!4879252 () Bool)

(assert (=> b!4879252 (= e!3049476 (+ 1 (size!36956 (t!364780 (list!17560 (xs!17925 (right!41039 t!4585)))))))))

(assert (= (and d!1567731 c!829825) b!4879251))

(assert (= (and d!1567731 (not c!829825)) b!4879252))

(declare-fun m!5882284 () Bool)

(assert (=> b!4879252 m!5882284))

(assert (=> d!1567587 d!1567731))

(declare-fun d!1567733 () Bool)

(assert (=> d!1567733 (= (list!17560 (xs!17925 (right!41039 t!4585))) (innerList!14703 (xs!17925 (right!41039 t!4585))))))

(assert (=> d!1567587 d!1567733))

(declare-fun d!1567735 () Bool)

(declare-fun lt!1999113 () Int)

(assert (=> d!1567735 (>= lt!1999113 0)))

(declare-fun e!3049477 () Int)

(assert (=> d!1567735 (= lt!1999113 e!3049477)))

(declare-fun c!829826 () Bool)

(assert (=> d!1567735 (= c!829826 (is-Nil!56030 (t!364780 (innerList!14703 (xs!17925 t!4585)))))))

(assert (=> d!1567735 (= (size!36956 (t!364780 (innerList!14703 (xs!17925 t!4585)))) lt!1999113)))

(declare-fun b!4879253 () Bool)

(assert (=> b!4879253 (= e!3049477 0)))

(declare-fun b!4879254 () Bool)

(assert (=> b!4879254 (= e!3049477 (+ 1 (size!36956 (t!364780 (t!364780 (innerList!14703 (xs!17925 t!4585)))))))))

(assert (= (and d!1567735 c!829826) b!4879253))

(assert (= (and d!1567735 (not c!829826)) b!4879254))

(declare-fun m!5882286 () Bool)

(assert (=> b!4879254 m!5882286))

(assert (=> b!4879047 d!1567735))

(declare-fun d!1567737 () Bool)

(assert (=> d!1567737 (= (max!0 (height!1948 (left!40709 (left!40709 t!4585))) (height!1948 (right!41039 (left!40709 t!4585)))) (ite (< (height!1948 (left!40709 (left!40709 t!4585))) (height!1948 (right!41039 (left!40709 t!4585)))) (height!1948 (right!41039 (left!40709 t!4585))) (height!1948 (left!40709 (left!40709 t!4585)))))))

(assert (=> b!4879077 d!1567737))

(assert (=> b!4879077 d!1567703))

(assert (=> b!4879077 d!1567705))

(assert (=> b!4879040 d!1567731))

(assert (=> b!4879040 d!1567733))

(declare-fun d!1567739 () Bool)

(assert (=> d!1567739 (= (height!1948 (left!40709 (right!41039 t!4585))) (ite (is-Empty!14615 (left!40709 (right!41039 t!4585))) 0 (ite (is-Leaf!24356 (left!40709 (right!41039 t!4585))) 1 (cheight!14826 (left!40709 (right!41039 t!4585))))))))

(assert (=> b!4879052 d!1567739))

(declare-fun d!1567741 () Bool)

(assert (=> d!1567741 (= (height!1948 (right!41039 (right!41039 t!4585))) (ite (is-Empty!14615 (right!41039 (right!41039 t!4585))) 0 (ite (is-Leaf!24356 (right!41039 (right!41039 t!4585))) 1 (cheight!14826 (right!41039 (right!41039 t!4585))))))))

(assert (=> b!4879052 d!1567741))

(declare-fun d!1567743 () Bool)

(assert (=> d!1567743 (= (inv!72010 (xs!17925 (right!41039 (left!40709 t!4585)))) (<= (size!36956 (innerList!14703 (xs!17925 (right!41039 (left!40709 t!4585))))) 2147483647))))

(declare-fun bs!1175302 () Bool)

(assert (= bs!1175302 d!1567743))

(declare-fun m!5882288 () Bool)

(assert (=> bs!1175302 m!5882288))

(assert (=> b!4879118 d!1567743))

(assert (=> d!1567625 d!1567617))

(declare-fun d!1567745 () Bool)

(assert (=> d!1567745 (= (inv!72010 _$14!1591) (<= (size!36956 (innerList!14703 _$14!1591)) 2147483647))))

(declare-fun bs!1175303 () Bool)

(assert (= bs!1175303 d!1567745))

(declare-fun m!5882290 () Bool)

(assert (=> bs!1175303 m!5882290))

(assert (=> d!1567625 d!1567745))

(declare-fun d!1567747 () Bool)

(declare-fun lt!1999114 () Bool)

(assert (=> d!1567747 (= lt!1999114 (isEmpty!30028 (list!17561 (left!40709 (right!41039 t!4585)))))))

(assert (=> d!1567747 (= lt!1999114 (= (size!36958 (left!40709 (right!41039 t!4585))) 0))))

(assert (=> d!1567747 (= (isEmpty!30026 (left!40709 (right!41039 t!4585))) lt!1999114)))

(declare-fun bs!1175304 () Bool)

(assert (= bs!1175304 d!1567747))

(assert (=> bs!1175304 m!5882208))

(assert (=> bs!1175304 m!5882208))

(declare-fun m!5882292 () Bool)

(assert (=> bs!1175304 m!5882292))

(assert (=> bs!1175304 m!5881974))

(assert (=> b!4879050 d!1567747))

(declare-fun d!1567749 () Bool)

(declare-fun lt!1999115 () Int)

(assert (=> d!1567749 (= lt!1999115 (size!36956 (list!17561 (left!40709 (left!40709 t!4585)))))))

(assert (=> d!1567749 (= lt!1999115 (ite (is-Empty!14615 (left!40709 (left!40709 t!4585))) 0 (ite (is-Leaf!24356 (left!40709 (left!40709 t!4585))) (csize!29461 (left!40709 (left!40709 t!4585))) (csize!29460 (left!40709 (left!40709 t!4585))))))))

(assert (=> d!1567749 (= (size!36958 (left!40709 (left!40709 t!4585))) lt!1999115)))

(declare-fun bs!1175305 () Bool)

(assert (= bs!1175305 d!1567749))

(assert (=> bs!1175305 m!5882254))

(assert (=> bs!1175305 m!5882254))

(declare-fun m!5882294 () Bool)

(assert (=> bs!1175305 m!5882294))

(assert (=> d!1567611 d!1567749))

(declare-fun d!1567751 () Bool)

(declare-fun lt!1999116 () Int)

(assert (=> d!1567751 (= lt!1999116 (size!36956 (list!17561 (right!41039 (left!40709 t!4585)))))))

(assert (=> d!1567751 (= lt!1999116 (ite (is-Empty!14615 (right!41039 (left!40709 t!4585))) 0 (ite (is-Leaf!24356 (right!41039 (left!40709 t!4585))) (csize!29461 (right!41039 (left!40709 t!4585))) (csize!29460 (right!41039 (left!40709 t!4585))))))))

(assert (=> d!1567751 (= (size!36958 (right!41039 (left!40709 t!4585))) lt!1999116)))

(declare-fun bs!1175306 () Bool)

(assert (= bs!1175306 d!1567751))

(assert (=> bs!1175306 m!5882232))

(assert (=> bs!1175306 m!5882232))

(declare-fun m!5882296 () Bool)

(assert (=> bs!1175306 m!5882296))

(assert (=> d!1567611 d!1567751))

(declare-fun d!1567753 () Bool)

(declare-fun c!829827 () Bool)

(assert (=> d!1567753 (= c!829827 (is-Node!14615 (left!40709 (right!41039 (right!41039 t!4585)))))))

(declare-fun e!3049478 () Bool)

(assert (=> d!1567753 (= (inv!72011 (left!40709 (right!41039 (right!41039 t!4585)))) e!3049478)))

(declare-fun b!4879255 () Bool)

(assert (=> b!4879255 (= e!3049478 (inv!72014 (left!40709 (right!41039 (right!41039 t!4585)))))))

(declare-fun b!4879256 () Bool)

(declare-fun e!3049479 () Bool)

(assert (=> b!4879256 (= e!3049478 e!3049479)))

(declare-fun res!2082820 () Bool)

(assert (=> b!4879256 (= res!2082820 (not (is-Leaf!24356 (left!40709 (right!41039 (right!41039 t!4585))))))))

(assert (=> b!4879256 (=> res!2082820 e!3049479)))

(declare-fun b!4879257 () Bool)

(assert (=> b!4879257 (= e!3049479 (inv!72015 (left!40709 (right!41039 (right!41039 t!4585)))))))

(assert (= (and d!1567753 c!829827) b!4879255))

(assert (= (and d!1567753 (not c!829827)) b!4879256))

(assert (= (and b!4879256 (not res!2082820)) b!4879257))

(declare-fun m!5882298 () Bool)

(assert (=> b!4879255 m!5882298))

(declare-fun m!5882300 () Bool)

(assert (=> b!4879257 m!5882300))

(assert (=> b!4879126 d!1567753))

(declare-fun d!1567755 () Bool)

(declare-fun c!829828 () Bool)

(assert (=> d!1567755 (= c!829828 (is-Node!14615 (right!41039 (right!41039 (right!41039 t!4585)))))))

(declare-fun e!3049480 () Bool)

(assert (=> d!1567755 (= (inv!72011 (right!41039 (right!41039 (right!41039 t!4585)))) e!3049480)))

(declare-fun b!4879258 () Bool)

(assert (=> b!4879258 (= e!3049480 (inv!72014 (right!41039 (right!41039 (right!41039 t!4585)))))))

(declare-fun b!4879259 () Bool)

(declare-fun e!3049481 () Bool)

(assert (=> b!4879259 (= e!3049480 e!3049481)))

(declare-fun res!2082821 () Bool)

(assert (=> b!4879259 (= res!2082821 (not (is-Leaf!24356 (right!41039 (right!41039 (right!41039 t!4585))))))))

(assert (=> b!4879259 (=> res!2082821 e!3049481)))

(declare-fun b!4879260 () Bool)

(assert (=> b!4879260 (= e!3049481 (inv!72015 (right!41039 (right!41039 (right!41039 t!4585)))))))

(assert (= (and d!1567755 c!829828) b!4879258))

(assert (= (and d!1567755 (not c!829828)) b!4879259))

(assert (= (and b!4879259 (not res!2082821)) b!4879260))

(declare-fun m!5882302 () Bool)

(assert (=> b!4879258 m!5882302))

(declare-fun m!5882304 () Bool)

(assert (=> b!4879260 m!5882304))

(assert (=> b!4879126 d!1567755))

(assert (=> d!1567601 d!1567727))

(assert (=> d!1567601 d!1567729))

(declare-fun b!4879261 () Bool)

(declare-fun res!2082822 () Bool)

(declare-fun e!3049482 () Bool)

(assert (=> b!4879261 (=> (not res!2082822) (not e!3049482))))

(assert (=> b!4879261 (= res!2082822 (isBalanced!3977 (right!41039 (left!40709 (right!41039 t!4585)))))))

(declare-fun b!4879262 () Bool)

(declare-fun res!2082824 () Bool)

(assert (=> b!4879262 (=> (not res!2082824) (not e!3049482))))

(assert (=> b!4879262 (= res!2082824 (isBalanced!3977 (left!40709 (left!40709 (right!41039 t!4585)))))))

(declare-fun b!4879263 () Bool)

(declare-fun res!2082826 () Bool)

(assert (=> b!4879263 (=> (not res!2082826) (not e!3049482))))

(assert (=> b!4879263 (= res!2082826 (not (isEmpty!30026 (left!40709 (left!40709 (right!41039 t!4585))))))))

(declare-fun b!4879264 () Bool)

(declare-fun e!3049483 () Bool)

(assert (=> b!4879264 (= e!3049483 e!3049482)))

(declare-fun res!2082823 () Bool)

(assert (=> b!4879264 (=> (not res!2082823) (not e!3049482))))

(assert (=> b!4879264 (= res!2082823 (<= (- 1) (- (height!1948 (left!40709 (left!40709 (right!41039 t!4585)))) (height!1948 (right!41039 (left!40709 (right!41039 t!4585)))))))))

(declare-fun d!1567757 () Bool)

(declare-fun res!2082825 () Bool)

(assert (=> d!1567757 (=> res!2082825 e!3049483)))

(assert (=> d!1567757 (= res!2082825 (not (is-Node!14615 (left!40709 (right!41039 t!4585)))))))

(assert (=> d!1567757 (= (isBalanced!3977 (left!40709 (right!41039 t!4585))) e!3049483)))

(declare-fun b!4879265 () Bool)

(declare-fun res!2082827 () Bool)

(assert (=> b!4879265 (=> (not res!2082827) (not e!3049482))))

(assert (=> b!4879265 (= res!2082827 (<= (- (height!1948 (left!40709 (left!40709 (right!41039 t!4585)))) (height!1948 (right!41039 (left!40709 (right!41039 t!4585))))) 1))))

(declare-fun b!4879266 () Bool)

(assert (=> b!4879266 (= e!3049482 (not (isEmpty!30026 (right!41039 (left!40709 (right!41039 t!4585))))))))

(assert (= (and d!1567757 (not res!2082825)) b!4879264))

(assert (= (and b!4879264 res!2082823) b!4879265))

(assert (= (and b!4879265 res!2082827) b!4879262))

(assert (= (and b!4879262 res!2082824) b!4879261))

(assert (= (and b!4879261 res!2082822) b!4879263))

(assert (= (and b!4879263 res!2082826) b!4879266))

(declare-fun m!5882306 () Bool)

(assert (=> b!4879262 m!5882306))

(declare-fun m!5882308 () Bool)

(assert (=> b!4879263 m!5882308))

(declare-fun m!5882310 () Bool)

(assert (=> b!4879266 m!5882310))

(declare-fun m!5882312 () Bool)

(assert (=> b!4879261 m!5882312))

(assert (=> b!4879265 m!5882264))

(assert (=> b!4879265 m!5882266))

(assert (=> b!4879264 m!5882264))

(assert (=> b!4879264 m!5882266))

(assert (=> b!4879049 d!1567757))

(declare-fun d!1567759 () Bool)

(declare-fun lt!1999117 () Int)

(assert (=> d!1567759 (>= lt!1999117 0)))

(declare-fun e!3049484 () Int)

(assert (=> d!1567759 (= lt!1999117 e!3049484)))

(declare-fun c!829829 () Bool)

(assert (=> d!1567759 (= c!829829 (is-Nil!56030 (innerList!14703 (xs!17925 (right!41039 t!4585)))))))

(assert (=> d!1567759 (= (size!36956 (innerList!14703 (xs!17925 (right!41039 t!4585)))) lt!1999117)))

(declare-fun b!4879267 () Bool)

(assert (=> b!4879267 (= e!3049484 0)))

(declare-fun b!4879268 () Bool)

(assert (=> b!4879268 (= e!3049484 (+ 1 (size!36956 (t!364780 (innerList!14703 (xs!17925 (right!41039 t!4585)))))))))

(assert (= (and d!1567759 c!829829) b!4879267))

(assert (= (and d!1567759 (not c!829829)) b!4879268))

(declare-fun m!5882314 () Bool)

(assert (=> b!4879268 m!5882314))

(assert (=> d!1567609 d!1567759))

(assert (=> b!4879103 d!1567703))

(assert (=> b!4879103 d!1567705))

(declare-fun d!1567761 () Bool)

(declare-fun res!2082828 () Bool)

(declare-fun e!3049485 () Bool)

(assert (=> d!1567761 (=> (not res!2082828) (not e!3049485))))

(assert (=> d!1567761 (= res!2082828 (<= (size!36956 (list!17560 (xs!17925 (right!41039 (left!40709 t!4585))))) 512))))

(assert (=> d!1567761 (= (inv!72015 (right!41039 (left!40709 t!4585))) e!3049485)))

(declare-fun b!4879269 () Bool)

(declare-fun res!2082829 () Bool)

(assert (=> b!4879269 (=> (not res!2082829) (not e!3049485))))

(assert (=> b!4879269 (= res!2082829 (= (csize!29461 (right!41039 (left!40709 t!4585))) (size!36956 (list!17560 (xs!17925 (right!41039 (left!40709 t!4585)))))))))

(declare-fun b!4879270 () Bool)

(assert (=> b!4879270 (= e!3049485 (and (> (csize!29461 (right!41039 (left!40709 t!4585))) 0) (<= (csize!29461 (right!41039 (left!40709 t!4585))) 512)))))

(assert (= (and d!1567761 res!2082828) b!4879269))

(assert (= (and b!4879269 res!2082829) b!4879270))

(declare-fun m!5882316 () Bool)

(assert (=> d!1567761 m!5882316))

(assert (=> d!1567761 m!5882316))

(declare-fun m!5882318 () Bool)

(assert (=> d!1567761 m!5882318))

(assert (=> b!4879269 m!5882316))

(assert (=> b!4879269 m!5882316))

(assert (=> b!4879269 m!5882318))

(assert (=> b!4879059 d!1567761))

(assert (=> d!1567631 d!1567715))

(assert (=> d!1567631 d!1567683))

(declare-fun d!1567763 () Bool)

(declare-fun res!2082830 () Bool)

(declare-fun e!3049486 () Bool)

(assert (=> d!1567763 (=> (not res!2082830) (not e!3049486))))

(assert (=> d!1567763 (= res!2082830 (= (csize!29460 (right!41039 (left!40709 t!4585))) (+ (size!36958 (left!40709 (right!41039 (left!40709 t!4585)))) (size!36958 (right!41039 (right!41039 (left!40709 t!4585)))))))))

(assert (=> d!1567763 (= (inv!72014 (right!41039 (left!40709 t!4585))) e!3049486)))

(declare-fun b!4879271 () Bool)

(declare-fun res!2082831 () Bool)

(assert (=> b!4879271 (=> (not res!2082831) (not e!3049486))))

(assert (=> b!4879271 (= res!2082831 (and (not (= (left!40709 (right!41039 (left!40709 t!4585))) Empty!14615)) (not (= (right!41039 (right!41039 (left!40709 t!4585))) Empty!14615))))))

(declare-fun b!4879272 () Bool)

(declare-fun res!2082832 () Bool)

(assert (=> b!4879272 (=> (not res!2082832) (not e!3049486))))

(assert (=> b!4879272 (= res!2082832 (= (cheight!14826 (right!41039 (left!40709 t!4585))) (+ (max!0 (height!1948 (left!40709 (right!41039 (left!40709 t!4585)))) (height!1948 (right!41039 (right!41039 (left!40709 t!4585))))) 1)))))

(declare-fun b!4879273 () Bool)

(assert (=> b!4879273 (= e!3049486 (<= 0 (cheight!14826 (right!41039 (left!40709 t!4585)))))))

(assert (= (and d!1567763 res!2082830) b!4879271))

(assert (= (and b!4879271 res!2082831) b!4879272))

(assert (= (and b!4879272 res!2082832) b!4879273))

(declare-fun m!5882320 () Bool)

(assert (=> d!1567763 m!5882320))

(declare-fun m!5882322 () Bool)

(assert (=> d!1567763 m!5882322))

(declare-fun m!5882324 () Bool)

(assert (=> b!4879272 m!5882324))

(declare-fun m!5882326 () Bool)

(assert (=> b!4879272 m!5882326))

(assert (=> b!4879272 m!5882324))

(assert (=> b!4879272 m!5882326))

(declare-fun m!5882328 () Bool)

(assert (=> b!4879272 m!5882328))

(assert (=> b!4879057 d!1567763))

(declare-fun d!1567765 () Bool)

(assert (=> d!1567765 (= (max!0 (height!1948 (left!40709 (right!41039 t!4585))) (height!1948 (right!41039 (right!41039 t!4585)))) (ite (< (height!1948 (left!40709 (right!41039 t!4585))) (height!1948 (right!41039 (right!41039 t!4585)))) (height!1948 (right!41039 (right!41039 t!4585))) (height!1948 (left!40709 (right!41039 t!4585)))))))

(assert (=> b!4879069 d!1567765))

(assert (=> b!4879069 d!1567739))

(assert (=> b!4879069 d!1567741))

(declare-fun d!1567767 () Bool)

(declare-fun e!3049488 () Bool)

(assert (=> d!1567767 e!3049488))

(declare-fun res!2082833 () Bool)

(assert (=> d!1567767 (=> (not res!2082833) (not e!3049488))))

(declare-fun lt!1999118 () List!56154)

(assert (=> d!1567767 (= res!2082833 (= (content!10007 lt!1999118) (ite (<= (- 1 1) 0) (as set.empty (Set T!99284)) (set.insert v!5488 (as set.empty (Set T!99284))))))))

(declare-fun e!3049487 () List!56154)

(assert (=> d!1567767 (= lt!1999118 e!3049487)))

(declare-fun c!829830 () Bool)

(assert (=> d!1567767 (= c!829830 (<= (- 1 1) 0))))

(assert (=> d!1567767 (= (fill!238 (- 1 1) v!5488) lt!1999118)))

(declare-fun b!4879274 () Bool)

(assert (=> b!4879274 (= e!3049487 Nil!56030)))

(declare-fun b!4879275 () Bool)

(assert (=> b!4879275 (= e!3049487 (Cons!56030 v!5488 (fill!238 (- (- 1 1) 1) v!5488)))))

(declare-fun b!4879276 () Bool)

(assert (=> b!4879276 (= e!3049488 (= (size!36956 lt!1999118) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!1567767 c!829830) b!4879274))

(assert (= (and d!1567767 (not c!829830)) b!4879275))

(assert (= (and d!1567767 res!2082833) b!4879276))

(declare-fun m!5882330 () Bool)

(assert (=> d!1567767 m!5882330))

(assert (=> d!1567767 m!5882026))

(declare-fun m!5882332 () Bool)

(assert (=> b!4879275 m!5882332))

(declare-fun m!5882334 () Bool)

(assert (=> b!4879276 m!5882334))

(assert (=> b!4879094 d!1567767))

(declare-fun d!1567769 () Bool)

(declare-fun lt!1999119 () Bool)

(assert (=> d!1567769 (= lt!1999119 (isEmpty!30028 (list!17561 (left!40709 (left!40709 t!4585)))))))

(assert (=> d!1567769 (= lt!1999119 (= (size!36958 (left!40709 (left!40709 t!4585))) 0))))

(assert (=> d!1567769 (= (isEmpty!30026 (left!40709 (left!40709 t!4585))) lt!1999119)))

(declare-fun bs!1175307 () Bool)

(assert (= bs!1175307 d!1567769))

(assert (=> bs!1175307 m!5882254))

(assert (=> bs!1175307 m!5882254))

(declare-fun m!5882336 () Bool)

(assert (=> bs!1175307 m!5882336))

(assert (=> bs!1175307 m!5881996))

(assert (=> b!4879101 d!1567769))

(assert (=> b!4878982 d!1567633))

(assert (=> b!4878982 d!1567635))

(declare-fun b!4879277 () Bool)

(declare-fun res!2082834 () Bool)

(declare-fun e!3049489 () Bool)

(assert (=> b!4879277 (=> (not res!2082834) (not e!3049489))))

(assert (=> b!4879277 (= res!2082834 (isBalanced!3977 (right!41039 (right!41039 (left!40709 t!4585)))))))

(declare-fun b!4879278 () Bool)

(declare-fun res!2082836 () Bool)

(assert (=> b!4879278 (=> (not res!2082836) (not e!3049489))))

(assert (=> b!4879278 (= res!2082836 (isBalanced!3977 (left!40709 (right!41039 (left!40709 t!4585)))))))

(declare-fun b!4879279 () Bool)

(declare-fun res!2082838 () Bool)

(assert (=> b!4879279 (=> (not res!2082838) (not e!3049489))))

(assert (=> b!4879279 (= res!2082838 (not (isEmpty!30026 (left!40709 (right!41039 (left!40709 t!4585))))))))

(declare-fun b!4879280 () Bool)

(declare-fun e!3049490 () Bool)

(assert (=> b!4879280 (= e!3049490 e!3049489)))

(declare-fun res!2082835 () Bool)

(assert (=> b!4879280 (=> (not res!2082835) (not e!3049489))))

(assert (=> b!4879280 (= res!2082835 (<= (- 1) (- (height!1948 (left!40709 (right!41039 (left!40709 t!4585)))) (height!1948 (right!41039 (right!41039 (left!40709 t!4585)))))))))

(declare-fun d!1567771 () Bool)

(declare-fun res!2082837 () Bool)

(assert (=> d!1567771 (=> res!2082837 e!3049490)))

(assert (=> d!1567771 (= res!2082837 (not (is-Node!14615 (right!41039 (left!40709 t!4585)))))))

(assert (=> d!1567771 (= (isBalanced!3977 (right!41039 (left!40709 t!4585))) e!3049490)))

(declare-fun b!4879281 () Bool)

(declare-fun res!2082839 () Bool)

(assert (=> b!4879281 (=> (not res!2082839) (not e!3049489))))

(assert (=> b!4879281 (= res!2082839 (<= (- (height!1948 (left!40709 (right!41039 (left!40709 t!4585)))) (height!1948 (right!41039 (right!41039 (left!40709 t!4585))))) 1))))

(declare-fun b!4879282 () Bool)

(assert (=> b!4879282 (= e!3049489 (not (isEmpty!30026 (right!41039 (right!41039 (left!40709 t!4585))))))))

(assert (= (and d!1567771 (not res!2082837)) b!4879280))

(assert (= (and b!4879280 res!2082835) b!4879281))

(assert (= (and b!4879281 res!2082839) b!4879278))

(assert (= (and b!4879278 res!2082836) b!4879277))

(assert (= (and b!4879277 res!2082834) b!4879279))

(assert (= (and b!4879279 res!2082838) b!4879282))

(declare-fun m!5882338 () Bool)

(assert (=> b!4879278 m!5882338))

(declare-fun m!5882340 () Bool)

(assert (=> b!4879279 m!5882340))

(declare-fun m!5882342 () Bool)

(assert (=> b!4879282 m!5882342))

(declare-fun m!5882344 () Bool)

(assert (=> b!4879277 m!5882344))

(assert (=> b!4879281 m!5882324))

(assert (=> b!4879281 m!5882326))

(assert (=> b!4879280 m!5882324))

(assert (=> b!4879280 m!5882326))

(assert (=> b!4879099 d!1567771))

(declare-fun d!1567773 () Bool)

(declare-fun lt!1999120 () Int)

(assert (=> d!1567773 (= lt!1999120 (size!36956 (list!17561 (left!40709 (right!41039 t!4585)))))))

(assert (=> d!1567773 (= lt!1999120 (ite (is-Empty!14615 (left!40709 (right!41039 t!4585))) 0 (ite (is-Leaf!24356 (left!40709 (right!41039 t!4585))) (csize!29461 (left!40709 (right!41039 t!4585))) (csize!29460 (left!40709 (right!41039 t!4585))))))))

(assert (=> d!1567773 (= (size!36958 (left!40709 (right!41039 t!4585))) lt!1999120)))

(declare-fun bs!1175308 () Bool)

(assert (= bs!1175308 d!1567773))

(assert (=> bs!1175308 m!5882208))

(assert (=> bs!1175308 m!5882208))

(declare-fun m!5882346 () Bool)

(assert (=> bs!1175308 m!5882346))

(assert (=> d!1567599 d!1567773))

(declare-fun d!1567775 () Bool)

(declare-fun lt!1999121 () Int)

(assert (=> d!1567775 (= lt!1999121 (size!36956 (list!17561 (right!41039 (right!41039 t!4585)))))))

(assert (=> d!1567775 (= lt!1999121 (ite (is-Empty!14615 (right!41039 (right!41039 t!4585))) 0 (ite (is-Leaf!24356 (right!41039 (right!41039 t!4585))) (csize!29461 (right!41039 (right!41039 t!4585))) (csize!29460 (right!41039 (right!41039 t!4585))))))))

(assert (=> d!1567775 (= (size!36958 (right!41039 (right!41039 t!4585))) lt!1999121)))

(declare-fun bs!1175309 () Bool)

(assert (= bs!1175309 d!1567775))

(assert (=> bs!1175309 m!5882210))

(assert (=> bs!1175309 m!5882210))

(declare-fun m!5882348 () Bool)

(assert (=> bs!1175309 m!5882348))

(assert (=> d!1567599 d!1567775))

(declare-fun d!1567777 () Bool)

(declare-fun c!829831 () Bool)

(assert (=> d!1567777 (= c!829831 (is-Node!14615 (left!40709 (left!40709 (right!41039 t!4585)))))))

(declare-fun e!3049491 () Bool)

(assert (=> d!1567777 (= (inv!72011 (left!40709 (left!40709 (right!41039 t!4585)))) e!3049491)))

(declare-fun b!4879283 () Bool)

(assert (=> b!4879283 (= e!3049491 (inv!72014 (left!40709 (left!40709 (right!41039 t!4585)))))))

(declare-fun b!4879284 () Bool)

(declare-fun e!3049492 () Bool)

(assert (=> b!4879284 (= e!3049491 e!3049492)))

(declare-fun res!2082840 () Bool)

(assert (=> b!4879284 (= res!2082840 (not (is-Leaf!24356 (left!40709 (left!40709 (right!41039 t!4585))))))))

(assert (=> b!4879284 (=> res!2082840 e!3049492)))

(declare-fun b!4879285 () Bool)

(assert (=> b!4879285 (= e!3049492 (inv!72015 (left!40709 (left!40709 (right!41039 t!4585)))))))

(assert (= (and d!1567777 c!829831) b!4879283))

(assert (= (and d!1567777 (not c!829831)) b!4879284))

(assert (= (and b!4879284 (not res!2082840)) b!4879285))

(declare-fun m!5882350 () Bool)

(assert (=> b!4879283 m!5882350))

(declare-fun m!5882352 () Bool)

(assert (=> b!4879285 m!5882352))

(assert (=> b!4879123 d!1567777))

(declare-fun d!1567779 () Bool)

(declare-fun c!829832 () Bool)

(assert (=> d!1567779 (= c!829832 (is-Node!14615 (right!41039 (left!40709 (right!41039 t!4585)))))))

(declare-fun e!3049493 () Bool)

(assert (=> d!1567779 (= (inv!72011 (right!41039 (left!40709 (right!41039 t!4585)))) e!3049493)))

(declare-fun b!4879286 () Bool)

(assert (=> b!4879286 (= e!3049493 (inv!72014 (right!41039 (left!40709 (right!41039 t!4585)))))))

(declare-fun b!4879287 () Bool)

(declare-fun e!3049494 () Bool)

(assert (=> b!4879287 (= e!3049493 e!3049494)))

(declare-fun res!2082841 () Bool)

(assert (=> b!4879287 (= res!2082841 (not (is-Leaf!24356 (right!41039 (left!40709 (right!41039 t!4585))))))))

(assert (=> b!4879287 (=> res!2082841 e!3049494)))

(declare-fun b!4879288 () Bool)

(assert (=> b!4879288 (= e!3049494 (inv!72015 (right!41039 (left!40709 (right!41039 t!4585)))))))

(assert (= (and d!1567779 c!829832) b!4879286))

(assert (= (and d!1567779 (not c!829832)) b!4879287))

(assert (= (and b!4879287 (not res!2082841)) b!4879288))

(declare-fun m!5882354 () Bool)

(assert (=> b!4879286 m!5882354))

(declare-fun m!5882356 () Bool)

(assert (=> b!4879288 m!5882356))

(assert (=> b!4879123 d!1567779))

(declare-fun d!1567781 () Bool)

(declare-fun res!2082842 () Bool)

(declare-fun e!3049495 () Bool)

(assert (=> d!1567781 (=> (not res!2082842) (not e!3049495))))

(assert (=> d!1567781 (= res!2082842 (<= (size!36956 (list!17560 (xs!17925 (right!41039 (right!41039 t!4585))))) 512))))

(assert (=> d!1567781 (= (inv!72015 (right!41039 (right!41039 t!4585))) e!3049495)))

(declare-fun b!4879289 () Bool)

(declare-fun res!2082843 () Bool)

(assert (=> b!4879289 (=> (not res!2082843) (not e!3049495))))

(assert (=> b!4879289 (= res!2082843 (= (csize!29461 (right!41039 (right!41039 t!4585))) (size!36956 (list!17560 (xs!17925 (right!41039 (right!41039 t!4585)))))))))

(declare-fun b!4879290 () Bool)

(assert (=> b!4879290 (= e!3049495 (and (> (csize!29461 (right!41039 (right!41039 t!4585))) 0) (<= (csize!29461 (right!41039 (right!41039 t!4585))) 512)))))

(assert (= (and d!1567781 res!2082842) b!4879289))

(assert (= (and b!4879289 res!2082843) b!4879290))

(declare-fun m!5882358 () Bool)

(assert (=> d!1567781 m!5882358))

(assert (=> d!1567781 m!5882358))

(declare-fun m!5882360 () Bool)

(assert (=> d!1567781 m!5882360))

(assert (=> b!4879289 m!5882358))

(assert (=> b!4879289 m!5882358))

(assert (=> b!4879289 m!5882360))

(assert (=> b!4879113 d!1567781))

(declare-fun d!1567783 () Bool)

(declare-fun lt!1999122 () Bool)

(assert (=> d!1567783 (= lt!1999122 (isEmpty!30028 (list!17561 (right!41039 (right!41039 t!4585)))))))

(assert (=> d!1567783 (= lt!1999122 (= (size!36958 (right!41039 (right!41039 t!4585))) 0))))

(assert (=> d!1567783 (= (isEmpty!30026 (right!41039 (right!41039 t!4585))) lt!1999122)))

(declare-fun bs!1175310 () Bool)

(assert (= bs!1175310 d!1567783))

(assert (=> bs!1175310 m!5882210))

(assert (=> bs!1175310 m!5882210))

(declare-fun m!5882362 () Bool)

(assert (=> bs!1175310 m!5882362))

(assert (=> bs!1175310 m!5881976))

(assert (=> b!4879053 d!1567783))

(declare-fun d!1567785 () Bool)

(declare-fun res!2082844 () Bool)

(declare-fun e!3049496 () Bool)

(assert (=> d!1567785 (=> (not res!2082844) (not e!3049496))))

(assert (=> d!1567785 (= res!2082844 (<= (size!36956 (list!17560 (xs!17925 (left!40709 (left!40709 t!4585))))) 512))))

(assert (=> d!1567785 (= (inv!72015 (left!40709 (left!40709 t!4585))) e!3049496)))

(declare-fun b!4879291 () Bool)

(declare-fun res!2082845 () Bool)

(assert (=> b!4879291 (=> (not res!2082845) (not e!3049496))))

(assert (=> b!4879291 (= res!2082845 (= (csize!29461 (left!40709 (left!40709 t!4585))) (size!36956 (list!17560 (xs!17925 (left!40709 (left!40709 t!4585)))))))))

(declare-fun b!4879292 () Bool)

(assert (=> b!4879292 (= e!3049496 (and (> (csize!29461 (left!40709 (left!40709 t!4585))) 0) (<= (csize!29461 (left!40709 (left!40709 t!4585))) 512)))))

(assert (= (and d!1567785 res!2082844) b!4879291))

(assert (= (and b!4879291 res!2082845) b!4879292))

(declare-fun m!5882364 () Bool)

(assert (=> d!1567785 m!5882364))

(assert (=> d!1567785 m!5882364))

(declare-fun m!5882366 () Bool)

(assert (=> d!1567785 m!5882366))

(assert (=> b!4879291 m!5882364))

(assert (=> b!4879291 m!5882364))

(assert (=> b!4879291 m!5882366))

(assert (=> b!4879056 d!1567785))

(declare-fun d!1567787 () Bool)

(declare-fun c!829835 () Bool)

(assert (=> d!1567787 (= c!829835 (is-Nil!56030 lt!1999089))))

(declare-fun e!3049499 () (Set T!99284))

(assert (=> d!1567787 (= (content!10007 lt!1999089) e!3049499)))

(declare-fun b!4879297 () Bool)

(assert (=> b!4879297 (= e!3049499 (as set.empty (Set T!99284)))))

(declare-fun b!4879298 () Bool)

(assert (=> b!4879298 (= e!3049499 (set.union (set.insert (h!62478 lt!1999089) (as set.empty (Set T!99284))) (content!10007 (t!364780 lt!1999089))))))

(assert (= (and d!1567787 c!829835) b!4879297))

(assert (= (and d!1567787 (not c!829835)) b!4879298))

(declare-fun m!5882368 () Bool)

(assert (=> b!4879298 m!5882368))

(declare-fun m!5882370 () Bool)

(assert (=> b!4879298 m!5882370))

(assert (=> d!1567617 d!1567787))

(declare-fun d!1567789 () Bool)

(declare-fun lt!1999123 () Int)

(assert (=> d!1567789 (>= lt!1999123 0)))

(declare-fun e!3049500 () Int)

(assert (=> d!1567789 (= lt!1999123 e!3049500)))

(declare-fun c!829836 () Bool)

(assert (=> d!1567789 (= c!829836 (is-Nil!56030 (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1)))))))

(assert (=> d!1567789 (= (size!36956 (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1)))) lt!1999123)))

(declare-fun b!4879299 () Bool)

(assert (=> b!4879299 (= e!3049500 0)))

(declare-fun b!4879300 () Bool)

(assert (=> b!4879300 (= e!3049500 (+ 1 (size!36956 (t!364780 (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1)))))))))

(assert (= (and d!1567789 c!829836) b!4879299))

(assert (= (and d!1567789 (not c!829836)) b!4879300))

(declare-fun m!5882372 () Bool)

(assert (=> b!4879300 m!5882372))

(assert (=> b!4879060 d!1567789))

(declare-fun d!1567791 () Bool)

(assert (=> d!1567791 (= (list!17560 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1))) (innerList!14703 (xs!17925 (Leaf!24356 (fill!236 1 v!5488) 1))))))

(assert (=> b!4879060 d!1567791))

(declare-fun d!1567793 () Bool)

(declare-fun res!2082846 () Bool)

(declare-fun e!3049501 () Bool)

(assert (=> d!1567793 (=> (not res!2082846) (not e!3049501))))

(assert (=> d!1567793 (= res!2082846 (= (csize!29460 (right!41039 (right!41039 t!4585))) (+ (size!36958 (left!40709 (right!41039 (right!41039 t!4585)))) (size!36958 (right!41039 (right!41039 (right!41039 t!4585)))))))))

(assert (=> d!1567793 (= (inv!72014 (right!41039 (right!41039 t!4585))) e!3049501)))

(declare-fun b!4879301 () Bool)

(declare-fun res!2082847 () Bool)

(assert (=> b!4879301 (=> (not res!2082847) (not e!3049501))))

(assert (=> b!4879301 (= res!2082847 (and (not (= (left!40709 (right!41039 (right!41039 t!4585))) Empty!14615)) (not (= (right!41039 (right!41039 (right!41039 t!4585))) Empty!14615))))))

(declare-fun b!4879302 () Bool)

(declare-fun res!2082848 () Bool)

(assert (=> b!4879302 (=> (not res!2082848) (not e!3049501))))

(assert (=> b!4879302 (= res!2082848 (= (cheight!14826 (right!41039 (right!41039 t!4585))) (+ (max!0 (height!1948 (left!40709 (right!41039 (right!41039 t!4585)))) (height!1948 (right!41039 (right!41039 (right!41039 t!4585))))) 1)))))

(declare-fun b!4879303 () Bool)

(assert (=> b!4879303 (= e!3049501 (<= 0 (cheight!14826 (right!41039 (right!41039 t!4585)))))))

(assert (= (and d!1567793 res!2082846) b!4879301))

(assert (= (and b!4879301 res!2082847) b!4879302))

(assert (= (and b!4879302 res!2082848) b!4879303))

(declare-fun m!5882374 () Bool)

(assert (=> d!1567793 m!5882374))

(declare-fun m!5882376 () Bool)

(assert (=> d!1567793 m!5882376))

(assert (=> b!4879302 m!5882224))

(assert (=> b!4879302 m!5882226))

(assert (=> b!4879302 m!5882224))

(assert (=> b!4879302 m!5882226))

(declare-fun m!5882378 () Bool)

(assert (=> b!4879302 m!5882378))

(assert (=> b!4879111 d!1567793))

(declare-fun d!1567795 () Bool)

(declare-fun c!829837 () Bool)

(assert (=> d!1567795 (= c!829837 (is-Node!14615 (left!40709 (left!40709 (left!40709 t!4585)))))))

(declare-fun e!3049502 () Bool)

(assert (=> d!1567795 (= (inv!72011 (left!40709 (left!40709 (left!40709 t!4585)))) e!3049502)))

(declare-fun b!4879304 () Bool)

(assert (=> b!4879304 (= e!3049502 (inv!72014 (left!40709 (left!40709 (left!40709 t!4585)))))))

(declare-fun b!4879305 () Bool)

(declare-fun e!3049503 () Bool)

(assert (=> b!4879305 (= e!3049502 e!3049503)))

(declare-fun res!2082849 () Bool)

(assert (=> b!4879305 (= res!2082849 (not (is-Leaf!24356 (left!40709 (left!40709 (left!40709 t!4585))))))))

(assert (=> b!4879305 (=> res!2082849 e!3049503)))

(declare-fun b!4879306 () Bool)

(assert (=> b!4879306 (= e!3049503 (inv!72015 (left!40709 (left!40709 (left!40709 t!4585)))))))

(assert (= (and d!1567795 c!829837) b!4879304))

(assert (= (and d!1567795 (not c!829837)) b!4879305))

(assert (= (and b!4879305 (not res!2082849)) b!4879306))

(declare-fun m!5882380 () Bool)

(assert (=> b!4879304 m!5882380))

(declare-fun m!5882382 () Bool)

(assert (=> b!4879306 m!5882382))

(assert (=> b!4879114 d!1567795))

(declare-fun d!1567797 () Bool)

(declare-fun c!829838 () Bool)

(assert (=> d!1567797 (= c!829838 (is-Node!14615 (right!41039 (left!40709 (left!40709 t!4585)))))))

(declare-fun e!3049504 () Bool)

(assert (=> d!1567797 (= (inv!72011 (right!41039 (left!40709 (left!40709 t!4585)))) e!3049504)))

(declare-fun b!4879307 () Bool)

(assert (=> b!4879307 (= e!3049504 (inv!72014 (right!41039 (left!40709 (left!40709 t!4585)))))))

(declare-fun b!4879308 () Bool)

(declare-fun e!3049505 () Bool)

(assert (=> b!4879308 (= e!3049504 e!3049505)))

(declare-fun res!2082850 () Bool)

(assert (=> b!4879308 (= res!2082850 (not (is-Leaf!24356 (right!41039 (left!40709 (left!40709 t!4585))))))))

(assert (=> b!4879308 (=> res!2082850 e!3049505)))

(declare-fun b!4879309 () Bool)

(assert (=> b!4879309 (= e!3049505 (inv!72015 (right!41039 (left!40709 (left!40709 t!4585)))))))

(assert (= (and d!1567797 c!829838) b!4879307))

(assert (= (and d!1567797 (not c!829838)) b!4879308))

(assert (= (and b!4879308 (not res!2082850)) b!4879309))

(declare-fun m!5882384 () Bool)

(assert (=> b!4879307 m!5882384))

(declare-fun m!5882386 () Bool)

(assert (=> b!4879309 m!5882386))

(assert (=> b!4879114 d!1567797))

(assert (=> d!1567597 d!1567789))

(assert (=> d!1567597 d!1567791))

(declare-fun d!1567799 () Bool)

(assert (=> d!1567799 (= (max!0 (height!1948 (left!40709 t!4585)) (height!1948 (right!41039 t!4585))) (ite (< (height!1948 (left!40709 t!4585)) (height!1948 (right!41039 t!4585))) (height!1948 (right!41039 t!4585)) (height!1948 (left!40709 t!4585))))))

(assert (=> b!4879106 d!1567799))

(assert (=> b!4879106 d!1567605))

(assert (=> b!4879106 d!1567607))

(declare-fun d!1567801 () Bool)

(declare-fun c!829839 () Bool)

(assert (=> d!1567801 (= c!829839 (is-Node!14615 (left!40709 (right!41039 (left!40709 t!4585)))))))

(declare-fun e!3049506 () Bool)

(assert (=> d!1567801 (= (inv!72011 (left!40709 (right!41039 (left!40709 t!4585)))) e!3049506)))

(declare-fun b!4879310 () Bool)

(assert (=> b!4879310 (= e!3049506 (inv!72014 (left!40709 (right!41039 (left!40709 t!4585)))))))

(declare-fun b!4879311 () Bool)

(declare-fun e!3049507 () Bool)

(assert (=> b!4879311 (= e!3049506 e!3049507)))

(declare-fun res!2082851 () Bool)

(assert (=> b!4879311 (= res!2082851 (not (is-Leaf!24356 (left!40709 (right!41039 (left!40709 t!4585))))))))

(assert (=> b!4879311 (=> res!2082851 e!3049507)))

(declare-fun b!4879312 () Bool)

(assert (=> b!4879312 (= e!3049507 (inv!72015 (left!40709 (right!41039 (left!40709 t!4585)))))))

(assert (= (and d!1567801 c!829839) b!4879310))

(assert (= (and d!1567801 (not c!829839)) b!4879311))

(assert (= (and b!4879311 (not res!2082851)) b!4879312))

(declare-fun m!5882388 () Bool)

(assert (=> b!4879310 m!5882388))

(declare-fun m!5882390 () Bool)

(assert (=> b!4879312 m!5882390))

(assert (=> b!4879117 d!1567801))

(declare-fun d!1567803 () Bool)

(declare-fun c!829840 () Bool)

(assert (=> d!1567803 (= c!829840 (is-Node!14615 (right!41039 (right!41039 (left!40709 t!4585)))))))

(declare-fun e!3049508 () Bool)

(assert (=> d!1567803 (= (inv!72011 (right!41039 (right!41039 (left!40709 t!4585)))) e!3049508)))

(declare-fun b!4879313 () Bool)

(assert (=> b!4879313 (= e!3049508 (inv!72014 (right!41039 (right!41039 (left!40709 t!4585)))))))

(declare-fun b!4879314 () Bool)

(declare-fun e!3049509 () Bool)

(assert (=> b!4879314 (= e!3049508 e!3049509)))

(declare-fun res!2082852 () Bool)

(assert (=> b!4879314 (= res!2082852 (not (is-Leaf!24356 (right!41039 (right!41039 (left!40709 t!4585))))))))

(assert (=> b!4879314 (=> res!2082852 e!3049509)))

(declare-fun b!4879315 () Bool)

(assert (=> b!4879315 (= e!3049509 (inv!72015 (right!41039 (right!41039 (left!40709 t!4585)))))))

(assert (= (and d!1567803 c!829840) b!4879313))

(assert (= (and d!1567803 (not c!829840)) b!4879314))

(assert (= (and b!4879314 (not res!2082852)) b!4879315))

(declare-fun m!5882392 () Bool)

(assert (=> b!4879313 m!5882392))

(declare-fun m!5882394 () Bool)

(assert (=> b!4879315 m!5882394))

(assert (=> b!4879117 d!1567803))

(assert (=> b!4879051 d!1567739))

(assert (=> b!4879051 d!1567741))

(declare-fun d!1567805 () Bool)

(assert (=> d!1567805 (= (inv!72010 (xs!17925 (right!41039 (right!41039 t!4585)))) (<= (size!36956 (innerList!14703 (xs!17925 (right!41039 (right!41039 t!4585))))) 2147483647))))

(declare-fun bs!1175311 () Bool)

(assert (= bs!1175311 d!1567805))

(declare-fun m!5882396 () Bool)

(assert (=> bs!1175311 m!5882396))

(assert (=> b!4879127 d!1567805))

(declare-fun d!1567807 () Bool)

(declare-fun res!2082853 () Bool)

(declare-fun e!3049510 () Bool)

(assert (=> d!1567807 (=> (not res!2082853) (not e!3049510))))

(assert (=> d!1567807 (= res!2082853 (= (csize!29460 (left!40709 (left!40709 t!4585))) (+ (size!36958 (left!40709 (left!40709 (left!40709 t!4585)))) (size!36958 (right!41039 (left!40709 (left!40709 t!4585)))))))))

(assert (=> d!1567807 (= (inv!72014 (left!40709 (left!40709 t!4585))) e!3049510)))

(declare-fun b!4879316 () Bool)

(declare-fun res!2082854 () Bool)

(assert (=> b!4879316 (=> (not res!2082854) (not e!3049510))))

(assert (=> b!4879316 (= res!2082854 (and (not (= (left!40709 (left!40709 (left!40709 t!4585))) Empty!14615)) (not (= (right!41039 (left!40709 (left!40709 t!4585))) Empty!14615))))))

(declare-fun b!4879317 () Bool)

(declare-fun res!2082855 () Bool)

(assert (=> b!4879317 (=> (not res!2082855) (not e!3049510))))

(assert (=> b!4879317 (= res!2082855 (= (cheight!14826 (left!40709 (left!40709 t!4585))) (+ (max!0 (height!1948 (left!40709 (left!40709 (left!40709 t!4585)))) (height!1948 (right!41039 (left!40709 (left!40709 t!4585))))) 1)))))

(declare-fun b!4879318 () Bool)

(assert (=> b!4879318 (= e!3049510 (<= 0 (cheight!14826 (left!40709 (left!40709 t!4585)))))))

(assert (= (and d!1567807 res!2082853) b!4879316))

(assert (= (and b!4879316 res!2082854) b!4879317))

(assert (= (and b!4879317 res!2082855) b!4879318))

(declare-fun m!5882398 () Bool)

(assert (=> d!1567807 m!5882398))

(declare-fun m!5882400 () Bool)

(assert (=> d!1567807 m!5882400))

(assert (=> b!4879317 m!5882244))

(assert (=> b!4879317 m!5882246))

(assert (=> b!4879317 m!5882244))

(assert (=> b!4879317 m!5882246))

(declare-fun m!5882402 () Bool)

(assert (=> b!4879317 m!5882402))

(assert (=> b!4879054 d!1567807))

(declare-fun b!4879319 () Bool)

(declare-fun e!3049511 () Bool)

(declare-fun tp!1372898 () Bool)

(assert (=> b!4879319 (= e!3049511 (and tp_is_empty!35693 tp!1372898))))

(assert (=> b!4879098 (= tp!1372864 e!3049511)))

(assert (= (and b!4879098 (is-Cons!56030 (innerList!14703 _$14!1591))) b!4879319))

(declare-fun b!4879320 () Bool)

(declare-fun e!3049512 () Bool)

(declare-fun tp!1372899 () Bool)

(assert (=> b!4879320 (= e!3049512 (and tp_is_empty!35693 tp!1372899))))

(assert (=> b!4879121 (= tp!1372872 e!3049512)))

(assert (= (and b!4879121 (is-Cons!56030 (t!364780 (t!364780 (innerList!14703 (xs!17925 t!4585)))))) b!4879320))

(declare-fun b!4879321 () Bool)

(declare-fun e!3049513 () Bool)

(declare-fun tp!1372900 () Bool)

(assert (=> b!4879321 (= e!3049513 (and tp_is_empty!35693 tp!1372900))))

(assert (=> b!4879125 (= tp!1372875 e!3049513)))

(assert (= (and b!4879125 (is-Cons!56030 (innerList!14703 (xs!17925 (left!40709 (right!41039 t!4585)))))) b!4879321))

(declare-fun b!4879322 () Bool)

(declare-fun e!3049514 () Bool)

(declare-fun tp!1372901 () Bool)

(assert (=> b!4879322 (= e!3049514 (and tp_is_empty!35693 tp!1372901))))

(assert (=> b!4879120 (= tp!1372871 e!3049514)))

(assert (= (and b!4879120 (is-Cons!56030 (t!364780 (innerList!14703 (xs!17925 (right!41039 t!4585)))))) b!4879322))

(declare-fun b!4879323 () Bool)

(declare-fun e!3049515 () Bool)

(declare-fun tp!1372902 () Bool)

(assert (=> b!4879323 (= e!3049515 (and tp_is_empty!35693 tp!1372902))))

(assert (=> b!4879116 (= tp!1372866 e!3049515)))

(assert (= (and b!4879116 (is-Cons!56030 (innerList!14703 (xs!17925 (left!40709 (left!40709 t!4585)))))) b!4879323))

(declare-fun b!4879324 () Bool)

(declare-fun e!3049516 () Bool)

(declare-fun tp!1372905 () Bool)

(declare-fun tp!1372903 () Bool)

(assert (=> b!4879324 (= e!3049516 (and (inv!72011 (left!40709 (left!40709 (left!40709 (right!41039 t!4585))))) tp!1372905 (inv!72011 (right!41039 (left!40709 (left!40709 (right!41039 t!4585))))) tp!1372903))))

(declare-fun b!4879326 () Bool)

(declare-fun e!3049517 () Bool)

(declare-fun tp!1372904 () Bool)

(assert (=> b!4879326 (= e!3049517 tp!1372904)))

(declare-fun b!4879325 () Bool)

(assert (=> b!4879325 (= e!3049516 (and (inv!72010 (xs!17925 (left!40709 (left!40709 (right!41039 t!4585))))) e!3049517))))

(assert (=> b!4879123 (= tp!1372876 (and (inv!72011 (left!40709 (left!40709 (right!41039 t!4585)))) e!3049516))))

(assert (= (and b!4879123 (is-Node!14615 (left!40709 (left!40709 (right!41039 t!4585))))) b!4879324))

(assert (= b!4879325 b!4879326))

(assert (= (and b!4879123 (is-Leaf!24356 (left!40709 (left!40709 (right!41039 t!4585))))) b!4879325))

(declare-fun m!5882404 () Bool)

(assert (=> b!4879324 m!5882404))

(declare-fun m!5882406 () Bool)

(assert (=> b!4879324 m!5882406))

(declare-fun m!5882408 () Bool)

(assert (=> b!4879325 m!5882408))

(assert (=> b!4879123 m!5882078))

(declare-fun tp!1372906 () Bool)

(declare-fun b!4879327 () Bool)

(declare-fun e!3049518 () Bool)

(declare-fun tp!1372908 () Bool)

(assert (=> b!4879327 (= e!3049518 (and (inv!72011 (left!40709 (right!41039 (left!40709 (right!41039 t!4585))))) tp!1372908 (inv!72011 (right!41039 (right!41039 (left!40709 (right!41039 t!4585))))) tp!1372906))))

(declare-fun b!4879329 () Bool)

(declare-fun e!3049519 () Bool)

(declare-fun tp!1372907 () Bool)

(assert (=> b!4879329 (= e!3049519 tp!1372907)))

(declare-fun b!4879328 () Bool)

(assert (=> b!4879328 (= e!3049518 (and (inv!72010 (xs!17925 (right!41039 (left!40709 (right!41039 t!4585))))) e!3049519))))

(assert (=> b!4879123 (= tp!1372874 (and (inv!72011 (right!41039 (left!40709 (right!41039 t!4585)))) e!3049518))))

(assert (= (and b!4879123 (is-Node!14615 (right!41039 (left!40709 (right!41039 t!4585))))) b!4879327))

(assert (= b!4879328 b!4879329))

(assert (= (and b!4879123 (is-Leaf!24356 (right!41039 (left!40709 (right!41039 t!4585))))) b!4879328))

(declare-fun m!5882410 () Bool)

(assert (=> b!4879327 m!5882410))

(declare-fun m!5882412 () Bool)

(assert (=> b!4879327 m!5882412))

(declare-fun m!5882414 () Bool)

(assert (=> b!4879328 m!5882414))

(assert (=> b!4879123 m!5882080))

(declare-fun b!4879330 () Bool)

(declare-fun e!3049520 () Bool)

(declare-fun tp!1372909 () Bool)

(assert (=> b!4879330 (= e!3049520 (and tp_is_empty!35693 tp!1372909))))

(assert (=> b!4879119 (= tp!1372869 e!3049520)))

(assert (= (and b!4879119 (is-Cons!56030 (innerList!14703 (xs!17925 (right!41039 (left!40709 t!4585)))))) b!4879330))

(declare-fun b!4879331 () Bool)

(declare-fun tp!1372912 () Bool)

(declare-fun e!3049521 () Bool)

(declare-fun tp!1372910 () Bool)

(assert (=> b!4879331 (= e!3049521 (and (inv!72011 (left!40709 (left!40709 (left!40709 (left!40709 t!4585))))) tp!1372912 (inv!72011 (right!41039 (left!40709 (left!40709 (left!40709 t!4585))))) tp!1372910))))

(declare-fun b!4879333 () Bool)

(declare-fun e!3049522 () Bool)

(declare-fun tp!1372911 () Bool)

(assert (=> b!4879333 (= e!3049522 tp!1372911)))

(declare-fun b!4879332 () Bool)

(assert (=> b!4879332 (= e!3049521 (and (inv!72010 (xs!17925 (left!40709 (left!40709 (left!40709 t!4585))))) e!3049522))))

(assert (=> b!4879114 (= tp!1372867 (and (inv!72011 (left!40709 (left!40709 (left!40709 t!4585)))) e!3049521))))

(assert (= (and b!4879114 (is-Node!14615 (left!40709 (left!40709 (left!40709 t!4585))))) b!4879331))

(assert (= b!4879332 b!4879333))

(assert (= (and b!4879114 (is-Leaf!24356 (left!40709 (left!40709 (left!40709 t!4585))))) b!4879332))

(declare-fun m!5882416 () Bool)

(assert (=> b!4879331 m!5882416))

(declare-fun m!5882418 () Bool)

(assert (=> b!4879331 m!5882418))

(declare-fun m!5882420 () Bool)

(assert (=> b!4879332 m!5882420))

(assert (=> b!4879114 m!5882062))

(declare-fun e!3049523 () Bool)

(declare-fun b!4879334 () Bool)

(declare-fun tp!1372915 () Bool)

(declare-fun tp!1372913 () Bool)

(assert (=> b!4879334 (= e!3049523 (and (inv!72011 (left!40709 (right!41039 (left!40709 (left!40709 t!4585))))) tp!1372915 (inv!72011 (right!41039 (right!41039 (left!40709 (left!40709 t!4585))))) tp!1372913))))

(declare-fun b!4879336 () Bool)

(declare-fun e!3049524 () Bool)

(declare-fun tp!1372914 () Bool)

(assert (=> b!4879336 (= e!3049524 tp!1372914)))

(declare-fun b!4879335 () Bool)

(assert (=> b!4879335 (= e!3049523 (and (inv!72010 (xs!17925 (right!41039 (left!40709 (left!40709 t!4585))))) e!3049524))))

(assert (=> b!4879114 (= tp!1372865 (and (inv!72011 (right!41039 (left!40709 (left!40709 t!4585)))) e!3049523))))

(assert (= (and b!4879114 (is-Node!14615 (right!41039 (left!40709 (left!40709 t!4585))))) b!4879334))

(assert (= b!4879335 b!4879336))

(assert (= (and b!4879114 (is-Leaf!24356 (right!41039 (left!40709 (left!40709 t!4585))))) b!4879335))

(declare-fun m!5882422 () Bool)

(assert (=> b!4879334 m!5882422))

(declare-fun m!5882424 () Bool)

(assert (=> b!4879334 m!5882424))

(declare-fun m!5882426 () Bool)

(assert (=> b!4879335 m!5882426))

(assert (=> b!4879114 m!5882064))

(declare-fun e!3049525 () Bool)

(declare-fun tp!1372918 () Bool)

(declare-fun tp!1372916 () Bool)

(declare-fun b!4879337 () Bool)

(assert (=> b!4879337 (= e!3049525 (and (inv!72011 (left!40709 (left!40709 (right!41039 (right!41039 t!4585))))) tp!1372918 (inv!72011 (right!41039 (left!40709 (right!41039 (right!41039 t!4585))))) tp!1372916))))

(declare-fun b!4879339 () Bool)

(declare-fun e!3049526 () Bool)

(declare-fun tp!1372917 () Bool)

(assert (=> b!4879339 (= e!3049526 tp!1372917)))

(declare-fun b!4879338 () Bool)

(assert (=> b!4879338 (= e!3049525 (and (inv!72010 (xs!17925 (left!40709 (right!41039 (right!41039 t!4585))))) e!3049526))))

(assert (=> b!4879126 (= tp!1372879 (and (inv!72011 (left!40709 (right!41039 (right!41039 t!4585)))) e!3049525))))

(assert (= (and b!4879126 (is-Node!14615 (left!40709 (right!41039 (right!41039 t!4585))))) b!4879337))

(assert (= b!4879338 b!4879339))

(assert (= (and b!4879126 (is-Leaf!24356 (left!40709 (right!41039 (right!41039 t!4585))))) b!4879338))

(declare-fun m!5882428 () Bool)

(assert (=> b!4879337 m!5882428))

(declare-fun m!5882430 () Bool)

(assert (=> b!4879337 m!5882430))

(declare-fun m!5882432 () Bool)

(assert (=> b!4879338 m!5882432))

(assert (=> b!4879126 m!5882084))

(declare-fun tp!1372921 () Bool)

(declare-fun e!3049527 () Bool)

(declare-fun tp!1372919 () Bool)

(declare-fun b!4879340 () Bool)

(assert (=> b!4879340 (= e!3049527 (and (inv!72011 (left!40709 (right!41039 (right!41039 (right!41039 t!4585))))) tp!1372921 (inv!72011 (right!41039 (right!41039 (right!41039 (right!41039 t!4585))))) tp!1372919))))

(declare-fun b!4879342 () Bool)

(declare-fun e!3049528 () Bool)

(declare-fun tp!1372920 () Bool)

(assert (=> b!4879342 (= e!3049528 tp!1372920)))

(declare-fun b!4879341 () Bool)

(assert (=> b!4879341 (= e!3049527 (and (inv!72010 (xs!17925 (right!41039 (right!41039 (right!41039 t!4585))))) e!3049528))))

(assert (=> b!4879126 (= tp!1372877 (and (inv!72011 (right!41039 (right!41039 (right!41039 t!4585)))) e!3049527))))

(assert (= (and b!4879126 (is-Node!14615 (right!41039 (right!41039 (right!41039 t!4585))))) b!4879340))

(assert (= b!4879341 b!4879342))

(assert (= (and b!4879126 (is-Leaf!24356 (right!41039 (right!41039 (right!41039 t!4585))))) b!4879341))

(declare-fun m!5882434 () Bool)

(assert (=> b!4879340 m!5882434))

(declare-fun m!5882436 () Bool)

(assert (=> b!4879340 m!5882436))

(declare-fun m!5882438 () Bool)

(assert (=> b!4879341 m!5882438))

(assert (=> b!4879126 m!5882086))

(declare-fun b!4879343 () Bool)

(declare-fun tp!1372922 () Bool)

(declare-fun tp!1372924 () Bool)

(declare-fun e!3049529 () Bool)

(assert (=> b!4879343 (= e!3049529 (and (inv!72011 (left!40709 (left!40709 (right!41039 (left!40709 t!4585))))) tp!1372924 (inv!72011 (right!41039 (left!40709 (right!41039 (left!40709 t!4585))))) tp!1372922))))

(declare-fun b!4879345 () Bool)

(declare-fun e!3049530 () Bool)

(declare-fun tp!1372923 () Bool)

(assert (=> b!4879345 (= e!3049530 tp!1372923)))

(declare-fun b!4879344 () Bool)

(assert (=> b!4879344 (= e!3049529 (and (inv!72010 (xs!17925 (left!40709 (right!41039 (left!40709 t!4585))))) e!3049530))))

(assert (=> b!4879117 (= tp!1372870 (and (inv!72011 (left!40709 (right!41039 (left!40709 t!4585)))) e!3049529))))

(assert (= (and b!4879117 (is-Node!14615 (left!40709 (right!41039 (left!40709 t!4585))))) b!4879343))

(assert (= b!4879344 b!4879345))

(assert (= (and b!4879117 (is-Leaf!24356 (left!40709 (right!41039 (left!40709 t!4585))))) b!4879344))

(declare-fun m!5882440 () Bool)

(assert (=> b!4879343 m!5882440))

(declare-fun m!5882442 () Bool)

(assert (=> b!4879343 m!5882442))

(declare-fun m!5882444 () Bool)

(assert (=> b!4879344 m!5882444))

(assert (=> b!4879117 m!5882072))

(declare-fun e!3049531 () Bool)

(declare-fun b!4879346 () Bool)

(declare-fun tp!1372927 () Bool)

(declare-fun tp!1372925 () Bool)

(assert (=> b!4879346 (= e!3049531 (and (inv!72011 (left!40709 (right!41039 (right!41039 (left!40709 t!4585))))) tp!1372927 (inv!72011 (right!41039 (right!41039 (right!41039 (left!40709 t!4585))))) tp!1372925))))

(declare-fun b!4879348 () Bool)

(declare-fun e!3049532 () Bool)

(declare-fun tp!1372926 () Bool)

(assert (=> b!4879348 (= e!3049532 tp!1372926)))

(declare-fun b!4879347 () Bool)

(assert (=> b!4879347 (= e!3049531 (and (inv!72010 (xs!17925 (right!41039 (right!41039 (left!40709 t!4585))))) e!3049532))))

(assert (=> b!4879117 (= tp!1372868 (and (inv!72011 (right!41039 (right!41039 (left!40709 t!4585)))) e!3049531))))

(assert (= (and b!4879117 (is-Node!14615 (right!41039 (right!41039 (left!40709 t!4585))))) b!4879346))

(assert (= b!4879347 b!4879348))

(assert (= (and b!4879117 (is-Leaf!24356 (right!41039 (right!41039 (left!40709 t!4585))))) b!4879347))

(declare-fun m!5882446 () Bool)

(assert (=> b!4879346 m!5882446))

(declare-fun m!5882448 () Bool)

(assert (=> b!4879346 m!5882448))

(declare-fun m!5882450 () Bool)

(assert (=> b!4879347 m!5882450))

(assert (=> b!4879117 m!5882074))

(declare-fun b!4879349 () Bool)

(declare-fun e!3049533 () Bool)

(declare-fun tp!1372928 () Bool)

(assert (=> b!4879349 (= e!3049533 (and tp_is_empty!35693 tp!1372928))))

(assert (=> b!4879128 (= tp!1372878 e!3049533)))

(assert (= (and b!4879128 (is-Cons!56030 (innerList!14703 (xs!17925 (right!41039 (right!41039 t!4585)))))) b!4879349))

(declare-fun b!4879350 () Bool)

(declare-fun e!3049534 () Bool)

(declare-fun tp!1372929 () Bool)

(assert (=> b!4879350 (= e!3049534 (and tp_is_empty!35693 tp!1372929))))

(assert (=> b!4879122 (= tp!1372873 e!3049534)))

(assert (= (and b!4879122 (is-Cons!56030 (t!364780 (innerList!14703 (xs!17925 (left!40709 t!4585)))))) b!4879350))

(push 1)

(assert (not b!4879313))

(assert (not b!4879266))

(assert (not d!1567769))

(assert (not b!4879225))

(assert (not b!4879336))

(assert (not b!4879226))

(assert (not b!4879264))

(assert (not d!1567807))

(assert (not b!4879234))

(assert (not d!1567793))

(assert (not d!1567699))

(assert (not b!4879227))

(assert (not b!4879321))

(assert (not d!1567761))

(assert (not b!4879310))

(assert (not b!4879257))

(assert (not d!1567717))

(assert (not b!4879229))

(assert (not b!4879237))

(assert (not b!4879331))

(assert (not b!4879236))

(assert (not d!1567745))

(assert (not b!4879275))

(assert (not d!1567751))

(assert (not b!4879307))

(assert (not d!1567767))

(assert (not b!4879263))

(assert (not b!4879220))

(assert (not d!1567723))

(assert (not b!4879298))

(assert (not b!4879309))

(assert (not b!4879340))

(assert (not b!4879247))

(assert (not b!4879224))

(assert (not b!4879320))

(assert (not b!4879261))

(assert (not b!4879126))

(assert (not d!1567749))

(assert (not b!4879283))

(assert (not b!4879319))

(assert (not b!4879250))

(assert (not b!4879280))

(assert (not d!1567683))

(assert (not d!1567725))

(assert (not d!1567747))

(assert (not b!4879272))

(assert (not d!1567719))

(assert tp_is_empty!35693)

(assert (not b!4879327))

(assert (not b!4879238))

(assert (not b!4879278))

(assert (not b!4879268))

(assert (not b!4879343))

(assert (not b!4879269))

(assert (not b!4879333))

(assert (not d!1567785))

(assert (not b!4879222))

(assert (not d!1567721))

(assert (not b!4879123))

(assert (not b!4879323))

(assert (not b!4879233))

(assert (not b!4879281))

(assert (not b!4879235))

(assert (not b!4879221))

(assert (not b!4879276))

(assert (not b!4879350))

(assert (not b!4879258))

(assert (not b!4879306))

(assert (not d!1567773))

(assert (not b!4879282))

(assert (not b!4879335))

(assert (not b!4879291))

(assert (not b!4879342))

(assert (not b!4879345))

(assert (not b!4879325))

(assert (not b!4879329))

(assert (not b!4879348))

(assert (not b!4879285))

(assert (not b!4879317))

(assert (not b!4879338))

(assert (not b!4879344))

(assert (not b!4879302))

(assert (not b!4879315))

(assert (not b!4879223))

(assert (not b!4879286))

(assert (not d!1567707))

(assert (not b!4879289))

(assert (not b!4879332))

(assert (not b!4879117))

(assert (not b!4879341))

(assert (not b!4879334))

(assert (not b!4879255))

(assert (not d!1567781))

(assert (not b!4879346))

(assert (not d!1567805))

(assert (not b!4879322))

(assert (not d!1567763))

(assert (not b!4879312))

(assert (not b!4879279))

(assert (not b!4879349))

(assert (not b!4879254))

(assert (not b!4879260))

(assert (not d!1567715))

(assert (not b!4879252))

(assert (not b!4879265))

(assert (not d!1567743))

(assert (not b!4879245))

(assert (not d!1567775))

(assert (not b!4879241))

(assert (not b!4879347))

(assert (not b!4879288))

(assert (not b!4879232))

(assert (not b!4879326))

(assert (not b!4879244))

(assert (not b!4879300))

(assert (not b!4879262))

(assert (not b!4879277))

(assert (not b!4879339))

(assert (not b!4879337))

(assert (not b!4879114))

(assert (not b!4879330))

(assert (not b!4879328))

(assert (not b!4879304))

(assert (not b!4879231))

(assert (not d!1567783))

(assert (not b!4879324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

