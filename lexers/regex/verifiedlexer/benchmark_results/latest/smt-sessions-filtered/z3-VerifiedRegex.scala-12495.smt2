; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695076 () Bool)

(assert start!695076)

(declare-fun res!2910907 () Bool)

(declare-fun e!4287470 () Bool)

(assert (=> start!695076 (=> (not res!2910907) (not e!4287470))))

(declare-datatypes ((B!3425 0))(
  ( (B!3426 (val!28184 Int)) )
))
(declare-datatypes ((List!69277 0))(
  ( (Nil!69153) (Cons!69153 (h!75601 B!3425) (t!383294 List!69277)) )
))
(declare-fun l1!1513 () List!69277)

(get-info :version)

(assert (=> start!695076 (= res!2910907 (not ((_ is Cons!69153) l1!1513)))))

(assert (=> start!695076 e!4287470))

(declare-fun e!4287469 () Bool)

(assert (=> start!695076 e!4287469))

(declare-fun e!4287468 () Bool)

(assert (=> start!695076 e!4287468))

(declare-fun b!7133951 () Bool)

(declare-fun l2!1482 () List!69277)

(declare-fun subseq!773 (List!69277 List!69277) Bool)

(declare-fun ++!16243 (List!69277 List!69277) List!69277)

(assert (=> b!7133951 (= e!4287470 (not (subseq!773 l2!1482 (++!16243 l1!1513 l2!1482))))))

(assert (=> b!7133951 (subseq!773 l2!1482 l2!1482)))

(declare-datatypes ((Unit!163071 0))(
  ( (Unit!163072) )
))
(declare-fun lt!2565306 () Unit!163071)

(declare-fun lemmaSubseqRefl!179 (List!69277) Unit!163071)

(assert (=> b!7133951 (= lt!2565306 (lemmaSubseqRefl!179 l2!1482))))

(declare-fun b!7133952 () Bool)

(declare-fun tp_is_empty!45847 () Bool)

(declare-fun tp!1966466 () Bool)

(assert (=> b!7133952 (= e!4287469 (and tp_is_empty!45847 tp!1966466))))

(declare-fun b!7133953 () Bool)

(declare-fun tp!1966467 () Bool)

(assert (=> b!7133953 (= e!4287468 (and tp_is_empty!45847 tp!1966467))))

(assert (= (and start!695076 res!2910907) b!7133951))

(assert (= (and start!695076 ((_ is Cons!69153) l1!1513)) b!7133952))

(assert (= (and start!695076 ((_ is Cons!69153) l2!1482)) b!7133953))

(declare-fun m!7850882 () Bool)

(assert (=> b!7133951 m!7850882))

(assert (=> b!7133951 m!7850882))

(declare-fun m!7850884 () Bool)

(assert (=> b!7133951 m!7850884))

(declare-fun m!7850886 () Bool)

(assert (=> b!7133951 m!7850886))

(declare-fun m!7850888 () Bool)

(assert (=> b!7133951 m!7850888))

(check-sat (not b!7133951) (not b!7133952) (not b!7133953) tp_is_empty!45847)
(check-sat)
(get-model)

(declare-fun b!7133977 () Bool)

(declare-fun e!4287494 () Bool)

(assert (=> b!7133977 (= e!4287494 (subseq!773 l2!1482 (t!383294 (++!16243 l1!1513 l2!1482))))))

(declare-fun b!7133974 () Bool)

(declare-fun e!4287493 () Bool)

(declare-fun e!4287492 () Bool)

(assert (=> b!7133974 (= e!4287493 e!4287492)))

(declare-fun res!2910931 () Bool)

(assert (=> b!7133974 (=> (not res!2910931) (not e!4287492))))

(assert (=> b!7133974 (= res!2910931 ((_ is Cons!69153) (++!16243 l1!1513 l2!1482)))))

(declare-fun b!7133975 () Bool)

(assert (=> b!7133975 (= e!4287492 e!4287494)))

(declare-fun res!2910928 () Bool)

(assert (=> b!7133975 (=> res!2910928 e!4287494)))

(declare-fun e!4287491 () Bool)

(assert (=> b!7133975 (= res!2910928 e!4287491)))

(declare-fun res!2910929 () Bool)

(assert (=> b!7133975 (=> (not res!2910929) (not e!4287491))))

(assert (=> b!7133975 (= res!2910929 (= (h!75601 l2!1482) (h!75601 (++!16243 l1!1513 l2!1482))))))

(declare-fun d!2226078 () Bool)

(declare-fun res!2910930 () Bool)

(assert (=> d!2226078 (=> res!2910930 e!4287493)))

(assert (=> d!2226078 (= res!2910930 ((_ is Nil!69153) l2!1482))))

(assert (=> d!2226078 (= (subseq!773 l2!1482 (++!16243 l1!1513 l2!1482)) e!4287493)))

(declare-fun b!7133976 () Bool)

(assert (=> b!7133976 (= e!4287491 (subseq!773 (t!383294 l2!1482) (t!383294 (++!16243 l1!1513 l2!1482))))))

(assert (= (and d!2226078 (not res!2910930)) b!7133974))

(assert (= (and b!7133974 res!2910931) b!7133975))

(assert (= (and b!7133975 res!2910929) b!7133976))

(assert (= (and b!7133975 (not res!2910928)) b!7133977))

(declare-fun m!7850894 () Bool)

(assert (=> b!7133977 m!7850894))

(declare-fun m!7850896 () Bool)

(assert (=> b!7133976 m!7850896))

(assert (=> b!7133951 d!2226078))

(declare-fun b!7134008 () Bool)

(declare-fun res!2910946 () Bool)

(declare-fun e!4287511 () Bool)

(assert (=> b!7134008 (=> (not res!2910946) (not e!4287511))))

(declare-fun lt!2565315 () List!69277)

(declare-fun size!41503 (List!69277) Int)

(assert (=> b!7134008 (= res!2910946 (= (size!41503 lt!2565315) (+ (size!41503 l1!1513) (size!41503 l2!1482))))))

(declare-fun b!7134007 () Bool)

(declare-fun e!4287512 () List!69277)

(assert (=> b!7134007 (= e!4287512 (Cons!69153 (h!75601 l1!1513) (++!16243 (t!383294 l1!1513) l2!1482)))))

(declare-fun b!7134009 () Bool)

(assert (=> b!7134009 (= e!4287511 (or (not (= l2!1482 Nil!69153)) (= lt!2565315 l1!1513)))))

(declare-fun b!7134006 () Bool)

(assert (=> b!7134006 (= e!4287512 l2!1482)))

(declare-fun d!2226082 () Bool)

(assert (=> d!2226082 e!4287511))

(declare-fun res!2910947 () Bool)

(assert (=> d!2226082 (=> (not res!2910947) (not e!4287511))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14153 (List!69277) (InoxSet B!3425))

(assert (=> d!2226082 (= res!2910947 (= (content!14153 lt!2565315) ((_ map or) (content!14153 l1!1513) (content!14153 l2!1482))))))

(assert (=> d!2226082 (= lt!2565315 e!4287512)))

(declare-fun c!1330476 () Bool)

(assert (=> d!2226082 (= c!1330476 ((_ is Nil!69153) l1!1513))))

(assert (=> d!2226082 (= (++!16243 l1!1513 l2!1482) lt!2565315)))

(assert (= (and d!2226082 c!1330476) b!7134006))

(assert (= (and d!2226082 (not c!1330476)) b!7134007))

(assert (= (and d!2226082 res!2910947) b!7134008))

(assert (= (and b!7134008 res!2910946) b!7134009))

(declare-fun m!7850918 () Bool)

(assert (=> b!7134008 m!7850918))

(declare-fun m!7850920 () Bool)

(assert (=> b!7134008 m!7850920))

(declare-fun m!7850922 () Bool)

(assert (=> b!7134008 m!7850922))

(declare-fun m!7850924 () Bool)

(assert (=> b!7134007 m!7850924))

(declare-fun m!7850926 () Bool)

(assert (=> d!2226082 m!7850926))

(declare-fun m!7850928 () Bool)

(assert (=> d!2226082 m!7850928))

(declare-fun m!7850930 () Bool)

(assert (=> d!2226082 m!7850930))

(assert (=> b!7133951 d!2226082))

(declare-fun b!7134015 () Bool)

(declare-fun e!4287518 () Bool)

(assert (=> b!7134015 (= e!4287518 (subseq!773 l2!1482 (t!383294 l2!1482)))))

(declare-fun b!7134012 () Bool)

(declare-fun e!4287517 () Bool)

(declare-fun e!4287516 () Bool)

(assert (=> b!7134012 (= e!4287517 e!4287516)))

(declare-fun res!2910951 () Bool)

(assert (=> b!7134012 (=> (not res!2910951) (not e!4287516))))

(assert (=> b!7134012 (= res!2910951 ((_ is Cons!69153) l2!1482))))

(declare-fun b!7134013 () Bool)

(assert (=> b!7134013 (= e!4287516 e!4287518)))

(declare-fun res!2910948 () Bool)

(assert (=> b!7134013 (=> res!2910948 e!4287518)))

(declare-fun e!4287515 () Bool)

(assert (=> b!7134013 (= res!2910948 e!4287515)))

(declare-fun res!2910949 () Bool)

(assert (=> b!7134013 (=> (not res!2910949) (not e!4287515))))

(assert (=> b!7134013 (= res!2910949 (= (h!75601 l2!1482) (h!75601 l2!1482)))))

(declare-fun d!2226088 () Bool)

(declare-fun res!2910950 () Bool)

(assert (=> d!2226088 (=> res!2910950 e!4287517)))

(assert (=> d!2226088 (= res!2910950 ((_ is Nil!69153) l2!1482))))

(assert (=> d!2226088 (= (subseq!773 l2!1482 l2!1482) e!4287517)))

(declare-fun b!7134014 () Bool)

(assert (=> b!7134014 (= e!4287515 (subseq!773 (t!383294 l2!1482) (t!383294 l2!1482)))))

(assert (= (and d!2226088 (not res!2910950)) b!7134012))

(assert (= (and b!7134012 res!2910951) b!7134013))

(assert (= (and b!7134013 res!2910949) b!7134014))

(assert (= (and b!7134013 (not res!2910948)) b!7134015))

(declare-fun m!7850932 () Bool)

(assert (=> b!7134015 m!7850932))

(declare-fun m!7850934 () Bool)

(assert (=> b!7134014 m!7850934))

(assert (=> b!7133951 d!2226088))

(declare-fun d!2226090 () Bool)

(assert (=> d!2226090 (subseq!773 l2!1482 l2!1482)))

(declare-fun lt!2565318 () Unit!163071)

(declare-fun choose!55141 (List!69277) Unit!163071)

(assert (=> d!2226090 (= lt!2565318 (choose!55141 l2!1482))))

(assert (=> d!2226090 (= (lemmaSubseqRefl!179 l2!1482) lt!2565318)))

(declare-fun bs!1887068 () Bool)

(assert (= bs!1887068 d!2226090))

(assert (=> bs!1887068 m!7850886))

(declare-fun m!7850936 () Bool)

(assert (=> bs!1887068 m!7850936))

(assert (=> b!7133951 d!2226090))

(declare-fun b!7134020 () Bool)

(declare-fun e!4287521 () Bool)

(declare-fun tp!1966474 () Bool)

(assert (=> b!7134020 (= e!4287521 (and tp_is_empty!45847 tp!1966474))))

(assert (=> b!7133952 (= tp!1966466 e!4287521)))

(assert (= (and b!7133952 ((_ is Cons!69153) (t!383294 l1!1513))) b!7134020))

(declare-fun b!7134021 () Bool)

(declare-fun e!4287522 () Bool)

(declare-fun tp!1966475 () Bool)

(assert (=> b!7134021 (= e!4287522 (and tp_is_empty!45847 tp!1966475))))

(assert (=> b!7133953 (= tp!1966467 e!4287522)))

(assert (= (and b!7133953 ((_ is Cons!69153) (t!383294 l2!1482))) b!7134021))

(check-sat (not b!7133976) (not b!7134014) (not b!7134020) (not d!2226090) (not b!7134007) (not b!7134015) (not b!7133977) (not b!7134008) (not b!7134021) (not d!2226082) tp_is_empty!45847)
(check-sat)
