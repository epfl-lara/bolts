; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64044 () Bool)

(assert start!64044)

(declare-fun b!718844 () Bool)

(declare-fun res!481379 () Bool)

(declare-fun e!403506 () Bool)

(assert (=> b!718844 (=> (not res!481379) (not e!403506))))

(declare-datatypes ((array!40692 0))(
  ( (array!40693 (arr!19468 (Array (_ BitVec 32) (_ BitVec 64))) (size!19889 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40692)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40692 (_ BitVec 32)) Bool)

(assert (=> b!718844 (= res!481379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!718845 () Bool)

(assert (=> b!718845 (= e!403506 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19468 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!718846 () Bool)

(declare-fun res!481378 () Bool)

(assert (=> b!718846 (=> (not res!481378) (not e!403506))))

(declare-datatypes ((List!13523 0))(
  ( (Nil!13520) (Cons!13519 (h!14567 (_ BitVec 64)) (t!19846 List!13523)) )
))
(declare-fun arrayNoDuplicates!0 (array!40692 (_ BitVec 32) List!13523) Bool)

(assert (=> b!718846 (= res!481378 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13520))))

(declare-fun b!718847 () Bool)

(declare-fun res!481383 () Bool)

(declare-fun e!403504 () Bool)

(assert (=> b!718847 (=> (not res!481383) (not e!403504))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718847 (= res!481383 (validKeyInArray!0 k0!2102))))

(declare-fun b!718848 () Bool)

(declare-fun res!481386 () Bool)

(assert (=> b!718848 (=> (not res!481386) (not e!403504))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718848 (= res!481386 (validKeyInArray!0 (select (arr!19468 a!3186) j!159)))))

(declare-fun b!718849 () Bool)

(assert (=> b!718849 (= e!403504 e!403506)))

(declare-fun res!481384 () Bool)

(assert (=> b!718849 (=> (not res!481384) (not e!403506))))

(declare-datatypes ((SeekEntryResult!7075 0))(
  ( (MissingZero!7075 (index!30667 (_ BitVec 32))) (Found!7075 (index!30668 (_ BitVec 32))) (Intermediate!7075 (undefined!7887 Bool) (index!30669 (_ BitVec 32)) (x!61707 (_ BitVec 32))) (Undefined!7075) (MissingVacant!7075 (index!30670 (_ BitVec 32))) )
))
(declare-fun lt!319475 () SeekEntryResult!7075)

(assert (=> b!718849 (= res!481384 (or (= lt!319475 (MissingZero!7075 i!1173)) (= lt!319475 (MissingVacant!7075 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40692 (_ BitVec 32)) SeekEntryResult!7075)

(assert (=> b!718849 (= lt!319475 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718850 () Bool)

(declare-fun res!481377 () Bool)

(assert (=> b!718850 (=> (not res!481377) (not e!403504))))

(declare-fun arrayContainsKey!0 (array!40692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718850 (= res!481377 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718851 () Bool)

(declare-fun res!481382 () Bool)

(assert (=> b!718851 (=> (not res!481382) (not e!403506))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!718851 (= res!481382 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19889 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19889 a!3186))))))

(declare-fun b!718852 () Bool)

(declare-fun res!481380 () Bool)

(assert (=> b!718852 (=> (not res!481380) (not e!403506))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40692 (_ BitVec 32)) SeekEntryResult!7075)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718852 (= res!481380 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19468 a!3186) j!159) mask!3328) (select (arr!19468 a!3186) j!159) a!3186 mask!3328) (Intermediate!7075 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!718853 () Bool)

(declare-fun res!481381 () Bool)

(assert (=> b!718853 (=> (not res!481381) (not e!403504))))

(assert (=> b!718853 (= res!481381 (and (= (size!19889 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19889 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19889 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481385 () Bool)

(assert (=> start!64044 (=> (not res!481385) (not e!403504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64044 (= res!481385 (validMask!0 mask!3328))))

(assert (=> start!64044 e!403504))

(assert (=> start!64044 true))

(declare-fun array_inv!15242 (array!40692) Bool)

(assert (=> start!64044 (array_inv!15242 a!3186)))

(assert (= (and start!64044 res!481385) b!718853))

(assert (= (and b!718853 res!481381) b!718848))

(assert (= (and b!718848 res!481386) b!718847))

(assert (= (and b!718847 res!481383) b!718850))

(assert (= (and b!718850 res!481377) b!718849))

(assert (= (and b!718849 res!481384) b!718844))

(assert (= (and b!718844 res!481379) b!718846))

(assert (= (and b!718846 res!481378) b!718851))

(assert (= (and b!718851 res!481382) b!718852))

(assert (= (and b!718852 res!481380) b!718845))

(declare-fun m!674437 () Bool)

(assert (=> start!64044 m!674437))

(declare-fun m!674439 () Bool)

(assert (=> start!64044 m!674439))

(declare-fun m!674441 () Bool)

(assert (=> b!718848 m!674441))

(assert (=> b!718848 m!674441))

(declare-fun m!674443 () Bool)

(assert (=> b!718848 m!674443))

(declare-fun m!674445 () Bool)

(assert (=> b!718844 m!674445))

(declare-fun m!674447 () Bool)

(assert (=> b!718845 m!674447))

(assert (=> b!718852 m!674441))

(assert (=> b!718852 m!674441))

(declare-fun m!674449 () Bool)

(assert (=> b!718852 m!674449))

(assert (=> b!718852 m!674449))

(assert (=> b!718852 m!674441))

(declare-fun m!674451 () Bool)

(assert (=> b!718852 m!674451))

(declare-fun m!674453 () Bool)

(assert (=> b!718850 m!674453))

(declare-fun m!674455 () Bool)

(assert (=> b!718847 m!674455))

(declare-fun m!674457 () Bool)

(assert (=> b!718849 m!674457))

(declare-fun m!674459 () Bool)

(assert (=> b!718846 m!674459))

(check-sat (not start!64044) (not b!718847) (not b!718852) (not b!718846) (not b!718849) (not b!718848) (not b!718844) (not b!718850))
(check-sat)
