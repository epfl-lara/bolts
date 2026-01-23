; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188912 () Bool)

(assert start!188912)

(declare-fun b!1886418 () Bool)

(declare-fun e!1203720 () Bool)

(declare-fun tp_is_empty!8953 () Bool)

(declare-fun tp!537942 () Bool)

(assert (=> b!1886418 (= e!1203720 (and tp_is_empty!8953 tp!537942))))

(declare-fun b!1886419 () Bool)

(declare-fun e!1203719 () Bool)

(declare-fun tp!537943 () Bool)

(assert (=> b!1886419 (= e!1203719 (and tp_is_empty!8953 tp!537943))))

(declare-fun res!841932 () Bool)

(declare-fun e!1203721 () Bool)

(assert (=> start!188912 (=> (not res!841932) (not e!1203721))))

(declare-datatypes ((B!1697 0))(
  ( (B!1698 (val!6134 Int)) )
))
(declare-datatypes ((List!21127 0))(
  ( (Nil!21045) (Cons!21045 (h!26446 B!1697) (t!175126 List!21127)) )
))
(declare-fun l1!1329 () List!21127)

(declare-fun l2!1298 () List!21127)

(declare-fun subseq!395 (List!21127 List!21127) Bool)

(assert (=> start!188912 (= res!841932 (subseq!395 l1!1329 l2!1298))))

(assert (=> start!188912 e!1203721))

(declare-fun e!1203722 () Bool)

(assert (=> start!188912 e!1203722))

(assert (=> start!188912 e!1203719))

(assert (=> start!188912 e!1203720))

(declare-fun b!1886420 () Bool)

(declare-fun l3!256 () List!21127)

(declare-fun size!16711 (List!21127) Int)

(assert (=> b!1886420 (= e!1203721 (>= (size!16711 (t!175126 l3!256)) (size!16711 l3!256)))))

(declare-fun lt!723524 () Int)

(assert (=> b!1886420 (= lt!723524 (size!16711 l2!1298))))

(declare-fun lt!723523 () Int)

(assert (=> b!1886420 (= lt!723523 (size!16711 l1!1329))))

(declare-fun b!1886421 () Bool)

(declare-fun res!841931 () Bool)

(assert (=> b!1886421 (=> (not res!841931) (not e!1203721))))

(assert (=> b!1886421 (= res!841931 (subseq!395 l2!1298 (t!175126 l3!256)))))

(declare-fun b!1886422 () Bool)

(declare-fun res!841930 () Bool)

(assert (=> b!1886422 (=> (not res!841930) (not e!1203721))))

(assert (=> b!1886422 (= res!841930 (subseq!395 l2!1298 l3!256))))

(declare-fun b!1886423 () Bool)

(declare-fun tp!537944 () Bool)

(assert (=> b!1886423 (= e!1203722 (and tp_is_empty!8953 tp!537944))))

(declare-fun b!1886424 () Bool)

(declare-fun res!841929 () Bool)

(assert (=> b!1886424 (=> (not res!841929) (not e!1203721))))

(get-info :version)

(assert (=> b!1886424 (= res!841929 (and ((_ is Cons!21045) l1!1329) ((_ is Cons!21045) l2!1298) ((_ is Cons!21045) l3!256) (not (= (h!26446 l2!1298) (h!26446 l3!256)))))))

(assert (= (and start!188912 res!841932) b!1886422))

(assert (= (and b!1886422 res!841930) b!1886424))

(assert (= (and b!1886424 res!841929) b!1886421))

(assert (= (and b!1886421 res!841931) b!1886420))

(assert (= (and start!188912 ((_ is Cons!21045) l1!1329)) b!1886423))

(assert (= (and start!188912 ((_ is Cons!21045) l2!1298)) b!1886419))

(assert (= (and start!188912 ((_ is Cons!21045) l3!256)) b!1886418))

(declare-fun m!2318929 () Bool)

(assert (=> start!188912 m!2318929))

(declare-fun m!2318931 () Bool)

(assert (=> b!1886420 m!2318931))

(declare-fun m!2318933 () Bool)

(assert (=> b!1886420 m!2318933))

(declare-fun m!2318935 () Bool)

(assert (=> b!1886420 m!2318935))

(declare-fun m!2318937 () Bool)

(assert (=> b!1886420 m!2318937))

(declare-fun m!2318939 () Bool)

(assert (=> b!1886421 m!2318939))

(declare-fun m!2318941 () Bool)

(assert (=> b!1886422 m!2318941))

(check-sat (not b!1886422) (not b!1886419) (not b!1886420) (not b!1886418) tp_is_empty!8953 (not b!1886423) (not start!188912) (not b!1886421))
(check-sat)
(get-model)

(declare-fun b!1886447 () Bool)

(declare-fun e!1203744 () Bool)

(assert (=> b!1886447 (= e!1203744 (subseq!395 (t!175126 l2!1298) (t!175126 l3!256)))))

(declare-fun b!1886446 () Bool)

(declare-fun e!1203745 () Bool)

(declare-fun e!1203746 () Bool)

(assert (=> b!1886446 (= e!1203745 e!1203746)))

(declare-fun res!841955 () Bool)

(assert (=> b!1886446 (=> res!841955 e!1203746)))

(assert (=> b!1886446 (= res!841955 e!1203744)))

(declare-fun res!841956 () Bool)

(assert (=> b!1886446 (=> (not res!841956) (not e!1203744))))

(assert (=> b!1886446 (= res!841956 (= (h!26446 l2!1298) (h!26446 l3!256)))))

(declare-fun d!577971 () Bool)

(declare-fun res!841953 () Bool)

(declare-fun e!1203743 () Bool)

(assert (=> d!577971 (=> res!841953 e!1203743)))

(assert (=> d!577971 (= res!841953 ((_ is Nil!21045) l2!1298))))

(assert (=> d!577971 (= (subseq!395 l2!1298 l3!256) e!1203743)))

(declare-fun b!1886445 () Bool)

(assert (=> b!1886445 (= e!1203743 e!1203745)))

(declare-fun res!841954 () Bool)

(assert (=> b!1886445 (=> (not res!841954) (not e!1203745))))

(assert (=> b!1886445 (= res!841954 ((_ is Cons!21045) l3!256))))

(declare-fun b!1886448 () Bool)

(assert (=> b!1886448 (= e!1203746 (subseq!395 l2!1298 (t!175126 l3!256)))))

(assert (= (and d!577971 (not res!841953)) b!1886445))

(assert (= (and b!1886445 res!841954) b!1886446))

(assert (= (and b!1886446 res!841956) b!1886447))

(assert (= (and b!1886446 (not res!841955)) b!1886448))

(declare-fun m!2318947 () Bool)

(assert (=> b!1886447 m!2318947))

(assert (=> b!1886448 m!2318939))

(assert (=> b!1886422 d!577971))

(declare-fun b!1886451 () Bool)

(declare-fun e!1203748 () Bool)

(assert (=> b!1886451 (= e!1203748 (subseq!395 (t!175126 l1!1329) (t!175126 l2!1298)))))

(declare-fun b!1886450 () Bool)

(declare-fun e!1203749 () Bool)

(declare-fun e!1203750 () Bool)

(assert (=> b!1886450 (= e!1203749 e!1203750)))

(declare-fun res!841959 () Bool)

(assert (=> b!1886450 (=> res!841959 e!1203750)))

(assert (=> b!1886450 (= res!841959 e!1203748)))

(declare-fun res!841960 () Bool)

(assert (=> b!1886450 (=> (not res!841960) (not e!1203748))))

(assert (=> b!1886450 (= res!841960 (= (h!26446 l1!1329) (h!26446 l2!1298)))))

(declare-fun d!577975 () Bool)

(declare-fun res!841957 () Bool)

(declare-fun e!1203747 () Bool)

(assert (=> d!577975 (=> res!841957 e!1203747)))

(assert (=> d!577975 (= res!841957 ((_ is Nil!21045) l1!1329))))

(assert (=> d!577975 (= (subseq!395 l1!1329 l2!1298) e!1203747)))

(declare-fun b!1886449 () Bool)

(assert (=> b!1886449 (= e!1203747 e!1203749)))

(declare-fun res!841958 () Bool)

(assert (=> b!1886449 (=> (not res!841958) (not e!1203749))))

(assert (=> b!1886449 (= res!841958 ((_ is Cons!21045) l2!1298))))

(declare-fun b!1886452 () Bool)

(assert (=> b!1886452 (= e!1203750 (subseq!395 l1!1329 (t!175126 l2!1298)))))

(assert (= (and d!577975 (not res!841957)) b!1886449))

(assert (= (and b!1886449 res!841958) b!1886450))

(assert (= (and b!1886450 res!841960) b!1886451))

(assert (= (and b!1886450 (not res!841959)) b!1886452))

(declare-fun m!2318949 () Bool)

(assert (=> b!1886451 m!2318949))

(declare-fun m!2318951 () Bool)

(assert (=> b!1886452 m!2318951))

(assert (=> start!188912 d!577975))

(declare-fun b!1886455 () Bool)

(declare-fun e!1203752 () Bool)

(assert (=> b!1886455 (= e!1203752 (subseq!395 (t!175126 l2!1298) (t!175126 (t!175126 l3!256))))))

(declare-fun b!1886454 () Bool)

(declare-fun e!1203753 () Bool)

(declare-fun e!1203754 () Bool)

(assert (=> b!1886454 (= e!1203753 e!1203754)))

(declare-fun res!841963 () Bool)

(assert (=> b!1886454 (=> res!841963 e!1203754)))

(assert (=> b!1886454 (= res!841963 e!1203752)))

(declare-fun res!841964 () Bool)

(assert (=> b!1886454 (=> (not res!841964) (not e!1203752))))

(assert (=> b!1886454 (= res!841964 (= (h!26446 l2!1298) (h!26446 (t!175126 l3!256))))))

(declare-fun d!577977 () Bool)

(declare-fun res!841961 () Bool)

(declare-fun e!1203751 () Bool)

(assert (=> d!577977 (=> res!841961 e!1203751)))

(assert (=> d!577977 (= res!841961 ((_ is Nil!21045) l2!1298))))

(assert (=> d!577977 (= (subseq!395 l2!1298 (t!175126 l3!256)) e!1203751)))

(declare-fun b!1886453 () Bool)

(assert (=> b!1886453 (= e!1203751 e!1203753)))

(declare-fun res!841962 () Bool)

(assert (=> b!1886453 (=> (not res!841962) (not e!1203753))))

(assert (=> b!1886453 (= res!841962 ((_ is Cons!21045) (t!175126 l3!256)))))

(declare-fun b!1886456 () Bool)

(assert (=> b!1886456 (= e!1203754 (subseq!395 l2!1298 (t!175126 (t!175126 l3!256))))))

(assert (= (and d!577977 (not res!841961)) b!1886453))

(assert (= (and b!1886453 res!841962) b!1886454))

(assert (= (and b!1886454 res!841964) b!1886455))

(assert (= (and b!1886454 (not res!841963)) b!1886456))

(declare-fun m!2318953 () Bool)

(assert (=> b!1886455 m!2318953))

(declare-fun m!2318955 () Bool)

(assert (=> b!1886456 m!2318955))

(assert (=> b!1886421 d!577977))

(declare-fun d!577979 () Bool)

(declare-fun lt!723533 () Int)

(assert (=> d!577979 (>= lt!723533 0)))

(declare-fun e!1203763 () Int)

(assert (=> d!577979 (= lt!723533 e!1203763)))

(declare-fun c!308109 () Bool)

(assert (=> d!577979 (= c!308109 ((_ is Nil!21045) (t!175126 l3!256)))))

(assert (=> d!577979 (= (size!16711 (t!175126 l3!256)) lt!723533)))

(declare-fun b!1886473 () Bool)

(assert (=> b!1886473 (= e!1203763 0)))

(declare-fun b!1886474 () Bool)

(assert (=> b!1886474 (= e!1203763 (+ 1 (size!16711 (t!175126 (t!175126 l3!256)))))))

(assert (= (and d!577979 c!308109) b!1886473))

(assert (= (and d!577979 (not c!308109)) b!1886474))

(declare-fun m!2318963 () Bool)

(assert (=> b!1886474 m!2318963))

(assert (=> b!1886420 d!577979))

(declare-fun d!577989 () Bool)

(declare-fun lt!723534 () Int)

(assert (=> d!577989 (>= lt!723534 0)))

(declare-fun e!1203768 () Int)

(assert (=> d!577989 (= lt!723534 e!1203768)))

(declare-fun c!308110 () Bool)

(assert (=> d!577989 (= c!308110 ((_ is Nil!21045) l3!256))))

(assert (=> d!577989 (= (size!16711 l3!256) lt!723534)))

(declare-fun b!1886479 () Bool)

(assert (=> b!1886479 (= e!1203768 0)))

(declare-fun b!1886480 () Bool)

(assert (=> b!1886480 (= e!1203768 (+ 1 (size!16711 (t!175126 l3!256))))))

(assert (= (and d!577989 c!308110) b!1886479))

(assert (= (and d!577989 (not c!308110)) b!1886480))

(assert (=> b!1886480 m!2318931))

(assert (=> b!1886420 d!577989))

(declare-fun d!577991 () Bool)

(declare-fun lt!723535 () Int)

(assert (=> d!577991 (>= lt!723535 0)))

(declare-fun e!1203769 () Int)

(assert (=> d!577991 (= lt!723535 e!1203769)))

(declare-fun c!308111 () Bool)

(assert (=> d!577991 (= c!308111 ((_ is Nil!21045) l2!1298))))

(assert (=> d!577991 (= (size!16711 l2!1298) lt!723535)))

(declare-fun b!1886481 () Bool)

(assert (=> b!1886481 (= e!1203769 0)))

(declare-fun b!1886482 () Bool)

(assert (=> b!1886482 (= e!1203769 (+ 1 (size!16711 (t!175126 l2!1298))))))

(assert (= (and d!577991 c!308111) b!1886481))

(assert (= (and d!577991 (not c!308111)) b!1886482))

(declare-fun m!2318969 () Bool)

(assert (=> b!1886482 m!2318969))

(assert (=> b!1886420 d!577991))

(declare-fun d!577995 () Bool)

(declare-fun lt!723536 () Int)

(assert (=> d!577995 (>= lt!723536 0)))

(declare-fun e!1203770 () Int)

(assert (=> d!577995 (= lt!723536 e!1203770)))

(declare-fun c!308112 () Bool)

(assert (=> d!577995 (= c!308112 ((_ is Nil!21045) l1!1329))))

(assert (=> d!577995 (= (size!16711 l1!1329) lt!723536)))

(declare-fun b!1886483 () Bool)

(assert (=> b!1886483 (= e!1203770 0)))

(declare-fun b!1886484 () Bool)

(assert (=> b!1886484 (= e!1203770 (+ 1 (size!16711 (t!175126 l1!1329))))))

(assert (= (and d!577995 c!308112) b!1886483))

(assert (= (and d!577995 (not c!308112)) b!1886484))

(declare-fun m!2318971 () Bool)

(assert (=> b!1886484 m!2318971))

(assert (=> b!1886420 d!577995))

(declare-fun b!1886497 () Bool)

(declare-fun e!1203779 () Bool)

(declare-fun tp!537949 () Bool)

(assert (=> b!1886497 (= e!1203779 (and tp_is_empty!8953 tp!537949))))

(assert (=> b!1886418 (= tp!537942 e!1203779)))

(assert (= (and b!1886418 ((_ is Cons!21045) (t!175126 l3!256))) b!1886497))

(declare-fun b!1886498 () Bool)

(declare-fun e!1203780 () Bool)

(declare-fun tp!537950 () Bool)

(assert (=> b!1886498 (= e!1203780 (and tp_is_empty!8953 tp!537950))))

(assert (=> b!1886423 (= tp!537944 e!1203780)))

(assert (= (and b!1886423 ((_ is Cons!21045) (t!175126 l1!1329))) b!1886498))

(declare-fun b!1886499 () Bool)

(declare-fun e!1203781 () Bool)

(declare-fun tp!537951 () Bool)

(assert (=> b!1886499 (= e!1203781 (and tp_is_empty!8953 tp!537951))))

(assert (=> b!1886419 (= tp!537943 e!1203781)))

(assert (= (and b!1886419 ((_ is Cons!21045) (t!175126 l2!1298))) b!1886499))

(check-sat (not b!1886499) (not b!1886456) (not b!1886451) (not b!1886497) (not b!1886498) (not b!1886447) (not b!1886474) (not b!1886482) tp_is_empty!8953 (not b!1886452) (not b!1886480) (not b!1886484) (not b!1886448) (not b!1886455))
(check-sat)
