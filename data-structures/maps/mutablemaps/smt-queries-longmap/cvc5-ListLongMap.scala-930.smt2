; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20688 () Bool)

(assert start!20688)

(declare-fun b_free!5335 () Bool)

(declare-fun b_next!5335 () Bool)

(assert (=> start!20688 (= b_free!5335 (not b_next!5335))))

(declare-fun tp!19037 () Bool)

(declare-fun b_and!12099 () Bool)

(assert (=> start!20688 (= tp!19037 b_and!12099)))

(declare-fun b!206592 () Bool)

(declare-fun res!100139 () Bool)

(declare-fun e!135009 () Bool)

(assert (=> b!206592 (=> (not res!100139) (not e!135009))))

(declare-datatypes ((array!9592 0))(
  ( (array!9593 (arr!4546 (Array (_ BitVec 32) (_ BitVec 64))) (size!4871 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9592)

(declare-datatypes ((List!2920 0))(
  ( (Nil!2917) (Cons!2916 (h!3558 (_ BitVec 64)) (t!7859 List!2920)) )
))
(declare-fun arrayNoDuplicates!0 (array!9592 (_ BitVec 32) List!2920) Bool)

(assert (=> b!206592 (= res!100139 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2917))))

(declare-fun b!206593 () Bool)

(declare-fun res!100144 () Bool)

(assert (=> b!206593 (=> (not res!100144) (not e!135009))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206593 (= res!100144 (validKeyInArray!0 k!843))))

(declare-fun b!206594 () Bool)

(assert (=> b!206594 (= e!135009 (not true))))

(declare-datatypes ((V!6569 0))(
  ( (V!6570 (val!2640 Int)) )
))
(declare-datatypes ((ValueCell!2252 0))(
  ( (ValueCellFull!2252 (v!4606 V!6569)) (EmptyCell!2252) )
))
(declare-datatypes ((array!9594 0))(
  ( (array!9595 (arr!4547 (Array (_ BitVec 32) ValueCell!2252)) (size!4872 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9594)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4004 0))(
  ( (tuple2!4005 (_1!2012 (_ BitVec 64)) (_2!2012 V!6569)) )
))
(declare-datatypes ((List!2921 0))(
  ( (Nil!2918) (Cons!2917 (h!3559 tuple2!4004) (t!7860 List!2921)) )
))
(declare-datatypes ((ListLongMap!2931 0))(
  ( (ListLongMap!2932 (toList!1481 List!2921)) )
))
(declare-fun lt!105735 () ListLongMap!2931)

(declare-fun zeroValue!615 () V!6569)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6569)

(declare-fun getCurrentListMap!1043 (array!9592 array!9594 (_ BitVec 32) (_ BitVec 32) V!6569 V!6569 (_ BitVec 32) Int) ListLongMap!2931)

(assert (=> b!206594 (= lt!105735 (getCurrentListMap!1043 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105733 () array!9594)

(declare-fun lt!105732 () ListLongMap!2931)

(assert (=> b!206594 (= lt!105732 (getCurrentListMap!1043 _keys!825 lt!105733 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105734 () ListLongMap!2931)

(declare-fun lt!105731 () ListLongMap!2931)

(assert (=> b!206594 (and (= lt!105734 lt!105731) (= lt!105731 lt!105734))))

(declare-fun lt!105736 () ListLongMap!2931)

(declare-fun v!520 () V!6569)

(declare-fun +!498 (ListLongMap!2931 tuple2!4004) ListLongMap!2931)

(assert (=> b!206594 (= lt!105731 (+!498 lt!105736 (tuple2!4005 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6291 0))(
  ( (Unit!6292) )
))
(declare-fun lt!105730 () Unit!6291)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!156 (array!9592 array!9594 (_ BitVec 32) (_ BitVec 32) V!6569 V!6569 (_ BitVec 32) (_ BitVec 64) V!6569 (_ BitVec 32) Int) Unit!6291)

(assert (=> b!206594 (= lt!105730 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!156 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!414 (array!9592 array!9594 (_ BitVec 32) (_ BitVec 32) V!6569 V!6569 (_ BitVec 32) Int) ListLongMap!2931)

(assert (=> b!206594 (= lt!105734 (getCurrentListMapNoExtraKeys!414 _keys!825 lt!105733 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206594 (= lt!105733 (array!9595 (store (arr!4547 _values!649) i!601 (ValueCellFull!2252 v!520)) (size!4872 _values!649)))))

(assert (=> b!206594 (= lt!105736 (getCurrentListMapNoExtraKeys!414 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!100138 () Bool)

(assert (=> start!20688 (=> (not res!100138) (not e!135009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20688 (= res!100138 (validMask!0 mask!1149))))

(assert (=> start!20688 e!135009))

(declare-fun e!135007 () Bool)

(declare-fun array_inv!2997 (array!9594) Bool)

(assert (=> start!20688 (and (array_inv!2997 _values!649) e!135007)))

(assert (=> start!20688 true))

(declare-fun tp_is_empty!5191 () Bool)

(assert (=> start!20688 tp_is_empty!5191))

(declare-fun array_inv!2998 (array!9592) Bool)

(assert (=> start!20688 (array_inv!2998 _keys!825)))

(assert (=> start!20688 tp!19037))

(declare-fun b!206595 () Bool)

(declare-fun e!135010 () Bool)

(assert (=> b!206595 (= e!135010 tp_is_empty!5191)))

(declare-fun b!206596 () Bool)

(declare-fun res!100141 () Bool)

(assert (=> b!206596 (=> (not res!100141) (not e!135009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9592 (_ BitVec 32)) Bool)

(assert (=> b!206596 (= res!100141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206597 () Bool)

(declare-fun e!135006 () Bool)

(declare-fun mapRes!8855 () Bool)

(assert (=> b!206597 (= e!135007 (and e!135006 mapRes!8855))))

(declare-fun condMapEmpty!8855 () Bool)

(declare-fun mapDefault!8855 () ValueCell!2252)

