; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32436 () Bool)

(assert start!32436)

(declare-fun b!323673 () Bool)

(assert (=> b!323673 false))

(declare-datatypes ((Unit!10060 0))(
  ( (Unit!10061) )
))
(declare-fun lt!156679 () Unit!10060)

(declare-fun e!199985 () Unit!10060)

(assert (=> b!323673 (= lt!156679 e!199985)))

(declare-datatypes ((array!16571 0))(
  ( (array!16572 (arr!7840 (Array (_ BitVec 32) (_ BitVec 64))) (size!8192 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16571)

(declare-fun c!50862 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2982 0))(
  ( (MissingZero!2982 (index!14104 (_ BitVec 32))) (Found!2982 (index!14105 (_ BitVec 32))) (Intermediate!2982 (undefined!3794 Bool) (index!14106 (_ BitVec 32)) (x!32325 (_ BitVec 32))) (Undefined!2982) (MissingVacant!2982 (index!14107 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16571 (_ BitVec 32)) SeekEntryResult!2982)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323673 (= c!50862 (is-Intermediate!2982 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199989 () Unit!10060)

(declare-fun Unit!10062 () Unit!10060)

(assert (=> b!323673 (= e!199989 Unit!10062)))

(declare-fun b!323674 () Bool)

(declare-fun res!177207 () Bool)

(declare-fun e!199987 () Bool)

(assert (=> b!323674 (=> (not res!177207) (not e!199987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323674 (= res!177207 (validKeyInArray!0 k!2497))))

(declare-fun b!323675 () Bool)

(declare-fun res!177210 () Bool)

(declare-fun e!199990 () Bool)

(assert (=> b!323675 (=> (not res!177210) (not e!199990))))

(declare-fun lt!156678 () SeekEntryResult!2982)

(assert (=> b!323675 (= res!177210 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156678))))

(declare-fun b!323676 () Bool)

(assert (=> b!323676 (= e!199987 e!199990)))

(declare-fun res!177213 () Bool)

(assert (=> b!323676 (=> (not res!177213) (not e!199990))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323676 (= res!177213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156678))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323676 (= lt!156678 (Intermediate!2982 false resIndex!58 resX!58))))

(declare-fun b!323677 () Bool)

(declare-fun res!177205 () Bool)

(assert (=> b!323677 (=> (not res!177205) (not e!199990))))

(assert (=> b!323677 (= res!177205 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7840 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323678 () Bool)

(declare-fun Unit!10063 () Unit!10060)

(assert (=> b!323678 (= e!199985 Unit!10063)))

(assert (=> b!323678 false))

(declare-fun b!323679 () Bool)

(declare-fun res!177204 () Bool)

(assert (=> b!323679 (=> (not res!177204) (not e!199990))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323679 (= res!177204 (and (= (select (arr!7840 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8192 a!3305))))))

(declare-fun b!323681 () Bool)

(assert (=> b!323681 (= e!199990 (not true))))

(assert (=> b!323681 (= index!1840 resIndex!58)))

(declare-fun lt!156680 () Unit!10060)

(declare-fun e!199988 () Unit!10060)

(assert (=> b!323681 (= lt!156680 e!199988)))

(declare-fun c!50863 () Bool)

(assert (=> b!323681 (= c!50863 (not (= resIndex!58 index!1840)))))

(declare-fun b!323682 () Bool)

(declare-fun res!177209 () Bool)

(assert (=> b!323682 (=> (not res!177209) (not e!199987))))

(declare-fun arrayContainsKey!0 (array!16571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323682 (= res!177209 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323683 () Bool)

(assert (=> b!323683 false))

(declare-fun Unit!10064 () Unit!10060)

(assert (=> b!323683 (= e!199989 Unit!10064)))

(declare-fun b!323684 () Bool)

(declare-fun Unit!10065 () Unit!10060)

(assert (=> b!323684 (= e!199988 Unit!10065)))

(declare-fun b!323685 () Bool)

(assert (=> b!323685 (= e!199988 e!199989)))

(declare-fun c!50864 () Bool)

(assert (=> b!323685 (= c!50864 (or (= (select (arr!7840 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7840 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323686 () Bool)

(declare-fun res!177206 () Bool)

(assert (=> b!323686 (=> (not res!177206) (not e!199987))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16571 (_ BitVec 32)) SeekEntryResult!2982)

(assert (=> b!323686 (= res!177206 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2982 i!1250)))))

(declare-fun b!323687 () Bool)

(declare-fun res!177211 () Bool)

(assert (=> b!323687 (=> (not res!177211) (not e!199987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16571 (_ BitVec 32)) Bool)

(assert (=> b!323687 (= res!177211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323688 () Bool)

(declare-fun res!177212 () Bool)

(assert (=> b!323688 (=> (not res!177212) (not e!199987))))

(assert (=> b!323688 (= res!177212 (and (= (size!8192 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8192 a!3305))))))

(declare-fun res!177208 () Bool)

(assert (=> start!32436 (=> (not res!177208) (not e!199987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32436 (= res!177208 (validMask!0 mask!3777))))

(assert (=> start!32436 e!199987))

(declare-fun array_inv!5794 (array!16571) Bool)

(assert (=> start!32436 (array_inv!5794 a!3305)))

(assert (=> start!32436 true))

(declare-fun b!323680 () Bool)

(declare-fun Unit!10066 () Unit!10060)

(assert (=> b!323680 (= e!199985 Unit!10066)))

(assert (= (and start!32436 res!177208) b!323688))

(assert (= (and b!323688 res!177212) b!323674))

(assert (= (and b!323674 res!177207) b!323682))

(assert (= (and b!323682 res!177209) b!323686))

(assert (= (and b!323686 res!177206) b!323687))

(assert (= (and b!323687 res!177211) b!323676))

(assert (= (and b!323676 res!177213) b!323679))

(assert (= (and b!323679 res!177204) b!323675))

(assert (= (and b!323675 res!177210) b!323677))

(assert (= (and b!323677 res!177205) b!323681))

(assert (= (and b!323681 c!50863) b!323685))

(assert (= (and b!323681 (not c!50863)) b!323684))

(assert (= (and b!323685 c!50864) b!323683))

(assert (= (and b!323685 (not c!50864)) b!323673))

(assert (= (and b!323673 c!50862) b!323680))

(assert (= (and b!323673 (not c!50862)) b!323678))

(declare-fun m!330895 () Bool)

(assert (=> b!323674 m!330895))

(declare-fun m!330897 () Bool)

(assert (=> b!323673 m!330897))

(assert (=> b!323673 m!330897))

(declare-fun m!330899 () Bool)

(assert (=> b!323673 m!330899))

(declare-fun m!330901 () Bool)

(assert (=> b!323686 m!330901))

(declare-fun m!330903 () Bool)

(assert (=> b!323677 m!330903))

(declare-fun m!330905 () Bool)

(assert (=> start!32436 m!330905))

(declare-fun m!330907 () Bool)

(assert (=> start!32436 m!330907))

(assert (=> b!323685 m!330903))

(declare-fun m!330909 () Bool)

(assert (=> b!323682 m!330909))

(declare-fun m!330911 () Bool)

(assert (=> b!323676 m!330911))

(assert (=> b!323676 m!330911))

(declare-fun m!330913 () Bool)

(assert (=> b!323676 m!330913))

(declare-fun m!330915 () Bool)

(assert (=> b!323679 m!330915))

(declare-fun m!330917 () Bool)

(assert (=> b!323687 m!330917))

(declare-fun m!330919 () Bool)

(assert (=> b!323675 m!330919))

(push 1)

