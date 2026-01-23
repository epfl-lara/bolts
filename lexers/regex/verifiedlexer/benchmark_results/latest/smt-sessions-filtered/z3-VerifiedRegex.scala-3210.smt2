; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187056 () Bool)

(assert start!187056)

(declare-fun b!1868992 () Bool)

(declare-fun e!1192625 () Bool)

(declare-datatypes ((T!33214 0))(
  ( (T!33215 (val!5956 Int)) )
))
(declare-datatypes ((List!20773 0))(
  ( (Nil!20691) (Cons!20691 (h!26092 T!33214) (t!172946 List!20773)) )
))
(declare-datatypes ((IArray!13777 0))(
  ( (IArray!13778 (innerList!6946 List!20773)) )
))
(declare-datatypes ((Conc!6886 0))(
  ( (Node!6886 (left!16682 Conc!6886) (right!17012 Conc!6886) (csize!14002 Int) (cheight!7097 Int)) (Leaf!10097 (xs!9768 IArray!13777) (csize!14003 Int)) (Empty!6886) )
))
(declare-fun t!4595 () Conc!6886)

(declare-fun isEmpty!12924 (Conc!6886) Bool)

(assert (=> b!1868992 (= e!1192625 (not (isEmpty!12924 (left!16682 t!4595))))))

(declare-fun b!1868993 () Bool)

(declare-fun res!836781 () Bool)

(declare-fun e!1192627 () Bool)

(assert (=> b!1868993 (=> (not res!836781) (not e!1192627))))

(get-info :version)

(assert (=> b!1868993 (= res!836781 (not ((_ is Leaf!10097) t!4595)))))

(declare-fun b!1868994 () Bool)

(declare-fun e!1192624 () Bool)

(declare-fun e!1192626 () Bool)

(declare-fun inv!27429 (IArray!13777) Bool)

(assert (=> b!1868994 (= e!1192624 (and (inv!27429 (xs!9768 t!4595)) e!1192626))))

(declare-fun b!1868995 () Bool)

(declare-fun res!836778 () Bool)

(assert (=> b!1868995 (=> (not res!836778) (not e!1192627))))

(assert (=> b!1868995 (= res!836778 ((_ is Node!6886) t!4595))))

(declare-fun b!1868996 () Bool)

(declare-fun lt!718991 () List!20773)

(declare-fun isEmpty!12925 (List!20773) Bool)

(assert (=> b!1868996 (= e!1192627 (isEmpty!12925 lt!718991))))

(declare-fun lt!718990 () List!20773)

(declare-fun list!8478 (Conc!6886) List!20773)

(assert (=> b!1868996 (= lt!718990 (list!8478 (right!17012 t!4595)))))

(assert (=> b!1868996 (= lt!718991 (list!8478 (left!16682 t!4595)))))

(declare-fun res!836783 () Bool)

(assert (=> start!187056 (=> (not res!836783) (not e!1192627))))

(declare-fun isBalanced!2187 (Conc!6886) Bool)

(assert (=> start!187056 (= res!836783 (isBalanced!2187 t!4595))))

(assert (=> start!187056 e!1192627))

(declare-fun inv!27430 (Conc!6886) Bool)

(assert (=> start!187056 (and (inv!27430 t!4595) e!1192624)))

(declare-fun tp!531883 () Bool)

(declare-fun tp!531885 () Bool)

(declare-fun b!1868997 () Bool)

(assert (=> b!1868997 (= e!1192624 (and (inv!27430 (left!16682 t!4595)) tp!531883 (inv!27430 (right!17012 t!4595)) tp!531885))))

(declare-fun b!1868998 () Bool)

(declare-fun res!836782 () Bool)

(assert (=> b!1868998 (=> (not res!836782) (not e!1192627))))

(assert (=> b!1868998 (= res!836782 (not (isEmpty!12924 t!4595)))))

(declare-fun b!1868999 () Bool)

(declare-fun res!836779 () Bool)

(assert (=> b!1868999 (=> (not res!836779) (not e!1192627))))

(assert (=> b!1868999 (= res!836779 e!1192625)))

(declare-fun res!836780 () Bool)

(assert (=> b!1868999 (=> res!836780 e!1192625)))

(assert (=> b!1868999 (= res!836780 (not ((_ is Node!6886) t!4595)))))

(declare-fun b!1869000 () Bool)

(declare-fun tp!531884 () Bool)

(assert (=> b!1869000 (= e!1192626 tp!531884)))

(assert (= (and start!187056 res!836783) b!1868998))

(assert (= (and b!1868998 res!836782) b!1868993))

(assert (= (and b!1868993 res!836781) b!1868999))

(assert (= (and b!1868999 (not res!836780)) b!1868992))

(assert (= (and b!1868999 res!836779) b!1868995))

(assert (= (and b!1868995 res!836778) b!1868996))

(assert (= (and start!187056 ((_ is Node!6886) t!4595)) b!1868997))

(assert (= b!1868994 b!1869000))

(assert (= (and start!187056 ((_ is Leaf!10097) t!4595)) b!1868994))

(declare-fun m!2294659 () Bool)

(assert (=> b!1868992 m!2294659))

(declare-fun m!2294661 () Bool)

(assert (=> b!1868998 m!2294661))

(declare-fun m!2294663 () Bool)

(assert (=> b!1868994 m!2294663))

(declare-fun m!2294665 () Bool)

(assert (=> start!187056 m!2294665))

(declare-fun m!2294667 () Bool)

(assert (=> start!187056 m!2294667))

(declare-fun m!2294669 () Bool)

(assert (=> b!1868996 m!2294669))

(declare-fun m!2294671 () Bool)

(assert (=> b!1868996 m!2294671))

(declare-fun m!2294673 () Bool)

(assert (=> b!1868996 m!2294673))

(declare-fun m!2294675 () Bool)

(assert (=> b!1868997 m!2294675))

(declare-fun m!2294677 () Bool)

(assert (=> b!1868997 m!2294677))

(check-sat (not b!1868998) (not b!1868994) (not start!187056) (not b!1868997) (not b!1869000) (not b!1868996) (not b!1868992))
(check-sat)
(get-model)

(declare-fun d!571257 () Bool)

(assert (=> d!571257 (= (isEmpty!12925 lt!718991) ((_ is Nil!20691) lt!718991))))

(assert (=> b!1868996 d!571257))

(declare-fun b!1869022 () Bool)

(declare-fun e!1192640 () List!20773)

(declare-fun e!1192641 () List!20773)

(assert (=> b!1869022 (= e!1192640 e!1192641)))

(declare-fun c!304511 () Bool)

(assert (=> b!1869022 (= c!304511 ((_ is Leaf!10097) (right!17012 t!4595)))))

(declare-fun b!1869024 () Bool)

(declare-fun ++!5613 (List!20773 List!20773) List!20773)

(assert (=> b!1869024 (= e!1192641 (++!5613 (list!8478 (left!16682 (right!17012 t!4595))) (list!8478 (right!17012 (right!17012 t!4595)))))))

(declare-fun b!1869023 () Bool)

(declare-fun list!8479 (IArray!13777) List!20773)

(assert (=> b!1869023 (= e!1192641 (list!8479 (xs!9768 (right!17012 t!4595))))))

(declare-fun d!571261 () Bool)

(declare-fun c!304510 () Bool)

(assert (=> d!571261 (= c!304510 ((_ is Empty!6886) (right!17012 t!4595)))))

(assert (=> d!571261 (= (list!8478 (right!17012 t!4595)) e!1192640)))

(declare-fun b!1869021 () Bool)

(assert (=> b!1869021 (= e!1192640 Nil!20691)))

(assert (= (and d!571261 c!304510) b!1869021))

(assert (= (and d!571261 (not c!304510)) b!1869022))

(assert (= (and b!1869022 c!304511) b!1869023))

(assert (= (and b!1869022 (not c!304511)) b!1869024))

(declare-fun m!2294697 () Bool)

(assert (=> b!1869024 m!2294697))

(declare-fun m!2294699 () Bool)

(assert (=> b!1869024 m!2294699))

(assert (=> b!1869024 m!2294697))

(assert (=> b!1869024 m!2294699))

(declare-fun m!2294701 () Bool)

(assert (=> b!1869024 m!2294701))

(declare-fun m!2294703 () Bool)

(assert (=> b!1869023 m!2294703))

(assert (=> b!1868996 d!571261))

(declare-fun b!1869026 () Bool)

(declare-fun e!1192642 () List!20773)

(declare-fun e!1192643 () List!20773)

(assert (=> b!1869026 (= e!1192642 e!1192643)))

(declare-fun c!304513 () Bool)

(assert (=> b!1869026 (= c!304513 ((_ is Leaf!10097) (left!16682 t!4595)))))

(declare-fun b!1869028 () Bool)

(assert (=> b!1869028 (= e!1192643 (++!5613 (list!8478 (left!16682 (left!16682 t!4595))) (list!8478 (right!17012 (left!16682 t!4595)))))))

(declare-fun b!1869027 () Bool)

(assert (=> b!1869027 (= e!1192643 (list!8479 (xs!9768 (left!16682 t!4595))))))

(declare-fun d!571271 () Bool)

(declare-fun c!304512 () Bool)

(assert (=> d!571271 (= c!304512 ((_ is Empty!6886) (left!16682 t!4595)))))

(assert (=> d!571271 (= (list!8478 (left!16682 t!4595)) e!1192642)))

(declare-fun b!1869025 () Bool)

(assert (=> b!1869025 (= e!1192642 Nil!20691)))

(assert (= (and d!571271 c!304512) b!1869025))

(assert (= (and d!571271 (not c!304512)) b!1869026))

(assert (= (and b!1869026 c!304513) b!1869027))

(assert (= (and b!1869026 (not c!304513)) b!1869028))

(declare-fun m!2294705 () Bool)

(assert (=> b!1869028 m!2294705))

(declare-fun m!2294707 () Bool)

(assert (=> b!1869028 m!2294707))

(assert (=> b!1869028 m!2294705))

(assert (=> b!1869028 m!2294707))

(declare-fun m!2294709 () Bool)

(assert (=> b!1869028 m!2294709))

(declare-fun m!2294711 () Bool)

(assert (=> b!1869027 m!2294711))

(assert (=> b!1868996 d!571271))

(declare-fun d!571273 () Bool)

(declare-fun c!304524 () Bool)

(assert (=> d!571273 (= c!304524 ((_ is Node!6886) (left!16682 t!4595)))))

(declare-fun e!1192656 () Bool)

(assert (=> d!571273 (= (inv!27430 (left!16682 t!4595)) e!1192656)))

(declare-fun b!1869051 () Bool)

(declare-fun inv!27433 (Conc!6886) Bool)

(assert (=> b!1869051 (= e!1192656 (inv!27433 (left!16682 t!4595)))))

(declare-fun b!1869052 () Bool)

(declare-fun e!1192657 () Bool)

(assert (=> b!1869052 (= e!1192656 e!1192657)))

(declare-fun res!836790 () Bool)

(assert (=> b!1869052 (= res!836790 (not ((_ is Leaf!10097) (left!16682 t!4595))))))

(assert (=> b!1869052 (=> res!836790 e!1192657)))

(declare-fun b!1869053 () Bool)

(declare-fun inv!27434 (Conc!6886) Bool)

(assert (=> b!1869053 (= e!1192657 (inv!27434 (left!16682 t!4595)))))

(assert (= (and d!571273 c!304524) b!1869051))

(assert (= (and d!571273 (not c!304524)) b!1869052))

(assert (= (and b!1869052 (not res!836790)) b!1869053))

(declare-fun m!2294729 () Bool)

(assert (=> b!1869051 m!2294729))

(declare-fun m!2294731 () Bool)

(assert (=> b!1869053 m!2294731))

(assert (=> b!1868997 d!571273))

(declare-fun d!571279 () Bool)

(declare-fun c!304525 () Bool)

(assert (=> d!571279 (= c!304525 ((_ is Node!6886) (right!17012 t!4595)))))

(declare-fun e!1192658 () Bool)

(assert (=> d!571279 (= (inv!27430 (right!17012 t!4595)) e!1192658)))

(declare-fun b!1869054 () Bool)

(assert (=> b!1869054 (= e!1192658 (inv!27433 (right!17012 t!4595)))))

(declare-fun b!1869055 () Bool)

(declare-fun e!1192659 () Bool)

(assert (=> b!1869055 (= e!1192658 e!1192659)))

(declare-fun res!836791 () Bool)

(assert (=> b!1869055 (= res!836791 (not ((_ is Leaf!10097) (right!17012 t!4595))))))

(assert (=> b!1869055 (=> res!836791 e!1192659)))

(declare-fun b!1869056 () Bool)

(assert (=> b!1869056 (= e!1192659 (inv!27434 (right!17012 t!4595)))))

(assert (= (and d!571279 c!304525) b!1869054))

(assert (= (and d!571279 (not c!304525)) b!1869055))

(assert (= (and b!1869055 (not res!836791)) b!1869056))

(declare-fun m!2294733 () Bool)

(assert (=> b!1869054 m!2294733))

(declare-fun m!2294735 () Bool)

(assert (=> b!1869056 m!2294735))

(assert (=> b!1868997 d!571279))

(declare-fun d!571281 () Bool)

(declare-fun lt!718998 () Bool)

(assert (=> d!571281 (= lt!718998 (isEmpty!12925 (list!8478 (left!16682 t!4595))))))

(declare-fun size!16414 (Conc!6886) Int)

(assert (=> d!571281 (= lt!718998 (= (size!16414 (left!16682 t!4595)) 0))))

(assert (=> d!571281 (= (isEmpty!12924 (left!16682 t!4595)) lt!718998)))

(declare-fun bs!411894 () Bool)

(assert (= bs!411894 d!571281))

(assert (=> bs!411894 m!2294673))

(assert (=> bs!411894 m!2294673))

(declare-fun m!2294737 () Bool)

(assert (=> bs!411894 m!2294737))

(declare-fun m!2294739 () Bool)

(assert (=> bs!411894 m!2294739))

(assert (=> b!1868992 d!571281))

(declare-fun b!1869109 () Bool)

(declare-fun res!836824 () Bool)

(declare-fun e!1192684 () Bool)

(assert (=> b!1869109 (=> (not res!836824) (not e!1192684))))

(assert (=> b!1869109 (= res!836824 (not (isEmpty!12924 (left!16682 t!4595))))))

(declare-fun d!571283 () Bool)

(declare-fun res!836828 () Bool)

(declare-fun e!1192683 () Bool)

(assert (=> d!571283 (=> res!836828 e!1192683)))

(assert (=> d!571283 (= res!836828 (not ((_ is Node!6886) t!4595)))))

(assert (=> d!571283 (= (isBalanced!2187 t!4595) e!1192683)))

(declare-fun b!1869110 () Bool)

(declare-fun res!836823 () Bool)

(assert (=> b!1869110 (=> (not res!836823) (not e!1192684))))

(assert (=> b!1869110 (= res!836823 (isBalanced!2187 (right!17012 t!4595)))))

(declare-fun b!1869111 () Bool)

(assert (=> b!1869111 (= e!1192683 e!1192684)))

(declare-fun res!836826 () Bool)

(assert (=> b!1869111 (=> (not res!836826) (not e!1192684))))

(declare-fun height!1073 (Conc!6886) Int)

(assert (=> b!1869111 (= res!836826 (<= (- 1) (- (height!1073 (left!16682 t!4595)) (height!1073 (right!17012 t!4595)))))))

(declare-fun b!1869112 () Bool)

(declare-fun res!836825 () Bool)

(assert (=> b!1869112 (=> (not res!836825) (not e!1192684))))

(assert (=> b!1869112 (= res!836825 (<= (- (height!1073 (left!16682 t!4595)) (height!1073 (right!17012 t!4595))) 1))))

(declare-fun b!1869113 () Bool)

(declare-fun res!836827 () Bool)

(assert (=> b!1869113 (=> (not res!836827) (not e!1192684))))

(assert (=> b!1869113 (= res!836827 (isBalanced!2187 (left!16682 t!4595)))))

(declare-fun b!1869114 () Bool)

(assert (=> b!1869114 (= e!1192684 (not (isEmpty!12924 (right!17012 t!4595))))))

(assert (= (and d!571283 (not res!836828)) b!1869111))

(assert (= (and b!1869111 res!836826) b!1869112))

(assert (= (and b!1869112 res!836825) b!1869113))

(assert (= (and b!1869113 res!836827) b!1869110))

(assert (= (and b!1869110 res!836823) b!1869109))

(assert (= (and b!1869109 res!836824) b!1869114))

(declare-fun m!2294769 () Bool)

(assert (=> b!1869110 m!2294769))

(declare-fun m!2294771 () Bool)

(assert (=> b!1869111 m!2294771))

(declare-fun m!2294773 () Bool)

(assert (=> b!1869111 m!2294773))

(declare-fun m!2294775 () Bool)

(assert (=> b!1869113 m!2294775))

(assert (=> b!1869109 m!2294659))

(declare-fun m!2294777 () Bool)

(assert (=> b!1869114 m!2294777))

(assert (=> b!1869112 m!2294771))

(assert (=> b!1869112 m!2294773))

(assert (=> start!187056 d!571283))

(declare-fun d!571289 () Bool)

(declare-fun c!304527 () Bool)

(assert (=> d!571289 (= c!304527 ((_ is Node!6886) t!4595))))

(declare-fun e!1192685 () Bool)

(assert (=> d!571289 (= (inv!27430 t!4595) e!1192685)))

(declare-fun b!1869115 () Bool)

(assert (=> b!1869115 (= e!1192685 (inv!27433 t!4595))))

(declare-fun b!1869116 () Bool)

(declare-fun e!1192686 () Bool)

(assert (=> b!1869116 (= e!1192685 e!1192686)))

(declare-fun res!836829 () Bool)

(assert (=> b!1869116 (= res!836829 (not ((_ is Leaf!10097) t!4595)))))

(assert (=> b!1869116 (=> res!836829 e!1192686)))

(declare-fun b!1869117 () Bool)

(assert (=> b!1869117 (= e!1192686 (inv!27434 t!4595))))

(assert (= (and d!571289 c!304527) b!1869115))

(assert (= (and d!571289 (not c!304527)) b!1869116))

(assert (= (and b!1869116 (not res!836829)) b!1869117))

(declare-fun m!2294779 () Bool)

(assert (=> b!1869115 m!2294779))

(declare-fun m!2294781 () Bool)

(assert (=> b!1869117 m!2294781))

(assert (=> start!187056 d!571289))

(declare-fun d!571291 () Bool)

(declare-fun lt!718999 () Bool)

(assert (=> d!571291 (= lt!718999 (isEmpty!12925 (list!8478 t!4595)))))

(assert (=> d!571291 (= lt!718999 (= (size!16414 t!4595) 0))))

(assert (=> d!571291 (= (isEmpty!12924 t!4595) lt!718999)))

(declare-fun bs!411896 () Bool)

(assert (= bs!411896 d!571291))

(declare-fun m!2294783 () Bool)

(assert (=> bs!411896 m!2294783))

(assert (=> bs!411896 m!2294783))

(declare-fun m!2294785 () Bool)

(assert (=> bs!411896 m!2294785))

(declare-fun m!2294787 () Bool)

(assert (=> bs!411896 m!2294787))

(assert (=> b!1868998 d!571291))

(declare-fun d!571293 () Bool)

(declare-fun size!16416 (List!20773) Int)

(assert (=> d!571293 (= (inv!27429 (xs!9768 t!4595)) (<= (size!16416 (innerList!6946 (xs!9768 t!4595))) 2147483647))))

(declare-fun bs!411897 () Bool)

(assert (= bs!411897 d!571293))

(declare-fun m!2294789 () Bool)

(assert (=> bs!411897 m!2294789))

(assert (=> b!1868994 d!571293))

(declare-fun b!1869122 () Bool)

(declare-fun e!1192689 () Bool)

(declare-fun tp_is_empty!8691 () Bool)

(declare-fun tp!531903 () Bool)

(assert (=> b!1869122 (= e!1192689 (and tp_is_empty!8691 tp!531903))))

(assert (=> b!1869000 (= tp!531884 e!1192689)))

(assert (= (and b!1869000 ((_ is Cons!20691) (innerList!6946 (xs!9768 t!4595)))) b!1869122))

(declare-fun tp!531912 () Bool)

(declare-fun e!1192694 () Bool)

(declare-fun b!1869131 () Bool)

(declare-fun tp!531910 () Bool)

(assert (=> b!1869131 (= e!1192694 (and (inv!27430 (left!16682 (left!16682 t!4595))) tp!531912 (inv!27430 (right!17012 (left!16682 t!4595))) tp!531910))))

(declare-fun b!1869133 () Bool)

(declare-fun e!1192695 () Bool)

(declare-fun tp!531911 () Bool)

(assert (=> b!1869133 (= e!1192695 tp!531911)))

(declare-fun b!1869132 () Bool)

(assert (=> b!1869132 (= e!1192694 (and (inv!27429 (xs!9768 (left!16682 t!4595))) e!1192695))))

(assert (=> b!1868997 (= tp!531883 (and (inv!27430 (left!16682 t!4595)) e!1192694))))

(assert (= (and b!1868997 ((_ is Node!6886) (left!16682 t!4595))) b!1869131))

(assert (= b!1869132 b!1869133))

(assert (= (and b!1868997 ((_ is Leaf!10097) (left!16682 t!4595))) b!1869132))

(declare-fun m!2294791 () Bool)

(assert (=> b!1869131 m!2294791))

(declare-fun m!2294793 () Bool)

(assert (=> b!1869131 m!2294793))

(declare-fun m!2294795 () Bool)

(assert (=> b!1869132 m!2294795))

(assert (=> b!1868997 m!2294675))

(declare-fun tp!531915 () Bool)

(declare-fun e!1192696 () Bool)

(declare-fun b!1869134 () Bool)

(declare-fun tp!531913 () Bool)

(assert (=> b!1869134 (= e!1192696 (and (inv!27430 (left!16682 (right!17012 t!4595))) tp!531915 (inv!27430 (right!17012 (right!17012 t!4595))) tp!531913))))

(declare-fun b!1869136 () Bool)

(declare-fun e!1192697 () Bool)

(declare-fun tp!531914 () Bool)

(assert (=> b!1869136 (= e!1192697 tp!531914)))

(declare-fun b!1869135 () Bool)

(assert (=> b!1869135 (= e!1192696 (and (inv!27429 (xs!9768 (right!17012 t!4595))) e!1192697))))

(assert (=> b!1868997 (= tp!531885 (and (inv!27430 (right!17012 t!4595)) e!1192696))))

(assert (= (and b!1868997 ((_ is Node!6886) (right!17012 t!4595))) b!1869134))

(assert (= b!1869135 b!1869136))

(assert (= (and b!1868997 ((_ is Leaf!10097) (right!17012 t!4595))) b!1869135))

(declare-fun m!2294797 () Bool)

(assert (=> b!1869134 m!2294797))

(declare-fun m!2294799 () Bool)

(assert (=> b!1869134 m!2294799))

(declare-fun m!2294801 () Bool)

(assert (=> b!1869135 m!2294801))

(assert (=> b!1868997 m!2294677))

(check-sat (not d!571293) (not b!1869115) (not b!1869109) (not b!1869134) (not b!1869114) (not b!1869023) (not b!1869053) (not b!1869117) (not b!1869051) (not b!1869131) tp_is_empty!8691 (not b!1869136) (not d!571291) (not b!1869024) (not b!1869132) (not b!1869056) (not b!1869133) (not b!1869111) (not b!1868997) (not b!1869113) (not b!1869122) (not b!1869028) (not d!571281) (not b!1869027) (not b!1869054) (not b!1869110) (not b!1869112) (not b!1869135))
(check-sat)
