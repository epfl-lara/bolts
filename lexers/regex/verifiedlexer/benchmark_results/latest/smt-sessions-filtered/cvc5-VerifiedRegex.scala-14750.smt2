; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759014 () Bool)

(assert start!759014)

(declare-fun res!3186918 () Bool)

(declare-fun e!4747853 () Bool)

(assert (=> start!759014 (=> (not res!3186918) (not e!4747853))))

(declare-datatypes ((K!22881 0))(
  ( (K!22882 (val!32977 Int)) )
))
(declare-datatypes ((V!23135 0))(
  ( (V!23136 (val!32978 Int)) )
))
(declare-datatypes ((tuple2!70942 0))(
  ( (tuple2!70943 (_1!38774 K!22881) (_2!38774 V!23135)) )
))
(declare-datatypes ((List!75719 0))(
  ( (Nil!75593) (Cons!75593 (h!82041 tuple2!70942) (t!391491 List!75719)) )
))
(declare-fun l!15222 () List!75719)

(declare-fun key!6986 () K!22881)

(declare-fun containsKey!4900 (List!75719 K!22881) Bool)

(assert (=> start!759014 (= res!3186918 (not (containsKey!4900 l!15222 key!6986)))))

(assert (=> start!759014 e!4747853))

(declare-fun e!4747854 () Bool)

(assert (=> start!759014 e!4747854))

(declare-fun tp_is_empty!55007 () Bool)

(assert (=> start!759014 tp_is_empty!55007))

(declare-fun b!8056808 () Bool)

(assert (=> b!8056808 (= e!4747853 (and (is-Cons!75593 l!15222) (= (_1!38774 (h!82041 l!15222)) key!6986)))))

(declare-fun tp_is_empty!55009 () Bool)

(declare-fun tp!2413978 () Bool)

(declare-fun b!8056809 () Bool)

(assert (=> b!8056809 (= e!4747854 (and tp_is_empty!55007 tp_is_empty!55009 tp!2413978))))

(assert (= (and start!759014 res!3186918) b!8056808))

(assert (= (and start!759014 (is-Cons!75593 l!15222)) b!8056809))

(declare-fun m!8410110 () Bool)

(assert (=> start!759014 m!8410110))

(push 1)

(assert (not start!759014))

(assert (not b!8056809))

(assert tp_is_empty!55007)

(assert tp_is_empty!55009)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398735 () Bool)

(declare-fun res!3186926 () Bool)

(declare-fun e!4747865 () Bool)

(assert (=> d!2398735 (=> res!3186926 e!4747865)))

(assert (=> d!2398735 (= res!3186926 (and (is-Cons!75593 l!15222) (= (_1!38774 (h!82041 l!15222)) key!6986)))))

(assert (=> d!2398735 (= (containsKey!4900 l!15222 key!6986) e!4747865)))

(declare-fun b!8056820 () Bool)

(declare-fun e!4747866 () Bool)

(assert (=> b!8056820 (= e!4747865 e!4747866)))

(declare-fun res!3186927 () Bool)

(assert (=> b!8056820 (=> (not res!3186927) (not e!4747866))))

(assert (=> b!8056820 (= res!3186927 (is-Cons!75593 l!15222))))

(declare-fun b!8056821 () Bool)

(assert (=> b!8056821 (= e!4747866 (containsKey!4900 (t!391491 l!15222) key!6986))))

(assert (= (and d!2398735 (not res!3186926)) b!8056820))

(assert (= (and b!8056820 res!3186927) b!8056821))

(declare-fun m!8410114 () Bool)

(assert (=> b!8056821 m!8410114))

(assert (=> start!759014 d!2398735))

(declare-fun b!8056826 () Bool)

(declare-fun e!4747869 () Bool)

(declare-fun tp!2413984 () Bool)

(assert (=> b!8056826 (= e!4747869 (and tp_is_empty!55007 tp_is_empty!55009 tp!2413984))))

(assert (=> b!8056809 (= tp!2413978 e!4747869)))

(assert (= (and b!8056809 (is-Cons!75593 (t!391491 l!15222))) b!8056826))

(push 1)

(assert (not b!8056821))

(assert (not b!8056826))

(assert tp_is_empty!55007)

(assert tp_is_empty!55009)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

