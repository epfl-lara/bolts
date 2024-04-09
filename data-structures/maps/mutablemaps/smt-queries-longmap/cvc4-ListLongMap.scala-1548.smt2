; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29320 () Bool)

(assert start!29320)

(declare-fun res!156548 () Bool)

(declare-fun e!187657 () Bool)

(assert (=> start!29320 (=> (not res!156548) (not e!187657))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29320 (= res!156548 (validMask!0 mask!3809))))

(assert (=> start!29320 e!187657))

(assert (=> start!29320 true))

(declare-datatypes ((array!15030 0))(
  ( (array!15031 (arr!7122 (Array (_ BitVec 32) (_ BitVec 64))) (size!7474 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15030)

(declare-fun array_inv!5076 (array!15030) Bool)

(assert (=> start!29320 (array_inv!5076 a!3312)))

(declare-fun b!296902 () Bool)

(declare-fun res!156547 () Bool)

(assert (=> b!296902 (=> (not res!156547) (not e!187657))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296902 (= res!156547 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296903 () Bool)

(declare-fun e!187654 () Bool)

(declare-fun e!187658 () Bool)

(assert (=> b!296903 (= e!187654 e!187658)))

(declare-fun res!156542 () Bool)

(assert (=> b!296903 (=> (not res!156542) (not e!187658))))

(declare-datatypes ((SeekEntryResult!2282 0))(
  ( (MissingZero!2282 (index!11298 (_ BitVec 32))) (Found!2282 (index!11299 (_ BitVec 32))) (Intermediate!2282 (undefined!3094 Bool) (index!11300 (_ BitVec 32)) (x!29479 (_ BitVec 32))) (Undefined!2282) (MissingVacant!2282 (index!11301 (_ BitVec 32))) )
))
(declare-fun lt!147530 () SeekEntryResult!2282)

(declare-fun lt!147533 () Bool)

(assert (=> b!296903 (= res!156542 (and (or lt!147533 (not (undefined!3094 lt!147530))) (or lt!147533 (not (= (select (arr!7122 a!3312) (index!11300 lt!147530)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147533 (not (= (select (arr!7122 a!3312) (index!11300 lt!147530)) k!2524))) (not lt!147533)))))

(assert (=> b!296903 (= lt!147533 (not (is-Intermediate!2282 lt!147530)))))

(declare-fun b!296904 () Bool)

(declare-fun res!156546 () Bool)

(declare-fun e!187655 () Bool)

(assert (=> b!296904 (=> (not res!156546) (not e!187655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15030 (_ BitVec 32)) Bool)

(assert (=> b!296904 (= res!156546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296905 () Bool)

(declare-fun res!156543 () Bool)

(assert (=> b!296905 (=> (not res!156543) (not e!187657))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296905 (= res!156543 (and (= (size!7474 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7474 a!3312))))))

(declare-fun b!296906 () Bool)

(declare-fun res!156544 () Bool)

(assert (=> b!296906 (=> (not res!156544) (not e!187657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296906 (= res!156544 (validKeyInArray!0 k!2524))))

(declare-fun b!296907 () Bool)

(assert (=> b!296907 (= e!187657 e!187655)))

(declare-fun res!156545 () Bool)

(assert (=> b!296907 (=> (not res!156545) (not e!187655))))

(declare-fun lt!147531 () Bool)

(declare-fun lt!147536 () SeekEntryResult!2282)

(assert (=> b!296907 (= res!156545 (or lt!147531 (= lt!147536 (MissingVacant!2282 i!1256))))))

(assert (=> b!296907 (= lt!147531 (= lt!147536 (MissingZero!2282 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15030 (_ BitVec 32)) SeekEntryResult!2282)

(assert (=> b!296907 (= lt!147536 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296908 () Bool)

(assert (=> b!296908 (= e!187655 e!187654)))

(declare-fun res!156549 () Bool)

(assert (=> b!296908 (=> (not res!156549) (not e!187654))))

(assert (=> b!296908 (= res!156549 lt!147531)))

(declare-fun lt!147532 () SeekEntryResult!2282)

(declare-fun lt!147534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15030 (_ BitVec 32)) SeekEntryResult!2282)

(assert (=> b!296908 (= lt!147532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147534 k!2524 (array!15031 (store (arr!7122 a!3312) i!1256 k!2524) (size!7474 a!3312)) mask!3809))))

(assert (=> b!296908 (= lt!147530 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147534 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296908 (= lt!147534 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296909 () Bool)

(assert (=> b!296909 (= e!187658 (not true))))

(assert (=> b!296909 (= lt!147532 lt!147530)))

(declare-datatypes ((Unit!9231 0))(
  ( (Unit!9232) )
))
(declare-fun lt!147535 () Unit!9231)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15030 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9231)

(assert (=> b!296909 (= lt!147535 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147534 (index!11300 lt!147530) (x!29479 lt!147530) mask!3809))))

(assert (=> b!296909 (and (= (select (arr!7122 a!3312) (index!11300 lt!147530)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11300 lt!147530) i!1256))))

(assert (= (and start!29320 res!156548) b!296905))

(assert (= (and b!296905 res!156543) b!296906))

(assert (= (and b!296906 res!156544) b!296902))

(assert (= (and b!296902 res!156547) b!296907))

(assert (= (and b!296907 res!156545) b!296904))

(assert (= (and b!296904 res!156546) b!296908))

(assert (= (and b!296908 res!156549) b!296903))

(assert (= (and b!296903 res!156542) b!296909))

(declare-fun m!309761 () Bool)

(assert (=> b!296907 m!309761))

(declare-fun m!309763 () Bool)

(assert (=> b!296908 m!309763))

(declare-fun m!309765 () Bool)

(assert (=> b!296908 m!309765))

(declare-fun m!309767 () Bool)

(assert (=> b!296908 m!309767))

(declare-fun m!309769 () Bool)

(assert (=> b!296908 m!309769))

(declare-fun m!309771 () Bool)

(assert (=> b!296904 m!309771))

(declare-fun m!309773 () Bool)

(assert (=> b!296909 m!309773))

(declare-fun m!309775 () Bool)

(assert (=> b!296909 m!309775))

(declare-fun m!309777 () Bool)

(assert (=> start!29320 m!309777))

(declare-fun m!309779 () Bool)

(assert (=> start!29320 m!309779))

(assert (=> b!296903 m!309775))

(declare-fun m!309781 () Bool)

(assert (=> b!296902 m!309781))

(declare-fun m!309783 () Bool)

(assert (=> b!296906 m!309783))

(push 1)

