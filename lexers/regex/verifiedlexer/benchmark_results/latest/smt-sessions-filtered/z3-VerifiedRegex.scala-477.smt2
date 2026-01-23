; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13454 () Bool)

(assert start!13454)

(declare-fun b!130142 () Bool)

(declare-fun res!60095 () Bool)

(declare-fun e!74989 () Bool)

(assert (=> b!130142 (=> res!60095 e!74989)))

(declare-datatypes ((B!729 0))(
  ( (B!730 (val!850 Int)) )
))
(declare-datatypes ((List!2168 0))(
  ( (Nil!2162) (Cons!2162 (h!7559 B!729) (t!22754 List!2168)) )
))
(declare-fun lt!39197 () List!2168)

(declare-fun lt!39199 () List!2168)

(declare-fun subseq!33 (List!2168 List!2168) Bool)

(assert (=> b!130142 (= res!60095 (not (subseq!33 lt!39197 lt!39199)))))

(declare-fun b!130143 () Bool)

(declare-fun res!60091 () Bool)

(declare-fun e!74982 () Bool)

(assert (=> b!130143 (=> (not res!60091) (not e!74982))))

(declare-fun lt!39193 () List!2168)

(assert (=> b!130143 (= res!60091 (subseq!33 lt!39197 lt!39193))))

(declare-fun b!130144 () Bool)

(declare-fun res!60096 () Bool)

(declare-fun e!74987 () Bool)

(assert (=> b!130144 (=> (not res!60096) (not e!74987))))

(declare-fun baseList!9 () List!2168)

(declare-fun newList!20 () List!2168)

(declare-fun contains!342 (List!2168 B!729) Bool)

(assert (=> b!130144 (= res!60096 (contains!342 baseList!9 (h!7559 newList!20)))))

(declare-fun b!130145 () Bool)

(declare-fun e!74986 () Bool)

(declare-fun tp_is_empty!1373 () Bool)

(declare-fun tp!70264 () Bool)

(assert (=> b!130145 (= e!74986 (and tp_is_empty!1373 tp!70264))))

(declare-fun res!60088 () Bool)

(assert (=> start!13454 (=> (not res!60088) (not e!74987))))

(declare-fun noDuplicate!58 (List!2168) Bool)

(assert (=> start!13454 (= res!60088 (noDuplicate!58 baseList!9))))

(assert (=> start!13454 e!74987))

(declare-fun e!74983 () Bool)

(assert (=> start!13454 e!74983))

(assert (=> start!13454 e!74986))

(declare-fun b!130146 () Bool)

(declare-fun e!74985 () Bool)

(assert (=> b!130146 (= e!74985 e!74989)))

(declare-fun res!60097 () Bool)

(assert (=> b!130146 (=> res!60097 e!74989)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!277 (List!2168) (InoxSet B!729))

(assert (=> b!130146 (= res!60097 (not (= (content!277 lt!39199) (content!277 lt!39197))))))

(declare-fun ++!442 (List!2168 List!2168) List!2168)

(assert (=> b!130146 (= lt!39199 (++!442 baseList!9 (t!22754 newList!20)))))

(declare-fun b!130147 () Bool)

(declare-fun e!74984 () Bool)

(declare-fun isPrefix!161 (List!2168 List!2168) Bool)

(assert (=> b!130147 (= e!74984 (isPrefix!161 baseList!9 lt!39197))))

(declare-fun b!130148 () Bool)

(assert (=> b!130148 (= e!74987 (not e!74985))))

(declare-fun res!60090 () Bool)

(assert (=> b!130148 (=> res!60090 e!74985)))

(declare-fun lt!39194 () Bool)

(assert (=> b!130148 (= res!60090 lt!39194)))

(declare-fun e!74988 () Bool)

(assert (=> b!130148 e!74988))

(declare-fun res!60092 () Bool)

(assert (=> b!130148 (=> (not res!60092) (not e!74988))))

(assert (=> b!130148 (= res!60092 (not lt!39194))))

(assert (=> b!130148 (= lt!39194 (not (noDuplicate!58 lt!39197)))))

(declare-fun concatWithoutDuplicates!20 (List!2168 List!2168) List!2168)

(assert (=> b!130148 (= lt!39197 (concatWithoutDuplicates!20 baseList!9 (t!22754 newList!20)))))

(assert (=> b!130148 (subseq!33 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1708 0))(
  ( (Unit!1709) )
))
(declare-fun lt!39195 () Unit!1708)

(declare-fun lemmaSubseqRefl!30 (List!2168) Unit!1708)

(assert (=> b!130148 (= lt!39195 (lemmaSubseqRefl!30 baseList!9))))

(declare-fun b!130149 () Bool)

(assert (=> b!130149 (= e!74989 e!74984)))

(declare-fun res!60093 () Bool)

(assert (=> b!130149 (=> res!60093 e!74984)))

(declare-fun lt!39196 () List!2168)

(declare-fun lt!39201 () List!2168)

(assert (=> b!130149 (= res!60093 (not (= lt!39196 lt!39201)))))

(assert (=> b!130149 (= lt!39201 lt!39196)))

(declare-fun lt!39202 () List!2168)

(assert (=> b!130149 (= lt!39196 (++!442 baseList!9 (++!442 lt!39202 (t!22754 newList!20))))))

(declare-fun lt!39200 () Unit!1708)

(declare-fun lemmaConcatAssociativity!130 (List!2168 List!2168 List!2168) Unit!1708)

(assert (=> b!130149 (= lt!39200 (lemmaConcatAssociativity!130 baseList!9 lt!39202 (t!22754 newList!20)))))

(assert (=> b!130149 (subseq!33 lt!39197 lt!39201)))

(assert (=> b!130149 (= lt!39201 (++!442 (++!442 baseList!9 lt!39202) (t!22754 newList!20)))))

(declare-fun lt!39198 () Unit!1708)

(declare-fun lemmaBiggerSndListPreservesSubSeq!8 (List!2168 List!2168 List!2168 List!2168) Unit!1708)

(assert (=> b!130149 (= lt!39198 (lemmaBiggerSndListPreservesSubSeq!8 lt!39197 baseList!9 (t!22754 newList!20) lt!39202))))

(assert (=> b!130149 (= lt!39202 (Cons!2162 (h!7559 newList!20) Nil!2162))))

(declare-fun b!130150 () Bool)

(assert (=> b!130150 (= e!74988 e!74982)))

(declare-fun res!60094 () Bool)

(assert (=> b!130150 (=> (not res!60094) (not e!74982))))

(assert (=> b!130150 (= res!60094 (= (content!277 lt!39193) (content!277 lt!39197)))))

(assert (=> b!130150 (= lt!39193 (++!442 baseList!9 (t!22754 newList!20)))))

(declare-fun b!130151 () Bool)

(assert (=> b!130151 (= e!74982 (isPrefix!161 baseList!9 lt!39197))))

(declare-fun b!130152 () Bool)

(declare-fun tp!70263 () Bool)

(assert (=> b!130152 (= e!74983 (and tp_is_empty!1373 tp!70263))))

(declare-fun b!130153 () Bool)

(declare-fun res!60089 () Bool)

(assert (=> b!130153 (=> res!60089 e!74984)))

(assert (=> b!130153 (= res!60089 (not (subseq!33 lt!39197 lt!39196)))))

(declare-fun b!130154 () Bool)

(declare-fun res!60098 () Bool)

(assert (=> b!130154 (=> (not res!60098) (not e!74987))))

(get-info :version)

(assert (=> b!130154 (= res!60098 ((_ is Cons!2162) newList!20))))

(assert (= (and start!13454 res!60088) b!130154))

(assert (= (and b!130154 res!60098) b!130144))

(assert (= (and b!130144 res!60096) b!130148))

(assert (= (and b!130148 res!60092) b!130150))

(assert (= (and b!130150 res!60094) b!130143))

(assert (= (and b!130143 res!60091) b!130151))

(assert (= (and b!130148 (not res!60090)) b!130146))

(assert (= (and b!130146 (not res!60097)) b!130142))

(assert (= (and b!130142 (not res!60095)) b!130149))

(assert (= (and b!130149 (not res!60093)) b!130153))

(assert (= (and b!130153 (not res!60089)) b!130147))

(assert (= (and start!13454 ((_ is Cons!2162) baseList!9)) b!130152))

(assert (= (and start!13454 ((_ is Cons!2162) newList!20)) b!130145))

(declare-fun m!114671 () Bool)

(assert (=> b!130147 m!114671))

(declare-fun m!114673 () Bool)

(assert (=> b!130142 m!114673))

(declare-fun m!114675 () Bool)

(assert (=> start!13454 m!114675))

(declare-fun m!114677 () Bool)

(assert (=> b!130146 m!114677))

(declare-fun m!114679 () Bool)

(assert (=> b!130146 m!114679))

(declare-fun m!114681 () Bool)

(assert (=> b!130146 m!114681))

(declare-fun m!114683 () Bool)

(assert (=> b!130149 m!114683))

(declare-fun m!114685 () Bool)

(assert (=> b!130149 m!114685))

(declare-fun m!114687 () Bool)

(assert (=> b!130149 m!114687))

(declare-fun m!114689 () Bool)

(assert (=> b!130149 m!114689))

(declare-fun m!114691 () Bool)

(assert (=> b!130149 m!114691))

(declare-fun m!114693 () Bool)

(assert (=> b!130149 m!114693))

(assert (=> b!130149 m!114685))

(declare-fun m!114695 () Bool)

(assert (=> b!130149 m!114695))

(assert (=> b!130149 m!114689))

(declare-fun m!114697 () Bool)

(assert (=> b!130143 m!114697))

(declare-fun m!114699 () Bool)

(assert (=> b!130150 m!114699))

(assert (=> b!130150 m!114679))

(assert (=> b!130150 m!114681))

(declare-fun m!114701 () Bool)

(assert (=> b!130144 m!114701))

(assert (=> b!130151 m!114671))

(declare-fun m!114703 () Bool)

(assert (=> b!130153 m!114703))

(declare-fun m!114705 () Bool)

(assert (=> b!130148 m!114705))

(declare-fun m!114707 () Bool)

(assert (=> b!130148 m!114707))

(declare-fun m!114709 () Bool)

(assert (=> b!130148 m!114709))

(declare-fun m!114711 () Bool)

(assert (=> b!130148 m!114711))

(check-sat (not b!130149) (not b!130145) (not start!13454) (not b!130146) (not b!130150) (not b!130144) (not b!130152) (not b!130143) (not b!130151) (not b!130142) tp_is_empty!1373 (not b!130153) (not b!130147) (not b!130148))
(check-sat)
