; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26700 () Bool)

(assert start!26700)

(declare-fun b!276984 () Bool)

(declare-fun res!141003 () Bool)

(declare-fun e!176869 () Bool)

(assert (=> b!276984 (=> (not res!141003) (not e!176869))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276984 (= res!141003 (validKeyInArray!0 k0!2581))))

(declare-fun b!276985 () Bool)

(declare-fun res!141002 () Bool)

(assert (=> b!276985 (=> (not res!141002) (not e!176869))))

(declare-datatypes ((array!13786 0))(
  ( (array!13787 (arr!6542 (Array (_ BitVec 32) (_ BitVec 64))) (size!6894 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13786)

(declare-datatypes ((List!4371 0))(
  ( (Nil!4368) (Cons!4367 (h!5034 (_ BitVec 64)) (t!9461 List!4371)) )
))
(declare-fun arrayNoDuplicates!0 (array!13786 (_ BitVec 32) List!4371) Bool)

(assert (=> b!276985 (= res!141002 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4368))))

(declare-fun b!276986 () Bool)

(declare-fun res!141009 () Bool)

(assert (=> b!276986 (=> (not res!141009) (not e!176869))))

(declare-fun arrayContainsKey!0 (array!13786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276986 (= res!141009 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!141008 () Bool)

(assert (=> start!26700 (=> (not res!141008) (not e!176869))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26700 (= res!141008 (validMask!0 mask!3868))))

(assert (=> start!26700 e!176869))

(declare-fun array_inv!4496 (array!13786) Bool)

(assert (=> start!26700 (array_inv!4496 a!3325)))

(assert (=> start!26700 true))

(declare-fun b!276987 () Bool)

(declare-fun res!141004 () Bool)

(declare-fun e!176867 () Bool)

(assert (=> b!276987 (=> (not res!141004) (not e!176867))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276987 (= res!141004 (= startIndex!26 i!1267))))

(declare-fun b!276988 () Bool)

(declare-datatypes ((Unit!8703 0))(
  ( (Unit!8704) )
))
(declare-fun e!176868 () Unit!8703)

(declare-fun Unit!8705 () Unit!8703)

(assert (=> b!276988 (= e!176868 Unit!8705)))

(declare-fun b!276989 () Bool)

(assert (=> b!276989 (= e!176867 false)))

(declare-fun lt!137835 () Unit!8703)

(assert (=> b!276989 (= lt!137835 e!176868)))

(declare-fun c!45542 () Bool)

(assert (=> b!276989 (= c!45542 (bvslt startIndex!26 (bvsub (size!6894 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!276990 () Bool)

(declare-fun res!141006 () Bool)

(assert (=> b!276990 (=> (not res!141006) (not e!176869))))

(assert (=> b!276990 (= res!141006 (and (= (size!6894 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6894 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6894 a!3325))))))

(declare-fun b!276991 () Bool)

(declare-fun res!141007 () Bool)

(assert (=> b!276991 (=> (not res!141007) (not e!176867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13786 (_ BitVec 32)) Bool)

(assert (=> b!276991 (= res!141007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276992 () Bool)

(declare-fun lt!137837 () Unit!8703)

(assert (=> b!276992 (= e!176868 lt!137837)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13786 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8703)

(assert (=> b!276992 (= lt!137837 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!276992 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13787 (store (arr!6542 a!3325) i!1267 k0!2581) (size!6894 a!3325)) mask!3868)))

(declare-fun b!276993 () Bool)

(assert (=> b!276993 (= e!176869 e!176867)))

(declare-fun res!141005 () Bool)

(assert (=> b!276993 (=> (not res!141005) (not e!176867))))

(declare-datatypes ((SeekEntryResult!1711 0))(
  ( (MissingZero!1711 (index!9014 (_ BitVec 32))) (Found!1711 (index!9015 (_ BitVec 32))) (Intermediate!1711 (undefined!2523 Bool) (index!9016 (_ BitVec 32)) (x!27236 (_ BitVec 32))) (Undefined!1711) (MissingVacant!1711 (index!9017 (_ BitVec 32))) )
))
(declare-fun lt!137836 () SeekEntryResult!1711)

(assert (=> b!276993 (= res!141005 (or (= lt!137836 (MissingZero!1711 i!1267)) (= lt!137836 (MissingVacant!1711 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13786 (_ BitVec 32)) SeekEntryResult!1711)

(assert (=> b!276993 (= lt!137836 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26700 res!141008) b!276990))

(assert (= (and b!276990 res!141006) b!276984))

(assert (= (and b!276984 res!141003) b!276985))

(assert (= (and b!276985 res!141002) b!276986))

(assert (= (and b!276986 res!141009) b!276993))

(assert (= (and b!276993 res!141005) b!276991))

(assert (= (and b!276991 res!141007) b!276987))

(assert (= (and b!276987 res!141004) b!276989))

(assert (= (and b!276989 c!45542) b!276992))

(assert (= (and b!276989 (not c!45542)) b!276988))

(declare-fun m!292209 () Bool)

(assert (=> b!276991 m!292209))

(declare-fun m!292211 () Bool)

(assert (=> b!276986 m!292211))

(declare-fun m!292213 () Bool)

(assert (=> start!26700 m!292213))

(declare-fun m!292215 () Bool)

(assert (=> start!26700 m!292215))

(declare-fun m!292217 () Bool)

(assert (=> b!276992 m!292217))

(declare-fun m!292219 () Bool)

(assert (=> b!276992 m!292219))

(declare-fun m!292221 () Bool)

(assert (=> b!276992 m!292221))

(declare-fun m!292223 () Bool)

(assert (=> b!276984 m!292223))

(declare-fun m!292225 () Bool)

(assert (=> b!276993 m!292225))

(declare-fun m!292227 () Bool)

(assert (=> b!276985 m!292227))

(check-sat (not b!276986) (not b!276993) (not b!276992) (not b!276991) (not b!276984) (not start!26700) (not b!276985))
(check-sat)
