; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36424 () Bool)

(assert start!36424)

(declare-fun res!203338 () Bool)

(declare-fun e!222890 () Bool)

(assert (=> start!36424 (=> (not res!203338) (not e!222890))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20666 0))(
  ( (array!20667 (arr!9809 (Array (_ BitVec 32) (_ BitVec 64))) (size!10161 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20666)

(assert (=> start!36424 (= res!203338 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10161 a!4289))))))

(assert (=> start!36424 e!222890))

(assert (=> start!36424 true))

(declare-fun array_inv!7247 (array!20666) Bool)

(assert (=> start!36424 (array_inv!7247 a!4289)))

(declare-fun b!364026 () Bool)

(declare-fun res!203337 () Bool)

(assert (=> b!364026 (=> (not res!203337) (not e!222890))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364026 (= res!203337 (and (bvslt (size!10161 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10161 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364024 () Bool)

(declare-fun res!203335 () Bool)

(assert (=> b!364024 (=> (not res!203335) (not e!222890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364024 (= res!203335 (not (validKeyInArray!0 (select (arr!9809 a!4289) i!1472))))))

(declare-fun b!364027 () Bool)

(assert (=> b!364027 (= e!222890 false)))

(declare-fun lt!168400 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364027 (= lt!168400 (arrayCountValidKeys!0 (array!20667 (store (arr!9809 a!4289) i!1472 k0!2974) (size!10161 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168401 () (_ BitVec 32))

(assert (=> b!364027 (= lt!168401 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364025 () Bool)

(declare-fun res!203336 () Bool)

(assert (=> b!364025 (=> (not res!203336) (not e!222890))))

(assert (=> b!364025 (= res!203336 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36424 res!203338) b!364024))

(assert (= (and b!364024 res!203335) b!364025))

(assert (= (and b!364025 res!203336) b!364026))

(assert (= (and b!364026 res!203337) b!364027))

(declare-fun m!361563 () Bool)

(assert (=> start!36424 m!361563))

(declare-fun m!361565 () Bool)

(assert (=> b!364024 m!361565))

(assert (=> b!364024 m!361565))

(declare-fun m!361567 () Bool)

(assert (=> b!364024 m!361567))

(declare-fun m!361569 () Bool)

(assert (=> b!364027 m!361569))

(declare-fun m!361571 () Bool)

(assert (=> b!364027 m!361571))

(declare-fun m!361573 () Bool)

(assert (=> b!364027 m!361573))

(declare-fun m!361575 () Bool)

(assert (=> b!364025 m!361575))

(check-sat (not b!364027) (not start!36424) (not b!364024) (not b!364025))
