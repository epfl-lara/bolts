; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92506 () Bool)

(assert start!92506)

(declare-fun b!1051377 () Bool)

(declare-fun e!596852 () Bool)

(declare-fun e!596853 () Bool)

(assert (=> b!1051377 (= e!596852 e!596853)))

(declare-fun res!700615 () Bool)

(assert (=> b!1051377 (=> res!700615 e!596853)))

(declare-fun lt!464247 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051377 (= res!700615 (or (bvsgt lt!464247 i!1381) (bvsle i!1381 lt!464247)))))

(declare-fun b!1051378 () Bool)

(declare-fun res!700614 () Bool)

(declare-fun e!596855 () Bool)

(assert (=> b!1051378 (=> (not res!700614) (not e!596855))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051378 (= res!700614 (validKeyInArray!0 k!2747))))

(declare-datatypes ((array!66255 0))(
  ( (array!66256 (arr!31863 (Array (_ BitVec 32) (_ BitVec 64))) (size!32400 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66255)

(declare-fun b!1051379 () Bool)

(declare-fun arrayContainsKey!0 (array!66255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051379 (= e!596853 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051380 () Bool)

(declare-fun e!596858 () Bool)

(assert (=> b!1051380 (= e!596858 true)))

(declare-datatypes ((List!22306 0))(
  ( (Nil!22303) (Cons!22302 (h!23511 (_ BitVec 64)) (t!31620 List!22306)) )
))
(declare-fun arrayNoDuplicates!0 (array!66255 (_ BitVec 32) List!22306) Bool)

(assert (=> b!1051380 (arrayNoDuplicates!0 a!3488 lt!464247 Nil!22303)))

(declare-datatypes ((Unit!34407 0))(
  ( (Unit!34408) )
))
(declare-fun lt!464246 () Unit!34407)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66255 (_ BitVec 32) (_ BitVec 32)) Unit!34407)

(assert (=> b!1051380 (= lt!464246 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464247))))

(declare-fun b!1051381 () Bool)

(declare-fun res!700620 () Bool)

(assert (=> b!1051381 (=> (not res!700620) (not e!596855))))

(assert (=> b!1051381 (= res!700620 (= (select (arr!31863 a!3488) i!1381) k!2747))))

(declare-fun res!700617 () Bool)

(assert (=> start!92506 (=> (not res!700617) (not e!596855))))

(assert (=> start!92506 (= res!700617 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32400 a!3488)) (bvslt (size!32400 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92506 e!596855))

(assert (=> start!92506 true))

(declare-fun array_inv!24485 (array!66255) Bool)

(assert (=> start!92506 (array_inv!24485 a!3488)))

(declare-fun b!1051382 () Bool)

(declare-fun e!596857 () Bool)

(assert (=> b!1051382 (= e!596857 (not e!596858))))

(declare-fun res!700612 () Bool)

(assert (=> b!1051382 (=> res!700612 e!596858)))

(assert (=> b!1051382 (= res!700612 (or (bvsgt lt!464247 i!1381) (bvsle i!1381 lt!464247)))))

(assert (=> b!1051382 e!596852))

(declare-fun res!700618 () Bool)

(assert (=> b!1051382 (=> (not res!700618) (not e!596852))))

(assert (=> b!1051382 (= res!700618 (= (select (store (arr!31863 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464247) k!2747))))

(declare-fun b!1051383 () Bool)

(declare-fun e!596856 () Bool)

(assert (=> b!1051383 (= e!596856 e!596857)))

(declare-fun res!700619 () Bool)

(assert (=> b!1051383 (=> (not res!700619) (not e!596857))))

(assert (=> b!1051383 (= res!700619 (not (= lt!464247 i!1381)))))

(declare-fun lt!464248 () array!66255)

(declare-fun arrayScanForKey!0 (array!66255 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051383 (= lt!464247 (arrayScanForKey!0 lt!464248 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051384 () Bool)

(assert (=> b!1051384 (= e!596855 e!596856)))

(declare-fun res!700616 () Bool)

(assert (=> b!1051384 (=> (not res!700616) (not e!596856))))

(assert (=> b!1051384 (= res!700616 (arrayContainsKey!0 lt!464248 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051384 (= lt!464248 (array!66256 (store (arr!31863 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32400 a!3488)))))

(declare-fun b!1051385 () Bool)

(declare-fun res!700613 () Bool)

(assert (=> b!1051385 (=> (not res!700613) (not e!596855))))

(assert (=> b!1051385 (= res!700613 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22303))))

(assert (= (and start!92506 res!700617) b!1051385))

(assert (= (and b!1051385 res!700613) b!1051378))

(assert (= (and b!1051378 res!700614) b!1051381))

(assert (= (and b!1051381 res!700620) b!1051384))

(assert (= (and b!1051384 res!700616) b!1051383))

(assert (= (and b!1051383 res!700619) b!1051382))

(assert (= (and b!1051382 res!700618) b!1051377))

(assert (= (and b!1051377 (not res!700615)) b!1051379))

(assert (= (and b!1051382 (not res!700612)) b!1051380))

(declare-fun m!972023 () Bool)

(assert (=> b!1051379 m!972023))

(declare-fun m!972025 () Bool)

(assert (=> b!1051378 m!972025))

(declare-fun m!972027 () Bool)

(assert (=> start!92506 m!972027))

(declare-fun m!972029 () Bool)

(assert (=> b!1051380 m!972029))

(declare-fun m!972031 () Bool)

(assert (=> b!1051380 m!972031))

(declare-fun m!972033 () Bool)

(assert (=> b!1051385 m!972033))

(declare-fun m!972035 () Bool)

(assert (=> b!1051382 m!972035))

(declare-fun m!972037 () Bool)

(assert (=> b!1051382 m!972037))

(declare-fun m!972039 () Bool)

(assert (=> b!1051381 m!972039))

(declare-fun m!972041 () Bool)

(assert (=> b!1051384 m!972041))

(assert (=> b!1051384 m!972035))

(declare-fun m!972043 () Bool)

(assert (=> b!1051383 m!972043))

(push 1)

