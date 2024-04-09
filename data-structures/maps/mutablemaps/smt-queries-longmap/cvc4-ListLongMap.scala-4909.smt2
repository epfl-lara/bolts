; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67718 () Bool)

(assert start!67718)

(declare-fun b!784760 () Bool)

(declare-fun e!436329 () Bool)

(declare-fun e!436323 () Bool)

(assert (=> b!784760 (= e!436329 e!436323)))

(declare-fun res!531244 () Bool)

(assert (=> b!784760 (=> (not res!531244) (not e!436323))))

(declare-datatypes ((SeekEntryResult!8048 0))(
  ( (MissingZero!8048 (index!34559 (_ BitVec 32))) (Found!8048 (index!34560 (_ BitVec 32))) (Intermediate!8048 (undefined!8860 Bool) (index!34561 (_ BitVec 32)) (x!65533 (_ BitVec 32))) (Undefined!8048) (MissingVacant!8048 (index!34562 (_ BitVec 32))) )
))
(declare-fun lt!349895 () SeekEntryResult!8048)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784760 (= res!531244 (or (= lt!349895 (MissingZero!8048 i!1173)) (= lt!349895 (MissingVacant!8048 i!1173))))))

(declare-datatypes ((array!42713 0))(
  ( (array!42714 (arr!20441 (Array (_ BitVec 32) (_ BitVec 64))) (size!20862 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42713)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42713 (_ BitVec 32)) SeekEntryResult!8048)

(assert (=> b!784760 (= lt!349895 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!531245 () Bool)

(assert (=> start!67718 (=> (not res!531245) (not e!436329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67718 (= res!531245 (validMask!0 mask!3328))))

(assert (=> start!67718 e!436329))

(assert (=> start!67718 true))

(declare-fun array_inv!16215 (array!42713) Bool)

(assert (=> start!67718 (array_inv!16215 a!3186)))

(declare-fun b!784761 () Bool)

(declare-fun res!531251 () Bool)

(assert (=> b!784761 (=> (not res!531251) (not e!436323))))

(declare-datatypes ((List!14496 0))(
  ( (Nil!14493) (Cons!14492 (h!15615 (_ BitVec 64)) (t!20819 List!14496)) )
))
(declare-fun arrayNoDuplicates!0 (array!42713 (_ BitVec 32) List!14496) Bool)

(assert (=> b!784761 (= res!531251 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14493))))

(declare-fun b!784762 () Bool)

(declare-fun res!531252 () Bool)

(assert (=> b!784762 (=> (not res!531252) (not e!436329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784762 (= res!531252 (validKeyInArray!0 k!2102))))

(declare-fun b!784763 () Bool)

(declare-fun e!436326 () Bool)

(assert (=> b!784763 (= e!436323 e!436326)))

(declare-fun res!531242 () Bool)

(assert (=> b!784763 (=> (not res!531242) (not e!436326))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!349886 () SeekEntryResult!8048)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42713 (_ BitVec 32)) SeekEntryResult!8048)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784763 (= res!531242 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20441 a!3186) j!159) mask!3328) (select (arr!20441 a!3186) j!159) a!3186 mask!3328) lt!349886))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784763 (= lt!349886 (Intermediate!8048 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784764 () Bool)

(declare-datatypes ((Unit!27102 0))(
  ( (Unit!27103) )
))
(declare-fun e!436330 () Unit!27102)

(declare-fun Unit!27104 () Unit!27102)

(assert (=> b!784764 (= e!436330 Unit!27104)))

(declare-fun b!784765 () Bool)

(declare-fun lt!349894 () SeekEntryResult!8048)

(declare-fun e!436325 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42713 (_ BitVec 32)) SeekEntryResult!8048)

(assert (=> b!784765 (= e!436325 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20441 a!3186) j!159) a!3186 mask!3328) lt!349894))))

(declare-fun b!784766 () Bool)

(declare-fun res!531253 () Bool)

(declare-fun e!436321 () Bool)

(assert (=> b!784766 (=> (not res!531253) (not e!436321))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!349891 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!349889 () array!42713)

(assert (=> b!784766 (= res!531253 (= (seekEntryOrOpen!0 lt!349891 lt!349889 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349891 lt!349889 mask!3328)))))

(declare-fun b!784767 () Bool)

(declare-fun res!531250 () Bool)

(assert (=> b!784767 (=> (not res!531250) (not e!436326))))

(declare-fun e!436319 () Bool)

(assert (=> b!784767 (= res!531250 e!436319)))

(declare-fun c!87167 () Bool)

(assert (=> b!784767 (= c!87167 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784768 () Bool)

(declare-fun res!531255 () Bool)

(assert (=> b!784768 (=> (not res!531255) (not e!436326))))

(assert (=> b!784768 (= res!531255 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20441 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784769 () Bool)

(declare-fun res!531241 () Bool)

(assert (=> b!784769 (=> (not res!531241) (not e!436329))))

(declare-fun arrayContainsKey!0 (array!42713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784769 (= res!531241 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784770 () Bool)

(declare-fun e!436327 () Bool)

(assert (=> b!784770 (= e!436326 e!436327)))

(declare-fun res!531254 () Bool)

(assert (=> b!784770 (=> (not res!531254) (not e!436327))))

(declare-fun lt!349897 () SeekEntryResult!8048)

(declare-fun lt!349888 () SeekEntryResult!8048)

(assert (=> b!784770 (= res!531254 (= lt!349897 lt!349888))))

(assert (=> b!784770 (= lt!349888 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349891 lt!349889 mask!3328))))

(assert (=> b!784770 (= lt!349897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349891 mask!3328) lt!349891 lt!349889 mask!3328))))

(assert (=> b!784770 (= lt!349891 (select (store (arr!20441 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784770 (= lt!349889 (array!42714 (store (arr!20441 a!3186) i!1173 k!2102) (size!20862 a!3186)))))

(declare-fun b!784771 () Bool)

(declare-fun e!436322 () Bool)

(declare-fun e!436328 () Bool)

(assert (=> b!784771 (= e!436322 e!436328)))

(declare-fun res!531256 () Bool)

(assert (=> b!784771 (=> res!531256 e!436328)))

(declare-fun lt!349890 () (_ BitVec 64))

(assert (=> b!784771 (= res!531256 (= lt!349890 lt!349891))))

(assert (=> b!784771 (= lt!349890 (select (store (arr!20441 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784772 () Bool)

(assert (=> b!784772 (= e!436319 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20441 a!3186) j!159) a!3186 mask!3328) (Found!8048 j!159)))))

(declare-fun b!784773 () Bool)

(declare-fun lt!349896 () SeekEntryResult!8048)

(declare-fun lt!349892 () SeekEntryResult!8048)

(assert (=> b!784773 (= e!436321 (= lt!349896 lt!349892))))

(declare-fun b!784774 () Bool)

(assert (=> b!784774 (= e!436319 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20441 a!3186) j!159) a!3186 mask!3328) lt!349886))))

(declare-fun b!784775 () Bool)

(declare-fun e!436320 () Bool)

(assert (=> b!784775 (= e!436327 (not e!436320))))

(declare-fun res!531243 () Bool)

(assert (=> b!784775 (=> res!531243 e!436320)))

(assert (=> b!784775 (= res!531243 (or (not (is-Intermediate!8048 lt!349888)) (bvslt x!1131 (x!65533 lt!349888)) (not (= x!1131 (x!65533 lt!349888))) (not (= index!1321 (index!34561 lt!349888)))))))

(assert (=> b!784775 e!436325))

(declare-fun res!531258 () Bool)

(assert (=> b!784775 (=> (not res!531258) (not e!436325))))

(assert (=> b!784775 (= res!531258 (= lt!349896 lt!349894))))

(assert (=> b!784775 (= lt!349894 (Found!8048 j!159))))

(assert (=> b!784775 (= lt!349896 (seekEntryOrOpen!0 (select (arr!20441 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42713 (_ BitVec 32)) Bool)

(assert (=> b!784775 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349893 () Unit!27102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27102)

(assert (=> b!784775 (= lt!349893 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784776 () Bool)

(declare-fun Unit!27105 () Unit!27102)

(assert (=> b!784776 (= e!436330 Unit!27105)))

(assert (=> b!784776 false))

(declare-fun b!784777 () Bool)

(declare-fun res!531257 () Bool)

(assert (=> b!784777 (=> (not res!531257) (not e!436329))))

(assert (=> b!784777 (= res!531257 (and (= (size!20862 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20862 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20862 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784778 () Bool)

(declare-fun res!531248 () Bool)

(assert (=> b!784778 (=> (not res!531248) (not e!436323))))

(assert (=> b!784778 (= res!531248 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20862 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20862 a!3186))))))

(declare-fun b!784779 () Bool)

(declare-fun res!531249 () Bool)

(assert (=> b!784779 (=> (not res!531249) (not e!436329))))

(assert (=> b!784779 (= res!531249 (validKeyInArray!0 (select (arr!20441 a!3186) j!159)))))

(declare-fun b!784780 () Bool)

(assert (=> b!784780 (= e!436328 true)))

(assert (=> b!784780 e!436321))

(declare-fun res!531247 () Bool)

(assert (=> b!784780 (=> (not res!531247) (not e!436321))))

(assert (=> b!784780 (= res!531247 (= lt!349890 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349887 () Unit!27102)

(assert (=> b!784780 (= lt!349887 e!436330)))

(declare-fun c!87168 () Bool)

(assert (=> b!784780 (= c!87168 (= lt!349890 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784781 () Bool)

(declare-fun res!531246 () Bool)

(assert (=> b!784781 (=> (not res!531246) (not e!436323))))

(assert (=> b!784781 (= res!531246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784782 () Bool)

(assert (=> b!784782 (= e!436320 e!436322)))

(declare-fun res!531259 () Bool)

(assert (=> b!784782 (=> res!531259 e!436322)))

(assert (=> b!784782 (= res!531259 (not (= lt!349892 lt!349894)))))

(assert (=> b!784782 (= lt!349892 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20441 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67718 res!531245) b!784777))

(assert (= (and b!784777 res!531257) b!784779))

(assert (= (and b!784779 res!531249) b!784762))

(assert (= (and b!784762 res!531252) b!784769))

(assert (= (and b!784769 res!531241) b!784760))

(assert (= (and b!784760 res!531244) b!784781))

(assert (= (and b!784781 res!531246) b!784761))

(assert (= (and b!784761 res!531251) b!784778))

(assert (= (and b!784778 res!531248) b!784763))

(assert (= (and b!784763 res!531242) b!784768))

(assert (= (and b!784768 res!531255) b!784767))

(assert (= (and b!784767 c!87167) b!784774))

(assert (= (and b!784767 (not c!87167)) b!784772))

(assert (= (and b!784767 res!531250) b!784770))

(assert (= (and b!784770 res!531254) b!784775))

(assert (= (and b!784775 res!531258) b!784765))

(assert (= (and b!784775 (not res!531243)) b!784782))

(assert (= (and b!784782 (not res!531259)) b!784771))

(assert (= (and b!784771 (not res!531256)) b!784780))

(assert (= (and b!784780 c!87168) b!784776))

(assert (= (and b!784780 (not c!87168)) b!784764))

(assert (= (and b!784780 res!531247) b!784766))

(assert (= (and b!784766 res!531253) b!784773))

(declare-fun m!727041 () Bool)

(assert (=> start!67718 m!727041))

(declare-fun m!727043 () Bool)

(assert (=> start!67718 m!727043))

(declare-fun m!727045 () Bool)

(assert (=> b!784761 m!727045))

(declare-fun m!727047 () Bool)

(assert (=> b!784772 m!727047))

(assert (=> b!784772 m!727047))

(declare-fun m!727049 () Bool)

(assert (=> b!784772 m!727049))

(assert (=> b!784763 m!727047))

(assert (=> b!784763 m!727047))

(declare-fun m!727051 () Bool)

(assert (=> b!784763 m!727051))

(assert (=> b!784763 m!727051))

(assert (=> b!784763 m!727047))

(declare-fun m!727053 () Bool)

(assert (=> b!784763 m!727053))

(declare-fun m!727055 () Bool)

(assert (=> b!784762 m!727055))

(declare-fun m!727057 () Bool)

(assert (=> b!784760 m!727057))

(declare-fun m!727059 () Bool)

(assert (=> b!784769 m!727059))

(declare-fun m!727061 () Bool)

(assert (=> b!784766 m!727061))

(declare-fun m!727063 () Bool)

(assert (=> b!784766 m!727063))

(assert (=> b!784779 m!727047))

(assert (=> b!784779 m!727047))

(declare-fun m!727065 () Bool)

(assert (=> b!784779 m!727065))

(declare-fun m!727067 () Bool)

(assert (=> b!784768 m!727067))

(declare-fun m!727069 () Bool)

(assert (=> b!784771 m!727069))

(declare-fun m!727071 () Bool)

(assert (=> b!784771 m!727071))

(declare-fun m!727073 () Bool)

(assert (=> b!784781 m!727073))

(assert (=> b!784765 m!727047))

(assert (=> b!784765 m!727047))

(declare-fun m!727075 () Bool)

(assert (=> b!784765 m!727075))

(assert (=> b!784775 m!727047))

(assert (=> b!784775 m!727047))

(declare-fun m!727077 () Bool)

(assert (=> b!784775 m!727077))

(declare-fun m!727079 () Bool)

(assert (=> b!784775 m!727079))

(declare-fun m!727081 () Bool)

(assert (=> b!784775 m!727081))

(assert (=> b!784770 m!727069))

(declare-fun m!727083 () Bool)

(assert (=> b!784770 m!727083))

(declare-fun m!727085 () Bool)

(assert (=> b!784770 m!727085))

(declare-fun m!727087 () Bool)

(assert (=> b!784770 m!727087))

(declare-fun m!727089 () Bool)

(assert (=> b!784770 m!727089))

(assert (=> b!784770 m!727083))

(assert (=> b!784774 m!727047))

(assert (=> b!784774 m!727047))

(declare-fun m!727091 () Bool)

(assert (=> b!784774 m!727091))

(assert (=> b!784782 m!727047))

(assert (=> b!784782 m!727047))

(assert (=> b!784782 m!727049))

(push 1)

