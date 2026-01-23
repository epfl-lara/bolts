; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720292 () Bool)

(assert start!720292)

(declare-fun b_free!134313 () Bool)

(declare-fun b_next!135103 () Bool)

(assert (=> start!720292 (= b_free!134313 (not b_next!135103))))

(declare-fun tp!2100704 () Bool)

(declare-fun b_and!351889 () Bool)

(assert (=> start!720292 (= tp!2100704 b_and!351889)))

(assert (=> start!720292 false))

(declare-fun e!4420008 () Bool)

(assert (=> start!720292 e!4420008))

(assert (=> start!720292 tp!2100704))

(declare-fun e!4420007 () Bool)

(assert (=> start!720292 e!4420007))

(declare-fun b!7384278 () Bool)

(declare-fun tp_is_empty!48931 () Bool)

(declare-fun tp!2100703 () Bool)

(assert (=> b!7384278 (= e!4420008 (and tp_is_empty!48931 tp!2100703))))

(declare-fun b!7384279 () Bool)

(declare-fun tp!2100705 () Bool)

(assert (=> b!7384279 (= e!4420007 (and tp_is_empty!48931 tp!2100705))))

(declare-datatypes ((B!3857 0))(
  ( (B!3858 (val!29840 Int)) )
))
(declare-datatypes ((List!71839 0))(
  ( (Nil!71715) (Cons!71715 (h!78163 B!3857) (t!386350 List!71839)) )
))
(declare-fun l1!1475 () List!71839)

(get-info :version)

(assert (= (and start!720292 ((_ is Cons!71715) l1!1475)) b!7384278))

(declare-fun l2!1444 () List!71839)

(assert (= (and start!720292 ((_ is Cons!71715) l2!1444)) b!7384279))

(check-sat (not b!7384279) (not b!7384278) b_and!351889 tp_is_empty!48931 (not b_next!135103))
(check-sat b_and!351889 (not b_next!135103))
