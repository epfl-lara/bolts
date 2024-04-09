; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125286 () Bool)

(assert start!125286)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!821642 () Bool)

(declare-fun b!1461439 () Bool)

(declare-datatypes ((array!98651 0))(
  ( (array!98652 (arr!47609 (Array (_ BitVec 32) (_ BitVec 64))) (size!48160 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98651)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1461439 (= e!821642 (or (= (select (arr!47609 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47609 a!2862) intermediateBeforeIndex!19) (select (arr!47609 a!2862) j!93))))))

(declare-fun b!1461440 () Bool)

(declare-fun e!821633 () Bool)

(declare-fun e!821639 () Bool)

(assert (=> b!1461440 (= e!821633 e!821639)))

(declare-fun res!991161 () Bool)

(assert (=> b!1461440 (=> (not res!991161) (not e!821639))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461440 (= res!991161 (= (select (store (arr!47609 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640097 () array!98651)

(assert (=> b!1461440 (= lt!640097 (array!98652 (store (arr!47609 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48160 a!2862)))))

(declare-fun res!991154 () Bool)

(assert (=> start!125286 (=> (not res!991154) (not e!821633))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125286 (= res!991154 (validMask!0 mask!2687))))

(assert (=> start!125286 e!821633))

(assert (=> start!125286 true))

(declare-fun array_inv!36554 (array!98651) Bool)

(assert (=> start!125286 (array_inv!36554 a!2862)))

(declare-fun b!1461441 () Bool)

(declare-fun res!991155 () Bool)

(declare-fun e!821637 () Bool)

(assert (=> b!1461441 (=> res!991155 e!821637)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640102 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11884 0))(
  ( (MissingZero!11884 (index!49927 (_ BitVec 32))) (Found!11884 (index!49928 (_ BitVec 32))) (Intermediate!11884 (undefined!12696 Bool) (index!49929 (_ BitVec 32)) (x!131528 (_ BitVec 32))) (Undefined!11884) (MissingVacant!11884 (index!49930 (_ BitVec 32))) )
))
(declare-fun lt!640096 () SeekEntryResult!11884)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98651 (_ BitVec 32)) SeekEntryResult!11884)

(assert (=> b!1461441 (= res!991155 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640102 (select (arr!47609 a!2862) j!93) a!2862 mask!2687) lt!640096)))))

(declare-fun b!1461442 () Bool)

(declare-fun res!991147 () Bool)

(assert (=> b!1461442 (=> (not res!991147) (not e!821633))))

(assert (=> b!1461442 (= res!991147 (and (= (size!48160 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48160 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48160 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461443 () Bool)

(declare-fun lt!640098 () SeekEntryResult!11884)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!821635 () Bool)

(declare-fun lt!640100 () (_ BitVec 64))

(assert (=> b!1461443 (= e!821635 (= lt!640098 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640100 lt!640097 mask!2687)))))

(declare-fun b!1461444 () Bool)

(declare-fun res!991164 () Bool)

(assert (=> b!1461444 (=> (not res!991164) (not e!821633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461444 (= res!991164 (validKeyInArray!0 (select (arr!47609 a!2862) j!93)))))

(declare-fun b!1461445 () Bool)

(declare-fun e!821641 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98651 (_ BitVec 32)) SeekEntryResult!11884)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98651 (_ BitVec 32)) SeekEntryResult!11884)

(assert (=> b!1461445 (= e!821641 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640102 intermediateAfterIndex!19 lt!640100 lt!640097 mask!2687) (seekEntryOrOpen!0 lt!640100 lt!640097 mask!2687))))))

(declare-fun b!1461446 () Bool)

(declare-fun res!991151 () Bool)

(assert (=> b!1461446 (=> (not res!991151) (not e!821633))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461446 (= res!991151 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48160 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48160 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48160 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461447 () Bool)

(declare-fun e!821634 () Bool)

(assert (=> b!1461447 (= e!821634 e!821637)))

(declare-fun res!991163 () Bool)

(assert (=> b!1461447 (=> res!991163 e!821637)))

(assert (=> b!1461447 (= res!991163 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640102 #b00000000000000000000000000000000) (bvsge lt!640102 (size!48160 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461447 (= lt!640102 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461448 () Bool)

(declare-fun res!991159 () Bool)

(declare-fun e!821636 () Bool)

(assert (=> b!1461448 (=> (not res!991159) (not e!821636))))

(assert (=> b!1461448 (= res!991159 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47609 a!2862) j!93) a!2862 mask!2687) lt!640096))))

(declare-fun b!1461449 () Bool)

(assert (=> b!1461449 (= e!821641 (not (= lt!640098 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640102 lt!640100 lt!640097 mask!2687))))))

(declare-fun b!1461450 () Bool)

(declare-fun res!991149 () Bool)

(assert (=> b!1461450 (=> (not res!991149) (not e!821633))))

(declare-datatypes ((List!34290 0))(
  ( (Nil!34287) (Cons!34286 (h!35636 (_ BitVec 64)) (t!48991 List!34290)) )
))
(declare-fun arrayNoDuplicates!0 (array!98651 (_ BitVec 32) List!34290) Bool)

(assert (=> b!1461450 (= res!991149 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34287))))

(declare-fun b!1461451 () Bool)

(declare-fun res!991162 () Bool)

(assert (=> b!1461451 (=> (not res!991162) (not e!821642))))

(assert (=> b!1461451 (= res!991162 (= (seekEntryOrOpen!0 (select (arr!47609 a!2862) j!93) a!2862 mask!2687) (Found!11884 j!93)))))

(declare-fun b!1461452 () Bool)

(assert (=> b!1461452 (= e!821637 true)))

(declare-fun lt!640099 () Bool)

(assert (=> b!1461452 (= lt!640099 e!821641)))

(declare-fun c!134659 () Bool)

(assert (=> b!1461452 (= c!134659 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461453 () Bool)

(declare-fun res!991148 () Bool)

(declare-fun e!821638 () Bool)

(assert (=> b!1461453 (=> (not res!991148) (not e!821638))))

(assert (=> b!1461453 (= res!991148 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461454 () Bool)

(declare-fun res!991150 () Bool)

(assert (=> b!1461454 (=> (not res!991150) (not e!821633))))

(assert (=> b!1461454 (= res!991150 (validKeyInArray!0 (select (arr!47609 a!2862) i!1006)))))

(declare-fun b!1461455 () Bool)

(declare-fun res!991153 () Bool)

(assert (=> b!1461455 (=> (not res!991153) (not e!821638))))

(assert (=> b!1461455 (= res!991153 e!821635)))

(declare-fun c!134660 () Bool)

(assert (=> b!1461455 (= c!134660 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461456 () Bool)

(assert (=> b!1461456 (= e!821638 (not e!821634))))

(declare-fun res!991160 () Bool)

(assert (=> b!1461456 (=> res!991160 e!821634)))

(assert (=> b!1461456 (= res!991160 (or (and (= (select (arr!47609 a!2862) index!646) (select (store (arr!47609 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47609 a!2862) index!646) (select (arr!47609 a!2862) j!93))) (= (select (arr!47609 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461456 e!821642))

(declare-fun res!991158 () Bool)

(assert (=> b!1461456 (=> (not res!991158) (not e!821642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98651 (_ BitVec 32)) Bool)

(assert (=> b!1461456 (= res!991158 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49212 0))(
  ( (Unit!49213) )
))
(declare-fun lt!640101 () Unit!49212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49212)

(assert (=> b!1461456 (= lt!640101 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461457 () Bool)

(assert (=> b!1461457 (= e!821635 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640100 lt!640097 mask!2687) (seekEntryOrOpen!0 lt!640100 lt!640097 mask!2687)))))

(declare-fun b!1461458 () Bool)

(declare-fun res!991157 () Bool)

(assert (=> b!1461458 (=> (not res!991157) (not e!821633))))

(assert (=> b!1461458 (= res!991157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461459 () Bool)

(assert (=> b!1461459 (= e!821639 e!821636)))

(declare-fun res!991156 () Bool)

(assert (=> b!1461459 (=> (not res!991156) (not e!821636))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461459 (= res!991156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47609 a!2862) j!93) mask!2687) (select (arr!47609 a!2862) j!93) a!2862 mask!2687) lt!640096))))

(assert (=> b!1461459 (= lt!640096 (Intermediate!11884 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461460 () Bool)

(assert (=> b!1461460 (= e!821636 e!821638)))

(declare-fun res!991152 () Bool)

(assert (=> b!1461460 (=> (not res!991152) (not e!821638))))

(assert (=> b!1461460 (= res!991152 (= lt!640098 (Intermediate!11884 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461460 (= lt!640098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640100 mask!2687) lt!640100 lt!640097 mask!2687))))

(assert (=> b!1461460 (= lt!640100 (select (store (arr!47609 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125286 res!991154) b!1461442))

(assert (= (and b!1461442 res!991147) b!1461454))

(assert (= (and b!1461454 res!991150) b!1461444))

(assert (= (and b!1461444 res!991164) b!1461458))

(assert (= (and b!1461458 res!991157) b!1461450))

(assert (= (and b!1461450 res!991149) b!1461446))

(assert (= (and b!1461446 res!991151) b!1461440))

(assert (= (and b!1461440 res!991161) b!1461459))

(assert (= (and b!1461459 res!991156) b!1461448))

(assert (= (and b!1461448 res!991159) b!1461460))

(assert (= (and b!1461460 res!991152) b!1461455))

(assert (= (and b!1461455 c!134660) b!1461443))

(assert (= (and b!1461455 (not c!134660)) b!1461457))

(assert (= (and b!1461455 res!991153) b!1461453))

(assert (= (and b!1461453 res!991148) b!1461456))

(assert (= (and b!1461456 res!991158) b!1461451))

(assert (= (and b!1461451 res!991162) b!1461439))

(assert (= (and b!1461456 (not res!991160)) b!1461447))

(assert (= (and b!1461447 (not res!991163)) b!1461441))

(assert (= (and b!1461441 (not res!991155)) b!1461452))

(assert (= (and b!1461452 c!134659) b!1461449))

(assert (= (and b!1461452 (not c!134659)) b!1461445))

(declare-fun m!1349065 () Bool)

(assert (=> start!125286 m!1349065))

(declare-fun m!1349067 () Bool)

(assert (=> start!125286 m!1349067))

(declare-fun m!1349069 () Bool)

(assert (=> b!1461459 m!1349069))

(assert (=> b!1461459 m!1349069))

(declare-fun m!1349071 () Bool)

(assert (=> b!1461459 m!1349071))

(assert (=> b!1461459 m!1349071))

(assert (=> b!1461459 m!1349069))

(declare-fun m!1349073 () Bool)

(assert (=> b!1461459 m!1349073))

(declare-fun m!1349075 () Bool)

(assert (=> b!1461447 m!1349075))

(assert (=> b!1461441 m!1349069))

(assert (=> b!1461441 m!1349069))

(declare-fun m!1349077 () Bool)

(assert (=> b!1461441 m!1349077))

(declare-fun m!1349079 () Bool)

(assert (=> b!1461458 m!1349079))

(declare-fun m!1349081 () Bool)

(assert (=> b!1461460 m!1349081))

(assert (=> b!1461460 m!1349081))

(declare-fun m!1349083 () Bool)

(assert (=> b!1461460 m!1349083))

(declare-fun m!1349085 () Bool)

(assert (=> b!1461460 m!1349085))

(declare-fun m!1349087 () Bool)

(assert (=> b!1461460 m!1349087))

(declare-fun m!1349089 () Bool)

(assert (=> b!1461449 m!1349089))

(declare-fun m!1349091 () Bool)

(assert (=> b!1461450 m!1349091))

(assert (=> b!1461444 m!1349069))

(assert (=> b!1461444 m!1349069))

(declare-fun m!1349093 () Bool)

(assert (=> b!1461444 m!1349093))

(assert (=> b!1461451 m!1349069))

(assert (=> b!1461451 m!1349069))

(declare-fun m!1349095 () Bool)

(assert (=> b!1461451 m!1349095))

(assert (=> b!1461448 m!1349069))

(assert (=> b!1461448 m!1349069))

(declare-fun m!1349097 () Bool)

(assert (=> b!1461448 m!1349097))

(declare-fun m!1349099 () Bool)

(assert (=> b!1461456 m!1349099))

(assert (=> b!1461456 m!1349085))

(declare-fun m!1349101 () Bool)

(assert (=> b!1461456 m!1349101))

(declare-fun m!1349103 () Bool)

(assert (=> b!1461456 m!1349103))

(declare-fun m!1349105 () Bool)

(assert (=> b!1461456 m!1349105))

(assert (=> b!1461456 m!1349069))

(declare-fun m!1349107 () Bool)

(assert (=> b!1461457 m!1349107))

(declare-fun m!1349109 () Bool)

(assert (=> b!1461457 m!1349109))

(declare-fun m!1349111 () Bool)

(assert (=> b!1461454 m!1349111))

(assert (=> b!1461454 m!1349111))

(declare-fun m!1349113 () Bool)

(assert (=> b!1461454 m!1349113))

(assert (=> b!1461440 m!1349085))

(declare-fun m!1349115 () Bool)

(assert (=> b!1461440 m!1349115))

(declare-fun m!1349117 () Bool)

(assert (=> b!1461439 m!1349117))

(assert (=> b!1461439 m!1349069))

(declare-fun m!1349119 () Bool)

(assert (=> b!1461445 m!1349119))

(assert (=> b!1461445 m!1349109))

(declare-fun m!1349121 () Bool)

(assert (=> b!1461443 m!1349121))

(check-sat (not b!1461447) (not b!1461443) (not b!1461450) (not b!1461454) (not b!1461441) (not b!1461451) (not b!1461459) (not b!1461457) (not b!1461460) (not b!1461458) (not b!1461448) (not b!1461449) (not b!1461456) (not b!1461444) (not b!1461445) (not start!125286))
(check-sat)
