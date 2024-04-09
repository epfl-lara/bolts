; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1214 () Bool)

(assert start!1214)

(declare-datatypes ((B!310 0))(
  ( (B!311 (val!250 Int)) )
))
(declare-datatypes ((tuple2!282 0))(
  ( (tuple2!283 (_1!141 (_ BitVec 64)) (_2!141 B!310)) )
))
(declare-datatypes ((List!297 0))(
  ( (Nil!294) (Cons!293 (h!859 tuple2!282) (t!2444 List!297)) )
))
(declare-fun l!408 () List!297)

(declare-fun ListPrimitiveSize!2 (List!297) Int)

(assert (=> start!1214 (< (ListPrimitiveSize!2 l!408) 0)))

(declare-fun e!5942 () Bool)

(assert (=> start!1214 e!5942))

(declare-fun b!10292 () Bool)

(declare-fun tp_is_empty!483 () Bool)

(declare-fun tp!1466 () Bool)

(assert (=> b!10292 (= e!5942 (and tp_is_empty!483 tp!1466))))

(get-info :version)

(assert (= (and start!1214 ((_ is Cons!293) l!408)) b!10292))

(declare-fun m!6697 () Bool)

(assert (=> start!1214 m!6697))

(check-sat (not start!1214) (not b!10292) tp_is_empty!483)
(check-sat)
(get-model)

(declare-fun d!1081 () Bool)

(declare-fun lt!2536 () Int)

(assert (=> d!1081 (>= lt!2536 0)))

(declare-fun e!5952 () Int)

(assert (=> d!1081 (= lt!2536 e!5952)))

(declare-fun c!921 () Bool)

(assert (=> d!1081 (= c!921 ((_ is Nil!294) l!408))))

(assert (=> d!1081 (= (ListPrimitiveSize!2 l!408) lt!2536)))

(declare-fun b!10308 () Bool)

(assert (=> b!10308 (= e!5952 0)))

(declare-fun b!10309 () Bool)

(assert (=> b!10309 (= e!5952 (+ 1 (ListPrimitiveSize!2 (t!2444 l!408))))))

(assert (= (and d!1081 c!921) b!10308))

(assert (= (and d!1081 (not c!921)) b!10309))

(declare-fun m!6701 () Bool)

(assert (=> b!10309 m!6701))

(assert (=> start!1214 d!1081))

(declare-fun b!10326 () Bool)

(declare-fun e!5961 () Bool)

(declare-fun tp!1476 () Bool)

(assert (=> b!10326 (= e!5961 (and tp_is_empty!483 tp!1476))))

(assert (=> b!10292 (= tp!1466 e!5961)))

(assert (= (and b!10292 ((_ is Cons!293) (t!2444 l!408))) b!10326))

(check-sat (not b!10309) (not b!10326) tp_is_empty!483)
(check-sat)
