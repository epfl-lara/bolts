; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44304 () Bool)

(assert start!44304)

(declare-fun res!290440 () Bool)

(declare-fun e!286543 () Bool)

(assert (=> start!44304 (=> (not res!290440) (not e!286543))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44304 (= res!290440 (validMask!0 mask!3524))))

(assert (=> start!44304 e!286543))

(assert (=> start!44304 true))

(declare-datatypes ((array!31515 0))(
  ( (array!31516 (arr!15148 (Array (_ BitVec 32) (_ BitVec 64))) (size!15512 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31515)

(declare-fun array_inv!10922 (array!31515) Bool)

(assert (=> start!44304 (array_inv!10922 a!3235)))

(declare-fun b!486901 () Bool)

(declare-fun e!286542 () Bool)

(assert (=> b!486901 (= e!286542 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31515 (_ BitVec 32)) Bool)

(assert (=> b!486901 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14182 0))(
  ( (Unit!14183) )
))
(declare-fun lt!219902 () Unit!14182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14182)

(assert (=> b!486901 (= lt!219902 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486902 () Bool)

(declare-fun res!290441 () Bool)

(assert (=> b!486902 (=> (not res!290441) (not e!286543))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486902 (= res!290441 (and (= (size!15512 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15512 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15512 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486903 () Bool)

(declare-fun res!290438 () Bool)

(assert (=> b!486903 (=> (not res!290438) (not e!286543))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486903 (= res!290438 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486904 () Bool)

(declare-fun res!290443 () Bool)

(assert (=> b!486904 (=> (not res!290443) (not e!286542))))

(declare-datatypes ((List!9359 0))(
  ( (Nil!9356) (Cons!9355 (h!10211 (_ BitVec 64)) (t!15595 List!9359)) )
))
(declare-fun arrayNoDuplicates!0 (array!31515 (_ BitVec 32) List!9359) Bool)

(assert (=> b!486904 (= res!290443 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9356))))

(declare-fun b!486905 () Bool)

(declare-fun res!290437 () Bool)

(assert (=> b!486905 (=> (not res!290437) (not e!286542))))

(assert (=> b!486905 (= res!290437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486906 () Bool)

(declare-fun res!290444 () Bool)

(assert (=> b!486906 (=> (not res!290444) (not e!286543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486906 (= res!290444 (validKeyInArray!0 k0!2280))))

(declare-fun b!486907 () Bool)

(assert (=> b!486907 (= e!286543 e!286542)))

(declare-fun res!290439 () Bool)

(assert (=> b!486907 (=> (not res!290439) (not e!286542))))

(declare-datatypes ((SeekEntryResult!3622 0))(
  ( (MissingZero!3622 (index!16667 (_ BitVec 32))) (Found!3622 (index!16668 (_ BitVec 32))) (Intermediate!3622 (undefined!4434 Bool) (index!16669 (_ BitVec 32)) (x!45821 (_ BitVec 32))) (Undefined!3622) (MissingVacant!3622 (index!16670 (_ BitVec 32))) )
))
(declare-fun lt!219901 () SeekEntryResult!3622)

(assert (=> b!486907 (= res!290439 (or (= lt!219901 (MissingZero!3622 i!1204)) (= lt!219901 (MissingVacant!3622 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31515 (_ BitVec 32)) SeekEntryResult!3622)

(assert (=> b!486907 (= lt!219901 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486908 () Bool)

(declare-fun res!290442 () Bool)

(assert (=> b!486908 (=> (not res!290442) (not e!286543))))

(assert (=> b!486908 (= res!290442 (validKeyInArray!0 (select (arr!15148 a!3235) j!176)))))

(assert (= (and start!44304 res!290440) b!486902))

(assert (= (and b!486902 res!290441) b!486908))

(assert (= (and b!486908 res!290442) b!486906))

(assert (= (and b!486906 res!290444) b!486903))

(assert (= (and b!486903 res!290438) b!486907))

(assert (= (and b!486907 res!290439) b!486905))

(assert (= (and b!486905 res!290437) b!486904))

(assert (= (and b!486904 res!290443) b!486901))

(declare-fun m!466787 () Bool)

(assert (=> b!486904 m!466787))

(declare-fun m!466789 () Bool)

(assert (=> b!486907 m!466789))

(declare-fun m!466791 () Bool)

(assert (=> b!486905 m!466791))

(declare-fun m!466793 () Bool)

(assert (=> b!486901 m!466793))

(declare-fun m!466795 () Bool)

(assert (=> b!486901 m!466795))

(declare-fun m!466797 () Bool)

(assert (=> b!486908 m!466797))

(assert (=> b!486908 m!466797))

(declare-fun m!466799 () Bool)

(assert (=> b!486908 m!466799))

(declare-fun m!466801 () Bool)

(assert (=> start!44304 m!466801))

(declare-fun m!466803 () Bool)

(assert (=> start!44304 m!466803))

(declare-fun m!466805 () Bool)

(assert (=> b!486906 m!466805))

(declare-fun m!466807 () Bool)

(assert (=> b!486903 m!466807))

(check-sat (not b!486904) (not b!486907) (not b!486905) (not b!486908) (not b!486906) (not start!44304) (not b!486903) (not b!486901))
(check-sat)
