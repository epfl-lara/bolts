; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65640 () Bool)

(assert start!65640)

(declare-fun b!750773 () Bool)

(declare-fun e!418880 () Bool)

(declare-fun e!418875 () Bool)

(assert (=> b!750773 (= e!418880 e!418875)))

(declare-fun res!506894 () Bool)

(assert (=> b!750773 (=> (not res!506894) (not e!418875))))

(declare-datatypes ((array!41766 0))(
  ( (array!41767 (arr!19993 (Array (_ BitVec 32) (_ BitVec 64))) (size!20414 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41766)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7600 0))(
  ( (MissingZero!7600 (index!32767 (_ BitVec 32))) (Found!7600 (index!32768 (_ BitVec 32))) (Intermediate!7600 (undefined!8412 Bool) (index!32769 (_ BitVec 32)) (x!63719 (_ BitVec 32))) (Undefined!7600) (MissingVacant!7600 (index!32770 (_ BitVec 32))) )
))
(declare-fun lt!333877 () SeekEntryResult!7600)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41766 (_ BitVec 32)) SeekEntryResult!7600)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750773 (= res!506894 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19993 a!3186) j!159) mask!3328) (select (arr!19993 a!3186) j!159) a!3186 mask!3328) lt!333877))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750773 (= lt!333877 (Intermediate!7600 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750774 () Bool)

(declare-fun res!506900 () Bool)

(assert (=> b!750774 (=> (not res!506900) (not e!418875))))

(declare-fun e!418884 () Bool)

(assert (=> b!750774 (= res!506900 e!418884)))

(declare-fun c!82326 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!750774 (= c!82326 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!418876 () Bool)

(declare-fun lt!333879 () SeekEntryResult!7600)

(declare-fun b!750775 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41766 (_ BitVec 32)) SeekEntryResult!7600)

(assert (=> b!750775 (= e!418876 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19993 a!3186) j!159) a!3186 mask!3328) lt!333879))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!750776 () Bool)

(assert (=> b!750776 (= e!418884 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19993 a!3186) j!159) a!3186 mask!3328) lt!333877))))

(declare-fun b!750777 () Bool)

(declare-fun res!506890 () Bool)

(assert (=> b!750777 (=> (not res!506890) (not e!418880))))

(assert (=> b!750777 (= res!506890 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20414 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20414 a!3186))))))

(declare-fun b!750778 () Bool)

(assert (=> b!750778 (= e!418884 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19993 a!3186) j!159) a!3186 mask!3328) (Found!7600 j!159)))))

(declare-fun b!750779 () Bool)

(declare-fun e!418874 () Bool)

(assert (=> b!750779 (= e!418875 e!418874)))

(declare-fun res!506889 () Bool)

(assert (=> b!750779 (=> (not res!506889) (not e!418874))))

(declare-fun lt!333882 () SeekEntryResult!7600)

(declare-fun lt!333878 () SeekEntryResult!7600)

(assert (=> b!750779 (= res!506889 (= lt!333882 lt!333878))))

(declare-fun lt!333884 () (_ BitVec 64))

(declare-fun lt!333883 () array!41766)

(assert (=> b!750779 (= lt!333878 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333884 lt!333883 mask!3328))))

(assert (=> b!750779 (= lt!333882 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333884 mask!3328) lt!333884 lt!333883 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!750779 (= lt!333884 (select (store (arr!19993 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!750779 (= lt!333883 (array!41767 (store (arr!19993 a!3186) i!1173 k0!2102) (size!20414 a!3186)))))

(declare-fun b!750780 () Bool)

(declare-fun e!418883 () Bool)

(assert (=> b!750780 (= e!418883 true)))

(declare-fun e!418878 () Bool)

(assert (=> b!750780 e!418878))

(declare-fun res!506898 () Bool)

(assert (=> b!750780 (=> (not res!506898) (not e!418878))))

(declare-fun lt!333876 () (_ BitVec 64))

(assert (=> b!750780 (= res!506898 (= lt!333876 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25802 0))(
  ( (Unit!25803) )
))
(declare-fun lt!333874 () Unit!25802)

(declare-fun e!418879 () Unit!25802)

(assert (=> b!750780 (= lt!333874 e!418879)))

(declare-fun c!82325 () Bool)

(assert (=> b!750780 (= c!82325 (= lt!333876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750781 () Bool)

(declare-fun res!506893 () Bool)

(declare-fun e!418881 () Bool)

(assert (=> b!750781 (=> (not res!506893) (not e!418881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750781 (= res!506893 (validKeyInArray!0 k0!2102))))

(declare-fun b!750782 () Bool)

(declare-fun res!506888 () Bool)

(assert (=> b!750782 (=> (not res!506888) (not e!418881))))

(declare-fun arrayContainsKey!0 (array!41766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750782 (= res!506888 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750783 () Bool)

(declare-fun res!506899 () Bool)

(assert (=> b!750783 (=> (not res!506899) (not e!418880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41766 (_ BitVec 32)) Bool)

(assert (=> b!750783 (= res!506899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750784 () Bool)

(declare-fun Unit!25804 () Unit!25802)

(assert (=> b!750784 (= e!418879 Unit!25804)))

(assert (=> b!750784 false))

(declare-fun res!506895 () Bool)

(assert (=> start!65640 (=> (not res!506895) (not e!418881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65640 (= res!506895 (validMask!0 mask!3328))))

(assert (=> start!65640 e!418881))

(assert (=> start!65640 true))

(declare-fun array_inv!15767 (array!41766) Bool)

(assert (=> start!65640 (array_inv!15767 a!3186)))

(declare-fun b!750785 () Bool)

(declare-fun e!418882 () Bool)

(assert (=> b!750785 (= e!418874 (not e!418882))))

(declare-fun res!506891 () Bool)

(assert (=> b!750785 (=> res!506891 e!418882)))

(get-info :version)

(assert (=> b!750785 (= res!506891 (or (not ((_ is Intermediate!7600) lt!333878)) (bvslt x!1131 (x!63719 lt!333878)) (not (= x!1131 (x!63719 lt!333878))) (not (= index!1321 (index!32769 lt!333878)))))))

(assert (=> b!750785 e!418876))

(declare-fun res!506887 () Bool)

(assert (=> b!750785 (=> (not res!506887) (not e!418876))))

(declare-fun lt!333881 () SeekEntryResult!7600)

(assert (=> b!750785 (= res!506887 (= lt!333881 lt!333879))))

(assert (=> b!750785 (= lt!333879 (Found!7600 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41766 (_ BitVec 32)) SeekEntryResult!7600)

(assert (=> b!750785 (= lt!333881 (seekEntryOrOpen!0 (select (arr!19993 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750785 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333875 () Unit!25802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41766 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25802)

(assert (=> b!750785 (= lt!333875 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750786 () Bool)

(declare-fun res!506885 () Bool)

(assert (=> b!750786 (=> (not res!506885) (not e!418880))))

(declare-datatypes ((List!14048 0))(
  ( (Nil!14045) (Cons!14044 (h!15116 (_ BitVec 64)) (t!20371 List!14048)) )
))
(declare-fun arrayNoDuplicates!0 (array!41766 (_ BitVec 32) List!14048) Bool)

(assert (=> b!750786 (= res!506885 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14045))))

(declare-fun b!750787 () Bool)

(declare-fun Unit!25805 () Unit!25802)

(assert (=> b!750787 (= e!418879 Unit!25805)))

(declare-fun b!750788 () Bool)

(assert (=> b!750788 (= e!418881 e!418880)))

(declare-fun res!506897 () Bool)

(assert (=> b!750788 (=> (not res!506897) (not e!418880))))

(declare-fun lt!333880 () SeekEntryResult!7600)

(assert (=> b!750788 (= res!506897 (or (= lt!333880 (MissingZero!7600 i!1173)) (= lt!333880 (MissingVacant!7600 i!1173))))))

(assert (=> b!750788 (= lt!333880 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!750789 () Bool)

(declare-fun res!506886 () Bool)

(assert (=> b!750789 (=> (not res!506886) (not e!418875))))

(assert (=> b!750789 (= res!506886 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19993 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750790 () Bool)

(declare-fun res!506884 () Bool)

(assert (=> b!750790 (=> (not res!506884) (not e!418881))))

(assert (=> b!750790 (= res!506884 (validKeyInArray!0 (select (arr!19993 a!3186) j!159)))))

(declare-fun b!750791 () Bool)

(assert (=> b!750791 (= e!418882 e!418883)))

(declare-fun res!506892 () Bool)

(assert (=> b!750791 (=> res!506892 e!418883)))

(assert (=> b!750791 (= res!506892 (= lt!333876 lt!333884))))

(assert (=> b!750791 (= lt!333876 (select (store (arr!19993 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!750792 () Bool)

(declare-fun res!506901 () Bool)

(assert (=> b!750792 (=> (not res!506901) (not e!418881))))

(assert (=> b!750792 (= res!506901 (and (= (size!20414 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20414 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20414 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750793 () Bool)

(assert (=> b!750793 (= e!418878 (= (seekEntryOrOpen!0 lt!333884 lt!333883 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333884 lt!333883 mask!3328)))))

(declare-fun b!750794 () Bool)

(declare-fun res!506896 () Bool)

(assert (=> b!750794 (=> res!506896 e!418882)))

(assert (=> b!750794 (= res!506896 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19993 a!3186) j!159) a!3186 mask!3328) lt!333879)))))

(assert (= (and start!65640 res!506895) b!750792))

(assert (= (and b!750792 res!506901) b!750790))

(assert (= (and b!750790 res!506884) b!750781))

(assert (= (and b!750781 res!506893) b!750782))

(assert (= (and b!750782 res!506888) b!750788))

(assert (= (and b!750788 res!506897) b!750783))

(assert (= (and b!750783 res!506899) b!750786))

(assert (= (and b!750786 res!506885) b!750777))

(assert (= (and b!750777 res!506890) b!750773))

(assert (= (and b!750773 res!506894) b!750789))

(assert (= (and b!750789 res!506886) b!750774))

(assert (= (and b!750774 c!82326) b!750776))

(assert (= (and b!750774 (not c!82326)) b!750778))

(assert (= (and b!750774 res!506900) b!750779))

(assert (= (and b!750779 res!506889) b!750785))

(assert (= (and b!750785 res!506887) b!750775))

(assert (= (and b!750785 (not res!506891)) b!750794))

(assert (= (and b!750794 (not res!506896)) b!750791))

(assert (= (and b!750791 (not res!506892)) b!750780))

(assert (= (and b!750780 c!82325) b!750784))

(assert (= (and b!750780 (not c!82325)) b!750787))

(assert (= (and b!750780 res!506898) b!750793))

(declare-fun m!700169 () Bool)

(assert (=> b!750781 m!700169))

(declare-fun m!700171 () Bool)

(assert (=> b!750782 m!700171))

(declare-fun m!700173 () Bool)

(assert (=> b!750786 m!700173))

(declare-fun m!700175 () Bool)

(assert (=> b!750785 m!700175))

(assert (=> b!750785 m!700175))

(declare-fun m!700177 () Bool)

(assert (=> b!750785 m!700177))

(declare-fun m!700179 () Bool)

(assert (=> b!750785 m!700179))

(declare-fun m!700181 () Bool)

(assert (=> b!750785 m!700181))

(assert (=> b!750775 m!700175))

(assert (=> b!750775 m!700175))

(declare-fun m!700183 () Bool)

(assert (=> b!750775 m!700183))

(assert (=> b!750790 m!700175))

(assert (=> b!750790 m!700175))

(declare-fun m!700185 () Bool)

(assert (=> b!750790 m!700185))

(assert (=> b!750794 m!700175))

(assert (=> b!750794 m!700175))

(declare-fun m!700187 () Bool)

(assert (=> b!750794 m!700187))

(declare-fun m!700189 () Bool)

(assert (=> b!750783 m!700189))

(declare-fun m!700191 () Bool)

(assert (=> b!750793 m!700191))

(declare-fun m!700193 () Bool)

(assert (=> b!750793 m!700193))

(declare-fun m!700195 () Bool)

(assert (=> b!750779 m!700195))

(declare-fun m!700197 () Bool)

(assert (=> b!750779 m!700197))

(declare-fun m!700199 () Bool)

(assert (=> b!750779 m!700199))

(assert (=> b!750779 m!700197))

(declare-fun m!700201 () Bool)

(assert (=> b!750779 m!700201))

(declare-fun m!700203 () Bool)

(assert (=> b!750779 m!700203))

(assert (=> b!750791 m!700195))

(declare-fun m!700205 () Bool)

(assert (=> b!750791 m!700205))

(declare-fun m!700207 () Bool)

(assert (=> start!65640 m!700207))

(declare-fun m!700209 () Bool)

(assert (=> start!65640 m!700209))

(assert (=> b!750773 m!700175))

(assert (=> b!750773 m!700175))

(declare-fun m!700211 () Bool)

(assert (=> b!750773 m!700211))

(assert (=> b!750773 m!700211))

(assert (=> b!750773 m!700175))

(declare-fun m!700213 () Bool)

(assert (=> b!750773 m!700213))

(assert (=> b!750776 m!700175))

(assert (=> b!750776 m!700175))

(declare-fun m!700215 () Bool)

(assert (=> b!750776 m!700215))

(declare-fun m!700217 () Bool)

(assert (=> b!750789 m!700217))

(declare-fun m!700219 () Bool)

(assert (=> b!750788 m!700219))

(assert (=> b!750778 m!700175))

(assert (=> b!750778 m!700175))

(assert (=> b!750778 m!700187))

(check-sat (not b!750781) (not b!750786) (not b!750779) (not b!750773) (not b!750776) (not b!750793) (not b!750788) (not b!750783) (not b!750775) (not b!750778) (not b!750785) (not b!750794) (not start!65640) (not b!750790) (not b!750782))
(check-sat)
