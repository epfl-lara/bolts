; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120422 () Bool)

(assert start!120422)

(declare-fun b!1401225 () Bool)

(declare-fun e!793434 () Bool)

(declare-fun e!793438 () Bool)

(assert (=> b!1401225 (= e!793434 e!793438)))

(declare-fun res!939853 () Bool)

(assert (=> b!1401225 (=> res!939853 e!793438)))

(declare-datatypes ((SeekEntryResult!10560 0))(
  ( (MissingZero!10560 (index!44616 (_ BitVec 32))) (Found!10560 (index!44617 (_ BitVec 32))) (Intermediate!10560 (undefined!11372 Bool) (index!44618 (_ BitVec 32)) (x!126254 (_ BitVec 32))) (Undefined!10560) (MissingVacant!10560 (index!44619 (_ BitVec 32))) )
))
(declare-fun lt!616778 () SeekEntryResult!10560)

(declare-datatypes ((array!95749 0))(
  ( (array!95750 (arr!46221 (Array (_ BitVec 32) (_ BitVec 64))) (size!46772 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95749)

(declare-fun lt!616779 () SeekEntryResult!10560)

(declare-fun lt!616783 () (_ BitVec 32))

(assert (=> b!1401225 (= res!939853 (or (bvslt (x!126254 lt!616779) #b00000000000000000000000000000000) (bvsgt (x!126254 lt!616779) #b01111111111111111111111111111110) (bvslt (x!126254 lt!616778) #b00000000000000000000000000000000) (bvsgt (x!126254 lt!616778) #b01111111111111111111111111111110) (bvslt lt!616783 #b00000000000000000000000000000000) (bvsge lt!616783 (size!46772 a!2901)) (bvslt (index!44618 lt!616779) #b00000000000000000000000000000000) (bvsge (index!44618 lt!616779) (size!46772 a!2901)) (bvslt (index!44618 lt!616778) #b00000000000000000000000000000000) (bvsge (index!44618 lt!616778) (size!46772 a!2901)) (not (= lt!616779 (Intermediate!10560 false (index!44618 lt!616779) (x!126254 lt!616779)))) (not (= lt!616778 (Intermediate!10560 false (index!44618 lt!616778) (x!126254 lt!616778))))))))

(declare-fun e!793436 () Bool)

(assert (=> b!1401225 e!793436))

(declare-fun res!939854 () Bool)

(assert (=> b!1401225 (=> (not res!939854) (not e!793436))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401225 (= res!939854 (and (not (undefined!11372 lt!616778)) (= (index!44618 lt!616778) i!1037) (bvslt (x!126254 lt!616778) (x!126254 lt!616779)) (= (select (store (arr!46221 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44618 lt!616778)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47074 0))(
  ( (Unit!47075) )
))
(declare-fun lt!616782 () Unit!47074)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47074)

(assert (=> b!1401225 (= lt!616782 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616783 (x!126254 lt!616779) (index!44618 lt!616779) (x!126254 lt!616778) (index!44618 lt!616778) (undefined!11372 lt!616778) mask!2840))))

(declare-fun b!1401226 () Bool)

(declare-fun e!793433 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95749 (_ BitVec 32)) SeekEntryResult!10560)

(assert (=> b!1401226 (= e!793433 (= (seekEntryOrOpen!0 (select (arr!46221 a!2901) j!112) a!2901 mask!2840) (Found!10560 j!112)))))

(declare-fun b!1401227 () Bool)

(assert (=> b!1401227 (= e!793438 true)))

(declare-fun lt!616776 () array!95749)

(declare-fun lt!616781 () (_ BitVec 64))

(declare-fun lt!616780 () SeekEntryResult!10560)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95749 (_ BitVec 32)) SeekEntryResult!10560)

(assert (=> b!1401227 (= lt!616780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616783 lt!616781 lt!616776 mask!2840))))

(declare-fun b!1401228 () Bool)

(declare-fun res!939845 () Bool)

(declare-fun e!793435 () Bool)

(assert (=> b!1401228 (=> (not res!939845) (not e!793435))))

(assert (=> b!1401228 (= res!939845 (and (= (size!46772 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46772 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46772 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401229 () Bool)

(declare-fun e!793439 () Bool)

(assert (=> b!1401229 (= e!793435 (not e!793439))))

(declare-fun res!939850 () Bool)

(assert (=> b!1401229 (=> res!939850 e!793439)))

(assert (=> b!1401229 (= res!939850 (or (not (is-Intermediate!10560 lt!616779)) (undefined!11372 lt!616779)))))

(assert (=> b!1401229 e!793433))

(declare-fun res!939849 () Bool)

(assert (=> b!1401229 (=> (not res!939849) (not e!793433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95749 (_ BitVec 32)) Bool)

(assert (=> b!1401229 (= res!939849 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616777 () Unit!47074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47074)

(assert (=> b!1401229 (= lt!616777 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401229 (= lt!616779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616783 (select (arr!46221 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401229 (= lt!616783 (toIndex!0 (select (arr!46221 a!2901) j!112) mask!2840))))

(declare-fun b!1401230 () Bool)

(declare-fun res!939852 () Bool)

(assert (=> b!1401230 (=> (not res!939852) (not e!793435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401230 (= res!939852 (validKeyInArray!0 (select (arr!46221 a!2901) i!1037)))))

(declare-fun b!1401232 () Bool)

(declare-fun res!939846 () Bool)

(assert (=> b!1401232 (=> (not res!939846) (not e!793435))))

(assert (=> b!1401232 (= res!939846 (validKeyInArray!0 (select (arr!46221 a!2901) j!112)))))

(declare-fun b!1401233 () Bool)

(declare-fun res!939848 () Bool)

(assert (=> b!1401233 (=> (not res!939848) (not e!793435))))

(declare-datatypes ((List!32920 0))(
  ( (Nil!32917) (Cons!32916 (h!34164 (_ BitVec 64)) (t!47621 List!32920)) )
))
(declare-fun arrayNoDuplicates!0 (array!95749 (_ BitVec 32) List!32920) Bool)

(assert (=> b!1401233 (= res!939848 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32917))))

(declare-fun b!1401231 () Bool)

(assert (=> b!1401231 (= e!793439 e!793434)))

(declare-fun res!939847 () Bool)

(assert (=> b!1401231 (=> res!939847 e!793434)))

(assert (=> b!1401231 (= res!939847 (or (= lt!616779 lt!616778) (not (is-Intermediate!10560 lt!616778))))))

(assert (=> b!1401231 (= lt!616778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616781 mask!2840) lt!616781 lt!616776 mask!2840))))

(assert (=> b!1401231 (= lt!616781 (select (store (arr!46221 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401231 (= lt!616776 (array!95750 (store (arr!46221 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46772 a!2901)))))

(declare-fun res!939851 () Bool)

(assert (=> start!120422 (=> (not res!939851) (not e!793435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120422 (= res!939851 (validMask!0 mask!2840))))

(assert (=> start!120422 e!793435))

(assert (=> start!120422 true))

(declare-fun array_inv!35166 (array!95749) Bool)

(assert (=> start!120422 (array_inv!35166 a!2901)))

(declare-fun b!1401234 () Bool)

(declare-fun res!939855 () Bool)

(assert (=> b!1401234 (=> (not res!939855) (not e!793435))))

(assert (=> b!1401234 (= res!939855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401235 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95749 (_ BitVec 32)) SeekEntryResult!10560)

(assert (=> b!1401235 (= e!793436 (= (seekEntryOrOpen!0 lt!616781 lt!616776 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126254 lt!616778) (index!44618 lt!616778) (index!44618 lt!616778) (select (arr!46221 a!2901) j!112) lt!616776 mask!2840)))))

(assert (= (and start!120422 res!939851) b!1401228))

(assert (= (and b!1401228 res!939845) b!1401230))

(assert (= (and b!1401230 res!939852) b!1401232))

(assert (= (and b!1401232 res!939846) b!1401234))

(assert (= (and b!1401234 res!939855) b!1401233))

(assert (= (and b!1401233 res!939848) b!1401229))

(assert (= (and b!1401229 res!939849) b!1401226))

(assert (= (and b!1401229 (not res!939850)) b!1401231))

(assert (= (and b!1401231 (not res!939847)) b!1401225))

(assert (= (and b!1401225 res!939854) b!1401235))

(assert (= (and b!1401225 (not res!939853)) b!1401227))

(declare-fun m!1289025 () Bool)

(assert (=> b!1401225 m!1289025))

(declare-fun m!1289027 () Bool)

(assert (=> b!1401225 m!1289027))

(declare-fun m!1289029 () Bool)

(assert (=> b!1401225 m!1289029))

(declare-fun m!1289031 () Bool)

(assert (=> start!120422 m!1289031))

(declare-fun m!1289033 () Bool)

(assert (=> start!120422 m!1289033))

(declare-fun m!1289035 () Bool)

(assert (=> b!1401231 m!1289035))

(assert (=> b!1401231 m!1289035))

(declare-fun m!1289037 () Bool)

(assert (=> b!1401231 m!1289037))

(assert (=> b!1401231 m!1289025))

(declare-fun m!1289039 () Bool)

(assert (=> b!1401231 m!1289039))

(declare-fun m!1289041 () Bool)

(assert (=> b!1401232 m!1289041))

(assert (=> b!1401232 m!1289041))

(declare-fun m!1289043 () Bool)

(assert (=> b!1401232 m!1289043))

(assert (=> b!1401226 m!1289041))

(assert (=> b!1401226 m!1289041))

(declare-fun m!1289045 () Bool)

(assert (=> b!1401226 m!1289045))

(declare-fun m!1289047 () Bool)

(assert (=> b!1401230 m!1289047))

(assert (=> b!1401230 m!1289047))

(declare-fun m!1289049 () Bool)

(assert (=> b!1401230 m!1289049))

(declare-fun m!1289051 () Bool)

(assert (=> b!1401235 m!1289051))

(assert (=> b!1401235 m!1289041))

(assert (=> b!1401235 m!1289041))

(declare-fun m!1289053 () Bool)

(assert (=> b!1401235 m!1289053))

(assert (=> b!1401229 m!1289041))

(declare-fun m!1289055 () Bool)

(assert (=> b!1401229 m!1289055))

(assert (=> b!1401229 m!1289041))

(declare-fun m!1289057 () Bool)

(assert (=> b!1401229 m!1289057))

(assert (=> b!1401229 m!1289041))

(declare-fun m!1289059 () Bool)

(assert (=> b!1401229 m!1289059))

(declare-fun m!1289061 () Bool)

(assert (=> b!1401229 m!1289061))

(declare-fun m!1289063 () Bool)

(assert (=> b!1401234 m!1289063))

(declare-fun m!1289065 () Bool)

(assert (=> b!1401227 m!1289065))

(declare-fun m!1289067 () Bool)

(assert (=> b!1401233 m!1289067))

(push 1)

