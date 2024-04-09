; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20878 () Bool)

(assert start!20878)

(declare-fun b_free!5519 () Bool)

(declare-fun b_next!5519 () Bool)

(assert (=> start!20878 (= b_free!5519 (not b_next!5519))))

(declare-fun tp!19598 () Bool)

(declare-fun b_and!12283 () Bool)

(assert (=> start!20878 (= tp!19598 b_and!12283)))

(declare-fun b!209406 () Bool)

(declare-fun res!102101 () Bool)

(declare-fun e!136434 () Bool)

(assert (=> b!209406 (=> (not res!102101) (not e!136434))))

(declare-datatypes ((array!9958 0))(
  ( (array!9959 (arr!4729 (Array (_ BitVec 32) (_ BitVec 64))) (size!5054 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9958)

(declare-datatypes ((List!3049 0))(
  ( (Nil!3046) (Cons!3045 (h!3687 (_ BitVec 64)) (t!7988 List!3049)) )
))
(declare-fun arrayNoDuplicates!0 (array!9958 (_ BitVec 32) List!3049) Bool)

(assert (=> b!209406 (= res!102101 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3046))))

(declare-fun res!102103 () Bool)

(assert (=> start!20878 (=> (not res!102103) (not e!136434))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20878 (= res!102103 (validMask!0 mask!1149))))

(assert (=> start!20878 e!136434))

(declare-datatypes ((V!6821 0))(
  ( (V!6822 (val!2735 Int)) )
))
(declare-datatypes ((ValueCell!2347 0))(
  ( (ValueCellFull!2347 (v!4701 V!6821)) (EmptyCell!2347) )
))
(declare-datatypes ((array!9960 0))(
  ( (array!9961 (arr!4730 (Array (_ BitVec 32) ValueCell!2347)) (size!5055 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9960)

(declare-fun e!136432 () Bool)

(declare-fun array_inv!3123 (array!9960) Bool)

(assert (=> start!20878 (and (array_inv!3123 _values!649) e!136432)))

(assert (=> start!20878 true))

(declare-fun tp_is_empty!5381 () Bool)

(assert (=> start!20878 tp_is_empty!5381))

(declare-fun array_inv!3124 (array!9958) Bool)

(assert (=> start!20878 (array_inv!3124 _keys!825)))

(assert (=> start!20878 tp!19598))

(declare-fun b!209407 () Bool)

(declare-fun res!102099 () Bool)

(assert (=> b!209407 (=> (not res!102099) (not e!136434))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209407 (= res!102099 (= (select (arr!4729 _keys!825) i!601) k!843))))

(declare-fun b!209408 () Bool)

(declare-fun e!136435 () Bool)

(assert (=> b!209408 (= e!136435 tp_is_empty!5381)))

(declare-fun b!209409 () Bool)

(declare-fun e!136433 () Bool)

(assert (=> b!209409 (= e!136433 tp_is_empty!5381)))

(declare-fun b!209410 () Bool)

(declare-fun res!102097 () Bool)

(assert (=> b!209410 (=> (not res!102097) (not e!136434))))

(assert (=> b!209410 (= res!102097 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5054 _keys!825))))))

(declare-fun b!209411 () Bool)

(declare-fun res!102098 () Bool)

(assert (=> b!209411 (=> (not res!102098) (not e!136434))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209411 (= res!102098 (and (= (size!5055 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5054 _keys!825) (size!5055 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9140 () Bool)

(declare-fun mapRes!9140 () Bool)

(declare-fun tp!19597 () Bool)

(assert (=> mapNonEmpty!9140 (= mapRes!9140 (and tp!19597 e!136435))))

(declare-fun mapKey!9140 () (_ BitVec 32))

(declare-fun mapRest!9140 () (Array (_ BitVec 32) ValueCell!2347))

(declare-fun mapValue!9140 () ValueCell!2347)

(assert (=> mapNonEmpty!9140 (= (arr!4730 _values!649) (store mapRest!9140 mapKey!9140 mapValue!9140))))

(declare-fun b!209412 () Bool)

(assert (=> b!209412 (= e!136432 (and e!136433 mapRes!9140))))

(declare-fun condMapEmpty!9140 () Bool)

(declare-fun mapDefault!9140 () ValueCell!2347)

