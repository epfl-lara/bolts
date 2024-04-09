; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32424 () Bool)

(assert start!32424)

(declare-fun b!323385 () Bool)

(assert (=> b!323385 false))

(declare-datatypes ((Unit!10018 0))(
  ( (Unit!10019) )
))
(declare-fun lt!156625 () Unit!10018)

(declare-fun e!199881 () Unit!10018)

(assert (=> b!323385 (= lt!156625 e!199881)))

(declare-datatypes ((array!16559 0))(
  ( (array!16560 (arr!7834 (Array (_ BitVec 32) (_ BitVec 64))) (size!8186 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16559)

(declare-fun c!50808 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2976 0))(
  ( (MissingZero!2976 (index!14080 (_ BitVec 32))) (Found!2976 (index!14081 (_ BitVec 32))) (Intermediate!2976 (undefined!3788 Bool) (index!14082 (_ BitVec 32)) (x!32303 (_ BitVec 32))) (Undefined!2976) (MissingVacant!2976 (index!14083 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16559 (_ BitVec 32)) SeekEntryResult!2976)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323385 (= c!50808 (is-Intermediate!2976 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199880 () Unit!10018)

(declare-fun Unit!10020 () Unit!10018)

(assert (=> b!323385 (= e!199880 Unit!10020)))

(declare-fun b!323387 () Bool)

(declare-fun Unit!10021 () Unit!10018)

(assert (=> b!323387 (= e!199881 Unit!10021)))

(declare-fun b!323388 () Bool)

(declare-fun res!177026 () Bool)

(declare-fun e!199878 () Bool)

(assert (=> b!323388 (=> (not res!177026) (not e!199878))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323388 (= res!177026 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7834 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323389 () Bool)

(declare-fun e!199882 () Unit!10018)

(assert (=> b!323389 (= e!199882 e!199880)))

(declare-fun c!50810 () Bool)

(assert (=> b!323389 (= c!50810 (or (= (select (arr!7834 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7834 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323390 () Bool)

(declare-fun Unit!10022 () Unit!10018)

(assert (=> b!323390 (= e!199881 Unit!10022)))

(assert (=> b!323390 false))

(declare-fun b!323391 () Bool)

(declare-fun res!177030 () Bool)

(assert (=> b!323391 (=> (not res!177030) (not e!199878))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323391 (= res!177030 (and (= (select (arr!7834 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8186 a!3305))))))

(declare-fun b!323392 () Bool)

(declare-fun res!177033 () Bool)

(declare-fun e!199877 () Bool)

(assert (=> b!323392 (=> (not res!177033) (not e!199877))))

(declare-fun arrayContainsKey!0 (array!16559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323392 (= res!177033 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323393 () Bool)

(declare-fun res!177025 () Bool)

(assert (=> b!323393 (=> (not res!177025) (not e!199877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323393 (= res!177025 (validKeyInArray!0 k!2497))))

(declare-fun b!323394 () Bool)

(declare-fun Unit!10023 () Unit!10018)

(assert (=> b!323394 (= e!199882 Unit!10023)))

(declare-fun b!323395 () Bool)

(assert (=> b!323395 (= e!199877 e!199878)))

(declare-fun res!177029 () Bool)

(assert (=> b!323395 (=> (not res!177029) (not e!199878))))

(declare-fun lt!156626 () SeekEntryResult!2976)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323395 (= res!177029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156626))))

(assert (=> b!323395 (= lt!156626 (Intermediate!2976 false resIndex!58 resX!58))))

(declare-fun b!323396 () Bool)

(declare-fun res!177024 () Bool)

(assert (=> b!323396 (=> (not res!177024) (not e!199877))))

(assert (=> b!323396 (= res!177024 (and (= (size!8186 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8186 a!3305))))))

(declare-fun b!323386 () Bool)

(assert (=> b!323386 (= e!199878 (not (or (not (= (select (arr!7834 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(assert (=> b!323386 (= index!1840 resIndex!58)))

(declare-fun lt!156624 () Unit!10018)

(assert (=> b!323386 (= lt!156624 e!199882)))

(declare-fun c!50809 () Bool)

(assert (=> b!323386 (= c!50809 (not (= resIndex!58 index!1840)))))

(declare-fun res!177027 () Bool)

(assert (=> start!32424 (=> (not res!177027) (not e!199877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32424 (= res!177027 (validMask!0 mask!3777))))

(assert (=> start!32424 e!199877))

(declare-fun array_inv!5788 (array!16559) Bool)

(assert (=> start!32424 (array_inv!5788 a!3305)))

(assert (=> start!32424 true))

(declare-fun b!323397 () Bool)

(declare-fun res!177028 () Bool)

(assert (=> b!323397 (=> (not res!177028) (not e!199877))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16559 (_ BitVec 32)) SeekEntryResult!2976)

(assert (=> b!323397 (= res!177028 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2976 i!1250)))))

(declare-fun b!323398 () Bool)

(declare-fun res!177032 () Bool)

(assert (=> b!323398 (=> (not res!177032) (not e!199878))))

(assert (=> b!323398 (= res!177032 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156626))))

(declare-fun b!323399 () Bool)

(assert (=> b!323399 false))

(declare-fun Unit!10024 () Unit!10018)

(assert (=> b!323399 (= e!199880 Unit!10024)))

(declare-fun b!323400 () Bool)

(declare-fun res!177031 () Bool)

(assert (=> b!323400 (=> (not res!177031) (not e!199877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16559 (_ BitVec 32)) Bool)

(assert (=> b!323400 (= res!177031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32424 res!177027) b!323396))

(assert (= (and b!323396 res!177024) b!323393))

(assert (= (and b!323393 res!177025) b!323392))

(assert (= (and b!323392 res!177033) b!323397))

(assert (= (and b!323397 res!177028) b!323400))

(assert (= (and b!323400 res!177031) b!323395))

(assert (= (and b!323395 res!177029) b!323391))

(assert (= (and b!323391 res!177030) b!323398))

(assert (= (and b!323398 res!177032) b!323388))

(assert (= (and b!323388 res!177026) b!323386))

(assert (= (and b!323386 c!50809) b!323389))

(assert (= (and b!323386 (not c!50809)) b!323394))

(assert (= (and b!323389 c!50810) b!323399))

(assert (= (and b!323389 (not c!50810)) b!323385))

(assert (= (and b!323385 c!50808) b!323387))

(assert (= (and b!323385 (not c!50808)) b!323390))

(declare-fun m!330739 () Bool)

(assert (=> b!323398 m!330739))

(declare-fun m!330741 () Bool)

(assert (=> b!323395 m!330741))

(assert (=> b!323395 m!330741))

(declare-fun m!330743 () Bool)

(assert (=> b!323395 m!330743))

(declare-fun m!330745 () Bool)

(assert (=> b!323385 m!330745))

(assert (=> b!323385 m!330745))

(declare-fun m!330747 () Bool)

(assert (=> b!323385 m!330747))

(declare-fun m!330749 () Bool)

(assert (=> b!323389 m!330749))

(declare-fun m!330751 () Bool)

(assert (=> b!323397 m!330751))

(declare-fun m!330753 () Bool)

(assert (=> start!32424 m!330753))

(declare-fun m!330755 () Bool)

(assert (=> start!32424 m!330755))

(assert (=> b!323388 m!330749))

(declare-fun m!330757 () Bool)

(assert (=> b!323400 m!330757))

(assert (=> b!323386 m!330749))

(declare-fun m!330759 () Bool)

(assert (=> b!323391 m!330759))

(declare-fun m!330761 () Bool)

(assert (=> b!323392 m!330761))

(declare-fun m!330763 () Bool)

(assert (=> b!323393 m!330763))

(push 1)

(assert (not b!323397))

(assert (not b!323400))

(assert (not b!323398))

(assert (not b!323385))

(assert (not start!32424))

(assert (not b!323395))

(assert (not b!323393))

(assert (not b!323392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

