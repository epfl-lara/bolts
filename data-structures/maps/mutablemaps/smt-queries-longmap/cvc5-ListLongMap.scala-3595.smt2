; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49456 () Bool)

(assert start!49456)

(declare-fun b!544182 () Bool)

(declare-fun res!338599 () Bool)

(declare-fun e!314650 () Bool)

(assert (=> b!544182 (=> (not res!338599) (not e!314650))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544182 (= res!338599 (validKeyInArray!0 k!1998))))

(declare-fun b!544183 () Bool)

(declare-fun res!338600 () Bool)

(declare-fun e!314649 () Bool)

(assert (=> b!544183 (=> (not res!338600) (not e!314649))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34339 0))(
  ( (array!34340 (arr!16497 (Array (_ BitVec 32) (_ BitVec 64))) (size!16861 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34339)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544183 (= res!338600 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16861 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16861 a!3154)) (= (select (arr!16497 a!3154) resIndex!32) (select (arr!16497 a!3154) j!147))))))

(declare-fun b!544184 () Bool)

(declare-fun res!338603 () Bool)

(assert (=> b!544184 (=> (not res!338603) (not e!314650))))

(declare-fun arrayContainsKey!0 (array!34339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544184 (= res!338603 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544185 () Bool)

(declare-fun res!338595 () Bool)

(declare-fun e!314648 () Bool)

(assert (=> b!544185 (=> (not res!338595) (not e!314648))))

(assert (=> b!544185 (= res!338595 (and (not (= (select (arr!16497 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16497 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16497 a!3154) index!1177) (select (arr!16497 a!3154) j!147)))))))

(declare-fun b!544186 () Bool)

(declare-fun res!338604 () Bool)

(assert (=> b!544186 (=> (not res!338604) (not e!314649))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34339 (_ BitVec 32)) Bool)

(assert (=> b!544186 (= res!338604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544187 () Bool)

(assert (=> b!544187 (= e!314650 e!314649)))

(declare-fun res!338601 () Bool)

(assert (=> b!544187 (=> (not res!338601) (not e!314649))))

(declare-datatypes ((SeekEntryResult!4962 0))(
  ( (MissingZero!4962 (index!22072 (_ BitVec 32))) (Found!4962 (index!22073 (_ BitVec 32))) (Intermediate!4962 (undefined!5774 Bool) (index!22074 (_ BitVec 32)) (x!51019 (_ BitVec 32))) (Undefined!4962) (MissingVacant!4962 (index!22075 (_ BitVec 32))) )
))
(declare-fun lt!248436 () SeekEntryResult!4962)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544187 (= res!338601 (or (= lt!248436 (MissingZero!4962 i!1153)) (= lt!248436 (MissingVacant!4962 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34339 (_ BitVec 32)) SeekEntryResult!4962)

(assert (=> b!544187 (= lt!248436 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544189 () Bool)

(assert (=> b!544189 (= e!314649 e!314648)))

(declare-fun res!338597 () Bool)

(assert (=> b!544189 (=> (not res!338597) (not e!314648))))

(declare-fun lt!248438 () SeekEntryResult!4962)

(assert (=> b!544189 (= res!338597 (= lt!248438 (Intermediate!4962 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34339 (_ BitVec 32)) SeekEntryResult!4962)

(assert (=> b!544189 (= lt!248438 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16497 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544190 () Bool)

(declare-fun res!338598 () Bool)

(assert (=> b!544190 (=> (not res!338598) (not e!314650))))

(assert (=> b!544190 (= res!338598 (validKeyInArray!0 (select (arr!16497 a!3154) j!147)))))

(declare-fun b!544191 () Bool)

(declare-fun res!338602 () Bool)

(assert (=> b!544191 (=> (not res!338602) (not e!314650))))

(assert (=> b!544191 (= res!338602 (and (= (size!16861 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16861 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16861 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!338605 () Bool)

(assert (=> start!49456 (=> (not res!338605) (not e!314650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49456 (= res!338605 (validMask!0 mask!3216))))

(assert (=> start!49456 e!314650))

(assert (=> start!49456 true))

(declare-fun array_inv!12271 (array!34339) Bool)

(assert (=> start!49456 (array_inv!12271 a!3154)))

(declare-fun b!544188 () Bool)

(declare-fun res!338596 () Bool)

(assert (=> b!544188 (=> (not res!338596) (not e!314648))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544188 (= res!338596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16497 a!3154) j!147) mask!3216) (select (arr!16497 a!3154) j!147) a!3154 mask!3216) lt!248438))))

(declare-fun b!544192 () Bool)

(declare-fun res!338606 () Bool)

(assert (=> b!544192 (=> (not res!338606) (not e!314649))))

(declare-datatypes ((List!10669 0))(
  ( (Nil!10666) (Cons!10665 (h!11623 (_ BitVec 64)) (t!16905 List!10669)) )
))
(declare-fun arrayNoDuplicates!0 (array!34339 (_ BitVec 32) List!10669) Bool)

(assert (=> b!544192 (= res!338606 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10666))))

(declare-fun b!544193 () Bool)

(assert (=> b!544193 (= e!314648 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvslt (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000)))))

(declare-fun lt!248437 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544193 (= lt!248437 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!49456 res!338605) b!544191))

(assert (= (and b!544191 res!338602) b!544190))

(assert (= (and b!544190 res!338598) b!544182))

(assert (= (and b!544182 res!338599) b!544184))

(assert (= (and b!544184 res!338603) b!544187))

(assert (= (and b!544187 res!338601) b!544186))

(assert (= (and b!544186 res!338604) b!544192))

(assert (= (and b!544192 res!338606) b!544183))

(assert (= (and b!544183 res!338600) b!544189))

(assert (= (and b!544189 res!338597) b!544188))

(assert (= (and b!544188 res!338596) b!544185))

(assert (= (and b!544185 res!338595) b!544193))

(declare-fun m!522127 () Bool)

(assert (=> b!544182 m!522127))

(declare-fun m!522129 () Bool)

(assert (=> b!544184 m!522129))

(declare-fun m!522131 () Bool)

(assert (=> b!544193 m!522131))

(declare-fun m!522133 () Bool)

(assert (=> b!544185 m!522133))

(declare-fun m!522135 () Bool)

(assert (=> b!544185 m!522135))

(declare-fun m!522137 () Bool)

(assert (=> b!544187 m!522137))

(declare-fun m!522139 () Bool)

(assert (=> b!544183 m!522139))

(assert (=> b!544183 m!522135))

(declare-fun m!522141 () Bool)

(assert (=> b!544186 m!522141))

(declare-fun m!522143 () Bool)

(assert (=> b!544192 m!522143))

(assert (=> b!544190 m!522135))

(assert (=> b!544190 m!522135))

(declare-fun m!522145 () Bool)

(assert (=> b!544190 m!522145))

(declare-fun m!522147 () Bool)

(assert (=> start!49456 m!522147))

(declare-fun m!522149 () Bool)

(assert (=> start!49456 m!522149))

(assert (=> b!544189 m!522135))

(assert (=> b!544189 m!522135))

(declare-fun m!522151 () Bool)

(assert (=> b!544189 m!522151))

(assert (=> b!544188 m!522135))

(assert (=> b!544188 m!522135))

(declare-fun m!522153 () Bool)

(assert (=> b!544188 m!522153))

(assert (=> b!544188 m!522153))

(assert (=> b!544188 m!522135))

(declare-fun m!522155 () Bool)

(assert (=> b!544188 m!522155))

(push 1)

