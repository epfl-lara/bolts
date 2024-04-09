; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63702 () Bool)

(assert start!63702)

(declare-fun b!716761 () Bool)

(declare-fun res!479689 () Bool)

(declare-fun e!402504 () Bool)

(assert (=> b!716761 (=> (not res!479689) (not e!402504))))

(declare-datatypes ((array!40551 0))(
  ( (array!40552 (arr!19405 (Array (_ BitVec 32) (_ BitVec 64))) (size!19826 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40551)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716761 (= res!479689 (and (= (size!19826 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19826 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19826 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479690 () Bool)

(assert (=> start!63702 (=> (not res!479690) (not e!402504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63702 (= res!479690 (validMask!0 mask!3328))))

(assert (=> start!63702 e!402504))

(declare-fun array_inv!15179 (array!40551) Bool)

(assert (=> start!63702 (array_inv!15179 a!3186)))

(assert (=> start!63702 true))

(declare-fun b!716762 () Bool)

(assert (=> b!716762 (= e!402504 false)))

(declare-datatypes ((SeekEntryResult!7012 0))(
  ( (MissingZero!7012 (index!30415 (_ BitVec 32))) (Found!7012 (index!30416 (_ BitVec 32))) (Intermediate!7012 (undefined!7824 Bool) (index!30417 (_ BitVec 32)) (x!61473 (_ BitVec 32))) (Undefined!7012) (MissingVacant!7012 (index!30418 (_ BitVec 32))) )
))
(declare-fun lt!318932 () SeekEntryResult!7012)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40551 (_ BitVec 32)) SeekEntryResult!7012)

(assert (=> b!716762 (= lt!318932 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!716763 () Bool)

(declare-fun res!479687 () Bool)

(assert (=> b!716763 (=> (not res!479687) (not e!402504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716763 (= res!479687 (validKeyInArray!0 k0!2102))))

(declare-fun b!716764 () Bool)

(declare-fun res!479688 () Bool)

(assert (=> b!716764 (=> (not res!479688) (not e!402504))))

(assert (=> b!716764 (= res!479688 (validKeyInArray!0 (select (arr!19405 a!3186) j!159)))))

(declare-fun b!716765 () Bool)

(declare-fun res!479691 () Bool)

(assert (=> b!716765 (=> (not res!479691) (not e!402504))))

(declare-fun arrayContainsKey!0 (array!40551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716765 (= res!479691 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63702 res!479690) b!716761))

(assert (= (and b!716761 res!479689) b!716764))

(assert (= (and b!716764 res!479688) b!716763))

(assert (= (and b!716763 res!479687) b!716765))

(assert (= (and b!716765 res!479691) b!716762))

(declare-fun m!672857 () Bool)

(assert (=> b!716763 m!672857))

(declare-fun m!672859 () Bool)

(assert (=> start!63702 m!672859))

(declare-fun m!672861 () Bool)

(assert (=> start!63702 m!672861))

(declare-fun m!672863 () Bool)

(assert (=> b!716762 m!672863))

(declare-fun m!672865 () Bool)

(assert (=> b!716764 m!672865))

(assert (=> b!716764 m!672865))

(declare-fun m!672867 () Bool)

(assert (=> b!716764 m!672867))

(declare-fun m!672869 () Bool)

(assert (=> b!716765 m!672869))

(check-sat (not b!716763) (not b!716765) (not b!716762) (not b!716764) (not start!63702))
