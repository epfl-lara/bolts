; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39710 () Bool)

(assert start!39710)

(declare-fun b_free!9969 () Bool)

(declare-fun b_next!9969 () Bool)

(assert (=> start!39710 (= b_free!9969 (not b_next!9969))))

(declare-fun tp!35436 () Bool)

(declare-fun b_and!17643 () Bool)

(assert (=> start!39710 (= tp!35436 b_and!17643)))

(declare-fun b!426476 () Bool)

(declare-fun res!250049 () Bool)

(declare-fun e!252995 () Bool)

(assert (=> b!426476 (=> (not res!250049) (not e!252995))))

(declare-datatypes ((array!26067 0))(
  ( (array!26068 (arr!12480 (Array (_ BitVec 32) (_ BitVec 64))) (size!12832 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26067)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26067 (_ BitVec 32)) Bool)

(assert (=> b!426476 (= res!250049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426477 () Bool)

(declare-fun res!250051 () Bool)

(declare-fun e!252997 () Bool)

(assert (=> b!426477 (=> (not res!250051) (not e!252997))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426477 (= res!250051 (bvsle from!863 i!563))))

(declare-fun b!426478 () Bool)

(assert (=> b!426478 (= e!252995 e!252997)))

(declare-fun res!250048 () Bool)

(assert (=> b!426478 (=> (not res!250048) (not e!252997))))

(declare-fun lt!194996 () array!26067)

(assert (=> b!426478 (= res!250048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194996 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!426478 (= lt!194996 (array!26068 (store (arr!12480 _keys!709) i!563 k0!794) (size!12832 _keys!709)))))

(declare-fun b!426479 () Bool)

(declare-fun res!250047 () Bool)

(assert (=> b!426479 (=> (not res!250047) (not e!252995))))

(declare-fun arrayContainsKey!0 (array!26067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426479 (= res!250047 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426480 () Bool)

(declare-fun res!250045 () Bool)

(assert (=> b!426480 (=> (not res!250045) (not e!252995))))

(assert (=> b!426480 (= res!250045 (or (= (select (arr!12480 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12480 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!250046 () Bool)

(assert (=> start!39710 (=> (not res!250046) (not e!252995))))

(assert (=> start!39710 (= res!250046 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12832 _keys!709))))))

(assert (=> start!39710 e!252995))

(declare-fun tp_is_empty!11121 () Bool)

(assert (=> start!39710 tp_is_empty!11121))

(assert (=> start!39710 tp!35436))

(assert (=> start!39710 true))

(declare-datatypes ((V!15933 0))(
  ( (V!15934 (val!5605 Int)) )
))
(declare-datatypes ((ValueCell!5217 0))(
  ( (ValueCellFull!5217 (v!7848 V!15933)) (EmptyCell!5217) )
))
(declare-datatypes ((array!26069 0))(
  ( (array!26070 (arr!12481 (Array (_ BitVec 32) ValueCell!5217)) (size!12833 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26069)

(declare-fun e!253000 () Bool)

(declare-fun array_inv!9092 (array!26069) Bool)

(assert (=> start!39710 (and (array_inv!9092 _values!549) e!253000)))

(declare-fun array_inv!9093 (array!26067) Bool)

(assert (=> start!39710 (array_inv!9093 _keys!709)))

(declare-fun mapIsEmpty!18303 () Bool)

(declare-fun mapRes!18303 () Bool)

(assert (=> mapIsEmpty!18303 mapRes!18303))

(declare-fun b!426481 () Bool)

(declare-fun e!252998 () Bool)

(assert (=> b!426481 (= e!252998 tp_is_empty!11121)))

(declare-fun b!426482 () Bool)

(declare-fun res!250050 () Bool)

(assert (=> b!426482 (=> (not res!250050) (not e!252995))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!426482 (= res!250050 (and (= (size!12833 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12832 _keys!709) (size!12833 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426483 () Bool)

(declare-fun e!252994 () Bool)

(assert (=> b!426483 (= e!252994 (not true))))

(declare-fun minValue!515 () V!15933)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15933)

(declare-fun v!412 () V!15933)

(declare-fun lt!194998 () array!26069)

(declare-datatypes ((tuple2!7304 0))(
  ( (tuple2!7305 (_1!3662 (_ BitVec 64)) (_2!3662 V!15933)) )
))
(declare-datatypes ((List!7353 0))(
  ( (Nil!7350) (Cons!7349 (h!8205 tuple2!7304) (t!12805 List!7353)) )
))
(declare-datatypes ((ListLongMap!6231 0))(
  ( (ListLongMap!6232 (toList!3131 List!7353)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1332 (array!26067 array!26069 (_ BitVec 32) (_ BitVec 32) V!15933 V!15933 (_ BitVec 32) Int) ListLongMap!6231)

(declare-fun +!1286 (ListLongMap!6231 tuple2!7304) ListLongMap!6231)

(assert (=> b!426483 (= (getCurrentListMapNoExtraKeys!1332 lt!194996 lt!194998 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1286 (getCurrentListMapNoExtraKeys!1332 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7305 k0!794 v!412)))))

(declare-datatypes ((Unit!12475 0))(
  ( (Unit!12476) )
))
(declare-fun lt!194999 () Unit!12475)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!488 (array!26067 array!26069 (_ BitVec 32) (_ BitVec 32) V!15933 V!15933 (_ BitVec 32) (_ BitVec 64) V!15933 (_ BitVec 32) Int) Unit!12475)

(assert (=> b!426483 (= lt!194999 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!488 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426484 () Bool)

(assert (=> b!426484 (= e!252997 e!252994)))

(declare-fun res!250041 () Bool)

(assert (=> b!426484 (=> (not res!250041) (not e!252994))))

(assert (=> b!426484 (= res!250041 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195000 () ListLongMap!6231)

(assert (=> b!426484 (= lt!195000 (getCurrentListMapNoExtraKeys!1332 lt!194996 lt!194998 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!426484 (= lt!194998 (array!26070 (store (arr!12481 _values!549) i!563 (ValueCellFull!5217 v!412)) (size!12833 _values!549)))))

(declare-fun lt!194997 () ListLongMap!6231)

(assert (=> b!426484 (= lt!194997 (getCurrentListMapNoExtraKeys!1332 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426485 () Bool)

(declare-fun e!252999 () Bool)

(assert (=> b!426485 (= e!253000 (and e!252999 mapRes!18303))))

(declare-fun condMapEmpty!18303 () Bool)

(declare-fun mapDefault!18303 () ValueCell!5217)

(assert (=> b!426485 (= condMapEmpty!18303 (= (arr!12481 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5217)) mapDefault!18303)))))

(declare-fun mapNonEmpty!18303 () Bool)

(declare-fun tp!35435 () Bool)

(assert (=> mapNonEmpty!18303 (= mapRes!18303 (and tp!35435 e!252998))))

(declare-fun mapValue!18303 () ValueCell!5217)

(declare-fun mapRest!18303 () (Array (_ BitVec 32) ValueCell!5217))

(declare-fun mapKey!18303 () (_ BitVec 32))

(assert (=> mapNonEmpty!18303 (= (arr!12481 _values!549) (store mapRest!18303 mapKey!18303 mapValue!18303))))

(declare-fun b!426486 () Bool)

(declare-fun res!250052 () Bool)

(assert (=> b!426486 (=> (not res!250052) (not e!252995))))

(declare-datatypes ((List!7354 0))(
  ( (Nil!7351) (Cons!7350 (h!8206 (_ BitVec 64)) (t!12806 List!7354)) )
))
(declare-fun arrayNoDuplicates!0 (array!26067 (_ BitVec 32) List!7354) Bool)

(assert (=> b!426486 (= res!250052 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7351))))

(declare-fun b!426487 () Bool)

(declare-fun res!250044 () Bool)

(assert (=> b!426487 (=> (not res!250044) (not e!252995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426487 (= res!250044 (validKeyInArray!0 k0!794))))

(declare-fun b!426488 () Bool)

(declare-fun res!250042 () Bool)

(assert (=> b!426488 (=> (not res!250042) (not e!252995))))

(assert (=> b!426488 (= res!250042 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12832 _keys!709))))))

(declare-fun b!426489 () Bool)

(declare-fun res!250043 () Bool)

(assert (=> b!426489 (=> (not res!250043) (not e!252995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426489 (= res!250043 (validMask!0 mask!1025))))

(declare-fun b!426490 () Bool)

(assert (=> b!426490 (= e!252999 tp_is_empty!11121)))

(declare-fun b!426491 () Bool)

(declare-fun res!250053 () Bool)

(assert (=> b!426491 (=> (not res!250053) (not e!252997))))

(assert (=> b!426491 (= res!250053 (arrayNoDuplicates!0 lt!194996 #b00000000000000000000000000000000 Nil!7351))))

(assert (= (and start!39710 res!250046) b!426489))

(assert (= (and b!426489 res!250043) b!426482))

(assert (= (and b!426482 res!250050) b!426476))

(assert (= (and b!426476 res!250049) b!426486))

(assert (= (and b!426486 res!250052) b!426488))

(assert (= (and b!426488 res!250042) b!426487))

(assert (= (and b!426487 res!250044) b!426480))

(assert (= (and b!426480 res!250045) b!426479))

(assert (= (and b!426479 res!250047) b!426478))

(assert (= (and b!426478 res!250048) b!426491))

(assert (= (and b!426491 res!250053) b!426477))

(assert (= (and b!426477 res!250051) b!426484))

(assert (= (and b!426484 res!250041) b!426483))

(assert (= (and b!426485 condMapEmpty!18303) mapIsEmpty!18303))

(assert (= (and b!426485 (not condMapEmpty!18303)) mapNonEmpty!18303))

(get-info :version)

(assert (= (and mapNonEmpty!18303 ((_ is ValueCellFull!5217) mapValue!18303)) b!426481))

(assert (= (and b!426485 ((_ is ValueCellFull!5217) mapDefault!18303)) b!426490))

(assert (= start!39710 b!426485))

(declare-fun m!415155 () Bool)

(assert (=> b!426479 m!415155))

(declare-fun m!415157 () Bool)

(assert (=> b!426487 m!415157))

(declare-fun m!415159 () Bool)

(assert (=> b!426486 m!415159))

(declare-fun m!415161 () Bool)

(assert (=> start!39710 m!415161))

(declare-fun m!415163 () Bool)

(assert (=> start!39710 m!415163))

(declare-fun m!415165 () Bool)

(assert (=> b!426489 m!415165))

(declare-fun m!415167 () Bool)

(assert (=> b!426483 m!415167))

(declare-fun m!415169 () Bool)

(assert (=> b!426483 m!415169))

(assert (=> b!426483 m!415169))

(declare-fun m!415171 () Bool)

(assert (=> b!426483 m!415171))

(declare-fun m!415173 () Bool)

(assert (=> b!426483 m!415173))

(declare-fun m!415175 () Bool)

(assert (=> mapNonEmpty!18303 m!415175))

(declare-fun m!415177 () Bool)

(assert (=> b!426484 m!415177))

(declare-fun m!415179 () Bool)

(assert (=> b!426484 m!415179))

(declare-fun m!415181 () Bool)

(assert (=> b!426484 m!415181))

(declare-fun m!415183 () Bool)

(assert (=> b!426480 m!415183))

(declare-fun m!415185 () Bool)

(assert (=> b!426491 m!415185))

(declare-fun m!415187 () Bool)

(assert (=> b!426478 m!415187))

(declare-fun m!415189 () Bool)

(assert (=> b!426478 m!415189))

(declare-fun m!415191 () Bool)

(assert (=> b!426476 m!415191))

(check-sat (not b!426484) (not b!426479) (not b!426491) (not b!426478) (not start!39710) (not b_next!9969) tp_is_empty!11121 (not b!426487) (not b!426476) (not b!426486) b_and!17643 (not b!426489) (not mapNonEmpty!18303) (not b!426483))
(check-sat b_and!17643 (not b_next!9969))
