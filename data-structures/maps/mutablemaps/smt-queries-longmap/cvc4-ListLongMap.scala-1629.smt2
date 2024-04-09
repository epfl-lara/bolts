; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30562 () Bool)

(assert start!30562)

(declare-fun b!305879 () Bool)

(assert (=> b!305879 false))

(declare-datatypes ((SeekEntryResult!2516 0))(
  ( (MissingZero!2516 (index!12240 (_ BitVec 32))) (Found!2516 (index!12241 (_ BitVec 32))) (Intermediate!2516 (undefined!3328 Bool) (index!12242 (_ BitVec 32)) (x!30458 (_ BitVec 32))) (Undefined!2516) (MissingVacant!2516 (index!12243 (_ BitVec 32))) )
))
(declare-fun lt!150848 () SeekEntryResult!2516)

(declare-datatypes ((array!15564 0))(
  ( (array!15565 (arr!7365 (Array (_ BitVec 32) (_ BitVec 64))) (size!7717 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15564)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15564 (_ BitVec 32)) SeekEntryResult!2516)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305879 (= lt!150848 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9458 0))(
  ( (Unit!9459) )
))
(declare-fun e!191940 () Unit!9458)

(declare-fun Unit!9460 () Unit!9458)

(assert (=> b!305879 (= e!191940 Unit!9460)))

(declare-fun b!305880 () Bool)

(declare-fun res!163048 () Bool)

(declare-fun e!191941 () Bool)

(assert (=> b!305880 (=> (not res!163048) (not e!191941))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15564 (_ BitVec 32)) SeekEntryResult!2516)

(assert (=> b!305880 (= res!163048 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2516 i!1240)))))

(declare-fun b!305881 () Bool)

(declare-fun res!163051 () Bool)

(assert (=> b!305881 (=> (not res!163051) (not e!191941))))

(assert (=> b!305881 (= res!163051 (and (= (size!7717 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7717 a!3293))))))

(declare-fun b!305882 () Bool)

(declare-fun res!163047 () Bool)

(assert (=> b!305882 (=> (not res!163047) (not e!191941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15564 (_ BitVec 32)) Bool)

(assert (=> b!305882 (= res!163047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!163049 () Bool)

(assert (=> start!30562 (=> (not res!163049) (not e!191941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30562 (= res!163049 (validMask!0 mask!3709))))

(assert (=> start!30562 e!191941))

(declare-fun array_inv!5319 (array!15564) Bool)

(assert (=> start!30562 (array_inv!5319 a!3293)))

(assert (=> start!30562 true))

(declare-fun b!305883 () Bool)

(declare-fun res!163050 () Bool)

(assert (=> b!305883 (=> (not res!163050) (not e!191941))))

(declare-fun arrayContainsKey!0 (array!15564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305883 (= res!163050 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305884 () Bool)

(declare-fun res!163055 () Bool)

(declare-fun e!191943 () Bool)

(assert (=> b!305884 (=> (not res!163055) (not e!191943))))

(declare-fun lt!150847 () SeekEntryResult!2516)

(assert (=> b!305884 (= res!163055 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150847))))

(declare-fun b!305885 () Bool)

(declare-fun res!163056 () Bool)

(assert (=> b!305885 (=> (not res!163056) (not e!191941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305885 (= res!163056 (validKeyInArray!0 k!2441))))

(declare-fun b!305886 () Bool)

(declare-fun res!163054 () Bool)

(assert (=> b!305886 (=> (not res!163054) (not e!191943))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305886 (= res!163054 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7365 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305887 () Bool)

(assert (=> b!305887 (= e!191943 (not (or (not (= (select (arr!7365 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305887 (= index!1781 resIndex!52)))

(declare-fun lt!150846 () Unit!9458)

(declare-fun e!191944 () Unit!9458)

(assert (=> b!305887 (= lt!150846 e!191944)))

(declare-fun c!49019 () Bool)

(assert (=> b!305887 (= c!49019 (not (= resIndex!52 index!1781)))))

(declare-fun b!305888 () Bool)

(declare-fun res!163053 () Bool)

(assert (=> b!305888 (=> (not res!163053) (not e!191943))))

(assert (=> b!305888 (= res!163053 (and (= (select (arr!7365 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7717 a!3293))))))

(declare-fun b!305889 () Bool)

(assert (=> b!305889 (= e!191944 e!191940)))

(declare-fun c!49018 () Bool)

(assert (=> b!305889 (= c!49018 (or (= (select (arr!7365 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7365 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305890 () Bool)

(declare-fun Unit!9461 () Unit!9458)

(assert (=> b!305890 (= e!191944 Unit!9461)))

(declare-fun b!305891 () Bool)

(assert (=> b!305891 (= e!191941 e!191943)))

(declare-fun res!163052 () Bool)

(assert (=> b!305891 (=> (not res!163052) (not e!191943))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305891 (= res!163052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150847))))

(assert (=> b!305891 (= lt!150847 (Intermediate!2516 false resIndex!52 resX!52))))

(declare-fun b!305892 () Bool)

(assert (=> b!305892 false))

(declare-fun Unit!9462 () Unit!9458)

(assert (=> b!305892 (= e!191940 Unit!9462)))

(assert (= (and start!30562 res!163049) b!305881))

(assert (= (and b!305881 res!163051) b!305885))

(assert (= (and b!305885 res!163056) b!305883))

(assert (= (and b!305883 res!163050) b!305880))

(assert (= (and b!305880 res!163048) b!305882))

(assert (= (and b!305882 res!163047) b!305891))

(assert (= (and b!305891 res!163052) b!305888))

(assert (= (and b!305888 res!163053) b!305884))

(assert (= (and b!305884 res!163055) b!305886))

(assert (= (and b!305886 res!163054) b!305887))

(assert (= (and b!305887 c!49019) b!305889))

(assert (= (and b!305887 (not c!49019)) b!305890))

(assert (= (and b!305889 c!49018) b!305892))

(assert (= (and b!305889 (not c!49018)) b!305879))

(declare-fun m!316649 () Bool)

(assert (=> b!305880 m!316649))

(declare-fun m!316651 () Bool)

(assert (=> b!305885 m!316651))

(declare-fun m!316653 () Bool)

(assert (=> b!305888 m!316653))

(declare-fun m!316655 () Bool)

(assert (=> b!305886 m!316655))

(declare-fun m!316657 () Bool)

(assert (=> b!305884 m!316657))

(assert (=> b!305887 m!316655))

(declare-fun m!316659 () Bool)

(assert (=> start!30562 m!316659))

(declare-fun m!316661 () Bool)

(assert (=> start!30562 m!316661))

(assert (=> b!305889 m!316655))

(declare-fun m!316663 () Bool)

(assert (=> b!305879 m!316663))

(assert (=> b!305879 m!316663))

(declare-fun m!316665 () Bool)

(assert (=> b!305879 m!316665))

(declare-fun m!316667 () Bool)

(assert (=> b!305883 m!316667))

(declare-fun m!316669 () Bool)

(assert (=> b!305891 m!316669))

(assert (=> b!305891 m!316669))

(declare-fun m!316671 () Bool)

(assert (=> b!305891 m!316671))

(declare-fun m!316673 () Bool)

(assert (=> b!305882 m!316673))

(push 1)

(assert (not b!305885))

(assert (not start!30562))

(assert (not b!305883))

(assert (not b!305884))

