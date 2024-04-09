; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78088 () Bool)

(assert start!78088)

(declare-fun b_free!16587 () Bool)

(declare-fun b_next!16587 () Bool)

(assert (=> start!78088 (= b_free!16587 (not b_next!16587))))

(declare-fun tp!58033 () Bool)

(declare-fun b_and!27177 () Bool)

(assert (=> start!78088 (= tp!58033 b_and!27177)))

(declare-fun b!911028 () Bool)

(declare-fun res!614799 () Bool)

(declare-fun e!510935 () Bool)

(assert (=> b!911028 (=> (not res!614799) (not e!510935))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54020 0))(
  ( (array!54021 (arr!25962 (Array (_ BitVec 32) (_ BitVec 64))) (size!26422 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54020)

(declare-datatypes ((V!30305 0))(
  ( (V!30306 (val!9553 Int)) )
))
(declare-datatypes ((ValueCell!9021 0))(
  ( (ValueCellFull!9021 (v!12062 V!30305)) (EmptyCell!9021) )
))
(declare-datatypes ((array!54022 0))(
  ( (array!54023 (arr!25963 (Array (_ BitVec 32) ValueCell!9021)) (size!26423 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54022)

(assert (=> b!911028 (= res!614799 (and (= (size!26423 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26422 _keys!1386) (size!26423 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911029 () Bool)

(assert (=> b!911029 (= e!510935 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410308 () Bool)

(declare-fun zeroValue!1094 () V!30305)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30305)

(declare-datatypes ((tuple2!12494 0))(
  ( (tuple2!12495 (_1!6257 (_ BitVec 64)) (_2!6257 V!30305)) )
))
(declare-datatypes ((List!18342 0))(
  ( (Nil!18339) (Cons!18338 (h!19484 tuple2!12494) (t!25935 List!18342)) )
))
(declare-datatypes ((ListLongMap!11205 0))(
  ( (ListLongMap!11206 (toList!5618 List!18342)) )
))
(declare-fun contains!4627 (ListLongMap!11205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2848 (array!54020 array!54022 (_ BitVec 32) (_ BitVec 32) V!30305 V!30305 (_ BitVec 32) Int) ListLongMap!11205)

(assert (=> b!911029 (= lt!410308 (contains!4627 (getCurrentListMap!2848 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!30229 () Bool)

(declare-fun mapRes!30229 () Bool)

(declare-fun tp!58032 () Bool)

(declare-fun e!510934 () Bool)

(assert (=> mapNonEmpty!30229 (= mapRes!30229 (and tp!58032 e!510934))))

(declare-fun mapKey!30229 () (_ BitVec 32))

(declare-fun mapRest!30229 () (Array (_ BitVec 32) ValueCell!9021))

(declare-fun mapValue!30229 () ValueCell!9021)

(assert (=> mapNonEmpty!30229 (= (arr!25963 _values!1152) (store mapRest!30229 mapKey!30229 mapValue!30229))))

(declare-fun b!911030 () Bool)

(declare-fun res!614800 () Bool)

(assert (=> b!911030 (=> (not res!614800) (not e!510935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54020 (_ BitVec 32)) Bool)

(assert (=> b!911030 (= res!614800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911031 () Bool)

(declare-fun e!510936 () Bool)

(declare-fun tp_is_empty!19005 () Bool)

(assert (=> b!911031 (= e!510936 tp_is_empty!19005)))

(declare-fun b!911032 () Bool)

(declare-fun e!510938 () Bool)

(assert (=> b!911032 (= e!510938 (and e!510936 mapRes!30229))))

(declare-fun condMapEmpty!30229 () Bool)

(declare-fun mapDefault!30229 () ValueCell!9021)

(assert (=> b!911032 (= condMapEmpty!30229 (= (arr!25963 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9021)) mapDefault!30229)))))

(declare-fun mapIsEmpty!30229 () Bool)

(assert (=> mapIsEmpty!30229 mapRes!30229))

(declare-fun res!614797 () Bool)

(assert (=> start!78088 (=> (not res!614797) (not e!510935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78088 (= res!614797 (validMask!0 mask!1756))))

(assert (=> start!78088 e!510935))

(declare-fun array_inv!20280 (array!54022) Bool)

(assert (=> start!78088 (and (array_inv!20280 _values!1152) e!510938)))

(assert (=> start!78088 tp!58033))

(assert (=> start!78088 true))

(assert (=> start!78088 tp_is_empty!19005))

(declare-fun array_inv!20281 (array!54020) Bool)

(assert (=> start!78088 (array_inv!20281 _keys!1386)))

(declare-fun b!911033 () Bool)

(assert (=> b!911033 (= e!510934 tp_is_empty!19005)))

(declare-fun b!911034 () Bool)

(declare-fun res!614798 () Bool)

(assert (=> b!911034 (=> (not res!614798) (not e!510935))))

(declare-datatypes ((List!18343 0))(
  ( (Nil!18340) (Cons!18339 (h!19485 (_ BitVec 64)) (t!25936 List!18343)) )
))
(declare-fun arrayNoDuplicates!0 (array!54020 (_ BitVec 32) List!18343) Bool)

(assert (=> b!911034 (= res!614798 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18340))))

(assert (= (and start!78088 res!614797) b!911028))

(assert (= (and b!911028 res!614799) b!911030))

(assert (= (and b!911030 res!614800) b!911034))

(assert (= (and b!911034 res!614798) b!911029))

(assert (= (and b!911032 condMapEmpty!30229) mapIsEmpty!30229))

(assert (= (and b!911032 (not condMapEmpty!30229)) mapNonEmpty!30229))

(get-info :version)

(assert (= (and mapNonEmpty!30229 ((_ is ValueCellFull!9021) mapValue!30229)) b!911033))

(assert (= (and b!911032 ((_ is ValueCellFull!9021) mapDefault!30229)) b!911031))

(assert (= start!78088 b!911032))

(declare-fun m!845957 () Bool)

(assert (=> start!78088 m!845957))

(declare-fun m!845959 () Bool)

(assert (=> start!78088 m!845959))

(declare-fun m!845961 () Bool)

(assert (=> start!78088 m!845961))

(declare-fun m!845963 () Bool)

(assert (=> b!911030 m!845963))

(declare-fun m!845965 () Bool)

(assert (=> b!911029 m!845965))

(assert (=> b!911029 m!845965))

(declare-fun m!845967 () Bool)

(assert (=> b!911029 m!845967))

(declare-fun m!845969 () Bool)

(assert (=> mapNonEmpty!30229 m!845969))

(declare-fun m!845971 () Bool)

(assert (=> b!911034 m!845971))

(check-sat (not mapNonEmpty!30229) (not b_next!16587) (not start!78088) b_and!27177 (not b!911029) (not b!911030) (not b!911034) tp_is_empty!19005)
(check-sat b_and!27177 (not b_next!16587))
