; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39026 () Bool)

(assert start!39026)

(declare-fun b!408848 () Bool)

(declare-fun res!236736 () Bool)

(declare-fun e!245334 () Bool)

(assert (=> b!408848 (=> (not res!236736) (not e!245334))))

(declare-datatypes ((array!24727 0))(
  ( (array!24728 (arr!11810 (Array (_ BitVec 32) (_ BitVec 64))) (size!12162 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24727)

(declare-datatypes ((List!6818 0))(
  ( (Nil!6815) (Cons!6814 (h!7670 (_ BitVec 64)) (t!12000 List!6818)) )
))
(declare-fun arrayNoDuplicates!0 (array!24727 (_ BitVec 32) List!6818) Bool)

(assert (=> b!408848 (= res!236736 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6815))))

(declare-fun b!408849 () Bool)

(declare-fun res!236741 () Bool)

(assert (=> b!408849 (=> (not res!236741) (not e!245334))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408849 (= res!236741 (validKeyInArray!0 k0!794))))

(declare-fun b!408850 () Bool)

(declare-fun res!236738 () Bool)

(assert (=> b!408850 (=> (not res!236738) (not e!245334))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408850 (= res!236738 (or (= (select (arr!11810 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11810 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!236734 () Bool)

(assert (=> start!39026 (=> (not res!236734) (not e!245334))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39026 (= res!236734 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12162 _keys!709))))))

(assert (=> start!39026 e!245334))

(assert (=> start!39026 true))

(declare-datatypes ((V!15021 0))(
  ( (V!15022 (val!5263 Int)) )
))
(declare-datatypes ((ValueCell!4875 0))(
  ( (ValueCellFull!4875 (v!7506 V!15021)) (EmptyCell!4875) )
))
(declare-datatypes ((array!24729 0))(
  ( (array!24730 (arr!11811 (Array (_ BitVec 32) ValueCell!4875)) (size!12163 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24729)

(declare-fun e!245330 () Bool)

(declare-fun array_inv!8624 (array!24729) Bool)

(assert (=> start!39026 (and (array_inv!8624 _values!549) e!245330)))

(declare-fun array_inv!8625 (array!24727) Bool)

(assert (=> start!39026 (array_inv!8625 _keys!709)))

(declare-fun b!408851 () Bool)

(declare-fun e!245335 () Bool)

(assert (=> b!408851 (= e!245335 false)))

(declare-fun lt!188852 () Bool)

(declare-fun lt!188853 () array!24727)

(assert (=> b!408851 (= lt!188852 (arrayNoDuplicates!0 lt!188853 #b00000000000000000000000000000000 Nil!6815))))

(declare-fun b!408852 () Bool)

(declare-fun res!236742 () Bool)

(assert (=> b!408852 (=> (not res!236742) (not e!245334))))

(assert (=> b!408852 (= res!236742 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12162 _keys!709))))))

(declare-fun mapNonEmpty!17277 () Bool)

(declare-fun mapRes!17277 () Bool)

(declare-fun tp!33396 () Bool)

(declare-fun e!245332 () Bool)

(assert (=> mapNonEmpty!17277 (= mapRes!17277 (and tp!33396 e!245332))))

(declare-fun mapKey!17277 () (_ BitVec 32))

(declare-fun mapRest!17277 () (Array (_ BitVec 32) ValueCell!4875))

(declare-fun mapValue!17277 () ValueCell!4875)

(assert (=> mapNonEmpty!17277 (= (arr!11811 _values!549) (store mapRest!17277 mapKey!17277 mapValue!17277))))

(declare-fun b!408853 () Bool)

(assert (=> b!408853 (= e!245334 e!245335)))

(declare-fun res!236735 () Bool)

(assert (=> b!408853 (=> (not res!236735) (not e!245335))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24727 (_ BitVec 32)) Bool)

(assert (=> b!408853 (= res!236735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188853 mask!1025))))

(assert (=> b!408853 (= lt!188853 (array!24728 (store (arr!11810 _keys!709) i!563 k0!794) (size!12162 _keys!709)))))

(declare-fun b!408854 () Bool)

(declare-fun res!236737 () Bool)

(assert (=> b!408854 (=> (not res!236737) (not e!245334))))

(declare-fun arrayContainsKey!0 (array!24727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408854 (= res!236737 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408855 () Bool)

(declare-fun e!245333 () Bool)

(declare-fun tp_is_empty!10437 () Bool)

(assert (=> b!408855 (= e!245333 tp_is_empty!10437)))

(declare-fun mapIsEmpty!17277 () Bool)

(assert (=> mapIsEmpty!17277 mapRes!17277))

(declare-fun b!408856 () Bool)

(declare-fun res!236733 () Bool)

(assert (=> b!408856 (=> (not res!236733) (not e!245334))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408856 (= res!236733 (and (= (size!12163 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12162 _keys!709) (size!12163 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408857 () Bool)

(assert (=> b!408857 (= e!245330 (and e!245333 mapRes!17277))))

(declare-fun condMapEmpty!17277 () Bool)

(declare-fun mapDefault!17277 () ValueCell!4875)

(assert (=> b!408857 (= condMapEmpty!17277 (= (arr!11811 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4875)) mapDefault!17277)))))

(declare-fun b!408858 () Bool)

(declare-fun res!236739 () Bool)

(assert (=> b!408858 (=> (not res!236739) (not e!245334))))

(assert (=> b!408858 (= res!236739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408859 () Bool)

(declare-fun res!236740 () Bool)

(assert (=> b!408859 (=> (not res!236740) (not e!245334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408859 (= res!236740 (validMask!0 mask!1025))))

(declare-fun b!408860 () Bool)

(assert (=> b!408860 (= e!245332 tp_is_empty!10437)))

(assert (= (and start!39026 res!236734) b!408859))

(assert (= (and b!408859 res!236740) b!408856))

(assert (= (and b!408856 res!236733) b!408858))

(assert (= (and b!408858 res!236739) b!408848))

(assert (= (and b!408848 res!236736) b!408852))

(assert (= (and b!408852 res!236742) b!408849))

(assert (= (and b!408849 res!236741) b!408850))

(assert (= (and b!408850 res!236738) b!408854))

(assert (= (and b!408854 res!236737) b!408853))

(assert (= (and b!408853 res!236735) b!408851))

(assert (= (and b!408857 condMapEmpty!17277) mapIsEmpty!17277))

(assert (= (and b!408857 (not condMapEmpty!17277)) mapNonEmpty!17277))

(get-info :version)

(assert (= (and mapNonEmpty!17277 ((_ is ValueCellFull!4875) mapValue!17277)) b!408860))

(assert (= (and b!408857 ((_ is ValueCellFull!4875) mapDefault!17277)) b!408855))

(assert (= start!39026 b!408857))

(declare-fun m!399957 () Bool)

(assert (=> mapNonEmpty!17277 m!399957))

(declare-fun m!399959 () Bool)

(assert (=> b!408858 m!399959))

(declare-fun m!399961 () Bool)

(assert (=> b!408853 m!399961))

(declare-fun m!399963 () Bool)

(assert (=> b!408853 m!399963))

(declare-fun m!399965 () Bool)

(assert (=> b!408851 m!399965))

(declare-fun m!399967 () Bool)

(assert (=> b!408848 m!399967))

(declare-fun m!399969 () Bool)

(assert (=> b!408849 m!399969))

(declare-fun m!399971 () Bool)

(assert (=> b!408859 m!399971))

(declare-fun m!399973 () Bool)

(assert (=> start!39026 m!399973))

(declare-fun m!399975 () Bool)

(assert (=> start!39026 m!399975))

(declare-fun m!399977 () Bool)

(assert (=> b!408850 m!399977))

(declare-fun m!399979 () Bool)

(assert (=> b!408854 m!399979))

(check-sat (not b!408859) (not mapNonEmpty!17277) (not b!408853) (not b!408851) (not b!408849) (not start!39026) (not b!408848) (not b!408858) tp_is_empty!10437 (not b!408854))
(check-sat)
