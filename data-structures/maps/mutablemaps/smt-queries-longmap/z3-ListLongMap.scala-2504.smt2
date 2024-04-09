; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38852 () Bool)

(assert start!38852)

(declare-fun b!405455 () Bool)

(declare-fun res!234123 () Bool)

(declare-fun e!243768 () Bool)

(assert (=> b!405455 (=> (not res!234123) (not e!243768))))

(declare-datatypes ((array!24385 0))(
  ( (array!24386 (arr!11639 (Array (_ BitVec 32) (_ BitVec 64))) (size!11991 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24385)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405455 (= res!234123 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405456 () Bool)

(declare-fun e!243765 () Bool)

(assert (=> b!405456 (= e!243765 false)))

(declare-fun lt!188330 () Bool)

(declare-fun lt!188331 () array!24385)

(declare-datatypes ((List!6745 0))(
  ( (Nil!6742) (Cons!6741 (h!7597 (_ BitVec 64)) (t!11927 List!6745)) )
))
(declare-fun arrayNoDuplicates!0 (array!24385 (_ BitVec 32) List!6745) Bool)

(assert (=> b!405456 (= lt!188330 (arrayNoDuplicates!0 lt!188331 #b00000000000000000000000000000000 Nil!6742))))

(declare-fun mapNonEmpty!17016 () Bool)

(declare-fun mapRes!17016 () Bool)

(declare-fun tp!33135 () Bool)

(declare-fun e!243767 () Bool)

(assert (=> mapNonEmpty!17016 (= mapRes!17016 (and tp!33135 e!243767))))

(declare-datatypes ((V!14789 0))(
  ( (V!14790 (val!5176 Int)) )
))
(declare-datatypes ((ValueCell!4788 0))(
  ( (ValueCellFull!4788 (v!7419 V!14789)) (EmptyCell!4788) )
))
(declare-fun mapValue!17016 () ValueCell!4788)

(declare-datatypes ((array!24387 0))(
  ( (array!24388 (arr!11640 (Array (_ BitVec 32) ValueCell!4788)) (size!11992 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24387)

(declare-fun mapKey!17016 () (_ BitVec 32))

(declare-fun mapRest!17016 () (Array (_ BitVec 32) ValueCell!4788))

(assert (=> mapNonEmpty!17016 (= (arr!11640 _values!549) (store mapRest!17016 mapKey!17016 mapValue!17016))))

(declare-fun b!405457 () Bool)

(declare-fun e!243769 () Bool)

(declare-fun tp_is_empty!10263 () Bool)

(assert (=> b!405457 (= e!243769 tp_is_empty!10263)))

(declare-fun b!405458 () Bool)

(assert (=> b!405458 (= e!243768 e!243765)))

(declare-fun res!234124 () Bool)

(assert (=> b!405458 (=> (not res!234124) (not e!243765))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24385 (_ BitVec 32)) Bool)

(assert (=> b!405458 (= res!234124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188331 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405458 (= lt!188331 (array!24386 (store (arr!11639 _keys!709) i!563 k0!794) (size!11991 _keys!709)))))

(declare-fun b!405459 () Bool)

(declare-fun res!234126 () Bool)

(assert (=> b!405459 (=> (not res!234126) (not e!243768))))

(assert (=> b!405459 (= res!234126 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11991 _keys!709))))))

(declare-fun b!405460 () Bool)

(declare-fun e!243766 () Bool)

(assert (=> b!405460 (= e!243766 (and e!243769 mapRes!17016))))

(declare-fun condMapEmpty!17016 () Bool)

(declare-fun mapDefault!17016 () ValueCell!4788)

(assert (=> b!405460 (= condMapEmpty!17016 (= (arr!11640 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4788)) mapDefault!17016)))))

(declare-fun b!405461 () Bool)

(declare-fun res!234130 () Bool)

(assert (=> b!405461 (=> (not res!234130) (not e!243768))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405461 (= res!234130 (and (= (size!11992 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11991 _keys!709) (size!11992 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17016 () Bool)

(assert (=> mapIsEmpty!17016 mapRes!17016))

(declare-fun b!405463 () Bool)

(declare-fun res!234128 () Bool)

(assert (=> b!405463 (=> (not res!234128) (not e!243768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405463 (= res!234128 (validKeyInArray!0 k0!794))))

(declare-fun b!405464 () Bool)

(assert (=> b!405464 (= e!243767 tp_is_empty!10263)))

(declare-fun b!405462 () Bool)

(declare-fun res!234127 () Bool)

(assert (=> b!405462 (=> (not res!234127) (not e!243768))))

(assert (=> b!405462 (= res!234127 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6742))))

(declare-fun res!234125 () Bool)

(assert (=> start!38852 (=> (not res!234125) (not e!243768))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38852 (= res!234125 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11991 _keys!709))))))

(assert (=> start!38852 e!243768))

(assert (=> start!38852 true))

(declare-fun array_inv!8504 (array!24387) Bool)

(assert (=> start!38852 (and (array_inv!8504 _values!549) e!243766)))

(declare-fun array_inv!8505 (array!24385) Bool)

(assert (=> start!38852 (array_inv!8505 _keys!709)))

(declare-fun b!405465 () Bool)

(declare-fun res!234132 () Bool)

(assert (=> b!405465 (=> (not res!234132) (not e!243768))))

(assert (=> b!405465 (= res!234132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405466 () Bool)

(declare-fun res!234129 () Bool)

(assert (=> b!405466 (=> (not res!234129) (not e!243768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405466 (= res!234129 (validMask!0 mask!1025))))

(declare-fun b!405467 () Bool)

(declare-fun res!234131 () Bool)

(assert (=> b!405467 (=> (not res!234131) (not e!243768))))

(assert (=> b!405467 (= res!234131 (or (= (select (arr!11639 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11639 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38852 res!234125) b!405466))

(assert (= (and b!405466 res!234129) b!405461))

(assert (= (and b!405461 res!234130) b!405465))

(assert (= (and b!405465 res!234132) b!405462))

(assert (= (and b!405462 res!234127) b!405459))

(assert (= (and b!405459 res!234126) b!405463))

(assert (= (and b!405463 res!234128) b!405467))

(assert (= (and b!405467 res!234131) b!405455))

(assert (= (and b!405455 res!234123) b!405458))

(assert (= (and b!405458 res!234124) b!405456))

(assert (= (and b!405460 condMapEmpty!17016) mapIsEmpty!17016))

(assert (= (and b!405460 (not condMapEmpty!17016)) mapNonEmpty!17016))

(get-info :version)

(assert (= (and mapNonEmpty!17016 ((_ is ValueCellFull!4788) mapValue!17016)) b!405464))

(assert (= (and b!405460 ((_ is ValueCellFull!4788) mapDefault!17016)) b!405457))

(assert (= start!38852 b!405460))

(declare-fun m!397869 () Bool)

(assert (=> b!405455 m!397869))

(declare-fun m!397871 () Bool)

(assert (=> b!405458 m!397871))

(declare-fun m!397873 () Bool)

(assert (=> b!405458 m!397873))

(declare-fun m!397875 () Bool)

(assert (=> b!405467 m!397875))

(declare-fun m!397877 () Bool)

(assert (=> b!405462 m!397877))

(declare-fun m!397879 () Bool)

(assert (=> b!405456 m!397879))

(declare-fun m!397881 () Bool)

(assert (=> mapNonEmpty!17016 m!397881))

(declare-fun m!397883 () Bool)

(assert (=> b!405463 m!397883))

(declare-fun m!397885 () Bool)

(assert (=> b!405465 m!397885))

(declare-fun m!397887 () Bool)

(assert (=> b!405466 m!397887))

(declare-fun m!397889 () Bool)

(assert (=> start!38852 m!397889))

(declare-fun m!397891 () Bool)

(assert (=> start!38852 m!397891))

(check-sat tp_is_empty!10263 (not b!405462) (not start!38852) (not b!405465) (not mapNonEmpty!17016) (not b!405458) (not b!405463) (not b!405455) (not b!405466) (not b!405456))
(check-sat)
