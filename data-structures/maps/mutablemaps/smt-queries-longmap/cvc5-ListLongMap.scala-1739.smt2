; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31944 () Bool)

(assert start!31944)

(declare-fun b!319026 () Bool)

(declare-fun res!173575 () Bool)

(declare-fun e!198177 () Bool)

(assert (=> b!319026 (=> (not res!173575) (not e!198177))))

(declare-datatypes ((array!16262 0))(
  ( (array!16263 (arr!7693 (Array (_ BitVec 32) (_ BitVec 64))) (size!8045 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16262)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16262 (_ BitVec 32)) Bool)

(assert (=> b!319026 (= res!173575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!319027 () Bool)

(declare-fun res!173568 () Bool)

(assert (=> b!319027 (=> (not res!173568) (not e!198177))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2844 0))(
  ( (MissingZero!2844 (index!13552 (_ BitVec 32))) (Found!2844 (index!13553 (_ BitVec 32))) (Intermediate!2844 (undefined!3656 Bool) (index!13554 (_ BitVec 32)) (x!31777 (_ BitVec 32))) (Undefined!2844) (MissingVacant!2844 (index!13555 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16262 (_ BitVec 32)) SeekEntryResult!2844)

(assert (=> b!319027 (= res!173568 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2844 i!1240)))))

(declare-fun b!319028 () Bool)

(declare-fun res!173573 () Bool)

(assert (=> b!319028 (=> (not res!173573) (not e!198177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319028 (= res!173573 (validKeyInArray!0 k!2441))))

(declare-fun res!173574 () Bool)

(assert (=> start!31944 (=> (not res!173574) (not e!198177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31944 (= res!173574 (validMask!0 mask!3709))))

(assert (=> start!31944 e!198177))

(declare-fun array_inv!5647 (array!16262) Bool)

(assert (=> start!31944 (array_inv!5647 a!3293)))

(assert (=> start!31944 true))

(declare-fun b!319029 () Bool)

(declare-fun e!198181 () Bool)

(declare-fun e!198178 () Bool)

(assert (=> b!319029 (= e!198181 (not e!198178))))

(declare-fun res!173571 () Bool)

(assert (=> b!319029 (=> res!173571 e!198178)))

(declare-fun lt!155692 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!155699 () SeekEntryResult!2844)

(declare-fun lt!155694 () SeekEntryResult!2844)

(assert (=> b!319029 (= res!173571 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155692 #b00000000000000000000000000000000) (bvsge lt!155692 (size!8045 a!3293)) (not (= lt!155694 lt!155699))))))

(declare-fun lt!155693 () SeekEntryResult!2844)

(declare-fun lt!155696 () SeekEntryResult!2844)

(assert (=> b!319029 (= lt!155693 lt!155696)))

(declare-fun lt!155697 () array!16262)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16262 (_ BitVec 32)) SeekEntryResult!2844)

(assert (=> b!319029 (= lt!155696 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155692 k!2441 lt!155697 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!319029 (= lt!155693 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155697 mask!3709))))

(assert (=> b!319029 (= lt!155697 (array!16263 (store (arr!7693 a!3293) i!1240 k!2441) (size!8045 a!3293)))))

(declare-fun lt!155698 () SeekEntryResult!2844)

(assert (=> b!319029 (= lt!155698 lt!155694)))

(assert (=> b!319029 (= lt!155694 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155692 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319029 (= lt!155692 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!319030 () Bool)

(declare-fun res!173577 () Bool)

(declare-fun e!198180 () Bool)

(assert (=> b!319030 (=> (not res!173577) (not e!198180))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!319030 (= res!173577 (and (= (select (arr!7693 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8045 a!3293))))))

(declare-fun b!319031 () Bool)

(assert (=> b!319031 (= e!198180 e!198181)))

(declare-fun res!173572 () Bool)

(assert (=> b!319031 (=> (not res!173572) (not e!198181))))

(assert (=> b!319031 (= res!173572 (and (= lt!155698 lt!155699) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7693 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!319031 (= lt!155698 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!319032 () Bool)

(assert (=> b!319032 (= e!198178 (= lt!155693 lt!155698))))

(assert (=> b!319032 (= lt!155696 lt!155694)))

(declare-datatypes ((Unit!9799 0))(
  ( (Unit!9800) )
))
(declare-fun lt!155695 () Unit!9799)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16262 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9799)

(assert (=> b!319032 (= lt!155695 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155692 resIndex!52 resX!52 mask!3709))))

(declare-fun b!319033 () Bool)

(declare-fun res!173576 () Bool)

(assert (=> b!319033 (=> (not res!173576) (not e!198177))))

(declare-fun arrayContainsKey!0 (array!16262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319033 (= res!173576 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!319034 () Bool)

(declare-fun res!173569 () Bool)

(assert (=> b!319034 (=> (not res!173569) (not e!198177))))

(assert (=> b!319034 (= res!173569 (and (= (size!8045 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8045 a!3293))))))

(declare-fun b!319035 () Bool)

(assert (=> b!319035 (= e!198177 e!198180)))

(declare-fun res!173570 () Bool)

(assert (=> b!319035 (=> (not res!173570) (not e!198180))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319035 (= res!173570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155699))))

(assert (=> b!319035 (= lt!155699 (Intermediate!2844 false resIndex!52 resX!52))))

(assert (= (and start!31944 res!173574) b!319034))

(assert (= (and b!319034 res!173569) b!319028))

(assert (= (and b!319028 res!173573) b!319033))

(assert (= (and b!319033 res!173576) b!319027))

(assert (= (and b!319027 res!173568) b!319026))

(assert (= (and b!319026 res!173575) b!319035))

(assert (= (and b!319035 res!173570) b!319030))

(assert (= (and b!319030 res!173577) b!319031))

(assert (= (and b!319031 res!173572) b!319029))

(assert (= (and b!319029 (not res!173571)) b!319032))

(declare-fun m!327685 () Bool)

(assert (=> b!319033 m!327685))

(declare-fun m!327687 () Bool)

(assert (=> b!319026 m!327687))

(declare-fun m!327689 () Bool)

(assert (=> b!319027 m!327689))

(declare-fun m!327691 () Bool)

(assert (=> b!319029 m!327691))

(declare-fun m!327693 () Bool)

(assert (=> b!319029 m!327693))

(declare-fun m!327695 () Bool)

(assert (=> b!319029 m!327695))

(declare-fun m!327697 () Bool)

(assert (=> b!319029 m!327697))

(declare-fun m!327699 () Bool)

(assert (=> b!319029 m!327699))

(declare-fun m!327701 () Bool)

(assert (=> b!319035 m!327701))

(assert (=> b!319035 m!327701))

(declare-fun m!327703 () Bool)

(assert (=> b!319035 m!327703))

(declare-fun m!327705 () Bool)

(assert (=> b!319028 m!327705))

(declare-fun m!327707 () Bool)

(assert (=> start!31944 m!327707))

(declare-fun m!327709 () Bool)

(assert (=> start!31944 m!327709))

(declare-fun m!327711 () Bool)

(assert (=> b!319031 m!327711))

(declare-fun m!327713 () Bool)

(assert (=> b!319031 m!327713))

(declare-fun m!327715 () Bool)

(assert (=> b!319030 m!327715))

(declare-fun m!327717 () Bool)

(assert (=> b!319032 m!327717))

(push 1)

