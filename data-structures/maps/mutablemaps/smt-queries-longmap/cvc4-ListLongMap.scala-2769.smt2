; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40478 () Bool)

(assert start!40478)

(declare-fun b_free!10541 () Bool)

(declare-fun b_next!10541 () Bool)

(assert (=> start!40478 (= b_free!10541 (not b_next!10541))))

(declare-fun tp!37400 () Bool)

(declare-fun b_and!18543 () Bool)

(assert (=> start!40478 (= tp!37400 b_and!18543)))

(declare-fun b!445357 () Bool)

(declare-fun res!264350 () Bool)

(declare-fun e!261771 () Bool)

(assert (=> b!445357 (=> (not res!264350) (not e!261771))))

(declare-datatypes ((array!27479 0))(
  ( (array!27480 (arr!13184 (Array (_ BitVec 32) (_ BitVec 64))) (size!13536 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27479)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27479 (_ BitVec 32)) Bool)

(assert (=> b!445357 (= res!264350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445358 () Bool)

(declare-fun e!261773 () Bool)

(declare-datatypes ((V!16911 0))(
  ( (V!16912 (val!5972 Int)) )
))
(declare-datatypes ((tuple2!7764 0))(
  ( (tuple2!7765 (_1!3892 (_ BitVec 64)) (_2!3892 V!16911)) )
))
(declare-datatypes ((List!7865 0))(
  ( (Nil!7862) (Cons!7861 (h!8717 tuple2!7764) (t!13631 List!7865)) )
))
(declare-datatypes ((ListLongMap!6691 0))(
  ( (ListLongMap!6692 (toList!3361 List!7865)) )
))
(declare-fun call!29577 () ListLongMap!6691)

(declare-fun call!29576 () ListLongMap!6691)

(assert (=> b!445358 (= e!261773 (= call!29577 call!29576))))

(declare-fun mapNonEmpty!19410 () Bool)

(declare-fun mapRes!19410 () Bool)

(declare-fun tp!37401 () Bool)

(declare-fun e!261774 () Bool)

(assert (=> mapNonEmpty!19410 (= mapRes!19410 (and tp!37401 e!261774))))

(declare-datatypes ((ValueCell!5584 0))(
  ( (ValueCellFull!5584 (v!8219 V!16911)) (EmptyCell!5584) )
))
(declare-datatypes ((array!27481 0))(
  ( (array!27482 (arr!13185 (Array (_ BitVec 32) ValueCell!5584)) (size!13537 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27481)

(declare-fun mapRest!19410 () (Array (_ BitVec 32) ValueCell!5584))

(declare-fun mapKey!19410 () (_ BitVec 32))

(declare-fun mapValue!19410 () ValueCell!5584)

(assert (=> mapNonEmpty!19410 (= (arr!13185 _values!549) (store mapRest!19410 mapKey!19410 mapValue!19410))))

(declare-fun b!445359 () Bool)

(declare-fun tp_is_empty!11855 () Bool)

(assert (=> b!445359 (= e!261774 tp_is_empty!11855)))

(declare-fun mapIsEmpty!19410 () Bool)

(assert (=> mapIsEmpty!19410 mapRes!19410))

(declare-fun b!445361 () Bool)

(declare-fun e!261772 () Bool)

(assert (=> b!445361 (= e!261771 e!261772)))

(declare-fun res!264351 () Bool)

(assert (=> b!445361 (=> (not res!264351) (not e!261772))))

(declare-fun lt!203610 () array!27479)

(assert (=> b!445361 (= res!264351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203610 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445361 (= lt!203610 (array!27480 (store (arr!13184 _keys!709) i!563 k!794) (size!13536 _keys!709)))))

(declare-fun minValue!515 () V!16911)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29573 () Bool)

(declare-fun zeroValue!515 () V!16911)

(declare-fun c!55782 () Bool)

(declare-fun v!412 () V!16911)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1543 (array!27479 array!27481 (_ BitVec 32) (_ BitVec 32) V!16911 V!16911 (_ BitVec 32) Int) ListLongMap!6691)

(assert (=> bm!29573 (= call!29576 (getCurrentListMapNoExtraKeys!1543 (ite c!55782 lt!203610 _keys!709) (ite c!55782 (array!27482 (store (arr!13185 _values!549) i!563 (ValueCellFull!5584 v!412)) (size!13537 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445362 () Bool)

(declare-fun res!264349 () Bool)

(assert (=> b!445362 (=> (not res!264349) (not e!261771))))

(assert (=> b!445362 (= res!264349 (and (= (size!13537 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13536 _keys!709) (size!13537 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445363 () Bool)

(declare-fun e!261770 () Bool)

(declare-fun e!261768 () Bool)

(assert (=> b!445363 (= e!261770 (and e!261768 mapRes!19410))))

(declare-fun condMapEmpty!19410 () Bool)

(declare-fun mapDefault!19410 () ValueCell!5584)

