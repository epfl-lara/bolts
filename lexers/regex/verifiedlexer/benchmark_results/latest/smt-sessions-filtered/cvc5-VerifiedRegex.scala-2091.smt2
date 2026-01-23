; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105902 () Bool)

(assert start!105902)

(declare-fun b!1191237 () Bool)

(declare-fun e!765771 () Bool)

(assert (=> b!1191237 (= e!765771 false)))

(declare-fun lt!409254 () Int)

(declare-datatypes ((T!21486 0))(
  ( (T!21487 (val!3845 Int)) )
))
(declare-datatypes ((List!12024 0))(
  ( (Nil!12000) (Cons!12000 (h!17401 T!21486) (t!112252 List!12024)) )
))
(declare-fun lt!409253 () List!12024)

(declare-fun size!9484 (List!12024) Int)

(assert (=> b!1191237 (= lt!409254 (size!9484 lt!409253))))

(declare-fun lt!409255 () Int)

(declare-fun lt!409256 () List!12024)

(assert (=> b!1191237 (= lt!409255 (size!9484 lt!409256))))

(declare-datatypes ((IArray!7871 0))(
  ( (IArray!7872 (innerList!3993 List!12024)) )
))
(declare-datatypes ((Conc!3933 0))(
  ( (Node!3933 (left!10448 Conc!3933) (right!10778 Conc!3933) (csize!8096 Int) (cheight!4144 Int)) (Leaf!6025 (xs!6638 IArray!7871) (csize!8097 Int)) (Empty!3933) )
))
(declare-fun t!4115 () Conc!3933)

(declare-fun list!4412 (Conc!3933) List!12024)

(assert (=> b!1191237 (= lt!409253 (list!4412 (right!10778 t!4115)))))

(assert (=> b!1191237 (= lt!409256 (list!4412 (left!10448 t!4115)))))

(declare-fun b!1191238 () Bool)

(declare-fun res!538140 () Bool)

(assert (=> b!1191238 (=> (not res!538140) (not e!765771))))

(declare-fun isBalanced!1118 (Conc!3933) Bool)

(assert (=> b!1191238 (= res!538140 (isBalanced!1118 t!4115))))

(declare-fun b!1191239 () Bool)

(declare-fun res!538138 () Bool)

(assert (=> b!1191239 (=> (not res!538138) (not e!765771))))

(declare-fun until!31 () Int)

(declare-fun size!9485 (Conc!3933) Int)

(assert (=> b!1191239 (= res!538138 (<= until!31 (size!9485 t!4115)))))

(declare-fun tp!339932 () Bool)

(declare-fun b!1191240 () Bool)

(declare-fun tp!339933 () Bool)

(declare-fun e!765770 () Bool)

(declare-fun inv!15894 (Conc!3933) Bool)

(assert (=> b!1191240 (= e!765770 (and (inv!15894 (left!10448 t!4115)) tp!339933 (inv!15894 (right!10778 t!4115)) tp!339932))))

(declare-fun b!1191241 () Bool)

(declare-fun e!765769 () Bool)

(declare-fun inv!15895 (IArray!7871) Bool)

(assert (=> b!1191241 (= e!765770 (and (inv!15895 (xs!6638 t!4115)) e!765769))))

(declare-fun res!538137 () Bool)

(assert (=> start!105902 (=> (not res!538137) (not e!765771))))

(declare-fun from!553 () Int)

(assert (=> start!105902 (= res!538137 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105902 e!765771))

(assert (=> start!105902 true))

(assert (=> start!105902 (and (inv!15894 t!4115) e!765770)))

(declare-fun b!1191242 () Bool)

(declare-fun tp!339934 () Bool)

(assert (=> b!1191242 (= e!765769 tp!339934)))

(declare-fun b!1191243 () Bool)

(declare-fun res!538139 () Bool)

(assert (=> b!1191243 (=> (not res!538139) (not e!765771))))

(assert (=> b!1191243 (= res!538139 (and (not (= from!553 until!31)) (not (is-Leaf!6025 t!4115)) (is-Node!3933 t!4115)))))

(assert (= (and start!105902 res!538137) b!1191239))

(assert (= (and b!1191239 res!538138) b!1191238))

(assert (= (and b!1191238 res!538140) b!1191243))

(assert (= (and b!1191243 res!538139) b!1191237))

(assert (= (and start!105902 (is-Node!3933 t!4115)) b!1191240))

(assert (= b!1191241 b!1191242))

(assert (= (and start!105902 (is-Leaf!6025 t!4115)) b!1191241))

(declare-fun m!1366179 () Bool)

(assert (=> b!1191240 m!1366179))

(declare-fun m!1366181 () Bool)

(assert (=> b!1191240 m!1366181))

(declare-fun m!1366183 () Bool)

(assert (=> b!1191239 m!1366183))

(declare-fun m!1366185 () Bool)

(assert (=> b!1191241 m!1366185))

(declare-fun m!1366187 () Bool)

(assert (=> b!1191237 m!1366187))

(declare-fun m!1366189 () Bool)

(assert (=> b!1191237 m!1366189))

(declare-fun m!1366191 () Bool)

(assert (=> b!1191237 m!1366191))

(declare-fun m!1366193 () Bool)

(assert (=> b!1191237 m!1366193))

(declare-fun m!1366195 () Bool)

(assert (=> start!105902 m!1366195))

(declare-fun m!1366197 () Bool)

(assert (=> b!1191238 m!1366197))

(push 1)

(assert (not b!1191239))

(assert (not b!1191242))

(assert (not start!105902))

(assert (not b!1191238))

(assert (not b!1191240))

(assert (not b!1191241))

(assert (not b!1191237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

