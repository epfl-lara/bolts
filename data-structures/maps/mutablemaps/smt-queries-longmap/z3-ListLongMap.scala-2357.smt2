; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37614 () Bool)

(assert start!37614)

(declare-fun b_free!8733 () Bool)

(declare-fun b_next!8733 () Bool)

(assert (=> start!37614 (= b_free!8733 (not b_next!8733))))

(declare-fun tp!30915 () Bool)

(declare-fun b_and!15993 () Bool)

(assert (=> start!37614 (= tp!30915 b_and!15993)))

(declare-fun res!219241 () Bool)

(declare-fun e!233419 () Bool)

(assert (=> start!37614 (=> (not res!219241) (not e!233419))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37614 (= res!219241 (validMask!0 mask!970))))

(assert (=> start!37614 e!233419))

(declare-datatypes ((V!13613 0))(
  ( (V!13614 (val!4735 Int)) )
))
(declare-datatypes ((ValueCell!4347 0))(
  ( (ValueCellFull!4347 (v!6928 V!13613)) (EmptyCell!4347) )
))
(declare-datatypes ((array!22649 0))(
  ( (array!22650 (arr!10790 (Array (_ BitVec 32) ValueCell!4347)) (size!11142 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22649)

(declare-fun e!233418 () Bool)

(declare-fun array_inv!7926 (array!22649) Bool)

(assert (=> start!37614 (and (array_inv!7926 _values!506) e!233418)))

(assert (=> start!37614 tp!30915))

(assert (=> start!37614 true))

(declare-fun tp_is_empty!9381 () Bool)

(assert (=> start!37614 tp_is_empty!9381))

(declare-datatypes ((array!22651 0))(
  ( (array!22652 (arr!10791 (Array (_ BitVec 32) (_ BitVec 64))) (size!11143 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22651)

(declare-fun array_inv!7927 (array!22651) Bool)

(assert (=> start!37614 (array_inv!7927 _keys!658)))

(declare-fun mapIsEmpty!15636 () Bool)

(declare-fun mapRes!15636 () Bool)

(assert (=> mapIsEmpty!15636 mapRes!15636))

(declare-fun b!384484 () Bool)

(declare-fun e!233424 () Bool)

(assert (=> b!384484 (= e!233419 e!233424)))

(declare-fun res!219251 () Bool)

(assert (=> b!384484 (=> (not res!219251) (not e!233424))))

(declare-fun lt!181041 () array!22651)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22651 (_ BitVec 32)) Bool)

(assert (=> b!384484 (= res!219251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181041 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384484 (= lt!181041 (array!22652 (store (arr!10791 _keys!658) i!548 k0!778) (size!11143 _keys!658)))))

(declare-fun b!384485 () Bool)

(declare-fun e!233422 () Bool)

(assert (=> b!384485 (= e!233418 (and e!233422 mapRes!15636))))

(declare-fun condMapEmpty!15636 () Bool)

(declare-fun mapDefault!15636 () ValueCell!4347)

(assert (=> b!384485 (= condMapEmpty!15636 (= (arr!10790 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4347)) mapDefault!15636)))))

(declare-fun b!384486 () Bool)

(declare-fun res!219250 () Bool)

(assert (=> b!384486 (=> (not res!219250) (not e!233419))))

(assert (=> b!384486 (= res!219250 (or (= (select (arr!10791 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10791 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384487 () Bool)

(declare-fun res!219246 () Bool)

(assert (=> b!384487 (=> (not res!219246) (not e!233419))))

(declare-fun arrayContainsKey!0 (array!22651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384487 (= res!219246 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384488 () Bool)

(declare-fun e!233420 () Bool)

(assert (=> b!384488 (= e!233420 tp_is_empty!9381)))

(declare-fun b!384489 () Bool)

(declare-fun res!219247 () Bool)

(assert (=> b!384489 (=> (not res!219247) (not e!233419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384489 (= res!219247 (validKeyInArray!0 k0!778))))

(declare-fun b!384490 () Bool)

(assert (=> b!384490 (= e!233422 tp_is_empty!9381)))

(declare-fun b!384491 () Bool)

(declare-fun e!233423 () Bool)

(assert (=> b!384491 (= e!233424 (not e!233423))))

(declare-fun res!219249 () Bool)

(assert (=> b!384491 (=> res!219249 e!233423)))

(declare-fun lt!181038 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384491 (= res!219249 (or (and (not lt!181038) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181038) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181038)))))

(assert (=> b!384491 (= lt!181038 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6330 0))(
  ( (tuple2!6331 (_1!3175 (_ BitVec 64)) (_2!3175 V!13613)) )
))
(declare-datatypes ((List!6196 0))(
  ( (Nil!6193) (Cons!6192 (h!7048 tuple2!6330) (t!11354 List!6196)) )
))
(declare-datatypes ((ListLongMap!5257 0))(
  ( (ListLongMap!5258 (toList!2644 List!6196)) )
))
(declare-fun lt!181040 () ListLongMap!5257)

(declare-fun zeroValue!472 () V!13613)

(declare-fun minValue!472 () V!13613)

(declare-fun getCurrentListMap!2060 (array!22651 array!22649 (_ BitVec 32) (_ BitVec 32) V!13613 V!13613 (_ BitVec 32) Int) ListLongMap!5257)

(assert (=> b!384491 (= lt!181040 (getCurrentListMap!2060 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181037 () ListLongMap!5257)

(declare-fun lt!181039 () array!22649)

(assert (=> b!384491 (= lt!181037 (getCurrentListMap!2060 lt!181041 lt!181039 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181045 () ListLongMap!5257)

(declare-fun lt!181043 () ListLongMap!5257)

(assert (=> b!384491 (and (= lt!181045 lt!181043) (= lt!181043 lt!181045))))

(declare-fun lt!181036 () ListLongMap!5257)

(declare-fun lt!181035 () tuple2!6330)

(declare-fun +!980 (ListLongMap!5257 tuple2!6330) ListLongMap!5257)

(assert (=> b!384491 (= lt!181043 (+!980 lt!181036 lt!181035))))

(declare-fun v!373 () V!13613)

(assert (=> b!384491 (= lt!181035 (tuple2!6331 k0!778 v!373))))

(declare-datatypes ((Unit!11849 0))(
  ( (Unit!11850) )
))
(declare-fun lt!181044 () Unit!11849)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!211 (array!22651 array!22649 (_ BitVec 32) (_ BitVec 32) V!13613 V!13613 (_ BitVec 32) (_ BitVec 64) V!13613 (_ BitVec 32) Int) Unit!11849)

(assert (=> b!384491 (= lt!181044 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!211 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!878 (array!22651 array!22649 (_ BitVec 32) (_ BitVec 32) V!13613 V!13613 (_ BitVec 32) Int) ListLongMap!5257)

(assert (=> b!384491 (= lt!181045 (getCurrentListMapNoExtraKeys!878 lt!181041 lt!181039 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384491 (= lt!181039 (array!22650 (store (arr!10790 _values!506) i!548 (ValueCellFull!4347 v!373)) (size!11142 _values!506)))))

(assert (=> b!384491 (= lt!181036 (getCurrentListMapNoExtraKeys!878 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384492 () Bool)

(declare-fun res!219248 () Bool)

(assert (=> b!384492 (=> (not res!219248) (not e!233419))))

(assert (=> b!384492 (= res!219248 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11143 _keys!658))))))

(declare-fun mapNonEmpty!15636 () Bool)

(declare-fun tp!30914 () Bool)

(assert (=> mapNonEmpty!15636 (= mapRes!15636 (and tp!30914 e!233420))))

(declare-fun mapKey!15636 () (_ BitVec 32))

(declare-fun mapRest!15636 () (Array (_ BitVec 32) ValueCell!4347))

(declare-fun mapValue!15636 () ValueCell!4347)

(assert (=> mapNonEmpty!15636 (= (arr!10790 _values!506) (store mapRest!15636 mapKey!15636 mapValue!15636))))

(declare-fun b!384493 () Bool)

(declare-fun res!219242 () Bool)

(assert (=> b!384493 (=> (not res!219242) (not e!233424))))

(declare-datatypes ((List!6197 0))(
  ( (Nil!6194) (Cons!6193 (h!7049 (_ BitVec 64)) (t!11355 List!6197)) )
))
(declare-fun arrayNoDuplicates!0 (array!22651 (_ BitVec 32) List!6197) Bool)

(assert (=> b!384493 (= res!219242 (arrayNoDuplicates!0 lt!181041 #b00000000000000000000000000000000 Nil!6194))))

(declare-fun b!384494 () Bool)

(declare-fun res!219244 () Bool)

(assert (=> b!384494 (=> (not res!219244) (not e!233419))))

(assert (=> b!384494 (= res!219244 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6194))))

(declare-fun b!384495 () Bool)

(declare-fun res!219245 () Bool)

(assert (=> b!384495 (=> (not res!219245) (not e!233419))))

(assert (=> b!384495 (= res!219245 (and (= (size!11142 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11143 _keys!658) (size!11142 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384496 () Bool)

(assert (=> b!384496 (= e!233423 true)))

(declare-fun lt!181042 () ListLongMap!5257)

(assert (=> b!384496 (= lt!181042 (+!980 lt!181040 lt!181035))))

(assert (=> b!384496 (= lt!181037 lt!181045)))

(declare-fun b!384497 () Bool)

(declare-fun res!219243 () Bool)

(assert (=> b!384497 (=> (not res!219243) (not e!233419))))

(assert (=> b!384497 (= res!219243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!37614 res!219241) b!384495))

(assert (= (and b!384495 res!219245) b!384497))

(assert (= (and b!384497 res!219243) b!384494))

(assert (= (and b!384494 res!219244) b!384492))

(assert (= (and b!384492 res!219248) b!384489))

(assert (= (and b!384489 res!219247) b!384486))

(assert (= (and b!384486 res!219250) b!384487))

(assert (= (and b!384487 res!219246) b!384484))

(assert (= (and b!384484 res!219251) b!384493))

(assert (= (and b!384493 res!219242) b!384491))

(assert (= (and b!384491 (not res!219249)) b!384496))

(assert (= (and b!384485 condMapEmpty!15636) mapIsEmpty!15636))

(assert (= (and b!384485 (not condMapEmpty!15636)) mapNonEmpty!15636))

(get-info :version)

(assert (= (and mapNonEmpty!15636 ((_ is ValueCellFull!4347) mapValue!15636)) b!384488))

(assert (= (and b!384485 ((_ is ValueCellFull!4347) mapDefault!15636)) b!384490))

(assert (= start!37614 b!384485))

(declare-fun m!381201 () Bool)

(assert (=> start!37614 m!381201))

(declare-fun m!381203 () Bool)

(assert (=> start!37614 m!381203))

(declare-fun m!381205 () Bool)

(assert (=> start!37614 m!381205))

(declare-fun m!381207 () Bool)

(assert (=> b!384493 m!381207))

(declare-fun m!381209 () Bool)

(assert (=> b!384497 m!381209))

(declare-fun m!381211 () Bool)

(assert (=> b!384486 m!381211))

(declare-fun m!381213 () Bool)

(assert (=> b!384484 m!381213))

(declare-fun m!381215 () Bool)

(assert (=> b!384484 m!381215))

(declare-fun m!381217 () Bool)

(assert (=> b!384489 m!381217))

(declare-fun m!381219 () Bool)

(assert (=> b!384491 m!381219))

(declare-fun m!381221 () Bool)

(assert (=> b!384491 m!381221))

(declare-fun m!381223 () Bool)

(assert (=> b!384491 m!381223))

(declare-fun m!381225 () Bool)

(assert (=> b!384491 m!381225))

(declare-fun m!381227 () Bool)

(assert (=> b!384491 m!381227))

(declare-fun m!381229 () Bool)

(assert (=> b!384491 m!381229))

(declare-fun m!381231 () Bool)

(assert (=> b!384491 m!381231))

(declare-fun m!381233 () Bool)

(assert (=> mapNonEmpty!15636 m!381233))

(declare-fun m!381235 () Bool)

(assert (=> b!384494 m!381235))

(declare-fun m!381237 () Bool)

(assert (=> b!384487 m!381237))

(declare-fun m!381239 () Bool)

(assert (=> b!384496 m!381239))

(check-sat (not start!37614) (not b!384487) (not b!384494) (not b!384491) (not b!384484) (not b!384496) b_and!15993 tp_is_empty!9381 (not b!384497) (not b!384493) (not mapNonEmpty!15636) (not b!384489) (not b_next!8733))
(check-sat b_and!15993 (not b_next!8733))
