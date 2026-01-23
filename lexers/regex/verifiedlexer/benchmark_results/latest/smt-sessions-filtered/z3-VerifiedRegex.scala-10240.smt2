; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534006 () Bool)

(assert start!534006)

(declare-fun b!5048941 () Bool)

(declare-fun e!3152336 () Bool)

(declare-fun tp_is_empty!36867 () Bool)

(declare-fun tp!1411993 () Bool)

(assert (=> b!5048941 (= e!3152336 (and tp_is_empty!36867 tp!1411993))))

(declare-fun lt!2086137 () Int)

(declare-fun b!5048942 () Bool)

(declare-datatypes ((T!104474 0))(
  ( (T!104475 (val!23556 Int)) )
))
(declare-datatypes ((List!58466 0))(
  ( (Nil!58342) (Cons!58342 (h!64790 T!104474) (t!371105 List!58466)) )
))
(declare-fun l!2763 () List!58466)

(declare-fun e!3152338 () Bool)

(declare-fun lt!2086139 () List!58466)

(declare-fun take!853 (List!58466 Int) List!58466)

(assert (=> b!5048942 (= e!3152338 (not (= lt!2086139 (take!853 l!2763 lt!2086137))))))

(declare-fun res!2150348 () Bool)

(declare-fun e!3152337 () Bool)

(assert (=> start!534006 (=> (not res!2150348) (not e!3152337))))

(declare-fun i!658 () Int)

(assert (=> start!534006 (= res!2150348 (<= 0 i!658))))

(assert (=> start!534006 e!3152337))

(assert (=> start!534006 true))

(assert (=> start!534006 e!3152336))

(declare-fun b!5048943 () Bool)

(declare-fun e!3152335 () Bool)

(assert (=> b!5048943 (= e!3152335 e!3152338)))

(declare-fun res!2150346 () Bool)

(assert (=> b!5048943 (=> (not res!2150346) (not e!3152338))))

(declare-fun lt!2086138 () List!58466)

(assert (=> b!5048943 (= res!2150346 (= lt!2086139 (take!853 lt!2086138 lt!2086137)))))

(declare-fun slice!883 (List!58466 Int Int) List!58466)

(assert (=> b!5048943 (= lt!2086139 (slice!883 l!2763 0 lt!2086137))))

(declare-fun drop!2666 (List!58466 Int) List!58466)

(assert (=> b!5048943 (= lt!2086138 (drop!2666 l!2763 0))))

(declare-fun b!5048944 () Bool)

(assert (=> b!5048944 (= e!3152337 e!3152335)))

(declare-fun res!2150349 () Bool)

(assert (=> b!5048944 (=> (not res!2150349) (not e!3152335))))

(get-info :version)

(assert (=> b!5048944 (= res!2150349 (and (<= i!658 lt!2086137) (not ((_ is Nil!58342) l!2763)) (= i!658 0)))))

(declare-fun size!38967 (List!58466) Int)

(assert (=> b!5048944 (= lt!2086137 (size!38967 l!2763))))

(declare-fun b!5048945 () Bool)

(declare-fun res!2150347 () Bool)

(assert (=> b!5048945 (=> (not res!2150347) (not e!3152335))))

(assert (=> b!5048945 (= res!2150347 (= (drop!2666 l!2763 i!658) l!2763))))

(assert (= (and start!534006 res!2150348) b!5048944))

(assert (= (and b!5048944 res!2150349) b!5048945))

(assert (= (and b!5048945 res!2150347) b!5048943))

(assert (= (and b!5048943 res!2150346) b!5048942))

(assert (= (and start!534006 ((_ is Cons!58342) l!2763)) b!5048941))

(declare-fun m!6083946 () Bool)

(assert (=> b!5048942 m!6083946))

(declare-fun m!6083948 () Bool)

(assert (=> b!5048943 m!6083948))

(declare-fun m!6083950 () Bool)

(assert (=> b!5048943 m!6083950))

(declare-fun m!6083952 () Bool)

(assert (=> b!5048943 m!6083952))

(declare-fun m!6083954 () Bool)

(assert (=> b!5048944 m!6083954))

(declare-fun m!6083956 () Bool)

(assert (=> b!5048945 m!6083956))

(check-sat (not b!5048941) (not b!5048944) (not b!5048943) tp_is_empty!36867 (not b!5048942) (not b!5048945))
(check-sat)
