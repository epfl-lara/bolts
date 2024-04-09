; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38966 () Bool)

(assert start!38966)

(declare-fun b!407678 () Bool)

(declare-fun res!235833 () Bool)

(declare-fun e!244794 () Bool)

(assert (=> b!407678 (=> (not res!235833) (not e!244794))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407678 (= res!235833 (validKeyInArray!0 k0!794))))

(declare-fun b!407679 () Bool)

(declare-fun res!235841 () Bool)

(assert (=> b!407679 (=> (not res!235841) (not e!244794))))

(declare-datatypes ((array!24609 0))(
  ( (array!24610 (arr!11751 (Array (_ BitVec 32) (_ BitVec 64))) (size!12103 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24609)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14941 0))(
  ( (V!14942 (val!5233 Int)) )
))
(declare-datatypes ((ValueCell!4845 0))(
  ( (ValueCellFull!4845 (v!7476 V!14941)) (EmptyCell!4845) )
))
(declare-datatypes ((array!24611 0))(
  ( (array!24612 (arr!11752 (Array (_ BitVec 32) ValueCell!4845)) (size!12104 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24611)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!407679 (= res!235841 (and (= (size!12104 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12103 _keys!709) (size!12104 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407680 () Bool)

(declare-fun res!235834 () Bool)

(assert (=> b!407680 (=> (not res!235834) (not e!244794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24609 (_ BitVec 32)) Bool)

(assert (=> b!407680 (= res!235834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407681 () Bool)

(declare-fun res!235838 () Bool)

(assert (=> b!407681 (=> (not res!235838) (not e!244794))))

(declare-datatypes ((List!6792 0))(
  ( (Nil!6789) (Cons!6788 (h!7644 (_ BitVec 64)) (t!11974 List!6792)) )
))
(declare-fun arrayNoDuplicates!0 (array!24609 (_ BitVec 32) List!6792) Bool)

(assert (=> b!407681 (= res!235838 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6789))))

(declare-fun b!407682 () Bool)

(declare-fun e!244795 () Bool)

(declare-fun e!244792 () Bool)

(declare-fun mapRes!17187 () Bool)

(assert (=> b!407682 (= e!244795 (and e!244792 mapRes!17187))))

(declare-fun condMapEmpty!17187 () Bool)

(declare-fun mapDefault!17187 () ValueCell!4845)

(assert (=> b!407682 (= condMapEmpty!17187 (= (arr!11752 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4845)) mapDefault!17187)))))

(declare-fun b!407683 () Bool)

(declare-fun res!235840 () Bool)

(assert (=> b!407683 (=> (not res!235840) (not e!244794))))

(declare-fun arrayContainsKey!0 (array!24609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407683 (= res!235840 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407684 () Bool)

(declare-fun res!235837 () Bool)

(assert (=> b!407684 (=> (not res!235837) (not e!244794))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407684 (= res!235837 (or (= (select (arr!11751 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11751 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407685 () Bool)

(declare-fun res!235842 () Bool)

(assert (=> b!407685 (=> (not res!235842) (not e!244794))))

(assert (=> b!407685 (= res!235842 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12103 _keys!709))))))

(declare-fun b!407686 () Bool)

(declare-fun e!244791 () Bool)

(assert (=> b!407686 (= e!244791 false)))

(declare-fun lt!188673 () Bool)

(declare-fun lt!188672 () array!24609)

(assert (=> b!407686 (= lt!188673 (arrayNoDuplicates!0 lt!188672 #b00000000000000000000000000000000 Nil!6789))))

(declare-fun res!235836 () Bool)

(assert (=> start!38966 (=> (not res!235836) (not e!244794))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38966 (= res!235836 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12103 _keys!709))))))

(assert (=> start!38966 e!244794))

(assert (=> start!38966 true))

(declare-fun array_inv!8582 (array!24611) Bool)

(assert (=> start!38966 (and (array_inv!8582 _values!549) e!244795)))

(declare-fun array_inv!8583 (array!24609) Bool)

(assert (=> start!38966 (array_inv!8583 _keys!709)))

(declare-fun b!407687 () Bool)

(declare-fun tp_is_empty!10377 () Bool)

(assert (=> b!407687 (= e!244792 tp_is_empty!10377)))

(declare-fun b!407688 () Bool)

(declare-fun e!244790 () Bool)

(assert (=> b!407688 (= e!244790 tp_is_empty!10377)))

(declare-fun b!407689 () Bool)

(declare-fun res!235835 () Bool)

(assert (=> b!407689 (=> (not res!235835) (not e!244794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407689 (= res!235835 (validMask!0 mask!1025))))

(declare-fun b!407690 () Bool)

(assert (=> b!407690 (= e!244794 e!244791)))

(declare-fun res!235839 () Bool)

(assert (=> b!407690 (=> (not res!235839) (not e!244791))))

(assert (=> b!407690 (= res!235839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188672 mask!1025))))

(assert (=> b!407690 (= lt!188672 (array!24610 (store (arr!11751 _keys!709) i!563 k0!794) (size!12103 _keys!709)))))

(declare-fun mapIsEmpty!17187 () Bool)

(assert (=> mapIsEmpty!17187 mapRes!17187))

(declare-fun mapNonEmpty!17187 () Bool)

(declare-fun tp!33306 () Bool)

(assert (=> mapNonEmpty!17187 (= mapRes!17187 (and tp!33306 e!244790))))

(declare-fun mapValue!17187 () ValueCell!4845)

(declare-fun mapKey!17187 () (_ BitVec 32))

(declare-fun mapRest!17187 () (Array (_ BitVec 32) ValueCell!4845))

(assert (=> mapNonEmpty!17187 (= (arr!11752 _values!549) (store mapRest!17187 mapKey!17187 mapValue!17187))))

(assert (= (and start!38966 res!235836) b!407689))

(assert (= (and b!407689 res!235835) b!407679))

(assert (= (and b!407679 res!235841) b!407680))

(assert (= (and b!407680 res!235834) b!407681))

(assert (= (and b!407681 res!235838) b!407685))

(assert (= (and b!407685 res!235842) b!407678))

(assert (= (and b!407678 res!235833) b!407684))

(assert (= (and b!407684 res!235837) b!407683))

(assert (= (and b!407683 res!235840) b!407690))

(assert (= (and b!407690 res!235839) b!407686))

(assert (= (and b!407682 condMapEmpty!17187) mapIsEmpty!17187))

(assert (= (and b!407682 (not condMapEmpty!17187)) mapNonEmpty!17187))

(get-info :version)

(assert (= (and mapNonEmpty!17187 ((_ is ValueCellFull!4845) mapValue!17187)) b!407688))

(assert (= (and b!407682 ((_ is ValueCellFull!4845) mapDefault!17187)) b!407687))

(assert (= start!38966 b!407682))

(declare-fun m!399237 () Bool)

(assert (=> b!407689 m!399237))

(declare-fun m!399239 () Bool)

(assert (=> b!407680 m!399239))

(declare-fun m!399241 () Bool)

(assert (=> b!407684 m!399241))

(declare-fun m!399243 () Bool)

(assert (=> b!407678 m!399243))

(declare-fun m!399245 () Bool)

(assert (=> mapNonEmpty!17187 m!399245))

(declare-fun m!399247 () Bool)

(assert (=> b!407686 m!399247))

(declare-fun m!399249 () Bool)

(assert (=> b!407681 m!399249))

(declare-fun m!399251 () Bool)

(assert (=> b!407683 m!399251))

(declare-fun m!399253 () Bool)

(assert (=> b!407690 m!399253))

(declare-fun m!399255 () Bool)

(assert (=> b!407690 m!399255))

(declare-fun m!399257 () Bool)

(assert (=> start!38966 m!399257))

(declare-fun m!399259 () Bool)

(assert (=> start!38966 m!399259))

(check-sat (not b!407680) (not mapNonEmpty!17187) (not b!407686) (not b!407683) (not b!407681) (not b!407689) (not b!407690) (not b!407678) tp_is_empty!10377 (not start!38966))
(check-sat)
