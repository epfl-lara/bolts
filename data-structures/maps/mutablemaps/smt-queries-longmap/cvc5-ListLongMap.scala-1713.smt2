; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31572 () Bool)

(assert start!31572)

(declare-fun res!170892 () Bool)

(declare-fun e!196365 () Bool)

(assert (=> start!31572 (=> (not res!170892) (not e!196365))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31572 (= res!170892 (validMask!0 mask!3709))))

(assert (=> start!31572 e!196365))

(declare-datatypes ((array!16094 0))(
  ( (array!16095 (arr!7615 (Array (_ BitVec 32) (_ BitVec 64))) (size!7967 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16094)

(declare-fun array_inv!5569 (array!16094) Bool)

(assert (=> start!31572 (array_inv!5569 a!3293)))

(assert (=> start!31572 true))

(declare-fun b!315443 () Bool)

(declare-fun res!170889 () Bool)

(declare-fun e!196363 () Bool)

(assert (=> b!315443 (=> (not res!170889) (not e!196363))))

(declare-datatypes ((SeekEntryResult!2766 0))(
  ( (MissingZero!2766 (index!13240 (_ BitVec 32))) (Found!2766 (index!13241 (_ BitVec 32))) (Intermediate!2766 (undefined!3578 Bool) (index!13242 (_ BitVec 32)) (x!31455 (_ BitVec 32))) (Undefined!2766) (MissingVacant!2766 (index!13243 (_ BitVec 32))) )
))
(declare-fun lt!154309 () SeekEntryResult!2766)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16094 (_ BitVec 32)) SeekEntryResult!2766)

(assert (=> b!315443 (= res!170889 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154309))))

(declare-fun b!315444 () Bool)

(declare-datatypes ((Unit!9700 0))(
  ( (Unit!9701) )
))
(declare-fun e!196364 () Unit!9700)

(declare-fun e!196366 () Unit!9700)

(assert (=> b!315444 (= e!196364 e!196366)))

(declare-fun c!49897 () Bool)

(assert (=> b!315444 (= c!49897 (or (= (select (arr!7615 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7615 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315445 () Bool)

(declare-fun res!170890 () Bool)

(assert (=> b!315445 (=> (not res!170890) (not e!196365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315445 (= res!170890 (validKeyInArray!0 k!2441))))

(declare-fun b!315446 () Bool)

(declare-fun res!170888 () Bool)

(assert (=> b!315446 (=> (not res!170888) (not e!196365))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16094 (_ BitVec 32)) SeekEntryResult!2766)

(assert (=> b!315446 (= res!170888 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2766 i!1240)))))

(declare-fun b!315447 () Bool)

(assert (=> b!315447 false))

(declare-fun Unit!9702 () Unit!9700)

(assert (=> b!315447 (= e!196366 Unit!9702)))

(declare-fun b!315448 () Bool)

(declare-fun res!170883 () Bool)

(assert (=> b!315448 (=> (not res!170883) (not e!196363))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315448 (= res!170883 (and (= (select (arr!7615 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7967 a!3293))))))

(declare-fun b!315449 () Bool)

(declare-fun res!170884 () Bool)

(assert (=> b!315449 (=> (not res!170884) (not e!196365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16094 (_ BitVec 32)) Bool)

(assert (=> b!315449 (= res!170884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315450 () Bool)

(declare-fun res!170886 () Bool)

(assert (=> b!315450 (=> (not res!170886) (not e!196365))))

(declare-fun arrayContainsKey!0 (array!16094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315450 (= res!170886 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315451 () Bool)

(declare-fun Unit!9703 () Unit!9700)

(assert (=> b!315451 (= e!196364 Unit!9703)))

(declare-fun b!315452 () Bool)

(declare-fun res!170885 () Bool)

(assert (=> b!315452 (=> (not res!170885) (not e!196365))))

(assert (=> b!315452 (= res!170885 (and (= (size!7967 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7967 a!3293))))))

(declare-fun b!315453 () Bool)

(assert (=> b!315453 false))

(declare-fun lt!154308 () SeekEntryResult!2766)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315453 (= lt!154308 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9704 () Unit!9700)

(assert (=> b!315453 (= e!196366 Unit!9704)))

(declare-fun b!315454 () Bool)

(assert (=> b!315454 (= e!196365 e!196363)))

(declare-fun res!170887 () Bool)

(assert (=> b!315454 (=> (not res!170887) (not e!196363))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315454 (= res!170887 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154309))))

(assert (=> b!315454 (= lt!154309 (Intermediate!2766 false resIndex!52 resX!52))))

(declare-fun b!315455 () Bool)

(declare-fun res!170891 () Bool)

(assert (=> b!315455 (=> (not res!170891) (not e!196363))))

(assert (=> b!315455 (= res!170891 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7615 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315456 () Bool)

(assert (=> b!315456 (= e!196363 (not (= index!1781 resIndex!52)))))

(declare-fun lt!154310 () Unit!9700)

(assert (=> b!315456 (= lt!154310 e!196364)))

(declare-fun c!49898 () Bool)

(assert (=> b!315456 (= c!49898 (not (= resIndex!52 index!1781)))))

(assert (= (and start!31572 res!170892) b!315452))

(assert (= (and b!315452 res!170885) b!315445))

(assert (= (and b!315445 res!170890) b!315450))

(assert (= (and b!315450 res!170886) b!315446))

(assert (= (and b!315446 res!170888) b!315449))

(assert (= (and b!315449 res!170884) b!315454))

(assert (= (and b!315454 res!170887) b!315448))

(assert (= (and b!315448 res!170883) b!315443))

(assert (= (and b!315443 res!170889) b!315455))

(assert (= (and b!315455 res!170891) b!315456))

(assert (= (and b!315456 c!49898) b!315444))

(assert (= (and b!315456 (not c!49898)) b!315451))

(assert (= (and b!315444 c!49897) b!315447))

(assert (= (and b!315444 (not c!49897)) b!315453))

(declare-fun m!324673 () Bool)

(assert (=> start!31572 m!324673))

(declare-fun m!324675 () Bool)

(assert (=> start!31572 m!324675))

(declare-fun m!324677 () Bool)

(assert (=> b!315455 m!324677))

(declare-fun m!324679 () Bool)

(assert (=> b!315443 m!324679))

(declare-fun m!324681 () Bool)

(assert (=> b!315453 m!324681))

(assert (=> b!315453 m!324681))

(declare-fun m!324683 () Bool)

(assert (=> b!315453 m!324683))

(declare-fun m!324685 () Bool)

(assert (=> b!315448 m!324685))

(declare-fun m!324687 () Bool)

(assert (=> b!315445 m!324687))

(assert (=> b!315444 m!324677))

(declare-fun m!324689 () Bool)

(assert (=> b!315446 m!324689))

(declare-fun m!324691 () Bool)

(assert (=> b!315450 m!324691))

(declare-fun m!324693 () Bool)

(assert (=> b!315454 m!324693))

(assert (=> b!315454 m!324693))

(declare-fun m!324695 () Bool)

(assert (=> b!315454 m!324695))

(declare-fun m!324697 () Bool)

(assert (=> b!315449 m!324697))

(push 1)

