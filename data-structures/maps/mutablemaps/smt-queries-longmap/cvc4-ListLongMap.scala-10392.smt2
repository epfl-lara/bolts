; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122474 () Bool)

(assert start!122474)

(declare-fun b!1418596 () Bool)

(declare-fun res!954314 () Bool)

(declare-fun e!802786 () Bool)

(assert (=> b!1418596 (=> (not res!954314) (not e!802786))))

(declare-datatypes ((array!96835 0))(
  ( (array!96836 (arr!46734 (Array (_ BitVec 32) (_ BitVec 64))) (size!47285 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96835)

(declare-datatypes ((List!33424 0))(
  ( (Nil!33421) (Cons!33420 (h!34716 (_ BitVec 64)) (t!48125 List!33424)) )
))
(declare-fun arrayNoDuplicates!0 (array!96835 (_ BitVec 32) List!33424) Bool)

(assert (=> b!1418596 (= res!954314 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33421))))

(declare-fun b!1418597 () Bool)

(assert (=> b!1418597 (= e!802786 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!625588 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418597 (= lt!625588 (toIndex!0 (select (arr!46734 a!2831) j!81) mask!2608))))

(declare-fun b!1418598 () Bool)

(declare-fun res!954318 () Bool)

(assert (=> b!1418598 (=> (not res!954318) (not e!802786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96835 (_ BitVec 32)) Bool)

(assert (=> b!1418598 (= res!954318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418600 () Bool)

(declare-fun res!954313 () Bool)

(assert (=> b!1418600 (=> (not res!954313) (not e!802786))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418600 (= res!954313 (validKeyInArray!0 (select (arr!46734 a!2831) i!982)))))

(declare-fun b!1418601 () Bool)

(declare-fun res!954317 () Bool)

(assert (=> b!1418601 (=> (not res!954317) (not e!802786))))

(assert (=> b!1418601 (= res!954317 (and (= (size!47285 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47285 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47285 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418602 () Bool)

(declare-fun res!954312 () Bool)

(assert (=> b!1418602 (=> (not res!954312) (not e!802786))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418602 (= res!954312 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47285 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47285 a!2831))))))

(declare-fun res!954315 () Bool)

(assert (=> start!122474 (=> (not res!954315) (not e!802786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122474 (= res!954315 (validMask!0 mask!2608))))

(assert (=> start!122474 e!802786))

(assert (=> start!122474 true))

(declare-fun array_inv!35679 (array!96835) Bool)

(assert (=> start!122474 (array_inv!35679 a!2831)))

(declare-fun b!1418599 () Bool)

(declare-fun res!954316 () Bool)

(assert (=> b!1418599 (=> (not res!954316) (not e!802786))))

(assert (=> b!1418599 (= res!954316 (validKeyInArray!0 (select (arr!46734 a!2831) j!81)))))

(assert (= (and start!122474 res!954315) b!1418601))

(assert (= (and b!1418601 res!954317) b!1418600))

(assert (= (and b!1418600 res!954313) b!1418599))

(assert (= (and b!1418599 res!954316) b!1418598))

(assert (= (and b!1418598 res!954318) b!1418596))

(assert (= (and b!1418596 res!954314) b!1418602))

(assert (= (and b!1418602 res!954312) b!1418597))

(declare-fun m!1309283 () Bool)

(assert (=> b!1418599 m!1309283))

(assert (=> b!1418599 m!1309283))

(declare-fun m!1309285 () Bool)

(assert (=> b!1418599 m!1309285))

(assert (=> b!1418597 m!1309283))

(assert (=> b!1418597 m!1309283))

(declare-fun m!1309287 () Bool)

(assert (=> b!1418597 m!1309287))

(declare-fun m!1309289 () Bool)

(assert (=> b!1418598 m!1309289))

(declare-fun m!1309291 () Bool)

(assert (=> start!122474 m!1309291))

(declare-fun m!1309293 () Bool)

(assert (=> start!122474 m!1309293))

(declare-fun m!1309295 () Bool)

(assert (=> b!1418600 m!1309295))

(assert (=> b!1418600 m!1309295))

(declare-fun m!1309297 () Bool)

(assert (=> b!1418600 m!1309297))

(declare-fun m!1309299 () Bool)

(assert (=> b!1418596 m!1309299))

(push 1)

(assert (not b!1418598))

(assert (not b!1418596))

(assert (not b!1418600))

(assert (not b!1418597))

(assert (not b!1418599))

(assert (not start!122474))

(check-sat)

(pop 1)

(push 1)

