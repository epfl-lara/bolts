; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92334 () Bool)

(assert start!92334)

(declare-fun e!595092 () Bool)

(declare-datatypes ((array!66083 0))(
  ( (array!66084 (arr!31777 (Array (_ BitVec 32) (_ BitVec 64))) (size!32314 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66083)

(declare-fun b!1048938 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun lt!463330 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048938 (= e!595092 (arrayContainsKey!0 a!3488 k!2747 lt!463330))))

(declare-fun b!1048939 () Bool)

(declare-fun e!595097 () Bool)

(declare-fun e!595094 () Bool)

(assert (=> b!1048939 (= e!595097 e!595094)))

(declare-fun res!698180 () Bool)

(assert (=> b!1048939 (=> (not res!698180) (not e!595094))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048939 (= res!698180 (not (= lt!463330 i!1381)))))

(declare-fun lt!463329 () array!66083)

(declare-fun arrayScanForKey!0 (array!66083 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048939 (= lt!463330 (arrayScanForKey!0 lt!463329 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048940 () Bool)

(declare-fun e!595095 () Bool)

(assert (=> b!1048940 (= e!595095 e!595097)))

(declare-fun res!698176 () Bool)

(assert (=> b!1048940 (=> (not res!698176) (not e!595097))))

(assert (=> b!1048940 (= res!698176 (arrayContainsKey!0 lt!463329 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048940 (= lt!463329 (array!66084 (store (arr!31777 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32314 a!3488)))))

(declare-fun b!1048941 () Bool)

(declare-fun e!595096 () Bool)

(assert (=> b!1048941 (= e!595094 (not e!595096))))

(declare-fun res!698179 () Bool)

(assert (=> b!1048941 (=> res!698179 e!595096)))

(assert (=> b!1048941 (= res!698179 (bvsle lt!463330 i!1381))))

(declare-fun e!595091 () Bool)

(assert (=> b!1048941 e!595091))

(declare-fun res!698175 () Bool)

(assert (=> b!1048941 (=> (not res!698175) (not e!595091))))

(assert (=> b!1048941 (= res!698175 (= (select (store (arr!31777 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463330) k!2747))))

(declare-fun b!1048942 () Bool)

(assert (=> b!1048942 (= e!595096 true)))

(declare-datatypes ((List!22220 0))(
  ( (Nil!22217) (Cons!22216 (h!23425 (_ BitVec 64)) (t!31534 List!22220)) )
))
(declare-fun arrayNoDuplicates!0 (array!66083 (_ BitVec 32) List!22220) Bool)

(assert (=> b!1048942 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22217)))

(declare-datatypes ((Unit!34283 0))(
  ( (Unit!34284) )
))
(declare-fun lt!463328 () Unit!34283)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66083 (_ BitVec 32) (_ BitVec 32)) Unit!34283)

(assert (=> b!1048942 (= lt!463328 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!698173 () Bool)

(assert (=> start!92334 (=> (not res!698173) (not e!595095))))

(assert (=> start!92334 (= res!698173 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32314 a!3488)) (bvslt (size!32314 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92334 e!595095))

(assert (=> start!92334 true))

(declare-fun array_inv!24399 (array!66083) Bool)

(assert (=> start!92334 (array_inv!24399 a!3488)))

(declare-fun b!1048943 () Bool)

(declare-fun res!698178 () Bool)

(assert (=> b!1048943 (=> (not res!698178) (not e!595095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048943 (= res!698178 (validKeyInArray!0 k!2747))))

(declare-fun b!1048944 () Bool)

(declare-fun res!698181 () Bool)

(assert (=> b!1048944 (=> (not res!698181) (not e!595095))))

(assert (=> b!1048944 (= res!698181 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22217))))

(declare-fun b!1048945 () Bool)

(declare-fun res!698177 () Bool)

(assert (=> b!1048945 (=> (not res!698177) (not e!595095))))

(assert (=> b!1048945 (= res!698177 (= (select (arr!31777 a!3488) i!1381) k!2747))))

(declare-fun b!1048946 () Bool)

(assert (=> b!1048946 (= e!595091 e!595092)))

(declare-fun res!698174 () Bool)

(assert (=> b!1048946 (=> res!698174 e!595092)))

(assert (=> b!1048946 (= res!698174 (bvsle lt!463330 i!1381))))

(assert (= (and start!92334 res!698173) b!1048944))

(assert (= (and b!1048944 res!698181) b!1048943))

(assert (= (and b!1048943 res!698178) b!1048945))

(assert (= (and b!1048945 res!698177) b!1048940))

(assert (= (and b!1048940 res!698176) b!1048939))

(assert (= (and b!1048939 res!698180) b!1048941))

(assert (= (and b!1048941 res!698175) b!1048946))

(assert (= (and b!1048946 (not res!698174)) b!1048938))

(assert (= (and b!1048941 (not res!698179)) b!1048942))

(declare-fun m!969921 () Bool)

(assert (=> b!1048939 m!969921))

(declare-fun m!969923 () Bool)

(assert (=> b!1048940 m!969923))

(declare-fun m!969925 () Bool)

(assert (=> b!1048940 m!969925))

(declare-fun m!969927 () Bool)

(assert (=> b!1048945 m!969927))

(declare-fun m!969929 () Bool)

(assert (=> start!92334 m!969929))

(declare-fun m!969931 () Bool)

(assert (=> b!1048944 m!969931))

(declare-fun m!969933 () Bool)

(assert (=> b!1048938 m!969933))

(assert (=> b!1048941 m!969925))

(declare-fun m!969935 () Bool)

(assert (=> b!1048941 m!969935))

(declare-fun m!969937 () Bool)

(assert (=> b!1048943 m!969937))

(declare-fun m!969939 () Bool)

(assert (=> b!1048942 m!969939))

(declare-fun m!969941 () Bool)

(assert (=> b!1048942 m!969941))

(push 1)

