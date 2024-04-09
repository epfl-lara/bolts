; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38510 () Bool)

(assert start!38510)

(declare-fun b!397490 () Bool)

(declare-fun res!228351 () Bool)

(declare-fun e!240363 () Bool)

(assert (=> b!397490 (=> (not res!228351) (not e!240363))))

(declare-datatypes ((array!23725 0))(
  ( (array!23726 (arr!11309 (Array (_ BitVec 32) (_ BitVec 64))) (size!11661 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23725)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397490 (= res!228351 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397491 () Bool)

(declare-fun res!228349 () Bool)

(assert (=> b!397491 (=> (not res!228349) (not e!240363))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397491 (= res!228349 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11661 _keys!709))))))

(declare-fun b!397492 () Bool)

(declare-fun res!228346 () Bool)

(assert (=> b!397492 (=> (not res!228346) (not e!240363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397492 (= res!228346 (validKeyInArray!0 k0!794))))

(declare-fun res!228352 () Bool)

(assert (=> start!38510 (=> (not res!228352) (not e!240363))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38510 (= res!228352 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11661 _keys!709))))))

(assert (=> start!38510 e!240363))

(assert (=> start!38510 true))

(declare-datatypes ((V!14333 0))(
  ( (V!14334 (val!5005 Int)) )
))
(declare-datatypes ((ValueCell!4617 0))(
  ( (ValueCellFull!4617 (v!7248 V!14333)) (EmptyCell!4617) )
))
(declare-datatypes ((array!23727 0))(
  ( (array!23728 (arr!11310 (Array (_ BitVec 32) ValueCell!4617)) (size!11662 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23727)

(declare-fun e!240366 () Bool)

(declare-fun array_inv!8282 (array!23727) Bool)

(assert (=> start!38510 (and (array_inv!8282 _values!549) e!240366)))

(declare-fun array_inv!8283 (array!23725) Bool)

(assert (=> start!38510 (array_inv!8283 _keys!709)))

(declare-fun b!397493 () Bool)

(declare-fun e!240362 () Bool)

(declare-fun mapRes!16503 () Bool)

(assert (=> b!397493 (= e!240366 (and e!240362 mapRes!16503))))

(declare-fun condMapEmpty!16503 () Bool)

(declare-fun mapDefault!16503 () ValueCell!4617)

(assert (=> b!397493 (= condMapEmpty!16503 (= (arr!11310 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4617)) mapDefault!16503)))))

(declare-fun b!397494 () Bool)

(declare-fun res!228345 () Bool)

(assert (=> b!397494 (=> (not res!228345) (not e!240363))))

(assert (=> b!397494 (= res!228345 (or (= (select (arr!11309 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11309 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16503 () Bool)

(declare-fun tp!32298 () Bool)

(declare-fun e!240365 () Bool)

(assert (=> mapNonEmpty!16503 (= mapRes!16503 (and tp!32298 e!240365))))

(declare-fun mapRest!16503 () (Array (_ BitVec 32) ValueCell!4617))

(declare-fun mapValue!16503 () ValueCell!4617)

(declare-fun mapKey!16503 () (_ BitVec 32))

(assert (=> mapNonEmpty!16503 (= (arr!11310 _values!549) (store mapRest!16503 mapKey!16503 mapValue!16503))))

(declare-fun b!397495 () Bool)

(declare-fun res!228350 () Bool)

(assert (=> b!397495 (=> (not res!228350) (not e!240363))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!397495 (= res!228350 (and (= (size!11662 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11661 _keys!709) (size!11662 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397496 () Bool)

(declare-fun e!240367 () Bool)

(assert (=> b!397496 (= e!240367 false)))

(declare-fun lt!187304 () Bool)

(declare-fun lt!187305 () array!23725)

(declare-datatypes ((List!6517 0))(
  ( (Nil!6514) (Cons!6513 (h!7369 (_ BitVec 64)) (t!11699 List!6517)) )
))
(declare-fun arrayNoDuplicates!0 (array!23725 (_ BitVec 32) List!6517) Bool)

(assert (=> b!397496 (= lt!187304 (arrayNoDuplicates!0 lt!187305 #b00000000000000000000000000000000 Nil!6514))))

(declare-fun mapIsEmpty!16503 () Bool)

(assert (=> mapIsEmpty!16503 mapRes!16503))

(declare-fun b!397497 () Bool)

(declare-fun res!228347 () Bool)

(assert (=> b!397497 (=> (not res!228347) (not e!240363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397497 (= res!228347 (validMask!0 mask!1025))))

(declare-fun b!397498 () Bool)

(declare-fun tp_is_empty!9921 () Bool)

(assert (=> b!397498 (= e!240365 tp_is_empty!9921)))

(declare-fun b!397499 () Bool)

(declare-fun res!228353 () Bool)

(assert (=> b!397499 (=> (not res!228353) (not e!240363))))

(assert (=> b!397499 (= res!228353 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6514))))

(declare-fun b!397500 () Bool)

(assert (=> b!397500 (= e!240362 tp_is_empty!9921)))

(declare-fun b!397501 () Bool)

(assert (=> b!397501 (= e!240363 e!240367)))

(declare-fun res!228348 () Bool)

(assert (=> b!397501 (=> (not res!228348) (not e!240367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23725 (_ BitVec 32)) Bool)

(assert (=> b!397501 (= res!228348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187305 mask!1025))))

(assert (=> b!397501 (= lt!187305 (array!23726 (store (arr!11309 _keys!709) i!563 k0!794) (size!11661 _keys!709)))))

(declare-fun b!397502 () Bool)

(declare-fun res!228354 () Bool)

(assert (=> b!397502 (=> (not res!228354) (not e!240363))))

(assert (=> b!397502 (= res!228354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38510 res!228352) b!397497))

(assert (= (and b!397497 res!228347) b!397495))

(assert (= (and b!397495 res!228350) b!397502))

(assert (= (and b!397502 res!228354) b!397499))

(assert (= (and b!397499 res!228353) b!397491))

(assert (= (and b!397491 res!228349) b!397492))

(assert (= (and b!397492 res!228346) b!397494))

(assert (= (and b!397494 res!228345) b!397490))

(assert (= (and b!397490 res!228351) b!397501))

(assert (= (and b!397501 res!228348) b!397496))

(assert (= (and b!397493 condMapEmpty!16503) mapIsEmpty!16503))

(assert (= (and b!397493 (not condMapEmpty!16503)) mapNonEmpty!16503))

(get-info :version)

(assert (= (and mapNonEmpty!16503 ((_ is ValueCellFull!4617) mapValue!16503)) b!397498))

(assert (= (and b!397493 ((_ is ValueCellFull!4617) mapDefault!16503)) b!397500))

(assert (= start!38510 b!397493))

(declare-fun m!392685 () Bool)

(assert (=> b!397494 m!392685))

(declare-fun m!392687 () Bool)

(assert (=> start!38510 m!392687))

(declare-fun m!392689 () Bool)

(assert (=> start!38510 m!392689))

(declare-fun m!392691 () Bool)

(assert (=> mapNonEmpty!16503 m!392691))

(declare-fun m!392693 () Bool)

(assert (=> b!397502 m!392693))

(declare-fun m!392695 () Bool)

(assert (=> b!397496 m!392695))

(declare-fun m!392697 () Bool)

(assert (=> b!397492 m!392697))

(declare-fun m!392699 () Bool)

(assert (=> b!397497 m!392699))

(declare-fun m!392701 () Bool)

(assert (=> b!397501 m!392701))

(declare-fun m!392703 () Bool)

(assert (=> b!397501 m!392703))

(declare-fun m!392705 () Bool)

(assert (=> b!397490 m!392705))

(declare-fun m!392707 () Bool)

(assert (=> b!397499 m!392707))

(check-sat tp_is_empty!9921 (not b!397501) (not b!397497) (not b!397496) (not b!397502) (not mapNonEmpty!16503) (not b!397490) (not start!38510) (not b!397499) (not b!397492))
(check-sat)
