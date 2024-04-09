; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27174 () Bool)

(assert start!27174)

(declare-fun b!280996 () Bool)

(declare-fun res!144107 () Bool)

(declare-fun e!178721 () Bool)

(assert (=> b!280996 (=> (not res!144107) (not e!178721))))

(declare-datatypes ((array!13981 0))(
  ( (array!13982 (arr!6632 (Array (_ BitVec 32) (_ BitVec 64))) (size!6984 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13981)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280996 (= res!144107 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280997 () Bool)

(declare-fun res!144109 () Bool)

(declare-fun e!178722 () Bool)

(assert (=> b!280997 (=> (not res!144109) (not e!178722))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280997 (= res!144109 (validKeyInArray!0 (select (arr!6632 a!3325) startIndex!26)))))

(declare-fun b!280998 () Bool)

(declare-fun res!144108 () Bool)

(assert (=> b!280998 (=> (not res!144108) (not e!178722))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13981 (_ BitVec 32)) Bool)

(assert (=> b!280998 (= res!144108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!144103 () Bool)

(assert (=> start!27174 (=> (not res!144103) (not e!178721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27174 (= res!144103 (validMask!0 mask!3868))))

(assert (=> start!27174 e!178721))

(declare-fun array_inv!4586 (array!13981) Bool)

(assert (=> start!27174 (array_inv!4586 a!3325)))

(assert (=> start!27174 true))

(declare-fun b!280999 () Bool)

(assert (=> b!280999 (= e!178721 e!178722)))

(declare-fun res!144104 () Bool)

(assert (=> b!280999 (=> (not res!144104) (not e!178722))))

(declare-datatypes ((SeekEntryResult!1801 0))(
  ( (MissingZero!1801 (index!9374 (_ BitVec 32))) (Found!1801 (index!9375 (_ BitVec 32))) (Intermediate!1801 (undefined!2613 Bool) (index!9376 (_ BitVec 32)) (x!27575 (_ BitVec 32))) (Undefined!1801) (MissingVacant!1801 (index!9377 (_ BitVec 32))) )
))
(declare-fun lt!138983 () SeekEntryResult!1801)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280999 (= res!144104 (or (= lt!138983 (MissingZero!1801 i!1267)) (= lt!138983 (MissingVacant!1801 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13981 (_ BitVec 32)) SeekEntryResult!1801)

(assert (=> b!280999 (= lt!138983 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281000 () Bool)

(declare-fun res!144106 () Bool)

(assert (=> b!281000 (=> (not res!144106) (not e!178721))))

(assert (=> b!281000 (= res!144106 (and (= (size!6984 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6984 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6984 a!3325))))))

(declare-fun b!281001 () Bool)

(declare-fun res!144111 () Bool)

(assert (=> b!281001 (=> (not res!144111) (not e!178722))))

(assert (=> b!281001 (= res!144111 (not (= startIndex!26 i!1267)))))

(declare-fun b!281002 () Bool)

(assert (=> b!281002 (= e!178722 (not true))))

(declare-datatypes ((List!4461 0))(
  ( (Nil!4458) (Cons!4457 (h!5127 (_ BitVec 64)) (t!9551 List!4461)) )
))
(declare-fun arrayNoDuplicates!0 (array!13981 (_ BitVec 32) List!4461) Bool)

(assert (=> b!281002 (arrayNoDuplicates!0 (array!13982 (store (arr!6632 a!3325) i!1267 k0!2581) (size!6984 a!3325)) #b00000000000000000000000000000000 Nil!4458)))

(declare-datatypes ((Unit!8865 0))(
  ( (Unit!8866) )
))
(declare-fun lt!138982 () Unit!8865)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13981 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4461) Unit!8865)

(assert (=> b!281002 (= lt!138982 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4458))))

(declare-fun b!281003 () Bool)

(declare-fun res!144110 () Bool)

(assert (=> b!281003 (=> (not res!144110) (not e!178721))))

(assert (=> b!281003 (= res!144110 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4458))))

(declare-fun b!281004 () Bool)

(declare-fun res!144105 () Bool)

(assert (=> b!281004 (=> (not res!144105) (not e!178721))))

(assert (=> b!281004 (= res!144105 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27174 res!144103) b!281000))

(assert (= (and b!281000 res!144106) b!281004))

(assert (= (and b!281004 res!144105) b!281003))

(assert (= (and b!281003 res!144110) b!280996))

(assert (= (and b!280996 res!144107) b!280999))

(assert (= (and b!280999 res!144104) b!280998))

(assert (= (and b!280998 res!144108) b!281001))

(assert (= (and b!281001 res!144111) b!280997))

(assert (= (and b!280997 res!144109) b!281002))

(declare-fun m!295405 () Bool)

(assert (=> b!281004 m!295405))

(declare-fun m!295407 () Bool)

(assert (=> b!280998 m!295407))

(declare-fun m!295409 () Bool)

(assert (=> start!27174 m!295409))

(declare-fun m!295411 () Bool)

(assert (=> start!27174 m!295411))

(declare-fun m!295413 () Bool)

(assert (=> b!280996 m!295413))

(declare-fun m!295415 () Bool)

(assert (=> b!281003 m!295415))

(declare-fun m!295417 () Bool)

(assert (=> b!280999 m!295417))

(declare-fun m!295419 () Bool)

(assert (=> b!281002 m!295419))

(declare-fun m!295421 () Bool)

(assert (=> b!281002 m!295421))

(declare-fun m!295423 () Bool)

(assert (=> b!281002 m!295423))

(declare-fun m!295425 () Bool)

(assert (=> b!280997 m!295425))

(assert (=> b!280997 m!295425))

(declare-fun m!295427 () Bool)

(assert (=> b!280997 m!295427))

(check-sat (not b!281004) (not start!27174) (not b!281003) (not b!280997) (not b!280999) (not b!280998) (not b!280996) (not b!281002))
(check-sat)
