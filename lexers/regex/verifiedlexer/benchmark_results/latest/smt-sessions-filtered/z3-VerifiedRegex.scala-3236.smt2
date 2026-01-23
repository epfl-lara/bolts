; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187554 () Bool)

(assert start!187554)

(declare-fun b!1872435 () Bool)

(declare-fun e!1194524 () Bool)

(declare-datatypes ((B!1637 0))(
  ( (B!1638 (val!6008 Int)) )
))
(declare-datatypes ((List!20825 0))(
  ( (Nil!20743) (Cons!20743 (h!26144 B!1637) (t!173042 List!20825)) )
))
(declare-fun l1!1293 () List!20825)

(assert (=> b!1872435 (= e!1194524 (= l1!1293 Nil!20743))))

(declare-fun b!1872436 () Bool)

(declare-fun e!1194523 () Bool)

(declare-fun tp_is_empty!8795 () Bool)

(declare-fun tp!532487 () Bool)

(assert (=> b!1872436 (= e!1194523 (and tp_is_empty!8795 tp!532487))))

(declare-fun b!1872434 () Bool)

(declare-fun e!1194525 () Bool)

(declare-fun isEmpty!12949 (List!20825) Bool)

(assert (=> b!1872434 (= e!1194525 (isEmpty!12949 (t!173042 l1!1293)))))

(declare-fun b!1872433 () Bool)

(declare-fun res!838017 () Bool)

(assert (=> b!1872433 (=> (not res!838017) (not e!1194524))))

(assert (=> b!1872433 (= res!838017 e!1194525)))

(declare-fun res!838016 () Bool)

(assert (=> b!1872433 (=> res!838016 e!1194525)))

(get-info :version)

(assert (=> b!1872433 (= res!838016 (not ((_ is Cons!20743) l1!1293)))))

(declare-fun res!838015 () Bool)

(assert (=> start!187554 (=> (not res!838015) (not e!1194524))))

(assert (=> start!187554 (= res!838015 (not (isEmpty!12949 l1!1293)))))

(assert (=> start!187554 e!1194524))

(assert (=> start!187554 e!1194523))

(assert (= (and start!187554 res!838015) b!1872433))

(assert (= (and b!1872433 (not res!838016)) b!1872434))

(assert (= (and b!1872433 res!838017) b!1872435))

(assert (= (and start!187554 ((_ is Cons!20743) l1!1293)) b!1872436))

(declare-fun m!2298209 () Bool)

(assert (=> b!1872434 m!2298209))

(declare-fun m!2298211 () Bool)

(assert (=> start!187554 m!2298211))

(check-sat (not start!187554) (not b!1872434) (not b!1872436) tp_is_empty!8795)
(check-sat)
(get-model)

(declare-fun d!572435 () Bool)

(assert (=> d!572435 (= (isEmpty!12949 l1!1293) ((_ is Nil!20743) l1!1293))))

(assert (=> start!187554 d!572435))

(declare-fun d!572439 () Bool)

(assert (=> d!572439 (= (isEmpty!12949 (t!173042 l1!1293)) ((_ is Nil!20743) (t!173042 l1!1293)))))

(assert (=> b!1872434 d!572439))

(declare-fun b!1872441 () Bool)

(declare-fun e!1194528 () Bool)

(declare-fun tp!532490 () Bool)

(assert (=> b!1872441 (= e!1194528 (and tp_is_empty!8795 tp!532490))))

(assert (=> b!1872436 (= tp!532487 e!1194528)))

(assert (= (and b!1872436 ((_ is Cons!20743) (t!173042 l1!1293))) b!1872441))

(check-sat (not b!1872441) tp_is_empty!8795)
(check-sat)
