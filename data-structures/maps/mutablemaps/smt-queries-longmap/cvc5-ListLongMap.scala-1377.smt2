; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27124 () Bool)

(assert start!27124)

(declare-fun b!280293 () Bool)

(declare-fun res!143407 () Bool)

(declare-fun e!178496 () Bool)

(assert (=> b!280293 (=> (not res!143407) (not e!178496))))

(declare-datatypes ((array!13931 0))(
  ( (array!13932 (arr!6607 (Array (_ BitVec 32) (_ BitVec 64))) (size!6959 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13931)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13931 (_ BitVec 32)) Bool)

(assert (=> b!280293 (= res!143407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280294 () Bool)

(declare-fun res!143406 () Bool)

(assert (=> b!280294 (=> (not res!143406) (not e!178496))))

(declare-datatypes ((List!4436 0))(
  ( (Nil!4433) (Cons!4432 (h!5102 (_ BitVec 64)) (t!9526 List!4436)) )
))
(declare-fun contains!1986 (List!4436 (_ BitVec 64)) Bool)

(assert (=> b!280294 (= res!143406 (not (contains!1986 Nil!4433 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280295 () Bool)

(declare-fun res!143405 () Bool)

(declare-fun e!178497 () Bool)

(assert (=> b!280295 (=> (not res!143405) (not e!178497))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280295 (= res!143405 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!143403 () Bool)

(assert (=> start!27124 (=> (not res!143403) (not e!178497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27124 (= res!143403 (validMask!0 mask!3868))))

(assert (=> start!27124 e!178497))

(declare-fun array_inv!4561 (array!13931) Bool)

(assert (=> start!27124 (array_inv!4561 a!3325)))

(assert (=> start!27124 true))

(declare-fun b!280296 () Bool)

(declare-fun res!143402 () Bool)

(assert (=> b!280296 (=> (not res!143402) (not e!178496))))

(assert (=> b!280296 (= res!143402 (not (contains!1986 Nil!4433 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280297 () Bool)

(declare-fun res!143401 () Bool)

(assert (=> b!280297 (=> (not res!143401) (not e!178496))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280297 (= res!143401 (validKeyInArray!0 (select (arr!6607 a!3325) startIndex!26)))))

(declare-fun b!280298 () Bool)

(declare-fun res!143400 () Bool)

(assert (=> b!280298 (=> (not res!143400) (not e!178496))))

(assert (=> b!280298 (= res!143400 (and (bvslt (size!6959 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6959 a!3325))))))

(declare-fun b!280299 () Bool)

(assert (=> b!280299 (= e!178496 false)))

(declare-fun lt!138833 () Bool)

(assert (=> b!280299 (= lt!138833 (contains!1986 Nil!4433 k!2581))))

(declare-fun b!280300 () Bool)

(declare-fun res!143411 () Bool)

(assert (=> b!280300 (=> (not res!143411) (not e!178497))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280300 (= res!143411 (and (= (size!6959 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6959 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6959 a!3325))))))

(declare-fun b!280301 () Bool)

(declare-fun res!143412 () Bool)

(assert (=> b!280301 (=> (not res!143412) (not e!178497))))

(declare-fun arrayNoDuplicates!0 (array!13931 (_ BitVec 32) List!4436) Bool)

(assert (=> b!280301 (= res!143412 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4433))))

(declare-fun b!280302 () Bool)

(declare-fun res!143409 () Bool)

(assert (=> b!280302 (=> (not res!143409) (not e!178496))))

(declare-fun noDuplicate!170 (List!4436) Bool)

(assert (=> b!280302 (= res!143409 (noDuplicate!170 Nil!4433))))

(declare-fun b!280303 () Bool)

(declare-fun res!143408 () Bool)

(assert (=> b!280303 (=> (not res!143408) (not e!178497))))

(assert (=> b!280303 (= res!143408 (validKeyInArray!0 k!2581))))

(declare-fun b!280304 () Bool)

(declare-fun res!143410 () Bool)

(assert (=> b!280304 (=> (not res!143410) (not e!178496))))

(assert (=> b!280304 (= res!143410 (not (= startIndex!26 i!1267)))))

(declare-fun b!280305 () Bool)

(assert (=> b!280305 (= e!178497 e!178496)))

(declare-fun res!143404 () Bool)

(assert (=> b!280305 (=> (not res!143404) (not e!178496))))

(declare-datatypes ((SeekEntryResult!1776 0))(
  ( (MissingZero!1776 (index!9274 (_ BitVec 32))) (Found!1776 (index!9275 (_ BitVec 32))) (Intermediate!1776 (undefined!2588 Bool) (index!9276 (_ BitVec 32)) (x!27486 (_ BitVec 32))) (Undefined!1776) (MissingVacant!1776 (index!9277 (_ BitVec 32))) )
))
(declare-fun lt!138832 () SeekEntryResult!1776)

(assert (=> b!280305 (= res!143404 (or (= lt!138832 (MissingZero!1776 i!1267)) (= lt!138832 (MissingVacant!1776 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13931 (_ BitVec 32)) SeekEntryResult!1776)

(assert (=> b!280305 (= lt!138832 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27124 res!143403) b!280300))

(assert (= (and b!280300 res!143411) b!280303))

(assert (= (and b!280303 res!143408) b!280301))

(assert (= (and b!280301 res!143412) b!280295))

(assert (= (and b!280295 res!143405) b!280305))

(assert (= (and b!280305 res!143404) b!280293))

(assert (= (and b!280293 res!143407) b!280304))

(assert (= (and b!280304 res!143410) b!280297))

(assert (= (and b!280297 res!143401) b!280298))

(assert (= (and b!280298 res!143400) b!280302))

(assert (= (and b!280302 res!143409) b!280296))

(assert (= (and b!280296 res!143402) b!280294))

(assert (= (and b!280294 res!143406) b!280299))

(declare-fun m!294799 () Bool)

(assert (=> b!280301 m!294799))

(declare-fun m!294801 () Bool)

(assert (=> b!280294 m!294801))

(declare-fun m!294803 () Bool)

(assert (=> b!280297 m!294803))

(assert (=> b!280297 m!294803))

(declare-fun m!294805 () Bool)

(assert (=> b!280297 m!294805))

(declare-fun m!294807 () Bool)

(assert (=> b!280296 m!294807))

(declare-fun m!294809 () Bool)

(assert (=> b!280295 m!294809))

(declare-fun m!294811 () Bool)

(assert (=> b!280302 m!294811))

(declare-fun m!294813 () Bool)

(assert (=> b!280299 m!294813))

(declare-fun m!294815 () Bool)

(assert (=> b!280305 m!294815))

(declare-fun m!294817 () Bool)

(assert (=> b!280303 m!294817))

(declare-fun m!294819 () Bool)

(assert (=> start!27124 m!294819))

(declare-fun m!294821 () Bool)

(assert (=> start!27124 m!294821))

(declare-fun m!294823 () Bool)

(assert (=> b!280293 m!294823))

(push 1)

