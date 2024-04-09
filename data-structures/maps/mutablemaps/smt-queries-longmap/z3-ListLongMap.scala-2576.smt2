; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39284 () Bool)

(assert start!39284)

(declare-fun b_free!9543 () Bool)

(declare-fun b_next!9543 () Bool)

(assert (=> start!39284 (= b_free!9543 (not b_next!9543))))

(declare-fun tp!34157 () Bool)

(declare-fun b_and!16979 () Bool)

(assert (=> start!39284 (= tp!34157 b_and!16979)))

(declare-fun b!415111 () Bool)

(declare-fun res!241550 () Bool)

(declare-fun e!247974 () Bool)

(assert (=> b!415111 (=> (not res!241550) (not e!247974))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415111 (= res!241550 (validKeyInArray!0 k0!794))))

(declare-fun b!415112 () Bool)

(declare-fun res!241551 () Bool)

(declare-fun e!247976 () Bool)

(assert (=> b!415112 (=> (not res!241551) (not e!247976))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415112 (= res!241551 (bvsle from!863 i!563))))

(declare-fun b!415113 () Bool)

(declare-fun e!247980 () Bool)

(declare-fun tp_is_empty!10695 () Bool)

(assert (=> b!415113 (= e!247980 tp_is_empty!10695)))

(declare-fun b!415114 () Bool)

(declare-fun res!241542 () Bool)

(assert (=> b!415114 (=> (not res!241542) (not e!247974))))

(declare-datatypes ((array!25227 0))(
  ( (array!25228 (arr!12060 (Array (_ BitVec 32) (_ BitVec 64))) (size!12412 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25227)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15365 0))(
  ( (V!15366 (val!5392 Int)) )
))
(declare-datatypes ((ValueCell!5004 0))(
  ( (ValueCellFull!5004 (v!7635 V!15365)) (EmptyCell!5004) )
))
(declare-datatypes ((array!25229 0))(
  ( (array!25230 (arr!12061 (Array (_ BitVec 32) ValueCell!5004)) (size!12413 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25229)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!415114 (= res!241542 (and (= (size!12413 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12412 _keys!709) (size!12413 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!415115 () Bool)

(declare-fun res!241541 () Bool)

(assert (=> b!415115 (=> (not res!241541) (not e!247976))))

(declare-fun lt!190182 () array!25227)

(declare-datatypes ((List!7003 0))(
  ( (Nil!7000) (Cons!6999 (h!7855 (_ BitVec 64)) (t!12219 List!7003)) )
))
(declare-fun arrayNoDuplicates!0 (array!25227 (_ BitVec 32) List!7003) Bool)

(assert (=> b!415115 (= res!241541 (arrayNoDuplicates!0 lt!190182 #b00000000000000000000000000000000 Nil!7000))))

(declare-fun b!415116 () Bool)

(declare-fun e!247979 () Bool)

(declare-fun e!247977 () Bool)

(declare-fun mapRes!17664 () Bool)

(assert (=> b!415116 (= e!247979 (and e!247977 mapRes!17664))))

(declare-fun condMapEmpty!17664 () Bool)

(declare-fun mapDefault!17664 () ValueCell!5004)

(assert (=> b!415116 (= condMapEmpty!17664 (= (arr!12061 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5004)) mapDefault!17664)))))

(declare-fun b!415117 () Bool)

(declare-fun res!241553 () Bool)

(assert (=> b!415117 (=> (not res!241553) (not e!247974))))

(declare-fun arrayContainsKey!0 (array!25227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!415117 (= res!241553 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17664 () Bool)

(declare-fun tp!34158 () Bool)

(assert (=> mapNonEmpty!17664 (= mapRes!17664 (and tp!34158 e!247980))))

(declare-fun mapKey!17664 () (_ BitVec 32))

(declare-fun mapValue!17664 () ValueCell!5004)

(declare-fun mapRest!17664 () (Array (_ BitVec 32) ValueCell!5004))

(assert (=> mapNonEmpty!17664 (= (arr!12061 _values!549) (store mapRest!17664 mapKey!17664 mapValue!17664))))

(declare-fun b!415118 () Bool)

(assert (=> b!415118 (= e!247974 e!247976)))

(declare-fun res!241543 () Bool)

(assert (=> b!415118 (=> (not res!241543) (not e!247976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25227 (_ BitVec 32)) Bool)

(assert (=> b!415118 (= res!241543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190182 mask!1025))))

(assert (=> b!415118 (= lt!190182 (array!25228 (store (arr!12060 _keys!709) i!563 k0!794) (size!12412 _keys!709)))))

(declare-fun minValue!515 () V!15365)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!190185 () array!25229)

(declare-fun zeroValue!515 () V!15365)

(declare-fun c!54953 () Bool)

(declare-datatypes ((tuple2!6946 0))(
  ( (tuple2!6947 (_1!3483 (_ BitVec 64)) (_2!3483 V!15365)) )
))
(declare-datatypes ((List!7004 0))(
  ( (Nil!7001) (Cons!7000 (h!7856 tuple2!6946) (t!12220 List!7004)) )
))
(declare-datatypes ((ListLongMap!5873 0))(
  ( (ListLongMap!5874 (toList!2952 List!7004)) )
))
(declare-fun call!28805 () ListLongMap!5873)

(declare-fun bm!28801 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1157 (array!25227 array!25229 (_ BitVec 32) (_ BitVec 32) V!15365 V!15365 (_ BitVec 32) Int) ListLongMap!5873)

(assert (=> bm!28801 (= call!28805 (getCurrentListMapNoExtraKeys!1157 (ite c!54953 _keys!709 lt!190182) (ite c!54953 _values!549 lt!190185) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415119 () Bool)

(declare-fun res!241548 () Bool)

(assert (=> b!415119 (=> (not res!241548) (not e!247974))))

(assert (=> b!415119 (= res!241548 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7000))))

(declare-fun b!415120 () Bool)

(declare-fun e!247975 () Bool)

(assert (=> b!415120 (= e!247976 e!247975)))

(declare-fun res!241549 () Bool)

(assert (=> b!415120 (=> (not res!241549) (not e!247975))))

(assert (=> b!415120 (= res!241549 (= from!863 i!563))))

(declare-fun lt!190184 () ListLongMap!5873)

(assert (=> b!415120 (= lt!190184 (getCurrentListMapNoExtraKeys!1157 lt!190182 lt!190185 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15365)

(assert (=> b!415120 (= lt!190185 (array!25230 (store (arr!12061 _values!549) i!563 (ValueCellFull!5004 v!412)) (size!12413 _values!549)))))

(declare-fun lt!190183 () ListLongMap!5873)

(assert (=> b!415120 (= lt!190183 (getCurrentListMapNoExtraKeys!1157 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!415121 () Bool)

(declare-fun e!247981 () Bool)

(declare-fun call!28804 () ListLongMap!5873)

(assert (=> b!415121 (= e!247981 (= call!28805 call!28804))))

(declare-fun b!415122 () Bool)

(declare-fun e!247978 () Bool)

(assert (=> b!415122 (= e!247975 (not e!247978))))

(declare-fun res!241554 () Bool)

(assert (=> b!415122 (=> res!241554 e!247978)))

(assert (=> b!415122 (= res!241554 (validKeyInArray!0 (select (arr!12060 _keys!709) from!863)))))

(assert (=> b!415122 e!247981))

(assert (=> b!415122 (= c!54953 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12233 0))(
  ( (Unit!12234) )
))
(declare-fun lt!190181 () Unit!12233)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!379 (array!25227 array!25229 (_ BitVec 32) (_ BitVec 32) V!15365 V!15365 (_ BitVec 32) (_ BitVec 64) V!15365 (_ BitVec 32) Int) Unit!12233)

(assert (=> b!415122 (= lt!190181 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!379 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415123 () Bool)

(declare-fun res!241552 () Bool)

(assert (=> b!415123 (=> (not res!241552) (not e!247974))))

(assert (=> b!415123 (= res!241552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415124 () Bool)

(declare-fun res!241544 () Bool)

(assert (=> b!415124 (=> (not res!241544) (not e!247974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415124 (= res!241544 (validMask!0 mask!1025))))

(declare-fun b!415125 () Bool)

(assert (=> b!415125 (= e!247978 true)))

(declare-fun +!1166 (ListLongMap!5873 tuple2!6946) ListLongMap!5873)

(declare-fun get!5956 (ValueCell!5004 V!15365) V!15365)

(declare-fun dynLambda!655 (Int (_ BitVec 64)) V!15365)

(assert (=> b!415125 (= lt!190184 (+!1166 (getCurrentListMapNoExtraKeys!1157 lt!190182 lt!190185 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6947 (select (arr!12060 lt!190182) from!863) (get!5956 (select (arr!12061 lt!190185) from!863) (dynLambda!655 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!415126 () Bool)

(assert (=> b!415126 (= e!247977 tp_is_empty!10695)))

(declare-fun b!415127 () Bool)

(declare-fun res!241545 () Bool)

(assert (=> b!415127 (=> (not res!241545) (not e!247974))))

(assert (=> b!415127 (= res!241545 (or (= (select (arr!12060 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12060 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!415128 () Bool)

(assert (=> b!415128 (= e!247981 (= call!28804 (+!1166 call!28805 (tuple2!6947 k0!794 v!412))))))

(declare-fun b!415129 () Bool)

(declare-fun res!241546 () Bool)

(assert (=> b!415129 (=> (not res!241546) (not e!247974))))

(assert (=> b!415129 (= res!241546 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12412 _keys!709))))))

(declare-fun res!241547 () Bool)

(assert (=> start!39284 (=> (not res!241547) (not e!247974))))

(assert (=> start!39284 (= res!241547 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12412 _keys!709))))))

(assert (=> start!39284 e!247974))

(assert (=> start!39284 tp_is_empty!10695))

(assert (=> start!39284 tp!34157))

(assert (=> start!39284 true))

(declare-fun array_inv!8796 (array!25229) Bool)

(assert (=> start!39284 (and (array_inv!8796 _values!549) e!247979)))

(declare-fun array_inv!8797 (array!25227) Bool)

(assert (=> start!39284 (array_inv!8797 _keys!709)))

(declare-fun bm!28802 () Bool)

(assert (=> bm!28802 (= call!28804 (getCurrentListMapNoExtraKeys!1157 (ite c!54953 lt!190182 _keys!709) (ite c!54953 lt!190185 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17664 () Bool)

(assert (=> mapIsEmpty!17664 mapRes!17664))

(assert (= (and start!39284 res!241547) b!415124))

(assert (= (and b!415124 res!241544) b!415114))

(assert (= (and b!415114 res!241542) b!415123))

(assert (= (and b!415123 res!241552) b!415119))

(assert (= (and b!415119 res!241548) b!415129))

(assert (= (and b!415129 res!241546) b!415111))

(assert (= (and b!415111 res!241550) b!415127))

(assert (= (and b!415127 res!241545) b!415117))

(assert (= (and b!415117 res!241553) b!415118))

(assert (= (and b!415118 res!241543) b!415115))

(assert (= (and b!415115 res!241541) b!415112))

(assert (= (and b!415112 res!241551) b!415120))

(assert (= (and b!415120 res!241549) b!415122))

(assert (= (and b!415122 c!54953) b!415128))

(assert (= (and b!415122 (not c!54953)) b!415121))

(assert (= (or b!415128 b!415121) bm!28802))

(assert (= (or b!415128 b!415121) bm!28801))

(assert (= (and b!415122 (not res!241554)) b!415125))

(assert (= (and b!415116 condMapEmpty!17664) mapIsEmpty!17664))

(assert (= (and b!415116 (not condMapEmpty!17664)) mapNonEmpty!17664))

(get-info :version)

(assert (= (and mapNonEmpty!17664 ((_ is ValueCellFull!5004) mapValue!17664)) b!415113))

(assert (= (and b!415116 ((_ is ValueCellFull!5004) mapDefault!17664)) b!415126))

(assert (= start!39284 b!415116))

(declare-fun b_lambda!8877 () Bool)

(assert (=> (not b_lambda!8877) (not b!415125)))

(declare-fun t!12218 () Bool)

(declare-fun tb!3173 () Bool)

(assert (=> (and start!39284 (= defaultEntry!557 defaultEntry!557) t!12218) tb!3173))

(declare-fun result!5865 () Bool)

(assert (=> tb!3173 (= result!5865 tp_is_empty!10695)))

(assert (=> b!415125 t!12218))

(declare-fun b_and!16981 () Bool)

(assert (= b_and!16979 (and (=> t!12218 result!5865) b_and!16981)))

(declare-fun m!404301 () Bool)

(assert (=> bm!28802 m!404301))

(declare-fun m!404303 () Bool)

(assert (=> b!415128 m!404303))

(declare-fun m!404305 () Bool)

(assert (=> b!415125 m!404305))

(declare-fun m!404307 () Bool)

(assert (=> b!415125 m!404307))

(declare-fun m!404309 () Bool)

(assert (=> b!415125 m!404309))

(assert (=> b!415125 m!404305))

(assert (=> b!415125 m!404307))

(declare-fun m!404311 () Bool)

(assert (=> b!415125 m!404311))

(declare-fun m!404313 () Bool)

(assert (=> b!415125 m!404313))

(assert (=> b!415125 m!404313))

(declare-fun m!404315 () Bool)

(assert (=> b!415125 m!404315))

(declare-fun m!404317 () Bool)

(assert (=> b!415122 m!404317))

(assert (=> b!415122 m!404317))

(declare-fun m!404319 () Bool)

(assert (=> b!415122 m!404319))

(declare-fun m!404321 () Bool)

(assert (=> b!415122 m!404321))

(declare-fun m!404323 () Bool)

(assert (=> b!415115 m!404323))

(declare-fun m!404325 () Bool)

(assert (=> start!39284 m!404325))

(declare-fun m!404327 () Bool)

(assert (=> start!39284 m!404327))

(declare-fun m!404329 () Bool)

(assert (=> b!415118 m!404329))

(declare-fun m!404331 () Bool)

(assert (=> b!415118 m!404331))

(declare-fun m!404333 () Bool)

(assert (=> b!415111 m!404333))

(declare-fun m!404335 () Bool)

(assert (=> b!415124 m!404335))

(declare-fun m!404337 () Bool)

(assert (=> b!415117 m!404337))

(declare-fun m!404339 () Bool)

(assert (=> b!415123 m!404339))

(declare-fun m!404341 () Bool)

(assert (=> bm!28801 m!404341))

(declare-fun m!404343 () Bool)

(assert (=> mapNonEmpty!17664 m!404343))

(declare-fun m!404345 () Bool)

(assert (=> b!415119 m!404345))

(declare-fun m!404347 () Bool)

(assert (=> b!415127 m!404347))

(declare-fun m!404349 () Bool)

(assert (=> b!415120 m!404349))

(declare-fun m!404351 () Bool)

(assert (=> b!415120 m!404351))

(declare-fun m!404353 () Bool)

(assert (=> b!415120 m!404353))

(check-sat (not b!415115) (not b!415128) (not b!415118) (not bm!28801) (not bm!28802) (not b!415122) (not b!415119) (not b!415117) (not b!415124) tp_is_empty!10695 (not b!415111) (not b!415123) (not b_lambda!8877) (not start!39284) (not b_next!9543) b_and!16981 (not b!415125) (not mapNonEmpty!17664) (not b!415120))
(check-sat b_and!16981 (not b_next!9543))
