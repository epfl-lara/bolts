; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66264 () Bool)

(assert start!66264)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42122 0))(
  ( (array!42123 (arr!20165 (Array (_ BitVec 32) (_ BitVec 64))) (size!20586 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42122)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!425171 () Bool)

(declare-fun b!762925 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7772 0))(
  ( (MissingZero!7772 (index!33455 (_ BitVec 32))) (Found!7772 (index!33456 (_ BitVec 32))) (Intermediate!7772 (undefined!8584 Bool) (index!33457 (_ BitVec 32)) (x!64385 (_ BitVec 32))) (Undefined!7772) (MissingVacant!7772 (index!33458 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42122 (_ BitVec 32)) SeekEntryResult!7772)

(assert (=> b!762925 (= e!425171 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20165 a!3186) j!159) a!3186 mask!3328) (Found!7772 j!159)))))

(declare-fun b!762926 () Bool)

(declare-fun res!516129 () Bool)

(declare-fun e!425172 () Bool)

(assert (=> b!762926 (=> (not res!516129) (not e!425172))))

(declare-datatypes ((List!14220 0))(
  ( (Nil!14217) (Cons!14216 (h!15300 (_ BitVec 64)) (t!20543 List!14220)) )
))
(declare-fun arrayNoDuplicates!0 (array!42122 (_ BitVec 32) List!14220) Bool)

(assert (=> b!762926 (= res!516129 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14217))))

(declare-fun b!762927 () Bool)

(declare-fun res!516128 () Bool)

(declare-fun e!425173 () Bool)

(assert (=> b!762927 (=> (not res!516128) (not e!425173))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762927 (= res!516128 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762928 () Bool)

(declare-fun res!516124 () Bool)

(assert (=> b!762928 (=> (not res!516124) (not e!425173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762928 (= res!516124 (validKeyInArray!0 k!2102))))

(declare-fun b!762929 () Bool)

(declare-fun res!516120 () Bool)

(declare-fun e!425170 () Bool)

(assert (=> b!762929 (=> (not res!516120) (not e!425170))))

(assert (=> b!762929 (= res!516120 e!425171)))

(declare-fun c!83790 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762929 (= c!83790 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!516125 () Bool)

(assert (=> start!66264 (=> (not res!516125) (not e!425173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66264 (= res!516125 (validMask!0 mask!3328))))

(assert (=> start!66264 e!425173))

(assert (=> start!66264 true))

(declare-fun array_inv!15939 (array!42122) Bool)

(assert (=> start!66264 (array_inv!15939 a!3186)))

(declare-fun b!762930 () Bool)

(assert (=> b!762930 (= e!425173 e!425172)))

(declare-fun res!516118 () Bool)

(assert (=> b!762930 (=> (not res!516118) (not e!425172))))

(declare-fun lt!339667 () SeekEntryResult!7772)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762930 (= res!516118 (or (= lt!339667 (MissingZero!7772 i!1173)) (= lt!339667 (MissingVacant!7772 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42122 (_ BitVec 32)) SeekEntryResult!7772)

(assert (=> b!762930 (= lt!339667 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762931 () Bool)

(declare-fun res!516127 () Bool)

(assert (=> b!762931 (=> (not res!516127) (not e!425172))))

(assert (=> b!762931 (= res!516127 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20586 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20586 a!3186))))))

(declare-fun b!762932 () Bool)

(declare-fun res!516119 () Bool)

(assert (=> b!762932 (=> (not res!516119) (not e!425173))))

(assert (=> b!762932 (= res!516119 (and (= (size!20586 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20586 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20586 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762933 () Bool)

(assert (=> b!762933 (= e!425170 false)))

(declare-fun lt!339665 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762933 (= lt!339665 (toIndex!0 (select (store (arr!20165 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!762934 () Bool)

(declare-fun res!516121 () Bool)

(assert (=> b!762934 (=> (not res!516121) (not e!425170))))

(assert (=> b!762934 (= res!516121 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20165 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762935 () Bool)

(declare-fun res!516122 () Bool)

(assert (=> b!762935 (=> (not res!516122) (not e!425173))))

(assert (=> b!762935 (= res!516122 (validKeyInArray!0 (select (arr!20165 a!3186) j!159)))))

(declare-fun b!762936 () Bool)

(declare-fun res!516123 () Bool)

(assert (=> b!762936 (=> (not res!516123) (not e!425172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42122 (_ BitVec 32)) Bool)

(assert (=> b!762936 (= res!516123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!339666 () SeekEntryResult!7772)

(declare-fun b!762937 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42122 (_ BitVec 32)) SeekEntryResult!7772)

(assert (=> b!762937 (= e!425171 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20165 a!3186) j!159) a!3186 mask!3328) lt!339666))))

(declare-fun b!762938 () Bool)

(assert (=> b!762938 (= e!425172 e!425170)))

(declare-fun res!516126 () Bool)

(assert (=> b!762938 (=> (not res!516126) (not e!425170))))

(assert (=> b!762938 (= res!516126 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20165 a!3186) j!159) mask!3328) (select (arr!20165 a!3186) j!159) a!3186 mask!3328) lt!339666))))

(assert (=> b!762938 (= lt!339666 (Intermediate!7772 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66264 res!516125) b!762932))

(assert (= (and b!762932 res!516119) b!762935))

(assert (= (and b!762935 res!516122) b!762928))

(assert (= (and b!762928 res!516124) b!762927))

(assert (= (and b!762927 res!516128) b!762930))

(assert (= (and b!762930 res!516118) b!762936))

(assert (= (and b!762936 res!516123) b!762926))

(assert (= (and b!762926 res!516129) b!762931))

(assert (= (and b!762931 res!516127) b!762938))

(assert (= (and b!762938 res!516126) b!762934))

(assert (= (and b!762934 res!516121) b!762929))

(assert (= (and b!762929 c!83790) b!762937))

(assert (= (and b!762929 (not c!83790)) b!762925))

(assert (= (and b!762929 res!516120) b!762933))

(declare-fun m!709579 () Bool)

(assert (=> b!762925 m!709579))

(assert (=> b!762925 m!709579))

(declare-fun m!709581 () Bool)

(assert (=> b!762925 m!709581))

(declare-fun m!709583 () Bool)

(assert (=> b!762933 m!709583))

(declare-fun m!709585 () Bool)

(assert (=> b!762933 m!709585))

(assert (=> b!762933 m!709585))

(declare-fun m!709587 () Bool)

(assert (=> b!762933 m!709587))

(declare-fun m!709589 () Bool)

(assert (=> b!762927 m!709589))

(assert (=> b!762935 m!709579))

(assert (=> b!762935 m!709579))

(declare-fun m!709591 () Bool)

(assert (=> b!762935 m!709591))

(assert (=> b!762937 m!709579))

(assert (=> b!762937 m!709579))

(declare-fun m!709593 () Bool)

(assert (=> b!762937 m!709593))

(declare-fun m!709595 () Bool)

(assert (=> b!762928 m!709595))

(assert (=> b!762938 m!709579))

(assert (=> b!762938 m!709579))

(declare-fun m!709597 () Bool)

(assert (=> b!762938 m!709597))

(assert (=> b!762938 m!709597))

(assert (=> b!762938 m!709579))

(declare-fun m!709599 () Bool)

(assert (=> b!762938 m!709599))

(declare-fun m!709601 () Bool)

(assert (=> b!762926 m!709601))

(declare-fun m!709603 () Bool)

(assert (=> start!66264 m!709603))

(declare-fun m!709605 () Bool)

(assert (=> start!66264 m!709605))

(declare-fun m!709607 () Bool)

(assert (=> b!762930 m!709607))

(declare-fun m!709609 () Bool)

(assert (=> b!762934 m!709609))

(declare-fun m!709611 () Bool)

(assert (=> b!762936 m!709611))

(push 1)

