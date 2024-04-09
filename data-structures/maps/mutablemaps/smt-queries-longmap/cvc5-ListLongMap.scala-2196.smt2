; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36542 () Bool)

(assert start!36542)

(declare-fun b!364838 () Bool)

(declare-fun res!204054 () Bool)

(declare-fun e!223337 () Bool)

(assert (=> b!364838 (=> (not res!204054) (not e!223337))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364838 (= res!204054 (validKeyInArray!0 k!2974))))

(declare-fun b!364839 () Bool)

(declare-fun res!204052 () Bool)

(assert (=> b!364839 (=> (not res!204052) (not e!223337))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20763 0))(
  ( (array!20764 (arr!9856 (Array (_ BitVec 32) (_ BitVec 64))) (size!10208 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20763)

(assert (=> b!364839 (= res!204052 (and (bvslt (size!10208 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10208 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364840 () Bool)

(assert (=> b!364840 (= e!223337 false)))

(declare-fun lt!169087 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20763 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364840 (= lt!169087 (arrayCountValidKeys!0 (array!20764 (store (arr!9856 a!4289) i!1472 k!2974) (size!10208 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!169088 () (_ BitVec 32))

(assert (=> b!364840 (= lt!169088 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364837 () Bool)

(declare-fun res!204055 () Bool)

(assert (=> b!364837 (=> (not res!204055) (not e!223337))))

(assert (=> b!364837 (= res!204055 (not (validKeyInArray!0 (select (arr!9856 a!4289) i!1472))))))

(declare-fun res!204053 () Bool)

(assert (=> start!36542 (=> (not res!204053) (not e!223337))))

(assert (=> start!36542 (= res!204053 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10208 a!4289))))))

(assert (=> start!36542 e!223337))

(assert (=> start!36542 true))

(declare-fun array_inv!7294 (array!20763) Bool)

(assert (=> start!36542 (array_inv!7294 a!4289)))

(assert (= (and start!36542 res!204053) b!364837))

(assert (= (and b!364837 res!204055) b!364838))

(assert (= (and b!364838 res!204054) b!364839))

(assert (= (and b!364839 res!204052) b!364840))

(declare-fun m!362713 () Bool)

(assert (=> b!364838 m!362713))

(declare-fun m!362715 () Bool)

(assert (=> b!364840 m!362715))

(declare-fun m!362717 () Bool)

(assert (=> b!364840 m!362717))

(declare-fun m!362719 () Bool)

(assert (=> b!364840 m!362719))

(declare-fun m!362721 () Bool)

(assert (=> b!364837 m!362721))

(assert (=> b!364837 m!362721))

(declare-fun m!362723 () Bool)

(assert (=> b!364837 m!362723))

(declare-fun m!362725 () Bool)

(assert (=> start!36542 m!362725))

(push 1)

(assert (not b!364838))

(assert (not b!364840))

(assert (not b!364837))

(assert (not start!36542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

