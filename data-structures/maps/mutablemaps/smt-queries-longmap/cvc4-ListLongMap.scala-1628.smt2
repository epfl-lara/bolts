; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30556 () Bool)

(assert start!30556)

(declare-fun b!305753 () Bool)

(declare-fun res!162957 () Bool)

(declare-fun e!191895 () Bool)

(assert (=> b!305753 (=> (not res!162957) (not e!191895))))

(declare-datatypes ((array!15558 0))(
  ( (array!15559 (arr!7362 (Array (_ BitVec 32) (_ BitVec 64))) (size!7714 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15558)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305753 (= res!162957 (and (= (size!7714 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7714 a!3293))))))

(declare-fun b!305754 () Bool)

(declare-fun res!162961 () Bool)

(declare-fun e!191896 () Bool)

(assert (=> b!305754 (=> (not res!162961) (not e!191896))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305754 (= res!162961 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7362 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305755 () Bool)

(declare-fun res!162960 () Bool)

(assert (=> b!305755 (=> (not res!162960) (not e!191895))))

(declare-datatypes ((SeekEntryResult!2513 0))(
  ( (MissingZero!2513 (index!12228 (_ BitVec 32))) (Found!2513 (index!12229 (_ BitVec 32))) (Intermediate!2513 (undefined!3325 Bool) (index!12230 (_ BitVec 32)) (x!30447 (_ BitVec 32))) (Undefined!2513) (MissingVacant!2513 (index!12231 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15558 (_ BitVec 32)) SeekEntryResult!2513)

(assert (=> b!305755 (= res!162960 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2513 i!1240)))))

(declare-fun b!305756 () Bool)

(declare-datatypes ((Unit!9443 0))(
  ( (Unit!9444) )
))
(declare-fun e!191897 () Unit!9443)

(declare-fun e!191899 () Unit!9443)

(assert (=> b!305756 (= e!191897 e!191899)))

(declare-fun c!49000 () Bool)

(assert (=> b!305756 (= c!49000 (or (= (select (arr!7362 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7362 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305757 () Bool)

(assert (=> b!305757 false))

(declare-fun Unit!9445 () Unit!9443)

(assert (=> b!305757 (= e!191899 Unit!9445)))

(declare-fun b!305758 () Bool)

(declare-fun Unit!9446 () Unit!9443)

(assert (=> b!305758 (= e!191897 Unit!9446)))

(declare-fun b!305759 () Bool)

(assert (=> b!305759 false))

(declare-fun lt!150819 () SeekEntryResult!2513)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15558 (_ BitVec 32)) SeekEntryResult!2513)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305759 (= lt!150819 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9447 () Unit!9443)

(assert (=> b!305759 (= e!191899 Unit!9447)))

(declare-fun b!305760 () Bool)

(declare-fun res!162962 () Bool)

(assert (=> b!305760 (=> (not res!162962) (not e!191895))))

(declare-fun arrayContainsKey!0 (array!15558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305760 (= res!162962 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305761 () Bool)

(declare-fun res!162963 () Bool)

(assert (=> b!305761 (=> (not res!162963) (not e!191896))))

(declare-fun lt!150820 () SeekEntryResult!2513)

(assert (=> b!305761 (= res!162963 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150820))))

(declare-fun res!162964 () Bool)

(assert (=> start!30556 (=> (not res!162964) (not e!191895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30556 (= res!162964 (validMask!0 mask!3709))))

(assert (=> start!30556 e!191895))

(declare-fun array_inv!5316 (array!15558) Bool)

(assert (=> start!30556 (array_inv!5316 a!3293)))

(assert (=> start!30556 true))

(declare-fun b!305762 () Bool)

(assert (=> b!305762 (= e!191896 (not (or (not (= (select (arr!7362 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305762 (= index!1781 resIndex!52)))

(declare-fun lt!150821 () Unit!9443)

(assert (=> b!305762 (= lt!150821 e!191897)))

(declare-fun c!49001 () Bool)

(assert (=> b!305762 (= c!49001 (not (= resIndex!52 index!1781)))))

(declare-fun b!305763 () Bool)

(assert (=> b!305763 (= e!191895 e!191896)))

(declare-fun res!162958 () Bool)

(assert (=> b!305763 (=> (not res!162958) (not e!191896))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305763 (= res!162958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150820))))

(assert (=> b!305763 (= lt!150820 (Intermediate!2513 false resIndex!52 resX!52))))

(declare-fun b!305764 () Bool)

(declare-fun res!162966 () Bool)

(assert (=> b!305764 (=> (not res!162966) (not e!191895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15558 (_ BitVec 32)) Bool)

(assert (=> b!305764 (= res!162966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305765 () Bool)

(declare-fun res!162959 () Bool)

(assert (=> b!305765 (=> (not res!162959) (not e!191896))))

(assert (=> b!305765 (= res!162959 (and (= (select (arr!7362 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7714 a!3293))))))

(declare-fun b!305766 () Bool)

(declare-fun res!162965 () Bool)

(assert (=> b!305766 (=> (not res!162965) (not e!191895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305766 (= res!162965 (validKeyInArray!0 k!2441))))

(assert (= (and start!30556 res!162964) b!305753))

(assert (= (and b!305753 res!162957) b!305766))

(assert (= (and b!305766 res!162965) b!305760))

(assert (= (and b!305760 res!162962) b!305755))

(assert (= (and b!305755 res!162960) b!305764))

(assert (= (and b!305764 res!162966) b!305763))

(assert (= (and b!305763 res!162958) b!305765))

(assert (= (and b!305765 res!162959) b!305761))

(assert (= (and b!305761 res!162963) b!305754))

(assert (= (and b!305754 res!162961) b!305762))

(assert (= (and b!305762 c!49001) b!305756))

(assert (= (and b!305762 (not c!49001)) b!305758))

(assert (= (and b!305756 c!49000) b!305757))

(assert (= (and b!305756 (not c!49000)) b!305759))

(declare-fun m!316571 () Bool)

(assert (=> b!305766 m!316571))

(declare-fun m!316573 () Bool)

(assert (=> b!305756 m!316573))

(declare-fun m!316575 () Bool)

(assert (=> b!305755 m!316575))

(declare-fun m!316577 () Bool)

(assert (=> b!305759 m!316577))

(assert (=> b!305759 m!316577))

(declare-fun m!316579 () Bool)

(assert (=> b!305759 m!316579))

(declare-fun m!316581 () Bool)

(assert (=> start!30556 m!316581))

(declare-fun m!316583 () Bool)

(assert (=> start!30556 m!316583))

(declare-fun m!316585 () Bool)

(assert (=> b!305760 m!316585))

(declare-fun m!316587 () Bool)

(assert (=> b!305763 m!316587))

(assert (=> b!305763 m!316587))

(declare-fun m!316589 () Bool)

(assert (=> b!305763 m!316589))

(assert (=> b!305762 m!316573))

(declare-fun m!316591 () Bool)

(assert (=> b!305764 m!316591))

(declare-fun m!316593 () Bool)

(assert (=> b!305765 m!316593))

(declare-fun m!316595 () Bool)

(assert (=> b!305761 m!316595))

(assert (=> b!305754 m!316573))

(push 1)

(assert (not start!30556))

(assert (not b!305764))

(assert (not b!305763))

(assert (not b!305755))

(assert (not b!305761))

(assert (not b!305759))

(assert (not b!305760))

(assert (not b!305766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

