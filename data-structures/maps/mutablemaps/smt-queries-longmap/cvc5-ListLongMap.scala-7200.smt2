; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92298 () Bool)

(assert start!92298)

(declare-fun res!697728 () Bool)

(declare-fun e!594751 () Bool)

(assert (=> start!92298 (=> (not res!697728) (not e!594751))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66047 0))(
  ( (array!66048 (arr!31759 (Array (_ BitVec 32) (_ BitVec 64))) (size!32296 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66047)

(assert (=> start!92298 (= res!697728 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32296 a!3488)) (bvslt (size!32296 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92298 e!594751))

(assert (=> start!92298 true))

(declare-fun array_inv!24381 (array!66047) Bool)

(assert (=> start!92298 (array_inv!24381 a!3488)))

(declare-fun b!1048486 () Bool)

(declare-fun e!594750 () Bool)

(declare-fun e!594747 () Bool)

(assert (=> b!1048486 (= e!594750 e!594747)))

(declare-fun res!697723 () Bool)

(assert (=> b!1048486 (=> (not res!697723) (not e!594747))))

(declare-fun lt!463200 () (_ BitVec 32))

(assert (=> b!1048486 (= res!697723 (not (= lt!463200 i!1381)))))

(declare-fun lt!463201 () array!66047)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66047 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048486 (= lt!463200 (arrayScanForKey!0 lt!463201 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048487 () Bool)

(declare-fun e!594752 () Bool)

(declare-fun arrayContainsKey!0 (array!66047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048487 (= e!594752 (arrayContainsKey!0 a!3488 k!2747 lt!463200))))

(declare-fun b!1048488 () Bool)

(declare-fun res!697721 () Bool)

(assert (=> b!1048488 (=> (not res!697721) (not e!594751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048488 (= res!697721 (validKeyInArray!0 k!2747))))

(declare-fun b!1048489 () Bool)

(declare-fun e!594748 () Bool)

(assert (=> b!1048489 (= e!594748 e!594752)))

(declare-fun res!697727 () Bool)

(assert (=> b!1048489 (=> res!697727 e!594752)))

(assert (=> b!1048489 (= res!697727 (bvsle lt!463200 i!1381))))

(declare-fun b!1048490 () Bool)

(declare-fun res!697726 () Bool)

(assert (=> b!1048490 (=> (not res!697726) (not e!594751))))

(declare-datatypes ((List!22202 0))(
  ( (Nil!22199) (Cons!22198 (h!23407 (_ BitVec 64)) (t!31516 List!22202)) )
))
(declare-fun arrayNoDuplicates!0 (array!66047 (_ BitVec 32) List!22202) Bool)

(assert (=> b!1048490 (= res!697726 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22199))))

(declare-fun b!1048491 () Bool)

(assert (=> b!1048491 (= e!594747 (not true))))

(assert (=> b!1048491 e!594748))

(declare-fun res!697725 () Bool)

(assert (=> b!1048491 (=> (not res!697725) (not e!594748))))

(assert (=> b!1048491 (= res!697725 (= (select (store (arr!31759 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463200) k!2747))))

(declare-fun b!1048492 () Bool)

(declare-fun res!697724 () Bool)

(assert (=> b!1048492 (=> (not res!697724) (not e!594751))))

(assert (=> b!1048492 (= res!697724 (= (select (arr!31759 a!3488) i!1381) k!2747))))

(declare-fun b!1048493 () Bool)

(assert (=> b!1048493 (= e!594751 e!594750)))

(declare-fun res!697722 () Bool)

(assert (=> b!1048493 (=> (not res!697722) (not e!594750))))

(assert (=> b!1048493 (= res!697722 (arrayContainsKey!0 lt!463201 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048493 (= lt!463201 (array!66048 (store (arr!31759 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32296 a!3488)))))

(assert (= (and start!92298 res!697728) b!1048490))

(assert (= (and b!1048490 res!697726) b!1048488))

(assert (= (and b!1048488 res!697721) b!1048492))

(assert (= (and b!1048492 res!697724) b!1048493))

(assert (= (and b!1048493 res!697722) b!1048486))

(assert (= (and b!1048486 res!697723) b!1048491))

(assert (= (and b!1048491 res!697725) b!1048489))

(assert (= (and b!1048489 (not res!697727)) b!1048487))

(declare-fun m!969573 () Bool)

(assert (=> b!1048490 m!969573))

(declare-fun m!969575 () Bool)

(assert (=> b!1048488 m!969575))

(declare-fun m!969577 () Bool)

(assert (=> b!1048493 m!969577))

(declare-fun m!969579 () Bool)

(assert (=> b!1048493 m!969579))

(assert (=> b!1048491 m!969579))

(declare-fun m!969581 () Bool)

(assert (=> b!1048491 m!969581))

(declare-fun m!969583 () Bool)

(assert (=> b!1048492 m!969583))

(declare-fun m!969585 () Bool)

(assert (=> b!1048486 m!969585))

(declare-fun m!969587 () Bool)

(assert (=> start!92298 m!969587))

(declare-fun m!969589 () Bool)

(assert (=> b!1048487 m!969589))

(push 1)

