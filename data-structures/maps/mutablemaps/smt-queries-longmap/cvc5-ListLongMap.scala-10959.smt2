; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128332 () Bool)

(assert start!128332)

(declare-fun b!1505567 () Bool)

(declare-fun res!1026068 () Bool)

(declare-fun e!841510 () Bool)

(assert (=> b!1505567 (=> (not res!1026068) (not e!841510))))

(declare-datatypes ((array!100377 0))(
  ( (array!100378 (arr!48433 (Array (_ BitVec 32) (_ BitVec 64))) (size!48984 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100377)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100377 (_ BitVec 32)) Bool)

(assert (=> b!1505567 (= res!1026068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505568 () Bool)

(declare-fun res!1026070 () Bool)

(assert (=> b!1505568 (=> (not res!1026070) (not e!841510))))

(assert (=> b!1505568 (= res!1026070 (and (bvsle #b00000000000000000000000000000000 (size!48984 a!2804)) (bvslt (size!48984 a!2804) #b01111111111111111111111111111111)))))

(declare-fun b!1505569 () Bool)

(declare-fun res!1026067 () Bool)

(assert (=> b!1505569 (=> (not res!1026067) (not e!841510))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505569 (= res!1026067 (and (= (size!48984 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48984 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48984 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1026071 () Bool)

(assert (=> start!128332 (=> (not res!1026071) (not e!841510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128332 (= res!1026071 (validMask!0 mask!2512))))

(assert (=> start!128332 e!841510))

(assert (=> start!128332 true))

(declare-fun array_inv!37378 (array!100377) Bool)

(assert (=> start!128332 (array_inv!37378 a!2804)))

(declare-fun b!1505570 () Bool)

(declare-fun res!1026069 () Bool)

(assert (=> b!1505570 (=> (not res!1026069) (not e!841510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505570 (= res!1026069 (validKeyInArray!0 (select (arr!48433 a!2804) i!961)))))

(declare-fun b!1505571 () Bool)

(declare-fun res!1026072 () Bool)

(assert (=> b!1505571 (=> (not res!1026072) (not e!841510))))

(assert (=> b!1505571 (= res!1026072 (validKeyInArray!0 (select (arr!48433 a!2804) j!70)))))

(declare-fun b!1505572 () Bool)

(declare-datatypes ((List!35096 0))(
  ( (Nil!35093) (Cons!35092 (h!36490 (_ BitVec 64)) (t!49797 List!35096)) )
))
(declare-fun noDuplicate!2657 (List!35096) Bool)

(assert (=> b!1505572 (= e!841510 (not (noDuplicate!2657 Nil!35093)))))

(assert (= (and start!128332 res!1026071) b!1505569))

(assert (= (and b!1505569 res!1026067) b!1505570))

(assert (= (and b!1505570 res!1026069) b!1505571))

(assert (= (and b!1505571 res!1026072) b!1505567))

(assert (= (and b!1505567 res!1026068) b!1505568))

(assert (= (and b!1505568 res!1026070) b!1505572))

(declare-fun m!1388715 () Bool)

(assert (=> b!1505570 m!1388715))

(assert (=> b!1505570 m!1388715))

(declare-fun m!1388717 () Bool)

(assert (=> b!1505570 m!1388717))

(declare-fun m!1388719 () Bool)

(assert (=> start!128332 m!1388719))

(declare-fun m!1388721 () Bool)

(assert (=> start!128332 m!1388721))

(declare-fun m!1388723 () Bool)

(assert (=> b!1505571 m!1388723))

(assert (=> b!1505571 m!1388723))

(declare-fun m!1388725 () Bool)

(assert (=> b!1505571 m!1388725))

(declare-fun m!1388727 () Bool)

(assert (=> b!1505567 m!1388727))

(declare-fun m!1388729 () Bool)

(assert (=> b!1505572 m!1388729))

(push 1)

(assert (not b!1505571))

(assert (not b!1505572))

(assert (not b!1505570))

(assert (not start!128332))

(assert (not b!1505567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158023 () Bool)

(assert (=> d!158023 (= (validKeyInArray!0 (select (arr!48433 a!2804) j!70)) (and (not (= (select (arr!48433 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48433 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505571 d!158023))

(declare-fun d!158029 () Bool)

(assert (=> d!158029 (= (validKeyInArray!0 (select (arr!48433 a!2804) i!961)) (and (not (= (select (arr!48433 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48433 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505570 d!158029))

(declare-fun d!158031 () Bool)

(declare-fun res!1026119 () Bool)

(declare-fun e!841540 () Bool)

(assert (=> d!158031 (=> res!1026119 e!841540)))

(assert (=> d!158031 (= res!1026119 (bvsge #b00000000000000000000000000000000 (size!48984 a!2804)))))

(assert (=> d!158031 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841540)))

(declare-fun bm!68187 () Bool)

(declare-fun call!68190 () Bool)

(assert (=> bm!68187 (= call!68190 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505629 () Bool)

(declare-fun e!841539 () Bool)

(assert (=> b!1505629 (= e!841540 e!841539)))

(declare-fun c!139292 () Bool)

(assert (=> b!1505629 (= c!139292 (validKeyInArray!0 (select (arr!48433 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505630 () Bool)

(declare-fun e!841541 () Bool)

(assert (=> b!1505630 (= e!841539 e!841541)))

(declare-fun lt!654029 () (_ BitVec 64))

(assert (=> b!1505630 (= lt!654029 (select (arr!48433 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50250 0))(
  ( (Unit!50251) )
))
(declare-fun lt!654030 () Unit!50250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100377 (_ BitVec 64) (_ BitVec 32)) Unit!50250)

(assert (=> b!1505630 (= lt!654030 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654029 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505630 (arrayContainsKey!0 a!2804 lt!654029 #b00000000000000000000000000000000)))

(declare-fun lt!654031 () Unit!50250)

(assert (=> b!1505630 (= lt!654031 lt!654030)))

(declare-fun res!1026120 () Bool)

(declare-datatypes ((SeekEntryResult!12644 0))(
  ( (MissingZero!12644 (index!52970 (_ BitVec 32))) (Found!12644 (index!52971 (_ BitVec 32))) (Intermediate!12644 (undefined!13456 Bool) (index!52972 (_ BitVec 32)) (x!134692 (_ BitVec 32))) (Undefined!12644) (MissingVacant!12644 (index!52973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100377 (_ BitVec 32)) SeekEntryResult!12644)

(assert (=> b!1505630 (= res!1026120 (= (seekEntryOrOpen!0 (select (arr!48433 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12644 #b00000000000000000000000000000000)))))

(assert (=> b!1505630 (=> (not res!1026120) (not e!841541))))

(declare-fun b!1505631 () Bool)

(assert (=> b!1505631 (= e!841539 call!68190)))

(declare-fun b!1505632 () Bool)

(assert (=> b!1505632 (= e!841541 call!68190)))

(assert (= (and d!158031 (not res!1026119)) b!1505629))

(assert (= (and b!1505629 c!139292) b!1505630))

(assert (= (and b!1505629 (not c!139292)) b!1505631))

(assert (= (and b!1505630 res!1026120) b!1505632))

(assert (= (or b!1505632 b!1505631) bm!68187))

(declare-fun m!1388775 () Bool)

(assert (=> bm!68187 m!1388775))

(declare-fun m!1388777 () Bool)

(assert (=> b!1505629 m!1388777))

(assert (=> b!1505629 m!1388777))

(declare-fun m!1388779 () Bool)

(assert (=> b!1505629 m!1388779))

(assert (=> b!1505630 m!1388777))

(declare-fun m!1388781 () Bool)

(assert (=> b!1505630 m!1388781))

(declare-fun m!1388783 () Bool)

(assert (=> b!1505630 m!1388783))

(assert (=> b!1505630 m!1388777))

(declare-fun m!1388785 () Bool)

(assert (=> b!1505630 m!1388785))

(assert (=> b!1505567 d!158031))

(declare-fun d!158035 () Bool)

(declare-fun res!1026125 () Bool)

(declare-fun e!841546 () Bool)

(assert (=> d!158035 (=> res!1026125 e!841546)))

(assert (=> d!158035 (= res!1026125 (is-Nil!35093 Nil!35093))))

(assert (=> d!158035 (= (noDuplicate!2657 Nil!35093) e!841546)))

(declare-fun b!1505637 () Bool)

(declare-fun e!841547 () Bool)

(assert (=> b!1505637 (= e!841546 e!841547)))

(declare-fun res!1026126 () Bool)

(assert (=> b!1505637 (=> (not res!1026126) (not e!841547))))

(declare-fun contains!9967 (List!35096 (_ BitVec 64)) Bool)

(assert (=> b!1505637 (= res!1026126 (not (contains!9967 (t!49797 Nil!35093) (h!36490 Nil!35093))))))

(declare-fun b!1505638 () Bool)

(assert (=> b!1505638 (= e!841547 (noDuplicate!2657 (t!49797 Nil!35093)))))

(assert (= (and d!158035 (not res!1026125)) b!1505637))

(assert (= (and b!1505637 res!1026126) b!1505638))

(declare-fun m!1388787 () Bool)

(assert (=> b!1505637 m!1388787))

(declare-fun m!1388789 () Bool)

(assert (=> b!1505638 m!1388789))

(assert (=> b!1505572 d!158035))

(declare-fun d!158041 () Bool)

(assert (=> d!158041 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128332 d!158041))

(declare-fun d!158051 () Bool)

(assert (=> d!158051 (= (array_inv!37378 a!2804) (bvsge (size!48984 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128332 d!158051))

(push 1)

