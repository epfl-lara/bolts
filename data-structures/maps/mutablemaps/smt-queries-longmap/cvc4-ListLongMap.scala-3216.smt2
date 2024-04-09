; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45056 () Bool)

(assert start!45056)

(declare-fun b!494141 () Bool)

(declare-fun res!296864 () Bool)

(declare-fun e!290037 () Bool)

(assert (=> b!494141 (=> (not res!296864) (not e!290037))))

(declare-datatypes ((array!31961 0))(
  ( (array!31962 (arr!15362 (Array (_ BitVec 32) (_ BitVec 64))) (size!15726 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31961)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494141 (= res!296864 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494142 () Bool)

(declare-fun e!290036 () Bool)

(assert (=> b!494142 (= e!290036 true)))

(declare-datatypes ((SeekEntryResult!3836 0))(
  ( (MissingZero!3836 (index!17523 (_ BitVec 32))) (Found!3836 (index!17524 (_ BitVec 32))) (Intermediate!3836 (undefined!4648 Bool) (index!17525 (_ BitVec 32)) (x!46621 (_ BitVec 32))) (Undefined!3836) (MissingVacant!3836 (index!17526 (_ BitVec 32))) )
))
(declare-fun lt!223671 () SeekEntryResult!3836)

(assert (=> b!494142 (= lt!223671 Undefined!3836)))

(declare-fun b!494143 () Bool)

(declare-fun res!296865 () Bool)

(assert (=> b!494143 (=> (not res!296865) (not e!290037))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494143 (= res!296865 (validKeyInArray!0 (select (arr!15362 a!3235) j!176)))))

(declare-fun b!494144 () Bool)

(declare-fun res!296866 () Bool)

(assert (=> b!494144 (=> (not res!296866) (not e!290037))))

(assert (=> b!494144 (= res!296866 (validKeyInArray!0 k!2280))))

(declare-fun res!296867 () Bool)

(assert (=> start!45056 (=> (not res!296867) (not e!290037))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45056 (= res!296867 (validMask!0 mask!3524))))

(assert (=> start!45056 e!290037))

(assert (=> start!45056 true))

(declare-fun array_inv!11136 (array!31961) Bool)

(assert (=> start!45056 (array_inv!11136 a!3235)))

(declare-fun b!494145 () Bool)

(declare-fun res!296863 () Bool)

(declare-fun e!290035 () Bool)

(assert (=> b!494145 (=> (not res!296863) (not e!290035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31961 (_ BitVec 32)) Bool)

(assert (=> b!494145 (= res!296863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494146 () Bool)

(assert (=> b!494146 (= e!290037 e!290035)))

(declare-fun res!296868 () Bool)

(assert (=> b!494146 (=> (not res!296868) (not e!290035))))

(declare-fun lt!223674 () SeekEntryResult!3836)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494146 (= res!296868 (or (= lt!223674 (MissingZero!3836 i!1204)) (= lt!223674 (MissingVacant!3836 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31961 (_ BitVec 32)) SeekEntryResult!3836)

(assert (=> b!494146 (= lt!223674 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494147 () Bool)

(assert (=> b!494147 (= e!290035 (not e!290036))))

(declare-fun res!296862 () Bool)

(assert (=> b!494147 (=> res!296862 e!290036)))

(declare-fun lt!223673 () SeekEntryResult!3836)

(declare-fun lt!223676 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31961 (_ BitVec 32)) SeekEntryResult!3836)

(assert (=> b!494147 (= res!296862 (= lt!223673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223676 (select (store (arr!15362 a!3235) i!1204 k!2280) j!176) (array!31962 (store (arr!15362 a!3235) i!1204 k!2280) (size!15726 a!3235)) mask!3524)))))

(declare-fun lt!223672 () (_ BitVec 32))

(assert (=> b!494147 (= lt!223673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223672 (select (arr!15362 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494147 (= lt!223676 (toIndex!0 (select (store (arr!15362 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494147 (= lt!223672 (toIndex!0 (select (arr!15362 a!3235) j!176) mask!3524))))

(assert (=> b!494147 (= lt!223671 (Found!3836 j!176))))

(assert (=> b!494147 (= lt!223671 (seekEntryOrOpen!0 (select (arr!15362 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494147 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14610 0))(
  ( (Unit!14611) )
))
(declare-fun lt!223675 () Unit!14610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14610)

(assert (=> b!494147 (= lt!223675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494148 () Bool)

(declare-fun res!296869 () Bool)

(assert (=> b!494148 (=> (not res!296869) (not e!290037))))

(assert (=> b!494148 (= res!296869 (and (= (size!15726 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15726 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15726 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494149 () Bool)

(declare-fun res!296861 () Bool)

(assert (=> b!494149 (=> res!296861 e!290036)))

(assert (=> b!494149 (= res!296861 (or (not (is-Intermediate!3836 lt!223673)) (not (undefined!4648 lt!223673))))))

(declare-fun b!494150 () Bool)

(declare-fun res!296870 () Bool)

(assert (=> b!494150 (=> (not res!296870) (not e!290035))))

(declare-datatypes ((List!9573 0))(
  ( (Nil!9570) (Cons!9569 (h!10437 (_ BitVec 64)) (t!15809 List!9573)) )
))
(declare-fun arrayNoDuplicates!0 (array!31961 (_ BitVec 32) List!9573) Bool)

(assert (=> b!494150 (= res!296870 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9570))))

(assert (= (and start!45056 res!296867) b!494148))

(assert (= (and b!494148 res!296869) b!494143))

(assert (= (and b!494143 res!296865) b!494144))

(assert (= (and b!494144 res!296866) b!494141))

(assert (= (and b!494141 res!296864) b!494146))

(assert (= (and b!494146 res!296868) b!494145))

(assert (= (and b!494145 res!296863) b!494150))

(assert (= (and b!494150 res!296870) b!494147))

(assert (= (and b!494147 (not res!296862)) b!494149))

(assert (= (and b!494149 (not res!296861)) b!494142))

(declare-fun m!475201 () Bool)

(assert (=> b!494143 m!475201))

(assert (=> b!494143 m!475201))

(declare-fun m!475203 () Bool)

(assert (=> b!494143 m!475203))

(declare-fun m!475205 () Bool)

(assert (=> b!494145 m!475205))

(declare-fun m!475207 () Bool)

(assert (=> start!45056 m!475207))

(declare-fun m!475209 () Bool)

(assert (=> start!45056 m!475209))

(declare-fun m!475211 () Bool)

(assert (=> b!494141 m!475211))

(declare-fun m!475213 () Bool)

(assert (=> b!494147 m!475213))

(declare-fun m!475215 () Bool)

(assert (=> b!494147 m!475215))

(declare-fun m!475217 () Bool)

(assert (=> b!494147 m!475217))

(assert (=> b!494147 m!475201))

(declare-fun m!475219 () Bool)

(assert (=> b!494147 m!475219))

(assert (=> b!494147 m!475201))

(declare-fun m!475221 () Bool)

(assert (=> b!494147 m!475221))

(assert (=> b!494147 m!475201))

(assert (=> b!494147 m!475201))

(declare-fun m!475223 () Bool)

(assert (=> b!494147 m!475223))

(assert (=> b!494147 m!475217))

(declare-fun m!475225 () Bool)

(assert (=> b!494147 m!475225))

(assert (=> b!494147 m!475217))

(declare-fun m!475227 () Bool)

(assert (=> b!494147 m!475227))

(declare-fun m!475229 () Bool)

(assert (=> b!494147 m!475229))

(declare-fun m!475231 () Bool)

(assert (=> b!494144 m!475231))

(declare-fun m!475233 () Bool)

(assert (=> b!494150 m!475233))

(declare-fun m!475235 () Bool)

(assert (=> b!494146 m!475235))

(push 1)

