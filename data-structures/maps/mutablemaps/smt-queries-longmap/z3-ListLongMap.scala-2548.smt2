; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39116 () Bool)

(assert start!39116)

(declare-fun b_free!9375 () Bool)

(declare-fun b_next!9375 () Bool)

(assert (=> start!39116 (= b_free!9375 (not b_next!9375))))

(declare-fun tp!33654 () Bool)

(declare-fun b_and!16779 () Bool)

(assert (=> start!39116 (= tp!33654 b_and!16779)))

(declare-fun b!410847 () Bool)

(declare-fun res!238330 () Bool)

(declare-fun e!246142 () Bool)

(assert (=> b!410847 (=> (not res!238330) (not e!246142))))

(declare-datatypes ((array!24903 0))(
  ( (array!24904 (arr!11898 (Array (_ BitVec 32) (_ BitVec 64))) (size!12250 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24903)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15141 0))(
  ( (V!15142 (val!5308 Int)) )
))
(declare-datatypes ((ValueCell!4920 0))(
  ( (ValueCellFull!4920 (v!7551 V!15141)) (EmptyCell!4920) )
))
(declare-datatypes ((array!24905 0))(
  ( (array!24906 (arr!11899 (Array (_ BitVec 32) ValueCell!4920)) (size!12251 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24905)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410847 (= res!238330 (and (= (size!12251 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12250 _keys!709) (size!12251 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410848 () Bool)

(declare-fun res!238334 () Bool)

(assert (=> b!410848 (=> (not res!238334) (not e!246142))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410848 (= res!238334 (or (= (select (arr!11898 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11898 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410849 () Bool)

(declare-fun res!238337 () Bool)

(assert (=> b!410849 (=> (not res!238337) (not e!246142))))

(assert (=> b!410849 (= res!238337 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12250 _keys!709))))))

(declare-fun b!410850 () Bool)

(declare-fun res!238331 () Bool)

(declare-fun e!246140 () Bool)

(assert (=> b!410850 (=> (not res!238331) (not e!246140))))

(declare-fun lt!189163 () array!24903)

(declare-datatypes ((List!6875 0))(
  ( (Nil!6872) (Cons!6871 (h!7727 (_ BitVec 64)) (t!12057 List!6875)) )
))
(declare-fun arrayNoDuplicates!0 (array!24903 (_ BitVec 32) List!6875) Bool)

(assert (=> b!410850 (= res!238331 (arrayNoDuplicates!0 lt!189163 #b00000000000000000000000000000000 Nil!6872))))

(declare-fun mapNonEmpty!17412 () Bool)

(declare-fun mapRes!17412 () Bool)

(declare-fun tp!33653 () Bool)

(declare-fun e!246141 () Bool)

(assert (=> mapNonEmpty!17412 (= mapRes!17412 (and tp!33653 e!246141))))

(declare-fun mapRest!17412 () (Array (_ BitVec 32) ValueCell!4920))

(declare-fun mapKey!17412 () (_ BitVec 32))

(declare-fun mapValue!17412 () ValueCell!4920)

(assert (=> mapNonEmpty!17412 (= (arr!11899 _values!549) (store mapRest!17412 mapKey!17412 mapValue!17412))))

(declare-fun b!410851 () Bool)

(declare-fun res!238338 () Bool)

(assert (=> b!410851 (=> (not res!238338) (not e!246142))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410851 (= res!238338 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410852 () Bool)

(declare-fun res!238329 () Bool)

(assert (=> b!410852 (=> (not res!238329) (not e!246142))))

(assert (=> b!410852 (= res!238329 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6872))))

(declare-fun b!410853 () Bool)

(declare-fun res!238335 () Bool)

(assert (=> b!410853 (=> (not res!238335) (not e!246142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410853 (= res!238335 (validMask!0 mask!1025))))

(declare-fun b!410854 () Bool)

(declare-fun e!246143 () Bool)

(declare-fun e!246144 () Bool)

(assert (=> b!410854 (= e!246143 (and e!246144 mapRes!17412))))

(declare-fun condMapEmpty!17412 () Bool)

(declare-fun mapDefault!17412 () ValueCell!4920)

(assert (=> b!410854 (= condMapEmpty!17412 (= (arr!11899 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4920)) mapDefault!17412)))))

(declare-fun res!238328 () Bool)

(assert (=> start!39116 (=> (not res!238328) (not e!246142))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39116 (= res!238328 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12250 _keys!709))))))

(assert (=> start!39116 e!246142))

(declare-fun tp_is_empty!10527 () Bool)

(assert (=> start!39116 tp_is_empty!10527))

(assert (=> start!39116 tp!33654))

(assert (=> start!39116 true))

(declare-fun array_inv!8684 (array!24905) Bool)

(assert (=> start!39116 (and (array_inv!8684 _values!549) e!246143)))

(declare-fun array_inv!8685 (array!24903) Bool)

(assert (=> start!39116 (array_inv!8685 _keys!709)))

(declare-fun b!410855 () Bool)

(declare-fun res!238336 () Bool)

(assert (=> b!410855 (=> (not res!238336) (not e!246140))))

(assert (=> b!410855 (= res!238336 (bvsle from!863 i!563))))

(declare-fun b!410856 () Bool)

(assert (=> b!410856 (= e!246142 e!246140)))

(declare-fun res!238333 () Bool)

(assert (=> b!410856 (=> (not res!238333) (not e!246140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24903 (_ BitVec 32)) Bool)

(assert (=> b!410856 (= res!238333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189163 mask!1025))))

(assert (=> b!410856 (= lt!189163 (array!24904 (store (arr!11898 _keys!709) i!563 k0!794) (size!12250 _keys!709)))))

(declare-fun b!410857 () Bool)

(assert (=> b!410857 (= e!246144 tp_is_empty!10527)))

(declare-fun b!410858 () Bool)

(assert (=> b!410858 (= e!246141 tp_is_empty!10527)))

(declare-fun mapIsEmpty!17412 () Bool)

(assert (=> mapIsEmpty!17412 mapRes!17412))

(declare-fun b!410859 () Bool)

(declare-fun res!238332 () Bool)

(assert (=> b!410859 (=> (not res!238332) (not e!246142))))

(assert (=> b!410859 (= res!238332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410860 () Bool)

(declare-fun res!238327 () Bool)

(assert (=> b!410860 (=> (not res!238327) (not e!246142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410860 (= res!238327 (validKeyInArray!0 k0!794))))

(declare-fun b!410861 () Bool)

(assert (=> b!410861 (= e!246140 false)))

(declare-fun minValue!515 () V!15141)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15141)

(declare-fun v!412 () V!15141)

(declare-datatypes ((tuple2!6820 0))(
  ( (tuple2!6821 (_1!3420 (_ BitVec 64)) (_2!3420 V!15141)) )
))
(declare-datatypes ((List!6876 0))(
  ( (Nil!6873) (Cons!6872 (h!7728 tuple2!6820) (t!12058 List!6876)) )
))
(declare-datatypes ((ListLongMap!5747 0))(
  ( (ListLongMap!5748 (toList!2889 List!6876)) )
))
(declare-fun lt!189165 () ListLongMap!5747)

(declare-fun getCurrentListMapNoExtraKeys!1099 (array!24903 array!24905 (_ BitVec 32) (_ BitVec 32) V!15141 V!15141 (_ BitVec 32) Int) ListLongMap!5747)

(assert (=> b!410861 (= lt!189165 (getCurrentListMapNoExtraKeys!1099 lt!189163 (array!24906 (store (arr!11899 _values!549) i!563 (ValueCellFull!4920 v!412)) (size!12251 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189164 () ListLongMap!5747)

(assert (=> b!410861 (= lt!189164 (getCurrentListMapNoExtraKeys!1099 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39116 res!238328) b!410853))

(assert (= (and b!410853 res!238335) b!410847))

(assert (= (and b!410847 res!238330) b!410859))

(assert (= (and b!410859 res!238332) b!410852))

(assert (= (and b!410852 res!238329) b!410849))

(assert (= (and b!410849 res!238337) b!410860))

(assert (= (and b!410860 res!238327) b!410848))

(assert (= (and b!410848 res!238334) b!410851))

(assert (= (and b!410851 res!238338) b!410856))

(assert (= (and b!410856 res!238333) b!410850))

(assert (= (and b!410850 res!238331) b!410855))

(assert (= (and b!410855 res!238336) b!410861))

(assert (= (and b!410854 condMapEmpty!17412) mapIsEmpty!17412))

(assert (= (and b!410854 (not condMapEmpty!17412)) mapNonEmpty!17412))

(get-info :version)

(assert (= (and mapNonEmpty!17412 ((_ is ValueCellFull!4920) mapValue!17412)) b!410858))

(assert (= (and b!410854 ((_ is ValueCellFull!4920) mapDefault!17412)) b!410857))

(assert (= start!39116 b!410854))

(declare-fun m!401169 () Bool)

(assert (=> b!410851 m!401169))

(declare-fun m!401171 () Bool)

(assert (=> mapNonEmpty!17412 m!401171))

(declare-fun m!401173 () Bool)

(assert (=> b!410859 m!401173))

(declare-fun m!401175 () Bool)

(assert (=> b!410861 m!401175))

(declare-fun m!401177 () Bool)

(assert (=> b!410861 m!401177))

(declare-fun m!401179 () Bool)

(assert (=> b!410861 m!401179))

(declare-fun m!401181 () Bool)

(assert (=> start!39116 m!401181))

(declare-fun m!401183 () Bool)

(assert (=> start!39116 m!401183))

(declare-fun m!401185 () Bool)

(assert (=> b!410850 m!401185))

(declare-fun m!401187 () Bool)

(assert (=> b!410860 m!401187))

(declare-fun m!401189 () Bool)

(assert (=> b!410852 m!401189))

(declare-fun m!401191 () Bool)

(assert (=> b!410848 m!401191))

(declare-fun m!401193 () Bool)

(assert (=> b!410856 m!401193))

(declare-fun m!401195 () Bool)

(assert (=> b!410856 m!401195))

(declare-fun m!401197 () Bool)

(assert (=> b!410853 m!401197))

(check-sat (not b!410856) tp_is_empty!10527 (not b!410859) (not start!39116) (not mapNonEmpty!17412) (not b!410851) (not b!410852) (not b_next!9375) (not b!410860) (not b!410853) (not b!410861) b_and!16779 (not b!410850))
(check-sat b_and!16779 (not b_next!9375))
