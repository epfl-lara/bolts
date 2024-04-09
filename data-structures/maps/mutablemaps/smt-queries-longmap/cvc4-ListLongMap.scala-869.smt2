; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20326 () Bool)

(assert start!20326)

(declare-fun b_free!4973 () Bool)

(declare-fun b_next!4973 () Bool)

(assert (=> start!20326 (= b_free!4973 (not b_next!4973))))

(declare-fun tp!17951 () Bool)

(declare-fun b_and!11737 () Bool)

(assert (=> start!20326 (= tp!17951 b_and!11737)))

(declare-fun b!200100 () Bool)

(declare-fun res!95280 () Bool)

(declare-fun e!131260 () Bool)

(assert (=> b!200100 (=> (not res!95280) (not e!131260))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200100 (= res!95280 (validKeyInArray!0 k!843))))

(declare-fun b!200101 () Bool)

(declare-fun res!95281 () Bool)

(assert (=> b!200101 (=> (not res!95281) (not e!131260))))

(declare-datatypes ((array!8892 0))(
  ( (array!8893 (arr!4196 (Array (_ BitVec 32) (_ BitVec 64))) (size!4521 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8892)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200101 (= res!95281 (= (select (arr!4196 _keys!825) i!601) k!843))))

(declare-fun res!95276 () Bool)

(assert (=> start!20326 (=> (not res!95276) (not e!131260))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20326 (= res!95276 (validMask!0 mask!1149))))

(assert (=> start!20326 e!131260))

(declare-datatypes ((V!6085 0))(
  ( (V!6086 (val!2459 Int)) )
))
(declare-datatypes ((ValueCell!2071 0))(
  ( (ValueCellFull!2071 (v!4425 V!6085)) (EmptyCell!2071) )
))
(declare-datatypes ((array!8894 0))(
  ( (array!8895 (arr!4197 (Array (_ BitVec 32) ValueCell!2071)) (size!4522 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8894)

(declare-fun e!131258 () Bool)

(declare-fun array_inv!2753 (array!8894) Bool)

(assert (=> start!20326 (and (array_inv!2753 _values!649) e!131258)))

(assert (=> start!20326 true))

(declare-fun tp_is_empty!4829 () Bool)

(assert (=> start!20326 tp_is_empty!4829))

(declare-fun array_inv!2754 (array!8892) Bool)

(assert (=> start!20326 (array_inv!2754 _keys!825)))

(assert (=> start!20326 tp!17951))

(declare-fun b!200102 () Bool)

(assert (=> b!200102 (= e!131260 (not (bvsle #b00000000000000000000000000000000 (size!4521 _keys!825))))))

(declare-datatypes ((tuple2!3712 0))(
  ( (tuple2!3713 (_1!1866 (_ BitVec 64)) (_2!1866 V!6085)) )
))
(declare-datatypes ((List!2653 0))(
  ( (Nil!2650) (Cons!2649 (h!3291 tuple2!3712) (t!7592 List!2653)) )
))
(declare-datatypes ((ListLongMap!2639 0))(
  ( (ListLongMap!2640 (toList!1335 List!2653)) )
))
(declare-fun lt!98765 () ListLongMap!2639)

(declare-fun lt!98767 () array!8894)

(declare-fun zeroValue!615 () V!6085)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6085)

(declare-fun getCurrentListMap!921 (array!8892 array!8894 (_ BitVec 32) (_ BitVec 32) V!6085 V!6085 (_ BitVec 32) Int) ListLongMap!2639)

(assert (=> b!200102 (= lt!98765 (getCurrentListMap!921 _keys!825 lt!98767 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98764 () ListLongMap!2639)

(declare-fun lt!98766 () ListLongMap!2639)

(assert (=> b!200102 (and (= lt!98764 lt!98766) (= lt!98766 lt!98764))))

(declare-fun v!520 () V!6085)

(declare-fun lt!98763 () ListLongMap!2639)

(declare-fun +!352 (ListLongMap!2639 tuple2!3712) ListLongMap!2639)

(assert (=> b!200102 (= lt!98766 (+!352 lt!98763 (tuple2!3713 k!843 v!520)))))

(declare-datatypes ((Unit!6013 0))(
  ( (Unit!6014) )
))
(declare-fun lt!98762 () Unit!6013)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!34 (array!8892 array!8894 (_ BitVec 32) (_ BitVec 32) V!6085 V!6085 (_ BitVec 32) (_ BitVec 64) V!6085 (_ BitVec 32) Int) Unit!6013)

(assert (=> b!200102 (= lt!98762 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!34 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!292 (array!8892 array!8894 (_ BitVec 32) (_ BitVec 32) V!6085 V!6085 (_ BitVec 32) Int) ListLongMap!2639)

(assert (=> b!200102 (= lt!98764 (getCurrentListMapNoExtraKeys!292 _keys!825 lt!98767 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200102 (= lt!98767 (array!8895 (store (arr!4197 _values!649) i!601 (ValueCellFull!2071 v!520)) (size!4522 _values!649)))))

(assert (=> b!200102 (= lt!98763 (getCurrentListMapNoExtraKeys!292 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200103 () Bool)

(declare-fun res!95279 () Bool)

(assert (=> b!200103 (=> (not res!95279) (not e!131260))))

(assert (=> b!200103 (= res!95279 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4521 _keys!825))))))

(declare-fun mapIsEmpty!8312 () Bool)

(declare-fun mapRes!8312 () Bool)

(assert (=> mapIsEmpty!8312 mapRes!8312))

(declare-fun b!200104 () Bool)

(declare-fun e!131257 () Bool)

(assert (=> b!200104 (= e!131258 (and e!131257 mapRes!8312))))

(declare-fun condMapEmpty!8312 () Bool)

(declare-fun mapDefault!8312 () ValueCell!2071)

