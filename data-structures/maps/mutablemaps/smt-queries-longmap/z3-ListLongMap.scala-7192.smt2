; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92222 () Bool)

(assert start!92222)

(declare-fun res!697352 () Bool)

(declare-fun e!594449 () Bool)

(assert (=> start!92222 (=> (not res!697352) (not e!594449))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65998 0))(
  ( (array!65999 (arr!31736 (Array (_ BitVec 32) (_ BitVec 64))) (size!32273 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65998)

(assert (=> start!92222 (= res!697352 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32273 a!3488)) (bvslt (size!32273 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92222 e!594449))

(assert (=> start!92222 true))

(declare-fun array_inv!24358 (array!65998) Bool)

(assert (=> start!92222 (array_inv!24358 a!3488)))

(declare-fun b!1048080 () Bool)

(declare-fun res!697353 () Bool)

(assert (=> b!1048080 (=> (not res!697353) (not e!594449))))

(declare-datatypes ((List!22179 0))(
  ( (Nil!22176) (Cons!22175 (h!23384 (_ BitVec 64)) (t!31493 List!22179)) )
))
(declare-fun arrayNoDuplicates!0 (array!65998 (_ BitVec 32) List!22179) Bool)

(assert (=> b!1048080 (= res!697353 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22176))))

(declare-fun b!1048081 () Bool)

(declare-fun res!697351 () Bool)

(assert (=> b!1048081 (=> (not res!697351) (not e!594449))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048081 (= res!697351 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048082 () Bool)

(assert (=> b!1048082 (= e!594449 (and (= (select (arr!31736 a!3488) i!1381) k0!2747) (bvsge #b00000000000000000000000000000000 (size!32273 a!3488))))))

(assert (= (and start!92222 res!697352) b!1048080))

(assert (= (and b!1048080 res!697353) b!1048081))

(assert (= (and b!1048081 res!697351) b!1048082))

(declare-fun m!969251 () Bool)

(assert (=> start!92222 m!969251))

(declare-fun m!969253 () Bool)

(assert (=> b!1048080 m!969253))

(declare-fun m!969255 () Bool)

(assert (=> b!1048081 m!969255))

(declare-fun m!969257 () Bool)

(assert (=> b!1048082 m!969257))

(check-sat (not b!1048080) (not start!92222) (not b!1048081))
(check-sat)
