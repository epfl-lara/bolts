; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44626 () Bool)

(assert start!44626)

(declare-fun e!287741 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31645 0))(
  ( (array!31646 (arr!15207 (Array (_ BitVec 32) (_ BitVec 64))) (size!15571 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31645)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!489213 () Bool)

(declare-datatypes ((SeekEntryResult!3681 0))(
  ( (MissingZero!3681 (index!16903 (_ BitVec 32))) (Found!3681 (index!16904 (_ BitVec 32))) (Intermediate!3681 (undefined!4493 Bool) (index!16905 (_ BitVec 32)) (x!46046 (_ BitVec 32))) (Undefined!3681) (MissingVacant!3681 (index!16906 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31645 (_ BitVec 32)) SeekEntryResult!3681)

(assert (=> b!489213 (= e!287741 (= (seekEntryOrOpen!0 (select (arr!15207 a!3235) j!176) a!3235 mask!3524) (Found!3681 j!176)))))

(declare-fun b!489214 () Bool)

(declare-fun res!292307 () Bool)

(declare-fun e!287742 () Bool)

(assert (=> b!489214 (=> (not res!292307) (not e!287742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489214 (= res!292307 (validKeyInArray!0 (select (arr!15207 a!3235) j!176)))))

(declare-fun b!489215 () Bool)

(declare-fun res!292304 () Bool)

(assert (=> b!489215 (=> (not res!292304) (not e!287742))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489215 (= res!292304 (and (= (size!15571 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15571 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15571 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292305 () Bool)

(assert (=> start!44626 (=> (not res!292305) (not e!287742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44626 (= res!292305 (validMask!0 mask!3524))))

(assert (=> start!44626 e!287742))

(assert (=> start!44626 true))

(declare-fun array_inv!10981 (array!31645) Bool)

(assert (=> start!44626 (array_inv!10981 a!3235)))

(declare-fun b!489216 () Bool)

(declare-fun e!287740 () Bool)

(assert (=> b!489216 (= e!287740 (not true))))

(declare-fun lt!220770 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!220767 () SeekEntryResult!3681)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31645 (_ BitVec 32)) SeekEntryResult!3681)

(assert (=> b!489216 (= lt!220767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220770 (select (store (arr!15207 a!3235) i!1204 k!2280) j!176) (array!31646 (store (arr!15207 a!3235) i!1204 k!2280) (size!15571 a!3235)) mask!3524))))

(declare-fun lt!220769 () (_ BitVec 32))

(declare-fun lt!220771 () SeekEntryResult!3681)

(assert (=> b!489216 (= lt!220771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220769 (select (arr!15207 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489216 (= lt!220770 (toIndex!0 (select (store (arr!15207 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489216 (= lt!220769 (toIndex!0 (select (arr!15207 a!3235) j!176) mask!3524))))

(assert (=> b!489216 e!287741))

(declare-fun res!292303 () Bool)

(assert (=> b!489216 (=> (not res!292303) (not e!287741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31645 (_ BitVec 32)) Bool)

(assert (=> b!489216 (= res!292303 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14300 0))(
  ( (Unit!14301) )
))
(declare-fun lt!220772 () Unit!14300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14300)

(assert (=> b!489216 (= lt!220772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489217 () Bool)

(assert (=> b!489217 (= e!287742 e!287740)))

(declare-fun res!292302 () Bool)

(assert (=> b!489217 (=> (not res!292302) (not e!287740))))

(declare-fun lt!220768 () SeekEntryResult!3681)

(assert (=> b!489217 (= res!292302 (or (= lt!220768 (MissingZero!3681 i!1204)) (= lt!220768 (MissingVacant!3681 i!1204))))))

(assert (=> b!489217 (= lt!220768 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489218 () Bool)

(declare-fun res!292306 () Bool)

(assert (=> b!489218 (=> (not res!292306) (not e!287740))))

(declare-datatypes ((List!9418 0))(
  ( (Nil!9415) (Cons!9414 (h!10276 (_ BitVec 64)) (t!15654 List!9418)) )
))
(declare-fun arrayNoDuplicates!0 (array!31645 (_ BitVec 32) List!9418) Bool)

(assert (=> b!489218 (= res!292306 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9415))))

(declare-fun b!489219 () Bool)

(declare-fun res!292301 () Bool)

(assert (=> b!489219 (=> (not res!292301) (not e!287740))))

(assert (=> b!489219 (= res!292301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489220 () Bool)

(declare-fun res!292300 () Bool)

(assert (=> b!489220 (=> (not res!292300) (not e!287742))))

(assert (=> b!489220 (= res!292300 (validKeyInArray!0 k!2280))))

(declare-fun b!489221 () Bool)

(declare-fun res!292299 () Bool)

(assert (=> b!489221 (=> (not res!292299) (not e!287742))))

(declare-fun arrayContainsKey!0 (array!31645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489221 (= res!292299 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44626 res!292305) b!489215))

(assert (= (and b!489215 res!292304) b!489214))

(assert (= (and b!489214 res!292307) b!489220))

(assert (= (and b!489220 res!292300) b!489221))

(assert (= (and b!489221 res!292299) b!489217))

(assert (= (and b!489217 res!292302) b!489219))

(assert (= (and b!489219 res!292301) b!489218))

(assert (= (and b!489218 res!292306) b!489216))

(assert (= (and b!489216 res!292303) b!489213))

(declare-fun m!469015 () Bool)

(assert (=> b!489217 m!469015))

(declare-fun m!469017 () Bool)

(assert (=> b!489214 m!469017))

(assert (=> b!489214 m!469017))

(declare-fun m!469019 () Bool)

(assert (=> b!489214 m!469019))

(assert (=> b!489213 m!469017))

(assert (=> b!489213 m!469017))

(declare-fun m!469021 () Bool)

(assert (=> b!489213 m!469021))

(declare-fun m!469023 () Bool)

(assert (=> b!489221 m!469023))

(assert (=> b!489216 m!469017))

(declare-fun m!469025 () Bool)

(assert (=> b!489216 m!469025))

(declare-fun m!469027 () Bool)

(assert (=> b!489216 m!469027))

(declare-fun m!469029 () Bool)

(assert (=> b!489216 m!469029))

(declare-fun m!469031 () Bool)

(assert (=> b!489216 m!469031))

(assert (=> b!489216 m!469017))

(declare-fun m!469033 () Bool)

(assert (=> b!489216 m!469033))

(assert (=> b!489216 m!469017))

(declare-fun m!469035 () Bool)

(assert (=> b!489216 m!469035))

(assert (=> b!489216 m!469031))

(declare-fun m!469037 () Bool)

(assert (=> b!489216 m!469037))

(assert (=> b!489216 m!469031))

(declare-fun m!469039 () Bool)

(assert (=> b!489216 m!469039))

(declare-fun m!469041 () Bool)

(assert (=> b!489219 m!469041))

(declare-fun m!469043 () Bool)

(assert (=> b!489218 m!469043))

(declare-fun m!469045 () Bool)

(assert (=> start!44626 m!469045))

(declare-fun m!469047 () Bool)

(assert (=> start!44626 m!469047))

(declare-fun m!469049 () Bool)

(assert (=> b!489220 m!469049))

(push 1)

