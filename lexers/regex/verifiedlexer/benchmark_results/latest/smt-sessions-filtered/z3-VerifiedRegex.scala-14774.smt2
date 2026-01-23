; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759414 () Bool)

(assert start!759414)

(declare-fun lt!2732532 () Int)

(declare-datatypes ((K!23003 0))(
  ( (K!23004 (val!33075 Int)) )
))
(declare-datatypes ((B!4489 0))(
  ( (B!4490 (val!33076 Int)) )
))
(declare-datatypes ((tuple2!71040 0))(
  ( (tuple2!71041 (_1!38823 K!23003) (_2!38823 B!4489)) )
))
(declare-datatypes ((List!75775 0))(
  ( (Nil!75649) (Cons!75649 (h!82097 tuple2!71040) (t!391547 List!75775)) )
))
(declare-datatypes ((ListMap!7411 0))(
  ( (ListMap!7412 (toList!11980 List!75775)) )
))
(declare-fun thiss!41785 () ListMap!7411)

(declare-fun size!43767 (List!75775) Int)

(assert (=> start!759414 (= lt!2732532 (size!43767 (toList!11980 thiss!41785)))))

(assert (=> start!759414 false))

(declare-fun e!4749318 () Bool)

(declare-fun inv!97476 (ListMap!7411) Bool)

(assert (=> start!759414 (and (inv!97476 thiss!41785) e!4749318)))

(declare-fun b!8059025 () Bool)

(declare-fun tp!2414338 () Bool)

(assert (=> b!8059025 (= e!4749318 tp!2414338)))

(assert (= start!759414 b!8059025))

(declare-fun m!8412348 () Bool)

(assert (=> start!759414 m!8412348))

(declare-fun m!8412350 () Bool)

(assert (=> start!759414 m!8412350))

(check-sat (not start!759414) (not b!8059025))
(check-sat)
