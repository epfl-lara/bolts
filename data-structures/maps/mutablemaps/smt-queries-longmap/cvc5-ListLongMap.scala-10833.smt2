; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126886 () Bool)

(assert start!126886)

(declare-fun b!1489378 () Bool)

(declare-fun res!1012938 () Bool)

(declare-fun e!834759 () Bool)

(assert (=> b!1489378 (=> (not res!1012938) (not e!834759))))

(declare-datatypes ((array!99576 0))(
  ( (array!99577 (arr!48055 (Array (_ BitVec 32) (_ BitVec 64))) (size!48606 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99576)

(declare-datatypes ((List!34736 0))(
  ( (Nil!34733) (Cons!34732 (h!36115 (_ BitVec 64)) (t!49437 List!34736)) )
))
(declare-fun arrayNoDuplicates!0 (array!99576 (_ BitVec 32) List!34736) Bool)

(assert (=> b!1489378 (= res!1012938 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34733))))

(declare-fun b!1489379 () Bool)

(declare-fun res!1012931 () Bool)

(assert (=> b!1489379 (=> (not res!1012931) (not e!834759))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99576 (_ BitVec 32)) Bool)

(assert (=> b!1489379 (= res!1012931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489380 () Bool)

(declare-fun e!834764 () Bool)

(assert (=> b!1489380 (= e!834759 e!834764)))

(declare-fun res!1012942 () Bool)

(assert (=> b!1489380 (=> (not res!1012942) (not e!834764))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489380 (= res!1012942 (= (select (store (arr!48055 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!649501 () array!99576)

(assert (=> b!1489380 (= lt!649501 (array!99577 (store (arr!48055 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48606 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649504 () (_ BitVec 32))

(declare-fun lt!649503 () (_ BitVec 64))

(declare-fun b!1489381 () Bool)

(declare-datatypes ((SeekEntryResult!12318 0))(
  ( (MissingZero!12318 (index!51663 (_ BitVec 32))) (Found!12318 (index!51664 (_ BitVec 32))) (Intermediate!12318 (undefined!13130 Bool) (index!51665 (_ BitVec 32)) (x!133265 (_ BitVec 32))) (Undefined!12318) (MissingVacant!12318 (index!51666 (_ BitVec 32))) )
))
(declare-fun lt!649505 () SeekEntryResult!12318)

(declare-fun e!834760 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99576 (_ BitVec 32)) SeekEntryResult!12318)

(assert (=> b!1489381 (= e!834760 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649504 intermediateAfterIndex!19 lt!649503 lt!649501 mask!2687) lt!649505)))))

(declare-fun e!834762 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!649500 () SeekEntryResult!12318)

(declare-fun b!1489382 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99576 (_ BitVec 32)) SeekEntryResult!12318)

(assert (=> b!1489382 (= e!834762 (= lt!649500 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649503 lt!649501 mask!2687)))))

(declare-fun b!1489383 () Bool)

(declare-fun e!834758 () Bool)

(declare-fun e!834761 () Bool)

(assert (=> b!1489383 (= e!834758 e!834761)))

(declare-fun res!1012933 () Bool)

(assert (=> b!1489383 (=> res!1012933 e!834761)))

(assert (=> b!1489383 (= res!1012933 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649504 #b00000000000000000000000000000000) (bvsge lt!649504 (size!48606 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489383 (= lt!649504 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489383 (= lt!649505 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649503 lt!649501 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99576 (_ BitVec 32)) SeekEntryResult!12318)

(assert (=> b!1489383 (= lt!649505 (seekEntryOrOpen!0 lt!649503 lt!649501 mask!2687))))

(declare-fun res!1012936 () Bool)

(assert (=> start!126886 (=> (not res!1012936) (not e!834759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126886 (= res!1012936 (validMask!0 mask!2687))))

(assert (=> start!126886 e!834759))

(assert (=> start!126886 true))

(declare-fun array_inv!37000 (array!99576) Bool)

(assert (=> start!126886 (array_inv!37000 a!2862)))

(declare-fun b!1489384 () Bool)

(assert (=> b!1489384 (= e!834762 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649503 lt!649501 mask!2687) (seekEntryOrOpen!0 lt!649503 lt!649501 mask!2687)))))

(declare-fun b!1489385 () Bool)

(declare-fun res!1012927 () Bool)

(assert (=> b!1489385 (=> res!1012927 e!834761)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!649499 () SeekEntryResult!12318)

(assert (=> b!1489385 (= res!1012927 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649504 (select (arr!48055 a!2862) j!93) a!2862 mask!2687) lt!649499)))))

(declare-fun b!1489386 () Bool)

(declare-fun res!1012940 () Bool)

(assert (=> b!1489386 (=> (not res!1012940) (not e!834759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489386 (= res!1012940 (validKeyInArray!0 (select (arr!48055 a!2862) j!93)))))

(declare-fun b!1489387 () Bool)

(declare-fun res!1012930 () Bool)

(declare-fun e!834756 () Bool)

(assert (=> b!1489387 (=> (not res!1012930) (not e!834756))))

(assert (=> b!1489387 (= res!1012930 e!834762)))

(declare-fun c!137756 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489387 (= c!137756 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489388 () Bool)

(declare-fun res!1012944 () Bool)

(assert (=> b!1489388 (=> res!1012944 e!834761)))

(assert (=> b!1489388 (= res!1012944 e!834760)))

(declare-fun c!137755 () Bool)

(assert (=> b!1489388 (= c!137755 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489389 () Bool)

(declare-fun e!834757 () Bool)

(assert (=> b!1489389 (= e!834757 e!834756)))

(declare-fun res!1012934 () Bool)

(assert (=> b!1489389 (=> (not res!1012934) (not e!834756))))

(assert (=> b!1489389 (= res!1012934 (= lt!649500 (Intermediate!12318 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489389 (= lt!649500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649503 mask!2687) lt!649503 lt!649501 mask!2687))))

(assert (=> b!1489389 (= lt!649503 (select (store (arr!48055 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489390 () Bool)

(declare-fun res!1012941 () Bool)

(assert (=> b!1489390 (=> (not res!1012941) (not e!834759))))

(assert (=> b!1489390 (= res!1012941 (and (= (size!48606 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48606 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48606 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489391 () Bool)

(assert (=> b!1489391 (= e!834761 true)))

(declare-fun lt!649506 () SeekEntryResult!12318)

(assert (=> b!1489391 (= lt!649506 lt!649505)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49924 0))(
  ( (Unit!49925) )
))
(declare-fun lt!649507 () Unit!49924)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49924)

(assert (=> b!1489391 (= lt!649507 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649504 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489392 () Bool)

(assert (=> b!1489392 (= e!834760 (not (= lt!649500 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649504 lt!649503 lt!649501 mask!2687))))))

(declare-fun b!1489393 () Bool)

(assert (=> b!1489393 (= e!834756 (not e!834758))))

(declare-fun res!1012935 () Bool)

(assert (=> b!1489393 (=> res!1012935 e!834758)))

(assert (=> b!1489393 (= res!1012935 (or (and (= (select (arr!48055 a!2862) index!646) (select (store (arr!48055 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48055 a!2862) index!646) (select (arr!48055 a!2862) j!93))) (= (select (arr!48055 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489393 (and (= lt!649506 (Found!12318 j!93)) (or (= (select (arr!48055 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48055 a!2862) intermediateBeforeIndex!19) (select (arr!48055 a!2862) j!93))) (let ((bdg!54722 (select (store (arr!48055 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48055 a!2862) index!646) bdg!54722) (= (select (arr!48055 a!2862) index!646) (select (arr!48055 a!2862) j!93))) (= (select (arr!48055 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54722 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489393 (= lt!649506 (seekEntryOrOpen!0 (select (arr!48055 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489393 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649502 () Unit!49924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49924)

(assert (=> b!1489393 (= lt!649502 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489394 () Bool)

(declare-fun res!1012932 () Bool)

(assert (=> b!1489394 (=> (not res!1012932) (not e!834756))))

(assert (=> b!1489394 (= res!1012932 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489395 () Bool)

(declare-fun res!1012937 () Bool)

(assert (=> b!1489395 (=> (not res!1012937) (not e!834759))))

(assert (=> b!1489395 (= res!1012937 (validKeyInArray!0 (select (arr!48055 a!2862) i!1006)))))

(declare-fun b!1489396 () Bool)

(declare-fun res!1012943 () Bool)

(assert (=> b!1489396 (=> (not res!1012943) (not e!834757))))

(assert (=> b!1489396 (= res!1012943 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48055 a!2862) j!93) a!2862 mask!2687) lt!649499))))

(declare-fun b!1489397 () Bool)

(assert (=> b!1489397 (= e!834764 e!834757)))

(declare-fun res!1012929 () Bool)

(assert (=> b!1489397 (=> (not res!1012929) (not e!834757))))

(assert (=> b!1489397 (= res!1012929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48055 a!2862) j!93) mask!2687) (select (arr!48055 a!2862) j!93) a!2862 mask!2687) lt!649499))))

(assert (=> b!1489397 (= lt!649499 (Intermediate!12318 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489398 () Bool)

(declare-fun res!1012928 () Bool)

(assert (=> b!1489398 (=> res!1012928 e!834761)))

(assert (=> b!1489398 (= res!1012928 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489399 () Bool)

(declare-fun res!1012939 () Bool)

(assert (=> b!1489399 (=> (not res!1012939) (not e!834759))))

(assert (=> b!1489399 (= res!1012939 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48606 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48606 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48606 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126886 res!1012936) b!1489390))

(assert (= (and b!1489390 res!1012941) b!1489395))

(assert (= (and b!1489395 res!1012937) b!1489386))

(assert (= (and b!1489386 res!1012940) b!1489379))

(assert (= (and b!1489379 res!1012931) b!1489378))

(assert (= (and b!1489378 res!1012938) b!1489399))

(assert (= (and b!1489399 res!1012939) b!1489380))

(assert (= (and b!1489380 res!1012942) b!1489397))

(assert (= (and b!1489397 res!1012929) b!1489396))

(assert (= (and b!1489396 res!1012943) b!1489389))

(assert (= (and b!1489389 res!1012934) b!1489387))

(assert (= (and b!1489387 c!137756) b!1489382))

(assert (= (and b!1489387 (not c!137756)) b!1489384))

(assert (= (and b!1489387 res!1012930) b!1489394))

(assert (= (and b!1489394 res!1012932) b!1489393))

(assert (= (and b!1489393 (not res!1012935)) b!1489383))

(assert (= (and b!1489383 (not res!1012933)) b!1489385))

(assert (= (and b!1489385 (not res!1012927)) b!1489388))

(assert (= (and b!1489388 c!137755) b!1489392))

(assert (= (and b!1489388 (not c!137755)) b!1489381))

(assert (= (and b!1489388 (not res!1012944)) b!1489398))

(assert (= (and b!1489398 (not res!1012928)) b!1489391))

(declare-fun m!1373667 () Bool)

(assert (=> b!1489382 m!1373667))

(declare-fun m!1373669 () Bool)

(assert (=> b!1489397 m!1373669))

(assert (=> b!1489397 m!1373669))

(declare-fun m!1373671 () Bool)

(assert (=> b!1489397 m!1373671))

(assert (=> b!1489397 m!1373671))

(assert (=> b!1489397 m!1373669))

(declare-fun m!1373673 () Bool)

(assert (=> b!1489397 m!1373673))

(declare-fun m!1373675 () Bool)

(assert (=> b!1489392 m!1373675))

(declare-fun m!1373677 () Bool)

(assert (=> b!1489378 m!1373677))

(declare-fun m!1373679 () Bool)

(assert (=> b!1489384 m!1373679))

(declare-fun m!1373681 () Bool)

(assert (=> b!1489384 m!1373681))

(declare-fun m!1373683 () Bool)

(assert (=> b!1489391 m!1373683))

(assert (=> b!1489386 m!1373669))

(assert (=> b!1489386 m!1373669))

(declare-fun m!1373685 () Bool)

(assert (=> b!1489386 m!1373685))

(declare-fun m!1373687 () Bool)

(assert (=> b!1489395 m!1373687))

(assert (=> b!1489395 m!1373687))

(declare-fun m!1373689 () Bool)

(assert (=> b!1489395 m!1373689))

(declare-fun m!1373691 () Bool)

(assert (=> b!1489381 m!1373691))

(declare-fun m!1373693 () Bool)

(assert (=> b!1489393 m!1373693))

(declare-fun m!1373695 () Bool)

(assert (=> b!1489393 m!1373695))

(declare-fun m!1373697 () Bool)

(assert (=> b!1489393 m!1373697))

(declare-fun m!1373699 () Bool)

(assert (=> b!1489393 m!1373699))

(declare-fun m!1373701 () Bool)

(assert (=> b!1489393 m!1373701))

(assert (=> b!1489393 m!1373669))

(declare-fun m!1373703 () Bool)

(assert (=> b!1489393 m!1373703))

(declare-fun m!1373705 () Bool)

(assert (=> b!1489393 m!1373705))

(assert (=> b!1489393 m!1373669))

(assert (=> b!1489385 m!1373669))

(assert (=> b!1489385 m!1373669))

(declare-fun m!1373707 () Bool)

(assert (=> b!1489385 m!1373707))

(declare-fun m!1373709 () Bool)

(assert (=> b!1489389 m!1373709))

(assert (=> b!1489389 m!1373709))

(declare-fun m!1373711 () Bool)

(assert (=> b!1489389 m!1373711))

(assert (=> b!1489389 m!1373695))

(declare-fun m!1373713 () Bool)

(assert (=> b!1489389 m!1373713))

(assert (=> b!1489396 m!1373669))

(assert (=> b!1489396 m!1373669))

(declare-fun m!1373715 () Bool)

(assert (=> b!1489396 m!1373715))

(declare-fun m!1373717 () Bool)

(assert (=> b!1489383 m!1373717))

(assert (=> b!1489383 m!1373679))

(assert (=> b!1489383 m!1373681))

(assert (=> b!1489380 m!1373695))

(declare-fun m!1373719 () Bool)

(assert (=> b!1489380 m!1373719))

(declare-fun m!1373721 () Bool)

(assert (=> b!1489379 m!1373721))

(declare-fun m!1373723 () Bool)

(assert (=> start!126886 m!1373723))

(declare-fun m!1373725 () Bool)

(assert (=> start!126886 m!1373725))

(push 1)

