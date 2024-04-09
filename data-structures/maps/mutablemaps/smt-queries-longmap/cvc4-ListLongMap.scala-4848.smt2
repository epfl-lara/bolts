; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66806 () Bool)

(assert start!66806)

(declare-fun b!769925 () Bool)

(declare-fun res!520879 () Bool)

(declare-fun e!428710 () Bool)

(assert (=> b!769925 (=> (not res!520879) (not e!428710))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42323 0))(
  ( (array!42324 (arr!20258 (Array (_ BitVec 32) (_ BitVec 64))) (size!20679 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42323)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!769925 (= res!520879 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20679 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20679 a!3186))))))

(declare-fun b!769926 () Bool)

(declare-datatypes ((Unit!26496 0))(
  ( (Unit!26497) )
))
(declare-fun e!428714 () Unit!26496)

(declare-fun Unit!26498 () Unit!26496)

(assert (=> b!769926 (= e!428714 Unit!26498)))

(declare-datatypes ((SeekEntryResult!7865 0))(
  ( (MissingZero!7865 (index!33827 (_ BitVec 32))) (Found!7865 (index!33828 (_ BitVec 32))) (Intermediate!7865 (undefined!8677 Bool) (index!33829 (_ BitVec 32)) (x!64781 (_ BitVec 32))) (Undefined!7865) (MissingVacant!7865 (index!33830 (_ BitVec 32))) )
))
(declare-fun lt!342655 () SeekEntryResult!7865)

(declare-fun lt!342661 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42323 (_ BitVec 32)) SeekEntryResult!7865)

(assert (=> b!769926 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342661 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) lt!342655)))

(declare-fun e!428713 () Bool)

(declare-fun b!769927 () Bool)

(declare-fun lt!342657 () SeekEntryResult!7865)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42323 (_ BitVec 32)) SeekEntryResult!7865)

(assert (=> b!769927 (= e!428713 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) lt!342657))))

(declare-fun b!769928 () Bool)

(declare-fun res!520887 () Bool)

(assert (=> b!769928 (=> (not res!520887) (not e!428710))))

(declare-datatypes ((List!14313 0))(
  ( (Nil!14310) (Cons!14309 (h!15408 (_ BitVec 64)) (t!20636 List!14313)) )
))
(declare-fun arrayNoDuplicates!0 (array!42323 (_ BitVec 32) List!14313) Bool)

(assert (=> b!769928 (= res!520887 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14310))))

(declare-fun b!769929 () Bool)

(declare-fun e!428712 () Bool)

(declare-fun e!428718 () Bool)

(assert (=> b!769929 (= e!428712 (not e!428718))))

(declare-fun res!520881 () Bool)

(assert (=> b!769929 (=> res!520881 e!428718)))

(declare-fun lt!342659 () SeekEntryResult!7865)

(assert (=> b!769929 (= res!520881 (or (not (is-Intermediate!7865 lt!342659)) (bvsge x!1131 (x!64781 lt!342659))))))

(declare-fun e!428711 () Bool)

(assert (=> b!769929 e!428711))

(declare-fun res!520878 () Bool)

(assert (=> b!769929 (=> (not res!520878) (not e!428711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42323 (_ BitVec 32)) Bool)

(assert (=> b!769929 (= res!520878 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342656 () Unit!26496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26496)

(assert (=> b!769929 (= lt!342656 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!520888 () Bool)

(declare-fun e!428717 () Bool)

(assert (=> start!66806 (=> (not res!520888) (not e!428717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66806 (= res!520888 (validMask!0 mask!3328))))

(assert (=> start!66806 e!428717))

(assert (=> start!66806 true))

(declare-fun array_inv!16032 (array!42323) Bool)

(assert (=> start!66806 (array_inv!16032 a!3186)))

(declare-fun b!769930 () Bool)

(declare-fun res!520876 () Bool)

(assert (=> b!769930 (=> (not res!520876) (not e!428717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769930 (= res!520876 (validKeyInArray!0 (select (arr!20258 a!3186) j!159)))))

(declare-fun b!769931 () Bool)

(declare-fun e!428715 () Bool)

(assert (=> b!769931 (= e!428715 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) lt!342655))))

(declare-fun b!769932 () Bool)

(declare-fun Unit!26499 () Unit!26496)

(assert (=> b!769932 (= e!428714 Unit!26499)))

(declare-fun lt!342653 () SeekEntryResult!7865)

(assert (=> b!769932 (= lt!342653 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20258 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769932 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342661 resIntermediateIndex!5 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) (Found!7865 j!159))))

(declare-fun b!769933 () Bool)

(assert (=> b!769933 (= e!428715 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) (Found!7865 j!159)))))

(declare-fun b!769934 () Bool)

(assert (=> b!769934 (= e!428718 true)))

(declare-fun lt!342660 () Unit!26496)

(assert (=> b!769934 (= lt!342660 e!428714)))

(declare-fun c!84921 () Bool)

(assert (=> b!769934 (= c!84921 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769934 (= lt!342661 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769935 () Bool)

(declare-fun res!520889 () Bool)

(assert (=> b!769935 (=> (not res!520889) (not e!428717))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769935 (= res!520889 (and (= (size!20679 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20679 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20679 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769936 () Bool)

(assert (=> b!769936 (= e!428717 e!428710)))

(declare-fun res!520882 () Bool)

(assert (=> b!769936 (=> (not res!520882) (not e!428710))))

(declare-fun lt!342651 () SeekEntryResult!7865)

(assert (=> b!769936 (= res!520882 (or (= lt!342651 (MissingZero!7865 i!1173)) (= lt!342651 (MissingVacant!7865 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42323 (_ BitVec 32)) SeekEntryResult!7865)

(assert (=> b!769936 (= lt!342651 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769937 () Bool)

(declare-fun res!520880 () Bool)

(assert (=> b!769937 (=> (not res!520880) (not e!428717))))

(assert (=> b!769937 (= res!520880 (validKeyInArray!0 k!2102))))

(declare-fun b!769938 () Bool)

(declare-fun res!520885 () Bool)

(declare-fun e!428719 () Bool)

(assert (=> b!769938 (=> (not res!520885) (not e!428719))))

(assert (=> b!769938 (= res!520885 e!428715)))

(declare-fun c!84920 () Bool)

(assert (=> b!769938 (= c!84920 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769939 () Bool)

(assert (=> b!769939 (= e!428711 e!428713)))

(declare-fun res!520890 () Bool)

(assert (=> b!769939 (=> (not res!520890) (not e!428713))))

(assert (=> b!769939 (= res!520890 (= (seekEntryOrOpen!0 (select (arr!20258 a!3186) j!159) a!3186 mask!3328) lt!342657))))

(assert (=> b!769939 (= lt!342657 (Found!7865 j!159))))

(declare-fun b!769940 () Bool)

(assert (=> b!769940 (= e!428710 e!428719)))

(declare-fun res!520886 () Bool)

(assert (=> b!769940 (=> (not res!520886) (not e!428719))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769940 (= res!520886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20258 a!3186) j!159) mask!3328) (select (arr!20258 a!3186) j!159) a!3186 mask!3328) lt!342655))))

(assert (=> b!769940 (= lt!342655 (Intermediate!7865 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769941 () Bool)

(declare-fun res!520883 () Bool)

(assert (=> b!769941 (=> (not res!520883) (not e!428717))))

(declare-fun arrayContainsKey!0 (array!42323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769941 (= res!520883 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769942 () Bool)

(declare-fun res!520877 () Bool)

(assert (=> b!769942 (=> (not res!520877) (not e!428719))))

(assert (=> b!769942 (= res!520877 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20258 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769943 () Bool)

(declare-fun res!520891 () Bool)

(assert (=> b!769943 (=> (not res!520891) (not e!428710))))

(assert (=> b!769943 (= res!520891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769944 () Bool)

(assert (=> b!769944 (= e!428719 e!428712)))

(declare-fun res!520884 () Bool)

(assert (=> b!769944 (=> (not res!520884) (not e!428712))))

(declare-fun lt!342658 () SeekEntryResult!7865)

(assert (=> b!769944 (= res!520884 (= lt!342658 lt!342659))))

(declare-fun lt!342654 () (_ BitVec 64))

(declare-fun lt!342652 () array!42323)

(assert (=> b!769944 (= lt!342659 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342654 lt!342652 mask!3328))))

(assert (=> b!769944 (= lt!342658 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342654 mask!3328) lt!342654 lt!342652 mask!3328))))

(assert (=> b!769944 (= lt!342654 (select (store (arr!20258 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769944 (= lt!342652 (array!42324 (store (arr!20258 a!3186) i!1173 k!2102) (size!20679 a!3186)))))

(assert (= (and start!66806 res!520888) b!769935))

(assert (= (and b!769935 res!520889) b!769930))

(assert (= (and b!769930 res!520876) b!769937))

(assert (= (and b!769937 res!520880) b!769941))

(assert (= (and b!769941 res!520883) b!769936))

(assert (= (and b!769936 res!520882) b!769943))

(assert (= (and b!769943 res!520891) b!769928))

(assert (= (and b!769928 res!520887) b!769925))

(assert (= (and b!769925 res!520879) b!769940))

(assert (= (and b!769940 res!520886) b!769942))

(assert (= (and b!769942 res!520877) b!769938))

(assert (= (and b!769938 c!84920) b!769931))

(assert (= (and b!769938 (not c!84920)) b!769933))

(assert (= (and b!769938 res!520885) b!769944))

(assert (= (and b!769944 res!520884) b!769929))

(assert (= (and b!769929 res!520878) b!769939))

(assert (= (and b!769939 res!520890) b!769927))

(assert (= (and b!769929 (not res!520881)) b!769934))

(assert (= (and b!769934 c!84921) b!769926))

(assert (= (and b!769934 (not c!84921)) b!769932))

(declare-fun m!715335 () Bool)

(assert (=> b!769944 m!715335))

(declare-fun m!715337 () Bool)

(assert (=> b!769944 m!715337))

(declare-fun m!715339 () Bool)

(assert (=> b!769944 m!715339))

(declare-fun m!715341 () Bool)

(assert (=> b!769944 m!715341))

(declare-fun m!715343 () Bool)

(assert (=> b!769944 m!715343))

(assert (=> b!769944 m!715335))

(declare-fun m!715345 () Bool)

(assert (=> start!66806 m!715345))

(declare-fun m!715347 () Bool)

(assert (=> start!66806 m!715347))

(declare-fun m!715349 () Bool)

(assert (=> b!769932 m!715349))

(assert (=> b!769932 m!715349))

(declare-fun m!715351 () Bool)

(assert (=> b!769932 m!715351))

(assert (=> b!769932 m!715349))

(declare-fun m!715353 () Bool)

(assert (=> b!769932 m!715353))

(declare-fun m!715355 () Bool)

(assert (=> b!769934 m!715355))

(assert (=> b!769933 m!715349))

(assert (=> b!769933 m!715349))

(assert (=> b!769933 m!715351))

(assert (=> b!769927 m!715349))

(assert (=> b!769927 m!715349))

(declare-fun m!715357 () Bool)

(assert (=> b!769927 m!715357))

(declare-fun m!715359 () Bool)

(assert (=> b!769928 m!715359))

(assert (=> b!769940 m!715349))

(assert (=> b!769940 m!715349))

(declare-fun m!715361 () Bool)

(assert (=> b!769940 m!715361))

(assert (=> b!769940 m!715361))

(assert (=> b!769940 m!715349))

(declare-fun m!715363 () Bool)

(assert (=> b!769940 m!715363))

(assert (=> b!769926 m!715349))

(assert (=> b!769926 m!715349))

(declare-fun m!715365 () Bool)

(assert (=> b!769926 m!715365))

(declare-fun m!715367 () Bool)

(assert (=> b!769942 m!715367))

(assert (=> b!769931 m!715349))

(assert (=> b!769931 m!715349))

(declare-fun m!715369 () Bool)

(assert (=> b!769931 m!715369))

(assert (=> b!769930 m!715349))

(assert (=> b!769930 m!715349))

(declare-fun m!715371 () Bool)

(assert (=> b!769930 m!715371))

(declare-fun m!715373 () Bool)

(assert (=> b!769941 m!715373))

(declare-fun m!715375 () Bool)

(assert (=> b!769936 m!715375))

(declare-fun m!715377 () Bool)

(assert (=> b!769943 m!715377))

(declare-fun m!715379 () Bool)

(assert (=> b!769929 m!715379))

(declare-fun m!715381 () Bool)

(assert (=> b!769929 m!715381))

(declare-fun m!715383 () Bool)

(assert (=> b!769937 m!715383))

(assert (=> b!769939 m!715349))

(assert (=> b!769939 m!715349))

(declare-fun m!715385 () Bool)

(assert (=> b!769939 m!715385))

(push 1)

