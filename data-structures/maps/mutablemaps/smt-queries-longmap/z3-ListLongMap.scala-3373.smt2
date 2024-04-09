; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46422 () Bool)

(assert start!46422)

(declare-fun b!513262 () Bool)

(declare-fun res!313715 () Bool)

(declare-fun e!299725 () Bool)

(assert (=> b!513262 (=> (not res!313715) (not e!299725))))

(declare-datatypes ((array!32922 0))(
  ( (array!32923 (arr!15832 (Array (_ BitVec 32) (_ BitVec 64))) (size!16196 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32922)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513262 (= res!313715 (validKeyInArray!0 (select (arr!15832 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!513263 () Bool)

(declare-fun e!299728 () Bool)

(declare-datatypes ((SeekEntryResult!4306 0))(
  ( (MissingZero!4306 (index!19412 (_ BitVec 32))) (Found!4306 (index!19413 (_ BitVec 32))) (Intermediate!4306 (undefined!5118 Bool) (index!19414 (_ BitVec 32)) (x!48392 (_ BitVec 32))) (Undefined!4306) (MissingVacant!4306 (index!19415 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32922 (_ BitVec 32)) SeekEntryResult!4306)

(assert (=> b!513263 (= e!299728 (= (seekEntryOrOpen!0 (select (arr!15832 a!3235) j!176) a!3235 mask!3524) (Found!4306 j!176)))))

(declare-fun b!513264 () Bool)

(declare-fun res!313713 () Bool)

(assert (=> b!513264 (=> (not res!313713) (not e!299725))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!513264 (= res!313713 (and (= (size!16196 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16196 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16196 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513265 () Bool)

(declare-fun res!313717 () Bool)

(declare-fun e!299727 () Bool)

(assert (=> b!513265 (=> res!313717 e!299727)))

(declare-fun lt!235040 () SeekEntryResult!4306)

(get-info :version)

(assert (=> b!513265 (= res!313717 (or (undefined!5118 lt!235040) (not ((_ is Intermediate!4306) lt!235040))))))

(declare-fun b!513266 () Bool)

(assert (=> b!513266 (= e!299727 true)))

(assert (=> b!513266 (bvslt (x!48392 lt!235040) #b01111111111111111111111111111110)))

(declare-fun b!513267 () Bool)

(declare-fun res!313710 () Bool)

(assert (=> b!513267 (=> (not res!313710) (not e!299725))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!513267 (= res!313710 (validKeyInArray!0 k0!2280))))

(declare-fun b!513268 () Bool)

(declare-fun res!313716 () Bool)

(declare-fun e!299726 () Bool)

(assert (=> b!513268 (=> (not res!313716) (not e!299726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32922 (_ BitVec 32)) Bool)

(assert (=> b!513268 (= res!313716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513269 () Bool)

(assert (=> b!513269 (= e!299726 (not e!299727))))

(declare-fun res!313718 () Bool)

(assert (=> b!513269 (=> res!313718 e!299727)))

(declare-fun lt!235038 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32922 (_ BitVec 32)) SeekEntryResult!4306)

(assert (=> b!513269 (= res!313718 (= lt!235040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235038 (select (store (arr!15832 a!3235) i!1204 k0!2280) j!176) (array!32923 (store (arr!15832 a!3235) i!1204 k0!2280) (size!16196 a!3235)) mask!3524)))))

(declare-fun lt!235037 () (_ BitVec 32))

(assert (=> b!513269 (= lt!235040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235037 (select (arr!15832 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513269 (= lt!235038 (toIndex!0 (select (store (arr!15832 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!513269 (= lt!235037 (toIndex!0 (select (arr!15832 a!3235) j!176) mask!3524))))

(assert (=> b!513269 e!299728))

(declare-fun res!313714 () Bool)

(assert (=> b!513269 (=> (not res!313714) (not e!299728))))

(assert (=> b!513269 (= res!313714 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15862 0))(
  ( (Unit!15863) )
))
(declare-fun lt!235039 () Unit!15862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15862)

(assert (=> b!513269 (= lt!235039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513270 () Bool)

(declare-fun res!313712 () Bool)

(assert (=> b!513270 (=> (not res!313712) (not e!299726))))

(declare-datatypes ((List!10043 0))(
  ( (Nil!10040) (Cons!10039 (h!10925 (_ BitVec 64)) (t!16279 List!10043)) )
))
(declare-fun arrayNoDuplicates!0 (array!32922 (_ BitVec 32) List!10043) Bool)

(assert (=> b!513270 (= res!313712 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10040))))

(declare-fun b!513271 () Bool)

(declare-fun res!313711 () Bool)

(assert (=> b!513271 (=> (not res!313711) (not e!299725))))

(declare-fun arrayContainsKey!0 (array!32922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513271 (= res!313711 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!313709 () Bool)

(assert (=> start!46422 (=> (not res!313709) (not e!299725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46422 (= res!313709 (validMask!0 mask!3524))))

(assert (=> start!46422 e!299725))

(assert (=> start!46422 true))

(declare-fun array_inv!11606 (array!32922) Bool)

(assert (=> start!46422 (array_inv!11606 a!3235)))

(declare-fun b!513272 () Bool)

(assert (=> b!513272 (= e!299725 e!299726)))

(declare-fun res!313708 () Bool)

(assert (=> b!513272 (=> (not res!313708) (not e!299726))))

(declare-fun lt!235036 () SeekEntryResult!4306)

(assert (=> b!513272 (= res!313708 (or (= lt!235036 (MissingZero!4306 i!1204)) (= lt!235036 (MissingVacant!4306 i!1204))))))

(assert (=> b!513272 (= lt!235036 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46422 res!313709) b!513264))

(assert (= (and b!513264 res!313713) b!513262))

(assert (= (and b!513262 res!313715) b!513267))

(assert (= (and b!513267 res!313710) b!513271))

(assert (= (and b!513271 res!313711) b!513272))

(assert (= (and b!513272 res!313708) b!513268))

(assert (= (and b!513268 res!313716) b!513270))

(assert (= (and b!513270 res!313712) b!513269))

(assert (= (and b!513269 res!313714) b!513263))

(assert (= (and b!513269 (not res!313718)) b!513265))

(assert (= (and b!513265 (not res!313717)) b!513266))

(declare-fun m!494863 () Bool)

(assert (=> b!513272 m!494863))

(declare-fun m!494865 () Bool)

(assert (=> b!513268 m!494865))

(declare-fun m!494867 () Bool)

(assert (=> start!46422 m!494867))

(declare-fun m!494869 () Bool)

(assert (=> start!46422 m!494869))

(declare-fun m!494871 () Bool)

(assert (=> b!513262 m!494871))

(assert (=> b!513262 m!494871))

(declare-fun m!494873 () Bool)

(assert (=> b!513262 m!494873))

(declare-fun m!494875 () Bool)

(assert (=> b!513267 m!494875))

(declare-fun m!494877 () Bool)

(assert (=> b!513271 m!494877))

(declare-fun m!494879 () Bool)

(assert (=> b!513269 m!494879))

(declare-fun m!494881 () Bool)

(assert (=> b!513269 m!494881))

(declare-fun m!494883 () Bool)

(assert (=> b!513269 m!494883))

(declare-fun m!494885 () Bool)

(assert (=> b!513269 m!494885))

(assert (=> b!513269 m!494881))

(assert (=> b!513269 m!494871))

(declare-fun m!494887 () Bool)

(assert (=> b!513269 m!494887))

(assert (=> b!513269 m!494871))

(declare-fun m!494889 () Bool)

(assert (=> b!513269 m!494889))

(assert (=> b!513269 m!494871))

(declare-fun m!494891 () Bool)

(assert (=> b!513269 m!494891))

(assert (=> b!513269 m!494881))

(declare-fun m!494893 () Bool)

(assert (=> b!513269 m!494893))

(declare-fun m!494895 () Bool)

(assert (=> b!513270 m!494895))

(assert (=> b!513263 m!494871))

(assert (=> b!513263 m!494871))

(declare-fun m!494897 () Bool)

(assert (=> b!513263 m!494897))

(check-sat (not b!513269) (not b!513272) (not b!513262) (not b!513270) (not b!513271) (not b!513263) (not b!513268) (not b!513267) (not start!46422))
(check-sat)
