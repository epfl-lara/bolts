; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46142 () Bool)

(assert start!46142)

(declare-fun b!510885 () Bool)

(declare-fun res!311883 () Bool)

(declare-fun e!298543 () Bool)

(assert (=> b!510885 (=> (not res!311883) (not e!298543))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510885 (= res!311883 (validKeyInArray!0 k!2280))))

(declare-fun b!510886 () Bool)

(declare-fun e!298546 () Bool)

(declare-datatypes ((SeekEntryResult!4256 0))(
  ( (MissingZero!4256 (index!19212 (_ BitVec 32))) (Found!4256 (index!19213 (_ BitVec 32))) (Intermediate!4256 (undefined!5068 Bool) (index!19214 (_ BitVec 32)) (x!48188 (_ BitVec 32))) (Undefined!4256) (MissingVacant!4256 (index!19215 (_ BitVec 32))) )
))
(declare-fun lt!233774 () SeekEntryResult!4256)

(declare-fun lt!233775 () SeekEntryResult!4256)

(assert (=> b!510886 (= e!298546 (or (not (is-Intermediate!4256 lt!233774)) (not (undefined!5068 lt!233774)) (= lt!233775 Undefined!4256)))))

(declare-fun b!510887 () Bool)

(declare-fun res!311880 () Bool)

(assert (=> b!510887 (=> (not res!311880) (not e!298543))))

(declare-datatypes ((array!32813 0))(
  ( (array!32814 (arr!15782 (Array (_ BitVec 32) (_ BitVec 64))) (size!16146 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32813)

(declare-fun arrayContainsKey!0 (array!32813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510887 (= res!311880 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510888 () Bool)

(declare-fun res!311884 () Bool)

(assert (=> b!510888 (=> (not res!311884) (not e!298543))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510888 (= res!311884 (validKeyInArray!0 (select (arr!15782 a!3235) j!176)))))

(declare-fun b!510889 () Bool)

(declare-fun res!311888 () Bool)

(declare-fun e!298545 () Bool)

(assert (=> b!510889 (=> (not res!311888) (not e!298545))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32813 (_ BitVec 32)) Bool)

(assert (=> b!510889 (= res!311888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510890 () Bool)

(declare-fun res!311881 () Bool)

(assert (=> b!510890 (=> (not res!311881) (not e!298543))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510890 (= res!311881 (and (= (size!16146 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16146 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16146 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!311882 () Bool)

(assert (=> start!46142 (=> (not res!311882) (not e!298543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46142 (= res!311882 (validMask!0 mask!3524))))

(assert (=> start!46142 e!298543))

(assert (=> start!46142 true))

(declare-fun array_inv!11556 (array!32813) Bool)

(assert (=> start!46142 (array_inv!11556 a!3235)))

(declare-fun b!510891 () Bool)

(assert (=> b!510891 (= e!298543 e!298545)))

(declare-fun res!311885 () Bool)

(assert (=> b!510891 (=> (not res!311885) (not e!298545))))

(declare-fun lt!233777 () SeekEntryResult!4256)

(assert (=> b!510891 (= res!311885 (or (= lt!233777 (MissingZero!4256 i!1204)) (= lt!233777 (MissingVacant!4256 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32813 (_ BitVec 32)) SeekEntryResult!4256)

(assert (=> b!510891 (= lt!233777 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510892 () Bool)

(declare-fun res!311886 () Bool)

(assert (=> b!510892 (=> (not res!311886) (not e!298545))))

(declare-datatypes ((List!9993 0))(
  ( (Nil!9990) (Cons!9989 (h!10866 (_ BitVec 64)) (t!16229 List!9993)) )
))
(declare-fun arrayNoDuplicates!0 (array!32813 (_ BitVec 32) List!9993) Bool)

(assert (=> b!510892 (= res!311886 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9990))))

(declare-fun b!510893 () Bool)

(assert (=> b!510893 (= e!298545 (not e!298546))))

(declare-fun res!311887 () Bool)

(assert (=> b!510893 (=> res!311887 e!298546)))

(declare-fun lt!233776 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32813 (_ BitVec 32)) SeekEntryResult!4256)

(assert (=> b!510893 (= res!311887 (= lt!233774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233776 (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)) mask!3524)))))

(declare-fun lt!233773 () (_ BitVec 32))

(assert (=> b!510893 (= lt!233774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233773 (select (arr!15782 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510893 (= lt!233776 (toIndex!0 (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510893 (= lt!233773 (toIndex!0 (select (arr!15782 a!3235) j!176) mask!3524))))

(assert (=> b!510893 (= lt!233775 (Found!4256 j!176))))

(assert (=> b!510893 (= lt!233775 (seekEntryOrOpen!0 (select (arr!15782 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510893 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15762 0))(
  ( (Unit!15763) )
))
(declare-fun lt!233772 () Unit!15762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15762)

(assert (=> b!510893 (= lt!233772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46142 res!311882) b!510890))

(assert (= (and b!510890 res!311881) b!510888))

(assert (= (and b!510888 res!311884) b!510885))

(assert (= (and b!510885 res!311883) b!510887))

(assert (= (and b!510887 res!311880) b!510891))

(assert (= (and b!510891 res!311885) b!510889))

(assert (= (and b!510889 res!311888) b!510892))

(assert (= (and b!510892 res!311886) b!510893))

(assert (= (and b!510893 (not res!311887)) b!510886))

(declare-fun m!492451 () Bool)

(assert (=> b!510885 m!492451))

(declare-fun m!492453 () Bool)

(assert (=> b!510887 m!492453))

(declare-fun m!492455 () Bool)

(assert (=> b!510892 m!492455))

(declare-fun m!492457 () Bool)

(assert (=> b!510889 m!492457))

(declare-fun m!492459 () Bool)

(assert (=> b!510891 m!492459))

(declare-fun m!492461 () Bool)

(assert (=> start!46142 m!492461))

(declare-fun m!492463 () Bool)

(assert (=> start!46142 m!492463))

(declare-fun m!492465 () Bool)

(assert (=> b!510888 m!492465))

(assert (=> b!510888 m!492465))

(declare-fun m!492467 () Bool)

(assert (=> b!510888 m!492467))

(declare-fun m!492469 () Bool)

(assert (=> b!510893 m!492469))

(declare-fun m!492471 () Bool)

(assert (=> b!510893 m!492471))

(declare-fun m!492473 () Bool)

(assert (=> b!510893 m!492473))

(assert (=> b!510893 m!492465))

(declare-fun m!492475 () Bool)

(assert (=> b!510893 m!492475))

(assert (=> b!510893 m!492465))

(declare-fun m!492477 () Bool)

(assert (=> b!510893 m!492477))

(assert (=> b!510893 m!492465))

(declare-fun m!492479 () Bool)

(assert (=> b!510893 m!492479))

(assert (=> b!510893 m!492465))

(declare-fun m!492481 () Bool)

(assert (=> b!510893 m!492481))

(assert (=> b!510893 m!492473))

(declare-fun m!492483 () Bool)

(assert (=> b!510893 m!492483))

(assert (=> b!510893 m!492473))

(declare-fun m!492485 () Bool)

(assert (=> b!510893 m!492485))

(push 1)

(assert (not b!510893))

(assert (not b!510887))

(assert (not b!510888))

(assert (not b!510892))

(assert (not b!510891))

(assert (not start!46142))

(assert (not b!510889))

(assert (not b!510885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!510947 () Bool)

(declare-fun e!298582 () Bool)

(declare-fun e!298583 () Bool)

(assert (=> b!510947 (= e!298582 e!298583)))

(declare-fun c!59795 () Bool)

(assert (=> b!510947 (= c!59795 (validKeyInArray!0 (select (arr!15782 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!510948 () Bool)

(declare-fun call!31496 () Bool)

(assert (=> b!510948 (= e!298583 call!31496)))

(declare-fun b!510949 () Bool)

(declare-fun e!298585 () Bool)

(assert (=> b!510949 (= e!298585 e!298582)))

(declare-fun res!311915 () Bool)

(assert (=> b!510949 (=> (not res!311915) (not e!298582))))

(declare-fun e!298584 () Bool)

(assert (=> b!510949 (= res!311915 (not e!298584))))

(declare-fun res!311916 () Bool)

(assert (=> b!510949 (=> (not res!311916) (not e!298584))))

(assert (=> b!510949 (= res!311916 (validKeyInArray!0 (select (arr!15782 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!510946 () Bool)

(declare-fun contains!2729 (List!9993 (_ BitVec 64)) Bool)

(assert (=> b!510946 (= e!298584 (contains!2729 Nil!9990 (select (arr!15782 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78751 () Bool)

(declare-fun res!311914 () Bool)

(assert (=> d!78751 (=> res!311914 e!298585)))

(assert (=> d!78751 (= res!311914 (bvsge #b00000000000000000000000000000000 (size!16146 a!3235)))))

(assert (=> d!78751 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9990) e!298585)))

(declare-fun b!510950 () Bool)

(assert (=> b!510950 (= e!298583 call!31496)))

(declare-fun bm!31493 () Bool)

(assert (=> bm!31493 (= call!31496 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59795 (Cons!9989 (select (arr!15782 a!3235) #b00000000000000000000000000000000) Nil!9990) Nil!9990)))))

(assert (= (and d!78751 (not res!311914)) b!510949))

(assert (= (and b!510949 res!311916) b!510946))

(assert (= (and b!510949 res!311915) b!510947))

(assert (= (and b!510947 c!59795) b!510948))

(assert (= (and b!510947 (not c!59795)) b!510950))

(assert (= (or b!510948 b!510950) bm!31493))

(declare-fun m!492499 () Bool)

(assert (=> b!510947 m!492499))

(assert (=> b!510947 m!492499))

(declare-fun m!492503 () Bool)

(assert (=> b!510947 m!492503))

(assert (=> b!510949 m!492499))

(assert (=> b!510949 m!492499))

(assert (=> b!510949 m!492503))

(assert (=> b!510946 m!492499))

(assert (=> b!510946 m!492499))

(declare-fun m!492507 () Bool)

(assert (=> b!510946 m!492507))

(assert (=> bm!31493 m!492499))

(declare-fun m!492509 () Bool)

(assert (=> bm!31493 m!492509))

(assert (=> b!510892 d!78751))

(declare-fun b!510993 () Bool)

(declare-fun e!298612 () SeekEntryResult!4256)

(declare-fun lt!233814 () SeekEntryResult!4256)

(assert (=> b!510993 (= e!298612 (MissingZero!4256 (index!19214 lt!233814)))))

(declare-fun d!78761 () Bool)

(declare-fun lt!233815 () SeekEntryResult!4256)

(assert (=> d!78761 (and (or (is-Undefined!4256 lt!233815) (not (is-Found!4256 lt!233815)) (and (bvsge (index!19213 lt!233815) #b00000000000000000000000000000000) (bvslt (index!19213 lt!233815) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233815) (is-Found!4256 lt!233815) (not (is-MissingZero!4256 lt!233815)) (and (bvsge (index!19212 lt!233815) #b00000000000000000000000000000000) (bvslt (index!19212 lt!233815) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233815) (is-Found!4256 lt!233815) (is-MissingZero!4256 lt!233815) (not (is-MissingVacant!4256 lt!233815)) (and (bvsge (index!19215 lt!233815) #b00000000000000000000000000000000) (bvslt (index!19215 lt!233815) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233815) (ite (is-Found!4256 lt!233815) (= (select (arr!15782 a!3235) (index!19213 lt!233815)) k!2280) (ite (is-MissingZero!4256 lt!233815) (= (select (arr!15782 a!3235) (index!19212 lt!233815)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4256 lt!233815) (= (select (arr!15782 a!3235) (index!19215 lt!233815)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!298611 () SeekEntryResult!4256)

(assert (=> d!78761 (= lt!233815 e!298611)))

(declare-fun c!59816 () Bool)

(assert (=> d!78761 (= c!59816 (and (is-Intermediate!4256 lt!233814) (undefined!5068 lt!233814)))))

(assert (=> d!78761 (= lt!233814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78761 (validMask!0 mask!3524)))

(assert (=> d!78761 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!233815)))

(declare-fun b!510994 () Bool)

(assert (=> b!510994 (= e!298611 Undefined!4256)))

(declare-fun b!510995 () Bool)

(declare-fun e!298610 () SeekEntryResult!4256)

(assert (=> b!510995 (= e!298611 e!298610)))

(declare-fun lt!233816 () (_ BitVec 64))

(assert (=> b!510995 (= lt!233816 (select (arr!15782 a!3235) (index!19214 lt!233814)))))

(declare-fun c!59815 () Bool)

(assert (=> b!510995 (= c!59815 (= lt!233816 k!2280))))

(declare-fun b!510996 () Bool)

(declare-fun c!59814 () Bool)

(assert (=> b!510996 (= c!59814 (= lt!233816 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!510996 (= e!298610 e!298612)))

(declare-fun b!510997 () Bool)

(assert (=> b!510997 (= e!298610 (Found!4256 (index!19214 lt!233814)))))

(declare-fun b!510998 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32813 (_ BitVec 32)) SeekEntryResult!4256)

(assert (=> b!510998 (= e!298612 (seekKeyOrZeroReturnVacant!0 (x!48188 lt!233814) (index!19214 lt!233814) (index!19214 lt!233814) k!2280 a!3235 mask!3524))))

(assert (= (and d!78761 c!59816) b!510994))

(assert (= (and d!78761 (not c!59816)) b!510995))

(assert (= (and b!510995 c!59815) b!510997))

(assert (= (and b!510995 (not c!59815)) b!510996))

(assert (= (and b!510996 c!59814) b!510993))

(assert (= (and b!510996 (not c!59814)) b!510998))

(declare-fun m!492519 () Bool)

(assert (=> d!78761 m!492519))

(assert (=> d!78761 m!492461))

(declare-fun m!492523 () Bool)

(assert (=> d!78761 m!492523))

(declare-fun m!492525 () Bool)

(assert (=> d!78761 m!492525))

(declare-fun m!492529 () Bool)

(assert (=> d!78761 m!492529))

(declare-fun m!492533 () Bool)

(assert (=> d!78761 m!492533))

(assert (=> d!78761 m!492529))

(declare-fun m!492537 () Bool)

(assert (=> b!510995 m!492537))

(declare-fun m!492539 () Bool)

(assert (=> b!510998 m!492539))

(assert (=> b!510891 d!78761))

(declare-fun d!78765 () Bool)

(assert (=> d!78765 (= (validKeyInArray!0 (select (arr!15782 a!3235) j!176)) (and (not (= (select (arr!15782 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15782 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!510888 d!78765))

(declare-fun b!511078 () Bool)

(declare-fun lt!233858 () SeekEntryResult!4256)

(assert (=> b!511078 (and (bvsge (index!19214 lt!233858) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233858) (size!16146 a!3235)))))

(declare-fun res!311955 () Bool)

(assert (=> b!511078 (= res!311955 (= (select (arr!15782 a!3235) (index!19214 lt!233858)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298664 () Bool)

(assert (=> b!511078 (=> res!311955 e!298664)))

(declare-fun b!511079 () Bool)

(assert (=> b!511079 (and (bvsge (index!19214 lt!233858) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233858) (size!16146 a!3235)))))

(assert (=> b!511079 (= e!298664 (= (select (arr!15782 a!3235) (index!19214 lt!233858)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!511080 () Bool)

(declare-fun e!298668 () SeekEntryResult!4256)

(assert (=> b!511080 (= e!298668 (Intermediate!4256 true lt!233773 #b00000000000000000000000000000000))))

(declare-fun b!511081 () Bool)

(declare-fun e!298666 () Bool)

(assert (=> b!511081 (= e!298666 (bvsge (x!48188 lt!233858) #b01111111111111111111111111111110))))

(declare-fun b!511082 () Bool)

(declare-fun e!298667 () SeekEntryResult!4256)

(assert (=> b!511082 (= e!298668 e!298667)))

(declare-fun lt!233859 () (_ BitVec 64))

(declare-fun c!59844 () Bool)

(assert (=> b!511082 (= c!59844 (or (= lt!233859 (select (arr!15782 a!3235) j!176)) (= (bvadd lt!233859 lt!233859) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!78769 () Bool)

(assert (=> d!78769 e!298666))

(declare-fun c!59843 () Bool)

(assert (=> d!78769 (= c!59843 (and (is-Intermediate!4256 lt!233858) (undefined!5068 lt!233858)))))

(assert (=> d!78769 (= lt!233858 e!298668)))

(declare-fun c!59842 () Bool)

(assert (=> d!78769 (= c!59842 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78769 (= lt!233859 (select (arr!15782 a!3235) lt!233773))))

(assert (=> d!78769 (validMask!0 mask!3524)))

(assert (=> d!78769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233773 (select (arr!15782 a!3235) j!176) a!3235 mask!3524) lt!233858)))

(declare-fun b!511083 () Bool)

(assert (=> b!511083 (= e!298667 (Intermediate!4256 false lt!233773 #b00000000000000000000000000000000))))

(declare-fun b!511084 () Bool)

(assert (=> b!511084 (and (bvsge (index!19214 lt!233858) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233858) (size!16146 a!3235)))))

(declare-fun res!311954 () Bool)

(assert (=> b!511084 (= res!311954 (= (select (arr!15782 a!3235) (index!19214 lt!233858)) (select (arr!15782 a!3235) j!176)))))

(assert (=> b!511084 (=> res!311954 e!298664)))

(declare-fun e!298665 () Bool)

(assert (=> b!511084 (= e!298665 e!298664)))

(declare-fun b!511085 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511085 (= e!298667 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233773 #b00000000000000000000000000000000 mask!3524) (select (arr!15782 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!511086 () Bool)

(assert (=> b!511086 (= e!298666 e!298665)))

(declare-fun res!311953 () Bool)

(assert (=> b!511086 (= res!311953 (and (is-Intermediate!4256 lt!233858) (not (undefined!5068 lt!233858)) (bvslt (x!48188 lt!233858) #b01111111111111111111111111111110) (bvsge (x!48188 lt!233858) #b00000000000000000000000000000000) (bvsge (x!48188 lt!233858) #b00000000000000000000000000000000)))))

(assert (=> b!511086 (=> (not res!311953) (not e!298665))))

(assert (= (and d!78769 c!59842) b!511080))

(assert (= (and d!78769 (not c!59842)) b!511082))

(assert (= (and b!511082 c!59844) b!511083))

(assert (= (and b!511082 (not c!59844)) b!511085))

(assert (= (and d!78769 c!59843) b!511081))

(assert (= (and d!78769 (not c!59843)) b!511086))

(assert (= (and b!511086 res!311953) b!511084))

(assert (= (and b!511084 (not res!311954)) b!511078))

(assert (= (and b!511078 (not res!311955)) b!511079))

(declare-fun m!492599 () Bool)

(assert (=> b!511078 m!492599))

(declare-fun m!492601 () Bool)

(assert (=> b!511085 m!492601))

(assert (=> b!511085 m!492601))

(assert (=> b!511085 m!492465))

(declare-fun m!492603 () Bool)

(assert (=> b!511085 m!492603))

(assert (=> b!511084 m!492599))

(declare-fun m!492605 () Bool)

(assert (=> d!78769 m!492605))

(assert (=> d!78769 m!492461))

(assert (=> b!511079 m!492599))

(assert (=> b!510893 d!78769))

(declare-fun d!78791 () Bool)

(declare-fun lt!233865 () (_ BitVec 32))

(declare-fun lt!233864 () (_ BitVec 32))

(assert (=> d!78791 (= lt!233865 (bvmul (bvxor lt!233864 (bvlshr lt!233864 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78791 (= lt!233864 ((_ extract 31 0) (bvand (bvxor (select (arr!15782 a!3235) j!176) (bvlshr (select (arr!15782 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78791 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!311962 (let ((h!10869 ((_ extract 31 0) (bvand (bvxor (select (arr!15782 a!3235) j!176) (bvlshr (select (arr!15782 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48193 (bvmul (bvxor h!10869 (bvlshr h!10869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48193 (bvlshr x!48193 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!311962 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!311962 #b00000000000000000000000000000000))))))

(assert (=> d!78791 (= (toIndex!0 (select (arr!15782 a!3235) j!176) mask!3524) (bvand (bvxor lt!233865 (bvlshr lt!233865 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!510893 d!78791))

(declare-fun b!511102 () Bool)

(declare-fun e!298683 () SeekEntryResult!4256)

(declare-fun lt!233866 () SeekEntryResult!4256)

(assert (=> b!511102 (= e!298683 (MissingZero!4256 (index!19214 lt!233866)))))

(declare-fun d!78797 () Bool)

(declare-fun lt!233867 () SeekEntryResult!4256)

(assert (=> d!78797 (and (or (is-Undefined!4256 lt!233867) (not (is-Found!4256 lt!233867)) (and (bvsge (index!19213 lt!233867) #b00000000000000000000000000000000) (bvslt (index!19213 lt!233867) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233867) (is-Found!4256 lt!233867) (not (is-MissingZero!4256 lt!233867)) (and (bvsge (index!19212 lt!233867) #b00000000000000000000000000000000) (bvslt (index!19212 lt!233867) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233867) (is-Found!4256 lt!233867) (is-MissingZero!4256 lt!233867) (not (is-MissingVacant!4256 lt!233867)) (and (bvsge (index!19215 lt!233867) #b00000000000000000000000000000000) (bvslt (index!19215 lt!233867) (size!16146 a!3235)))) (or (is-Undefined!4256 lt!233867) (ite (is-Found!4256 lt!233867) (= (select (arr!15782 a!3235) (index!19213 lt!233867)) (select (arr!15782 a!3235) j!176)) (ite (is-MissingZero!4256 lt!233867) (= (select (arr!15782 a!3235) (index!19212 lt!233867)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4256 lt!233867) (= (select (arr!15782 a!3235) (index!19215 lt!233867)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!298682 () SeekEntryResult!4256)

(assert (=> d!78797 (= lt!233867 e!298682)))

(declare-fun c!59850 () Bool)

(assert (=> d!78797 (= c!59850 (and (is-Intermediate!4256 lt!233866) (undefined!5068 lt!233866)))))

(assert (=> d!78797 (= lt!233866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15782 a!3235) j!176) mask!3524) (select (arr!15782 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78797 (validMask!0 mask!3524)))

(assert (=> d!78797 (= (seekEntryOrOpen!0 (select (arr!15782 a!3235) j!176) a!3235 mask!3524) lt!233867)))

(declare-fun b!511103 () Bool)

(assert (=> b!511103 (= e!298682 Undefined!4256)))

(declare-fun b!511104 () Bool)

(declare-fun e!298681 () SeekEntryResult!4256)

(assert (=> b!511104 (= e!298682 e!298681)))

(declare-fun lt!233868 () (_ BitVec 64))

(assert (=> b!511104 (= lt!233868 (select (arr!15782 a!3235) (index!19214 lt!233866)))))

(declare-fun c!59849 () Bool)

(assert (=> b!511104 (= c!59849 (= lt!233868 (select (arr!15782 a!3235) j!176)))))

(declare-fun b!511105 () Bool)

(declare-fun c!59848 () Bool)

(assert (=> b!511105 (= c!59848 (= lt!233868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!511105 (= e!298681 e!298683)))

(declare-fun b!511106 () Bool)

(assert (=> b!511106 (= e!298681 (Found!4256 (index!19214 lt!233866)))))

(declare-fun b!511107 () Bool)

(assert (=> b!511107 (= e!298683 (seekKeyOrZeroReturnVacant!0 (x!48188 lt!233866) (index!19214 lt!233866) (index!19214 lt!233866) (select (arr!15782 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!78797 c!59850) b!511103))

(assert (= (and d!78797 (not c!59850)) b!511104))

(assert (= (and b!511104 c!59849) b!511106))

(assert (= (and b!511104 (not c!59849)) b!511105))

(assert (= (and b!511105 c!59848) b!511102))

(assert (= (and b!511105 (not c!59848)) b!511107))

(declare-fun m!492613 () Bool)

(assert (=> d!78797 m!492613))

(assert (=> d!78797 m!492461))

(declare-fun m!492615 () Bool)

(assert (=> d!78797 m!492615))

(declare-fun m!492617 () Bool)

(assert (=> d!78797 m!492617))

(assert (=> d!78797 m!492477))

(assert (=> d!78797 m!492465))

(declare-fun m!492619 () Bool)

(assert (=> d!78797 m!492619))

(assert (=> d!78797 m!492465))

(assert (=> d!78797 m!492477))

(declare-fun m!492621 () Bool)

(assert (=> b!511104 m!492621))

(assert (=> b!511107 m!492465))

(declare-fun m!492623 () Bool)

(assert (=> b!511107 m!492623))

(assert (=> b!510893 d!78797))

(declare-fun bm!31506 () Bool)

(declare-fun call!31509 () Bool)

(assert (=> bm!31506 (= call!31509 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!511143 () Bool)

(declare-fun e!298707 () Bool)

(assert (=> b!511143 (= e!298707 call!31509)))

(declare-fun b!511144 () Bool)

(declare-fun e!298705 () Bool)

(declare-fun e!298706 () Bool)

(assert (=> b!511144 (= e!298705 e!298706)))

(declare-fun c!59862 () Bool)

(assert (=> b!511144 (= c!59862 (validKeyInArray!0 (select (arr!15782 a!3235) j!176)))))

(declare-fun d!78799 () Bool)

(declare-fun res!311979 () Bool)

(assert (=> d!78799 (=> res!311979 e!298705)))

(assert (=> d!78799 (= res!311979 (bvsge j!176 (size!16146 a!3235)))))

(assert (=> d!78799 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!298705)))

(declare-fun b!511145 () Bool)

(assert (=> b!511145 (= e!298706 e!298707)))

(declare-fun lt!233883 () (_ BitVec 64))

(assert (=> b!511145 (= lt!233883 (select (arr!15782 a!3235) j!176))))

(declare-fun lt!233882 () Unit!15762)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32813 (_ BitVec 64) (_ BitVec 32)) Unit!15762)

(assert (=> b!511145 (= lt!233882 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!233883 j!176))))

(assert (=> b!511145 (arrayContainsKey!0 a!3235 lt!233883 #b00000000000000000000000000000000)))

(declare-fun lt!233881 () Unit!15762)

(assert (=> b!511145 (= lt!233881 lt!233882)))

(declare-fun res!311980 () Bool)

(assert (=> b!511145 (= res!311980 (= (seekEntryOrOpen!0 (select (arr!15782 a!3235) j!176) a!3235 mask!3524) (Found!4256 j!176)))))

(assert (=> b!511145 (=> (not res!311980) (not e!298707))))

(declare-fun b!511146 () Bool)

(assert (=> b!511146 (= e!298706 call!31509)))

(assert (= (and d!78799 (not res!311979)) b!511144))

(assert (= (and b!511144 c!59862) b!511145))

(assert (= (and b!511144 (not c!59862)) b!511146))

(assert (= (and b!511145 res!311980) b!511143))

(assert (= (or b!511143 b!511146) bm!31506))

(declare-fun m!492633 () Bool)

(assert (=> bm!31506 m!492633))

(assert (=> b!511144 m!492465))

(assert (=> b!511144 m!492465))

(assert (=> b!511144 m!492467))

(assert (=> b!511145 m!492465))

(declare-fun m!492635 () Bool)

(assert (=> b!511145 m!492635))

(declare-fun m!492637 () Bool)

(assert (=> b!511145 m!492637))

(assert (=> b!511145 m!492465))

(assert (=> b!511145 m!492481))

(assert (=> b!510893 d!78799))

(declare-fun lt!233887 () SeekEntryResult!4256)

(declare-fun b!511153 () Bool)

(assert (=> b!511153 (and (bvsge (index!19214 lt!233887) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233887) (size!16146 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)))))))

(declare-fun res!311983 () Bool)

(assert (=> b!511153 (= res!311983 (= (select (arr!15782 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235))) (index!19214 lt!233887)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!298711 () Bool)

(assert (=> b!511153 (=> res!311983 e!298711)))

(declare-fun b!511154 () Bool)

(assert (=> b!511154 (and (bvsge (index!19214 lt!233887) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233887) (size!16146 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)))))))

(assert (=> b!511154 (= e!298711 (= (select (arr!15782 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235))) (index!19214 lt!233887)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!511155 () Bool)

(declare-fun e!298715 () SeekEntryResult!4256)

(assert (=> b!511155 (= e!298715 (Intermediate!4256 true lt!233776 #b00000000000000000000000000000000))))

(declare-fun b!511156 () Bool)

(declare-fun e!298713 () Bool)

(assert (=> b!511156 (= e!298713 (bvsge (x!48188 lt!233887) #b01111111111111111111111111111110))))

(declare-fun b!511157 () Bool)

(declare-fun e!298714 () SeekEntryResult!4256)

(assert (=> b!511157 (= e!298715 e!298714)))

(declare-fun c!59868 () Bool)

(declare-fun lt!233888 () (_ BitVec 64))

(assert (=> b!511157 (= c!59868 (or (= lt!233888 (select (store (arr!15782 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!233888 lt!233888) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!78807 () Bool)

(assert (=> d!78807 e!298713))

(declare-fun c!59867 () Bool)

(assert (=> d!78807 (= c!59867 (and (is-Intermediate!4256 lt!233887) (undefined!5068 lt!233887)))))

(assert (=> d!78807 (= lt!233887 e!298715)))

(declare-fun c!59866 () Bool)

(assert (=> d!78807 (= c!59866 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78807 (= lt!233888 (select (arr!15782 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235))) lt!233776))))

(assert (=> d!78807 (validMask!0 mask!3524)))

(assert (=> d!78807 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233776 (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)) mask!3524) lt!233887)))

(declare-fun b!511158 () Bool)

(assert (=> b!511158 (= e!298714 (Intermediate!4256 false lt!233776 #b00000000000000000000000000000000))))

(declare-fun b!511159 () Bool)

(assert (=> b!511159 (and (bvsge (index!19214 lt!233887) #b00000000000000000000000000000000) (bvslt (index!19214 lt!233887) (size!16146 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)))))))

(declare-fun res!311982 () Bool)

(assert (=> b!511159 (= res!311982 (= (select (arr!15782 (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235))) (index!19214 lt!233887)) (select (store (arr!15782 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!511159 (=> res!311982 e!298711)))

(declare-fun e!298712 () Bool)

(assert (=> b!511159 (= e!298712 e!298711)))

(declare-fun b!511160 () Bool)

(assert (=> b!511160 (= e!298714 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!233776 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) (array!32814 (store (arr!15782 a!3235) i!1204 k!2280) (size!16146 a!3235)) mask!3524))))

(declare-fun b!511161 () Bool)

(assert (=> b!511161 (= e!298713 e!298712)))

(declare-fun res!311981 () Bool)

(assert (=> b!511161 (= res!311981 (and (is-Intermediate!4256 lt!233887) (not (undefined!5068 lt!233887)) (bvslt (x!48188 lt!233887) #b01111111111111111111111111111110) (bvsge (x!48188 lt!233887) #b00000000000000000000000000000000) (bvsge (x!48188 lt!233887) #b00000000000000000000000000000000)))))

(assert (=> b!511161 (=> (not res!311981) (not e!298712))))

(assert (= (and d!78807 c!59866) b!511155))

(assert (= (and d!78807 (not c!59866)) b!511157))

(assert (= (and b!511157 c!59868) b!511158))

(assert (= (and b!511157 (not c!59868)) b!511160))

(assert (= (and d!78807 c!59867) b!511156))

(assert (= (and d!78807 (not c!59867)) b!511161))

(assert (= (and b!511161 res!311981) b!511159))

(assert (= (and b!511159 (not res!311982)) b!511153))

(assert (= (and b!511153 (not res!311983)) b!511154))

(declare-fun m!492658 () Bool)

(assert (=> b!511153 m!492658))

(declare-fun m!492661 () Bool)

(assert (=> b!511160 m!492661))

(assert (=> b!511160 m!492661))

(assert (=> b!511160 m!492473))

(declare-fun m!492665 () Bool)

(assert (=> b!511160 m!492665))

(assert (=> b!511159 m!492658))

(declare-fun m!492667 () Bool)

(assert (=> d!78807 m!492667))

(assert (=> d!78807 m!492461))

(assert (=> b!511154 m!492658))

(assert (=> b!510893 d!78807))

(declare-fun d!78813 () Bool)

(assert (=> d!78813 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233901 () Unit!15762)

(declare-fun choose!38 (array!32813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15762)

(assert (=> d!78813 (= lt!233901 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78813 (validMask!0 mask!3524)))

(assert (=> d!78813 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!233901)))

(declare-fun bs!16190 () Bool)

(assert (= bs!16190 d!78813))

(assert (=> bs!16190 m!492479))

(declare-fun m!492679 () Bool)

(assert (=> bs!16190 m!492679))

(assert (=> bs!16190 m!492461))

(assert (=> b!510893 d!78813))

(declare-fun d!78821 () Bool)

(declare-fun lt!233903 () (_ BitVec 32))

(declare-fun lt!233902 () (_ BitVec 32))

(assert (=> d!78821 (= lt!233903 (bvmul (bvxor lt!233902 (bvlshr lt!233902 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78821 (= lt!233902 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15782 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

