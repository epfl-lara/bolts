; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51470 () Bool)

(assert start!51470)

(declare-fun b!562299 () Bool)

(declare-fun res!353601 () Bool)

(declare-fun e!324062 () Bool)

(assert (=> b!562299 (=> (not res!353601) (not e!324062))))

(declare-datatypes ((array!35289 0))(
  ( (array!35290 (arr!16941 (Array (_ BitVec 32) (_ BitVec 64))) (size!17305 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35289)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562299 (= res!353601 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562300 () Bool)

(declare-fun e!324061 () Bool)

(assert (=> b!562300 (= e!324062 e!324061)))

(declare-fun res!353603 () Bool)

(assert (=> b!562300 (=> (not res!353603) (not e!324061))))

(declare-datatypes ((SeekEntryResult!5397 0))(
  ( (MissingZero!5397 (index!23815 (_ BitVec 32))) (Found!5397 (index!23816 (_ BitVec 32))) (Intermediate!5397 (undefined!6209 Bool) (index!23817 (_ BitVec 32)) (x!52743 (_ BitVec 32))) (Undefined!5397) (MissingVacant!5397 (index!23818 (_ BitVec 32))) )
))
(declare-fun lt!256273 () SeekEntryResult!5397)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562300 (= res!353603 (or (= lt!256273 (MissingZero!5397 i!1132)) (= lt!256273 (MissingVacant!5397 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35289 (_ BitVec 32)) SeekEntryResult!5397)

(assert (=> b!562300 (= lt!256273 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562301 () Bool)

(declare-fun res!353609 () Bool)

(assert (=> b!562301 (=> (not res!353609) (not e!324062))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562301 (= res!353609 (validKeyInArray!0 (select (arr!16941 a!3118) j!142)))))

(declare-fun res!353612 () Bool)

(assert (=> start!51470 (=> (not res!353612) (not e!324062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51470 (= res!353612 (validMask!0 mask!3119))))

(assert (=> start!51470 e!324062))

(assert (=> start!51470 true))

(declare-fun array_inv!12715 (array!35289) Bool)

(assert (=> start!51470 (array_inv!12715 a!3118)))

(declare-fun b!562302 () Bool)

(declare-fun e!324060 () Bool)

(declare-fun e!324058 () Bool)

(assert (=> b!562302 (= e!324060 e!324058)))

(declare-fun res!353608 () Bool)

(assert (=> b!562302 (=> res!353608 e!324058)))

(declare-fun lt!256268 () SeekEntryResult!5397)

(declare-fun lt!256264 () SeekEntryResult!5397)

(declare-fun lt!256275 () (_ BitVec 64))

(declare-fun lt!256276 () SeekEntryResult!5397)

(assert (=> b!562302 (= res!353608 (or (bvslt (index!23817 lt!256268) #b00000000000000000000000000000000) (bvsge (index!23817 lt!256268) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52743 lt!256268) #b01111111111111111111111111111110) (bvslt (x!52743 lt!256268) #b00000000000000000000000000000000) (not (= lt!256275 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16941 a!3118) i!1132 k!1914) (index!23817 lt!256268)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256264 lt!256276))))))

(declare-fun lt!256271 () SeekEntryResult!5397)

(declare-fun lt!256269 () SeekEntryResult!5397)

(assert (=> b!562302 (= lt!256271 lt!256269)))

(declare-fun lt!256267 () (_ BitVec 64))

(declare-fun lt!256266 () array!35289)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35289 (_ BitVec 32)) SeekEntryResult!5397)

(assert (=> b!562302 (= lt!256269 (seekKeyOrZeroReturnVacant!0 (x!52743 lt!256268) (index!23817 lt!256268) (index!23817 lt!256268) lt!256267 lt!256266 mask!3119))))

(assert (=> b!562302 (= lt!256271 (seekEntryOrOpen!0 lt!256267 lt!256266 mask!3119))))

(declare-fun lt!256274 () SeekEntryResult!5397)

(assert (=> b!562302 (= lt!256274 lt!256264)))

(assert (=> b!562302 (= lt!256264 (seekKeyOrZeroReturnVacant!0 (x!52743 lt!256268) (index!23817 lt!256268) (index!23817 lt!256268) (select (arr!16941 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562303 () Bool)

(declare-fun res!353604 () Bool)

(assert (=> b!562303 (=> (not res!353604) (not e!324062))))

(assert (=> b!562303 (= res!353604 (validKeyInArray!0 k!1914))))

(declare-fun b!562304 () Bool)

(declare-fun e!324059 () Bool)

(declare-fun e!324063 () Bool)

(assert (=> b!562304 (= e!324059 (not e!324063))))

(declare-fun res!353605 () Bool)

(assert (=> b!562304 (=> res!353605 e!324063)))

(assert (=> b!562304 (= res!353605 (or (undefined!6209 lt!256268) (not (is-Intermediate!5397 lt!256268))))))

(assert (=> b!562304 (= lt!256274 lt!256276)))

(assert (=> b!562304 (= lt!256276 (Found!5397 j!142))))

(assert (=> b!562304 (= lt!256274 (seekEntryOrOpen!0 (select (arr!16941 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35289 (_ BitVec 32)) Bool)

(assert (=> b!562304 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17568 0))(
  ( (Unit!17569) )
))
(declare-fun lt!256272 () Unit!17568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17568)

(assert (=> b!562304 (= lt!256272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562305 () Bool)

(declare-fun res!353607 () Bool)

(assert (=> b!562305 (=> (not res!353607) (not e!324061))))

(assert (=> b!562305 (= res!353607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562306 () Bool)

(assert (=> b!562306 (= e!324063 e!324060)))

(declare-fun res!353606 () Bool)

(assert (=> b!562306 (=> res!353606 e!324060)))

(assert (=> b!562306 (= res!353606 (or (= lt!256275 (select (arr!16941 a!3118) j!142)) (= lt!256275 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562306 (= lt!256275 (select (arr!16941 a!3118) (index!23817 lt!256268)))))

(declare-fun b!562307 () Bool)

(assert (=> b!562307 (= e!324061 e!324059)))

(declare-fun res!353610 () Bool)

(assert (=> b!562307 (=> (not res!353610) (not e!324059))))

(declare-fun lt!256277 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35289 (_ BitVec 32)) SeekEntryResult!5397)

(assert (=> b!562307 (= res!353610 (= lt!256268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256277 lt!256267 lt!256266 mask!3119)))))

(declare-fun lt!256265 () (_ BitVec 32))

(assert (=> b!562307 (= lt!256268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256265 (select (arr!16941 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562307 (= lt!256277 (toIndex!0 lt!256267 mask!3119))))

(assert (=> b!562307 (= lt!256267 (select (store (arr!16941 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562307 (= lt!256265 (toIndex!0 (select (arr!16941 a!3118) j!142) mask!3119))))

(assert (=> b!562307 (= lt!256266 (array!35290 (store (arr!16941 a!3118) i!1132 k!1914) (size!17305 a!3118)))))

(declare-fun b!562308 () Bool)

(declare-fun res!353611 () Bool)

(assert (=> b!562308 (=> (not res!353611) (not e!324061))))

(declare-datatypes ((List!11074 0))(
  ( (Nil!11071) (Cons!11070 (h!12073 (_ BitVec 64)) (t!17310 List!11074)) )
))
(declare-fun arrayNoDuplicates!0 (array!35289 (_ BitVec 32) List!11074) Bool)

(assert (=> b!562308 (= res!353611 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11071))))

(declare-fun b!562309 () Bool)

(declare-fun res!353602 () Bool)

(assert (=> b!562309 (=> (not res!353602) (not e!324062))))

(assert (=> b!562309 (= res!353602 (and (= (size!17305 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17305 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17305 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562310 () Bool)

(assert (=> b!562310 (= e!324058 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562310 (= lt!256264 lt!256269)))

(declare-fun lt!256270 () Unit!17568)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35289 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17568)

(assert (=> b!562310 (= lt!256270 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52743 lt!256268) (index!23817 lt!256268) (index!23817 lt!256268) mask!3119))))

(assert (= (and start!51470 res!353612) b!562309))

(assert (= (and b!562309 res!353602) b!562301))

(assert (= (and b!562301 res!353609) b!562303))

(assert (= (and b!562303 res!353604) b!562299))

(assert (= (and b!562299 res!353601) b!562300))

(assert (= (and b!562300 res!353603) b!562305))

(assert (= (and b!562305 res!353607) b!562308))

(assert (= (and b!562308 res!353611) b!562307))

(assert (= (and b!562307 res!353610) b!562304))

(assert (= (and b!562304 (not res!353605)) b!562306))

(assert (= (and b!562306 (not res!353606)) b!562302))

(assert (= (and b!562302 (not res!353608)) b!562310))

(declare-fun m!540391 () Bool)

(assert (=> b!562308 m!540391))

(declare-fun m!540393 () Bool)

(assert (=> b!562302 m!540393))

(declare-fun m!540395 () Bool)

(assert (=> b!562302 m!540395))

(declare-fun m!540397 () Bool)

(assert (=> b!562302 m!540397))

(declare-fun m!540399 () Bool)

(assert (=> b!562302 m!540399))

(declare-fun m!540401 () Bool)

(assert (=> b!562302 m!540401))

(declare-fun m!540403 () Bool)

(assert (=> b!562302 m!540403))

(assert (=> b!562302 m!540393))

(declare-fun m!540405 () Bool)

(assert (=> start!51470 m!540405))

(declare-fun m!540407 () Bool)

(assert (=> start!51470 m!540407))

(assert (=> b!562307 m!540393))

(declare-fun m!540409 () Bool)

(assert (=> b!562307 m!540409))

(assert (=> b!562307 m!540393))

(declare-fun m!540411 () Bool)

(assert (=> b!562307 m!540411))

(declare-fun m!540413 () Bool)

(assert (=> b!562307 m!540413))

(assert (=> b!562307 m!540393))

(declare-fun m!540415 () Bool)

(assert (=> b!562307 m!540415))

(assert (=> b!562307 m!540399))

(declare-fun m!540417 () Bool)

(assert (=> b!562307 m!540417))

(declare-fun m!540419 () Bool)

(assert (=> b!562310 m!540419))

(assert (=> b!562304 m!540393))

(assert (=> b!562304 m!540393))

(declare-fun m!540421 () Bool)

(assert (=> b!562304 m!540421))

(declare-fun m!540423 () Bool)

(assert (=> b!562304 m!540423))

(declare-fun m!540425 () Bool)

(assert (=> b!562304 m!540425))

(assert (=> b!562301 m!540393))

(assert (=> b!562301 m!540393))

(declare-fun m!540427 () Bool)

(assert (=> b!562301 m!540427))

(declare-fun m!540429 () Bool)

(assert (=> b!562299 m!540429))

(declare-fun m!540431 () Bool)

(assert (=> b!562305 m!540431))

(declare-fun m!540433 () Bool)

(assert (=> b!562300 m!540433))

(declare-fun m!540435 () Bool)

(assert (=> b!562303 m!540435))

(assert (=> b!562306 m!540393))

(declare-fun m!540437 () Bool)

(assert (=> b!562306 m!540437))

(push 1)

