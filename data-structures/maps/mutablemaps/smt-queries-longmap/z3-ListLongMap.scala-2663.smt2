; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39806 () Bool)

(assert start!39806)

(declare-fun b_free!10065 () Bool)

(declare-fun b_next!10065 () Bool)

(assert (=> start!39806 (= b_free!10065 (not b_next!10065))))

(declare-fun tp!35724 () Bool)

(declare-fun b_and!17807 () Bool)

(assert (=> start!39806 (= tp!35724 b_and!17807)))

(declare-fun b!429061 () Bool)

(declare-fun res!252036 () Bool)

(declare-fun e!254165 () Bool)

(assert (=> b!429061 (=> (not res!252036) (not e!254165))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429061 (= res!252036 (validMask!0 mask!1025))))

(declare-fun b!429062 () Bool)

(declare-fun res!252027 () Bool)

(declare-fun e!254166 () Bool)

(assert (=> b!429062 (=> (not res!252027) (not e!254166))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429062 (= res!252027 (bvsle from!863 i!563))))

(declare-fun b!429063 () Bool)

(declare-fun res!252031 () Bool)

(assert (=> b!429063 (=> (not res!252031) (not e!254165))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16061 0))(
  ( (V!16062 (val!5653 Int)) )
))
(declare-datatypes ((ValueCell!5265 0))(
  ( (ValueCellFull!5265 (v!7896 V!16061)) (EmptyCell!5265) )
))
(declare-datatypes ((array!26251 0))(
  ( (array!26252 (arr!12572 (Array (_ BitVec 32) ValueCell!5265)) (size!12924 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26251)

(declare-datatypes ((array!26253 0))(
  ( (array!26254 (arr!12573 (Array (_ BitVec 32) (_ BitVec 64))) (size!12925 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26253)

(assert (=> b!429063 (= res!252031 (and (= (size!12924 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12925 _keys!709) (size!12924 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429064 () Bool)

(declare-fun e!254172 () Bool)

(declare-fun e!254173 () Bool)

(assert (=> b!429064 (= e!254172 (not e!254173))))

(declare-fun res!252030 () Bool)

(assert (=> b!429064 (=> res!252030 e!254173)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429064 (= res!252030 (not (validKeyInArray!0 (select (arr!12573 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7378 0))(
  ( (tuple2!7379 (_1!3699 (_ BitVec 64)) (_2!3699 V!16061)) )
))
(declare-datatypes ((List!7427 0))(
  ( (Nil!7424) (Cons!7423 (h!8279 tuple2!7378) (t!12949 List!7427)) )
))
(declare-datatypes ((ListLongMap!6305 0))(
  ( (ListLongMap!6306 (toList!3168 List!7427)) )
))
(declare-fun lt!196130 () ListLongMap!6305)

(declare-fun lt!196133 () ListLongMap!6305)

(assert (=> b!429064 (= lt!196130 lt!196133)))

(declare-fun lt!196129 () ListLongMap!6305)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16061)

(declare-fun +!1318 (ListLongMap!6305 tuple2!7378) ListLongMap!6305)

(assert (=> b!429064 (= lt!196133 (+!1318 lt!196129 (tuple2!7379 k0!794 v!412)))))

(declare-fun minValue!515 () V!16061)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16061)

(declare-fun lt!196136 () array!26251)

(declare-fun lt!196131 () array!26253)

(declare-fun getCurrentListMapNoExtraKeys!1367 (array!26253 array!26251 (_ BitVec 32) (_ BitVec 32) V!16061 V!16061 (_ BitVec 32) Int) ListLongMap!6305)

(assert (=> b!429064 (= lt!196130 (getCurrentListMapNoExtraKeys!1367 lt!196131 lt!196136 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429064 (= lt!196129 (getCurrentListMapNoExtraKeys!1367 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12562 0))(
  ( (Unit!12563) )
))
(declare-fun lt!196135 () Unit!12562)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!518 (array!26253 array!26251 (_ BitVec 32) (_ BitVec 32) V!16061 V!16061 (_ BitVec 32) (_ BitVec 64) V!16061 (_ BitVec 32) Int) Unit!12562)

(assert (=> b!429064 (= lt!196135 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!518 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429065 () Bool)

(declare-fun e!254171 () Bool)

(declare-fun tp_is_empty!11217 () Bool)

(assert (=> b!429065 (= e!254171 tp_is_empty!11217)))

(declare-fun b!429066 () Bool)

(declare-fun res!252038 () Bool)

(assert (=> b!429066 (=> (not res!252038) (not e!254166))))

(declare-datatypes ((List!7428 0))(
  ( (Nil!7425) (Cons!7424 (h!8280 (_ BitVec 64)) (t!12950 List!7428)) )
))
(declare-fun arrayNoDuplicates!0 (array!26253 (_ BitVec 32) List!7428) Bool)

(assert (=> b!429066 (= res!252038 (arrayNoDuplicates!0 lt!196131 #b00000000000000000000000000000000 Nil!7425))))

(declare-fun b!429067 () Bool)

(declare-fun res!252034 () Bool)

(assert (=> b!429067 (=> (not res!252034) (not e!254165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26253 (_ BitVec 32)) Bool)

(assert (=> b!429067 (= res!252034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18447 () Bool)

(declare-fun mapRes!18447 () Bool)

(declare-fun tp!35723 () Bool)

(declare-fun e!254170 () Bool)

(assert (=> mapNonEmpty!18447 (= mapRes!18447 (and tp!35723 e!254170))))

(declare-fun mapValue!18447 () ValueCell!5265)

(declare-fun mapKey!18447 () (_ BitVec 32))

(declare-fun mapRest!18447 () (Array (_ BitVec 32) ValueCell!5265))

(assert (=> mapNonEmpty!18447 (= (arr!12572 _values!549) (store mapRest!18447 mapKey!18447 mapValue!18447))))

(declare-fun res!252032 () Bool)

(assert (=> start!39806 (=> (not res!252032) (not e!254165))))

(assert (=> start!39806 (= res!252032 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12925 _keys!709))))))

(assert (=> start!39806 e!254165))

(assert (=> start!39806 tp_is_empty!11217))

(assert (=> start!39806 tp!35724))

(assert (=> start!39806 true))

(declare-fun e!254167 () Bool)

(declare-fun array_inv!9148 (array!26251) Bool)

(assert (=> start!39806 (and (array_inv!9148 _values!549) e!254167)))

(declare-fun array_inv!9149 (array!26253) Bool)

(assert (=> start!39806 (array_inv!9149 _keys!709)))

(declare-fun mapIsEmpty!18447 () Bool)

(assert (=> mapIsEmpty!18447 mapRes!18447))

(declare-fun b!429068 () Bool)

(assert (=> b!429068 (= e!254173 true)))

(assert (=> b!429068 (not (= (select (arr!12573 _keys!709) from!863) k0!794))))

(declare-fun lt!196132 () Unit!12562)

(declare-fun e!254168 () Unit!12562)

(assert (=> b!429068 (= lt!196132 e!254168)))

(declare-fun c!55358 () Bool)

(assert (=> b!429068 (= c!55358 (= (select (arr!12573 _keys!709) from!863) k0!794))))

(declare-fun lt!196128 () ListLongMap!6305)

(declare-fun get!6239 (ValueCell!5265 V!16061) V!16061)

(declare-fun dynLambda!764 (Int (_ BitVec 64)) V!16061)

(assert (=> b!429068 (= lt!196128 (+!1318 lt!196133 (tuple2!7379 (select (arr!12573 _keys!709) from!863) (get!6239 (select (arr!12572 _values!549) from!863) (dynLambda!764 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429069 () Bool)

(assert (=> b!429069 (= e!254165 e!254166)))

(declare-fun res!252029 () Bool)

(assert (=> b!429069 (=> (not res!252029) (not e!254166))))

(assert (=> b!429069 (= res!252029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196131 mask!1025))))

(assert (=> b!429069 (= lt!196131 (array!26254 (store (arr!12573 _keys!709) i!563 k0!794) (size!12925 _keys!709)))))

(declare-fun b!429070 () Bool)

(assert (=> b!429070 (= e!254167 (and e!254171 mapRes!18447))))

(declare-fun condMapEmpty!18447 () Bool)

(declare-fun mapDefault!18447 () ValueCell!5265)

(assert (=> b!429070 (= condMapEmpty!18447 (= (arr!12572 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5265)) mapDefault!18447)))))

(declare-fun b!429071 () Bool)

(declare-fun res!252033 () Bool)

(assert (=> b!429071 (=> (not res!252033) (not e!254165))))

(declare-fun arrayContainsKey!0 (array!26253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429071 (= res!252033 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429072 () Bool)

(declare-fun res!252039 () Bool)

(assert (=> b!429072 (=> (not res!252039) (not e!254165))))

(assert (=> b!429072 (= res!252039 (validKeyInArray!0 k0!794))))

(declare-fun b!429073 () Bool)

(declare-fun res!252028 () Bool)

(assert (=> b!429073 (=> (not res!252028) (not e!254165))))

(assert (=> b!429073 (= res!252028 (or (= (select (arr!12573 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12573 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429074 () Bool)

(declare-fun Unit!12564 () Unit!12562)

(assert (=> b!429074 (= e!254168 Unit!12564)))

(declare-fun lt!196137 () Unit!12562)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26253 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12562)

(assert (=> b!429074 (= lt!196137 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429074 false))

(declare-fun b!429075 () Bool)

(declare-fun res!252037 () Bool)

(assert (=> b!429075 (=> (not res!252037) (not e!254165))))

(assert (=> b!429075 (= res!252037 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7425))))

(declare-fun b!429076 () Bool)

(assert (=> b!429076 (= e!254170 tp_is_empty!11217)))

(declare-fun b!429077 () Bool)

(assert (=> b!429077 (= e!254166 e!254172)))

(declare-fun res!252035 () Bool)

(assert (=> b!429077 (=> (not res!252035) (not e!254172))))

(assert (=> b!429077 (= res!252035 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!429077 (= lt!196128 (getCurrentListMapNoExtraKeys!1367 lt!196131 lt!196136 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429077 (= lt!196136 (array!26252 (store (arr!12572 _values!549) i!563 (ValueCellFull!5265 v!412)) (size!12924 _values!549)))))

(declare-fun lt!196134 () ListLongMap!6305)

(assert (=> b!429077 (= lt!196134 (getCurrentListMapNoExtraKeys!1367 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429078 () Bool)

(declare-fun Unit!12565 () Unit!12562)

(assert (=> b!429078 (= e!254168 Unit!12565)))

(declare-fun b!429079 () Bool)

(declare-fun res!252026 () Bool)

(assert (=> b!429079 (=> (not res!252026) (not e!254165))))

(assert (=> b!429079 (= res!252026 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12925 _keys!709))))))

(assert (= (and start!39806 res!252032) b!429061))

(assert (= (and b!429061 res!252036) b!429063))

(assert (= (and b!429063 res!252031) b!429067))

(assert (= (and b!429067 res!252034) b!429075))

(assert (= (and b!429075 res!252037) b!429079))

(assert (= (and b!429079 res!252026) b!429072))

(assert (= (and b!429072 res!252039) b!429073))

(assert (= (and b!429073 res!252028) b!429071))

(assert (= (and b!429071 res!252033) b!429069))

(assert (= (and b!429069 res!252029) b!429066))

(assert (= (and b!429066 res!252038) b!429062))

(assert (= (and b!429062 res!252027) b!429077))

(assert (= (and b!429077 res!252035) b!429064))

(assert (= (and b!429064 (not res!252030)) b!429068))

(assert (= (and b!429068 c!55358) b!429074))

(assert (= (and b!429068 (not c!55358)) b!429078))

(assert (= (and b!429070 condMapEmpty!18447) mapIsEmpty!18447))

(assert (= (and b!429070 (not condMapEmpty!18447)) mapNonEmpty!18447))

(get-info :version)

(assert (= (and mapNonEmpty!18447 ((_ is ValueCellFull!5265) mapValue!18447)) b!429076))

(assert (= (and b!429070 ((_ is ValueCellFull!5265) mapDefault!18447)) b!429065))

(assert (= start!39806 b!429070))

(declare-fun b_lambda!9183 () Bool)

(assert (=> (not b_lambda!9183) (not b!429068)))

(declare-fun t!12948 () Bool)

(declare-fun tb!3479 () Bool)

(assert (=> (and start!39806 (= defaultEntry!557 defaultEntry!557) t!12948) tb!3479))

(declare-fun result!6477 () Bool)

(assert (=> tb!3479 (= result!6477 tp_is_empty!11217)))

(assert (=> b!429068 t!12948))

(declare-fun b_and!17809 () Bool)

(assert (= b_and!17807 (and (=> t!12948 result!6477) b_and!17809)))

(declare-fun m!417431 () Bool)

(assert (=> b!429071 m!417431))

(declare-fun m!417433 () Bool)

(assert (=> b!429075 m!417433))

(declare-fun m!417435 () Bool)

(assert (=> b!429077 m!417435))

(declare-fun m!417437 () Bool)

(assert (=> b!429077 m!417437))

(declare-fun m!417439 () Bool)

(assert (=> b!429077 m!417439))

(declare-fun m!417441 () Bool)

(assert (=> b!429074 m!417441))

(declare-fun m!417443 () Bool)

(assert (=> b!429069 m!417443))

(declare-fun m!417445 () Bool)

(assert (=> b!429069 m!417445))

(declare-fun m!417447 () Bool)

(assert (=> b!429064 m!417447))

(declare-fun m!417449 () Bool)

(assert (=> b!429064 m!417449))

(declare-fun m!417451 () Bool)

(assert (=> b!429064 m!417451))

(declare-fun m!417453 () Bool)

(assert (=> b!429064 m!417453))

(assert (=> b!429064 m!417447))

(declare-fun m!417455 () Bool)

(assert (=> b!429064 m!417455))

(declare-fun m!417457 () Bool)

(assert (=> b!429064 m!417457))

(declare-fun m!417459 () Bool)

(assert (=> b!429073 m!417459))

(declare-fun m!417461 () Bool)

(assert (=> b!429061 m!417461))

(declare-fun m!417463 () Bool)

(assert (=> b!429066 m!417463))

(declare-fun m!417465 () Bool)

(assert (=> b!429067 m!417465))

(declare-fun m!417467 () Bool)

(assert (=> b!429072 m!417467))

(declare-fun m!417469 () Bool)

(assert (=> mapNonEmpty!18447 m!417469))

(declare-fun m!417471 () Bool)

(assert (=> start!39806 m!417471))

(declare-fun m!417473 () Bool)

(assert (=> start!39806 m!417473))

(assert (=> b!429068 m!417447))

(declare-fun m!417475 () Bool)

(assert (=> b!429068 m!417475))

(declare-fun m!417477 () Bool)

(assert (=> b!429068 m!417477))

(declare-fun m!417479 () Bool)

(assert (=> b!429068 m!417479))

(assert (=> b!429068 m!417477))

(assert (=> b!429068 m!417475))

(declare-fun m!417481 () Bool)

(assert (=> b!429068 m!417481))

(check-sat b_and!17809 (not b_next!10065) (not b!429077) (not b!429068) (not b_lambda!9183) (not b!429066) (not b!429069) (not b!429071) (not start!39806) (not b!429075) (not b!429072) tp_is_empty!11217 (not mapNonEmpty!18447) (not b!429067) (not b!429074) (not b!429064) (not b!429061))
(check-sat b_and!17809 (not b_next!10065))
