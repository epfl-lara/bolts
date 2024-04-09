; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48920 () Bool)

(assert start!48920)

(declare-fun res!334177 () Bool)

(declare-fun e!312418 () Bool)

(assert (=> start!48920 (=> (not res!334177) (not e!312418))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48920 (= res!334177 (validMask!0 mask!3216))))

(assert (=> start!48920 e!312418))

(assert (=> start!48920 true))

(declare-datatypes ((array!34088 0))(
  ( (array!34089 (arr!16379 (Array (_ BitVec 32) (_ BitVec 64))) (size!16743 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34088)

(declare-fun array_inv!12153 (array!34088) Bool)

(assert (=> start!48920 (array_inv!12153 a!3154)))

(declare-fun b!538820 () Bool)

(declare-fun res!334176 () Bool)

(assert (=> b!538820 (=> (not res!334176) (not e!312418))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538820 (= res!334176 (validKeyInArray!0 (select (arr!16379 a!3154) j!147)))))

(declare-fun b!538821 () Bool)

(declare-fun e!312416 () Bool)

(assert (=> b!538821 (= e!312416 false)))

(declare-fun lt!247006 () Bool)

(declare-datatypes ((List!10551 0))(
  ( (Nil!10548) (Cons!10547 (h!11490 (_ BitVec 64)) (t!16787 List!10551)) )
))
(declare-fun arrayNoDuplicates!0 (array!34088 (_ BitVec 32) List!10551) Bool)

(assert (=> b!538821 (= lt!247006 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10548))))

(declare-fun b!538822 () Bool)

(declare-fun res!334180 () Bool)

(assert (=> b!538822 (=> (not res!334180) (not e!312418))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538822 (= res!334180 (and (= (size!16743 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16743 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16743 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538823 () Bool)

(assert (=> b!538823 (= e!312418 e!312416)))

(declare-fun res!334175 () Bool)

(assert (=> b!538823 (=> (not res!334175) (not e!312416))))

(declare-datatypes ((SeekEntryResult!4844 0))(
  ( (MissingZero!4844 (index!21600 (_ BitVec 32))) (Found!4844 (index!21601 (_ BitVec 32))) (Intermediate!4844 (undefined!5656 Bool) (index!21602 (_ BitVec 32)) (x!50542 (_ BitVec 32))) (Undefined!4844) (MissingVacant!4844 (index!21603 (_ BitVec 32))) )
))
(declare-fun lt!247007 () SeekEntryResult!4844)

(assert (=> b!538823 (= res!334175 (or (= lt!247007 (MissingZero!4844 i!1153)) (= lt!247007 (MissingVacant!4844 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34088 (_ BitVec 32)) SeekEntryResult!4844)

(assert (=> b!538823 (= lt!247007 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538824 () Bool)

(declare-fun res!334179 () Bool)

(assert (=> b!538824 (=> (not res!334179) (not e!312418))))

(declare-fun arrayContainsKey!0 (array!34088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538824 (= res!334179 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538825 () Bool)

(declare-fun res!334178 () Bool)

(assert (=> b!538825 (=> (not res!334178) (not e!312416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34088 (_ BitVec 32)) Bool)

(assert (=> b!538825 (= res!334178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538826 () Bool)

(declare-fun res!334181 () Bool)

(assert (=> b!538826 (=> (not res!334181) (not e!312418))))

(assert (=> b!538826 (= res!334181 (validKeyInArray!0 k!1998))))

(assert (= (and start!48920 res!334177) b!538822))

(assert (= (and b!538822 res!334180) b!538820))

(assert (= (and b!538820 res!334176) b!538826))

(assert (= (and b!538826 res!334181) b!538824))

(assert (= (and b!538824 res!334179) b!538823))

(assert (= (and b!538823 res!334175) b!538825))

(assert (= (and b!538825 res!334178) b!538821))

(declare-fun m!517963 () Bool)

(assert (=> b!538824 m!517963))

(declare-fun m!517965 () Bool)

(assert (=> b!538825 m!517965))

(declare-fun m!517967 () Bool)

(assert (=> b!538820 m!517967))

(assert (=> b!538820 m!517967))

(declare-fun m!517969 () Bool)

(assert (=> b!538820 m!517969))

(declare-fun m!517971 () Bool)

(assert (=> start!48920 m!517971))

(declare-fun m!517973 () Bool)

(assert (=> start!48920 m!517973))

(declare-fun m!517975 () Bool)

(assert (=> b!538826 m!517975))

(declare-fun m!517977 () Bool)

(assert (=> b!538821 m!517977))

(declare-fun m!517979 () Bool)

(assert (=> b!538823 m!517979))

(push 1)

(assert (not b!538823))

(assert (not b!538825))

(assert (not b!538826))

(assert (not b!538824))

(assert (not b!538820))

