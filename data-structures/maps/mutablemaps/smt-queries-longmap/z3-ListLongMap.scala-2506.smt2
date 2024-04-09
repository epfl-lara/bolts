; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38864 () Bool)

(assert start!38864)

(declare-fun b!405689 () Bool)

(declare-fun e!243877 () Bool)

(declare-fun tp_is_empty!10275 () Bool)

(assert (=> b!405689 (= e!243877 tp_is_empty!10275)))

(declare-fun b!405690 () Bool)

(declare-fun res!234307 () Bool)

(declare-fun e!243875 () Bool)

(assert (=> b!405690 (=> (not res!234307) (not e!243875))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405690 (= res!234307 (validKeyInArray!0 k0!794))))

(declare-fun b!405691 () Bool)

(declare-fun e!243876 () Bool)

(declare-fun e!243873 () Bool)

(declare-fun mapRes!17034 () Bool)

(assert (=> b!405691 (= e!243876 (and e!243873 mapRes!17034))))

(declare-fun condMapEmpty!17034 () Bool)

(declare-datatypes ((V!14805 0))(
  ( (V!14806 (val!5182 Int)) )
))
(declare-datatypes ((ValueCell!4794 0))(
  ( (ValueCellFull!4794 (v!7425 V!14805)) (EmptyCell!4794) )
))
(declare-datatypes ((array!24407 0))(
  ( (array!24408 (arr!11650 (Array (_ BitVec 32) ValueCell!4794)) (size!12002 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24407)

(declare-fun mapDefault!17034 () ValueCell!4794)

(assert (=> b!405691 (= condMapEmpty!17034 (= (arr!11650 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4794)) mapDefault!17034)))))

(declare-fun b!405692 () Bool)

(declare-fun res!234312 () Bool)

(assert (=> b!405692 (=> (not res!234312) (not e!243875))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405692 (= res!234312 (validMask!0 mask!1025))))

(declare-fun b!405693 () Bool)

(declare-fun res!234305 () Bool)

(assert (=> b!405693 (=> (not res!234305) (not e!243875))))

(declare-datatypes ((array!24409 0))(
  ( (array!24410 (arr!11651 (Array (_ BitVec 32) (_ BitVec 64))) (size!12003 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24409)

(declare-fun arrayContainsKey!0 (array!24409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405693 (= res!234305 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405694 () Bool)

(declare-fun res!234310 () Bool)

(assert (=> b!405694 (=> (not res!234310) (not e!243875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24409 (_ BitVec 32)) Bool)

(assert (=> b!405694 (= res!234310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405695 () Bool)

(declare-fun res!234306 () Bool)

(assert (=> b!405695 (=> (not res!234306) (not e!243875))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405695 (= res!234306 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12003 _keys!709))))))

(declare-fun mapIsEmpty!17034 () Bool)

(assert (=> mapIsEmpty!17034 mapRes!17034))

(declare-fun b!405696 () Bool)

(declare-fun e!243872 () Bool)

(assert (=> b!405696 (= e!243872 false)))

(declare-fun lt!188366 () Bool)

(declare-fun lt!188367 () array!24409)

(declare-datatypes ((List!6749 0))(
  ( (Nil!6746) (Cons!6745 (h!7601 (_ BitVec 64)) (t!11931 List!6749)) )
))
(declare-fun arrayNoDuplicates!0 (array!24409 (_ BitVec 32) List!6749) Bool)

(assert (=> b!405696 (= lt!188366 (arrayNoDuplicates!0 lt!188367 #b00000000000000000000000000000000 Nil!6746))))

(declare-fun b!405697 () Bool)

(declare-fun res!234311 () Bool)

(assert (=> b!405697 (=> (not res!234311) (not e!243875))))

(assert (=> b!405697 (= res!234311 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6746))))

(declare-fun res!234303 () Bool)

(assert (=> start!38864 (=> (not res!234303) (not e!243875))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38864 (= res!234303 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12003 _keys!709))))))

(assert (=> start!38864 e!243875))

(assert (=> start!38864 true))

(declare-fun array_inv!8512 (array!24407) Bool)

(assert (=> start!38864 (and (array_inv!8512 _values!549) e!243876)))

(declare-fun array_inv!8513 (array!24409) Bool)

(assert (=> start!38864 (array_inv!8513 _keys!709)))

(declare-fun b!405698 () Bool)

(declare-fun res!234308 () Bool)

(assert (=> b!405698 (=> (not res!234308) (not e!243875))))

(assert (=> b!405698 (= res!234308 (or (= (select (arr!11651 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11651 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405699 () Bool)

(declare-fun res!234304 () Bool)

(assert (=> b!405699 (=> (not res!234304) (not e!243875))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405699 (= res!234304 (and (= (size!12002 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12003 _keys!709) (size!12002 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405700 () Bool)

(assert (=> b!405700 (= e!243875 e!243872)))

(declare-fun res!234309 () Bool)

(assert (=> b!405700 (=> (not res!234309) (not e!243872))))

(assert (=> b!405700 (= res!234309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188367 mask!1025))))

(assert (=> b!405700 (= lt!188367 (array!24410 (store (arr!11651 _keys!709) i!563 k0!794) (size!12003 _keys!709)))))

(declare-fun mapNonEmpty!17034 () Bool)

(declare-fun tp!33153 () Bool)

(assert (=> mapNonEmpty!17034 (= mapRes!17034 (and tp!33153 e!243877))))

(declare-fun mapValue!17034 () ValueCell!4794)

(declare-fun mapKey!17034 () (_ BitVec 32))

(declare-fun mapRest!17034 () (Array (_ BitVec 32) ValueCell!4794))

(assert (=> mapNonEmpty!17034 (= (arr!11650 _values!549) (store mapRest!17034 mapKey!17034 mapValue!17034))))

(declare-fun b!405701 () Bool)

(assert (=> b!405701 (= e!243873 tp_is_empty!10275)))

(assert (= (and start!38864 res!234303) b!405692))

(assert (= (and b!405692 res!234312) b!405699))

(assert (= (and b!405699 res!234304) b!405694))

(assert (= (and b!405694 res!234310) b!405697))

(assert (= (and b!405697 res!234311) b!405695))

(assert (= (and b!405695 res!234306) b!405690))

(assert (= (and b!405690 res!234307) b!405698))

(assert (= (and b!405698 res!234308) b!405693))

(assert (= (and b!405693 res!234305) b!405700))

(assert (= (and b!405700 res!234309) b!405696))

(assert (= (and b!405691 condMapEmpty!17034) mapIsEmpty!17034))

(assert (= (and b!405691 (not condMapEmpty!17034)) mapNonEmpty!17034))

(get-info :version)

(assert (= (and mapNonEmpty!17034 ((_ is ValueCellFull!4794) mapValue!17034)) b!405689))

(assert (= (and b!405691 ((_ is ValueCellFull!4794) mapDefault!17034)) b!405701))

(assert (= start!38864 b!405691))

(declare-fun m!398013 () Bool)

(assert (=> mapNonEmpty!17034 m!398013))

(declare-fun m!398015 () Bool)

(assert (=> b!405696 m!398015))

(declare-fun m!398017 () Bool)

(assert (=> b!405698 m!398017))

(declare-fun m!398019 () Bool)

(assert (=> b!405693 m!398019))

(declare-fun m!398021 () Bool)

(assert (=> start!38864 m!398021))

(declare-fun m!398023 () Bool)

(assert (=> start!38864 m!398023))

(declare-fun m!398025 () Bool)

(assert (=> b!405690 m!398025))

(declare-fun m!398027 () Bool)

(assert (=> b!405697 m!398027))

(declare-fun m!398029 () Bool)

(assert (=> b!405700 m!398029))

(declare-fun m!398031 () Bool)

(assert (=> b!405700 m!398031))

(declare-fun m!398033 () Bool)

(assert (=> b!405694 m!398033))

(declare-fun m!398035 () Bool)

(assert (=> b!405692 m!398035))

(check-sat (not b!405692) (not b!405700) tp_is_empty!10275 (not b!405697) (not b!405694) (not b!405696) (not b!405690) (not start!38864) (not mapNonEmpty!17034) (not b!405693))
(check-sat)
