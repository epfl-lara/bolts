; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35480 () Bool)

(assert start!35480)

(declare-fun b_free!7859 () Bool)

(declare-fun b_next!7859 () Bool)

(assert (=> start!35480 (= b_free!7859 (not b_next!7859))))

(declare-fun tp!27362 () Bool)

(declare-fun b_and!15119 () Bool)

(assert (=> start!35480 (= tp!27362 b_and!15119)))

(declare-fun b!355257 () Bool)

(declare-fun res!197162 () Bool)

(declare-fun e!217623 () Bool)

(assert (=> b!355257 (=> (not res!197162) (not e!217623))))

(declare-datatypes ((array!19397 0))(
  ( (array!19398 (arr!9189 (Array (_ BitVec 32) (_ BitVec 64))) (size!9541 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19397)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355257 (= res!197162 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!355258 () Bool)

(assert (=> b!355258 (= e!217623 (not true))))

(declare-datatypes ((V!11543 0))(
  ( (V!11544 (val!4007 Int)) )
))
(declare-fun minValue!1150 () V!11543)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((ValueCell!3619 0))(
  ( (ValueCellFull!3619 (v!6197 V!11543)) (EmptyCell!3619) )
))
(declare-datatypes ((array!19399 0))(
  ( (array!19400 (arr!9190 (Array (_ BitVec 32) ValueCell!3619)) (size!9542 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19399)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11543)

(declare-datatypes ((tuple2!5690 0))(
  ( (tuple2!5691 (_1!2855 (_ BitVec 64)) (_2!2855 V!11543)) )
))
(declare-datatypes ((List!5354 0))(
  ( (Nil!5351) (Cons!5350 (h!6206 tuple2!5690) (t!10512 List!5354)) )
))
(declare-datatypes ((ListLongMap!4617 0))(
  ( (ListLongMap!4618 (toList!2324 List!5354)) )
))
(declare-fun contains!2400 (ListLongMap!4617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1841 (array!19397 array!19399 (_ BitVec 32) (_ BitVec 32) V!11543 V!11543 (_ BitVec 32) Int) ListLongMap!4617)

(assert (=> b!355258 (contains!2400 (getCurrentListMap!1841 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9189 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10957 0))(
  ( (Unit!10958) )
))
(declare-fun lt!165763 () Unit!10957)

(declare-fun lemmaValidKeyInArrayIsInListMap!191 (array!19397 array!19399 (_ BitVec 32) (_ BitVec 32) V!11543 V!11543 (_ BitVec 32) Int) Unit!10957)

(assert (=> b!355258 (= lt!165763 (lemmaValidKeyInArrayIsInListMap!191 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!355259 () Bool)

(declare-fun res!197160 () Bool)

(assert (=> b!355259 (=> (not res!197160) (not e!217623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355259 (= res!197160 (validKeyInArray!0 (select (arr!9189 _keys!1456) from!1805)))))

(declare-fun res!197161 () Bool)

(assert (=> start!35480 (=> (not res!197161) (not e!217623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35480 (= res!197161 (validMask!0 mask!1842))))

(assert (=> start!35480 e!217623))

(declare-fun tp_is_empty!7925 () Bool)

(assert (=> start!35480 tp_is_empty!7925))

(assert (=> start!35480 true))

(assert (=> start!35480 tp!27362))

(declare-fun array_inv!6766 (array!19397) Bool)

(assert (=> start!35480 (array_inv!6766 _keys!1456)))

(declare-fun e!217621 () Bool)

(declare-fun array_inv!6767 (array!19399) Bool)

(assert (=> start!35480 (and (array_inv!6767 _values!1208) e!217621)))

(declare-fun b!355260 () Bool)

(declare-fun res!197159 () Bool)

(assert (=> b!355260 (=> (not res!197159) (not e!217623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19397 (_ BitVec 32)) Bool)

(assert (=> b!355260 (= res!197159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355261 () Bool)

(declare-fun res!197158 () Bool)

(assert (=> b!355261 (=> (not res!197158) (not e!217623))))

(assert (=> b!355261 (= res!197158 (= (select (arr!9189 _keys!1456) from!1805) k!1077))))

(declare-fun b!355262 () Bool)

(declare-fun res!197163 () Bool)

(assert (=> b!355262 (=> (not res!197163) (not e!217623))))

(declare-datatypes ((List!5355 0))(
  ( (Nil!5352) (Cons!5351 (h!6207 (_ BitVec 64)) (t!10513 List!5355)) )
))
(declare-fun arrayNoDuplicates!0 (array!19397 (_ BitVec 32) List!5355) Bool)

(assert (=> b!355262 (= res!197163 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5352))))

(declare-fun b!355263 () Bool)

(declare-fun res!197157 () Bool)

(assert (=> b!355263 (=> (not res!197157) (not e!217623))))

(assert (=> b!355263 (= res!197157 (validKeyInArray!0 k!1077))))

(declare-fun b!355264 () Bool)

(declare-fun res!197164 () Bool)

(assert (=> b!355264 (=> (not res!197164) (not e!217623))))

(assert (=> b!355264 (= res!197164 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9541 _keys!1456))))))

(declare-fun b!355265 () Bool)

(declare-fun e!217622 () Bool)

(assert (=> b!355265 (= e!217622 tp_is_empty!7925)))

(declare-fun mapNonEmpty!13395 () Bool)

(declare-fun mapRes!13395 () Bool)

(declare-fun tp!27363 () Bool)

(declare-fun e!217625 () Bool)

(assert (=> mapNonEmpty!13395 (= mapRes!13395 (and tp!27363 e!217625))))

(declare-fun mapKey!13395 () (_ BitVec 32))

(declare-fun mapRest!13395 () (Array (_ BitVec 32) ValueCell!3619))

(declare-fun mapValue!13395 () ValueCell!3619)

(assert (=> mapNonEmpty!13395 (= (arr!9190 _values!1208) (store mapRest!13395 mapKey!13395 mapValue!13395))))

(declare-fun b!355266 () Bool)

(assert (=> b!355266 (= e!217625 tp_is_empty!7925)))

(declare-fun b!355267 () Bool)

(assert (=> b!355267 (= e!217621 (and e!217622 mapRes!13395))))

(declare-fun condMapEmpty!13395 () Bool)

(declare-fun mapDefault!13395 () ValueCell!3619)

