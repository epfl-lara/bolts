; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27596 () Bool)

(assert start!27596)

(declare-fun res!147558 () Bool)

(declare-fun e!180688 () Bool)

(assert (=> start!27596 (=> (not res!147558) (not e!180688))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27596 (= res!147558 (validMask!0 mask!3868))))

(assert (=> start!27596 e!180688))

(declare-datatypes ((array!14235 0))(
  ( (array!14236 (arr!6756 (Array (_ BitVec 32) (_ BitVec 64))) (size!7108 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14235)

(declare-fun array_inv!4710 (array!14235) Bool)

(assert (=> start!27596 (array_inv!4710 a!3325)))

(assert (=> start!27596 true))

(declare-fun b!285003 () Bool)

(declare-fun e!180686 () Bool)

(assert (=> b!285003 (= e!180686 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14235 (_ BitVec 32)) Bool)

(assert (=> b!285003 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14236 (store (arr!6756 a!3325) i!1267 k!2581) (size!7108 a!3325)) mask!3868)))

(declare-datatypes ((Unit!9035 0))(
  ( (Unit!9036) )
))
(declare-fun lt!140698 () Unit!9035)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9035)

(assert (=> b!285003 (= lt!140698 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!285004 () Bool)

(declare-fun res!147550 () Bool)

(assert (=> b!285004 (=> (not res!147550) (not e!180688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285004 (= res!147550 (validKeyInArray!0 k!2581))))

(declare-fun b!285005 () Bool)

(assert (=> b!285005 (= e!180688 e!180686)))

(declare-fun res!147554 () Bool)

(assert (=> b!285005 (=> (not res!147554) (not e!180686))))

(declare-datatypes ((SeekEntryResult!1925 0))(
  ( (MissingZero!1925 (index!9870 (_ BitVec 32))) (Found!1925 (index!9871 (_ BitVec 32))) (Intermediate!1925 (undefined!2737 Bool) (index!9872 (_ BitVec 32)) (x!28036 (_ BitVec 32))) (Undefined!1925) (MissingVacant!1925 (index!9873 (_ BitVec 32))) )
))
(declare-fun lt!140699 () SeekEntryResult!1925)

(assert (=> b!285005 (= res!147554 (or (= lt!140699 (MissingZero!1925 i!1267)) (= lt!140699 (MissingVacant!1925 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14235 (_ BitVec 32)) SeekEntryResult!1925)

(assert (=> b!285005 (= lt!140699 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285006 () Bool)

(declare-fun res!147557 () Bool)

(assert (=> b!285006 (=> (not res!147557) (not e!180686))))

(assert (=> b!285006 (= res!147557 (not (validKeyInArray!0 (select (arr!6756 a!3325) startIndex!26))))))

(declare-fun b!285007 () Bool)

(declare-fun res!147555 () Bool)

(assert (=> b!285007 (=> (not res!147555) (not e!180688))))

(declare-fun arrayContainsKey!0 (array!14235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285007 (= res!147555 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285008 () Bool)

(declare-fun res!147553 () Bool)

(assert (=> b!285008 (=> (not res!147553) (not e!180686))))

(assert (=> b!285008 (= res!147553 (not (= startIndex!26 i!1267)))))

(declare-fun b!285009 () Bool)

(declare-fun res!147556 () Bool)

(assert (=> b!285009 (=> (not res!147556) (not e!180688))))

(assert (=> b!285009 (= res!147556 (and (= (size!7108 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7108 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7108 a!3325))))))

(declare-fun b!285010 () Bool)

(declare-fun res!147549 () Bool)

(assert (=> b!285010 (=> (not res!147549) (not e!180686))))

(assert (=> b!285010 (= res!147549 (and (bvslt startIndex!26 (bvsub (size!7108 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!285011 () Bool)

(declare-fun res!147552 () Bool)

(assert (=> b!285011 (=> (not res!147552) (not e!180688))))

(declare-datatypes ((List!4585 0))(
  ( (Nil!4582) (Cons!4581 (h!5254 (_ BitVec 64)) (t!9675 List!4585)) )
))
(declare-fun arrayNoDuplicates!0 (array!14235 (_ BitVec 32) List!4585) Bool)

(assert (=> b!285011 (= res!147552 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4582))))

(declare-fun b!285012 () Bool)

(declare-fun res!147551 () Bool)

(assert (=> b!285012 (=> (not res!147551) (not e!180686))))

(assert (=> b!285012 (= res!147551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27596 res!147558) b!285009))

(assert (= (and b!285009 res!147556) b!285004))

(assert (= (and b!285004 res!147550) b!285011))

(assert (= (and b!285011 res!147552) b!285007))

(assert (= (and b!285007 res!147555) b!285005))

(assert (= (and b!285005 res!147554) b!285012))

(assert (= (and b!285012 res!147551) b!285008))

(assert (= (and b!285008 res!147553) b!285006))

(assert (= (and b!285006 res!147557) b!285010))

(assert (= (and b!285010 res!147549) b!285003))

(declare-fun m!299911 () Bool)

(assert (=> b!285011 m!299911))

(declare-fun m!299913 () Bool)

(assert (=> b!285004 m!299913))

(declare-fun m!299915 () Bool)

(assert (=> b!285005 m!299915))

(declare-fun m!299917 () Bool)

(assert (=> start!27596 m!299917))

(declare-fun m!299919 () Bool)

(assert (=> start!27596 m!299919))

(declare-fun m!299921 () Bool)

(assert (=> b!285003 m!299921))

(declare-fun m!299923 () Bool)

(assert (=> b!285003 m!299923))

(declare-fun m!299925 () Bool)

(assert (=> b!285003 m!299925))

(declare-fun m!299927 () Bool)

(assert (=> b!285012 m!299927))

(declare-fun m!299929 () Bool)

(assert (=> b!285007 m!299929))

(declare-fun m!299931 () Bool)

(assert (=> b!285006 m!299931))

(assert (=> b!285006 m!299931))

(declare-fun m!299933 () Bool)

(assert (=> b!285006 m!299933))

(push 1)

(assert (not b!285007))

(assert (not b!285012))

(assert (not b!285006))

(assert (not b!285011))

(assert (not b!285003))

(assert (not start!27596))

