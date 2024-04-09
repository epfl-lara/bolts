; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86522 () Bool)

(assert start!86522)

(declare-fun b!1001587 () Bool)

(declare-fun e!564388 () Bool)

(declare-fun e!564387 () Bool)

(assert (=> b!1001587 (= e!564388 e!564387)))

(declare-fun res!671229 () Bool)

(assert (=> b!1001587 (=> (not res!671229) (not e!564387))))

(declare-datatypes ((SeekEntryResult!9391 0))(
  ( (MissingZero!9391 (index!39934 (_ BitVec 32))) (Found!9391 (index!39935 (_ BitVec 32))) (Intermediate!9391 (undefined!10203 Bool) (index!39936 (_ BitVec 32)) (x!87380 (_ BitVec 32))) (Undefined!9391) (MissingVacant!9391 (index!39937 (_ BitVec 32))) )
))
(declare-fun lt!442766 () SeekEntryResult!9391)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001587 (= res!671229 (or (= lt!442766 (MissingVacant!9391 i!1194)) (= lt!442766 (MissingZero!9391 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-datatypes ((array!63275 0))(
  ( (array!63276 (arr!30459 (Array (_ BitVec 32) (_ BitVec 64))) (size!30962 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63275)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63275 (_ BitVec 32)) SeekEntryResult!9391)

(assert (=> b!1001587 (= lt!442766 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001588 () Bool)

(declare-fun res!671222 () Bool)

(assert (=> b!1001588 (=> (not res!671222) (not e!564388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001588 (= res!671222 (validKeyInArray!0 k!2224))))

(declare-fun b!1001589 () Bool)

(declare-fun res!671231 () Bool)

(assert (=> b!1001589 (=> (not res!671231) (not e!564388))))

(declare-fun arrayContainsKey!0 (array!63275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001589 (= res!671231 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001590 () Bool)

(declare-fun e!564385 () Bool)

(declare-fun e!564386 () Bool)

(assert (=> b!1001590 (= e!564385 e!564386)))

(declare-fun res!671223 () Bool)

(assert (=> b!1001590 (=> (not res!671223) (not e!564386))))

(declare-fun lt!442764 () (_ BitVec 64))

(declare-fun lt!442763 () SeekEntryResult!9391)

(declare-fun lt!442762 () array!63275)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63275 (_ BitVec 32)) SeekEntryResult!9391)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001590 (= res!671223 (not (= lt!442763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442764 mask!3464) lt!442764 lt!442762 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1001590 (= lt!442764 (select (store (arr!30459 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001590 (= lt!442762 (array!63276 (store (arr!30459 a!3219) i!1194 k!2224) (size!30962 a!3219)))))

(declare-fun b!1001591 () Bool)

(declare-fun e!564389 () Bool)

(assert (=> b!1001591 (= e!564387 e!564389)))

(declare-fun res!671235 () Bool)

(assert (=> b!1001591 (=> (not res!671235) (not e!564389))))

(declare-fun lt!442761 () SeekEntryResult!9391)

(assert (=> b!1001591 (= res!671235 (= lt!442763 lt!442761))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001591 (= lt!442761 (Intermediate!9391 false resIndex!38 resX!38))))

(assert (=> b!1001591 (= lt!442763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30459 a!3219) j!170) mask!3464) (select (arr!30459 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001592 () Bool)

(declare-fun res!671233 () Bool)

(assert (=> b!1001592 (=> (not res!671233) (not e!564387))))

(declare-datatypes ((List!21261 0))(
  ( (Nil!21258) (Cons!21257 (h!22434 (_ BitVec 64)) (t!30270 List!21261)) )
))
(declare-fun arrayNoDuplicates!0 (array!63275 (_ BitVec 32) List!21261) Bool)

(assert (=> b!1001592 (= res!671233 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21258))))

(declare-fun b!1001593 () Bool)

(declare-fun res!671227 () Bool)

(assert (=> b!1001593 (=> (not res!671227) (not e!564388))))

(assert (=> b!1001593 (= res!671227 (validKeyInArray!0 (select (arr!30459 a!3219) j!170)))))

(declare-fun b!1001594 () Bool)

(declare-fun res!671232 () Bool)

(assert (=> b!1001594 (=> (not res!671232) (not e!564387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63275 (_ BitVec 32)) Bool)

(assert (=> b!1001594 (= res!671232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001595 () Bool)

(declare-fun res!671234 () Bool)

(assert (=> b!1001595 (=> (not res!671234) (not e!564388))))

(assert (=> b!1001595 (= res!671234 (and (= (size!30962 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30962 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30962 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001597 () Bool)

(declare-fun res!671236 () Bool)

(assert (=> b!1001597 (=> (not res!671236) (not e!564386))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442760 () SeekEntryResult!9391)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001597 (= res!671236 (not (= lt!442760 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442764 lt!442762 mask!3464))))))

(declare-fun b!1001598 () Bool)

(declare-fun res!671230 () Bool)

(declare-fun e!564384 () Bool)

(assert (=> b!1001598 (=> (not res!671230) (not e!564384))))

(declare-fun lt!442767 () (_ BitVec 32))

(assert (=> b!1001598 (= res!671230 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442767 (select (arr!30459 a!3219) j!170) a!3219 mask!3464) lt!442761))))

(declare-fun b!1001599 () Bool)

(assert (=> b!1001599 (= e!564389 e!564385)))

(declare-fun res!671228 () Bool)

(assert (=> b!1001599 (=> (not res!671228) (not e!564385))))

(assert (=> b!1001599 (= res!671228 (= lt!442760 lt!442761))))

(assert (=> b!1001599 (= lt!442760 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30459 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001600 () Bool)

(declare-fun res!671225 () Bool)

(assert (=> b!1001600 (=> (not res!671225) (not e!564387))))

(assert (=> b!1001600 (= res!671225 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30962 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30962 a!3219))))))

(declare-fun res!671226 () Bool)

(assert (=> start!86522 (=> (not res!671226) (not e!564388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86522 (= res!671226 (validMask!0 mask!3464))))

(assert (=> start!86522 e!564388))

(declare-fun array_inv!23449 (array!63275) Bool)

(assert (=> start!86522 (array_inv!23449 a!3219)))

(assert (=> start!86522 true))

(declare-fun b!1001596 () Bool)

(assert (=> b!1001596 (= e!564384 false)))

(declare-fun lt!442765 () SeekEntryResult!9391)

(assert (=> b!1001596 (= lt!442765 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442767 lt!442764 lt!442762 mask!3464))))

(declare-fun b!1001601 () Bool)

(declare-fun res!671221 () Bool)

(assert (=> b!1001601 (=> (not res!671221) (not e!564386))))

(assert (=> b!1001601 (= res!671221 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001602 () Bool)

(assert (=> b!1001602 (= e!564386 e!564384)))

(declare-fun res!671224 () Bool)

(assert (=> b!1001602 (=> (not res!671224) (not e!564384))))

(assert (=> b!1001602 (= res!671224 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442767 #b00000000000000000000000000000000) (bvslt lt!442767 (size!30962 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001602 (= lt!442767 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86522 res!671226) b!1001595))

(assert (= (and b!1001595 res!671234) b!1001593))

(assert (= (and b!1001593 res!671227) b!1001588))

(assert (= (and b!1001588 res!671222) b!1001589))

(assert (= (and b!1001589 res!671231) b!1001587))

(assert (= (and b!1001587 res!671229) b!1001594))

(assert (= (and b!1001594 res!671232) b!1001592))

(assert (= (and b!1001592 res!671233) b!1001600))

(assert (= (and b!1001600 res!671225) b!1001591))

(assert (= (and b!1001591 res!671235) b!1001599))

(assert (= (and b!1001599 res!671228) b!1001590))

(assert (= (and b!1001590 res!671223) b!1001597))

(assert (= (and b!1001597 res!671236) b!1001601))

(assert (= (and b!1001601 res!671221) b!1001602))

(assert (= (and b!1001602 res!671224) b!1001598))

(assert (= (and b!1001598 res!671230) b!1001596))

(declare-fun m!927701 () Bool)

(assert (=> b!1001596 m!927701))

(declare-fun m!927703 () Bool)

(assert (=> b!1001594 m!927703))

(declare-fun m!927705 () Bool)

(assert (=> b!1001593 m!927705))

(assert (=> b!1001593 m!927705))

(declare-fun m!927707 () Bool)

(assert (=> b!1001593 m!927707))

(declare-fun m!927709 () Bool)

(assert (=> b!1001602 m!927709))

(declare-fun m!927711 () Bool)

(assert (=> b!1001592 m!927711))

(declare-fun m!927713 () Bool)

(assert (=> b!1001587 m!927713))

(declare-fun m!927715 () Bool)

(assert (=> b!1001597 m!927715))

(declare-fun m!927717 () Bool)

(assert (=> start!86522 m!927717))

(declare-fun m!927719 () Bool)

(assert (=> start!86522 m!927719))

(declare-fun m!927721 () Bool)

(assert (=> b!1001590 m!927721))

(assert (=> b!1001590 m!927721))

(declare-fun m!927723 () Bool)

(assert (=> b!1001590 m!927723))

(declare-fun m!927725 () Bool)

(assert (=> b!1001590 m!927725))

(declare-fun m!927727 () Bool)

(assert (=> b!1001590 m!927727))

(declare-fun m!927729 () Bool)

(assert (=> b!1001589 m!927729))

(assert (=> b!1001599 m!927705))

(assert (=> b!1001599 m!927705))

(declare-fun m!927731 () Bool)

(assert (=> b!1001599 m!927731))

(declare-fun m!927733 () Bool)

(assert (=> b!1001588 m!927733))

(assert (=> b!1001591 m!927705))

(assert (=> b!1001591 m!927705))

(declare-fun m!927735 () Bool)

(assert (=> b!1001591 m!927735))

(assert (=> b!1001591 m!927735))

(assert (=> b!1001591 m!927705))

(declare-fun m!927737 () Bool)

(assert (=> b!1001591 m!927737))

(assert (=> b!1001598 m!927705))

(assert (=> b!1001598 m!927705))

(declare-fun m!927739 () Bool)

(assert (=> b!1001598 m!927739))

(push 1)

