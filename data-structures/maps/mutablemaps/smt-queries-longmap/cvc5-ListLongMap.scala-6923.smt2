; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86986 () Bool)

(assert start!86986)

(declare-fun res!677742 () Bool)

(declare-fun e!567546 () Bool)

(assert (=> start!86986 (=> (not res!677742) (not e!567546))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86986 (= res!677742 (validMask!0 mask!3464))))

(assert (=> start!86986 e!567546))

(declare-datatypes ((array!63586 0))(
  ( (array!63587 (arr!30610 (Array (_ BitVec 32) (_ BitVec 64))) (size!31113 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63586)

(declare-fun array_inv!23600 (array!63586) Bool)

(assert (=> start!86986 (array_inv!23600 a!3219)))

(assert (=> start!86986 true))

(declare-fun b!1008687 () Bool)

(declare-fun res!677746 () Bool)

(assert (=> b!1008687 (=> (not res!677746) (not e!567546))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1008687 (= res!677746 (and (= (size!31113 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31113 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31113 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008688 () Bool)

(declare-fun e!567543 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008688 (= e!567543 (bvsgt (bvadd #b00000000000000000000000000000001 x!1245) resX!38))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445839 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008688 (= lt!445839 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008689 () Bool)

(declare-fun res!677747 () Bool)

(declare-fun e!567544 () Bool)

(assert (=> b!1008689 (=> (not res!677747) (not e!567544))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1008689 (= res!677747 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31113 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31113 a!3219))))))

(declare-fun b!1008690 () Bool)

(declare-fun e!567545 () Bool)

(assert (=> b!1008690 (= e!567545 e!567543)))

(declare-fun res!677748 () Bool)

(assert (=> b!1008690 (=> (not res!677748) (not e!567543))))

(declare-fun lt!445838 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9542 0))(
  ( (MissingZero!9542 (index!40538 (_ BitVec 32))) (Found!9542 (index!40539 (_ BitVec 32))) (Intermediate!9542 (undefined!10354 Bool) (index!40540 (_ BitVec 32)) (x!87957 (_ BitVec 32))) (Undefined!9542) (MissingVacant!9542 (index!40541 (_ BitVec 32))) )
))
(declare-fun lt!445833 () SeekEntryResult!9542)

(declare-fun lt!445837 () array!63586)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63586 (_ BitVec 32)) SeekEntryResult!9542)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008690 (= res!677748 (not (= lt!445833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445838 mask!3464) lt!445838 lt!445837 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1008690 (= lt!445838 (select (store (arr!30610 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008690 (= lt!445837 (array!63587 (store (arr!30610 a!3219) i!1194 k!2224) (size!31113 a!3219)))))

(declare-fun b!1008691 () Bool)

(declare-fun e!567547 () Bool)

(assert (=> b!1008691 (= e!567544 e!567547)))

(declare-fun res!677736 () Bool)

(assert (=> b!1008691 (=> (not res!677736) (not e!567547))))

(declare-fun lt!445834 () SeekEntryResult!9542)

(assert (=> b!1008691 (= res!677736 (= lt!445833 lt!445834))))

(assert (=> b!1008691 (= lt!445834 (Intermediate!9542 false resIndex!38 resX!38))))

(assert (=> b!1008691 (= lt!445833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008692 () Bool)

(declare-fun res!677739 () Bool)

(assert (=> b!1008692 (=> (not res!677739) (not e!567546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008692 (= res!677739 (validKeyInArray!0 (select (arr!30610 a!3219) j!170)))))

(declare-fun b!1008693 () Bool)

(declare-fun res!677738 () Bool)

(assert (=> b!1008693 (=> (not res!677738) (not e!567543))))

(assert (=> b!1008693 (= res!677738 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008694 () Bool)

(declare-fun res!677741 () Bool)

(assert (=> b!1008694 (=> (not res!677741) (not e!567546))))

(assert (=> b!1008694 (= res!677741 (validKeyInArray!0 k!2224))))

(declare-fun b!1008695 () Bool)

(declare-fun res!677745 () Bool)

(assert (=> b!1008695 (=> (not res!677745) (not e!567544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63586 (_ BitVec 32)) Bool)

(assert (=> b!1008695 (= res!677745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008696 () Bool)

(declare-fun res!677743 () Bool)

(assert (=> b!1008696 (=> (not res!677743) (not e!567546))))

(declare-fun arrayContainsKey!0 (array!63586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008696 (= res!677743 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008697 () Bool)

(assert (=> b!1008697 (= e!567547 e!567545)))

(declare-fun res!677737 () Bool)

(assert (=> b!1008697 (=> (not res!677737) (not e!567545))))

(declare-fun lt!445835 () SeekEntryResult!9542)

(assert (=> b!1008697 (= res!677737 (= lt!445835 lt!445834))))

(assert (=> b!1008697 (= lt!445835 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008698 () Bool)

(assert (=> b!1008698 (= e!567546 e!567544)))

(declare-fun res!677744 () Bool)

(assert (=> b!1008698 (=> (not res!677744) (not e!567544))))

(declare-fun lt!445836 () SeekEntryResult!9542)

(assert (=> b!1008698 (= res!677744 (or (= lt!445836 (MissingVacant!9542 i!1194)) (= lt!445836 (MissingZero!9542 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63586 (_ BitVec 32)) SeekEntryResult!9542)

(assert (=> b!1008698 (= lt!445836 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008699 () Bool)

(declare-fun res!677749 () Bool)

(assert (=> b!1008699 (=> (not res!677749) (not e!567543))))

(assert (=> b!1008699 (= res!677749 (not (= lt!445835 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445838 lt!445837 mask!3464))))))

(declare-fun b!1008700 () Bool)

(declare-fun res!677740 () Bool)

(assert (=> b!1008700 (=> (not res!677740) (not e!567544))))

(declare-datatypes ((List!21412 0))(
  ( (Nil!21409) (Cons!21408 (h!22594 (_ BitVec 64)) (t!30421 List!21412)) )
))
(declare-fun arrayNoDuplicates!0 (array!63586 (_ BitVec 32) List!21412) Bool)

(assert (=> b!1008700 (= res!677740 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21409))))

(assert (= (and start!86986 res!677742) b!1008687))

(assert (= (and b!1008687 res!677746) b!1008692))

(assert (= (and b!1008692 res!677739) b!1008694))

(assert (= (and b!1008694 res!677741) b!1008696))

(assert (= (and b!1008696 res!677743) b!1008698))

(assert (= (and b!1008698 res!677744) b!1008695))

(assert (= (and b!1008695 res!677745) b!1008700))

(assert (= (and b!1008700 res!677740) b!1008689))

(assert (= (and b!1008689 res!677747) b!1008691))

(assert (= (and b!1008691 res!677736) b!1008697))

(assert (= (and b!1008697 res!677737) b!1008690))

(assert (= (and b!1008690 res!677748) b!1008699))

(assert (= (and b!1008699 res!677749) b!1008693))

(assert (= (and b!1008693 res!677738) b!1008688))

(declare-fun m!933495 () Bool)

(assert (=> b!1008691 m!933495))

(assert (=> b!1008691 m!933495))

(declare-fun m!933497 () Bool)

(assert (=> b!1008691 m!933497))

(assert (=> b!1008691 m!933497))

(assert (=> b!1008691 m!933495))

(declare-fun m!933499 () Bool)

(assert (=> b!1008691 m!933499))

(assert (=> b!1008697 m!933495))

(assert (=> b!1008697 m!933495))

(declare-fun m!933501 () Bool)

(assert (=> b!1008697 m!933501))

(declare-fun m!933503 () Bool)

(assert (=> b!1008698 m!933503))

(declare-fun m!933505 () Bool)

(assert (=> b!1008695 m!933505))

(declare-fun m!933507 () Bool)

(assert (=> start!86986 m!933507))

(declare-fun m!933509 () Bool)

(assert (=> start!86986 m!933509))

(declare-fun m!933511 () Bool)

(assert (=> b!1008700 m!933511))

(declare-fun m!933513 () Bool)

(assert (=> b!1008690 m!933513))

(assert (=> b!1008690 m!933513))

(declare-fun m!933515 () Bool)

(assert (=> b!1008690 m!933515))

(declare-fun m!933517 () Bool)

(assert (=> b!1008690 m!933517))

(declare-fun m!933519 () Bool)

(assert (=> b!1008690 m!933519))

(declare-fun m!933521 () Bool)

(assert (=> b!1008699 m!933521))

(declare-fun m!933523 () Bool)

(assert (=> b!1008694 m!933523))

(declare-fun m!933525 () Bool)

(assert (=> b!1008696 m!933525))

(declare-fun m!933527 () Bool)

(assert (=> b!1008688 m!933527))

(assert (=> b!1008692 m!933495))

(assert (=> b!1008692 m!933495))

(declare-fun m!933529 () Bool)

(assert (=> b!1008692 m!933529))

(push 1)

(assert (not b!1008698))

(assert (not b!1008688))

(assert (not b!1008700))

(assert (not b!1008695))

(assert (not start!86986))

(assert (not b!1008699))

(assert (not b!1008696))

(assert (not b!1008692))

(assert (not b!1008690))

(assert (not b!1008691))

(assert (not b!1008694))

(assert (not b!1008697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119671 () Bool)

(assert (=> d!119671 (= (validKeyInArray!0 (select (arr!30610 a!3219) j!170)) (and (not (= (select (arr!30610 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30610 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008692 d!119671))

(declare-fun b!1008893 () Bool)

(declare-fun lt!445920 () SeekEntryResult!9542)

(assert (=> b!1008893 (and (bvsge (index!40540 lt!445920) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445920) (size!31113 lt!445837)))))

(declare-fun res!677884 () Bool)

(assert (=> b!1008893 (= res!677884 (= (select (arr!30610 lt!445837) (index!40540 lt!445920)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567660 () Bool)

(assert (=> b!1008893 (=> res!677884 e!567660)))

(declare-fun b!1008894 () Bool)

(assert (=> b!1008894 (and (bvsge (index!40540 lt!445920) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445920) (size!31113 lt!445837)))))

(assert (=> b!1008894 (= e!567660 (= (select (arr!30610 lt!445837) (index!40540 lt!445920)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1008895 () Bool)

(assert (=> b!1008895 (and (bvsge (index!40540 lt!445920) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445920) (size!31113 lt!445837)))))

(declare-fun res!677885 () Bool)

(assert (=> b!1008895 (= res!677885 (= (select (arr!30610 lt!445837) (index!40540 lt!445920)) lt!445838))))

(assert (=> b!1008895 (=> res!677885 e!567660)))

(declare-fun e!567659 () Bool)

(assert (=> b!1008895 (= e!567659 e!567660)))

(declare-fun d!119675 () Bool)

(declare-fun e!567658 () Bool)

(assert (=> d!119675 e!567658))

(declare-fun c!101659 () Bool)

(assert (=> d!119675 (= c!101659 (and (is-Intermediate!9542 lt!445920) (undefined!10354 lt!445920)))))

(declare-fun e!567656 () SeekEntryResult!9542)

(assert (=> d!119675 (= lt!445920 e!567656)))

(declare-fun c!101661 () Bool)

(assert (=> d!119675 (= c!101661 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!445921 () (_ BitVec 64))

(assert (=> d!119675 (= lt!445921 (select (arr!30610 lt!445837) (toIndex!0 lt!445838 mask!3464)))))

(assert (=> d!119675 (validMask!0 mask!3464)))

(assert (=> d!119675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445838 mask!3464) lt!445838 lt!445837 mask!3464) lt!445920)))

(declare-fun b!1008896 () Bool)

(assert (=> b!1008896 (= e!567658 (bvsge (x!87957 lt!445920) #b01111111111111111111111111111110))))

(declare-fun b!1008897 () Bool)

(declare-fun e!567657 () SeekEntryResult!9542)

(assert (=> b!1008897 (= e!567656 e!567657)))

(declare-fun c!101660 () Bool)

(assert (=> b!1008897 (= c!101660 (or (= lt!445921 lt!445838) (= (bvadd lt!445921 lt!445921) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008898 () Bool)

(assert (=> b!1008898 (= e!567657 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445838 lt!445837 mask!3464))))

(declare-fun b!1008899 () Bool)

(assert (=> b!1008899 (= e!567656 (Intermediate!9542 true (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008900 () Bool)

(assert (=> b!1008900 (= e!567658 e!567659)))

(declare-fun res!677883 () Bool)

(assert (=> b!1008900 (= res!677883 (and (is-Intermediate!9542 lt!445920) (not (undefined!10354 lt!445920)) (bvslt (x!87957 lt!445920) #b01111111111111111111111111111110) (bvsge (x!87957 lt!445920) #b00000000000000000000000000000000) (bvsge (x!87957 lt!445920) #b00000000000000000000000000000000)))))

(assert (=> b!1008900 (=> (not res!677883) (not e!567659))))

(declare-fun b!1008901 () Bool)

(assert (=> b!1008901 (= e!567657 (Intermediate!9542 false (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119675 c!101661) b!1008899))

(assert (= (and d!119675 (not c!101661)) b!1008897))

(assert (= (and b!1008897 c!101660) b!1008901))

(assert (= (and b!1008897 (not c!101660)) b!1008898))

(assert (= (and d!119675 c!101659) b!1008896))

(assert (= (and d!119675 (not c!101659)) b!1008900))

(assert (= (and b!1008900 res!677883) b!1008895))

(assert (= (and b!1008895 (not res!677885)) b!1008893))

(assert (= (and b!1008893 (not res!677884)) b!1008894))

(assert (=> d!119675 m!933513))

(declare-fun m!933653 () Bool)

(assert (=> d!119675 m!933653))

(assert (=> d!119675 m!933507))

(assert (=> b!1008898 m!933513))

(declare-fun m!933655 () Bool)

(assert (=> b!1008898 m!933655))

(assert (=> b!1008898 m!933655))

(declare-fun m!933657 () Bool)

(assert (=> b!1008898 m!933657))

(declare-fun m!933659 () Bool)

(assert (=> b!1008894 m!933659))

(assert (=> b!1008893 m!933659))

(assert (=> b!1008895 m!933659))

(assert (=> b!1008690 d!119675))

(declare-fun d!119689 () Bool)

(declare-fun lt!445931 () (_ BitVec 32))

(declare-fun lt!445930 () (_ BitVec 32))

(assert (=> d!119689 (= lt!445931 (bvmul (bvxor lt!445930 (bvlshr lt!445930 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119689 (= lt!445930 ((_ extract 31 0) (bvand (bvxor lt!445838 (bvlshr lt!445838 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119689 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677886 (let ((h!22598 ((_ extract 31 0) (bvand (bvxor lt!445838 (bvlshr lt!445838 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87963 (bvmul (bvxor h!22598 (bvlshr h!22598 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87963 (bvlshr x!87963 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677886 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677886 #b00000000000000000000000000000000))))))

(assert (=> d!119689 (= (toIndex!0 lt!445838 mask!3464) (bvand (bvxor lt!445931 (bvlshr lt!445931 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008690 d!119689))

(declare-fun b!1008920 () Bool)

(declare-fun lt!445932 () SeekEntryResult!9542)

(assert (=> b!1008920 (and (bvsge (index!40540 lt!445932) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445932) (size!31113 a!3219)))))

(declare-fun res!677894 () Bool)

(assert (=> b!1008920 (= res!677894 (= (select (arr!30610 a!3219) (index!40540 lt!445932)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567675 () Bool)

(assert (=> b!1008920 (=> res!677894 e!567675)))

(declare-fun b!1008921 () Bool)

(assert (=> b!1008921 (and (bvsge (index!40540 lt!445932) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445932) (size!31113 a!3219)))))

(assert (=> b!1008921 (= e!567675 (= (select (arr!30610 a!3219) (index!40540 lt!445932)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1008922 () Bool)

(assert (=> b!1008922 (and (bvsge (index!40540 lt!445932) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445932) (size!31113 a!3219)))))

(declare-fun res!677895 () Bool)

(assert (=> b!1008922 (= res!677895 (= (select (arr!30610 a!3219) (index!40540 lt!445932)) (select (arr!30610 a!3219) j!170)))))

(assert (=> b!1008922 (=> res!677895 e!567675)))

(declare-fun e!567674 () Bool)

(assert (=> b!1008922 (= e!567674 e!567675)))

(declare-fun d!119691 () Bool)

(declare-fun e!567673 () Bool)

(assert (=> d!119691 e!567673))

(declare-fun c!101668 () Bool)

(assert (=> d!119691 (= c!101668 (and (is-Intermediate!9542 lt!445932) (undefined!10354 lt!445932)))))

(declare-fun e!567671 () SeekEntryResult!9542)

(assert (=> d!119691 (= lt!445932 e!567671)))

(declare-fun c!101670 () Bool)

(assert (=> d!119691 (= c!101670 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!445933 () (_ BitVec 64))

(assert (=> d!119691 (= lt!445933 (select (arr!30610 a!3219) (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464)))))

(assert (=> d!119691 (validMask!0 mask!3464)))

(assert (=> d!119691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464) lt!445932)))

(declare-fun b!1008923 () Bool)

(assert (=> b!1008923 (= e!567673 (bvsge (x!87957 lt!445932) #b01111111111111111111111111111110))))

(declare-fun b!1008924 () Bool)

(declare-fun e!567672 () SeekEntryResult!9542)

(assert (=> b!1008924 (= e!567671 e!567672)))

(declare-fun c!101669 () Bool)

(assert (=> b!1008924 (= c!101669 (or (= lt!445933 (select (arr!30610 a!3219) j!170)) (= (bvadd lt!445933 lt!445933) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008925 () Bool)

(assert (=> b!1008925 (= e!567672 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008926 () Bool)

(assert (=> b!1008926 (= e!567671 (Intermediate!9542 true (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008927 () Bool)

(assert (=> b!1008927 (= e!567673 e!567674)))

(declare-fun res!677893 () Bool)

(assert (=> b!1008927 (= res!677893 (and (is-Intermediate!9542 lt!445932) (not (undefined!10354 lt!445932)) (bvslt (x!87957 lt!445932) #b01111111111111111111111111111110) (bvsge (x!87957 lt!445932) #b00000000000000000000000000000000) (bvsge (x!87957 lt!445932) #b00000000000000000000000000000000)))))

(assert (=> b!1008927 (=> (not res!677893) (not e!567674))))

(declare-fun b!1008928 () Bool)

(assert (=> b!1008928 (= e!567672 (Intermediate!9542 false (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119691 c!101670) b!1008926))

(assert (= (and d!119691 (not c!101670)) b!1008924))

(assert (= (and b!1008924 c!101669) b!1008928))

(assert (= (and b!1008924 (not c!101669)) b!1008925))

(assert (= (and d!119691 c!101668) b!1008923))

(assert (= (and d!119691 (not c!101668)) b!1008927))

(assert (= (and b!1008927 res!677893) b!1008922))

(assert (= (and b!1008922 (not res!677895)) b!1008920))

(assert (= (and b!1008920 (not res!677894)) b!1008921))

(assert (=> d!119691 m!933497))

(declare-fun m!933661 () Bool)

(assert (=> d!119691 m!933661))

(assert (=> d!119691 m!933507))

(assert (=> b!1008925 m!933497))

(declare-fun m!933663 () Bool)

(assert (=> b!1008925 m!933663))

(assert (=> b!1008925 m!933663))

(assert (=> b!1008925 m!933495))

(declare-fun m!933665 () Bool)

(assert (=> b!1008925 m!933665))

(declare-fun m!933667 () Bool)

(assert (=> b!1008921 m!933667))

(assert (=> b!1008920 m!933667))

(assert (=> b!1008922 m!933667))

(assert (=> b!1008691 d!119691))

(declare-fun d!119693 () Bool)

(declare-fun lt!445935 () (_ BitVec 32))

(declare-fun lt!445934 () (_ BitVec 32))

(assert (=> d!119693 (= lt!445935 (bvmul (bvxor lt!445934 (bvlshr lt!445934 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119693 (= lt!445934 ((_ extract 31 0) (bvand (bvxor (select (arr!30610 a!3219) j!170) (bvlshr (select (arr!30610 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119693 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677886 (let ((h!22598 ((_ extract 31 0) (bvand (bvxor (select (arr!30610 a!3219) j!170) (bvlshr (select (arr!30610 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87963 (bvmul (bvxor h!22598 (bvlshr h!22598 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87963 (bvlshr x!87963 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677886 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677886 #b00000000000000000000000000000000))))))

(assert (=> d!119693 (= (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) (bvand (bvxor lt!445935 (bvlshr lt!445935 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008691 d!119693))

(declare-fun b!1008957 () Bool)

(declare-fun e!567696 () Bool)

(declare-fun e!567694 () Bool)

(assert (=> b!1008957 (= e!567696 e!567694)))

(declare-fun c!101679 () Bool)

(assert (=> b!1008957 (= c!101679 (validKeyInArray!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1008958 () Bool)

(declare-fun e!567695 () Bool)

(declare-fun contains!5898 (List!21412 (_ BitVec 64)) Bool)

(assert (=> b!1008958 (= e!567695 (contains!5898 Nil!21409 (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42376 () Bool)

(declare-fun call!42379 () Bool)

(assert (=> bm!42376 (= call!42379 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101679 (Cons!21408 (select (arr!30610 a!3219) #b00000000000000000000000000000000) Nil!21409) Nil!21409)))))

(declare-fun b!1008959 () Bool)

(assert (=> b!1008959 (= e!567694 call!42379)))

(declare-fun b!1008960 () Bool)

(declare-fun e!567697 () Bool)

(assert (=> b!1008960 (= e!567697 e!567696)))

(declare-fun res!677910 () Bool)

(assert (=> b!1008960 (=> (not res!677910) (not e!567696))))

(assert (=> b!1008960 (= res!677910 (not e!567695))))

(declare-fun res!677909 () Bool)

(assert (=> b!1008960 (=> (not res!677909) (not e!567695))))

(assert (=> b!1008960 (= res!677909 (validKeyInArray!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119695 () Bool)

(declare-fun res!677911 () Bool)

(assert (=> d!119695 (=> res!677911 e!567697)))

(assert (=> d!119695 (= res!677911 (bvsge #b00000000000000000000000000000000 (size!31113 a!3219)))))

(assert (=> d!119695 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21409) e!567697)))

(declare-fun b!1008961 () Bool)

(assert (=> b!1008961 (= e!567694 call!42379)))

(assert (= (and d!119695 (not res!677911)) b!1008960))

(assert (= (and b!1008960 res!677909) b!1008958))

(assert (= (and b!1008960 res!677910) b!1008957))

(assert (= (and b!1008957 c!101679) b!1008961))

(assert (= (and b!1008957 (not c!101679)) b!1008959))

(assert (= (or b!1008961 b!1008959) bm!42376))

(declare-fun m!933677 () Bool)

(assert (=> b!1008957 m!933677))

(assert (=> b!1008957 m!933677))

(declare-fun m!933679 () Bool)

(assert (=> b!1008957 m!933679))

(assert (=> b!1008958 m!933677))

(assert (=> b!1008958 m!933677))

(declare-fun m!933682 () Bool)

(assert (=> b!1008958 m!933682))

(assert (=> bm!42376 m!933677))

(declare-fun m!933689 () Bool)

(assert (=> bm!42376 m!933689))

(assert (=> b!1008960 m!933677))

(assert (=> b!1008960 m!933677))

(assert (=> b!1008960 m!933679))

(assert (=> b!1008700 d!119695))

(declare-fun e!567735 () SeekEntryResult!9542)

(declare-fun lt!445981 () SeekEntryResult!9542)

(declare-fun b!1009031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63586 (_ BitVec 32)) SeekEntryResult!9542)

(assert (=> b!1009031 (= e!567735 (seekKeyOrZeroReturnVacant!0 (x!87957 lt!445981) (index!40540 lt!445981) (index!40540 lt!445981) k!2224 a!3219 mask!3464))))

(declare-fun b!1009032 () Bool)

(declare-fun c!101710 () Bool)

(declare-fun lt!445980 () (_ BitVec 64))

(assert (=> b!1009032 (= c!101710 (= lt!445980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567736 () SeekEntryResult!9542)

(assert (=> b!1009032 (= e!567736 e!567735)))

(declare-fun b!1009033 () Bool)

(assert (=> b!1009033 (= e!567735 (MissingZero!9542 (index!40540 lt!445981)))))

(declare-fun b!1009035 () Bool)

(assert (=> b!1009035 (= e!567736 (Found!9542 (index!40540 lt!445981)))))

(declare-fun b!1009036 () Bool)

(declare-fun e!567734 () SeekEntryResult!9542)

(assert (=> b!1009036 (= e!567734 Undefined!9542)))

(declare-fun d!119703 () Bool)

(declare-fun lt!445982 () SeekEntryResult!9542)

(assert (=> d!119703 (and (or (is-Undefined!9542 lt!445982) (not (is-Found!9542 lt!445982)) (and (bvsge (index!40539 lt!445982) #b00000000000000000000000000000000) (bvslt (index!40539 lt!445982) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!445982) (is-Found!9542 lt!445982) (not (is-MissingZero!9542 lt!445982)) (and (bvsge (index!40538 lt!445982) #b00000000000000000000000000000000) (bvslt (index!40538 lt!445982) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!445982) (is-Found!9542 lt!445982) (is-MissingZero!9542 lt!445982) (not (is-MissingVacant!9542 lt!445982)) (and (bvsge (index!40541 lt!445982) #b00000000000000000000000000000000) (bvslt (index!40541 lt!445982) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!445982) (ite (is-Found!9542 lt!445982) (= (select (arr!30610 a!3219) (index!40539 lt!445982)) k!2224) (ite (is-MissingZero!9542 lt!445982) (= (select (arr!30610 a!3219) (index!40538 lt!445982)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9542 lt!445982) (= (select (arr!30610 a!3219) (index!40541 lt!445982)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119703 (= lt!445982 e!567734)))

(declare-fun c!101711 () Bool)

(assert (=> d!119703 (= c!101711 (and (is-Intermediate!9542 lt!445981) (undefined!10354 lt!445981)))))

(assert (=> d!119703 (= lt!445981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119703 (validMask!0 mask!3464)))

(assert (=> d!119703 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!445982)))

(declare-fun b!1009034 () Bool)

(assert (=> b!1009034 (= e!567734 e!567736)))

(assert (=> b!1009034 (= lt!445980 (select (arr!30610 a!3219) (index!40540 lt!445981)))))

(declare-fun c!101712 () Bool)

(assert (=> b!1009034 (= c!101712 (= lt!445980 k!2224))))

(assert (= (and d!119703 c!101711) b!1009036))

(assert (= (and d!119703 (not c!101711)) b!1009034))

(assert (= (and b!1009034 c!101712) b!1009035))

(assert (= (and b!1009034 (not c!101712)) b!1009032))

(assert (= (and b!1009032 c!101710) b!1009033))

(assert (= (and b!1009032 (not c!101710)) b!1009031))

(declare-fun m!933729 () Bool)

(assert (=> b!1009031 m!933729))

(declare-fun m!933731 () Bool)

(assert (=> d!119703 m!933731))

(assert (=> d!119703 m!933507))

(declare-fun m!933733 () Bool)

(assert (=> d!119703 m!933733))

(declare-fun m!933735 () Bool)

(assert (=> d!119703 m!933735))

(declare-fun m!933737 () Bool)

(assert (=> d!119703 m!933737))

(assert (=> d!119703 m!933735))

(declare-fun m!933739 () Bool)

(assert (=> d!119703 m!933739))

(declare-fun m!933741 () Bool)

(assert (=> b!1009034 m!933741))

(assert (=> b!1008698 d!119703))

(declare-fun d!119721 () Bool)

(declare-fun lt!445988 () (_ BitVec 32))

(assert (=> d!119721 (and (bvsge lt!445988 #b00000000000000000000000000000000) (bvslt lt!445988 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119721 (= lt!445988 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119721 (validMask!0 mask!3464)))

(assert (=> d!119721 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!445988)))

(declare-fun bs!28689 () Bool)

(assert (= bs!28689 d!119721))

(declare-fun m!933743 () Bool)

(assert (=> bs!28689 m!933743))

(assert (=> bs!28689 m!933507))

(assert (=> b!1008688 d!119721))

(declare-fun b!1009043 () Bool)

(declare-fun lt!445989 () SeekEntryResult!9542)

(assert (=> b!1009043 (and (bvsge (index!40540 lt!445989) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445989) (size!31113 lt!445837)))))

(declare-fun res!677922 () Bool)

(assert (=> b!1009043 (= res!677922 (= (select (arr!30610 lt!445837) (index!40540 lt!445989)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567744 () Bool)

(assert (=> b!1009043 (=> res!677922 e!567744)))

(declare-fun b!1009044 () Bool)

(assert (=> b!1009044 (and (bvsge (index!40540 lt!445989) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445989) (size!31113 lt!445837)))))

(assert (=> b!1009044 (= e!567744 (= (select (arr!30610 lt!445837) (index!40540 lt!445989)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009045 () Bool)

(assert (=> b!1009045 (and (bvsge (index!40540 lt!445989) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445989) (size!31113 lt!445837)))))

(declare-fun res!677923 () Bool)

(assert (=> b!1009045 (= res!677923 (= (select (arr!30610 lt!445837) (index!40540 lt!445989)) lt!445838))))

(assert (=> b!1009045 (=> res!677923 e!567744)))

(declare-fun e!567743 () Bool)

(assert (=> b!1009045 (= e!567743 e!567744)))

(declare-fun d!119727 () Bool)

(declare-fun e!567742 () Bool)

(assert (=> d!119727 e!567742))

(declare-fun c!101716 () Bool)

(assert (=> d!119727 (= c!101716 (and (is-Intermediate!9542 lt!445989) (undefined!10354 lt!445989)))))

(declare-fun e!567740 () SeekEntryResult!9542)

(assert (=> d!119727 (= lt!445989 e!567740)))

(declare-fun c!101718 () Bool)

(assert (=> d!119727 (= c!101718 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!445990 () (_ BitVec 64))

(assert (=> d!119727 (= lt!445990 (select (arr!30610 lt!445837) index!1507))))

(assert (=> d!119727 (validMask!0 mask!3464)))

(assert (=> d!119727 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445838 lt!445837 mask!3464) lt!445989)))

(declare-fun b!1009046 () Bool)

(assert (=> b!1009046 (= e!567742 (bvsge (x!87957 lt!445989) #b01111111111111111111111111111110))))

(declare-fun b!1009047 () Bool)

(declare-fun e!567741 () SeekEntryResult!9542)

(assert (=> b!1009047 (= e!567740 e!567741)))

(declare-fun c!101717 () Bool)

(assert (=> b!1009047 (= c!101717 (or (= lt!445990 lt!445838) (= (bvadd lt!445990 lt!445990) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009048 () Bool)

(assert (=> b!1009048 (= e!567741 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445838 lt!445837 mask!3464))))

(declare-fun b!1009049 () Bool)

(assert (=> b!1009049 (= e!567740 (Intermediate!9542 true index!1507 x!1245))))

(declare-fun b!1009050 () Bool)

(assert (=> b!1009050 (= e!567742 e!567743)))

(declare-fun res!677921 () Bool)

(assert (=> b!1009050 (= res!677921 (and (is-Intermediate!9542 lt!445989) (not (undefined!10354 lt!445989)) (bvslt (x!87957 lt!445989) #b01111111111111111111111111111110) (bvsge (x!87957 lt!445989) #b00000000000000000000000000000000) (bvsge (x!87957 lt!445989) x!1245)))))

(assert (=> b!1009050 (=> (not res!677921) (not e!567743))))

(declare-fun b!1009051 () Bool)

(assert (=> b!1009051 (= e!567741 (Intermediate!9542 false index!1507 x!1245))))

(assert (= (and d!119727 c!101718) b!1009049))

(assert (= (and d!119727 (not c!101718)) b!1009047))

(assert (= (and b!1009047 c!101717) b!1009051))

(assert (= (and b!1009047 (not c!101717)) b!1009048))

(assert (= (and d!119727 c!101716) b!1009046))

(assert (= (and d!119727 (not c!101716)) b!1009050))

(assert (= (and b!1009050 res!677921) b!1009045))

(assert (= (and b!1009045 (not res!677923)) b!1009043))

(assert (= (and b!1009043 (not res!677922)) b!1009044))

(declare-fun m!933759 () Bool)

(assert (=> d!119727 m!933759))

(assert (=> d!119727 m!933507))

(assert (=> b!1009048 m!933527))

(assert (=> b!1009048 m!933527))

(declare-fun m!933761 () Bool)

(assert (=> b!1009048 m!933761))

(declare-fun m!933763 () Bool)

(assert (=> b!1009044 m!933763))

(assert (=> b!1009043 m!933763))

(assert (=> b!1009045 m!933763))

(assert (=> b!1008699 d!119727))

(declare-fun b!1009052 () Bool)

(declare-fun lt!445991 () SeekEntryResult!9542)

(assert (=> b!1009052 (and (bvsge (index!40540 lt!445991) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445991) (size!31113 a!3219)))))

(declare-fun res!677925 () Bool)

(assert (=> b!1009052 (= res!677925 (= (select (arr!30610 a!3219) (index!40540 lt!445991)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567749 () Bool)

(assert (=> b!1009052 (=> res!677925 e!567749)))

(declare-fun b!1009053 () Bool)

(assert (=> b!1009053 (and (bvsge (index!40540 lt!445991) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445991) (size!31113 a!3219)))))

(assert (=> b!1009053 (= e!567749 (= (select (arr!30610 a!3219) (index!40540 lt!445991)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009054 () Bool)

(assert (=> b!1009054 (and (bvsge (index!40540 lt!445991) #b00000000000000000000000000000000) (bvslt (index!40540 lt!445991) (size!31113 a!3219)))))

(declare-fun res!677926 () Bool)

(assert (=> b!1009054 (= res!677926 (= (select (arr!30610 a!3219) (index!40540 lt!445991)) (select (arr!30610 a!3219) j!170)))))

(assert (=> b!1009054 (=> res!677926 e!567749)))

(declare-fun e!567748 () Bool)

(assert (=> b!1009054 (= e!567748 e!567749)))

(declare-fun d!119731 () Bool)

(declare-fun e!567747 () Bool)

(assert (=> d!119731 e!567747))

(declare-fun c!101719 () Bool)

(assert (=> d!119731 (= c!101719 (and (is-Intermediate!9542 lt!445991) (undefined!10354 lt!445991)))))

(declare-fun e!567745 () SeekEntryResult!9542)

(assert (=> d!119731 (= lt!445991 e!567745)))

(declare-fun c!101721 () Bool)

(assert (=> d!119731 (= c!101721 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!445992 () (_ BitVec 64))

(assert (=> d!119731 (= lt!445992 (select (arr!30610 a!3219) index!1507))))

(assert (=> d!119731 (validMask!0 mask!3464)))

(assert (=> d!119731 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30610 a!3219) j!170) a!3219 mask!3464) lt!445991)))

(declare-fun b!1009055 () Bool)

(assert (=> b!1009055 (= e!567747 (bvsge (x!87957 lt!445991) #b01111111111111111111111111111110))))

(declare-fun b!1009056 () Bool)

(declare-fun e!567746 () SeekEntryResult!9542)

(assert (=> b!1009056 (= e!567745 e!567746)))

(declare-fun c!101720 () Bool)

(assert (=> b!1009056 (= c!101720 (or (= lt!445992 (select (arr!30610 a!3219) j!170)) (= (bvadd lt!445992 lt!445992) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009057 () Bool)

(assert (=> b!1009057 (= e!567746 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009058 () Bool)

(assert (=> b!1009058 (= e!567745 (Intermediate!9542 true index!1507 x!1245))))

(declare-fun b!1009059 () Bool)

(assert (=> b!1009059 (= e!567747 e!567748)))

(declare-fun res!677924 () Bool)

(assert (=> b!1009059 (= res!677924 (and (is-Intermediate!9542 lt!445991) (not (undefined!10354 lt!445991)) (bvslt (x!87957 lt!445991) #b01111111111111111111111111111110) (bvsge (x!87957 lt!445991) #b00000000000000000000000000000000) (bvsge (x!87957 lt!445991) x!1245)))))

(assert (=> b!1009059 (=> (not res!677924) (not e!567748))))

(declare-fun b!1009060 () Bool)

(assert (=> b!1009060 (= e!567746 (Intermediate!9542 false index!1507 x!1245))))

(assert (= (and d!119731 c!101721) b!1009058))

(assert (= (and d!119731 (not c!101721)) b!1009056))

(assert (= (and b!1009056 c!101720) b!1009060))

(assert (= (and b!1009056 (not c!101720)) b!1009057))

(assert (= (and d!119731 c!101719) b!1009055))

(assert (= (and d!119731 (not c!101719)) b!1009059))

(assert (= (and b!1009059 res!677924) b!1009054))

(assert (= (and b!1009054 (not res!677926)) b!1009052))

(assert (= (and b!1009052 (not res!677925)) b!1009053))

(declare-fun m!933765 () Bool)

(assert (=> d!119731 m!933765))

(assert (=> d!119731 m!933507))

(assert (=> b!1009057 m!933527))

(assert (=> b!1009057 m!933527))

(assert (=> b!1009057 m!933495))

(declare-fun m!933767 () Bool)

(assert (=> b!1009057 m!933767))

(declare-fun m!933769 () Bool)

(assert (=> b!1009053 m!933769))

(assert (=> b!1009052 m!933769))

(assert (=> b!1009054 m!933769))

(assert (=> b!1008697 d!119731))

(declare-fun d!119733 () Bool)

(declare-fun res!677931 () Bool)

(declare-fun e!567754 () Bool)

(assert (=> d!119733 (=> res!677931 e!567754)))

(assert (=> d!119733 (= res!677931 (= (select (arr!30610 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119733 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!567754)))

(declare-fun b!1009065 () Bool)

(declare-fun e!567755 () Bool)

(assert (=> b!1009065 (= e!567754 e!567755)))

(declare-fun res!677932 () Bool)

(assert (=> b!1009065 (=> (not res!677932) (not e!567755))))

(assert (=> b!1009065 (= res!677932 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31113 a!3219)))))

(declare-fun b!1009066 () Bool)

(assert (=> b!1009066 (= e!567755 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119733 (not res!677931)) b!1009065))

(assert (= (and b!1009065 res!677932) b!1009066))

(assert (=> d!119733 m!933677))

(declare-fun m!933773 () Bool)

(assert (=> b!1009066 m!933773))

(assert (=> b!1008696 d!119733))

(declare-fun d!119737 () Bool)

(assert (=> d!119737 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008694 d!119737))

(declare-fun d!119739 () Bool)

(assert (=> d!119739 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86986 d!119739))

(declare-fun d!119743 () Bool)

(assert (=> d!119743 (= (array_inv!23600 a!3219) (bvsge (size!31113 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86986 d!119743))

(declare-fun b!1009091 () Bool)

(declare-fun e!567778 () Bool)

(declare-fun call!42384 () Bool)

(assert (=> b!1009091 (= e!567778 call!42384)))

(declare-fun b!1009092 () Bool)

(declare-fun e!567777 () Bool)

(assert (=> b!1009092 (= e!567777 e!567778)))

(declare-fun lt!446003 () (_ BitVec 64))

(assert (=> b!1009092 (= lt!446003 (select (arr!30610 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32964 0))(
  ( (Unit!32965) )
))
(declare-fun lt!446004 () Unit!32964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63586 (_ BitVec 64) (_ BitVec 32)) Unit!32964)

(assert (=> b!1009092 (= lt!446004 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446003 #b00000000000000000000000000000000))))

(assert (=> b!1009092 (arrayContainsKey!0 a!3219 lt!446003 #b00000000000000000000000000000000)))

(declare-fun lt!446002 () Unit!32964)

(assert (=> b!1009092 (= lt!446002 lt!446004)))

(declare-fun res!677950 () Bool)

(assert (=> b!1009092 (= res!677950 (= (seekEntryOrOpen!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9542 #b00000000000000000000000000000000)))))

(assert (=> b!1009092 (=> (not res!677950) (not e!567778))))

(declare-fun b!1009093 () Bool)

(assert (=> b!1009093 (= e!567777 call!42384)))

(declare-fun b!1009094 () Bool)

(declare-fun e!567776 () Bool)

(assert (=> b!1009094 (= e!567776 e!567777)))

(declare-fun c!101726 () Bool)

(assert (=> b!1009094 (= c!101726 (validKeyInArray!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42381 () Bool)

(assert (=> bm!42381 (= call!42384 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!119747 () Bool)

(declare-fun res!677949 () Bool)

(assert (=> d!119747 (=> res!677949 e!567776)))

(assert (=> d!119747 (= res!677949 (bvsge #b00000000000000000000000000000000 (size!31113 a!3219)))))

(assert (=> d!119747 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!567776)))

(assert (= (and d!119747 (not res!677949)) b!1009094))

(assert (= (and b!1009094 c!101726) b!1009092))

(assert (= (and b!1009094 (not c!101726)) b!1009093))

(assert (= (and b!1009092 res!677950) b!1009091))

(assert (= (or b!1009091 b!1009093) bm!42381))

(assert (=> b!1009092 m!933677))

(declare-fun m!933777 () Bool)

(assert (=> b!1009092 m!933777))

(declare-fun m!933779 () Bool)

(assert (=> b!1009092 m!933779))

(assert (=> b!1009092 m!933677))

(declare-fun m!933781 () Bool)

(assert (=> b!1009092 m!933781))

(assert (=> b!1009094 m!933677))

(assert (=> b!1009094 m!933677))

(assert (=> b!1009094 m!933679))

(declare-fun m!933783 () Bool)

(assert (=> bm!42381 m!933783))

(assert (=> b!1008695 d!119747))

(push 1)

(assert (not b!1009057))

(assert (not d!119691))

(assert (not b!1009066))

(assert (not b!1008898))

(assert (not bm!42376))

(assert (not bm!42381))

(assert (not b!1008960))

(assert (not d!119731))

(assert (not b!1008957))

(assert (not d!119727))

(assert (not b!1009048))

(assert (not d!119675))

(assert (not b!1008958))

(assert (not b!1009092))

(assert (not b!1009094))

(assert (not d!119703))

(assert (not b!1009031))

(assert (not d!119721))

(assert (not b!1008925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!119691 d!119739))

(declare-fun d!119751 () Bool)

(declare-fun res!677956 () (_ BitVec 32))

(assert (=> d!119751 (and (bvsge res!677956 #b00000000000000000000000000000000) (bvslt res!677956 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119751 true))

(assert (=> d!119751 (= (choose!52 index!1507 x!1245 mask!3464) res!677956)))

(assert (=> d!119721 d!119751))

(assert (=> d!119721 d!119739))

(declare-fun b!1009100 () Bool)

(declare-fun lt!446005 () SeekEntryResult!9542)

(assert (=> b!1009100 (and (bvsge (index!40540 lt!446005) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446005) (size!31113 lt!445837)))))

(declare-fun res!677958 () Bool)

(assert (=> b!1009100 (= res!677958 (= (select (arr!30610 lt!445837) (index!40540 lt!446005)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567787 () Bool)

(assert (=> b!1009100 (=> res!677958 e!567787)))

(declare-fun b!1009101 () Bool)

(assert (=> b!1009101 (and (bvsge (index!40540 lt!446005) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446005) (size!31113 lt!445837)))))

(assert (=> b!1009101 (= e!567787 (= (select (arr!30610 lt!445837) (index!40540 lt!446005)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009102 () Bool)

(assert (=> b!1009102 (and (bvsge (index!40540 lt!446005) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446005) (size!31113 lt!445837)))))

(declare-fun res!677959 () Bool)

(assert (=> b!1009102 (= res!677959 (= (select (arr!30610 lt!445837) (index!40540 lt!446005)) lt!445838))))

(assert (=> b!1009102 (=> res!677959 e!567787)))

(declare-fun e!567786 () Bool)

(assert (=> b!1009102 (= e!567786 e!567787)))

(declare-fun d!119753 () Bool)

(declare-fun e!567785 () Bool)

(assert (=> d!119753 e!567785))

(declare-fun c!101728 () Bool)

(assert (=> d!119753 (= c!101728 (and (is-Intermediate!9542 lt!446005) (undefined!10354 lt!446005)))))

(declare-fun e!567783 () SeekEntryResult!9542)

(assert (=> d!119753 (= lt!446005 e!567783)))

(declare-fun c!101730 () Bool)

(assert (=> d!119753 (= c!101730 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446006 () (_ BitVec 64))

(assert (=> d!119753 (= lt!446006 (select (arr!30610 lt!445837) (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119753 (validMask!0 mask!3464)))

(assert (=> d!119753 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445838 lt!445837 mask!3464) lt!446005)))

(declare-fun b!1009103 () Bool)

(assert (=> b!1009103 (= e!567785 (bvsge (x!87957 lt!446005) #b01111111111111111111111111111110))))

(declare-fun b!1009104 () Bool)

(declare-fun e!567784 () SeekEntryResult!9542)

(assert (=> b!1009104 (= e!567783 e!567784)))

(declare-fun c!101729 () Bool)

(assert (=> b!1009104 (= c!101729 (or (= lt!446006 lt!445838) (= (bvadd lt!446006 lt!446006) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009105 () Bool)

(assert (=> b!1009105 (= e!567784 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) lt!445838 lt!445837 mask!3464))))

(declare-fun b!1009106 () Bool)

(assert (=> b!1009106 (= e!567783 (Intermediate!9542 true (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009107 () Bool)

(assert (=> b!1009107 (= e!567785 e!567786)))

(declare-fun res!677957 () Bool)

(assert (=> b!1009107 (= res!677957 (and (is-Intermediate!9542 lt!446005) (not (undefined!10354 lt!446005)) (bvslt (x!87957 lt!446005) #b01111111111111111111111111111110) (bvsge (x!87957 lt!446005) #b00000000000000000000000000000000) (bvsge (x!87957 lt!446005) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009107 (=> (not res!677957) (not e!567786))))

(declare-fun b!1009108 () Bool)

(assert (=> b!1009108 (= e!567784 (Intermediate!9542 false (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119753 c!101730) b!1009106))

(assert (= (and d!119753 (not c!101730)) b!1009104))

(assert (= (and b!1009104 c!101729) b!1009108))

(assert (= (and b!1009104 (not c!101729)) b!1009105))

(assert (= (and d!119753 c!101728) b!1009103))

(assert (= (and d!119753 (not c!101728)) b!1009107))

(assert (= (and b!1009107 res!677957) b!1009102))

(assert (= (and b!1009102 (not res!677959)) b!1009100))

(assert (= (and b!1009100 (not res!677958)) b!1009101))

(assert (=> d!119753 m!933655))

(declare-fun m!933789 () Bool)

(assert (=> d!119753 m!933789))

(assert (=> d!119753 m!933507))

(assert (=> b!1009105 m!933655))

(declare-fun m!933791 () Bool)

(assert (=> b!1009105 m!933791))

(assert (=> b!1009105 m!933791))

(declare-fun m!933793 () Bool)

(assert (=> b!1009105 m!933793))

(declare-fun m!933795 () Bool)

(assert (=> b!1009101 m!933795))

(assert (=> b!1009100 m!933795))

(assert (=> b!1009102 m!933795))

(assert (=> b!1008898 d!119753))

(declare-fun d!119755 () Bool)

(declare-fun lt!446007 () (_ BitVec 32))

(assert (=> d!119755 (and (bvsge lt!446007 #b00000000000000000000000000000000) (bvslt lt!446007 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119755 (= lt!446007 (choose!52 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119755 (validMask!0 mask!3464)))

(assert (=> d!119755 (= (nextIndex!0 (toIndex!0 lt!445838 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446007)))

(declare-fun bs!28691 () Bool)

(assert (= bs!28691 d!119755))

(assert (=> bs!28691 m!933513))

(declare-fun m!933797 () Bool)

(assert (=> bs!28691 m!933797))

(assert (=> bs!28691 m!933507))

(assert (=> b!1008898 d!119755))

(assert (=> d!119675 d!119739))

(declare-fun d!119757 () Bool)

(assert (=> d!119757 (= (validKeyInArray!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000)) (and (not (= (select (arr!30610 a!3219) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30610 a!3219) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008957 d!119757))

(declare-fun d!119759 () Bool)

(declare-fun res!677960 () Bool)

(declare-fun e!567788 () Bool)

(assert (=> d!119759 (=> res!677960 e!567788)))

(assert (=> d!119759 (= res!677960 (= (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2224))))

(assert (=> d!119759 (= (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!567788)))

(declare-fun b!1009109 () Bool)

(declare-fun e!567789 () Bool)

(assert (=> b!1009109 (= e!567788 e!567789)))

(declare-fun res!677961 () Bool)

(assert (=> b!1009109 (=> (not res!677961) (not e!567789))))

(assert (=> b!1009109 (= res!677961 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31113 a!3219)))))

(declare-fun b!1009110 () Bool)

(assert (=> b!1009110 (= e!567789 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!119759 (not res!677960)) b!1009109))

(assert (= (and b!1009109 res!677961) b!1009110))

(declare-fun m!933799 () Bool)

(assert (=> d!119759 m!933799))

(declare-fun m!933801 () Bool)

(assert (=> b!1009110 m!933801))

(assert (=> b!1009066 d!119759))

(declare-fun b!1009123 () Bool)

(declare-fun e!567798 () SeekEntryResult!9542)

(assert (=> b!1009123 (= e!567798 (MissingVacant!9542 (index!40540 lt!445981)))))

(declare-fun lt!446013 () SeekEntryResult!9542)

(declare-fun d!119761 () Bool)

(assert (=> d!119761 (and (or (is-Undefined!9542 lt!446013) (not (is-Found!9542 lt!446013)) (and (bvsge (index!40539 lt!446013) #b00000000000000000000000000000000) (bvslt (index!40539 lt!446013) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!446013) (is-Found!9542 lt!446013) (not (is-MissingVacant!9542 lt!446013)) (not (= (index!40541 lt!446013) (index!40540 lt!445981))) (and (bvsge (index!40541 lt!446013) #b00000000000000000000000000000000) (bvslt (index!40541 lt!446013) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!446013) (ite (is-Found!9542 lt!446013) (= (select (arr!30610 a!3219) (index!40539 lt!446013)) k!2224) (and (is-MissingVacant!9542 lt!446013) (= (index!40541 lt!446013) (index!40540 lt!445981)) (= (select (arr!30610 a!3219) (index!40541 lt!446013)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!567796 () SeekEntryResult!9542)

(assert (=> d!119761 (= lt!446013 e!567796)))

(declare-fun c!101737 () Bool)

(assert (=> d!119761 (= c!101737 (bvsge (x!87957 lt!445981) #b01111111111111111111111111111110))))

(declare-fun lt!446012 () (_ BitVec 64))

(assert (=> d!119761 (= lt!446012 (select (arr!30610 a!3219) (index!40540 lt!445981)))))

(assert (=> d!119761 (validMask!0 mask!3464)))

(assert (=> d!119761 (= (seekKeyOrZeroReturnVacant!0 (x!87957 lt!445981) (index!40540 lt!445981) (index!40540 lt!445981) k!2224 a!3219 mask!3464) lt!446013)))

(declare-fun b!1009124 () Bool)

(assert (=> b!1009124 (= e!567796 Undefined!9542)))

(declare-fun b!1009125 () Bool)

(declare-fun e!567797 () SeekEntryResult!9542)

(assert (=> b!1009125 (= e!567796 e!567797)))

(declare-fun c!101738 () Bool)

(assert (=> b!1009125 (= c!101738 (= lt!446012 k!2224))))

(declare-fun b!1009126 () Bool)

(declare-fun c!101739 () Bool)

(assert (=> b!1009126 (= c!101739 (= lt!446012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009126 (= e!567797 e!567798)))

(declare-fun b!1009127 () Bool)

(assert (=> b!1009127 (= e!567798 (seekKeyOrZeroReturnVacant!0 (bvadd (x!87957 lt!445981) #b00000000000000000000000000000001) (nextIndex!0 (index!40540 lt!445981) (x!87957 lt!445981) mask!3464) (index!40540 lt!445981) k!2224 a!3219 mask!3464))))

(declare-fun b!1009128 () Bool)

(assert (=> b!1009128 (= e!567797 (Found!9542 (index!40540 lt!445981)))))

(assert (= (and d!119761 c!101737) b!1009124))

(assert (= (and d!119761 (not c!101737)) b!1009125))

(assert (= (and b!1009125 c!101738) b!1009128))

(assert (= (and b!1009125 (not c!101738)) b!1009126))

(assert (= (and b!1009126 c!101739) b!1009123))

(assert (= (and b!1009126 (not c!101739)) b!1009127))

(declare-fun m!933803 () Bool)

(assert (=> d!119761 m!933803))

(declare-fun m!933805 () Bool)

(assert (=> d!119761 m!933805))

(assert (=> d!119761 m!933741))

(assert (=> d!119761 m!933507))

(declare-fun m!933807 () Bool)

(assert (=> b!1009127 m!933807))

(assert (=> b!1009127 m!933807))

(declare-fun m!933809 () Bool)

(assert (=> b!1009127 m!933809))

(assert (=> b!1009031 d!119761))

(declare-fun b!1009129 () Bool)

(declare-fun e!567801 () Bool)

(declare-fun call!42386 () Bool)

(assert (=> b!1009129 (= e!567801 call!42386)))

(declare-fun b!1009130 () Bool)

(declare-fun e!567800 () Bool)

(assert (=> b!1009130 (= e!567800 e!567801)))

(declare-fun lt!446015 () (_ BitVec 64))

(assert (=> b!1009130 (= lt!446015 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!446016 () Unit!32964)

(assert (=> b!1009130 (= lt!446016 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446015 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1009130 (arrayContainsKey!0 a!3219 lt!446015 #b00000000000000000000000000000000)))

(declare-fun lt!446014 () Unit!32964)

(assert (=> b!1009130 (= lt!446014 lt!446016)))

(declare-fun res!677963 () Bool)

(assert (=> b!1009130 (= res!677963 (= (seekEntryOrOpen!0 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3219 mask!3464) (Found!9542 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009130 (=> (not res!677963) (not e!567801))))

(declare-fun b!1009131 () Bool)

(assert (=> b!1009131 (= e!567800 call!42386)))

(declare-fun b!1009132 () Bool)

(declare-fun e!567799 () Bool)

(assert (=> b!1009132 (= e!567799 e!567800)))

(declare-fun c!101740 () Bool)

(assert (=> b!1009132 (= c!101740 (validKeyInArray!0 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!42383 () Bool)

(assert (=> bm!42383 (= call!42386 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!119763 () Bool)

(declare-fun res!677962 () Bool)

(assert (=> d!119763 (=> res!677962 e!567799)))

(assert (=> d!119763 (= res!677962 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31113 a!3219)))))

(assert (=> d!119763 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464) e!567799)))

(assert (= (and d!119763 (not res!677962)) b!1009132))

(assert (= (and b!1009132 c!101740) b!1009130))

(assert (= (and b!1009132 (not c!101740)) b!1009131))

(assert (= (and b!1009130 res!677963) b!1009129))

(assert (= (or b!1009129 b!1009131) bm!42383))

(assert (=> b!1009130 m!933799))

(declare-fun m!933811 () Bool)

(assert (=> b!1009130 m!933811))

(declare-fun m!933813 () Bool)

(assert (=> b!1009130 m!933813))

(assert (=> b!1009130 m!933799))

(declare-fun m!933815 () Bool)

(assert (=> b!1009130 m!933815))

(assert (=> b!1009132 m!933799))

(assert (=> b!1009132 m!933799))

(declare-fun m!933817 () Bool)

(assert (=> b!1009132 m!933817))

(declare-fun m!933819 () Bool)

(assert (=> bm!42383 m!933819))

(assert (=> bm!42381 d!119763))

(declare-fun b!1009133 () Bool)

(declare-fun lt!446017 () SeekEntryResult!9542)

(assert (=> b!1009133 (and (bvsge (index!40540 lt!446017) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446017) (size!31113 a!3219)))))

(declare-fun res!677965 () Bool)

(assert (=> b!1009133 (= res!677965 (= (select (arr!30610 a!3219) (index!40540 lt!446017)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567806 () Bool)

(assert (=> b!1009133 (=> res!677965 e!567806)))

(declare-fun b!1009134 () Bool)

(assert (=> b!1009134 (and (bvsge (index!40540 lt!446017) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446017) (size!31113 a!3219)))))

(assert (=> b!1009134 (= e!567806 (= (select (arr!30610 a!3219) (index!40540 lt!446017)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009135 () Bool)

(assert (=> b!1009135 (and (bvsge (index!40540 lt!446017) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446017) (size!31113 a!3219)))))

(declare-fun res!677966 () Bool)

(assert (=> b!1009135 (= res!677966 (= (select (arr!30610 a!3219) (index!40540 lt!446017)) (select (arr!30610 a!3219) j!170)))))

(assert (=> b!1009135 (=> res!677966 e!567806)))

(declare-fun e!567805 () Bool)

(assert (=> b!1009135 (= e!567805 e!567806)))

(declare-fun d!119765 () Bool)

(declare-fun e!567804 () Bool)

(assert (=> d!119765 e!567804))

(declare-fun c!101741 () Bool)

(assert (=> d!119765 (= c!101741 (and (is-Intermediate!9542 lt!446017) (undefined!10354 lt!446017)))))

(declare-fun e!567802 () SeekEntryResult!9542)

(assert (=> d!119765 (= lt!446017 e!567802)))

(declare-fun c!101743 () Bool)

(assert (=> d!119765 (= c!101743 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446018 () (_ BitVec 64))

(assert (=> d!119765 (= lt!446018 (select (arr!30610 a!3219) (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119765 (validMask!0 mask!3464)))

(assert (=> d!119765 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464) lt!446017)))

(declare-fun b!1009136 () Bool)

(assert (=> b!1009136 (= e!567804 (bvsge (x!87957 lt!446017) #b01111111111111111111111111111110))))

(declare-fun b!1009137 () Bool)

(declare-fun e!567803 () SeekEntryResult!9542)

(assert (=> b!1009137 (= e!567802 e!567803)))

(declare-fun c!101742 () Bool)

(assert (=> b!1009137 (= c!101742 (or (= lt!446018 (select (arr!30610 a!3219) j!170)) (= (bvadd lt!446018 lt!446018) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009138 () Bool)

(assert (=> b!1009138 (= e!567803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009139 () Bool)

(assert (=> b!1009139 (= e!567802 (Intermediate!9542 true (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009140 () Bool)

(assert (=> b!1009140 (= e!567804 e!567805)))

(declare-fun res!677964 () Bool)

(assert (=> b!1009140 (= res!677964 (and (is-Intermediate!9542 lt!446017) (not (undefined!10354 lt!446017)) (bvslt (x!87957 lt!446017) #b01111111111111111111111111111110) (bvsge (x!87957 lt!446017) #b00000000000000000000000000000000) (bvsge (x!87957 lt!446017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009140 (=> (not res!677964) (not e!567805))))

(declare-fun b!1009141 () Bool)

(assert (=> b!1009141 (= e!567803 (Intermediate!9542 false (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119765 c!101743) b!1009139))

(assert (= (and d!119765 (not c!101743)) b!1009137))

(assert (= (and b!1009137 c!101742) b!1009141))

(assert (= (and b!1009137 (not c!101742)) b!1009138))

(assert (= (and d!119765 c!101741) b!1009136))

(assert (= (and d!119765 (not c!101741)) b!1009140))

(assert (= (and b!1009140 res!677964) b!1009135))

(assert (= (and b!1009135 (not res!677966)) b!1009133))

(assert (= (and b!1009133 (not res!677965)) b!1009134))

(assert (=> d!119765 m!933663))

(declare-fun m!933821 () Bool)

(assert (=> d!119765 m!933821))

(assert (=> d!119765 m!933507))

(assert (=> b!1009138 m!933663))

(declare-fun m!933823 () Bool)

(assert (=> b!1009138 m!933823))

(assert (=> b!1009138 m!933823))

(assert (=> b!1009138 m!933495))

(declare-fun m!933825 () Bool)

(assert (=> b!1009138 m!933825))

(declare-fun m!933827 () Bool)

(assert (=> b!1009134 m!933827))

(assert (=> b!1009133 m!933827))

(assert (=> b!1009135 m!933827))

(assert (=> b!1008925 d!119765))

(declare-fun d!119767 () Bool)

(declare-fun lt!446019 () (_ BitVec 32))

(assert (=> d!119767 (and (bvsge lt!446019 #b00000000000000000000000000000000) (bvslt lt!446019 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119767 (= lt!446019 (choose!52 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119767 (validMask!0 mask!3464)))

(assert (=> d!119767 (= (nextIndex!0 (toIndex!0 (select (arr!30610 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446019)))

(declare-fun bs!28692 () Bool)

(assert (= bs!28692 d!119767))

(assert (=> bs!28692 m!933497))

(declare-fun m!933829 () Bool)

(assert (=> bs!28692 m!933829))

(assert (=> bs!28692 m!933507))

(assert (=> b!1008925 d!119767))

(assert (=> b!1008960 d!119757))

(declare-fun d!119769 () Bool)

(assert (=> d!119769 (arrayContainsKey!0 a!3219 lt!446003 #b00000000000000000000000000000000)))

(declare-fun lt!446022 () Unit!32964)

(declare-fun choose!13 (array!63586 (_ BitVec 64) (_ BitVec 32)) Unit!32964)

(assert (=> d!119769 (= lt!446022 (choose!13 a!3219 lt!446003 #b00000000000000000000000000000000))))

(assert (=> d!119769 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!119769 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446003 #b00000000000000000000000000000000) lt!446022)))

(declare-fun bs!28693 () Bool)

(assert (= bs!28693 d!119769))

(assert (=> bs!28693 m!933779))

(declare-fun m!933831 () Bool)

(assert (=> bs!28693 m!933831))

(assert (=> b!1009092 d!119769))

(declare-fun d!119771 () Bool)

(declare-fun res!677967 () Bool)

(declare-fun e!567807 () Bool)

(assert (=> d!119771 (=> res!677967 e!567807)))

(assert (=> d!119771 (= res!677967 (= (select (arr!30610 a!3219) #b00000000000000000000000000000000) lt!446003))))

(assert (=> d!119771 (= (arrayContainsKey!0 a!3219 lt!446003 #b00000000000000000000000000000000) e!567807)))

(declare-fun b!1009142 () Bool)

(declare-fun e!567808 () Bool)

(assert (=> b!1009142 (= e!567807 e!567808)))

(declare-fun res!677968 () Bool)

(assert (=> b!1009142 (=> (not res!677968) (not e!567808))))

(assert (=> b!1009142 (= res!677968 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31113 a!3219)))))

(declare-fun b!1009143 () Bool)

(assert (=> b!1009143 (= e!567808 (arrayContainsKey!0 a!3219 lt!446003 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119771 (not res!677967)) b!1009142))

(assert (= (and b!1009142 res!677968) b!1009143))

(assert (=> d!119771 m!933677))

(declare-fun m!933833 () Bool)

(assert (=> b!1009143 m!933833))

(assert (=> b!1009092 d!119771))

(declare-fun lt!446024 () SeekEntryResult!9542)

(declare-fun b!1009144 () Bool)

(declare-fun e!567810 () SeekEntryResult!9542)

(assert (=> b!1009144 (= e!567810 (seekKeyOrZeroReturnVacant!0 (x!87957 lt!446024) (index!40540 lt!446024) (index!40540 lt!446024) (select (arr!30610 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(declare-fun b!1009145 () Bool)

(declare-fun c!101744 () Bool)

(declare-fun lt!446023 () (_ BitVec 64))

(assert (=> b!1009145 (= c!101744 (= lt!446023 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567811 () SeekEntryResult!9542)

(assert (=> b!1009145 (= e!567811 e!567810)))

(declare-fun b!1009146 () Bool)

(assert (=> b!1009146 (= e!567810 (MissingZero!9542 (index!40540 lt!446024)))))

(declare-fun b!1009148 () Bool)

(assert (=> b!1009148 (= e!567811 (Found!9542 (index!40540 lt!446024)))))

(declare-fun b!1009149 () Bool)

(declare-fun e!567809 () SeekEntryResult!9542)

(assert (=> b!1009149 (= e!567809 Undefined!9542)))

(declare-fun d!119773 () Bool)

(declare-fun lt!446025 () SeekEntryResult!9542)

(assert (=> d!119773 (and (or (is-Undefined!9542 lt!446025) (not (is-Found!9542 lt!446025)) (and (bvsge (index!40539 lt!446025) #b00000000000000000000000000000000) (bvslt (index!40539 lt!446025) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!446025) (is-Found!9542 lt!446025) (not (is-MissingZero!9542 lt!446025)) (and (bvsge (index!40538 lt!446025) #b00000000000000000000000000000000) (bvslt (index!40538 lt!446025) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!446025) (is-Found!9542 lt!446025) (is-MissingZero!9542 lt!446025) (not (is-MissingVacant!9542 lt!446025)) (and (bvsge (index!40541 lt!446025) #b00000000000000000000000000000000) (bvslt (index!40541 lt!446025) (size!31113 a!3219)))) (or (is-Undefined!9542 lt!446025) (ite (is-Found!9542 lt!446025) (= (select (arr!30610 a!3219) (index!40539 lt!446025)) (select (arr!30610 a!3219) #b00000000000000000000000000000000)) (ite (is-MissingZero!9542 lt!446025) (= (select (arr!30610 a!3219) (index!40538 lt!446025)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9542 lt!446025) (= (select (arr!30610 a!3219) (index!40541 lt!446025)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119773 (= lt!446025 e!567809)))

(declare-fun c!101745 () Bool)

(assert (=> d!119773 (= c!101745 (and (is-Intermediate!9542 lt!446024) (undefined!10354 lt!446024)))))

(assert (=> d!119773 (= lt!446024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000) mask!3464) (select (arr!30610 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(assert (=> d!119773 (validMask!0 mask!3464)))

(assert (=> d!119773 (= (seekEntryOrOpen!0 (select (arr!30610 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) lt!446025)))

(declare-fun b!1009147 () Bool)

(assert (=> b!1009147 (= e!567809 e!567811)))

(assert (=> b!1009147 (= lt!446023 (select (arr!30610 a!3219) (index!40540 lt!446024)))))

(declare-fun c!101746 () Bool)

(assert (=> b!1009147 (= c!101746 (= lt!446023 (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119773 c!101745) b!1009149))

(assert (= (and d!119773 (not c!101745)) b!1009147))

(assert (= (and b!1009147 c!101746) b!1009148))

(assert (= (and b!1009147 (not c!101746)) b!1009145))

(assert (= (and b!1009145 c!101744) b!1009146))

(assert (= (and b!1009145 (not c!101744)) b!1009144))

(assert (=> b!1009144 m!933677))

(declare-fun m!933835 () Bool)

(assert (=> b!1009144 m!933835))

(declare-fun m!933837 () Bool)

(assert (=> d!119773 m!933837))

(assert (=> d!119773 m!933507))

(declare-fun m!933839 () Bool)

(assert (=> d!119773 m!933839))

(assert (=> d!119773 m!933677))

(declare-fun m!933841 () Bool)

(assert (=> d!119773 m!933841))

(declare-fun m!933843 () Bool)

(assert (=> d!119773 m!933843))

(assert (=> d!119773 m!933841))

(assert (=> d!119773 m!933677))

(declare-fun m!933845 () Bool)

(assert (=> d!119773 m!933845))

(declare-fun m!933847 () Bool)

(assert (=> b!1009147 m!933847))

(assert (=> b!1009092 d!119773))

(assert (=> d!119727 d!119739))

(assert (=> b!1009094 d!119757))

(declare-fun b!1009150 () Bool)

(declare-fun lt!446026 () SeekEntryResult!9542)

(assert (=> b!1009150 (and (bvsge (index!40540 lt!446026) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446026) (size!31113 lt!445837)))))

(declare-fun res!677970 () Bool)

(assert (=> b!1009150 (= res!677970 (= (select (arr!30610 lt!445837) (index!40540 lt!446026)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567816 () Bool)

(assert (=> b!1009150 (=> res!677970 e!567816)))

(declare-fun b!1009151 () Bool)

(assert (=> b!1009151 (and (bvsge (index!40540 lt!446026) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446026) (size!31113 lt!445837)))))

(assert (=> b!1009151 (= e!567816 (= (select (arr!30610 lt!445837) (index!40540 lt!446026)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009152 () Bool)

(assert (=> b!1009152 (and (bvsge (index!40540 lt!446026) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446026) (size!31113 lt!445837)))))

(declare-fun res!677971 () Bool)

(assert (=> b!1009152 (= res!677971 (= (select (arr!30610 lt!445837) (index!40540 lt!446026)) lt!445838))))

(assert (=> b!1009152 (=> res!677971 e!567816)))

(declare-fun e!567815 () Bool)

(assert (=> b!1009152 (= e!567815 e!567816)))

(declare-fun d!119775 () Bool)

(declare-fun e!567814 () Bool)

(assert (=> d!119775 e!567814))

(declare-fun c!101747 () Bool)

(assert (=> d!119775 (= c!101747 (and (is-Intermediate!9542 lt!446026) (undefined!10354 lt!446026)))))

(declare-fun e!567812 () SeekEntryResult!9542)

(assert (=> d!119775 (= lt!446026 e!567812)))

(declare-fun c!101749 () Bool)

(assert (=> d!119775 (= c!101749 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446027 () (_ BitVec 64))

(assert (=> d!119775 (= lt!446027 (select (arr!30610 lt!445837) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119775 (validMask!0 mask!3464)))

(assert (=> d!119775 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445838 lt!445837 mask!3464) lt!446026)))

(declare-fun b!1009153 () Bool)

(assert (=> b!1009153 (= e!567814 (bvsge (x!87957 lt!446026) #b01111111111111111111111111111110))))

(declare-fun b!1009154 () Bool)

(declare-fun e!567813 () SeekEntryResult!9542)

(assert (=> b!1009154 (= e!567812 e!567813)))

(declare-fun c!101748 () Bool)

(assert (=> b!1009154 (= c!101748 (or (= lt!446027 lt!445838) (= (bvadd lt!446027 lt!446027) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009155 () Bool)

(assert (=> b!1009155 (= e!567813 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) lt!445838 lt!445837 mask!3464))))

(declare-fun b!1009156 () Bool)

(assert (=> b!1009156 (= e!567812 (Intermediate!9542 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009157 () Bool)

(assert (=> b!1009157 (= e!567814 e!567815)))

(declare-fun res!677969 () Bool)

(assert (=> b!1009157 (= res!677969 (and (is-Intermediate!9542 lt!446026) (not (undefined!10354 lt!446026)) (bvslt (x!87957 lt!446026) #b01111111111111111111111111111110) (bvsge (x!87957 lt!446026) #b00000000000000000000000000000000) (bvsge (x!87957 lt!446026) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009157 (=> (not res!677969) (not e!567815))))

(declare-fun b!1009158 () Bool)

(assert (=> b!1009158 (= e!567813 (Intermediate!9542 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(assert (= (and d!119775 c!101749) b!1009156))

(assert (= (and d!119775 (not c!101749)) b!1009154))

(assert (= (and b!1009154 c!101748) b!1009158))

(assert (= (and b!1009154 (not c!101748)) b!1009155))

(assert (= (and d!119775 c!101747) b!1009153))

(assert (= (and d!119775 (not c!101747)) b!1009157))

(assert (= (and b!1009157 res!677969) b!1009152))

(assert (= (and b!1009152 (not res!677971)) b!1009150))

(assert (= (and b!1009150 (not res!677970)) b!1009151))

(assert (=> d!119775 m!933527))

(declare-fun m!933849 () Bool)

(assert (=> d!119775 m!933849))

(assert (=> d!119775 m!933507))

(assert (=> b!1009155 m!933527))

(declare-fun m!933851 () Bool)

(assert (=> b!1009155 m!933851))

(assert (=> b!1009155 m!933851))

(declare-fun m!933853 () Bool)

(assert (=> b!1009155 m!933853))

(declare-fun m!933855 () Bool)

(assert (=> b!1009151 m!933855))

(assert (=> b!1009150 m!933855))

(assert (=> b!1009152 m!933855))

(assert (=> b!1009048 d!119775))

(assert (=> b!1009048 d!119721))

(assert (=> d!119731 d!119739))

(declare-fun b!1009159 () Bool)

(declare-fun e!567819 () Bool)

(declare-fun e!567817 () Bool)

(assert (=> b!1009159 (= e!567819 e!567817)))

(declare-fun c!101750 () Bool)

(assert (=> b!1009159 (= c!101750 (validKeyInArray!0 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1009160 () Bool)

(declare-fun e!567818 () Bool)

(assert (=> b!1009160 (= e!567818 (contains!5898 (ite c!101679 (Cons!21408 (select (arr!30610 a!3219) #b00000000000000000000000000000000) Nil!21409) Nil!21409) (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!42387 () Bool)

(declare-fun bm!42384 () Bool)

(assert (=> bm!42384 (= call!42387 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!101750 (Cons!21408 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!101679 (Cons!21408 (select (arr!30610 a!3219) #b00000000000000000000000000000000) Nil!21409) Nil!21409)) (ite c!101679 (Cons!21408 (select (arr!30610 a!3219) #b00000000000000000000000000000000) Nil!21409) Nil!21409))))))

(declare-fun b!1009161 () Bool)

(assert (=> b!1009161 (= e!567817 call!42387)))

(declare-fun b!1009162 () Bool)

(declare-fun e!567820 () Bool)

(assert (=> b!1009162 (= e!567820 e!567819)))

(declare-fun res!677973 () Bool)

(assert (=> b!1009162 (=> (not res!677973) (not e!567819))))

(assert (=> b!1009162 (= res!677973 (not e!567818))))

(declare-fun res!677972 () Bool)

(assert (=> b!1009162 (=> (not res!677972) (not e!567818))))

(assert (=> b!1009162 (= res!677972 (validKeyInArray!0 (select (arr!30610 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!119777 () Bool)

(declare-fun res!677974 () Bool)

(assert (=> d!119777 (=> res!677974 e!567820)))

(assert (=> d!119777 (= res!677974 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31113 a!3219)))))

(assert (=> d!119777 (= (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101679 (Cons!21408 (select (arr!30610 a!3219) #b00000000000000000000000000000000) Nil!21409) Nil!21409)) e!567820)))

(declare-fun b!1009163 () Bool)

(assert (=> b!1009163 (= e!567817 call!42387)))

(assert (= (and d!119777 (not res!677974)) b!1009162))

(assert (= (and b!1009162 res!677972) b!1009160))

(assert (= (and b!1009162 res!677973) b!1009159))

(assert (= (and b!1009159 c!101750) b!1009163))

(assert (= (and b!1009159 (not c!101750)) b!1009161))

(assert (= (or b!1009163 b!1009161) bm!42384))

(assert (=> b!1009159 m!933799))

(assert (=> b!1009159 m!933799))

(assert (=> b!1009159 m!933817))

(assert (=> b!1009160 m!933799))

(assert (=> b!1009160 m!933799))

(declare-fun m!933857 () Bool)

(assert (=> b!1009160 m!933857))

(assert (=> bm!42384 m!933799))

(declare-fun m!933859 () Bool)

(assert (=> bm!42384 m!933859))

(assert (=> b!1009162 m!933799))

(assert (=> b!1009162 m!933799))

(assert (=> b!1009162 m!933817))

(assert (=> bm!42376 d!119777))

(declare-fun b!1009164 () Bool)

(declare-fun lt!446028 () SeekEntryResult!9542)

(assert (=> b!1009164 (and (bvsge (index!40540 lt!446028) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446028) (size!31113 a!3219)))))

(declare-fun res!677976 () Bool)

(assert (=> b!1009164 (= res!677976 (= (select (arr!30610 a!3219) (index!40540 lt!446028)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567825 () Bool)

(assert (=> b!1009164 (=> res!677976 e!567825)))

(declare-fun b!1009165 () Bool)

(assert (=> b!1009165 (and (bvsge (index!40540 lt!446028) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446028) (size!31113 a!3219)))))

(assert (=> b!1009165 (= e!567825 (= (select (arr!30610 a!3219) (index!40540 lt!446028)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009166 () Bool)

(assert (=> b!1009166 (and (bvsge (index!40540 lt!446028) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446028) (size!31113 a!3219)))))

(declare-fun res!677977 () Bool)

(assert (=> b!1009166 (= res!677977 (= (select (arr!30610 a!3219) (index!40540 lt!446028)) k!2224))))

(assert (=> b!1009166 (=> res!677977 e!567825)))

(declare-fun e!567824 () Bool)

(assert (=> b!1009166 (= e!567824 e!567825)))

(declare-fun d!119779 () Bool)

(declare-fun e!567823 () Bool)

(assert (=> d!119779 e!567823))

(declare-fun c!101751 () Bool)

(assert (=> d!119779 (= c!101751 (and (is-Intermediate!9542 lt!446028) (undefined!10354 lt!446028)))))

(declare-fun e!567821 () SeekEntryResult!9542)

(assert (=> d!119779 (= lt!446028 e!567821)))

(declare-fun c!101753 () Bool)

(assert (=> d!119779 (= c!101753 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446029 () (_ BitVec 64))

(assert (=> d!119779 (= lt!446029 (select (arr!30610 a!3219) (toIndex!0 k!2224 mask!3464)))))

(assert (=> d!119779 (validMask!0 mask!3464)))

(assert (=> d!119779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464) lt!446028)))

(declare-fun b!1009167 () Bool)

(assert (=> b!1009167 (= e!567823 (bvsge (x!87957 lt!446028) #b01111111111111111111111111111110))))

(declare-fun b!1009168 () Bool)

(declare-fun e!567822 () SeekEntryResult!9542)

(assert (=> b!1009168 (= e!567821 e!567822)))

(declare-fun c!101752 () Bool)

(assert (=> b!1009168 (= c!101752 (or (= lt!446029 k!2224) (= (bvadd lt!446029 lt!446029) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009169 () Bool)

(assert (=> b!1009169 (= e!567822 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000 mask!3464) k!2224 a!3219 mask!3464))))

(declare-fun b!1009170 () Bool)

(assert (=> b!1009170 (= e!567821 (Intermediate!9542 true (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009171 () Bool)

(assert (=> b!1009171 (= e!567823 e!567824)))

(declare-fun res!677975 () Bool)

(assert (=> b!1009171 (= res!677975 (and (is-Intermediate!9542 lt!446028) (not (undefined!10354 lt!446028)) (bvslt (x!87957 lt!446028) #b01111111111111111111111111111110) (bvsge (x!87957 lt!446028) #b00000000000000000000000000000000) (bvsge (x!87957 lt!446028) #b00000000000000000000000000000000)))))

(assert (=> b!1009171 (=> (not res!677975) (not e!567824))))

(declare-fun b!1009172 () Bool)

(assert (=> b!1009172 (= e!567822 (Intermediate!9542 false (toIndex!0 k!2224 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119779 c!101753) b!1009170))

(assert (= (and d!119779 (not c!101753)) b!1009168))

(assert (= (and b!1009168 c!101752) b!1009172))

(assert (= (and b!1009168 (not c!101752)) b!1009169))

(assert (= (and d!119779 c!101751) b!1009167))

(assert (= (and d!119779 (not c!101751)) b!1009171))

(assert (= (and b!1009171 res!677975) b!1009166))

(assert (= (and b!1009166 (not res!677977)) b!1009164))

(assert (= (and b!1009164 (not res!677976)) b!1009165))

(assert (=> d!119779 m!933735))

(declare-fun m!933861 () Bool)

(assert (=> d!119779 m!933861))

(assert (=> d!119779 m!933507))

(assert (=> b!1009169 m!933735))

(declare-fun m!933863 () Bool)

(assert (=> b!1009169 m!933863))

(assert (=> b!1009169 m!933863))

(declare-fun m!933865 () Bool)

(assert (=> b!1009169 m!933865))

(declare-fun m!933867 () Bool)

(assert (=> b!1009165 m!933867))

(assert (=> b!1009164 m!933867))

(assert (=> b!1009166 m!933867))

(assert (=> d!119703 d!119779))

(declare-fun d!119781 () Bool)

(declare-fun lt!446031 () (_ BitVec 32))

(declare-fun lt!446030 () (_ BitVec 32))

(assert (=> d!119781 (= lt!446031 (bvmul (bvxor lt!446030 (bvlshr lt!446030 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119781 (= lt!446030 ((_ extract 31 0) (bvand (bvxor k!2224 (bvlshr k!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119781 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677886 (let ((h!22598 ((_ extract 31 0) (bvand (bvxor k!2224 (bvlshr k!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87963 (bvmul (bvxor h!22598 (bvlshr h!22598 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87963 (bvlshr x!87963 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677886 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677886 #b00000000000000000000000000000000))))))

(assert (=> d!119781 (= (toIndex!0 k!2224 mask!3464) (bvand (bvxor lt!446031 (bvlshr lt!446031 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> d!119703 d!119781))

(assert (=> d!119703 d!119739))

(declare-fun d!119783 () Bool)

(declare-fun lt!446034 () Bool)

(declare-fun content!486 (List!21412) (Set (_ BitVec 64)))

(assert (=> d!119783 (= lt!446034 (set.member (select (arr!30610 a!3219) #b00000000000000000000000000000000) (content!486 Nil!21409)))))

(declare-fun e!567830 () Bool)

(assert (=> d!119783 (= lt!446034 e!567830)))

(declare-fun res!677982 () Bool)

(assert (=> d!119783 (=> (not res!677982) (not e!567830))))

(assert (=> d!119783 (= res!677982 (is-Cons!21408 Nil!21409))))

(assert (=> d!119783 (= (contains!5898 Nil!21409 (select (arr!30610 a!3219) #b00000000000000000000000000000000)) lt!446034)))

(declare-fun b!1009177 () Bool)

(declare-fun e!567831 () Bool)

(assert (=> b!1009177 (= e!567830 e!567831)))

(declare-fun res!677983 () Bool)

(assert (=> b!1009177 (=> res!677983 e!567831)))

(assert (=> b!1009177 (= res!677983 (= (h!22594 Nil!21409) (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009178 () Bool)

(assert (=> b!1009178 (= e!567831 (contains!5898 (t!30421 Nil!21409) (select (arr!30610 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119783 res!677982) b!1009177))

(assert (= (and b!1009177 (not res!677983)) b!1009178))

(declare-fun m!933869 () Bool)

(assert (=> d!119783 m!933869))

(assert (=> d!119783 m!933677))

(declare-fun m!933871 () Bool)

(assert (=> d!119783 m!933871))

(assert (=> b!1009178 m!933677))

(declare-fun m!933873 () Bool)

(assert (=> b!1009178 m!933873))

(assert (=> b!1008958 d!119783))

(declare-fun b!1009179 () Bool)

(declare-fun lt!446035 () SeekEntryResult!9542)

(assert (=> b!1009179 (and (bvsge (index!40540 lt!446035) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446035) (size!31113 a!3219)))))

(declare-fun res!677985 () Bool)

(assert (=> b!1009179 (= res!677985 (= (select (arr!30610 a!3219) (index!40540 lt!446035)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567836 () Bool)

(assert (=> b!1009179 (=> res!677985 e!567836)))

(declare-fun b!1009180 () Bool)

(assert (=> b!1009180 (and (bvsge (index!40540 lt!446035) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446035) (size!31113 a!3219)))))

(assert (=> b!1009180 (= e!567836 (= (select (arr!30610 a!3219) (index!40540 lt!446035)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009181 () Bool)

(assert (=> b!1009181 (and (bvsge (index!40540 lt!446035) #b00000000000000000000000000000000) (bvslt (index!40540 lt!446035) (size!31113 a!3219)))))

(declare-fun res!677986 () Bool)

(assert (=> b!1009181 (= res!677986 (= (select (arr!30610 a!3219) (index!40540 lt!446035)) (select (arr!30610 a!3219) j!170)))))

(assert (=> b!1009181 (=> res!677986 e!567836)))

(declare-fun e!567835 () Bool)

(assert (=> b!1009181 (= e!567835 e!567836)))

(declare-fun d!119785 () Bool)

(declare-fun e!567834 () Bool)

(assert (=> d!119785 e!567834))

(declare-fun c!101754 () Bool)

(assert (=> d!119785 (= c!101754 (and (is-Intermediate!9542 lt!446035) (undefined!10354 lt!446035)))))

(declare-fun e!567832 () SeekEntryResult!9542)

(assert (=> d!119785 (= lt!446035 e!567832)))

(declare-fun c!101756 () Bool)

(assert (=> d!119785 (= c!101756 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446036 () (_ BitVec 64))

(assert (=> d!119785 (= lt!446036 (select (arr!30610 a!3219) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119785 (validMask!0 mask!3464)))

(assert (=> d!119785 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464) lt!446035)))

(declare-fun b!1009182 () Bool)

(assert (=> b!1009182 (= e!567834 (bvsge (x!87957 lt!446035) #b01111111111111111111111111111110))))

(declare-fun b!1009183 () Bool)

(declare-fun e!567833 () SeekEntryResult!9542)

(assert (=> b!1009183 (= e!567832 e!567833)))

(declare-fun c!101755 () Bool)

(assert (=> b!1009183 (= c!101755 (or (= lt!446036 (select (arr!30610 a!3219) j!170)) (= (bvadd lt!446036 lt!446036) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009184 () Bool)

(assert (=> b!1009184 (= e!567833 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) (select (arr!30610 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009185 () Bool)

(assert (=> b!1009185 (= e!567832 (Intermediate!9542 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009186 () Bool)

(assert (=> b!1009186 (= e!567834 e!567835)))

(declare-fun res!677984 () Bool)

(assert (=> b!1009186 (= res!677984 (and (is-Intermediate!9542 lt!446035) (not (undefined!10354 lt!446035)) (bvslt (x!87957 lt!446035) #b01111111111111111111111111111110) (bvsge (x!87957 lt!446035) #b00000000000000000000000000000000) (bvsge (x!87957 lt!446035) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009186 (=> (not res!677984) (not e!567835))))

(declare-fun b!1009187 () Bool)

(assert (=> b!1009187 (= e!567833 (Intermediate!9542 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(assert (= (and d!119785 c!101756) b!1009185))

(assert (= (and d!119785 (not c!101756)) b!1009183))

(assert (= (and b!1009183 c!101755) b!1009187))

(assert (= (and b!1009183 (not c!101755)) b!1009184))

(assert (= (and d!119785 c!101754) b!1009182))

(assert (= (and d!119785 (not c!101754)) b!1009186))

(assert (= (and b!1009186 res!677984) b!1009181))

(assert (= (and b!1009181 (not res!677986)) b!1009179))

(assert (= (and b!1009179 (not res!677985)) b!1009180))

(assert (=> d!119785 m!933527))

(declare-fun m!933875 () Bool)

(assert (=> d!119785 m!933875))

(assert (=> d!119785 m!933507))

(assert (=> b!1009184 m!933527))

(assert (=> b!1009184 m!933851))

(assert (=> b!1009184 m!933851))

(assert (=> b!1009184 m!933495))

(declare-fun m!933877 () Bool)

(assert (=> b!1009184 m!933877))

(declare-fun m!933879 () Bool)

(assert (=> b!1009180 m!933879))

(assert (=> b!1009179 m!933879))

(assert (=> b!1009181 m!933879))

(assert (=> b!1009057 d!119785))

(assert (=> b!1009057 d!119721))

(push 1)

(assert (not d!119755))

(assert (not d!119773))

(assert (not b!1009178))

(assert (not b!1009159))

(assert (not b!1009184))

(assert (not b!1009105))

(assert (not d!119769))

(assert (not bm!42383))

(assert (not b!1009169))

(assert (not d!119785))

(assert (not b!1009155))

(assert (not b!1009138))

(assert (not d!119765))

(assert (not b!1009130))

(assert (not b!1009132))

(assert (not b!1009160))

(assert (not b!1009162))

(assert (not d!119775))

(assert (not bm!42384))

(assert (not b!1009143))

(assert (not b!1009144))

(assert (not d!119761))

(assert (not d!119767))

(assert (not d!119779))

(assert (not b!1009110))

(assert (not d!119753))

(assert (not b!1009127))

(assert (not d!119783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

