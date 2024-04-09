; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33220 () Bool)

(assert start!33220)

(declare-fun b!330015 () Bool)

(assert (=> b!330015 false))

(declare-datatypes ((Unit!10252 0))(
  ( (Unit!10253) )
))
(declare-fun lt!158430 () Unit!10252)

(declare-fun e!202642 () Unit!10252)

(assert (=> b!330015 (= lt!158430 e!202642)))

(declare-datatypes ((array!16875 0))(
  ( (array!16876 (arr!7977 (Array (_ BitVec 32) (_ BitVec 64))) (size!8329 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16875)

(declare-fun c!51690 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3119 0))(
  ( (MissingZero!3119 (index!14652 (_ BitVec 32))) (Found!3119 (index!14653 (_ BitVec 32))) (Intermediate!3119 (undefined!3931 Bool) (index!14654 (_ BitVec 32)) (x!32897 (_ BitVec 32))) (Undefined!3119) (MissingVacant!3119 (index!14655 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16875 (_ BitVec 32)) SeekEntryResult!3119)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330015 (= c!51690 (is-Intermediate!3119 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!202637 () Unit!10252)

(declare-fun Unit!10254 () Unit!10252)

(assert (=> b!330015 (= e!202637 Unit!10254)))

(declare-fun b!330016 () Bool)

(declare-fun res!181920 () Bool)

(declare-fun e!202638 () Bool)

(assert (=> b!330016 (=> (not res!181920) (not e!202638))))

(declare-fun lt!158431 () SeekEntryResult!3119)

(assert (=> b!330016 (= res!181920 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158431))))

(declare-fun b!330017 () Bool)

(declare-fun res!181928 () Bool)

(assert (=> b!330017 (=> (not res!181928) (not e!202638))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330017 (= res!181928 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7977 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!330018 () Bool)

(declare-fun res!181927 () Bool)

(declare-fun e!202639 () Bool)

(assert (=> b!330018 (=> (not res!181927) (not e!202639))))

(declare-fun arrayContainsKey!0 (array!16875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330018 (= res!181927 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330019 () Bool)

(assert (=> b!330019 (= e!202638 (not true))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330019 (= index!1840 resIndex!58)))

(declare-fun lt!158432 () Unit!10252)

(declare-fun e!202641 () Unit!10252)

(assert (=> b!330019 (= lt!158432 e!202641)))

(declare-fun c!51692 () Bool)

(assert (=> b!330019 (= c!51692 (not (= resIndex!58 index!1840)))))

(declare-fun b!330020 () Bool)

(declare-fun res!181926 () Bool)

(assert (=> b!330020 (=> (not res!181926) (not e!202639))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330020 (= res!181926 (and (= (size!8329 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8329 a!3305))))))

(declare-fun b!330021 () Bool)

(declare-fun res!181923 () Bool)

(assert (=> b!330021 (=> (not res!181923) (not e!202639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330021 (= res!181923 (validKeyInArray!0 k!2497))))

(declare-fun b!330022 () Bool)

(assert (=> b!330022 (= e!202639 e!202638)))

(declare-fun res!181922 () Bool)

(assert (=> b!330022 (=> (not res!181922) (not e!202638))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330022 (= res!181922 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158431))))

(assert (=> b!330022 (= lt!158431 (Intermediate!3119 false resIndex!58 resX!58))))

(declare-fun b!330023 () Bool)

(assert (=> b!330023 (= e!202641 e!202637)))

(declare-fun c!51691 () Bool)

(assert (=> b!330023 (= c!51691 (or (= (select (arr!7977 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7977 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330024 () Bool)

(assert (=> b!330024 false))

(declare-fun Unit!10255 () Unit!10252)

(assert (=> b!330024 (= e!202637 Unit!10255)))

(declare-fun b!330025 () Bool)

(declare-fun Unit!10256 () Unit!10252)

(assert (=> b!330025 (= e!202641 Unit!10256)))

(declare-fun b!330026 () Bool)

(declare-fun res!181925 () Bool)

(assert (=> b!330026 (=> (not res!181925) (not e!202638))))

(assert (=> b!330026 (= res!181925 (and (= (select (arr!7977 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8329 a!3305))))))

(declare-fun b!330028 () Bool)

(declare-fun Unit!10257 () Unit!10252)

(assert (=> b!330028 (= e!202642 Unit!10257)))

(assert (=> b!330028 false))

(declare-fun b!330029 () Bool)

(declare-fun res!181924 () Bool)

(assert (=> b!330029 (=> (not res!181924) (not e!202639))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16875 (_ BitVec 32)) SeekEntryResult!3119)

(assert (=> b!330029 (= res!181924 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3119 i!1250)))))

(declare-fun b!330030 () Bool)

(declare-fun res!181929 () Bool)

(assert (=> b!330030 (=> (not res!181929) (not e!202639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16875 (_ BitVec 32)) Bool)

(assert (=> b!330030 (= res!181929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!181921 () Bool)

(assert (=> start!33220 (=> (not res!181921) (not e!202639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33220 (= res!181921 (validMask!0 mask!3777))))

(assert (=> start!33220 e!202639))

(declare-fun array_inv!5931 (array!16875) Bool)

(assert (=> start!33220 (array_inv!5931 a!3305)))

(assert (=> start!33220 true))

(declare-fun b!330027 () Bool)

(declare-fun Unit!10258 () Unit!10252)

(assert (=> b!330027 (= e!202642 Unit!10258)))

(assert (= (and start!33220 res!181921) b!330020))

(assert (= (and b!330020 res!181926) b!330021))

(assert (= (and b!330021 res!181923) b!330018))

(assert (= (and b!330018 res!181927) b!330029))

(assert (= (and b!330029 res!181924) b!330030))

(assert (= (and b!330030 res!181929) b!330022))

(assert (= (and b!330022 res!181922) b!330026))

(assert (= (and b!330026 res!181925) b!330016))

(assert (= (and b!330016 res!181920) b!330017))

(assert (= (and b!330017 res!181928) b!330019))

(assert (= (and b!330019 c!51692) b!330023))

(assert (= (and b!330019 (not c!51692)) b!330025))

(assert (= (and b!330023 c!51691) b!330024))

(assert (= (and b!330023 (not c!51691)) b!330015))

(assert (= (and b!330015 c!51690) b!330027))

(assert (= (and b!330015 (not c!51690)) b!330028))

(declare-fun m!335393 () Bool)

(assert (=> b!330030 m!335393))

(declare-fun m!335395 () Bool)

(assert (=> b!330026 m!335395))

(declare-fun m!335397 () Bool)

(assert (=> b!330023 m!335397))

(declare-fun m!335399 () Bool)

(assert (=> b!330022 m!335399))

(assert (=> b!330022 m!335399))

(declare-fun m!335401 () Bool)

(assert (=> b!330022 m!335401))

(declare-fun m!335403 () Bool)

(assert (=> b!330021 m!335403))

(declare-fun m!335405 () Bool)

(assert (=> b!330018 m!335405))

(declare-fun m!335407 () Bool)

(assert (=> b!330016 m!335407))

(declare-fun m!335409 () Bool)

(assert (=> start!33220 m!335409))

(declare-fun m!335411 () Bool)

(assert (=> start!33220 m!335411))

(assert (=> b!330017 m!335397))

(declare-fun m!335413 () Bool)

(assert (=> b!330015 m!335413))

(assert (=> b!330015 m!335413))

(declare-fun m!335415 () Bool)

(assert (=> b!330015 m!335415))

(declare-fun m!335417 () Bool)

(assert (=> b!330029 m!335417))

(push 1)

(assert (not b!330016))

