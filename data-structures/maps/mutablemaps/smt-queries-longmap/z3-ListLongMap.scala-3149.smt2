; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44328 () Bool)

(assert start!44328)

(declare-fun b!487203 () Bool)

(declare-fun res!290744 () Bool)

(declare-fun e!286663 () Bool)

(assert (=> b!487203 (=> (not res!290744) (not e!286663))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487203 (= res!290744 (validKeyInArray!0 k0!2280))))

(declare-fun b!487204 () Bool)

(declare-fun res!290741 () Bool)

(declare-fun e!286666 () Bool)

(assert (=> b!487204 (=> (not res!290741) (not e!286666))))

(declare-datatypes ((array!31539 0))(
  ( (array!31540 (arr!15160 (Array (_ BitVec 32) (_ BitVec 64))) (size!15524 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31539)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31539 (_ BitVec 32)) Bool)

(assert (=> b!487204 (= res!290741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!290739 () Bool)

(assert (=> start!44328 (=> (not res!290739) (not e!286663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44328 (= res!290739 (validMask!0 mask!3524))))

(assert (=> start!44328 e!286663))

(assert (=> start!44328 true))

(declare-fun array_inv!10934 (array!31539) Bool)

(assert (=> start!44328 (array_inv!10934 a!3235)))

(declare-fun e!286665 () Bool)

(declare-fun b!487205 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3634 0))(
  ( (MissingZero!3634 (index!16715 (_ BitVec 32))) (Found!3634 (index!16716 (_ BitVec 32))) (Intermediate!3634 (undefined!4446 Bool) (index!16717 (_ BitVec 32)) (x!45865 (_ BitVec 32))) (Undefined!3634) (MissingVacant!3634 (index!16718 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31539 (_ BitVec 32)) SeekEntryResult!3634)

(assert (=> b!487205 (= e!286665 (= (seekEntryOrOpen!0 (select (arr!15160 a!3235) j!176) a!3235 mask!3524) (Found!3634 j!176)))))

(declare-fun b!487206 () Bool)

(assert (=> b!487206 (= e!286663 e!286666)))

(declare-fun res!290740 () Bool)

(assert (=> b!487206 (=> (not res!290740) (not e!286666))))

(declare-fun lt!219974 () SeekEntryResult!3634)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487206 (= res!290740 (or (= lt!219974 (MissingZero!3634 i!1204)) (= lt!219974 (MissingVacant!3634 i!1204))))))

(assert (=> b!487206 (= lt!219974 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487207 () Bool)

(declare-fun res!290745 () Bool)

(assert (=> b!487207 (=> (not res!290745) (not e!286666))))

(declare-datatypes ((List!9371 0))(
  ( (Nil!9368) (Cons!9367 (h!10223 (_ BitVec 64)) (t!15607 List!9371)) )
))
(declare-fun arrayNoDuplicates!0 (array!31539 (_ BitVec 32) List!9371) Bool)

(assert (=> b!487207 (= res!290745 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9368))))

(declare-fun b!487208 () Bool)

(assert (=> b!487208 (= e!286666 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(assert (=> b!487208 e!286665))

(declare-fun res!290746 () Bool)

(assert (=> b!487208 (=> (not res!290746) (not e!286665))))

(assert (=> b!487208 (= res!290746 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14206 0))(
  ( (Unit!14207) )
))
(declare-fun lt!219973 () Unit!14206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14206)

(assert (=> b!487208 (= lt!219973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487209 () Bool)

(declare-fun res!290747 () Bool)

(assert (=> b!487209 (=> (not res!290747) (not e!286663))))

(declare-fun arrayContainsKey!0 (array!31539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487209 (= res!290747 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487210 () Bool)

(declare-fun res!290742 () Bool)

(assert (=> b!487210 (=> (not res!290742) (not e!286663))))

(assert (=> b!487210 (= res!290742 (and (= (size!15524 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15524 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15524 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487211 () Bool)

(declare-fun res!290743 () Bool)

(assert (=> b!487211 (=> (not res!290743) (not e!286663))))

(assert (=> b!487211 (= res!290743 (validKeyInArray!0 (select (arr!15160 a!3235) j!176)))))

(assert (= (and start!44328 res!290739) b!487210))

(assert (= (and b!487210 res!290742) b!487211))

(assert (= (and b!487211 res!290743) b!487203))

(assert (= (and b!487203 res!290744) b!487209))

(assert (= (and b!487209 res!290747) b!487206))

(assert (= (and b!487206 res!290740) b!487204))

(assert (= (and b!487204 res!290741) b!487207))

(assert (= (and b!487207 res!290745) b!487208))

(assert (= (and b!487208 res!290746) b!487205))

(declare-fun m!467059 () Bool)

(assert (=> b!487208 m!467059))

(declare-fun m!467061 () Bool)

(assert (=> b!487208 m!467061))

(declare-fun m!467063 () Bool)

(assert (=> b!487205 m!467063))

(assert (=> b!487205 m!467063))

(declare-fun m!467065 () Bool)

(assert (=> b!487205 m!467065))

(declare-fun m!467067 () Bool)

(assert (=> start!44328 m!467067))

(declare-fun m!467069 () Bool)

(assert (=> start!44328 m!467069))

(declare-fun m!467071 () Bool)

(assert (=> b!487209 m!467071))

(declare-fun m!467073 () Bool)

(assert (=> b!487207 m!467073))

(declare-fun m!467075 () Bool)

(assert (=> b!487204 m!467075))

(declare-fun m!467077 () Bool)

(assert (=> b!487203 m!467077))

(declare-fun m!467079 () Bool)

(assert (=> b!487206 m!467079))

(assert (=> b!487211 m!467063))

(assert (=> b!487211 m!467063))

(declare-fun m!467081 () Bool)

(assert (=> b!487211 m!467081))

(check-sat (not b!487205) (not b!487207) (not b!487203) (not b!487211) (not start!44328) (not b!487206) (not b!487208) (not b!487204) (not b!487209))
(check-sat)
(get-model)

(declare-fun b!487249 () Bool)

(declare-fun e!286689 () Bool)

(declare-fun contains!2700 (List!9371 (_ BitVec 64)) Bool)

(assert (=> b!487249 (= e!286689 (contains!2700 Nil!9368 (select (arr!15160 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77509 () Bool)

(declare-fun res!290782 () Bool)

(declare-fun e!286690 () Bool)

(assert (=> d!77509 (=> res!290782 e!286690)))

(assert (=> d!77509 (= res!290782 (bvsge #b00000000000000000000000000000000 (size!15524 a!3235)))))

(assert (=> d!77509 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9368) e!286690)))

(declare-fun b!487250 () Bool)

(declare-fun e!286688 () Bool)

(assert (=> b!487250 (= e!286690 e!286688)))

(declare-fun res!290783 () Bool)

(assert (=> b!487250 (=> (not res!290783) (not e!286688))))

(assert (=> b!487250 (= res!290783 (not e!286689))))

(declare-fun res!290781 () Bool)

(assert (=> b!487250 (=> (not res!290781) (not e!286689))))

(assert (=> b!487250 (= res!290781 (validKeyInArray!0 (select (arr!15160 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487251 () Bool)

(declare-fun e!286687 () Bool)

(assert (=> b!487251 (= e!286688 e!286687)))

(declare-fun c!58502 () Bool)

(assert (=> b!487251 (= c!58502 (validKeyInArray!0 (select (arr!15160 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31280 () Bool)

(declare-fun call!31283 () Bool)

(assert (=> bm!31280 (= call!31283 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58502 (Cons!9367 (select (arr!15160 a!3235) #b00000000000000000000000000000000) Nil!9368) Nil!9368)))))

(declare-fun b!487252 () Bool)

(assert (=> b!487252 (= e!286687 call!31283)))

(declare-fun b!487253 () Bool)

(assert (=> b!487253 (= e!286687 call!31283)))

(assert (= (and d!77509 (not res!290782)) b!487250))

(assert (= (and b!487250 res!290781) b!487249))

(assert (= (and b!487250 res!290783) b!487251))

(assert (= (and b!487251 c!58502) b!487253))

(assert (= (and b!487251 (not c!58502)) b!487252))

(assert (= (or b!487253 b!487252) bm!31280))

(declare-fun m!467107 () Bool)

(assert (=> b!487249 m!467107))

(assert (=> b!487249 m!467107))

(declare-fun m!467109 () Bool)

(assert (=> b!487249 m!467109))

(assert (=> b!487250 m!467107))

(assert (=> b!487250 m!467107))

(declare-fun m!467111 () Bool)

(assert (=> b!487250 m!467111))

(assert (=> b!487251 m!467107))

(assert (=> b!487251 m!467107))

(assert (=> b!487251 m!467111))

(assert (=> bm!31280 m!467107))

(declare-fun m!467113 () Bool)

(assert (=> bm!31280 m!467113))

(assert (=> b!487207 d!77509))

(declare-fun b!487294 () Bool)

(declare-fun e!286717 () SeekEntryResult!3634)

(declare-fun lt!220010 () SeekEntryResult!3634)

(assert (=> b!487294 (= e!286717 (MissingZero!3634 (index!16717 lt!220010)))))

(declare-fun b!487295 () Bool)

(declare-fun e!286715 () SeekEntryResult!3634)

(declare-fun e!286716 () SeekEntryResult!3634)

(assert (=> b!487295 (= e!286715 e!286716)))

(declare-fun lt!220008 () (_ BitVec 64))

(assert (=> b!487295 (= lt!220008 (select (arr!15160 a!3235) (index!16717 lt!220010)))))

(declare-fun c!58519 () Bool)

(assert (=> b!487295 (= c!58519 (= lt!220008 (select (arr!15160 a!3235) j!176)))))

(declare-fun b!487296 () Bool)

(assert (=> b!487296 (= e!286715 Undefined!3634)))

(declare-fun b!487297 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31539 (_ BitVec 32)) SeekEntryResult!3634)

(assert (=> b!487297 (= e!286717 (seekKeyOrZeroReturnVacant!0 (x!45865 lt!220010) (index!16717 lt!220010) (index!16717 lt!220010) (select (arr!15160 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!487298 () Bool)

(declare-fun c!58520 () Bool)

(assert (=> b!487298 (= c!58520 (= lt!220008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!487298 (= e!286716 e!286717)))

(declare-fun d!77511 () Bool)

(declare-fun lt!220009 () SeekEntryResult!3634)

(get-info :version)

(assert (=> d!77511 (and (or ((_ is Undefined!3634) lt!220009) (not ((_ is Found!3634) lt!220009)) (and (bvsge (index!16716 lt!220009) #b00000000000000000000000000000000) (bvslt (index!16716 lt!220009) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220009) ((_ is Found!3634) lt!220009) (not ((_ is MissingZero!3634) lt!220009)) (and (bvsge (index!16715 lt!220009) #b00000000000000000000000000000000) (bvslt (index!16715 lt!220009) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220009) ((_ is Found!3634) lt!220009) ((_ is MissingZero!3634) lt!220009) (not ((_ is MissingVacant!3634) lt!220009)) (and (bvsge (index!16718 lt!220009) #b00000000000000000000000000000000) (bvslt (index!16718 lt!220009) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220009) (ite ((_ is Found!3634) lt!220009) (= (select (arr!15160 a!3235) (index!16716 lt!220009)) (select (arr!15160 a!3235) j!176)) (ite ((_ is MissingZero!3634) lt!220009) (= (select (arr!15160 a!3235) (index!16715 lt!220009)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3634) lt!220009) (= (select (arr!15160 a!3235) (index!16718 lt!220009)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77511 (= lt!220009 e!286715)))

(declare-fun c!58521 () Bool)

(assert (=> d!77511 (= c!58521 (and ((_ is Intermediate!3634) lt!220010) (undefined!4446 lt!220010)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31539 (_ BitVec 32)) SeekEntryResult!3634)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77511 (= lt!220010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15160 a!3235) j!176) mask!3524) (select (arr!15160 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77511 (validMask!0 mask!3524)))

(assert (=> d!77511 (= (seekEntryOrOpen!0 (select (arr!15160 a!3235) j!176) a!3235 mask!3524) lt!220009)))

(declare-fun b!487299 () Bool)

(assert (=> b!487299 (= e!286716 (Found!3634 (index!16717 lt!220010)))))

(assert (= (and d!77511 c!58521) b!487296))

(assert (= (and d!77511 (not c!58521)) b!487295))

(assert (= (and b!487295 c!58519) b!487299))

(assert (= (and b!487295 (not c!58519)) b!487298))

(assert (= (and b!487298 c!58520) b!487294))

(assert (= (and b!487298 (not c!58520)) b!487297))

(declare-fun m!467135 () Bool)

(assert (=> b!487295 m!467135))

(assert (=> b!487297 m!467063))

(declare-fun m!467137 () Bool)

(assert (=> b!487297 m!467137))

(declare-fun m!467139 () Bool)

(assert (=> d!77511 m!467139))

(declare-fun m!467141 () Bool)

(assert (=> d!77511 m!467141))

(declare-fun m!467143 () Bool)

(assert (=> d!77511 m!467143))

(assert (=> d!77511 m!467063))

(declare-fun m!467145 () Bool)

(assert (=> d!77511 m!467145))

(assert (=> d!77511 m!467067))

(assert (=> d!77511 m!467145))

(assert (=> d!77511 m!467063))

(declare-fun m!467147 () Bool)

(assert (=> d!77511 m!467147))

(assert (=> b!487205 d!77511))

(declare-fun d!77525 () Bool)

(assert (=> d!77525 (= (validKeyInArray!0 (select (arr!15160 a!3235) j!176)) (and (not (= (select (arr!15160 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15160 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487211 d!77525))

(declare-fun b!487306 () Bool)

(declare-fun e!286723 () SeekEntryResult!3634)

(declare-fun lt!220016 () SeekEntryResult!3634)

(assert (=> b!487306 (= e!286723 (MissingZero!3634 (index!16717 lt!220016)))))

(declare-fun b!487307 () Bool)

(declare-fun e!286721 () SeekEntryResult!3634)

(declare-fun e!286722 () SeekEntryResult!3634)

(assert (=> b!487307 (= e!286721 e!286722)))

(declare-fun lt!220014 () (_ BitVec 64))

(assert (=> b!487307 (= lt!220014 (select (arr!15160 a!3235) (index!16717 lt!220016)))))

(declare-fun c!58525 () Bool)

(assert (=> b!487307 (= c!58525 (= lt!220014 k0!2280))))

(declare-fun b!487308 () Bool)

(assert (=> b!487308 (= e!286721 Undefined!3634)))

(declare-fun b!487309 () Bool)

(assert (=> b!487309 (= e!286723 (seekKeyOrZeroReturnVacant!0 (x!45865 lt!220016) (index!16717 lt!220016) (index!16717 lt!220016) k0!2280 a!3235 mask!3524))))

(declare-fun b!487310 () Bool)

(declare-fun c!58526 () Bool)

(assert (=> b!487310 (= c!58526 (= lt!220014 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!487310 (= e!286722 e!286723)))

(declare-fun d!77527 () Bool)

(declare-fun lt!220015 () SeekEntryResult!3634)

(assert (=> d!77527 (and (or ((_ is Undefined!3634) lt!220015) (not ((_ is Found!3634) lt!220015)) (and (bvsge (index!16716 lt!220015) #b00000000000000000000000000000000) (bvslt (index!16716 lt!220015) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220015) ((_ is Found!3634) lt!220015) (not ((_ is MissingZero!3634) lt!220015)) (and (bvsge (index!16715 lt!220015) #b00000000000000000000000000000000) (bvslt (index!16715 lt!220015) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220015) ((_ is Found!3634) lt!220015) ((_ is MissingZero!3634) lt!220015) (not ((_ is MissingVacant!3634) lt!220015)) (and (bvsge (index!16718 lt!220015) #b00000000000000000000000000000000) (bvslt (index!16718 lt!220015) (size!15524 a!3235)))) (or ((_ is Undefined!3634) lt!220015) (ite ((_ is Found!3634) lt!220015) (= (select (arr!15160 a!3235) (index!16716 lt!220015)) k0!2280) (ite ((_ is MissingZero!3634) lt!220015) (= (select (arr!15160 a!3235) (index!16715 lt!220015)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3634) lt!220015) (= (select (arr!15160 a!3235) (index!16718 lt!220015)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77527 (= lt!220015 e!286721)))

(declare-fun c!58527 () Bool)

(assert (=> d!77527 (= c!58527 (and ((_ is Intermediate!3634) lt!220016) (undefined!4446 lt!220016)))))

(assert (=> d!77527 (= lt!220016 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77527 (validMask!0 mask!3524)))

(assert (=> d!77527 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!220015)))

(declare-fun b!487311 () Bool)

(assert (=> b!487311 (= e!286722 (Found!3634 (index!16717 lt!220016)))))

(assert (= (and d!77527 c!58527) b!487308))

(assert (= (and d!77527 (not c!58527)) b!487307))

(assert (= (and b!487307 c!58525) b!487311))

(assert (= (and b!487307 (not c!58525)) b!487310))

(assert (= (and b!487310 c!58526) b!487306))

(assert (= (and b!487310 (not c!58526)) b!487309))

(declare-fun m!467157 () Bool)

(assert (=> b!487307 m!467157))

(declare-fun m!467161 () Bool)

(assert (=> b!487309 m!467161))

(declare-fun m!467165 () Bool)

(assert (=> d!77527 m!467165))

(declare-fun m!467167 () Bool)

(assert (=> d!77527 m!467167))

(declare-fun m!467171 () Bool)

(assert (=> d!77527 m!467171))

(declare-fun m!467173 () Bool)

(assert (=> d!77527 m!467173))

(assert (=> d!77527 m!467067))

(assert (=> d!77527 m!467173))

(declare-fun m!467175 () Bool)

(assert (=> d!77527 m!467175))

(assert (=> b!487206 d!77527))

(declare-fun d!77531 () Bool)

(declare-fun res!290811 () Bool)

(declare-fun e!286746 () Bool)

(assert (=> d!77531 (=> res!290811 e!286746)))

(assert (=> d!77531 (= res!290811 (= (select (arr!15160 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77531 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!286746)))

(declare-fun b!487337 () Bool)

(declare-fun e!286747 () Bool)

(assert (=> b!487337 (= e!286746 e!286747)))

(declare-fun res!290812 () Bool)

(assert (=> b!487337 (=> (not res!290812) (not e!286747))))

(assert (=> b!487337 (= res!290812 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15524 a!3235)))))

(declare-fun b!487338 () Bool)

(assert (=> b!487338 (= e!286747 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77531 (not res!290811)) b!487337))

(assert (= (and b!487337 res!290812) b!487338))

(assert (=> d!77531 m!467107))

(declare-fun m!467181 () Bool)

(assert (=> b!487338 m!467181))

(assert (=> b!487209 d!77531))

(declare-fun b!487361 () Bool)

(declare-fun e!286771 () Bool)

(declare-fun e!286768 () Bool)

(assert (=> b!487361 (= e!286771 e!286768)))

(declare-fun lt!220033 () (_ BitVec 64))

(assert (=> b!487361 (= lt!220033 (select (arr!15160 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220031 () Unit!14206)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31539 (_ BitVec 64) (_ BitVec 32)) Unit!14206)

(assert (=> b!487361 (= lt!220031 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220033 #b00000000000000000000000000000000))))

(assert (=> b!487361 (arrayContainsKey!0 a!3235 lt!220033 #b00000000000000000000000000000000)))

(declare-fun lt!220029 () Unit!14206)

(assert (=> b!487361 (= lt!220029 lt!220031)))

(declare-fun res!290830 () Bool)

(assert (=> b!487361 (= res!290830 (= (seekEntryOrOpen!0 (select (arr!15160 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3634 #b00000000000000000000000000000000)))))

(assert (=> b!487361 (=> (not res!290830) (not e!286768))))

(declare-fun b!487363 () Bool)

(declare-fun call!31296 () Bool)

(assert (=> b!487363 (= e!286771 call!31296)))

(declare-fun d!77533 () Bool)

(declare-fun res!290829 () Bool)

(declare-fun e!286767 () Bool)

(assert (=> d!77533 (=> res!290829 e!286767)))

(assert (=> d!77533 (= res!290829 (bvsge #b00000000000000000000000000000000 (size!15524 a!3235)))))

(assert (=> d!77533 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286767)))

(declare-fun b!487365 () Bool)

(assert (=> b!487365 (= e!286767 e!286771)))

(declare-fun c!58535 () Bool)

(assert (=> b!487365 (= c!58535 (validKeyInArray!0 (select (arr!15160 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31293 () Bool)

(assert (=> bm!31293 (= call!31296 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487368 () Bool)

(assert (=> b!487368 (= e!286768 call!31296)))

(assert (= (and d!77533 (not res!290829)) b!487365))

(assert (= (and b!487365 c!58535) b!487361))

(assert (= (and b!487365 (not c!58535)) b!487363))

(assert (= (and b!487361 res!290830) b!487368))

(assert (= (or b!487368 b!487363) bm!31293))

(assert (=> b!487361 m!467107))

(declare-fun m!467191 () Bool)

(assert (=> b!487361 m!467191))

(declare-fun m!467195 () Bool)

(assert (=> b!487361 m!467195))

(assert (=> b!487361 m!467107))

(declare-fun m!467199 () Bool)

(assert (=> b!487361 m!467199))

(assert (=> b!487365 m!467107))

(assert (=> b!487365 m!467107))

(assert (=> b!487365 m!467111))

(declare-fun m!467205 () Bool)

(assert (=> bm!31293 m!467205))

(assert (=> b!487204 d!77533))

(declare-fun b!487373 () Bool)

(declare-fun e!286777 () Bool)

(declare-fun e!286776 () Bool)

(assert (=> b!487373 (= e!286777 e!286776)))

(declare-fun lt!220040 () (_ BitVec 64))

(assert (=> b!487373 (= lt!220040 (select (arr!15160 a!3235) j!176))))

(declare-fun lt!220039 () Unit!14206)

(assert (=> b!487373 (= lt!220039 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220040 j!176))))

(assert (=> b!487373 (arrayContainsKey!0 a!3235 lt!220040 #b00000000000000000000000000000000)))

(declare-fun lt!220038 () Unit!14206)

(assert (=> b!487373 (= lt!220038 lt!220039)))

(declare-fun res!290834 () Bool)

(assert (=> b!487373 (= res!290834 (= (seekEntryOrOpen!0 (select (arr!15160 a!3235) j!176) a!3235 mask!3524) (Found!3634 j!176)))))

(assert (=> b!487373 (=> (not res!290834) (not e!286776))))

(declare-fun b!487374 () Bool)

(declare-fun call!31298 () Bool)

(assert (=> b!487374 (= e!286777 call!31298)))

(declare-fun d!77545 () Bool)

(declare-fun res!290833 () Bool)

(declare-fun e!286775 () Bool)

(assert (=> d!77545 (=> res!290833 e!286775)))

(assert (=> d!77545 (= res!290833 (bvsge j!176 (size!15524 a!3235)))))

(assert (=> d!77545 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!286775)))

(declare-fun b!487375 () Bool)

(assert (=> b!487375 (= e!286775 e!286777)))

(declare-fun c!58538 () Bool)

(assert (=> b!487375 (= c!58538 (validKeyInArray!0 (select (arr!15160 a!3235) j!176)))))

(declare-fun bm!31295 () Bool)

(assert (=> bm!31295 (= call!31298 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487376 () Bool)

(assert (=> b!487376 (= e!286776 call!31298)))

(assert (= (and d!77545 (not res!290833)) b!487375))

(assert (= (and b!487375 c!58538) b!487373))

(assert (= (and b!487375 (not c!58538)) b!487374))

(assert (= (and b!487373 res!290834) b!487376))

(assert (= (or b!487376 b!487374) bm!31295))

(assert (=> b!487373 m!467063))

(declare-fun m!467209 () Bool)

(assert (=> b!487373 m!467209))

(declare-fun m!467213 () Bool)

(assert (=> b!487373 m!467213))

(assert (=> b!487373 m!467063))

(assert (=> b!487373 m!467065))

(assert (=> b!487375 m!467063))

(assert (=> b!487375 m!467063))

(assert (=> b!487375 m!467081))

(declare-fun m!467217 () Bool)

(assert (=> bm!31295 m!467217))

(assert (=> b!487208 d!77545))

(declare-fun d!77549 () Bool)

(assert (=> d!77549 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220046 () Unit!14206)

(declare-fun choose!38 (array!31539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14206)

(assert (=> d!77549 (= lt!220046 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77549 (validMask!0 mask!3524)))

(assert (=> d!77549 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220046)))

(declare-fun bs!15536 () Bool)

(assert (= bs!15536 d!77549))

(assert (=> bs!15536 m!467059))

(declare-fun m!467221 () Bool)

(assert (=> bs!15536 m!467221))

(assert (=> bs!15536 m!467067))

(assert (=> b!487208 d!77549))

(declare-fun d!77557 () Bool)

(assert (=> d!77557 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487203 d!77557))

(declare-fun d!77559 () Bool)

(assert (=> d!77559 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44328 d!77559))

(declare-fun d!77563 () Bool)

(assert (=> d!77563 (= (array_inv!10934 a!3235) (bvsge (size!15524 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44328 d!77563))

(check-sat (not d!77527) (not b!487373) (not bm!31280) (not b!487250) (not d!77549) (not bm!31295) (not b!487309) (not b!487338) (not b!487249) (not b!487297) (not d!77511) (not b!487365) (not b!487375) (not b!487361) (not b!487251) (not bm!31293))
(check-sat)
