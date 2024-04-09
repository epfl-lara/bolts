; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49606 () Bool)

(assert start!49606)

(declare-fun b!545280 () Bool)

(declare-fun res!339362 () Bool)

(declare-fun e!315192 () Bool)

(assert (=> b!545280 (=> (not res!339362) (not e!315192))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34375 0))(
  ( (array!34376 (arr!16512 (Array (_ BitVec 32) (_ BitVec 64))) (size!16876 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34375)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545280 (= res!339362 (and (= (size!16876 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16876 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16876 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545281 () Bool)

(declare-fun res!339357 () Bool)

(declare-fun e!315195 () Bool)

(assert (=> b!545281 (=> (not res!339357) (not e!315195))))

(declare-datatypes ((List!10684 0))(
  ( (Nil!10681) (Cons!10680 (h!11644 (_ BitVec 64)) (t!16920 List!10684)) )
))
(declare-fun arrayNoDuplicates!0 (array!34375 (_ BitVec 32) List!10684) Bool)

(assert (=> b!545281 (= res!339357 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10681))))

(declare-fun b!545282 () Bool)

(declare-fun e!315196 () Bool)

(declare-fun e!315193 () Bool)

(assert (=> b!545282 (= e!315196 e!315193)))

(declare-fun res!339367 () Bool)

(assert (=> b!545282 (=> (not res!339367) (not e!315193))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248804 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545282 (= res!339367 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248804 #b00000000000000000000000000000000) (bvslt lt!248804 (size!16876 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545282 (= lt!248804 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!339365 () Bool)

(assert (=> start!49606 (=> (not res!339365) (not e!315192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49606 (= res!339365 (validMask!0 mask!3216))))

(assert (=> start!49606 e!315192))

(assert (=> start!49606 true))

(declare-fun array_inv!12286 (array!34375) Bool)

(assert (=> start!49606 (array_inv!12286 a!3154)))

(declare-fun b!545283 () Bool)

(declare-fun res!339364 () Bool)

(assert (=> b!545283 (=> (not res!339364) (not e!315192))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545283 (= res!339364 (validKeyInArray!0 k!1998))))

(declare-fun b!545284 () Bool)

(declare-fun e!315191 () Bool)

(assert (=> b!545284 (= e!315191 e!315196)))

(declare-fun res!339368 () Bool)

(assert (=> b!545284 (=> (not res!339368) (not e!315196))))

(declare-datatypes ((SeekEntryResult!4977 0))(
  ( (MissingZero!4977 (index!22132 (_ BitVec 32))) (Found!4977 (index!22133 (_ BitVec 32))) (Intermediate!4977 (undefined!5789 Bool) (index!22134 (_ BitVec 32)) (x!51092 (_ BitVec 32))) (Undefined!4977) (MissingVacant!4977 (index!22135 (_ BitVec 32))) )
))
(declare-fun lt!248802 () SeekEntryResult!4977)

(declare-fun lt!248805 () SeekEntryResult!4977)

(assert (=> b!545284 (= res!339368 (and (= lt!248805 lt!248802) (not (= (select (arr!16512 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16512 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16512 a!3154) index!1177) (select (arr!16512 a!3154) j!147)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34375 (_ BitVec 32)) SeekEntryResult!4977)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545284 (= lt!248805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16512 a!3154) j!147) mask!3216) (select (arr!16512 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545285 () Bool)

(declare-fun res!339360 () Bool)

(assert (=> b!545285 (=> (not res!339360) (not e!315195))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545285 (= res!339360 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16876 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16876 a!3154)) (= (select (arr!16512 a!3154) resIndex!32) (select (arr!16512 a!3154) j!147))))))

(declare-fun b!545286 () Bool)

(declare-fun lt!248803 () SeekEntryResult!4977)

(declare-fun lt!248806 () SeekEntryResult!4977)

(assert (=> b!545286 (= e!315193 (and (= lt!248803 lt!248806) (not (= lt!248805 lt!248803))))))

(assert (=> b!545286 (= lt!248803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248804 (select (arr!16512 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545287 () Bool)

(declare-fun res!339361 () Bool)

(assert (=> b!545287 (=> (not res!339361) (not e!315195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34375 (_ BitVec 32)) Bool)

(assert (=> b!545287 (= res!339361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545288 () Bool)

(declare-fun res!339358 () Bool)

(assert (=> b!545288 (=> (not res!339358) (not e!315192))))

(assert (=> b!545288 (= res!339358 (validKeyInArray!0 (select (arr!16512 a!3154) j!147)))))

(declare-fun b!545289 () Bool)

(assert (=> b!545289 (= e!315192 e!315195)))

(declare-fun res!339363 () Bool)

(assert (=> b!545289 (=> (not res!339363) (not e!315195))))

(declare-fun lt!248807 () SeekEntryResult!4977)

(assert (=> b!545289 (= res!339363 (or (= lt!248807 (MissingZero!4977 i!1153)) (= lt!248807 (MissingVacant!4977 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34375 (_ BitVec 32)) SeekEntryResult!4977)

(assert (=> b!545289 (= lt!248807 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545290 () Bool)

(assert (=> b!545290 (= e!315195 e!315191)))

(declare-fun res!339366 () Bool)

(assert (=> b!545290 (=> (not res!339366) (not e!315191))))

(assert (=> b!545290 (= res!339366 (= lt!248802 lt!248806))))

(assert (=> b!545290 (= lt!248806 (Intermediate!4977 false resIndex!32 resX!32))))

(assert (=> b!545290 (= lt!248802 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16512 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545291 () Bool)

(declare-fun res!339359 () Bool)

(assert (=> b!545291 (=> (not res!339359) (not e!315192))))

(declare-fun arrayContainsKey!0 (array!34375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545291 (= res!339359 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49606 res!339365) b!545280))

(assert (= (and b!545280 res!339362) b!545288))

(assert (= (and b!545288 res!339358) b!545283))

(assert (= (and b!545283 res!339364) b!545291))

(assert (= (and b!545291 res!339359) b!545289))

(assert (= (and b!545289 res!339363) b!545287))

(assert (= (and b!545287 res!339361) b!545281))

(assert (= (and b!545281 res!339357) b!545285))

(assert (= (and b!545285 res!339360) b!545290))

(assert (= (and b!545290 res!339366) b!545284))

(assert (= (and b!545284 res!339368) b!545282))

(assert (= (and b!545282 res!339367) b!545286))

(declare-fun m!522883 () Bool)

(assert (=> b!545287 m!522883))

(declare-fun m!522885 () Bool)

(assert (=> start!49606 m!522885))

(declare-fun m!522887 () Bool)

(assert (=> start!49606 m!522887))

(declare-fun m!522889 () Bool)

(assert (=> b!545285 m!522889))

(declare-fun m!522891 () Bool)

(assert (=> b!545285 m!522891))

(declare-fun m!522893 () Bool)

(assert (=> b!545282 m!522893))

(declare-fun m!522895 () Bool)

(assert (=> b!545283 m!522895))

(assert (=> b!545286 m!522891))

(assert (=> b!545286 m!522891))

(declare-fun m!522897 () Bool)

(assert (=> b!545286 m!522897))

(declare-fun m!522899 () Bool)

(assert (=> b!545281 m!522899))

(assert (=> b!545288 m!522891))

(assert (=> b!545288 m!522891))

(declare-fun m!522901 () Bool)

(assert (=> b!545288 m!522901))

(declare-fun m!522903 () Bool)

(assert (=> b!545284 m!522903))

(assert (=> b!545284 m!522891))

(assert (=> b!545284 m!522891))

(declare-fun m!522905 () Bool)

(assert (=> b!545284 m!522905))

(assert (=> b!545284 m!522905))

(assert (=> b!545284 m!522891))

(declare-fun m!522907 () Bool)

(assert (=> b!545284 m!522907))

(declare-fun m!522909 () Bool)

(assert (=> b!545291 m!522909))

(assert (=> b!545290 m!522891))

(assert (=> b!545290 m!522891))

(declare-fun m!522911 () Bool)

(assert (=> b!545290 m!522911))

(declare-fun m!522913 () Bool)

(assert (=> b!545289 m!522913))

(push 1)

