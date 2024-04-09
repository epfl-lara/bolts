; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86422 () Bool)

(assert start!86422)

(declare-fun b!999681 () Bool)

(declare-fun e!563644 () Bool)

(declare-fun e!563642 () Bool)

(assert (=> b!999681 (= e!563644 e!563642)))

(declare-fun res!669325 () Bool)

(assert (=> b!999681 (=> (not res!669325) (not e!563642))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9341 0))(
  ( (MissingZero!9341 (index!39734 (_ BitVec 32))) (Found!9341 (index!39735 (_ BitVec 32))) (Intermediate!9341 (undefined!10153 Bool) (index!39736 (_ BitVec 32)) (x!87202 (_ BitVec 32))) (Undefined!9341) (MissingVacant!9341 (index!39737 (_ BitVec 32))) )
))
(declare-fun lt!442073 () SeekEntryResult!9341)

(declare-datatypes ((array!63175 0))(
  ( (array!63176 (arr!30409 (Array (_ BitVec 32) (_ BitVec 64))) (size!30912 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63175)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63175 (_ BitVec 32)) SeekEntryResult!9341)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999681 (= res!669325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30409 a!3219) j!170) mask!3464) (select (arr!30409 a!3219) j!170) a!3219 mask!3464) lt!442073))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999681 (= lt!442073 (Intermediate!9341 false resIndex!38 resX!38))))

(declare-fun b!999682 () Bool)

(declare-fun res!669321 () Bool)

(assert (=> b!999682 (=> (not res!669321) (not e!563644))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!999682 (= res!669321 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30912 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30912 a!3219))))))

(declare-fun b!999683 () Bool)

(assert (=> b!999683 (= e!563642 false)))

(declare-fun lt!442072 () SeekEntryResult!9341)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999683 (= lt!442072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30409 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30409 a!3219) i!1194 k!2224) j!170) (array!63176 (store (arr!30409 a!3219) i!1194 k!2224) (size!30912 a!3219)) mask!3464))))

(declare-fun b!999684 () Bool)

(declare-fun res!669323 () Bool)

(declare-fun e!563645 () Bool)

(assert (=> b!999684 (=> (not res!669323) (not e!563645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999684 (= res!669323 (validKeyInArray!0 k!2224))))

(declare-fun b!999686 () Bool)

(declare-fun res!669320 () Bool)

(assert (=> b!999686 (=> (not res!669320) (not e!563642))))

(assert (=> b!999686 (= res!669320 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30409 a!3219) j!170) a!3219 mask!3464) lt!442073))))

(declare-fun b!999687 () Bool)

(declare-fun res!669318 () Bool)

(assert (=> b!999687 (=> (not res!669318) (not e!563645))))

(assert (=> b!999687 (= res!669318 (and (= (size!30912 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30912 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30912 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999688 () Bool)

(declare-fun res!669316 () Bool)

(assert (=> b!999688 (=> (not res!669316) (not e!563645))))

(assert (=> b!999688 (= res!669316 (validKeyInArray!0 (select (arr!30409 a!3219) j!170)))))

(declare-fun b!999689 () Bool)

(declare-fun res!669317 () Bool)

(assert (=> b!999689 (=> (not res!669317) (not e!563644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63175 (_ BitVec 32)) Bool)

(assert (=> b!999689 (= res!669317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999690 () Bool)

(declare-fun res!669319 () Bool)

(assert (=> b!999690 (=> (not res!669319) (not e!563644))))

(declare-datatypes ((List!21211 0))(
  ( (Nil!21208) (Cons!21207 (h!22384 (_ BitVec 64)) (t!30220 List!21211)) )
))
(declare-fun arrayNoDuplicates!0 (array!63175 (_ BitVec 32) List!21211) Bool)

(assert (=> b!999690 (= res!669319 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21208))))

(declare-fun b!999691 () Bool)

(declare-fun res!669322 () Bool)

(assert (=> b!999691 (=> (not res!669322) (not e!563645))))

(declare-fun arrayContainsKey!0 (array!63175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999691 (= res!669322 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999685 () Bool)

(assert (=> b!999685 (= e!563645 e!563644)))

(declare-fun res!669315 () Bool)

(assert (=> b!999685 (=> (not res!669315) (not e!563644))))

(declare-fun lt!442074 () SeekEntryResult!9341)

(assert (=> b!999685 (= res!669315 (or (= lt!442074 (MissingVacant!9341 i!1194)) (= lt!442074 (MissingZero!9341 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63175 (_ BitVec 32)) SeekEntryResult!9341)

(assert (=> b!999685 (= lt!442074 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!669324 () Bool)

(assert (=> start!86422 (=> (not res!669324) (not e!563645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86422 (= res!669324 (validMask!0 mask!3464))))

(assert (=> start!86422 e!563645))

(declare-fun array_inv!23399 (array!63175) Bool)

(assert (=> start!86422 (array_inv!23399 a!3219)))

(assert (=> start!86422 true))

(assert (= (and start!86422 res!669324) b!999687))

(assert (= (and b!999687 res!669318) b!999688))

(assert (= (and b!999688 res!669316) b!999684))

(assert (= (and b!999684 res!669323) b!999691))

(assert (= (and b!999691 res!669322) b!999685))

(assert (= (and b!999685 res!669315) b!999689))

(assert (= (and b!999689 res!669317) b!999690))

(assert (= (and b!999690 res!669319) b!999682))

(assert (= (and b!999682 res!669321) b!999681))

(assert (= (and b!999681 res!669325) b!999686))

(assert (= (and b!999686 res!669320) b!999683))

(declare-fun m!926007 () Bool)

(assert (=> b!999686 m!926007))

(assert (=> b!999686 m!926007))

(declare-fun m!926009 () Bool)

(assert (=> b!999686 m!926009))

(declare-fun m!926011 () Bool)

(assert (=> b!999685 m!926011))

(declare-fun m!926013 () Bool)

(assert (=> b!999691 m!926013))

(declare-fun m!926015 () Bool)

(assert (=> b!999683 m!926015))

(declare-fun m!926017 () Bool)

(assert (=> b!999683 m!926017))

(assert (=> b!999683 m!926017))

(declare-fun m!926019 () Bool)

(assert (=> b!999683 m!926019))

(assert (=> b!999683 m!926019))

(assert (=> b!999683 m!926017))

(declare-fun m!926021 () Bool)

(assert (=> b!999683 m!926021))

(assert (=> b!999681 m!926007))

(assert (=> b!999681 m!926007))

(declare-fun m!926023 () Bool)

(assert (=> b!999681 m!926023))

(assert (=> b!999681 m!926023))

(assert (=> b!999681 m!926007))

(declare-fun m!926025 () Bool)

(assert (=> b!999681 m!926025))

(declare-fun m!926027 () Bool)

(assert (=> b!999689 m!926027))

(declare-fun m!926029 () Bool)

(assert (=> b!999684 m!926029))

(declare-fun m!926031 () Bool)

(assert (=> start!86422 m!926031))

(declare-fun m!926033 () Bool)

(assert (=> start!86422 m!926033))

(declare-fun m!926035 () Bool)

(assert (=> b!999690 m!926035))

(assert (=> b!999688 m!926007))

(assert (=> b!999688 m!926007))

(declare-fun m!926037 () Bool)

(assert (=> b!999688 m!926037))

(push 1)

