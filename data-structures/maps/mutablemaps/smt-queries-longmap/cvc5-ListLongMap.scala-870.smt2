; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20328 () Bool)

(assert start!20328)

(declare-fun b_free!4975 () Bool)

(declare-fun b_next!4975 () Bool)

(assert (=> start!20328 (= b_free!4975 (not b_next!4975))))

(declare-fun tp!17957 () Bool)

(declare-fun b_and!11739 () Bool)

(assert (=> start!20328 (= tp!17957 b_and!11739)))

(declare-fun b!200136 () Bool)

(declare-fun e!131278 () Bool)

(declare-fun tp_is_empty!4831 () Bool)

(assert (=> b!200136 (= e!131278 tp_is_empty!4831)))

(declare-fun b!200137 () Bool)

(declare-fun res!95305 () Bool)

(declare-fun e!131277 () Bool)

(assert (=> b!200137 (=> (not res!95305) (not e!131277))))

(declare-datatypes ((array!8896 0))(
  ( (array!8897 (arr!4198 (Array (_ BitVec 32) (_ BitVec 64))) (size!4523 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8896)

(declare-datatypes ((List!2654 0))(
  ( (Nil!2651) (Cons!2650 (h!3292 (_ BitVec 64)) (t!7593 List!2654)) )
))
(declare-fun arrayNoDuplicates!0 (array!8896 (_ BitVec 32) List!2654) Bool)

(assert (=> b!200137 (= res!95305 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2651))))

(declare-fun b!200138 () Bool)

(declare-fun res!95311 () Bool)

(assert (=> b!200138 (=> (not res!95311) (not e!131277))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6089 0))(
  ( (V!6090 (val!2460 Int)) )
))
(declare-datatypes ((ValueCell!2072 0))(
  ( (ValueCellFull!2072 (v!4426 V!6089)) (EmptyCell!2072) )
))
(declare-datatypes ((array!8898 0))(
  ( (array!8899 (arr!4199 (Array (_ BitVec 32) ValueCell!2072)) (size!4524 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8898)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!200138 (= res!95311 (and (= (size!4524 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4523 _keys!825) (size!4524 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200139 () Bool)

(declare-fun e!131276 () Bool)

(declare-fun e!131279 () Bool)

(declare-fun mapRes!8315 () Bool)

(assert (=> b!200139 (= e!131276 (and e!131279 mapRes!8315))))

(declare-fun condMapEmpty!8315 () Bool)

(declare-fun mapDefault!8315 () ValueCell!2072)

