; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26144 () Bool)

(assert start!26144)

(declare-fun b!269715 () Bool)

(declare-fun res!133896 () Bool)

(declare-fun e!173953 () Bool)

(assert (=> b!269715 (=> (not res!133896) (not e!173953))))

(declare-datatypes ((array!13230 0))(
  ( (array!13231 (arr!6264 (Array (_ BitVec 32) (_ BitVec 64))) (size!6616 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13230)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269715 (= res!133896 (and (= (size!6616 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6616 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6616 a!3325))))))

(declare-fun b!269717 () Bool)

(declare-fun res!133893 () Bool)

(assert (=> b!269717 (=> (not res!133893) (not e!173953))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269717 (= res!133893 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269718 () Bool)

(declare-fun e!173955 () Bool)

(assert (=> b!269718 (= e!173955 false)))

(declare-datatypes ((Unit!8373 0))(
  ( (Unit!8374) )
))
(declare-fun lt!135316 () Unit!8373)

(declare-fun e!173954 () Unit!8373)

(assert (=> b!269718 (= lt!135316 e!173954)))

(declare-fun c!45464 () Bool)

(assert (=> b!269718 (= c!45464 (bvslt startIndex!26 (bvsub (size!6616 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269719 () Bool)

(declare-fun res!133892 () Bool)

(assert (=> b!269719 (=> (not res!133892) (not e!173953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269719 (= res!133892 (validKeyInArray!0 k!2581))))

(declare-fun b!269720 () Bool)

(declare-fun lt!135317 () Unit!8373)

(assert (=> b!269720 (= e!173954 lt!135317)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13230 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8373)

(assert (=> b!269720 (= lt!135317 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13230 (_ BitVec 32)) Bool)

(assert (=> b!269720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13231 (store (arr!6264 a!3325) i!1267 k!2581) (size!6616 a!3325)) mask!3868)))

(declare-fun b!269721 () Bool)

(declare-fun res!133891 () Bool)

(assert (=> b!269721 (=> (not res!133891) (not e!173955))))

(assert (=> b!269721 (= res!133891 (= startIndex!26 i!1267))))

(declare-fun b!269722 () Bool)

(declare-fun res!133889 () Bool)

(assert (=> b!269722 (=> (not res!133889) (not e!173953))))

(declare-datatypes ((List!4093 0))(
  ( (Nil!4090) (Cons!4089 (h!4756 (_ BitVec 64)) (t!9183 List!4093)) )
))
(declare-fun arrayNoDuplicates!0 (array!13230 (_ BitVec 32) List!4093) Bool)

(assert (=> b!269722 (= res!133889 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4090))))

(declare-fun b!269723 () Bool)

(declare-fun Unit!8375 () Unit!8373)

(assert (=> b!269723 (= e!173954 Unit!8375)))

(declare-fun b!269724 () Bool)

(declare-fun res!133894 () Bool)

(assert (=> b!269724 (=> (not res!133894) (not e!173955))))

(assert (=> b!269724 (= res!133894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133895 () Bool)

(assert (=> start!26144 (=> (not res!133895) (not e!173953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26144 (= res!133895 (validMask!0 mask!3868))))

(assert (=> start!26144 e!173953))

(declare-fun array_inv!4218 (array!13230) Bool)

(assert (=> start!26144 (array_inv!4218 a!3325)))

(assert (=> start!26144 true))

(declare-fun b!269716 () Bool)

(assert (=> b!269716 (= e!173953 e!173955)))

(declare-fun res!133890 () Bool)

(assert (=> b!269716 (=> (not res!133890) (not e!173955))))

(declare-datatypes ((SeekEntryResult!1433 0))(
  ( (MissingZero!1433 (index!7902 (_ BitVec 32))) (Found!1433 (index!7903 (_ BitVec 32))) (Intermediate!1433 (undefined!2245 Bool) (index!7904 (_ BitVec 32)) (x!26214 (_ BitVec 32))) (Undefined!1433) (MissingVacant!1433 (index!7905 (_ BitVec 32))) )
))
(declare-fun lt!135315 () SeekEntryResult!1433)

(assert (=> b!269716 (= res!133890 (or (= lt!135315 (MissingZero!1433 i!1267)) (= lt!135315 (MissingVacant!1433 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13230 (_ BitVec 32)) SeekEntryResult!1433)

(assert (=> b!269716 (= lt!135315 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26144 res!133895) b!269715))

(assert (= (and b!269715 res!133896) b!269719))

(assert (= (and b!269719 res!133892) b!269722))

(assert (= (and b!269722 res!133889) b!269717))

(assert (= (and b!269717 res!133893) b!269716))

(assert (= (and b!269716 res!133890) b!269724))

(assert (= (and b!269724 res!133894) b!269721))

(assert (= (and b!269721 res!133891) b!269718))

(assert (= (and b!269718 c!45464) b!269720))

(assert (= (and b!269718 (not c!45464)) b!269723))

(declare-fun m!285509 () Bool)

(assert (=> b!269720 m!285509))

(declare-fun m!285511 () Bool)

(assert (=> b!269720 m!285511))

(declare-fun m!285513 () Bool)

(assert (=> b!269720 m!285513))

(declare-fun m!285515 () Bool)

(assert (=> b!269719 m!285515))

(declare-fun m!285517 () Bool)

(assert (=> b!269716 m!285517))

(declare-fun m!285519 () Bool)

(assert (=> b!269717 m!285519))

(declare-fun m!285521 () Bool)

(assert (=> b!269722 m!285521))

(declare-fun m!285523 () Bool)

(assert (=> b!269724 m!285523))

(declare-fun m!285525 () Bool)

(assert (=> start!26144 m!285525))

(declare-fun m!285527 () Bool)

(assert (=> start!26144 m!285527))

(push 1)

(assert (not b!269716))

(assert (not b!269724))

(assert (not b!269720))

(assert (not b!269717))

(assert (not start!26144))

(assert (not b!269719))

