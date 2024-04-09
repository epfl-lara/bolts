; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49624 () Bool)

(assert start!49624)

(declare-fun b!545615 () Bool)

(declare-fun res!339698 () Bool)

(declare-fun e!315366 () Bool)

(assert (=> b!545615 (=> (not res!339698) (not e!315366))))

(declare-datatypes ((array!34393 0))(
  ( (array!34394 (arr!16521 (Array (_ BitVec 32) (_ BitVec 64))) (size!16885 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34393)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34393 (_ BitVec 32)) Bool)

(assert (=> b!545615 (= res!339698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545616 () Bool)

(declare-fun e!315369 () Bool)

(assert (=> b!545616 (= e!315366 e!315369)))

(declare-fun res!339694 () Bool)

(assert (=> b!545616 (=> (not res!339694) (not e!315369))))

(declare-datatypes ((SeekEntryResult!4986 0))(
  ( (MissingZero!4986 (index!22168 (_ BitVec 32))) (Found!4986 (index!22169 (_ BitVec 32))) (Intermediate!4986 (undefined!5798 Bool) (index!22170 (_ BitVec 32)) (x!51125 (_ BitVec 32))) (Undefined!4986) (MissingVacant!4986 (index!22171 (_ BitVec 32))) )
))
(declare-fun lt!248979 () SeekEntryResult!4986)

(declare-fun lt!248978 () SeekEntryResult!4986)

(assert (=> b!545616 (= res!339694 (= lt!248979 lt!248978))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545616 (= lt!248978 (Intermediate!4986 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34393 (_ BitVec 32)) SeekEntryResult!4986)

(assert (=> b!545616 (= lt!248979 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16521 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545617 () Bool)

(declare-fun res!339702 () Bool)

(declare-fun e!315365 () Bool)

(assert (=> b!545617 (=> (not res!339702) (not e!315365))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545617 (= res!339702 (validKeyInArray!0 k!1998))))

(declare-fun res!339692 () Bool)

(assert (=> start!49624 (=> (not res!339692) (not e!315365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49624 (= res!339692 (validMask!0 mask!3216))))

(assert (=> start!49624 e!315365))

(assert (=> start!49624 true))

(declare-fun array_inv!12295 (array!34393) Bool)

(assert (=> start!49624 (array_inv!12295 a!3154)))

(declare-fun b!545618 () Bool)

(declare-fun e!315368 () Bool)

(assert (=> b!545618 (= e!315368 (not true))))

(declare-fun lt!248981 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545618 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248981 (select (store (arr!16521 a!3154) i!1153 k!1998) j!147) (array!34394 (store (arr!16521 a!3154) i!1153 k!1998) (size!16885 a!3154)) mask!3216) lt!248978)))

(declare-datatypes ((Unit!16904 0))(
  ( (Unit!16905) )
))
(declare-fun lt!248976 () Unit!16904)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16904)

(assert (=> b!545618 (= lt!248976 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!248981 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545619 () Bool)

(declare-fun e!315367 () Bool)

(declare-fun e!315370 () Bool)

(assert (=> b!545619 (= e!315367 e!315370)))

(declare-fun res!339703 () Bool)

(assert (=> b!545619 (=> (not res!339703) (not e!315370))))

(assert (=> b!545619 (= res!339703 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248981 #b00000000000000000000000000000000) (bvslt lt!248981 (size!16885 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545619 (= lt!248981 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545620 () Bool)

(declare-fun res!339701 () Bool)

(assert (=> b!545620 (=> (not res!339701) (not e!315365))))

(declare-fun arrayContainsKey!0 (array!34393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545620 (= res!339701 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545621 () Bool)

(assert (=> b!545621 (= e!315370 e!315368)))

(declare-fun res!339693 () Bool)

(assert (=> b!545621 (=> (not res!339693) (not e!315368))))

(declare-fun lt!248975 () SeekEntryResult!4986)

(declare-fun lt!248977 () SeekEntryResult!4986)

(assert (=> b!545621 (= res!339693 (and (= lt!248975 lt!248978) (= lt!248977 lt!248975)))))

(assert (=> b!545621 (= lt!248975 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248981 (select (arr!16521 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545622 () Bool)

(assert (=> b!545622 (= e!315365 e!315366)))

(declare-fun res!339697 () Bool)

(assert (=> b!545622 (=> (not res!339697) (not e!315366))))

(declare-fun lt!248980 () SeekEntryResult!4986)

(assert (=> b!545622 (= res!339697 (or (= lt!248980 (MissingZero!4986 i!1153)) (= lt!248980 (MissingVacant!4986 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34393 (_ BitVec 32)) SeekEntryResult!4986)

(assert (=> b!545622 (= lt!248980 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545623 () Bool)

(declare-fun res!339696 () Bool)

(assert (=> b!545623 (=> (not res!339696) (not e!315365))))

(assert (=> b!545623 (= res!339696 (and (= (size!16885 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16885 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16885 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545624 () Bool)

(declare-fun res!339699 () Bool)

(assert (=> b!545624 (=> (not res!339699) (not e!315366))))

(assert (=> b!545624 (= res!339699 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16885 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16885 a!3154)) (= (select (arr!16521 a!3154) resIndex!32) (select (arr!16521 a!3154) j!147))))))

(declare-fun b!545625 () Bool)

(declare-fun res!339700 () Bool)

(assert (=> b!545625 (=> (not res!339700) (not e!315366))))

(declare-datatypes ((List!10693 0))(
  ( (Nil!10690) (Cons!10689 (h!11653 (_ BitVec 64)) (t!16929 List!10693)) )
))
(declare-fun arrayNoDuplicates!0 (array!34393 (_ BitVec 32) List!10693) Bool)

(assert (=> b!545625 (= res!339700 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10690))))

(declare-fun b!545626 () Bool)

(declare-fun res!339704 () Bool)

(assert (=> b!545626 (=> (not res!339704) (not e!315365))))

(assert (=> b!545626 (= res!339704 (validKeyInArray!0 (select (arr!16521 a!3154) j!147)))))

(declare-fun b!545627 () Bool)

(assert (=> b!545627 (= e!315369 e!315367)))

(declare-fun res!339695 () Bool)

(assert (=> b!545627 (=> (not res!339695) (not e!315367))))

(assert (=> b!545627 (= res!339695 (and (= lt!248977 lt!248979) (not (= (select (arr!16521 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16521 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16521 a!3154) index!1177) (select (arr!16521 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545627 (= lt!248977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16521 a!3154) j!147) mask!3216) (select (arr!16521 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49624 res!339692) b!545623))

(assert (= (and b!545623 res!339696) b!545626))

(assert (= (and b!545626 res!339704) b!545617))

(assert (= (and b!545617 res!339702) b!545620))

(assert (= (and b!545620 res!339701) b!545622))

(assert (= (and b!545622 res!339697) b!545615))

(assert (= (and b!545615 res!339698) b!545625))

(assert (= (and b!545625 res!339700) b!545624))

(assert (= (and b!545624 res!339699) b!545616))

(assert (= (and b!545616 res!339694) b!545627))

(assert (= (and b!545627 res!339695) b!545619))

(assert (= (and b!545619 res!339703) b!545621))

(assert (= (and b!545621 res!339693) b!545618))

(declare-fun m!523195 () Bool)

(assert (=> b!545624 m!523195))

(declare-fun m!523197 () Bool)

(assert (=> b!545624 m!523197))

(declare-fun m!523199 () Bool)

(assert (=> b!545620 m!523199))

(assert (=> b!545626 m!523197))

(assert (=> b!545626 m!523197))

(declare-fun m!523201 () Bool)

(assert (=> b!545626 m!523201))

(declare-fun m!523203 () Bool)

(assert (=> b!545622 m!523203))

(declare-fun m!523205 () Bool)

(assert (=> start!49624 m!523205))

(declare-fun m!523207 () Bool)

(assert (=> start!49624 m!523207))

(assert (=> b!545621 m!523197))

(assert (=> b!545621 m!523197))

(declare-fun m!523209 () Bool)

(assert (=> b!545621 m!523209))

(declare-fun m!523211 () Bool)

(assert (=> b!545617 m!523211))

(declare-fun m!523213 () Bool)

(assert (=> b!545625 m!523213))

(declare-fun m!523215 () Bool)

(assert (=> b!545615 m!523215))

(assert (=> b!545616 m!523197))

(assert (=> b!545616 m!523197))

(declare-fun m!523217 () Bool)

(assert (=> b!545616 m!523217))

(declare-fun m!523219 () Bool)

(assert (=> b!545627 m!523219))

(assert (=> b!545627 m!523197))

(assert (=> b!545627 m!523197))

(declare-fun m!523221 () Bool)

(assert (=> b!545627 m!523221))

(assert (=> b!545627 m!523221))

(assert (=> b!545627 m!523197))

(declare-fun m!523223 () Bool)

(assert (=> b!545627 m!523223))

(declare-fun m!523225 () Bool)

(assert (=> b!545619 m!523225))

(declare-fun m!523227 () Bool)

(assert (=> b!545618 m!523227))

(declare-fun m!523229 () Bool)

(assert (=> b!545618 m!523229))

(assert (=> b!545618 m!523229))

(declare-fun m!523231 () Bool)

(assert (=> b!545618 m!523231))

(declare-fun m!523233 () Bool)

(assert (=> b!545618 m!523233))

(push 1)

