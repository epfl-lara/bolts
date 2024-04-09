; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130980 () Bool)

(assert start!130980)

(declare-fun b!1535940 () Bool)

(declare-fun res!1053165 () Bool)

(declare-fun e!854966 () Bool)

(assert (=> b!1535940 (=> (not res!1053165) (not e!854966))))

(declare-datatypes ((array!102005 0))(
  ( (array!102006 (arr!49214 (Array (_ BitVec 32) (_ BitVec 64))) (size!49765 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102005)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535940 (= res!1053165 (not (= (select (arr!49214 a!2792) index!463) (select (arr!49214 a!2792) j!64))))))

(declare-fun b!1535942 () Bool)

(declare-fun res!1053167 () Bool)

(declare-fun e!854962 () Bool)

(assert (=> b!1535942 (=> (not res!1053167) (not e!854962))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535942 (= res!1053167 (validKeyInArray!0 (select (arr!49214 a!2792) i!951)))))

(declare-fun b!1535943 () Bool)

(declare-fun res!1053164 () Bool)

(assert (=> b!1535943 (=> (not res!1053164) (not e!854962))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1535943 (= res!1053164 (and (= (size!49765 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49765 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49765 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535944 () Bool)

(declare-fun res!1053174 () Bool)

(assert (=> b!1535944 (=> (not res!1053174) (not e!854962))))

(declare-datatypes ((List!35868 0))(
  ( (Nil!35865) (Cons!35864 (h!37310 (_ BitVec 64)) (t!50569 List!35868)) )
))
(declare-fun arrayNoDuplicates!0 (array!102005 (_ BitVec 32) List!35868) Bool)

(assert (=> b!1535944 (= res!1053174 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35865))))

(declare-fun b!1535945 () Bool)

(declare-fun res!1053171 () Bool)

(assert (=> b!1535945 (=> (not res!1053171) (not e!854962))))

(assert (=> b!1535945 (= res!1053171 (validKeyInArray!0 (select (arr!49214 a!2792) j!64)))))

(declare-fun b!1535946 () Bool)

(declare-fun res!1053170 () Bool)

(assert (=> b!1535946 (=> (not res!1053170) (not e!854962))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1535946 (= res!1053170 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49765 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49765 a!2792)) (= (select (arr!49214 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535941 () Bool)

(declare-fun e!854965 () Bool)

(assert (=> b!1535941 (= e!854966 e!854965)))

(declare-fun res!1053173 () Bool)

(assert (=> b!1535941 (=> (not res!1053173) (not e!854965))))

(declare-fun lt!664132 () (_ BitVec 32))

(assert (=> b!1535941 (= res!1053173 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664132 #b00000000000000000000000000000000) (bvslt lt!664132 (size!49765 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535941 (= lt!664132 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1053168 () Bool)

(assert (=> start!130980 (=> (not res!1053168) (not e!854962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130980 (= res!1053168 (validMask!0 mask!2480))))

(assert (=> start!130980 e!854962))

(assert (=> start!130980 true))

(declare-fun array_inv!38159 (array!102005) Bool)

(assert (=> start!130980 (array_inv!38159 a!2792)))

(declare-fun b!1535947 () Bool)

(declare-fun e!854963 () Bool)

(assert (=> b!1535947 (= e!854965 e!854963)))

(declare-fun res!1053166 () Bool)

(assert (=> b!1535947 (=> (not res!1053166) (not e!854963))))

(declare-datatypes ((SeekEntryResult!13369 0))(
  ( (MissingZero!13369 (index!55870 (_ BitVec 32))) (Found!13369 (index!55871 (_ BitVec 32))) (Intermediate!13369 (undefined!14181 Bool) (index!55872 (_ BitVec 32)) (x!137614 (_ BitVec 32))) (Undefined!13369) (MissingVacant!13369 (index!55873 (_ BitVec 32))) )
))
(declare-fun lt!664133 () SeekEntryResult!13369)

(declare-fun lt!664135 () SeekEntryResult!13369)

(assert (=> b!1535947 (= res!1053166 (= lt!664133 lt!664135))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102005 (_ BitVec 32)) SeekEntryResult!13369)

(assert (=> b!1535947 (= lt!664133 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664132 vacantIndex!5 (select (arr!49214 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535948 () Bool)

(assert (=> b!1535948 (= e!854962 e!854966)))

(declare-fun res!1053169 () Bool)

(assert (=> b!1535948 (=> (not res!1053169) (not e!854966))))

(assert (=> b!1535948 (= res!1053169 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49214 a!2792) j!64) a!2792 mask!2480) lt!664135))))

(assert (=> b!1535948 (= lt!664135 (Found!13369 j!64))))

(declare-fun b!1535949 () Bool)

(assert (=> b!1535949 (= e!854963 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(assert (=> b!1535949 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664132 vacantIndex!5 (select (store (arr!49214 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102006 (store (arr!49214 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49765 a!2792)) mask!2480) lt!664133)))

(declare-datatypes ((Unit!51262 0))(
  ( (Unit!51263) )
))
(declare-fun lt!664134 () Unit!51262)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51262)

(assert (=> b!1535949 (= lt!664134 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664132 vacantIndex!5 mask!2480))))

(declare-fun b!1535950 () Bool)

(declare-fun res!1053172 () Bool)

(assert (=> b!1535950 (=> (not res!1053172) (not e!854962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102005 (_ BitVec 32)) Bool)

(assert (=> b!1535950 (= res!1053172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130980 res!1053168) b!1535943))

(assert (= (and b!1535943 res!1053164) b!1535942))

(assert (= (and b!1535942 res!1053167) b!1535945))

(assert (= (and b!1535945 res!1053171) b!1535950))

(assert (= (and b!1535950 res!1053172) b!1535944))

(assert (= (and b!1535944 res!1053174) b!1535946))

(assert (= (and b!1535946 res!1053170) b!1535948))

(assert (= (and b!1535948 res!1053169) b!1535940))

(assert (= (and b!1535940 res!1053165) b!1535941))

(assert (= (and b!1535941 res!1053173) b!1535947))

(assert (= (and b!1535947 res!1053166) b!1535949))

(declare-fun m!1418443 () Bool)

(assert (=> b!1535948 m!1418443))

(assert (=> b!1535948 m!1418443))

(declare-fun m!1418445 () Bool)

(assert (=> b!1535948 m!1418445))

(declare-fun m!1418447 () Bool)

(assert (=> start!130980 m!1418447))

(declare-fun m!1418449 () Bool)

(assert (=> start!130980 m!1418449))

(declare-fun m!1418451 () Bool)

(assert (=> b!1535942 m!1418451))

(assert (=> b!1535942 m!1418451))

(declare-fun m!1418453 () Bool)

(assert (=> b!1535942 m!1418453))

(declare-fun m!1418455 () Bool)

(assert (=> b!1535946 m!1418455))

(declare-fun m!1418457 () Bool)

(assert (=> b!1535944 m!1418457))

(declare-fun m!1418459 () Bool)

(assert (=> b!1535950 m!1418459))

(declare-fun m!1418461 () Bool)

(assert (=> b!1535940 m!1418461))

(assert (=> b!1535940 m!1418443))

(declare-fun m!1418463 () Bool)

(assert (=> b!1535941 m!1418463))

(declare-fun m!1418465 () Bool)

(assert (=> b!1535949 m!1418465))

(declare-fun m!1418467 () Bool)

(assert (=> b!1535949 m!1418467))

(assert (=> b!1535949 m!1418467))

(declare-fun m!1418469 () Bool)

(assert (=> b!1535949 m!1418469))

(declare-fun m!1418471 () Bool)

(assert (=> b!1535949 m!1418471))

(assert (=> b!1535947 m!1418443))

(assert (=> b!1535947 m!1418443))

(declare-fun m!1418473 () Bool)

(assert (=> b!1535947 m!1418473))

(assert (=> b!1535945 m!1418443))

(assert (=> b!1535945 m!1418443))

(declare-fun m!1418475 () Bool)

(assert (=> b!1535945 m!1418475))

(check-sat (not b!1535949) (not b!1535944) (not b!1535942) (not b!1535947) (not b!1535945) (not start!130980) (not b!1535950) (not b!1535941) (not b!1535948))
(check-sat)
