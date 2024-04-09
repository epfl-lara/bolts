; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27316 () Bool)

(assert start!27316)

(declare-fun b!282915 () Bool)

(declare-fun e!179530 () Bool)

(declare-fun e!179527 () Bool)

(assert (=> b!282915 (= e!179530 e!179527)))

(declare-fun res!146027 () Bool)

(assert (=> b!282915 (=> (not res!146027) (not e!179527))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282915 (= res!146027 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14123 0))(
  ( (array!14124 (arr!6703 (Array (_ BitVec 32) (_ BitVec 64))) (size!7055 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14123)

(declare-fun lt!139858 () array!14123)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!282915 (= lt!139858 (array!14124 (store (arr!6703 a!3325) i!1267 k!2581) (size!7055 a!3325)))))

(declare-fun b!282916 () Bool)

(declare-fun res!146029 () Bool)

(declare-fun e!179526 () Bool)

(assert (=> b!282916 (=> (not res!146029) (not e!179526))))

(declare-datatypes ((List!4532 0))(
  ( (Nil!4529) (Cons!4528 (h!5198 (_ BitVec 64)) (t!9622 List!4532)) )
))
(declare-fun arrayNoDuplicates!0 (array!14123 (_ BitVec 32) List!4532) Bool)

(assert (=> b!282916 (= res!146029 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4529))))

(declare-fun b!282917 () Bool)

(declare-fun res!146023 () Bool)

(assert (=> b!282917 (=> (not res!146023) (not e!179526))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!282917 (= res!146023 (and (= (size!7055 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7055 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7055 a!3325))))))

(declare-fun b!282918 () Bool)

(assert (=> b!282918 (= e!179526 e!179530)))

(declare-fun res!146022 () Bool)

(assert (=> b!282918 (=> (not res!146022) (not e!179530))))

(declare-datatypes ((SeekEntryResult!1872 0))(
  ( (MissingZero!1872 (index!9658 (_ BitVec 32))) (Found!1872 (index!9659 (_ BitVec 32))) (Intermediate!1872 (undefined!2684 Bool) (index!9660 (_ BitVec 32)) (x!27838 (_ BitVec 32))) (Undefined!1872) (MissingVacant!1872 (index!9661 (_ BitVec 32))) )
))
(declare-fun lt!139862 () SeekEntryResult!1872)

(assert (=> b!282918 (= res!146022 (or (= lt!139862 (MissingZero!1872 i!1267)) (= lt!139862 (MissingVacant!1872 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14123 (_ BitVec 32)) SeekEntryResult!1872)

(assert (=> b!282918 (= lt!139862 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282920 () Bool)

(declare-fun e!179529 () Bool)

(assert (=> b!282920 (= e!179529 true)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14123 (_ BitVec 32)) Bool)

(assert (=> b!282920 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139858 mask!3868)))

(declare-datatypes ((Unit!9007 0))(
  ( (Unit!9008) )
))
(declare-fun lt!139859 () Unit!9007)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9007)

(assert (=> b!282920 (= lt!139859 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!282921 () Bool)

(declare-fun res!146030 () Bool)

(assert (=> b!282921 (=> (not res!146030) (not e!179526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282921 (= res!146030 (validKeyInArray!0 k!2581))))

(declare-fun b!282922 () Bool)

(declare-fun res!146025 () Bool)

(assert (=> b!282922 (=> (not res!146025) (not e!179527))))

(assert (=> b!282922 (= res!146025 (validKeyInArray!0 (select (arr!6703 a!3325) startIndex!26)))))

(declare-fun b!282923 () Bool)

(declare-fun res!146026 () Bool)

(assert (=> b!282923 (=> (not res!146026) (not e!179526))))

(declare-fun arrayContainsKey!0 (array!14123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282923 (= res!146026 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282924 () Bool)

(declare-fun res!146028 () Bool)

(assert (=> b!282924 (=> (not res!146028) (not e!179530))))

(assert (=> b!282924 (= res!146028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282919 () Bool)

(assert (=> b!282919 (= e!179527 (not e!179529))))

(declare-fun res!146024 () Bool)

(assert (=> b!282919 (=> res!146024 e!179529)))

(assert (=> b!282919 (= res!146024 (or (bvsge startIndex!26 (bvsub (size!7055 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!282919 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!139861 () Unit!9007)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9007)

(assert (=> b!282919 (= lt!139861 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282919 (= (seekEntryOrOpen!0 (select (arr!6703 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6703 a!3325) i!1267 k!2581) startIndex!26) lt!139858 mask!3868))))

(declare-fun lt!139860 () Unit!9007)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9007)

(assert (=> b!282919 (= lt!139860 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282919 (arrayNoDuplicates!0 lt!139858 #b00000000000000000000000000000000 Nil!4529)))

(declare-fun lt!139857 () Unit!9007)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14123 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4532) Unit!9007)

(assert (=> b!282919 (= lt!139857 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4529))))

(declare-fun res!146031 () Bool)

(assert (=> start!27316 (=> (not res!146031) (not e!179526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27316 (= res!146031 (validMask!0 mask!3868))))

(assert (=> start!27316 e!179526))

(declare-fun array_inv!4657 (array!14123) Bool)

(assert (=> start!27316 (array_inv!4657 a!3325)))

(assert (=> start!27316 true))

(assert (= (and start!27316 res!146031) b!282917))

(assert (= (and b!282917 res!146023) b!282921))

(assert (= (and b!282921 res!146030) b!282916))

(assert (= (and b!282916 res!146029) b!282923))

(assert (= (and b!282923 res!146026) b!282918))

(assert (= (and b!282918 res!146022) b!282924))

(assert (= (and b!282924 res!146028) b!282915))

(assert (= (and b!282915 res!146027) b!282922))

(assert (= (and b!282922 res!146025) b!282919))

(assert (= (and b!282919 (not res!146024)) b!282920))

(declare-fun m!297697 () Bool)

(assert (=> b!282915 m!297697))

(declare-fun m!297699 () Bool)

(assert (=> b!282920 m!297699))

(declare-fun m!297701 () Bool)

(assert (=> b!282920 m!297701))

(declare-fun m!297703 () Bool)

(assert (=> start!27316 m!297703))

(declare-fun m!297705 () Bool)

(assert (=> start!27316 m!297705))

(declare-fun m!297707 () Bool)

(assert (=> b!282916 m!297707))

(declare-fun m!297709 () Bool)

(assert (=> b!282922 m!297709))

(assert (=> b!282922 m!297709))

(declare-fun m!297711 () Bool)

(assert (=> b!282922 m!297711))

(declare-fun m!297713 () Bool)

(assert (=> b!282919 m!297713))

(declare-fun m!297715 () Bool)

(assert (=> b!282919 m!297715))

(declare-fun m!297717 () Bool)

(assert (=> b!282919 m!297717))

(assert (=> b!282919 m!297697))

(declare-fun m!297719 () Bool)

(assert (=> b!282919 m!297719))

(assert (=> b!282919 m!297709))

(declare-fun m!297721 () Bool)

(assert (=> b!282919 m!297721))

(declare-fun m!297723 () Bool)

(assert (=> b!282919 m!297723))

(assert (=> b!282919 m!297709))

(declare-fun m!297725 () Bool)

(assert (=> b!282919 m!297725))

(assert (=> b!282919 m!297715))

(declare-fun m!297727 () Bool)

(assert (=> b!282919 m!297727))

(declare-fun m!297729 () Bool)

(assert (=> b!282924 m!297729))

(declare-fun m!297731 () Bool)

(assert (=> b!282918 m!297731))

(declare-fun m!297733 () Bool)

(assert (=> b!282921 m!297733))

(declare-fun m!297735 () Bool)

(assert (=> b!282923 m!297735))

(push 1)

