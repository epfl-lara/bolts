; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75052 () Bool)

(assert start!75052)

(assert (=> start!75052 false))

(declare-datatypes ((B!1222 0))(
  ( (B!1223 (val!8917 Int)) )
))
(declare-datatypes ((tuple2!11854 0))(
  ( (tuple2!11855 (_1!5937 (_ BitVec 64)) (_2!5937 B!1222)) )
))
(declare-datatypes ((List!17717 0))(
  ( (Nil!17714) (Cons!17713 (h!18844 tuple2!11854) (t!25002 List!17717)) )
))
(declare-datatypes ((ListLongMap!10637 0))(
  ( (ListLongMap!10638 (toList!5334 List!17717)) )
))
(declare-fun lm!210 () ListLongMap!10637)

(declare-fun e!492449 () Bool)

(declare-fun inv!29354 (ListLongMap!10637) Bool)

(assert (=> start!75052 (and (inv!29354 lm!210) e!492449)))

(declare-fun b!884821 () Bool)

(declare-fun tp!54189 () Bool)

(assert (=> b!884821 (= e!492449 tp!54189)))

(assert (= start!75052 b!884821))

(declare-fun m!825187 () Bool)

(assert (=> start!75052 m!825187))

(check-sat (not start!75052) (not b!884821))
(check-sat)
