; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92236 () Bool)

(assert start!92236)

(declare-fun b!1048141 () Bool)

(declare-fun res!697412 () Bool)

(declare-fun e!594491 () Bool)

(assert (=> b!1048141 (=> (not res!697412) (not e!594491))))

(declare-datatypes ((array!66012 0))(
  ( (array!66013 (arr!31743 (Array (_ BitVec 32) (_ BitVec 64))) (size!32280 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66012)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048141 (= res!697412 (= (select (arr!31743 a!3488) i!1381) k!2747))))

(declare-fun b!1048142 () Bool)

(declare-fun res!697414 () Bool)

(assert (=> b!1048142 (=> (not res!697414) (not e!594491))))

(declare-datatypes ((List!22186 0))(
  ( (Nil!22183) (Cons!22182 (h!23391 (_ BitVec 64)) (t!31500 List!22186)) )
))
(declare-fun arrayNoDuplicates!0 (array!66012 (_ BitVec 32) List!22186) Bool)

(assert (=> b!1048142 (= res!697414 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22183))))

(declare-fun res!697415 () Bool)

(assert (=> start!92236 (=> (not res!697415) (not e!594491))))

(assert (=> start!92236 (= res!697415 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32280 a!3488)) (bvslt (size!32280 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92236 e!594491))

(assert (=> start!92236 true))

(declare-fun array_inv!24365 (array!66012) Bool)

(assert (=> start!92236 (array_inv!24365 a!3488)))

(declare-fun b!1048143 () Bool)

(assert (=> b!1048143 (= e!594491 (bvsge #b00000000000000000000000000000000 (size!32280 a!3488)))))

(declare-fun b!1048144 () Bool)

(declare-fun res!697416 () Bool)

(assert (=> b!1048144 (=> (not res!697416) (not e!594491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048144 (= res!697416 (validKeyInArray!0 k!2747))))

(declare-fun b!1048145 () Bool)

(declare-fun res!697413 () Bool)

(assert (=> b!1048145 (=> (not res!697413) (not e!594491))))

(declare-fun arrayContainsKey!0 (array!66012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048145 (= res!697413 (arrayContainsKey!0 (array!66013 (store (arr!31743 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32280 a!3488)) k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92236 res!697415) b!1048142))

(assert (= (and b!1048142 res!697414) b!1048144))

(assert (= (and b!1048144 res!697416) b!1048141))

(assert (= (and b!1048141 res!697412) b!1048145))

(assert (= (and b!1048145 res!697413) b!1048143))

(declare-fun m!969303 () Bool)

(assert (=> b!1048144 m!969303))

(declare-fun m!969305 () Bool)

(assert (=> b!1048141 m!969305))

(declare-fun m!969307 () Bool)

(assert (=> start!92236 m!969307))

(declare-fun m!969309 () Bool)

(assert (=> b!1048145 m!969309))

(declare-fun m!969311 () Bool)

(assert (=> b!1048145 m!969311))

(declare-fun m!969313 () Bool)

(assert (=> b!1048142 m!969313))

(push 1)

(assert (not b!1048144))

(assert (not b!1048145))

(assert (not start!92236))

(assert (not b!1048142))

