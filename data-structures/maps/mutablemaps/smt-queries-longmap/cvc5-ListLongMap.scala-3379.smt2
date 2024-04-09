; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46696 () Bool)

(assert start!46696)

(declare-fun b!514987 () Bool)

(declare-fun res!314708 () Bool)

(declare-fun e!300726 () Bool)

(assert (=> b!514987 (=> res!314708 e!300726)))

(declare-datatypes ((SeekEntryResult!4323 0))(
  ( (MissingZero!4323 (index!19480 (_ BitVec 32))) (Found!4323 (index!19481 (_ BitVec 32))) (Intermediate!4323 (undefined!5135 Bool) (index!19482 (_ BitVec 32)) (x!48481 (_ BitVec 32))) (Undefined!4323) (MissingVacant!4323 (index!19483 (_ BitVec 32))) )
))
(declare-fun lt!235809 () SeekEntryResult!4323)

(assert (=> b!514987 (= res!314708 (or (undefined!5135 lt!235809) (not (is-Intermediate!4323 lt!235809))))))

(declare-fun b!514988 () Bool)

(assert (=> b!514988 (= e!300726 true)))

(declare-datatypes ((array!32968 0))(
  ( (array!32969 (arr!15849 (Array (_ BitVec 32) (_ BitVec 64))) (size!16213 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32968)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514988 (and (bvslt (x!48481 lt!235809) #b01111111111111111111111111111110) (or (= (select (arr!15849 a!3235) (index!19482 lt!235809)) (select (arr!15849 a!3235) j!176)) (= (select (arr!15849 a!3235) (index!19482 lt!235809)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15849 a!3235) (index!19482 lt!235809)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!300724 () Bool)

(declare-fun b!514990 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32968 (_ BitVec 32)) SeekEntryResult!4323)

(assert (=> b!514990 (= e!300724 (= (seekEntryOrOpen!0 (select (arr!15849 a!3235) j!176) a!3235 mask!3524) (Found!4323 j!176)))))

(declare-fun b!514991 () Bool)

(declare-fun res!314703 () Bool)

(declare-fun e!300723 () Bool)

(assert (=> b!514991 (=> (not res!314703) (not e!300723))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514991 (= res!314703 (validKeyInArray!0 k!2280))))

(declare-fun b!514992 () Bool)

(declare-fun res!314704 () Bool)

(assert (=> b!514992 (=> (not res!314704) (not e!300723))))

(assert (=> b!514992 (= res!314704 (validKeyInArray!0 (select (arr!15849 a!3235) j!176)))))

(declare-fun b!514993 () Bool)

(declare-fun res!314710 () Bool)

(declare-fun e!300725 () Bool)

(assert (=> b!514993 (=> (not res!314710) (not e!300725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32968 (_ BitVec 32)) Bool)

(assert (=> b!514993 (= res!314710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!314711 () Bool)

(assert (=> start!46696 (=> (not res!314711) (not e!300723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46696 (= res!314711 (validMask!0 mask!3524))))

(assert (=> start!46696 e!300723))

(assert (=> start!46696 true))

(declare-fun array_inv!11623 (array!32968) Bool)

(assert (=> start!46696 (array_inv!11623 a!3235)))

(declare-fun b!514989 () Bool)

(assert (=> b!514989 (= e!300725 (not e!300726))))

(declare-fun res!314702 () Bool)

(assert (=> b!514989 (=> res!314702 e!300726)))

(declare-fun lt!235811 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32968 (_ BitVec 32)) SeekEntryResult!4323)

(assert (=> b!514989 (= res!314702 (= lt!235809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235811 (select (store (arr!15849 a!3235) i!1204 k!2280) j!176) (array!32969 (store (arr!15849 a!3235) i!1204 k!2280) (size!16213 a!3235)) mask!3524)))))

(declare-fun lt!235810 () (_ BitVec 32))

(assert (=> b!514989 (= lt!235809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235810 (select (arr!15849 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514989 (= lt!235811 (toIndex!0 (select (store (arr!15849 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514989 (= lt!235810 (toIndex!0 (select (arr!15849 a!3235) j!176) mask!3524))))

(assert (=> b!514989 e!300724))

(declare-fun res!314705 () Bool)

(assert (=> b!514989 (=> (not res!314705) (not e!300724))))

(assert (=> b!514989 (= res!314705 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15896 0))(
  ( (Unit!15897) )
))
(declare-fun lt!235808 () Unit!15896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32968 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15896)

(assert (=> b!514989 (= lt!235808 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514994 () Bool)

(assert (=> b!514994 (= e!300723 e!300725)))

(declare-fun res!314701 () Bool)

(assert (=> b!514994 (=> (not res!314701) (not e!300725))))

(declare-fun lt!235807 () SeekEntryResult!4323)

(assert (=> b!514994 (= res!314701 (or (= lt!235807 (MissingZero!4323 i!1204)) (= lt!235807 (MissingVacant!4323 i!1204))))))

(assert (=> b!514994 (= lt!235807 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514995 () Bool)

(declare-fun res!314707 () Bool)

(assert (=> b!514995 (=> (not res!314707) (not e!300725))))

(declare-datatypes ((List!10060 0))(
  ( (Nil!10057) (Cons!10056 (h!10954 (_ BitVec 64)) (t!16296 List!10060)) )
))
(declare-fun arrayNoDuplicates!0 (array!32968 (_ BitVec 32) List!10060) Bool)

(assert (=> b!514995 (= res!314707 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10057))))

(declare-fun b!514996 () Bool)

(declare-fun res!314706 () Bool)

(assert (=> b!514996 (=> (not res!314706) (not e!300723))))

(declare-fun arrayContainsKey!0 (array!32968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514996 (= res!314706 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514997 () Bool)

(declare-fun res!314709 () Bool)

(assert (=> b!514997 (=> (not res!314709) (not e!300723))))

(assert (=> b!514997 (= res!314709 (and (= (size!16213 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16213 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16213 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46696 res!314711) b!514997))

(assert (= (and b!514997 res!314709) b!514992))

(assert (= (and b!514992 res!314704) b!514991))

(assert (= (and b!514991 res!314703) b!514996))

(assert (= (and b!514996 res!314706) b!514994))

(assert (= (and b!514994 res!314701) b!514993))

(assert (= (and b!514993 res!314710) b!514995))

(assert (= (and b!514995 res!314707) b!514989))

(assert (= (and b!514989 res!314705) b!514990))

(assert (= (and b!514989 (not res!314702)) b!514987))

(assert (= (and b!514987 (not res!314708)) b!514988))

(declare-fun m!496321 () Bool)

(assert (=> b!514989 m!496321))

(declare-fun m!496323 () Bool)

(assert (=> b!514989 m!496323))

(declare-fun m!496325 () Bool)

(assert (=> b!514989 m!496325))

(declare-fun m!496327 () Bool)

(assert (=> b!514989 m!496327))

(declare-fun m!496329 () Bool)

(assert (=> b!514989 m!496329))

(declare-fun m!496331 () Bool)

(assert (=> b!514989 m!496331))

(assert (=> b!514989 m!496327))

(assert (=> b!514989 m!496321))

(declare-fun m!496333 () Bool)

(assert (=> b!514989 m!496333))

(assert (=> b!514989 m!496321))

(declare-fun m!496335 () Bool)

(assert (=> b!514989 m!496335))

(assert (=> b!514989 m!496327))

(declare-fun m!496337 () Bool)

(assert (=> b!514989 m!496337))

(assert (=> b!514992 m!496321))

(assert (=> b!514992 m!496321))

(declare-fun m!496339 () Bool)

(assert (=> b!514992 m!496339))

(assert (=> b!514990 m!496321))

(assert (=> b!514990 m!496321))

(declare-fun m!496341 () Bool)

(assert (=> b!514990 m!496341))

(declare-fun m!496343 () Bool)

(assert (=> start!46696 m!496343))

(declare-fun m!496345 () Bool)

(assert (=> start!46696 m!496345))

(declare-fun m!496347 () Bool)

(assert (=> b!514988 m!496347))

(assert (=> b!514988 m!496321))

(declare-fun m!496349 () Bool)

(assert (=> b!514993 m!496349))

(declare-fun m!496351 () Bool)

(assert (=> b!514996 m!496351))

(declare-fun m!496353 () Bool)

(assert (=> b!514991 m!496353))

(declare-fun m!496355 () Bool)

(assert (=> b!514994 m!496355))

(declare-fun m!496357 () Bool)

(assert (=> b!514995 m!496357))

(push 1)

