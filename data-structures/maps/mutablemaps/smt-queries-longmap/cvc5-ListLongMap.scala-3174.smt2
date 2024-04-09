; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44680 () Bool)

(assert start!44680)

(declare-fun e!288065 () Bool)

(declare-fun b!489942 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31699 0))(
  ( (array!31700 (arr!15234 (Array (_ BitVec 32) (_ BitVec 64))) (size!15598 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31699)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3708 0))(
  ( (MissingZero!3708 (index!17011 (_ BitVec 32))) (Found!3708 (index!17012 (_ BitVec 32))) (Intermediate!3708 (undefined!4520 Bool) (index!17013 (_ BitVec 32)) (x!46145 (_ BitVec 32))) (Undefined!3708) (MissingVacant!3708 (index!17014 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31699 (_ BitVec 32)) SeekEntryResult!3708)

(assert (=> b!489942 (= e!288065 (= (seekEntryOrOpen!0 (select (arr!15234 a!3235) j!176) a!3235 mask!3524) (Found!3708 j!176)))))

(declare-fun b!489943 () Bool)

(declare-fun res!293029 () Bool)

(declare-fun e!288067 () Bool)

(assert (=> b!489943 (=> (not res!293029) (not e!288067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31699 (_ BitVec 32)) Bool)

(assert (=> b!489943 (= res!293029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489944 () Bool)

(assert (=> b!489944 (= e!288067 (not true))))

(declare-fun lt!221254 () SeekEntryResult!3708)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!221255 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31699 (_ BitVec 32)) SeekEntryResult!3708)

(assert (=> b!489944 (= lt!221254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221255 (select (store (arr!15234 a!3235) i!1204 k!2280) j!176) (array!31700 (store (arr!15234 a!3235) i!1204 k!2280) (size!15598 a!3235)) mask!3524))))

(declare-fun lt!221256 () SeekEntryResult!3708)

(declare-fun lt!221258 () (_ BitVec 32))

(assert (=> b!489944 (= lt!221256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221258 (select (arr!15234 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489944 (= lt!221255 (toIndex!0 (select (store (arr!15234 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489944 (= lt!221258 (toIndex!0 (select (arr!15234 a!3235) j!176) mask!3524))))

(assert (=> b!489944 e!288065))

(declare-fun res!293032 () Bool)

(assert (=> b!489944 (=> (not res!293032) (not e!288065))))

(assert (=> b!489944 (= res!293032 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14354 0))(
  ( (Unit!14355) )
))
(declare-fun lt!221257 () Unit!14354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14354)

(assert (=> b!489944 (= lt!221257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489945 () Bool)

(declare-fun res!293033 () Bool)

(declare-fun e!288066 () Bool)

(assert (=> b!489945 (=> (not res!293033) (not e!288066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489945 (= res!293033 (validKeyInArray!0 k!2280))))

(declare-fun b!489946 () Bool)

(declare-fun res!293028 () Bool)

(assert (=> b!489946 (=> (not res!293028) (not e!288066))))

(declare-fun arrayContainsKey!0 (array!31699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489946 (= res!293028 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!293035 () Bool)

(assert (=> start!44680 (=> (not res!293035) (not e!288066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44680 (= res!293035 (validMask!0 mask!3524))))

(assert (=> start!44680 e!288066))

(assert (=> start!44680 true))

(declare-fun array_inv!11008 (array!31699) Bool)

(assert (=> start!44680 (array_inv!11008 a!3235)))

(declare-fun b!489947 () Bool)

(declare-fun res!293030 () Bool)

(assert (=> b!489947 (=> (not res!293030) (not e!288067))))

(declare-datatypes ((List!9445 0))(
  ( (Nil!9442) (Cons!9441 (h!10303 (_ BitVec 64)) (t!15681 List!9445)) )
))
(declare-fun arrayNoDuplicates!0 (array!31699 (_ BitVec 32) List!9445) Bool)

(assert (=> b!489947 (= res!293030 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9442))))

(declare-fun b!489948 () Bool)

(declare-fun res!293034 () Bool)

(assert (=> b!489948 (=> (not res!293034) (not e!288066))))

(assert (=> b!489948 (= res!293034 (and (= (size!15598 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15598 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15598 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489949 () Bool)

(assert (=> b!489949 (= e!288066 e!288067)))

(declare-fun res!293036 () Bool)

(assert (=> b!489949 (=> (not res!293036) (not e!288067))))

(declare-fun lt!221253 () SeekEntryResult!3708)

(assert (=> b!489949 (= res!293036 (or (= lt!221253 (MissingZero!3708 i!1204)) (= lt!221253 (MissingVacant!3708 i!1204))))))

(assert (=> b!489949 (= lt!221253 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489950 () Bool)

(declare-fun res!293031 () Bool)

(assert (=> b!489950 (=> (not res!293031) (not e!288066))))

(assert (=> b!489950 (= res!293031 (validKeyInArray!0 (select (arr!15234 a!3235) j!176)))))

(assert (= (and start!44680 res!293035) b!489948))

(assert (= (and b!489948 res!293034) b!489950))

(assert (= (and b!489950 res!293031) b!489945))

(assert (= (and b!489945 res!293033) b!489946))

(assert (= (and b!489946 res!293028) b!489949))

(assert (= (and b!489949 res!293036) b!489943))

(assert (= (and b!489943 res!293029) b!489947))

(assert (= (and b!489947 res!293030) b!489944))

(assert (= (and b!489944 res!293032) b!489942))

(declare-fun m!469987 () Bool)

(assert (=> start!44680 m!469987))

(declare-fun m!469989 () Bool)

(assert (=> start!44680 m!469989))

(declare-fun m!469991 () Bool)

(assert (=> b!489947 m!469991))

(declare-fun m!469993 () Bool)

(assert (=> b!489942 m!469993))

(assert (=> b!489942 m!469993))

(declare-fun m!469995 () Bool)

(assert (=> b!489942 m!469995))

(declare-fun m!469997 () Bool)

(assert (=> b!489946 m!469997))

(assert (=> b!489944 m!469993))

(declare-fun m!469999 () Bool)

(assert (=> b!489944 m!469999))

(declare-fun m!470001 () Bool)

(assert (=> b!489944 m!470001))

(declare-fun m!470003 () Bool)

(assert (=> b!489944 m!470003))

(declare-fun m!470005 () Bool)

(assert (=> b!489944 m!470005))

(assert (=> b!489944 m!469993))

(declare-fun m!470007 () Bool)

(assert (=> b!489944 m!470007))

(assert (=> b!489944 m!470005))

(declare-fun m!470009 () Bool)

(assert (=> b!489944 m!470009))

(assert (=> b!489944 m!469993))

(declare-fun m!470011 () Bool)

(assert (=> b!489944 m!470011))

(assert (=> b!489944 m!470005))

(declare-fun m!470013 () Bool)

(assert (=> b!489944 m!470013))

(declare-fun m!470015 () Bool)

(assert (=> b!489943 m!470015))

(declare-fun m!470017 () Bool)

(assert (=> b!489945 m!470017))

(assert (=> b!489950 m!469993))

(assert (=> b!489950 m!469993))

(declare-fun m!470019 () Bool)

(assert (=> b!489950 m!470019))

(declare-fun m!470021 () Bool)

(assert (=> b!489949 m!470021))

(push 1)

(assert (not b!489949))

(assert (not b!489950))

(assert (not b!489944))

