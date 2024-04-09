; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31578 () Bool)

(assert start!31578)

(declare-fun b!315569 () Bool)

(declare-fun res!170978 () Bool)

(declare-fun e!196409 () Bool)

(assert (=> b!315569 (=> (not res!170978) (not e!196409))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315569 (= res!170978 (validKeyInArray!0 k!2441))))

(declare-fun b!315570 () Bool)

(assert (=> b!315570 false))

(declare-datatypes ((array!16100 0))(
  ( (array!16101 (arr!7618 (Array (_ BitVec 32) (_ BitVec 64))) (size!7970 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16100)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2769 0))(
  ( (MissingZero!2769 (index!13252 (_ BitVec 32))) (Found!2769 (index!13253 (_ BitVec 32))) (Intermediate!2769 (undefined!3581 Bool) (index!13254 (_ BitVec 32)) (x!31466 (_ BitVec 32))) (Undefined!2769) (MissingVacant!2769 (index!13255 (_ BitVec 32))) )
))
(declare-fun lt!154335 () SeekEntryResult!2769)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16100 (_ BitVec 32)) SeekEntryResult!2769)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315570 (= lt!154335 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9715 0))(
  ( (Unit!9716) )
))
(declare-fun e!196408 () Unit!9715)

(declare-fun Unit!9717 () Unit!9715)

(assert (=> b!315570 (= e!196408 Unit!9717)))

(declare-fun res!170975 () Bool)

(assert (=> start!31578 (=> (not res!170975) (not e!196409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31578 (= res!170975 (validMask!0 mask!3709))))

(assert (=> start!31578 e!196409))

(declare-fun array_inv!5572 (array!16100) Bool)

(assert (=> start!31578 (array_inv!5572 a!3293)))

(assert (=> start!31578 true))

(declare-fun b!315571 () Bool)

(declare-fun res!170979 () Bool)

(declare-fun e!196410 () Bool)

(assert (=> b!315571 (=> (not res!170979) (not e!196410))))

(declare-fun lt!154336 () SeekEntryResult!2769)

(assert (=> b!315571 (= res!170979 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154336))))

(declare-fun b!315572 () Bool)

(assert (=> b!315572 (= e!196410 (not true))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!315572 (= index!1781 resIndex!52)))

(declare-fun lt!154337 () Unit!9715)

(declare-fun e!196411 () Unit!9715)

(assert (=> b!315572 (= lt!154337 e!196411)))

(declare-fun c!49916 () Bool)

(assert (=> b!315572 (= c!49916 (not (= resIndex!52 index!1781)))))

(declare-fun b!315573 () Bool)

(declare-fun res!170974 () Bool)

(assert (=> b!315573 (=> (not res!170974) (not e!196409))))

(declare-fun arrayContainsKey!0 (array!16100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315573 (= res!170974 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315574 () Bool)

(declare-fun res!170982 () Bool)

(assert (=> b!315574 (=> (not res!170982) (not e!196409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16100 (_ BitVec 32)) Bool)

(assert (=> b!315574 (= res!170982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315575 () Bool)

(assert (=> b!315575 (= e!196409 e!196410)))

(declare-fun res!170977 () Bool)

(assert (=> b!315575 (=> (not res!170977) (not e!196410))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315575 (= res!170977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154336))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315575 (= lt!154336 (Intermediate!2769 false resIndex!52 resX!52))))

(declare-fun b!315576 () Bool)

(declare-fun Unit!9718 () Unit!9715)

(assert (=> b!315576 (= e!196411 Unit!9718)))

(declare-fun b!315577 () Bool)

(declare-fun res!170980 () Bool)

(assert (=> b!315577 (=> (not res!170980) (not e!196409))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16100 (_ BitVec 32)) SeekEntryResult!2769)

(assert (=> b!315577 (= res!170980 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2769 i!1240)))))

(declare-fun b!315578 () Bool)

(declare-fun res!170973 () Bool)

(assert (=> b!315578 (=> (not res!170973) (not e!196409))))

(assert (=> b!315578 (= res!170973 (and (= (size!7970 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7970 a!3293))))))

(declare-fun b!315579 () Bool)

(declare-fun res!170981 () Bool)

(assert (=> b!315579 (=> (not res!170981) (not e!196410))))

(assert (=> b!315579 (= res!170981 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7618 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315580 () Bool)

(assert (=> b!315580 false))

(declare-fun Unit!9719 () Unit!9715)

(assert (=> b!315580 (= e!196408 Unit!9719)))

(declare-fun b!315581 () Bool)

(assert (=> b!315581 (= e!196411 e!196408)))

(declare-fun c!49915 () Bool)

(assert (=> b!315581 (= c!49915 (or (= (select (arr!7618 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7618 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315582 () Bool)

(declare-fun res!170976 () Bool)

(assert (=> b!315582 (=> (not res!170976) (not e!196410))))

(assert (=> b!315582 (= res!170976 (and (= (select (arr!7618 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7970 a!3293))))))

(assert (= (and start!31578 res!170975) b!315578))

(assert (= (and b!315578 res!170973) b!315569))

(assert (= (and b!315569 res!170978) b!315573))

(assert (= (and b!315573 res!170974) b!315577))

(assert (= (and b!315577 res!170980) b!315574))

(assert (= (and b!315574 res!170982) b!315575))

(assert (= (and b!315575 res!170977) b!315582))

(assert (= (and b!315582 res!170976) b!315571))

(assert (= (and b!315571 res!170979) b!315579))

(assert (= (and b!315579 res!170981) b!315572))

(assert (= (and b!315572 c!49916) b!315581))

(assert (= (and b!315572 (not c!49916)) b!315576))

(assert (= (and b!315581 c!49915) b!315580))

(assert (= (and b!315581 (not c!49915)) b!315570))

(declare-fun m!324751 () Bool)

(assert (=> b!315570 m!324751))

(assert (=> b!315570 m!324751))

(declare-fun m!324753 () Bool)

(assert (=> b!315570 m!324753))

(declare-fun m!324755 () Bool)

(assert (=> start!31578 m!324755))

(declare-fun m!324757 () Bool)

(assert (=> start!31578 m!324757))

(declare-fun m!324759 () Bool)

(assert (=> b!315573 m!324759))

(declare-fun m!324761 () Bool)

(assert (=> b!315569 m!324761))

(declare-fun m!324763 () Bool)

(assert (=> b!315571 m!324763))

(declare-fun m!324765 () Bool)

(assert (=> b!315579 m!324765))

(declare-fun m!324767 () Bool)

(assert (=> b!315582 m!324767))

(declare-fun m!324769 () Bool)

(assert (=> b!315574 m!324769))

(declare-fun m!324771 () Bool)

(assert (=> b!315577 m!324771))

(declare-fun m!324773 () Bool)

(assert (=> b!315575 m!324773))

(assert (=> b!315575 m!324773))

(declare-fun m!324775 () Bool)

(assert (=> b!315575 m!324775))

(assert (=> b!315581 m!324765))

(push 1)

