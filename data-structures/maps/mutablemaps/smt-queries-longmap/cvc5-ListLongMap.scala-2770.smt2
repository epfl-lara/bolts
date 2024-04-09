; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40480 () Bool)

(assert start!40480)

(declare-fun b_free!10543 () Bool)

(declare-fun b_next!10543 () Bool)

(assert (=> start!40480 (= b_free!10543 (not b_next!10543))))

(declare-fun tp!37407 () Bool)

(declare-fun b_and!18545 () Bool)

(assert (=> start!40480 (= tp!37407 b_and!18545)))

(declare-fun b!445408 () Bool)

(declare-fun res!264383 () Bool)

(declare-fun e!261792 () Bool)

(assert (=> b!445408 (=> (not res!264383) (not e!261792))))

(declare-datatypes ((array!27483 0))(
  ( (array!27484 (arr!13186 (Array (_ BitVec 32) (_ BitVec 64))) (size!13538 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27483)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27483 (_ BitVec 32)) Bool)

(assert (=> b!445408 (= res!264383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!264385 () Bool)

(assert (=> start!40480 (=> (not res!264385) (not e!261792))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40480 (= res!264385 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13538 _keys!709))))))

(assert (=> start!40480 e!261792))

(declare-fun tp_is_empty!11857 () Bool)

(assert (=> start!40480 tp_is_empty!11857))

(assert (=> start!40480 tp!37407))

(assert (=> start!40480 true))

(declare-datatypes ((V!16915 0))(
  ( (V!16916 (val!5973 Int)) )
))
(declare-datatypes ((ValueCell!5585 0))(
  ( (ValueCellFull!5585 (v!8220 V!16915)) (EmptyCell!5585) )
))
(declare-datatypes ((array!27485 0))(
  ( (array!27486 (arr!13187 (Array (_ BitVec 32) ValueCell!5585)) (size!13539 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27485)

(declare-fun e!261794 () Bool)

(declare-fun array_inv!9552 (array!27485) Bool)

(assert (=> start!40480 (and (array_inv!9552 _values!549) e!261794)))

(declare-fun array_inv!9553 (array!27483) Bool)

(assert (=> start!40480 (array_inv!9553 _keys!709)))

(declare-fun b!445409 () Bool)

(declare-fun res!264377 () Bool)

(assert (=> b!445409 (=> (not res!264377) (not e!261792))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!445409 (= res!264377 (and (= (size!13539 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13538 _keys!709) (size!13539 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445410 () Bool)

(declare-fun res!264387 () Bool)

(assert (=> b!445410 (=> (not res!264387) (not e!261792))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445410 (= res!264387 (or (= (select (arr!13186 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13186 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445411 () Bool)

(declare-fun e!261793 () Bool)

(declare-datatypes ((tuple2!7766 0))(
  ( (tuple2!7767 (_1!3893 (_ BitVec 64)) (_2!3893 V!16915)) )
))
(declare-datatypes ((List!7866 0))(
  ( (Nil!7863) (Cons!7862 (h!8718 tuple2!7766) (t!13632 List!7866)) )
))
(declare-datatypes ((ListLongMap!6693 0))(
  ( (ListLongMap!6694 (toList!3362 List!7866)) )
))
(declare-fun call!29582 () ListLongMap!6693)

(declare-fun call!29583 () ListLongMap!6693)

(assert (=> b!445411 (= e!261793 (= call!29582 call!29583))))

(declare-fun minValue!515 () V!16915)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!55785 () Bool)

(declare-fun zeroValue!515 () V!16915)

(declare-fun lt!203616 () array!27483)

(declare-fun bm!29579 () Bool)

(declare-fun v!412 () V!16915)

(declare-fun getCurrentListMapNoExtraKeys!1544 (array!27483 array!27485 (_ BitVec 32) (_ BitVec 32) V!16915 V!16915 (_ BitVec 32) Int) ListLongMap!6693)

(assert (=> bm!29579 (= call!29582 (getCurrentListMapNoExtraKeys!1544 (ite c!55785 _keys!709 lt!203616) (ite c!55785 _values!549 (array!27486 (store (arr!13187 _values!549) i!563 (ValueCellFull!5585 v!412)) (size!13539 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445412 () Bool)

(declare-fun res!264381 () Bool)

(assert (=> b!445412 (=> (not res!264381) (not e!261792))))

(declare-datatypes ((List!7867 0))(
  ( (Nil!7864) (Cons!7863 (h!8719 (_ BitVec 64)) (t!13633 List!7867)) )
))
(declare-fun arrayNoDuplicates!0 (array!27483 (_ BitVec 32) List!7867) Bool)

(assert (=> b!445412 (= res!264381 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7864))))

(declare-fun b!445413 () Bool)

(declare-fun res!264386 () Bool)

(assert (=> b!445413 (=> (not res!264386) (not e!261792))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445413 (= res!264386 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445414 () Bool)

(declare-fun res!264378 () Bool)

(declare-fun e!261795 () Bool)

(assert (=> b!445414 (=> (not res!264378) (not e!261795))))

(assert (=> b!445414 (= res!264378 (arrayNoDuplicates!0 lt!203616 #b00000000000000000000000000000000 Nil!7864))))

(declare-fun b!445415 () Bool)

(declare-fun res!264380 () Bool)

(assert (=> b!445415 (=> (not res!264380) (not e!261792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445415 (= res!264380 (validKeyInArray!0 k!794))))

(declare-fun b!445416 () Bool)

(declare-fun e!261789 () Bool)

(declare-fun mapRes!19413 () Bool)

(assert (=> b!445416 (= e!261794 (and e!261789 mapRes!19413))))

(declare-fun condMapEmpty!19413 () Bool)

(declare-fun mapDefault!19413 () ValueCell!5585)

