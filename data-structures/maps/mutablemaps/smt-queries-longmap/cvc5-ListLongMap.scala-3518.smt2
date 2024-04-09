; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48694 () Bool)

(assert start!48694)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun b!534673 () Bool)

(declare-datatypes ((array!33862 0))(
  ( (array!33863 (arr!16266 (Array (_ BitVec 32) (_ BitVec 64))) (size!16630 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33862)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun e!310738 () Bool)

(assert (=> b!534673 (= e!310738 (and (not (= (select (arr!16266 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16266 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16266 a!3154) index!1177) (select (arr!16266 a!3154) j!147)) (= index!1177 resIndex!32) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!534674 () Bool)

(declare-fun res!330038 () Bool)

(declare-fun e!310736 () Bool)

(assert (=> b!534674 (=> (not res!330038) (not e!310736))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534674 (= res!330038 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16630 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16630 a!3154)) (= (select (arr!16266 a!3154) resIndex!32) (select (arr!16266 a!3154) j!147))))))

(declare-fun b!534675 () Bool)

(declare-fun res!330035 () Bool)

(assert (=> b!534675 (=> (not res!330035) (not e!310736))))

(declare-datatypes ((List!10438 0))(
  ( (Nil!10435) (Cons!10434 (h!11377 (_ BitVec 64)) (t!16674 List!10438)) )
))
(declare-fun arrayNoDuplicates!0 (array!33862 (_ BitVec 32) List!10438) Bool)

(assert (=> b!534675 (= res!330035 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10435))))

(declare-fun b!534676 () Bool)

(declare-fun res!330029 () Bool)

(declare-fun e!310737 () Bool)

(assert (=> b!534676 (=> (not res!330029) (not e!310737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534676 (= res!330029 (validKeyInArray!0 (select (arr!16266 a!3154) j!147)))))

(declare-fun b!534677 () Bool)

(declare-fun res!330033 () Bool)

(assert (=> b!534677 (=> (not res!330033) (not e!310736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33862 (_ BitVec 32)) Bool)

(assert (=> b!534677 (= res!330033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534678 () Bool)

(assert (=> b!534678 (= e!310737 e!310736)))

(declare-fun res!330031 () Bool)

(assert (=> b!534678 (=> (not res!330031) (not e!310736))))

(declare-datatypes ((SeekEntryResult!4731 0))(
  ( (MissingZero!4731 (index!21148 (_ BitVec 32))) (Found!4731 (index!21149 (_ BitVec 32))) (Intermediate!4731 (undefined!5543 Bool) (index!21150 (_ BitVec 32)) (x!50133 (_ BitVec 32))) (Undefined!4731) (MissingVacant!4731 (index!21151 (_ BitVec 32))) )
))
(declare-fun lt!245681 () SeekEntryResult!4731)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534678 (= res!330031 (or (= lt!245681 (MissingZero!4731 i!1153)) (= lt!245681 (MissingVacant!4731 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33862 (_ BitVec 32)) SeekEntryResult!4731)

(assert (=> b!534678 (= lt!245681 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534679 () Bool)

(declare-fun res!330030 () Bool)

(assert (=> b!534679 (=> (not res!330030) (not e!310738))))

(declare-fun lt!245680 () SeekEntryResult!4731)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33862 (_ BitVec 32)) SeekEntryResult!4731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534679 (= res!330030 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16266 a!3154) j!147) mask!3216) (select (arr!16266 a!3154) j!147) a!3154 mask!3216) lt!245680))))

(declare-fun b!534680 () Bool)

(declare-fun res!330028 () Bool)

(assert (=> b!534680 (=> (not res!330028) (not e!310737))))

(declare-fun arrayContainsKey!0 (array!33862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534680 (= res!330028 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534681 () Bool)

(declare-fun res!330036 () Bool)

(assert (=> b!534681 (=> (not res!330036) (not e!310737))))

(assert (=> b!534681 (= res!330036 (and (= (size!16630 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16630 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16630 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534682 () Bool)

(declare-fun res!330034 () Bool)

(assert (=> b!534682 (=> (not res!330034) (not e!310737))))

(assert (=> b!534682 (= res!330034 (validKeyInArray!0 k!1998))))

(declare-fun res!330032 () Bool)

(assert (=> start!48694 (=> (not res!330032) (not e!310737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48694 (= res!330032 (validMask!0 mask!3216))))

(assert (=> start!48694 e!310737))

(assert (=> start!48694 true))

(declare-fun array_inv!12040 (array!33862) Bool)

(assert (=> start!48694 (array_inv!12040 a!3154)))

(declare-fun b!534683 () Bool)

(assert (=> b!534683 (= e!310736 e!310738)))

(declare-fun res!330037 () Bool)

(assert (=> b!534683 (=> (not res!330037) (not e!310738))))

(assert (=> b!534683 (= res!330037 (= lt!245680 (Intermediate!4731 false resIndex!32 resX!32)))))

(assert (=> b!534683 (= lt!245680 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16266 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48694 res!330032) b!534681))

(assert (= (and b!534681 res!330036) b!534676))

(assert (= (and b!534676 res!330029) b!534682))

(assert (= (and b!534682 res!330034) b!534680))

(assert (= (and b!534680 res!330028) b!534678))

(assert (= (and b!534678 res!330031) b!534677))

(assert (= (and b!534677 res!330033) b!534675))

(assert (= (and b!534675 res!330035) b!534674))

(assert (= (and b!534674 res!330038) b!534683))

(assert (= (and b!534683 res!330037) b!534679))

(assert (= (and b!534679 res!330030) b!534673))

(declare-fun m!514369 () Bool)

(assert (=> b!534673 m!514369))

(declare-fun m!514371 () Bool)

(assert (=> b!534673 m!514371))

(declare-fun m!514373 () Bool)

(assert (=> b!534682 m!514373))

(declare-fun m!514375 () Bool)

(assert (=> b!534674 m!514375))

(assert (=> b!534674 m!514371))

(declare-fun m!514377 () Bool)

(assert (=> b!534675 m!514377))

(declare-fun m!514379 () Bool)

(assert (=> b!534680 m!514379))

(declare-fun m!514381 () Bool)

(assert (=> b!534677 m!514381))

(declare-fun m!514383 () Bool)

(assert (=> b!534678 m!514383))

(assert (=> b!534676 m!514371))

(assert (=> b!534676 m!514371))

(declare-fun m!514385 () Bool)

(assert (=> b!534676 m!514385))

(assert (=> b!534679 m!514371))

(assert (=> b!534679 m!514371))

(declare-fun m!514387 () Bool)

(assert (=> b!534679 m!514387))

(assert (=> b!534679 m!514387))

(assert (=> b!534679 m!514371))

(declare-fun m!514389 () Bool)

(assert (=> b!534679 m!514389))

(declare-fun m!514391 () Bool)

(assert (=> start!48694 m!514391))

(declare-fun m!514393 () Bool)

(assert (=> start!48694 m!514393))

(assert (=> b!534683 m!514371))

(assert (=> b!534683 m!514371))

(declare-fun m!514395 () Bool)

(assert (=> b!534683 m!514395))

(push 1)

(assert (not b!534680))

(assert (not b!534677))

(assert (not start!48694))

(assert (not b!534675))

(assert (not b!534676))

(assert (not b!534678))

(assert (not b!534679))

(assert (not b!534682))

(assert (not b!534683))

