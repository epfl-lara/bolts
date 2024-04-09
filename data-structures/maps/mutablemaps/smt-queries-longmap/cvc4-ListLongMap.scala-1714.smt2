; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31582 () Bool)

(assert start!31582)

(declare-fun b!315653 () Bool)

(assert (=> b!315653 false))

(declare-datatypes ((Unit!9725 0))(
  ( (Unit!9726) )
))
(declare-fun e!196439 () Unit!9725)

(declare-fun Unit!9727 () Unit!9725)

(assert (=> b!315653 (= e!196439 Unit!9727)))

(declare-fun b!315655 () Bool)

(declare-fun e!196441 () Bool)

(declare-fun e!196437 () Bool)

(assert (=> b!315655 (= e!196441 e!196437)))

(declare-fun res!171039 () Bool)

(assert (=> b!315655 (=> (not res!171039) (not e!196437))))

(declare-datatypes ((array!16104 0))(
  ( (array!16105 (arr!7620 (Array (_ BitVec 32) (_ BitVec 64))) (size!7972 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16104)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2771 0))(
  ( (MissingZero!2771 (index!13260 (_ BitVec 32))) (Found!2771 (index!13261 (_ BitVec 32))) (Intermediate!2771 (undefined!3583 Bool) (index!13262 (_ BitVec 32)) (x!31468 (_ BitVec 32))) (Undefined!2771) (MissingVacant!2771 (index!13263 (_ BitVec 32))) )
))
(declare-fun lt!154353 () SeekEntryResult!2771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16104 (_ BitVec 32)) SeekEntryResult!2771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315655 (= res!171039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154353))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315655 (= lt!154353 (Intermediate!2771 false resIndex!52 resX!52))))

(declare-fun b!315656 () Bool)

(declare-fun res!171041 () Bool)

(assert (=> b!315656 (=> (not res!171041) (not e!196441))))

(declare-fun arrayContainsKey!0 (array!16104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315656 (= res!171041 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315657 () Bool)

(assert (=> b!315657 false))

(declare-fun lt!154355 () SeekEntryResult!2771)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315657 (= lt!154355 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9728 () Unit!9725)

(assert (=> b!315657 (= e!196439 Unit!9728)))

(declare-fun b!315658 () Bool)

(declare-fun res!171033 () Bool)

(assert (=> b!315658 (=> (not res!171033) (not e!196441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16104 (_ BitVec 32)) Bool)

(assert (=> b!315658 (= res!171033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315659 () Bool)

(declare-fun e!196438 () Unit!9725)

(declare-fun Unit!9729 () Unit!9725)

(assert (=> b!315659 (= e!196438 Unit!9729)))

(declare-fun b!315660 () Bool)

(declare-fun res!171034 () Bool)

(assert (=> b!315660 (=> (not res!171034) (not e!196437))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315660 (= res!171034 (and (= (select (arr!7620 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7972 a!3293))))))

(declare-fun b!315661 () Bool)

(declare-fun res!171035 () Bool)

(assert (=> b!315661 (=> (not res!171035) (not e!196441))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16104 (_ BitVec 32)) SeekEntryResult!2771)

(assert (=> b!315661 (= res!171035 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2771 i!1240)))))

(declare-fun b!315662 () Bool)

(declare-fun res!171040 () Bool)

(assert (=> b!315662 (=> (not res!171040) (not e!196437))))

(assert (=> b!315662 (= res!171040 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7620 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315663 () Bool)

(declare-fun res!171042 () Bool)

(assert (=> b!315663 (=> (not res!171042) (not e!196437))))

(assert (=> b!315663 (= res!171042 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154353))))

(declare-fun b!315664 () Bool)

(declare-fun res!171036 () Bool)

(assert (=> b!315664 (=> (not res!171036) (not e!196441))))

(assert (=> b!315664 (= res!171036 (and (= (size!7972 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7972 a!3293))))))

(declare-fun b!315654 () Bool)

(declare-fun res!171038 () Bool)

(assert (=> b!315654 (=> (not res!171038) (not e!196441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315654 (= res!171038 (validKeyInArray!0 k!2441))))

(declare-fun res!171037 () Bool)

(assert (=> start!31582 (=> (not res!171037) (not e!196441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31582 (= res!171037 (validMask!0 mask!3709))))

(assert (=> start!31582 e!196441))

(declare-fun array_inv!5574 (array!16104) Bool)

(assert (=> start!31582 (array_inv!5574 a!3293)))

(assert (=> start!31582 true))

(declare-fun b!315665 () Bool)

(assert (=> b!315665 (= e!196438 e!196439)))

(declare-fun c!49928 () Bool)

(assert (=> b!315665 (= c!49928 (or (= (select (arr!7620 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7620 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315666 () Bool)

(assert (=> b!315666 (= e!196437 (not true))))

(assert (=> b!315666 (= index!1781 resIndex!52)))

(declare-fun lt!154354 () Unit!9725)

(assert (=> b!315666 (= lt!154354 e!196438)))

(declare-fun c!49927 () Bool)

(assert (=> b!315666 (= c!49927 (not (= resIndex!52 index!1781)))))

(assert (= (and start!31582 res!171037) b!315664))

(assert (= (and b!315664 res!171036) b!315654))

(assert (= (and b!315654 res!171038) b!315656))

(assert (= (and b!315656 res!171041) b!315661))

(assert (= (and b!315661 res!171035) b!315658))

(assert (= (and b!315658 res!171033) b!315655))

(assert (= (and b!315655 res!171039) b!315660))

(assert (= (and b!315660 res!171034) b!315663))

(assert (= (and b!315663 res!171042) b!315662))

(assert (= (and b!315662 res!171040) b!315666))

(assert (= (and b!315666 c!49927) b!315665))

(assert (= (and b!315666 (not c!49927)) b!315659))

(assert (= (and b!315665 c!49928) b!315653))

(assert (= (and b!315665 (not c!49928)) b!315657))

(declare-fun m!324803 () Bool)

(assert (=> b!315661 m!324803))

(declare-fun m!324805 () Bool)

(assert (=> start!31582 m!324805))

(declare-fun m!324807 () Bool)

(assert (=> start!31582 m!324807))

(declare-fun m!324809 () Bool)

(assert (=> b!315665 m!324809))

(declare-fun m!324811 () Bool)

(assert (=> b!315658 m!324811))

(declare-fun m!324813 () Bool)

(assert (=> b!315660 m!324813))

(declare-fun m!324815 () Bool)

(assert (=> b!315657 m!324815))

(assert (=> b!315657 m!324815))

(declare-fun m!324817 () Bool)

(assert (=> b!315657 m!324817))

(assert (=> b!315662 m!324809))

(declare-fun m!324819 () Bool)

(assert (=> b!315654 m!324819))

(declare-fun m!324821 () Bool)

(assert (=> b!315655 m!324821))

(assert (=> b!315655 m!324821))

(declare-fun m!324823 () Bool)

(assert (=> b!315655 m!324823))

(declare-fun m!324825 () Bool)

(assert (=> b!315656 m!324825))

(declare-fun m!324827 () Bool)

(assert (=> b!315663 m!324827))

(push 1)

