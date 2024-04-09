; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120638 () Bool)

(assert start!120638)

(declare-fun b!1404083 () Bool)

(declare-fun res!942705 () Bool)

(declare-fun e!794933 () Bool)

(assert (=> b!1404083 (=> (not res!942705) (not e!794933))))

(declare-datatypes ((array!95965 0))(
  ( (array!95966 (arr!46329 (Array (_ BitVec 32) (_ BitVec 64))) (size!46880 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95965)

(declare-datatypes ((List!33028 0))(
  ( (Nil!33025) (Cons!33024 (h!34272 (_ BitVec 64)) (t!47729 List!33028)) )
))
(declare-fun arrayNoDuplicates!0 (array!95965 (_ BitVec 32) List!33028) Bool)

(assert (=> b!1404083 (= res!942705 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33025))))

(declare-fun res!942707 () Bool)

(assert (=> start!120638 (=> (not res!942707) (not e!794933))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120638 (= res!942707 (validMask!0 mask!2840))))

(assert (=> start!120638 e!794933))

(assert (=> start!120638 true))

(declare-fun array_inv!35274 (array!95965) Bool)

(assert (=> start!120638 (array_inv!35274 a!2901)))

(declare-fun b!1404084 () Bool)

(assert (=> b!1404084 (= e!794933 false)))

(declare-datatypes ((SeekEntryResult!10662 0))(
  ( (MissingZero!10662 (index!45024 (_ BitVec 32))) (Found!10662 (index!45025 (_ BitVec 32))) (Intermediate!10662 (undefined!11474 Bool) (index!45026 (_ BitVec 32)) (x!126644 (_ BitVec 32))) (Undefined!10662) (MissingVacant!10662 (index!45027 (_ BitVec 32))) )
))
(declare-fun lt!618538 () SeekEntryResult!10662)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95965 (_ BitVec 32)) SeekEntryResult!10662)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404084 (= lt!618538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46329 a!2901) j!112) mask!2840) (select (arr!46329 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404085 () Bool)

(declare-fun res!942708 () Bool)

(assert (=> b!1404085 (=> (not res!942708) (not e!794933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404085 (= res!942708 (validKeyInArray!0 (select (arr!46329 a!2901) j!112)))))

(declare-fun b!1404086 () Bool)

(declare-fun res!942703 () Bool)

(assert (=> b!1404086 (=> (not res!942703) (not e!794933))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404086 (= res!942703 (validKeyInArray!0 (select (arr!46329 a!2901) i!1037)))))

(declare-fun b!1404087 () Bool)

(declare-fun res!942704 () Bool)

(assert (=> b!1404087 (=> (not res!942704) (not e!794933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95965 (_ BitVec 32)) Bool)

(assert (=> b!1404087 (= res!942704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404088 () Bool)

(declare-fun res!942706 () Bool)

(assert (=> b!1404088 (=> (not res!942706) (not e!794933))))

(assert (=> b!1404088 (= res!942706 (and (= (size!46880 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46880 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46880 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120638 res!942707) b!1404088))

(assert (= (and b!1404088 res!942706) b!1404086))

(assert (= (and b!1404086 res!942703) b!1404085))

(assert (= (and b!1404085 res!942708) b!1404087))

(assert (= (and b!1404087 res!942704) b!1404083))

(assert (= (and b!1404083 res!942705) b!1404084))

(declare-fun m!1292949 () Bool)

(assert (=> b!1404083 m!1292949))

(declare-fun m!1292951 () Bool)

(assert (=> b!1404086 m!1292951))

(assert (=> b!1404086 m!1292951))

(declare-fun m!1292953 () Bool)

(assert (=> b!1404086 m!1292953))

(declare-fun m!1292955 () Bool)

(assert (=> b!1404085 m!1292955))

(assert (=> b!1404085 m!1292955))

(declare-fun m!1292957 () Bool)

(assert (=> b!1404085 m!1292957))

(declare-fun m!1292959 () Bool)

(assert (=> b!1404087 m!1292959))

(assert (=> b!1404084 m!1292955))

(assert (=> b!1404084 m!1292955))

(declare-fun m!1292961 () Bool)

(assert (=> b!1404084 m!1292961))

(assert (=> b!1404084 m!1292961))

(assert (=> b!1404084 m!1292955))

(declare-fun m!1292963 () Bool)

(assert (=> b!1404084 m!1292963))

(declare-fun m!1292965 () Bool)

(assert (=> start!120638 m!1292965))

(declare-fun m!1292967 () Bool)

(assert (=> start!120638 m!1292967))

(push 1)

(assert (not start!120638))

(assert (not b!1404085))

(assert (not b!1404083))

(assert (not b!1404086))

(assert (not b!1404084))

(assert (not b!1404087))

(check-sat)

(pop 1)

(push 1)

