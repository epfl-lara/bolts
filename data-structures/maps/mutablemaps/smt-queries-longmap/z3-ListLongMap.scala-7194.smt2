; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92234 () Bool)

(assert start!92234)

(declare-fun b!1048126 () Bool)

(declare-fun res!697398 () Bool)

(declare-fun e!594484 () Bool)

(assert (=> b!1048126 (=> (not res!697398) (not e!594484))))

(declare-datatypes ((array!66010 0))(
  ( (array!66011 (arr!31742 (Array (_ BitVec 32) (_ BitVec 64))) (size!32279 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66010)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048126 (= res!697398 (= (select (arr!31742 a!3488) i!1381) k0!2747))))

(declare-fun b!1048127 () Bool)

(assert (=> b!1048127 (= e!594484 (bvsge #b00000000000000000000000000000000 (size!32279 a!3488)))))

(declare-fun res!697400 () Bool)

(assert (=> start!92234 (=> (not res!697400) (not e!594484))))

(assert (=> start!92234 (= res!697400 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32279 a!3488)) (bvslt (size!32279 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92234 e!594484))

(assert (=> start!92234 true))

(declare-fun array_inv!24364 (array!66010) Bool)

(assert (=> start!92234 (array_inv!24364 a!3488)))

(declare-fun b!1048128 () Bool)

(declare-fun res!697397 () Bool)

(assert (=> b!1048128 (=> (not res!697397) (not e!594484))))

(declare-fun arrayContainsKey!0 (array!66010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048128 (= res!697397 (arrayContainsKey!0 (array!66011 (store (arr!31742 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32279 a!3488)) k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048129 () Bool)

(declare-fun res!697399 () Bool)

(assert (=> b!1048129 (=> (not res!697399) (not e!594484))))

(declare-datatypes ((List!22185 0))(
  ( (Nil!22182) (Cons!22181 (h!23390 (_ BitVec 64)) (t!31499 List!22185)) )
))
(declare-fun arrayNoDuplicates!0 (array!66010 (_ BitVec 32) List!22185) Bool)

(assert (=> b!1048129 (= res!697399 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22182))))

(declare-fun b!1048130 () Bool)

(declare-fun res!697401 () Bool)

(assert (=> b!1048130 (=> (not res!697401) (not e!594484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048130 (= res!697401 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92234 res!697400) b!1048129))

(assert (= (and b!1048129 res!697399) b!1048130))

(assert (= (and b!1048130 res!697401) b!1048126))

(assert (= (and b!1048126 res!697398) b!1048128))

(assert (= (and b!1048128 res!697397) b!1048127))

(declare-fun m!969291 () Bool)

(assert (=> b!1048128 m!969291))

(declare-fun m!969293 () Bool)

(assert (=> b!1048128 m!969293))

(declare-fun m!969295 () Bool)

(assert (=> b!1048126 m!969295))

(declare-fun m!969297 () Bool)

(assert (=> b!1048130 m!969297))

(declare-fun m!969299 () Bool)

(assert (=> b!1048129 m!969299))

(declare-fun m!969301 () Bool)

(assert (=> start!92234 m!969301))

(check-sat (not b!1048130) (not start!92234) (not b!1048129) (not b!1048128))
(check-sat)
