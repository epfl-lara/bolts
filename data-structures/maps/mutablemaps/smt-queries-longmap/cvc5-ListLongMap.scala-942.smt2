; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20760 () Bool)

(assert start!20760)

(declare-fun b_free!5407 () Bool)

(declare-fun b_next!5407 () Bool)

(assert (=> start!20760 (= b_free!5407 (not b_next!5407))))

(declare-fun tp!19253 () Bool)

(declare-fun b_and!12171 () Bool)

(assert (=> start!20760 (= tp!19253 b_and!12171)))

(declare-fun b!207672 () Bool)

(declare-fun res!100898 () Bool)

(declare-fun e!135548 () Bool)

(assert (=> b!207672 (=> (not res!100898) (not e!135548))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207672 (= res!100898 (validKeyInArray!0 k!843))))

(declare-fun b!207673 () Bool)

(declare-fun e!135550 () Bool)

(declare-fun tp_is_empty!5263 () Bool)

(assert (=> b!207673 (= e!135550 tp_is_empty!5263)))

(declare-fun b!207674 () Bool)

(declare-fun res!100899 () Bool)

(assert (=> b!207674 (=> (not res!100899) (not e!135548))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9732 0))(
  ( (array!9733 (arr!4616 (Array (_ BitVec 32) (_ BitVec 64))) (size!4941 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9732)

(assert (=> b!207674 (= res!100899 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4941 _keys!825))))))

(declare-fun b!207675 () Bool)

(declare-fun res!100894 () Bool)

(assert (=> b!207675 (=> (not res!100894) (not e!135548))))

(assert (=> b!207675 (= res!100894 (= (select (arr!4616 _keys!825) i!601) k!843))))

(declare-fun b!207676 () Bool)

(declare-fun res!100900 () Bool)

(assert (=> b!207676 (=> (not res!100900) (not e!135548))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9732 (_ BitVec 32)) Bool)

(assert (=> b!207676 (= res!100900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207677 () Bool)

(declare-fun e!135547 () Bool)

(assert (=> b!207677 (= e!135547 tp_is_empty!5263)))

(declare-fun b!207678 () Bool)

(declare-fun res!100896 () Bool)

(assert (=> b!207678 (=> (not res!100896) (not e!135548))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6665 0))(
  ( (V!6666 (val!2676 Int)) )
))
(declare-datatypes ((ValueCell!2288 0))(
  ( (ValueCellFull!2288 (v!4642 V!6665)) (EmptyCell!2288) )
))
(declare-datatypes ((array!9734 0))(
  ( (array!9735 (arr!4617 (Array (_ BitVec 32) ValueCell!2288)) (size!4942 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9734)

(assert (=> b!207678 (= res!100896 (and (= (size!4942 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4941 _keys!825) (size!4942 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100895 () Bool)

(assert (=> start!20760 (=> (not res!100895) (not e!135548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20760 (= res!100895 (validMask!0 mask!1149))))

(assert (=> start!20760 e!135548))

(declare-fun e!135549 () Bool)

(declare-fun array_inv!3049 (array!9734) Bool)

(assert (=> start!20760 (and (array_inv!3049 _values!649) e!135549)))

(assert (=> start!20760 true))

(assert (=> start!20760 tp_is_empty!5263))

(declare-fun array_inv!3050 (array!9732) Bool)

(assert (=> start!20760 (array_inv!3050 _keys!825)))

(assert (=> start!20760 tp!19253))

(declare-fun mapNonEmpty!8963 () Bool)

(declare-fun mapRes!8963 () Bool)

(declare-fun tp!19252 () Bool)

(assert (=> mapNonEmpty!8963 (= mapRes!8963 (and tp!19252 e!135550))))

(declare-fun mapValue!8963 () ValueCell!2288)

(declare-fun mapKey!8963 () (_ BitVec 32))

(declare-fun mapRest!8963 () (Array (_ BitVec 32) ValueCell!2288))

(assert (=> mapNonEmpty!8963 (= (arr!4617 _values!649) (store mapRest!8963 mapKey!8963 mapValue!8963))))

(declare-fun b!207679 () Bool)

(assert (=> b!207679 (= e!135548 (not true))))

(declare-datatypes ((tuple2!4056 0))(
  ( (tuple2!4057 (_1!2038 (_ BitVec 64)) (_2!2038 V!6665)) )
))
(declare-datatypes ((List!2973 0))(
  ( (Nil!2970) (Cons!2969 (h!3611 tuple2!4056) (t!7912 List!2973)) )
))
(declare-datatypes ((ListLongMap!2983 0))(
  ( (ListLongMap!2984 (toList!1507 List!2973)) )
))
(declare-fun lt!106496 () ListLongMap!2983)

(declare-fun zeroValue!615 () V!6665)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6665)

(declare-fun getCurrentListMap!1069 (array!9732 array!9734 (_ BitVec 32) (_ BitVec 32) V!6665 V!6665 (_ BitVec 32) Int) ListLongMap!2983)

(assert (=> b!207679 (= lt!106496 (getCurrentListMap!1069 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106499 () array!9734)

(declare-fun lt!106497 () ListLongMap!2983)

(assert (=> b!207679 (= lt!106497 (getCurrentListMap!1069 _keys!825 lt!106499 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106498 () ListLongMap!2983)

(declare-fun lt!106500 () ListLongMap!2983)

(assert (=> b!207679 (and (= lt!106498 lt!106500) (= lt!106500 lt!106498))))

(declare-fun lt!106501 () ListLongMap!2983)

(declare-fun v!520 () V!6665)

(declare-fun +!524 (ListLongMap!2983 tuple2!4056) ListLongMap!2983)

(assert (=> b!207679 (= lt!106500 (+!524 lt!106501 (tuple2!4057 k!843 v!520)))))

(declare-datatypes ((Unit!6343 0))(
  ( (Unit!6344) )
))
(declare-fun lt!106495 () Unit!6343)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!182 (array!9732 array!9734 (_ BitVec 32) (_ BitVec 32) V!6665 V!6665 (_ BitVec 32) (_ BitVec 64) V!6665 (_ BitVec 32) Int) Unit!6343)

(assert (=> b!207679 (= lt!106495 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!182 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!440 (array!9732 array!9734 (_ BitVec 32) (_ BitVec 32) V!6665 V!6665 (_ BitVec 32) Int) ListLongMap!2983)

(assert (=> b!207679 (= lt!106498 (getCurrentListMapNoExtraKeys!440 _keys!825 lt!106499 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207679 (= lt!106499 (array!9735 (store (arr!4617 _values!649) i!601 (ValueCellFull!2288 v!520)) (size!4942 _values!649)))))

(assert (=> b!207679 (= lt!106501 (getCurrentListMapNoExtraKeys!440 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207680 () Bool)

(declare-fun res!100897 () Bool)

(assert (=> b!207680 (=> (not res!100897) (not e!135548))))

(declare-datatypes ((List!2974 0))(
  ( (Nil!2971) (Cons!2970 (h!3612 (_ BitVec 64)) (t!7913 List!2974)) )
))
(declare-fun arrayNoDuplicates!0 (array!9732 (_ BitVec 32) List!2974) Bool)

(assert (=> b!207680 (= res!100897 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2971))))

(declare-fun b!207681 () Bool)

(assert (=> b!207681 (= e!135549 (and e!135547 mapRes!8963))))

(declare-fun condMapEmpty!8963 () Bool)

(declare-fun mapDefault!8963 () ValueCell!2288)

