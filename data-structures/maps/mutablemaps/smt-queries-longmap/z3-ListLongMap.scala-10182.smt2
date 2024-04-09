; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120060 () Bool)

(assert start!120060)

(declare-fun res!936172 () Bool)

(declare-fun e!790998 () Bool)

(assert (=> start!120060 (=> (not res!936172) (not e!790998))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120060 (= res!936172 (validMask!0 mask!2840))))

(assert (=> start!120060 e!790998))

(assert (=> start!120060 true))

(declare-datatypes ((array!95507 0))(
  ( (array!95508 (arr!46103 (Array (_ BitVec 32) (_ BitVec 64))) (size!46654 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95507)

(declare-fun array_inv!35048 (array!95507) Bool)

(assert (=> start!120060 (array_inv!35048 a!2901)))

(declare-fun b!1397144 () Bool)

(declare-fun res!936171 () Bool)

(assert (=> b!1397144 (=> (not res!936171) (not e!790998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95507 (_ BitVec 32)) Bool)

(assert (=> b!1397144 (= res!936171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!790996 () Bool)

(declare-fun b!1397145 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10442 0))(
  ( (MissingZero!10442 (index!44138 (_ BitVec 32))) (Found!10442 (index!44139 (_ BitVec 32))) (Intermediate!10442 (undefined!11254 Bool) (index!44140 (_ BitVec 32)) (x!125803 (_ BitVec 32))) (Undefined!10442) (MissingVacant!10442 (index!44141 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95507 (_ BitVec 32)) SeekEntryResult!10442)

(assert (=> b!1397145 (= e!790996 (= (seekEntryOrOpen!0 (select (arr!46103 a!2901) j!112) a!2901 mask!2840) (Found!10442 j!112)))))

(declare-fun b!1397146 () Bool)

(declare-fun e!791000 () Bool)

(declare-fun e!790997 () Bool)

(assert (=> b!1397146 (= e!791000 e!790997)))

(declare-fun res!936173 () Bool)

(assert (=> b!1397146 (=> res!936173 e!790997)))

(declare-fun lt!613982 () SeekEntryResult!10442)

(declare-fun lt!613983 () SeekEntryResult!10442)

(declare-fun lt!613979 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1397146 (= res!936173 (or (= lt!613982 lt!613983) (not ((_ is Intermediate!10442) lt!613983)) (bvslt (x!125803 lt!613982) #b00000000000000000000000000000000) (bvsgt (x!125803 lt!613982) #b01111111111111111111111111111110) (bvslt lt!613979 #b00000000000000000000000000000000) (bvsge lt!613979 (size!46654 a!2901)) (bvslt (index!44140 lt!613982) #b00000000000000000000000000000000) (bvsge (index!44140 lt!613982) (size!46654 a!2901)) (not (= lt!613982 (Intermediate!10442 false (index!44140 lt!613982) (x!125803 lt!613982)))) (not (= lt!613983 (Intermediate!10442 (undefined!11254 lt!613983) (index!44140 lt!613983) (x!125803 lt!613983))))))))

(declare-fun lt!613980 () array!95507)

(declare-fun lt!613984 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95507 (_ BitVec 32)) SeekEntryResult!10442)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397146 (= lt!613983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613984 mask!2840) lt!613984 lt!613980 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397146 (= lt!613984 (select (store (arr!46103 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397146 (= lt!613980 (array!95508 (store (arr!46103 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46654 a!2901)))))

(declare-fun b!1397147 () Bool)

(declare-fun res!936167 () Bool)

(assert (=> b!1397147 (=> (not res!936167) (not e!790998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397147 (= res!936167 (validKeyInArray!0 (select (arr!46103 a!2901) i!1037)))))

(declare-fun b!1397148 () Bool)

(declare-fun res!936170 () Bool)

(assert (=> b!1397148 (=> (not res!936170) (not e!790998))))

(declare-datatypes ((List!32802 0))(
  ( (Nil!32799) (Cons!32798 (h!34040 (_ BitVec 64)) (t!47503 List!32802)) )
))
(declare-fun arrayNoDuplicates!0 (array!95507 (_ BitVec 32) List!32802) Bool)

(assert (=> b!1397148 (= res!936170 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32799))))

(declare-fun b!1397149 () Bool)

(declare-fun res!936168 () Bool)

(assert (=> b!1397149 (=> (not res!936168) (not e!790998))))

(assert (=> b!1397149 (= res!936168 (and (= (size!46654 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46654 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46654 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397150 () Bool)

(assert (=> b!1397150 (= e!790997 true)))

(declare-fun lt!613981 () SeekEntryResult!10442)

(assert (=> b!1397150 (= lt!613981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613979 lt!613984 lt!613980 mask!2840))))

(declare-fun b!1397151 () Bool)

(declare-fun res!936166 () Bool)

(assert (=> b!1397151 (=> (not res!936166) (not e!790998))))

(assert (=> b!1397151 (= res!936166 (validKeyInArray!0 (select (arr!46103 a!2901) j!112)))))

(declare-fun b!1397152 () Bool)

(assert (=> b!1397152 (= e!790998 (not e!791000))))

(declare-fun res!936169 () Bool)

(assert (=> b!1397152 (=> res!936169 e!791000)))

(assert (=> b!1397152 (= res!936169 (or (not ((_ is Intermediate!10442) lt!613982)) (undefined!11254 lt!613982)))))

(assert (=> b!1397152 e!790996))

(declare-fun res!936174 () Bool)

(assert (=> b!1397152 (=> (not res!936174) (not e!790996))))

(assert (=> b!1397152 (= res!936174 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46838 0))(
  ( (Unit!46839) )
))
(declare-fun lt!613978 () Unit!46838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95507 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46838)

(assert (=> b!1397152 (= lt!613978 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397152 (= lt!613982 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613979 (select (arr!46103 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397152 (= lt!613979 (toIndex!0 (select (arr!46103 a!2901) j!112) mask!2840))))

(assert (= (and start!120060 res!936172) b!1397149))

(assert (= (and b!1397149 res!936168) b!1397147))

(assert (= (and b!1397147 res!936167) b!1397151))

(assert (= (and b!1397151 res!936166) b!1397144))

(assert (= (and b!1397144 res!936171) b!1397148))

(assert (= (and b!1397148 res!936170) b!1397152))

(assert (= (and b!1397152 res!936174) b!1397145))

(assert (= (and b!1397152 (not res!936169)) b!1397146))

(assert (= (and b!1397146 (not res!936173)) b!1397150))

(declare-fun m!1283903 () Bool)

(assert (=> b!1397148 m!1283903))

(declare-fun m!1283905 () Bool)

(assert (=> b!1397146 m!1283905))

(assert (=> b!1397146 m!1283905))

(declare-fun m!1283907 () Bool)

(assert (=> b!1397146 m!1283907))

(declare-fun m!1283909 () Bool)

(assert (=> b!1397146 m!1283909))

(declare-fun m!1283911 () Bool)

(assert (=> b!1397146 m!1283911))

(declare-fun m!1283913 () Bool)

(assert (=> b!1397151 m!1283913))

(assert (=> b!1397151 m!1283913))

(declare-fun m!1283915 () Bool)

(assert (=> b!1397151 m!1283915))

(declare-fun m!1283917 () Bool)

(assert (=> b!1397147 m!1283917))

(assert (=> b!1397147 m!1283917))

(declare-fun m!1283919 () Bool)

(assert (=> b!1397147 m!1283919))

(declare-fun m!1283921 () Bool)

(assert (=> start!120060 m!1283921))

(declare-fun m!1283923 () Bool)

(assert (=> start!120060 m!1283923))

(assert (=> b!1397145 m!1283913))

(assert (=> b!1397145 m!1283913))

(declare-fun m!1283925 () Bool)

(assert (=> b!1397145 m!1283925))

(declare-fun m!1283927 () Bool)

(assert (=> b!1397144 m!1283927))

(assert (=> b!1397152 m!1283913))

(declare-fun m!1283929 () Bool)

(assert (=> b!1397152 m!1283929))

(assert (=> b!1397152 m!1283913))

(assert (=> b!1397152 m!1283913))

(declare-fun m!1283931 () Bool)

(assert (=> b!1397152 m!1283931))

(declare-fun m!1283933 () Bool)

(assert (=> b!1397152 m!1283933))

(declare-fun m!1283935 () Bool)

(assert (=> b!1397152 m!1283935))

(declare-fun m!1283937 () Bool)

(assert (=> b!1397150 m!1283937))

(check-sat (not b!1397146) (not b!1397145) (not b!1397150) (not b!1397151) (not b!1397144) (not start!120060) (not b!1397152) (not b!1397147) (not b!1397148))
(check-sat)
