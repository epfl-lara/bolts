; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118280 () Bool)

(assert start!118280)

(declare-fun b!1383089 () Bool)

(declare-fun res!924792 () Bool)

(declare-fun e!783953 () Bool)

(assert (=> b!1383089 (=> (not res!924792) (not e!783953))))

(declare-datatypes ((array!94501 0))(
  ( (array!94502 (arr!45624 (Array (_ BitVec 32) (_ BitVec 64))) (size!46175 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94501)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383089 (= res!924792 (validKeyInArray!0 (select (arr!45624 a!2938) i!1065)))))

(declare-fun res!924789 () Bool)

(assert (=> start!118280 (=> (not res!924789) (not e!783953))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118280 (= res!924789 (validMask!0 mask!2987))))

(assert (=> start!118280 e!783953))

(assert (=> start!118280 true))

(declare-fun array_inv!34569 (array!94501) Bool)

(assert (=> start!118280 (array_inv!34569 a!2938)))

(declare-fun b!1383088 () Bool)

(declare-fun res!924791 () Bool)

(assert (=> b!1383088 (=> (not res!924791) (not e!783953))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383088 (= res!924791 (and (= (size!46175 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46175 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46175 a!2938))))))

(declare-fun b!1383091 () Bool)

(assert (=> b!1383091 (= e!783953 false)))

(declare-fun lt!608488 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94501 (_ BitVec 32)) Bool)

(assert (=> b!1383091 (= lt!608488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383090 () Bool)

(declare-fun res!924790 () Bool)

(assert (=> b!1383090 (=> (not res!924790) (not e!783953))))

(declare-datatypes ((List!32332 0))(
  ( (Nil!32329) (Cons!32328 (h!33537 (_ BitVec 64)) (t!47033 List!32332)) )
))
(declare-fun arrayNoDuplicates!0 (array!94501 (_ BitVec 32) List!32332) Bool)

(assert (=> b!1383090 (= res!924790 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32329))))

(assert (= (and start!118280 res!924789) b!1383088))

(assert (= (and b!1383088 res!924791) b!1383089))

(assert (= (and b!1383089 res!924792) b!1383090))

(assert (= (and b!1383090 res!924790) b!1383091))

(declare-fun m!1268249 () Bool)

(assert (=> b!1383089 m!1268249))

(assert (=> b!1383089 m!1268249))

(declare-fun m!1268251 () Bool)

(assert (=> b!1383089 m!1268251))

(declare-fun m!1268253 () Bool)

(assert (=> start!118280 m!1268253))

(declare-fun m!1268255 () Bool)

(assert (=> start!118280 m!1268255))

(declare-fun m!1268257 () Bool)

(assert (=> b!1383091 m!1268257))

(declare-fun m!1268259 () Bool)

(assert (=> b!1383090 m!1268259))

(push 1)

(assert (not b!1383089))

(assert (not start!118280))

(assert (not b!1383090))

(assert (not b!1383091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

