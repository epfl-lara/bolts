; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122484 () Bool)

(assert start!122484)

(declare-fun b!1418706 () Bool)

(declare-fun res!954422 () Bool)

(declare-fun e!802816 () Bool)

(assert (=> b!1418706 (=> (not res!954422) (not e!802816))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96845 0))(
  ( (array!96846 (arr!46739 (Array (_ BitVec 32) (_ BitVec 64))) (size!47290 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96845)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418706 (= res!954422 (and (= (size!47290 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47290 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47290 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418707 () Bool)

(declare-fun res!954428 () Bool)

(assert (=> b!1418707 (=> (not res!954428) (not e!802816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418707 (= res!954428 (validKeyInArray!0 (select (arr!46739 a!2831) j!81)))))

(declare-fun b!1418708 () Bool)

(assert (=> b!1418708 (= e!802816 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1418709 () Bool)

(declare-fun res!954424 () Bool)

(assert (=> b!1418709 (=> (not res!954424) (not e!802816))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11046 0))(
  ( (MissingZero!11046 (index!46575 (_ BitVec 32))) (Found!11046 (index!46576 (_ BitVec 32))) (Intermediate!11046 (undefined!11858 Bool) (index!46577 (_ BitVec 32)) (x!128247 (_ BitVec 32))) (Undefined!11046) (MissingVacant!11046 (index!46578 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96845 (_ BitVec 32)) SeekEntryResult!11046)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418709 (= res!954424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46739 a!2831) j!81) mask!2608) (select (arr!46739 a!2831) j!81) a!2831 mask!2608) (Intermediate!11046 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1418710 () Bool)

(declare-fun res!954429 () Bool)

(assert (=> b!1418710 (=> (not res!954429) (not e!802816))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418710 (= res!954429 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47290 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47290 a!2831))))))

(declare-fun b!1418711 () Bool)

(declare-fun res!954427 () Bool)

(assert (=> b!1418711 (=> (not res!954427) (not e!802816))))

(declare-datatypes ((List!33429 0))(
  ( (Nil!33426) (Cons!33425 (h!34721 (_ BitVec 64)) (t!48130 List!33429)) )
))
(declare-fun arrayNoDuplicates!0 (array!96845 (_ BitVec 32) List!33429) Bool)

(assert (=> b!1418711 (= res!954427 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33426))))

(declare-fun res!954423 () Bool)

(assert (=> start!122484 (=> (not res!954423) (not e!802816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122484 (= res!954423 (validMask!0 mask!2608))))

(assert (=> start!122484 e!802816))

(assert (=> start!122484 true))

(declare-fun array_inv!35684 (array!96845) Bool)

(assert (=> start!122484 (array_inv!35684 a!2831)))

(declare-fun b!1418712 () Bool)

(declare-fun res!954425 () Bool)

(assert (=> b!1418712 (=> (not res!954425) (not e!802816))))

(assert (=> b!1418712 (= res!954425 (validKeyInArray!0 (select (arr!46739 a!2831) i!982)))))

(declare-fun b!1418713 () Bool)

(declare-fun res!954426 () Bool)

(assert (=> b!1418713 (=> (not res!954426) (not e!802816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96845 (_ BitVec 32)) Bool)

(assert (=> b!1418713 (= res!954426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122484 res!954423) b!1418706))

(assert (= (and b!1418706 res!954422) b!1418712))

(assert (= (and b!1418712 res!954425) b!1418707))

(assert (= (and b!1418707 res!954428) b!1418713))

(assert (= (and b!1418713 res!954426) b!1418711))

(assert (= (and b!1418711 res!954427) b!1418710))

(assert (= (and b!1418710 res!954429) b!1418709))

(assert (= (and b!1418709 res!954424) b!1418708))

(declare-fun m!1309375 () Bool)

(assert (=> b!1418711 m!1309375))

(declare-fun m!1309377 () Bool)

(assert (=> start!122484 m!1309377))

(declare-fun m!1309379 () Bool)

(assert (=> start!122484 m!1309379))

(declare-fun m!1309381 () Bool)

(assert (=> b!1418713 m!1309381))

(declare-fun m!1309383 () Bool)

(assert (=> b!1418709 m!1309383))

(assert (=> b!1418709 m!1309383))

(declare-fun m!1309385 () Bool)

(assert (=> b!1418709 m!1309385))

(assert (=> b!1418709 m!1309385))

(assert (=> b!1418709 m!1309383))

(declare-fun m!1309387 () Bool)

(assert (=> b!1418709 m!1309387))

(declare-fun m!1309389 () Bool)

(assert (=> b!1418712 m!1309389))

(assert (=> b!1418712 m!1309389))

(declare-fun m!1309391 () Bool)

(assert (=> b!1418712 m!1309391))

(assert (=> b!1418707 m!1309383))

(assert (=> b!1418707 m!1309383))

(declare-fun m!1309393 () Bool)

(assert (=> b!1418707 m!1309393))

(check-sat (not b!1418709) (not b!1418707) (not b!1418712) (not b!1418713) (not start!122484) (not b!1418711))
(check-sat)
