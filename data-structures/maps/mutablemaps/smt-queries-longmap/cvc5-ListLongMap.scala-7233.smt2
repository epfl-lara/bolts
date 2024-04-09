; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92496 () Bool)

(assert start!92496)

(declare-fun res!700478 () Bool)

(declare-fun e!596753 () Bool)

(assert (=> start!92496 (=> (not res!700478) (not e!596753))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66245 0))(
  ( (array!66246 (arr!31858 (Array (_ BitVec 32) (_ BitVec 64))) (size!32395 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66245)

(assert (=> start!92496 (= res!700478 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32395 a!3488)) (bvslt (size!32395 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92496 e!596753))

(assert (=> start!92496 true))

(declare-fun array_inv!24480 (array!66245) Bool)

(assert (=> start!92496 (array_inv!24480 a!3488)))

(declare-fun b!1051242 () Bool)

(declare-fun res!700485 () Bool)

(assert (=> b!1051242 (=> (not res!700485) (not e!596753))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1051242 (= res!700485 (= (select (arr!31858 a!3488) i!1381) k!2747))))

(declare-fun b!1051243 () Bool)

(declare-fun res!700484 () Bool)

(assert (=> b!1051243 (=> (not res!700484) (not e!596753))))

(declare-datatypes ((List!22301 0))(
  ( (Nil!22298) (Cons!22297 (h!23506 (_ BitVec 64)) (t!31615 List!22301)) )
))
(declare-fun arrayNoDuplicates!0 (array!66245 (_ BitVec 32) List!22301) Bool)

(assert (=> b!1051243 (= res!700484 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22298))))

(declare-fun b!1051244 () Bool)

(declare-fun e!596750 () Bool)

(declare-fun e!596752 () Bool)

(assert (=> b!1051244 (= e!596750 e!596752)))

(declare-fun res!700481 () Bool)

(assert (=> b!1051244 (=> (not res!700481) (not e!596752))))

(declare-fun lt!464202 () (_ BitVec 32))

(assert (=> b!1051244 (= res!700481 (not (= lt!464202 i!1381)))))

(declare-fun lt!464201 () array!66245)

(declare-fun arrayScanForKey!0 (array!66245 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051244 (= lt!464202 (arrayScanForKey!0 lt!464201 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051245 () Bool)

(declare-fun e!596751 () Bool)

(declare-fun arrayContainsKey!0 (array!66245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051245 (= e!596751 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051246 () Bool)

(declare-fun res!700477 () Bool)

(assert (=> b!1051246 (=> (not res!700477) (not e!596753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051246 (= res!700477 (validKeyInArray!0 k!2747))))

(declare-fun b!1051247 () Bool)

(assert (=> b!1051247 (= e!596753 e!596750)))

(declare-fun res!700483 () Bool)

(assert (=> b!1051247 (=> (not res!700483) (not e!596750))))

(assert (=> b!1051247 (= res!700483 (arrayContainsKey!0 lt!464201 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051247 (= lt!464201 (array!66246 (store (arr!31858 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32395 a!3488)))))

(declare-fun b!1051248 () Bool)

(declare-fun e!596748 () Bool)

(assert (=> b!1051248 (= e!596748 true)))

(assert (=> b!1051248 (arrayNoDuplicates!0 a!3488 lt!464202 Nil!22298)))

(declare-datatypes ((Unit!34397 0))(
  ( (Unit!34398) )
))
(declare-fun lt!464203 () Unit!34397)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66245 (_ BitVec 32) (_ BitVec 32)) Unit!34397)

(assert (=> b!1051248 (= lt!464203 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464202))))

(declare-fun b!1051249 () Bool)

(assert (=> b!1051249 (= e!596752 (not e!596748))))

(declare-fun res!700479 () Bool)

(assert (=> b!1051249 (=> res!700479 e!596748)))

(assert (=> b!1051249 (= res!700479 (or (bvsgt lt!464202 i!1381) (bvsle i!1381 lt!464202)))))

(declare-fun e!596747 () Bool)

(assert (=> b!1051249 e!596747))

(declare-fun res!700480 () Bool)

(assert (=> b!1051249 (=> (not res!700480) (not e!596747))))

(assert (=> b!1051249 (= res!700480 (= (select (store (arr!31858 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464202) k!2747))))

(declare-fun b!1051250 () Bool)

(assert (=> b!1051250 (= e!596747 e!596751)))

(declare-fun res!700482 () Bool)

(assert (=> b!1051250 (=> res!700482 e!596751)))

(assert (=> b!1051250 (= res!700482 (or (bvsgt lt!464202 i!1381) (bvsle i!1381 lt!464202)))))

(assert (= (and start!92496 res!700478) b!1051243))

(assert (= (and b!1051243 res!700484) b!1051246))

(assert (= (and b!1051246 res!700477) b!1051242))

(assert (= (and b!1051242 res!700485) b!1051247))

(assert (= (and b!1051247 res!700483) b!1051244))

(assert (= (and b!1051244 res!700481) b!1051249))

(assert (= (and b!1051249 res!700480) b!1051250))

(assert (= (and b!1051250 (not res!700482)) b!1051245))

(assert (= (and b!1051249 (not res!700479)) b!1051248))

(declare-fun m!971913 () Bool)

(assert (=> b!1051247 m!971913))

(declare-fun m!971915 () Bool)

(assert (=> b!1051247 m!971915))

(declare-fun m!971917 () Bool)

(assert (=> b!1051248 m!971917))

(declare-fun m!971919 () Bool)

(assert (=> b!1051248 m!971919))

(declare-fun m!971921 () Bool)

(assert (=> b!1051244 m!971921))

(declare-fun m!971923 () Bool)

(assert (=> b!1051246 m!971923))

(declare-fun m!971925 () Bool)

(assert (=> b!1051242 m!971925))

(declare-fun m!971927 () Bool)

(assert (=> start!92496 m!971927))

(declare-fun m!971929 () Bool)

(assert (=> b!1051243 m!971929))

(assert (=> b!1051249 m!971915))

(declare-fun m!971931 () Bool)

(assert (=> b!1051249 m!971931))

(declare-fun m!971933 () Bool)

(assert (=> b!1051245 m!971933))

(push 1)

