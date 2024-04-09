; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118598 () Bool)

(assert start!118598)

(declare-fun res!927291 () Bool)

(declare-fun e!785221 () Bool)

(assert (=> start!118598 (=> (not res!927291) (not e!785221))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118598 (= res!927291 (validMask!0 mask!2987))))

(assert (=> start!118598 e!785221))

(assert (=> start!118598 true))

(declare-datatypes ((array!94792 0))(
  ( (array!94793 (arr!45768 (Array (_ BitVec 32) (_ BitVec 64))) (size!46319 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94792)

(declare-fun array_inv!34713 (array!94792) Bool)

(assert (=> start!118598 (array_inv!34713 a!2938)))

(declare-fun b!1385929 () Bool)

(declare-fun res!927292 () Bool)

(assert (=> b!1385929 (=> (not res!927292) (not e!785221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94792 (_ BitVec 32)) Bool)

(assert (=> b!1385929 (= res!927292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385930 () Bool)

(declare-fun res!927294 () Bool)

(assert (=> b!1385930 (=> (not res!927294) (not e!785221))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385930 (= res!927294 (validKeyInArray!0 (select (arr!45768 a!2938) i!1065)))))

(declare-fun b!1385931 () Bool)

(declare-fun res!927289 () Bool)

(assert (=> b!1385931 (=> (not res!927289) (not e!785221))))

(declare-datatypes ((List!32476 0))(
  ( (Nil!32473) (Cons!32472 (h!33681 (_ BitVec 64)) (t!47177 List!32476)) )
))
(declare-fun arrayNoDuplicates!0 (array!94792 (_ BitVec 32) List!32476) Bool)

(assert (=> b!1385931 (= res!927289 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32473))))

(declare-fun b!1385932 () Bool)

(declare-fun res!927288 () Bool)

(assert (=> b!1385932 (=> (not res!927288) (not e!785221))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385932 (= res!927288 (and (not (= (select (arr!45768 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45768 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385933 () Bool)

(declare-fun res!927293 () Bool)

(assert (=> b!1385933 (=> (not res!927293) (not e!785221))))

(assert (=> b!1385933 (= res!927293 (validKeyInArray!0 (select (arr!45768 a!2938) startIndex!16)))))

(declare-fun b!1385934 () Bool)

(assert (=> b!1385934 (= e!785221 (not true))))

(declare-datatypes ((SeekEntryResult!10133 0))(
  ( (MissingZero!10133 (index!42902 (_ BitVec 32))) (Found!10133 (index!42903 (_ BitVec 32))) (Intermediate!10133 (undefined!10945 Bool) (index!42904 (_ BitVec 32)) (x!124529 (_ BitVec 32))) (Undefined!10133) (MissingVacant!10133 (index!42905 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94792 (_ BitVec 32)) SeekEntryResult!10133)

(assert (=> b!1385934 (= (seekEntryOrOpen!0 (select (arr!45768 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45768 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94793 (store (arr!45768 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46319 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46208 0))(
  ( (Unit!46209) )
))
(declare-fun lt!609298 () Unit!46208)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94792 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46208)

(assert (=> b!1385934 (= lt!609298 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385935 () Bool)

(declare-fun res!927290 () Bool)

(assert (=> b!1385935 (=> (not res!927290) (not e!785221))))

(assert (=> b!1385935 (= res!927290 (and (= (size!46319 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46319 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46319 a!2938))))))

(assert (= (and start!118598 res!927291) b!1385935))

(assert (= (and b!1385935 res!927290) b!1385930))

(assert (= (and b!1385930 res!927294) b!1385931))

(assert (= (and b!1385931 res!927289) b!1385929))

(assert (= (and b!1385929 res!927292) b!1385932))

(assert (= (and b!1385932 res!927288) b!1385933))

(assert (= (and b!1385933 res!927293) b!1385934))

(declare-fun m!1271283 () Bool)

(assert (=> b!1385932 m!1271283))

(declare-fun m!1271285 () Bool)

(assert (=> b!1385933 m!1271285))

(assert (=> b!1385933 m!1271285))

(declare-fun m!1271287 () Bool)

(assert (=> b!1385933 m!1271287))

(declare-fun m!1271289 () Bool)

(assert (=> start!118598 m!1271289))

(declare-fun m!1271291 () Bool)

(assert (=> start!118598 m!1271291))

(declare-fun m!1271293 () Bool)

(assert (=> b!1385931 m!1271293))

(declare-fun m!1271295 () Bool)

(assert (=> b!1385934 m!1271295))

(assert (=> b!1385934 m!1271295))

(declare-fun m!1271297 () Bool)

(assert (=> b!1385934 m!1271297))

(declare-fun m!1271299 () Bool)

(assert (=> b!1385934 m!1271299))

(declare-fun m!1271301 () Bool)

(assert (=> b!1385934 m!1271301))

(assert (=> b!1385934 m!1271285))

(assert (=> b!1385934 m!1271285))

(declare-fun m!1271303 () Bool)

(assert (=> b!1385934 m!1271303))

(declare-fun m!1271305 () Bool)

(assert (=> b!1385929 m!1271305))

(assert (=> b!1385930 m!1271283))

(assert (=> b!1385930 m!1271283))

(declare-fun m!1271307 () Bool)

(assert (=> b!1385930 m!1271307))

(push 1)

(assert (not start!118598))

(assert (not b!1385931))

(assert (not b!1385933))

(assert (not b!1385929))

(assert (not b!1385934))

(assert (not b!1385930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

