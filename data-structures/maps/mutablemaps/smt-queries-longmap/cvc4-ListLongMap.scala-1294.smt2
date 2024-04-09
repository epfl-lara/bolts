; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26336 () Bool)

(assert start!26336)

(declare-fun b!272776 () Bool)

(declare-fun res!136811 () Bool)

(declare-fun e!174962 () Bool)

(assert (=> b!272776 (=> (not res!136811) (not e!174962))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272776 (= res!136811 (not (= startIndex!26 i!1267)))))

(declare-fun b!272777 () Bool)

(declare-fun res!136804 () Bool)

(assert (=> b!272777 (=> (not res!136804) (not e!174962))))

(declare-datatypes ((array!13422 0))(
  ( (array!13423 (arr!6360 (Array (_ BitVec 32) (_ BitVec 64))) (size!6712 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13422)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13422 (_ BitVec 32)) Bool)

(assert (=> b!272777 (= res!136804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272778 () Bool)

(assert (=> b!272778 (= e!174962 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4189 0))(
  ( (Nil!4186) (Cons!4185 (h!4852 (_ BitVec 64)) (t!9279 List!4189)) )
))
(declare-fun arrayNoDuplicates!0 (array!13422 (_ BitVec 32) List!4189) Bool)

(assert (=> b!272778 (arrayNoDuplicates!0 (array!13423 (store (arr!6360 a!3325) i!1267 k!2581) (size!6712 a!3325)) #b00000000000000000000000000000000 Nil!4186)))

(declare-datatypes ((Unit!8524 0))(
  ( (Unit!8525) )
))
(declare-fun lt!136109 () Unit!8524)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13422 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4189) Unit!8524)

(assert (=> b!272778 (= lt!136109 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4186))))

(declare-fun b!272779 () Bool)

(declare-fun res!136805 () Bool)

(declare-fun e!174964 () Bool)

(assert (=> b!272779 (=> (not res!136805) (not e!174964))))

(assert (=> b!272779 (= res!136805 (and (= (size!6712 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6712 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6712 a!3325))))))

(declare-fun b!272781 () Bool)

(declare-fun res!136812 () Bool)

(assert (=> b!272781 (=> (not res!136812) (not e!174964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272781 (= res!136812 (validKeyInArray!0 k!2581))))

(declare-fun b!272782 () Bool)

(declare-fun res!136810 () Bool)

(assert (=> b!272782 (=> (not res!136810) (not e!174964))))

(declare-fun arrayContainsKey!0 (array!13422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272782 (= res!136810 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!136808 () Bool)

(assert (=> start!26336 (=> (not res!136808) (not e!174964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26336 (= res!136808 (validMask!0 mask!3868))))

(assert (=> start!26336 e!174964))

(declare-fun array_inv!4314 (array!13422) Bool)

(assert (=> start!26336 (array_inv!4314 a!3325)))

(assert (=> start!26336 true))

(declare-fun b!272780 () Bool)

(assert (=> b!272780 (= e!174964 e!174962)))

(declare-fun res!136809 () Bool)

(assert (=> b!272780 (=> (not res!136809) (not e!174962))))

(declare-datatypes ((SeekEntryResult!1529 0))(
  ( (MissingZero!1529 (index!8286 (_ BitVec 32))) (Found!1529 (index!8287 (_ BitVec 32))) (Intermediate!1529 (undefined!2341 Bool) (index!8288 (_ BitVec 32)) (x!26566 (_ BitVec 32))) (Undefined!1529) (MissingVacant!1529 (index!8289 (_ BitVec 32))) )
))
(declare-fun lt!136108 () SeekEntryResult!1529)

(assert (=> b!272780 (= res!136809 (or (= lt!136108 (MissingZero!1529 i!1267)) (= lt!136108 (MissingVacant!1529 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13422 (_ BitVec 32)) SeekEntryResult!1529)

(assert (=> b!272780 (= lt!136108 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272783 () Bool)

(declare-fun res!136806 () Bool)

(assert (=> b!272783 (=> (not res!136806) (not e!174962))))

(assert (=> b!272783 (= res!136806 (validKeyInArray!0 (select (arr!6360 a!3325) startIndex!26)))))

(declare-fun b!272784 () Bool)

(declare-fun res!136807 () Bool)

(assert (=> b!272784 (=> (not res!136807) (not e!174964))))

(assert (=> b!272784 (= res!136807 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4186))))

(assert (= (and start!26336 res!136808) b!272779))

(assert (= (and b!272779 res!136805) b!272781))

(assert (= (and b!272781 res!136812) b!272784))

(assert (= (and b!272784 res!136807) b!272782))

(assert (= (and b!272782 res!136810) b!272780))

(assert (= (and b!272780 res!136809) b!272777))

(assert (= (and b!272777 res!136804) b!272776))

(assert (= (and b!272776 res!136811) b!272783))

(assert (= (and b!272783 res!136806) b!272778))

(declare-fun m!287875 () Bool)

(assert (=> b!272782 m!287875))

(declare-fun m!287877 () Bool)

(assert (=> b!272780 m!287877))

(declare-fun m!287879 () Bool)

(assert (=> b!272784 m!287879))

(declare-fun m!287881 () Bool)

(assert (=> b!272783 m!287881))

(assert (=> b!272783 m!287881))

(declare-fun m!287883 () Bool)

(assert (=> b!272783 m!287883))

(declare-fun m!287885 () Bool)

(assert (=> start!26336 m!287885))

(declare-fun m!287887 () Bool)

(assert (=> start!26336 m!287887))

(declare-fun m!287889 () Bool)

(assert (=> b!272778 m!287889))

(declare-fun m!287891 () Bool)

(assert (=> b!272778 m!287891))

(declare-fun m!287893 () Bool)

(assert (=> b!272778 m!287893))

(declare-fun m!287895 () Bool)

(assert (=> b!272781 m!287895))

(declare-fun m!287897 () Bool)

(assert (=> b!272777 m!287897))

(push 1)

