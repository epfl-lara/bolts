; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117448 () Bool)

(assert start!117448)

(declare-fun res!922257 () Bool)

(declare-fun e!781831 () Bool)

(assert (=> start!117448 (=> (not res!922257) (not e!781831))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93915 0))(
  ( (array!93916 (arr!45347 (Array (_ BitVec 32) (_ BitVec 64))) (size!45898 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93915)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117448 (= res!922257 (and (bvslt (size!45898 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45898 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117448 e!781831))

(assert (=> start!117448 true))

(declare-fun array_inv!34292 (array!93915) Bool)

(assert (=> start!117448 (array_inv!34292 a!3985)))

(declare-fun b!1379878 () Bool)

(assert (=> b!1379878 (= e!781831 false)))

(declare-fun lt!607747 () Bool)

(declare-fun isPivot!0 (array!93915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379878 (= lt!607747 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117448 res!922257) b!1379878))

(declare-fun m!1265161 () Bool)

(assert (=> start!117448 m!1265161))

(declare-fun m!1265163 () Bool)

(assert (=> b!1379878 m!1265163))

(check-sat (not b!1379878) (not start!117448))
