; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128228 () Bool)

(assert start!128228)

(declare-fun b!1504977 () Bool)

(declare-fun res!1025646 () Bool)

(declare-fun e!841215 () Bool)

(assert (=> b!1504977 (=> (not res!1025646) (not e!841215))))

(declare-datatypes ((array!100339 0))(
  ( (array!100340 (arr!48417 (Array (_ BitVec 32) (_ BitVec 64))) (size!48968 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100339)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504977 (= res!1025646 (validKeyInArray!0 (select (arr!48417 a!2850) j!87)))))

(declare-fun b!1504978 () Bool)

(declare-fun res!1025640 () Bool)

(declare-fun e!841214 () Bool)

(assert (=> b!1504978 (=> (not res!1025640) (not e!841214))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1504978 (= res!1025640 (not (= (select (arr!48417 a!2850) index!625) (select (arr!48417 a!2850) j!87))))))

(declare-fun b!1504979 () Bool)

(declare-fun res!1025645 () Bool)

(assert (=> b!1504979 (=> (not res!1025645) (not e!841215))))

(declare-datatypes ((List!35089 0))(
  ( (Nil!35086) (Cons!35085 (h!36483 (_ BitVec 64)) (t!49790 List!35089)) )
))
(declare-fun arrayNoDuplicates!0 (array!100339 (_ BitVec 32) List!35089) Bool)

(assert (=> b!1504979 (= res!1025645 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35086))))

(declare-fun b!1504980 () Bool)

(declare-fun e!841216 () Bool)

(assert (=> b!1504980 (= e!841214 e!841216)))

(declare-fun res!1025649 () Bool)

(assert (=> b!1504980 (=> (not res!1025649) (not e!841216))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653831 () (_ BitVec 32))

(assert (=> b!1504980 (= res!1025649 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653831 #b00000000000000000000000000000000) (bvslt lt!653831 (size!48968 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504980 (= lt!653831 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1025643 () Bool)

(assert (=> start!128228 (=> (not res!1025643) (not e!841215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128228 (= res!1025643 (validMask!0 mask!2661))))

(assert (=> start!128228 e!841215))

(assert (=> start!128228 true))

(declare-fun array_inv!37362 (array!100339) Bool)

(assert (=> start!128228 (array_inv!37362 a!2850)))

(declare-fun b!1504981 () Bool)

(declare-fun res!1025639 () Bool)

(assert (=> b!1504981 (=> (not res!1025639) (not e!841215))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504981 (= res!1025639 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48968 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48968 a!2850)) (= (select (arr!48417 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48417 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48968 a!2850))))))

(declare-fun b!1504982 () Bool)

(assert (=> b!1504982 (= e!841216 (not true))))

(declare-datatypes ((SeekEntryResult!12634 0))(
  ( (MissingZero!12634 (index!52927 (_ BitVec 32))) (Found!12634 (index!52928 (_ BitVec 32))) (Intermediate!12634 (undefined!13446 Bool) (index!52929 (_ BitVec 32)) (x!134625 (_ BitVec 32))) (Undefined!12634) (MissingVacant!12634 (index!52930 (_ BitVec 32))) )
))
(declare-fun lt!653833 () SeekEntryResult!12634)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100339 (_ BitVec 32)) SeekEntryResult!12634)

(assert (=> b!1504982 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653831 vacantAfter!10 (select (store (arr!48417 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100340 (store (arr!48417 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48968 a!2850)) mask!2661) lt!653833)))

(declare-datatypes ((Unit!50230 0))(
  ( (Unit!50231) )
))
(declare-fun lt!653832 () Unit!50230)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50230)

(assert (=> b!1504982 (= lt!653832 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653831 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1504983 () Bool)

(declare-fun res!1025644 () Bool)

(assert (=> b!1504983 (=> (not res!1025644) (not e!841215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100339 (_ BitVec 32)) Bool)

(assert (=> b!1504983 (= res!1025644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504984 () Bool)

(declare-fun res!1025647 () Bool)

(assert (=> b!1504984 (=> (not res!1025647) (not e!841216))))

(assert (=> b!1504984 (= res!1025647 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653831 vacantBefore!10 (select (arr!48417 a!2850) j!87) a!2850 mask!2661) lt!653833))))

(declare-fun b!1504985 () Bool)

(assert (=> b!1504985 (= e!841215 e!841214)))

(declare-fun res!1025642 () Bool)

(assert (=> b!1504985 (=> (not res!1025642) (not e!841214))))

(assert (=> b!1504985 (= res!1025642 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48417 a!2850) j!87) a!2850 mask!2661) lt!653833))))

(assert (=> b!1504985 (= lt!653833 (Found!12634 j!87))))

(declare-fun b!1504986 () Bool)

(declare-fun res!1025641 () Bool)

(assert (=> b!1504986 (=> (not res!1025641) (not e!841215))))

(assert (=> b!1504986 (= res!1025641 (validKeyInArray!0 (select (arr!48417 a!2850) i!996)))))

(declare-fun b!1504987 () Bool)

(declare-fun res!1025648 () Bool)

(assert (=> b!1504987 (=> (not res!1025648) (not e!841215))))

(assert (=> b!1504987 (= res!1025648 (and (= (size!48968 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48968 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48968 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128228 res!1025643) b!1504987))

(assert (= (and b!1504987 res!1025648) b!1504986))

(assert (= (and b!1504986 res!1025641) b!1504977))

(assert (= (and b!1504977 res!1025646) b!1504983))

(assert (= (and b!1504983 res!1025644) b!1504979))

(assert (= (and b!1504979 res!1025645) b!1504981))

(assert (= (and b!1504981 res!1025639) b!1504985))

(assert (= (and b!1504985 res!1025642) b!1504978))

(assert (= (and b!1504978 res!1025640) b!1504980))

(assert (= (and b!1504980 res!1025649) b!1504984))

(assert (= (and b!1504984 res!1025647) b!1504982))

(declare-fun m!1388139 () Bool)

(assert (=> b!1504980 m!1388139))

(declare-fun m!1388141 () Bool)

(assert (=> b!1504985 m!1388141))

(assert (=> b!1504985 m!1388141))

(declare-fun m!1388143 () Bool)

(assert (=> b!1504985 m!1388143))

(assert (=> b!1504984 m!1388141))

(assert (=> b!1504984 m!1388141))

(declare-fun m!1388145 () Bool)

(assert (=> b!1504984 m!1388145))

(declare-fun m!1388147 () Bool)

(assert (=> b!1504982 m!1388147))

(declare-fun m!1388149 () Bool)

(assert (=> b!1504982 m!1388149))

(assert (=> b!1504982 m!1388149))

(declare-fun m!1388151 () Bool)

(assert (=> b!1504982 m!1388151))

(declare-fun m!1388153 () Bool)

(assert (=> b!1504982 m!1388153))

(declare-fun m!1388155 () Bool)

(assert (=> b!1504978 m!1388155))

(assert (=> b!1504978 m!1388141))

(declare-fun m!1388157 () Bool)

(assert (=> b!1504986 m!1388157))

(assert (=> b!1504986 m!1388157))

(declare-fun m!1388159 () Bool)

(assert (=> b!1504986 m!1388159))

(declare-fun m!1388161 () Bool)

(assert (=> start!128228 m!1388161))

(declare-fun m!1388163 () Bool)

(assert (=> start!128228 m!1388163))

(assert (=> b!1504977 m!1388141))

(assert (=> b!1504977 m!1388141))

(declare-fun m!1388165 () Bool)

(assert (=> b!1504977 m!1388165))

(declare-fun m!1388167 () Bool)

(assert (=> b!1504983 m!1388167))

(declare-fun m!1388169 () Bool)

(assert (=> b!1504979 m!1388169))

(declare-fun m!1388171 () Bool)

(assert (=> b!1504981 m!1388171))

(assert (=> b!1504981 m!1388147))

(declare-fun m!1388173 () Bool)

(assert (=> b!1504981 m!1388173))

(push 1)

(assert (not b!1504979))

(assert (not b!1504986))

(assert (not b!1504983))

(assert (not b!1504985))

