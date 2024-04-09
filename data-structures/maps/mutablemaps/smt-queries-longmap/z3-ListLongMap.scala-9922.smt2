; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117346 () Bool)

(assert start!117346)

(declare-fun res!922182 () Bool)

(declare-fun e!781622 () Bool)

(assert (=> start!117346 (=> (not res!922182) (not e!781622))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93858 0))(
  ( (array!93859 (arr!45323 (Array (_ BitVec 32) (_ BitVec 64))) (size!45874 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93858)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117346 (= res!922182 (and (bvslt (size!45874 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45874 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117346 e!781622))

(declare-fun array_inv!34268 (array!93858) Bool)

(assert (=> start!117346 (array_inv!34268 a!4010)))

(assert (=> start!117346 true))

(declare-fun b!1379634 () Bool)

(declare-fun res!922181 () Bool)

(assert (=> b!1379634 (=> (not res!922181) (not e!781622))))

(declare-fun isPivot!0 (array!93858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379634 (= res!922181 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379635 () Bool)

(assert (=> b!1379635 (= e!781622 (not true))))

(assert (=> b!1379635 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45853 0))(
  ( (Unit!45854) )
))
(declare-fun lt!607669 () Unit!45853)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45853)

(assert (=> b!1379635 (= lt!607669 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117346 res!922182) b!1379634))

(assert (= (and b!1379634 res!922181) b!1379635))

(declare-fun m!1264889 () Bool)

(assert (=> start!117346 m!1264889))

(declare-fun m!1264891 () Bool)

(assert (=> b!1379634 m!1264891))

(declare-fun m!1264893 () Bool)

(assert (=> b!1379635 m!1264893))

(declare-fun m!1264895 () Bool)

(assert (=> b!1379635 m!1264895))

(check-sat (not start!117346) (not b!1379635) (not b!1379634))
