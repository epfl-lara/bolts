; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121664 () Bool)

(assert start!121664)

(declare-fun b!1412890 () Bool)

(declare-fun res!949996 () Bool)

(declare-fun e!799606 () Bool)

(assert (=> b!1412890 (=> (not res!949996) (not e!799606))))

(declare-datatypes ((array!96520 0))(
  ( (array!96521 (arr!46593 (Array (_ BitVec 32) (_ BitVec 64))) (size!47144 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96520)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412890 (= res!949996 (validKeyInArray!0 (select (arr!46593 a!2901) j!112)))))

(declare-fun b!1412891 () Bool)

(declare-fun e!799607 () Bool)

(declare-fun e!799609 () Bool)

(assert (=> b!1412891 (= e!799607 e!799609)))

(declare-fun res!949989 () Bool)

(assert (=> b!1412891 (=> res!949989 e!799609)))

(declare-datatypes ((SeekEntryResult!10926 0))(
  ( (MissingZero!10926 (index!46083 (_ BitVec 32))) (Found!10926 (index!46084 (_ BitVec 32))) (Intermediate!10926 (undefined!11738 Bool) (index!46085 (_ BitVec 32)) (x!127672 (_ BitVec 32))) (Undefined!10926) (MissingVacant!10926 (index!46086 (_ BitVec 32))) )
))
(declare-fun lt!622648 () SeekEntryResult!10926)

(declare-fun lt!622651 () SeekEntryResult!10926)

(assert (=> b!1412891 (= res!949989 (or (= lt!622648 lt!622651) (not (is-Intermediate!10926 lt!622651))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622654 () array!96520)

(declare-fun lt!622652 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96520 (_ BitVec 32)) SeekEntryResult!10926)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412891 (= lt!622651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622652 mask!2840) lt!622652 lt!622654 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412891 (= lt!622652 (select (store (arr!46593 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412891 (= lt!622654 (array!96521 (store (arr!46593 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47144 a!2901)))))

(declare-fun b!1412892 () Bool)

(declare-fun res!949998 () Bool)

(assert (=> b!1412892 (=> (not res!949998) (not e!799606))))

(declare-datatypes ((List!33292 0))(
  ( (Nil!33289) (Cons!33288 (h!34563 (_ BitVec 64)) (t!47993 List!33292)) )
))
(declare-fun arrayNoDuplicates!0 (array!96520 (_ BitVec 32) List!33292) Bool)

(assert (=> b!1412892 (= res!949998 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33289))))

(declare-fun b!1412893 () Bool)

(declare-fun res!949990 () Bool)

(assert (=> b!1412893 (=> (not res!949990) (not e!799606))))

(assert (=> b!1412893 (= res!949990 (validKeyInArray!0 (select (arr!46593 a!2901) i!1037)))))

(declare-fun e!799605 () Bool)

(declare-fun b!1412894 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96520 (_ BitVec 32)) SeekEntryResult!10926)

(assert (=> b!1412894 (= e!799605 (= (seekEntryOrOpen!0 (select (arr!46593 a!2901) j!112) a!2901 mask!2840) (Found!10926 j!112)))))

(declare-fun b!1412895 () Bool)

(declare-fun res!949993 () Bool)

(assert (=> b!1412895 (=> (not res!949993) (not e!799606))))

(assert (=> b!1412895 (= res!949993 (and (= (size!47144 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47144 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47144 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412896 () Bool)

(assert (=> b!1412896 (= e!799609 true)))

(declare-fun e!799608 () Bool)

(assert (=> b!1412896 e!799608))

(declare-fun res!949997 () Bool)

(assert (=> b!1412896 (=> (not res!949997) (not e!799608))))

(assert (=> b!1412896 (= res!949997 (and (not (undefined!11738 lt!622651)) (= (index!46085 lt!622651) i!1037) (bvslt (x!127672 lt!622651) (x!127672 lt!622648)) (= (select (store (arr!46593 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46085 lt!622651)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47776 0))(
  ( (Unit!47777) )
))
(declare-fun lt!622650 () Unit!47776)

(declare-fun lt!622653 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47776)

(assert (=> b!1412896 (= lt!622650 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622653 (x!127672 lt!622648) (index!46085 lt!622648) (x!127672 lt!622651) (index!46085 lt!622651) (undefined!11738 lt!622651) mask!2840))))

(declare-fun res!949991 () Bool)

(assert (=> start!121664 (=> (not res!949991) (not e!799606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121664 (= res!949991 (validMask!0 mask!2840))))

(assert (=> start!121664 e!799606))

(assert (=> start!121664 true))

(declare-fun array_inv!35538 (array!96520) Bool)

(assert (=> start!121664 (array_inv!35538 a!2901)))

(declare-fun b!1412897 () Bool)

(assert (=> b!1412897 (= e!799606 (not e!799607))))

(declare-fun res!949995 () Bool)

(assert (=> b!1412897 (=> res!949995 e!799607)))

(assert (=> b!1412897 (= res!949995 (or (not (is-Intermediate!10926 lt!622648)) (undefined!11738 lt!622648)))))

(assert (=> b!1412897 e!799605))

(declare-fun res!949992 () Bool)

(assert (=> b!1412897 (=> (not res!949992) (not e!799605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96520 (_ BitVec 32)) Bool)

(assert (=> b!1412897 (= res!949992 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622649 () Unit!47776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47776)

(assert (=> b!1412897 (= lt!622649 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412897 (= lt!622648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622653 (select (arr!46593 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412897 (= lt!622653 (toIndex!0 (select (arr!46593 a!2901) j!112) mask!2840))))

(declare-fun b!1412898 () Bool)

(declare-fun res!949994 () Bool)

(assert (=> b!1412898 (=> (not res!949994) (not e!799606))))

(assert (=> b!1412898 (= res!949994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412899 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96520 (_ BitVec 32)) SeekEntryResult!10926)

(assert (=> b!1412899 (= e!799608 (= (seekEntryOrOpen!0 lt!622652 lt!622654 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127672 lt!622651) (index!46085 lt!622651) (index!46085 lt!622651) (select (arr!46593 a!2901) j!112) lt!622654 mask!2840)))))

(assert (= (and start!121664 res!949991) b!1412895))

(assert (= (and b!1412895 res!949993) b!1412893))

(assert (= (and b!1412893 res!949990) b!1412890))

(assert (= (and b!1412890 res!949996) b!1412898))

(assert (= (and b!1412898 res!949994) b!1412892))

(assert (= (and b!1412892 res!949998) b!1412897))

(assert (= (and b!1412897 res!949992) b!1412894))

(assert (= (and b!1412897 (not res!949995)) b!1412891))

(assert (= (and b!1412891 (not res!949989)) b!1412896))

(assert (= (and b!1412896 res!949997) b!1412899))

(declare-fun m!1303187 () Bool)

(assert (=> b!1412894 m!1303187))

(assert (=> b!1412894 m!1303187))

(declare-fun m!1303189 () Bool)

(assert (=> b!1412894 m!1303189))

(assert (=> b!1412890 m!1303187))

(assert (=> b!1412890 m!1303187))

(declare-fun m!1303191 () Bool)

(assert (=> b!1412890 m!1303191))

(declare-fun m!1303193 () Bool)

(assert (=> b!1412891 m!1303193))

(assert (=> b!1412891 m!1303193))

(declare-fun m!1303195 () Bool)

(assert (=> b!1412891 m!1303195))

(declare-fun m!1303197 () Bool)

(assert (=> b!1412891 m!1303197))

(declare-fun m!1303199 () Bool)

(assert (=> b!1412891 m!1303199))

(declare-fun m!1303201 () Bool)

(assert (=> b!1412893 m!1303201))

(assert (=> b!1412893 m!1303201))

(declare-fun m!1303203 () Bool)

(assert (=> b!1412893 m!1303203))

(declare-fun m!1303205 () Bool)

(assert (=> b!1412892 m!1303205))

(assert (=> b!1412896 m!1303197))

(declare-fun m!1303207 () Bool)

(assert (=> b!1412896 m!1303207))

(declare-fun m!1303209 () Bool)

(assert (=> b!1412896 m!1303209))

(declare-fun m!1303211 () Bool)

(assert (=> b!1412899 m!1303211))

(assert (=> b!1412899 m!1303187))

(assert (=> b!1412899 m!1303187))

(declare-fun m!1303213 () Bool)

(assert (=> b!1412899 m!1303213))

(declare-fun m!1303215 () Bool)

(assert (=> start!121664 m!1303215))

(declare-fun m!1303217 () Bool)

(assert (=> start!121664 m!1303217))

(declare-fun m!1303219 () Bool)

(assert (=> b!1412898 m!1303219))

(assert (=> b!1412897 m!1303187))

(declare-fun m!1303221 () Bool)

(assert (=> b!1412897 m!1303221))

(assert (=> b!1412897 m!1303187))

(declare-fun m!1303223 () Bool)

(assert (=> b!1412897 m!1303223))

(declare-fun m!1303225 () Bool)

(assert (=> b!1412897 m!1303225))

(assert (=> b!1412897 m!1303187))

(declare-fun m!1303227 () Bool)

(assert (=> b!1412897 m!1303227))

(push 1)

