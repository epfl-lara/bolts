; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64048 () Bool)

(assert start!64048)

(declare-fun b!718902 () Bool)

(declare-fun res!481436 () Bool)

(declare-fun e!403524 () Bool)

(assert (=> b!718902 (=> (not res!481436) (not e!403524))))

(declare-datatypes ((array!40696 0))(
  ( (array!40697 (arr!19470 (Array (_ BitVec 32) (_ BitVec 64))) (size!19891 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40696)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40696 (_ BitVec 32)) Bool)

(assert (=> b!718902 (= res!481436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718903 () Bool)

(declare-fun res!481443 () Bool)

(assert (=> b!718903 (=> (not res!481443) (not e!403524))))

(declare-datatypes ((List!13525 0))(
  ( (Nil!13522) (Cons!13521 (h!14569 (_ BitVec 64)) (t!19848 List!13525)) )
))
(declare-fun arrayNoDuplicates!0 (array!40696 (_ BitVec 32) List!13525) Bool)

(assert (=> b!718903 (= res!481443 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13522))))

(declare-fun b!718904 () Bool)

(declare-fun e!403522 () Bool)

(assert (=> b!718904 (= e!403522 e!403524)))

(declare-fun res!481440 () Bool)

(assert (=> b!718904 (=> (not res!481440) (not e!403524))))

(declare-datatypes ((SeekEntryResult!7077 0))(
  ( (MissingZero!7077 (index!30675 (_ BitVec 32))) (Found!7077 (index!30676 (_ BitVec 32))) (Intermediate!7077 (undefined!7889 Bool) (index!30677 (_ BitVec 32)) (x!61717 (_ BitVec 32))) (Undefined!7077) (MissingVacant!7077 (index!30678 (_ BitVec 32))) )
))
(declare-fun lt!319484 () SeekEntryResult!7077)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718904 (= res!481440 (or (= lt!319484 (MissingZero!7077 i!1173)) (= lt!319484 (MissingVacant!7077 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40696 (_ BitVec 32)) SeekEntryResult!7077)

(assert (=> b!718904 (= lt!319484 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718905 () Bool)

(declare-fun res!481437 () Bool)

(assert (=> b!718905 (=> (not res!481437) (not e!403522))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718905 (= res!481437 (validKeyInArray!0 (select (arr!19470 a!3186) j!159)))))

(declare-fun b!718906 () Bool)

(declare-fun res!481441 () Bool)

(assert (=> b!718906 (=> (not res!481441) (not e!403522))))

(declare-fun arrayContainsKey!0 (array!40696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718906 (= res!481441 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718907 () Bool)

(assert (=> b!718907 (= e!403524 false)))

(declare-fun lt!319483 () SeekEntryResult!7077)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40696 (_ BitVec 32)) SeekEntryResult!7077)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718907 (= lt!319483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19470 a!3186) j!159) mask!3328) (select (arr!19470 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!718908 () Bool)

(declare-fun res!481439 () Bool)

(assert (=> b!718908 (=> (not res!481439) (not e!403524))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718908 (= res!481439 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19891 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19891 a!3186))))))

(declare-fun b!718910 () Bool)

(declare-fun res!481435 () Bool)

(assert (=> b!718910 (=> (not res!481435) (not e!403522))))

(assert (=> b!718910 (= res!481435 (validKeyInArray!0 k!2102))))

(declare-fun res!481438 () Bool)

(assert (=> start!64048 (=> (not res!481438) (not e!403522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64048 (= res!481438 (validMask!0 mask!3328))))

(assert (=> start!64048 e!403522))

(assert (=> start!64048 true))

(declare-fun array_inv!15244 (array!40696) Bool)

(assert (=> start!64048 (array_inv!15244 a!3186)))

(declare-fun b!718909 () Bool)

(declare-fun res!481442 () Bool)

(assert (=> b!718909 (=> (not res!481442) (not e!403522))))

(assert (=> b!718909 (= res!481442 (and (= (size!19891 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19891 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19891 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64048 res!481438) b!718909))

(assert (= (and b!718909 res!481442) b!718905))

(assert (= (and b!718905 res!481437) b!718910))

(assert (= (and b!718910 res!481435) b!718906))

(assert (= (and b!718906 res!481441) b!718904))

(assert (= (and b!718904 res!481440) b!718902))

(assert (= (and b!718902 res!481436) b!718903))

(assert (= (and b!718903 res!481443) b!718908))

(assert (= (and b!718908 res!481439) b!718907))

(declare-fun m!674485 () Bool)

(assert (=> b!718903 m!674485))

(declare-fun m!674487 () Bool)

(assert (=> b!718904 m!674487))

(declare-fun m!674489 () Bool)

(assert (=> b!718910 m!674489))

(declare-fun m!674491 () Bool)

(assert (=> b!718906 m!674491))

(declare-fun m!674493 () Bool)

(assert (=> b!718907 m!674493))

(assert (=> b!718907 m!674493))

(declare-fun m!674495 () Bool)

(assert (=> b!718907 m!674495))

(assert (=> b!718907 m!674495))

(assert (=> b!718907 m!674493))

(declare-fun m!674497 () Bool)

(assert (=> b!718907 m!674497))

(declare-fun m!674499 () Bool)

(assert (=> start!64048 m!674499))

(declare-fun m!674501 () Bool)

(assert (=> start!64048 m!674501))

(assert (=> b!718905 m!674493))

(assert (=> b!718905 m!674493))

(declare-fun m!674503 () Bool)

(assert (=> b!718905 m!674503))

(declare-fun m!674505 () Bool)

(assert (=> b!718902 m!674505))

(push 1)

