; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31836 () Bool)

(assert start!31836)

(declare-fun b!317919 () Bool)

(declare-fun e!197596 () Bool)

(assert (=> b!317919 (= e!197596 (not true))))

(declare-fun e!197595 () Bool)

(assert (=> b!317919 e!197595))

(declare-fun res!172664 () Bool)

(assert (=> b!317919 (=> (not res!172664) (not e!197595))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!155186 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2817 0))(
  ( (MissingZero!2817 (index!13444 (_ BitVec 32))) (Found!2817 (index!13445 (_ BitVec 32))) (Intermediate!2817 (undefined!3629 Bool) (index!13446 (_ BitVec 32)) (x!31669 (_ BitVec 32))) (Undefined!2817) (MissingVacant!2817 (index!13447 (_ BitVec 32))) )
))
(declare-fun lt!155184 () SeekEntryResult!2817)

(declare-datatypes ((array!16205 0))(
  ( (array!16206 (arr!7666 (Array (_ BitVec 32) (_ BitVec 64))) (size!8018 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16205 (_ BitVec 32)) SeekEntryResult!2817)

(assert (=> b!317919 (= res!172664 (= lt!155184 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155186 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317919 (= lt!155186 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317920 () Bool)

(declare-fun res!172657 () Bool)

(declare-fun e!197597 () Bool)

(assert (=> b!317920 (=> (not res!172657) (not e!197597))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317920 (= res!172657 (and (= (size!8018 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8018 a!3293))))))

(declare-fun b!317921 () Bool)

(declare-fun res!172663 () Bool)

(assert (=> b!317921 (=> (not res!172663) (not e!197597))))

(declare-fun arrayContainsKey!0 (array!16205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317921 (= res!172663 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!172660 () Bool)

(assert (=> start!31836 (=> (not res!172660) (not e!197597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31836 (= res!172660 (validMask!0 mask!3709))))

(assert (=> start!31836 e!197597))

(declare-fun array_inv!5620 (array!16205) Bool)

(assert (=> start!31836 (array_inv!5620 a!3293)))

(assert (=> start!31836 true))

(declare-fun b!317922 () Bool)

(declare-fun res!172665 () Bool)

(assert (=> b!317922 (=> (not res!172665) (not e!197597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317922 (= res!172665 (validKeyInArray!0 k!2441))))

(declare-fun b!317923 () Bool)

(declare-fun res!172659 () Bool)

(declare-fun e!197598 () Bool)

(assert (=> b!317923 (=> (not res!172659) (not e!197598))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317923 (= res!172659 (and (= (select (arr!7666 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8018 a!3293))))))

(declare-fun b!317924 () Bool)

(assert (=> b!317924 (= e!197597 e!197598)))

(declare-fun res!172661 () Bool)

(assert (=> b!317924 (=> (not res!172661) (not e!197598))))

(declare-fun lt!155183 () SeekEntryResult!2817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317924 (= res!172661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155183))))

(assert (=> b!317924 (= lt!155183 (Intermediate!2817 false resIndex!52 resX!52))))

(declare-fun b!317925 () Bool)

(declare-fun res!172662 () Bool)

(assert (=> b!317925 (=> (not res!172662) (not e!197597))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16205 (_ BitVec 32)) SeekEntryResult!2817)

(assert (=> b!317925 (= res!172662 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2817 i!1240)))))

(declare-fun b!317926 () Bool)

(assert (=> b!317926 (= e!197598 e!197596)))

(declare-fun res!172658 () Bool)

(assert (=> b!317926 (=> (not res!172658) (not e!197596))))

(assert (=> b!317926 (= res!172658 (and (= lt!155184 lt!155183) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7666 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317926 (= lt!155184 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317927 () Bool)

(declare-fun res!172656 () Bool)

(assert (=> b!317927 (=> (not res!172656) (not e!197597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16205 (_ BitVec 32)) Bool)

(assert (=> b!317927 (= res!172656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!155185 () array!16205)

(declare-fun b!317928 () Bool)

(assert (=> b!317928 (= e!197595 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155185 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155186 k!2441 lt!155185 mask!3709)))))

(assert (=> b!317928 (= lt!155185 (array!16206 (store (arr!7666 a!3293) i!1240 k!2441) (size!8018 a!3293)))))

(assert (= (and start!31836 res!172660) b!317920))

(assert (= (and b!317920 res!172657) b!317922))

(assert (= (and b!317922 res!172665) b!317921))

(assert (= (and b!317921 res!172663) b!317925))

(assert (= (and b!317925 res!172662) b!317927))

(assert (= (and b!317927 res!172656) b!317924))

(assert (= (and b!317924 res!172661) b!317923))

(assert (= (and b!317923 res!172659) b!317926))

(assert (= (and b!317926 res!172658) b!317919))

(assert (= (and b!317919 res!172664) b!317928))

(declare-fun m!326641 () Bool)

(assert (=> b!317926 m!326641))

(declare-fun m!326643 () Bool)

(assert (=> b!317926 m!326643))

(declare-fun m!326645 () Bool)

(assert (=> b!317921 m!326645))

(declare-fun m!326647 () Bool)

(assert (=> b!317924 m!326647))

(assert (=> b!317924 m!326647))

(declare-fun m!326649 () Bool)

(assert (=> b!317924 m!326649))

(declare-fun m!326651 () Bool)

(assert (=> b!317922 m!326651))

(declare-fun m!326653 () Bool)

(assert (=> b!317923 m!326653))

(declare-fun m!326655 () Bool)

(assert (=> b!317927 m!326655))

(declare-fun m!326657 () Bool)

(assert (=> start!31836 m!326657))

(declare-fun m!326659 () Bool)

(assert (=> start!31836 m!326659))

(declare-fun m!326661 () Bool)

(assert (=> b!317928 m!326661))

(declare-fun m!326663 () Bool)

(assert (=> b!317928 m!326663))

(declare-fun m!326665 () Bool)

(assert (=> b!317928 m!326665))

(declare-fun m!326667 () Bool)

(assert (=> b!317925 m!326667))

(declare-fun m!326669 () Bool)

(assert (=> b!317919 m!326669))

(declare-fun m!326671 () Bool)

(assert (=> b!317919 m!326671))

(push 1)

