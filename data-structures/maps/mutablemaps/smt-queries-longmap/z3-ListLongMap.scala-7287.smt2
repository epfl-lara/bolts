; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93152 () Bool)

(assert start!93152)

(declare-fun b!1056163 () Bool)

(declare-fun e!600438 () Bool)

(declare-fun e!600439 () Bool)

(assert (=> b!1056163 (= e!600438 e!600439)))

(declare-fun res!705057 () Bool)

(assert (=> b!1056163 (=> (not res!705057) (not e!600439))))

(declare-datatypes ((array!66598 0))(
  ( (array!66599 (arr!32021 (Array (_ BitVec 32) (_ BitVec 64))) (size!32558 (_ BitVec 32))) )
))
(declare-fun lt!466036 () array!66598)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056163 (= res!705057 (arrayContainsKey!0 lt!466036 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66598)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056163 (= lt!466036 (array!66599 (store (arr!32021 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32558 a!3488)))))

(declare-fun b!1056164 () Bool)

(declare-fun res!705055 () Bool)

(assert (=> b!1056164 (=> (not res!705055) (not e!600438))))

(declare-datatypes ((List!22464 0))(
  ( (Nil!22461) (Cons!22460 (h!23669 (_ BitVec 64)) (t!31778 List!22464)) )
))
(declare-fun arrayNoDuplicates!0 (array!66598 (_ BitVec 32) List!22464) Bool)

(assert (=> b!1056164 (= res!705055 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22461))))

(declare-fun b!1056165 () Bool)

(declare-fun e!600435 () Bool)

(assert (=> b!1056165 (= e!600439 e!600435)))

(declare-fun res!705056 () Bool)

(assert (=> b!1056165 (=> (not res!705056) (not e!600435))))

(declare-fun lt!466035 () (_ BitVec 32))

(assert (=> b!1056165 (= res!705056 (not (= lt!466035 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66598 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056165 (= lt!466035 (arrayScanForKey!0 lt!466036 k0!2747 #b00000000000000000000000000000000))))

(declare-fun e!600440 () Bool)

(declare-fun b!1056166 () Bool)

(assert (=> b!1056166 (= e!600440 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056167 () Bool)

(assert (=> b!1056167 (= e!600435 (not true))))

(declare-fun e!600437 () Bool)

(assert (=> b!1056167 e!600437))

(declare-fun res!705053 () Bool)

(assert (=> b!1056167 (=> (not res!705053) (not e!600437))))

(assert (=> b!1056167 (= res!705053 (= (select (store (arr!32021 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466035) k0!2747))))

(declare-fun b!1056168 () Bool)

(declare-fun res!705052 () Bool)

(assert (=> b!1056168 (=> (not res!705052) (not e!600438))))

(assert (=> b!1056168 (= res!705052 (= (select (arr!32021 a!3488) i!1381) k0!2747))))

(declare-fun b!1056169 () Bool)

(assert (=> b!1056169 (= e!600437 e!600440)))

(declare-fun res!705051 () Bool)

(assert (=> b!1056169 (=> res!705051 e!600440)))

(assert (=> b!1056169 (= res!705051 (or (bvsgt lt!466035 i!1381) (bvsle i!1381 lt!466035)))))

(declare-fun res!705054 () Bool)

(assert (=> start!93152 (=> (not res!705054) (not e!600438))))

(assert (=> start!93152 (= res!705054 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32558 a!3488)) (bvslt (size!32558 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93152 e!600438))

(assert (=> start!93152 true))

(declare-fun array_inv!24643 (array!66598) Bool)

(assert (=> start!93152 (array_inv!24643 a!3488)))

(declare-fun b!1056170 () Bool)

(declare-fun res!705050 () Bool)

(assert (=> b!1056170 (=> (not res!705050) (not e!600438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056170 (= res!705050 (validKeyInArray!0 k0!2747))))

(assert (= (and start!93152 res!705054) b!1056164))

(assert (= (and b!1056164 res!705055) b!1056170))

(assert (= (and b!1056170 res!705050) b!1056168))

(assert (= (and b!1056168 res!705052) b!1056163))

(assert (= (and b!1056163 res!705057) b!1056165))

(assert (= (and b!1056165 res!705056) b!1056167))

(assert (= (and b!1056167 res!705053) b!1056169))

(assert (= (and b!1056169 (not res!705051)) b!1056166))

(declare-fun m!976221 () Bool)

(assert (=> b!1056167 m!976221))

(declare-fun m!976223 () Bool)

(assert (=> b!1056167 m!976223))

(declare-fun m!976225 () Bool)

(assert (=> b!1056168 m!976225))

(declare-fun m!976227 () Bool)

(assert (=> b!1056166 m!976227))

(declare-fun m!976229 () Bool)

(assert (=> b!1056165 m!976229))

(declare-fun m!976231 () Bool)

(assert (=> b!1056170 m!976231))

(declare-fun m!976233 () Bool)

(assert (=> b!1056163 m!976233))

(assert (=> b!1056163 m!976221))

(declare-fun m!976235 () Bool)

(assert (=> start!93152 m!976235))

(declare-fun m!976237 () Bool)

(assert (=> b!1056164 m!976237))

(check-sat (not b!1056164) (not start!93152) (not b!1056170) (not b!1056166) (not b!1056165) (not b!1056163))
(check-sat)
