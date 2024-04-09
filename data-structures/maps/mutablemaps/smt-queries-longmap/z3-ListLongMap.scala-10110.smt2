; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119196 () Bool)

(assert start!119196)

(declare-fun b!1389928 () Bool)

(declare-fun res!930198 () Bool)

(declare-fun e!787218 () Bool)

(assert (=> b!1389928 (=> (not res!930198) (not e!787218))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95051 0))(
  ( (array!95052 (arr!45887 (Array (_ BitVec 32) (_ BitVec 64))) (size!46438 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95051)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389928 (= res!930198 (and (= (size!46438 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46438 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46438 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389929 () Bool)

(declare-fun res!930203 () Bool)

(assert (=> b!1389929 (=> (not res!930203) (not e!787218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389929 (= res!930203 (validKeyInArray!0 (select (arr!45887 a!2901) i!1037)))))

(declare-fun b!1389930 () Bool)

(declare-fun e!787220 () Bool)

(declare-datatypes ((SeekEntryResult!10226 0))(
  ( (MissingZero!10226 (index!43274 (_ BitVec 32))) (Found!10226 (index!43275 (_ BitVec 32))) (Intermediate!10226 (undefined!11038 Bool) (index!43276 (_ BitVec 32)) (x!124963 (_ BitVec 32))) (Undefined!10226) (MissingVacant!10226 (index!43277 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95051 (_ BitVec 32)) SeekEntryResult!10226)

(assert (=> b!1389930 (= e!787220 (= (seekEntryOrOpen!0 (select (arr!45887 a!2901) j!112) a!2901 mask!2840) (Found!10226 j!112)))))

(declare-fun res!930201 () Bool)

(assert (=> start!119196 (=> (not res!930201) (not e!787218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119196 (= res!930201 (validMask!0 mask!2840))))

(assert (=> start!119196 e!787218))

(assert (=> start!119196 true))

(declare-fun array_inv!34832 (array!95051) Bool)

(assert (=> start!119196 (array_inv!34832 a!2901)))

(declare-fun b!1389931 () Bool)

(declare-fun res!930202 () Bool)

(assert (=> b!1389931 (=> (not res!930202) (not e!787218))))

(declare-datatypes ((List!32586 0))(
  ( (Nil!32583) (Cons!32582 (h!33800 (_ BitVec 64)) (t!47287 List!32586)) )
))
(declare-fun arrayNoDuplicates!0 (array!95051 (_ BitVec 32) List!32586) Bool)

(assert (=> b!1389931 (= res!930202 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32583))))

(declare-fun b!1389932 () Bool)

(declare-fun res!930200 () Bool)

(assert (=> b!1389932 (=> (not res!930200) (not e!787218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95051 (_ BitVec 32)) Bool)

(assert (=> b!1389932 (= res!930200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389933 () Bool)

(declare-fun res!930204 () Bool)

(assert (=> b!1389933 (=> (not res!930204) (not e!787218))))

(assert (=> b!1389933 (= res!930204 (validKeyInArray!0 (select (arr!45887 a!2901) j!112)))))

(declare-fun b!1389934 () Bool)

(assert (=> b!1389934 (= e!787218 (not true))))

(assert (=> b!1389934 e!787220))

(declare-fun res!930199 () Bool)

(assert (=> b!1389934 (=> (not res!930199) (not e!787220))))

(assert (=> b!1389934 (= res!930199 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46406 0))(
  ( (Unit!46407) )
))
(declare-fun lt!610642 () Unit!46406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46406)

(assert (=> b!1389934 (= lt!610642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610641 () SeekEntryResult!10226)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95051 (_ BitVec 32)) SeekEntryResult!10226)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389934 (= lt!610641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45887 a!2901) j!112) mask!2840) (select (arr!45887 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119196 res!930201) b!1389928))

(assert (= (and b!1389928 res!930198) b!1389929))

(assert (= (and b!1389929 res!930203) b!1389933))

(assert (= (and b!1389933 res!930204) b!1389932))

(assert (= (and b!1389932 res!930200) b!1389931))

(assert (= (and b!1389931 res!930202) b!1389934))

(assert (= (and b!1389934 res!930199) b!1389930))

(declare-fun m!1275733 () Bool)

(assert (=> b!1389932 m!1275733))

(declare-fun m!1275735 () Bool)

(assert (=> b!1389930 m!1275735))

(assert (=> b!1389930 m!1275735))

(declare-fun m!1275737 () Bool)

(assert (=> b!1389930 m!1275737))

(assert (=> b!1389933 m!1275735))

(assert (=> b!1389933 m!1275735))

(declare-fun m!1275739 () Bool)

(assert (=> b!1389933 m!1275739))

(declare-fun m!1275741 () Bool)

(assert (=> b!1389931 m!1275741))

(declare-fun m!1275743 () Bool)

(assert (=> start!119196 m!1275743))

(declare-fun m!1275745 () Bool)

(assert (=> start!119196 m!1275745))

(declare-fun m!1275747 () Bool)

(assert (=> b!1389929 m!1275747))

(assert (=> b!1389929 m!1275747))

(declare-fun m!1275749 () Bool)

(assert (=> b!1389929 m!1275749))

(assert (=> b!1389934 m!1275735))

(declare-fun m!1275751 () Bool)

(assert (=> b!1389934 m!1275751))

(assert (=> b!1389934 m!1275735))

(declare-fun m!1275753 () Bool)

(assert (=> b!1389934 m!1275753))

(assert (=> b!1389934 m!1275751))

(assert (=> b!1389934 m!1275735))

(declare-fun m!1275755 () Bool)

(assert (=> b!1389934 m!1275755))

(declare-fun m!1275757 () Bool)

(assert (=> b!1389934 m!1275757))

(check-sat (not b!1389930) (not start!119196) (not b!1389931) (not b!1389932) (not b!1389933) (not b!1389934) (not b!1389929))
