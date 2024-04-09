; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38738 () Bool)

(assert start!38738)

(declare-fun b_free!9267 () Bool)

(declare-fun b_next!9267 () Bool)

(assert (=> start!38738 (= b_free!9267 (not b_next!9267))))

(declare-fun tp!32924 () Bool)

(declare-fun b_and!16671 () Bool)

(assert (=> start!38738 (= tp!32924 b_and!16671)))

(declare-fun b!403072 () Bool)

(declare-fun res!232341 () Bool)

(declare-fun e!242702 () Bool)

(assert (=> b!403072 (=> (not res!232341) (not e!242702))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403072 (= res!232341 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16845 () Bool)

(declare-fun mapRes!16845 () Bool)

(assert (=> mapIsEmpty!16845 mapRes!16845))

(declare-fun b!403073 () Bool)

(declare-fun e!242698 () Bool)

(declare-fun tp_is_empty!10149 () Bool)

(assert (=> b!403073 (= e!242698 tp_is_empty!10149)))

(declare-fun b!403074 () Bool)

(declare-fun res!232333 () Bool)

(assert (=> b!403074 (=> (not res!232333) (not e!242702))))

(declare-datatypes ((array!24169 0))(
  ( (array!24170 (arr!11531 (Array (_ BitVec 32) (_ BitVec 64))) (size!11883 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24169)

(declare-datatypes ((List!6690 0))(
  ( (Nil!6687) (Cons!6686 (h!7542 (_ BitVec 64)) (t!11872 List!6690)) )
))
(declare-fun arrayNoDuplicates!0 (array!24169 (_ BitVec 32) List!6690) Bool)

(assert (=> b!403074 (= res!232333 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6687))))

(declare-fun b!403075 () Bool)

(declare-fun res!232344 () Bool)

(declare-fun e!242699 () Bool)

(assert (=> b!403075 (=> (not res!232344) (not e!242699))))

(declare-fun lt!187989 () array!24169)

(assert (=> b!403075 (= res!232344 (arrayNoDuplicates!0 lt!187989 #b00000000000000000000000000000000 Nil!6687))))

(declare-fun b!403076 () Bool)

(declare-fun res!232339 () Bool)

(assert (=> b!403076 (=> (not res!232339) (not e!242702))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403076 (= res!232339 (or (= (select (arr!11531 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11531 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((V!14637 0))(
  ( (V!14638 (val!5119 Int)) )
))
(declare-fun minValue!515 () V!14637)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4731 0))(
  ( (ValueCellFull!4731 (v!7362 V!14637)) (EmptyCell!4731) )
))
(declare-datatypes ((array!24171 0))(
  ( (array!24172 (arr!11532 (Array (_ BitVec 32) ValueCell!4731)) (size!11884 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24171)

(declare-fun zeroValue!515 () V!14637)

(declare-datatypes ((tuple2!6748 0))(
  ( (tuple2!6749 (_1!3384 (_ BitVec 64)) (_2!3384 V!14637)) )
))
(declare-datatypes ((List!6691 0))(
  ( (Nil!6688) (Cons!6687 (h!7543 tuple2!6748) (t!11873 List!6691)) )
))
(declare-datatypes ((ListLongMap!5675 0))(
  ( (ListLongMap!5676 (toList!2853 List!6691)) )
))
(declare-fun call!28462 () ListLongMap!5675)

(declare-fun c!54782 () Bool)

(declare-fun v!412 () V!14637)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28459 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1064 (array!24169 array!24171 (_ BitVec 32) (_ BitVec 32) V!14637 V!14637 (_ BitVec 32) Int) ListLongMap!5675)

(assert (=> bm!28459 (= call!28462 (getCurrentListMapNoExtraKeys!1064 (ite c!54782 _keys!709 lt!187989) (ite c!54782 _values!549 (array!24172 (store (arr!11532 _values!549) i!563 (ValueCellFull!4731 v!412)) (size!11884 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403077 () Bool)

(declare-fun res!232338 () Bool)

(assert (=> b!403077 (=> (not res!232338) (not e!242702))))

(assert (=> b!403077 (= res!232338 (and (= (size!11884 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11883 _keys!709) (size!11884 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16845 () Bool)

(declare-fun tp!32925 () Bool)

(assert (=> mapNonEmpty!16845 (= mapRes!16845 (and tp!32925 e!242698))))

(declare-fun mapKey!16845 () (_ BitVec 32))

(declare-fun mapRest!16845 () (Array (_ BitVec 32) ValueCell!4731))

(declare-fun mapValue!16845 () ValueCell!4731)

(assert (=> mapNonEmpty!16845 (= (arr!11532 _values!549) (store mapRest!16845 mapKey!16845 mapValue!16845))))

(declare-fun res!232334 () Bool)

(assert (=> start!38738 (=> (not res!232334) (not e!242702))))

(assert (=> start!38738 (= res!232334 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11883 _keys!709))))))

(assert (=> start!38738 e!242702))

(assert (=> start!38738 tp_is_empty!10149))

(assert (=> start!38738 tp!32924))

(assert (=> start!38738 true))

(declare-fun e!242701 () Bool)

(declare-fun array_inv!8428 (array!24171) Bool)

(assert (=> start!38738 (and (array_inv!8428 _values!549) e!242701)))

(declare-fun array_inv!8429 (array!24169) Bool)

(assert (=> start!38738 (array_inv!8429 _keys!709)))

(declare-fun b!403078 () Bool)

(declare-fun res!232335 () Bool)

(assert (=> b!403078 (=> (not res!232335) (not e!242702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24169 (_ BitVec 32)) Bool)

(assert (=> b!403078 (= res!232335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403079 () Bool)

(declare-fun call!28463 () ListLongMap!5675)

(declare-fun e!242704 () Bool)

(declare-fun +!1129 (ListLongMap!5675 tuple2!6748) ListLongMap!5675)

(assert (=> b!403079 (= e!242704 (= call!28463 (+!1129 call!28462 (tuple2!6749 k0!794 v!412))))))

(declare-fun b!403080 () Bool)

(assert (=> b!403080 (= e!242699 (not true))))

(assert (=> b!403080 e!242704))

(assert (=> b!403080 (= c!54782 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12155 0))(
  ( (Unit!12156) )
))
(declare-fun lt!187988 () Unit!12155)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!340 (array!24169 array!24171 (_ BitVec 32) (_ BitVec 32) V!14637 V!14637 (_ BitVec 32) (_ BitVec 64) V!14637 (_ BitVec 32) Int) Unit!12155)

(assert (=> b!403080 (= lt!187988 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!340 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403081 () Bool)

(declare-fun res!232343 () Bool)

(assert (=> b!403081 (=> (not res!232343) (not e!242702))))

(declare-fun arrayContainsKey!0 (array!24169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403081 (= res!232343 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!403082 () Bool)

(declare-fun e!242700 () Bool)

(assert (=> b!403082 (= e!242700 tp_is_empty!10149)))

(declare-fun b!403083 () Bool)

(assert (=> b!403083 (= e!242704 (= call!28462 call!28463))))

(declare-fun bm!28460 () Bool)

(assert (=> bm!28460 (= call!28463 (getCurrentListMapNoExtraKeys!1064 (ite c!54782 lt!187989 _keys!709) (ite c!54782 (array!24172 (store (arr!11532 _values!549) i!563 (ValueCellFull!4731 v!412)) (size!11884 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403084 () Bool)

(declare-fun res!232342 () Bool)

(assert (=> b!403084 (=> (not res!232342) (not e!242702))))

(assert (=> b!403084 (= res!232342 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11883 _keys!709))))))

(declare-fun b!403085 () Bool)

(assert (=> b!403085 (= e!242702 e!242699)))

(declare-fun res!232337 () Bool)

(assert (=> b!403085 (=> (not res!232337) (not e!242699))))

(assert (=> b!403085 (= res!232337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187989 mask!1025))))

(assert (=> b!403085 (= lt!187989 (array!24170 (store (arr!11531 _keys!709) i!563 k0!794) (size!11883 _keys!709)))))

(declare-fun b!403086 () Bool)

(declare-fun res!232336 () Bool)

(assert (=> b!403086 (=> (not res!232336) (not e!242702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403086 (= res!232336 (validMask!0 mask!1025))))

(declare-fun b!403087 () Bool)

(declare-fun res!232340 () Bool)

(assert (=> b!403087 (=> (not res!232340) (not e!242699))))

(assert (=> b!403087 (= res!232340 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11883 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!403088 () Bool)

(assert (=> b!403088 (= e!242701 (and e!242700 mapRes!16845))))

(declare-fun condMapEmpty!16845 () Bool)

(declare-fun mapDefault!16845 () ValueCell!4731)

(assert (=> b!403088 (= condMapEmpty!16845 (= (arr!11532 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4731)) mapDefault!16845)))))

(assert (= (and start!38738 res!232334) b!403086))

(assert (= (and b!403086 res!232336) b!403077))

(assert (= (and b!403077 res!232338) b!403078))

(assert (= (and b!403078 res!232335) b!403074))

(assert (= (and b!403074 res!232333) b!403084))

(assert (= (and b!403084 res!232342) b!403072))

(assert (= (and b!403072 res!232341) b!403076))

(assert (= (and b!403076 res!232339) b!403081))

(assert (= (and b!403081 res!232343) b!403085))

(assert (= (and b!403085 res!232337) b!403075))

(assert (= (and b!403075 res!232344) b!403087))

(assert (= (and b!403087 res!232340) b!403080))

(assert (= (and b!403080 c!54782) b!403079))

(assert (= (and b!403080 (not c!54782)) b!403083))

(assert (= (or b!403079 b!403083) bm!28460))

(assert (= (or b!403079 b!403083) bm!28459))

(assert (= (and b!403088 condMapEmpty!16845) mapIsEmpty!16845))

(assert (= (and b!403088 (not condMapEmpty!16845)) mapNonEmpty!16845))

(get-info :version)

(assert (= (and mapNonEmpty!16845 ((_ is ValueCellFull!4731) mapValue!16845)) b!403073))

(assert (= (and b!403088 ((_ is ValueCellFull!4731) mapDefault!16845)) b!403082))

(assert (= start!38738 b!403088))

(declare-fun m!396361 () Bool)

(assert (=> start!38738 m!396361))

(declare-fun m!396363 () Bool)

(assert (=> start!38738 m!396363))

(declare-fun m!396365 () Bool)

(assert (=> b!403074 m!396365))

(declare-fun m!396367 () Bool)

(assert (=> b!403080 m!396367))

(declare-fun m!396369 () Bool)

(assert (=> b!403085 m!396369))

(declare-fun m!396371 () Bool)

(assert (=> b!403085 m!396371))

(declare-fun m!396373 () Bool)

(assert (=> b!403076 m!396373))

(declare-fun m!396375 () Bool)

(assert (=> mapNonEmpty!16845 m!396375))

(declare-fun m!396377 () Bool)

(assert (=> b!403075 m!396377))

(declare-fun m!396379 () Bool)

(assert (=> b!403086 m!396379))

(declare-fun m!396381 () Bool)

(assert (=> bm!28460 m!396381))

(declare-fun m!396383 () Bool)

(assert (=> bm!28460 m!396383))

(assert (=> bm!28459 m!396381))

(declare-fun m!396385 () Bool)

(assert (=> bm!28459 m!396385))

(declare-fun m!396387 () Bool)

(assert (=> b!403079 m!396387))

(declare-fun m!396389 () Bool)

(assert (=> b!403081 m!396389))

(declare-fun m!396391 () Bool)

(assert (=> b!403072 m!396391))

(declare-fun m!396393 () Bool)

(assert (=> b!403078 m!396393))

(check-sat (not b_next!9267) (not mapNonEmpty!16845) (not b!403079) (not b!403072) (not b!403075) (not b!403078) (not bm!28459) (not start!38738) (not bm!28460) (not b!403085) (not b!403086) (not b!403074) (not b!403081) b_and!16671 (not b!403080) tp_is_empty!10149)
(check-sat b_and!16671 (not b_next!9267))
