; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34518 () Bool)

(assert start!34518)

(declare-fun b_free!7433 () Bool)

(declare-fun b_next!7433 () Bool)

(assert (=> start!34518 (= b_free!7433 (not b_next!7433))))

(declare-fun tp!25845 () Bool)

(declare-fun b_and!14659 () Bool)

(assert (=> start!34518 (= tp!25845 b_and!14659)))

(declare-fun b!344690 () Bool)

(declare-fun res!190745 () Bool)

(declare-fun e!211291 () Bool)

(assert (=> b!344690 (=> (not res!190745) (not e!211291))))

(declare-datatypes ((array!18325 0))(
  ( (array!18326 (arr!8676 (Array (_ BitVec 32) (_ BitVec 64))) (size!9028 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18325)

(declare-datatypes ((List!5042 0))(
  ( (Nil!5039) (Cons!5038 (h!5894 (_ BitVec 64)) (t!10166 List!5042)) )
))
(declare-fun arrayNoDuplicates!0 (array!18325 (_ BitVec 32) List!5042) Bool)

(assert (=> b!344690 (= res!190745 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5039))))

(declare-fun b!344691 () Bool)

(declare-fun e!211292 () Bool)

(declare-fun tp_is_empty!7385 () Bool)

(assert (=> b!344691 (= e!211292 tp_is_empty!7385)))

(declare-fun b!344692 () Bool)

(declare-fun e!211293 () Bool)

(declare-fun mapRes!12516 () Bool)

(assert (=> b!344692 (= e!211293 (and e!211292 mapRes!12516))))

(declare-fun condMapEmpty!12516 () Bool)

(declare-datatypes ((V!10823 0))(
  ( (V!10824 (val!3737 Int)) )
))
(declare-datatypes ((ValueCell!3349 0))(
  ( (ValueCellFull!3349 (v!5909 V!10823)) (EmptyCell!3349) )
))
(declare-datatypes ((array!18327 0))(
  ( (array!18328 (arr!8677 (Array (_ BitVec 32) ValueCell!3349)) (size!9029 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18327)

(declare-fun mapDefault!12516 () ValueCell!3349)

