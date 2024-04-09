; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27122 () Bool)

(assert start!27122)

(declare-fun b!280254 () Bool)

(declare-fun e!178487 () Bool)

(assert (=> b!280254 (= e!178487 false)))

(declare-fun lt!138826 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4435 0))(
  ( (Nil!4432) (Cons!4431 (h!5101 (_ BitVec 64)) (t!9525 List!4435)) )
))
(declare-fun contains!1985 (List!4435 (_ BitVec 64)) Bool)

(assert (=> b!280254 (= lt!138826 (contains!1985 Nil!4432 k!2581))))

(declare-fun b!280255 () Bool)

(declare-fun res!143363 () Bool)

(assert (=> b!280255 (=> (not res!143363) (not e!178487))))

(assert (=> b!280255 (= res!143363 (not (contains!1985 Nil!4432 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280256 () Bool)

(declare-fun res!143364 () Bool)

(assert (=> b!280256 (=> (not res!143364) (not e!178487))))

(assert (=> b!280256 (= res!143364 (not (contains!1985 Nil!4432 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280257 () Bool)

(declare-fun res!143372 () Bool)

(declare-fun e!178488 () Bool)

(assert (=> b!280257 (=> (not res!143372) (not e!178488))))

(declare-datatypes ((array!13929 0))(
  ( (array!13930 (arr!6606 (Array (_ BitVec 32) (_ BitVec 64))) (size!6958 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13929)

(declare-fun arrayContainsKey!0 (array!13929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280257 (= res!143372 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280258 () Bool)

(declare-fun res!143369 () Bool)

(assert (=> b!280258 (=> (not res!143369) (not e!178487))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280258 (= res!143369 (validKeyInArray!0 (select (arr!6606 a!3325) startIndex!26)))))

(declare-fun b!280259 () Bool)

(declare-fun res!143371 () Bool)

(assert (=> b!280259 (=> (not res!143371) (not e!178487))))

(declare-fun noDuplicate!169 (List!4435) Bool)

(assert (=> b!280259 (= res!143371 (noDuplicate!169 Nil!4432))))

(declare-fun b!280260 () Bool)

(declare-fun res!143362 () Bool)

(assert (=> b!280260 (=> (not res!143362) (not e!178487))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280260 (= res!143362 (not (= startIndex!26 i!1267)))))

(declare-fun res!143365 () Bool)

(assert (=> start!27122 (=> (not res!143365) (not e!178488))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27122 (= res!143365 (validMask!0 mask!3868))))

(assert (=> start!27122 e!178488))

(declare-fun array_inv!4560 (array!13929) Bool)

(assert (=> start!27122 (array_inv!4560 a!3325)))

(assert (=> start!27122 true))

(declare-fun b!280261 () Bool)

(declare-fun res!143361 () Bool)

(assert (=> b!280261 (=> (not res!143361) (not e!178488))))

(assert (=> b!280261 (= res!143361 (validKeyInArray!0 k!2581))))

(declare-fun b!280262 () Bool)

(declare-fun res!143370 () Bool)

(assert (=> b!280262 (=> (not res!143370) (not e!178487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13929 (_ BitVec 32)) Bool)

(assert (=> b!280262 (= res!143370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280263 () Bool)

(declare-fun res!143366 () Bool)

(assert (=> b!280263 (=> (not res!143366) (not e!178487))))

(assert (=> b!280263 (= res!143366 (and (bvslt (size!6958 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6958 a!3325))))))

(declare-fun b!280264 () Bool)

(declare-fun res!143368 () Bool)

(assert (=> b!280264 (=> (not res!143368) (not e!178488))))

(assert (=> b!280264 (= res!143368 (and (= (size!6958 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6958 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6958 a!3325))))))

(declare-fun b!280265 () Bool)

(declare-fun res!143373 () Bool)

(assert (=> b!280265 (=> (not res!143373) (not e!178488))))

(declare-fun arrayNoDuplicates!0 (array!13929 (_ BitVec 32) List!4435) Bool)

(assert (=> b!280265 (= res!143373 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4432))))

(declare-fun b!280266 () Bool)

(assert (=> b!280266 (= e!178488 e!178487)))

(declare-fun res!143367 () Bool)

(assert (=> b!280266 (=> (not res!143367) (not e!178487))))

(declare-datatypes ((SeekEntryResult!1775 0))(
  ( (MissingZero!1775 (index!9270 (_ BitVec 32))) (Found!1775 (index!9271 (_ BitVec 32))) (Intermediate!1775 (undefined!2587 Bool) (index!9272 (_ BitVec 32)) (x!27477 (_ BitVec 32))) (Undefined!1775) (MissingVacant!1775 (index!9273 (_ BitVec 32))) )
))
(declare-fun lt!138827 () SeekEntryResult!1775)

(assert (=> b!280266 (= res!143367 (or (= lt!138827 (MissingZero!1775 i!1267)) (= lt!138827 (MissingVacant!1775 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13929 (_ BitVec 32)) SeekEntryResult!1775)

(assert (=> b!280266 (= lt!138827 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27122 res!143365) b!280264))

(assert (= (and b!280264 res!143368) b!280261))

(assert (= (and b!280261 res!143361) b!280265))

(assert (= (and b!280265 res!143373) b!280257))

(assert (= (and b!280257 res!143372) b!280266))

(assert (= (and b!280266 res!143367) b!280262))

(assert (= (and b!280262 res!143370) b!280260))

(assert (= (and b!280260 res!143362) b!280258))

(assert (= (and b!280258 res!143369) b!280263))

(assert (= (and b!280263 res!143366) b!280259))

(assert (= (and b!280259 res!143371) b!280256))

(assert (= (and b!280256 res!143364) b!280255))

(assert (= (and b!280255 res!143363) b!280254))

(declare-fun m!294773 () Bool)

(assert (=> b!280266 m!294773))

(declare-fun m!294775 () Bool)

(assert (=> b!280265 m!294775))

(declare-fun m!294777 () Bool)

(assert (=> b!280255 m!294777))

(declare-fun m!294779 () Bool)

(assert (=> b!280254 m!294779))

(declare-fun m!294781 () Bool)

(assert (=> b!280257 m!294781))

(declare-fun m!294783 () Bool)

(assert (=> b!280256 m!294783))

(declare-fun m!294785 () Bool)

(assert (=> b!280258 m!294785))

(assert (=> b!280258 m!294785))

(declare-fun m!294787 () Bool)

(assert (=> b!280258 m!294787))

(declare-fun m!294789 () Bool)

(assert (=> b!280261 m!294789))

(declare-fun m!294791 () Bool)

(assert (=> start!27122 m!294791))

(declare-fun m!294793 () Bool)

(assert (=> start!27122 m!294793))

(declare-fun m!294795 () Bool)

(assert (=> b!280259 m!294795))

(declare-fun m!294797 () Bool)

(assert (=> b!280262 m!294797))

(push 1)

(assert (not b!280255))

