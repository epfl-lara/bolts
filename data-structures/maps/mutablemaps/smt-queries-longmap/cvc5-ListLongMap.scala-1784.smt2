; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32412 () Bool)

(assert start!32412)

(declare-fun b!323097 () Bool)

(declare-fun res!176853 () Bool)

(declare-fun e!199770 () Bool)

(assert (=> b!323097 (=> (not res!176853) (not e!199770))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323097 (= res!176853 (validKeyInArray!0 k!2497))))

(declare-fun b!323098 () Bool)

(assert (=> b!323098 false))

(declare-datatypes ((Unit!9976 0))(
  ( (Unit!9977) )
))
(declare-fun e!199771 () Unit!9976)

(declare-fun Unit!9978 () Unit!9976)

(assert (=> b!323098 (= e!199771 Unit!9978)))

(declare-datatypes ((array!16547 0))(
  ( (array!16548 (arr!7828 (Array (_ BitVec 32) (_ BitVec 64))) (size!8180 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16547)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun e!199772 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun b!323099 () Bool)

(assert (=> b!323099 (= e!199772 (not (or (not (= (select (arr!7828 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323099 (= index!1840 resIndex!58)))

(declare-fun lt!156571 () Unit!9976)

(declare-fun e!199769 () Unit!9976)

(assert (=> b!323099 (= lt!156571 e!199769)))

(declare-fun c!50755 () Bool)

(assert (=> b!323099 (= c!50755 (not (= resIndex!58 index!1840)))))

(declare-fun b!323100 () Bool)

(assert (=> b!323100 false))

(declare-fun lt!156570 () Unit!9976)

(declare-fun e!199774 () Unit!9976)

(assert (=> b!323100 (= lt!156570 e!199774)))

(declare-fun c!50756 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2970 0))(
  ( (MissingZero!2970 (index!14056 (_ BitVec 32))) (Found!2970 (index!14057 (_ BitVec 32))) (Intermediate!2970 (undefined!3782 Bool) (index!14058 (_ BitVec 32)) (x!32281 (_ BitVec 32))) (Undefined!2970) (MissingVacant!2970 (index!14059 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16547 (_ BitVec 32)) SeekEntryResult!2970)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323100 (= c!50756 (is-Intermediate!2970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9979 () Unit!9976)

(assert (=> b!323100 (= e!199771 Unit!9979)))

(declare-fun b!323101 () Bool)

(declare-fun res!176850 () Bool)

(assert (=> b!323101 (=> (not res!176850) (not e!199770))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323101 (= res!176850 (and (= (size!8180 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8180 a!3305))))))

(declare-fun b!323102 () Bool)

(declare-fun Unit!9980 () Unit!9976)

(assert (=> b!323102 (= e!199774 Unit!9980)))

(declare-fun b!323103 () Bool)

(declare-fun res!176848 () Bool)

(assert (=> b!323103 (=> (not res!176848) (not e!199770))))

(declare-fun arrayContainsKey!0 (array!16547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323103 (= res!176848 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323104 () Bool)

(declare-fun res!176846 () Bool)

(assert (=> b!323104 (=> (not res!176846) (not e!199772))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323104 (= res!176846 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7828 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323105 () Bool)

(assert (=> b!323105 (= e!199769 e!199771)))

(declare-fun c!50754 () Bool)

(assert (=> b!323105 (= c!50754 (or (= (select (arr!7828 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7828 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323106 () Bool)

(declare-fun res!176851 () Bool)

(assert (=> b!323106 (=> (not res!176851) (not e!199772))))

(assert (=> b!323106 (= res!176851 (and (= (select (arr!7828 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8180 a!3305))))))

(declare-fun res!176844 () Bool)

(assert (=> start!32412 (=> (not res!176844) (not e!199770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32412 (= res!176844 (validMask!0 mask!3777))))

(assert (=> start!32412 e!199770))

(declare-fun array_inv!5782 (array!16547) Bool)

(assert (=> start!32412 (array_inv!5782 a!3305)))

(assert (=> start!32412 true))

(declare-fun b!323107 () Bool)

(declare-fun Unit!9981 () Unit!9976)

(assert (=> b!323107 (= e!199769 Unit!9981)))

(declare-fun b!323108 () Bool)

(assert (=> b!323108 (= e!199770 e!199772)))

(declare-fun res!176847 () Bool)

(assert (=> b!323108 (=> (not res!176847) (not e!199772))))

(declare-fun lt!156572 () SeekEntryResult!2970)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323108 (= res!176847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156572))))

(assert (=> b!323108 (= lt!156572 (Intermediate!2970 false resIndex!58 resX!58))))

(declare-fun b!323109 () Bool)

(declare-fun res!176845 () Bool)

(assert (=> b!323109 (=> (not res!176845) (not e!199772))))

(assert (=> b!323109 (= res!176845 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156572))))

(declare-fun b!323110 () Bool)

(declare-fun res!176852 () Bool)

(assert (=> b!323110 (=> (not res!176852) (not e!199770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16547 (_ BitVec 32)) Bool)

(assert (=> b!323110 (= res!176852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323111 () Bool)

(declare-fun Unit!9982 () Unit!9976)

(assert (=> b!323111 (= e!199774 Unit!9982)))

(assert (=> b!323111 false))

(declare-fun b!323112 () Bool)

(declare-fun res!176849 () Bool)

(assert (=> b!323112 (=> (not res!176849) (not e!199770))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16547 (_ BitVec 32)) SeekEntryResult!2970)

(assert (=> b!323112 (= res!176849 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2970 i!1250)))))

(assert (= (and start!32412 res!176844) b!323101))

(assert (= (and b!323101 res!176850) b!323097))

(assert (= (and b!323097 res!176853) b!323103))

(assert (= (and b!323103 res!176848) b!323112))

(assert (= (and b!323112 res!176849) b!323110))

(assert (= (and b!323110 res!176852) b!323108))

(assert (= (and b!323108 res!176847) b!323106))

(assert (= (and b!323106 res!176851) b!323109))

(assert (= (and b!323109 res!176845) b!323104))

(assert (= (and b!323104 res!176846) b!323099))

(assert (= (and b!323099 c!50755) b!323105))

(assert (= (and b!323099 (not c!50755)) b!323107))

(assert (= (and b!323105 c!50754) b!323098))

(assert (= (and b!323105 (not c!50754)) b!323100))

(assert (= (and b!323100 c!50756) b!323102))

(assert (= (and b!323100 (not c!50756)) b!323111))

(declare-fun m!330583 () Bool)

(assert (=> b!323106 m!330583))

(declare-fun m!330585 () Bool)

(assert (=> b!323112 m!330585))

(declare-fun m!330587 () Bool)

(assert (=> b!323100 m!330587))

(assert (=> b!323100 m!330587))

(declare-fun m!330589 () Bool)

(assert (=> b!323100 m!330589))

(declare-fun m!330591 () Bool)

(assert (=> start!32412 m!330591))

(declare-fun m!330593 () Bool)

(assert (=> start!32412 m!330593))

(declare-fun m!330595 () Bool)

(assert (=> b!323097 m!330595))

(declare-fun m!330597 () Bool)

(assert (=> b!323104 m!330597))

(declare-fun m!330599 () Bool)

(assert (=> b!323109 m!330599))

(declare-fun m!330601 () Bool)

(assert (=> b!323108 m!330601))

(assert (=> b!323108 m!330601))

(declare-fun m!330603 () Bool)

(assert (=> b!323108 m!330603))

(assert (=> b!323105 m!330597))

(declare-fun m!330605 () Bool)

(assert (=> b!323103 m!330605))

(assert (=> b!323099 m!330597))

(declare-fun m!330607 () Bool)

(assert (=> b!323110 m!330607))

(push 1)

