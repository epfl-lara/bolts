; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32504 () Bool)

(assert start!32504)

(declare-fun b!324690 () Bool)

(declare-fun res!178187 () Bool)

(declare-fun e!200305 () Bool)

(assert (=> b!324690 (=> (not res!178187) (not e!200305))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324690 (= res!178187 (validKeyInArray!0 k0!2497))))

(declare-fun b!324691 () Bool)

(declare-fun e!200303 () Bool)

(assert (=> b!324691 (= e!200303 false)))

(declare-fun lt!156854 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324691 (= lt!156854 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324692 () Bool)

(declare-fun res!178183 () Bool)

(assert (=> b!324692 (=> (not res!178183) (not e!200305))))

(declare-datatypes ((array!16639 0))(
  ( (array!16640 (arr!7874 (Array (_ BitVec 32) (_ BitVec 64))) (size!8226 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16639)

(declare-fun arrayContainsKey!0 (array!16639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324692 (= res!178183 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324693 () Bool)

(declare-fun res!178186 () Bool)

(assert (=> b!324693 (=> (not res!178186) (not e!200305))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324693 (= res!178186 (and (= (size!8226 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8226 a!3305))))))

(declare-fun b!324694 () Bool)

(assert (=> b!324694 (= e!200305 e!200303)))

(declare-fun res!178184 () Bool)

(assert (=> b!324694 (=> (not res!178184) (not e!200303))))

(declare-datatypes ((SeekEntryResult!3016 0))(
  ( (MissingZero!3016 (index!14240 (_ BitVec 32))) (Found!3016 (index!14241 (_ BitVec 32))) (Intermediate!3016 (undefined!3828 Bool) (index!14242 (_ BitVec 32)) (x!32447 (_ BitVec 32))) (Undefined!3016) (MissingVacant!3016 (index!14243 (_ BitVec 32))) )
))
(declare-fun lt!156853 () SeekEntryResult!3016)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16639 (_ BitVec 32)) SeekEntryResult!3016)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324694 (= res!178184 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156853))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324694 (= lt!156853 (Intermediate!3016 false resIndex!58 resX!58))))

(declare-fun b!324695 () Bool)

(declare-fun res!178179 () Bool)

(assert (=> b!324695 (=> (not res!178179) (not e!200303))))

(assert (=> b!324695 (= res!178179 (and (= (select (arr!7874 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8226 a!3305))))))

(declare-fun b!324696 () Bool)

(declare-fun res!178181 () Bool)

(assert (=> b!324696 (=> (not res!178181) (not e!200305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16639 (_ BitVec 32)) Bool)

(assert (=> b!324696 (= res!178181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324697 () Bool)

(declare-fun res!178185 () Bool)

(assert (=> b!324697 (=> (not res!178185) (not e!200303))))

(assert (=> b!324697 (= res!178185 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7874 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178182 () Bool)

(assert (=> start!32504 (=> (not res!178182) (not e!200305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32504 (= res!178182 (validMask!0 mask!3777))))

(assert (=> start!32504 e!200305))

(declare-fun array_inv!5828 (array!16639) Bool)

(assert (=> start!32504 (array_inv!5828 a!3305)))

(assert (=> start!32504 true))

(declare-fun b!324698 () Bool)

(declare-fun res!178180 () Bool)

(assert (=> b!324698 (=> (not res!178180) (not e!200305))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16639 (_ BitVec 32)) SeekEntryResult!3016)

(assert (=> b!324698 (= res!178180 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3016 i!1250)))))

(declare-fun b!324699 () Bool)

(declare-fun res!178188 () Bool)

(assert (=> b!324699 (=> (not res!178188) (not e!200303))))

(assert (=> b!324699 (= res!178188 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156853))))

(assert (= (and start!32504 res!178182) b!324693))

(assert (= (and b!324693 res!178186) b!324690))

(assert (= (and b!324690 res!178187) b!324692))

(assert (= (and b!324692 res!178183) b!324698))

(assert (= (and b!324698 res!178180) b!324696))

(assert (= (and b!324696 res!178181) b!324694))

(assert (= (and b!324694 res!178184) b!324695))

(assert (= (and b!324695 res!178179) b!324699))

(assert (= (and b!324699 res!178188) b!324697))

(assert (= (and b!324697 res!178185) b!324691))

(declare-fun m!331687 () Bool)

(assert (=> b!324699 m!331687))

(declare-fun m!331689 () Bool)

(assert (=> b!324696 m!331689))

(declare-fun m!331691 () Bool)

(assert (=> b!324695 m!331691))

(declare-fun m!331693 () Bool)

(assert (=> b!324697 m!331693))

(declare-fun m!331695 () Bool)

(assert (=> start!32504 m!331695))

(declare-fun m!331697 () Bool)

(assert (=> start!32504 m!331697))

(declare-fun m!331699 () Bool)

(assert (=> b!324698 m!331699))

(declare-fun m!331701 () Bool)

(assert (=> b!324690 m!331701))

(declare-fun m!331703 () Bool)

(assert (=> b!324692 m!331703))

(declare-fun m!331705 () Bool)

(assert (=> b!324694 m!331705))

(assert (=> b!324694 m!331705))

(declare-fun m!331707 () Bool)

(assert (=> b!324694 m!331707))

(declare-fun m!331709 () Bool)

(assert (=> b!324691 m!331709))

(check-sat (not start!32504) (not b!324694) (not b!324696) (not b!324690) (not b!324691) (not b!324698) (not b!324692) (not b!324699))
(check-sat)
