; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135498 () Bool)

(assert start!135498)

(declare-fun res!1075458 () Bool)

(declare-fun e!877824 () Bool)

(assert (=> start!135498 (=> (not res!1075458) (not e!877824))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135498 (= res!1075458 (validMask!0 mask!877))))

(assert (=> start!135498 e!877824))

(assert (=> start!135498 true))

(declare-datatypes ((array!105169 0))(
  ( (array!105170 (arr!50731 (Array (_ BitVec 32) (_ BitVec 64))) (size!51282 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105169)

(declare-fun array_inv!39376 (array!105169) Bool)

(assert (=> start!135498 (array_inv!39376 _keys!591)))

(declare-fun b!1574028 () Bool)

(declare-fun res!1075460 () Bool)

(assert (=> b!1574028 (=> (not res!1075460) (not e!877824))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574028 (= res!1075460 (and (= (size!51282 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51282 _keys!591)) (bvslt i!537 (size!51282 _keys!591))))))

(declare-fun b!1574029 () Bool)

(declare-fun res!1075459 () Bool)

(assert (=> b!1574029 (=> (not res!1075459) (not e!877824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574029 (= res!1075459 (not (validKeyInArray!0 (select (arr!50731 _keys!591) i!537))))))

(declare-fun b!1574030 () Bool)

(assert (=> b!1574030 (= e!877824 (bvslt (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(assert (= (and start!135498 res!1075458) b!1574028))

(assert (= (and b!1574028 res!1075460) b!1574029))

(assert (= (and b!1574029 res!1075459) b!1574030))

(declare-fun m!1447339 () Bool)

(assert (=> start!135498 m!1447339))

(declare-fun m!1447341 () Bool)

(assert (=> start!135498 m!1447341))

(declare-fun m!1447343 () Bool)

(assert (=> b!1574029 m!1447343))

(assert (=> b!1574029 m!1447343))

(declare-fun m!1447345 () Bool)

(assert (=> b!1574029 m!1447345))

(push 1)

(assert (not b!1574029))

(assert (not start!135498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

