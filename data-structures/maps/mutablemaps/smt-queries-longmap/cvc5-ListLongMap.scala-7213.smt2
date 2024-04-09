; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92376 () Bool)

(assert start!92376)

(declare-fun b!1049592 () Bool)

(declare-fun e!595565 () Bool)

(declare-fun e!595568 () Bool)

(assert (=> b!1049592 (= e!595565 e!595568)))

(declare-fun res!698828 () Bool)

(assert (=> b!1049592 (=> (not res!698828) (not e!595568))))

(declare-datatypes ((array!66125 0))(
  ( (array!66126 (arr!31798 (Array (_ BitVec 32) (_ BitVec 64))) (size!32335 (_ BitVec 32))) )
))
(declare-fun lt!463575 () array!66125)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049592 (= res!698828 (arrayContainsKey!0 lt!463575 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66125)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049592 (= lt!463575 (array!66126 (store (arr!31798 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32335 a!3488)))))

(declare-fun res!698832 () Bool)

(assert (=> start!92376 (=> (not res!698832) (not e!595565))))

(assert (=> start!92376 (= res!698832 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32335 a!3488)) (bvslt (size!32335 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92376 e!595565))

(assert (=> start!92376 true))

(declare-fun array_inv!24420 (array!66125) Bool)

(assert (=> start!92376 (array_inv!24420 a!3488)))

(declare-fun b!1049593 () Bool)

(declare-fun res!698829 () Bool)

(declare-fun e!595561 () Bool)

(assert (=> b!1049593 (=> res!698829 e!595561)))

(declare-datatypes ((List!22241 0))(
  ( (Nil!22238) (Cons!22237 (h!23446 (_ BitVec 64)) (t!31555 List!22241)) )
))
(declare-fun contains!6133 (List!22241 (_ BitVec 64)) Bool)

(assert (=> b!1049593 (= res!698829 (contains!6133 Nil!22238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!595563 () Bool)

(declare-fun b!1049594 () Bool)

(declare-fun lt!463579 () (_ BitVec 32))

(assert (=> b!1049594 (= e!595563 (arrayContainsKey!0 a!3488 k!2747 lt!463579))))

(declare-fun b!1049595 () Bool)

(declare-fun res!698838 () Bool)

(assert (=> b!1049595 (=> (not res!698838) (not e!595565))))

(declare-fun arrayNoDuplicates!0 (array!66125 (_ BitVec 32) List!22241) Bool)

(assert (=> b!1049595 (= res!698838 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22238))))

(declare-fun b!1049596 () Bool)

(assert (=> b!1049596 (= e!595561 true)))

(declare-fun lt!463577 () Bool)

(assert (=> b!1049596 (= lt!463577 (contains!6133 Nil!22238 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049597 () Bool)

(declare-fun e!595567 () Bool)

(assert (=> b!1049597 (= e!595567 e!595563)))

(declare-fun res!698831 () Bool)

(assert (=> b!1049597 (=> res!698831 e!595563)))

(assert (=> b!1049597 (= res!698831 (bvsle lt!463579 i!1381))))

(declare-fun b!1049598 () Bool)

(declare-fun e!595564 () Bool)

(declare-fun e!595566 () Bool)

(assert (=> b!1049598 (= e!595564 (not e!595566))))

(declare-fun res!698836 () Bool)

(assert (=> b!1049598 (=> res!698836 e!595566)))

(assert (=> b!1049598 (= res!698836 (bvsle lt!463579 i!1381))))

(assert (=> b!1049598 e!595567))

(declare-fun res!698833 () Bool)

(assert (=> b!1049598 (=> (not res!698833) (not e!595567))))

(assert (=> b!1049598 (= res!698833 (= (select (store (arr!31798 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463579) k!2747))))

(declare-fun b!1049599 () Bool)

(declare-fun res!698830 () Bool)

(assert (=> b!1049599 (=> (not res!698830) (not e!595565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049599 (= res!698830 (validKeyInArray!0 k!2747))))

(declare-fun b!1049600 () Bool)

(declare-fun res!698835 () Bool)

(assert (=> b!1049600 (=> res!698835 e!595561)))

(declare-fun noDuplicate!1518 (List!22241) Bool)

(assert (=> b!1049600 (= res!698835 (not (noDuplicate!1518 Nil!22238)))))

(declare-fun b!1049601 () Bool)

(declare-fun res!698827 () Bool)

(assert (=> b!1049601 (=> (not res!698827) (not e!595565))))

(assert (=> b!1049601 (= res!698827 (= (select (arr!31798 a!3488) i!1381) k!2747))))

(declare-fun b!1049602 () Bool)

(assert (=> b!1049602 (= e!595568 e!595564)))

(declare-fun res!698837 () Bool)

(assert (=> b!1049602 (=> (not res!698837) (not e!595564))))

(assert (=> b!1049602 (= res!698837 (not (= lt!463579 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66125 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049602 (= lt!463579 (arrayScanForKey!0 lt!463575 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049603 () Bool)

(assert (=> b!1049603 (= e!595566 e!595561)))

(declare-fun res!698834 () Bool)

(assert (=> b!1049603 (=> res!698834 e!595561)))

(assert (=> b!1049603 (= res!698834 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32335 a!3488)))))

(assert (=> b!1049603 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34325 0))(
  ( (Unit!34326) )
))
(declare-fun lt!463578 () Unit!34325)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66125 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34325)

(assert (=> b!1049603 (= lt!463578 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463579 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049603 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22238)))

(declare-fun lt!463576 () Unit!34325)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66125 (_ BitVec 32) (_ BitVec 32)) Unit!34325)

(assert (=> b!1049603 (= lt!463576 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92376 res!698832) b!1049595))

(assert (= (and b!1049595 res!698838) b!1049599))

(assert (= (and b!1049599 res!698830) b!1049601))

(assert (= (and b!1049601 res!698827) b!1049592))

(assert (= (and b!1049592 res!698828) b!1049602))

(assert (= (and b!1049602 res!698837) b!1049598))

(assert (= (and b!1049598 res!698833) b!1049597))

(assert (= (and b!1049597 (not res!698831)) b!1049594))

(assert (= (and b!1049598 (not res!698836)) b!1049603))

(assert (= (and b!1049603 (not res!698834)) b!1049600))

(assert (= (and b!1049600 (not res!698835)) b!1049593))

(assert (= (and b!1049593 (not res!698829)) b!1049596))

(declare-fun m!970473 () Bool)

(assert (=> b!1049596 m!970473))

(declare-fun m!970475 () Bool)

(assert (=> b!1049602 m!970475))

(declare-fun m!970477 () Bool)

(assert (=> b!1049601 m!970477))

(declare-fun m!970479 () Bool)

(assert (=> b!1049594 m!970479))

(declare-fun m!970481 () Bool)

(assert (=> b!1049593 m!970481))

(declare-fun m!970483 () Bool)

(assert (=> b!1049603 m!970483))

(declare-fun m!970485 () Bool)

(assert (=> b!1049603 m!970485))

(declare-fun m!970487 () Bool)

(assert (=> b!1049603 m!970487))

(declare-fun m!970489 () Bool)

(assert (=> b!1049603 m!970489))

(declare-fun m!970491 () Bool)

(assert (=> start!92376 m!970491))

(declare-fun m!970493 () Bool)

(assert (=> b!1049598 m!970493))

(declare-fun m!970495 () Bool)

(assert (=> b!1049598 m!970495))

(declare-fun m!970497 () Bool)

(assert (=> b!1049592 m!970497))

(assert (=> b!1049592 m!970493))

(declare-fun m!970499 () Bool)

(assert (=> b!1049595 m!970499))

(declare-fun m!970501 () Bool)

(assert (=> b!1049599 m!970501))

(declare-fun m!970503 () Bool)

(assert (=> b!1049600 m!970503))

(push 1)

