; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46278 () Bool)

(assert start!46278)

(declare-fun b!512315 () Bool)

(declare-fun res!313130 () Bool)

(declare-fun e!299188 () Bool)

(assert (=> b!512315 (=> res!313130 e!299188)))

(declare-datatypes ((SeekEntryResult!4294 0))(
  ( (MissingZero!4294 (index!19364 (_ BitVec 32))) (Found!4294 (index!19365 (_ BitVec 32))) (Intermediate!4294 (undefined!5106 Bool) (index!19366 (_ BitVec 32)) (x!48336 (_ BitVec 32))) (Undefined!4294) (MissingVacant!4294 (index!19367 (_ BitVec 32))) )
))
(declare-fun lt!234587 () SeekEntryResult!4294)

(get-info :version)

(assert (=> b!512315 (= res!313130 (or (not ((_ is Intermediate!4294) lt!234587)) (not (undefined!5106 lt!234587))))))

(declare-fun b!512316 () Bool)

(declare-fun res!313129 () Bool)

(declare-fun e!299186 () Bool)

(assert (=> b!512316 (=> (not res!313129) (not e!299186))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32892 0))(
  ( (array!32893 (arr!15820 (Array (_ BitVec 32) (_ BitVec 64))) (size!16184 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32892)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!512316 (= res!313129 (and (= (size!16184 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16184 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16184 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!313132 () Bool)

(assert (=> start!46278 (=> (not res!313132) (not e!299186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46278 (= res!313132 (validMask!0 mask!3524))))

(assert (=> start!46278 e!299186))

(assert (=> start!46278 true))

(declare-fun array_inv!11594 (array!32892) Bool)

(assert (=> start!46278 (array_inv!11594 a!3235)))

(declare-fun b!512317 () Bool)

(declare-fun res!313133 () Bool)

(assert (=> b!512317 (=> (not res!313133) (not e!299186))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512317 (= res!313133 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512318 () Bool)

(assert (=> b!512318 (= e!299188 true)))

(declare-fun lt!234585 () SeekEntryResult!4294)

(assert (=> b!512318 (= lt!234585 Undefined!4294)))

(declare-fun b!512319 () Bool)

(declare-fun e!299187 () Bool)

(assert (=> b!512319 (= e!299186 e!299187)))

(declare-fun res!313127 () Bool)

(assert (=> b!512319 (=> (not res!313127) (not e!299187))))

(declare-fun lt!234586 () SeekEntryResult!4294)

(assert (=> b!512319 (= res!313127 (or (= lt!234586 (MissingZero!4294 i!1204)) (= lt!234586 (MissingVacant!4294 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32892 (_ BitVec 32)) SeekEntryResult!4294)

(assert (=> b!512319 (= lt!234586 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512320 () Bool)

(declare-fun res!313136 () Bool)

(assert (=> b!512320 (=> (not res!313136) (not e!299186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512320 (= res!313136 (validKeyInArray!0 (select (arr!15820 a!3235) j!176)))))

(declare-fun b!512321 () Bool)

(declare-fun res!313131 () Bool)

(assert (=> b!512321 (=> (not res!313131) (not e!299187))))

(declare-datatypes ((List!10031 0))(
  ( (Nil!10028) (Cons!10027 (h!10907 (_ BitVec 64)) (t!16267 List!10031)) )
))
(declare-fun arrayNoDuplicates!0 (array!32892 (_ BitVec 32) List!10031) Bool)

(assert (=> b!512321 (= res!313131 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10028))))

(declare-fun b!512322 () Bool)

(assert (=> b!512322 (= e!299187 (not e!299188))))

(declare-fun res!313128 () Bool)

(assert (=> b!512322 (=> res!313128 e!299188)))

(declare-fun lt!234588 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32892 (_ BitVec 32)) SeekEntryResult!4294)

(assert (=> b!512322 (= res!313128 (= lt!234587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234588 (select (store (arr!15820 a!3235) i!1204 k0!2280) j!176) (array!32893 (store (arr!15820 a!3235) i!1204 k0!2280) (size!16184 a!3235)) mask!3524)))))

(declare-fun lt!234590 () (_ BitVec 32))

(assert (=> b!512322 (= lt!234587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234590 (select (arr!15820 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512322 (= lt!234588 (toIndex!0 (select (store (arr!15820 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512322 (= lt!234590 (toIndex!0 (select (arr!15820 a!3235) j!176) mask!3524))))

(assert (=> b!512322 (= lt!234585 (Found!4294 j!176))))

(assert (=> b!512322 (= lt!234585 (seekEntryOrOpen!0 (select (arr!15820 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32892 (_ BitVec 32)) Bool)

(assert (=> b!512322 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15838 0))(
  ( (Unit!15839) )
))
(declare-fun lt!234589 () Unit!15838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32892 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15838)

(assert (=> b!512322 (= lt!234589 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512323 () Bool)

(declare-fun res!313135 () Bool)

(assert (=> b!512323 (=> (not res!313135) (not e!299186))))

(assert (=> b!512323 (= res!313135 (validKeyInArray!0 k0!2280))))

(declare-fun b!512324 () Bool)

(declare-fun res!313134 () Bool)

(assert (=> b!512324 (=> (not res!313134) (not e!299187))))

(assert (=> b!512324 (= res!313134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46278 res!313132) b!512316))

(assert (= (and b!512316 res!313129) b!512320))

(assert (= (and b!512320 res!313136) b!512323))

(assert (= (and b!512323 res!313135) b!512317))

(assert (= (and b!512317 res!313133) b!512319))

(assert (= (and b!512319 res!313127) b!512324))

(assert (= (and b!512324 res!313134) b!512321))

(assert (= (and b!512321 res!313131) b!512322))

(assert (= (and b!512322 (not res!313128)) b!512315))

(assert (= (and b!512315 (not res!313130)) b!512318))

(declare-fun m!494023 () Bool)

(assert (=> b!512322 m!494023))

(declare-fun m!494025 () Bool)

(assert (=> b!512322 m!494025))

(declare-fun m!494027 () Bool)

(assert (=> b!512322 m!494027))

(declare-fun m!494029 () Bool)

(assert (=> b!512322 m!494029))

(assert (=> b!512322 m!494025))

(declare-fun m!494031 () Bool)

(assert (=> b!512322 m!494031))

(declare-fun m!494033 () Bool)

(assert (=> b!512322 m!494033))

(declare-fun m!494035 () Bool)

(assert (=> b!512322 m!494035))

(assert (=> b!512322 m!494031))

(declare-fun m!494037 () Bool)

(assert (=> b!512322 m!494037))

(assert (=> b!512322 m!494025))

(declare-fun m!494039 () Bool)

(assert (=> b!512322 m!494039))

(assert (=> b!512322 m!494031))

(declare-fun m!494041 () Bool)

(assert (=> b!512322 m!494041))

(assert (=> b!512322 m!494031))

(declare-fun m!494043 () Bool)

(assert (=> b!512324 m!494043))

(declare-fun m!494045 () Bool)

(assert (=> start!46278 m!494045))

(declare-fun m!494047 () Bool)

(assert (=> start!46278 m!494047))

(declare-fun m!494049 () Bool)

(assert (=> b!512321 m!494049))

(assert (=> b!512320 m!494031))

(assert (=> b!512320 m!494031))

(declare-fun m!494051 () Bool)

(assert (=> b!512320 m!494051))

(declare-fun m!494053 () Bool)

(assert (=> b!512319 m!494053))

(declare-fun m!494055 () Bool)

(assert (=> b!512323 m!494055))

(declare-fun m!494057 () Bool)

(assert (=> b!512317 m!494057))

(check-sat (not b!512319) (not b!512320) (not b!512317) (not b!512321) (not b!512323) (not b!512324) (not b!512322) (not start!46278))
(check-sat)
