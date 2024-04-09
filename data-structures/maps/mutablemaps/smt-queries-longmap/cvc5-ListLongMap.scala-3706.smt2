; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50870 () Bool)

(assert start!50870)

(declare-fun b!556364 () Bool)

(declare-fun res!348930 () Bool)

(declare-fun e!320517 () Bool)

(assert (=> b!556364 (=> (not res!348930) (not e!320517))))

(declare-datatypes ((array!35049 0))(
  ( (array!35050 (arr!16830 (Array (_ BitVec 32) (_ BitVec 64))) (size!17194 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35049)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556364 (= res!348930 (validKeyInArray!0 (select (arr!16830 a!3118) j!142)))))

(declare-fun b!556365 () Bool)

(declare-fun res!348926 () Bool)

(declare-fun e!320520 () Bool)

(assert (=> b!556365 (=> (not res!348926) (not e!320520))))

(declare-datatypes ((List!10963 0))(
  ( (Nil!10960) (Cons!10959 (h!11944 (_ BitVec 64)) (t!17199 List!10963)) )
))
(declare-fun arrayNoDuplicates!0 (array!35049 (_ BitVec 32) List!10963) Bool)

(assert (=> b!556365 (= res!348926 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10960))))

(declare-fun b!556366 () Bool)

(declare-fun res!348934 () Bool)

(assert (=> b!556366 (=> (not res!348934) (not e!320517))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556366 (= res!348934 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556367 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5286 0))(
  ( (MissingZero!5286 (index!23371 (_ BitVec 32))) (Found!5286 (index!23372 (_ BitVec 32))) (Intermediate!5286 (undefined!6098 Bool) (index!23373 (_ BitVec 32)) (x!52291 (_ BitVec 32))) (Undefined!5286) (MissingVacant!5286 (index!23374 (_ BitVec 32))) )
))
(declare-fun lt!252881 () SeekEntryResult!5286)

(declare-fun e!320521 () Bool)

(assert (=> b!556367 (= e!320521 (not (or (not (is-Intermediate!5286 lt!252881)) (undefined!6098 lt!252881) (= (select (arr!16830 a!3118) (index!23373 lt!252881)) (select (arr!16830 a!3118) j!142)) (= (select (arr!16830 a!3118) (index!23373 lt!252881)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23373 lt!252881) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252881) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!320519 () Bool)

(assert (=> b!556367 e!320519))

(declare-fun res!348931 () Bool)

(assert (=> b!556367 (=> (not res!348931) (not e!320519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35049 (_ BitVec 32)) Bool)

(assert (=> b!556367 (= res!348931 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17346 0))(
  ( (Unit!17347) )
))
(declare-fun lt!252882 () Unit!17346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17346)

(assert (=> b!556367 (= lt!252882 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556368 () Bool)

(declare-fun res!348927 () Bool)

(assert (=> b!556368 (=> (not res!348927) (not e!320517))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556368 (= res!348927 (and (= (size!17194 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17194 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17194 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556369 () Bool)

(assert (=> b!556369 (= e!320517 e!320520)))

(declare-fun res!348929 () Bool)

(assert (=> b!556369 (=> (not res!348929) (not e!320520))))

(declare-fun lt!252884 () SeekEntryResult!5286)

(assert (=> b!556369 (= res!348929 (or (= lt!252884 (MissingZero!5286 i!1132)) (= lt!252884 (MissingVacant!5286 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35049 (_ BitVec 32)) SeekEntryResult!5286)

(assert (=> b!556369 (= lt!252884 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556370 () Bool)

(assert (=> b!556370 (= e!320520 e!320521)))

(declare-fun res!348932 () Bool)

(assert (=> b!556370 (=> (not res!348932) (not e!320521))))

(declare-fun lt!252880 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35049 (_ BitVec 32)) SeekEntryResult!5286)

(assert (=> b!556370 (= res!348932 (= lt!252881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252880 (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)) mask!3119)))))

(declare-fun lt!252883 () (_ BitVec 32))

(assert (=> b!556370 (= lt!252881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252883 (select (arr!16830 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556370 (= lt!252880 (toIndex!0 (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556370 (= lt!252883 (toIndex!0 (select (arr!16830 a!3118) j!142) mask!3119))))

(declare-fun b!556371 () Bool)

(assert (=> b!556371 (= e!320519 (= (seekEntryOrOpen!0 (select (arr!16830 a!3118) j!142) a!3118 mask!3119) (Found!5286 j!142)))))

(declare-fun b!556372 () Bool)

(declare-fun res!348933 () Bool)

(assert (=> b!556372 (=> (not res!348933) (not e!320517))))

(assert (=> b!556372 (= res!348933 (validKeyInArray!0 k!1914))))

(declare-fun b!556373 () Bool)

(declare-fun res!348935 () Bool)

(assert (=> b!556373 (=> (not res!348935) (not e!320520))))

(assert (=> b!556373 (= res!348935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348928 () Bool)

(assert (=> start!50870 (=> (not res!348928) (not e!320517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50870 (= res!348928 (validMask!0 mask!3119))))

(assert (=> start!50870 e!320517))

(assert (=> start!50870 true))

(declare-fun array_inv!12604 (array!35049) Bool)

(assert (=> start!50870 (array_inv!12604 a!3118)))

(assert (= (and start!50870 res!348928) b!556368))

(assert (= (and b!556368 res!348927) b!556364))

(assert (= (and b!556364 res!348930) b!556372))

(assert (= (and b!556372 res!348933) b!556366))

(assert (= (and b!556366 res!348934) b!556369))

(assert (= (and b!556369 res!348929) b!556373))

(assert (= (and b!556373 res!348935) b!556365))

(assert (= (and b!556365 res!348926) b!556370))

(assert (= (and b!556370 res!348932) b!556367))

(assert (= (and b!556367 res!348931) b!556371))

(declare-fun m!534421 () Bool)

(assert (=> b!556372 m!534421))

(declare-fun m!534423 () Bool)

(assert (=> b!556369 m!534423))

(declare-fun m!534425 () Bool)

(assert (=> start!50870 m!534425))

(declare-fun m!534427 () Bool)

(assert (=> start!50870 m!534427))

(declare-fun m!534429 () Bool)

(assert (=> b!556371 m!534429))

(assert (=> b!556371 m!534429))

(declare-fun m!534431 () Bool)

(assert (=> b!556371 m!534431))

(assert (=> b!556370 m!534429))

(declare-fun m!534433 () Bool)

(assert (=> b!556370 m!534433))

(assert (=> b!556370 m!534433))

(declare-fun m!534435 () Bool)

(assert (=> b!556370 m!534435))

(assert (=> b!556370 m!534429))

(declare-fun m!534437 () Bool)

(assert (=> b!556370 m!534437))

(assert (=> b!556370 m!534429))

(declare-fun m!534439 () Bool)

(assert (=> b!556370 m!534439))

(declare-fun m!534441 () Bool)

(assert (=> b!556370 m!534441))

(assert (=> b!556370 m!534433))

(declare-fun m!534443 () Bool)

(assert (=> b!556370 m!534443))

(assert (=> b!556364 m!534429))

(assert (=> b!556364 m!534429))

(declare-fun m!534445 () Bool)

(assert (=> b!556364 m!534445))

(declare-fun m!534447 () Bool)

(assert (=> b!556365 m!534447))

(declare-fun m!534449 () Bool)

(assert (=> b!556373 m!534449))

(declare-fun m!534451 () Bool)

(assert (=> b!556366 m!534451))

(declare-fun m!534453 () Bool)

(assert (=> b!556367 m!534453))

(assert (=> b!556367 m!534429))

(declare-fun m!534455 () Bool)

(assert (=> b!556367 m!534455))

(declare-fun m!534457 () Bool)

(assert (=> b!556367 m!534457))

(push 1)

(assert (not b!556364))

(assert (not b!556366))

(assert (not start!50870))

(assert (not b!556371))

(assert (not b!556365))

(assert (not b!556372))

(assert (not b!556369))

(assert (not b!556367))

(assert (not b!556370))

(assert (not b!556373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!556464 () Bool)

(declare-fun e!320573 () Bool)

(declare-fun lt!252928 () SeekEntryResult!5286)

(assert (=> b!556464 (= e!320573 (bvsge (x!52291 lt!252928) #b01111111111111111111111111111110))))

(declare-fun b!556465 () Bool)

(declare-fun e!320575 () SeekEntryResult!5286)

(assert (=> b!556465 (= e!320575 (Intermediate!5286 true lt!252880 #b00000000000000000000000000000000))))

(declare-fun b!556466 () Bool)

(declare-fun e!320574 () SeekEntryResult!5286)

(assert (=> b!556466 (= e!320574 (Intermediate!5286 false lt!252880 #b00000000000000000000000000000000))))

(declare-fun b!556468 () Bool)

(assert (=> b!556468 (and (bvsge (index!23373 lt!252928) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252928) (size!17194 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)))))))

(declare-fun res!349008 () Bool)

(assert (=> b!556468 (= res!349008 (= (select (arr!16830 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118))) (index!23373 lt!252928)) (select (store (arr!16830 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!320572 () Bool)

(assert (=> b!556468 (=> res!349008 e!320572)))

(declare-fun e!320571 () Bool)

(assert (=> b!556468 (= e!320571 e!320572)))

(declare-fun d!83179 () Bool)

(assert (=> d!83179 e!320573))

(declare-fun c!64066 () Bool)

(assert (=> d!83179 (= c!64066 (and (is-Intermediate!5286 lt!252928) (undefined!6098 lt!252928)))))

(assert (=> d!83179 (= lt!252928 e!320575)))

(declare-fun c!64065 () Bool)

(assert (=> d!83179 (= c!64065 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!252929 () (_ BitVec 64))

(assert (=> d!83179 (= lt!252929 (select (arr!16830 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118))) lt!252880))))

(assert (=> d!83179 (validMask!0 mask!3119)))

(assert (=> d!83179 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252880 (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)) mask!3119) lt!252928)))

(declare-fun b!556467 () Bool)

(assert (=> b!556467 (and (bvsge (index!23373 lt!252928) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252928) (size!17194 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)))))))

(declare-fun res!349009 () Bool)

(assert (=> b!556467 (= res!349009 (= (select (arr!16830 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118))) (index!23373 lt!252928)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556467 (=> res!349009 e!320572)))

(declare-fun b!556469 () Bool)

(assert (=> b!556469 (= e!320575 e!320574)))

(declare-fun c!64067 () Bool)

(assert (=> b!556469 (= c!64067 (or (= lt!252929 (select (store (arr!16830 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!252929 lt!252929) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556470 () Bool)

(assert (=> b!556470 (= e!320573 e!320571)))

(declare-fun res!349010 () Bool)

(assert (=> b!556470 (= res!349010 (and (is-Intermediate!5286 lt!252928) (not (undefined!6098 lt!252928)) (bvslt (x!52291 lt!252928) #b01111111111111111111111111111110) (bvsge (x!52291 lt!252928) #b00000000000000000000000000000000) (bvsge (x!52291 lt!252928) #b00000000000000000000000000000000)))))

(assert (=> b!556470 (=> (not res!349010) (not e!320571))))

(declare-fun b!556471 () Bool)

(assert (=> b!556471 (and (bvsge (index!23373 lt!252928) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252928) (size!17194 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)))))))

(assert (=> b!556471 (= e!320572 (= (select (arr!16830 (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118))) (index!23373 lt!252928)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556472 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556472 (= e!320574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252880 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) (array!35050 (store (arr!16830 a!3118) i!1132 k!1914) (size!17194 a!3118)) mask!3119))))

(assert (= (and d!83179 c!64065) b!556465))

(assert (= (and d!83179 (not c!64065)) b!556469))

(assert (= (and b!556469 c!64067) b!556466))

(assert (= (and b!556469 (not c!64067)) b!556472))

(assert (= (and d!83179 c!64066) b!556464))

(assert (= (and d!83179 (not c!64066)) b!556470))

(assert (= (and b!556470 res!349010) b!556468))

(assert (= (and b!556468 (not res!349008)) b!556467))

(assert (= (and b!556467 (not res!349009)) b!556471))

(declare-fun m!534547 () Bool)

(assert (=> b!556467 m!534547))

(assert (=> b!556471 m!534547))

(assert (=> b!556468 m!534547))

(declare-fun m!534549 () Bool)

(assert (=> d!83179 m!534549))

(assert (=> d!83179 m!534425))

(declare-fun m!534551 () Bool)

(assert (=> b!556472 m!534551))

(assert (=> b!556472 m!534551))

(assert (=> b!556472 m!534433))

(declare-fun m!534553 () Bool)

(assert (=> b!556472 m!534553))

(assert (=> b!556370 d!83179))

(declare-fun b!556473 () Bool)

(declare-fun e!320578 () Bool)

(declare-fun lt!252930 () SeekEntryResult!5286)

(assert (=> b!556473 (= e!320578 (bvsge (x!52291 lt!252930) #b01111111111111111111111111111110))))

(declare-fun b!556474 () Bool)

(declare-fun e!320580 () SeekEntryResult!5286)

(assert (=> b!556474 (= e!320580 (Intermediate!5286 true lt!252883 #b00000000000000000000000000000000))))

(declare-fun b!556475 () Bool)

(declare-fun e!320579 () SeekEntryResult!5286)

(assert (=> b!556475 (= e!320579 (Intermediate!5286 false lt!252883 #b00000000000000000000000000000000))))

(declare-fun b!556477 () Bool)

(assert (=> b!556477 (and (bvsge (index!23373 lt!252930) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252930) (size!17194 a!3118)))))

(declare-fun res!349011 () Bool)

(assert (=> b!556477 (= res!349011 (= (select (arr!16830 a!3118) (index!23373 lt!252930)) (select (arr!16830 a!3118) j!142)))))

(declare-fun e!320577 () Bool)

(assert (=> b!556477 (=> res!349011 e!320577)))

(declare-fun e!320576 () Bool)

(assert (=> b!556477 (= e!320576 e!320577)))

(declare-fun d!83183 () Bool)

(assert (=> d!83183 e!320578))

(declare-fun c!64069 () Bool)

(assert (=> d!83183 (= c!64069 (and (is-Intermediate!5286 lt!252930) (undefined!6098 lt!252930)))))

(assert (=> d!83183 (= lt!252930 e!320580)))

(declare-fun c!64068 () Bool)

(assert (=> d!83183 (= c!64068 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!252931 () (_ BitVec 64))

(assert (=> d!83183 (= lt!252931 (select (arr!16830 a!3118) lt!252883))))

(assert (=> d!83183 (validMask!0 mask!3119)))

(assert (=> d!83183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252883 (select (arr!16830 a!3118) j!142) a!3118 mask!3119) lt!252930)))

(declare-fun b!556476 () Bool)

(assert (=> b!556476 (and (bvsge (index!23373 lt!252930) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252930) (size!17194 a!3118)))))

(declare-fun res!349012 () Bool)

(assert (=> b!556476 (= res!349012 (= (select (arr!16830 a!3118) (index!23373 lt!252930)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556476 (=> res!349012 e!320577)))

(declare-fun b!556478 () Bool)

(assert (=> b!556478 (= e!320580 e!320579)))

(declare-fun c!64070 () Bool)

(assert (=> b!556478 (= c!64070 (or (= lt!252931 (select (arr!16830 a!3118) j!142)) (= (bvadd lt!252931 lt!252931) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556479 () Bool)

(assert (=> b!556479 (= e!320578 e!320576)))

(declare-fun res!349013 () Bool)

(assert (=> b!556479 (= res!349013 (and (is-Intermediate!5286 lt!252930) (not (undefined!6098 lt!252930)) (bvslt (x!52291 lt!252930) #b01111111111111111111111111111110) (bvsge (x!52291 lt!252930) #b00000000000000000000000000000000) (bvsge (x!52291 lt!252930) #b00000000000000000000000000000000)))))

(assert (=> b!556479 (=> (not res!349013) (not e!320576))))

(declare-fun b!556480 () Bool)

(assert (=> b!556480 (and (bvsge (index!23373 lt!252930) #b00000000000000000000000000000000) (bvslt (index!23373 lt!252930) (size!17194 a!3118)))))

(assert (=> b!556480 (= e!320577 (= (select (arr!16830 a!3118) (index!23373 lt!252930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556481 () Bool)

(assert (=> b!556481 (= e!320579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252883 #b00000000000000000000000000000000 mask!3119) (select (arr!16830 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83183 c!64068) b!556474))

(assert (= (and d!83183 (not c!64068)) b!556478))

(assert (= (and b!556478 c!64070) b!556475))

(assert (= (and b!556478 (not c!64070)) b!556481))

(assert (= (and d!83183 c!64069) b!556473))

(assert (= (and d!83183 (not c!64069)) b!556479))

(assert (= (and b!556479 res!349013) b!556477))

(assert (= (and b!556477 (not res!349011)) b!556476))

(assert (= (and b!556476 (not res!349012)) b!556480))

(declare-fun m!534555 () Bool)

(assert (=> b!556476 m!534555))

(assert (=> b!556480 m!534555))

(assert (=> b!556477 m!534555))

(declare-fun m!534557 () Bool)

(assert (=> d!83183 m!534557))

(assert (=> d!83183 m!534425))

(declare-fun m!534559 () Bool)

(assert (=> b!556481 m!534559))

(assert (=> b!556481 m!534559))

(assert (=> b!556481 m!534429))

(declare-fun m!534561 () Bool)

(assert (=> b!556481 m!534561))

(assert (=> b!556370 d!83183))

(declare-fun d!83185 () Bool)

(declare-fun lt!252941 () (_ BitVec 32))

(declare-fun lt!252940 () (_ BitVec 32))

(assert (=> d!83185 (= lt!252941 (bvmul (bvxor lt!252940 (bvlshr lt!252940 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83185 (= lt!252940 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83185 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349014 (let ((h!11947 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52295 (bvmul (bvxor h!11947 (bvlshr h!11947 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52295 (bvlshr x!52295 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349014 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349014 #b00000000000000000000000000000000))))))

(assert (=> d!83185 (= (toIndex!0 (select (store (arr!16830 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!252941 (bvlshr lt!252941 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556370 d!83185))

(declare-fun d!83191 () Bool)

(declare-fun lt!252943 () (_ BitVec 32))

(declare-fun lt!252942 () (_ BitVec 32))

(assert (=> d!83191 (= lt!252943 (bvmul (bvxor lt!252942 (bvlshr lt!252942 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83191 (= lt!252942 ((_ extract 31 0) (bvand (bvxor (select (arr!16830 a!3118) j!142) (bvlshr (select (arr!16830 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83191 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349014 (let ((h!11947 ((_ extract 31 0) (bvand (bvxor (select (arr!16830 a!3118) j!142) (bvlshr (select (arr!16830 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52295 (bvmul (bvxor h!11947 (bvlshr h!11947 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52295 (bvlshr x!52295 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349014 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349014 #b00000000000000000000000000000000))))))

(assert (=> d!83191 (= (toIndex!0 (select (arr!16830 a!3118) j!142) mask!3119) (bvand (bvxor lt!252943 (bvlshr lt!252943 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556370 d!83191))

(declare-fun b!556542 () Bool)

(declare-fun c!64093 () Bool)

(declare-fun lt!252975 () (_ BitVec 64))

(assert (=> b!556542 (= c!64093 (= lt!252975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320618 () SeekEntryResult!5286)

(declare-fun e!320616 () SeekEntryResult!5286)

(assert (=> b!556542 (= e!320618 e!320616)))

(declare-fun b!556543 () Bool)

(declare-fun e!320617 () SeekEntryResult!5286)

(assert (=> b!556543 (= e!320617 Undefined!5286)))

(declare-fun b!556544 () Bool)

(declare-fun lt!252976 () SeekEntryResult!5286)

(assert (=> b!556544 (= e!320618 (Found!5286 (index!23373 lt!252976)))))

(declare-fun d!83193 () Bool)

(declare-fun lt!252974 () SeekEntryResult!5286)

(assert (=> d!83193 (and (or (is-Undefined!5286 lt!252974) (not (is-Found!5286 lt!252974)) (and (bvsge (index!23372 lt!252974) #b00000000000000000000000000000000) (bvslt (index!23372 lt!252974) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252974) (is-Found!5286 lt!252974) (not (is-MissingZero!5286 lt!252974)) (and (bvsge (index!23371 lt!252974) #b00000000000000000000000000000000) (bvslt (index!23371 lt!252974) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252974) (is-Found!5286 lt!252974) (is-MissingZero!5286 lt!252974) (not (is-MissingVacant!5286 lt!252974)) (and (bvsge (index!23374 lt!252974) #b00000000000000000000000000000000) (bvslt (index!23374 lt!252974) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252974) (ite (is-Found!5286 lt!252974) (= (select (arr!16830 a!3118) (index!23372 lt!252974)) k!1914) (ite (is-MissingZero!5286 lt!252974) (= (select (arr!16830 a!3118) (index!23371 lt!252974)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5286 lt!252974) (= (select (arr!16830 a!3118) (index!23374 lt!252974)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83193 (= lt!252974 e!320617)))

(declare-fun c!64094 () Bool)

(assert (=> d!83193 (= c!64094 (and (is-Intermediate!5286 lt!252976) (undefined!6098 lt!252976)))))

(assert (=> d!83193 (= lt!252976 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83193 (validMask!0 mask!3119)))

(assert (=> d!83193 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!252974)))

(declare-fun b!556545 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35049 (_ BitVec 32)) SeekEntryResult!5286)

(assert (=> b!556545 (= e!320616 (seekKeyOrZeroReturnVacant!0 (x!52291 lt!252976) (index!23373 lt!252976) (index!23373 lt!252976) k!1914 a!3118 mask!3119))))

(declare-fun b!556546 () Bool)

(assert (=> b!556546 (= e!320617 e!320618)))

(assert (=> b!556546 (= lt!252975 (select (arr!16830 a!3118) (index!23373 lt!252976)))))

(declare-fun c!64092 () Bool)

(assert (=> b!556546 (= c!64092 (= lt!252975 k!1914))))

(declare-fun b!556547 () Bool)

(assert (=> b!556547 (= e!320616 (MissingZero!5286 (index!23373 lt!252976)))))

(assert (= (and d!83193 c!64094) b!556543))

(assert (= (and d!83193 (not c!64094)) b!556546))

(assert (= (and b!556546 c!64092) b!556544))

(assert (= (and b!556546 (not c!64092)) b!556542))

(assert (= (and b!556542 c!64093) b!556547))

(assert (= (and b!556542 (not c!64093)) b!556545))

(declare-fun m!534587 () Bool)

(assert (=> d!83193 m!534587))

(declare-fun m!534589 () Bool)

(assert (=> d!83193 m!534589))

(assert (=> d!83193 m!534425))

(assert (=> d!83193 m!534587))

(declare-fun m!534591 () Bool)

(assert (=> d!83193 m!534591))

(declare-fun m!534593 () Bool)

(assert (=> d!83193 m!534593))

(declare-fun m!534595 () Bool)

(assert (=> d!83193 m!534595))

(declare-fun m!534597 () Bool)

(assert (=> b!556545 m!534597))

(declare-fun m!534599 () Bool)

(assert (=> b!556546 m!534599))

(assert (=> b!556369 d!83193))

(declare-fun d!83207 () Bool)

(assert (=> d!83207 (= (validKeyInArray!0 (select (arr!16830 a!3118) j!142)) (and (not (= (select (arr!16830 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16830 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556364 d!83207))

(declare-fun b!556548 () Bool)

(declare-fun c!64096 () Bool)

(declare-fun lt!252978 () (_ BitVec 64))

(assert (=> b!556548 (= c!64096 (= lt!252978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320621 () SeekEntryResult!5286)

(declare-fun e!320619 () SeekEntryResult!5286)

(assert (=> b!556548 (= e!320621 e!320619)))

(declare-fun b!556549 () Bool)

(declare-fun e!320620 () SeekEntryResult!5286)

(assert (=> b!556549 (= e!320620 Undefined!5286)))

(declare-fun b!556550 () Bool)

(declare-fun lt!252979 () SeekEntryResult!5286)

(assert (=> b!556550 (= e!320621 (Found!5286 (index!23373 lt!252979)))))

(declare-fun d!83209 () Bool)

(declare-fun lt!252977 () SeekEntryResult!5286)

(assert (=> d!83209 (and (or (is-Undefined!5286 lt!252977) (not (is-Found!5286 lt!252977)) (and (bvsge (index!23372 lt!252977) #b00000000000000000000000000000000) (bvslt (index!23372 lt!252977) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252977) (is-Found!5286 lt!252977) (not (is-MissingZero!5286 lt!252977)) (and (bvsge (index!23371 lt!252977) #b00000000000000000000000000000000) (bvslt (index!23371 lt!252977) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252977) (is-Found!5286 lt!252977) (is-MissingZero!5286 lt!252977) (not (is-MissingVacant!5286 lt!252977)) (and (bvsge (index!23374 lt!252977) #b00000000000000000000000000000000) (bvslt (index!23374 lt!252977) (size!17194 a!3118)))) (or (is-Undefined!5286 lt!252977) (ite (is-Found!5286 lt!252977) (= (select (arr!16830 a!3118) (index!23372 lt!252977)) (select (arr!16830 a!3118) j!142)) (ite (is-MissingZero!5286 lt!252977) (= (select (arr!16830 a!3118) (index!23371 lt!252977)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5286 lt!252977) (= (select (arr!16830 a!3118) (index!23374 lt!252977)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83209 (= lt!252977 e!320620)))

(declare-fun c!64097 () Bool)

(assert (=> d!83209 (= c!64097 (and (is-Intermediate!5286 lt!252979) (undefined!6098 lt!252979)))))

(assert (=> d!83209 (= lt!252979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16830 a!3118) j!142) mask!3119) (select (arr!16830 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83209 (validMask!0 mask!3119)))

(assert (=> d!83209 (= (seekEntryOrOpen!0 (select (arr!16830 a!3118) j!142) a!3118 mask!3119) lt!252977)))

(declare-fun b!556551 () Bool)

(assert (=> b!556551 (= e!320619 (seekKeyOrZeroReturnVacant!0 (x!52291 lt!252979) (index!23373 lt!252979) (index!23373 lt!252979) (select (arr!16830 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556552 () Bool)

(assert (=> b!556552 (= e!320620 e!320621)))

(assert (=> b!556552 (= lt!252978 (select (arr!16830 a!3118) (index!23373 lt!252979)))))

(declare-fun c!64095 () Bool)

(assert (=> b!556552 (= c!64095 (= lt!252978 (select (arr!16830 a!3118) j!142)))))

(declare-fun b!556553 () Bool)

(assert (=> b!556553 (= e!320619 (MissingZero!5286 (index!23373 lt!252979)))))

(assert (= (and d!83209 c!64097) b!556549))

(assert (= (and d!83209 (not c!64097)) b!556552))

(assert (= (and b!556552 c!64095) b!556550))

(assert (= (and b!556552 (not c!64095)) b!556548))

(assert (= (and b!556548 c!64096) b!556553))

(assert (= (and b!556548 (not c!64096)) b!556551))

(assert (=> d!83209 m!534429))

(assert (=> d!83209 m!534439))

(declare-fun m!534601 () Bool)

(assert (=> d!83209 m!534601))

(assert (=> d!83209 m!534425))

(assert (=> d!83209 m!534439))

(assert (=> d!83209 m!534429))

(declare-fun m!534603 () Bool)

(assert (=> d!83209 m!534603))

(declare-fun m!534605 () Bool)

(assert (=> d!83209 m!534605))

(declare-fun m!534607 () Bool)

(assert (=> d!83209 m!534607))

(assert (=> b!556551 m!534429))

(declare-fun m!534609 () Bool)

(assert (=> b!556551 m!534609))

(declare-fun m!534611 () Bool)

(assert (=> b!556552 m!534611))

(assert (=> b!556371 d!83209))

(declare-fun d!83211 () Bool)

(declare-fun res!349038 () Bool)

(declare-fun e!320632 () Bool)

(assert (=> d!83211 (=> res!349038 e!320632)))

(assert (=> d!83211 (= res!349038 (= (select (arr!16830 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83211 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!320632)))

(declare-fun b!556572 () Bool)

(declare-fun e!320633 () Bool)

(assert (=> b!556572 (= e!320632 e!320633)))

(declare-fun res!349039 () Bool)

(assert (=> b!556572 (=> (not res!349039) (not e!320633))))

(assert (=> b!556572 (= res!349039 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17194 a!3118)))))

(declare-fun b!556573 () Bool)

(assert (=> b!556573 (= e!320633 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83211 (not res!349038)) b!556572))

(assert (= (and b!556572 res!349039) b!556573))

(declare-fun m!534613 () Bool)

(assert (=> d!83211 m!534613))

(declare-fun m!534615 () Bool)

(assert (=> b!556573 m!534615))

(assert (=> b!556366 d!83211))

(declare-fun b!556625 () Bool)

(declare-fun e!320668 () Bool)

(declare-fun call!32337 () Bool)

(assert (=> b!556625 (= e!320668 call!32337)))

(declare-fun b!556626 () Bool)

(declare-fun e!320667 () Bool)

(assert (=> b!556626 (= e!320667 e!320668)))

(declare-fun c!64122 () Bool)

(assert (=> b!556626 (= c!64122 (validKeyInArray!0 (select (arr!16830 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556627 () Bool)

(declare-fun e!320669 () Bool)

(declare-fun contains!2849 (List!10963 (_ BitVec 64)) Bool)

(assert (=> b!556627 (= e!320669 (contains!2849 Nil!10960 (select (arr!16830 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556628 () Bool)

(assert (=> b!556628 (= e!320668 call!32337)))

(declare-fun b!556629 () Bool)

(declare-fun e!320666 () Bool)

(assert (=> b!556629 (= e!320666 e!320667)))

(declare-fun res!349058 () Bool)

(assert (=> b!556629 (=> (not res!349058) (not e!320667))))

(assert (=> b!556629 (= res!349058 (not e!320669))))

(declare-fun res!349057 () Bool)

(assert (=> b!556629 (=> (not res!349057) (not e!320669))))

(assert (=> b!556629 (= res!349057 (validKeyInArray!0 (select (arr!16830 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83213 () Bool)

(declare-fun res!349059 () Bool)

(assert (=> d!83213 (=> res!349059 e!320666)))

(assert (=> d!83213 (= res!349059 (bvsge #b00000000000000000000000000000000 (size!17194 a!3118)))))

(assert (=> d!83213 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10960) e!320666)))

(declare-fun bm!32334 () Bool)

(assert (=> bm!32334 (= call!32337 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64122 (Cons!10959 (select (arr!16830 a!3118) #b00000000000000000000000000000000) Nil!10960) Nil!10960)))))

(assert (= (and d!83213 (not res!349059)) b!556629))

(assert (= (and b!556629 res!349057) b!556627))

(assert (= (and b!556629 res!349058) b!556626))

(assert (= (and b!556626 c!64122) b!556628))

(assert (= (and b!556626 (not c!64122)) b!556625))

(assert (= (or b!556628 b!556625) bm!32334))

(assert (=> b!556626 m!534613))

(assert (=> b!556626 m!534613))

(declare-fun m!534657 () Bool)

(assert (=> b!556626 m!534657))

(assert (=> b!556627 m!534613))

(assert (=> b!556627 m!534613))

(declare-fun m!534659 () Bool)

(assert (=> b!556627 m!534659))

(assert (=> b!556629 m!534613))

(assert (=> b!556629 m!534613))

(assert (=> b!556629 m!534657))

(assert (=> bm!32334 m!534613))

(declare-fun m!534661 () Bool)

(assert (=> bm!32334 m!534661))

(assert (=> b!556365 d!83213))

(declare-fun bm!32337 () Bool)

(declare-fun call!32340 () Bool)

(assert (=> bm!32337 (= call!32340 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556653 () Bool)

(declare-fun e!320689 () Bool)

(declare-fun e!320688 () Bool)

(assert (=> b!556653 (= e!320689 e!320688)))

(declare-fun c!64128 () Bool)

(assert (=> b!556653 (= c!64128 (validKeyInArray!0 (select (arr!16830 a!3118) j!142)))))

(declare-fun d!83223 () Bool)

(declare-fun res!349074 () Bool)

(assert (=> d!83223 (=> res!349074 e!320689)))

(assert (=> d!83223 (= res!349074 (bvsge j!142 (size!17194 a!3118)))))

(assert (=> d!83223 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!320689)))

(declare-fun b!556654 () Bool)

(declare-fun e!320687 () Bool)

(assert (=> b!556654 (= e!320688 e!320687)))

(declare-fun lt!253022 () (_ BitVec 64))

(assert (=> b!556654 (= lt!253022 (select (arr!16830 a!3118) j!142))))

(declare-fun lt!253020 () Unit!17346)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35049 (_ BitVec 64) (_ BitVec 32)) Unit!17346)

(assert (=> b!556654 (= lt!253020 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253022 j!142))))

(assert (=> b!556654 (arrayContainsKey!0 a!3118 lt!253022 #b00000000000000000000000000000000)))

(declare-fun lt!253021 () Unit!17346)

(assert (=> b!556654 (= lt!253021 lt!253020)))

(declare-fun res!349075 () Bool)

(assert (=> b!556654 (= res!349075 (= (seekEntryOrOpen!0 (select (arr!16830 a!3118) j!142) a!3118 mask!3119) (Found!5286 j!142)))))

(assert (=> b!556654 (=> (not res!349075) (not e!320687))))

(declare-fun b!556655 () Bool)

(assert (=> b!556655 (= e!320687 call!32340)))

(declare-fun b!556656 () Bool)

(assert (=> b!556656 (= e!320688 call!32340)))

(assert (= (and d!83223 (not res!349074)) b!556653))

(assert (= (and b!556653 c!64128) b!556654))

(assert (= (and b!556653 (not c!64128)) b!556656))

(assert (= (and b!556654 res!349075) b!556655))

(assert (= (or b!556655 b!556656) bm!32337))

(declare-fun m!534675 () Bool)

(assert (=> bm!32337 m!534675))

(assert (=> b!556653 m!534429))

(assert (=> b!556653 m!534429))

(assert (=> b!556653 m!534445))

(assert (=> b!556654 m!534429))

(declare-fun m!534677 () Bool)

(assert (=> b!556654 m!534677))

(declare-fun m!534679 () Bool)

(assert (=> b!556654 m!534679))

(assert (=> b!556654 m!534429))

(assert (=> b!556654 m!534431))

(assert (=> b!556367 d!83223))

(declare-fun d!83235 () Bool)

(assert (=> d!83235 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253025 () Unit!17346)

(declare-fun choose!38 (array!35049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17346)

(assert (=> d!83235 (= lt!253025 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83235 (validMask!0 mask!3119)))

(assert (=> d!83235 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253025)))

(declare-fun bs!17339 () Bool)

(assert (= bs!17339 d!83235))

(assert (=> bs!17339 m!534455))

(declare-fun m!534693 () Bool)

(assert (=> bs!17339 m!534693))

(assert (=> bs!17339 m!534425))

(assert (=> b!556367 d!83235))

(declare-fun d!83243 () Bool)

(assert (=> d!83243 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556372 d!83243))

(declare-fun d!83245 () Bool)

(assert (=> d!83245 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50870 d!83245))

(declare-fun d!83249 () Bool)

(assert (=> d!83249 (= (array_inv!12604 a!3118) (bvsge (size!17194 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50870 d!83249))

(declare-fun bm!32344 () Bool)

(declare-fun call!32347 () Bool)

(assert (=> bm!32344 (= call!32347 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556687 () Bool)

(declare-fun e!320716 () Bool)

(declare-fun e!320715 () Bool)

(assert (=> b!556687 (= e!320716 e!320715)))

(declare-fun c!64135 () Bool)

(assert (=> b!556687 (= c!64135 (validKeyInArray!0 (select (arr!16830 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83251 () Bool)

(declare-fun res!349094 () Bool)

(assert (=> d!83251 (=> res!349094 e!320716)))

(assert (=> d!83251 (= res!349094 (bvsge #b00000000000000000000000000000000 (size!17194 a!3118)))))

(assert (=> d!83251 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320716)))

(declare-fun b!556688 () Bool)

(declare-fun e!320714 () Bool)

(assert (=> b!556688 (= e!320715 e!320714)))

(declare-fun lt!253028 () (_ BitVec 64))

(assert (=> b!556688 (= lt!253028 (select (arr!16830 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253026 () Unit!17346)

(assert (=> b!556688 (= lt!253026 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253028 #b00000000000000000000000000000000))))

(assert (=> b!556688 (arrayContainsKey!0 a!3118 lt!253028 #b00000000000000000000000000000000)))

(declare-fun lt!253027 () Unit!17346)

(assert (=> b!556688 (= lt!253027 lt!253026)))

(declare-fun res!349095 () Bool)

(assert (=> b!556688 (= res!349095 (= (seekEntryOrOpen!0 (select (arr!16830 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5286 #b00000000000000000000000000000000)))))

(assert (=> b!556688 (=> (not res!349095) (not e!320714))))

(declare-fun b!556689 () Bool)

(assert (=> b!556689 (= e!320714 call!32347)))

(declare-fun b!556690 () Bool)

(assert (=> b!556690 (= e!320715 call!32347)))

(assert (= (and d!83251 (not res!349094)) b!556687))

(assert (= (and b!556687 c!64135) b!556688))

(assert (= (and b!556687 (not c!64135)) b!556690))

(assert (= (and b!556688 res!349095) b!556689))

(assert (= (or b!556689 b!556690) bm!32344))

(declare-fun m!534695 () Bool)

(assert (=> bm!32344 m!534695))

(assert (=> b!556687 m!534613))

(assert (=> b!556687 m!534613))

(assert (=> b!556687 m!534657))

(assert (=> b!556688 m!534613))

(declare-fun m!534697 () Bool)

(assert (=> b!556688 m!534697))

(declare-fun m!534699 () Bool)

(assert (=> b!556688 m!534699))

(assert (=> b!556688 m!534613))

(declare-fun m!534701 () Bool)

(assert (=> b!556688 m!534701))

(assert (=> b!556373 d!83251))

(push 1)

(assert (not b!556687))

(assert (not d!83209))

(assert (not b!556653))

(assert (not bm!32337))

(assert (not bm!32334))

(assert (not b!556551))

(assert (not b!556629))

(assert (not d!83183))

(assert (not d!83179))

(assert (not b!556626))

(assert (not b!556627))

(assert (not b!556472))

(assert (not b!556481))

(assert (not b!556545))

(assert (not b!556654))

(assert (not d!83235))

(assert (not b!556688))

(assert (not b!556573))

(assert (not bm!32344))

(assert (not d!83193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

