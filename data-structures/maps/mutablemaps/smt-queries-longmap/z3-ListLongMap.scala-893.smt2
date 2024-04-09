; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20468 () Bool)

(assert start!20468)

(declare-fun b_free!5115 () Bool)

(declare-fun b_next!5115 () Bool)

(assert (=> start!20468 (= b_free!5115 (not b_next!5115))))

(declare-fun tp!18376 () Bool)

(declare-fun b_and!11879 () Bool)

(assert (=> start!20468 (= tp!18376 b_and!11879)))

(declare-fun mapNonEmpty!8525 () Bool)

(declare-fun mapRes!8525 () Bool)

(declare-fun tp!18377 () Bool)

(declare-fun e!132738 () Bool)

(assert (=> mapNonEmpty!8525 (= mapRes!8525 (and tp!18377 e!132738))))

(declare-datatypes ((V!6275 0))(
  ( (V!6276 (val!2530 Int)) )
))
(declare-datatypes ((ValueCell!2142 0))(
  ( (ValueCellFull!2142 (v!4496 V!6275)) (EmptyCell!2142) )
))
(declare-fun mapRest!8525 () (Array (_ BitVec 32) ValueCell!2142))

(declare-datatypes ((array!9166 0))(
  ( (array!9167 (arr!4333 (Array (_ BitVec 32) ValueCell!2142)) (size!4658 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9166)

(declare-fun mapKey!8525 () (_ BitVec 32))

(declare-fun mapValue!8525 () ValueCell!2142)

(assert (=> mapNonEmpty!8525 (= (arr!4333 _values!649) (store mapRest!8525 mapKey!8525 mapValue!8525))))

(declare-fun b!202663 () Bool)

(declare-fun res!97200 () Bool)

(declare-fun e!132739 () Bool)

(assert (=> b!202663 (=> (not res!97200) (not e!132739))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!9168 0))(
  ( (array!9169 (arr!4334 (Array (_ BitVec 32) (_ BitVec 64))) (size!4659 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9168)

(assert (=> b!202663 (= res!97200 (and (= (size!4658 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4659 _keys!825) (size!4658 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!97201 () Bool)

(assert (=> start!20468 (=> (not res!97201) (not e!132739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20468 (= res!97201 (validMask!0 mask!1149))))

(assert (=> start!20468 e!132739))

(declare-fun e!132741 () Bool)

(declare-fun array_inv!2851 (array!9166) Bool)

(assert (=> start!20468 (and (array_inv!2851 _values!649) e!132741)))

(assert (=> start!20468 true))

(declare-fun tp_is_empty!4971 () Bool)

(assert (=> start!20468 tp_is_empty!4971))

(declare-fun array_inv!2852 (array!9168) Bool)

(assert (=> start!20468 (array_inv!2852 _keys!825)))

(assert (=> start!20468 tp!18376))

(declare-fun b!202664 () Bool)

(declare-fun e!132736 () Bool)

(declare-fun e!132740 () Bool)

(assert (=> b!202664 (= e!132736 e!132740)))

(declare-fun res!97204 () Bool)

(assert (=> b!202664 (=> res!97204 e!132740)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!202664 (= res!97204 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3834 0))(
  ( (tuple2!3835 (_1!1927 (_ BitVec 64)) (_2!1927 V!6275)) )
))
(declare-datatypes ((List!2761 0))(
  ( (Nil!2758) (Cons!2757 (h!3399 tuple2!3834) (t!7700 List!2761)) )
))
(declare-datatypes ((ListLongMap!2761 0))(
  ( (ListLongMap!2762 (toList!1396 List!2761)) )
))
(declare-fun lt!101916 () ListLongMap!2761)

(declare-fun lt!101912 () ListLongMap!2761)

(assert (=> b!202664 (= lt!101916 lt!101912)))

(declare-fun lt!101910 () ListLongMap!2761)

(declare-fun lt!101913 () tuple2!3834)

(declare-fun +!413 (ListLongMap!2761 tuple2!3834) ListLongMap!2761)

(assert (=> b!202664 (= lt!101912 (+!413 lt!101910 lt!101913))))

(declare-fun lt!101914 () ListLongMap!2761)

(declare-fun lt!101915 () ListLongMap!2761)

(assert (=> b!202664 (= lt!101914 lt!101915)))

(declare-fun lt!101906 () ListLongMap!2761)

(assert (=> b!202664 (= lt!101915 (+!413 lt!101906 lt!101913))))

(declare-fun lt!101907 () ListLongMap!2761)

(assert (=> b!202664 (= lt!101916 (+!413 lt!101907 lt!101913))))

(declare-fun zeroValue!615 () V!6275)

(assert (=> b!202664 (= lt!101913 (tuple2!3835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202665 () Bool)

(declare-fun res!97206 () Bool)

(assert (=> b!202665 (=> (not res!97206) (not e!132739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9168 (_ BitVec 32)) Bool)

(assert (=> b!202665 (= res!97206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202666 () Bool)

(declare-fun res!97199 () Bool)

(assert (=> b!202666 (=> (not res!97199) (not e!132739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202666 (= res!97199 (validKeyInArray!0 k0!843))))

(declare-fun b!202667 () Bool)

(assert (=> b!202667 (= e!132739 (not e!132736))))

(declare-fun res!97202 () Bool)

(assert (=> b!202667 (=> res!97202 e!132736)))

(assert (=> b!202667 (= res!97202 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6275)

(declare-fun getCurrentListMap!970 (array!9168 array!9166 (_ BitVec 32) (_ BitVec 32) V!6275 V!6275 (_ BitVec 32) Int) ListLongMap!2761)

(assert (=> b!202667 (= lt!101914 (getCurrentListMap!970 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101911 () array!9166)

(assert (=> b!202667 (= lt!101916 (getCurrentListMap!970 _keys!825 lt!101911 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202667 (and (= lt!101907 lt!101910) (= lt!101910 lt!101907))))

(declare-fun lt!101917 () tuple2!3834)

(assert (=> b!202667 (= lt!101910 (+!413 lt!101906 lt!101917))))

(declare-fun v!520 () V!6275)

(assert (=> b!202667 (= lt!101917 (tuple2!3835 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6127 0))(
  ( (Unit!6128) )
))
(declare-fun lt!101908 () Unit!6127)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!83 (array!9168 array!9166 (_ BitVec 32) (_ BitVec 32) V!6275 V!6275 (_ BitVec 32) (_ BitVec 64) V!6275 (_ BitVec 32) Int) Unit!6127)

(assert (=> b!202667 (= lt!101908 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!83 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!341 (array!9168 array!9166 (_ BitVec 32) (_ BitVec 32) V!6275 V!6275 (_ BitVec 32) Int) ListLongMap!2761)

(assert (=> b!202667 (= lt!101907 (getCurrentListMapNoExtraKeys!341 _keys!825 lt!101911 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202667 (= lt!101911 (array!9167 (store (arr!4333 _values!649) i!601 (ValueCellFull!2142 v!520)) (size!4658 _values!649)))))

(assert (=> b!202667 (= lt!101906 (getCurrentListMapNoExtraKeys!341 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202668 () Bool)

(assert (=> b!202668 (= e!132738 tp_is_empty!4971)))

(declare-fun b!202669 () Bool)

(declare-fun e!132737 () Bool)

(assert (=> b!202669 (= e!132741 (and e!132737 mapRes!8525))))

(declare-fun condMapEmpty!8525 () Bool)

(declare-fun mapDefault!8525 () ValueCell!2142)

(assert (=> b!202669 (= condMapEmpty!8525 (= (arr!4333 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2142)) mapDefault!8525)))))

(declare-fun b!202670 () Bool)

(declare-fun res!97205 () Bool)

(assert (=> b!202670 (=> (not res!97205) (not e!132739))))

(declare-datatypes ((List!2762 0))(
  ( (Nil!2759) (Cons!2758 (h!3400 (_ BitVec 64)) (t!7701 List!2762)) )
))
(declare-fun arrayNoDuplicates!0 (array!9168 (_ BitVec 32) List!2762) Bool)

(assert (=> b!202670 (= res!97205 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2759))))

(declare-fun b!202671 () Bool)

(assert (=> b!202671 (= e!132737 tp_is_empty!4971)))

(declare-fun b!202672 () Bool)

(declare-fun res!97203 () Bool)

(assert (=> b!202672 (=> (not res!97203) (not e!132739))))

(assert (=> b!202672 (= res!97203 (= (select (arr!4334 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8525 () Bool)

(assert (=> mapIsEmpty!8525 mapRes!8525))

(declare-fun b!202673 () Bool)

(declare-fun res!97207 () Bool)

(assert (=> b!202673 (=> (not res!97207) (not e!132739))))

(assert (=> b!202673 (= res!97207 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4659 _keys!825))))))

(declare-fun b!202674 () Bool)

(assert (=> b!202674 (= e!132740 true)))

(assert (=> b!202674 (= lt!101912 (+!413 lt!101915 lt!101917))))

(declare-fun lt!101909 () Unit!6127)

(declare-fun addCommutativeForDiffKeys!129 (ListLongMap!2761 (_ BitVec 64) V!6275 (_ BitVec 64) V!6275) Unit!6127)

(assert (=> b!202674 (= lt!101909 (addCommutativeForDiffKeys!129 lt!101906 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20468 res!97201) b!202663))

(assert (= (and b!202663 res!97200) b!202665))

(assert (= (and b!202665 res!97206) b!202670))

(assert (= (and b!202670 res!97205) b!202673))

(assert (= (and b!202673 res!97207) b!202666))

(assert (= (and b!202666 res!97199) b!202672))

(assert (= (and b!202672 res!97203) b!202667))

(assert (= (and b!202667 (not res!97202)) b!202664))

(assert (= (and b!202664 (not res!97204)) b!202674))

(assert (= (and b!202669 condMapEmpty!8525) mapIsEmpty!8525))

(assert (= (and b!202669 (not condMapEmpty!8525)) mapNonEmpty!8525))

(get-info :version)

(assert (= (and mapNonEmpty!8525 ((_ is ValueCellFull!2142) mapValue!8525)) b!202668))

(assert (= (and b!202669 ((_ is ValueCellFull!2142) mapDefault!8525)) b!202671))

(assert (= start!20468 b!202669))

(declare-fun m!230029 () Bool)

(assert (=> b!202674 m!230029))

(declare-fun m!230031 () Bool)

(assert (=> b!202674 m!230031))

(declare-fun m!230033 () Bool)

(assert (=> b!202664 m!230033))

(declare-fun m!230035 () Bool)

(assert (=> b!202664 m!230035))

(declare-fun m!230037 () Bool)

(assert (=> b!202664 m!230037))

(declare-fun m!230039 () Bool)

(assert (=> b!202666 m!230039))

(declare-fun m!230041 () Bool)

(assert (=> b!202672 m!230041))

(declare-fun m!230043 () Bool)

(assert (=> start!20468 m!230043))

(declare-fun m!230045 () Bool)

(assert (=> start!20468 m!230045))

(declare-fun m!230047 () Bool)

(assert (=> start!20468 m!230047))

(declare-fun m!230049 () Bool)

(assert (=> b!202670 m!230049))

(declare-fun m!230051 () Bool)

(assert (=> mapNonEmpty!8525 m!230051))

(declare-fun m!230053 () Bool)

(assert (=> b!202667 m!230053))

(declare-fun m!230055 () Bool)

(assert (=> b!202667 m!230055))

(declare-fun m!230057 () Bool)

(assert (=> b!202667 m!230057))

(declare-fun m!230059 () Bool)

(assert (=> b!202667 m!230059))

(declare-fun m!230061 () Bool)

(assert (=> b!202667 m!230061))

(declare-fun m!230063 () Bool)

(assert (=> b!202667 m!230063))

(declare-fun m!230065 () Bool)

(assert (=> b!202667 m!230065))

(declare-fun m!230067 () Bool)

(assert (=> b!202665 m!230067))

(check-sat (not b_next!5115) (not b!202664) (not b!202667) (not mapNonEmpty!8525) (not b!202674) (not b!202665) (not b!202666) tp_is_empty!4971 b_and!11879 (not start!20468) (not b!202670))
(check-sat b_and!11879 (not b_next!5115))
