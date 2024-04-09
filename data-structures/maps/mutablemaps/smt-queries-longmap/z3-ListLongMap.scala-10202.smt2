; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120240 () Bool)

(assert start!120240)

(declare-fun b!1399028 () Bool)

(declare-fun res!937885 () Bool)

(declare-fun e!792067 () Bool)

(assert (=> b!1399028 (=> (not res!937885) (not e!792067))))

(declare-datatypes ((array!95630 0))(
  ( (array!95631 (arr!46163 (Array (_ BitVec 32) (_ BitVec 64))) (size!46714 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95630)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399028 (= res!937885 (validKeyInArray!0 (select (arr!46163 a!2901) j!112)))))

(declare-fun b!1399029 () Bool)

(declare-fun res!937893 () Bool)

(assert (=> b!1399029 (=> (not res!937893) (not e!792067))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399029 (= res!937893 (and (= (size!46714 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46714 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46714 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!937890 () Bool)

(assert (=> start!120240 (=> (not res!937890) (not e!792067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120240 (= res!937890 (validMask!0 mask!2840))))

(assert (=> start!120240 e!792067))

(assert (=> start!120240 true))

(declare-fun array_inv!35108 (array!95630) Bool)

(assert (=> start!120240 (array_inv!35108 a!2901)))

(declare-fun b!1399030 () Bool)

(declare-fun e!792065 () Bool)

(assert (=> b!1399030 (= e!792067 (not e!792065))))

(declare-fun res!937889 () Bool)

(assert (=> b!1399030 (=> res!937889 e!792065)))

(declare-datatypes ((SeekEntryResult!10502 0))(
  ( (MissingZero!10502 (index!44381 (_ BitVec 32))) (Found!10502 (index!44382 (_ BitVec 32))) (Intermediate!10502 (undefined!11314 Bool) (index!44383 (_ BitVec 32)) (x!126032 (_ BitVec 32))) (Undefined!10502) (MissingVacant!10502 (index!44384 (_ BitVec 32))) )
))
(declare-fun lt!615276 () SeekEntryResult!10502)

(get-info :version)

(assert (=> b!1399030 (= res!937889 (or (not ((_ is Intermediate!10502) lt!615276)) (undefined!11314 lt!615276)))))

(declare-fun e!792068 () Bool)

(assert (=> b!1399030 e!792068))

(declare-fun res!937887 () Bool)

(assert (=> b!1399030 (=> (not res!937887) (not e!792068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95630 (_ BitVec 32)) Bool)

(assert (=> b!1399030 (= res!937887 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46958 0))(
  ( (Unit!46959) )
))
(declare-fun lt!615273 () Unit!46958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46958)

(assert (=> b!1399030 (= lt!615273 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615275 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95630 (_ BitVec 32)) SeekEntryResult!10502)

(assert (=> b!1399030 (= lt!615276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615275 (select (arr!46163 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399030 (= lt!615275 (toIndex!0 (select (arr!46163 a!2901) j!112) mask!2840))))

(declare-fun b!1399031 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95630 (_ BitVec 32)) SeekEntryResult!10502)

(assert (=> b!1399031 (= e!792068 (= (seekEntryOrOpen!0 (select (arr!46163 a!2901) j!112) a!2901 mask!2840) (Found!10502 j!112)))))

(declare-fun b!1399032 () Bool)

(declare-fun e!792066 () Bool)

(assert (=> b!1399032 (= e!792065 e!792066)))

(declare-fun res!937888 () Bool)

(assert (=> b!1399032 (=> res!937888 e!792066)))

(declare-fun lt!615272 () SeekEntryResult!10502)

(assert (=> b!1399032 (= res!937888 (or (= lt!615276 lt!615272) (not ((_ is Intermediate!10502) lt!615272))))))

(declare-fun lt!615277 () (_ BitVec 64))

(assert (=> b!1399032 (= lt!615272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615277 mask!2840) lt!615277 (array!95631 (store (arr!46163 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46714 a!2901)) mask!2840))))

(assert (=> b!1399032 (= lt!615277 (select (store (arr!46163 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399033 () Bool)

(declare-fun res!937892 () Bool)

(assert (=> b!1399033 (=> (not res!937892) (not e!792067))))

(assert (=> b!1399033 (= res!937892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399034 () Bool)

(assert (=> b!1399034 (= e!792066 true)))

(assert (=> b!1399034 (and (not (undefined!11314 lt!615272)) (= (index!44383 lt!615272) i!1037) (bvslt (x!126032 lt!615272) (x!126032 lt!615276)) (= (select (store (arr!46163 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44383 lt!615272)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615274 () Unit!46958)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46958)

(assert (=> b!1399034 (= lt!615274 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615275 (x!126032 lt!615276) (index!44383 lt!615276) (x!126032 lt!615272) (index!44383 lt!615272) (undefined!11314 lt!615272) mask!2840))))

(declare-fun b!1399035 () Bool)

(declare-fun res!937891 () Bool)

(assert (=> b!1399035 (=> (not res!937891) (not e!792067))))

(declare-datatypes ((List!32862 0))(
  ( (Nil!32859) (Cons!32858 (h!34103 (_ BitVec 64)) (t!47563 List!32862)) )
))
(declare-fun arrayNoDuplicates!0 (array!95630 (_ BitVec 32) List!32862) Bool)

(assert (=> b!1399035 (= res!937891 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32859))))

(declare-fun b!1399036 () Bool)

(declare-fun res!937886 () Bool)

(assert (=> b!1399036 (=> (not res!937886) (not e!792067))))

(assert (=> b!1399036 (= res!937886 (validKeyInArray!0 (select (arr!46163 a!2901) i!1037)))))

(assert (= (and start!120240 res!937890) b!1399029))

(assert (= (and b!1399029 res!937893) b!1399036))

(assert (= (and b!1399036 res!937886) b!1399028))

(assert (= (and b!1399028 res!937885) b!1399033))

(assert (= (and b!1399033 res!937892) b!1399035))

(assert (= (and b!1399035 res!937891) b!1399030))

(assert (= (and b!1399030 res!937887) b!1399031))

(assert (= (and b!1399030 (not res!937889)) b!1399032))

(assert (= (and b!1399032 (not res!937888)) b!1399034))

(declare-fun m!1286293 () Bool)

(assert (=> b!1399028 m!1286293))

(assert (=> b!1399028 m!1286293))

(declare-fun m!1286295 () Bool)

(assert (=> b!1399028 m!1286295))

(declare-fun m!1286297 () Bool)

(assert (=> start!120240 m!1286297))

(declare-fun m!1286299 () Bool)

(assert (=> start!120240 m!1286299))

(assert (=> b!1399031 m!1286293))

(assert (=> b!1399031 m!1286293))

(declare-fun m!1286301 () Bool)

(assert (=> b!1399031 m!1286301))

(declare-fun m!1286303 () Bool)

(assert (=> b!1399032 m!1286303))

(declare-fun m!1286305 () Bool)

(assert (=> b!1399032 m!1286305))

(assert (=> b!1399032 m!1286303))

(declare-fun m!1286307 () Bool)

(assert (=> b!1399032 m!1286307))

(declare-fun m!1286309 () Bool)

(assert (=> b!1399032 m!1286309))

(assert (=> b!1399030 m!1286293))

(declare-fun m!1286311 () Bool)

(assert (=> b!1399030 m!1286311))

(assert (=> b!1399030 m!1286293))

(assert (=> b!1399030 m!1286293))

(declare-fun m!1286313 () Bool)

(assert (=> b!1399030 m!1286313))

(declare-fun m!1286315 () Bool)

(assert (=> b!1399030 m!1286315))

(declare-fun m!1286317 () Bool)

(assert (=> b!1399030 m!1286317))

(declare-fun m!1286319 () Bool)

(assert (=> b!1399036 m!1286319))

(assert (=> b!1399036 m!1286319))

(declare-fun m!1286321 () Bool)

(assert (=> b!1399036 m!1286321))

(declare-fun m!1286323 () Bool)

(assert (=> b!1399033 m!1286323))

(declare-fun m!1286325 () Bool)

(assert (=> b!1399035 m!1286325))

(assert (=> b!1399034 m!1286305))

(declare-fun m!1286327 () Bool)

(assert (=> b!1399034 m!1286327))

(declare-fun m!1286329 () Bool)

(assert (=> b!1399034 m!1286329))

(check-sat (not b!1399030) (not b!1399035) (not b!1399031) (not start!120240) (not b!1399036) (not b!1399033) (not b!1399034) (not b!1399028) (not b!1399032))
(check-sat)
