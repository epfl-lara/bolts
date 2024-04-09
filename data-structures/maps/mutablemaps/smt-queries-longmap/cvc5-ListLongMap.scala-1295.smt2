; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26338 () Bool)

(assert start!26338)

(declare-fun b!272803 () Bool)

(declare-fun res!136838 () Bool)

(declare-fun e!174975 () Bool)

(assert (=> b!272803 (=> (not res!136838) (not e!174975))))

(declare-datatypes ((array!13424 0))(
  ( (array!13425 (arr!6361 (Array (_ BitVec 32) (_ BitVec 64))) (size!6713 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13424)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13424 (_ BitVec 32)) Bool)

(assert (=> b!272803 (= res!136838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!136837 () Bool)

(declare-fun e!174973 () Bool)

(assert (=> start!26338 (=> (not res!136837) (not e!174973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26338 (= res!136837 (validMask!0 mask!3868))))

(assert (=> start!26338 e!174973))

(declare-fun array_inv!4315 (array!13424) Bool)

(assert (=> start!26338 (array_inv!4315 a!3325)))

(assert (=> start!26338 true))

(declare-fun b!272804 () Bool)

(declare-fun e!174976 () Bool)

(assert (=> b!272804 (= e!174976 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136121 () array!13424)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1530 0))(
  ( (MissingZero!1530 (index!8290 (_ BitVec 32))) (Found!1530 (index!8291 (_ BitVec 32))) (Intermediate!1530 (undefined!2342 Bool) (index!8292 (_ BitVec 32)) (x!26575 (_ BitVec 32))) (Undefined!1530) (MissingVacant!1530 (index!8293 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13424 (_ BitVec 32)) SeekEntryResult!1530)

(assert (=> b!272804 (= (seekEntryOrOpen!0 (select (arr!6361 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6361 a!3325) i!1267 k!2581) startIndex!26) lt!136121 mask!3868))))

(declare-datatypes ((Unit!8526 0))(
  ( (Unit!8527) )
))
(declare-fun lt!136118 () Unit!8526)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13424 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8526)

(assert (=> b!272804 (= lt!136118 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4190 0))(
  ( (Nil!4187) (Cons!4186 (h!4853 (_ BitVec 64)) (t!9280 List!4190)) )
))
(declare-fun arrayNoDuplicates!0 (array!13424 (_ BitVec 32) List!4190) Bool)

(assert (=> b!272804 (arrayNoDuplicates!0 lt!136121 #b00000000000000000000000000000000 Nil!4187)))

(declare-fun lt!136119 () Unit!8526)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4190) Unit!8526)

(assert (=> b!272804 (= lt!136119 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4187))))

(declare-fun b!272805 () Bool)

(declare-fun res!136831 () Bool)

(assert (=> b!272805 (=> (not res!136831) (not e!174976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272805 (= res!136831 (validKeyInArray!0 (select (arr!6361 a!3325) startIndex!26)))))

(declare-fun b!272806 () Bool)

(assert (=> b!272806 (= e!174973 e!174975)))

(declare-fun res!136836 () Bool)

(assert (=> b!272806 (=> (not res!136836) (not e!174975))))

(declare-fun lt!136120 () SeekEntryResult!1530)

(assert (=> b!272806 (= res!136836 (or (= lt!136120 (MissingZero!1530 i!1267)) (= lt!136120 (MissingVacant!1530 i!1267))))))

(assert (=> b!272806 (= lt!136120 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272807 () Bool)

(declare-fun res!136834 () Bool)

(assert (=> b!272807 (=> (not res!136834) (not e!174973))))

(assert (=> b!272807 (= res!136834 (and (= (size!6713 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6713 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6713 a!3325))))))

(declare-fun b!272808 () Bool)

(declare-fun res!136839 () Bool)

(assert (=> b!272808 (=> (not res!136839) (not e!174973))))

(assert (=> b!272808 (= res!136839 (validKeyInArray!0 k!2581))))

(declare-fun b!272809 () Bool)

(declare-fun res!136835 () Bool)

(assert (=> b!272809 (=> (not res!136835) (not e!174973))))

(declare-fun arrayContainsKey!0 (array!13424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272809 (= res!136835 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272810 () Bool)

(assert (=> b!272810 (= e!174975 e!174976)))

(declare-fun res!136832 () Bool)

(assert (=> b!272810 (=> (not res!136832) (not e!174976))))

(assert (=> b!272810 (= res!136832 (not (= startIndex!26 i!1267)))))

(assert (=> b!272810 (= lt!136121 (array!13425 (store (arr!6361 a!3325) i!1267 k!2581) (size!6713 a!3325)))))

(declare-fun b!272811 () Bool)

(declare-fun res!136833 () Bool)

(assert (=> b!272811 (=> (not res!136833) (not e!174973))))

(assert (=> b!272811 (= res!136833 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4187))))

(assert (= (and start!26338 res!136837) b!272807))

(assert (= (and b!272807 res!136834) b!272808))

(assert (= (and b!272808 res!136839) b!272811))

(assert (= (and b!272811 res!136833) b!272809))

(assert (= (and b!272809 res!136835) b!272806))

(assert (= (and b!272806 res!136836) b!272803))

(assert (= (and b!272803 res!136838) b!272810))

(assert (= (and b!272810 res!136832) b!272805))

(assert (= (and b!272805 res!136831) b!272804))

(declare-fun m!287899 () Bool)

(assert (=> b!272810 m!287899))

(declare-fun m!287901 () Bool)

(assert (=> start!26338 m!287901))

(declare-fun m!287903 () Bool)

(assert (=> start!26338 m!287903))

(declare-fun m!287905 () Bool)

(assert (=> b!272806 m!287905))

(declare-fun m!287907 () Bool)

(assert (=> b!272803 m!287907))

(declare-fun m!287909 () Bool)

(assert (=> b!272808 m!287909))

(declare-fun m!287911 () Bool)

(assert (=> b!272811 m!287911))

(declare-fun m!287913 () Bool)

(assert (=> b!272805 m!287913))

(assert (=> b!272805 m!287913))

(declare-fun m!287915 () Bool)

(assert (=> b!272805 m!287915))

(declare-fun m!287917 () Bool)

(assert (=> b!272809 m!287917))

(declare-fun m!287919 () Bool)

(assert (=> b!272804 m!287919))

(assert (=> b!272804 m!287913))

(declare-fun m!287921 () Bool)

(assert (=> b!272804 m!287921))

(declare-fun m!287923 () Bool)

(assert (=> b!272804 m!287923))

(declare-fun m!287925 () Bool)

(assert (=> b!272804 m!287925))

(assert (=> b!272804 m!287913))

(declare-fun m!287927 () Bool)

(assert (=> b!272804 m!287927))

(assert (=> b!272804 m!287899))

(assert (=> b!272804 m!287919))

(declare-fun m!287929 () Bool)

(assert (=> b!272804 m!287929))

(push 1)

