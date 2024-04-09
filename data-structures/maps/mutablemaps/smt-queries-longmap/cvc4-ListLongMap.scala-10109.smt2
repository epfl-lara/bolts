; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119192 () Bool)

(assert start!119192)

(declare-fun b!1389887 () Bool)

(declare-fun e!787202 () Bool)

(assert (=> b!1389887 (= e!787202 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95047 0))(
  ( (array!95048 (arr!45885 (Array (_ BitVec 32) (_ BitVec 64))) (size!46436 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95047)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95047 (_ BitVec 32)) Bool)

(assert (=> b!1389887 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46402 0))(
  ( (Unit!46403) )
))
(declare-fun lt!610630 () Unit!46402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46402)

(assert (=> b!1389887 (= lt!610630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10224 0))(
  ( (MissingZero!10224 (index!43266 (_ BitVec 32))) (Found!10224 (index!43267 (_ BitVec 32))) (Intermediate!10224 (undefined!11036 Bool) (index!43268 (_ BitVec 32)) (x!124953 (_ BitVec 32))) (Undefined!10224) (MissingVacant!10224 (index!43269 (_ BitVec 32))) )
))
(declare-fun lt!610629 () SeekEntryResult!10224)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95047 (_ BitVec 32)) SeekEntryResult!10224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389887 (= lt!610629 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45885 a!2901) j!112) mask!2840) (select (arr!45885 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389888 () Bool)

(declare-fun res!930158 () Bool)

(assert (=> b!1389888 (=> (not res!930158) (not e!787202))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389888 (= res!930158 (validKeyInArray!0 (select (arr!45885 a!2901) j!112)))))

(declare-fun b!1389889 () Bool)

(declare-fun res!930161 () Bool)

(assert (=> b!1389889 (=> (not res!930161) (not e!787202))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389889 (= res!930161 (validKeyInArray!0 (select (arr!45885 a!2901) i!1037)))))

(declare-fun b!1389890 () Bool)

(declare-fun res!930162 () Bool)

(assert (=> b!1389890 (=> (not res!930162) (not e!787202))))

(assert (=> b!1389890 (= res!930162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389891 () Bool)

(declare-fun res!930159 () Bool)

(assert (=> b!1389891 (=> (not res!930159) (not e!787202))))

(declare-datatypes ((List!32584 0))(
  ( (Nil!32581) (Cons!32580 (h!33798 (_ BitVec 64)) (t!47285 List!32584)) )
))
(declare-fun arrayNoDuplicates!0 (array!95047 (_ BitVec 32) List!32584) Bool)

(assert (=> b!1389891 (= res!930159 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32581))))

(declare-fun res!930157 () Bool)

(assert (=> start!119192 (=> (not res!930157) (not e!787202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119192 (= res!930157 (validMask!0 mask!2840))))

(assert (=> start!119192 e!787202))

(assert (=> start!119192 true))

(declare-fun array_inv!34830 (array!95047) Bool)

(assert (=> start!119192 (array_inv!34830 a!2901)))

(declare-fun b!1389892 () Bool)

(declare-fun res!930160 () Bool)

(assert (=> b!1389892 (=> (not res!930160) (not e!787202))))

(assert (=> b!1389892 (= res!930160 (and (= (size!46436 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46436 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46436 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119192 res!930157) b!1389892))

(assert (= (and b!1389892 res!930160) b!1389889))

(assert (= (and b!1389889 res!930161) b!1389888))

(assert (= (and b!1389888 res!930158) b!1389890))

(assert (= (and b!1389890 res!930162) b!1389891))

(assert (= (and b!1389891 res!930159) b!1389887))

(declare-fun m!1275683 () Bool)

(assert (=> b!1389891 m!1275683))

(declare-fun m!1275685 () Bool)

(assert (=> b!1389889 m!1275685))

(assert (=> b!1389889 m!1275685))

(declare-fun m!1275687 () Bool)

(assert (=> b!1389889 m!1275687))

(declare-fun m!1275689 () Bool)

(assert (=> b!1389890 m!1275689))

(declare-fun m!1275691 () Bool)

(assert (=> start!119192 m!1275691))

(declare-fun m!1275693 () Bool)

(assert (=> start!119192 m!1275693))

(declare-fun m!1275695 () Bool)

(assert (=> b!1389888 m!1275695))

(assert (=> b!1389888 m!1275695))

(declare-fun m!1275697 () Bool)

(assert (=> b!1389888 m!1275697))

(assert (=> b!1389887 m!1275695))

(declare-fun m!1275699 () Bool)

(assert (=> b!1389887 m!1275699))

(assert (=> b!1389887 m!1275695))

(declare-fun m!1275701 () Bool)

(assert (=> b!1389887 m!1275701))

(assert (=> b!1389887 m!1275699))

(assert (=> b!1389887 m!1275695))

(declare-fun m!1275703 () Bool)

(assert (=> b!1389887 m!1275703))

(declare-fun m!1275705 () Bool)

(assert (=> b!1389887 m!1275705))

(push 1)

(assert (not b!1389888))

(assert (not start!119192))

(assert (not b!1389891))

(assert (not b!1389890))

(assert (not b!1389889))

(assert (not b!1389887))

(check-sat)

(pop 1)

(push 1)

