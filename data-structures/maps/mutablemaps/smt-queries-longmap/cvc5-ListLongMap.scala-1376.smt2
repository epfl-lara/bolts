; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27118 () Bool)

(assert start!27118)

(declare-fun b!280176 () Bool)

(declare-fun res!143286 () Bool)

(declare-fun e!178471 () Bool)

(assert (=> b!280176 (=> (not res!143286) (not e!178471))))

(declare-datatypes ((List!4433 0))(
  ( (Nil!4430) (Cons!4429 (h!5099 (_ BitVec 64)) (t!9523 List!4433)) )
))
(declare-fun contains!1983 (List!4433 (_ BitVec 64)) Bool)

(assert (=> b!280176 (= res!143286 (not (contains!1983 Nil!4430 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280177 () Bool)

(declare-fun res!143288 () Bool)

(declare-fun e!178469 () Bool)

(assert (=> b!280177 (=> (not res!143288) (not e!178469))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280177 (= res!143288 (validKeyInArray!0 k!2581))))

(declare-fun b!280179 () Bool)

(assert (=> b!280179 (= e!178469 e!178471)))

(declare-fun res!143293 () Bool)

(assert (=> b!280179 (=> (not res!143293) (not e!178471))))

(declare-datatypes ((SeekEntryResult!1773 0))(
  ( (MissingZero!1773 (index!9262 (_ BitVec 32))) (Found!1773 (index!9263 (_ BitVec 32))) (Intermediate!1773 (undefined!2585 Bool) (index!9264 (_ BitVec 32)) (x!27475 (_ BitVec 32))) (Undefined!1773) (MissingVacant!1773 (index!9265 (_ BitVec 32))) )
))
(declare-fun lt!138814 () SeekEntryResult!1773)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280179 (= res!143293 (or (= lt!138814 (MissingZero!1773 i!1267)) (= lt!138814 (MissingVacant!1773 i!1267))))))

(declare-datatypes ((array!13925 0))(
  ( (array!13926 (arr!6604 (Array (_ BitVec 32) (_ BitVec 64))) (size!6956 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13925)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13925 (_ BitVec 32)) SeekEntryResult!1773)

(assert (=> b!280179 (= lt!138814 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280180 () Bool)

(declare-fun res!143295 () Bool)

(assert (=> b!280180 (=> (not res!143295) (not e!178471))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280180 (= res!143295 (validKeyInArray!0 (select (arr!6604 a!3325) startIndex!26)))))

(declare-fun b!280181 () Bool)

(declare-fun res!143285 () Bool)

(assert (=> b!280181 (=> (not res!143285) (not e!178471))))

(declare-fun noDuplicate!167 (List!4433) Bool)

(assert (=> b!280181 (= res!143285 (noDuplicate!167 Nil!4430))))

(declare-fun b!280182 () Bool)

(declare-fun res!143287 () Bool)

(assert (=> b!280182 (=> (not res!143287) (not e!178469))))

(declare-fun arrayContainsKey!0 (array!13925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280182 (= res!143287 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280183 () Bool)

(declare-fun res!143283 () Bool)

(assert (=> b!280183 (=> (not res!143283) (not e!178471))))

(assert (=> b!280183 (= res!143283 (not (= startIndex!26 i!1267)))))

(declare-fun b!280184 () Bool)

(declare-fun res!143289 () Bool)

(assert (=> b!280184 (=> (not res!143289) (not e!178469))))

(declare-fun arrayNoDuplicates!0 (array!13925 (_ BitVec 32) List!4433) Bool)

(assert (=> b!280184 (= res!143289 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4430))))

(declare-fun b!280185 () Bool)

(declare-fun res!143294 () Bool)

(assert (=> b!280185 (=> (not res!143294) (not e!178469))))

(assert (=> b!280185 (= res!143294 (and (= (size!6956 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6956 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6956 a!3325))))))

(declare-fun b!280186 () Bool)

(declare-fun res!143292 () Bool)

(assert (=> b!280186 (=> (not res!143292) (not e!178471))))

(assert (=> b!280186 (= res!143292 (and (bvslt (size!6956 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6956 a!3325))))))

(declare-fun b!280178 () Bool)

(assert (=> b!280178 (= e!178471 false)))

(declare-fun lt!138815 () Bool)

(assert (=> b!280178 (= lt!138815 (contains!1983 Nil!4430 k!2581))))

(declare-fun res!143284 () Bool)

(assert (=> start!27118 (=> (not res!143284) (not e!178469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27118 (= res!143284 (validMask!0 mask!3868))))

(assert (=> start!27118 e!178469))

(declare-fun array_inv!4558 (array!13925) Bool)

(assert (=> start!27118 (array_inv!4558 a!3325)))

(assert (=> start!27118 true))

(declare-fun b!280187 () Bool)

(declare-fun res!143290 () Bool)

(assert (=> b!280187 (=> (not res!143290) (not e!178471))))

(assert (=> b!280187 (= res!143290 (not (contains!1983 Nil!4430 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280188 () Bool)

(declare-fun res!143291 () Bool)

(assert (=> b!280188 (=> (not res!143291) (not e!178471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13925 (_ BitVec 32)) Bool)

(assert (=> b!280188 (= res!143291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27118 res!143284) b!280185))

(assert (= (and b!280185 res!143294) b!280177))

(assert (= (and b!280177 res!143288) b!280184))

(assert (= (and b!280184 res!143289) b!280182))

(assert (= (and b!280182 res!143287) b!280179))

(assert (= (and b!280179 res!143293) b!280188))

(assert (= (and b!280188 res!143291) b!280183))

(assert (= (and b!280183 res!143283) b!280180))

(assert (= (and b!280180 res!143295) b!280186))

(assert (= (and b!280186 res!143292) b!280181))

(assert (= (and b!280181 res!143285) b!280176))

(assert (= (and b!280176 res!143286) b!280187))

(assert (= (and b!280187 res!143290) b!280178))

(declare-fun m!294721 () Bool)

(assert (=> b!280184 m!294721))

(declare-fun m!294723 () Bool)

(assert (=> b!280176 m!294723))

(declare-fun m!294725 () Bool)

(assert (=> b!280182 m!294725))

(declare-fun m!294727 () Bool)

(assert (=> b!280188 m!294727))

(declare-fun m!294729 () Bool)

(assert (=> b!280181 m!294729))

(declare-fun m!294731 () Bool)

(assert (=> start!27118 m!294731))

(declare-fun m!294733 () Bool)

(assert (=> start!27118 m!294733))

(declare-fun m!294735 () Bool)

(assert (=> b!280180 m!294735))

(assert (=> b!280180 m!294735))

(declare-fun m!294737 () Bool)

(assert (=> b!280180 m!294737))

(declare-fun m!294739 () Bool)

(assert (=> b!280179 m!294739))

(declare-fun m!294741 () Bool)

(assert (=> b!280177 m!294741))

(declare-fun m!294743 () Bool)

(assert (=> b!280187 m!294743))

(declare-fun m!294745 () Bool)

(assert (=> b!280178 m!294745))

(push 1)

