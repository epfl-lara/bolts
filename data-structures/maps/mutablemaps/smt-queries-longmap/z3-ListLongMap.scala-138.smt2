; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2484 () Bool)

(assert start!2484)

(declare-fun b_free!507 () Bool)

(declare-fun b_next!507 () Bool)

(assert (=> start!2484 (= b_free!507 (not b_next!507))))

(declare-fun tp!2621 () Bool)

(declare-fun b_and!953 () Bool)

(assert (=> start!2484 (= tp!2621 b_and!953)))

(assert (=> start!2484 false))

(declare-datatypes ((B!628 0))(
  ( (B!629 (val!412 Int)) )
))
(declare-datatypes ((tuple2!606 0))(
  ( (tuple2!607 (_1!303 (_ BitVec 64)) (_2!303 B!628)) )
))
(declare-datatypes ((List!480 0))(
  ( (Nil!477) (Cons!476 (h!1042 tuple2!606) (t!2918 List!480)) )
))
(declare-datatypes ((ListLongMap!437 0))(
  ( (ListLongMap!438 (toList!234 List!480)) )
))
(declare-fun lm!238 () ListLongMap!437)

(declare-fun e!9436 () Bool)

(declare-fun inv!809 (ListLongMap!437) Bool)

(assert (=> start!2484 (and (inv!809 lm!238) e!9436)))

(assert (=> start!2484 tp!2621))

(declare-fun b!15509 () Bool)

(declare-fun tp!2620 () Bool)

(assert (=> b!15509 (= e!9436 tp!2620)))

(assert (= start!2484 b!15509))

(declare-fun m!10425 () Bool)

(assert (=> start!2484 m!10425))

(check-sat (not start!2484) (not b!15509) b_and!953 (not b_next!507))
(check-sat b_and!953 (not b_next!507))
