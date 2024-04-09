; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49610 () Bool)

(assert start!49610)

(declare-fun b!545352 () Bool)

(declare-fun res!339432 () Bool)

(declare-fun e!315230 () Bool)

(assert (=> b!545352 (=> (not res!339432) (not e!315230))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34379 0))(
  ( (array!34380 (arr!16514 (Array (_ BitVec 32) (_ BitVec 64))) (size!16878 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34379)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545352 (= res!339432 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16878 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16878 a!3154)) (= (select (arr!16514 a!3154) resIndex!32) (select (arr!16514 a!3154) j!147))))))

(declare-fun b!545353 () Bool)

(declare-fun e!315231 () Bool)

(declare-fun e!315229 () Bool)

(assert (=> b!545353 (= e!315231 e!315229)))

(declare-fun res!339430 () Bool)

(assert (=> b!545353 (=> (not res!339430) (not e!315229))))

(declare-fun lt!248841 () (_ BitVec 32))

(assert (=> b!545353 (= res!339430 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248841 #b00000000000000000000000000000000) (bvslt lt!248841 (size!16878 a!3154))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545353 (= lt!248841 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545354 () Bool)

(declare-fun res!339434 () Bool)

(declare-fun e!315227 () Bool)

(assert (=> b!545354 (=> (not res!339434) (not e!315227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545354 (= res!339434 (validKeyInArray!0 (select (arr!16514 a!3154) j!147)))))

(declare-fun b!545355 () Bool)

(declare-fun res!339439 () Bool)

(assert (=> b!545355 (=> (not res!339439) (not e!315227))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545355 (= res!339439 (and (= (size!16878 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16878 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16878 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545357 () Bool)

(declare-fun res!339429 () Bool)

(assert (=> b!545357 (=> (not res!339429) (not e!315230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34379 (_ BitVec 32)) Bool)

(assert (=> b!545357 (= res!339429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545358 () Bool)

(declare-fun e!315232 () Bool)

(assert (=> b!545358 (= e!315230 e!315232)))

(declare-fun res!339438 () Bool)

(assert (=> b!545358 (=> (not res!339438) (not e!315232))))

(declare-datatypes ((SeekEntryResult!4979 0))(
  ( (MissingZero!4979 (index!22140 (_ BitVec 32))) (Found!4979 (index!22141 (_ BitVec 32))) (Intermediate!4979 (undefined!5791 Bool) (index!22142 (_ BitVec 32)) (x!51094 (_ BitVec 32))) (Undefined!4979) (MissingVacant!4979 (index!22143 (_ BitVec 32))) )
))
(declare-fun lt!248840 () SeekEntryResult!4979)

(declare-fun lt!248839 () SeekEntryResult!4979)

(assert (=> b!545358 (= res!339438 (= lt!248840 lt!248839))))

(assert (=> b!545358 (= lt!248839 (Intermediate!4979 false resIndex!32 resX!32))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34379 (_ BitVec 32)) SeekEntryResult!4979)

(assert (=> b!545358 (= lt!248840 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16514 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545359 () Bool)

(declare-fun res!339440 () Bool)

(assert (=> b!545359 (=> (not res!339440) (not e!315227))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!545359 (= res!339440 (validKeyInArray!0 k!1998))))

(declare-fun b!545360 () Bool)

(declare-fun res!339435 () Bool)

(assert (=> b!545360 (=> (not res!339435) (not e!315230))))

(declare-datatypes ((List!10686 0))(
  ( (Nil!10683) (Cons!10682 (h!11646 (_ BitVec 64)) (t!16922 List!10686)) )
))
(declare-fun arrayNoDuplicates!0 (array!34379 (_ BitVec 32) List!10686) Bool)

(assert (=> b!545360 (= res!339435 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10683))))

(declare-fun b!545361 () Bool)

(assert (=> b!545361 (= e!315232 e!315231)))

(declare-fun res!339433 () Bool)

(assert (=> b!545361 (=> (not res!339433) (not e!315231))))

(declare-fun lt!248838 () SeekEntryResult!4979)

(assert (=> b!545361 (= res!339433 (and (= lt!248838 lt!248840) (not (= (select (arr!16514 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16514 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16514 a!3154) index!1177) (select (arr!16514 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545361 (= lt!248838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16514 a!3154) j!147) mask!3216) (select (arr!16514 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545356 () Bool)

(assert (=> b!545356 (= e!315227 e!315230)))

(declare-fun res!339437 () Bool)

(assert (=> b!545356 (=> (not res!339437) (not e!315230))))

(declare-fun lt!248842 () SeekEntryResult!4979)

(assert (=> b!545356 (= res!339437 (or (= lt!248842 (MissingZero!4979 i!1153)) (= lt!248842 (MissingVacant!4979 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34379 (_ BitVec 32)) SeekEntryResult!4979)

(assert (=> b!545356 (= lt!248842 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!339431 () Bool)

(assert (=> start!49610 (=> (not res!339431) (not e!315227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49610 (= res!339431 (validMask!0 mask!3216))))

(assert (=> start!49610 e!315227))

(assert (=> start!49610 true))

(declare-fun array_inv!12288 (array!34379) Bool)

(assert (=> start!49610 (array_inv!12288 a!3154)))

(declare-fun lt!248843 () SeekEntryResult!4979)

(declare-fun b!545362 () Bool)

(assert (=> b!545362 (= e!315229 (and (= lt!248843 lt!248839) (not (= lt!248838 lt!248843))))))

(assert (=> b!545362 (= lt!248843 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248841 (select (arr!16514 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545363 () Bool)

(declare-fun res!339436 () Bool)

(assert (=> b!545363 (=> (not res!339436) (not e!315227))))

(declare-fun arrayContainsKey!0 (array!34379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545363 (= res!339436 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49610 res!339431) b!545355))

(assert (= (and b!545355 res!339439) b!545354))

(assert (= (and b!545354 res!339434) b!545359))

(assert (= (and b!545359 res!339440) b!545363))

(assert (= (and b!545363 res!339436) b!545356))

(assert (= (and b!545356 res!339437) b!545357))

(assert (= (and b!545357 res!339429) b!545360))

(assert (= (and b!545360 res!339435) b!545352))

(assert (= (and b!545352 res!339432) b!545358))

(assert (= (and b!545358 res!339438) b!545361))

(assert (= (and b!545361 res!339433) b!545353))

(assert (= (and b!545353 res!339430) b!545362))

(declare-fun m!522947 () Bool)

(assert (=> b!545363 m!522947))

(declare-fun m!522949 () Bool)

(assert (=> b!545352 m!522949))

(declare-fun m!522951 () Bool)

(assert (=> b!545352 m!522951))

(assert (=> b!545354 m!522951))

(assert (=> b!545354 m!522951))

(declare-fun m!522953 () Bool)

(assert (=> b!545354 m!522953))

(declare-fun m!522955 () Bool)

(assert (=> b!545357 m!522955))

(declare-fun m!522957 () Bool)

(assert (=> b!545359 m!522957))

(declare-fun m!522959 () Bool)

(assert (=> b!545361 m!522959))

(assert (=> b!545361 m!522951))

(assert (=> b!545361 m!522951))

(declare-fun m!522961 () Bool)

(assert (=> b!545361 m!522961))

(assert (=> b!545361 m!522961))

(assert (=> b!545361 m!522951))

(declare-fun m!522963 () Bool)

(assert (=> b!545361 m!522963))

(assert (=> b!545362 m!522951))

(assert (=> b!545362 m!522951))

(declare-fun m!522965 () Bool)

(assert (=> b!545362 m!522965))

(declare-fun m!522967 () Bool)

(assert (=> b!545353 m!522967))

(declare-fun m!522969 () Bool)

(assert (=> b!545360 m!522969))

(assert (=> b!545358 m!522951))

(assert (=> b!545358 m!522951))

(declare-fun m!522971 () Bool)

(assert (=> b!545358 m!522971))

(declare-fun m!522973 () Bool)

(assert (=> start!49610 m!522973))

(declare-fun m!522975 () Bool)

(assert (=> start!49610 m!522975))

(declare-fun m!522977 () Bool)

(assert (=> b!545356 m!522977))

(push 1)

(assert (not start!49610))

(assert (not b!545358))

(assert (not b!545356))

(assert (not b!545354))

(assert (not b!545363))

(assert (not b!545353))

(assert (not b!545361))

(assert (