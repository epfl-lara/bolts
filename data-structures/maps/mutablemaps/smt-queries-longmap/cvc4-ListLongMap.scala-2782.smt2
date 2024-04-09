; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40592 () Bool)

(assert start!40592)

(declare-fun b_free!10595 () Bool)

(declare-fun b_next!10595 () Bool)

(assert (=> start!40592 (= b_free!10595 (not b_next!10595))))

(declare-fun tp!37605 () Bool)

(declare-fun b_and!18621 () Bool)

(assert (=> start!40592 (= tp!37605 b_and!18621)))

(declare-fun b!447362 () Bool)

(declare-fun res!265790 () Bool)

(declare-fun e!262667 () Bool)

(assert (=> b!447362 (=> (not res!265790) (not e!262667))))

(declare-datatypes ((array!27635 0))(
  ( (array!27636 (arr!13260 (Array (_ BitVec 32) (_ BitVec 64))) (size!13612 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27635)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27635 (_ BitVec 32)) Bool)

(assert (=> b!447362 (= res!265790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447363 () Bool)

(declare-fun res!265793 () Bool)

(assert (=> b!447363 (=> (not res!265793) (not e!262667))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447363 (= res!265793 (validKeyInArray!0 k!794))))

(declare-fun b!447364 () Bool)

(declare-fun e!262666 () Bool)

(assert (=> b!447364 (= e!262667 e!262666)))

(declare-fun res!265792 () Bool)

(assert (=> b!447364 (=> (not res!265792) (not e!262666))))

(declare-fun lt!203952 () array!27635)

(assert (=> b!447364 (= res!265792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203952 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447364 (= lt!203952 (array!27636 (store (arr!13260 _keys!709) i!563 k!794) (size!13612 _keys!709)))))

(declare-fun mapIsEmpty!19533 () Bool)

(declare-fun mapRes!19533 () Bool)

(assert (=> mapIsEmpty!19533 mapRes!19533))

(declare-fun b!447365 () Bool)

(declare-fun res!265783 () Bool)

(assert (=> b!447365 (=> (not res!265783) (not e!262667))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17015 0))(
  ( (V!17016 (val!6011 Int)) )
))
(declare-datatypes ((ValueCell!5623 0))(
  ( (ValueCellFull!5623 (v!8262 V!17015)) (EmptyCell!5623) )
))
(declare-datatypes ((array!27637 0))(
  ( (array!27638 (arr!13261 (Array (_ BitVec 32) ValueCell!5623)) (size!13613 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27637)

(assert (=> b!447365 (= res!265783 (and (= (size!13613 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13612 _keys!709) (size!13613 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447366 () Bool)

(declare-fun e!262668 () Bool)

(declare-fun tp_is_empty!11933 () Bool)

(assert (=> b!447366 (= e!262668 tp_is_empty!11933)))

(declare-fun b!447367 () Bool)

(declare-fun e!262671 () Bool)

(assert (=> b!447367 (= e!262671 tp_is_empty!11933)))

(declare-fun b!447368 () Bool)

(declare-fun res!265788 () Bool)

(assert (=> b!447368 (=> (not res!265788) (not e!262667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447368 (= res!265788 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19533 () Bool)

(declare-fun tp!37604 () Bool)

(assert (=> mapNonEmpty!19533 (= mapRes!19533 (and tp!37604 e!262668))))

(declare-fun mapKey!19533 () (_ BitVec 32))

(declare-fun mapValue!19533 () ValueCell!5623)

(declare-fun mapRest!19533 () (Array (_ BitVec 32) ValueCell!5623))

(assert (=> mapNonEmpty!19533 (= (arr!13261 _values!549) (store mapRest!19533 mapKey!19533 mapValue!19533))))

(declare-fun b!447369 () Bool)

(declare-fun res!265787 () Bool)

(assert (=> b!447369 (=> (not res!265787) (not e!262666))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!447369 (= res!265787 (bvsle from!863 i!563))))

(declare-fun b!447370 () Bool)

(assert (=> b!447370 (= e!262666 false)))

(declare-fun minValue!515 () V!17015)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7810 0))(
  ( (tuple2!7811 (_1!3915 (_ BitVec 64)) (_2!3915 V!17015)) )
))
(declare-datatypes ((List!7921 0))(
  ( (Nil!7918) (Cons!7917 (h!8773 tuple2!7810) (t!13691 List!7921)) )
))
(declare-datatypes ((ListLongMap!6737 0))(
  ( (ListLongMap!6738 (toList!3384 List!7921)) )
))
(declare-fun lt!203951 () ListLongMap!6737)

(declare-fun zeroValue!515 () V!17015)

(declare-fun v!412 () V!17015)

(declare-fun getCurrentListMapNoExtraKeys!1564 (array!27635 array!27637 (_ BitVec 32) (_ BitVec 32) V!17015 V!17015 (_ BitVec 32) Int) ListLongMap!6737)

(assert (=> b!447370 (= lt!203951 (getCurrentListMapNoExtraKeys!1564 lt!203952 (array!27638 (store (arr!13261 _values!549) i!563 (ValueCellFull!5623 v!412)) (size!13613 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203953 () ListLongMap!6737)

(assert (=> b!447370 (= lt!203953 (getCurrentListMapNoExtraKeys!1564 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447371 () Bool)

(declare-fun res!265789 () Bool)

(assert (=> b!447371 (=> (not res!265789) (not e!262667))))

(declare-fun arrayContainsKey!0 (array!27635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447371 (= res!265789 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!265786 () Bool)

(assert (=> start!40592 (=> (not res!265786) (not e!262667))))

(assert (=> start!40592 (= res!265786 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13612 _keys!709))))))

(assert (=> start!40592 e!262667))

(assert (=> start!40592 tp_is_empty!11933))

(assert (=> start!40592 tp!37605))

(assert (=> start!40592 true))

(declare-fun e!262669 () Bool)

(declare-fun array_inv!9602 (array!27637) Bool)

(assert (=> start!40592 (and (array_inv!9602 _values!549) e!262669)))

(declare-fun array_inv!9603 (array!27635) Bool)

(assert (=> start!40592 (array_inv!9603 _keys!709)))

(declare-fun b!447372 () Bool)

(assert (=> b!447372 (= e!262669 (and e!262671 mapRes!19533))))

(declare-fun condMapEmpty!19533 () Bool)

(declare-fun mapDefault!19533 () ValueCell!5623)

