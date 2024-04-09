; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115512 () Bool)

(assert start!115512)

(declare-fun b!1365924 () Bool)

(declare-fun res!909623 () Bool)

(declare-fun e!774313 () Bool)

(assert (=> b!1365924 (=> (not res!909623) (not e!774313))))

(declare-datatypes ((array!92756 0))(
  ( (array!92757 (arr!44802 (Array (_ BitVec 32) (_ BitVec 64))) (size!45353 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92756)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32050 0))(
  ( (Nil!32047) (Cons!32046 (h!33255 (_ BitVec 64)) (t!46751 List!32050)) )
))
(declare-fun acc!866 () List!32050)

(declare-fun contains!9588 (List!32050 (_ BitVec 64)) Bool)

(assert (=> b!1365924 (= res!909623 (not (contains!9588 acc!866 (select (arr!44802 a!3861) from!3239))))))

(declare-fun b!1365925 () Bool)

(declare-fun res!909624 () Bool)

(declare-fun e!774316 () Bool)

(assert (=> b!1365925 (=> (not res!909624) (not e!774316))))

(declare-fun lt!601381 () List!32050)

(assert (=> b!1365925 (= res!909624 (not (contains!9588 lt!601381 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365926 () Bool)

(declare-fun res!909636 () Bool)

(declare-fun e!774314 () Bool)

(assert (=> b!1365926 (=> (not res!909636) (not e!774314))))

(assert (=> b!1365926 (= res!909636 (not (contains!9588 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909631 () Bool)

(assert (=> start!115512 (=> (not res!909631) (not e!774314))))

(assert (=> start!115512 (= res!909631 (and (bvslt (size!45353 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45353 a!3861))))))

(assert (=> start!115512 e!774314))

(declare-fun array_inv!33747 (array!92756) Bool)

(assert (=> start!115512 (array_inv!33747 a!3861)))

(assert (=> start!115512 true))

(declare-fun b!1365927 () Bool)

(assert (=> b!1365927 (= e!774314 e!774313)))

(declare-fun res!909629 () Bool)

(assert (=> b!1365927 (=> (not res!909629) (not e!774313))))

(declare-fun arrayNoDuplicates!0 (array!92756 (_ BitVec 32) List!32050) Bool)

(assert (=> b!1365927 (= res!909629 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45039 0))(
  ( (Unit!45040) )
))
(declare-fun lt!601382 () Unit!45039)

(declare-fun newAcc!98 () List!32050)

(declare-fun noDuplicateSubseq!166 (List!32050 List!32050) Unit!45039)

(assert (=> b!1365927 (= lt!601382 (noDuplicateSubseq!166 newAcc!98 acc!866))))

(declare-fun b!1365928 () Bool)

(declare-fun res!909622 () Bool)

(assert (=> b!1365928 (=> (not res!909622) (not e!774316))))

(declare-fun lt!601384 () List!32050)

(declare-fun noDuplicate!2467 (List!32050) Bool)

(assert (=> b!1365928 (= res!909622 (noDuplicate!2467 lt!601384))))

(declare-fun b!1365929 () Bool)

(declare-fun res!909620 () Bool)

(assert (=> b!1365929 (=> (not res!909620) (not e!774316))))

(assert (=> b!1365929 (= res!909620 (not (contains!9588 lt!601381 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365930 () Bool)

(declare-fun res!909619 () Bool)

(assert (=> b!1365930 (=> (not res!909619) (not e!774314))))

(assert (=> b!1365930 (= res!909619 (noDuplicate!2467 acc!866))))

(declare-fun b!1365931 () Bool)

(declare-fun res!909625 () Bool)

(assert (=> b!1365931 (=> (not res!909625) (not e!774316))))

(declare-fun subseq!979 (List!32050 List!32050) Bool)

(assert (=> b!1365931 (= res!909625 (subseq!979 lt!601381 lt!601384))))

(declare-fun b!1365932 () Bool)

(declare-fun res!909628 () Bool)

(assert (=> b!1365932 (=> (not res!909628) (not e!774313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365932 (= res!909628 (validKeyInArray!0 (select (arr!44802 a!3861) from!3239)))))

(declare-fun b!1365933 () Bool)

(declare-fun res!909635 () Bool)

(assert (=> b!1365933 (=> (not res!909635) (not e!774314))))

(assert (=> b!1365933 (= res!909635 (not (contains!9588 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365934 () Bool)

(declare-fun res!909634 () Bool)

(assert (=> b!1365934 (=> (not res!909634) (not e!774313))))

(assert (=> b!1365934 (= res!909634 (bvslt from!3239 (size!45353 a!3861)))))

(declare-fun b!1365935 () Bool)

(declare-fun res!909633 () Bool)

(assert (=> b!1365935 (=> (not res!909633) (not e!774316))))

(assert (=> b!1365935 (= res!909633 (not (contains!9588 lt!601384 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365936 () Bool)

(declare-fun res!909630 () Bool)

(assert (=> b!1365936 (=> (not res!909630) (not e!774316))))

(assert (=> b!1365936 (= res!909630 (not (contains!9588 lt!601384 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365937 () Bool)

(declare-fun res!909626 () Bool)

(assert (=> b!1365937 (=> (not res!909626) (not e!774314))))

(assert (=> b!1365937 (= res!909626 (subseq!979 newAcc!98 acc!866))))

(declare-fun b!1365938 () Bool)

(assert (=> b!1365938 (= e!774316 false)))

(declare-fun lt!601383 () Bool)

(assert (=> b!1365938 (= lt!601383 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601384))))

(declare-fun lt!601385 () Unit!45039)

(assert (=> b!1365938 (= lt!601385 (noDuplicateSubseq!166 lt!601381 lt!601384))))

(declare-fun b!1365939 () Bool)

(declare-fun res!909627 () Bool)

(assert (=> b!1365939 (=> (not res!909627) (not e!774314))))

(assert (=> b!1365939 (= res!909627 (not (contains!9588 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365940 () Bool)

(assert (=> b!1365940 (= e!774313 e!774316)))

(declare-fun res!909632 () Bool)

(assert (=> b!1365940 (=> (not res!909632) (not e!774316))))

(assert (=> b!1365940 (= res!909632 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365940 (= lt!601381 (Cons!32046 (select (arr!44802 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365940 (= lt!601384 (Cons!32046 (select (arr!44802 a!3861) from!3239) acc!866))))

(declare-fun b!1365941 () Bool)

(declare-fun res!909621 () Bool)

(assert (=> b!1365941 (=> (not res!909621) (not e!774314))))

(assert (=> b!1365941 (= res!909621 (not (contains!9588 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115512 res!909631) b!1365930))

(assert (= (and b!1365930 res!909619) b!1365939))

(assert (= (and b!1365939 res!909627) b!1365926))

(assert (= (and b!1365926 res!909636) b!1365933))

(assert (= (and b!1365933 res!909635) b!1365941))

(assert (= (and b!1365941 res!909621) b!1365937))

(assert (= (and b!1365937 res!909626) b!1365927))

(assert (= (and b!1365927 res!909629) b!1365934))

(assert (= (and b!1365934 res!909634) b!1365932))

(assert (= (and b!1365932 res!909628) b!1365924))

(assert (= (and b!1365924 res!909623) b!1365940))

(assert (= (and b!1365940 res!909632) b!1365928))

(assert (= (and b!1365928 res!909622) b!1365935))

(assert (= (and b!1365935 res!909633) b!1365936))

(assert (= (and b!1365936 res!909630) b!1365925))

(assert (= (and b!1365925 res!909624) b!1365929))

(assert (= (and b!1365929 res!909620) b!1365931))

(assert (= (and b!1365931 res!909625) b!1365938))

(declare-fun m!1250361 () Bool)

(assert (=> b!1365941 m!1250361))

(declare-fun m!1250363 () Bool)

(assert (=> b!1365935 m!1250363))

(declare-fun m!1250365 () Bool)

(assert (=> b!1365928 m!1250365))

(declare-fun m!1250367 () Bool)

(assert (=> b!1365933 m!1250367))

(declare-fun m!1250369 () Bool)

(assert (=> b!1365926 m!1250369))

(declare-fun m!1250371 () Bool)

(assert (=> b!1365924 m!1250371))

(assert (=> b!1365924 m!1250371))

(declare-fun m!1250373 () Bool)

(assert (=> b!1365924 m!1250373))

(declare-fun m!1250375 () Bool)

(assert (=> b!1365936 m!1250375))

(declare-fun m!1250377 () Bool)

(assert (=> b!1365939 m!1250377))

(assert (=> b!1365940 m!1250371))

(declare-fun m!1250379 () Bool)

(assert (=> b!1365931 m!1250379))

(declare-fun m!1250381 () Bool)

(assert (=> b!1365925 m!1250381))

(declare-fun m!1250383 () Bool)

(assert (=> start!115512 m!1250383))

(assert (=> b!1365932 m!1250371))

(assert (=> b!1365932 m!1250371))

(declare-fun m!1250385 () Bool)

(assert (=> b!1365932 m!1250385))

(declare-fun m!1250387 () Bool)

(assert (=> b!1365937 m!1250387))

(declare-fun m!1250389 () Bool)

(assert (=> b!1365938 m!1250389))

(declare-fun m!1250391 () Bool)

(assert (=> b!1365938 m!1250391))

(declare-fun m!1250393 () Bool)

(assert (=> b!1365930 m!1250393))

(declare-fun m!1250395 () Bool)

(assert (=> b!1365929 m!1250395))

(declare-fun m!1250397 () Bool)

(assert (=> b!1365927 m!1250397))

(declare-fun m!1250399 () Bool)

(assert (=> b!1365927 m!1250399))

(push 1)

