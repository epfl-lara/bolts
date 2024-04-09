; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31512 () Bool)

(assert start!31512)

(declare-fun b!315109 () Bool)

(declare-fun e!196178 () Bool)

(assert (=> b!315109 (= e!196178 (not false))))

(declare-datatypes ((SeekEntryResult!2763 0))(
  ( (MissingZero!2763 (index!13228 (_ BitVec 32))) (Found!2763 (index!13229 (_ BitVec 32))) (Intermediate!2763 (undefined!3575 Bool) (index!13230 (_ BitVec 32)) (x!31435 (_ BitVec 32))) (Undefined!2763) (MissingVacant!2763 (index!13231 (_ BitVec 32))) )
))
(declare-fun lt!154172 () SeekEntryResult!2763)

(declare-fun lt!154170 () SeekEntryResult!2763)

(assert (=> b!315109 (and (= lt!154172 lt!154170) (is-Intermediate!2763 lt!154170))))

(declare-datatypes ((array!16085 0))(
  ( (array!16086 (arr!7612 (Array (_ BitVec 32) (_ BitVec 64))) (size!7964 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16085)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16085 (_ BitVec 32)) SeekEntryResult!2763)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315109 (= lt!154170 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315110 () Bool)

(declare-fun res!170723 () Bool)

(declare-fun e!196179 () Bool)

(assert (=> b!315110 (=> (not res!170723) (not e!196179))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315110 (= res!170723 (and (= (select (arr!7612 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7964 a!3293))))))

(declare-fun b!315111 () Bool)

(assert (=> b!315111 (= e!196179 e!196178)))

(declare-fun res!170716 () Bool)

(assert (=> b!315111 (=> (not res!170716) (not e!196178))))

(declare-fun lt!154171 () SeekEntryResult!2763)

(assert (=> b!315111 (= res!170716 (and (= lt!154172 lt!154171) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7612 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7612 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7612 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315111 (= lt!154172 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!315112 () Bool)

(declare-fun res!170720 () Bool)

(declare-fun e!196180 () Bool)

(assert (=> b!315112 (=> (not res!170720) (not e!196180))))

(assert (=> b!315112 (= res!170720 (and (= (size!7964 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7964 a!3293))))))

(declare-fun b!315113 () Bool)

(declare-fun res!170719 () Bool)

(assert (=> b!315113 (=> (not res!170719) (not e!196180))))

(declare-fun arrayContainsKey!0 (array!16085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315113 (= res!170719 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!170722 () Bool)

(assert (=> start!31512 (=> (not res!170722) (not e!196180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31512 (= res!170722 (validMask!0 mask!3709))))

(assert (=> start!31512 e!196180))

(declare-fun array_inv!5566 (array!16085) Bool)

(assert (=> start!31512 (array_inv!5566 a!3293)))

(assert (=> start!31512 true))

(declare-fun b!315114 () Bool)

(declare-fun res!170724 () Bool)

(assert (=> b!315114 (=> (not res!170724) (not e!196180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16085 (_ BitVec 32)) Bool)

(assert (=> b!315114 (= res!170724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315115 () Bool)

(assert (=> b!315115 (= e!196180 e!196179)))

(declare-fun res!170718 () Bool)

(assert (=> b!315115 (=> (not res!170718) (not e!196179))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315115 (= res!170718 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154171))))

(assert (=> b!315115 (= lt!154171 (Intermediate!2763 false resIndex!52 resX!52))))

(declare-fun b!315116 () Bool)

(declare-fun res!170717 () Bool)

(assert (=> b!315116 (=> (not res!170717) (not e!196180))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16085 (_ BitVec 32)) SeekEntryResult!2763)

(assert (=> b!315116 (= res!170717 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2763 i!1240)))))

(declare-fun b!315117 () Bool)

(declare-fun res!170721 () Bool)

(assert (=> b!315117 (=> (not res!170721) (not e!196180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315117 (= res!170721 (validKeyInArray!0 k!2441))))

(assert (= (and start!31512 res!170722) b!315112))

(assert (= (and b!315112 res!170720) b!315117))

(assert (= (and b!315117 res!170721) b!315113))

(assert (= (and b!315113 res!170719) b!315116))

(assert (= (and b!315116 res!170717) b!315114))

(assert (= (and b!315114 res!170724) b!315115))

(assert (= (and b!315115 res!170718) b!315110))

(assert (= (and b!315110 res!170723) b!315111))

(assert (= (and b!315111 res!170716) b!315109))

(declare-fun m!324457 () Bool)

(assert (=> b!315117 m!324457))

(declare-fun m!324459 () Bool)

(assert (=> b!315116 m!324459))

(declare-fun m!324461 () Bool)

(assert (=> b!315113 m!324461))

(declare-fun m!324463 () Bool)

(assert (=> b!315109 m!324463))

(assert (=> b!315109 m!324463))

(declare-fun m!324465 () Bool)

(assert (=> b!315109 m!324465))

(declare-fun m!324467 () Bool)

(assert (=> start!31512 m!324467))

(declare-fun m!324469 () Bool)

(assert (=> start!31512 m!324469))

(declare-fun m!324471 () Bool)

(assert (=> b!315114 m!324471))

(declare-fun m!324473 () Bool)

(assert (=> b!315110 m!324473))

(declare-fun m!324475 () Bool)

(assert (=> b!315115 m!324475))

(assert (=> b!315115 m!324475))

(declare-fun m!324477 () Bool)

(assert (=> b!315115 m!324477))

(declare-fun m!324479 () Bool)

(assert (=> b!315111 m!324479))

(declare-fun m!324481 () Bool)

(assert (=> b!315111 m!324481))

(push 1)

(assert (not b!315115))

(assert (not b!315114))

(assert (not b!315113))

(assert (not start!31512))

(assert (not b!315109))

(assert (not b!315111))

(assert (not b!315117))

(assert (not b!315116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68767 () Bool)

(assert (=> d!68767 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315117 d!68767))

(declare-fun b!315241 () Bool)

(declare-fun lt!154219 () SeekEntryResult!2763)

(assert (=> b!315241 (and (bvsge (index!13230 lt!154219) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154219) (size!7964 a!3293)))))

(declare-fun res!170809 () Bool)

(assert (=> b!315241 (= res!170809 (= (select (arr!7612 a!3293) (index!13230 lt!154219)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196248 () Bool)

(assert (=> b!315241 (=> res!170809 e!196248)))

(declare-fun b!315242 () Bool)

(assert (=> b!315242 (and (bvsge (index!13230 lt!154219) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154219) (size!7964 a!3293)))))

(declare-fun res!170808 () Bool)

(assert (=> b!315242 (= res!170808 (= (select (arr!7612 a!3293) (index!13230 lt!154219)) k!2441))))

(assert (=> b!315242 (=> res!170808 e!196248)))

(declare-fun e!196250 () Bool)

(assert (=> b!315242 (= e!196250 e!196248)))

(declare-fun b!315243 () Bool)

(declare-fun e!196249 () SeekEntryResult!2763)

(assert (=> b!315243 (= e!196249 (Intermediate!2763 false index!1781 x!1427))))

(declare-fun b!315244 () Bool)

(declare-fun e!196252 () Bool)

(assert (=> b!315244 (= e!196252 e!196250)))

(declare-fun res!170807 () Bool)

(assert (=> b!315244 (= res!170807 (and (is-Intermediate!2763 lt!154219) (not (undefined!3575 lt!154219)) (bvslt (x!31435 lt!154219) #b01111111111111111111111111111110) (bvsge (x!31435 lt!154219) #b00000000000000000000000000000000) (bvsge (x!31435 lt!154219) x!1427)))))

(assert (=> b!315244 (=> (not res!170807) (not e!196250))))

(declare-fun b!315245 () Bool)

(assert (=> b!315245 (and (bvsge (index!13230 lt!154219) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154219) (size!7964 a!3293)))))

(assert (=> b!315245 (= e!196248 (= (select (arr!7612 a!3293) (index!13230 lt!154219)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68769 () Bool)

(assert (=> d!68769 e!196252))

(declare-fun c!49833 () Bool)

(assert (=> d!68769 (= c!49833 (and (is-Intermediate!2763 lt!154219) (undefined!3575 lt!154219)))))

(declare-fun e!196251 () SeekEntryResult!2763)

(assert (=> d!68769 (= lt!154219 e!196251)))

(declare-fun c!49835 () Bool)

(assert (=> d!68769 (= c!49835 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154220 () (_ BitVec 64))

(assert (=> d!68769 (= lt!154220 (select (arr!7612 a!3293) index!1781))))

(assert (=> d!68769 (validMask!0 mask!3709)))

(assert (=> d!68769 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154219)))

(declare-fun b!315246 () Bool)

(assert (=> b!315246 (= e!196252 (bvsge (x!31435 lt!154219) #b01111111111111111111111111111110))))

(declare-fun b!315247 () Bool)

(assert (=> b!315247 (= e!196249 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315248 () Bool)

(assert (=> b!315248 (= e!196251 (Intermediate!2763 true index!1781 x!1427))))

(declare-fun b!315249 () Bool)

(assert (=> b!315249 (= e!196251 e!196249)))

(declare-fun c!49834 () Bool)

(assert (=> b!315249 (= c!49834 (or (= lt!154220 k!2441) (= (bvadd lt!154220 lt!154220) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68769 c!49835) b!315248))

(assert (= (and d!68769 (not c!49835)) b!315249))

(assert (= (and b!315249 c!49834) b!315243))

(assert (= (and b!315249 (not c!49834)) b!315247))

(assert (= (and d!68769 c!49833) b!315246))

(assert (= (and d!68769 (not c!49833)) b!315244))

(assert (= (and b!315244 res!170807) b!315242))

(assert (= (and b!315242 (not res!170808)) b!315241))

(assert (= (and b!315241 (not res!170809)) b!315245))

(declare-fun m!324567 () Bool)

(assert (=> b!315245 m!324567))

(assert (=> b!315241 m!324567))

(assert (=> b!315247 m!324463))

(assert (=> b!315247 m!324463))

(declare-fun m!324569 () Bool)

(assert (=> b!315247 m!324569))

(assert (=> d!68769 m!324479))

(assert (=> d!68769 m!324467))

(assert (=> b!315242 m!324567))

(assert (=> b!315111 d!68769))

(declare-fun d!68777 () Bool)

(declare-fun res!170814 () Bool)

(declare-fun e!196257 () Bool)

(assert (=> d!68777 (=> res!170814 e!196257)))

(assert (=> d!68777 (= res!170814 (= (select (arr!7612 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68777 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!196257)))

(declare-fun b!315254 () Bool)

(declare-fun e!196258 () Bool)

(assert (=> b!315254 (= e!196257 e!196258)))

(declare-fun res!170815 () Bool)

(assert (=> b!315254 (=> (not res!170815) (not e!196258))))

(assert (=> b!315254 (= res!170815 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7964 a!3293)))))

(declare-fun b!315255 () Bool)

(assert (=> b!315255 (= e!196258 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68777 (not res!170814)) b!315254))

(assert (= (and b!315254 res!170815) b!315255))

(declare-fun m!324571 () Bool)

(assert (=> d!68777 m!324571))

(declare-fun m!324573 () Bool)

(assert (=> b!315255 m!324573))

(assert (=> b!315113 d!68777))

(declare-fun b!315256 () Bool)

(declare-fun lt!154227 () SeekEntryResult!2763)

(assert (=> b!315256 (and (bvsge (index!13230 lt!154227) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154227) (size!7964 a!3293)))))

(declare-fun res!170818 () Bool)

(assert (=> b!315256 (= res!170818 (= (select (arr!7612 a!3293) (index!13230 lt!154227)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196259 () Bool)

(assert (=> b!315256 (=> res!170818 e!196259)))

(declare-fun b!315257 () Bool)

(assert (=> b!315257 (and (bvsge (index!13230 lt!154227) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154227) (size!7964 a!3293)))))

(declare-fun res!170817 () Bool)

(assert (=> b!315257 (= res!170817 (= (select (arr!7612 a!3293) (index!13230 lt!154227)) k!2441))))

(assert (=> b!315257 (=> res!170817 e!196259)))

(declare-fun e!196261 () Bool)

(assert (=> b!315257 (= e!196261 e!196259)))

(declare-fun b!315258 () Bool)

(declare-fun e!196260 () SeekEntryResult!2763)

(assert (=> b!315258 (= e!196260 (Intermediate!2763 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315259 () Bool)

(declare-fun e!196263 () Bool)

(assert (=> b!315259 (= e!196263 e!196261)))

(declare-fun res!170816 () Bool)

(assert (=> b!315259 (= res!170816 (and (is-Intermediate!2763 lt!154227) (not (undefined!3575 lt!154227)) (bvslt (x!31435 lt!154227) #b01111111111111111111111111111110) (bvsge (x!31435 lt!154227) #b00000000000000000000000000000000) (bvsge (x!31435 lt!154227) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!315259 (=> (not res!170816) (not e!196261))))

(declare-fun b!315260 () Bool)

(assert (=> b!315260 (and (bvsge (index!13230 lt!154227) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154227) (size!7964 a!3293)))))

(assert (=> b!315260 (= e!196259 (= (select (arr!7612 a!3293) (index!13230 lt!154227)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68779 () Bool)

(assert (=> d!68779 e!196263))

(declare-fun c!49836 () Bool)

(assert (=> d!68779 (= c!49836 (and (is-Intermediate!2763 lt!154227) (undefined!3575 lt!154227)))))

(declare-fun e!196262 () SeekEntryResult!2763)

(assert (=> d!68779 (= lt!154227 e!196262)))

(declare-fun c!49838 () Bool)

(assert (=> d!68779 (= c!49838 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154228 () (_ BitVec 64))

(assert (=> d!68779 (= lt!154228 (select (arr!7612 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68779 (validMask!0 mask!3709)))

(assert (=> d!68779 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154227)))

(declare-fun b!315261 () Bool)

(assert (=> b!315261 (= e!196263 (bvsge (x!31435 lt!154227) #b01111111111111111111111111111110))))

(declare-fun b!315262 () Bool)

(assert (=> b!315262 (= e!196260 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315263 () Bool)

(assert (=> b!315263 (= e!196262 (Intermediate!2763 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315264 () Bool)

(assert (=> b!315264 (= e!196262 e!196260)))

(declare-fun c!49837 () Bool)

(assert (=> b!315264 (= c!49837 (or (= lt!154228 k!2441) (= (bvadd lt!154228 lt!154228) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68779 c!49838) b!315263))

(assert (= (and d!68779 (not c!49838)) b!315264))

(assert (= (and b!315264 c!49837) b!315258))

(assert (= (and b!315264 (not c!49837)) b!315262))

(assert (= (and d!68779 c!49836) b!315261))

(assert (= (and d!68779 (not c!49836)) b!315259))

(assert (= (and b!315259 res!170816) b!315257))

(assert (= (and b!315257 (not res!170817)) b!315256))

(assert (= (and b!315256 (not res!170818)) b!315260))

(declare-fun m!324575 () Bool)

(assert (=> b!315260 m!324575))

(assert (=> b!315256 m!324575))

(assert (=> b!315262 m!324463))

(declare-fun m!324577 () Bool)

(assert (=> b!315262 m!324577))

(assert (=> b!315262 m!324577))

(declare-fun m!324579 () Bool)

(assert (=> b!315262 m!324579))

(assert (=> d!68779 m!324463))

(declare-fun m!324581 () Bool)

(assert (=> d!68779 m!324581))

(assert (=> d!68779 m!324467))

(assert (=> b!315257 m!324575))

(assert (=> b!315109 d!68779))

(declare-fun d!68783 () Bool)

(declare-fun lt!154233 () (_ BitVec 32))

(assert (=> d!68783 (and (bvsge lt!154233 #b00000000000000000000000000000000) (bvslt lt!154233 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68783 (= lt!154233 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68783 (validMask!0 mask!3709)))

(assert (=> d!68783 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154233)))

(declare-fun bs!11023 () Bool)

(assert (= bs!11023 d!68783))

(declare-fun m!324585 () Bool)

(assert (=> bs!11023 m!324585))

(assert (=> bs!11023 m!324467))

(assert (=> b!315109 d!68783))

(declare-fun b!315324 () Bool)

(declare-fun e!196303 () Bool)

(declare-fun e!196301 () Bool)

(assert (=> b!315324 (= e!196303 e!196301)))

(declare-fun lt!154251 () (_ BitVec 64))

(assert (=> b!315324 (= lt!154251 (select (arr!7612 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9698 0))(
  ( (Unit!9699) )
))
(declare-fun lt!154252 () Unit!9698)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16085 (_ BitVec 64) (_ BitVec 32)) Unit!9698)

(assert (=> b!315324 (= lt!154252 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154251 #b00000000000000000000000000000000))))

(assert (=> b!315324 (arrayContainsKey!0 a!3293 lt!154251 #b00000000000000000000000000000000)))

(declare-fun lt!154253 () Unit!9698)

(assert (=> b!315324 (= lt!154253 lt!154252)))

(declare-fun res!170845 () Bool)

(assert (=> b!315324 (= res!170845 (= (seekEntryOrOpen!0 (select (arr!7612 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2763 #b00000000000000000000000000000000)))))

(assert (=> b!315324 (=> (not res!170845) (not e!196301))))

(declare-fun d!68787 () Bool)

(declare-fun res!170846 () Bool)

(declare-fun e!196302 () Bool)

(assert (=> d!68787 (=> res!170846 e!196302)))

(assert (=> d!68787 (= res!170846 (bvsge #b00000000000000000000000000000000 (size!7964 a!3293)))))

(assert (=> d!68787 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196302)))

(declare-fun bm!25991 () Bool)

(declare-fun call!25994 () Bool)

(assert (=> bm!25991 (= call!25994 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!315325 () Bool)

(assert (=> b!315325 (= e!196301 call!25994)))

(declare-fun b!315326 () Bool)

(assert (=> b!315326 (= e!196302 e!196303)))

(declare-fun c!49856 () Bool)

(assert (=> b!315326 (= c!49856 (validKeyInArray!0 (select (arr!7612 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!315327 () Bool)

(assert (=> b!315327 (= e!196303 call!25994)))

(assert (= (and d!68787 (not res!170846)) b!315326))

(assert (= (and b!315326 c!49856) b!315324))

(assert (= (and b!315326 (not c!49856)) b!315327))

(assert (= (and b!315324 res!170845) b!315325))

(assert (= (or b!315325 b!315327) bm!25991))

(assert (=> b!315324 m!324571))

(declare-fun m!324609 () Bool)

(assert (=> b!315324 m!324609))

(declare-fun m!324611 () Bool)

(assert (=> b!315324 m!324611))

(assert (=> b!315324 m!324571))

(declare-fun m!324613 () Bool)

(assert (=> b!315324 m!324613))

(declare-fun m!324615 () Bool)

(assert (=> bm!25991 m!324615))

(assert (=> b!315326 m!324571))

(assert (=> b!315326 m!324571))

(declare-fun m!324617 () Bool)

(assert (=> b!315326 m!324617))

(assert (=> b!315114 d!68787))

(declare-fun d!68799 () Bool)

(assert (=> d!68799 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31512 d!68799))

(declare-fun d!68807 () Bool)

(assert (=> d!68807 (= (array_inv!5566 a!3293) (bvsge (size!7964 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31512 d!68807))

(declare-fun b!315382 () Bool)

(declare-fun e!196336 () SeekEntryResult!2763)

(declare-fun lt!154283 () SeekEntryResult!2763)

(assert (=> b!315382 (= e!196336 (Found!2763 (index!13230 lt!154283)))))

(declare-fun e!196335 () SeekEntryResult!2763)

(declare-fun b!315383 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16085 (_ BitVec 32)) SeekEntryResult!2763)

(assert (=> b!315383 (= e!196335 (seekKeyOrZeroReturnVacant!0 (x!31435 lt!154283) (index!13230 lt!154283) (index!13230 lt!154283) k!2441 a!3293 mask!3709))))

(declare-fun d!68809 () Bool)

(declare-fun lt!154282 () SeekEntryResult!2763)

(assert (=> d!68809 (and (or (is-Undefined!2763 lt!154282) (not (is-Found!2763 lt!154282)) (and (bvsge (index!13229 lt!154282) #b00000000000000000000000000000000) (bvslt (index!13229 lt!154282) (size!7964 a!3293)))) (or (is-Undefined!2763 lt!154282) (is-Found!2763 lt!154282) (not (is-MissingZero!2763 lt!154282)) (and (bvsge (index!13228 lt!154282) #b00000000000000000000000000000000) (bvslt (index!13228 lt!154282) (size!7964 a!3293)))) (or (is-Undefined!2763 lt!154282) (is-Found!2763 lt!154282) (is-MissingZero!2763 lt!154282) (not (is-MissingVacant!2763 lt!154282)) (and (bvsge (index!13231 lt!154282) #b00000000000000000000000000000000) (bvslt (index!13231 lt!154282) (size!7964 a!3293)))) (or (is-Undefined!2763 lt!154282) (ite (is-Found!2763 lt!154282) (= (select (arr!7612 a!3293) (index!13229 lt!154282)) k!2441) (ite (is-MissingZero!2763 lt!154282) (= (select (arr!7612 a!3293) (index!13228 lt!154282)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2763 lt!154282) (= (select (arr!7612 a!3293) (index!13231 lt!154282)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!196337 () SeekEntryResult!2763)

(assert (=> d!68809 (= lt!154282 e!196337)))

(declare-fun c!49879 () Bool)

(assert (=> d!68809 (= c!49879 (and (is-Intermediate!2763 lt!154283) (undefined!3575 lt!154283)))))

(assert (=> d!68809 (= lt!154283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68809 (validMask!0 mask!3709)))

(assert (=> d!68809 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154282)))

(declare-fun b!315384 () Bool)

(assert (=> b!315384 (= e!196337 e!196336)))

(declare-fun lt!154284 () (_ BitVec 64))

(assert (=> b!315384 (= lt!154284 (select (arr!7612 a!3293) (index!13230 lt!154283)))))

(declare-fun c!49878 () Bool)

(assert (=> b!315384 (= c!49878 (= lt!154284 k!2441))))

(declare-fun b!315385 () Bool)

(assert (=> b!315385 (= e!196335 (MissingZero!2763 (index!13230 lt!154283)))))

(declare-fun b!315386 () Bool)

(assert (=> b!315386 (= e!196337 Undefined!2763)))

(declare-fun b!315387 () Bool)

(declare-fun c!49880 () Bool)

(assert (=> b!315387 (= c!49880 (= lt!154284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315387 (= e!196336 e!196335)))

(assert (= (and d!68809 c!49879) b!315386))

(assert (= (and d!68809 (not c!49879)) b!315384))

(assert (= (and b!315384 c!49878) b!315382))

(assert (= (and b!315384 (not c!49878)) b!315387))

(assert (= (and b!315387 c!49880) b!315385))

(assert (= (and b!315387 (not c!49880)) b!315383))

(declare-fun m!324645 () Bool)

(assert (=> b!315383 m!324645))

(declare-fun m!324647 () Bool)

(assert (=> d!68809 m!324647))

(declare-fun m!324649 () Bool)

(assert (=> d!68809 m!324649))

(assert (=> d!68809 m!324475))

(assert (=> d!68809 m!324467))

(declare-fun m!324651 () Bool)

(assert (=> d!68809 m!324651))

(assert (=> d!68809 m!324475))

(assert (=> d!68809 m!324477))

(declare-fun m!324653 () Bool)

(assert (=> b!315384 m!324653))

(assert (=> b!315116 d!68809))

(declare-fun b!315388 () Bool)

(declare-fun lt!154285 () SeekEntryResult!2763)

(assert (=> b!315388 (and (bvsge (index!13230 lt!154285) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154285) (size!7964 a!3293)))))

(declare-fun res!170861 () Bool)

(assert (=> b!315388 (= res!170861 (= (select (arr!7612 a!3293) (index!13230 lt!154285)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196338 () Bool)

(assert (=> b!315388 (=> res!170861 e!196338)))

(declare-fun b!315389 () Bool)

(assert (=> b!315389 (and (bvsge (index!13230 lt!154285) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154285) (size!7964 a!3293)))))

(declare-fun res!170860 () Bool)

(assert (=> b!315389 (= res!170860 (= (select (arr!7612 a!3293) (index!13230 lt!154285)) k!2441))))

(assert (=> b!315389 (=> res!170860 e!196338)))

(declare-fun e!196340 () Bool)

(assert (=> b!315389 (= e!196340 e!196338)))

(declare-fun b!315390 () Bool)

(declare-fun e!196339 () SeekEntryResult!2763)

(assert (=> b!315390 (= e!196339 (Intermediate!2763 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315391 () Bool)

(declare-fun e!196342 () Bool)

(assert (=> b!315391 (= e!196342 e!196340)))

(declare-fun res!170859 () Bool)

(assert (=> b!315391 (= res!170859 (and (is-Intermediate!2763 lt!154285) (not (undefined!3575 lt!154285)) (bvslt (x!31435 lt!154285) #b01111111111111111111111111111110) (bvsge (x!31435 lt!154285) #b00000000000000000000000000000000) (bvsge (x!31435 lt!154285) #b00000000000000000000000000000000)))))

(assert (=> b!315391 (=> (not res!170859) (not e!196340))))

(declare-fun b!315392 () Bool)

(assert (=> b!315392 (and (bvsge (index!13230 lt!154285) #b00000000000000000000000000000000) (bvslt (index!13230 lt!154285) (size!7964 a!3293)))))

(assert (=> b!315392 (= e!196338 (= (select (arr!7612 a!3293) (index!13230 lt!154285)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68825 () Bool)

(assert (=> d!68825 e!196342))

(declare-fun c!49881 () Bool)

(assert (=> d!68825 (= c!49881 (and (is-Intermediate!2763 lt!154285) (undefined!3575 lt!154285)))))

(declare-fun e!196341 () SeekEntryResult!2763)

(assert (=> d!68825 (= lt!154285 e!196341)))

(declare-fun c!49883 () Bool)

(assert (=> d!68825 (= c!49883 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154286 () (_ BitVec 64))

(assert (=> d!68825 (= lt!154286 (select (arr!7612 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68825 (validMask!0 mask!3709)))

(assert (=> d!68825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154285)))

(declare-fun b!315393 () Bool)

(assert (=> b!315393 (= e!196342 (bvsge (x!31435 lt!154285) #b01111111111111111111111111111110))))

(declare-fun b!315394 () Bool)

(assert (=> b!315394 (= e!196339 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!315395 () Bool)

(assert (=> b!315395 (= e!196341 (Intermediate!2763 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315396 () Bool)

(assert (=> b!315396 (= e!196341 e!196339)))

(declare-fun c!49882 () Bool)

(assert (=> b!315396 (= c!49882 (or (= lt!154286 k!2441) (= (bvadd lt!154286 lt!154286) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68825 c!49883) b!315395))

(assert (= (and d!68825 (not c!49883)) b!315396))

(assert (= (and b!315396 c!49882) b!315390))

(assert (= (and b!315396 (not c!49882)) b!315394))

(assert (= (and d!68825 c!49881) b!315393))

(assert (= (and d!68825 (not c!49881)) b!315391))

(assert (= (and b!315391 res!170859) b!315389))

(assert (= (and b!315389 (not res!170860)) b!315388))

(assert (= (and b!315388 (not res!170861)) b!315392))

(declare-fun m!324655 () Bool)

(assert (=> b!315392 m!324655))

(assert (=> b!315388 m!324655))

(assert (=> b!315394 m!324475))

(declare-fun m!324657 () Bool)

(assert (=> b!315394 m!324657))

(assert (=> b!315394 m!324657))

(declare-fun m!324659 () Bool)

(assert (=> b!315394 m!324659))

(assert (=> d!68825 m!324475))

(declare-fun m!324661 () Bool)

(assert (=> d!68825 m!324661))

(assert (=> d!68825 m!324467))

(assert (=> b!315389 m!324655))

(assert (=> b!315115 d!68825))

(declare-fun d!68827 () Bool)

(declare-fun lt!154301 () (_ BitVec 32))

(declare-fun lt!154300 () (_ BitVec 32))

(assert (=> d!68827 (= lt!154301 (bvmul (bvxor lt!154300 (bvlshr lt!154300 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68827 (= lt!154300 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68827 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170862 (let ((h!5389 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31446 (bvmul (bvxor h!5389 (bvlshr h!5389 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31446 (bvlshr x!31446 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170862 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170862 #b00000000000000000000000000000000))))))

(assert (=> d!68827 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154301 (bvlshr lt!154301 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!315115 d!68827))

(push 1)

