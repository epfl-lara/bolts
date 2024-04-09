; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4722 () Bool)

(assert start!4722)

(declare-fun b_free!1311 () Bool)

(declare-fun b_next!1311 () Bool)

(assert (=> start!4722 (= b_free!1311 (not b_next!1311))))

(declare-fun tp!5396 () Bool)

(declare-fun b_and!2161 () Bool)

(assert (=> start!4722 (= tp!5396 b_and!2161)))

(declare-fun b!36612 () Bool)

(declare-fun res!22151 () Bool)

(declare-fun e!23129 () Bool)

(assert (=> b!36612 (=> (not res!22151) (not e!23129))))

(declare-datatypes ((B!718 0))(
  ( (B!719 (val!859 Int)) )
))
(declare-datatypes ((tuple2!1382 0))(
  ( (tuple2!1383 (_1!701 (_ BitVec 64)) (_2!701 B!718)) )
))
(declare-datatypes ((List!979 0))(
  ( (Nil!976) (Cons!975 (h!1543 tuple2!1382) (t!3710 List!979)) )
))
(declare-datatypes ((ListLongMap!963 0))(
  ( (ListLongMap!964 (toList!497 List!979)) )
))
(declare-fun lm!252 () ListLongMap!963)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun head!837 (List!979) tuple2!1382)

(assert (=> b!36612 (= res!22151 (not (= (_1!701 (head!837 (toList!497 lm!252))) k0!388)))))

(declare-fun b!36613 () Bool)

(declare-fun res!22154 () Bool)

(assert (=> b!36613 (=> (not res!22154) (not e!23129))))

(declare-fun contains!445 (ListLongMap!963 (_ BitVec 64)) Bool)

(assert (=> b!36613 (= res!22154 (contains!445 lm!252 k0!388))))

(declare-fun res!22153 () Bool)

(assert (=> start!4722 (=> (not res!22153) (not e!23129))))

(declare-fun p!304 () Int)

(declare-fun forall!159 (List!979 Int) Bool)

(assert (=> start!4722 (= res!22153 (forall!159 (toList!497 lm!252) p!304))))

(assert (=> start!4722 e!23129))

(declare-fun e!23130 () Bool)

(declare-fun inv!1599 (ListLongMap!963) Bool)

(assert (=> start!4722 (and (inv!1599 lm!252) e!23130)))

(assert (=> start!4722 tp!5396))

(assert (=> start!4722 true))

(declare-fun b!36614 () Bool)

(declare-fun tp!5395 () Bool)

(assert (=> b!36614 (= e!23130 tp!5395)))

(declare-fun b!36615 () Bool)

(declare-fun e!23128 () Bool)

(assert (=> b!36615 (= e!23128 (not true))))

(declare-fun lt!13540 () ListLongMap!963)

(declare-fun dynLambda!164 (Int tuple2!1382) Bool)

(declare-fun apply!44 (ListLongMap!963 (_ BitVec 64)) B!718)

(assert (=> b!36615 (dynLambda!164 p!304 (tuple2!1383 k0!388 (apply!44 lt!13540 k0!388)))))

(declare-datatypes ((Unit!809 0))(
  ( (Unit!810) )
))
(declare-fun lt!13539 () Unit!809)

(declare-fun applyForall!3 (ListLongMap!963 Int (_ BitVec 64)) Unit!809)

(assert (=> b!36615 (= lt!13539 (applyForall!3 lt!13540 p!304 k0!388))))

(declare-fun b!36616 () Bool)

(assert (=> b!36616 (= e!23129 e!23128)))

(declare-fun res!22155 () Bool)

(assert (=> b!36616 (=> (not res!22155) (not e!23128))))

(assert (=> b!36616 (= res!22155 (forall!159 (toList!497 lt!13540) p!304))))

(declare-fun tail!90 (ListLongMap!963) ListLongMap!963)

(assert (=> b!36616 (= lt!13540 (tail!90 lm!252))))

(declare-fun b!36617 () Bool)

(declare-fun res!22156 () Bool)

(assert (=> b!36617 (=> (not res!22156) (not e!23128))))

(assert (=> b!36617 (= res!22156 (contains!445 lt!13540 k0!388))))

(declare-fun b!36618 () Bool)

(declare-fun res!22152 () Bool)

(assert (=> b!36618 (=> (not res!22152) (not e!23129))))

(declare-fun isEmpty!189 (ListLongMap!963) Bool)

(assert (=> b!36618 (= res!22152 (not (isEmpty!189 lm!252)))))

(assert (= (and start!4722 res!22153) b!36613))

(assert (= (and b!36613 res!22154) b!36618))

(assert (= (and b!36618 res!22152) b!36612))

(assert (= (and b!36612 res!22151) b!36616))

(assert (= (and b!36616 res!22155) b!36617))

(assert (= (and b!36617 res!22156) b!36615))

(assert (= start!4722 b!36614))

(declare-fun b_lambda!1773 () Bool)

(assert (=> (not b_lambda!1773) (not b!36615)))

(declare-fun t!3709 () Bool)

(declare-fun tb!717 () Bool)

(assert (=> (and start!4722 (= p!304 p!304) t!3709) tb!717))

(declare-fun result!1235 () Bool)

(assert (=> tb!717 (= result!1235 true)))

(assert (=> b!36615 t!3709))

(declare-fun b_and!2163 () Bool)

(assert (= b_and!2161 (and (=> t!3709 result!1235) b_and!2163)))

(declare-fun m!29499 () Bool)

(assert (=> start!4722 m!29499))

(declare-fun m!29501 () Bool)

(assert (=> start!4722 m!29501))

(declare-fun m!29503 () Bool)

(assert (=> b!36618 m!29503))

(declare-fun m!29505 () Bool)

(assert (=> b!36615 m!29505))

(declare-fun m!29507 () Bool)

(assert (=> b!36615 m!29507))

(declare-fun m!29509 () Bool)

(assert (=> b!36615 m!29509))

(declare-fun m!29511 () Bool)

(assert (=> b!36613 m!29511))

(declare-fun m!29513 () Bool)

(assert (=> b!36617 m!29513))

(declare-fun m!29515 () Bool)

(assert (=> b!36612 m!29515))

(declare-fun m!29517 () Bool)

(assert (=> b!36616 m!29517))

(declare-fun m!29519 () Bool)

(assert (=> b!36616 m!29519))

(check-sat (not b_lambda!1773) (not b!36615) (not b!36618) b_and!2163 (not start!4722) (not b!36613) (not b_next!1311) (not b!36617) (not b!36612) (not b!36616) (not b!36614))
(check-sat b_and!2163 (not b_next!1311))
