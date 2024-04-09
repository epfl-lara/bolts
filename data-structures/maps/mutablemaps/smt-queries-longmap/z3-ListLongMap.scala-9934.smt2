; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117472 () Bool)

(assert start!117472)

(declare-fun res!922347 () Bool)

(declare-fun e!781912 () Bool)

(assert (=> start!117472 (=> (not res!922347) (not e!781912))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93939 0))(
  ( (array!93940 (arr!45359 (Array (_ BitVec 32) (_ BitVec 64))) (size!45910 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93939)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117472 (= res!922347 (and (bvslt (size!45910 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45910 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117472 e!781912))

(assert (=> start!117472 true))

(declare-fun array_inv!34304 (array!93939) Bool)

(assert (=> start!117472 (array_inv!34304 a!3985)))

(declare-fun b!1379968 () Bool)

(assert (=> b!1379968 (= e!781912 false)))

(declare-fun lt!607783 () Bool)

(declare-fun isPivot!0 (array!93939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379968 (= lt!607783 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117472 res!922347) b!1379968))

(declare-fun m!1265245 () Bool)

(assert (=> start!117472 m!1265245))

(declare-fun m!1265247 () Bool)

(assert (=> b!1379968 m!1265247))

(check-sat (not start!117472) (not b!1379968))
