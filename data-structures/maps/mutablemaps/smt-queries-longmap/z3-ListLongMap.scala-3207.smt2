; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45000 () Bool)

(assert start!45000)

(declare-fun b!493301 () Bool)

(declare-fun res!296029 () Bool)

(declare-fun e!289699 () Bool)

(assert (=> b!493301 (=> res!296029 e!289699)))

(declare-datatypes ((SeekEntryResult!3808 0))(
  ( (MissingZero!3808 (index!17411 (_ BitVec 32))) (Found!3808 (index!17412 (_ BitVec 32))) (Intermediate!3808 (undefined!4620 Bool) (index!17413 (_ BitVec 32)) (x!46521 (_ BitVec 32))) (Undefined!3808) (MissingVacant!3808 (index!17414 (_ BitVec 32))) )
))
(declare-fun lt!223171 () SeekEntryResult!3808)

(get-info :version)

(assert (=> b!493301 (= res!296029 (or (not ((_ is Intermediate!3808) lt!223171)) (not (undefined!4620 lt!223171))))))

(declare-fun b!493302 () Bool)

(declare-fun e!289700 () Bool)

(declare-fun e!289701 () Bool)

(assert (=> b!493302 (= e!289700 e!289701)))

(declare-fun res!296024 () Bool)

(assert (=> b!493302 (=> (not res!296024) (not e!289701))))

(declare-fun lt!223167 () SeekEntryResult!3808)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493302 (= res!296024 (or (= lt!223167 (MissingZero!3808 i!1204)) (= lt!223167 (MissingVacant!3808 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31905 0))(
  ( (array!31906 (arr!15334 (Array (_ BitVec 32) (_ BitVec 64))) (size!15698 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31905)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31905 (_ BitVec 32)) SeekEntryResult!3808)

(assert (=> b!493302 (= lt!223167 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493303 () Bool)

(declare-fun res!296026 () Bool)

(assert (=> b!493303 (=> (not res!296026) (not e!289700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493303 (= res!296026 (validKeyInArray!0 k0!2280))))

(declare-fun b!493304 () Bool)

(declare-fun res!296030 () Bool)

(assert (=> b!493304 (=> (not res!296030) (not e!289700))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493304 (= res!296030 (validKeyInArray!0 (select (arr!15334 a!3235) j!176)))))

(declare-fun b!493305 () Bool)

(declare-fun res!296023 () Bool)

(assert (=> b!493305 (=> (not res!296023) (not e!289700))))

(assert (=> b!493305 (= res!296023 (and (= (size!15698 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15698 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15698 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!296028 () Bool)

(assert (=> start!45000 (=> (not res!296028) (not e!289700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45000 (= res!296028 (validMask!0 mask!3524))))

(assert (=> start!45000 e!289700))

(assert (=> start!45000 true))

(declare-fun array_inv!11108 (array!31905) Bool)

(assert (=> start!45000 (array_inv!11108 a!3235)))

(declare-fun b!493306 () Bool)

(declare-fun res!296022 () Bool)

(assert (=> b!493306 (=> (not res!296022) (not e!289701))))

(declare-datatypes ((List!9545 0))(
  ( (Nil!9542) (Cons!9541 (h!10409 (_ BitVec 64)) (t!15781 List!9545)) )
))
(declare-fun arrayNoDuplicates!0 (array!31905 (_ BitVec 32) List!9545) Bool)

(assert (=> b!493306 (= res!296022 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9542))))

(declare-fun b!493307 () Bool)

(assert (=> b!493307 (= e!289699 true)))

(declare-fun lt!223168 () SeekEntryResult!3808)

(assert (=> b!493307 (= lt!223168 Undefined!3808)))

(declare-fun b!493308 () Bool)

(declare-fun res!296027 () Bool)

(assert (=> b!493308 (=> (not res!296027) (not e!289701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31905 (_ BitVec 32)) Bool)

(assert (=> b!493308 (= res!296027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493309 () Bool)

(declare-fun res!296021 () Bool)

(assert (=> b!493309 (=> (not res!296021) (not e!289700))))

(declare-fun arrayContainsKey!0 (array!31905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493309 (= res!296021 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493310 () Bool)

(assert (=> b!493310 (= e!289701 (not e!289699))))

(declare-fun res!296025 () Bool)

(assert (=> b!493310 (=> res!296025 e!289699)))

(declare-fun lt!223170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31905 (_ BitVec 32)) SeekEntryResult!3808)

(assert (=> b!493310 (= res!296025 (= lt!223171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223170 (select (store (arr!15334 a!3235) i!1204 k0!2280) j!176) (array!31906 (store (arr!15334 a!3235) i!1204 k0!2280) (size!15698 a!3235)) mask!3524)))))

(declare-fun lt!223172 () (_ BitVec 32))

(assert (=> b!493310 (= lt!223171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223172 (select (arr!15334 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493310 (= lt!223170 (toIndex!0 (select (store (arr!15334 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493310 (= lt!223172 (toIndex!0 (select (arr!15334 a!3235) j!176) mask!3524))))

(assert (=> b!493310 (= lt!223168 (Found!3808 j!176))))

(assert (=> b!493310 (= lt!223168 (seekEntryOrOpen!0 (select (arr!15334 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493310 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14554 0))(
  ( (Unit!14555) )
))
(declare-fun lt!223169 () Unit!14554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14554)

(assert (=> b!493310 (= lt!223169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45000 res!296028) b!493305))

(assert (= (and b!493305 res!296023) b!493304))

(assert (= (and b!493304 res!296030) b!493303))

(assert (= (and b!493303 res!296026) b!493309))

(assert (= (and b!493309 res!296021) b!493302))

(assert (= (and b!493302 res!296024) b!493308))

(assert (= (and b!493308 res!296027) b!493306))

(assert (= (and b!493306 res!296022) b!493310))

(assert (= (and b!493310 (not res!296025)) b!493301))

(assert (= (and b!493301 (not res!296029)) b!493307))

(declare-fun m!474193 () Bool)

(assert (=> b!493306 m!474193))

(declare-fun m!474195 () Bool)

(assert (=> b!493309 m!474195))

(declare-fun m!474197 () Bool)

(assert (=> b!493303 m!474197))

(declare-fun m!474199 () Bool)

(assert (=> b!493302 m!474199))

(declare-fun m!474201 () Bool)

(assert (=> b!493308 m!474201))

(declare-fun m!474203 () Bool)

(assert (=> b!493304 m!474203))

(assert (=> b!493304 m!474203))

(declare-fun m!474205 () Bool)

(assert (=> b!493304 m!474205))

(declare-fun m!474207 () Bool)

(assert (=> b!493310 m!474207))

(declare-fun m!474209 () Bool)

(assert (=> b!493310 m!474209))

(assert (=> b!493310 m!474203))

(declare-fun m!474211 () Bool)

(assert (=> b!493310 m!474211))

(assert (=> b!493310 m!474203))

(declare-fun m!474213 () Bool)

(assert (=> b!493310 m!474213))

(declare-fun m!474215 () Bool)

(assert (=> b!493310 m!474215))

(declare-fun m!474217 () Bool)

(assert (=> b!493310 m!474217))

(assert (=> b!493310 m!474215))

(declare-fun m!474219 () Bool)

(assert (=> b!493310 m!474219))

(assert (=> b!493310 m!474215))

(assert (=> b!493310 m!474203))

(declare-fun m!474221 () Bool)

(assert (=> b!493310 m!474221))

(assert (=> b!493310 m!474203))

(declare-fun m!474223 () Bool)

(assert (=> b!493310 m!474223))

(declare-fun m!474225 () Bool)

(assert (=> start!45000 m!474225))

(declare-fun m!474227 () Bool)

(assert (=> start!45000 m!474227))

(check-sat (not b!493310) (not b!493308) (not b!493303) (not b!493302) (not b!493306) (not b!493304) (not b!493309) (not start!45000))
(check-sat)
