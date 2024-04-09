; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40570 () Bool)

(assert start!40570)

(declare-fun b_free!10573 () Bool)

(declare-fun b_next!10573 () Bool)

(assert (=> start!40570 (= b_free!10573 (not b_next!10573))))

(declare-fun tp!37539 () Bool)

(declare-fun b_and!18599 () Bool)

(assert (=> start!40570 (= tp!37539 b_and!18599)))

(declare-fun res!265396 () Bool)

(declare-fun e!262468 () Bool)

(assert (=> start!40570 (=> (not res!265396) (not e!262468))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27591 0))(
  ( (array!27592 (arr!13238 (Array (_ BitVec 32) (_ BitVec 64))) (size!13590 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27591)

(assert (=> start!40570 (= res!265396 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13590 _keys!709))))))

(assert (=> start!40570 e!262468))

(declare-fun tp_is_empty!11911 () Bool)

(assert (=> start!40570 tp_is_empty!11911))

(assert (=> start!40570 tp!37539))

(assert (=> start!40570 true))

(declare-datatypes ((V!16987 0))(
  ( (V!16988 (val!6000 Int)) )
))
(declare-datatypes ((ValueCell!5612 0))(
  ( (ValueCellFull!5612 (v!8251 V!16987)) (EmptyCell!5612) )
))
(declare-datatypes ((array!27593 0))(
  ( (array!27594 (arr!13239 (Array (_ BitVec 32) ValueCell!5612)) (size!13591 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27593)

(declare-fun e!262471 () Bool)

(declare-fun array_inv!9586 (array!27593) Bool)

(assert (=> start!40570 (and (array_inv!9586 _values!549) e!262471)))

(declare-fun array_inv!9587 (array!27591) Bool)

(assert (=> start!40570 (array_inv!9587 _keys!709)))

(declare-fun b!446867 () Bool)

(declare-fun res!265395 () Bool)

(assert (=> b!446867 (=> (not res!265395) (not e!262468))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446867 (= res!265395 (validKeyInArray!0 k!794))))

(declare-fun b!446868 () Bool)

(declare-fun res!265390 () Bool)

(assert (=> b!446868 (=> (not res!265390) (not e!262468))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446868 (= res!265390 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19500 () Bool)

(declare-fun mapRes!19500 () Bool)

(assert (=> mapIsEmpty!19500 mapRes!19500))

(declare-fun b!446869 () Bool)

(declare-fun e!262470 () Bool)

(assert (=> b!446869 (= e!262470 tp_is_empty!11911)))

(declare-fun b!446870 () Bool)

(declare-fun res!265392 () Bool)

(assert (=> b!446870 (=> (not res!265392) (not e!262468))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!446870 (= res!265392 (and (= (size!13591 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13590 _keys!709) (size!13591 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446871 () Bool)

(declare-fun res!265397 () Bool)

(assert (=> b!446871 (=> (not res!265397) (not e!262468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27591 (_ BitVec 32)) Bool)

(assert (=> b!446871 (= res!265397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446872 () Bool)

(declare-fun e!262473 () Bool)

(assert (=> b!446872 (= e!262473 false)))

(declare-fun minValue!515 () V!16987)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16987)

(declare-datatypes ((tuple2!7790 0))(
  ( (tuple2!7791 (_1!3905 (_ BitVec 64)) (_2!3905 V!16987)) )
))
(declare-datatypes ((List!7902 0))(
  ( (Nil!7899) (Cons!7898 (h!8754 tuple2!7790) (t!13672 List!7902)) )
))
(declare-datatypes ((ListLongMap!6717 0))(
  ( (ListLongMap!6718 (toList!3374 List!7902)) )
))
(declare-fun lt!203868 () ListLongMap!6717)

(declare-fun getCurrentListMapNoExtraKeys!1554 (array!27591 array!27593 (_ BitVec 32) (_ BitVec 32) V!16987 V!16987 (_ BitVec 32) Int) ListLongMap!6717)

(assert (=> b!446872 (= lt!203868 (getCurrentListMapNoExtraKeys!1554 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!446873 () Bool)

(declare-fun res!265398 () Bool)

(assert (=> b!446873 (=> (not res!265398) (not e!262468))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446873 (= res!265398 (or (= (select (arr!13238 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13238 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446874 () Bool)

(declare-fun res!265387 () Bool)

(assert (=> b!446874 (=> (not res!265387) (not e!262473))))

(assert (=> b!446874 (= res!265387 (bvsle from!863 i!563))))

(declare-fun b!446875 () Bool)

(declare-fun res!265388 () Bool)

(assert (=> b!446875 (=> (not res!265388) (not e!262468))))

(declare-datatypes ((List!7903 0))(
  ( (Nil!7900) (Cons!7899 (h!8755 (_ BitVec 64)) (t!13673 List!7903)) )
))
(declare-fun arrayNoDuplicates!0 (array!27591 (_ BitVec 32) List!7903) Bool)

(assert (=> b!446875 (= res!265388 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7900))))

(declare-fun mapNonEmpty!19500 () Bool)

(declare-fun tp!37538 () Bool)

(assert (=> mapNonEmpty!19500 (= mapRes!19500 (and tp!37538 e!262470))))

(declare-fun mapValue!19500 () ValueCell!5612)

(declare-fun mapKey!19500 () (_ BitVec 32))

(declare-fun mapRest!19500 () (Array (_ BitVec 32) ValueCell!5612))

(assert (=> mapNonEmpty!19500 (= (arr!13239 _values!549) (store mapRest!19500 mapKey!19500 mapValue!19500))))

(declare-fun b!446876 () Bool)

(declare-fun res!265389 () Bool)

(assert (=> b!446876 (=> (not res!265389) (not e!262468))))

(assert (=> b!446876 (= res!265389 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13590 _keys!709))))))

(declare-fun b!446877 () Bool)

(assert (=> b!446877 (= e!262468 e!262473)))

(declare-fun res!265391 () Bool)

(assert (=> b!446877 (=> (not res!265391) (not e!262473))))

(declare-fun lt!203869 () array!27591)

(assert (=> b!446877 (= res!265391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203869 mask!1025))))

(assert (=> b!446877 (= lt!203869 (array!27592 (store (arr!13238 _keys!709) i!563 k!794) (size!13590 _keys!709)))))

(declare-fun b!446878 () Bool)

(declare-fun res!265393 () Bool)

(assert (=> b!446878 (=> (not res!265393) (not e!262473))))

(assert (=> b!446878 (= res!265393 (arrayNoDuplicates!0 lt!203869 #b00000000000000000000000000000000 Nil!7900))))

(declare-fun b!446879 () Bool)

(declare-fun e!262469 () Bool)

(assert (=> b!446879 (= e!262471 (and e!262469 mapRes!19500))))

(declare-fun condMapEmpty!19500 () Bool)

(declare-fun mapDefault!19500 () ValueCell!5612)

