; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93492 () Bool)

(assert start!93492)

(declare-fun b!1058542 () Bool)

(declare-fun e!602280 () Bool)

(declare-fun e!602277 () Bool)

(assert (=> b!1058542 (= e!602280 e!602277)))

(declare-fun res!707228 () Bool)

(assert (=> b!1058542 (=> (not res!707228) (not e!602277))))

(declare-datatypes ((array!66743 0))(
  ( (array!66744 (arr!32086 (Array (_ BitVec 32) (_ BitVec 64))) (size!32623 (_ BitVec 32))) )
))
(declare-fun lt!466968 () array!66743)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058542 (= res!707228 (arrayContainsKey!0 lt!466968 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66743)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058542 (= lt!466968 (array!66744 (store (arr!32086 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32623 a!3488)))))

(declare-fun b!1058543 () Bool)

(declare-fun res!707227 () Bool)

(assert (=> b!1058543 (=> (not res!707227) (not e!602280))))

(assert (=> b!1058543 (= res!707227 (= (select (arr!32086 a!3488) i!1381) k!2747))))

(declare-fun b!1058544 () Bool)

(declare-fun res!707226 () Bool)

(assert (=> b!1058544 (=> (not res!707226) (not e!602280))))

(declare-datatypes ((List!22529 0))(
  ( (Nil!22526) (Cons!22525 (h!23734 (_ BitVec 64)) (t!31843 List!22529)) )
))
(declare-fun arrayNoDuplicates!0 (array!66743 (_ BitVec 32) List!22529) Bool)

(assert (=> b!1058544 (= res!707226 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22526))))

(declare-fun res!707225 () Bool)

(assert (=> start!93492 (=> (not res!707225) (not e!602280))))

(assert (=> start!93492 (= res!707225 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32623 a!3488)) (bvslt (size!32623 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93492 e!602280))

(assert (=> start!93492 true))

(declare-fun array_inv!24708 (array!66743) Bool)

(assert (=> start!93492 (array_inv!24708 a!3488)))

(declare-fun b!1058545 () Bool)

(declare-fun e!602278 () Bool)

(assert (=> b!1058545 (= e!602277 e!602278)))

(declare-fun res!707230 () Bool)

(assert (=> b!1058545 (=> (not res!707230) (not e!602278))))

(declare-fun lt!466969 () (_ BitVec 32))

(assert (=> b!1058545 (= res!707230 (not (= lt!466969 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66743 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058545 (= lt!466969 (arrayScanForKey!0 lt!466968 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058546 () Bool)

(assert (=> b!1058546 (= e!602278 (not true))))

(assert (=> b!1058546 (= (select (store (arr!32086 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466969) k!2747)))

(declare-fun b!1058547 () Bool)

(declare-fun res!707229 () Bool)

(assert (=> b!1058547 (=> (not res!707229) (not e!602280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058547 (= res!707229 (validKeyInArray!0 k!2747))))

(assert (= (and start!93492 res!707225) b!1058544))

(assert (= (and b!1058544 res!707226) b!1058547))

(assert (= (and b!1058547 res!707229) b!1058543))

(assert (= (and b!1058543 res!707227) b!1058542))

(assert (= (and b!1058542 res!707228) b!1058545))

(assert (= (and b!1058545 res!707230) b!1058546))

(declare-fun m!978339 () Bool)

(assert (=> b!1058543 m!978339))

(declare-fun m!978341 () Bool)

(assert (=> b!1058542 m!978341))

(declare-fun m!978343 () Bool)

(assert (=> b!1058542 m!978343))

(declare-fun m!978345 () Bool)

(assert (=> b!1058545 m!978345))

(declare-fun m!978347 () Bool)

(assert (=> b!1058547 m!978347))

(assert (=> b!1058546 m!978343))

(declare-fun m!978349 () Bool)

(assert (=> b!1058546 m!978349))

(declare-fun m!978351 () Bool)

(assert (=> start!93492 m!978351))

(declare-fun m!978353 () Bool)

(assert (=> b!1058544 m!978353))

(push 1)

