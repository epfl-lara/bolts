; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60274 () Bool)

(assert start!60274)

(declare-fun b!675355 () Bool)

(declare-fun res!441968 () Bool)

(declare-fun e!385323 () Bool)

(assert (=> b!675355 (=> (not res!441968) (not e!385323))))

(declare-datatypes ((array!39277 0))(
  ( (array!39278 (arr!18827 (Array (_ BitVec 32) (_ BitVec 64))) (size!19191 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39277)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675355 (= res!441968 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675356 () Bool)

(declare-fun e!385326 () Bool)

(declare-datatypes ((List!12921 0))(
  ( (Nil!12918) (Cons!12917 (h!13962 (_ BitVec 64)) (t!19157 List!12921)) )
))
(declare-fun acc!681 () List!12921)

(declare-fun contains!3464 (List!12921 (_ BitVec 64)) Bool)

(assert (=> b!675356 (= e!385326 (contains!3464 acc!681 k!2843))))

(declare-fun b!675357 () Bool)

(declare-fun res!441967 () Bool)

(assert (=> b!675357 (=> (not res!441967) (not e!385323))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675357 (= res!441967 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19191 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!441969 () Bool)

(assert (=> start!60274 (=> (not res!441969) (not e!385323))))

(assert (=> start!60274 (= res!441969 (and (bvslt (size!19191 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19191 a!3626))))))

(assert (=> start!60274 e!385323))

(assert (=> start!60274 true))

(declare-fun array_inv!14601 (array!39277) Bool)

(assert (=> start!60274 (array_inv!14601 a!3626)))

(declare-fun b!675358 () Bool)

(declare-fun res!441974 () Bool)

(assert (=> b!675358 (=> (not res!441974) (not e!385323))))

(declare-fun e!385320 () Bool)

(assert (=> b!675358 (= res!441974 e!385320)))

(declare-fun res!441973 () Bool)

(assert (=> b!675358 (=> res!441973 e!385320)))

(declare-fun e!385321 () Bool)

(assert (=> b!675358 (= res!441973 e!385321)))

(declare-fun res!441955 () Bool)

(assert (=> b!675358 (=> (not res!441955) (not e!385321))))

(assert (=> b!675358 (= res!441955 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675359 () Bool)

(declare-fun res!441970 () Bool)

(assert (=> b!675359 (=> (not res!441970) (not e!385323))))

(declare-fun arrayNoDuplicates!0 (array!39277 (_ BitVec 32) List!12921) Bool)

(assert (=> b!675359 (= res!441970 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12918))))

(declare-fun b!675360 () Bool)

(assert (=> b!675360 (= e!385321 (contains!3464 acc!681 k!2843))))

(declare-fun b!675361 () Bool)

(declare-fun e!385324 () Bool)

(assert (=> b!675361 (= e!385324 (not (contains!3464 acc!681 k!2843)))))

(declare-fun b!675362 () Bool)

(declare-fun res!441972 () Bool)

(assert (=> b!675362 (=> (not res!441972) (not e!385323))))

(assert (=> b!675362 (= res!441972 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675363 () Bool)

(assert (=> b!675363 (= e!385320 e!385324)))

(declare-fun res!441963 () Bool)

(assert (=> b!675363 (=> (not res!441963) (not e!385324))))

(assert (=> b!675363 (= res!441963 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675364 () Bool)

(declare-fun res!441971 () Bool)

(assert (=> b!675364 (=> (not res!441971) (not e!385323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675364 (= res!441971 (validKeyInArray!0 k!2843))))

(declare-fun b!675365 () Bool)

(assert (=> b!675365 (= e!385323 false)))

(declare-fun lt!312672 () Bool)

(assert (=> b!675365 (= lt!312672 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675366 () Bool)

(declare-fun e!385327 () Bool)

(assert (=> b!675366 (= e!385327 (not (contains!3464 acc!681 k!2843)))))

(declare-fun b!675367 () Bool)

(declare-fun res!441966 () Bool)

(assert (=> b!675367 (=> (not res!441966) (not e!385323))))

(assert (=> b!675367 (= res!441966 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19191 a!3626))))))

(declare-fun b!675368 () Bool)

(declare-fun res!441957 () Bool)

(assert (=> b!675368 (=> (not res!441957) (not e!385323))))

(assert (=> b!675368 (= res!441957 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675369 () Bool)

(declare-fun e!385325 () Bool)

(assert (=> b!675369 (= e!385325 e!385327)))

(declare-fun res!441962 () Bool)

(assert (=> b!675369 (=> (not res!441962) (not e!385327))))

(assert (=> b!675369 (= res!441962 (bvsle from!3004 i!1382))))

(declare-fun b!675370 () Bool)

(declare-fun res!441961 () Bool)

(assert (=> b!675370 (=> (not res!441961) (not e!385323))))

(assert (=> b!675370 (= res!441961 e!385325)))

(declare-fun res!441960 () Bool)

(assert (=> b!675370 (=> res!441960 e!385325)))

(assert (=> b!675370 (= res!441960 e!385326)))

(declare-fun res!441964 () Bool)

(assert (=> b!675370 (=> (not res!441964) (not e!385326))))

(assert (=> b!675370 (= res!441964 (bvsgt from!3004 i!1382))))

(declare-fun b!675371 () Bool)

(declare-fun res!441965 () Bool)

(assert (=> b!675371 (=> (not res!441965) (not e!385323))))

(assert (=> b!675371 (= res!441965 (not (contains!3464 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675372 () Bool)

(declare-fun res!441959 () Bool)

(assert (=> b!675372 (=> (not res!441959) (not e!385323))))

(assert (=> b!675372 (= res!441959 (not (validKeyInArray!0 (select (arr!18827 a!3626) from!3004))))))

(declare-fun b!675373 () Bool)

(declare-fun res!441958 () Bool)

(assert (=> b!675373 (=> (not res!441958) (not e!385323))))

(declare-fun noDuplicate!711 (List!12921) Bool)

(assert (=> b!675373 (= res!441958 (noDuplicate!711 acc!681))))

(declare-fun b!675374 () Bool)

(declare-fun res!441956 () Bool)

(assert (=> b!675374 (=> (not res!441956) (not e!385323))))

(assert (=> b!675374 (= res!441956 (not (contains!3464 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60274 res!441969) b!675373))

(assert (= (and b!675373 res!441958) b!675374))

(assert (= (and b!675374 res!441956) b!675371))

(assert (= (and b!675371 res!441965) b!675370))

(assert (= (and b!675370 res!441964) b!675356))

(assert (= (and b!675370 (not res!441960)) b!675369))

(assert (= (and b!675369 res!441962) b!675366))

(assert (= (and b!675370 res!441961) b!675359))

(assert (= (and b!675359 res!441970) b!675368))

(assert (= (and b!675368 res!441957) b!675367))

(assert (= (and b!675367 res!441966) b!675364))

(assert (= (and b!675364 res!441971) b!675355))

(assert (= (and b!675355 res!441968) b!675357))

(assert (= (and b!675357 res!441967) b!675372))

(assert (= (and b!675372 res!441959) b!675362))

(assert (= (and b!675362 res!441972) b!675358))

(assert (= (and b!675358 res!441955) b!675360))

(assert (= (and b!675358 (not res!441973)) b!675363))

(assert (= (and b!675363 res!441963) b!675361))

(assert (= (and b!675358 res!441974) b!675365))

(declare-fun m!642801 () Bool)

(assert (=> b!675371 m!642801))

(declare-fun m!642803 () Bool)

(assert (=> b!675360 m!642803))

(declare-fun m!642805 () Bool)

(assert (=> b!675374 m!642805))

(assert (=> b!675356 m!642803))

(declare-fun m!642807 () Bool)

(assert (=> start!60274 m!642807))

(declare-fun m!642809 () Bool)

(assert (=> b!675364 m!642809))

(declare-fun m!642811 () Bool)

(assert (=> b!675368 m!642811))

(declare-fun m!642813 () Bool)

(assert (=> b!675365 m!642813))

(declare-fun m!642815 () Bool)

(assert (=> b!675359 m!642815))

(declare-fun m!642817 () Bool)

(assert (=> b!675355 m!642817))

(assert (=> b!675366 m!642803))

(assert (=> b!675361 m!642803))

(declare-fun m!642819 () Bool)

(assert (=> b!675372 m!642819))

(assert (=> b!675372 m!642819))

(declare-fun m!642821 () Bool)

(assert (=> b!675372 m!642821))

(declare-fun m!642823 () Bool)

(assert (=> b!675373 m!642823))

(push 1)

(assert (not b!675374))

(assert (not b!675359))

(assert (not start!60274))

(assert (not b!675373))

(assert (not b!675365))

(assert (not b!675371))

(assert (not b!675361))

(assert (not b!675360))

(assert (not b!675372))

(assert (not b!675364))

(assert (not b!675366))

(assert (not b!675368))

(assert (not b!675356))

(assert (not b!675355))

(check-sat)

(pop 1)

(push 1)

