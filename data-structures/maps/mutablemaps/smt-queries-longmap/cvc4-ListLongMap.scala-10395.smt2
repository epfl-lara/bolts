; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122492 () Bool)

(assert start!122492)

(declare-fun res!954520 () Bool)

(declare-fun e!802840 () Bool)

(assert (=> start!122492 (=> (not res!954520) (not e!802840))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122492 (= res!954520 (validMask!0 mask!2608))))

(assert (=> start!122492 e!802840))

(assert (=> start!122492 true))

(declare-datatypes ((array!96853 0))(
  ( (array!96854 (arr!46743 (Array (_ BitVec 32) (_ BitVec 64))) (size!47294 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96853)

(declare-fun array_inv!35688 (array!96853) Bool)

(assert (=> start!122492 (array_inv!35688 a!2831)))

(declare-fun b!1418802 () Bool)

(declare-fun res!954524 () Bool)

(assert (=> b!1418802 (=> (not res!954524) (not e!802840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96853 (_ BitVec 32)) Bool)

(assert (=> b!1418802 (= res!954524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418803 () Bool)

(assert (=> b!1418803 (= e!802840 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsgt mask!2608 #b00111111111111111111111111111111)))))

(declare-fun b!1418804 () Bool)

(declare-fun res!954521 () Bool)

(assert (=> b!1418804 (=> (not res!954521) (not e!802840))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418804 (= res!954521 (validKeyInArray!0 (select (arr!46743 a!2831) j!81)))))

(declare-fun b!1418805 () Bool)

(declare-fun res!954523 () Bool)

(assert (=> b!1418805 (=> (not res!954523) (not e!802840))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418805 (= res!954523 (and (= (size!47294 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47294 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47294 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418806 () Bool)

(declare-fun res!954519 () Bool)

(assert (=> b!1418806 (=> (not res!954519) (not e!802840))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11050 0))(
  ( (MissingZero!11050 (index!46591 (_ BitVec 32))) (Found!11050 (index!46592 (_ BitVec 32))) (Intermediate!11050 (undefined!11862 Bool) (index!46593 (_ BitVec 32)) (x!128259 (_ BitVec 32))) (Undefined!11050) (MissingVacant!11050 (index!46594 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96853 (_ BitVec 32)) SeekEntryResult!11050)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418806 (= res!954519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) (select (arr!46743 a!2831) j!81) a!2831 mask!2608) (Intermediate!11050 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1418807 () Bool)

(declare-fun res!954525 () Bool)

(assert (=> b!1418807 (=> (not res!954525) (not e!802840))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418807 (= res!954525 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47294 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47294 a!2831))))))

(declare-fun b!1418808 () Bool)

(declare-fun res!954522 () Bool)

(assert (=> b!1418808 (=> (not res!954522) (not e!802840))))

(assert (=> b!1418808 (= res!954522 (validKeyInArray!0 (select (arr!46743 a!2831) i!982)))))

(declare-fun b!1418809 () Bool)

(declare-fun res!954518 () Bool)

(assert (=> b!1418809 (=> (not res!954518) (not e!802840))))

(declare-datatypes ((List!33433 0))(
  ( (Nil!33430) (Cons!33429 (h!34725 (_ BitVec 64)) (t!48134 List!33433)) )
))
(declare-fun arrayNoDuplicates!0 (array!96853 (_ BitVec 32) List!33433) Bool)

(assert (=> b!1418809 (= res!954518 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33430))))

(assert (= (and start!122492 res!954520) b!1418805))

(assert (= (and b!1418805 res!954523) b!1418808))

(assert (= (and b!1418808 res!954522) b!1418804))

(assert (= (and b!1418804 res!954521) b!1418802))

(assert (= (and b!1418802 res!954524) b!1418809))

(assert (= (and b!1418809 res!954518) b!1418807))

(assert (= (and b!1418807 res!954525) b!1418806))

(assert (= (and b!1418806 res!954519) b!1418803))

(declare-fun m!1309455 () Bool)

(assert (=> b!1418804 m!1309455))

(assert (=> b!1418804 m!1309455))

(declare-fun m!1309457 () Bool)

(assert (=> b!1418804 m!1309457))

(declare-fun m!1309459 () Bool)

(assert (=> start!122492 m!1309459))

(declare-fun m!1309461 () Bool)

(assert (=> start!122492 m!1309461))

(assert (=> b!1418806 m!1309455))

(assert (=> b!1418806 m!1309455))

(declare-fun m!1309463 () Bool)

(assert (=> b!1418806 m!1309463))

(assert (=> b!1418806 m!1309463))

(assert (=> b!1418806 m!1309455))

(declare-fun m!1309465 () Bool)

(assert (=> b!1418806 m!1309465))

(declare-fun m!1309467 () Bool)

(assert (=> b!1418809 m!1309467))

(declare-fun m!1309469 () Bool)

(assert (=> b!1418802 m!1309469))

(declare-fun m!1309471 () Bool)

(assert (=> b!1418808 m!1309471))

(assert (=> b!1418808 m!1309471))

(declare-fun m!1309473 () Bool)

(assert (=> b!1418808 m!1309473))

(push 1)

(assert (not b!1418809))

(assert (not b!1418804))

(assert (not b!1418808))

(assert (not start!122492))

(assert (not b!1418802))

(assert (not b!1418806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1418852 () Bool)

(declare-fun lt!625620 () SeekEntryResult!11050)

(assert (=> b!1418852 (and (bvsge (index!46593 lt!625620) #b00000000000000000000000000000000) (bvslt (index!46593 lt!625620) (size!47294 a!2831)))))

(declare-fun res!954544 () Bool)

(assert (=> b!1418852 (= res!954544 (= (select (arr!46743 a!2831) (index!46593 lt!625620)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!802874 () Bool)

(assert (=> b!1418852 (=> res!954544 e!802874)))

(declare-fun b!1418853 () Bool)

(declare-fun e!802872 () Bool)

(assert (=> b!1418853 (= e!802872 (bvsge (x!128259 lt!625620) #b01111111111111111111111111111110))))

(declare-fun b!1418854 () Bool)

(declare-fun e!802871 () SeekEntryResult!11050)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418854 (= e!802871 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46743 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!152869 () Bool)

(assert (=> d!152869 e!802872))

(declare-fun c!131641 () Bool)

(assert (=> d!152869 (= c!131641 (and (is-Intermediate!11050 lt!625620) (undefined!11862 lt!625620)))))

(declare-fun e!802870 () SeekEntryResult!11050)

(assert (=> d!152869 (= lt!625620 e!802870)))

(declare-fun c!131642 () Bool)

(assert (=> d!152869 (= c!131642 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!625621 () (_ BitVec 64))

(assert (=> d!152869 (= lt!625621 (select (arr!46743 a!2831) (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608)))))

(assert (=> d!152869 (validMask!0 mask!2608)))

(assert (=> d!152869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) (select (arr!46743 a!2831) j!81) a!2831 mask!2608) lt!625620)))

(declare-fun b!1418855 () Bool)

(assert (=> b!1418855 (= e!802870 e!802871)))

(declare-fun c!131640 () Bool)

(assert (=> b!1418855 (= c!131640 (or (= lt!625621 (select (arr!46743 a!2831) j!81)) (= (bvadd lt!625621 lt!625621) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1418856 () Bool)

(assert (=> b!1418856 (= e!802870 (Intermediate!11050 true (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1418857 () Bool)

(declare-fun e!802873 () Bool)

(assert (=> b!1418857 (= e!802872 e!802873)))

(declare-fun res!954546 () Bool)

(assert (=> b!1418857 (= res!954546 (and (is-Intermediate!11050 lt!625620) (not (undefined!11862 lt!625620)) (bvslt (x!128259 lt!625620) #b01111111111111111111111111111110) (bvsge (x!128259 lt!625620) #b00000000000000000000000000000000) (bvsge (x!128259 lt!625620) #b00000000000000000000000000000000)))))

(assert (=> b!1418857 (=> (not res!954546) (not e!802873))))

(declare-fun b!1418858 () Bool)

(assert (=> b!1418858 (and (bvsge (index!46593 lt!625620) #b00000000000000000000000000000000) (bvslt (index!46593 lt!625620) (size!47294 a!2831)))))

(declare-fun res!954545 () Bool)

(assert (=> b!1418858 (= res!954545 (= (select (arr!46743 a!2831) (index!46593 lt!625620)) (select (arr!46743 a!2831) j!81)))))

(assert (=> b!1418858 (=> res!954545 e!802874)))

(assert (=> b!1418858 (= e!802873 e!802874)))

(declare-fun b!1418859 () Bool)

(assert (=> b!1418859 (= e!802871 (Intermediate!11050 false (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1418860 () Bool)

(assert (=> b!1418860 (and (bvsge (index!46593 lt!625620) #b00000000000000000000000000000000) (bvslt (index!46593 lt!625620) (size!47294 a!2831)))))

(assert (=> b!1418860 (= e!802874 (= (select (arr!46743 a!2831) (index!46593 lt!625620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152869 c!131642) b!1418856))

(assert (= (and d!152869 (not c!131642)) b!1418855))

(assert (= (and b!1418855 c!131640) b!1418859))

(assert (= (and b!1418855 (not c!131640)) b!1418854))

(assert (= (and d!152869 c!131641) b!1418853))

(assert (= (and d!152869 (not c!131641)) b!1418857))

(assert (= (and b!1418857 res!954546) b!1418858))

(assert (= (and b!1418858 (not res!954545)) b!1418852))

(assert (= (and b!1418852 (not res!954544)) b!1418860))

(declare-fun m!1309499 () Bool)

(assert (=> b!1418858 m!1309499))

(assert (=> d!152869 m!1309463))

(declare-fun m!1309501 () Bool)

(assert (=> d!152869 m!1309501))

(assert (=> d!152869 m!1309459))

(assert (=> b!1418854 m!1309463))

(declare-fun m!1309503 () Bool)

(assert (=> b!1418854 m!1309503))

(assert (=> b!1418854 m!1309503))

(assert (=> b!1418854 m!1309455))

(declare-fun m!1309505 () Bool)

(assert (=> b!1418854 m!1309505))

(assert (=> b!1418860 m!1309499))

(assert (=> b!1418852 m!1309499))

(assert (=> b!1418806 d!152869))

(declare-fun d!152881 () Bool)

(declare-fun lt!625631 () (_ BitVec 32))

(declare-fun lt!625630 () (_ BitVec 32))

(assert (=> d!152881 (= lt!625631 (bvmul (bvxor lt!625630 (bvlshr lt!625630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152881 (= lt!625630 ((_ extract 31 0) (bvand (bvxor (select (arr!46743 a!2831) j!81) (bvlshr (select (arr!46743 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152881 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954553 (let ((h!34726 ((_ extract 31 0) (bvand (bvxor (select (arr!46743 a!2831) j!81) (bvlshr (select (arr!46743 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128262 (bvmul (bvxor h!34726 (bvlshr h!34726 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128262 (bvlshr x!128262 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954553 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954553 #b00000000000000000000000000000000))))))

(assert (=> d!152881 (= (toIndex!0 (select (arr!46743 a!2831) j!81) mask!2608) (bvand (bvxor lt!625631 (bvlshr lt!625631 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1418806 d!152881))

(declare-fun d!152885 () Bool)

(assert (=> d!152885 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122492 d!152885))

(declare-fun d!152891 () Bool)

(assert (=> d!152891 (= (array_inv!35688 a!2831) (bvsge (size!47294 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122492 d!152891))

(declare-fun d!152893 () Bool)

(assert (=> d!152893 (= (validKeyInArray!0 (select (arr!46743 a!2831) j!81)) (and (not (= (select (arr!46743 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46743 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418804 d!152893))

(declare-fun d!152895 () Bool)

(declare-fun res!954589 () Bool)

(declare-fun e!802935 () Bool)

(assert (=> d!152895 (=> res!954589 e!802935)))

(assert (=> d!152895 (= res!954589 (bvsge #b00000000000000000000000000000000 (size!47294 a!2831)))))

(assert (=> d!152895 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33430) e!802935)))

(declare-fun b!1418946 () Bool)

(declare-fun e!802934 () Bool)

(declare-fun contains!9853 (List!33433 (_ BitVec 64)) Bool)

(assert (=> b!1418946 (= e!802934 (contains!9853 Nil!33430 (select (arr!46743 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67296 () Bool)

(declare-fun call!67299 () Bool)

(declare-fun c!131666 () Bool)

(assert (=> bm!67296 (= call!67299 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131666 (Cons!33429 (select (arr!46743 a!2831) #b00000000000000000000000000000000) Nil!33430) Nil!33430)))))

