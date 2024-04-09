; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117632 () Bool)

(assert start!117632)

(declare-fun res!922688 () Bool)

(declare-fun e!782461 () Bool)

(assert (=> start!117632 (=> (not res!922688) (not e!782461))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94066 0))(
  ( (array!94067 (arr!45421 (Array (_ BitVec 32) (_ BitVec 64))) (size!45972 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94066)

(assert (=> start!117632 (= res!922688 (and (bvslt (size!45972 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45972 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117632 e!782461))

(declare-fun array_inv!34366 (array!94066) Bool)

(assert (=> start!117632 (array_inv!34366 a!3931)))

(assert (=> start!117632 true))

(declare-fun b!1380645 () Bool)

(declare-fun res!922689 () Bool)

(assert (=> b!1380645 (=> (not res!922689) (not e!782461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380645 (= res!922689 (not (validKeyInArray!0 (select (arr!45421 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380646 () Bool)

(assert (=> b!1380646 (= e!782461 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45972 a!3931)))))

(assert (= (and start!117632 res!922688) b!1380645))

(assert (= (and b!1380645 res!922689) b!1380646))

(declare-fun m!1265937 () Bool)

(assert (=> start!117632 m!1265937))

(declare-fun m!1265939 () Bool)

(assert (=> b!1380645 m!1265939))

(assert (=> b!1380645 m!1265939))

(declare-fun m!1265941 () Bool)

(assert (=> b!1380645 m!1265941))

(push 1)

(assert (not start!117632))

(assert (not b!1380645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

