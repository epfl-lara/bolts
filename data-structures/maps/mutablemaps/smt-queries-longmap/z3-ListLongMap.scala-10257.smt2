; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120636 () Bool)

(assert start!120636)

(declare-fun b!1404065 () Bool)

(declare-fun e!794927 () Bool)

(assert (=> b!1404065 (= e!794927 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95963 0))(
  ( (array!95964 (arr!46328 (Array (_ BitVec 32) (_ BitVec 64))) (size!46879 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95963)

(declare-datatypes ((SeekEntryResult!10661 0))(
  ( (MissingZero!10661 (index!45020 (_ BitVec 32))) (Found!10661 (index!45021 (_ BitVec 32))) (Intermediate!10661 (undefined!11473 Bool) (index!45022 (_ BitVec 32)) (x!126643 (_ BitVec 32))) (Undefined!10661) (MissingVacant!10661 (index!45023 (_ BitVec 32))) )
))
(declare-fun lt!618535 () SeekEntryResult!10661)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95963 (_ BitVec 32)) SeekEntryResult!10661)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404065 (= lt!618535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46328 a!2901) j!112) mask!2840) (select (arr!46328 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404066 () Bool)

(declare-fun res!942690 () Bool)

(assert (=> b!1404066 (=> (not res!942690) (not e!794927))))

(declare-datatypes ((List!33027 0))(
  ( (Nil!33024) (Cons!33023 (h!34271 (_ BitVec 64)) (t!47728 List!33027)) )
))
(declare-fun arrayNoDuplicates!0 (array!95963 (_ BitVec 32) List!33027) Bool)

(assert (=> b!1404066 (= res!942690 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33024))))

(declare-fun b!1404067 () Bool)

(declare-fun res!942688 () Bool)

(assert (=> b!1404067 (=> (not res!942688) (not e!794927))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404067 (= res!942688 (validKeyInArray!0 (select (arr!46328 a!2901) i!1037)))))

(declare-fun b!1404068 () Bool)

(declare-fun res!942686 () Bool)

(assert (=> b!1404068 (=> (not res!942686) (not e!794927))))

(assert (=> b!1404068 (= res!942686 (and (= (size!46879 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46879 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46879 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404069 () Bool)

(declare-fun res!942687 () Bool)

(assert (=> b!1404069 (=> (not res!942687) (not e!794927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95963 (_ BitVec 32)) Bool)

(assert (=> b!1404069 (= res!942687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404070 () Bool)

(declare-fun res!942689 () Bool)

(assert (=> b!1404070 (=> (not res!942689) (not e!794927))))

(assert (=> b!1404070 (= res!942689 (validKeyInArray!0 (select (arr!46328 a!2901) j!112)))))

(declare-fun res!942685 () Bool)

(assert (=> start!120636 (=> (not res!942685) (not e!794927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120636 (= res!942685 (validMask!0 mask!2840))))

(assert (=> start!120636 e!794927))

(assert (=> start!120636 true))

(declare-fun array_inv!35273 (array!95963) Bool)

(assert (=> start!120636 (array_inv!35273 a!2901)))

(assert (= (and start!120636 res!942685) b!1404068))

(assert (= (and b!1404068 res!942686) b!1404067))

(assert (= (and b!1404067 res!942688) b!1404070))

(assert (= (and b!1404070 res!942689) b!1404069))

(assert (= (and b!1404069 res!942687) b!1404066))

(assert (= (and b!1404066 res!942690) b!1404065))

(declare-fun m!1292929 () Bool)

(assert (=> b!1404070 m!1292929))

(assert (=> b!1404070 m!1292929))

(declare-fun m!1292931 () Bool)

(assert (=> b!1404070 m!1292931))

(declare-fun m!1292933 () Bool)

(assert (=> b!1404069 m!1292933))

(declare-fun m!1292935 () Bool)

(assert (=> b!1404066 m!1292935))

(declare-fun m!1292937 () Bool)

(assert (=> b!1404067 m!1292937))

(assert (=> b!1404067 m!1292937))

(declare-fun m!1292939 () Bool)

(assert (=> b!1404067 m!1292939))

(declare-fun m!1292941 () Bool)

(assert (=> start!120636 m!1292941))

(declare-fun m!1292943 () Bool)

(assert (=> start!120636 m!1292943))

(assert (=> b!1404065 m!1292929))

(assert (=> b!1404065 m!1292929))

(declare-fun m!1292945 () Bool)

(assert (=> b!1404065 m!1292945))

(assert (=> b!1404065 m!1292945))

(assert (=> b!1404065 m!1292929))

(declare-fun m!1292947 () Bool)

(assert (=> b!1404065 m!1292947))

(check-sat (not b!1404065) (not b!1404066) (not start!120636) (not b!1404067) (not b!1404070) (not b!1404069))
