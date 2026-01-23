; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507816 () Bool)

(assert start!507816)

(declare-fun b!4859660 () Bool)

(declare-fun e!3038105 () Bool)

(declare-fun tp_is_empty!35553 () Bool)

(declare-fun tp!1366911 () Bool)

(assert (=> b!4859660 (= e!3038105 (and tp_is_empty!35553 tp!1366911))))

(declare-fun b!4859661 () Bool)

(declare-fun e!3038103 () Bool)

(declare-fun tp!1366910 () Bool)

(assert (=> b!4859661 (= e!3038103 (and tp_is_empty!35553 tp!1366910))))

(declare-fun b!4859662 () Bool)

(declare-fun e!3038106 () Bool)

(assert (=> b!4859662 (= e!3038106 false)))

(declare-fun lt!1992080 () Bool)

(declare-fun e!3038107 () Bool)

(assert (=> b!4859662 (= lt!1992080 e!3038107)))

(declare-fun res!2074649 () Bool)

(assert (=> b!4859662 (=> res!2074649 e!3038107)))

(declare-datatypes ((B!2935 0))(
  ( (B!2936 (val!22423 Int)) )
))
(declare-datatypes ((List!55891 0))(
  ( (Nil!55767) (Cons!55767 (h!62215 B!2935) (t!363511 List!55891)) )
))
(declare-fun l2!1268 () List!55891)

(declare-fun isEmpty!29856 (List!55891) Bool)

(assert (=> b!4859662 (= res!2074649 (not (isEmpty!29856 l2!1268)))))

(declare-fun res!2074648 () Bool)

(assert (=> start!507816 (=> (not res!2074648) (not e!3038106))))

(declare-fun lt!1992081 () List!55891)

(assert (=> start!507816 (= res!2074648 (not (isEmpty!29856 lt!1992081)))))

(declare-fun l1!1299 () List!55891)

(declare-fun ++!12152 (List!55891 List!55891) List!55891)

(assert (=> start!507816 (= lt!1992081 (++!12152 l1!1299 l2!1268))))

(assert (=> start!507816 e!3038106))

(assert (=> start!507816 e!3038103))

(assert (=> start!507816 e!3038105))

(declare-fun b!4859663 () Bool)

(declare-fun last!417 (List!55891) B!2935)

(assert (=> b!4859663 (= e!3038107 (not (= (last!417 lt!1992081) (last!417 l1!1299))))))

(declare-fun b!4859664 () Bool)

(declare-fun e!3038104 () Bool)

(assert (=> b!4859664 (= e!3038104 (isEmpty!29856 (t!363511 l1!1299)))))

(declare-fun b!4859665 () Bool)

(declare-fun res!2074651 () Bool)

(assert (=> b!4859665 (=> (not res!2074651) (not e!3038106))))

(assert (=> b!4859665 (= res!2074651 e!3038104)))

(declare-fun res!2074650 () Bool)

(assert (=> b!4859665 (=> res!2074650 e!3038104)))

(assert (=> b!4859665 (= res!2074650 (not (is-Cons!55767 l1!1299)))))

(assert (= (and start!507816 res!2074648) b!4859665))

(assert (= (and b!4859665 (not res!2074650)) b!4859664))

(assert (= (and b!4859665 res!2074651) b!4859662))

(assert (= (and b!4859662 (not res!2074649)) b!4859663))

(assert (= (and start!507816 (is-Cons!55767 l1!1299)) b!4859661))

(assert (= (and start!507816 (is-Cons!55767 l2!1268)) b!4859660))

(declare-fun m!5857952 () Bool)

(assert (=> b!4859662 m!5857952))

(declare-fun m!5857954 () Bool)

(assert (=> start!507816 m!5857954))

(declare-fun m!5857956 () Bool)

(assert (=> start!507816 m!5857956))

(declare-fun m!5857958 () Bool)

(assert (=> b!4859663 m!5857958))

(declare-fun m!5857960 () Bool)

(assert (=> b!4859663 m!5857960))

(declare-fun m!5857962 () Bool)

(assert (=> b!4859664 m!5857962))

(push 1)

(assert (not b!4859664))

(assert (not b!4859660))

(assert (not b!4859663))

(assert (not b!4859661))

(assert (not start!507816))

(assert (not b!4859662))

(assert tp_is_empty!35553)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

