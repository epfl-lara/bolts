; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49326 () Bool)

(assert start!49326)

(declare-fun b!542883 () Bool)

(declare-fun res!337586 () Bool)

(declare-fun e!314071 () Bool)

(assert (=> b!542883 (=> (not res!337586) (not e!314071))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34290 0))(
  ( (array!34291 (arr!16474 (Array (_ BitVec 32) (_ BitVec 64))) (size!16838 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34290)

(assert (=> b!542883 (= res!337586 (and (not (= (select (arr!16474 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16474 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16474 a!3154) index!1177) (select (arr!16474 a!3154) j!147)))))))

(declare-fun res!337589 () Bool)

(declare-fun e!314074 () Bool)

(assert (=> start!49326 (=> (not res!337589) (not e!314074))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49326 (= res!337589 (validMask!0 mask!3216))))

(assert (=> start!49326 e!314074))

(assert (=> start!49326 true))

(declare-fun array_inv!12248 (array!34290) Bool)

(assert (=> start!49326 (array_inv!12248 a!3154)))

(declare-fun b!542884 () Bool)

(declare-fun res!337587 () Bool)

(assert (=> b!542884 (=> (not res!337587) (not e!314074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542884 (= res!337587 (validKeyInArray!0 (select (arr!16474 a!3154) j!147)))))

(declare-fun b!542885 () Bool)

(declare-fun res!337595 () Bool)

(assert (=> b!542885 (=> (not res!337595) (not e!314071))))

(declare-datatypes ((SeekEntryResult!4939 0))(
  ( (MissingZero!4939 (index!21980 (_ BitVec 32))) (Found!4939 (index!21981 (_ BitVec 32))) (Intermediate!4939 (undefined!5751 Bool) (index!21982 (_ BitVec 32)) (x!50917 (_ BitVec 32))) (Undefined!4939) (MissingVacant!4939 (index!21983 (_ BitVec 32))) )
))
(declare-fun lt!248045 () SeekEntryResult!4939)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34290 (_ BitVec 32)) SeekEntryResult!4939)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542885 (= res!337595 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16474 a!3154) j!147) mask!3216) (select (arr!16474 a!3154) j!147) a!3154 mask!3216) lt!248045))))

(declare-fun b!542886 () Bool)

(declare-fun res!337594 () Bool)

(declare-fun e!314073 () Bool)

(assert (=> b!542886 (=> (not res!337594) (not e!314073))))

(declare-datatypes ((List!10646 0))(
  ( (Nil!10643) (Cons!10642 (h!11597 (_ BitVec 64)) (t!16882 List!10646)) )
))
(declare-fun arrayNoDuplicates!0 (array!34290 (_ BitVec 32) List!10646) Bool)

(assert (=> b!542886 (= res!337594 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10643))))

(declare-fun b!542887 () Bool)

(declare-fun res!337585 () Bool)

(assert (=> b!542887 (=> (not res!337585) (not e!314074))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!542887 (= res!337585 (validKeyInArray!0 k0!1998))))

(declare-fun b!542888 () Bool)

(declare-fun res!337592 () Bool)

(assert (=> b!542888 (=> (not res!337592) (not e!314073))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542888 (= res!337592 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16838 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16838 a!3154)) (= (select (arr!16474 a!3154) resIndex!32) (select (arr!16474 a!3154) j!147))))))

(declare-fun b!542889 () Bool)

(declare-fun res!337593 () Bool)

(assert (=> b!542889 (=> (not res!337593) (not e!314074))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542889 (= res!337593 (and (= (size!16838 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16838 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16838 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542890 () Bool)

(assert (=> b!542890 (= e!314071 false)))

(declare-fun lt!248044 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542890 (= lt!248044 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542891 () Bool)

(declare-fun res!337591 () Bool)

(assert (=> b!542891 (=> (not res!337591) (not e!314073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34290 (_ BitVec 32)) Bool)

(assert (=> b!542891 (= res!337591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542892 () Bool)

(declare-fun res!337590 () Bool)

(assert (=> b!542892 (=> (not res!337590) (not e!314074))))

(declare-fun arrayContainsKey!0 (array!34290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542892 (= res!337590 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542893 () Bool)

(assert (=> b!542893 (= e!314073 e!314071)))

(declare-fun res!337588 () Bool)

(assert (=> b!542893 (=> (not res!337588) (not e!314071))))

(assert (=> b!542893 (= res!337588 (= lt!248045 (Intermediate!4939 false resIndex!32 resX!32)))))

(assert (=> b!542893 (= lt!248045 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16474 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542894 () Bool)

(assert (=> b!542894 (= e!314074 e!314073)))

(declare-fun res!337584 () Bool)

(assert (=> b!542894 (=> (not res!337584) (not e!314073))))

(declare-fun lt!248043 () SeekEntryResult!4939)

(assert (=> b!542894 (= res!337584 (or (= lt!248043 (MissingZero!4939 i!1153)) (= lt!248043 (MissingVacant!4939 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34290 (_ BitVec 32)) SeekEntryResult!4939)

(assert (=> b!542894 (= lt!248043 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!49326 res!337589) b!542889))

(assert (= (and b!542889 res!337593) b!542884))

(assert (= (and b!542884 res!337587) b!542887))

(assert (= (and b!542887 res!337585) b!542892))

(assert (= (and b!542892 res!337590) b!542894))

(assert (= (and b!542894 res!337584) b!542891))

(assert (= (and b!542891 res!337591) b!542886))

(assert (= (and b!542886 res!337594) b!542888))

(assert (= (and b!542888 res!337592) b!542893))

(assert (= (and b!542893 res!337588) b!542885))

(assert (= (and b!542885 res!337595) b!542883))

(assert (= (and b!542883 res!337586) b!542890))

(declare-fun m!521071 () Bool)

(assert (=> b!542886 m!521071))

(declare-fun m!521073 () Bool)

(assert (=> b!542884 m!521073))

(assert (=> b!542884 m!521073))

(declare-fun m!521075 () Bool)

(assert (=> b!542884 m!521075))

(assert (=> b!542885 m!521073))

(assert (=> b!542885 m!521073))

(declare-fun m!521077 () Bool)

(assert (=> b!542885 m!521077))

(assert (=> b!542885 m!521077))

(assert (=> b!542885 m!521073))

(declare-fun m!521079 () Bool)

(assert (=> b!542885 m!521079))

(declare-fun m!521081 () Bool)

(assert (=> b!542891 m!521081))

(declare-fun m!521083 () Bool)

(assert (=> b!542888 m!521083))

(assert (=> b!542888 m!521073))

(declare-fun m!521085 () Bool)

(assert (=> b!542883 m!521085))

(assert (=> b!542883 m!521073))

(declare-fun m!521087 () Bool)

(assert (=> start!49326 m!521087))

(declare-fun m!521089 () Bool)

(assert (=> start!49326 m!521089))

(declare-fun m!521091 () Bool)

(assert (=> b!542890 m!521091))

(declare-fun m!521093 () Bool)

(assert (=> b!542892 m!521093))

(assert (=> b!542893 m!521073))

(assert (=> b!542893 m!521073))

(declare-fun m!521095 () Bool)

(assert (=> b!542893 m!521095))

(declare-fun m!521097 () Bool)

(assert (=> b!542887 m!521097))

(declare-fun m!521099 () Bool)

(assert (=> b!542894 m!521099))

(check-sat (not b!542892) (not b!542887) (not b!542886) (not b!542885) (not b!542893) (not start!49326) (not b!542884) (not b!542894) (not b!542891) (not b!542890))
