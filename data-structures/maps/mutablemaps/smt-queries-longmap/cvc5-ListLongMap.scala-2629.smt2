; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39600 () Bool)

(assert start!39600)

(declare-fun b_free!9859 () Bool)

(declare-fun b_next!9859 () Bool)

(assert (=> start!39600 (= b_free!9859 (not b_next!9859))))

(declare-fun tp!35106 () Bool)

(declare-fun b_and!17533 () Bool)

(assert (=> start!39600 (= tp!35106 b_and!17533)))

(declare-fun b!423879 () Bool)

(declare-fun e!251882 () Bool)

(assert (=> b!423879 (= e!251882 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15787 0))(
  ( (V!15788 (val!5550 Int)) )
))
(declare-fun minValue!515 () V!15787)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5162 0))(
  ( (ValueCellFull!5162 (v!7793 V!15787)) (EmptyCell!5162) )
))
(declare-datatypes ((array!25849 0))(
  ( (array!25850 (arr!12371 (Array (_ BitVec 32) ValueCell!5162)) (size!12723 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25849)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7218 0))(
  ( (tuple2!7219 (_1!3619 (_ BitVec 64)) (_2!3619 V!15787)) )
))
(declare-datatypes ((List!7265 0))(
  ( (Nil!7262) (Cons!7261 (h!8117 tuple2!7218) (t!12717 List!7265)) )
))
(declare-datatypes ((ListLongMap!6145 0))(
  ( (ListLongMap!6146 (toList!3088 List!7265)) )
))
(declare-fun lt!194257 () ListLongMap!6145)

(declare-fun v!412 () V!15787)

(declare-fun zeroValue!515 () V!15787)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25851 0))(
  ( (array!25852 (arr!12372 (Array (_ BitVec 32) (_ BitVec 64))) (size!12724 (_ BitVec 32))) )
))
(declare-fun lt!194258 () array!25851)

(declare-fun getCurrentListMapNoExtraKeys!1289 (array!25851 array!25849 (_ BitVec 32) (_ BitVec 32) V!15787 V!15787 (_ BitVec 32) Int) ListLongMap!6145)

(assert (=> b!423879 (= lt!194257 (getCurrentListMapNoExtraKeys!1289 lt!194258 (array!25850 (store (arr!12371 _values!549) i!563 (ValueCellFull!5162 v!412)) (size!12723 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194259 () ListLongMap!6145)

(declare-fun _keys!709 () array!25851)

(assert (=> b!423879 (= lt!194259 (getCurrentListMapNoExtraKeys!1289 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423880 () Bool)

(declare-fun res!247947 () Bool)

(declare-fun e!251883 () Bool)

(assert (=> b!423880 (=> (not res!247947) (not e!251883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423880 (= res!247947 (validMask!0 mask!1025))))

(declare-fun b!423881 () Bool)

(declare-fun res!247950 () Bool)

(assert (=> b!423881 (=> (not res!247950) (not e!251883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25851 (_ BitVec 32)) Bool)

(assert (=> b!423881 (= res!247950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423882 () Bool)

(declare-fun e!251887 () Bool)

(declare-fun e!251886 () Bool)

(declare-fun mapRes!18138 () Bool)

(assert (=> b!423882 (= e!251887 (and e!251886 mapRes!18138))))

(declare-fun condMapEmpty!18138 () Bool)

(declare-fun mapDefault!18138 () ValueCell!5162)

