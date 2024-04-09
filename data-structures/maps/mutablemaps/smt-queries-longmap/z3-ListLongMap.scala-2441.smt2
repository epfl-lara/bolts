; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38474 () Bool)

(assert start!38474)

(declare-fun b!396788 () Bool)

(declare-fun res!227809 () Bool)

(declare-fun e!240038 () Bool)

(assert (=> b!396788 (=> (not res!227809) (not e!240038))))

(declare-datatypes ((array!23655 0))(
  ( (array!23656 (arr!11274 (Array (_ BitVec 32) (_ BitVec 64))) (size!11626 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23655)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396788 (= res!227809 (or (= (select (arr!11274 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11274 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396789 () Bool)

(declare-fun res!227814 () Bool)

(assert (=> b!396789 (=> (not res!227814) (not e!240038))))

(declare-datatypes ((List!6503 0))(
  ( (Nil!6500) (Cons!6499 (h!7355 (_ BitVec 64)) (t!11685 List!6503)) )
))
(declare-fun arrayNoDuplicates!0 (array!23655 (_ BitVec 32) List!6503) Bool)

(assert (=> b!396789 (= res!227814 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6500))))

(declare-fun b!396790 () Bool)

(declare-fun res!227807 () Bool)

(assert (=> b!396790 (=> (not res!227807) (not e!240038))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396790 (= res!227807 (validKeyInArray!0 k0!794))))

(declare-fun res!227810 () Bool)

(assert (=> start!38474 (=> (not res!227810) (not e!240038))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38474 (= res!227810 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11626 _keys!709))))))

(assert (=> start!38474 e!240038))

(assert (=> start!38474 true))

(declare-datatypes ((V!14285 0))(
  ( (V!14286 (val!4987 Int)) )
))
(declare-datatypes ((ValueCell!4599 0))(
  ( (ValueCellFull!4599 (v!7230 V!14285)) (EmptyCell!4599) )
))
(declare-datatypes ((array!23657 0))(
  ( (array!23658 (arr!11275 (Array (_ BitVec 32) ValueCell!4599)) (size!11627 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23657)

(declare-fun e!240039 () Bool)

(declare-fun array_inv!8254 (array!23657) Bool)

(assert (=> start!38474 (and (array_inv!8254 _values!549) e!240039)))

(declare-fun array_inv!8255 (array!23655) Bool)

(assert (=> start!38474 (array_inv!8255 _keys!709)))

(declare-fun b!396791 () Bool)

(declare-fun res!227813 () Bool)

(assert (=> b!396791 (=> (not res!227813) (not e!240038))))

(assert (=> b!396791 (= res!227813 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11626 _keys!709))))))

(declare-fun b!396792 () Bool)

(declare-fun res!227806 () Bool)

(assert (=> b!396792 (=> (not res!227806) (not e!240038))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!396792 (= res!227806 (and (= (size!11627 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11626 _keys!709) (size!11627 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396793 () Bool)

(declare-fun e!240040 () Bool)

(declare-fun tp_is_empty!9885 () Bool)

(assert (=> b!396793 (= e!240040 tp_is_empty!9885)))

(declare-fun b!396794 () Bool)

(declare-fun mapRes!16449 () Bool)

(assert (=> b!396794 (= e!240039 (and e!240040 mapRes!16449))))

(declare-fun condMapEmpty!16449 () Bool)

(declare-fun mapDefault!16449 () ValueCell!4599)

(assert (=> b!396794 (= condMapEmpty!16449 (= (arr!11275 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4599)) mapDefault!16449)))))

(declare-fun mapNonEmpty!16449 () Bool)

(declare-fun tp!32244 () Bool)

(declare-fun e!240041 () Bool)

(assert (=> mapNonEmpty!16449 (= mapRes!16449 (and tp!32244 e!240041))))

(declare-fun mapValue!16449 () ValueCell!4599)

(declare-fun mapRest!16449 () (Array (_ BitVec 32) ValueCell!4599))

(declare-fun mapKey!16449 () (_ BitVec 32))

(assert (=> mapNonEmpty!16449 (= (arr!11275 _values!549) (store mapRest!16449 mapKey!16449 mapValue!16449))))

(declare-fun mapIsEmpty!16449 () Bool)

(assert (=> mapIsEmpty!16449 mapRes!16449))

(declare-fun b!396795 () Bool)

(declare-fun res!227808 () Bool)

(assert (=> b!396795 (=> (not res!227808) (not e!240038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396795 (= res!227808 (validMask!0 mask!1025))))

(declare-fun b!396796 () Bool)

(declare-fun e!240042 () Bool)

(assert (=> b!396796 (= e!240042 false)))

(declare-fun lt!187196 () Bool)

(declare-fun lt!187197 () array!23655)

(assert (=> b!396796 (= lt!187196 (arrayNoDuplicates!0 lt!187197 #b00000000000000000000000000000000 Nil!6500))))

(declare-fun b!396797 () Bool)

(declare-fun res!227812 () Bool)

(assert (=> b!396797 (=> (not res!227812) (not e!240038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23655 (_ BitVec 32)) Bool)

(assert (=> b!396797 (= res!227812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396798 () Bool)

(assert (=> b!396798 (= e!240038 e!240042)))

(declare-fun res!227805 () Bool)

(assert (=> b!396798 (=> (not res!227805) (not e!240042))))

(assert (=> b!396798 (= res!227805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187197 mask!1025))))

(assert (=> b!396798 (= lt!187197 (array!23656 (store (arr!11274 _keys!709) i!563 k0!794) (size!11626 _keys!709)))))

(declare-fun b!396799 () Bool)

(declare-fun res!227811 () Bool)

(assert (=> b!396799 (=> (not res!227811) (not e!240038))))

(declare-fun arrayContainsKey!0 (array!23655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396799 (= res!227811 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396800 () Bool)

(assert (=> b!396800 (= e!240041 tp_is_empty!9885)))

(assert (= (and start!38474 res!227810) b!396795))

(assert (= (and b!396795 res!227808) b!396792))

(assert (= (and b!396792 res!227806) b!396797))

(assert (= (and b!396797 res!227812) b!396789))

(assert (= (and b!396789 res!227814) b!396791))

(assert (= (and b!396791 res!227813) b!396790))

(assert (= (and b!396790 res!227807) b!396788))

(assert (= (and b!396788 res!227809) b!396799))

(assert (= (and b!396799 res!227811) b!396798))

(assert (= (and b!396798 res!227805) b!396796))

(assert (= (and b!396794 condMapEmpty!16449) mapIsEmpty!16449))

(assert (= (and b!396794 (not condMapEmpty!16449)) mapNonEmpty!16449))

(get-info :version)

(assert (= (and mapNonEmpty!16449 ((_ is ValueCellFull!4599) mapValue!16449)) b!396800))

(assert (= (and b!396794 ((_ is ValueCellFull!4599) mapDefault!16449)) b!396793))

(assert (= start!38474 b!396794))

(declare-fun m!392253 () Bool)

(assert (=> mapNonEmpty!16449 m!392253))

(declare-fun m!392255 () Bool)

(assert (=> b!396796 m!392255))

(declare-fun m!392257 () Bool)

(assert (=> start!38474 m!392257))

(declare-fun m!392259 () Bool)

(assert (=> start!38474 m!392259))

(declare-fun m!392261 () Bool)

(assert (=> b!396790 m!392261))

(declare-fun m!392263 () Bool)

(assert (=> b!396798 m!392263))

(declare-fun m!392265 () Bool)

(assert (=> b!396798 m!392265))

(declare-fun m!392267 () Bool)

(assert (=> b!396788 m!392267))

(declare-fun m!392269 () Bool)

(assert (=> b!396789 m!392269))

(declare-fun m!392271 () Bool)

(assert (=> b!396797 m!392271))

(declare-fun m!392273 () Bool)

(assert (=> b!396795 m!392273))

(declare-fun m!392275 () Bool)

(assert (=> b!396799 m!392275))

(check-sat (not b!396797) (not b!396789) tp_is_empty!9885 (not b!396795) (not start!38474) (not b!396790) (not b!396799) (not b!396798) (not b!396796) (not mapNonEmpty!16449))
(check-sat)
