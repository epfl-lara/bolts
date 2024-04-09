; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118514 () Bool)

(assert start!118514)

(declare-fun b!1385350 () Bool)

(declare-fun e!784970 () Bool)

(assert (=> b!1385350 (= e!784970 false)))

(declare-fun lt!609181 () Bool)

(declare-datatypes ((array!94708 0))(
  ( (array!94709 (arr!45726 (Array (_ BitVec 32) (_ BitVec 64))) (size!46277 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94708)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94708 (_ BitVec 32)) Bool)

(assert (=> b!1385350 (= lt!609181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385348 () Bool)

(declare-fun res!926706 () Bool)

(assert (=> b!1385348 (=> (not res!926706) (not e!784970))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385348 (= res!926706 (validKeyInArray!0 (select (arr!45726 a!2938) i!1065)))))

(declare-fun b!1385349 () Bool)

(declare-fun res!926709 () Bool)

(assert (=> b!1385349 (=> (not res!926709) (not e!784970))))

(declare-datatypes ((List!32434 0))(
  ( (Nil!32431) (Cons!32430 (h!33639 (_ BitVec 64)) (t!47135 List!32434)) )
))
(declare-fun arrayNoDuplicates!0 (array!94708 (_ BitVec 32) List!32434) Bool)

(assert (=> b!1385349 (= res!926709 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32431))))

(declare-fun b!1385347 () Bool)

(declare-fun res!926707 () Bool)

(assert (=> b!1385347 (=> (not res!926707) (not e!784970))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385347 (= res!926707 (and (= (size!46277 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46277 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46277 a!2938))))))

(declare-fun res!926708 () Bool)

(assert (=> start!118514 (=> (not res!926708) (not e!784970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118514 (= res!926708 (validMask!0 mask!2987))))

(assert (=> start!118514 e!784970))

(assert (=> start!118514 true))

(declare-fun array_inv!34671 (array!94708) Bool)

(assert (=> start!118514 (array_inv!34671 a!2938)))

(assert (= (and start!118514 res!926708) b!1385347))

(assert (= (and b!1385347 res!926707) b!1385348))

(assert (= (and b!1385348 res!926706) b!1385349))

(assert (= (and b!1385349 res!926709) b!1385350))

(declare-fun m!1270697 () Bool)

(assert (=> b!1385350 m!1270697))

(declare-fun m!1270699 () Bool)

(assert (=> b!1385348 m!1270699))

(assert (=> b!1385348 m!1270699))

(declare-fun m!1270701 () Bool)

(assert (=> b!1385348 m!1270701))

(declare-fun m!1270703 () Bool)

(assert (=> b!1385349 m!1270703))

(declare-fun m!1270705 () Bool)

(assert (=> start!118514 m!1270705))

(declare-fun m!1270707 () Bool)

(assert (=> start!118514 m!1270707))

(push 1)

(assert (not b!1385348))

(assert (not b!1385349))

(assert (not start!118514))

(assert (not b!1385350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

