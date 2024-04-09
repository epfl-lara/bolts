; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92870 () Bool)

(assert start!92870)

(declare-fun b!1054176 () Bool)

(declare-fun e!598898 () Bool)

(declare-fun e!598899 () Bool)

(assert (=> b!1054176 (= e!598898 e!598899)))

(declare-fun res!703231 () Bool)

(assert (=> b!1054176 (=> res!703231 e!598899)))

(declare-fun lt!465318 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054176 (= res!703231 (bvsle lt!465318 i!1381))))

(declare-fun b!1054177 () Bool)

(declare-fun e!598904 () Bool)

(declare-fun e!598903 () Bool)

(assert (=> b!1054177 (= e!598904 (not e!598903))))

(declare-fun res!703225 () Bool)

(assert (=> b!1054177 (=> res!703225 e!598903)))

(assert (=> b!1054177 (= res!703225 (bvsle lt!465318 i!1381))))

(assert (=> b!1054177 e!598898))

(declare-fun res!703229 () Bool)

(assert (=> b!1054177 (=> (not res!703229) (not e!598898))))

(declare-datatypes ((array!66478 0))(
  ( (array!66479 (arr!31967 (Array (_ BitVec 32) (_ BitVec 64))) (size!32504 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66478)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1054177 (= res!703229 (= (select (store (arr!31967 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465318) k0!2747))))

(declare-fun b!1054178 () Bool)

(declare-fun arrayContainsKey!0 (array!66478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054178 (= e!598899 (arrayContainsKey!0 a!3488 k0!2747 lt!465318))))

(declare-fun b!1054179 () Bool)

(declare-fun res!703233 () Bool)

(declare-fun e!598901 () Bool)

(assert (=> b!1054179 (=> (not res!703233) (not e!598901))))

(assert (=> b!1054179 (= res!703233 (= (select (arr!31967 a!3488) i!1381) k0!2747))))

(declare-fun b!1054180 () Bool)

(assert (=> b!1054180 (= e!598903 (or (bvslt lt!465318 #b00000000000000000000000000000000) (bvsge lt!465318 (size!32504 a!3488)) (bvsge (bvadd #b00000000000000000000000000000001 i!1381) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!22410 0))(
  ( (Nil!22407) (Cons!22406 (h!23615 (_ BitVec 64)) (t!31724 List!22410)) )
))
(declare-fun arrayNoDuplicates!0 (array!66478 (_ BitVec 32) List!22410) Bool)

(assert (=> b!1054180 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22407)))

(declare-datatypes ((Unit!34501 0))(
  ( (Unit!34502) )
))
(declare-fun lt!465317 () Unit!34501)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66478 (_ BitVec 32) (_ BitVec 32)) Unit!34501)

(assert (=> b!1054180 (= lt!465317 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054181 () Bool)

(declare-fun e!598902 () Bool)

(assert (=> b!1054181 (= e!598901 e!598902)))

(declare-fun res!703230 () Bool)

(assert (=> b!1054181 (=> (not res!703230) (not e!598902))))

(declare-fun lt!465319 () array!66478)

(assert (=> b!1054181 (= res!703230 (arrayContainsKey!0 lt!465319 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054181 (= lt!465319 (array!66479 (store (arr!31967 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32504 a!3488)))))

(declare-fun res!703227 () Bool)

(assert (=> start!92870 (=> (not res!703227) (not e!598901))))

(assert (=> start!92870 (= res!703227 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32504 a!3488)) (bvslt (size!32504 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92870 e!598901))

(assert (=> start!92870 true))

(declare-fun array_inv!24589 (array!66478) Bool)

(assert (=> start!92870 (array_inv!24589 a!3488)))

(declare-fun b!1054182 () Bool)

(declare-fun res!703226 () Bool)

(assert (=> b!1054182 (=> (not res!703226) (not e!598901))))

(assert (=> b!1054182 (= res!703226 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22407))))

(declare-fun b!1054183 () Bool)

(assert (=> b!1054183 (= e!598902 e!598904)))

(declare-fun res!703228 () Bool)

(assert (=> b!1054183 (=> (not res!703228) (not e!598904))))

(assert (=> b!1054183 (= res!703228 (not (= lt!465318 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66478 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054183 (= lt!465318 (arrayScanForKey!0 lt!465319 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054184 () Bool)

(declare-fun res!703232 () Bool)

(assert (=> b!1054184 (=> (not res!703232) (not e!598901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054184 (= res!703232 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92870 res!703227) b!1054182))

(assert (= (and b!1054182 res!703226) b!1054184))

(assert (= (and b!1054184 res!703232) b!1054179))

(assert (= (and b!1054179 res!703233) b!1054181))

(assert (= (and b!1054181 res!703230) b!1054183))

(assert (= (and b!1054183 res!703228) b!1054177))

(assert (= (and b!1054177 res!703229) b!1054176))

(assert (= (and b!1054176 (not res!703231)) b!1054178))

(assert (= (and b!1054177 (not res!703225)) b!1054180))

(declare-fun m!974425 () Bool)

(assert (=> b!1054182 m!974425))

(declare-fun m!974427 () Bool)

(assert (=> b!1054177 m!974427))

(declare-fun m!974429 () Bool)

(assert (=> b!1054177 m!974429))

(declare-fun m!974431 () Bool)

(assert (=> b!1054184 m!974431))

(declare-fun m!974433 () Bool)

(assert (=> b!1054183 m!974433))

(declare-fun m!974435 () Bool)

(assert (=> b!1054178 m!974435))

(declare-fun m!974437 () Bool)

(assert (=> b!1054180 m!974437))

(declare-fun m!974439 () Bool)

(assert (=> b!1054180 m!974439))

(declare-fun m!974441 () Bool)

(assert (=> b!1054179 m!974441))

(declare-fun m!974443 () Bool)

(assert (=> start!92870 m!974443))

(declare-fun m!974445 () Bool)

(assert (=> b!1054181 m!974445))

(assert (=> b!1054181 m!974427))

(check-sat (not b!1054178) (not b!1054180) (not b!1054183) (not b!1054182) (not b!1054184) (not b!1054181) (not start!92870))
(check-sat)
