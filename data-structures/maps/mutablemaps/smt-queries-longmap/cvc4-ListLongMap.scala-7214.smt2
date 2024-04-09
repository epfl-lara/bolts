; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92386 () Bool)

(assert start!92386)

(declare-fun b!1049772 () Bool)

(declare-fun res!699007 () Bool)

(declare-fun e!595688 () Bool)

(assert (=> b!1049772 (=> (not res!699007) (not e!595688))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049772 (= res!699007 (validKeyInArray!0 k!2747))))

(declare-fun b!1049773 () Bool)

(declare-fun res!699018 () Bool)

(assert (=> b!1049773 (=> (not res!699018) (not e!595688))))

(declare-datatypes ((array!66135 0))(
  ( (array!66136 (arr!31803 (Array (_ BitVec 32) (_ BitVec 64))) (size!32340 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66135)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049773 (= res!699018 (= (select (arr!31803 a!3488) i!1381) k!2747))))

(declare-fun e!595685 () Bool)

(declare-fun b!1049774 () Bool)

(declare-fun lt!463651 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049774 (= e!595685 (arrayContainsKey!0 a!3488 k!2747 lt!463651))))

(declare-fun b!1049775 () Bool)

(declare-fun res!699017 () Bool)

(declare-fun e!595683 () Bool)

(assert (=> b!1049775 (=> res!699017 e!595683)))

(declare-datatypes ((List!22246 0))(
  ( (Nil!22243) (Cons!22242 (h!23451 (_ BitVec 64)) (t!31560 List!22246)) )
))
(declare-fun noDuplicate!1523 (List!22246) Bool)

(assert (=> b!1049775 (= res!699017 (not (noDuplicate!1523 Nil!22243)))))

(declare-fun b!1049777 () Bool)

(assert (=> b!1049777 (= e!595683 true)))

(declare-fun lt!463653 () Bool)

(declare-fun contains!6138 (List!22246 (_ BitVec 64)) Bool)

(assert (=> b!1049777 (= lt!463653 (contains!6138 Nil!22243 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049778 () Bool)

(declare-fun e!595686 () Bool)

(assert (=> b!1049778 (= e!595686 e!595685)))

(declare-fun res!699015 () Bool)

(assert (=> b!1049778 (=> res!699015 e!595685)))

(assert (=> b!1049778 (= res!699015 (bvsle lt!463651 i!1381))))

(declare-fun b!1049779 () Bool)

(declare-fun res!699011 () Bool)

(assert (=> b!1049779 (=> res!699011 e!595683)))

(assert (=> b!1049779 (= res!699011 (contains!6138 Nil!22243 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049780 () Bool)

(declare-fun e!595681 () Bool)

(assert (=> b!1049780 (= e!595688 e!595681)))

(declare-fun res!699012 () Bool)

(assert (=> b!1049780 (=> (not res!699012) (not e!595681))))

(declare-fun lt!463652 () array!66135)

(assert (=> b!1049780 (= res!699012 (arrayContainsKey!0 lt!463652 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049780 (= lt!463652 (array!66136 (store (arr!31803 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32340 a!3488)))))

(declare-fun b!1049781 () Bool)

(declare-fun e!595687 () Bool)

(assert (=> b!1049781 (= e!595687 e!595683)))

(declare-fun res!699013 () Bool)

(assert (=> b!1049781 (=> res!699013 e!595683)))

(assert (=> b!1049781 (= res!699013 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32340 a!3488)))))

(assert (=> b!1049781 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34335 0))(
  ( (Unit!34336) )
))
(declare-fun lt!463650 () Unit!34335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66135 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34335)

(assert (=> b!1049781 (= lt!463650 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463651 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66135 (_ BitVec 32) List!22246) Bool)

(assert (=> b!1049781 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22243)))

(declare-fun lt!463654 () Unit!34335)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66135 (_ BitVec 32) (_ BitVec 32)) Unit!34335)

(assert (=> b!1049781 (= lt!463654 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!699010 () Bool)

(assert (=> start!92386 (=> (not res!699010) (not e!595688))))

(assert (=> start!92386 (= res!699010 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32340 a!3488)) (bvslt (size!32340 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92386 e!595688))

(assert (=> start!92386 true))

(declare-fun array_inv!24425 (array!66135) Bool)

(assert (=> start!92386 (array_inv!24425 a!3488)))

(declare-fun b!1049776 () Bool)

(declare-fun e!595684 () Bool)

(assert (=> b!1049776 (= e!595684 (not e!595687))))

(declare-fun res!699008 () Bool)

(assert (=> b!1049776 (=> res!699008 e!595687)))

(assert (=> b!1049776 (= res!699008 (bvsle lt!463651 i!1381))))

(assert (=> b!1049776 e!595686))

(declare-fun res!699014 () Bool)

(assert (=> b!1049776 (=> (not res!699014) (not e!595686))))

(assert (=> b!1049776 (= res!699014 (= (select (store (arr!31803 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463651) k!2747))))

(declare-fun b!1049782 () Bool)

(declare-fun res!699009 () Bool)

(assert (=> b!1049782 (=> (not res!699009) (not e!595688))))

(assert (=> b!1049782 (= res!699009 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22243))))

(declare-fun b!1049783 () Bool)

(assert (=> b!1049783 (= e!595681 e!595684)))

(declare-fun res!699016 () Bool)

(assert (=> b!1049783 (=> (not res!699016) (not e!595684))))

(assert (=> b!1049783 (= res!699016 (not (= lt!463651 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66135 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049783 (= lt!463651 (arrayScanForKey!0 lt!463652 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92386 res!699010) b!1049782))

(assert (= (and b!1049782 res!699009) b!1049772))

(assert (= (and b!1049772 res!699007) b!1049773))

(assert (= (and b!1049773 res!699018) b!1049780))

(assert (= (and b!1049780 res!699012) b!1049783))

(assert (= (and b!1049783 res!699016) b!1049776))

(assert (= (and b!1049776 res!699014) b!1049778))

(assert (= (and b!1049778 (not res!699015)) b!1049774))

(assert (= (and b!1049776 (not res!699008)) b!1049781))

(assert (= (and b!1049781 (not res!699013)) b!1049775))

(assert (= (and b!1049775 (not res!699017)) b!1049779))

(assert (= (and b!1049779 (not res!699011)) b!1049777))

(declare-fun m!970633 () Bool)

(assert (=> b!1049777 m!970633))

(declare-fun m!970635 () Bool)

(assert (=> b!1049781 m!970635))

(declare-fun m!970637 () Bool)

(assert (=> b!1049781 m!970637))

(declare-fun m!970639 () Bool)

(assert (=> b!1049781 m!970639))

(declare-fun m!970641 () Bool)

(assert (=> b!1049781 m!970641))

(declare-fun m!970643 () Bool)

(assert (=> b!1049772 m!970643))

(declare-fun m!970645 () Bool)

(assert (=> b!1049775 m!970645))

(declare-fun m!970647 () Bool)

(assert (=> b!1049782 m!970647))

(declare-fun m!970649 () Bool)

(assert (=> b!1049774 m!970649))

(declare-fun m!970651 () Bool)

(assert (=> b!1049783 m!970651))

(declare-fun m!970653 () Bool)

(assert (=> b!1049773 m!970653))

(declare-fun m!970655 () Bool)

(assert (=> b!1049779 m!970655))

(declare-fun m!970657 () Bool)

(assert (=> b!1049776 m!970657))

(declare-fun m!970659 () Bool)

(assert (=> b!1049776 m!970659))

(declare-fun m!970661 () Bool)

(assert (=> b!1049780 m!970661))

(assert (=> b!1049780 m!970657))

(declare-fun m!970663 () Bool)

(assert (=> start!92386 m!970663))

(push 1)

