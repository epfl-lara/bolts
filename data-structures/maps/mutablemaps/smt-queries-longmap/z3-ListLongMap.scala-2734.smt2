; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40232 () Bool)

(assert start!40232)

(declare-fun b_free!10491 () Bool)

(declare-fun b_next!10491 () Bool)

(assert (=> start!40232 (= b_free!10491 (not b_next!10491))))

(declare-fun tp!37001 () Bool)

(declare-fun b_and!18477 () Bool)

(assert (=> start!40232 (= tp!37001 b_and!18477)))

(declare-fun b!440945 () Bool)

(declare-fun res!261032 () Bool)

(declare-fun e!259693 () Bool)

(assert (=> b!440945 (=> (not res!261032) (not e!259693))))

(declare-datatypes ((array!27073 0))(
  ( (array!27074 (arr!12983 (Array (_ BitVec 32) (_ BitVec 64))) (size!13335 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27073)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440945 (= res!261032 (or (= (select (arr!12983 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12983 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440946 () Bool)

(declare-fun res!261029 () Bool)

(assert (=> b!440946 (=> (not res!261029) (not e!259693))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440946 (= res!261029 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440947 () Bool)

(declare-fun res!261021 () Bool)

(declare-fun e!259696 () Bool)

(assert (=> b!440947 (=> (not res!261021) (not e!259696))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!440947 (= res!261021 (bvsle from!863 i!563))))

(declare-fun b!440948 () Bool)

(declare-fun e!259691 () Bool)

(assert (=> b!440948 (= e!259691 (not true))))

(declare-datatypes ((V!16629 0))(
  ( (V!16630 (val!5866 Int)) )
))
(declare-fun minValue!515 () V!16629)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202765 () array!27073)

(declare-datatypes ((ValueCell!5478 0))(
  ( (ValueCellFull!5478 (v!8109 V!16629)) (EmptyCell!5478) )
))
(declare-datatypes ((array!27075 0))(
  ( (array!27076 (arr!12984 (Array (_ BitVec 32) ValueCell!5478)) (size!13336 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27075)

(declare-fun lt!202763 () array!27075)

(declare-fun zeroValue!515 () V!16629)

(declare-fun v!412 () V!16629)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7724 0))(
  ( (tuple2!7725 (_1!3872 (_ BitVec 64)) (_2!3872 V!16629)) )
))
(declare-datatypes ((List!7766 0))(
  ( (Nil!7763) (Cons!7762 (h!8618 tuple2!7724) (t!13530 List!7766)) )
))
(declare-datatypes ((ListLongMap!6651 0))(
  ( (ListLongMap!6652 (toList!3341 List!7766)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1523 (array!27073 array!27075 (_ BitVec 32) (_ BitVec 32) V!16629 V!16629 (_ BitVec 32) Int) ListLongMap!6651)

(declare-fun +!1476 (ListLongMap!6651 tuple2!7724) ListLongMap!6651)

(assert (=> b!440948 (= (getCurrentListMapNoExtraKeys!1523 lt!202765 lt!202763 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1476 (getCurrentListMapNoExtraKeys!1523 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7725 k0!794 v!412)))))

(declare-datatypes ((Unit!13067 0))(
  ( (Unit!13068) )
))
(declare-fun lt!202764 () Unit!13067)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!654 (array!27073 array!27075 (_ BitVec 32) (_ BitVec 32) V!16629 V!16629 (_ BitVec 32) (_ BitVec 64) V!16629 (_ BitVec 32) Int) Unit!13067)

(assert (=> b!440948 (= lt!202764 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!654 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19086 () Bool)

(declare-fun mapRes!19086 () Bool)

(assert (=> mapIsEmpty!19086 mapRes!19086))

(declare-fun b!440949 () Bool)

(declare-fun e!259692 () Bool)

(declare-fun tp_is_empty!11643 () Bool)

(assert (=> b!440949 (= e!259692 tp_is_empty!11643)))

(declare-fun b!440951 () Bool)

(declare-fun e!259695 () Bool)

(assert (=> b!440951 (= e!259695 (and e!259692 mapRes!19086))))

(declare-fun condMapEmpty!19086 () Bool)

(declare-fun mapDefault!19086 () ValueCell!5478)

(assert (=> b!440951 (= condMapEmpty!19086 (= (arr!12984 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5478)) mapDefault!19086)))))

(declare-fun b!440952 () Bool)

(declare-fun res!261031 () Bool)

(assert (=> b!440952 (=> (not res!261031) (not e!259696))))

(declare-datatypes ((List!7767 0))(
  ( (Nil!7764) (Cons!7763 (h!8619 (_ BitVec 64)) (t!13531 List!7767)) )
))
(declare-fun arrayNoDuplicates!0 (array!27073 (_ BitVec 32) List!7767) Bool)

(assert (=> b!440952 (= res!261031 (arrayNoDuplicates!0 lt!202765 #b00000000000000000000000000000000 Nil!7764))))

(declare-fun b!440953 () Bool)

(assert (=> b!440953 (= e!259693 e!259696)))

(declare-fun res!261022 () Bool)

(assert (=> b!440953 (=> (not res!261022) (not e!259696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27073 (_ BitVec 32)) Bool)

(assert (=> b!440953 (= res!261022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202765 mask!1025))))

(assert (=> b!440953 (= lt!202765 (array!27074 (store (arr!12983 _keys!709) i!563 k0!794) (size!13335 _keys!709)))))

(declare-fun b!440954 () Bool)

(declare-fun res!261026 () Bool)

(assert (=> b!440954 (=> (not res!261026) (not e!259693))))

(assert (=> b!440954 (= res!261026 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7764))))

(declare-fun b!440955 () Bool)

(declare-fun res!261028 () Bool)

(assert (=> b!440955 (=> (not res!261028) (not e!259693))))

(assert (=> b!440955 (= res!261028 (and (= (size!13336 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13335 _keys!709) (size!13336 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19086 () Bool)

(declare-fun tp!37002 () Bool)

(declare-fun e!259694 () Bool)

(assert (=> mapNonEmpty!19086 (= mapRes!19086 (and tp!37002 e!259694))))

(declare-fun mapValue!19086 () ValueCell!5478)

(declare-fun mapKey!19086 () (_ BitVec 32))

(declare-fun mapRest!19086 () (Array (_ BitVec 32) ValueCell!5478))

(assert (=> mapNonEmpty!19086 (= (arr!12984 _values!549) (store mapRest!19086 mapKey!19086 mapValue!19086))))

(declare-fun b!440956 () Bool)

(declare-fun res!261023 () Bool)

(assert (=> b!440956 (=> (not res!261023) (not e!259693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440956 (= res!261023 (validKeyInArray!0 k0!794))))

(declare-fun b!440957 () Bool)

(declare-fun res!261027 () Bool)

(assert (=> b!440957 (=> (not res!261027) (not e!259693))))

(assert (=> b!440957 (= res!261027 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13335 _keys!709))))))

(declare-fun b!440958 () Bool)

(assert (=> b!440958 (= e!259694 tp_is_empty!11643)))

(declare-fun b!440950 () Bool)

(assert (=> b!440950 (= e!259696 e!259691)))

(declare-fun res!261030 () Bool)

(assert (=> b!440950 (=> (not res!261030) (not e!259691))))

(assert (=> b!440950 (= res!261030 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202766 () ListLongMap!6651)

(assert (=> b!440950 (= lt!202766 (getCurrentListMapNoExtraKeys!1523 lt!202765 lt!202763 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440950 (= lt!202763 (array!27076 (store (arr!12984 _values!549) i!563 (ValueCellFull!5478 v!412)) (size!13336 _values!549)))))

(declare-fun lt!202767 () ListLongMap!6651)

(assert (=> b!440950 (= lt!202767 (getCurrentListMapNoExtraKeys!1523 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!261024 () Bool)

(assert (=> start!40232 (=> (not res!261024) (not e!259693))))

(assert (=> start!40232 (= res!261024 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13335 _keys!709))))))

(assert (=> start!40232 e!259693))

(assert (=> start!40232 tp_is_empty!11643))

(assert (=> start!40232 tp!37001))

(assert (=> start!40232 true))

(declare-fun array_inv!9414 (array!27075) Bool)

(assert (=> start!40232 (and (array_inv!9414 _values!549) e!259695)))

(declare-fun array_inv!9415 (array!27073) Bool)

(assert (=> start!40232 (array_inv!9415 _keys!709)))

(declare-fun b!440959 () Bool)

(declare-fun res!261025 () Bool)

(assert (=> b!440959 (=> (not res!261025) (not e!259693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440959 (= res!261025 (validMask!0 mask!1025))))

(declare-fun b!440960 () Bool)

(declare-fun res!261033 () Bool)

(assert (=> b!440960 (=> (not res!261033) (not e!259693))))

(assert (=> b!440960 (= res!261033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40232 res!261024) b!440959))

(assert (= (and b!440959 res!261025) b!440955))

(assert (= (and b!440955 res!261028) b!440960))

(assert (= (and b!440960 res!261033) b!440954))

(assert (= (and b!440954 res!261026) b!440957))

(assert (= (and b!440957 res!261027) b!440956))

(assert (= (and b!440956 res!261023) b!440945))

(assert (= (and b!440945 res!261032) b!440946))

(assert (= (and b!440946 res!261029) b!440953))

(assert (= (and b!440953 res!261022) b!440952))

(assert (= (and b!440952 res!261031) b!440947))

(assert (= (and b!440947 res!261021) b!440950))

(assert (= (and b!440950 res!261030) b!440948))

(assert (= (and b!440951 condMapEmpty!19086) mapIsEmpty!19086))

(assert (= (and b!440951 (not condMapEmpty!19086)) mapNonEmpty!19086))

(get-info :version)

(assert (= (and mapNonEmpty!19086 ((_ is ValueCellFull!5478) mapValue!19086)) b!440958))

(assert (= (and b!440951 ((_ is ValueCellFull!5478) mapDefault!19086)) b!440949))

(assert (= start!40232 b!440951))

(declare-fun m!427881 () Bool)

(assert (=> b!440950 m!427881))

(declare-fun m!427883 () Bool)

(assert (=> b!440950 m!427883))

(declare-fun m!427885 () Bool)

(assert (=> b!440950 m!427885))

(declare-fun m!427887 () Bool)

(assert (=> b!440952 m!427887))

(declare-fun m!427889 () Bool)

(assert (=> b!440959 m!427889))

(declare-fun m!427891 () Bool)

(assert (=> b!440954 m!427891))

(declare-fun m!427893 () Bool)

(assert (=> start!40232 m!427893))

(declare-fun m!427895 () Bool)

(assert (=> start!40232 m!427895))

(declare-fun m!427897 () Bool)

(assert (=> b!440946 m!427897))

(declare-fun m!427899 () Bool)

(assert (=> b!440960 m!427899))

(declare-fun m!427901 () Bool)

(assert (=> mapNonEmpty!19086 m!427901))

(declare-fun m!427903 () Bool)

(assert (=> b!440956 m!427903))

(declare-fun m!427905 () Bool)

(assert (=> b!440945 m!427905))

(declare-fun m!427907 () Bool)

(assert (=> b!440953 m!427907))

(declare-fun m!427909 () Bool)

(assert (=> b!440953 m!427909))

(declare-fun m!427911 () Bool)

(assert (=> b!440948 m!427911))

(declare-fun m!427913 () Bool)

(assert (=> b!440948 m!427913))

(assert (=> b!440948 m!427913))

(declare-fun m!427915 () Bool)

(assert (=> b!440948 m!427915))

(declare-fun m!427917 () Bool)

(assert (=> b!440948 m!427917))

(check-sat (not mapNonEmpty!19086) (not b!440948) (not b!440950) (not b!440946) (not b!440953) (not b!440956) (not start!40232) tp_is_empty!11643 b_and!18477 (not b!440952) (not b!440954) (not b!440959) (not b!440960) (not b_next!10491))
(check-sat b_and!18477 (not b_next!10491))
