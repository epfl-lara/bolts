; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31584 () Bool)

(assert start!31584)

(declare-fun b!315695 () Bool)

(declare-fun e!196456 () Bool)

(declare-fun e!196453 () Bool)

(assert (=> b!315695 (= e!196456 e!196453)))

(declare-fun res!171071 () Bool)

(assert (=> b!315695 (=> (not res!171071) (not e!196453))))

(declare-datatypes ((array!16106 0))(
  ( (array!16107 (arr!7621 (Array (_ BitVec 32) (_ BitVec 64))) (size!7973 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16106)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2772 0))(
  ( (MissingZero!2772 (index!13264 (_ BitVec 32))) (Found!2772 (index!13265 (_ BitVec 32))) (Intermediate!2772 (undefined!3584 Bool) (index!13266 (_ BitVec 32)) (x!31477 (_ BitVec 32))) (Undefined!2772) (MissingVacant!2772 (index!13267 (_ BitVec 32))) )
))
(declare-fun lt!154362 () SeekEntryResult!2772)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16106 (_ BitVec 32)) SeekEntryResult!2772)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315695 (= res!171071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154362))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315695 (= lt!154362 (Intermediate!2772 false resIndex!52 resX!52))))

(declare-fun res!171063 () Bool)

(assert (=> start!31584 (=> (not res!171063) (not e!196456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31584 (= res!171063 (validMask!0 mask!3709))))

(assert (=> start!31584 e!196456))

(declare-fun array_inv!5575 (array!16106) Bool)

(assert (=> start!31584 (array_inv!5575 a!3293)))

(assert (=> start!31584 true))

(declare-fun b!315696 () Bool)

(declare-fun res!171067 () Bool)

(assert (=> b!315696 (=> (not res!171067) (not e!196456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315696 (= res!171067 (validKeyInArray!0 k!2441))))

(declare-fun b!315697 () Bool)

(declare-fun res!171064 () Bool)

(assert (=> b!315697 (=> (not res!171064) (not e!196456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16106 (_ BitVec 32)) Bool)

(assert (=> b!315697 (= res!171064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315698 () Bool)

(declare-fun res!171066 () Bool)

(assert (=> b!315698 (=> (not res!171066) (not e!196456))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315698 (= res!171066 (and (= (size!7973 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7973 a!3293))))))

(declare-fun b!315699 () Bool)

(declare-fun res!171072 () Bool)

(assert (=> b!315699 (=> (not res!171072) (not e!196453))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315699 (= res!171072 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154362))))

(declare-fun b!315700 () Bool)

(declare-datatypes ((Unit!9730 0))(
  ( (Unit!9731) )
))
(declare-fun e!196455 () Unit!9730)

(declare-fun e!196452 () Unit!9730)

(assert (=> b!315700 (= e!196455 e!196452)))

(declare-fun c!49934 () Bool)

(assert (=> b!315700 (= c!49934 (or (= (select (arr!7621 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7621 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315701 () Bool)

(declare-fun Unit!9732 () Unit!9730)

(assert (=> b!315701 (= e!196455 Unit!9732)))

(declare-fun b!315702 () Bool)

(declare-fun res!171069 () Bool)

(assert (=> b!315702 (=> (not res!171069) (not e!196456))))

(declare-fun arrayContainsKey!0 (array!16106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315702 (= res!171069 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315703 () Bool)

(declare-fun res!171070 () Bool)

(assert (=> b!315703 (=> (not res!171070) (not e!196453))))

(assert (=> b!315703 (= res!171070 (and (= (select (arr!7621 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7973 a!3293))))))

(declare-fun b!315704 () Bool)

(assert (=> b!315704 (= e!196453 (not (= (select (arr!7621 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!315704 (= index!1781 resIndex!52)))

(declare-fun lt!154363 () Unit!9730)

(assert (=> b!315704 (= lt!154363 e!196455)))

(declare-fun c!49933 () Bool)

(assert (=> b!315704 (= c!49933 (not (= resIndex!52 index!1781)))))

(declare-fun b!315705 () Bool)

(declare-fun res!171068 () Bool)

(assert (=> b!315705 (=> (not res!171068) (not e!196453))))

(assert (=> b!315705 (= res!171068 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7621 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!315706 () Bool)

(assert (=> b!315706 false))

(declare-fun Unit!9733 () Unit!9730)

(assert (=> b!315706 (= e!196452 Unit!9733)))

(declare-fun b!315707 () Bool)

(assert (=> b!315707 false))

(declare-fun lt!154364 () SeekEntryResult!2772)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315707 (= lt!154364 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9734 () Unit!9730)

(assert (=> b!315707 (= e!196452 Unit!9734)))

(declare-fun b!315708 () Bool)

(declare-fun res!171065 () Bool)

(assert (=> b!315708 (=> (not res!171065) (not e!196456))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16106 (_ BitVec 32)) SeekEntryResult!2772)

(assert (=> b!315708 (= res!171065 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2772 i!1240)))))

(assert (= (and start!31584 res!171063) b!315698))

(assert (= (and b!315698 res!171066) b!315696))

(assert (= (and b!315696 res!171067) b!315702))

(assert (= (and b!315702 res!171069) b!315708))

(assert (= (and b!315708 res!171065) b!315697))

(assert (= (and b!315697 res!171064) b!315695))

(assert (= (and b!315695 res!171071) b!315703))

(assert (= (and b!315703 res!171070) b!315699))

(assert (= (and b!315699 res!171072) b!315705))

(assert (= (and b!315705 res!171068) b!315704))

(assert (= (and b!315704 c!49933) b!315700))

(assert (= (and b!315704 (not c!49933)) b!315701))

(assert (= (and b!315700 c!49934) b!315706))

(assert (= (and b!315700 (not c!49934)) b!315707))

(declare-fun m!324829 () Bool)

(assert (=> b!315705 m!324829))

(declare-fun m!324831 () Bool)

(assert (=> b!315703 m!324831))

(declare-fun m!324833 () Bool)

(assert (=> b!315695 m!324833))

(assert (=> b!315695 m!324833))

(declare-fun m!324835 () Bool)

(assert (=> b!315695 m!324835))

(declare-fun m!324837 () Bool)

(assert (=> b!315699 m!324837))

(declare-fun m!324839 () Bool)

(assert (=> b!315702 m!324839))

(declare-fun m!324841 () Bool)

(assert (=> b!315696 m!324841))

(declare-fun m!324843 () Bool)

(assert (=> b!315708 m!324843))

(assert (=> b!315700 m!324829))

(assert (=> b!315704 m!324829))

(declare-fun m!324845 () Bool)

(assert (=> b!315707 m!324845))

(assert (=> b!315707 m!324845))

(declare-fun m!324847 () Bool)

(assert (=> b!315707 m!324847))

(declare-fun m!324849 () Bool)

(assert (=> start!31584 m!324849))

(declare-fun m!324851 () Bool)

(assert (=> start!31584 m!324851))

(declare-fun m!324853 () Bool)

(assert (=> b!315697 m!324853))

(push 1)

