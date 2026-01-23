; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533950 () Bool)

(assert start!533950)

(declare-fun b!5048477 () Bool)

(declare-fun res!2150122 () Bool)

(declare-fun e!3152034 () Bool)

(assert (=> b!5048477 (=> (not res!2150122) (not e!3152034))))

(declare-datatypes ((T!104362 0))(
  ( (T!104363 (val!23540 Int)) )
))
(declare-datatypes ((List!58450 0))(
  ( (Nil!58326) (Cons!58326 (h!64774 T!104362) (t!371089 List!58450)) )
))
(declare-fun l!2763 () List!58450)

(declare-fun i!658 () Int)

(declare-fun drop!2652 (List!58450 Int) List!58450)

(assert (=> b!5048477 (= res!2150122 (= (drop!2652 l!2763 i!658) l!2763))))

(declare-fun b!5048478 () Bool)

(declare-fun e!3152033 () Bool)

(assert (=> b!5048478 (= e!3152033 e!3152034)))

(declare-fun res!2150125 () Bool)

(assert (=> b!5048478 (=> (not res!2150125) (not e!3152034))))

(declare-fun lt!2085963 () Int)

(get-info :version)

(assert (=> b!5048478 (= res!2150125 (and (<= i!658 lt!2085963) (not ((_ is Nil!58326) l!2763)) (= i!658 0)))))

(declare-fun size!38951 (List!58450) Int)

(assert (=> b!5048478 (= lt!2085963 (size!38951 l!2763))))

(declare-fun b!5048479 () Bool)

(declare-fun res!2150124 () Bool)

(assert (=> b!5048479 (=> (not res!2150124) (not e!3152034))))

(declare-fun slice!871 (List!58450 Int Int) List!58450)

(declare-fun take!843 (List!58450 Int) List!58450)

(assert (=> b!5048479 (= res!2150124 (= (slice!871 l!2763 0 lt!2085963) (take!843 (drop!2652 l!2763 0) lt!2085963)))))

(declare-fun b!5048480 () Bool)

(declare-fun e!3152032 () Bool)

(declare-fun tp_is_empty!36835 () Bool)

(declare-fun tp!1411933 () Bool)

(assert (=> b!5048480 (= e!3152032 (and tp_is_empty!36835 tp!1411933))))

(declare-fun b!5048481 () Bool)

(assert (=> b!5048481 (= e!3152034 (> 0 lt!2085963))))

(declare-fun res!2150123 () Bool)

(assert (=> start!533950 (=> (not res!2150123) (not e!3152033))))

(assert (=> start!533950 (= res!2150123 (<= 0 i!658))))

(assert (=> start!533950 e!3152033))

(assert (=> start!533950 true))

(assert (=> start!533950 e!3152032))

(assert (= (and start!533950 res!2150123) b!5048478))

(assert (= (and b!5048478 res!2150125) b!5048477))

(assert (= (and b!5048477 res!2150122) b!5048479))

(assert (= (and b!5048479 res!2150124) b!5048481))

(assert (= (and start!533950 ((_ is Cons!58326) l!2763)) b!5048480))

(declare-fun m!6083700 () Bool)

(assert (=> b!5048477 m!6083700))

(declare-fun m!6083702 () Bool)

(assert (=> b!5048478 m!6083702))

(declare-fun m!6083704 () Bool)

(assert (=> b!5048479 m!6083704))

(declare-fun m!6083706 () Bool)

(assert (=> b!5048479 m!6083706))

(assert (=> b!5048479 m!6083706))

(declare-fun m!6083708 () Bool)

(assert (=> b!5048479 m!6083708))

(check-sat (not b!5048477) tp_is_empty!36835 (not b!5048478) (not b!5048479) (not b!5048480))
(check-sat)
