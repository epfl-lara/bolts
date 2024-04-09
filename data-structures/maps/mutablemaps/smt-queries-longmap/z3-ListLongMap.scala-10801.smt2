; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126438 () Bool)

(assert start!126438)

(declare-fun b!1481839 () Bool)

(declare-fun res!1007219 () Bool)

(declare-fun e!831062 () Bool)

(assert (=> b!1481839 (=> (not res!1007219) (not e!831062))))

(declare-datatypes ((array!99374 0))(
  ( (array!99375 (arr!47960 (Array (_ BitVec 32) (_ BitVec 64))) (size!48511 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99374)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12223 0))(
  ( (MissingZero!12223 (index!51283 (_ BitVec 32))) (Found!12223 (index!51284 (_ BitVec 32))) (Intermediate!12223 (undefined!13035 Bool) (index!51285 (_ BitVec 32)) (x!132869 (_ BitVec 32))) (Undefined!12223) (MissingVacant!12223 (index!51286 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99374 (_ BitVec 32)) SeekEntryResult!12223)

(assert (=> b!1481839 (= res!1007219 (= (seekEntryOrOpen!0 (select (arr!47960 a!2862) j!93) a!2862 mask!2687) (Found!12223 j!93)))))

(declare-fun b!1481840 () Bool)

(declare-fun e!831061 () Bool)

(declare-fun e!831060 () Bool)

(assert (=> b!1481840 (= e!831061 e!831060)))

(declare-fun res!1007222 () Bool)

(assert (=> b!1481840 (=> (not res!1007222) (not e!831060))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481840 (= res!1007222 (= (select (store (arr!47960 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646858 () array!99374)

(assert (=> b!1481840 (= lt!646858 (array!99375 (store (arr!47960 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48511 a!2862)))))

(declare-fun b!1481841 () Bool)

(declare-fun res!1007218 () Bool)

(declare-fun e!831059 () Bool)

(assert (=> b!1481841 (=> (not res!1007218) (not e!831059))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481841 (= res!1007218 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481842 () Bool)

(declare-fun res!1007226 () Bool)

(assert (=> b!1481842 (=> (not res!1007226) (not e!831061))))

(declare-datatypes ((List!34641 0))(
  ( (Nil!34638) (Cons!34637 (h!36008 (_ BitVec 64)) (t!49342 List!34641)) )
))
(declare-fun arrayNoDuplicates!0 (array!99374 (_ BitVec 32) List!34641) Bool)

(assert (=> b!1481842 (= res!1007226 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34638))))

(declare-fun b!1481843 () Bool)

(assert (=> b!1481843 (= e!831059 (not true))))

(assert (=> b!1481843 e!831062))

(declare-fun res!1007220 () Bool)

(assert (=> b!1481843 (=> (not res!1007220) (not e!831062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99374 (_ BitVec 32)) Bool)

(assert (=> b!1481843 (= res!1007220 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49734 0))(
  ( (Unit!49735) )
))
(declare-fun lt!646857 () Unit!49734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49734)

(assert (=> b!1481843 (= lt!646857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!831057 () Bool)

(declare-fun lt!646861 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1481844 () Bool)

(declare-fun lt!646860 () SeekEntryResult!12223)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99374 (_ BitVec 32)) SeekEntryResult!12223)

(assert (=> b!1481844 (= e!831057 (= lt!646860 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646861 lt!646858 mask!2687)))))

(declare-fun b!1481845 () Bool)

(declare-fun res!1007221 () Bool)

(assert (=> b!1481845 (=> (not res!1007221) (not e!831061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481845 (= res!1007221 (validKeyInArray!0 (select (arr!47960 a!2862) j!93)))))

(declare-fun b!1481846 () Bool)

(declare-fun res!1007228 () Bool)

(assert (=> b!1481846 (=> (not res!1007228) (not e!831061))))

(assert (=> b!1481846 (= res!1007228 (and (= (size!48511 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48511 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48511 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481838 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99374 (_ BitVec 32)) SeekEntryResult!12223)

(assert (=> b!1481838 (= e!831057 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646861 lt!646858 mask!2687) (seekEntryOrOpen!0 lt!646861 lt!646858 mask!2687)))))

(declare-fun res!1007217 () Bool)

(assert (=> start!126438 (=> (not res!1007217) (not e!831061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126438 (= res!1007217 (validMask!0 mask!2687))))

(assert (=> start!126438 e!831061))

(assert (=> start!126438 true))

(declare-fun array_inv!36905 (array!99374) Bool)

(assert (=> start!126438 (array_inv!36905 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1481847 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481847 (= e!831062 (and (or (= (select (arr!47960 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47960 a!2862) intermediateBeforeIndex!19) (select (arr!47960 a!2862) j!93))) (or (and (= (select (arr!47960 a!2862) index!646) (select (store (arr!47960 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47960 a!2862) index!646) (select (arr!47960 a!2862) j!93))) (= (select (arr!47960 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47960 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481848 () Bool)

(declare-fun res!1007215 () Bool)

(assert (=> b!1481848 (=> (not res!1007215) (not e!831061))))

(assert (=> b!1481848 (= res!1007215 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48511 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48511 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48511 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481849 () Bool)

(declare-fun e!831058 () Bool)

(assert (=> b!1481849 (= e!831058 e!831059)))

(declare-fun res!1007223 () Bool)

(assert (=> b!1481849 (=> (not res!1007223) (not e!831059))))

(assert (=> b!1481849 (= res!1007223 (= lt!646860 (Intermediate!12223 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481849 (= lt!646860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646861 mask!2687) lt!646861 lt!646858 mask!2687))))

(assert (=> b!1481849 (= lt!646861 (select (store (arr!47960 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481850 () Bool)

(declare-fun res!1007216 () Bool)

(assert (=> b!1481850 (=> (not res!1007216) (not e!831059))))

(assert (=> b!1481850 (= res!1007216 e!831057)))

(declare-fun c!136835 () Bool)

(assert (=> b!1481850 (= c!136835 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481851 () Bool)

(declare-fun res!1007225 () Bool)

(assert (=> b!1481851 (=> (not res!1007225) (not e!831061))))

(assert (=> b!1481851 (= res!1007225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481852 () Bool)

(assert (=> b!1481852 (= e!831060 e!831058)))

(declare-fun res!1007227 () Bool)

(assert (=> b!1481852 (=> (not res!1007227) (not e!831058))))

(declare-fun lt!646859 () SeekEntryResult!12223)

(assert (=> b!1481852 (= res!1007227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47960 a!2862) j!93) mask!2687) (select (arr!47960 a!2862) j!93) a!2862 mask!2687) lt!646859))))

(assert (=> b!1481852 (= lt!646859 (Intermediate!12223 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481853 () Bool)

(declare-fun res!1007224 () Bool)

(assert (=> b!1481853 (=> (not res!1007224) (not e!831058))))

(assert (=> b!1481853 (= res!1007224 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47960 a!2862) j!93) a!2862 mask!2687) lt!646859))))

(declare-fun b!1481854 () Bool)

(declare-fun res!1007229 () Bool)

(assert (=> b!1481854 (=> (not res!1007229) (not e!831061))))

(assert (=> b!1481854 (= res!1007229 (validKeyInArray!0 (select (arr!47960 a!2862) i!1006)))))

(assert (= (and start!126438 res!1007217) b!1481846))

(assert (= (and b!1481846 res!1007228) b!1481854))

(assert (= (and b!1481854 res!1007229) b!1481845))

(assert (= (and b!1481845 res!1007221) b!1481851))

(assert (= (and b!1481851 res!1007225) b!1481842))

(assert (= (and b!1481842 res!1007226) b!1481848))

(assert (= (and b!1481848 res!1007215) b!1481840))

(assert (= (and b!1481840 res!1007222) b!1481852))

(assert (= (and b!1481852 res!1007227) b!1481853))

(assert (= (and b!1481853 res!1007224) b!1481849))

(assert (= (and b!1481849 res!1007223) b!1481850))

(assert (= (and b!1481850 c!136835) b!1481844))

(assert (= (and b!1481850 (not c!136835)) b!1481838))

(assert (= (and b!1481850 res!1007216) b!1481841))

(assert (= (and b!1481841 res!1007218) b!1481843))

(assert (= (and b!1481843 res!1007220) b!1481839))

(assert (= (and b!1481839 res!1007219) b!1481847))

(declare-fun m!1367627 () Bool)

(assert (=> b!1481852 m!1367627))

(assert (=> b!1481852 m!1367627))

(declare-fun m!1367629 () Bool)

(assert (=> b!1481852 m!1367629))

(assert (=> b!1481852 m!1367629))

(assert (=> b!1481852 m!1367627))

(declare-fun m!1367631 () Bool)

(assert (=> b!1481852 m!1367631))

(declare-fun m!1367633 () Bool)

(assert (=> b!1481847 m!1367633))

(declare-fun m!1367635 () Bool)

(assert (=> b!1481847 m!1367635))

(declare-fun m!1367637 () Bool)

(assert (=> b!1481847 m!1367637))

(declare-fun m!1367639 () Bool)

(assert (=> b!1481847 m!1367639))

(assert (=> b!1481847 m!1367627))

(declare-fun m!1367641 () Bool)

(assert (=> b!1481849 m!1367641))

(assert (=> b!1481849 m!1367641))

(declare-fun m!1367643 () Bool)

(assert (=> b!1481849 m!1367643))

(assert (=> b!1481849 m!1367633))

(declare-fun m!1367645 () Bool)

(assert (=> b!1481849 m!1367645))

(assert (=> b!1481840 m!1367633))

(declare-fun m!1367647 () Bool)

(assert (=> b!1481840 m!1367647))

(declare-fun m!1367649 () Bool)

(assert (=> b!1481854 m!1367649))

(assert (=> b!1481854 m!1367649))

(declare-fun m!1367651 () Bool)

(assert (=> b!1481854 m!1367651))

(declare-fun m!1367653 () Bool)

(assert (=> b!1481851 m!1367653))

(declare-fun m!1367655 () Bool)

(assert (=> b!1481843 m!1367655))

(declare-fun m!1367657 () Bool)

(assert (=> b!1481843 m!1367657))

(declare-fun m!1367659 () Bool)

(assert (=> b!1481842 m!1367659))

(declare-fun m!1367661 () Bool)

(assert (=> b!1481844 m!1367661))

(declare-fun m!1367663 () Bool)

(assert (=> start!126438 m!1367663))

(declare-fun m!1367665 () Bool)

(assert (=> start!126438 m!1367665))

(assert (=> b!1481845 m!1367627))

(assert (=> b!1481845 m!1367627))

(declare-fun m!1367667 () Bool)

(assert (=> b!1481845 m!1367667))

(assert (=> b!1481853 m!1367627))

(assert (=> b!1481853 m!1367627))

(declare-fun m!1367669 () Bool)

(assert (=> b!1481853 m!1367669))

(assert (=> b!1481839 m!1367627))

(assert (=> b!1481839 m!1367627))

(declare-fun m!1367671 () Bool)

(assert (=> b!1481839 m!1367671))

(declare-fun m!1367673 () Bool)

(assert (=> b!1481838 m!1367673))

(declare-fun m!1367675 () Bool)

(assert (=> b!1481838 m!1367675))

(check-sat (not b!1481849) (not b!1481843) (not b!1481853) (not b!1481854) (not b!1481844) (not b!1481851) (not b!1481852) (not b!1481842) (not b!1481838) (not start!126438) (not b!1481845) (not b!1481839))
(check-sat)
