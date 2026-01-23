; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507778 () Bool)

(assert start!507778)

(declare-fun res!2074472 () Bool)

(declare-fun e!3037897 () Bool)

(assert (=> start!507778 (=> (not res!2074472) (not e!3037897))))

(declare-datatypes ((B!2921 0))(
  ( (B!2922 (val!22416 Int)) )
))
(declare-datatypes ((List!55884 0))(
  ( (Nil!55760) (Cons!55760 (h!62208 B!2921) (t!363504 List!55884)) )
))
(declare-fun l1!1299 () List!55884)

(declare-fun l2!1268 () List!55884)

(declare-fun isEmpty!29849 (List!55884) Bool)

(declare-fun ++!12145 (List!55884 List!55884) List!55884)

(assert (=> start!507778 (= res!2074472 (not (isEmpty!29849 (++!12145 l1!1299 l2!1268))))))

(assert (=> start!507778 e!3037897))

(declare-fun e!3037900 () Bool)

(assert (=> start!507778 e!3037900))

(declare-fun e!3037896 () Bool)

(assert (=> start!507778 e!3037896))

(declare-fun b!4859365 () Bool)

(declare-fun e!3037898 () Bool)

(declare-fun lt!1991984 () List!55884)

(declare-fun last!412 (List!55884) B!2921)

(assert (=> b!4859365 (= e!3037898 (= (last!412 lt!1991984) (last!412 (t!363504 l1!1299))))))

(declare-fun b!4859366 () Bool)

(declare-fun res!2074468 () Bool)

(assert (=> b!4859366 (=> (not res!2074468) (not e!3037897))))

(assert (=> b!4859366 (= res!2074468 (not (isEmpty!29849 (t!363504 l1!1299))))))

(declare-fun b!4859367 () Bool)

(declare-fun tp_is_empty!35539 () Bool)

(declare-fun tp!1366852 () Bool)

(assert (=> b!4859367 (= e!3037900 (and tp_is_empty!35539 tp!1366852))))

(declare-fun b!4859368 () Bool)

(declare-fun tp!1366853 () Bool)

(assert (=> b!4859368 (= e!3037896 (and tp_is_empty!35539 tp!1366853))))

(declare-fun b!4859369 () Bool)

(declare-fun e!3037894 () Bool)

(assert (=> b!4859369 (= e!3037894 (= (last!412 lt!1991984) (last!412 l2!1268)))))

(declare-fun b!4859370 () Bool)

(declare-fun res!2074467 () Bool)

(assert (=> b!4859370 (=> (not res!2074467) (not e!3037897))))

(get-info :version)

(assert (=> b!4859370 (= res!2074467 ((_ is Cons!55760) l1!1299))))

(declare-fun b!4859371 () Bool)

(declare-fun e!3037895 () Bool)

(assert (=> b!4859371 (= e!3037897 e!3037895)))

(declare-fun res!2074469 () Bool)

(assert (=> b!4859371 (=> (not res!2074469) (not e!3037895))))

(assert (=> b!4859371 (= res!2074469 (not (isEmpty!29849 lt!1991984)))))

(assert (=> b!4859371 (= lt!1991984 (++!12145 (t!363504 l1!1299) l2!1268))))

(declare-fun b!4859372 () Bool)

(declare-fun e!3037899 () Bool)

(assert (=> b!4859372 (= e!3037899 e!3037894)))

(declare-fun res!2074470 () Bool)

(assert (=> b!4859372 (=> (not res!2074470) (not e!3037894))))

(declare-fun lt!1991983 () Bool)

(assert (=> b!4859372 (= res!2074470 (not lt!1991983))))

(declare-fun b!4859373 () Bool)

(assert (=> b!4859373 (= e!3037895 (not true))))

(assert (=> b!4859373 e!3037899))

(declare-fun res!2074471 () Bool)

(assert (=> b!4859373 (=> res!2074471 e!3037899)))

(assert (=> b!4859373 (= res!2074471 e!3037898)))

(declare-fun res!2074473 () Bool)

(assert (=> b!4859373 (=> (not res!2074473) (not e!3037898))))

(assert (=> b!4859373 (= res!2074473 lt!1991983)))

(assert (=> b!4859373 (= lt!1991983 (isEmpty!29849 l2!1268))))

(declare-datatypes ((Unit!145863 0))(
  ( (Unit!145864) )
))
(declare-fun lt!1991985 () Unit!145863)

(declare-fun lemmaLastOfConcatIsLastOfRhs!38 (List!55884 List!55884) Unit!145863)

(assert (=> b!4859373 (= lt!1991985 (lemmaLastOfConcatIsLastOfRhs!38 (t!363504 l1!1299) l2!1268))))

(assert (= (and start!507778 res!2074472) b!4859370))

(assert (= (and b!4859370 res!2074467) b!4859366))

(assert (= (and b!4859366 res!2074468) b!4859371))

(assert (= (and b!4859371 res!2074469) b!4859373))

(assert (= (and b!4859373 res!2074473) b!4859365))

(assert (= (and b!4859373 (not res!2074471)) b!4859372))

(assert (= (and b!4859372 res!2074470) b!4859369))

(assert (= (and start!507778 ((_ is Cons!55760) l1!1299)) b!4859367))

(assert (= (and start!507778 ((_ is Cons!55760) l2!1268)) b!4859368))

(declare-fun m!5857718 () Bool)

(assert (=> b!4859371 m!5857718))

(declare-fun m!5857720 () Bool)

(assert (=> b!4859371 m!5857720))

(declare-fun m!5857722 () Bool)

(assert (=> b!4859369 m!5857722))

(declare-fun m!5857724 () Bool)

(assert (=> b!4859369 m!5857724))

(declare-fun m!5857726 () Bool)

(assert (=> b!4859373 m!5857726))

(declare-fun m!5857728 () Bool)

(assert (=> b!4859373 m!5857728))

(declare-fun m!5857730 () Bool)

(assert (=> start!507778 m!5857730))

(assert (=> start!507778 m!5857730))

(declare-fun m!5857732 () Bool)

(assert (=> start!507778 m!5857732))

(assert (=> b!4859365 m!5857722))

(declare-fun m!5857734 () Bool)

(assert (=> b!4859365 m!5857734))

(declare-fun m!5857736 () Bool)

(assert (=> b!4859366 m!5857736))

(check-sat (not b!4859369) (not b!4859365) (not b!4859368) (not start!507778) (not b!4859371) tp_is_empty!35539 (not b!4859373) (not b!4859366) (not b!4859367))
(check-sat)
