; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13934 () Bool)

(assert start!13934)

(declare-fun b!133817 () Bool)

(declare-fun res!62545 () Bool)

(declare-fun e!77503 () Bool)

(assert (=> b!133817 (=> (not res!62545) (not e!77503))))

(declare-datatypes ((B!805 0))(
  ( (B!806 (val!888 Int)) )
))
(declare-datatypes ((List!2206 0))(
  ( (Nil!2200) (Cons!2200 (h!7597 B!805) (t!22792 List!2206)) )
))
(declare-fun l!3288 () List!2206)

(get-info :version)

(assert (=> b!133817 (= res!62545 ((_ is Cons!2200) l!3288))))

(declare-fun lt!40378 () List!2206)

(declare-fun tot!41 () List!2206)

(declare-fun b!133818 () Bool)

(declare-fun isPrefix!193 (List!2206 List!2206) Bool)

(declare-fun ++!474 (List!2206 List!2206) List!2206)

(declare-fun tail!284 (List!2206) List!2206)

(assert (=> b!133818 (= e!77503 (not (isPrefix!193 (++!474 (t!22792 l!3288) lt!40378) (tail!284 tot!41))))))

(declare-fun b!133820 () Bool)

(declare-fun e!77504 () Bool)

(declare-fun tp_is_empty!1449 () Bool)

(declare-fun tp!70615 () Bool)

(assert (=> b!133820 (= e!77504 (and tp_is_empty!1449 tp!70615))))

(declare-fun b!133819 () Bool)

(declare-fun e!77505 () Bool)

(declare-fun tp!70616 () Bool)

(assert (=> b!133819 (= e!77505 (and tp_is_empty!1449 tp!70616))))

(declare-fun res!62546 () Bool)

(assert (=> start!13934 (=> (not res!62546) (not e!77503))))

(assert (=> start!13934 (= res!62546 (isPrefix!193 (++!474 l!3288 lt!40378) tot!41))))

(declare-fun elmt!148 () B!805)

(assert (=> start!13934 (= lt!40378 (Cons!2200 elmt!148 Nil!2200))))

(assert (=> start!13934 e!77503))

(assert (=> start!13934 tp_is_empty!1449))

(assert (=> start!13934 e!77505))

(assert (=> start!13934 e!77504))

(assert (= (and start!13934 res!62546) b!133817))

(assert (= (and b!133817 res!62545) b!133818))

(assert (= (and start!13934 ((_ is Cons!2200) l!3288)) b!133819))

(assert (= (and start!13934 ((_ is Cons!2200) tot!41)) b!133820))

(declare-fun m!118787 () Bool)

(assert (=> b!133818 m!118787))

(declare-fun m!118789 () Bool)

(assert (=> b!133818 m!118789))

(assert (=> b!133818 m!118787))

(assert (=> b!133818 m!118789))

(declare-fun m!118791 () Bool)

(assert (=> b!133818 m!118791))

(declare-fun m!118793 () Bool)

(assert (=> start!13934 m!118793))

(assert (=> start!13934 m!118793))

(declare-fun m!118795 () Bool)

(assert (=> start!13934 m!118795))

(check-sat (not start!13934) tp_is_empty!1449 (not b!133819) (not b!133818) (not b!133820))
(check-sat)
(get-model)

(declare-fun d!32003 () Bool)

(declare-fun e!77521 () Bool)

(assert (=> d!32003 e!77521))

(declare-fun res!62570 () Bool)

(assert (=> d!32003 (=> res!62570 e!77521)))

(declare-fun lt!40384 () Bool)

(assert (=> d!32003 (= res!62570 (not lt!40384))))

(declare-fun e!77522 () Bool)

(assert (=> d!32003 (= lt!40384 e!77522)))

(declare-fun res!62567 () Bool)

(assert (=> d!32003 (=> res!62567 e!77522)))

(assert (=> d!32003 (= res!62567 ((_ is Nil!2200) (++!474 l!3288 lt!40378)))))

(assert (=> d!32003 (= (isPrefix!193 (++!474 l!3288 lt!40378) tot!41) lt!40384)))

(declare-fun b!133842 () Bool)

(declare-fun res!62569 () Bool)

(declare-fun e!77523 () Bool)

(assert (=> b!133842 (=> (not res!62569) (not e!77523))))

(declare-fun head!536 (List!2206) B!805)

(assert (=> b!133842 (= res!62569 (= (head!536 (++!474 l!3288 lt!40378)) (head!536 tot!41)))))

(declare-fun b!133841 () Bool)

(assert (=> b!133841 (= e!77522 e!77523)))

(declare-fun res!62568 () Bool)

(assert (=> b!133841 (=> (not res!62568) (not e!77523))))

(assert (=> b!133841 (= res!62568 (not ((_ is Nil!2200) tot!41)))))

(declare-fun b!133844 () Bool)

(declare-fun size!1997 (List!2206) Int)

(assert (=> b!133844 (= e!77521 (>= (size!1997 tot!41) (size!1997 (++!474 l!3288 lt!40378))))))

(declare-fun b!133843 () Bool)

(assert (=> b!133843 (= e!77523 (isPrefix!193 (tail!284 (++!474 l!3288 lt!40378)) (tail!284 tot!41)))))

(assert (= (and d!32003 (not res!62567)) b!133841))

(assert (= (and b!133841 res!62568) b!133842))

(assert (= (and b!133842 res!62569) b!133843))

(assert (= (and d!32003 (not res!62570)) b!133844))

(assert (=> b!133842 m!118793))

(declare-fun m!118809 () Bool)

(assert (=> b!133842 m!118809))

(declare-fun m!118811 () Bool)

(assert (=> b!133842 m!118811))

(declare-fun m!118813 () Bool)

(assert (=> b!133844 m!118813))

(assert (=> b!133844 m!118793))

(declare-fun m!118815 () Bool)

(assert (=> b!133844 m!118815))

(assert (=> b!133843 m!118793))

(declare-fun m!118817 () Bool)

(assert (=> b!133843 m!118817))

(assert (=> b!133843 m!118789))

(assert (=> b!133843 m!118817))

(assert (=> b!133843 m!118789))

(declare-fun m!118819 () Bool)

(assert (=> b!133843 m!118819))

(assert (=> start!13934 d!32003))

(declare-fun d!32007 () Bool)

(declare-fun e!77539 () Bool)

(assert (=> d!32007 e!77539))

(declare-fun res!62588 () Bool)

(assert (=> d!32007 (=> (not res!62588) (not e!77539))))

(declare-fun lt!40392 () List!2206)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!308 (List!2206) (InoxSet B!805))

(assert (=> d!32007 (= res!62588 (= (content!308 lt!40392) ((_ map or) (content!308 l!3288) (content!308 lt!40378))))))

(declare-fun e!77540 () List!2206)

(assert (=> d!32007 (= lt!40392 e!77540)))

(declare-fun c!28665 () Bool)

(assert (=> d!32007 (= c!28665 ((_ is Nil!2200) l!3288))))

(assert (=> d!32007 (= (++!474 l!3288 lt!40378) lt!40392)))

(declare-fun b!133875 () Bool)

(declare-fun res!62587 () Bool)

(assert (=> b!133875 (=> (not res!62587) (not e!77539))))

(assert (=> b!133875 (= res!62587 (= (size!1997 lt!40392) (+ (size!1997 l!3288) (size!1997 lt!40378))))))

(declare-fun b!133876 () Bool)

(assert (=> b!133876 (= e!77539 (or (not (= lt!40378 Nil!2200)) (= lt!40392 l!3288)))))

(declare-fun b!133874 () Bool)

(assert (=> b!133874 (= e!77540 (Cons!2200 (h!7597 l!3288) (++!474 (t!22792 l!3288) lt!40378)))))

(declare-fun b!133873 () Bool)

(assert (=> b!133873 (= e!77540 lt!40378)))

(assert (= (and d!32007 c!28665) b!133873))

(assert (= (and d!32007 (not c!28665)) b!133874))

(assert (= (and d!32007 res!62588) b!133875))

(assert (= (and b!133875 res!62587) b!133876))

(declare-fun m!118857 () Bool)

(assert (=> d!32007 m!118857))

(declare-fun m!118859 () Bool)

(assert (=> d!32007 m!118859))

(declare-fun m!118861 () Bool)

(assert (=> d!32007 m!118861))

(declare-fun m!118863 () Bool)

(assert (=> b!133875 m!118863))

(declare-fun m!118865 () Bool)

(assert (=> b!133875 m!118865))

(declare-fun m!118867 () Bool)

(assert (=> b!133875 m!118867))

(assert (=> b!133874 m!118787))

(assert (=> start!13934 d!32007))

(declare-fun d!32015 () Bool)

(declare-fun e!77541 () Bool)

(assert (=> d!32015 e!77541))

(declare-fun res!62592 () Bool)

(assert (=> d!32015 (=> res!62592 e!77541)))

(declare-fun lt!40393 () Bool)

(assert (=> d!32015 (= res!62592 (not lt!40393))))

(declare-fun e!77542 () Bool)

(assert (=> d!32015 (= lt!40393 e!77542)))

(declare-fun res!62589 () Bool)

(assert (=> d!32015 (=> res!62589 e!77542)))

(assert (=> d!32015 (= res!62589 ((_ is Nil!2200) (++!474 (t!22792 l!3288) lt!40378)))))

(assert (=> d!32015 (= (isPrefix!193 (++!474 (t!22792 l!3288) lt!40378) (tail!284 tot!41)) lt!40393)))

(declare-fun b!133878 () Bool)

(declare-fun res!62591 () Bool)

(declare-fun e!77543 () Bool)

(assert (=> b!133878 (=> (not res!62591) (not e!77543))))

(assert (=> b!133878 (= res!62591 (= (head!536 (++!474 (t!22792 l!3288) lt!40378)) (head!536 (tail!284 tot!41))))))

(declare-fun b!133877 () Bool)

(assert (=> b!133877 (= e!77542 e!77543)))

(declare-fun res!62590 () Bool)

(assert (=> b!133877 (=> (not res!62590) (not e!77543))))

(assert (=> b!133877 (= res!62590 (not ((_ is Nil!2200) (tail!284 tot!41))))))

(declare-fun b!133880 () Bool)

(assert (=> b!133880 (= e!77541 (>= (size!1997 (tail!284 tot!41)) (size!1997 (++!474 (t!22792 l!3288) lt!40378))))))

(declare-fun b!133879 () Bool)

(assert (=> b!133879 (= e!77543 (isPrefix!193 (tail!284 (++!474 (t!22792 l!3288) lt!40378)) (tail!284 (tail!284 tot!41))))))

(assert (= (and d!32015 (not res!62589)) b!133877))

(assert (= (and b!133877 res!62590) b!133878))

(assert (= (and b!133878 res!62591) b!133879))

(assert (= (and d!32015 (not res!62592)) b!133880))

(assert (=> b!133878 m!118787))

(declare-fun m!118869 () Bool)

(assert (=> b!133878 m!118869))

(assert (=> b!133878 m!118789))

(declare-fun m!118871 () Bool)

(assert (=> b!133878 m!118871))

(assert (=> b!133880 m!118789))

(declare-fun m!118873 () Bool)

(assert (=> b!133880 m!118873))

(assert (=> b!133880 m!118787))

(declare-fun m!118875 () Bool)

(assert (=> b!133880 m!118875))

(assert (=> b!133879 m!118787))

(declare-fun m!118877 () Bool)

(assert (=> b!133879 m!118877))

(assert (=> b!133879 m!118789))

(declare-fun m!118879 () Bool)

(assert (=> b!133879 m!118879))

(assert (=> b!133879 m!118877))

(assert (=> b!133879 m!118879))

(declare-fun m!118881 () Bool)

(assert (=> b!133879 m!118881))

(assert (=> b!133818 d!32015))

(declare-fun d!32017 () Bool)

(declare-fun e!77547 () Bool)

(assert (=> d!32017 e!77547))

(declare-fun res!62594 () Bool)

(assert (=> d!32017 (=> (not res!62594) (not e!77547))))

(declare-fun lt!40394 () List!2206)

(assert (=> d!32017 (= res!62594 (= (content!308 lt!40394) ((_ map or) (content!308 (t!22792 l!3288)) (content!308 lt!40378))))))

(declare-fun e!77549 () List!2206)

(assert (=> d!32017 (= lt!40394 e!77549)))

(declare-fun c!28666 () Bool)

(assert (=> d!32017 (= c!28666 ((_ is Nil!2200) (t!22792 l!3288)))))

(assert (=> d!32017 (= (++!474 (t!22792 l!3288) lt!40378) lt!40394)))

(declare-fun b!133889 () Bool)

(declare-fun res!62593 () Bool)

(assert (=> b!133889 (=> (not res!62593) (not e!77547))))

(assert (=> b!133889 (= res!62593 (= (size!1997 lt!40394) (+ (size!1997 (t!22792 l!3288)) (size!1997 lt!40378))))))

(declare-fun b!133890 () Bool)

(assert (=> b!133890 (= e!77547 (or (not (= lt!40378 Nil!2200)) (= lt!40394 (t!22792 l!3288))))))

(declare-fun b!133888 () Bool)

(assert (=> b!133888 (= e!77549 (Cons!2200 (h!7597 (t!22792 l!3288)) (++!474 (t!22792 (t!22792 l!3288)) lt!40378)))))

(declare-fun b!133887 () Bool)

(assert (=> b!133887 (= e!77549 lt!40378)))

(assert (= (and d!32017 c!28666) b!133887))

(assert (= (and d!32017 (not c!28666)) b!133888))

(assert (= (and d!32017 res!62594) b!133889))

(assert (= (and b!133889 res!62593) b!133890))

(declare-fun m!118883 () Bool)

(assert (=> d!32017 m!118883))

(declare-fun m!118885 () Bool)

(assert (=> d!32017 m!118885))

(assert (=> d!32017 m!118861))

(declare-fun m!118887 () Bool)

(assert (=> b!133889 m!118887))

(declare-fun m!118889 () Bool)

(assert (=> b!133889 m!118889))

(assert (=> b!133889 m!118867))

(declare-fun m!118891 () Bool)

(assert (=> b!133888 m!118891))

(assert (=> b!133818 d!32017))

(declare-fun d!32019 () Bool)

(assert (=> d!32019 (= (tail!284 tot!41) (t!22792 tot!41))))

(assert (=> b!133818 d!32019))

(declare-fun b!133895 () Bool)

(declare-fun e!77552 () Bool)

(declare-fun tp!70623 () Bool)

(assert (=> b!133895 (= e!77552 (and tp_is_empty!1449 tp!70623))))

(assert (=> b!133819 (= tp!70616 e!77552)))

(assert (= (and b!133819 ((_ is Cons!2200) (t!22792 l!3288))) b!133895))

(declare-fun b!133896 () Bool)

(declare-fun e!77553 () Bool)

(declare-fun tp!70624 () Bool)

(assert (=> b!133896 (= e!77553 (and tp_is_empty!1449 tp!70624))))

(assert (=> b!133820 (= tp!70615 e!77553)))

(assert (= (and b!133820 ((_ is Cons!2200) (t!22792 tot!41))) b!133896))

(check-sat (not b!133842) (not b!133888) (not b!133879) (not b!133895) (not b!133843) (not b!133875) tp_is_empty!1449 (not b!133889) (not b!133880) (not b!133878) (not b!133874) (not d!32007) (not b!133844) (not d!32017) (not b!133896))
(check-sat)
(get-model)

(declare-fun d!32021 () Bool)

(assert (=> d!32021 (= (head!536 (++!474 l!3288 lt!40378)) (h!7597 (++!474 l!3288 lt!40378)))))

(assert (=> b!133842 d!32021))

(declare-fun d!32023 () Bool)

(assert (=> d!32023 (= (head!536 tot!41) (h!7597 tot!41))))

(assert (=> b!133842 d!32023))

(declare-fun d!32025 () Bool)

(declare-fun lt!40397 () Int)

(assert (=> d!32025 (>= lt!40397 0)))

(declare-fun e!77556 () Int)

(assert (=> d!32025 (= lt!40397 e!77556)))

(declare-fun c!28669 () Bool)

(assert (=> d!32025 (= c!28669 ((_ is Nil!2200) (tail!284 tot!41)))))

(assert (=> d!32025 (= (size!1997 (tail!284 tot!41)) lt!40397)))

(declare-fun b!133901 () Bool)

(assert (=> b!133901 (= e!77556 0)))

(declare-fun b!133902 () Bool)

(assert (=> b!133902 (= e!77556 (+ 1 (size!1997 (t!22792 (tail!284 tot!41)))))))

(assert (= (and d!32025 c!28669) b!133901))

(assert (= (and d!32025 (not c!28669)) b!133902))

(declare-fun m!118893 () Bool)

(assert (=> b!133902 m!118893))

(assert (=> b!133880 d!32025))

(declare-fun d!32027 () Bool)

(declare-fun lt!40398 () Int)

(assert (=> d!32027 (>= lt!40398 0)))

(declare-fun e!77557 () Int)

(assert (=> d!32027 (= lt!40398 e!77557)))

(declare-fun c!28670 () Bool)

(assert (=> d!32027 (= c!28670 ((_ is Nil!2200) (++!474 (t!22792 l!3288) lt!40378)))))

(assert (=> d!32027 (= (size!1997 (++!474 (t!22792 l!3288) lt!40378)) lt!40398)))

(declare-fun b!133903 () Bool)

(assert (=> b!133903 (= e!77557 0)))

(declare-fun b!133904 () Bool)

(assert (=> b!133904 (= e!77557 (+ 1 (size!1997 (t!22792 (++!474 (t!22792 l!3288) lt!40378)))))))

(assert (= (and d!32027 c!28670) b!133903))

(assert (= (and d!32027 (not c!28670)) b!133904))

(declare-fun m!118895 () Bool)

(assert (=> b!133904 m!118895))

(assert (=> b!133880 d!32027))

(assert (=> b!133874 d!32017))

(declare-fun d!32029 () Bool)

(declare-fun lt!40399 () Int)

(assert (=> d!32029 (>= lt!40399 0)))

(declare-fun e!77558 () Int)

(assert (=> d!32029 (= lt!40399 e!77558)))

(declare-fun c!28671 () Bool)

(assert (=> d!32029 (= c!28671 ((_ is Nil!2200) lt!40392))))

(assert (=> d!32029 (= (size!1997 lt!40392) lt!40399)))

(declare-fun b!133905 () Bool)

(assert (=> b!133905 (= e!77558 0)))

(declare-fun b!133906 () Bool)

(assert (=> b!133906 (= e!77558 (+ 1 (size!1997 (t!22792 lt!40392))))))

(assert (= (and d!32029 c!28671) b!133905))

(assert (= (and d!32029 (not c!28671)) b!133906))

(declare-fun m!118897 () Bool)

(assert (=> b!133906 m!118897))

(assert (=> b!133875 d!32029))

(declare-fun d!32031 () Bool)

(declare-fun lt!40400 () Int)

(assert (=> d!32031 (>= lt!40400 0)))

(declare-fun e!77559 () Int)

(assert (=> d!32031 (= lt!40400 e!77559)))

(declare-fun c!28672 () Bool)

(assert (=> d!32031 (= c!28672 ((_ is Nil!2200) l!3288))))

(assert (=> d!32031 (= (size!1997 l!3288) lt!40400)))

(declare-fun b!133907 () Bool)

(assert (=> b!133907 (= e!77559 0)))

(declare-fun b!133908 () Bool)

(assert (=> b!133908 (= e!77559 (+ 1 (size!1997 (t!22792 l!3288))))))

(assert (= (and d!32031 c!28672) b!133907))

(assert (= (and d!32031 (not c!28672)) b!133908))

(assert (=> b!133908 m!118889))

(assert (=> b!133875 d!32031))

(declare-fun d!32033 () Bool)

(declare-fun lt!40401 () Int)

(assert (=> d!32033 (>= lt!40401 0)))

(declare-fun e!77560 () Int)

(assert (=> d!32033 (= lt!40401 e!77560)))

(declare-fun c!28673 () Bool)

(assert (=> d!32033 (= c!28673 ((_ is Nil!2200) lt!40378))))

(assert (=> d!32033 (= (size!1997 lt!40378) lt!40401)))

(declare-fun b!133909 () Bool)

(assert (=> b!133909 (= e!77560 0)))

(declare-fun b!133910 () Bool)

(assert (=> b!133910 (= e!77560 (+ 1 (size!1997 (t!22792 lt!40378))))))

(assert (= (and d!32033 c!28673) b!133909))

(assert (= (and d!32033 (not c!28673)) b!133910))

(declare-fun m!118899 () Bool)

(assert (=> b!133910 m!118899))

(assert (=> b!133875 d!32033))

(declare-fun d!32035 () Bool)

(declare-fun lt!40402 () Int)

(assert (=> d!32035 (>= lt!40402 0)))

(declare-fun e!77561 () Int)

(assert (=> d!32035 (= lt!40402 e!77561)))

(declare-fun c!28674 () Bool)

(assert (=> d!32035 (= c!28674 ((_ is Nil!2200) lt!40394))))

(assert (=> d!32035 (= (size!1997 lt!40394) lt!40402)))

(declare-fun b!133911 () Bool)

(assert (=> b!133911 (= e!77561 0)))

(declare-fun b!133912 () Bool)

(assert (=> b!133912 (= e!77561 (+ 1 (size!1997 (t!22792 lt!40394))))))

(assert (= (and d!32035 c!28674) b!133911))

(assert (= (and d!32035 (not c!28674)) b!133912))

(declare-fun m!118901 () Bool)

(assert (=> b!133912 m!118901))

(assert (=> b!133889 d!32035))

(declare-fun d!32037 () Bool)

(declare-fun lt!40403 () Int)

(assert (=> d!32037 (>= lt!40403 0)))

(declare-fun e!77562 () Int)

(assert (=> d!32037 (= lt!40403 e!77562)))

(declare-fun c!28675 () Bool)

(assert (=> d!32037 (= c!28675 ((_ is Nil!2200) (t!22792 l!3288)))))

(assert (=> d!32037 (= (size!1997 (t!22792 l!3288)) lt!40403)))

(declare-fun b!133913 () Bool)

(assert (=> b!133913 (= e!77562 0)))

(declare-fun b!133914 () Bool)

(assert (=> b!133914 (= e!77562 (+ 1 (size!1997 (t!22792 (t!22792 l!3288)))))))

(assert (= (and d!32037 c!28675) b!133913))

(assert (= (and d!32037 (not c!28675)) b!133914))

(declare-fun m!118903 () Bool)

(assert (=> b!133914 m!118903))

(assert (=> b!133889 d!32037))

(assert (=> b!133889 d!32033))

(declare-fun d!32039 () Bool)

(declare-fun e!77563 () Bool)

(assert (=> d!32039 e!77563))

(declare-fun res!62596 () Bool)

(assert (=> d!32039 (=> (not res!62596) (not e!77563))))

(declare-fun lt!40404 () List!2206)

(assert (=> d!32039 (= res!62596 (= (content!308 lt!40404) ((_ map or) (content!308 (t!22792 (t!22792 l!3288))) (content!308 lt!40378))))))

(declare-fun e!77564 () List!2206)

(assert (=> d!32039 (= lt!40404 e!77564)))

(declare-fun c!28676 () Bool)

(assert (=> d!32039 (= c!28676 ((_ is Nil!2200) (t!22792 (t!22792 l!3288))))))

(assert (=> d!32039 (= (++!474 (t!22792 (t!22792 l!3288)) lt!40378) lt!40404)))

(declare-fun b!133917 () Bool)

(declare-fun res!62595 () Bool)

(assert (=> b!133917 (=> (not res!62595) (not e!77563))))

(assert (=> b!133917 (= res!62595 (= (size!1997 lt!40404) (+ (size!1997 (t!22792 (t!22792 l!3288))) (size!1997 lt!40378))))))

(declare-fun b!133918 () Bool)

(assert (=> b!133918 (= e!77563 (or (not (= lt!40378 Nil!2200)) (= lt!40404 (t!22792 (t!22792 l!3288)))))))

(declare-fun b!133916 () Bool)

(assert (=> b!133916 (= e!77564 (Cons!2200 (h!7597 (t!22792 (t!22792 l!3288))) (++!474 (t!22792 (t!22792 (t!22792 l!3288))) lt!40378)))))

(declare-fun b!133915 () Bool)

(assert (=> b!133915 (= e!77564 lt!40378)))

(assert (= (and d!32039 c!28676) b!133915))

(assert (= (and d!32039 (not c!28676)) b!133916))

(assert (= (and d!32039 res!62596) b!133917))

(assert (= (and b!133917 res!62595) b!133918))

(declare-fun m!118905 () Bool)

(assert (=> d!32039 m!118905))

(declare-fun m!118907 () Bool)

(assert (=> d!32039 m!118907))

(assert (=> d!32039 m!118861))

(declare-fun m!118909 () Bool)

(assert (=> b!133917 m!118909))

(assert (=> b!133917 m!118903))

(assert (=> b!133917 m!118867))

(declare-fun m!118911 () Bool)

(assert (=> b!133916 m!118911))

(assert (=> b!133888 d!32039))

(declare-fun d!32041 () Bool)

(declare-fun c!28679 () Bool)

(assert (=> d!32041 (= c!28679 ((_ is Nil!2200) lt!40394))))

(declare-fun e!77567 () (InoxSet B!805))

(assert (=> d!32041 (= (content!308 lt!40394) e!77567)))

(declare-fun b!133923 () Bool)

(assert (=> b!133923 (= e!77567 ((as const (Array B!805 Bool)) false))))

(declare-fun b!133924 () Bool)

(assert (=> b!133924 (= e!77567 ((_ map or) (store ((as const (Array B!805 Bool)) false) (h!7597 lt!40394) true) (content!308 (t!22792 lt!40394))))))

(assert (= (and d!32041 c!28679) b!133923))

(assert (= (and d!32041 (not c!28679)) b!133924))

(declare-fun m!118913 () Bool)

(assert (=> b!133924 m!118913))

(declare-fun m!118915 () Bool)

(assert (=> b!133924 m!118915))

(assert (=> d!32017 d!32041))

(declare-fun d!32043 () Bool)

(declare-fun c!28680 () Bool)

(assert (=> d!32043 (= c!28680 ((_ is Nil!2200) (t!22792 l!3288)))))

(declare-fun e!77568 () (InoxSet B!805))

(assert (=> d!32043 (= (content!308 (t!22792 l!3288)) e!77568)))

(declare-fun b!133925 () Bool)

(assert (=> b!133925 (= e!77568 ((as const (Array B!805 Bool)) false))))

(declare-fun b!133926 () Bool)

(assert (=> b!133926 (= e!77568 ((_ map or) (store ((as const (Array B!805 Bool)) false) (h!7597 (t!22792 l!3288)) true) (content!308 (t!22792 (t!22792 l!3288)))))))

(assert (= (and d!32043 c!28680) b!133925))

(assert (= (and d!32043 (not c!28680)) b!133926))

(declare-fun m!118917 () Bool)

(assert (=> b!133926 m!118917))

(assert (=> b!133926 m!118907))

(assert (=> d!32017 d!32043))

(declare-fun d!32045 () Bool)

(declare-fun c!28681 () Bool)

(assert (=> d!32045 (= c!28681 ((_ is Nil!2200) lt!40378))))

(declare-fun e!77569 () (InoxSet B!805))

(assert (=> d!32045 (= (content!308 lt!40378) e!77569)))

(declare-fun b!133927 () Bool)

(assert (=> b!133927 (= e!77569 ((as const (Array B!805 Bool)) false))))

(declare-fun b!133928 () Bool)

(assert (=> b!133928 (= e!77569 ((_ map or) (store ((as const (Array B!805 Bool)) false) (h!7597 lt!40378) true) (content!308 (t!22792 lt!40378))))))

(assert (= (and d!32045 c!28681) b!133927))

(assert (= (and d!32045 (not c!28681)) b!133928))

(declare-fun m!118919 () Bool)

(assert (=> b!133928 m!118919))

(declare-fun m!118921 () Bool)

(assert (=> b!133928 m!118921))

(assert (=> d!32017 d!32045))

(declare-fun d!32047 () Bool)

(declare-fun e!77570 () Bool)

(assert (=> d!32047 e!77570))

(declare-fun res!62600 () Bool)

(assert (=> d!32047 (=> res!62600 e!77570)))

(declare-fun lt!40405 () Bool)

(assert (=> d!32047 (= res!62600 (not lt!40405))))

(declare-fun e!77571 () Bool)

(assert (=> d!32047 (= lt!40405 e!77571)))

(declare-fun res!62597 () Bool)

(assert (=> d!32047 (=> res!62597 e!77571)))

(assert (=> d!32047 (= res!62597 ((_ is Nil!2200) (tail!284 (++!474 (t!22792 l!3288) lt!40378))))))

(assert (=> d!32047 (= (isPrefix!193 (tail!284 (++!474 (t!22792 l!3288) lt!40378)) (tail!284 (tail!284 tot!41))) lt!40405)))

(declare-fun b!133930 () Bool)

(declare-fun res!62599 () Bool)

(declare-fun e!77572 () Bool)

(assert (=> b!133930 (=> (not res!62599) (not e!77572))))

(assert (=> b!133930 (= res!62599 (= (head!536 (tail!284 (++!474 (t!22792 l!3288) lt!40378))) (head!536 (tail!284 (tail!284 tot!41)))))))

(declare-fun b!133929 () Bool)

(assert (=> b!133929 (= e!77571 e!77572)))

(declare-fun res!62598 () Bool)

(assert (=> b!133929 (=> (not res!62598) (not e!77572))))

(assert (=> b!133929 (= res!62598 (not ((_ is Nil!2200) (tail!284 (tail!284 tot!41)))))))

(declare-fun b!133932 () Bool)

(assert (=> b!133932 (= e!77570 (>= (size!1997 (tail!284 (tail!284 tot!41))) (size!1997 (tail!284 (++!474 (t!22792 l!3288) lt!40378)))))))

(declare-fun b!133931 () Bool)

(assert (=> b!133931 (= e!77572 (isPrefix!193 (tail!284 (tail!284 (++!474 (t!22792 l!3288) lt!40378))) (tail!284 (tail!284 (tail!284 tot!41)))))))

(assert (= (and d!32047 (not res!62597)) b!133929))

(assert (= (and b!133929 res!62598) b!133930))

(assert (= (and b!133930 res!62599) b!133931))

(assert (= (and d!32047 (not res!62600)) b!133932))

(assert (=> b!133930 m!118877))

(declare-fun m!118923 () Bool)

(assert (=> b!133930 m!118923))

(assert (=> b!133930 m!118879))

(declare-fun m!118925 () Bool)

(assert (=> b!133930 m!118925))

(assert (=> b!133932 m!118879))

(declare-fun m!118927 () Bool)

(assert (=> b!133932 m!118927))

(assert (=> b!133932 m!118877))

(declare-fun m!118929 () Bool)

(assert (=> b!133932 m!118929))

(assert (=> b!133931 m!118877))

(declare-fun m!118931 () Bool)

(assert (=> b!133931 m!118931))

(assert (=> b!133931 m!118879))

(declare-fun m!118933 () Bool)

(assert (=> b!133931 m!118933))

(assert (=> b!133931 m!118931))

(assert (=> b!133931 m!118933))

(declare-fun m!118935 () Bool)

(assert (=> b!133931 m!118935))

(assert (=> b!133879 d!32047))

(declare-fun d!32049 () Bool)

(assert (=> d!32049 (= (tail!284 (++!474 (t!22792 l!3288) lt!40378)) (t!22792 (++!474 (t!22792 l!3288) lt!40378)))))

(assert (=> b!133879 d!32049))

(declare-fun d!32051 () Bool)

(assert (=> d!32051 (= (tail!284 (tail!284 tot!41)) (t!22792 (tail!284 tot!41)))))

(assert (=> b!133879 d!32051))

(declare-fun d!32053 () Bool)

(declare-fun c!28682 () Bool)

(assert (=> d!32053 (= c!28682 ((_ is Nil!2200) lt!40392))))

(declare-fun e!77573 () (InoxSet B!805))

(assert (=> d!32053 (= (content!308 lt!40392) e!77573)))

(declare-fun b!133933 () Bool)

(assert (=> b!133933 (= e!77573 ((as const (Array B!805 Bool)) false))))

(declare-fun b!133934 () Bool)

(assert (=> b!133934 (= e!77573 ((_ map or) (store ((as const (Array B!805 Bool)) false) (h!7597 lt!40392) true) (content!308 (t!22792 lt!40392))))))

(assert (= (and d!32053 c!28682) b!133933))

(assert (= (and d!32053 (not c!28682)) b!133934))

(declare-fun m!118937 () Bool)

(assert (=> b!133934 m!118937))

(declare-fun m!118939 () Bool)

(assert (=> b!133934 m!118939))

(assert (=> d!32007 d!32053))

(declare-fun d!32055 () Bool)

(declare-fun c!28683 () Bool)

(assert (=> d!32055 (= c!28683 ((_ is Nil!2200) l!3288))))

(declare-fun e!77574 () (InoxSet B!805))

(assert (=> d!32055 (= (content!308 l!3288) e!77574)))

(declare-fun b!133935 () Bool)

(assert (=> b!133935 (= e!77574 ((as const (Array B!805 Bool)) false))))

(declare-fun b!133936 () Bool)

(assert (=> b!133936 (= e!77574 ((_ map or) (store ((as const (Array B!805 Bool)) false) (h!7597 l!3288) true) (content!308 (t!22792 l!3288))))))

(assert (= (and d!32055 c!28683) b!133935))

(assert (= (and d!32055 (not c!28683)) b!133936))

(declare-fun m!118941 () Bool)

(assert (=> b!133936 m!118941))

(assert (=> b!133936 m!118885))

(assert (=> d!32007 d!32055))

(assert (=> d!32007 d!32045))

(declare-fun d!32057 () Bool)

(assert (=> d!32057 (= (head!536 (++!474 (t!22792 l!3288) lt!40378)) (h!7597 (++!474 (t!22792 l!3288) lt!40378)))))

(assert (=> b!133878 d!32057))

(declare-fun d!32059 () Bool)

(assert (=> d!32059 (= (head!536 (tail!284 tot!41)) (h!7597 (tail!284 tot!41)))))

(assert (=> b!133878 d!32059))

(declare-fun d!32061 () Bool)

(declare-fun lt!40406 () Int)

(assert (=> d!32061 (>= lt!40406 0)))

(declare-fun e!77575 () Int)

(assert (=> d!32061 (= lt!40406 e!77575)))

(declare-fun c!28684 () Bool)

(assert (=> d!32061 (= c!28684 ((_ is Nil!2200) tot!41))))

(assert (=> d!32061 (= (size!1997 tot!41) lt!40406)))

(declare-fun b!133937 () Bool)

(assert (=> b!133937 (= e!77575 0)))

(declare-fun b!133938 () Bool)

(assert (=> b!133938 (= e!77575 (+ 1 (size!1997 (t!22792 tot!41))))))

(assert (= (and d!32061 c!28684) b!133937))

(assert (= (and d!32061 (not c!28684)) b!133938))

(declare-fun m!118943 () Bool)

(assert (=> b!133938 m!118943))

(assert (=> b!133844 d!32061))

(declare-fun d!32063 () Bool)

(declare-fun lt!40407 () Int)

(assert (=> d!32063 (>= lt!40407 0)))

(declare-fun e!77576 () Int)

(assert (=> d!32063 (= lt!40407 e!77576)))

(declare-fun c!28685 () Bool)

(assert (=> d!32063 (= c!28685 ((_ is Nil!2200) (++!474 l!3288 lt!40378)))))

(assert (=> d!32063 (= (size!1997 (++!474 l!3288 lt!40378)) lt!40407)))

(declare-fun b!133939 () Bool)

(assert (=> b!133939 (= e!77576 0)))

(declare-fun b!133940 () Bool)

(assert (=> b!133940 (= e!77576 (+ 1 (size!1997 (t!22792 (++!474 l!3288 lt!40378)))))))

(assert (= (and d!32063 c!28685) b!133939))

(assert (= (and d!32063 (not c!28685)) b!133940))

(declare-fun m!118945 () Bool)

(assert (=> b!133940 m!118945))

(assert (=> b!133844 d!32063))

(declare-fun d!32065 () Bool)

(declare-fun e!77577 () Bool)

(assert (=> d!32065 e!77577))

(declare-fun res!62604 () Bool)

(assert (=> d!32065 (=> res!62604 e!77577)))

(declare-fun lt!40408 () Bool)

(assert (=> d!32065 (= res!62604 (not lt!40408))))

(declare-fun e!77578 () Bool)

(assert (=> d!32065 (= lt!40408 e!77578)))

(declare-fun res!62601 () Bool)

(assert (=> d!32065 (=> res!62601 e!77578)))

(assert (=> d!32065 (= res!62601 ((_ is Nil!2200) (tail!284 (++!474 l!3288 lt!40378))))))

(assert (=> d!32065 (= (isPrefix!193 (tail!284 (++!474 l!3288 lt!40378)) (tail!284 tot!41)) lt!40408)))

(declare-fun b!133942 () Bool)

(declare-fun res!62603 () Bool)

(declare-fun e!77579 () Bool)

(assert (=> b!133942 (=> (not res!62603) (not e!77579))))

(assert (=> b!133942 (= res!62603 (= (head!536 (tail!284 (++!474 l!3288 lt!40378))) (head!536 (tail!284 tot!41))))))

(declare-fun b!133941 () Bool)

(assert (=> b!133941 (= e!77578 e!77579)))

(declare-fun res!62602 () Bool)

(assert (=> b!133941 (=> (not res!62602) (not e!77579))))

(assert (=> b!133941 (= res!62602 (not ((_ is Nil!2200) (tail!284 tot!41))))))

(declare-fun b!133944 () Bool)

(assert (=> b!133944 (= e!77577 (>= (size!1997 (tail!284 tot!41)) (size!1997 (tail!284 (++!474 l!3288 lt!40378)))))))

(declare-fun b!133943 () Bool)

(assert (=> b!133943 (= e!77579 (isPrefix!193 (tail!284 (tail!284 (++!474 l!3288 lt!40378))) (tail!284 (tail!284 tot!41))))))

(assert (= (and d!32065 (not res!62601)) b!133941))

(assert (= (and b!133941 res!62602) b!133942))

(assert (= (and b!133942 res!62603) b!133943))

(assert (= (and d!32065 (not res!62604)) b!133944))

(assert (=> b!133942 m!118817))

(declare-fun m!118947 () Bool)

(assert (=> b!133942 m!118947))

(assert (=> b!133942 m!118789))

(assert (=> b!133942 m!118871))

(assert (=> b!133944 m!118789))

(assert (=> b!133944 m!118873))

(assert (=> b!133944 m!118817))

(declare-fun m!118949 () Bool)

(assert (=> b!133944 m!118949))

(assert (=> b!133943 m!118817))

(declare-fun m!118951 () Bool)

(assert (=> b!133943 m!118951))

(assert (=> b!133943 m!118789))

(assert (=> b!133943 m!118879))

(assert (=> b!133943 m!118951))

(assert (=> b!133943 m!118879))

(declare-fun m!118953 () Bool)

(assert (=> b!133943 m!118953))

(assert (=> b!133843 d!32065))

(declare-fun d!32067 () Bool)

(assert (=> d!32067 (= (tail!284 (++!474 l!3288 lt!40378)) (t!22792 (++!474 l!3288 lt!40378)))))

(assert (=> b!133843 d!32067))

(assert (=> b!133843 d!32019))

(declare-fun b!133945 () Bool)

(declare-fun e!77580 () Bool)

(declare-fun tp!70625 () Bool)

(assert (=> b!133945 (= e!77580 (and tp_is_empty!1449 tp!70625))))

(assert (=> b!133895 (= tp!70623 e!77580)))

(assert (= (and b!133895 ((_ is Cons!2200) (t!22792 (t!22792 l!3288)))) b!133945))

(declare-fun b!133946 () Bool)

(declare-fun e!77581 () Bool)

(declare-fun tp!70626 () Bool)

(assert (=> b!133946 (= e!77581 (and tp_is_empty!1449 tp!70626))))

(assert (=> b!133896 (= tp!70624 e!77581)))

(assert (= (and b!133896 ((_ is Cons!2200) (t!22792 (t!22792 tot!41)))) b!133946))

(check-sat (not b!133936) (not b!133931) (not d!32039) (not b!133910) (not b!133904) (not b!133930) (not b!133943) (not b!133916) (not b!133908) (not b!133940) (not b!133902) (not b!133906) (not b!133924) (not b!133945) (not b!133932) (not b!133938) (not b!133946) (not b!133942) (not b!133914) (not b!133912) (not b!133944) (not b!133926) (not b!133934) (not b!133928) tp_is_empty!1449 (not b!133917))
(check-sat)
