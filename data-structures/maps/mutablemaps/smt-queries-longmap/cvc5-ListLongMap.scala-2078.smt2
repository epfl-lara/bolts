; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35644 () Bool)

(assert start!35644)

(declare-fun b_free!7891 () Bool)

(declare-fun b_next!7891 () Bool)

(assert (=> start!35644 (= b_free!7891 (not b_next!7891))))

(declare-fun tp!27656 () Bool)

(declare-fun b_and!15151 () Bool)

(assert (=> start!35644 (= tp!27656 b_and!15151)))

(declare-fun b!357516 () Bool)

(declare-fun res!198680 () Bool)

(declare-fun e!218890 () Bool)

(assert (=> b!357516 (=> (not res!198680) (not e!218890))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357516 (= res!198680 (validKeyInArray!0 k!1077))))

(declare-fun b!357517 () Bool)

(declare-fun e!218889 () Bool)

(declare-fun tp_is_empty!8089 () Bool)

(assert (=> b!357517 (= e!218889 tp_is_empty!8089)))

(declare-fun mapNonEmpty!13641 () Bool)

(declare-fun mapRes!13641 () Bool)

(declare-fun tp!27657 () Bool)

(assert (=> mapNonEmpty!13641 (= mapRes!13641 (and tp!27657 e!218889))))

(declare-datatypes ((V!11763 0))(
  ( (V!11764 (val!4089 Int)) )
))
(declare-datatypes ((ValueCell!3701 0))(
  ( (ValueCellFull!3701 (v!6279 V!11763)) (EmptyCell!3701) )
))
(declare-fun mapValue!13641 () ValueCell!3701)

(declare-fun mapKey!13641 () (_ BitVec 32))

(declare-datatypes ((array!19711 0))(
  ( (array!19712 (arr!9346 (Array (_ BitVec 32) ValueCell!3701)) (size!9698 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19711)

(declare-fun mapRest!13641 () (Array (_ BitVec 32) ValueCell!3701))

(assert (=> mapNonEmpty!13641 (= (arr!9346 _values!1208) (store mapRest!13641 mapKey!13641 mapValue!13641))))

(declare-fun b!357518 () Bool)

(declare-fun e!218892 () Bool)

(assert (=> b!357518 (= e!218892 tp_is_empty!8089)))

(declare-fun b!357519 () Bool)

(declare-fun e!218893 () Bool)

(assert (=> b!357519 (= e!218890 (not e!218893))))

(declare-fun res!198683 () Bool)

(assert (=> b!357519 (=> res!198683 e!218893)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19713 0))(
  ( (array!19714 (arr!9347 (Array (_ BitVec 32) (_ BitVec 64))) (size!9699 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19713)

(assert (=> b!357519 (= res!198683 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9699 _keys!1456))))))

(declare-fun arrayContainsKey!0 (array!19713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357519 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11023 0))(
  ( (Unit!11024) )
))
(declare-fun lt!166047 () Unit!11023)

(declare-fun minValue!1150 () V!11763)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11763)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!31 (array!19713 array!19711 (_ BitVec 32) (_ BitVec 32) V!11763 V!11763 (_ BitVec 64) (_ BitVec 32)) Unit!11023)

(assert (=> b!357519 (= lt!166047 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!31 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357520 () Bool)

(declare-fun res!198682 () Bool)

(assert (=> b!357520 (=> (not res!198682) (not e!218890))))

(assert (=> b!357520 (= res!198682 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9699 _keys!1456))))))

(declare-fun b!357522 () Bool)

(declare-fun res!198681 () Bool)

(assert (=> b!357522 (=> (not res!198681) (not e!218890))))

(assert (=> b!357522 (= res!198681 (and (= (size!9698 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9699 _keys!1456) (size!9698 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357523 () Bool)

(declare-fun res!198679 () Bool)

(assert (=> b!357523 (=> (not res!198679) (not e!218890))))

(assert (=> b!357523 (= res!198679 (not (= (select (arr!9347 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357524 () Bool)

(assert (=> b!357524 (= e!218893 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5708 0))(
  ( (tuple2!5709 (_1!2864 (_ BitVec 64)) (_2!2864 V!11763)) )
))
(declare-datatypes ((List!5423 0))(
  ( (Nil!5420) (Cons!5419 (h!6275 tuple2!5708) (t!10581 List!5423)) )
))
(declare-datatypes ((ListLongMap!4635 0))(
  ( (ListLongMap!4636 (toList!2333 List!5423)) )
))
(declare-fun contains!2409 (ListLongMap!4635 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1850 (array!19713 array!19711 (_ BitVec 32) (_ BitVec 32) V!11763 V!11763 (_ BitVec 32) Int) ListLongMap!4635)

(assert (=> b!357524 (contains!2409 (getCurrentListMap!1850 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun lt!166048 () Unit!11023)

(declare-fun lemmaArrayContainsKeyThenInListMap!343 (array!19713 array!19711 (_ BitVec 32) (_ BitVec 32) V!11763 V!11763 (_ BitVec 64) (_ BitVec 32) Int) Unit!11023)

(assert (=> b!357524 (= lt!166048 (lemmaArrayContainsKeyThenInListMap!343 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun mapIsEmpty!13641 () Bool)

(assert (=> mapIsEmpty!13641 mapRes!13641))

(declare-fun b!357525 () Bool)

(declare-fun e!218894 () Bool)

(assert (=> b!357525 (= e!218894 (and e!218892 mapRes!13641))))

(declare-fun condMapEmpty!13641 () Bool)

(declare-fun mapDefault!13641 () ValueCell!3701)

