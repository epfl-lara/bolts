; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31044 () Bool)

(assert start!31044)

(declare-fun b!311934 () Bool)

(declare-fun e!194558 () Bool)

(declare-fun e!194556 () Bool)

(assert (=> b!311934 (= e!194558 e!194556)))

(declare-fun res!168548 () Bool)

(assert (=> b!311934 (=> (not res!168548) (not e!194556))))

(declare-datatypes ((array!15944 0))(
  ( (array!15945 (arr!7552 (Array (_ BitVec 32) (_ BitVec 64))) (size!7904 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15944)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2703 0))(
  ( (MissingZero!2703 (index!12988 (_ BitVec 32))) (Found!2703 (index!12989 (_ BitVec 32))) (Intermediate!2703 (undefined!3515 Bool) (index!12990 (_ BitVec 32)) (x!31167 (_ BitVec 32))) (Undefined!2703) (MissingVacant!2703 (index!12991 (_ BitVec 32))) )
))
(declare-fun lt!152753 () SeekEntryResult!2703)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15944 (_ BitVec 32)) SeekEntryResult!2703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311934 (= res!168548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152753))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311934 (= lt!152753 (Intermediate!2703 false resIndex!52 resX!52))))

(declare-fun b!311935 () Bool)

(declare-fun res!168546 () Bool)

(assert (=> b!311935 (=> (not res!168546) (not e!194558))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311935 (= res!168546 (and (= (size!7904 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7904 a!3293))))))

(declare-fun b!311936 () Bool)

(declare-fun res!168552 () Bool)

(assert (=> b!311936 (=> (not res!168552) (not e!194558))))

(declare-fun arrayContainsKey!0 (array!15944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311936 (= res!168552 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168554 () Bool)

(assert (=> start!31044 (=> (not res!168554) (not e!194558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31044 (= res!168554 (validMask!0 mask!3709))))

(assert (=> start!31044 e!194558))

(declare-fun array_inv!5506 (array!15944) Bool)

(assert (=> start!31044 (array_inv!5506 a!3293)))

(assert (=> start!31044 true))

(declare-fun b!311937 () Bool)

(declare-fun e!194557 () Bool)

(declare-fun e!194559 () Bool)

(assert (=> b!311937 (= e!194557 (not e!194559))))

(declare-fun res!168553 () Bool)

(assert (=> b!311937 (=> res!168553 e!194559)))

(declare-fun lt!152750 () (_ BitVec 32))

(declare-fun lt!152749 () SeekEntryResult!2703)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!311937 (= res!168553 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152750 #b00000000000000000000000000000000) (bvsge lt!152750 (size!7904 a!3293)) (not (= lt!152749 lt!152753))))))

(declare-fun lt!152752 () SeekEntryResult!2703)

(declare-fun lt!152747 () SeekEntryResult!2703)

(assert (=> b!311937 (= lt!152752 lt!152747)))

(declare-fun lt!152748 () array!15944)

(assert (=> b!311937 (= lt!152747 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152750 k!2441 lt!152748 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311937 (= lt!152752 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152748 mask!3709))))

(assert (=> b!311937 (= lt!152748 (array!15945 (store (arr!7552 a!3293) i!1240 k!2441) (size!7904 a!3293)))))

(declare-fun lt!152746 () SeekEntryResult!2703)

(assert (=> b!311937 (= lt!152746 lt!152749)))

(assert (=> b!311937 (= lt!152749 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152750 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311937 (= lt!152750 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311938 () Bool)

(assert (=> b!311938 (= e!194556 e!194557)))

(declare-fun res!168549 () Bool)

(assert (=> b!311938 (=> (not res!168549) (not e!194557))))

(assert (=> b!311938 (= res!168549 (and (= lt!152746 lt!152753) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7552 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311938 (= lt!152746 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311939 () Bool)

(declare-fun res!168551 () Bool)

(assert (=> b!311939 (=> (not res!168551) (not e!194558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311939 (= res!168551 (validKeyInArray!0 k!2441))))

(declare-fun b!311940 () Bool)

(assert (=> b!311940 (= e!194559 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(assert (=> b!311940 (= lt!152747 lt!152749)))

(declare-datatypes ((Unit!9604 0))(
  ( (Unit!9605) )
))
(declare-fun lt!152751 () Unit!9604)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15944 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9604)

(assert (=> b!311940 (= lt!152751 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152750 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311941 () Bool)

(declare-fun res!168555 () Bool)

(assert (=> b!311941 (=> (not res!168555) (not e!194558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15944 (_ BitVec 32)) Bool)

(assert (=> b!311941 (= res!168555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311942 () Bool)

(declare-fun res!168547 () Bool)

(assert (=> b!311942 (=> (not res!168547) (not e!194556))))

(assert (=> b!311942 (= res!168547 (and (= (select (arr!7552 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7904 a!3293))))))

(declare-fun b!311943 () Bool)

(declare-fun res!168550 () Bool)

(assert (=> b!311943 (=> (not res!168550) (not e!194558))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15944 (_ BitVec 32)) SeekEntryResult!2703)

(assert (=> b!311943 (= res!168550 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2703 i!1240)))))

(assert (= (and start!31044 res!168554) b!311935))

(assert (= (and b!311935 res!168546) b!311939))

(assert (= (and b!311939 res!168551) b!311936))

(assert (= (and b!311936 res!168552) b!311943))

(assert (= (and b!311943 res!168550) b!311941))

(assert (= (and b!311941 res!168555) b!311934))

(assert (= (and b!311934 res!168548) b!311942))

(assert (= (and b!311942 res!168547) b!311938))

(assert (= (and b!311938 res!168549) b!311937))

(assert (= (and b!311937 (not res!168553)) b!311940))

(declare-fun m!322021 () Bool)

(assert (=> start!31044 m!322021))

(declare-fun m!322023 () Bool)

(assert (=> start!31044 m!322023))

(declare-fun m!322025 () Bool)

(assert (=> b!311938 m!322025))

(declare-fun m!322027 () Bool)

(assert (=> b!311938 m!322027))

(declare-fun m!322029 () Bool)

(assert (=> b!311943 m!322029))

(declare-fun m!322031 () Bool)

(assert (=> b!311936 m!322031))

(declare-fun m!322033 () Bool)

(assert (=> b!311939 m!322033))

(declare-fun m!322035 () Bool)

(assert (=> b!311937 m!322035))

(declare-fun m!322037 () Bool)

(assert (=> b!311937 m!322037))

(declare-fun m!322039 () Bool)

(assert (=> b!311937 m!322039))

(declare-fun m!322041 () Bool)

(assert (=> b!311937 m!322041))

(declare-fun m!322043 () Bool)

(assert (=> b!311937 m!322043))

(declare-fun m!322045 () Bool)

(assert (=> b!311934 m!322045))

(assert (=> b!311934 m!322045))

(declare-fun m!322047 () Bool)

(assert (=> b!311934 m!322047))

(declare-fun m!322049 () Bool)

(assert (=> b!311942 m!322049))

(declare-fun m!322051 () Bool)

(assert (=> b!311940 m!322051))

(declare-fun m!322053 () Bool)

(assert (=> b!311941 m!322053))

(push 1)

