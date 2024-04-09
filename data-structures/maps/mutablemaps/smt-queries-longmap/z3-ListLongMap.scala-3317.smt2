; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45858 () Bool)

(assert start!45858)

(declare-fun b!507580 () Bool)

(declare-fun e!297040 () Bool)

(declare-fun e!297038 () Bool)

(assert (=> b!507580 (= e!297040 e!297038)))

(declare-fun res!308694 () Bool)

(assert (=> b!507580 (=> res!308694 e!297038)))

(declare-fun lt!231968 () Bool)

(declare-datatypes ((SeekEntryResult!4138 0))(
  ( (MissingZero!4138 (index!18740 (_ BitVec 32))) (Found!4138 (index!18741 (_ BitVec 32))) (Intermediate!4138 (undefined!4950 Bool) (index!18742 (_ BitVec 32)) (x!47758 (_ BitVec 32))) (Undefined!4138) (MissingVacant!4138 (index!18743 (_ BitVec 32))) )
))
(declare-fun lt!231967 () SeekEntryResult!4138)

(assert (=> b!507580 (= res!308694 (or (and (not lt!231968) (undefined!4950 lt!231967)) (and (not lt!231968) (not (undefined!4950 lt!231967)))))))

(get-info :version)

(assert (=> b!507580 (= lt!231968 (not ((_ is Intermediate!4138) lt!231967)))))

(declare-fun b!507581 () Bool)

(declare-fun e!297042 () Bool)

(declare-fun e!297039 () Bool)

(assert (=> b!507581 (= e!297042 e!297039)))

(declare-fun res!308695 () Bool)

(assert (=> b!507581 (=> (not res!308695) (not e!297039))))

(declare-fun lt!231965 () SeekEntryResult!4138)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507581 (= res!308695 (or (= lt!231965 (MissingZero!4138 i!1204)) (= lt!231965 (MissingVacant!4138 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32574 0))(
  ( (array!32575 (arr!15664 (Array (_ BitVec 32) (_ BitVec 64))) (size!16028 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32574)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32574 (_ BitVec 32)) SeekEntryResult!4138)

(assert (=> b!507581 (= lt!231965 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun e!297043 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!507582 () Bool)

(assert (=> b!507582 (= e!297043 (= (seekEntryOrOpen!0 (select (arr!15664 a!3235) j!176) a!3235 mask!3524) (Found!4138 j!176)))))

(declare-fun b!507583 () Bool)

(declare-fun res!308696 () Bool)

(assert (=> b!507583 (=> (not res!308696) (not e!297042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507583 (= res!308696 (validKeyInArray!0 (select (arr!15664 a!3235) j!176)))))

(declare-fun b!507584 () Bool)

(declare-fun res!308691 () Bool)

(assert (=> b!507584 (=> (not res!308691) (not e!297042))))

(assert (=> b!507584 (= res!308691 (validKeyInArray!0 k0!2280))))

(declare-fun res!308693 () Bool)

(assert (=> start!45858 (=> (not res!308693) (not e!297042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45858 (= res!308693 (validMask!0 mask!3524))))

(assert (=> start!45858 e!297042))

(assert (=> start!45858 true))

(declare-fun array_inv!11438 (array!32574) Bool)

(assert (=> start!45858 (array_inv!11438 a!3235)))

(declare-fun b!507585 () Bool)

(declare-fun res!308690 () Bool)

(assert (=> b!507585 (=> (not res!308690) (not e!297039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32574 (_ BitVec 32)) Bool)

(assert (=> b!507585 (= res!308690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507586 () Bool)

(assert (=> b!507586 (= e!297039 (not e!297040))))

(declare-fun res!308697 () Bool)

(assert (=> b!507586 (=> res!308697 e!297040)))

(declare-fun lt!231966 () (_ BitVec 32))

(declare-fun lt!231963 () (_ BitVec 64))

(declare-fun lt!231961 () array!32574)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32574 (_ BitVec 32)) SeekEntryResult!4138)

(assert (=> b!507586 (= res!308697 (= lt!231967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231966 lt!231963 lt!231961 mask!3524)))))

(declare-fun lt!231962 () (_ BitVec 32))

(assert (=> b!507586 (= lt!231967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231962 (select (arr!15664 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507586 (= lt!231966 (toIndex!0 lt!231963 mask!3524))))

(assert (=> b!507586 (= lt!231963 (select (store (arr!15664 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507586 (= lt!231962 (toIndex!0 (select (arr!15664 a!3235) j!176) mask!3524))))

(assert (=> b!507586 (= lt!231961 (array!32575 (store (arr!15664 a!3235) i!1204 k0!2280) (size!16028 a!3235)))))

(assert (=> b!507586 e!297043))

(declare-fun res!308699 () Bool)

(assert (=> b!507586 (=> (not res!308699) (not e!297043))))

(assert (=> b!507586 (= res!308699 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15556 0))(
  ( (Unit!15557) )
))
(declare-fun lt!231960 () Unit!15556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15556)

(assert (=> b!507586 (= lt!231960 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507587 () Bool)

(declare-fun res!308692 () Bool)

(assert (=> b!507587 (=> (not res!308692) (not e!297039))))

(declare-datatypes ((List!9875 0))(
  ( (Nil!9872) (Cons!9871 (h!10748 (_ BitVec 64)) (t!16111 List!9875)) )
))
(declare-fun arrayNoDuplicates!0 (array!32574 (_ BitVec 32) List!9875) Bool)

(assert (=> b!507587 (= res!308692 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9872))))

(declare-fun b!507588 () Bool)

(declare-fun res!308689 () Bool)

(assert (=> b!507588 (=> (not res!308689) (not e!297042))))

(declare-fun arrayContainsKey!0 (array!32574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507588 (= res!308689 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507589 () Bool)

(assert (=> b!507589 (= e!297038 true)))

(declare-fun lt!231964 () SeekEntryResult!4138)

(assert (=> b!507589 (= lt!231964 (seekEntryOrOpen!0 lt!231963 lt!231961 mask!3524))))

(assert (=> b!507589 false))

(declare-fun b!507590 () Bool)

(declare-fun res!308698 () Bool)

(assert (=> b!507590 (=> (not res!308698) (not e!297042))))

(assert (=> b!507590 (= res!308698 (and (= (size!16028 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16028 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16028 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45858 res!308693) b!507590))

(assert (= (and b!507590 res!308698) b!507583))

(assert (= (and b!507583 res!308696) b!507584))

(assert (= (and b!507584 res!308691) b!507588))

(assert (= (and b!507588 res!308689) b!507581))

(assert (= (and b!507581 res!308695) b!507585))

(assert (= (and b!507585 res!308690) b!507587))

(assert (= (and b!507587 res!308692) b!507586))

(assert (= (and b!507586 res!308699) b!507582))

(assert (= (and b!507586 (not res!308697)) b!507580))

(assert (= (and b!507580 (not res!308694)) b!507589))

(declare-fun m!488439 () Bool)

(assert (=> b!507583 m!488439))

(assert (=> b!507583 m!488439))

(declare-fun m!488441 () Bool)

(assert (=> b!507583 m!488441))

(declare-fun m!488443 () Bool)

(assert (=> b!507587 m!488443))

(declare-fun m!488445 () Bool)

(assert (=> b!507581 m!488445))

(declare-fun m!488447 () Bool)

(assert (=> b!507586 m!488447))

(declare-fun m!488449 () Bool)

(assert (=> b!507586 m!488449))

(declare-fun m!488451 () Bool)

(assert (=> b!507586 m!488451))

(declare-fun m!488453 () Bool)

(assert (=> b!507586 m!488453))

(assert (=> b!507586 m!488439))

(declare-fun m!488455 () Bool)

(assert (=> b!507586 m!488455))

(assert (=> b!507586 m!488439))

(declare-fun m!488457 () Bool)

(assert (=> b!507586 m!488457))

(assert (=> b!507586 m!488439))

(declare-fun m!488459 () Bool)

(assert (=> b!507586 m!488459))

(declare-fun m!488461 () Bool)

(assert (=> b!507586 m!488461))

(declare-fun m!488463 () Bool)

(assert (=> b!507589 m!488463))

(assert (=> b!507582 m!488439))

(assert (=> b!507582 m!488439))

(declare-fun m!488465 () Bool)

(assert (=> b!507582 m!488465))

(declare-fun m!488467 () Bool)

(assert (=> b!507585 m!488467))

(declare-fun m!488469 () Bool)

(assert (=> b!507588 m!488469))

(declare-fun m!488471 () Bool)

(assert (=> b!507584 m!488471))

(declare-fun m!488473 () Bool)

(assert (=> start!45858 m!488473))

(declare-fun m!488475 () Bool)

(assert (=> start!45858 m!488475))

(check-sat (not b!507582) (not b!507584) (not b!507589) (not b!507588) (not b!507587) (not start!45858) (not b!507583) (not b!507586) (not b!507585) (not b!507581))
(check-sat)
