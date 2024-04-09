; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64086 () Bool)

(assert start!64086)

(declare-fun b!719433 () Bool)

(declare-fun e!403693 () Bool)

(assert (=> b!719433 (= e!403693 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7096 0))(
  ( (MissingZero!7096 (index!30751 (_ BitVec 32))) (Found!7096 (index!30752 (_ BitVec 32))) (Intermediate!7096 (undefined!7908 Bool) (index!30753 (_ BitVec 32)) (x!61784 (_ BitVec 32))) (Undefined!7096) (MissingVacant!7096 (index!30754 (_ BitVec 32))) )
))
(declare-fun lt!319579 () SeekEntryResult!7096)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40734 0))(
  ( (array!40735 (arr!19489 (Array (_ BitVec 32) (_ BitVec 64))) (size!19910 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40734)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40734 (_ BitVec 32)) SeekEntryResult!7096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719433 (= lt!319579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19489 a!3186) j!159) mask!3328) (select (arr!19489 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719434 () Bool)

(declare-fun res!481974 () Bool)

(declare-fun e!403694 () Bool)

(assert (=> b!719434 (=> (not res!481974) (not e!403694))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719434 (= res!481974 (and (= (size!19910 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19910 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19910 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719435 () Bool)

(declare-fun res!481971 () Bool)

(assert (=> b!719435 (=> (not res!481971) (not e!403693))))

(declare-datatypes ((List!13544 0))(
  ( (Nil!13541) (Cons!13540 (h!14588 (_ BitVec 64)) (t!19867 List!13544)) )
))
(declare-fun arrayNoDuplicates!0 (array!40734 (_ BitVec 32) List!13544) Bool)

(assert (=> b!719435 (= res!481971 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13541))))

(declare-fun res!481967 () Bool)

(assert (=> start!64086 (=> (not res!481967) (not e!403694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64086 (= res!481967 (validMask!0 mask!3328))))

(assert (=> start!64086 e!403694))

(assert (=> start!64086 true))

(declare-fun array_inv!15263 (array!40734) Bool)

(assert (=> start!64086 (array_inv!15263 a!3186)))

(declare-fun b!719436 () Bool)

(declare-fun res!481973 () Bool)

(assert (=> b!719436 (=> (not res!481973) (not e!403693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40734 (_ BitVec 32)) Bool)

(assert (=> b!719436 (= res!481973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719437 () Bool)

(declare-fun res!481972 () Bool)

(assert (=> b!719437 (=> (not res!481972) (not e!403694))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719437 (= res!481972 (validKeyInArray!0 k0!2102))))

(declare-fun b!719438 () Bool)

(assert (=> b!719438 (= e!403694 e!403693)))

(declare-fun res!481966 () Bool)

(assert (=> b!719438 (=> (not res!481966) (not e!403693))))

(declare-fun lt!319580 () SeekEntryResult!7096)

(assert (=> b!719438 (= res!481966 (or (= lt!319580 (MissingZero!7096 i!1173)) (= lt!319580 (MissingVacant!7096 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40734 (_ BitVec 32)) SeekEntryResult!7096)

(assert (=> b!719438 (= lt!319580 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719439 () Bool)

(declare-fun res!481970 () Bool)

(assert (=> b!719439 (=> (not res!481970) (not e!403694))))

(assert (=> b!719439 (= res!481970 (validKeyInArray!0 (select (arr!19489 a!3186) j!159)))))

(declare-fun b!719440 () Bool)

(declare-fun res!481969 () Bool)

(assert (=> b!719440 (=> (not res!481969) (not e!403694))))

(declare-fun arrayContainsKey!0 (array!40734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719440 (= res!481969 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719441 () Bool)

(declare-fun res!481968 () Bool)

(assert (=> b!719441 (=> (not res!481968) (not e!403693))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719441 (= res!481968 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19910 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19910 a!3186))))))

(assert (= (and start!64086 res!481967) b!719434))

(assert (= (and b!719434 res!481974) b!719439))

(assert (= (and b!719439 res!481970) b!719437))

(assert (= (and b!719437 res!481972) b!719440))

(assert (= (and b!719440 res!481969) b!719438))

(assert (= (and b!719438 res!481966) b!719436))

(assert (= (and b!719436 res!481973) b!719435))

(assert (= (and b!719435 res!481971) b!719441))

(assert (= (and b!719441 res!481968) b!719433))

(declare-fun m!674915 () Bool)

(assert (=> b!719438 m!674915))

(declare-fun m!674917 () Bool)

(assert (=> b!719437 m!674917))

(declare-fun m!674919 () Bool)

(assert (=> b!719439 m!674919))

(assert (=> b!719439 m!674919))

(declare-fun m!674921 () Bool)

(assert (=> b!719439 m!674921))

(declare-fun m!674923 () Bool)

(assert (=> b!719440 m!674923))

(declare-fun m!674925 () Bool)

(assert (=> start!64086 m!674925))

(declare-fun m!674927 () Bool)

(assert (=> start!64086 m!674927))

(declare-fun m!674929 () Bool)

(assert (=> b!719435 m!674929))

(assert (=> b!719433 m!674919))

(assert (=> b!719433 m!674919))

(declare-fun m!674931 () Bool)

(assert (=> b!719433 m!674931))

(assert (=> b!719433 m!674931))

(assert (=> b!719433 m!674919))

(declare-fun m!674933 () Bool)

(assert (=> b!719433 m!674933))

(declare-fun m!674935 () Bool)

(assert (=> b!719436 m!674935))

(check-sat (not b!719433) (not start!64086) (not b!719440) (not b!719435) (not b!719438) (not b!719437) (not b!719439) (not b!719436))
(check-sat)
