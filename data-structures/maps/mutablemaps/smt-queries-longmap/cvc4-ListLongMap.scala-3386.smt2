; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46742 () Bool)

(assert start!46742)

(declare-fun b!515746 () Bool)

(declare-fun e!301069 () Bool)

(declare-fun e!301071 () Bool)

(assert (=> b!515746 (= e!301069 (not e!301071))))

(declare-fun res!315469 () Bool)

(assert (=> b!515746 (=> res!315469 e!301071)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33014 0))(
  ( (array!33015 (arr!15872 (Array (_ BitVec 32) (_ BitVec 64))) (size!16236 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33014)

(declare-fun lt!236153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4346 0))(
  ( (MissingZero!4346 (index!19572 (_ BitVec 32))) (Found!4346 (index!19573 (_ BitVec 32))) (Intermediate!4346 (undefined!5158 Bool) (index!19574 (_ BitVec 32)) (x!48560 (_ BitVec 32))) (Undefined!4346) (MissingVacant!4346 (index!19575 (_ BitVec 32))) )
))
(declare-fun lt!236154 () SeekEntryResult!4346)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33014 (_ BitVec 32)) SeekEntryResult!4346)

(assert (=> b!515746 (= res!315469 (= lt!236154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236153 (select (store (arr!15872 a!3235) i!1204 k!2280) j!176) (array!33015 (store (arr!15872 a!3235) i!1204 k!2280) (size!16236 a!3235)) mask!3524)))))

(declare-fun lt!236152 () (_ BitVec 32))

(assert (=> b!515746 (= lt!236154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236152 (select (arr!15872 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515746 (= lt!236153 (toIndex!0 (select (store (arr!15872 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515746 (= lt!236152 (toIndex!0 (select (arr!15872 a!3235) j!176) mask!3524))))

(declare-fun e!301068 () Bool)

(assert (=> b!515746 e!301068))

(declare-fun res!315463 () Bool)

(assert (=> b!515746 (=> (not res!315463) (not e!301068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33014 (_ BitVec 32)) Bool)

(assert (=> b!515746 (= res!315463 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15942 0))(
  ( (Unit!15943) )
))
(declare-fun lt!236156 () Unit!15942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33014 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15942)

(assert (=> b!515746 (= lt!236156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515747 () Bool)

(assert (=> b!515747 (= e!301071 true)))

(assert (=> b!515747 (and (bvslt (x!48560 lt!236154) #b01111111111111111111111111111110) (or (= (select (arr!15872 a!3235) (index!19574 lt!236154)) (select (arr!15872 a!3235) j!176)) (= (select (arr!15872 a!3235) (index!19574 lt!236154)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15872 a!3235) (index!19574 lt!236154)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515748 () Bool)

(declare-fun res!315468 () Bool)

(assert (=> b!515748 (=> (not res!315468) (not e!301069))))

(assert (=> b!515748 (= res!315468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!315466 () Bool)

(declare-fun e!301070 () Bool)

(assert (=> start!46742 (=> (not res!315466) (not e!301070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46742 (= res!315466 (validMask!0 mask!3524))))

(assert (=> start!46742 e!301070))

(assert (=> start!46742 true))

(declare-fun array_inv!11646 (array!33014) Bool)

(assert (=> start!46742 (array_inv!11646 a!3235)))

(declare-fun b!515749 () Bool)

(declare-fun res!315461 () Bool)

(assert (=> b!515749 (=> (not res!315461) (not e!301070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515749 (= res!315461 (validKeyInArray!0 (select (arr!15872 a!3235) j!176)))))

(declare-fun b!515750 () Bool)

(assert (=> b!515750 (= e!301070 e!301069)))

(declare-fun res!315465 () Bool)

(assert (=> b!515750 (=> (not res!315465) (not e!301069))))

(declare-fun lt!236155 () SeekEntryResult!4346)

(assert (=> b!515750 (= res!315465 (or (= lt!236155 (MissingZero!4346 i!1204)) (= lt!236155 (MissingVacant!4346 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33014 (_ BitVec 32)) SeekEntryResult!4346)

(assert (=> b!515750 (= lt!236155 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515751 () Bool)

(declare-fun res!315467 () Bool)

(assert (=> b!515751 (=> (not res!315467) (not e!301069))))

(declare-datatypes ((List!10083 0))(
  ( (Nil!10080) (Cons!10079 (h!10977 (_ BitVec 64)) (t!16319 List!10083)) )
))
(declare-fun arrayNoDuplicates!0 (array!33014 (_ BitVec 32) List!10083) Bool)

(assert (=> b!515751 (= res!315467 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10080))))

(declare-fun b!515752 () Bool)

(declare-fun res!315462 () Bool)

(assert (=> b!515752 (=> (not res!315462) (not e!301070))))

(assert (=> b!515752 (= res!315462 (and (= (size!16236 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16236 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16236 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515753 () Bool)

(declare-fun res!315464 () Bool)

(assert (=> b!515753 (=> (not res!315464) (not e!301070))))

(assert (=> b!515753 (= res!315464 (validKeyInArray!0 k!2280))))

(declare-fun b!515754 () Bool)

(declare-fun res!315460 () Bool)

(assert (=> b!515754 (=> res!315460 e!301071)))

(assert (=> b!515754 (= res!315460 (or (undefined!5158 lt!236154) (not (is-Intermediate!4346 lt!236154))))))

(declare-fun b!515755 () Bool)

(declare-fun res!315470 () Bool)

(assert (=> b!515755 (=> (not res!315470) (not e!301070))))

(declare-fun arrayContainsKey!0 (array!33014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515755 (= res!315470 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515756 () Bool)

(assert (=> b!515756 (= e!301068 (= (seekEntryOrOpen!0 (select (arr!15872 a!3235) j!176) a!3235 mask!3524) (Found!4346 j!176)))))

(assert (= (and start!46742 res!315466) b!515752))

(assert (= (and b!515752 res!315462) b!515749))

(assert (= (and b!515749 res!315461) b!515753))

(assert (= (and b!515753 res!315464) b!515755))

(assert (= (and b!515755 res!315470) b!515750))

(assert (= (and b!515750 res!315465) b!515748))

(assert (= (and b!515748 res!315468) b!515751))

(assert (= (and b!515751 res!315467) b!515746))

(assert (= (and b!515746 res!315463) b!515756))

(assert (= (and b!515746 (not res!315469)) b!515754))

(assert (= (and b!515754 (not res!315460)) b!515747))

(declare-fun m!497195 () Bool)

(assert (=> b!515753 m!497195))

(declare-fun m!497197 () Bool)

(assert (=> b!515748 m!497197))

(declare-fun m!497199 () Bool)

(assert (=> b!515747 m!497199))

(declare-fun m!497201 () Bool)

(assert (=> b!515747 m!497201))

(declare-fun m!497203 () Bool)

(assert (=> start!46742 m!497203))

(declare-fun m!497205 () Bool)

(assert (=> start!46742 m!497205))

(declare-fun m!497207 () Bool)

(assert (=> b!515750 m!497207))

(assert (=> b!515749 m!497201))

(assert (=> b!515749 m!497201))

(declare-fun m!497209 () Bool)

(assert (=> b!515749 m!497209))

(declare-fun m!497211 () Bool)

(assert (=> b!515746 m!497211))

(assert (=> b!515746 m!497201))

(declare-fun m!497213 () Bool)

(assert (=> b!515746 m!497213))

(assert (=> b!515746 m!497201))

(declare-fun m!497215 () Bool)

(assert (=> b!515746 m!497215))

(declare-fun m!497217 () Bool)

(assert (=> b!515746 m!497217))

(declare-fun m!497219 () Bool)

(assert (=> b!515746 m!497219))

(declare-fun m!497221 () Bool)

(assert (=> b!515746 m!497221))

(assert (=> b!515746 m!497201))

(declare-fun m!497223 () Bool)

(assert (=> b!515746 m!497223))

(assert (=> b!515746 m!497217))

(declare-fun m!497225 () Bool)

(assert (=> b!515746 m!497225))

(assert (=> b!515746 m!497217))

(declare-fun m!497227 () Bool)

(assert (=> b!515751 m!497227))

(declare-fun m!497229 () Bool)

(assert (=> b!515755 m!497229))

(assert (=> b!515756 m!497201))

(assert (=> b!515756 m!497201))

(declare-fun m!497231 () Bool)

(assert (=> b!515756 m!497231))

(push 1)

