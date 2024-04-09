; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35452 () Bool)

(assert start!35452)

(declare-fun b_free!7831 () Bool)

(declare-fun b_next!7831 () Bool)

(assert (=> start!35452 (= b_free!7831 (not b_next!7831))))

(declare-fun tp!27278 () Bool)

(declare-fun b_and!15091 () Bool)

(assert (=> start!35452 (= tp!27278 b_and!15091)))

(declare-fun b!354753 () Bool)

(declare-fun res!196783 () Bool)

(declare-fun e!217414 () Bool)

(assert (=> b!354753 (=> (not res!196783) (not e!217414))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19341 0))(
  ( (array!19342 (arr!9161 (Array (_ BitVec 32) (_ BitVec 64))) (size!9513 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19341)

(assert (=> b!354753 (= res!196783 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9513 _keys!1456))))))

(declare-fun b!354754 () Bool)

(declare-fun e!217412 () Bool)

(declare-fun tp_is_empty!7897 () Bool)

(assert (=> b!354754 (= e!217412 tp_is_empty!7897)))

(declare-fun b!354755 () Bool)

(declare-fun res!196781 () Bool)

(assert (=> b!354755 (=> (not res!196781) (not e!217414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354755 (= res!196781 (validKeyInArray!0 (select (arr!9161 _keys!1456) from!1805)))))

(declare-fun b!354756 () Bool)

(declare-fun res!196784 () Bool)

(assert (=> b!354756 (=> (not res!196784) (not e!217414))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!354756 (= res!196784 (validKeyInArray!0 k!1077))))

(declare-fun mapNonEmpty!13353 () Bool)

(declare-fun mapRes!13353 () Bool)

(declare-fun tp!27279 () Bool)

(declare-fun e!217415 () Bool)

(assert (=> mapNonEmpty!13353 (= mapRes!13353 (and tp!27279 e!217415))))

(declare-datatypes ((V!11507 0))(
  ( (V!11508 (val!3993 Int)) )
))
(declare-datatypes ((ValueCell!3605 0))(
  ( (ValueCellFull!3605 (v!6183 V!11507)) (EmptyCell!3605) )
))
(declare-fun mapValue!13353 () ValueCell!3605)

(declare-fun mapKey!13353 () (_ BitVec 32))

(declare-datatypes ((array!19343 0))(
  ( (array!19344 (arr!9162 (Array (_ BitVec 32) ValueCell!3605)) (size!9514 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19343)

(declare-fun mapRest!13353 () (Array (_ BitVec 32) ValueCell!3605))

(assert (=> mapNonEmpty!13353 (= (arr!9162 _values!1208) (store mapRest!13353 mapKey!13353 mapValue!13353))))

(declare-fun b!354757 () Bool)

(assert (=> b!354757 (= e!217414 (not true))))

(declare-fun minValue!1150 () V!11507)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11507)

(declare-datatypes ((tuple2!5668 0))(
  ( (tuple2!5669 (_1!2844 (_ BitVec 64)) (_2!2844 V!11507)) )
))
(declare-datatypes ((List!5334 0))(
  ( (Nil!5331) (Cons!5330 (h!6186 tuple2!5668) (t!10492 List!5334)) )
))
(declare-datatypes ((ListLongMap!4595 0))(
  ( (ListLongMap!4596 (toList!2313 List!5334)) )
))
(declare-fun contains!2389 (ListLongMap!4595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1830 (array!19341 array!19343 (_ BitVec 32) (_ BitVec 32) V!11507 V!11507 (_ BitVec 32) Int) ListLongMap!4595)

(assert (=> b!354757 (contains!2389 (getCurrentListMap!1830 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9161 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10935 0))(
  ( (Unit!10936) )
))
(declare-fun lt!165721 () Unit!10935)

(declare-fun lemmaValidKeyInArrayIsInListMap!180 (array!19341 array!19343 (_ BitVec 32) (_ BitVec 32) V!11507 V!11507 (_ BitVec 32) Int) Unit!10935)

(assert (=> b!354757 (= lt!165721 (lemmaValidKeyInArrayIsInListMap!180 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354758 () Bool)

(declare-fun res!196778 () Bool)

(assert (=> b!354758 (=> (not res!196778) (not e!217414))))

(assert (=> b!354758 (= res!196778 (= (select (arr!9161 _keys!1456) from!1805) k!1077))))

(declare-fun mapIsEmpty!13353 () Bool)

(assert (=> mapIsEmpty!13353 mapRes!13353))

(declare-fun res!196786 () Bool)

(assert (=> start!35452 (=> (not res!196786) (not e!217414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35452 (= res!196786 (validMask!0 mask!1842))))

(assert (=> start!35452 e!217414))

(assert (=> start!35452 tp_is_empty!7897))

(assert (=> start!35452 true))

(assert (=> start!35452 tp!27278))

(declare-fun array_inv!6742 (array!19341) Bool)

(assert (=> start!35452 (array_inv!6742 _keys!1456)))

(declare-fun e!217413 () Bool)

(declare-fun array_inv!6743 (array!19343) Bool)

(assert (=> start!35452 (and (array_inv!6743 _values!1208) e!217413)))

(declare-fun b!354759 () Bool)

(assert (=> b!354759 (= e!217415 tp_is_empty!7897)))

(declare-fun b!354760 () Bool)

(declare-fun res!196785 () Bool)

(assert (=> b!354760 (=> (not res!196785) (not e!217414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19341 (_ BitVec 32)) Bool)

(assert (=> b!354760 (= res!196785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354761 () Bool)

(declare-fun res!196782 () Bool)

(assert (=> b!354761 (=> (not res!196782) (not e!217414))))

(assert (=> b!354761 (= res!196782 (and (= (size!9514 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9513 _keys!1456) (size!9514 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354762 () Bool)

(declare-fun res!196779 () Bool)

(assert (=> b!354762 (=> (not res!196779) (not e!217414))))

(declare-fun arrayContainsKey!0 (array!19341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354762 (= res!196779 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!354763 () Bool)

(assert (=> b!354763 (= e!217413 (and e!217412 mapRes!13353))))

(declare-fun condMapEmpty!13353 () Bool)

(declare-fun mapDefault!13353 () ValueCell!3605)

