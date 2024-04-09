; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48686 () Bool)

(assert start!48686)

(declare-fun b!534551 () Bool)

(declare-fun res!329909 () Bool)

(declare-fun e!310697 () Bool)

(assert (=> b!534551 (=> (not res!329909) (not e!310697))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33854 0))(
  ( (array!33855 (arr!16262 (Array (_ BitVec 32) (_ BitVec 64))) (size!16626 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33854)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534551 (= res!329909 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16626 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16626 a!3154)) (= (select (arr!16262 a!3154) resIndex!32) (select (arr!16262 a!3154) j!147))))))

(declare-fun b!534552 () Bool)

(declare-fun res!329907 () Bool)

(declare-fun e!310699 () Bool)

(assert (=> b!534552 (=> (not res!329907) (not e!310699))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534552 (= res!329907 (and (= (size!16626 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16626 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16626 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534553 () Bool)

(declare-fun res!329911 () Bool)

(assert (=> b!534553 (=> (not res!329911) (not e!310697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33854 (_ BitVec 32)) Bool)

(assert (=> b!534553 (= res!329911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534554 () Bool)

(declare-fun res!329914 () Bool)

(assert (=> b!534554 (=> (not res!329914) (not e!310697))))

(declare-datatypes ((SeekEntryResult!4727 0))(
  ( (MissingZero!4727 (index!21132 (_ BitVec 32))) (Found!4727 (index!21133 (_ BitVec 32))) (Intermediate!4727 (undefined!5539 Bool) (index!21134 (_ BitVec 32)) (x!50113 (_ BitVec 32))) (Undefined!4727) (MissingVacant!4727 (index!21135 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33854 (_ BitVec 32)) SeekEntryResult!4727)

(assert (=> b!534554 (= res!329914 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16262 a!3154) j!147) a!3154 mask!3216) (Intermediate!4727 false resIndex!32 resX!32)))))

(declare-fun res!329915 () Bool)

(assert (=> start!48686 (=> (not res!329915) (not e!310699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48686 (= res!329915 (validMask!0 mask!3216))))

(assert (=> start!48686 e!310699))

(assert (=> start!48686 true))

(declare-fun array_inv!12036 (array!33854) Bool)

(assert (=> start!48686 (array_inv!12036 a!3154)))

(declare-fun b!534555 () Bool)

(declare-fun res!329908 () Bool)

(assert (=> b!534555 (=> (not res!329908) (not e!310699))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534555 (= res!329908 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534556 () Bool)

(declare-fun res!329912 () Bool)

(assert (=> b!534556 (=> (not res!329912) (not e!310699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534556 (= res!329912 (validKeyInArray!0 k!1998))))

(declare-fun b!534557 () Bool)

(declare-fun res!329913 () Bool)

(assert (=> b!534557 (=> (not res!329913) (not e!310699))))

(assert (=> b!534557 (= res!329913 (validKeyInArray!0 (select (arr!16262 a!3154) j!147)))))

(declare-fun b!534558 () Bool)

(assert (=> b!534558 (= e!310697 false)))

(declare-fun lt!245657 () SeekEntryResult!4727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534558 (= lt!245657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16262 a!3154) j!147) mask!3216) (select (arr!16262 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534559 () Bool)

(declare-fun res!329906 () Bool)

(assert (=> b!534559 (=> (not res!329906) (not e!310697))))

(declare-datatypes ((List!10434 0))(
  ( (Nil!10431) (Cons!10430 (h!11373 (_ BitVec 64)) (t!16670 List!10434)) )
))
(declare-fun arrayNoDuplicates!0 (array!33854 (_ BitVec 32) List!10434) Bool)

(assert (=> b!534559 (= res!329906 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10431))))

(declare-fun b!534560 () Bool)

(assert (=> b!534560 (= e!310699 e!310697)))

(declare-fun res!329910 () Bool)

(assert (=> b!534560 (=> (not res!329910) (not e!310697))))

(declare-fun lt!245656 () SeekEntryResult!4727)

(assert (=> b!534560 (= res!329910 (or (= lt!245656 (MissingZero!4727 i!1153)) (= lt!245656 (MissingVacant!4727 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33854 (_ BitVec 32)) SeekEntryResult!4727)

(assert (=> b!534560 (= lt!245656 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48686 res!329915) b!534552))

(assert (= (and b!534552 res!329907) b!534557))

(assert (= (and b!534557 res!329913) b!534556))

(assert (= (and b!534556 res!329912) b!534555))

(assert (= (and b!534555 res!329908) b!534560))

(assert (= (and b!534560 res!329910) b!534553))

(assert (= (and b!534553 res!329911) b!534559))

(assert (= (and b!534559 res!329906) b!534551))

(assert (= (and b!534551 res!329909) b!534554))

(assert (= (and b!534554 res!329914) b!534558))

(declare-fun m!514265 () Bool)

(assert (=> start!48686 m!514265))

(declare-fun m!514267 () Bool)

(assert (=> start!48686 m!514267))

(declare-fun m!514269 () Bool)

(assert (=> b!534551 m!514269))

(declare-fun m!514271 () Bool)

(assert (=> b!534551 m!514271))

(declare-fun m!514273 () Bool)

(assert (=> b!534556 m!514273))

(declare-fun m!514275 () Bool)

(assert (=> b!534553 m!514275))

(assert (=> b!534557 m!514271))

(assert (=> b!534557 m!514271))

(declare-fun m!514277 () Bool)

(assert (=> b!534557 m!514277))

(declare-fun m!514279 () Bool)

(assert (=> b!534559 m!514279))

(assert (=> b!534554 m!514271))

(assert (=> b!534554 m!514271))

(declare-fun m!514281 () Bool)

(assert (=> b!534554 m!514281))

(declare-fun m!514283 () Bool)

(assert (=> b!534560 m!514283))

(assert (=> b!534558 m!514271))

(assert (=> b!534558 m!514271))

(declare-fun m!514285 () Bool)

(assert (=> b!534558 m!514285))

(assert (=> b!534558 m!514285))

(assert (=> b!534558 m!514271))

(declare-fun m!514287 () Bool)

(assert (=> b!534558 m!514287))

(declare-fun m!514289 () Bool)

(assert (=> b!534555 m!514289))

(push 1)

(assert (not b!534556))

(assert (not start!48686))

(assert (not b!534555))

