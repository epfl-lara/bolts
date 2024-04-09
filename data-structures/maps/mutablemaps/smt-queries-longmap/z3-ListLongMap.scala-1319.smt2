; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26484 () Bool)

(assert start!26484)

(declare-fun b!274810 () Bool)

(declare-fun res!138843 () Bool)

(declare-fun e!175886 () Bool)

(assert (=> b!274810 (=> (not res!138843) (not e!175886))))

(declare-datatypes ((array!13570 0))(
  ( (array!13571 (arr!6434 (Array (_ BitVec 32) (_ BitVec 64))) (size!6786 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13570)

(declare-datatypes ((List!4263 0))(
  ( (Nil!4260) (Cons!4259 (h!4926 (_ BitVec 64)) (t!9353 List!4263)) )
))
(declare-fun arrayNoDuplicates!0 (array!13570 (_ BitVec 32) List!4263) Bool)

(assert (=> b!274810 (= res!138843 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4260))))

(declare-fun b!274811 () Bool)

(declare-fun res!138844 () Bool)

(declare-fun e!175888 () Bool)

(assert (=> b!274811 (=> (not res!138844) (not e!175888))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13570 (_ BitVec 32)) Bool)

(assert (=> b!274811 (= res!138844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274813 () Bool)

(declare-fun e!175887 () Bool)

(assert (=> b!274813 (= e!175888 e!175887)))

(declare-fun res!138840 () Bool)

(assert (=> b!274813 (=> (not res!138840) (not e!175887))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274813 (= res!138840 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!137209 () array!13570)

(assert (=> b!274813 (= lt!137209 (array!13571 (store (arr!6434 a!3325) i!1267 k0!2581) (size!6786 a!3325)))))

(declare-fun b!274814 () Bool)

(assert (=> b!274814 (= e!175887 (not (or (bvslt startIndex!26 (bvsub (size!6786 a!3325) #b00000000000000000000000000000001)) (bvsle startIndex!26 (size!6786 a!3325)))))))

(assert (=> b!274814 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8672 0))(
  ( (Unit!8673) )
))
(declare-fun lt!137206 () Unit!8672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8672)

(assert (=> b!274814 (= lt!137206 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1603 0))(
  ( (MissingZero!1603 (index!8582 (_ BitVec 32))) (Found!1603 (index!8583 (_ BitVec 32))) (Intermediate!1603 (undefined!2415 Bool) (index!8584 (_ BitVec 32)) (x!26840 (_ BitVec 32))) (Undefined!1603) (MissingVacant!1603 (index!8585 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13570 (_ BitVec 32)) SeekEntryResult!1603)

(assert (=> b!274814 (= (seekEntryOrOpen!0 (select (arr!6434 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6434 a!3325) i!1267 k0!2581) startIndex!26) lt!137209 mask!3868))))

(declare-fun lt!137210 () Unit!8672)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13570 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8672)

(assert (=> b!274814 (= lt!137210 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!274814 (arrayNoDuplicates!0 lt!137209 #b00000000000000000000000000000000 Nil!4260)))

(declare-fun lt!137208 () Unit!8672)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13570 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4263) Unit!8672)

(assert (=> b!274814 (= lt!137208 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4260))))

(declare-fun b!274815 () Bool)

(assert (=> b!274815 (= e!175886 e!175888)))

(declare-fun res!138839 () Bool)

(assert (=> b!274815 (=> (not res!138839) (not e!175888))))

(declare-fun lt!137207 () SeekEntryResult!1603)

(assert (=> b!274815 (= res!138839 (or (= lt!137207 (MissingZero!1603 i!1267)) (= lt!137207 (MissingVacant!1603 i!1267))))))

(assert (=> b!274815 (= lt!137207 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274816 () Bool)

(declare-fun res!138838 () Bool)

(assert (=> b!274816 (=> (not res!138838) (not e!175886))))

(declare-fun arrayContainsKey!0 (array!13570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274816 (= res!138838 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274817 () Bool)

(declare-fun res!138842 () Bool)

(assert (=> b!274817 (=> (not res!138842) (not e!175886))))

(assert (=> b!274817 (= res!138842 (and (= (size!6786 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6786 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6786 a!3325))))))

(declare-fun b!274818 () Bool)

(declare-fun res!138845 () Bool)

(assert (=> b!274818 (=> (not res!138845) (not e!175886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274818 (= res!138845 (validKeyInArray!0 k0!2581))))

(declare-fun res!138841 () Bool)

(assert (=> start!26484 (=> (not res!138841) (not e!175886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26484 (= res!138841 (validMask!0 mask!3868))))

(assert (=> start!26484 e!175886))

(declare-fun array_inv!4388 (array!13570) Bool)

(assert (=> start!26484 (array_inv!4388 a!3325)))

(assert (=> start!26484 true))

(declare-fun b!274812 () Bool)

(declare-fun res!138846 () Bool)

(assert (=> b!274812 (=> (not res!138846) (not e!175887))))

(assert (=> b!274812 (= res!138846 (validKeyInArray!0 (select (arr!6434 a!3325) startIndex!26)))))

(assert (= (and start!26484 res!138841) b!274817))

(assert (= (and b!274817 res!138842) b!274818))

(assert (= (and b!274818 res!138845) b!274810))

(assert (= (and b!274810 res!138843) b!274816))

(assert (= (and b!274816 res!138838) b!274815))

(assert (= (and b!274815 res!138839) b!274811))

(assert (= (and b!274811 res!138844) b!274813))

(assert (= (and b!274813 res!138840) b!274812))

(assert (= (and b!274812 res!138846) b!274814))

(declare-fun m!290515 () Bool)

(assert (=> b!274814 m!290515))

(declare-fun m!290517 () Bool)

(assert (=> b!274814 m!290517))

(declare-fun m!290519 () Bool)

(assert (=> b!274814 m!290519))

(declare-fun m!290521 () Bool)

(assert (=> b!274814 m!290521))

(assert (=> b!274814 m!290517))

(declare-fun m!290523 () Bool)

(assert (=> b!274814 m!290523))

(declare-fun m!290525 () Bool)

(assert (=> b!274814 m!290525))

(declare-fun m!290527 () Bool)

(assert (=> b!274814 m!290527))

(declare-fun m!290529 () Bool)

(assert (=> b!274814 m!290529))

(declare-fun m!290531 () Bool)

(assert (=> b!274814 m!290531))

(assert (=> b!274814 m!290527))

(declare-fun m!290533 () Bool)

(assert (=> b!274814 m!290533))

(declare-fun m!290535 () Bool)

(assert (=> b!274811 m!290535))

(declare-fun m!290537 () Bool)

(assert (=> b!274815 m!290537))

(declare-fun m!290539 () Bool)

(assert (=> b!274816 m!290539))

(declare-fun m!290541 () Bool)

(assert (=> b!274810 m!290541))

(declare-fun m!290543 () Bool)

(assert (=> start!26484 m!290543))

(declare-fun m!290545 () Bool)

(assert (=> start!26484 m!290545))

(declare-fun m!290547 () Bool)

(assert (=> b!274818 m!290547))

(assert (=> b!274813 m!290523))

(assert (=> b!274812 m!290527))

(assert (=> b!274812 m!290527))

(declare-fun m!290549 () Bool)

(assert (=> b!274812 m!290549))

(check-sat (not b!274815) (not b!274816) (not start!26484) (not b!274811) (not b!274818) (not b!274810) (not b!274814) (not b!274812))
(check-sat)
