; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115760 () Bool)

(assert start!115760)

(declare-fun b!1368376 () Bool)

(declare-fun res!912009 () Bool)

(declare-fun e!775317 () Bool)

(assert (=> b!1368376 (=> (not res!912009) (not e!775317))))

(declare-datatypes ((List!32105 0))(
  ( (Nil!32102) (Cons!32101 (h!33310 (_ BitVec 64)) (t!46806 List!32105)) )
))
(declare-fun acc!866 () List!32105)

(declare-fun contains!9643 (List!32105 (_ BitVec 64)) Bool)

(assert (=> b!1368376 (= res!912009 (not (contains!9643 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368377 () Bool)

(declare-fun e!775316 () Bool)

(assert (=> b!1368377 (= e!775317 e!775316)))

(declare-fun res!912014 () Bool)

(assert (=> b!1368377 (=> (not res!912014) (not e!775316))))

(declare-datatypes ((array!92875 0))(
  ( (array!92876 (arr!44857 (Array (_ BitVec 32) (_ BitVec 64))) (size!45408 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92875)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92875 (_ BitVec 32) List!32105) Bool)

(assert (=> b!1368377 (= res!912014 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45149 0))(
  ( (Unit!45150) )
))
(declare-fun lt!602006 () Unit!45149)

(declare-fun newAcc!98 () List!32105)

(declare-fun noDuplicateSubseq!221 (List!32105 List!32105) Unit!45149)

(assert (=> b!1368377 (= lt!602006 (noDuplicateSubseq!221 newAcc!98 acc!866))))

(declare-fun b!1368378 () Bool)

(declare-fun res!912007 () Bool)

(assert (=> b!1368378 (=> (not res!912007) (not e!775317))))

(assert (=> b!1368378 (= res!912007 (not (contains!9643 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368379 () Bool)

(declare-fun res!912015 () Bool)

(assert (=> b!1368379 (=> (not res!912015) (not e!775316))))

(assert (=> b!1368379 (= res!912015 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368380 () Bool)

(declare-fun res!912013 () Bool)

(assert (=> b!1368380 (=> (not res!912013) (not e!775317))))

(assert (=> b!1368380 (= res!912013 (not (contains!9643 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912010 () Bool)

(assert (=> start!115760 (=> (not res!912010) (not e!775317))))

(assert (=> start!115760 (= res!912010 (and (bvslt (size!45408 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45408 a!3861))))))

(assert (=> start!115760 e!775317))

(declare-fun array_inv!33802 (array!92875) Bool)

(assert (=> start!115760 (array_inv!33802 a!3861)))

(assert (=> start!115760 true))

(declare-fun b!1368381 () Bool)

(declare-fun res!912008 () Bool)

(assert (=> b!1368381 (=> (not res!912008) (not e!775316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368381 (= res!912008 (not (validKeyInArray!0 (select (arr!44857 a!3861) from!3239))))))

(declare-fun b!1368382 () Bool)

(assert (=> b!1368382 (= e!775316 false)))

(declare-fun lt!602005 () Bool)

(assert (=> b!1368382 (= lt!602005 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368383 () Bool)

(declare-fun res!912011 () Bool)

(assert (=> b!1368383 (=> (not res!912011) (not e!775316))))

(assert (=> b!1368383 (= res!912011 (bvslt from!3239 (size!45408 a!3861)))))

(declare-fun b!1368384 () Bool)

(declare-fun res!912005 () Bool)

(assert (=> b!1368384 (=> (not res!912005) (not e!775317))))

(assert (=> b!1368384 (= res!912005 (not (contains!9643 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368385 () Bool)

(declare-fun res!912012 () Bool)

(assert (=> b!1368385 (=> (not res!912012) (not e!775317))))

(declare-fun subseq!1034 (List!32105 List!32105) Bool)

(assert (=> b!1368385 (= res!912012 (subseq!1034 newAcc!98 acc!866))))

(declare-fun b!1368386 () Bool)

(declare-fun res!912006 () Bool)

(assert (=> b!1368386 (=> (not res!912006) (not e!775317))))

(declare-fun noDuplicate!2522 (List!32105) Bool)

(assert (=> b!1368386 (= res!912006 (noDuplicate!2522 acc!866))))

(assert (= (and start!115760 res!912010) b!1368386))

(assert (= (and b!1368386 res!912006) b!1368376))

(assert (= (and b!1368376 res!912009) b!1368380))

(assert (= (and b!1368380 res!912013) b!1368384))

(assert (= (and b!1368384 res!912005) b!1368378))

(assert (= (and b!1368378 res!912007) b!1368385))

(assert (= (and b!1368385 res!912012) b!1368377))

(assert (= (and b!1368377 res!912014) b!1368383))

(assert (= (and b!1368383 res!912011) b!1368381))

(assert (= (and b!1368381 res!912008) b!1368379))

(assert (= (and b!1368379 res!912015) b!1368382))

(declare-fun m!1252375 () Bool)

(assert (=> b!1368384 m!1252375))

(declare-fun m!1252377 () Bool)

(assert (=> b!1368386 m!1252377))

(declare-fun m!1252379 () Bool)

(assert (=> b!1368385 m!1252379))

(declare-fun m!1252381 () Bool)

(assert (=> start!115760 m!1252381))

(declare-fun m!1252383 () Bool)

(assert (=> b!1368376 m!1252383))

(declare-fun m!1252385 () Bool)

(assert (=> b!1368377 m!1252385))

(declare-fun m!1252387 () Bool)

(assert (=> b!1368377 m!1252387))

(declare-fun m!1252389 () Bool)

(assert (=> b!1368382 m!1252389))

(declare-fun m!1252391 () Bool)

(assert (=> b!1368380 m!1252391))

(declare-fun m!1252393 () Bool)

(assert (=> b!1368381 m!1252393))

(assert (=> b!1368381 m!1252393))

(declare-fun m!1252395 () Bool)

(assert (=> b!1368381 m!1252395))

(declare-fun m!1252397 () Bool)

(assert (=> b!1368378 m!1252397))

(push 1)

