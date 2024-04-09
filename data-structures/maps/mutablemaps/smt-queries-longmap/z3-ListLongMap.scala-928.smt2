; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20678 () Bool)

(assert start!20678)

(declare-fun b_free!5325 () Bool)

(declare-fun b_next!5325 () Bool)

(assert (=> start!20678 (= b_free!5325 (not b_next!5325))))

(declare-fun tp!19006 () Bool)

(declare-fun b_and!12089 () Bool)

(assert (=> start!20678 (= tp!19006 b_and!12089)))

(declare-fun b!206442 () Bool)

(declare-fun res!100038 () Bool)

(declare-fun e!134933 () Bool)

(assert (=> b!206442 (=> (not res!100038) (not e!134933))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9572 0))(
  ( (array!9573 (arr!4536 (Array (_ BitVec 32) (_ BitVec 64))) (size!4861 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9572)

(assert (=> b!206442 (= res!100038 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4861 _keys!825))))))

(declare-fun b!206444 () Bool)

(declare-fun e!134931 () Bool)

(declare-fun tp_is_empty!5181 () Bool)

(assert (=> b!206444 (= e!134931 tp_is_empty!5181)))

(declare-fun b!206445 () Bool)

(declare-fun e!134935 () Bool)

(declare-fun e!134932 () Bool)

(declare-fun mapRes!8840 () Bool)

(assert (=> b!206445 (= e!134935 (and e!134932 mapRes!8840))))

(declare-fun condMapEmpty!8840 () Bool)

(declare-datatypes ((V!6555 0))(
  ( (V!6556 (val!2635 Int)) )
))
(declare-datatypes ((ValueCell!2247 0))(
  ( (ValueCellFull!2247 (v!4601 V!6555)) (EmptyCell!2247) )
))
(declare-datatypes ((array!9574 0))(
  ( (array!9575 (arr!4537 (Array (_ BitVec 32) ValueCell!2247)) (size!4862 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9574)

(declare-fun mapDefault!8840 () ValueCell!2247)

(assert (=> b!206445 (= condMapEmpty!8840 (= (arr!4537 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2247)) mapDefault!8840)))))

(declare-fun b!206446 () Bool)

(declare-fun res!100037 () Bool)

(assert (=> b!206446 (=> (not res!100037) (not e!134933))))

(declare-datatypes ((List!2915 0))(
  ( (Nil!2912) (Cons!2911 (h!3553 (_ BitVec 64)) (t!7854 List!2915)) )
))
(declare-fun arrayNoDuplicates!0 (array!9572 (_ BitVec 32) List!2915) Bool)

(assert (=> b!206446 (= res!100037 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2912))))

(declare-fun b!206447 () Bool)

(declare-fun res!100036 () Bool)

(assert (=> b!206447 (=> (not res!100036) (not e!134933))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!206447 (= res!100036 (= (select (arr!4536 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8840 () Bool)

(declare-fun tp!19007 () Bool)

(assert (=> mapNonEmpty!8840 (= mapRes!8840 (and tp!19007 e!134931))))

(declare-fun mapValue!8840 () ValueCell!2247)

(declare-fun mapKey!8840 () (_ BitVec 32))

(declare-fun mapRest!8840 () (Array (_ BitVec 32) ValueCell!2247))

(assert (=> mapNonEmpty!8840 (= (arr!4537 _values!649) (store mapRest!8840 mapKey!8840 mapValue!8840))))

(declare-fun b!206448 () Bool)

(assert (=> b!206448 (= e!134932 tp_is_empty!5181)))

(declare-fun mapIsEmpty!8840 () Bool)

(assert (=> mapIsEmpty!8840 mapRes!8840))

(declare-fun b!206449 () Bool)

(declare-fun res!100033 () Bool)

(assert (=> b!206449 (=> (not res!100033) (not e!134933))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9572 (_ BitVec 32)) Bool)

(assert (=> b!206449 (= res!100033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206443 () Bool)

(declare-fun res!100039 () Bool)

(assert (=> b!206443 (=> (not res!100039) (not e!134933))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206443 (= res!100039 (and (= (size!4862 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4861 _keys!825) (size!4862 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100035 () Bool)

(assert (=> start!20678 (=> (not res!100035) (not e!134933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20678 (= res!100035 (validMask!0 mask!1149))))

(assert (=> start!20678 e!134933))

(declare-fun array_inv!2991 (array!9574) Bool)

(assert (=> start!20678 (and (array_inv!2991 _values!649) e!134935)))

(assert (=> start!20678 true))

(assert (=> start!20678 tp_is_empty!5181))

(declare-fun array_inv!2992 (array!9572) Bool)

(assert (=> start!20678 (array_inv!2992 _keys!825)))

(assert (=> start!20678 tp!19006))

(declare-fun b!206450 () Bool)

(assert (=> b!206450 (= e!134933 (not true))))

(declare-datatypes ((tuple2!4000 0))(
  ( (tuple2!4001 (_1!2010 (_ BitVec 64)) (_2!2010 V!6555)) )
))
(declare-datatypes ((List!2916 0))(
  ( (Nil!2913) (Cons!2912 (h!3554 tuple2!4000) (t!7855 List!2916)) )
))
(declare-datatypes ((ListLongMap!2927 0))(
  ( (ListLongMap!2928 (toList!1479 List!2916)) )
))
(declare-fun lt!105631 () ListLongMap!2927)

(declare-fun zeroValue!615 () V!6555)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6555)

(declare-fun getCurrentListMap!1041 (array!9572 array!9574 (_ BitVec 32) (_ BitVec 32) V!6555 V!6555 (_ BitVec 32) Int) ListLongMap!2927)

(assert (=> b!206450 (= lt!105631 (getCurrentListMap!1041 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105627 () array!9574)

(declare-fun lt!105629 () ListLongMap!2927)

(assert (=> b!206450 (= lt!105629 (getCurrentListMap!1041 _keys!825 lt!105627 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105626 () ListLongMap!2927)

(declare-fun lt!105630 () ListLongMap!2927)

(assert (=> b!206450 (and (= lt!105626 lt!105630) (= lt!105630 lt!105626))))

(declare-fun lt!105628 () ListLongMap!2927)

(declare-fun v!520 () V!6555)

(declare-fun +!496 (ListLongMap!2927 tuple2!4000) ListLongMap!2927)

(assert (=> b!206450 (= lt!105630 (+!496 lt!105628 (tuple2!4001 k0!843 v!520)))))

(declare-datatypes ((Unit!6287 0))(
  ( (Unit!6288) )
))
(declare-fun lt!105625 () Unit!6287)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!154 (array!9572 array!9574 (_ BitVec 32) (_ BitVec 32) V!6555 V!6555 (_ BitVec 32) (_ BitVec 64) V!6555 (_ BitVec 32) Int) Unit!6287)

(assert (=> b!206450 (= lt!105625 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!154 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!412 (array!9572 array!9574 (_ BitVec 32) (_ BitVec 32) V!6555 V!6555 (_ BitVec 32) Int) ListLongMap!2927)

(assert (=> b!206450 (= lt!105626 (getCurrentListMapNoExtraKeys!412 _keys!825 lt!105627 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206450 (= lt!105627 (array!9575 (store (arr!4537 _values!649) i!601 (ValueCellFull!2247 v!520)) (size!4862 _values!649)))))

(assert (=> b!206450 (= lt!105628 (getCurrentListMapNoExtraKeys!412 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206451 () Bool)

(declare-fun res!100034 () Bool)

(assert (=> b!206451 (=> (not res!100034) (not e!134933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206451 (= res!100034 (validKeyInArray!0 k0!843))))

(assert (= (and start!20678 res!100035) b!206443))

(assert (= (and b!206443 res!100039) b!206449))

(assert (= (and b!206449 res!100033) b!206446))

(assert (= (and b!206446 res!100037) b!206442))

(assert (= (and b!206442 res!100038) b!206451))

(assert (= (and b!206451 res!100034) b!206447))

(assert (= (and b!206447 res!100036) b!206450))

(assert (= (and b!206445 condMapEmpty!8840) mapIsEmpty!8840))

(assert (= (and b!206445 (not condMapEmpty!8840)) mapNonEmpty!8840))

(get-info :version)

(assert (= (and mapNonEmpty!8840 ((_ is ValueCellFull!2247) mapValue!8840)) b!206444))

(assert (= (and b!206445 ((_ is ValueCellFull!2247) mapDefault!8840)) b!206448))

(assert (= start!20678 b!206445))

(declare-fun m!234207 () Bool)

(assert (=> mapNonEmpty!8840 m!234207))

(declare-fun m!234209 () Bool)

(assert (=> b!206447 m!234209))

(declare-fun m!234211 () Bool)

(assert (=> b!206449 m!234211))

(declare-fun m!234213 () Bool)

(assert (=> b!206446 m!234213))

(declare-fun m!234215 () Bool)

(assert (=> b!206450 m!234215))

(declare-fun m!234217 () Bool)

(assert (=> b!206450 m!234217))

(declare-fun m!234219 () Bool)

(assert (=> b!206450 m!234219))

(declare-fun m!234221 () Bool)

(assert (=> b!206450 m!234221))

(declare-fun m!234223 () Bool)

(assert (=> b!206450 m!234223))

(declare-fun m!234225 () Bool)

(assert (=> b!206450 m!234225))

(declare-fun m!234227 () Bool)

(assert (=> b!206450 m!234227))

(declare-fun m!234229 () Bool)

(assert (=> b!206451 m!234229))

(declare-fun m!234231 () Bool)

(assert (=> start!20678 m!234231))

(declare-fun m!234233 () Bool)

(assert (=> start!20678 m!234233))

(declare-fun m!234235 () Bool)

(assert (=> start!20678 m!234235))

(check-sat (not b!206449) (not mapNonEmpty!8840) (not b!206446) (not b!206451) (not start!20678) (not b_next!5325) b_and!12089 tp_is_empty!5181 (not b!206450))
(check-sat b_and!12089 (not b_next!5325))
