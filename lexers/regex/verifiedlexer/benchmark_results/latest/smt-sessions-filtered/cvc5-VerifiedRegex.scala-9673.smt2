; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507288 () Bool)

(assert start!507288)

(declare-fun b!4856076 () Bool)

(declare-fun e!3036049 () Bool)

(declare-fun tp!1366267 () Bool)

(assert (=> b!4856076 (= e!3036049 tp!1366267)))

(declare-fun b!4856077 () Bool)

(declare-fun e!3036051 () Bool)

(declare-datatypes ((T!98558 0))(
  ( (T!98559 (val!22393 Int)) )
))
(declare-datatypes ((List!55861 0))(
  ( (Nil!55737) (Cons!55737 (h!62185 T!98558) (t!363407 List!55861)) )
))
(declare-datatypes ((IArray!29095 0))(
  ( (IArray!29096 (innerList!14605 List!55861)) )
))
(declare-datatypes ((Conc!14517 0))(
  ( (Node!14517 (left!40496 Conc!14517) (right!40826 Conc!14517) (csize!29264 Int) (cheight!14728 Int)) (Leaf!24191 (xs!17823 IArray!29095) (csize!29265 Int)) (Empty!14517) )
))
(declare-fun t!4677 () Conc!14517)

(declare-fun inv!71521 (IArray!29095) Bool)

(assert (=> b!4856077 (= e!3036051 (and (inv!71521 (xs!17823 t!4677)) e!3036049))))

(declare-fun b!4856078 () Bool)

(declare-fun res!2073020 () Bool)

(declare-fun e!3036050 () Bool)

(assert (=> b!4856078 (=> (not res!2073020) (not e!3036050))))

(declare-fun isEmpty!29808 (Conc!14517) Bool)

(assert (=> b!4856078 (= res!2073020 (not (isEmpty!29808 t!4677)))))

(declare-fun b!4856079 () Bool)

(assert (=> b!4856079 (= e!3036050 false)))

(declare-fun lt!1991378 () List!55861)

(declare-fun ++!12122 (List!55861 List!55861) List!55861)

(declare-fun list!17397 (Conc!14517) List!55861)

(assert (=> b!4856079 (= lt!1991378 (++!12122 (list!17397 (left!40496 t!4677)) (list!17397 (right!40826 t!4677))))))

(declare-fun tp!1366268 () Bool)

(declare-fun b!4856080 () Bool)

(declare-fun tp!1366266 () Bool)

(declare-fun inv!71522 (Conc!14517) Bool)

(assert (=> b!4856080 (= e!3036051 (and (inv!71522 (left!40496 t!4677)) tp!1366266 (inv!71522 (right!40826 t!4677)) tp!1366268))))

(declare-fun b!4856081 () Bool)

(declare-fun res!2073021 () Bool)

(assert (=> b!4856081 (=> (not res!2073021) (not e!3036050))))

(assert (=> b!4856081 (= res!2073021 (and (not (is-Leaf!24191 t!4677)) (is-Node!14517 t!4677)))))

(declare-fun res!2073022 () Bool)

(assert (=> start!507288 (=> (not res!2073022) (not e!3036050))))

(declare-fun isBalanced!3923 (Conc!14517) Bool)

(assert (=> start!507288 (= res!2073022 (isBalanced!3923 t!4677))))

(assert (=> start!507288 e!3036050))

(assert (=> start!507288 (and (inv!71522 t!4677) e!3036051)))

(assert (= (and start!507288 res!2073022) b!4856078))

(assert (= (and b!4856078 res!2073020) b!4856081))

(assert (= (and b!4856081 res!2073021) b!4856079))

(assert (= (and start!507288 (is-Node!14517 t!4677)) b!4856080))

(assert (= b!4856077 b!4856076))

(assert (= (and start!507288 (is-Leaf!24191 t!4677)) b!4856077))

(declare-fun m!5853858 () Bool)

(assert (=> b!4856078 m!5853858))

(declare-fun m!5853860 () Bool)

(assert (=> start!507288 m!5853860))

(declare-fun m!5853862 () Bool)

(assert (=> start!507288 m!5853862))

(declare-fun m!5853864 () Bool)

(assert (=> b!4856080 m!5853864))

(declare-fun m!5853866 () Bool)

(assert (=> b!4856080 m!5853866))

(declare-fun m!5853868 () Bool)

(assert (=> b!4856079 m!5853868))

(declare-fun m!5853870 () Bool)

(assert (=> b!4856079 m!5853870))

(assert (=> b!4856079 m!5853868))

(assert (=> b!4856079 m!5853870))

(declare-fun m!5853872 () Bool)

(assert (=> b!4856079 m!5853872))

(declare-fun m!5853874 () Bool)

(assert (=> b!4856077 m!5853874))

(push 1)

(assert (not b!4856078))

(assert (not start!507288))

(assert (not b!4856080))

(assert (not b!4856079))

(assert (not b!4856077))

(assert (not b!4856076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

