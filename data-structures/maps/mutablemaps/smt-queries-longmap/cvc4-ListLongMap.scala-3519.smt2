; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48704 () Bool)

(assert start!48704)

(declare-fun b!534830 () Bool)

(declare-fun res!330194 () Bool)

(declare-fun e!310787 () Bool)

(assert (=> b!534830 (=> (not res!330194) (not e!310787))))

(declare-datatypes ((array!33872 0))(
  ( (array!33873 (arr!16271 (Array (_ BitVec 32) (_ BitVec 64))) (size!16635 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33872)

(declare-datatypes ((List!10443 0))(
  ( (Nil!10440) (Cons!10439 (h!11382 (_ BitVec 64)) (t!16679 List!10443)) )
))
(declare-fun arrayNoDuplicates!0 (array!33872 (_ BitVec 32) List!10443) Bool)

(assert (=> b!534830 (= res!330194 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10440))))

(declare-fun b!534831 () Bool)

(declare-fun res!330189 () Bool)

(assert (=> b!534831 (=> (not res!330189) (not e!310787))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4736 0))(
  ( (MissingZero!4736 (index!21168 (_ BitVec 32))) (Found!4736 (index!21169 (_ BitVec 32))) (Intermediate!4736 (undefined!5548 Bool) (index!21170 (_ BitVec 32)) (x!50146 (_ BitVec 32))) (Undefined!4736) (MissingVacant!4736 (index!21171 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33872 (_ BitVec 32)) SeekEntryResult!4736)

(assert (=> b!534831 (= res!330189 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16271 a!3154) j!147) a!3154 mask!3216) (Intermediate!4736 false resIndex!32 resX!32)))))

(declare-fun res!330192 () Bool)

(declare-fun e!310788 () Bool)

(assert (=> start!48704 (=> (not res!330192) (not e!310788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48704 (= res!330192 (validMask!0 mask!3216))))

(assert (=> start!48704 e!310788))

(assert (=> start!48704 true))

(declare-fun array_inv!12045 (array!33872) Bool)

(assert (=> start!48704 (array_inv!12045 a!3154)))

(declare-fun b!534832 () Bool)

(assert (=> b!534832 (= e!310787 false)))

(declare-fun lt!245710 () SeekEntryResult!4736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534832 (= lt!245710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16271 a!3154) j!147) mask!3216) (select (arr!16271 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534833 () Bool)

(declare-fun res!330190 () Bool)

(assert (=> b!534833 (=> (not res!330190) (not e!310788))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534833 (= res!330190 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534834 () Bool)

(declare-fun res!330187 () Bool)

(assert (=> b!534834 (=> (not res!330187) (not e!310787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33872 (_ BitVec 32)) Bool)

(assert (=> b!534834 (= res!330187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534835 () Bool)

(assert (=> b!534835 (= e!310788 e!310787)))

(declare-fun res!330188 () Bool)

(assert (=> b!534835 (=> (not res!330188) (not e!310787))))

(declare-fun lt!245711 () SeekEntryResult!4736)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534835 (= res!330188 (or (= lt!245711 (MissingZero!4736 i!1153)) (= lt!245711 (MissingVacant!4736 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33872 (_ BitVec 32)) SeekEntryResult!4736)

(assert (=> b!534835 (= lt!245711 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534836 () Bool)

(declare-fun res!330191 () Bool)

(assert (=> b!534836 (=> (not res!330191) (not e!310787))))

(assert (=> b!534836 (= res!330191 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16635 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16635 a!3154)) (= (select (arr!16271 a!3154) resIndex!32) (select (arr!16271 a!3154) j!147))))))

(declare-fun b!534837 () Bool)

(declare-fun res!330193 () Bool)

(assert (=> b!534837 (=> (not res!330193) (not e!310788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534837 (= res!330193 (validKeyInArray!0 k!1998))))

(declare-fun b!534838 () Bool)

(declare-fun res!330185 () Bool)

(assert (=> b!534838 (=> (not res!330185) (not e!310788))))

(assert (=> b!534838 (= res!330185 (validKeyInArray!0 (select (arr!16271 a!3154) j!147)))))

(declare-fun b!534839 () Bool)

(declare-fun res!330186 () Bool)

(assert (=> b!534839 (=> (not res!330186) (not e!310788))))

(assert (=> b!534839 (= res!330186 (and (= (size!16635 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16635 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16635 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48704 res!330192) b!534839))

(assert (= (and b!534839 res!330186) b!534838))

(assert (= (and b!534838 res!330185) b!534837))

(assert (= (and b!534837 res!330193) b!534833))

(assert (= (and b!534833 res!330190) b!534835))

(assert (= (and b!534835 res!330188) b!534834))

(assert (= (and b!534834 res!330187) b!534830))

(assert (= (and b!534830 res!330194) b!534836))

(assert (= (and b!534836 res!330191) b!534831))

(assert (= (and b!534831 res!330189) b!534832))

(declare-fun m!514505 () Bool)

(assert (=> b!534832 m!514505))

(assert (=> b!534832 m!514505))

(declare-fun m!514507 () Bool)

(assert (=> b!534832 m!514507))

(assert (=> b!534832 m!514507))

(assert (=> b!534832 m!514505))

(declare-fun m!514509 () Bool)

(assert (=> b!534832 m!514509))

(declare-fun m!514511 () Bool)

(assert (=> b!534834 m!514511))

(assert (=> b!534838 m!514505))

(assert (=> b!534838 m!514505))

(declare-fun m!514513 () Bool)

(assert (=> b!534838 m!514513))

(declare-fun m!514515 () Bool)

(assert (=> b!534837 m!514515))

(assert (=> b!534831 m!514505))

(assert (=> b!534831 m!514505))

(declare-fun m!514517 () Bool)

(assert (=> b!534831 m!514517))

(declare-fun m!514519 () Bool)

(assert (=> b!534835 m!514519))

(declare-fun m!514521 () Bool)

(assert (=> start!48704 m!514521))

(declare-fun m!514523 () Bool)

(assert (=> start!48704 m!514523))

(declare-fun m!514525 () Bool)

(assert (=> b!534833 m!514525))

(declare-fun m!514527 () Bool)

(assert (=> b!534830 m!514527))

(declare-fun m!514529 () Bool)

(assert (=> b!534836 m!514529))

(assert (=> b!534836 m!514505))

(push 1)

