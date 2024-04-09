; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34994 () Bool)

(assert start!34994)

(declare-fun b_free!7675 () Bool)

(declare-fun b_next!7675 () Bool)

(assert (=> start!34994 (= b_free!7675 (not b_next!7675))))

(declare-fun tp!26603 () Bool)

(declare-fun b_and!14923 () Bool)

(assert (=> start!34994 (= tp!26603 b_and!14923)))

(declare-fun b!350178 () Bool)

(declare-fun e!214520 () Bool)

(declare-fun tp_is_empty!7627 () Bool)

(assert (=> b!350178 (= e!214520 tp_is_empty!7627)))

(declare-fun b!350179 () Bool)

(declare-fun res!194111 () Bool)

(declare-fun e!214521 () Bool)

(assert (=> b!350179 (=> (not res!194111) (not e!214521))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350179 (= res!194111 (validKeyInArray!0 k!1348))))

(declare-fun b!350180 () Bool)

(declare-fun res!194114 () Bool)

(assert (=> b!350180 (=> (not res!194114) (not e!214521))))

(declare-datatypes ((array!18809 0))(
  ( (array!18810 (arr!8907 (Array (_ BitVec 32) (_ BitVec 64))) (size!9259 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18809)

(declare-datatypes ((List!5205 0))(
  ( (Nil!5202) (Cons!5201 (h!6057 (_ BitVec 64)) (t!10351 List!5205)) )
))
(declare-fun arrayNoDuplicates!0 (array!18809 (_ BitVec 32) List!5205) Bool)

(assert (=> b!350180 (= res!194114 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5202))))

(declare-fun res!194108 () Bool)

(assert (=> start!34994 (=> (not res!194108) (not e!214521))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34994 (= res!194108 (validMask!0 mask!2385))))

(assert (=> start!34994 e!214521))

(assert (=> start!34994 true))

(assert (=> start!34994 tp_is_empty!7627))

(assert (=> start!34994 tp!26603))

(declare-datatypes ((V!11147 0))(
  ( (V!11148 (val!3858 Int)) )
))
(declare-datatypes ((ValueCell!3470 0))(
  ( (ValueCellFull!3470 (v!6041 V!11147)) (EmptyCell!3470) )
))
(declare-datatypes ((array!18811 0))(
  ( (array!18812 (arr!8908 (Array (_ BitVec 32) ValueCell!3470)) (size!9260 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18811)

(declare-fun e!214518 () Bool)

(declare-fun array_inv!6562 (array!18811) Bool)

(assert (=> start!34994 (and (array_inv!6562 _values!1525) e!214518)))

(declare-fun array_inv!6563 (array!18809) Bool)

(assert (=> start!34994 (array_inv!6563 _keys!1895)))

(declare-fun b!350181 () Bool)

(declare-fun e!214517 () Bool)

(assert (=> b!350181 (= e!214517 false)))

(declare-fun lt!164532 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18809 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350181 (= lt!164532 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350182 () Bool)

(declare-fun e!214522 () Bool)

(assert (=> b!350182 (= e!214522 tp_is_empty!7627)))

(declare-fun b!350183 () Bool)

(declare-fun res!194112 () Bool)

(assert (=> b!350183 (=> (not res!194112) (not e!214521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18809 (_ BitVec 32)) Bool)

(assert (=> b!350183 (= res!194112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350184 () Bool)

(declare-fun mapRes!12912 () Bool)

(assert (=> b!350184 (= e!214518 (and e!214520 mapRes!12912))))

(declare-fun condMapEmpty!12912 () Bool)

(declare-fun mapDefault!12912 () ValueCell!3470)

