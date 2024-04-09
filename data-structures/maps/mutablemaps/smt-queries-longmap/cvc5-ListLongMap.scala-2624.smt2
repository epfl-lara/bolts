; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39570 () Bool)

(assert start!39570)

(declare-fun b_free!9829 () Bool)

(declare-fun b_next!9829 () Bool)

(assert (=> start!39570 (= b_free!9829 (not b_next!9829))))

(declare-fun tp!35016 () Bool)

(declare-fun b_and!17503 () Bool)

(assert (=> start!39570 (= tp!35016 b_and!17503)))

(declare-fun b!423205 () Bool)

(declare-fun res!247410 () Bool)

(declare-fun e!251615 () Bool)

(assert (=> b!423205 (=> (not res!247410) (not e!251615))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25789 0))(
  ( (array!25790 (arr!12341 (Array (_ BitVec 32) (_ BitVec 64))) (size!12693 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25789)

(assert (=> b!423205 (= res!247410 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12693 _keys!709))))))

(declare-fun b!423206 () Bool)

(declare-fun res!247399 () Bool)

(assert (=> b!423206 (=> (not res!247399) (not e!251615))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15747 0))(
  ( (V!15748 (val!5535 Int)) )
))
(declare-datatypes ((ValueCell!5147 0))(
  ( (ValueCellFull!5147 (v!7778 V!15747)) (EmptyCell!5147) )
))
(declare-datatypes ((array!25791 0))(
  ( (array!25792 (arr!12342 (Array (_ BitVec 32) ValueCell!5147)) (size!12694 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25791)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423206 (= res!247399 (and (= (size!12694 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12693 _keys!709) (size!12694 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423207 () Bool)

(declare-fun e!251617 () Bool)

(assert (=> b!423207 (= e!251615 e!251617)))

(declare-fun res!247409 () Bool)

(assert (=> b!423207 (=> (not res!247409) (not e!251617))))

(declare-fun lt!194123 () array!25789)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25789 (_ BitVec 32)) Bool)

(assert (=> b!423207 (= res!247409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194123 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!423207 (= lt!194123 (array!25790 (store (arr!12341 _keys!709) i!563 k!794) (size!12693 _keys!709)))))

(declare-fun b!423208 () Bool)

(declare-fun res!247403 () Bool)

(assert (=> b!423208 (=> (not res!247403) (not e!251615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423208 (= res!247403 (validKeyInArray!0 k!794))))

(declare-fun b!423209 () Bool)

(declare-fun res!247402 () Bool)

(assert (=> b!423209 (=> (not res!247402) (not e!251617))))

(declare-datatypes ((List!7243 0))(
  ( (Nil!7240) (Cons!7239 (h!8095 (_ BitVec 64)) (t!12695 List!7243)) )
))
(declare-fun arrayNoDuplicates!0 (array!25789 (_ BitVec 32) List!7243) Bool)

(assert (=> b!423209 (= res!247402 (arrayNoDuplicates!0 lt!194123 #b00000000000000000000000000000000 Nil!7240))))

(declare-fun b!423210 () Bool)

(declare-fun res!247406 () Bool)

(assert (=> b!423210 (=> (not res!247406) (not e!251615))))

(assert (=> b!423210 (= res!247406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18093 () Bool)

(declare-fun mapRes!18093 () Bool)

(assert (=> mapIsEmpty!18093 mapRes!18093))

(declare-fun b!423211 () Bool)

(declare-fun res!247401 () Bool)

(assert (=> b!423211 (=> (not res!247401) (not e!251617))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!423211 (= res!247401 (bvsle from!863 i!563))))

(declare-fun b!423212 () Bool)

(declare-fun res!247404 () Bool)

(assert (=> b!423212 (=> (not res!247404) (not e!251615))))

(assert (=> b!423212 (= res!247404 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7240))))

(declare-fun res!247408 () Bool)

(assert (=> start!39570 (=> (not res!247408) (not e!251615))))

(assert (=> start!39570 (= res!247408 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12693 _keys!709))))))

(assert (=> start!39570 e!251615))

(declare-fun tp_is_empty!10981 () Bool)

(assert (=> start!39570 tp_is_empty!10981))

(assert (=> start!39570 tp!35016))

(assert (=> start!39570 true))

(declare-fun e!251614 () Bool)

(declare-fun array_inv!8994 (array!25791) Bool)

(assert (=> start!39570 (and (array_inv!8994 _values!549) e!251614)))

(declare-fun array_inv!8995 (array!25789) Bool)

(assert (=> start!39570 (array_inv!8995 _keys!709)))

(declare-fun b!423204 () Bool)

(declare-fun res!247407 () Bool)

(assert (=> b!423204 (=> (not res!247407) (not e!251615))))

(declare-fun arrayContainsKey!0 (array!25789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423204 (= res!247407 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423213 () Bool)

(declare-fun res!247405 () Bool)

(assert (=> b!423213 (=> (not res!247405) (not e!251615))))

(assert (=> b!423213 (= res!247405 (or (= (select (arr!12341 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12341 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18093 () Bool)

(declare-fun tp!35015 () Bool)

(declare-fun e!251612 () Bool)

(assert (=> mapNonEmpty!18093 (= mapRes!18093 (and tp!35015 e!251612))))

(declare-fun mapValue!18093 () ValueCell!5147)

(declare-fun mapKey!18093 () (_ BitVec 32))

(declare-fun mapRest!18093 () (Array (_ BitVec 32) ValueCell!5147))

(assert (=> mapNonEmpty!18093 (= (arr!12342 _values!549) (store mapRest!18093 mapKey!18093 mapValue!18093))))

(declare-fun b!423214 () Bool)

(declare-fun e!251613 () Bool)

(assert (=> b!423214 (= e!251613 tp_is_empty!10981)))

(declare-fun b!423215 () Bool)

(assert (=> b!423215 (= e!251614 (and e!251613 mapRes!18093))))

(declare-fun condMapEmpty!18093 () Bool)

(declare-fun mapDefault!18093 () ValueCell!5147)

