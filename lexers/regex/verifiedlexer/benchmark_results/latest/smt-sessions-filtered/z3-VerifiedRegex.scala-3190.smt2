; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186180 () Bool)

(assert start!186180)

(declare-fun b!1861834 () Bool)

(declare-fun e!1188933 () Bool)

(declare-datatypes ((T!32934 0))(
  ( (T!32935 (val!5916 Int)) )
))
(declare-datatypes ((List!20733 0))(
  ( (Nil!20651) (Cons!20651 (h!26052 T!32934) (t!172774 List!20733)) )
))
(declare-datatypes ((IArray!13697 0))(
  ( (IArray!13698 (innerList!6906 List!20733)) )
))
(declare-datatypes ((Conc!6846 0))(
  ( (Node!6846 (left!16622 Conc!6846) (right!16952 Conc!6846) (csize!13922 Int) (cheight!7057 Int)) (Leaf!10037 (xs!9722 IArray!13697) (csize!13923 Int)) (Empty!6846) )
))
(declare-fun t!4595 () Conc!6846)

(declare-fun isBalanced!2147 (Conc!6846) Bool)

(assert (=> b!1861834 (= e!1188933 (not (isBalanced!2147 (right!16952 t!4595))))))

(declare-fun b!1861835 () Bool)

(declare-fun e!1188934 () Bool)

(declare-fun e!1188935 () Bool)

(declare-fun inv!27221 (IArray!13697) Bool)

(assert (=> b!1861835 (= e!1188934 (and (inv!27221 (xs!9722 t!4595)) e!1188935))))

(declare-fun tp!530510 () Bool)

(declare-fun tp!530511 () Bool)

(declare-fun b!1861836 () Bool)

(declare-fun inv!27222 (Conc!6846) Bool)

(assert (=> b!1861836 (= e!1188934 (and (inv!27222 (left!16622 t!4595)) tp!530510 (inv!27222 (right!16952 t!4595)) tp!530511))))

(declare-fun b!1861837 () Bool)

(declare-fun tp!530512 () Bool)

(assert (=> b!1861837 (= e!1188935 tp!530512)))

(declare-fun b!1861838 () Bool)

(declare-fun res!833692 () Bool)

(assert (=> b!1861838 (=> (not res!833692) (not e!1188933))))

(get-info :version)

(assert (=> b!1861838 (= res!833692 (and (not ((_ is Leaf!10037) t!4595)) ((_ is Node!6846) t!4595)))))

(declare-fun b!1861839 () Bool)

(declare-fun res!833694 () Bool)

(assert (=> b!1861839 (=> (not res!833694) (not e!1188933))))

(declare-fun isEmpty!12849 (Conc!6846) Bool)

(assert (=> b!1861839 (= res!833694 (not (isEmpty!12849 t!4595)))))

(declare-fun res!833693 () Bool)

(assert (=> start!186180 (=> (not res!833693) (not e!1188933))))

(assert (=> start!186180 (= res!833693 (isBalanced!2147 t!4595))))

(assert (=> start!186180 e!1188933))

(assert (=> start!186180 (and (inv!27222 t!4595) e!1188934)))

(declare-fun b!1861833 () Bool)

(declare-fun res!833695 () Bool)

(assert (=> b!1861833 (=> (not res!833695) (not e!1188933))))

(assert (=> b!1861833 (= res!833695 (isEmpty!12849 (left!16622 t!4595)))))

(assert (= (and start!186180 res!833693) b!1861839))

(assert (= (and b!1861839 res!833694) b!1861838))

(assert (= (and b!1861838 res!833692) b!1861833))

(assert (= (and b!1861833 res!833695) b!1861834))

(assert (= (and start!186180 ((_ is Node!6846) t!4595)) b!1861836))

(assert (= b!1861835 b!1861837))

(assert (= (and start!186180 ((_ is Leaf!10037) t!4595)) b!1861835))

(declare-fun m!2285535 () Bool)

(assert (=> b!1861835 m!2285535))

(declare-fun m!2285537 () Bool)

(assert (=> b!1861833 m!2285537))

(declare-fun m!2285539 () Bool)

(assert (=> b!1861839 m!2285539))

(declare-fun m!2285541 () Bool)

(assert (=> b!1861834 m!2285541))

(declare-fun m!2285543 () Bool)

(assert (=> start!186180 m!2285543))

(declare-fun m!2285545 () Bool)

(assert (=> start!186180 m!2285545))

(declare-fun m!2285547 () Bool)

(assert (=> b!1861836 m!2285547))

(declare-fun m!2285549 () Bool)

(assert (=> b!1861836 m!2285549))

(check-sat (not b!1861834) (not b!1861835) (not start!186180) (not b!1861839) (not b!1861836) (not b!1861833) (not b!1861837))
(check-sat)
(get-model)

(declare-fun d!568209 () Bool)

(declare-fun lt!717869 () Bool)

(declare-fun isEmpty!12850 (List!20733) Bool)

(declare-fun list!8414 (Conc!6846) List!20733)

(assert (=> d!568209 (= lt!717869 (isEmpty!12850 (list!8414 (left!16622 t!4595))))))

(declare-fun size!16342 (Conc!6846) Int)

(assert (=> d!568209 (= lt!717869 (= (size!16342 (left!16622 t!4595)) 0))))

(assert (=> d!568209 (= (isEmpty!12849 (left!16622 t!4595)) lt!717869)))

(declare-fun bs!411530 () Bool)

(assert (= bs!411530 d!568209))

(declare-fun m!2285553 () Bool)

(assert (=> bs!411530 m!2285553))

(assert (=> bs!411530 m!2285553))

(declare-fun m!2285555 () Bool)

(assert (=> bs!411530 m!2285555))

(declare-fun m!2285559 () Bool)

(assert (=> bs!411530 m!2285559))

(assert (=> b!1861833 d!568209))

(declare-fun d!568211 () Bool)

(declare-fun lt!717870 () Bool)

(assert (=> d!568211 (= lt!717870 (isEmpty!12850 (list!8414 t!4595)))))

(assert (=> d!568211 (= lt!717870 (= (size!16342 t!4595) 0))))

(assert (=> d!568211 (= (isEmpty!12849 t!4595) lt!717870)))

(declare-fun bs!411532 () Bool)

(assert (= bs!411532 d!568211))

(declare-fun m!2285563 () Bool)

(assert (=> bs!411532 m!2285563))

(assert (=> bs!411532 m!2285563))

(declare-fun m!2285565 () Bool)

(assert (=> bs!411532 m!2285565))

(declare-fun m!2285567 () Bool)

(assert (=> bs!411532 m!2285567))

(assert (=> b!1861839 d!568211))

(declare-fun b!1861870 () Bool)

(declare-fun res!833727 () Bool)

(declare-fun e!1188947 () Bool)

(assert (=> b!1861870 (=> (not res!833727) (not e!1188947))))

(assert (=> b!1861870 (= res!833727 (not (isEmpty!12849 (left!16622 (right!16952 t!4595)))))))

(declare-fun d!568215 () Bool)

(declare-fun res!833730 () Bool)

(declare-fun e!1188946 () Bool)

(assert (=> d!568215 (=> res!833730 e!1188946)))

(assert (=> d!568215 (= res!833730 (not ((_ is Node!6846) (right!16952 t!4595))))))

(assert (=> d!568215 (= (isBalanced!2147 (right!16952 t!4595)) e!1188946)))

(declare-fun b!1861871 () Bool)

(assert (=> b!1861871 (= e!1188946 e!1188947)))

(declare-fun res!833729 () Bool)

(assert (=> b!1861871 (=> (not res!833729) (not e!1188947))))

(declare-fun height!1039 (Conc!6846) Int)

(assert (=> b!1861871 (= res!833729 (<= (- 1) (- (height!1039 (left!16622 (right!16952 t!4595))) (height!1039 (right!16952 (right!16952 t!4595))))))))

(declare-fun b!1861872 () Bool)

(declare-fun res!833731 () Bool)

(assert (=> b!1861872 (=> (not res!833731) (not e!1188947))))

(assert (=> b!1861872 (= res!833731 (isBalanced!2147 (right!16952 (right!16952 t!4595))))))

(declare-fun b!1861873 () Bool)

(assert (=> b!1861873 (= e!1188947 (not (isEmpty!12849 (right!16952 (right!16952 t!4595)))))))

(declare-fun b!1861874 () Bool)

(declare-fun res!833728 () Bool)

(assert (=> b!1861874 (=> (not res!833728) (not e!1188947))))

(assert (=> b!1861874 (= res!833728 (<= (- (height!1039 (left!16622 (right!16952 t!4595))) (height!1039 (right!16952 (right!16952 t!4595)))) 1))))

(declare-fun b!1861875 () Bool)

(declare-fun res!833726 () Bool)

(assert (=> b!1861875 (=> (not res!833726) (not e!1188947))))

(assert (=> b!1861875 (= res!833726 (isBalanced!2147 (left!16622 (right!16952 t!4595))))))

(assert (= (and d!568215 (not res!833730)) b!1861871))

(assert (= (and b!1861871 res!833729) b!1861874))

(assert (= (and b!1861874 res!833728) b!1861875))

(assert (= (and b!1861875 res!833726) b!1861872))

(assert (= (and b!1861872 res!833731) b!1861870))

(assert (= (and b!1861870 res!833727) b!1861873))

(declare-fun m!2285577 () Bool)

(assert (=> b!1861874 m!2285577))

(declare-fun m!2285579 () Bool)

(assert (=> b!1861874 m!2285579))

(declare-fun m!2285581 () Bool)

(assert (=> b!1861872 m!2285581))

(declare-fun m!2285583 () Bool)

(assert (=> b!1861870 m!2285583))

(declare-fun m!2285585 () Bool)

(assert (=> b!1861875 m!2285585))

(declare-fun m!2285587 () Bool)

(assert (=> b!1861873 m!2285587))

(assert (=> b!1861871 m!2285577))

(assert (=> b!1861871 m!2285579))

(assert (=> b!1861834 d!568215))

(declare-fun d!568219 () Bool)

(declare-fun c!303225 () Bool)

(assert (=> d!568219 (= c!303225 ((_ is Node!6846) (left!16622 t!4595)))))

(declare-fun e!1188958 () Bool)

(assert (=> d!568219 (= (inv!27222 (left!16622 t!4595)) e!1188958)))

(declare-fun b!1861891 () Bool)

(declare-fun inv!27224 (Conc!6846) Bool)

(assert (=> b!1861891 (= e!1188958 (inv!27224 (left!16622 t!4595)))))

(declare-fun b!1861892 () Bool)

(declare-fun e!1188959 () Bool)

(assert (=> b!1861892 (= e!1188958 e!1188959)))

(declare-fun res!833737 () Bool)

(assert (=> b!1861892 (= res!833737 (not ((_ is Leaf!10037) (left!16622 t!4595))))))

(assert (=> b!1861892 (=> res!833737 e!1188959)))

(declare-fun b!1861893 () Bool)

(declare-fun inv!27226 (Conc!6846) Bool)

(assert (=> b!1861893 (= e!1188959 (inv!27226 (left!16622 t!4595)))))

(assert (= (and d!568219 c!303225) b!1861891))

(assert (= (and d!568219 (not c!303225)) b!1861892))

(assert (= (and b!1861892 (not res!833737)) b!1861893))

(declare-fun m!2285593 () Bool)

(assert (=> b!1861891 m!2285593))

(declare-fun m!2285595 () Bool)

(assert (=> b!1861893 m!2285595))

(assert (=> b!1861836 d!568219))

(declare-fun d!568223 () Bool)

(declare-fun c!303226 () Bool)

(assert (=> d!568223 (= c!303226 ((_ is Node!6846) (right!16952 t!4595)))))

(declare-fun e!1188962 () Bool)

(assert (=> d!568223 (= (inv!27222 (right!16952 t!4595)) e!1188962)))

(declare-fun b!1861900 () Bool)

(assert (=> b!1861900 (= e!1188962 (inv!27224 (right!16952 t!4595)))))

(declare-fun b!1861901 () Bool)

(declare-fun e!1188963 () Bool)

(assert (=> b!1861901 (= e!1188962 e!1188963)))

(declare-fun res!833744 () Bool)

(assert (=> b!1861901 (= res!833744 (not ((_ is Leaf!10037) (right!16952 t!4595))))))

(assert (=> b!1861901 (=> res!833744 e!1188963)))

(declare-fun b!1861902 () Bool)

(assert (=> b!1861902 (= e!1188963 (inv!27226 (right!16952 t!4595)))))

(assert (= (and d!568223 c!303226) b!1861900))

(assert (= (and d!568223 (not c!303226)) b!1861901))

(assert (= (and b!1861901 (not res!833744)) b!1861902))

(declare-fun m!2285597 () Bool)

(assert (=> b!1861900 m!2285597))

(declare-fun m!2285599 () Bool)

(assert (=> b!1861902 m!2285599))

(assert (=> b!1861836 d!568223))

(declare-fun b!1861903 () Bool)

(declare-fun res!833746 () Bool)

(declare-fun e!1188965 () Bool)

(assert (=> b!1861903 (=> (not res!833746) (not e!1188965))))

(assert (=> b!1861903 (= res!833746 (not (isEmpty!12849 (left!16622 t!4595))))))

(declare-fun d!568225 () Bool)

(declare-fun res!833749 () Bool)

(declare-fun e!1188964 () Bool)

(assert (=> d!568225 (=> res!833749 e!1188964)))

(assert (=> d!568225 (= res!833749 (not ((_ is Node!6846) t!4595)))))

(assert (=> d!568225 (= (isBalanced!2147 t!4595) e!1188964)))

(declare-fun b!1861904 () Bool)

(assert (=> b!1861904 (= e!1188964 e!1188965)))

(declare-fun res!833748 () Bool)

(assert (=> b!1861904 (=> (not res!833748) (not e!1188965))))

(assert (=> b!1861904 (= res!833748 (<= (- 1) (- (height!1039 (left!16622 t!4595)) (height!1039 (right!16952 t!4595)))))))

(declare-fun b!1861905 () Bool)

(declare-fun res!833750 () Bool)

(assert (=> b!1861905 (=> (not res!833750) (not e!1188965))))

(assert (=> b!1861905 (= res!833750 (isBalanced!2147 (right!16952 t!4595)))))

(declare-fun b!1861906 () Bool)

(assert (=> b!1861906 (= e!1188965 (not (isEmpty!12849 (right!16952 t!4595))))))

(declare-fun b!1861907 () Bool)

(declare-fun res!833747 () Bool)

(assert (=> b!1861907 (=> (not res!833747) (not e!1188965))))

(assert (=> b!1861907 (= res!833747 (<= (- (height!1039 (left!16622 t!4595)) (height!1039 (right!16952 t!4595))) 1))))

(declare-fun b!1861908 () Bool)

(declare-fun res!833745 () Bool)

(assert (=> b!1861908 (=> (not res!833745) (not e!1188965))))

(assert (=> b!1861908 (= res!833745 (isBalanced!2147 (left!16622 t!4595)))))

(assert (= (and d!568225 (not res!833749)) b!1861904))

(assert (= (and b!1861904 res!833748) b!1861907))

(assert (= (and b!1861907 res!833747) b!1861908))

(assert (= (and b!1861908 res!833745) b!1861905))

(assert (= (and b!1861905 res!833750) b!1861903))

(assert (= (and b!1861903 res!833746) b!1861906))

(declare-fun m!2285615 () Bool)

(assert (=> b!1861907 m!2285615))

(declare-fun m!2285619 () Bool)

(assert (=> b!1861907 m!2285619))

(assert (=> b!1861905 m!2285541))

(assert (=> b!1861903 m!2285537))

(declare-fun m!2285623 () Bool)

(assert (=> b!1861908 m!2285623))

(declare-fun m!2285625 () Bool)

(assert (=> b!1861906 m!2285625))

(assert (=> b!1861904 m!2285615))

(assert (=> b!1861904 m!2285619))

(assert (=> start!186180 d!568225))

(declare-fun d!568231 () Bool)

(declare-fun c!303227 () Bool)

(assert (=> d!568231 (= c!303227 ((_ is Node!6846) t!4595))))

(declare-fun e!1188966 () Bool)

(assert (=> d!568231 (= (inv!27222 t!4595) e!1188966)))

(declare-fun b!1861909 () Bool)

(assert (=> b!1861909 (= e!1188966 (inv!27224 t!4595))))

(declare-fun b!1861910 () Bool)

(declare-fun e!1188967 () Bool)

(assert (=> b!1861910 (= e!1188966 e!1188967)))

(declare-fun res!833751 () Bool)

(assert (=> b!1861910 (= res!833751 (not ((_ is Leaf!10037) t!4595)))))

(assert (=> b!1861910 (=> res!833751 e!1188967)))

(declare-fun b!1861911 () Bool)

(assert (=> b!1861911 (= e!1188967 (inv!27226 t!4595))))

(assert (= (and d!568231 c!303227) b!1861909))

(assert (= (and d!568231 (not c!303227)) b!1861910))

(assert (= (and b!1861910 (not res!833751)) b!1861911))

(declare-fun m!2285627 () Bool)

(assert (=> b!1861909 m!2285627))

(declare-fun m!2285629 () Bool)

(assert (=> b!1861911 m!2285629))

(assert (=> start!186180 d!568231))

(declare-fun d!568233 () Bool)

(declare-fun size!16344 (List!20733) Int)

(assert (=> d!568233 (= (inv!27221 (xs!9722 t!4595)) (<= (size!16344 (innerList!6906 (xs!9722 t!4595))) 2147483647))))

(declare-fun bs!411535 () Bool)

(assert (= bs!411535 d!568233))

(declare-fun m!2285637 () Bool)

(assert (=> bs!411535 m!2285637))

(assert (=> b!1861835 d!568233))

(declare-fun b!1861928 () Bool)

(declare-fun e!1188976 () Bool)

(declare-fun tp_is_empty!8621 () Bool)

(declare-fun tp!530519 () Bool)

(assert (=> b!1861928 (= e!1188976 (and tp_is_empty!8621 tp!530519))))

(assert (=> b!1861837 (= tp!530512 e!1188976)))

(assert (= (and b!1861837 ((_ is Cons!20651) (innerList!6906 (xs!9722 t!4595)))) b!1861928))

(declare-fun tp!530531 () Bool)

(declare-fun b!1861942 () Bool)

(declare-fun e!1188986 () Bool)

(declare-fun tp!530533 () Bool)

(assert (=> b!1861942 (= e!1188986 (and (inv!27222 (left!16622 (left!16622 t!4595))) tp!530531 (inv!27222 (right!16952 (left!16622 t!4595))) tp!530533))))

(declare-fun b!1861944 () Bool)

(declare-fun e!1188985 () Bool)

(declare-fun tp!530532 () Bool)

(assert (=> b!1861944 (= e!1188985 tp!530532)))

(declare-fun b!1861943 () Bool)

(assert (=> b!1861943 (= e!1188986 (and (inv!27221 (xs!9722 (left!16622 t!4595))) e!1188985))))

(assert (=> b!1861836 (= tp!530510 (and (inv!27222 (left!16622 t!4595)) e!1188986))))

(assert (= (and b!1861836 ((_ is Node!6846) (left!16622 t!4595))) b!1861942))

(assert (= b!1861943 b!1861944))

(assert (= (and b!1861836 ((_ is Leaf!10037) (left!16622 t!4595))) b!1861943))

(declare-fun m!2285651 () Bool)

(assert (=> b!1861942 m!2285651))

(declare-fun m!2285657 () Bool)

(assert (=> b!1861942 m!2285657))

(declare-fun m!2285659 () Bool)

(assert (=> b!1861943 m!2285659))

(assert (=> b!1861836 m!2285547))

(declare-fun tp!530537 () Bool)

(declare-fun b!1861952 () Bool)

(declare-fun tp!530539 () Bool)

(declare-fun e!1188992 () Bool)

(assert (=> b!1861952 (= e!1188992 (and (inv!27222 (left!16622 (right!16952 t!4595))) tp!530537 (inv!27222 (right!16952 (right!16952 t!4595))) tp!530539))))

(declare-fun b!1861954 () Bool)

(declare-fun e!1188991 () Bool)

(declare-fun tp!530538 () Bool)

(assert (=> b!1861954 (= e!1188991 tp!530538)))

(declare-fun b!1861953 () Bool)

(assert (=> b!1861953 (= e!1188992 (and (inv!27221 (xs!9722 (right!16952 t!4595))) e!1188991))))

(assert (=> b!1861836 (= tp!530511 (and (inv!27222 (right!16952 t!4595)) e!1188992))))

(assert (= (and b!1861836 ((_ is Node!6846) (right!16952 t!4595))) b!1861952))

(assert (= b!1861953 b!1861954))

(assert (= (and b!1861836 ((_ is Leaf!10037) (right!16952 t!4595))) b!1861953))

(declare-fun m!2285661 () Bool)

(assert (=> b!1861952 m!2285661))

(declare-fun m!2285663 () Bool)

(assert (=> b!1861952 m!2285663))

(declare-fun m!2285665 () Bool)

(assert (=> b!1861953 m!2285665))

(assert (=> b!1861836 m!2285549))

(check-sat (not b!1861908) (not b!1861911) (not b!1861893) (not b!1861873) (not d!568211) (not b!1861900) (not b!1861870) (not b!1861909) (not b!1861903) (not b!1861872) (not b!1861928) (not b!1861906) (not b!1861891) (not b!1861871) tp_is_empty!8621 (not b!1861943) (not b!1861942) (not b!1861954) (not b!1861905) (not d!568209) (not d!568233) (not b!1861874) (not b!1861952) (not b!1861875) (not b!1861836) (not b!1861904) (not b!1861944) (not b!1861902) (not b!1861953) (not b!1861907))
(check-sat)
