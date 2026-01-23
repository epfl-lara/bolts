; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417058 () Bool)

(assert start!417058)

(declare-fun b!4329159 () Bool)

(declare-fun res!1774141 () Bool)

(declare-fun e!2693862 () Bool)

(assert (=> b!4329159 (=> (not res!1774141) (not e!2693862))))

(declare-datatypes ((K!9815 0))(
  ( (K!9816 (val!16123 Int)) )
))
(declare-datatypes ((V!10061 0))(
  ( (V!10062 (val!16124 Int)) )
))
(declare-datatypes ((tuple2!47588 0))(
  ( (tuple2!47589 (_1!27088 K!9815) (_2!27088 V!10061)) )
))
(declare-datatypes ((List!48622 0))(
  ( (Nil!48498) (Cons!48498 (h!53967 tuple2!47588) (t!355534 List!48622)) )
))
(declare-fun l!13918 () List!48622)

(declare-fun otherK!9 () K!9815)

(declare-fun containsKey!457 (List!48622 K!9815) Bool)

(assert (=> b!4329159 (= res!1774141 (not (containsKey!457 l!13918 otherK!9)))))

(declare-fun tp_is_empty!24433 () Bool)

(declare-fun tp!1328136 () Bool)

(declare-fun e!2693863 () Bool)

(declare-fun tp_is_empty!24435 () Bool)

(declare-fun b!4329160 () Bool)

(assert (=> b!4329160 (= e!2693863 (and tp_is_empty!24433 tp_is_empty!24435 tp!1328136))))

(declare-fun res!1774143 () Bool)

(assert (=> start!417058 (=> (not res!1774143) (not e!2693862))))

(declare-fun noDuplicateKeys!311 (List!48622) Bool)

(assert (=> start!417058 (= res!1774143 (noDuplicateKeys!311 l!13918))))

(assert (=> start!417058 e!2693862))

(assert (=> start!417058 e!2693863))

(assert (=> start!417058 tp_is_empty!24433))

(declare-fun b!4329161 () Bool)

(declare-fun res!1774142 () Bool)

(assert (=> b!4329161 (=> (not res!1774142) (not e!2693862))))

(assert (=> b!4329161 (= res!1774142 (noDuplicateKeys!311 (t!355534 l!13918)))))

(declare-fun b!4329162 () Bool)

(declare-fun res!1774145 () Bool)

(assert (=> b!4329162 (=> (not res!1774145) (not e!2693862))))

(declare-fun key!5304 () K!9815)

(assert (=> b!4329162 (= res!1774145 (not (= otherK!9 key!5304)))))

(declare-fun b!4329163 () Bool)

(declare-fun res!1774144 () Bool)

(assert (=> b!4329163 (=> (not res!1774144) (not e!2693862))))

(get-info :version)

(assert (=> b!4329163 (= res!1774144 (not ((_ is Nil!48498) l!13918)))))

(declare-fun b!4329164 () Bool)

(assert (=> b!4329164 (= e!2693862 (containsKey!457 (t!355534 l!13918) otherK!9))))

(assert (= (and start!417058 res!1774143) b!4329162))

(assert (= (and b!4329162 res!1774145) b!4329159))

(assert (= (and b!4329159 res!1774141) b!4329163))

(assert (= (and b!4329163 res!1774144) b!4329161))

(assert (= (and b!4329161 res!1774142) b!4329164))

(assert (= (and start!417058 ((_ is Cons!48498) l!13918)) b!4329160))

(declare-fun m!4923717 () Bool)

(assert (=> b!4329159 m!4923717))

(declare-fun m!4923719 () Bool)

(assert (=> start!417058 m!4923719))

(declare-fun m!4923721 () Bool)

(assert (=> b!4329161 m!4923721))

(declare-fun m!4923723 () Bool)

(assert (=> b!4329164 m!4923723))

(check-sat (not b!4329160) (not start!417058) tp_is_empty!24433 (not b!4329161) tp_is_empty!24435 (not b!4329159) (not b!4329164))
(check-sat)
(get-model)

(declare-fun d!1272355 () Bool)

(declare-fun res!1774160 () Bool)

(declare-fun e!2693878 () Bool)

(assert (=> d!1272355 (=> res!1774160 e!2693878)))

(assert (=> d!1272355 (= res!1774160 (and ((_ is Cons!48498) l!13918) (= (_1!27088 (h!53967 l!13918)) otherK!9)))))

(assert (=> d!1272355 (= (containsKey!457 l!13918 otherK!9) e!2693878)))

(declare-fun b!4329179 () Bool)

(declare-fun e!2693879 () Bool)

(assert (=> b!4329179 (= e!2693878 e!2693879)))

(declare-fun res!1774161 () Bool)

(assert (=> b!4329179 (=> (not res!1774161) (not e!2693879))))

(assert (=> b!4329179 (= res!1774161 ((_ is Cons!48498) l!13918))))

(declare-fun b!4329180 () Bool)

(assert (=> b!4329180 (= e!2693879 (containsKey!457 (t!355534 l!13918) otherK!9))))

(assert (= (and d!1272355 (not res!1774160)) b!4329179))

(assert (= (and b!4329179 res!1774161) b!4329180))

(assert (=> b!4329180 m!4923723))

(assert (=> b!4329159 d!1272355))

(declare-fun d!1272359 () Bool)

(declare-fun res!1774172 () Bool)

(declare-fun e!2693893 () Bool)

(assert (=> d!1272359 (=> res!1774172 e!2693893)))

(assert (=> d!1272359 (= res!1774172 (not ((_ is Cons!48498) l!13918)))))

(assert (=> d!1272359 (= (noDuplicateKeys!311 l!13918) e!2693893)))

(declare-fun b!4329196 () Bool)

(declare-fun e!2693894 () Bool)

(assert (=> b!4329196 (= e!2693893 e!2693894)))

(declare-fun res!1774173 () Bool)

(assert (=> b!4329196 (=> (not res!1774173) (not e!2693894))))

(assert (=> b!4329196 (= res!1774173 (not (containsKey!457 (t!355534 l!13918) (_1!27088 (h!53967 l!13918)))))))

(declare-fun b!4329197 () Bool)

(assert (=> b!4329197 (= e!2693894 (noDuplicateKeys!311 (t!355534 l!13918)))))

(assert (= (and d!1272359 (not res!1774172)) b!4329196))

(assert (= (and b!4329196 res!1774173) b!4329197))

(declare-fun m!4923733 () Bool)

(assert (=> b!4329196 m!4923733))

(assert (=> b!4329197 m!4923721))

(assert (=> start!417058 d!1272359))

(declare-fun d!1272365 () Bool)

(declare-fun res!1774174 () Bool)

(declare-fun e!2693895 () Bool)

(assert (=> d!1272365 (=> res!1774174 e!2693895)))

(assert (=> d!1272365 (= res!1774174 (not ((_ is Cons!48498) (t!355534 l!13918))))))

(assert (=> d!1272365 (= (noDuplicateKeys!311 (t!355534 l!13918)) e!2693895)))

(declare-fun b!4329198 () Bool)

(declare-fun e!2693896 () Bool)

(assert (=> b!4329198 (= e!2693895 e!2693896)))

(declare-fun res!1774175 () Bool)

(assert (=> b!4329198 (=> (not res!1774175) (not e!2693896))))

(assert (=> b!4329198 (= res!1774175 (not (containsKey!457 (t!355534 (t!355534 l!13918)) (_1!27088 (h!53967 (t!355534 l!13918))))))))

(declare-fun b!4329199 () Bool)

(assert (=> b!4329199 (= e!2693896 (noDuplicateKeys!311 (t!355534 (t!355534 l!13918))))))

(assert (= (and d!1272365 (not res!1774174)) b!4329198))

(assert (= (and b!4329198 res!1774175) b!4329199))

(declare-fun m!4923735 () Bool)

(assert (=> b!4329198 m!4923735))

(declare-fun m!4923737 () Bool)

(assert (=> b!4329199 m!4923737))

(assert (=> b!4329161 d!1272365))

(declare-fun d!1272367 () Bool)

(declare-fun res!1774176 () Bool)

(declare-fun e!2693897 () Bool)

(assert (=> d!1272367 (=> res!1774176 e!2693897)))

(assert (=> d!1272367 (= res!1774176 (and ((_ is Cons!48498) (t!355534 l!13918)) (= (_1!27088 (h!53967 (t!355534 l!13918))) otherK!9)))))

(assert (=> d!1272367 (= (containsKey!457 (t!355534 l!13918) otherK!9) e!2693897)))

(declare-fun b!4329200 () Bool)

(declare-fun e!2693898 () Bool)

(assert (=> b!4329200 (= e!2693897 e!2693898)))

(declare-fun res!1774177 () Bool)

(assert (=> b!4329200 (=> (not res!1774177) (not e!2693898))))

(assert (=> b!4329200 (= res!1774177 ((_ is Cons!48498) (t!355534 l!13918)))))

(declare-fun b!4329201 () Bool)

(assert (=> b!4329201 (= e!2693898 (containsKey!457 (t!355534 (t!355534 l!13918)) otherK!9))))

(assert (= (and d!1272367 (not res!1774176)) b!4329200))

(assert (= (and b!4329200 res!1774177) b!4329201))

(declare-fun m!4923739 () Bool)

(assert (=> b!4329201 m!4923739))

(assert (=> b!4329164 d!1272367))

(declare-fun tp!1328142 () Bool)

(declare-fun e!2693901 () Bool)

(declare-fun b!4329206 () Bool)

(assert (=> b!4329206 (= e!2693901 (and tp_is_empty!24433 tp_is_empty!24435 tp!1328142))))

(assert (=> b!4329160 (= tp!1328136 e!2693901)))

(assert (= (and b!4329160 ((_ is Cons!48498) (t!355534 l!13918))) b!4329206))

(check-sat (not b!4329201) tp_is_empty!24435 (not b!4329199) tp_is_empty!24433 (not b!4329206) (not b!4329198) (not b!4329197) (not b!4329180) (not b!4329196))
(check-sat)
