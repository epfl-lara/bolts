; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36546 () Bool)

(assert start!36546)

(declare-fun b!364863 () Bool)

(declare-fun res!204078 () Bool)

(declare-fun e!223349 () Bool)

(assert (=> b!364863 (=> (not res!204078) (not e!223349))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20767 0))(
  ( (array!20768 (arr!9858 (Array (_ BitVec 32) (_ BitVec 64))) (size!10210 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20767)

(assert (=> b!364863 (= res!204078 (and (bvslt (size!10210 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10210 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364864 () Bool)

(assert (=> b!364864 (= e!223349 false)))

(declare-fun lt!169099 () (_ BitVec 32))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20767 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364864 (= lt!169099 (arrayCountValidKeys!0 (array!20768 (store (arr!9858 a!4289) i!1472 k!2974) (size!10210 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!169100 () (_ BitVec 32))

(assert (=> b!364864 (= lt!169100 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364862 () Bool)

(declare-fun res!204076 () Bool)

(assert (=> b!364862 (=> (not res!204076) (not e!223349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364862 (= res!204076 (validKeyInArray!0 k!2974))))

(declare-fun b!364861 () Bool)

(declare-fun res!204079 () Bool)

(assert (=> b!364861 (=> (not res!204079) (not e!223349))))

(assert (=> b!364861 (= res!204079 (not (validKeyInArray!0 (select (arr!9858 a!4289) i!1472))))))

(declare-fun res!204077 () Bool)

(assert (=> start!36546 (=> (not res!204077) (not e!223349))))

(assert (=> start!36546 (= res!204077 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10210 a!4289))))))

(assert (=> start!36546 e!223349))

(assert (=> start!36546 true))

(declare-fun array_inv!7296 (array!20767) Bool)

(assert (=> start!36546 (array_inv!7296 a!4289)))

(assert (= (and start!36546 res!204077) b!364861))

(assert (= (and b!364861 res!204079) b!364862))

(assert (= (and b!364862 res!204076) b!364863))

(assert (= (and b!364863 res!204078) b!364864))

(declare-fun m!362741 () Bool)

(assert (=> b!364864 m!362741))

(declare-fun m!362743 () Bool)

(assert (=> b!364864 m!362743))

(declare-fun m!362745 () Bool)

(assert (=> b!364864 m!362745))

(declare-fun m!362747 () Bool)

(assert (=> b!364862 m!362747))

(declare-fun m!362749 () Bool)

(assert (=> b!364861 m!362749))

(assert (=> b!364861 m!362749))

(declare-fun m!362751 () Bool)

(assert (=> b!364861 m!362751))

(declare-fun m!362753 () Bool)

(assert (=> start!36546 m!362753))

(push 1)

(assert (not start!36546))

(assert (not b!364861))

(assert (not b!364862))

(assert (not b!364864))

(check-sat)

(pop 1)

