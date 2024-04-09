; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119166 () Bool)

(assert start!119166)

(declare-fun b!1389653 () Bool)

(declare-fun e!787123 () Bool)

(assert (=> b!1389653 (= e!787123 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95021 0))(
  ( (array!95022 (arr!45872 (Array (_ BitVec 32) (_ BitVec 64))) (size!46423 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95021)

(declare-datatypes ((SeekEntryResult!10211 0))(
  ( (MissingZero!10211 (index!43214 (_ BitVec 32))) (Found!10211 (index!43215 (_ BitVec 32))) (Intermediate!10211 (undefined!11023 Bool) (index!43216 (_ BitVec 32)) (x!124908 (_ BitVec 32))) (Undefined!10211) (MissingVacant!10211 (index!43217 (_ BitVec 32))) )
))
(declare-fun lt!610555 () SeekEntryResult!10211)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95021 (_ BitVec 32)) SeekEntryResult!10211)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389653 (= lt!610555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45872 a!2901) j!112) mask!2840) (select (arr!45872 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389654 () Bool)

(declare-fun res!929923 () Bool)

(assert (=> b!1389654 (=> (not res!929923) (not e!787123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389654 (= res!929923 (validKeyInArray!0 (select (arr!45872 a!2901) j!112)))))

(declare-fun b!1389655 () Bool)

(declare-fun res!929925 () Bool)

(assert (=> b!1389655 (=> (not res!929925) (not e!787123))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389655 (= res!929925 (validKeyInArray!0 (select (arr!45872 a!2901) i!1037)))))

(declare-fun b!1389656 () Bool)

(declare-fun res!929926 () Bool)

(assert (=> b!1389656 (=> (not res!929926) (not e!787123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95021 (_ BitVec 32)) Bool)

(assert (=> b!1389656 (= res!929926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929924 () Bool)

(assert (=> start!119166 (=> (not res!929924) (not e!787123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119166 (= res!929924 (validMask!0 mask!2840))))

(assert (=> start!119166 e!787123))

(assert (=> start!119166 true))

(declare-fun array_inv!34817 (array!95021) Bool)

(assert (=> start!119166 (array_inv!34817 a!2901)))

(declare-fun b!1389657 () Bool)

(declare-fun res!929928 () Bool)

(assert (=> b!1389657 (=> (not res!929928) (not e!787123))))

(assert (=> b!1389657 (= res!929928 (and (= (size!46423 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46423 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46423 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389658 () Bool)

(declare-fun res!929927 () Bool)

(assert (=> b!1389658 (=> (not res!929927) (not e!787123))))

(declare-datatypes ((List!32571 0))(
  ( (Nil!32568) (Cons!32567 (h!33785 (_ BitVec 64)) (t!47272 List!32571)) )
))
(declare-fun arrayNoDuplicates!0 (array!95021 (_ BitVec 32) List!32571) Bool)

(assert (=> b!1389658 (= res!929927 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32568))))

(assert (= (and start!119166 res!929924) b!1389657))

(assert (= (and b!1389657 res!929928) b!1389655))

(assert (= (and b!1389655 res!929925) b!1389654))

(assert (= (and b!1389654 res!929923) b!1389656))

(assert (= (and b!1389656 res!929926) b!1389658))

(assert (= (and b!1389658 res!929927) b!1389653))

(declare-fun m!1275379 () Bool)

(assert (=> b!1389656 m!1275379))

(declare-fun m!1275381 () Bool)

(assert (=> b!1389658 m!1275381))

(declare-fun m!1275383 () Bool)

(assert (=> b!1389654 m!1275383))

(assert (=> b!1389654 m!1275383))

(declare-fun m!1275385 () Bool)

(assert (=> b!1389654 m!1275385))

(declare-fun m!1275387 () Bool)

(assert (=> b!1389655 m!1275387))

(assert (=> b!1389655 m!1275387))

(declare-fun m!1275389 () Bool)

(assert (=> b!1389655 m!1275389))

(assert (=> b!1389653 m!1275383))

(assert (=> b!1389653 m!1275383))

(declare-fun m!1275391 () Bool)

(assert (=> b!1389653 m!1275391))

(assert (=> b!1389653 m!1275391))

(assert (=> b!1389653 m!1275383))

(declare-fun m!1275393 () Bool)

(assert (=> b!1389653 m!1275393))

(declare-fun m!1275395 () Bool)

(assert (=> start!119166 m!1275395))

(declare-fun m!1275397 () Bool)

(assert (=> start!119166 m!1275397))

(check-sat (not b!1389654) (not b!1389656) (not b!1389658) (not b!1389655) (not start!119166) (not b!1389653))
