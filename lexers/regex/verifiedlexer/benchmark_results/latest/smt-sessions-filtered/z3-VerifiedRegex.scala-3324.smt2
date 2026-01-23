; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189116 () Bool)

(assert start!189116)

(declare-fun b!1888892 () Bool)

(declare-fun e!1205477 () Bool)

(declare-fun tp_is_empty!9033 () Bool)

(declare-fun tp!538482 () Bool)

(assert (=> b!1888892 (= e!1205477 (and tp_is_empty!9033 tp!538482))))

(declare-fun res!843603 () Bool)

(declare-fun e!1205479 () Bool)

(assert (=> start!189116 (=> (not res!843603) (not e!1205479))))

(declare-datatypes ((B!1777 0))(
  ( (B!1778 (val!6174 Int)) )
))
(declare-datatypes ((List!21167 0))(
  ( (Nil!21085) (Cons!21085 (h!26486 B!1777) (t!175166 List!21167)) )
))
(declare-fun l1!1329 () List!21167)

(declare-fun l2!1298 () List!21167)

(declare-fun subseq!431 (List!21167 List!21167) Bool)

(assert (=> start!189116 (= res!843603 (subseq!431 l1!1329 l2!1298))))

(assert (=> start!189116 e!1205479))

(assert (=> start!189116 e!1205477))

(declare-fun e!1205480 () Bool)

(assert (=> start!189116 e!1205480))

(declare-fun e!1205478 () Bool)

(assert (=> start!189116 e!1205478))

(declare-fun b!1888893 () Bool)

(declare-fun res!843607 () Bool)

(assert (=> b!1888893 (=> (not res!843607) (not e!1205479))))

(declare-fun l3!256 () List!21167)

(assert (=> b!1888893 (= res!843607 (subseq!431 l2!1298 (t!175166 l3!256)))))

(declare-fun b!1888894 () Bool)

(declare-fun res!843605 () Bool)

(assert (=> b!1888894 (=> (not res!843605) (not e!1205479))))

(assert (=> b!1888894 (= res!843605 (not (= (h!26486 l1!1329) (h!26486 l2!1298))))))

(declare-fun b!1888895 () Bool)

(declare-fun res!843604 () Bool)

(assert (=> b!1888895 (=> (not res!843604) (not e!1205479))))

(assert (=> b!1888895 (= res!843604 (subseq!431 l2!1298 l3!256))))

(declare-fun b!1888896 () Bool)

(declare-fun res!843606 () Bool)

(assert (=> b!1888896 (=> (not res!843606) (not e!1205479))))

(assert (=> b!1888896 (= res!843606 (not (subseq!431 (t!175166 l2!1298) (t!175166 l3!256))))))

(declare-fun b!1888897 () Bool)

(assert (=> b!1888897 (= e!1205479 (not (subseq!431 l1!1329 l3!256)))))

(assert (=> b!1888897 (subseq!431 l1!1329 (t!175166 l3!256))))

(declare-datatypes ((Unit!35502 0))(
  ( (Unit!35503) )
))
(declare-fun lt!723846 () Unit!35502)

(declare-fun lemmaSubSeqTransitive!14 (List!21167 List!21167 List!21167) Unit!35502)

(assert (=> b!1888897 (= lt!723846 (lemmaSubSeqTransitive!14 l1!1329 l2!1298 (t!175166 l3!256)))))

(declare-fun b!1888898 () Bool)

(declare-fun tp!538483 () Bool)

(assert (=> b!1888898 (= e!1205478 (and tp_is_empty!9033 tp!538483))))

(declare-fun b!1888899 () Bool)

(declare-fun res!843608 () Bool)

(assert (=> b!1888899 (=> (not res!843608) (not e!1205479))))

(get-info :version)

(assert (=> b!1888899 (= res!843608 (and (or (not ((_ is Cons!21085) l1!1329)) (not ((_ is Cons!21085) l2!1298)) (not ((_ is Cons!21085) l3!256)) (= (h!26486 l2!1298) (h!26486 l3!256))) ((_ is Cons!21085) l1!1329) ((_ is Cons!21085) l2!1298) ((_ is Cons!21085) l3!256) (= (h!26486 l2!1298) (h!26486 l3!256))))))

(declare-fun b!1888900 () Bool)

(declare-fun tp!538484 () Bool)

(assert (=> b!1888900 (= e!1205480 (and tp_is_empty!9033 tp!538484))))

(assert (= (and start!189116 res!843603) b!1888895))

(assert (= (and b!1888895 res!843604) b!1888899))

(assert (= (and b!1888899 res!843608) b!1888896))

(assert (= (and b!1888896 res!843606) b!1888894))

(assert (= (and b!1888894 res!843605) b!1888893))

(assert (= (and b!1888893 res!843607) b!1888897))

(assert (= (and start!189116 ((_ is Cons!21085) l1!1329)) b!1888892))

(assert (= (and start!189116 ((_ is Cons!21085) l2!1298)) b!1888900))

(assert (= (and start!189116 ((_ is Cons!21085) l3!256)) b!1888898))

(declare-fun m!2320045 () Bool)

(assert (=> b!1888895 m!2320045))

(declare-fun m!2320047 () Bool)

(assert (=> b!1888897 m!2320047))

(declare-fun m!2320049 () Bool)

(assert (=> b!1888897 m!2320049))

(declare-fun m!2320051 () Bool)

(assert (=> b!1888897 m!2320051))

(declare-fun m!2320053 () Bool)

(assert (=> b!1888896 m!2320053))

(declare-fun m!2320055 () Bool)

(assert (=> start!189116 m!2320055))

(declare-fun m!2320057 () Bool)

(assert (=> b!1888893 m!2320057))

(check-sat tp_is_empty!9033 (not b!1888893) (not b!1888896) (not b!1888897) (not b!1888895) (not start!189116) (not b!1888898) (not b!1888900) (not b!1888892))
(check-sat)
(get-model)

(declare-fun b!1888909 () Bool)

(declare-fun e!1205492 () Bool)

(declare-fun e!1205489 () Bool)

(assert (=> b!1888909 (= e!1205492 e!1205489)))

(declare-fun res!843620 () Bool)

(assert (=> b!1888909 (=> (not res!843620) (not e!1205489))))

(assert (=> b!1888909 (= res!843620 ((_ is Cons!21085) l2!1298))))

(declare-fun d!578509 () Bool)

(declare-fun res!843618 () Bool)

(assert (=> d!578509 (=> res!843618 e!1205492)))

(assert (=> d!578509 (= res!843618 ((_ is Nil!21085) l1!1329))))

(assert (=> d!578509 (= (subseq!431 l1!1329 l2!1298) e!1205492)))

(declare-fun b!1888911 () Bool)

(declare-fun e!1205490 () Bool)

(assert (=> b!1888911 (= e!1205490 (subseq!431 (t!175166 l1!1329) (t!175166 l2!1298)))))

(declare-fun b!1888910 () Bool)

(declare-fun e!1205491 () Bool)

(assert (=> b!1888910 (= e!1205489 e!1205491)))

(declare-fun res!843619 () Bool)

(assert (=> b!1888910 (=> res!843619 e!1205491)))

(assert (=> b!1888910 (= res!843619 e!1205490)))

(declare-fun res!843617 () Bool)

(assert (=> b!1888910 (=> (not res!843617) (not e!1205490))))

(assert (=> b!1888910 (= res!843617 (= (h!26486 l1!1329) (h!26486 l2!1298)))))

(declare-fun b!1888912 () Bool)

(assert (=> b!1888912 (= e!1205491 (subseq!431 l1!1329 (t!175166 l2!1298)))))

(assert (= (and d!578509 (not res!843618)) b!1888909))

(assert (= (and b!1888909 res!843620) b!1888910))

(assert (= (and b!1888910 res!843617) b!1888911))

(assert (= (and b!1888910 (not res!843619)) b!1888912))

(declare-fun m!2320059 () Bool)

(assert (=> b!1888911 m!2320059))

(declare-fun m!2320061 () Bool)

(assert (=> b!1888912 m!2320061))

(assert (=> start!189116 d!578509))

(declare-fun b!1888913 () Bool)

(declare-fun e!1205496 () Bool)

(declare-fun e!1205493 () Bool)

(assert (=> b!1888913 (= e!1205496 e!1205493)))

(declare-fun res!843624 () Bool)

(assert (=> b!1888913 (=> (not res!843624) (not e!1205493))))

(assert (=> b!1888913 (= res!843624 ((_ is Cons!21085) (t!175166 l3!256)))))

(declare-fun d!578513 () Bool)

(declare-fun res!843622 () Bool)

(assert (=> d!578513 (=> res!843622 e!1205496)))

(assert (=> d!578513 (= res!843622 ((_ is Nil!21085) l2!1298))))

(assert (=> d!578513 (= (subseq!431 l2!1298 (t!175166 l3!256)) e!1205496)))

(declare-fun b!1888915 () Bool)

(declare-fun e!1205494 () Bool)

(assert (=> b!1888915 (= e!1205494 (subseq!431 (t!175166 l2!1298) (t!175166 (t!175166 l3!256))))))

(declare-fun b!1888914 () Bool)

(declare-fun e!1205495 () Bool)

(assert (=> b!1888914 (= e!1205493 e!1205495)))

(declare-fun res!843623 () Bool)

(assert (=> b!1888914 (=> res!843623 e!1205495)))

(assert (=> b!1888914 (= res!843623 e!1205494)))

(declare-fun res!843621 () Bool)

(assert (=> b!1888914 (=> (not res!843621) (not e!1205494))))

(assert (=> b!1888914 (= res!843621 (= (h!26486 l2!1298) (h!26486 (t!175166 l3!256))))))

(declare-fun b!1888916 () Bool)

(assert (=> b!1888916 (= e!1205495 (subseq!431 l2!1298 (t!175166 (t!175166 l3!256))))))

(assert (= (and d!578513 (not res!843622)) b!1888913))

(assert (= (and b!1888913 res!843624) b!1888914))

(assert (= (and b!1888914 res!843621) b!1888915))

(assert (= (and b!1888914 (not res!843623)) b!1888916))

(declare-fun m!2320063 () Bool)

(assert (=> b!1888915 m!2320063))

(declare-fun m!2320065 () Bool)

(assert (=> b!1888916 m!2320065))

(assert (=> b!1888893 d!578513))

(declare-fun b!1888917 () Bool)

(declare-fun e!1205500 () Bool)

(declare-fun e!1205497 () Bool)

(assert (=> b!1888917 (= e!1205500 e!1205497)))

(declare-fun res!843628 () Bool)

(assert (=> b!1888917 (=> (not res!843628) (not e!1205497))))

(assert (=> b!1888917 (= res!843628 ((_ is Cons!21085) l3!256))))

(declare-fun d!578515 () Bool)

(declare-fun res!843626 () Bool)

(assert (=> d!578515 (=> res!843626 e!1205500)))

(assert (=> d!578515 (= res!843626 ((_ is Nil!21085) l1!1329))))

(assert (=> d!578515 (= (subseq!431 l1!1329 l3!256) e!1205500)))

(declare-fun b!1888919 () Bool)

(declare-fun e!1205498 () Bool)

(assert (=> b!1888919 (= e!1205498 (subseq!431 (t!175166 l1!1329) (t!175166 l3!256)))))

(declare-fun b!1888918 () Bool)

(declare-fun e!1205499 () Bool)

(assert (=> b!1888918 (= e!1205497 e!1205499)))

(declare-fun res!843627 () Bool)

(assert (=> b!1888918 (=> res!843627 e!1205499)))

(assert (=> b!1888918 (= res!843627 e!1205498)))

(declare-fun res!843625 () Bool)

(assert (=> b!1888918 (=> (not res!843625) (not e!1205498))))

(assert (=> b!1888918 (= res!843625 (= (h!26486 l1!1329) (h!26486 l3!256)))))

(declare-fun b!1888920 () Bool)

(assert (=> b!1888920 (= e!1205499 (subseq!431 l1!1329 (t!175166 l3!256)))))

(assert (= (and d!578515 (not res!843626)) b!1888917))

(assert (= (and b!1888917 res!843628) b!1888918))

(assert (= (and b!1888918 res!843625) b!1888919))

(assert (= (and b!1888918 (not res!843627)) b!1888920))

(declare-fun m!2320067 () Bool)

(assert (=> b!1888919 m!2320067))

(assert (=> b!1888920 m!2320049))

(assert (=> b!1888897 d!578515))

(declare-fun b!1888921 () Bool)

(declare-fun e!1205504 () Bool)

(declare-fun e!1205501 () Bool)

(assert (=> b!1888921 (= e!1205504 e!1205501)))

(declare-fun res!843632 () Bool)

(assert (=> b!1888921 (=> (not res!843632) (not e!1205501))))

(assert (=> b!1888921 (= res!843632 ((_ is Cons!21085) (t!175166 l3!256)))))

(declare-fun d!578517 () Bool)

(declare-fun res!843630 () Bool)

(assert (=> d!578517 (=> res!843630 e!1205504)))

(assert (=> d!578517 (= res!843630 ((_ is Nil!21085) l1!1329))))

(assert (=> d!578517 (= (subseq!431 l1!1329 (t!175166 l3!256)) e!1205504)))

(declare-fun b!1888923 () Bool)

(declare-fun e!1205502 () Bool)

(assert (=> b!1888923 (= e!1205502 (subseq!431 (t!175166 l1!1329) (t!175166 (t!175166 l3!256))))))

(declare-fun b!1888922 () Bool)

(declare-fun e!1205503 () Bool)

(assert (=> b!1888922 (= e!1205501 e!1205503)))

(declare-fun res!843631 () Bool)

(assert (=> b!1888922 (=> res!843631 e!1205503)))

(assert (=> b!1888922 (= res!843631 e!1205502)))

(declare-fun res!843629 () Bool)

(assert (=> b!1888922 (=> (not res!843629) (not e!1205502))))

(assert (=> b!1888922 (= res!843629 (= (h!26486 l1!1329) (h!26486 (t!175166 l3!256))))))

(declare-fun b!1888924 () Bool)

(assert (=> b!1888924 (= e!1205503 (subseq!431 l1!1329 (t!175166 (t!175166 l3!256))))))

(assert (= (and d!578517 (not res!843630)) b!1888921))

(assert (= (and b!1888921 res!843632) b!1888922))

(assert (= (and b!1888922 res!843629) b!1888923))

(assert (= (and b!1888922 (not res!843631)) b!1888924))

(declare-fun m!2320069 () Bool)

(assert (=> b!1888923 m!2320069))

(declare-fun m!2320071 () Bool)

(assert (=> b!1888924 m!2320071))

(assert (=> b!1888897 d!578517))

(declare-fun d!578519 () Bool)

(assert (=> d!578519 (subseq!431 l1!1329 (t!175166 l3!256))))

(declare-fun lt!723849 () Unit!35502)

(declare-fun choose!11820 (List!21167 List!21167 List!21167) Unit!35502)

(assert (=> d!578519 (= lt!723849 (choose!11820 l1!1329 l2!1298 (t!175166 l3!256)))))

(assert (=> d!578519 (subseq!431 l1!1329 l2!1298)))

(assert (=> d!578519 (= (lemmaSubSeqTransitive!14 l1!1329 l2!1298 (t!175166 l3!256)) lt!723849)))

(declare-fun bs!413021 () Bool)

(assert (= bs!413021 d!578519))

(assert (=> bs!413021 m!2320049))

(declare-fun m!2320075 () Bool)

(assert (=> bs!413021 m!2320075))

(assert (=> bs!413021 m!2320055))

(assert (=> b!1888897 d!578519))

(declare-fun b!1888941 () Bool)

(declare-fun e!1205524 () Bool)

(declare-fun e!1205521 () Bool)

(assert (=> b!1888941 (= e!1205524 e!1205521)))

(declare-fun res!843652 () Bool)

(assert (=> b!1888941 (=> (not res!843652) (not e!1205521))))

(assert (=> b!1888941 (= res!843652 ((_ is Cons!21085) (t!175166 l3!256)))))

(declare-fun d!578523 () Bool)

(declare-fun res!843650 () Bool)

(assert (=> d!578523 (=> res!843650 e!1205524)))

(assert (=> d!578523 (= res!843650 ((_ is Nil!21085) (t!175166 l2!1298)))))

(assert (=> d!578523 (= (subseq!431 (t!175166 l2!1298) (t!175166 l3!256)) e!1205524)))

(declare-fun b!1888943 () Bool)

(declare-fun e!1205522 () Bool)

(assert (=> b!1888943 (= e!1205522 (subseq!431 (t!175166 (t!175166 l2!1298)) (t!175166 (t!175166 l3!256))))))

(declare-fun b!1888942 () Bool)

(declare-fun e!1205523 () Bool)

(assert (=> b!1888942 (= e!1205521 e!1205523)))

(declare-fun res!843651 () Bool)

(assert (=> b!1888942 (=> res!843651 e!1205523)))

(assert (=> b!1888942 (= res!843651 e!1205522)))

(declare-fun res!843649 () Bool)

(assert (=> b!1888942 (=> (not res!843649) (not e!1205522))))

(assert (=> b!1888942 (= res!843649 (= (h!26486 (t!175166 l2!1298)) (h!26486 (t!175166 l3!256))))))

(declare-fun b!1888944 () Bool)

(assert (=> b!1888944 (= e!1205523 (subseq!431 (t!175166 l2!1298) (t!175166 (t!175166 l3!256))))))

(assert (= (and d!578523 (not res!843650)) b!1888941))

(assert (= (and b!1888941 res!843652) b!1888942))

(assert (= (and b!1888942 res!843649) b!1888943))

(assert (= (and b!1888942 (not res!843651)) b!1888944))

(declare-fun m!2320081 () Bool)

(assert (=> b!1888943 m!2320081))

(assert (=> b!1888944 m!2320063))

(assert (=> b!1888896 d!578523))

(declare-fun b!1888945 () Bool)

(declare-fun e!1205528 () Bool)

(declare-fun e!1205525 () Bool)

(assert (=> b!1888945 (= e!1205528 e!1205525)))

(declare-fun res!843656 () Bool)

(assert (=> b!1888945 (=> (not res!843656) (not e!1205525))))

(assert (=> b!1888945 (= res!843656 ((_ is Cons!21085) l3!256))))

(declare-fun d!578527 () Bool)

(declare-fun res!843654 () Bool)

(assert (=> d!578527 (=> res!843654 e!1205528)))

(assert (=> d!578527 (= res!843654 ((_ is Nil!21085) l2!1298))))

(assert (=> d!578527 (= (subseq!431 l2!1298 l3!256) e!1205528)))

(declare-fun b!1888947 () Bool)

(declare-fun e!1205526 () Bool)

(assert (=> b!1888947 (= e!1205526 (subseq!431 (t!175166 l2!1298) (t!175166 l3!256)))))

(declare-fun b!1888946 () Bool)

(declare-fun e!1205527 () Bool)

(assert (=> b!1888946 (= e!1205525 e!1205527)))

(declare-fun res!843655 () Bool)

(assert (=> b!1888946 (=> res!843655 e!1205527)))

(assert (=> b!1888946 (= res!843655 e!1205526)))

(declare-fun res!843653 () Bool)

(assert (=> b!1888946 (=> (not res!843653) (not e!1205526))))

(assert (=> b!1888946 (= res!843653 (= (h!26486 l2!1298) (h!26486 l3!256)))))

(declare-fun b!1888948 () Bool)

(assert (=> b!1888948 (= e!1205527 (subseq!431 l2!1298 (t!175166 l3!256)))))

(assert (= (and d!578527 (not res!843654)) b!1888945))

(assert (= (and b!1888945 res!843656) b!1888946))

(assert (= (and b!1888946 res!843653) b!1888947))

(assert (= (and b!1888946 (not res!843655)) b!1888948))

(assert (=> b!1888947 m!2320053))

(assert (=> b!1888948 m!2320057))

(assert (=> b!1888895 d!578527))

(declare-fun b!1888953 () Bool)

(declare-fun e!1205531 () Bool)

(declare-fun tp!538487 () Bool)

(assert (=> b!1888953 (= e!1205531 (and tp_is_empty!9033 tp!538487))))

(assert (=> b!1888892 (= tp!538482 e!1205531)))

(assert (= (and b!1888892 ((_ is Cons!21085) (t!175166 l1!1329))) b!1888953))

(declare-fun b!1888954 () Bool)

(declare-fun e!1205532 () Bool)

(declare-fun tp!538488 () Bool)

(assert (=> b!1888954 (= e!1205532 (and tp_is_empty!9033 tp!538488))))

(assert (=> b!1888898 (= tp!538483 e!1205532)))

(assert (= (and b!1888898 ((_ is Cons!21085) (t!175166 l3!256))) b!1888954))

(declare-fun b!1888955 () Bool)

(declare-fun e!1205533 () Bool)

(declare-fun tp!538489 () Bool)

(assert (=> b!1888955 (= e!1205533 (and tp_is_empty!9033 tp!538489))))

(assert (=> b!1888900 (= tp!538484 e!1205533)))

(assert (= (and b!1888900 ((_ is Cons!21085) (t!175166 l2!1298))) b!1888955))

(check-sat tp_is_empty!9033 (not b!1888953) (not b!1888923) (not b!1888919) (not b!1888920) (not b!1888943) (not b!1888954) (not b!1888948) (not b!1888916) (not b!1888912) (not b!1888955) (not b!1888915) (not b!1888947) (not d!578519) (not b!1888924) (not b!1888911) (not b!1888944))
(check-sat)
