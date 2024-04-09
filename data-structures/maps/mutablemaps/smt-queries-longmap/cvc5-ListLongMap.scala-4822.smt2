; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66290 () Bool)

(assert start!66290)

(declare-fun b!763453 () Bool)

(declare-fun res!516579 () Bool)

(declare-fun e!425366 () Bool)

(assert (=> b!763453 (=> (not res!516579) (not e!425366))))

(declare-datatypes ((array!42148 0))(
  ( (array!42149 (arr!20178 (Array (_ BitVec 32) (_ BitVec 64))) (size!20599 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42148)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42148 (_ BitVec 32)) Bool)

(assert (=> b!763453 (= res!516579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763454 () Bool)

(declare-fun res!516575 () Bool)

(declare-fun e!425367 () Bool)

(assert (=> b!763454 (=> (not res!516575) (not e!425367))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763454 (= res!516575 (validKeyInArray!0 k!2102))))

(declare-fun b!763455 () Bool)

(declare-fun res!516573 () Bool)

(assert (=> b!763455 (=> (not res!516573) (not e!425367))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763455 (= res!516573 (and (= (size!20599 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20599 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20599 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763456 () Bool)

(declare-fun res!516569 () Bool)

(assert (=> b!763456 (=> (not res!516569) (not e!425367))))

(assert (=> b!763456 (= res!516569 (validKeyInArray!0 (select (arr!20178 a!3186) j!159)))))

(declare-fun b!763457 () Bool)

(declare-fun res!516576 () Bool)

(assert (=> b!763457 (=> (not res!516576) (not e!425367))))

(declare-fun arrayContainsKey!0 (array!42148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763457 (= res!516576 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763458 () Bool)

(declare-fun res!516570 () Bool)

(assert (=> b!763458 (=> (not res!516570) (not e!425366))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763458 (= res!516570 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20599 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20599 a!3186))))))

(declare-fun b!763459 () Bool)

(declare-fun res!516571 () Bool)

(assert (=> b!763459 (=> (not res!516571) (not e!425366))))

(declare-datatypes ((List!14233 0))(
  ( (Nil!14230) (Cons!14229 (h!15313 (_ BitVec 64)) (t!20556 List!14233)) )
))
(declare-fun arrayNoDuplicates!0 (array!42148 (_ BitVec 32) List!14233) Bool)

(assert (=> b!763459 (= res!516571 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14230))))

(declare-fun e!425368 () Bool)

(declare-fun b!763460 () Bool)

(declare-datatypes ((SeekEntryResult!7785 0))(
  ( (MissingZero!7785 (index!33507 (_ BitVec 32))) (Found!7785 (index!33508 (_ BitVec 32))) (Intermediate!7785 (undefined!8597 Bool) (index!33509 (_ BitVec 32)) (x!64438 (_ BitVec 32))) (Undefined!7785) (MissingVacant!7785 (index!33510 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42148 (_ BitVec 32)) SeekEntryResult!7785)

(assert (=> b!763460 (= e!425368 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20178 a!3186) j!159) a!3186 mask!3328) (Found!7785 j!159)))))

(declare-fun b!763462 () Bool)

(assert (=> b!763462 (= e!425367 e!425366)))

(declare-fun res!516574 () Bool)

(assert (=> b!763462 (=> (not res!516574) (not e!425366))))

(declare-fun lt!339818 () SeekEntryResult!7785)

(assert (=> b!763462 (= res!516574 (or (= lt!339818 (MissingZero!7785 i!1173)) (= lt!339818 (MissingVacant!7785 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42148 (_ BitVec 32)) SeekEntryResult!7785)

(assert (=> b!763462 (= lt!339818 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763463 () Bool)

(declare-fun e!425369 () Bool)

(assert (=> b!763463 (= e!425369 false)))

(declare-fun lt!339819 () SeekEntryResult!7785)

(declare-fun lt!339817 () (_ BitVec 64))

(declare-fun lt!339815 () array!42148)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42148 (_ BitVec 32)) SeekEntryResult!7785)

(assert (=> b!763463 (= lt!339819 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339817 lt!339815 mask!3328))))

(declare-fun lt!339820 () SeekEntryResult!7785)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763463 (= lt!339820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339817 mask!3328) lt!339817 lt!339815 mask!3328))))

(assert (=> b!763463 (= lt!339817 (select (store (arr!20178 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763463 (= lt!339815 (array!42149 (store (arr!20178 a!3186) i!1173 k!2102) (size!20599 a!3186)))))

(declare-fun b!763464 () Bool)

(declare-fun lt!339816 () SeekEntryResult!7785)

(assert (=> b!763464 (= e!425368 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20178 a!3186) j!159) a!3186 mask!3328) lt!339816))))

(declare-fun b!763465 () Bool)

(declare-fun res!516577 () Bool)

(assert (=> b!763465 (=> (not res!516577) (not e!425369))))

(assert (=> b!763465 (= res!516577 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20178 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763466 () Bool)

(declare-fun res!516568 () Bool)

(assert (=> b!763466 (=> (not res!516568) (not e!425369))))

(assert (=> b!763466 (= res!516568 e!425368)))

(declare-fun c!83829 () Bool)

(assert (=> b!763466 (= c!83829 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763461 () Bool)

(assert (=> b!763461 (= e!425366 e!425369)))

(declare-fun res!516578 () Bool)

(assert (=> b!763461 (=> (not res!516578) (not e!425369))))

(assert (=> b!763461 (= res!516578 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20178 a!3186) j!159) mask!3328) (select (arr!20178 a!3186) j!159) a!3186 mask!3328) lt!339816))))

(assert (=> b!763461 (= lt!339816 (Intermediate!7785 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!516572 () Bool)

(assert (=> start!66290 (=> (not res!516572) (not e!425367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66290 (= res!516572 (validMask!0 mask!3328))))

(assert (=> start!66290 e!425367))

(assert (=> start!66290 true))

(declare-fun array_inv!15952 (array!42148) Bool)

(assert (=> start!66290 (array_inv!15952 a!3186)))

(assert (= (and start!66290 res!516572) b!763455))

(assert (= (and b!763455 res!516573) b!763456))

(assert (= (and b!763456 res!516569) b!763454))

(assert (= (and b!763454 res!516575) b!763457))

(assert (= (and b!763457 res!516576) b!763462))

(assert (= (and b!763462 res!516574) b!763453))

(assert (= (and b!763453 res!516579) b!763459))

(assert (= (and b!763459 res!516571) b!763458))

(assert (= (and b!763458 res!516570) b!763461))

(assert (= (and b!763461 res!516578) b!763465))

(assert (= (and b!763465 res!516577) b!763466))

(assert (= (and b!763466 c!83829) b!763464))

(assert (= (and b!763466 (not c!83829)) b!763460))

(assert (= (and b!763466 res!516568) b!763463))

(declare-fun m!709997 () Bool)

(assert (=> b!763462 m!709997))

(declare-fun m!709999 () Bool)

(assert (=> b!763464 m!709999))

(assert (=> b!763464 m!709999))

(declare-fun m!710001 () Bool)

(assert (=> b!763464 m!710001))

(assert (=> b!763461 m!709999))

(assert (=> b!763461 m!709999))

(declare-fun m!710003 () Bool)

(assert (=> b!763461 m!710003))

(assert (=> b!763461 m!710003))

(assert (=> b!763461 m!709999))

(declare-fun m!710005 () Bool)

(assert (=> b!763461 m!710005))

(assert (=> b!763460 m!709999))

(assert (=> b!763460 m!709999))

(declare-fun m!710007 () Bool)

(assert (=> b!763460 m!710007))

(declare-fun m!710009 () Bool)

(assert (=> b!763454 m!710009))

(declare-fun m!710011 () Bool)

(assert (=> b!763459 m!710011))

(declare-fun m!710013 () Bool)

(assert (=> start!66290 m!710013))

(declare-fun m!710015 () Bool)

(assert (=> start!66290 m!710015))

(declare-fun m!710017 () Bool)

(assert (=> b!763463 m!710017))

(declare-fun m!710019 () Bool)

(assert (=> b!763463 m!710019))

(declare-fun m!710021 () Bool)

(assert (=> b!763463 m!710021))

(declare-fun m!710023 () Bool)

(assert (=> b!763463 m!710023))

(declare-fun m!710025 () Bool)

(assert (=> b!763463 m!710025))

(assert (=> b!763463 m!710017))

(assert (=> b!763456 m!709999))

(assert (=> b!763456 m!709999))

(declare-fun m!710027 () Bool)

(assert (=> b!763456 m!710027))

(declare-fun m!710029 () Bool)

(assert (=> b!763465 m!710029))

(declare-fun m!710031 () Bool)

(assert (=> b!763453 m!710031))

(declare-fun m!710033 () Bool)

(assert (=> b!763457 m!710033))

(push 1)

