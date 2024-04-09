; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39144 () Bool)

(assert start!39144)

(declare-fun b_free!9403 () Bool)

(declare-fun b_next!9403 () Bool)

(assert (=> start!39144 (= b_free!9403 (not b_next!9403))))

(declare-fun tp!33738 () Bool)

(declare-fun b_and!16807 () Bool)

(assert (=> start!39144 (= tp!33738 b_and!16807)))

(declare-fun res!238837 () Bool)

(declare-fun e!246396 () Bool)

(assert (=> start!39144 (=> (not res!238837) (not e!246396))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24955 0))(
  ( (array!24956 (arr!11924 (Array (_ BitVec 32) (_ BitVec 64))) (size!12276 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24955)

(assert (=> start!39144 (= res!238837 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12276 _keys!709))))))

(assert (=> start!39144 e!246396))

(declare-fun tp_is_empty!10555 () Bool)

(assert (=> start!39144 tp_is_empty!10555))

(assert (=> start!39144 tp!33738))

(assert (=> start!39144 true))

(declare-datatypes ((V!15179 0))(
  ( (V!15180 (val!5322 Int)) )
))
(declare-datatypes ((ValueCell!4934 0))(
  ( (ValueCellFull!4934 (v!7565 V!15179)) (EmptyCell!4934) )
))
(declare-datatypes ((array!24957 0))(
  ( (array!24958 (arr!11925 (Array (_ BitVec 32) ValueCell!4934)) (size!12277 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24957)

(declare-fun e!246393 () Bool)

(declare-fun array_inv!8700 (array!24957) Bool)

(assert (=> start!39144 (and (array_inv!8700 _values!549) e!246393)))

(declare-fun array_inv!8701 (array!24955) Bool)

(assert (=> start!39144 (array_inv!8701 _keys!709)))

(declare-fun b!411477 () Bool)

(declare-fun e!246397 () Bool)

(assert (=> b!411477 (= e!246396 e!246397)))

(declare-fun res!238832 () Bool)

(assert (=> b!411477 (=> (not res!238832) (not e!246397))))

(declare-fun lt!189290 () array!24955)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24955 (_ BitVec 32)) Bool)

(assert (=> b!411477 (= res!238832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189290 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411477 (= lt!189290 (array!24956 (store (arr!11924 _keys!709) i!563 k!794) (size!12276 _keys!709)))))

(declare-fun mapNonEmpty!17454 () Bool)

(declare-fun mapRes!17454 () Bool)

(declare-fun tp!33737 () Bool)

(declare-fun e!246394 () Bool)

(assert (=> mapNonEmpty!17454 (= mapRes!17454 (and tp!33737 e!246394))))

(declare-fun mapRest!17454 () (Array (_ BitVec 32) ValueCell!4934))

(declare-fun mapValue!17454 () ValueCell!4934)

(declare-fun mapKey!17454 () (_ BitVec 32))

(assert (=> mapNonEmpty!17454 (= (arr!11925 _values!549) (store mapRest!17454 mapKey!17454 mapValue!17454))))

(declare-fun b!411478 () Bool)

(assert (=> b!411478 (= e!246394 tp_is_empty!10555)))

(declare-fun b!411479 () Bool)

(declare-fun res!238836 () Bool)

(assert (=> b!411479 (=> (not res!238836) (not e!246396))))

(assert (=> b!411479 (= res!238836 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12276 _keys!709))))))

(declare-fun b!411480 () Bool)

(declare-fun res!238834 () Bool)

(assert (=> b!411480 (=> (not res!238834) (not e!246396))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!411480 (= res!238834 (and (= (size!12277 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12276 _keys!709) (size!12277 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411481 () Bool)

(declare-fun e!246392 () Bool)

(assert (=> b!411481 (= e!246393 (and e!246392 mapRes!17454))))

(declare-fun condMapEmpty!17454 () Bool)

(declare-fun mapDefault!17454 () ValueCell!4934)

