; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38840 () Bool)

(assert start!38840)

(declare-fun b!405221 () Bool)

(declare-fun res!233952 () Bool)

(declare-fun e!243656 () Bool)

(assert (=> b!405221 (=> (not res!233952) (not e!243656))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405221 (= res!233952 (validMask!0 mask!1025))))

(declare-fun b!405222 () Bool)

(declare-fun res!233948 () Bool)

(assert (=> b!405222 (=> (not res!233948) (not e!243656))))

(declare-datatypes ((array!24361 0))(
  ( (array!24362 (arr!11627 (Array (_ BitVec 32) (_ BitVec 64))) (size!11979 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24361)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24361 (_ BitVec 32)) Bool)

(assert (=> b!405222 (= res!233948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405223 () Bool)

(declare-fun res!233945 () Bool)

(assert (=> b!405223 (=> (not res!233945) (not e!243656))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405223 (= res!233945 (or (= (select (arr!11627 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11627 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!233944 () Bool)

(assert (=> start!38840 (=> (not res!233944) (not e!243656))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38840 (= res!233944 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11979 _keys!709))))))

(assert (=> start!38840 e!243656))

(assert (=> start!38840 true))

(declare-datatypes ((V!14773 0))(
  ( (V!14774 (val!5170 Int)) )
))
(declare-datatypes ((ValueCell!4782 0))(
  ( (ValueCellFull!4782 (v!7413 V!14773)) (EmptyCell!4782) )
))
(declare-datatypes ((array!24363 0))(
  ( (array!24364 (arr!11628 (Array (_ BitVec 32) ValueCell!4782)) (size!11980 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24363)

(declare-fun e!243658 () Bool)

(declare-fun array_inv!8494 (array!24363) Bool)

(assert (=> start!38840 (and (array_inv!8494 _values!549) e!243658)))

(declare-fun array_inv!8495 (array!24361) Bool)

(assert (=> start!38840 (array_inv!8495 _keys!709)))

(declare-fun b!405224 () Bool)

(declare-fun res!233947 () Bool)

(assert (=> b!405224 (=> (not res!233947) (not e!243656))))

(declare-datatypes ((List!6740 0))(
  ( (Nil!6737) (Cons!6736 (h!7592 (_ BitVec 64)) (t!11922 List!6740)) )
))
(declare-fun arrayNoDuplicates!0 (array!24361 (_ BitVec 32) List!6740) Bool)

(assert (=> b!405224 (= res!233947 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6737))))

(declare-fun b!405225 () Bool)

(declare-fun res!233949 () Bool)

(assert (=> b!405225 (=> (not res!233949) (not e!243656))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405225 (= res!233949 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16998 () Bool)

(declare-fun mapRes!16998 () Bool)

(assert (=> mapIsEmpty!16998 mapRes!16998))

(declare-fun b!405226 () Bool)

(declare-fun res!233943 () Bool)

(assert (=> b!405226 (=> (not res!233943) (not e!243656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405226 (= res!233943 (validKeyInArray!0 k0!794))))

(declare-fun b!405227 () Bool)

(declare-fun e!243661 () Bool)

(declare-fun tp_is_empty!10251 () Bool)

(assert (=> b!405227 (= e!243661 tp_is_empty!10251)))

(declare-fun b!405228 () Bool)

(assert (=> b!405228 (= e!243658 (and e!243661 mapRes!16998))))

(declare-fun condMapEmpty!16998 () Bool)

(declare-fun mapDefault!16998 () ValueCell!4782)

(assert (=> b!405228 (= condMapEmpty!16998 (= (arr!11628 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4782)) mapDefault!16998)))))

(declare-fun b!405229 () Bool)

(declare-fun e!243659 () Bool)

(assert (=> b!405229 (= e!243659 false)))

(declare-fun lt!188294 () Bool)

(declare-fun lt!188295 () array!24361)

(assert (=> b!405229 (= lt!188294 (arrayNoDuplicates!0 lt!188295 #b00000000000000000000000000000000 Nil!6737))))

(declare-fun b!405230 () Bool)

(declare-fun res!233946 () Bool)

(assert (=> b!405230 (=> (not res!233946) (not e!243656))))

(assert (=> b!405230 (= res!233946 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11979 _keys!709))))))

(declare-fun b!405231 () Bool)

(declare-fun res!233951 () Bool)

(assert (=> b!405231 (=> (not res!233951) (not e!243656))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405231 (= res!233951 (and (= (size!11980 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11979 _keys!709) (size!11980 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16998 () Bool)

(declare-fun tp!33117 () Bool)

(declare-fun e!243657 () Bool)

(assert (=> mapNonEmpty!16998 (= mapRes!16998 (and tp!33117 e!243657))))

(declare-fun mapKey!16998 () (_ BitVec 32))

(declare-fun mapValue!16998 () ValueCell!4782)

(declare-fun mapRest!16998 () (Array (_ BitVec 32) ValueCell!4782))

(assert (=> mapNonEmpty!16998 (= (arr!11628 _values!549) (store mapRest!16998 mapKey!16998 mapValue!16998))))

(declare-fun b!405232 () Bool)

(assert (=> b!405232 (= e!243656 e!243659)))

(declare-fun res!233950 () Bool)

(assert (=> b!405232 (=> (not res!233950) (not e!243659))))

(assert (=> b!405232 (= res!233950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188295 mask!1025))))

(assert (=> b!405232 (= lt!188295 (array!24362 (store (arr!11627 _keys!709) i!563 k0!794) (size!11979 _keys!709)))))

(declare-fun b!405233 () Bool)

(assert (=> b!405233 (= e!243657 tp_is_empty!10251)))

(assert (= (and start!38840 res!233944) b!405221))

(assert (= (and b!405221 res!233952) b!405231))

(assert (= (and b!405231 res!233951) b!405222))

(assert (= (and b!405222 res!233948) b!405224))

(assert (= (and b!405224 res!233947) b!405230))

(assert (= (and b!405230 res!233946) b!405226))

(assert (= (and b!405226 res!233943) b!405223))

(assert (= (and b!405223 res!233945) b!405225))

(assert (= (and b!405225 res!233949) b!405232))

(assert (= (and b!405232 res!233950) b!405229))

(assert (= (and b!405228 condMapEmpty!16998) mapIsEmpty!16998))

(assert (= (and b!405228 (not condMapEmpty!16998)) mapNonEmpty!16998))

(get-info :version)

(assert (= (and mapNonEmpty!16998 ((_ is ValueCellFull!4782) mapValue!16998)) b!405233))

(assert (= (and b!405228 ((_ is ValueCellFull!4782) mapDefault!16998)) b!405227))

(assert (= start!38840 b!405228))

(declare-fun m!397725 () Bool)

(assert (=> b!405229 m!397725))

(declare-fun m!397727 () Bool)

(assert (=> b!405224 m!397727))

(declare-fun m!397729 () Bool)

(assert (=> b!405223 m!397729))

(declare-fun m!397731 () Bool)

(assert (=> b!405225 m!397731))

(declare-fun m!397733 () Bool)

(assert (=> b!405232 m!397733))

(declare-fun m!397735 () Bool)

(assert (=> b!405232 m!397735))

(declare-fun m!397737 () Bool)

(assert (=> start!38840 m!397737))

(declare-fun m!397739 () Bool)

(assert (=> start!38840 m!397739))

(declare-fun m!397741 () Bool)

(assert (=> mapNonEmpty!16998 m!397741))

(declare-fun m!397743 () Bool)

(assert (=> b!405222 m!397743))

(declare-fun m!397745 () Bool)

(assert (=> b!405226 m!397745))

(declare-fun m!397747 () Bool)

(assert (=> b!405221 m!397747))

(check-sat (not b!405221) (not b!405232) (not b!405222) (not b!405226) tp_is_empty!10251 (not b!405225) (not start!38840) (not b!405224) (not b!405229) (not mapNonEmpty!16998))
(check-sat)
