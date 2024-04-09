; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119656 () Bool)

(assert start!119656)

(declare-fun b!1393245 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95256 0))(
  ( (array!95257 (arr!45982 (Array (_ BitVec 32) (_ BitVec 64))) (size!46533 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95256)

(declare-fun e!788946 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10321 0))(
  ( (MissingZero!10321 (index!43654 (_ BitVec 32))) (Found!10321 (index!43655 (_ BitVec 32))) (Intermediate!10321 (undefined!11133 Bool) (index!43656 (_ BitVec 32)) (x!125344 (_ BitVec 32))) (Undefined!10321) (MissingVacant!10321 (index!43657 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95256 (_ BitVec 32)) SeekEntryResult!10321)

(assert (=> b!1393245 (= e!788946 (= (seekEntryOrOpen!0 (select (arr!45982 a!2901) j!112) a!2901 mask!2840) (Found!10321 j!112)))))

(declare-fun b!1393246 () Bool)

(declare-fun e!788945 () Bool)

(declare-fun e!788948 () Bool)

(assert (=> b!1393246 (= e!788945 (not e!788948))))

(declare-fun res!932769 () Bool)

(assert (=> b!1393246 (=> res!932769 e!788948)))

(declare-fun lt!611890 () SeekEntryResult!10321)

(assert (=> b!1393246 (= res!932769 (or (not (is-Intermediate!10321 lt!611890)) (undefined!11133 lt!611890)))))

(assert (=> b!1393246 e!788946))

(declare-fun res!932767 () Bool)

(assert (=> b!1393246 (=> (not res!932767) (not e!788946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95256 (_ BitVec 32)) Bool)

(assert (=> b!1393246 (= res!932767 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46596 0))(
  ( (Unit!46597) )
))
(declare-fun lt!611889 () Unit!46596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46596)

(assert (=> b!1393246 (= lt!611889 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95256 (_ BitVec 32)) SeekEntryResult!10321)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393246 (= lt!611890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45982 a!2901) j!112) mask!2840) (select (arr!45982 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393247 () Bool)

(assert (=> b!1393247 (= e!788948 true)))

(declare-fun lt!611888 () SeekEntryResult!10321)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393247 (= lt!611888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45982 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45982 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95257 (store (arr!45982 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46533 a!2901)) mask!2840))))

(declare-fun b!1393248 () Bool)

(declare-fun res!932766 () Bool)

(assert (=> b!1393248 (=> (not res!932766) (not e!788945))))

(assert (=> b!1393248 (= res!932766 (and (= (size!46533 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46533 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46533 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393249 () Bool)

(declare-fun res!932765 () Bool)

(assert (=> b!1393249 (=> (not res!932765) (not e!788945))))

(assert (=> b!1393249 (= res!932765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393250 () Bool)

(declare-fun res!932768 () Bool)

(assert (=> b!1393250 (=> (not res!932768) (not e!788945))))

(declare-datatypes ((List!32681 0))(
  ( (Nil!32678) (Cons!32677 (h!33910 (_ BitVec 64)) (t!47382 List!32681)) )
))
(declare-fun arrayNoDuplicates!0 (array!95256 (_ BitVec 32) List!32681) Bool)

(assert (=> b!1393250 (= res!932768 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32678))))

(declare-fun b!1393251 () Bool)

(declare-fun res!932763 () Bool)

(assert (=> b!1393251 (=> (not res!932763) (not e!788945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393251 (= res!932763 (validKeyInArray!0 (select (arr!45982 a!2901) i!1037)))))

(declare-fun res!932762 () Bool)

(assert (=> start!119656 (=> (not res!932762) (not e!788945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119656 (= res!932762 (validMask!0 mask!2840))))

(assert (=> start!119656 e!788945))

(assert (=> start!119656 true))

(declare-fun array_inv!34927 (array!95256) Bool)

(assert (=> start!119656 (array_inv!34927 a!2901)))

(declare-fun b!1393252 () Bool)

(declare-fun res!932764 () Bool)

(assert (=> b!1393252 (=> (not res!932764) (not e!788945))))

(assert (=> b!1393252 (= res!932764 (validKeyInArray!0 (select (arr!45982 a!2901) j!112)))))

(assert (= (and start!119656 res!932762) b!1393248))

(assert (= (and b!1393248 res!932766) b!1393251))

(assert (= (and b!1393251 res!932763) b!1393252))

(assert (= (and b!1393252 res!932764) b!1393249))

(assert (= (and b!1393249 res!932765) b!1393250))

(assert (= (and b!1393250 res!932768) b!1393246))

(assert (= (and b!1393246 res!932767) b!1393245))

(assert (= (and b!1393246 (not res!932769)) b!1393247))

(declare-fun m!1279169 () Bool)

(assert (=> b!1393246 m!1279169))

(declare-fun m!1279171 () Bool)

(assert (=> b!1393246 m!1279171))

(assert (=> b!1393246 m!1279169))

(declare-fun m!1279173 () Bool)

(assert (=> b!1393246 m!1279173))

(assert (=> b!1393246 m!1279171))

(assert (=> b!1393246 m!1279169))

(declare-fun m!1279175 () Bool)

(assert (=> b!1393246 m!1279175))

(declare-fun m!1279177 () Bool)

(assert (=> b!1393246 m!1279177))

(declare-fun m!1279179 () Bool)

(assert (=> b!1393251 m!1279179))

(assert (=> b!1393251 m!1279179))

(declare-fun m!1279181 () Bool)

(assert (=> b!1393251 m!1279181))

(declare-fun m!1279183 () Bool)

(assert (=> b!1393247 m!1279183))

(declare-fun m!1279185 () Bool)

(assert (=> b!1393247 m!1279185))

(assert (=> b!1393247 m!1279185))

(declare-fun m!1279187 () Bool)

(assert (=> b!1393247 m!1279187))

(assert (=> b!1393247 m!1279187))

(assert (=> b!1393247 m!1279185))

(declare-fun m!1279189 () Bool)

(assert (=> b!1393247 m!1279189))

(declare-fun m!1279191 () Bool)

(assert (=> b!1393250 m!1279191))

(assert (=> b!1393245 m!1279169))

(assert (=> b!1393245 m!1279169))

(declare-fun m!1279193 () Bool)

(assert (=> b!1393245 m!1279193))

(assert (=> b!1393252 m!1279169))

(assert (=> b!1393252 m!1279169))

(declare-fun m!1279195 () Bool)

(assert (=> b!1393252 m!1279195))

(declare-fun m!1279197 () Bool)

(assert (=> b!1393249 m!1279197))

(declare-fun m!1279199 () Bool)

(assert (=> start!119656 m!1279199))

(declare-fun m!1279201 () Bool)

(assert (=> start!119656 m!1279201))

(push 1)

(assert (not b!1393250))

(assert (not start!119656))

(assert (not b!1393251))

(assert (not b!1393249))

(assert (not b!1393247))

(assert (not b!1393252))

(assert (not b!1393245))

(assert (not b!1393246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

