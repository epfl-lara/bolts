; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25476 () Bool)

(assert start!25476)

(declare-fun b!265001 () Bool)

(declare-fun res!129555 () Bool)

(declare-fun e!171631 () Bool)

(assert (=> b!265001 (=> (not res!129555) (not e!171631))))

(declare-datatypes ((array!12759 0))(
  ( (array!12760 (arr!6038 (Array (_ BitVec 32) (_ BitVec 64))) (size!6390 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12759)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12759 (_ BitVec 32)) Bool)

(assert (=> b!265001 (= res!129555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265002 () Bool)

(declare-fun e!171629 () Bool)

(assert (=> b!265002 (= e!171629 e!171631)))

(declare-fun res!129554 () Bool)

(assert (=> b!265002 (=> (not res!129554) (not e!171631))))

(declare-datatypes ((SeekEntryResult!1240 0))(
  ( (MissingZero!1240 (index!7130 (_ BitVec 32))) (Found!1240 (index!7131 (_ BitVec 32))) (Intermediate!1240 (undefined!2052 Bool) (index!7132 (_ BitVec 32)) (x!25421 (_ BitVec 32))) (Undefined!1240) (MissingVacant!1240 (index!7133 (_ BitVec 32))) )
))
(declare-fun lt!133985 () SeekEntryResult!1240)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265002 (= res!129554 (or (= lt!133985 (MissingZero!1240 i!1355)) (= lt!133985 (MissingVacant!1240 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12759 (_ BitVec 32)) SeekEntryResult!1240)

(assert (=> b!265002 (= lt!133985 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265003 () Bool)

(declare-fun res!129551 () Bool)

(assert (=> b!265003 (=> (not res!129551) (not e!171629))))

(declare-fun arrayContainsKey!0 (array!12759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265003 (= res!129551 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265004 () Bool)

(assert (=> b!265004 (= e!171631 (and (bvsle #b00000000000000000000000000000000 (size!6390 a!3436)) (bvsge (size!6390 a!3436) #b01111111111111111111111111111111)))))

(declare-fun b!265005 () Bool)

(declare-fun res!129552 () Bool)

(assert (=> b!265005 (=> (not res!129552) (not e!171629))))

(assert (=> b!265005 (= res!129552 (and (= (size!6390 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6390 a!3436))))))

(declare-fun b!265000 () Bool)

(declare-fun res!129550 () Bool)

(assert (=> b!265000 (=> (not res!129550) (not e!171629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265000 (= res!129550 (validKeyInArray!0 k0!2698))))

(declare-fun res!129553 () Bool)

(assert (=> start!25476 (=> (not res!129553) (not e!171629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25476 (= res!129553 (validMask!0 mask!4002))))

(assert (=> start!25476 e!171629))

(assert (=> start!25476 true))

(declare-fun array_inv!3992 (array!12759) Bool)

(assert (=> start!25476 (array_inv!3992 a!3436)))

(assert (= (and start!25476 res!129553) b!265005))

(assert (= (and b!265005 res!129552) b!265000))

(assert (= (and b!265000 res!129550) b!265003))

(assert (= (and b!265003 res!129551) b!265002))

(assert (= (and b!265002 res!129554) b!265001))

(assert (= (and b!265001 res!129555) b!265004))

(declare-fun m!281951 () Bool)

(assert (=> b!265003 m!281951))

(declare-fun m!281953 () Bool)

(assert (=> b!265001 m!281953))

(declare-fun m!281955 () Bool)

(assert (=> b!265002 m!281955))

(declare-fun m!281957 () Bool)

(assert (=> b!265000 m!281957))

(declare-fun m!281959 () Bool)

(assert (=> start!25476 m!281959))

(declare-fun m!281961 () Bool)

(assert (=> start!25476 m!281961))

(check-sat (not b!265001) (not b!265003) (not b!265000) (not start!25476) (not b!265002))
(check-sat)
(get-model)

(declare-fun d!64021 () Bool)

(assert (=> d!64021 (= (validKeyInArray!0 k0!2698) (and (not (= k0!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265000 d!64021))

(declare-fun d!64023 () Bool)

(assert (=> d!64023 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25476 d!64023))

(declare-fun d!64029 () Bool)

(assert (=> d!64029 (= (array_inv!3992 a!3436) (bvsge (size!6390 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25476 d!64029))

(declare-fun d!64031 () Bool)

(declare-fun res!129584 () Bool)

(declare-fun e!171651 () Bool)

(assert (=> d!64031 (=> res!129584 e!171651)))

(assert (=> d!64031 (= res!129584 (= (select (arr!6038 a!3436) #b00000000000000000000000000000000) k0!2698))))

(assert (=> d!64031 (= (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000) e!171651)))

(declare-fun b!265034 () Bool)

(declare-fun e!171652 () Bool)

(assert (=> b!265034 (= e!171651 e!171652)))

(declare-fun res!129585 () Bool)

(assert (=> b!265034 (=> (not res!129585) (not e!171652))))

(assert (=> b!265034 (= res!129585 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6390 a!3436)))))

(declare-fun b!265035 () Bool)

(assert (=> b!265035 (= e!171652 (arrayContainsKey!0 a!3436 k0!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64031 (not res!129584)) b!265034))

(assert (= (and b!265034 res!129585) b!265035))

(declare-fun m!281979 () Bool)

(assert (=> d!64031 m!281979))

(declare-fun m!281981 () Bool)

(assert (=> b!265035 m!281981))

(assert (=> b!265003 d!64031))

(declare-fun b!265056 () Bool)

(declare-fun e!171669 () Bool)

(declare-fun e!171670 () Bool)

(assert (=> b!265056 (= e!171669 e!171670)))

(declare-fun lt!134006 () (_ BitVec 64))

(assert (=> b!265056 (= lt!134006 (select (arr!6038 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8252 0))(
  ( (Unit!8253) )
))
(declare-fun lt!134005 () Unit!8252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12759 (_ BitVec 64) (_ BitVec 32)) Unit!8252)

(assert (=> b!265056 (= lt!134005 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134006 #b00000000000000000000000000000000))))

(assert (=> b!265056 (arrayContainsKey!0 a!3436 lt!134006 #b00000000000000000000000000000000)))

(declare-fun lt!134004 () Unit!8252)

(assert (=> b!265056 (= lt!134004 lt!134005)))

(declare-fun res!129597 () Bool)

(assert (=> b!265056 (= res!129597 (= (seekEntryOrOpen!0 (select (arr!6038 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1240 #b00000000000000000000000000000000)))))

(assert (=> b!265056 (=> (not res!129597) (not e!171670))))

(declare-fun b!265057 () Bool)

(declare-fun call!25316 () Bool)

(assert (=> b!265057 (= e!171670 call!25316)))

(declare-fun d!64035 () Bool)

(declare-fun res!129596 () Bool)

(declare-fun e!171668 () Bool)

(assert (=> d!64035 (=> res!129596 e!171668)))

(assert (=> d!64035 (= res!129596 (bvsge #b00000000000000000000000000000000 (size!6390 a!3436)))))

(assert (=> d!64035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171668)))

(declare-fun bm!25313 () Bool)

(assert (=> bm!25313 (= call!25316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265058 () Bool)

(assert (=> b!265058 (= e!171668 e!171669)))

(declare-fun c!45281 () Bool)

(assert (=> b!265058 (= c!45281 (validKeyInArray!0 (select (arr!6038 a!3436) #b00000000000000000000000000000000)))))

(declare-fun b!265059 () Bool)

(assert (=> b!265059 (= e!171669 call!25316)))

(assert (= (and d!64035 (not res!129596)) b!265058))

(assert (= (and b!265058 c!45281) b!265056))

(assert (= (and b!265058 (not c!45281)) b!265059))

(assert (= (and b!265056 res!129597) b!265057))

(assert (= (or b!265057 b!265059) bm!25313))

(assert (=> b!265056 m!281979))

(declare-fun m!281995 () Bool)

(assert (=> b!265056 m!281995))

(declare-fun m!281997 () Bool)

(assert (=> b!265056 m!281997))

(assert (=> b!265056 m!281979))

(declare-fun m!281999 () Bool)

(assert (=> b!265056 m!281999))

(declare-fun m!282001 () Bool)

(assert (=> bm!25313 m!282001))

(assert (=> b!265058 m!281979))

(assert (=> b!265058 m!281979))

(declare-fun m!282003 () Bool)

(assert (=> b!265058 m!282003))

(assert (=> b!265001 d!64035))

(declare-fun b!265078 () Bool)

(declare-fun e!171684 () SeekEntryResult!1240)

(assert (=> b!265078 (= e!171684 Undefined!1240)))

(declare-fun b!265079 () Bool)

(declare-fun c!45288 () Bool)

(declare-fun lt!134013 () (_ BitVec 64))

(assert (=> b!265079 (= c!45288 (= lt!134013 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171683 () SeekEntryResult!1240)

(declare-fun e!171685 () SeekEntryResult!1240)

(assert (=> b!265079 (= e!171683 e!171685)))

(declare-fun b!265080 () Bool)

(declare-fun lt!134015 () SeekEntryResult!1240)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12759 (_ BitVec 32)) SeekEntryResult!1240)

(assert (=> b!265080 (= e!171685 (seekKeyOrZeroReturnVacant!0 (x!25421 lt!134015) (index!7132 lt!134015) (index!7132 lt!134015) k0!2698 a!3436 mask!4002))))

(declare-fun b!265081 () Bool)

(assert (=> b!265081 (= e!171685 (MissingZero!1240 (index!7132 lt!134015)))))

(declare-fun d!64039 () Bool)

(declare-fun lt!134014 () SeekEntryResult!1240)

(get-info :version)

(assert (=> d!64039 (and (or ((_ is Undefined!1240) lt!134014) (not ((_ is Found!1240) lt!134014)) (and (bvsge (index!7131 lt!134014) #b00000000000000000000000000000000) (bvslt (index!7131 lt!134014) (size!6390 a!3436)))) (or ((_ is Undefined!1240) lt!134014) ((_ is Found!1240) lt!134014) (not ((_ is MissingZero!1240) lt!134014)) (and (bvsge (index!7130 lt!134014) #b00000000000000000000000000000000) (bvslt (index!7130 lt!134014) (size!6390 a!3436)))) (or ((_ is Undefined!1240) lt!134014) ((_ is Found!1240) lt!134014) ((_ is MissingZero!1240) lt!134014) (not ((_ is MissingVacant!1240) lt!134014)) (and (bvsge (index!7133 lt!134014) #b00000000000000000000000000000000) (bvslt (index!7133 lt!134014) (size!6390 a!3436)))) (or ((_ is Undefined!1240) lt!134014) (ite ((_ is Found!1240) lt!134014) (= (select (arr!6038 a!3436) (index!7131 lt!134014)) k0!2698) (ite ((_ is MissingZero!1240) lt!134014) (= (select (arr!6038 a!3436) (index!7130 lt!134014)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1240) lt!134014) (= (select (arr!6038 a!3436) (index!7133 lt!134014)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64039 (= lt!134014 e!171684)))

(declare-fun c!45289 () Bool)

(assert (=> d!64039 (= c!45289 (and ((_ is Intermediate!1240) lt!134015) (undefined!2052 lt!134015)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12759 (_ BitVec 32)) SeekEntryResult!1240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64039 (= lt!134015 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2698 mask!4002) k0!2698 a!3436 mask!4002))))

(assert (=> d!64039 (validMask!0 mask!4002)))

(assert (=> d!64039 (= (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002) lt!134014)))

(declare-fun b!265082 () Bool)

(assert (=> b!265082 (= e!171684 e!171683)))

(assert (=> b!265082 (= lt!134013 (select (arr!6038 a!3436) (index!7132 lt!134015)))))

(declare-fun c!45290 () Bool)

(assert (=> b!265082 (= c!45290 (= lt!134013 k0!2698))))

(declare-fun b!265083 () Bool)

(assert (=> b!265083 (= e!171683 (Found!1240 (index!7132 lt!134015)))))

(assert (= (and d!64039 c!45289) b!265078))

(assert (= (and d!64039 (not c!45289)) b!265082))

(assert (= (and b!265082 c!45290) b!265083))

(assert (= (and b!265082 (not c!45290)) b!265079))

(assert (= (and b!265079 c!45288) b!265081))

(assert (= (and b!265079 (not c!45288)) b!265080))

(declare-fun m!282007 () Bool)

(assert (=> b!265080 m!282007))

(declare-fun m!282009 () Bool)

(assert (=> d!64039 m!282009))

(assert (=> d!64039 m!282009))

(declare-fun m!282011 () Bool)

(assert (=> d!64039 m!282011))

(assert (=> d!64039 m!281959))

(declare-fun m!282013 () Bool)

(assert (=> d!64039 m!282013))

(declare-fun m!282015 () Bool)

(assert (=> d!64039 m!282015))

(declare-fun m!282017 () Bool)

(assert (=> d!64039 m!282017))

(declare-fun m!282019 () Bool)

(assert (=> b!265082 m!282019))

(assert (=> b!265002 d!64039))

(check-sat (not d!64039) (not bm!25313) (not b!265035) (not b!265080) (not b!265058) (not b!265056))
(check-sat)
