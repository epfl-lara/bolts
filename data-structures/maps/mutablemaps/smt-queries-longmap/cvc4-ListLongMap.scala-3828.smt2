; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52476 () Bool)

(assert start!52476)

(declare-fun b!572699 () Bool)

(declare-fun res!362367 () Bool)

(declare-fun e!329451 () Bool)

(assert (=> b!572699 (=> (not res!362367) (not e!329451))))

(declare-datatypes ((array!35827 0))(
  ( (array!35828 (arr!17198 (Array (_ BitVec 32) (_ BitVec 64))) (size!17562 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35827)

(declare-datatypes ((List!11331 0))(
  ( (Nil!11328) (Cons!11327 (h!12354 (_ BitVec 64)) (t!17567 List!11331)) )
))
(declare-fun arrayNoDuplicates!0 (array!35827 (_ BitVec 32) List!11331) Bool)

(assert (=> b!572699 (= res!362367 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11328))))

(declare-fun b!572700 () Bool)

(declare-fun e!329452 () Bool)

(assert (=> b!572700 (= e!329452 (not true))))

(declare-fun e!329455 () Bool)

(assert (=> b!572700 e!329455))

(declare-fun res!362360 () Bool)

(assert (=> b!572700 (=> (not res!362360) (not e!329455))))

(declare-datatypes ((SeekEntryResult!5654 0))(
  ( (MissingZero!5654 (index!24843 (_ BitVec 32))) (Found!5654 (index!24844 (_ BitVec 32))) (Intermediate!5654 (undefined!6466 Bool) (index!24845 (_ BitVec 32)) (x!53734 (_ BitVec 32))) (Undefined!5654) (MissingVacant!5654 (index!24846 (_ BitVec 32))) )
))
(declare-fun lt!261515 () SeekEntryResult!5654)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!572700 (= res!362360 (= lt!261515 (Found!5654 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35827 (_ BitVec 32)) SeekEntryResult!5654)

(assert (=> b!572700 (= lt!261515 (seekEntryOrOpen!0 (select (arr!17198 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35827 (_ BitVec 32)) Bool)

(assert (=> b!572700 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18010 0))(
  ( (Unit!18011) )
))
(declare-fun lt!261513 () Unit!18010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18010)

(assert (=> b!572700 (= lt!261513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572701 () Bool)

(declare-fun res!362362 () Bool)

(assert (=> b!572701 (=> (not res!362362) (not e!329451))))

(assert (=> b!572701 (= res!362362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572702 () Bool)

(declare-fun e!329449 () Bool)

(declare-fun e!329448 () Bool)

(assert (=> b!572702 (= e!329449 e!329448)))

(declare-fun res!362359 () Bool)

(assert (=> b!572702 (=> res!362359 e!329448)))

(declare-fun lt!261517 () (_ BitVec 64))

(assert (=> b!572702 (= res!362359 (or (= lt!261517 (select (arr!17198 a!3118) j!142)) (= lt!261517 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!261520 () SeekEntryResult!5654)

(assert (=> b!572702 (= lt!261517 (select (arr!17198 a!3118) (index!24845 lt!261520)))))

(declare-fun res!362361 () Bool)

(declare-fun e!329453 () Bool)

(assert (=> start!52476 (=> (not res!362361) (not e!329453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52476 (= res!362361 (validMask!0 mask!3119))))

(assert (=> start!52476 e!329453))

(assert (=> start!52476 true))

(declare-fun array_inv!12972 (array!35827) Bool)

(assert (=> start!52476 (array_inv!12972 a!3118)))

(declare-fun b!572703 () Bool)

(declare-fun e!329450 () Bool)

(assert (=> b!572703 (= e!329448 e!329450)))

(declare-fun res!362365 () Bool)

(assert (=> b!572703 (=> (not res!362365) (not e!329450))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35827 (_ BitVec 32)) SeekEntryResult!5654)

(assert (=> b!572703 (= res!362365 (= lt!261515 (seekKeyOrZeroReturnVacant!0 (x!53734 lt!261520) (index!24845 lt!261520) (index!24845 lt!261520) (select (arr!17198 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572704 () Bool)

(declare-fun res!362363 () Bool)

(assert (=> b!572704 (=> (not res!362363) (not e!329453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572704 (= res!362363 (validKeyInArray!0 (select (arr!17198 a!3118) j!142)))))

(declare-fun b!572705 () Bool)

(declare-fun res!362358 () Bool)

(assert (=> b!572705 (=> (not res!362358) (not e!329453))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572705 (= res!362358 (and (= (size!17562 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17562 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17562 a!3118)) (not (= i!1132 j!142))))))

(declare-fun lt!261514 () (_ BitVec 64))

(declare-fun b!572706 () Bool)

(declare-fun lt!261521 () array!35827)

(assert (=> b!572706 (= e!329450 (= (seekEntryOrOpen!0 lt!261514 lt!261521 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53734 lt!261520) (index!24845 lt!261520) (index!24845 lt!261520) lt!261514 lt!261521 mask!3119)))))

(declare-fun b!572707 () Bool)

(declare-fun res!362366 () Bool)

(assert (=> b!572707 (=> (not res!362366) (not e!329453))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!572707 (= res!362366 (validKeyInArray!0 k!1914))))

(declare-fun b!572708 () Bool)

(declare-fun res!362369 () Bool)

(assert (=> b!572708 (=> (not res!362369) (not e!329453))))

(declare-fun arrayContainsKey!0 (array!35827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572708 (= res!362369 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572709 () Bool)

(assert (=> b!572709 (= e!329453 e!329451)))

(declare-fun res!362357 () Bool)

(assert (=> b!572709 (=> (not res!362357) (not e!329451))))

(declare-fun lt!261516 () SeekEntryResult!5654)

(assert (=> b!572709 (= res!362357 (or (= lt!261516 (MissingZero!5654 i!1132)) (= lt!261516 (MissingVacant!5654 i!1132))))))

(assert (=> b!572709 (= lt!261516 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572710 () Bool)

(assert (=> b!572710 (= e!329455 e!329449)))

(declare-fun res!362364 () Bool)

(assert (=> b!572710 (=> res!362364 e!329449)))

(assert (=> b!572710 (= res!362364 (or (undefined!6466 lt!261520) (not (is-Intermediate!5654 lt!261520))))))

(declare-fun b!572711 () Bool)

(assert (=> b!572711 (= e!329451 e!329452)))

(declare-fun res!362368 () Bool)

(assert (=> b!572711 (=> (not res!362368) (not e!329452))))

(declare-fun lt!261519 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35827 (_ BitVec 32)) SeekEntryResult!5654)

(assert (=> b!572711 (= res!362368 (= lt!261520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261519 lt!261514 lt!261521 mask!3119)))))

(declare-fun lt!261518 () (_ BitVec 32))

(assert (=> b!572711 (= lt!261520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261518 (select (arr!17198 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572711 (= lt!261519 (toIndex!0 lt!261514 mask!3119))))

(assert (=> b!572711 (= lt!261514 (select (store (arr!17198 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572711 (= lt!261518 (toIndex!0 (select (arr!17198 a!3118) j!142) mask!3119))))

(assert (=> b!572711 (= lt!261521 (array!35828 (store (arr!17198 a!3118) i!1132 k!1914) (size!17562 a!3118)))))

(assert (= (and start!52476 res!362361) b!572705))

(assert (= (and b!572705 res!362358) b!572704))

(assert (= (and b!572704 res!362363) b!572707))

(assert (= (and b!572707 res!362366) b!572708))

(assert (= (and b!572708 res!362369) b!572709))

(assert (= (and b!572709 res!362357) b!572701))

(assert (= (and b!572701 res!362362) b!572699))

(assert (= (and b!572699 res!362367) b!572711))

(assert (= (and b!572711 res!362368) b!572700))

(assert (= (and b!572700 res!362360) b!572710))

(assert (= (and b!572710 (not res!362364)) b!572702))

(assert (= (and b!572702 (not res!362359)) b!572703))

(assert (= (and b!572703 res!362365) b!572706))

(declare-fun m!551771 () Bool)

(assert (=> b!572707 m!551771))

(declare-fun m!551773 () Bool)

(assert (=> b!572700 m!551773))

(assert (=> b!572700 m!551773))

(declare-fun m!551775 () Bool)

(assert (=> b!572700 m!551775))

(declare-fun m!551777 () Bool)

(assert (=> b!572700 m!551777))

(declare-fun m!551779 () Bool)

(assert (=> b!572700 m!551779))

(declare-fun m!551781 () Bool)

(assert (=> b!572708 m!551781))

(declare-fun m!551783 () Bool)

(assert (=> b!572706 m!551783))

(declare-fun m!551785 () Bool)

(assert (=> b!572706 m!551785))

(declare-fun m!551787 () Bool)

(assert (=> start!52476 m!551787))

(declare-fun m!551789 () Bool)

(assert (=> start!52476 m!551789))

(declare-fun m!551791 () Bool)

(assert (=> b!572711 m!551791))

(assert (=> b!572711 m!551773))

(declare-fun m!551793 () Bool)

(assert (=> b!572711 m!551793))

(declare-fun m!551795 () Bool)

(assert (=> b!572711 m!551795))

(assert (=> b!572711 m!551773))

(declare-fun m!551797 () Bool)

(assert (=> b!572711 m!551797))

(assert (=> b!572711 m!551773))

(declare-fun m!551799 () Bool)

(assert (=> b!572711 m!551799))

(declare-fun m!551801 () Bool)

(assert (=> b!572711 m!551801))

(declare-fun m!551803 () Bool)

(assert (=> b!572701 m!551803))

(assert (=> b!572703 m!551773))

(assert (=> b!572703 m!551773))

(declare-fun m!551805 () Bool)

(assert (=> b!572703 m!551805))

(assert (=> b!572702 m!551773))

(declare-fun m!551807 () Bool)

(assert (=> b!572702 m!551807))

(declare-fun m!551809 () Bool)

(assert (=> b!572709 m!551809))

(declare-fun m!551811 () Bool)

(assert (=> b!572699 m!551811))

(assert (=> b!572704 m!551773))

(assert (=> b!572704 m!551773))

(declare-fun m!551813 () Bool)

(assert (=> b!572704 m!551813))

(push 1)

