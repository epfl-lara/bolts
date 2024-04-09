; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44314 () Bool)

(assert start!44314)

(declare-fun b!487021 () Bool)

(declare-fun e!286588 () Bool)

(assert (=> b!487021 (= e!286588 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!31525 0))(
  ( (array!31526 (arr!15153 (Array (_ BitVec 32) (_ BitVec 64))) (size!15517 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31525)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31525 (_ BitVec 32)) Bool)

(assert (=> b!487021 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14192 0))(
  ( (Unit!14193) )
))
(declare-fun lt!219931 () Unit!14192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14192)

(assert (=> b!487021 (= lt!219931 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487022 () Bool)

(declare-fun e!286586 () Bool)

(assert (=> b!487022 (= e!286586 e!286588)))

(declare-fun res!290560 () Bool)

(assert (=> b!487022 (=> (not res!290560) (not e!286588))))

(declare-datatypes ((SeekEntryResult!3627 0))(
  ( (MissingZero!3627 (index!16687 (_ BitVec 32))) (Found!3627 (index!16688 (_ BitVec 32))) (Intermediate!3627 (undefined!4439 Bool) (index!16689 (_ BitVec 32)) (x!45842 (_ BitVec 32))) (Undefined!3627) (MissingVacant!3627 (index!16690 (_ BitVec 32))) )
))
(declare-fun lt!219932 () SeekEntryResult!3627)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487022 (= res!290560 (or (= lt!219932 (MissingZero!3627 i!1204)) (= lt!219932 (MissingVacant!3627 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31525 (_ BitVec 32)) SeekEntryResult!3627)

(assert (=> b!487022 (= lt!219932 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487023 () Bool)

(declare-fun res!290563 () Bool)

(assert (=> b!487023 (=> (not res!290563) (not e!286586))))

(declare-fun arrayContainsKey!0 (array!31525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487023 (= res!290563 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487024 () Bool)

(declare-fun res!290557 () Bool)

(assert (=> b!487024 (=> (not res!290557) (not e!286586))))

(assert (=> b!487024 (= res!290557 (and (= (size!15517 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15517 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15517 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487025 () Bool)

(declare-fun res!290559 () Bool)

(assert (=> b!487025 (=> (not res!290559) (not e!286588))))

(declare-datatypes ((List!9364 0))(
  ( (Nil!9361) (Cons!9360 (h!10216 (_ BitVec 64)) (t!15600 List!9364)) )
))
(declare-fun arrayNoDuplicates!0 (array!31525 (_ BitVec 32) List!9364) Bool)

(assert (=> b!487025 (= res!290559 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9361))))

(declare-fun b!487026 () Bool)

(declare-fun res!290558 () Bool)

(assert (=> b!487026 (=> (not res!290558) (not e!286588))))

(assert (=> b!487026 (= res!290558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!290561 () Bool)

(assert (=> start!44314 (=> (not res!290561) (not e!286586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44314 (= res!290561 (validMask!0 mask!3524))))

(assert (=> start!44314 e!286586))

(assert (=> start!44314 true))

(declare-fun array_inv!10927 (array!31525) Bool)

(assert (=> start!44314 (array_inv!10927 a!3235)))

(declare-fun b!487027 () Bool)

(declare-fun res!290562 () Bool)

(assert (=> b!487027 (=> (not res!290562) (not e!286586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487027 (= res!290562 (validKeyInArray!0 k!2280))))

(declare-fun b!487028 () Bool)

(declare-fun res!290564 () Bool)

(assert (=> b!487028 (=> (not res!290564) (not e!286586))))

(assert (=> b!487028 (= res!290564 (validKeyInArray!0 (select (arr!15153 a!3235) j!176)))))

(assert (= (and start!44314 res!290561) b!487024))

(assert (= (and b!487024 res!290557) b!487028))

(assert (= (and b!487028 res!290564) b!487027))

(assert (= (and b!487027 res!290562) b!487023))

(assert (= (and b!487023 res!290563) b!487022))

(assert (= (and b!487022 res!290560) b!487026))

(assert (= (and b!487026 res!290558) b!487025))

(assert (= (and b!487025 res!290559) b!487021))

(declare-fun m!466897 () Bool)

(assert (=> b!487028 m!466897))

(assert (=> b!487028 m!466897))

(declare-fun m!466899 () Bool)

(assert (=> b!487028 m!466899))

(declare-fun m!466901 () Bool)

(assert (=> b!487027 m!466901))

(declare-fun m!466903 () Bool)

(assert (=> b!487026 m!466903))

(declare-fun m!466905 () Bool)

(assert (=> b!487022 m!466905))

(declare-fun m!466907 () Bool)

(assert (=> b!487021 m!466907))

(declare-fun m!466909 () Bool)

(assert (=> b!487021 m!466909))

(declare-fun m!466911 () Bool)

(assert (=> b!487025 m!466911))

(declare-fun m!466913 () Bool)

(assert (=> b!487023 m!466913))

(declare-fun m!466915 () Bool)

(assert (=> start!44314 m!466915))

(declare-fun m!466917 () Bool)

(assert (=> start!44314 m!466917))

(push 1)

