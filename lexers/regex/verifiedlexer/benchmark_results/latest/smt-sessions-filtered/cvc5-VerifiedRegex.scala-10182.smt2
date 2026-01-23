; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532030 () Bool)

(assert start!532030)

(declare-fun res!2143968 () Bool)

(declare-fun e!3142469 () Bool)

(assert (=> start!532030 (=> (not res!2143968) (not e!3142469))))

(declare-fun i!879 () Int)

(assert (=> start!532030 (= res!2143968 (>= i!879 0))))

(assert (=> start!532030 e!3142469))

(assert (=> start!532030 true))

(declare-fun e!3142468 () Bool)

(assert (=> start!532030 e!3142468))

(declare-fun b!5030439 () Bool)

(declare-fun j!102 () Int)

(declare-fun lt!2081856 () Int)

(assert (=> b!5030439 (= e!3142469 (and (< i!879 lt!2081856) (>= j!102 0) (<= j!102 (- (- lt!2081856 i!879) 1)) (= i!879 0) (> 0 i!879)))))

(declare-datatypes ((B!3055 0))(
  ( (B!3056 (val!23439 Int)) )
))
(declare-datatypes ((List!58342 0))(
  ( (Nil!58218) (Cons!58218 (h!64666 B!3055) (t!370758 List!58342)) )
))
(declare-fun l!2999 () List!58342)

(declare-fun size!38757 (List!58342) Int)

(assert (=> b!5030439 (= lt!2081856 (size!38757 l!2999))))

(declare-fun b!5030440 () Bool)

(declare-fun tp_is_empty!36677 () Bool)

(declare-fun tp!1409425 () Bool)

(assert (=> b!5030440 (= e!3142468 (and tp_is_empty!36677 tp!1409425))))

(assert (= (and start!532030 res!2143968) b!5030439))

(assert (= (and start!532030 (is-Cons!58218 l!2999)) b!5030440))

(declare-fun m!6065786 () Bool)

(assert (=> b!5030439 m!6065786))

(push 1)

(assert (not b!5030439))

(assert (not b!5030440))

(assert tp_is_empty!36677)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

