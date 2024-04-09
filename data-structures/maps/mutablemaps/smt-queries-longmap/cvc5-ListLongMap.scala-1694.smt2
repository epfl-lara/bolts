; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31056 () Bool)

(assert start!31056)

(declare-fun b!312114 () Bool)

(declare-fun res!168730 () Bool)

(declare-fun e!194646 () Bool)

(assert (=> b!312114 (=> (not res!168730) (not e!194646))))

(declare-datatypes ((array!15956 0))(
  ( (array!15957 (arr!7558 (Array (_ BitVec 32) (_ BitVec 64))) (size!7910 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15956)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312114 (= res!168730 (and (= (size!7910 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7910 a!3293))))))

(declare-fun b!312115 () Bool)

(declare-fun res!168729 () Bool)

(assert (=> b!312115 (=> (not res!168729) (not e!194646))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2709 0))(
  ( (MissingZero!2709 (index!13012 (_ BitVec 32))) (Found!2709 (index!13013 (_ BitVec 32))) (Intermediate!2709 (undefined!3521 Bool) (index!13014 (_ BitVec 32)) (x!31189 (_ BitVec 32))) (Undefined!2709) (MissingVacant!2709 (index!13015 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15956 (_ BitVec 32)) SeekEntryResult!2709)

(assert (=> b!312115 (= res!168729 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2709 i!1240)))))

(declare-fun b!312116 () Bool)

(declare-fun e!194650 () Bool)

(declare-fun e!194647 () Bool)

(assert (=> b!312116 (= e!194650 e!194647)))

(declare-fun res!168735 () Bool)

(assert (=> b!312116 (=> (not res!168735) (not e!194647))))

(declare-fun lt!152893 () SeekEntryResult!2709)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!152894 () SeekEntryResult!2709)

(assert (=> b!312116 (= res!168735 (and (= lt!152893 lt!152894) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7558 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15956 (_ BitVec 32)) SeekEntryResult!2709)

(assert (=> b!312116 (= lt!152893 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!168733 () Bool)

(assert (=> start!31056 (=> (not res!168733) (not e!194646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31056 (= res!168733 (validMask!0 mask!3709))))

(assert (=> start!31056 e!194646))

(declare-fun array_inv!5512 (array!15956) Bool)

(assert (=> start!31056 (array_inv!5512 a!3293)))

(assert (=> start!31056 true))

(declare-fun b!312117 () Bool)

(assert (=> b!312117 (= e!194646 e!194650)))

(declare-fun res!168726 () Bool)

(assert (=> b!312117 (=> (not res!168726) (not e!194650))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312117 (= res!168726 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152894))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312117 (= lt!152894 (Intermediate!2709 false resIndex!52 resX!52))))

(declare-fun b!312118 () Bool)

(declare-fun e!194648 () Bool)

(assert (=> b!312118 (= e!194647 (not e!194648))))

(declare-fun res!168732 () Bool)

(assert (=> b!312118 (=> res!168732 e!194648)))

(declare-fun lt!152895 () SeekEntryResult!2709)

(declare-fun lt!152896 () (_ BitVec 32))

(assert (=> b!312118 (= res!168732 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152896 #b00000000000000000000000000000000) (bvsge lt!152896 (size!7910 a!3293)) (not (= lt!152895 lt!152894))))))

(declare-fun lt!152897 () SeekEntryResult!2709)

(declare-fun lt!152890 () SeekEntryResult!2709)

(assert (=> b!312118 (= lt!152897 lt!152890)))

(declare-fun lt!152891 () array!15956)

(assert (=> b!312118 (= lt!152890 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152896 k!2441 lt!152891 mask!3709))))

(assert (=> b!312118 (= lt!152897 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152891 mask!3709))))

(assert (=> b!312118 (= lt!152891 (array!15957 (store (arr!7558 a!3293) i!1240 k!2441) (size!7910 a!3293)))))

(assert (=> b!312118 (= lt!152893 lt!152895)))

(assert (=> b!312118 (= lt!152895 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152896 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312118 (= lt!152896 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312119 () Bool)

(declare-fun res!168728 () Bool)

(assert (=> b!312119 (=> (not res!168728) (not e!194650))))

(assert (=> b!312119 (= res!168728 (and (= (select (arr!7558 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7910 a!3293))))))

(declare-fun b!312120 () Bool)

(assert (=> b!312120 (= e!194648 true)))

(assert (=> b!312120 (= lt!152890 lt!152895)))

(declare-datatypes ((Unit!9616 0))(
  ( (Unit!9617) )
))
(declare-fun lt!152892 () Unit!9616)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15956 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9616)

(assert (=> b!312120 (= lt!152892 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152896 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312121 () Bool)

(declare-fun res!168731 () Bool)

(assert (=> b!312121 (=> (not res!168731) (not e!194646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15956 (_ BitVec 32)) Bool)

(assert (=> b!312121 (= res!168731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312122 () Bool)

(declare-fun res!168734 () Bool)

(assert (=> b!312122 (=> (not res!168734) (not e!194646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312122 (= res!168734 (validKeyInArray!0 k!2441))))

(declare-fun b!312123 () Bool)

(declare-fun res!168727 () Bool)

(assert (=> b!312123 (=> (not res!168727) (not e!194646))))

(declare-fun arrayContainsKey!0 (array!15956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312123 (= res!168727 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31056 res!168733) b!312114))

(assert (= (and b!312114 res!168730) b!312122))

(assert (= (and b!312122 res!168734) b!312123))

(assert (= (and b!312123 res!168727) b!312115))

(assert (= (and b!312115 res!168729) b!312121))

(assert (= (and b!312121 res!168731) b!312117))

(assert (= (and b!312117 res!168726) b!312119))

(assert (= (and b!312119 res!168728) b!312116))

(assert (= (and b!312116 res!168735) b!312118))

(assert (= (and b!312118 (not res!168732)) b!312120))

(declare-fun m!322225 () Bool)

(assert (=> b!312123 m!322225))

(declare-fun m!322227 () Bool)

(assert (=> b!312122 m!322227))

(declare-fun m!322229 () Bool)

(assert (=> b!312121 m!322229))

(declare-fun m!322231 () Bool)

(assert (=> b!312115 m!322231))

(declare-fun m!322233 () Bool)

(assert (=> b!312119 m!322233))

(declare-fun m!322235 () Bool)

(assert (=> b!312116 m!322235))

(declare-fun m!322237 () Bool)

(assert (=> b!312116 m!322237))

(declare-fun m!322239 () Bool)

(assert (=> b!312117 m!322239))

(assert (=> b!312117 m!322239))

(declare-fun m!322241 () Bool)

(assert (=> b!312117 m!322241))

(declare-fun m!322243 () Bool)

(assert (=> b!312120 m!322243))

(declare-fun m!322245 () Bool)

(assert (=> start!31056 m!322245))

(declare-fun m!322247 () Bool)

(assert (=> start!31056 m!322247))

(declare-fun m!322249 () Bool)

(assert (=> b!312118 m!322249))

(declare-fun m!322251 () Bool)

(assert (=> b!312118 m!322251))

(declare-fun m!322253 () Bool)

(assert (=> b!312118 m!322253))

(declare-fun m!322255 () Bool)

(assert (=> b!312118 m!322255))

(declare-fun m!322257 () Bool)

(assert (=> b!312118 m!322257))

(push 1)

