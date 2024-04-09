; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36548 () Bool)

(assert start!36548)

(declare-fun b!364877 () Bool)

(declare-fun e!223358 () Bool)

(declare-fun e!223357 () Bool)

(assert (=> b!364877 (= e!223358 e!223357)))

(declare-fun res!204097 () Bool)

(assert (=> b!364877 (=> (not res!204097) (not e!223357))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20769 0))(
  ( (array!20770 (arr!9859 (Array (_ BitVec 32) (_ BitVec 64))) (size!10211 (_ BitVec 32))) )
))
(declare-fun lt!169103 () array!20769)

(declare-fun a!4289 () array!20769)

(declare-fun arrayCountValidKeys!0 (array!20769 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364877 (= res!204097 (= (arrayCountValidKeys!0 lt!169103 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364877 (= lt!169103 (array!20770 (store (arr!9859 a!4289) i!1472 k!2974) (size!10211 a!4289)))))

(declare-fun b!364878 () Bool)

(declare-fun res!204094 () Bool)

(assert (=> b!364878 (=> (not res!204094) (not e!223358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364878 (= res!204094 (validKeyInArray!0 k!2974))))

(declare-fun b!364879 () Bool)

(declare-fun res!204092 () Bool)

(assert (=> b!364879 (=> (not res!204092) (not e!223358))))

(assert (=> b!364879 (= res!204092 (not (validKeyInArray!0 (select (arr!9859 a!4289) i!1472))))))

(declare-fun b!364880 () Bool)

(declare-fun res!204095 () Bool)

(assert (=> b!364880 (=> (not res!204095) (not e!223358))))

(assert (=> b!364880 (= res!204095 (and (bvslt (size!10211 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10211 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364881 () Bool)

(declare-fun res!204093 () Bool)

(assert (=> b!364881 (=> (not res!204093) (not e!223357))))

(assert (=> b!364881 (= res!204093 (bvsle from!3650 #b00000000000000000000000000000000))))

(declare-fun b!364882 () Bool)

(assert (=> b!364882 (= e!223357 (not (= (arrayCountValidKeys!0 lt!169103 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))))

(declare-fun res!204096 () Bool)

(assert (=> start!36548 (=> (not res!204096) (not e!223358))))

(assert (=> start!36548 (= res!204096 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10211 a!4289))))))

(assert (=> start!36548 e!223358))

(assert (=> start!36548 true))

(declare-fun array_inv!7297 (array!20769) Bool)

(assert (=> start!36548 (array_inv!7297 a!4289)))

(assert (= (and start!36548 res!204096) b!364879))

(assert (= (and b!364879 res!204092) b!364878))

(assert (= (and b!364878 res!204094) b!364880))

(assert (= (and b!364880 res!204095) b!364877))

(assert (= (and b!364877 res!204097) b!364881))

(assert (= (and b!364881 res!204093) b!364882))

(declare-fun m!362755 () Bool)

(assert (=> b!364879 m!362755))

(assert (=> b!364879 m!362755))

(declare-fun m!362757 () Bool)

(assert (=> b!364879 m!362757))

(declare-fun m!362759 () Bool)

(assert (=> b!364882 m!362759))

(declare-fun m!362761 () Bool)

(assert (=> b!364882 m!362761))

(declare-fun m!362763 () Bool)

(assert (=> start!36548 m!362763))

(declare-fun m!362765 () Bool)

(assert (=> b!364878 m!362765))

(declare-fun m!362767 () Bool)

(assert (=> b!364877 m!362767))

(declare-fun m!362769 () Bool)

(assert (=> b!364877 m!362769))

(declare-fun m!362771 () Bool)

(assert (=> b!364877 m!362771))

(push 1)

(assert (not b!364882))

(assert (not start!36548))

(assert (not b!364877))

(assert (not b!364878))

(assert (not b!364879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

