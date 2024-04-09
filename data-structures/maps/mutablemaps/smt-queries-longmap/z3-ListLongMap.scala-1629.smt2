; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30560 () Bool)

(assert start!30560)

(declare-fun b!305837 () Bool)

(declare-fun res!163020 () Bool)

(declare-fun e!191928 () Bool)

(assert (=> b!305837 (=> (not res!163020) (not e!191928))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305837 (= res!163020 (validKeyInArray!0 k0!2441))))

(declare-fun b!305838 () Bool)

(declare-fun res!163019 () Bool)

(assert (=> b!305838 (=> (not res!163019) (not e!191928))))

(declare-datatypes ((array!15562 0))(
  ( (array!15563 (arr!7364 (Array (_ BitVec 32) (_ BitVec 64))) (size!7716 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15562)

(declare-fun arrayContainsKey!0 (array!15562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305838 (= res!163019 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305839 () Bool)

(assert (=> b!305839 false))

(declare-datatypes ((SeekEntryResult!2515 0))(
  ( (MissingZero!2515 (index!12236 (_ BitVec 32))) (Found!2515 (index!12237 (_ BitVec 32))) (Intermediate!2515 (undefined!3327 Bool) (index!12238 (_ BitVec 32)) (x!30457 (_ BitVec 32))) (Undefined!2515) (MissingVacant!2515 (index!12239 (_ BitVec 32))) )
))
(declare-fun lt!150837 () SeekEntryResult!2515)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15562 (_ BitVec 32)) SeekEntryResult!2515)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305839 (= lt!150837 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9453 0))(
  ( (Unit!9454) )
))
(declare-fun e!191926 () Unit!9453)

(declare-fun Unit!9455 () Unit!9453)

(assert (=> b!305839 (= e!191926 Unit!9455)))

(declare-fun res!163025 () Bool)

(assert (=> start!30560 (=> (not res!163025) (not e!191928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30560 (= res!163025 (validMask!0 mask!3709))))

(assert (=> start!30560 e!191928))

(declare-fun array_inv!5318 (array!15562) Bool)

(assert (=> start!30560 (array_inv!5318 a!3293)))

(assert (=> start!30560 true))

(declare-fun b!305840 () Bool)

(declare-fun e!191925 () Unit!9453)

(declare-fun Unit!9456 () Unit!9453)

(assert (=> b!305840 (= e!191925 Unit!9456)))

(declare-fun b!305841 () Bool)

(assert (=> b!305841 false))

(declare-fun Unit!9457 () Unit!9453)

(assert (=> b!305841 (= e!191926 Unit!9457)))

(declare-fun b!305842 () Bool)

(declare-fun res!163024 () Bool)

(assert (=> b!305842 (=> (not res!163024) (not e!191928))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305842 (= res!163024 (and (= (size!7716 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7716 a!3293))))))

(declare-fun b!305843 () Bool)

(declare-fun res!163023 () Bool)

(assert (=> b!305843 (=> (not res!163023) (not e!191928))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15562 (_ BitVec 32)) SeekEntryResult!2515)

(assert (=> b!305843 (= res!163023 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2515 i!1240)))))

(declare-fun b!305844 () Bool)

(declare-fun e!191929 () Bool)

(assert (=> b!305844 (= e!191928 e!191929)))

(declare-fun res!163018 () Bool)

(assert (=> b!305844 (=> (not res!163018) (not e!191929))))

(declare-fun lt!150838 () SeekEntryResult!2515)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305844 (= res!163018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150838))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305844 (= lt!150838 (Intermediate!2515 false resIndex!52 resX!52))))

(declare-fun b!305845 () Bool)

(declare-fun res!163022 () Bool)

(assert (=> b!305845 (=> (not res!163022) (not e!191928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15562 (_ BitVec 32)) Bool)

(assert (=> b!305845 (= res!163022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305846 () Bool)

(assert (=> b!305846 (= e!191929 (not (or (not (= (select (arr!7364 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(assert (=> b!305846 (= index!1781 resIndex!52)))

(declare-fun lt!150839 () Unit!9453)

(assert (=> b!305846 (= lt!150839 e!191925)))

(declare-fun c!49013 () Bool)

(assert (=> b!305846 (= c!49013 (not (= resIndex!52 index!1781)))))

(declare-fun b!305847 () Bool)

(declare-fun res!163021 () Bool)

(assert (=> b!305847 (=> (not res!163021) (not e!191929))))

(assert (=> b!305847 (= res!163021 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150838))))

(declare-fun b!305848 () Bool)

(declare-fun res!163017 () Bool)

(assert (=> b!305848 (=> (not res!163017) (not e!191929))))

(assert (=> b!305848 (= res!163017 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7364 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305849 () Bool)

(assert (=> b!305849 (= e!191925 e!191926)))

(declare-fun c!49012 () Bool)

(assert (=> b!305849 (= c!49012 (or (= (select (arr!7364 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7364 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305850 () Bool)

(declare-fun res!163026 () Bool)

(assert (=> b!305850 (=> (not res!163026) (not e!191929))))

(assert (=> b!305850 (= res!163026 (and (= (select (arr!7364 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7716 a!3293))))))

(assert (= (and start!30560 res!163025) b!305842))

(assert (= (and b!305842 res!163024) b!305837))

(assert (= (and b!305837 res!163020) b!305838))

(assert (= (and b!305838 res!163019) b!305843))

(assert (= (and b!305843 res!163023) b!305845))

(assert (= (and b!305845 res!163022) b!305844))

(assert (= (and b!305844 res!163018) b!305850))

(assert (= (and b!305850 res!163026) b!305847))

(assert (= (and b!305847 res!163021) b!305848))

(assert (= (and b!305848 res!163017) b!305846))

(assert (= (and b!305846 c!49013) b!305849))

(assert (= (and b!305846 (not c!49013)) b!305840))

(assert (= (and b!305849 c!49012) b!305841))

(assert (= (and b!305849 (not c!49012)) b!305839))

(declare-fun m!316623 () Bool)

(assert (=> b!305844 m!316623))

(assert (=> b!305844 m!316623))

(declare-fun m!316625 () Bool)

(assert (=> b!305844 m!316625))

(declare-fun m!316627 () Bool)

(assert (=> start!30560 m!316627))

(declare-fun m!316629 () Bool)

(assert (=> start!30560 m!316629))

(declare-fun m!316631 () Bool)

(assert (=> b!305847 m!316631))

(declare-fun m!316633 () Bool)

(assert (=> b!305849 m!316633))

(assert (=> b!305846 m!316633))

(assert (=> b!305848 m!316633))

(declare-fun m!316635 () Bool)

(assert (=> b!305843 m!316635))

(declare-fun m!316637 () Bool)

(assert (=> b!305845 m!316637))

(declare-fun m!316639 () Bool)

(assert (=> b!305839 m!316639))

(assert (=> b!305839 m!316639))

(declare-fun m!316641 () Bool)

(assert (=> b!305839 m!316641))

(declare-fun m!316643 () Bool)

(assert (=> b!305838 m!316643))

(declare-fun m!316645 () Bool)

(assert (=> b!305850 m!316645))

(declare-fun m!316647 () Bool)

(assert (=> b!305837 m!316647))

(check-sat (not b!305847) (not b!305845) (not b!305844) (not b!305839) (not b!305843) (not b!305838) (not start!30560) (not b!305837))
(check-sat)
