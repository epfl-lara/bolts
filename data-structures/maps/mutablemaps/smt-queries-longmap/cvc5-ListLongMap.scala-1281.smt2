; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26254 () Bool)

(assert start!26254)

(declare-fun b!271641 () Bool)

(declare-fun res!135672 () Bool)

(declare-fun e!174593 () Bool)

(assert (=> b!271641 (=> (not res!135672) (not e!174593))))

(declare-datatypes ((List!4148 0))(
  ( (Nil!4145) (Cons!4144 (h!4811 (_ BitVec 64)) (t!9238 List!4148)) )
))
(declare-fun contains!1957 (List!4148 (_ BitVec 64)) Bool)

(assert (=> b!271641 (= res!135672 (not (contains!1957 Nil!4145 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271642 () Bool)

(declare-fun res!135671 () Bool)

(assert (=> b!271642 (=> (not res!135671) (not e!174593))))

(declare-datatypes ((array!13340 0))(
  ( (array!13341 (arr!6319 (Array (_ BitVec 32) (_ BitVec 64))) (size!6671 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13340)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271642 (= res!135671 (validKeyInArray!0 (select (arr!6319 a!3325) startIndex!26)))))

(declare-fun b!271643 () Bool)

(declare-fun res!135675 () Bool)

(assert (=> b!271643 (=> (not res!135675) (not e!174593))))

(assert (=> b!271643 (= res!135675 (and (bvslt (size!6671 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6671 a!3325))))))

(declare-fun b!271644 () Bool)

(declare-fun res!135669 () Bool)

(assert (=> b!271644 (=> (not res!135669) (not e!174593))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13340 (_ BitVec 32)) Bool)

(assert (=> b!271644 (= res!135669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271645 () Bool)

(declare-fun res!135679 () Bool)

(declare-fun e!174594 () Bool)

(assert (=> b!271645 (=> (not res!135679) (not e!174594))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!271645 (= res!135679 (validKeyInArray!0 k!2581))))

(declare-fun b!271646 () Bool)

(assert (=> b!271646 (= e!174594 e!174593)))

(declare-fun res!135677 () Bool)

(assert (=> b!271646 (=> (not res!135677) (not e!174593))))

(declare-datatypes ((SeekEntryResult!1488 0))(
  ( (MissingZero!1488 (index!8122 (_ BitVec 32))) (Found!1488 (index!8123 (_ BitVec 32))) (Intermediate!1488 (undefined!2300 Bool) (index!8124 (_ BitVec 32)) (x!26421 (_ BitVec 32))) (Undefined!1488) (MissingVacant!1488 (index!8125 (_ BitVec 32))) )
))
(declare-fun lt!135863 () SeekEntryResult!1488)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271646 (= res!135677 (or (= lt!135863 (MissingZero!1488 i!1267)) (= lt!135863 (MissingVacant!1488 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13340 (_ BitVec 32)) SeekEntryResult!1488)

(assert (=> b!271646 (= lt!135863 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271647 () Bool)

(declare-fun res!135678 () Bool)

(assert (=> b!271647 (=> (not res!135678) (not e!174594))))

(declare-fun arrayNoDuplicates!0 (array!13340 (_ BitVec 32) List!4148) Bool)

(assert (=> b!271647 (= res!135678 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4145))))

(declare-fun b!271648 () Bool)

(declare-fun res!135676 () Bool)

(assert (=> b!271648 (=> (not res!135676) (not e!174594))))

(assert (=> b!271648 (= res!135676 (and (= (size!6671 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6671 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6671 a!3325))))))

(declare-fun b!271649 () Bool)

(declare-fun res!135670 () Bool)

(assert (=> b!271649 (=> (not res!135670) (not e!174593))))

(assert (=> b!271649 (= res!135670 (not (= startIndex!26 i!1267)))))

(declare-fun res!135674 () Bool)

(assert (=> start!26254 (=> (not res!135674) (not e!174594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26254 (= res!135674 (validMask!0 mask!3868))))

(assert (=> start!26254 e!174594))

(declare-fun array_inv!4273 (array!13340) Bool)

(assert (=> start!26254 (array_inv!4273 a!3325)))

(assert (=> start!26254 true))

(declare-fun b!271650 () Bool)

(declare-fun res!135681 () Bool)

(assert (=> b!271650 (=> (not res!135681) (not e!174593))))

(declare-fun noDuplicate!146 (List!4148) Bool)

(assert (=> b!271650 (= res!135681 (noDuplicate!146 Nil!4145))))

(declare-fun b!271651 () Bool)

(declare-fun res!135680 () Bool)

(assert (=> b!271651 (=> (not res!135680) (not e!174594))))

(declare-fun arrayContainsKey!0 (array!13340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271651 (= res!135680 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271652 () Bool)

(assert (=> b!271652 (= e!174593 false)))

(declare-fun lt!135862 () Bool)

(assert (=> b!271652 (= lt!135862 (contains!1957 Nil!4145 k!2581))))

(declare-fun b!271653 () Bool)

(declare-fun res!135673 () Bool)

(assert (=> b!271653 (=> (not res!135673) (not e!174593))))

(assert (=> b!271653 (= res!135673 (not (contains!1957 Nil!4145 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!26254 res!135674) b!271648))

(assert (= (and b!271648 res!135676) b!271645))

(assert (= (and b!271645 res!135679) b!271647))

(assert (= (and b!271647 res!135678) b!271651))

(assert (= (and b!271651 res!135680) b!271646))

(assert (= (and b!271646 res!135677) b!271644))

(assert (= (and b!271644 res!135669) b!271649))

(assert (= (and b!271649 res!135670) b!271642))

(assert (= (and b!271642 res!135671) b!271643))

(assert (= (and b!271643 res!135675) b!271650))

(assert (= (and b!271650 res!135681) b!271653))

(assert (= (and b!271653 res!135673) b!271641))

(assert (= (and b!271641 res!135672) b!271652))

(declare-fun m!286885 () Bool)

(assert (=> b!271645 m!286885))

(declare-fun m!286887 () Bool)

(assert (=> b!271647 m!286887))

(declare-fun m!286889 () Bool)

(assert (=> b!271646 m!286889))

(declare-fun m!286891 () Bool)

(assert (=> b!271651 m!286891))

(declare-fun m!286893 () Bool)

(assert (=> b!271650 m!286893))

(declare-fun m!286895 () Bool)

(assert (=> b!271644 m!286895))

(declare-fun m!286897 () Bool)

(assert (=> b!271653 m!286897))

(declare-fun m!286899 () Bool)

(assert (=> start!26254 m!286899))

(declare-fun m!286901 () Bool)

(assert (=> start!26254 m!286901))

(declare-fun m!286903 () Bool)

(assert (=> b!271642 m!286903))

(assert (=> b!271642 m!286903))

(declare-fun m!286905 () Bool)

(assert (=> b!271642 m!286905))

(declare-fun m!286907 () Bool)

(assert (=> b!271641 m!286907))

(declare-fun m!286909 () Bool)

(assert (=> b!271652 m!286909))

(push 1)

