; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30018 () Bool)

(assert start!30018)

(declare-fun b!300998 () Bool)

(declare-fun res!158910 () Bool)

(declare-fun e!190024 () Bool)

(assert (=> b!300998 (=> (not res!158910) (not e!190024))))

(declare-datatypes ((array!15239 0))(
  ( (array!15240 (arr!7210 (Array (_ BitVec 32) (_ BitVec 64))) (size!7562 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15239)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300998 (= res!158910 (and (= (size!7562 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7562 a!3293))))))

(declare-fun b!300999 () Bool)

(declare-fun res!158907 () Bool)

(assert (=> b!300999 (=> (not res!158907) (not e!190024))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2361 0))(
  ( (MissingZero!2361 (index!11620 (_ BitVec 32))) (Found!2361 (index!11621 (_ BitVec 32))) (Intermediate!2361 (undefined!3173 Bool) (index!11622 (_ BitVec 32)) (x!29868 (_ BitVec 32))) (Undefined!2361) (MissingVacant!2361 (index!11623 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15239 (_ BitVec 32)) SeekEntryResult!2361)

(assert (=> b!300999 (= res!158907 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2361 i!1240)))))

(declare-fun b!301000 () Bool)

(declare-fun res!158908 () Bool)

(assert (=> b!301000 (=> (not res!158908) (not e!190024))))

(declare-fun arrayContainsKey!0 (array!15239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301000 (= res!158908 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!158909 () Bool)

(assert (=> start!30018 (=> (not res!158909) (not e!190024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30018 (= res!158909 (validMask!0 mask!3709))))

(assert (=> start!30018 e!190024))

(assert (=> start!30018 true))

(declare-fun array_inv!5164 (array!15239) Bool)

(assert (=> start!30018 (array_inv!5164 a!3293)))

(declare-fun b!301001 () Bool)

(assert (=> b!301001 (= e!190024 (bvsgt #b00000000000000000000000000000000 (size!7562 a!3293)))))

(declare-fun b!301002 () Bool)

(declare-fun res!158906 () Bool)

(assert (=> b!301002 (=> (not res!158906) (not e!190024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301002 (= res!158906 (validKeyInArray!0 k!2441))))

(assert (= (and start!30018 res!158909) b!300998))

(assert (= (and b!300998 res!158910) b!301002))

(assert (= (and b!301002 res!158906) b!301000))

(assert (= (and b!301000 res!158908) b!300999))

(assert (= (and b!300999 res!158907) b!301001))

(declare-fun m!312889 () Bool)

(assert (=> b!300999 m!312889))

(declare-fun m!312891 () Bool)

(assert (=> b!301000 m!312891))

(declare-fun m!312893 () Bool)

(assert (=> start!30018 m!312893))

(declare-fun m!312895 () Bool)

(assert (=> start!30018 m!312895))

(declare-fun m!312897 () Bool)

(assert (=> b!301002 m!312897))

(push 1)

(assert (not b!300999))

(assert (not b!301000))

(assert (not b!301002))

