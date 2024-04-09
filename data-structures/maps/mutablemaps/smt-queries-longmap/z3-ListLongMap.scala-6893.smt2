; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86700 () Bool)

(assert start!86700)

(declare-fun res!674284 () Bool)

(declare-fun e!565869 () Bool)

(assert (=> start!86700 (=> (not res!674284) (not e!565869))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86700 (= res!674284 (validMask!0 mask!3464))))

(assert (=> start!86700 e!565869))

(declare-datatypes ((array!63402 0))(
  ( (array!63403 (arr!30521 (Array (_ BitVec 32) (_ BitVec 64))) (size!31024 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63402)

(declare-fun array_inv!23511 (array!63402) Bool)

(assert (=> start!86700 (array_inv!23511 a!3219)))

(assert (=> start!86700 true))

(declare-fun b!1004836 () Bool)

(declare-fun e!565873 () Bool)

(assert (=> b!1004836 (= e!565869 e!565873)))

(declare-fun res!674278 () Bool)

(assert (=> b!1004836 (=> (not res!674278) (not e!565873))))

(declare-datatypes ((SeekEntryResult!9453 0))(
  ( (MissingZero!9453 (index!40182 (_ BitVec 32))) (Found!9453 (index!40183 (_ BitVec 32))) (Intermediate!9453 (undefined!10265 Bool) (index!40184 (_ BitVec 32)) (x!87616 (_ BitVec 32))) (Undefined!9453) (MissingVacant!9453 (index!40185 (_ BitVec 32))) )
))
(declare-fun lt!444336 () SeekEntryResult!9453)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004836 (= res!674278 (or (= lt!444336 (MissingVacant!9453 i!1194)) (= lt!444336 (MissingZero!9453 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63402 (_ BitVec 32)) SeekEntryResult!9453)

(assert (=> b!1004836 (= lt!444336 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1004837 () Bool)

(declare-fun res!674283 () Bool)

(declare-fun e!565871 () Bool)

(assert (=> b!1004837 (=> (not res!674283) (not e!565871))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444338 () (_ BitVec 64))

(declare-fun lt!444334 () SeekEntryResult!9453)

(declare-fun lt!444335 () array!63402)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63402 (_ BitVec 32)) SeekEntryResult!9453)

(assert (=> b!1004837 (= res!674283 (not (= lt!444334 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444338 lt!444335 mask!3464))))))

(declare-fun b!1004838 () Bool)

(declare-fun res!674277 () Bool)

(assert (=> b!1004838 (=> (not res!674277) (not e!565869))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004838 (= res!674277 (validKeyInArray!0 (select (arr!30521 a!3219) j!170)))))

(declare-fun b!1004839 () Bool)

(declare-fun res!674276 () Bool)

(assert (=> b!1004839 (=> (not res!674276) (not e!565873))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004839 (= res!674276 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31024 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31024 a!3219))))))

(declare-fun b!1004840 () Bool)

(declare-fun res!674282 () Bool)

(assert (=> b!1004840 (=> (not res!674282) (not e!565869))))

(declare-fun arrayContainsKey!0 (array!63402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004840 (= res!674282 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004841 () Bool)

(declare-fun res!674286 () Bool)

(assert (=> b!1004841 (=> (not res!674286) (not e!565869))))

(assert (=> b!1004841 (= res!674286 (and (= (size!31024 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31024 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31024 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004842 () Bool)

(declare-fun e!565872 () Bool)

(assert (=> b!1004842 (= e!565873 e!565872)))

(declare-fun res!674279 () Bool)

(assert (=> b!1004842 (=> (not res!674279) (not e!565872))))

(declare-fun lt!444337 () SeekEntryResult!9453)

(declare-fun lt!444339 () SeekEntryResult!9453)

(assert (=> b!1004842 (= res!674279 (= lt!444337 lt!444339))))

(assert (=> b!1004842 (= lt!444339 (Intermediate!9453 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004842 (= lt!444337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) (select (arr!30521 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004843 () Bool)

(declare-fun res!674280 () Bool)

(assert (=> b!1004843 (=> (not res!674280) (not e!565873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63402 (_ BitVec 32)) Bool)

(assert (=> b!1004843 (= res!674280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004844 () Bool)

(declare-fun res!674285 () Bool)

(assert (=> b!1004844 (=> (not res!674285) (not e!565869))))

(assert (=> b!1004844 (= res!674285 (validKeyInArray!0 k0!2224))))

(declare-fun b!1004845 () Bool)

(declare-fun res!674275 () Bool)

(assert (=> b!1004845 (=> (not res!674275) (not e!565873))))

(declare-datatypes ((List!21323 0))(
  ( (Nil!21320) (Cons!21319 (h!22499 (_ BitVec 64)) (t!30332 List!21323)) )
))
(declare-fun arrayNoDuplicates!0 (array!63402 (_ BitVec 32) List!21323) Bool)

(assert (=> b!1004845 (= res!674275 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21320))))

(declare-fun b!1004846 () Bool)

(declare-fun e!565870 () Bool)

(assert (=> b!1004846 (= e!565872 e!565870)))

(declare-fun res!674287 () Bool)

(assert (=> b!1004846 (=> (not res!674287) (not e!565870))))

(assert (=> b!1004846 (= res!674287 (= lt!444334 lt!444339))))

(assert (=> b!1004846 (= lt!444334 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30521 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004847 () Bool)

(assert (=> b!1004847 (= e!565871 (and (not (= index!1507 resIndex!38)) (= index!1507 i!1194)))))

(declare-fun b!1004848 () Bool)

(assert (=> b!1004848 (= e!565870 e!565871)))

(declare-fun res!674281 () Bool)

(assert (=> b!1004848 (=> (not res!674281) (not e!565871))))

(assert (=> b!1004848 (= res!674281 (not (= lt!444337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444338 mask!3464) lt!444338 lt!444335 mask!3464))))))

(assert (=> b!1004848 (= lt!444338 (select (store (arr!30521 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1004848 (= lt!444335 (array!63403 (store (arr!30521 a!3219) i!1194 k0!2224) (size!31024 a!3219)))))

(assert (= (and start!86700 res!674284) b!1004841))

(assert (= (and b!1004841 res!674286) b!1004838))

(assert (= (and b!1004838 res!674277) b!1004844))

(assert (= (and b!1004844 res!674285) b!1004840))

(assert (= (and b!1004840 res!674282) b!1004836))

(assert (= (and b!1004836 res!674278) b!1004843))

(assert (= (and b!1004843 res!674280) b!1004845))

(assert (= (and b!1004845 res!674275) b!1004839))

(assert (= (and b!1004839 res!674276) b!1004842))

(assert (= (and b!1004842 res!674279) b!1004846))

(assert (= (and b!1004846 res!674287) b!1004848))

(assert (= (and b!1004848 res!674281) b!1004837))

(assert (= (and b!1004837 res!674283) b!1004847))

(declare-fun m!930343 () Bool)

(assert (=> b!1004848 m!930343))

(assert (=> b!1004848 m!930343))

(declare-fun m!930345 () Bool)

(assert (=> b!1004848 m!930345))

(declare-fun m!930347 () Bool)

(assert (=> b!1004848 m!930347))

(declare-fun m!930349 () Bool)

(assert (=> b!1004848 m!930349))

(declare-fun m!930351 () Bool)

(assert (=> start!86700 m!930351))

(declare-fun m!930353 () Bool)

(assert (=> start!86700 m!930353))

(declare-fun m!930355 () Bool)

(assert (=> b!1004846 m!930355))

(assert (=> b!1004846 m!930355))

(declare-fun m!930357 () Bool)

(assert (=> b!1004846 m!930357))

(declare-fun m!930359 () Bool)

(assert (=> b!1004843 m!930359))

(declare-fun m!930361 () Bool)

(assert (=> b!1004845 m!930361))

(declare-fun m!930363 () Bool)

(assert (=> b!1004837 m!930363))

(declare-fun m!930365 () Bool)

(assert (=> b!1004844 m!930365))

(assert (=> b!1004842 m!930355))

(assert (=> b!1004842 m!930355))

(declare-fun m!930367 () Bool)

(assert (=> b!1004842 m!930367))

(assert (=> b!1004842 m!930367))

(assert (=> b!1004842 m!930355))

(declare-fun m!930369 () Bool)

(assert (=> b!1004842 m!930369))

(declare-fun m!930371 () Bool)

(assert (=> b!1004840 m!930371))

(assert (=> b!1004838 m!930355))

(assert (=> b!1004838 m!930355))

(declare-fun m!930373 () Bool)

(assert (=> b!1004838 m!930373))

(declare-fun m!930375 () Bool)

(assert (=> b!1004836 m!930375))

(check-sat (not b!1004843) (not b!1004842) (not b!1004848) (not b!1004836) (not b!1004838) (not b!1004837) (not b!1004844) (not b!1004840) (not start!86700) (not b!1004845) (not b!1004846))
(check-sat)
(get-model)

(declare-fun b!1004906 () Bool)

(declare-fun e!565903 () SeekEntryResult!9453)

(assert (=> b!1004906 (= e!565903 (Intermediate!9453 false index!1507 x!1245))))

(declare-fun b!1004907 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004907 (= e!565903 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444338 lt!444335 mask!3464))))

(declare-fun d!119433 () Bool)

(declare-fun e!565906 () Bool)

(assert (=> d!119433 e!565906))

(declare-fun c!101437 () Bool)

(declare-fun lt!444362 () SeekEntryResult!9453)

(get-info :version)

(assert (=> d!119433 (= c!101437 (and ((_ is Intermediate!9453) lt!444362) (undefined!10265 lt!444362)))))

(declare-fun e!565904 () SeekEntryResult!9453)

(assert (=> d!119433 (= lt!444362 e!565904)))

(declare-fun c!101438 () Bool)

(assert (=> d!119433 (= c!101438 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444363 () (_ BitVec 64))

(assert (=> d!119433 (= lt!444363 (select (arr!30521 lt!444335) index!1507))))

(assert (=> d!119433 (validMask!0 mask!3464)))

(assert (=> d!119433 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444338 lt!444335 mask!3464) lt!444362)))

(declare-fun b!1004908 () Bool)

(assert (=> b!1004908 (= e!565904 (Intermediate!9453 true index!1507 x!1245))))

(declare-fun b!1004909 () Bool)

(assert (=> b!1004909 (= e!565906 (bvsge (x!87616 lt!444362) #b01111111111111111111111111111110))))

(declare-fun b!1004910 () Bool)

(assert (=> b!1004910 (= e!565904 e!565903)))

(declare-fun c!101439 () Bool)

(assert (=> b!1004910 (= c!101439 (or (= lt!444363 lt!444338) (= (bvadd lt!444363 lt!444363) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004911 () Bool)

(assert (=> b!1004911 (and (bvsge (index!40184 lt!444362) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444362) (size!31024 lt!444335)))))

(declare-fun res!674333 () Bool)

(assert (=> b!1004911 (= res!674333 (= (select (arr!30521 lt!444335) (index!40184 lt!444362)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565907 () Bool)

(assert (=> b!1004911 (=> res!674333 e!565907)))

(declare-fun b!1004912 () Bool)

(declare-fun e!565905 () Bool)

(assert (=> b!1004912 (= e!565906 e!565905)))

(declare-fun res!674335 () Bool)

(assert (=> b!1004912 (= res!674335 (and ((_ is Intermediate!9453) lt!444362) (not (undefined!10265 lt!444362)) (bvslt (x!87616 lt!444362) #b01111111111111111111111111111110) (bvsge (x!87616 lt!444362) #b00000000000000000000000000000000) (bvsge (x!87616 lt!444362) x!1245)))))

(assert (=> b!1004912 (=> (not res!674335) (not e!565905))))

(declare-fun b!1004913 () Bool)

(assert (=> b!1004913 (and (bvsge (index!40184 lt!444362) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444362) (size!31024 lt!444335)))))

(declare-fun res!674334 () Bool)

(assert (=> b!1004913 (= res!674334 (= (select (arr!30521 lt!444335) (index!40184 lt!444362)) lt!444338))))

(assert (=> b!1004913 (=> res!674334 e!565907)))

(assert (=> b!1004913 (= e!565905 e!565907)))

(declare-fun b!1004914 () Bool)

(assert (=> b!1004914 (and (bvsge (index!40184 lt!444362) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444362) (size!31024 lt!444335)))))

(assert (=> b!1004914 (= e!565907 (= (select (arr!30521 lt!444335) (index!40184 lt!444362)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119433 c!101438) b!1004908))

(assert (= (and d!119433 (not c!101438)) b!1004910))

(assert (= (and b!1004910 c!101439) b!1004906))

(assert (= (and b!1004910 (not c!101439)) b!1004907))

(assert (= (and d!119433 c!101437) b!1004909))

(assert (= (and d!119433 (not c!101437)) b!1004912))

(assert (= (and b!1004912 res!674335) b!1004913))

(assert (= (and b!1004913 (not res!674334)) b!1004911))

(assert (= (and b!1004911 (not res!674333)) b!1004914))

(declare-fun m!930411 () Bool)

(assert (=> b!1004913 m!930411))

(declare-fun m!930413 () Bool)

(assert (=> b!1004907 m!930413))

(assert (=> b!1004907 m!930413))

(declare-fun m!930415 () Bool)

(assert (=> b!1004907 m!930415))

(assert (=> b!1004911 m!930411))

(assert (=> b!1004914 m!930411))

(declare-fun m!930417 () Bool)

(assert (=> d!119433 m!930417))

(assert (=> d!119433 m!930351))

(assert (=> b!1004837 d!119433))

(declare-fun b!1004966 () Bool)

(declare-fun c!101460 () Bool)

(declare-fun lt!444385 () (_ BitVec 64))

(assert (=> b!1004966 (= c!101460 (= lt!444385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565938 () SeekEntryResult!9453)

(declare-fun e!565939 () SeekEntryResult!9453)

(assert (=> b!1004966 (= e!565938 e!565939)))

(declare-fun b!1004967 () Bool)

(declare-fun lt!444386 () SeekEntryResult!9453)

(assert (=> b!1004967 (= e!565939 (MissingZero!9453 (index!40184 lt!444386)))))

(declare-fun b!1004968 () Bool)

(declare-fun e!565940 () SeekEntryResult!9453)

(assert (=> b!1004968 (= e!565940 Undefined!9453)))

(declare-fun b!1004970 () Bool)

(assert (=> b!1004970 (= e!565940 e!565938)))

(assert (=> b!1004970 (= lt!444385 (select (arr!30521 a!3219) (index!40184 lt!444386)))))

(declare-fun c!101459 () Bool)

(assert (=> b!1004970 (= c!101459 (= lt!444385 k0!2224))))

(declare-fun b!1004971 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63402 (_ BitVec 32)) SeekEntryResult!9453)

(assert (=> b!1004971 (= e!565939 (seekKeyOrZeroReturnVacant!0 (x!87616 lt!444386) (index!40184 lt!444386) (index!40184 lt!444386) k0!2224 a!3219 mask!3464))))

(declare-fun b!1004969 () Bool)

(assert (=> b!1004969 (= e!565938 (Found!9453 (index!40184 lt!444386)))))

(declare-fun d!119439 () Bool)

(declare-fun lt!444387 () SeekEntryResult!9453)

(assert (=> d!119439 (and (or ((_ is Undefined!9453) lt!444387) (not ((_ is Found!9453) lt!444387)) (and (bvsge (index!40183 lt!444387) #b00000000000000000000000000000000) (bvslt (index!40183 lt!444387) (size!31024 a!3219)))) (or ((_ is Undefined!9453) lt!444387) ((_ is Found!9453) lt!444387) (not ((_ is MissingZero!9453) lt!444387)) (and (bvsge (index!40182 lt!444387) #b00000000000000000000000000000000) (bvslt (index!40182 lt!444387) (size!31024 a!3219)))) (or ((_ is Undefined!9453) lt!444387) ((_ is Found!9453) lt!444387) ((_ is MissingZero!9453) lt!444387) (not ((_ is MissingVacant!9453) lt!444387)) (and (bvsge (index!40185 lt!444387) #b00000000000000000000000000000000) (bvslt (index!40185 lt!444387) (size!31024 a!3219)))) (or ((_ is Undefined!9453) lt!444387) (ite ((_ is Found!9453) lt!444387) (= (select (arr!30521 a!3219) (index!40183 lt!444387)) k0!2224) (ite ((_ is MissingZero!9453) lt!444387) (= (select (arr!30521 a!3219) (index!40182 lt!444387)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9453) lt!444387) (= (select (arr!30521 a!3219) (index!40185 lt!444387)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119439 (= lt!444387 e!565940)))

(declare-fun c!101458 () Bool)

(assert (=> d!119439 (= c!101458 (and ((_ is Intermediate!9453) lt!444386) (undefined!10265 lt!444386)))))

(assert (=> d!119439 (= lt!444386 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119439 (validMask!0 mask!3464)))

(assert (=> d!119439 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!444387)))

(assert (= (and d!119439 c!101458) b!1004968))

(assert (= (and d!119439 (not c!101458)) b!1004970))

(assert (= (and b!1004970 c!101459) b!1004969))

(assert (= (and b!1004970 (not c!101459)) b!1004966))

(assert (= (and b!1004966 c!101460) b!1004967))

(assert (= (and b!1004966 (not c!101460)) b!1004971))

(declare-fun m!930439 () Bool)

(assert (=> b!1004970 m!930439))

(declare-fun m!930441 () Bool)

(assert (=> b!1004971 m!930441))

(assert (=> d!119439 m!930351))

(declare-fun m!930443 () Bool)

(assert (=> d!119439 m!930443))

(declare-fun m!930445 () Bool)

(assert (=> d!119439 m!930445))

(declare-fun m!930447 () Bool)

(assert (=> d!119439 m!930447))

(assert (=> d!119439 m!930443))

(declare-fun m!930449 () Bool)

(assert (=> d!119439 m!930449))

(declare-fun m!930451 () Bool)

(assert (=> d!119439 m!930451))

(assert (=> b!1004836 d!119439))

(declare-fun b!1004972 () Bool)

(declare-fun e!565941 () SeekEntryResult!9453)

(assert (=> b!1004972 (= e!565941 (Intermediate!9453 false index!1507 x!1245))))

(declare-fun b!1004973 () Bool)

(assert (=> b!1004973 (= e!565941 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30521 a!3219) j!170) a!3219 mask!3464))))

(declare-fun d!119445 () Bool)

(declare-fun e!565944 () Bool)

(assert (=> d!119445 e!565944))

(declare-fun c!101461 () Bool)

(declare-fun lt!444388 () SeekEntryResult!9453)

(assert (=> d!119445 (= c!101461 (and ((_ is Intermediate!9453) lt!444388) (undefined!10265 lt!444388)))))

(declare-fun e!565942 () SeekEntryResult!9453)

(assert (=> d!119445 (= lt!444388 e!565942)))

(declare-fun c!101462 () Bool)

(assert (=> d!119445 (= c!101462 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!444389 () (_ BitVec 64))

(assert (=> d!119445 (= lt!444389 (select (arr!30521 a!3219) index!1507))))

(assert (=> d!119445 (validMask!0 mask!3464)))

(assert (=> d!119445 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30521 a!3219) j!170) a!3219 mask!3464) lt!444388)))

(declare-fun b!1004974 () Bool)

(assert (=> b!1004974 (= e!565942 (Intermediate!9453 true index!1507 x!1245))))

(declare-fun b!1004975 () Bool)

(assert (=> b!1004975 (= e!565944 (bvsge (x!87616 lt!444388) #b01111111111111111111111111111110))))

(declare-fun b!1004976 () Bool)

(assert (=> b!1004976 (= e!565942 e!565941)))

(declare-fun c!101463 () Bool)

(assert (=> b!1004976 (= c!101463 (or (= lt!444389 (select (arr!30521 a!3219) j!170)) (= (bvadd lt!444389 lt!444389) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1004977 () Bool)

(assert (=> b!1004977 (and (bvsge (index!40184 lt!444388) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444388) (size!31024 a!3219)))))

(declare-fun res!674352 () Bool)

(assert (=> b!1004977 (= res!674352 (= (select (arr!30521 a!3219) (index!40184 lt!444388)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565945 () Bool)

(assert (=> b!1004977 (=> res!674352 e!565945)))

(declare-fun b!1004978 () Bool)

(declare-fun e!565943 () Bool)

(assert (=> b!1004978 (= e!565944 e!565943)))

(declare-fun res!674354 () Bool)

(assert (=> b!1004978 (= res!674354 (and ((_ is Intermediate!9453) lt!444388) (not (undefined!10265 lt!444388)) (bvslt (x!87616 lt!444388) #b01111111111111111111111111111110) (bvsge (x!87616 lt!444388) #b00000000000000000000000000000000) (bvsge (x!87616 lt!444388) x!1245)))))

(assert (=> b!1004978 (=> (not res!674354) (not e!565943))))

(declare-fun b!1004979 () Bool)

(assert (=> b!1004979 (and (bvsge (index!40184 lt!444388) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444388) (size!31024 a!3219)))))

(declare-fun res!674353 () Bool)

(assert (=> b!1004979 (= res!674353 (= (select (arr!30521 a!3219) (index!40184 lt!444388)) (select (arr!30521 a!3219) j!170)))))

(assert (=> b!1004979 (=> res!674353 e!565945)))

(assert (=> b!1004979 (= e!565943 e!565945)))

(declare-fun b!1004980 () Bool)

(assert (=> b!1004980 (and (bvsge (index!40184 lt!444388) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444388) (size!31024 a!3219)))))

(assert (=> b!1004980 (= e!565945 (= (select (arr!30521 a!3219) (index!40184 lt!444388)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119445 c!101462) b!1004974))

(assert (= (and d!119445 (not c!101462)) b!1004976))

(assert (= (and b!1004976 c!101463) b!1004972))

(assert (= (and b!1004976 (not c!101463)) b!1004973))

(assert (= (and d!119445 c!101461) b!1004975))

(assert (= (and d!119445 (not c!101461)) b!1004978))

(assert (= (and b!1004978 res!674354) b!1004979))

(assert (= (and b!1004979 (not res!674353)) b!1004977))

(assert (= (and b!1004977 (not res!674352)) b!1004980))

(declare-fun m!930453 () Bool)

(assert (=> b!1004979 m!930453))

(assert (=> b!1004973 m!930413))

(assert (=> b!1004973 m!930413))

(assert (=> b!1004973 m!930355))

(declare-fun m!930455 () Bool)

(assert (=> b!1004973 m!930455))

(assert (=> b!1004977 m!930453))

(assert (=> b!1004980 m!930453))

(declare-fun m!930457 () Bool)

(assert (=> d!119445 m!930457))

(assert (=> d!119445 m!930351))

(assert (=> b!1004846 d!119445))

(declare-fun b!1004991 () Bool)

(declare-fun e!565954 () Bool)

(declare-fun call!42337 () Bool)

(assert (=> b!1004991 (= e!565954 call!42337)))

(declare-fun b!1004992 () Bool)

(declare-fun e!565956 () Bool)

(assert (=> b!1004992 (= e!565956 e!565954)))

(declare-fun c!101466 () Bool)

(assert (=> b!1004992 (= c!101466 (validKeyInArray!0 (select (arr!30521 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119447 () Bool)

(declare-fun res!674362 () Bool)

(declare-fun e!565955 () Bool)

(assert (=> d!119447 (=> res!674362 e!565955)))

(assert (=> d!119447 (= res!674362 (bvsge #b00000000000000000000000000000000 (size!31024 a!3219)))))

(assert (=> d!119447 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21320) e!565955)))

(declare-fun b!1004993 () Bool)

(assert (=> b!1004993 (= e!565954 call!42337)))

(declare-fun b!1004994 () Bool)

(assert (=> b!1004994 (= e!565955 e!565956)))

(declare-fun res!674361 () Bool)

(assert (=> b!1004994 (=> (not res!674361) (not e!565956))))

(declare-fun e!565957 () Bool)

(assert (=> b!1004994 (= res!674361 (not e!565957))))

(declare-fun res!674363 () Bool)

(assert (=> b!1004994 (=> (not res!674363) (not e!565957))))

(assert (=> b!1004994 (= res!674363 (validKeyInArray!0 (select (arr!30521 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1004995 () Bool)

(declare-fun contains!5891 (List!21323 (_ BitVec 64)) Bool)

(assert (=> b!1004995 (= e!565957 (contains!5891 Nil!21320 (select (arr!30521 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42334 () Bool)

(assert (=> bm!42334 (= call!42337 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101466 (Cons!21319 (select (arr!30521 a!3219) #b00000000000000000000000000000000) Nil!21320) Nil!21320)))))

(assert (= (and d!119447 (not res!674362)) b!1004994))

(assert (= (and b!1004994 res!674363) b!1004995))

(assert (= (and b!1004994 res!674361) b!1004992))

(assert (= (and b!1004992 c!101466) b!1004993))

(assert (= (and b!1004992 (not c!101466)) b!1004991))

(assert (= (or b!1004993 b!1004991) bm!42334))

(declare-fun m!930459 () Bool)

(assert (=> b!1004992 m!930459))

(assert (=> b!1004992 m!930459))

(declare-fun m!930461 () Bool)

(assert (=> b!1004992 m!930461))

(assert (=> b!1004994 m!930459))

(assert (=> b!1004994 m!930459))

(assert (=> b!1004994 m!930461))

(assert (=> b!1004995 m!930459))

(assert (=> b!1004995 m!930459))

(declare-fun m!930463 () Bool)

(assert (=> b!1004995 m!930463))

(assert (=> bm!42334 m!930459))

(declare-fun m!930465 () Bool)

(assert (=> bm!42334 m!930465))

(assert (=> b!1004845 d!119447))

(declare-fun d!119453 () Bool)

(assert (=> d!119453 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86700 d!119453))

(declare-fun d!119465 () Bool)

(assert (=> d!119465 (= (array_inv!23511 a!3219) (bvsge (size!31024 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86700 d!119465))

(declare-fun d!119469 () Bool)

(assert (=> d!119469 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004844 d!119469))

(declare-fun b!1005058 () Bool)

(declare-fun e!565996 () Bool)

(declare-fun call!42340 () Bool)

(assert (=> b!1005058 (= e!565996 call!42340)))

(declare-fun b!1005059 () Bool)

(declare-fun e!565994 () Bool)

(assert (=> b!1005059 (= e!565996 e!565994)))

(declare-fun lt!444416 () (_ BitVec 64))

(assert (=> b!1005059 (= lt!444416 (select (arr!30521 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32950 0))(
  ( (Unit!32951) )
))
(declare-fun lt!444417 () Unit!32950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63402 (_ BitVec 64) (_ BitVec 32)) Unit!32950)

(assert (=> b!1005059 (= lt!444417 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444416 #b00000000000000000000000000000000))))

(assert (=> b!1005059 (arrayContainsKey!0 a!3219 lt!444416 #b00000000000000000000000000000000)))

(declare-fun lt!444418 () Unit!32950)

(assert (=> b!1005059 (= lt!444418 lt!444417)))

(declare-fun res!674387 () Bool)

(assert (=> b!1005059 (= res!674387 (= (seekEntryOrOpen!0 (select (arr!30521 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9453 #b00000000000000000000000000000000)))))

(assert (=> b!1005059 (=> (not res!674387) (not e!565994))))

(declare-fun b!1005060 () Bool)

(assert (=> b!1005060 (= e!565994 call!42340)))

(declare-fun d!119471 () Bool)

(declare-fun res!674386 () Bool)

(declare-fun e!565995 () Bool)

(assert (=> d!119471 (=> res!674386 e!565995)))

(assert (=> d!119471 (= res!674386 (bvsge #b00000000000000000000000000000000 (size!31024 a!3219)))))

(assert (=> d!119471 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!565995)))

(declare-fun bm!42337 () Bool)

(assert (=> bm!42337 (= call!42340 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1005061 () Bool)

(assert (=> b!1005061 (= e!565995 e!565996)))

(declare-fun c!101487 () Bool)

(assert (=> b!1005061 (= c!101487 (validKeyInArray!0 (select (arr!30521 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119471 (not res!674386)) b!1005061))

(assert (= (and b!1005061 c!101487) b!1005059))

(assert (= (and b!1005061 (not c!101487)) b!1005058))

(assert (= (and b!1005059 res!674387) b!1005060))

(assert (= (or b!1005060 b!1005058) bm!42337))

(assert (=> b!1005059 m!930459))

(declare-fun m!930497 () Bool)

(assert (=> b!1005059 m!930497))

(declare-fun m!930499 () Bool)

(assert (=> b!1005059 m!930499))

(assert (=> b!1005059 m!930459))

(declare-fun m!930501 () Bool)

(assert (=> b!1005059 m!930501))

(declare-fun m!930503 () Bool)

(assert (=> bm!42337 m!930503))

(assert (=> b!1005061 m!930459))

(assert (=> b!1005061 m!930459))

(assert (=> b!1005061 m!930461))

(assert (=> b!1004843 d!119471))

(declare-fun b!1005062 () Bool)

(declare-fun e!565997 () SeekEntryResult!9453)

(assert (=> b!1005062 (= e!565997 (Intermediate!9453 false (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005063 () Bool)

(assert (=> b!1005063 (= e!565997 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30521 a!3219) j!170) a!3219 mask!3464))))

(declare-fun d!119481 () Bool)

(declare-fun e!566000 () Bool)

(assert (=> d!119481 e!566000))

(declare-fun c!101488 () Bool)

(declare-fun lt!444419 () SeekEntryResult!9453)

(assert (=> d!119481 (= c!101488 (and ((_ is Intermediate!9453) lt!444419) (undefined!10265 lt!444419)))))

(declare-fun e!565998 () SeekEntryResult!9453)

(assert (=> d!119481 (= lt!444419 e!565998)))

(declare-fun c!101489 () Bool)

(assert (=> d!119481 (= c!101489 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444420 () (_ BitVec 64))

(assert (=> d!119481 (= lt!444420 (select (arr!30521 a!3219) (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464)))))

(assert (=> d!119481 (validMask!0 mask!3464)))

(assert (=> d!119481 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) (select (arr!30521 a!3219) j!170) a!3219 mask!3464) lt!444419)))

(declare-fun b!1005064 () Bool)

(assert (=> b!1005064 (= e!565998 (Intermediate!9453 true (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005065 () Bool)

(assert (=> b!1005065 (= e!566000 (bvsge (x!87616 lt!444419) #b01111111111111111111111111111110))))

(declare-fun b!1005066 () Bool)

(assert (=> b!1005066 (= e!565998 e!565997)))

(declare-fun c!101490 () Bool)

(assert (=> b!1005066 (= c!101490 (or (= lt!444420 (select (arr!30521 a!3219) j!170)) (= (bvadd lt!444420 lt!444420) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005067 () Bool)

(assert (=> b!1005067 (and (bvsge (index!40184 lt!444419) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444419) (size!31024 a!3219)))))

(declare-fun res!674388 () Bool)

(assert (=> b!1005067 (= res!674388 (= (select (arr!30521 a!3219) (index!40184 lt!444419)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566001 () Bool)

(assert (=> b!1005067 (=> res!674388 e!566001)))

(declare-fun b!1005068 () Bool)

(declare-fun e!565999 () Bool)

(assert (=> b!1005068 (= e!566000 e!565999)))

(declare-fun res!674390 () Bool)

(assert (=> b!1005068 (= res!674390 (and ((_ is Intermediate!9453) lt!444419) (not (undefined!10265 lt!444419)) (bvslt (x!87616 lt!444419) #b01111111111111111111111111111110) (bvsge (x!87616 lt!444419) #b00000000000000000000000000000000) (bvsge (x!87616 lt!444419) #b00000000000000000000000000000000)))))

(assert (=> b!1005068 (=> (not res!674390) (not e!565999))))

(declare-fun b!1005069 () Bool)

(assert (=> b!1005069 (and (bvsge (index!40184 lt!444419) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444419) (size!31024 a!3219)))))

(declare-fun res!674389 () Bool)

(assert (=> b!1005069 (= res!674389 (= (select (arr!30521 a!3219) (index!40184 lt!444419)) (select (arr!30521 a!3219) j!170)))))

(assert (=> b!1005069 (=> res!674389 e!566001)))

(assert (=> b!1005069 (= e!565999 e!566001)))

(declare-fun b!1005070 () Bool)

(assert (=> b!1005070 (and (bvsge (index!40184 lt!444419) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444419) (size!31024 a!3219)))))

(assert (=> b!1005070 (= e!566001 (= (select (arr!30521 a!3219) (index!40184 lt!444419)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119481 c!101489) b!1005064))

(assert (= (and d!119481 (not c!101489)) b!1005066))

(assert (= (and b!1005066 c!101490) b!1005062))

(assert (= (and b!1005066 (not c!101490)) b!1005063))

(assert (= (and d!119481 c!101488) b!1005065))

(assert (= (and d!119481 (not c!101488)) b!1005068))

(assert (= (and b!1005068 res!674390) b!1005069))

(assert (= (and b!1005069 (not res!674389)) b!1005067))

(assert (= (and b!1005067 (not res!674388)) b!1005070))

(declare-fun m!930505 () Bool)

(assert (=> b!1005069 m!930505))

(assert (=> b!1005063 m!930367))

(declare-fun m!930507 () Bool)

(assert (=> b!1005063 m!930507))

(assert (=> b!1005063 m!930507))

(assert (=> b!1005063 m!930355))

(declare-fun m!930509 () Bool)

(assert (=> b!1005063 m!930509))

(assert (=> b!1005067 m!930505))

(assert (=> b!1005070 m!930505))

(assert (=> d!119481 m!930367))

(declare-fun m!930511 () Bool)

(assert (=> d!119481 m!930511))

(assert (=> d!119481 m!930351))

(assert (=> b!1004842 d!119481))

(declare-fun d!119483 () Bool)

(declare-fun lt!444432 () (_ BitVec 32))

(declare-fun lt!444431 () (_ BitVec 32))

(assert (=> d!119483 (= lt!444432 (bvmul (bvxor lt!444431 (bvlshr lt!444431 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119483 (= lt!444431 ((_ extract 31 0) (bvand (bvxor (select (arr!30521 a!3219) j!170) (bvlshr (select (arr!30521 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119483 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674393 (let ((h!22502 ((_ extract 31 0) (bvand (bvxor (select (arr!30521 a!3219) j!170) (bvlshr (select (arr!30521 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87622 (bvmul (bvxor h!22502 (bvlshr h!22502 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87622 (bvlshr x!87622 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674393 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674393 #b00000000000000000000000000000000))))))

(assert (=> d!119483 (= (toIndex!0 (select (arr!30521 a!3219) j!170) mask!3464) (bvand (bvxor lt!444432 (bvlshr lt!444432 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004842 d!119483))

(declare-fun d!119487 () Bool)

(declare-fun res!674409 () Bool)

(declare-fun e!566029 () Bool)

(assert (=> d!119487 (=> res!674409 e!566029)))

(assert (=> d!119487 (= res!674409 (= (select (arr!30521 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119487 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!566029)))

(declare-fun b!1005111 () Bool)

(declare-fun e!566030 () Bool)

(assert (=> b!1005111 (= e!566029 e!566030)))

(declare-fun res!674410 () Bool)

(assert (=> b!1005111 (=> (not res!674410) (not e!566030))))

(assert (=> b!1005111 (= res!674410 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31024 a!3219)))))

(declare-fun b!1005112 () Bool)

(assert (=> b!1005112 (= e!566030 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119487 (not res!674409)) b!1005111))

(assert (= (and b!1005111 res!674410) b!1005112))

(assert (=> d!119487 m!930459))

(declare-fun m!930525 () Bool)

(assert (=> b!1005112 m!930525))

(assert (=> b!1004840 d!119487))

(declare-fun d!119491 () Bool)

(assert (=> d!119491 (= (validKeyInArray!0 (select (arr!30521 a!3219) j!170)) (and (not (= (select (arr!30521 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30521 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004838 d!119491))

(declare-fun b!1005113 () Bool)

(declare-fun e!566031 () SeekEntryResult!9453)

(assert (=> b!1005113 (= e!566031 (Intermediate!9453 false (toIndex!0 lt!444338 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005114 () Bool)

(assert (=> b!1005114 (= e!566031 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444338 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444338 lt!444335 mask!3464))))

(declare-fun d!119493 () Bool)

(declare-fun e!566034 () Bool)

(assert (=> d!119493 e!566034))

(declare-fun c!101503 () Bool)

(declare-fun lt!444435 () SeekEntryResult!9453)

(assert (=> d!119493 (= c!101503 (and ((_ is Intermediate!9453) lt!444435) (undefined!10265 lt!444435)))))

(declare-fun e!566032 () SeekEntryResult!9453)

(assert (=> d!119493 (= lt!444435 e!566032)))

(declare-fun c!101504 () Bool)

(assert (=> d!119493 (= c!101504 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!444436 () (_ BitVec 64))

(assert (=> d!119493 (= lt!444436 (select (arr!30521 lt!444335) (toIndex!0 lt!444338 mask!3464)))))

(assert (=> d!119493 (validMask!0 mask!3464)))

(assert (=> d!119493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444338 mask!3464) lt!444338 lt!444335 mask!3464) lt!444435)))

(declare-fun b!1005115 () Bool)

(assert (=> b!1005115 (= e!566032 (Intermediate!9453 true (toIndex!0 lt!444338 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005116 () Bool)

(assert (=> b!1005116 (= e!566034 (bvsge (x!87616 lt!444435) #b01111111111111111111111111111110))))

(declare-fun b!1005117 () Bool)

(assert (=> b!1005117 (= e!566032 e!566031)))

(declare-fun c!101505 () Bool)

(assert (=> b!1005117 (= c!101505 (or (= lt!444436 lt!444338) (= (bvadd lt!444436 lt!444436) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1005118 () Bool)

(assert (=> b!1005118 (and (bvsge (index!40184 lt!444435) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444435) (size!31024 lt!444335)))))

(declare-fun res!674411 () Bool)

(assert (=> b!1005118 (= res!674411 (= (select (arr!30521 lt!444335) (index!40184 lt!444435)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!566035 () Bool)

(assert (=> b!1005118 (=> res!674411 e!566035)))

(declare-fun b!1005119 () Bool)

(declare-fun e!566033 () Bool)

(assert (=> b!1005119 (= e!566034 e!566033)))

(declare-fun res!674413 () Bool)

(assert (=> b!1005119 (= res!674413 (and ((_ is Intermediate!9453) lt!444435) (not (undefined!10265 lt!444435)) (bvslt (x!87616 lt!444435) #b01111111111111111111111111111110) (bvsge (x!87616 lt!444435) #b00000000000000000000000000000000) (bvsge (x!87616 lt!444435) #b00000000000000000000000000000000)))))

(assert (=> b!1005119 (=> (not res!674413) (not e!566033))))

(declare-fun b!1005120 () Bool)

(assert (=> b!1005120 (and (bvsge (index!40184 lt!444435) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444435) (size!31024 lt!444335)))))

(declare-fun res!674412 () Bool)

(assert (=> b!1005120 (= res!674412 (= (select (arr!30521 lt!444335) (index!40184 lt!444435)) lt!444338))))

(assert (=> b!1005120 (=> res!674412 e!566035)))

(assert (=> b!1005120 (= e!566033 e!566035)))

(declare-fun b!1005121 () Bool)

(assert (=> b!1005121 (and (bvsge (index!40184 lt!444435) #b00000000000000000000000000000000) (bvslt (index!40184 lt!444435) (size!31024 lt!444335)))))

(assert (=> b!1005121 (= e!566035 (= (select (arr!30521 lt!444335) (index!40184 lt!444435)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119493 c!101504) b!1005115))

(assert (= (and d!119493 (not c!101504)) b!1005117))

(assert (= (and b!1005117 c!101505) b!1005113))

(assert (= (and b!1005117 (not c!101505)) b!1005114))

(assert (= (and d!119493 c!101503) b!1005116))

(assert (= (and d!119493 (not c!101503)) b!1005119))

(assert (= (and b!1005119 res!674413) b!1005120))

(assert (= (and b!1005120 (not res!674412)) b!1005118))

(assert (= (and b!1005118 (not res!674411)) b!1005121))

(declare-fun m!930527 () Bool)

(assert (=> b!1005120 m!930527))

(assert (=> b!1005114 m!930343))

(declare-fun m!930529 () Bool)

(assert (=> b!1005114 m!930529))

(assert (=> b!1005114 m!930529))

(declare-fun m!930531 () Bool)

(assert (=> b!1005114 m!930531))

(assert (=> b!1005118 m!930527))

(assert (=> b!1005121 m!930527))

(assert (=> d!119493 m!930343))

(declare-fun m!930533 () Bool)

(assert (=> d!119493 m!930533))

(assert (=> d!119493 m!930351))

(assert (=> b!1004848 d!119493))

(declare-fun d!119495 () Bool)

(declare-fun lt!444441 () (_ BitVec 32))

(declare-fun lt!444440 () (_ BitVec 32))

(assert (=> d!119495 (= lt!444441 (bvmul (bvxor lt!444440 (bvlshr lt!444440 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119495 (= lt!444440 ((_ extract 31 0) (bvand (bvxor lt!444338 (bvlshr lt!444338 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119495 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674393 (let ((h!22502 ((_ extract 31 0) (bvand (bvxor lt!444338 (bvlshr lt!444338 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87622 (bvmul (bvxor h!22502 (bvlshr h!22502 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87622 (bvlshr x!87622 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674393 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674393 #b00000000000000000000000000000000))))))

(assert (=> d!119495 (= (toIndex!0 lt!444338 mask!3464) (bvand (bvxor lt!444441 (bvlshr lt!444441 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004848 d!119495))

(check-sat (not d!119481) (not b!1004971) (not d!119433) (not b!1005112) (not bm!42337) (not b!1004995) (not b!1004907) (not b!1005061) (not d!119493) (not b!1005059) (not b!1004992) (not b!1005114) (not b!1005063) (not bm!42334) (not b!1004994) (not d!119445) (not b!1004973) (not d!119439))
(check-sat)
