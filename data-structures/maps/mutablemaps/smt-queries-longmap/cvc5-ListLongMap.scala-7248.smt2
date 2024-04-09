; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92586 () Bool)

(assert start!92586)

(declare-fun b!1052694 () Bool)

(declare-fun e!597770 () Bool)

(declare-fun e!597767 () Bool)

(assert (=> b!1052694 (= e!597770 e!597767)))

(declare-fun res!701933 () Bool)

(assert (=> b!1052694 (=> (not res!701933) (not e!597767))))

(declare-datatypes ((array!66335 0))(
  ( (array!66336 (arr!31903 (Array (_ BitVec 32) (_ BitVec 64))) (size!32440 (_ BitVec 32))) )
))
(declare-fun lt!464928 () array!66335)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052694 (= res!701933 (arrayContainsKey!0 lt!464928 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66335)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052694 (= lt!464928 (array!66336 (store (arr!31903 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32440 a!3488)))))

(declare-fun b!1052695 () Bool)

(declare-fun e!597769 () Bool)

(assert (=> b!1052695 (= e!597767 e!597769)))

(declare-fun res!701934 () Bool)

(assert (=> b!1052695 (=> (not res!701934) (not e!597769))))

(declare-fun lt!464929 () (_ BitVec 32))

(assert (=> b!1052695 (= res!701934 (not (= lt!464929 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66335 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052695 (= lt!464929 (arrayScanForKey!0 lt!464928 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052696 () Bool)

(declare-fun res!701931 () Bool)

(assert (=> b!1052696 (=> (not res!701931) (not e!597770))))

(assert (=> b!1052696 (= res!701931 (= (select (arr!31903 a!3488) i!1381) k!2747))))

(declare-fun b!1052697 () Bool)

(declare-fun res!701929 () Bool)

(assert (=> b!1052697 (=> (not res!701929) (not e!597770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052697 (= res!701929 (validKeyInArray!0 k!2747))))

(declare-fun b!1052698 () Bool)

(assert (=> b!1052698 (= e!597769 (not true))))

(assert (=> b!1052698 (= (select (store (arr!31903 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464929) k!2747)))

(declare-fun b!1052699 () Bool)

(declare-fun res!701932 () Bool)

(assert (=> b!1052699 (=> (not res!701932) (not e!597770))))

(declare-datatypes ((List!22346 0))(
  ( (Nil!22343) (Cons!22342 (h!23551 (_ BitVec 64)) (t!31660 List!22346)) )
))
(declare-fun arrayNoDuplicates!0 (array!66335 (_ BitVec 32) List!22346) Bool)

(assert (=> b!1052699 (= res!701932 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22343))))

(declare-fun res!701930 () Bool)

(assert (=> start!92586 (=> (not res!701930) (not e!597770))))

(assert (=> start!92586 (= res!701930 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32440 a!3488)) (bvslt (size!32440 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92586 e!597770))

(assert (=> start!92586 true))

(declare-fun array_inv!24525 (array!66335) Bool)

(assert (=> start!92586 (array_inv!24525 a!3488)))

(assert (= (and start!92586 res!701930) b!1052699))

(assert (= (and b!1052699 res!701932) b!1052697))

(assert (= (and b!1052697 res!701929) b!1052696))

(assert (= (and b!1052696 res!701931) b!1052694))

(assert (= (and b!1052694 res!701933) b!1052695))

(assert (= (and b!1052695 res!701934) b!1052698))

(declare-fun m!973245 () Bool)

(assert (=> b!1052697 m!973245))

(declare-fun m!973247 () Bool)

(assert (=> start!92586 m!973247))

(declare-fun m!973249 () Bool)

(assert (=> b!1052696 m!973249))

(declare-fun m!973251 () Bool)

(assert (=> b!1052699 m!973251))

(declare-fun m!973253 () Bool)

(assert (=> b!1052695 m!973253))

(declare-fun m!973255 () Bool)

(assert (=> b!1052698 m!973255))

(declare-fun m!973257 () Bool)

(assert (=> b!1052698 m!973257))

(declare-fun m!973259 () Bool)

(assert (=> b!1052694 m!973259))

(assert (=> b!1052694 m!973255))

(push 1)

