; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128372 () Bool)

(assert start!128372)

(declare-fun b!1505727 () Bool)

(declare-fun res!1026209 () Bool)

(declare-fun e!841595 () Bool)

(assert (=> b!1505727 (=> (not res!1026209) (not e!841595))))

(declare-datatypes ((array!100390 0))(
  ( (array!100391 (arr!48438 (Array (_ BitVec 32) (_ BitVec 64))) (size!48989 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100390)

(assert (=> b!1505727 (= res!1026209 (and (bvsle #b00000000000000000000000000000000 (size!48989 a!2804)) (bvslt (size!48989 a!2804) #b01111111111111111111111111111111)))))

(declare-fun res!1026215 () Bool)

(assert (=> start!128372 (=> (not res!1026215) (not e!841595))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128372 (= res!1026215 (validMask!0 mask!2512))))

(assert (=> start!128372 e!841595))

(assert (=> start!128372 true))

(declare-fun array_inv!37383 (array!100390) Bool)

(assert (=> start!128372 (array_inv!37383 a!2804)))

(declare-fun b!1505728 () Bool)

(declare-fun e!841593 () Bool)

(assert (=> b!1505728 (= e!841595 e!841593)))

(declare-fun res!1026214 () Bool)

(assert (=> b!1505728 (=> res!1026214 e!841593)))

(declare-datatypes ((List!35101 0))(
  ( (Nil!35098) (Cons!35097 (h!36495 (_ BitVec 64)) (t!49802 List!35101)) )
))
(declare-fun contains!9971 (List!35101 (_ BitVec 64)) Bool)

(assert (=> b!1505728 (= res!1026214 (contains!9971 Nil!35098 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505729 () Bool)

(declare-fun res!1026212 () Bool)

(assert (=> b!1505729 (=> (not res!1026212) (not e!841595))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505729 (= res!1026212 (validKeyInArray!0 (select (arr!48438 a!2804) i!961)))))

(declare-fun b!1505730 () Bool)

(declare-fun res!1026210 () Bool)

(assert (=> b!1505730 (=> (not res!1026210) (not e!841595))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505730 (= res!1026210 (and (= (size!48989 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48989 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48989 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505731 () Bool)

(assert (=> b!1505731 (= e!841593 (contains!9971 Nil!35098 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505732 () Bool)

(declare-fun res!1026216 () Bool)

(assert (=> b!1505732 (=> (not res!1026216) (not e!841595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100390 (_ BitVec 32)) Bool)

(assert (=> b!1505732 (= res!1026216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505733 () Bool)

(declare-fun res!1026211 () Bool)

(assert (=> b!1505733 (=> (not res!1026211) (not e!841595))))

(declare-fun noDuplicate!2662 (List!35101) Bool)

(assert (=> b!1505733 (= res!1026211 (noDuplicate!2662 Nil!35098))))

(declare-fun b!1505734 () Bool)

(declare-fun res!1026213 () Bool)

(assert (=> b!1505734 (=> (not res!1026213) (not e!841595))))

(assert (=> b!1505734 (= res!1026213 (validKeyInArray!0 (select (arr!48438 a!2804) j!70)))))

(assert (= (and start!128372 res!1026215) b!1505730))

(assert (= (and b!1505730 res!1026210) b!1505729))

(assert (= (and b!1505729 res!1026212) b!1505734))

(assert (= (and b!1505734 res!1026213) b!1505732))

(assert (= (and b!1505732 res!1026216) b!1505727))

(assert (= (and b!1505727 res!1026209) b!1505733))

(assert (= (and b!1505733 res!1026211) b!1505728))

(assert (= (and b!1505728 (not res!1026214)) b!1505731))

(declare-fun m!1388851 () Bool)

(assert (=> b!1505731 m!1388851))

(declare-fun m!1388853 () Bool)

(assert (=> b!1505732 m!1388853))

(declare-fun m!1388855 () Bool)

(assert (=> b!1505733 m!1388855))

(declare-fun m!1388857 () Bool)

(assert (=> b!1505729 m!1388857))

(assert (=> b!1505729 m!1388857))

(declare-fun m!1388859 () Bool)

(assert (=> b!1505729 m!1388859))

(declare-fun m!1388861 () Bool)

(assert (=> start!128372 m!1388861))

(declare-fun m!1388863 () Bool)

(assert (=> start!128372 m!1388863))

(declare-fun m!1388865 () Bool)

(assert (=> b!1505734 m!1388865))

(assert (=> b!1505734 m!1388865))

(declare-fun m!1388867 () Bool)

(assert (=> b!1505734 m!1388867))

(declare-fun m!1388869 () Bool)

(assert (=> b!1505728 m!1388869))

(push 1)

(assert (not b!1505728))

(assert (not b!1505729))

(assert (not b!1505731))

(assert (not b!1505734))

(assert (not b!1505733))

(assert (not b!1505732))

(assert (not start!128372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158061 () Bool)

(assert (=> d!158061 (= (validKeyInArray!0 (select (arr!48438 a!2804) j!70)) (and (not (= (select (arr!48438 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48438 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505734 d!158061))

(declare-fun d!158063 () Bool)

(assert (=> d!158063 (= (validKeyInArray!0 (select (arr!48438 a!2804) i!961)) (and (not (= (select (arr!48438 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48438 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505729 d!158063))

(declare-fun d!158065 () Bool)

(declare-fun res!1026231 () Bool)

(declare-fun e!841612 () Bool)

(assert (=> d!158065 (=> res!1026231 e!841612)))

(assert (=> d!158065 (= res!1026231 (is-Nil!35098 Nil!35098))))

(assert (=> d!158065 (= (noDuplicate!2662 Nil!35098) e!841612)))

(declare-fun b!1505753 () Bool)

(declare-fun e!841613 () Bool)

(assert (=> b!1505753 (= e!841612 e!841613)))

(declare-fun res!1026232 () Bool)

(assert (=> b!1505753 (=> (not res!1026232) (not e!841613))))

(assert (=> b!1505753 (= res!1026232 (not (contains!9971 (t!49802 Nil!35098) (h!36495 Nil!35098))))))

(declare-fun b!1505754 () Bool)

(assert (=> b!1505754 (= e!841613 (noDuplicate!2662 (t!49802 Nil!35098)))))

(assert (= (and d!158065 (not res!1026231)) b!1505753))

(assert (= (and b!1505753 res!1026232) b!1505754))

(declare-fun m!1388877 () Bool)

(assert (=> b!1505753 m!1388877))

(declare-fun m!1388879 () Bool)

(assert (=> b!1505754 m!1388879))

(assert (=> b!1505733 d!158065))

(declare-fun d!158069 () Bool)

(declare-fun lt!654055 () Bool)

(declare-fun content!789 (List!35101) (Set (_ BitVec 64)))

(assert (=> d!158069 (= lt!654055 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!789 Nil!35098)))))

(declare-fun e!841621 () Bool)

(assert (=> d!158069 (= lt!654055 e!841621)))

(declare-fun res!1026240 () Bool)

(assert (=> d!158069 (=> (not res!1026240) (not e!841621))))

(assert (=> d!158069 (= res!1026240 (is-Cons!35097 Nil!35098))))

(assert (=> d!158069 (= (contains!9971 Nil!35098 #b0000000000000000000000000000000000000000000000000000000000000000) lt!654055)))

(declare-fun b!1505763 () Bool)

(declare-fun e!841622 () Bool)

(assert (=> b!1505763 (= e!841621 e!841622)))

(declare-fun res!1026239 () Bool)

(assert (=> b!1505763 (=> res!1026239 e!841622)))

(assert (=> b!1505763 (= res!1026239 (= (h!36495 Nil!35098) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505764 () Bool)

(assert (=> b!1505764 (= e!841622 (contains!9971 (t!49802 Nil!35098) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158069 res!1026240) b!1505763))

(assert (= (and b!1505763 (not res!1026239)) b!1505764))

(declare-fun m!1388893 () Bool)

(assert (=> d!158069 m!1388893))

(declare-fun m!1388895 () Bool)

(assert (=> d!158069 m!1388895))

(declare-fun m!1388897 () Bool)

(assert (=> b!1505764 m!1388897))

(assert (=> b!1505728 d!158069))

(declare-fun b!1505785 () Bool)

(declare-fun e!841643 () Bool)

(declare-fun e!841641 () Bool)

(assert (=> b!1505785 (= e!841643 e!841641)))

(declare-fun lt!654067 () (_ BitVec 64))

(assert (=> b!1505785 (= lt!654067 (select (arr!48438 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50258 0))(
  ( (Unit!50259) )
))
(declare-fun lt!654065 () Unit!50258)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100390 (_ BitVec 64) (_ BitVec 32)) Unit!50258)

(assert (=> b!1505785 (= lt!654065 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654067 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505785 (arrayContainsKey!0 a!2804 lt!654067 #b00000000000000000000000000000000)))

(declare-fun lt!654066 () Unit!50258)

(assert (=> b!1505785 (= lt!654066 lt!654065)))

(declare-fun res!1026258 () Bool)

(declare-datatypes ((SeekEntryResult!12648 0))(
  ( (MissingZero!12648 (index!52986 (_ BitVec 32))) (Found!12648 (index!52987 (_ BitVec 32))) (Intermediate!12648 (undefined!13460 Bool) (index!52988 (_ BitVec 32)) (x!134704 (_ BitVec 32))) (Undefined!12648) (MissingVacant!12648 (index!52989 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100390 (_ BitVec 32)) SeekEntryResult!12648)

(assert (=> b!1505785 (= res!1026258 (= (seekEntryOrOpen!0 (select (arr!48438 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12648 #b00000000000000000000000000000000)))))

(assert (=> b!1505785 (=> (not res!1026258) (not e!841641))))

(declare-fun b!1505786 () Bool)

(declare-fun e!841642 () Bool)

(assert (=> b!1505786 (= e!841642 e!841643)))

(declare-fun c!139301 () Bool)

(assert (=> b!1505786 (= c!139301 (validKeyInArray!0 (select (arr!48438 a!2804) #b00000000000000000000000000000000)))))

