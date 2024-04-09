; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20792 () Bool)

(assert start!20792)

(declare-fun b_free!5433 () Bool)

(declare-fun b_next!5433 () Bool)

(assert (=> start!20792 (= b_free!5433 (not b_next!5433))))

(declare-fun tp!19339 () Bool)

(declare-fun b_and!12197 () Bool)

(assert (=> start!20792 (= tp!19339 b_and!12197)))

(declare-fun b!208116 () Bool)

(declare-fun res!101198 () Bool)

(declare-fun e!135787 () Bool)

(assert (=> b!208116 (=> (not res!101198) (not e!135787))))

(declare-datatypes ((array!9794 0))(
  ( (array!9795 (arr!4647 (Array (_ BitVec 32) (_ BitVec 64))) (size!4972 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9794)

(declare-datatypes ((List!2995 0))(
  ( (Nil!2992) (Cons!2991 (h!3633 (_ BitVec 64)) (t!7934 List!2995)) )
))
(declare-fun arrayNoDuplicates!0 (array!9794 (_ BitVec 32) List!2995) Bool)

(assert (=> b!208116 (= res!101198 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2992))))

(declare-fun res!101195 () Bool)

(assert (=> start!20792 (=> (not res!101195) (not e!135787))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20792 (= res!101195 (validMask!0 mask!1149))))

(assert (=> start!20792 e!135787))

(declare-datatypes ((V!6707 0))(
  ( (V!6708 (val!2692 Int)) )
))
(declare-datatypes ((ValueCell!2304 0))(
  ( (ValueCellFull!2304 (v!4658 V!6707)) (EmptyCell!2304) )
))
(declare-datatypes ((array!9796 0))(
  ( (array!9797 (arr!4648 (Array (_ BitVec 32) ValueCell!2304)) (size!4973 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9796)

(declare-fun e!135790 () Bool)

(declare-fun array_inv!3073 (array!9796) Bool)

(assert (=> start!20792 (and (array_inv!3073 _values!649) e!135790)))

(assert (=> start!20792 true))

(declare-fun tp_is_empty!5295 () Bool)

(assert (=> start!20792 tp_is_empty!5295))

(declare-fun array_inv!3074 (array!9794) Bool)

(assert (=> start!20792 (array_inv!3074 _keys!825)))

(assert (=> start!20792 tp!19339))

(declare-fun b!208117 () Bool)

(declare-fun res!101196 () Bool)

(assert (=> b!208117 (=> (not res!101196) (not e!135787))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208117 (= res!101196 (and (= (size!4973 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4972 _keys!825) (size!4973 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208118 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208118 (= e!135787 (bvsge i!601 (size!4973 _values!649)))))

(declare-datatypes ((tuple2!4076 0))(
  ( (tuple2!4077 (_1!2048 (_ BitVec 64)) (_2!2048 V!6707)) )
))
(declare-datatypes ((List!2996 0))(
  ( (Nil!2993) (Cons!2992 (h!3634 tuple2!4076) (t!7935 List!2996)) )
))
(declare-datatypes ((ListLongMap!3003 0))(
  ( (ListLongMap!3004 (toList!1517 List!2996)) )
))
(declare-fun lt!106756 () ListLongMap!3003)

(declare-fun zeroValue!615 () V!6707)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6707)

(declare-fun getCurrentListMapNoExtraKeys!450 (array!9794 array!9796 (_ BitVec 32) (_ BitVec 32) V!6707 V!6707 (_ BitVec 32) Int) ListLongMap!3003)

(assert (=> b!208118 (= lt!106756 (getCurrentListMapNoExtraKeys!450 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9011 () Bool)

(declare-fun mapRes!9011 () Bool)

(assert (=> mapIsEmpty!9011 mapRes!9011))

(declare-fun b!208119 () Bool)

(declare-fun e!135789 () Bool)

(assert (=> b!208119 (= e!135789 tp_is_empty!5295)))

(declare-fun b!208120 () Bool)

(declare-fun e!135786 () Bool)

(assert (=> b!208120 (= e!135786 tp_is_empty!5295)))

(declare-fun b!208121 () Bool)

(declare-fun res!101200 () Bool)

(assert (=> b!208121 (=> (not res!101200) (not e!135787))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208121 (= res!101200 (validKeyInArray!0 k0!843))))

(declare-fun b!208122 () Bool)

(declare-fun res!101197 () Bool)

(assert (=> b!208122 (=> (not res!101197) (not e!135787))))

(assert (=> b!208122 (= res!101197 (= (select (arr!4647 _keys!825) i!601) k0!843))))

(declare-fun b!208123 () Bool)

(assert (=> b!208123 (= e!135790 (and e!135789 mapRes!9011))))

(declare-fun condMapEmpty!9011 () Bool)

(declare-fun mapDefault!9011 () ValueCell!2304)

(assert (=> b!208123 (= condMapEmpty!9011 (= (arr!4648 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2304)) mapDefault!9011)))))

(declare-fun b!208124 () Bool)

(declare-fun res!101194 () Bool)

(assert (=> b!208124 (=> (not res!101194) (not e!135787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9794 (_ BitVec 32)) Bool)

(assert (=> b!208124 (= res!101194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208125 () Bool)

(declare-fun res!101199 () Bool)

(assert (=> b!208125 (=> (not res!101199) (not e!135787))))

(assert (=> b!208125 (= res!101199 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4972 _keys!825))))))

(declare-fun mapNonEmpty!9011 () Bool)

(declare-fun tp!19340 () Bool)

(assert (=> mapNonEmpty!9011 (= mapRes!9011 (and tp!19340 e!135786))))

(declare-fun mapRest!9011 () (Array (_ BitVec 32) ValueCell!2304))

(declare-fun mapKey!9011 () (_ BitVec 32))

(declare-fun mapValue!9011 () ValueCell!2304)

(assert (=> mapNonEmpty!9011 (= (arr!4648 _values!649) (store mapRest!9011 mapKey!9011 mapValue!9011))))

(assert (= (and start!20792 res!101195) b!208117))

(assert (= (and b!208117 res!101196) b!208124))

(assert (= (and b!208124 res!101194) b!208116))

(assert (= (and b!208116 res!101198) b!208125))

(assert (= (and b!208125 res!101199) b!208121))

(assert (= (and b!208121 res!101200) b!208122))

(assert (= (and b!208122 res!101197) b!208118))

(assert (= (and b!208123 condMapEmpty!9011) mapIsEmpty!9011))

(assert (= (and b!208123 (not condMapEmpty!9011)) mapNonEmpty!9011))

(get-info :version)

(assert (= (and mapNonEmpty!9011 ((_ is ValueCellFull!2304) mapValue!9011)) b!208120))

(assert (= (and b!208123 ((_ is ValueCellFull!2304) mapDefault!9011)) b!208119))

(assert (= start!20792 b!208123))

(declare-fun m!235851 () Bool)

(assert (=> b!208116 m!235851))

(declare-fun m!235853 () Bool)

(assert (=> start!20792 m!235853))

(declare-fun m!235855 () Bool)

(assert (=> start!20792 m!235855))

(declare-fun m!235857 () Bool)

(assert (=> start!20792 m!235857))

(declare-fun m!235859 () Bool)

(assert (=> b!208122 m!235859))

(declare-fun m!235861 () Bool)

(assert (=> b!208121 m!235861))

(declare-fun m!235863 () Bool)

(assert (=> b!208118 m!235863))

(declare-fun m!235865 () Bool)

(assert (=> mapNonEmpty!9011 m!235865))

(declare-fun m!235867 () Bool)

(assert (=> b!208124 m!235867))

(check-sat (not b!208124) (not b_next!5433) (not start!20792) (not b!208116) tp_is_empty!5295 b_and!12197 (not b!208121) (not mapNonEmpty!9011) (not b!208118))
(check-sat b_and!12197 (not b_next!5433))
