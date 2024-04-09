; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30572 () Bool)

(assert start!30572)

(declare-fun b!306089 () Bool)

(declare-fun res!163199 () Bool)

(declare-fun e!192016 () Bool)

(assert (=> b!306089 (=> (not res!163199) (not e!192016))))

(declare-datatypes ((array!15574 0))(
  ( (array!15575 (arr!7370 (Array (_ BitVec 32) (_ BitVec 64))) (size!7722 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15574)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306089 (= res!163199 (and (= (select (arr!7370 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7722 a!3293))))))

(declare-fun b!306090 () Bool)

(declare-fun res!163203 () Bool)

(assert (=> b!306090 (=> (not res!163203) (not e!192016))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2521 0))(
  ( (MissingZero!2521 (index!12260 (_ BitVec 32))) (Found!2521 (index!12261 (_ BitVec 32))) (Intermediate!2521 (undefined!3333 Bool) (index!12262 (_ BitVec 32)) (x!30479 (_ BitVec 32))) (Undefined!2521) (MissingVacant!2521 (index!12263 (_ BitVec 32))) )
))
(declare-fun lt!150892 () SeekEntryResult!2521)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15574 (_ BitVec 32)) SeekEntryResult!2521)

(assert (=> b!306090 (= res!163203 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150892))))

(declare-fun b!306091 () Bool)

(declare-fun res!163197 () Bool)

(declare-fun e!192017 () Bool)

(assert (=> b!306091 (=> (not res!163197) (not e!192017))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15574 (_ BitVec 32)) SeekEntryResult!2521)

(assert (=> b!306091 (= res!163197 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2521 i!1240)))))

(declare-fun b!306092 () Bool)

(assert (=> b!306092 false))

(declare-datatypes ((Unit!9483 0))(
  ( (Unit!9484) )
))
(declare-fun e!192015 () Unit!9483)

(declare-fun Unit!9485 () Unit!9483)

(assert (=> b!306092 (= e!192015 Unit!9485)))

(declare-fun res!163204 () Bool)

(assert (=> start!30572 (=> (not res!163204) (not e!192017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30572 (= res!163204 (validMask!0 mask!3709))))

(assert (=> start!30572 e!192017))

(declare-fun array_inv!5324 (array!15574) Bool)

(assert (=> start!30572 (array_inv!5324 a!3293)))

(assert (=> start!30572 true))

(declare-fun b!306093 () Bool)

(declare-fun res!163201 () Bool)

(assert (=> b!306093 (=> (not res!163201) (not e!192017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15574 (_ BitVec 32)) Bool)

(assert (=> b!306093 (= res!163201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306094 () Bool)

(assert (=> b!306094 (= e!192016 (not true))))

(assert (=> b!306094 (= index!1781 resIndex!52)))

(declare-fun lt!150891 () Unit!9483)

(declare-fun e!192019 () Unit!9483)

(assert (=> b!306094 (= lt!150891 e!192019)))

(declare-fun c!49049 () Bool)

(assert (=> b!306094 (= c!49049 (not (= resIndex!52 index!1781)))))

(declare-fun b!306095 () Bool)

(declare-fun res!163198 () Bool)

(assert (=> b!306095 (=> (not res!163198) (not e!192017))))

(declare-fun arrayContainsKey!0 (array!15574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306095 (= res!163198 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306096 () Bool)

(assert (=> b!306096 (= e!192019 e!192015)))

(declare-fun c!49048 () Bool)

(assert (=> b!306096 (= c!49048 (or (= (select (arr!7370 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7370 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306097 () Bool)

(assert (=> b!306097 false))

(declare-fun lt!150893 () SeekEntryResult!2521)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306097 (= lt!150893 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9486 () Unit!9483)

(assert (=> b!306097 (= e!192015 Unit!9486)))

(declare-fun b!306098 () Bool)

(declare-fun res!163205 () Bool)

(assert (=> b!306098 (=> (not res!163205) (not e!192017))))

(assert (=> b!306098 (= res!163205 (and (= (size!7722 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7722 a!3293))))))

(declare-fun b!306099 () Bool)

(declare-fun res!163200 () Bool)

(assert (=> b!306099 (=> (not res!163200) (not e!192016))))

(assert (=> b!306099 (= res!163200 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7370 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306100 () Bool)

(declare-fun Unit!9487 () Unit!9483)

(assert (=> b!306100 (= e!192019 Unit!9487)))

(declare-fun b!306101 () Bool)

(assert (=> b!306101 (= e!192017 e!192016)))

(declare-fun res!163206 () Bool)

(assert (=> b!306101 (=> (not res!163206) (not e!192016))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306101 (= res!163206 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150892))))

(assert (=> b!306101 (= lt!150892 (Intermediate!2521 false resIndex!52 resX!52))))

(declare-fun b!306102 () Bool)

(declare-fun res!163202 () Bool)

(assert (=> b!306102 (=> (not res!163202) (not e!192017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306102 (= res!163202 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30572 res!163204) b!306098))

(assert (= (and b!306098 res!163205) b!306102))

(assert (= (and b!306102 res!163202) b!306095))

(assert (= (and b!306095 res!163198) b!306091))

(assert (= (and b!306091 res!163197) b!306093))

(assert (= (and b!306093 res!163201) b!306101))

(assert (= (and b!306101 res!163206) b!306089))

(assert (= (and b!306089 res!163199) b!306090))

(assert (= (and b!306090 res!163203) b!306099))

(assert (= (and b!306099 res!163200) b!306094))

(assert (= (and b!306094 c!49049) b!306096))

(assert (= (and b!306094 (not c!49049)) b!306100))

(assert (= (and b!306096 c!49048) b!306092))

(assert (= (and b!306096 (not c!49048)) b!306097))

(declare-fun m!316779 () Bool)

(assert (=> b!306091 m!316779))

(declare-fun m!316781 () Bool)

(assert (=> b!306093 m!316781))

(declare-fun m!316783 () Bool)

(assert (=> b!306090 m!316783))

(declare-fun m!316785 () Bool)

(assert (=> b!306096 m!316785))

(assert (=> b!306099 m!316785))

(declare-fun m!316787 () Bool)

(assert (=> b!306089 m!316787))

(declare-fun m!316789 () Bool)

(assert (=> b!306097 m!316789))

(assert (=> b!306097 m!316789))

(declare-fun m!316791 () Bool)

(assert (=> b!306097 m!316791))

(declare-fun m!316793 () Bool)

(assert (=> b!306101 m!316793))

(assert (=> b!306101 m!316793))

(declare-fun m!316795 () Bool)

(assert (=> b!306101 m!316795))

(declare-fun m!316797 () Bool)

(assert (=> b!306102 m!316797))

(declare-fun m!316799 () Bool)

(assert (=> b!306095 m!316799))

(declare-fun m!316801 () Bool)

(assert (=> start!30572 m!316801))

(declare-fun m!316803 () Bool)

(assert (=> start!30572 m!316803))

(check-sat (not b!306093) (not b!306102) (not b!306091) (not b!306101) (not b!306097) (not start!30572) (not b!306090) (not b!306095))
(check-sat)
