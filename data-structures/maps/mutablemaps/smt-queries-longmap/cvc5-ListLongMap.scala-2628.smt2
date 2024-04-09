; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39594 () Bool)

(assert start!39594)

(declare-fun b_free!9853 () Bool)

(declare-fun b_next!9853 () Bool)

(assert (=> start!39594 (= b_free!9853 (not b_next!9853))))

(declare-fun tp!35087 () Bool)

(declare-fun b_and!17527 () Bool)

(assert (=> start!39594 (= tp!35087 b_and!17527)))

(declare-fun mapIsEmpty!18129 () Bool)

(declare-fun mapRes!18129 () Bool)

(assert (=> mapIsEmpty!18129 mapRes!18129))

(declare-fun b!423744 () Bool)

(declare-fun e!251830 () Bool)

(assert (=> b!423744 (= e!251830 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15779 0))(
  ( (V!15780 (val!5547 Int)) )
))
(declare-datatypes ((tuple2!7214 0))(
  ( (tuple2!7215 (_1!3617 (_ BitVec 64)) (_2!3617 V!15779)) )
))
(declare-datatypes ((List!7261 0))(
  ( (Nil!7258) (Cons!7257 (h!8113 tuple2!7214) (t!12713 List!7261)) )
))
(declare-datatypes ((ListLongMap!6141 0))(
  ( (ListLongMap!6142 (toList!3086 List!7261)) )
))
(declare-fun lt!194232 () ListLongMap!6141)

(declare-fun minValue!515 () V!15779)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25837 0))(
  ( (array!25838 (arr!12365 (Array (_ BitVec 32) (_ BitVec 64))) (size!12717 (_ BitVec 32))) )
))
(declare-fun lt!194231 () array!25837)

(declare-datatypes ((ValueCell!5159 0))(
  ( (ValueCellFull!5159 (v!7790 V!15779)) (EmptyCell!5159) )
))
(declare-datatypes ((array!25839 0))(
  ( (array!25840 (arr!12366 (Array (_ BitVec 32) ValueCell!5159)) (size!12718 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25839)

(declare-fun zeroValue!515 () V!15779)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15779)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1287 (array!25837 array!25839 (_ BitVec 32) (_ BitVec 32) V!15779 V!15779 (_ BitVec 32) Int) ListLongMap!6141)

(assert (=> b!423744 (= lt!194232 (getCurrentListMapNoExtraKeys!1287 lt!194231 (array!25840 (store (arr!12366 _values!549) i!563 (ValueCellFull!5159 v!412)) (size!12718 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194230 () ListLongMap!6141)

(declare-fun _keys!709 () array!25837)

(assert (=> b!423744 (= lt!194230 (getCurrentListMapNoExtraKeys!1287 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423745 () Bool)

(declare-fun res!247842 () Bool)

(assert (=> b!423745 (=> (not res!247842) (not e!251830))))

(assert (=> b!423745 (= res!247842 (bvsle from!863 i!563))))

(declare-fun b!423746 () Bool)

(declare-fun e!251829 () Bool)

(declare-fun e!251832 () Bool)

(assert (=> b!423746 (= e!251829 (and e!251832 mapRes!18129))))

(declare-fun condMapEmpty!18129 () Bool)

(declare-fun mapDefault!18129 () ValueCell!5159)

