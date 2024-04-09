; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92408 () Bool)

(assert start!92408)

(declare-fun b!1050168 () Bool)

(declare-fun e!595952 () Bool)

(declare-fun e!595945 () Bool)

(assert (=> b!1050168 (= e!595952 e!595945)))

(declare-fun res!699410 () Bool)

(assert (=> b!1050168 (=> res!699410 e!595945)))

(declare-fun lt!463819 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050168 (= res!699410 (bvsle lt!463819 i!1381))))

(declare-fun b!1050169 () Bool)

(declare-fun e!595951 () Bool)

(declare-fun e!595948 () Bool)

(assert (=> b!1050169 (= e!595951 e!595948)))

(declare-fun res!699414 () Bool)

(assert (=> b!1050169 (=> (not res!699414) (not e!595948))))

(declare-datatypes ((array!66157 0))(
  ( (array!66158 (arr!31814 (Array (_ BitVec 32) (_ BitVec 64))) (size!32351 (_ BitVec 32))) )
))
(declare-fun lt!463817 () array!66157)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050169 (= res!699414 (arrayContainsKey!0 lt!463817 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66157)

(assert (=> b!1050169 (= lt!463817 (array!66158 (store (arr!31814 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32351 a!3488)))))

(declare-fun b!1050170 () Bool)

(declare-fun e!595950 () Bool)

(assert (=> b!1050170 (= e!595948 e!595950)))

(declare-fun res!699411 () Bool)

(assert (=> b!1050170 (=> (not res!699411) (not e!595950))))

(assert (=> b!1050170 (= res!699411 (not (= lt!463819 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66157 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050170 (= lt!463819 (arrayScanForKey!0 lt!463817 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050171 () Bool)

(declare-fun res!699409 () Bool)

(assert (=> b!1050171 (=> (not res!699409) (not e!595951))))

(declare-datatypes ((List!22257 0))(
  ( (Nil!22254) (Cons!22253 (h!23462 (_ BitVec 64)) (t!31571 List!22257)) )
))
(declare-fun arrayNoDuplicates!0 (array!66157 (_ BitVec 32) List!22257) Bool)

(assert (=> b!1050171 (= res!699409 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22254))))

(declare-fun b!1050172 () Bool)

(declare-fun e!595946 () Bool)

(assert (=> b!1050172 (= e!595950 (not e!595946))))

(declare-fun res!699413 () Bool)

(assert (=> b!1050172 (=> res!699413 e!595946)))

(assert (=> b!1050172 (= res!699413 (bvsle lt!463819 i!1381))))

(assert (=> b!1050172 e!595952))

(declare-fun res!699403 () Bool)

(assert (=> b!1050172 (=> (not res!699403) (not e!595952))))

(assert (=> b!1050172 (= res!699403 (= (select (store (arr!31814 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463819) k0!2747))))

(declare-fun b!1050174 () Bool)

(declare-fun e!595947 () Bool)

(assert (=> b!1050174 (= e!595947 true)))

(declare-fun lt!463815 () Bool)

(declare-fun contains!6149 (List!22257 (_ BitVec 64)) Bool)

(assert (=> b!1050174 (= lt!463815 (contains!6149 Nil!22254 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050175 () Bool)

(declare-fun res!699405 () Bool)

(assert (=> b!1050175 (=> res!699405 e!595947)))

(assert (=> b!1050175 (= res!699405 (contains!6149 Nil!22254 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050176 () Bool)

(assert (=> b!1050176 (= e!595945 (arrayContainsKey!0 a!3488 k0!2747 lt!463819))))

(declare-fun b!1050177 () Bool)

(declare-fun res!699407 () Bool)

(assert (=> b!1050177 (=> (not res!699407) (not e!595951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050177 (= res!699407 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050173 () Bool)

(assert (=> b!1050173 (= e!595946 e!595947)))

(declare-fun res!699412 () Bool)

(assert (=> b!1050173 (=> res!699412 e!595947)))

(assert (=> b!1050173 (= res!699412 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32351 a!3488)))))

(assert (=> b!1050173 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34357 0))(
  ( (Unit!34358) )
))
(declare-fun lt!463816 () Unit!34357)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66157 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34357)

(assert (=> b!1050173 (= lt!463816 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463819 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050173 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22254)))

(declare-fun lt!463818 () Unit!34357)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66157 (_ BitVec 32) (_ BitVec 32)) Unit!34357)

(assert (=> b!1050173 (= lt!463818 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!699406 () Bool)

(assert (=> start!92408 (=> (not res!699406) (not e!595951))))

(assert (=> start!92408 (= res!699406 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32351 a!3488)) (bvslt (size!32351 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92408 e!595951))

(assert (=> start!92408 true))

(declare-fun array_inv!24436 (array!66157) Bool)

(assert (=> start!92408 (array_inv!24436 a!3488)))

(declare-fun b!1050178 () Bool)

(declare-fun res!699408 () Bool)

(assert (=> b!1050178 (=> (not res!699408) (not e!595951))))

(assert (=> b!1050178 (= res!699408 (= (select (arr!31814 a!3488) i!1381) k0!2747))))

(declare-fun b!1050179 () Bool)

(declare-fun res!699404 () Bool)

(assert (=> b!1050179 (=> res!699404 e!595947)))

(declare-fun noDuplicate!1534 (List!22257) Bool)

(assert (=> b!1050179 (= res!699404 (not (noDuplicate!1534 Nil!22254)))))

(assert (= (and start!92408 res!699406) b!1050171))

(assert (= (and b!1050171 res!699409) b!1050177))

(assert (= (and b!1050177 res!699407) b!1050178))

(assert (= (and b!1050178 res!699408) b!1050169))

(assert (= (and b!1050169 res!699414) b!1050170))

(assert (= (and b!1050170 res!699411) b!1050172))

(assert (= (and b!1050172 res!699403) b!1050168))

(assert (= (and b!1050168 (not res!699410)) b!1050176))

(assert (= (and b!1050172 (not res!699413)) b!1050173))

(assert (= (and b!1050173 (not res!699412)) b!1050179))

(assert (= (and b!1050179 (not res!699404)) b!1050175))

(assert (= (and b!1050175 (not res!699405)) b!1050174))

(declare-fun m!970985 () Bool)

(assert (=> b!1050169 m!970985))

(declare-fun m!970987 () Bool)

(assert (=> b!1050169 m!970987))

(declare-fun m!970989 () Bool)

(assert (=> b!1050170 m!970989))

(declare-fun m!970991 () Bool)

(assert (=> b!1050178 m!970991))

(declare-fun m!970993 () Bool)

(assert (=> b!1050171 m!970993))

(declare-fun m!970995 () Bool)

(assert (=> b!1050177 m!970995))

(declare-fun m!970997 () Bool)

(assert (=> b!1050175 m!970997))

(declare-fun m!970999 () Bool)

(assert (=> start!92408 m!970999))

(declare-fun m!971001 () Bool)

(assert (=> b!1050173 m!971001))

(declare-fun m!971003 () Bool)

(assert (=> b!1050173 m!971003))

(declare-fun m!971005 () Bool)

(assert (=> b!1050173 m!971005))

(declare-fun m!971007 () Bool)

(assert (=> b!1050173 m!971007))

(declare-fun m!971009 () Bool)

(assert (=> b!1050179 m!971009))

(assert (=> b!1050172 m!970987))

(declare-fun m!971011 () Bool)

(assert (=> b!1050172 m!971011))

(declare-fun m!971013 () Bool)

(assert (=> b!1050174 m!971013))

(declare-fun m!971015 () Bool)

(assert (=> b!1050176 m!971015))

(check-sat (not b!1050173) (not b!1050176) (not start!92408) (not b!1050170) (not b!1050177) (not b!1050175) (not b!1050174) (not b!1050169) (not b!1050171) (not b!1050179))
(check-sat)
