; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36346 () Bool)

(assert start!36346)

(declare-fun b!363406 () Bool)

(declare-fun e!222521 () Bool)

(assert (=> b!363406 (= e!222521 false)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun lt!167734 () (_ BitVec 32))

(declare-datatypes ((array!20588 0))(
  ( (array!20589 (arr!9770 (Array (_ BitVec 32) (_ BitVec 64))) (size!10122 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20588)

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20588 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363406 (= lt!167734 (arrayCountValidKeys!0 (array!20589 (store (arr!9770 a!4289) i!1472 k0!2974) (size!10122 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167735 () (_ BitVec 32))

(assert (=> b!363406 (= lt!167735 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!363403 () Bool)

(declare-fun res!202716 () Bool)

(assert (=> b!363403 (=> (not res!202716) (not e!222521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363403 (= res!202716 (not (validKeyInArray!0 (select (arr!9770 a!4289) i!1472))))))

(declare-fun b!363405 () Bool)

(declare-fun res!202714 () Bool)

(assert (=> b!363405 (=> (not res!202714) (not e!222521))))

(assert (=> b!363405 (= res!202714 (and (bvslt (size!10122 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10122 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!202717 () Bool)

(assert (=> start!36346 (=> (not res!202717) (not e!222521))))

(assert (=> start!36346 (= res!202717 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10122 a!4289))))))

(assert (=> start!36346 e!222521))

(assert (=> start!36346 true))

(declare-fun array_inv!7208 (array!20588) Bool)

(assert (=> start!36346 (array_inv!7208 a!4289)))

(declare-fun b!363404 () Bool)

(declare-fun res!202715 () Bool)

(assert (=> b!363404 (=> (not res!202715) (not e!222521))))

(assert (=> b!363404 (= res!202715 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36346 res!202717) b!363403))

(assert (= (and b!363403 res!202716) b!363404))

(assert (= (and b!363404 res!202715) b!363405))

(assert (= (and b!363405 res!202714) b!363406))

(declare-fun m!360567 () Bool)

(assert (=> b!363406 m!360567))

(declare-fun m!360569 () Bool)

(assert (=> b!363406 m!360569))

(declare-fun m!360571 () Bool)

(assert (=> b!363406 m!360571))

(declare-fun m!360573 () Bool)

(assert (=> b!363403 m!360573))

(assert (=> b!363403 m!360573))

(declare-fun m!360575 () Bool)

(assert (=> b!363403 m!360575))

(declare-fun m!360577 () Bool)

(assert (=> start!36346 m!360577))

(declare-fun m!360579 () Bool)

(assert (=> b!363404 m!360579))

(check-sat (not b!363403) (not b!363404) (not start!36346) (not b!363406))
