; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40598 () Bool)

(assert start!40598)

(declare-fun b_free!10601 () Bool)

(declare-fun b_next!10601 () Bool)

(assert (=> start!40598 (= b_free!10601 (not b_next!10601))))

(declare-fun tp!37623 () Bool)

(declare-fun b_and!18627 () Bool)

(assert (=> start!40598 (= tp!37623 b_and!18627)))

(declare-fun b!447497 () Bool)

(declare-fun res!265895 () Bool)

(declare-fun e!262720 () Bool)

(assert (=> b!447497 (=> (not res!265895) (not e!262720))))

(declare-datatypes ((array!27645 0))(
  ( (array!27646 (arr!13265 (Array (_ BitVec 32) (_ BitVec 64))) (size!13617 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27645)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17023 0))(
  ( (V!17024 (val!6014 Int)) )
))
(declare-datatypes ((ValueCell!5626 0))(
  ( (ValueCellFull!5626 (v!8265 V!17023)) (EmptyCell!5626) )
))
(declare-datatypes ((array!27647 0))(
  ( (array!27648 (arr!13266 (Array (_ BitVec 32) ValueCell!5626)) (size!13618 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27647)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!447497 (= res!265895 (and (= (size!13618 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13617 _keys!709) (size!13618 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447498 () Bool)

(declare-fun res!265891 () Bool)

(assert (=> b!447498 (=> (not res!265891) (not e!262720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27645 (_ BitVec 32)) Bool)

(assert (=> b!447498 (= res!265891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447499 () Bool)

(declare-fun e!262721 () Bool)

(assert (=> b!447499 (= e!262721 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17023)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17023)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!203978 () array!27645)

(declare-fun v!412 () V!17023)

(declare-datatypes ((tuple2!7814 0))(
  ( (tuple2!7815 (_1!3917 (_ BitVec 64)) (_2!3917 V!17023)) )
))
(declare-datatypes ((List!7924 0))(
  ( (Nil!7921) (Cons!7920 (h!8776 tuple2!7814) (t!13694 List!7924)) )
))
(declare-datatypes ((ListLongMap!6741 0))(
  ( (ListLongMap!6742 (toList!3386 List!7924)) )
))
(declare-fun lt!203980 () ListLongMap!6741)

(declare-fun getCurrentListMapNoExtraKeys!1566 (array!27645 array!27647 (_ BitVec 32) (_ BitVec 32) V!17023 V!17023 (_ BitVec 32) Int) ListLongMap!6741)

(assert (=> b!447499 (= lt!203980 (getCurrentListMapNoExtraKeys!1566 lt!203978 (array!27648 (store (arr!13266 _values!549) i!563 (ValueCellFull!5626 v!412)) (size!13618 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!203979 () ListLongMap!6741)

(assert (=> b!447499 (= lt!203979 (getCurrentListMapNoExtraKeys!1566 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447500 () Bool)

(declare-fun res!265900 () Bool)

(assert (=> b!447500 (=> (not res!265900) (not e!262720))))

(assert (=> b!447500 (= res!265900 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13617 _keys!709))))))

(declare-fun mapNonEmpty!19542 () Bool)

(declare-fun mapRes!19542 () Bool)

(declare-fun tp!37622 () Bool)

(declare-fun e!262722 () Bool)

(assert (=> mapNonEmpty!19542 (= mapRes!19542 (and tp!37622 e!262722))))

(declare-fun mapValue!19542 () ValueCell!5626)

(declare-fun mapRest!19542 () (Array (_ BitVec 32) ValueCell!5626))

(declare-fun mapKey!19542 () (_ BitVec 32))

(assert (=> mapNonEmpty!19542 (= (arr!13266 _values!549) (store mapRest!19542 mapKey!19542 mapValue!19542))))

(declare-fun b!447501 () Bool)

(declare-fun res!265897 () Bool)

(assert (=> b!447501 (=> (not res!265897) (not e!262721))))

(declare-datatypes ((List!7925 0))(
  ( (Nil!7922) (Cons!7921 (h!8777 (_ BitVec 64)) (t!13695 List!7925)) )
))
(declare-fun arrayNoDuplicates!0 (array!27645 (_ BitVec 32) List!7925) Bool)

(assert (=> b!447501 (= res!265897 (arrayNoDuplicates!0 lt!203978 #b00000000000000000000000000000000 Nil!7922))))

(declare-fun res!265894 () Bool)

(assert (=> start!40598 (=> (not res!265894) (not e!262720))))

(assert (=> start!40598 (= res!265894 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13617 _keys!709))))))

(assert (=> start!40598 e!262720))

(declare-fun tp_is_empty!11939 () Bool)

(assert (=> start!40598 tp_is_empty!11939))

(assert (=> start!40598 tp!37623))

(assert (=> start!40598 true))

(declare-fun e!262723 () Bool)

(declare-fun array_inv!9606 (array!27647) Bool)

(assert (=> start!40598 (and (array_inv!9606 _values!549) e!262723)))

(declare-fun array_inv!9607 (array!27645) Bool)

(assert (=> start!40598 (array_inv!9607 _keys!709)))

(declare-fun b!447502 () Bool)

(declare-fun res!265892 () Bool)

(assert (=> b!447502 (=> (not res!265892) (not e!262720))))

(assert (=> b!447502 (= res!265892 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7922))))

(declare-fun b!447503 () Bool)

(declare-fun res!265901 () Bool)

(assert (=> b!447503 (=> (not res!265901) (not e!262721))))

(assert (=> b!447503 (= res!265901 (bvsle from!863 i!563))))

(declare-fun b!447504 () Bool)

(declare-fun e!262724 () Bool)

(assert (=> b!447504 (= e!262723 (and e!262724 mapRes!19542))))

(declare-fun condMapEmpty!19542 () Bool)

(declare-fun mapDefault!19542 () ValueCell!5626)

