; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93284 () Bool)

(assert start!93284)

(declare-fun e!601251 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun b!1057212 () Bool)

(declare-datatypes ((array!66670 0))(
  ( (array!66671 (arr!32054 (Array (_ BitVec 32) (_ BitVec 64))) (size!32591 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66670)

(declare-fun arrayContainsKey!0 (array!66670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057212 (= e!601251 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057213 () Bool)

(declare-fun res!706028 () Bool)

(declare-fun e!601252 () Bool)

(assert (=> b!1057213 (=> (not res!706028) (not e!601252))))

(assert (=> b!1057213 (= res!706028 (= (select (arr!32054 a!3488) i!1381) k0!2747))))

(declare-fun b!1057214 () Bool)

(declare-fun res!706023 () Bool)

(assert (=> b!1057214 (=> (not res!706023) (not e!601252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057214 (= res!706023 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057215 () Bool)

(declare-fun e!601248 () Bool)

(assert (=> b!1057215 (= e!601248 e!601251)))

(declare-fun res!706022 () Bool)

(assert (=> b!1057215 (=> res!706022 e!601251)))

(declare-fun lt!466359 () (_ BitVec 32))

(assert (=> b!1057215 (= res!706022 (or (bvsgt lt!466359 i!1381) (bvsle i!1381 lt!466359)))))

(declare-fun b!1057216 () Bool)

(declare-fun e!601247 () Bool)

(declare-fun e!601253 () Bool)

(assert (=> b!1057216 (= e!601247 e!601253)))

(declare-fun res!706026 () Bool)

(assert (=> b!1057216 (=> (not res!706026) (not e!601253))))

(assert (=> b!1057216 (= res!706026 (not (= lt!466359 i!1381)))))

(declare-fun lt!466357 () array!66670)

(declare-fun arrayScanForKey!0 (array!66670 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057216 (= lt!466359 (arrayScanForKey!0 lt!466357 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057217 () Bool)

(declare-fun res!706027 () Bool)

(assert (=> b!1057217 (=> (not res!706027) (not e!601252))))

(declare-datatypes ((List!22497 0))(
  ( (Nil!22494) (Cons!22493 (h!23702 (_ BitVec 64)) (t!31811 List!22497)) )
))
(declare-fun arrayNoDuplicates!0 (array!66670 (_ BitVec 32) List!22497) Bool)

(assert (=> b!1057217 (= res!706027 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22494))))

(declare-fun b!1057218 () Bool)

(declare-fun e!601249 () Bool)

(assert (=> b!1057218 (= e!601249 true)))

(declare-fun lt!466360 () (_ BitVec 32))

(assert (=> b!1057218 (arrayContainsKey!0 a!3488 k0!2747 lt!466360)))

(declare-datatypes ((Unit!34639 0))(
  ( (Unit!34640) )
))
(declare-fun lt!466356 () Unit!34639)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66670 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34639)

(assert (=> b!1057218 (= lt!466356 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466360))))

(assert (=> b!1057218 (= lt!466360 (bvadd #b00000000000000000000000000000001 lt!466359))))

(assert (=> b!1057218 (arrayNoDuplicates!0 a!3488 lt!466359 Nil!22494)))

(declare-fun lt!466358 () Unit!34639)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66670 (_ BitVec 32) (_ BitVec 32)) Unit!34639)

(assert (=> b!1057218 (= lt!466358 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466359))))

(declare-fun b!1057219 () Bool)

(assert (=> b!1057219 (= e!601252 e!601247)))

(declare-fun res!706025 () Bool)

(assert (=> b!1057219 (=> (not res!706025) (not e!601247))))

(assert (=> b!1057219 (= res!706025 (arrayContainsKey!0 lt!466357 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057219 (= lt!466357 (array!66671 (store (arr!32054 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32591 a!3488)))))

(declare-fun b!1057220 () Bool)

(assert (=> b!1057220 (= e!601253 (not e!601249))))

(declare-fun res!706021 () Bool)

(assert (=> b!1057220 (=> res!706021 e!601249)))

(assert (=> b!1057220 (= res!706021 (or (bvsgt lt!466359 i!1381) (bvsle i!1381 lt!466359)))))

(assert (=> b!1057220 e!601248))

(declare-fun res!706024 () Bool)

(assert (=> b!1057220 (=> (not res!706024) (not e!601248))))

(assert (=> b!1057220 (= res!706024 (= (select (store (arr!32054 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466359) k0!2747))))

(declare-fun res!706029 () Bool)

(assert (=> start!93284 (=> (not res!706029) (not e!601252))))

(assert (=> start!93284 (= res!706029 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32591 a!3488)) (bvslt (size!32591 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93284 e!601252))

(assert (=> start!93284 true))

(declare-fun array_inv!24676 (array!66670) Bool)

(assert (=> start!93284 (array_inv!24676 a!3488)))

(assert (= (and start!93284 res!706029) b!1057217))

(assert (= (and b!1057217 res!706027) b!1057214))

(assert (= (and b!1057214 res!706023) b!1057213))

(assert (= (and b!1057213 res!706028) b!1057219))

(assert (= (and b!1057219 res!706025) b!1057216))

(assert (= (and b!1057216 res!706026) b!1057220))

(assert (= (and b!1057220 res!706024) b!1057215))

(assert (= (and b!1057215 (not res!706022)) b!1057212))

(assert (= (and b!1057220 (not res!706021)) b!1057218))

(declare-fun m!977057 () Bool)

(assert (=> b!1057220 m!977057))

(declare-fun m!977059 () Bool)

(assert (=> b!1057220 m!977059))

(declare-fun m!977061 () Bool)

(assert (=> b!1057218 m!977061))

(declare-fun m!977063 () Bool)

(assert (=> b!1057218 m!977063))

(declare-fun m!977065 () Bool)

(assert (=> b!1057218 m!977065))

(declare-fun m!977067 () Bool)

(assert (=> b!1057218 m!977067))

(declare-fun m!977069 () Bool)

(assert (=> start!93284 m!977069))

(declare-fun m!977071 () Bool)

(assert (=> b!1057217 m!977071))

(declare-fun m!977073 () Bool)

(assert (=> b!1057212 m!977073))

(declare-fun m!977075 () Bool)

(assert (=> b!1057219 m!977075))

(assert (=> b!1057219 m!977057))

(declare-fun m!977077 () Bool)

(assert (=> b!1057213 m!977077))

(declare-fun m!977079 () Bool)

(assert (=> b!1057214 m!977079))

(declare-fun m!977081 () Bool)

(assert (=> b!1057216 m!977081))

(check-sat (not b!1057218) (not b!1057214) (not b!1057216) (not b!1057219) (not start!93284) (not b!1057212) (not b!1057217))
(check-sat)
