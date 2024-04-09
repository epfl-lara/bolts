; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122032 () Bool)

(assert start!122032)

(declare-fun b!1415778 () Bool)

(declare-fun e!801341 () Bool)

(declare-fun e!801347 () Bool)

(assert (=> b!1415778 (= e!801341 e!801347)))

(declare-fun res!951929 () Bool)

(assert (=> b!1415778 (=> res!951929 e!801347)))

(declare-datatypes ((SeekEntryResult!10978 0))(
  ( (MissingZero!10978 (index!46303 (_ BitVec 32))) (Found!10978 (index!46304 (_ BitVec 32))) (Intermediate!10978 (undefined!11790 Bool) (index!46305 (_ BitVec 32)) (x!127916 (_ BitVec 32))) (Undefined!10978) (MissingVacant!10978 (index!46306 (_ BitVec 32))) )
))
(declare-fun lt!624379 () SeekEntryResult!10978)

(declare-fun lt!624381 () SeekEntryResult!10978)

(assert (=> b!1415778 (= res!951929 (or (= lt!624379 lt!624381) (not (is-Intermediate!10978 lt!624381))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96636 0))(
  ( (array!96637 (arr!46645 (Array (_ BitVec 32) (_ BitVec 64))) (size!47196 (_ BitVec 32))) )
))
(declare-fun lt!624380 () array!96636)

(declare-fun lt!624376 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96636 (_ BitVec 32)) SeekEntryResult!10978)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415778 (= lt!624381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624376 mask!2840) lt!624376 lt!624380 mask!2840))))

(declare-fun a!2901 () array!96636)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415778 (= lt!624376 (select (store (arr!46645 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415778 (= lt!624380 (array!96637 (store (arr!46645 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47196 a!2901)))))

(declare-fun b!1415779 () Bool)

(declare-fun e!801346 () Bool)

(assert (=> b!1415779 (= e!801346 true)))

(declare-fun lt!624378 () (_ BitVec 32))

(declare-fun lt!624375 () SeekEntryResult!10978)

(assert (=> b!1415779 (= lt!624375 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624378 lt!624376 lt!624380 mask!2840))))

(declare-fun b!1415780 () Bool)

(declare-fun res!951939 () Bool)

(declare-fun e!801343 () Bool)

(assert (=> b!1415780 (=> (not res!951939) (not e!801343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415780 (= res!951939 (validKeyInArray!0 (select (arr!46645 a!2901) j!112)))))

(declare-fun e!801344 () Bool)

(declare-fun b!1415781 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96636 (_ BitVec 32)) SeekEntryResult!10978)

(assert (=> b!1415781 (= e!801344 (= (seekEntryOrOpen!0 (select (arr!46645 a!2901) j!112) a!2901 mask!2840) (Found!10978 j!112)))))

(declare-fun b!1415782 () Bool)

(declare-fun res!951934 () Bool)

(assert (=> b!1415782 (=> (not res!951934) (not e!801343))))

(assert (=> b!1415782 (= res!951934 (and (= (size!47196 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47196 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47196 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415783 () Bool)

(declare-fun res!951931 () Bool)

(assert (=> b!1415783 (=> (not res!951931) (not e!801343))))

(assert (=> b!1415783 (= res!951931 (validKeyInArray!0 (select (arr!46645 a!2901) i!1037)))))

(declare-fun b!1415784 () Bool)

(assert (=> b!1415784 (= e!801343 (not e!801341))))

(declare-fun res!951930 () Bool)

(assert (=> b!1415784 (=> res!951930 e!801341)))

(assert (=> b!1415784 (= res!951930 (or (not (is-Intermediate!10978 lt!624379)) (undefined!11790 lt!624379)))))

(assert (=> b!1415784 e!801344))

(declare-fun res!951936 () Bool)

(assert (=> b!1415784 (=> (not res!951936) (not e!801344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96636 (_ BitVec 32)) Bool)

(assert (=> b!1415784 (= res!951936 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47880 0))(
  ( (Unit!47881) )
))
(declare-fun lt!624377 () Unit!47880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47880)

(assert (=> b!1415784 (= lt!624377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415784 (= lt!624379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624378 (select (arr!46645 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415784 (= lt!624378 (toIndex!0 (select (arr!46645 a!2901) j!112) mask!2840))))

(declare-fun b!1415785 () Bool)

(declare-fun res!951938 () Bool)

(assert (=> b!1415785 (=> (not res!951938) (not e!801343))))

(assert (=> b!1415785 (= res!951938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415786 () Bool)

(declare-fun res!951933 () Bool)

(assert (=> b!1415786 (=> (not res!951933) (not e!801343))))

(declare-datatypes ((List!33344 0))(
  ( (Nil!33341) (Cons!33340 (h!34627 (_ BitVec 64)) (t!48045 List!33344)) )
))
(declare-fun arrayNoDuplicates!0 (array!96636 (_ BitVec 32) List!33344) Bool)

(assert (=> b!1415786 (= res!951933 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33341))))

(declare-fun b!1415787 () Bool)

(declare-fun e!801345 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96636 (_ BitVec 32)) SeekEntryResult!10978)

(assert (=> b!1415787 (= e!801345 (= (seekEntryOrOpen!0 lt!624376 lt!624380 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127916 lt!624381) (index!46305 lt!624381) (index!46305 lt!624381) (select (arr!46645 a!2901) j!112) lt!624380 mask!2840)))))

(declare-fun res!951937 () Bool)

(assert (=> start!122032 (=> (not res!951937) (not e!801343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122032 (= res!951937 (validMask!0 mask!2840))))

(assert (=> start!122032 e!801343))

(assert (=> start!122032 true))

(declare-fun array_inv!35590 (array!96636) Bool)

(assert (=> start!122032 (array_inv!35590 a!2901)))

(declare-fun b!1415788 () Bool)

(assert (=> b!1415788 (= e!801347 e!801346)))

(declare-fun res!951932 () Bool)

(assert (=> b!1415788 (=> res!951932 e!801346)))

(assert (=> b!1415788 (= res!951932 (or (bvslt (x!127916 lt!624379) #b00000000000000000000000000000000) (bvsgt (x!127916 lt!624379) #b01111111111111111111111111111110) (bvslt (x!127916 lt!624381) #b00000000000000000000000000000000) (bvsgt (x!127916 lt!624381) #b01111111111111111111111111111110) (bvslt lt!624378 #b00000000000000000000000000000000) (bvsge lt!624378 (size!47196 a!2901)) (bvslt (index!46305 lt!624379) #b00000000000000000000000000000000) (bvsge (index!46305 lt!624379) (size!47196 a!2901)) (bvslt (index!46305 lt!624381) #b00000000000000000000000000000000) (bvsge (index!46305 lt!624381) (size!47196 a!2901)) (not (= lt!624379 (Intermediate!10978 false (index!46305 lt!624379) (x!127916 lt!624379)))) (not (= lt!624381 (Intermediate!10978 false (index!46305 lt!624381) (x!127916 lt!624381))))))))

(assert (=> b!1415788 e!801345))

(declare-fun res!951935 () Bool)

(assert (=> b!1415788 (=> (not res!951935) (not e!801345))))

(assert (=> b!1415788 (= res!951935 (and (not (undefined!11790 lt!624381)) (= (index!46305 lt!624381) i!1037) (bvslt (x!127916 lt!624381) (x!127916 lt!624379)) (= (select (store (arr!46645 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46305 lt!624381)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!624382 () Unit!47880)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47880)

(assert (=> b!1415788 (= lt!624382 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624378 (x!127916 lt!624379) (index!46305 lt!624379) (x!127916 lt!624381) (index!46305 lt!624381) (undefined!11790 lt!624381) mask!2840))))

(assert (= (and start!122032 res!951937) b!1415782))

(assert (= (and b!1415782 res!951934) b!1415783))

(assert (= (and b!1415783 res!951931) b!1415780))

(assert (= (and b!1415780 res!951939) b!1415785))

(assert (= (and b!1415785 res!951938) b!1415786))

(assert (= (and b!1415786 res!951933) b!1415784))

(assert (= (and b!1415784 res!951936) b!1415781))

(assert (= (and b!1415784 (not res!951930)) b!1415778))

(assert (= (and b!1415778 (not res!951929)) b!1415788))

(assert (= (and b!1415788 res!951935) b!1415787))

(assert (= (and b!1415788 (not res!951932)) b!1415779))

(declare-fun m!1306271 () Bool)

(assert (=> b!1415785 m!1306271))

(declare-fun m!1306273 () Bool)

(assert (=> b!1415778 m!1306273))

(assert (=> b!1415778 m!1306273))

(declare-fun m!1306275 () Bool)

(assert (=> b!1415778 m!1306275))

(declare-fun m!1306277 () Bool)

(assert (=> b!1415778 m!1306277))

(declare-fun m!1306279 () Bool)

(assert (=> b!1415778 m!1306279))

(assert (=> b!1415788 m!1306277))

(declare-fun m!1306281 () Bool)

(assert (=> b!1415788 m!1306281))

(declare-fun m!1306283 () Bool)

(assert (=> b!1415788 m!1306283))

(declare-fun m!1306285 () Bool)

(assert (=> b!1415779 m!1306285))

(declare-fun m!1306287 () Bool)

(assert (=> b!1415780 m!1306287))

(assert (=> b!1415780 m!1306287))

(declare-fun m!1306289 () Bool)

(assert (=> b!1415780 m!1306289))

(declare-fun m!1306291 () Bool)

(assert (=> b!1415783 m!1306291))

(assert (=> b!1415783 m!1306291))

(declare-fun m!1306293 () Bool)

(assert (=> b!1415783 m!1306293))

(declare-fun m!1306295 () Bool)

(assert (=> b!1415787 m!1306295))

(assert (=> b!1415787 m!1306287))

(assert (=> b!1415787 m!1306287))

(declare-fun m!1306297 () Bool)

(assert (=> b!1415787 m!1306297))

(assert (=> b!1415784 m!1306287))

(declare-fun m!1306299 () Bool)

(assert (=> b!1415784 m!1306299))

(assert (=> b!1415784 m!1306287))

(declare-fun m!1306301 () Bool)

(assert (=> b!1415784 m!1306301))

(assert (=> b!1415784 m!1306287))

(declare-fun m!1306303 () Bool)

(assert (=> b!1415784 m!1306303))

(declare-fun m!1306305 () Bool)

(assert (=> b!1415784 m!1306305))

(assert (=> b!1415781 m!1306287))

(assert (=> b!1415781 m!1306287))

(declare-fun m!1306307 () Bool)

(assert (=> b!1415781 m!1306307))

(declare-fun m!1306309 () Bool)

(assert (=> start!122032 m!1306309))

(declare-fun m!1306311 () Bool)

(assert (=> start!122032 m!1306311))

(declare-fun m!1306313 () Bool)

(assert (=> b!1415786 m!1306313))

(push 1)

