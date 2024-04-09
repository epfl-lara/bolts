; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35666 () Bool)

(assert start!35666)

(declare-fun b_free!7913 () Bool)

(declare-fun b_next!7913 () Bool)

(assert (=> start!35666 (= b_free!7913 (not b_next!7913))))

(declare-fun tp!27723 () Bool)

(declare-fun b_and!15173 () Bool)

(assert (=> start!35666 (= tp!27723 b_and!15173)))

(declare-fun b!357912 () Bool)

(declare-fun res!198980 () Bool)

(declare-fun e!219089 () Bool)

(assert (=> b!357912 (=> (not res!198980) (not e!219089))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19755 0))(
  ( (array!19756 (arr!9368 (Array (_ BitVec 32) (_ BitVec 64))) (size!9720 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19755)

(assert (=> b!357912 (= res!198980 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9720 _keys!1456))))))

(declare-fun res!198977 () Bool)

(assert (=> start!35666 (=> (not res!198977) (not e!219089))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35666 (= res!198977 (validMask!0 mask!1842))))

(assert (=> start!35666 e!219089))

(declare-fun tp_is_empty!8111 () Bool)

(assert (=> start!35666 tp_is_empty!8111))

(assert (=> start!35666 true))

(assert (=> start!35666 tp!27723))

(declare-fun array_inv!6886 (array!19755) Bool)

(assert (=> start!35666 (array_inv!6886 _keys!1456)))

(declare-datatypes ((V!11791 0))(
  ( (V!11792 (val!4100 Int)) )
))
(declare-datatypes ((ValueCell!3712 0))(
  ( (ValueCellFull!3712 (v!6290 V!11791)) (EmptyCell!3712) )
))
(declare-datatypes ((array!19757 0))(
  ( (array!19758 (arr!9369 (Array (_ BitVec 32) ValueCell!3712)) (size!9721 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19757)

(declare-fun e!219092 () Bool)

(declare-fun array_inv!6887 (array!19757) Bool)

(assert (=> start!35666 (and (array_inv!6887 _values!1208) e!219092)))

(declare-fun b!357913 () Bool)

(declare-fun res!198976 () Bool)

(assert (=> b!357913 (=> (not res!198976) (not e!219089))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!357913 (= res!198976 (and (= (size!9721 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9720 _keys!1456) (size!9721 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357914 () Bool)

(declare-fun e!219087 () Bool)

(assert (=> b!357914 (= e!219087 tp_is_empty!8111)))

(declare-fun b!357915 () Bool)

(declare-fun res!198982 () Bool)

(assert (=> b!357915 (=> (not res!198982) (not e!219089))))

(declare-datatypes ((List!5439 0))(
  ( (Nil!5436) (Cons!5435 (h!6291 (_ BitVec 64)) (t!10597 List!5439)) )
))
(declare-fun arrayNoDuplicates!0 (array!19755 (_ BitVec 32) List!5439) Bool)

(assert (=> b!357915 (= res!198982 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5436))))

(declare-fun b!357916 () Bool)

(declare-fun res!198974 () Bool)

(assert (=> b!357916 (=> (not res!198974) (not e!219089))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!357916 (= res!198974 (not (= (select (arr!9368 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357917 () Bool)

(declare-fun res!198979 () Bool)

(assert (=> b!357917 (=> (not res!198979) (not e!219089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357917 (= res!198979 (validKeyInArray!0 k!1077))))

(declare-fun b!357918 () Bool)

(declare-fun res!198975 () Bool)

(assert (=> b!357918 (=> (not res!198975) (not e!219089))))

(declare-fun arrayContainsKey!0 (array!19755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357918 (= res!198975 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357919 () Bool)

(declare-fun res!198981 () Bool)

(assert (=> b!357919 (=> (not res!198981) (not e!219089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19755 (_ BitVec 32)) Bool)

(assert (=> b!357919 (= res!198981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357920 () Bool)

(declare-fun e!219088 () Bool)

(assert (=> b!357920 (= e!219089 (not e!219088))))

(declare-fun res!198978 () Bool)

(assert (=> b!357920 (=> res!198978 e!219088)))

(assert (=> b!357920 (= res!198978 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9720 _keys!1456))))))

(assert (=> b!357920 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11791)

(declare-datatypes ((Unit!11043 0))(
  ( (Unit!11044) )
))
(declare-fun lt!166114 () Unit!11043)

(declare-fun zeroValue!1150 () V!11791)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!39 (array!19755 array!19757 (_ BitVec 32) (_ BitVec 32) V!11791 V!11791 (_ BitVec 64) (_ BitVec 32)) Unit!11043)

(assert (=> b!357920 (= lt!166114 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!39 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357921 () Bool)

(assert (=> b!357921 (= e!219088 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5726 0))(
  ( (tuple2!5727 (_1!2873 (_ BitVec 64)) (_2!2873 V!11791)) )
))
(declare-datatypes ((List!5440 0))(
  ( (Nil!5437) (Cons!5436 (h!6292 tuple2!5726) (t!10598 List!5440)) )
))
(declare-datatypes ((ListLongMap!4653 0))(
  ( (ListLongMap!4654 (toList!2342 List!5440)) )
))
(declare-fun contains!2418 (ListLongMap!4653 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1859 (array!19755 array!19757 (_ BitVec 32) (_ BitVec 32) V!11791 V!11791 (_ BitVec 32) Int) ListLongMap!4653)

(assert (=> b!357921 (contains!2418 (getCurrentListMap!1859 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun lt!166113 () Unit!11043)

(declare-fun lemmaArrayContainsKeyThenInListMap!352 (array!19755 array!19757 (_ BitVec 32) (_ BitVec 32) V!11791 V!11791 (_ BitVec 64) (_ BitVec 32) Int) Unit!11043)

(assert (=> b!357921 (= lt!166113 (lemmaArrayContainsKeyThenInListMap!352 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun mapNonEmpty!13674 () Bool)

(declare-fun mapRes!13674 () Bool)

(declare-fun tp!27722 () Bool)

(declare-fun e!219091 () Bool)

(assert (=> mapNonEmpty!13674 (= mapRes!13674 (and tp!27722 e!219091))))

(declare-fun mapKey!13674 () (_ BitVec 32))

(declare-fun mapRest!13674 () (Array (_ BitVec 32) ValueCell!3712))

(declare-fun mapValue!13674 () ValueCell!3712)

(assert (=> mapNonEmpty!13674 (= (arr!9369 _values!1208) (store mapRest!13674 mapKey!13674 mapValue!13674))))

(declare-fun b!357922 () Bool)

(assert (=> b!357922 (= e!219091 tp_is_empty!8111)))

(declare-fun mapIsEmpty!13674 () Bool)

(assert (=> mapIsEmpty!13674 mapRes!13674))

(declare-fun b!357923 () Bool)

(assert (=> b!357923 (= e!219092 (and e!219087 mapRes!13674))))

(declare-fun condMapEmpty!13674 () Bool)

(declare-fun mapDefault!13674 () ValueCell!3712)

