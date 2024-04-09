; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20706 () Bool)

(assert start!20706)

(declare-fun b_free!5353 () Bool)

(declare-fun b_next!5353 () Bool)

(assert (=> start!20706 (= b_free!5353 (not b_next!5353))))

(declare-fun tp!19090 () Bool)

(declare-fun b_and!12117 () Bool)

(assert (=> start!20706 (= tp!19090 b_and!12117)))

(declare-fun b!206862 () Bool)

(declare-fun res!100327 () Bool)

(declare-fun e!135143 () Bool)

(assert (=> b!206862 (=> (not res!100327) (not e!135143))))

(declare-datatypes ((array!9626 0))(
  ( (array!9627 (arr!4563 (Array (_ BitVec 32) (_ BitVec 64))) (size!4888 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9626)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6593 0))(
  ( (V!6594 (val!2649 Int)) )
))
(declare-datatypes ((ValueCell!2261 0))(
  ( (ValueCellFull!2261 (v!4615 V!6593)) (EmptyCell!2261) )
))
(declare-datatypes ((array!9628 0))(
  ( (array!9629 (arr!4564 (Array (_ BitVec 32) ValueCell!2261)) (size!4889 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9628)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206862 (= res!100327 (and (= (size!4889 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4888 _keys!825) (size!4889 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206863 () Bool)

(declare-fun res!100328 () Bool)

(assert (=> b!206863 (=> (not res!100328) (not e!135143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9626 (_ BitVec 32)) Bool)

(assert (=> b!206863 (= res!100328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206864 () Bool)

(assert (=> b!206864 (= e!135143 (not true))))

(declare-datatypes ((tuple2!4018 0))(
  ( (tuple2!4019 (_1!2019 (_ BitVec 64)) (_2!2019 V!6593)) )
))
(declare-datatypes ((List!2933 0))(
  ( (Nil!2930) (Cons!2929 (h!3571 tuple2!4018) (t!7872 List!2933)) )
))
(declare-datatypes ((ListLongMap!2945 0))(
  ( (ListLongMap!2946 (toList!1488 List!2933)) )
))
(declare-fun lt!105921 () ListLongMap!2945)

(declare-fun zeroValue!615 () V!6593)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6593)

(declare-fun getCurrentListMap!1050 (array!9626 array!9628 (_ BitVec 32) (_ BitVec 32) V!6593 V!6593 (_ BitVec 32) Int) ListLongMap!2945)

(assert (=> b!206864 (= lt!105921 (getCurrentListMap!1050 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105925 () array!9628)

(declare-fun lt!105922 () ListLongMap!2945)

(assert (=> b!206864 (= lt!105922 (getCurrentListMap!1050 _keys!825 lt!105925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105923 () ListLongMap!2945)

(declare-fun lt!105920 () ListLongMap!2945)

(assert (=> b!206864 (and (= lt!105923 lt!105920) (= lt!105920 lt!105923))))

(declare-fun lt!105919 () ListLongMap!2945)

(declare-fun v!520 () V!6593)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!505 (ListLongMap!2945 tuple2!4018) ListLongMap!2945)

(assert (=> b!206864 (= lt!105920 (+!505 lt!105919 (tuple2!4019 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6305 0))(
  ( (Unit!6306) )
))
(declare-fun lt!105924 () Unit!6305)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!163 (array!9626 array!9628 (_ BitVec 32) (_ BitVec 32) V!6593 V!6593 (_ BitVec 32) (_ BitVec 64) V!6593 (_ BitVec 32) Int) Unit!6305)

(assert (=> b!206864 (= lt!105924 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!163 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!421 (array!9626 array!9628 (_ BitVec 32) (_ BitVec 32) V!6593 V!6593 (_ BitVec 32) Int) ListLongMap!2945)

(assert (=> b!206864 (= lt!105923 (getCurrentListMapNoExtraKeys!421 _keys!825 lt!105925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206864 (= lt!105925 (array!9629 (store (arr!4564 _values!649) i!601 (ValueCellFull!2261 v!520)) (size!4889 _values!649)))))

(assert (=> b!206864 (= lt!105919 (getCurrentListMapNoExtraKeys!421 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8882 () Bool)

(declare-fun mapRes!8882 () Bool)

(declare-fun tp!19091 () Bool)

(declare-fun e!135144 () Bool)

(assert (=> mapNonEmpty!8882 (= mapRes!8882 (and tp!19091 e!135144))))

(declare-fun mapRest!8882 () (Array (_ BitVec 32) ValueCell!2261))

(declare-fun mapValue!8882 () ValueCell!2261)

(declare-fun mapKey!8882 () (_ BitVec 32))

(assert (=> mapNonEmpty!8882 (= (arr!4564 _values!649) (store mapRest!8882 mapKey!8882 mapValue!8882))))

(declare-fun b!206865 () Bool)

(declare-fun e!135141 () Bool)

(declare-fun e!135145 () Bool)

(assert (=> b!206865 (= e!135141 (and e!135145 mapRes!8882))))

(declare-fun condMapEmpty!8882 () Bool)

(declare-fun mapDefault!8882 () ValueCell!2261)

