; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20592 () Bool)

(assert start!20592)

(declare-fun b_free!5239 () Bool)

(declare-fun b_next!5239 () Bool)

(assert (=> start!20592 (= b_free!5239 (not b_next!5239))))

(declare-fun tp!18749 () Bool)

(declare-fun b_and!12003 () Bool)

(assert (=> start!20592 (= tp!18749 b_and!12003)))

(declare-fun mapNonEmpty!8711 () Bool)

(declare-fun mapRes!8711 () Bool)

(declare-fun tp!18748 () Bool)

(declare-fun e!134039 () Bool)

(assert (=> mapNonEmpty!8711 (= mapRes!8711 (and tp!18748 e!134039))))

(declare-datatypes ((V!6441 0))(
  ( (V!6442 (val!2592 Int)) )
))
(declare-datatypes ((ValueCell!2204 0))(
  ( (ValueCellFull!2204 (v!4558 V!6441)) (EmptyCell!2204) )
))
(declare-datatypes ((array!9402 0))(
  ( (array!9403 (arr!4451 (Array (_ BitVec 32) ValueCell!2204)) (size!4776 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9402)

(declare-fun mapRest!8711 () (Array (_ BitVec 32) ValueCell!2204))

(declare-fun mapValue!8711 () ValueCell!2204)

(declare-fun mapKey!8711 () (_ BitVec 32))

(assert (=> mapNonEmpty!8711 (= (arr!4451 _values!649) (store mapRest!8711 mapKey!8711 mapValue!8711))))

(declare-fun b!204904 () Bool)

(declare-fun tp_is_empty!5095 () Bool)

(assert (=> b!204904 (= e!134039 tp_is_empty!5095)))

(declare-fun res!98889 () Bool)

(declare-fun e!134042 () Bool)

(assert (=> start!20592 (=> (not res!98889) (not e!134042))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20592 (= res!98889 (validMask!0 mask!1149))))

(assert (=> start!20592 e!134042))

(declare-fun e!134041 () Bool)

(declare-fun array_inv!2929 (array!9402) Bool)

(assert (=> start!20592 (and (array_inv!2929 _values!649) e!134041)))

(assert (=> start!20592 true))

(assert (=> start!20592 tp_is_empty!5095))

(declare-datatypes ((array!9404 0))(
  ( (array!9405 (arr!4452 (Array (_ BitVec 32) (_ BitVec 64))) (size!4777 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9404)

(declare-fun array_inv!2930 (array!9404) Bool)

(assert (=> start!20592 (array_inv!2930 _keys!825)))

(assert (=> start!20592 tp!18749))

(declare-fun b!204905 () Bool)

(declare-fun res!98883 () Bool)

(assert (=> b!204905 (=> (not res!98883) (not e!134042))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204905 (= res!98883 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4777 _keys!825))))))

(declare-fun b!204906 () Bool)

(declare-fun res!98890 () Bool)

(assert (=> b!204906 (=> (not res!98890) (not e!134042))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!204906 (= res!98890 (= (select (arr!4452 _keys!825) i!601) k!843))))

(declare-fun b!204907 () Bool)

(declare-fun e!134043 () Bool)

(assert (=> b!204907 (= e!134042 (not e!134043))))

(declare-fun res!98884 () Bool)

(assert (=> b!204907 (=> res!98884 e!134043)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204907 (= res!98884 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3924 0))(
  ( (tuple2!3925 (_1!1972 (_ BitVec 64)) (_2!1972 V!6441)) )
))
(declare-datatypes ((List!2847 0))(
  ( (Nil!2844) (Cons!2843 (h!3485 tuple2!3924) (t!7786 List!2847)) )
))
(declare-datatypes ((ListLongMap!2851 0))(
  ( (ListLongMap!2852 (toList!1441 List!2847)) )
))
(declare-fun lt!104104 () ListLongMap!2851)

(declare-fun zeroValue!615 () V!6441)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6441)

(declare-fun getCurrentListMap!1009 (array!9404 array!9402 (_ BitVec 32) (_ BitVec 32) V!6441 V!6441 (_ BitVec 32) Int) ListLongMap!2851)

(assert (=> b!204907 (= lt!104104 (getCurrentListMap!1009 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104105 () array!9402)

(declare-fun lt!104106 () ListLongMap!2851)

(assert (=> b!204907 (= lt!104106 (getCurrentListMap!1009 _keys!825 lt!104105 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104107 () ListLongMap!2851)

(declare-fun lt!104112 () ListLongMap!2851)

(assert (=> b!204907 (and (= lt!104107 lt!104112) (= lt!104112 lt!104107))))

(declare-fun lt!104113 () ListLongMap!2851)

(declare-fun lt!104108 () tuple2!3924)

(declare-fun +!458 (ListLongMap!2851 tuple2!3924) ListLongMap!2851)

(assert (=> b!204907 (= lt!104112 (+!458 lt!104113 lt!104108))))

(declare-fun v!520 () V!6441)

(assert (=> b!204907 (= lt!104108 (tuple2!3925 k!843 v!520))))

(declare-datatypes ((Unit!6215 0))(
  ( (Unit!6216) )
))
(declare-fun lt!104102 () Unit!6215)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!122 (array!9404 array!9402 (_ BitVec 32) (_ BitVec 32) V!6441 V!6441 (_ BitVec 32) (_ BitVec 64) V!6441 (_ BitVec 32) Int) Unit!6215)

(assert (=> b!204907 (= lt!104102 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!122 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!380 (array!9404 array!9402 (_ BitVec 32) (_ BitVec 32) V!6441 V!6441 (_ BitVec 32) Int) ListLongMap!2851)

(assert (=> b!204907 (= lt!104107 (getCurrentListMapNoExtraKeys!380 _keys!825 lt!104105 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204907 (= lt!104105 (array!9403 (store (arr!4451 _values!649) i!601 (ValueCellFull!2204 v!520)) (size!4776 _values!649)))))

(assert (=> b!204907 (= lt!104113 (getCurrentListMapNoExtraKeys!380 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204908 () Bool)

(declare-fun e!134038 () Bool)

(assert (=> b!204908 (= e!134038 true)))

(declare-fun lt!104110 () ListLongMap!2851)

(declare-fun lt!104103 () ListLongMap!2851)

(assert (=> b!204908 (= lt!104110 (+!458 lt!104103 lt!104108))))

(declare-fun lt!104111 () Unit!6215)

(declare-fun addCommutativeForDiffKeys!163 (ListLongMap!2851 (_ BitVec 64) V!6441 (_ BitVec 64) V!6441) Unit!6215)

(assert (=> b!204908 (= lt!104111 (addCommutativeForDiffKeys!163 lt!104113 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204909 () Bool)

(assert (=> b!204909 (= e!134043 e!134038)))

(declare-fun res!98885 () Bool)

(assert (=> b!204909 (=> res!98885 e!134038)))

(assert (=> b!204909 (= res!98885 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!204909 (= lt!104104 lt!104103)))

(declare-fun lt!104109 () tuple2!3924)

(assert (=> b!204909 (= lt!104103 (+!458 lt!104113 lt!104109))))

(assert (=> b!204909 (= lt!104106 lt!104110)))

(assert (=> b!204909 (= lt!104110 (+!458 lt!104112 lt!104109))))

(assert (=> b!204909 (= lt!104106 (+!458 lt!104107 lt!104109))))

(assert (=> b!204909 (= lt!104109 (tuple2!3925 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204910 () Bool)

(declare-fun res!98882 () Bool)

(assert (=> b!204910 (=> (not res!98882) (not e!134042))))

(assert (=> b!204910 (= res!98882 (and (= (size!4776 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4777 _keys!825) (size!4776 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204911 () Bool)

(declare-fun res!98886 () Bool)

(assert (=> b!204911 (=> (not res!98886) (not e!134042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9404 (_ BitVec 32)) Bool)

(assert (=> b!204911 (= res!98886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204912 () Bool)

(declare-fun e!134040 () Bool)

(assert (=> b!204912 (= e!134040 tp_is_empty!5095)))

(declare-fun b!204913 () Bool)

(declare-fun res!98888 () Bool)

(assert (=> b!204913 (=> (not res!98888) (not e!134042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204913 (= res!98888 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8711 () Bool)

(assert (=> mapIsEmpty!8711 mapRes!8711))

(declare-fun b!204914 () Bool)

(declare-fun res!98887 () Bool)

(assert (=> b!204914 (=> (not res!98887) (not e!134042))))

(declare-datatypes ((List!2848 0))(
  ( (Nil!2845) (Cons!2844 (h!3486 (_ BitVec 64)) (t!7787 List!2848)) )
))
(declare-fun arrayNoDuplicates!0 (array!9404 (_ BitVec 32) List!2848) Bool)

(assert (=> b!204914 (= res!98887 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2845))))

(declare-fun b!204915 () Bool)

(assert (=> b!204915 (= e!134041 (and e!134040 mapRes!8711))))

(declare-fun condMapEmpty!8711 () Bool)

(declare-fun mapDefault!8711 () ValueCell!2204)

