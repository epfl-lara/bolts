; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36552 () Bool)

(assert start!36552)

(declare-datatypes ((array!20773 0))(
  ( (array!20774 (arr!9861 (Array (_ BitVec 32) (_ BitVec 64))) (size!10213 (_ BitVec 32))) )
))
(declare-fun lt!169109 () array!20773)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun e!223376 () Bool)

(declare-fun a!4289 () array!20773)

(declare-fun b!364913 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20773 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364913 (= e!223376 (not (= (arrayCountValidKeys!0 lt!169109 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))))

(declare-fun b!364914 () Bool)

(declare-fun res!204132 () Bool)

(assert (=> b!364914 (=> (not res!204132) (not e!223376))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364914 (= res!204132 (bvsle from!3650 #b00000000000000000000000000000000))))

(declare-fun b!364915 () Bool)

(declare-fun e!223374 () Bool)

(assert (=> b!364915 (= e!223374 e!223376)))

(declare-fun res!204133 () Bool)

(assert (=> b!364915 (=> (not res!204133) (not e!223376))))

(assert (=> b!364915 (= res!204133 (= (arrayCountValidKeys!0 lt!169109 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364915 (= lt!169109 (array!20774 (store (arr!9861 a!4289) i!1472 k!2974) (size!10213 a!4289)))))

(declare-fun res!204130 () Bool)

(assert (=> start!36552 (=> (not res!204130) (not e!223374))))

(assert (=> start!36552 (= res!204130 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10213 a!4289))))))

(assert (=> start!36552 e!223374))

(assert (=> start!36552 true))

(declare-fun array_inv!7299 (array!20773) Bool)

(assert (=> start!36552 (array_inv!7299 a!4289)))

(declare-fun b!364916 () Bool)

(declare-fun res!204131 () Bool)

(assert (=> b!364916 (=> (not res!204131) (not e!223374))))

(assert (=> b!364916 (= res!204131 (and (bvslt (size!10213 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10213 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364917 () Bool)

(declare-fun res!204128 () Bool)

(assert (=> b!364917 (=> (not res!204128) (not e!223374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364917 (= res!204128 (validKeyInArray!0 k!2974))))

(declare-fun b!364918 () Bool)

(declare-fun res!204129 () Bool)

(assert (=> b!364918 (=> (not res!204129) (not e!223374))))

(assert (=> b!364918 (= res!204129 (not (validKeyInArray!0 (select (arr!9861 a!4289) i!1472))))))

(assert (= (and start!36552 res!204130) b!364918))

(assert (= (and b!364918 res!204129) b!364917))

(assert (= (and b!364917 res!204128) b!364916))

(assert (= (and b!364916 res!204131) b!364915))

(assert (= (and b!364915 res!204133) b!364914))

(assert (= (and b!364914 res!204132) b!364913))

(declare-fun m!362791 () Bool)

(assert (=> b!364918 m!362791))

(assert (=> b!364918 m!362791))

(declare-fun m!362793 () Bool)

(assert (=> b!364918 m!362793))

(declare-fun m!362795 () Bool)

(assert (=> b!364913 m!362795))

(declare-fun m!362797 () Bool)

(assert (=> b!364913 m!362797))

(declare-fun m!362799 () Bool)

(assert (=> b!364917 m!362799))

(declare-fun m!362801 () Bool)

(assert (=> start!36552 m!362801))

(declare-fun m!362803 () Bool)

(assert (=> b!364915 m!362803))

(declare-fun m!362805 () Bool)

(assert (=> b!364915 m!362805))

(declare-fun m!362807 () Bool)

(assert (=> b!364915 m!362807))

(push 1)

(assert (not b!364913))

(assert (not b!364918))

(assert (not start!36552))

(assert (not b!364915))

(assert (not b!364917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

