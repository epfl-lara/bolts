; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26438 () Bool)

(assert start!26438)

(declare-fun res!138181 () Bool)

(declare-fun e!175574 () Bool)

(assert (=> start!26438 (=> (not res!138181) (not e!175574))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26438 (= res!138181 (validMask!0 mask!3868))))

(assert (=> start!26438 e!175574))

(declare-datatypes ((array!13524 0))(
  ( (array!13525 (arr!6411 (Array (_ BitVec 32) (_ BitVec 64))) (size!6763 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13524)

(declare-fun array_inv!4365 (array!13524) Bool)

(assert (=> start!26438 (array_inv!4365 a!3325)))

(assert (=> start!26438 true))

(declare-fun b!274153 () Bool)

(declare-fun res!138183 () Bool)

(assert (=> b!274153 (=> (not res!138183) (not e!175574))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274153 (= res!138183 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274154 () Bool)

(declare-fun res!138188 () Bool)

(declare-fun e!175575 () Bool)

(assert (=> b!274154 (=> (not res!138188) (not e!175575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13524 (_ BitVec 32)) Bool)

(assert (=> b!274154 (= res!138188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274155 () Bool)

(declare-fun e!175576 () Bool)

(assert (=> b!274155 (= e!175575 e!175576)))

(declare-fun res!138182 () Bool)

(assert (=> b!274155 (=> (not res!138182) (not e!175576))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274155 (= res!138182 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136829 () array!13524)

(assert (=> b!274155 (= lt!136829 (array!13525 (store (arr!6411 a!3325) i!1267 k!2581) (size!6763 a!3325)))))

(declare-fun b!274156 () Bool)

(declare-fun res!138189 () Bool)

(assert (=> b!274156 (=> (not res!138189) (not e!175574))))

(declare-datatypes ((List!4240 0))(
  ( (Nil!4237) (Cons!4236 (h!4903 (_ BitVec 64)) (t!9330 List!4240)) )
))
(declare-fun arrayNoDuplicates!0 (array!13524 (_ BitVec 32) List!4240) Bool)

(assert (=> b!274156 (= res!138189 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4237))))

(declare-fun b!274157 () Bool)

(declare-fun res!138184 () Bool)

(assert (=> b!274157 (=> (not res!138184) (not e!175574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274157 (= res!138184 (validKeyInArray!0 k!2581))))

(declare-fun b!274158 () Bool)

(assert (=> b!274158 (= e!175574 e!175575)))

(declare-fun res!138187 () Bool)

(assert (=> b!274158 (=> (not res!138187) (not e!175575))))

(declare-datatypes ((SeekEntryResult!1580 0))(
  ( (MissingZero!1580 (index!8490 (_ BitVec 32))) (Found!1580 (index!8491 (_ BitVec 32))) (Intermediate!1580 (undefined!2392 Bool) (index!8492 (_ BitVec 32)) (x!26753 (_ BitVec 32))) (Undefined!1580) (MissingVacant!1580 (index!8493 (_ BitVec 32))) )
))
(declare-fun lt!136827 () SeekEntryResult!1580)

(assert (=> b!274158 (= res!138187 (or (= lt!136827 (MissingZero!1580 i!1267)) (= lt!136827 (MissingVacant!1580 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13524 (_ BitVec 32)) SeekEntryResult!1580)

(assert (=> b!274158 (= lt!136827 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274159 () Bool)

(assert (=> b!274159 (= e!175576 (not true))))

(assert (=> b!274159 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8626 0))(
  ( (Unit!8627) )
))
(declare-fun lt!136826 () Unit!8626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8626)

(assert (=> b!274159 (= lt!136826 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274159 (= (seekEntryOrOpen!0 (select (arr!6411 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6411 a!3325) i!1267 k!2581) startIndex!26) lt!136829 mask!3868))))

(declare-fun lt!136828 () Unit!8626)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13524 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8626)

(assert (=> b!274159 (= lt!136828 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274159 (arrayNoDuplicates!0 lt!136829 #b00000000000000000000000000000000 Nil!4237)))

(declare-fun lt!136825 () Unit!8626)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13524 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4240) Unit!8626)

(assert (=> b!274159 (= lt!136825 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4237))))

(declare-fun b!274160 () Bool)

(declare-fun res!138185 () Bool)

(assert (=> b!274160 (=> (not res!138185) (not e!175574))))

(assert (=> b!274160 (= res!138185 (and (= (size!6763 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6763 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6763 a!3325))))))

(declare-fun b!274161 () Bool)

(declare-fun res!138186 () Bool)

(assert (=> b!274161 (=> (not res!138186) (not e!175576))))

(assert (=> b!274161 (= res!138186 (validKeyInArray!0 (select (arr!6411 a!3325) startIndex!26)))))

(assert (= (and start!26438 res!138181) b!274160))

(assert (= (and b!274160 res!138185) b!274157))

(assert (= (and b!274157 res!138184) b!274156))

(assert (= (and b!274156 res!138189) b!274153))

(assert (= (and b!274153 res!138183) b!274158))

(assert (= (and b!274158 res!138187) b!274154))

(assert (= (and b!274154 res!138188) b!274155))

(assert (= (and b!274155 res!138182) b!274161))

(assert (= (and b!274161 res!138186) b!274159))

(declare-fun m!289639 () Bool)

(assert (=> b!274156 m!289639))

(declare-fun m!289641 () Bool)

(assert (=> b!274158 m!289641))

(declare-fun m!289643 () Bool)

(assert (=> start!26438 m!289643))

(declare-fun m!289645 () Bool)

(assert (=> start!26438 m!289645))

(declare-fun m!289647 () Bool)

(assert (=> b!274155 m!289647))

(declare-fun m!289649 () Bool)

(assert (=> b!274159 m!289649))

(declare-fun m!289651 () Bool)

(assert (=> b!274159 m!289651))

(assert (=> b!274159 m!289647))

(declare-fun m!289653 () Bool)

(assert (=> b!274159 m!289653))

(assert (=> b!274159 m!289651))

(declare-fun m!289655 () Bool)

(assert (=> b!274159 m!289655))

(declare-fun m!289657 () Bool)

(assert (=> b!274159 m!289657))

(declare-fun m!289659 () Bool)

(assert (=> b!274159 m!289659))

(declare-fun m!289661 () Bool)

(assert (=> b!274159 m!289661))

(declare-fun m!289663 () Bool)

(assert (=> b!274159 m!289663))

(assert (=> b!274159 m!289657))

(declare-fun m!289665 () Bool)

(assert (=> b!274159 m!289665))

(declare-fun m!289667 () Bool)

(assert (=> b!274154 m!289667))

(assert (=> b!274161 m!289657))

(assert (=> b!274161 m!289657))

(declare-fun m!289669 () Bool)

(assert (=> b!274161 m!289669))

(declare-fun m!289671 () Bool)

(assert (=> b!274157 m!289671))

(declare-fun m!289673 () Bool)

(assert (=> b!274153 m!289673))

(push 1)

