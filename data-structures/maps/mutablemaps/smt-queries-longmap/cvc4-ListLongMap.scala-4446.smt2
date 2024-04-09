; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61798 () Bool)

(assert start!61798)

(declare-fun b!691360 () Bool)

(declare-fun res!455893 () Bool)

(declare-fun e!393443 () Bool)

(assert (=> b!691360 (=> (not res!455893) (not e!393443))))

(declare-datatypes ((List!13146 0))(
  ( (Nil!13143) (Cons!13142 (h!14187 (_ BitVec 64)) (t!19421 List!13146)) )
))
(declare-fun acc!681 () List!13146)

(declare-fun contains!3689 (List!13146 (_ BitVec 64)) Bool)

(assert (=> b!691360 (= res!455893 (not (contains!3689 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691361 () Bool)

(declare-fun res!455887 () Bool)

(assert (=> b!691361 (=> (not res!455887) (not e!393443))))

(declare-fun noDuplicate!936 (List!13146) Bool)

(assert (=> b!691361 (= res!455887 (noDuplicate!936 acc!681))))

(declare-fun b!691362 () Bool)

(declare-fun e!393441 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!691362 (= e!393441 (contains!3689 acc!681 k!2843))))

(declare-fun b!691363 () Bool)

(declare-fun res!455890 () Bool)

(assert (=> b!691363 (=> (not res!455890) (not e!393443))))

(declare-datatypes ((array!39775 0))(
  ( (array!39776 (arr!19052 (Array (_ BitVec 32) (_ BitVec 64))) (size!19435 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39775)

(declare-fun arrayContainsKey!0 (array!39775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691363 (= res!455890 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691364 () Bool)

(declare-fun res!455883 () Bool)

(assert (=> b!691364 (=> (not res!455883) (not e!393443))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691364 (= res!455883 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19435 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691366 () Bool)

(declare-fun e!393444 () Bool)

(declare-fun e!393440 () Bool)

(assert (=> b!691366 (= e!393444 e!393440)))

(declare-fun res!455889 () Bool)

(assert (=> b!691366 (=> (not res!455889) (not e!393440))))

(assert (=> b!691366 (= res!455889 (bvsle from!3004 i!1382))))

(declare-fun b!691367 () Bool)

(declare-fun res!455881 () Bool)

(assert (=> b!691367 (=> (not res!455881) (not e!393443))))

(assert (=> b!691367 (= res!455881 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19435 a!3626))))))

(declare-fun b!691368 () Bool)

(declare-fun res!455880 () Bool)

(assert (=> b!691368 (=> (not res!455880) (not e!393443))))

(declare-fun arrayNoDuplicates!0 (array!39775 (_ BitVec 32) List!13146) Bool)

(assert (=> b!691368 (= res!455880 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13143))))

(declare-fun b!691369 () Bool)

(declare-fun res!455882 () Bool)

(assert (=> b!691369 (=> (not res!455882) (not e!393443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691369 (= res!455882 (validKeyInArray!0 k!2843))))

(declare-fun b!691370 () Bool)

(assert (=> b!691370 (= e!393443 false)))

(declare-datatypes ((Unit!24378 0))(
  ( (Unit!24379) )
))
(declare-fun lt!316422 () Unit!24378)

(declare-fun e!393442 () Unit!24378)

(assert (=> b!691370 (= lt!316422 e!393442)))

(declare-fun c!78107 () Bool)

(assert (=> b!691370 (= c!78107 (= (select (arr!19052 a!3626) from!3004) k!2843))))

(declare-fun b!691371 () Bool)

(declare-fun res!455885 () Bool)

(assert (=> b!691371 (=> (not res!455885) (not e!393443))))

(assert (=> b!691371 (= res!455885 (not (contains!3689 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!455894 () Bool)

(assert (=> start!61798 (=> (not res!455894) (not e!393443))))

(assert (=> start!61798 (= res!455894 (and (bvslt (size!19435 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19435 a!3626))))))

(assert (=> start!61798 e!393443))

(assert (=> start!61798 true))

(declare-fun array_inv!14826 (array!39775) Bool)

(assert (=> start!61798 (array_inv!14826 a!3626)))

(declare-fun b!691365 () Bool)

(assert (=> b!691365 (= e!393440 (not (contains!3689 acc!681 k!2843)))))

(declare-fun b!691372 () Bool)

(declare-fun Unit!24380 () Unit!24378)

(assert (=> b!691372 (= e!393442 Unit!24380)))

(assert (=> b!691372 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316421 () Unit!24378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39775 (_ BitVec 64) (_ BitVec 32)) Unit!24378)

(assert (=> b!691372 (= lt!316421 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691372 false))

(declare-fun b!691373 () Bool)

(declare-fun Unit!24381 () Unit!24378)

(assert (=> b!691373 (= e!393442 Unit!24381)))

(declare-fun b!691374 () Bool)

(declare-fun res!455888 () Bool)

(assert (=> b!691374 (=> (not res!455888) (not e!393443))))

(assert (=> b!691374 (= res!455888 e!393444)))

(declare-fun res!455892 () Bool)

(assert (=> b!691374 (=> res!455892 e!393444)))

(assert (=> b!691374 (= res!455892 e!393441)))

(declare-fun res!455891 () Bool)

(assert (=> b!691374 (=> (not res!455891) (not e!393441))))

(assert (=> b!691374 (= res!455891 (bvsgt from!3004 i!1382))))

(declare-fun b!691375 () Bool)

(declare-fun res!455886 () Bool)

(assert (=> b!691375 (=> (not res!455886) (not e!393443))))

(assert (=> b!691375 (= res!455886 (validKeyInArray!0 (select (arr!19052 a!3626) from!3004)))))

(declare-fun b!691376 () Bool)

(declare-fun res!455884 () Bool)

(assert (=> b!691376 (=> (not res!455884) (not e!393443))))

(assert (=> b!691376 (= res!455884 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61798 res!455894) b!691361))

(assert (= (and b!691361 res!455887) b!691371))

(assert (= (and b!691371 res!455885) b!691360))

(assert (= (and b!691360 res!455893) b!691374))

(assert (= (and b!691374 res!455891) b!691362))

(assert (= (and b!691374 (not res!455892)) b!691366))

(assert (= (and b!691366 res!455889) b!691365))

(assert (= (and b!691374 res!455888) b!691368))

(assert (= (and b!691368 res!455880) b!691376))

(assert (= (and b!691376 res!455884) b!691367))

(assert (= (and b!691367 res!455881) b!691369))

(assert (= (and b!691369 res!455882) b!691363))

(assert (= (and b!691363 res!455890) b!691364))

(assert (= (and b!691364 res!455883) b!691375))

(assert (= (and b!691375 res!455886) b!691370))

(assert (= (and b!691370 c!78107) b!691372))

(assert (= (and b!691370 (not c!78107)) b!691373))

(declare-fun m!654391 () Bool)

(assert (=> b!691360 m!654391))

(declare-fun m!654393 () Bool)

(assert (=> b!691361 m!654393))

(declare-fun m!654395 () Bool)

(assert (=> b!691369 m!654395))

(declare-fun m!654397 () Bool)

(assert (=> b!691370 m!654397))

(declare-fun m!654399 () Bool)

(assert (=> b!691363 m!654399))

(declare-fun m!654401 () Bool)

(assert (=> b!691362 m!654401))

(assert (=> b!691365 m!654401))

(declare-fun m!654403 () Bool)

(assert (=> b!691372 m!654403))

(declare-fun m!654405 () Bool)

(assert (=> b!691372 m!654405))

(assert (=> b!691375 m!654397))

(assert (=> b!691375 m!654397))

(declare-fun m!654407 () Bool)

(assert (=> b!691375 m!654407))

(declare-fun m!654409 () Bool)

(assert (=> b!691368 m!654409))

(declare-fun m!654411 () Bool)

(assert (=> b!691371 m!654411))

(declare-fun m!654413 () Bool)

(assert (=> b!691376 m!654413))

(declare-fun m!654415 () Bool)

(assert (=> start!61798 m!654415))

(push 1)

(assert (not b!691375))

(assert (not b!691369))

(assert (not b!691363))

(assert (not b!691376))

(assert (not b!691372))

(assert (not b!691365))

(assert (not b!691368))

(assert (not b!691362))

(assert (not b!691371))

(assert (not start!61798))

(assert (not b!691360))

(assert (not b!691361))

(check-sat)

