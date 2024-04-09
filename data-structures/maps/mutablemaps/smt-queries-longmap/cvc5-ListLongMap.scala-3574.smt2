; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49138 () Bool)

(assert start!49138)

(declare-fun b!540971 () Bool)

(declare-fun res!336015 () Bool)

(declare-fun e!313275 () Bool)

(assert (=> b!540971 (=> (not res!336015) (not e!313275))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540971 (= res!336015 (validKeyInArray!0 k!1998))))

(declare-fun b!540972 () Bool)

(declare-fun res!336014 () Bool)

(declare-fun e!313274 () Bool)

(assert (=> b!540972 (=> (not res!336014) (not e!313274))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34204 0))(
  ( (array!34205 (arr!16434 (Array (_ BitVec 32) (_ BitVec 64))) (size!16798 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34204)

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4899 0))(
  ( (MissingZero!4899 (index!21820 (_ BitVec 32))) (Found!4899 (index!21821 (_ BitVec 32))) (Intermediate!4899 (undefined!5711 Bool) (index!21822 (_ BitVec 32)) (x!50761 (_ BitVec 32))) (Undefined!4899) (MissingVacant!4899 (index!21823 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34204 (_ BitVec 32)) SeekEntryResult!4899)

(assert (=> b!540972 (= res!336014 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16434 a!3154) j!147) a!3154 mask!3216) (Intermediate!4899 false resIndex!32 resX!32)))))

(declare-fun b!540973 () Bool)

(declare-fun res!336009 () Bool)

(assert (=> b!540973 (=> (not res!336009) (not e!313274))))

(declare-datatypes ((List!10606 0))(
  ( (Nil!10603) (Cons!10602 (h!11551 (_ BitVec 64)) (t!16842 List!10606)) )
))
(declare-fun arrayNoDuplicates!0 (array!34204 (_ BitVec 32) List!10606) Bool)

(assert (=> b!540973 (= res!336009 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10603))))

(declare-fun b!540974 () Bool)

(declare-fun res!336013 () Bool)

(assert (=> b!540974 (=> (not res!336013) (not e!313274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34204 (_ BitVec 32)) Bool)

(assert (=> b!540974 (= res!336013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540975 () Bool)

(assert (=> b!540975 (= e!313275 e!313274)))

(declare-fun res!336012 () Bool)

(assert (=> b!540975 (=> (not res!336012) (not e!313274))))

(declare-fun lt!247528 () SeekEntryResult!4899)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540975 (= res!336012 (or (= lt!247528 (MissingZero!4899 i!1153)) (= lt!247528 (MissingVacant!4899 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34204 (_ BitVec 32)) SeekEntryResult!4899)

(assert (=> b!540975 (= lt!247528 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540976 () Bool)

(declare-fun res!336011 () Bool)

(assert (=> b!540976 (=> (not res!336011) (not e!313274))))

(assert (=> b!540976 (= res!336011 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16798 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16798 a!3154)) (= (select (arr!16434 a!3154) resIndex!32) (select (arr!16434 a!3154) j!147))))))

(declare-fun b!540977 () Bool)

(assert (=> b!540977 (= e!313274 false)))

(declare-fun lt!247529 () SeekEntryResult!4899)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540977 (= lt!247529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16434 a!3154) j!147) mask!3216) (select (arr!16434 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540978 () Bool)

(declare-fun res!336010 () Bool)

(assert (=> b!540978 (=> (not res!336010) (not e!313275))))

(assert (=> b!540978 (= res!336010 (and (= (size!16798 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16798 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16798 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540980 () Bool)

(declare-fun res!336008 () Bool)

(assert (=> b!540980 (=> (not res!336008) (not e!313275))))

(declare-fun arrayContainsKey!0 (array!34204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540980 (= res!336008 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!336017 () Bool)

(assert (=> start!49138 (=> (not res!336017) (not e!313275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49138 (= res!336017 (validMask!0 mask!3216))))

(assert (=> start!49138 e!313275))

(assert (=> start!49138 true))

(declare-fun array_inv!12208 (array!34204) Bool)

(assert (=> start!49138 (array_inv!12208 a!3154)))

(declare-fun b!540979 () Bool)

(declare-fun res!336016 () Bool)

(assert (=> b!540979 (=> (not res!336016) (not e!313275))))

(assert (=> b!540979 (= res!336016 (validKeyInArray!0 (select (arr!16434 a!3154) j!147)))))

(assert (= (and start!49138 res!336017) b!540978))

(assert (= (and b!540978 res!336010) b!540979))

(assert (= (and b!540979 res!336016) b!540971))

(assert (= (and b!540971 res!336015) b!540980))

(assert (= (and b!540980 res!336008) b!540975))

(assert (= (and b!540975 res!336012) b!540974))

(assert (= (and b!540974 res!336013) b!540973))

(assert (= (and b!540973 res!336009) b!540976))

(assert (= (and b!540976 res!336011) b!540972))

(assert (= (and b!540972 res!336014) b!540977))

(declare-fun m!519619 () Bool)

(assert (=> b!540973 m!519619))

(declare-fun m!519621 () Bool)

(assert (=> b!540977 m!519621))

(assert (=> b!540977 m!519621))

(declare-fun m!519623 () Bool)

(assert (=> b!540977 m!519623))

(assert (=> b!540977 m!519623))

(assert (=> b!540977 m!519621))

(declare-fun m!519625 () Bool)

(assert (=> b!540977 m!519625))

(declare-fun m!519627 () Bool)

(assert (=> start!49138 m!519627))

(declare-fun m!519629 () Bool)

(assert (=> start!49138 m!519629))

(declare-fun m!519631 () Bool)

(assert (=> b!540971 m!519631))

(assert (=> b!540972 m!519621))

(assert (=> b!540972 m!519621))

(declare-fun m!519633 () Bool)

(assert (=> b!540972 m!519633))

(declare-fun m!519635 () Bool)

(assert (=> b!540974 m!519635))

(assert (=> b!540979 m!519621))

(assert (=> b!540979 m!519621))

(declare-fun m!519637 () Bool)

(assert (=> b!540979 m!519637))

(declare-fun m!519639 () Bool)

(assert (=> b!540976 m!519639))

(assert (=> b!540976 m!519621))

(declare-fun m!519641 () Bool)

(assert (=> b!540975 m!519641))

(declare-fun m!519643 () Bool)

(assert (=> b!540980 m!519643))

(push 1)

