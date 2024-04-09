; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86492 () Bool)

(assert start!86492)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun b!1000924 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun e!564092 () Bool)

(assert (=> b!1000924 (= e!564092 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!1000925 () Bool)

(declare-fun e!564089 () Bool)

(declare-fun e!564090 () Bool)

(assert (=> b!1000925 (= e!564089 e!564090)))

(declare-fun res!670564 () Bool)

(assert (=> b!1000925 (=> (not res!670564) (not e!564090))))

(declare-datatypes ((SeekEntryResult!9376 0))(
  ( (MissingZero!9376 (index!39874 (_ BitVec 32))) (Found!9376 (index!39875 (_ BitVec 32))) (Intermediate!9376 (undefined!10188 Bool) (index!39876 (_ BitVec 32)) (x!87325 (_ BitVec 32))) (Undefined!9376) (MissingVacant!9376 (index!39877 (_ BitVec 32))) )
))
(declare-fun lt!442442 () SeekEntryResult!9376)

(declare-fun lt!442439 () SeekEntryResult!9376)

(assert (=> b!1000925 (= res!670564 (= lt!442442 lt!442439))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000925 (= lt!442439 (Intermediate!9376 false resIndex!38 resX!38))))

(declare-datatypes ((array!63245 0))(
  ( (array!63246 (arr!30444 (Array (_ BitVec 32) (_ BitVec 64))) (size!30947 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63245)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63245 (_ BitVec 32)) SeekEntryResult!9376)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000925 (= lt!442442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30444 a!3219) j!170) mask!3464) (select (arr!30444 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000926 () Bool)

(declare-fun res!670567 () Bool)

(declare-fun e!564087 () Bool)

(assert (=> b!1000926 (=> (not res!670567) (not e!564087))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000926 (= res!670567 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000927 () Bool)

(declare-fun res!670566 () Bool)

(assert (=> b!1000927 (=> (not res!670566) (not e!564087))))

(assert (=> b!1000927 (= res!670566 (and (= (size!30947 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30947 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30947 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000928 () Bool)

(assert (=> b!1000928 (= e!564087 e!564089)))

(declare-fun res!670568 () Bool)

(assert (=> b!1000928 (=> (not res!670568) (not e!564089))))

(declare-fun lt!442440 () SeekEntryResult!9376)

(assert (=> b!1000928 (= res!670568 (or (= lt!442440 (MissingVacant!9376 i!1194)) (= lt!442440 (MissingZero!9376 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63245 (_ BitVec 32)) SeekEntryResult!9376)

(assert (=> b!1000928 (= lt!442440 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000929 () Bool)

(declare-fun res!670569 () Bool)

(assert (=> b!1000929 (=> (not res!670569) (not e!564089))))

(declare-datatypes ((List!21246 0))(
  ( (Nil!21243) (Cons!21242 (h!22419 (_ BitVec 64)) (t!30255 List!21246)) )
))
(declare-fun arrayNoDuplicates!0 (array!63245 (_ BitVec 32) List!21246) Bool)

(assert (=> b!1000929 (= res!670569 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21243))))

(declare-fun res!670570 () Bool)

(assert (=> start!86492 (=> (not res!670570) (not e!564087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86492 (= res!670570 (validMask!0 mask!3464))))

(assert (=> start!86492 e!564087))

(declare-fun array_inv!23434 (array!63245) Bool)

(assert (=> start!86492 (array_inv!23434 a!3219)))

(assert (=> start!86492 true))

(declare-fun b!1000930 () Bool)

(declare-fun e!564088 () Bool)

(assert (=> b!1000930 (= e!564090 e!564088)))

(declare-fun res!670559 () Bool)

(assert (=> b!1000930 (=> (not res!670559) (not e!564088))))

(declare-fun lt!442438 () SeekEntryResult!9376)

(assert (=> b!1000930 (= res!670559 (= lt!442438 lt!442439))))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1000930 (= lt!442438 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30444 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000931 () Bool)

(declare-fun res!670562 () Bool)

(assert (=> b!1000931 (=> (not res!670562) (not e!564092))))

(declare-fun lt!442443 () array!63245)

(declare-fun lt!442441 () (_ BitVec 64))

(assert (=> b!1000931 (= res!670562 (not (= lt!442438 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442441 lt!442443 mask!3464))))))

(declare-fun b!1000932 () Bool)

(assert (=> b!1000932 (= e!564088 e!564092)))

(declare-fun res!670561 () Bool)

(assert (=> b!1000932 (=> (not res!670561) (not e!564092))))

(assert (=> b!1000932 (= res!670561 (not (= lt!442442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442441 mask!3464) lt!442441 lt!442443 mask!3464))))))

(assert (=> b!1000932 (= lt!442441 (select (store (arr!30444 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1000932 (= lt!442443 (array!63246 (store (arr!30444 a!3219) i!1194 k!2224) (size!30947 a!3219)))))

(declare-fun b!1000933 () Bool)

(declare-fun res!670563 () Bool)

(assert (=> b!1000933 (=> (not res!670563) (not e!564087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000933 (= res!670563 (validKeyInArray!0 (select (arr!30444 a!3219) j!170)))))

(declare-fun b!1000934 () Bool)

(declare-fun res!670558 () Bool)

(assert (=> b!1000934 (=> (not res!670558) (not e!564087))))

(assert (=> b!1000934 (= res!670558 (validKeyInArray!0 k!2224))))

(declare-fun b!1000935 () Bool)

(declare-fun res!670560 () Bool)

(assert (=> b!1000935 (=> (not res!670560) (not e!564089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63245 (_ BitVec 32)) Bool)

(assert (=> b!1000935 (= res!670560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000936 () Bool)

(declare-fun res!670565 () Bool)

(assert (=> b!1000936 (=> (not res!670565) (not e!564089))))

(assert (=> b!1000936 (= res!670565 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30947 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30947 a!3219))))))

(assert (= (and start!86492 res!670570) b!1000927))

(assert (= (and b!1000927 res!670566) b!1000933))

(assert (= (and b!1000933 res!670563) b!1000934))

(assert (= (and b!1000934 res!670558) b!1000926))

(assert (= (and b!1000926 res!670567) b!1000928))

(assert (= (and b!1000928 res!670568) b!1000935))

(assert (= (and b!1000935 res!670560) b!1000929))

(assert (= (and b!1000929 res!670569) b!1000936))

(assert (= (and b!1000936 res!670565) b!1000925))

(assert (= (and b!1000925 res!670564) b!1000930))

(assert (= (and b!1000930 res!670559) b!1000932))

(assert (= (and b!1000932 res!670561) b!1000931))

(assert (= (and b!1000931 res!670562) b!1000924))

(declare-fun m!927143 () Bool)

(assert (=> b!1000931 m!927143))

(declare-fun m!927145 () Bool)

(assert (=> b!1000934 m!927145))

(declare-fun m!927147 () Bool)

(assert (=> start!86492 m!927147))

(declare-fun m!927149 () Bool)

(assert (=> start!86492 m!927149))

(declare-fun m!927151 () Bool)

(assert (=> b!1000925 m!927151))

(assert (=> b!1000925 m!927151))

(declare-fun m!927153 () Bool)

(assert (=> b!1000925 m!927153))

(assert (=> b!1000925 m!927153))

(assert (=> b!1000925 m!927151))

(declare-fun m!927155 () Bool)

(assert (=> b!1000925 m!927155))

(assert (=> b!1000933 m!927151))

(assert (=> b!1000933 m!927151))

(declare-fun m!927157 () Bool)

(assert (=> b!1000933 m!927157))

(declare-fun m!927159 () Bool)

(assert (=> b!1000928 m!927159))

(declare-fun m!927161 () Bool)

(assert (=> b!1000935 m!927161))

(declare-fun m!927163 () Bool)

(assert (=> b!1000929 m!927163))

(assert (=> b!1000930 m!927151))

(assert (=> b!1000930 m!927151))

(declare-fun m!927165 () Bool)

(assert (=> b!1000930 m!927165))

(declare-fun m!927167 () Bool)

(assert (=> b!1000932 m!927167))

(assert (=> b!1000932 m!927167))

(declare-fun m!927169 () Bool)

(assert (=> b!1000932 m!927169))

(declare-fun m!927171 () Bool)

(assert (=> b!1000932 m!927171))

(declare-fun m!927173 () Bool)

(assert (=> b!1000932 m!927173))

(declare-fun m!927175 () Bool)

(assert (=> b!1000926 m!927175))

(push 1)

(assert (not b!1000926))

(assert (not start!86492))

(assert (not b!1000931))

(assert (not b!1000928))

(assert (not b!1000933))

(assert (not b!1000932))

