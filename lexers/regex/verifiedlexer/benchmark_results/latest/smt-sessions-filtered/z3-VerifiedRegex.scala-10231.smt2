; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533946 () Bool)

(assert start!533946)

(declare-fun b!5048448 () Bool)

(declare-fun e!3152014 () Bool)

(declare-fun e!3152016 () Bool)

(assert (=> b!5048448 (= e!3152014 e!3152016)))

(declare-fun res!2150101 () Bool)

(assert (=> b!5048448 (=> (not res!2150101) (not e!3152016))))

(declare-datatypes ((T!104348 0))(
  ( (T!104349 (val!23538 Int)) )
))
(declare-datatypes ((List!58448 0))(
  ( (Nil!58324) (Cons!58324 (h!64772 T!104348) (t!371087 List!58448)) )
))
(declare-fun l!2763 () List!58448)

(declare-fun lt!2085957 () Int)

(declare-fun i!658 () Int)

(get-info :version)

(assert (=> b!5048448 (= res!2150101 (and (<= i!658 lt!2085957) (not ((_ is Nil!58324) l!2763)) (= i!658 0)))))

(declare-fun size!38949 (List!58448) Int)

(assert (=> b!5048448 (= lt!2085957 (size!38949 l!2763))))

(declare-fun b!5048449 () Bool)

(declare-fun res!2150100 () Bool)

(assert (=> b!5048449 (=> (not res!2150100) (not e!3152016))))

(declare-fun drop!2650 (List!58448 Int) List!58448)

(assert (=> b!5048449 (= res!2150100 (= (drop!2650 l!2763 i!658) l!2763))))

(declare-fun b!5048450 () Bool)

(assert (=> b!5048450 (= e!3152016 (> 0 lt!2085957))))

(declare-fun b!5048451 () Bool)

(declare-fun e!3152015 () Bool)

(declare-fun tp_is_empty!36831 () Bool)

(declare-fun tp!1411927 () Bool)

(assert (=> b!5048451 (= e!3152015 (and tp_is_empty!36831 tp!1411927))))

(declare-fun res!2150099 () Bool)

(assert (=> start!533946 (=> (not res!2150099) (not e!3152014))))

(assert (=> start!533946 (= res!2150099 (<= 0 i!658))))

(assert (=> start!533946 e!3152014))

(assert (=> start!533946 true))

(assert (=> start!533946 e!3152015))

(assert (= (and start!533946 res!2150099) b!5048448))

(assert (= (and b!5048448 res!2150101) b!5048449))

(assert (= (and b!5048449 res!2150100) b!5048450))

(assert (= (and start!533946 ((_ is Cons!58324) l!2763)) b!5048451))

(declare-fun m!6083686 () Bool)

(assert (=> b!5048448 m!6083686))

(declare-fun m!6083688 () Bool)

(assert (=> b!5048449 m!6083688))

(check-sat (not b!5048448) (not b!5048449) (not b!5048451) tp_is_empty!36831)
(check-sat)
