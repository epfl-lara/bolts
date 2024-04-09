; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135528 () Bool)

(assert start!135528)

(declare-fun b!1574086 () Bool)

(declare-fun res!1075514 () Bool)

(declare-fun e!877859 () Bool)

(assert (=> b!1574086 (=> (not res!1075514) (not e!877859))))

(declare-datatypes ((array!105184 0))(
  ( (array!105185 (arr!50737 (Array (_ BitVec 32) (_ BitVec 64))) (size!51288 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105184)

(assert (=> b!1574086 (= res!1075514 (bvslt (size!51288 _keys!591) #b01111111111111111111111111111111))))

(declare-fun b!1574084 () Bool)

(declare-fun res!1075516 () Bool)

(assert (=> b!1574084 (=> (not res!1075516) (not e!877859))))

(declare-fun i!537 () (_ BitVec 32))

(declare-fun mask!877 () (_ BitVec 32))

(assert (=> b!1574084 (= res!1075516 (and (= (size!51288 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51288 _keys!591)) (bvslt i!537 (size!51288 _keys!591))))))

(declare-fun b!1574087 () Bool)

(declare-fun arrayContainsKey!0 (array!105184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574087 (= e!877859 (not (arrayContainsKey!0 _keys!591 (select (arr!50737 _keys!591) i!537) i!537)))))

(declare-fun res!1075517 () Bool)

(assert (=> start!135528 (=> (not res!1075517) (not e!877859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135528 (= res!1075517 (validMask!0 mask!877))))

(assert (=> start!135528 e!877859))

(assert (=> start!135528 true))

(declare-fun array_inv!39382 (array!105184) Bool)

(assert (=> start!135528 (array_inv!39382 _keys!591)))

(declare-fun b!1574085 () Bool)

(declare-fun res!1075515 () Bool)

(assert (=> b!1574085 (=> (not res!1075515) (not e!877859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574085 (= res!1075515 (validKeyInArray!0 (select (arr!50737 _keys!591) i!537)))))

(assert (= (and start!135528 res!1075517) b!1574084))

(assert (= (and b!1574084 res!1075516) b!1574085))

(assert (= (and b!1574085 res!1075515) b!1574086))

(assert (= (and b!1574086 res!1075514) b!1574087))

(declare-fun m!1447387 () Bool)

(assert (=> b!1574087 m!1447387))

(assert (=> b!1574087 m!1447387))

(declare-fun m!1447389 () Bool)

(assert (=> b!1574087 m!1447389))

(declare-fun m!1447391 () Bool)

(assert (=> start!135528 m!1447391))

(declare-fun m!1447393 () Bool)

(assert (=> start!135528 m!1447393))

(assert (=> b!1574085 m!1447387))

(assert (=> b!1574085 m!1447387))

(declare-fun m!1447395 () Bool)

(assert (=> b!1574085 m!1447395))

(push 1)

(assert (not b!1574085))

(assert (not b!1574087))

(assert (not start!135528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165091 () Bool)

(assert (=> d!165091 (= (validKeyInArray!0 (select (arr!50737 _keys!591) i!537)) (and (not (= (select (arr!50737 _keys!591) i!537) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50737 _keys!591) i!537) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574085 d!165091))

(declare-fun d!165093 () Bool)

(declare-fun res!1075552 () Bool)

(declare-fun e!877883 () Bool)

(assert (=> d!165093 (=> res!1075552 e!877883)))

(assert (=> d!165093 (= res!1075552 (= (select (arr!50737 _keys!591) i!537) (select (arr!50737 _keys!591) i!537)))))

(assert (=> d!165093 (= (arrayContainsKey!0 _keys!591 (select (arr!50737 _keys!591) i!537) i!537) e!877883)))

(declare-fun b!1574122 () Bool)

(declare-fun e!877884 () Bool)

(assert (=> b!1574122 (= e!877883 e!877884)))

(declare-fun res!1075553 () Bool)

(assert (=> b!1574122 (=> (not res!1075553) (not e!877884))))

(assert (=> b!1574122 (= res!1075553 (bvslt (bvadd i!537 #b00000000000000000000000000000001) (size!51288 _keys!591)))))

(declare-fun b!1574123 () Bool)

(assert (=> b!1574123 (= e!877884 (arrayContainsKey!0 _keys!591 (select (arr!50737 _keys!591) i!537) (bvadd i!537 #b00000000000000000000000000000001)))))

(assert (= (and d!165093 (not res!1075552)) b!1574122))

(assert (= (and b!1574122 res!1075553) b!1574123))

(assert (=> d!165093 m!1447387))

(assert (=> b!1574123 m!1447387))

(declare-fun m!1447419 () Bool)

(assert (=> b!1574123 m!1447419))

(assert (=> b!1574087 d!165093))

(declare-fun d!165097 () Bool)

(assert (=> d!165097 (= (validMask!0 mask!877) (and (or (= mask!877 #b00000000000000000000000000000111) (= mask!877 #b00000000000000000000000000001111) (= mask!877 #b00000000000000000000000000011111) (= mask!877 #b00000000000000000000000000111111) (= mask!877 #b00000000000000000000000001111111) (= mask!877 #b00000000000000000000000011111111) (= mask!877 #b00000000000000000000000111111111) (= mask!877 #b00000000000000000000001111111111) (= mask!877 #b00000000000000000000011111111111) (= mask!877 #b00000000000000000000111111111111) (= mask!877 #b00000000000000000001111111111111) (= mask!877 #b00000000000000000011111111111111) (= mask!877 #b00000000000000000111111111111111) (= mask!877 #b00000000000000001111111111111111) (= mask!877 #b00000000000000011111111111111111) (= mask!877 #b00000000000000111111111111111111) (= mask!877 #b00000000000001111111111111111111) (= mask!877 #b00000000000011111111111111111111) (= mask!877 #b00000000000111111111111111111111) (= mask!877 #b00000000001111111111111111111111) (= mask!877 #b00000000011111111111111111111111) (= mask!877 #b00000000111111111111111111111111) (= mask!877 #b00000001111111111111111111111111) (= mask!877 #b00000011111111111111111111111111) (= mask!877 #b00000111111111111111111111111111) (= mask!877 #b00001111111111111111111111111111) (= mask!877 #b00011111111111111111111111111111) (= mask!877 #b00111111111111111111111111111111)) (bvsle mask!877 #b00111111111111111111111111111111)))))

(assert (=> start!135528 d!165097))

(declare-fun d!165103 () Bool)

(assert (=> d!165103 (= (array_inv!39382 _keys!591) (bvsge (size!51288 _keys!591) #b00000000000000000000000000000000))))

(assert (=> start!135528 d!165103))

(push 1)

(assert (not b!1574123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

