; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36444 () Bool)

(assert start!36444)

(declare-fun b!364153 () Bool)

(declare-fun res!203466 () Bool)

(declare-fun e!222950 () Bool)

(assert (=> b!364153 (=> (not res!203466) (not e!222950))))

(declare-datatypes ((array!20686 0))(
  ( (array!20687 (arr!9819 (Array (_ BitVec 32) (_ BitVec 64))) (size!10171 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20686)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364153 (= res!203466 (not (validKeyInArray!0 (select (arr!9819 a!4289) i!1472))))))

(declare-fun b!364155 () Bool)

(declare-fun res!203464 () Bool)

(assert (=> b!364155 (=> (not res!203464) (not e!222950))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364155 (= res!203464 (and (bvslt (size!10171 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10171 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364154 () Bool)

(declare-fun res!203467 () Bool)

(assert (=> b!364154 (=> (not res!203467) (not e!222950))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364154 (= res!203467 (validKeyInArray!0 k!2974))))

(declare-fun b!364156 () Bool)

(assert (=> b!364156 (= e!222950 false)))

(declare-fun lt!168442 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20686 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364156 (= lt!168442 (arrayCountValidKeys!0 (array!20687 (store (arr!9819 a!4289) i!1472 k!2974) (size!10171 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168443 () (_ BitVec 32))

(assert (=> b!364156 (= lt!168443 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun res!203465 () Bool)

(assert (=> start!36444 (=> (not res!203465) (not e!222950))))

(assert (=> start!36444 (= res!203465 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10171 a!4289))))))

(assert (=> start!36444 e!222950))

(assert (=> start!36444 true))

(declare-fun array_inv!7257 (array!20686) Bool)

(assert (=> start!36444 (array_inv!7257 a!4289)))

(assert (= (and start!36444 res!203465) b!364153))

(assert (= (and b!364153 res!203466) b!364154))

(assert (= (and b!364154 res!203467) b!364155))

(assert (= (and b!364155 res!203464) b!364156))

(declare-fun m!361703 () Bool)

(assert (=> b!364153 m!361703))

(assert (=> b!364153 m!361703))

(declare-fun m!361705 () Bool)

(assert (=> b!364153 m!361705))

(declare-fun m!361707 () Bool)

(assert (=> b!364154 m!361707))

(declare-fun m!361709 () Bool)

(assert (=> b!364156 m!361709))

(declare-fun m!361711 () Bool)

(assert (=> b!364156 m!361711))

(declare-fun m!361713 () Bool)

(assert (=> b!364156 m!361713))

(declare-fun m!361715 () Bool)

(assert (=> start!36444 m!361715))

(push 1)

(assert (not b!364154))

(assert (not b!364153))

(assert (not start!36444))

(assert (not b!364156))

(check-sat)

