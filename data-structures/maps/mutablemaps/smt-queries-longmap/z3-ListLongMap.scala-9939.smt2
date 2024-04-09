; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117502 () Bool)

(assert start!117502)

(declare-fun res!922474 () Bool)

(declare-fun e!782012 () Bool)

(assert (=> start!117502 (=> (not res!922474) (not e!782012))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93969 0))(
  ( (array!93970 (arr!45374 (Array (_ BitVec 32) (_ BitVec 64))) (size!45925 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93969)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117502 (= res!922474 (and (bvslt (size!45925 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45925 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117502 e!782012))

(assert (=> start!117502 true))

(declare-fun array_inv!34319 (array!93969) Bool)

(assert (=> start!117502 (array_inv!34319 a!3985)))

(declare-fun b!1380095 () Bool)

(declare-fun res!922475 () Bool)

(assert (=> b!1380095 (=> (not res!922475) (not e!782012))))

(declare-fun isPivot!0 (array!93969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380095 (= res!922475 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380096 () Bool)

(declare-fun res!922476 () Bool)

(assert (=> b!1380096 (=> (not res!922476) (not e!782012))))

(assert (=> b!1380096 (= res!922476 (= knownPivot!5 pivot!40))))

(declare-fun b!1380097 () Bool)

(assert (=> b!1380097 (= e!782012 (not (isPivot!0 a!3985 from!3363 to!159 pivot!40)))))

(assert (= (and start!117502 res!922474) b!1380095))

(assert (= (and b!1380095 res!922475) b!1380096))

(assert (= (and b!1380096 res!922476) b!1380097))

(declare-fun m!1265355 () Bool)

(assert (=> start!117502 m!1265355))

(declare-fun m!1265357 () Bool)

(assert (=> b!1380095 m!1265357))

(declare-fun m!1265359 () Bool)

(assert (=> b!1380097 m!1265359))

(check-sat (not b!1380097) (not b!1380095) (not start!117502))
