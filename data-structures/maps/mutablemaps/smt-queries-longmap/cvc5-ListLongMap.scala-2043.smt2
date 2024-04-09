; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35434 () Bool)

(assert start!35434)

(declare-fun b_free!7813 () Bool)

(declare-fun b_next!7813 () Bool)

(assert (=> start!35434 (= b_free!7813 (not b_next!7813))))

(declare-fun tp!27224 () Bool)

(declare-fun b_and!15073 () Bool)

(assert (=> start!35434 (= tp!27224 b_and!15073)))

(declare-fun b!354429 () Bool)

(declare-fun res!196541 () Bool)

(declare-fun e!217278 () Bool)

(assert (=> b!354429 (=> (not res!196541) (not e!217278))))

(declare-datatypes ((array!19307 0))(
  ( (array!19308 (arr!9144 (Array (_ BitVec 32) (_ BitVec 64))) (size!9496 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19307)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!354429 (= res!196541 (= (select (arr!9144 _keys!1456) from!1805) k!1077))))

(declare-fun b!354430 () Bool)

(declare-fun res!196542 () Bool)

(assert (=> b!354430 (=> (not res!196542) (not e!217278))))

(assert (=> b!354430 (= res!196542 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9496 _keys!1456))))))

(declare-fun b!354431 () Bool)

(declare-fun res!196538 () Bool)

(assert (=> b!354431 (=> (not res!196538) (not e!217278))))

(declare-datatypes ((List!5323 0))(
  ( (Nil!5320) (Cons!5319 (h!6175 (_ BitVec 64)) (t!10481 List!5323)) )
))
(declare-fun arrayNoDuplicates!0 (array!19307 (_ BitVec 32) List!5323) Bool)

(assert (=> b!354431 (= res!196538 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5320))))

(declare-fun res!196537 () Bool)

(assert (=> start!35434 (=> (not res!196537) (not e!217278))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35434 (= res!196537 (validMask!0 mask!1842))))

(assert (=> start!35434 e!217278))

(declare-fun tp_is_empty!7879 () Bool)

(assert (=> start!35434 tp_is_empty!7879))

(assert (=> start!35434 true))

(assert (=> start!35434 tp!27224))

(declare-fun array_inv!6732 (array!19307) Bool)

(assert (=> start!35434 (array_inv!6732 _keys!1456)))

(declare-datatypes ((V!11483 0))(
  ( (V!11484 (val!3984 Int)) )
))
(declare-datatypes ((ValueCell!3596 0))(
  ( (ValueCellFull!3596 (v!6174 V!11483)) (EmptyCell!3596) )
))
(declare-datatypes ((array!19309 0))(
  ( (array!19310 (arr!9145 (Array (_ BitVec 32) ValueCell!3596)) (size!9497 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19309)

(declare-fun e!217276 () Bool)

(declare-fun array_inv!6733 (array!19309) Bool)

(assert (=> start!35434 (and (array_inv!6733 _values!1208) e!217276)))

(declare-fun b!354432 () Bool)

(declare-fun res!196535 () Bool)

(assert (=> b!354432 (=> (not res!196535) (not e!217278))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354432 (= res!196535 (and (= (size!9497 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9496 _keys!1456) (size!9497 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354433 () Bool)

(declare-fun res!196543 () Bool)

(assert (=> b!354433 (=> (not res!196543) (not e!217278))))

(declare-fun arrayContainsKey!0 (array!19307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354433 (= res!196543 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!354434 () Bool)

(declare-fun e!217280 () Bool)

(assert (=> b!354434 (= e!217280 tp_is_empty!7879)))

(declare-fun b!354435 () Bool)

(declare-fun res!196536 () Bool)

(assert (=> b!354435 (=> (not res!196536) (not e!217278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19307 (_ BitVec 32)) Bool)

(assert (=> b!354435 (= res!196536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354436 () Bool)

(assert (=> b!354436 (= e!217278 (not true))))

(declare-fun minValue!1150 () V!11483)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11483)

(declare-datatypes ((tuple2!5658 0))(
  ( (tuple2!5659 (_1!2839 (_ BitVec 64)) (_2!2839 V!11483)) )
))
(declare-datatypes ((List!5324 0))(
  ( (Nil!5321) (Cons!5320 (h!6176 tuple2!5658) (t!10482 List!5324)) )
))
(declare-datatypes ((ListLongMap!4585 0))(
  ( (ListLongMap!4586 (toList!2308 List!5324)) )
))
(declare-fun contains!2384 (ListLongMap!4585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1825 (array!19307 array!19309 (_ BitVec 32) (_ BitVec 32) V!11483 V!11483 (_ BitVec 32) Int) ListLongMap!4585)

(assert (=> b!354436 (contains!2384 (getCurrentListMap!1825 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9144 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10925 0))(
  ( (Unit!10926) )
))
(declare-fun lt!165694 () Unit!10925)

(declare-fun lemmaValidKeyInArrayIsInListMap!175 (array!19307 array!19309 (_ BitVec 32) (_ BitVec 32) V!11483 V!11483 (_ BitVec 32) Int) Unit!10925)

(assert (=> b!354436 (= lt!165694 (lemmaValidKeyInArrayIsInListMap!175 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun mapNonEmpty!13326 () Bool)

(declare-fun mapRes!13326 () Bool)

(declare-fun tp!27225 () Bool)

(declare-fun e!217279 () Bool)

(assert (=> mapNonEmpty!13326 (= mapRes!13326 (and tp!27225 e!217279))))

(declare-fun mapRest!13326 () (Array (_ BitVec 32) ValueCell!3596))

(declare-fun mapValue!13326 () ValueCell!3596)

(declare-fun mapKey!13326 () (_ BitVec 32))

(assert (=> mapNonEmpty!13326 (= (arr!9145 _values!1208) (store mapRest!13326 mapKey!13326 mapValue!13326))))

(declare-fun b!354437 () Bool)

(declare-fun res!196539 () Bool)

(assert (=> b!354437 (=> (not res!196539) (not e!217278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354437 (= res!196539 (validKeyInArray!0 (select (arr!9144 _keys!1456) from!1805)))))

(declare-fun b!354438 () Bool)

(assert (=> b!354438 (= e!217276 (and e!217280 mapRes!13326))))

(declare-fun condMapEmpty!13326 () Bool)

(declare-fun mapDefault!13326 () ValueCell!3596)

