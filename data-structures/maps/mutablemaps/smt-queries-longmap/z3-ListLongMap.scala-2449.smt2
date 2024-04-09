; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38522 () Bool)

(assert start!38522)

(declare-fun b!397724 () Bool)

(declare-fun res!228527 () Bool)

(declare-fun e!240475 () Bool)

(assert (=> b!397724 (=> (not res!228527) (not e!240475))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397724 (= res!228527 (validMask!0 mask!1025))))

(declare-fun b!397725 () Bool)

(declare-fun res!228529 () Bool)

(assert (=> b!397725 (=> (not res!228529) (not e!240475))))

(declare-datatypes ((array!23749 0))(
  ( (array!23750 (arr!11321 (Array (_ BitVec 32) (_ BitVec 64))) (size!11673 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23749)

(declare-datatypes ((List!6522 0))(
  ( (Nil!6519) (Cons!6518 (h!7374 (_ BitVec 64)) (t!11704 List!6522)) )
))
(declare-fun arrayNoDuplicates!0 (array!23749 (_ BitVec 32) List!6522) Bool)

(assert (=> b!397725 (= res!228529 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6519))))

(declare-fun b!397726 () Bool)

(declare-fun e!240474 () Bool)

(declare-fun e!240472 () Bool)

(declare-fun mapRes!16521 () Bool)

(assert (=> b!397726 (= e!240474 (and e!240472 mapRes!16521))))

(declare-fun condMapEmpty!16521 () Bool)

(declare-datatypes ((V!14349 0))(
  ( (V!14350 (val!5011 Int)) )
))
(declare-datatypes ((ValueCell!4623 0))(
  ( (ValueCellFull!4623 (v!7254 V!14349)) (EmptyCell!4623) )
))
(declare-datatypes ((array!23751 0))(
  ( (array!23752 (arr!11322 (Array (_ BitVec 32) ValueCell!4623)) (size!11674 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23751)

(declare-fun mapDefault!16521 () ValueCell!4623)

(assert (=> b!397726 (= condMapEmpty!16521 (= (arr!11322 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4623)) mapDefault!16521)))))

(declare-fun b!397727 () Bool)

(declare-fun res!228534 () Bool)

(assert (=> b!397727 (=> (not res!228534) (not e!240475))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397727 (= res!228534 (or (= (select (arr!11321 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11321 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16521 () Bool)

(assert (=> mapIsEmpty!16521 mapRes!16521))

(declare-fun b!397728 () Bool)

(declare-fun res!228531 () Bool)

(assert (=> b!397728 (=> (not res!228531) (not e!240475))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397728 (= res!228531 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397729 () Bool)

(declare-fun res!228528 () Bool)

(assert (=> b!397729 (=> (not res!228528) (not e!240475))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397729 (= res!228528 (and (= (size!11674 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11673 _keys!709) (size!11674 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397730 () Bool)

(declare-fun e!240471 () Bool)

(assert (=> b!397730 (= e!240475 e!240471)))

(declare-fun res!228526 () Bool)

(assert (=> b!397730 (=> (not res!228526) (not e!240471))))

(declare-fun lt!187341 () array!23749)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23749 (_ BitVec 32)) Bool)

(assert (=> b!397730 (= res!228526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187341 mask!1025))))

(assert (=> b!397730 (= lt!187341 (array!23750 (store (arr!11321 _keys!709) i!563 k0!794) (size!11673 _keys!709)))))

(declare-fun b!397731 () Bool)

(declare-fun e!240470 () Bool)

(declare-fun tp_is_empty!9933 () Bool)

(assert (=> b!397731 (= e!240470 tp_is_empty!9933)))

(declare-fun b!397732 () Bool)

(assert (=> b!397732 (= e!240472 tp_is_empty!9933)))

(declare-fun b!397733 () Bool)

(assert (=> b!397733 (= e!240471 false)))

(declare-fun lt!187340 () Bool)

(assert (=> b!397733 (= lt!187340 (arrayNoDuplicates!0 lt!187341 #b00000000000000000000000000000000 Nil!6519))))

(declare-fun b!397734 () Bool)

(declare-fun res!228533 () Bool)

(assert (=> b!397734 (=> (not res!228533) (not e!240475))))

(assert (=> b!397734 (= res!228533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16521 () Bool)

(declare-fun tp!32316 () Bool)

(assert (=> mapNonEmpty!16521 (= mapRes!16521 (and tp!32316 e!240470))))

(declare-fun mapKey!16521 () (_ BitVec 32))

(declare-fun mapRest!16521 () (Array (_ BitVec 32) ValueCell!4623))

(declare-fun mapValue!16521 () ValueCell!4623)

(assert (=> mapNonEmpty!16521 (= (arr!11322 _values!549) (store mapRest!16521 mapKey!16521 mapValue!16521))))

(declare-fun res!228525 () Bool)

(assert (=> start!38522 (=> (not res!228525) (not e!240475))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38522 (= res!228525 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11673 _keys!709))))))

(assert (=> start!38522 e!240475))

(assert (=> start!38522 true))

(declare-fun array_inv!8288 (array!23751) Bool)

(assert (=> start!38522 (and (array_inv!8288 _values!549) e!240474)))

(declare-fun array_inv!8289 (array!23749) Bool)

(assert (=> start!38522 (array_inv!8289 _keys!709)))

(declare-fun b!397735 () Bool)

(declare-fun res!228532 () Bool)

(assert (=> b!397735 (=> (not res!228532) (not e!240475))))

(assert (=> b!397735 (= res!228532 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11673 _keys!709))))))

(declare-fun b!397736 () Bool)

(declare-fun res!228530 () Bool)

(assert (=> b!397736 (=> (not res!228530) (not e!240475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397736 (= res!228530 (validKeyInArray!0 k0!794))))

(assert (= (and start!38522 res!228525) b!397724))

(assert (= (and b!397724 res!228527) b!397729))

(assert (= (and b!397729 res!228528) b!397734))

(assert (= (and b!397734 res!228533) b!397725))

(assert (= (and b!397725 res!228529) b!397735))

(assert (= (and b!397735 res!228532) b!397736))

(assert (= (and b!397736 res!228530) b!397727))

(assert (= (and b!397727 res!228534) b!397728))

(assert (= (and b!397728 res!228531) b!397730))

(assert (= (and b!397730 res!228526) b!397733))

(assert (= (and b!397726 condMapEmpty!16521) mapIsEmpty!16521))

(assert (= (and b!397726 (not condMapEmpty!16521)) mapNonEmpty!16521))

(get-info :version)

(assert (= (and mapNonEmpty!16521 ((_ is ValueCellFull!4623) mapValue!16521)) b!397731))

(assert (= (and b!397726 ((_ is ValueCellFull!4623) mapDefault!16521)) b!397732))

(assert (= start!38522 b!397726))

(declare-fun m!392829 () Bool)

(assert (=> start!38522 m!392829))

(declare-fun m!392831 () Bool)

(assert (=> start!38522 m!392831))

(declare-fun m!392833 () Bool)

(assert (=> b!397733 m!392833))

(declare-fun m!392835 () Bool)

(assert (=> mapNonEmpty!16521 m!392835))

(declare-fun m!392837 () Bool)

(assert (=> b!397728 m!392837))

(declare-fun m!392839 () Bool)

(assert (=> b!397724 m!392839))

(declare-fun m!392841 () Bool)

(assert (=> b!397725 m!392841))

(declare-fun m!392843 () Bool)

(assert (=> b!397730 m!392843))

(declare-fun m!392845 () Bool)

(assert (=> b!397730 m!392845))

(declare-fun m!392847 () Bool)

(assert (=> b!397734 m!392847))

(declare-fun m!392849 () Bool)

(assert (=> b!397727 m!392849))

(declare-fun m!392851 () Bool)

(assert (=> b!397736 m!392851))

(check-sat (not b!397733) tp_is_empty!9933 (not start!38522) (not b!397734) (not b!397736) (not mapNonEmpty!16521) (not b!397730) (not b!397728) (not b!397724) (not b!397725))
(check-sat)
