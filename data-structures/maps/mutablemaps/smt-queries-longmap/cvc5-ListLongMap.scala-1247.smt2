; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26050 () Bool)

(assert start!26050)

(declare-fun b!268586 () Bool)

(declare-fun res!132905 () Bool)

(declare-fun e!173460 () Bool)

(assert (=> b!268586 (=> (not res!132905) (not e!173460))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268586 (= res!132905 (validKeyInArray!0 k!2581))))

(declare-fun b!268587 () Bool)

(declare-fun e!173459 () Bool)

(assert (=> b!268587 (= e!173459 false)))

(declare-fun lt!134962 () Bool)

(declare-datatypes ((array!13136 0))(
  ( (array!13137 (arr!6217 (Array (_ BitVec 32) (_ BitVec 64))) (size!6569 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13136)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13136 (_ BitVec 32)) Bool)

(assert (=> b!268587 (= lt!134962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268588 () Bool)

(assert (=> b!268588 (= e!173460 e!173459)))

(declare-fun res!132901 () Bool)

(assert (=> b!268588 (=> (not res!132901) (not e!173459))))

(declare-datatypes ((SeekEntryResult!1386 0))(
  ( (MissingZero!1386 (index!7714 (_ BitVec 32))) (Found!1386 (index!7715 (_ BitVec 32))) (Intermediate!1386 (undefined!2198 Bool) (index!7716 (_ BitVec 32)) (x!26047 (_ BitVec 32))) (Undefined!1386) (MissingVacant!1386 (index!7717 (_ BitVec 32))) )
))
(declare-fun lt!134963 () SeekEntryResult!1386)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268588 (= res!132901 (or (= lt!134963 (MissingZero!1386 i!1267)) (= lt!134963 (MissingVacant!1386 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13136 (_ BitVec 32)) SeekEntryResult!1386)

(assert (=> b!268588 (= lt!134963 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268589 () Bool)

(declare-fun res!132902 () Bool)

(assert (=> b!268589 (=> (not res!132902) (not e!173460))))

(declare-datatypes ((List!4046 0))(
  ( (Nil!4043) (Cons!4042 (h!4709 (_ BitVec 64)) (t!9136 List!4046)) )
))
(declare-fun arrayNoDuplicates!0 (array!13136 (_ BitVec 32) List!4046) Bool)

(assert (=> b!268589 (= res!132902 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4043))))

(declare-fun b!268590 () Bool)

(declare-fun res!132903 () Bool)

(assert (=> b!268590 (=> (not res!132903) (not e!173460))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268590 (= res!132903 (and (= (size!6569 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6569 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6569 a!3325))))))

(declare-fun b!268585 () Bool)

(declare-fun res!132906 () Bool)

(assert (=> b!268585 (=> (not res!132906) (not e!173460))))

(declare-fun arrayContainsKey!0 (array!13136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268585 (= res!132906 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132904 () Bool)

(assert (=> start!26050 (=> (not res!132904) (not e!173460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26050 (= res!132904 (validMask!0 mask!3868))))

(assert (=> start!26050 e!173460))

(declare-fun array_inv!4171 (array!13136) Bool)

(assert (=> start!26050 (array_inv!4171 a!3325)))

(assert (=> start!26050 true))

(assert (= (and start!26050 res!132904) b!268590))

(assert (= (and b!268590 res!132903) b!268586))

(assert (= (and b!268586 res!132905) b!268589))

(assert (= (and b!268589 res!132902) b!268585))

(assert (= (and b!268585 res!132906) b!268588))

(assert (= (and b!268588 res!132901) b!268587))

(declare-fun m!284713 () Bool)

(assert (=> b!268588 m!284713))

(declare-fun m!284715 () Bool)

(assert (=> b!268586 m!284715))

(declare-fun m!284717 () Bool)

(assert (=> start!26050 m!284717))

(declare-fun m!284719 () Bool)

(assert (=> start!26050 m!284719))

(declare-fun m!284721 () Bool)

(assert (=> b!268589 m!284721))

(declare-fun m!284723 () Bool)

(assert (=> b!268585 m!284723))

(declare-fun m!284725 () Bool)

(assert (=> b!268587 m!284725))

(push 1)

