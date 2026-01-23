; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757628 () Bool)

(assert start!757628)

(assert (=> start!757628 false))

(assert (=> start!757628 true))

(declare-fun e!4740217 () Bool)

(assert (=> start!757628 e!4740217))

(declare-fun e!4740215 () Bool)

(assert (=> start!757628 e!4740215))

(declare-fun b!8046142 () Bool)

(declare-datatypes ((String!85162 0))(
  ( (String!85163 (value!292586 String)) )
))
(declare-datatypes ((List!75445 0))(
  ( (Nil!75319) (Cons!75319 (h!81767 String!85162) (t!391215 List!75445)) )
))
(declare-fun newAcc!87 () List!75445)

(declare-fun tp!2411929 () Bool)

(declare-fun inv!97062 (String!85162) Bool)

(assert (=> b!8046142 (= e!4740217 (and (inv!97062 (h!81767 newAcc!87)) tp!2411929))))

(declare-fun b!8046143 () Bool)

(declare-fun acc!573 () List!75445)

(declare-fun tp!2411928 () Bool)

(assert (=> b!8046143 (= e!4740215 (and (inv!97062 (h!81767 acc!573)) tp!2411928))))

(get-info :version)

(assert (= (and start!757628 ((_ is Cons!75319) newAcc!87)) b!8046142))

(assert (= (and start!757628 ((_ is Cons!75319) acc!573)) b!8046143))

(declare-fun m!8398426 () Bool)

(assert (=> b!8046142 m!8398426))

(declare-fun m!8398428 () Bool)

(assert (=> b!8046143 m!8398428))

(check-sat (not b!8046143) (not b!8046142))
(check-sat)
