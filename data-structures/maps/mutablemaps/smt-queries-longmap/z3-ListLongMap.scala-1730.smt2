; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31838 () Bool)

(assert start!31838)

(declare-fun b!317949 () Bool)

(declare-fun e!197614 () Bool)

(declare-fun e!197610 () Bool)

(assert (=> b!317949 (= e!197614 e!197610)))

(declare-fun res!172691 () Bool)

(assert (=> b!317949 (=> (not res!172691) (not e!197610))))

(declare-datatypes ((array!16207 0))(
  ( (array!16208 (arr!7667 (Array (_ BitVec 32) (_ BitVec 64))) (size!8019 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16207)

(declare-datatypes ((SeekEntryResult!2818 0))(
  ( (MissingZero!2818 (index!13448 (_ BitVec 32))) (Found!2818 (index!13449 (_ BitVec 32))) (Intermediate!2818 (undefined!3630 Bool) (index!13450 (_ BitVec 32)) (x!31670 (_ BitVec 32))) (Undefined!2818) (MissingVacant!2818 (index!13451 (_ BitVec 32))) )
))
(declare-fun lt!155195 () SeekEntryResult!2818)

(declare-fun lt!155196 () SeekEntryResult!2818)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!317949 (= res!172691 (and (= lt!155195 lt!155196) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7667 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16207 (_ BitVec 32)) SeekEntryResult!2818)

(assert (=> b!317949 (= lt!155195 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317950 () Bool)

(declare-fun res!172687 () Bool)

(declare-fun e!197611 () Bool)

(assert (=> b!317950 (=> (not res!172687) (not e!197611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317950 (= res!172687 (validKeyInArray!0 k0!2441))))

(declare-fun b!317951 () Bool)

(declare-fun res!172689 () Bool)

(assert (=> b!317951 (=> (not res!172689) (not e!197611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16207 (_ BitVec 32)) Bool)

(assert (=> b!317951 (= res!172689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317952 () Bool)

(declare-fun res!172694 () Bool)

(assert (=> b!317952 (=> (not res!172694) (not e!197611))))

(declare-fun arrayContainsKey!0 (array!16207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317952 (= res!172694 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317953 () Bool)

(declare-fun res!172692 () Bool)

(assert (=> b!317953 (=> (not res!172692) (not e!197611))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317953 (= res!172692 (and (= (size!8019 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8019 a!3293))))))

(declare-fun e!197612 () Bool)

(declare-fun b!317954 () Bool)

(declare-fun lt!155198 () (_ BitVec 32))

(declare-fun lt!155197 () array!16207)

(assert (=> b!317954 (= e!197612 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155197 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155198 k0!2441 lt!155197 mask!3709)))))

(assert (=> b!317954 (= lt!155197 (array!16208 (store (arr!7667 a!3293) i!1240 k0!2441) (size!8019 a!3293)))))

(declare-fun res!172690 () Bool)

(assert (=> start!31838 (=> (not res!172690) (not e!197611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31838 (= res!172690 (validMask!0 mask!3709))))

(assert (=> start!31838 e!197611))

(declare-fun array_inv!5621 (array!16207) Bool)

(assert (=> start!31838 (array_inv!5621 a!3293)))

(assert (=> start!31838 true))

(declare-fun b!317955 () Bool)

(declare-fun res!172695 () Bool)

(assert (=> b!317955 (=> (not res!172695) (not e!197614))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317955 (= res!172695 (and (= (select (arr!7667 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8019 a!3293))))))

(declare-fun b!317956 () Bool)

(assert (=> b!317956 (= e!197610 (not true))))

(assert (=> b!317956 e!197612))

(declare-fun res!172693 () Bool)

(assert (=> b!317956 (=> (not res!172693) (not e!197612))))

(assert (=> b!317956 (= res!172693 (= lt!155195 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155198 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317956 (= lt!155198 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317957 () Bool)

(assert (=> b!317957 (= e!197611 e!197614)))

(declare-fun res!172686 () Bool)

(assert (=> b!317957 (=> (not res!172686) (not e!197614))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317957 (= res!172686 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155196))))

(assert (=> b!317957 (= lt!155196 (Intermediate!2818 false resIndex!52 resX!52))))

(declare-fun b!317958 () Bool)

(declare-fun res!172688 () Bool)

(assert (=> b!317958 (=> (not res!172688) (not e!197611))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16207 (_ BitVec 32)) SeekEntryResult!2818)

(assert (=> b!317958 (= res!172688 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2818 i!1240)))))

(assert (= (and start!31838 res!172690) b!317953))

(assert (= (and b!317953 res!172692) b!317950))

(assert (= (and b!317950 res!172687) b!317952))

(assert (= (and b!317952 res!172694) b!317958))

(assert (= (and b!317958 res!172688) b!317951))

(assert (= (and b!317951 res!172689) b!317957))

(assert (= (and b!317957 res!172686) b!317955))

(assert (= (and b!317955 res!172695) b!317949))

(assert (= (and b!317949 res!172691) b!317956))

(assert (= (and b!317956 res!172693) b!317954))

(declare-fun m!326673 () Bool)

(assert (=> b!317951 m!326673))

(declare-fun m!326675 () Bool)

(assert (=> b!317957 m!326675))

(assert (=> b!317957 m!326675))

(declare-fun m!326677 () Bool)

(assert (=> b!317957 m!326677))

(declare-fun m!326679 () Bool)

(assert (=> b!317955 m!326679))

(declare-fun m!326681 () Bool)

(assert (=> b!317949 m!326681))

(declare-fun m!326683 () Bool)

(assert (=> b!317949 m!326683))

(declare-fun m!326685 () Bool)

(assert (=> b!317956 m!326685))

(declare-fun m!326687 () Bool)

(assert (=> b!317956 m!326687))

(declare-fun m!326689 () Bool)

(assert (=> b!317950 m!326689))

(declare-fun m!326691 () Bool)

(assert (=> b!317958 m!326691))

(declare-fun m!326693 () Bool)

(assert (=> b!317952 m!326693))

(declare-fun m!326695 () Bool)

(assert (=> b!317954 m!326695))

(declare-fun m!326697 () Bool)

(assert (=> b!317954 m!326697))

(declare-fun m!326699 () Bool)

(assert (=> b!317954 m!326699))

(declare-fun m!326701 () Bool)

(assert (=> start!31838 m!326701))

(declare-fun m!326703 () Bool)

(assert (=> start!31838 m!326703))

(check-sat (not b!317957) (not b!317956) (not b!317958) (not start!31838) (not b!317949) (not b!317952) (not b!317954) (not b!317951) (not b!317950))
(check-sat)
