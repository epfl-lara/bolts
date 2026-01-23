; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185280 () Bool)

(assert start!185280)

(declare-fun b!1855985 () Bool)

(declare-fun res!831967 () Bool)

(declare-fun e!1185671 () Bool)

(assert (=> b!1855985 (=> (not res!831967) (not e!1185671))))

(declare-datatypes ((C!10254 0))(
  ( (C!10255 (val!5863 Int)) )
))
(declare-datatypes ((Regex!5052 0))(
  ( (ElementMatch!5052 (c!302388 C!10254)) (Concat!8851 (regOne!10616 Regex!5052) (regTwo!10616 Regex!5052)) (EmptyExpr!5052) (Star!5052 (reg!5381 Regex!5052)) (EmptyLang!5052) (Union!5052 (regOne!10617 Regex!5052) (regTwo!10617 Regex!5052)) )
))
(declare-fun r!19073 () Regex!5052)

(declare-datatypes ((List!20666 0))(
  ( (Nil!20588) (Cons!20588 (h!25989 C!10254) (t!172533 List!20666)) )
))
(declare-fun s!13412 () List!20666)

(declare-fun matchR!2463 (Regex!5052 List!20666) Bool)

(assert (=> b!1855985 (= res!831967 (matchR!2463 r!19073 s!13412))))

(declare-fun b!1855986 () Bool)

(declare-fun res!831968 () Bool)

(assert (=> b!1855986 (=> (not res!831968) (not e!1185671))))

(declare-fun prefix!1439 () List!20666)

(declare-fun isPrefix!1902 (List!20666 List!20666) Bool)

(assert (=> b!1855986 (= res!831968 (isPrefix!1902 prefix!1439 s!13412))))

(declare-fun b!1855987 () Bool)

(assert (=> b!1855987 (= e!1185671 (not true))))

(assert (=> b!1855987 false))

(declare-datatypes ((Unit!35196 0))(
  ( (Unit!35197) )
))
(declare-fun lt!716909 () Unit!35196)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!199 (Regex!5052 List!20666 List!20666) Unit!35196)

(assert (=> b!1855987 (= lt!716909 (lemmaNotPrefixMatchThenCannotMatchLonger!199 r!19073 prefix!1439 s!13412))))

(declare-fun b!1855988 () Bool)

(declare-fun e!1185669 () Bool)

(declare-fun tp!527919 () Bool)

(assert (=> b!1855988 (= e!1185669 tp!527919)))

(declare-fun b!1855990 () Bool)

(declare-fun tp!527924 () Bool)

(declare-fun tp!527920 () Bool)

(assert (=> b!1855990 (= e!1185669 (and tp!527924 tp!527920))))

(declare-fun b!1855991 () Bool)

(declare-fun res!831966 () Bool)

(assert (=> b!1855991 (=> (not res!831966) (not e!1185671))))

(declare-fun prefixMatch!801 (Regex!5052 List!20666) Bool)

(assert (=> b!1855991 (= res!831966 (not (prefixMatch!801 r!19073 prefix!1439)))))

(declare-fun b!1855992 () Bool)

(declare-fun tp!527921 () Bool)

(declare-fun tp!527922 () Bool)

(assert (=> b!1855992 (= e!1185669 (and tp!527921 tp!527922))))

(declare-fun b!1855993 () Bool)

(declare-fun e!1185670 () Bool)

(declare-fun tp_is_empty!8525 () Bool)

(declare-fun tp!527923 () Bool)

(assert (=> b!1855993 (= e!1185670 (and tp_is_empty!8525 tp!527923))))

(declare-fun b!1855994 () Bool)

(assert (=> b!1855994 (= e!1185669 tp_is_empty!8525)))

(declare-fun b!1855989 () Bool)

(declare-fun e!1185672 () Bool)

(declare-fun tp!527925 () Bool)

(assert (=> b!1855989 (= e!1185672 (and tp_is_empty!8525 tp!527925))))

(declare-fun res!831969 () Bool)

(assert (=> start!185280 (=> (not res!831969) (not e!1185671))))

(declare-fun validRegex!2074 (Regex!5052) Bool)

(assert (=> start!185280 (= res!831969 (validRegex!2074 r!19073))))

(assert (=> start!185280 e!1185671))

(assert (=> start!185280 e!1185669))

(assert (=> start!185280 e!1185672))

(assert (=> start!185280 e!1185670))

(assert (= (and start!185280 res!831969) b!1855986))

(assert (= (and b!1855986 res!831968) b!1855985))

(assert (= (and b!1855985 res!831967) b!1855991))

(assert (= (and b!1855991 res!831966) b!1855987))

(assert (= (and start!185280 (is-ElementMatch!5052 r!19073)) b!1855994))

(assert (= (and start!185280 (is-Concat!8851 r!19073)) b!1855990))

(assert (= (and start!185280 (is-Star!5052 r!19073)) b!1855988))

(assert (= (and start!185280 (is-Union!5052 r!19073)) b!1855992))

(assert (= (and start!185280 (is-Cons!20588 prefix!1439)) b!1855989))

(assert (= (and start!185280 (is-Cons!20588 s!13412)) b!1855993))

(declare-fun m!2281299 () Bool)

(assert (=> b!1855991 m!2281299))

(declare-fun m!2281301 () Bool)

(assert (=> b!1855987 m!2281301))

(declare-fun m!2281303 () Bool)

(assert (=> b!1855986 m!2281303))

(declare-fun m!2281305 () Bool)

(assert (=> start!185280 m!2281305))

(declare-fun m!2281307 () Bool)

(assert (=> b!1855985 m!2281307))

(push 1)

(assert (not b!1855991))

(assert (not b!1855992))

(assert (not b!1855993))

(assert (not b!1855989))

(assert (not b!1855987))

(assert (not b!1855988))

(assert (not b!1855986))

(assert (not b!1855985))

(assert (not start!185280))

(assert (not b!1855990))

(assert tp_is_empty!8525)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

