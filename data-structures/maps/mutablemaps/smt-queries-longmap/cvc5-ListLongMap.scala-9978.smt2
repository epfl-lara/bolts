; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117862 () Bool)

(assert start!117862)

(declare-fun b!1381190 () Bool)

(declare-fun res!922927 () Bool)

(declare-fun e!782948 () Bool)

(assert (=> b!1381190 (=> (not res!922927) (not e!782948))))

(declare-datatypes ((array!94217 0))(
  ( (array!94218 (arr!45490 (Array (_ BitVec 32) (_ BitVec 64))) (size!46041 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94217)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381190 (= res!922927 (validKeyInArray!0 (select (arr!45490 a!2971) i!1094)))))

(declare-fun b!1381192 () Bool)

(declare-datatypes ((List!32204 0))(
  ( (Nil!32201) (Cons!32200 (h!33409 (_ BitVec 64)) (t!46905 List!32204)) )
))
(declare-fun noDuplicate!2621 (List!32204) Bool)

(assert (=> b!1381192 (= e!782948 (not (noDuplicate!2621 Nil!32201)))))

(declare-fun res!922928 () Bool)

(assert (=> start!117862 (=> (not res!922928) (not e!782948))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117862 (= res!922928 (validMask!0 mask!3034))))

(assert (=> start!117862 e!782948))

(assert (=> start!117862 true))

(declare-fun array_inv!34435 (array!94217) Bool)

(assert (=> start!117862 (array_inv!34435 a!2971)))

(declare-fun b!1381191 () Bool)

(declare-fun res!922929 () Bool)

(assert (=> b!1381191 (=> (not res!922929) (not e!782948))))

(assert (=> b!1381191 (= res!922929 (and (bvsle #b00000000000000000000000000000000 (size!46041 a!2971)) (bvslt (size!46041 a!2971) #b01111111111111111111111111111111)))))

(declare-fun b!1381189 () Bool)

(declare-fun res!922926 () Bool)

(assert (=> b!1381189 (=> (not res!922926) (not e!782948))))

(assert (=> b!1381189 (= res!922926 (and (= (size!46041 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46041 a!2971))))))

(assert (= (and start!117862 res!922928) b!1381189))

(assert (= (and b!1381189 res!922926) b!1381190))

(assert (= (and b!1381190 res!922927) b!1381191))

(assert (= (and b!1381191 res!922929) b!1381192))

(declare-fun m!1266453 () Bool)

(assert (=> b!1381190 m!1266453))

(assert (=> b!1381190 m!1266453))

(declare-fun m!1266455 () Bool)

(assert (=> b!1381190 m!1266455))

(declare-fun m!1266457 () Bool)

(assert (=> b!1381192 m!1266457))

(declare-fun m!1266459 () Bool)

(assert (=> start!117862 m!1266459))

(declare-fun m!1266461 () Bool)

(assert (=> start!117862 m!1266461))

(push 1)

(assert (not start!117862))

(assert (not b!1381192))

(assert (not b!1381190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148979 () Bool)

(assert (=> d!148979 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!117862 d!148979))

(declare-fun d!148991 () Bool)

(assert (=> d!148991 (= (array_inv!34435 a!2971) (bvsge (size!46041 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!117862 d!148991))

(declare-fun d!148993 () Bool)

(declare-fun res!922964 () Bool)

(declare-fun e!782971 () Bool)

(assert (=> d!148993 (=> res!922964 e!782971)))

(assert (=> d!148993 (= res!922964 (is-Nil!32201 Nil!32201))))

(assert (=> d!148993 (= (noDuplicate!2621 Nil!32201) e!782971)))

(declare-fun b!1381227 () Bool)

(declare-fun e!782972 () Bool)

(assert (=> b!1381227 (= e!782971 e!782972)))

(declare-fun res!922965 () Bool)

(assert (=> b!1381227 (=> (not res!922965) (not e!782972))))

(declare-fun contains!9743 (List!32204 (_ BitVec 64)) Bool)

(assert (=> b!1381227 (= res!922965 (not (contains!9743 (t!46905 Nil!32201) (h!33409 Nil!32201))))))

(declare-fun b!1381228 () Bool)

(assert (=> b!1381228 (= e!782972 (noDuplicate!2621 (t!46905 Nil!32201)))))

(assert (= (and d!148993 (not res!922964)) b!1381227))

(assert (= (and b!1381227 res!922965) b!1381228))

(declare-fun m!1266487 () Bool)

(assert (=> b!1381227 m!1266487))

(declare-fun m!1266489 () Bool)

(assert (=> b!1381228 m!1266489))

(assert (=> b!1381192 d!148993))

(declare-fun d!148999 () Bool)

