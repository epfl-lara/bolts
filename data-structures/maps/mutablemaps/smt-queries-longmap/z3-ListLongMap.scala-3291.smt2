; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45702 () Bool)

(assert start!45702)

(declare-fun b!504379 () Bool)

(declare-fun res!305706 () Bool)

(declare-fun e!295324 () Bool)

(assert (=> b!504379 (=> (not res!305706) (not e!295324))))

(declare-datatypes ((array!32418 0))(
  ( (array!32419 (arr!15586 (Array (_ BitVec 32) (_ BitVec 64))) (size!15950 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32418)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32418 (_ BitVec 32)) Bool)

(assert (=> b!504379 (= res!305706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504380 () Bool)

(declare-fun res!305699 () Bool)

(declare-fun e!295322 () Bool)

(assert (=> b!504380 (=> (not res!305699) (not e!295322))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504380 (= res!305699 (validKeyInArray!0 (select (arr!15586 a!3235) j!176)))))

(declare-fun b!504381 () Bool)

(declare-fun e!295317 () Bool)

(declare-fun e!295323 () Bool)

(assert (=> b!504381 (= e!295317 e!295323)))

(declare-fun res!305704 () Bool)

(assert (=> b!504381 (=> res!305704 e!295323)))

(declare-fun lt!229730 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4060 0))(
  ( (MissingZero!4060 (index!18428 (_ BitVec 32))) (Found!4060 (index!18429 (_ BitVec 32))) (Intermediate!4060 (undefined!4872 Bool) (index!18430 (_ BitVec 32)) (x!47472 (_ BitVec 32))) (Undefined!4060) (MissingVacant!4060 (index!18431 (_ BitVec 32))) )
))
(declare-fun lt!229728 () SeekEntryResult!4060)

(assert (=> b!504381 (= res!305704 (or (bvsgt (x!47472 lt!229728) #b01111111111111111111111111111110) (bvslt lt!229730 #b00000000000000000000000000000000) (bvsge lt!229730 (size!15950 a!3235)) (bvslt (index!18430 lt!229728) #b00000000000000000000000000000000) (bvsge (index!18430 lt!229728) (size!15950 a!3235)) (not (= lt!229728 (Intermediate!4060 false (index!18430 lt!229728) (x!47472 lt!229728))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504381 (= (index!18430 lt!229728) i!1204)))

(declare-datatypes ((Unit!15330 0))(
  ( (Unit!15331) )
))
(declare-fun lt!229727 () Unit!15330)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32418 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15330)

(assert (=> b!504381 (= lt!229727 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229730 #b00000000000000000000000000000000 (index!18430 lt!229728) (x!47472 lt!229728) mask!3524))))

(assert (=> b!504381 (and (or (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229729 () Unit!15330)

(declare-fun e!295321 () Unit!15330)

(assert (=> b!504381 (= lt!229729 e!295321)))

(declare-fun c!59621 () Bool)

(assert (=> b!504381 (= c!59621 (= (select (arr!15586 a!3235) (index!18430 lt!229728)) (select (arr!15586 a!3235) j!176)))))

(assert (=> b!504381 (and (bvslt (x!47472 lt!229728) #b01111111111111111111111111111110) (or (= (select (arr!15586 a!3235) (index!18430 lt!229728)) (select (arr!15586 a!3235) j!176)) (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15586 a!3235) (index!18430 lt!229728)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504382 () Bool)

(declare-fun res!305701 () Bool)

(assert (=> b!504382 (=> (not res!305701) (not e!295324))))

(declare-datatypes ((List!9797 0))(
  ( (Nil!9794) (Cons!9793 (h!10670 (_ BitVec 64)) (t!16033 List!9797)) )
))
(declare-fun arrayNoDuplicates!0 (array!32418 (_ BitVec 32) List!9797) Bool)

(assert (=> b!504382 (= res!305701 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9794))))

(declare-fun b!504383 () Bool)

(declare-fun res!305705 () Bool)

(assert (=> b!504383 (=> (not res!305705) (not e!295322))))

(declare-fun arrayContainsKey!0 (array!32418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504383 (= res!305705 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504384 () Bool)

(declare-fun res!305696 () Bool)

(assert (=> b!504384 (=> (not res!305696) (not e!295322))))

(assert (=> b!504384 (= res!305696 (validKeyInArray!0 k0!2280))))

(declare-fun res!305702 () Bool)

(assert (=> start!45702 (=> (not res!305702) (not e!295322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45702 (= res!305702 (validMask!0 mask!3524))))

(assert (=> start!45702 e!295322))

(assert (=> start!45702 true))

(declare-fun array_inv!11360 (array!32418) Bool)

(assert (=> start!45702 (array_inv!11360 a!3235)))

(declare-fun b!504385 () Bool)

(declare-fun res!305697 () Bool)

(assert (=> b!504385 (=> res!305697 e!295317)))

(get-info :version)

(assert (=> b!504385 (= res!305697 (or (undefined!4872 lt!229728) (not ((_ is Intermediate!4060) lt!229728))))))

(declare-fun b!504386 () Bool)

(declare-fun e!295316 () Bool)

(assert (=> b!504386 (= e!295316 false)))

(declare-fun b!504387 () Bool)

(declare-fun res!305695 () Bool)

(assert (=> b!504387 (=> res!305695 e!295323)))

(declare-fun e!295320 () Bool)

(assert (=> b!504387 (= res!305695 e!295320)))

(declare-fun res!305708 () Bool)

(assert (=> b!504387 (=> (not res!305708) (not e!295320))))

(assert (=> b!504387 (= res!305708 (bvsgt #b00000000000000000000000000000000 (x!47472 lt!229728)))))

(declare-fun b!504388 () Bool)

(assert (=> b!504388 (= e!295323 true)))

(declare-fun lt!229726 () array!32418)

(declare-fun lt!229722 () (_ BitVec 64))

(declare-fun lt!229725 () SeekEntryResult!4060)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32418 (_ BitVec 32)) SeekEntryResult!4060)

(assert (=> b!504388 (= lt!229725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229730 lt!229722 lt!229726 mask!3524))))

(declare-fun b!504389 () Bool)

(assert (=> b!504389 (= e!295322 e!295324)))

(declare-fun res!305700 () Bool)

(assert (=> b!504389 (=> (not res!305700) (not e!295324))))

(declare-fun lt!229720 () SeekEntryResult!4060)

(assert (=> b!504389 (= res!305700 (or (= lt!229720 (MissingZero!4060 i!1204)) (= lt!229720 (MissingVacant!4060 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32418 (_ BitVec 32)) SeekEntryResult!4060)

(assert (=> b!504389 (= lt!229720 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504390 () Bool)

(assert (=> b!504390 (= e!295324 (not e!295317))))

(declare-fun res!305698 () Bool)

(assert (=> b!504390 (=> res!305698 e!295317)))

(declare-fun lt!229724 () (_ BitVec 32))

(assert (=> b!504390 (= res!305698 (= lt!229728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229724 lt!229722 lt!229726 mask!3524)))))

(assert (=> b!504390 (= lt!229728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229730 (select (arr!15586 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504390 (= lt!229724 (toIndex!0 lt!229722 mask!3524))))

(assert (=> b!504390 (= lt!229722 (select (store (arr!15586 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504390 (= lt!229730 (toIndex!0 (select (arr!15586 a!3235) j!176) mask!3524))))

(assert (=> b!504390 (= lt!229726 (array!32419 (store (arr!15586 a!3235) i!1204 k0!2280) (size!15950 a!3235)))))

(declare-fun e!295319 () Bool)

(assert (=> b!504390 e!295319))

(declare-fun res!305707 () Bool)

(assert (=> b!504390 (=> (not res!305707) (not e!295319))))

(assert (=> b!504390 (= res!305707 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229721 () Unit!15330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15330)

(assert (=> b!504390 (= lt!229721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504391 () Bool)

(declare-fun res!305694 () Bool)

(assert (=> b!504391 (=> (not res!305694) (not e!295322))))

(assert (=> b!504391 (= res!305694 (and (= (size!15950 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15950 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15950 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504392 () Bool)

(assert (=> b!504392 (= e!295319 (= (seekEntryOrOpen!0 (select (arr!15586 a!3235) j!176) a!3235 mask!3524) (Found!4060 j!176)))))

(declare-fun b!504393 () Bool)

(declare-fun Unit!15332 () Unit!15330)

(assert (=> b!504393 (= e!295321 Unit!15332)))

(declare-fun b!504394 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32418 (_ BitVec 32)) SeekEntryResult!4060)

(assert (=> b!504394 (= e!295320 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229730 (index!18430 lt!229728) (select (arr!15586 a!3235) j!176) a!3235 mask!3524) (Found!4060 j!176))))))

(declare-fun b!504395 () Bool)

(declare-fun Unit!15333 () Unit!15330)

(assert (=> b!504395 (= e!295321 Unit!15333)))

(declare-fun lt!229723 () Unit!15330)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32418 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15330)

(assert (=> b!504395 (= lt!229723 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229730 #b00000000000000000000000000000000 (index!18430 lt!229728) (x!47472 lt!229728) mask!3524))))

(declare-fun res!305703 () Bool)

(assert (=> b!504395 (= res!305703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229730 lt!229722 lt!229726 mask!3524) (Intermediate!4060 false (index!18430 lt!229728) (x!47472 lt!229728))))))

(assert (=> b!504395 (=> (not res!305703) (not e!295316))))

(assert (=> b!504395 e!295316))

(assert (= (and start!45702 res!305702) b!504391))

(assert (= (and b!504391 res!305694) b!504380))

(assert (= (and b!504380 res!305699) b!504384))

(assert (= (and b!504384 res!305696) b!504383))

(assert (= (and b!504383 res!305705) b!504389))

(assert (= (and b!504389 res!305700) b!504379))

(assert (= (and b!504379 res!305706) b!504382))

(assert (= (and b!504382 res!305701) b!504390))

(assert (= (and b!504390 res!305707) b!504392))

(assert (= (and b!504390 (not res!305698)) b!504385))

(assert (= (and b!504385 (not res!305697)) b!504381))

(assert (= (and b!504381 c!59621) b!504395))

(assert (= (and b!504381 (not c!59621)) b!504393))

(assert (= (and b!504395 res!305703) b!504386))

(assert (= (and b!504381 (not res!305704)) b!504387))

(assert (= (and b!504387 res!305708) b!504394))

(assert (= (and b!504387 (not res!305695)) b!504388))

(declare-fun m!485141 () Bool)

(assert (=> b!504379 m!485141))

(declare-fun m!485143 () Bool)

(assert (=> b!504381 m!485143))

(declare-fun m!485145 () Bool)

(assert (=> b!504381 m!485145))

(declare-fun m!485147 () Bool)

(assert (=> b!504381 m!485147))

(declare-fun m!485149 () Bool)

(assert (=> b!504388 m!485149))

(declare-fun m!485151 () Bool)

(assert (=> start!45702 m!485151))

(declare-fun m!485153 () Bool)

(assert (=> start!45702 m!485153))

(assert (=> b!504394 m!485147))

(assert (=> b!504394 m!485147))

(declare-fun m!485155 () Bool)

(assert (=> b!504394 m!485155))

(assert (=> b!504392 m!485147))

(assert (=> b!504392 m!485147))

(declare-fun m!485157 () Bool)

(assert (=> b!504392 m!485157))

(declare-fun m!485159 () Bool)

(assert (=> b!504382 m!485159))

(assert (=> b!504380 m!485147))

(assert (=> b!504380 m!485147))

(declare-fun m!485161 () Bool)

(assert (=> b!504380 m!485161))

(declare-fun m!485163 () Bool)

(assert (=> b!504389 m!485163))

(declare-fun m!485165 () Bool)

(assert (=> b!504390 m!485165))

(declare-fun m!485167 () Bool)

(assert (=> b!504390 m!485167))

(declare-fun m!485169 () Bool)

(assert (=> b!504390 m!485169))

(declare-fun m!485171 () Bool)

(assert (=> b!504390 m!485171))

(assert (=> b!504390 m!485147))

(declare-fun m!485173 () Bool)

(assert (=> b!504390 m!485173))

(assert (=> b!504390 m!485147))

(declare-fun m!485175 () Bool)

(assert (=> b!504390 m!485175))

(assert (=> b!504390 m!485147))

(declare-fun m!485177 () Bool)

(assert (=> b!504390 m!485177))

(declare-fun m!485179 () Bool)

(assert (=> b!504390 m!485179))

(declare-fun m!485181 () Bool)

(assert (=> b!504395 m!485181))

(assert (=> b!504395 m!485149))

(declare-fun m!485183 () Bool)

(assert (=> b!504383 m!485183))

(declare-fun m!485185 () Bool)

(assert (=> b!504384 m!485185))

(check-sat (not b!504382) (not b!504388) (not b!504379) (not start!45702) (not b!504394) (not b!504395) (not b!504383) (not b!504390) (not b!504384) (not b!504381) (not b!504389) (not b!504392) (not b!504380))
(check-sat)
