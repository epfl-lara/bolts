; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118444 () Bool)

(assert start!118444)

(declare-fun res!926357 () Bool)

(declare-fun e!784756 () Bool)

(assert (=> start!118444 (=> (not res!926357) (not e!784756))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118444 (= res!926357 (validMask!0 mask!2987))))

(assert (=> start!118444 e!784756))

(assert (=> start!118444 true))

(declare-datatypes ((array!94665 0))(
  ( (array!94666 (arr!45706 (Array (_ BitVec 32) (_ BitVec 64))) (size!46257 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94665)

(declare-fun array_inv!34651 (array!94665) Bool)

(assert (=> start!118444 (array_inv!34651 a!2938)))

(declare-fun b!1384928 () Bool)

(declare-fun res!926360 () Bool)

(assert (=> b!1384928 (=> (not res!926360) (not e!784756))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384928 (= res!926360 (and (= (size!46257 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46257 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46257 a!2938))))))

(declare-fun b!1384929 () Bool)

(declare-fun res!926356 () Bool)

(assert (=> b!1384929 (=> (not res!926356) (not e!784756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94665 (_ BitVec 32)) Bool)

(assert (=> b!1384929 (= res!926356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384930 () Bool)

(declare-fun res!926355 () Bool)

(assert (=> b!1384930 (=> (not res!926355) (not e!784756))))

(declare-datatypes ((List!32414 0))(
  ( (Nil!32411) (Cons!32410 (h!33619 (_ BitVec 64)) (t!47115 List!32414)) )
))
(declare-fun arrayNoDuplicates!0 (array!94665 (_ BitVec 32) List!32414) Bool)

(assert (=> b!1384930 (= res!926355 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32411))))

(declare-fun b!1384931 () Bool)

(declare-fun res!926359 () Bool)

(assert (=> b!1384931 (=> (not res!926359) (not e!784756))))

(assert (=> b!1384931 (= res!926359 (and (not (= (select (arr!45706 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45706 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384932 () Bool)

(declare-datatypes ((Unit!46176 0))(
  ( (Unit!46177) )
))
(declare-fun e!784755 () Unit!46176)

(declare-fun Unit!46178 () Unit!46176)

(assert (=> b!1384932 (= e!784755 Unit!46178)))

(declare-fun b!1384933 () Bool)

(assert (=> b!1384933 (= e!784756 false)))

(declare-fun lt!609082 () Unit!46176)

(assert (=> b!1384933 (= lt!609082 e!784755)))

(declare-fun c!128729 () Bool)

(declare-fun e!784757 () Bool)

(assert (=> b!1384933 (= c!128729 e!784757)))

(declare-fun res!926358 () Bool)

(assert (=> b!1384933 (=> (not res!926358) (not e!784757))))

(assert (=> b!1384933 (= res!926358 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384934 () Bool)

(declare-fun lt!609081 () Unit!46176)

(assert (=> b!1384934 (= e!784755 lt!609081)))

(declare-fun lt!609080 () Unit!46176)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46176)

(assert (=> b!1384934 (= lt!609080 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10120 0))(
  ( (MissingZero!10120 (index!42850 (_ BitVec 32))) (Found!10120 (index!42851 (_ BitVec 32))) (Intermediate!10120 (undefined!10932 Bool) (index!42852 (_ BitVec 32)) (x!124356 (_ BitVec 32))) (Undefined!10120) (MissingVacant!10120 (index!42853 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94665 (_ BitVec 32)) SeekEntryResult!10120)

(assert (=> b!1384934 (= (seekEntryOrOpen!0 (select (arr!45706 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45706 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94666 (store (arr!45706 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46257 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46176)

(assert (=> b!1384934 (= lt!609081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384934 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384935 () Bool)

(declare-fun res!926361 () Bool)

(assert (=> b!1384935 (=> (not res!926361) (not e!784756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384935 (= res!926361 (validKeyInArray!0 (select (arr!45706 a!2938) i!1065)))))

(declare-fun b!1384936 () Bool)

(assert (=> b!1384936 (= e!784757 (validKeyInArray!0 (select (arr!45706 a!2938) startIndex!16)))))

(assert (= (and start!118444 res!926357) b!1384928))

(assert (= (and b!1384928 res!926360) b!1384935))

(assert (= (and b!1384935 res!926361) b!1384930))

(assert (= (and b!1384930 res!926355) b!1384929))

(assert (= (and b!1384929 res!926356) b!1384931))

(assert (= (and b!1384931 res!926359) b!1384933))

(assert (= (and b!1384933 res!926358) b!1384936))

(assert (= (and b!1384933 c!128729) b!1384934))

(assert (= (and b!1384933 (not c!128729)) b!1384932))

(declare-fun m!1270301 () Bool)

(assert (=> b!1384934 m!1270301))

(declare-fun m!1270303 () Bool)

(assert (=> b!1384934 m!1270303))

(assert (=> b!1384934 m!1270303))

(declare-fun m!1270305 () Bool)

(assert (=> b!1384934 m!1270305))

(declare-fun m!1270307 () Bool)

(assert (=> b!1384934 m!1270307))

(declare-fun m!1270309 () Bool)

(assert (=> b!1384934 m!1270309))

(declare-fun m!1270311 () Bool)

(assert (=> b!1384934 m!1270311))

(declare-fun m!1270313 () Bool)

(assert (=> b!1384934 m!1270313))

(assert (=> b!1384934 m!1270311))

(declare-fun m!1270315 () Bool)

(assert (=> b!1384934 m!1270315))

(declare-fun m!1270317 () Bool)

(assert (=> start!118444 m!1270317))

(declare-fun m!1270319 () Bool)

(assert (=> start!118444 m!1270319))

(declare-fun m!1270321 () Bool)

(assert (=> b!1384929 m!1270321))

(declare-fun m!1270323 () Bool)

(assert (=> b!1384935 m!1270323))

(assert (=> b!1384935 m!1270323))

(declare-fun m!1270325 () Bool)

(assert (=> b!1384935 m!1270325))

(assert (=> b!1384931 m!1270323))

(assert (=> b!1384936 m!1270311))

(assert (=> b!1384936 m!1270311))

(declare-fun m!1270327 () Bool)

(assert (=> b!1384936 m!1270327))

(declare-fun m!1270329 () Bool)

(assert (=> b!1384930 m!1270329))

(push 1)

(assert (not start!118444))

(assert (not b!1384934))

(assert (not b!1384929))

(assert (not b!1384930))

(assert (not b!1384935))

(assert (not b!1384936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

