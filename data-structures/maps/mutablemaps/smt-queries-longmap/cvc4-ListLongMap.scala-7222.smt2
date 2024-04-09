; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92434 () Bool)

(assert start!92434)

(declare-fun b!1050507 () Bool)

(declare-fun e!596200 () Bool)

(assert (=> b!1050507 (= e!596200 (not true))))

(declare-fun lt!463987 () (_ BitVec 32))

(declare-datatypes ((array!66183 0))(
  ( (array!66184 (arr!31827 (Array (_ BitVec 32) (_ BitVec 64))) (size!32364 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66183)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050507 (= (select (store (arr!31827 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463987) k!2747)))

(declare-fun b!1050508 () Bool)

(declare-fun res!699747 () Bool)

(declare-fun e!596199 () Bool)

(assert (=> b!1050508 (=> (not res!699747) (not e!596199))))

(assert (=> b!1050508 (= res!699747 (= (select (arr!31827 a!3488) i!1381) k!2747))))

(declare-fun b!1050509 () Bool)

(declare-fun res!699746 () Bool)

(assert (=> b!1050509 (=> (not res!699746) (not e!596199))))

(declare-datatypes ((List!22270 0))(
  ( (Nil!22267) (Cons!22266 (h!23475 (_ BitVec 64)) (t!31584 List!22270)) )
))
(declare-fun arrayNoDuplicates!0 (array!66183 (_ BitVec 32) List!22270) Bool)

(assert (=> b!1050509 (= res!699746 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22267))))

(declare-fun b!1050510 () Bool)

(declare-fun e!596198 () Bool)

(assert (=> b!1050510 (= e!596199 e!596198)))

(declare-fun res!699745 () Bool)

(assert (=> b!1050510 (=> (not res!699745) (not e!596198))))

(declare-fun lt!463986 () array!66183)

(declare-fun arrayContainsKey!0 (array!66183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050510 (= res!699745 (arrayContainsKey!0 lt!463986 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050510 (= lt!463986 (array!66184 (store (arr!31827 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32364 a!3488)))))

(declare-fun res!699744 () Bool)

(assert (=> start!92434 (=> (not res!699744) (not e!596199))))

(assert (=> start!92434 (= res!699744 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32364 a!3488)) (bvslt (size!32364 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92434 e!596199))

(assert (=> start!92434 true))

(declare-fun array_inv!24449 (array!66183) Bool)

(assert (=> start!92434 (array_inv!24449 a!3488)))

(declare-fun b!1050511 () Bool)

(assert (=> b!1050511 (= e!596198 e!596200)))

(declare-fun res!699743 () Bool)

(assert (=> b!1050511 (=> (not res!699743) (not e!596200))))

(assert (=> b!1050511 (= res!699743 (not (= lt!463987 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66183 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050511 (= lt!463987 (arrayScanForKey!0 lt!463986 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050512 () Bool)

(declare-fun res!699742 () Bool)

(assert (=> b!1050512 (=> (not res!699742) (not e!596199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050512 (= res!699742 (validKeyInArray!0 k!2747))))

(assert (= (and start!92434 res!699744) b!1050509))

(assert (= (and b!1050509 res!699746) b!1050512))

(assert (= (and b!1050512 res!699742) b!1050508))

(assert (= (and b!1050508 res!699747) b!1050510))

(assert (= (and b!1050510 res!699745) b!1050511))

(assert (= (and b!1050511 res!699743) b!1050507))

(declare-fun m!971333 () Bool)

(assert (=> b!1050510 m!971333))

(declare-fun m!971335 () Bool)

(assert (=> b!1050510 m!971335))

(declare-fun m!971337 () Bool)

(assert (=> b!1050511 m!971337))

(declare-fun m!971339 () Bool)

(assert (=> b!1050508 m!971339))

(assert (=> b!1050507 m!971335))

(declare-fun m!971341 () Bool)

(assert (=> b!1050507 m!971341))

(declare-fun m!971343 () Bool)

(assert (=> b!1050509 m!971343))

(declare-fun m!971345 () Bool)

(assert (=> b!1050512 m!971345))

(declare-fun m!971347 () Bool)

(assert (=> start!92434 m!971347))

(push 1)

(assert (not b!1050511))

