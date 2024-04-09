; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86450 () Bool)

(assert start!86450)

(declare-fun b!1000161 () Bool)

(declare-fun e!563813 () Bool)

(declare-fun e!563810 () Bool)

(assert (=> b!1000161 (= e!563813 e!563810)))

(declare-fun res!669802 () Bool)

(assert (=> b!1000161 (=> (not res!669802) (not e!563810))))

(declare-datatypes ((array!63203 0))(
  ( (array!63204 (arr!30423 (Array (_ BitVec 32) (_ BitVec 64))) (size!30926 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63203)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9355 0))(
  ( (MissingZero!9355 (index!39790 (_ BitVec 32))) (Found!9355 (index!39791 (_ BitVec 32))) (Intermediate!9355 (undefined!10167 Bool) (index!39792 (_ BitVec 32)) (x!87248 (_ BitVec 32))) (Undefined!9355) (MissingVacant!9355 (index!39793 (_ BitVec 32))) )
))
(declare-fun lt!442199 () SeekEntryResult!9355)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63203 (_ BitVec 32)) SeekEntryResult!9355)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000161 (= res!669802 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30423 a!3219) j!170) mask!3464) (select (arr!30423 a!3219) j!170) a!3219 mask!3464) lt!442199))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000161 (= lt!442199 (Intermediate!9355 false resIndex!38 resX!38))))

(declare-fun res!669795 () Bool)

(declare-fun e!563811 () Bool)

(assert (=> start!86450 (=> (not res!669795) (not e!563811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86450 (= res!669795 (validMask!0 mask!3464))))

(assert (=> start!86450 e!563811))

(declare-fun array_inv!23413 (array!63203) Bool)

(assert (=> start!86450 (array_inv!23413 a!3219)))

(assert (=> start!86450 true))

(declare-fun b!1000162 () Bool)

(assert (=> b!1000162 (= e!563811 e!563813)))

(declare-fun res!669800 () Bool)

(assert (=> b!1000162 (=> (not res!669800) (not e!563813))))

(declare-fun lt!442198 () SeekEntryResult!9355)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000162 (= res!669800 (or (= lt!442198 (MissingVacant!9355 i!1194)) (= lt!442198 (MissingZero!9355 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63203 (_ BitVec 32)) SeekEntryResult!9355)

(assert (=> b!1000162 (= lt!442198 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000163 () Bool)

(declare-fun res!669798 () Bool)

(assert (=> b!1000163 (=> (not res!669798) (not e!563813))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1000163 (= res!669798 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30926 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30926 a!3219))))))

(declare-fun b!1000164 () Bool)

(declare-fun res!669797 () Bool)

(assert (=> b!1000164 (=> (not res!669797) (not e!563813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63203 (_ BitVec 32)) Bool)

(assert (=> b!1000164 (= res!669797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000165 () Bool)

(assert (=> b!1000165 (= e!563810 false)))

(declare-fun lt!442200 () SeekEntryResult!9355)

(assert (=> b!1000165 (= lt!442200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30423 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30423 a!3219) i!1194 k!2224) j!170) (array!63204 (store (arr!30423 a!3219) i!1194 k!2224) (size!30926 a!3219)) mask!3464))))

(declare-fun b!1000166 () Bool)

(declare-fun res!669803 () Bool)

(assert (=> b!1000166 (=> (not res!669803) (not e!563813))))

(declare-datatypes ((List!21225 0))(
  ( (Nil!21222) (Cons!21221 (h!22398 (_ BitVec 64)) (t!30234 List!21225)) )
))
(declare-fun arrayNoDuplicates!0 (array!63203 (_ BitVec 32) List!21225) Bool)

(assert (=> b!1000166 (= res!669803 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21222))))

(declare-fun b!1000167 () Bool)

(declare-fun res!669804 () Bool)

(assert (=> b!1000167 (=> (not res!669804) (not e!563811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000167 (= res!669804 (validKeyInArray!0 (select (arr!30423 a!3219) j!170)))))

(declare-fun b!1000168 () Bool)

(declare-fun res!669799 () Bool)

(assert (=> b!1000168 (=> (not res!669799) (not e!563811))))

(assert (=> b!1000168 (= res!669799 (and (= (size!30926 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30926 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30926 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000169 () Bool)

(declare-fun res!669801 () Bool)

(assert (=> b!1000169 (=> (not res!669801) (not e!563811))))

(assert (=> b!1000169 (= res!669801 (validKeyInArray!0 k!2224))))

(declare-fun b!1000170 () Bool)

(declare-fun res!669796 () Bool)

(assert (=> b!1000170 (=> (not res!669796) (not e!563811))))

(declare-fun arrayContainsKey!0 (array!63203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000170 (= res!669796 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000171 () Bool)

(declare-fun res!669805 () Bool)

(assert (=> b!1000171 (=> (not res!669805) (not e!563810))))

(assert (=> b!1000171 (= res!669805 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30423 a!3219) j!170) a!3219 mask!3464) lt!442199))))

(assert (= (and start!86450 res!669795) b!1000168))

(assert (= (and b!1000168 res!669799) b!1000167))

(assert (= (and b!1000167 res!669804) b!1000169))

(assert (= (and b!1000169 res!669801) b!1000170))

(assert (= (and b!1000170 res!669796) b!1000162))

(assert (= (and b!1000162 res!669800) b!1000164))

(assert (= (and b!1000164 res!669797) b!1000166))

(assert (= (and b!1000166 res!669803) b!1000163))

(assert (= (and b!1000163 res!669798) b!1000161))

(assert (= (and b!1000161 res!669802) b!1000171))

(assert (= (and b!1000171 res!669805) b!1000165))

(declare-fun m!926455 () Bool)

(assert (=> b!1000170 m!926455))

(declare-fun m!926457 () Bool)

(assert (=> b!1000164 m!926457))

(declare-fun m!926459 () Bool)

(assert (=> b!1000169 m!926459))

(declare-fun m!926461 () Bool)

(assert (=> b!1000165 m!926461))

(declare-fun m!926463 () Bool)

(assert (=> b!1000165 m!926463))

(assert (=> b!1000165 m!926463))

(declare-fun m!926465 () Bool)

(assert (=> b!1000165 m!926465))

(assert (=> b!1000165 m!926465))

(assert (=> b!1000165 m!926463))

(declare-fun m!926467 () Bool)

(assert (=> b!1000165 m!926467))

(declare-fun m!926469 () Bool)

(assert (=> b!1000162 m!926469))

(declare-fun m!926471 () Bool)

(assert (=> b!1000171 m!926471))

(assert (=> b!1000171 m!926471))

(declare-fun m!926473 () Bool)

(assert (=> b!1000171 m!926473))

(declare-fun m!926475 () Bool)

(assert (=> start!86450 m!926475))

(declare-fun m!926477 () Bool)

(assert (=> start!86450 m!926477))

(assert (=> b!1000161 m!926471))

(assert (=> b!1000161 m!926471))

(declare-fun m!926479 () Bool)

(assert (=> b!1000161 m!926479))

(assert (=> b!1000161 m!926479))

(assert (=> b!1000161 m!926471))

(declare-fun m!926481 () Bool)

(assert (=> b!1000161 m!926481))

(assert (=> b!1000167 m!926471))

(assert (=> b!1000167 m!926471))

(declare-fun m!926483 () Bool)

(assert (=> b!1000167 m!926483))

(declare-fun m!926485 () Bool)

(assert (=> b!1000166 m!926485))

(push 1)

