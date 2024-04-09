; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30960 () Bool)

(assert start!30960)

(declare-fun b!310674 () Bool)

(declare-fun res!167288 () Bool)

(declare-fun e!193930 () Bool)

(assert (=> b!310674 (=> (not res!167288) (not e!193930))))

(declare-datatypes ((array!15860 0))(
  ( (array!15861 (arr!7510 (Array (_ BitVec 32) (_ BitVec 64))) (size!7862 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15860)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2661 0))(
  ( (MissingZero!2661 (index!12820 (_ BitVec 32))) (Found!2661 (index!12821 (_ BitVec 32))) (Intermediate!2661 (undefined!3473 Bool) (index!12822 (_ BitVec 32)) (x!31013 (_ BitVec 32))) (Undefined!2661) (MissingVacant!2661 (index!12823 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15860 (_ BitVec 32)) SeekEntryResult!2661)

(assert (=> b!310674 (= res!167288 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2661 i!1240)))))

(declare-fun b!310675 () Bool)

(declare-fun e!193928 () Bool)

(assert (=> b!310675 (= e!193928 (not true))))

(declare-fun e!193926 () Bool)

(assert (=> b!310675 e!193926))

(declare-fun res!167289 () Bool)

(assert (=> b!310675 (=> (not res!167289) (not e!193926))))

(declare-fun lt!152093 () (_ BitVec 32))

(declare-fun lt!152091 () SeekEntryResult!2661)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15860 (_ BitVec 32)) SeekEntryResult!2661)

(assert (=> b!310675 (= res!167289 (= lt!152091 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152093 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310675 (= lt!152093 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310676 () Bool)

(declare-fun lt!152092 () array!15860)

(assert (=> b!310676 (= e!193926 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152092 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152093 k!2441 lt!152092 mask!3709)))))

(assert (=> b!310676 (= lt!152092 (array!15861 (store (arr!7510 a!3293) i!1240 k!2441) (size!7862 a!3293)))))

(declare-fun b!310677 () Bool)

(declare-fun res!167292 () Bool)

(assert (=> b!310677 (=> (not res!167292) (not e!193930))))

(assert (=> b!310677 (= res!167292 (and (= (size!7862 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7862 a!3293))))))

(declare-fun res!167287 () Bool)

(assert (=> start!30960 (=> (not res!167287) (not e!193930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30960 (= res!167287 (validMask!0 mask!3709))))

(assert (=> start!30960 e!193930))

(declare-fun array_inv!5464 (array!15860) Bool)

(assert (=> start!30960 (array_inv!5464 a!3293)))

(assert (=> start!30960 true))

(declare-fun b!310678 () Bool)

(declare-fun res!167293 () Bool)

(declare-fun e!193929 () Bool)

(assert (=> b!310678 (=> (not res!167293) (not e!193929))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310678 (= res!167293 (and (= (select (arr!7510 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7862 a!3293))))))

(declare-fun b!310679 () Bool)

(declare-fun res!167295 () Bool)

(assert (=> b!310679 (=> (not res!167295) (not e!193930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15860 (_ BitVec 32)) Bool)

(assert (=> b!310679 (= res!167295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310680 () Bool)

(declare-fun res!167286 () Bool)

(assert (=> b!310680 (=> (not res!167286) (not e!193930))))

(declare-fun arrayContainsKey!0 (array!15860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310680 (= res!167286 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310681 () Bool)

(assert (=> b!310681 (= e!193930 e!193929)))

(declare-fun res!167291 () Bool)

(assert (=> b!310681 (=> (not res!167291) (not e!193929))))

(declare-fun lt!152090 () SeekEntryResult!2661)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310681 (= res!167291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152090))))

(assert (=> b!310681 (= lt!152090 (Intermediate!2661 false resIndex!52 resX!52))))

(declare-fun b!310682 () Bool)

(assert (=> b!310682 (= e!193929 e!193928)))

(declare-fun res!167290 () Bool)

(assert (=> b!310682 (=> (not res!167290) (not e!193928))))

(assert (=> b!310682 (= res!167290 (and (= lt!152091 lt!152090) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7510 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310682 (= lt!152091 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310683 () Bool)

(declare-fun res!167294 () Bool)

(assert (=> b!310683 (=> (not res!167294) (not e!193930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310683 (= res!167294 (validKeyInArray!0 k!2441))))

(assert (= (and start!30960 res!167287) b!310677))

(assert (= (and b!310677 res!167292) b!310683))

(assert (= (and b!310683 res!167294) b!310680))

(assert (= (and b!310680 res!167286) b!310674))

(assert (= (and b!310674 res!167288) b!310679))

(assert (= (and b!310679 res!167295) b!310681))

(assert (= (and b!310681 res!167291) b!310678))

(assert (= (and b!310678 res!167293) b!310682))

(assert (= (and b!310682 res!167290) b!310675))

(assert (= (and b!310675 res!167289) b!310676))

(declare-fun m!320653 () Bool)

(assert (=> b!310678 m!320653))

(declare-fun m!320655 () Bool)

(assert (=> start!30960 m!320655))

(declare-fun m!320657 () Bool)

(assert (=> start!30960 m!320657))

(declare-fun m!320659 () Bool)

(assert (=> b!310674 m!320659))

(declare-fun m!320661 () Bool)

(assert (=> b!310675 m!320661))

(declare-fun m!320663 () Bool)

(assert (=> b!310675 m!320663))

(declare-fun m!320665 () Bool)

(assert (=> b!310681 m!320665))

(assert (=> b!310681 m!320665))

(declare-fun m!320667 () Bool)

(assert (=> b!310681 m!320667))

(declare-fun m!320669 () Bool)

(assert (=> b!310676 m!320669))

(declare-fun m!320671 () Bool)

(assert (=> b!310676 m!320671))

(declare-fun m!320673 () Bool)

(assert (=> b!310676 m!320673))

(declare-fun m!320675 () Bool)

(assert (=> b!310680 m!320675))

(declare-fun m!320677 () Bool)

(assert (=> b!310679 m!320677))

(declare-fun m!320679 () Bool)

(assert (=> b!310683 m!320679))

(declare-fun m!320681 () Bool)

(assert (=> b!310682 m!320681))

(declare-fun m!320683 () Bool)

(assert (=> b!310682 m!320683))

(push 1)

