; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48412 () Bool)

(assert start!48412)

(declare-fun b!531589 () Bool)

(declare-fun res!327234 () Bool)

(declare-fun e!309617 () Bool)

(assert (=> b!531589 (=> (not res!327234) (not e!309617))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33676 0))(
  ( (array!33677 (arr!16176 (Array (_ BitVec 32) (_ BitVec 64))) (size!16540 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33676)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531589 (= res!327234 (and (= (size!16540 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16540 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16540 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531590 () Bool)

(declare-fun res!327229 () Bool)

(declare-fun e!309619 () Bool)

(assert (=> b!531590 (=> (not res!327229) (not e!309619))))

(declare-datatypes ((List!10348 0))(
  ( (Nil!10345) (Cons!10344 (h!11284 (_ BitVec 64)) (t!16584 List!10348)) )
))
(declare-fun arrayNoDuplicates!0 (array!33676 (_ BitVec 32) List!10348) Bool)

(assert (=> b!531590 (= res!327229 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10345))))

(declare-fun b!531591 () Bool)

(declare-fun res!327235 () Bool)

(assert (=> b!531591 (=> (not res!327235) (not e!309619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33676 (_ BitVec 32)) Bool)

(assert (=> b!531591 (= res!327235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531592 () Bool)

(declare-fun res!327231 () Bool)

(assert (=> b!531592 (=> (not res!327231) (not e!309617))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531592 (= res!327231 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!327236 () Bool)

(assert (=> start!48412 (=> (not res!327236) (not e!309617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48412 (= res!327236 (validMask!0 mask!3216))))

(assert (=> start!48412 e!309617))

(assert (=> start!48412 true))

(declare-fun array_inv!11950 (array!33676) Bool)

(assert (=> start!48412 (array_inv!11950 a!3154)))

(declare-fun b!531593 () Bool)

(assert (=> b!531593 (= e!309617 e!309619)))

(declare-fun res!327232 () Bool)

(assert (=> b!531593 (=> (not res!327232) (not e!309619))))

(declare-datatypes ((SeekEntryResult!4641 0))(
  ( (MissingZero!4641 (index!20788 (_ BitVec 32))) (Found!4641 (index!20789 (_ BitVec 32))) (Intermediate!4641 (undefined!5453 Bool) (index!20790 (_ BitVec 32)) (x!49794 (_ BitVec 32))) (Undefined!4641) (MissingVacant!4641 (index!20791 (_ BitVec 32))) )
))
(declare-fun lt!245039 () SeekEntryResult!4641)

(assert (=> b!531593 (= res!327232 (or (= lt!245039 (MissingZero!4641 i!1153)) (= lt!245039 (MissingVacant!4641 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33676 (_ BitVec 32)) SeekEntryResult!4641)

(assert (=> b!531593 (= lt!245039 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun b!531594 () Bool)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531594 (= e!309619 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16540 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16540 a!3154)) (= (select (arr!16176 a!3154) resIndex!32) (select (arr!16176 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!531595 () Bool)

(declare-fun res!327233 () Bool)

(assert (=> b!531595 (=> (not res!327233) (not e!309617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531595 (= res!327233 (validKeyInArray!0 (select (arr!16176 a!3154) j!147)))))

(declare-fun b!531596 () Bool)

(declare-fun res!327230 () Bool)

(assert (=> b!531596 (=> (not res!327230) (not e!309617))))

(assert (=> b!531596 (= res!327230 (validKeyInArray!0 k!1998))))

(assert (= (and start!48412 res!327236) b!531589))

(assert (= (and b!531589 res!327234) b!531595))

(assert (= (and b!531595 res!327233) b!531596))

(assert (= (and b!531596 res!327230) b!531592))

(assert (= (and b!531592 res!327231) b!531593))

(assert (= (and b!531593 res!327232) b!531591))

(assert (= (and b!531591 res!327235) b!531590))

(assert (= (and b!531590 res!327229) b!531594))

(declare-fun m!511981 () Bool)

(assert (=> b!531590 m!511981))

(declare-fun m!511983 () Bool)

(assert (=> b!531595 m!511983))

(assert (=> b!531595 m!511983))

(declare-fun m!511985 () Bool)

(assert (=> b!531595 m!511985))

(declare-fun m!511987 () Bool)

(assert (=> b!531591 m!511987))

(declare-fun m!511989 () Bool)

(assert (=> b!531593 m!511989))

(declare-fun m!511991 () Bool)

(assert (=> b!531592 m!511991))

(declare-fun m!511993 () Bool)

(assert (=> b!531594 m!511993))

(assert (=> b!531594 m!511983))

(declare-fun m!511995 () Bool)

(assert (=> b!531596 m!511995))

(declare-fun m!511997 () Bool)

(assert (=> start!48412 m!511997))

(declare-fun m!511999 () Bool)

(assert (=> start!48412 m!511999))

(push 1)

(assert (not start!48412))

(assert (not b!531593))

(assert (not b!531592))

(assert (not b!531595))

(assert (not b!531591))

(assert (not b!531596))

(assert (not b!531590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

