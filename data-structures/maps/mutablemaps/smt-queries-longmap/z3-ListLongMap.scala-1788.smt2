; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32438 () Bool)

(assert start!32438)

(declare-fun b!323721 () Bool)

(declare-fun res!177239 () Bool)

(declare-fun e!200005 () Bool)

(assert (=> b!323721 (=> (not res!177239) (not e!200005))))

(declare-datatypes ((array!16573 0))(
  ( (array!16574 (arr!7841 (Array (_ BitVec 32) (_ BitVec 64))) (size!8193 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16573)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323721 (= res!177239 (and (= (select (arr!7841 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8193 a!3305))))))

(declare-fun b!323722 () Bool)

(assert (=> b!323722 false))

(declare-datatypes ((Unit!10067 0))(
  ( (Unit!10068) )
))
(declare-fun lt!156687 () Unit!10067)

(declare-fun e!200003 () Unit!10067)

(assert (=> b!323722 (= lt!156687 e!200003)))

(declare-fun c!50873 () Bool)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(get-info :version)

(declare-datatypes ((SeekEntryResult!2983 0))(
  ( (MissingZero!2983 (index!14108 (_ BitVec 32))) (Found!2983 (index!14109 (_ BitVec 32))) (Intermediate!2983 (undefined!3795 Bool) (index!14110 (_ BitVec 32)) (x!32326 (_ BitVec 32))) (Undefined!2983) (MissingVacant!2983 (index!14111 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16573 (_ BitVec 32)) SeekEntryResult!2983)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323722 (= c!50873 ((_ is Intermediate!2983) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!200007 () Unit!10067)

(declare-fun Unit!10069 () Unit!10067)

(assert (=> b!323722 (= e!200007 Unit!10069)))

(declare-fun res!177243 () Bool)

(declare-fun e!200008 () Bool)

(assert (=> start!32438 (=> (not res!177243) (not e!200008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32438 (= res!177243 (validMask!0 mask!3777))))

(assert (=> start!32438 e!200008))

(declare-fun array_inv!5795 (array!16573) Bool)

(assert (=> start!32438 (array_inv!5795 a!3305)))

(assert (=> start!32438 true))

(declare-fun b!323723 () Bool)

(assert (=> b!323723 false))

(declare-fun Unit!10070 () Unit!10067)

(assert (=> b!323723 (= e!200007 Unit!10070)))

(declare-fun b!323724 () Bool)

(declare-fun res!177240 () Bool)

(assert (=> b!323724 (=> (not res!177240) (not e!200008))))

(declare-fun arrayContainsKey!0 (array!16573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323724 (= res!177240 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323725 () Bool)

(declare-fun res!177235 () Bool)

(assert (=> b!323725 (=> (not res!177235) (not e!200008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16573 (_ BitVec 32)) Bool)

(assert (=> b!323725 (= res!177235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323726 () Bool)

(declare-fun res!177234 () Bool)

(assert (=> b!323726 (=> (not res!177234) (not e!200008))))

(assert (=> b!323726 (= res!177234 (and (= (size!8193 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8193 a!3305))))))

(declare-fun b!323727 () Bool)

(declare-fun res!177242 () Bool)

(assert (=> b!323727 (=> (not res!177242) (not e!200005))))

(declare-fun lt!156688 () SeekEntryResult!2983)

(assert (=> b!323727 (= res!177242 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156688))))

(declare-fun b!323728 () Bool)

(declare-fun res!177238 () Bool)

(assert (=> b!323728 (=> (not res!177238) (not e!200008))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16573 (_ BitVec 32)) SeekEntryResult!2983)

(assert (=> b!323728 (= res!177238 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2983 i!1250)))))

(declare-fun b!323729 () Bool)

(declare-fun Unit!10071 () Unit!10067)

(assert (=> b!323729 (= e!200003 Unit!10071)))

(assert (=> b!323729 false))

(declare-fun b!323730 () Bool)

(declare-fun e!200006 () Unit!10067)

(assert (=> b!323730 (= e!200006 e!200007)))

(declare-fun c!50872 () Bool)

(assert (=> b!323730 (= c!50872 (or (= (select (arr!7841 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7841 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323731 () Bool)

(assert (=> b!323731 (= e!200005 (not true))))

(assert (=> b!323731 (= index!1840 resIndex!58)))

(declare-fun lt!156689 () Unit!10067)

(assert (=> b!323731 (= lt!156689 e!200006)))

(declare-fun c!50871 () Bool)

(assert (=> b!323731 (= c!50871 (not (= resIndex!58 index!1840)))))

(declare-fun b!323732 () Bool)

(assert (=> b!323732 (= e!200008 e!200005)))

(declare-fun res!177237 () Bool)

(assert (=> b!323732 (=> (not res!177237) (not e!200005))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323732 (= res!177237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156688))))

(assert (=> b!323732 (= lt!156688 (Intermediate!2983 false resIndex!58 resX!58))))

(declare-fun b!323733 () Bool)

(declare-fun Unit!10072 () Unit!10067)

(assert (=> b!323733 (= e!200006 Unit!10072)))

(declare-fun b!323734 () Bool)

(declare-fun res!177241 () Bool)

(assert (=> b!323734 (=> (not res!177241) (not e!200005))))

(assert (=> b!323734 (= res!177241 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7841 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!323735 () Bool)

(declare-fun res!177236 () Bool)

(assert (=> b!323735 (=> (not res!177236) (not e!200008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323735 (= res!177236 (validKeyInArray!0 k0!2497))))

(declare-fun b!323736 () Bool)

(declare-fun Unit!10073 () Unit!10067)

(assert (=> b!323736 (= e!200003 Unit!10073)))

(assert (= (and start!32438 res!177243) b!323726))

(assert (= (and b!323726 res!177234) b!323735))

(assert (= (and b!323735 res!177236) b!323724))

(assert (= (and b!323724 res!177240) b!323728))

(assert (= (and b!323728 res!177238) b!323725))

(assert (= (and b!323725 res!177235) b!323732))

(assert (= (and b!323732 res!177237) b!323721))

(assert (= (and b!323721 res!177239) b!323727))

(assert (= (and b!323727 res!177242) b!323734))

(assert (= (and b!323734 res!177241) b!323731))

(assert (= (and b!323731 c!50871) b!323730))

(assert (= (and b!323731 (not c!50871)) b!323733))

(assert (= (and b!323730 c!50872) b!323723))

(assert (= (and b!323730 (not c!50872)) b!323722))

(assert (= (and b!323722 c!50873) b!323736))

(assert (= (and b!323722 (not c!50873)) b!323729))

(declare-fun m!330921 () Bool)

(assert (=> b!323725 m!330921))

(declare-fun m!330923 () Bool)

(assert (=> b!323735 m!330923))

(declare-fun m!330925 () Bool)

(assert (=> b!323722 m!330925))

(assert (=> b!323722 m!330925))

(declare-fun m!330927 () Bool)

(assert (=> b!323722 m!330927))

(declare-fun m!330929 () Bool)

(assert (=> b!323721 m!330929))

(declare-fun m!330931 () Bool)

(assert (=> b!323734 m!330931))

(declare-fun m!330933 () Bool)

(assert (=> b!323728 m!330933))

(declare-fun m!330935 () Bool)

(assert (=> b!323732 m!330935))

(assert (=> b!323732 m!330935))

(declare-fun m!330937 () Bool)

(assert (=> b!323732 m!330937))

(declare-fun m!330939 () Bool)

(assert (=> start!32438 m!330939))

(declare-fun m!330941 () Bool)

(assert (=> start!32438 m!330941))

(declare-fun m!330943 () Bool)

(assert (=> b!323724 m!330943))

(declare-fun m!330945 () Bool)

(assert (=> b!323727 m!330945))

(assert (=> b!323730 m!330931))

(check-sat (not b!323722) (not b!323735) (not start!32438) (not b!323728) (not b!323724) (not b!323732) (not b!323727) (not b!323725))
(check-sat)
