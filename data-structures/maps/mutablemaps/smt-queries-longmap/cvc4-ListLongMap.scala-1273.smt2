; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26210 () Bool)

(assert start!26210)

(declare-fun b!270783 () Bool)

(declare-fun res!134823 () Bool)

(declare-fun e!174395 () Bool)

(assert (=> b!270783 (=> (not res!134823) (not e!174395))))

(declare-datatypes ((array!13296 0))(
  ( (array!13297 (arr!6297 (Array (_ BitVec 32) (_ BitVec 64))) (size!6649 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13296)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13296 (_ BitVec 32)) Bool)

(assert (=> b!270783 (= res!134823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270784 () Bool)

(assert (=> b!270784 (= e!174395 false)))

(declare-fun lt!135731 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4126 0))(
  ( (Nil!4123) (Cons!4122 (h!4789 (_ BitVec 64)) (t!9216 List!4126)) )
))
(declare-fun contains!1935 (List!4126 (_ BitVec 64)) Bool)

(assert (=> b!270784 (= lt!135731 (contains!1935 Nil!4123 k!2581))))

(declare-fun b!270785 () Bool)

(declare-fun res!134814 () Bool)

(declare-fun e!174396 () Bool)

(assert (=> b!270785 (=> (not res!134814) (not e!174396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270785 (= res!134814 (validKeyInArray!0 k!2581))))

(declare-fun res!134819 () Bool)

(assert (=> start!26210 (=> (not res!134819) (not e!174396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26210 (= res!134819 (validMask!0 mask!3868))))

(assert (=> start!26210 e!174396))

(declare-fun array_inv!4251 (array!13296) Bool)

(assert (=> start!26210 (array_inv!4251 a!3325)))

(assert (=> start!26210 true))

(declare-fun b!270786 () Bool)

(declare-fun res!134822 () Bool)

(assert (=> b!270786 (=> (not res!134822) (not e!174396))))

(declare-fun arrayNoDuplicates!0 (array!13296 (_ BitVec 32) List!4126) Bool)

(assert (=> b!270786 (= res!134822 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4123))))

(declare-fun b!270787 () Bool)

(declare-fun res!134813 () Bool)

(assert (=> b!270787 (=> (not res!134813) (not e!174395))))

(assert (=> b!270787 (= res!134813 (and (bvslt (size!6649 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6649 a!3325))))))

(declare-fun b!270788 () Bool)

(declare-fun res!134811 () Bool)

(assert (=> b!270788 (=> (not res!134811) (not e!174396))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270788 (= res!134811 (and (= (size!6649 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6649 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6649 a!3325))))))

(declare-fun b!270789 () Bool)

(declare-fun res!134821 () Bool)

(assert (=> b!270789 (=> (not res!134821) (not e!174395))))

(assert (=> b!270789 (= res!134821 (not (contains!1935 Nil!4123 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270790 () Bool)

(declare-fun res!134816 () Bool)

(assert (=> b!270790 (=> (not res!134816) (not e!174395))))

(assert (=> b!270790 (= res!134816 (validKeyInArray!0 (select (arr!6297 a!3325) startIndex!26)))))

(declare-fun b!270791 () Bool)

(declare-fun res!134817 () Bool)

(assert (=> b!270791 (=> (not res!134817) (not e!174396))))

(declare-fun arrayContainsKey!0 (array!13296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270791 (= res!134817 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270792 () Bool)

(declare-fun res!134812 () Bool)

(assert (=> b!270792 (=> (not res!134812) (not e!174395))))

(assert (=> b!270792 (= res!134812 (not (contains!1935 Nil!4123 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270793 () Bool)

(declare-fun res!134815 () Bool)

(assert (=> b!270793 (=> (not res!134815) (not e!174395))))

(declare-fun noDuplicate!124 (List!4126) Bool)

(assert (=> b!270793 (= res!134815 (noDuplicate!124 Nil!4123))))

(declare-fun b!270794 () Bool)

(declare-fun res!134820 () Bool)

(assert (=> b!270794 (=> (not res!134820) (not e!174395))))

(assert (=> b!270794 (= res!134820 (not (= startIndex!26 i!1267)))))

(declare-fun b!270795 () Bool)

(assert (=> b!270795 (= e!174396 e!174395)))

(declare-fun res!134818 () Bool)

(assert (=> b!270795 (=> (not res!134818) (not e!174395))))

(declare-datatypes ((SeekEntryResult!1466 0))(
  ( (MissingZero!1466 (index!8034 (_ BitVec 32))) (Found!1466 (index!8035 (_ BitVec 32))) (Intermediate!1466 (undefined!2278 Bool) (index!8036 (_ BitVec 32)) (x!26335 (_ BitVec 32))) (Undefined!1466) (MissingVacant!1466 (index!8037 (_ BitVec 32))) )
))
(declare-fun lt!135730 () SeekEntryResult!1466)

(assert (=> b!270795 (= res!134818 (or (= lt!135730 (MissingZero!1466 i!1267)) (= lt!135730 (MissingVacant!1466 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13296 (_ BitVec 32)) SeekEntryResult!1466)

(assert (=> b!270795 (= lt!135730 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26210 res!134819) b!270788))

(assert (= (and b!270788 res!134811) b!270785))

(assert (= (and b!270785 res!134814) b!270786))

(assert (= (and b!270786 res!134822) b!270791))

(assert (= (and b!270791 res!134817) b!270795))

(assert (= (and b!270795 res!134818) b!270783))

(assert (= (and b!270783 res!134823) b!270794))

(assert (= (and b!270794 res!134820) b!270790))

(assert (= (and b!270790 res!134816) b!270787))

(assert (= (and b!270787 res!134813) b!270793))

(assert (= (and b!270793 res!134815) b!270789))

(assert (= (and b!270789 res!134821) b!270792))

(assert (= (and b!270792 res!134812) b!270784))

(declare-fun m!286313 () Bool)

(assert (=> b!270792 m!286313))

(declare-fun m!286315 () Bool)

(assert (=> b!270793 m!286315))

(declare-fun m!286317 () Bool)

(assert (=> b!270790 m!286317))

(assert (=> b!270790 m!286317))

(declare-fun m!286319 () Bool)

(assert (=> b!270790 m!286319))

(declare-fun m!286321 () Bool)

(assert (=> b!270791 m!286321))

(declare-fun m!286323 () Bool)

(assert (=> b!270786 m!286323))

(declare-fun m!286325 () Bool)

(assert (=> b!270785 m!286325))

(declare-fun m!286327 () Bool)

(assert (=> b!270784 m!286327))

(declare-fun m!286329 () Bool)

(assert (=> b!270783 m!286329))

(declare-fun m!286331 () Bool)

(assert (=> b!270795 m!286331))

(declare-fun m!286333 () Bool)

(assert (=> b!270789 m!286333))

(declare-fun m!286335 () Bool)

(assert (=> start!26210 m!286335))

(declare-fun m!286337 () Bool)

(assert (=> start!26210 m!286337))

(push 1)

