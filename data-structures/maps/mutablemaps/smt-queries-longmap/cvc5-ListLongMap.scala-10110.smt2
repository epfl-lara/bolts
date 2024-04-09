; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119194 () Bool)

(assert start!119194)

(declare-fun b!1389907 () Bool)

(declare-fun res!930183 () Bool)

(declare-fun e!787210 () Bool)

(assert (=> b!1389907 (=> (not res!930183) (not e!787210))))

(declare-datatypes ((array!95049 0))(
  ( (array!95050 (arr!45886 (Array (_ BitVec 32) (_ BitVec 64))) (size!46437 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95049)

(declare-datatypes ((List!32585 0))(
  ( (Nil!32582) (Cons!32581 (h!33799 (_ BitVec 64)) (t!47286 List!32585)) )
))
(declare-fun arrayNoDuplicates!0 (array!95049 (_ BitVec 32) List!32585) Bool)

(assert (=> b!1389907 (= res!930183 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32582))))

(declare-fun b!1389908 () Bool)

(declare-fun res!930179 () Bool)

(assert (=> b!1389908 (=> (not res!930179) (not e!787210))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95049 (_ BitVec 32)) Bool)

(assert (=> b!1389908 (= res!930179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389909 () Bool)

(assert (=> b!1389909 (= e!787210 (not true))))

(declare-fun e!787209 () Bool)

(assert (=> b!1389909 e!787209))

(declare-fun res!930182 () Bool)

(assert (=> b!1389909 (=> (not res!930182) (not e!787209))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389909 (= res!930182 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46404 0))(
  ( (Unit!46405) )
))
(declare-fun lt!610635 () Unit!46404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46404)

(assert (=> b!1389909 (= lt!610635 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10225 0))(
  ( (MissingZero!10225 (index!43270 (_ BitVec 32))) (Found!10225 (index!43271 (_ BitVec 32))) (Intermediate!10225 (undefined!11037 Bool) (index!43272 (_ BitVec 32)) (x!124962 (_ BitVec 32))) (Undefined!10225) (MissingVacant!10225 (index!43273 (_ BitVec 32))) )
))
(declare-fun lt!610636 () SeekEntryResult!10225)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95049 (_ BitVec 32)) SeekEntryResult!10225)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389909 (= lt!610636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45886 a!2901) j!112) mask!2840) (select (arr!45886 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389910 () Bool)

(declare-fun res!930181 () Bool)

(assert (=> b!1389910 (=> (not res!930181) (not e!787210))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389910 (= res!930181 (and (= (size!46437 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46437 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46437 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!930180 () Bool)

(assert (=> start!119194 (=> (not res!930180) (not e!787210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119194 (= res!930180 (validMask!0 mask!2840))))

(assert (=> start!119194 e!787210))

(assert (=> start!119194 true))

(declare-fun array_inv!34831 (array!95049) Bool)

(assert (=> start!119194 (array_inv!34831 a!2901)))

(declare-fun b!1389911 () Bool)

(declare-fun res!930178 () Bool)

(assert (=> b!1389911 (=> (not res!930178) (not e!787210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389911 (= res!930178 (validKeyInArray!0 (select (arr!45886 a!2901) j!112)))))

(declare-fun b!1389912 () Bool)

(declare-fun res!930177 () Bool)

(assert (=> b!1389912 (=> (not res!930177) (not e!787210))))

(assert (=> b!1389912 (= res!930177 (validKeyInArray!0 (select (arr!45886 a!2901) i!1037)))))

(declare-fun b!1389913 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95049 (_ BitVec 32)) SeekEntryResult!10225)

(assert (=> b!1389913 (= e!787209 (= (seekEntryOrOpen!0 (select (arr!45886 a!2901) j!112) a!2901 mask!2840) (Found!10225 j!112)))))

(assert (= (and start!119194 res!930180) b!1389910))

(assert (= (and b!1389910 res!930181) b!1389912))

(assert (= (and b!1389912 res!930177) b!1389911))

(assert (= (and b!1389911 res!930178) b!1389908))

(assert (= (and b!1389908 res!930179) b!1389907))

(assert (= (and b!1389907 res!930183) b!1389909))

(assert (= (and b!1389909 res!930182) b!1389913))

(declare-fun m!1275707 () Bool)

(assert (=> b!1389912 m!1275707))

(assert (=> b!1389912 m!1275707))

(declare-fun m!1275709 () Bool)

(assert (=> b!1389912 m!1275709))

(declare-fun m!1275711 () Bool)

(assert (=> b!1389908 m!1275711))

(declare-fun m!1275713 () Bool)

(assert (=> b!1389911 m!1275713))

(assert (=> b!1389911 m!1275713))

(declare-fun m!1275715 () Bool)

(assert (=> b!1389911 m!1275715))

(assert (=> b!1389913 m!1275713))

(assert (=> b!1389913 m!1275713))

(declare-fun m!1275717 () Bool)

(assert (=> b!1389913 m!1275717))

(assert (=> b!1389909 m!1275713))

(declare-fun m!1275719 () Bool)

(assert (=> b!1389909 m!1275719))

(assert (=> b!1389909 m!1275713))

(declare-fun m!1275721 () Bool)

(assert (=> b!1389909 m!1275721))

(assert (=> b!1389909 m!1275719))

(assert (=> b!1389909 m!1275713))

(declare-fun m!1275723 () Bool)

(assert (=> b!1389909 m!1275723))

(declare-fun m!1275725 () Bool)

(assert (=> b!1389909 m!1275725))

(declare-fun m!1275727 () Bool)

(assert (=> b!1389907 m!1275727))

(declare-fun m!1275729 () Bool)

(assert (=> start!119194 m!1275729))

(declare-fun m!1275731 () Bool)

(assert (=> start!119194 m!1275731))

(push 1)

(assert (not b!1389913))

(assert (not b!1389912))

(assert (not b!1389911))

(assert (not b!1389909))

(assert (not start!119194))

(assert (not b!1389907))

(assert (not b!1389908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

