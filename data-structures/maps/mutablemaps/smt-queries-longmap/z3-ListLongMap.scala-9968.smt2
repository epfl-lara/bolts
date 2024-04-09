; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117754 () Bool)

(assert start!117754)

(declare-fun res!922784 () Bool)

(declare-fun e!782764 () Bool)

(assert (=> start!117754 (=> (not res!922784) (not e!782764))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94152 0))(
  ( (array!94153 (arr!45461 (Array (_ BitVec 32) (_ BitVec 64))) (size!46012 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94152)

(assert (=> start!117754 (= res!922784 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46012 a!3464)) (bvslt (size!46012 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117754 e!782764))

(assert (=> start!117754 true))

(declare-fun array_inv!34406 (array!94152) Bool)

(assert (=> start!117754 (array_inv!34406 a!3464)))

(declare-fun b!1380975 () Bool)

(declare-fun res!922785 () Bool)

(assert (=> b!1380975 (=> (not res!922785) (not e!782764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380975 (= res!922785 (not (validKeyInArray!0 (select (arr!45461 a!3464) from!2839))))))

(declare-fun b!1380976 () Bool)

(assert (=> b!1380976 (= e!782764 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117754 res!922784) b!1380975))

(assert (= (and b!1380975 res!922785) b!1380976))

(declare-fun m!1266255 () Bool)

(assert (=> start!117754 m!1266255))

(declare-fun m!1266257 () Bool)

(assert (=> b!1380975 m!1266257))

(assert (=> b!1380975 m!1266257))

(declare-fun m!1266259 () Bool)

(assert (=> b!1380975 m!1266259))

(check-sat (not start!117754) (not b!1380975))
(check-sat)
