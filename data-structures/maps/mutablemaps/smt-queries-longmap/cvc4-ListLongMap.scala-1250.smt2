; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26072 () Bool)

(assert start!26072)

(declare-fun b!268783 () Bool)

(declare-fun res!133101 () Bool)

(declare-fun e!173558 () Bool)

(assert (=> b!268783 (=> (not res!133101) (not e!173558))))

(declare-datatypes ((array!13158 0))(
  ( (array!13159 (arr!6228 (Array (_ BitVec 32) (_ BitVec 64))) (size!6580 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13158)

(declare-datatypes ((List!4057 0))(
  ( (Nil!4054) (Cons!4053 (h!4720 (_ BitVec 64)) (t!9147 List!4057)) )
))
(declare-fun arrayNoDuplicates!0 (array!13158 (_ BitVec 32) List!4057) Bool)

(assert (=> b!268783 (= res!133101 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4054))))

(declare-fun b!268784 () Bool)

(declare-fun res!133103 () Bool)

(assert (=> b!268784 (=> (not res!133103) (not e!173558))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268784 (= res!133103 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268786 () Bool)

(declare-fun e!173560 () Bool)

(assert (=> b!268786 (= e!173558 e!173560)))

(declare-fun res!133102 () Bool)

(assert (=> b!268786 (=> (not res!133102) (not e!173560))))

(declare-datatypes ((SeekEntryResult!1397 0))(
  ( (MissingZero!1397 (index!7758 (_ BitVec 32))) (Found!1397 (index!7759 (_ BitVec 32))) (Intermediate!1397 (undefined!2209 Bool) (index!7760 (_ BitVec 32)) (x!26082 (_ BitVec 32))) (Undefined!1397) (MissingVacant!1397 (index!7761 (_ BitVec 32))) )
))
(declare-fun lt!135029 () SeekEntryResult!1397)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268786 (= res!133102 (or (= lt!135029 (MissingZero!1397 i!1267)) (= lt!135029 (MissingVacant!1397 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13158 (_ BitVec 32)) SeekEntryResult!1397)

(assert (=> b!268786 (= lt!135029 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268785 () Bool)

(declare-fun res!133104 () Bool)

(assert (=> b!268785 (=> (not res!133104) (not e!173558))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268785 (= res!133104 (and (= (size!6580 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6580 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6580 a!3325))))))

(declare-fun res!133100 () Bool)

(assert (=> start!26072 (=> (not res!133100) (not e!173558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26072 (= res!133100 (validMask!0 mask!3868))))

(assert (=> start!26072 e!173558))

(declare-fun array_inv!4182 (array!13158) Bool)

(assert (=> start!26072 (array_inv!4182 a!3325)))

(assert (=> start!26072 true))

(declare-fun b!268787 () Bool)

(assert (=> b!268787 (= e!173560 false)))

(declare-fun lt!135028 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13158 (_ BitVec 32)) Bool)

(assert (=> b!268787 (= lt!135028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268788 () Bool)

(declare-fun res!133099 () Bool)

(assert (=> b!268788 (=> (not res!133099) (not e!173558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268788 (= res!133099 (validKeyInArray!0 k!2581))))

(assert (= (and start!26072 res!133100) b!268785))

(assert (= (and b!268785 res!133104) b!268788))

(assert (= (and b!268788 res!133099) b!268783))

(assert (= (and b!268783 res!133101) b!268784))

(assert (= (and b!268784 res!133103) b!268786))

(assert (= (and b!268786 res!133102) b!268787))

(declare-fun m!284867 () Bool)

(assert (=> b!268786 m!284867))

(declare-fun m!284869 () Bool)

(assert (=> start!26072 m!284869))

(declare-fun m!284871 () Bool)

(assert (=> start!26072 m!284871))

(declare-fun m!284873 () Bool)

(assert (=> b!268787 m!284873))

(declare-fun m!284875 () Bool)

(assert (=> b!268783 m!284875))

(declare-fun m!284877 () Bool)

(assert (=> b!268784 m!284877))

(declare-fun m!284879 () Bool)

(assert (=> b!268788 m!284879))

(push 1)

(assert (not b!268783))

(assert (not b!268784))

(assert (not b!268788))

(assert (not start!26072))

(assert (not b!268786))

(assert (not b!268787))

