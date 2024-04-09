; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32502 () Bool)

(assert start!32502)

(declare-fun b!324660 () Bool)

(declare-fun e!200296 () Bool)

(assert (=> b!324660 (= e!200296 false)))

(declare-fun lt!156848 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324660 (= lt!156848 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324661 () Bool)

(declare-fun res!178150 () Bool)

(declare-fun e!200294 () Bool)

(assert (=> b!324661 (=> (not res!178150) (not e!200294))))

(declare-datatypes ((array!16637 0))(
  ( (array!16638 (arr!7873 (Array (_ BitVec 32) (_ BitVec 64))) (size!8225 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16637)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324661 (= res!178150 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324662 () Bool)

(declare-fun res!178156 () Bool)

(assert (=> b!324662 (=> (not res!178156) (not e!200296))))

(declare-datatypes ((SeekEntryResult!3015 0))(
  ( (MissingZero!3015 (index!14236 (_ BitVec 32))) (Found!3015 (index!14237 (_ BitVec 32))) (Intermediate!3015 (undefined!3827 Bool) (index!14238 (_ BitVec 32)) (x!32446 (_ BitVec 32))) (Undefined!3015) (MissingVacant!3015 (index!14239 (_ BitVec 32))) )
))
(declare-fun lt!156847 () SeekEntryResult!3015)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16637 (_ BitVec 32)) SeekEntryResult!3015)

(assert (=> b!324662 (= res!178156 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156847))))

(declare-fun b!324663 () Bool)

(declare-fun res!178154 () Bool)

(assert (=> b!324663 (=> (not res!178154) (not e!200296))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324663 (= res!178154 (and (= (select (arr!7873 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8225 a!3305))))))

(declare-fun b!324664 () Bool)

(declare-fun res!178151 () Bool)

(assert (=> b!324664 (=> (not res!178151) (not e!200294))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16637 (_ BitVec 32)) SeekEntryResult!3015)

(assert (=> b!324664 (= res!178151 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3015 i!1250)))))

(declare-fun b!324665 () Bool)

(declare-fun res!178155 () Bool)

(assert (=> b!324665 (=> (not res!178155) (not e!200294))))

(assert (=> b!324665 (= res!178155 (and (= (size!8225 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8225 a!3305))))))

(declare-fun b!324666 () Bool)

(assert (=> b!324666 (= e!200294 e!200296)))

(declare-fun res!178158 () Bool)

(assert (=> b!324666 (=> (not res!178158) (not e!200296))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324666 (= res!178158 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156847))))

(assert (=> b!324666 (= lt!156847 (Intermediate!3015 false resIndex!58 resX!58))))

(declare-fun b!324667 () Bool)

(declare-fun res!178153 () Bool)

(assert (=> b!324667 (=> (not res!178153) (not e!200294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16637 (_ BitVec 32)) Bool)

(assert (=> b!324667 (= res!178153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324668 () Bool)

(declare-fun res!178149 () Bool)

(assert (=> b!324668 (=> (not res!178149) (not e!200296))))

(assert (=> b!324668 (= res!178149 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7873 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324669 () Bool)

(declare-fun res!178157 () Bool)

(assert (=> b!324669 (=> (not res!178157) (not e!200294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324669 (= res!178157 (validKeyInArray!0 k!2497))))

(declare-fun res!178152 () Bool)

(assert (=> start!32502 (=> (not res!178152) (not e!200294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32502 (= res!178152 (validMask!0 mask!3777))))

(assert (=> start!32502 e!200294))

(declare-fun array_inv!5827 (array!16637) Bool)

(assert (=> start!32502 (array_inv!5827 a!3305)))

(assert (=> start!32502 true))

(assert (= (and start!32502 res!178152) b!324665))

(assert (= (and b!324665 res!178155) b!324669))

(assert (= (and b!324669 res!178157) b!324661))

(assert (= (and b!324661 res!178150) b!324664))

(assert (= (and b!324664 res!178151) b!324667))

(assert (= (and b!324667 res!178153) b!324666))

(assert (= (and b!324666 res!178158) b!324663))

(assert (= (and b!324663 res!178154) b!324662))

(assert (= (and b!324662 res!178156) b!324668))

(assert (= (and b!324668 res!178149) b!324660))

(declare-fun m!331663 () Bool)

(assert (=> b!324667 m!331663))

(declare-fun m!331665 () Bool)

(assert (=> b!324666 m!331665))

(assert (=> b!324666 m!331665))

(declare-fun m!331667 () Bool)

(assert (=> b!324666 m!331667))

(declare-fun m!331669 () Bool)

(assert (=> b!324669 m!331669))

(declare-fun m!331671 () Bool)

(assert (=> b!324661 m!331671))

(declare-fun m!331673 () Bool)

(assert (=> start!32502 m!331673))

(declare-fun m!331675 () Bool)

(assert (=> start!32502 m!331675))

(declare-fun m!331677 () Bool)

(assert (=> b!324668 m!331677))

(declare-fun m!331679 () Bool)

(assert (=> b!324660 m!331679))

(declare-fun m!331681 () Bool)

(assert (=> b!324664 m!331681))

(declare-fun m!331683 () Bool)

(assert (=> b!324662 m!331683))

(declare-fun m!331685 () Bool)

(assert (=> b!324663 m!331685))

(push 1)

