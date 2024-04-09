; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120634 () Bool)

(assert start!120634)

(declare-fun b!1404047 () Bool)

(declare-fun res!942672 () Bool)

(declare-fun e!794920 () Bool)

(assert (=> b!1404047 (=> (not res!942672) (not e!794920))))

(declare-datatypes ((array!95961 0))(
  ( (array!95962 (arr!46327 (Array (_ BitVec 32) (_ BitVec 64))) (size!46878 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95961)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95961 (_ BitVec 32)) Bool)

(assert (=> b!1404047 (= res!942672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942668 () Bool)

(assert (=> start!120634 (=> (not res!942668) (not e!794920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120634 (= res!942668 (validMask!0 mask!2840))))

(assert (=> start!120634 e!794920))

(assert (=> start!120634 true))

(declare-fun array_inv!35272 (array!95961) Bool)

(assert (=> start!120634 (array_inv!35272 a!2901)))

(declare-fun b!1404048 () Bool)

(declare-fun res!942667 () Bool)

(assert (=> b!1404048 (=> (not res!942667) (not e!794920))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404048 (= res!942667 (validKeyInArray!0 (select (arr!46327 a!2901) i!1037)))))

(declare-fun b!1404049 () Bool)

(declare-fun res!942670 () Bool)

(assert (=> b!1404049 (=> (not res!942670) (not e!794920))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404049 (= res!942670 (and (= (size!46878 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46878 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46878 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404050 () Bool)

(assert (=> b!1404050 (= e!794920 false)))

(declare-datatypes ((SeekEntryResult!10660 0))(
  ( (MissingZero!10660 (index!45016 (_ BitVec 32))) (Found!10660 (index!45017 (_ BitVec 32))) (Intermediate!10660 (undefined!11472 Bool) (index!45018 (_ BitVec 32)) (x!126642 (_ BitVec 32))) (Undefined!10660) (MissingVacant!10660 (index!45019 (_ BitVec 32))) )
))
(declare-fun lt!618532 () SeekEntryResult!10660)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95961 (_ BitVec 32)) SeekEntryResult!10660)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404050 (= lt!618532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46327 a!2901) j!112) mask!2840) (select (arr!46327 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404051 () Bool)

(declare-fun res!942669 () Bool)

(assert (=> b!1404051 (=> (not res!942669) (not e!794920))))

(declare-datatypes ((List!33026 0))(
  ( (Nil!33023) (Cons!33022 (h!34270 (_ BitVec 64)) (t!47727 List!33026)) )
))
(declare-fun arrayNoDuplicates!0 (array!95961 (_ BitVec 32) List!33026) Bool)

(assert (=> b!1404051 (= res!942669 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33023))))

(declare-fun b!1404052 () Bool)

(declare-fun res!942671 () Bool)

(assert (=> b!1404052 (=> (not res!942671) (not e!794920))))

(assert (=> b!1404052 (= res!942671 (validKeyInArray!0 (select (arr!46327 a!2901) j!112)))))

(assert (= (and start!120634 res!942668) b!1404049))

(assert (= (and b!1404049 res!942670) b!1404048))

(assert (= (and b!1404048 res!942667) b!1404052))

(assert (= (and b!1404052 res!942671) b!1404047))

(assert (= (and b!1404047 res!942672) b!1404051))

(assert (= (and b!1404051 res!942669) b!1404050))

(declare-fun m!1292909 () Bool)

(assert (=> b!1404047 m!1292909))

(declare-fun m!1292911 () Bool)

(assert (=> b!1404048 m!1292911))

(assert (=> b!1404048 m!1292911))

(declare-fun m!1292913 () Bool)

(assert (=> b!1404048 m!1292913))

(declare-fun m!1292915 () Bool)

(assert (=> b!1404052 m!1292915))

(assert (=> b!1404052 m!1292915))

(declare-fun m!1292917 () Bool)

(assert (=> b!1404052 m!1292917))

(declare-fun m!1292919 () Bool)

(assert (=> b!1404051 m!1292919))

(declare-fun m!1292921 () Bool)

(assert (=> start!120634 m!1292921))

(declare-fun m!1292923 () Bool)

(assert (=> start!120634 m!1292923))

(assert (=> b!1404050 m!1292915))

(assert (=> b!1404050 m!1292915))

(declare-fun m!1292925 () Bool)

(assert (=> b!1404050 m!1292925))

(assert (=> b!1404050 m!1292925))

(assert (=> b!1404050 m!1292915))

(declare-fun m!1292927 () Bool)

(assert (=> b!1404050 m!1292927))

(push 1)

(assert (not b!1404047))

(assert (not b!1404050))

(assert (not b!1404052))

(assert (not start!120634))

(assert (not b!1404051))

(assert (not b!1404048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

