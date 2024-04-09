; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38468 () Bool)

(assert start!38468)

(declare-fun b!396671 () Bool)

(declare-fun res!227717 () Bool)

(declare-fun e!239986 () Bool)

(assert (=> b!396671 (=> (not res!227717) (not e!239986))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23643 0))(
  ( (array!23644 (arr!11268 (Array (_ BitVec 32) (_ BitVec 64))) (size!11620 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23643)

(assert (=> b!396671 (= res!227717 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11620 _keys!709))))))

(declare-fun b!396672 () Bool)

(declare-fun res!227722 () Bool)

(assert (=> b!396672 (=> (not res!227722) (not e!239986))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396672 (= res!227722 (validMask!0 mask!1025))))

(declare-fun b!396673 () Bool)

(declare-fun res!227715 () Bool)

(assert (=> b!396673 (=> (not res!227715) (not e!239986))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396673 (= res!227715 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396674 () Bool)

(declare-fun res!227718 () Bool)

(assert (=> b!396674 (=> (not res!227718) (not e!239986))))

(declare-datatypes ((List!6500 0))(
  ( (Nil!6497) (Cons!6496 (h!7352 (_ BitVec 64)) (t!11682 List!6500)) )
))
(declare-fun arrayNoDuplicates!0 (array!23643 (_ BitVec 32) List!6500) Bool)

(assert (=> b!396674 (= res!227718 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6497))))

(declare-fun res!227719 () Bool)

(assert (=> start!38468 (=> (not res!227719) (not e!239986))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38468 (= res!227719 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11620 _keys!709))))))

(assert (=> start!38468 e!239986))

(assert (=> start!38468 true))

(declare-datatypes ((V!14277 0))(
  ( (V!14278 (val!4984 Int)) )
))
(declare-datatypes ((ValueCell!4596 0))(
  ( (ValueCellFull!4596 (v!7227 V!14277)) (EmptyCell!4596) )
))
(declare-datatypes ((array!23645 0))(
  ( (array!23646 (arr!11269 (Array (_ BitVec 32) ValueCell!4596)) (size!11621 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23645)

(declare-fun e!239989 () Bool)

(declare-fun array_inv!8250 (array!23645) Bool)

(assert (=> start!38468 (and (array_inv!8250 _values!549) e!239989)))

(declare-fun array_inv!8251 (array!23643) Bool)

(assert (=> start!38468 (array_inv!8251 _keys!709)))

(declare-fun b!396675 () Bool)

(declare-fun res!227716 () Bool)

(assert (=> b!396675 (=> (not res!227716) (not e!239986))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396675 (= res!227716 (and (= (size!11621 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11620 _keys!709) (size!11621 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396676 () Bool)

(declare-fun e!239987 () Bool)

(assert (=> b!396676 (= e!239986 e!239987)))

(declare-fun res!227721 () Bool)

(assert (=> b!396676 (=> (not res!227721) (not e!239987))))

(declare-fun lt!187179 () array!23643)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23643 (_ BitVec 32)) Bool)

(assert (=> b!396676 (= res!227721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187179 mask!1025))))

(assert (=> b!396676 (= lt!187179 (array!23644 (store (arr!11268 _keys!709) i!563 k0!794) (size!11620 _keys!709)))))

(declare-fun b!396677 () Bool)

(declare-fun res!227723 () Bool)

(assert (=> b!396677 (=> (not res!227723) (not e!239986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396677 (= res!227723 (validKeyInArray!0 k0!794))))

(declare-fun b!396678 () Bool)

(declare-fun res!227724 () Bool)

(assert (=> b!396678 (=> (not res!227724) (not e!239986))))

(assert (=> b!396678 (= res!227724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396679 () Bool)

(declare-fun e!239984 () Bool)

(declare-fun tp_is_empty!9879 () Bool)

(assert (=> b!396679 (= e!239984 tp_is_empty!9879)))

(declare-fun b!396680 () Bool)

(assert (=> b!396680 (= e!239987 false)))

(declare-fun lt!187178 () Bool)

(assert (=> b!396680 (= lt!187178 (arrayNoDuplicates!0 lt!187179 #b00000000000000000000000000000000 Nil!6497))))

(declare-fun mapNonEmpty!16440 () Bool)

(declare-fun mapRes!16440 () Bool)

(declare-fun tp!32235 () Bool)

(declare-fun e!239985 () Bool)

(assert (=> mapNonEmpty!16440 (= mapRes!16440 (and tp!32235 e!239985))))

(declare-fun mapValue!16440 () ValueCell!4596)

(declare-fun mapKey!16440 () (_ BitVec 32))

(declare-fun mapRest!16440 () (Array (_ BitVec 32) ValueCell!4596))

(assert (=> mapNonEmpty!16440 (= (arr!11269 _values!549) (store mapRest!16440 mapKey!16440 mapValue!16440))))

(declare-fun b!396681 () Bool)

(assert (=> b!396681 (= e!239989 (and e!239984 mapRes!16440))))

(declare-fun condMapEmpty!16440 () Bool)

(declare-fun mapDefault!16440 () ValueCell!4596)

(assert (=> b!396681 (= condMapEmpty!16440 (= (arr!11269 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4596)) mapDefault!16440)))))

(declare-fun mapIsEmpty!16440 () Bool)

(assert (=> mapIsEmpty!16440 mapRes!16440))

(declare-fun b!396682 () Bool)

(declare-fun res!227720 () Bool)

(assert (=> b!396682 (=> (not res!227720) (not e!239986))))

(assert (=> b!396682 (= res!227720 (or (= (select (arr!11268 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11268 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396683 () Bool)

(assert (=> b!396683 (= e!239985 tp_is_empty!9879)))

(assert (= (and start!38468 res!227719) b!396672))

(assert (= (and b!396672 res!227722) b!396675))

(assert (= (and b!396675 res!227716) b!396678))

(assert (= (and b!396678 res!227724) b!396674))

(assert (= (and b!396674 res!227718) b!396671))

(assert (= (and b!396671 res!227717) b!396677))

(assert (= (and b!396677 res!227723) b!396682))

(assert (= (and b!396682 res!227720) b!396673))

(assert (= (and b!396673 res!227715) b!396676))

(assert (= (and b!396676 res!227721) b!396680))

(assert (= (and b!396681 condMapEmpty!16440) mapIsEmpty!16440))

(assert (= (and b!396681 (not condMapEmpty!16440)) mapNonEmpty!16440))

(get-info :version)

(assert (= (and mapNonEmpty!16440 ((_ is ValueCellFull!4596) mapValue!16440)) b!396683))

(assert (= (and b!396681 ((_ is ValueCellFull!4596) mapDefault!16440)) b!396679))

(assert (= start!38468 b!396681))

(declare-fun m!392181 () Bool)

(assert (=> b!396676 m!392181))

(declare-fun m!392183 () Bool)

(assert (=> b!396676 m!392183))

(declare-fun m!392185 () Bool)

(assert (=> b!396682 m!392185))

(declare-fun m!392187 () Bool)

(assert (=> b!396673 m!392187))

(declare-fun m!392189 () Bool)

(assert (=> b!396674 m!392189))

(declare-fun m!392191 () Bool)

(assert (=> start!38468 m!392191))

(declare-fun m!392193 () Bool)

(assert (=> start!38468 m!392193))

(declare-fun m!392195 () Bool)

(assert (=> b!396672 m!392195))

(declare-fun m!392197 () Bool)

(assert (=> b!396680 m!392197))

(declare-fun m!392199 () Bool)

(assert (=> b!396677 m!392199))

(declare-fun m!392201 () Bool)

(assert (=> b!396678 m!392201))

(declare-fun m!392203 () Bool)

(assert (=> mapNonEmpty!16440 m!392203))

(check-sat (not b!396680) (not b!396676) (not b!396678) (not start!38468) (not b!396672) (not mapNonEmpty!16440) (not b!396677) tp_is_empty!9879 (not b!396674) (not b!396673))
(check-sat)
