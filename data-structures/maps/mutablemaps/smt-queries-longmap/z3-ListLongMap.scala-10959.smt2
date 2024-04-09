; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128334 () Bool)

(assert start!128334)

(declare-fun b!1505585 () Bool)

(declare-fun e!841517 () Bool)

(declare-datatypes ((List!35097 0))(
  ( (Nil!35094) (Cons!35093 (h!36491 (_ BitVec 64)) (t!49798 List!35097)) )
))
(declare-fun noDuplicate!2658 (List!35097) Bool)

(assert (=> b!1505585 (= e!841517 (not (noDuplicate!2658 Nil!35094)))))

(declare-fun res!1026089 () Bool)

(assert (=> start!128334 (=> (not res!1026089) (not e!841517))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128334 (= res!1026089 (validMask!0 mask!2512))))

(assert (=> start!128334 e!841517))

(assert (=> start!128334 true))

(declare-datatypes ((array!100379 0))(
  ( (array!100380 (arr!48434 (Array (_ BitVec 32) (_ BitVec 64))) (size!48985 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100379)

(declare-fun array_inv!37379 (array!100379) Bool)

(assert (=> start!128334 (array_inv!37379 a!2804)))

(declare-fun b!1505586 () Bool)

(declare-fun res!1026087 () Bool)

(assert (=> b!1505586 (=> (not res!1026087) (not e!841517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100379 (_ BitVec 32)) Bool)

(assert (=> b!1505586 (= res!1026087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505587 () Bool)

(declare-fun res!1026088 () Bool)

(assert (=> b!1505587 (=> (not res!1026088) (not e!841517))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505587 (= res!1026088 (validKeyInArray!0 (select (arr!48434 a!2804) j!70)))))

(declare-fun b!1505588 () Bool)

(declare-fun res!1026090 () Bool)

(assert (=> b!1505588 (=> (not res!1026090) (not e!841517))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505588 (= res!1026090 (validKeyInArray!0 (select (arr!48434 a!2804) i!961)))))

(declare-fun b!1505589 () Bool)

(declare-fun res!1026085 () Bool)

(assert (=> b!1505589 (=> (not res!1026085) (not e!841517))))

(assert (=> b!1505589 (= res!1026085 (and (bvsle #b00000000000000000000000000000000 (size!48985 a!2804)) (bvslt (size!48985 a!2804) #b01111111111111111111111111111111)))))

(declare-fun b!1505590 () Bool)

(declare-fun res!1026086 () Bool)

(assert (=> b!1505590 (=> (not res!1026086) (not e!841517))))

(assert (=> b!1505590 (= res!1026086 (and (= (size!48985 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48985 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48985 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128334 res!1026089) b!1505590))

(assert (= (and b!1505590 res!1026086) b!1505588))

(assert (= (and b!1505588 res!1026090) b!1505587))

(assert (= (and b!1505587 res!1026088) b!1505586))

(assert (= (and b!1505586 res!1026087) b!1505589))

(assert (= (and b!1505589 res!1026085) b!1505585))

(declare-fun m!1388731 () Bool)

(assert (=> b!1505587 m!1388731))

(assert (=> b!1505587 m!1388731))

(declare-fun m!1388733 () Bool)

(assert (=> b!1505587 m!1388733))

(declare-fun m!1388735 () Bool)

(assert (=> start!128334 m!1388735))

(declare-fun m!1388737 () Bool)

(assert (=> start!128334 m!1388737))

(declare-fun m!1388739 () Bool)

(assert (=> b!1505588 m!1388739))

(assert (=> b!1505588 m!1388739))

(declare-fun m!1388741 () Bool)

(assert (=> b!1505588 m!1388741))

(declare-fun m!1388743 () Bool)

(assert (=> b!1505586 m!1388743))

(declare-fun m!1388745 () Bool)

(assert (=> b!1505585 m!1388745))

(check-sat (not start!128334) (not b!1505586) (not b!1505585) (not b!1505587) (not b!1505588))
(check-sat)
(get-model)

(declare-fun d!158019 () Bool)

(assert (=> d!158019 (= (validKeyInArray!0 (select (arr!48434 a!2804) j!70)) (and (not (= (select (arr!48434 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48434 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505587 d!158019))

(declare-fun d!158021 () Bool)

(assert (=> d!158021 (= (validKeyInArray!0 (select (arr!48434 a!2804) i!961)) (and (not (= (select (arr!48434 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48434 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505588 d!158021))

(declare-fun d!158025 () Bool)

(declare-fun res!1026117 () Bool)

(declare-fun e!841536 () Bool)

(assert (=> d!158025 (=> res!1026117 e!841536)))

(assert (=> d!158025 (= res!1026117 (bvsge #b00000000000000000000000000000000 (size!48985 a!2804)))))

(assert (=> d!158025 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841536)))

(declare-fun b!1505625 () Bool)

(declare-fun e!841538 () Bool)

(declare-fun call!68189 () Bool)

(assert (=> b!1505625 (= e!841538 call!68189)))

(declare-fun b!1505626 () Bool)

(declare-fun e!841537 () Bool)

(assert (=> b!1505626 (= e!841537 call!68189)))

(declare-fun b!1505627 () Bool)

(assert (=> b!1505627 (= e!841537 e!841538)))

(declare-fun lt!654026 () (_ BitVec 64))

(assert (=> b!1505627 (= lt!654026 (select (arr!48434 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50248 0))(
  ( (Unit!50249) )
))
(declare-fun lt!654028 () Unit!50248)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100379 (_ BitVec 64) (_ BitVec 32)) Unit!50248)

(assert (=> b!1505627 (= lt!654028 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654026 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505627 (arrayContainsKey!0 a!2804 lt!654026 #b00000000000000000000000000000000)))

(declare-fun lt!654027 () Unit!50248)

(assert (=> b!1505627 (= lt!654027 lt!654028)))

(declare-fun res!1026118 () Bool)

(declare-datatypes ((SeekEntryResult!12643 0))(
  ( (MissingZero!12643 (index!52966 (_ BitVec 32))) (Found!12643 (index!52967 (_ BitVec 32))) (Intermediate!12643 (undefined!13455 Bool) (index!52968 (_ BitVec 32)) (x!134691 (_ BitVec 32))) (Undefined!12643) (MissingVacant!12643 (index!52969 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100379 (_ BitVec 32)) SeekEntryResult!12643)

(assert (=> b!1505627 (= res!1026118 (= (seekEntryOrOpen!0 (select (arr!48434 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12643 #b00000000000000000000000000000000)))))

(assert (=> b!1505627 (=> (not res!1026118) (not e!841538))))

(declare-fun b!1505628 () Bool)

(assert (=> b!1505628 (= e!841536 e!841537)))

(declare-fun c!139291 () Bool)

(assert (=> b!1505628 (= c!139291 (validKeyInArray!0 (select (arr!48434 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68186 () Bool)

(assert (=> bm!68186 (= call!68189 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158025 (not res!1026117)) b!1505628))

(assert (= (and b!1505628 c!139291) b!1505627))

(assert (= (and b!1505628 (not c!139291)) b!1505626))

(assert (= (and b!1505627 res!1026118) b!1505625))

(assert (= (or b!1505625 b!1505626) bm!68186))

(declare-fun m!1388763 () Bool)

(assert (=> b!1505627 m!1388763))

(declare-fun m!1388765 () Bool)

(assert (=> b!1505627 m!1388765))

(declare-fun m!1388767 () Bool)

(assert (=> b!1505627 m!1388767))

(assert (=> b!1505627 m!1388763))

(declare-fun m!1388769 () Bool)

(assert (=> b!1505627 m!1388769))

(assert (=> b!1505628 m!1388763))

(assert (=> b!1505628 m!1388763))

(declare-fun m!1388771 () Bool)

(assert (=> b!1505628 m!1388771))

(declare-fun m!1388773 () Bool)

(assert (=> bm!68186 m!1388773))

(assert (=> b!1505586 d!158025))

(declare-fun d!158033 () Bool)

(assert (=> d!158033 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128334 d!158033))

(declare-fun d!158043 () Bool)

(assert (=> d!158043 (= (array_inv!37379 a!2804) (bvsge (size!48985 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128334 d!158043))

(declare-fun d!158045 () Bool)

(declare-fun res!1026137 () Bool)

(declare-fun e!841561 () Bool)

(assert (=> d!158045 (=> res!1026137 e!841561)))

(get-info :version)

(assert (=> d!158045 (= res!1026137 ((_ is Nil!35094) Nil!35094))))

(assert (=> d!158045 (= (noDuplicate!2658 Nil!35094) e!841561)))

(declare-fun b!1505655 () Bool)

(declare-fun e!841562 () Bool)

(assert (=> b!1505655 (= e!841561 e!841562)))

(declare-fun res!1026138 () Bool)

(assert (=> b!1505655 (=> (not res!1026138) (not e!841562))))

(declare-fun contains!9968 (List!35097 (_ BitVec 64)) Bool)

(assert (=> b!1505655 (= res!1026138 (not (contains!9968 (t!49798 Nil!35094) (h!36491 Nil!35094))))))

(declare-fun b!1505656 () Bool)

(assert (=> b!1505656 (= e!841562 (noDuplicate!2658 (t!49798 Nil!35094)))))

(assert (= (and d!158045 (not res!1026137)) b!1505655))

(assert (= (and b!1505655 res!1026138) b!1505656))

(declare-fun m!1388803 () Bool)

(assert (=> b!1505655 m!1388803))

(declare-fun m!1388805 () Bool)

(assert (=> b!1505656 m!1388805))

(assert (=> b!1505585 d!158045))

(check-sat (not b!1505656) (not b!1505627) (not bm!68186) (not b!1505655) (not b!1505628))
(check-sat)
