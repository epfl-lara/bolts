; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119154 () Bool)

(assert start!119154)

(declare-fun b!1389545 () Bool)

(declare-fun res!929820 () Bool)

(declare-fun e!787088 () Bool)

(assert (=> b!1389545 (=> (not res!929820) (not e!787088))))

(declare-datatypes ((array!95009 0))(
  ( (array!95010 (arr!45866 (Array (_ BitVec 32) (_ BitVec 64))) (size!46417 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95009)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95009 (_ BitVec 32)) Bool)

(assert (=> b!1389545 (= res!929820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389546 () Bool)

(declare-fun res!929815 () Bool)

(assert (=> b!1389546 (=> (not res!929815) (not e!787088))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389546 (= res!929815 (and (= (size!46417 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46417 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46417 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389547 () Bool)

(declare-fun res!929816 () Bool)

(assert (=> b!1389547 (=> (not res!929816) (not e!787088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389547 (= res!929816 (validKeyInArray!0 (select (arr!45866 a!2901) j!112)))))

(declare-fun res!929819 () Bool)

(assert (=> start!119154 (=> (not res!929819) (not e!787088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119154 (= res!929819 (validMask!0 mask!2840))))

(assert (=> start!119154 e!787088))

(assert (=> start!119154 true))

(declare-fun array_inv!34811 (array!95009) Bool)

(assert (=> start!119154 (array_inv!34811 a!2901)))

(declare-fun b!1389548 () Bool)

(declare-fun res!929818 () Bool)

(assert (=> b!1389548 (=> (not res!929818) (not e!787088))))

(declare-datatypes ((List!32565 0))(
  ( (Nil!32562) (Cons!32561 (h!33779 (_ BitVec 64)) (t!47266 List!32565)) )
))
(declare-fun arrayNoDuplicates!0 (array!95009 (_ BitVec 32) List!32565) Bool)

(assert (=> b!1389548 (= res!929818 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32562))))

(declare-fun b!1389549 () Bool)

(assert (=> b!1389549 (= e!787088 false)))

(declare-datatypes ((SeekEntryResult!10205 0))(
  ( (MissingZero!10205 (index!43190 (_ BitVec 32))) (Found!10205 (index!43191 (_ BitVec 32))) (Intermediate!10205 (undefined!11017 Bool) (index!43192 (_ BitVec 32)) (x!124886 (_ BitVec 32))) (Undefined!10205) (MissingVacant!10205 (index!43193 (_ BitVec 32))) )
))
(declare-fun lt!610537 () SeekEntryResult!10205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95009 (_ BitVec 32)) SeekEntryResult!10205)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389549 (= lt!610537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45866 a!2901) j!112) mask!2840) (select (arr!45866 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389550 () Bool)

(declare-fun res!929817 () Bool)

(assert (=> b!1389550 (=> (not res!929817) (not e!787088))))

(assert (=> b!1389550 (= res!929817 (validKeyInArray!0 (select (arr!45866 a!2901) i!1037)))))

(assert (= (and start!119154 res!929819) b!1389546))

(assert (= (and b!1389546 res!929815) b!1389550))

(assert (= (and b!1389550 res!929817) b!1389547))

(assert (= (and b!1389547 res!929816) b!1389545))

(assert (= (and b!1389545 res!929820) b!1389548))

(assert (= (and b!1389548 res!929818) b!1389549))

(declare-fun m!1275259 () Bool)

(assert (=> b!1389550 m!1275259))

(assert (=> b!1389550 m!1275259))

(declare-fun m!1275261 () Bool)

(assert (=> b!1389550 m!1275261))

(declare-fun m!1275263 () Bool)

(assert (=> b!1389545 m!1275263))

(declare-fun m!1275265 () Bool)

(assert (=> start!119154 m!1275265))

(declare-fun m!1275267 () Bool)

(assert (=> start!119154 m!1275267))

(declare-fun m!1275269 () Bool)

(assert (=> b!1389547 m!1275269))

(assert (=> b!1389547 m!1275269))

(declare-fun m!1275271 () Bool)

(assert (=> b!1389547 m!1275271))

(assert (=> b!1389549 m!1275269))

(assert (=> b!1389549 m!1275269))

(declare-fun m!1275273 () Bool)

(assert (=> b!1389549 m!1275273))

(assert (=> b!1389549 m!1275273))

(assert (=> b!1389549 m!1275269))

(declare-fun m!1275275 () Bool)

(assert (=> b!1389549 m!1275275))

(declare-fun m!1275277 () Bool)

(assert (=> b!1389548 m!1275277))

(check-sat (not b!1389549) (not start!119154) (not b!1389550) (not b!1389547) (not b!1389545) (not b!1389548))
