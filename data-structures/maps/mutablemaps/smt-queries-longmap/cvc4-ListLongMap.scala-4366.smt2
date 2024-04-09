; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60244 () Bool)

(assert start!60244)

(declare-fun b!674322 () Bool)

(declare-fun e!384912 () Bool)

(declare-datatypes ((List!12906 0))(
  ( (Nil!12903) (Cons!12902 (h!13947 (_ BitVec 64)) (t!19142 List!12906)) )
))
(declare-fun acc!681 () List!12906)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3449 (List!12906 (_ BitVec 64)) Bool)

(assert (=> b!674322 (= e!384912 (not (contains!3449 acc!681 k!2843)))))

(declare-fun b!674323 () Bool)

(declare-fun res!440976 () Bool)

(declare-fun e!384910 () Bool)

(assert (=> b!674323 (=> (not res!440976) (not e!384910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674323 (= res!440976 (validKeyInArray!0 k!2843))))

(declare-fun b!674324 () Bool)

(declare-fun res!440974 () Bool)

(declare-fun e!384906 () Bool)

(assert (=> b!674324 (=> (not res!440974) (not e!384906))))

(declare-fun lt!312573 () List!12906)

(assert (=> b!674324 (= res!440974 (not (contains!3449 lt!312573 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674325 () Bool)

(assert (=> b!674325 (= e!384906 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39247 0))(
  ( (array!39248 (arr!18812 (Array (_ BitVec 32) (_ BitVec 64))) (size!19176 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39247)

(declare-fun arrayNoDuplicates!0 (array!39247 (_ BitVec 32) List!12906) Bool)

(assert (=> b!674325 (arrayNoDuplicates!0 (array!39248 (store (arr!18812 a!3626) i!1382 k!2843) (size!19176 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312573)))

(declare-datatypes ((Unit!23712 0))(
  ( (Unit!23713) )
))
(declare-fun lt!312571 () Unit!23712)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39247 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12906) Unit!23712)

(assert (=> b!674325 (= lt!312571 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312573))))

(declare-fun b!674327 () Bool)

(declare-fun res!440977 () Bool)

(assert (=> b!674327 (=> (not res!440977) (not e!384910))))

(assert (=> b!674327 (= res!440977 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19176 a!3626))))))

(declare-fun b!674328 () Bool)

(declare-fun e!384904 () Bool)

(assert (=> b!674328 (= e!384904 (contains!3449 lt!312573 k!2843))))

(declare-fun b!674329 () Bool)

(declare-fun e!384907 () Unit!23712)

(declare-fun Unit!23714 () Unit!23712)

(assert (=> b!674329 (= e!384907 Unit!23714)))

(declare-fun b!674330 () Bool)

(declare-fun res!440965 () Bool)

(assert (=> b!674330 (=> (not res!440965) (not e!384910))))

(declare-fun arrayContainsKey!0 (array!39247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674330 (= res!440965 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674331 () Bool)

(declare-fun res!440964 () Bool)

(assert (=> b!674331 (=> (not res!440964) (not e!384906))))

(assert (=> b!674331 (= res!440964 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312573))))

(declare-fun b!674332 () Bool)

(declare-fun res!440975 () Bool)

(assert (=> b!674332 (=> (not res!440975) (not e!384906))))

(assert (=> b!674332 (= res!440975 (not (contains!3449 lt!312573 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674333 () Bool)

(declare-fun e!384905 () Bool)

(assert (=> b!674333 (= e!384905 e!384912)))

(declare-fun res!440984 () Bool)

(assert (=> b!674333 (=> (not res!440984) (not e!384912))))

(assert (=> b!674333 (= res!440984 (bvsle from!3004 i!1382))))

(declare-fun b!674334 () Bool)

(declare-fun res!440967 () Bool)

(assert (=> b!674334 (=> (not res!440967) (not e!384910))))

(assert (=> b!674334 (= res!440967 (not (contains!3449 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674335 () Bool)

(declare-fun res!440962 () Bool)

(assert (=> b!674335 (=> (not res!440962) (not e!384910))))

(assert (=> b!674335 (= res!440962 (validKeyInArray!0 (select (arr!18812 a!3626) from!3004)))))

(declare-fun b!674336 () Bool)

(declare-fun e!384908 () Bool)

(assert (=> b!674336 (= e!384908 e!384906)))

(declare-fun res!440966 () Bool)

(assert (=> b!674336 (=> (not res!440966) (not e!384906))))

(assert (=> b!674336 (= res!440966 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!297 (List!12906 (_ BitVec 64)) List!12906)

(assert (=> b!674336 (= lt!312573 ($colon$colon!297 acc!681 (select (arr!18812 a!3626) from!3004)))))

(declare-fun b!674337 () Bool)

(declare-fun res!440971 () Bool)

(assert (=> b!674337 (=> (not res!440971) (not e!384910))))

(assert (=> b!674337 (= res!440971 (not (contains!3449 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674338 () Bool)

(declare-fun res!440982 () Bool)

(assert (=> b!674338 (=> (not res!440982) (not e!384910))))

(assert (=> b!674338 (= res!440982 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674339 () Bool)

(declare-fun res!440961 () Bool)

(assert (=> b!674339 (=> (not res!440961) (not e!384910))))

(declare-fun noDuplicate!696 (List!12906) Bool)

(assert (=> b!674339 (= res!440961 (noDuplicate!696 acc!681))))

(declare-fun b!674340 () Bool)

(declare-fun res!440980 () Bool)

(assert (=> b!674340 (=> (not res!440980) (not e!384906))))

(assert (=> b!674340 (= res!440980 (noDuplicate!696 lt!312573))))

(declare-fun b!674341 () Bool)

(declare-fun e!384903 () Bool)

(assert (=> b!674341 (= e!384903 (not (contains!3449 lt!312573 k!2843)))))

(declare-fun b!674342 () Bool)

(declare-fun res!440970 () Bool)

(assert (=> b!674342 (=> (not res!440970) (not e!384910))))

(assert (=> b!674342 (= res!440970 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12903))))

(declare-fun res!440981 () Bool)

(assert (=> start!60244 (=> (not res!440981) (not e!384910))))

(assert (=> start!60244 (= res!440981 (and (bvslt (size!19176 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19176 a!3626))))))

(assert (=> start!60244 e!384910))

(assert (=> start!60244 true))

(declare-fun array_inv!14586 (array!39247) Bool)

(assert (=> start!60244 (array_inv!14586 a!3626)))

(declare-fun b!674326 () Bool)

(declare-fun Unit!23715 () Unit!23712)

(assert (=> b!674326 (= e!384907 Unit!23715)))

(assert (=> b!674326 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312570 () Unit!23712)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39247 (_ BitVec 64) (_ BitVec 32)) Unit!23712)

(assert (=> b!674326 (= lt!312570 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674326 false))

(declare-fun b!674343 () Bool)

(declare-fun res!440983 () Bool)

(assert (=> b!674343 (=> (not res!440983) (not e!384910))))

(assert (=> b!674343 (= res!440983 e!384905)))

(declare-fun res!440960 () Bool)

(assert (=> b!674343 (=> res!440960 e!384905)))

(declare-fun e!384909 () Bool)

(assert (=> b!674343 (= res!440960 e!384909)))

(declare-fun res!440972 () Bool)

(assert (=> b!674343 (=> (not res!440972) (not e!384909))))

(assert (=> b!674343 (= res!440972 (bvsgt from!3004 i!1382))))

(declare-fun b!674344 () Bool)

(assert (=> b!674344 (= e!384910 e!384908)))

(declare-fun res!440969 () Bool)

(assert (=> b!674344 (=> (not res!440969) (not e!384908))))

(assert (=> b!674344 (= res!440969 (not (= (select (arr!18812 a!3626) from!3004) k!2843)))))

(declare-fun lt!312572 () Unit!23712)

(assert (=> b!674344 (= lt!312572 e!384907)))

(declare-fun c!77048 () Bool)

(assert (=> b!674344 (= c!77048 (= (select (arr!18812 a!3626) from!3004) k!2843))))

(declare-fun b!674345 () Bool)

(assert (=> b!674345 (= e!384909 (contains!3449 acc!681 k!2843))))

(declare-fun b!674346 () Bool)

(declare-fun res!440978 () Bool)

(assert (=> b!674346 (=> (not res!440978) (not e!384910))))

(assert (=> b!674346 (= res!440978 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19176 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674347 () Bool)

(declare-fun res!440979 () Bool)

(assert (=> b!674347 (=> (not res!440979) (not e!384906))))

(declare-fun e!384913 () Bool)

(assert (=> b!674347 (= res!440979 e!384913)))

(declare-fun res!440963 () Bool)

(assert (=> b!674347 (=> res!440963 e!384913)))

(assert (=> b!674347 (= res!440963 e!384904)))

(declare-fun res!440968 () Bool)

(assert (=> b!674347 (=> (not res!440968) (not e!384904))))

(assert (=> b!674347 (= res!440968 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674348 () Bool)

(assert (=> b!674348 (= e!384913 e!384903)))

(declare-fun res!440973 () Bool)

(assert (=> b!674348 (=> (not res!440973) (not e!384903))))

(assert (=> b!674348 (= res!440973 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60244 res!440981) b!674339))

(assert (= (and b!674339 res!440961) b!674337))

(assert (= (and b!674337 res!440971) b!674334))

(assert (= (and b!674334 res!440967) b!674343))

(assert (= (and b!674343 res!440972) b!674345))

(assert (= (and b!674343 (not res!440960)) b!674333))

(assert (= (and b!674333 res!440984) b!674322))

(assert (= (and b!674343 res!440983) b!674342))

(assert (= (and b!674342 res!440970) b!674338))

(assert (= (and b!674338 res!440982) b!674327))

(assert (= (and b!674327 res!440977) b!674323))

(assert (= (and b!674323 res!440976) b!674330))

(assert (= (and b!674330 res!440965) b!674346))

(assert (= (and b!674346 res!440978) b!674335))

(assert (= (and b!674335 res!440962) b!674344))

(assert (= (and b!674344 c!77048) b!674326))

(assert (= (and b!674344 (not c!77048)) b!674329))

(assert (= (and b!674344 res!440969) b!674336))

(assert (= (and b!674336 res!440966) b!674340))

(assert (= (and b!674340 res!440980) b!674324))

(assert (= (and b!674324 res!440974) b!674332))

(assert (= (and b!674332 res!440975) b!674347))

(assert (= (and b!674347 res!440968) b!674328))

(assert (= (and b!674347 (not res!440963)) b!674348))

(assert (= (and b!674348 res!440973) b!674341))

(assert (= (and b!674347 res!440979) b!674331))

(assert (= (and b!674331 res!440964) b!674325))

(declare-fun m!642301 () Bool)

(assert (=> b!674344 m!642301))

(declare-fun m!642303 () Bool)

(assert (=> b!674328 m!642303))

(assert (=> b!674341 m!642303))

(assert (=> b!674335 m!642301))

(assert (=> b!674335 m!642301))

(declare-fun m!642305 () Bool)

(assert (=> b!674335 m!642305))

(declare-fun m!642307 () Bool)

(assert (=> b!674324 m!642307))

(declare-fun m!642309 () Bool)

(assert (=> b!674325 m!642309))

(declare-fun m!642311 () Bool)

(assert (=> b!674325 m!642311))

(declare-fun m!642313 () Bool)

(assert (=> b!674325 m!642313))

(declare-fun m!642315 () Bool)

(assert (=> b!674322 m!642315))

(declare-fun m!642317 () Bool)

(assert (=> b!674323 m!642317))

(declare-fun m!642319 () Bool)

(assert (=> b!674340 m!642319))

(declare-fun m!642321 () Bool)

(assert (=> b!674337 m!642321))

(declare-fun m!642323 () Bool)

(assert (=> b!674338 m!642323))

(declare-fun m!642325 () Bool)

(assert (=> b!674332 m!642325))

(declare-fun m!642327 () Bool)

(assert (=> b!674339 m!642327))

(declare-fun m!642329 () Bool)

(assert (=> b!674334 m!642329))

(assert (=> b!674336 m!642301))

(assert (=> b!674336 m!642301))

(declare-fun m!642331 () Bool)

(assert (=> b!674336 m!642331))

(declare-fun m!642333 () Bool)

(assert (=> b!674342 m!642333))

(declare-fun m!642335 () Bool)

(assert (=> b!674331 m!642335))

(declare-fun m!642337 () Bool)

(assert (=> b!674326 m!642337))

(declare-fun m!642339 () Bool)

(assert (=> b!674326 m!642339))

(declare-fun m!642341 () Bool)

(assert (=> start!60244 m!642341))

(declare-fun m!642343 () Bool)

(assert (=> b!674330 m!642343))

(assert (=> b!674345 m!642315))

(push 1)

