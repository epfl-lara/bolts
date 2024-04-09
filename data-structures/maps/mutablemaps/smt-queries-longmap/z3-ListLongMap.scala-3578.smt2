; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49218 () Bool)

(assert start!49218)

(declare-fun b!541632 () Bool)

(declare-fun res!336515 () Bool)

(declare-fun e!313568 () Bool)

(assert (=> b!541632 (=> (not res!336515) (not e!313568))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34233 0))(
  ( (array!34234 (arr!16447 (Array (_ BitVec 32) (_ BitVec 64))) (size!16811 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34233)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541632 (= res!336515 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16811 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16811 a!3154)) (= (select (arr!16447 a!3154) resIndex!32) (select (arr!16447 a!3154) j!147))))))

(declare-fun b!541633 () Bool)

(declare-fun res!336514 () Bool)

(declare-fun e!313570 () Bool)

(assert (=> b!541633 (=> (not res!336514) (not e!313570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541633 (= res!336514 (validKeyInArray!0 (select (arr!16447 a!3154) j!147)))))

(declare-fun b!541634 () Bool)

(declare-fun res!336517 () Bool)

(assert (=> b!541634 (=> (not res!336517) (not e!313570))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541634 (= res!336517 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541635 () Bool)

(assert (=> b!541635 (= e!313568 false)))

(declare-datatypes ((SeekEntryResult!4912 0))(
  ( (MissingZero!4912 (index!21872 (_ BitVec 32))) (Found!4912 (index!21873 (_ BitVec 32))) (Intermediate!4912 (undefined!5724 Bool) (index!21874 (_ BitVec 32)) (x!50812 (_ BitVec 32))) (Undefined!4912) (MissingVacant!4912 (index!21875 (_ BitVec 32))) )
))
(declare-fun lt!247703 () SeekEntryResult!4912)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34233 (_ BitVec 32)) SeekEntryResult!4912)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541635 (= lt!247703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16447 a!3154) j!147) mask!3216) (select (arr!16447 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541636 () Bool)

(declare-fun res!336513 () Bool)

(assert (=> b!541636 (=> (not res!336513) (not e!313570))))

(assert (=> b!541636 (= res!336513 (validKeyInArray!0 k0!1998))))

(declare-fun b!541637 () Bool)

(assert (=> b!541637 (= e!313570 e!313568)))

(declare-fun res!336511 () Bool)

(assert (=> b!541637 (=> (not res!336511) (not e!313568))))

(declare-fun lt!247702 () SeekEntryResult!4912)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541637 (= res!336511 (or (= lt!247702 (MissingZero!4912 i!1153)) (= lt!247702 (MissingVacant!4912 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34233 (_ BitVec 32)) SeekEntryResult!4912)

(assert (=> b!541637 (= lt!247702 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!541638 () Bool)

(declare-fun res!336518 () Bool)

(assert (=> b!541638 (=> (not res!336518) (not e!313568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34233 (_ BitVec 32)) Bool)

(assert (=> b!541638 (= res!336518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541639 () Bool)

(declare-fun res!336509 () Bool)

(assert (=> b!541639 (=> (not res!336509) (not e!313568))))

(declare-datatypes ((List!10619 0))(
  ( (Nil!10616) (Cons!10615 (h!11567 (_ BitVec 64)) (t!16855 List!10619)) )
))
(declare-fun arrayNoDuplicates!0 (array!34233 (_ BitVec 32) List!10619) Bool)

(assert (=> b!541639 (= res!336509 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10616))))

(declare-fun b!541640 () Bool)

(declare-fun res!336516 () Bool)

(assert (=> b!541640 (=> (not res!336516) (not e!313570))))

(assert (=> b!541640 (= res!336516 (and (= (size!16811 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16811 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16811 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541631 () Bool)

(declare-fun res!336512 () Bool)

(assert (=> b!541631 (=> (not res!336512) (not e!313568))))

(assert (=> b!541631 (= res!336512 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16447 a!3154) j!147) a!3154 mask!3216) (Intermediate!4912 false resIndex!32 resX!32)))))

(declare-fun res!336510 () Bool)

(assert (=> start!49218 (=> (not res!336510) (not e!313570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49218 (= res!336510 (validMask!0 mask!3216))))

(assert (=> start!49218 e!313570))

(assert (=> start!49218 true))

(declare-fun array_inv!12221 (array!34233) Bool)

(assert (=> start!49218 (array_inv!12221 a!3154)))

(assert (= (and start!49218 res!336510) b!541640))

(assert (= (and b!541640 res!336516) b!541633))

(assert (= (and b!541633 res!336514) b!541636))

(assert (= (and b!541636 res!336513) b!541634))

(assert (= (and b!541634 res!336517) b!541637))

(assert (= (and b!541637 res!336511) b!541638))

(assert (= (and b!541638 res!336518) b!541639))

(assert (= (and b!541639 res!336509) b!541632))

(assert (= (and b!541632 res!336515) b!541631))

(assert (= (and b!541631 res!336512) b!541635))

(declare-fun m!520101 () Bool)

(assert (=> b!541637 m!520101))

(declare-fun m!520103 () Bool)

(assert (=> start!49218 m!520103))

(declare-fun m!520105 () Bool)

(assert (=> start!49218 m!520105))

(declare-fun m!520107 () Bool)

(assert (=> b!541631 m!520107))

(assert (=> b!541631 m!520107))

(declare-fun m!520109 () Bool)

(assert (=> b!541631 m!520109))

(declare-fun m!520111 () Bool)

(assert (=> b!541638 m!520111))

(declare-fun m!520113 () Bool)

(assert (=> b!541634 m!520113))

(assert (=> b!541635 m!520107))

(assert (=> b!541635 m!520107))

(declare-fun m!520115 () Bool)

(assert (=> b!541635 m!520115))

(assert (=> b!541635 m!520115))

(assert (=> b!541635 m!520107))

(declare-fun m!520117 () Bool)

(assert (=> b!541635 m!520117))

(assert (=> b!541633 m!520107))

(assert (=> b!541633 m!520107))

(declare-fun m!520119 () Bool)

(assert (=> b!541633 m!520119))

(declare-fun m!520121 () Bool)

(assert (=> b!541636 m!520121))

(declare-fun m!520123 () Bool)

(assert (=> b!541639 m!520123))

(declare-fun m!520125 () Bool)

(assert (=> b!541632 m!520125))

(assert (=> b!541632 m!520107))

(check-sat (not b!541631) (not b!541636) (not b!541635) (not b!541633) (not b!541634) (not b!541639) (not b!541638) (not b!541637) (not start!49218))
(check-sat)
