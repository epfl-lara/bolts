; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45166 () Bool)

(assert start!45166)

(declare-fun b!495202 () Bool)

(declare-fun res!297746 () Bool)

(declare-fun e!290543 () Bool)

(assert (=> b!495202 (=> (not res!297746) (not e!290543))))

(declare-datatypes ((array!32014 0))(
  ( (array!32015 (arr!15387 (Array (_ BitVec 32) (_ BitVec 64))) (size!15751 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32014)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32014 (_ BitVec 32)) Bool)

(assert (=> b!495202 (= res!297746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495203 () Bool)

(declare-fun res!297744 () Bool)

(assert (=> b!495203 (=> (not res!297744) (not e!290543))))

(declare-datatypes ((List!9598 0))(
  ( (Nil!9595) (Cons!9594 (h!10465 (_ BitVec 64)) (t!15834 List!9598)) )
))
(declare-fun arrayNoDuplicates!0 (array!32014 (_ BitVec 32) List!9598) Bool)

(assert (=> b!495203 (= res!297744 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9595))))

(declare-fun b!495204 () Bool)

(declare-fun res!297747 () Bool)

(declare-fun e!290545 () Bool)

(assert (=> b!495204 (=> res!297747 e!290545)))

(declare-datatypes ((SeekEntryResult!3861 0))(
  ( (MissingZero!3861 (index!17623 (_ BitVec 32))) (Found!3861 (index!17624 (_ BitVec 32))) (Intermediate!3861 (undefined!4673 Bool) (index!17625 (_ BitVec 32)) (x!46724 (_ BitVec 32))) (Undefined!3861) (MissingVacant!3861 (index!17626 (_ BitVec 32))) )
))
(declare-fun lt!224233 () SeekEntryResult!3861)

(assert (=> b!495204 (= res!297747 (or (undefined!4673 lt!224233) (not (is-Intermediate!3861 lt!224233))))))

(declare-fun b!495205 () Bool)

(declare-fun res!297743 () Bool)

(declare-fun e!290542 () Bool)

(assert (=> b!495205 (=> (not res!297743) (not e!290542))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495205 (= res!297743 (and (= (size!15751 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15751 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15751 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495206 () Bool)

(declare-fun res!297749 () Bool)

(assert (=> b!495206 (=> (not res!297749) (not e!290542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495206 (= res!297749 (validKeyInArray!0 (select (arr!15387 a!3235) j!176)))))

(declare-fun b!495207 () Bool)

(assert (=> b!495207 (= e!290543 (not e!290545))))

(declare-fun res!297739 () Bool)

(assert (=> b!495207 (=> res!297739 e!290545)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!224230 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32014 (_ BitVec 32)) SeekEntryResult!3861)

(assert (=> b!495207 (= res!297739 (= lt!224233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224230 (select (store (arr!15387 a!3235) i!1204 k!2280) j!176) (array!32015 (store (arr!15387 a!3235) i!1204 k!2280) (size!15751 a!3235)) mask!3524)))))

(declare-fun lt!224232 () (_ BitVec 32))

(assert (=> b!495207 (= lt!224233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224232 (select (arr!15387 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495207 (= lt!224230 (toIndex!0 (select (store (arr!15387 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495207 (= lt!224232 (toIndex!0 (select (arr!15387 a!3235) j!176) mask!3524))))

(declare-fun e!290541 () Bool)

(assert (=> b!495207 e!290541))

(declare-fun res!297748 () Bool)

(assert (=> b!495207 (=> (not res!297748) (not e!290541))))

(assert (=> b!495207 (= res!297748 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14660 0))(
  ( (Unit!14661) )
))
(declare-fun lt!224231 () Unit!14660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32014 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14660)

(assert (=> b!495207 (= lt!224231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495208 () Bool)

(assert (=> b!495208 (= e!290542 e!290543)))

(declare-fun res!297741 () Bool)

(assert (=> b!495208 (=> (not res!297741) (not e!290543))))

(declare-fun lt!224234 () SeekEntryResult!3861)

(assert (=> b!495208 (= res!297741 (or (= lt!224234 (MissingZero!3861 i!1204)) (= lt!224234 (MissingVacant!3861 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32014 (_ BitVec 32)) SeekEntryResult!3861)

(assert (=> b!495208 (= lt!224234 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495209 () Bool)

(declare-fun res!297745 () Bool)

(assert (=> b!495209 (=> (not res!297745) (not e!290542))))

(assert (=> b!495209 (= res!297745 (validKeyInArray!0 k!2280))))

(declare-fun res!297740 () Bool)

(assert (=> start!45166 (=> (not res!297740) (not e!290542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45166 (= res!297740 (validMask!0 mask!3524))))

(assert (=> start!45166 e!290542))

(assert (=> start!45166 true))

(declare-fun array_inv!11161 (array!32014) Bool)

(assert (=> start!45166 (array_inv!11161 a!3235)))

(declare-fun b!495210 () Bool)

(declare-fun res!297742 () Bool)

(assert (=> b!495210 (=> (not res!297742) (not e!290542))))

(declare-fun arrayContainsKey!0 (array!32014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495210 (= res!297742 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495211 () Bool)

(assert (=> b!495211 (= e!290545 true)))

(assert (=> b!495211 (and (bvslt (x!46724 lt!224233) #b01111111111111111111111111111110) (or (= (select (arr!15387 a!3235) (index!17625 lt!224233)) (select (arr!15387 a!3235) j!176)) (= (select (arr!15387 a!3235) (index!17625 lt!224233)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15387 a!3235) (index!17625 lt!224233)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495212 () Bool)

(assert (=> b!495212 (= e!290541 (= (seekEntryOrOpen!0 (select (arr!15387 a!3235) j!176) a!3235 mask!3524) (Found!3861 j!176)))))

(assert (= (and start!45166 res!297740) b!495205))

(assert (= (and b!495205 res!297743) b!495206))

(assert (= (and b!495206 res!297749) b!495209))

(assert (= (and b!495209 res!297745) b!495210))

(assert (= (and b!495210 res!297742) b!495208))

(assert (= (and b!495208 res!297741) b!495202))

(assert (= (and b!495202 res!297746) b!495203))

(assert (= (and b!495203 res!297744) b!495207))

(assert (= (and b!495207 res!297748) b!495212))

(assert (= (and b!495207 (not res!297739)) b!495204))

(assert (= (and b!495204 (not res!297747)) b!495211))

(declare-fun m!476317 () Bool)

(assert (=> b!495211 m!476317))

(declare-fun m!476319 () Bool)

(assert (=> b!495211 m!476319))

(declare-fun m!476321 () Bool)

(assert (=> b!495203 m!476321))

(declare-fun m!476323 () Bool)

(assert (=> b!495202 m!476323))

(declare-fun m!476325 () Bool)

(assert (=> b!495210 m!476325))

(declare-fun m!476327 () Bool)

(assert (=> b!495208 m!476327))

(declare-fun m!476329 () Bool)

(assert (=> b!495209 m!476329))

(declare-fun m!476331 () Bool)

(assert (=> b!495207 m!476331))

(declare-fun m!476333 () Bool)

(assert (=> b!495207 m!476333))

(declare-fun m!476335 () Bool)

(assert (=> b!495207 m!476335))

(assert (=> b!495207 m!476319))

(declare-fun m!476337 () Bool)

(assert (=> b!495207 m!476337))

(assert (=> b!495207 m!476319))

(assert (=> b!495207 m!476335))

(declare-fun m!476339 () Bool)

(assert (=> b!495207 m!476339))

(assert (=> b!495207 m!476335))

(declare-fun m!476341 () Bool)

(assert (=> b!495207 m!476341))

(declare-fun m!476343 () Bool)

(assert (=> b!495207 m!476343))

(assert (=> b!495207 m!476319))

(declare-fun m!476345 () Bool)

(assert (=> b!495207 m!476345))

(assert (=> b!495212 m!476319))

(assert (=> b!495212 m!476319))

(declare-fun m!476347 () Bool)

(assert (=> b!495212 m!476347))

(declare-fun m!476349 () Bool)

(assert (=> start!45166 m!476349))

(declare-fun m!476351 () Bool)

(assert (=> start!45166 m!476351))

(assert (=> b!495206 m!476319))

(assert (=> b!495206 m!476319))

(declare-fun m!476353 () Bool)

(assert (=> b!495206 m!476353))

(push 1)

