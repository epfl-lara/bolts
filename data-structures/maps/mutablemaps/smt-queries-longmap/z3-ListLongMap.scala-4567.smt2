; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63720 () Bool)

(assert start!63720)

(declare-fun b!716905 () Bool)

(declare-fun res!479833 () Bool)

(declare-fun e!402557 () Bool)

(assert (=> b!716905 (=> (not res!479833) (not e!402557))))

(declare-datatypes ((array!40569 0))(
  ( (array!40570 (arr!19414 (Array (_ BitVec 32) (_ BitVec 64))) (size!19835 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40569)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716905 (= res!479833 (and (= (size!19835 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19835 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19835 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716906 () Bool)

(declare-fun res!479835 () Bool)

(assert (=> b!716906 (=> (not res!479835) (not e!402557))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716906 (= res!479835 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!479831 () Bool)

(assert (=> start!63720 (=> (not res!479831) (not e!402557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63720 (= res!479831 (validMask!0 mask!3328))))

(assert (=> start!63720 e!402557))

(declare-fun array_inv!15188 (array!40569) Bool)

(assert (=> start!63720 (array_inv!15188 a!3186)))

(assert (=> start!63720 true))

(declare-fun b!716907 () Bool)

(declare-fun res!479834 () Bool)

(assert (=> b!716907 (=> (not res!479834) (not e!402557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716907 (= res!479834 (validKeyInArray!0 k0!2102))))

(declare-fun b!716908 () Bool)

(declare-fun res!479832 () Bool)

(assert (=> b!716908 (=> (not res!479832) (not e!402557))))

(assert (=> b!716908 (= res!479832 (validKeyInArray!0 (select (arr!19414 a!3186) j!159)))))

(declare-fun b!716909 () Bool)

(assert (=> b!716909 (= e!402557 false)))

(declare-datatypes ((SeekEntryResult!7021 0))(
  ( (MissingZero!7021 (index!30451 (_ BitVec 32))) (Found!7021 (index!30452 (_ BitVec 32))) (Intermediate!7021 (undefined!7833 Bool) (index!30453 (_ BitVec 32)) (x!61506 (_ BitVec 32))) (Undefined!7021) (MissingVacant!7021 (index!30454 (_ BitVec 32))) )
))
(declare-fun lt!318950 () SeekEntryResult!7021)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40569 (_ BitVec 32)) SeekEntryResult!7021)

(assert (=> b!716909 (= lt!318950 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!63720 res!479831) b!716905))

(assert (= (and b!716905 res!479833) b!716908))

(assert (= (and b!716908 res!479832) b!716907))

(assert (= (and b!716907 res!479834) b!716906))

(assert (= (and b!716906 res!479835) b!716909))

(declare-fun m!672983 () Bool)

(assert (=> b!716907 m!672983))

(declare-fun m!672985 () Bool)

(assert (=> b!716908 m!672985))

(assert (=> b!716908 m!672985))

(declare-fun m!672987 () Bool)

(assert (=> b!716908 m!672987))

(declare-fun m!672989 () Bool)

(assert (=> start!63720 m!672989))

(declare-fun m!672991 () Bool)

(assert (=> start!63720 m!672991))

(declare-fun m!672993 () Bool)

(assert (=> b!716906 m!672993))

(declare-fun m!672995 () Bool)

(assert (=> b!716909 m!672995))

(check-sat (not b!716906) (not b!716908) (not b!716909) (not start!63720) (not b!716907))
