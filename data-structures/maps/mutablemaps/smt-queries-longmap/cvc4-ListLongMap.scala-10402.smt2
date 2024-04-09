; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122618 () Bool)

(assert start!122618)

(declare-fun b!1419639 () Bool)

(declare-fun res!955185 () Bool)

(declare-fun e!803191 () Bool)

(assert (=> b!1419639 (=> (not res!955185) (not e!803191))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96901 0))(
  ( (array!96902 (arr!46764 (Array (_ BitVec 32) (_ BitVec 64))) (size!47315 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96901)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419639 (= res!955185 (and (= (size!47315 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47315 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47315 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419640 () Bool)

(declare-fun res!955181 () Bool)

(assert (=> b!1419640 (=> (not res!955181) (not e!803191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419640 (= res!955181 (validKeyInArray!0 (select (arr!46764 a!2831) i!982)))))

(declare-fun b!1419641 () Bool)

(declare-fun res!955188 () Bool)

(assert (=> b!1419641 (=> (not res!955188) (not e!803191))))

(declare-datatypes ((List!33454 0))(
  ( (Nil!33451) (Cons!33450 (h!34752 (_ BitVec 64)) (t!48155 List!33454)) )
))
(declare-fun arrayNoDuplicates!0 (array!96901 (_ BitVec 32) List!33454) Bool)

(assert (=> b!1419641 (= res!955188 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33451))))

(declare-fun res!955186 () Bool)

(assert (=> start!122618 (=> (not res!955186) (not e!803191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122618 (= res!955186 (validMask!0 mask!2608))))

(assert (=> start!122618 e!803191))

(assert (=> start!122618 true))

(declare-fun array_inv!35709 (array!96901) Bool)

(assert (=> start!122618 (array_inv!35709 a!2831)))

(declare-fun b!1419642 () Bool)

(declare-fun res!955184 () Bool)

(assert (=> b!1419642 (=> (not res!955184) (not e!803191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96901 (_ BitVec 32)) Bool)

(assert (=> b!1419642 (= res!955184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419643 () Bool)

(assert (=> b!1419643 (= e!803191 false)))

(declare-datatypes ((SeekEntryResult!11071 0))(
  ( (MissingZero!11071 (index!46675 (_ BitVec 32))) (Found!11071 (index!46676 (_ BitVec 32))) (Intermediate!11071 (undefined!11883 Bool) (index!46677 (_ BitVec 32)) (x!128348 (_ BitVec 32))) (Undefined!11071) (MissingVacant!11071 (index!46678 (_ BitVec 32))) )
))
(declare-fun lt!625792 () SeekEntryResult!11071)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96901 (_ BitVec 32)) SeekEntryResult!11071)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419643 (= lt!625792 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46764 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46764 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96902 (store (arr!46764 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47315 a!2831)) mask!2608))))

(declare-fun b!1419644 () Bool)

(declare-fun res!955182 () Bool)

(assert (=> b!1419644 (=> (not res!955182) (not e!803191))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419644 (= res!955182 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47315 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47315 a!2831))))))

(declare-fun b!1419645 () Bool)

(declare-fun res!955187 () Bool)

(assert (=> b!1419645 (=> (not res!955187) (not e!803191))))

(assert (=> b!1419645 (= res!955187 (validKeyInArray!0 (select (arr!46764 a!2831) j!81)))))

(declare-fun b!1419646 () Bool)

(declare-fun res!955183 () Bool)

(assert (=> b!1419646 (=> (not res!955183) (not e!803191))))

(assert (=> b!1419646 (= res!955183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46764 a!2831) j!81) mask!2608) (select (arr!46764 a!2831) j!81) a!2831 mask!2608) (Intermediate!11071 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122618 res!955186) b!1419639))

(assert (= (and b!1419639 res!955185) b!1419640))

(assert (= (and b!1419640 res!955181) b!1419645))

(assert (= (and b!1419645 res!955187) b!1419642))

(assert (= (and b!1419642 res!955184) b!1419641))

(assert (= (and b!1419641 res!955188) b!1419644))

(assert (= (and b!1419644 res!955182) b!1419646))

(assert (= (and b!1419646 res!955183) b!1419643))

(declare-fun m!1310149 () Bool)

(assert (=> start!122618 m!1310149))

(declare-fun m!1310151 () Bool)

(assert (=> start!122618 m!1310151))

(declare-fun m!1310153 () Bool)

(assert (=> b!1419641 m!1310153))

(declare-fun m!1310155 () Bool)

(assert (=> b!1419642 m!1310155))

(declare-fun m!1310157 () Bool)

(assert (=> b!1419645 m!1310157))

(assert (=> b!1419645 m!1310157))

(declare-fun m!1310159 () Bool)

(assert (=> b!1419645 m!1310159))

(declare-fun m!1310161 () Bool)

(assert (=> b!1419643 m!1310161))

(declare-fun m!1310163 () Bool)

(assert (=> b!1419643 m!1310163))

(assert (=> b!1419643 m!1310163))

(declare-fun m!1310165 () Bool)

(assert (=> b!1419643 m!1310165))

(assert (=> b!1419643 m!1310165))

(assert (=> b!1419643 m!1310163))

(declare-fun m!1310167 () Bool)

(assert (=> b!1419643 m!1310167))

(assert (=> b!1419646 m!1310157))

(assert (=> b!1419646 m!1310157))

(declare-fun m!1310169 () Bool)

(assert (=> b!1419646 m!1310169))

(assert (=> b!1419646 m!1310169))

(assert (=> b!1419646 m!1310157))

(declare-fun m!1310171 () Bool)

(assert (=> b!1419646 m!1310171))

(declare-fun m!1310173 () Bool)

(assert (=> b!1419640 m!1310173))

(assert (=> b!1419640 m!1310173))

(declare-fun m!1310175 () Bool)

(assert (=> b!1419640 m!1310175))

(push 1)

(assert (not start!122618))

(assert (not b!1419641))

(assert (not b!1419642))

(assert (not b!1419646))

(assert (not b!1419643))

(assert (not b!1419640))

(assert (not b!1419645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

