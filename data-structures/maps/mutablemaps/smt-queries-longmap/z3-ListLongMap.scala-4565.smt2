; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63708 () Bool)

(assert start!63708)

(declare-fun b!716811 () Bool)

(declare-fun res!479739 () Bool)

(declare-fun e!402522 () Bool)

(assert (=> b!716811 (=> (not res!479739) (not e!402522))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40557 0))(
  ( (array!40558 (arr!19408 (Array (_ BitVec 32) (_ BitVec 64))) (size!19829 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40557)

(assert (=> b!716811 (= res!479739 (and (= (size!19829 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19829 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19829 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716812 () Bool)

(declare-fun res!479742 () Bool)

(assert (=> b!716812 (=> (not res!479742) (not e!402522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716812 (= res!479742 (validKeyInArray!0 (select (arr!19408 a!3186) j!159)))))

(declare-fun b!716813 () Bool)

(declare-fun res!479737 () Bool)

(assert (=> b!716813 (=> (not res!479737) (not e!402522))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!716813 (= res!479737 (validKeyInArray!0 k0!2102))))

(declare-fun res!479740 () Bool)

(assert (=> start!63708 (=> (not res!479740) (not e!402522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63708 (= res!479740 (validMask!0 mask!3328))))

(assert (=> start!63708 e!402522))

(declare-fun array_inv!15182 (array!40557) Bool)

(assert (=> start!63708 (array_inv!15182 a!3186)))

(assert (=> start!63708 true))

(declare-fun b!716814 () Bool)

(declare-fun res!479738 () Bool)

(assert (=> b!716814 (=> (not res!479738) (not e!402522))))

(declare-datatypes ((SeekEntryResult!7015 0))(
  ( (MissingZero!7015 (index!30427 (_ BitVec 32))) (Found!7015 (index!30428 (_ BitVec 32))) (Intermediate!7015 (undefined!7827 Bool) (index!30429 (_ BitVec 32)) (x!61484 (_ BitVec 32))) (Undefined!7015) (MissingVacant!7015 (index!30430 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40557 (_ BitVec 32)) SeekEntryResult!7015)

(assert (=> b!716814 (= res!479738 (not (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) (MissingZero!7015 i!1173))))))

(declare-fun b!716815 () Bool)

(declare-fun res!479741 () Bool)

(assert (=> b!716815 (=> (not res!479741) (not e!402522))))

(declare-fun arrayContainsKey!0 (array!40557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716815 (= res!479741 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!716816 () Bool)

(assert (=> b!716816 (= e!402522 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (= (and start!63708 res!479740) b!716811))

(assert (= (and b!716811 res!479739) b!716812))

(assert (= (and b!716812 res!479742) b!716813))

(assert (= (and b!716813 res!479737) b!716815))

(assert (= (and b!716815 res!479741) b!716814))

(assert (= (and b!716814 res!479738) b!716816))

(declare-fun m!672899 () Bool)

(assert (=> b!716812 m!672899))

(assert (=> b!716812 m!672899))

(declare-fun m!672901 () Bool)

(assert (=> b!716812 m!672901))

(declare-fun m!672903 () Bool)

(assert (=> b!716815 m!672903))

(declare-fun m!672905 () Bool)

(assert (=> b!716813 m!672905))

(declare-fun m!672907 () Bool)

(assert (=> start!63708 m!672907))

(declare-fun m!672909 () Bool)

(assert (=> start!63708 m!672909))

(declare-fun m!672911 () Bool)

(assert (=> b!716814 m!672911))

(check-sat (not start!63708) (not b!716812) (not b!716815) (not b!716813) (not b!716814))
(check-sat)
