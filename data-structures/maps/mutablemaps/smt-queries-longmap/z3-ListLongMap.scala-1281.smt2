; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26256 () Bool)

(assert start!26256)

(declare-fun b!271680 () Bool)

(declare-fun res!135719 () Bool)

(declare-fun e!174604 () Bool)

(assert (=> b!271680 (=> (not res!135719) (not e!174604))))

(declare-datatypes ((array!13342 0))(
  ( (array!13343 (arr!6320 (Array (_ BitVec 32) (_ BitVec 64))) (size!6672 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13342)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271680 (= res!135719 (validKeyInArray!0 (select (arr!6320 a!3325) startIndex!26)))))

(declare-fun b!271681 () Bool)

(declare-fun res!135716 () Bool)

(assert (=> b!271681 (=> (not res!135716) (not e!174604))))

(declare-datatypes ((List!4149 0))(
  ( (Nil!4146) (Cons!4145 (h!4812 (_ BitVec 64)) (t!9239 List!4149)) )
))
(declare-fun contains!1958 (List!4149 (_ BitVec 64)) Bool)

(assert (=> b!271681 (= res!135716 (not (contains!1958 Nil!4146 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271682 () Bool)

(declare-fun res!135712 () Bool)

(declare-fun e!174602 () Bool)

(assert (=> b!271682 (=> (not res!135712) (not e!174602))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271682 (= res!135712 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271683 () Bool)

(declare-fun res!135720 () Bool)

(assert (=> b!271683 (=> (not res!135720) (not e!174602))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271683 (= res!135720 (and (= (size!6672 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6672 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6672 a!3325))))))

(declare-fun b!271684 () Bool)

(declare-fun res!135713 () Bool)

(assert (=> b!271684 (=> (not res!135713) (not e!174604))))

(assert (=> b!271684 (= res!135713 (not (= startIndex!26 i!1267)))))

(declare-fun b!271685 () Bool)

(declare-fun res!135709 () Bool)

(assert (=> b!271685 (=> (not res!135709) (not e!174604))))

(declare-fun noDuplicate!147 (List!4149) Bool)

(assert (=> b!271685 (= res!135709 (noDuplicate!147 Nil!4146))))

(declare-fun b!271686 () Bool)

(declare-fun res!135715 () Bool)

(assert (=> b!271686 (=> (not res!135715) (not e!174602))))

(declare-fun arrayNoDuplicates!0 (array!13342 (_ BitVec 32) List!4149) Bool)

(assert (=> b!271686 (= res!135715 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4146))))

(declare-fun res!135714 () Bool)

(assert (=> start!26256 (=> (not res!135714) (not e!174602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26256 (= res!135714 (validMask!0 mask!3868))))

(assert (=> start!26256 e!174602))

(declare-fun array_inv!4274 (array!13342) Bool)

(assert (=> start!26256 (array_inv!4274 a!3325)))

(assert (=> start!26256 true))

(declare-fun b!271687 () Bool)

(declare-fun res!135710 () Bool)

(assert (=> b!271687 (=> (not res!135710) (not e!174602))))

(assert (=> b!271687 (= res!135710 (validKeyInArray!0 k0!2581))))

(declare-fun b!271688 () Bool)

(declare-fun res!135708 () Bool)

(assert (=> b!271688 (=> (not res!135708) (not e!174604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13342 (_ BitVec 32)) Bool)

(assert (=> b!271688 (= res!135708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271689 () Bool)

(declare-fun res!135718 () Bool)

(assert (=> b!271689 (=> (not res!135718) (not e!174604))))

(assert (=> b!271689 (= res!135718 (not (contains!1958 Nil!4146 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271690 () Bool)

(assert (=> b!271690 (= e!174602 e!174604)))

(declare-fun res!135711 () Bool)

(assert (=> b!271690 (=> (not res!135711) (not e!174604))))

(declare-datatypes ((SeekEntryResult!1489 0))(
  ( (MissingZero!1489 (index!8126 (_ BitVec 32))) (Found!1489 (index!8127 (_ BitVec 32))) (Intermediate!1489 (undefined!2301 Bool) (index!8128 (_ BitVec 32)) (x!26422 (_ BitVec 32))) (Undefined!1489) (MissingVacant!1489 (index!8129 (_ BitVec 32))) )
))
(declare-fun lt!135868 () SeekEntryResult!1489)

(assert (=> b!271690 (= res!135711 (or (= lt!135868 (MissingZero!1489 i!1267)) (= lt!135868 (MissingVacant!1489 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13342 (_ BitVec 32)) SeekEntryResult!1489)

(assert (=> b!271690 (= lt!135868 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271691 () Bool)

(assert (=> b!271691 (= e!174604 false)))

(declare-fun lt!135869 () Bool)

(assert (=> b!271691 (= lt!135869 (contains!1958 Nil!4146 k0!2581))))

(declare-fun b!271692 () Bool)

(declare-fun res!135717 () Bool)

(assert (=> b!271692 (=> (not res!135717) (not e!174604))))

(assert (=> b!271692 (= res!135717 (and (bvslt (size!6672 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6672 a!3325))))))

(assert (= (and start!26256 res!135714) b!271683))

(assert (= (and b!271683 res!135720) b!271687))

(assert (= (and b!271687 res!135710) b!271686))

(assert (= (and b!271686 res!135715) b!271682))

(assert (= (and b!271682 res!135712) b!271690))

(assert (= (and b!271690 res!135711) b!271688))

(assert (= (and b!271688 res!135708) b!271684))

(assert (= (and b!271684 res!135713) b!271680))

(assert (= (and b!271680 res!135719) b!271692))

(assert (= (and b!271692 res!135717) b!271685))

(assert (= (and b!271685 res!135709) b!271689))

(assert (= (and b!271689 res!135718) b!271681))

(assert (= (and b!271681 res!135716) b!271691))

(declare-fun m!286911 () Bool)

(assert (=> b!271687 m!286911))

(declare-fun m!286913 () Bool)

(assert (=> b!271691 m!286913))

(declare-fun m!286915 () Bool)

(assert (=> b!271682 m!286915))

(declare-fun m!286917 () Bool)

(assert (=> b!271689 m!286917))

(declare-fun m!286919 () Bool)

(assert (=> b!271690 m!286919))

(declare-fun m!286921 () Bool)

(assert (=> b!271685 m!286921))

(declare-fun m!286923 () Bool)

(assert (=> b!271681 m!286923))

(declare-fun m!286925 () Bool)

(assert (=> start!26256 m!286925))

(declare-fun m!286927 () Bool)

(assert (=> start!26256 m!286927))

(declare-fun m!286929 () Bool)

(assert (=> b!271680 m!286929))

(assert (=> b!271680 m!286929))

(declare-fun m!286931 () Bool)

(assert (=> b!271680 m!286931))

(declare-fun m!286933 () Bool)

(assert (=> b!271688 m!286933))

(declare-fun m!286935 () Bool)

(assert (=> b!271686 m!286935))

(check-sat (not b!271686) (not start!26256) (not b!271690) (not b!271685) (not b!271680) (not b!271691) (not b!271682) (not b!271689) (not b!271681) (not b!271687) (not b!271688))
(check-sat)
