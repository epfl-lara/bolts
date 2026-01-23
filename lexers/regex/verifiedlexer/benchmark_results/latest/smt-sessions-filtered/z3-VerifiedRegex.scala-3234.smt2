; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187538 () Bool)

(assert start!187538)

(declare-fun res!837968 () Bool)

(declare-fun e!1194462 () Bool)

(assert (=> start!187538 (=> (not res!837968) (not e!1194462))))

(declare-datatypes ((B!1629 0))(
  ( (B!1630 (val!6004 Int)) )
))
(declare-datatypes ((List!20821 0))(
  ( (Nil!20739) (Cons!20739 (h!26140 B!1629) (t!173038 List!20821)) )
))
(declare-fun l1!1293 () List!20821)

(declare-fun isEmpty!12945 (List!20821) Bool)

(assert (=> start!187538 (= res!837968 (not (isEmpty!12945 l1!1293)))))

(assert (=> start!187538 e!1194462))

(declare-fun e!1194463 () Bool)

(assert (=> start!187538 e!1194463))

(declare-fun e!1194461 () Bool)

(assert (=> start!187538 e!1194461))

(declare-fun b!1872342 () Bool)

(declare-fun tp_is_empty!8787 () Bool)

(declare-fun tp!532461 () Bool)

(assert (=> b!1872342 (= e!1194461 (and tp_is_empty!8787 tp!532461))))

(declare-fun b!1872343 () Bool)

(declare-fun res!837967 () Bool)

(assert (=> b!1872343 (=> (not res!837967) (not e!1194462))))

(assert (=> b!1872343 (= res!837967 (not (isEmpty!12945 (t!173038 l1!1293))))))

(declare-fun b!1872344 () Bool)

(declare-fun tp!532460 () Bool)

(assert (=> b!1872344 (= e!1194463 (and tp_is_empty!8787 tp!532460))))

(declare-fun b!1872345 () Bool)

(declare-fun res!837969 () Bool)

(assert (=> b!1872345 (=> (not res!837969) (not e!1194462))))

(get-info :version)

(assert (=> b!1872345 (= res!837969 ((_ is Cons!20739) l1!1293))))

(declare-fun b!1872346 () Bool)

(assert (=> b!1872346 (= e!1194462 (not (not (= l1!1293 Nil!20739))))))

(declare-fun l2!1262 () List!20821)

(declare-fun tail!2875 (List!20821) List!20821)

(declare-fun ++!5628 (List!20821 List!20821) List!20821)

(assert (=> b!1872346 (= (tail!2875 (++!5628 (t!173038 l1!1293) l2!1262)) (++!5628 (tail!2875 (t!173038 l1!1293)) l2!1262))))

(declare-datatypes ((Unit!35335 0))(
  ( (Unit!35336) )
))
(declare-fun lt!719665 () Unit!35335)

(declare-fun lemmaTailOfConcatIsTailConcat!48 (List!20821 List!20821) Unit!35335)

(assert (=> b!1872346 (= lt!719665 (lemmaTailOfConcatIsTailConcat!48 (t!173038 l1!1293) l2!1262))))

(assert (= (and start!187538 res!837968) b!1872345))

(assert (= (and b!1872345 res!837969) b!1872343))

(assert (= (and b!1872343 res!837967) b!1872346))

(assert (= (and start!187538 ((_ is Cons!20739) l1!1293)) b!1872344))

(assert (= (and start!187538 ((_ is Cons!20739) l2!1262)) b!1872342))

(declare-fun m!2298151 () Bool)

(assert (=> start!187538 m!2298151))

(declare-fun m!2298153 () Bool)

(assert (=> b!1872343 m!2298153))

(declare-fun m!2298155 () Bool)

(assert (=> b!1872346 m!2298155))

(declare-fun m!2298157 () Bool)

(assert (=> b!1872346 m!2298157))

(assert (=> b!1872346 m!2298155))

(declare-fun m!2298159 () Bool)

(assert (=> b!1872346 m!2298159))

(declare-fun m!2298161 () Bool)

(assert (=> b!1872346 m!2298161))

(assert (=> b!1872346 m!2298157))

(declare-fun m!2298163 () Bool)

(assert (=> b!1872346 m!2298163))

(check-sat (not b!1872344) (not start!187538) (not b!1872342) tp_is_empty!8787 (not b!1872346) (not b!1872343))
(check-sat)
