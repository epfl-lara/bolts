; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39376 () Bool)

(assert start!39376)

(declare-fun b_free!9635 () Bool)

(declare-fun b_next!9635 () Bool)

(assert (=> start!39376 (= b_free!9635 (not b_next!9635))))

(declare-fun tp!34433 () Bool)

(declare-fun b_and!17163 () Bool)

(assert (=> start!39376 (= tp!34433 b_and!17163)))

(declare-fun mapNonEmpty!17802 () Bool)

(declare-fun mapRes!17802 () Bool)

(declare-fun tp!34434 () Bool)

(declare-fun e!249218 () Bool)

(assert (=> mapNonEmpty!17802 (= mapRes!17802 (and tp!34434 e!249218))))

(declare-datatypes ((V!15487 0))(
  ( (V!15488 (val!5438 Int)) )
))
(declare-datatypes ((ValueCell!5050 0))(
  ( (ValueCellFull!5050 (v!7681 V!15487)) (EmptyCell!5050) )
))
(declare-datatypes ((array!25409 0))(
  ( (array!25410 (arr!12151 (Array (_ BitVec 32) ValueCell!5050)) (size!12503 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25409)

(declare-fun mapValue!17802 () ValueCell!5050)

(declare-fun mapRest!17802 () (Array (_ BitVec 32) ValueCell!5050))

(declare-fun mapKey!17802 () (_ BitVec 32))

(assert (=> mapNonEmpty!17802 (= (arr!12151 _values!549) (store mapRest!17802 mapKey!17802 mapValue!17802))))

(declare-datatypes ((tuple2!7034 0))(
  ( (tuple2!7035 (_1!3527 (_ BitVec 64)) (_2!3527 V!15487)) )
))
(declare-datatypes ((List!7086 0))(
  ( (Nil!7083) (Cons!7082 (h!7938 tuple2!7034) (t!12394 List!7086)) )
))
(declare-datatypes ((ListLongMap!5961 0))(
  ( (ListLongMap!5962 (toList!2996 List!7086)) )
))
(declare-fun call!29080 () ListLongMap!5961)

(declare-fun call!29081 () ListLongMap!5961)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!249216 () Bool)

(declare-fun v!412 () V!15487)

(declare-fun b!417825 () Bool)

(declare-fun +!1205 (ListLongMap!5961 tuple2!7034) ListLongMap!5961)

(assert (=> b!417825 (= e!249216 (= call!29081 (+!1205 call!29080 (tuple2!7035 k!794 v!412))))))

(declare-fun b!417826 () Bool)

(declare-fun res!243484 () Bool)

(declare-fun e!249219 () Bool)

(assert (=> b!417826 (=> (not res!243484) (not e!249219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417826 (= res!243484 (validKeyInArray!0 k!794))))

(declare-fun minValue!515 () V!15487)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15487)

(declare-fun lt!191518 () array!25409)

(declare-fun c!55091 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25411 0))(
  ( (array!25412 (arr!12152 (Array (_ BitVec 32) (_ BitVec 64))) (size!12504 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25411)

(declare-fun lt!191519 () array!25411)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!29077 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1199 (array!25411 array!25409 (_ BitVec 32) (_ BitVec 32) V!15487 V!15487 (_ BitVec 32) Int) ListLongMap!5961)

(assert (=> bm!29077 (= call!29080 (getCurrentListMapNoExtraKeys!1199 (ite c!55091 _keys!709 lt!191519) (ite c!55091 _values!549 lt!191518) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417827 () Bool)

(declare-fun res!243482 () Bool)

(assert (=> b!417827 (=> (not res!243482) (not e!249219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25411 (_ BitVec 32)) Bool)

(assert (=> b!417827 (= res!243482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29078 () Bool)

(assert (=> bm!29078 (= call!29081 (getCurrentListMapNoExtraKeys!1199 (ite c!55091 lt!191519 _keys!709) (ite c!55091 lt!191518 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17802 () Bool)

(assert (=> mapIsEmpty!17802 mapRes!17802))

(declare-fun b!417828 () Bool)

(declare-fun res!243483 () Bool)

(assert (=> b!417828 (=> (not res!243483) (not e!249219))))

(assert (=> b!417828 (= res!243483 (and (= (size!12503 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12504 _keys!709) (size!12503 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417829 () Bool)

(declare-fun e!249223 () Bool)

(declare-fun e!249221 () Bool)

(assert (=> b!417829 (= e!249223 e!249221)))

(declare-fun res!243486 () Bool)

(assert (=> b!417829 (=> (not res!243486) (not e!249221))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417829 (= res!243486 (= from!863 i!563))))

(declare-fun lt!191517 () ListLongMap!5961)

(assert (=> b!417829 (= lt!191517 (getCurrentListMapNoExtraKeys!1199 lt!191519 lt!191518 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417829 (= lt!191518 (array!25410 (store (arr!12151 _values!549) i!563 (ValueCellFull!5050 v!412)) (size!12503 _values!549)))))

(declare-fun lt!191521 () ListLongMap!5961)

(assert (=> b!417829 (= lt!191521 (getCurrentListMapNoExtraKeys!1199 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417830 () Bool)

(declare-fun res!243475 () Bool)

(assert (=> b!417830 (=> (not res!243475) (not e!249219))))

(assert (=> b!417830 (= res!243475 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12504 _keys!709))))))

(declare-fun b!417831 () Bool)

(assert (=> b!417831 (= e!249216 (= call!29080 call!29081))))

(declare-fun res!243480 () Bool)

(assert (=> start!39376 (=> (not res!243480) (not e!249219))))

(assert (=> start!39376 (= res!243480 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12504 _keys!709))))))

(assert (=> start!39376 e!249219))

(declare-fun tp_is_empty!10787 () Bool)

(assert (=> start!39376 tp_is_empty!10787))

(assert (=> start!39376 tp!34433))

(assert (=> start!39376 true))

(declare-fun e!249215 () Bool)

(declare-fun array_inv!8860 (array!25409) Bool)

(assert (=> start!39376 (and (array_inv!8860 _values!549) e!249215)))

(declare-fun array_inv!8861 (array!25411) Bool)

(assert (=> start!39376 (array_inv!8861 _keys!709)))

(declare-fun b!417832 () Bool)

(declare-fun e!249217 () Bool)

(assert (=> b!417832 (= e!249217 true)))

(declare-fun lt!191523 () V!15487)

(declare-fun lt!191522 () tuple2!7034)

(declare-fun lt!191514 () ListLongMap!5961)

(assert (=> b!417832 (= (+!1205 lt!191514 lt!191522) (+!1205 (+!1205 lt!191514 (tuple2!7035 k!794 lt!191523)) lt!191522))))

(declare-fun lt!191520 () V!15487)

(assert (=> b!417832 (= lt!191522 (tuple2!7035 k!794 lt!191520))))

(declare-datatypes ((Unit!12311 0))(
  ( (Unit!12312) )
))
(declare-fun lt!191516 () Unit!12311)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!28 (ListLongMap!5961 (_ BitVec 64) V!15487 V!15487) Unit!12311)

(assert (=> b!417832 (= lt!191516 (addSameAsAddTwiceSameKeyDiffValues!28 lt!191514 k!794 lt!191523 lt!191520))))

(declare-fun lt!191513 () V!15487)

(declare-fun get!6021 (ValueCell!5050 V!15487) V!15487)

(assert (=> b!417832 (= lt!191523 (get!6021 (select (arr!12151 _values!549) from!863) lt!191513))))

(assert (=> b!417832 (= lt!191517 (+!1205 lt!191514 (tuple2!7035 (select (arr!12152 lt!191519) from!863) lt!191520)))))

(assert (=> b!417832 (= lt!191520 (get!6021 (select (store (arr!12151 _values!549) i!563 (ValueCellFull!5050 v!412)) from!863) lt!191513))))

(declare-fun dynLambda!690 (Int (_ BitVec 64)) V!15487)

(assert (=> b!417832 (= lt!191513 (dynLambda!690 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417832 (= lt!191514 (getCurrentListMapNoExtraKeys!1199 lt!191519 lt!191518 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417833 () Bool)

(declare-fun e!249220 () Bool)

(assert (=> b!417833 (= e!249215 (and e!249220 mapRes!17802))))

(declare-fun condMapEmpty!17802 () Bool)

(declare-fun mapDefault!17802 () ValueCell!5050)

