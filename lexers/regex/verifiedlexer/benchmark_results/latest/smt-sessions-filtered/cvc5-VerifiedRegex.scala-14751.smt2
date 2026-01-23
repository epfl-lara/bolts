; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759022 () Bool)

(assert start!759022)

(declare-fun lt!2730719 () Bool)

(declare-datatypes ((K!22886 0))(
  ( (K!22887 (val!32981 Int)) )
))
(declare-datatypes ((V!23140 0))(
  ( (V!23141 (val!32982 Int)) )
))
(declare-datatypes ((tuple2!70946 0))(
  ( (tuple2!70947 (_1!38776 K!22886) (_2!38776 V!23140)) )
))
(declare-datatypes ((List!75721 0))(
  ( (Nil!75595) (Cons!75595 (h!82043 tuple2!70946) (t!391493 List!75721)) )
))
(declare-fun l!15222 () List!75721)

(declare-fun key!6986 () K!22886)

(declare-fun containsKey!4902 (List!75721 K!22886) Bool)

(assert (=> start!759022 (= lt!2730719 (containsKey!4902 l!15222 key!6986))))

(assert (=> start!759022 false))

(declare-fun e!4747881 () Bool)

(assert (=> start!759022 e!4747881))

(declare-fun tp_is_empty!55015 () Bool)

(assert (=> start!759022 tp_is_empty!55015))

(declare-fun b!8056840 () Bool)

(declare-fun tp!2413990 () Bool)

(declare-fun tp_is_empty!55017 () Bool)

(assert (=> b!8056840 (= e!4747881 (and tp_is_empty!55015 tp_is_empty!55017 tp!2413990))))

(assert (= (and start!759022 (is-Cons!75595 l!15222)) b!8056840))

(declare-fun m!8410116 () Bool)

(assert (=> start!759022 m!8410116))

(push 1)

(assert (not start!759022))

(assert (not b!8056840))

(assert tp_is_empty!55017)

(assert tp_is_empty!55015)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

