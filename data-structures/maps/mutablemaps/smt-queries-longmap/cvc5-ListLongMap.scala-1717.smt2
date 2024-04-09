; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31596 () Bool)

(assert start!31596)

(declare-fun b!315947 () Bool)

(declare-fun res!171248 () Bool)

(declare-fun e!196548 () Bool)

(assert (=> b!315947 (=> (not res!171248) (not e!196548))))

(declare-datatypes ((array!16118 0))(
  ( (array!16119 (arr!7627 (Array (_ BitVec 32) (_ BitVec 64))) (size!7979 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16118)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16118 (_ BitVec 32)) Bool)

(assert (=> b!315947 (= res!171248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315948 () Bool)

(declare-datatypes ((Unit!9760 0))(
  ( (Unit!9761) )
))
(declare-fun e!196550 () Unit!9760)

(declare-fun Unit!9762 () Unit!9760)

(assert (=> b!315948 (= e!196550 Unit!9762)))

(declare-fun b!315949 () Bool)

(assert (=> b!315949 false))

(declare-datatypes ((SeekEntryResult!2778 0))(
  ( (MissingZero!2778 (index!13288 (_ BitVec 32))) (Found!2778 (index!13289 (_ BitVec 32))) (Intermediate!2778 (undefined!3590 Bool) (index!13290 (_ BitVec 32)) (x!31499 (_ BitVec 32))) (Undefined!2778) (MissingVacant!2778 (index!13291 (_ BitVec 32))) )
))
(declare-fun lt!154420 () SeekEntryResult!2778)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16118 (_ BitVec 32)) SeekEntryResult!2778)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315949 (= lt!154420 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!196547 () Unit!9760)

(declare-fun Unit!9763 () Unit!9760)

(assert (=> b!315949 (= e!196547 Unit!9763)))

(declare-fun b!315950 () Bool)

(declare-fun res!171249 () Bool)

(assert (=> b!315950 (=> (not res!171249) (not e!196548))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315950 (= res!171249 (and (= (size!7979 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7979 a!3293))))))

(declare-fun b!315951 () Bool)

(declare-fun e!196552 () Bool)

(assert (=> b!315951 (= e!196548 e!196552)))

(declare-fun res!171245 () Bool)

(assert (=> b!315951 (=> (not res!171245) (not e!196552))))

(declare-fun lt!154421 () SeekEntryResult!2778)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315951 (= res!171245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154421))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315951 (= lt!154421 (Intermediate!2778 false resIndex!52 resX!52))))

(declare-fun b!315952 () Bool)

(declare-fun res!171247 () Bool)

(assert (=> b!315952 (=> (not res!171247) (not e!196548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315952 (= res!171247 (validKeyInArray!0 k!2441))))

(declare-fun b!315953 () Bool)

(declare-fun e!196549 () Bool)

(declare-fun e!196546 () Bool)

(assert (=> b!315953 (= e!196549 (not e!196546))))

(declare-fun res!171243 () Bool)

(assert (=> b!315953 (=> res!171243 e!196546)))

(assert (=> b!315953 (= res!171243 (not (= (select (arr!7627 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!315953 (= index!1781 resIndex!52)))

(declare-fun lt!154418 () Unit!9760)

(assert (=> b!315953 (= lt!154418 e!196550)))

(declare-fun c!49969 () Bool)

(assert (=> b!315953 (= c!49969 (not (= resIndex!52 index!1781)))))

(declare-fun b!315954 () Bool)

(declare-fun res!171251 () Bool)

(assert (=> b!315954 (=> (not res!171251) (not e!196548))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16118 (_ BitVec 32)) SeekEntryResult!2778)

(assert (=> b!315954 (= res!171251 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2778 i!1240)))))

(declare-fun b!315955 () Bool)

(assert (=> b!315955 (= e!196550 e!196547)))

(declare-fun c!49970 () Bool)

(assert (=> b!315955 (= c!49970 (or (= (select (arr!7627 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7627 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315956 () Bool)

(declare-fun res!171252 () Bool)

(assert (=> b!315956 (=> (not res!171252) (not e!196548))))

(declare-fun arrayContainsKey!0 (array!16118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315956 (= res!171252 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!171250 () Bool)

(assert (=> start!31596 (=> (not res!171250) (not e!196548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31596 (= res!171250 (validMask!0 mask!3709))))

(assert (=> start!31596 e!196548))

(declare-fun array_inv!5581 (array!16118) Bool)

(assert (=> start!31596 (array_inv!5581 a!3293)))

(assert (=> start!31596 true))

(declare-fun b!315957 () Bool)

(assert (=> b!315957 (= e!196552 e!196549)))

(declare-fun res!171246 () Bool)

(assert (=> b!315957 (=> (not res!171246) (not e!196549))))

(declare-fun lt!154419 () SeekEntryResult!2778)

(assert (=> b!315957 (= res!171246 (and (= lt!154419 lt!154421) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7627 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(assert (=> b!315957 (= lt!154419 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!315958 () Bool)

(assert (=> b!315958 (= e!196546 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)) mask!3709) lt!154419))))

(declare-fun b!315959 () Bool)

(declare-fun res!171244 () Bool)

(assert (=> b!315959 (=> (not res!171244) (not e!196552))))

(assert (=> b!315959 (= res!171244 (and (= (select (arr!7627 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7979 a!3293))))))

(declare-fun b!315960 () Bool)

(assert (=> b!315960 false))

(declare-fun Unit!9764 () Unit!9760)

(assert (=> b!315960 (= e!196547 Unit!9764)))

(assert (= (and start!31596 res!171250) b!315950))

(assert (= (and b!315950 res!171249) b!315952))

(assert (= (and b!315952 res!171247) b!315956))

(assert (= (and b!315956 res!171252) b!315954))

(assert (= (and b!315954 res!171251) b!315947))

(assert (= (and b!315947 res!171248) b!315951))

(assert (= (and b!315951 res!171245) b!315959))

(assert (= (and b!315959 res!171244) b!315957))

(assert (= (and b!315957 res!171246) b!315953))

(assert (= (and b!315953 c!49969) b!315955))

(assert (= (and b!315953 (not c!49969)) b!315948))

(assert (= (and b!315955 c!49970) b!315960))

(assert (= (and b!315955 (not c!49970)) b!315949))

(assert (= (and b!315953 (not res!171243)) b!315958))

(declare-fun m!324985 () Bool)

(assert (=> b!315952 m!324985))

(declare-fun m!324987 () Bool)

(assert (=> b!315955 m!324987))

(assert (=> b!315957 m!324987))

(declare-fun m!324989 () Bool)

(assert (=> b!315957 m!324989))

(declare-fun m!324991 () Bool)

(assert (=> b!315958 m!324991))

(declare-fun m!324993 () Bool)

(assert (=> b!315958 m!324993))

(declare-fun m!324995 () Bool)

(assert (=> b!315954 m!324995))

(declare-fun m!324997 () Bool)

(assert (=> b!315951 m!324997))

(assert (=> b!315951 m!324997))

(declare-fun m!324999 () Bool)

(assert (=> b!315951 m!324999))

(declare-fun m!325001 () Bool)

(assert (=> b!315956 m!325001))

(declare-fun m!325003 () Bool)

(assert (=> b!315959 m!325003))

(assert (=> b!315953 m!324987))

(declare-fun m!325005 () Bool)

(assert (=> b!315949 m!325005))

(assert (=> b!315949 m!325005))

(declare-fun m!325007 () Bool)

(assert (=> b!315949 m!325007))

(declare-fun m!325009 () Bool)

(assert (=> b!315947 m!325009))

(declare-fun m!325011 () Bool)

(assert (=> start!31596 m!325011))

(declare-fun m!325013 () Bool)

(assert (=> start!31596 m!325013))

(push 1)

(assert (not b!315951))

(assert (not b!315947))

(assert (not b!315954))

(assert (not b!315957))

(assert (not b!315956))

(assert (not start!31596))

(assert (not b!315958))

(assert (not b!315949))

(assert (not b!315952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!316101 () Bool)

(declare-fun lt!154474 () SeekEntryResult!2778)

(assert (=> b!316101 (and (bvsge (index!13290 lt!154474) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154474) (size!7979 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)))))))

(declare-fun res!171329 () Bool)

(assert (=> b!316101 (= res!171329 (= (select (arr!7627 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293))) (index!13290 lt!154474)) k!2441))))

(declare-fun e!196632 () Bool)

(assert (=> b!316101 (=> res!171329 e!196632)))

(declare-fun e!196631 () Bool)

(assert (=> b!316101 (= e!196631 e!196632)))

(declare-fun e!196630 () SeekEntryResult!2778)

(declare-fun b!316102 () Bool)

(assert (=> b!316102 (= e!196630 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)) mask!3709))))

(declare-fun b!316103 () Bool)

(declare-fun e!196629 () SeekEntryResult!2778)

(assert (=> b!316103 (= e!196629 (Intermediate!2778 true index!1781 x!1427))))

(declare-fun d!68841 () Bool)

(declare-fun e!196633 () Bool)

(assert (=> d!68841 e!196633))

(declare-fun c!50005 () Bool)

(assert (=> d!68841 (= c!50005 (and (is-Intermediate!2778 lt!154474) (undefined!3590 lt!154474)))))

(assert (=> d!68841 (= lt!154474 e!196629)))

(declare-fun c!50003 () Bool)

(assert (=> d!68841 (= c!50003 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154475 () (_ BitVec 64))

(assert (=> d!68841 (= lt!154475 (select (arr!7627 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293))) index!1781))))

(assert (=> d!68841 (validMask!0 mask!3709)))

(assert (=> d!68841 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)) mask!3709) lt!154474)))

(declare-fun b!316104 () Bool)

(assert (=> b!316104 (and (bvsge (index!13290 lt!154474) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154474) (size!7979 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)))))))

(declare-fun res!171330 () Bool)

(assert (=> b!316104 (= res!171330 (= (select (arr!7627 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293))) (index!13290 lt!154474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316104 (=> res!171330 e!196632)))

(declare-fun b!316105 () Bool)

(assert (=> b!316105 (and (bvsge (index!13290 lt!154474) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154474) (size!7979 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293)))))))

(assert (=> b!316105 (= e!196632 (= (select (arr!7627 (array!16119 (store (arr!7627 a!3293) i!1240 k!2441) (size!7979 a!3293))) (index!13290 lt!154474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316106 () Bool)

(assert (=> b!316106 (= e!196633 (bvsge (x!31499 lt!154474) #b01111111111111111111111111111110))))

(declare-fun b!316107 () Bool)

(assert (=> b!316107 (= e!196629 e!196630)))

(declare-fun c!50004 () Bool)

(assert (=> b!316107 (= c!50004 (or (= lt!154475 k!2441) (= (bvadd lt!154475 lt!154475) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316108 () Bool)

(assert (=> b!316108 (= e!196633 e!196631)))

(declare-fun res!171331 () Bool)

(assert (=> b!316108 (= res!171331 (and (is-Intermediate!2778 lt!154474) (not (undefined!3590 lt!154474)) (bvslt (x!31499 lt!154474) #b01111111111111111111111111111110) (bvsge (x!31499 lt!154474) #b00000000000000000000000000000000) (bvsge (x!31499 lt!154474) x!1427)))))

(assert (=> b!316108 (=> (not res!171331) (not e!196631))))

(declare-fun b!316109 () Bool)

(assert (=> b!316109 (= e!196630 (Intermediate!2778 false index!1781 x!1427))))

(assert (= (and d!68841 c!50003) b!316103))

(assert (= (and d!68841 (not c!50003)) b!316107))

(assert (= (and b!316107 c!50004) b!316109))

(assert (= (and b!316107 (not c!50004)) b!316102))

(assert (= (and d!68841 c!50005) b!316106))

(assert (= (and d!68841 (not c!50005)) b!316108))

(assert (= (and b!316108 res!171331) b!316101))

(assert (= (and b!316101 (not res!171329)) b!316104))

(assert (= (and b!316104 (not res!171330)) b!316105))

(declare-fun m!325097 () Bool)

(assert (=> b!316101 m!325097))

(assert (=> b!316102 m!325005))

(assert (=> b!316102 m!325005))

(declare-fun m!325099 () Bool)

(assert (=> b!316102 m!325099))

(assert (=> b!316105 m!325097))

(declare-fun m!325101 () Bool)

(assert (=> d!68841 m!325101))

(assert (=> d!68841 m!325011))

(assert (=> b!316104 m!325097))

(assert (=> b!315958 d!68841))

(declare-fun d!68851 () Bool)

(assert (=> d!68851 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31596 d!68851))

(declare-fun d!68857 () Bool)

(assert (=> d!68857 (= (array_inv!5581 a!3293) (bvsge (size!7979 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31596 d!68857))

(declare-fun d!68859 () Bool)

(assert (=> d!68859 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315952 d!68859))

(declare-fun b!316185 () Bool)

(declare-fun e!196678 () Bool)

(declare-fun call!26003 () Bool)

(assert (=> b!316185 (= e!196678 call!26003)))

(declare-fun b!316186 () Bool)

(declare-fun e!196679 () Bool)

(assert (=> b!316186 (= e!196679 call!26003)))

(declare-fun d!68861 () Bool)

(declare-fun res!171360 () Bool)

(declare-fun e!196680 () Bool)

(assert (=> d!68861 (=> res!171360 e!196680)))

(assert (=> d!68861 (= res!171360 (bvsge #b00000000000000000000000000000000 (size!7979 a!3293)))))

(assert (=> d!68861 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196680)))

(declare-fun b!316187 () Bool)

(assert (=> b!316187 (= e!196680 e!196679)))

(declare-fun c!50030 () Bool)

(assert (=> b!316187 (= c!50030 (validKeyInArray!0 (select (arr!7627 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316188 () Bool)

(assert (=> b!316188 (= e!196679 e!196678)))

(declare-fun lt!154504 () (_ BitVec 64))

(assert (=> b!316188 (= lt!154504 (select (arr!7627 a!3293) #b00000000000000000000000000000000))))

(declare-fun lt!154503 () Unit!9760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16118 (_ BitVec 64) (_ BitVec 32)) Unit!9760)

(assert (=> b!316188 (= lt!154503 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154504 #b00000000000000000000000000000000))))

(assert (=> b!316188 (arrayContainsKey!0 a!3293 lt!154504 #b00000000000000000000000000000000)))

(declare-fun lt!154502 () Unit!9760)

(assert (=> b!316188 (= lt!154502 lt!154503)))

(declare-fun res!171359 () Bool)

(assert (=> b!316188 (= res!171359 (= (seekEntryOrOpen!0 (select (arr!7627 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2778 #b00000000000000000000000000000000)))))

(assert (=> b!316188 (=> (not res!171359) (not e!196678))))

(declare-fun bm!26000 () Bool)

(assert (=> bm!26000 (= call!26003 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!68861 (not res!171360)) b!316187))

(assert (= (and b!316187 c!50030) b!316188))

(assert (= (and b!316187 (not c!50030)) b!316186))

(assert (= (and b!316188 res!171359) b!316185))

(assert (= (or b!316185 b!316186) bm!26000))

(declare-fun m!325135 () Bool)

(assert (=> b!316187 m!325135))

(assert (=> b!316187 m!325135))

(declare-fun m!325137 () Bool)

(assert (=> b!316187 m!325137))

(assert (=> b!316188 m!325135))

(declare-fun m!325139 () Bool)

(assert (=> b!316188 m!325139))

(declare-fun m!325141 () Bool)

(assert (=> b!316188 m!325141))

(assert (=> b!316188 m!325135))

(declare-fun m!325143 () Bool)

(assert (=> b!316188 m!325143))

(declare-fun m!325145 () Bool)

(assert (=> bm!26000 m!325145))

(assert (=> b!315947 d!68861))

(declare-fun b!316189 () Bool)

(declare-fun lt!154505 () SeekEntryResult!2778)

(assert (=> b!316189 (and (bvsge (index!13290 lt!154505) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154505) (size!7979 a!3293)))))

(declare-fun res!171361 () Bool)

(assert (=> b!316189 (= res!171361 (= (select (arr!7627 a!3293) (index!13290 lt!154505)) k!2441))))

(declare-fun e!196684 () Bool)

(assert (=> b!316189 (=> res!171361 e!196684)))

(declare-fun e!196683 () Bool)

(assert (=> b!316189 (= e!196683 e!196684)))

(declare-fun e!196682 () SeekEntryResult!2778)

(declare-fun b!316190 () Bool)

(assert (=> b!316190 (= e!196682 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316191 () Bool)

(declare-fun e!196681 () SeekEntryResult!2778)

(assert (=> b!316191 (= e!196681 (Intermediate!2778 true index!1781 x!1427))))

(declare-fun d!68871 () Bool)

(declare-fun e!196685 () Bool)

(assert (=> d!68871 e!196685))

(declare-fun c!50033 () Bool)

(assert (=> d!68871 (= c!50033 (and (is-Intermediate!2778 lt!154505) (undefined!3590 lt!154505)))))

(assert (=> d!68871 (= lt!154505 e!196681)))

(declare-fun c!50031 () Bool)

(assert (=> d!68871 (= c!50031 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154506 () (_ BitVec 64))

(assert (=> d!68871 (= lt!154506 (select (arr!7627 a!3293) index!1781))))

(assert (=> d!68871 (validMask!0 mask!3709)))

(assert (=> d!68871 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154505)))

(declare-fun b!316192 () Bool)

(assert (=> b!316192 (and (bvsge (index!13290 lt!154505) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154505) (size!7979 a!3293)))))

(declare-fun res!171362 () Bool)

(assert (=> b!316192 (= res!171362 (= (select (arr!7627 a!3293) (index!13290 lt!154505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316192 (=> res!171362 e!196684)))

(declare-fun b!316193 () Bool)

(assert (=> b!316193 (and (bvsge (index!13290 lt!154505) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154505) (size!7979 a!3293)))))

(assert (=> b!316193 (= e!196684 (= (select (arr!7627 a!3293) (index!13290 lt!154505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316194 () Bool)

(assert (=> b!316194 (= e!196685 (bvsge (x!31499 lt!154505) #b01111111111111111111111111111110))))

(declare-fun b!316195 () Bool)

(assert (=> b!316195 (= e!196681 e!196682)))

(declare-fun c!50032 () Bool)

(assert (=> b!316195 (= c!50032 (or (= lt!154506 k!2441) (= (bvadd lt!154506 lt!154506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316196 () Bool)

(assert (=> b!316196 (= e!196685 e!196683)))

(declare-fun res!171363 () Bool)

(assert (=> b!316196 (= res!171363 (and (is-Intermediate!2778 lt!154505) (not (undefined!3590 lt!154505)) (bvslt (x!31499 lt!154505) #b01111111111111111111111111111110) (bvsge (x!31499 lt!154505) #b00000000000000000000000000000000) (bvsge (x!31499 lt!154505) x!1427)))))

(assert (=> b!316196 (=> (not res!171363) (not e!196683))))

(declare-fun b!316197 () Bool)

(assert (=> b!316197 (= e!196682 (Intermediate!2778 false index!1781 x!1427))))

(assert (= (and d!68871 c!50031) b!316191))

(assert (= (and d!68871 (not c!50031)) b!316195))

(assert (= (and b!316195 c!50032) b!316197))

(assert (= (and b!316195 (not c!50032)) b!316190))

(assert (= (and d!68871 c!50033) b!316194))

(assert (= (and d!68871 (not c!50033)) b!316196))

(assert (= (and b!316196 res!171363) b!316189))

(assert (= (and b!316189 (not res!171361)) b!316192))

(assert (= (and b!316192 (not res!171362)) b!316193))

(declare-fun m!325147 () Bool)

(assert (=> b!316189 m!325147))

(assert (=> b!316190 m!325005))

(assert (=> b!316190 m!325005))

(declare-fun m!325149 () Bool)

(assert (=> b!316190 m!325149))

(assert (=> b!316193 m!325147))

(assert (=> d!68871 m!324987))

(assert (=> d!68871 m!325011))

(assert (=> b!316192 m!325147))

(assert (=> b!315957 d!68871))

(declare-fun d!68873 () Bool)

(declare-fun res!171371 () Bool)

(declare-fun e!196695 () Bool)

(assert (=> d!68873 (=> res!171371 e!196695)))

(assert (=> d!68873 (= res!171371 (= (select (arr!7627 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68873 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!196695)))

(declare-fun b!316211 () Bool)

(declare-fun e!196696 () Bool)

(assert (=> b!316211 (= e!196695 e!196696)))

(declare-fun res!171372 () Bool)

(assert (=> b!316211 (=> (not res!171372) (not e!196696))))

(assert (=> b!316211 (= res!171372 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7979 a!3293)))))

(declare-fun b!316212 () Bool)

(assert (=> b!316212 (= e!196696 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68873 (not res!171371)) b!316211))

(assert (= (and b!316211 res!171372) b!316212))

(assert (=> d!68873 m!325135))

(declare-fun m!325159 () Bool)

(assert (=> b!316212 m!325159))

(assert (=> b!315956 d!68873))

(declare-fun b!316213 () Bool)

(declare-fun lt!154509 () SeekEntryResult!2778)

(assert (=> b!316213 (and (bvsge (index!13290 lt!154509) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154509) (size!7979 a!3293)))))

(declare-fun res!171373 () Bool)

(assert (=> b!316213 (= res!171373 (= (select (arr!7627 a!3293) (index!13290 lt!154509)) k!2441))))

(declare-fun e!196700 () Bool)

(assert (=> b!316213 (=> res!171373 e!196700)))

(declare-fun e!196699 () Bool)

(assert (=> b!316213 (= e!196699 e!196700)))

(declare-fun e!196698 () SeekEntryResult!2778)

(declare-fun b!316214 () Bool)

(assert (=> b!316214 (= e!196698 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316215 () Bool)

(declare-fun e!196697 () SeekEntryResult!2778)

(assert (=> b!316215 (= e!196697 (Intermediate!2778 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!68875 () Bool)

(declare-fun e!196701 () Bool)

(assert (=> d!68875 e!196701))

(declare-fun c!50039 () Bool)

(assert (=> d!68875 (= c!50039 (and (is-Intermediate!2778 lt!154509) (undefined!3590 lt!154509)))))

(assert (=> d!68875 (= lt!154509 e!196697)))

(declare-fun c!50037 () Bool)

(assert (=> d!68875 (= c!50037 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154510 () (_ BitVec 64))

(assert (=> d!68875 (= lt!154510 (select (arr!7627 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68875 (validMask!0 mask!3709)))

(assert (=> d!68875 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154509)))

(declare-fun b!316216 () Bool)

(assert (=> b!316216 (and (bvsge (index!13290 lt!154509) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154509) (size!7979 a!3293)))))

(declare-fun res!171374 () Bool)

(assert (=> b!316216 (= res!171374 (= (select (arr!7627 a!3293) (index!13290 lt!154509)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316216 (=> res!171374 e!196700)))

(declare-fun b!316217 () Bool)

(assert (=> b!316217 (and (bvsge (index!13290 lt!154509) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154509) (size!7979 a!3293)))))

(assert (=> b!316217 (= e!196700 (= (select (arr!7627 a!3293) (index!13290 lt!154509)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316218 () Bool)

(assert (=> b!316218 (= e!196701 (bvsge (x!31499 lt!154509) #b01111111111111111111111111111110))))

(declare-fun b!316219 () Bool)

(assert (=> b!316219 (= e!196697 e!196698)))

(declare-fun c!50038 () Bool)

(assert (=> b!316219 (= c!50038 (or (= lt!154510 k!2441) (= (bvadd lt!154510 lt!154510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316220 () Bool)

(assert (=> b!316220 (= e!196701 e!196699)))

(declare-fun res!171375 () Bool)

(assert (=> b!316220 (= res!171375 (and (is-Intermediate!2778 lt!154509) (not (undefined!3590 lt!154509)) (bvslt (x!31499 lt!154509) #b01111111111111111111111111111110) (bvsge (x!31499 lt!154509) #b00000000000000000000000000000000) (bvsge (x!31499 lt!154509) #b00000000000000000000000000000000)))))

(assert (=> b!316220 (=> (not res!171375) (not e!196699))))

(declare-fun b!316221 () Bool)

(assert (=> b!316221 (= e!196698 (Intermediate!2778 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68875 c!50037) b!316215))

(assert (= (and d!68875 (not c!50037)) b!316219))

(assert (= (and b!316219 c!50038) b!316221))

(assert (= (and b!316219 (not c!50038)) b!316214))

(assert (= (and d!68875 c!50039) b!316218))

(assert (= (and d!68875 (not c!50039)) b!316220))

(assert (= (and b!316220 res!171375) b!316213))

(assert (= (and b!316213 (not res!171373)) b!316216))

(assert (= (and b!316216 (not res!171374)) b!316217))

(declare-fun m!325161 () Bool)

(assert (=> b!316213 m!325161))

(assert (=> b!316214 m!324997))

(declare-fun m!325163 () Bool)

(assert (=> b!316214 m!325163))

(assert (=> b!316214 m!325163))

(declare-fun m!325165 () Bool)

(assert (=> b!316214 m!325165))

(assert (=> b!316217 m!325161))

(assert (=> d!68875 m!324997))

(declare-fun m!325167 () Bool)

(assert (=> d!68875 m!325167))

(assert (=> d!68875 m!325011))

(assert (=> b!316216 m!325161))

(assert (=> b!315951 d!68875))

(declare-fun d!68879 () Bool)

(declare-fun lt!154522 () (_ BitVec 32))

(declare-fun lt!154521 () (_ BitVec 32))

(assert (=> d!68879 (= lt!154522 (bvmul (bvxor lt!154521 (bvlshr lt!154521 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68879 (= lt!154521 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68879 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171377 (let ((h!5391 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31507 (bvmul (bvxor h!5391 (bvlshr h!5391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31507 (bvlshr x!31507 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171377 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171377 #b00000000000000000000000000000000))))))

(assert (=> d!68879 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154522 (bvlshr lt!154522 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!315951 d!68879))

(declare-fun b!316285 () Bool)

(declare-fun e!196740 () SeekEntryResult!2778)

(declare-fun lt!154549 () SeekEntryResult!2778)

(assert (=> b!316285 (= e!196740 (Found!2778 (index!13290 lt!154549)))))

(declare-fun b!316286 () Bool)

(declare-fun e!196738 () SeekEntryResult!2778)

(assert (=> b!316286 (= e!196738 (MissingZero!2778 (index!13290 lt!154549)))))

(declare-fun b!316287 () Bool)

(declare-fun e!196739 () SeekEntryResult!2778)

(assert (=> b!316287 (= e!196739 e!196740)))

(declare-fun lt!154547 () (_ BitVec 64))

(assert (=> b!316287 (= lt!154547 (select (arr!7627 a!3293) (index!13290 lt!154549)))))

(declare-fun c!50065 () Bool)

(assert (=> b!316287 (= c!50065 (= lt!154547 k!2441))))

(declare-fun b!316288 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16118 (_ BitVec 32)) SeekEntryResult!2778)

(assert (=> b!316288 (= e!196738 (seekKeyOrZeroReturnVacant!0 (x!31499 lt!154549) (index!13290 lt!154549) (index!13290 lt!154549) k!2441 a!3293 mask!3709))))

(declare-fun b!316289 () Bool)

(declare-fun c!50064 () Bool)

(assert (=> b!316289 (= c!50064 (= lt!154547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316289 (= e!196740 e!196738)))

(declare-fun d!68887 () Bool)

(declare-fun lt!154548 () SeekEntryResult!2778)

(assert (=> d!68887 (and (or (is-Undefined!2778 lt!154548) (not (is-Found!2778 lt!154548)) (and (bvsge (index!13289 lt!154548) #b00000000000000000000000000000000) (bvslt (index!13289 lt!154548) (size!7979 a!3293)))) (or (is-Undefined!2778 lt!154548) (is-Found!2778 lt!154548) (not (is-MissingZero!2778 lt!154548)) (and (bvsge (index!13288 lt!154548) #b00000000000000000000000000000000) (bvslt (index!13288 lt!154548) (size!7979 a!3293)))) (or (is-Undefined!2778 lt!154548) (is-Found!2778 lt!154548) (is-MissingZero!2778 lt!154548) (not (is-MissingVacant!2778 lt!154548)) (and (bvsge (index!13291 lt!154548) #b00000000000000000000000000000000) (bvslt (index!13291 lt!154548) (size!7979 a!3293)))) (or (is-Undefined!2778 lt!154548) (ite (is-Found!2778 lt!154548) (= (select (arr!7627 a!3293) (index!13289 lt!154548)) k!2441) (ite (is-MissingZero!2778 lt!154548) (= (select (arr!7627 a!3293) (index!13288 lt!154548)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2778 lt!154548) (= (select (arr!7627 a!3293) (index!13291 lt!154548)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68887 (= lt!154548 e!196739)))

(declare-fun c!50066 () Bool)

(assert (=> d!68887 (= c!50066 (and (is-Intermediate!2778 lt!154549) (undefined!3590 lt!154549)))))

(assert (=> d!68887 (= lt!154549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68887 (validMask!0 mask!3709)))

(assert (=> d!68887 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154548)))

(declare-fun b!316290 () Bool)

(assert (=> b!316290 (= e!196739 Undefined!2778)))

(assert (= (and d!68887 c!50066) b!316290))

(assert (= (and d!68887 (not c!50066)) b!316287))

(assert (= (and b!316287 c!50065) b!316285))

(assert (= (and b!316287 (not c!50065)) b!316289))

(assert (= (and b!316289 c!50064) b!316286))

(assert (= (and b!316289 (not c!50064)) b!316288))

(declare-fun m!325201 () Bool)

(assert (=> b!316287 m!325201))

(declare-fun m!325203 () Bool)

(assert (=> b!316288 m!325203))

(assert (=> d!68887 m!324997))

(declare-fun m!325205 () Bool)

(assert (=> d!68887 m!325205))

(declare-fun m!325207 () Bool)

(assert (=> d!68887 m!325207))

(assert (=> d!68887 m!325011))

(assert (=> d!68887 m!324997))

(assert (=> d!68887 m!324999))

(declare-fun m!325209 () Bool)

(assert (=> d!68887 m!325209))

(assert (=> b!315954 d!68887))

(declare-fun b!316291 () Bool)

(declare-fun lt!154550 () SeekEntryResult!2778)

(assert (=> b!316291 (and (bvsge (index!13290 lt!154550) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154550) (size!7979 a!3293)))))

(declare-fun res!171393 () Bool)

(assert (=> b!316291 (= res!171393 (= (select (arr!7627 a!3293) (index!13290 lt!154550)) k!2441))))

(declare-fun e!196744 () Bool)

(assert (=> b!316291 (=> res!171393 e!196744)))

(declare-fun e!196743 () Bool)

(assert (=> b!316291 (= e!196743 e!196744)))

(declare-fun e!196742 () SeekEntryResult!2778)

(declare-fun b!316292 () Bool)

(assert (=> b!316292 (= e!196742 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316293 () Bool)

(declare-fun e!196741 () SeekEntryResult!2778)

(assert (=> b!316293 (= e!196741 (Intermediate!2778 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!68903 () Bool)

(declare-fun e!196745 () Bool)

(assert (=> d!68903 e!196745))

(declare-fun c!50069 () Bool)

(assert (=> d!68903 (= c!50069 (and (is-Intermediate!2778 lt!154550) (undefined!3590 lt!154550)))))

(assert (=> d!68903 (= lt!154550 e!196741)))

(declare-fun c!50067 () Bool)

(assert (=> d!68903 (= c!50067 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154551 () (_ BitVec 64))

(assert (=> d!68903 (= lt!154551 (select (arr!7627 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68903 (validMask!0 mask!3709)))

(assert (=> d!68903 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154550)))

(declare-fun b!316294 () Bool)

(assert (=> b!316294 (and (bvsge (index!13290 lt!154550) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154550) (size!7979 a!3293)))))

(declare-fun res!171394 () Bool)

(assert (=> b!316294 (= res!171394 (= (select (arr!7627 a!3293) (index!13290 lt!154550)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316294 (=> res!171394 e!196744)))

(declare-fun b!316295 () Bool)

(assert (=> b!316295 (and (bvsge (index!13290 lt!154550) #b00000000000000000000000000000000) (bvslt (index!13290 lt!154550) (size!7979 a!3293)))))

(assert (=> b!316295 (= e!196744 (= (select (arr!7627 a!3293) (index!13290 lt!154550)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316296 () Bool)

(assert (=> b!316296 (= e!196745 (bvsge (x!31499 lt!154550) #b01111111111111111111111111111110))))

(declare-fun b!316297 () Bool)

(assert (=> b!316297 (= e!196741 e!196742)))

(declare-fun c!50068 () Bool)

(assert (=> b!316297 (= c!50068 (or (= lt!154551 k!2441) (= (bvadd lt!154551 lt!154551) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316298 () Bool)

(assert (=> b!316298 (= e!196745 e!196743)))

(declare-fun res!171395 () Bool)

(assert (=> b!316298 (= res!171395 (and (is-Intermediate!2778 lt!154550) (not (undefined!3590 lt!154550)) (bvslt (x!31499 lt!154550) #b01111111111111111111111111111110) (bvsge (x!31499 lt!154550) #b00000000000000000000000000000000) (bvsge (x!31499 lt!154550) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316298 (=> (not res!171395) (not e!196743))))

(declare-fun b!316299 () Bool)

(assert (=> b!316299 (= e!196742 (Intermediate!2778 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!68903 c!50067) b!316293))

(assert (= (and d!68903 (not c!50067)) b!316297))

(assert (= (and b!316297 c!50068) b!316299))

(assert (= (and b!316297 (not c!50068)) b!316292))

(assert (= (and d!68903 c!50069) b!316296))

(assert (= (and d!68903 (not c!50069)) b!316298))

(assert (= (and b!316298 res!171395) b!316291))

(assert (= (and b!316291 (not res!171393)) b!316294))

(assert (= (and b!316294 (not res!171394)) b!316295))

(declare-fun m!325211 () Bool)

(assert (=> b!316291 m!325211))

(assert (=> b!316292 m!325005))

(declare-fun m!325213 () Bool)

(assert (=> b!316292 m!325213))

(assert (=> b!316292 m!325213))

(declare-fun m!325215 () Bool)

(assert (=> b!316292 m!325215))

(assert (=> b!316295 m!325211))

(assert (=> d!68903 m!325005))

(declare-fun m!325217 () Bool)

(assert (=> d!68903 m!325217))

(assert (=> d!68903 m!325011))

(assert (=> b!316294 m!325211))

(assert (=> b!315949 d!68903))

(declare-fun d!68905 () Bool)

(declare-fun lt!154556 () (_ BitVec 32))

(assert (=> d!68905 (and (bvsge lt!154556 #b00000000000000000000000000000000) (bvslt lt!154556 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68905 (= lt!154556 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68905 (validMask!0 mask!3709)))

(assert (=> d!68905 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154556)))

(declare-fun bs!11043 () Bool)

(assert (= bs!11043 d!68905))

(declare-fun m!325229 () Bool)

(assert (=> bs!11043 m!325229))

(assert (=> bs!11043 m!325011))

(assert (=> b!315949 d!68905))

(push 1)

