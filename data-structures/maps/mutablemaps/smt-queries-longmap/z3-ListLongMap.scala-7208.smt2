; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92348 () Bool)

(assert start!92348)

(declare-fun b!1049127 () Bool)

(declare-fun e!595243 () Bool)

(declare-fun e!595239 () Bool)

(assert (=> b!1049127 (= e!595243 (not e!595239))))

(declare-fun res!698370 () Bool)

(assert (=> b!1049127 (=> res!698370 e!595239)))

(declare-fun lt!463393 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049127 (= res!698370 (bvsle lt!463393 i!1381))))

(declare-fun e!595241 () Bool)

(assert (=> b!1049127 e!595241))

(declare-fun res!698369 () Bool)

(assert (=> b!1049127 (=> (not res!698369) (not e!595241))))

(declare-datatypes ((array!66097 0))(
  ( (array!66098 (arr!31784 (Array (_ BitVec 32) (_ BitVec 64))) (size!32321 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66097)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1049127 (= res!698369 (= (select (store (arr!31784 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463393) k0!2747))))

(declare-fun b!1049128 () Bool)

(declare-fun e!595240 () Bool)

(assert (=> b!1049128 (= e!595240 e!595243)))

(declare-fun res!698362 () Bool)

(assert (=> b!1049128 (=> (not res!698362) (not e!595243))))

(assert (=> b!1049128 (= res!698362 (not (= lt!463393 i!1381)))))

(declare-fun lt!463392 () array!66097)

(declare-fun arrayScanForKey!0 (array!66097 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049128 (= lt!463393 (arrayScanForKey!0 lt!463392 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049129 () Bool)

(declare-fun res!698365 () Bool)

(declare-fun e!595242 () Bool)

(assert (=> b!1049129 (=> (not res!698365) (not e!595242))))

(declare-datatypes ((List!22227 0))(
  ( (Nil!22224) (Cons!22223 (h!23432 (_ BitVec 64)) (t!31541 List!22227)) )
))
(declare-fun arrayNoDuplicates!0 (array!66097 (_ BitVec 32) List!22227) Bool)

(assert (=> b!1049129 (= res!698365 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22224))))

(declare-fun res!698367 () Bool)

(assert (=> start!92348 (=> (not res!698367) (not e!595242))))

(assert (=> start!92348 (= res!698367 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32321 a!3488)) (bvslt (size!32321 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92348 e!595242))

(assert (=> start!92348 true))

(declare-fun array_inv!24406 (array!66097) Bool)

(assert (=> start!92348 (array_inv!24406 a!3488)))

(declare-fun b!1049130 () Bool)

(declare-fun e!595238 () Bool)

(assert (=> b!1049130 (= e!595241 e!595238)))

(declare-fun res!698363 () Bool)

(assert (=> b!1049130 (=> res!698363 e!595238)))

(assert (=> b!1049130 (= res!698363 (bvsle lt!463393 i!1381))))

(declare-fun b!1049131 () Bool)

(declare-fun res!698364 () Bool)

(assert (=> b!1049131 (=> (not res!698364) (not e!595242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049131 (= res!698364 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049132 () Bool)

(declare-fun arrayContainsKey!0 (array!66097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049132 (= e!595238 (arrayContainsKey!0 a!3488 k0!2747 lt!463393))))

(declare-fun b!1049133 () Bool)

(assert (=> b!1049133 (= e!595239 true)))

(assert (=> b!1049133 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22224)))

(declare-datatypes ((Unit!34297 0))(
  ( (Unit!34298) )
))
(declare-fun lt!463391 () Unit!34297)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66097 (_ BitVec 32) (_ BitVec 32)) Unit!34297)

(assert (=> b!1049133 (= lt!463391 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049134 () Bool)

(assert (=> b!1049134 (= e!595242 e!595240)))

(declare-fun res!698366 () Bool)

(assert (=> b!1049134 (=> (not res!698366) (not e!595240))))

(assert (=> b!1049134 (= res!698366 (arrayContainsKey!0 lt!463392 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049134 (= lt!463392 (array!66098 (store (arr!31784 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32321 a!3488)))))

(declare-fun b!1049135 () Bool)

(declare-fun res!698368 () Bool)

(assert (=> b!1049135 (=> (not res!698368) (not e!595242))))

(assert (=> b!1049135 (= res!698368 (= (select (arr!31784 a!3488) i!1381) k0!2747))))

(assert (= (and start!92348 res!698367) b!1049129))

(assert (= (and b!1049129 res!698365) b!1049131))

(assert (= (and b!1049131 res!698364) b!1049135))

(assert (= (and b!1049135 res!698368) b!1049134))

(assert (= (and b!1049134 res!698366) b!1049128))

(assert (= (and b!1049128 res!698362) b!1049127))

(assert (= (and b!1049127 res!698369) b!1049130))

(assert (= (and b!1049130 (not res!698363)) b!1049132))

(assert (= (and b!1049127 (not res!698370)) b!1049133))

(declare-fun m!970075 () Bool)

(assert (=> b!1049132 m!970075))

(declare-fun m!970077 () Bool)

(assert (=> b!1049135 m!970077))

(declare-fun m!970079 () Bool)

(assert (=> b!1049129 m!970079))

(declare-fun m!970081 () Bool)

(assert (=> b!1049127 m!970081))

(declare-fun m!970083 () Bool)

(assert (=> b!1049127 m!970083))

(declare-fun m!970085 () Bool)

(assert (=> start!92348 m!970085))

(declare-fun m!970087 () Bool)

(assert (=> b!1049131 m!970087))

(declare-fun m!970089 () Bool)

(assert (=> b!1049133 m!970089))

(declare-fun m!970091 () Bool)

(assert (=> b!1049133 m!970091))

(declare-fun m!970093 () Bool)

(assert (=> b!1049128 m!970093))

(declare-fun m!970095 () Bool)

(assert (=> b!1049134 m!970095))

(assert (=> b!1049134 m!970081))

(check-sat (not b!1049128) (not start!92348) (not b!1049129) (not b!1049134) (not b!1049133) (not b!1049131) (not b!1049132))
(check-sat)
