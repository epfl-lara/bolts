; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120232 () Bool)

(assert start!120232)

(declare-fun b!1398920 () Bool)

(declare-fun res!937778 () Bool)

(declare-fun e!792006 () Bool)

(assert (=> b!1398920 (=> (not res!937778) (not e!792006))))

(declare-datatypes ((array!95622 0))(
  ( (array!95623 (arr!46159 (Array (_ BitVec 32) (_ BitVec 64))) (size!46710 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95622)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398920 (= res!937778 (validKeyInArray!0 (select (arr!46159 a!2901) i!1037)))))

(declare-fun b!1398921 () Bool)

(declare-fun res!937780 () Bool)

(assert (=> b!1398921 (=> (not res!937780) (not e!792006))))

(declare-datatypes ((List!32858 0))(
  ( (Nil!32855) (Cons!32854 (h!34099 (_ BitVec 64)) (t!47559 List!32858)) )
))
(declare-fun arrayNoDuplicates!0 (array!95622 (_ BitVec 32) List!32858) Bool)

(assert (=> b!1398921 (= res!937780 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32855))))

(declare-fun b!1398923 () Bool)

(declare-fun e!792004 () Bool)

(assert (=> b!1398923 (= e!792004 true)))

(declare-datatypes ((SeekEntryResult!10498 0))(
  ( (MissingZero!10498 (index!44365 (_ BitVec 32))) (Found!10498 (index!44366 (_ BitVec 32))) (Intermediate!10498 (undefined!11310 Bool) (index!44367 (_ BitVec 32)) (x!126020 (_ BitVec 32))) (Undefined!10498) (MissingVacant!10498 (index!44368 (_ BitVec 32))) )
))
(declare-fun lt!615200 () SeekEntryResult!10498)

(declare-fun lt!615203 () SeekEntryResult!10498)

(assert (=> b!1398923 (and (not (undefined!11310 lt!615203)) (= (index!44367 lt!615203) i!1037) (bvslt (x!126020 lt!615203) (x!126020 lt!615200)) (= (select (store (arr!46159 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44367 lt!615203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!46950 0))(
  ( (Unit!46951) )
))
(declare-fun lt!615202 () Unit!46950)

(declare-fun lt!615204 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46950)

(assert (=> b!1398923 (= lt!615202 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615204 (x!126020 lt!615200) (index!44367 lt!615200) (x!126020 lt!615203) (index!44367 lt!615203) (undefined!11310 lt!615203) mask!2840))))

(declare-fun b!1398924 () Bool)

(declare-fun e!792005 () Bool)

(assert (=> b!1398924 (= e!792006 (not e!792005))))

(declare-fun res!937785 () Bool)

(assert (=> b!1398924 (=> res!937785 e!792005)))

(assert (=> b!1398924 (= res!937785 (or (not (is-Intermediate!10498 lt!615200)) (undefined!11310 lt!615200)))))

(declare-fun e!792008 () Bool)

(assert (=> b!1398924 e!792008))

(declare-fun res!937781 () Bool)

(assert (=> b!1398924 (=> (not res!937781) (not e!792008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95622 (_ BitVec 32)) Bool)

(assert (=> b!1398924 (= res!937781 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615201 () Unit!46950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46950)

(assert (=> b!1398924 (= lt!615201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95622 (_ BitVec 32)) SeekEntryResult!10498)

(assert (=> b!1398924 (= lt!615200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615204 (select (arr!46159 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398924 (= lt!615204 (toIndex!0 (select (arr!46159 a!2901) j!112) mask!2840))))

(declare-fun b!1398925 () Bool)

(declare-fun res!937777 () Bool)

(assert (=> b!1398925 (=> (not res!937777) (not e!792006))))

(assert (=> b!1398925 (= res!937777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398926 () Bool)

(declare-fun res!937782 () Bool)

(assert (=> b!1398926 (=> (not res!937782) (not e!792006))))

(assert (=> b!1398926 (= res!937782 (validKeyInArray!0 (select (arr!46159 a!2901) j!112)))))

(declare-fun b!1398922 () Bool)

(declare-fun res!937784 () Bool)

(assert (=> b!1398922 (=> (not res!937784) (not e!792006))))

(assert (=> b!1398922 (= res!937784 (and (= (size!46710 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46710 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46710 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937779 () Bool)

(assert (=> start!120232 (=> (not res!937779) (not e!792006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120232 (= res!937779 (validMask!0 mask!2840))))

(assert (=> start!120232 e!792006))

(assert (=> start!120232 true))

(declare-fun array_inv!35104 (array!95622) Bool)

(assert (=> start!120232 (array_inv!35104 a!2901)))

(declare-fun b!1398927 () Bool)

(assert (=> b!1398927 (= e!792005 e!792004)))

(declare-fun res!937783 () Bool)

(assert (=> b!1398927 (=> res!937783 e!792004)))

(assert (=> b!1398927 (= res!937783 (or (= lt!615200 lt!615203) (not (is-Intermediate!10498 lt!615203))))))

(declare-fun lt!615205 () (_ BitVec 64))

(assert (=> b!1398927 (= lt!615203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615205 mask!2840) lt!615205 (array!95623 (store (arr!46159 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46710 a!2901)) mask!2840))))

(assert (=> b!1398927 (= lt!615205 (select (store (arr!46159 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398928 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95622 (_ BitVec 32)) SeekEntryResult!10498)

(assert (=> b!1398928 (= e!792008 (= (seekEntryOrOpen!0 (select (arr!46159 a!2901) j!112) a!2901 mask!2840) (Found!10498 j!112)))))

(assert (= (and start!120232 res!937779) b!1398922))

(assert (= (and b!1398922 res!937784) b!1398920))

(assert (= (and b!1398920 res!937778) b!1398926))

(assert (= (and b!1398926 res!937782) b!1398925))

(assert (= (and b!1398925 res!937777) b!1398921))

(assert (= (and b!1398921 res!937780) b!1398924))

(assert (= (and b!1398924 res!937781) b!1398928))

(assert (= (and b!1398924 (not res!937785)) b!1398927))

(assert (= (and b!1398927 (not res!937783)) b!1398923))

(declare-fun m!1286141 () Bool)

(assert (=> b!1398925 m!1286141))

(declare-fun m!1286143 () Bool)

(assert (=> b!1398924 m!1286143))

(declare-fun m!1286145 () Bool)

(assert (=> b!1398924 m!1286145))

(assert (=> b!1398924 m!1286143))

(assert (=> b!1398924 m!1286143))

(declare-fun m!1286147 () Bool)

(assert (=> b!1398924 m!1286147))

(declare-fun m!1286149 () Bool)

(assert (=> b!1398924 m!1286149))

(declare-fun m!1286151 () Bool)

(assert (=> b!1398924 m!1286151))

(declare-fun m!1286153 () Bool)

(assert (=> start!120232 m!1286153))

(declare-fun m!1286155 () Bool)

(assert (=> start!120232 m!1286155))

(assert (=> b!1398926 m!1286143))

(assert (=> b!1398926 m!1286143))

(declare-fun m!1286157 () Bool)

(assert (=> b!1398926 m!1286157))

(declare-fun m!1286159 () Bool)

(assert (=> b!1398927 m!1286159))

(declare-fun m!1286161 () Bool)

(assert (=> b!1398927 m!1286161))

(assert (=> b!1398927 m!1286159))

(declare-fun m!1286163 () Bool)

(assert (=> b!1398927 m!1286163))

(declare-fun m!1286165 () Bool)

(assert (=> b!1398927 m!1286165))

(assert (=> b!1398923 m!1286161))

(declare-fun m!1286167 () Bool)

(assert (=> b!1398923 m!1286167))

(declare-fun m!1286169 () Bool)

(assert (=> b!1398923 m!1286169))

(declare-fun m!1286171 () Bool)

(assert (=> b!1398920 m!1286171))

(assert (=> b!1398920 m!1286171))

(declare-fun m!1286173 () Bool)

(assert (=> b!1398920 m!1286173))

(assert (=> b!1398928 m!1286143))

(assert (=> b!1398928 m!1286143))

(declare-fun m!1286175 () Bool)

(assert (=> b!1398928 m!1286175))

(declare-fun m!1286177 () Bool)

(assert (=> b!1398921 m!1286177))

(push 1)

