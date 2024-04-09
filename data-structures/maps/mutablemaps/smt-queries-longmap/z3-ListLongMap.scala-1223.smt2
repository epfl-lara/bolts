; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25854 () Bool)

(assert start!25854)

(declare-fun res!131766 () Bool)

(declare-fun e!172878 () Bool)

(assert (=> start!25854 (=> (not res!131766) (not e!172878))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25854 (= res!131766 (validMask!0 mask!3868))))

(assert (=> start!25854 e!172878))

(declare-datatypes ((array!12988 0))(
  ( (array!12989 (arr!6146 (Array (_ BitVec 32) (_ BitVec 64))) (size!6498 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12988)

(declare-fun array_inv!4100 (array!12988) Bool)

(assert (=> start!25854 (array_inv!4100 a!3325)))

(assert (=> start!25854 true))

(declare-fun b!267427 () Bool)

(declare-fun res!131765 () Bool)

(assert (=> b!267427 (=> (not res!131765) (not e!172878))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267427 (= res!131765 (validKeyInArray!0 k0!2581))))

(declare-fun b!267428 () Bool)

(declare-fun e!172879 () Bool)

(declare-datatypes ((List!3975 0))(
  ( (Nil!3972) (Cons!3971 (h!4638 (_ BitVec 64)) (t!9065 List!3975)) )
))
(declare-fun contains!1923 (List!3975 (_ BitVec 64)) Bool)

(assert (=> b!267428 (= e!172879 (contains!1923 Nil!3972 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267429 () Bool)

(assert (=> b!267429 (= e!172878 e!172879)))

(declare-fun res!131761 () Bool)

(assert (=> b!267429 (=> res!131761 e!172879)))

(assert (=> b!267429 (= res!131761 (contains!1923 Nil!3972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267430 () Bool)

(declare-fun res!131763 () Bool)

(assert (=> b!267430 (=> (not res!131763) (not e!172878))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267430 (= res!131763 (and (= (size!6498 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6498 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6498 a!3325))))))

(declare-fun b!267431 () Bool)

(declare-fun res!131762 () Bool)

(assert (=> b!267431 (=> (not res!131762) (not e!172878))))

(declare-fun noDuplicate!114 (List!3975) Bool)

(assert (=> b!267431 (= res!131762 (noDuplicate!114 Nil!3972))))

(declare-fun b!267432 () Bool)

(declare-fun res!131764 () Bool)

(assert (=> b!267432 (=> (not res!131764) (not e!172878))))

(assert (=> b!267432 (= res!131764 (and (bvsle #b00000000000000000000000000000000 (size!6498 a!3325)) (bvslt (size!6498 a!3325) #b01111111111111111111111111111111)))))

(assert (= (and start!25854 res!131766) b!267430))

(assert (= (and b!267430 res!131763) b!267427))

(assert (= (and b!267427 res!131765) b!267432))

(assert (= (and b!267432 res!131764) b!267431))

(assert (= (and b!267431 res!131762) b!267429))

(assert (= (and b!267429 (not res!131761)) b!267428))

(declare-fun m!283825 () Bool)

(assert (=> start!25854 m!283825))

(declare-fun m!283827 () Bool)

(assert (=> start!25854 m!283827))

(declare-fun m!283829 () Bool)

(assert (=> b!267429 m!283829))

(declare-fun m!283831 () Bool)

(assert (=> b!267428 m!283831))

(declare-fun m!283833 () Bool)

(assert (=> b!267427 m!283833))

(declare-fun m!283835 () Bool)

(assert (=> b!267431 m!283835))

(check-sat (not b!267427) (not b!267429) (not b!267431) (not start!25854) (not b!267428))
(check-sat)
(get-model)

(declare-fun d!64261 () Bool)

(assert (=> d!64261 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!267427 d!64261))

(declare-fun d!64263 () Bool)

(declare-fun lt!134714 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!180 (List!3975) (InoxSet (_ BitVec 64)))

(assert (=> d!64263 (= lt!134714 (select (content!180 Nil!3972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!172893 () Bool)

(assert (=> d!64263 (= lt!134714 e!172893)))

(declare-fun res!131790 () Bool)

(assert (=> d!64263 (=> (not res!131790) (not e!172893))))

(get-info :version)

(assert (=> d!64263 (= res!131790 ((_ is Cons!3971) Nil!3972))))

(assert (=> d!64263 (= (contains!1923 Nil!3972 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134714)))

(declare-fun b!267455 () Bool)

(declare-fun e!172894 () Bool)

(assert (=> b!267455 (= e!172893 e!172894)))

(declare-fun res!131789 () Bool)

(assert (=> b!267455 (=> res!131789 e!172894)))

(assert (=> b!267455 (= res!131789 (= (h!4638 Nil!3972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267456 () Bool)

(assert (=> b!267456 (= e!172894 (contains!1923 (t!9065 Nil!3972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64263 res!131790) b!267455))

(assert (= (and b!267455 (not res!131789)) b!267456))

(declare-fun m!283849 () Bool)

(assert (=> d!64263 m!283849))

(declare-fun m!283851 () Bool)

(assert (=> d!64263 m!283851))

(declare-fun m!283853 () Bool)

(assert (=> b!267456 m!283853))

(assert (=> b!267428 d!64263))

(declare-fun d!64267 () Bool)

(declare-fun res!131795 () Bool)

(declare-fun e!172899 () Bool)

(assert (=> d!64267 (=> res!131795 e!172899)))

(assert (=> d!64267 (= res!131795 ((_ is Nil!3972) Nil!3972))))

(assert (=> d!64267 (= (noDuplicate!114 Nil!3972) e!172899)))

(declare-fun b!267461 () Bool)

(declare-fun e!172900 () Bool)

(assert (=> b!267461 (= e!172899 e!172900)))

(declare-fun res!131796 () Bool)

(assert (=> b!267461 (=> (not res!131796) (not e!172900))))

(assert (=> b!267461 (= res!131796 (not (contains!1923 (t!9065 Nil!3972) (h!4638 Nil!3972))))))

(declare-fun b!267462 () Bool)

(assert (=> b!267462 (= e!172900 (noDuplicate!114 (t!9065 Nil!3972)))))

(assert (= (and d!64267 (not res!131795)) b!267461))

(assert (= (and b!267461 res!131796) b!267462))

(declare-fun m!283855 () Bool)

(assert (=> b!267461 m!283855))

(declare-fun m!283857 () Bool)

(assert (=> b!267462 m!283857))

(assert (=> b!267431 d!64267))

(declare-fun d!64269 () Bool)

(assert (=> d!64269 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!25854 d!64269))

(declare-fun d!64285 () Bool)

(assert (=> d!64285 (= (array_inv!4100 a!3325) (bvsge (size!6498 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!25854 d!64285))

(declare-fun d!64287 () Bool)

(declare-fun lt!134722 () Bool)

(assert (=> d!64287 (= lt!134722 (select (content!180 Nil!3972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!172919 () Bool)

(assert (=> d!64287 (= lt!134722 e!172919)))

(declare-fun res!131816 () Bool)

(assert (=> d!64287 (=> (not res!131816) (not e!172919))))

(assert (=> d!64287 (= res!131816 ((_ is Cons!3971) Nil!3972))))

(assert (=> d!64287 (= (contains!1923 Nil!3972 #b0000000000000000000000000000000000000000000000000000000000000000) lt!134722)))

(declare-fun b!267481 () Bool)

(declare-fun e!172920 () Bool)

(assert (=> b!267481 (= e!172919 e!172920)))

(declare-fun res!131815 () Bool)

(assert (=> b!267481 (=> res!131815 e!172920)))

(assert (=> b!267481 (= res!131815 (= (h!4638 Nil!3972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!267482 () Bool)

(assert (=> b!267482 (= e!172920 (contains!1923 (t!9065 Nil!3972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64287 res!131816) b!267481))

(assert (= (and b!267481 (not res!131815)) b!267482))

(assert (=> d!64287 m!283849))

(declare-fun m!283875 () Bool)

(assert (=> d!64287 m!283875))

(declare-fun m!283877 () Bool)

(assert (=> b!267482 m!283877))

(assert (=> b!267429 d!64287))

(check-sat (not b!267462) (not d!64263) (not b!267482) (not b!267461) (not b!267456) (not d!64287))
(check-sat)
