; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120616 () Bool)

(assert start!120616)

(declare-fun b!1403887 () Bool)

(declare-fun res!942513 () Bool)

(declare-fun e!794861 () Bool)

(assert (=> b!1403887 (=> (not res!942513) (not e!794861))))

(declare-datatypes ((array!95943 0))(
  ( (array!95944 (arr!46318 (Array (_ BitVec 32) (_ BitVec 64))) (size!46869 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95943)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403887 (= res!942513 (validKeyInArray!0 (select (arr!46318 a!2901) j!112)))))

(declare-fun b!1403888 () Bool)

(declare-fun res!942509 () Bool)

(assert (=> b!1403888 (=> (not res!942509) (not e!794861))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95943 (_ BitVec 32)) Bool)

(assert (=> b!1403888 (= res!942509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!794859 () Bool)

(declare-fun b!1403889 () Bool)

(declare-datatypes ((SeekEntryResult!10657 0))(
  ( (MissingZero!10657 (index!45004 (_ BitVec 32))) (Found!10657 (index!45005 (_ BitVec 32))) (Intermediate!10657 (undefined!11469 Bool) (index!45006 (_ BitVec 32)) (x!126615 (_ BitVec 32))) (Undefined!10657) (MissingVacant!10657 (index!45007 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95943 (_ BitVec 32)) SeekEntryResult!10657)

(assert (=> b!1403889 (= e!794859 (= (seekEntryOrOpen!0 (select (arr!46318 a!2901) j!112) a!2901 mask!2840) (Found!10657 j!112)))))

(declare-fun b!1403890 () Bool)

(declare-fun res!942508 () Bool)

(assert (=> b!1403890 (=> (not res!942508) (not e!794861))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403890 (= res!942508 (validKeyInArray!0 (select (arr!46318 a!2901) i!1037)))))

(declare-fun b!1403891 () Bool)

(assert (=> b!1403891 (= e!794861 (not true))))

(assert (=> b!1403891 e!794859))

(declare-fun res!942511 () Bool)

(assert (=> b!1403891 (=> (not res!942511) (not e!794859))))

(assert (=> b!1403891 (= res!942511 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47268 0))(
  ( (Unit!47269) )
))
(declare-fun lt!618499 () Unit!47268)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47268)

(assert (=> b!1403891 (= lt!618499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618498 () SeekEntryResult!10657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95943 (_ BitVec 32)) SeekEntryResult!10657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403891 (= lt!618498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46318 a!2901) j!112) mask!2840) (select (arr!46318 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403892 () Bool)

(declare-fun res!942507 () Bool)

(assert (=> b!1403892 (=> (not res!942507) (not e!794861))))

(assert (=> b!1403892 (= res!942507 (and (= (size!46869 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46869 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46869 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942512 () Bool)

(assert (=> start!120616 (=> (not res!942512) (not e!794861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120616 (= res!942512 (validMask!0 mask!2840))))

(assert (=> start!120616 e!794861))

(assert (=> start!120616 true))

(declare-fun array_inv!35263 (array!95943) Bool)

(assert (=> start!120616 (array_inv!35263 a!2901)))

(declare-fun b!1403893 () Bool)

(declare-fun res!942510 () Bool)

(assert (=> b!1403893 (=> (not res!942510) (not e!794861))))

(declare-datatypes ((List!33017 0))(
  ( (Nil!33014) (Cons!33013 (h!34261 (_ BitVec 64)) (t!47718 List!33017)) )
))
(declare-fun arrayNoDuplicates!0 (array!95943 (_ BitVec 32) List!33017) Bool)

(assert (=> b!1403893 (= res!942510 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33014))))

(assert (= (and start!120616 res!942512) b!1403892))

(assert (= (and b!1403892 res!942507) b!1403890))

(assert (= (and b!1403890 res!942508) b!1403887))

(assert (= (and b!1403887 res!942513) b!1403888))

(assert (= (and b!1403888 res!942509) b!1403893))

(assert (= (and b!1403893 res!942510) b!1403891))

(assert (= (and b!1403891 res!942511) b!1403889))

(declare-fun m!1292729 () Bool)

(assert (=> b!1403887 m!1292729))

(assert (=> b!1403887 m!1292729))

(declare-fun m!1292731 () Bool)

(assert (=> b!1403887 m!1292731))

(assert (=> b!1403889 m!1292729))

(assert (=> b!1403889 m!1292729))

(declare-fun m!1292733 () Bool)

(assert (=> b!1403889 m!1292733))

(declare-fun m!1292735 () Bool)

(assert (=> b!1403888 m!1292735))

(declare-fun m!1292737 () Bool)

(assert (=> b!1403890 m!1292737))

(assert (=> b!1403890 m!1292737))

(declare-fun m!1292739 () Bool)

(assert (=> b!1403890 m!1292739))

(declare-fun m!1292741 () Bool)

(assert (=> start!120616 m!1292741))

(declare-fun m!1292743 () Bool)

(assert (=> start!120616 m!1292743))

(assert (=> b!1403891 m!1292729))

(declare-fun m!1292745 () Bool)

(assert (=> b!1403891 m!1292745))

(assert (=> b!1403891 m!1292729))

(declare-fun m!1292747 () Bool)

(assert (=> b!1403891 m!1292747))

(assert (=> b!1403891 m!1292745))

(assert (=> b!1403891 m!1292729))

(declare-fun m!1292749 () Bool)

(assert (=> b!1403891 m!1292749))

(declare-fun m!1292751 () Bool)

(assert (=> b!1403891 m!1292751))

(declare-fun m!1292753 () Bool)

(assert (=> b!1403893 m!1292753))

(push 1)

(assert (not b!1403889))

(assert (not b!1403890))

(assert (not b!1403893))

(assert (not b!1403887))

(assert (not b!1403891))

(assert (not b!1403888))

(assert (not start!120616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

