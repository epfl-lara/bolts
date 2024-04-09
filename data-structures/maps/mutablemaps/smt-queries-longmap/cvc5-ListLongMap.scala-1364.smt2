; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26752 () Bool)

(assert start!26752)

(declare-fun b!277764 () Bool)

(declare-fun e!177193 () Bool)

(assert (=> b!277764 (= e!177193 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((array!13838 0))(
  ( (array!13839 (arr!6568 (Array (_ BitVec 32) (_ BitVec 64))) (size!6920 (_ BitVec 32))) )
))
(declare-fun lt!138092 () array!13838)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1737 0))(
  ( (MissingZero!1737 (index!9118 (_ BitVec 32))) (Found!1737 (index!9119 (_ BitVec 32))) (Intermediate!1737 (undefined!2549 Bool) (index!9120 (_ BitVec 32)) (x!27334 (_ BitVec 32))) (Undefined!1737) (MissingVacant!1737 (index!9121 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13838 (_ BitVec 32)) SeekEntryResult!1737)

(assert (=> b!277764 (= (seekEntryOrOpen!0 k!2581 lt!138092 mask!3868) (Found!1737 i!1267))))

(declare-fun a!3325 () array!13838)

(declare-datatypes ((Unit!8781 0))(
  ( (Unit!8782) )
))
(declare-fun lt!138095 () Unit!8781)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13838 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8781)

(assert (=> b!277764 (= lt!138095 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138094 () Unit!8781)

(declare-fun e!177190 () Unit!8781)

(assert (=> b!277764 (= lt!138094 e!177190)))

(declare-fun c!45620 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277764 (= c!45620 (bvslt startIndex!26 (bvsub (size!6920 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277765 () Bool)

(declare-fun res!141632 () Bool)

(declare-fun e!177189 () Bool)

(assert (=> b!277765 (=> (not res!141632) (not e!177189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13838 (_ BitVec 32)) Bool)

(assert (=> b!277765 (= res!141632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277766 () Bool)

(declare-fun res!141629 () Bool)

(declare-fun e!177191 () Bool)

(assert (=> b!277766 (=> (not res!141629) (not e!177191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277766 (= res!141629 (validKeyInArray!0 k!2581))))

(declare-fun b!277767 () Bool)

(declare-fun res!141631 () Bool)

(assert (=> b!277767 (=> (not res!141631) (not e!177191))))

(assert (=> b!277767 (= res!141631 (and (= (size!6920 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6920 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6920 a!3325))))))

(declare-fun b!277768 () Bool)

(declare-fun Unit!8783 () Unit!8781)

(assert (=> b!277768 (= e!177190 Unit!8783)))

(declare-fun b!277769 () Bool)

(assert (=> b!277769 (= e!177189 e!177193)))

(declare-fun res!141630 () Bool)

(assert (=> b!277769 (=> (not res!141630) (not e!177193))))

(assert (=> b!277769 (= res!141630 (= startIndex!26 i!1267))))

(assert (=> b!277769 (= lt!138092 (array!13839 (store (arr!6568 a!3325) i!1267 k!2581) (size!6920 a!3325)))))

(declare-fun b!277771 () Bool)

(declare-fun res!141627 () Bool)

(assert (=> b!277771 (=> (not res!141627) (not e!177191))))

(declare-fun arrayContainsKey!0 (array!13838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277771 (= res!141627 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277772 () Bool)

(declare-fun lt!138093 () Unit!8781)

(assert (=> b!277772 (= e!177190 lt!138093)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13838 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8781)

(assert (=> b!277772 (= lt!138093 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277772 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138092 mask!3868)))

(declare-fun b!277773 () Bool)

(declare-fun res!141626 () Bool)

(assert (=> b!277773 (=> (not res!141626) (not e!177191))))

(declare-datatypes ((List!4397 0))(
  ( (Nil!4394) (Cons!4393 (h!5060 (_ BitVec 64)) (t!9487 List!4397)) )
))
(declare-fun arrayNoDuplicates!0 (array!13838 (_ BitVec 32) List!4397) Bool)

(assert (=> b!277773 (= res!141626 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4394))))

(declare-fun b!277770 () Bool)

(assert (=> b!277770 (= e!177191 e!177189)))

(declare-fun res!141633 () Bool)

(assert (=> b!277770 (=> (not res!141633) (not e!177189))))

(declare-fun lt!138091 () SeekEntryResult!1737)

(assert (=> b!277770 (= res!141633 (or (= lt!138091 (MissingZero!1737 i!1267)) (= lt!138091 (MissingVacant!1737 i!1267))))))

(assert (=> b!277770 (= lt!138091 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!141628 () Bool)

(assert (=> start!26752 (=> (not res!141628) (not e!177191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26752 (= res!141628 (validMask!0 mask!3868))))

(assert (=> start!26752 e!177191))

(declare-fun array_inv!4522 (array!13838) Bool)

(assert (=> start!26752 (array_inv!4522 a!3325)))

(assert (=> start!26752 true))

(assert (= (and start!26752 res!141628) b!277767))

(assert (= (and b!277767 res!141631) b!277766))

(assert (= (and b!277766 res!141629) b!277773))

(assert (= (and b!277773 res!141626) b!277771))

(assert (= (and b!277771 res!141627) b!277770))

(assert (= (and b!277770 res!141633) b!277765))

(assert (= (and b!277765 res!141632) b!277769))

(assert (= (and b!277769 res!141630) b!277764))

(assert (= (and b!277764 c!45620) b!277772))

(assert (= (and b!277764 (not c!45620)) b!277768))

(declare-fun m!292741 () Bool)

(assert (=> b!277764 m!292741))

(declare-fun m!292743 () Bool)

(assert (=> b!277764 m!292743))

(declare-fun m!292745 () Bool)

(assert (=> b!277765 m!292745))

(declare-fun m!292747 () Bool)

(assert (=> b!277771 m!292747))

(declare-fun m!292749 () Bool)

(assert (=> b!277769 m!292749))

(declare-fun m!292751 () Bool)

(assert (=> b!277766 m!292751))

(declare-fun m!292753 () Bool)

(assert (=> b!277773 m!292753))

(declare-fun m!292755 () Bool)

(assert (=> b!277772 m!292755))

(declare-fun m!292757 () Bool)

(assert (=> b!277772 m!292757))

(declare-fun m!292759 () Bool)

(assert (=> start!26752 m!292759))

(declare-fun m!292761 () Bool)

(assert (=> start!26752 m!292761))

(declare-fun m!292763 () Bool)

(assert (=> b!277770 m!292763))

(push 1)

