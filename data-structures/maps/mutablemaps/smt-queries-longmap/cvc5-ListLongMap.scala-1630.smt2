; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30564 () Bool)

(assert start!30564)

(declare-fun b!305921 () Bool)

(declare-fun res!163085 () Bool)

(declare-fun e!191956 () Bool)

(assert (=> b!305921 (=> (not res!163085) (not e!191956))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305921 (= res!163085 (validKeyInArray!0 k!2441))))

(declare-fun b!305922 () Bool)

(declare-fun res!163083 () Bool)

(declare-fun e!191957 () Bool)

(assert (=> b!305922 (=> (not res!163083) (not e!191957))))

(declare-datatypes ((array!15566 0))(
  ( (array!15567 (arr!7366 (Array (_ BitVec 32) (_ BitVec 64))) (size!7718 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15566)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305922 (= res!163083 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7366 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!305923 () Bool)

(assert (=> b!305923 false))

(declare-datatypes ((Unit!9463 0))(
  ( (Unit!9464) )
))
(declare-fun e!191955 () Unit!9463)

(declare-fun Unit!9465 () Unit!9463)

(assert (=> b!305923 (= e!191955 Unit!9465)))

(declare-fun b!305924 () Bool)

(declare-fun e!191958 () Unit!9463)

(declare-fun Unit!9466 () Unit!9463)

(assert (=> b!305924 (= e!191958 Unit!9466)))

(declare-fun res!163084 () Bool)

(assert (=> start!30564 (=> (not res!163084) (not e!191956))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30564 (= res!163084 (validMask!0 mask!3709))))

(assert (=> start!30564 e!191956))

(declare-fun array_inv!5320 (array!15566) Bool)

(assert (=> start!30564 (array_inv!5320 a!3293)))

(assert (=> start!30564 true))

(declare-fun b!305925 () Bool)

(declare-fun res!163080 () Bool)

(assert (=> b!305925 (=> (not res!163080) (not e!191956))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305925 (= res!163080 (and (= (size!7718 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7718 a!3293))))))

(declare-fun b!305926 () Bool)

(declare-fun res!163078 () Bool)

(assert (=> b!305926 (=> (not res!163078) (not e!191956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15566 (_ BitVec 32)) Bool)

(assert (=> b!305926 (= res!163078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305927 () Bool)

(declare-fun res!163086 () Bool)

(assert (=> b!305927 (=> (not res!163086) (not e!191957))))

(declare-datatypes ((SeekEntryResult!2517 0))(
  ( (MissingZero!2517 (index!12244 (_ BitVec 32))) (Found!2517 (index!12245 (_ BitVec 32))) (Intermediate!2517 (undefined!3329 Bool) (index!12246 (_ BitVec 32)) (x!30467 (_ BitVec 32))) (Undefined!2517) (MissingVacant!2517 (index!12247 (_ BitVec 32))) )
))
(declare-fun lt!150857 () SeekEntryResult!2517)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15566 (_ BitVec 32)) SeekEntryResult!2517)

(assert (=> b!305927 (= res!163086 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150857))))

(declare-fun b!305928 () Bool)

(assert (=> b!305928 (= e!191957 (not true))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305928 (= index!1781 resIndex!52)))

(declare-fun lt!150855 () Unit!9463)

(assert (=> b!305928 (= lt!150855 e!191958)))

(declare-fun c!49024 () Bool)

(assert (=> b!305928 (= c!49024 (not (= resIndex!52 index!1781)))))

(declare-fun b!305929 () Bool)

(declare-fun res!163082 () Bool)

(assert (=> b!305929 (=> (not res!163082) (not e!191956))))

(declare-fun arrayContainsKey!0 (array!15566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305929 (= res!163082 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305930 () Bool)

(assert (=> b!305930 false))

(declare-fun lt!150856 () SeekEntryResult!2517)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305930 (= lt!150856 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9467 () Unit!9463)

(assert (=> b!305930 (= e!191955 Unit!9467)))

(declare-fun b!305931 () Bool)

(declare-fun res!163079 () Bool)

(assert (=> b!305931 (=> (not res!163079) (not e!191956))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15566 (_ BitVec 32)) SeekEntryResult!2517)

(assert (=> b!305931 (= res!163079 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2517 i!1240)))))

(declare-fun b!305932 () Bool)

(assert (=> b!305932 (= e!191958 e!191955)))

(declare-fun c!49025 () Bool)

(assert (=> b!305932 (= c!49025 (or (= (select (arr!7366 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7366 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305933 () Bool)

(declare-fun res!163077 () Bool)

(assert (=> b!305933 (=> (not res!163077) (not e!191957))))

(assert (=> b!305933 (= res!163077 (and (= (select (arr!7366 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7718 a!3293))))))

(declare-fun b!305934 () Bool)

(assert (=> b!305934 (= e!191956 e!191957)))

(declare-fun res!163081 () Bool)

(assert (=> b!305934 (=> (not res!163081) (not e!191957))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305934 (= res!163081 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150857))))

(assert (=> b!305934 (= lt!150857 (Intermediate!2517 false resIndex!52 resX!52))))

(assert (= (and start!30564 res!163084) b!305925))

(assert (= (and b!305925 res!163080) b!305921))

(assert (= (and b!305921 res!163085) b!305929))

(assert (= (and b!305929 res!163082) b!305931))

(assert (= (and b!305931 res!163079) b!305926))

(assert (= (and b!305926 res!163078) b!305934))

(assert (= (and b!305934 res!163081) b!305933))

(assert (= (and b!305933 res!163077) b!305927))

(assert (= (and b!305927 res!163086) b!305922))

(assert (= (and b!305922 res!163083) b!305928))

(assert (= (and b!305928 c!49024) b!305932))

(assert (= (and b!305928 (not c!49024)) b!305924))

(assert (= (and b!305932 c!49025) b!305923))

(assert (= (and b!305932 (not c!49025)) b!305930))

(declare-fun m!316675 () Bool)

(assert (=> start!30564 m!316675))

(declare-fun m!316677 () Bool)

(assert (=> start!30564 m!316677))

(declare-fun m!316679 () Bool)

(assert (=> b!305929 m!316679))

(declare-fun m!316681 () Bool)

(assert (=> b!305930 m!316681))

(assert (=> b!305930 m!316681))

(declare-fun m!316683 () Bool)

(assert (=> b!305930 m!316683))

(declare-fun m!316685 () Bool)

(assert (=> b!305926 m!316685))

(declare-fun m!316687 () Bool)

(assert (=> b!305932 m!316687))

(declare-fun m!316689 () Bool)

(assert (=> b!305921 m!316689))

(declare-fun m!316691 () Bool)

(assert (=> b!305933 m!316691))

(assert (=> b!305922 m!316687))

(declare-fun m!316693 () Bool)

(assert (=> b!305934 m!316693))

(assert (=> b!305934 m!316693))

(declare-fun m!316695 () Bool)

(assert (=> b!305934 m!316695))

(declare-fun m!316697 () Bool)

(assert (=> b!305927 m!316697))

(declare-fun m!316699 () Bool)

(assert (=> b!305931 m!316699))

(push 1)

