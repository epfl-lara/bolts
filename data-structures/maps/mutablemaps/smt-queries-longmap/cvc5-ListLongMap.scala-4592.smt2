; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64084 () Bool)

(assert start!64084)

(declare-fun res!481945 () Bool)

(declare-fun e!403684 () Bool)

(assert (=> start!64084 (=> (not res!481945) (not e!403684))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64084 (= res!481945 (validMask!0 mask!3328))))

(assert (=> start!64084 e!403684))

(assert (=> start!64084 true))

(declare-datatypes ((array!40732 0))(
  ( (array!40733 (arr!19488 (Array (_ BitVec 32) (_ BitVec 64))) (size!19909 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40732)

(declare-fun array_inv!15262 (array!40732) Bool)

(assert (=> start!64084 (array_inv!15262 a!3186)))

(declare-fun b!719406 () Bool)

(declare-fun e!403685 () Bool)

(assert (=> b!719406 (= e!403685 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7095 0))(
  ( (MissingZero!7095 (index!30747 (_ BitVec 32))) (Found!7095 (index!30748 (_ BitVec 32))) (Intermediate!7095 (undefined!7907 Bool) (index!30749 (_ BitVec 32)) (x!61783 (_ BitVec 32))) (Undefined!7095) (MissingVacant!7095 (index!30750 (_ BitVec 32))) )
))
(declare-fun lt!319574 () SeekEntryResult!7095)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40732 (_ BitVec 32)) SeekEntryResult!7095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719406 (= lt!319574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19488 a!3186) j!159) mask!3328) (select (arr!19488 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719407 () Bool)

(declare-fun res!481941 () Bool)

(assert (=> b!719407 (=> (not res!481941) (not e!403685))))

(declare-datatypes ((List!13543 0))(
  ( (Nil!13540) (Cons!13539 (h!14587 (_ BitVec 64)) (t!19866 List!13543)) )
))
(declare-fun arrayNoDuplicates!0 (array!40732 (_ BitVec 32) List!13543) Bool)

(assert (=> b!719407 (= res!481941 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13540))))

(declare-fun b!719408 () Bool)

(declare-fun res!481946 () Bool)

(assert (=> b!719408 (=> (not res!481946) (not e!403684))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719408 (= res!481946 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719409 () Bool)

(declare-fun res!481940 () Bool)

(assert (=> b!719409 (=> (not res!481940) (not e!403684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719409 (= res!481940 (validKeyInArray!0 k!2102))))

(declare-fun b!719410 () Bool)

(declare-fun res!481943 () Bool)

(assert (=> b!719410 (=> (not res!481943) (not e!403685))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719410 (= res!481943 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19909 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19909 a!3186))))))

(declare-fun b!719411 () Bool)

(declare-fun res!481947 () Bool)

(assert (=> b!719411 (=> (not res!481947) (not e!403685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40732 (_ BitVec 32)) Bool)

(assert (=> b!719411 (= res!481947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719412 () Bool)

(declare-fun res!481942 () Bool)

(assert (=> b!719412 (=> (not res!481942) (not e!403684))))

(assert (=> b!719412 (= res!481942 (validKeyInArray!0 (select (arr!19488 a!3186) j!159)))))

(declare-fun b!719413 () Bool)

(assert (=> b!719413 (= e!403684 e!403685)))

(declare-fun res!481944 () Bool)

(assert (=> b!719413 (=> (not res!481944) (not e!403685))))

(declare-fun lt!319573 () SeekEntryResult!7095)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719413 (= res!481944 (or (= lt!319573 (MissingZero!7095 i!1173)) (= lt!319573 (MissingVacant!7095 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40732 (_ BitVec 32)) SeekEntryResult!7095)

(assert (=> b!719413 (= lt!319573 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719414 () Bool)

(declare-fun res!481939 () Bool)

(assert (=> b!719414 (=> (not res!481939) (not e!403684))))

(assert (=> b!719414 (= res!481939 (and (= (size!19909 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19909 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19909 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64084 res!481945) b!719414))

(assert (= (and b!719414 res!481939) b!719412))

(assert (= (and b!719412 res!481942) b!719409))

(assert (= (and b!719409 res!481940) b!719408))

(assert (= (and b!719408 res!481946) b!719413))

(assert (= (and b!719413 res!481944) b!719411))

(assert (= (and b!719411 res!481947) b!719407))

(assert (= (and b!719407 res!481941) b!719410))

(assert (= (and b!719410 res!481943) b!719406))

(declare-fun m!674893 () Bool)

(assert (=> b!719409 m!674893))

(declare-fun m!674895 () Bool)

(assert (=> b!719408 m!674895))

(declare-fun m!674897 () Bool)

(assert (=> b!719407 m!674897))

(declare-fun m!674899 () Bool)

(assert (=> b!719406 m!674899))

(assert (=> b!719406 m!674899))

(declare-fun m!674901 () Bool)

(assert (=> b!719406 m!674901))

(assert (=> b!719406 m!674901))

(assert (=> b!719406 m!674899))

(declare-fun m!674903 () Bool)

(assert (=> b!719406 m!674903))

(declare-fun m!674905 () Bool)

(assert (=> b!719411 m!674905))

(declare-fun m!674907 () Bool)

(assert (=> b!719413 m!674907))

(assert (=> b!719412 m!674899))

(assert (=> b!719412 m!674899))

(declare-fun m!674909 () Bool)

(assert (=> b!719412 m!674909))

(declare-fun m!674911 () Bool)

(assert (=> start!64084 m!674911))

(declare-fun m!674913 () Bool)

(assert (=> start!64084 m!674913))

(push 1)

