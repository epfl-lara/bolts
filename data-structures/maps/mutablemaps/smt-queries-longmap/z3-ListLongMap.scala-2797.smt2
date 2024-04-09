; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40680 () Bool)

(assert start!40680)

(declare-fun b_free!10683 () Bool)

(declare-fun b_next!10683 () Bool)

(assert (=> start!40680 (= b_free!10683 (not b_next!10683))))

(declare-fun tp!37869 () Bool)

(declare-fun b_and!18709 () Bool)

(assert (=> start!40680 (= tp!37869 b_and!18709)))

(declare-fun b!449342 () Bool)

(declare-fun res!267369 () Bool)

(declare-fun e!263463 () Bool)

(assert (=> b!449342 (=> (not res!267369) (not e!263463))))

(declare-datatypes ((array!27809 0))(
  ( (array!27810 (arr!13347 (Array (_ BitVec 32) (_ BitVec 64))) (size!13699 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27809)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27809 (_ BitVec 32)) Bool)

(assert (=> b!449342 (= res!267369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449343 () Bool)

(declare-fun res!267373 () Bool)

(assert (=> b!449343 (=> (not res!267373) (not e!263463))))

(declare-datatypes ((List!7997 0))(
  ( (Nil!7994) (Cons!7993 (h!8849 (_ BitVec 64)) (t!13767 List!7997)) )
))
(declare-fun arrayNoDuplicates!0 (array!27809 (_ BitVec 32) List!7997) Bool)

(assert (=> b!449343 (= res!267373 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7994))))

(declare-fun mapNonEmpty!19665 () Bool)

(declare-fun mapRes!19665 () Bool)

(declare-fun tp!37868 () Bool)

(declare-fun e!263462 () Bool)

(assert (=> mapNonEmpty!19665 (= mapRes!19665 (and tp!37868 e!263462))))

(declare-datatypes ((V!17133 0))(
  ( (V!17134 (val!6055 Int)) )
))
(declare-datatypes ((ValueCell!5667 0))(
  ( (ValueCellFull!5667 (v!8306 V!17133)) (EmptyCell!5667) )
))
(declare-fun mapRest!19665 () (Array (_ BitVec 32) ValueCell!5667))

(declare-datatypes ((array!27811 0))(
  ( (array!27812 (arr!13348 (Array (_ BitVec 32) ValueCell!5667)) (size!13700 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27811)

(declare-fun mapValue!19665 () ValueCell!5667)

(declare-fun mapKey!19665 () (_ BitVec 32))

(assert (=> mapNonEmpty!19665 (= (arr!13348 _values!549) (store mapRest!19665 mapKey!19665 mapValue!19665))))

(declare-fun b!449344 () Bool)

(declare-fun e!263460 () Bool)

(assert (=> b!449344 (= e!263460 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!204347 () array!27809)

(declare-fun minValue!515 () V!17133)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17133)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7886 0))(
  ( (tuple2!7887 (_1!3953 (_ BitVec 64)) (_2!3953 V!17133)) )
))
(declare-datatypes ((List!7998 0))(
  ( (Nil!7995) (Cons!7994 (h!8850 tuple2!7886) (t!13768 List!7998)) )
))
(declare-datatypes ((ListLongMap!6813 0))(
  ( (ListLongMap!6814 (toList!3422 List!7998)) )
))
(declare-fun lt!204348 () ListLongMap!6813)

(declare-fun v!412 () V!17133)

(declare-fun getCurrentListMapNoExtraKeys!1602 (array!27809 array!27811 (_ BitVec 32) (_ BitVec 32) V!17133 V!17133 (_ BitVec 32) Int) ListLongMap!6813)

(assert (=> b!449344 (= lt!204348 (getCurrentListMapNoExtraKeys!1602 lt!204347 (array!27812 (store (arr!13348 _values!549) i!563 (ValueCellFull!5667 v!412)) (size!13700 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204349 () ListLongMap!6813)

(assert (=> b!449344 (= lt!204349 (getCurrentListMapNoExtraKeys!1602 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449345 () Bool)

(declare-fun res!267374 () Bool)

(assert (=> b!449345 (=> (not res!267374) (not e!263463))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449345 (= res!267374 (validKeyInArray!0 k0!794))))

(declare-fun b!449346 () Bool)

(declare-fun e!263461 () Bool)

(declare-fun e!263458 () Bool)

(assert (=> b!449346 (= e!263461 (and e!263458 mapRes!19665))))

(declare-fun condMapEmpty!19665 () Bool)

(declare-fun mapDefault!19665 () ValueCell!5667)

(assert (=> b!449346 (= condMapEmpty!19665 (= (arr!13348 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5667)) mapDefault!19665)))))

(declare-fun res!267371 () Bool)

(assert (=> start!40680 (=> (not res!267371) (not e!263463))))

(assert (=> start!40680 (= res!267371 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13699 _keys!709))))))

(assert (=> start!40680 e!263463))

(declare-fun tp_is_empty!12021 () Bool)

(assert (=> start!40680 tp_is_empty!12021))

(assert (=> start!40680 tp!37869))

(assert (=> start!40680 true))

(declare-fun array_inv!9658 (array!27811) Bool)

(assert (=> start!40680 (and (array_inv!9658 _values!549) e!263461)))

(declare-fun array_inv!9659 (array!27809) Bool)

(assert (=> start!40680 (array_inv!9659 _keys!709)))

(declare-fun mapIsEmpty!19665 () Bool)

(assert (=> mapIsEmpty!19665 mapRes!19665))

(declare-fun b!449347 () Bool)

(assert (=> b!449347 (= e!263463 e!263460)))

(declare-fun res!267370 () Bool)

(assert (=> b!449347 (=> (not res!267370) (not e!263460))))

(assert (=> b!449347 (= res!267370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204347 mask!1025))))

(assert (=> b!449347 (= lt!204347 (array!27810 (store (arr!13347 _keys!709) i!563 k0!794) (size!13699 _keys!709)))))

(declare-fun b!449348 () Bool)

(assert (=> b!449348 (= e!263458 tp_is_empty!12021)))

(declare-fun b!449349 () Bool)

(assert (=> b!449349 (= e!263462 tp_is_empty!12021)))

(declare-fun b!449350 () Bool)

(declare-fun res!267376 () Bool)

(assert (=> b!449350 (=> (not res!267376) (not e!263463))))

(assert (=> b!449350 (= res!267376 (or (= (select (arr!13347 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13347 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449351 () Bool)

(declare-fun res!267367 () Bool)

(assert (=> b!449351 (=> (not res!267367) (not e!263463))))

(assert (=> b!449351 (= res!267367 (and (= (size!13700 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13699 _keys!709) (size!13700 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449352 () Bool)

(declare-fun res!267368 () Bool)

(assert (=> b!449352 (=> (not res!267368) (not e!263460))))

(assert (=> b!449352 (= res!267368 (arrayNoDuplicates!0 lt!204347 #b00000000000000000000000000000000 Nil!7994))))

(declare-fun b!449353 () Bool)

(declare-fun res!267377 () Bool)

(assert (=> b!449353 (=> (not res!267377) (not e!263463))))

(assert (=> b!449353 (= res!267377 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13699 _keys!709))))))

(declare-fun b!449354 () Bool)

(declare-fun res!267375 () Bool)

(assert (=> b!449354 (=> (not res!267375) (not e!263460))))

(assert (=> b!449354 (= res!267375 (bvsle from!863 i!563))))

(declare-fun b!449355 () Bool)

(declare-fun res!267378 () Bool)

(assert (=> b!449355 (=> (not res!267378) (not e!263463))))

(declare-fun arrayContainsKey!0 (array!27809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449355 (= res!267378 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!449356 () Bool)

(declare-fun res!267372 () Bool)

(assert (=> b!449356 (=> (not res!267372) (not e!263463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449356 (= res!267372 (validMask!0 mask!1025))))

(assert (= (and start!40680 res!267371) b!449356))

(assert (= (and b!449356 res!267372) b!449351))

(assert (= (and b!449351 res!267367) b!449342))

(assert (= (and b!449342 res!267369) b!449343))

(assert (= (and b!449343 res!267373) b!449353))

(assert (= (and b!449353 res!267377) b!449345))

(assert (= (and b!449345 res!267374) b!449350))

(assert (= (and b!449350 res!267376) b!449355))

(assert (= (and b!449355 res!267378) b!449347))

(assert (= (and b!449347 res!267370) b!449352))

(assert (= (and b!449352 res!267368) b!449354))

(assert (= (and b!449354 res!267375) b!449344))

(assert (= (and b!449346 condMapEmpty!19665) mapIsEmpty!19665))

(assert (= (and b!449346 (not condMapEmpty!19665)) mapNonEmpty!19665))

(get-info :version)

(assert (= (and mapNonEmpty!19665 ((_ is ValueCellFull!5667) mapValue!19665)) b!449349))

(assert (= (and b!449346 ((_ is ValueCellFull!5667) mapDefault!19665)) b!449348))

(assert (= start!40680 b!449346))

(declare-fun m!433565 () Bool)

(assert (=> b!449347 m!433565))

(declare-fun m!433567 () Bool)

(assert (=> b!449347 m!433567))

(declare-fun m!433569 () Bool)

(assert (=> mapNonEmpty!19665 m!433569))

(declare-fun m!433571 () Bool)

(assert (=> b!449345 m!433571))

(declare-fun m!433573 () Bool)

(assert (=> b!449350 m!433573))

(declare-fun m!433575 () Bool)

(assert (=> b!449343 m!433575))

(declare-fun m!433577 () Bool)

(assert (=> b!449342 m!433577))

(declare-fun m!433579 () Bool)

(assert (=> b!449352 m!433579))

(declare-fun m!433581 () Bool)

(assert (=> b!449344 m!433581))

(declare-fun m!433583 () Bool)

(assert (=> b!449344 m!433583))

(declare-fun m!433585 () Bool)

(assert (=> b!449344 m!433585))

(declare-fun m!433587 () Bool)

(assert (=> start!40680 m!433587))

(declare-fun m!433589 () Bool)

(assert (=> start!40680 m!433589))

(declare-fun m!433591 () Bool)

(assert (=> b!449356 m!433591))

(declare-fun m!433593 () Bool)

(assert (=> b!449355 m!433593))

(check-sat (not b!449344) (not b!449345) (not b!449342) (not b!449355) (not b!449356) (not start!40680) (not b_next!10683) tp_is_empty!12021 (not mapNonEmpty!19665) b_and!18709 (not b!449343) (not b!449347) (not b!449352))
(check-sat b_and!18709 (not b_next!10683))
