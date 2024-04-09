; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119732 () Bool)

(assert start!119732)

(declare-fun b!1394165 () Bool)

(declare-fun e!789402 () Bool)

(declare-fun e!789404 () Bool)

(assert (=> b!1394165 (= e!789402 e!789404)))

(declare-fun res!933683 () Bool)

(assert (=> b!1394165 (=> res!933683 e!789404)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10359 0))(
  ( (MissingZero!10359 (index!43806 (_ BitVec 32))) (Found!10359 (index!43807 (_ BitVec 32))) (Intermediate!10359 (undefined!11171 Bool) (index!43808 (_ BitVec 32)) (x!125478 (_ BitVec 32))) (Undefined!10359) (MissingVacant!10359 (index!43809 (_ BitVec 32))) )
))
(declare-fun lt!612263 () SeekEntryResult!10359)

(declare-fun lt!612262 () (_ BitVec 64))

(declare-datatypes ((array!95332 0))(
  ( (array!95333 (arr!46020 (Array (_ BitVec 32) (_ BitVec 64))) (size!46571 (_ BitVec 32))) )
))
(declare-fun lt!612267 () array!95332)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95332 (_ BitVec 32)) SeekEntryResult!10359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394165 (= res!933683 (not (= lt!612263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612262 mask!2840) lt!612262 lt!612267 mask!2840))))))

(declare-fun a!2901 () array!95332)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394165 (= lt!612262 (select (store (arr!46020 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394165 (= lt!612267 (array!95333 (store (arr!46020 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46571 a!2901)))))

(declare-fun b!1394166 () Bool)

(declare-fun e!789403 () Bool)

(assert (=> b!1394166 (= e!789403 (not e!789402))))

(declare-fun res!933682 () Bool)

(assert (=> b!1394166 (=> res!933682 e!789402)))

(assert (=> b!1394166 (= res!933682 (or (not (is-Intermediate!10359 lt!612263)) (undefined!11171 lt!612263)))))

(declare-fun lt!612265 () SeekEntryResult!10359)

(assert (=> b!1394166 (= lt!612265 (Found!10359 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95332 (_ BitVec 32)) SeekEntryResult!10359)

(assert (=> b!1394166 (= lt!612265 (seekEntryOrOpen!0 (select (arr!46020 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95332 (_ BitVec 32)) Bool)

(assert (=> b!1394166 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46672 0))(
  ( (Unit!46673) )
))
(declare-fun lt!612264 () Unit!46672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46672)

(assert (=> b!1394166 (= lt!612264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612268 () (_ BitVec 32))

(assert (=> b!1394166 (= lt!612263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612268 (select (arr!46020 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394166 (= lt!612268 (toIndex!0 (select (arr!46020 a!2901) j!112) mask!2840))))

(declare-fun b!1394167 () Bool)

(declare-fun res!933687 () Bool)

(assert (=> b!1394167 (=> (not res!933687) (not e!789403))))

(declare-datatypes ((List!32719 0))(
  ( (Nil!32716) (Cons!32715 (h!33948 (_ BitVec 64)) (t!47420 List!32719)) )
))
(declare-fun arrayNoDuplicates!0 (array!95332 (_ BitVec 32) List!32719) Bool)

(assert (=> b!1394167 (= res!933687 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32716))))

(declare-fun b!1394168 () Bool)

(assert (=> b!1394168 (= e!789404 true)))

(assert (=> b!1394168 (= lt!612265 (seekEntryOrOpen!0 lt!612262 lt!612267 mask!2840))))

(declare-fun lt!612266 () Unit!46672)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46672)

(assert (=> b!1394168 (= lt!612266 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612268 (x!125478 lt!612263) (index!43808 lt!612263) mask!2840))))

(declare-fun b!1394169 () Bool)

(declare-fun res!933688 () Bool)

(assert (=> b!1394169 (=> (not res!933688) (not e!789403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394169 (= res!933688 (validKeyInArray!0 (select (arr!46020 a!2901) j!112)))))

(declare-fun res!933685 () Bool)

(assert (=> start!119732 (=> (not res!933685) (not e!789403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119732 (= res!933685 (validMask!0 mask!2840))))

(assert (=> start!119732 e!789403))

(assert (=> start!119732 true))

(declare-fun array_inv!34965 (array!95332) Bool)

(assert (=> start!119732 (array_inv!34965 a!2901)))

(declare-fun b!1394170 () Bool)

(declare-fun res!933684 () Bool)

(assert (=> b!1394170 (=> res!933684 e!789404)))

(assert (=> b!1394170 (= res!933684 (or (bvslt (x!125478 lt!612263) #b00000000000000000000000000000000) (bvsgt (x!125478 lt!612263) #b01111111111111111111111111111110) (bvslt lt!612268 #b00000000000000000000000000000000) (bvsge lt!612268 (size!46571 a!2901)) (bvslt (index!43808 lt!612263) #b00000000000000000000000000000000) (bvsge (index!43808 lt!612263) (size!46571 a!2901)) (not (= lt!612263 (Intermediate!10359 false (index!43808 lt!612263) (x!125478 lt!612263))))))))

(declare-fun b!1394171 () Bool)

(declare-fun res!933689 () Bool)

(assert (=> b!1394171 (=> (not res!933689) (not e!789403))))

(assert (=> b!1394171 (= res!933689 (validKeyInArray!0 (select (arr!46020 a!2901) i!1037)))))

(declare-fun b!1394172 () Bool)

(declare-fun res!933686 () Bool)

(assert (=> b!1394172 (=> (not res!933686) (not e!789403))))

(assert (=> b!1394172 (= res!933686 (and (= (size!46571 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46571 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46571 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394173 () Bool)

(declare-fun res!933690 () Bool)

(assert (=> b!1394173 (=> (not res!933690) (not e!789403))))

(assert (=> b!1394173 (= res!933690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119732 res!933685) b!1394172))

(assert (= (and b!1394172 res!933686) b!1394171))

(assert (= (and b!1394171 res!933689) b!1394169))

(assert (= (and b!1394169 res!933688) b!1394173))

(assert (= (and b!1394173 res!933690) b!1394167))

(assert (= (and b!1394167 res!933687) b!1394166))

(assert (= (and b!1394166 (not res!933682)) b!1394165))

(assert (= (and b!1394165 (not res!933683)) b!1394170))

(assert (= (and b!1394170 (not res!933684)) b!1394168))

(declare-fun m!1280469 () Bool)

(assert (=> b!1394169 m!1280469))

(assert (=> b!1394169 m!1280469))

(declare-fun m!1280471 () Bool)

(assert (=> b!1394169 m!1280471))

(declare-fun m!1280473 () Bool)

(assert (=> b!1394168 m!1280473))

(declare-fun m!1280475 () Bool)

(assert (=> b!1394168 m!1280475))

(assert (=> b!1394166 m!1280469))

(declare-fun m!1280477 () Bool)

(assert (=> b!1394166 m!1280477))

(assert (=> b!1394166 m!1280469))

(assert (=> b!1394166 m!1280469))

(declare-fun m!1280479 () Bool)

(assert (=> b!1394166 m!1280479))

(declare-fun m!1280481 () Bool)

(assert (=> b!1394166 m!1280481))

(declare-fun m!1280483 () Bool)

(assert (=> b!1394166 m!1280483))

(assert (=> b!1394166 m!1280469))

(declare-fun m!1280485 () Bool)

(assert (=> b!1394166 m!1280485))

(declare-fun m!1280487 () Bool)

(assert (=> b!1394167 m!1280487))

(declare-fun m!1280489 () Bool)

(assert (=> b!1394165 m!1280489))

(assert (=> b!1394165 m!1280489))

(declare-fun m!1280491 () Bool)

(assert (=> b!1394165 m!1280491))

(declare-fun m!1280493 () Bool)

(assert (=> b!1394165 m!1280493))

(declare-fun m!1280495 () Bool)

(assert (=> b!1394165 m!1280495))

(declare-fun m!1280497 () Bool)

(assert (=> b!1394173 m!1280497))

(declare-fun m!1280499 () Bool)

(assert (=> b!1394171 m!1280499))

(assert (=> b!1394171 m!1280499))

(declare-fun m!1280501 () Bool)

(assert (=> b!1394171 m!1280501))

(declare-fun m!1280503 () Bool)

(assert (=> start!119732 m!1280503))

(declare-fun m!1280505 () Bool)

(assert (=> start!119732 m!1280505))

(push 1)

