; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32448 () Bool)

(assert start!32448)

(declare-fun b!323875 () Bool)

(declare-fun e!200053 () Bool)

(declare-fun e!200052 () Bool)

(assert (=> b!323875 (= e!200053 e!200052)))

(declare-fun res!177369 () Bool)

(assert (=> b!323875 (=> (not res!177369) (not e!200052))))

(declare-datatypes ((array!16583 0))(
  ( (array!16584 (arr!7846 (Array (_ BitVec 32) (_ BitVec 64))) (size!8198 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16583)

(declare-datatypes ((SeekEntryResult!2988 0))(
  ( (MissingZero!2988 (index!14128 (_ BitVec 32))) (Found!2988 (index!14129 (_ BitVec 32))) (Intermediate!2988 (undefined!3800 Bool) (index!14130 (_ BitVec 32)) (x!32347 (_ BitVec 32))) (Undefined!2988) (MissingVacant!2988 (index!14131 (_ BitVec 32))) )
))
(declare-fun lt!156710 () SeekEntryResult!2988)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16583 (_ BitVec 32)) SeekEntryResult!2988)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323875 (= res!177369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156710))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323875 (= lt!156710 (Intermediate!2988 false resIndex!58 resX!58))))

(declare-fun b!323876 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323876 (= e!200052 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7846 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!323877 () Bool)

(declare-fun res!177367 () Bool)

(assert (=> b!323877 (=> (not res!177367) (not e!200053))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16583 (_ BitVec 32)) SeekEntryResult!2988)

(assert (=> b!323877 (= res!177367 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2988 i!1250)))))

(declare-fun b!323878 () Bool)

(declare-fun res!177368 () Bool)

(assert (=> b!323878 (=> (not res!177368) (not e!200053))))

(declare-fun arrayContainsKey!0 (array!16583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323878 (= res!177368 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!177366 () Bool)

(assert (=> start!32448 (=> (not res!177366) (not e!200053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32448 (= res!177366 (validMask!0 mask!3777))))

(assert (=> start!32448 e!200053))

(declare-fun array_inv!5800 (array!16583) Bool)

(assert (=> start!32448 (array_inv!5800 a!3305)))

(assert (=> start!32448 true))

(declare-fun b!323879 () Bool)

(declare-fun res!177364 () Bool)

(assert (=> b!323879 (=> (not res!177364) (not e!200053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323879 (= res!177364 (validKeyInArray!0 k!2497))))

(declare-fun b!323880 () Bool)

(declare-fun res!177365 () Bool)

(assert (=> b!323880 (=> (not res!177365) (not e!200052))))

(assert (=> b!323880 (= res!177365 (and (= (select (arr!7846 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8198 a!3305))))))

(declare-fun b!323881 () Bool)

(declare-fun res!177370 () Bool)

(assert (=> b!323881 (=> (not res!177370) (not e!200053))))

(assert (=> b!323881 (= res!177370 (and (= (size!8198 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8198 a!3305))))))

(declare-fun b!323882 () Bool)

(declare-fun res!177372 () Bool)

(assert (=> b!323882 (=> (not res!177372) (not e!200052))))

(assert (=> b!323882 (= res!177372 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156710))))

(declare-fun b!323883 () Bool)

(declare-fun res!177371 () Bool)

(assert (=> b!323883 (=> (not res!177371) (not e!200053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16583 (_ BitVec 32)) Bool)

(assert (=> b!323883 (= res!177371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32448 res!177366) b!323881))

(assert (= (and b!323881 res!177370) b!323879))

(assert (= (and b!323879 res!177364) b!323878))

(assert (= (and b!323878 res!177368) b!323877))

(assert (= (and b!323877 res!177367) b!323883))

(assert (= (and b!323883 res!177371) b!323875))

(assert (= (and b!323875 res!177369) b!323880))

(assert (= (and b!323880 res!177365) b!323882))

(assert (= (and b!323882 res!177372) b!323876))

(declare-fun m!331033 () Bool)

(assert (=> b!323877 m!331033))

(declare-fun m!331035 () Bool)

(assert (=> b!323876 m!331035))

(declare-fun m!331037 () Bool)

(assert (=> b!323879 m!331037))

(declare-fun m!331039 () Bool)

(assert (=> b!323878 m!331039))

(declare-fun m!331041 () Bool)

(assert (=> b!323875 m!331041))

(assert (=> b!323875 m!331041))

(declare-fun m!331043 () Bool)

(assert (=> b!323875 m!331043))

(declare-fun m!331045 () Bool)

(assert (=> b!323882 m!331045))

(declare-fun m!331047 () Bool)

(assert (=> b!323880 m!331047))

(declare-fun m!331049 () Bool)

(assert (=> b!323883 m!331049))

(declare-fun m!331051 () Bool)

(assert (=> start!32448 m!331051))

(declare-fun m!331053 () Bool)

(assert (=> start!32448 m!331053))

(push 1)

(assert (not b!323883))

(assert (not start!32448))

(assert (not b!323878))

(assert (not b!323877))

