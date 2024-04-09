; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38752 () Bool)

(assert start!38752)

(declare-fun b_free!9281 () Bool)

(declare-fun b_next!9281 () Bool)

(assert (=> start!38752 (= b_free!9281 (not b_next!9281))))

(declare-fun tp!32966 () Bool)

(declare-fun b_and!16685 () Bool)

(assert (=> start!38752 (= tp!32966 b_and!16685)))

(declare-fun b!403429 () Bool)

(declare-fun e!242847 () Bool)

(declare-fun tp_is_empty!10163 () Bool)

(assert (=> b!403429 (= e!242847 tp_is_empty!10163)))

(declare-fun b!403431 () Bool)

(declare-fun res!232595 () Bool)

(declare-fun e!242849 () Bool)

(assert (=> b!403431 (=> (not res!232595) (not e!242849))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403431 (= res!232595 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16866 () Bool)

(declare-fun mapRes!16866 () Bool)

(assert (=> mapIsEmpty!16866 mapRes!16866))

(declare-fun b!403432 () Bool)

(declare-fun e!242845 () Bool)

(assert (=> b!403432 (= e!242845 tp_is_empty!10163)))

(declare-fun b!403433 () Bool)

(declare-fun res!232587 () Bool)

(assert (=> b!403433 (=> (not res!232587) (not e!242849))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24197 0))(
  ( (array!24198 (arr!11545 (Array (_ BitVec 32) (_ BitVec 64))) (size!11897 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24197)

(assert (=> b!403433 (= res!232587 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11897 _keys!709))))))

(declare-fun b!403434 () Bool)

(declare-fun res!232596 () Bool)

(assert (=> b!403434 (=> (not res!232596) (not e!242849))))

(declare-datatypes ((List!6701 0))(
  ( (Nil!6698) (Cons!6697 (h!7553 (_ BitVec 64)) (t!11883 List!6701)) )
))
(declare-fun arrayNoDuplicates!0 (array!24197 (_ BitVec 32) List!6701) Bool)

(assert (=> b!403434 (= res!232596 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6698))))

(declare-fun b!403435 () Bool)

(declare-fun res!232589 () Bool)

(declare-fun e!242846 () Bool)

(assert (=> b!403435 (=> (not res!232589) (not e!242846))))

(declare-fun lt!188031 () array!24197)

(assert (=> b!403435 (= res!232589 (arrayNoDuplicates!0 lt!188031 #b00000000000000000000000000000000 Nil!6698))))

(declare-fun b!403436 () Bool)

(declare-fun res!232590 () Bool)

(assert (=> b!403436 (=> (not res!232590) (not e!242849))))

(assert (=> b!403436 (= res!232590 (or (= (select (arr!11545 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11545 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((V!14655 0))(
  ( (V!14656 (val!5126 Int)) )
))
(declare-fun minValue!515 () V!14655)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4738 0))(
  ( (ValueCellFull!4738 (v!7369 V!14655)) (EmptyCell!4738) )
))
(declare-datatypes ((array!24199 0))(
  ( (array!24200 (arr!11546 (Array (_ BitVec 32) ValueCell!4738)) (size!11898 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24199)

(declare-fun zeroValue!515 () V!14655)

(declare-fun c!54803 () Bool)

(declare-fun v!412 () V!14655)

(declare-datatypes ((tuple2!6762 0))(
  ( (tuple2!6763 (_1!3391 (_ BitVec 64)) (_2!3391 V!14655)) )
))
(declare-datatypes ((List!6702 0))(
  ( (Nil!6699) (Cons!6698 (h!7554 tuple2!6762) (t!11884 List!6702)) )
))
(declare-datatypes ((ListLongMap!5689 0))(
  ( (ListLongMap!5690 (toList!2860 List!6702)) )
))
(declare-fun call!28504 () ListLongMap!5689)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28501 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1071 (array!24197 array!24199 (_ BitVec 32) (_ BitVec 32) V!14655 V!14655 (_ BitVec 32) Int) ListLongMap!5689)

(assert (=> bm!28501 (= call!28504 (getCurrentListMapNoExtraKeys!1071 (ite c!54803 _keys!709 lt!188031) (ite c!54803 _values!549 (array!24200 (store (arr!11546 _values!549) i!563 (ValueCellFull!4738 v!412)) (size!11898 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403437 () Bool)

(declare-fun res!232586 () Bool)

(assert (=> b!403437 (=> (not res!232586) (not e!242849))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403437 (= res!232586 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403438 () Bool)

(declare-fun e!242850 () Bool)

(declare-fun call!28505 () ListLongMap!5689)

(assert (=> b!403438 (= e!242850 (= call!28504 call!28505))))

(declare-fun bm!28502 () Bool)

(assert (=> bm!28502 (= call!28505 (getCurrentListMapNoExtraKeys!1071 (ite c!54803 lt!188031 _keys!709) (ite c!54803 (array!24200 (store (arr!11546 _values!549) i!563 (ValueCellFull!4738 v!412)) (size!11898 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403439 () Bool)

(assert (=> b!403439 (= e!242849 e!242846)))

(declare-fun res!232585 () Bool)

(assert (=> b!403439 (=> (not res!232585) (not e!242846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24197 (_ BitVec 32)) Bool)

(assert (=> b!403439 (= res!232585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188031 mask!1025))))

(assert (=> b!403439 (= lt!188031 (array!24198 (store (arr!11545 _keys!709) i!563 k!794) (size!11897 _keys!709)))))

(declare-fun b!403430 () Bool)

(assert (=> b!403430 (= e!242846 (not true))))

(assert (=> b!403430 e!242850))

(assert (=> b!403430 (= c!54803 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12163 0))(
  ( (Unit!12164) )
))
(declare-fun lt!188030 () Unit!12163)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!344 (array!24197 array!24199 (_ BitVec 32) (_ BitVec 32) V!14655 V!14655 (_ BitVec 32) (_ BitVec 64) V!14655 (_ BitVec 32) Int) Unit!12163)

(assert (=> b!403430 (= lt!188030 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!344 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!232588 () Bool)

(assert (=> start!38752 (=> (not res!232588) (not e!242849))))

(assert (=> start!38752 (= res!232588 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11897 _keys!709))))))

(assert (=> start!38752 e!242849))

(assert (=> start!38752 tp_is_empty!10163))

(assert (=> start!38752 tp!32966))

(assert (=> start!38752 true))

(declare-fun e!242851 () Bool)

(declare-fun array_inv!8436 (array!24199) Bool)

(assert (=> start!38752 (and (array_inv!8436 _values!549) e!242851)))

(declare-fun array_inv!8437 (array!24197) Bool)

(assert (=> start!38752 (array_inv!8437 _keys!709)))

(declare-fun mapNonEmpty!16866 () Bool)

(declare-fun tp!32967 () Bool)

(assert (=> mapNonEmpty!16866 (= mapRes!16866 (and tp!32967 e!242845))))

(declare-fun mapRest!16866 () (Array (_ BitVec 32) ValueCell!4738))

(declare-fun mapValue!16866 () ValueCell!4738)

(declare-fun mapKey!16866 () (_ BitVec 32))

(assert (=> mapNonEmpty!16866 (= (arr!11546 _values!549) (store mapRest!16866 mapKey!16866 mapValue!16866))))

(declare-fun b!403440 () Bool)

(declare-fun res!232594 () Bool)

(assert (=> b!403440 (=> (not res!232594) (not e!242849))))

(assert (=> b!403440 (= res!232594 (and (= (size!11898 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11897 _keys!709) (size!11898 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403441 () Bool)

(assert (=> b!403441 (= e!242851 (and e!242847 mapRes!16866))))

(declare-fun condMapEmpty!16866 () Bool)

(declare-fun mapDefault!16866 () ValueCell!4738)

