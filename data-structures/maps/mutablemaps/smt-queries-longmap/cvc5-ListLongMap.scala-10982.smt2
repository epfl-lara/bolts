; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128686 () Bool)

(assert start!128686)

(declare-fun b!1507791 () Bool)

(declare-fun res!1027980 () Bool)

(declare-fun e!842455 () Bool)

(assert (=> b!1507791 (=> (not res!1027980) (not e!842455))))

(declare-datatypes ((array!100533 0))(
  ( (array!100534 (arr!48502 (Array (_ BitVec 32) (_ BitVec 64))) (size!49053 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100533)

(declare-datatypes ((List!35165 0))(
  ( (Nil!35162) (Cons!35161 (h!36568 (_ BitVec 64)) (t!49866 List!35165)) )
))
(declare-fun arrayNoDuplicates!0 (array!100533 (_ BitVec 32) List!35165) Bool)

(assert (=> b!1507791 (= res!1027980 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35162))))

(declare-fun b!1507792 () Bool)

(declare-fun res!1027979 () Bool)

(assert (=> b!1507792 (=> (not res!1027979) (not e!842455))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507792 (= res!1027979 (and (= (size!49053 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49053 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49053 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507793 () Bool)

(declare-fun res!1027983 () Bool)

(assert (=> b!1507793 (=> (not res!1027983) (not e!842455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507793 (= res!1027983 (validKeyInArray!0 (select (arr!48502 a!2804) i!961)))))

(declare-fun b!1507794 () Bool)

(declare-fun res!1027981 () Bool)

(assert (=> b!1507794 (=> (not res!1027981) (not e!842455))))

(assert (=> b!1507794 (= res!1027981 (validKeyInArray!0 (select (arr!48502 a!2804) j!70)))))

(declare-fun res!1027982 () Bool)

(assert (=> start!128686 (=> (not res!1027982) (not e!842455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128686 (= res!1027982 (validMask!0 mask!2512))))

(assert (=> start!128686 e!842455))

(assert (=> start!128686 true))

(declare-fun array_inv!37447 (array!100533) Bool)

(assert (=> start!128686 (array_inv!37447 a!2804)))

(declare-fun b!1507795 () Bool)

(declare-fun res!1027976 () Bool)

(assert (=> b!1507795 (=> (not res!1027976) (not e!842455))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507795 (= res!1027976 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49053 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49053 a!2804))))))

(declare-fun b!1507796 () Bool)

(declare-fun res!1027977 () Bool)

(assert (=> b!1507796 (=> (not res!1027977) (not e!842455))))

(declare-datatypes ((SeekEntryResult!12694 0))(
  ( (MissingZero!12694 (index!53170 (_ BitVec 32))) (Found!12694 (index!53171 (_ BitVec 32))) (Intermediate!12694 (undefined!13506 Bool) (index!53172 (_ BitVec 32)) (x!134941 (_ BitVec 32))) (Undefined!12694) (MissingVacant!12694 (index!53173 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100533 (_ BitVec 32)) SeekEntryResult!12694)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507796 (= res!1027977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48502 a!2804) j!70) mask!2512) (select (arr!48502 a!2804) j!70) a!2804 mask!2512) (Intermediate!12694 false resIndex!21 resX!21)))))

(declare-fun b!1507797 () Bool)

(declare-fun res!1027978 () Bool)

(assert (=> b!1507797 (=> (not res!1027978) (not e!842455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100533 (_ BitVec 32)) Bool)

(assert (=> b!1507797 (= res!1027978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507798 () Bool)

(assert (=> b!1507798 (= e!842455 false)))

(declare-fun lt!654454 () SeekEntryResult!12694)

(assert (=> b!1507798 (= lt!654454 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48502 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128686 res!1027982) b!1507792))

(assert (= (and b!1507792 res!1027979) b!1507793))

(assert (= (and b!1507793 res!1027983) b!1507794))

(assert (= (and b!1507794 res!1027981) b!1507797))

(assert (= (and b!1507797 res!1027978) b!1507791))

(assert (= (and b!1507791 res!1027980) b!1507795))

(assert (= (and b!1507795 res!1027976) b!1507796))

(assert (= (and b!1507796 res!1027977) b!1507798))

(declare-fun m!1390479 () Bool)

(assert (=> start!128686 m!1390479))

(declare-fun m!1390481 () Bool)

(assert (=> start!128686 m!1390481))

(declare-fun m!1390483 () Bool)

(assert (=> b!1507797 m!1390483))

(declare-fun m!1390485 () Bool)

(assert (=> b!1507793 m!1390485))

(assert (=> b!1507793 m!1390485))

(declare-fun m!1390487 () Bool)

(assert (=> b!1507793 m!1390487))

(declare-fun m!1390489 () Bool)

(assert (=> b!1507796 m!1390489))

(assert (=> b!1507796 m!1390489))

(declare-fun m!1390491 () Bool)

(assert (=> b!1507796 m!1390491))

(assert (=> b!1507796 m!1390491))

(assert (=> b!1507796 m!1390489))

(declare-fun m!1390493 () Bool)

(assert (=> b!1507796 m!1390493))

(declare-fun m!1390495 () Bool)

(assert (=> b!1507791 m!1390495))

(assert (=> b!1507794 m!1390489))

(assert (=> b!1507794 m!1390489))

(declare-fun m!1390497 () Bool)

(assert (=> b!1507794 m!1390497))

(assert (=> b!1507798 m!1390489))

(assert (=> b!1507798 m!1390489))

(declare-fun m!1390499 () Bool)

(assert (=> b!1507798 m!1390499))

(push 1)

(assert (not b!1507791))

(assert (not b!1507796))

(assert (not b!1507794))

(assert (not b!1507793))

(assert (not b!1507797))

(assert (not start!128686))

(assert (not b!1507798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

