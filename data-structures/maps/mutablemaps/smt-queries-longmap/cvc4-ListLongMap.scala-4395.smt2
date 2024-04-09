; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60454 () Bool)

(assert start!60454)

(declare-fun b!679038 () Bool)

(declare-fun e!386864 () Bool)

(declare-datatypes ((List!12993 0))(
  ( (Nil!12990) (Cons!12989 (h!14034 (_ BitVec 64)) (t!19229 List!12993)) )
))
(declare-fun acc!681 () List!12993)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3536 (List!12993 (_ BitVec 64)) Bool)

(assert (=> b!679038 (= e!386864 (not (contains!3536 acc!681 k!2843)))))

(declare-fun b!679039 () Bool)

(declare-fun res!445598 () Bool)

(declare-fun e!386865 () Bool)

(assert (=> b!679039 (=> (not res!445598) (not e!386865))))

(declare-datatypes ((array!39424 0))(
  ( (array!39425 (arr!18899 (Array (_ BitVec 32) (_ BitVec 64))) (size!19263 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39424)

(declare-fun arrayNoDuplicates!0 (array!39424 (_ BitVec 32) List!12993) Bool)

(assert (=> b!679039 (= res!445598 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12990))))

(declare-fun b!679040 () Bool)

(declare-fun e!386866 () Bool)

(assert (=> b!679040 (= e!386865 (not e!386866))))

(declare-fun res!445599 () Bool)

(assert (=> b!679040 (=> res!445599 e!386866)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679040 (= res!445599 (not (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679040 (arrayContainsKey!0 (array!39425 (store (arr!18899 a!3626) i!1382 k!2843) (size!19263 a!3626)) k!2843 from!3004)))

(declare-fun res!445604 () Bool)

(assert (=> start!60454 (=> (not res!445604) (not e!386865))))

(assert (=> start!60454 (= res!445604 (and (bvslt (size!19263 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19263 a!3626))))))

(assert (=> start!60454 e!386865))

(assert (=> start!60454 true))

(declare-fun array_inv!14673 (array!39424) Bool)

(assert (=> start!60454 (array_inv!14673 a!3626)))

(declare-fun b!679041 () Bool)

(declare-fun res!445601 () Bool)

(assert (=> b!679041 (=> (not res!445601) (not e!386865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679041 (= res!445601 (validKeyInArray!0 k!2843))))

(declare-fun b!679042 () Bool)

(declare-fun e!386867 () Bool)

(assert (=> b!679042 (= e!386867 (contains!3536 acc!681 k!2843))))

(declare-fun b!679043 () Bool)

(declare-fun res!445607 () Bool)

(assert (=> b!679043 (=> (not res!445607) (not e!386865))))

(assert (=> b!679043 (= res!445607 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679044 () Bool)

(declare-fun res!445610 () Bool)

(assert (=> b!679044 (=> (not res!445610) (not e!386865))))

(declare-fun noDuplicate!783 (List!12993) Bool)

(assert (=> b!679044 (= res!445610 (noDuplicate!783 acc!681))))

(declare-fun b!679045 () Bool)

(declare-fun e!386868 () Bool)

(assert (=> b!679045 (= e!386868 e!386864)))

(declare-fun res!445596 () Bool)

(assert (=> b!679045 (=> (not res!445596) (not e!386864))))

(assert (=> b!679045 (= res!445596 (bvsle from!3004 i!1382))))

(declare-fun b!679046 () Bool)

(declare-fun res!445597 () Bool)

(assert (=> b!679046 (=> (not res!445597) (not e!386865))))

(assert (=> b!679046 (= res!445597 (not (contains!3536 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679047 () Bool)

(assert (=> b!679047 (= e!386866 (arrayContainsKey!0 a!3626 k!2843 from!3004))))

(declare-fun b!679048 () Bool)

(declare-fun res!445609 () Bool)

(assert (=> b!679048 (=> (not res!445609) (not e!386865))))

(assert (=> b!679048 (= res!445609 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19263 a!3626))))))

(declare-fun b!679049 () Bool)

(declare-fun res!445606 () Bool)

(assert (=> b!679049 (=> (not res!445606) (not e!386865))))

(assert (=> b!679049 (= res!445606 e!386868)))

(declare-fun res!445602 () Bool)

(assert (=> b!679049 (=> res!445602 e!386868)))

(assert (=> b!679049 (= res!445602 e!386867)))

(declare-fun res!445608 () Bool)

(assert (=> b!679049 (=> (not res!445608) (not e!386867))))

(assert (=> b!679049 (= res!445608 (bvsgt from!3004 i!1382))))

(declare-fun b!679050 () Bool)

(declare-fun res!445605 () Bool)

(assert (=> b!679050 (=> (not res!445605) (not e!386865))))

(assert (=> b!679050 (= res!445605 (not (contains!3536 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679051 () Bool)

(declare-fun res!445603 () Bool)

(assert (=> b!679051 (=> (not res!445603) (not e!386865))))

(assert (=> b!679051 (= res!445603 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19263 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679052 () Bool)

(declare-fun res!445600 () Bool)

(assert (=> b!679052 (=> (not res!445600) (not e!386865))))

(assert (=> b!679052 (= res!445600 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60454 res!445604) b!679044))

(assert (= (and b!679044 res!445610) b!679050))

(assert (= (and b!679050 res!445605) b!679046))

(assert (= (and b!679046 res!445597) b!679049))

(assert (= (and b!679049 res!445608) b!679042))

(assert (= (and b!679049 (not res!445602)) b!679045))

(assert (= (and b!679045 res!445596) b!679038))

(assert (= (and b!679049 res!445606) b!679039))

(assert (= (and b!679039 res!445598) b!679052))

(assert (= (and b!679052 res!445600) b!679048))

(assert (= (and b!679048 res!445609) b!679041))

(assert (= (and b!679041 res!445601) b!679043))

(assert (= (and b!679043 res!445607) b!679051))

(assert (= (and b!679051 res!445603) b!679040))

(assert (= (and b!679040 (not res!445599)) b!679047))

(declare-fun m!644551 () Bool)

(assert (=> b!679040 m!644551))

(declare-fun m!644553 () Bool)

(assert (=> b!679040 m!644553))

(declare-fun m!644555 () Bool)

(assert (=> b!679040 m!644555))

(declare-fun m!644557 () Bool)

(assert (=> start!60454 m!644557))

(declare-fun m!644559 () Bool)

(assert (=> b!679046 m!644559))

(declare-fun m!644561 () Bool)

(assert (=> b!679043 m!644561))

(declare-fun m!644563 () Bool)

(assert (=> b!679052 m!644563))

(declare-fun m!644565 () Bool)

(assert (=> b!679041 m!644565))

(declare-fun m!644567 () Bool)

(assert (=> b!679042 m!644567))

(declare-fun m!644569 () Bool)

(assert (=> b!679050 m!644569))

(assert (=> b!679038 m!644567))

(declare-fun m!644571 () Bool)

(assert (=> b!679047 m!644571))

(declare-fun m!644573 () Bool)

(assert (=> b!679044 m!644573))

(declare-fun m!644575 () Bool)

(assert (=> b!679039 m!644575))

(push 1)

(assert (not b!679043))

(assert (not b!679042))

(assert (not start!60454))

(assert (not b!679041))

(assert (not b!679040))

(assert (not b!679044))

(assert (not b!679052))

(assert (not b!679038))

(assert (not b!679050))

(assert (not b!679047))

(assert (not b!679039))

(assert (not b!679046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93363 () Bool)

(declare-fun lt!312852 () Bool)

(declare-fun content!265 (List!12993) (Set (_ BitVec 64)))

(assert (=> d!93363 (= lt!312852 (member k!2843 (content!265 acc!681)))))

(declare-fun e!386875 () Bool)

(assert (=> d!93363 (= lt!312852 e!386875)))

(declare-fun res!445616 () Bool)

(assert (=> d!93363 (=> (not res!445616) (not e!386875))))

(assert (=> d!93363 (= res!445616 (is-Cons!12989 acc!681))))

(assert (=> d!93363 (= (contains!3536 acc!681 k!2843) lt!312852)))

(declare-fun b!679057 () Bool)

(declare-fun e!386874 () Bool)

(assert (=> b!679057 (= e!386875 e!386874)))

(declare-fun res!445615 () Bool)

(assert (=> b!679057 (=> res!445615 e!386874)))

(assert (=> b!679057 (= res!445615 (= (h!14034 acc!681) k!2843))))

(declare-fun b!679058 () Bool)

(assert (=> b!679058 (= e!386874 (contains!3536 (t!19229 acc!681) k!2843))))

(assert (= (and d!93363 res!445616) b!679057))

(assert (= (and b!679057 (not res!445615)) b!679058))

(declare-fun m!644577 () Bool)

(assert (=> d!93363 m!644577))

(declare-fun m!644579 () Bool)

(assert (=> d!93363 m!644579))

(declare-fun m!644581 () Bool)

(assert (=> b!679058 m!644581))

(assert (=> b!679038 d!93363))

(declare-fun d!93365 () Bool)

(declare-fun res!445621 () Bool)

(declare-fun e!386880 () Bool)

(assert (=> d!93365 (=> res!445621 e!386880)))

(assert (=> d!93365 (= res!445621 (= (select (arr!18899 a!3626) from!3004) k!2843))))

(assert (=> d!93365 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!386880)))

(declare-fun b!679063 () Bool)

(declare-fun e!386881 () Bool)

(assert (=> b!679063 (= e!386880 e!386881)))

(declare-fun res!445622 () Bool)

(assert (=> b!679063 (=> (not res!445622) (not e!386881))))

(assert (=> b!679063 (= res!445622 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19263 a!3626)))))

(declare-fun b!679064 () Bool)

(assert (=> b!679064 (= e!386881 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93365 (not res!445621)) b!679063))

(assert (= (and b!679063 res!445622) b!679064))

(declare-fun m!644583 () Bool)

(assert (=> d!93365 m!644583))

(declare-fun m!644585 () Bool)

(assert (=> b!679064 m!644585))

(assert (=> b!679047 d!93365))

(declare-fun d!93369 () Bool)

(declare-fun lt!312853 () Bool)

(assert (=> d!93369 (= lt!312853 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!265 acc!681)))))

(declare-fun e!386883 () Bool)

(assert (=> d!93369 (= lt!312853 e!386883)))

(declare-fun res!445624 () Bool)

(assert (=> d!93369 (=> (not res!445624) (not e!386883))))

(assert (=> d!93369 (= res!445624 (is-Cons!12989 acc!681))))

(assert (=> d!93369 (= (contains!3536 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312853)))

(declare-fun b!679065 () Bool)

(declare-fun e!386882 () Bool)

(assert (=> b!679065 (= e!386883 e!386882)))

(declare-fun res!445623 () Bool)

(assert (=> b!679065 (=> res!445623 e!386882)))

(assert (=> b!679065 (= res!445623 (= (h!14034 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!679066 () Bool)

(assert (=> b!679066 (= e!386882 (contains!3536 (t!19229 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93369 res!445624) b!679065))

(assert (= (and b!679065 (not res!445623)) b!679066))

(assert (=> d!93369 m!644577))

(declare-fun m!644587 () Bool)

(assert (=> d!93369 m!644587))

(declare-fun m!644589 () Bool)

(assert (=> b!679066 m!644589))

(assert (=> b!679046 d!93369))

(declare-fun d!93371 () Bool)

(declare-fun res!445635 () Bool)

(declare-fun e!386894 () Bool)

(assert (=> d!93371 (=> res!445635 e!386894)))

(assert (=> d!93371 (= res!445635 (is-Nil!12990 acc!681))))

(assert (=> d!93371 (= (noDuplicate!783 acc!681) e!386894)))

(declare-fun b!679077 () Bool)

(declare-fun e!386895 () Bool)

(assert (=> b!679077 (= e!386894 e!386895)))

(declare-fun res!445636 () Bool)

(assert (=> b!679077 (=> (not res!445636) (not e!386895))))

(assert (=> b!679077 (= res!445636 (not (contains!3536 (t!19229 acc!681) (h!14034 acc!681))))))

(declare-fun b!679078 () Bool)

(assert (=> b!679078 (= e!386895 (noDuplicate!783 (t!19229 acc!681)))))

(assert (= (and d!93371 (not res!445635)) b!679077))

(assert (= (and b!679077 res!445636) b!679078))

(declare-fun m!644597 () Bool)

(assert (=> b!679077 m!644597))

(declare-fun m!644599 () Bool)

(assert (=> b!679078 m!644599))

(assert (=> b!679044 d!93371))

(declare-fun d!93375 () Bool)

(declare-fun res!445637 () Bool)

(declare-fun e!386896 () Bool)

(assert (=> d!93375 (=> res!445637 e!386896)))

(assert (=> d!93375 (= res!445637 (= (select (arr!18899 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93375 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!386896)))

(declare-fun b!679079 () Bool)

(declare-fun e!386897 () Bool)

(assert (=> b!679079 (= e!386896 e!386897)))

(declare-fun res!445638 () Bool)

(assert (=> b!679079 (=> (not res!445638) (not e!386897))))

(assert (=> b!679079 (= res!445638 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19263 a!3626)))))

(declare-fun b!679080 () Bool)

(assert (=> b!679080 (= e!386897 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93375 (not res!445637)) b!679079))

(assert (= (and b!679079 res!445638) b!679080))

(declare-fun m!644601 () Bool)

(assert (=> d!93375 m!644601))

(declare-fun m!644603 () Bool)

(assert (=> b!679080 m!644603))

(assert (=> b!679043 d!93375))

(declare-fun b!679105 () Bool)

(declare-fun e!386920 () Bool)

(declare-fun e!386923 () Bool)

(assert (=> b!679105 (= e!386920 e!386923)))

(declare-fun c!77090 () Bool)

(assert (=> b!679105 (= c!77090 (validKeyInArray!0 (select (arr!18899 a!3626) from!3004)))))

(declare-fun b!679106 () Bool)

(declare-fun e!386922 () Bool)

(assert (=> b!679106 (= e!386922 e!386920)))

(declare-fun res!445660 () Bool)

(assert (=> b!679106 (=> (not res!445660) (not e!386920))))

(declare-fun e!386921 () Bool)

(assert (=> b!679106 (= res!445660 (not e!386921))))

(declare-fun res!445659 () Bool)

(assert (=> b!679106 (=> (not res!445659) (not e!386921))))

(assert (=> b!679106 (= res!445659 (validKeyInArray!0 (select (arr!18899 a!3626) from!3004)))))

(declare-fun b!679107 () Bool)

(declare-fun call!33926 () Bool)

(assert (=> b!679107 (= e!386923 call!33926)))

(declare-fun b!679108 () Bool)

(assert (=> b!679108 (= e!386923 call!33926)))

(declare-fun b!679109 () Bool)

(assert (=> b!679109 (= e!386921 (contains!3536 acc!681 (select (arr!18899 a!3626) from!3004)))))

(declare-fun d!93377 () Bool)

(declare-fun res!445661 () Bool)

(assert (=> d!93377 (=> res!445661 e!386922)))

(assert (=> d!93377 (= res!445661 (bvsge from!3004 (size!19263 a!3626)))))

(assert (=> d!93377 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386922)))

(declare-fun bm!33923 () Bool)

(assert (=> bm!33923 (= call!33926 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77090 (Cons!12989 (select (arr!18899 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!93377 (not res!445661)) b!679106))

(assert (= (and b!679106 res!445659) b!679109))

(assert (= (and b!679106 res!445660) b!679105))

(assert (= (and b!679105 c!77090) b!679107))

(assert (= (and b!679105 (not c!77090)) b!679108))

(assert (= (or b!679107 b!679108) bm!33923))

(assert (=> b!679105 m!644583))

(assert (=> b!679105 m!644583))

(declare-fun m!644625 () Bool)

(assert (=> b!679105 m!644625))

(assert (=> b!679106 m!644583))

(assert (=> b!679106 m!644583))

(assert (=> b!679106 m!644625))

(assert (=> b!679109 m!644583))

(assert (=> b!679109 m!644583))

(declare-fun m!644627 () Bool)

(assert (=> b!679109 m!644627))

(assert (=> bm!33923 m!644583))

(declare-fun m!644629 () Bool)

(assert (=> bm!33923 m!644629))

(assert (=> b!679052 d!93377))

(assert (=> b!679042 d!93363))

(declare-fun d!93393 () Bool)

(declare-fun res!445662 () Bool)

(declare-fun e!386924 () Bool)

(assert (=> d!93393 (=> res!445662 e!386924)))

(assert (=> d!93393 (= res!445662 (= (select (arr!18899 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93393 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!386924)))

(declare-fun b!679110 () Bool)

(declare-fun e!386925 () Bool)

(assert (=> b!679110 (= e!386924 e!386925)))

(declare-fun res!445663 () Bool)

(assert (=> b!679110 (=> (not res!445663) (not e!386925))))

(assert (=> b!679110 (= res!445663 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19263 a!3626)))))

(declare-fun b!679111 () Bool)

(assert (=> b!679111 (= e!386925 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93393 (not res!445662)) b!679110))

(assert (= (and b!679110 res!445663) b!679111))

(declare-fun m!644631 () Bool)

(assert (=> d!93393 m!644631))

(declare-fun m!644633 () Bool)

(assert (=> b!679111 m!644633))

(assert (=> b!679040 d!93393))

(declare-fun d!93395 () Bool)

(declare-fun res!445666 () Bool)

(declare-fun e!386928 () Bool)

(assert (=> d!93395 (=> res!445666 e!386928)))

(assert (=> d!93395 (= res!445666 (= (select (arr!18899 (array!39425 (store (arr!18899 a!3626) i!1382 k!2843) (size!19263 a!3626))) from!3004) k!2843))))

(assert (=> d!93395 (= (arrayContainsKey!0 (array!39425 (store (arr!18899 a!3626) i!1382 k!2843) (size!19263 a!3626)) k!2843 from!3004) e!386928)))

(declare-fun b!679112 () Bool)

(declare-fun e!386929 () Bool)

(assert (=> b!679112 (= e!386928 e!386929)))

(declare-fun res!445667 () Bool)

(assert (=> b!679112 (=> (not res!445667) (not e!386929))))

(assert (=> b!679112 (= res!445667 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19263 (array!39425 (store (arr!18899 a!3626) i!1382 k!2843) (size!19263 a!3626)))))))

(declare-fun b!679113 () Bool)

(assert (=> b!679113 (= e!386929 (arrayContainsKey!0 (array!39425 (store (arr!18899 a!3626) i!1382 k!2843) (size!19263 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93395 (not res!445666)) b!679112))

(assert (= (and b!679112 res!445667) b!679113))

(declare-fun m!644635 () Bool)

(assert (=> d!93395 m!644635))

(declare-fun m!644637 () Bool)

(assert (=> b!679113 m!644637))

(assert (=> b!679040 d!93395))

(declare-fun d!93397 () Bool)

(assert (=> d!93397 (= (array_inv!14673 a!3626) (bvsge (size!19263 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60454 d!93397))

(declare-fun d!93399 () Bool)

(assert (=> d!93399 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!679041 d!93399))

(declare-fun b!679124 () Bool)

(declare-fun e!386936 () Bool)

(declare-fun e!386939 () Bool)

(assert (=> b!679124 (= e!386936 e!386939)))

(declare-fun c!77093 () Bool)

(assert (=> b!679124 (= c!77093 (validKeyInArray!0 (select (arr!18899 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679125 () Bool)

(declare-fun e!386938 () Bool)

(assert (=> b!679125 (= e!386938 e!386936)))

(declare-fun res!445673 () Bool)

(assert (=> b!679125 (=> (not res!445673) (not e!386936))))

(declare-fun e!386937 () Bool)

(assert (=> b!679125 (= res!445673 (not e!386937))))

(declare-fun res!445672 () Bool)

(assert (=> b!679125 (=> (not res!445672) (not e!386937))))

(assert (=> b!679125 (= res!445672 (validKeyInArray!0 (select (arr!18899 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679126 () Bool)

(declare-fun call!33929 () Bool)

(assert (=> b!679126 (= e!386939 call!33929)))

(declare-fun b!679127 () Bool)

(assert (=> b!679127 (= e!386939 call!33929)))

(declare-fun b!679128 () Bool)

(assert (=> b!679128 (= e!386937 (contains!3536 Nil!12990 (select (arr!18899 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93403 () Bool)

(declare-fun res!445674 () Bool)

(assert (=> d!93403 (=> res!445674 e!386938)))

(assert (=> d!93403 (= res!445674 (bvsge #b00000000000000000000000000000000 (size!19263 a!3626)))))

(assert (=> d!93403 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12990) e!386938)))

(declare-fun bm!33926 () Bool)

(assert (=> bm!33926 (= call!33929 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77093 (Cons!12989 (select (arr!18899 a!3626) #b00000000000000000000000000000000) Nil!12990) Nil!12990)))))

