; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48812 () Bool)

(assert start!48812)

(declare-fun b!536807 () Bool)

(declare-fun e!311526 () Bool)

(declare-fun e!311524 () Bool)

(assert (=> b!536807 (= e!311526 e!311524)))

(declare-fun res!332172 () Bool)

(assert (=> b!536807 (=> (not res!332172) (not e!311524))))

(declare-fun lt!246233 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!33980 0))(
  ( (array!33981 (arr!16325 (Array (_ BitVec 32) (_ BitVec 64))) (size!16689 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33980)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536807 (= res!332172 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246233 #b00000000000000000000000000000000) (bvslt lt!246233 (size!16689 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536807 (= lt!246233 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536808 () Bool)

(declare-fun res!332168 () Bool)

(declare-fun e!311527 () Bool)

(assert (=> b!536808 (=> (not res!332168) (not e!311527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33980 (_ BitVec 32)) Bool)

(assert (=> b!536808 (= res!332168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536809 () Bool)

(declare-fun res!332173 () Bool)

(assert (=> b!536809 (=> (not res!332173) (not e!311526))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!536809 (= res!332173 (and (not (= (select (arr!16325 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16325 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16325 a!3154) index!1177) (select (arr!16325 a!3154) j!147)))))))

(declare-fun b!536810 () Bool)

(declare-fun res!332174 () Bool)

(declare-fun e!311525 () Bool)

(assert (=> b!536810 (=> (not res!332174) (not e!311525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536810 (= res!332174 (validKeyInArray!0 (select (arr!16325 a!3154) j!147)))))

(declare-fun b!536811 () Bool)

(declare-fun res!332169 () Bool)

(assert (=> b!536811 (=> (not res!332169) (not e!311527))))

(declare-datatypes ((List!10497 0))(
  ( (Nil!10494) (Cons!10493 (h!11436 (_ BitVec 64)) (t!16733 List!10497)) )
))
(declare-fun arrayNoDuplicates!0 (array!33980 (_ BitVec 32) List!10497) Bool)

(assert (=> b!536811 (= res!332169 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10494))))

(declare-fun b!536812 () Bool)

(assert (=> b!536812 (= e!311525 e!311527)))

(declare-fun res!332165 () Bool)

(assert (=> b!536812 (=> (not res!332165) (not e!311527))))

(declare-datatypes ((SeekEntryResult!4790 0))(
  ( (MissingZero!4790 (index!21384 (_ BitVec 32))) (Found!4790 (index!21385 (_ BitVec 32))) (Intermediate!4790 (undefined!5602 Bool) (index!21386 (_ BitVec 32)) (x!50344 (_ BitVec 32))) (Undefined!4790) (MissingVacant!4790 (index!21387 (_ BitVec 32))) )
))
(declare-fun lt!246232 () SeekEntryResult!4790)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536812 (= res!332165 (or (= lt!246232 (MissingZero!4790 i!1153)) (= lt!246232 (MissingVacant!4790 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33980 (_ BitVec 32)) SeekEntryResult!4790)

(assert (=> b!536812 (= lt!246232 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536813 () Bool)

(declare-fun res!332162 () Bool)

(assert (=> b!536813 (=> (not res!332162) (not e!311525))))

(declare-fun arrayContainsKey!0 (array!33980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536813 (= res!332162 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!332171 () Bool)

(assert (=> start!48812 (=> (not res!332171) (not e!311525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48812 (= res!332171 (validMask!0 mask!3216))))

(assert (=> start!48812 e!311525))

(assert (=> start!48812 true))

(declare-fun array_inv!12099 (array!33980) Bool)

(assert (=> start!48812 (array_inv!12099 a!3154)))

(declare-fun b!536814 () Bool)

(assert (=> b!536814 (= e!311524 false)))

(declare-fun lt!246230 () SeekEntryResult!4790)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33980 (_ BitVec 32)) SeekEntryResult!4790)

(assert (=> b!536814 (= lt!246230 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246233 (select (arr!16325 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536815 () Bool)

(declare-fun res!332163 () Bool)

(assert (=> b!536815 (=> (not res!332163) (not e!311525))))

(assert (=> b!536815 (= res!332163 (validKeyInArray!0 k!1998))))

(declare-fun b!536816 () Bool)

(assert (=> b!536816 (= e!311527 e!311526)))

(declare-fun res!332164 () Bool)

(assert (=> b!536816 (=> (not res!332164) (not e!311526))))

(declare-fun lt!246231 () SeekEntryResult!4790)

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536816 (= res!332164 (= lt!246231 (Intermediate!4790 false resIndex!32 resX!32)))))

(assert (=> b!536816 (= lt!246231 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16325 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536817 () Bool)

(declare-fun res!332166 () Bool)

(assert (=> b!536817 (=> (not res!332166) (not e!311525))))

(assert (=> b!536817 (= res!332166 (and (= (size!16689 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16689 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16689 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536818 () Bool)

(declare-fun res!332170 () Bool)

(assert (=> b!536818 (=> (not res!332170) (not e!311526))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536818 (= res!332170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16325 a!3154) j!147) mask!3216) (select (arr!16325 a!3154) j!147) a!3154 mask!3216) lt!246231))))

(declare-fun b!536819 () Bool)

(declare-fun res!332167 () Bool)

(assert (=> b!536819 (=> (not res!332167) (not e!311527))))

(assert (=> b!536819 (= res!332167 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16689 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16689 a!3154)) (= (select (arr!16325 a!3154) resIndex!32) (select (arr!16325 a!3154) j!147))))))

(assert (= (and start!48812 res!332171) b!536817))

(assert (= (and b!536817 res!332166) b!536810))

(assert (= (and b!536810 res!332174) b!536815))

(assert (= (and b!536815 res!332163) b!536813))

(assert (= (and b!536813 res!332162) b!536812))

(assert (= (and b!536812 res!332165) b!536808))

(assert (= (and b!536808 res!332168) b!536811))

(assert (= (and b!536811 res!332169) b!536819))

(assert (= (and b!536819 res!332167) b!536816))

(assert (= (and b!536816 res!332164) b!536818))

(assert (= (and b!536818 res!332170) b!536809))

(assert (= (and b!536809 res!332173) b!536807))

(assert (= (and b!536807 res!332172) b!536814))

(declare-fun m!516155 () Bool)

(assert (=> b!536815 m!516155))

(declare-fun m!516157 () Bool)

(assert (=> b!536811 m!516157))

(declare-fun m!516159 () Bool)

(assert (=> b!536818 m!516159))

(assert (=> b!536818 m!516159))

(declare-fun m!516161 () Bool)

(assert (=> b!536818 m!516161))

(assert (=> b!536818 m!516161))

(assert (=> b!536818 m!516159))

(declare-fun m!516163 () Bool)

(assert (=> b!536818 m!516163))

(assert (=> b!536816 m!516159))

(assert (=> b!536816 m!516159))

(declare-fun m!516165 () Bool)

(assert (=> b!536816 m!516165))

(declare-fun m!516167 () Bool)

(assert (=> b!536819 m!516167))

(assert (=> b!536819 m!516159))

(assert (=> b!536814 m!516159))

(assert (=> b!536814 m!516159))

(declare-fun m!516169 () Bool)

(assert (=> b!536814 m!516169))

(declare-fun m!516171 () Bool)

(assert (=> start!48812 m!516171))

(declare-fun m!516173 () Bool)

(assert (=> start!48812 m!516173))

(declare-fun m!516175 () Bool)

(assert (=> b!536813 m!516175))

(declare-fun m!516177 () Bool)

(assert (=> b!536808 m!516177))

(declare-fun m!516179 () Bool)

(assert (=> b!536807 m!516179))

(declare-fun m!516181 () Bool)

(assert (=> b!536809 m!516181))

(assert (=> b!536809 m!516159))

(assert (=> b!536810 m!516159))

(assert (=> b!536810 m!516159))

(declare-fun m!516183 () Bool)

(assert (=> b!536810 m!516183))

(declare-fun m!516185 () Bool)

(assert (=> b!536812 m!516185))

(push 1)

(assert (not b!536807))

(assert (not start!48812))

(assert (not b!536815))

(assert (not b!536816))

(assert (not b!536814))

