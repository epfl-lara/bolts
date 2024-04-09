; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92546 () Bool)

(assert start!92546)

(declare-fun b!1052067 () Bool)

(declare-fun e!597325 () Bool)

(declare-fun e!597327 () Bool)

(assert (=> b!1052067 (= e!597325 e!597327)))

(declare-fun res!701306 () Bool)

(assert (=> b!1052067 (=> (not res!701306) (not e!597327))))

(declare-fun lt!464579 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052067 (= res!701306 (not (= lt!464579 i!1381)))))

(declare-datatypes ((array!66295 0))(
  ( (array!66296 (arr!31883 (Array (_ BitVec 32) (_ BitVec 64))) (size!32420 (_ BitVec 32))) )
))
(declare-fun lt!464581 () array!66295)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66295 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052067 (= lt!464579 (arrayScanForKey!0 lt!464581 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052068 () Bool)

(declare-fun res!701307 () Bool)

(declare-fun e!597329 () Bool)

(assert (=> b!1052068 (=> res!701307 e!597329)))

(declare-datatypes ((List!22326 0))(
  ( (Nil!22323) (Cons!22322 (h!23531 (_ BitVec 64)) (t!31640 List!22326)) )
))
(declare-fun noDuplicate!1552 (List!22326) Bool)

(assert (=> b!1052068 (= res!701307 (not (noDuplicate!1552 Nil!22323)))))

(declare-fun b!1052069 () Bool)

(declare-fun e!597322 () Bool)

(assert (=> b!1052069 (= e!597322 e!597329)))

(declare-fun res!701305 () Bool)

(assert (=> b!1052069 (=> res!701305 e!597329)))

(declare-fun lt!464580 () (_ BitVec 32))

(declare-fun a!3488 () array!66295)

(assert (=> b!1052069 (= res!701305 (or (bvslt lt!464579 #b00000000000000000000000000000000) (bvsge lt!464580 (size!32420 a!3488)) (bvsge lt!464579 (size!32420 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052069 (arrayContainsKey!0 a!3488 k0!2747 lt!464580)))

(declare-datatypes ((Unit!34447 0))(
  ( (Unit!34448) )
))
(declare-fun lt!464577 () Unit!34447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66295 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34447)

(assert (=> b!1052069 (= lt!464577 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464580))))

(assert (=> b!1052069 (= lt!464580 (bvadd #b00000000000000000000000000000001 lt!464579))))

(declare-fun arrayNoDuplicates!0 (array!66295 (_ BitVec 32) List!22326) Bool)

(assert (=> b!1052069 (arrayNoDuplicates!0 a!3488 lt!464579 Nil!22323)))

(declare-fun lt!464576 () Unit!34447)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66295 (_ BitVec 32) (_ BitVec 32)) Unit!34447)

(assert (=> b!1052069 (= lt!464576 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464579))))

(declare-fun b!1052071 () Bool)

(declare-fun res!701302 () Bool)

(declare-fun e!597323 () Bool)

(assert (=> b!1052071 (=> (not res!701302) (not e!597323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052071 (= res!701302 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052072 () Bool)

(declare-fun e!597328 () Bool)

(declare-fun e!597324 () Bool)

(assert (=> b!1052072 (= e!597328 e!597324)))

(declare-fun res!701308 () Bool)

(assert (=> b!1052072 (=> res!701308 e!597324)))

(assert (=> b!1052072 (= res!701308 (or (bvsgt lt!464579 i!1381) (bvsle i!1381 lt!464579)))))

(declare-fun b!1052070 () Bool)

(assert (=> b!1052070 (= e!597323 e!597325)))

(declare-fun res!701303 () Bool)

(assert (=> b!1052070 (=> (not res!701303) (not e!597325))))

(assert (=> b!1052070 (= res!701303 (arrayContainsKey!0 lt!464581 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052070 (= lt!464581 (array!66296 (store (arr!31883 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32420 a!3488)))))

(declare-fun res!701304 () Bool)

(assert (=> start!92546 (=> (not res!701304) (not e!597323))))

(assert (=> start!92546 (= res!701304 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32420 a!3488)) (bvslt (size!32420 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92546 e!597323))

(assert (=> start!92546 true))

(declare-fun array_inv!24505 (array!66295) Bool)

(assert (=> start!92546 (array_inv!24505 a!3488)))

(declare-fun b!1052073 () Bool)

(declare-fun res!701311 () Bool)

(assert (=> b!1052073 (=> (not res!701311) (not e!597323))))

(assert (=> b!1052073 (= res!701311 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22323))))

(declare-fun b!1052074 () Bool)

(assert (=> b!1052074 (= e!597324 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1052075 () Bool)

(assert (=> b!1052075 (= e!597327 (not e!597322))))

(declare-fun res!701313 () Bool)

(assert (=> b!1052075 (=> res!701313 e!597322)))

(assert (=> b!1052075 (= res!701313 (or (bvsgt lt!464579 i!1381) (bvsle i!1381 lt!464579)))))

(assert (=> b!1052075 e!597328))

(declare-fun res!701310 () Bool)

(assert (=> b!1052075 (=> (not res!701310) (not e!597328))))

(assert (=> b!1052075 (= res!701310 (= (select (store (arr!31883 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464579) k0!2747))))

(declare-fun b!1052076 () Bool)

(assert (=> b!1052076 (= e!597329 true)))

(declare-fun lt!464578 () Bool)

(declare-fun contains!6167 (List!22326 (_ BitVec 64)) Bool)

(assert (=> b!1052076 (= lt!464578 (contains!6167 Nil!22323 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052077 () Bool)

(declare-fun res!701309 () Bool)

(assert (=> b!1052077 (=> res!701309 e!597329)))

(assert (=> b!1052077 (= res!701309 (contains!6167 Nil!22323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052078 () Bool)

(declare-fun res!701312 () Bool)

(assert (=> b!1052078 (=> (not res!701312) (not e!597323))))

(assert (=> b!1052078 (= res!701312 (= (select (arr!31883 a!3488) i!1381) k0!2747))))

(assert (= (and start!92546 res!701304) b!1052073))

(assert (= (and b!1052073 res!701311) b!1052071))

(assert (= (and b!1052071 res!701302) b!1052078))

(assert (= (and b!1052078 res!701312) b!1052070))

(assert (= (and b!1052070 res!701303) b!1052067))

(assert (= (and b!1052067 res!701306) b!1052075))

(assert (= (and b!1052075 res!701310) b!1052072))

(assert (= (and b!1052072 (not res!701308)) b!1052074))

(assert (= (and b!1052075 (not res!701313)) b!1052069))

(assert (= (and b!1052069 (not res!701305)) b!1052068))

(assert (= (and b!1052068 (not res!701307)) b!1052077))

(assert (= (and b!1052077 (not res!701309)) b!1052076))

(declare-fun m!972623 () Bool)

(assert (=> b!1052074 m!972623))

(declare-fun m!972625 () Bool)

(assert (=> b!1052071 m!972625))

(declare-fun m!972627 () Bool)

(assert (=> b!1052077 m!972627))

(declare-fun m!972629 () Bool)

(assert (=> b!1052078 m!972629))

(declare-fun m!972631 () Bool)

(assert (=> b!1052075 m!972631))

(declare-fun m!972633 () Bool)

(assert (=> b!1052075 m!972633))

(declare-fun m!972635 () Bool)

(assert (=> start!92546 m!972635))

(declare-fun m!972637 () Bool)

(assert (=> b!1052067 m!972637))

(declare-fun m!972639 () Bool)

(assert (=> b!1052070 m!972639))

(assert (=> b!1052070 m!972631))

(declare-fun m!972641 () Bool)

(assert (=> b!1052076 m!972641))

(declare-fun m!972643 () Bool)

(assert (=> b!1052073 m!972643))

(declare-fun m!972645 () Bool)

(assert (=> b!1052068 m!972645))

(declare-fun m!972647 () Bool)

(assert (=> b!1052069 m!972647))

(declare-fun m!972649 () Bool)

(assert (=> b!1052069 m!972649))

(declare-fun m!972651 () Bool)

(assert (=> b!1052069 m!972651))

(declare-fun m!972653 () Bool)

(assert (=> b!1052069 m!972653))

(check-sat (not b!1052068) (not b!1052067) (not b!1052076) (not b!1052077) (not b!1052069) (not b!1052071) (not b!1052073) (not b!1052070) (not b!1052074) (not start!92546))
(check-sat)
