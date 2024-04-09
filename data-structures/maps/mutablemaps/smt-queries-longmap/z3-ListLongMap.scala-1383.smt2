; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27162 () Bool)

(assert start!27162)

(declare-fun b!280834 () Bool)

(declare-fun res!143949 () Bool)

(declare-fun e!178668 () Bool)

(assert (=> b!280834 (=> (not res!143949) (not e!178668))))

(declare-datatypes ((array!13969 0))(
  ( (array!13970 (arr!6626 (Array (_ BitVec 32) (_ BitVec 64))) (size!6978 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13969)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13969 (_ BitVec 32)) Bool)

(assert (=> b!280834 (= res!143949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280835 () Bool)

(assert (=> b!280835 (= e!178668 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4455 0))(
  ( (Nil!4452) (Cons!4451 (h!5121 (_ BitVec 64)) (t!9545 List!4455)) )
))
(declare-fun arrayNoDuplicates!0 (array!13969 (_ BitVec 32) List!4455) Bool)

(assert (=> b!280835 (arrayNoDuplicates!0 (array!13970 (store (arr!6626 a!3325) i!1267 k0!2581) (size!6978 a!3325)) #b00000000000000000000000000000000 Nil!4452)))

(declare-datatypes ((Unit!8853 0))(
  ( (Unit!8854) )
))
(declare-fun lt!138946 () Unit!8853)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13969 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4455) Unit!8853)

(assert (=> b!280835 (= lt!138946 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4452))))

(declare-fun b!280836 () Bool)

(declare-fun res!143943 () Bool)

(assert (=> b!280836 (=> (not res!143943) (not e!178668))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280836 (= res!143943 (validKeyInArray!0 (select (arr!6626 a!3325) startIndex!26)))))

(declare-fun b!280837 () Bool)

(declare-fun res!143946 () Bool)

(declare-fun e!178667 () Bool)

(assert (=> b!280837 (=> (not res!143946) (not e!178667))))

(assert (=> b!280837 (= res!143946 (validKeyInArray!0 k0!2581))))

(declare-fun b!280838 () Bool)

(assert (=> b!280838 (= e!178667 e!178668)))

(declare-fun res!143948 () Bool)

(assert (=> b!280838 (=> (not res!143948) (not e!178668))))

(declare-datatypes ((SeekEntryResult!1795 0))(
  ( (MissingZero!1795 (index!9350 (_ BitVec 32))) (Found!1795 (index!9351 (_ BitVec 32))) (Intermediate!1795 (undefined!2607 Bool) (index!9352 (_ BitVec 32)) (x!27553 (_ BitVec 32))) (Undefined!1795) (MissingVacant!1795 (index!9353 (_ BitVec 32))) )
))
(declare-fun lt!138947 () SeekEntryResult!1795)

(assert (=> b!280838 (= res!143948 (or (= lt!138947 (MissingZero!1795 i!1267)) (= lt!138947 (MissingVacant!1795 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13969 (_ BitVec 32)) SeekEntryResult!1795)

(assert (=> b!280838 (= lt!138947 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!143945 () Bool)

(assert (=> start!27162 (=> (not res!143945) (not e!178667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27162 (= res!143945 (validMask!0 mask!3868))))

(assert (=> start!27162 e!178667))

(declare-fun array_inv!4580 (array!13969) Bool)

(assert (=> start!27162 (array_inv!4580 a!3325)))

(assert (=> start!27162 true))

(declare-fun b!280839 () Bool)

(declare-fun res!143941 () Bool)

(assert (=> b!280839 (=> (not res!143941) (not e!178667))))

(assert (=> b!280839 (= res!143941 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4452))))

(declare-fun b!280840 () Bool)

(declare-fun res!143942 () Bool)

(assert (=> b!280840 (=> (not res!143942) (not e!178667))))

(assert (=> b!280840 (= res!143942 (and (= (size!6978 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6978 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6978 a!3325))))))

(declare-fun b!280841 () Bool)

(declare-fun res!143947 () Bool)

(assert (=> b!280841 (=> (not res!143947) (not e!178667))))

(declare-fun arrayContainsKey!0 (array!13969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280841 (= res!143947 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280842 () Bool)

(declare-fun res!143944 () Bool)

(assert (=> b!280842 (=> (not res!143944) (not e!178668))))

(assert (=> b!280842 (= res!143944 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27162 res!143945) b!280840))

(assert (= (and b!280840 res!143942) b!280837))

(assert (= (and b!280837 res!143946) b!280839))

(assert (= (and b!280839 res!143941) b!280841))

(assert (= (and b!280841 res!143947) b!280838))

(assert (= (and b!280838 res!143948) b!280834))

(assert (= (and b!280834 res!143949) b!280842))

(assert (= (and b!280842 res!143944) b!280836))

(assert (= (and b!280836 res!143943) b!280835))

(declare-fun m!295261 () Bool)

(assert (=> b!280835 m!295261))

(declare-fun m!295263 () Bool)

(assert (=> b!280835 m!295263))

(declare-fun m!295265 () Bool)

(assert (=> b!280835 m!295265))

(declare-fun m!295267 () Bool)

(assert (=> b!280837 m!295267))

(declare-fun m!295269 () Bool)

(assert (=> b!280838 m!295269))

(declare-fun m!295271 () Bool)

(assert (=> b!280834 m!295271))

(declare-fun m!295273 () Bool)

(assert (=> b!280839 m!295273))

(declare-fun m!295275 () Bool)

(assert (=> start!27162 m!295275))

(declare-fun m!295277 () Bool)

(assert (=> start!27162 m!295277))

(declare-fun m!295279 () Bool)

(assert (=> b!280836 m!295279))

(assert (=> b!280836 m!295279))

(declare-fun m!295281 () Bool)

(assert (=> b!280836 m!295281))

(declare-fun m!295283 () Bool)

(assert (=> b!280841 m!295283))

(check-sat (not b!280834) (not b!280835) (not start!27162) (not b!280836) (not b!280838) (not b!280837) (not b!280839) (not b!280841))
(check-sat)
