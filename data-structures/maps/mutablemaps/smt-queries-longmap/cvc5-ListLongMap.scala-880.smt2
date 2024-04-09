; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20388 () Bool)

(assert start!20388)

(declare-fun b_free!5035 () Bool)

(declare-fun b_next!5035 () Bool)

(assert (=> start!20388 (= b_free!5035 (not b_next!5035))))

(declare-fun tp!18137 () Bool)

(declare-fun b_and!11799 () Bool)

(assert (=> start!20388 (= tp!18137 b_and!11799)))

(declare-fun res!96112 () Bool)

(declare-fun e!131896 () Bool)

(assert (=> start!20388 (=> (not res!96112) (not e!131896))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20388 (= res!96112 (validMask!0 mask!1149))))

(assert (=> start!20388 e!131896))

(declare-datatypes ((V!6169 0))(
  ( (V!6170 (val!2490 Int)) )
))
(declare-datatypes ((ValueCell!2102 0))(
  ( (ValueCellFull!2102 (v!4456 V!6169)) (EmptyCell!2102) )
))
(declare-datatypes ((array!9010 0))(
  ( (array!9011 (arr!4255 (Array (_ BitVec 32) ValueCell!2102)) (size!4580 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9010)

(declare-fun e!131899 () Bool)

(declare-fun array_inv!2795 (array!9010) Bool)

(assert (=> start!20388 (and (array_inv!2795 _values!649) e!131899)))

(assert (=> start!20388 true))

(declare-fun tp_is_empty!4891 () Bool)

(assert (=> start!20388 tp_is_empty!4891))

(declare-datatypes ((array!9012 0))(
  ( (array!9013 (arr!4256 (Array (_ BitVec 32) (_ BitVec 64))) (size!4581 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9012)

(declare-fun array_inv!2796 (array!9012) Bool)

(assert (=> start!20388 (array_inv!2796 _keys!825)))

(assert (=> start!20388 tp!18137))

(declare-fun b!201214 () Bool)

(declare-fun res!96118 () Bool)

(assert (=> b!201214 (=> (not res!96118) (not e!131896))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201214 (= res!96118 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4581 _keys!825))))))

(declare-fun mapNonEmpty!8405 () Bool)

(declare-fun mapRes!8405 () Bool)

(declare-fun tp!18136 () Bool)

(declare-fun e!131902 () Bool)

(assert (=> mapNonEmpty!8405 (= mapRes!8405 (and tp!18136 e!131902))))

(declare-fun mapRest!8405 () (Array (_ BitVec 32) ValueCell!2102))

(declare-fun mapValue!8405 () ValueCell!2102)

(declare-fun mapKey!8405 () (_ BitVec 32))

(assert (=> mapNonEmpty!8405 (= (arr!4255 _values!649) (store mapRest!8405 mapKey!8405 mapValue!8405))))

(declare-fun b!201215 () Bool)

(declare-fun e!131900 () Bool)

(assert (=> b!201215 (= e!131896 (not e!131900))))

(declare-fun res!96116 () Bool)

(assert (=> b!201215 (=> res!96116 e!131900)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201215 (= res!96116 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3764 0))(
  ( (tuple2!3765 (_1!1892 (_ BitVec 64)) (_2!1892 V!6169)) )
))
(declare-datatypes ((List!2704 0))(
  ( (Nil!2701) (Cons!2700 (h!3342 tuple2!3764) (t!7643 List!2704)) )
))
(declare-datatypes ((ListLongMap!2691 0))(
  ( (ListLongMap!2692 (toList!1361 List!2704)) )
))
(declare-fun lt!100161 () ListLongMap!2691)

(declare-fun zeroValue!615 () V!6169)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6169)

(declare-fun getCurrentListMap!945 (array!9012 array!9010 (_ BitVec 32) (_ BitVec 32) V!6169 V!6169 (_ BitVec 32) Int) ListLongMap!2691)

(assert (=> b!201215 (= lt!100161 (getCurrentListMap!945 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100151 () array!9010)

(declare-fun lt!100158 () ListLongMap!2691)

(assert (=> b!201215 (= lt!100158 (getCurrentListMap!945 _keys!825 lt!100151 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100165 () ListLongMap!2691)

(declare-fun lt!100152 () ListLongMap!2691)

(assert (=> b!201215 (and (= lt!100165 lt!100152) (= lt!100152 lt!100165))))

(declare-fun lt!100155 () ListLongMap!2691)

(declare-fun lt!100154 () tuple2!3764)

(declare-fun +!378 (ListLongMap!2691 tuple2!3764) ListLongMap!2691)

(assert (=> b!201215 (= lt!100152 (+!378 lt!100155 lt!100154))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6169)

(assert (=> b!201215 (= lt!100154 (tuple2!3765 k!843 v!520))))

(declare-datatypes ((Unit!6063 0))(
  ( (Unit!6064) )
))
(declare-fun lt!100160 () Unit!6063)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!58 (array!9012 array!9010 (_ BitVec 32) (_ BitVec 32) V!6169 V!6169 (_ BitVec 32) (_ BitVec 64) V!6169 (_ BitVec 32) Int) Unit!6063)

(assert (=> b!201215 (= lt!100160 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!58 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!316 (array!9012 array!9010 (_ BitVec 32) (_ BitVec 32) V!6169 V!6169 (_ BitVec 32) Int) ListLongMap!2691)

(assert (=> b!201215 (= lt!100165 (getCurrentListMapNoExtraKeys!316 _keys!825 lt!100151 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201215 (= lt!100151 (array!9011 (store (arr!4255 _values!649) i!601 (ValueCellFull!2102 v!520)) (size!4580 _values!649)))))

(assert (=> b!201215 (= lt!100155 (getCurrentListMapNoExtraKeys!316 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201216 () Bool)

(assert (=> b!201216 (= e!131902 tp_is_empty!4891)))

(declare-fun b!201217 () Bool)

(declare-fun res!96110 () Bool)

(assert (=> b!201217 (=> (not res!96110) (not e!131896))))

(assert (=> b!201217 (= res!96110 (= (select (arr!4256 _keys!825) i!601) k!843))))

(declare-fun b!201218 () Bool)

(declare-fun res!96115 () Bool)

(assert (=> b!201218 (=> (not res!96115) (not e!131896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201218 (= res!96115 (validKeyInArray!0 k!843))))

(declare-fun b!201219 () Bool)

(declare-fun res!96113 () Bool)

(assert (=> b!201219 (=> (not res!96113) (not e!131896))))

(assert (=> b!201219 (= res!96113 (and (= (size!4580 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4581 _keys!825) (size!4580 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201220 () Bool)

(declare-fun res!96111 () Bool)

(assert (=> b!201220 (=> (not res!96111) (not e!131896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9012 (_ BitVec 32)) Bool)

(assert (=> b!201220 (= res!96111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201221 () Bool)

(declare-fun e!131898 () Bool)

(assert (=> b!201221 (= e!131900 e!131898)))

(declare-fun res!96117 () Bool)

(assert (=> b!201221 (=> res!96117 e!131898)))

(assert (=> b!201221 (= res!96117 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100150 () ListLongMap!2691)

(declare-fun lt!100153 () ListLongMap!2691)

(assert (=> b!201221 (= lt!100150 lt!100153)))

(declare-fun lt!100163 () ListLongMap!2691)

(assert (=> b!201221 (= lt!100153 (+!378 lt!100163 lt!100154))))

(declare-fun lt!100164 () Unit!6063)

(declare-fun addCommutativeForDiffKeys!99 (ListLongMap!2691 (_ BitVec 64) V!6169 (_ BitVec 64) V!6169) Unit!6063)

(assert (=> b!201221 (= lt!100164 (addCommutativeForDiffKeys!99 lt!100155 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100156 () tuple2!3764)

(assert (=> b!201221 (= lt!100158 (+!378 lt!100150 lt!100156))))

(declare-fun lt!100162 () tuple2!3764)

(assert (=> b!201221 (= lt!100150 (+!378 lt!100152 lt!100162))))

(declare-fun lt!100159 () ListLongMap!2691)

(assert (=> b!201221 (= lt!100161 lt!100159)))

(assert (=> b!201221 (= lt!100159 (+!378 lt!100163 lt!100156))))

(assert (=> b!201221 (= lt!100163 (+!378 lt!100155 lt!100162))))

(assert (=> b!201221 (= lt!100158 (+!378 (+!378 lt!100165 lt!100162) lt!100156))))

(assert (=> b!201221 (= lt!100156 (tuple2!3765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201221 (= lt!100162 (tuple2!3765 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201222 () Bool)

(assert (=> b!201222 (= e!131898 (bvsle #b00000000000000000000000000000000 (size!4581 _keys!825)))))

(assert (=> b!201222 (= (+!378 lt!100153 lt!100156) (+!378 lt!100159 lt!100154))))

(declare-fun lt!100157 () Unit!6063)

(assert (=> b!201222 (= lt!100157 (addCommutativeForDiffKeys!99 lt!100163 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201223 () Bool)

(declare-fun e!131897 () Bool)

(assert (=> b!201223 (= e!131899 (and e!131897 mapRes!8405))))

(declare-fun condMapEmpty!8405 () Bool)

(declare-fun mapDefault!8405 () ValueCell!2102)

