; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106368 () Bool)

(assert start!106368)

(assert (=> start!106368 false))

(declare-fun e!720337 () Bool)

(assert (=> start!106368 e!720337))

(declare-fun b!1264856 () Bool)

(declare-fun tp_is_empty!32463 () Bool)

(declare-fun tp!96261 () Bool)

(assert (=> b!1264856 (= e!720337 (and tp_is_empty!32463 tp!96261))))

(declare-datatypes ((B!1930 0))(
  ( (B!1931 (val!16300 Int)) )
))
(declare-datatypes ((tuple2!21268 0))(
  ( (tuple2!21269 (_1!10644 (_ BitVec 64)) (_2!10644 B!1930)) )
))
(declare-datatypes ((List!28467 0))(
  ( (Nil!28464) (Cons!28463 (h!29672 tuple2!21268) (t!41995 List!28467)) )
))
(declare-fun l!706 () List!28467)

(get-info :version)

(assert (= (and start!106368 ((_ is Cons!28463) l!706)) b!1264856))

(check-sat (not b!1264856) tp_is_empty!32463)
(check-sat)
