; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30568 () Bool)

(assert start!30568)

(declare-fun b!306005 () Bool)

(declare-fun res!163144 () Bool)

(declare-fun e!191987 () Bool)

(assert (=> b!306005 (=> (not res!163144) (not e!191987))))

(declare-datatypes ((array!15570 0))(
  ( (array!15571 (arr!7368 (Array (_ BitVec 32) (_ BitVec 64))) (size!7720 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15570)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306005 (= res!163144 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7368 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306006 () Bool)

(declare-fun res!163143 () Bool)

(assert (=> b!306006 (=> (not res!163143) (not e!191987))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2519 0))(
  ( (MissingZero!2519 (index!12252 (_ BitVec 32))) (Found!2519 (index!12253 (_ BitVec 32))) (Intermediate!2519 (undefined!3331 Bool) (index!12254 (_ BitVec 32)) (x!30469 (_ BitVec 32))) (Undefined!2519) (MissingVacant!2519 (index!12255 (_ BitVec 32))) )
))
(declare-fun lt!150873 () SeekEntryResult!2519)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15570 (_ BitVec 32)) SeekEntryResult!2519)

(assert (=> b!306006 (= res!163143 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150873))))

(declare-fun b!306007 () Bool)

(assert (=> b!306007 false))

(declare-fun lt!150875 () SeekEntryResult!2519)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306007 (= lt!150875 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9473 0))(
  ( (Unit!9474) )
))
(declare-fun e!191989 () Unit!9473)

(declare-fun Unit!9475 () Unit!9473)

(assert (=> b!306007 (= e!191989 Unit!9475)))

(declare-fun b!306008 () Bool)

(declare-fun e!191986 () Unit!9473)

(assert (=> b!306008 (= e!191986 e!191989)))

(declare-fun c!49037 () Bool)

(assert (=> b!306008 (= c!49037 (or (= (select (arr!7368 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7368 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306009 () Bool)

(declare-fun res!163142 () Bool)

(declare-fun e!191988 () Bool)

(assert (=> b!306009 (=> (not res!163142) (not e!191988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15570 (_ BitVec 32)) Bool)

(assert (=> b!306009 (= res!163142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306010 () Bool)

(assert (=> b!306010 (= e!191988 e!191987)))

(declare-fun res!163146 () Bool)

(assert (=> b!306010 (=> (not res!163146) (not e!191987))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306010 (= res!163146 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150873))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306010 (= lt!150873 (Intermediate!2519 false resIndex!52 resX!52))))

(declare-fun b!306011 () Bool)

(declare-fun res!163137 () Bool)

(assert (=> b!306011 (=> (not res!163137) (not e!191988))))

(declare-fun arrayContainsKey!0 (array!15570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306011 (= res!163137 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163140 () Bool)

(assert (=> start!30568 (=> (not res!163140) (not e!191988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30568 (= res!163140 (validMask!0 mask!3709))))

(assert (=> start!30568 e!191988))

(declare-fun array_inv!5322 (array!15570) Bool)

(assert (=> start!30568 (array_inv!5322 a!3293)))

(assert (=> start!30568 true))

(declare-fun b!306012 () Bool)

(assert (=> b!306012 false))

(declare-fun Unit!9476 () Unit!9473)

(assert (=> b!306012 (= e!191989 Unit!9476)))

(declare-fun b!306013 () Bool)

(declare-fun res!163138 () Bool)

(assert (=> b!306013 (=> (not res!163138) (not e!191988))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15570 (_ BitVec 32)) SeekEntryResult!2519)

(assert (=> b!306013 (= res!163138 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2519 i!1240)))))

(declare-fun b!306014 () Bool)

(declare-fun res!163139 () Bool)

(assert (=> b!306014 (=> (not res!163139) (not e!191987))))

(assert (=> b!306014 (= res!163139 (and (= (select (arr!7368 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7720 a!3293))))))

(declare-fun b!306015 () Bool)

(declare-fun res!163145 () Bool)

(assert (=> b!306015 (=> (not res!163145) (not e!191988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306015 (= res!163145 (validKeyInArray!0 k!2441))))

(declare-fun b!306016 () Bool)

(assert (=> b!306016 (= e!191987 (not true))))

(assert (=> b!306016 (= index!1781 resIndex!52)))

(declare-fun lt!150874 () Unit!9473)

(assert (=> b!306016 (= lt!150874 e!191986)))

(declare-fun c!49036 () Bool)

(assert (=> b!306016 (= c!49036 (not (= resIndex!52 index!1781)))))

(declare-fun b!306017 () Bool)

(declare-fun Unit!9477 () Unit!9473)

(assert (=> b!306017 (= e!191986 Unit!9477)))

(declare-fun b!306018 () Bool)

(declare-fun res!163141 () Bool)

(assert (=> b!306018 (=> (not res!163141) (not e!191988))))

(assert (=> b!306018 (= res!163141 (and (= (size!7720 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7720 a!3293))))))

(assert (= (and start!30568 res!163140) b!306018))

(assert (= (and b!306018 res!163141) b!306015))

(assert (= (and b!306015 res!163145) b!306011))

(assert (= (and b!306011 res!163137) b!306013))

(assert (= (and b!306013 res!163138) b!306009))

(assert (= (and b!306009 res!163142) b!306010))

(assert (= (and b!306010 res!163146) b!306014))

(assert (= (and b!306014 res!163139) b!306006))

(assert (= (and b!306006 res!163143) b!306005))

(assert (= (and b!306005 res!163144) b!306016))

(assert (= (and b!306016 c!49036) b!306008))

(assert (= (and b!306016 (not c!49036)) b!306017))

(assert (= (and b!306008 c!49037) b!306012))

(assert (= (and b!306008 (not c!49037)) b!306007))

(declare-fun m!316727 () Bool)

(assert (=> b!306006 m!316727))

(declare-fun m!316729 () Bool)

(assert (=> start!30568 m!316729))

(declare-fun m!316731 () Bool)

(assert (=> start!30568 m!316731))

(declare-fun m!316733 () Bool)

(assert (=> b!306010 m!316733))

(assert (=> b!306010 m!316733))

(declare-fun m!316735 () Bool)

(assert (=> b!306010 m!316735))

(declare-fun m!316737 () Bool)

(assert (=> b!306015 m!316737))

(declare-fun m!316739 () Bool)

(assert (=> b!306013 m!316739))

(declare-fun m!316741 () Bool)

(assert (=> b!306011 m!316741))

(declare-fun m!316743 () Bool)

(assert (=> b!306007 m!316743))

(assert (=> b!306007 m!316743))

(declare-fun m!316745 () Bool)

(assert (=> b!306007 m!316745))

(declare-fun m!316747 () Bool)

(assert (=> b!306005 m!316747))

(declare-fun m!316749 () Bool)

(assert (=> b!306014 m!316749))

(declare-fun m!316751 () Bool)

(assert (=> b!306009 m!316751))

(assert (=> b!306008 m!316747))

(push 1)

(assert (not b!306013))

(assert (not b!306007))

(assert (not b!306015))

