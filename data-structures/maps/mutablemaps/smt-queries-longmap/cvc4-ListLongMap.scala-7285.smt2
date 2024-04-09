; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93112 () Bool)

(assert start!93112)

(declare-fun b!1055957 () Bool)

(declare-fun e!600278 () Bool)

(declare-fun e!600280 () Bool)

(assert (=> b!1055957 (= e!600278 (not e!600280))))

(declare-fun res!704885 () Bool)

(assert (=> b!1055957 (=> res!704885 e!600280)))

(declare-fun lt!465997 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055957 (= res!704885 (or (bvsgt lt!465997 i!1381) (bvsle i!1381 lt!465997)))))

(declare-datatypes ((array!66585 0))(
  ( (array!66586 (arr!32016 (Array (_ BitVec 32) (_ BitVec 64))) (size!32553 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66585)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1055957 (= (select (store (arr!32016 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465997) k!2747)))

(declare-fun res!704882 () Bool)

(declare-fun e!600281 () Bool)

(assert (=> start!93112 (=> (not res!704882) (not e!600281))))

(assert (=> start!93112 (= res!704882 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32553 a!3488)) (bvslt (size!32553 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93112 e!600281))

(assert (=> start!93112 true))

(declare-fun array_inv!24638 (array!66585) Bool)

(assert (=> start!93112 (array_inv!24638 a!3488)))

(declare-fun b!1055958 () Bool)

(declare-fun res!704886 () Bool)

(assert (=> b!1055958 (=> (not res!704886) (not e!600281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055958 (= res!704886 (validKeyInArray!0 k!2747))))

(declare-fun b!1055959 () Bool)

(declare-fun res!704883 () Bool)

(assert (=> b!1055959 (=> (not res!704883) (not e!600281))))

(declare-datatypes ((List!22459 0))(
  ( (Nil!22456) (Cons!22455 (h!23664 (_ BitVec 64)) (t!31773 List!22459)) )
))
(declare-fun arrayNoDuplicates!0 (array!66585 (_ BitVec 32) List!22459) Bool)

(assert (=> b!1055959 (= res!704883 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22456))))

(declare-fun b!1055960 () Bool)

(declare-fun e!600279 () Bool)

(assert (=> b!1055960 (= e!600279 e!600278)))

(declare-fun res!704884 () Bool)

(assert (=> b!1055960 (=> (not res!704884) (not e!600278))))

(assert (=> b!1055960 (= res!704884 (not (= lt!465997 i!1381)))))

(declare-fun lt!465996 () array!66585)

(declare-fun arrayScanForKey!0 (array!66585 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055960 (= lt!465997 (arrayScanForKey!0 lt!465996 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055961 () Bool)

(declare-fun res!704881 () Bool)

(assert (=> b!1055961 (=> (not res!704881) (not e!600281))))

(assert (=> b!1055961 (= res!704881 (= (select (arr!32016 a!3488) i!1381) k!2747))))

(declare-fun b!1055962 () Bool)

(declare-fun arrayContainsKey!0 (array!66585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055962 (= e!600280 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1055963 () Bool)

(assert (=> b!1055963 (= e!600281 e!600279)))

(declare-fun res!704880 () Bool)

(assert (=> b!1055963 (=> (not res!704880) (not e!600279))))

(assert (=> b!1055963 (= res!704880 (arrayContainsKey!0 lt!465996 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055963 (= lt!465996 (array!66586 (store (arr!32016 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32553 a!3488)))))

(assert (= (and start!93112 res!704882) b!1055959))

(assert (= (and b!1055959 res!704883) b!1055958))

(assert (= (and b!1055958 res!704886) b!1055961))

(assert (= (and b!1055961 res!704881) b!1055963))

(assert (= (and b!1055963 res!704880) b!1055960))

(assert (= (and b!1055960 res!704884) b!1055957))

(assert (= (and b!1055957 (not res!704885)) b!1055962))

(declare-fun m!976077 () Bool)

(assert (=> start!93112 m!976077))

(declare-fun m!976079 () Bool)

(assert (=> b!1055958 m!976079))

(declare-fun m!976081 () Bool)

(assert (=> b!1055960 m!976081))

(declare-fun m!976083 () Bool)

(assert (=> b!1055963 m!976083))

(declare-fun m!976085 () Bool)

(assert (=> b!1055963 m!976085))

(declare-fun m!976087 () Bool)

(assert (=> b!1055962 m!976087))

(assert (=> b!1055957 m!976085))

(declare-fun m!976089 () Bool)

(assert (=> b!1055957 m!976089))

(declare-fun m!976091 () Bool)

(assert (=> b!1055959 m!976091))

(declare-fun m!976093 () Bool)

(assert (=> b!1055961 m!976093))

(push 1)

(assert (not b!1055962))

(assert (not b!1055958))

(assert (not start!93112))

(assert (not b!1055960))

(assert (not b!1055963))

(assert (not b!1055959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128211 () Bool)

(declare-fun res!704923 () Bool)

