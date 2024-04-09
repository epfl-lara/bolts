; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40248 () Bool)

(assert start!40248)

(declare-fun b_free!10507 () Bool)

(declare-fun b_next!10507 () Bool)

(assert (=> start!40248 (= b_free!10507 (not b_next!10507))))

(declare-fun tp!37050 () Bool)

(declare-fun b_and!18493 () Bool)

(assert (=> start!40248 (= tp!37050 b_and!18493)))

(declare-fun b!441329 () Bool)

(declare-fun res!261334 () Bool)

(declare-fun e!259859 () Bool)

(assert (=> b!441329 (=> (not res!261334) (not e!259859))))

(declare-datatypes ((array!27105 0))(
  ( (array!27106 (arr!12999 (Array (_ BitVec 32) (_ BitVec 64))) (size!13351 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27105)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441329 (= res!261334 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!441330 () Bool)

(declare-fun res!261337 () Bool)

(assert (=> b!441330 (=> (not res!261337) (not e!259859))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441330 (= res!261337 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13351 _keys!709))))))

(declare-fun b!441331 () Bool)

(declare-fun e!259858 () Bool)

(declare-fun tp_is_empty!11659 () Bool)

(assert (=> b!441331 (= e!259858 tp_is_empty!11659)))

(declare-fun b!441332 () Bool)

(declare-fun e!259862 () Bool)

(assert (=> b!441332 (= e!259859 e!259862)))

(declare-fun res!261345 () Bool)

(assert (=> b!441332 (=> (not res!261345) (not e!259862))))

(declare-fun lt!202887 () array!27105)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27105 (_ BitVec 32)) Bool)

(assert (=> b!441332 (= res!261345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202887 mask!1025))))

(assert (=> b!441332 (= lt!202887 (array!27106 (store (arr!12999 _keys!709) i!563 k!794) (size!13351 _keys!709)))))

(declare-fun b!441333 () Bool)

(declare-fun e!259864 () Bool)

(assert (=> b!441333 (= e!259864 (not true))))

(declare-datatypes ((V!16651 0))(
  ( (V!16652 (val!5874 Int)) )
))
(declare-fun minValue!515 () V!16651)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5486 0))(
  ( (ValueCellFull!5486 (v!8117 V!16651)) (EmptyCell!5486) )
))
(declare-datatypes ((array!27107 0))(
  ( (array!27108 (arr!13000 (Array (_ BitVec 32) ValueCell!5486)) (size!13352 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27107)

(declare-fun zeroValue!515 () V!16651)

(declare-fun lt!202883 () array!27107)

(declare-fun v!412 () V!16651)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7738 0))(
  ( (tuple2!7739 (_1!3879 (_ BitVec 64)) (_2!3879 V!16651)) )
))
(declare-datatypes ((List!7780 0))(
  ( (Nil!7777) (Cons!7776 (h!8632 tuple2!7738) (t!13544 List!7780)) )
))
(declare-datatypes ((ListLongMap!6665 0))(
  ( (ListLongMap!6666 (toList!3348 List!7780)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1530 (array!27105 array!27107 (_ BitVec 32) (_ BitVec 32) V!16651 V!16651 (_ BitVec 32) Int) ListLongMap!6665)

(declare-fun +!1481 (ListLongMap!6665 tuple2!7738) ListLongMap!6665)

(assert (=> b!441333 (= (getCurrentListMapNoExtraKeys!1530 lt!202887 lt!202883 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1481 (getCurrentListMapNoExtraKeys!1530 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7739 k!794 v!412)))))

(declare-datatypes ((Unit!13077 0))(
  ( (Unit!13078) )
))
(declare-fun lt!202886 () Unit!13077)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!659 (array!27105 array!27107 (_ BitVec 32) (_ BitVec 32) V!16651 V!16651 (_ BitVec 32) (_ BitVec 64) V!16651 (_ BitVec 32) Int) Unit!13077)

(assert (=> b!441333 (= lt!202886 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!659 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441334 () Bool)

(declare-fun res!261344 () Bool)

(assert (=> b!441334 (=> (not res!261344) (not e!259859))))

(assert (=> b!441334 (= res!261344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441335 () Bool)

(declare-fun res!261340 () Bool)

(assert (=> b!441335 (=> (not res!261340) (not e!259862))))

(assert (=> b!441335 (= res!261340 (bvsle from!863 i!563))))

(declare-fun b!441336 () Bool)

(declare-fun e!259861 () Bool)

(declare-fun mapRes!19110 () Bool)

(assert (=> b!441336 (= e!259861 (and e!259858 mapRes!19110))))

(declare-fun condMapEmpty!19110 () Bool)

(declare-fun mapDefault!19110 () ValueCell!5486)

