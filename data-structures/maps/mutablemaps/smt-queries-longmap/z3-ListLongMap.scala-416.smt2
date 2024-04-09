; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7812 () Bool)

(assert start!7812)

(declare-datatypes ((B!1012 0))(
  ( (B!1013 (val!1126 Int)) )
))
(declare-datatypes ((tuple2!1838 0))(
  ( (tuple2!1839 (_1!929 (_ BitVec 64)) (_2!929 B!1012)) )
))
(declare-datatypes ((List!1342 0))(
  ( (Nil!1339) (Cons!1338 (h!1918 tuple2!1838) (t!4384 List!1342)) )
))
(declare-fun keyValues!2 () List!1342)

(declare-fun ListPrimitiveSize!56 (List!1342) Int)

(assert (=> start!7812 (< (ListPrimitiveSize!56 keyValues!2) 0)))

(declare-fun e!31828 () Bool)

(assert (=> start!7812 e!31828))

(declare-fun b!49518 () Bool)

(declare-fun tp_is_empty!2163 () Bool)

(declare-fun tp!6554 () Bool)

(assert (=> b!49518 (= e!31828 (and tp_is_empty!2163 tp!6554))))

(get-info :version)

(assert (= (and start!7812 ((_ is Cons!1338) keyValues!2)) b!49518))

(declare-fun m!42923 () Bool)

(assert (=> start!7812 m!42923))

(check-sat (not start!7812) (not b!49518) tp_is_empty!2163)
(check-sat)
(get-model)

(declare-fun d!9947 () Bool)

(declare-fun lt!20774 () Int)

(assert (=> d!9947 (>= lt!20774 0)))

(declare-fun e!31841 () Int)

(assert (=> d!9947 (= lt!20774 e!31841)))

(declare-fun c!6701 () Bool)

(assert (=> d!9947 (= c!6701 ((_ is Nil!1339) keyValues!2))))

(assert (=> d!9947 (= (ListPrimitiveSize!56 keyValues!2) lt!20774)))

(declare-fun b!49540 () Bool)

(assert (=> b!49540 (= e!31841 0)))

(declare-fun b!49541 () Bool)

(assert (=> b!49541 (= e!31841 (+ 1 (ListPrimitiveSize!56 (t!4384 keyValues!2))))))

(assert (= (and d!9947 c!6701) b!49540))

(assert (= (and d!9947 (not c!6701)) b!49541))

(declare-fun m!42931 () Bool)

(assert (=> b!49541 m!42931))

(assert (=> start!7812 d!9947))

(declare-fun b!49553 () Bool)

(declare-fun e!31848 () Bool)

(declare-fun tp!6565 () Bool)

(assert (=> b!49553 (= e!31848 (and tp_is_empty!2163 tp!6565))))

(assert (=> b!49518 (= tp!6554 e!31848)))

(assert (= (and b!49518 ((_ is Cons!1338) (t!4384 keyValues!2))) b!49553))

(check-sat (not b!49541) (not b!49553) tp_is_empty!2163)
(check-sat)
