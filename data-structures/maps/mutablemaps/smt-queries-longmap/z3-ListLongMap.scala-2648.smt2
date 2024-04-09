; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39716 () Bool)

(assert start!39716)

(declare-fun b_free!9975 () Bool)

(declare-fun b_next!9975 () Bool)

(assert (=> start!39716 (= b_free!9975 (not b_next!9975))))

(declare-fun tp!35453 () Bool)

(declare-fun b_and!17649 () Bool)

(assert (=> start!39716 (= tp!35453 b_and!17649)))

(declare-fun b!426620 () Bool)

(declare-fun res!250159 () Bool)

(declare-fun e!253057 () Bool)

(assert (=> b!426620 (=> (not res!250159) (not e!253057))))

(declare-datatypes ((array!26077 0))(
  ( (array!26078 (arr!12485 (Array (_ BitVec 32) (_ BitVec 64))) (size!12837 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26077)

(declare-datatypes ((List!7356 0))(
  ( (Nil!7353) (Cons!7352 (h!8208 (_ BitVec 64)) (t!12808 List!7356)) )
))
(declare-fun arrayNoDuplicates!0 (array!26077 (_ BitVec 32) List!7356) Bool)

(assert (=> b!426620 (= res!250159 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7353))))

(declare-fun b!426621 () Bool)

(declare-fun res!250167 () Bool)

(declare-fun e!253062 () Bool)

(assert (=> b!426621 (=> (not res!250167) (not e!253062))))

(declare-fun lt!195045 () array!26077)

(assert (=> b!426621 (= res!250167 (arrayNoDuplicates!0 lt!195045 #b00000000000000000000000000000000 Nil!7353))))

(declare-fun b!426622 () Bool)

(declare-fun res!250166 () Bool)

(assert (=> b!426622 (=> (not res!250166) (not e!253057))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15941 0))(
  ( (V!15942 (val!5608 Int)) )
))
(declare-datatypes ((ValueCell!5220 0))(
  ( (ValueCellFull!5220 (v!7851 V!15941)) (EmptyCell!5220) )
))
(declare-datatypes ((array!26079 0))(
  ( (array!26080 (arr!12486 (Array (_ BitVec 32) ValueCell!5220)) (size!12838 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26079)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!426622 (= res!250166 (and (= (size!12838 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12837 _keys!709) (size!12838 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!250158 () Bool)

(assert (=> start!39716 (=> (not res!250158) (not e!253057))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39716 (= res!250158 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12837 _keys!709))))))

(assert (=> start!39716 e!253057))

(declare-fun tp_is_empty!11127 () Bool)

(assert (=> start!39716 tp_is_empty!11127))

(assert (=> start!39716 tp!35453))

(assert (=> start!39716 true))

(declare-fun e!253060 () Bool)

(declare-fun array_inv!9094 (array!26079) Bool)

(assert (=> start!39716 (and (array_inv!9094 _values!549) e!253060)))

(declare-fun array_inv!9095 (array!26077) Bool)

(assert (=> start!39716 (array_inv!9095 _keys!709)))

(declare-fun b!426623 () Bool)

(declare-fun e!253058 () Bool)

(assert (=> b!426623 (= e!253058 (not true))))

(declare-fun minValue!515 () V!15941)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195043 () array!26079)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15941)

(declare-fun zeroValue!515 () V!15941)

(declare-datatypes ((tuple2!7308 0))(
  ( (tuple2!7309 (_1!3664 (_ BitVec 64)) (_2!3664 V!15941)) )
))
(declare-datatypes ((List!7357 0))(
  ( (Nil!7354) (Cons!7353 (h!8209 tuple2!7308) (t!12809 List!7357)) )
))
(declare-datatypes ((ListLongMap!6235 0))(
  ( (ListLongMap!6236 (toList!3133 List!7357)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1334 (array!26077 array!26079 (_ BitVec 32) (_ BitVec 32) V!15941 V!15941 (_ BitVec 32) Int) ListLongMap!6235)

(declare-fun +!1287 (ListLongMap!6235 tuple2!7308) ListLongMap!6235)

(assert (=> b!426623 (= (getCurrentListMapNoExtraKeys!1334 lt!195045 lt!195043 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1287 (getCurrentListMapNoExtraKeys!1334 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7309 k0!794 v!412)))))

(declare-datatypes ((Unit!12477 0))(
  ( (Unit!12478) )
))
(declare-fun lt!195042 () Unit!12477)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!489 (array!26077 array!26079 (_ BitVec 32) (_ BitVec 32) V!15941 V!15941 (_ BitVec 32) (_ BitVec 64) V!15941 (_ BitVec 32) Int) Unit!12477)

(assert (=> b!426623 (= lt!195042 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!489 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426624 () Bool)

(assert (=> b!426624 (= e!253062 e!253058)))

(declare-fun res!250160 () Bool)

(assert (=> b!426624 (=> (not res!250160) (not e!253058))))

(assert (=> b!426624 (= res!250160 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195044 () ListLongMap!6235)

(assert (=> b!426624 (= lt!195044 (getCurrentListMapNoExtraKeys!1334 lt!195045 lt!195043 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!426624 (= lt!195043 (array!26080 (store (arr!12486 _values!549) i!563 (ValueCellFull!5220 v!412)) (size!12838 _values!549)))))

(declare-fun lt!195041 () ListLongMap!6235)

(assert (=> b!426624 (= lt!195041 (getCurrentListMapNoExtraKeys!1334 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426625 () Bool)

(declare-fun res!250169 () Bool)

(assert (=> b!426625 (=> (not res!250169) (not e!253057))))

(declare-fun arrayContainsKey!0 (array!26077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426625 (= res!250169 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426626 () Bool)

(declare-fun e!253063 () Bool)

(assert (=> b!426626 (= e!253063 tp_is_empty!11127)))

(declare-fun b!426627 () Bool)

(declare-fun res!250168 () Bool)

(assert (=> b!426627 (=> (not res!250168) (not e!253057))))

(assert (=> b!426627 (= res!250168 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12837 _keys!709))))))

(declare-fun b!426628 () Bool)

(declare-fun mapRes!18312 () Bool)

(assert (=> b!426628 (= e!253060 (and e!253063 mapRes!18312))))

(declare-fun condMapEmpty!18312 () Bool)

(declare-fun mapDefault!18312 () ValueCell!5220)

(assert (=> b!426628 (= condMapEmpty!18312 (= (arr!12486 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5220)) mapDefault!18312)))))

(declare-fun b!426629 () Bool)

(declare-fun res!250165 () Bool)

(assert (=> b!426629 (=> (not res!250165) (not e!253057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426629 (= res!250165 (validKeyInArray!0 k0!794))))

(declare-fun b!426630 () Bool)

(declare-fun res!250161 () Bool)

(assert (=> b!426630 (=> (not res!250161) (not e!253057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26077 (_ BitVec 32)) Bool)

(assert (=> b!426630 (= res!250161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18312 () Bool)

(assert (=> mapIsEmpty!18312 mapRes!18312))

(declare-fun b!426631 () Bool)

(assert (=> b!426631 (= e!253057 e!253062)))

(declare-fun res!250170 () Bool)

(assert (=> b!426631 (=> (not res!250170) (not e!253062))))

(assert (=> b!426631 (= res!250170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195045 mask!1025))))

(assert (=> b!426631 (= lt!195045 (array!26078 (store (arr!12485 _keys!709) i!563 k0!794) (size!12837 _keys!709)))))

(declare-fun b!426632 () Bool)

(declare-fun res!250164 () Bool)

(assert (=> b!426632 (=> (not res!250164) (not e!253062))))

(assert (=> b!426632 (= res!250164 (bvsle from!863 i!563))))

(declare-fun b!426633 () Bool)

(declare-fun e!253059 () Bool)

(assert (=> b!426633 (= e!253059 tp_is_empty!11127)))

(declare-fun mapNonEmpty!18312 () Bool)

(declare-fun tp!35454 () Bool)

(assert (=> mapNonEmpty!18312 (= mapRes!18312 (and tp!35454 e!253059))))

(declare-fun mapRest!18312 () (Array (_ BitVec 32) ValueCell!5220))

(declare-fun mapValue!18312 () ValueCell!5220)

(declare-fun mapKey!18312 () (_ BitVec 32))

(assert (=> mapNonEmpty!18312 (= (arr!12486 _values!549) (store mapRest!18312 mapKey!18312 mapValue!18312))))

(declare-fun b!426634 () Bool)

(declare-fun res!250163 () Bool)

(assert (=> b!426634 (=> (not res!250163) (not e!253057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426634 (= res!250163 (validMask!0 mask!1025))))

(declare-fun b!426635 () Bool)

(declare-fun res!250162 () Bool)

(assert (=> b!426635 (=> (not res!250162) (not e!253057))))

(assert (=> b!426635 (= res!250162 (or (= (select (arr!12485 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12485 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39716 res!250158) b!426634))

(assert (= (and b!426634 res!250163) b!426622))

(assert (= (and b!426622 res!250166) b!426630))

(assert (= (and b!426630 res!250161) b!426620))

(assert (= (and b!426620 res!250159) b!426627))

(assert (= (and b!426627 res!250168) b!426629))

(assert (= (and b!426629 res!250165) b!426635))

(assert (= (and b!426635 res!250162) b!426625))

(assert (= (and b!426625 res!250169) b!426631))

(assert (= (and b!426631 res!250170) b!426621))

(assert (= (and b!426621 res!250167) b!426632))

(assert (= (and b!426632 res!250164) b!426624))

(assert (= (and b!426624 res!250160) b!426623))

(assert (= (and b!426628 condMapEmpty!18312) mapIsEmpty!18312))

(assert (= (and b!426628 (not condMapEmpty!18312)) mapNonEmpty!18312))

(get-info :version)

(assert (= (and mapNonEmpty!18312 ((_ is ValueCellFull!5220) mapValue!18312)) b!426633))

(assert (= (and b!426628 ((_ is ValueCellFull!5220) mapDefault!18312)) b!426626))

(assert (= start!39716 b!426628))

(declare-fun m!415269 () Bool)

(assert (=> b!426623 m!415269))

(declare-fun m!415271 () Bool)

(assert (=> b!426623 m!415271))

(assert (=> b!426623 m!415271))

(declare-fun m!415273 () Bool)

(assert (=> b!426623 m!415273))

(declare-fun m!415275 () Bool)

(assert (=> b!426623 m!415275))

(declare-fun m!415277 () Bool)

(assert (=> b!426620 m!415277))

(declare-fun m!415279 () Bool)

(assert (=> b!426625 m!415279))

(declare-fun m!415281 () Bool)

(assert (=> b!426629 m!415281))

(declare-fun m!415283 () Bool)

(assert (=> start!39716 m!415283))

(declare-fun m!415285 () Bool)

(assert (=> start!39716 m!415285))

(declare-fun m!415287 () Bool)

(assert (=> b!426631 m!415287))

(declare-fun m!415289 () Bool)

(assert (=> b!426631 m!415289))

(declare-fun m!415291 () Bool)

(assert (=> b!426635 m!415291))

(declare-fun m!415293 () Bool)

(assert (=> b!426624 m!415293))

(declare-fun m!415295 () Bool)

(assert (=> b!426624 m!415295))

(declare-fun m!415297 () Bool)

(assert (=> b!426624 m!415297))

(declare-fun m!415299 () Bool)

(assert (=> mapNonEmpty!18312 m!415299))

(declare-fun m!415301 () Bool)

(assert (=> b!426634 m!415301))

(declare-fun m!415303 () Bool)

(assert (=> b!426621 m!415303))

(declare-fun m!415305 () Bool)

(assert (=> b!426630 m!415305))

(check-sat (not b!426631) (not b!426625) (not b!426623) (not mapNonEmpty!18312) (not b!426634) (not b!426630) (not b!426620) b_and!17649 (not b!426629) (not b_next!9975) (not b!426621) (not start!39716) (not b!426624) tp_is_empty!11127)
(check-sat b_and!17649 (not b_next!9975))
