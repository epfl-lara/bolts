; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26158 () Bool)

(assert start!26158)

(declare-fun b!269925 () Bool)

(declare-fun res!134059 () Bool)

(declare-fun e!174057 () Bool)

(assert (=> b!269925 (=> (not res!134059) (not e!174057))))

(declare-datatypes ((array!13244 0))(
  ( (array!13245 (arr!6271 (Array (_ BitVec 32) (_ BitVec 64))) (size!6623 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13244)

(declare-datatypes ((List!4100 0))(
  ( (Nil!4097) (Cons!4096 (h!4763 (_ BitVec 64)) (t!9190 List!4100)) )
))
(declare-fun arrayNoDuplicates!0 (array!13244 (_ BitVec 32) List!4100) Bool)

(assert (=> b!269925 (= res!134059 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4097))))

(declare-fun b!269926 () Bool)

(declare-fun res!134063 () Bool)

(assert (=> b!269926 (=> (not res!134063) (not e!174057))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269926 (= res!134063 (and (= (size!6623 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6623 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6623 a!3325))))))

(declare-fun b!269927 () Bool)

(declare-fun res!134057 () Bool)

(declare-fun e!174059 () Bool)

(assert (=> b!269927 (=> (not res!134057) (not e!174059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13244 (_ BitVec 32)) Bool)

(assert (=> b!269927 (= res!134057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269928 () Bool)

(declare-fun e!174058 () Bool)

(assert (=> b!269928 (= e!174058 (not true))))

(declare-fun lt!135420 () array!13244)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1440 0))(
  ( (MissingZero!1440 (index!7930 (_ BitVec 32))) (Found!1440 (index!7931 (_ BitVec 32))) (Intermediate!1440 (undefined!2252 Bool) (index!7932 (_ BitVec 32)) (x!26245 (_ BitVec 32))) (Undefined!1440) (MissingVacant!1440 (index!7933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13244 (_ BitVec 32)) SeekEntryResult!1440)

(assert (=> b!269928 (= (seekEntryOrOpen!0 k!2581 lt!135420 mask!3868) (Found!1440 i!1267))))

(declare-datatypes ((Unit!8394 0))(
  ( (Unit!8395) )
))
(declare-fun lt!135418 () Unit!8394)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13244 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8394)

(assert (=> b!269928 (= lt!135418 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135422 () Unit!8394)

(declare-fun e!174061 () Unit!8394)

(assert (=> b!269928 (= lt!135422 e!174061)))

(declare-fun c!45485 () Bool)

(assert (=> b!269928 (= c!45485 (bvslt startIndex!26 (bvsub (size!6623 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269929 () Bool)

(declare-fun res!134061 () Bool)

(assert (=> b!269929 (=> (not res!134061) (not e!174057))))

(declare-fun arrayContainsKey!0 (array!13244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269929 (= res!134061 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269930 () Bool)

(declare-fun lt!135421 () Unit!8394)

(assert (=> b!269930 (= e!174061 lt!135421)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13244 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8394)

(assert (=> b!269930 (= lt!135421 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269930 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135420 mask!3868)))

(declare-fun b!269932 () Bool)

(assert (=> b!269932 (= e!174059 e!174058)))

(declare-fun res!134062 () Bool)

(assert (=> b!269932 (=> (not res!134062) (not e!174058))))

(assert (=> b!269932 (= res!134062 (= startIndex!26 i!1267))))

(assert (=> b!269932 (= lt!135420 (array!13245 (store (arr!6271 a!3325) i!1267 k!2581) (size!6623 a!3325)))))

(declare-fun b!269933 () Bool)

(declare-fun res!134064 () Bool)

(assert (=> b!269933 (=> (not res!134064) (not e!174057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269933 (= res!134064 (validKeyInArray!0 k!2581))))

(declare-fun b!269934 () Bool)

(assert (=> b!269934 (= e!174057 e!174059)))

(declare-fun res!134060 () Bool)

(assert (=> b!269934 (=> (not res!134060) (not e!174059))))

(declare-fun lt!135419 () SeekEntryResult!1440)

(assert (=> b!269934 (= res!134060 (or (= lt!135419 (MissingZero!1440 i!1267)) (= lt!135419 (MissingVacant!1440 i!1267))))))

(assert (=> b!269934 (= lt!135419 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!134058 () Bool)

(assert (=> start!26158 (=> (not res!134058) (not e!174057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26158 (= res!134058 (validMask!0 mask!3868))))

(assert (=> start!26158 e!174057))

(declare-fun array_inv!4225 (array!13244) Bool)

(assert (=> start!26158 (array_inv!4225 a!3325)))

(assert (=> start!26158 true))

(declare-fun b!269931 () Bool)

(declare-fun Unit!8396 () Unit!8394)

(assert (=> b!269931 (= e!174061 Unit!8396)))

(assert (= (and start!26158 res!134058) b!269926))

(assert (= (and b!269926 res!134063) b!269933))

(assert (= (and b!269933 res!134064) b!269925))

(assert (= (and b!269925 res!134059) b!269929))

(assert (= (and b!269929 res!134061) b!269934))

(assert (= (and b!269934 res!134060) b!269927))

(assert (= (and b!269927 res!134057) b!269932))

(assert (= (and b!269932 res!134062) b!269928))

(assert (= (and b!269928 c!45485) b!269930))

(assert (= (and b!269928 (not c!45485)) b!269931))

(declare-fun m!285673 () Bool)

(assert (=> b!269932 m!285673))

(declare-fun m!285675 () Bool)

(assert (=> b!269934 m!285675))

(declare-fun m!285677 () Bool)

(assert (=> b!269930 m!285677))

(declare-fun m!285679 () Bool)

(assert (=> b!269930 m!285679))

(declare-fun m!285681 () Bool)

(assert (=> b!269925 m!285681))

(declare-fun m!285683 () Bool)

(assert (=> b!269927 m!285683))

(declare-fun m!285685 () Bool)

(assert (=> start!26158 m!285685))

(declare-fun m!285687 () Bool)

(assert (=> start!26158 m!285687))

(declare-fun m!285689 () Bool)

(assert (=> b!269929 m!285689))

(declare-fun m!285691 () Bool)

(assert (=> b!269933 m!285691))

(declare-fun m!285693 () Bool)

(assert (=> b!269928 m!285693))

(declare-fun m!285695 () Bool)

(assert (=> b!269928 m!285695))

(push 1)

