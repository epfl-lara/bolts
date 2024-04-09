; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48806 () Bool)

(assert start!48806)

(declare-fun b!536690 () Bool)

(declare-fun e!311481 () Bool)

(assert (=> b!536690 (= e!311481 false)))

(declare-fun lt!246194 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33974 0))(
  ( (array!33975 (arr!16322 (Array (_ BitVec 32) (_ BitVec 64))) (size!16686 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33974)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4787 0))(
  ( (MissingZero!4787 (index!21372 (_ BitVec 32))) (Found!4787 (index!21373 (_ BitVec 32))) (Intermediate!4787 (undefined!5599 Bool) (index!21374 (_ BitVec 32)) (x!50333 (_ BitVec 32))) (Undefined!4787) (MissingVacant!4787 (index!21375 (_ BitVec 32))) )
))
(declare-fun lt!246196 () SeekEntryResult!4787)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33974 (_ BitVec 32)) SeekEntryResult!4787)

(assert (=> b!536690 (= lt!246196 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246194 (select (arr!16322 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536691 () Bool)

(declare-fun res!332056 () Bool)

(declare-fun e!311479 () Bool)

(assert (=> b!536691 (=> (not res!332056) (not e!311479))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536691 (= res!332056 (and (not (= (select (arr!16322 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16322 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16322 a!3154) index!1177) (select (arr!16322 a!3154) j!147)))))))

(declare-fun b!536692 () Bool)

(declare-fun res!332050 () Bool)

(declare-fun e!311480 () Bool)

(assert (=> b!536692 (=> (not res!332050) (not e!311480))))

(declare-datatypes ((List!10494 0))(
  ( (Nil!10491) (Cons!10490 (h!11433 (_ BitVec 64)) (t!16730 List!10494)) )
))
(declare-fun arrayNoDuplicates!0 (array!33974 (_ BitVec 32) List!10494) Bool)

(assert (=> b!536692 (= res!332050 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10491))))

(declare-fun b!536693 () Bool)

(declare-fun res!332047 () Bool)

(declare-fun e!311482 () Bool)

(assert (=> b!536693 (=> (not res!332047) (not e!311482))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536693 (= res!332047 (validKeyInArray!0 k!1998))))

(declare-fun b!536695 () Bool)

(assert (=> b!536695 (= e!311480 e!311479)))

(declare-fun res!332045 () Bool)

(assert (=> b!536695 (=> (not res!332045) (not e!311479))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!246195 () SeekEntryResult!4787)

(assert (=> b!536695 (= res!332045 (= lt!246195 (Intermediate!4787 false resIndex!32 resX!32)))))

(assert (=> b!536695 (= lt!246195 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16322 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536696 () Bool)

(declare-fun res!332055 () Bool)

(assert (=> b!536696 (=> (not res!332055) (not e!311482))))

(assert (=> b!536696 (= res!332055 (validKeyInArray!0 (select (arr!16322 a!3154) j!147)))))

(declare-fun b!536697 () Bool)

(declare-fun res!332051 () Bool)

(assert (=> b!536697 (=> (not res!332051) (not e!311480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33974 (_ BitVec 32)) Bool)

(assert (=> b!536697 (= res!332051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536698 () Bool)

(declare-fun res!332052 () Bool)

(assert (=> b!536698 (=> (not res!332052) (not e!311480))))

(assert (=> b!536698 (= res!332052 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16686 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16686 a!3154)) (= (select (arr!16322 a!3154) resIndex!32) (select (arr!16322 a!3154) j!147))))))

(declare-fun res!332053 () Bool)

(assert (=> start!48806 (=> (not res!332053) (not e!311482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48806 (= res!332053 (validMask!0 mask!3216))))

(assert (=> start!48806 e!311482))

(assert (=> start!48806 true))

(declare-fun array_inv!12096 (array!33974) Bool)

(assert (=> start!48806 (array_inv!12096 a!3154)))

(declare-fun b!536694 () Bool)

(assert (=> b!536694 (= e!311482 e!311480)))

(declare-fun res!332054 () Bool)

(assert (=> b!536694 (=> (not res!332054) (not e!311480))))

(declare-fun lt!246197 () SeekEntryResult!4787)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536694 (= res!332054 (or (= lt!246197 (MissingZero!4787 i!1153)) (= lt!246197 (MissingVacant!4787 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33974 (_ BitVec 32)) SeekEntryResult!4787)

(assert (=> b!536694 (= lt!246197 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536699 () Bool)

(assert (=> b!536699 (= e!311479 e!311481)))

(declare-fun res!332046 () Bool)

(assert (=> b!536699 (=> (not res!332046) (not e!311481))))

(assert (=> b!536699 (= res!332046 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246194 #b00000000000000000000000000000000) (bvslt lt!246194 (size!16686 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536699 (= lt!246194 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536700 () Bool)

(declare-fun res!332049 () Bool)

(assert (=> b!536700 (=> (not res!332049) (not e!311479))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536700 (= res!332049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16322 a!3154) j!147) mask!3216) (select (arr!16322 a!3154) j!147) a!3154 mask!3216) lt!246195))))

(declare-fun b!536701 () Bool)

(declare-fun res!332048 () Bool)

(assert (=> b!536701 (=> (not res!332048) (not e!311482))))

(assert (=> b!536701 (= res!332048 (and (= (size!16686 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16686 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16686 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536702 () Bool)

(declare-fun res!332057 () Bool)

(assert (=> b!536702 (=> (not res!332057) (not e!311482))))

(declare-fun arrayContainsKey!0 (array!33974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536702 (= res!332057 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48806 res!332053) b!536701))

(assert (= (and b!536701 res!332048) b!536696))

(assert (= (and b!536696 res!332055) b!536693))

(assert (= (and b!536693 res!332047) b!536702))

(assert (= (and b!536702 res!332057) b!536694))

(assert (= (and b!536694 res!332054) b!536697))

(assert (= (and b!536697 res!332051) b!536692))

(assert (= (and b!536692 res!332050) b!536698))

(assert (= (and b!536698 res!332052) b!536695))

(assert (= (and b!536695 res!332045) b!536700))

(assert (= (and b!536700 res!332049) b!536691))

(assert (= (and b!536691 res!332056) b!536699))

(assert (= (and b!536699 res!332046) b!536690))

(declare-fun m!516059 () Bool)

(assert (=> b!536698 m!516059))

(declare-fun m!516061 () Bool)

(assert (=> b!536698 m!516061))

(declare-fun m!516063 () Bool)

(assert (=> b!536697 m!516063))

(assert (=> b!536696 m!516061))

(assert (=> b!536696 m!516061))

(declare-fun m!516065 () Bool)

(assert (=> b!536696 m!516065))

(assert (=> b!536700 m!516061))

(assert (=> b!536700 m!516061))

(declare-fun m!516067 () Bool)

(assert (=> b!536700 m!516067))

(assert (=> b!536700 m!516067))

(assert (=> b!536700 m!516061))

(declare-fun m!516069 () Bool)

(assert (=> b!536700 m!516069))

(declare-fun m!516071 () Bool)

(assert (=> b!536699 m!516071))

(declare-fun m!516073 () Bool)

(assert (=> b!536694 m!516073))

(declare-fun m!516075 () Bool)

(assert (=> b!536691 m!516075))

(assert (=> b!536691 m!516061))

(declare-fun m!516077 () Bool)

(assert (=> b!536702 m!516077))

(declare-fun m!516079 () Bool)

(assert (=> b!536692 m!516079))

(assert (=> b!536690 m!516061))

(assert (=> b!536690 m!516061))

(declare-fun m!516081 () Bool)

(assert (=> b!536690 m!516081))

(declare-fun m!516083 () Bool)

(assert (=> start!48806 m!516083))

(declare-fun m!516085 () Bool)

(assert (=> start!48806 m!516085))

(assert (=> b!536695 m!516061))

(assert (=> b!536695 m!516061))

(declare-fun m!516087 () Bool)

(assert (=> b!536695 m!516087))

(declare-fun m!516089 () Bool)

(assert (=> b!536693 m!516089))

(push 1)

(assert (not start!48806))

(assert (not b!536692))

(assert (not b!536696))

(assert (not b!536693))

(assert (not b!536700))

(assert (not b!536702))

(assert (not b!536697))

(assert (not b!536695))

(assert (not b!536694))

