; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507782 () Bool)

(assert start!507782)

(declare-fun b!4859424 () Bool)

(declare-fun res!2074517 () Bool)

(declare-fun e!3037943 () Bool)

(assert (=> b!4859424 (=> (not res!2074517) (not e!3037943))))

(declare-datatypes ((B!2925 0))(
  ( (B!2926 (val!22418 Int)) )
))
(declare-datatypes ((List!55886 0))(
  ( (Nil!55762) (Cons!55762 (h!62210 B!2925) (t!363506 List!55886)) )
))
(declare-fun l1!1299 () List!55886)

(declare-fun isEmpty!29851 (List!55886) Bool)

(assert (=> b!4859424 (= res!2074517 (not (isEmpty!29851 (t!363506 l1!1299))))))

(declare-fun b!4859425 () Bool)

(declare-fun e!3037942 () Bool)

(declare-fun lt!1992009 () List!55886)

(declare-fun l2!1268 () List!55886)

(declare-fun last!414 (List!55886) B!2925)

(assert (=> b!4859425 (= e!3037942 (= (last!414 lt!1992009) (last!414 l2!1268)))))

(declare-fun b!4859426 () Bool)

(declare-fun e!3037947 () Bool)

(assert (=> b!4859426 (= e!3037943 e!3037947)))

(declare-fun res!2074519 () Bool)

(assert (=> b!4859426 (=> (not res!2074519) (not e!3037947))))

(assert (=> b!4859426 (= res!2074519 (not (isEmpty!29851 lt!1992009)))))

(declare-fun ++!12147 (List!55886 List!55886) List!55886)

(assert (=> b!4859426 (= lt!1992009 (++!12147 (t!363506 l1!1299) l2!1268))))

(declare-fun res!2074521 () Bool)

(assert (=> start!507782 (=> (not res!2074521) (not e!3037943))))

(assert (=> start!507782 (= res!2074521 (not (isEmpty!29851 (++!12147 l1!1299 l2!1268))))))

(assert (=> start!507782 e!3037943))

(declare-fun e!3037945 () Bool)

(assert (=> start!507782 e!3037945))

(declare-fun e!3037948 () Bool)

(assert (=> start!507782 e!3037948))

(declare-fun b!4859427 () Bool)

(declare-fun e!3037944 () Bool)

(assert (=> b!4859427 (= e!3037947 (not e!3037944))))

(declare-fun res!2074518 () Bool)

(assert (=> b!4859427 (=> res!2074518 e!3037944)))

(declare-fun lt!1992007 () Bool)

(assert (=> b!4859427 (= res!2074518 lt!1992007)))

(declare-fun e!3037946 () Bool)

(assert (=> b!4859427 e!3037946))

(declare-fun res!2074515 () Bool)

(assert (=> b!4859427 (=> res!2074515 e!3037946)))

(declare-fun e!3037941 () Bool)

(assert (=> b!4859427 (= res!2074515 e!3037941)))

(declare-fun res!2074520 () Bool)

(assert (=> b!4859427 (=> (not res!2074520) (not e!3037941))))

(assert (=> b!4859427 (= res!2074520 (not lt!1992007))))

(declare-fun lt!1992006 () Bool)

(assert (=> b!4859427 (= lt!1992007 (not lt!1992006))))

(assert (=> b!4859427 (= lt!1992006 (isEmpty!29851 l2!1268))))

(declare-datatypes ((Unit!145867 0))(
  ( (Unit!145868) )
))
(declare-fun lt!1992008 () Unit!145867)

(declare-fun lemmaLastOfConcatIsLastOfRhs!40 (List!55886 List!55886) Unit!145867)

(assert (=> b!4859427 (= lt!1992008 (lemmaLastOfConcatIsLastOfRhs!40 (t!363506 l1!1299) l2!1268))))

(declare-fun b!4859428 () Bool)

(assert (=> b!4859428 (= e!3037946 e!3037942)))

(declare-fun res!2074514 () Bool)

(assert (=> b!4859428 (=> (not res!2074514) (not e!3037942))))

(assert (=> b!4859428 (= res!2074514 (not lt!1992006))))

(declare-fun b!4859429 () Bool)

(declare-fun tp_is_empty!35543 () Bool)

(declare-fun tp!1366865 () Bool)

(assert (=> b!4859429 (= e!3037945 (and tp_is_empty!35543 tp!1366865))))

(declare-fun b!4859430 () Bool)

(assert (=> b!4859430 (= e!3037944 (not (isEmpty!29851 l1!1299)))))

(declare-fun b!4859431 () Bool)

(assert (=> b!4859431 (= e!3037941 (= (last!414 lt!1992009) (last!414 (t!363506 l1!1299))))))

(declare-fun b!4859432 () Bool)

(declare-fun tp!1366864 () Bool)

(assert (=> b!4859432 (= e!3037948 (and tp_is_empty!35543 tp!1366864))))

(declare-fun b!4859433 () Bool)

(declare-fun res!2074516 () Bool)

(assert (=> b!4859433 (=> (not res!2074516) (not e!3037943))))

(get-info :version)

(assert (=> b!4859433 (= res!2074516 ((_ is Cons!55762) l1!1299))))

(assert (= (and start!507782 res!2074521) b!4859433))

(assert (= (and b!4859433 res!2074516) b!4859424))

(assert (= (and b!4859424 res!2074517) b!4859426))

(assert (= (and b!4859426 res!2074519) b!4859427))

(assert (= (and b!4859427 res!2074520) b!4859431))

(assert (= (and b!4859427 (not res!2074515)) b!4859428))

(assert (= (and b!4859428 res!2074514) b!4859425))

(assert (= (and b!4859427 (not res!2074518)) b!4859430))

(assert (= (and start!507782 ((_ is Cons!55762) l1!1299)) b!4859429))

(assert (= (and start!507782 ((_ is Cons!55762) l2!1268)) b!4859432))

(declare-fun m!5857760 () Bool)

(assert (=> b!4859426 m!5857760))

(declare-fun m!5857762 () Bool)

(assert (=> b!4859426 m!5857762))

(declare-fun m!5857764 () Bool)

(assert (=> b!4859425 m!5857764))

(declare-fun m!5857766 () Bool)

(assert (=> b!4859425 m!5857766))

(declare-fun m!5857768 () Bool)

(assert (=> start!507782 m!5857768))

(assert (=> start!507782 m!5857768))

(declare-fun m!5857770 () Bool)

(assert (=> start!507782 m!5857770))

(declare-fun m!5857772 () Bool)

(assert (=> b!4859424 m!5857772))

(declare-fun m!5857774 () Bool)

(assert (=> b!4859427 m!5857774))

(declare-fun m!5857776 () Bool)

(assert (=> b!4859427 m!5857776))

(assert (=> b!4859431 m!5857764))

(declare-fun m!5857778 () Bool)

(assert (=> b!4859431 m!5857778))

(declare-fun m!5857780 () Bool)

(assert (=> b!4859430 m!5857780))

(check-sat (not b!4859429) (not b!4859424) (not start!507782) (not b!4859425) (not b!4859427) (not b!4859431) tp_is_empty!35543 (not b!4859430) (not b!4859432) (not b!4859426))
(check-sat)
(get-model)

(declare-fun d!1559906 () Bool)

(assert (=> d!1559906 (= (isEmpty!29851 l2!1268) ((_ is Nil!55762) l2!1268))))

(assert (=> b!4859427 d!1559906))

(declare-fun d!1559908 () Bool)

(declare-fun e!3037956 () Bool)

(assert (=> d!1559908 e!3037956))

(declare-fun res!2074530 () Bool)

(assert (=> d!1559908 (=> res!2074530 e!3037956)))

(declare-fun e!3037955 () Bool)

(assert (=> d!1559908 (= res!2074530 e!3037955)))

(declare-fun res!2074528 () Bool)

(assert (=> d!1559908 (=> (not res!2074528) (not e!3037955))))

(assert (=> d!1559908 (= res!2074528 (isEmpty!29851 l2!1268))))

(declare-fun lt!1992012 () Unit!145867)

(declare-fun choose!35566 (List!55886 List!55886) Unit!145867)

(assert (=> d!1559908 (= lt!1992012 (choose!35566 (t!363506 l1!1299) l2!1268))))

(assert (=> d!1559908 (not (isEmpty!29851 (++!12147 (t!363506 l1!1299) l2!1268)))))

(assert (=> d!1559908 (= (lemmaLastOfConcatIsLastOfRhs!40 (t!363506 l1!1299) l2!1268) lt!1992012)))

(declare-fun b!4859440 () Bool)

(assert (=> b!4859440 (= e!3037955 (= (last!414 (++!12147 (t!363506 l1!1299) l2!1268)) (last!414 (t!363506 l1!1299))))))

(declare-fun b!4859441 () Bool)

(declare-fun e!3037957 () Bool)

(assert (=> b!4859441 (= e!3037956 e!3037957)))

(declare-fun res!2074529 () Bool)

(assert (=> b!4859441 (=> (not res!2074529) (not e!3037957))))

(assert (=> b!4859441 (= res!2074529 (not (isEmpty!29851 l2!1268)))))

(declare-fun b!4859442 () Bool)

(assert (=> b!4859442 (= e!3037957 (= (last!414 (++!12147 (t!363506 l1!1299) l2!1268)) (last!414 l2!1268)))))

(assert (= (and d!1559908 res!2074528) b!4859440))

(assert (= (and d!1559908 (not res!2074530)) b!4859441))

(assert (= (and b!4859441 res!2074529) b!4859442))

(assert (=> d!1559908 m!5857774))

(declare-fun m!5857782 () Bool)

(assert (=> d!1559908 m!5857782))

(assert (=> d!1559908 m!5857762))

(assert (=> d!1559908 m!5857762))

(declare-fun m!5857784 () Bool)

(assert (=> d!1559908 m!5857784))

(assert (=> b!4859440 m!5857762))

(assert (=> b!4859440 m!5857762))

(declare-fun m!5857786 () Bool)

(assert (=> b!4859440 m!5857786))

(assert (=> b!4859440 m!5857778))

(assert (=> b!4859441 m!5857774))

(assert (=> b!4859442 m!5857762))

(assert (=> b!4859442 m!5857762))

(assert (=> b!4859442 m!5857786))

(assert (=> b!4859442 m!5857766))

(assert (=> b!4859427 d!1559908))

(declare-fun d!1559910 () Bool)

(assert (=> d!1559910 (= (isEmpty!29851 (t!363506 l1!1299)) ((_ is Nil!55762) (t!363506 l1!1299)))))

(assert (=> b!4859424 d!1559910))

(declare-fun d!1559912 () Bool)

(declare-fun lt!1992015 () B!2925)

(declare-fun contains!19370 (List!55886 B!2925) Bool)

(assert (=> d!1559912 (contains!19370 lt!1992009 lt!1992015)))

(declare-fun e!3037960 () B!2925)

(assert (=> d!1559912 (= lt!1992015 e!3037960)))

(declare-fun c!826682 () Bool)

(assert (=> d!1559912 (= c!826682 (and ((_ is Cons!55762) lt!1992009) ((_ is Nil!55762) (t!363506 lt!1992009))))))

(assert (=> d!1559912 (not (isEmpty!29851 lt!1992009))))

(assert (=> d!1559912 (= (last!414 lt!1992009) lt!1992015)))

(declare-fun b!4859447 () Bool)

(assert (=> b!4859447 (= e!3037960 (h!62210 lt!1992009))))

(declare-fun b!4859448 () Bool)

(assert (=> b!4859448 (= e!3037960 (last!414 (t!363506 lt!1992009)))))

(assert (= (and d!1559912 c!826682) b!4859447))

(assert (= (and d!1559912 (not c!826682)) b!4859448))

(declare-fun m!5857788 () Bool)

(assert (=> d!1559912 m!5857788))

(assert (=> d!1559912 m!5857760))

(declare-fun m!5857790 () Bool)

(assert (=> b!4859448 m!5857790))

(assert (=> b!4859425 d!1559912))

(declare-fun d!1559914 () Bool)

(declare-fun lt!1992016 () B!2925)

(assert (=> d!1559914 (contains!19370 l2!1268 lt!1992016)))

(declare-fun e!3037961 () B!2925)

(assert (=> d!1559914 (= lt!1992016 e!3037961)))

(declare-fun c!826683 () Bool)

(assert (=> d!1559914 (= c!826683 (and ((_ is Cons!55762) l2!1268) ((_ is Nil!55762) (t!363506 l2!1268))))))

(assert (=> d!1559914 (not (isEmpty!29851 l2!1268))))

(assert (=> d!1559914 (= (last!414 l2!1268) lt!1992016)))

(declare-fun b!4859449 () Bool)

(assert (=> b!4859449 (= e!3037961 (h!62210 l2!1268))))

(declare-fun b!4859450 () Bool)

(assert (=> b!4859450 (= e!3037961 (last!414 (t!363506 l2!1268)))))

(assert (= (and d!1559914 c!826683) b!4859449))

(assert (= (and d!1559914 (not c!826683)) b!4859450))

(declare-fun m!5857792 () Bool)

(assert (=> d!1559914 m!5857792))

(assert (=> d!1559914 m!5857774))

(declare-fun m!5857794 () Bool)

(assert (=> b!4859450 m!5857794))

(assert (=> b!4859425 d!1559914))

(declare-fun d!1559916 () Bool)

(assert (=> d!1559916 (= (isEmpty!29851 l1!1299) ((_ is Nil!55762) l1!1299))))

(assert (=> b!4859430 d!1559916))

(assert (=> b!4859431 d!1559912))

(declare-fun d!1559918 () Bool)

(declare-fun lt!1992017 () B!2925)

(assert (=> d!1559918 (contains!19370 (t!363506 l1!1299) lt!1992017)))

(declare-fun e!3037962 () B!2925)

(assert (=> d!1559918 (= lt!1992017 e!3037962)))

(declare-fun c!826684 () Bool)

(assert (=> d!1559918 (= c!826684 (and ((_ is Cons!55762) (t!363506 l1!1299)) ((_ is Nil!55762) (t!363506 (t!363506 l1!1299)))))))

(assert (=> d!1559918 (not (isEmpty!29851 (t!363506 l1!1299)))))

(assert (=> d!1559918 (= (last!414 (t!363506 l1!1299)) lt!1992017)))

(declare-fun b!4859451 () Bool)

(assert (=> b!4859451 (= e!3037962 (h!62210 (t!363506 l1!1299)))))

(declare-fun b!4859452 () Bool)

(assert (=> b!4859452 (= e!3037962 (last!414 (t!363506 (t!363506 l1!1299))))))

(assert (= (and d!1559918 c!826684) b!4859451))

(assert (= (and d!1559918 (not c!826684)) b!4859452))

(declare-fun m!5857796 () Bool)

(assert (=> d!1559918 m!5857796))

(assert (=> d!1559918 m!5857772))

(declare-fun m!5857798 () Bool)

(assert (=> b!4859452 m!5857798))

(assert (=> b!4859431 d!1559918))

(declare-fun d!1559920 () Bool)

(assert (=> d!1559920 (= (isEmpty!29851 (++!12147 l1!1299 l2!1268)) ((_ is Nil!55762) (++!12147 l1!1299 l2!1268)))))

(assert (=> start!507782 d!1559920))

(declare-fun b!4859461 () Bool)

(declare-fun e!3037967 () List!55886)

(assert (=> b!4859461 (= e!3037967 l2!1268)))

(declare-fun e!3037968 () Bool)

(declare-fun b!4859464 () Bool)

(declare-fun lt!1992020 () List!55886)

(assert (=> b!4859464 (= e!3037968 (or (not (= l2!1268 Nil!55762)) (= lt!1992020 l1!1299)))))

(declare-fun b!4859462 () Bool)

(assert (=> b!4859462 (= e!3037967 (Cons!55762 (h!62210 l1!1299) (++!12147 (t!363506 l1!1299) l2!1268)))))

(declare-fun d!1559922 () Bool)

(assert (=> d!1559922 e!3037968))

(declare-fun res!2074536 () Bool)

(assert (=> d!1559922 (=> (not res!2074536) (not e!3037968))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9942 (List!55886) (InoxSet B!2925))

(assert (=> d!1559922 (= res!2074536 (= (content!9942 lt!1992020) ((_ map or) (content!9942 l1!1299) (content!9942 l2!1268))))))

(assert (=> d!1559922 (= lt!1992020 e!3037967)))

(declare-fun c!826687 () Bool)

(assert (=> d!1559922 (= c!826687 ((_ is Nil!55762) l1!1299))))

(assert (=> d!1559922 (= (++!12147 l1!1299 l2!1268) lt!1992020)))

(declare-fun b!4859463 () Bool)

(declare-fun res!2074535 () Bool)

(assert (=> b!4859463 (=> (not res!2074535) (not e!3037968))))

(declare-fun size!36745 (List!55886) Int)

(assert (=> b!4859463 (= res!2074535 (= (size!36745 lt!1992020) (+ (size!36745 l1!1299) (size!36745 l2!1268))))))

(assert (= (and d!1559922 c!826687) b!4859461))

(assert (= (and d!1559922 (not c!826687)) b!4859462))

(assert (= (and d!1559922 res!2074536) b!4859463))

(assert (= (and b!4859463 res!2074535) b!4859464))

(assert (=> b!4859462 m!5857762))

(declare-fun m!5857800 () Bool)

(assert (=> d!1559922 m!5857800))

(declare-fun m!5857802 () Bool)

(assert (=> d!1559922 m!5857802))

(declare-fun m!5857804 () Bool)

(assert (=> d!1559922 m!5857804))

(declare-fun m!5857806 () Bool)

(assert (=> b!4859463 m!5857806))

(declare-fun m!5857808 () Bool)

(assert (=> b!4859463 m!5857808))

(declare-fun m!5857810 () Bool)

(assert (=> b!4859463 m!5857810))

(assert (=> start!507782 d!1559922))

(declare-fun d!1559928 () Bool)

(assert (=> d!1559928 (= (isEmpty!29851 lt!1992009) ((_ is Nil!55762) lt!1992009))))

(assert (=> b!4859426 d!1559928))

(declare-fun b!4859465 () Bool)

(declare-fun e!3037969 () List!55886)

(assert (=> b!4859465 (= e!3037969 l2!1268)))

(declare-fun e!3037970 () Bool)

(declare-fun b!4859468 () Bool)

(declare-fun lt!1992021 () List!55886)

(assert (=> b!4859468 (= e!3037970 (or (not (= l2!1268 Nil!55762)) (= lt!1992021 (t!363506 l1!1299))))))

(declare-fun b!4859466 () Bool)

(assert (=> b!4859466 (= e!3037969 (Cons!55762 (h!62210 (t!363506 l1!1299)) (++!12147 (t!363506 (t!363506 l1!1299)) l2!1268)))))

(declare-fun d!1559930 () Bool)

(assert (=> d!1559930 e!3037970))

(declare-fun res!2074538 () Bool)

(assert (=> d!1559930 (=> (not res!2074538) (not e!3037970))))

(assert (=> d!1559930 (= res!2074538 (= (content!9942 lt!1992021) ((_ map or) (content!9942 (t!363506 l1!1299)) (content!9942 l2!1268))))))

(assert (=> d!1559930 (= lt!1992021 e!3037969)))

(declare-fun c!826688 () Bool)

(assert (=> d!1559930 (= c!826688 ((_ is Nil!55762) (t!363506 l1!1299)))))

(assert (=> d!1559930 (= (++!12147 (t!363506 l1!1299) l2!1268) lt!1992021)))

(declare-fun b!4859467 () Bool)

(declare-fun res!2074537 () Bool)

(assert (=> b!4859467 (=> (not res!2074537) (not e!3037970))))

(assert (=> b!4859467 (= res!2074537 (= (size!36745 lt!1992021) (+ (size!36745 (t!363506 l1!1299)) (size!36745 l2!1268))))))

(assert (= (and d!1559930 c!826688) b!4859465))

(assert (= (and d!1559930 (not c!826688)) b!4859466))

(assert (= (and d!1559930 res!2074538) b!4859467))

(assert (= (and b!4859467 res!2074537) b!4859468))

(declare-fun m!5857812 () Bool)

(assert (=> b!4859466 m!5857812))

(declare-fun m!5857814 () Bool)

(assert (=> d!1559930 m!5857814))

(declare-fun m!5857816 () Bool)

(assert (=> d!1559930 m!5857816))

(assert (=> d!1559930 m!5857804))

(declare-fun m!5857818 () Bool)

(assert (=> b!4859467 m!5857818))

(declare-fun m!5857820 () Bool)

(assert (=> b!4859467 m!5857820))

(assert (=> b!4859467 m!5857810))

(assert (=> b!4859426 d!1559930))

(declare-fun b!4859473 () Bool)

(declare-fun e!3037973 () Bool)

(declare-fun tp!1366868 () Bool)

(assert (=> b!4859473 (= e!3037973 (and tp_is_empty!35543 tp!1366868))))

(assert (=> b!4859432 (= tp!1366864 e!3037973)))

(assert (= (and b!4859432 ((_ is Cons!55762) (t!363506 l2!1268))) b!4859473))

(declare-fun b!4859474 () Bool)

(declare-fun e!3037974 () Bool)

(declare-fun tp!1366869 () Bool)

(assert (=> b!4859474 (= e!3037974 (and tp_is_empty!35543 tp!1366869))))

(assert (=> b!4859429 (= tp!1366865 e!3037974)))

(assert (= (and b!4859429 ((_ is Cons!55762) (t!363506 l1!1299))) b!4859474))

(check-sat (not b!4859452) (not b!4859474) (not d!1559912) (not d!1559930) (not d!1559918) (not b!4859442) (not d!1559914) (not b!4859448) (not b!4859450) (not b!4859441) (not d!1559908) (not d!1559922) (not b!4859466) (not b!4859473) (not b!4859440) tp_is_empty!35543 (not b!4859467) (not b!4859463) (not b!4859462))
(check-sat)
