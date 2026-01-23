; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533958 () Bool)

(assert start!533958)

(declare-fun b!5048553 () Bool)

(declare-fun e!3152097 () Bool)

(declare-fun e!3152098 () Bool)

(assert (=> b!5048553 (= e!3152097 e!3152098)))

(declare-fun res!2150190 () Bool)

(assert (=> b!5048553 (=> (not res!2150190) (not e!3152098))))

(declare-datatypes ((T!104390 0))(
  ( (T!104391 (val!23544 Int)) )
))
(declare-datatypes ((List!58454 0))(
  ( (Nil!58330) (Cons!58330 (h!64778 T!104390) (t!371093 List!58454)) )
))
(declare-fun l!2763 () List!58454)

(declare-fun lt!2086024 () Int)

(declare-fun i!658 () Int)

(get-info :version)

(assert (=> b!5048553 (= res!2150190 (and (<= i!658 lt!2086024) (not ((_ is Nil!58330) l!2763)) (= i!658 0)))))

(declare-fun size!38955 (List!58454) Int)

(assert (=> b!5048553 (= lt!2086024 (size!38955 l!2763))))

(declare-fun res!2150187 () Bool)

(assert (=> start!533958 (=> (not res!2150187) (not e!3152097))))

(assert (=> start!533958 (= res!2150187 (<= 0 i!658))))

(assert (=> start!533958 e!3152097))

(assert (=> start!533958 true))

(declare-fun e!3152096 () Bool)

(assert (=> start!533958 e!3152096))

(declare-fun b!5048554 () Bool)

(declare-fun tp_is_empty!36843 () Bool)

(declare-fun tp!1411945 () Bool)

(assert (=> b!5048554 (= e!3152096 (and tp_is_empty!36843 tp!1411945))))

(declare-fun b!5048555 () Bool)

(declare-fun e!3152099 () Bool)

(declare-fun e!3152100 () Bool)

(assert (=> b!5048555 (= e!3152099 e!3152100)))

(declare-fun res!2150188 () Bool)

(assert (=> b!5048555 (=> (not res!2150188) (not e!3152100))))

(declare-fun lt!2086025 () List!58454)

(declare-fun lt!2086026 () List!58454)

(assert (=> b!5048555 (= res!2150188 (= lt!2086025 lt!2086026))))

(declare-fun take!847 (List!58454 Int) List!58454)

(assert (=> b!5048555 (= lt!2086026 (take!847 l!2763 lt!2086024))))

(declare-fun b!5048556 () Bool)

(assert (=> b!5048556 (= e!3152098 e!3152099)))

(declare-fun res!2150191 () Bool)

(assert (=> b!5048556 (=> (not res!2150191) (not e!3152099))))

(declare-fun lt!2086027 () List!58454)

(assert (=> b!5048556 (= res!2150191 (= lt!2086025 (take!847 lt!2086027 lt!2086024)))))

(declare-fun slice!875 (List!58454 Int Int) List!58454)

(assert (=> b!5048556 (= lt!2086025 (slice!875 l!2763 0 lt!2086024))))

(declare-fun drop!2656 (List!58454 Int) List!58454)

(assert (=> b!5048556 (= lt!2086027 (drop!2656 l!2763 0))))

(declare-fun b!5048557 () Bool)

(declare-fun e!3152095 () Bool)

(assert (=> b!5048557 (= e!3152095 (<= 0 lt!2086024))))

(assert (=> b!5048557 (= lt!2086026 lt!2086025)))

(declare-datatypes ((Unit!149527 0))(
  ( (Unit!149528) )
))
(declare-fun lt!2086029 () Unit!149527)

(declare-fun takeSliceLemma!2 (List!58454 Int) Unit!149527)

(assert (=> b!5048557 (= lt!2086029 (takeSliceLemma!2 l!2763 lt!2086024))))

(declare-fun b!5048558 () Bool)

(declare-fun res!2150189 () Bool)

(assert (=> b!5048558 (=> (not res!2150189) (not e!3152098))))

(assert (=> b!5048558 (= res!2150189 (= (drop!2656 l!2763 i!658) l!2763))))

(declare-fun b!5048559 () Bool)

(assert (=> b!5048559 (= e!3152100 (not e!3152095))))

(declare-fun res!2150186 () Bool)

(assert (=> b!5048559 (=> res!2150186 e!3152095)))

(assert (=> b!5048559 (= res!2150186 (not (= l!2763 lt!2086026)))))

(assert (=> b!5048559 (= lt!2086026 l!2763)))

(declare-fun lt!2086028 () Unit!149527)

(declare-fun takeFullLemma!8 (List!58454) Unit!149527)

(assert (=> b!5048559 (= lt!2086028 (takeFullLemma!8 l!2763))))

(assert (= (and start!533958 res!2150187) b!5048553))

(assert (= (and b!5048553 res!2150190) b!5048558))

(assert (= (and b!5048558 res!2150189) b!5048556))

(assert (= (and b!5048556 res!2150191) b!5048555))

(assert (= (and b!5048555 res!2150188) b!5048559))

(assert (= (and b!5048559 (not res!2150186)) b!5048557))

(assert (= (and start!533958 ((_ is Cons!58330) l!2763)) b!5048554))

(declare-fun m!6083754 () Bool)

(assert (=> b!5048555 m!6083754))

(declare-fun m!6083756 () Bool)

(assert (=> b!5048558 m!6083756))

(declare-fun m!6083758 () Bool)

(assert (=> b!5048559 m!6083758))

(declare-fun m!6083760 () Bool)

(assert (=> b!5048556 m!6083760))

(declare-fun m!6083762 () Bool)

(assert (=> b!5048556 m!6083762))

(declare-fun m!6083764 () Bool)

(assert (=> b!5048556 m!6083764))

(declare-fun m!6083766 () Bool)

(assert (=> b!5048553 m!6083766))

(declare-fun m!6083768 () Bool)

(assert (=> b!5048557 m!6083768))

(check-sat (not b!5048553) (not b!5048556) tp_is_empty!36843 (not b!5048558) (not b!5048557) (not b!5048554) (not b!5048559) (not b!5048555))
(check-sat)
