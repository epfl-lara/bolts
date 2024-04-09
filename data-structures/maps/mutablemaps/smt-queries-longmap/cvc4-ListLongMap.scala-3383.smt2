; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46724 () Bool)

(assert start!46724)

(declare-fun b!515449 () Bool)

(declare-fun res!315166 () Bool)

(declare-fun e!300935 () Bool)

(assert (=> b!515449 (=> (not res!315166) (not e!300935))))

(declare-datatypes ((array!32996 0))(
  ( (array!32997 (arr!15863 (Array (_ BitVec 32) (_ BitVec 64))) (size!16227 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32996)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32996 (_ BitVec 32)) Bool)

(assert (=> b!515449 (= res!315166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515450 () Bool)

(declare-fun res!315168 () Bool)

(declare-fun e!300933 () Bool)

(assert (=> b!515450 (=> res!315168 e!300933)))

(declare-datatypes ((SeekEntryResult!4337 0))(
  ( (MissingZero!4337 (index!19536 (_ BitVec 32))) (Found!4337 (index!19537 (_ BitVec 32))) (Intermediate!4337 (undefined!5149 Bool) (index!19538 (_ BitVec 32)) (x!48527 (_ BitVec 32))) (Undefined!4337) (MissingVacant!4337 (index!19539 (_ BitVec 32))) )
))
(declare-fun lt!236020 () SeekEntryResult!4337)

(assert (=> b!515450 (= res!315168 (or (undefined!5149 lt!236020) (not (is-Intermediate!4337 lt!236020))))))

(declare-fun b!515451 () Bool)

(assert (=> b!515451 (= e!300933 true)))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515451 (and (bvslt (x!48527 lt!236020) #b01111111111111111111111111111110) (or (= (select (arr!15863 a!3235) (index!19538 lt!236020)) (select (arr!15863 a!3235) j!176)) (= (select (arr!15863 a!3235) (index!19538 lt!236020)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15863 a!3235) (index!19538 lt!236020)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515452 () Bool)

(declare-fun res!315165 () Bool)

(declare-fun e!300936 () Bool)

(assert (=> b!515452 (=> (not res!315165) (not e!300936))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515452 (= res!315165 (validKeyInArray!0 k!2280))))

(declare-fun b!515453 () Bool)

(declare-fun e!300934 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32996 (_ BitVec 32)) SeekEntryResult!4337)

(assert (=> b!515453 (= e!300934 (= (seekEntryOrOpen!0 (select (arr!15863 a!3235) j!176) a!3235 mask!3524) (Found!4337 j!176)))))

(declare-fun b!515454 () Bool)

(declare-fun res!315170 () Bool)

(assert (=> b!515454 (=> (not res!315170) (not e!300936))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515454 (= res!315170 (and (= (size!16227 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16227 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16227 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515455 () Bool)

(assert (=> b!515455 (= e!300935 (not e!300933))))

(declare-fun res!315164 () Bool)

(assert (=> b!515455 (=> res!315164 e!300933)))

(declare-fun lt!236018 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32996 (_ BitVec 32)) SeekEntryResult!4337)

(assert (=> b!515455 (= res!315164 (= lt!236020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236018 (select (store (arr!15863 a!3235) i!1204 k!2280) j!176) (array!32997 (store (arr!15863 a!3235) i!1204 k!2280) (size!16227 a!3235)) mask!3524)))))

(declare-fun lt!236021 () (_ BitVec 32))

(assert (=> b!515455 (= lt!236020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236021 (select (arr!15863 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515455 (= lt!236018 (toIndex!0 (select (store (arr!15863 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515455 (= lt!236021 (toIndex!0 (select (arr!15863 a!3235) j!176) mask!3524))))

(assert (=> b!515455 e!300934))

(declare-fun res!315172 () Bool)

(assert (=> b!515455 (=> (not res!315172) (not e!300934))))

(assert (=> b!515455 (= res!315172 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15924 0))(
  ( (Unit!15925) )
))
(declare-fun lt!236017 () Unit!15924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32996 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15924)

(assert (=> b!515455 (= lt!236017 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515456 () Bool)

(declare-fun res!315169 () Bool)

(assert (=> b!515456 (=> (not res!315169) (not e!300936))))

(declare-fun arrayContainsKey!0 (array!32996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515456 (= res!315169 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515457 () Bool)

(assert (=> b!515457 (= e!300936 e!300935)))

(declare-fun res!315167 () Bool)

(assert (=> b!515457 (=> (not res!315167) (not e!300935))))

(declare-fun lt!236019 () SeekEntryResult!4337)

(assert (=> b!515457 (= res!315167 (or (= lt!236019 (MissingZero!4337 i!1204)) (= lt!236019 (MissingVacant!4337 i!1204))))))

(assert (=> b!515457 (= lt!236019 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!315173 () Bool)

(assert (=> start!46724 (=> (not res!315173) (not e!300936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46724 (= res!315173 (validMask!0 mask!3524))))

(assert (=> start!46724 e!300936))

(assert (=> start!46724 true))

(declare-fun array_inv!11637 (array!32996) Bool)

(assert (=> start!46724 (array_inv!11637 a!3235)))

(declare-fun b!515458 () Bool)

(declare-fun res!315163 () Bool)

(assert (=> b!515458 (=> (not res!315163) (not e!300935))))

(declare-datatypes ((List!10074 0))(
  ( (Nil!10071) (Cons!10070 (h!10968 (_ BitVec 64)) (t!16310 List!10074)) )
))
(declare-fun arrayNoDuplicates!0 (array!32996 (_ BitVec 32) List!10074) Bool)

(assert (=> b!515458 (= res!315163 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10071))))

(declare-fun b!515459 () Bool)

(declare-fun res!315171 () Bool)

(assert (=> b!515459 (=> (not res!315171) (not e!300936))))

(assert (=> b!515459 (= res!315171 (validKeyInArray!0 (select (arr!15863 a!3235) j!176)))))

(assert (= (and start!46724 res!315173) b!515454))

(assert (= (and b!515454 res!315170) b!515459))

(assert (= (and b!515459 res!315171) b!515452))

(assert (= (and b!515452 res!315165) b!515456))

(assert (= (and b!515456 res!315169) b!515457))

(assert (= (and b!515457 res!315167) b!515449))

(assert (= (and b!515449 res!315166) b!515458))

(assert (= (and b!515458 res!315163) b!515455))

(assert (= (and b!515455 res!315172) b!515453))

(assert (= (and b!515455 (not res!315164)) b!515450))

(assert (= (and b!515450 (not res!315168)) b!515451))

(declare-fun m!496853 () Bool)

(assert (=> b!515453 m!496853))

(assert (=> b!515453 m!496853))

(declare-fun m!496855 () Bool)

(assert (=> b!515453 m!496855))

(declare-fun m!496857 () Bool)

(assert (=> b!515449 m!496857))

(declare-fun m!496859 () Bool)

(assert (=> b!515455 m!496859))

(declare-fun m!496861 () Bool)

(assert (=> b!515455 m!496861))

(declare-fun m!496863 () Bool)

(assert (=> b!515455 m!496863))

(declare-fun m!496865 () Bool)

(assert (=> b!515455 m!496865))

(assert (=> b!515455 m!496859))

(assert (=> b!515455 m!496853))

(declare-fun m!496867 () Bool)

(assert (=> b!515455 m!496867))

(assert (=> b!515455 m!496853))

(declare-fun m!496869 () Bool)

(assert (=> b!515455 m!496869))

(assert (=> b!515455 m!496853))

(declare-fun m!496871 () Bool)

(assert (=> b!515455 m!496871))

(assert (=> b!515455 m!496859))

(declare-fun m!496873 () Bool)

(assert (=> b!515455 m!496873))

(declare-fun m!496875 () Bool)

(assert (=> b!515458 m!496875))

(declare-fun m!496877 () Bool)

(assert (=> start!46724 m!496877))

(declare-fun m!496879 () Bool)

(assert (=> start!46724 m!496879))

(declare-fun m!496881 () Bool)

(assert (=> b!515456 m!496881))

(assert (=> b!515459 m!496853))

(assert (=> b!515459 m!496853))

(declare-fun m!496883 () Bool)

(assert (=> b!515459 m!496883))

(declare-fun m!496885 () Bool)

(assert (=> b!515451 m!496885))

(assert (=> b!515451 m!496853))

(declare-fun m!496887 () Bool)

(assert (=> b!515452 m!496887))

(declare-fun m!496889 () Bool)

(assert (=> b!515457 m!496889))

(push 1)

