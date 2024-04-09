; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48158 () Bool)

(assert start!48158)

(declare-fun res!326063 () Bool)

(declare-fun e!308933 () Bool)

(assert (=> start!48158 (=> (not res!326063) (not e!308933))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48158 (= res!326063 (validMask!0 mask!3524))))

(assert (=> start!48158 e!308933))

(assert (=> start!48158 true))

(declare-datatypes ((array!33554 0))(
  ( (array!33555 (arr!16121 (Array (_ BitVec 32) (_ BitVec 64))) (size!16485 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33554)

(declare-fun array_inv!11895 (array!33554) Bool)

(assert (=> start!48158 (array_inv!11895 a!3235)))

(declare-fun b!530206 () Bool)

(declare-fun e!308935 () Bool)

(declare-fun e!308938 () Bool)

(assert (=> b!530206 (= e!308935 e!308938)))

(declare-fun res!326070 () Bool)

(assert (=> b!530206 (=> res!326070 e!308938)))

(declare-fun lt!244711 () Bool)

(declare-datatypes ((SeekEntryResult!4595 0))(
  ( (MissingZero!4595 (index!20604 (_ BitVec 32))) (Found!4595 (index!20605 (_ BitVec 32))) (Intermediate!4595 (undefined!5407 Bool) (index!20606 (_ BitVec 32)) (x!49596 (_ BitVec 32))) (Undefined!4595) (MissingVacant!4595 (index!20607 (_ BitVec 32))) )
))
(declare-fun lt!244714 () SeekEntryResult!4595)

(assert (=> b!530206 (= res!326070 (or (and (not lt!244711) (undefined!5407 lt!244714)) (and (not lt!244711) (not (undefined!5407 lt!244714)))))))

(assert (=> b!530206 (= lt!244711 (not (is-Intermediate!4595 lt!244714)))))

(declare-fun b!530207 () Bool)

(declare-fun e!308936 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33554 (_ BitVec 32)) SeekEntryResult!4595)

(assert (=> b!530207 (= e!308936 (= (seekEntryOrOpen!0 (select (arr!16121 a!3235) j!176) a!3235 mask!3524) (Found!4595 j!176)))))

(declare-fun b!530208 () Bool)

(declare-fun res!326066 () Bool)

(declare-fun e!308934 () Bool)

(assert (=> b!530208 (=> (not res!326066) (not e!308934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33554 (_ BitVec 32)) Bool)

(assert (=> b!530208 (= res!326066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530209 () Bool)

(declare-fun res!326069 () Bool)

(assert (=> b!530209 (=> (not res!326069) (not e!308934))))

(declare-datatypes ((List!10332 0))(
  ( (Nil!10329) (Cons!10328 (h!11268 (_ BitVec 64)) (t!16568 List!10332)) )
))
(declare-fun arrayNoDuplicates!0 (array!33554 (_ BitVec 32) List!10332) Bool)

(assert (=> b!530209 (= res!326069 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10329))))

(declare-fun b!530210 () Bool)

(assert (=> b!530210 (= e!308933 e!308934)))

(declare-fun res!326072 () Bool)

(assert (=> b!530210 (=> (not res!326072) (not e!308934))))

(declare-fun lt!244712 () SeekEntryResult!4595)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!530210 (= res!326072 (or (= lt!244712 (MissingZero!4595 i!1204)) (= lt!244712 (MissingVacant!4595 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!530210 (= lt!244712 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!530211 () Bool)

(assert (=> b!530211 (= e!308934 (not e!308935))))

(declare-fun res!326067 () Bool)

(assert (=> b!530211 (=> res!326067 e!308935)))

(declare-fun lt!244713 () (_ BitVec 32))

(declare-fun lt!244715 () (_ BitVec 64))

(declare-fun lt!244718 () array!33554)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33554 (_ BitVec 32)) SeekEntryResult!4595)

(assert (=> b!530211 (= res!326067 (= lt!244714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244713 lt!244715 lt!244718 mask!3524)))))

(declare-fun lt!244717 () (_ BitVec 32))

(assert (=> b!530211 (= lt!244714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244717 (select (arr!16121 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530211 (= lt!244713 (toIndex!0 lt!244715 mask!3524))))

(assert (=> b!530211 (= lt!244715 (select (store (arr!16121 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!530211 (= lt!244717 (toIndex!0 (select (arr!16121 a!3235) j!176) mask!3524))))

(assert (=> b!530211 (= lt!244718 (array!33555 (store (arr!16121 a!3235) i!1204 k!2280) (size!16485 a!3235)))))

(assert (=> b!530211 e!308936))

(declare-fun res!326065 () Bool)

(assert (=> b!530211 (=> (not res!326065) (not e!308936))))

(assert (=> b!530211 (= res!326065 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16794 0))(
  ( (Unit!16795) )
))
(declare-fun lt!244716 () Unit!16794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16794)

(assert (=> b!530211 (= lt!244716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!530212 () Bool)

(assert (=> b!530212 (= e!308938 true)))

(declare-fun lt!244710 () SeekEntryResult!4595)

(assert (=> b!530212 (= lt!244710 (seekEntryOrOpen!0 lt!244715 lt!244718 mask!3524))))

(assert (=> b!530212 false))

(declare-fun b!530213 () Bool)

(declare-fun res!326071 () Bool)

(assert (=> b!530213 (=> (not res!326071) (not e!308933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530213 (= res!326071 (validKeyInArray!0 (select (arr!16121 a!3235) j!176)))))

(declare-fun b!530214 () Bool)

(declare-fun res!326068 () Bool)

(assert (=> b!530214 (=> (not res!326068) (not e!308933))))

(assert (=> b!530214 (= res!326068 (validKeyInArray!0 k!2280))))

(declare-fun b!530215 () Bool)

(declare-fun res!326062 () Bool)

(assert (=> b!530215 (=> (not res!326062) (not e!308933))))

(assert (=> b!530215 (= res!326062 (and (= (size!16485 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16485 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16485 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530216 () Bool)

(declare-fun res!326064 () Bool)

(assert (=> b!530216 (=> (not res!326064) (not e!308933))))

(declare-fun arrayContainsKey!0 (array!33554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530216 (= res!326064 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!48158 res!326063) b!530215))

(assert (= (and b!530215 res!326062) b!530213))

(assert (= (and b!530213 res!326071) b!530214))

(assert (= (and b!530214 res!326068) b!530216))

(assert (= (and b!530216 res!326064) b!530210))

(assert (= (and b!530210 res!326072) b!530208))

(assert (= (and b!530208 res!326066) b!530209))

(assert (= (and b!530209 res!326069) b!530211))

(assert (= (and b!530211 res!326065) b!530207))

(assert (= (and b!530211 (not res!326067)) b!530206))

(assert (= (and b!530206 (not res!326070)) b!530212))

(declare-fun m!510821 () Bool)

(assert (=> b!530209 m!510821))

(declare-fun m!510823 () Bool)

(assert (=> b!530214 m!510823))

(declare-fun m!510825 () Bool)

(assert (=> b!530211 m!510825))

(declare-fun m!510827 () Bool)

(assert (=> b!530211 m!510827))

(declare-fun m!510829 () Bool)

(assert (=> b!530211 m!510829))

(declare-fun m!510831 () Bool)

(assert (=> b!530211 m!510831))

(declare-fun m!510833 () Bool)

(assert (=> b!530211 m!510833))

(declare-fun m!510835 () Bool)

(assert (=> b!530211 m!510835))

(assert (=> b!530211 m!510833))

(declare-fun m!510837 () Bool)

(assert (=> b!530211 m!510837))

(assert (=> b!530211 m!510833))

(declare-fun m!510839 () Bool)

(assert (=> b!530211 m!510839))

(declare-fun m!510841 () Bool)

(assert (=> b!530211 m!510841))

(assert (=> b!530213 m!510833))

(assert (=> b!530213 m!510833))

(declare-fun m!510843 () Bool)

(assert (=> b!530213 m!510843))

(declare-fun m!510845 () Bool)

(assert (=> b!530216 m!510845))

(assert (=> b!530207 m!510833))

(assert (=> b!530207 m!510833))

(declare-fun m!510847 () Bool)

(assert (=> b!530207 m!510847))

(declare-fun m!510849 () Bool)

(assert (=> b!530212 m!510849))

(declare-fun m!510851 () Bool)

(assert (=> b!530208 m!510851))

(declare-fun m!510853 () Bool)

(assert (=> start!48158 m!510853))

(declare-fun m!510855 () Bool)

(assert (=> start!48158 m!510855))

(declare-fun m!510857 () Bool)

(assert (=> b!530210 m!510857))

(push 1)

