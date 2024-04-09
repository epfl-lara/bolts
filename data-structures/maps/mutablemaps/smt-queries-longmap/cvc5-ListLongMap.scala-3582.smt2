; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49294 () Bool)

(assert start!49294)

(declare-fun b!542307 () Bool)

(declare-fun res!337019 () Bool)

(declare-fun e!313881 () Bool)

(assert (=> b!542307 (=> (not res!337019) (not e!313881))))

(declare-datatypes ((array!34258 0))(
  ( (array!34259 (arr!16458 (Array (_ BitVec 32) (_ BitVec 64))) (size!16822 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34258)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542307 (= res!337019 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542309 () Bool)

(declare-fun res!337012 () Bool)

(assert (=> b!542309 (=> (not res!337012) (not e!313881))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542309 (= res!337012 (and (= (size!16822 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16822 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16822 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542310 () Bool)

(declare-fun e!313880 () Bool)

(assert (=> b!542310 (= e!313881 e!313880)))

(declare-fun res!337011 () Bool)

(assert (=> b!542310 (=> (not res!337011) (not e!313880))))

(declare-datatypes ((SeekEntryResult!4923 0))(
  ( (MissingZero!4923 (index!21916 (_ BitVec 32))) (Found!4923 (index!21917 (_ BitVec 32))) (Intermediate!4923 (undefined!5735 Bool) (index!21918 (_ BitVec 32)) (x!50861 (_ BitVec 32))) (Undefined!4923) (MissingVacant!4923 (index!21919 (_ BitVec 32))) )
))
(declare-fun lt!247899 () SeekEntryResult!4923)

(assert (=> b!542310 (= res!337011 (or (= lt!247899 (MissingZero!4923 i!1153)) (= lt!247899 (MissingVacant!4923 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34258 (_ BitVec 32)) SeekEntryResult!4923)

(assert (=> b!542310 (= lt!247899 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542311 () Bool)

(declare-fun res!337017 () Bool)

(declare-fun e!313879 () Bool)

(assert (=> b!542311 (=> (not res!337017) (not e!313879))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!542311 (= res!337017 (and (not (= (select (arr!16458 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16458 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16458 a!3154) index!1177) (select (arr!16458 a!3154) j!147)))))))

(declare-fun b!542312 () Bool)

(declare-fun res!337010 () Bool)

(assert (=> b!542312 (=> (not res!337010) (not e!313880))))

(declare-datatypes ((List!10630 0))(
  ( (Nil!10627) (Cons!10626 (h!11581 (_ BitVec 64)) (t!16866 List!10630)) )
))
(declare-fun arrayNoDuplicates!0 (array!34258 (_ BitVec 32) List!10630) Bool)

(assert (=> b!542312 (= res!337010 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10627))))

(declare-fun b!542313 () Bool)

(declare-fun res!337013 () Bool)

(assert (=> b!542313 (=> (not res!337013) (not e!313881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542313 (= res!337013 (validKeyInArray!0 (select (arr!16458 a!3154) j!147)))))

(declare-fun b!542314 () Bool)

(assert (=> b!542314 (= e!313879 false)))

(declare-fun lt!247901 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542314 (= lt!247901 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542315 () Bool)

(declare-fun res!337016 () Bool)

(assert (=> b!542315 (=> (not res!337016) (not e!313879))))

(declare-fun lt!247900 () SeekEntryResult!4923)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34258 (_ BitVec 32)) SeekEntryResult!4923)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542315 (= res!337016 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16458 a!3154) j!147) mask!3216) (select (arr!16458 a!3154) j!147) a!3154 mask!3216) lt!247900))))

(declare-fun b!542316 () Bool)

(declare-fun res!337008 () Bool)

(assert (=> b!542316 (=> (not res!337008) (not e!313881))))

(assert (=> b!542316 (= res!337008 (validKeyInArray!0 k!1998))))

(declare-fun res!337014 () Bool)

(assert (=> start!49294 (=> (not res!337014) (not e!313881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49294 (= res!337014 (validMask!0 mask!3216))))

(assert (=> start!49294 e!313881))

(assert (=> start!49294 true))

(declare-fun array_inv!12232 (array!34258) Bool)

(assert (=> start!49294 (array_inv!12232 a!3154)))

(declare-fun b!542308 () Bool)

(assert (=> b!542308 (= e!313880 e!313879)))

(declare-fun res!337015 () Bool)

(assert (=> b!542308 (=> (not res!337015) (not e!313879))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542308 (= res!337015 (= lt!247900 (Intermediate!4923 false resIndex!32 resX!32)))))

(assert (=> b!542308 (= lt!247900 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16458 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542317 () Bool)

(declare-fun res!337009 () Bool)

(assert (=> b!542317 (=> (not res!337009) (not e!313880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34258 (_ BitVec 32)) Bool)

(assert (=> b!542317 (= res!337009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542318 () Bool)

(declare-fun res!337018 () Bool)

(assert (=> b!542318 (=> (not res!337018) (not e!313880))))

(assert (=> b!542318 (= res!337018 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16822 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16822 a!3154)) (= (select (arr!16458 a!3154) resIndex!32) (select (arr!16458 a!3154) j!147))))))

(assert (= (and start!49294 res!337014) b!542309))

(assert (= (and b!542309 res!337012) b!542313))

(assert (= (and b!542313 res!337013) b!542316))

(assert (= (and b!542316 res!337008) b!542307))

(assert (= (and b!542307 res!337019) b!542310))

(assert (= (and b!542310 res!337011) b!542317))

(assert (= (and b!542317 res!337009) b!542312))

(assert (= (and b!542312 res!337010) b!542318))

(assert (= (and b!542318 res!337018) b!542308))

(assert (= (and b!542308 res!337015) b!542315))

(assert (= (and b!542315 res!337016) b!542311))

(assert (= (and b!542311 res!337017) b!542314))

(declare-fun m!520591 () Bool)

(assert (=> b!542315 m!520591))

(assert (=> b!542315 m!520591))

(declare-fun m!520593 () Bool)

(assert (=> b!542315 m!520593))

(assert (=> b!542315 m!520593))

(assert (=> b!542315 m!520591))

(declare-fun m!520595 () Bool)

(assert (=> b!542315 m!520595))

(declare-fun m!520597 () Bool)

(assert (=> b!542317 m!520597))

(declare-fun m!520599 () Bool)

(assert (=> b!542316 m!520599))

(declare-fun m!520601 () Bool)

(assert (=> b!542314 m!520601))

(declare-fun m!520603 () Bool)

(assert (=> start!49294 m!520603))

(declare-fun m!520605 () Bool)

(assert (=> start!49294 m!520605))

(assert (=> b!542308 m!520591))

(assert (=> b!542308 m!520591))

(declare-fun m!520607 () Bool)

(assert (=> b!542308 m!520607))

(assert (=> b!542313 m!520591))

(assert (=> b!542313 m!520591))

(declare-fun m!520609 () Bool)

(assert (=> b!542313 m!520609))

(declare-fun m!520611 () Bool)

(assert (=> b!542310 m!520611))

(declare-fun m!520613 () Bool)

(assert (=> b!542311 m!520613))

(assert (=> b!542311 m!520591))

(declare-fun m!520615 () Bool)

(assert (=> b!542318 m!520615))

(assert (=> b!542318 m!520591))

(declare-fun m!520617 () Bool)

(assert (=> b!542307 m!520617))

(declare-fun m!520619 () Bool)

(assert (=> b!542312 m!520619))

(push 1)

