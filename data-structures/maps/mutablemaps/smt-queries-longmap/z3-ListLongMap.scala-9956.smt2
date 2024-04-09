; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117640 () Bool)

(assert start!117640)

(declare-fun res!922712 () Bool)

(declare-fun e!782485 () Bool)

(assert (=> start!117640 (=> (not res!922712) (not e!782485))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94074 0))(
  ( (array!94075 (arr!45425 (Array (_ BitVec 32) (_ BitVec 64))) (size!45976 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94074)

(assert (=> start!117640 (= res!922712 (and (bvslt (size!45976 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45976 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117640 e!782485))

(declare-fun array_inv!34370 (array!94074) Bool)

(assert (=> start!117640 (array_inv!34370 a!3931)))

(assert (=> start!117640 true))

(declare-fun b!1380669 () Bool)

(declare-fun res!922713 () Bool)

(assert (=> b!1380669 (=> (not res!922713) (not e!782485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380669 (= res!922713 (not (validKeyInArray!0 (select (arr!45425 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380670 () Bool)

(assert (=> b!1380670 (= e!782485 (bvsgt from!3309 to!105))))

(assert (= (and start!117640 res!922712) b!1380669))

(assert (= (and b!1380669 res!922713) b!1380670))

(declare-fun m!1265961 () Bool)

(assert (=> start!117640 m!1265961))

(declare-fun m!1265963 () Bool)

(assert (=> b!1380669 m!1265963))

(assert (=> b!1380669 m!1265963))

(declare-fun m!1265965 () Bool)

(assert (=> b!1380669 m!1265965))

(check-sat (not b!1380669) (not start!117640))
(check-sat)
