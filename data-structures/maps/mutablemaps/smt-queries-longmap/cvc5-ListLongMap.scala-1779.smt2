; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32382 () Bool)

(assert start!32382)

(declare-fun b!322377 () Bool)

(assert (=> b!322377 false))

(declare-datatypes ((Unit!9871 0))(
  ( (Unit!9872) )
))
(declare-fun lt!156436 () Unit!9871)

(declare-fun e!199503 () Unit!9871)

(assert (=> b!322377 (= lt!156436 e!199503)))

(declare-datatypes ((array!16517 0))(
  ( (array!16518 (arr!7813 (Array (_ BitVec 32) (_ BitVec 64))) (size!8165 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16517)

(declare-fun c!50619 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2955 0))(
  ( (MissingZero!2955 (index!13996 (_ BitVec 32))) (Found!2955 (index!13997 (_ BitVec 32))) (Intermediate!2955 (undefined!3767 Bool) (index!13998 (_ BitVec 32)) (x!32226 (_ BitVec 32))) (Undefined!2955) (MissingVacant!2955 (index!13999 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16517 (_ BitVec 32)) SeekEntryResult!2955)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322377 (= c!50619 (is-Intermediate!2955 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199502 () Unit!9871)

(declare-fun Unit!9873 () Unit!9871)

(assert (=> b!322377 (= e!199502 Unit!9873)))

(declare-fun b!322378 () Bool)

(declare-fun res!176403 () Bool)

(declare-fun e!199504 () Bool)

(assert (=> b!322378 (=> (not res!176403) (not e!199504))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322378 (= res!176403 (and (= (select (arr!7813 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8165 a!3305))))))

(declare-fun b!322379 () Bool)

(assert (=> b!322379 false))

(declare-fun Unit!9874 () Unit!9871)

(assert (=> b!322379 (= e!199502 Unit!9874)))

(declare-fun b!322380 () Bool)

(assert (=> b!322380 (= e!199504 (not true))))

(assert (=> b!322380 (= index!1840 resIndex!58)))

(declare-fun lt!156435 () Unit!9871)

(declare-fun e!199501 () Unit!9871)

(assert (=> b!322380 (= lt!156435 e!199501)))

(declare-fun c!50620 () Bool)

(assert (=> b!322380 (= c!50620 (not (= resIndex!58 index!1840)))))

(declare-fun b!322382 () Bool)

(declare-fun Unit!9875 () Unit!9871)

(assert (=> b!322382 (= e!199501 Unit!9875)))

(declare-fun b!322383 () Bool)

(declare-fun Unit!9876 () Unit!9871)

(assert (=> b!322383 (= e!199503 Unit!9876)))

(declare-fun b!322384 () Bool)

(declare-fun res!176402 () Bool)

(assert (=> b!322384 (=> (not res!176402) (not e!199504))))

(declare-fun lt!156437 () SeekEntryResult!2955)

(assert (=> b!322384 (= res!176402 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156437))))

(declare-fun b!322385 () Bool)

(declare-fun res!176396 () Bool)

(declare-fun e!199500 () Bool)

(assert (=> b!322385 (=> (not res!176396) (not e!199500))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16517 (_ BitVec 32)) SeekEntryResult!2955)

(assert (=> b!322385 (= res!176396 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2955 i!1250)))))

(declare-fun b!322386 () Bool)

(declare-fun res!176400 () Bool)

(assert (=> b!322386 (=> (not res!176400) (not e!199500))))

(declare-fun arrayContainsKey!0 (array!16517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322386 (= res!176400 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322387 () Bool)

(declare-fun res!176395 () Bool)

(assert (=> b!322387 (=> (not res!176395) (not e!199504))))

(assert (=> b!322387 (= res!176395 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7813 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322388 () Bool)

(declare-fun res!176394 () Bool)

(assert (=> b!322388 (=> (not res!176394) (not e!199500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322388 (= res!176394 (validKeyInArray!0 k!2497))))

(declare-fun b!322389 () Bool)

(declare-fun res!176399 () Bool)

(assert (=> b!322389 (=> (not res!176399) (not e!199500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16517 (_ BitVec 32)) Bool)

(assert (=> b!322389 (= res!176399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322390 () Bool)

(assert (=> b!322390 (= e!199500 e!199504)))

(declare-fun res!176398 () Bool)

(assert (=> b!322390 (=> (not res!176398) (not e!199504))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322390 (= res!176398 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156437))))

(assert (=> b!322390 (= lt!156437 (Intermediate!2955 false resIndex!58 resX!58))))

(declare-fun res!176401 () Bool)

(assert (=> start!32382 (=> (not res!176401) (not e!199500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32382 (= res!176401 (validMask!0 mask!3777))))

(assert (=> start!32382 e!199500))

(declare-fun array_inv!5767 (array!16517) Bool)

(assert (=> start!32382 (array_inv!5767 a!3305)))

(assert (=> start!32382 true))

(declare-fun b!322381 () Bool)

(declare-fun res!176397 () Bool)

(assert (=> b!322381 (=> (not res!176397) (not e!199500))))

(assert (=> b!322381 (= res!176397 (and (= (size!8165 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8165 a!3305))))))

(declare-fun b!322391 () Bool)

(declare-fun Unit!9877 () Unit!9871)

(assert (=> b!322391 (= e!199503 Unit!9877)))

(assert (=> b!322391 false))

(declare-fun b!322392 () Bool)

(assert (=> b!322392 (= e!199501 e!199502)))

(declare-fun c!50621 () Bool)

(assert (=> b!322392 (= c!50621 (or (= (select (arr!7813 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7813 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!32382 res!176401) b!322381))

(assert (= (and b!322381 res!176397) b!322388))

(assert (= (and b!322388 res!176394) b!322386))

(assert (= (and b!322386 res!176400) b!322385))

(assert (= (and b!322385 res!176396) b!322389))

(assert (= (and b!322389 res!176399) b!322390))

(assert (= (and b!322390 res!176398) b!322378))

(assert (= (and b!322378 res!176403) b!322384))

(assert (= (and b!322384 res!176402) b!322387))

(assert (= (and b!322387 res!176395) b!322380))

(assert (= (and b!322380 c!50620) b!322392))

(assert (= (and b!322380 (not c!50620)) b!322382))

(assert (= (and b!322392 c!50621) b!322379))

(assert (= (and b!322392 (not c!50621)) b!322377))

(assert (= (and b!322377 c!50619) b!322383))

(assert (= (and b!322377 (not c!50619)) b!322391))

(declare-fun m!330193 () Bool)

(assert (=> b!322388 m!330193))

(declare-fun m!330195 () Bool)

(assert (=> b!322377 m!330195))

(assert (=> b!322377 m!330195))

(declare-fun m!330197 () Bool)

(assert (=> b!322377 m!330197))

(declare-fun m!330199 () Bool)

(assert (=> b!322378 m!330199))

(declare-fun m!330201 () Bool)

(assert (=> b!322390 m!330201))

(assert (=> b!322390 m!330201))

(declare-fun m!330203 () Bool)

(assert (=> b!322390 m!330203))

(declare-fun m!330205 () Bool)

(assert (=> b!322392 m!330205))

(declare-fun m!330207 () Bool)

(assert (=> b!322389 m!330207))

(declare-fun m!330209 () Bool)

(assert (=> b!322386 m!330209))

(assert (=> b!322387 m!330205))

(declare-fun m!330211 () Bool)

(assert (=> start!32382 m!330211))

(declare-fun m!330213 () Bool)

(assert (=> start!32382 m!330213))

(declare-fun m!330215 () Bool)

(assert (=> b!322385 m!330215))

(declare-fun m!330217 () Bool)

(assert (=> b!322384 m!330217))

(push 1)

