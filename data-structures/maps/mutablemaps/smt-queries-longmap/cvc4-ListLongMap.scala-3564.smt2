; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49028 () Bool)

(assert start!49028)

(declare-fun b!539861 () Bool)

(declare-fun res!335066 () Bool)

(declare-fun e!312845 () Bool)

(assert (=> b!539861 (=> (not res!335066) (not e!312845))))

(declare-datatypes ((array!34145 0))(
  ( (array!34146 (arr!16406 (Array (_ BitVec 32) (_ BitVec 64))) (size!16770 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34145)

(declare-datatypes ((List!10578 0))(
  ( (Nil!10575) (Cons!10574 (h!11520 (_ BitVec 64)) (t!16814 List!10578)) )
))
(declare-fun arrayNoDuplicates!0 (array!34145 (_ BitVec 32) List!10578) Bool)

(assert (=> b!539861 (= res!335066 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10575))))

(declare-fun b!539862 () Bool)

(declare-fun res!335061 () Bool)

(assert (=> b!539862 (=> (not res!335061) (not e!312845))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34145 (_ BitVec 32)) Bool)

(assert (=> b!539862 (= res!335061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!335059 () Bool)

(declare-fun e!312846 () Bool)

(assert (=> start!49028 (=> (not res!335059) (not e!312846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49028 (= res!335059 (validMask!0 mask!3216))))

(assert (=> start!49028 e!312846))

(assert (=> start!49028 true))

(declare-fun array_inv!12180 (array!34145) Bool)

(assert (=> start!49028 (array_inv!12180 a!3154)))

(declare-fun b!539863 () Bool)

(declare-fun res!335062 () Bool)

(assert (=> b!539863 (=> (not res!335062) (not e!312845))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539863 (= res!335062 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16770 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16770 a!3154)) (= (select (arr!16406 a!3154) resIndex!32) (select (arr!16406 a!3154) j!147))))))

(declare-fun b!539864 () Bool)

(declare-fun res!335063 () Bool)

(assert (=> b!539864 (=> (not res!335063) (not e!312846))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539864 (= res!335063 (and (= (size!16770 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16770 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16770 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539865 () Bool)

(declare-fun res!335065 () Bool)

(assert (=> b!539865 (=> (not res!335065) (not e!312846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539865 (= res!335065 (validKeyInArray!0 (select (arr!16406 a!3154) j!147)))))

(declare-fun b!539866 () Bool)

(assert (=> b!539866 (= e!312845 false)))

(declare-datatypes ((SeekEntryResult!4871 0))(
  ( (MissingZero!4871 (index!21708 (_ BitVec 32))) (Found!4871 (index!21709 (_ BitVec 32))) (Intermediate!4871 (undefined!5683 Bool) (index!21710 (_ BitVec 32)) (x!50647 (_ BitVec 32))) (Undefined!4871) (MissingVacant!4871 (index!21711 (_ BitVec 32))) )
))
(declare-fun lt!247264 () SeekEntryResult!4871)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34145 (_ BitVec 32)) SeekEntryResult!4871)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539866 (= lt!247264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16406 a!3154) j!147) mask!3216) (select (arr!16406 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539867 () Bool)

(declare-fun res!335064 () Bool)

(assert (=> b!539867 (=> (not res!335064) (not e!312846))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539867 (= res!335064 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539868 () Bool)

(declare-fun res!335058 () Bool)

(assert (=> b!539868 (=> (not res!335058) (not e!312845))))

(assert (=> b!539868 (= res!335058 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16406 a!3154) j!147) a!3154 mask!3216) (Intermediate!4871 false resIndex!32 resX!32)))))

(declare-fun b!539869 () Bool)

(assert (=> b!539869 (= e!312846 e!312845)))

(declare-fun res!335057 () Bool)

(assert (=> b!539869 (=> (not res!335057) (not e!312845))))

(declare-fun lt!247265 () SeekEntryResult!4871)

(assert (=> b!539869 (= res!335057 (or (= lt!247265 (MissingZero!4871 i!1153)) (= lt!247265 (MissingVacant!4871 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34145 (_ BitVec 32)) SeekEntryResult!4871)

(assert (=> b!539869 (= lt!247265 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539870 () Bool)

(declare-fun res!335060 () Bool)

(assert (=> b!539870 (=> (not res!335060) (not e!312846))))

(assert (=> b!539870 (= res!335060 (validKeyInArray!0 k!1998))))

(assert (= (and start!49028 res!335059) b!539864))

(assert (= (and b!539864 res!335063) b!539865))

(assert (= (and b!539865 res!335065) b!539870))

(assert (= (and b!539870 res!335060) b!539867))

(assert (= (and b!539867 res!335064) b!539869))

(assert (= (and b!539869 res!335057) b!539862))

(assert (= (and b!539862 res!335061) b!539861))

(assert (= (and b!539861 res!335066) b!539863))

(assert (= (and b!539863 res!335062) b!539868))

(assert (= (and b!539868 res!335058) b!539866))

(declare-fun m!518747 () Bool)

(assert (=> b!539866 m!518747))

(assert (=> b!539866 m!518747))

(declare-fun m!518749 () Bool)

(assert (=> b!539866 m!518749))

(assert (=> b!539866 m!518749))

(assert (=> b!539866 m!518747))

(declare-fun m!518751 () Bool)

(assert (=> b!539866 m!518751))

(declare-fun m!518753 () Bool)

(assert (=> b!539870 m!518753))

(declare-fun m!518755 () Bool)

(assert (=> start!49028 m!518755))

(declare-fun m!518757 () Bool)

(assert (=> start!49028 m!518757))

(assert (=> b!539865 m!518747))

(assert (=> b!539865 m!518747))

(declare-fun m!518759 () Bool)

(assert (=> b!539865 m!518759))

(declare-fun m!518761 () Bool)

(assert (=> b!539867 m!518761))

(declare-fun m!518763 () Bool)

(assert (=> b!539861 m!518763))

(declare-fun m!518765 () Bool)

(assert (=> b!539863 m!518765))

(assert (=> b!539863 m!518747))

(declare-fun m!518767 () Bool)

(assert (=> b!539862 m!518767))

(declare-fun m!518769 () Bool)

(assert (=> b!539869 m!518769))

(assert (=> b!539868 m!518747))

(assert (=> b!539868 m!518747))

(declare-fun m!518771 () Bool)

(assert (=> b!539868 m!518771))

(push 1)

(assert (not b!539866))

(assert (not b!539867))

(assert (not b!539869))

(assert (not b!539868))

(assert (not b!539865))

(assert (not b!539870))

(assert (not b!539861))

(assert (not b!539862))

