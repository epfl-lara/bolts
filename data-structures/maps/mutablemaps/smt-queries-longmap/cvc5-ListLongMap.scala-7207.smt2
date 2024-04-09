; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92340 () Bool)

(assert start!92340)

(declare-fun b!1049019 () Bool)

(declare-fun e!595155 () Bool)

(declare-fun e!595154 () Bool)

(assert (=> b!1049019 (= e!595155 e!595154)))

(declare-fun res!698260 () Bool)

(assert (=> b!1049019 (=> res!698260 e!595154)))

(declare-fun lt!463357 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049019 (= res!698260 (bvsle lt!463357 i!1381))))

(declare-fun b!1049020 () Bool)

(declare-fun e!595158 () Bool)

(declare-fun e!595160 () Bool)

(assert (=> b!1049020 (= e!595158 e!595160)))

(declare-fun res!698257 () Bool)

(assert (=> b!1049020 (=> (not res!698257) (not e!595160))))

(declare-datatypes ((array!66089 0))(
  ( (array!66090 (arr!31780 (Array (_ BitVec 32) (_ BitVec 64))) (size!32317 (_ BitVec 32))) )
))
(declare-fun lt!463356 () array!66089)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049020 (= res!698257 (arrayContainsKey!0 lt!463356 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66089)

(assert (=> b!1049020 (= lt!463356 (array!66090 (store (arr!31780 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32317 a!3488)))))

(declare-fun b!1049021 () Bool)

(declare-fun res!698255 () Bool)

(assert (=> b!1049021 (=> (not res!698255) (not e!595158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049021 (= res!698255 (validKeyInArray!0 k!2747))))

(declare-fun b!1049022 () Bool)

(declare-fun res!698258 () Bool)

(assert (=> b!1049022 (=> (not res!698258) (not e!595158))))

(declare-datatypes ((List!22223 0))(
  ( (Nil!22220) (Cons!22219 (h!23428 (_ BitVec 64)) (t!31537 List!22223)) )
))
(declare-fun arrayNoDuplicates!0 (array!66089 (_ BitVec 32) List!22223) Bool)

(assert (=> b!1049022 (= res!698258 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22220))))

(declare-fun b!1049023 () Bool)

(declare-fun res!698254 () Bool)

(assert (=> b!1049023 (=> (not res!698254) (not e!595158))))

(assert (=> b!1049023 (= res!698254 (= (select (arr!31780 a!3488) i!1381) k!2747))))

(declare-fun res!698256 () Bool)

(assert (=> start!92340 (=> (not res!698256) (not e!595158))))

(assert (=> start!92340 (= res!698256 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32317 a!3488)) (bvslt (size!32317 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92340 e!595158))

(assert (=> start!92340 true))

(declare-fun array_inv!24402 (array!66089) Bool)

(assert (=> start!92340 (array_inv!24402 a!3488)))

(declare-fun b!1049024 () Bool)

(assert (=> b!1049024 (= e!595154 (arrayContainsKey!0 a!3488 k!2747 lt!463357))))

(declare-fun b!1049025 () Bool)

(declare-fun e!595159 () Bool)

(declare-fun e!595156 () Bool)

(assert (=> b!1049025 (= e!595159 (not e!595156))))

(declare-fun res!698261 () Bool)

(assert (=> b!1049025 (=> res!698261 e!595156)))

(assert (=> b!1049025 (= res!698261 (bvsle lt!463357 i!1381))))

(assert (=> b!1049025 e!595155))

(declare-fun res!698262 () Bool)

(assert (=> b!1049025 (=> (not res!698262) (not e!595155))))

(assert (=> b!1049025 (= res!698262 (= (select (store (arr!31780 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463357) k!2747))))

(declare-fun b!1049026 () Bool)

(assert (=> b!1049026 (= e!595156 true)))

(assert (=> b!1049026 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22220)))

(declare-datatypes ((Unit!34289 0))(
  ( (Unit!34290) )
))
(declare-fun lt!463355 () Unit!34289)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66089 (_ BitVec 32) (_ BitVec 32)) Unit!34289)

(assert (=> b!1049026 (= lt!463355 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049027 () Bool)

(assert (=> b!1049027 (= e!595160 e!595159)))

(declare-fun res!698259 () Bool)

(assert (=> b!1049027 (=> (not res!698259) (not e!595159))))

(assert (=> b!1049027 (= res!698259 (not (= lt!463357 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66089 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049027 (= lt!463357 (arrayScanForKey!0 lt!463356 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92340 res!698256) b!1049022))

(assert (= (and b!1049022 res!698258) b!1049021))

(assert (= (and b!1049021 res!698255) b!1049023))

(assert (= (and b!1049023 res!698254) b!1049020))

(assert (= (and b!1049020 res!698257) b!1049027))

(assert (= (and b!1049027 res!698259) b!1049025))

(assert (= (and b!1049025 res!698262) b!1049019))

(assert (= (and b!1049019 (not res!698260)) b!1049024))

(assert (= (and b!1049025 (not res!698261)) b!1049026))

(declare-fun m!969987 () Bool)

(assert (=> b!1049023 m!969987))

(declare-fun m!969989 () Bool)

(assert (=> b!1049025 m!969989))

(declare-fun m!969991 () Bool)

(assert (=> b!1049025 m!969991))

(declare-fun m!969993 () Bool)

(assert (=> b!1049021 m!969993))

(declare-fun m!969995 () Bool)

(assert (=> b!1049020 m!969995))

(assert (=> b!1049020 m!969989))

(declare-fun m!969997 () Bool)

(assert (=> b!1049022 m!969997))

(declare-fun m!969999 () Bool)

(assert (=> b!1049026 m!969999))

(declare-fun m!970001 () Bool)

(assert (=> b!1049026 m!970001))

(declare-fun m!970003 () Bool)

(assert (=> start!92340 m!970003))

(declare-fun m!970005 () Bool)

(assert (=> b!1049027 m!970005))

(declare-fun m!970007 () Bool)

(assert (=> b!1049024 m!970007))

(push 1)

