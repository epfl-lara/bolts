; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120620 () Bool)

(assert start!120620)

(declare-fun b!1403930 () Bool)

(declare-fun res!942553 () Bool)

(declare-fun e!794877 () Bool)

(assert (=> b!1403930 (=> (not res!942553) (not e!794877))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95947 0))(
  ( (array!95948 (arr!46320 (Array (_ BitVec 32) (_ BitVec 64))) (size!46871 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95947)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403930 (= res!942553 (and (= (size!46871 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46871 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46871 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403931 () Bool)

(assert (=> b!1403931 (= e!794877 (not true))))

(declare-fun e!794878 () Bool)

(assert (=> b!1403931 e!794878))

(declare-fun res!942549 () Bool)

(assert (=> b!1403931 (=> (not res!942549) (not e!794878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95947 (_ BitVec 32)) Bool)

(assert (=> b!1403931 (= res!942549 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47272 0))(
  ( (Unit!47273) )
))
(declare-fun lt!618510 () Unit!47272)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47272)

(assert (=> b!1403931 (= lt!618510 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10659 0))(
  ( (MissingZero!10659 (index!45012 (_ BitVec 32))) (Found!10659 (index!45013 (_ BitVec 32))) (Intermediate!10659 (undefined!11471 Bool) (index!45014 (_ BitVec 32)) (x!126617 (_ BitVec 32))) (Undefined!10659) (MissingVacant!10659 (index!45015 (_ BitVec 32))) )
))
(declare-fun lt!618511 () SeekEntryResult!10659)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95947 (_ BitVec 32)) SeekEntryResult!10659)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403931 (= lt!618511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46320 a!2901) j!112) mask!2840) (select (arr!46320 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403932 () Bool)

(declare-fun res!942555 () Bool)

(assert (=> b!1403932 (=> (not res!942555) (not e!794877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403932 (= res!942555 (validKeyInArray!0 (select (arr!46320 a!2901) j!112)))))

(declare-fun b!1403933 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95947 (_ BitVec 32)) SeekEntryResult!10659)

(assert (=> b!1403933 (= e!794878 (= (seekEntryOrOpen!0 (select (arr!46320 a!2901) j!112) a!2901 mask!2840) (Found!10659 j!112)))))

(declare-fun b!1403934 () Bool)

(declare-fun res!942552 () Bool)

(assert (=> b!1403934 (=> (not res!942552) (not e!794877))))

(assert (=> b!1403934 (= res!942552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403935 () Bool)

(declare-fun res!942554 () Bool)

(assert (=> b!1403935 (=> (not res!942554) (not e!794877))))

(declare-datatypes ((List!33019 0))(
  ( (Nil!33016) (Cons!33015 (h!34263 (_ BitVec 64)) (t!47720 List!33019)) )
))
(declare-fun arrayNoDuplicates!0 (array!95947 (_ BitVec 32) List!33019) Bool)

(assert (=> b!1403935 (= res!942554 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33016))))

(declare-fun b!1403929 () Bool)

(declare-fun res!942550 () Bool)

(assert (=> b!1403929 (=> (not res!942550) (not e!794877))))

(assert (=> b!1403929 (= res!942550 (validKeyInArray!0 (select (arr!46320 a!2901) i!1037)))))

(declare-fun res!942551 () Bool)

(assert (=> start!120620 (=> (not res!942551) (not e!794877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120620 (= res!942551 (validMask!0 mask!2840))))

(assert (=> start!120620 e!794877))

(assert (=> start!120620 true))

(declare-fun array_inv!35265 (array!95947) Bool)

(assert (=> start!120620 (array_inv!35265 a!2901)))

(assert (= (and start!120620 res!942551) b!1403930))

(assert (= (and b!1403930 res!942553) b!1403929))

(assert (= (and b!1403929 res!942550) b!1403932))

(assert (= (and b!1403932 res!942555) b!1403934))

(assert (= (and b!1403934 res!942552) b!1403935))

(assert (= (and b!1403935 res!942554) b!1403931))

(assert (= (and b!1403931 res!942549) b!1403933))

(declare-fun m!1292781 () Bool)

(assert (=> start!120620 m!1292781))

(declare-fun m!1292783 () Bool)

(assert (=> start!120620 m!1292783))

(declare-fun m!1292785 () Bool)

(assert (=> b!1403933 m!1292785))

(assert (=> b!1403933 m!1292785))

(declare-fun m!1292787 () Bool)

(assert (=> b!1403933 m!1292787))

(declare-fun m!1292789 () Bool)

(assert (=> b!1403935 m!1292789))

(assert (=> b!1403931 m!1292785))

(declare-fun m!1292791 () Bool)

(assert (=> b!1403931 m!1292791))

(assert (=> b!1403931 m!1292785))

(declare-fun m!1292793 () Bool)

(assert (=> b!1403931 m!1292793))

(assert (=> b!1403931 m!1292791))

(assert (=> b!1403931 m!1292785))

(declare-fun m!1292795 () Bool)

(assert (=> b!1403931 m!1292795))

(declare-fun m!1292797 () Bool)

(assert (=> b!1403931 m!1292797))

(declare-fun m!1292799 () Bool)

(assert (=> b!1403929 m!1292799))

(assert (=> b!1403929 m!1292799))

(declare-fun m!1292801 () Bool)

(assert (=> b!1403929 m!1292801))

(assert (=> b!1403932 m!1292785))

(assert (=> b!1403932 m!1292785))

(declare-fun m!1292803 () Bool)

(assert (=> b!1403932 m!1292803))

(declare-fun m!1292805 () Bool)

(assert (=> b!1403934 m!1292805))

(push 1)

(assert (not b!1403931))

(assert (not b!1403934))

(assert (not start!120620))

(assert (not b!1403929))

(assert (not b!1403933))

(assert (not b!1403935))

(assert (not b!1403932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

