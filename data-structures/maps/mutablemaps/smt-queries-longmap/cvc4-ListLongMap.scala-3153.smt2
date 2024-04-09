; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44402 () Bool)

(assert start!44402)

(declare-fun b!487737 () Bool)

(declare-fun res!291165 () Bool)

(declare-fun e!286948 () Bool)

(assert (=> b!487737 (=> (not res!291165) (not e!286948))))

(declare-datatypes ((array!31568 0))(
  ( (array!31569 (arr!15173 (Array (_ BitVec 32) (_ BitVec 64))) (size!15537 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31568)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487737 (= res!291165 (validKeyInArray!0 (select (arr!15173 a!3235) j!176)))))

(declare-fun b!487738 () Bool)

(declare-fun res!291161 () Bool)

(declare-fun e!286945 () Bool)

(assert (=> b!487738 (=> (not res!291161) (not e!286945))))

(declare-datatypes ((List!9384 0))(
  ( (Nil!9381) (Cons!9380 (h!10236 (_ BitVec 64)) (t!15620 List!9384)) )
))
(declare-fun arrayNoDuplicates!0 (array!31568 (_ BitVec 32) List!9384) Bool)

(assert (=> b!487738 (= res!291161 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9381))))

(declare-fun e!286947 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!487739 () Bool)

(declare-datatypes ((SeekEntryResult!3647 0))(
  ( (MissingZero!3647 (index!16767 (_ BitVec 32))) (Found!3647 (index!16768 (_ BitVec 32))) (Intermediate!3647 (undefined!4459 Bool) (index!16769 (_ BitVec 32)) (x!45910 (_ BitVec 32))) (Undefined!3647) (MissingVacant!3647 (index!16770 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31568 (_ BitVec 32)) SeekEntryResult!3647)

(assert (=> b!487739 (= e!286947 (= (seekEntryOrOpen!0 (select (arr!15173 a!3235) j!176) a!3235 mask!3524) (Found!3647 j!176)))))

(declare-fun b!487740 () Bool)

(declare-fun lt!220167 () (_ BitVec 32))

(assert (=> b!487740 (= e!286945 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!220167 #b00000000000000000000000000000000) (bvslt lt!220167 (bvadd #b00000000000000000000000000000001 mask!3524))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487740 (= lt!220167 (toIndex!0 (select (arr!15173 a!3235) j!176) mask!3524))))

(assert (=> b!487740 e!286947))

(declare-fun res!291167 () Bool)

(assert (=> b!487740 (=> (not res!291167) (not e!286947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31568 (_ BitVec 32)) Bool)

(assert (=> b!487740 (= res!291167 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14232 0))(
  ( (Unit!14233) )
))
(declare-fun lt!220169 () Unit!14232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14232)

(assert (=> b!487740 (= lt!220169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487741 () Bool)

(declare-fun res!291162 () Bool)

(assert (=> b!487741 (=> (not res!291162) (not e!286948))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487741 (= res!291162 (and (= (size!15537 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15537 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15537 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!291163 () Bool)

(assert (=> start!44402 (=> (not res!291163) (not e!286948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44402 (= res!291163 (validMask!0 mask!3524))))

(assert (=> start!44402 e!286948))

(assert (=> start!44402 true))

(declare-fun array_inv!10947 (array!31568) Bool)

(assert (=> start!44402 (array_inv!10947 a!3235)))

(declare-fun b!487742 () Bool)

(declare-fun res!291160 () Bool)

(assert (=> b!487742 (=> (not res!291160) (not e!286945))))

(assert (=> b!487742 (= res!291160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487743 () Bool)

(assert (=> b!487743 (= e!286948 e!286945)))

(declare-fun res!291164 () Bool)

(assert (=> b!487743 (=> (not res!291164) (not e!286945))))

(declare-fun lt!220168 () SeekEntryResult!3647)

(assert (=> b!487743 (= res!291164 (or (= lt!220168 (MissingZero!3647 i!1204)) (= lt!220168 (MissingVacant!3647 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!487743 (= lt!220168 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487744 () Bool)

(declare-fun res!291159 () Bool)

(assert (=> b!487744 (=> (not res!291159) (not e!286948))))

(assert (=> b!487744 (= res!291159 (validKeyInArray!0 k!2280))))

(declare-fun b!487745 () Bool)

(declare-fun res!291166 () Bool)

(assert (=> b!487745 (=> (not res!291166) (not e!286948))))

(declare-fun arrayContainsKey!0 (array!31568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487745 (= res!291166 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44402 res!291163) b!487741))

(assert (= (and b!487741 res!291162) b!487737))

(assert (= (and b!487737 res!291165) b!487744))

(assert (= (and b!487744 res!291159) b!487745))

(assert (= (and b!487745 res!291166) b!487743))

(assert (= (and b!487743 res!291164) b!487742))

(assert (= (and b!487742 res!291160) b!487738))

(assert (= (and b!487738 res!291161) b!487740))

(assert (= (and b!487740 res!291167) b!487739))

(declare-fun m!467555 () Bool)

(assert (=> b!487738 m!467555))

(declare-fun m!467557 () Bool)

(assert (=> b!487740 m!467557))

(assert (=> b!487740 m!467557))

(declare-fun m!467559 () Bool)

(assert (=> b!487740 m!467559))

(declare-fun m!467561 () Bool)

(assert (=> b!487740 m!467561))

(declare-fun m!467563 () Bool)

(assert (=> b!487740 m!467563))

(assert (=> b!487737 m!467557))

(assert (=> b!487737 m!467557))

(declare-fun m!467565 () Bool)

(assert (=> b!487737 m!467565))

(assert (=> b!487739 m!467557))

(assert (=> b!487739 m!467557))

(declare-fun m!467567 () Bool)

(assert (=> b!487739 m!467567))

(declare-fun m!467569 () Bool)

(assert (=> start!44402 m!467569))

(declare-fun m!467571 () Bool)

(assert (=> start!44402 m!467571))

(declare-fun m!467573 () Bool)

(assert (=> b!487744 m!467573))

(declare-fun m!467575 () Bool)

(assert (=> b!487743 m!467575))

(declare-fun m!467577 () Bool)

(assert (=> b!487745 m!467577))

(declare-fun m!467579 () Bool)

(assert (=> b!487742 m!467579))

(push 1)

(assert (not b!487737))

(assert (not start!44402))

(assert (not b!487745))

(assert (not b!487740))

(assert (not b!487739))

(assert (not b!487744))

(assert (not b!487738))

(assert (not b!487742))

(assert (not b!487743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77591 () Bool)

(declare-fun lt!220205 () (_ BitVec 32))

(declare-fun lt!220204 () (_ BitVec 32))

(assert (=> d!77591 (= lt!220205 (bvmul (bvxor lt!220204 (bvlshr lt!220204 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77591 (= lt!220204 ((_ extract 31 0) (bvand (bvxor (select (arr!15173 a!3235) j!176) (bvlshr (select (arr!15173 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77591 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!291181 (let ((h!10238 ((_ extract 31 0) (bvand (bvxor (select (arr!15173 a!3235) j!176) (bvlshr (select (arr!15173 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!45912 (bvmul (bvxor h!10238 (bvlshr h!10238 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!45912 (bvlshr x!45912 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!291181 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!291181 #b00000000000000000000000000000000))))))

(assert (=> d!77591 (= (toIndex!0 (select (arr!15173 a!3235) j!176) mask!3524) (bvand (bvxor lt!220205 (bvlshr lt!220205 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!487740 d!77591))

(declare-fun b!487786 () Bool)

(declare-fun e!286982 () Bool)

(declare-fun call!31311 () Bool)

(assert (=> b!487786 (= e!286982 call!31311)))

(declare-fun b!487787 () Bool)

(declare-fun e!286981 () Bool)

(assert (=> b!487787 (= e!286981 call!31311)))

(declare-fun b!487788 () Bool)

(assert (=> b!487788 (= e!286982 e!286981)))

(declare-fun lt!220214 () (_ BitVec 64))

(assert (=> b!487788 (= lt!220214 (select (arr!15173 a!3235) j!176))))

(declare-fun lt!220213 () Unit!14232)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31568 (_ BitVec 64) (_ BitVec 32)) Unit!14232)

(assert (=> b!487788 (= lt!220213 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220214 j!176))))

(assert (=> b!487788 (arrayContainsKey!0 a!3235 lt!220214 #b00000000000000000000000000000000)))

(declare-fun lt!220212 () Unit!14232)

(assert (=> b!487788 (= lt!220212 lt!220213)))

(declare-fun res!291192 () Bool)

(assert (=> b!487788 (= res!291192 (= (seekEntryOrOpen!0 (select (arr!15173 a!3235) j!176) a!3235 mask!3524) (Found!3647 j!176)))))

(assert (=> b!487788 (=> (not res!291192) (not e!286981))))

(declare-fun d!77601 () Bool)

(declare-fun res!291193 () Bool)

(declare-fun e!286980 () Bool)

(assert (=> d!77601 (=> res!291193 e!286980)))

(assert (=> d!77601 (= res!291193 (bvsge j!176 (size!15537 a!3235)))))

(assert (=> d!77601 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!286980)))

(declare-fun b!487789 () Bool)

(assert (=> b!487789 (= e!286980 e!286982)))

(declare-fun c!58566 () Bool)

(assert (=> b!487789 (= c!58566 (validKeyInArray!0 (select (arr!15173 a!3235) j!176)))))

(declare-fun bm!31308 () Bool)

(assert (=> bm!31308 (= call!31311 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77601 (not res!291193)) b!487789))

(assert (= (and b!487789 c!58566) b!487788))

(assert (= (and b!487789 (not c!58566)) b!487786))

(assert (= (and b!487788 res!291192) b!487787))

(assert (= (or b!487787 b!487786) bm!31308))

(assert (=> b!487788 m!467557))

(declare-fun m!467613 () Bool)

(assert (=> b!487788 m!467613))

(declare-fun m!467615 () Bool)

(assert (=> b!487788 m!467615))

(assert (=> b!487788 m!467557))

(assert (=> b!487788 m!467567))

(assert (=> b!487789 m!467557))

(assert (=> b!487789 m!467557))

(assert (=> b!487789 m!467565))

(declare-fun m!467617 () Bool)

(assert (=> bm!31308 m!467617))

(assert (=> b!487740 d!77601))

(declare-fun d!77611 () Bool)

(assert (=> d!77611 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220217 () Unit!14232)

(declare-fun choose!38 (array!31568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14232)

(assert (=> d!77611 (= lt!220217 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77611 (validMask!0 mask!3524)))

(assert (=> d!77611 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220217)))

(declare-fun bs!15550 () Bool)

(assert (= bs!15550 d!77611))

(assert (=> bs!15550 m!467561))

(declare-fun m!467621 () Bool)

(assert (=> bs!15550 m!467621))

(assert (=> bs!15550 m!467569))

(assert (=> b!487740 d!77611))

(declare-fun d!77615 () Bool)

(declare-fun res!291200 () Bool)

(declare-fun e!286989 () Bool)

(assert (=> d!77615 (=> res!291200 e!286989)))

(assert (=> d!77615 (= res!291200 (= (select (arr!15173 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77615 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!286989)))

(declare-fun b!487796 () Bool)

(declare-fun e!286990 () Bool)

(assert (=> b!487796 (= e!286989 e!286990)))

(declare-fun res!291201 () Bool)

(assert (=> b!487796 (=> (not res!291201) (not e!286990))))

(assert (=> b!487796 (= res!291201 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15537 a!3235)))))

(declare-fun b!487797 () Bool)

(assert (=> b!487797 (= e!286990 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77615 (not res!291200)) b!487796))

(assert (= (and b!487796 res!291201) b!487797))

(declare-fun m!467623 () Bool)

(assert (=> d!77615 m!467623))

(declare-fun m!467625 () Bool)

(assert (=> b!487797 m!467625))

(assert (=> b!487745 d!77615))

(declare-fun b!487798 () Bool)

(declare-fun e!286993 () Bool)

(declare-fun call!31312 () Bool)

(assert (=> b!487798 (= e!286993 call!31312)))

(declare-fun b!487799 () Bool)

(declare-fun e!286992 () Bool)

(assert (=> b!487799 (= e!286992 call!31312)))

(declare-fun b!487800 () Bool)

(assert (=> b!487800 (= e!286993 e!286992)))

(declare-fun lt!220220 () (_ BitVec 64))

(assert (=> b!487800 (= lt!220220 (select (arr!15173 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220219 () Unit!14232)

(assert (=> b!487800 (= lt!220219 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220220 #b00000000000000000000000000000000))))

(assert (=> b!487800 (arrayContainsKey!0 a!3235 lt!220220 #b00000000000000000000000000000000)))

(declare-fun lt!220218 () Unit!14232)

(assert (=> b!487800 (= lt!220218 lt!220219)))

(declare-fun res!291202 () Bool)

(assert (=> b!487800 (= res!291202 (= (seekEntryOrOpen!0 (select (arr!15173 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3647 #b00000000000000000000000000000000)))))

(assert (=> b!487800 (=> (not res!291202) (not e!286992))))

(declare-fun d!77617 () Bool)

(declare-fun res!291203 () Bool)

(declare-fun e!286991 () Bool)

(assert (=> d!77617 (=> res!291203 e!286991)))

(assert (=> d!77617 (= res!291203 (bvsge #b00000000000000000000000000000000 (size!15537 a!3235)))))

(assert (=> d!77617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286991)))

(declare-fun b!487801 () Bool)

(assert (=> b!487801 (= e!286991 e!286993)))

(declare-fun c!58567 () Bool)

(assert (=> b!487801 (= c!58567 (validKeyInArray!0 (select (arr!15173 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31309 () Bool)

(assert (=> bm!31309 (= call!31312 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77617 (not res!291203)) b!487801))

(assert (= (and b!487801 c!58567) b!487800))

(assert (= (and b!487801 (not c!58567)) b!487798))

(assert (= (and b!487800 res!291202) b!487799))

(assert (= (or b!487799 b!487798) bm!31309))

(assert (=> b!487800 m!467623))

(declare-fun m!467627 () Bool)

(assert (=> b!487800 m!467627))

(declare-fun m!467629 () Bool)

(assert (=> b!487800 m!467629))

(assert (=> b!487800 m!467623))

(declare-fun m!467631 () Bool)

(assert (=> b!487800 m!467631))

(assert (=> b!487801 m!467623))

(assert (=> b!487801 m!467623))

(declare-fun m!467633 () Bool)

(assert (=> b!487801 m!467633))

(declare-fun m!467635 () Bool)

(assert (=> bm!31309 m!467635))

(assert (=> b!487742 d!77617))

(declare-fun d!77619 () Bool)

(assert (=> d!77619 (= (validKeyInArray!0 (select (arr!15173 a!3235) j!176)) (and (not (= (select (arr!15173 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15173 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487737 d!77619))

(declare-fun b!487824 () Bool)

(declare-fun e!287011 () Bool)

(declare-fun call!31315 () Bool)

(assert (=> b!487824 (= e!287011 call!31315)))

(declare-fun b!487825 () Bool)

(assert (=> b!487825 (= e!287011 call!31315)))

(declare-fun b!487826 () Bool)

(declare-fun e!287009 () Bool)

(assert (=> b!487826 (= e!287009 e!287011)))

(declare-fun c!58576 () Bool)

(assert (=> b!487826 (= c!58576 (validKeyInArray!0 (select (arr!15173 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31312 () Bool)

(assert (=> bm!31312 (= call!31315 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58576 (Cons!9380 (select (arr!15173 a!3235) #b00000000000000000000000000000000) Nil!9381) Nil!9381)))))

(declare-fun b!487827 () Bool)

(declare-fun e!287010 () Bool)

(assert (=> b!487827 (= e!287010 e!287009)))

(declare-fun res!291210 () Bool)

(assert (=> b!487827 (=> (not res!291210) (not e!287009))))

(declare-fun e!287008 () Bool)

(assert (=> b!487827 (= res!291210 (not e!287008))))

(declare-fun res!291211 () Bool)

(assert (=> b!487827 (=> (not res!291211) (not e!287008))))

(assert (=> b!487827 (= res!291211 (validKeyInArray!0 (select (arr!15173 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77621 () Bool)

(declare-fun res!291212 () Bool)

(assert (=> d!77621 (=> res!291212 e!287010)))

(assert (=> d!77621 (= res!291212 (bvsge #b00000000000000000000000000000000 (size!15537 a!3235)))))

(assert (=> d!77621 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9381) e!287010)))

(declare-fun b!487828 () Bool)

(declare-fun contains!2705 (List!9384 (_ BitVec 64)) Bool)

(assert (=> b!487828 (= e!287008 (contains!2705 Nil!9381 (select (arr!15173 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77621 (not res!291212)) b!487827))

(assert (= (and b!487827 res!291211) b!487828))

(assert (= (and b!487827 res!291210) b!487826))

(assert (= (and b!487826 c!58576) b!487824))

(assert (= (and b!487826 (not c!58576)) b!487825))

(assert (= (or b!487824 b!487825) bm!31312))

(assert (=> b!487826 m!467623))

(assert (=> b!487826 m!467623))

(assert (=> b!487826 m!467633))

(assert (=> bm!31312 m!467623))

(declare-fun m!467637 () Bool)

(assert (=> bm!31312 m!467637))

(assert (=> b!487827 m!467623))

(assert (=> b!487827 m!467623))

(assert (=> b!487827 m!467633))

(assert (=> b!487828 m!467623))

(assert (=> b!487828 m!467623))

(declare-fun m!467639 () Bool)

(assert (=> b!487828 m!467639))

(assert (=> b!487738 d!77621))

(declare-fun b!487917 () Bool)

(declare-fun e!287071 () SeekEntryResult!3647)

(declare-fun lt!220262 () SeekEntryResult!3647)

(assert (=> b!487917 (= e!287071 (MissingZero!3647 (index!16769 lt!220262)))))

(declare-fun d!77623 () Bool)

(declare-fun lt!220261 () SeekEntryResult!3647)

(assert (=> d!77623 (and (or (is-Undefined!3647 lt!220261) (not (is-Found!3647 lt!220261)) (and (bvsge (index!16768 lt!220261) #b00000000000000000000000000000000) (bvslt (index!16768 lt!220261) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220261) (is-Found!3647 lt!220261) (not (is-MissingZero!3647 lt!220261)) (and (bvsge (index!16767 lt!220261) #b00000000000000000000000000000000) (bvslt (index!16767 lt!220261) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220261) (is-Found!3647 lt!220261) (is-MissingZero!3647 lt!220261) (not (is-MissingVacant!3647 lt!220261)) (and (bvsge (index!16770 lt!220261) #b00000000000000000000000000000000) (bvslt (index!16770 lt!220261) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220261) (ite (is-Found!3647 lt!220261) (= (select (arr!15173 a!3235) (index!16768 lt!220261)) k!2280) (ite (is-MissingZero!3647 lt!220261) (= (select (arr!15173 a!3235) (index!16767 lt!220261)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3647 lt!220261) (= (select (arr!15173 a!3235) (index!16770 lt!220261)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287070 () SeekEntryResult!3647)

(assert (=> d!77623 (= lt!220261 e!287070)))

(declare-fun c!58609 () Bool)

(assert (=> d!77623 (= c!58609 (and (is-Intermediate!3647 lt!220262) (undefined!4459 lt!220262)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31568 (_ BitVec 32)) SeekEntryResult!3647)

(assert (=> d!77623 (= lt!220262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77623 (validMask!0 mask!3524)))

(assert (=> d!77623 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220261)))

(declare-fun b!487918 () Bool)

(declare-fun c!58610 () Bool)

(declare-fun lt!220260 () (_ BitVec 64))

(assert (=> b!487918 (= c!58610 (= lt!220260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287069 () SeekEntryResult!3647)

(assert (=> b!487918 (= e!287069 e!287071)))

(declare-fun b!487919 () Bool)

(assert (=> b!487919 (= e!287070 e!287069)))

(assert (=> b!487919 (= lt!220260 (select (arr!15173 a!3235) (index!16769 lt!220262)))))

(declare-fun c!58608 () Bool)

(assert (=> b!487919 (= c!58608 (= lt!220260 k!2280))))

(declare-fun b!487920 () Bool)

(assert (=> b!487920 (= e!287070 Undefined!3647)))

(declare-fun b!487921 () Bool)

(assert (=> b!487921 (= e!287069 (Found!3647 (index!16769 lt!220262)))))

(declare-fun b!487922 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31568 (_ BitVec 32)) SeekEntryResult!3647)

(assert (=> b!487922 (= e!287071 (seekKeyOrZeroReturnVacant!0 (x!45910 lt!220262) (index!16769 lt!220262) (index!16769 lt!220262) k!2280 a!3235 mask!3524))))

(assert (= (and d!77623 c!58609) b!487920))

(assert (= (and d!77623 (not c!58609)) b!487919))

(assert (= (and b!487919 c!58608) b!487921))

(assert (= (and b!487919 (not c!58608)) b!487918))

(assert (= (and b!487918 c!58610) b!487917))

(assert (= (and b!487918 (not c!58610)) b!487922))

(declare-fun m!467709 () Bool)

(assert (=> d!77623 m!467709))

(declare-fun m!467711 () Bool)

(assert (=> d!77623 m!467711))

(declare-fun m!467713 () Bool)

(assert (=> d!77623 m!467713))

(declare-fun m!467715 () Bool)

(assert (=> d!77623 m!467715))

(assert (=> d!77623 m!467709))

(declare-fun m!467717 () Bool)

(assert (=> d!77623 m!467717))

(assert (=> d!77623 m!467569))

(declare-fun m!467719 () Bool)

(assert (=> b!487919 m!467719))

(declare-fun m!467721 () Bool)

(assert (=> b!487922 m!467721))

(assert (=> b!487743 d!77623))

(declare-fun d!77645 () Bool)

(assert (=> d!77645 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487744 d!77645))

(declare-fun d!77647 () Bool)

(assert (=> d!77647 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44402 d!77647))

(declare-fun d!77651 () Bool)

(assert (=> d!77651 (= (array_inv!10947 a!3235) (bvsge (size!15537 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44402 d!77651))

(declare-fun b!487923 () Bool)

(declare-fun e!287074 () SeekEntryResult!3647)

(declare-fun lt!220268 () SeekEntryResult!3647)

(assert (=> b!487923 (= e!287074 (MissingZero!3647 (index!16769 lt!220268)))))

(declare-fun d!77653 () Bool)

(declare-fun lt!220267 () SeekEntryResult!3647)

(assert (=> d!77653 (and (or (is-Undefined!3647 lt!220267) (not (is-Found!3647 lt!220267)) (and (bvsge (index!16768 lt!220267) #b00000000000000000000000000000000) (bvslt (index!16768 lt!220267) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220267) (is-Found!3647 lt!220267) (not (is-MissingZero!3647 lt!220267)) (and (bvsge (index!16767 lt!220267) #b00000000000000000000000000000000) (bvslt (index!16767 lt!220267) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220267) (is-Found!3647 lt!220267) (is-MissingZero!3647 lt!220267) (not (is-MissingVacant!3647 lt!220267)) (and (bvsge (index!16770 lt!220267) #b00000000000000000000000000000000) (bvslt (index!16770 lt!220267) (size!15537 a!3235)))) (or (is-Undefined!3647 lt!220267) (ite (is-Found!3647 lt!220267) (= (select (arr!15173 a!3235) (index!16768 lt!220267)) (select (arr!15173 a!3235) j!176)) (ite (is-MissingZero!3647 lt!220267) (= (select (arr!15173 a!3235) (index!16767 lt!220267)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3647 lt!220267) (= (select (arr!15173 a!3235) (index!16770 lt!220267)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287073 () SeekEntryResult!3647)

(assert (=> d!77653 (= lt!220267 e!287073)))

(declare-fun c!58612 () Bool)

(assert (=> d!77653 (= c!58612 (and (is-Intermediate!3647 lt!220268) (undefined!4459 lt!220268)))))

(assert (=> d!77653 (= lt!220268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15173 a!3235) j!176) mask!3524) (select (arr!15173 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77653 (validMask!0 mask!3524)))

(assert (=> d!77653 (= (seekEntryOrOpen!0 (select (arr!15173 a!3235) j!176) a!3235 mask!3524) lt!220267)))

(declare-fun b!487924 () Bool)

(declare-fun c!58613 () Bool)

(declare-fun lt!220266 () (_ BitVec 64))

(assert (=> b!487924 (= c!58613 (= lt!220266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287072 () SeekEntryResult!3647)

(assert (=> b!487924 (= e!287072 e!287074)))

(declare-fun b!487925 () Bool)

(assert (=> b!487925 (= e!287073 e!287072)))

(assert (=> b!487925 (= lt!220266 (select (arr!15173 a!3235) (index!16769 lt!220268)))))

(declare-fun c!58611 () Bool)

(assert (=> b!487925 (= c!58611 (= lt!220266 (select (arr!15173 a!3235) j!176)))))

(declare-fun b!487926 () Bool)

(assert (=> b!487926 (= e!287073 Undefined!3647)))

(declare-fun b!487927 () Bool)

(assert (=> b!487927 (= e!287072 (Found!3647 (index!16769 lt!220268)))))

(declare-fun b!487928 () Bool)

(assert (=> b!487928 (= e!287074 (seekKeyOrZeroReturnVacant!0 (x!45910 lt!220268) (index!16769 lt!220268) (index!16769 lt!220268) (select (arr!15173 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!77653 c!58612) b!487926))

(assert (= (and d!77653 (not c!58612)) b!487925))

(assert (= (and b!487925 c!58611) b!487927))

(assert (= (and b!487925 (not c!58611)) b!487924))

(assert (= (and b!487924 c!58613) b!487923))

(assert (= (and b!487924 (not c!58613)) b!487928))

(assert (=> d!77653 m!467559))

(assert (=> d!77653 m!467557))

(declare-fun m!467725 () Bool)

(assert (=> d!77653 m!467725))

(declare-fun m!467727 () Bool)

(assert (=> d!77653 m!467727))

(declare-fun m!467729 () Bool)

(assert (=> d!77653 m!467729))

(assert (=> d!77653 m!467557))

(assert (=> d!77653 m!467559))

(declare-fun m!467731 () Bool)

(assert (=> d!77653 m!467731))

(assert (=> d!77653 m!467569))

(declare-fun m!467733 () Bool)

(assert (=> b!487925 m!467733))

(assert (=> b!487928 m!467557))

(declare-fun m!467735 () Bool)

(assert (=> b!487928 m!467735))

(assert (=> b!487739 d!77653))

(push 1)

(assert (not b!487788))

(assert (not b!487826))

(assert (not b!487797))

(assert (not b!487827))

(assert (not b!487928))

(assert (not bm!31308))

(assert (not b!487828))

(assert (not b!487801))

(assert (not b!487800))

(assert (not bm!31309))

(assert (not d!77611))

(assert (not b!487789))

(assert (not d!77623))

(assert (not bm!31312))

(assert (not d!77653))

(assert (not b!487922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

