; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48818 () Bool)

(assert start!48818)

(declare-fun b!536924 () Bool)

(declare-fun res!332284 () Bool)

(declare-fun e!311569 () Bool)

(assert (=> b!536924 (=> (not res!332284) (not e!311569))))

(declare-datatypes ((array!33986 0))(
  ( (array!33987 (arr!16328 (Array (_ BitVec 32) (_ BitVec 64))) (size!16692 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33986)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536924 (= res!332284 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536925 () Bool)

(declare-fun e!311572 () Bool)

(declare-fun e!311571 () Bool)

(assert (=> b!536925 (= e!311572 e!311571)))

(declare-fun res!332288 () Bool)

(assert (=> b!536925 (=> (not res!332288) (not e!311571))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!246266 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!536925 (= res!332288 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246266 #b00000000000000000000000000000000) (bvslt lt!246266 (size!16692 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536925 (= lt!246266 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!332282 () Bool)

(assert (=> start!48818 (=> (not res!332282) (not e!311569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48818 (= res!332282 (validMask!0 mask!3216))))

(assert (=> start!48818 e!311569))

(assert (=> start!48818 true))

(declare-fun array_inv!12102 (array!33986) Bool)

(assert (=> start!48818 (array_inv!12102 a!3154)))

(declare-fun b!536926 () Bool)

(declare-fun res!332290 () Bool)

(assert (=> b!536926 (=> (not res!332290) (not e!311569))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536926 (= res!332290 (and (= (size!16692 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16692 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16692 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536927 () Bool)

(declare-fun res!332287 () Bool)

(declare-fun e!311570 () Bool)

(assert (=> b!536927 (=> (not res!332287) (not e!311570))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536927 (= res!332287 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16692 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16692 a!3154)) (= (select (arr!16328 a!3154) resIndex!32) (select (arr!16328 a!3154) j!147))))))

(declare-fun b!536928 () Bool)

(assert (=> b!536928 (= e!311569 e!311570)))

(declare-fun res!332286 () Bool)

(assert (=> b!536928 (=> (not res!332286) (not e!311570))))

(declare-datatypes ((SeekEntryResult!4793 0))(
  ( (MissingZero!4793 (index!21396 (_ BitVec 32))) (Found!4793 (index!21397 (_ BitVec 32))) (Intermediate!4793 (undefined!5605 Bool) (index!21398 (_ BitVec 32)) (x!50355 (_ BitVec 32))) (Undefined!4793) (MissingVacant!4793 (index!21399 (_ BitVec 32))) )
))
(declare-fun lt!246267 () SeekEntryResult!4793)

(assert (=> b!536928 (= res!332286 (or (= lt!246267 (MissingZero!4793 i!1153)) (= lt!246267 (MissingVacant!4793 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33986 (_ BitVec 32)) SeekEntryResult!4793)

(assert (=> b!536928 (= lt!246267 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536929 () Bool)

(declare-fun res!332283 () Bool)

(assert (=> b!536929 (=> (not res!332283) (not e!311569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536929 (= res!332283 (validKeyInArray!0 k!1998))))

(declare-fun b!536930 () Bool)

(declare-fun res!332279 () Bool)

(assert (=> b!536930 (=> (not res!332279) (not e!311572))))

(assert (=> b!536930 (= res!332279 (and (not (= (select (arr!16328 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16328 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16328 a!3154) index!1177) (select (arr!16328 a!3154) j!147)))))))

(declare-fun b!536931 () Bool)

(declare-fun res!332289 () Bool)

(assert (=> b!536931 (=> (not res!332289) (not e!311570))))

(declare-datatypes ((List!10500 0))(
  ( (Nil!10497) (Cons!10496 (h!11439 (_ BitVec 64)) (t!16736 List!10500)) )
))
(declare-fun arrayNoDuplicates!0 (array!33986 (_ BitVec 32) List!10500) Bool)

(assert (=> b!536931 (= res!332289 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10497))))

(declare-fun b!536932 () Bool)

(declare-fun res!332281 () Bool)

(assert (=> b!536932 (=> (not res!332281) (not e!311569))))

(assert (=> b!536932 (= res!332281 (validKeyInArray!0 (select (arr!16328 a!3154) j!147)))))

(declare-fun b!536933 () Bool)

(declare-fun res!332280 () Bool)

(assert (=> b!536933 (=> (not res!332280) (not e!311570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33986 (_ BitVec 32)) Bool)

(assert (=> b!536933 (= res!332280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536934 () Bool)

(assert (=> b!536934 (= e!311571 false)))

(declare-fun lt!246269 () SeekEntryResult!4793)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33986 (_ BitVec 32)) SeekEntryResult!4793)

(assert (=> b!536934 (= lt!246269 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246266 (select (arr!16328 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536935 () Bool)

(assert (=> b!536935 (= e!311570 e!311572)))

(declare-fun res!332285 () Bool)

(assert (=> b!536935 (=> (not res!332285) (not e!311572))))

(declare-fun lt!246268 () SeekEntryResult!4793)

(assert (=> b!536935 (= res!332285 (= lt!246268 (Intermediate!4793 false resIndex!32 resX!32)))))

(assert (=> b!536935 (= lt!246268 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16328 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536936 () Bool)

(declare-fun res!332291 () Bool)

(assert (=> b!536936 (=> (not res!332291) (not e!311572))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536936 (= res!332291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16328 a!3154) j!147) mask!3216) (select (arr!16328 a!3154) j!147) a!3154 mask!3216) lt!246268))))

(assert (= (and start!48818 res!332282) b!536926))

(assert (= (and b!536926 res!332290) b!536932))

(assert (= (and b!536932 res!332281) b!536929))

(assert (= (and b!536929 res!332283) b!536924))

(assert (= (and b!536924 res!332284) b!536928))

(assert (= (and b!536928 res!332286) b!536933))

(assert (= (and b!536933 res!332280) b!536931))

(assert (= (and b!536931 res!332289) b!536927))

(assert (= (and b!536927 res!332287) b!536935))

(assert (= (and b!536935 res!332285) b!536936))

(assert (= (and b!536936 res!332291) b!536930))

(assert (= (and b!536930 res!332279) b!536925))

(assert (= (and b!536925 res!332288) b!536934))

(declare-fun m!516251 () Bool)

(assert (=> b!536928 m!516251))

(declare-fun m!516253 () Bool)

(assert (=> b!536932 m!516253))

(assert (=> b!536932 m!516253))

(declare-fun m!516255 () Bool)

(assert (=> b!536932 m!516255))

(declare-fun m!516257 () Bool)

(assert (=> b!536933 m!516257))

(declare-fun m!516259 () Bool)

(assert (=> b!536924 m!516259))

(declare-fun m!516261 () Bool)

(assert (=> b!536931 m!516261))

(assert (=> b!536934 m!516253))

(assert (=> b!536934 m!516253))

(declare-fun m!516263 () Bool)

(assert (=> b!536934 m!516263))

(assert (=> b!536936 m!516253))

(assert (=> b!536936 m!516253))

(declare-fun m!516265 () Bool)

(assert (=> b!536936 m!516265))

(assert (=> b!536936 m!516265))

(assert (=> b!536936 m!516253))

(declare-fun m!516267 () Bool)

(assert (=> b!536936 m!516267))

(declare-fun m!516269 () Bool)

(assert (=> b!536925 m!516269))

(declare-fun m!516271 () Bool)

(assert (=> start!48818 m!516271))

(declare-fun m!516273 () Bool)

(assert (=> start!48818 m!516273))

(declare-fun m!516275 () Bool)

(assert (=> b!536930 m!516275))

(assert (=> b!536930 m!516253))

(declare-fun m!516277 () Bool)

(assert (=> b!536927 m!516277))

(assert (=> b!536927 m!516253))

(assert (=> b!536935 m!516253))

(assert (=> b!536935 m!516253))

(declare-fun m!516279 () Bool)

(assert (=> b!536935 m!516279))

(declare-fun m!516281 () Bool)

(assert (=> b!536929 m!516281))

(push 1)

(assert (not b!536931))

