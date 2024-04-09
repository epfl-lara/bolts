; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117466 () Bool)

(assert start!117466)

(declare-fun res!922334 () Bool)

(declare-fun e!781894 () Bool)

(assert (=> start!117466 (=> (not res!922334) (not e!781894))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93933 0))(
  ( (array!93934 (arr!45356 (Array (_ BitVec 32) (_ BitVec 64))) (size!45907 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93933)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117466 (= res!922334 (and (bvslt (size!45907 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45907 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117466 e!781894))

(assert (=> start!117466 true))

(declare-fun array_inv!34301 (array!93933) Bool)

(assert (=> start!117466 (array_inv!34301 a!3985)))

(declare-fun b!1379955 () Bool)

(declare-fun res!922335 () Bool)

(assert (=> b!1379955 (=> (not res!922335) (not e!781894))))

(declare-fun isPivot!0 (array!93933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379955 (= res!922335 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379956 () Bool)

(assert (=> b!1379956 (= e!781894 (and (= knownPivot!5 pivot!40) (bvsle to!159 from!3363)))))

(assert (= (and start!117466 res!922334) b!1379955))

(assert (= (and b!1379955 res!922335) b!1379956))

(declare-fun m!1265233 () Bool)

(assert (=> start!117466 m!1265233))

(declare-fun m!1265235 () Bool)

(assert (=> b!1379955 m!1265235))

(check-sat (not start!117466) (not b!1379955))
(check-sat)
