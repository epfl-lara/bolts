; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31848 () Bool)

(assert start!31848)

(declare-fun b!318099 () Bool)

(declare-fun e!197686 () Bool)

(assert (=> b!318099 (= e!197686 (not true))))

(declare-fun e!197689 () Bool)

(assert (=> b!318099 e!197689))

(declare-fun res!172840 () Bool)

(assert (=> b!318099 (=> (not res!172840) (not e!197689))))

(declare-datatypes ((array!16217 0))(
  ( (array!16218 (arr!7672 (Array (_ BitVec 32) (_ BitVec 64))) (size!8024 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16217)

(declare-datatypes ((SeekEntryResult!2823 0))(
  ( (MissingZero!2823 (index!13468 (_ BitVec 32))) (Found!2823 (index!13469 (_ BitVec 32))) (Intermediate!2823 (undefined!3635 Bool) (index!13470 (_ BitVec 32)) (x!31691 (_ BitVec 32))) (Undefined!2823) (MissingVacant!2823 (index!13471 (_ BitVec 32))) )
))
(declare-fun lt!155257 () SeekEntryResult!2823)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!155256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16217 (_ BitVec 32)) SeekEntryResult!2823)

(assert (=> b!318099 (= res!172840 (= lt!155257 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155256 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318099 (= lt!155256 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318100 () Bool)

(declare-fun res!172845 () Bool)

(declare-fun e!197688 () Bool)

(assert (=> b!318100 (=> (not res!172845) (not e!197688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16217 (_ BitVec 32)) Bool)

(assert (=> b!318100 (= res!172845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318101 () Bool)

(declare-fun res!172844 () Bool)

(assert (=> b!318101 (=> (not res!172844) (not e!197688))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16217 (_ BitVec 32)) SeekEntryResult!2823)

(assert (=> b!318101 (= res!172844 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2823 i!1240)))))

(declare-fun b!318102 () Bool)

(declare-fun res!172837 () Bool)

(assert (=> b!318102 (=> (not res!172837) (not e!197688))))

(declare-fun arrayContainsKey!0 (array!16217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318102 (= res!172837 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318103 () Bool)

(declare-fun e!197687 () Bool)

(assert (=> b!318103 (= e!197687 e!197686)))

(declare-fun res!172842 () Bool)

(assert (=> b!318103 (=> (not res!172842) (not e!197686))))

(declare-fun lt!155258 () SeekEntryResult!2823)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318103 (= res!172842 (and (= lt!155257 lt!155258) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7672 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318103 (= lt!155257 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!172836 () Bool)

(assert (=> start!31848 (=> (not res!172836) (not e!197688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31848 (= res!172836 (validMask!0 mask!3709))))

(assert (=> start!31848 e!197688))

(declare-fun array_inv!5626 (array!16217) Bool)

(assert (=> start!31848 (array_inv!5626 a!3293)))

(assert (=> start!31848 true))

(declare-fun b!318104 () Bool)

(assert (=> b!318104 (= e!197688 e!197687)))

(declare-fun res!172839 () Bool)

(assert (=> b!318104 (=> (not res!172839) (not e!197687))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318104 (= res!172839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155258))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318104 (= lt!155258 (Intermediate!2823 false resIndex!52 resX!52))))

(declare-fun b!318105 () Bool)

(declare-fun res!172843 () Bool)

(assert (=> b!318105 (=> (not res!172843) (not e!197688))))

(assert (=> b!318105 (= res!172843 (and (= (size!8024 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8024 a!3293))))))

(declare-fun b!318106 () Bool)

(declare-fun res!172841 () Bool)

(assert (=> b!318106 (=> (not res!172841) (not e!197687))))

(assert (=> b!318106 (= res!172841 (and (= (select (arr!7672 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8024 a!3293))))))

(declare-fun b!318107 () Bool)

(declare-fun res!172838 () Bool)

(assert (=> b!318107 (=> (not res!172838) (not e!197688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318107 (= res!172838 (validKeyInArray!0 k!2441))))

(declare-fun b!318108 () Bool)

(declare-fun lt!155255 () array!16217)

(assert (=> b!318108 (= e!197689 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155255 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155256 k!2441 lt!155255 mask!3709)))))

(assert (=> b!318108 (= lt!155255 (array!16218 (store (arr!7672 a!3293) i!1240 k!2441) (size!8024 a!3293)))))

(assert (= (and start!31848 res!172836) b!318105))

(assert (= (and b!318105 res!172843) b!318107))

(assert (= (and b!318107 res!172838) b!318102))

(assert (= (and b!318102 res!172837) b!318101))

(assert (= (and b!318101 res!172844) b!318100))

(assert (= (and b!318100 res!172845) b!318104))

(assert (= (and b!318104 res!172839) b!318106))

(assert (= (and b!318106 res!172841) b!318103))

(assert (= (and b!318103 res!172842) b!318099))

(assert (= (and b!318099 res!172840) b!318108))

(declare-fun m!326833 () Bool)

(assert (=> b!318103 m!326833))

(declare-fun m!326835 () Bool)

(assert (=> b!318103 m!326835))

(declare-fun m!326837 () Bool)

(assert (=> b!318101 m!326837))

(declare-fun m!326839 () Bool)

(assert (=> b!318104 m!326839))

(assert (=> b!318104 m!326839))

(declare-fun m!326841 () Bool)

(assert (=> b!318104 m!326841))

(declare-fun m!326843 () Bool)

(assert (=> b!318107 m!326843))

(declare-fun m!326845 () Bool)

(assert (=> b!318102 m!326845))

(declare-fun m!326847 () Bool)

(assert (=> b!318106 m!326847))

(declare-fun m!326849 () Bool)

(assert (=> b!318100 m!326849))

(declare-fun m!326851 () Bool)

(assert (=> start!31848 m!326851))

(declare-fun m!326853 () Bool)

(assert (=> start!31848 m!326853))

(declare-fun m!326855 () Bool)

(assert (=> b!318108 m!326855))

(declare-fun m!326857 () Bool)

(assert (=> b!318108 m!326857))

(declare-fun m!326859 () Bool)

(assert (=> b!318108 m!326859))

(declare-fun m!326861 () Bool)

(assert (=> b!318099 m!326861))

(declare-fun m!326863 () Bool)

(assert (=> b!318099 m!326863))

(push 1)

