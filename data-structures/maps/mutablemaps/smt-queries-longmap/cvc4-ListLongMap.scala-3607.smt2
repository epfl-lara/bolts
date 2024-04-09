; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49718 () Bool)

(assert start!49718)

(declare-fun res!340226 () Bool)

(declare-fun e!315795 () Bool)

(assert (=> start!49718 (=> (not res!340226) (not e!315795))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49718 (= res!340226 (validMask!0 mask!3119))))

(assert (=> start!49718 e!315795))

(assert (=> start!49718 true))

(declare-datatypes ((array!34424 0))(
  ( (array!34425 (arr!16535 (Array (_ BitVec 32) (_ BitVec 64))) (size!16899 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34424)

(declare-fun array_inv!12309 (array!34424) Bool)

(assert (=> start!49718 (array_inv!12309 a!3118)))

(declare-fun b!546361 () Bool)

(declare-fun res!340225 () Bool)

(assert (=> b!546361 (=> (not res!340225) (not e!315795))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546361 (= res!340225 (validKeyInArray!0 k!1914))))

(declare-fun b!546360 () Bool)

(declare-fun res!340224 () Bool)

(assert (=> b!546360 (=> (not res!340224) (not e!315795))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546360 (= res!340224 (validKeyInArray!0 (select (arr!16535 a!3118) j!142)))))

(declare-fun b!546359 () Bool)

(declare-fun res!340223 () Bool)

(assert (=> b!546359 (=> (not res!340223) (not e!315795))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546359 (= res!340223 (and (= (size!16899 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16899 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16899 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546362 () Bool)

(assert (=> b!546362 (= e!315795 (and (bvslt #b00000000000000000000000000000000 (size!16899 a!3118)) (bvsge (size!16899 a!3118) #b01111111111111111111111111111111)))))

(assert (= (and start!49718 res!340226) b!546359))

(assert (= (and b!546359 res!340223) b!546360))

(assert (= (and b!546360 res!340224) b!546361))

(assert (= (and b!546361 res!340225) b!546362))

(declare-fun m!523821 () Bool)

(assert (=> start!49718 m!523821))

(declare-fun m!523823 () Bool)

(assert (=> start!49718 m!523823))

(declare-fun m!523825 () Bool)

(assert (=> b!546361 m!523825))

(declare-fun m!523827 () Bool)

(assert (=> b!546360 m!523827))

(assert (=> b!546360 m!523827))

(declare-fun m!523829 () Bool)

(assert (=> b!546360 m!523829))

(push 1)

(assert (not b!546360))

(assert (not b!546361))

(assert (not start!49718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82247 () Bool)

(assert (=> d!82247 (= (validKeyInArray!0 (select (arr!16535 a!3118) j!142)) (and (not (= (select (arr!16535 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16535 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

