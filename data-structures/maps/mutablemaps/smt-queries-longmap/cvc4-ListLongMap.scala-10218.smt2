; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120404 () Bool)

(assert start!120404)

(declare-fun b!1400928 () Bool)

(declare-fun e!793248 () Bool)

(declare-fun e!793244 () Bool)

(assert (=> b!1400928 (= e!793248 e!793244)))

(declare-fun res!939554 () Bool)

(assert (=> b!1400928 (=> res!939554 e!793244)))

(declare-datatypes ((SeekEntryResult!10551 0))(
  ( (MissingZero!10551 (index!44580 (_ BitVec 32))) (Found!10551 (index!44581 (_ BitVec 32))) (Intermediate!10551 (undefined!11363 Bool) (index!44582 (_ BitVec 32)) (x!126221 (_ BitVec 32))) (Undefined!10551) (MissingVacant!10551 (index!44583 (_ BitVec 32))) )
))
(declare-fun lt!616567 () SeekEntryResult!10551)

(declare-fun lt!616566 () SeekEntryResult!10551)

(assert (=> b!1400928 (= res!939554 (or (= lt!616567 lt!616566) (not (is-Intermediate!10551 lt!616566))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95731 0))(
  ( (array!95732 (arr!46212 (Array (_ BitVec 32) (_ BitVec 64))) (size!46763 (_ BitVec 32))) )
))
(declare-fun lt!616565 () array!95731)

(declare-fun lt!616561 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95731 (_ BitVec 32)) SeekEntryResult!10551)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400928 (= lt!616566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616561 mask!2840) lt!616561 lt!616565 mask!2840))))

(declare-fun a!2901 () array!95731)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400928 (= lt!616561 (select (store (arr!46212 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400928 (= lt!616565 (array!95732 (store (arr!46212 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46763 a!2901)))))

(declare-fun b!1400929 () Bool)

(declare-fun res!939552 () Bool)

(declare-fun e!793245 () Bool)

(assert (=> b!1400929 (=> (not res!939552) (not e!793245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400929 (= res!939552 (validKeyInArray!0 (select (arr!46212 a!2901) j!112)))))

(declare-fun b!1400930 () Bool)

(declare-fun e!793246 () Bool)

(assert (=> b!1400930 (= e!793246 true)))

(declare-fun lt!616562 () (_ BitVec 32))

(declare-fun lt!616560 () SeekEntryResult!10551)

(assert (=> b!1400930 (= lt!616560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616562 lt!616561 lt!616565 mask!2840))))

(declare-fun b!1400931 () Bool)

(declare-fun e!793250 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95731 (_ BitVec 32)) SeekEntryResult!10551)

(assert (=> b!1400931 (= e!793250 (= (seekEntryOrOpen!0 (select (arr!46212 a!2901) j!112) a!2901 mask!2840) (Found!10551 j!112)))))

(declare-fun b!1400932 () Bool)

(declare-fun res!939553 () Bool)

(assert (=> b!1400932 (=> (not res!939553) (not e!793245))))

(assert (=> b!1400932 (= res!939553 (and (= (size!46763 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46763 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46763 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!939557 () Bool)

(assert (=> start!120404 (=> (not res!939557) (not e!793245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120404 (= res!939557 (validMask!0 mask!2840))))

(assert (=> start!120404 e!793245))

(assert (=> start!120404 true))

(declare-fun array_inv!35157 (array!95731) Bool)

(assert (=> start!120404 (array_inv!35157 a!2901)))

(declare-fun b!1400933 () Bool)

(declare-fun res!939555 () Bool)

(assert (=> b!1400933 (=> (not res!939555) (not e!793245))))

(assert (=> b!1400933 (= res!939555 (validKeyInArray!0 (select (arr!46212 a!2901) i!1037)))))

(declare-fun b!1400934 () Bool)

(declare-fun res!939549 () Bool)

(assert (=> b!1400934 (=> (not res!939549) (not e!793245))))

(declare-datatypes ((List!32911 0))(
  ( (Nil!32908) (Cons!32907 (h!34155 (_ BitVec 64)) (t!47612 List!32911)) )
))
(declare-fun arrayNoDuplicates!0 (array!95731 (_ BitVec 32) List!32911) Bool)

(assert (=> b!1400934 (= res!939549 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32908))))

(declare-fun b!1400935 () Bool)

(assert (=> b!1400935 (= e!793245 (not e!793248))))

(declare-fun res!939548 () Bool)

(assert (=> b!1400935 (=> res!939548 e!793248)))

(assert (=> b!1400935 (= res!939548 (or (not (is-Intermediate!10551 lt!616567)) (undefined!11363 lt!616567)))))

(assert (=> b!1400935 e!793250))

(declare-fun res!939558 () Bool)

(assert (=> b!1400935 (=> (not res!939558) (not e!793250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95731 (_ BitVec 32)) Bool)

(assert (=> b!1400935 (= res!939558 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47056 0))(
  ( (Unit!47057) )
))
(declare-fun lt!616563 () Unit!47056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47056)

(assert (=> b!1400935 (= lt!616563 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400935 (= lt!616567 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616562 (select (arr!46212 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400935 (= lt!616562 (toIndex!0 (select (arr!46212 a!2901) j!112) mask!2840))))

(declare-fun e!793249 () Bool)

(declare-fun b!1400936 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95731 (_ BitVec 32)) SeekEntryResult!10551)

(assert (=> b!1400936 (= e!793249 (= (seekEntryOrOpen!0 lt!616561 lt!616565 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126221 lt!616566) (index!44582 lt!616566) (index!44582 lt!616566) (select (arr!46212 a!2901) j!112) lt!616565 mask!2840)))))

(declare-fun b!1400937 () Bool)

(assert (=> b!1400937 (= e!793244 e!793246)))

(declare-fun res!939556 () Bool)

(assert (=> b!1400937 (=> res!939556 e!793246)))

(assert (=> b!1400937 (= res!939556 (or (bvslt (x!126221 lt!616567) #b00000000000000000000000000000000) (bvsgt (x!126221 lt!616567) #b01111111111111111111111111111110) (bvslt (x!126221 lt!616566) #b00000000000000000000000000000000) (bvsgt (x!126221 lt!616566) #b01111111111111111111111111111110) (bvslt lt!616562 #b00000000000000000000000000000000) (bvsge lt!616562 (size!46763 a!2901)) (bvslt (index!44582 lt!616567) #b00000000000000000000000000000000) (bvsge (index!44582 lt!616567) (size!46763 a!2901)) (bvslt (index!44582 lt!616566) #b00000000000000000000000000000000) (bvsge (index!44582 lt!616566) (size!46763 a!2901)) (not (= lt!616567 (Intermediate!10551 false (index!44582 lt!616567) (x!126221 lt!616567)))) (not (= lt!616566 (Intermediate!10551 false (index!44582 lt!616566) (x!126221 lt!616566))))))))

(assert (=> b!1400937 e!793249))

(declare-fun res!939550 () Bool)

(assert (=> b!1400937 (=> (not res!939550) (not e!793249))))

(assert (=> b!1400937 (= res!939550 (and (not (undefined!11363 lt!616566)) (= (index!44582 lt!616566) i!1037) (bvslt (x!126221 lt!616566) (x!126221 lt!616567)) (= (select (store (arr!46212 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44582 lt!616566)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616564 () Unit!47056)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47056)

(assert (=> b!1400937 (= lt!616564 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616562 (x!126221 lt!616567) (index!44582 lt!616567) (x!126221 lt!616566) (index!44582 lt!616566) (undefined!11363 lt!616566) mask!2840))))

(declare-fun b!1400938 () Bool)

(declare-fun res!939551 () Bool)

(assert (=> b!1400938 (=> (not res!939551) (not e!793245))))

(assert (=> b!1400938 (= res!939551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120404 res!939557) b!1400932))

(assert (= (and b!1400932 res!939553) b!1400933))

(assert (= (and b!1400933 res!939555) b!1400929))

(assert (= (and b!1400929 res!939552) b!1400938))

(assert (= (and b!1400938 res!939551) b!1400934))

(assert (= (and b!1400934 res!939549) b!1400935))

(assert (= (and b!1400935 res!939558) b!1400931))

(assert (= (and b!1400935 (not res!939548)) b!1400928))

(assert (= (and b!1400928 (not res!939554)) b!1400937))

(assert (= (and b!1400937 res!939550) b!1400936))

(assert (= (and b!1400937 (not res!939556)) b!1400930))

(declare-fun m!1288629 () Bool)

(assert (=> b!1400930 m!1288629))

(declare-fun m!1288631 () Bool)

(assert (=> b!1400929 m!1288631))

(assert (=> b!1400929 m!1288631))

(declare-fun m!1288633 () Bool)

(assert (=> b!1400929 m!1288633))

(declare-fun m!1288635 () Bool)

(assert (=> b!1400928 m!1288635))

(assert (=> b!1400928 m!1288635))

(declare-fun m!1288637 () Bool)

(assert (=> b!1400928 m!1288637))

(declare-fun m!1288639 () Bool)

(assert (=> b!1400928 m!1288639))

(declare-fun m!1288641 () Bool)

(assert (=> b!1400928 m!1288641))

(assert (=> b!1400937 m!1288639))

(declare-fun m!1288643 () Bool)

(assert (=> b!1400937 m!1288643))

(declare-fun m!1288645 () Bool)

(assert (=> b!1400937 m!1288645))

(declare-fun m!1288647 () Bool)

(assert (=> b!1400933 m!1288647))

(assert (=> b!1400933 m!1288647))

(declare-fun m!1288649 () Bool)

(assert (=> b!1400933 m!1288649))

(declare-fun m!1288651 () Bool)

(assert (=> b!1400938 m!1288651))

(declare-fun m!1288653 () Bool)

(assert (=> b!1400936 m!1288653))

(assert (=> b!1400936 m!1288631))

(assert (=> b!1400936 m!1288631))

(declare-fun m!1288655 () Bool)

(assert (=> b!1400936 m!1288655))

(declare-fun m!1288657 () Bool)

(assert (=> start!120404 m!1288657))

(declare-fun m!1288659 () Bool)

(assert (=> start!120404 m!1288659))

(assert (=> b!1400931 m!1288631))

(assert (=> b!1400931 m!1288631))

(declare-fun m!1288661 () Bool)

(assert (=> b!1400931 m!1288661))

(assert (=> b!1400935 m!1288631))

(declare-fun m!1288663 () Bool)

(assert (=> b!1400935 m!1288663))

(assert (=> b!1400935 m!1288631))

(declare-fun m!1288665 () Bool)

(assert (=> b!1400935 m!1288665))

(declare-fun m!1288667 () Bool)

(assert (=> b!1400935 m!1288667))

(assert (=> b!1400935 m!1288631))

(declare-fun m!1288669 () Bool)

(assert (=> b!1400935 m!1288669))

(declare-fun m!1288671 () Bool)

(assert (=> b!1400934 m!1288671))

(push 1)

