; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36438 () Bool)

(assert start!36438)

(declare-fun res!203428 () Bool)

(declare-fun e!222932 () Bool)

(assert (=> start!36438 (=> (not res!203428) (not e!222932))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20680 0))(
  ( (array!20681 (arr!9816 (Array (_ BitVec 32) (_ BitVec 64))) (size!10168 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20680)

(assert (=> start!36438 (= res!203428 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10168 a!4289))))))

(assert (=> start!36438 e!222932))

(assert (=> start!36438 true))

(declare-fun array_inv!7254 (array!20680) Bool)

(assert (=> start!36438 (array_inv!7254 a!4289)))

(declare-fun b!364118 () Bool)

(declare-fun res!203431 () Bool)

(assert (=> b!364118 (=> (not res!203431) (not e!222932))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364118 (= res!203431 (validKeyInArray!0 k!2974))))

(declare-fun b!364119 () Bool)

(declare-fun res!203430 () Bool)

(assert (=> b!364119 (=> (not res!203430) (not e!222932))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364119 (= res!203430 (and (bvslt (size!10168 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10168 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364117 () Bool)

(declare-fun res!203429 () Bool)

(assert (=> b!364117 (=> (not res!203429) (not e!222932))))

(assert (=> b!364117 (= res!203429 (not (validKeyInArray!0 (select (arr!9816 a!4289) i!1472))))))

(declare-fun b!364120 () Bool)

(assert (=> b!364120 (= e!222932 false)))

(declare-fun lt!168425 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20680 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364120 (= lt!168425 (arrayCountValidKeys!0 (array!20681 (store (arr!9816 a!4289) i!1472 k!2974) (size!10168 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168424 () (_ BitVec 32))

(assert (=> b!364120 (= lt!168424 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36438 res!203428) b!364117))

(assert (= (and b!364117 res!203429) b!364118))

(assert (= (and b!364118 res!203431) b!364119))

(assert (= (and b!364119 res!203430) b!364120))

(declare-fun m!361661 () Bool)

(assert (=> start!36438 m!361661))

(declare-fun m!361663 () Bool)

(assert (=> b!364118 m!361663))

(declare-fun m!361665 () Bool)

(assert (=> b!364117 m!361665))

(assert (=> b!364117 m!361665))

(declare-fun m!361667 () Bool)

(assert (=> b!364117 m!361667))

(declare-fun m!361669 () Bool)

(assert (=> b!364120 m!361669))

(declare-fun m!361671 () Bool)

(assert (=> b!364120 m!361671))

(declare-fun m!361673 () Bool)

(assert (=> b!364120 m!361673))

(push 1)

(assert (not b!364118))

(assert (not b!364117))

(assert (not start!36438))

(assert (not b!364120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

