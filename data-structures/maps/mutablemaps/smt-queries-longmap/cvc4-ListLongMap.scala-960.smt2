; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20872 () Bool)

(assert start!20872)

(declare-fun b_free!5513 () Bool)

(declare-fun b_next!5513 () Bool)

(assert (=> start!20872 (= b_free!5513 (not b_next!5513))))

(declare-fun tp!19579 () Bool)

(declare-fun b_and!12277 () Bool)

(assert (=> start!20872 (= tp!19579 b_and!12277)))

(declare-fun b!209316 () Bool)

(declare-fun res!102036 () Bool)

(declare-fun e!136387 () Bool)

(assert (=> b!209316 (=> (not res!102036) (not e!136387))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209316 (= res!102036 (validKeyInArray!0 k!843))))

(declare-fun b!209317 () Bool)

(declare-fun res!102039 () Bool)

(assert (=> b!209317 (=> (not res!102039) (not e!136387))))

(declare-datatypes ((array!9946 0))(
  ( (array!9947 (arr!4723 (Array (_ BitVec 32) (_ BitVec 64))) (size!5048 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9946)

(declare-datatypes ((List!3043 0))(
  ( (Nil!3040) (Cons!3039 (h!3681 (_ BitVec 64)) (t!7982 List!3043)) )
))
(declare-fun arrayNoDuplicates!0 (array!9946 (_ BitVec 32) List!3043) Bool)

(assert (=> b!209317 (= res!102039 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3040))))

(declare-fun mapNonEmpty!9131 () Bool)

(declare-fun mapRes!9131 () Bool)

(declare-fun tp!19580 () Bool)

(declare-fun e!136386 () Bool)

(assert (=> mapNonEmpty!9131 (= mapRes!9131 (and tp!19580 e!136386))))

(declare-datatypes ((V!6813 0))(
  ( (V!6814 (val!2732 Int)) )
))
(declare-datatypes ((ValueCell!2344 0))(
  ( (ValueCellFull!2344 (v!4698 V!6813)) (EmptyCell!2344) )
))
(declare-datatypes ((array!9948 0))(
  ( (array!9949 (arr!4724 (Array (_ BitVec 32) ValueCell!2344)) (size!5049 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9948)

(declare-fun mapRest!9131 () (Array (_ BitVec 32) ValueCell!2344))

(declare-fun mapKey!9131 () (_ BitVec 32))

(declare-fun mapValue!9131 () ValueCell!2344)

(assert (=> mapNonEmpty!9131 (= (arr!4724 _values!649) (store mapRest!9131 mapKey!9131 mapValue!9131))))

(declare-fun b!209318 () Bool)

(declare-fun tp_is_empty!5375 () Bool)

(assert (=> b!209318 (= e!136386 tp_is_empty!5375)))

(declare-fun res!102040 () Bool)

(assert (=> start!20872 (=> (not res!102040) (not e!136387))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20872 (= res!102040 (validMask!0 mask!1149))))

(assert (=> start!20872 e!136387))

(declare-fun e!136388 () Bool)

(declare-fun array_inv!3117 (array!9948) Bool)

(assert (=> start!20872 (and (array_inv!3117 _values!649) e!136388)))

(assert (=> start!20872 true))

(assert (=> start!20872 tp_is_empty!5375))

(declare-fun array_inv!3118 (array!9946) Bool)

(assert (=> start!20872 (array_inv!3118 _keys!825)))

(assert (=> start!20872 tp!19579))

(declare-fun b!209319 () Bool)

(declare-fun res!102038 () Bool)

(assert (=> b!209319 (=> (not res!102038) (not e!136387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9946 (_ BitVec 32)) Bool)

(assert (=> b!209319 (= res!102038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209320 () Bool)

(declare-fun res!102034 () Bool)

(assert (=> b!209320 (=> (not res!102034) (not e!136387))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209320 (= res!102034 (= (select (arr!4723 _keys!825) i!601) k!843))))

(declare-fun b!209321 () Bool)

(declare-fun e!136390 () Bool)

(assert (=> b!209321 (= e!136390 tp_is_empty!5375)))

(declare-fun b!209322 () Bool)

(declare-datatypes ((tuple2!4124 0))(
  ( (tuple2!4125 (_1!2072 (_ BitVec 64)) (_2!2072 V!6813)) )
))
(declare-datatypes ((List!3044 0))(
  ( (Nil!3041) (Cons!3040 (h!3682 tuple2!4124) (t!7983 List!3044)) )
))
(declare-datatypes ((ListLongMap!3051 0))(
  ( (ListLongMap!3052 (toList!1541 List!3044)) )
))
(declare-fun lt!107011 () ListLongMap!3051)

(declare-fun lt!107009 () ListLongMap!3051)

(assert (=> b!209322 (= e!136387 (not (= lt!107011 lt!107009)))))

(assert (=> b!209322 (= lt!107009 lt!107011)))

(declare-fun v!520 () V!6813)

(declare-fun lt!107008 () ListLongMap!3051)

(declare-fun +!534 (ListLongMap!3051 tuple2!4124) ListLongMap!3051)

(assert (=> b!209322 (= lt!107011 (+!534 lt!107008 (tuple2!4125 k!843 v!520)))))

(declare-datatypes ((Unit!6363 0))(
  ( (Unit!6364) )
))
(declare-fun lt!107010 () Unit!6363)

(declare-fun zeroValue!615 () V!6813)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6813)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!192 (array!9946 array!9948 (_ BitVec 32) (_ BitVec 32) V!6813 V!6813 (_ BitVec 32) (_ BitVec 64) V!6813 (_ BitVec 32) Int) Unit!6363)

(assert (=> b!209322 (= lt!107010 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!192 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!474 (array!9946 array!9948 (_ BitVec 32) (_ BitVec 32) V!6813 V!6813 (_ BitVec 32) Int) ListLongMap!3051)

(assert (=> b!209322 (= lt!107009 (getCurrentListMapNoExtraKeys!474 _keys!825 (array!9949 (store (arr!4724 _values!649) i!601 (ValueCellFull!2344 v!520)) (size!5049 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209322 (= lt!107008 (getCurrentListMapNoExtraKeys!474 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9131 () Bool)

(assert (=> mapIsEmpty!9131 mapRes!9131))

(declare-fun b!209323 () Bool)

(declare-fun res!102035 () Bool)

(assert (=> b!209323 (=> (not res!102035) (not e!136387))))

(assert (=> b!209323 (= res!102035 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5048 _keys!825))))))

(declare-fun b!209324 () Bool)

(assert (=> b!209324 (= e!136388 (and e!136390 mapRes!9131))))

(declare-fun condMapEmpty!9131 () Bool)

(declare-fun mapDefault!9131 () ValueCell!2344)

