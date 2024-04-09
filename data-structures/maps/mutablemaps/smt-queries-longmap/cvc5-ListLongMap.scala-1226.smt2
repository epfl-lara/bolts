; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25900 () Bool)

(assert start!25900)

(declare-fun b!267567 () Bool)

(declare-fun e!172972 () Bool)

(declare-datatypes ((array!13007 0))(
  ( (array!13008 (arr!6154 (Array (_ BitVec 32) (_ BitVec 64))) (size!6506 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13007)

(assert (=> b!267567 (= e!172972 (and (bvslt #b00000000000000000000000000000000 (size!6506 a!3325)) (bvsge (size!6506 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267564 () Bool)

(declare-fun res!131900 () Bool)

(assert (=> b!267564 (=> (not res!131900) (not e!172972))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!267564 (= res!131900 (and (= (size!6506 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6506 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6506 a!3325))))))

(declare-fun b!267566 () Bool)

(declare-fun res!131898 () Bool)

(assert (=> b!267566 (=> (not res!131898) (not e!172972))))

(declare-datatypes ((List!3983 0))(
  ( (Nil!3980) (Cons!3979 (h!4646 (_ BitVec 64)) (t!9073 List!3983)) )
))
(declare-fun arrayNoDuplicates!0 (array!13007 (_ BitVec 32) List!3983) Bool)

(assert (=> b!267566 (= res!131898 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3980))))

(declare-fun res!131901 () Bool)

(assert (=> start!25900 (=> (not res!131901) (not e!172972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25900 (= res!131901 (validMask!0 mask!3868))))

(assert (=> start!25900 e!172972))

(declare-fun array_inv!4108 (array!13007) Bool)

(assert (=> start!25900 (array_inv!4108 a!3325)))

(assert (=> start!25900 true))

(declare-fun b!267565 () Bool)

(declare-fun res!131899 () Bool)

(assert (=> b!267565 (=> (not res!131899) (not e!172972))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267565 (= res!131899 (validKeyInArray!0 k!2581))))

(assert (= (and start!25900 res!131901) b!267564))

(assert (= (and b!267564 res!131900) b!267565))

(assert (= (and b!267565 res!131899) b!267566))

(assert (= (and b!267566 res!131898) b!267567))

(declare-fun m!283939 () Bool)

(assert (=> b!267566 m!283939))

(declare-fun m!283941 () Bool)

(assert (=> start!25900 m!283941))

(declare-fun m!283943 () Bool)

(assert (=> start!25900 m!283943))

(declare-fun m!283945 () Bool)

(assert (=> b!267565 m!283945))

(push 1)

(assert (not b!267566))

(assert (not b!267565))

(assert (not start!25900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!267612 () Bool)

(declare-fun e!173004 () Bool)

(declare-fun contains!1926 (List!3983 (_ BitVec 64)) Bool)

(assert (=> b!267612 (= e!173004 (contains!1926 Nil!3980 (select (arr!6154 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!267613 () Bool)

(declare-fun e!173003 () Bool)

(declare-fun call!25342 () Bool)

(assert (=> b!267613 (= e!173003 call!25342)))

(declare-fun b!267614 () Bool)

(declare-fun e!173002 () Bool)

(assert (=> b!267614 (= e!173002 e!173003)))

(declare-fun c!45388 () Bool)

(assert (=> b!267614 (= c!45388 (validKeyInArray!0 (select (arr!6154 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64307 () Bool)

(declare-fun res!131940 () Bool)

(declare-fun e!173001 () Bool)

(assert (=> d!64307 (=> res!131940 e!173001)))

(assert (=> d!64307 (= res!131940 (bvsge #b00000000000000000000000000000000 (size!6506 a!3325)))))

(assert (=> d!64307 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3980) e!173001)))

(declare-fun bm!25339 () Bool)

(assert (=> bm!25339 (= call!25342 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45388 (Cons!3979 (select (arr!6154 a!3325) #b00000000000000000000000000000000) Nil!3980) Nil!3980)))))

(declare-fun b!267615 () Bool)

(assert (=> b!267615 (= e!173001 e!173002)))

(declare-fun res!131939 () Bool)

(assert (=> b!267615 (=> (not res!131939) (not e!173002))))

(assert (=> b!267615 (= res!131939 (not e!173004))))

(declare-fun res!131938 () Bool)

(assert (=> b!267615 (=> (not res!131938) (not e!173004))))

(assert (=> b!267615 (= res!131938 (validKeyInArray!0 (select (arr!6154 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!267616 () Bool)

(assert (=> b!267616 (= e!173003 call!25342)))

(assert (= (and d!64307 (not res!131940)) b!267615))

(assert (= (and b!267615 res!131938) b!267612))

(assert (= (and b!267615 res!131939) b!267614))

(assert (= (and b!267614 c!45388) b!267613))

(assert (= (and b!267614 (not c!45388)) b!267616))

(assert (= (or b!267613 b!267616) bm!25339))

(declare-fun m!283963 () Bool)

(assert (=> b!267612 m!283963))

(assert (=> b!267612 m!283963))

(declare-fun m!283965 () Bool)

