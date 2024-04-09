; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31590 () Bool)

(assert start!31590)

(declare-fun b!315821 () Bool)

(declare-fun res!171157 () Bool)

(declare-fun e!196501 () Bool)

(assert (=> b!315821 (=> (not res!171157) (not e!196501))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315821 (= res!171157 (validKeyInArray!0 k!2441))))

(declare-fun b!315823 () Bool)

(declare-datatypes ((Unit!9745 0))(
  ( (Unit!9746) )
))
(declare-fun e!196499 () Unit!9745)

(declare-fun e!196497 () Unit!9745)

(assert (=> b!315823 (= e!196499 e!196497)))

(declare-fun c!49952 () Bool)

(declare-datatypes ((array!16112 0))(
  ( (array!16113 (arr!7624 (Array (_ BitVec 32) (_ BitVec 64))) (size!7976 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16112)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315823 (= c!49952 (or (= (select (arr!7624 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7624 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315824 () Bool)

(declare-fun res!171155 () Bool)

(declare-fun e!196500 () Bool)

(assert (=> b!315824 (=> (not res!171155) (not e!196500))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!315824 (= res!171155 (and (= (select (arr!7624 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7976 a!3293))))))

(declare-fun b!315825 () Bool)

(declare-fun res!171156 () Bool)

(assert (=> b!315825 (=> (not res!171156) (not e!196501))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2775 0))(
  ( (MissingZero!2775 (index!13276 (_ BitVec 32))) (Found!2775 (index!13277 (_ BitVec 32))) (Intermediate!2775 (undefined!3587 Bool) (index!13278 (_ BitVec 32)) (x!31488 (_ BitVec 32))) (Undefined!2775) (MissingVacant!2775 (index!13279 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16112 (_ BitVec 32)) SeekEntryResult!2775)

(assert (=> b!315825 (= res!171156 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2775 i!1240)))))

(declare-fun b!315826 () Bool)

(assert (=> b!315826 false))

(declare-fun lt!154391 () SeekEntryResult!2775)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16112 (_ BitVec 32)) SeekEntryResult!2775)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315826 (= lt!154391 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9747 () Unit!9745)

(assert (=> b!315826 (= e!196497 Unit!9747)))

(declare-fun b!315827 () Bool)

(declare-fun res!171162 () Bool)

(assert (=> b!315827 (=> (not res!171162) (not e!196501))))

(assert (=> b!315827 (= res!171162 (and (= (size!7976 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7976 a!3293))))))

(declare-fun b!315828 () Bool)

(declare-fun Unit!9748 () Unit!9745)

(assert (=> b!315828 (= e!196499 Unit!9748)))

(declare-fun b!315829 () Bool)

(declare-fun res!171161 () Bool)

(assert (=> b!315829 (=> (not res!171161) (not e!196501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16112 (_ BitVec 32)) Bool)

(assert (=> b!315829 (= res!171161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315830 () Bool)

(declare-fun res!171154 () Bool)

(assert (=> b!315830 (=> (not res!171154) (not e!196500))))

(declare-fun lt!154390 () SeekEntryResult!2775)

(assert (=> b!315830 (= res!171154 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154390))))

(declare-fun b!315831 () Bool)

(assert (=> b!315831 false))

(declare-fun Unit!9749 () Unit!9745)

(assert (=> b!315831 (= e!196497 Unit!9749)))

(declare-fun b!315832 () Bool)

(assert (=> b!315832 (= e!196500 (not true))))

(assert (=> b!315832 (= index!1781 resIndex!52)))

(declare-fun lt!154389 () Unit!9745)

(assert (=> b!315832 (= lt!154389 e!196499)))

(declare-fun c!49951 () Bool)

(assert (=> b!315832 (= c!49951 (not (= resIndex!52 index!1781)))))

(declare-fun res!171153 () Bool)

(assert (=> start!31590 (=> (not res!171153) (not e!196501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31590 (= res!171153 (validMask!0 mask!3709))))

(assert (=> start!31590 e!196501))

(declare-fun array_inv!5578 (array!16112) Bool)

(assert (=> start!31590 (array_inv!5578 a!3293)))

(assert (=> start!31590 true))

(declare-fun b!315822 () Bool)

(declare-fun res!171160 () Bool)

(assert (=> b!315822 (=> (not res!171160) (not e!196500))))

(assert (=> b!315822 (= res!171160 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7624 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315833 () Bool)

(assert (=> b!315833 (= e!196501 e!196500)))

(declare-fun res!171159 () Bool)

(assert (=> b!315833 (=> (not res!171159) (not e!196500))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315833 (= res!171159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154390))))

(assert (=> b!315833 (= lt!154390 (Intermediate!2775 false resIndex!52 resX!52))))

(declare-fun b!315834 () Bool)

(declare-fun res!171158 () Bool)

(assert (=> b!315834 (=> (not res!171158) (not e!196501))))

(declare-fun arrayContainsKey!0 (array!16112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315834 (= res!171158 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31590 res!171153) b!315827))

(assert (= (and b!315827 res!171162) b!315821))

(assert (= (and b!315821 res!171157) b!315834))

(assert (= (and b!315834 res!171158) b!315825))

(assert (= (and b!315825 res!171156) b!315829))

(assert (= (and b!315829 res!171161) b!315833))

(assert (= (and b!315833 res!171159) b!315824))

(assert (= (and b!315824 res!171155) b!315830))

(assert (= (and b!315830 res!171154) b!315822))

(assert (= (and b!315822 res!171160) b!315832))

(assert (= (and b!315832 c!49951) b!315823))

(assert (= (and b!315832 (not c!49951)) b!315828))

(assert (= (and b!315823 c!49952) b!315831))

(assert (= (and b!315823 (not c!49952)) b!315826))

(declare-fun m!324907 () Bool)

(assert (=> b!315823 m!324907))

(declare-fun m!324909 () Bool)

(assert (=> b!315830 m!324909))

(assert (=> b!315822 m!324907))

(declare-fun m!324911 () Bool)

(assert (=> start!31590 m!324911))

(declare-fun m!324913 () Bool)

(assert (=> start!31590 m!324913))

(declare-fun m!324915 () Bool)

(assert (=> b!315833 m!324915))

(assert (=> b!315833 m!324915))

(declare-fun m!324917 () Bool)

(assert (=> b!315833 m!324917))

(declare-fun m!324919 () Bool)

(assert (=> b!315824 m!324919))

(declare-fun m!324921 () Bool)

(assert (=> b!315834 m!324921))

(declare-fun m!324923 () Bool)

(assert (=> b!315825 m!324923))

(declare-fun m!324925 () Bool)

(assert (=> b!315826 m!324925))

(assert (=> b!315826 m!324925))

(declare-fun m!324927 () Bool)

(assert (=> b!315826 m!324927))

(declare-fun m!324929 () Bool)

(assert (=> b!315821 m!324929))

(declare-fun m!324931 () Bool)

(assert (=> b!315829 m!324931))

(push 1)

